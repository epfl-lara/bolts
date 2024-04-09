; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106180 () Bool)

(assert start!106180)

(declare-fun b_free!27519 () Bool)

(declare-fun b_next!27519 () Bool)

(assert (=> start!106180 (= b_free!27519 (not b_next!27519))))

(declare-fun tp!96116 () Bool)

(declare-fun b_and!45537 () Bool)

(assert (=> start!106180 (= tp!96116 b_and!45537)))

(declare-fun mapNonEmpty!50461 () Bool)

(declare-fun mapRes!50461 () Bool)

(declare-fun tp!96117 () Bool)

(declare-fun e!719546 () Bool)

(assert (=> mapNonEmpty!50461 (= mapRes!50461 (and tp!96117 e!719546))))

(declare-datatypes ((V!48593 0))(
  ( (V!48594 (val!16273 Int)) )
))
(declare-datatypes ((ValueCell!15447 0))(
  ( (ValueCellFull!15447 (v!18985 V!48593)) (EmptyCell!15447) )
))
(declare-datatypes ((array!82451 0))(
  ( (array!82452 (arr!39765 (Array (_ BitVec 32) ValueCell!15447)) (size!40302 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82451)

(declare-fun mapRest!50461 () (Array (_ BitVec 32) ValueCell!15447))

(declare-fun mapKey!50461 () (_ BitVec 32))

(declare-fun mapValue!50461 () ValueCell!15447)

(assert (=> mapNonEmpty!50461 (= (arr!39765 _values!914) (store mapRest!50461 mapKey!50461 mapValue!50461))))

(declare-fun b!1263715 () Bool)

(declare-fun res!841769 () Bool)

(declare-fun e!719543 () Bool)

(assert (=> b!1263715 (=> (not res!841769) (not e!719543))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82453 0))(
  ( (array!82454 (arr!39766 (Array (_ BitVec 32) (_ BitVec 64))) (size!40303 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82453)

(assert (=> b!1263715 (= res!841769 (and (= (size!40302 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40303 _keys!1118) (size!40302 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!21214 0))(
  ( (tuple2!21215 (_1!10617 (_ BitVec 64)) (_2!10617 V!48593)) )
))
(declare-datatypes ((List!28432 0))(
  ( (Nil!28429) (Cons!28428 (h!29637 tuple2!21214) (t!41956 List!28432)) )
))
(declare-datatypes ((ListLongMap!19099 0))(
  ( (ListLongMap!19100 (toList!9565 List!28432)) )
))
(declare-fun lt!573189 () ListLongMap!19099)

(declare-fun minValueAfter!43 () V!48593)

(declare-fun zeroValue!871 () V!48593)

(declare-fun b!1263716 () Bool)

(declare-fun e!719545 () Bool)

(declare-fun getCurrentListMap!4668 (array!82453 array!82451 (_ BitVec 32) (_ BitVec 32) V!48593 V!48593 (_ BitVec 32) Int) ListLongMap!19099)

(declare-fun +!4230 (ListLongMap!19099 tuple2!21214) ListLongMap!19099)

(assert (=> b!1263716 (= e!719545 (= (getCurrentListMap!4668 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) (+!4230 lt!573189 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(declare-fun b!1263717 () Bool)

(declare-fun tp_is_empty!32421 () Bool)

(assert (=> b!1263717 (= e!719546 tp_is_empty!32421)))

(declare-fun b!1263718 () Bool)

(assert (=> b!1263718 (= e!719543 (not e!719545))))

(declare-fun res!841767 () Bool)

(assert (=> b!1263718 (=> res!841767 e!719545)))

(assert (=> b!1263718 (= res!841767 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!719541 () Bool)

(assert (=> b!1263718 e!719541))

(declare-fun res!841768 () Bool)

(assert (=> b!1263718 (=> (not res!841768) (not e!719541))))

(declare-fun lt!573188 () ListLongMap!19099)

(assert (=> b!1263718 (= res!841768 (= lt!573188 lt!573189))))

(declare-fun minValueBefore!43 () V!48593)

(declare-datatypes ((Unit!42072 0))(
  ( (Unit!42073) )
))
(declare-fun lt!573187 () Unit!42072)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1200 (array!82453 array!82451 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48593 V!48593 V!48593 V!48593 (_ BitVec 32) Int) Unit!42072)

(assert (=> b!1263718 (= lt!573187 (lemmaNoChangeToArrayThenSameMapNoExtras!1200 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5904 (array!82453 array!82451 (_ BitVec 32) (_ BitVec 32) V!48593 V!48593 (_ BitVec 32) Int) ListLongMap!19099)

(assert (=> b!1263718 (= lt!573189 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1263718 (= lt!573188 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263719 () Bool)

(declare-fun e!719539 () Bool)

(declare-fun e!719542 () Bool)

(assert (=> b!1263719 (= e!719539 (and e!719542 mapRes!50461))))

(declare-fun condMapEmpty!50461 () Bool)

(declare-fun mapDefault!50461 () ValueCell!15447)

(assert (=> b!1263719 (= condMapEmpty!50461 (= (arr!39765 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15447)) mapDefault!50461)))))

(declare-fun b!1263720 () Bool)

(declare-fun e!719544 () Bool)

(assert (=> b!1263720 (= e!719541 e!719544)))

(declare-fun res!841771 () Bool)

(assert (=> b!1263720 (=> res!841771 e!719544)))

(assert (=> b!1263720 (= res!841771 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263721 () Bool)

(assert (=> b!1263721 (= e!719544 (= (getCurrentListMap!4668 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (+!4230 (+!4230 lt!573188 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1263722 () Bool)

(declare-fun res!841770 () Bool)

(assert (=> b!1263722 (=> (not res!841770) (not e!719543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82453 (_ BitVec 32)) Bool)

(assert (=> b!1263722 (= res!841770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!50461 () Bool)

(assert (=> mapIsEmpty!50461 mapRes!50461))

(declare-fun res!841772 () Bool)

(assert (=> start!106180 (=> (not res!841772) (not e!719543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106180 (= res!841772 (validMask!0 mask!1466))))

(assert (=> start!106180 e!719543))

(assert (=> start!106180 true))

(assert (=> start!106180 tp!96116))

(assert (=> start!106180 tp_is_empty!32421))

(declare-fun array_inv!30223 (array!82453) Bool)

(assert (=> start!106180 (array_inv!30223 _keys!1118)))

(declare-fun array_inv!30224 (array!82451) Bool)

(assert (=> start!106180 (and (array_inv!30224 _values!914) e!719539)))

(declare-fun b!1263723 () Bool)

(declare-fun res!841773 () Bool)

(assert (=> b!1263723 (=> (not res!841773) (not e!719543))))

(declare-datatypes ((List!28433 0))(
  ( (Nil!28430) (Cons!28429 (h!29638 (_ BitVec 64)) (t!41957 List!28433)) )
))
(declare-fun arrayNoDuplicates!0 (array!82453 (_ BitVec 32) List!28433) Bool)

(assert (=> b!1263723 (= res!841773 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28430))))

(declare-fun b!1263724 () Bool)

(assert (=> b!1263724 (= e!719542 tp_is_empty!32421)))

(assert (= (and start!106180 res!841772) b!1263715))

(assert (= (and b!1263715 res!841769) b!1263722))

(assert (= (and b!1263722 res!841770) b!1263723))

(assert (= (and b!1263723 res!841773) b!1263718))

(assert (= (and b!1263718 res!841768) b!1263720))

(assert (= (and b!1263720 (not res!841771)) b!1263721))

(assert (= (and b!1263718 (not res!841767)) b!1263716))

(assert (= (and b!1263719 condMapEmpty!50461) mapIsEmpty!50461))

(assert (= (and b!1263719 (not condMapEmpty!50461)) mapNonEmpty!50461))

(get-info :version)

(assert (= (and mapNonEmpty!50461 ((_ is ValueCellFull!15447) mapValue!50461)) b!1263717))

(assert (= (and b!1263719 ((_ is ValueCellFull!15447) mapDefault!50461)) b!1263724))

(assert (= start!106180 b!1263719))

(declare-fun m!1164247 () Bool)

(assert (=> b!1263718 m!1164247))

(declare-fun m!1164249 () Bool)

(assert (=> b!1263718 m!1164249))

(declare-fun m!1164251 () Bool)

(assert (=> b!1263718 m!1164251))

(declare-fun m!1164253 () Bool)

(assert (=> start!106180 m!1164253))

(declare-fun m!1164255 () Bool)

(assert (=> start!106180 m!1164255))

(declare-fun m!1164257 () Bool)

(assert (=> start!106180 m!1164257))

(declare-fun m!1164259 () Bool)

(assert (=> mapNonEmpty!50461 m!1164259))

(declare-fun m!1164261 () Bool)

(assert (=> b!1263722 m!1164261))

(declare-fun m!1164263 () Bool)

(assert (=> b!1263723 m!1164263))

(declare-fun m!1164265 () Bool)

(assert (=> b!1263716 m!1164265))

(declare-fun m!1164267 () Bool)

(assert (=> b!1263716 m!1164267))

(declare-fun m!1164269 () Bool)

(assert (=> b!1263721 m!1164269))

(declare-fun m!1164271 () Bool)

(assert (=> b!1263721 m!1164271))

(assert (=> b!1263721 m!1164271))

(declare-fun m!1164273 () Bool)

(assert (=> b!1263721 m!1164273))

(check-sat b_and!45537 (not mapNonEmpty!50461) (not start!106180) (not b!1263716) (not b!1263722) (not b_next!27519) (not b!1263723) (not b!1263718) (not b!1263721) tp_is_empty!32421)
(check-sat b_and!45537 (not b_next!27519))
(get-model)

(declare-fun bm!62265 () Bool)

(declare-fun call!62269 () ListLongMap!19099)

(declare-fun call!62272 () ListLongMap!19099)

(assert (=> bm!62265 (= call!62269 call!62272)))

(declare-fun bm!62266 () Bool)

(declare-fun call!62267 () Bool)

(declare-fun lt!573248 () ListLongMap!19099)

(declare-fun contains!7627 (ListLongMap!19099 (_ BitVec 64)) Bool)

(assert (=> bm!62266 (= call!62267 (contains!7627 lt!573248 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!719599 () Bool)

(declare-fun b!1263797 () Bool)

(declare-fun apply!1038 (ListLongMap!19099 (_ BitVec 64)) V!48593)

(declare-fun get!20334 (ValueCell!15447 V!48593) V!48593)

(declare-fun dynLambda!3483 (Int (_ BitVec 64)) V!48593)

(assert (=> b!1263797 (= e!719599 (= (apply!1038 lt!573248 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)) (get!20334 (select (arr!39765 _values!914) #b00000000000000000000000000000000) (dynLambda!3483 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1263797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40302 _values!914)))))

(assert (=> b!1263797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun b!1263798 () Bool)

(declare-fun e!719597 () ListLongMap!19099)

(declare-fun call!62268 () ListLongMap!19099)

(assert (=> b!1263798 (= e!719597 call!62268)))

(declare-fun b!1263799 () Bool)

(declare-fun e!719609 () Bool)

(assert (=> b!1263799 (= e!719609 (= (apply!1038 lt!573248 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun b!1263800 () Bool)

(declare-fun e!719600 () ListLongMap!19099)

(assert (=> b!1263800 (= e!719600 call!62268)))

(declare-fun b!1263801 () Bool)

(declare-fun res!841815 () Bool)

(declare-fun e!719602 () Bool)

(assert (=> b!1263801 (=> (not res!841815) (not e!719602))))

(declare-fun e!719605 () Bool)

(assert (=> b!1263801 (= res!841815 e!719605)))

(declare-fun res!841813 () Bool)

(assert (=> b!1263801 (=> res!841813 e!719605)))

(declare-fun e!719598 () Bool)

(assert (=> b!1263801 (= res!841813 (not e!719598))))

(declare-fun res!841816 () Bool)

(assert (=> b!1263801 (=> (not res!841816) (not e!719598))))

(assert (=> b!1263801 (= res!841816 (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun b!1263802 () Bool)

(declare-fun c!122999 () Bool)

(assert (=> b!1263802 (= c!122999 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1263802 (= e!719597 e!719600)))

(declare-fun bm!62267 () Bool)

(declare-fun call!62273 () ListLongMap!19099)

(assert (=> bm!62267 (= call!62268 call!62273)))

(declare-fun b!1263803 () Bool)

(declare-fun e!719606 () Bool)

(declare-fun call!62270 () Bool)

(assert (=> b!1263803 (= e!719606 (not call!62270))))

(declare-fun bm!62264 () Bool)

(declare-fun call!62271 () ListLongMap!19099)

(assert (=> bm!62264 (= call!62271 call!62269)))

(declare-fun d!138585 () Bool)

(assert (=> d!138585 e!719602))

(declare-fun res!841814 () Bool)

(assert (=> d!138585 (=> (not res!841814) (not e!719602))))

(assert (=> d!138585 (= res!841814 (or (bvsge #b00000000000000000000000000000000 (size!40303 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))))

(declare-fun lt!573255 () ListLongMap!19099)

(assert (=> d!138585 (= lt!573248 lt!573255)))

(declare-fun lt!573249 () Unit!42072)

(declare-fun e!719603 () Unit!42072)

(assert (=> d!138585 (= lt!573249 e!719603)))

(declare-fun c!122998 () Bool)

(declare-fun e!719608 () Bool)

(assert (=> d!138585 (= c!122998 e!719608)))

(declare-fun res!841820 () Bool)

(assert (=> d!138585 (=> (not res!841820) (not e!719608))))

(assert (=> d!138585 (= res!841820 (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun e!719601 () ListLongMap!19099)

(assert (=> d!138585 (= lt!573255 e!719601)))

(declare-fun c!123000 () Bool)

(assert (=> d!138585 (= c!123000 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138585 (validMask!0 mask!1466)))

(assert (=> d!138585 (= (getCurrentListMap!4668 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573248)))

(declare-fun b!1263804 () Bool)

(assert (=> b!1263804 (= e!719601 e!719597)))

(declare-fun c!123001 () Bool)

(assert (=> b!1263804 (= c!123001 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263805 () Bool)

(declare-fun lt!573263 () Unit!42072)

(assert (=> b!1263805 (= e!719603 lt!573263)))

(declare-fun lt!573254 () ListLongMap!19099)

(assert (=> b!1263805 (= lt!573254 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573253 () (_ BitVec 64))

(assert (=> b!1263805 (= lt!573253 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573258 () (_ BitVec 64))

(assert (=> b!1263805 (= lt!573258 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573245 () Unit!42072)

(declare-fun addStillContains!1109 (ListLongMap!19099 (_ BitVec 64) V!48593 (_ BitVec 64)) Unit!42072)

(assert (=> b!1263805 (= lt!573245 (addStillContains!1109 lt!573254 lt!573253 zeroValue!871 lt!573258))))

(assert (=> b!1263805 (contains!7627 (+!4230 lt!573254 (tuple2!21215 lt!573253 zeroValue!871)) lt!573258)))

(declare-fun lt!573264 () Unit!42072)

(assert (=> b!1263805 (= lt!573264 lt!573245)))

(declare-fun lt!573251 () ListLongMap!19099)

(assert (=> b!1263805 (= lt!573251 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573243 () (_ BitVec 64))

(assert (=> b!1263805 (= lt!573243 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573259 () (_ BitVec 64))

(assert (=> b!1263805 (= lt!573259 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573252 () Unit!42072)

(declare-fun addApplyDifferent!543 (ListLongMap!19099 (_ BitVec 64) V!48593 (_ BitVec 64)) Unit!42072)

(assert (=> b!1263805 (= lt!573252 (addApplyDifferent!543 lt!573251 lt!573243 minValueBefore!43 lt!573259))))

(assert (=> b!1263805 (= (apply!1038 (+!4230 lt!573251 (tuple2!21215 lt!573243 minValueBefore!43)) lt!573259) (apply!1038 lt!573251 lt!573259))))

(declare-fun lt!573250 () Unit!42072)

(assert (=> b!1263805 (= lt!573250 lt!573252)))

(declare-fun lt!573262 () ListLongMap!19099)

(assert (=> b!1263805 (= lt!573262 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573260 () (_ BitVec 64))

(assert (=> b!1263805 (= lt!573260 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573247 () (_ BitVec 64))

(assert (=> b!1263805 (= lt!573247 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573256 () Unit!42072)

(assert (=> b!1263805 (= lt!573256 (addApplyDifferent!543 lt!573262 lt!573260 zeroValue!871 lt!573247))))

(assert (=> b!1263805 (= (apply!1038 (+!4230 lt!573262 (tuple2!21215 lt!573260 zeroValue!871)) lt!573247) (apply!1038 lt!573262 lt!573247))))

(declare-fun lt!573257 () Unit!42072)

(assert (=> b!1263805 (= lt!573257 lt!573256)))

(declare-fun lt!573244 () ListLongMap!19099)

(assert (=> b!1263805 (= lt!573244 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573246 () (_ BitVec 64))

(assert (=> b!1263805 (= lt!573246 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573261 () (_ BitVec 64))

(assert (=> b!1263805 (= lt!573261 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263805 (= lt!573263 (addApplyDifferent!543 lt!573244 lt!573246 minValueBefore!43 lt!573261))))

(assert (=> b!1263805 (= (apply!1038 (+!4230 lt!573244 (tuple2!21215 lt!573246 minValueBefore!43)) lt!573261) (apply!1038 lt!573244 lt!573261))))

(declare-fun b!1263806 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1263806 (= e!719608 (validKeyInArray!0 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263807 () Bool)

(declare-fun res!841818 () Bool)

(assert (=> b!1263807 (=> (not res!841818) (not e!719602))))

(declare-fun e!719604 () Bool)

(assert (=> b!1263807 (= res!841818 e!719604)))

(declare-fun c!122997 () Bool)

(assert (=> b!1263807 (= c!122997 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1263808 () Bool)

(assert (=> b!1263808 (= e!719604 (not call!62267))))

(declare-fun bm!62268 () Bool)

(assert (=> bm!62268 (= call!62273 (+!4230 (ite c!123000 call!62272 (ite c!123001 call!62269 call!62271)) (ite (or c!123000 c!123001) (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1263809 () Bool)

(assert (=> b!1263809 (= e!719605 e!719599)))

(declare-fun res!841821 () Bool)

(assert (=> b!1263809 (=> (not res!841821) (not e!719599))))

(assert (=> b!1263809 (= res!841821 (contains!7627 lt!573248 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263809 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun b!1263810 () Bool)

(assert (=> b!1263810 (= e!719600 call!62271)))

(declare-fun b!1263811 () Bool)

(assert (=> b!1263811 (= e!719601 (+!4230 call!62273 (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun b!1263812 () Bool)

(declare-fun e!719607 () Bool)

(assert (=> b!1263812 (= e!719604 e!719607)))

(declare-fun res!841817 () Bool)

(assert (=> b!1263812 (= res!841817 call!62267)))

(assert (=> b!1263812 (=> (not res!841817) (not e!719607))))

(declare-fun b!1263813 () Bool)

(assert (=> b!1263813 (= e!719602 e!719606)))

(declare-fun c!123002 () Bool)

(assert (=> b!1263813 (= c!123002 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263814 () Bool)

(assert (=> b!1263814 (= e!719606 e!719609)))

(declare-fun res!841819 () Bool)

(assert (=> b!1263814 (= res!841819 call!62270)))

(assert (=> b!1263814 (=> (not res!841819) (not e!719609))))

(declare-fun b!1263815 () Bool)

(declare-fun Unit!42076 () Unit!42072)

(assert (=> b!1263815 (= e!719603 Unit!42076)))

(declare-fun bm!62269 () Bool)

(assert (=> bm!62269 (= call!62270 (contains!7627 lt!573248 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62270 () Bool)

(assert (=> bm!62270 (= call!62272 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263816 () Bool)

(assert (=> b!1263816 (= e!719598 (validKeyInArray!0 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263817 () Bool)

(assert (=> b!1263817 (= e!719607 (= (apply!1038 lt!573248 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(assert (= (and d!138585 c!123000) b!1263811))

(assert (= (and d!138585 (not c!123000)) b!1263804))

(assert (= (and b!1263804 c!123001) b!1263798))

(assert (= (and b!1263804 (not c!123001)) b!1263802))

(assert (= (and b!1263802 c!122999) b!1263800))

(assert (= (and b!1263802 (not c!122999)) b!1263810))

(assert (= (or b!1263800 b!1263810) bm!62264))

(assert (= (or b!1263798 bm!62264) bm!62265))

(assert (= (or b!1263798 b!1263800) bm!62267))

(assert (= (or b!1263811 bm!62265) bm!62270))

(assert (= (or b!1263811 bm!62267) bm!62268))

(assert (= (and d!138585 res!841820) b!1263806))

(assert (= (and d!138585 c!122998) b!1263805))

(assert (= (and d!138585 (not c!122998)) b!1263815))

(assert (= (and d!138585 res!841814) b!1263801))

(assert (= (and b!1263801 res!841816) b!1263816))

(assert (= (and b!1263801 (not res!841813)) b!1263809))

(assert (= (and b!1263809 res!841821) b!1263797))

(assert (= (and b!1263801 res!841815) b!1263807))

(assert (= (and b!1263807 c!122997) b!1263812))

(assert (= (and b!1263807 (not c!122997)) b!1263808))

(assert (= (and b!1263812 res!841817) b!1263817))

(assert (= (or b!1263812 b!1263808) bm!62266))

(assert (= (and b!1263807 res!841818) b!1263813))

(assert (= (and b!1263813 c!123002) b!1263814))

(assert (= (and b!1263813 (not c!123002)) b!1263803))

(assert (= (and b!1263814 res!841819) b!1263799))

(assert (= (or b!1263814 b!1263803) bm!62269))

(declare-fun b_lambda!23001 () Bool)

(assert (=> (not b_lambda!23001) (not b!1263797)))

(declare-fun t!41961 () Bool)

(declare-fun tb!11341 () Bool)

(assert (=> (and start!106180 (= defaultEntry!922 defaultEntry!922) t!41961) tb!11341))

(declare-fun result!23415 () Bool)

(assert (=> tb!11341 (= result!23415 tp_is_empty!32421)))

(assert (=> b!1263797 t!41961))

(declare-fun b_and!45541 () Bool)

(assert (= b_and!45537 (and (=> t!41961 result!23415) b_and!45541)))

(declare-fun m!1164303 () Bool)

(assert (=> bm!62266 m!1164303))

(declare-fun m!1164305 () Bool)

(assert (=> b!1263817 m!1164305))

(declare-fun m!1164307 () Bool)

(assert (=> b!1263809 m!1164307))

(assert (=> b!1263809 m!1164307))

(declare-fun m!1164309 () Bool)

(assert (=> b!1263809 m!1164309))

(declare-fun m!1164311 () Bool)

(assert (=> bm!62269 m!1164311))

(declare-fun m!1164313 () Bool)

(assert (=> bm!62268 m!1164313))

(assert (=> b!1263816 m!1164307))

(assert (=> b!1263816 m!1164307))

(declare-fun m!1164315 () Bool)

(assert (=> b!1263816 m!1164315))

(declare-fun m!1164317 () Bool)

(assert (=> b!1263805 m!1164317))

(declare-fun m!1164319 () Bool)

(assert (=> b!1263805 m!1164319))

(assert (=> b!1263805 m!1164307))

(declare-fun m!1164321 () Bool)

(assert (=> b!1263805 m!1164321))

(declare-fun m!1164323 () Bool)

(assert (=> b!1263805 m!1164323))

(declare-fun m!1164325 () Bool)

(assert (=> b!1263805 m!1164325))

(declare-fun m!1164327 () Bool)

(assert (=> b!1263805 m!1164327))

(declare-fun m!1164329 () Bool)

(assert (=> b!1263805 m!1164329))

(assert (=> b!1263805 m!1164325))

(declare-fun m!1164331 () Bool)

(assert (=> b!1263805 m!1164331))

(assert (=> b!1263805 m!1164251))

(declare-fun m!1164333 () Bool)

(assert (=> b!1263805 m!1164333))

(assert (=> b!1263805 m!1164321))

(assert (=> b!1263805 m!1164333))

(declare-fun m!1164335 () Bool)

(assert (=> b!1263805 m!1164335))

(declare-fun m!1164337 () Bool)

(assert (=> b!1263805 m!1164337))

(declare-fun m!1164339 () Bool)

(assert (=> b!1263805 m!1164339))

(declare-fun m!1164341 () Bool)

(assert (=> b!1263805 m!1164341))

(declare-fun m!1164343 () Bool)

(assert (=> b!1263805 m!1164343))

(assert (=> b!1263805 m!1164331))

(declare-fun m!1164345 () Bool)

(assert (=> b!1263805 m!1164345))

(assert (=> d!138585 m!1164253))

(assert (=> b!1263797 m!1164307))

(declare-fun m!1164347 () Bool)

(assert (=> b!1263797 m!1164347))

(assert (=> b!1263797 m!1164307))

(declare-fun m!1164349 () Bool)

(assert (=> b!1263797 m!1164349))

(declare-fun m!1164351 () Bool)

(assert (=> b!1263797 m!1164351))

(declare-fun m!1164353 () Bool)

(assert (=> b!1263797 m!1164353))

(assert (=> b!1263797 m!1164351))

(assert (=> b!1263797 m!1164349))

(declare-fun m!1164355 () Bool)

(assert (=> b!1263799 m!1164355))

(assert (=> b!1263806 m!1164307))

(assert (=> b!1263806 m!1164307))

(assert (=> b!1263806 m!1164315))

(declare-fun m!1164357 () Bool)

(assert (=> b!1263811 m!1164357))

(assert (=> bm!62270 m!1164251))

(assert (=> b!1263721 d!138585))

(declare-fun d!138587 () Bool)

(declare-fun e!719612 () Bool)

(assert (=> d!138587 e!719612))

(declare-fun res!841827 () Bool)

(assert (=> d!138587 (=> (not res!841827) (not e!719612))))

(declare-fun lt!573275 () ListLongMap!19099)

(assert (=> d!138587 (= res!841827 (contains!7627 lt!573275 (_1!10617 (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!573276 () List!28432)

(assert (=> d!138587 (= lt!573275 (ListLongMap!19100 lt!573276))))

(declare-fun lt!573273 () Unit!42072)

(declare-fun lt!573274 () Unit!42072)

(assert (=> d!138587 (= lt!573273 lt!573274)))

(declare-datatypes ((Option!722 0))(
  ( (Some!721 (v!18987 V!48593)) (None!720) )
))
(declare-fun getValueByKey!671 (List!28432 (_ BitVec 64)) Option!722)

(assert (=> d!138587 (= (getValueByKey!671 lt!573276 (_1!10617 (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!721 (_2!10617 (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lemmaContainsTupThenGetReturnValue!338 (List!28432 (_ BitVec 64) V!48593) Unit!42072)

(assert (=> d!138587 (= lt!573274 (lemmaContainsTupThenGetReturnValue!338 lt!573276 (_1!10617 (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10617 (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun insertStrictlySorted!451 (List!28432 (_ BitVec 64) V!48593) List!28432)

(assert (=> d!138587 (= lt!573276 (insertStrictlySorted!451 (toList!9565 (+!4230 lt!573188 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))) (_1!10617 (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10617 (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138587 (= (+!4230 (+!4230 lt!573188 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) lt!573275)))

(declare-fun b!1263824 () Bool)

(declare-fun res!841826 () Bool)

(assert (=> b!1263824 (=> (not res!841826) (not e!719612))))

(assert (=> b!1263824 (= res!841826 (= (getValueByKey!671 (toList!9565 lt!573275) (_1!10617 (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!721 (_2!10617 (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))))

(declare-fun b!1263825 () Bool)

(declare-fun contains!7628 (List!28432 tuple2!21214) Bool)

(assert (=> b!1263825 (= e!719612 (contains!7628 (toList!9565 lt!573275) (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (= (and d!138587 res!841827) b!1263824))

(assert (= (and b!1263824 res!841826) b!1263825))

(declare-fun m!1164359 () Bool)

(assert (=> d!138587 m!1164359))

(declare-fun m!1164361 () Bool)

(assert (=> d!138587 m!1164361))

(declare-fun m!1164363 () Bool)

(assert (=> d!138587 m!1164363))

(declare-fun m!1164365 () Bool)

(assert (=> d!138587 m!1164365))

(declare-fun m!1164367 () Bool)

(assert (=> b!1263824 m!1164367))

(declare-fun m!1164369 () Bool)

(assert (=> b!1263825 m!1164369))

(assert (=> b!1263721 d!138587))

(declare-fun d!138589 () Bool)

(declare-fun e!719613 () Bool)

(assert (=> d!138589 e!719613))

(declare-fun res!841829 () Bool)

(assert (=> d!138589 (=> (not res!841829) (not e!719613))))

(declare-fun lt!573279 () ListLongMap!19099)

(assert (=> d!138589 (= res!841829 (contains!7627 lt!573279 (_1!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(declare-fun lt!573280 () List!28432)

(assert (=> d!138589 (= lt!573279 (ListLongMap!19100 lt!573280))))

(declare-fun lt!573277 () Unit!42072)

(declare-fun lt!573278 () Unit!42072)

(assert (=> d!138589 (= lt!573277 lt!573278)))

(assert (=> d!138589 (= (getValueByKey!671 lt!573280 (_1!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))) (Some!721 (_2!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(assert (=> d!138589 (= lt!573278 (lemmaContainsTupThenGetReturnValue!338 lt!573280 (_1!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (_2!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(assert (=> d!138589 (= lt!573280 (insertStrictlySorted!451 (toList!9565 lt!573188) (_1!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (_2!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(assert (=> d!138589 (= (+!4230 lt!573188 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) lt!573279)))

(declare-fun b!1263826 () Bool)

(declare-fun res!841828 () Bool)

(assert (=> b!1263826 (=> (not res!841828) (not e!719613))))

(assert (=> b!1263826 (= res!841828 (= (getValueByKey!671 (toList!9565 lt!573279) (_1!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))) (Some!721 (_2!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)))))))

(declare-fun b!1263827 () Bool)

(assert (=> b!1263827 (= e!719613 (contains!7628 (toList!9565 lt!573279) (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)))))

(assert (= (and d!138589 res!841829) b!1263826))

(assert (= (and b!1263826 res!841828) b!1263827))

(declare-fun m!1164371 () Bool)

(assert (=> d!138589 m!1164371))

(declare-fun m!1164373 () Bool)

(assert (=> d!138589 m!1164373))

(declare-fun m!1164375 () Bool)

(assert (=> d!138589 m!1164375))

(declare-fun m!1164377 () Bool)

(assert (=> d!138589 m!1164377))

(declare-fun m!1164379 () Bool)

(assert (=> b!1263826 m!1164379))

(declare-fun m!1164381 () Bool)

(assert (=> b!1263827 m!1164381))

(assert (=> b!1263721 d!138589))

(declare-fun bm!62272 () Bool)

(declare-fun call!62276 () ListLongMap!19099)

(declare-fun call!62279 () ListLongMap!19099)

(assert (=> bm!62272 (= call!62276 call!62279)))

(declare-fun bm!62273 () Bool)

(declare-fun call!62274 () Bool)

(declare-fun lt!573286 () ListLongMap!19099)

(assert (=> bm!62273 (= call!62274 (contains!7627 lt!573286 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1263828 () Bool)

(declare-fun e!719616 () Bool)

(assert (=> b!1263828 (= e!719616 (= (apply!1038 lt!573286 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)) (get!20334 (select (arr!39765 _values!914) #b00000000000000000000000000000000) (dynLambda!3483 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1263828 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40302 _values!914)))))

(assert (=> b!1263828 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun b!1263829 () Bool)

(declare-fun e!719614 () ListLongMap!19099)

(declare-fun call!62275 () ListLongMap!19099)

(assert (=> b!1263829 (= e!719614 call!62275)))

(declare-fun b!1263830 () Bool)

(declare-fun e!719626 () Bool)

(assert (=> b!1263830 (= e!719626 (= (apply!1038 lt!573286 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!43))))

(declare-fun b!1263831 () Bool)

(declare-fun e!719617 () ListLongMap!19099)

(assert (=> b!1263831 (= e!719617 call!62275)))

(declare-fun b!1263832 () Bool)

(declare-fun res!841832 () Bool)

(declare-fun e!719619 () Bool)

(assert (=> b!1263832 (=> (not res!841832) (not e!719619))))

(declare-fun e!719622 () Bool)

(assert (=> b!1263832 (= res!841832 e!719622)))

(declare-fun res!841830 () Bool)

(assert (=> b!1263832 (=> res!841830 e!719622)))

(declare-fun e!719615 () Bool)

(assert (=> b!1263832 (= res!841830 (not e!719615))))

(declare-fun res!841833 () Bool)

(assert (=> b!1263832 (=> (not res!841833) (not e!719615))))

(assert (=> b!1263832 (= res!841833 (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun b!1263833 () Bool)

(declare-fun c!123005 () Bool)

(assert (=> b!1263833 (= c!123005 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1263833 (= e!719614 e!719617)))

(declare-fun bm!62274 () Bool)

(declare-fun call!62280 () ListLongMap!19099)

(assert (=> bm!62274 (= call!62275 call!62280)))

(declare-fun b!1263834 () Bool)

(declare-fun e!719623 () Bool)

(declare-fun call!62277 () Bool)

(assert (=> b!1263834 (= e!719623 (not call!62277))))

(declare-fun bm!62271 () Bool)

(declare-fun call!62278 () ListLongMap!19099)

(assert (=> bm!62271 (= call!62278 call!62276)))

(declare-fun d!138591 () Bool)

(assert (=> d!138591 e!719619))

(declare-fun res!841831 () Bool)

(assert (=> d!138591 (=> (not res!841831) (not e!719619))))

(assert (=> d!138591 (= res!841831 (or (bvsge #b00000000000000000000000000000000 (size!40303 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))))

(declare-fun lt!573293 () ListLongMap!19099)

(assert (=> d!138591 (= lt!573286 lt!573293)))

(declare-fun lt!573287 () Unit!42072)

(declare-fun e!719620 () Unit!42072)

(assert (=> d!138591 (= lt!573287 e!719620)))

(declare-fun c!123004 () Bool)

(declare-fun e!719625 () Bool)

(assert (=> d!138591 (= c!123004 e!719625)))

(declare-fun res!841837 () Bool)

(assert (=> d!138591 (=> (not res!841837) (not e!719625))))

(assert (=> d!138591 (= res!841837 (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun e!719618 () ListLongMap!19099)

(assert (=> d!138591 (= lt!573293 e!719618)))

(declare-fun c!123006 () Bool)

(assert (=> d!138591 (= c!123006 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138591 (validMask!0 mask!1466)))

(assert (=> d!138591 (= (getCurrentListMap!4668 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573286)))

(declare-fun b!1263835 () Bool)

(assert (=> b!1263835 (= e!719618 e!719614)))

(declare-fun c!123007 () Bool)

(assert (=> b!1263835 (= c!123007 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263836 () Bool)

(declare-fun lt!573301 () Unit!42072)

(assert (=> b!1263836 (= e!719620 lt!573301)))

(declare-fun lt!573292 () ListLongMap!19099)

(assert (=> b!1263836 (= lt!573292 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573291 () (_ BitVec 64))

(assert (=> b!1263836 (= lt!573291 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573296 () (_ BitVec 64))

(assert (=> b!1263836 (= lt!573296 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573283 () Unit!42072)

(assert (=> b!1263836 (= lt!573283 (addStillContains!1109 lt!573292 lt!573291 zeroValue!871 lt!573296))))

(assert (=> b!1263836 (contains!7627 (+!4230 lt!573292 (tuple2!21215 lt!573291 zeroValue!871)) lt!573296)))

(declare-fun lt!573302 () Unit!42072)

(assert (=> b!1263836 (= lt!573302 lt!573283)))

(declare-fun lt!573289 () ListLongMap!19099)

(assert (=> b!1263836 (= lt!573289 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573281 () (_ BitVec 64))

(assert (=> b!1263836 (= lt!573281 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573297 () (_ BitVec 64))

(assert (=> b!1263836 (= lt!573297 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573290 () Unit!42072)

(assert (=> b!1263836 (= lt!573290 (addApplyDifferent!543 lt!573289 lt!573281 minValueAfter!43 lt!573297))))

(assert (=> b!1263836 (= (apply!1038 (+!4230 lt!573289 (tuple2!21215 lt!573281 minValueAfter!43)) lt!573297) (apply!1038 lt!573289 lt!573297))))

(declare-fun lt!573288 () Unit!42072)

(assert (=> b!1263836 (= lt!573288 lt!573290)))

(declare-fun lt!573300 () ListLongMap!19099)

(assert (=> b!1263836 (= lt!573300 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573298 () (_ BitVec 64))

(assert (=> b!1263836 (= lt!573298 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573285 () (_ BitVec 64))

(assert (=> b!1263836 (= lt!573285 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573294 () Unit!42072)

(assert (=> b!1263836 (= lt!573294 (addApplyDifferent!543 lt!573300 lt!573298 zeroValue!871 lt!573285))))

(assert (=> b!1263836 (= (apply!1038 (+!4230 lt!573300 (tuple2!21215 lt!573298 zeroValue!871)) lt!573285) (apply!1038 lt!573300 lt!573285))))

(declare-fun lt!573295 () Unit!42072)

(assert (=> b!1263836 (= lt!573295 lt!573294)))

(declare-fun lt!573282 () ListLongMap!19099)

(assert (=> b!1263836 (= lt!573282 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573284 () (_ BitVec 64))

(assert (=> b!1263836 (= lt!573284 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573299 () (_ BitVec 64))

(assert (=> b!1263836 (= lt!573299 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263836 (= lt!573301 (addApplyDifferent!543 lt!573282 lt!573284 minValueAfter!43 lt!573299))))

(assert (=> b!1263836 (= (apply!1038 (+!4230 lt!573282 (tuple2!21215 lt!573284 minValueAfter!43)) lt!573299) (apply!1038 lt!573282 lt!573299))))

(declare-fun b!1263837 () Bool)

(assert (=> b!1263837 (= e!719625 (validKeyInArray!0 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263838 () Bool)

(declare-fun res!841835 () Bool)

(assert (=> b!1263838 (=> (not res!841835) (not e!719619))))

(declare-fun e!719621 () Bool)

(assert (=> b!1263838 (= res!841835 e!719621)))

(declare-fun c!123003 () Bool)

(assert (=> b!1263838 (= c!123003 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1263839 () Bool)

(assert (=> b!1263839 (= e!719621 (not call!62274))))

(declare-fun bm!62275 () Bool)

(assert (=> bm!62275 (= call!62280 (+!4230 (ite c!123006 call!62279 (ite c!123007 call!62276 call!62278)) (ite (or c!123006 c!123007) (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43))))))

(declare-fun b!1263840 () Bool)

(assert (=> b!1263840 (= e!719622 e!719616)))

(declare-fun res!841838 () Bool)

(assert (=> b!1263840 (=> (not res!841838) (not e!719616))))

(assert (=> b!1263840 (= res!841838 (contains!7627 lt!573286 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263840 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun b!1263841 () Bool)

(assert (=> b!1263841 (= e!719617 call!62278)))

(declare-fun b!1263842 () Bool)

(assert (=> b!1263842 (= e!719618 (+!4230 call!62280 (tuple2!21215 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43)))))

(declare-fun b!1263843 () Bool)

(declare-fun e!719624 () Bool)

(assert (=> b!1263843 (= e!719621 e!719624)))

(declare-fun res!841834 () Bool)

(assert (=> b!1263843 (= res!841834 call!62274)))

(assert (=> b!1263843 (=> (not res!841834) (not e!719624))))

(declare-fun b!1263844 () Bool)

(assert (=> b!1263844 (= e!719619 e!719623)))

(declare-fun c!123008 () Bool)

(assert (=> b!1263844 (= c!123008 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263845 () Bool)

(assert (=> b!1263845 (= e!719623 e!719626)))

(declare-fun res!841836 () Bool)

(assert (=> b!1263845 (= res!841836 call!62277)))

(assert (=> b!1263845 (=> (not res!841836) (not e!719626))))

(declare-fun b!1263846 () Bool)

(declare-fun Unit!42077 () Unit!42072)

(assert (=> b!1263846 (= e!719620 Unit!42077)))

(declare-fun bm!62276 () Bool)

(assert (=> bm!62276 (= call!62277 (contains!7627 lt!573286 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62277 () Bool)

(assert (=> bm!62277 (= call!62279 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263847 () Bool)

(assert (=> b!1263847 (= e!719615 (validKeyInArray!0 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263848 () Bool)

(assert (=> b!1263848 (= e!719624 (= (apply!1038 lt!573286 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(assert (= (and d!138591 c!123006) b!1263842))

(assert (= (and d!138591 (not c!123006)) b!1263835))

(assert (= (and b!1263835 c!123007) b!1263829))

(assert (= (and b!1263835 (not c!123007)) b!1263833))

(assert (= (and b!1263833 c!123005) b!1263831))

(assert (= (and b!1263833 (not c!123005)) b!1263841))

(assert (= (or b!1263831 b!1263841) bm!62271))

(assert (= (or b!1263829 bm!62271) bm!62272))

(assert (= (or b!1263829 b!1263831) bm!62274))

(assert (= (or b!1263842 bm!62272) bm!62277))

(assert (= (or b!1263842 bm!62274) bm!62275))

(assert (= (and d!138591 res!841837) b!1263837))

(assert (= (and d!138591 c!123004) b!1263836))

(assert (= (and d!138591 (not c!123004)) b!1263846))

(assert (= (and d!138591 res!841831) b!1263832))

(assert (= (and b!1263832 res!841833) b!1263847))

(assert (= (and b!1263832 (not res!841830)) b!1263840))

(assert (= (and b!1263840 res!841838) b!1263828))

(assert (= (and b!1263832 res!841832) b!1263838))

(assert (= (and b!1263838 c!123003) b!1263843))

(assert (= (and b!1263838 (not c!123003)) b!1263839))

(assert (= (and b!1263843 res!841834) b!1263848))

(assert (= (or b!1263843 b!1263839) bm!62273))

(assert (= (and b!1263838 res!841835) b!1263844))

(assert (= (and b!1263844 c!123008) b!1263845))

(assert (= (and b!1263844 (not c!123008)) b!1263834))

(assert (= (and b!1263845 res!841836) b!1263830))

(assert (= (or b!1263845 b!1263834) bm!62276))

(declare-fun b_lambda!23003 () Bool)

(assert (=> (not b_lambda!23003) (not b!1263828)))

(assert (=> b!1263828 t!41961))

(declare-fun b_and!45543 () Bool)

(assert (= b_and!45541 (and (=> t!41961 result!23415) b_and!45543)))

(declare-fun m!1164383 () Bool)

(assert (=> bm!62273 m!1164383))

(declare-fun m!1164385 () Bool)

(assert (=> b!1263848 m!1164385))

(assert (=> b!1263840 m!1164307))

(assert (=> b!1263840 m!1164307))

(declare-fun m!1164387 () Bool)

(assert (=> b!1263840 m!1164387))

(declare-fun m!1164389 () Bool)

(assert (=> bm!62276 m!1164389))

(declare-fun m!1164391 () Bool)

(assert (=> bm!62275 m!1164391))

(assert (=> b!1263847 m!1164307))

(assert (=> b!1263847 m!1164307))

(assert (=> b!1263847 m!1164315))

(declare-fun m!1164393 () Bool)

(assert (=> b!1263836 m!1164393))

(declare-fun m!1164395 () Bool)

(assert (=> b!1263836 m!1164395))

(assert (=> b!1263836 m!1164307))

(declare-fun m!1164397 () Bool)

(assert (=> b!1263836 m!1164397))

(declare-fun m!1164399 () Bool)

(assert (=> b!1263836 m!1164399))

(declare-fun m!1164401 () Bool)

(assert (=> b!1263836 m!1164401))

(declare-fun m!1164403 () Bool)

(assert (=> b!1263836 m!1164403))

(declare-fun m!1164405 () Bool)

(assert (=> b!1263836 m!1164405))

(assert (=> b!1263836 m!1164401))

(declare-fun m!1164407 () Bool)

(assert (=> b!1263836 m!1164407))

(assert (=> b!1263836 m!1164249))

(declare-fun m!1164409 () Bool)

(assert (=> b!1263836 m!1164409))

(assert (=> b!1263836 m!1164397))

(assert (=> b!1263836 m!1164409))

(declare-fun m!1164411 () Bool)

(assert (=> b!1263836 m!1164411))

(declare-fun m!1164413 () Bool)

(assert (=> b!1263836 m!1164413))

(declare-fun m!1164415 () Bool)

(assert (=> b!1263836 m!1164415))

(declare-fun m!1164417 () Bool)

(assert (=> b!1263836 m!1164417))

(declare-fun m!1164419 () Bool)

(assert (=> b!1263836 m!1164419))

(assert (=> b!1263836 m!1164407))

(declare-fun m!1164421 () Bool)

(assert (=> b!1263836 m!1164421))

(assert (=> d!138591 m!1164253))

(assert (=> b!1263828 m!1164307))

(declare-fun m!1164423 () Bool)

(assert (=> b!1263828 m!1164423))

(assert (=> b!1263828 m!1164307))

(assert (=> b!1263828 m!1164349))

(assert (=> b!1263828 m!1164351))

(assert (=> b!1263828 m!1164353))

(assert (=> b!1263828 m!1164351))

(assert (=> b!1263828 m!1164349))

(declare-fun m!1164425 () Bool)

(assert (=> b!1263830 m!1164425))

(assert (=> b!1263837 m!1164307))

(assert (=> b!1263837 m!1164307))

(assert (=> b!1263837 m!1164315))

(declare-fun m!1164427 () Bool)

(assert (=> b!1263842 m!1164427))

(assert (=> bm!62277 m!1164249))

(assert (=> b!1263716 d!138591))

(declare-fun d!138593 () Bool)

(declare-fun e!719627 () Bool)

(assert (=> d!138593 e!719627))

(declare-fun res!841840 () Bool)

(assert (=> d!138593 (=> (not res!841840) (not e!719627))))

(declare-fun lt!573305 () ListLongMap!19099)

(assert (=> d!138593 (= res!841840 (contains!7627 lt!573305 (_1!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(declare-fun lt!573306 () List!28432)

(assert (=> d!138593 (= lt!573305 (ListLongMap!19100 lt!573306))))

(declare-fun lt!573303 () Unit!42072)

(declare-fun lt!573304 () Unit!42072)

(assert (=> d!138593 (= lt!573303 lt!573304)))

(assert (=> d!138593 (= (getValueByKey!671 lt!573306 (_1!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))) (Some!721 (_2!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(assert (=> d!138593 (= lt!573304 (lemmaContainsTupThenGetReturnValue!338 lt!573306 (_1!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (_2!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(assert (=> d!138593 (= lt!573306 (insertStrictlySorted!451 (toList!9565 lt!573189) (_1!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (_2!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(assert (=> d!138593 (= (+!4230 lt!573189 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) lt!573305)))

(declare-fun b!1263849 () Bool)

(declare-fun res!841839 () Bool)

(assert (=> b!1263849 (=> (not res!841839) (not e!719627))))

(assert (=> b!1263849 (= res!841839 (= (getValueByKey!671 (toList!9565 lt!573305) (_1!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))) (Some!721 (_2!10617 (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)))))))

(declare-fun b!1263850 () Bool)

(assert (=> b!1263850 (= e!719627 (contains!7628 (toList!9565 lt!573305) (tuple2!21215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)))))

(assert (= (and d!138593 res!841840) b!1263849))

(assert (= (and b!1263849 res!841839) b!1263850))

(declare-fun m!1164429 () Bool)

(assert (=> d!138593 m!1164429))

(declare-fun m!1164431 () Bool)

(assert (=> d!138593 m!1164431))

(declare-fun m!1164433 () Bool)

(assert (=> d!138593 m!1164433))

(declare-fun m!1164435 () Bool)

(assert (=> d!138593 m!1164435))

(declare-fun m!1164437 () Bool)

(assert (=> b!1263849 m!1164437))

(declare-fun m!1164439 () Bool)

(assert (=> b!1263850 m!1164439))

(assert (=> b!1263716 d!138593))

(declare-fun d!138595 () Bool)

(assert (=> d!138595 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!106180 d!138595))

(declare-fun d!138597 () Bool)

(assert (=> d!138597 (= (array_inv!30223 _keys!1118) (bvsge (size!40303 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!106180 d!138597))

(declare-fun d!138599 () Bool)

(assert (=> d!138599 (= (array_inv!30224 _values!914) (bvsge (size!40302 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!106180 d!138599))

(declare-fun d!138601 () Bool)

(assert (=> d!138601 (= (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573309 () Unit!42072)

(declare-fun choose!1887 (array!82453 array!82451 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48593 V!48593 V!48593 V!48593 (_ BitVec 32) Int) Unit!42072)

(assert (=> d!138601 (= lt!573309 (choose!1887 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138601 (validMask!0 mask!1466)))

(assert (=> d!138601 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1200 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573309)))

(declare-fun bs!35747 () Bool)

(assert (= bs!35747 d!138601))

(assert (=> bs!35747 m!1164251))

(assert (=> bs!35747 m!1164249))

(declare-fun m!1164441 () Bool)

(assert (=> bs!35747 m!1164441))

(assert (=> bs!35747 m!1164253))

(assert (=> b!1263718 d!138601))

(declare-fun b!1263875 () Bool)

(declare-fun e!719644 () Bool)

(declare-fun e!719647 () Bool)

(assert (=> b!1263875 (= e!719644 e!719647)))

(declare-fun c!123017 () Bool)

(assert (=> b!1263875 (= c!123017 (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun b!1263876 () Bool)

(assert (=> b!1263876 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(assert (=> b!1263876 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40302 _values!914)))))

(declare-fun e!719642 () Bool)

(declare-fun lt!573325 () ListLongMap!19099)

(assert (=> b!1263876 (= e!719642 (= (apply!1038 lt!573325 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)) (get!20334 (select (arr!39765 _values!914) #b00000000000000000000000000000000) (dynLambda!3483 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!138603 () Bool)

(declare-fun e!719643 () Bool)

(assert (=> d!138603 e!719643))

(declare-fun res!841851 () Bool)

(assert (=> d!138603 (=> (not res!841851) (not e!719643))))

(assert (=> d!138603 (= res!841851 (not (contains!7627 lt!573325 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!719646 () ListLongMap!19099)

(assert (=> d!138603 (= lt!573325 e!719646)))

(declare-fun c!123019 () Bool)

(assert (=> d!138603 (= c!123019 (bvsge #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(assert (=> d!138603 (validMask!0 mask!1466)))

(assert (=> d!138603 (= (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573325)))

(declare-fun b!1263877 () Bool)

(declare-fun lt!573330 () Unit!42072)

(declare-fun lt!573329 () Unit!42072)

(assert (=> b!1263877 (= lt!573330 lt!573329)))

(declare-fun lt!573324 () (_ BitVec 64))

(declare-fun lt!573326 () (_ BitVec 64))

(declare-fun lt!573327 () V!48593)

(declare-fun lt!573328 () ListLongMap!19099)

(assert (=> b!1263877 (not (contains!7627 (+!4230 lt!573328 (tuple2!21215 lt!573326 lt!573327)) lt!573324))))

(declare-fun addStillNotContains!333 (ListLongMap!19099 (_ BitVec 64) V!48593 (_ BitVec 64)) Unit!42072)

(assert (=> b!1263877 (= lt!573329 (addStillNotContains!333 lt!573328 lt!573326 lt!573327 lt!573324))))

(assert (=> b!1263877 (= lt!573324 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1263877 (= lt!573327 (get!20334 (select (arr!39765 _values!914) #b00000000000000000000000000000000) (dynLambda!3483 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1263877 (= lt!573326 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!62283 () ListLongMap!19099)

(assert (=> b!1263877 (= lt!573328 call!62283)))

(declare-fun e!719648 () ListLongMap!19099)

(assert (=> b!1263877 (= e!719648 (+!4230 call!62283 (tuple2!21215 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000) (get!20334 (select (arr!39765 _values!914) #b00000000000000000000000000000000) (dynLambda!3483 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1263878 () Bool)

(declare-fun e!719645 () Bool)

(assert (=> b!1263878 (= e!719645 (validKeyInArray!0 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263878 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1263879 () Bool)

(declare-fun isEmpty!1048 (ListLongMap!19099) Bool)

(assert (=> b!1263879 (= e!719647 (isEmpty!1048 lt!573325))))

(declare-fun bm!62280 () Bool)

(assert (=> bm!62280 (= call!62283 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1263880 () Bool)

(assert (=> b!1263880 (= e!719646 e!719648)))

(declare-fun c!123020 () Bool)

(assert (=> b!1263880 (= c!123020 (validKeyInArray!0 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263881 () Bool)

(assert (=> b!1263881 (= e!719643 e!719644)))

(declare-fun c!123018 () Bool)

(assert (=> b!1263881 (= c!123018 e!719645)))

(declare-fun res!841852 () Bool)

(assert (=> b!1263881 (=> (not res!841852) (not e!719645))))

(assert (=> b!1263881 (= res!841852 (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun b!1263882 () Bool)

(declare-fun res!841850 () Bool)

(assert (=> b!1263882 (=> (not res!841850) (not e!719643))))

(assert (=> b!1263882 (= res!841850 (not (contains!7627 lt!573325 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1263883 () Bool)

(assert (=> b!1263883 (= e!719647 (= lt!573325 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1263884 () Bool)

(assert (=> b!1263884 (= e!719646 (ListLongMap!19100 Nil!28429))))

(declare-fun b!1263885 () Bool)

(assert (=> b!1263885 (= e!719644 e!719642)))

(assert (=> b!1263885 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun res!841849 () Bool)

(assert (=> b!1263885 (= res!841849 (contains!7627 lt!573325 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263885 (=> (not res!841849) (not e!719642))))

(declare-fun b!1263886 () Bool)

(assert (=> b!1263886 (= e!719648 call!62283)))

(assert (= (and d!138603 c!123019) b!1263884))

(assert (= (and d!138603 (not c!123019)) b!1263880))

(assert (= (and b!1263880 c!123020) b!1263877))

(assert (= (and b!1263880 (not c!123020)) b!1263886))

(assert (= (or b!1263877 b!1263886) bm!62280))

(assert (= (and d!138603 res!841851) b!1263882))

(assert (= (and b!1263882 res!841850) b!1263881))

(assert (= (and b!1263881 res!841852) b!1263878))

(assert (= (and b!1263881 c!123018) b!1263885))

(assert (= (and b!1263881 (not c!123018)) b!1263875))

(assert (= (and b!1263885 res!841849) b!1263876))

(assert (= (and b!1263875 c!123017) b!1263883))

(assert (= (and b!1263875 (not c!123017)) b!1263879))

(declare-fun b_lambda!23005 () Bool)

(assert (=> (not b_lambda!23005) (not b!1263876)))

(assert (=> b!1263876 t!41961))

(declare-fun b_and!45545 () Bool)

(assert (= b_and!45543 (and (=> t!41961 result!23415) b_and!45545)))

(declare-fun b_lambda!23007 () Bool)

(assert (=> (not b_lambda!23007) (not b!1263877)))

(assert (=> b!1263877 t!41961))

(declare-fun b_and!45547 () Bool)

(assert (= b_and!45545 (and (=> t!41961 result!23415) b_and!45547)))

(declare-fun m!1164443 () Bool)

(assert (=> b!1263882 m!1164443))

(assert (=> b!1263877 m!1164349))

(assert (=> b!1263877 m!1164349))

(assert (=> b!1263877 m!1164351))

(assert (=> b!1263877 m!1164353))

(declare-fun m!1164445 () Bool)

(assert (=> b!1263877 m!1164445))

(assert (=> b!1263877 m!1164351))

(declare-fun m!1164447 () Bool)

(assert (=> b!1263877 m!1164447))

(declare-fun m!1164449 () Bool)

(assert (=> b!1263877 m!1164449))

(assert (=> b!1263877 m!1164447))

(declare-fun m!1164451 () Bool)

(assert (=> b!1263877 m!1164451))

(assert (=> b!1263877 m!1164307))

(assert (=> b!1263878 m!1164307))

(assert (=> b!1263878 m!1164307))

(assert (=> b!1263878 m!1164315))

(assert (=> b!1263876 m!1164349))

(assert (=> b!1263876 m!1164349))

(assert (=> b!1263876 m!1164351))

(assert (=> b!1263876 m!1164353))

(assert (=> b!1263876 m!1164351))

(assert (=> b!1263876 m!1164307))

(declare-fun m!1164453 () Bool)

(assert (=> b!1263876 m!1164453))

(assert (=> b!1263876 m!1164307))

(declare-fun m!1164455 () Bool)

(assert (=> b!1263879 m!1164455))

(assert (=> b!1263880 m!1164307))

(assert (=> b!1263880 m!1164307))

(assert (=> b!1263880 m!1164315))

(declare-fun m!1164457 () Bool)

(assert (=> bm!62280 m!1164457))

(assert (=> b!1263883 m!1164457))

(declare-fun m!1164459 () Bool)

(assert (=> d!138603 m!1164459))

(assert (=> d!138603 m!1164253))

(assert (=> b!1263885 m!1164307))

(assert (=> b!1263885 m!1164307))

(declare-fun m!1164461 () Bool)

(assert (=> b!1263885 m!1164461))

(assert (=> b!1263718 d!138603))

(declare-fun b!1263887 () Bool)

(declare-fun e!719651 () Bool)

(declare-fun e!719654 () Bool)

(assert (=> b!1263887 (= e!719651 e!719654)))

(declare-fun c!123021 () Bool)

(assert (=> b!1263887 (= c!123021 (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun b!1263888 () Bool)

(assert (=> b!1263888 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(assert (=> b!1263888 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40302 _values!914)))))

(declare-fun e!719649 () Bool)

(declare-fun lt!573332 () ListLongMap!19099)

(assert (=> b!1263888 (= e!719649 (= (apply!1038 lt!573332 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)) (get!20334 (select (arr!39765 _values!914) #b00000000000000000000000000000000) (dynLambda!3483 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!138605 () Bool)

(declare-fun e!719650 () Bool)

(assert (=> d!138605 e!719650))

(declare-fun res!841855 () Bool)

(assert (=> d!138605 (=> (not res!841855) (not e!719650))))

(assert (=> d!138605 (= res!841855 (not (contains!7627 lt!573332 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!719653 () ListLongMap!19099)

(assert (=> d!138605 (= lt!573332 e!719653)))

(declare-fun c!123023 () Bool)

(assert (=> d!138605 (= c!123023 (bvsge #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(assert (=> d!138605 (validMask!0 mask!1466)))

(assert (=> d!138605 (= (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573332)))

(declare-fun b!1263889 () Bool)

(declare-fun lt!573337 () Unit!42072)

(declare-fun lt!573336 () Unit!42072)

(assert (=> b!1263889 (= lt!573337 lt!573336)))

(declare-fun lt!573335 () ListLongMap!19099)

(declare-fun lt!573333 () (_ BitVec 64))

(declare-fun lt!573331 () (_ BitVec 64))

(declare-fun lt!573334 () V!48593)

(assert (=> b!1263889 (not (contains!7627 (+!4230 lt!573335 (tuple2!21215 lt!573333 lt!573334)) lt!573331))))

(assert (=> b!1263889 (= lt!573336 (addStillNotContains!333 lt!573335 lt!573333 lt!573334 lt!573331))))

(assert (=> b!1263889 (= lt!573331 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1263889 (= lt!573334 (get!20334 (select (arr!39765 _values!914) #b00000000000000000000000000000000) (dynLambda!3483 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1263889 (= lt!573333 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!62284 () ListLongMap!19099)

(assert (=> b!1263889 (= lt!573335 call!62284)))

(declare-fun e!719655 () ListLongMap!19099)

(assert (=> b!1263889 (= e!719655 (+!4230 call!62284 (tuple2!21215 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000) (get!20334 (select (arr!39765 _values!914) #b00000000000000000000000000000000) (dynLambda!3483 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1263890 () Bool)

(declare-fun e!719652 () Bool)

(assert (=> b!1263890 (= e!719652 (validKeyInArray!0 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263890 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1263891 () Bool)

(assert (=> b!1263891 (= e!719654 (isEmpty!1048 lt!573332))))

(declare-fun bm!62281 () Bool)

(assert (=> bm!62281 (= call!62284 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1263892 () Bool)

(assert (=> b!1263892 (= e!719653 e!719655)))

(declare-fun c!123024 () Bool)

(assert (=> b!1263892 (= c!123024 (validKeyInArray!0 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263893 () Bool)

(assert (=> b!1263893 (= e!719650 e!719651)))

(declare-fun c!123022 () Bool)

(assert (=> b!1263893 (= c!123022 e!719652)))

(declare-fun res!841856 () Bool)

(assert (=> b!1263893 (=> (not res!841856) (not e!719652))))

(assert (=> b!1263893 (= res!841856 (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun b!1263894 () Bool)

(declare-fun res!841854 () Bool)

(assert (=> b!1263894 (=> (not res!841854) (not e!719650))))

(assert (=> b!1263894 (= res!841854 (not (contains!7627 lt!573332 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1263895 () Bool)

(assert (=> b!1263895 (= e!719654 (= lt!573332 (getCurrentListMapNoExtraKeys!5904 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1263896 () Bool)

(assert (=> b!1263896 (= e!719653 (ListLongMap!19100 Nil!28429))))

(declare-fun b!1263897 () Bool)

(assert (=> b!1263897 (= e!719651 e!719649)))

(assert (=> b!1263897 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(declare-fun res!841853 () Bool)

(assert (=> b!1263897 (= res!841853 (contains!7627 lt!573332 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263897 (=> (not res!841853) (not e!719649))))

(declare-fun b!1263898 () Bool)

(assert (=> b!1263898 (= e!719655 call!62284)))

(assert (= (and d!138605 c!123023) b!1263896))

(assert (= (and d!138605 (not c!123023)) b!1263892))

(assert (= (and b!1263892 c!123024) b!1263889))

(assert (= (and b!1263892 (not c!123024)) b!1263898))

(assert (= (or b!1263889 b!1263898) bm!62281))

(assert (= (and d!138605 res!841855) b!1263894))

(assert (= (and b!1263894 res!841854) b!1263893))

(assert (= (and b!1263893 res!841856) b!1263890))

(assert (= (and b!1263893 c!123022) b!1263897))

(assert (= (and b!1263893 (not c!123022)) b!1263887))

(assert (= (and b!1263897 res!841853) b!1263888))

(assert (= (and b!1263887 c!123021) b!1263895))

(assert (= (and b!1263887 (not c!123021)) b!1263891))

(declare-fun b_lambda!23009 () Bool)

(assert (=> (not b_lambda!23009) (not b!1263888)))

(assert (=> b!1263888 t!41961))

(declare-fun b_and!45549 () Bool)

(assert (= b_and!45547 (and (=> t!41961 result!23415) b_and!45549)))

(declare-fun b_lambda!23011 () Bool)

(assert (=> (not b_lambda!23011) (not b!1263889)))

(assert (=> b!1263889 t!41961))

(declare-fun b_and!45551 () Bool)

(assert (= b_and!45549 (and (=> t!41961 result!23415) b_and!45551)))

(declare-fun m!1164463 () Bool)

(assert (=> b!1263894 m!1164463))

(assert (=> b!1263889 m!1164349))

(assert (=> b!1263889 m!1164349))

(assert (=> b!1263889 m!1164351))

(assert (=> b!1263889 m!1164353))

(declare-fun m!1164465 () Bool)

(assert (=> b!1263889 m!1164465))

(assert (=> b!1263889 m!1164351))

(declare-fun m!1164467 () Bool)

(assert (=> b!1263889 m!1164467))

(declare-fun m!1164469 () Bool)

(assert (=> b!1263889 m!1164469))

(assert (=> b!1263889 m!1164467))

(declare-fun m!1164471 () Bool)

(assert (=> b!1263889 m!1164471))

(assert (=> b!1263889 m!1164307))

(assert (=> b!1263890 m!1164307))

(assert (=> b!1263890 m!1164307))

(assert (=> b!1263890 m!1164315))

(assert (=> b!1263888 m!1164349))

(assert (=> b!1263888 m!1164349))

(assert (=> b!1263888 m!1164351))

(assert (=> b!1263888 m!1164353))

(assert (=> b!1263888 m!1164351))

(assert (=> b!1263888 m!1164307))

(declare-fun m!1164473 () Bool)

(assert (=> b!1263888 m!1164473))

(assert (=> b!1263888 m!1164307))

(declare-fun m!1164475 () Bool)

(assert (=> b!1263891 m!1164475))

(assert (=> b!1263892 m!1164307))

(assert (=> b!1263892 m!1164307))

(assert (=> b!1263892 m!1164315))

(declare-fun m!1164477 () Bool)

(assert (=> bm!62281 m!1164477))

(assert (=> b!1263895 m!1164477))

(declare-fun m!1164479 () Bool)

(assert (=> d!138605 m!1164479))

(assert (=> d!138605 m!1164253))

(assert (=> b!1263897 m!1164307))

(assert (=> b!1263897 m!1164307))

(declare-fun m!1164481 () Bool)

(assert (=> b!1263897 m!1164481))

(assert (=> b!1263718 d!138605))

(declare-fun b!1263909 () Bool)

(declare-fun e!719664 () Bool)

(declare-fun call!62287 () Bool)

(assert (=> b!1263909 (= e!719664 call!62287)))

(declare-fun b!1263911 () Bool)

(declare-fun e!719667 () Bool)

(declare-fun contains!7629 (List!28433 (_ BitVec 64)) Bool)

(assert (=> b!1263911 (= e!719667 (contains!7629 Nil!28430 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62284 () Bool)

(declare-fun c!123027 () Bool)

(assert (=> bm!62284 (= call!62287 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123027 (Cons!28429 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000) Nil!28430) Nil!28430)))))

(declare-fun b!1263912 () Bool)

(declare-fun e!719666 () Bool)

(declare-fun e!719665 () Bool)

(assert (=> b!1263912 (= e!719666 e!719665)))

(declare-fun res!841863 () Bool)

(assert (=> b!1263912 (=> (not res!841863) (not e!719665))))

(assert (=> b!1263912 (= res!841863 (not e!719667))))

(declare-fun res!841865 () Bool)

(assert (=> b!1263912 (=> (not res!841865) (not e!719667))))

(assert (=> b!1263912 (= res!841865 (validKeyInArray!0 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263913 () Bool)

(assert (=> b!1263913 (= e!719665 e!719664)))

(assert (=> b!1263913 (= c!123027 (validKeyInArray!0 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263910 () Bool)

(assert (=> b!1263910 (= e!719664 call!62287)))

(declare-fun d!138607 () Bool)

(declare-fun res!841864 () Bool)

(assert (=> d!138607 (=> res!841864 e!719666)))

(assert (=> d!138607 (= res!841864 (bvsge #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(assert (=> d!138607 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28430) e!719666)))

(assert (= (and d!138607 (not res!841864)) b!1263912))

(assert (= (and b!1263912 res!841865) b!1263911))

(assert (= (and b!1263912 res!841863) b!1263913))

(assert (= (and b!1263913 c!123027) b!1263909))

(assert (= (and b!1263913 (not c!123027)) b!1263910))

(assert (= (or b!1263909 b!1263910) bm!62284))

(assert (=> b!1263911 m!1164307))

(assert (=> b!1263911 m!1164307))

(declare-fun m!1164483 () Bool)

(assert (=> b!1263911 m!1164483))

(assert (=> bm!62284 m!1164307))

(declare-fun m!1164485 () Bool)

(assert (=> bm!62284 m!1164485))

(assert (=> b!1263912 m!1164307))

(assert (=> b!1263912 m!1164307))

(assert (=> b!1263912 m!1164315))

(assert (=> b!1263913 m!1164307))

(assert (=> b!1263913 m!1164307))

(assert (=> b!1263913 m!1164315))

(assert (=> b!1263723 d!138607))

(declare-fun d!138609 () Bool)

(declare-fun res!841871 () Bool)

(declare-fun e!719675 () Bool)

(assert (=> d!138609 (=> res!841871 e!719675)))

(assert (=> d!138609 (= res!841871 (bvsge #b00000000000000000000000000000000 (size!40303 _keys!1118)))))

(assert (=> d!138609 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!719675)))

(declare-fun b!1263922 () Bool)

(declare-fun e!719676 () Bool)

(assert (=> b!1263922 (= e!719675 e!719676)))

(declare-fun c!123030 () Bool)

(assert (=> b!1263922 (= c!123030 (validKeyInArray!0 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263923 () Bool)

(declare-fun e!719674 () Bool)

(declare-fun call!62290 () Bool)

(assert (=> b!1263923 (= e!719674 call!62290)))

(declare-fun b!1263924 () Bool)

(assert (=> b!1263924 (= e!719676 e!719674)))

(declare-fun lt!573344 () (_ BitVec 64))

(assert (=> b!1263924 (= lt!573344 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573346 () Unit!42072)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82453 (_ BitVec 64) (_ BitVec 32)) Unit!42072)

(assert (=> b!1263924 (= lt!573346 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!573344 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1263924 (arrayContainsKey!0 _keys!1118 lt!573344 #b00000000000000000000000000000000)))

(declare-fun lt!573345 () Unit!42072)

(assert (=> b!1263924 (= lt!573345 lt!573346)))

(declare-fun res!841870 () Bool)

(declare-datatypes ((SeekEntryResult!9978 0))(
  ( (MissingZero!9978 (index!42282 (_ BitVec 32))) (Found!9978 (index!42283 (_ BitVec 32))) (Intermediate!9978 (undefined!10790 Bool) (index!42284 (_ BitVec 32)) (x!111357 (_ BitVec 32))) (Undefined!9978) (MissingVacant!9978 (index!42285 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82453 (_ BitVec 32)) SeekEntryResult!9978)

(assert (=> b!1263924 (= res!841870 (= (seekEntryOrOpen!0 (select (arr!39766 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9978 #b00000000000000000000000000000000)))))

(assert (=> b!1263924 (=> (not res!841870) (not e!719674))))

(declare-fun bm!62287 () Bool)

(assert (=> bm!62287 (= call!62290 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1263925 () Bool)

(assert (=> b!1263925 (= e!719676 call!62290)))

(assert (= (and d!138609 (not res!841871)) b!1263922))

(assert (= (and b!1263922 c!123030) b!1263924))

(assert (= (and b!1263922 (not c!123030)) b!1263925))

(assert (= (and b!1263924 res!841870) b!1263923))

(assert (= (or b!1263923 b!1263925) bm!62287))

(assert (=> b!1263922 m!1164307))

(assert (=> b!1263922 m!1164307))

(assert (=> b!1263922 m!1164315))

(assert (=> b!1263924 m!1164307))

(declare-fun m!1164487 () Bool)

(assert (=> b!1263924 m!1164487))

(declare-fun m!1164489 () Bool)

(assert (=> b!1263924 m!1164489))

(assert (=> b!1263924 m!1164307))

(declare-fun m!1164491 () Bool)

(assert (=> b!1263924 m!1164491))

(declare-fun m!1164493 () Bool)

(assert (=> bm!62287 m!1164493))

(assert (=> b!1263722 d!138609))

(declare-fun b!1263933 () Bool)

(declare-fun e!719681 () Bool)

(assert (=> b!1263933 (= e!719681 tp_is_empty!32421)))

(declare-fun condMapEmpty!50467 () Bool)

(declare-fun mapDefault!50467 () ValueCell!15447)

(assert (=> mapNonEmpty!50461 (= condMapEmpty!50467 (= mapRest!50461 ((as const (Array (_ BitVec 32) ValueCell!15447)) mapDefault!50467)))))

(declare-fun mapRes!50467 () Bool)

(assert (=> mapNonEmpty!50461 (= tp!96117 (and e!719681 mapRes!50467))))

(declare-fun b!1263932 () Bool)

(declare-fun e!719682 () Bool)

(assert (=> b!1263932 (= e!719682 tp_is_empty!32421)))

(declare-fun mapIsEmpty!50467 () Bool)

(assert (=> mapIsEmpty!50467 mapRes!50467))

(declare-fun mapNonEmpty!50467 () Bool)

(declare-fun tp!96126 () Bool)

(assert (=> mapNonEmpty!50467 (= mapRes!50467 (and tp!96126 e!719682))))

(declare-fun mapValue!50467 () ValueCell!15447)

(declare-fun mapKey!50467 () (_ BitVec 32))

(declare-fun mapRest!50467 () (Array (_ BitVec 32) ValueCell!15447))

(assert (=> mapNonEmpty!50467 (= mapRest!50461 (store mapRest!50467 mapKey!50467 mapValue!50467))))

(assert (= (and mapNonEmpty!50461 condMapEmpty!50467) mapIsEmpty!50467))

(assert (= (and mapNonEmpty!50461 (not condMapEmpty!50467)) mapNonEmpty!50467))

(assert (= (and mapNonEmpty!50467 ((_ is ValueCellFull!15447) mapValue!50467)) b!1263932))

(assert (= (and mapNonEmpty!50461 ((_ is ValueCellFull!15447) mapDefault!50467)) b!1263933))

(declare-fun m!1164495 () Bool)

(assert (=> mapNonEmpty!50467 m!1164495))

(declare-fun b_lambda!23013 () Bool)

(assert (= b_lambda!23003 (or (and start!106180 b_free!27519) b_lambda!23013)))

(declare-fun b_lambda!23015 () Bool)

(assert (= b_lambda!23001 (or (and start!106180 b_free!27519) b_lambda!23015)))

(declare-fun b_lambda!23017 () Bool)

(assert (= b_lambda!23009 (or (and start!106180 b_free!27519) b_lambda!23017)))

(declare-fun b_lambda!23019 () Bool)

(assert (= b_lambda!23005 (or (and start!106180 b_free!27519) b_lambda!23019)))

(declare-fun b_lambda!23021 () Bool)

(assert (= b_lambda!23007 (or (and start!106180 b_free!27519) b_lambda!23021)))

(declare-fun b_lambda!23023 () Bool)

(assert (= b_lambda!23011 (or (and start!106180 b_free!27519) b_lambda!23023)))

(check-sat (not b!1263811) (not b!1263824) (not b!1263809) (not b!1263922) (not d!138587) (not b_lambda!23017) (not d!138601) (not bm!62273) (not b!1263806) (not b!1263913) (not b!1263892) (not b!1263876) (not d!138603) (not b!1263883) (not b_lambda!23015) (not b_lambda!23021) (not b!1263889) (not b!1263825) (not b!1263912) (not b!1263826) (not b!1263847) (not b!1263805) (not b!1263894) (not b!1263817) (not bm!62266) (not bm!62281) (not b!1263888) (not mapNonEmpty!50467) (not d!138585) (not bm!62280) (not d!138589) (not b!1263885) (not b!1263848) tp_is_empty!32421 (not b!1263830) (not b!1263897) (not b!1263836) (not b!1263878) (not b!1263842) (not bm!62284) (not d!138605) (not b!1263891) (not b!1263849) (not b_lambda!23023) (not bm!62275) (not b!1263879) (not b!1263924) (not b!1263799) (not bm!62269) (not bm!62287) (not b!1263827) (not b!1263880) b_and!45551 (not b!1263837) (not b_lambda!23019) (not b!1263877) (not b!1263890) (not b!1263911) (not b!1263840) (not bm!62277) (not bm!62268) (not b!1263850) (not b!1263797) (not bm!62276) (not b!1263882) (not b_next!27519) (not b!1263828) (not d!138591) (not b!1263895) (not d!138593) (not b!1263816) (not b_lambda!23013) (not bm!62270))
(check-sat b_and!45551 (not b_next!27519))
