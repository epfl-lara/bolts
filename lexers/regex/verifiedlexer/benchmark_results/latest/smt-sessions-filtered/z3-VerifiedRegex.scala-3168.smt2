; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185538 () Bool)

(assert start!185538)

(declare-fun b!1858760 () Bool)

(declare-fun b_free!51973 () Bool)

(declare-fun b_next!52677 () Bool)

(assert (=> b!1858760 (= b_free!51973 (not b_next!52677))))

(declare-fun tp!529869 () Bool)

(declare-fun b_and!144241 () Bool)

(assert (=> b!1858760 (= tp!529869 b_and!144241)))

(declare-fun mapIsEmpty!8860 () Bool)

(declare-fun mapRes!8860 () Bool)

(assert (=> mapIsEmpty!8860 mapRes!8860))

(declare-fun res!832586 () Bool)

(declare-fun e!1186978 () Bool)

(assert (=> start!185538 (=> (not res!832586) (not e!1186978))))

(declare-datatypes ((V!3883 0))(
  ( (V!3884 (val!5892 Int)) )
))
(declare-datatypes ((array!6551 0))(
  ( (array!6552 (arr!2910 (Array (_ BitVec 32) (_ BitVec 64))) (size!16295 (_ BitVec 32))) )
))
(declare-datatypes ((array!6553 0))(
  ( (array!6554 (arr!2911 (Array (_ BitVec 32) V!3883)) (size!16296 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3812 0))(
  ( (LongMapFixedSize!3813 (defaultEntry!2271 Int) (mask!5623 (_ BitVec 32)) (extraKeys!2154 (_ BitVec 32)) (zeroValue!2164 V!3883) (minValue!2164 V!3883) (_size!3884 (_ BitVec 32)) (_keys!2203 array!6551) (_values!2186 array!6553) (_vacant!1967 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7491 0))(
  ( (Cell!7492 (v!26051 LongMapFixedSize!3812)) )
))
(declare-datatypes ((MutLongMap!1906 0))(
  ( (LongMap!1906 (underlying!4024 Cell!7491)) (MutLongMapExt!1905 (__x!12975 Int)) )
))
(declare-fun thiss!47603 () MutLongMap!1906)

(declare-fun valid!1531 (MutLongMap!1906) Bool)

(assert (=> start!185538 (= res!832586 (valid!1531 thiss!47603))))

(assert (=> start!185538 e!1186978))

(declare-fun e!1186975 () Bool)

(assert (=> start!185538 e!1186975))

(assert (=> start!185538 true))

(declare-fun e!1186977 () Bool)

(declare-fun e!1186976 () Bool)

(declare-fun tp_is_empty!8579 () Bool)

(declare-fun array_inv!2093 (array!6551) Bool)

(declare-fun array_inv!2094 (array!6553) Bool)

(assert (=> b!1858760 (= e!1186976 (and tp!529869 tp_is_empty!8579 (array_inv!2093 (_keys!2203 (v!26051 (underlying!4024 thiss!47603)))) (array_inv!2094 (_values!2186 (v!26051 (underlying!4024 thiss!47603)))) e!1186977))))

(declare-fun b!1858761 () Bool)

(declare-fun e!1186980 () Bool)

(assert (=> b!1858761 (= e!1186980 e!1186976)))

(declare-fun mapNonEmpty!8860 () Bool)

(declare-fun tp!529868 () Bool)

(assert (=> mapNonEmpty!8860 (= mapRes!8860 (and tp!529868 tp_is_empty!8579))))

(declare-fun mapValue!8860 () V!3883)

(declare-fun mapRest!8860 () (Array (_ BitVec 32) V!3883))

(declare-fun mapKey!8860 () (_ BitVec 32))

(assert (=> mapNonEmpty!8860 (= (arr!2911 (_values!2186 (v!26051 (underlying!4024 thiss!47603)))) (store mapRest!8860 mapKey!8860 mapValue!8860))))

(declare-fun b!1858762 () Bool)

(assert (=> b!1858762 (= e!1186977 (and tp_is_empty!8579 mapRes!8860))))

(declare-fun condMapEmpty!8860 () Bool)

(declare-fun mapDefault!8860 () V!3883)

(assert (=> b!1858762 (= condMapEmpty!8860 (= (arr!2911 (_values!2186 (v!26051 (underlying!4024 thiss!47603)))) ((as const (Array (_ BitVec 32) V!3883)) mapDefault!8860)))))

(declare-fun b!1858763 () Bool)

(declare-fun key!7122 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((tuple2!19868 0))(
  ( (tuple2!19869 (_1!11361 Bool) (_2!11361 MutLongMap!1906)) )
))
(declare-fun remove!57 (MutLongMap!1906 (_ BitVec 64)) tuple2!19868)

(assert (=> b!1858763 (= e!1186978 (not ((_ is MutLongMapExt!1905) (_2!11361 (remove!57 thiss!47603 key!7122)))))))

(declare-fun b!1858764 () Bool)

(declare-fun res!832585 () Bool)

(assert (=> b!1858764 (=> (not res!832585) (not e!1186978))))

(assert (=> b!1858764 (= res!832585 (not ((_ is LongMap!1906) thiss!47603)))))

(declare-fun b!1858765 () Bool)

(assert (=> b!1858765 (= e!1186975 e!1186980)))

(assert (= (and start!185538 res!832586) b!1858764))

(assert (= (and b!1858764 res!832585) b!1858763))

(assert (= (and b!1858762 condMapEmpty!8860) mapIsEmpty!8860))

(assert (= (and b!1858762 (not condMapEmpty!8860)) mapNonEmpty!8860))

(assert (= b!1858760 b!1858762))

(assert (= b!1858761 b!1858760))

(assert (= b!1858765 b!1858761))

(assert (= (and start!185538 ((_ is LongMap!1906) thiss!47603)) b!1858765))

(declare-fun m!2282257 () Bool)

(assert (=> start!185538 m!2282257))

(declare-fun m!2282259 () Bool)

(assert (=> b!1858760 m!2282259))

(declare-fun m!2282261 () Bool)

(assert (=> b!1858760 m!2282261))

(declare-fun m!2282263 () Bool)

(assert (=> mapNonEmpty!8860 m!2282263))

(declare-fun m!2282265 () Bool)

(assert (=> b!1858763 m!2282265))

(check-sat b_and!144241 (not b!1858763) tp_is_empty!8579 (not start!185538) (not mapNonEmpty!8860) (not b_next!52677) (not b!1858760))
(check-sat b_and!144241 (not b_next!52677))
(get-model)

(declare-fun d!567167 () Bool)

(declare-fun c!302633 () Bool)

(assert (=> d!567167 (= c!302633 ((_ is LongMap!1906) thiss!47603))))

(declare-fun e!1186983 () Bool)

(assert (=> d!567167 (= (valid!1531 thiss!47603) e!1186983)))

(declare-fun b!1858770 () Bool)

(declare-fun valid!1532 (MutLongMap!1906) Bool)

(assert (=> b!1858770 (= e!1186983 (valid!1532 thiss!47603))))

(declare-fun b!1858771 () Bool)

(declare-fun valid!1533 (MutLongMap!1906) Bool)

(assert (=> b!1858771 (= e!1186983 (valid!1533 thiss!47603))))

(assert (= (and d!567167 c!302633) b!1858770))

(assert (= (and d!567167 (not c!302633)) b!1858771))

(declare-fun m!2282267 () Bool)

(assert (=> b!1858770 m!2282267))

(declare-fun m!2282269 () Bool)

(assert (=> b!1858771 m!2282269))

(assert (=> start!185538 d!567167))

(declare-fun b!1858780 () Bool)

(declare-fun e!1186989 () Bool)

(declare-datatypes ((tuple2!19870 0))(
  ( (tuple2!19871 (_1!11362 (_ BitVec 64)) (_2!11362 V!3883)) )
))
(declare-datatypes ((List!20690 0))(
  ( (Nil!20610) (Cons!20610 (h!26011 tuple2!19870) (t!172559 List!20690)) )
))
(declare-datatypes ((ListLongMap!213 0))(
  ( (ListLongMap!214 (toList!992 List!20690)) )
))
(declare-fun call!115582 () ListLongMap!213)

(declare-fun call!115581 () ListLongMap!213)

(assert (=> b!1858780 (= e!1186989 (= call!115582 call!115581))))

(declare-fun b!1858781 () Bool)

(declare-fun res!832591 () Bool)

(declare-fun e!1186988 () Bool)

(assert (=> b!1858781 (=> (not res!832591) (not e!1186988))))

(declare-fun lt!717332 () tuple2!19868)

(assert (=> b!1858781 (= res!832591 (valid!1531 (_2!11361 lt!717332)))))

(declare-fun b!1858782 () Bool)

(declare-fun -!101 (ListLongMap!213 (_ BitVec 64)) ListLongMap!213)

(assert (=> b!1858782 (= e!1186989 (= call!115582 (-!101 call!115581 key!7122)))))

(declare-fun bm!115576 () Bool)

(declare-fun abstractMap!63 (MutLongMap!1906) ListLongMap!213)

(assert (=> bm!115576 (= call!115582 (abstractMap!63 (_2!11361 lt!717332)))))

(declare-fun b!1858783 () Bool)

(assert (=> b!1858783 (= e!1186988 e!1186989)))

(declare-fun c!302636 () Bool)

(assert (=> b!1858783 (= c!302636 (_1!11361 lt!717332))))

(declare-fun d!567169 () Bool)

(assert (=> d!567169 e!1186988))

(declare-fun res!832592 () Bool)

(assert (=> d!567169 (=> (not res!832592) (not e!1186988))))

(assert (=> d!567169 (= res!832592 ((_ is MutLongMapExt!1905) (_2!11361 lt!717332)))))

(declare-fun choose!11686 (MutLongMap!1906 (_ BitVec 64)) tuple2!19868)

(assert (=> d!567169 (= lt!717332 (choose!11686 thiss!47603 key!7122))))

(assert (=> d!567169 (valid!1531 thiss!47603)))

(assert (=> d!567169 (= (remove!57 thiss!47603 key!7122) lt!717332)))

(declare-fun bm!115577 () Bool)

(assert (=> bm!115577 (= call!115581 (abstractMap!63 thiss!47603))))

(assert (= (and d!567169 res!832592) b!1858781))

(assert (= (and b!1858781 res!832591) b!1858783))

(assert (= (and b!1858783 c!302636) b!1858782))

(assert (= (and b!1858783 (not c!302636)) b!1858780))

(assert (= (or b!1858782 b!1858780) bm!115576))

(assert (= (or b!1858782 b!1858780) bm!115577))

(declare-fun m!2282271 () Bool)

(assert (=> b!1858781 m!2282271))

(declare-fun m!2282273 () Bool)

(assert (=> d!567169 m!2282273))

(assert (=> d!567169 m!2282257))

(declare-fun m!2282275 () Bool)

(assert (=> bm!115577 m!2282275))

(declare-fun m!2282277 () Bool)

(assert (=> b!1858782 m!2282277))

(declare-fun m!2282279 () Bool)

(assert (=> bm!115576 m!2282279))

(assert (=> b!1858763 d!567169))

(declare-fun d!567171 () Bool)

(assert (=> d!567171 (= (array_inv!2093 (_keys!2203 (v!26051 (underlying!4024 thiss!47603)))) (bvsge (size!16295 (_keys!2203 (v!26051 (underlying!4024 thiss!47603)))) #b00000000000000000000000000000000))))

(assert (=> b!1858760 d!567171))

(declare-fun d!567173 () Bool)

(assert (=> d!567173 (= (array_inv!2094 (_values!2186 (v!26051 (underlying!4024 thiss!47603)))) (bvsge (size!16296 (_values!2186 (v!26051 (underlying!4024 thiss!47603)))) #b00000000000000000000000000000000))))

(assert (=> b!1858760 d!567173))

(declare-fun condMapEmpty!8863 () Bool)

(declare-fun mapDefault!8863 () V!3883)

(assert (=> mapNonEmpty!8860 (= condMapEmpty!8863 (= mapRest!8860 ((as const (Array (_ BitVec 32) V!3883)) mapDefault!8863)))))

(declare-fun mapRes!8863 () Bool)

(assert (=> mapNonEmpty!8860 (= tp!529868 (and tp_is_empty!8579 mapRes!8863))))

(declare-fun mapIsEmpty!8863 () Bool)

(assert (=> mapIsEmpty!8863 mapRes!8863))

(declare-fun mapNonEmpty!8863 () Bool)

(declare-fun tp!529872 () Bool)

(assert (=> mapNonEmpty!8863 (= mapRes!8863 (and tp!529872 tp_is_empty!8579))))

(declare-fun mapKey!8863 () (_ BitVec 32))

(declare-fun mapValue!8863 () V!3883)

(declare-fun mapRest!8863 () (Array (_ BitVec 32) V!3883))

(assert (=> mapNonEmpty!8863 (= mapRest!8860 (store mapRest!8863 mapKey!8863 mapValue!8863))))

(assert (= (and mapNonEmpty!8860 condMapEmpty!8863) mapIsEmpty!8863))

(assert (= (and mapNonEmpty!8860 (not condMapEmpty!8863)) mapNonEmpty!8863))

(declare-fun m!2282281 () Bool)

(assert (=> mapNonEmpty!8863 m!2282281))

(check-sat (not mapNonEmpty!8863) (not bm!115577) b_and!144241 (not d!567169) (not b!1858781) tp_is_empty!8579 (not b!1858771) (not b_next!52677) (not bm!115576) (not b!1858782) (not b!1858770))
(check-sat b_and!144241 (not b_next!52677))
