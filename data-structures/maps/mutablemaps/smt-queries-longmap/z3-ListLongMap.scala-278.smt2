; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4494 () Bool)

(assert start!4494)

(declare-fun b_free!1257 () Bool)

(declare-fun b_next!1257 () Bool)

(assert (=> start!4494 (= b_free!1257 (not b_next!1257))))

(declare-fun tp!5208 () Bool)

(declare-fun b_and!2081 () Bool)

(assert (=> start!4494 (= tp!5208 b_and!2081)))

(declare-fun b!35100 () Bool)

(declare-fun res!21332 () Bool)

(declare-fun e!22180 () Bool)

(assert (=> b!35100 (=> (not res!21332) (not e!22180))))

(declare-datatypes ((V!1973 0))(
  ( (V!1974 (val!832 Int)) )
))
(declare-datatypes ((ValueCell!606 0))(
  ( (ValueCellFull!606 (v!1927 V!1973)) (EmptyCell!606) )
))
(declare-datatypes ((array!2427 0))(
  ( (array!2428 (arr!1161 (Array (_ BitVec 32) ValueCell!606)) (size!1262 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2427)

(declare-datatypes ((array!2429 0))(
  ( (array!2430 (arr!1162 (Array (_ BitVec 32) (_ BitVec 64))) (size!1263 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2429)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!35100 (= res!21332 (and (= (size!1262 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1263 _keys!1833) (size!1262 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!35101 () Bool)

(declare-datatypes ((SeekEntryResult!165 0))(
  ( (MissingZero!165 (index!2782 (_ BitVec 32))) (Found!165 (index!2783 (_ BitVec 32))) (Intermediate!165 (undefined!977 Bool) (index!2784 (_ BitVec 32)) (x!6991 (_ BitVec 32))) (Undefined!165) (MissingVacant!165 (index!2785 (_ BitVec 32))) )
))
(declare-fun lt!12853 () SeekEntryResult!165)

(get-info :version)

(assert (=> b!35101 (= e!22180 (and ((_ is Found!165) lt!12853) (or (bvslt (index!2783 lt!12853) #b00000000000000000000000000000000) (bvsge (index!2783 lt!12853) (size!1263 _keys!1833)))))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2429 (_ BitVec 32)) SeekEntryResult!165)

(assert (=> b!35101 (= lt!12853 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!35102 () Bool)

(declare-fun res!21335 () Bool)

(assert (=> b!35102 (=> (not res!21335) (not e!22180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35102 (= res!21335 (validKeyInArray!0 k0!1304))))

(declare-fun b!35103 () Bool)

(declare-fun e!22179 () Bool)

(declare-fun tp_is_empty!1611 () Bool)

(assert (=> b!35103 (= e!22179 tp_is_empty!1611)))

(declare-fun mapIsEmpty!1963 () Bool)

(declare-fun mapRes!1963 () Bool)

(assert (=> mapIsEmpty!1963 mapRes!1963))

(declare-fun b!35104 () Bool)

(declare-fun res!21331 () Bool)

(assert (=> b!35104 (=> (not res!21331) (not e!22180))))

(declare-datatypes ((List!941 0))(
  ( (Nil!938) (Cons!937 (h!1504 (_ BitVec 64)) (t!3648 List!941)) )
))
(declare-fun arrayNoDuplicates!0 (array!2429 (_ BitVec 32) List!941) Bool)

(assert (=> b!35104 (= res!21331 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!938))))

(declare-fun b!35105 () Bool)

(declare-fun res!21334 () Bool)

(assert (=> b!35105 (=> (not res!21334) (not e!22180))))

(declare-fun arrayContainsKey!0 (array!2429 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!35105 (= res!21334 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun res!21336 () Bool)

(assert (=> start!4494 (=> (not res!21336) (not e!22180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4494 (= res!21336 (validMask!0 mask!2294))))

(assert (=> start!4494 e!22180))

(assert (=> start!4494 true))

(assert (=> start!4494 tp!5208))

(declare-fun e!22178 () Bool)

(declare-fun array_inv!769 (array!2427) Bool)

(assert (=> start!4494 (and (array_inv!769 _values!1501) e!22178)))

(declare-fun array_inv!770 (array!2429) Bool)

(assert (=> start!4494 (array_inv!770 _keys!1833)))

(assert (=> start!4494 tp_is_empty!1611))

(declare-fun b!35106 () Bool)

(assert (=> b!35106 (= e!22178 (and e!22179 mapRes!1963))))

(declare-fun condMapEmpty!1963 () Bool)

(declare-fun mapDefault!1963 () ValueCell!606)

(assert (=> b!35106 (= condMapEmpty!1963 (= (arr!1161 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!606)) mapDefault!1963)))))

(declare-fun b!35107 () Bool)

(declare-fun res!21333 () Bool)

(assert (=> b!35107 (=> (not res!21333) (not e!22180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2429 (_ BitVec 32)) Bool)

(assert (=> b!35107 (= res!21333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!35108 () Bool)

(declare-fun res!21337 () Bool)

(assert (=> b!35108 (=> (not res!21337) (not e!22180))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1973)

(declare-fun minValue!1443 () V!1973)

(declare-datatypes ((tuple2!1332 0))(
  ( (tuple2!1333 (_1!676 (_ BitVec 64)) (_2!676 V!1973)) )
))
(declare-datatypes ((List!942 0))(
  ( (Nil!939) (Cons!938 (h!1505 tuple2!1332) (t!3649 List!942)) )
))
(declare-datatypes ((ListLongMap!913 0))(
  ( (ListLongMap!914 (toList!472 List!942)) )
))
(declare-fun contains!415 (ListLongMap!913 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!293 (array!2429 array!2427 (_ BitVec 32) (_ BitVec 32) V!1973 V!1973 (_ BitVec 32) Int) ListLongMap!913)

(assert (=> b!35108 (= res!21337 (not (contains!415 (getCurrentListMap!293 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!35109 () Bool)

(declare-fun e!22181 () Bool)

(assert (=> b!35109 (= e!22181 tp_is_empty!1611)))

(declare-fun mapNonEmpty!1963 () Bool)

(declare-fun tp!5209 () Bool)

(assert (=> mapNonEmpty!1963 (= mapRes!1963 (and tp!5209 e!22181))))

(declare-fun mapKey!1963 () (_ BitVec 32))

(declare-fun mapValue!1963 () ValueCell!606)

(declare-fun mapRest!1963 () (Array (_ BitVec 32) ValueCell!606))

(assert (=> mapNonEmpty!1963 (= (arr!1161 _values!1501) (store mapRest!1963 mapKey!1963 mapValue!1963))))

(assert (= (and start!4494 res!21336) b!35100))

(assert (= (and b!35100 res!21332) b!35107))

(assert (= (and b!35107 res!21333) b!35104))

(assert (= (and b!35104 res!21331) b!35102))

(assert (= (and b!35102 res!21335) b!35108))

(assert (= (and b!35108 res!21337) b!35105))

(assert (= (and b!35105 res!21334) b!35101))

(assert (= (and b!35106 condMapEmpty!1963) mapIsEmpty!1963))

(assert (= (and b!35106 (not condMapEmpty!1963)) mapNonEmpty!1963))

(assert (= (and mapNonEmpty!1963 ((_ is ValueCellFull!606) mapValue!1963)) b!35109))

(assert (= (and b!35106 ((_ is ValueCellFull!606) mapDefault!1963)) b!35103))

(assert (= start!4494 b!35106))

(declare-fun m!28263 () Bool)

(assert (=> b!35105 m!28263))

(declare-fun m!28265 () Bool)

(assert (=> b!35102 m!28265))

(declare-fun m!28267 () Bool)

(assert (=> b!35108 m!28267))

(assert (=> b!35108 m!28267))

(declare-fun m!28269 () Bool)

(assert (=> b!35108 m!28269))

(declare-fun m!28271 () Bool)

(assert (=> b!35107 m!28271))

(declare-fun m!28273 () Bool)

(assert (=> b!35101 m!28273))

(declare-fun m!28275 () Bool)

(assert (=> mapNonEmpty!1963 m!28275))

(declare-fun m!28277 () Bool)

(assert (=> b!35104 m!28277))

(declare-fun m!28279 () Bool)

(assert (=> start!4494 m!28279))

(declare-fun m!28281 () Bool)

(assert (=> start!4494 m!28281))

(declare-fun m!28283 () Bool)

(assert (=> start!4494 m!28283))

(check-sat (not b!35101) b_and!2081 (not b_next!1257) (not b!35107) tp_is_empty!1611 (not start!4494) (not b!35108) (not b!35105) (not b!35104) (not b!35102) (not mapNonEmpty!1963))
(check-sat b_and!2081 (not b_next!1257))
(get-model)

(declare-fun d!5281 () Bool)

(declare-fun e!22203 () Bool)

(assert (=> d!5281 e!22203))

(declare-fun res!21361 () Bool)

(assert (=> d!5281 (=> res!21361 e!22203)))

(declare-fun lt!12865 () Bool)

(assert (=> d!5281 (= res!21361 (not lt!12865))))

(declare-fun lt!12868 () Bool)

(assert (=> d!5281 (= lt!12865 lt!12868)))

(declare-datatypes ((Unit!775 0))(
  ( (Unit!776) )
))
(declare-fun lt!12867 () Unit!775)

(declare-fun e!22202 () Unit!775)

(assert (=> d!5281 (= lt!12867 e!22202)))

(declare-fun c!3975 () Bool)

(assert (=> d!5281 (= c!3975 lt!12868)))

(declare-fun containsKey!35 (List!942 (_ BitVec 64)) Bool)

(assert (=> d!5281 (= lt!12868 (containsKey!35 (toList!472 (getCurrentListMap!293 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(assert (=> d!5281 (= (contains!415 (getCurrentListMap!293 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304) lt!12865)))

(declare-fun b!35146 () Bool)

(declare-fun lt!12866 () Unit!775)

(assert (=> b!35146 (= e!22202 lt!12866)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!32 (List!942 (_ BitVec 64)) Unit!775)

(assert (=> b!35146 (= lt!12866 (lemmaContainsKeyImpliesGetValueByKeyDefined!32 (toList!472 (getCurrentListMap!293 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-datatypes ((Option!77 0))(
  ( (Some!76 (v!1929 V!1973)) (None!75) )
))
(declare-fun isDefined!33 (Option!77) Bool)

(declare-fun getValueByKey!71 (List!942 (_ BitVec 64)) Option!77)

(assert (=> b!35146 (isDefined!33 (getValueByKey!71 (toList!472 (getCurrentListMap!293 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-fun b!35147 () Bool)

(declare-fun Unit!777 () Unit!775)

(assert (=> b!35147 (= e!22202 Unit!777)))

(declare-fun b!35148 () Bool)

(assert (=> b!35148 (= e!22203 (isDefined!33 (getValueByKey!71 (toList!472 (getCurrentListMap!293 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304)))))

(assert (= (and d!5281 c!3975) b!35146))

(assert (= (and d!5281 (not c!3975)) b!35147))

(assert (= (and d!5281 (not res!21361)) b!35148))

(declare-fun m!28307 () Bool)

(assert (=> d!5281 m!28307))

(declare-fun m!28309 () Bool)

(assert (=> b!35146 m!28309))

(declare-fun m!28311 () Bool)

(assert (=> b!35146 m!28311))

(assert (=> b!35146 m!28311))

(declare-fun m!28313 () Bool)

(assert (=> b!35146 m!28313))

(assert (=> b!35148 m!28311))

(assert (=> b!35148 m!28311))

(assert (=> b!35148 m!28313))

(assert (=> b!35108 d!5281))

(declare-fun b!35191 () Bool)

(declare-fun e!22234 () ListLongMap!913)

(declare-fun call!2767 () ListLongMap!913)

(assert (=> b!35191 (= e!22234 call!2767)))

(declare-fun b!35192 () Bool)

(declare-fun e!22236 () Bool)

(assert (=> b!35192 (= e!22236 (validKeyInArray!0 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2763 () Bool)

(declare-fun call!2772 () ListLongMap!913)

(declare-fun call!2766 () ListLongMap!913)

(assert (=> bm!2763 (= call!2772 call!2766)))

(declare-fun b!35193 () Bool)

(declare-fun res!21383 () Bool)

(declare-fun e!22242 () Bool)

(assert (=> b!35193 (=> (not res!21383) (not e!22242))))

(declare-fun e!22241 () Bool)

(assert (=> b!35193 (= res!21383 e!22241)))

(declare-fun c!3991 () Bool)

(assert (=> b!35193 (= c!3991 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!35194 () Bool)

(declare-fun e!22238 () Bool)

(declare-fun e!22231 () Bool)

(assert (=> b!35194 (= e!22238 e!22231)))

(declare-fun res!21388 () Bool)

(assert (=> b!35194 (=> (not res!21388) (not e!22231))))

(declare-fun lt!12917 () ListLongMap!913)

(assert (=> b!35194 (= res!21388 (contains!415 lt!12917 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!35194 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1263 _keys!1833)))))

(declare-fun bm!2764 () Bool)

(declare-fun call!2769 () ListLongMap!913)

(declare-fun call!2770 () ListLongMap!913)

(assert (=> bm!2764 (= call!2769 call!2770)))

(declare-fun d!5283 () Bool)

(assert (=> d!5283 e!22242))

(declare-fun res!21386 () Bool)

(assert (=> d!5283 (=> (not res!21386) (not e!22242))))

(assert (=> d!5283 (= res!21386 (or (bvsge #b00000000000000000000000000000000 (size!1263 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1263 _keys!1833)))))))

(declare-fun lt!12928 () ListLongMap!913)

(assert (=> d!5283 (= lt!12917 lt!12928)))

(declare-fun lt!12927 () Unit!775)

(declare-fun e!22240 () Unit!775)

(assert (=> d!5283 (= lt!12927 e!22240)))

(declare-fun c!3993 () Bool)

(assert (=> d!5283 (= c!3993 e!22236)))

(declare-fun res!21382 () Bool)

(assert (=> d!5283 (=> (not res!21382) (not e!22236))))

(assert (=> d!5283 (= res!21382 (bvslt #b00000000000000000000000000000000 (size!1263 _keys!1833)))))

(declare-fun e!22237 () ListLongMap!913)

(assert (=> d!5283 (= lt!12928 e!22237)))

(declare-fun c!3989 () Bool)

(assert (=> d!5283 (= c!3989 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!5283 (validMask!0 mask!2294)))

(assert (=> d!5283 (= (getCurrentListMap!293 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!12917)))

(declare-fun bm!2765 () Bool)

(assert (=> bm!2765 (= call!2767 call!2772)))

(declare-fun c!3990 () Bool)

(declare-fun bm!2766 () Bool)

(declare-fun +!57 (ListLongMap!913 tuple2!1332) ListLongMap!913)

(assert (=> bm!2766 (= call!2770 (+!57 (ite c!3989 call!2766 (ite c!3990 call!2772 call!2767)) (ite (or c!3989 c!3990) (tuple2!1333 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1333 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun b!35195 () Bool)

(declare-fun e!22233 () Bool)

(declare-fun apply!39 (ListLongMap!913 (_ BitVec 64)) V!1973)

(assert (=> b!35195 (= e!22233 (= (apply!39 lt!12917 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun b!35196 () Bool)

(assert (=> b!35196 (= e!22237 (+!57 call!2770 (tuple2!1333 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun b!35197 () Bool)

(declare-fun e!22230 () Bool)

(assert (=> b!35197 (= e!22230 (validKeyInArray!0 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35198 () Bool)

(declare-fun get!600 (ValueCell!606 V!1973) V!1973)

(declare-fun dynLambda!156 (Int (_ BitVec 64)) V!1973)

(assert (=> b!35198 (= e!22231 (= (apply!39 lt!12917 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000)) (get!600 (select (arr!1161 _values!1501) #b00000000000000000000000000000000) (dynLambda!156 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!35198 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1262 _values!1501)))))

(assert (=> b!35198 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1263 _keys!1833)))))

(declare-fun bm!2767 () Bool)

(declare-fun call!2768 () Bool)

(assert (=> bm!2767 (= call!2768 (contains!415 lt!12917 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!35199 () Bool)

(declare-fun Unit!778 () Unit!775)

(assert (=> b!35199 (= e!22240 Unit!778)))

(declare-fun bm!2768 () Bool)

(declare-fun call!2771 () Bool)

(assert (=> bm!2768 (= call!2771 (contains!415 lt!12917 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!35200 () Bool)

(assert (=> b!35200 (= e!22234 call!2769)))

(declare-fun bm!2769 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!26 (array!2429 array!2427 (_ BitVec 32) (_ BitVec 32) V!1973 V!1973 (_ BitVec 32) Int) ListLongMap!913)

(assert (=> bm!2769 (= call!2766 (getCurrentListMapNoExtraKeys!26 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!35201 () Bool)

(declare-fun lt!12931 () Unit!775)

(assert (=> b!35201 (= e!22240 lt!12931)))

(declare-fun lt!12925 () ListLongMap!913)

(assert (=> b!35201 (= lt!12925 (getCurrentListMapNoExtraKeys!26 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12933 () (_ BitVec 64))

(assert (=> b!35201 (= lt!12933 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12932 () (_ BitVec 64))

(assert (=> b!35201 (= lt!12932 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12918 () Unit!775)

(declare-fun addStillContains!24 (ListLongMap!913 (_ BitVec 64) V!1973 (_ BitVec 64)) Unit!775)

(assert (=> b!35201 (= lt!12918 (addStillContains!24 lt!12925 lt!12933 zeroValue!1443 lt!12932))))

(assert (=> b!35201 (contains!415 (+!57 lt!12925 (tuple2!1333 lt!12933 zeroValue!1443)) lt!12932)))

(declare-fun lt!12916 () Unit!775)

(assert (=> b!35201 (= lt!12916 lt!12918)))

(declare-fun lt!12929 () ListLongMap!913)

(assert (=> b!35201 (= lt!12929 (getCurrentListMapNoExtraKeys!26 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12914 () (_ BitVec 64))

(assert (=> b!35201 (= lt!12914 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12915 () (_ BitVec 64))

(assert (=> b!35201 (= lt!12915 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12919 () Unit!775)

(declare-fun addApplyDifferent!24 (ListLongMap!913 (_ BitVec 64) V!1973 (_ BitVec 64)) Unit!775)

(assert (=> b!35201 (= lt!12919 (addApplyDifferent!24 lt!12929 lt!12914 minValue!1443 lt!12915))))

(assert (=> b!35201 (= (apply!39 (+!57 lt!12929 (tuple2!1333 lt!12914 minValue!1443)) lt!12915) (apply!39 lt!12929 lt!12915))))

(declare-fun lt!12913 () Unit!775)

(assert (=> b!35201 (= lt!12913 lt!12919)))

(declare-fun lt!12921 () ListLongMap!913)

(assert (=> b!35201 (= lt!12921 (getCurrentListMapNoExtraKeys!26 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12920 () (_ BitVec 64))

(assert (=> b!35201 (= lt!12920 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12924 () (_ BitVec 64))

(assert (=> b!35201 (= lt!12924 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12922 () Unit!775)

(assert (=> b!35201 (= lt!12922 (addApplyDifferent!24 lt!12921 lt!12920 zeroValue!1443 lt!12924))))

(assert (=> b!35201 (= (apply!39 (+!57 lt!12921 (tuple2!1333 lt!12920 zeroValue!1443)) lt!12924) (apply!39 lt!12921 lt!12924))))

(declare-fun lt!12926 () Unit!775)

(assert (=> b!35201 (= lt!12926 lt!12922)))

(declare-fun lt!12934 () ListLongMap!913)

(assert (=> b!35201 (= lt!12934 (getCurrentListMapNoExtraKeys!26 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12930 () (_ BitVec 64))

(assert (=> b!35201 (= lt!12930 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12923 () (_ BitVec 64))

(assert (=> b!35201 (= lt!12923 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!35201 (= lt!12931 (addApplyDifferent!24 lt!12934 lt!12930 minValue!1443 lt!12923))))

(assert (=> b!35201 (= (apply!39 (+!57 lt!12934 (tuple2!1333 lt!12930 minValue!1443)) lt!12923) (apply!39 lt!12934 lt!12923))))

(declare-fun b!35202 () Bool)

(declare-fun e!22239 () Bool)

(assert (=> b!35202 (= e!22239 e!22233)))

(declare-fun res!21380 () Bool)

(assert (=> b!35202 (= res!21380 call!2768)))

(assert (=> b!35202 (=> (not res!21380) (not e!22233))))

(declare-fun b!35203 () Bool)

(declare-fun e!22232 () ListLongMap!913)

(assert (=> b!35203 (= e!22237 e!22232)))

(assert (=> b!35203 (= c!3990 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!35204 () Bool)

(assert (=> b!35204 (= e!22239 (not call!2768))))

(declare-fun b!35205 () Bool)

(declare-fun e!22235 () Bool)

(assert (=> b!35205 (= e!22235 (= (apply!39 lt!12917 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(declare-fun b!35206 () Bool)

(assert (=> b!35206 (= e!22242 e!22239)))

(declare-fun c!3992 () Bool)

(assert (=> b!35206 (= c!3992 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!35207 () Bool)

(assert (=> b!35207 (= e!22241 (not call!2771))))

(declare-fun b!35208 () Bool)

(declare-fun res!21385 () Bool)

(assert (=> b!35208 (=> (not res!21385) (not e!22242))))

(assert (=> b!35208 (= res!21385 e!22238)))

(declare-fun res!21384 () Bool)

(assert (=> b!35208 (=> res!21384 e!22238)))

(assert (=> b!35208 (= res!21384 (not e!22230))))

(declare-fun res!21381 () Bool)

(assert (=> b!35208 (=> (not res!21381) (not e!22230))))

(assert (=> b!35208 (= res!21381 (bvslt #b00000000000000000000000000000000 (size!1263 _keys!1833)))))

(declare-fun b!35209 () Bool)

(assert (=> b!35209 (= e!22241 e!22235)))

(declare-fun res!21387 () Bool)

(assert (=> b!35209 (= res!21387 call!2771)))

(assert (=> b!35209 (=> (not res!21387) (not e!22235))))

(declare-fun b!35210 () Bool)

(assert (=> b!35210 (= e!22232 call!2769)))

(declare-fun b!35211 () Bool)

(declare-fun c!3988 () Bool)

(assert (=> b!35211 (= c!3988 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!35211 (= e!22232 e!22234)))

(assert (= (and d!5283 c!3989) b!35196))

(assert (= (and d!5283 (not c!3989)) b!35203))

(assert (= (and b!35203 c!3990) b!35210))

(assert (= (and b!35203 (not c!3990)) b!35211))

(assert (= (and b!35211 c!3988) b!35200))

(assert (= (and b!35211 (not c!3988)) b!35191))

(assert (= (or b!35200 b!35191) bm!2765))

(assert (= (or b!35210 bm!2765) bm!2763))

(assert (= (or b!35210 b!35200) bm!2764))

(assert (= (or b!35196 bm!2763) bm!2769))

(assert (= (or b!35196 bm!2764) bm!2766))

(assert (= (and d!5283 res!21382) b!35192))

(assert (= (and d!5283 c!3993) b!35201))

(assert (= (and d!5283 (not c!3993)) b!35199))

(assert (= (and d!5283 res!21386) b!35208))

(assert (= (and b!35208 res!21381) b!35197))

(assert (= (and b!35208 (not res!21384)) b!35194))

(assert (= (and b!35194 res!21388) b!35198))

(assert (= (and b!35208 res!21385) b!35193))

(assert (= (and b!35193 c!3991) b!35209))

(assert (= (and b!35193 (not c!3991)) b!35207))

(assert (= (and b!35209 res!21387) b!35205))

(assert (= (or b!35209 b!35207) bm!2768))

(assert (= (and b!35193 res!21383) b!35206))

(assert (= (and b!35206 c!3992) b!35202))

(assert (= (and b!35206 (not c!3992)) b!35204))

(assert (= (and b!35202 res!21380) b!35195))

(assert (= (or b!35202 b!35204) bm!2767))

(declare-fun b_lambda!1723 () Bool)

(assert (=> (not b_lambda!1723) (not b!35198)))

(declare-fun t!3653 () Bool)

(declare-fun tb!695 () Bool)

(assert (=> (and start!4494 (= defaultEntry!1504 defaultEntry!1504) t!3653) tb!695))

(declare-fun result!1191 () Bool)

(assert (=> tb!695 (= result!1191 tp_is_empty!1611)))

(assert (=> b!35198 t!3653))

(declare-fun b_and!2085 () Bool)

(assert (= b_and!2081 (and (=> t!3653 result!1191) b_and!2085)))

(declare-fun m!28315 () Bool)

(assert (=> bm!2768 m!28315))

(declare-fun m!28317 () Bool)

(assert (=> b!35194 m!28317))

(assert (=> b!35194 m!28317))

(declare-fun m!28319 () Bool)

(assert (=> b!35194 m!28319))

(assert (=> b!35197 m!28317))

(assert (=> b!35197 m!28317))

(declare-fun m!28321 () Bool)

(assert (=> b!35197 m!28321))

(declare-fun m!28323 () Bool)

(assert (=> b!35201 m!28323))

(declare-fun m!28325 () Bool)

(assert (=> b!35201 m!28325))

(declare-fun m!28327 () Bool)

(assert (=> b!35201 m!28327))

(declare-fun m!28329 () Bool)

(assert (=> b!35201 m!28329))

(declare-fun m!28331 () Bool)

(assert (=> b!35201 m!28331))

(declare-fun m!28333 () Bool)

(assert (=> b!35201 m!28333))

(declare-fun m!28335 () Bool)

(assert (=> b!35201 m!28335))

(declare-fun m!28337 () Bool)

(assert (=> b!35201 m!28337))

(declare-fun m!28339 () Bool)

(assert (=> b!35201 m!28339))

(declare-fun m!28341 () Bool)

(assert (=> b!35201 m!28341))

(assert (=> b!35201 m!28339))

(declare-fun m!28343 () Bool)

(assert (=> b!35201 m!28343))

(declare-fun m!28345 () Bool)

(assert (=> b!35201 m!28345))

(declare-fun m!28347 () Bool)

(assert (=> b!35201 m!28347))

(declare-fun m!28349 () Bool)

(assert (=> b!35201 m!28349))

(declare-fun m!28351 () Bool)

(assert (=> b!35201 m!28351))

(assert (=> b!35201 m!28343))

(declare-fun m!28353 () Bool)

(assert (=> b!35201 m!28353))

(assert (=> b!35201 m!28317))

(assert (=> b!35201 m!28349))

(assert (=> b!35201 m!28333))

(assert (=> bm!2769 m!28329))

(declare-fun m!28355 () Bool)

(assert (=> b!35205 m!28355))

(assert (=> d!5283 m!28279))

(declare-fun m!28357 () Bool)

(assert (=> bm!2766 m!28357))

(declare-fun m!28359 () Bool)

(assert (=> b!35198 m!28359))

(declare-fun m!28361 () Bool)

(assert (=> b!35198 m!28361))

(declare-fun m!28363 () Bool)

(assert (=> b!35198 m!28363))

(assert (=> b!35198 m!28361))

(assert (=> b!35198 m!28359))

(assert (=> b!35198 m!28317))

(assert (=> b!35198 m!28317))

(declare-fun m!28365 () Bool)

(assert (=> b!35198 m!28365))

(declare-fun m!28367 () Bool)

(assert (=> b!35196 m!28367))

(declare-fun m!28369 () Bool)

(assert (=> b!35195 m!28369))

(declare-fun m!28371 () Bool)

(assert (=> bm!2767 m!28371))

(assert (=> b!35192 m!28317))

(assert (=> b!35192 m!28317))

(assert (=> b!35192 m!28321))

(assert (=> b!35108 d!5283))

(declare-fun d!5285 () Bool)

(assert (=> d!5285 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!35102 d!5285))

(declare-fun b!35222 () Bool)

(declare-fun e!22250 () Bool)

(declare-fun e!22251 () Bool)

(assert (=> b!35222 (= e!22250 e!22251)))

(declare-fun lt!12942 () (_ BitVec 64))

(assert (=> b!35222 (= lt!12942 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12941 () Unit!775)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2429 (_ BitVec 64) (_ BitVec 32)) Unit!775)

(assert (=> b!35222 (= lt!12941 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!12942 #b00000000000000000000000000000000))))

(assert (=> b!35222 (arrayContainsKey!0 _keys!1833 lt!12942 #b00000000000000000000000000000000)))

(declare-fun lt!12943 () Unit!775)

(assert (=> b!35222 (= lt!12943 lt!12941)))

(declare-fun res!21394 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2429 (_ BitVec 32)) SeekEntryResult!165)

(assert (=> b!35222 (= res!21394 (= (seekEntryOrOpen!0 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!165 #b00000000000000000000000000000000)))))

(assert (=> b!35222 (=> (not res!21394) (not e!22251))))

(declare-fun bm!2772 () Bool)

(declare-fun call!2775 () Bool)

(assert (=> bm!2772 (= call!2775 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!35223 () Bool)

(assert (=> b!35223 (= e!22251 call!2775)))

(declare-fun b!35224 () Bool)

(declare-fun e!22249 () Bool)

(assert (=> b!35224 (= e!22249 e!22250)))

(declare-fun c!3996 () Bool)

(assert (=> b!35224 (= c!3996 (validKeyInArray!0 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35225 () Bool)

(assert (=> b!35225 (= e!22250 call!2775)))

(declare-fun d!5287 () Bool)

(declare-fun res!21393 () Bool)

(assert (=> d!5287 (=> res!21393 e!22249)))

(assert (=> d!5287 (= res!21393 (bvsge #b00000000000000000000000000000000 (size!1263 _keys!1833)))))

(assert (=> d!5287 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!22249)))

(assert (= (and d!5287 (not res!21393)) b!35224))

(assert (= (and b!35224 c!3996) b!35222))

(assert (= (and b!35224 (not c!3996)) b!35225))

(assert (= (and b!35222 res!21394) b!35223))

(assert (= (or b!35223 b!35225) bm!2772))

(assert (=> b!35222 m!28317))

(declare-fun m!28373 () Bool)

(assert (=> b!35222 m!28373))

(declare-fun m!28375 () Bool)

(assert (=> b!35222 m!28375))

(assert (=> b!35222 m!28317))

(declare-fun m!28377 () Bool)

(assert (=> b!35222 m!28377))

(declare-fun m!28379 () Bool)

(assert (=> bm!2772 m!28379))

(assert (=> b!35224 m!28317))

(assert (=> b!35224 m!28317))

(assert (=> b!35224 m!28321))

(assert (=> b!35107 d!5287))

(declare-fun d!5289 () Bool)

(assert (=> d!5289 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!4494 d!5289))

(declare-fun d!5291 () Bool)

(assert (=> d!5291 (= (array_inv!769 _values!1501) (bvsge (size!1262 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!4494 d!5291))

(declare-fun d!5293 () Bool)

(assert (=> d!5293 (= (array_inv!770 _keys!1833) (bvsge (size!1263 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!4494 d!5293))

(declare-fun d!5295 () Bool)

(declare-fun res!21399 () Bool)

(declare-fun e!22256 () Bool)

(assert (=> d!5295 (=> res!21399 e!22256)))

(assert (=> d!5295 (= res!21399 (= (select (arr!1162 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5295 (= (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) e!22256)))

(declare-fun b!35230 () Bool)

(declare-fun e!22257 () Bool)

(assert (=> b!35230 (= e!22256 e!22257)))

(declare-fun res!21400 () Bool)

(assert (=> b!35230 (=> (not res!21400) (not e!22257))))

(assert (=> b!35230 (= res!21400 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1263 _keys!1833)))))

(declare-fun b!35231 () Bool)

(assert (=> b!35231 (= e!22257 (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5295 (not res!21399)) b!35230))

(assert (= (and b!35230 res!21400) b!35231))

(assert (=> d!5295 m!28317))

(declare-fun m!28381 () Bool)

(assert (=> b!35231 m!28381))

(assert (=> b!35105 d!5295))

(declare-fun b!35244 () Bool)

(declare-fun e!22266 () SeekEntryResult!165)

(declare-fun lt!12954 () SeekEntryResult!165)

(assert (=> b!35244 (= e!22266 (Found!165 (index!2784 lt!12954)))))

(declare-fun b!35245 () Bool)

(declare-fun e!22265 () SeekEntryResult!165)

(assert (=> b!35245 (= e!22265 e!22266)))

(declare-fun lt!12953 () (_ BitVec 64))

(assert (=> b!35245 (= lt!12953 (select (arr!1162 _keys!1833) (index!2784 lt!12954)))))

(declare-fun c!4005 () Bool)

(assert (=> b!35245 (= c!4005 (= lt!12953 k0!1304))))

(declare-fun b!35246 () Bool)

(declare-fun e!22264 () SeekEntryResult!165)

(declare-fun lt!12955 () SeekEntryResult!165)

(assert (=> b!35246 (= e!22264 (ite ((_ is MissingVacant!165) lt!12955) (MissingZero!165 (index!2785 lt!12955)) lt!12955))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2429 (_ BitVec 32)) SeekEntryResult!165)

(assert (=> b!35246 (= lt!12955 (seekKeyOrZeroReturnVacant!0 (x!6991 lt!12954) (index!2784 lt!12954) (index!2784 lt!12954) k0!1304 _keys!1833 mask!2294))))

(declare-fun b!35247 () Bool)

(declare-fun c!4004 () Bool)

(assert (=> b!35247 (= c!4004 (= lt!12953 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!35247 (= e!22266 e!22264)))

(declare-fun d!5297 () Bool)

(declare-fun lt!12952 () SeekEntryResult!165)

(assert (=> d!5297 (and (or ((_ is MissingVacant!165) lt!12952) (not ((_ is Found!165) lt!12952)) (and (bvsge (index!2783 lt!12952) #b00000000000000000000000000000000) (bvslt (index!2783 lt!12952) (size!1263 _keys!1833)))) (not ((_ is MissingVacant!165) lt!12952)) (or (not ((_ is Found!165) lt!12952)) (= (select (arr!1162 _keys!1833) (index!2783 lt!12952)) k0!1304)))))

(assert (=> d!5297 (= lt!12952 e!22265)))

(declare-fun c!4003 () Bool)

(assert (=> d!5297 (= c!4003 (and ((_ is Intermediate!165) lt!12954) (undefined!977 lt!12954)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2429 (_ BitVec 32)) SeekEntryResult!165)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!5297 (= lt!12954 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1304 mask!2294) k0!1304 _keys!1833 mask!2294))))

(assert (=> d!5297 (validMask!0 mask!2294)))

(assert (=> d!5297 (= (seekEntry!0 k0!1304 _keys!1833 mask!2294) lt!12952)))

(declare-fun b!35248 () Bool)

(assert (=> b!35248 (= e!22265 Undefined!165)))

(declare-fun b!35249 () Bool)

(assert (=> b!35249 (= e!22264 (MissingZero!165 (index!2784 lt!12954)))))

(assert (= (and d!5297 c!4003) b!35248))

(assert (= (and d!5297 (not c!4003)) b!35245))

(assert (= (and b!35245 c!4005) b!35244))

(assert (= (and b!35245 (not c!4005)) b!35247))

(assert (= (and b!35247 c!4004) b!35249))

(assert (= (and b!35247 (not c!4004)) b!35246))

(declare-fun m!28383 () Bool)

(assert (=> b!35245 m!28383))

(declare-fun m!28385 () Bool)

(assert (=> b!35246 m!28385))

(declare-fun m!28387 () Bool)

(assert (=> d!5297 m!28387))

(declare-fun m!28389 () Bool)

(assert (=> d!5297 m!28389))

(assert (=> d!5297 m!28389))

(declare-fun m!28391 () Bool)

(assert (=> d!5297 m!28391))

(assert (=> d!5297 m!28279))

(assert (=> b!35101 d!5297))

(declare-fun b!35260 () Bool)

(declare-fun e!22278 () Bool)

(declare-fun contains!417 (List!941 (_ BitVec 64)) Bool)

(assert (=> b!35260 (= e!22278 (contains!417 Nil!938 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35261 () Bool)

(declare-fun e!22276 () Bool)

(declare-fun call!2778 () Bool)

(assert (=> b!35261 (= e!22276 call!2778)))

(declare-fun b!35262 () Bool)

(declare-fun e!22277 () Bool)

(assert (=> b!35262 (= e!22277 e!22276)))

(declare-fun c!4008 () Bool)

(assert (=> b!35262 (= c!4008 (validKeyInArray!0 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35264 () Bool)

(declare-fun e!22275 () Bool)

(assert (=> b!35264 (= e!22275 e!22277)))

(declare-fun res!21408 () Bool)

(assert (=> b!35264 (=> (not res!21408) (not e!22277))))

(assert (=> b!35264 (= res!21408 (not e!22278))))

(declare-fun res!21407 () Bool)

(assert (=> b!35264 (=> (not res!21407) (not e!22278))))

(assert (=> b!35264 (= res!21407 (validKeyInArray!0 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2775 () Bool)

(assert (=> bm!2775 (= call!2778 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4008 (Cons!937 (select (arr!1162 _keys!1833) #b00000000000000000000000000000000) Nil!938) Nil!938)))))

(declare-fun b!35263 () Bool)

(assert (=> b!35263 (= e!22276 call!2778)))

(declare-fun d!5299 () Bool)

(declare-fun res!21409 () Bool)

(assert (=> d!5299 (=> res!21409 e!22275)))

(assert (=> d!5299 (= res!21409 (bvsge #b00000000000000000000000000000000 (size!1263 _keys!1833)))))

(assert (=> d!5299 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!938) e!22275)))

(assert (= (and d!5299 (not res!21409)) b!35264))

(assert (= (and b!35264 res!21407) b!35260))

(assert (= (and b!35264 res!21408) b!35262))

(assert (= (and b!35262 c!4008) b!35263))

(assert (= (and b!35262 (not c!4008)) b!35261))

(assert (= (or b!35263 b!35261) bm!2775))

(assert (=> b!35260 m!28317))

(assert (=> b!35260 m!28317))

(declare-fun m!28393 () Bool)

(assert (=> b!35260 m!28393))

(assert (=> b!35262 m!28317))

(assert (=> b!35262 m!28317))

(assert (=> b!35262 m!28321))

(assert (=> b!35264 m!28317))

(assert (=> b!35264 m!28317))

(assert (=> b!35264 m!28321))

(assert (=> bm!2775 m!28317))

(declare-fun m!28395 () Bool)

(assert (=> bm!2775 m!28395))

(assert (=> b!35104 d!5299))

(declare-fun mapIsEmpty!1969 () Bool)

(declare-fun mapRes!1969 () Bool)

(assert (=> mapIsEmpty!1969 mapRes!1969))

(declare-fun b!35272 () Bool)

(declare-fun e!22284 () Bool)

(assert (=> b!35272 (= e!22284 tp_is_empty!1611)))

(declare-fun condMapEmpty!1969 () Bool)

(declare-fun mapDefault!1969 () ValueCell!606)

(assert (=> mapNonEmpty!1963 (= condMapEmpty!1969 (= mapRest!1963 ((as const (Array (_ BitVec 32) ValueCell!606)) mapDefault!1969)))))

(assert (=> mapNonEmpty!1963 (= tp!5209 (and e!22284 mapRes!1969))))

(declare-fun b!35271 () Bool)

(declare-fun e!22283 () Bool)

(assert (=> b!35271 (= e!22283 tp_is_empty!1611)))

(declare-fun mapNonEmpty!1969 () Bool)

(declare-fun tp!5218 () Bool)

(assert (=> mapNonEmpty!1969 (= mapRes!1969 (and tp!5218 e!22283))))

(declare-fun mapKey!1969 () (_ BitVec 32))

(declare-fun mapValue!1969 () ValueCell!606)

(declare-fun mapRest!1969 () (Array (_ BitVec 32) ValueCell!606))

(assert (=> mapNonEmpty!1969 (= mapRest!1963 (store mapRest!1969 mapKey!1969 mapValue!1969))))

(assert (= (and mapNonEmpty!1963 condMapEmpty!1969) mapIsEmpty!1969))

(assert (= (and mapNonEmpty!1963 (not condMapEmpty!1969)) mapNonEmpty!1969))

(assert (= (and mapNonEmpty!1969 ((_ is ValueCellFull!606) mapValue!1969)) b!35271))

(assert (= (and mapNonEmpty!1963 ((_ is ValueCellFull!606) mapDefault!1969)) b!35272))

(declare-fun m!28397 () Bool)

(assert (=> mapNonEmpty!1969 m!28397))

(declare-fun b_lambda!1725 () Bool)

(assert (= b_lambda!1723 (or (and start!4494 b_free!1257) b_lambda!1725)))

(check-sat (not mapNonEmpty!1969) (not bm!2772) (not d!5281) (not b!35195) (not b!35262) (not b!35231) (not b!35196) (not bm!2767) (not b!35197) (not b!35224) (not bm!2768) (not b!35246) (not b!35205) (not b!35264) (not b_next!1257) b_and!2085 (not b!35146) tp_is_empty!1611 (not b!35201) (not b!35194) (not d!5297) (not b!35148) (not bm!2766) (not d!5283) (not b_lambda!1725) (not b!35222) (not b!35260) (not b!35198) (not bm!2775) (not bm!2769) (not b!35192))
(check-sat b_and!2085 (not b_next!1257))
