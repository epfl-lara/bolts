; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134122 () Bool)

(assert start!134122)

(declare-fun b_free!32217 () Bool)

(declare-fun b_next!32217 () Bool)

(assert (=> start!134122 (= b_free!32217 (not b_next!32217))))

(declare-fun tp!113971 () Bool)

(declare-fun b_and!51871 () Bool)

(assert (=> start!134122 (= tp!113971 b_and!51871)))

(declare-fun b!1567091 () Bool)

(declare-fun res!1071142 () Bool)

(declare-fun e!873559 () Bool)

(assert (=> b!1567091 (=> (not res!1071142) (not e!873559))))

(declare-datatypes ((array!104655 0))(
  ( (array!104656 (arr!50508 (Array (_ BitVec 32) (_ BitVec 64))) (size!51059 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104655)

(declare-datatypes ((List!36818 0))(
  ( (Nil!36815) (Cons!36814 (h!38262 (_ BitVec 64)) (t!51729 List!36818)) )
))
(declare-fun arrayNoDuplicates!0 (array!104655 (_ BitVec 32) List!36818) Bool)

(assert (=> b!1567091 (= res!1071142 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36815))))

(declare-fun b!1567092 () Bool)

(declare-fun res!1071140 () Bool)

(declare-fun e!873560 () Bool)

(assert (=> b!1567092 (=> (not res!1071140) (not e!873560))))

(declare-datatypes ((V!60203 0))(
  ( (V!60204 (val!19582 Int)) )
))
(declare-datatypes ((tuple2!25434 0))(
  ( (tuple2!25435 (_1!12727 (_ BitVec 64)) (_2!12727 V!60203)) )
))
(declare-datatypes ((List!36819 0))(
  ( (Nil!36816) (Cons!36815 (h!38263 tuple2!25434) (t!51730 List!36819)) )
))
(declare-datatypes ((ListLongMap!22881 0))(
  ( (ListLongMap!22882 (toList!11456 List!36819)) )
))
(declare-fun lt!672803 () ListLongMap!22881)

(declare-fun contains!10380 (ListLongMap!22881 (_ BitVec 64)) Bool)

(assert (=> b!1567092 (= res!1071140 (not (contains!10380 lt!672803 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567093 () Bool)

(assert (=> b!1567093 (= e!873559 e!873560)))

(declare-fun res!1071144 () Bool)

(assert (=> b!1567093 (=> (not res!1071144) (not e!873560))))

(assert (=> b!1567093 (= res!1071144 (not (contains!10380 lt!672803 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60203)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60203)

(declare-datatypes ((ValueCell!18468 0))(
  ( (ValueCellFull!18468 (v!22338 V!60203)) (EmptyCell!18468) )
))
(declare-datatypes ((array!104657 0))(
  ( (array!104658 (arr!50509 (Array (_ BitVec 32) ValueCell!18468)) (size!51060 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104657)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6792 (array!104655 array!104657 (_ BitVec 32) (_ BitVec 32) V!60203 V!60203 (_ BitVec 32) Int) ListLongMap!22881)

(assert (=> b!1567093 (= lt!672803 (getCurrentListMapNoExtraKeys!6792 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1567094 () Bool)

(declare-fun e!873556 () Bool)

(declare-fun tp_is_empty!38997 () Bool)

(assert (=> b!1567094 (= e!873556 tp_is_empty!38997)))

(declare-fun res!1071141 () Bool)

(assert (=> start!134122 (=> (not res!1071141) (not e!873559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134122 (= res!1071141 (validMask!0 mask!947))))

(assert (=> start!134122 e!873559))

(assert (=> start!134122 tp!113971))

(assert (=> start!134122 tp_is_empty!38997))

(assert (=> start!134122 true))

(declare-fun array_inv!39159 (array!104655) Bool)

(assert (=> start!134122 (array_inv!39159 _keys!637)))

(declare-fun e!873558 () Bool)

(declare-fun array_inv!39160 (array!104657) Bool)

(assert (=> start!134122 (and (array_inv!39160 _values!487) e!873558)))

(declare-fun mapNonEmpty!59895 () Bool)

(declare-fun mapRes!59895 () Bool)

(declare-fun tp!113970 () Bool)

(declare-fun e!873555 () Bool)

(assert (=> mapNonEmpty!59895 (= mapRes!59895 (and tp!113970 e!873555))))

(declare-fun mapKey!59895 () (_ BitVec 32))

(declare-fun mapValue!59895 () ValueCell!18468)

(declare-fun mapRest!59895 () (Array (_ BitVec 32) ValueCell!18468))

(assert (=> mapNonEmpty!59895 (= (arr!50509 _values!487) (store mapRest!59895 mapKey!59895 mapValue!59895))))

(declare-fun b!1567095 () Bool)

(assert (=> b!1567095 (= e!873555 tp_is_empty!38997)))

(declare-fun b!1567096 () Bool)

(assert (=> b!1567096 (= e!873560 (bvsge (bvsub (size!51059 _keys!637) from!782) (bvsub (bvadd #b00000000000000000000000000000001 (size!51059 _keys!637)) from!782)))))

(declare-fun b!1567097 () Bool)

(declare-fun res!1071146 () Bool)

(assert (=> b!1567097 (=> (not res!1071146) (not e!873559))))

(assert (=> b!1567097 (= res!1071146 (and (= (size!51060 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51059 _keys!637) (size!51060 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1567098 () Bool)

(assert (=> b!1567098 (= e!873558 (and e!873556 mapRes!59895))))

(declare-fun condMapEmpty!59895 () Bool)

(declare-fun mapDefault!59895 () ValueCell!18468)

(assert (=> b!1567098 (= condMapEmpty!59895 (= (arr!50509 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18468)) mapDefault!59895)))))

(declare-fun b!1567099 () Bool)

(declare-fun res!1071147 () Bool)

(assert (=> b!1567099 (=> (not res!1071147) (not e!873559))))

(assert (=> b!1567099 (= res!1071147 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51059 _keys!637)) (bvslt from!782 (size!51059 _keys!637))))))

(declare-fun b!1567100 () Bool)

(declare-fun res!1071143 () Bool)

(assert (=> b!1567100 (=> (not res!1071143) (not e!873559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104655 (_ BitVec 32)) Bool)

(assert (=> b!1567100 (= res!1071143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1567101 () Bool)

(declare-fun res!1071145 () Bool)

(assert (=> b!1567101 (=> (not res!1071145) (not e!873559))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567101 (= res!1071145 (not (validKeyInArray!0 (select (arr!50508 _keys!637) from!782))))))

(declare-fun mapIsEmpty!59895 () Bool)

(assert (=> mapIsEmpty!59895 mapRes!59895))

(assert (= (and start!134122 res!1071141) b!1567097))

(assert (= (and b!1567097 res!1071146) b!1567100))

(assert (= (and b!1567100 res!1071143) b!1567091))

(assert (= (and b!1567091 res!1071142) b!1567099))

(assert (= (and b!1567099 res!1071147) b!1567101))

(assert (= (and b!1567101 res!1071145) b!1567093))

(assert (= (and b!1567093 res!1071144) b!1567092))

(assert (= (and b!1567092 res!1071140) b!1567096))

(assert (= (and b!1567098 condMapEmpty!59895) mapIsEmpty!59895))

(assert (= (and b!1567098 (not condMapEmpty!59895)) mapNonEmpty!59895))

(get-info :version)

(assert (= (and mapNonEmpty!59895 ((_ is ValueCellFull!18468) mapValue!59895)) b!1567095))

(assert (= (and b!1567098 ((_ is ValueCellFull!18468) mapDefault!59895)) b!1567094))

(assert (= start!134122 b!1567098))

(declare-fun m!1442055 () Bool)

(assert (=> start!134122 m!1442055))

(declare-fun m!1442057 () Bool)

(assert (=> start!134122 m!1442057))

(declare-fun m!1442059 () Bool)

(assert (=> start!134122 m!1442059))

(declare-fun m!1442061 () Bool)

(assert (=> b!1567093 m!1442061))

(declare-fun m!1442063 () Bool)

(assert (=> b!1567093 m!1442063))

(declare-fun m!1442065 () Bool)

(assert (=> b!1567100 m!1442065))

(declare-fun m!1442067 () Bool)

(assert (=> b!1567092 m!1442067))

(declare-fun m!1442069 () Bool)

(assert (=> mapNonEmpty!59895 m!1442069))

(declare-fun m!1442071 () Bool)

(assert (=> b!1567091 m!1442071))

(declare-fun m!1442073 () Bool)

(assert (=> b!1567101 m!1442073))

(assert (=> b!1567101 m!1442073))

(declare-fun m!1442075 () Bool)

(assert (=> b!1567101 m!1442075))

(check-sat b_and!51871 (not start!134122) (not b!1567093) (not b!1567101) (not b!1567100) (not b!1567091) (not b!1567092) (not b_next!32217) (not mapNonEmpty!59895) tp_is_empty!38997)
(check-sat b_and!51871 (not b_next!32217))
(get-model)

(declare-fun d!163467 () Bool)

(assert (=> d!163467 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!134122 d!163467))

(declare-fun d!163469 () Bool)

(assert (=> d!163469 (= (array_inv!39159 _keys!637) (bvsge (size!51059 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!134122 d!163469))

(declare-fun d!163471 () Bool)

(assert (=> d!163471 (= (array_inv!39160 _values!487) (bvsge (size!51060 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!134122 d!163471))

(declare-fun d!163473 () Bool)

(declare-fun e!873583 () Bool)

(assert (=> d!163473 e!873583))

(declare-fun res!1071174 () Bool)

(assert (=> d!163473 (=> res!1071174 e!873583)))

(declare-fun lt!672818 () Bool)

(assert (=> d!163473 (= res!1071174 (not lt!672818))))

(declare-fun lt!672817 () Bool)

(assert (=> d!163473 (= lt!672818 lt!672817)))

(declare-datatypes ((Unit!51995 0))(
  ( (Unit!51996) )
))
(declare-fun lt!672816 () Unit!51995)

(declare-fun e!873584 () Unit!51995)

(assert (=> d!163473 (= lt!672816 e!873584)))

(declare-fun c!144400 () Bool)

(assert (=> d!163473 (= c!144400 lt!672817)))

(declare-fun containsKey!850 (List!36819 (_ BitVec 64)) Bool)

(assert (=> d!163473 (= lt!672817 (containsKey!850 (toList!11456 lt!672803) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163473 (= (contains!10380 lt!672803 #b0000000000000000000000000000000000000000000000000000000000000000) lt!672818)))

(declare-fun b!1567141 () Bool)

(declare-fun lt!672815 () Unit!51995)

(assert (=> b!1567141 (= e!873584 lt!672815)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!531 (List!36819 (_ BitVec 64)) Unit!51995)

(assert (=> b!1567141 (= lt!672815 (lemmaContainsKeyImpliesGetValueByKeyDefined!531 (toList!11456 lt!672803) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!871 0))(
  ( (Some!870 (v!22340 V!60203)) (None!869) )
))
(declare-fun isDefined!580 (Option!871) Bool)

(declare-fun getValueByKey!796 (List!36819 (_ BitVec 64)) Option!871)

(assert (=> b!1567141 (isDefined!580 (getValueByKey!796 (toList!11456 lt!672803) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567142 () Bool)

(declare-fun Unit!51997 () Unit!51995)

(assert (=> b!1567142 (= e!873584 Unit!51997)))

(declare-fun b!1567143 () Bool)

(assert (=> b!1567143 (= e!873583 (isDefined!580 (getValueByKey!796 (toList!11456 lt!672803) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163473 c!144400) b!1567141))

(assert (= (and d!163473 (not c!144400)) b!1567142))

(assert (= (and d!163473 (not res!1071174)) b!1567143))

(declare-fun m!1442099 () Bool)

(assert (=> d!163473 m!1442099))

(declare-fun m!1442101 () Bool)

(assert (=> b!1567141 m!1442101))

(declare-fun m!1442103 () Bool)

(assert (=> b!1567141 m!1442103))

(assert (=> b!1567141 m!1442103))

(declare-fun m!1442105 () Bool)

(assert (=> b!1567141 m!1442105))

(assert (=> b!1567143 m!1442103))

(assert (=> b!1567143 m!1442103))

(assert (=> b!1567143 m!1442105))

(assert (=> b!1567093 d!163473))

(declare-fun b!1567168 () Bool)

(declare-fun e!873601 () ListLongMap!22881)

(assert (=> b!1567168 (= e!873601 (ListLongMap!22882 Nil!36816))))

(declare-fun b!1567169 () Bool)

(declare-fun e!873603 () Bool)

(declare-fun lt!672835 () ListLongMap!22881)

(declare-fun isEmpty!1151 (ListLongMap!22881) Bool)

(assert (=> b!1567169 (= e!873603 (isEmpty!1151 lt!672835))))

(declare-fun d!163475 () Bool)

(declare-fun e!873604 () Bool)

(assert (=> d!163475 e!873604))

(declare-fun res!1071183 () Bool)

(assert (=> d!163475 (=> (not res!1071183) (not e!873604))))

(assert (=> d!163475 (= res!1071183 (not (contains!10380 lt!672835 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163475 (= lt!672835 e!873601)))

(declare-fun c!144409 () Bool)

(assert (=> d!163475 (= c!144409 (bvsge (bvadd #b00000000000000000000000000000001 from!782) (size!51059 _keys!637)))))

(assert (=> d!163475 (validMask!0 mask!947)))

(assert (=> d!163475 (= (getCurrentListMapNoExtraKeys!6792 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495) lt!672835)))

(declare-fun b!1567170 () Bool)

(declare-fun lt!672838 () Unit!51995)

(declare-fun lt!672836 () Unit!51995)

(assert (=> b!1567170 (= lt!672838 lt!672836)))

(declare-fun lt!672834 () ListLongMap!22881)

(declare-fun lt!672839 () V!60203)

(declare-fun lt!672833 () (_ BitVec 64))

(declare-fun lt!672837 () (_ BitVec 64))

(declare-fun +!5051 (ListLongMap!22881 tuple2!25434) ListLongMap!22881)

(assert (=> b!1567170 (not (contains!10380 (+!5051 lt!672834 (tuple2!25435 lt!672833 lt!672839)) lt!672837))))

(declare-fun addStillNotContains!587 (ListLongMap!22881 (_ BitVec 64) V!60203 (_ BitVec 64)) Unit!51995)

(assert (=> b!1567170 (= lt!672836 (addStillNotContains!587 lt!672834 lt!672833 lt!672839 lt!672837))))

(assert (=> b!1567170 (= lt!672837 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!26406 (ValueCell!18468 V!60203) V!60203)

(declare-fun dynLambda!3940 (Int (_ BitVec 64)) V!60203)

(assert (=> b!1567170 (= lt!672839 (get!26406 (select (arr!50509 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3940 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1567170 (= lt!672833 (select (arr!50508 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))))

(declare-fun call!71921 () ListLongMap!22881)

(assert (=> b!1567170 (= lt!672834 call!71921)))

(declare-fun e!873599 () ListLongMap!22881)

(assert (=> b!1567170 (= e!873599 (+!5051 call!71921 (tuple2!25435 (select (arr!50508 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26406 (select (arr!50509 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3940 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1567171 () Bool)

(assert (=> b!1567171 (= e!873599 call!71921)))

(declare-fun b!1567172 () Bool)

(assert (=> b!1567172 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51059 _keys!637)))))

(assert (=> b!1567172 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51060 _values!487)))))

(declare-fun e!873600 () Bool)

(declare-fun apply!1149 (ListLongMap!22881 (_ BitVec 64)) V!60203)

(assert (=> b!1567172 (= e!873600 (= (apply!1149 lt!672835 (select (arr!50508 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))) (get!26406 (select (arr!50509 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3940 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1567173 () Bool)

(declare-fun e!873605 () Bool)

(assert (=> b!1567173 (= e!873605 e!873600)))

(assert (=> b!1567173 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51059 _keys!637)))))

(declare-fun res!1071186 () Bool)

(assert (=> b!1567173 (= res!1071186 (contains!10380 lt!672835 (select (arr!50508 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> b!1567173 (=> (not res!1071186) (not e!873600))))

(declare-fun b!1567174 () Bool)

(declare-fun e!873602 () Bool)

(assert (=> b!1567174 (= e!873602 (validKeyInArray!0 (select (arr!50508 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> b!1567174 (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000)))

(declare-fun bm!71918 () Bool)

(assert (=> bm!71918 (= call!71921 (getCurrentListMapNoExtraKeys!6792 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) defaultEntry!495))))

(declare-fun b!1567175 () Bool)

(assert (=> b!1567175 (= e!873601 e!873599)))

(declare-fun c!144411 () Bool)

(assert (=> b!1567175 (= c!144411 (validKeyInArray!0 (select (arr!50508 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(declare-fun b!1567176 () Bool)

(declare-fun res!1071184 () Bool)

(assert (=> b!1567176 (=> (not res!1071184) (not e!873604))))

(assert (=> b!1567176 (= res!1071184 (not (contains!10380 lt!672835 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567177 () Bool)

(assert (=> b!1567177 (= e!873605 e!873603)))

(declare-fun c!144410 () Bool)

(assert (=> b!1567177 (= c!144410 (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51059 _keys!637)))))

(declare-fun b!1567178 () Bool)

(assert (=> b!1567178 (= e!873603 (= lt!672835 (getCurrentListMapNoExtraKeys!6792 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) defaultEntry!495)))))

(declare-fun b!1567179 () Bool)

(assert (=> b!1567179 (= e!873604 e!873605)))

(declare-fun c!144412 () Bool)

(assert (=> b!1567179 (= c!144412 e!873602)))

(declare-fun res!1071185 () Bool)

(assert (=> b!1567179 (=> (not res!1071185) (not e!873602))))

(assert (=> b!1567179 (= res!1071185 (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51059 _keys!637)))))

(assert (= (and d!163475 c!144409) b!1567168))

(assert (= (and d!163475 (not c!144409)) b!1567175))

(assert (= (and b!1567175 c!144411) b!1567170))

(assert (= (and b!1567175 (not c!144411)) b!1567171))

(assert (= (or b!1567170 b!1567171) bm!71918))

(assert (= (and d!163475 res!1071183) b!1567176))

(assert (= (and b!1567176 res!1071184) b!1567179))

(assert (= (and b!1567179 res!1071185) b!1567174))

(assert (= (and b!1567179 c!144412) b!1567173))

(assert (= (and b!1567179 (not c!144412)) b!1567177))

(assert (= (and b!1567173 res!1071186) b!1567172))

(assert (= (and b!1567177 c!144410) b!1567178))

(assert (= (and b!1567177 (not c!144410)) b!1567169))

(declare-fun b_lambda!25041 () Bool)

(assert (=> (not b_lambda!25041) (not b!1567170)))

(declare-fun t!51733 () Bool)

(declare-fun tb!12667 () Bool)

(assert (=> (and start!134122 (= defaultEntry!495 defaultEntry!495) t!51733) tb!12667))

(declare-fun result!26621 () Bool)

(assert (=> tb!12667 (= result!26621 tp_is_empty!38997)))

(assert (=> b!1567170 t!51733))

(declare-fun b_and!51875 () Bool)

(assert (= b_and!51871 (and (=> t!51733 result!26621) b_and!51875)))

(declare-fun b_lambda!25043 () Bool)

(assert (=> (not b_lambda!25043) (not b!1567172)))

(assert (=> b!1567172 t!51733))

(declare-fun b_and!51877 () Bool)

(assert (= b_and!51875 (and (=> t!51733 result!26621) b_and!51877)))

(declare-fun m!1442107 () Bool)

(assert (=> b!1567174 m!1442107))

(assert (=> b!1567174 m!1442107))

(declare-fun m!1442109 () Bool)

(assert (=> b!1567174 m!1442109))

(assert (=> b!1567170 m!1442107))

(declare-fun m!1442111 () Bool)

(assert (=> b!1567170 m!1442111))

(declare-fun m!1442113 () Bool)

(assert (=> b!1567170 m!1442113))

(declare-fun m!1442115 () Bool)

(assert (=> b!1567170 m!1442115))

(assert (=> b!1567170 m!1442111))

(declare-fun m!1442117 () Bool)

(assert (=> b!1567170 m!1442117))

(declare-fun m!1442119 () Bool)

(assert (=> b!1567170 m!1442119))

(declare-fun m!1442121 () Bool)

(assert (=> b!1567170 m!1442121))

(assert (=> b!1567170 m!1442113))

(declare-fun m!1442123 () Bool)

(assert (=> b!1567170 m!1442123))

(assert (=> b!1567170 m!1442115))

(declare-fun m!1442125 () Bool)

(assert (=> b!1567169 m!1442125))

(declare-fun m!1442127 () Bool)

(assert (=> d!163475 m!1442127))

(assert (=> d!163475 m!1442055))

(assert (=> b!1567175 m!1442107))

(assert (=> b!1567175 m!1442107))

(assert (=> b!1567175 m!1442109))

(declare-fun m!1442129 () Bool)

(assert (=> bm!71918 m!1442129))

(assert (=> b!1567178 m!1442129))

(assert (=> b!1567173 m!1442107))

(assert (=> b!1567173 m!1442107))

(declare-fun m!1442131 () Bool)

(assert (=> b!1567173 m!1442131))

(assert (=> b!1567172 m!1442107))

(assert (=> b!1567172 m!1442111))

(assert (=> b!1567172 m!1442115))

(assert (=> b!1567172 m!1442111))

(assert (=> b!1567172 m!1442117))

(assert (=> b!1567172 m!1442115))

(assert (=> b!1567172 m!1442107))

(declare-fun m!1442133 () Bool)

(assert (=> b!1567172 m!1442133))

(declare-fun m!1442135 () Bool)

(assert (=> b!1567176 m!1442135))

(assert (=> b!1567093 d!163475))

(declare-fun d!163477 () Bool)

(declare-fun e!873606 () Bool)

(assert (=> d!163477 e!873606))

(declare-fun res!1071187 () Bool)

(assert (=> d!163477 (=> res!1071187 e!873606)))

(declare-fun lt!672843 () Bool)

(assert (=> d!163477 (= res!1071187 (not lt!672843))))

(declare-fun lt!672842 () Bool)

(assert (=> d!163477 (= lt!672843 lt!672842)))

(declare-fun lt!672841 () Unit!51995)

(declare-fun e!873607 () Unit!51995)

(assert (=> d!163477 (= lt!672841 e!873607)))

(declare-fun c!144413 () Bool)

(assert (=> d!163477 (= c!144413 lt!672842)))

(assert (=> d!163477 (= lt!672842 (containsKey!850 (toList!11456 lt!672803) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163477 (= (contains!10380 lt!672803 #b1000000000000000000000000000000000000000000000000000000000000000) lt!672843)))

(declare-fun b!1567182 () Bool)

(declare-fun lt!672840 () Unit!51995)

(assert (=> b!1567182 (= e!873607 lt!672840)))

(assert (=> b!1567182 (= lt!672840 (lemmaContainsKeyImpliesGetValueByKeyDefined!531 (toList!11456 lt!672803) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1567182 (isDefined!580 (getValueByKey!796 (toList!11456 lt!672803) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567183 () Bool)

(declare-fun Unit!51998 () Unit!51995)

(assert (=> b!1567183 (= e!873607 Unit!51998)))

(declare-fun b!1567184 () Bool)

(assert (=> b!1567184 (= e!873606 (isDefined!580 (getValueByKey!796 (toList!11456 lt!672803) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163477 c!144413) b!1567182))

(assert (= (and d!163477 (not c!144413)) b!1567183))

(assert (= (and d!163477 (not res!1071187)) b!1567184))

(declare-fun m!1442137 () Bool)

(assert (=> d!163477 m!1442137))

(declare-fun m!1442139 () Bool)

(assert (=> b!1567182 m!1442139))

(declare-fun m!1442141 () Bool)

(assert (=> b!1567182 m!1442141))

(assert (=> b!1567182 m!1442141))

(declare-fun m!1442143 () Bool)

(assert (=> b!1567182 m!1442143))

(assert (=> b!1567184 m!1442141))

(assert (=> b!1567184 m!1442141))

(assert (=> b!1567184 m!1442143))

(assert (=> b!1567092 d!163477))

(declare-fun d!163479 () Bool)

(declare-fun res!1071192 () Bool)

(declare-fun e!873615 () Bool)

(assert (=> d!163479 (=> res!1071192 e!873615)))

(assert (=> d!163479 (= res!1071192 (bvsge #b00000000000000000000000000000000 (size!51059 _keys!637)))))

(assert (=> d!163479 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!873615)))

(declare-fun b!1567193 () Bool)

(declare-fun e!873614 () Bool)

(declare-fun call!71924 () Bool)

(assert (=> b!1567193 (= e!873614 call!71924)))

(declare-fun b!1567194 () Bool)

(declare-fun e!873616 () Bool)

(assert (=> b!1567194 (= e!873616 e!873614)))

(declare-fun lt!672851 () (_ BitVec 64))

(assert (=> b!1567194 (= lt!672851 (select (arr!50508 _keys!637) #b00000000000000000000000000000000))))

(declare-fun lt!672852 () Unit!51995)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104655 (_ BitVec 64) (_ BitVec 32)) Unit!51995)

(assert (=> b!1567194 (= lt!672852 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!672851 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1567194 (arrayContainsKey!0 _keys!637 lt!672851 #b00000000000000000000000000000000)))

(declare-fun lt!672850 () Unit!51995)

(assert (=> b!1567194 (= lt!672850 lt!672852)))

(declare-fun res!1071193 () Bool)

(declare-datatypes ((SeekEntryResult!13526 0))(
  ( (MissingZero!13526 (index!56501 (_ BitVec 32))) (Found!13526 (index!56502 (_ BitVec 32))) (Intermediate!13526 (undefined!14338 Bool) (index!56503 (_ BitVec 32)) (x!140816 (_ BitVec 32))) (Undefined!13526) (MissingVacant!13526 (index!56504 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104655 (_ BitVec 32)) SeekEntryResult!13526)

(assert (=> b!1567194 (= res!1071193 (= (seekEntryOrOpen!0 (select (arr!50508 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13526 #b00000000000000000000000000000000)))))

(assert (=> b!1567194 (=> (not res!1071193) (not e!873614))))

(declare-fun bm!71921 () Bool)

(assert (=> bm!71921 (= call!71924 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1567195 () Bool)

(assert (=> b!1567195 (= e!873616 call!71924)))

(declare-fun b!1567196 () Bool)

(assert (=> b!1567196 (= e!873615 e!873616)))

(declare-fun c!144416 () Bool)

(assert (=> b!1567196 (= c!144416 (validKeyInArray!0 (select (arr!50508 _keys!637) #b00000000000000000000000000000000)))))

(assert (= (and d!163479 (not res!1071192)) b!1567196))

(assert (= (and b!1567196 c!144416) b!1567194))

(assert (= (and b!1567196 (not c!144416)) b!1567195))

(assert (= (and b!1567194 res!1071193) b!1567193))

(assert (= (or b!1567193 b!1567195) bm!71921))

(declare-fun m!1442145 () Bool)

(assert (=> b!1567194 m!1442145))

(declare-fun m!1442147 () Bool)

(assert (=> b!1567194 m!1442147))

(declare-fun m!1442149 () Bool)

(assert (=> b!1567194 m!1442149))

(assert (=> b!1567194 m!1442145))

(declare-fun m!1442151 () Bool)

(assert (=> b!1567194 m!1442151))

(declare-fun m!1442153 () Bool)

(assert (=> bm!71921 m!1442153))

(assert (=> b!1567196 m!1442145))

(assert (=> b!1567196 m!1442145))

(declare-fun m!1442155 () Bool)

(assert (=> b!1567196 m!1442155))

(assert (=> b!1567100 d!163479))

(declare-fun b!1567207 () Bool)

(declare-fun e!873627 () Bool)

(declare-fun e!873628 () Bool)

(assert (=> b!1567207 (= e!873627 e!873628)))

(declare-fun res!1071201 () Bool)

(assert (=> b!1567207 (=> (not res!1071201) (not e!873628))))

(declare-fun e!873625 () Bool)

(assert (=> b!1567207 (= res!1071201 (not e!873625))))

(declare-fun res!1071200 () Bool)

(assert (=> b!1567207 (=> (not res!1071200) (not e!873625))))

(assert (=> b!1567207 (= res!1071200 (validKeyInArray!0 (select (arr!50508 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1567208 () Bool)

(declare-fun e!873626 () Bool)

(declare-fun call!71927 () Bool)

(assert (=> b!1567208 (= e!873626 call!71927)))

(declare-fun d!163481 () Bool)

(declare-fun res!1071202 () Bool)

(assert (=> d!163481 (=> res!1071202 e!873627)))

(assert (=> d!163481 (= res!1071202 (bvsge #b00000000000000000000000000000000 (size!51059 _keys!637)))))

(assert (=> d!163481 (= (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36815) e!873627)))

(declare-fun b!1567209 () Bool)

(declare-fun contains!10382 (List!36818 (_ BitVec 64)) Bool)

(assert (=> b!1567209 (= e!873625 (contains!10382 Nil!36815 (select (arr!50508 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1567210 () Bool)

(assert (=> b!1567210 (= e!873628 e!873626)))

(declare-fun c!144419 () Bool)

(assert (=> b!1567210 (= c!144419 (validKeyInArray!0 (select (arr!50508 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1567211 () Bool)

(assert (=> b!1567211 (= e!873626 call!71927)))

(declare-fun bm!71924 () Bool)

(assert (=> bm!71924 (= call!71927 (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!144419 (Cons!36814 (select (arr!50508 _keys!637) #b00000000000000000000000000000000) Nil!36815) Nil!36815)))))

(assert (= (and d!163481 (not res!1071202)) b!1567207))

(assert (= (and b!1567207 res!1071200) b!1567209))

(assert (= (and b!1567207 res!1071201) b!1567210))

(assert (= (and b!1567210 c!144419) b!1567208))

(assert (= (and b!1567210 (not c!144419)) b!1567211))

(assert (= (or b!1567208 b!1567211) bm!71924))

(assert (=> b!1567207 m!1442145))

(assert (=> b!1567207 m!1442145))

(assert (=> b!1567207 m!1442155))

(assert (=> b!1567209 m!1442145))

(assert (=> b!1567209 m!1442145))

(declare-fun m!1442157 () Bool)

(assert (=> b!1567209 m!1442157))

(assert (=> b!1567210 m!1442145))

(assert (=> b!1567210 m!1442145))

(assert (=> b!1567210 m!1442155))

(assert (=> bm!71924 m!1442145))

(declare-fun m!1442159 () Bool)

(assert (=> bm!71924 m!1442159))

(assert (=> b!1567091 d!163481))

(declare-fun d!163483 () Bool)

(assert (=> d!163483 (= (validKeyInArray!0 (select (arr!50508 _keys!637) from!782)) (and (not (= (select (arr!50508 _keys!637) from!782) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50508 _keys!637) from!782) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1567101 d!163483))

(declare-fun condMapEmpty!59901 () Bool)

(declare-fun mapDefault!59901 () ValueCell!18468)

(assert (=> mapNonEmpty!59895 (= condMapEmpty!59901 (= mapRest!59895 ((as const (Array (_ BitVec 32) ValueCell!18468)) mapDefault!59901)))))

(declare-fun e!873634 () Bool)

(declare-fun mapRes!59901 () Bool)

(assert (=> mapNonEmpty!59895 (= tp!113970 (and e!873634 mapRes!59901))))

(declare-fun mapIsEmpty!59901 () Bool)

(assert (=> mapIsEmpty!59901 mapRes!59901))

(declare-fun mapNonEmpty!59901 () Bool)

(declare-fun tp!113980 () Bool)

(declare-fun e!873633 () Bool)

(assert (=> mapNonEmpty!59901 (= mapRes!59901 (and tp!113980 e!873633))))

(declare-fun mapRest!59901 () (Array (_ BitVec 32) ValueCell!18468))

(declare-fun mapValue!59901 () ValueCell!18468)

(declare-fun mapKey!59901 () (_ BitVec 32))

(assert (=> mapNonEmpty!59901 (= mapRest!59895 (store mapRest!59901 mapKey!59901 mapValue!59901))))

(declare-fun b!1567218 () Bool)

(assert (=> b!1567218 (= e!873633 tp_is_empty!38997)))

(declare-fun b!1567219 () Bool)

(assert (=> b!1567219 (= e!873634 tp_is_empty!38997)))

(assert (= (and mapNonEmpty!59895 condMapEmpty!59901) mapIsEmpty!59901))

(assert (= (and mapNonEmpty!59895 (not condMapEmpty!59901)) mapNonEmpty!59901))

(assert (= (and mapNonEmpty!59901 ((_ is ValueCellFull!18468) mapValue!59901)) b!1567218))

(assert (= (and mapNonEmpty!59895 ((_ is ValueCellFull!18468) mapDefault!59901)) b!1567219))

(declare-fun m!1442161 () Bool)

(assert (=> mapNonEmpty!59901 m!1442161))

(declare-fun b_lambda!25045 () Bool)

(assert (= b_lambda!25041 (or (and start!134122 b_free!32217) b_lambda!25045)))

(declare-fun b_lambda!25047 () Bool)

(assert (= b_lambda!25043 (or (and start!134122 b_free!32217) b_lambda!25047)))

(check-sat (not b!1567173) (not b!1567169) (not b!1567178) tp_is_empty!38997 (not b!1567143) (not b!1567194) (not d!163477) (not b_lambda!25047) (not d!163475) (not b!1567172) (not b!1567141) b_and!51877 (not bm!71924) (not b!1567196) (not b!1567182) (not bm!71921) (not b!1567184) (not b_lambda!25045) (not b!1567176) (not b_next!32217) (not mapNonEmpty!59901) (not b!1567210) (not d!163473) (not b!1567174) (not bm!71918) (not b!1567175) (not b!1567170) (not b!1567207) (not b!1567209))
(check-sat b_and!51877 (not b_next!32217))
