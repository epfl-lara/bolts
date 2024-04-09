; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133926 () Bool)

(assert start!133926)

(declare-fun b_free!32139 () Bool)

(declare-fun b_next!32139 () Bool)

(assert (=> start!133926 (= b_free!32139 (not b_next!32139))))

(declare-fun tp!113717 () Bool)

(declare-fun b_and!51725 () Bool)

(assert (=> start!133926 (= tp!113717 b_and!51725)))

(declare-fun b!1565153 () Bool)

(declare-fun res!1070035 () Bool)

(declare-fun e!872426 () Bool)

(assert (=> b!1565153 (=> (not res!1070035) (not e!872426))))

(declare-datatypes ((array!104487 0))(
  ( (array!104488 (arr!50427 (Array (_ BitVec 32) (_ BitVec 64))) (size!50978 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104487)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104487 (_ BitVec 32)) Bool)

(assert (=> b!1565153 (= res!1070035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59758 () Bool)

(declare-fun mapRes!59758 () Bool)

(declare-fun tp!113716 () Bool)

(declare-fun e!872425 () Bool)

(assert (=> mapNonEmpty!59758 (= mapRes!59758 (and tp!113716 e!872425))))

(declare-datatypes ((V!60091 0))(
  ( (V!60092 (val!19540 Int)) )
))
(declare-datatypes ((ValueCell!18426 0))(
  ( (ValueCellFull!18426 (v!22292 V!60091)) (EmptyCell!18426) )
))
(declare-fun mapRest!59758 () (Array (_ BitVec 32) ValueCell!18426))

(declare-fun mapValue!59758 () ValueCell!18426)

(declare-datatypes ((array!104489 0))(
  ( (array!104490 (arr!50428 (Array (_ BitVec 32) ValueCell!18426)) (size!50979 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104489)

(declare-fun mapKey!59758 () (_ BitVec 32))

(assert (=> mapNonEmpty!59758 (= (arr!50428 _values!487) (store mapRest!59758 mapKey!59758 mapValue!59758))))

(declare-fun b!1565154 () Bool)

(declare-fun res!1070037 () Bool)

(assert (=> b!1565154 (=> (not res!1070037) (not e!872426))))

(declare-datatypes ((List!36759 0))(
  ( (Nil!36756) (Cons!36755 (h!38202 (_ BitVec 64)) (t!51619 List!36759)) )
))
(declare-fun arrayNoDuplicates!0 (array!104487 (_ BitVec 32) List!36759) Bool)

(assert (=> b!1565154 (= res!1070037 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36756))))

(declare-fun b!1565155 () Bool)

(declare-fun e!872422 () Bool)

(declare-fun e!872423 () Bool)

(assert (=> b!1565155 (= e!872422 (and e!872423 mapRes!59758))))

(declare-fun condMapEmpty!59758 () Bool)

(declare-fun mapDefault!59758 () ValueCell!18426)

(assert (=> b!1565155 (= condMapEmpty!59758 (= (arr!50428 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18426)) mapDefault!59758)))))

(declare-fun b!1565156 () Bool)

(declare-fun tp_is_empty!38913 () Bool)

(assert (=> b!1565156 (= e!872423 tp_is_empty!38913)))

(declare-fun mapIsEmpty!59758 () Bool)

(assert (=> mapIsEmpty!59758 mapRes!59758))

(declare-fun b!1565158 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1565158 (= e!872426 (not (bvslt (bvsub (size!50978 _keys!637) from!782) (bvsub (bvadd #b00000000000000000000000000000001 (size!50978 _keys!637)) from!782))))))

(declare-datatypes ((tuple2!25372 0))(
  ( (tuple2!25373 (_1!12696 (_ BitVec 64)) (_2!12696 V!60091)) )
))
(declare-datatypes ((List!36760 0))(
  ( (Nil!36757) (Cons!36756 (h!38203 tuple2!25372) (t!51620 List!36760)) )
))
(declare-datatypes ((ListLongMap!22819 0))(
  ( (ListLongMap!22820 (toList!11425 List!36760)) )
))
(declare-fun lt!672114 () ListLongMap!22819)

(declare-fun lt!672116 () V!60091)

(declare-fun contains!10344 (ListLongMap!22819 (_ BitVec 64)) Bool)

(declare-fun +!5032 (ListLongMap!22819 tuple2!25372) ListLongMap!22819)

(assert (=> b!1565158 (not (contains!10344 (+!5032 lt!672114 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51937 0))(
  ( (Unit!51938) )
))
(declare-fun lt!672115 () Unit!51937)

(declare-fun addStillNotContains!568 (ListLongMap!22819 (_ BitVec 64) V!60091 (_ BitVec 64)) Unit!51937)

(assert (=> b!1565158 (= lt!672115 (addStillNotContains!568 lt!672114 (select (arr!50427 _keys!637) from!782) lt!672116 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26354 (ValueCell!18426 V!60091) V!60091)

(declare-fun dynLambda!3921 (Int (_ BitVec 64)) V!60091)

(assert (=> b!1565158 (= lt!672116 (get!26354 (select (arr!50428 _values!487) from!782) (dynLambda!3921 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60091)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60091)

(declare-fun getCurrentListMapNoExtraKeys!6765 (array!104487 array!104489 (_ BitVec 32) (_ BitVec 32) V!60091 V!60091 (_ BitVec 32) Int) ListLongMap!22819)

(assert (=> b!1565158 (= lt!672114 (getCurrentListMapNoExtraKeys!6765 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565159 () Bool)

(declare-fun res!1070032 () Bool)

(assert (=> b!1565159 (=> (not res!1070032) (not e!872426))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565159 (= res!1070032 (validKeyInArray!0 (select (arr!50427 _keys!637) from!782)))))

(declare-fun b!1565160 () Bool)

(assert (=> b!1565160 (= e!872425 tp_is_empty!38913)))

(declare-fun b!1565161 () Bool)

(declare-fun res!1070036 () Bool)

(assert (=> b!1565161 (=> (not res!1070036) (not e!872426))))

(assert (=> b!1565161 (= res!1070036 (and (= (size!50979 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50978 _keys!637) (size!50979 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565157 () Bool)

(declare-fun res!1070033 () Bool)

(assert (=> b!1565157 (=> (not res!1070033) (not e!872426))))

(assert (=> b!1565157 (= res!1070033 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50978 _keys!637)) (bvslt from!782 (size!50978 _keys!637))))))

(declare-fun res!1070034 () Bool)

(assert (=> start!133926 (=> (not res!1070034) (not e!872426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133926 (= res!1070034 (validMask!0 mask!947))))

(assert (=> start!133926 e!872426))

(assert (=> start!133926 tp!113717))

(assert (=> start!133926 tp_is_empty!38913))

(assert (=> start!133926 true))

(declare-fun array_inv!39107 (array!104487) Bool)

(assert (=> start!133926 (array_inv!39107 _keys!637)))

(declare-fun array_inv!39108 (array!104489) Bool)

(assert (=> start!133926 (and (array_inv!39108 _values!487) e!872422)))

(assert (= (and start!133926 res!1070034) b!1565161))

(assert (= (and b!1565161 res!1070036) b!1565153))

(assert (= (and b!1565153 res!1070035) b!1565154))

(assert (= (and b!1565154 res!1070037) b!1565157))

(assert (= (and b!1565157 res!1070033) b!1565159))

(assert (= (and b!1565159 res!1070032) b!1565158))

(assert (= (and b!1565155 condMapEmpty!59758) mapIsEmpty!59758))

(assert (= (and b!1565155 (not condMapEmpty!59758)) mapNonEmpty!59758))

(get-info :version)

(assert (= (and mapNonEmpty!59758 ((_ is ValueCellFull!18426) mapValue!59758)) b!1565160))

(assert (= (and b!1565155 ((_ is ValueCellFull!18426) mapDefault!59758)) b!1565156))

(assert (= start!133926 b!1565155))

(declare-fun b_lambda!24953 () Bool)

(assert (=> (not b_lambda!24953) (not b!1565158)))

(declare-fun t!51618 () Bool)

(declare-fun tb!12615 () Bool)

(assert (=> (and start!133926 (= defaultEntry!495 defaultEntry!495) t!51618) tb!12615))

(declare-fun result!26511 () Bool)

(assert (=> tb!12615 (= result!26511 tp_is_empty!38913)))

(assert (=> b!1565158 t!51618))

(declare-fun b_and!51727 () Bool)

(assert (= b_and!51725 (and (=> t!51618 result!26511) b_and!51727)))

(declare-fun m!1440123 () Bool)

(assert (=> mapNonEmpty!59758 m!1440123))

(declare-fun m!1440125 () Bool)

(assert (=> start!133926 m!1440125))

(declare-fun m!1440127 () Bool)

(assert (=> start!133926 m!1440127))

(declare-fun m!1440129 () Bool)

(assert (=> start!133926 m!1440129))

(declare-fun m!1440131 () Bool)

(assert (=> b!1565154 m!1440131))

(declare-fun m!1440133 () Bool)

(assert (=> b!1565159 m!1440133))

(assert (=> b!1565159 m!1440133))

(declare-fun m!1440135 () Bool)

(assert (=> b!1565159 m!1440135))

(declare-fun m!1440137 () Bool)

(assert (=> b!1565158 m!1440137))

(declare-fun m!1440139 () Bool)

(assert (=> b!1565158 m!1440139))

(declare-fun m!1440141 () Bool)

(assert (=> b!1565158 m!1440141))

(assert (=> b!1565158 m!1440133))

(declare-fun m!1440143 () Bool)

(assert (=> b!1565158 m!1440143))

(declare-fun m!1440145 () Bool)

(assert (=> b!1565158 m!1440145))

(assert (=> b!1565158 m!1440137))

(assert (=> b!1565158 m!1440133))

(assert (=> b!1565158 m!1440139))

(assert (=> b!1565158 m!1440145))

(declare-fun m!1440147 () Bool)

(assert (=> b!1565158 m!1440147))

(declare-fun m!1440149 () Bool)

(assert (=> b!1565158 m!1440149))

(declare-fun m!1440151 () Bool)

(assert (=> b!1565153 m!1440151))

(check-sat (not b!1565154) (not b!1565158) (not mapNonEmpty!59758) (not b_lambda!24953) (not b!1565153) tp_is_empty!38913 (not b_next!32139) (not start!133926) b_and!51727 (not b!1565159))
(check-sat b_and!51727 (not b_next!32139))
(get-model)

(declare-fun b_lambda!24957 () Bool)

(assert (= b_lambda!24953 (or (and start!133926 b_free!32139) b_lambda!24957)))

(check-sat (not b!1565154) (not b!1565158) (not mapNonEmpty!59758) (not b!1565153) tp_is_empty!38913 (not start!133926) b_and!51727 (not b!1565159) (not b_next!32139) (not b_lambda!24957))
(check-sat b_and!51727 (not b_next!32139))
(get-model)

(declare-fun d!163095 () Bool)

(assert (=> d!163095 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!133926 d!163095))

(declare-fun d!163097 () Bool)

(assert (=> d!163097 (= (array_inv!39107 _keys!637) (bvsge (size!50978 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!133926 d!163097))

(declare-fun d!163099 () Bool)

(assert (=> d!163099 (= (array_inv!39108 _values!487) (bvsge (size!50979 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!133926 d!163099))

(declare-fun b!1565201 () Bool)

(declare-fun e!872448 () Bool)

(declare-fun call!71873 () Bool)

(assert (=> b!1565201 (= e!872448 call!71873)))

(declare-fun b!1565202 () Bool)

(declare-fun e!872450 () Bool)

(assert (=> b!1565202 (= e!872450 call!71873)))

(declare-fun d!163101 () Bool)

(declare-fun res!1070061 () Bool)

(declare-fun e!872449 () Bool)

(assert (=> d!163101 (=> res!1070061 e!872449)))

(assert (=> d!163101 (= res!1070061 (bvsge #b00000000000000000000000000000000 (size!50978 _keys!637)))))

(assert (=> d!163101 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!872449)))

(declare-fun bm!71870 () Bool)

(assert (=> bm!71870 (= call!71873 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1565203 () Bool)

(assert (=> b!1565203 (= e!872449 e!872450)))

(declare-fun c!144215 () Bool)

(assert (=> b!1565203 (= c!144215 (validKeyInArray!0 (select (arr!50427 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1565204 () Bool)

(assert (=> b!1565204 (= e!872450 e!872448)))

(declare-fun lt!672132 () (_ BitVec 64))

(assert (=> b!1565204 (= lt!672132 (select (arr!50427 _keys!637) #b00000000000000000000000000000000))))

(declare-fun lt!672133 () Unit!51937)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104487 (_ BitVec 64) (_ BitVec 32)) Unit!51937)

(assert (=> b!1565204 (= lt!672133 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!672132 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1565204 (arrayContainsKey!0 _keys!637 lt!672132 #b00000000000000000000000000000000)))

(declare-fun lt!672134 () Unit!51937)

(assert (=> b!1565204 (= lt!672134 lt!672133)))

(declare-fun res!1070060 () Bool)

(declare-datatypes ((SeekEntryResult!13523 0))(
  ( (MissingZero!13523 (index!56489 (_ BitVec 32))) (Found!13523 (index!56490 (_ BitVec 32))) (Intermediate!13523 (undefined!14335 Bool) (index!56491 (_ BitVec 32)) (x!140618 (_ BitVec 32))) (Undefined!13523) (MissingVacant!13523 (index!56492 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104487 (_ BitVec 32)) SeekEntryResult!13523)

(assert (=> b!1565204 (= res!1070060 (= (seekEntryOrOpen!0 (select (arr!50427 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13523 #b00000000000000000000000000000000)))))

(assert (=> b!1565204 (=> (not res!1070060) (not e!872448))))

(assert (= (and d!163101 (not res!1070061)) b!1565203))

(assert (= (and b!1565203 c!144215) b!1565204))

(assert (= (and b!1565203 (not c!144215)) b!1565202))

(assert (= (and b!1565204 res!1070060) b!1565201))

(assert (= (or b!1565201 b!1565202) bm!71870))

(declare-fun m!1440183 () Bool)

(assert (=> bm!71870 m!1440183))

(declare-fun m!1440185 () Bool)

(assert (=> b!1565203 m!1440185))

(assert (=> b!1565203 m!1440185))

(declare-fun m!1440187 () Bool)

(assert (=> b!1565203 m!1440187))

(assert (=> b!1565204 m!1440185))

(declare-fun m!1440189 () Bool)

(assert (=> b!1565204 m!1440189))

(declare-fun m!1440191 () Bool)

(assert (=> b!1565204 m!1440191))

(assert (=> b!1565204 m!1440185))

(declare-fun m!1440193 () Bool)

(assert (=> b!1565204 m!1440193))

(assert (=> b!1565153 d!163101))

(declare-fun d!163103 () Bool)

(declare-fun c!144218 () Bool)

(assert (=> d!163103 (= c!144218 ((_ is ValueCellFull!18426) (select (arr!50428 _values!487) from!782)))))

(declare-fun e!872453 () V!60091)

(assert (=> d!163103 (= (get!26354 (select (arr!50428 _values!487) from!782) (dynLambda!3921 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)) e!872453)))

(declare-fun b!1565209 () Bool)

(declare-fun get!26355 (ValueCell!18426 V!60091) V!60091)

(assert (=> b!1565209 (= e!872453 (get!26355 (select (arr!50428 _values!487) from!782) (dynLambda!3921 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1565210 () Bool)

(declare-fun get!26356 (ValueCell!18426 V!60091) V!60091)

(assert (=> b!1565210 (= e!872453 (get!26356 (select (arr!50428 _values!487) from!782) (dynLambda!3921 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163103 c!144218) b!1565209))

(assert (= (and d!163103 (not c!144218)) b!1565210))

(assert (=> b!1565209 m!1440137))

(assert (=> b!1565209 m!1440139))

(declare-fun m!1440195 () Bool)

(assert (=> b!1565209 m!1440195))

(assert (=> b!1565210 m!1440137))

(assert (=> b!1565210 m!1440139))

(declare-fun m!1440197 () Bool)

(assert (=> b!1565210 m!1440197))

(assert (=> b!1565158 d!163103))

(declare-fun b!1565235 () Bool)

(declare-fun e!872471 () Bool)

(declare-fun e!872470 () Bool)

(assert (=> b!1565235 (= e!872471 e!872470)))

(assert (=> b!1565235 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!50978 _keys!637)))))

(declare-fun lt!672151 () ListLongMap!22819)

(declare-fun res!1070072 () Bool)

(assert (=> b!1565235 (= res!1070072 (contains!10344 lt!672151 (select (arr!50427 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> b!1565235 (=> (not res!1070072) (not e!872470))))

(declare-fun d!163105 () Bool)

(declare-fun e!872472 () Bool)

(assert (=> d!163105 e!872472))

(declare-fun res!1070073 () Bool)

(assert (=> d!163105 (=> (not res!1070073) (not e!872472))))

(assert (=> d!163105 (= res!1070073 (not (contains!10344 lt!672151 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!872474 () ListLongMap!22819)

(assert (=> d!163105 (= lt!672151 e!872474)))

(declare-fun c!144229 () Bool)

(assert (=> d!163105 (= c!144229 (bvsge (bvadd #b00000000000000000000000000000001 from!782) (size!50978 _keys!637)))))

(assert (=> d!163105 (validMask!0 mask!947)))

(assert (=> d!163105 (= (getCurrentListMapNoExtraKeys!6765 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495) lt!672151)))

(declare-fun b!1565236 () Bool)

(declare-fun e!872468 () Bool)

(assert (=> b!1565236 (= e!872471 e!872468)))

(declare-fun c!144228 () Bool)

(assert (=> b!1565236 (= c!144228 (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!50978 _keys!637)))))

(declare-fun b!1565237 () Bool)

(declare-fun e!872473 () Bool)

(assert (=> b!1565237 (= e!872473 (validKeyInArray!0 (select (arr!50427 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> b!1565237 (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000)))

(declare-fun b!1565238 () Bool)

(assert (=> b!1565238 (= e!872472 e!872471)))

(declare-fun c!144227 () Bool)

(assert (=> b!1565238 (= c!144227 e!872473)))

(declare-fun res!1070070 () Bool)

(assert (=> b!1565238 (=> (not res!1070070) (not e!872473))))

(assert (=> b!1565238 (= res!1070070 (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!50978 _keys!637)))))

(declare-fun b!1565239 () Bool)

(declare-fun lt!672155 () Unit!51937)

(declare-fun lt!672152 () Unit!51937)

(assert (=> b!1565239 (= lt!672155 lt!672152)))

(declare-fun lt!672154 () ListLongMap!22819)

(declare-fun lt!672153 () (_ BitVec 64))

(declare-fun lt!672150 () V!60091)

(declare-fun lt!672149 () (_ BitVec 64))

(assert (=> b!1565239 (not (contains!10344 (+!5032 lt!672154 (tuple2!25373 lt!672149 lt!672150)) lt!672153))))

(assert (=> b!1565239 (= lt!672152 (addStillNotContains!568 lt!672154 lt!672149 lt!672150 lt!672153))))

(assert (=> b!1565239 (= lt!672153 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1565239 (= lt!672150 (get!26354 (select (arr!50428 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3921 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1565239 (= lt!672149 (select (arr!50427 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))))

(declare-fun call!71876 () ListLongMap!22819)

(assert (=> b!1565239 (= lt!672154 call!71876)))

(declare-fun e!872469 () ListLongMap!22819)

(assert (=> b!1565239 (= e!872469 (+!5032 call!71876 (tuple2!25373 (select (arr!50427 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26354 (select (arr!50428 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3921 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1565240 () Bool)

(assert (=> b!1565240 (= e!872474 e!872469)))

(declare-fun c!144230 () Bool)

(assert (=> b!1565240 (= c!144230 (validKeyInArray!0 (select (arr!50427 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(declare-fun b!1565241 () Bool)

(assert (=> b!1565241 (= e!872474 (ListLongMap!22820 Nil!36757))))

(declare-fun bm!71873 () Bool)

(assert (=> bm!71873 (= call!71876 (getCurrentListMapNoExtraKeys!6765 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) defaultEntry!495))))

(declare-fun b!1565242 () Bool)

(assert (=> b!1565242 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!50978 _keys!637)))))

(assert (=> b!1565242 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!50979 _values!487)))))

(declare-fun apply!1146 (ListLongMap!22819 (_ BitVec 64)) V!60091)

(assert (=> b!1565242 (= e!872470 (= (apply!1146 lt!672151 (select (arr!50427 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))) (get!26354 (select (arr!50428 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3921 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1565243 () Bool)

(assert (=> b!1565243 (= e!872469 call!71876)))

(declare-fun b!1565244 () Bool)

(assert (=> b!1565244 (= e!872468 (= lt!672151 (getCurrentListMapNoExtraKeys!6765 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) defaultEntry!495)))))

(declare-fun b!1565245 () Bool)

(declare-fun isEmpty!1147 (ListLongMap!22819) Bool)

(assert (=> b!1565245 (= e!872468 (isEmpty!1147 lt!672151))))

(declare-fun b!1565246 () Bool)

(declare-fun res!1070071 () Bool)

(assert (=> b!1565246 (=> (not res!1070071) (not e!872472))))

(assert (=> b!1565246 (= res!1070071 (not (contains!10344 lt!672151 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163105 c!144229) b!1565241))

(assert (= (and d!163105 (not c!144229)) b!1565240))

(assert (= (and b!1565240 c!144230) b!1565239))

(assert (= (and b!1565240 (not c!144230)) b!1565243))

(assert (= (or b!1565239 b!1565243) bm!71873))

(assert (= (and d!163105 res!1070073) b!1565246))

(assert (= (and b!1565246 res!1070071) b!1565238))

(assert (= (and b!1565238 res!1070070) b!1565237))

(assert (= (and b!1565238 c!144227) b!1565235))

(assert (= (and b!1565238 (not c!144227)) b!1565236))

(assert (= (and b!1565235 res!1070072) b!1565242))

(assert (= (and b!1565236 c!144228) b!1565244))

(assert (= (and b!1565236 (not c!144228)) b!1565245))

(declare-fun b_lambda!24959 () Bool)

(assert (=> (not b_lambda!24959) (not b!1565239)))

(assert (=> b!1565239 t!51618))

(declare-fun b_and!51733 () Bool)

(assert (= b_and!51727 (and (=> t!51618 result!26511) b_and!51733)))

(declare-fun b_lambda!24961 () Bool)

(assert (=> (not b_lambda!24961) (not b!1565242)))

(assert (=> b!1565242 t!51618))

(declare-fun b_and!51735 () Bool)

(assert (= b_and!51733 (and (=> t!51618 result!26511) b_and!51735)))

(declare-fun m!1440199 () Bool)

(assert (=> b!1565244 m!1440199))

(assert (=> bm!71873 m!1440199))

(declare-fun m!1440201 () Bool)

(assert (=> b!1565235 m!1440201))

(assert (=> b!1565235 m!1440201))

(declare-fun m!1440203 () Bool)

(assert (=> b!1565235 m!1440203))

(declare-fun m!1440205 () Bool)

(assert (=> d!163105 m!1440205))

(assert (=> d!163105 m!1440125))

(assert (=> b!1565240 m!1440201))

(assert (=> b!1565240 m!1440201))

(declare-fun m!1440207 () Bool)

(assert (=> b!1565240 m!1440207))

(assert (=> b!1565242 m!1440201))

(assert (=> b!1565242 m!1440201))

(declare-fun m!1440209 () Bool)

(assert (=> b!1565242 m!1440209))

(assert (=> b!1565242 m!1440139))

(declare-fun m!1440211 () Bool)

(assert (=> b!1565242 m!1440211))

(assert (=> b!1565242 m!1440211))

(assert (=> b!1565242 m!1440139))

(declare-fun m!1440213 () Bool)

(assert (=> b!1565242 m!1440213))

(assert (=> b!1565239 m!1440139))

(declare-fun m!1440215 () Bool)

(assert (=> b!1565239 m!1440215))

(declare-fun m!1440217 () Bool)

(assert (=> b!1565239 m!1440217))

(assert (=> b!1565239 m!1440211))

(declare-fun m!1440219 () Bool)

(assert (=> b!1565239 m!1440219))

(assert (=> b!1565239 m!1440215))

(assert (=> b!1565239 m!1440211))

(assert (=> b!1565239 m!1440139))

(assert (=> b!1565239 m!1440213))

(declare-fun m!1440221 () Bool)

(assert (=> b!1565239 m!1440221))

(assert (=> b!1565239 m!1440201))

(assert (=> b!1565237 m!1440201))

(assert (=> b!1565237 m!1440201))

(assert (=> b!1565237 m!1440207))

(declare-fun m!1440223 () Bool)

(assert (=> b!1565245 m!1440223))

(declare-fun m!1440225 () Bool)

(assert (=> b!1565246 m!1440225))

(assert (=> b!1565158 d!163105))

(declare-fun d!163107 () Bool)

(assert (=> d!163107 (not (contains!10344 (+!5032 lt!672114 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672158 () Unit!51937)

(declare-fun choose!2080 (ListLongMap!22819 (_ BitVec 64) V!60091 (_ BitVec 64)) Unit!51937)

(assert (=> d!163107 (= lt!672158 (choose!2080 lt!672114 (select (arr!50427 _keys!637) from!782) lt!672116 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!872477 () Bool)

(assert (=> d!163107 e!872477))

(declare-fun res!1070076 () Bool)

(assert (=> d!163107 (=> (not res!1070076) (not e!872477))))

(assert (=> d!163107 (= res!1070076 (not (contains!10344 lt!672114 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163107 (= (addStillNotContains!568 lt!672114 (select (arr!50427 _keys!637) from!782) lt!672116 #b0000000000000000000000000000000000000000000000000000000000000000) lt!672158)))

(declare-fun b!1565250 () Bool)

(assert (=> b!1565250 (= e!872477 (not (= (select (arr!50427 _keys!637) from!782) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163107 res!1070076) b!1565250))

(assert (=> d!163107 m!1440145))

(assert (=> d!163107 m!1440145))

(assert (=> d!163107 m!1440147))

(assert (=> d!163107 m!1440133))

(declare-fun m!1440227 () Bool)

(assert (=> d!163107 m!1440227))

(declare-fun m!1440229 () Bool)

(assert (=> d!163107 m!1440229))

(assert (=> b!1565158 d!163107))

(declare-fun d!163109 () Bool)

(declare-fun e!872480 () Bool)

(assert (=> d!163109 e!872480))

(declare-fun res!1070082 () Bool)

(assert (=> d!163109 (=> (not res!1070082) (not e!872480))))

(declare-fun lt!672169 () ListLongMap!22819)

(assert (=> d!163109 (= res!1070082 (contains!10344 lt!672169 (_1!12696 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116))))))

(declare-fun lt!672167 () List!36760)

(assert (=> d!163109 (= lt!672169 (ListLongMap!22820 lt!672167))))

(declare-fun lt!672168 () Unit!51937)

(declare-fun lt!672170 () Unit!51937)

(assert (=> d!163109 (= lt!672168 lt!672170)))

(declare-datatypes ((Option!869 0))(
  ( (Some!868 (v!22294 V!60091)) (None!867) )
))
(declare-fun getValueByKey!794 (List!36760 (_ BitVec 64)) Option!869)

(assert (=> d!163109 (= (getValueByKey!794 lt!672167 (_1!12696 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116))) (Some!868 (_2!12696 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116))))))

(declare-fun lemmaContainsTupThenGetReturnValue!385 (List!36760 (_ BitVec 64) V!60091) Unit!51937)

(assert (=> d!163109 (= lt!672170 (lemmaContainsTupThenGetReturnValue!385 lt!672167 (_1!12696 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116)) (_2!12696 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116))))))

(declare-fun insertStrictlySorted!575 (List!36760 (_ BitVec 64) V!60091) List!36760)

(assert (=> d!163109 (= lt!672167 (insertStrictlySorted!575 (toList!11425 lt!672114) (_1!12696 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116)) (_2!12696 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116))))))

(assert (=> d!163109 (= (+!5032 lt!672114 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116)) lt!672169)))

(declare-fun b!1565255 () Bool)

(declare-fun res!1070081 () Bool)

(assert (=> b!1565255 (=> (not res!1070081) (not e!872480))))

(assert (=> b!1565255 (= res!1070081 (= (getValueByKey!794 (toList!11425 lt!672169) (_1!12696 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116))) (Some!868 (_2!12696 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116)))))))

(declare-fun b!1565256 () Bool)

(declare-fun contains!10345 (List!36760 tuple2!25372) Bool)

(assert (=> b!1565256 (= e!872480 (contains!10345 (toList!11425 lt!672169) (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116)))))

(assert (= (and d!163109 res!1070082) b!1565255))

(assert (= (and b!1565255 res!1070081) b!1565256))

(declare-fun m!1440231 () Bool)

(assert (=> d!163109 m!1440231))

(declare-fun m!1440233 () Bool)

(assert (=> d!163109 m!1440233))

(declare-fun m!1440235 () Bool)

(assert (=> d!163109 m!1440235))

(declare-fun m!1440237 () Bool)

(assert (=> d!163109 m!1440237))

(declare-fun m!1440239 () Bool)

(assert (=> b!1565255 m!1440239))

(declare-fun m!1440241 () Bool)

(assert (=> b!1565256 m!1440241))

(assert (=> b!1565158 d!163109))

(declare-fun d!163111 () Bool)

(declare-fun e!872486 () Bool)

(assert (=> d!163111 e!872486))

(declare-fun res!1070085 () Bool)

(assert (=> d!163111 (=> res!1070085 e!872486)))

(declare-fun lt!672179 () Bool)

(assert (=> d!163111 (= res!1070085 (not lt!672179))))

(declare-fun lt!672180 () Bool)

(assert (=> d!163111 (= lt!672179 lt!672180)))

(declare-fun lt!672182 () Unit!51937)

(declare-fun e!872485 () Unit!51937)

(assert (=> d!163111 (= lt!672182 e!872485)))

(declare-fun c!144233 () Bool)

(assert (=> d!163111 (= c!144233 lt!672180)))

(declare-fun containsKey!848 (List!36760 (_ BitVec 64)) Bool)

(assert (=> d!163111 (= lt!672180 (containsKey!848 (toList!11425 (+!5032 lt!672114 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163111 (= (contains!10344 (+!5032 lt!672114 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116)) #b0000000000000000000000000000000000000000000000000000000000000000) lt!672179)))

(declare-fun b!1565263 () Bool)

(declare-fun lt!672181 () Unit!51937)

(assert (=> b!1565263 (= e!872485 lt!672181)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!529 (List!36760 (_ BitVec 64)) Unit!51937)

(assert (=> b!1565263 (= lt!672181 (lemmaContainsKeyImpliesGetValueByKeyDefined!529 (toList!11425 (+!5032 lt!672114 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun isDefined!578 (Option!869) Bool)

(assert (=> b!1565263 (isDefined!578 (getValueByKey!794 (toList!11425 (+!5032 lt!672114 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1565264 () Bool)

(declare-fun Unit!51939 () Unit!51937)

(assert (=> b!1565264 (= e!872485 Unit!51939)))

(declare-fun b!1565265 () Bool)

(assert (=> b!1565265 (= e!872486 (isDefined!578 (getValueByKey!794 (toList!11425 (+!5032 lt!672114 (tuple2!25373 (select (arr!50427 _keys!637) from!782) lt!672116))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163111 c!144233) b!1565263))

(assert (= (and d!163111 (not c!144233)) b!1565264))

(assert (= (and d!163111 (not res!1070085)) b!1565265))

(declare-fun m!1440243 () Bool)

(assert (=> d!163111 m!1440243))

(declare-fun m!1440245 () Bool)

(assert (=> b!1565263 m!1440245))

(declare-fun m!1440247 () Bool)

(assert (=> b!1565263 m!1440247))

(assert (=> b!1565263 m!1440247))

(declare-fun m!1440249 () Bool)

(assert (=> b!1565263 m!1440249))

(assert (=> b!1565265 m!1440247))

(assert (=> b!1565265 m!1440247))

(assert (=> b!1565265 m!1440249))

(assert (=> b!1565158 d!163111))

(declare-fun b!1565276 () Bool)

(declare-fun e!872496 () Bool)

(declare-fun e!872495 () Bool)

(assert (=> b!1565276 (= e!872496 e!872495)))

(declare-fun c!144236 () Bool)

(assert (=> b!1565276 (= c!144236 (validKeyInArray!0 (select (arr!50427 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1565277 () Bool)

(declare-fun e!872498 () Bool)

(declare-fun contains!10346 (List!36759 (_ BitVec 64)) Bool)

(assert (=> b!1565277 (= e!872498 (contains!10346 Nil!36756 (select (arr!50427 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun bm!71876 () Bool)

(declare-fun call!71879 () Bool)

(assert (=> bm!71876 (= call!71879 (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!144236 (Cons!36755 (select (arr!50427 _keys!637) #b00000000000000000000000000000000) Nil!36756) Nil!36756)))))

(declare-fun b!1565278 () Bool)

(assert (=> b!1565278 (= e!872495 call!71879)))

(declare-fun d!163113 () Bool)

(declare-fun res!1070093 () Bool)

(declare-fun e!872497 () Bool)

(assert (=> d!163113 (=> res!1070093 e!872497)))

(assert (=> d!163113 (= res!1070093 (bvsge #b00000000000000000000000000000000 (size!50978 _keys!637)))))

(assert (=> d!163113 (= (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36756) e!872497)))

(declare-fun b!1565279 () Bool)

(assert (=> b!1565279 (= e!872495 call!71879)))

(declare-fun b!1565280 () Bool)

(assert (=> b!1565280 (= e!872497 e!872496)))

(declare-fun res!1070094 () Bool)

(assert (=> b!1565280 (=> (not res!1070094) (not e!872496))))

(assert (=> b!1565280 (= res!1070094 (not e!872498))))

(declare-fun res!1070092 () Bool)

(assert (=> b!1565280 (=> (not res!1070092) (not e!872498))))

(assert (=> b!1565280 (= res!1070092 (validKeyInArray!0 (select (arr!50427 _keys!637) #b00000000000000000000000000000000)))))

(assert (= (and d!163113 (not res!1070093)) b!1565280))

(assert (= (and b!1565280 res!1070092) b!1565277))

(assert (= (and b!1565280 res!1070094) b!1565276))

(assert (= (and b!1565276 c!144236) b!1565278))

(assert (= (and b!1565276 (not c!144236)) b!1565279))

(assert (= (or b!1565278 b!1565279) bm!71876))

(assert (=> b!1565276 m!1440185))

(assert (=> b!1565276 m!1440185))

(assert (=> b!1565276 m!1440187))

(assert (=> b!1565277 m!1440185))

(assert (=> b!1565277 m!1440185))

(declare-fun m!1440251 () Bool)

(assert (=> b!1565277 m!1440251))

(assert (=> bm!71876 m!1440185))

(declare-fun m!1440253 () Bool)

(assert (=> bm!71876 m!1440253))

(assert (=> b!1565280 m!1440185))

(assert (=> b!1565280 m!1440185))

(assert (=> b!1565280 m!1440187))

(assert (=> b!1565154 d!163113))

(declare-fun d!163115 () Bool)

(assert (=> d!163115 (= (validKeyInArray!0 (select (arr!50427 _keys!637) from!782)) (and (not (= (select (arr!50427 _keys!637) from!782) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50427 _keys!637) from!782) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1565159 d!163115))

(declare-fun b!1565287 () Bool)

(declare-fun e!872503 () Bool)

(assert (=> b!1565287 (= e!872503 tp_is_empty!38913)))

(declare-fun condMapEmpty!59764 () Bool)

(declare-fun mapDefault!59764 () ValueCell!18426)

(assert (=> mapNonEmpty!59758 (= condMapEmpty!59764 (= mapRest!59758 ((as const (Array (_ BitVec 32) ValueCell!18426)) mapDefault!59764)))))

(declare-fun e!872504 () Bool)

(declare-fun mapRes!59764 () Bool)

(assert (=> mapNonEmpty!59758 (= tp!113716 (and e!872504 mapRes!59764))))

(declare-fun b!1565288 () Bool)

(assert (=> b!1565288 (= e!872504 tp_is_empty!38913)))

(declare-fun mapNonEmpty!59764 () Bool)

(declare-fun tp!113726 () Bool)

(assert (=> mapNonEmpty!59764 (= mapRes!59764 (and tp!113726 e!872503))))

(declare-fun mapKey!59764 () (_ BitVec 32))

(declare-fun mapValue!59764 () ValueCell!18426)

(declare-fun mapRest!59764 () (Array (_ BitVec 32) ValueCell!18426))

(assert (=> mapNonEmpty!59764 (= mapRest!59758 (store mapRest!59764 mapKey!59764 mapValue!59764))))

(declare-fun mapIsEmpty!59764 () Bool)

(assert (=> mapIsEmpty!59764 mapRes!59764))

(assert (= (and mapNonEmpty!59758 condMapEmpty!59764) mapIsEmpty!59764))

(assert (= (and mapNonEmpty!59758 (not condMapEmpty!59764)) mapNonEmpty!59764))

(assert (= (and mapNonEmpty!59764 ((_ is ValueCellFull!18426) mapValue!59764)) b!1565287))

(assert (= (and mapNonEmpty!59758 ((_ is ValueCellFull!18426) mapDefault!59764)) b!1565288))

(declare-fun m!1440255 () Bool)

(assert (=> mapNonEmpty!59764 m!1440255))

(declare-fun b_lambda!24963 () Bool)

(assert (= b_lambda!24959 (or (and start!133926 b_free!32139) b_lambda!24963)))

(declare-fun b_lambda!24965 () Bool)

(assert (= b_lambda!24961 (or (and start!133926 b_free!32139) b_lambda!24965)))

(check-sat (not b!1565276) (not bm!71870) (not b!1565246) (not b!1565240) (not d!163105) tp_is_empty!38913 (not d!163109) (not b!1565203) (not bm!71876) (not b_lambda!24963) (not mapNonEmpty!59764) (not b!1565242) (not b!1565256) (not b!1565263) (not b!1565244) (not b!1565245) (not b!1565235) (not b_lambda!24965) (not b!1565265) (not d!163107) (not b!1565277) (not b!1565280) (not b!1565209) (not bm!71873) (not b!1565210) b_and!51735 (not b!1565255) (not b_next!32139) (not b_lambda!24957) (not b!1565239) (not d!163111) (not b!1565237) (not b!1565204))
(check-sat b_and!51735 (not b_next!32139))
