; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17020 () Bool)

(assert start!17020)

(declare-fun b!170840 () Bool)

(declare-fun b_free!4233 () Bool)

(declare-fun b_next!4233 () Bool)

(assert (=> b!170840 (= b_free!4233 (not b_next!4233))))

(declare-fun tp!15328 () Bool)

(declare-fun b_and!10665 () Bool)

(assert (=> b!170840 (= tp!15328 b_and!10665)))

(declare-fun b!170841 () Bool)

(declare-fun e!112795 () Bool)

(declare-fun e!112796 () Bool)

(assert (=> b!170841 (= e!112795 e!112796)))

(declare-fun res!81235 () Bool)

(assert (=> b!170841 (=> (not res!81235) (not e!112796))))

(declare-datatypes ((V!4987 0))(
  ( (V!4988 (val!2047 Int)) )
))
(declare-datatypes ((tuple2!3230 0))(
  ( (tuple2!3231 (_1!1625 (_ BitVec 64)) (_2!1625 V!4987)) )
))
(declare-datatypes ((List!2213 0))(
  ( (Nil!2210) (Cons!2209 (h!2826 tuple2!3230) (t!7023 List!2213)) )
))
(declare-datatypes ((ListLongMap!2171 0))(
  ( (ListLongMap!2172 (toList!1101 List!2213)) )
))
(declare-fun lt!85065 () ListLongMap!2171)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun contains!1143 (ListLongMap!2171 (_ BitVec 64)) Bool)

(assert (=> b!170841 (= res!81235 (contains!1143 lt!85065 key!828))))

(declare-datatypes ((ValueCell!1659 0))(
  ( (ValueCellFull!1659 (v!3908 V!4987)) (EmptyCell!1659) )
))
(declare-datatypes ((array!7122 0))(
  ( (array!7123 (arr!3388 (Array (_ BitVec 32) (_ BitVec 64))) (size!3681 (_ BitVec 32))) )
))
(declare-datatypes ((array!7124 0))(
  ( (array!7125 (arr!3389 (Array (_ BitVec 32) ValueCell!1659)) (size!3682 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2226 0))(
  ( (LongMapFixedSize!2227 (defaultEntry!3555 Int) (mask!8383 (_ BitVec 32)) (extraKeys!3296 (_ BitVec 32)) (zeroValue!3398 V!4987) (minValue!3398 V!4987) (_size!1162 (_ BitVec 32)) (_keys!5387 array!7122) (_values!3538 array!7124) (_vacant!1162 (_ BitVec 32))) )
))
(declare-fun lt!85067 () LongMapFixedSize!2226)

(declare-fun map!1852 (LongMapFixedSize!2226) ListLongMap!2171)

(assert (=> b!170841 (= lt!85065 (map!1852 lt!85067))))

(declare-fun b!170842 () Bool)

(declare-fun e!112793 () Bool)

(declare-fun tp_is_empty!4005 () Bool)

(assert (=> b!170842 (= e!112793 tp_is_empty!4005)))

(declare-fun b!170843 () Bool)

(declare-fun e!112799 () Bool)

(assert (=> b!170843 (= e!112799 tp_is_empty!4005)))

(declare-fun mapNonEmpty!6800 () Bool)

(declare-fun mapRes!6800 () Bool)

(declare-fun tp!15329 () Bool)

(assert (=> mapNonEmpty!6800 (= mapRes!6800 (and tp!15329 e!112793))))

(declare-fun mapKey!6800 () (_ BitVec 32))

(declare-fun mapValue!6800 () ValueCell!1659)

(declare-fun thiss!1248 () LongMapFixedSize!2226)

(declare-fun mapRest!6800 () (Array (_ BitVec 32) ValueCell!1659))

(assert (=> mapNonEmpty!6800 (= (arr!3389 (_values!3538 thiss!1248)) (store mapRest!6800 mapKey!6800 mapValue!6800))))

(declare-fun b!170844 () Bool)

(declare-fun e!112798 () Bool)

(assert (=> b!170844 (= e!112798 (not e!112795))))

(declare-fun res!81236 () Bool)

(assert (=> b!170844 (=> (not res!81236) (not e!112795))))

(declare-fun valid!939 (LongMapFixedSize!2226) Bool)

(assert (=> b!170844 (= res!81236 (valid!939 lt!85067))))

(declare-fun v!309 () V!4987)

(assert (=> b!170844 (= lt!85067 (LongMapFixedSize!2227 (defaultEntry!3555 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) (_size!1162 thiss!1248) (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (_vacant!1162 thiss!1248)))))

(declare-fun +!239 (ListLongMap!2171 tuple2!3230) ListLongMap!2171)

(declare-fun getCurrentListMap!750 (array!7122 array!7124 (_ BitVec 32) (_ BitVec 32) V!4987 V!4987 (_ BitVec 32) Int) ListLongMap!2171)

(assert (=> b!170844 (= (+!239 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-datatypes ((Unit!5249 0))(
  ( (Unit!5250) )
))
(declare-fun lt!85066 () Unit!5249)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!85 (array!7122 array!7124 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!4987 V!4987 V!4987 Int) Unit!5249)

(assert (=> b!170844 (= lt!85066 (lemmaChangeZeroKeyThenAddPairToListMap!85 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) (zeroValue!3398 thiss!1248) v!309 (minValue!3398 thiss!1248) (defaultEntry!3555 thiss!1248)))))

(declare-fun b!170845 () Bool)

(assert (=> b!170845 (= e!112796 (= lt!85065 (+!239 (map!1852 thiss!1248) (tuple2!3231 key!828 v!309))))))

(declare-fun mapIsEmpty!6800 () Bool)

(assert (=> mapIsEmpty!6800 mapRes!6800))

(declare-fun e!112797 () Bool)

(declare-fun e!112794 () Bool)

(declare-fun array_inv!2159 (array!7122) Bool)

(declare-fun array_inv!2160 (array!7124) Bool)

(assert (=> b!170840 (= e!112794 (and tp!15328 tp_is_empty!4005 (array_inv!2159 (_keys!5387 thiss!1248)) (array_inv!2160 (_values!3538 thiss!1248)) e!112797))))

(declare-fun res!81237 () Bool)

(assert (=> start!17020 (=> (not res!81237) (not e!112798))))

(assert (=> start!17020 (= res!81237 (valid!939 thiss!1248))))

(assert (=> start!17020 e!112798))

(assert (=> start!17020 e!112794))

(assert (=> start!17020 true))

(assert (=> start!17020 tp_is_empty!4005))

(declare-fun b!170846 () Bool)

(declare-fun res!81234 () Bool)

(assert (=> b!170846 (=> (not res!81234) (not e!112798))))

(assert (=> b!170846 (= res!81234 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!170847 () Bool)

(assert (=> b!170847 (= e!112797 (and e!112799 mapRes!6800))))

(declare-fun condMapEmpty!6800 () Bool)

(declare-fun mapDefault!6800 () ValueCell!1659)

(assert (=> b!170847 (= condMapEmpty!6800 (= (arr!3389 (_values!3538 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1659)) mapDefault!6800)))))

(assert (= (and start!17020 res!81237) b!170846))

(assert (= (and b!170846 res!81234) b!170844))

(assert (= (and b!170844 res!81236) b!170841))

(assert (= (and b!170841 res!81235) b!170845))

(assert (= (and b!170847 condMapEmpty!6800) mapIsEmpty!6800))

(assert (= (and b!170847 (not condMapEmpty!6800)) mapNonEmpty!6800))

(get-info :version)

(assert (= (and mapNonEmpty!6800 ((_ is ValueCellFull!1659) mapValue!6800)) b!170842))

(assert (= (and b!170847 ((_ is ValueCellFull!1659) mapDefault!6800)) b!170843))

(assert (= b!170840 b!170847))

(assert (= start!17020 b!170840))

(declare-fun m!199167 () Bool)

(assert (=> b!170840 m!199167))

(declare-fun m!199169 () Bool)

(assert (=> b!170840 m!199169))

(declare-fun m!199171 () Bool)

(assert (=> b!170844 m!199171))

(declare-fun m!199173 () Bool)

(assert (=> b!170844 m!199173))

(declare-fun m!199175 () Bool)

(assert (=> b!170844 m!199175))

(assert (=> b!170844 m!199171))

(declare-fun m!199177 () Bool)

(assert (=> b!170844 m!199177))

(declare-fun m!199179 () Bool)

(assert (=> b!170844 m!199179))

(declare-fun m!199181 () Bool)

(assert (=> b!170845 m!199181))

(assert (=> b!170845 m!199181))

(declare-fun m!199183 () Bool)

(assert (=> b!170845 m!199183))

(declare-fun m!199185 () Bool)

(assert (=> b!170841 m!199185))

(declare-fun m!199187 () Bool)

(assert (=> b!170841 m!199187))

(declare-fun m!199189 () Bool)

(assert (=> start!17020 m!199189))

(declare-fun m!199191 () Bool)

(assert (=> mapNonEmpty!6800 m!199191))

(check-sat (not b_next!4233) (not b!170844) b_and!10665 (not b!170845) (not b!170841) (not b!170840) (not mapNonEmpty!6800) (not start!17020) tp_is_empty!4005)
(check-sat b_and!10665 (not b_next!4233))
(get-model)

(declare-fun d!51683 () Bool)

(assert (=> d!51683 (= (array_inv!2159 (_keys!5387 thiss!1248)) (bvsge (size!3681 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170840 d!51683))

(declare-fun d!51685 () Bool)

(assert (=> d!51685 (= (array_inv!2160 (_values!3538 thiss!1248)) (bvsge (size!3682 (_values!3538 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170840 d!51685))

(declare-fun b!170914 () Bool)

(declare-fun res!81276 () Bool)

(declare-fun e!112850 () Bool)

(assert (=> b!170914 (=> (not res!81276) (not e!112850))))

(declare-fun e!112862 () Bool)

(assert (=> b!170914 (= res!81276 e!112862)))

(declare-fun res!81274 () Bool)

(assert (=> b!170914 (=> res!81274 e!112862)))

(declare-fun e!112861 () Bool)

(assert (=> b!170914 (= res!81274 (not e!112861))))

(declare-fun res!81273 () Bool)

(assert (=> b!170914 (=> (not res!81273) (not e!112861))))

(assert (=> b!170914 (= res!81273 (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun bm!17399 () Bool)

(declare-fun call!17405 () ListLongMap!2171)

(declare-fun call!17406 () ListLongMap!2171)

(assert (=> bm!17399 (= call!17405 call!17406)))

(declare-fun d!51687 () Bool)

(assert (=> d!51687 e!112850))

(declare-fun res!81269 () Bool)

(assert (=> d!51687 (=> (not res!81269) (not e!112850))))

(assert (=> d!51687 (= res!81269 (or (bvsge #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))))

(declare-fun lt!85127 () ListLongMap!2171)

(declare-fun lt!85136 () ListLongMap!2171)

(assert (=> d!51687 (= lt!85127 lt!85136)))

(declare-fun lt!85139 () Unit!5249)

(declare-fun e!112854 () Unit!5249)

(assert (=> d!51687 (= lt!85139 e!112854)))

(declare-fun c!30495 () Bool)

(declare-fun e!112855 () Bool)

(assert (=> d!51687 (= c!30495 e!112855)))

(declare-fun res!81272 () Bool)

(assert (=> d!51687 (=> (not res!81272) (not e!112855))))

(assert (=> d!51687 (= res!81272 (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun e!112853 () ListLongMap!2171)

(assert (=> d!51687 (= lt!85136 e!112853)))

(declare-fun c!30493 () Bool)

(assert (=> d!51687 (= c!30493 (and (not (= (bvand (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!51687 (validMask!0 (mask!8383 thiss!1248))))

(assert (=> d!51687 (= (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)) lt!85127)))

(declare-fun bm!17400 () Bool)

(declare-fun call!17407 () ListLongMap!2171)

(declare-fun call!17404 () ListLongMap!2171)

(assert (=> bm!17400 (= call!17407 call!17404)))

(declare-fun b!170915 () Bool)

(declare-fun e!112852 () Bool)

(declare-fun apply!129 (ListLongMap!2171 (_ BitVec 64)) V!4987)

(assert (=> b!170915 (= e!112852 (= (apply!129 lt!85127 #b0000000000000000000000000000000000000000000000000000000000000000) v!309))))

(declare-fun b!170916 () Bool)

(declare-fun Unit!5251 () Unit!5249)

(assert (=> b!170916 (= e!112854 Unit!5251)))

(declare-fun b!170917 () Bool)

(declare-fun lt!85131 () Unit!5249)

(assert (=> b!170917 (= e!112854 lt!85131)))

(declare-fun lt!85141 () ListLongMap!2171)

(declare-fun getCurrentListMapNoExtraKeys!159 (array!7122 array!7124 (_ BitVec 32) (_ BitVec 32) V!4987 V!4987 (_ BitVec 32) Int) ListLongMap!2171)

(assert (=> b!170917 (= lt!85141 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-fun lt!85126 () (_ BitVec 64))

(assert (=> b!170917 (= lt!85126 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85124 () (_ BitVec 64))

(assert (=> b!170917 (= lt!85124 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85140 () Unit!5249)

(declare-fun addStillContains!105 (ListLongMap!2171 (_ BitVec 64) V!4987 (_ BitVec 64)) Unit!5249)

(assert (=> b!170917 (= lt!85140 (addStillContains!105 lt!85141 lt!85126 v!309 lt!85124))))

(assert (=> b!170917 (contains!1143 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)) lt!85124)))

(declare-fun lt!85121 () Unit!5249)

(assert (=> b!170917 (= lt!85121 lt!85140)))

(declare-fun lt!85133 () ListLongMap!2171)

(assert (=> b!170917 (= lt!85133 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-fun lt!85132 () (_ BitVec 64))

(assert (=> b!170917 (= lt!85132 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85125 () (_ BitVec 64))

(assert (=> b!170917 (= lt!85125 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85122 () Unit!5249)

(declare-fun addApplyDifferent!105 (ListLongMap!2171 (_ BitVec 64) V!4987 (_ BitVec 64)) Unit!5249)

(assert (=> b!170917 (= lt!85122 (addApplyDifferent!105 lt!85133 lt!85132 (minValue!3398 thiss!1248) lt!85125))))

(assert (=> b!170917 (= (apply!129 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) lt!85125) (apply!129 lt!85133 lt!85125))))

(declare-fun lt!85130 () Unit!5249)

(assert (=> b!170917 (= lt!85130 lt!85122)))

(declare-fun lt!85123 () ListLongMap!2171)

(assert (=> b!170917 (= lt!85123 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-fun lt!85129 () (_ BitVec 64))

(assert (=> b!170917 (= lt!85129 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85138 () (_ BitVec 64))

(assert (=> b!170917 (= lt!85138 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85135 () Unit!5249)

(assert (=> b!170917 (= lt!85135 (addApplyDifferent!105 lt!85123 lt!85129 v!309 lt!85138))))

(assert (=> b!170917 (= (apply!129 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309)) lt!85138) (apply!129 lt!85123 lt!85138))))

(declare-fun lt!85142 () Unit!5249)

(assert (=> b!170917 (= lt!85142 lt!85135)))

(declare-fun lt!85137 () ListLongMap!2171)

(assert (=> b!170917 (= lt!85137 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-fun lt!85128 () (_ BitVec 64))

(assert (=> b!170917 (= lt!85128 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85134 () (_ BitVec 64))

(assert (=> b!170917 (= lt!85134 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170917 (= lt!85131 (addApplyDifferent!105 lt!85137 lt!85128 (minValue!3398 thiss!1248) lt!85134))))

(assert (=> b!170917 (= (apply!129 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) lt!85134) (apply!129 lt!85137 lt!85134))))

(declare-fun b!170918 () Bool)

(declare-fun e!112860 () Bool)

(declare-fun call!17403 () Bool)

(assert (=> b!170918 (= e!112860 (not call!17403))))

(declare-fun b!170919 () Bool)

(declare-fun e!112859 () ListLongMap!2171)

(assert (=> b!170919 (= e!112859 call!17405)))

(declare-fun b!170920 () Bool)

(assert (=> b!170920 (= e!112853 (+!239 call!17404 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))

(declare-fun bm!17401 () Bool)

(declare-fun call!17408 () Bool)

(assert (=> bm!17401 (= call!17408 (contains!1143 lt!85127 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!170921 () Bool)

(declare-fun e!112856 () ListLongMap!2171)

(assert (=> b!170921 (= e!112856 call!17407)))

(declare-fun b!170922 () Bool)

(assert (=> b!170922 (= e!112859 call!17407)))

(declare-fun bm!17402 () Bool)

(declare-fun call!17402 () ListLongMap!2171)

(assert (=> bm!17402 (= call!17406 call!17402)))

(declare-fun b!170923 () Bool)

(declare-fun c!30494 () Bool)

(assert (=> b!170923 (= c!30494 (and (not (= (bvand (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!170923 (= e!112856 e!112859)))

(declare-fun bm!17403 () Bool)

(assert (=> bm!17403 (= call!17402 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-fun b!170924 () Bool)

(declare-fun e!112851 () Bool)

(assert (=> b!170924 (= e!112851 (not call!17408))))

(declare-fun b!170925 () Bool)

(declare-fun e!112857 () Bool)

(assert (=> b!170925 (= e!112862 e!112857)))

(declare-fun res!81268 () Bool)

(assert (=> b!170925 (=> (not res!81268) (not e!112857))))

(assert (=> b!170925 (= res!81268 (contains!1143 lt!85127 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!170925 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun c!30491 () Bool)

(declare-fun bm!17404 () Bool)

(assert (=> bm!17404 (= call!17404 (+!239 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405)) (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun b!170926 () Bool)

(assert (=> b!170926 (= e!112850 e!112851)))

(declare-fun c!30490 () Bool)

(assert (=> b!170926 (= c!30490 (not (= (bvand (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!170927 () Bool)

(declare-fun e!112858 () Bool)

(assert (=> b!170927 (= e!112851 e!112858)))

(declare-fun res!81271 () Bool)

(assert (=> b!170927 (= res!81271 call!17408)))

(assert (=> b!170927 (=> (not res!81271) (not e!112858))))

(declare-fun b!170928 () Bool)

(assert (=> b!170928 (= e!112853 e!112856)))

(assert (=> b!170928 (= c!30491 (and (not (= (bvand (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!170929 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!170929 (= e!112861 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!170930 () Bool)

(assert (=> b!170930 (= e!112858 (= (apply!129 lt!85127 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3398 thiss!1248)))))

(declare-fun b!170931 () Bool)

(declare-fun res!81270 () Bool)

(assert (=> b!170931 (=> (not res!81270) (not e!112850))))

(assert (=> b!170931 (= res!81270 e!112860)))

(declare-fun c!30492 () Bool)

(assert (=> b!170931 (= c!30492 (not (= (bvand (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!170932 () Bool)

(declare-fun get!1939 (ValueCell!1659 V!4987) V!4987)

(declare-fun dynLambda!467 (Int (_ BitVec 64)) V!4987)

(assert (=> b!170932 (= e!112857 (= (apply!129 lt!85127 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!170932 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3682 (_values!3538 thiss!1248))))))

(assert (=> b!170932 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun b!170933 () Bool)

(assert (=> b!170933 (= e!112855 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17405 () Bool)

(assert (=> bm!17405 (= call!17403 (contains!1143 lt!85127 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!170934 () Bool)

(assert (=> b!170934 (= e!112860 e!112852)))

(declare-fun res!81275 () Bool)

(assert (=> b!170934 (= res!81275 call!17403)))

(assert (=> b!170934 (=> (not res!81275) (not e!112852))))

(assert (= (and d!51687 c!30493) b!170920))

(assert (= (and d!51687 (not c!30493)) b!170928))

(assert (= (and b!170928 c!30491) b!170921))

(assert (= (and b!170928 (not c!30491)) b!170923))

(assert (= (and b!170923 c!30494) b!170922))

(assert (= (and b!170923 (not c!30494)) b!170919))

(assert (= (or b!170922 b!170919) bm!17399))

(assert (= (or b!170921 bm!17399) bm!17402))

(assert (= (or b!170921 b!170922) bm!17400))

(assert (= (or b!170920 bm!17402) bm!17403))

(assert (= (or b!170920 bm!17400) bm!17404))

(assert (= (and d!51687 res!81272) b!170933))

(assert (= (and d!51687 c!30495) b!170917))

(assert (= (and d!51687 (not c!30495)) b!170916))

(assert (= (and d!51687 res!81269) b!170914))

(assert (= (and b!170914 res!81273) b!170929))

(assert (= (and b!170914 (not res!81274)) b!170925))

(assert (= (and b!170925 res!81268) b!170932))

(assert (= (and b!170914 res!81276) b!170931))

(assert (= (and b!170931 c!30492) b!170934))

(assert (= (and b!170931 (not c!30492)) b!170918))

(assert (= (and b!170934 res!81275) b!170915))

(assert (= (or b!170934 b!170918) bm!17405))

(assert (= (and b!170931 res!81270) b!170926))

(assert (= (and b!170926 c!30490) b!170927))

(assert (= (and b!170926 (not c!30490)) b!170924))

(assert (= (and b!170927 res!81271) b!170930))

(assert (= (or b!170927 b!170924) bm!17401))

(declare-fun b_lambda!6917 () Bool)

(assert (=> (not b_lambda!6917) (not b!170932)))

(declare-fun t!7026 () Bool)

(declare-fun tb!2773 () Bool)

(assert (=> (and b!170840 (= (defaultEntry!3555 thiss!1248) (defaultEntry!3555 thiss!1248)) t!7026) tb!2773))

(declare-fun result!4569 () Bool)

(assert (=> tb!2773 (= result!4569 tp_is_empty!4005)))

(assert (=> b!170932 t!7026))

(declare-fun b_and!10669 () Bool)

(assert (= b_and!10665 (and (=> t!7026 result!4569) b_and!10669)))

(declare-fun m!199219 () Bool)

(assert (=> b!170925 m!199219))

(assert (=> b!170925 m!199219))

(declare-fun m!199221 () Bool)

(assert (=> b!170925 m!199221))

(declare-fun m!199223 () Bool)

(assert (=> bm!17405 m!199223))

(assert (=> b!170929 m!199219))

(assert (=> b!170929 m!199219))

(declare-fun m!199225 () Bool)

(assert (=> b!170929 m!199225))

(declare-fun m!199227 () Bool)

(assert (=> bm!17404 m!199227))

(declare-fun m!199229 () Bool)

(assert (=> bm!17401 m!199229))

(declare-fun m!199231 () Bool)

(assert (=> b!170917 m!199231))

(declare-fun m!199233 () Bool)

(assert (=> b!170917 m!199233))

(declare-fun m!199235 () Bool)

(assert (=> b!170917 m!199235))

(declare-fun m!199237 () Bool)

(assert (=> b!170917 m!199237))

(declare-fun m!199239 () Bool)

(assert (=> b!170917 m!199239))

(assert (=> b!170917 m!199219))

(declare-fun m!199241 () Bool)

(assert (=> b!170917 m!199241))

(declare-fun m!199243 () Bool)

(assert (=> b!170917 m!199243))

(declare-fun m!199245 () Bool)

(assert (=> b!170917 m!199245))

(declare-fun m!199247 () Bool)

(assert (=> b!170917 m!199247))

(declare-fun m!199249 () Bool)

(assert (=> b!170917 m!199249))

(assert (=> b!170917 m!199235))

(declare-fun m!199251 () Bool)

(assert (=> b!170917 m!199251))

(declare-fun m!199253 () Bool)

(assert (=> b!170917 m!199253))

(declare-fun m!199255 () Bool)

(assert (=> b!170917 m!199255))

(assert (=> b!170917 m!199239))

(declare-fun m!199257 () Bool)

(assert (=> b!170917 m!199257))

(assert (=> b!170917 m!199251))

(declare-fun m!199259 () Bool)

(assert (=> b!170917 m!199259))

(declare-fun m!199261 () Bool)

(assert (=> b!170917 m!199261))

(assert (=> b!170917 m!199245))

(declare-fun m!199263 () Bool)

(assert (=> b!170915 m!199263))

(assert (=> b!170933 m!199219))

(assert (=> b!170933 m!199219))

(assert (=> b!170933 m!199225))

(declare-fun m!199265 () Bool)

(assert (=> b!170932 m!199265))

(assert (=> b!170932 m!199219))

(declare-fun m!199267 () Bool)

(assert (=> b!170932 m!199267))

(assert (=> b!170932 m!199219))

(declare-fun m!199269 () Bool)

(assert (=> b!170932 m!199269))

(assert (=> b!170932 m!199265))

(assert (=> b!170932 m!199267))

(declare-fun m!199271 () Bool)

(assert (=> b!170932 m!199271))

(declare-fun m!199273 () Bool)

(assert (=> d!51687 m!199273))

(declare-fun m!199275 () Bool)

(assert (=> b!170920 m!199275))

(assert (=> bm!17403 m!199255))

(declare-fun m!199277 () Bool)

(assert (=> b!170930 m!199277))

(assert (=> b!170844 d!51687))

(declare-fun d!51689 () Bool)

(declare-fun res!81283 () Bool)

(declare-fun e!112865 () Bool)

(assert (=> d!51689 (=> (not res!81283) (not e!112865))))

(declare-fun simpleValid!134 (LongMapFixedSize!2226) Bool)

(assert (=> d!51689 (= res!81283 (simpleValid!134 lt!85067))))

(assert (=> d!51689 (= (valid!939 lt!85067) e!112865)))

(declare-fun b!170943 () Bool)

(declare-fun res!81284 () Bool)

(assert (=> b!170943 (=> (not res!81284) (not e!112865))))

(declare-fun arrayCountValidKeys!0 (array!7122 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!170943 (= res!81284 (= (arrayCountValidKeys!0 (_keys!5387 lt!85067) #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))) (_size!1162 lt!85067)))))

(declare-fun b!170944 () Bool)

(declare-fun res!81285 () Bool)

(assert (=> b!170944 (=> (not res!81285) (not e!112865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7122 (_ BitVec 32)) Bool)

(assert (=> b!170944 (= res!81285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5387 lt!85067) (mask!8383 lt!85067)))))

(declare-fun b!170945 () Bool)

(declare-datatypes ((List!2215 0))(
  ( (Nil!2212) (Cons!2211 (h!2828 (_ BitVec 64)) (t!7027 List!2215)) )
))
(declare-fun arrayNoDuplicates!0 (array!7122 (_ BitVec 32) List!2215) Bool)

(assert (=> b!170945 (= e!112865 (arrayNoDuplicates!0 (_keys!5387 lt!85067) #b00000000000000000000000000000000 Nil!2212))))

(assert (= (and d!51689 res!81283) b!170943))

(assert (= (and b!170943 res!81284) b!170944))

(assert (= (and b!170944 res!81285) b!170945))

(declare-fun m!199279 () Bool)

(assert (=> d!51689 m!199279))

(declare-fun m!199281 () Bool)

(assert (=> b!170943 m!199281))

(declare-fun m!199283 () Bool)

(assert (=> b!170944 m!199283))

(declare-fun m!199285 () Bool)

(assert (=> b!170945 m!199285))

(assert (=> b!170844 d!51689))

(declare-fun d!51691 () Bool)

(assert (=> d!51691 (= (+!239 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-fun lt!85145 () Unit!5249)

(declare-fun choose!930 (array!7122 array!7124 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!4987 V!4987 V!4987 Int) Unit!5249)

(assert (=> d!51691 (= lt!85145 (choose!930 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) (zeroValue!3398 thiss!1248) v!309 (minValue!3398 thiss!1248) (defaultEntry!3555 thiss!1248)))))

(assert (=> d!51691 (validMask!0 (mask!8383 thiss!1248))))

(assert (=> d!51691 (= (lemmaChangeZeroKeyThenAddPairToListMap!85 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) (zeroValue!3398 thiss!1248) v!309 (minValue!3398 thiss!1248) (defaultEntry!3555 thiss!1248)) lt!85145)))

(declare-fun bs!7048 () Bool)

(assert (= bs!7048 d!51691))

(declare-fun m!199287 () Bool)

(assert (=> bs!7048 m!199287))

(assert (=> bs!7048 m!199173))

(assert (=> bs!7048 m!199273))

(assert (=> bs!7048 m!199171))

(assert (=> bs!7048 m!199177))

(assert (=> bs!7048 m!199171))

(assert (=> b!170844 d!51691))

(declare-fun b!170946 () Bool)

(declare-fun res!81294 () Bool)

(declare-fun e!112866 () Bool)

(assert (=> b!170946 (=> (not res!81294) (not e!112866))))

(declare-fun e!112878 () Bool)

(assert (=> b!170946 (= res!81294 e!112878)))

(declare-fun res!81292 () Bool)

(assert (=> b!170946 (=> res!81292 e!112878)))

(declare-fun e!112877 () Bool)

(assert (=> b!170946 (= res!81292 (not e!112877))))

(declare-fun res!81291 () Bool)

(assert (=> b!170946 (=> (not res!81291) (not e!112877))))

(assert (=> b!170946 (= res!81291 (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun bm!17406 () Bool)

(declare-fun call!17412 () ListLongMap!2171)

(declare-fun call!17413 () ListLongMap!2171)

(assert (=> bm!17406 (= call!17412 call!17413)))

(declare-fun d!51693 () Bool)

(assert (=> d!51693 e!112866))

(declare-fun res!81287 () Bool)

(assert (=> d!51693 (=> (not res!81287) (not e!112866))))

(assert (=> d!51693 (= res!81287 (or (bvsge #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))))

(declare-fun lt!85152 () ListLongMap!2171)

(declare-fun lt!85161 () ListLongMap!2171)

(assert (=> d!51693 (= lt!85152 lt!85161)))

(declare-fun lt!85164 () Unit!5249)

(declare-fun e!112870 () Unit!5249)

(assert (=> d!51693 (= lt!85164 e!112870)))

(declare-fun c!30501 () Bool)

(declare-fun e!112871 () Bool)

(assert (=> d!51693 (= c!30501 e!112871)))

(declare-fun res!81290 () Bool)

(assert (=> d!51693 (=> (not res!81290) (not e!112871))))

(assert (=> d!51693 (= res!81290 (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun e!112869 () ListLongMap!2171)

(assert (=> d!51693 (= lt!85161 e!112869)))

(declare-fun c!30499 () Bool)

(assert (=> d!51693 (= c!30499 (and (not (= (bvand (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3296 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!51693 (validMask!0 (mask!8383 thiss!1248))))

(assert (=> d!51693 (= (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)) lt!85152)))

(declare-fun bm!17407 () Bool)

(declare-fun call!17414 () ListLongMap!2171)

(declare-fun call!17411 () ListLongMap!2171)

(assert (=> bm!17407 (= call!17414 call!17411)))

(declare-fun b!170947 () Bool)

(declare-fun e!112868 () Bool)

(assert (=> b!170947 (= e!112868 (= (apply!129 lt!85152 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3398 thiss!1248)))))

(declare-fun b!170948 () Bool)

(declare-fun Unit!5252 () Unit!5249)

(assert (=> b!170948 (= e!112870 Unit!5252)))

(declare-fun b!170949 () Bool)

(declare-fun lt!85156 () Unit!5249)

(assert (=> b!170949 (= e!112870 lt!85156)))

(declare-fun lt!85166 () ListLongMap!2171)

(assert (=> b!170949 (= lt!85166 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-fun lt!85151 () (_ BitVec 64))

(assert (=> b!170949 (= lt!85151 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85149 () (_ BitVec 64))

(assert (=> b!170949 (= lt!85149 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85165 () Unit!5249)

(assert (=> b!170949 (= lt!85165 (addStillContains!105 lt!85166 lt!85151 (zeroValue!3398 thiss!1248) lt!85149))))

(assert (=> b!170949 (contains!1143 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) lt!85149)))

(declare-fun lt!85146 () Unit!5249)

(assert (=> b!170949 (= lt!85146 lt!85165)))

(declare-fun lt!85158 () ListLongMap!2171)

(assert (=> b!170949 (= lt!85158 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-fun lt!85157 () (_ BitVec 64))

(assert (=> b!170949 (= lt!85157 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85150 () (_ BitVec 64))

(assert (=> b!170949 (= lt!85150 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85147 () Unit!5249)

(assert (=> b!170949 (= lt!85147 (addApplyDifferent!105 lt!85158 lt!85157 (minValue!3398 thiss!1248) lt!85150))))

(assert (=> b!170949 (= (apply!129 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) lt!85150) (apply!129 lt!85158 lt!85150))))

(declare-fun lt!85155 () Unit!5249)

(assert (=> b!170949 (= lt!85155 lt!85147)))

(declare-fun lt!85148 () ListLongMap!2171)

(assert (=> b!170949 (= lt!85148 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-fun lt!85154 () (_ BitVec 64))

(assert (=> b!170949 (= lt!85154 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85163 () (_ BitVec 64))

(assert (=> b!170949 (= lt!85163 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85160 () Unit!5249)

(assert (=> b!170949 (= lt!85160 (addApplyDifferent!105 lt!85148 lt!85154 (zeroValue!3398 thiss!1248) lt!85163))))

(assert (=> b!170949 (= (apply!129 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) lt!85163) (apply!129 lt!85148 lt!85163))))

(declare-fun lt!85167 () Unit!5249)

(assert (=> b!170949 (= lt!85167 lt!85160)))

(declare-fun lt!85162 () ListLongMap!2171)

(assert (=> b!170949 (= lt!85162 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-fun lt!85153 () (_ BitVec 64))

(assert (=> b!170949 (= lt!85153 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85159 () (_ BitVec 64))

(assert (=> b!170949 (= lt!85159 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170949 (= lt!85156 (addApplyDifferent!105 lt!85162 lt!85153 (minValue!3398 thiss!1248) lt!85159))))

(assert (=> b!170949 (= (apply!129 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) lt!85159) (apply!129 lt!85162 lt!85159))))

(declare-fun b!170950 () Bool)

(declare-fun e!112876 () Bool)

(declare-fun call!17410 () Bool)

(assert (=> b!170950 (= e!112876 (not call!17410))))

(declare-fun b!170951 () Bool)

(declare-fun e!112875 () ListLongMap!2171)

(assert (=> b!170951 (= e!112875 call!17412)))

(declare-fun b!170952 () Bool)

(assert (=> b!170952 (= e!112869 (+!239 call!17411 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))

(declare-fun bm!17408 () Bool)

(declare-fun call!17415 () Bool)

(assert (=> bm!17408 (= call!17415 (contains!1143 lt!85152 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!170953 () Bool)

(declare-fun e!112872 () ListLongMap!2171)

(assert (=> b!170953 (= e!112872 call!17414)))

(declare-fun b!170954 () Bool)

(assert (=> b!170954 (= e!112875 call!17414)))

(declare-fun bm!17409 () Bool)

(declare-fun call!17409 () ListLongMap!2171)

(assert (=> bm!17409 (= call!17413 call!17409)))

(declare-fun b!170955 () Bool)

(declare-fun c!30500 () Bool)

(assert (=> b!170955 (= c!30500 (and (not (= (bvand (extraKeys!3296 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!170955 (= e!112872 e!112875)))

(declare-fun bm!17410 () Bool)

(assert (=> bm!17410 (= call!17409 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-fun b!170956 () Bool)

(declare-fun e!112867 () Bool)

(assert (=> b!170956 (= e!112867 (not call!17415))))

(declare-fun b!170957 () Bool)

(declare-fun e!112873 () Bool)

(assert (=> b!170957 (= e!112878 e!112873)))

(declare-fun res!81286 () Bool)

(assert (=> b!170957 (=> (not res!81286) (not e!112873))))

(assert (=> b!170957 (= res!81286 (contains!1143 lt!85152 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!170957 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun bm!17411 () Bool)

(declare-fun c!30497 () Bool)

(assert (=> bm!17411 (= call!17411 (+!239 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412)) (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun b!170958 () Bool)

(assert (=> b!170958 (= e!112866 e!112867)))

(declare-fun c!30496 () Bool)

(assert (=> b!170958 (= c!30496 (not (= (bvand (extraKeys!3296 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!170959 () Bool)

(declare-fun e!112874 () Bool)

(assert (=> b!170959 (= e!112867 e!112874)))

(declare-fun res!81289 () Bool)

(assert (=> b!170959 (= res!81289 call!17415)))

(assert (=> b!170959 (=> (not res!81289) (not e!112874))))

(declare-fun b!170960 () Bool)

(assert (=> b!170960 (= e!112869 e!112872)))

(assert (=> b!170960 (= c!30497 (and (not (= (bvand (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3296 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!170961 () Bool)

(assert (=> b!170961 (= e!112877 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!170962 () Bool)

(assert (=> b!170962 (= e!112874 (= (apply!129 lt!85152 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3398 thiss!1248)))))

(declare-fun b!170963 () Bool)

(declare-fun res!81288 () Bool)

(assert (=> b!170963 (=> (not res!81288) (not e!112866))))

(assert (=> b!170963 (= res!81288 e!112876)))

(declare-fun c!30498 () Bool)

(assert (=> b!170963 (= c!30498 (not (= (bvand (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!170964 () Bool)

(assert (=> b!170964 (= e!112873 (= (apply!129 lt!85152 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!170964 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3682 (_values!3538 thiss!1248))))))

(assert (=> b!170964 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun b!170965 () Bool)

(assert (=> b!170965 (= e!112871 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17412 () Bool)

(assert (=> bm!17412 (= call!17410 (contains!1143 lt!85152 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!170966 () Bool)

(assert (=> b!170966 (= e!112876 e!112868)))

(declare-fun res!81293 () Bool)

(assert (=> b!170966 (= res!81293 call!17410)))

(assert (=> b!170966 (=> (not res!81293) (not e!112868))))

(assert (= (and d!51693 c!30499) b!170952))

(assert (= (and d!51693 (not c!30499)) b!170960))

(assert (= (and b!170960 c!30497) b!170953))

(assert (= (and b!170960 (not c!30497)) b!170955))

(assert (= (and b!170955 c!30500) b!170954))

(assert (= (and b!170955 (not c!30500)) b!170951))

(assert (= (or b!170954 b!170951) bm!17406))

(assert (= (or b!170953 bm!17406) bm!17409))

(assert (= (or b!170953 b!170954) bm!17407))

(assert (= (or b!170952 bm!17409) bm!17410))

(assert (= (or b!170952 bm!17407) bm!17411))

(assert (= (and d!51693 res!81290) b!170965))

(assert (= (and d!51693 c!30501) b!170949))

(assert (= (and d!51693 (not c!30501)) b!170948))

(assert (= (and d!51693 res!81287) b!170946))

(assert (= (and b!170946 res!81291) b!170961))

(assert (= (and b!170946 (not res!81292)) b!170957))

(assert (= (and b!170957 res!81286) b!170964))

(assert (= (and b!170946 res!81294) b!170963))

(assert (= (and b!170963 c!30498) b!170966))

(assert (= (and b!170963 (not c!30498)) b!170950))

(assert (= (and b!170966 res!81293) b!170947))

(assert (= (or b!170966 b!170950) bm!17412))

(assert (= (and b!170963 res!81288) b!170958))

(assert (= (and b!170958 c!30496) b!170959))

(assert (= (and b!170958 (not c!30496)) b!170956))

(assert (= (and b!170959 res!81289) b!170962))

(assert (= (or b!170959 b!170956) bm!17408))

(declare-fun b_lambda!6919 () Bool)

(assert (=> (not b_lambda!6919) (not b!170964)))

(assert (=> b!170964 t!7026))

(declare-fun b_and!10671 () Bool)

(assert (= b_and!10669 (and (=> t!7026 result!4569) b_and!10671)))

(assert (=> b!170957 m!199219))

(assert (=> b!170957 m!199219))

(declare-fun m!199289 () Bool)

(assert (=> b!170957 m!199289))

(declare-fun m!199291 () Bool)

(assert (=> bm!17412 m!199291))

(assert (=> b!170961 m!199219))

(assert (=> b!170961 m!199219))

(assert (=> b!170961 m!199225))

(declare-fun m!199293 () Bool)

(assert (=> bm!17411 m!199293))

(declare-fun m!199295 () Bool)

(assert (=> bm!17408 m!199295))

(declare-fun m!199297 () Bool)

(assert (=> b!170949 m!199297))

(declare-fun m!199299 () Bool)

(assert (=> b!170949 m!199299))

(declare-fun m!199301 () Bool)

(assert (=> b!170949 m!199301))

(declare-fun m!199303 () Bool)

(assert (=> b!170949 m!199303))

(declare-fun m!199305 () Bool)

(assert (=> b!170949 m!199305))

(assert (=> b!170949 m!199219))

(declare-fun m!199307 () Bool)

(assert (=> b!170949 m!199307))

(declare-fun m!199309 () Bool)

(assert (=> b!170949 m!199309))

(declare-fun m!199311 () Bool)

(assert (=> b!170949 m!199311))

(declare-fun m!199313 () Bool)

(assert (=> b!170949 m!199313))

(declare-fun m!199315 () Bool)

(assert (=> b!170949 m!199315))

(assert (=> b!170949 m!199301))

(declare-fun m!199317 () Bool)

(assert (=> b!170949 m!199317))

(declare-fun m!199319 () Bool)

(assert (=> b!170949 m!199319))

(declare-fun m!199321 () Bool)

(assert (=> b!170949 m!199321))

(assert (=> b!170949 m!199305))

(declare-fun m!199323 () Bool)

(assert (=> b!170949 m!199323))

(assert (=> b!170949 m!199317))

(declare-fun m!199325 () Bool)

(assert (=> b!170949 m!199325))

(declare-fun m!199327 () Bool)

(assert (=> b!170949 m!199327))

(assert (=> b!170949 m!199311))

(declare-fun m!199329 () Bool)

(assert (=> b!170947 m!199329))

(assert (=> b!170965 m!199219))

(assert (=> b!170965 m!199219))

(assert (=> b!170965 m!199225))

(assert (=> b!170964 m!199265))

(assert (=> b!170964 m!199219))

(assert (=> b!170964 m!199267))

(assert (=> b!170964 m!199219))

(declare-fun m!199331 () Bool)

(assert (=> b!170964 m!199331))

(assert (=> b!170964 m!199265))

(assert (=> b!170964 m!199267))

(assert (=> b!170964 m!199271))

(assert (=> d!51693 m!199273))

(declare-fun m!199333 () Bool)

(assert (=> b!170952 m!199333))

(assert (=> bm!17410 m!199321))

(declare-fun m!199335 () Bool)

(assert (=> b!170962 m!199335))

(assert (=> b!170844 d!51693))

(declare-fun d!51695 () Bool)

(declare-fun e!112881 () Bool)

(assert (=> d!51695 e!112881))

(declare-fun res!81299 () Bool)

(assert (=> d!51695 (=> (not res!81299) (not e!112881))))

(declare-fun lt!85177 () ListLongMap!2171)

(assert (=> d!51695 (= res!81299 (contains!1143 lt!85177 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun lt!85178 () List!2213)

(assert (=> d!51695 (= lt!85177 (ListLongMap!2172 lt!85178))))

(declare-fun lt!85179 () Unit!5249)

(declare-fun lt!85176 () Unit!5249)

(assert (=> d!51695 (= lt!85179 lt!85176)))

(declare-datatypes ((Option!189 0))(
  ( (Some!188 (v!3910 V!4987)) (None!187) )
))
(declare-fun getValueByKey!183 (List!2213 (_ BitVec 64)) Option!189)

(assert (=> d!51695 (= (getValueByKey!183 lt!85178 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) (Some!188 (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!98 (List!2213 (_ BitVec 64) V!4987) Unit!5249)

(assert (=> d!51695 (= lt!85176 (lemmaContainsTupThenGetReturnValue!98 lt!85178 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun insertStrictlySorted!100 (List!2213 (_ BitVec 64) V!4987) List!2213)

(assert (=> d!51695 (= lt!85178 (insertStrictlySorted!100 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> d!51695 (= (+!239 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) lt!85177)))

(declare-fun b!170971 () Bool)

(declare-fun res!81300 () Bool)

(assert (=> b!170971 (=> (not res!81300) (not e!112881))))

(assert (=> b!170971 (= res!81300 (= (getValueByKey!183 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) (Some!188 (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!170972 () Bool)

(declare-fun contains!1145 (List!2213 tuple2!3230) Bool)

(assert (=> b!170972 (= e!112881 (contains!1145 (toList!1101 lt!85177) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(assert (= (and d!51695 res!81299) b!170971))

(assert (= (and b!170971 res!81300) b!170972))

(declare-fun m!199337 () Bool)

(assert (=> d!51695 m!199337))

(declare-fun m!199339 () Bool)

(assert (=> d!51695 m!199339))

(declare-fun m!199341 () Bool)

(assert (=> d!51695 m!199341))

(declare-fun m!199343 () Bool)

(assert (=> d!51695 m!199343))

(declare-fun m!199345 () Bool)

(assert (=> b!170971 m!199345))

(declare-fun m!199347 () Bool)

(assert (=> b!170972 m!199347))

(assert (=> b!170844 d!51695))

(declare-fun d!51697 () Bool)

(declare-fun res!81301 () Bool)

(declare-fun e!112882 () Bool)

(assert (=> d!51697 (=> (not res!81301) (not e!112882))))

(assert (=> d!51697 (= res!81301 (simpleValid!134 thiss!1248))))

(assert (=> d!51697 (= (valid!939 thiss!1248) e!112882)))

(declare-fun b!170973 () Bool)

(declare-fun res!81302 () Bool)

(assert (=> b!170973 (=> (not res!81302) (not e!112882))))

(assert (=> b!170973 (= res!81302 (= (arrayCountValidKeys!0 (_keys!5387 thiss!1248) #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))) (_size!1162 thiss!1248)))))

(declare-fun b!170974 () Bool)

(declare-fun res!81303 () Bool)

(assert (=> b!170974 (=> (not res!81303) (not e!112882))))

(assert (=> b!170974 (= res!81303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5387 thiss!1248) (mask!8383 thiss!1248)))))

(declare-fun b!170975 () Bool)

(assert (=> b!170975 (= e!112882 (arrayNoDuplicates!0 (_keys!5387 thiss!1248) #b00000000000000000000000000000000 Nil!2212))))

(assert (= (and d!51697 res!81301) b!170973))

(assert (= (and b!170973 res!81302) b!170974))

(assert (= (and b!170974 res!81303) b!170975))

(declare-fun m!199349 () Bool)

(assert (=> d!51697 m!199349))

(declare-fun m!199351 () Bool)

(assert (=> b!170973 m!199351))

(declare-fun m!199353 () Bool)

(assert (=> b!170974 m!199353))

(declare-fun m!199355 () Bool)

(assert (=> b!170975 m!199355))

(assert (=> start!17020 d!51697))

(declare-fun d!51699 () Bool)

(declare-fun e!112888 () Bool)

(assert (=> d!51699 e!112888))

(declare-fun res!81306 () Bool)

(assert (=> d!51699 (=> res!81306 e!112888)))

(declare-fun lt!85190 () Bool)

(assert (=> d!51699 (= res!81306 (not lt!85190))))

(declare-fun lt!85188 () Bool)

(assert (=> d!51699 (= lt!85190 lt!85188)))

(declare-fun lt!85189 () Unit!5249)

(declare-fun e!112887 () Unit!5249)

(assert (=> d!51699 (= lt!85189 e!112887)))

(declare-fun c!30504 () Bool)

(assert (=> d!51699 (= c!30504 lt!85188)))

(declare-fun containsKey!187 (List!2213 (_ BitVec 64)) Bool)

(assert (=> d!51699 (= lt!85188 (containsKey!187 (toList!1101 lt!85065) key!828))))

(assert (=> d!51699 (= (contains!1143 lt!85065 key!828) lt!85190)))

(declare-fun b!170982 () Bool)

(declare-fun lt!85191 () Unit!5249)

(assert (=> b!170982 (= e!112887 lt!85191)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!136 (List!2213 (_ BitVec 64)) Unit!5249)

(assert (=> b!170982 (= lt!85191 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85065) key!828))))

(declare-fun isDefined!137 (Option!189) Bool)

(assert (=> b!170982 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85065) key!828))))

(declare-fun b!170983 () Bool)

(declare-fun Unit!5253 () Unit!5249)

(assert (=> b!170983 (= e!112887 Unit!5253)))

(declare-fun b!170984 () Bool)

(assert (=> b!170984 (= e!112888 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85065) key!828)))))

(assert (= (and d!51699 c!30504) b!170982))

(assert (= (and d!51699 (not c!30504)) b!170983))

(assert (= (and d!51699 (not res!81306)) b!170984))

(declare-fun m!199357 () Bool)

(assert (=> d!51699 m!199357))

(declare-fun m!199359 () Bool)

(assert (=> b!170982 m!199359))

(declare-fun m!199361 () Bool)

(assert (=> b!170982 m!199361))

(assert (=> b!170982 m!199361))

(declare-fun m!199363 () Bool)

(assert (=> b!170982 m!199363))

(assert (=> b!170984 m!199361))

(assert (=> b!170984 m!199361))

(assert (=> b!170984 m!199363))

(assert (=> b!170841 d!51699))

(declare-fun d!51701 () Bool)

(assert (=> d!51701 (= (map!1852 lt!85067) (getCurrentListMap!750 (_keys!5387 lt!85067) (_values!3538 lt!85067) (mask!8383 lt!85067) (extraKeys!3296 lt!85067) (zeroValue!3398 lt!85067) (minValue!3398 lt!85067) #b00000000000000000000000000000000 (defaultEntry!3555 lt!85067)))))

(declare-fun bs!7049 () Bool)

(assert (= bs!7049 d!51701))

(declare-fun m!199365 () Bool)

(assert (=> bs!7049 m!199365))

(assert (=> b!170841 d!51701))

(declare-fun d!51703 () Bool)

(declare-fun e!112889 () Bool)

(assert (=> d!51703 e!112889))

(declare-fun res!81307 () Bool)

(assert (=> d!51703 (=> (not res!81307) (not e!112889))))

(declare-fun lt!85193 () ListLongMap!2171)

(assert (=> d!51703 (= res!81307 (contains!1143 lt!85193 (_1!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun lt!85194 () List!2213)

(assert (=> d!51703 (= lt!85193 (ListLongMap!2172 lt!85194))))

(declare-fun lt!85195 () Unit!5249)

(declare-fun lt!85192 () Unit!5249)

(assert (=> d!51703 (= lt!85195 lt!85192)))

(assert (=> d!51703 (= (getValueByKey!183 lt!85194 (_1!1625 (tuple2!3231 key!828 v!309))) (Some!188 (_2!1625 (tuple2!3231 key!828 v!309))))))

(assert (=> d!51703 (= lt!85192 (lemmaContainsTupThenGetReturnValue!98 lt!85194 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309))))))

(assert (=> d!51703 (= lt!85194 (insertStrictlySorted!100 (toList!1101 (map!1852 thiss!1248)) (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309))))))

(assert (=> d!51703 (= (+!239 (map!1852 thiss!1248) (tuple2!3231 key!828 v!309)) lt!85193)))

(declare-fun b!170985 () Bool)

(declare-fun res!81308 () Bool)

(assert (=> b!170985 (=> (not res!81308) (not e!112889))))

(assert (=> b!170985 (= res!81308 (= (getValueByKey!183 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309))) (Some!188 (_2!1625 (tuple2!3231 key!828 v!309)))))))

(declare-fun b!170986 () Bool)

(assert (=> b!170986 (= e!112889 (contains!1145 (toList!1101 lt!85193) (tuple2!3231 key!828 v!309)))))

(assert (= (and d!51703 res!81307) b!170985))

(assert (= (and b!170985 res!81308) b!170986))

(declare-fun m!199367 () Bool)

(assert (=> d!51703 m!199367))

(declare-fun m!199369 () Bool)

(assert (=> d!51703 m!199369))

(declare-fun m!199371 () Bool)

(assert (=> d!51703 m!199371))

(declare-fun m!199373 () Bool)

(assert (=> d!51703 m!199373))

(declare-fun m!199375 () Bool)

(assert (=> b!170985 m!199375))

(declare-fun m!199377 () Bool)

(assert (=> b!170986 m!199377))

(assert (=> b!170845 d!51703))

(declare-fun d!51705 () Bool)

(assert (=> d!51705 (= (map!1852 thiss!1248) (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(declare-fun bs!7050 () Bool)

(assert (= bs!7050 d!51705))

(assert (=> bs!7050 m!199171))

(assert (=> b!170845 d!51705))

(declare-fun condMapEmpty!6806 () Bool)

(declare-fun mapDefault!6806 () ValueCell!1659)

(assert (=> mapNonEmpty!6800 (= condMapEmpty!6806 (= mapRest!6800 ((as const (Array (_ BitVec 32) ValueCell!1659)) mapDefault!6806)))))

(declare-fun e!112895 () Bool)

(declare-fun mapRes!6806 () Bool)

(assert (=> mapNonEmpty!6800 (= tp!15329 (and e!112895 mapRes!6806))))

(declare-fun b!170994 () Bool)

(assert (=> b!170994 (= e!112895 tp_is_empty!4005)))

(declare-fun b!170993 () Bool)

(declare-fun e!112894 () Bool)

(assert (=> b!170993 (= e!112894 tp_is_empty!4005)))

(declare-fun mapNonEmpty!6806 () Bool)

(declare-fun tp!15338 () Bool)

(assert (=> mapNonEmpty!6806 (= mapRes!6806 (and tp!15338 e!112894))))

(declare-fun mapRest!6806 () (Array (_ BitVec 32) ValueCell!1659))

(declare-fun mapKey!6806 () (_ BitVec 32))

(declare-fun mapValue!6806 () ValueCell!1659)

(assert (=> mapNonEmpty!6806 (= mapRest!6800 (store mapRest!6806 mapKey!6806 mapValue!6806))))

(declare-fun mapIsEmpty!6806 () Bool)

(assert (=> mapIsEmpty!6806 mapRes!6806))

(assert (= (and mapNonEmpty!6800 condMapEmpty!6806) mapIsEmpty!6806))

(assert (= (and mapNonEmpty!6800 (not condMapEmpty!6806)) mapNonEmpty!6806))

(assert (= (and mapNonEmpty!6806 ((_ is ValueCellFull!1659) mapValue!6806)) b!170993))

(assert (= (and mapNonEmpty!6800 ((_ is ValueCellFull!1659) mapDefault!6806)) b!170994))

(declare-fun m!199379 () Bool)

(assert (=> mapNonEmpty!6806 m!199379))

(declare-fun b_lambda!6921 () Bool)

(assert (= b_lambda!6917 (or (and b!170840 b_free!4233) b_lambda!6921)))

(declare-fun b_lambda!6923 () Bool)

(assert (= b_lambda!6919 (or (and b!170840 b_free!4233) b_lambda!6923)))

(check-sat (not b_next!4233) (not b!170933) (not b!170944) (not b!170965) (not b!170945) (not b!170975) (not bm!17411) (not b!170972) (not d!51691) (not b!170929) (not bm!17401) (not d!51689) (not d!51695) (not b!170915) (not b_lambda!6923) (not b!170943) (not b!170917) (not b!170986) (not d!51701) (not b!170925) (not d!51705) (not b!170982) (not b!170973) (not d!51687) (not b!170920) (not b!170961) (not b!170957) (not bm!17405) (not b!170985) (not b!170962) (not d!51697) (not d!51703) (not bm!17408) (not b!170974) (not b!170952) b_and!10671 (not b!170964) (not bm!17410) (not b_lambda!6921) (not d!51693) (not mapNonEmpty!6806) (not b!170947) (not b!170971) (not b!170949) (not bm!17404) (not bm!17412) (not b!170984) (not b!170930) tp_is_empty!4005 (not b!170932) (not bm!17403) (not d!51699))
(check-sat b_and!10671 (not b_next!4233))
(get-model)

(declare-fun d!51707 () Bool)

(declare-fun e!112896 () Bool)

(assert (=> d!51707 e!112896))

(declare-fun res!81309 () Bool)

(assert (=> d!51707 (=> (not res!81309) (not e!112896))))

(declare-fun lt!85197 () ListLongMap!2171)

(assert (=> d!51707 (= res!81309 (contains!1143 lt!85197 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun lt!85198 () List!2213)

(assert (=> d!51707 (= lt!85197 (ListLongMap!2172 lt!85198))))

(declare-fun lt!85199 () Unit!5249)

(declare-fun lt!85196 () Unit!5249)

(assert (=> d!51707 (= lt!85199 lt!85196)))

(assert (=> d!51707 (= (getValueByKey!183 lt!85198 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (=> d!51707 (= lt!85196 (lemmaContainsTupThenGetReturnValue!98 lt!85198 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (=> d!51707 (= lt!85198 (insertStrictlySorted!100 (toList!1101 call!17411) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (=> d!51707 (= (+!239 call!17411 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) lt!85197)))

(declare-fun b!170995 () Bool)

(declare-fun res!81310 () Bool)

(assert (=> b!170995 (=> (not res!81310) (not e!112896))))

(assert (=> b!170995 (= res!81310 (= (getValueByKey!183 (toList!1101 lt!85197) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun b!170996 () Bool)

(assert (=> b!170996 (= e!112896 (contains!1145 (toList!1101 lt!85197) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))

(assert (= (and d!51707 res!81309) b!170995))

(assert (= (and b!170995 res!81310) b!170996))

(declare-fun m!199381 () Bool)

(assert (=> d!51707 m!199381))

(declare-fun m!199383 () Bool)

(assert (=> d!51707 m!199383))

(declare-fun m!199385 () Bool)

(assert (=> d!51707 m!199385))

(declare-fun m!199387 () Bool)

(assert (=> d!51707 m!199387))

(declare-fun m!199389 () Bool)

(assert (=> b!170995 m!199389))

(declare-fun m!199391 () Bool)

(assert (=> b!170996 m!199391))

(assert (=> b!170952 d!51707))

(assert (=> d!51705 d!51693))

(declare-fun d!51709 () Bool)

(assert (=> d!51709 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85065) key!828))))

(declare-fun lt!85202 () Unit!5249)

(declare-fun choose!931 (List!2213 (_ BitVec 64)) Unit!5249)

(assert (=> d!51709 (= lt!85202 (choose!931 (toList!1101 lt!85065) key!828))))

(declare-fun e!112899 () Bool)

(assert (=> d!51709 e!112899))

(declare-fun res!81313 () Bool)

(assert (=> d!51709 (=> (not res!81313) (not e!112899))))

(declare-fun isStrictlySorted!326 (List!2213) Bool)

(assert (=> d!51709 (= res!81313 (isStrictlySorted!326 (toList!1101 lt!85065)))))

(assert (=> d!51709 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85065) key!828) lt!85202)))

(declare-fun b!170999 () Bool)

(assert (=> b!170999 (= e!112899 (containsKey!187 (toList!1101 lt!85065) key!828))))

(assert (= (and d!51709 res!81313) b!170999))

(assert (=> d!51709 m!199361))

(assert (=> d!51709 m!199361))

(assert (=> d!51709 m!199363))

(declare-fun m!199393 () Bool)

(assert (=> d!51709 m!199393))

(declare-fun m!199395 () Bool)

(assert (=> d!51709 m!199395))

(assert (=> b!170999 m!199357))

(assert (=> b!170982 d!51709))

(declare-fun d!51711 () Bool)

(declare-fun isEmpty!438 (Option!189) Bool)

(assert (=> d!51711 (= (isDefined!137 (getValueByKey!183 (toList!1101 lt!85065) key!828)) (not (isEmpty!438 (getValueByKey!183 (toList!1101 lt!85065) key!828))))))

(declare-fun bs!7051 () Bool)

(assert (= bs!7051 d!51711))

(assert (=> bs!7051 m!199361))

(declare-fun m!199397 () Bool)

(assert (=> bs!7051 m!199397))

(assert (=> b!170982 d!51711))

(declare-fun b!171009 () Bool)

(declare-fun e!112904 () Option!189)

(declare-fun e!112905 () Option!189)

(assert (=> b!171009 (= e!112904 e!112905)))

(declare-fun c!30510 () Bool)

(assert (=> b!171009 (= c!30510 (and ((_ is Cons!2209) (toList!1101 lt!85065)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85065))) key!828))))))

(declare-fun b!171010 () Bool)

(assert (=> b!171010 (= e!112905 (getValueByKey!183 (t!7023 (toList!1101 lt!85065)) key!828))))

(declare-fun d!51713 () Bool)

(declare-fun c!30509 () Bool)

(assert (=> d!51713 (= c!30509 (and ((_ is Cons!2209) (toList!1101 lt!85065)) (= (_1!1625 (h!2826 (toList!1101 lt!85065))) key!828)))))

(assert (=> d!51713 (= (getValueByKey!183 (toList!1101 lt!85065) key!828) e!112904)))

(declare-fun b!171011 () Bool)

(assert (=> b!171011 (= e!112905 None!187)))

(declare-fun b!171008 () Bool)

(assert (=> b!171008 (= e!112904 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85065)))))))

(assert (= (and d!51713 c!30509) b!171008))

(assert (= (and d!51713 (not c!30509)) b!171009))

(assert (= (and b!171009 c!30510) b!171010))

(assert (= (and b!171009 (not c!30510)) b!171011))

(declare-fun m!199399 () Bool)

(assert (=> b!171010 m!199399))

(assert (=> b!170982 d!51713))

(declare-fun d!51715 () Bool)

(declare-fun e!112907 () Bool)

(assert (=> d!51715 e!112907))

(declare-fun res!81314 () Bool)

(assert (=> d!51715 (=> res!81314 e!112907)))

(declare-fun lt!85205 () Bool)

(assert (=> d!51715 (= res!81314 (not lt!85205))))

(declare-fun lt!85203 () Bool)

(assert (=> d!51715 (= lt!85205 lt!85203)))

(declare-fun lt!85204 () Unit!5249)

(declare-fun e!112906 () Unit!5249)

(assert (=> d!51715 (= lt!85204 e!112906)))

(declare-fun c!30511 () Bool)

(assert (=> d!51715 (= c!30511 lt!85203)))

(assert (=> d!51715 (= lt!85203 (containsKey!187 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!51715 (= (contains!1143 lt!85127 #b1000000000000000000000000000000000000000000000000000000000000000) lt!85205)))

(declare-fun b!171012 () Bool)

(declare-fun lt!85206 () Unit!5249)

(assert (=> b!171012 (= e!112906 lt!85206)))

(assert (=> b!171012 (= lt!85206 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171012 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!171013 () Bool)

(declare-fun Unit!5254 () Unit!5249)

(assert (=> b!171013 (= e!112906 Unit!5254)))

(declare-fun b!171014 () Bool)

(assert (=> b!171014 (= e!112907 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!51715 c!30511) b!171012))

(assert (= (and d!51715 (not c!30511)) b!171013))

(assert (= (and d!51715 (not res!81314)) b!171014))

(declare-fun m!199401 () Bool)

(assert (=> d!51715 m!199401))

(declare-fun m!199403 () Bool)

(assert (=> b!171012 m!199403))

(declare-fun m!199405 () Bool)

(assert (=> b!171012 m!199405))

(assert (=> b!171012 m!199405))

(declare-fun m!199407 () Bool)

(assert (=> b!171012 m!199407))

(assert (=> b!171014 m!199405))

(assert (=> b!171014 m!199405))

(assert (=> b!171014 m!199407))

(assert (=> bm!17401 d!51715))

(declare-fun d!51717 () Bool)

(assert (=> d!51717 (= (validMask!0 (mask!8383 thiss!1248)) (and (or (= (mask!8383 thiss!1248) #b00000000000000000000000000000111) (= (mask!8383 thiss!1248) #b00000000000000000000000000001111) (= (mask!8383 thiss!1248) #b00000000000000000000000000011111) (= (mask!8383 thiss!1248) #b00000000000000000000000000111111) (= (mask!8383 thiss!1248) #b00000000000000000000000001111111) (= (mask!8383 thiss!1248) #b00000000000000000000000011111111) (= (mask!8383 thiss!1248) #b00000000000000000000000111111111) (= (mask!8383 thiss!1248) #b00000000000000000000001111111111) (= (mask!8383 thiss!1248) #b00000000000000000000011111111111) (= (mask!8383 thiss!1248) #b00000000000000000000111111111111) (= (mask!8383 thiss!1248) #b00000000000000000001111111111111) (= (mask!8383 thiss!1248) #b00000000000000000011111111111111) (= (mask!8383 thiss!1248) #b00000000000000000111111111111111) (= (mask!8383 thiss!1248) #b00000000000000001111111111111111) (= (mask!8383 thiss!1248) #b00000000000000011111111111111111) (= (mask!8383 thiss!1248) #b00000000000000111111111111111111) (= (mask!8383 thiss!1248) #b00000000000001111111111111111111) (= (mask!8383 thiss!1248) #b00000000000011111111111111111111) (= (mask!8383 thiss!1248) #b00000000000111111111111111111111) (= (mask!8383 thiss!1248) #b00000000001111111111111111111111) (= (mask!8383 thiss!1248) #b00000000011111111111111111111111) (= (mask!8383 thiss!1248) #b00000000111111111111111111111111) (= (mask!8383 thiss!1248) #b00000001111111111111111111111111) (= (mask!8383 thiss!1248) #b00000011111111111111111111111111) (= (mask!8383 thiss!1248) #b00000111111111111111111111111111) (= (mask!8383 thiss!1248) #b00001111111111111111111111111111) (= (mask!8383 thiss!1248) #b00011111111111111111111111111111) (= (mask!8383 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8383 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> d!51693 d!51717))

(declare-fun d!51719 () Bool)

(declare-fun e!112909 () Bool)

(assert (=> d!51719 e!112909))

(declare-fun res!81315 () Bool)

(assert (=> d!51719 (=> res!81315 e!112909)))

(declare-fun lt!85209 () Bool)

(assert (=> d!51719 (= res!81315 (not lt!85209))))

(declare-fun lt!85207 () Bool)

(assert (=> d!51719 (= lt!85209 lt!85207)))

(declare-fun lt!85208 () Unit!5249)

(declare-fun e!112908 () Unit!5249)

(assert (=> d!51719 (= lt!85208 e!112908)))

(declare-fun c!30512 () Bool)

(assert (=> d!51719 (= c!30512 lt!85207)))

(assert (=> d!51719 (= lt!85207 (containsKey!187 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309))))))

(assert (=> d!51719 (= (contains!1143 lt!85193 (_1!1625 (tuple2!3231 key!828 v!309))) lt!85209)))

(declare-fun b!171015 () Bool)

(declare-fun lt!85210 () Unit!5249)

(assert (=> b!171015 (= e!112908 lt!85210)))

(assert (=> b!171015 (= lt!85210 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309))))))

(assert (=> b!171015 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun b!171016 () Bool)

(declare-fun Unit!5255 () Unit!5249)

(assert (=> b!171016 (= e!112908 Unit!5255)))

(declare-fun b!171017 () Bool)

(assert (=> b!171017 (= e!112909 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(assert (= (and d!51719 c!30512) b!171015))

(assert (= (and d!51719 (not c!30512)) b!171016))

(assert (= (and d!51719 (not res!81315)) b!171017))

(declare-fun m!199409 () Bool)

(assert (=> d!51719 m!199409))

(declare-fun m!199411 () Bool)

(assert (=> b!171015 m!199411))

(assert (=> b!171015 m!199375))

(assert (=> b!171015 m!199375))

(declare-fun m!199413 () Bool)

(assert (=> b!171015 m!199413))

(assert (=> b!171017 m!199375))

(assert (=> b!171017 m!199375))

(assert (=> b!171017 m!199413))

(assert (=> d!51703 d!51719))

(declare-fun b!171019 () Bool)

(declare-fun e!112910 () Option!189)

(declare-fun e!112911 () Option!189)

(assert (=> b!171019 (= e!112910 e!112911)))

(declare-fun c!30514 () Bool)

(assert (=> b!171019 (= c!30514 (and ((_ is Cons!2209) lt!85194) (not (= (_1!1625 (h!2826 lt!85194)) (_1!1625 (tuple2!3231 key!828 v!309))))))))

(declare-fun b!171020 () Bool)

(assert (=> b!171020 (= e!112911 (getValueByKey!183 (t!7023 lt!85194) (_1!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun c!30513 () Bool)

(declare-fun d!51721 () Bool)

(assert (=> d!51721 (= c!30513 (and ((_ is Cons!2209) lt!85194) (= (_1!1625 (h!2826 lt!85194)) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(assert (=> d!51721 (= (getValueByKey!183 lt!85194 (_1!1625 (tuple2!3231 key!828 v!309))) e!112910)))

(declare-fun b!171021 () Bool)

(assert (=> b!171021 (= e!112911 None!187)))

(declare-fun b!171018 () Bool)

(assert (=> b!171018 (= e!112910 (Some!188 (_2!1625 (h!2826 lt!85194))))))

(assert (= (and d!51721 c!30513) b!171018))

(assert (= (and d!51721 (not c!30513)) b!171019))

(assert (= (and b!171019 c!30514) b!171020))

(assert (= (and b!171019 (not c!30514)) b!171021))

(declare-fun m!199415 () Bool)

(assert (=> b!171020 m!199415))

(assert (=> d!51703 d!51721))

(declare-fun d!51723 () Bool)

(assert (=> d!51723 (= (getValueByKey!183 lt!85194 (_1!1625 (tuple2!3231 key!828 v!309))) (Some!188 (_2!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun lt!85213 () Unit!5249)

(declare-fun choose!932 (List!2213 (_ BitVec 64) V!4987) Unit!5249)

(assert (=> d!51723 (= lt!85213 (choose!932 lt!85194 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun e!112914 () Bool)

(assert (=> d!51723 e!112914))

(declare-fun res!81320 () Bool)

(assert (=> d!51723 (=> (not res!81320) (not e!112914))))

(assert (=> d!51723 (= res!81320 (isStrictlySorted!326 lt!85194))))

(assert (=> d!51723 (= (lemmaContainsTupThenGetReturnValue!98 lt!85194 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309))) lt!85213)))

(declare-fun b!171026 () Bool)

(declare-fun res!81321 () Bool)

(assert (=> b!171026 (=> (not res!81321) (not e!112914))))

(assert (=> b!171026 (= res!81321 (containsKey!187 lt!85194 (_1!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun b!171027 () Bool)

(assert (=> b!171027 (= e!112914 (contains!1145 lt!85194 (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309)))))))

(assert (= (and d!51723 res!81320) b!171026))

(assert (= (and b!171026 res!81321) b!171027))

(assert (=> d!51723 m!199369))

(declare-fun m!199417 () Bool)

(assert (=> d!51723 m!199417))

(declare-fun m!199419 () Bool)

(assert (=> d!51723 m!199419))

(declare-fun m!199421 () Bool)

(assert (=> b!171026 m!199421))

(declare-fun m!199423 () Bool)

(assert (=> b!171027 m!199423))

(assert (=> d!51703 d!51723))

(declare-fun b!171048 () Bool)

(declare-fun e!112925 () List!2213)

(declare-fun call!17423 () List!2213)

(assert (=> b!171048 (= e!112925 call!17423)))

(declare-fun b!171049 () Bool)

(declare-fun res!81327 () Bool)

(declare-fun e!112929 () Bool)

(assert (=> b!171049 (=> (not res!81327) (not e!112929))))

(declare-fun lt!85216 () List!2213)

(assert (=> b!171049 (= res!81327 (containsKey!187 lt!85216 (_1!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun b!171050 () Bool)

(declare-fun e!112928 () List!2213)

(declare-fun e!112926 () List!2213)

(assert (=> b!171050 (= e!112928 e!112926)))

(declare-fun c!30524 () Bool)

(assert (=> b!171050 (= c!30524 (and ((_ is Cons!2209) (toList!1101 (map!1852 thiss!1248))) (= (_1!1625 (h!2826 (toList!1101 (map!1852 thiss!1248)))) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(declare-fun c!30525 () Bool)

(declare-fun b!171051 () Bool)

(declare-fun e!112927 () List!2213)

(assert (=> b!171051 (= e!112927 (ite c!30524 (t!7023 (toList!1101 (map!1852 thiss!1248))) (ite c!30525 (Cons!2209 (h!2826 (toList!1101 (map!1852 thiss!1248))) (t!7023 (toList!1101 (map!1852 thiss!1248)))) Nil!2210)))))

(declare-fun b!171052 () Bool)

(assert (=> b!171052 (= e!112929 (contains!1145 lt!85216 (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309)))))))

(declare-fun b!171053 () Bool)

(declare-fun call!17422 () List!2213)

(assert (=> b!171053 (= e!112928 call!17422)))

(declare-fun c!30526 () Bool)

(declare-fun bm!17419 () Bool)

(declare-fun $colon$colon!96 (List!2213 tuple2!3230) List!2213)

(assert (=> bm!17419 (= call!17422 ($colon$colon!96 e!112927 (ite c!30526 (h!2826 (toList!1101 (map!1852 thiss!1248))) (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309))))))))

(declare-fun c!30523 () Bool)

(assert (=> bm!17419 (= c!30523 c!30526)))

(declare-fun bm!17421 () Bool)

(declare-fun call!17424 () List!2213)

(assert (=> bm!17421 (= call!17423 call!17424)))

(declare-fun b!171054 () Bool)

(assert (=> b!171054 (= e!112926 call!17424)))

(declare-fun b!171055 () Bool)

(assert (=> b!171055 (= e!112925 call!17423)))

(declare-fun b!171056 () Bool)

(assert (=> b!171056 (= c!30525 (and ((_ is Cons!2209) (toList!1101 (map!1852 thiss!1248))) (bvsgt (_1!1625 (h!2826 (toList!1101 (map!1852 thiss!1248)))) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(assert (=> b!171056 (= e!112926 e!112925)))

(declare-fun b!171057 () Bool)

(assert (=> b!171057 (= e!112927 (insertStrictlySorted!100 (t!7023 (toList!1101 (map!1852 thiss!1248))) (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun bm!17420 () Bool)

(assert (=> bm!17420 (= call!17424 call!17422)))

(declare-fun d!51725 () Bool)

(assert (=> d!51725 e!112929))

(declare-fun res!81326 () Bool)

(assert (=> d!51725 (=> (not res!81326) (not e!112929))))

(assert (=> d!51725 (= res!81326 (isStrictlySorted!326 lt!85216))))

(assert (=> d!51725 (= lt!85216 e!112928)))

(assert (=> d!51725 (= c!30526 (and ((_ is Cons!2209) (toList!1101 (map!1852 thiss!1248))) (bvslt (_1!1625 (h!2826 (toList!1101 (map!1852 thiss!1248)))) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(assert (=> d!51725 (isStrictlySorted!326 (toList!1101 (map!1852 thiss!1248)))))

(assert (=> d!51725 (= (insertStrictlySorted!100 (toList!1101 (map!1852 thiss!1248)) (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309))) lt!85216)))

(assert (= (and d!51725 c!30526) b!171053))

(assert (= (and d!51725 (not c!30526)) b!171050))

(assert (= (and b!171050 c!30524) b!171054))

(assert (= (and b!171050 (not c!30524)) b!171056))

(assert (= (and b!171056 c!30525) b!171055))

(assert (= (and b!171056 (not c!30525)) b!171048))

(assert (= (or b!171055 b!171048) bm!17421))

(assert (= (or b!171054 bm!17421) bm!17420))

(assert (= (or b!171053 bm!17420) bm!17419))

(assert (= (and bm!17419 c!30523) b!171057))

(assert (= (and bm!17419 (not c!30523)) b!171051))

(assert (= (and d!51725 res!81326) b!171049))

(assert (= (and b!171049 res!81327) b!171052))

(declare-fun m!199425 () Bool)

(assert (=> b!171049 m!199425))

(declare-fun m!199427 () Bool)

(assert (=> d!51725 m!199427))

(declare-fun m!199429 () Bool)

(assert (=> d!51725 m!199429))

(declare-fun m!199431 () Bool)

(assert (=> b!171057 m!199431))

(declare-fun m!199433 () Bool)

(assert (=> b!171052 m!199433))

(declare-fun m!199435 () Bool)

(assert (=> bm!17419 m!199435))

(assert (=> d!51703 d!51725))

(declare-fun d!51727 () Bool)

(declare-fun e!112931 () Bool)

(assert (=> d!51727 e!112931))

(declare-fun res!81328 () Bool)

(assert (=> d!51727 (=> res!81328 e!112931)))

(declare-fun lt!85219 () Bool)

(assert (=> d!51727 (= res!81328 (not lt!85219))))

(declare-fun lt!85217 () Bool)

(assert (=> d!51727 (= lt!85219 lt!85217)))

(declare-fun lt!85218 () Unit!5249)

(declare-fun e!112930 () Unit!5249)

(assert (=> d!51727 (= lt!85218 e!112930)))

(declare-fun c!30527 () Bool)

(assert (=> d!51727 (= c!30527 lt!85217)))

(assert (=> d!51727 (= lt!85217 (containsKey!187 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!51727 (= (contains!1143 lt!85152 #b1000000000000000000000000000000000000000000000000000000000000000) lt!85219)))

(declare-fun b!171058 () Bool)

(declare-fun lt!85220 () Unit!5249)

(assert (=> b!171058 (= e!112930 lt!85220)))

(assert (=> b!171058 (= lt!85220 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171058 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!171059 () Bool)

(declare-fun Unit!5256 () Unit!5249)

(assert (=> b!171059 (= e!112930 Unit!5256)))

(declare-fun b!171060 () Bool)

(assert (=> b!171060 (= e!112931 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!51727 c!30527) b!171058))

(assert (= (and d!51727 (not c!30527)) b!171059))

(assert (= (and d!51727 (not res!81328)) b!171060))

(declare-fun m!199437 () Bool)

(assert (=> d!51727 m!199437))

(declare-fun m!199439 () Bool)

(assert (=> b!171058 m!199439))

(declare-fun m!199441 () Bool)

(assert (=> b!171058 m!199441))

(assert (=> b!171058 m!199441))

(declare-fun m!199443 () Bool)

(assert (=> b!171058 m!199443))

(assert (=> b!171060 m!199441))

(assert (=> b!171060 m!199441))

(assert (=> b!171060 m!199443))

(assert (=> bm!17408 d!51727))

(assert (=> b!170984 d!51711))

(assert (=> b!170984 d!51713))

(assert (=> d!51691 d!51687))

(declare-fun d!51729 () Bool)

(assert (=> d!51729 (= (+!239 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))

(assert (=> d!51729 true))

(declare-fun _$7!128 () Unit!5249)

(assert (=> d!51729 (= (choose!930 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) (zeroValue!3398 thiss!1248) v!309 (minValue!3398 thiss!1248) (defaultEntry!3555 thiss!1248)) _$7!128)))

(declare-fun bs!7052 () Bool)

(assert (= bs!7052 d!51729))

(assert (=> bs!7052 m!199171))

(assert (=> bs!7052 m!199171))

(assert (=> bs!7052 m!199177))

(assert (=> bs!7052 m!199173))

(assert (=> d!51691 d!51729))

(assert (=> d!51691 d!51717))

(assert (=> d!51691 d!51693))

(assert (=> d!51691 d!51695))

(declare-fun d!51731 () Bool)

(declare-fun e!112933 () Bool)

(assert (=> d!51731 e!112933))

(declare-fun res!81329 () Bool)

(assert (=> d!51731 (=> res!81329 e!112933)))

(declare-fun lt!85223 () Bool)

(assert (=> d!51731 (= res!81329 (not lt!85223))))

(declare-fun lt!85221 () Bool)

(assert (=> d!51731 (= lt!85223 lt!85221)))

(declare-fun lt!85222 () Unit!5249)

(declare-fun e!112932 () Unit!5249)

(assert (=> d!51731 (= lt!85222 e!112932)))

(declare-fun c!30528 () Bool)

(assert (=> d!51731 (= c!30528 lt!85221)))

(assert (=> d!51731 (= lt!85221 (containsKey!187 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51731 (= (contains!1143 lt!85127 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) lt!85223)))

(declare-fun b!171061 () Bool)

(declare-fun lt!85224 () Unit!5249)

(assert (=> b!171061 (= e!112932 lt!85224)))

(assert (=> b!171061 (= lt!85224 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!171061 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!171062 () Bool)

(declare-fun Unit!5257 () Unit!5249)

(assert (=> b!171062 (= e!112932 Unit!5257)))

(declare-fun b!171063 () Bool)

(assert (=> b!171063 (= e!112933 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!51731 c!30528) b!171061))

(assert (= (and d!51731 (not c!30528)) b!171062))

(assert (= (and d!51731 (not res!81329)) b!171063))

(assert (=> d!51731 m!199219))

(declare-fun m!199445 () Bool)

(assert (=> d!51731 m!199445))

(assert (=> b!171061 m!199219))

(declare-fun m!199447 () Bool)

(assert (=> b!171061 m!199447))

(assert (=> b!171061 m!199219))

(declare-fun m!199449 () Bool)

(assert (=> b!171061 m!199449))

(assert (=> b!171061 m!199449))

(declare-fun m!199451 () Bool)

(assert (=> b!171061 m!199451))

(assert (=> b!171063 m!199219))

(assert (=> b!171063 m!199449))

(assert (=> b!171063 m!199449))

(assert (=> b!171063 m!199451))

(assert (=> b!170925 d!51731))

(declare-fun b!171088 () Bool)

(declare-fun e!112952 () Bool)

(declare-fun e!112949 () Bool)

(assert (=> b!171088 (= e!112952 e!112949)))

(declare-fun c!30538 () Bool)

(assert (=> b!171088 (= c!30538 (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun b!171090 () Bool)

(declare-fun e!112948 () Bool)

(assert (=> b!171090 (= e!112948 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!171090 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!171091 () Bool)

(declare-fun res!81341 () Bool)

(declare-fun e!112951 () Bool)

(assert (=> b!171091 (=> (not res!81341) (not e!112951))))

(declare-fun lt!85243 () ListLongMap!2171)

(assert (=> b!171091 (= res!81341 (not (contains!1143 lt!85243 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!171092 () Bool)

(declare-fun e!112954 () ListLongMap!2171)

(assert (=> b!171092 (= e!112954 (ListLongMap!2172 Nil!2210))))

(declare-fun b!171093 () Bool)

(declare-fun e!112950 () Bool)

(assert (=> b!171093 (= e!112952 e!112950)))

(assert (=> b!171093 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun res!81340 () Bool)

(assert (=> b!171093 (= res!81340 (contains!1143 lt!85243 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!171093 (=> (not res!81340) (not e!112950))))

(declare-fun b!171094 () Bool)

(assert (=> b!171094 (= e!112951 e!112952)))

(declare-fun c!30540 () Bool)

(assert (=> b!171094 (= c!30540 e!112948)))

(declare-fun res!81339 () Bool)

(assert (=> b!171094 (=> (not res!81339) (not e!112948))))

(assert (=> b!171094 (= res!81339 (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun bm!17424 () Bool)

(declare-fun call!17427 () ListLongMap!2171)

(assert (=> bm!17424 (= call!17427 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3555 thiss!1248)))))

(declare-fun d!51733 () Bool)

(assert (=> d!51733 e!112951))

(declare-fun res!81338 () Bool)

(assert (=> d!51733 (=> (not res!81338) (not e!112951))))

(assert (=> d!51733 (= res!81338 (not (contains!1143 lt!85243 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!51733 (= lt!85243 e!112954)))

(declare-fun c!30537 () Bool)

(assert (=> d!51733 (= c!30537 (bvsge #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> d!51733 (validMask!0 (mask!8383 thiss!1248))))

(assert (=> d!51733 (= (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)) lt!85243)))

(declare-fun b!171089 () Bool)

(declare-fun e!112953 () ListLongMap!2171)

(assert (=> b!171089 (= e!112954 e!112953)))

(declare-fun c!30539 () Bool)

(assert (=> b!171089 (= c!30539 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!171095 () Bool)

(assert (=> b!171095 (= e!112949 (= lt!85243 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3555 thiss!1248))))))

(declare-fun b!171096 () Bool)

(declare-fun isEmpty!439 (ListLongMap!2171) Bool)

(assert (=> b!171096 (= e!112949 (isEmpty!439 lt!85243))))

(declare-fun b!171097 () Bool)

(assert (=> b!171097 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> b!171097 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3682 (_values!3538 thiss!1248))))))

(assert (=> b!171097 (= e!112950 (= (apply!129 lt!85243 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!171098 () Bool)

(assert (=> b!171098 (= e!112953 call!17427)))

(declare-fun b!171099 () Bool)

(declare-fun lt!85242 () Unit!5249)

(declare-fun lt!85239 () Unit!5249)

(assert (=> b!171099 (= lt!85242 lt!85239)))

(declare-fun lt!85241 () (_ BitVec 64))

(declare-fun lt!85244 () (_ BitVec 64))

(declare-fun lt!85240 () ListLongMap!2171)

(declare-fun lt!85245 () V!4987)

(assert (=> b!171099 (not (contains!1143 (+!239 lt!85240 (tuple2!3231 lt!85241 lt!85245)) lt!85244))))

(declare-fun addStillNotContains!73 (ListLongMap!2171 (_ BitVec 64) V!4987 (_ BitVec 64)) Unit!5249)

(assert (=> b!171099 (= lt!85239 (addStillNotContains!73 lt!85240 lt!85241 lt!85245 lt!85244))))

(assert (=> b!171099 (= lt!85244 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!171099 (= lt!85245 (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!171099 (= lt!85241 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!171099 (= lt!85240 call!17427)))

(assert (=> b!171099 (= e!112953 (+!239 call!17427 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!51733 c!30537) b!171092))

(assert (= (and d!51733 (not c!30537)) b!171089))

(assert (= (and b!171089 c!30539) b!171099))

(assert (= (and b!171089 (not c!30539)) b!171098))

(assert (= (or b!171099 b!171098) bm!17424))

(assert (= (and d!51733 res!81338) b!171091))

(assert (= (and b!171091 res!81341) b!171094))

(assert (= (and b!171094 res!81339) b!171090))

(assert (= (and b!171094 c!30540) b!171093))

(assert (= (and b!171094 (not c!30540)) b!171088))

(assert (= (and b!171093 res!81340) b!171097))

(assert (= (and b!171088 c!30538) b!171095))

(assert (= (and b!171088 (not c!30538)) b!171096))

(declare-fun b_lambda!6925 () Bool)

(assert (=> (not b_lambda!6925) (not b!171097)))

(assert (=> b!171097 t!7026))

(declare-fun b_and!10673 () Bool)

(assert (= b_and!10671 (and (=> t!7026 result!4569) b_and!10673)))

(declare-fun b_lambda!6927 () Bool)

(assert (=> (not b_lambda!6927) (not b!171099)))

(assert (=> b!171099 t!7026))

(declare-fun b_and!10675 () Bool)

(assert (= b_and!10673 (and (=> t!7026 result!4569) b_and!10675)))

(assert (=> b!171089 m!199219))

(assert (=> b!171089 m!199219))

(assert (=> b!171089 m!199225))

(declare-fun m!199453 () Bool)

(assert (=> b!171095 m!199453))

(assert (=> b!171090 m!199219))

(assert (=> b!171090 m!199219))

(assert (=> b!171090 m!199225))

(assert (=> bm!17424 m!199453))

(declare-fun m!199455 () Bool)

(assert (=> d!51733 m!199455))

(assert (=> d!51733 m!199273))

(assert (=> b!171093 m!199219))

(assert (=> b!171093 m!199219))

(declare-fun m!199457 () Bool)

(assert (=> b!171093 m!199457))

(assert (=> b!171099 m!199265))

(assert (=> b!171099 m!199267))

(assert (=> b!171099 m!199271))

(declare-fun m!199459 () Bool)

(assert (=> b!171099 m!199459))

(assert (=> b!171099 m!199265))

(assert (=> b!171099 m!199267))

(declare-fun m!199461 () Bool)

(assert (=> b!171099 m!199461))

(assert (=> b!171099 m!199219))

(declare-fun m!199463 () Bool)

(assert (=> b!171099 m!199463))

(declare-fun m!199465 () Bool)

(assert (=> b!171099 m!199465))

(assert (=> b!171099 m!199463))

(declare-fun m!199467 () Bool)

(assert (=> b!171096 m!199467))

(assert (=> b!171097 m!199265))

(assert (=> b!171097 m!199267))

(assert (=> b!171097 m!199271))

(assert (=> b!171097 m!199219))

(declare-fun m!199469 () Bool)

(assert (=> b!171097 m!199469))

(assert (=> b!171097 m!199265))

(assert (=> b!171097 m!199267))

(assert (=> b!171097 m!199219))

(declare-fun m!199471 () Bool)

(assert (=> b!171091 m!199471))

(assert (=> bm!17403 d!51733))

(declare-fun d!51735 () Bool)

(declare-fun e!112956 () Bool)

(assert (=> d!51735 e!112956))

(declare-fun res!81342 () Bool)

(assert (=> d!51735 (=> res!81342 e!112956)))

(declare-fun lt!85248 () Bool)

(assert (=> d!51735 (= res!81342 (not lt!85248))))

(declare-fun lt!85246 () Bool)

(assert (=> d!51735 (= lt!85248 lt!85246)))

(declare-fun lt!85247 () Unit!5249)

(declare-fun e!112955 () Unit!5249)

(assert (=> d!51735 (= lt!85247 e!112955)))

(declare-fun c!30541 () Bool)

(assert (=> d!51735 (= c!30541 lt!85246)))

(assert (=> d!51735 (= lt!85246 (containsKey!187 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51735 (= (contains!1143 lt!85152 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) lt!85248)))

(declare-fun b!171100 () Bool)

(declare-fun lt!85249 () Unit!5249)

(assert (=> b!171100 (= e!112955 lt!85249)))

(assert (=> b!171100 (= lt!85249 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!171100 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!171101 () Bool)

(declare-fun Unit!5258 () Unit!5249)

(assert (=> b!171101 (= e!112955 Unit!5258)))

(declare-fun b!171102 () Bool)

(assert (=> b!171102 (= e!112956 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!51735 c!30541) b!171100))

(assert (= (and d!51735 (not c!30541)) b!171101))

(assert (= (and d!51735 (not res!81342)) b!171102))

(assert (=> d!51735 m!199219))

(declare-fun m!199473 () Bool)

(assert (=> d!51735 m!199473))

(assert (=> b!171100 m!199219))

(declare-fun m!199475 () Bool)

(assert (=> b!171100 m!199475))

(assert (=> b!171100 m!199219))

(declare-fun m!199477 () Bool)

(assert (=> b!171100 m!199477))

(assert (=> b!171100 m!199477))

(declare-fun m!199479 () Bool)

(assert (=> b!171100 m!199479))

(assert (=> b!171102 m!199219))

(assert (=> b!171102 m!199477))

(assert (=> b!171102 m!199477))

(assert (=> b!171102 m!199479))

(assert (=> b!170957 d!51735))

(assert (=> d!51687 d!51717))

(declare-fun d!51737 () Bool)

(declare-fun res!81347 () Bool)

(declare-fun e!112961 () Bool)

(assert (=> d!51737 (=> res!81347 e!112961)))

(assert (=> d!51737 (= res!81347 (and ((_ is Cons!2209) (toList!1101 lt!85065)) (= (_1!1625 (h!2826 (toList!1101 lt!85065))) key!828)))))

(assert (=> d!51737 (= (containsKey!187 (toList!1101 lt!85065) key!828) e!112961)))

(declare-fun b!171107 () Bool)

(declare-fun e!112962 () Bool)

(assert (=> b!171107 (= e!112961 e!112962)))

(declare-fun res!81348 () Bool)

(assert (=> b!171107 (=> (not res!81348) (not e!112962))))

(assert (=> b!171107 (= res!81348 (and (or (not ((_ is Cons!2209) (toList!1101 lt!85065))) (bvsle (_1!1625 (h!2826 (toList!1101 lt!85065))) key!828)) ((_ is Cons!2209) (toList!1101 lt!85065)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85065))) key!828)))))

(declare-fun b!171108 () Bool)

(assert (=> b!171108 (= e!112962 (containsKey!187 (t!7023 (toList!1101 lt!85065)) key!828))))

(assert (= (and d!51737 (not res!81347)) b!171107))

(assert (= (and b!171107 res!81348) b!171108))

(declare-fun m!199481 () Bool)

(assert (=> b!171108 m!199481))

(assert (=> d!51699 d!51737))

(declare-fun lt!85252 () Bool)

(declare-fun d!51739 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!146 (List!2213) (InoxSet tuple2!3230))

(assert (=> d!51739 (= lt!85252 (select (content!146 (toList!1101 lt!85193)) (tuple2!3231 key!828 v!309)))))

(declare-fun e!112968 () Bool)

(assert (=> d!51739 (= lt!85252 e!112968)))

(declare-fun res!81353 () Bool)

(assert (=> d!51739 (=> (not res!81353) (not e!112968))))

(assert (=> d!51739 (= res!81353 ((_ is Cons!2209) (toList!1101 lt!85193)))))

(assert (=> d!51739 (= (contains!1145 (toList!1101 lt!85193) (tuple2!3231 key!828 v!309)) lt!85252)))

(declare-fun b!171113 () Bool)

(declare-fun e!112967 () Bool)

(assert (=> b!171113 (= e!112968 e!112967)))

(declare-fun res!81354 () Bool)

(assert (=> b!171113 (=> res!81354 e!112967)))

(assert (=> b!171113 (= res!81354 (= (h!2826 (toList!1101 lt!85193)) (tuple2!3231 key!828 v!309)))))

(declare-fun b!171114 () Bool)

(assert (=> b!171114 (= e!112967 (contains!1145 (t!7023 (toList!1101 lt!85193)) (tuple2!3231 key!828 v!309)))))

(assert (= (and d!51739 res!81353) b!171113))

(assert (= (and b!171113 (not res!81354)) b!171114))

(declare-fun m!199483 () Bool)

(assert (=> d!51739 m!199483))

(declare-fun m!199485 () Bool)

(assert (=> d!51739 m!199485))

(declare-fun m!199487 () Bool)

(assert (=> b!171114 m!199487))

(assert (=> b!170986 d!51739))

(declare-fun d!51741 () Bool)

(declare-fun e!112969 () Bool)

(assert (=> d!51741 e!112969))

(declare-fun res!81355 () Bool)

(assert (=> d!51741 (=> (not res!81355) (not e!112969))))

(declare-fun lt!85254 () ListLongMap!2171)

(assert (=> d!51741 (= res!81355 (contains!1143 lt!85254 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun lt!85255 () List!2213)

(assert (=> d!51741 (= lt!85254 (ListLongMap!2172 lt!85255))))

(declare-fun lt!85256 () Unit!5249)

(declare-fun lt!85253 () Unit!5249)

(assert (=> d!51741 (= lt!85256 lt!85253)))

(assert (=> d!51741 (= (getValueByKey!183 lt!85255 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) (Some!188 (_2!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!51741 (= lt!85253 (lemmaContainsTupThenGetReturnValue!98 lt!85255 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!51741 (= lt!85255 (insertStrictlySorted!100 (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405))) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!51741 (= (+!239 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405)) (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) lt!85254)))

(declare-fun b!171115 () Bool)

(declare-fun res!81356 () Bool)

(assert (=> b!171115 (=> (not res!81356) (not e!112969))))

(assert (=> b!171115 (= res!81356 (= (getValueByKey!183 (toList!1101 lt!85254) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) (Some!188 (_2!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171116 () Bool)

(assert (=> b!171116 (= e!112969 (contains!1145 (toList!1101 lt!85254) (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (= (and d!51741 res!81355) b!171115))

(assert (= (and b!171115 res!81356) b!171116))

(declare-fun m!199489 () Bool)

(assert (=> d!51741 m!199489))

(declare-fun m!199491 () Bool)

(assert (=> d!51741 m!199491))

(declare-fun m!199493 () Bool)

(assert (=> d!51741 m!199493))

(declare-fun m!199495 () Bool)

(assert (=> d!51741 m!199495))

(declare-fun m!199497 () Bool)

(assert (=> b!171115 m!199497))

(declare-fun m!199499 () Bool)

(assert (=> b!171116 m!199499))

(assert (=> bm!17404 d!51741))

(declare-fun b!171117 () Bool)

(declare-fun e!112974 () Bool)

(declare-fun e!112971 () Bool)

(assert (=> b!171117 (= e!112974 e!112971)))

(declare-fun c!30543 () Bool)

(assert (=> b!171117 (= c!30543 (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun b!171119 () Bool)

(declare-fun e!112970 () Bool)

(assert (=> b!171119 (= e!112970 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!171119 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!171120 () Bool)

(declare-fun res!81360 () Bool)

(declare-fun e!112973 () Bool)

(assert (=> b!171120 (=> (not res!81360) (not e!112973))))

(declare-fun lt!85261 () ListLongMap!2171)

(assert (=> b!171120 (= res!81360 (not (contains!1143 lt!85261 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!171121 () Bool)

(declare-fun e!112976 () ListLongMap!2171)

(assert (=> b!171121 (= e!112976 (ListLongMap!2172 Nil!2210))))

(declare-fun b!171122 () Bool)

(declare-fun e!112972 () Bool)

(assert (=> b!171122 (= e!112974 e!112972)))

(assert (=> b!171122 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun res!81359 () Bool)

(assert (=> b!171122 (= res!81359 (contains!1143 lt!85261 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!171122 (=> (not res!81359) (not e!112972))))

(declare-fun b!171123 () Bool)

(assert (=> b!171123 (= e!112973 e!112974)))

(declare-fun c!30545 () Bool)

(assert (=> b!171123 (= c!30545 e!112970)))

(declare-fun res!81358 () Bool)

(assert (=> b!171123 (=> (not res!81358) (not e!112970))))

(assert (=> b!171123 (= res!81358 (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun bm!17425 () Bool)

(declare-fun call!17428 () ListLongMap!2171)

(assert (=> bm!17425 (= call!17428 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3555 thiss!1248)))))

(declare-fun d!51743 () Bool)

(assert (=> d!51743 e!112973))

(declare-fun res!81357 () Bool)

(assert (=> d!51743 (=> (not res!81357) (not e!112973))))

(assert (=> d!51743 (= res!81357 (not (contains!1143 lt!85261 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!51743 (= lt!85261 e!112976)))

(declare-fun c!30542 () Bool)

(assert (=> d!51743 (= c!30542 (bvsge #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> d!51743 (validMask!0 (mask!8383 thiss!1248))))

(assert (=> d!51743 (= (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)) lt!85261)))

(declare-fun b!171118 () Bool)

(declare-fun e!112975 () ListLongMap!2171)

(assert (=> b!171118 (= e!112976 e!112975)))

(declare-fun c!30544 () Bool)

(assert (=> b!171118 (= c!30544 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!171124 () Bool)

(assert (=> b!171124 (= e!112971 (= lt!85261 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3555 thiss!1248))))))

(declare-fun b!171125 () Bool)

(assert (=> b!171125 (= e!112971 (isEmpty!439 lt!85261))))

(declare-fun b!171126 () Bool)

(assert (=> b!171126 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> b!171126 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3682 (_values!3538 thiss!1248))))))

(assert (=> b!171126 (= e!112972 (= (apply!129 lt!85261 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!171127 () Bool)

(assert (=> b!171127 (= e!112975 call!17428)))

(declare-fun b!171128 () Bool)

(declare-fun lt!85260 () Unit!5249)

(declare-fun lt!85257 () Unit!5249)

(assert (=> b!171128 (= lt!85260 lt!85257)))

(declare-fun lt!85258 () ListLongMap!2171)

(declare-fun lt!85259 () (_ BitVec 64))

(declare-fun lt!85262 () (_ BitVec 64))

(declare-fun lt!85263 () V!4987)

(assert (=> b!171128 (not (contains!1143 (+!239 lt!85258 (tuple2!3231 lt!85259 lt!85263)) lt!85262))))

(assert (=> b!171128 (= lt!85257 (addStillNotContains!73 lt!85258 lt!85259 lt!85263 lt!85262))))

(assert (=> b!171128 (= lt!85262 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!171128 (= lt!85263 (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!171128 (= lt!85259 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!171128 (= lt!85258 call!17428)))

(assert (=> b!171128 (= e!112975 (+!239 call!17428 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!51743 c!30542) b!171121))

(assert (= (and d!51743 (not c!30542)) b!171118))

(assert (= (and b!171118 c!30544) b!171128))

(assert (= (and b!171118 (not c!30544)) b!171127))

(assert (= (or b!171128 b!171127) bm!17425))

(assert (= (and d!51743 res!81357) b!171120))

(assert (= (and b!171120 res!81360) b!171123))

(assert (= (and b!171123 res!81358) b!171119))

(assert (= (and b!171123 c!30545) b!171122))

(assert (= (and b!171123 (not c!30545)) b!171117))

(assert (= (and b!171122 res!81359) b!171126))

(assert (= (and b!171117 c!30543) b!171124))

(assert (= (and b!171117 (not c!30543)) b!171125))

(declare-fun b_lambda!6929 () Bool)

(assert (=> (not b_lambda!6929) (not b!171126)))

(assert (=> b!171126 t!7026))

(declare-fun b_and!10677 () Bool)

(assert (= b_and!10675 (and (=> t!7026 result!4569) b_and!10677)))

(declare-fun b_lambda!6931 () Bool)

(assert (=> (not b_lambda!6931) (not b!171128)))

(assert (=> b!171128 t!7026))

(declare-fun b_and!10679 () Bool)

(assert (= b_and!10677 (and (=> t!7026 result!4569) b_and!10679)))

(assert (=> b!171118 m!199219))

(assert (=> b!171118 m!199219))

(assert (=> b!171118 m!199225))

(declare-fun m!199501 () Bool)

(assert (=> b!171124 m!199501))

(assert (=> b!171119 m!199219))

(assert (=> b!171119 m!199219))

(assert (=> b!171119 m!199225))

(assert (=> bm!17425 m!199501))

(declare-fun m!199503 () Bool)

(assert (=> d!51743 m!199503))

(assert (=> d!51743 m!199273))

(assert (=> b!171122 m!199219))

(assert (=> b!171122 m!199219))

(declare-fun m!199505 () Bool)

(assert (=> b!171122 m!199505))

(assert (=> b!171128 m!199265))

(assert (=> b!171128 m!199267))

(assert (=> b!171128 m!199271))

(declare-fun m!199507 () Bool)

(assert (=> b!171128 m!199507))

(assert (=> b!171128 m!199265))

(assert (=> b!171128 m!199267))

(declare-fun m!199509 () Bool)

(assert (=> b!171128 m!199509))

(assert (=> b!171128 m!199219))

(declare-fun m!199511 () Bool)

(assert (=> b!171128 m!199511))

(declare-fun m!199513 () Bool)

(assert (=> b!171128 m!199513))

(assert (=> b!171128 m!199511))

(declare-fun m!199515 () Bool)

(assert (=> b!171125 m!199515))

(assert (=> b!171126 m!199265))

(assert (=> b!171126 m!199267))

(assert (=> b!171126 m!199271))

(assert (=> b!171126 m!199219))

(declare-fun m!199517 () Bool)

(assert (=> b!171126 m!199517))

(assert (=> b!171126 m!199265))

(assert (=> b!171126 m!199267))

(assert (=> b!171126 m!199219))

(declare-fun m!199519 () Bool)

(assert (=> b!171120 m!199519))

(assert (=> bm!17410 d!51743))

(declare-fun b!171130 () Bool)

(declare-fun e!112977 () Option!189)

(declare-fun e!112978 () Option!189)

(assert (=> b!171130 (= e!112977 e!112978)))

(declare-fun c!30547 () Bool)

(assert (=> b!171130 (= c!30547 (and ((_ is Cons!2209) (toList!1101 lt!85193)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85193))) (_1!1625 (tuple2!3231 key!828 v!309))))))))

(declare-fun b!171131 () Bool)

(assert (=> b!171131 (= e!112978 (getValueByKey!183 (t!7023 (toList!1101 lt!85193)) (_1!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun d!51745 () Bool)

(declare-fun c!30546 () Bool)

(assert (=> d!51745 (= c!30546 (and ((_ is Cons!2209) (toList!1101 lt!85193)) (= (_1!1625 (h!2826 (toList!1101 lt!85193))) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(assert (=> d!51745 (= (getValueByKey!183 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309))) e!112977)))

(declare-fun b!171132 () Bool)

(assert (=> b!171132 (= e!112978 None!187)))

(declare-fun b!171129 () Bool)

(assert (=> b!171129 (= e!112977 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85193)))))))

(assert (= (and d!51745 c!30546) b!171129))

(assert (= (and d!51745 (not c!30546)) b!171130))

(assert (= (and b!171130 c!30547) b!171131))

(assert (= (and b!171130 (not c!30547)) b!171132))

(declare-fun m!199521 () Bool)

(assert (=> b!171131 m!199521))

(assert (=> b!170985 d!51745))

(declare-fun b!171141 () Bool)

(declare-fun e!112987 () Bool)

(declare-fun e!112985 () Bool)

(assert (=> b!171141 (= e!112987 e!112985)))

(declare-fun c!30550 () Bool)

(assert (=> b!171141 (= c!30550 (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun d!51747 () Bool)

(declare-fun res!81366 () Bool)

(assert (=> d!51747 (=> res!81366 e!112987)))

(assert (=> d!51747 (= res!81366 (bvsge #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))

(assert (=> d!51747 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5387 lt!85067) (mask!8383 lt!85067)) e!112987)))

(declare-fun bm!17428 () Bool)

(declare-fun call!17431 () Bool)

(assert (=> bm!17428 (= call!17431 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5387 lt!85067) (mask!8383 lt!85067)))))

(declare-fun b!171142 () Bool)

(assert (=> b!171142 (= e!112985 call!17431)))

(declare-fun b!171143 () Bool)

(declare-fun e!112986 () Bool)

(assert (=> b!171143 (= e!112986 call!17431)))

(declare-fun b!171144 () Bool)

(assert (=> b!171144 (= e!112985 e!112986)))

(declare-fun lt!85272 () (_ BitVec 64))

(assert (=> b!171144 (= lt!85272 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000))))

(declare-fun lt!85270 () Unit!5249)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7122 (_ BitVec 64) (_ BitVec 32)) Unit!5249)

(assert (=> b!171144 (= lt!85270 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5387 lt!85067) lt!85272 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!171144 (arrayContainsKey!0 (_keys!5387 lt!85067) lt!85272 #b00000000000000000000000000000000)))

(declare-fun lt!85271 () Unit!5249)

(assert (=> b!171144 (= lt!85271 lt!85270)))

(declare-fun res!81365 () Bool)

(declare-datatypes ((SeekEntryResult!544 0))(
  ( (MissingZero!544 (index!4344 (_ BitVec 32))) (Found!544 (index!4345 (_ BitVec 32))) (Intermediate!544 (undefined!1356 Bool) (index!4346 (_ BitVec 32)) (x!18969 (_ BitVec 32))) (Undefined!544) (MissingVacant!544 (index!4347 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7122 (_ BitVec 32)) SeekEntryResult!544)

(assert (=> b!171144 (= res!81365 (= (seekEntryOrOpen!0 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) (_keys!5387 lt!85067) (mask!8383 lt!85067)) (Found!544 #b00000000000000000000000000000000)))))

(assert (=> b!171144 (=> (not res!81365) (not e!112986))))

(assert (= (and d!51747 (not res!81366)) b!171141))

(assert (= (and b!171141 c!30550) b!171144))

(assert (= (and b!171141 (not c!30550)) b!171142))

(assert (= (and b!171144 res!81365) b!171143))

(assert (= (or b!171143 b!171142) bm!17428))

(declare-fun m!199523 () Bool)

(assert (=> b!171141 m!199523))

(assert (=> b!171141 m!199523))

(declare-fun m!199525 () Bool)

(assert (=> b!171141 m!199525))

(declare-fun m!199527 () Bool)

(assert (=> bm!17428 m!199527))

(assert (=> b!171144 m!199523))

(declare-fun m!199529 () Bool)

(assert (=> b!171144 m!199529))

(declare-fun m!199531 () Bool)

(assert (=> b!171144 m!199531))

(assert (=> b!171144 m!199523))

(declare-fun m!199533 () Bool)

(assert (=> b!171144 m!199533))

(assert (=> b!170944 d!51747))

(declare-fun d!51749 () Bool)

(assert (=> d!51749 (= (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!170929 d!51749))

(declare-fun b!171153 () Bool)

(declare-fun e!112993 () (_ BitVec 32))

(declare-fun call!17434 () (_ BitVec 32))

(assert (=> b!171153 (= e!112993 call!17434)))

(declare-fun b!171154 () Bool)

(declare-fun e!112992 () (_ BitVec 32))

(assert (=> b!171154 (= e!112992 #b00000000000000000000000000000000)))

(declare-fun b!171155 () Bool)

(assert (=> b!171155 (= e!112992 e!112993)))

(declare-fun c!30556 () Bool)

(assert (=> b!171155 (= c!30556 (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun b!171156 () Bool)

(assert (=> b!171156 (= e!112993 (bvadd #b00000000000000000000000000000001 call!17434))))

(declare-fun bm!17431 () Bool)

(assert (=> bm!17431 (= call!17434 (arrayCountValidKeys!0 (_keys!5387 lt!85067) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 lt!85067))))))

(declare-fun d!51751 () Bool)

(declare-fun lt!85275 () (_ BitVec 32))

(assert (=> d!51751 (and (bvsge lt!85275 #b00000000000000000000000000000000) (bvsle lt!85275 (bvsub (size!3681 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(assert (=> d!51751 (= lt!85275 e!112992)))

(declare-fun c!30555 () Bool)

(assert (=> d!51751 (= c!30555 (bvsge #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))

(assert (=> d!51751 (and (bvsle #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3681 (_keys!5387 lt!85067)) (size!3681 (_keys!5387 lt!85067))))))

(assert (=> d!51751 (= (arrayCountValidKeys!0 (_keys!5387 lt!85067) #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))) lt!85275)))

(assert (= (and d!51751 c!30555) b!171154))

(assert (= (and d!51751 (not c!30555)) b!171155))

(assert (= (and b!171155 c!30556) b!171156))

(assert (= (and b!171155 (not c!30556)) b!171153))

(assert (= (or b!171156 b!171153) bm!17431))

(assert (=> b!171155 m!199523))

(assert (=> b!171155 m!199523))

(assert (=> b!171155 m!199525))

(declare-fun m!199535 () Bool)

(assert (=> bm!17431 m!199535))

(assert (=> b!170943 d!51751))

(declare-fun d!51753 () Bool)

(declare-fun e!112994 () Bool)

(assert (=> d!51753 e!112994))

(declare-fun res!81367 () Bool)

(assert (=> d!51753 (=> (not res!81367) (not e!112994))))

(declare-fun lt!85277 () ListLongMap!2171)

(assert (=> d!51753 (= res!81367 (contains!1143 lt!85277 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun lt!85278 () List!2213)

(assert (=> d!51753 (= lt!85277 (ListLongMap!2172 lt!85278))))

(declare-fun lt!85279 () Unit!5249)

(declare-fun lt!85276 () Unit!5249)

(assert (=> d!51753 (= lt!85279 lt!85276)))

(assert (=> d!51753 (= (getValueByKey!183 lt!85278 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) (Some!188 (_2!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!51753 (= lt!85276 (lemmaContainsTupThenGetReturnValue!98 lt!85278 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!51753 (= lt!85278 (insertStrictlySorted!100 (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412))) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!51753 (= (+!239 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412)) (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) lt!85277)))

(declare-fun b!171157 () Bool)

(declare-fun res!81368 () Bool)

(assert (=> b!171157 (=> (not res!81368) (not e!112994))))

(assert (=> b!171157 (= res!81368 (= (getValueByKey!183 (toList!1101 lt!85277) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) (Some!188 (_2!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171158 () Bool)

(assert (=> b!171158 (= e!112994 (contains!1145 (toList!1101 lt!85277) (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (= (and d!51753 res!81367) b!171157))

(assert (= (and b!171157 res!81368) b!171158))

(declare-fun m!199537 () Bool)

(assert (=> d!51753 m!199537))

(declare-fun m!199539 () Bool)

(assert (=> d!51753 m!199539))

(declare-fun m!199541 () Bool)

(assert (=> d!51753 m!199541))

(declare-fun m!199543 () Bool)

(assert (=> d!51753 m!199543))

(declare-fun m!199545 () Bool)

(assert (=> b!171157 m!199545))

(declare-fun m!199547 () Bool)

(assert (=> b!171158 m!199547))

(assert (=> bm!17411 d!51753))

(declare-fun d!51755 () Bool)

(declare-fun e!112996 () Bool)

(assert (=> d!51755 e!112996))

(declare-fun res!81369 () Bool)

(assert (=> d!51755 (=> res!81369 e!112996)))

(declare-fun lt!85282 () Bool)

(assert (=> d!51755 (= res!81369 (not lt!85282))))

(declare-fun lt!85280 () Bool)

(assert (=> d!51755 (= lt!85282 lt!85280)))

(declare-fun lt!85281 () Unit!5249)

(declare-fun e!112995 () Unit!5249)

(assert (=> d!51755 (= lt!85281 e!112995)))

(declare-fun c!30557 () Bool)

(assert (=> d!51755 (= c!30557 lt!85280)))

(assert (=> d!51755 (= lt!85280 (containsKey!187 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> d!51755 (= (contains!1143 lt!85177 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!85282)))

(declare-fun b!171159 () Bool)

(declare-fun lt!85283 () Unit!5249)

(assert (=> b!171159 (= e!112995 lt!85283)))

(assert (=> b!171159 (= lt!85283 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> b!171159 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!171160 () Bool)

(declare-fun Unit!5259 () Unit!5249)

(assert (=> b!171160 (= e!112995 Unit!5259)))

(declare-fun b!171161 () Bool)

(assert (=> b!171161 (= e!112996 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!51755 c!30557) b!171159))

(assert (= (and d!51755 (not c!30557)) b!171160))

(assert (= (and d!51755 (not res!81369)) b!171161))

(declare-fun m!199549 () Bool)

(assert (=> d!51755 m!199549))

(declare-fun m!199551 () Bool)

(assert (=> b!171159 m!199551))

(assert (=> b!171159 m!199345))

(assert (=> b!171159 m!199345))

(declare-fun m!199553 () Bool)

(assert (=> b!171159 m!199553))

(assert (=> b!171161 m!199345))

(assert (=> b!171161 m!199345))

(assert (=> b!171161 m!199553))

(assert (=> d!51695 d!51755))

(declare-fun b!171163 () Bool)

(declare-fun e!112997 () Option!189)

(declare-fun e!112998 () Option!189)

(assert (=> b!171163 (= e!112997 e!112998)))

(declare-fun c!30559 () Bool)

(assert (=> b!171163 (= c!30559 (and ((_ is Cons!2209) lt!85178) (not (= (_1!1625 (h!2826 lt!85178)) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun b!171164 () Bool)

(assert (=> b!171164 (= e!112998 (getValueByKey!183 (t!7023 lt!85178) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun d!51757 () Bool)

(declare-fun c!30558 () Bool)

(assert (=> d!51757 (= c!30558 (and ((_ is Cons!2209) lt!85178) (= (_1!1625 (h!2826 lt!85178)) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!51757 (= (getValueByKey!183 lt!85178 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) e!112997)))

(declare-fun b!171165 () Bool)

(assert (=> b!171165 (= e!112998 None!187)))

(declare-fun b!171162 () Bool)

(assert (=> b!171162 (= e!112997 (Some!188 (_2!1625 (h!2826 lt!85178))))))

(assert (= (and d!51757 c!30558) b!171162))

(assert (= (and d!51757 (not c!30558)) b!171163))

(assert (= (and b!171163 c!30559) b!171164))

(assert (= (and b!171163 (not c!30559)) b!171165))

(declare-fun m!199555 () Bool)

(assert (=> b!171164 m!199555))

(assert (=> d!51695 d!51757))

(declare-fun d!51759 () Bool)

(assert (=> d!51759 (= (getValueByKey!183 lt!85178 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) (Some!188 (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun lt!85284 () Unit!5249)

(assert (=> d!51759 (= lt!85284 (choose!932 lt!85178 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun e!112999 () Bool)

(assert (=> d!51759 e!112999))

(declare-fun res!81370 () Bool)

(assert (=> d!51759 (=> (not res!81370) (not e!112999))))

(assert (=> d!51759 (= res!81370 (isStrictlySorted!326 lt!85178))))

(assert (=> d!51759 (= (lemmaContainsTupThenGetReturnValue!98 lt!85178 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!85284)))

(declare-fun b!171166 () Bool)

(declare-fun res!81371 () Bool)

(assert (=> b!171166 (=> (not res!81371) (not e!112999))))

(assert (=> b!171166 (= res!81371 (containsKey!187 lt!85178 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!171167 () Bool)

(assert (=> b!171167 (= e!112999 (contains!1145 lt!85178 (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!51759 res!81370) b!171166))

(assert (= (and b!171166 res!81371) b!171167))

(assert (=> d!51759 m!199339))

(declare-fun m!199557 () Bool)

(assert (=> d!51759 m!199557))

(declare-fun m!199559 () Bool)

(assert (=> d!51759 m!199559))

(declare-fun m!199561 () Bool)

(assert (=> b!171166 m!199561))

(declare-fun m!199563 () Bool)

(assert (=> b!171167 m!199563))

(assert (=> d!51695 d!51759))

(declare-fun b!171168 () Bool)

(declare-fun e!113000 () List!2213)

(declare-fun call!17436 () List!2213)

(assert (=> b!171168 (= e!113000 call!17436)))

(declare-fun b!171169 () Bool)

(declare-fun res!81373 () Bool)

(declare-fun e!113004 () Bool)

(assert (=> b!171169 (=> (not res!81373) (not e!113004))))

(declare-fun lt!85285 () List!2213)

(assert (=> b!171169 (= res!81373 (containsKey!187 lt!85285 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!171170 () Bool)

(declare-fun e!113003 () List!2213)

(declare-fun e!113001 () List!2213)

(assert (=> b!171170 (= e!113003 e!113001)))

(declare-fun c!30561 () Bool)

(assert (=> b!171170 (= c!30561 (and ((_ is Cons!2209) (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))) (= (_1!1625 (h!2826 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun c!30562 () Bool)

(declare-fun e!113002 () List!2213)

(declare-fun b!171171 () Bool)

(assert (=> b!171171 (= e!113002 (ite c!30561 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))) (ite c!30562 (Cons!2209 (h!2826 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))) (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))) Nil!2210)))))

(declare-fun b!171172 () Bool)

(assert (=> b!171172 (= e!113004 (contains!1145 lt!85285 (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!171173 () Bool)

(declare-fun call!17435 () List!2213)

(assert (=> b!171173 (= e!113003 call!17435)))

(declare-fun bm!17432 () Bool)

(declare-fun c!30563 () Bool)

(assert (=> bm!17432 (= call!17435 ($colon$colon!96 e!113002 (ite c!30563 (h!2826 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))) (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun c!30560 () Bool)

(assert (=> bm!17432 (= c!30560 c!30563)))

(declare-fun bm!17434 () Bool)

(declare-fun call!17437 () List!2213)

(assert (=> bm!17434 (= call!17436 call!17437)))

(declare-fun b!171174 () Bool)

(assert (=> b!171174 (= e!113001 call!17437)))

(declare-fun b!171175 () Bool)

(assert (=> b!171175 (= e!113000 call!17436)))

(declare-fun b!171176 () Bool)

(assert (=> b!171176 (= c!30562 (and ((_ is Cons!2209) (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))) (bvsgt (_1!1625 (h!2826 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> b!171176 (= e!113001 e!113000)))

(declare-fun b!171177 () Bool)

(assert (=> b!171177 (= e!113002 (insertStrictlySorted!100 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun bm!17433 () Bool)

(assert (=> bm!17433 (= call!17437 call!17435)))

(declare-fun d!51761 () Bool)

(assert (=> d!51761 e!113004))

(declare-fun res!81372 () Bool)

(assert (=> d!51761 (=> (not res!81372) (not e!113004))))

(assert (=> d!51761 (= res!81372 (isStrictlySorted!326 lt!85285))))

(assert (=> d!51761 (= lt!85285 e!113003)))

(assert (=> d!51761 (= c!30563 (and ((_ is Cons!2209) (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))) (bvslt (_1!1625 (h!2826 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!51761 (isStrictlySorted!326 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))))

(assert (=> d!51761 (= (insertStrictlySorted!100 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!85285)))

(assert (= (and d!51761 c!30563) b!171173))

(assert (= (and d!51761 (not c!30563)) b!171170))

(assert (= (and b!171170 c!30561) b!171174))

(assert (= (and b!171170 (not c!30561)) b!171176))

(assert (= (and b!171176 c!30562) b!171175))

(assert (= (and b!171176 (not c!30562)) b!171168))

(assert (= (or b!171175 b!171168) bm!17434))

(assert (= (or b!171174 bm!17434) bm!17433))

(assert (= (or b!171173 bm!17433) bm!17432))

(assert (= (and bm!17432 c!30560) b!171177))

(assert (= (and bm!17432 (not c!30560)) b!171171))

(assert (= (and d!51761 res!81372) b!171169))

(assert (= (and b!171169 res!81373) b!171172))

(declare-fun m!199565 () Bool)

(assert (=> b!171169 m!199565))

(declare-fun m!199567 () Bool)

(assert (=> d!51761 m!199567))

(declare-fun m!199569 () Bool)

(assert (=> d!51761 m!199569))

(declare-fun m!199571 () Bool)

(assert (=> b!171177 m!199571))

(declare-fun m!199573 () Bool)

(assert (=> b!171172 m!199573))

(declare-fun m!199575 () Bool)

(assert (=> bm!17432 m!199575))

(assert (=> d!51695 d!51761))

(declare-fun b!171189 () Bool)

(declare-fun e!113007 () Bool)

(assert (=> b!171189 (= e!113007 (and (bvsge (extraKeys!3296 lt!85067) #b00000000000000000000000000000000) (bvsle (extraKeys!3296 lt!85067) #b00000000000000000000000000000011) (bvsge (_vacant!1162 lt!85067) #b00000000000000000000000000000000)))))

(declare-fun b!171186 () Bool)

(declare-fun res!81385 () Bool)

(assert (=> b!171186 (=> (not res!81385) (not e!113007))))

(assert (=> b!171186 (= res!81385 (and (= (size!3682 (_values!3538 lt!85067)) (bvadd (mask!8383 lt!85067) #b00000000000000000000000000000001)) (= (size!3681 (_keys!5387 lt!85067)) (size!3682 (_values!3538 lt!85067))) (bvsge (_size!1162 lt!85067) #b00000000000000000000000000000000) (bvsle (_size!1162 lt!85067) (bvadd (mask!8383 lt!85067) #b00000000000000000000000000000001))))))

(declare-fun b!171188 () Bool)

(declare-fun res!81383 () Bool)

(assert (=> b!171188 (=> (not res!81383) (not e!113007))))

(declare-fun size!3685 (LongMapFixedSize!2226) (_ BitVec 32))

(assert (=> b!171188 (= res!81383 (= (size!3685 lt!85067) (bvadd (_size!1162 lt!85067) (bvsdiv (bvadd (extraKeys!3296 lt!85067) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!51763 () Bool)

(declare-fun res!81382 () Bool)

(assert (=> d!51763 (=> (not res!81382) (not e!113007))))

(assert (=> d!51763 (= res!81382 (validMask!0 (mask!8383 lt!85067)))))

(assert (=> d!51763 (= (simpleValid!134 lt!85067) e!113007)))

(declare-fun b!171187 () Bool)

(declare-fun res!81384 () Bool)

(assert (=> b!171187 (=> (not res!81384) (not e!113007))))

(assert (=> b!171187 (= res!81384 (bvsge (size!3685 lt!85067) (_size!1162 lt!85067)))))

(assert (= (and d!51763 res!81382) b!171186))

(assert (= (and b!171186 res!81385) b!171187))

(assert (= (and b!171187 res!81384) b!171188))

(assert (= (and b!171188 res!81383) b!171189))

(declare-fun m!199577 () Bool)

(assert (=> b!171188 m!199577))

(declare-fun m!199579 () Bool)

(assert (=> d!51763 m!199579))

(assert (=> b!171187 m!199577))

(assert (=> d!51689 d!51763))

(declare-fun d!51765 () Bool)

(declare-fun get!1940 (Option!189) V!4987)

(assert (=> d!51765 (= (apply!129 lt!85127 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) (get!1940 (getValueByKey!183 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7053 () Bool)

(assert (= bs!7053 d!51765))

(assert (=> bs!7053 m!199219))

(assert (=> bs!7053 m!199449))

(assert (=> bs!7053 m!199449))

(declare-fun m!199581 () Bool)

(assert (=> bs!7053 m!199581))

(assert (=> b!170932 d!51765))

(declare-fun d!51767 () Bool)

(declare-fun c!30566 () Bool)

(assert (=> d!51767 (= c!30566 ((_ is ValueCellFull!1659) (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!113010 () V!4987)

(assert (=> d!51767 (= (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!113010)))

(declare-fun b!171194 () Bool)

(declare-fun get!1941 (ValueCell!1659 V!4987) V!4987)

(assert (=> b!171194 (= e!113010 (get!1941 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!171195 () Bool)

(declare-fun get!1942 (ValueCell!1659 V!4987) V!4987)

(assert (=> b!171195 (= e!113010 (get!1942 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!51767 c!30566) b!171194))

(assert (= (and d!51767 (not c!30566)) b!171195))

(assert (=> b!171194 m!199265))

(assert (=> b!171194 m!199267))

(declare-fun m!199583 () Bool)

(assert (=> b!171194 m!199583))

(assert (=> b!171195 m!199265))

(assert (=> b!171195 m!199267))

(declare-fun m!199585 () Bool)

(assert (=> b!171195 m!199585))

(assert (=> b!170932 d!51767))

(assert (=> b!170961 d!51749))

(declare-fun bm!17437 () Bool)

(declare-fun call!17440 () Bool)

(declare-fun c!30569 () Bool)

(assert (=> bm!17437 (= call!17440 (arrayNoDuplicates!0 (_keys!5387 lt!85067) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30569 (Cons!2211 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) Nil!2212) Nil!2212)))))

(declare-fun b!171206 () Bool)

(declare-fun e!113022 () Bool)

(assert (=> b!171206 (= e!113022 call!17440)))

(declare-fun b!171207 () Bool)

(declare-fun e!113021 () Bool)

(assert (=> b!171207 (= e!113021 e!113022)))

(assert (=> b!171207 (= c!30569 (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun b!171208 () Bool)

(assert (=> b!171208 (= e!113022 call!17440)))

(declare-fun b!171209 () Bool)

(declare-fun e!113019 () Bool)

(declare-fun contains!1146 (List!2215 (_ BitVec 64)) Bool)

(assert (=> b!171209 (= e!113019 (contains!1146 Nil!2212 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun b!171210 () Bool)

(declare-fun e!113020 () Bool)

(assert (=> b!171210 (= e!113020 e!113021)))

(declare-fun res!81392 () Bool)

(assert (=> b!171210 (=> (not res!81392) (not e!113021))))

(assert (=> b!171210 (= res!81392 (not e!113019))))

(declare-fun res!81394 () Bool)

(assert (=> b!171210 (=> (not res!81394) (not e!113019))))

(assert (=> b!171210 (= res!81394 (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun d!51769 () Bool)

(declare-fun res!81393 () Bool)

(assert (=> d!51769 (=> res!81393 e!113020)))

(assert (=> d!51769 (= res!81393 (bvsge #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))

(assert (=> d!51769 (= (arrayNoDuplicates!0 (_keys!5387 lt!85067) #b00000000000000000000000000000000 Nil!2212) e!113020)))

(assert (= (and d!51769 (not res!81393)) b!171210))

(assert (= (and b!171210 res!81394) b!171209))

(assert (= (and b!171210 res!81392) b!171207))

(assert (= (and b!171207 c!30569) b!171206))

(assert (= (and b!171207 (not c!30569)) b!171208))

(assert (= (or b!171206 b!171208) bm!17437))

(assert (=> bm!17437 m!199523))

(declare-fun m!199587 () Bool)

(assert (=> bm!17437 m!199587))

(assert (=> b!171207 m!199523))

(assert (=> b!171207 m!199523))

(assert (=> b!171207 m!199525))

(assert (=> b!171209 m!199523))

(assert (=> b!171209 m!199523))

(declare-fun m!199589 () Bool)

(assert (=> b!171209 m!199589))

(assert (=> b!171210 m!199523))

(assert (=> b!171210 m!199523))

(assert (=> b!171210 m!199525))

(assert (=> b!170945 d!51769))

(declare-fun b!171214 () Bool)

(declare-fun e!113023 () Bool)

(assert (=> b!171214 (= e!113023 (and (bvsge (extraKeys!3296 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3296 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1162 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!171211 () Bool)

(declare-fun res!81398 () Bool)

(assert (=> b!171211 (=> (not res!81398) (not e!113023))))

(assert (=> b!171211 (= res!81398 (and (= (size!3682 (_values!3538 thiss!1248)) (bvadd (mask!8383 thiss!1248) #b00000000000000000000000000000001)) (= (size!3681 (_keys!5387 thiss!1248)) (size!3682 (_values!3538 thiss!1248))) (bvsge (_size!1162 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1162 thiss!1248) (bvadd (mask!8383 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!171213 () Bool)

(declare-fun res!81396 () Bool)

(assert (=> b!171213 (=> (not res!81396) (not e!113023))))

(assert (=> b!171213 (= res!81396 (= (size!3685 thiss!1248) (bvadd (_size!1162 thiss!1248) (bvsdiv (bvadd (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!51771 () Bool)

(declare-fun res!81395 () Bool)

(assert (=> d!51771 (=> (not res!81395) (not e!113023))))

(assert (=> d!51771 (= res!81395 (validMask!0 (mask!8383 thiss!1248)))))

(assert (=> d!51771 (= (simpleValid!134 thiss!1248) e!113023)))

(declare-fun b!171212 () Bool)

(declare-fun res!81397 () Bool)

(assert (=> b!171212 (=> (not res!81397) (not e!113023))))

(assert (=> b!171212 (= res!81397 (bvsge (size!3685 thiss!1248) (_size!1162 thiss!1248)))))

(assert (= (and d!51771 res!81395) b!171211))

(assert (= (and b!171211 res!81398) b!171212))

(assert (= (and b!171212 res!81397) b!171213))

(assert (= (and b!171213 res!81396) b!171214))

(declare-fun m!199591 () Bool)

(assert (=> b!171213 m!199591))

(assert (=> d!51771 m!199273))

(assert (=> b!171212 m!199591))

(assert (=> d!51697 d!51771))

(declare-fun d!51773 () Bool)

(assert (=> d!51773 (= (apply!129 lt!85127 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1940 (getValueByKey!183 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7054 () Bool)

(assert (= bs!7054 d!51773))

(assert (=> bs!7054 m!199405))

(assert (=> bs!7054 m!199405))

(declare-fun m!199593 () Bool)

(assert (=> bs!7054 m!199593))

(assert (=> b!170930 d!51773))

(declare-fun b!171215 () Bool)

(declare-fun res!81407 () Bool)

(declare-fun e!113024 () Bool)

(assert (=> b!171215 (=> (not res!81407) (not e!113024))))

(declare-fun e!113036 () Bool)

(assert (=> b!171215 (= res!81407 e!113036)))

(declare-fun res!81405 () Bool)

(assert (=> b!171215 (=> res!81405 e!113036)))

(declare-fun e!113035 () Bool)

(assert (=> b!171215 (= res!81405 (not e!113035))))

(declare-fun res!81404 () Bool)

(assert (=> b!171215 (=> (not res!81404) (not e!113035))))

(assert (=> b!171215 (= res!81404 (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))

(declare-fun bm!17438 () Bool)

(declare-fun call!17444 () ListLongMap!2171)

(declare-fun call!17445 () ListLongMap!2171)

(assert (=> bm!17438 (= call!17444 call!17445)))

(declare-fun d!51775 () Bool)

(assert (=> d!51775 e!113024))

(declare-fun res!81400 () Bool)

(assert (=> d!51775 (=> (not res!81400) (not e!113024))))

(assert (=> d!51775 (= res!81400 (or (bvsge #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))))

(declare-fun lt!85292 () ListLongMap!2171)

(declare-fun lt!85301 () ListLongMap!2171)

(assert (=> d!51775 (= lt!85292 lt!85301)))

(declare-fun lt!85304 () Unit!5249)

(declare-fun e!113028 () Unit!5249)

(assert (=> d!51775 (= lt!85304 e!113028)))

(declare-fun c!30575 () Bool)

(declare-fun e!113029 () Bool)

(assert (=> d!51775 (= c!30575 e!113029)))

(declare-fun res!81403 () Bool)

(assert (=> d!51775 (=> (not res!81403) (not e!113029))))

(assert (=> d!51775 (= res!81403 (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))

(declare-fun e!113027 () ListLongMap!2171)

(assert (=> d!51775 (= lt!85301 e!113027)))

(declare-fun c!30573 () Bool)

(assert (=> d!51775 (= c!30573 (and (not (= (bvand (extraKeys!3296 lt!85067) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3296 lt!85067) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!51775 (validMask!0 (mask!8383 lt!85067))))

(assert (=> d!51775 (= (getCurrentListMap!750 (_keys!5387 lt!85067) (_values!3538 lt!85067) (mask!8383 lt!85067) (extraKeys!3296 lt!85067) (zeroValue!3398 lt!85067) (minValue!3398 lt!85067) #b00000000000000000000000000000000 (defaultEntry!3555 lt!85067)) lt!85292)))

(declare-fun bm!17439 () Bool)

(declare-fun call!17446 () ListLongMap!2171)

(declare-fun call!17443 () ListLongMap!2171)

(assert (=> bm!17439 (= call!17446 call!17443)))

(declare-fun b!171216 () Bool)

(declare-fun e!113026 () Bool)

(assert (=> b!171216 (= e!113026 (= (apply!129 lt!85292 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3398 lt!85067)))))

(declare-fun b!171217 () Bool)

(declare-fun Unit!5260 () Unit!5249)

(assert (=> b!171217 (= e!113028 Unit!5260)))

(declare-fun b!171218 () Bool)

(declare-fun lt!85296 () Unit!5249)

(assert (=> b!171218 (= e!113028 lt!85296)))

(declare-fun lt!85306 () ListLongMap!2171)

(assert (=> b!171218 (= lt!85306 (getCurrentListMapNoExtraKeys!159 (_keys!5387 lt!85067) (_values!3538 lt!85067) (mask!8383 lt!85067) (extraKeys!3296 lt!85067) (zeroValue!3398 lt!85067) (minValue!3398 lt!85067) #b00000000000000000000000000000000 (defaultEntry!3555 lt!85067)))))

(declare-fun lt!85291 () (_ BitVec 64))

(assert (=> b!171218 (= lt!85291 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85289 () (_ BitVec 64))

(assert (=> b!171218 (= lt!85289 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000))))

(declare-fun lt!85305 () Unit!5249)

(assert (=> b!171218 (= lt!85305 (addStillContains!105 lt!85306 lt!85291 (zeroValue!3398 lt!85067) lt!85289))))

(assert (=> b!171218 (contains!1143 (+!239 lt!85306 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067))) lt!85289)))

(declare-fun lt!85286 () Unit!5249)

(assert (=> b!171218 (= lt!85286 lt!85305)))

(declare-fun lt!85298 () ListLongMap!2171)

(assert (=> b!171218 (= lt!85298 (getCurrentListMapNoExtraKeys!159 (_keys!5387 lt!85067) (_values!3538 lt!85067) (mask!8383 lt!85067) (extraKeys!3296 lt!85067) (zeroValue!3398 lt!85067) (minValue!3398 lt!85067) #b00000000000000000000000000000000 (defaultEntry!3555 lt!85067)))))

(declare-fun lt!85297 () (_ BitVec 64))

(assert (=> b!171218 (= lt!85297 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85290 () (_ BitVec 64))

(assert (=> b!171218 (= lt!85290 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000))))

(declare-fun lt!85287 () Unit!5249)

(assert (=> b!171218 (= lt!85287 (addApplyDifferent!105 lt!85298 lt!85297 (minValue!3398 lt!85067) lt!85290))))

(assert (=> b!171218 (= (apply!129 (+!239 lt!85298 (tuple2!3231 lt!85297 (minValue!3398 lt!85067))) lt!85290) (apply!129 lt!85298 lt!85290))))

(declare-fun lt!85295 () Unit!5249)

(assert (=> b!171218 (= lt!85295 lt!85287)))

(declare-fun lt!85288 () ListLongMap!2171)

(assert (=> b!171218 (= lt!85288 (getCurrentListMapNoExtraKeys!159 (_keys!5387 lt!85067) (_values!3538 lt!85067) (mask!8383 lt!85067) (extraKeys!3296 lt!85067) (zeroValue!3398 lt!85067) (minValue!3398 lt!85067) #b00000000000000000000000000000000 (defaultEntry!3555 lt!85067)))))

(declare-fun lt!85294 () (_ BitVec 64))

(assert (=> b!171218 (= lt!85294 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85303 () (_ BitVec 64))

(assert (=> b!171218 (= lt!85303 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000))))

(declare-fun lt!85300 () Unit!5249)

(assert (=> b!171218 (= lt!85300 (addApplyDifferent!105 lt!85288 lt!85294 (zeroValue!3398 lt!85067) lt!85303))))

(assert (=> b!171218 (= (apply!129 (+!239 lt!85288 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067))) lt!85303) (apply!129 lt!85288 lt!85303))))

(declare-fun lt!85307 () Unit!5249)

(assert (=> b!171218 (= lt!85307 lt!85300)))

(declare-fun lt!85302 () ListLongMap!2171)

(assert (=> b!171218 (= lt!85302 (getCurrentListMapNoExtraKeys!159 (_keys!5387 lt!85067) (_values!3538 lt!85067) (mask!8383 lt!85067) (extraKeys!3296 lt!85067) (zeroValue!3398 lt!85067) (minValue!3398 lt!85067) #b00000000000000000000000000000000 (defaultEntry!3555 lt!85067)))))

(declare-fun lt!85293 () (_ BitVec 64))

(assert (=> b!171218 (= lt!85293 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85299 () (_ BitVec 64))

(assert (=> b!171218 (= lt!85299 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000))))

(assert (=> b!171218 (= lt!85296 (addApplyDifferent!105 lt!85302 lt!85293 (minValue!3398 lt!85067) lt!85299))))

(assert (=> b!171218 (= (apply!129 (+!239 lt!85302 (tuple2!3231 lt!85293 (minValue!3398 lt!85067))) lt!85299) (apply!129 lt!85302 lt!85299))))

(declare-fun b!171219 () Bool)

(declare-fun e!113034 () Bool)

(declare-fun call!17442 () Bool)

(assert (=> b!171219 (= e!113034 (not call!17442))))

(declare-fun b!171220 () Bool)

(declare-fun e!113033 () ListLongMap!2171)

(assert (=> b!171220 (= e!113033 call!17444)))

(declare-fun b!171221 () Bool)

(assert (=> b!171221 (= e!113027 (+!239 call!17443 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067))))))

(declare-fun bm!17440 () Bool)

(declare-fun call!17447 () Bool)

(assert (=> bm!17440 (= call!17447 (contains!1143 lt!85292 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!171222 () Bool)

(declare-fun e!113030 () ListLongMap!2171)

(assert (=> b!171222 (= e!113030 call!17446)))

(declare-fun b!171223 () Bool)

(assert (=> b!171223 (= e!113033 call!17446)))

(declare-fun bm!17441 () Bool)

(declare-fun call!17441 () ListLongMap!2171)

(assert (=> bm!17441 (= call!17445 call!17441)))

(declare-fun b!171224 () Bool)

(declare-fun c!30574 () Bool)

(assert (=> b!171224 (= c!30574 (and (not (= (bvand (extraKeys!3296 lt!85067) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3296 lt!85067) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!171224 (= e!113030 e!113033)))

(declare-fun bm!17442 () Bool)

(assert (=> bm!17442 (= call!17441 (getCurrentListMapNoExtraKeys!159 (_keys!5387 lt!85067) (_values!3538 lt!85067) (mask!8383 lt!85067) (extraKeys!3296 lt!85067) (zeroValue!3398 lt!85067) (minValue!3398 lt!85067) #b00000000000000000000000000000000 (defaultEntry!3555 lt!85067)))))

(declare-fun b!171225 () Bool)

(declare-fun e!113025 () Bool)

(assert (=> b!171225 (= e!113025 (not call!17447))))

(declare-fun b!171226 () Bool)

(declare-fun e!113031 () Bool)

(assert (=> b!171226 (= e!113036 e!113031)))

(declare-fun res!81399 () Bool)

(assert (=> b!171226 (=> (not res!81399) (not e!113031))))

(assert (=> b!171226 (= res!81399 (contains!1143 lt!85292 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(assert (=> b!171226 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))

(declare-fun bm!17443 () Bool)

(declare-fun c!30571 () Bool)

(assert (=> bm!17443 (= call!17443 (+!239 (ite c!30573 call!17441 (ite c!30571 call!17445 call!17444)) (ite (or c!30573 c!30571) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 lt!85067)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067)))))))

(declare-fun b!171227 () Bool)

(assert (=> b!171227 (= e!113024 e!113025)))

(declare-fun c!30570 () Bool)

(assert (=> b!171227 (= c!30570 (not (= (bvand (extraKeys!3296 lt!85067) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!171228 () Bool)

(declare-fun e!113032 () Bool)

(assert (=> b!171228 (= e!113025 e!113032)))

(declare-fun res!81402 () Bool)

(assert (=> b!171228 (= res!81402 call!17447)))

(assert (=> b!171228 (=> (not res!81402) (not e!113032))))

(declare-fun b!171229 () Bool)

(assert (=> b!171229 (= e!113027 e!113030)))

(assert (=> b!171229 (= c!30571 (and (not (= (bvand (extraKeys!3296 lt!85067) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3296 lt!85067) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!171230 () Bool)

(assert (=> b!171230 (= e!113035 (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun b!171231 () Bool)

(assert (=> b!171231 (= e!113032 (= (apply!129 lt!85292 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3398 lt!85067)))))

(declare-fun b!171232 () Bool)

(declare-fun res!81401 () Bool)

(assert (=> b!171232 (=> (not res!81401) (not e!113024))))

(assert (=> b!171232 (= res!81401 e!113034)))

(declare-fun c!30572 () Bool)

(assert (=> b!171232 (= c!30572 (not (= (bvand (extraKeys!3296 lt!85067) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!171233 () Bool)

(assert (=> b!171233 (= e!113031 (= (apply!129 lt!85292 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)) (get!1939 (select (arr!3389 (_values!3538 lt!85067)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 lt!85067) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!171233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3682 (_values!3538 lt!85067))))))

(assert (=> b!171233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))

(declare-fun b!171234 () Bool)

(assert (=> b!171234 (= e!113029 (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun bm!17444 () Bool)

(assert (=> bm!17444 (= call!17442 (contains!1143 lt!85292 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!171235 () Bool)

(assert (=> b!171235 (= e!113034 e!113026)))

(declare-fun res!81406 () Bool)

(assert (=> b!171235 (= res!81406 call!17442)))

(assert (=> b!171235 (=> (not res!81406) (not e!113026))))

(assert (= (and d!51775 c!30573) b!171221))

(assert (= (and d!51775 (not c!30573)) b!171229))

(assert (= (and b!171229 c!30571) b!171222))

(assert (= (and b!171229 (not c!30571)) b!171224))

(assert (= (and b!171224 c!30574) b!171223))

(assert (= (and b!171224 (not c!30574)) b!171220))

(assert (= (or b!171223 b!171220) bm!17438))

(assert (= (or b!171222 bm!17438) bm!17441))

(assert (= (or b!171222 b!171223) bm!17439))

(assert (= (or b!171221 bm!17441) bm!17442))

(assert (= (or b!171221 bm!17439) bm!17443))

(assert (= (and d!51775 res!81403) b!171234))

(assert (= (and d!51775 c!30575) b!171218))

(assert (= (and d!51775 (not c!30575)) b!171217))

(assert (= (and d!51775 res!81400) b!171215))

(assert (= (and b!171215 res!81404) b!171230))

(assert (= (and b!171215 (not res!81405)) b!171226))

(assert (= (and b!171226 res!81399) b!171233))

(assert (= (and b!171215 res!81407) b!171232))

(assert (= (and b!171232 c!30572) b!171235))

(assert (= (and b!171232 (not c!30572)) b!171219))

(assert (= (and b!171235 res!81406) b!171216))

(assert (= (or b!171235 b!171219) bm!17444))

(assert (= (and b!171232 res!81401) b!171227))

(assert (= (and b!171227 c!30570) b!171228))

(assert (= (and b!171227 (not c!30570)) b!171225))

(assert (= (and b!171228 res!81402) b!171231))

(assert (= (or b!171228 b!171225) bm!17440))

(declare-fun b_lambda!6933 () Bool)

(assert (=> (not b_lambda!6933) (not b!171233)))

(declare-fun tb!2775 () Bool)

(declare-fun t!7029 () Bool)

(assert (=> (and b!170840 (= (defaultEntry!3555 thiss!1248) (defaultEntry!3555 lt!85067)) t!7029) tb!2775))

(declare-fun result!4575 () Bool)

(assert (=> tb!2775 (= result!4575 tp_is_empty!4005)))

(assert (=> b!171233 t!7029))

(declare-fun b_and!10681 () Bool)

(assert (= b_and!10679 (and (=> t!7029 result!4575) b_and!10681)))

(assert (=> b!171226 m!199523))

(assert (=> b!171226 m!199523))

(declare-fun m!199595 () Bool)

(assert (=> b!171226 m!199595))

(declare-fun m!199597 () Bool)

(assert (=> bm!17444 m!199597))

(assert (=> b!171230 m!199523))

(assert (=> b!171230 m!199523))

(assert (=> b!171230 m!199525))

(declare-fun m!199599 () Bool)

(assert (=> bm!17443 m!199599))

(declare-fun m!199601 () Bool)

(assert (=> bm!17440 m!199601))

(declare-fun m!199603 () Bool)

(assert (=> b!171218 m!199603))

(declare-fun m!199605 () Bool)

(assert (=> b!171218 m!199605))

(declare-fun m!199607 () Bool)

(assert (=> b!171218 m!199607))

(declare-fun m!199609 () Bool)

(assert (=> b!171218 m!199609))

(declare-fun m!199611 () Bool)

(assert (=> b!171218 m!199611))

(assert (=> b!171218 m!199523))

(declare-fun m!199613 () Bool)

(assert (=> b!171218 m!199613))

(declare-fun m!199615 () Bool)

(assert (=> b!171218 m!199615))

(declare-fun m!199617 () Bool)

(assert (=> b!171218 m!199617))

(declare-fun m!199619 () Bool)

(assert (=> b!171218 m!199619))

(declare-fun m!199621 () Bool)

(assert (=> b!171218 m!199621))

(assert (=> b!171218 m!199607))

(declare-fun m!199623 () Bool)

(assert (=> b!171218 m!199623))

(declare-fun m!199625 () Bool)

(assert (=> b!171218 m!199625))

(declare-fun m!199627 () Bool)

(assert (=> b!171218 m!199627))

(assert (=> b!171218 m!199611))

(declare-fun m!199629 () Bool)

(assert (=> b!171218 m!199629))

(assert (=> b!171218 m!199623))

(declare-fun m!199631 () Bool)

(assert (=> b!171218 m!199631))

(declare-fun m!199633 () Bool)

(assert (=> b!171218 m!199633))

(assert (=> b!171218 m!199617))

(declare-fun m!199635 () Bool)

(assert (=> b!171216 m!199635))

(assert (=> b!171234 m!199523))

(assert (=> b!171234 m!199523))

(assert (=> b!171234 m!199525))

(declare-fun m!199637 () Bool)

(assert (=> b!171233 m!199637))

(assert (=> b!171233 m!199523))

(declare-fun m!199639 () Bool)

(assert (=> b!171233 m!199639))

(assert (=> b!171233 m!199523))

(declare-fun m!199641 () Bool)

(assert (=> b!171233 m!199641))

(assert (=> b!171233 m!199637))

(assert (=> b!171233 m!199639))

(declare-fun m!199643 () Bool)

(assert (=> b!171233 m!199643))

(assert (=> d!51775 m!199579))

(declare-fun m!199645 () Bool)

(assert (=> b!171221 m!199645))

(assert (=> bm!17442 m!199627))

(declare-fun m!199647 () Bool)

(assert (=> b!171231 m!199647))

(assert (=> d!51701 d!51775))

(declare-fun d!51777 () Bool)

(assert (=> d!51777 (= (apply!129 lt!85152 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) (get!1940 (getValueByKey!183 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7055 () Bool)

(assert (= bs!7055 d!51777))

(assert (=> bs!7055 m!199219))

(assert (=> bs!7055 m!199477))

(assert (=> bs!7055 m!199477))

(declare-fun m!199649 () Bool)

(assert (=> bs!7055 m!199649))

(assert (=> b!170964 d!51777))

(assert (=> b!170964 d!51767))

(declare-fun d!51779 () Bool)

(declare-fun e!113037 () Bool)

(assert (=> d!51779 e!113037))

(declare-fun res!81408 () Bool)

(assert (=> d!51779 (=> (not res!81408) (not e!113037))))

(declare-fun lt!85309 () ListLongMap!2171)

(assert (=> d!51779 (= res!81408 (contains!1143 lt!85309 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(declare-fun lt!85310 () List!2213)

(assert (=> d!51779 (= lt!85309 (ListLongMap!2172 lt!85310))))

(declare-fun lt!85311 () Unit!5249)

(declare-fun lt!85308 () Unit!5249)

(assert (=> d!51779 (= lt!85311 lt!85308)))

(assert (=> d!51779 (= (getValueByKey!183 lt!85310 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(assert (=> d!51779 (= lt!85308 (lemmaContainsTupThenGetReturnValue!98 lt!85310 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(assert (=> d!51779 (= lt!85310 (insertStrictlySorted!100 (toList!1101 lt!85137) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(assert (=> d!51779 (= (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) lt!85309)))

(declare-fun b!171236 () Bool)

(declare-fun res!81409 () Bool)

(assert (=> b!171236 (=> (not res!81409) (not e!113037))))

(assert (=> b!171236 (= res!81409 (= (getValueByKey!183 (toList!1101 lt!85309) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))))

(declare-fun b!171237 () Bool)

(assert (=> b!171237 (= e!113037 (contains!1145 (toList!1101 lt!85309) (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))

(assert (= (and d!51779 res!81408) b!171236))

(assert (= (and b!171236 res!81409) b!171237))

(declare-fun m!199651 () Bool)

(assert (=> d!51779 m!199651))

(declare-fun m!199653 () Bool)

(assert (=> d!51779 m!199653))

(declare-fun m!199655 () Bool)

(assert (=> d!51779 m!199655))

(declare-fun m!199657 () Bool)

(assert (=> d!51779 m!199657))

(declare-fun m!199659 () Bool)

(assert (=> b!171236 m!199659))

(declare-fun m!199661 () Bool)

(assert (=> b!171237 m!199661))

(assert (=> b!170917 d!51779))

(declare-fun d!51781 () Bool)

(declare-fun e!113038 () Bool)

(assert (=> d!51781 e!113038))

(declare-fun res!81410 () Bool)

(assert (=> d!51781 (=> (not res!81410) (not e!113038))))

(declare-fun lt!85313 () ListLongMap!2171)

(assert (=> d!51781 (= res!81410 (contains!1143 lt!85313 (_1!1625 (tuple2!3231 lt!85129 v!309))))))

(declare-fun lt!85314 () List!2213)

(assert (=> d!51781 (= lt!85313 (ListLongMap!2172 lt!85314))))

(declare-fun lt!85315 () Unit!5249)

(declare-fun lt!85312 () Unit!5249)

(assert (=> d!51781 (= lt!85315 lt!85312)))

(assert (=> d!51781 (= (getValueByKey!183 lt!85314 (_1!1625 (tuple2!3231 lt!85129 v!309))) (Some!188 (_2!1625 (tuple2!3231 lt!85129 v!309))))))

(assert (=> d!51781 (= lt!85312 (lemmaContainsTupThenGetReturnValue!98 lt!85314 (_1!1625 (tuple2!3231 lt!85129 v!309)) (_2!1625 (tuple2!3231 lt!85129 v!309))))))

(assert (=> d!51781 (= lt!85314 (insertStrictlySorted!100 (toList!1101 lt!85123) (_1!1625 (tuple2!3231 lt!85129 v!309)) (_2!1625 (tuple2!3231 lt!85129 v!309))))))

(assert (=> d!51781 (= (+!239 lt!85123 (tuple2!3231 lt!85129 v!309)) lt!85313)))

(declare-fun b!171238 () Bool)

(declare-fun res!81411 () Bool)

(assert (=> b!171238 (=> (not res!81411) (not e!113038))))

(assert (=> b!171238 (= res!81411 (= (getValueByKey!183 (toList!1101 lt!85313) (_1!1625 (tuple2!3231 lt!85129 v!309))) (Some!188 (_2!1625 (tuple2!3231 lt!85129 v!309)))))))

(declare-fun b!171239 () Bool)

(assert (=> b!171239 (= e!113038 (contains!1145 (toList!1101 lt!85313) (tuple2!3231 lt!85129 v!309)))))

(assert (= (and d!51781 res!81410) b!171238))

(assert (= (and b!171238 res!81411) b!171239))

(declare-fun m!199663 () Bool)

(assert (=> d!51781 m!199663))

(declare-fun m!199665 () Bool)

(assert (=> d!51781 m!199665))

(declare-fun m!199667 () Bool)

(assert (=> d!51781 m!199667))

(declare-fun m!199669 () Bool)

(assert (=> d!51781 m!199669))

(declare-fun m!199671 () Bool)

(assert (=> b!171238 m!199671))

(declare-fun m!199673 () Bool)

(assert (=> b!171239 m!199673))

(assert (=> b!170917 d!51781))

(declare-fun d!51783 () Bool)

(assert (=> d!51783 (contains!1143 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)) lt!85124)))

(declare-fun lt!85318 () Unit!5249)

(declare-fun choose!933 (ListLongMap!2171 (_ BitVec 64) V!4987 (_ BitVec 64)) Unit!5249)

(assert (=> d!51783 (= lt!85318 (choose!933 lt!85141 lt!85126 v!309 lt!85124))))

(assert (=> d!51783 (contains!1143 lt!85141 lt!85124)))

(assert (=> d!51783 (= (addStillContains!105 lt!85141 lt!85126 v!309 lt!85124) lt!85318)))

(declare-fun bs!7056 () Bool)

(assert (= bs!7056 d!51783))

(assert (=> bs!7056 m!199245))

(assert (=> bs!7056 m!199245))

(assert (=> bs!7056 m!199247))

(declare-fun m!199675 () Bool)

(assert (=> bs!7056 m!199675))

(declare-fun m!199677 () Bool)

(assert (=> bs!7056 m!199677))

(assert (=> b!170917 d!51783))

(assert (=> b!170917 d!51733))

(declare-fun d!51785 () Bool)

(assert (=> d!51785 (= (apply!129 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) lt!85125) (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))) lt!85125)))))

(declare-fun bs!7057 () Bool)

(assert (= bs!7057 d!51785))

(declare-fun m!199679 () Bool)

(assert (=> bs!7057 m!199679))

(assert (=> bs!7057 m!199679))

(declare-fun m!199681 () Bool)

(assert (=> bs!7057 m!199681))

(assert (=> b!170917 d!51785))

(declare-fun d!51787 () Bool)

(assert (=> d!51787 (= (apply!129 lt!85133 lt!85125) (get!1940 (getValueByKey!183 (toList!1101 lt!85133) lt!85125)))))

(declare-fun bs!7058 () Bool)

(assert (= bs!7058 d!51787))

(declare-fun m!199683 () Bool)

(assert (=> bs!7058 m!199683))

(assert (=> bs!7058 m!199683))

(declare-fun m!199685 () Bool)

(assert (=> bs!7058 m!199685))

(assert (=> b!170917 d!51787))

(declare-fun d!51789 () Bool)

(assert (=> d!51789 (= (apply!129 lt!85123 lt!85138) (get!1940 (getValueByKey!183 (toList!1101 lt!85123) lt!85138)))))

(declare-fun bs!7059 () Bool)

(assert (= bs!7059 d!51789))

(declare-fun m!199687 () Bool)

(assert (=> bs!7059 m!199687))

(assert (=> bs!7059 m!199687))

(declare-fun m!199689 () Bool)

(assert (=> bs!7059 m!199689))

(assert (=> b!170917 d!51789))

(declare-fun d!51791 () Bool)

(declare-fun e!113040 () Bool)

(assert (=> d!51791 e!113040))

(declare-fun res!81412 () Bool)

(assert (=> d!51791 (=> res!81412 e!113040)))

(declare-fun lt!85321 () Bool)

(assert (=> d!51791 (= res!81412 (not lt!85321))))

(declare-fun lt!85319 () Bool)

(assert (=> d!51791 (= lt!85321 lt!85319)))

(declare-fun lt!85320 () Unit!5249)

(declare-fun e!113039 () Unit!5249)

(assert (=> d!51791 (= lt!85320 e!113039)))

(declare-fun c!30576 () Bool)

(assert (=> d!51791 (= c!30576 lt!85319)))

(assert (=> d!51791 (= lt!85319 (containsKey!187 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))) lt!85124))))

(assert (=> d!51791 (= (contains!1143 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)) lt!85124) lt!85321)))

(declare-fun b!171241 () Bool)

(declare-fun lt!85322 () Unit!5249)

(assert (=> b!171241 (= e!113039 lt!85322)))

(assert (=> b!171241 (= lt!85322 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))) lt!85124))))

(assert (=> b!171241 (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))) lt!85124))))

(declare-fun b!171242 () Bool)

(declare-fun Unit!5261 () Unit!5249)

(assert (=> b!171242 (= e!113039 Unit!5261)))

(declare-fun b!171243 () Bool)

(assert (=> b!171243 (= e!113040 (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))) lt!85124)))))

(assert (= (and d!51791 c!30576) b!171241))

(assert (= (and d!51791 (not c!30576)) b!171242))

(assert (= (and d!51791 (not res!81412)) b!171243))

(declare-fun m!199691 () Bool)

(assert (=> d!51791 m!199691))

(declare-fun m!199693 () Bool)

(assert (=> b!171241 m!199693))

(declare-fun m!199695 () Bool)

(assert (=> b!171241 m!199695))

(assert (=> b!171241 m!199695))

(declare-fun m!199697 () Bool)

(assert (=> b!171241 m!199697))

(assert (=> b!171243 m!199695))

(assert (=> b!171243 m!199695))

(assert (=> b!171243 m!199697))

(assert (=> b!170917 d!51791))

(declare-fun d!51793 () Bool)

(declare-fun e!113041 () Bool)

(assert (=> d!51793 e!113041))

(declare-fun res!81413 () Bool)

(assert (=> d!51793 (=> (not res!81413) (not e!113041))))

(declare-fun lt!85324 () ListLongMap!2171)

(assert (=> d!51793 (= res!81413 (contains!1143 lt!85324 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(declare-fun lt!85325 () List!2213)

(assert (=> d!51793 (= lt!85324 (ListLongMap!2172 lt!85325))))

(declare-fun lt!85326 () Unit!5249)

(declare-fun lt!85323 () Unit!5249)

(assert (=> d!51793 (= lt!85326 lt!85323)))

(assert (=> d!51793 (= (getValueByKey!183 lt!85325 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(assert (=> d!51793 (= lt!85323 (lemmaContainsTupThenGetReturnValue!98 lt!85325 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(assert (=> d!51793 (= lt!85325 (insertStrictlySorted!100 (toList!1101 lt!85133) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(assert (=> d!51793 (= (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) lt!85324)))

(declare-fun b!171244 () Bool)

(declare-fun res!81414 () Bool)

(assert (=> b!171244 (=> (not res!81414) (not e!113041))))

(assert (=> b!171244 (= res!81414 (= (getValueByKey!183 (toList!1101 lt!85324) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))))

(declare-fun b!171245 () Bool)

(assert (=> b!171245 (= e!113041 (contains!1145 (toList!1101 lt!85324) (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))

(assert (= (and d!51793 res!81413) b!171244))

(assert (= (and b!171244 res!81414) b!171245))

(declare-fun m!199699 () Bool)

(assert (=> d!51793 m!199699))

(declare-fun m!199701 () Bool)

(assert (=> d!51793 m!199701))

(declare-fun m!199703 () Bool)

(assert (=> d!51793 m!199703))

(declare-fun m!199705 () Bool)

(assert (=> d!51793 m!199705))

(declare-fun m!199707 () Bool)

(assert (=> b!171244 m!199707))

(declare-fun m!199709 () Bool)

(assert (=> b!171245 m!199709))

(assert (=> b!170917 d!51793))

(declare-fun d!51795 () Bool)

(assert (=> d!51795 (= (apply!129 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) lt!85134) (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))) lt!85134)))))

(declare-fun bs!7060 () Bool)

(assert (= bs!7060 d!51795))

(declare-fun m!199711 () Bool)

(assert (=> bs!7060 m!199711))

(assert (=> bs!7060 m!199711))

(declare-fun m!199713 () Bool)

(assert (=> bs!7060 m!199713))

(assert (=> b!170917 d!51795))

(declare-fun d!51797 () Bool)

(assert (=> d!51797 (= (apply!129 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309)) lt!85138) (apply!129 lt!85123 lt!85138))))

(declare-fun lt!85329 () Unit!5249)

(declare-fun choose!934 (ListLongMap!2171 (_ BitVec 64) V!4987 (_ BitVec 64)) Unit!5249)

(assert (=> d!51797 (= lt!85329 (choose!934 lt!85123 lt!85129 v!309 lt!85138))))

(declare-fun e!113044 () Bool)

(assert (=> d!51797 e!113044))

(declare-fun res!81417 () Bool)

(assert (=> d!51797 (=> (not res!81417) (not e!113044))))

(assert (=> d!51797 (= res!81417 (contains!1143 lt!85123 lt!85138))))

(assert (=> d!51797 (= (addApplyDifferent!105 lt!85123 lt!85129 v!309 lt!85138) lt!85329)))

(declare-fun b!171249 () Bool)

(assert (=> b!171249 (= e!113044 (not (= lt!85138 lt!85129)))))

(assert (= (and d!51797 res!81417) b!171249))

(assert (=> d!51797 m!199233))

(declare-fun m!199715 () Bool)

(assert (=> d!51797 m!199715))

(assert (=> d!51797 m!199235))

(assert (=> d!51797 m!199237))

(declare-fun m!199717 () Bool)

(assert (=> d!51797 m!199717))

(assert (=> d!51797 m!199235))

(assert (=> b!170917 d!51797))

(declare-fun d!51799 () Bool)

(assert (=> d!51799 (= (apply!129 lt!85137 lt!85134) (get!1940 (getValueByKey!183 (toList!1101 lt!85137) lt!85134)))))

(declare-fun bs!7061 () Bool)

(assert (= bs!7061 d!51799))

(declare-fun m!199719 () Bool)

(assert (=> bs!7061 m!199719))

(assert (=> bs!7061 m!199719))

(declare-fun m!199721 () Bool)

(assert (=> bs!7061 m!199721))

(assert (=> b!170917 d!51799))

(declare-fun d!51801 () Bool)

(declare-fun e!113045 () Bool)

(assert (=> d!51801 e!113045))

(declare-fun res!81418 () Bool)

(assert (=> d!51801 (=> (not res!81418) (not e!113045))))

(declare-fun lt!85331 () ListLongMap!2171)

(assert (=> d!51801 (= res!81418 (contains!1143 lt!85331 (_1!1625 (tuple2!3231 lt!85126 v!309))))))

(declare-fun lt!85332 () List!2213)

(assert (=> d!51801 (= lt!85331 (ListLongMap!2172 lt!85332))))

(declare-fun lt!85333 () Unit!5249)

(declare-fun lt!85330 () Unit!5249)

(assert (=> d!51801 (= lt!85333 lt!85330)))

(assert (=> d!51801 (= (getValueByKey!183 lt!85332 (_1!1625 (tuple2!3231 lt!85126 v!309))) (Some!188 (_2!1625 (tuple2!3231 lt!85126 v!309))))))

(assert (=> d!51801 (= lt!85330 (lemmaContainsTupThenGetReturnValue!98 lt!85332 (_1!1625 (tuple2!3231 lt!85126 v!309)) (_2!1625 (tuple2!3231 lt!85126 v!309))))))

(assert (=> d!51801 (= lt!85332 (insertStrictlySorted!100 (toList!1101 lt!85141) (_1!1625 (tuple2!3231 lt!85126 v!309)) (_2!1625 (tuple2!3231 lt!85126 v!309))))))

(assert (=> d!51801 (= (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)) lt!85331)))

(declare-fun b!171250 () Bool)

(declare-fun res!81419 () Bool)

(assert (=> b!171250 (=> (not res!81419) (not e!113045))))

(assert (=> b!171250 (= res!81419 (= (getValueByKey!183 (toList!1101 lt!85331) (_1!1625 (tuple2!3231 lt!85126 v!309))) (Some!188 (_2!1625 (tuple2!3231 lt!85126 v!309)))))))

(declare-fun b!171251 () Bool)

(assert (=> b!171251 (= e!113045 (contains!1145 (toList!1101 lt!85331) (tuple2!3231 lt!85126 v!309)))))

(assert (= (and d!51801 res!81418) b!171250))

(assert (= (and b!171250 res!81419) b!171251))

(declare-fun m!199723 () Bool)

(assert (=> d!51801 m!199723))

(declare-fun m!199725 () Bool)

(assert (=> d!51801 m!199725))

(declare-fun m!199727 () Bool)

(assert (=> d!51801 m!199727))

(declare-fun m!199729 () Bool)

(assert (=> d!51801 m!199729))

(declare-fun m!199731 () Bool)

(assert (=> b!171250 m!199731))

(declare-fun m!199733 () Bool)

(assert (=> b!171251 m!199733))

(assert (=> b!170917 d!51801))

(declare-fun d!51803 () Bool)

(assert (=> d!51803 (= (apply!129 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) lt!85134) (apply!129 lt!85137 lt!85134))))

(declare-fun lt!85334 () Unit!5249)

(assert (=> d!51803 (= lt!85334 (choose!934 lt!85137 lt!85128 (minValue!3398 thiss!1248) lt!85134))))

(declare-fun e!113046 () Bool)

(assert (=> d!51803 e!113046))

(declare-fun res!81420 () Bool)

(assert (=> d!51803 (=> (not res!81420) (not e!113046))))

(assert (=> d!51803 (= res!81420 (contains!1143 lt!85137 lt!85134))))

(assert (=> d!51803 (= (addApplyDifferent!105 lt!85137 lt!85128 (minValue!3398 thiss!1248) lt!85134) lt!85334)))

(declare-fun b!171252 () Bool)

(assert (=> b!171252 (= e!113046 (not (= lt!85134 lt!85128)))))

(assert (= (and d!51803 res!81420) b!171252))

(assert (=> d!51803 m!199253))

(declare-fun m!199735 () Bool)

(assert (=> d!51803 m!199735))

(assert (=> d!51803 m!199251))

(assert (=> d!51803 m!199259))

(declare-fun m!199737 () Bool)

(assert (=> d!51803 m!199737))

(assert (=> d!51803 m!199251))

(assert (=> b!170917 d!51803))

(declare-fun d!51805 () Bool)

(assert (=> d!51805 (= (apply!129 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309)) lt!85138) (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309))) lt!85138)))))

(declare-fun bs!7062 () Bool)

(assert (= bs!7062 d!51805))

(declare-fun m!199739 () Bool)

(assert (=> bs!7062 m!199739))

(assert (=> bs!7062 m!199739))

(declare-fun m!199741 () Bool)

(assert (=> bs!7062 m!199741))

(assert (=> b!170917 d!51805))

(declare-fun d!51807 () Bool)

(assert (=> d!51807 (= (apply!129 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) lt!85125) (apply!129 lt!85133 lt!85125))))

(declare-fun lt!85335 () Unit!5249)

(assert (=> d!51807 (= lt!85335 (choose!934 lt!85133 lt!85132 (minValue!3398 thiss!1248) lt!85125))))

(declare-fun e!113047 () Bool)

(assert (=> d!51807 e!113047))

(declare-fun res!81421 () Bool)

(assert (=> d!51807 (=> (not res!81421) (not e!113047))))

(assert (=> d!51807 (= res!81421 (contains!1143 lt!85133 lt!85125))))

(assert (=> d!51807 (= (addApplyDifferent!105 lt!85133 lt!85132 (minValue!3398 thiss!1248) lt!85125) lt!85335)))

(declare-fun b!171253 () Bool)

(assert (=> b!171253 (= e!113047 (not (= lt!85125 lt!85132)))))

(assert (= (and d!51807 res!81421) b!171253))

(assert (=> d!51807 m!199249))

(declare-fun m!199743 () Bool)

(assert (=> d!51807 m!199743))

(assert (=> d!51807 m!199239))

(assert (=> d!51807 m!199257))

(declare-fun m!199745 () Bool)

(assert (=> d!51807 m!199745))

(assert (=> d!51807 m!199239))

(assert (=> b!170917 d!51807))

(declare-fun d!51809 () Bool)

(declare-fun e!113049 () Bool)

(assert (=> d!51809 e!113049))

(declare-fun res!81422 () Bool)

(assert (=> d!51809 (=> res!81422 e!113049)))

(declare-fun lt!85338 () Bool)

(assert (=> d!51809 (= res!81422 (not lt!85338))))

(declare-fun lt!85336 () Bool)

(assert (=> d!51809 (= lt!85338 lt!85336)))

(declare-fun lt!85337 () Unit!5249)

(declare-fun e!113048 () Unit!5249)

(assert (=> d!51809 (= lt!85337 e!113048)))

(declare-fun c!30577 () Bool)

(assert (=> d!51809 (= c!30577 lt!85336)))

(assert (=> d!51809 (= lt!85336 (containsKey!187 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!51809 (= (contains!1143 lt!85127 #b0000000000000000000000000000000000000000000000000000000000000000) lt!85338)))

(declare-fun b!171254 () Bool)

(declare-fun lt!85339 () Unit!5249)

(assert (=> b!171254 (= e!113048 lt!85339)))

(assert (=> b!171254 (= lt!85339 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171254 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!171255 () Bool)

(declare-fun Unit!5262 () Unit!5249)

(assert (=> b!171255 (= e!113048 Unit!5262)))

(declare-fun b!171256 () Bool)

(assert (=> b!171256 (= e!113049 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!51809 c!30577) b!171254))

(assert (= (and d!51809 (not c!30577)) b!171255))

(assert (= (and d!51809 (not res!81422)) b!171256))

(declare-fun m!199747 () Bool)

(assert (=> d!51809 m!199747))

(declare-fun m!199749 () Bool)

(assert (=> b!171254 m!199749))

(declare-fun m!199751 () Bool)

(assert (=> b!171254 m!199751))

(assert (=> b!171254 m!199751))

(declare-fun m!199753 () Bool)

(assert (=> b!171254 m!199753))

(assert (=> b!171256 m!199751))

(assert (=> b!171256 m!199751))

(assert (=> b!171256 m!199753))

(assert (=> bm!17405 d!51809))

(assert (=> b!170933 d!51749))

(declare-fun d!51811 () Bool)

(assert (=> d!51811 (= (apply!129 lt!85152 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1940 (getValueByKey!183 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7063 () Bool)

(assert (= bs!7063 d!51811))

(assert (=> bs!7063 m!199441))

(assert (=> bs!7063 m!199441))

(declare-fun m!199755 () Bool)

(assert (=> bs!7063 m!199755))

(assert (=> b!170962 d!51811))

(declare-fun d!51813 () Bool)

(assert (=> d!51813 (= (apply!129 lt!85127 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1940 (getValueByKey!183 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7064 () Bool)

(assert (= bs!7064 d!51813))

(assert (=> bs!7064 m!199751))

(assert (=> bs!7064 m!199751))

(declare-fun m!199757 () Bool)

(assert (=> bs!7064 m!199757))

(assert (=> b!170915 d!51813))

(declare-fun d!51815 () Bool)

(declare-fun lt!85340 () Bool)

(assert (=> d!51815 (= lt!85340 (select (content!146 (toList!1101 lt!85177)) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(declare-fun e!113051 () Bool)

(assert (=> d!51815 (= lt!85340 e!113051)))

(declare-fun res!81423 () Bool)

(assert (=> d!51815 (=> (not res!81423) (not e!113051))))

(assert (=> d!51815 (= res!81423 ((_ is Cons!2209) (toList!1101 lt!85177)))))

(assert (=> d!51815 (= (contains!1145 (toList!1101 lt!85177) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) lt!85340)))

(declare-fun b!171257 () Bool)

(declare-fun e!113050 () Bool)

(assert (=> b!171257 (= e!113051 e!113050)))

(declare-fun res!81424 () Bool)

(assert (=> b!171257 (=> res!81424 e!113050)))

(assert (=> b!171257 (= res!81424 (= (h!2826 (toList!1101 lt!85177)) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(declare-fun b!171258 () Bool)

(assert (=> b!171258 (= e!113050 (contains!1145 (t!7023 (toList!1101 lt!85177)) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(assert (= (and d!51815 res!81423) b!171257))

(assert (= (and b!171257 (not res!81424)) b!171258))

(declare-fun m!199759 () Bool)

(assert (=> d!51815 m!199759))

(declare-fun m!199761 () Bool)

(assert (=> d!51815 m!199761))

(declare-fun m!199763 () Bool)

(assert (=> b!171258 m!199763))

(assert (=> b!170972 d!51815))

(declare-fun d!51817 () Bool)

(declare-fun e!113052 () Bool)

(assert (=> d!51817 e!113052))

(declare-fun res!81425 () Bool)

(assert (=> d!51817 (=> (not res!81425) (not e!113052))))

(declare-fun lt!85342 () ListLongMap!2171)

(assert (=> d!51817 (= res!81425 (contains!1143 lt!85342 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun lt!85343 () List!2213)

(assert (=> d!51817 (= lt!85342 (ListLongMap!2172 lt!85343))))

(declare-fun lt!85344 () Unit!5249)

(declare-fun lt!85341 () Unit!5249)

(assert (=> d!51817 (= lt!85344 lt!85341)))

(assert (=> d!51817 (= (getValueByKey!183 lt!85343 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (=> d!51817 (= lt!85341 (lemmaContainsTupThenGetReturnValue!98 lt!85343 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (=> d!51817 (= lt!85343 (insertStrictlySorted!100 (toList!1101 call!17404) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (=> d!51817 (= (+!239 call!17404 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) lt!85342)))

(declare-fun b!171259 () Bool)

(declare-fun res!81426 () Bool)

(assert (=> b!171259 (=> (not res!81426) (not e!113052))))

(assert (=> b!171259 (= res!81426 (= (getValueByKey!183 (toList!1101 lt!85342) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun b!171260 () Bool)

(assert (=> b!171260 (= e!113052 (contains!1145 (toList!1101 lt!85342) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))

(assert (= (and d!51817 res!81425) b!171259))

(assert (= (and b!171259 res!81426) b!171260))

(declare-fun m!199765 () Bool)

(assert (=> d!51817 m!199765))

(declare-fun m!199767 () Bool)

(assert (=> d!51817 m!199767))

(declare-fun m!199769 () Bool)

(assert (=> d!51817 m!199769))

(declare-fun m!199771 () Bool)

(assert (=> d!51817 m!199771))

(declare-fun m!199773 () Bool)

(assert (=> b!171259 m!199773))

(declare-fun m!199775 () Bool)

(assert (=> b!171260 m!199775))

(assert (=> b!170920 d!51817))

(declare-fun d!51819 () Bool)

(assert (=> d!51819 (contains!1143 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) lt!85149)))

(declare-fun lt!85345 () Unit!5249)

(assert (=> d!51819 (= lt!85345 (choose!933 lt!85166 lt!85151 (zeroValue!3398 thiss!1248) lt!85149))))

(assert (=> d!51819 (contains!1143 lt!85166 lt!85149)))

(assert (=> d!51819 (= (addStillContains!105 lt!85166 lt!85151 (zeroValue!3398 thiss!1248) lt!85149) lt!85345)))

(declare-fun bs!7065 () Bool)

(assert (= bs!7065 d!51819))

(assert (=> bs!7065 m!199311))

(assert (=> bs!7065 m!199311))

(assert (=> bs!7065 m!199313))

(declare-fun m!199777 () Bool)

(assert (=> bs!7065 m!199777))

(declare-fun m!199779 () Bool)

(assert (=> bs!7065 m!199779))

(assert (=> b!170949 d!51819))

(declare-fun d!51821 () Bool)

(assert (=> d!51821 (= (apply!129 lt!85148 lt!85163) (get!1940 (getValueByKey!183 (toList!1101 lt!85148) lt!85163)))))

(declare-fun bs!7066 () Bool)

(assert (= bs!7066 d!51821))

(declare-fun m!199781 () Bool)

(assert (=> bs!7066 m!199781))

(assert (=> bs!7066 m!199781))

(declare-fun m!199783 () Bool)

(assert (=> bs!7066 m!199783))

(assert (=> b!170949 d!51821))

(declare-fun d!51823 () Bool)

(declare-fun e!113054 () Bool)

(assert (=> d!51823 e!113054))

(declare-fun res!81427 () Bool)

(assert (=> d!51823 (=> res!81427 e!113054)))

(declare-fun lt!85348 () Bool)

(assert (=> d!51823 (= res!81427 (not lt!85348))))

(declare-fun lt!85346 () Bool)

(assert (=> d!51823 (= lt!85348 lt!85346)))

(declare-fun lt!85347 () Unit!5249)

(declare-fun e!113053 () Unit!5249)

(assert (=> d!51823 (= lt!85347 e!113053)))

(declare-fun c!30578 () Bool)

(assert (=> d!51823 (= c!30578 lt!85346)))

(assert (=> d!51823 (= lt!85346 (containsKey!187 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85149))))

(assert (=> d!51823 (= (contains!1143 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) lt!85149) lt!85348)))

(declare-fun b!171261 () Bool)

(declare-fun lt!85349 () Unit!5249)

(assert (=> b!171261 (= e!113053 lt!85349)))

(assert (=> b!171261 (= lt!85349 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85149))))

(assert (=> b!171261 (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85149))))

(declare-fun b!171262 () Bool)

(declare-fun Unit!5263 () Unit!5249)

(assert (=> b!171262 (= e!113053 Unit!5263)))

(declare-fun b!171263 () Bool)

(assert (=> b!171263 (= e!113054 (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85149)))))

(assert (= (and d!51823 c!30578) b!171261))

(assert (= (and d!51823 (not c!30578)) b!171262))

(assert (= (and d!51823 (not res!81427)) b!171263))

(declare-fun m!199785 () Bool)

(assert (=> d!51823 m!199785))

(declare-fun m!199787 () Bool)

(assert (=> b!171261 m!199787))

(declare-fun m!199789 () Bool)

(assert (=> b!171261 m!199789))

(assert (=> b!171261 m!199789))

(declare-fun m!199791 () Bool)

(assert (=> b!171261 m!199791))

(assert (=> b!171263 m!199789))

(assert (=> b!171263 m!199789))

(assert (=> b!171263 m!199791))

(assert (=> b!170949 d!51823))

(declare-fun d!51825 () Bool)

(assert (=> d!51825 (= (apply!129 lt!85158 lt!85150) (get!1940 (getValueByKey!183 (toList!1101 lt!85158) lt!85150)))))

(declare-fun bs!7067 () Bool)

(assert (= bs!7067 d!51825))

(declare-fun m!199793 () Bool)

(assert (=> bs!7067 m!199793))

(assert (=> bs!7067 m!199793))

(declare-fun m!199795 () Bool)

(assert (=> bs!7067 m!199795))

(assert (=> b!170949 d!51825))

(declare-fun d!51827 () Bool)

(assert (=> d!51827 (= (apply!129 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) lt!85150) (apply!129 lt!85158 lt!85150))))

(declare-fun lt!85350 () Unit!5249)

(assert (=> d!51827 (= lt!85350 (choose!934 lt!85158 lt!85157 (minValue!3398 thiss!1248) lt!85150))))

(declare-fun e!113055 () Bool)

(assert (=> d!51827 e!113055))

(declare-fun res!81428 () Bool)

(assert (=> d!51827 (=> (not res!81428) (not e!113055))))

(assert (=> d!51827 (= res!81428 (contains!1143 lt!85158 lt!85150))))

(assert (=> d!51827 (= (addApplyDifferent!105 lt!85158 lt!85157 (minValue!3398 thiss!1248) lt!85150) lt!85350)))

(declare-fun b!171264 () Bool)

(assert (=> b!171264 (= e!113055 (not (= lt!85150 lt!85157)))))

(assert (= (and d!51827 res!81428) b!171264))

(assert (=> d!51827 m!199315))

(declare-fun m!199797 () Bool)

(assert (=> d!51827 m!199797))

(assert (=> d!51827 m!199305))

(assert (=> d!51827 m!199323))

(declare-fun m!199799 () Bool)

(assert (=> d!51827 m!199799))

(assert (=> d!51827 m!199305))

(assert (=> b!170949 d!51827))

(declare-fun d!51829 () Bool)

(declare-fun e!113056 () Bool)

(assert (=> d!51829 e!113056))

(declare-fun res!81429 () Bool)

(assert (=> d!51829 (=> (not res!81429) (not e!113056))))

(declare-fun lt!85352 () ListLongMap!2171)

(assert (=> d!51829 (= res!81429 (contains!1143 lt!85352 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(declare-fun lt!85353 () List!2213)

(assert (=> d!51829 (= lt!85352 (ListLongMap!2172 lt!85353))))

(declare-fun lt!85354 () Unit!5249)

(declare-fun lt!85351 () Unit!5249)

(assert (=> d!51829 (= lt!85354 lt!85351)))

(assert (=> d!51829 (= (getValueByKey!183 lt!85353 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(assert (=> d!51829 (= lt!85351 (lemmaContainsTupThenGetReturnValue!98 lt!85353 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(assert (=> d!51829 (= lt!85353 (insertStrictlySorted!100 (toList!1101 lt!85158) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(assert (=> d!51829 (= (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) lt!85352)))

(declare-fun b!171265 () Bool)

(declare-fun res!81430 () Bool)

(assert (=> b!171265 (=> (not res!81430) (not e!113056))))

(assert (=> b!171265 (= res!81430 (= (getValueByKey!183 (toList!1101 lt!85352) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))))

(declare-fun b!171266 () Bool)

(assert (=> b!171266 (= e!113056 (contains!1145 (toList!1101 lt!85352) (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))

(assert (= (and d!51829 res!81429) b!171265))

(assert (= (and b!171265 res!81430) b!171266))

(declare-fun m!199801 () Bool)

(assert (=> d!51829 m!199801))

(declare-fun m!199803 () Bool)

(assert (=> d!51829 m!199803))

(declare-fun m!199805 () Bool)

(assert (=> d!51829 m!199805))

(declare-fun m!199807 () Bool)

(assert (=> d!51829 m!199807))

(declare-fun m!199809 () Bool)

(assert (=> b!171265 m!199809))

(declare-fun m!199811 () Bool)

(assert (=> b!171266 m!199811))

(assert (=> b!170949 d!51829))

(declare-fun d!51831 () Bool)

(assert (=> d!51831 (= (apply!129 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) lt!85159) (apply!129 lt!85162 lt!85159))))

(declare-fun lt!85355 () Unit!5249)

(assert (=> d!51831 (= lt!85355 (choose!934 lt!85162 lt!85153 (minValue!3398 thiss!1248) lt!85159))))

(declare-fun e!113057 () Bool)

(assert (=> d!51831 e!113057))

(declare-fun res!81431 () Bool)

(assert (=> d!51831 (=> (not res!81431) (not e!113057))))

(assert (=> d!51831 (= res!81431 (contains!1143 lt!85162 lt!85159))))

(assert (=> d!51831 (= (addApplyDifferent!105 lt!85162 lt!85153 (minValue!3398 thiss!1248) lt!85159) lt!85355)))

(declare-fun b!171267 () Bool)

(assert (=> b!171267 (= e!113057 (not (= lt!85159 lt!85153)))))

(assert (= (and d!51831 res!81431) b!171267))

(assert (=> d!51831 m!199319))

(declare-fun m!199813 () Bool)

(assert (=> d!51831 m!199813))

(assert (=> d!51831 m!199317))

(assert (=> d!51831 m!199325))

(declare-fun m!199815 () Bool)

(assert (=> d!51831 m!199815))

(assert (=> d!51831 m!199317))

(assert (=> b!170949 d!51831))

(declare-fun d!51833 () Bool)

(assert (=> d!51833 (= (apply!129 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) lt!85159) (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))) lt!85159)))))

(declare-fun bs!7068 () Bool)

(assert (= bs!7068 d!51833))

(declare-fun m!199817 () Bool)

(assert (=> bs!7068 m!199817))

(assert (=> bs!7068 m!199817))

(declare-fun m!199819 () Bool)

(assert (=> bs!7068 m!199819))

(assert (=> b!170949 d!51833))

(declare-fun d!51835 () Bool)

(declare-fun e!113058 () Bool)

(assert (=> d!51835 e!113058))

(declare-fun res!81432 () Bool)

(assert (=> d!51835 (=> (not res!81432) (not e!113058))))

(declare-fun lt!85357 () ListLongMap!2171)

(assert (=> d!51835 (= res!81432 (contains!1143 lt!85357 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(declare-fun lt!85358 () List!2213)

(assert (=> d!51835 (= lt!85357 (ListLongMap!2172 lt!85358))))

(declare-fun lt!85359 () Unit!5249)

(declare-fun lt!85356 () Unit!5249)

(assert (=> d!51835 (= lt!85359 lt!85356)))

(assert (=> d!51835 (= (getValueByKey!183 lt!85358 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(assert (=> d!51835 (= lt!85356 (lemmaContainsTupThenGetReturnValue!98 lt!85358 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(assert (=> d!51835 (= lt!85358 (insertStrictlySorted!100 (toList!1101 lt!85162) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(assert (=> d!51835 (= (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) lt!85357)))

(declare-fun b!171268 () Bool)

(declare-fun res!81433 () Bool)

(assert (=> b!171268 (=> (not res!81433) (not e!113058))))

(assert (=> b!171268 (= res!81433 (= (getValueByKey!183 (toList!1101 lt!85357) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))))

(declare-fun b!171269 () Bool)

(assert (=> b!171269 (= e!113058 (contains!1145 (toList!1101 lt!85357) (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))

(assert (= (and d!51835 res!81432) b!171268))

(assert (= (and b!171268 res!81433) b!171269))

(declare-fun m!199821 () Bool)

(assert (=> d!51835 m!199821))

(declare-fun m!199823 () Bool)

(assert (=> d!51835 m!199823))

(declare-fun m!199825 () Bool)

(assert (=> d!51835 m!199825))

(declare-fun m!199827 () Bool)

(assert (=> d!51835 m!199827))

(declare-fun m!199829 () Bool)

(assert (=> b!171268 m!199829))

(declare-fun m!199831 () Bool)

(assert (=> b!171269 m!199831))

(assert (=> b!170949 d!51835))

(declare-fun d!51837 () Bool)

(assert (=> d!51837 (= (apply!129 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) lt!85150) (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))) lt!85150)))))

(declare-fun bs!7069 () Bool)

(assert (= bs!7069 d!51837))

(declare-fun m!199833 () Bool)

(assert (=> bs!7069 m!199833))

(assert (=> bs!7069 m!199833))

(declare-fun m!199835 () Bool)

(assert (=> bs!7069 m!199835))

(assert (=> b!170949 d!51837))

(declare-fun d!51839 () Bool)

(assert (=> d!51839 (= (apply!129 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) lt!85163) (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))) lt!85163)))))

(declare-fun bs!7070 () Bool)

(assert (= bs!7070 d!51839))

(declare-fun m!199837 () Bool)

(assert (=> bs!7070 m!199837))

(assert (=> bs!7070 m!199837))

(declare-fun m!199839 () Bool)

(assert (=> bs!7070 m!199839))

(assert (=> b!170949 d!51839))

(declare-fun d!51841 () Bool)

(assert (=> d!51841 (= (apply!129 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) lt!85163) (apply!129 lt!85148 lt!85163))))

(declare-fun lt!85360 () Unit!5249)

(assert (=> d!51841 (= lt!85360 (choose!934 lt!85148 lt!85154 (zeroValue!3398 thiss!1248) lt!85163))))

(declare-fun e!113059 () Bool)

(assert (=> d!51841 e!113059))

(declare-fun res!81434 () Bool)

(assert (=> d!51841 (=> (not res!81434) (not e!113059))))

(assert (=> d!51841 (= res!81434 (contains!1143 lt!85148 lt!85163))))

(assert (=> d!51841 (= (addApplyDifferent!105 lt!85148 lt!85154 (zeroValue!3398 thiss!1248) lt!85163) lt!85360)))

(declare-fun b!171270 () Bool)

(assert (=> b!171270 (= e!113059 (not (= lt!85163 lt!85154)))))

(assert (= (and d!51841 res!81434) b!171270))

(assert (=> d!51841 m!199299))

(declare-fun m!199841 () Bool)

(assert (=> d!51841 m!199841))

(assert (=> d!51841 m!199301))

(assert (=> d!51841 m!199303))

(declare-fun m!199843 () Bool)

(assert (=> d!51841 m!199843))

(assert (=> d!51841 m!199301))

(assert (=> b!170949 d!51841))

(declare-fun d!51843 () Bool)

(declare-fun e!113060 () Bool)

(assert (=> d!51843 e!113060))

(declare-fun res!81435 () Bool)

(assert (=> d!51843 (=> (not res!81435) (not e!113060))))

(declare-fun lt!85362 () ListLongMap!2171)

(assert (=> d!51843 (= res!81435 (contains!1143 lt!85362 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(declare-fun lt!85363 () List!2213)

(assert (=> d!51843 (= lt!85362 (ListLongMap!2172 lt!85363))))

(declare-fun lt!85364 () Unit!5249)

(declare-fun lt!85361 () Unit!5249)

(assert (=> d!51843 (= lt!85364 lt!85361)))

(assert (=> d!51843 (= (getValueByKey!183 lt!85363 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(assert (=> d!51843 (= lt!85361 (lemmaContainsTupThenGetReturnValue!98 lt!85363 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(assert (=> d!51843 (= lt!85363 (insertStrictlySorted!100 (toList!1101 lt!85148) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(assert (=> d!51843 (= (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) lt!85362)))

(declare-fun b!171271 () Bool)

(declare-fun res!81436 () Bool)

(assert (=> b!171271 (=> (not res!81436) (not e!113060))))

(assert (=> b!171271 (= res!81436 (= (getValueByKey!183 (toList!1101 lt!85362) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))))

(declare-fun b!171272 () Bool)

(assert (=> b!171272 (= e!113060 (contains!1145 (toList!1101 lt!85362) (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))

(assert (= (and d!51843 res!81435) b!171271))

(assert (= (and b!171271 res!81436) b!171272))

(declare-fun m!199845 () Bool)

(assert (=> d!51843 m!199845))

(declare-fun m!199847 () Bool)

(assert (=> d!51843 m!199847))

(declare-fun m!199849 () Bool)

(assert (=> d!51843 m!199849))

(declare-fun m!199851 () Bool)

(assert (=> d!51843 m!199851))

(declare-fun m!199853 () Bool)

(assert (=> b!171271 m!199853))

(declare-fun m!199855 () Bool)

(assert (=> b!171272 m!199855))

(assert (=> b!170949 d!51843))

(declare-fun d!51845 () Bool)

(assert (=> d!51845 (= (apply!129 lt!85162 lt!85159) (get!1940 (getValueByKey!183 (toList!1101 lt!85162) lt!85159)))))

(declare-fun bs!7071 () Bool)

(assert (= bs!7071 d!51845))

(declare-fun m!199857 () Bool)

(assert (=> bs!7071 m!199857))

(assert (=> bs!7071 m!199857))

(declare-fun m!199859 () Bool)

(assert (=> bs!7071 m!199859))

(assert (=> b!170949 d!51845))

(declare-fun d!51847 () Bool)

(declare-fun e!113061 () Bool)

(assert (=> d!51847 e!113061))

(declare-fun res!81437 () Bool)

(assert (=> d!51847 (=> (not res!81437) (not e!113061))))

(declare-fun lt!85366 () ListLongMap!2171)

(assert (=> d!51847 (= res!81437 (contains!1143 lt!85366 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(declare-fun lt!85367 () List!2213)

(assert (=> d!51847 (= lt!85366 (ListLongMap!2172 lt!85367))))

(declare-fun lt!85368 () Unit!5249)

(declare-fun lt!85365 () Unit!5249)

(assert (=> d!51847 (= lt!85368 lt!85365)))

(assert (=> d!51847 (= (getValueByKey!183 lt!85367 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(assert (=> d!51847 (= lt!85365 (lemmaContainsTupThenGetReturnValue!98 lt!85367 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(assert (=> d!51847 (= lt!85367 (insertStrictlySorted!100 (toList!1101 lt!85166) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(assert (=> d!51847 (= (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) lt!85366)))

(declare-fun b!171273 () Bool)

(declare-fun res!81438 () Bool)

(assert (=> b!171273 (=> (not res!81438) (not e!113061))))

(assert (=> b!171273 (= res!81438 (= (getValueByKey!183 (toList!1101 lt!85366) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))))

(declare-fun b!171274 () Bool)

(assert (=> b!171274 (= e!113061 (contains!1145 (toList!1101 lt!85366) (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))

(assert (= (and d!51847 res!81437) b!171273))

(assert (= (and b!171273 res!81438) b!171274))

(declare-fun m!199861 () Bool)

(assert (=> d!51847 m!199861))

(declare-fun m!199863 () Bool)

(assert (=> d!51847 m!199863))

(declare-fun m!199865 () Bool)

(assert (=> d!51847 m!199865))

(declare-fun m!199867 () Bool)

(assert (=> d!51847 m!199867))

(declare-fun m!199869 () Bool)

(assert (=> b!171273 m!199869))

(declare-fun m!199871 () Bool)

(assert (=> b!171274 m!199871))

(assert (=> b!170949 d!51847))

(assert (=> b!170949 d!51743))

(declare-fun bm!17445 () Bool)

(declare-fun call!17448 () Bool)

(declare-fun c!30579 () Bool)

(assert (=> bm!17445 (= call!17448 (arrayNoDuplicates!0 (_keys!5387 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30579 (Cons!2211 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) Nil!2212) Nil!2212)))))

(declare-fun b!171275 () Bool)

(declare-fun e!113065 () Bool)

(assert (=> b!171275 (= e!113065 call!17448)))

(declare-fun b!171276 () Bool)

(declare-fun e!113064 () Bool)

(assert (=> b!171276 (= e!113064 e!113065)))

(assert (=> b!171276 (= c!30579 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!171277 () Bool)

(assert (=> b!171277 (= e!113065 call!17448)))

(declare-fun b!171278 () Bool)

(declare-fun e!113062 () Bool)

(assert (=> b!171278 (= e!113062 (contains!1146 Nil!2212 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!171279 () Bool)

(declare-fun e!113063 () Bool)

(assert (=> b!171279 (= e!113063 e!113064)))

(declare-fun res!81439 () Bool)

(assert (=> b!171279 (=> (not res!81439) (not e!113064))))

(assert (=> b!171279 (= res!81439 (not e!113062))))

(declare-fun res!81441 () Bool)

(assert (=> b!171279 (=> (not res!81441) (not e!113062))))

(assert (=> b!171279 (= res!81441 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!51849 () Bool)

(declare-fun res!81440 () Bool)

(assert (=> d!51849 (=> res!81440 e!113063)))

(assert (=> d!51849 (= res!81440 (bvsge #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> d!51849 (= (arrayNoDuplicates!0 (_keys!5387 thiss!1248) #b00000000000000000000000000000000 Nil!2212) e!113063)))

(assert (= (and d!51849 (not res!81440)) b!171279))

(assert (= (and b!171279 res!81441) b!171278))

(assert (= (and b!171279 res!81439) b!171276))

(assert (= (and b!171276 c!30579) b!171275))

(assert (= (and b!171276 (not c!30579)) b!171277))

(assert (= (or b!171275 b!171277) bm!17445))

(assert (=> bm!17445 m!199219))

(declare-fun m!199873 () Bool)

(assert (=> bm!17445 m!199873))

(assert (=> b!171276 m!199219))

(assert (=> b!171276 m!199219))

(assert (=> b!171276 m!199225))

(assert (=> b!171278 m!199219))

(assert (=> b!171278 m!199219))

(declare-fun m!199875 () Bool)

(assert (=> b!171278 m!199875))

(assert (=> b!171279 m!199219))

(assert (=> b!171279 m!199219))

(assert (=> b!171279 m!199225))

(assert (=> b!170975 d!51849))

(declare-fun d!51851 () Bool)

(declare-fun e!113067 () Bool)

(assert (=> d!51851 e!113067))

(declare-fun res!81442 () Bool)

(assert (=> d!51851 (=> res!81442 e!113067)))

(declare-fun lt!85371 () Bool)

(assert (=> d!51851 (= res!81442 (not lt!85371))))

(declare-fun lt!85369 () Bool)

(assert (=> d!51851 (= lt!85371 lt!85369)))

(declare-fun lt!85370 () Unit!5249)

(declare-fun e!113066 () Unit!5249)

(assert (=> d!51851 (= lt!85370 e!113066)))

(declare-fun c!30580 () Bool)

(assert (=> d!51851 (= c!30580 lt!85369)))

(assert (=> d!51851 (= lt!85369 (containsKey!187 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!51851 (= (contains!1143 lt!85152 #b0000000000000000000000000000000000000000000000000000000000000000) lt!85371)))

(declare-fun b!171280 () Bool)

(declare-fun lt!85372 () Unit!5249)

(assert (=> b!171280 (= e!113066 lt!85372)))

(assert (=> b!171280 (= lt!85372 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171280 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!171281 () Bool)

(declare-fun Unit!5264 () Unit!5249)

(assert (=> b!171281 (= e!113066 Unit!5264)))

(declare-fun b!171282 () Bool)

(assert (=> b!171282 (= e!113067 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!51851 c!30580) b!171280))

(assert (= (and d!51851 (not c!30580)) b!171281))

(assert (= (and d!51851 (not res!81442)) b!171282))

(declare-fun m!199877 () Bool)

(assert (=> d!51851 m!199877))

(declare-fun m!199879 () Bool)

(assert (=> b!171280 m!199879))

(declare-fun m!199881 () Bool)

(assert (=> b!171280 m!199881))

(assert (=> b!171280 m!199881))

(declare-fun m!199883 () Bool)

(assert (=> b!171280 m!199883))

(assert (=> b!171282 m!199881))

(assert (=> b!171282 m!199881))

(assert (=> b!171282 m!199883))

(assert (=> bm!17412 d!51851))

(declare-fun b!171284 () Bool)

(declare-fun e!113068 () Option!189)

(declare-fun e!113069 () Option!189)

(assert (=> b!171284 (= e!113068 e!113069)))

(declare-fun c!30582 () Bool)

(assert (=> b!171284 (= c!30582 (and ((_ is Cons!2209) (toList!1101 lt!85177)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85177))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun b!171285 () Bool)

(assert (=> b!171285 (= e!113069 (getValueByKey!183 (t!7023 (toList!1101 lt!85177)) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun d!51853 () Bool)

(declare-fun c!30581 () Bool)

(assert (=> d!51853 (= c!30581 (and ((_ is Cons!2209) (toList!1101 lt!85177)) (= (_1!1625 (h!2826 (toList!1101 lt!85177))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!51853 (= (getValueByKey!183 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) e!113068)))

(declare-fun b!171286 () Bool)

(assert (=> b!171286 (= e!113069 None!187)))

(declare-fun b!171283 () Bool)

(assert (=> b!171283 (= e!113068 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85177)))))))

(assert (= (and d!51853 c!30581) b!171283))

(assert (= (and d!51853 (not c!30581)) b!171284))

(assert (= (and b!171284 c!30582) b!171285))

(assert (= (and b!171284 (not c!30582)) b!171286))

(declare-fun m!199885 () Bool)

(assert (=> b!171285 m!199885))

(assert (=> b!170971 d!51853))

(declare-fun b!171287 () Bool)

(declare-fun e!113072 () Bool)

(declare-fun e!113070 () Bool)

(assert (=> b!171287 (= e!113072 e!113070)))

(declare-fun c!30583 () Bool)

(assert (=> b!171287 (= c!30583 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!51855 () Bool)

(declare-fun res!81444 () Bool)

(assert (=> d!51855 (=> res!81444 e!113072)))

(assert (=> d!51855 (= res!81444 (bvsge #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> d!51855 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5387 thiss!1248) (mask!8383 thiss!1248)) e!113072)))

(declare-fun bm!17446 () Bool)

(declare-fun call!17449 () Bool)

(assert (=> bm!17446 (= call!17449 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5387 thiss!1248) (mask!8383 thiss!1248)))))

(declare-fun b!171288 () Bool)

(assert (=> b!171288 (= e!113070 call!17449)))

(declare-fun b!171289 () Bool)

(declare-fun e!113071 () Bool)

(assert (=> b!171289 (= e!113071 call!17449)))

(declare-fun b!171290 () Bool)

(assert (=> b!171290 (= e!113070 e!113071)))

(declare-fun lt!85375 () (_ BitVec 64))

(assert (=> b!171290 (= lt!85375 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85373 () Unit!5249)

(assert (=> b!171290 (= lt!85373 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5387 thiss!1248) lt!85375 #b00000000000000000000000000000000))))

(assert (=> b!171290 (arrayContainsKey!0 (_keys!5387 thiss!1248) lt!85375 #b00000000000000000000000000000000)))

(declare-fun lt!85374 () Unit!5249)

(assert (=> b!171290 (= lt!85374 lt!85373)))

(declare-fun res!81443 () Bool)

(assert (=> b!171290 (= res!81443 (= (seekEntryOrOpen!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (_keys!5387 thiss!1248) (mask!8383 thiss!1248)) (Found!544 #b00000000000000000000000000000000)))))

(assert (=> b!171290 (=> (not res!81443) (not e!113071))))

(assert (= (and d!51855 (not res!81444)) b!171287))

(assert (= (and b!171287 c!30583) b!171290))

(assert (= (and b!171287 (not c!30583)) b!171288))

(assert (= (and b!171290 res!81443) b!171289))

(assert (= (or b!171289 b!171288) bm!17446))

(assert (=> b!171287 m!199219))

(assert (=> b!171287 m!199219))

(assert (=> b!171287 m!199225))

(declare-fun m!199887 () Bool)

(assert (=> bm!17446 m!199887))

(assert (=> b!171290 m!199219))

(declare-fun m!199889 () Bool)

(assert (=> b!171290 m!199889))

(declare-fun m!199891 () Bool)

(assert (=> b!171290 m!199891))

(assert (=> b!171290 m!199219))

(declare-fun m!199893 () Bool)

(assert (=> b!171290 m!199893))

(assert (=> b!170974 d!51855))

(assert (=> b!170965 d!51749))

(declare-fun b!171291 () Bool)

(declare-fun e!113074 () (_ BitVec 32))

(declare-fun call!17450 () (_ BitVec 32))

(assert (=> b!171291 (= e!113074 call!17450)))

(declare-fun b!171292 () Bool)

(declare-fun e!113073 () (_ BitVec 32))

(assert (=> b!171292 (= e!113073 #b00000000000000000000000000000000)))

(declare-fun b!171293 () Bool)

(assert (=> b!171293 (= e!113073 e!113074)))

(declare-fun c!30585 () Bool)

(assert (=> b!171293 (= c!30585 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!171294 () Bool)

(assert (=> b!171294 (= e!113074 (bvadd #b00000000000000000000000000000001 call!17450))))

(declare-fun bm!17447 () Bool)

(assert (=> bm!17447 (= call!17450 (arrayCountValidKeys!0 (_keys!5387 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun d!51857 () Bool)

(declare-fun lt!85376 () (_ BitVec 32))

(assert (=> d!51857 (and (bvsge lt!85376 #b00000000000000000000000000000000) (bvsle lt!85376 (bvsub (size!3681 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51857 (= lt!85376 e!113073)))

(declare-fun c!30584 () Bool)

(assert (=> d!51857 (= c!30584 (bvsge #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> d!51857 (and (bvsle #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3681 (_keys!5387 thiss!1248)) (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> d!51857 (= (arrayCountValidKeys!0 (_keys!5387 thiss!1248) #b00000000000000000000000000000000 (size!3681 (_keys!5387 thiss!1248))) lt!85376)))

(assert (= (and d!51857 c!30584) b!171292))

(assert (= (and d!51857 (not c!30584)) b!171293))

(assert (= (and b!171293 c!30585) b!171294))

(assert (= (and b!171293 (not c!30585)) b!171291))

(assert (= (or b!171294 b!171291) bm!17447))

(assert (=> b!171293 m!199219))

(assert (=> b!171293 m!199219))

(assert (=> b!171293 m!199225))

(declare-fun m!199895 () Bool)

(assert (=> bm!17447 m!199895))

(assert (=> b!170973 d!51857))

(declare-fun d!51859 () Bool)

(assert (=> d!51859 (= (apply!129 lt!85152 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1940 (getValueByKey!183 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7072 () Bool)

(assert (= bs!7072 d!51859))

(assert (=> bs!7072 m!199881))

(assert (=> bs!7072 m!199881))

(declare-fun m!199897 () Bool)

(assert (=> bs!7072 m!199897))

(assert (=> b!170947 d!51859))

(declare-fun condMapEmpty!6807 () Bool)

(declare-fun mapDefault!6807 () ValueCell!1659)

(assert (=> mapNonEmpty!6806 (= condMapEmpty!6807 (= mapRest!6806 ((as const (Array (_ BitVec 32) ValueCell!1659)) mapDefault!6807)))))

(declare-fun e!113076 () Bool)

(declare-fun mapRes!6807 () Bool)

(assert (=> mapNonEmpty!6806 (= tp!15338 (and e!113076 mapRes!6807))))

(declare-fun b!171296 () Bool)

(assert (=> b!171296 (= e!113076 tp_is_empty!4005)))

(declare-fun b!171295 () Bool)

(declare-fun e!113075 () Bool)

(assert (=> b!171295 (= e!113075 tp_is_empty!4005)))

(declare-fun mapNonEmpty!6807 () Bool)

(declare-fun tp!15339 () Bool)

(assert (=> mapNonEmpty!6807 (= mapRes!6807 (and tp!15339 e!113075))))

(declare-fun mapKey!6807 () (_ BitVec 32))

(declare-fun mapRest!6807 () (Array (_ BitVec 32) ValueCell!1659))

(declare-fun mapValue!6807 () ValueCell!1659)

(assert (=> mapNonEmpty!6807 (= mapRest!6806 (store mapRest!6807 mapKey!6807 mapValue!6807))))

(declare-fun mapIsEmpty!6807 () Bool)

(assert (=> mapIsEmpty!6807 mapRes!6807))

(assert (= (and mapNonEmpty!6806 condMapEmpty!6807) mapIsEmpty!6807))

(assert (= (and mapNonEmpty!6806 (not condMapEmpty!6807)) mapNonEmpty!6807))

(assert (= (and mapNonEmpty!6807 ((_ is ValueCellFull!1659) mapValue!6807)) b!171295))

(assert (= (and mapNonEmpty!6806 ((_ is ValueCellFull!1659) mapDefault!6807)) b!171296))

(declare-fun m!199899 () Bool)

(assert (=> mapNonEmpty!6807 m!199899))

(declare-fun b_lambda!6935 () Bool)

(assert (= b_lambda!6929 (or (and b!170840 b_free!4233) b_lambda!6935)))

(declare-fun b_lambda!6937 () Bool)

(assert (= b_lambda!6931 (or (and b!170840 b_free!4233) b_lambda!6937)))

(declare-fun b_lambda!6939 () Bool)

(assert (= b_lambda!6927 (or (and b!170840 b_free!4233) b_lambda!6939)))

(declare-fun b_lambda!6941 () Bool)

(assert (= b_lambda!6925 (or (and b!170840 b_free!4233) b_lambda!6941)))

(check-sat (not bm!17444) (not d!51813) (not b_next!4233) (not b!171241) (not b!171290) (not b_lambda!6935) (not b!171157) (not b!171251) (not b!170999) (not bm!17442) (not bm!17440) (not b_lambda!6937) (not d!51709) (not d!51729) (not b!171269) (not b!171209) (not b!171272) (not b!171238) (not b!170996) (not d!51761) (not b!171234) (not b!171099) (not bm!17447) (not d!51765) (not b_lambda!6923) (not b!171095) (not d!51779) (not b!171144) (not b!171014) (not d!51777) (not b!171122) (not b!171268) (not b!171187) b_and!10681 (not d!51797) (not b!171058) (not d!51823) (not b!171216) (not b!171049) (not d!51791) (not d!51707) (not b!171012) (not b!171026) (not bm!17419) (not d!51711) (not d!51789) (not b!171100) (not d!51831) (not d!51833) (not d!51841) (not b!171207) (not d!51723) (not d!51775) (not b!171167) (not b!171213) (not d!51781) (not b!171254) (not b!171141) (not d!51811) (not bm!17437) (not b!171116) (not b!171260) (not d!51793) (not d!51805) (not d!51741) (not b!171155) (not bm!17431) (not b!171194) (not d!51715) (not b!171237) (not d!51783) (not d!51809) (not b!171057) (not b!171124) (not b!171243) (not b!171119) (not d!51851) (not b!171097) (not b!171128) (not b!171061) (not b!171177) (not b!171188) (not b!171114) (not b!171017) (not d!51843) (not bm!17446) (not b!171089) (not b!171015) (not b!171096) (not b!171010) (not b!171118) (not bm!17425) (not b!171274) (not d!51829) (not d!51837) (not b!171020) (not b!171261) (not b!171161) (not d!51731) (not b!171091) (not b!171287) (not b!171131) (not b!171027) (not b!171231) (not b_lambda!6939) (not b!171166) (not b!171090) (not b!171120) (not d!51773) (not b!171093) (not b!171221) (not b!171158) (not b!171280) (not b!171063) (not d!51725) (not d!51753) (not d!51739) (not bm!17443) (not d!51827) (not b!171250) (not b!171195) (not d!51733) (not b!171244) (not b_lambda!6933) (not d!51759) (not mapNonEmpty!6807) (not b!171293) (not d!51763) (not bm!17432) (not b!171052) (not b!171265) (not b!171278) (not b!171115) (not d!51847) (not d!51835) (not b!171164) (not b!171273) (not b!171226) (not d!51787) (not b!171239) (not d!51743) (not b!171285) (not b!171282) (not d!51771) (not d!51803) (not d!51795) (not bm!17424) (not d!51755) (not d!51819) (not b!171236) (not b!171210) (not d!51817) (not b!171172) (not d!51727) (not bm!17445) (not bm!17428) (not b!171060) (not b_lambda!6921) (not b!171212) (not b!171126) (not d!51719) (not d!51799) (not b!171169) (not b!171125) (not b!171256) (not b!171245) (not d!51785) (not d!51845) (not b!171230) (not d!51807) (not b!171271) tp_is_empty!4005 (not b!171108) (not b!171102) (not b!171276) (not b!171279) (not b!171263) (not b!171159) (not d!51821) (not b!171233) (not d!51839) (not d!51825) (not d!51735) (not b!171258) (not d!51859) (not d!51801) (not d!51815) (not b!171218) (not b_lambda!6941) (not b!170995) (not b!171259) (not b!171266))
(check-sat b_and!10681 (not b_next!4233))
(get-model)

(declare-fun d!51861 () Bool)

(assert (=> d!51861 (= (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))) lt!85134)) (v!3910 (getValueByKey!183 (toList!1101 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))) lt!85134)))))

(assert (=> d!51795 d!51861))

(declare-fun b!171298 () Bool)

(declare-fun e!113077 () Option!189)

(declare-fun e!113078 () Option!189)

(assert (=> b!171298 (= e!113077 e!113078)))

(declare-fun c!30587 () Bool)

(assert (=> b!171298 (= c!30587 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))) (not (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))) lt!85134))))))

(declare-fun b!171299 () Bool)

(assert (=> b!171299 (= e!113078 (getValueByKey!183 (t!7023 (toList!1101 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))) lt!85134))))

(declare-fun d!51863 () Bool)

(declare-fun c!30586 () Bool)

(assert (=> d!51863 (= c!30586 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))) (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))) lt!85134)))))

(assert (=> d!51863 (= (getValueByKey!183 (toList!1101 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))) lt!85134) e!113077)))

(declare-fun b!171300 () Bool)

(assert (=> b!171300 (= e!113078 None!187)))

(declare-fun b!171297 () Bool)

(assert (=> b!171297 (= e!113077 (Some!188 (_2!1625 (h!2826 (toList!1101 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))))))

(assert (= (and d!51863 c!30586) b!171297))

(assert (= (and d!51863 (not c!30586)) b!171298))

(assert (= (and b!171298 c!30587) b!171299))

(assert (= (and b!171298 (not c!30587)) b!171300))

(declare-fun m!199901 () Bool)

(assert (=> b!171299 m!199901))

(assert (=> d!51795 d!51863))

(declare-fun d!51865 () Bool)

(declare-fun res!81445 () Bool)

(declare-fun e!113079 () Bool)

(assert (=> d!51865 (=> res!81445 e!113079)))

(assert (=> d!51865 (= res!81445 (and ((_ is Cons!2209) lt!85285) (= (_1!1625 (h!2826 lt!85285)) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!51865 (= (containsKey!187 lt!85285 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) e!113079)))

(declare-fun b!171301 () Bool)

(declare-fun e!113080 () Bool)

(assert (=> b!171301 (= e!113079 e!113080)))

(declare-fun res!81446 () Bool)

(assert (=> b!171301 (=> (not res!81446) (not e!113080))))

(assert (=> b!171301 (= res!81446 (and (or (not ((_ is Cons!2209) lt!85285)) (bvsle (_1!1625 (h!2826 lt!85285)) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))) ((_ is Cons!2209) lt!85285) (bvslt (_1!1625 (h!2826 lt!85285)) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!171302 () Bool)

(assert (=> b!171302 (= e!113080 (containsKey!187 (t!7023 lt!85285) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (= (and d!51865 (not res!81445)) b!171301))

(assert (= (and b!171301 res!81446) b!171302))

(declare-fun m!199903 () Bool)

(assert (=> b!171302 m!199903))

(assert (=> b!171169 d!51865))

(declare-fun d!51867 () Bool)

(assert (=> d!51867 (= (isDefined!137 (getValueByKey!183 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!438 (getValueByKey!183 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!7073 () Bool)

(assert (= bs!7073 d!51867))

(assert (=> bs!7073 m!199881))

(declare-fun m!199905 () Bool)

(assert (=> bs!7073 m!199905))

(assert (=> b!171282 d!51867))

(declare-fun b!171304 () Bool)

(declare-fun e!113081 () Option!189)

(declare-fun e!113082 () Option!189)

(assert (=> b!171304 (= e!113081 e!113082)))

(declare-fun c!30589 () Bool)

(assert (=> b!171304 (= c!30589 (and ((_ is Cons!2209) (toList!1101 lt!85152)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85152))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!171305 () Bool)

(assert (=> b!171305 (= e!113082 (getValueByKey!183 (t!7023 (toList!1101 lt!85152)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!51869 () Bool)

(declare-fun c!30588 () Bool)

(assert (=> d!51869 (= c!30588 (and ((_ is Cons!2209) (toList!1101 lt!85152)) (= (_1!1625 (h!2826 (toList!1101 lt!85152))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!51869 (= (getValueByKey!183 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000) e!113081)))

(declare-fun b!171306 () Bool)

(assert (=> b!171306 (= e!113082 None!187)))

(declare-fun b!171303 () Bool)

(assert (=> b!171303 (= e!113081 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85152)))))))

(assert (= (and d!51869 c!30588) b!171303))

(assert (= (and d!51869 (not c!30588)) b!171304))

(assert (= (and b!171304 c!30589) b!171305))

(assert (= (and b!171304 (not c!30589)) b!171306))

(declare-fun m!199907 () Bool)

(assert (=> b!171305 m!199907))

(assert (=> b!171282 d!51869))

(declare-fun d!51871 () Bool)

(declare-fun lt!85377 () Bool)

(assert (=> d!51871 (= lt!85377 (select (content!146 (t!7023 (toList!1101 lt!85177))) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(declare-fun e!113084 () Bool)

(assert (=> d!51871 (= lt!85377 e!113084)))

(declare-fun res!81447 () Bool)

(assert (=> d!51871 (=> (not res!81447) (not e!113084))))

(assert (=> d!51871 (= res!81447 ((_ is Cons!2209) (t!7023 (toList!1101 lt!85177))))))

(assert (=> d!51871 (= (contains!1145 (t!7023 (toList!1101 lt!85177)) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) lt!85377)))

(declare-fun b!171307 () Bool)

(declare-fun e!113083 () Bool)

(assert (=> b!171307 (= e!113084 e!113083)))

(declare-fun res!81448 () Bool)

(assert (=> b!171307 (=> res!81448 e!113083)))

(assert (=> b!171307 (= res!81448 (= (h!2826 (t!7023 (toList!1101 lt!85177))) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(declare-fun b!171308 () Bool)

(assert (=> b!171308 (= e!113083 (contains!1145 (t!7023 (t!7023 (toList!1101 lt!85177))) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(assert (= (and d!51871 res!81447) b!171307))

(assert (= (and b!171307 (not res!81448)) b!171308))

(declare-fun m!199909 () Bool)

(assert (=> d!51871 m!199909))

(declare-fun m!199911 () Bool)

(assert (=> d!51871 m!199911))

(declare-fun m!199913 () Bool)

(assert (=> b!171308 m!199913))

(assert (=> b!171258 d!51871))

(declare-fun d!51873 () Bool)

(assert (=> d!51873 (= (validMask!0 (mask!8383 lt!85067)) (and (or (= (mask!8383 lt!85067) #b00000000000000000000000000000111) (= (mask!8383 lt!85067) #b00000000000000000000000000001111) (= (mask!8383 lt!85067) #b00000000000000000000000000011111) (= (mask!8383 lt!85067) #b00000000000000000000000000111111) (= (mask!8383 lt!85067) #b00000000000000000000000001111111) (= (mask!8383 lt!85067) #b00000000000000000000000011111111) (= (mask!8383 lt!85067) #b00000000000000000000000111111111) (= (mask!8383 lt!85067) #b00000000000000000000001111111111) (= (mask!8383 lt!85067) #b00000000000000000000011111111111) (= (mask!8383 lt!85067) #b00000000000000000000111111111111) (= (mask!8383 lt!85067) #b00000000000000000001111111111111) (= (mask!8383 lt!85067) #b00000000000000000011111111111111) (= (mask!8383 lt!85067) #b00000000000000000111111111111111) (= (mask!8383 lt!85067) #b00000000000000001111111111111111) (= (mask!8383 lt!85067) #b00000000000000011111111111111111) (= (mask!8383 lt!85067) #b00000000000000111111111111111111) (= (mask!8383 lt!85067) #b00000000000001111111111111111111) (= (mask!8383 lt!85067) #b00000000000011111111111111111111) (= (mask!8383 lt!85067) #b00000000000111111111111111111111) (= (mask!8383 lt!85067) #b00000000001111111111111111111111) (= (mask!8383 lt!85067) #b00000000011111111111111111111111) (= (mask!8383 lt!85067) #b00000000111111111111111111111111) (= (mask!8383 lt!85067) #b00000001111111111111111111111111) (= (mask!8383 lt!85067) #b00000011111111111111111111111111) (= (mask!8383 lt!85067) #b00000111111111111111111111111111) (= (mask!8383 lt!85067) #b00001111111111111111111111111111) (= (mask!8383 lt!85067) #b00011111111111111111111111111111) (= (mask!8383 lt!85067) #b00111111111111111111111111111111)) (bvsle (mask!8383 lt!85067) #b00111111111111111111111111111111)))))

(assert (=> d!51763 d!51873))

(declare-fun d!51875 () Bool)

(assert (=> d!51875 (= (isDefined!137 (getValueByKey!183 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309)))) (not (isEmpty!438 (getValueByKey!183 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309))))))))

(declare-fun bs!7074 () Bool)

(assert (= bs!7074 d!51875))

(assert (=> bs!7074 m!199375))

(declare-fun m!199915 () Bool)

(assert (=> bs!7074 m!199915))

(assert (=> b!171017 d!51875))

(assert (=> b!171017 d!51745))

(assert (=> b!171279 d!51749))

(declare-fun d!51877 () Bool)

(assert (=> d!51877 (= (get!1940 (getValueByKey!183 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!3910 (getValueByKey!183 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!51811 d!51877))

(declare-fun b!171310 () Bool)

(declare-fun e!113085 () Option!189)

(declare-fun e!113086 () Option!189)

(assert (=> b!171310 (= e!113085 e!113086)))

(declare-fun c!30591 () Bool)

(assert (=> b!171310 (= c!30591 (and ((_ is Cons!2209) (toList!1101 lt!85152)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85152))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!171311 () Bool)

(assert (=> b!171311 (= e!113086 (getValueByKey!183 (t!7023 (toList!1101 lt!85152)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!51879 () Bool)

(declare-fun c!30590 () Bool)

(assert (=> d!51879 (= c!30590 (and ((_ is Cons!2209) (toList!1101 lt!85152)) (= (_1!1625 (h!2826 (toList!1101 lt!85152))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!51879 (= (getValueByKey!183 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000) e!113085)))

(declare-fun b!171312 () Bool)

(assert (=> b!171312 (= e!113086 None!187)))

(declare-fun b!171309 () Bool)

(assert (=> b!171309 (= e!113085 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85152)))))))

(assert (= (and d!51879 c!30590) b!171309))

(assert (= (and d!51879 (not c!30590)) b!171310))

(assert (= (and b!171310 c!30591) b!171311))

(assert (= (and b!171310 (not c!30591)) b!171312))

(declare-fun m!199917 () Bool)

(assert (=> b!171311 m!199917))

(assert (=> d!51811 d!51879))

(declare-fun d!51881 () Bool)

(declare-fun res!81449 () Bool)

(declare-fun e!113087 () Bool)

(assert (=> d!51881 (=> res!81449 e!113087)))

(assert (=> d!51881 (= res!81449 (and ((_ is Cons!2209) lt!85194) (= (_1!1625 (h!2826 lt!85194)) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(assert (=> d!51881 (= (containsKey!187 lt!85194 (_1!1625 (tuple2!3231 key!828 v!309))) e!113087)))

(declare-fun b!171313 () Bool)

(declare-fun e!113088 () Bool)

(assert (=> b!171313 (= e!113087 e!113088)))

(declare-fun res!81450 () Bool)

(assert (=> b!171313 (=> (not res!81450) (not e!113088))))

(assert (=> b!171313 (= res!81450 (and (or (not ((_ is Cons!2209) lt!85194)) (bvsle (_1!1625 (h!2826 lt!85194)) (_1!1625 (tuple2!3231 key!828 v!309)))) ((_ is Cons!2209) lt!85194) (bvslt (_1!1625 (h!2826 lt!85194)) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(declare-fun b!171314 () Bool)

(assert (=> b!171314 (= e!113088 (containsKey!187 (t!7023 lt!85194) (_1!1625 (tuple2!3231 key!828 v!309))))))

(assert (= (and d!51881 (not res!81449)) b!171313))

(assert (= (and b!171313 res!81450) b!171314))

(declare-fun m!199919 () Bool)

(assert (=> b!171314 m!199919))

(assert (=> b!171026 d!51881))

(declare-fun d!51883 () Bool)

(declare-fun res!81451 () Bool)

(declare-fun e!113089 () Bool)

(assert (=> d!51883 (=> res!81451 e!113089)))

(assert (=> d!51883 (= res!81451 (and ((_ is Cons!2209) (toList!1101 lt!85127)) (= (_1!1625 (h!2826 (toList!1101 lt!85127))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!51883 (= (containsKey!187 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000) e!113089)))

(declare-fun b!171315 () Bool)

(declare-fun e!113090 () Bool)

(assert (=> b!171315 (= e!113089 e!113090)))

(declare-fun res!81452 () Bool)

(assert (=> b!171315 (=> (not res!81452) (not e!113090))))

(assert (=> b!171315 (= res!81452 (and (or (not ((_ is Cons!2209) (toList!1101 lt!85127))) (bvsle (_1!1625 (h!2826 (toList!1101 lt!85127))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!2209) (toList!1101 lt!85127)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85127))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!171316 () Bool)

(assert (=> b!171316 (= e!113090 (containsKey!187 (t!7023 (toList!1101 lt!85127)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!51883 (not res!81451)) b!171315))

(assert (= (and b!171315 res!81452) b!171316))

(declare-fun m!199921 () Bool)

(assert (=> b!171316 m!199921))

(assert (=> d!51809 d!51883))

(declare-fun d!51885 () Bool)

(assert (=> d!51885 (= (get!1940 (getValueByKey!183 (toList!1101 lt!85158) lt!85150)) (v!3910 (getValueByKey!183 (toList!1101 lt!85158) lt!85150)))))

(assert (=> d!51825 d!51885))

(declare-fun b!171318 () Bool)

(declare-fun e!113091 () Option!189)

(declare-fun e!113092 () Option!189)

(assert (=> b!171318 (= e!113091 e!113092)))

(declare-fun c!30593 () Bool)

(assert (=> b!171318 (= c!30593 (and ((_ is Cons!2209) (toList!1101 lt!85158)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85158))) lt!85150))))))

(declare-fun b!171319 () Bool)

(assert (=> b!171319 (= e!113092 (getValueByKey!183 (t!7023 (toList!1101 lt!85158)) lt!85150))))

(declare-fun d!51887 () Bool)

(declare-fun c!30592 () Bool)

(assert (=> d!51887 (= c!30592 (and ((_ is Cons!2209) (toList!1101 lt!85158)) (= (_1!1625 (h!2826 (toList!1101 lt!85158))) lt!85150)))))

(assert (=> d!51887 (= (getValueByKey!183 (toList!1101 lt!85158) lt!85150) e!113091)))

(declare-fun b!171320 () Bool)

(assert (=> b!171320 (= e!113092 None!187)))

(declare-fun b!171317 () Bool)

(assert (=> b!171317 (= e!113091 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85158)))))))

(assert (= (and d!51887 c!30592) b!171317))

(assert (= (and d!51887 (not c!30592)) b!171318))

(assert (= (and b!171318 c!30593) b!171319))

(assert (= (and b!171318 (not c!30593)) b!171320))

(declare-fun m!199923 () Bool)

(assert (=> b!171319 m!199923))

(assert (=> d!51825 d!51887))

(declare-fun d!51889 () Bool)

(declare-fun res!81453 () Bool)

(declare-fun e!113093 () Bool)

(assert (=> d!51889 (=> res!81453 e!113093)))

(assert (=> d!51889 (= res!81453 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))) (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))) lt!85149)))))

(assert (=> d!51889 (= (containsKey!187 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85149) e!113093)))

(declare-fun b!171321 () Bool)

(declare-fun e!113094 () Bool)

(assert (=> b!171321 (= e!113093 e!113094)))

(declare-fun res!81454 () Bool)

(assert (=> b!171321 (=> (not res!81454) (not e!113094))))

(assert (=> b!171321 (= res!81454 (and (or (not ((_ is Cons!2209) (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))) (bvsle (_1!1625 (h!2826 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))) lt!85149)) ((_ is Cons!2209) (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))) (bvslt (_1!1625 (h!2826 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))) lt!85149)))))

(declare-fun b!171322 () Bool)

(assert (=> b!171322 (= e!113094 (containsKey!187 (t!7023 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))) lt!85149))))

(assert (= (and d!51889 (not res!81453)) b!171321))

(assert (= (and b!171321 res!81454) b!171322))

(declare-fun m!199925 () Bool)

(assert (=> b!171322 m!199925))

(assert (=> d!51823 d!51889))

(assert (=> b!171089 d!51749))

(declare-fun b!171324 () Bool)

(declare-fun e!113095 () Option!189)

(declare-fun e!113096 () Option!189)

(assert (=> b!171324 (= e!113095 e!113096)))

(declare-fun c!30595 () Bool)

(assert (=> b!171324 (= c!30595 (and ((_ is Cons!2209) (toList!1101 lt!85352)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85352))) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171325 () Bool)

(assert (=> b!171325 (= e!113096 (getValueByKey!183 (t!7023 (toList!1101 lt!85352)) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(declare-fun d!51891 () Bool)

(declare-fun c!30594 () Bool)

(assert (=> d!51891 (= c!30594 (and ((_ is Cons!2209) (toList!1101 lt!85352)) (= (_1!1625 (h!2826 (toList!1101 lt!85352))) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))))

(assert (=> d!51891 (= (getValueByKey!183 (toList!1101 lt!85352) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))) e!113095)))

(declare-fun b!171326 () Bool)

(assert (=> b!171326 (= e!113096 None!187)))

(declare-fun b!171323 () Bool)

(assert (=> b!171323 (= e!113095 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85352)))))))

(assert (= (and d!51891 c!30594) b!171323))

(assert (= (and d!51891 (not c!30594)) b!171324))

(assert (= (and b!171324 c!30595) b!171325))

(assert (= (and b!171324 (not c!30595)) b!171326))

(declare-fun m!199927 () Bool)

(assert (=> b!171325 m!199927))

(assert (=> b!171265 d!51891))

(declare-fun d!51893 () Bool)

(assert (=> d!51893 (= (size!3685 thiss!1248) (bvadd (_size!1162 thiss!1248) (bvsdiv (bvadd (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!171212 d!51893))

(declare-fun d!51895 () Bool)

(declare-fun res!81455 () Bool)

(declare-fun e!113097 () Bool)

(assert (=> d!51895 (=> res!81455 e!113097)))

(assert (=> d!51895 (= res!81455 (and ((_ is Cons!2209) (t!7023 (toList!1101 lt!85065))) (= (_1!1625 (h!2826 (t!7023 (toList!1101 lt!85065)))) key!828)))))

(assert (=> d!51895 (= (containsKey!187 (t!7023 (toList!1101 lt!85065)) key!828) e!113097)))

(declare-fun b!171327 () Bool)

(declare-fun e!113098 () Bool)

(assert (=> b!171327 (= e!113097 e!113098)))

(declare-fun res!81456 () Bool)

(assert (=> b!171327 (=> (not res!81456) (not e!113098))))

(assert (=> b!171327 (= res!81456 (and (or (not ((_ is Cons!2209) (t!7023 (toList!1101 lt!85065)))) (bvsle (_1!1625 (h!2826 (t!7023 (toList!1101 lt!85065)))) key!828)) ((_ is Cons!2209) (t!7023 (toList!1101 lt!85065))) (bvslt (_1!1625 (h!2826 (t!7023 (toList!1101 lt!85065)))) key!828)))))

(declare-fun b!171328 () Bool)

(assert (=> b!171328 (= e!113098 (containsKey!187 (t!7023 (t!7023 (toList!1101 lt!85065))) key!828))))

(assert (= (and d!51895 (not res!81455)) b!171327))

(assert (= (and b!171327 res!81456) b!171328))

(declare-fun m!199929 () Bool)

(assert (=> b!171328 m!199929))

(assert (=> b!171108 d!51895))

(declare-fun b!171330 () Bool)

(declare-fun e!113099 () Option!189)

(declare-fun e!113100 () Option!189)

(assert (=> b!171330 (= e!113099 e!113100)))

(declare-fun c!30597 () Bool)

(assert (=> b!171330 (= c!30597 (and ((_ is Cons!2209) (toList!1101 lt!85331)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85331))) (_1!1625 (tuple2!3231 lt!85126 v!309))))))))

(declare-fun b!171331 () Bool)

(assert (=> b!171331 (= e!113100 (getValueByKey!183 (t!7023 (toList!1101 lt!85331)) (_1!1625 (tuple2!3231 lt!85126 v!309))))))

(declare-fun c!30596 () Bool)

(declare-fun d!51897 () Bool)

(assert (=> d!51897 (= c!30596 (and ((_ is Cons!2209) (toList!1101 lt!85331)) (= (_1!1625 (h!2826 (toList!1101 lt!85331))) (_1!1625 (tuple2!3231 lt!85126 v!309)))))))

(assert (=> d!51897 (= (getValueByKey!183 (toList!1101 lt!85331) (_1!1625 (tuple2!3231 lt!85126 v!309))) e!113099)))

(declare-fun b!171332 () Bool)

(assert (=> b!171332 (= e!113100 None!187)))

(declare-fun b!171329 () Bool)

(assert (=> b!171329 (= e!113099 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85331)))))))

(assert (= (and d!51897 c!30596) b!171329))

(assert (= (and d!51897 (not c!30596)) b!171330))

(assert (= (and b!171330 c!30597) b!171331))

(assert (= (and b!171330 (not c!30597)) b!171332))

(declare-fun m!199931 () Bool)

(assert (=> b!171331 m!199931))

(assert (=> b!171250 d!51897))

(declare-fun d!51899 () Bool)

(declare-fun res!81461 () Bool)

(declare-fun e!113105 () Bool)

(assert (=> d!51899 (=> res!81461 e!113105)))

(assert (=> d!51899 (= res!81461 (or ((_ is Nil!2210) lt!85285) ((_ is Nil!2210) (t!7023 lt!85285))))))

(assert (=> d!51899 (= (isStrictlySorted!326 lt!85285) e!113105)))

(declare-fun b!171337 () Bool)

(declare-fun e!113106 () Bool)

(assert (=> b!171337 (= e!113105 e!113106)))

(declare-fun res!81462 () Bool)

(assert (=> b!171337 (=> (not res!81462) (not e!113106))))

(assert (=> b!171337 (= res!81462 (bvslt (_1!1625 (h!2826 lt!85285)) (_1!1625 (h!2826 (t!7023 lt!85285)))))))

(declare-fun b!171338 () Bool)

(assert (=> b!171338 (= e!113106 (isStrictlySorted!326 (t!7023 lt!85285)))))

(assert (= (and d!51899 (not res!81461)) b!171337))

(assert (= (and b!171337 res!81462) b!171338))

(declare-fun m!199933 () Bool)

(assert (=> b!171338 m!199933))

(assert (=> d!51761 d!51899))

(declare-fun d!51901 () Bool)

(declare-fun res!81463 () Bool)

(declare-fun e!113107 () Bool)

(assert (=> d!51901 (=> res!81463 e!113107)))

(assert (=> d!51901 (= res!81463 (or ((_ is Nil!2210) (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))) ((_ is Nil!2210) (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))))))

(assert (=> d!51901 (= (isStrictlySorted!326 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))) e!113107)))

(declare-fun b!171339 () Bool)

(declare-fun e!113108 () Bool)

(assert (=> b!171339 (= e!113107 e!113108)))

(declare-fun res!81464 () Bool)

(assert (=> b!171339 (=> (not res!81464) (not e!113108))))

(assert (=> b!171339 (= res!81464 (bvslt (_1!1625 (h!2826 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))) (_1!1625 (h!2826 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))))))))

(declare-fun b!171340 () Bool)

(assert (=> b!171340 (= e!113108 (isStrictlySorted!326 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))))))

(assert (= (and d!51901 (not res!81463)) b!171339))

(assert (= (and b!171339 res!81464) b!171340))

(declare-fun m!199935 () Bool)

(assert (=> b!171340 m!199935))

(assert (=> d!51761 d!51901))

(declare-fun b!171342 () Bool)

(declare-fun e!113109 () Option!189)

(declare-fun e!113110 () Option!189)

(assert (=> b!171342 (= e!113109 e!113110)))

(declare-fun c!30599 () Bool)

(assert (=> b!171342 (= c!30599 (and ((_ is Cons!2209) (t!7023 (toList!1101 lt!85065))) (not (= (_1!1625 (h!2826 (t!7023 (toList!1101 lt!85065)))) key!828))))))

(declare-fun b!171343 () Bool)

(assert (=> b!171343 (= e!113110 (getValueByKey!183 (t!7023 (t!7023 (toList!1101 lt!85065))) key!828))))

(declare-fun d!51903 () Bool)

(declare-fun c!30598 () Bool)

(assert (=> d!51903 (= c!30598 (and ((_ is Cons!2209) (t!7023 (toList!1101 lt!85065))) (= (_1!1625 (h!2826 (t!7023 (toList!1101 lt!85065)))) key!828)))))

(assert (=> d!51903 (= (getValueByKey!183 (t!7023 (toList!1101 lt!85065)) key!828) e!113109)))

(declare-fun b!171344 () Bool)

(assert (=> b!171344 (= e!113110 None!187)))

(declare-fun b!171341 () Bool)

(assert (=> b!171341 (= e!113109 (Some!188 (_2!1625 (h!2826 (t!7023 (toList!1101 lt!85065))))))))

(assert (= (and d!51903 c!30598) b!171341))

(assert (= (and d!51903 (not c!30598)) b!171342))

(assert (= (and b!171342 c!30599) b!171343))

(assert (= (and b!171342 (not c!30599)) b!171344))

(declare-fun m!199937 () Bool)

(assert (=> b!171343 m!199937))

(assert (=> b!171010 d!51903))

(declare-fun b!171346 () Bool)

(declare-fun e!113111 () Option!189)

(declare-fun e!113112 () Option!189)

(assert (=> b!171346 (= e!113111 e!113112)))

(declare-fun c!30601 () Bool)

(assert (=> b!171346 (= c!30601 (and ((_ is Cons!2209) (t!7023 lt!85178)) (not (= (_1!1625 (h!2826 (t!7023 lt!85178))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun b!171347 () Bool)

(assert (=> b!171347 (= e!113112 (getValueByKey!183 (t!7023 (t!7023 lt!85178)) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun d!51905 () Bool)

(declare-fun c!30600 () Bool)

(assert (=> d!51905 (= c!30600 (and ((_ is Cons!2209) (t!7023 lt!85178)) (= (_1!1625 (h!2826 (t!7023 lt!85178))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!51905 (= (getValueByKey!183 (t!7023 lt!85178) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) e!113111)))

(declare-fun b!171348 () Bool)

(assert (=> b!171348 (= e!113112 None!187)))

(declare-fun b!171345 () Bool)

(assert (=> b!171345 (= e!113111 (Some!188 (_2!1625 (h!2826 (t!7023 lt!85178)))))))

(assert (= (and d!51905 c!30600) b!171345))

(assert (= (and d!51905 (not c!30600)) b!171346))

(assert (= (and b!171346 c!30601) b!171347))

(assert (= (and b!171346 (not c!30601)) b!171348))

(declare-fun m!199939 () Bool)

(assert (=> b!171347 m!199939))

(assert (=> b!171164 d!51905))

(declare-fun d!51907 () Bool)

(assert (=> d!51907 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun lt!85378 () Unit!5249)

(assert (=> d!51907 (= lt!85378 (choose!931 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun e!113113 () Bool)

(assert (=> d!51907 e!113113))

(declare-fun res!81465 () Bool)

(assert (=> d!51907 (=> (not res!81465) (not e!113113))))

(assert (=> d!51907 (= res!81465 (isStrictlySorted!326 (toList!1101 lt!85177)))))

(assert (=> d!51907 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!85378)))

(declare-fun b!171349 () Bool)

(assert (=> b!171349 (= e!113113 (containsKey!187 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (= (and d!51907 res!81465) b!171349))

(assert (=> d!51907 m!199345))

(assert (=> d!51907 m!199345))

(assert (=> d!51907 m!199553))

(declare-fun m!199941 () Bool)

(assert (=> d!51907 m!199941))

(declare-fun m!199943 () Bool)

(assert (=> d!51907 m!199943))

(assert (=> b!171349 m!199549))

(assert (=> b!171159 d!51907))

(declare-fun d!51909 () Bool)

(assert (=> d!51909 (= (isDefined!137 (getValueByKey!183 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))) (not (isEmpty!438 (getValueByKey!183 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun bs!7075 () Bool)

(assert (= bs!7075 d!51909))

(assert (=> bs!7075 m!199345))

(declare-fun m!199945 () Bool)

(assert (=> bs!7075 m!199945))

(assert (=> b!171159 d!51909))

(assert (=> b!171159 d!51853))

(declare-fun d!51911 () Bool)

(declare-fun c!30604 () Bool)

(assert (=> d!51911 (= c!30604 ((_ is Nil!2210) (toList!1101 lt!85193)))))

(declare-fun e!113116 () (InoxSet tuple2!3230))

(assert (=> d!51911 (= (content!146 (toList!1101 lt!85193)) e!113116)))

(declare-fun b!171354 () Bool)

(assert (=> b!171354 (= e!113116 ((as const (Array tuple2!3230 Bool)) false))))

(declare-fun b!171355 () Bool)

(assert (=> b!171355 (= e!113116 ((_ map or) (store ((as const (Array tuple2!3230 Bool)) false) (h!2826 (toList!1101 lt!85193)) true) (content!146 (t!7023 (toList!1101 lt!85193)))))))

(assert (= (and d!51911 c!30604) b!171354))

(assert (= (and d!51911 (not c!30604)) b!171355))

(declare-fun m!199947 () Bool)

(assert (=> b!171355 m!199947))

(declare-fun m!199949 () Bool)

(assert (=> b!171355 m!199949))

(assert (=> d!51739 d!51911))

(declare-fun d!51913 () Bool)

(declare-fun lt!85379 () Bool)

(assert (=> d!51913 (= lt!85379 (select (content!146 (toList!1101 lt!85362)) (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))

(declare-fun e!113118 () Bool)

(assert (=> d!51913 (= lt!85379 e!113118)))

(declare-fun res!81466 () Bool)

(assert (=> d!51913 (=> (not res!81466) (not e!113118))))

(assert (=> d!51913 (= res!81466 ((_ is Cons!2209) (toList!1101 lt!85362)))))

(assert (=> d!51913 (= (contains!1145 (toList!1101 lt!85362) (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) lt!85379)))

(declare-fun b!171356 () Bool)

(declare-fun e!113117 () Bool)

(assert (=> b!171356 (= e!113118 e!113117)))

(declare-fun res!81467 () Bool)

(assert (=> b!171356 (=> res!81467 e!113117)))

(assert (=> b!171356 (= res!81467 (= (h!2826 (toList!1101 lt!85362)) (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))

(declare-fun b!171357 () Bool)

(assert (=> b!171357 (= e!113117 (contains!1145 (t!7023 (toList!1101 lt!85362)) (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))

(assert (= (and d!51913 res!81466) b!171356))

(assert (= (and b!171356 (not res!81467)) b!171357))

(declare-fun m!199951 () Bool)

(assert (=> d!51913 m!199951))

(declare-fun m!199953 () Bool)

(assert (=> d!51913 m!199953))

(declare-fun m!199955 () Bool)

(assert (=> b!171357 m!199955))

(assert (=> b!171272 d!51913))

(declare-fun d!51915 () Bool)

(assert (=> d!51915 (= (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))) lt!85159)) (v!3910 (getValueByKey!183 (toList!1101 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))) lt!85159)))))

(assert (=> d!51833 d!51915))

(declare-fun b!171359 () Bool)

(declare-fun e!113119 () Option!189)

(declare-fun e!113120 () Option!189)

(assert (=> b!171359 (= e!113119 e!113120)))

(declare-fun c!30606 () Bool)

(assert (=> b!171359 (= c!30606 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))) (not (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))) lt!85159))))))

(declare-fun b!171360 () Bool)

(assert (=> b!171360 (= e!113120 (getValueByKey!183 (t!7023 (toList!1101 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))) lt!85159))))

(declare-fun d!51917 () Bool)

(declare-fun c!30605 () Bool)

(assert (=> d!51917 (= c!30605 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))) (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))) lt!85159)))))

(assert (=> d!51917 (= (getValueByKey!183 (toList!1101 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))) lt!85159) e!113119)))

(declare-fun b!171361 () Bool)

(assert (=> b!171361 (= e!113120 None!187)))

(declare-fun b!171358 () Bool)

(assert (=> b!171358 (= e!113119 (Some!188 (_2!1625 (h!2826 (toList!1101 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))))))

(assert (= (and d!51917 c!30605) b!171358))

(assert (= (and d!51917 (not c!30605)) b!171359))

(assert (= (and b!171359 c!30606) b!171360))

(assert (= (and b!171359 (not c!30606)) b!171361))

(declare-fun m!199957 () Bool)

(assert (=> b!171360 m!199957))

(assert (=> d!51833 d!51917))

(declare-fun d!51919 () Bool)

(declare-fun lt!85380 () Bool)

(assert (=> d!51919 (= lt!85380 (select (content!146 (toList!1101 lt!85254)) (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun e!113122 () Bool)

(assert (=> d!51919 (= lt!85380 e!113122)))

(declare-fun res!81468 () Bool)

(assert (=> d!51919 (=> (not res!81468) (not e!113122))))

(assert (=> d!51919 (= res!81468 ((_ is Cons!2209) (toList!1101 lt!85254)))))

(assert (=> d!51919 (= (contains!1145 (toList!1101 lt!85254) (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) lt!85380)))

(declare-fun b!171362 () Bool)

(declare-fun e!113121 () Bool)

(assert (=> b!171362 (= e!113122 e!113121)))

(declare-fun res!81469 () Bool)

(assert (=> b!171362 (=> res!81469 e!113121)))

(assert (=> b!171362 (= res!81469 (= (h!2826 (toList!1101 lt!85254)) (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun b!171363 () Bool)

(assert (=> b!171363 (= e!113121 (contains!1145 (t!7023 (toList!1101 lt!85254)) (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (= (and d!51919 res!81468) b!171362))

(assert (= (and b!171362 (not res!81469)) b!171363))

(declare-fun m!199959 () Bool)

(assert (=> d!51919 m!199959))

(declare-fun m!199961 () Bool)

(assert (=> d!51919 m!199961))

(declare-fun m!199963 () Bool)

(assert (=> b!171363 m!199963))

(assert (=> b!171116 d!51919))

(declare-fun d!51921 () Bool)

(declare-fun e!113124 () Bool)

(assert (=> d!51921 e!113124))

(declare-fun res!81470 () Bool)

(assert (=> d!51921 (=> res!81470 e!113124)))

(declare-fun lt!85383 () Bool)

(assert (=> d!51921 (= res!81470 (not lt!85383))))

(declare-fun lt!85381 () Bool)

(assert (=> d!51921 (= lt!85383 lt!85381)))

(declare-fun lt!85382 () Unit!5249)

(declare-fun e!113123 () Unit!5249)

(assert (=> d!51921 (= lt!85382 e!113123)))

(declare-fun c!30607 () Bool)

(assert (=> d!51921 (= c!30607 lt!85381)))

(assert (=> d!51921 (= lt!85381 (containsKey!187 (toList!1101 lt!85342) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (=> d!51921 (= (contains!1143 lt!85342 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) lt!85383)))

(declare-fun b!171364 () Bool)

(declare-fun lt!85384 () Unit!5249)

(assert (=> b!171364 (= e!113123 lt!85384)))

(assert (=> b!171364 (= lt!85384 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85342) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (=> b!171364 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85342) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun b!171365 () Bool)

(declare-fun Unit!5265 () Unit!5249)

(assert (=> b!171365 (= e!113123 Unit!5265)))

(declare-fun b!171366 () Bool)

(assert (=> b!171366 (= e!113124 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85342) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (= (and d!51921 c!30607) b!171364))

(assert (= (and d!51921 (not c!30607)) b!171365))

(assert (= (and d!51921 (not res!81470)) b!171366))

(declare-fun m!199965 () Bool)

(assert (=> d!51921 m!199965))

(declare-fun m!199967 () Bool)

(assert (=> b!171364 m!199967))

(assert (=> b!171364 m!199773))

(assert (=> b!171364 m!199773))

(declare-fun m!199969 () Bool)

(assert (=> b!171364 m!199969))

(assert (=> b!171366 m!199773))

(assert (=> b!171366 m!199773))

(assert (=> b!171366 m!199969))

(assert (=> d!51817 d!51921))

(declare-fun b!171368 () Bool)

(declare-fun e!113125 () Option!189)

(declare-fun e!113126 () Option!189)

(assert (=> b!171368 (= e!113125 e!113126)))

(declare-fun c!30609 () Bool)

(assert (=> b!171368 (= c!30609 (and ((_ is Cons!2209) lt!85343) (not (= (_1!1625 (h!2826 lt!85343)) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171369 () Bool)

(assert (=> b!171369 (= e!113126 (getValueByKey!183 (t!7023 lt!85343) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun d!51923 () Bool)

(declare-fun c!30608 () Bool)

(assert (=> d!51923 (= c!30608 (and ((_ is Cons!2209) lt!85343) (= (_1!1625 (h!2826 lt!85343)) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!51923 (= (getValueByKey!183 lt!85343 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) e!113125)))

(declare-fun b!171370 () Bool)

(assert (=> b!171370 (= e!113126 None!187)))

(declare-fun b!171367 () Bool)

(assert (=> b!171367 (= e!113125 (Some!188 (_2!1625 (h!2826 lt!85343))))))

(assert (= (and d!51923 c!30608) b!171367))

(assert (= (and d!51923 (not c!30608)) b!171368))

(assert (= (and b!171368 c!30609) b!171369))

(assert (= (and b!171368 (not c!30609)) b!171370))

(declare-fun m!199971 () Bool)

(assert (=> b!171369 m!199971))

(assert (=> d!51817 d!51923))

(declare-fun d!51925 () Bool)

(assert (=> d!51925 (= (getValueByKey!183 lt!85343 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun lt!85385 () Unit!5249)

(assert (=> d!51925 (= lt!85385 (choose!932 lt!85343 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun e!113127 () Bool)

(assert (=> d!51925 e!113127))

(declare-fun res!81471 () Bool)

(assert (=> d!51925 (=> (not res!81471) (not e!113127))))

(assert (=> d!51925 (= res!81471 (isStrictlySorted!326 lt!85343))))

(assert (=> d!51925 (= (lemmaContainsTupThenGetReturnValue!98 lt!85343 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) lt!85385)))

(declare-fun b!171371 () Bool)

(declare-fun res!81472 () Bool)

(assert (=> b!171371 (=> (not res!81472) (not e!113127))))

(assert (=> b!171371 (= res!81472 (containsKey!187 lt!85343 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun b!171372 () Bool)

(assert (=> b!171372 (= e!113127 (contains!1145 lt!85343 (tuple2!3231 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (= (and d!51925 res!81471) b!171371))

(assert (= (and b!171371 res!81472) b!171372))

(assert (=> d!51925 m!199767))

(declare-fun m!199973 () Bool)

(assert (=> d!51925 m!199973))

(declare-fun m!199975 () Bool)

(assert (=> d!51925 m!199975))

(declare-fun m!199977 () Bool)

(assert (=> b!171371 m!199977))

(declare-fun m!199979 () Bool)

(assert (=> b!171372 m!199979))

(assert (=> d!51817 d!51925))

(declare-fun b!171373 () Bool)

(declare-fun e!113128 () List!2213)

(declare-fun call!17452 () List!2213)

(assert (=> b!171373 (= e!113128 call!17452)))

(declare-fun b!171374 () Bool)

(declare-fun res!81474 () Bool)

(declare-fun e!113132 () Bool)

(assert (=> b!171374 (=> (not res!81474) (not e!113132))))

(declare-fun lt!85386 () List!2213)

(assert (=> b!171374 (= res!81474 (containsKey!187 lt!85386 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun b!171375 () Bool)

(declare-fun e!113131 () List!2213)

(declare-fun e!113129 () List!2213)

(assert (=> b!171375 (= e!113131 e!113129)))

(declare-fun c!30611 () Bool)

(assert (=> b!171375 (= c!30611 (and ((_ is Cons!2209) (toList!1101 call!17404)) (= (_1!1625 (h!2826 (toList!1101 call!17404))) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun b!171376 () Bool)

(declare-fun c!30612 () Bool)

(declare-fun e!113130 () List!2213)

(assert (=> b!171376 (= e!113130 (ite c!30611 (t!7023 (toList!1101 call!17404)) (ite c!30612 (Cons!2209 (h!2826 (toList!1101 call!17404)) (t!7023 (toList!1101 call!17404))) Nil!2210)))))

(declare-fun b!171377 () Bool)

(assert (=> b!171377 (= e!113132 (contains!1145 lt!85386 (tuple2!3231 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun b!171378 () Bool)

(declare-fun call!17451 () List!2213)

(assert (=> b!171378 (= e!113131 call!17451)))

(declare-fun bm!17448 () Bool)

(declare-fun c!30613 () Bool)

(assert (=> bm!17448 (= call!17451 ($colon$colon!96 e!113130 (ite c!30613 (h!2826 (toList!1101 call!17404)) (tuple2!3231 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(declare-fun c!30610 () Bool)

(assert (=> bm!17448 (= c!30610 c!30613)))

(declare-fun bm!17450 () Bool)

(declare-fun call!17453 () List!2213)

(assert (=> bm!17450 (= call!17452 call!17453)))

(declare-fun b!171379 () Bool)

(assert (=> b!171379 (= e!113129 call!17453)))

(declare-fun b!171380 () Bool)

(assert (=> b!171380 (= e!113128 call!17452)))

(declare-fun b!171381 () Bool)

(assert (=> b!171381 (= c!30612 (and ((_ is Cons!2209) (toList!1101 call!17404)) (bvsgt (_1!1625 (h!2826 (toList!1101 call!17404))) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> b!171381 (= e!113129 e!113128)))

(declare-fun b!171382 () Bool)

(assert (=> b!171382 (= e!113130 (insertStrictlySorted!100 (t!7023 (toList!1101 call!17404)) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun bm!17449 () Bool)

(assert (=> bm!17449 (= call!17453 call!17451)))

(declare-fun d!51927 () Bool)

(assert (=> d!51927 e!113132))

(declare-fun res!81473 () Bool)

(assert (=> d!51927 (=> (not res!81473) (not e!113132))))

(assert (=> d!51927 (= res!81473 (isStrictlySorted!326 lt!85386))))

(assert (=> d!51927 (= lt!85386 e!113131)))

(assert (=> d!51927 (= c!30613 (and ((_ is Cons!2209) (toList!1101 call!17404)) (bvslt (_1!1625 (h!2826 (toList!1101 call!17404))) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!51927 (isStrictlySorted!326 (toList!1101 call!17404))))

(assert (=> d!51927 (= (insertStrictlySorted!100 (toList!1101 call!17404) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) lt!85386)))

(assert (= (and d!51927 c!30613) b!171378))

(assert (= (and d!51927 (not c!30613)) b!171375))

(assert (= (and b!171375 c!30611) b!171379))

(assert (= (and b!171375 (not c!30611)) b!171381))

(assert (= (and b!171381 c!30612) b!171380))

(assert (= (and b!171381 (not c!30612)) b!171373))

(assert (= (or b!171380 b!171373) bm!17450))

(assert (= (or b!171379 bm!17450) bm!17449))

(assert (= (or b!171378 bm!17449) bm!17448))

(assert (= (and bm!17448 c!30610) b!171382))

(assert (= (and bm!17448 (not c!30610)) b!171376))

(assert (= (and d!51927 res!81473) b!171374))

(assert (= (and b!171374 res!81474) b!171377))

(declare-fun m!199981 () Bool)

(assert (=> b!171374 m!199981))

(declare-fun m!199983 () Bool)

(assert (=> d!51927 m!199983))

(declare-fun m!199985 () Bool)

(assert (=> d!51927 m!199985))

(declare-fun m!199987 () Bool)

(assert (=> b!171382 m!199987))

(declare-fun m!199989 () Bool)

(assert (=> b!171377 m!199989))

(declare-fun m!199991 () Bool)

(assert (=> bm!17448 m!199991))

(assert (=> d!51817 d!51927))

(declare-fun d!51929 () Bool)

(declare-fun e!113134 () Bool)

(assert (=> d!51929 e!113134))

(declare-fun res!81475 () Bool)

(assert (=> d!51929 (=> res!81475 e!113134)))

(declare-fun lt!85389 () Bool)

(assert (=> d!51929 (= res!81475 (not lt!85389))))

(declare-fun lt!85387 () Bool)

(assert (=> d!51929 (= lt!85389 lt!85387)))

(declare-fun lt!85388 () Unit!5249)

(declare-fun e!113133 () Unit!5249)

(assert (=> d!51929 (= lt!85388 e!113133)))

(declare-fun c!30614 () Bool)

(assert (=> d!51929 (= c!30614 lt!85387)))

(assert (=> d!51929 (= lt!85387 (containsKey!187 (toList!1101 lt!85366) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(assert (=> d!51929 (= (contains!1143 lt!85366 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85389)))

(declare-fun b!171383 () Bool)

(declare-fun lt!85390 () Unit!5249)

(assert (=> b!171383 (= e!113133 lt!85390)))

(assert (=> b!171383 (= lt!85390 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85366) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(assert (=> b!171383 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85366) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(declare-fun b!171384 () Bool)

(declare-fun Unit!5266 () Unit!5249)

(assert (=> b!171384 (= e!113133 Unit!5266)))

(declare-fun b!171385 () Bool)

(assert (=> b!171385 (= e!113134 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85366) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))))

(assert (= (and d!51929 c!30614) b!171383))

(assert (= (and d!51929 (not c!30614)) b!171384))

(assert (= (and d!51929 (not res!81475)) b!171385))

(declare-fun m!199993 () Bool)

(assert (=> d!51929 m!199993))

(declare-fun m!199995 () Bool)

(assert (=> b!171383 m!199995))

(assert (=> b!171383 m!199869))

(assert (=> b!171383 m!199869))

(declare-fun m!199997 () Bool)

(assert (=> b!171383 m!199997))

(assert (=> b!171385 m!199869))

(assert (=> b!171385 m!199869))

(assert (=> b!171385 m!199997))

(assert (=> d!51847 d!51929))

(declare-fun b!171387 () Bool)

(declare-fun e!113135 () Option!189)

(declare-fun e!113136 () Option!189)

(assert (=> b!171387 (= e!113135 e!113136)))

(declare-fun c!30616 () Bool)

(assert (=> b!171387 (= c!30616 (and ((_ is Cons!2209) lt!85367) (not (= (_1!1625 (h!2826 lt!85367)) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))))

(declare-fun b!171388 () Bool)

(assert (=> b!171388 (= e!113136 (getValueByKey!183 (t!7023 lt!85367) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(declare-fun d!51931 () Bool)

(declare-fun c!30615 () Bool)

(assert (=> d!51931 (= c!30615 (and ((_ is Cons!2209) lt!85367) (= (_1!1625 (h!2826 lt!85367)) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))))

(assert (=> d!51931 (= (getValueByKey!183 lt!85367 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) e!113135)))

(declare-fun b!171389 () Bool)

(assert (=> b!171389 (= e!113136 None!187)))

(declare-fun b!171386 () Bool)

(assert (=> b!171386 (= e!113135 (Some!188 (_2!1625 (h!2826 lt!85367))))))

(assert (= (and d!51931 c!30615) b!171386))

(assert (= (and d!51931 (not c!30615)) b!171387))

(assert (= (and b!171387 c!30616) b!171388))

(assert (= (and b!171387 (not c!30616)) b!171389))

(declare-fun m!199999 () Bool)

(assert (=> b!171388 m!199999))

(assert (=> d!51847 d!51931))

(declare-fun d!51933 () Bool)

(assert (=> d!51933 (= (getValueByKey!183 lt!85367 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(declare-fun lt!85391 () Unit!5249)

(assert (=> d!51933 (= lt!85391 (choose!932 lt!85367 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(declare-fun e!113137 () Bool)

(assert (=> d!51933 e!113137))

(declare-fun res!81476 () Bool)

(assert (=> d!51933 (=> (not res!81476) (not e!113137))))

(assert (=> d!51933 (= res!81476 (isStrictlySorted!326 lt!85367))))

(assert (=> d!51933 (= (lemmaContainsTupThenGetReturnValue!98 lt!85367 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85391)))

(declare-fun b!171390 () Bool)

(declare-fun res!81477 () Bool)

(assert (=> b!171390 (=> (not res!81477) (not e!113137))))

(assert (=> b!171390 (= res!81477 (containsKey!187 lt!85367 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(declare-fun b!171391 () Bool)

(assert (=> b!171391 (= e!113137 (contains!1145 lt!85367 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))))

(assert (= (and d!51933 res!81476) b!171390))

(assert (= (and b!171390 res!81477) b!171391))

(assert (=> d!51933 m!199863))

(declare-fun m!200001 () Bool)

(assert (=> d!51933 m!200001))

(declare-fun m!200003 () Bool)

(assert (=> d!51933 m!200003))

(declare-fun m!200005 () Bool)

(assert (=> b!171390 m!200005))

(declare-fun m!200007 () Bool)

(assert (=> b!171391 m!200007))

(assert (=> d!51847 d!51933))

(declare-fun b!171392 () Bool)

(declare-fun e!113138 () List!2213)

(declare-fun call!17455 () List!2213)

(assert (=> b!171392 (= e!113138 call!17455)))

(declare-fun b!171393 () Bool)

(declare-fun res!81479 () Bool)

(declare-fun e!113142 () Bool)

(assert (=> b!171393 (=> (not res!81479) (not e!113142))))

(declare-fun lt!85392 () List!2213)

(assert (=> b!171393 (= res!81479 (containsKey!187 lt!85392 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(declare-fun b!171394 () Bool)

(declare-fun e!113141 () List!2213)

(declare-fun e!113139 () List!2213)

(assert (=> b!171394 (= e!113141 e!113139)))

(declare-fun c!30618 () Bool)

(assert (=> b!171394 (= c!30618 (and ((_ is Cons!2209) (toList!1101 lt!85166)) (= (_1!1625 (h!2826 (toList!1101 lt!85166))) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))))

(declare-fun b!171395 () Bool)

(declare-fun c!30619 () Bool)

(declare-fun e!113140 () List!2213)

(assert (=> b!171395 (= e!113140 (ite c!30618 (t!7023 (toList!1101 lt!85166)) (ite c!30619 (Cons!2209 (h!2826 (toList!1101 lt!85166)) (t!7023 (toList!1101 lt!85166))) Nil!2210)))))

(declare-fun b!171396 () Bool)

(assert (=> b!171396 (= e!113142 (contains!1145 lt!85392 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))))

(declare-fun b!171397 () Bool)

(declare-fun call!17454 () List!2213)

(assert (=> b!171397 (= e!113141 call!17454)))

(declare-fun bm!17451 () Bool)

(declare-fun c!30620 () Bool)

(assert (=> bm!17451 (= call!17454 ($colon$colon!96 e!113140 (ite c!30620 (h!2826 (toList!1101 lt!85166)) (tuple2!3231 (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))))

(declare-fun c!30617 () Bool)

(assert (=> bm!17451 (= c!30617 c!30620)))

(declare-fun bm!17453 () Bool)

(declare-fun call!17456 () List!2213)

(assert (=> bm!17453 (= call!17455 call!17456)))

(declare-fun b!171398 () Bool)

(assert (=> b!171398 (= e!113139 call!17456)))

(declare-fun b!171399 () Bool)

(assert (=> b!171399 (= e!113138 call!17455)))

(declare-fun b!171400 () Bool)

(assert (=> b!171400 (= c!30619 (and ((_ is Cons!2209) (toList!1101 lt!85166)) (bvsgt (_1!1625 (h!2826 (toList!1101 lt!85166))) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))))

(assert (=> b!171400 (= e!113139 e!113138)))

(declare-fun b!171401 () Bool)

(assert (=> b!171401 (= e!113140 (insertStrictlySorted!100 (t!7023 (toList!1101 lt!85166)) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(declare-fun bm!17452 () Bool)

(assert (=> bm!17452 (= call!17456 call!17454)))

(declare-fun d!51935 () Bool)

(assert (=> d!51935 e!113142))

(declare-fun res!81478 () Bool)

(assert (=> d!51935 (=> (not res!81478) (not e!113142))))

(assert (=> d!51935 (= res!81478 (isStrictlySorted!326 lt!85392))))

(assert (=> d!51935 (= lt!85392 e!113141)))

(assert (=> d!51935 (= c!30620 (and ((_ is Cons!2209) (toList!1101 lt!85166)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85166))) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))))

(assert (=> d!51935 (isStrictlySorted!326 (toList!1101 lt!85166))))

(assert (=> d!51935 (= (insertStrictlySorted!100 (toList!1101 lt!85166) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85392)))

(assert (= (and d!51935 c!30620) b!171397))

(assert (= (and d!51935 (not c!30620)) b!171394))

(assert (= (and b!171394 c!30618) b!171398))

(assert (= (and b!171394 (not c!30618)) b!171400))

(assert (= (and b!171400 c!30619) b!171399))

(assert (= (and b!171400 (not c!30619)) b!171392))

(assert (= (or b!171399 b!171392) bm!17453))

(assert (= (or b!171398 bm!17453) bm!17452))

(assert (= (or b!171397 bm!17452) bm!17451))

(assert (= (and bm!17451 c!30617) b!171401))

(assert (= (and bm!17451 (not c!30617)) b!171395))

(assert (= (and d!51935 res!81478) b!171393))

(assert (= (and b!171393 res!81479) b!171396))

(declare-fun m!200009 () Bool)

(assert (=> b!171393 m!200009))

(declare-fun m!200011 () Bool)

(assert (=> d!51935 m!200011))

(declare-fun m!200013 () Bool)

(assert (=> d!51935 m!200013))

(declare-fun m!200015 () Bool)

(assert (=> b!171401 m!200015))

(declare-fun m!200017 () Bool)

(assert (=> b!171396 m!200017))

(declare-fun m!200019 () Bool)

(assert (=> bm!17451 m!200019))

(assert (=> d!51847 d!51935))

(declare-fun d!51937 () Bool)

(assert (=> d!51937 (= (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309))) lt!85138)) (v!3910 (getValueByKey!183 (toList!1101 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309))) lt!85138)))))

(assert (=> d!51805 d!51937))

(declare-fun b!171403 () Bool)

(declare-fun e!113143 () Option!189)

(declare-fun e!113144 () Option!189)

(assert (=> b!171403 (= e!113143 e!113144)))

(declare-fun c!30622 () Bool)

(assert (=> b!171403 (= c!30622 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309)))) (not (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309))))) lt!85138))))))

(declare-fun b!171404 () Bool)

(assert (=> b!171404 (= e!113144 (getValueByKey!183 (t!7023 (toList!1101 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309)))) lt!85138))))

(declare-fun d!51939 () Bool)

(declare-fun c!30621 () Bool)

(assert (=> d!51939 (= c!30621 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309)))) (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309))))) lt!85138)))))

(assert (=> d!51939 (= (getValueByKey!183 (toList!1101 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309))) lt!85138) e!113143)))

(declare-fun b!171405 () Bool)

(assert (=> b!171405 (= e!113144 None!187)))

(declare-fun b!171402 () Bool)

(assert (=> b!171402 (= e!113143 (Some!188 (_2!1625 (h!2826 (toList!1101 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309)))))))))

(assert (= (and d!51939 c!30621) b!171402))

(assert (= (and d!51939 (not c!30621)) b!171403))

(assert (= (and b!171403 c!30622) b!171404))

(assert (= (and b!171403 (not c!30622)) b!171405))

(declare-fun m!200021 () Bool)

(assert (=> b!171404 m!200021))

(assert (=> d!51805 d!51939))

(declare-fun d!51941 () Bool)

(assert (=> d!51941 (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85149))))

(declare-fun lt!85393 () Unit!5249)

(assert (=> d!51941 (= lt!85393 (choose!931 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85149))))

(declare-fun e!113145 () Bool)

(assert (=> d!51941 e!113145))

(declare-fun res!81480 () Bool)

(assert (=> d!51941 (=> (not res!81480) (not e!113145))))

(assert (=> d!51941 (= res!81480 (isStrictlySorted!326 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))))

(assert (=> d!51941 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85149) lt!85393)))

(declare-fun b!171406 () Bool)

(assert (=> b!171406 (= e!113145 (containsKey!187 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85149))))

(assert (= (and d!51941 res!81480) b!171406))

(assert (=> d!51941 m!199789))

(assert (=> d!51941 m!199789))

(assert (=> d!51941 m!199791))

(declare-fun m!200023 () Bool)

(assert (=> d!51941 m!200023))

(declare-fun m!200025 () Bool)

(assert (=> d!51941 m!200025))

(assert (=> b!171406 m!199785))

(assert (=> b!171261 d!51941))

(declare-fun d!51943 () Bool)

(assert (=> d!51943 (= (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85149)) (not (isEmpty!438 (getValueByKey!183 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85149))))))

(declare-fun bs!7076 () Bool)

(assert (= bs!7076 d!51943))

(assert (=> bs!7076 m!199789))

(declare-fun m!200027 () Bool)

(assert (=> bs!7076 m!200027))

(assert (=> b!171261 d!51943))

(declare-fun b!171408 () Bool)

(declare-fun e!113146 () Option!189)

(declare-fun e!113147 () Option!189)

(assert (=> b!171408 (= e!113146 e!113147)))

(declare-fun c!30624 () Bool)

(assert (=> b!171408 (= c!30624 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))) (not (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))) lt!85149))))))

(declare-fun b!171409 () Bool)

(assert (=> b!171409 (= e!113147 (getValueByKey!183 (t!7023 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))) lt!85149))))

(declare-fun c!30623 () Bool)

(declare-fun d!51945 () Bool)

(assert (=> d!51945 (= c!30623 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))) (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))) lt!85149)))))

(assert (=> d!51945 (= (getValueByKey!183 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) lt!85149) e!113146)))

(declare-fun b!171410 () Bool)

(assert (=> b!171410 (= e!113147 None!187)))

(declare-fun b!171407 () Bool)

(assert (=> b!171407 (= e!113146 (Some!188 (_2!1625 (h!2826 (toList!1101 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))))))

(assert (= (and d!51945 c!30623) b!171407))

(assert (= (and d!51945 (not c!30623)) b!171408))

(assert (= (and b!171408 c!30624) b!171409))

(assert (= (and b!171408 (not c!30624)) b!171410))

(declare-fun m!200029 () Bool)

(assert (=> b!171409 m!200029))

(assert (=> b!171261 d!51945))

(declare-fun d!51947 () Bool)

(assert (=> d!51947 (= (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!171207 d!51947))

(declare-fun b!171411 () Bool)

(declare-fun e!113150 () Bool)

(declare-fun e!113148 () Bool)

(assert (=> b!171411 (= e!113150 e!113148)))

(declare-fun c!30625 () Bool)

(assert (=> b!171411 (= c!30625 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!51949 () Bool)

(declare-fun res!81482 () Bool)

(assert (=> d!51949 (=> res!81482 e!113150)))

(assert (=> d!51949 (= res!81482 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> d!51949 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5387 thiss!1248) (mask!8383 thiss!1248)) e!113150)))

(declare-fun bm!17454 () Bool)

(declare-fun call!17457 () Bool)

(assert (=> bm!17454 (= call!17457 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!5387 thiss!1248) (mask!8383 thiss!1248)))))

(declare-fun b!171412 () Bool)

(assert (=> b!171412 (= e!113148 call!17457)))

(declare-fun b!171413 () Bool)

(declare-fun e!113149 () Bool)

(assert (=> b!171413 (= e!113149 call!17457)))

(declare-fun b!171414 () Bool)

(assert (=> b!171414 (= e!113148 e!113149)))

(declare-fun lt!85396 () (_ BitVec 64))

(assert (=> b!171414 (= lt!85396 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!85394 () Unit!5249)

(assert (=> b!171414 (= lt!85394 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5387 thiss!1248) lt!85396 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!171414 (arrayContainsKey!0 (_keys!5387 thiss!1248) lt!85396 #b00000000000000000000000000000000)))

(declare-fun lt!85395 () Unit!5249)

(assert (=> b!171414 (= lt!85395 lt!85394)))

(declare-fun res!81481 () Bool)

(assert (=> b!171414 (= res!81481 (= (seekEntryOrOpen!0 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!5387 thiss!1248) (mask!8383 thiss!1248)) (Found!544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!171414 (=> (not res!81481) (not e!113149))))

(assert (= (and d!51949 (not res!81482)) b!171411))

(assert (= (and b!171411 c!30625) b!171414))

(assert (= (and b!171411 (not c!30625)) b!171412))

(assert (= (and b!171414 res!81481) b!171413))

(assert (= (or b!171413 b!171412) bm!17454))

(declare-fun m!200031 () Bool)

(assert (=> b!171411 m!200031))

(assert (=> b!171411 m!200031))

(declare-fun m!200033 () Bool)

(assert (=> b!171411 m!200033))

(declare-fun m!200035 () Bool)

(assert (=> bm!17454 m!200035))

(assert (=> b!171414 m!200031))

(declare-fun m!200037 () Bool)

(assert (=> b!171414 m!200037))

(declare-fun m!200039 () Bool)

(assert (=> b!171414 m!200039))

(assert (=> b!171414 m!200031))

(declare-fun m!200041 () Bool)

(assert (=> b!171414 m!200041))

(assert (=> bm!17446 d!51949))

(declare-fun b!171416 () Bool)

(declare-fun e!113151 () Option!189)

(declare-fun e!113152 () Option!189)

(assert (=> b!171416 (= e!113151 e!113152)))

(declare-fun c!30627 () Bool)

(assert (=> b!171416 (= c!30627 (and ((_ is Cons!2209) (toList!1101 lt!85313)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85313))) (_1!1625 (tuple2!3231 lt!85129 v!309))))))))

(declare-fun b!171417 () Bool)

(assert (=> b!171417 (= e!113152 (getValueByKey!183 (t!7023 (toList!1101 lt!85313)) (_1!1625 (tuple2!3231 lt!85129 v!309))))))

(declare-fun c!30626 () Bool)

(declare-fun d!51951 () Bool)

(assert (=> d!51951 (= c!30626 (and ((_ is Cons!2209) (toList!1101 lt!85313)) (= (_1!1625 (h!2826 (toList!1101 lt!85313))) (_1!1625 (tuple2!3231 lt!85129 v!309)))))))

(assert (=> d!51951 (= (getValueByKey!183 (toList!1101 lt!85313) (_1!1625 (tuple2!3231 lt!85129 v!309))) e!113151)))

(declare-fun b!171418 () Bool)

(assert (=> b!171418 (= e!113152 None!187)))

(declare-fun b!171415 () Bool)

(assert (=> b!171415 (= e!113151 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85313)))))))

(assert (= (and d!51951 c!30626) b!171415))

(assert (= (and d!51951 (not c!30626)) b!171416))

(assert (= (and b!171416 c!30627) b!171417))

(assert (= (and b!171416 (not c!30627)) b!171418))

(declare-fun m!200043 () Bool)

(assert (=> b!171417 m!200043))

(assert (=> b!171238 d!51951))

(declare-fun d!51953 () Bool)

(declare-fun res!81483 () Bool)

(declare-fun e!113153 () Bool)

(assert (=> d!51953 (=> res!81483 e!113153)))

(assert (=> d!51953 (= res!81483 (and ((_ is Cons!2209) (toList!1101 lt!85152)) (= (_1!1625 (h!2826 (toList!1101 lt!85152))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!51953 (= (containsKey!187 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000) e!113153)))

(declare-fun b!171419 () Bool)

(declare-fun e!113154 () Bool)

(assert (=> b!171419 (= e!113153 e!113154)))

(declare-fun res!81484 () Bool)

(assert (=> b!171419 (=> (not res!81484) (not e!113154))))

(assert (=> b!171419 (= res!81484 (and (or (not ((_ is Cons!2209) (toList!1101 lt!85152))) (bvsle (_1!1625 (h!2826 (toList!1101 lt!85152))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!2209) (toList!1101 lt!85152)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85152))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!171420 () Bool)

(assert (=> b!171420 (= e!113154 (containsKey!187 (t!7023 (toList!1101 lt!85152)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!51953 (not res!81483)) b!171419))

(assert (= (and b!171419 res!81484) b!171420))

(declare-fun m!200045 () Bool)

(assert (=> b!171420 m!200045))

(assert (=> d!51727 d!51953))

(assert (=> d!51759 d!51757))

(declare-fun d!51955 () Bool)

(assert (=> d!51955 (= (getValueByKey!183 lt!85178 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) (Some!188 (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> d!51955 true))

(declare-fun _$22!531 () Unit!5249)

(assert (=> d!51955 (= (choose!932 lt!85178 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) _$22!531)))

(declare-fun bs!7077 () Bool)

(assert (= bs!7077 d!51955))

(assert (=> bs!7077 m!199339))

(assert (=> d!51759 d!51955))

(declare-fun d!51957 () Bool)

(declare-fun res!81485 () Bool)

(declare-fun e!113155 () Bool)

(assert (=> d!51957 (=> res!81485 e!113155)))

(assert (=> d!51957 (= res!81485 (or ((_ is Nil!2210) lt!85178) ((_ is Nil!2210) (t!7023 lt!85178))))))

(assert (=> d!51957 (= (isStrictlySorted!326 lt!85178) e!113155)))

(declare-fun b!171421 () Bool)

(declare-fun e!113156 () Bool)

(assert (=> b!171421 (= e!113155 e!113156)))

(declare-fun res!81486 () Bool)

(assert (=> b!171421 (=> (not res!81486) (not e!113156))))

(assert (=> b!171421 (= res!81486 (bvslt (_1!1625 (h!2826 lt!85178)) (_1!1625 (h!2826 (t!7023 lt!85178)))))))

(declare-fun b!171422 () Bool)

(assert (=> b!171422 (= e!113156 (isStrictlySorted!326 (t!7023 lt!85178)))))

(assert (= (and d!51957 (not res!81485)) b!171421))

(assert (= (and b!171421 res!81486) b!171422))

(declare-fun m!200047 () Bool)

(assert (=> b!171422 m!200047))

(assert (=> d!51759 d!51957))

(declare-fun d!51959 () Bool)

(assert (=> d!51959 (= (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))) lt!85124)) (not (isEmpty!438 (getValueByKey!183 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))) lt!85124))))))

(declare-fun bs!7078 () Bool)

(assert (= bs!7078 d!51959))

(assert (=> bs!7078 m!199695))

(declare-fun m!200049 () Bool)

(assert (=> bs!7078 m!200049))

(assert (=> b!171243 d!51959))

(declare-fun b!171424 () Bool)

(declare-fun e!113157 () Option!189)

(declare-fun e!113158 () Option!189)

(assert (=> b!171424 (= e!113157 e!113158)))

(declare-fun c!30629 () Bool)

(assert (=> b!171424 (= c!30629 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)))) (not (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))))) lt!85124))))))

(declare-fun b!171425 () Bool)

(assert (=> b!171425 (= e!113158 (getValueByKey!183 (t!7023 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)))) lt!85124))))

(declare-fun c!30628 () Bool)

(declare-fun d!51961 () Bool)

(assert (=> d!51961 (= c!30628 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)))) (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))))) lt!85124)))))

(assert (=> d!51961 (= (getValueByKey!183 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))) lt!85124) e!113157)))

(declare-fun b!171426 () Bool)

(assert (=> b!171426 (= e!113158 None!187)))

(declare-fun b!171423 () Bool)

(assert (=> b!171423 (= e!113157 (Some!188 (_2!1625 (h!2826 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)))))))))

(assert (= (and d!51961 c!30628) b!171423))

(assert (= (and d!51961 (not c!30628)) b!171424))

(assert (= (and b!171424 c!30629) b!171425))

(assert (= (and b!171424 (not c!30629)) b!171426))

(declare-fun m!200051 () Bool)

(assert (=> b!171425 m!200051))

(assert (=> b!171243 d!51961))

(assert (=> d!51729 d!51695))

(assert (=> d!51729 d!51693))

(assert (=> d!51729 d!51687))

(assert (=> b!171155 d!51947))

(declare-fun d!51963 () Bool)

(assert (=> d!51963 (= (apply!129 lt!85292 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1940 (getValueByKey!183 (toList!1101 lt!85292) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7079 () Bool)

(assert (= bs!7079 d!51963))

(declare-fun m!200053 () Bool)

(assert (=> bs!7079 m!200053))

(assert (=> bs!7079 m!200053))

(declare-fun m!200055 () Bool)

(assert (=> bs!7079 m!200055))

(assert (=> b!171216 d!51963))

(declare-fun d!51965 () Bool)

(declare-fun isEmpty!440 (List!2213) Bool)

(assert (=> d!51965 (= (isEmpty!439 lt!85261) (isEmpty!440 (toList!1101 lt!85261)))))

(declare-fun bs!7080 () Bool)

(assert (= bs!7080 d!51965))

(declare-fun m!200057 () Bool)

(assert (=> bs!7080 m!200057))

(assert (=> b!171125 d!51965))

(declare-fun d!51967 () Bool)

(assert (=> d!51967 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!85397 () Unit!5249)

(assert (=> d!51967 (= lt!85397 (choose!931 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!113159 () Bool)

(assert (=> d!51967 e!113159))

(declare-fun res!81487 () Bool)

(assert (=> d!51967 (=> (not res!81487) (not e!113159))))

(assert (=> d!51967 (= res!81487 (isStrictlySorted!326 (toList!1101 lt!85127)))))

(assert (=> d!51967 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000) lt!85397)))

(declare-fun b!171427 () Bool)

(assert (=> b!171427 (= e!113159 (containsKey!187 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!51967 res!81487) b!171427))

(assert (=> d!51967 m!199751))

(assert (=> d!51967 m!199751))

(assert (=> d!51967 m!199753))

(declare-fun m!200059 () Bool)

(assert (=> d!51967 m!200059))

(declare-fun m!200061 () Bool)

(assert (=> d!51967 m!200061))

(assert (=> b!171427 m!199747))

(assert (=> b!171254 d!51967))

(declare-fun d!51969 () Bool)

(assert (=> d!51969 (= (isDefined!137 (getValueByKey!183 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!438 (getValueByKey!183 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!7081 () Bool)

(assert (= bs!7081 d!51969))

(assert (=> bs!7081 m!199751))

(declare-fun m!200063 () Bool)

(assert (=> bs!7081 m!200063))

(assert (=> b!171254 d!51969))

(declare-fun b!171429 () Bool)

(declare-fun e!113160 () Option!189)

(declare-fun e!113161 () Option!189)

(assert (=> b!171429 (= e!113160 e!113161)))

(declare-fun c!30631 () Bool)

(assert (=> b!171429 (= c!30631 (and ((_ is Cons!2209) (toList!1101 lt!85127)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85127))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!171430 () Bool)

(assert (=> b!171430 (= e!113161 (getValueByKey!183 (t!7023 (toList!1101 lt!85127)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!51971 () Bool)

(declare-fun c!30630 () Bool)

(assert (=> d!51971 (= c!30630 (and ((_ is Cons!2209) (toList!1101 lt!85127)) (= (_1!1625 (h!2826 (toList!1101 lt!85127))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!51971 (= (getValueByKey!183 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000) e!113160)))

(declare-fun b!171431 () Bool)

(assert (=> b!171431 (= e!113161 None!187)))

(declare-fun b!171428 () Bool)

(assert (=> b!171428 (= e!113160 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85127)))))))

(assert (= (and d!51971 c!30630) b!171428))

(assert (= (and d!51971 (not c!30630)) b!171429))

(assert (= (and b!171429 c!30631) b!171430))

(assert (= (and b!171429 (not c!30631)) b!171431))

(declare-fun m!200065 () Bool)

(assert (=> b!171430 m!200065))

(assert (=> b!171254 d!51971))

(declare-fun d!51973 () Bool)

(assert (=> d!51973 (= (apply!129 lt!85292 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)) (get!1940 (getValueByKey!183 (toList!1101 lt!85292) (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000))))))

(declare-fun bs!7082 () Bool)

(assert (= bs!7082 d!51973))

(assert (=> bs!7082 m!199523))

(declare-fun m!200067 () Bool)

(assert (=> bs!7082 m!200067))

(assert (=> bs!7082 m!200067))

(declare-fun m!200069 () Bool)

(assert (=> bs!7082 m!200069))

(assert (=> b!171233 d!51973))

(declare-fun d!51975 () Bool)

(declare-fun c!30632 () Bool)

(assert (=> d!51975 (= c!30632 ((_ is ValueCellFull!1659) (select (arr!3389 (_values!3538 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun e!113162 () V!4987)

(assert (=> d!51975 (= (get!1939 (select (arr!3389 (_values!3538 lt!85067)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 lt!85067) #b0000000000000000000000000000000000000000000000000000000000000000)) e!113162)))

(declare-fun b!171432 () Bool)

(assert (=> b!171432 (= e!113162 (get!1941 (select (arr!3389 (_values!3538 lt!85067)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 lt!85067) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!171433 () Bool)

(assert (=> b!171433 (= e!113162 (get!1942 (select (arr!3389 (_values!3538 lt!85067)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 lt!85067) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!51975 c!30632) b!171432))

(assert (= (and d!51975 (not c!30632)) b!171433))

(assert (=> b!171432 m!199637))

(assert (=> b!171432 m!199639))

(declare-fun m!200071 () Bool)

(assert (=> b!171432 m!200071))

(assert (=> b!171433 m!199637))

(assert (=> b!171433 m!199639))

(declare-fun m!200073 () Bool)

(assert (=> b!171433 m!200073))

(assert (=> b!171233 d!51975))

(declare-fun lt!85398 () Bool)

(declare-fun d!51977 () Bool)

(assert (=> d!51977 (= lt!85398 (select (content!146 (toList!1101 lt!85366)) (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))

(declare-fun e!113164 () Bool)

(assert (=> d!51977 (= lt!85398 e!113164)))

(declare-fun res!81488 () Bool)

(assert (=> d!51977 (=> (not res!81488) (not e!113164))))

(assert (=> d!51977 (= res!81488 ((_ is Cons!2209) (toList!1101 lt!85366)))))

(assert (=> d!51977 (= (contains!1145 (toList!1101 lt!85366) (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) lt!85398)))

(declare-fun b!171434 () Bool)

(declare-fun e!113163 () Bool)

(assert (=> b!171434 (= e!113164 e!113163)))

(declare-fun res!81489 () Bool)

(assert (=> b!171434 (=> res!81489 e!113163)))

(assert (=> b!171434 (= res!81489 (= (h!2826 (toList!1101 lt!85366)) (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))

(declare-fun b!171435 () Bool)

(assert (=> b!171435 (= e!113163 (contains!1145 (t!7023 (toList!1101 lt!85366)) (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))

(assert (= (and d!51977 res!81488) b!171434))

(assert (= (and b!171434 (not res!81489)) b!171435))

(declare-fun m!200075 () Bool)

(assert (=> d!51977 m!200075))

(declare-fun m!200077 () Bool)

(assert (=> d!51977 m!200077))

(declare-fun m!200079 () Bool)

(assert (=> b!171435 m!200079))

(assert (=> b!171274 d!51977))

(declare-fun d!51979 () Bool)

(assert (=> d!51979 (= (apply!129 lt!85243 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) (get!1940 (getValueByKey!183 (toList!1101 lt!85243) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7083 () Bool)

(assert (= bs!7083 d!51979))

(assert (=> bs!7083 m!199219))

(declare-fun m!200081 () Bool)

(assert (=> bs!7083 m!200081))

(assert (=> bs!7083 m!200081))

(declare-fun m!200083 () Bool)

(assert (=> bs!7083 m!200083))

(assert (=> b!171097 d!51979))

(assert (=> b!171097 d!51767))

(declare-fun b!171437 () Bool)

(declare-fun e!113165 () Option!189)

(declare-fun e!113166 () Option!189)

(assert (=> b!171437 (= e!113165 e!113166)))

(declare-fun c!30634 () Bool)

(assert (=> b!171437 (= c!30634 (and ((_ is Cons!2209) (t!7023 (toList!1101 lt!85177))) (not (= (_1!1625 (h!2826 (t!7023 (toList!1101 lt!85177)))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun b!171438 () Bool)

(assert (=> b!171438 (= e!113166 (getValueByKey!183 (t!7023 (t!7023 (toList!1101 lt!85177))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun d!51981 () Bool)

(declare-fun c!30633 () Bool)

(assert (=> d!51981 (= c!30633 (and ((_ is Cons!2209) (t!7023 (toList!1101 lt!85177))) (= (_1!1625 (h!2826 (t!7023 (toList!1101 lt!85177)))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!51981 (= (getValueByKey!183 (t!7023 (toList!1101 lt!85177)) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) e!113165)))

(declare-fun b!171439 () Bool)

(assert (=> b!171439 (= e!113166 None!187)))

(declare-fun b!171436 () Bool)

(assert (=> b!171436 (= e!113165 (Some!188 (_2!1625 (h!2826 (t!7023 (toList!1101 lt!85177))))))))

(assert (= (and d!51981 c!30633) b!171436))

(assert (= (and d!51981 (not c!30633)) b!171437))

(assert (= (and b!171437 c!30634) b!171438))

(assert (= (and b!171437 (not c!30634)) b!171439))

(declare-fun m!200085 () Bool)

(assert (=> b!171438 m!200085))

(assert (=> b!171285 d!51981))

(declare-fun d!51983 () Bool)

(declare-fun lt!85399 () Bool)

(assert (=> d!51983 (= lt!85399 (select (content!146 (toList!1101 lt!85342)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))

(declare-fun e!113168 () Bool)

(assert (=> d!51983 (= lt!85399 e!113168)))

(declare-fun res!81490 () Bool)

(assert (=> d!51983 (=> (not res!81490) (not e!113168))))

(assert (=> d!51983 (= res!81490 ((_ is Cons!2209) (toList!1101 lt!85342)))))

(assert (=> d!51983 (= (contains!1145 (toList!1101 lt!85342) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) lt!85399)))

(declare-fun b!171440 () Bool)

(declare-fun e!113167 () Bool)

(assert (=> b!171440 (= e!113168 e!113167)))

(declare-fun res!81491 () Bool)

(assert (=> b!171440 (=> res!81491 e!113167)))

(assert (=> b!171440 (= res!81491 (= (h!2826 (toList!1101 lt!85342)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))

(declare-fun b!171441 () Bool)

(assert (=> b!171441 (= e!113167 (contains!1145 (t!7023 (toList!1101 lt!85342)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))

(assert (= (and d!51983 res!81490) b!171440))

(assert (= (and b!171440 (not res!81491)) b!171441))

(declare-fun m!200087 () Bool)

(assert (=> d!51983 m!200087))

(declare-fun m!200089 () Bool)

(assert (=> d!51983 m!200089))

(declare-fun m!200091 () Bool)

(assert (=> b!171441 m!200091))

(assert (=> b!171260 d!51983))

(declare-fun b!171442 () Bool)

(declare-fun e!113171 () Bool)

(declare-fun e!113169 () Bool)

(assert (=> b!171442 (= e!113171 e!113169)))

(declare-fun c!30635 () Bool)

(assert (=> b!171442 (= c!30635 (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!51985 () Bool)

(declare-fun res!81493 () Bool)

(assert (=> d!51985 (=> res!81493 e!113171)))

(assert (=> d!51985 (= res!81493 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 lt!85067))))))

(assert (=> d!51985 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5387 lt!85067) (mask!8383 lt!85067)) e!113171)))

(declare-fun bm!17455 () Bool)

(declare-fun call!17458 () Bool)

(assert (=> bm!17455 (= call!17458 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!5387 lt!85067) (mask!8383 lt!85067)))))

(declare-fun b!171443 () Bool)

(assert (=> b!171443 (= e!113169 call!17458)))

(declare-fun b!171444 () Bool)

(declare-fun e!113170 () Bool)

(assert (=> b!171444 (= e!113170 call!17458)))

(declare-fun b!171445 () Bool)

(assert (=> b!171445 (= e!113169 e!113170)))

(declare-fun lt!85402 () (_ BitVec 64))

(assert (=> b!171445 (= lt!85402 (select (arr!3388 (_keys!5387 lt!85067)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!85400 () Unit!5249)

(assert (=> b!171445 (= lt!85400 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5387 lt!85067) lt!85402 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!171445 (arrayContainsKey!0 (_keys!5387 lt!85067) lt!85402 #b00000000000000000000000000000000)))

(declare-fun lt!85401 () Unit!5249)

(assert (=> b!171445 (= lt!85401 lt!85400)))

(declare-fun res!81492 () Bool)

(assert (=> b!171445 (= res!81492 (= (seekEntryOrOpen!0 (select (arr!3388 (_keys!5387 lt!85067)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!5387 lt!85067) (mask!8383 lt!85067)) (Found!544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!171445 (=> (not res!81492) (not e!113170))))

(assert (= (and d!51985 (not res!81493)) b!171442))

(assert (= (and b!171442 c!30635) b!171445))

(assert (= (and b!171442 (not c!30635)) b!171443))

(assert (= (and b!171445 res!81492) b!171444))

(assert (= (or b!171444 b!171443) bm!17455))

(declare-fun m!200093 () Bool)

(assert (=> b!171442 m!200093))

(assert (=> b!171442 m!200093))

(declare-fun m!200095 () Bool)

(assert (=> b!171442 m!200095))

(declare-fun m!200097 () Bool)

(assert (=> bm!17455 m!200097))

(assert (=> b!171445 m!200093))

(declare-fun m!200099 () Bool)

(assert (=> b!171445 m!200099))

(declare-fun m!200101 () Bool)

(assert (=> b!171445 m!200101))

(assert (=> b!171445 m!200093))

(declare-fun m!200103 () Bool)

(assert (=> b!171445 m!200103))

(assert (=> bm!17428 d!51985))

(declare-fun d!51987 () Bool)

(declare-fun e!113173 () Bool)

(assert (=> d!51987 e!113173))

(declare-fun res!81494 () Bool)

(assert (=> d!51987 (=> res!81494 e!113173)))

(declare-fun lt!85405 () Bool)

(assert (=> d!51987 (= res!81494 (not lt!85405))))

(declare-fun lt!85403 () Bool)

(assert (=> d!51987 (= lt!85405 lt!85403)))

(declare-fun lt!85404 () Unit!5249)

(declare-fun e!113172 () Unit!5249)

(assert (=> d!51987 (= lt!85404 e!113172)))

(declare-fun c!30636 () Bool)

(assert (=> d!51987 (= c!30636 lt!85403)))

(assert (=> d!51987 (= lt!85403 (containsKey!187 (toList!1101 lt!85352) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(assert (=> d!51987 (= (contains!1143 lt!85352 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))) lt!85405)))

(declare-fun b!171446 () Bool)

(declare-fun lt!85406 () Unit!5249)

(assert (=> b!171446 (= e!113172 lt!85406)))

(assert (=> b!171446 (= lt!85406 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85352) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(assert (=> b!171446 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85352) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(declare-fun b!171447 () Bool)

(declare-fun Unit!5267 () Unit!5249)

(assert (=> b!171447 (= e!113172 Unit!5267)))

(declare-fun b!171448 () Bool)

(assert (=> b!171448 (= e!113173 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85352) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))))

(assert (= (and d!51987 c!30636) b!171446))

(assert (= (and d!51987 (not c!30636)) b!171447))

(assert (= (and d!51987 (not res!81494)) b!171448))

(declare-fun m!200105 () Bool)

(assert (=> d!51987 m!200105))

(declare-fun m!200107 () Bool)

(assert (=> b!171446 m!200107))

(assert (=> b!171446 m!199809))

(assert (=> b!171446 m!199809))

(declare-fun m!200109 () Bool)

(assert (=> b!171446 m!200109))

(assert (=> b!171448 m!199809))

(assert (=> b!171448 m!199809))

(assert (=> b!171448 m!200109))

(assert (=> d!51829 d!51987))

(declare-fun b!171450 () Bool)

(declare-fun e!113174 () Option!189)

(declare-fun e!113175 () Option!189)

(assert (=> b!171450 (= e!113174 e!113175)))

(declare-fun c!30638 () Bool)

(assert (=> b!171450 (= c!30638 (and ((_ is Cons!2209) lt!85353) (not (= (_1!1625 (h!2826 lt!85353)) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171451 () Bool)

(assert (=> b!171451 (= e!113175 (getValueByKey!183 (t!7023 lt!85353) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(declare-fun c!30637 () Bool)

(declare-fun d!51989 () Bool)

(assert (=> d!51989 (= c!30637 (and ((_ is Cons!2209) lt!85353) (= (_1!1625 (h!2826 lt!85353)) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))))

(assert (=> d!51989 (= (getValueByKey!183 lt!85353 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))) e!113174)))

(declare-fun b!171452 () Bool)

(assert (=> b!171452 (= e!113175 None!187)))

(declare-fun b!171449 () Bool)

(assert (=> b!171449 (= e!113174 (Some!188 (_2!1625 (h!2826 lt!85353))))))

(assert (= (and d!51989 c!30637) b!171449))

(assert (= (and d!51989 (not c!30637)) b!171450))

(assert (= (and b!171450 c!30638) b!171451))

(assert (= (and b!171450 (not c!30638)) b!171452))

(declare-fun m!200111 () Bool)

(assert (=> b!171451 m!200111))

(assert (=> d!51829 d!51989))

(declare-fun d!51991 () Bool)

(assert (=> d!51991 (= (getValueByKey!183 lt!85353 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(declare-fun lt!85407 () Unit!5249)

(assert (=> d!51991 (= lt!85407 (choose!932 lt!85353 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(declare-fun e!113176 () Bool)

(assert (=> d!51991 e!113176))

(declare-fun res!81495 () Bool)

(assert (=> d!51991 (=> (not res!81495) (not e!113176))))

(assert (=> d!51991 (= res!81495 (isStrictlySorted!326 lt!85353))))

(assert (=> d!51991 (= (lemmaContainsTupThenGetReturnValue!98 lt!85353 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))) lt!85407)))

(declare-fun b!171453 () Bool)

(declare-fun res!81496 () Bool)

(assert (=> b!171453 (=> (not res!81496) (not e!113176))))

(assert (=> b!171453 (= res!81496 (containsKey!187 lt!85353 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(declare-fun b!171454 () Bool)

(assert (=> b!171454 (= e!113176 (contains!1145 lt!85353 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))))

(assert (= (and d!51991 res!81495) b!171453))

(assert (= (and b!171453 res!81496) b!171454))

(assert (=> d!51991 m!199803))

(declare-fun m!200113 () Bool)

(assert (=> d!51991 m!200113))

(declare-fun m!200115 () Bool)

(assert (=> d!51991 m!200115))

(declare-fun m!200117 () Bool)

(assert (=> b!171453 m!200117))

(declare-fun m!200119 () Bool)

(assert (=> b!171454 m!200119))

(assert (=> d!51829 d!51991))

(declare-fun b!171455 () Bool)

(declare-fun e!113177 () List!2213)

(declare-fun call!17460 () List!2213)

(assert (=> b!171455 (= e!113177 call!17460)))

(declare-fun b!171456 () Bool)

(declare-fun res!81498 () Bool)

(declare-fun e!113181 () Bool)

(assert (=> b!171456 (=> (not res!81498) (not e!113181))))

(declare-fun lt!85408 () List!2213)

(assert (=> b!171456 (= res!81498 (containsKey!187 lt!85408 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(declare-fun b!171457 () Bool)

(declare-fun e!113180 () List!2213)

(declare-fun e!113178 () List!2213)

(assert (=> b!171457 (= e!113180 e!113178)))

(declare-fun c!30640 () Bool)

(assert (=> b!171457 (= c!30640 (and ((_ is Cons!2209) (toList!1101 lt!85158)) (= (_1!1625 (h!2826 (toList!1101 lt!85158))) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))))

(declare-fun b!171458 () Bool)

(declare-fun e!113179 () List!2213)

(declare-fun c!30641 () Bool)

(assert (=> b!171458 (= e!113179 (ite c!30640 (t!7023 (toList!1101 lt!85158)) (ite c!30641 (Cons!2209 (h!2826 (toList!1101 lt!85158)) (t!7023 (toList!1101 lt!85158))) Nil!2210)))))

(declare-fun b!171459 () Bool)

(assert (=> b!171459 (= e!113181 (contains!1145 lt!85408 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))))

(declare-fun b!171460 () Bool)

(declare-fun call!17459 () List!2213)

(assert (=> b!171460 (= e!113180 call!17459)))

(declare-fun c!30642 () Bool)

(declare-fun bm!17456 () Bool)

(assert (=> bm!17456 (= call!17459 ($colon$colon!96 e!113179 (ite c!30642 (h!2826 (toList!1101 lt!85158)) (tuple2!3231 (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))))

(declare-fun c!30639 () Bool)

(assert (=> bm!17456 (= c!30639 c!30642)))

(declare-fun bm!17458 () Bool)

(declare-fun call!17461 () List!2213)

(assert (=> bm!17458 (= call!17460 call!17461)))

(declare-fun b!171461 () Bool)

(assert (=> b!171461 (= e!113178 call!17461)))

(declare-fun b!171462 () Bool)

(assert (=> b!171462 (= e!113177 call!17460)))

(declare-fun b!171463 () Bool)

(assert (=> b!171463 (= c!30641 (and ((_ is Cons!2209) (toList!1101 lt!85158)) (bvsgt (_1!1625 (h!2826 (toList!1101 lt!85158))) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))))

(assert (=> b!171463 (= e!113178 e!113177)))

(declare-fun b!171464 () Bool)

(assert (=> b!171464 (= e!113179 (insertStrictlySorted!100 (t!7023 (toList!1101 lt!85158)) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))))

(declare-fun bm!17457 () Bool)

(assert (=> bm!17457 (= call!17461 call!17459)))

(declare-fun d!51993 () Bool)

(assert (=> d!51993 e!113181))

(declare-fun res!81497 () Bool)

(assert (=> d!51993 (=> (not res!81497) (not e!113181))))

(assert (=> d!51993 (= res!81497 (isStrictlySorted!326 lt!85408))))

(assert (=> d!51993 (= lt!85408 e!113180)))

(assert (=> d!51993 (= c!30642 (and ((_ is Cons!2209) (toList!1101 lt!85158)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85158))) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))))

(assert (=> d!51993 (isStrictlySorted!326 (toList!1101 lt!85158))))

(assert (=> d!51993 (= (insertStrictlySorted!100 (toList!1101 lt!85158) (_1!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))) lt!85408)))

(assert (= (and d!51993 c!30642) b!171460))

(assert (= (and d!51993 (not c!30642)) b!171457))

(assert (= (and b!171457 c!30640) b!171461))

(assert (= (and b!171457 (not c!30640)) b!171463))

(assert (= (and b!171463 c!30641) b!171462))

(assert (= (and b!171463 (not c!30641)) b!171455))

(assert (= (or b!171462 b!171455) bm!17458))

(assert (= (or b!171461 bm!17458) bm!17457))

(assert (= (or b!171460 bm!17457) bm!17456))

(assert (= (and bm!17456 c!30639) b!171464))

(assert (= (and bm!17456 (not c!30639)) b!171458))

(assert (= (and d!51993 res!81497) b!171456))

(assert (= (and b!171456 res!81498) b!171459))

(declare-fun m!200121 () Bool)

(assert (=> b!171456 m!200121))

(declare-fun m!200123 () Bool)

(assert (=> d!51993 m!200123))

(declare-fun m!200125 () Bool)

(assert (=> d!51993 m!200125))

(declare-fun m!200127 () Bool)

(assert (=> b!171464 m!200127))

(declare-fun m!200129 () Bool)

(assert (=> b!171459 m!200129))

(declare-fun m!200131 () Bool)

(assert (=> bm!17456 m!200131))

(assert (=> d!51829 d!51993))

(declare-fun d!51995 () Bool)

(assert (=> d!51995 (= (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))) lt!85150)) (v!3910 (getValueByKey!183 (toList!1101 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))) lt!85150)))))

(assert (=> d!51837 d!51995))

(declare-fun b!171466 () Bool)

(declare-fun e!113182 () Option!189)

(declare-fun e!113183 () Option!189)

(assert (=> b!171466 (= e!113182 e!113183)))

(declare-fun c!30644 () Bool)

(assert (=> b!171466 (= c!30644 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))) (not (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))) lt!85150))))))

(declare-fun b!171467 () Bool)

(assert (=> b!171467 (= e!113183 (getValueByKey!183 (t!7023 (toList!1101 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))) lt!85150))))

(declare-fun d!51997 () Bool)

(declare-fun c!30643 () Bool)

(assert (=> d!51997 (= c!30643 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))) (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))))) lt!85150)))))

(assert (=> d!51997 (= (getValueByKey!183 (toList!1101 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248)))) lt!85150) e!113182)))

(declare-fun b!171468 () Bool)

(assert (=> b!171468 (= e!113183 None!187)))

(declare-fun b!171465 () Bool)

(assert (=> b!171465 (= e!113182 (Some!188 (_2!1625 (h!2826 (toList!1101 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))))))

(assert (= (and d!51997 c!30643) b!171465))

(assert (= (and d!51997 (not c!30643)) b!171466))

(assert (= (and b!171466 c!30644) b!171467))

(assert (= (and b!171466 (not c!30644)) b!171468))

(declare-fun m!200133 () Bool)

(assert (=> b!171467 m!200133))

(assert (=> d!51837 d!51997))

(declare-fun d!51999 () Bool)

(declare-fun lt!85409 () Bool)

(assert (=> d!51999 (= lt!85409 (select (content!146 (toList!1101 lt!85197)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))

(declare-fun e!113185 () Bool)

(assert (=> d!51999 (= lt!85409 e!113185)))

(declare-fun res!81499 () Bool)

(assert (=> d!51999 (=> (not res!81499) (not e!113185))))

(assert (=> d!51999 (= res!81499 ((_ is Cons!2209) (toList!1101 lt!85197)))))

(assert (=> d!51999 (= (contains!1145 (toList!1101 lt!85197) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) lt!85409)))

(declare-fun b!171469 () Bool)

(declare-fun e!113184 () Bool)

(assert (=> b!171469 (= e!113185 e!113184)))

(declare-fun res!81500 () Bool)

(assert (=> b!171469 (=> res!81500 e!113184)))

(assert (=> b!171469 (= res!81500 (= (h!2826 (toList!1101 lt!85197)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))

(declare-fun b!171470 () Bool)

(assert (=> b!171470 (= e!113184 (contains!1145 (t!7023 (toList!1101 lt!85197)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))

(assert (= (and d!51999 res!81499) b!171469))

(assert (= (and b!171469 (not res!81500)) b!171470))

(declare-fun m!200135 () Bool)

(assert (=> d!51999 m!200135))

(declare-fun m!200137 () Bool)

(assert (=> d!51999 m!200137))

(declare-fun m!200139 () Bool)

(assert (=> b!171470 m!200139))

(assert (=> b!170996 d!51999))

(declare-fun d!52001 () Bool)

(declare-fun e!113187 () Bool)

(assert (=> d!52001 e!113187))

(declare-fun res!81501 () Bool)

(assert (=> d!52001 (=> res!81501 e!113187)))

(declare-fun lt!85412 () Bool)

(assert (=> d!52001 (= res!81501 (not lt!85412))))

(declare-fun lt!85410 () Bool)

(assert (=> d!52001 (= lt!85412 lt!85410)))

(declare-fun lt!85411 () Unit!5249)

(declare-fun e!113186 () Unit!5249)

(assert (=> d!52001 (= lt!85411 e!113186)))

(declare-fun c!30645 () Bool)

(assert (=> d!52001 (= c!30645 lt!85410)))

(assert (=> d!52001 (= lt!85410 (containsKey!187 (toList!1101 lt!85331) (_1!1625 (tuple2!3231 lt!85126 v!309))))))

(assert (=> d!52001 (= (contains!1143 lt!85331 (_1!1625 (tuple2!3231 lt!85126 v!309))) lt!85412)))

(declare-fun b!171471 () Bool)

(declare-fun lt!85413 () Unit!5249)

(assert (=> b!171471 (= e!113186 lt!85413)))

(assert (=> b!171471 (= lt!85413 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85331) (_1!1625 (tuple2!3231 lt!85126 v!309))))))

(assert (=> b!171471 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85331) (_1!1625 (tuple2!3231 lt!85126 v!309))))))

(declare-fun b!171472 () Bool)

(declare-fun Unit!5268 () Unit!5249)

(assert (=> b!171472 (= e!113186 Unit!5268)))

(declare-fun b!171473 () Bool)

(assert (=> b!171473 (= e!113187 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85331) (_1!1625 (tuple2!3231 lt!85126 v!309)))))))

(assert (= (and d!52001 c!30645) b!171471))

(assert (= (and d!52001 (not c!30645)) b!171472))

(assert (= (and d!52001 (not res!81501)) b!171473))

(declare-fun m!200141 () Bool)

(assert (=> d!52001 m!200141))

(declare-fun m!200143 () Bool)

(assert (=> b!171471 m!200143))

(assert (=> b!171471 m!199731))

(assert (=> b!171471 m!199731))

(declare-fun m!200145 () Bool)

(assert (=> b!171471 m!200145))

(assert (=> b!171473 m!199731))

(assert (=> b!171473 m!199731))

(assert (=> b!171473 m!200145))

(assert (=> d!51801 d!52001))

(declare-fun b!171475 () Bool)

(declare-fun e!113188 () Option!189)

(declare-fun e!113189 () Option!189)

(assert (=> b!171475 (= e!113188 e!113189)))

(declare-fun c!30647 () Bool)

(assert (=> b!171475 (= c!30647 (and ((_ is Cons!2209) lt!85332) (not (= (_1!1625 (h!2826 lt!85332)) (_1!1625 (tuple2!3231 lt!85126 v!309))))))))

(declare-fun b!171476 () Bool)

(assert (=> b!171476 (= e!113189 (getValueByKey!183 (t!7023 lt!85332) (_1!1625 (tuple2!3231 lt!85126 v!309))))))

(declare-fun d!52003 () Bool)

(declare-fun c!30646 () Bool)

(assert (=> d!52003 (= c!30646 (and ((_ is Cons!2209) lt!85332) (= (_1!1625 (h!2826 lt!85332)) (_1!1625 (tuple2!3231 lt!85126 v!309)))))))

(assert (=> d!52003 (= (getValueByKey!183 lt!85332 (_1!1625 (tuple2!3231 lt!85126 v!309))) e!113188)))

(declare-fun b!171477 () Bool)

(assert (=> b!171477 (= e!113189 None!187)))

(declare-fun b!171474 () Bool)

(assert (=> b!171474 (= e!113188 (Some!188 (_2!1625 (h!2826 lt!85332))))))

(assert (= (and d!52003 c!30646) b!171474))

(assert (= (and d!52003 (not c!30646)) b!171475))

(assert (= (and b!171475 c!30647) b!171476))

(assert (= (and b!171475 (not c!30647)) b!171477))

(declare-fun m!200147 () Bool)

(assert (=> b!171476 m!200147))

(assert (=> d!51801 d!52003))

(declare-fun d!52005 () Bool)

(assert (=> d!52005 (= (getValueByKey!183 lt!85332 (_1!1625 (tuple2!3231 lt!85126 v!309))) (Some!188 (_2!1625 (tuple2!3231 lt!85126 v!309))))))

(declare-fun lt!85414 () Unit!5249)

(assert (=> d!52005 (= lt!85414 (choose!932 lt!85332 (_1!1625 (tuple2!3231 lt!85126 v!309)) (_2!1625 (tuple2!3231 lt!85126 v!309))))))

(declare-fun e!113190 () Bool)

(assert (=> d!52005 e!113190))

(declare-fun res!81502 () Bool)

(assert (=> d!52005 (=> (not res!81502) (not e!113190))))

(assert (=> d!52005 (= res!81502 (isStrictlySorted!326 lt!85332))))

(assert (=> d!52005 (= (lemmaContainsTupThenGetReturnValue!98 lt!85332 (_1!1625 (tuple2!3231 lt!85126 v!309)) (_2!1625 (tuple2!3231 lt!85126 v!309))) lt!85414)))

(declare-fun b!171478 () Bool)

(declare-fun res!81503 () Bool)

(assert (=> b!171478 (=> (not res!81503) (not e!113190))))

(assert (=> b!171478 (= res!81503 (containsKey!187 lt!85332 (_1!1625 (tuple2!3231 lt!85126 v!309))))))

(declare-fun b!171479 () Bool)

(assert (=> b!171479 (= e!113190 (contains!1145 lt!85332 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85126 v!309)) (_2!1625 (tuple2!3231 lt!85126 v!309)))))))

(assert (= (and d!52005 res!81502) b!171478))

(assert (= (and b!171478 res!81503) b!171479))

(assert (=> d!52005 m!199725))

(declare-fun m!200149 () Bool)

(assert (=> d!52005 m!200149))

(declare-fun m!200151 () Bool)

(assert (=> d!52005 m!200151))

(declare-fun m!200153 () Bool)

(assert (=> b!171478 m!200153))

(declare-fun m!200155 () Bool)

(assert (=> b!171479 m!200155))

(assert (=> d!51801 d!52005))

(declare-fun b!171480 () Bool)

(declare-fun e!113191 () List!2213)

(declare-fun call!17463 () List!2213)

(assert (=> b!171480 (= e!113191 call!17463)))

(declare-fun b!171481 () Bool)

(declare-fun res!81505 () Bool)

(declare-fun e!113195 () Bool)

(assert (=> b!171481 (=> (not res!81505) (not e!113195))))

(declare-fun lt!85415 () List!2213)

(assert (=> b!171481 (= res!81505 (containsKey!187 lt!85415 (_1!1625 (tuple2!3231 lt!85126 v!309))))))

(declare-fun b!171482 () Bool)

(declare-fun e!113194 () List!2213)

(declare-fun e!113192 () List!2213)

(assert (=> b!171482 (= e!113194 e!113192)))

(declare-fun c!30649 () Bool)

(assert (=> b!171482 (= c!30649 (and ((_ is Cons!2209) (toList!1101 lt!85141)) (= (_1!1625 (h!2826 (toList!1101 lt!85141))) (_1!1625 (tuple2!3231 lt!85126 v!309)))))))

(declare-fun b!171483 () Bool)

(declare-fun c!30650 () Bool)

(declare-fun e!113193 () List!2213)

(assert (=> b!171483 (= e!113193 (ite c!30649 (t!7023 (toList!1101 lt!85141)) (ite c!30650 (Cons!2209 (h!2826 (toList!1101 lt!85141)) (t!7023 (toList!1101 lt!85141))) Nil!2210)))))

(declare-fun b!171484 () Bool)

(assert (=> b!171484 (= e!113195 (contains!1145 lt!85415 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85126 v!309)) (_2!1625 (tuple2!3231 lt!85126 v!309)))))))

(declare-fun b!171485 () Bool)

(declare-fun call!17462 () List!2213)

(assert (=> b!171485 (= e!113194 call!17462)))

(declare-fun c!30651 () Bool)

(declare-fun bm!17459 () Bool)

(assert (=> bm!17459 (= call!17462 ($colon$colon!96 e!113193 (ite c!30651 (h!2826 (toList!1101 lt!85141)) (tuple2!3231 (_1!1625 (tuple2!3231 lt!85126 v!309)) (_2!1625 (tuple2!3231 lt!85126 v!309))))))))

(declare-fun c!30648 () Bool)

(assert (=> bm!17459 (= c!30648 c!30651)))

(declare-fun bm!17461 () Bool)

(declare-fun call!17464 () List!2213)

(assert (=> bm!17461 (= call!17463 call!17464)))

(declare-fun b!171486 () Bool)

(assert (=> b!171486 (= e!113192 call!17464)))

(declare-fun b!171487 () Bool)

(assert (=> b!171487 (= e!113191 call!17463)))

(declare-fun b!171488 () Bool)

(assert (=> b!171488 (= c!30650 (and ((_ is Cons!2209) (toList!1101 lt!85141)) (bvsgt (_1!1625 (h!2826 (toList!1101 lt!85141))) (_1!1625 (tuple2!3231 lt!85126 v!309)))))))

(assert (=> b!171488 (= e!113192 e!113191)))

(declare-fun b!171489 () Bool)

(assert (=> b!171489 (= e!113193 (insertStrictlySorted!100 (t!7023 (toList!1101 lt!85141)) (_1!1625 (tuple2!3231 lt!85126 v!309)) (_2!1625 (tuple2!3231 lt!85126 v!309))))))

(declare-fun bm!17460 () Bool)

(assert (=> bm!17460 (= call!17464 call!17462)))

(declare-fun d!52007 () Bool)

(assert (=> d!52007 e!113195))

(declare-fun res!81504 () Bool)

(assert (=> d!52007 (=> (not res!81504) (not e!113195))))

(assert (=> d!52007 (= res!81504 (isStrictlySorted!326 lt!85415))))

(assert (=> d!52007 (= lt!85415 e!113194)))

(assert (=> d!52007 (= c!30651 (and ((_ is Cons!2209) (toList!1101 lt!85141)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85141))) (_1!1625 (tuple2!3231 lt!85126 v!309)))))))

(assert (=> d!52007 (isStrictlySorted!326 (toList!1101 lt!85141))))

(assert (=> d!52007 (= (insertStrictlySorted!100 (toList!1101 lt!85141) (_1!1625 (tuple2!3231 lt!85126 v!309)) (_2!1625 (tuple2!3231 lt!85126 v!309))) lt!85415)))

(assert (= (and d!52007 c!30651) b!171485))

(assert (= (and d!52007 (not c!30651)) b!171482))

(assert (= (and b!171482 c!30649) b!171486))

(assert (= (and b!171482 (not c!30649)) b!171488))

(assert (= (and b!171488 c!30650) b!171487))

(assert (= (and b!171488 (not c!30650)) b!171480))

(assert (= (or b!171487 b!171480) bm!17461))

(assert (= (or b!171486 bm!17461) bm!17460))

(assert (= (or b!171485 bm!17460) bm!17459))

(assert (= (and bm!17459 c!30648) b!171489))

(assert (= (and bm!17459 (not c!30648)) b!171483))

(assert (= (and d!52007 res!81504) b!171481))

(assert (= (and b!171481 res!81505) b!171484))

(declare-fun m!200157 () Bool)

(assert (=> b!171481 m!200157))

(declare-fun m!200159 () Bool)

(assert (=> d!52007 m!200159))

(declare-fun m!200161 () Bool)

(assert (=> d!52007 m!200161))

(declare-fun m!200163 () Bool)

(assert (=> b!171489 m!200163))

(declare-fun m!200165 () Bool)

(assert (=> b!171484 m!200165))

(declare-fun m!200167 () Bool)

(assert (=> bm!17459 m!200167))

(assert (=> d!51801 d!52007))

(declare-fun d!52009 () Bool)

(assert (=> d!52009 (arrayContainsKey!0 (_keys!5387 lt!85067) lt!85272 #b00000000000000000000000000000000)))

(declare-fun lt!85418 () Unit!5249)

(declare-fun choose!13 (array!7122 (_ BitVec 64) (_ BitVec 32)) Unit!5249)

(assert (=> d!52009 (= lt!85418 (choose!13 (_keys!5387 lt!85067) lt!85272 #b00000000000000000000000000000000))))

(assert (=> d!52009 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!52009 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5387 lt!85067) lt!85272 #b00000000000000000000000000000000) lt!85418)))

(declare-fun bs!7084 () Bool)

(assert (= bs!7084 d!52009))

(assert (=> bs!7084 m!199531))

(declare-fun m!200169 () Bool)

(assert (=> bs!7084 m!200169))

(assert (=> b!171144 d!52009))

(declare-fun d!52011 () Bool)

(declare-fun res!81510 () Bool)

(declare-fun e!113200 () Bool)

(assert (=> d!52011 (=> res!81510 e!113200)))

(assert (=> d!52011 (= res!81510 (= (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) lt!85272))))

(assert (=> d!52011 (= (arrayContainsKey!0 (_keys!5387 lt!85067) lt!85272 #b00000000000000000000000000000000) e!113200)))

(declare-fun b!171494 () Bool)

(declare-fun e!113201 () Bool)

(assert (=> b!171494 (= e!113200 e!113201)))

(declare-fun res!81511 () Bool)

(assert (=> b!171494 (=> (not res!81511) (not e!113201))))

(assert (=> b!171494 (= res!81511 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 lt!85067))))))

(declare-fun b!171495 () Bool)

(assert (=> b!171495 (= e!113201 (arrayContainsKey!0 (_keys!5387 lt!85067) lt!85272 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!52011 (not res!81510)) b!171494))

(assert (= (and b!171494 res!81511) b!171495))

(assert (=> d!52011 m!199523))

(declare-fun m!200171 () Bool)

(assert (=> b!171495 m!200171))

(assert (=> b!171144 d!52011))

(declare-fun b!171508 () Bool)

(declare-fun e!113210 () SeekEntryResult!544)

(declare-fun lt!85427 () SeekEntryResult!544)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7122 (_ BitVec 32)) SeekEntryResult!544)

(assert (=> b!171508 (= e!113210 (seekKeyOrZeroReturnVacant!0 (x!18969 lt!85427) (index!4346 lt!85427) (index!4346 lt!85427) (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) (_keys!5387 lt!85067) (mask!8383 lt!85067)))))

(declare-fun b!171509 () Bool)

(declare-fun e!113208 () SeekEntryResult!544)

(declare-fun e!113209 () SeekEntryResult!544)

(assert (=> b!171509 (= e!113208 e!113209)))

(declare-fun lt!85425 () (_ BitVec 64))

(assert (=> b!171509 (= lt!85425 (select (arr!3388 (_keys!5387 lt!85067)) (index!4346 lt!85427)))))

(declare-fun c!30659 () Bool)

(assert (=> b!171509 (= c!30659 (= lt!85425 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun b!171510 () Bool)

(assert (=> b!171510 (= e!113210 (MissingZero!544 (index!4346 lt!85427)))))

(declare-fun b!171511 () Bool)

(assert (=> b!171511 (= e!113208 Undefined!544)))

(declare-fun b!171512 () Bool)

(assert (=> b!171512 (= e!113209 (Found!544 (index!4346 lt!85427)))))

(declare-fun d!52013 () Bool)

(declare-fun lt!85426 () SeekEntryResult!544)

(assert (=> d!52013 (and (or ((_ is Undefined!544) lt!85426) (not ((_ is Found!544) lt!85426)) (and (bvsge (index!4345 lt!85426) #b00000000000000000000000000000000) (bvslt (index!4345 lt!85426) (size!3681 (_keys!5387 lt!85067))))) (or ((_ is Undefined!544) lt!85426) ((_ is Found!544) lt!85426) (not ((_ is MissingZero!544) lt!85426)) (and (bvsge (index!4344 lt!85426) #b00000000000000000000000000000000) (bvslt (index!4344 lt!85426) (size!3681 (_keys!5387 lt!85067))))) (or ((_ is Undefined!544) lt!85426) ((_ is Found!544) lt!85426) ((_ is MissingZero!544) lt!85426) (not ((_ is MissingVacant!544) lt!85426)) (and (bvsge (index!4347 lt!85426) #b00000000000000000000000000000000) (bvslt (index!4347 lt!85426) (size!3681 (_keys!5387 lt!85067))))) (or ((_ is Undefined!544) lt!85426) (ite ((_ is Found!544) lt!85426) (= (select (arr!3388 (_keys!5387 lt!85067)) (index!4345 lt!85426)) (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!544) lt!85426) (= (select (arr!3388 (_keys!5387 lt!85067)) (index!4344 lt!85426)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!544) lt!85426) (= (select (arr!3388 (_keys!5387 lt!85067)) (index!4347 lt!85426)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52013 (= lt!85426 e!113208)))

(declare-fun c!30658 () Bool)

(assert (=> d!52013 (= c!30658 (and ((_ is Intermediate!544) lt!85427) (undefined!1356 lt!85427)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7122 (_ BitVec 32)) SeekEntryResult!544)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!52013 (= lt!85427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) (mask!8383 lt!85067)) (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) (_keys!5387 lt!85067) (mask!8383 lt!85067)))))

(assert (=> d!52013 (validMask!0 (mask!8383 lt!85067))))

(assert (=> d!52013 (= (seekEntryOrOpen!0 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) (_keys!5387 lt!85067) (mask!8383 lt!85067)) lt!85426)))

(declare-fun b!171513 () Bool)

(declare-fun c!30660 () Bool)

(assert (=> b!171513 (= c!30660 (= lt!85425 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171513 (= e!113209 e!113210)))

(assert (= (and d!52013 c!30658) b!171511))

(assert (= (and d!52013 (not c!30658)) b!171509))

(assert (= (and b!171509 c!30659) b!171512))

(assert (= (and b!171509 (not c!30659)) b!171513))

(assert (= (and b!171513 c!30660) b!171510))

(assert (= (and b!171513 (not c!30660)) b!171508))

(assert (=> b!171508 m!199523))

(declare-fun m!200173 () Bool)

(assert (=> b!171508 m!200173))

(declare-fun m!200175 () Bool)

(assert (=> b!171509 m!200175))

(declare-fun m!200177 () Bool)

(assert (=> d!52013 m!200177))

(assert (=> d!52013 m!199523))

(declare-fun m!200179 () Bool)

(assert (=> d!52013 m!200179))

(declare-fun m!200181 () Bool)

(assert (=> d!52013 m!200181))

(declare-fun m!200183 () Bool)

(assert (=> d!52013 m!200183))

(assert (=> d!52013 m!199579))

(declare-fun m!200185 () Bool)

(assert (=> d!52013 m!200185))

(assert (=> d!52013 m!199523))

(assert (=> d!52013 m!200177))

(assert (=> b!171144 d!52013))

(declare-fun d!52015 () Bool)

(declare-fun e!113212 () Bool)

(assert (=> d!52015 e!113212))

(declare-fun res!81512 () Bool)

(assert (=> d!52015 (=> res!81512 e!113212)))

(declare-fun lt!85430 () Bool)

(assert (=> d!52015 (= res!81512 (not lt!85430))))

(declare-fun lt!85428 () Bool)

(assert (=> d!52015 (= lt!85430 lt!85428)))

(declare-fun lt!85429 () Unit!5249)

(declare-fun e!113211 () Unit!5249)

(assert (=> d!52015 (= lt!85429 e!113211)))

(declare-fun c!30661 () Bool)

(assert (=> d!52015 (= c!30661 lt!85428)))

(assert (=> d!52015 (= lt!85428 (containsKey!187 (toList!1101 lt!85254) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!52015 (= (contains!1143 lt!85254 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) lt!85430)))

(declare-fun b!171514 () Bool)

(declare-fun lt!85431 () Unit!5249)

(assert (=> b!171514 (= e!113211 lt!85431)))

(assert (=> b!171514 (= lt!85431 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85254) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> b!171514 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85254) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun b!171515 () Bool)

(declare-fun Unit!5269 () Unit!5249)

(assert (=> b!171515 (= e!113211 Unit!5269)))

(declare-fun b!171516 () Bool)

(assert (=> b!171516 (= e!113212 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85254) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(assert (= (and d!52015 c!30661) b!171514))

(assert (= (and d!52015 (not c!30661)) b!171515))

(assert (= (and d!52015 (not res!81512)) b!171516))

(declare-fun m!200187 () Bool)

(assert (=> d!52015 m!200187))

(declare-fun m!200189 () Bool)

(assert (=> b!171514 m!200189))

(assert (=> b!171514 m!199497))

(assert (=> b!171514 m!199497))

(declare-fun m!200191 () Bool)

(assert (=> b!171514 m!200191))

(assert (=> b!171516 m!199497))

(assert (=> b!171516 m!199497))

(assert (=> b!171516 m!200191))

(assert (=> d!51741 d!52015))

(declare-fun b!171518 () Bool)

(declare-fun e!113213 () Option!189)

(declare-fun e!113214 () Option!189)

(assert (=> b!171518 (= e!113213 e!113214)))

(declare-fun c!30663 () Bool)

(assert (=> b!171518 (= c!30663 (and ((_ is Cons!2209) lt!85255) (not (= (_1!1625 (h!2826 lt!85255)) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))))

(declare-fun b!171519 () Bool)

(assert (=> b!171519 (= e!113214 (getValueByKey!183 (t!7023 lt!85255) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun c!30662 () Bool)

(declare-fun d!52017 () Bool)

(assert (=> d!52017 (= c!30662 (and ((_ is Cons!2209) lt!85255) (= (_1!1625 (h!2826 lt!85255)) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(assert (=> d!52017 (= (getValueByKey!183 lt!85255 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) e!113213)))

(declare-fun b!171520 () Bool)

(assert (=> b!171520 (= e!113214 None!187)))

(declare-fun b!171517 () Bool)

(assert (=> b!171517 (= e!113213 (Some!188 (_2!1625 (h!2826 lt!85255))))))

(assert (= (and d!52017 c!30662) b!171517))

(assert (= (and d!52017 (not c!30662)) b!171518))

(assert (= (and b!171518 c!30663) b!171519))

(assert (= (and b!171518 (not c!30663)) b!171520))

(declare-fun m!200193 () Bool)

(assert (=> b!171519 m!200193))

(assert (=> d!51741 d!52017))

(declare-fun d!52019 () Bool)

(assert (=> d!52019 (= (getValueByKey!183 lt!85255 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) (Some!188 (_2!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun lt!85432 () Unit!5249)

(assert (=> d!52019 (= lt!85432 (choose!932 lt!85255 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun e!113215 () Bool)

(assert (=> d!52019 e!113215))

(declare-fun res!81513 () Bool)

(assert (=> d!52019 (=> (not res!81513) (not e!113215))))

(assert (=> d!52019 (= res!81513 (isStrictlySorted!326 lt!85255))))

(assert (=> d!52019 (= (lemmaContainsTupThenGetReturnValue!98 lt!85255 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) lt!85432)))

(declare-fun b!171521 () Bool)

(declare-fun res!81514 () Bool)

(assert (=> b!171521 (=> (not res!81514) (not e!113215))))

(assert (=> b!171521 (= res!81514 (containsKey!187 lt!85255 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun b!171522 () Bool)

(assert (=> b!171522 (= e!113215 (contains!1145 lt!85255 (tuple2!3231 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(assert (= (and d!52019 res!81513) b!171521))

(assert (= (and b!171521 res!81514) b!171522))

(assert (=> d!52019 m!199491))

(declare-fun m!200195 () Bool)

(assert (=> d!52019 m!200195))

(declare-fun m!200197 () Bool)

(assert (=> d!52019 m!200197))

(declare-fun m!200199 () Bool)

(assert (=> b!171521 m!200199))

(declare-fun m!200201 () Bool)

(assert (=> b!171522 m!200201))

(assert (=> d!51741 d!52019))

(declare-fun b!171523 () Bool)

(declare-fun e!113216 () List!2213)

(declare-fun call!17466 () List!2213)

(assert (=> b!171523 (= e!113216 call!17466)))

(declare-fun b!171524 () Bool)

(declare-fun res!81516 () Bool)

(declare-fun e!113220 () Bool)

(assert (=> b!171524 (=> (not res!81516) (not e!113220))))

(declare-fun lt!85433 () List!2213)

(assert (=> b!171524 (= res!81516 (containsKey!187 lt!85433 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun b!171525 () Bool)

(declare-fun e!113219 () List!2213)

(declare-fun e!113217 () List!2213)

(assert (=> b!171525 (= e!113219 e!113217)))

(declare-fun c!30665 () Bool)

(assert (=> b!171525 (= c!30665 (and ((_ is Cons!2209) (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405)))) (= (_1!1625 (h!2826 (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405))))) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171526 () Bool)

(declare-fun e!113218 () List!2213)

(declare-fun c!30666 () Bool)

(assert (=> b!171526 (= e!113218 (ite c!30665 (t!7023 (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405)))) (ite c!30666 (Cons!2209 (h!2826 (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405)))) (t!7023 (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405))))) Nil!2210)))))

(declare-fun b!171527 () Bool)

(assert (=> b!171527 (= e!113220 (contains!1145 lt!85433 (tuple2!3231 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171528 () Bool)

(declare-fun call!17465 () List!2213)

(assert (=> b!171528 (= e!113219 call!17465)))

(declare-fun bm!17462 () Bool)

(declare-fun c!30667 () Bool)

(assert (=> bm!17462 (= call!17465 ($colon$colon!96 e!113218 (ite c!30667 (h!2826 (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405)))) (tuple2!3231 (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))))

(declare-fun c!30664 () Bool)

(assert (=> bm!17462 (= c!30664 c!30667)))

(declare-fun bm!17464 () Bool)

(declare-fun call!17467 () List!2213)

(assert (=> bm!17464 (= call!17466 call!17467)))

(declare-fun b!171529 () Bool)

(assert (=> b!171529 (= e!113217 call!17467)))

(declare-fun b!171530 () Bool)

(assert (=> b!171530 (= e!113216 call!17466)))

(declare-fun b!171531 () Bool)

(assert (=> b!171531 (= c!30666 (and ((_ is Cons!2209) (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405)))) (bvsgt (_1!1625 (h!2826 (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405))))) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(assert (=> b!171531 (= e!113217 e!113216)))

(declare-fun b!171532 () Bool)

(assert (=> b!171532 (= e!113218 (insertStrictlySorted!100 (t!7023 (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405)))) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun bm!17463 () Bool)

(assert (=> bm!17463 (= call!17467 call!17465)))

(declare-fun d!52021 () Bool)

(assert (=> d!52021 e!113220))

(declare-fun res!81515 () Bool)

(assert (=> d!52021 (=> (not res!81515) (not e!113220))))

(assert (=> d!52021 (= res!81515 (isStrictlySorted!326 lt!85433))))

(assert (=> d!52021 (= lt!85433 e!113219)))

(assert (=> d!52021 (= c!30667 (and ((_ is Cons!2209) (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405)))) (bvslt (_1!1625 (h!2826 (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405))))) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(assert (=> d!52021 (isStrictlySorted!326 (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405))))))

(assert (=> d!52021 (= (insertStrictlySorted!100 (toList!1101 (ite c!30493 call!17402 (ite c!30491 call!17406 call!17405))) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) lt!85433)))

(assert (= (and d!52021 c!30667) b!171528))

(assert (= (and d!52021 (not c!30667)) b!171525))

(assert (= (and b!171525 c!30665) b!171529))

(assert (= (and b!171525 (not c!30665)) b!171531))

(assert (= (and b!171531 c!30666) b!171530))

(assert (= (and b!171531 (not c!30666)) b!171523))

(assert (= (or b!171530 b!171523) bm!17464))

(assert (= (or b!171529 bm!17464) bm!17463))

(assert (= (or b!171528 bm!17463) bm!17462))

(assert (= (and bm!17462 c!30664) b!171532))

(assert (= (and bm!17462 (not c!30664)) b!171526))

(assert (= (and d!52021 res!81515) b!171524))

(assert (= (and b!171524 res!81516) b!171527))

(declare-fun m!200203 () Bool)

(assert (=> b!171524 m!200203))

(declare-fun m!200205 () Bool)

(assert (=> d!52021 m!200205))

(declare-fun m!200207 () Bool)

(assert (=> d!52021 m!200207))

(declare-fun m!200209 () Bool)

(assert (=> b!171532 m!200209))

(declare-fun m!200211 () Bool)

(assert (=> b!171527 m!200211))

(declare-fun m!200213 () Bool)

(assert (=> bm!17462 m!200213))

(assert (=> d!51741 d!52021))

(declare-fun d!52023 () Bool)

(declare-fun e!113222 () Bool)

(assert (=> d!52023 e!113222))

(declare-fun res!81517 () Bool)

(assert (=> d!52023 (=> res!81517 e!113222)))

(declare-fun lt!85436 () Bool)

(assert (=> d!52023 (= res!81517 (not lt!85436))))

(declare-fun lt!85434 () Bool)

(assert (=> d!52023 (= lt!85436 lt!85434)))

(declare-fun lt!85435 () Unit!5249)

(declare-fun e!113221 () Unit!5249)

(assert (=> d!52023 (= lt!85435 e!113221)))

(declare-fun c!30668 () Bool)

(assert (=> d!52023 (= c!30668 lt!85434)))

(assert (=> d!52023 (= lt!85434 (containsKey!187 (toList!1101 lt!85362) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(assert (=> d!52023 (= (contains!1143 lt!85362 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))) lt!85436)))

(declare-fun b!171533 () Bool)

(declare-fun lt!85437 () Unit!5249)

(assert (=> b!171533 (= e!113221 lt!85437)))

(assert (=> b!171533 (= lt!85437 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85362) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(assert (=> b!171533 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85362) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(declare-fun b!171534 () Bool)

(declare-fun Unit!5270 () Unit!5249)

(assert (=> b!171534 (= e!113221 Unit!5270)))

(declare-fun b!171535 () Bool)

(assert (=> b!171535 (= e!113222 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85362) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))))

(assert (= (and d!52023 c!30668) b!171533))

(assert (= (and d!52023 (not c!30668)) b!171534))

(assert (= (and d!52023 (not res!81517)) b!171535))

(declare-fun m!200215 () Bool)

(assert (=> d!52023 m!200215))

(declare-fun m!200217 () Bool)

(assert (=> b!171533 m!200217))

(assert (=> b!171533 m!199853))

(assert (=> b!171533 m!199853))

(declare-fun m!200219 () Bool)

(assert (=> b!171533 m!200219))

(assert (=> b!171535 m!199853))

(assert (=> b!171535 m!199853))

(assert (=> b!171535 m!200219))

(assert (=> d!51843 d!52023))

(declare-fun b!171537 () Bool)

(declare-fun e!113223 () Option!189)

(declare-fun e!113224 () Option!189)

(assert (=> b!171537 (= e!113223 e!113224)))

(declare-fun c!30670 () Bool)

(assert (=> b!171537 (= c!30670 (and ((_ is Cons!2209) lt!85363) (not (= (_1!1625 (h!2826 lt!85363)) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))))

(declare-fun b!171538 () Bool)

(assert (=> b!171538 (= e!113224 (getValueByKey!183 (t!7023 lt!85363) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(declare-fun d!52025 () Bool)

(declare-fun c!30669 () Bool)

(assert (=> d!52025 (= c!30669 (and ((_ is Cons!2209) lt!85363) (= (_1!1625 (h!2826 lt!85363)) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))))

(assert (=> d!52025 (= (getValueByKey!183 lt!85363 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))) e!113223)))

(declare-fun b!171539 () Bool)

(assert (=> b!171539 (= e!113224 None!187)))

(declare-fun b!171536 () Bool)

(assert (=> b!171536 (= e!113223 (Some!188 (_2!1625 (h!2826 lt!85363))))))

(assert (= (and d!52025 c!30669) b!171536))

(assert (= (and d!52025 (not c!30669)) b!171537))

(assert (= (and b!171537 c!30670) b!171538))

(assert (= (and b!171537 (not c!30670)) b!171539))

(declare-fun m!200221 () Bool)

(assert (=> b!171538 m!200221))

(assert (=> d!51843 d!52025))

(declare-fun d!52027 () Bool)

(assert (=> d!52027 (= (getValueByKey!183 lt!85363 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(declare-fun lt!85438 () Unit!5249)

(assert (=> d!52027 (= lt!85438 (choose!932 lt!85363 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(declare-fun e!113225 () Bool)

(assert (=> d!52027 e!113225))

(declare-fun res!81518 () Bool)

(assert (=> d!52027 (=> (not res!81518) (not e!113225))))

(assert (=> d!52027 (= res!81518 (isStrictlySorted!326 lt!85363))))

(assert (=> d!52027 (= (lemmaContainsTupThenGetReturnValue!98 lt!85363 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))) lt!85438)))

(declare-fun b!171540 () Bool)

(declare-fun res!81519 () Bool)

(assert (=> b!171540 (=> (not res!81519) (not e!113225))))

(assert (=> b!171540 (= res!81519 (containsKey!187 lt!85363 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(declare-fun b!171541 () Bool)

(assert (=> b!171541 (= e!113225 (contains!1145 lt!85363 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))))

(assert (= (and d!52027 res!81518) b!171540))

(assert (= (and b!171540 res!81519) b!171541))

(assert (=> d!52027 m!199847))

(declare-fun m!200223 () Bool)

(assert (=> d!52027 m!200223))

(declare-fun m!200225 () Bool)

(assert (=> d!52027 m!200225))

(declare-fun m!200227 () Bool)

(assert (=> b!171540 m!200227))

(declare-fun m!200229 () Bool)

(assert (=> b!171541 m!200229))

(assert (=> d!51843 d!52027))

(declare-fun b!171542 () Bool)

(declare-fun e!113226 () List!2213)

(declare-fun call!17469 () List!2213)

(assert (=> b!171542 (= e!113226 call!17469)))

(declare-fun b!171543 () Bool)

(declare-fun res!81521 () Bool)

(declare-fun e!113230 () Bool)

(assert (=> b!171543 (=> (not res!81521) (not e!113230))))

(declare-fun lt!85439 () List!2213)

(assert (=> b!171543 (= res!81521 (containsKey!187 lt!85439 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(declare-fun b!171544 () Bool)

(declare-fun e!113229 () List!2213)

(declare-fun e!113227 () List!2213)

(assert (=> b!171544 (= e!113229 e!113227)))

(declare-fun c!30672 () Bool)

(assert (=> b!171544 (= c!30672 (and ((_ is Cons!2209) (toList!1101 lt!85148)) (= (_1!1625 (h!2826 (toList!1101 lt!85148))) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))))

(declare-fun b!171545 () Bool)

(declare-fun c!30673 () Bool)

(declare-fun e!113228 () List!2213)

(assert (=> b!171545 (= e!113228 (ite c!30672 (t!7023 (toList!1101 lt!85148)) (ite c!30673 (Cons!2209 (h!2826 (toList!1101 lt!85148)) (t!7023 (toList!1101 lt!85148))) Nil!2210)))))

(declare-fun b!171546 () Bool)

(assert (=> b!171546 (= e!113230 (contains!1145 lt!85439 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))))

(declare-fun b!171547 () Bool)

(declare-fun call!17468 () List!2213)

(assert (=> b!171547 (= e!113229 call!17468)))

(declare-fun c!30674 () Bool)

(declare-fun bm!17465 () Bool)

(assert (=> bm!17465 (= call!17468 ($colon$colon!96 e!113228 (ite c!30674 (h!2826 (toList!1101 lt!85148)) (tuple2!3231 (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))))

(declare-fun c!30671 () Bool)

(assert (=> bm!17465 (= c!30671 c!30674)))

(declare-fun bm!17467 () Bool)

(declare-fun call!17470 () List!2213)

(assert (=> bm!17467 (= call!17469 call!17470)))

(declare-fun b!171548 () Bool)

(assert (=> b!171548 (= e!113227 call!17470)))

(declare-fun b!171549 () Bool)

(assert (=> b!171549 (= e!113226 call!17469)))

(declare-fun b!171550 () Bool)

(assert (=> b!171550 (= c!30673 (and ((_ is Cons!2209) (toList!1101 lt!85148)) (bvsgt (_1!1625 (h!2826 (toList!1101 lt!85148))) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))))

(assert (=> b!171550 (= e!113227 e!113226)))

(declare-fun b!171551 () Bool)

(assert (=> b!171551 (= e!113228 (insertStrictlySorted!100 (t!7023 (toList!1101 lt!85148)) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(declare-fun bm!17466 () Bool)

(assert (=> bm!17466 (= call!17470 call!17468)))

(declare-fun d!52029 () Bool)

(assert (=> d!52029 e!113230))

(declare-fun res!81520 () Bool)

(assert (=> d!52029 (=> (not res!81520) (not e!113230))))

(assert (=> d!52029 (= res!81520 (isStrictlySorted!326 lt!85439))))

(assert (=> d!52029 (= lt!85439 e!113229)))

(assert (=> d!52029 (= c!30674 (and ((_ is Cons!2209) (toList!1101 lt!85148)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85148))) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))))

(assert (=> d!52029 (isStrictlySorted!326 (toList!1101 lt!85148))))

(assert (=> d!52029 (= (insertStrictlySorted!100 (toList!1101 lt!85148) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))) lt!85439)))

(assert (= (and d!52029 c!30674) b!171547))

(assert (= (and d!52029 (not c!30674)) b!171544))

(assert (= (and b!171544 c!30672) b!171548))

(assert (= (and b!171544 (not c!30672)) b!171550))

(assert (= (and b!171550 c!30673) b!171549))

(assert (= (and b!171550 (not c!30673)) b!171542))

(assert (= (or b!171549 b!171542) bm!17467))

(assert (= (or b!171548 bm!17467) bm!17466))

(assert (= (or b!171547 bm!17466) bm!17465))

(assert (= (and bm!17465 c!30671) b!171551))

(assert (= (and bm!17465 (not c!30671)) b!171545))

(assert (= (and d!52029 res!81520) b!171543))

(assert (= (and b!171543 res!81521) b!171546))

(declare-fun m!200231 () Bool)

(assert (=> b!171543 m!200231))

(declare-fun m!200233 () Bool)

(assert (=> d!52029 m!200233))

(declare-fun m!200235 () Bool)

(assert (=> d!52029 m!200235))

(declare-fun m!200237 () Bool)

(assert (=> b!171551 m!200237))

(declare-fun m!200239 () Bool)

(assert (=> b!171546 m!200239))

(declare-fun m!200241 () Bool)

(assert (=> bm!17465 m!200241))

(assert (=> d!51843 d!52029))

(declare-fun d!52031 () Bool)

(declare-fun res!81522 () Bool)

(declare-fun e!113231 () Bool)

(assert (=> d!52031 (=> res!81522 e!113231)))

(assert (=> d!52031 (= res!81522 (and ((_ is Cons!2209) (toList!1101 lt!85177)) (= (_1!1625 (h!2826 (toList!1101 lt!85177))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52031 (= (containsKey!187 (toList!1101 lt!85177) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) e!113231)))

(declare-fun b!171552 () Bool)

(declare-fun e!113232 () Bool)

(assert (=> b!171552 (= e!113231 e!113232)))

(declare-fun res!81523 () Bool)

(assert (=> b!171552 (=> (not res!81523) (not e!113232))))

(assert (=> b!171552 (= res!81523 (and (or (not ((_ is Cons!2209) (toList!1101 lt!85177))) (bvsle (_1!1625 (h!2826 (toList!1101 lt!85177))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))) ((_ is Cons!2209) (toList!1101 lt!85177)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85177))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!171553 () Bool)

(assert (=> b!171553 (= e!113232 (containsKey!187 (t!7023 (toList!1101 lt!85177)) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (= (and d!52031 (not res!81522)) b!171552))

(assert (= (and b!171552 res!81523) b!171553))

(declare-fun m!200243 () Bool)

(assert (=> b!171553 m!200243))

(assert (=> d!51755 d!52031))

(declare-fun d!52033 () Bool)

(assert (=> d!52033 (= (isDefined!137 (getValueByKey!183 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!438 (getValueByKey!183 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!7085 () Bool)

(assert (= bs!7085 d!52033))

(assert (=> bs!7085 m!199441))

(declare-fun m!200245 () Bool)

(assert (=> bs!7085 m!200245))

(assert (=> b!171060 d!52033))

(assert (=> b!171060 d!51879))

(declare-fun d!52035 () Bool)

(assert (=> d!52035 (= (isDefined!137 (getValueByKey!183 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!438 (getValueByKey!183 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!7086 () Bool)

(assert (= bs!7086 d!52035))

(assert (=> bs!7086 m!199405))

(declare-fun m!200247 () Bool)

(assert (=> bs!7086 m!200247))

(assert (=> b!171014 d!52035))

(declare-fun b!171555 () Bool)

(declare-fun e!113233 () Option!189)

(declare-fun e!113234 () Option!189)

(assert (=> b!171555 (= e!113233 e!113234)))

(declare-fun c!30676 () Bool)

(assert (=> b!171555 (= c!30676 (and ((_ is Cons!2209) (toList!1101 lt!85127)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85127))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!171556 () Bool)

(assert (=> b!171556 (= e!113234 (getValueByKey!183 (t!7023 (toList!1101 lt!85127)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!52037 () Bool)

(declare-fun c!30675 () Bool)

(assert (=> d!52037 (= c!30675 (and ((_ is Cons!2209) (toList!1101 lt!85127)) (= (_1!1625 (h!2826 (toList!1101 lt!85127))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52037 (= (getValueByKey!183 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000) e!113233)))

(declare-fun b!171557 () Bool)

(assert (=> b!171557 (= e!113234 None!187)))

(declare-fun b!171554 () Bool)

(assert (=> b!171554 (= e!113233 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85127)))))))

(assert (= (and d!52037 c!30675) b!171554))

(assert (= (and d!52037 (not c!30675)) b!171555))

(assert (= (and b!171555 c!30676) b!171556))

(assert (= (and b!171555 (not c!30676)) b!171557))

(declare-fun m!200249 () Bool)

(assert (=> b!171556 m!200249))

(assert (=> b!171014 d!52037))

(declare-fun b!171558 () Bool)

(declare-fun e!113239 () Bool)

(declare-fun e!113236 () Bool)

(assert (=> b!171558 (= e!113239 e!113236)))

(declare-fun c!30678 () Bool)

(assert (=> b!171558 (= c!30678 (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))

(declare-fun b!171560 () Bool)

(declare-fun e!113235 () Bool)

(assert (=> b!171560 (= e!113235 (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(assert (=> b!171560 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!171561 () Bool)

(declare-fun res!81527 () Bool)

(declare-fun e!113238 () Bool)

(assert (=> b!171561 (=> (not res!81527) (not e!113238))))

(declare-fun lt!85444 () ListLongMap!2171)

(assert (=> b!171561 (= res!81527 (not (contains!1143 lt!85444 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!171562 () Bool)

(declare-fun e!113241 () ListLongMap!2171)

(assert (=> b!171562 (= e!113241 (ListLongMap!2172 Nil!2210))))

(declare-fun b!171563 () Bool)

(declare-fun e!113237 () Bool)

(assert (=> b!171563 (= e!113239 e!113237)))

(assert (=> b!171563 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))

(declare-fun res!81526 () Bool)

(assert (=> b!171563 (= res!81526 (contains!1143 lt!85444 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(assert (=> b!171563 (=> (not res!81526) (not e!113237))))

(declare-fun b!171564 () Bool)

(assert (=> b!171564 (= e!113238 e!113239)))

(declare-fun c!30680 () Bool)

(assert (=> b!171564 (= c!30680 e!113235)))

(declare-fun res!81525 () Bool)

(assert (=> b!171564 (=> (not res!81525) (not e!113235))))

(assert (=> b!171564 (= res!81525 (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))

(declare-fun bm!17468 () Bool)

(declare-fun call!17471 () ListLongMap!2171)

(assert (=> bm!17468 (= call!17471 (getCurrentListMapNoExtraKeys!159 (_keys!5387 lt!85067) (_values!3538 lt!85067) (mask!8383 lt!85067) (extraKeys!3296 lt!85067) (zeroValue!3398 lt!85067) (minValue!3398 lt!85067) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3555 lt!85067)))))

(declare-fun d!52039 () Bool)

(assert (=> d!52039 e!113238))

(declare-fun res!81524 () Bool)

(assert (=> d!52039 (=> (not res!81524) (not e!113238))))

(assert (=> d!52039 (= res!81524 (not (contains!1143 lt!85444 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52039 (= lt!85444 e!113241)))

(declare-fun c!30677 () Bool)

(assert (=> d!52039 (= c!30677 (bvsge #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))

(assert (=> d!52039 (validMask!0 (mask!8383 lt!85067))))

(assert (=> d!52039 (= (getCurrentListMapNoExtraKeys!159 (_keys!5387 lt!85067) (_values!3538 lt!85067) (mask!8383 lt!85067) (extraKeys!3296 lt!85067) (zeroValue!3398 lt!85067) (minValue!3398 lt!85067) #b00000000000000000000000000000000 (defaultEntry!3555 lt!85067)) lt!85444)))

(declare-fun b!171559 () Bool)

(declare-fun e!113240 () ListLongMap!2171)

(assert (=> b!171559 (= e!113241 e!113240)))

(declare-fun c!30679 () Bool)

(assert (=> b!171559 (= c!30679 (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun b!171565 () Bool)

(assert (=> b!171565 (= e!113236 (= lt!85444 (getCurrentListMapNoExtraKeys!159 (_keys!5387 lt!85067) (_values!3538 lt!85067) (mask!8383 lt!85067) (extraKeys!3296 lt!85067) (zeroValue!3398 lt!85067) (minValue!3398 lt!85067) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3555 lt!85067))))))

(declare-fun b!171566 () Bool)

(assert (=> b!171566 (= e!113236 (isEmpty!439 lt!85444))))

(declare-fun b!171567 () Bool)

(assert (=> b!171567 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3681 (_keys!5387 lt!85067))))))

(assert (=> b!171567 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3682 (_values!3538 lt!85067))))))

(assert (=> b!171567 (= e!113237 (= (apply!129 lt!85444 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)) (get!1939 (select (arr!3389 (_values!3538 lt!85067)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 lt!85067) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!171568 () Bool)

(assert (=> b!171568 (= e!113240 call!17471)))

(declare-fun b!171569 () Bool)

(declare-fun lt!85443 () Unit!5249)

(declare-fun lt!85440 () Unit!5249)

(assert (=> b!171569 (= lt!85443 lt!85440)))

(declare-fun lt!85442 () (_ BitVec 64))

(declare-fun lt!85445 () (_ BitVec 64))

(declare-fun lt!85446 () V!4987)

(declare-fun lt!85441 () ListLongMap!2171)

(assert (=> b!171569 (not (contains!1143 (+!239 lt!85441 (tuple2!3231 lt!85442 lt!85446)) lt!85445))))

(assert (=> b!171569 (= lt!85440 (addStillNotContains!73 lt!85441 lt!85442 lt!85446 lt!85445))))

(assert (=> b!171569 (= lt!85445 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!171569 (= lt!85446 (get!1939 (select (arr!3389 (_values!3538 lt!85067)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 lt!85067) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!171569 (= lt!85442 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000))))

(assert (=> b!171569 (= lt!85441 call!17471)))

(assert (=> b!171569 (= e!113240 (+!239 call!17471 (tuple2!3231 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 lt!85067)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 lt!85067) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!52039 c!30677) b!171562))

(assert (= (and d!52039 (not c!30677)) b!171559))

(assert (= (and b!171559 c!30679) b!171569))

(assert (= (and b!171559 (not c!30679)) b!171568))

(assert (= (or b!171569 b!171568) bm!17468))

(assert (= (and d!52039 res!81524) b!171561))

(assert (= (and b!171561 res!81527) b!171564))

(assert (= (and b!171564 res!81525) b!171560))

(assert (= (and b!171564 c!30680) b!171563))

(assert (= (and b!171564 (not c!30680)) b!171558))

(assert (= (and b!171563 res!81526) b!171567))

(assert (= (and b!171558 c!30678) b!171565))

(assert (= (and b!171558 (not c!30678)) b!171566))

(declare-fun b_lambda!6943 () Bool)

(assert (=> (not b_lambda!6943) (not b!171567)))

(assert (=> b!171567 t!7029))

(declare-fun b_and!10683 () Bool)

(assert (= b_and!10681 (and (=> t!7029 result!4575) b_and!10683)))

(declare-fun b_lambda!6945 () Bool)

(assert (=> (not b_lambda!6945) (not b!171569)))

(assert (=> b!171569 t!7029))

(declare-fun b_and!10685 () Bool)

(assert (= b_and!10683 (and (=> t!7029 result!4575) b_and!10685)))

(assert (=> b!171559 m!199523))

(assert (=> b!171559 m!199523))

(assert (=> b!171559 m!199525))

(declare-fun m!200251 () Bool)

(assert (=> b!171565 m!200251))

(assert (=> b!171560 m!199523))

(assert (=> b!171560 m!199523))

(assert (=> b!171560 m!199525))

(assert (=> bm!17468 m!200251))

(declare-fun m!200253 () Bool)

(assert (=> d!52039 m!200253))

(assert (=> d!52039 m!199579))

(assert (=> b!171563 m!199523))

(assert (=> b!171563 m!199523))

(declare-fun m!200255 () Bool)

(assert (=> b!171563 m!200255))

(assert (=> b!171569 m!199637))

(assert (=> b!171569 m!199639))

(assert (=> b!171569 m!199643))

(declare-fun m!200257 () Bool)

(assert (=> b!171569 m!200257))

(assert (=> b!171569 m!199637))

(assert (=> b!171569 m!199639))

(declare-fun m!200259 () Bool)

(assert (=> b!171569 m!200259))

(assert (=> b!171569 m!199523))

(declare-fun m!200261 () Bool)

(assert (=> b!171569 m!200261))

(declare-fun m!200263 () Bool)

(assert (=> b!171569 m!200263))

(assert (=> b!171569 m!200261))

(declare-fun m!200265 () Bool)

(assert (=> b!171566 m!200265))

(assert (=> b!171567 m!199637))

(assert (=> b!171567 m!199639))

(assert (=> b!171567 m!199643))

(assert (=> b!171567 m!199523))

(declare-fun m!200267 () Bool)

(assert (=> b!171567 m!200267))

(assert (=> b!171567 m!199637))

(assert (=> b!171567 m!199639))

(assert (=> b!171567 m!199523))

(declare-fun m!200269 () Bool)

(assert (=> b!171561 m!200269))

(assert (=> bm!17442 d!52039))

(declare-fun d!52041 () Bool)

(declare-fun lt!85447 () Bool)

(assert (=> d!52041 (= lt!85447 (select (content!146 lt!85285) (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun e!113243 () Bool)

(assert (=> d!52041 (= lt!85447 e!113243)))

(declare-fun res!81528 () Bool)

(assert (=> d!52041 (=> (not res!81528) (not e!113243))))

(assert (=> d!52041 (= res!81528 ((_ is Cons!2209) lt!85285))))

(assert (=> d!52041 (= (contains!1145 lt!85285 (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))) lt!85447)))

(declare-fun b!171570 () Bool)

(declare-fun e!113242 () Bool)

(assert (=> b!171570 (= e!113243 e!113242)))

(declare-fun res!81529 () Bool)

(assert (=> b!171570 (=> res!81529 e!113242)))

(assert (=> b!171570 (= res!81529 (= (h!2826 lt!85285) (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!171571 () Bool)

(assert (=> b!171571 (= e!113242 (contains!1145 (t!7023 lt!85285) (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!52041 res!81528) b!171570))

(assert (= (and b!171570 (not res!81529)) b!171571))

(declare-fun m!200271 () Bool)

(assert (=> d!52041 m!200271))

(declare-fun m!200273 () Bool)

(assert (=> d!52041 m!200273))

(declare-fun m!200275 () Bool)

(assert (=> b!171571 m!200275))

(assert (=> b!171172 d!52041))

(declare-fun d!52043 () Bool)

(declare-fun lt!85448 () Bool)

(assert (=> d!52043 (= lt!85448 (select (content!146 (toList!1101 lt!85357)) (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))

(declare-fun e!113245 () Bool)

(assert (=> d!52043 (= lt!85448 e!113245)))

(declare-fun res!81530 () Bool)

(assert (=> d!52043 (=> (not res!81530) (not e!113245))))

(assert (=> d!52043 (= res!81530 ((_ is Cons!2209) (toList!1101 lt!85357)))))

(assert (=> d!52043 (= (contains!1145 (toList!1101 lt!85357) (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) lt!85448)))

(declare-fun b!171572 () Bool)

(declare-fun e!113244 () Bool)

(assert (=> b!171572 (= e!113245 e!113244)))

(declare-fun res!81531 () Bool)

(assert (=> b!171572 (=> res!81531 e!113244)))

(assert (=> b!171572 (= res!81531 (= (h!2826 (toList!1101 lt!85357)) (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))

(declare-fun b!171573 () Bool)

(assert (=> b!171573 (= e!113244 (contains!1145 (t!7023 (toList!1101 lt!85357)) (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))

(assert (= (and d!52043 res!81530) b!171572))

(assert (= (and b!171572 (not res!81531)) b!171573))

(declare-fun m!200277 () Bool)

(assert (=> d!52043 m!200277))

(declare-fun m!200279 () Bool)

(assert (=> d!52043 m!200279))

(declare-fun m!200281 () Bool)

(assert (=> b!171573 m!200281))

(assert (=> b!171269 d!52043))

(declare-fun d!52045 () Bool)

(assert (=> d!52045 (= (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))) lt!85163)) (v!3910 (getValueByKey!183 (toList!1101 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))) lt!85163)))))

(assert (=> d!51839 d!52045))

(declare-fun b!171575 () Bool)

(declare-fun e!113246 () Option!189)

(declare-fun e!113247 () Option!189)

(assert (=> b!171575 (= e!113246 e!113247)))

(declare-fun c!30682 () Bool)

(assert (=> b!171575 (= c!30682 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))) (not (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))) lt!85163))))))

(declare-fun b!171576 () Bool)

(assert (=> b!171576 (= e!113247 (getValueByKey!183 (t!7023 (toList!1101 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))) lt!85163))))

(declare-fun d!52047 () Bool)

(declare-fun c!30681 () Bool)

(assert (=> d!52047 (= c!30681 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))) (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))) lt!85163)))))

(assert (=> d!52047 (= (getValueByKey!183 (toList!1101 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))) lt!85163) e!113246)))

(declare-fun b!171577 () Bool)

(assert (=> b!171577 (= e!113247 None!187)))

(declare-fun b!171574 () Bool)

(assert (=> b!171574 (= e!113246 (Some!188 (_2!1625 (h!2826 (toList!1101 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))))))

(assert (= (and d!52047 c!30681) b!171574))

(assert (= (and d!52047 (not c!30681)) b!171575))

(assert (= (and b!171575 c!30682) b!171576))

(assert (= (and b!171575 (not c!30682)) b!171577))

(declare-fun m!200283 () Bool)

(assert (=> b!171576 m!200283))

(assert (=> d!51839 d!52047))

(assert (=> d!51723 d!51721))

(declare-fun d!52049 () Bool)

(assert (=> d!52049 (= (getValueByKey!183 lt!85194 (_1!1625 (tuple2!3231 key!828 v!309))) (Some!188 (_2!1625 (tuple2!3231 key!828 v!309))))))

(assert (=> d!52049 true))

(declare-fun _$22!532 () Unit!5249)

(assert (=> d!52049 (= (choose!932 lt!85194 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309))) _$22!532)))

(declare-fun bs!7087 () Bool)

(assert (= bs!7087 d!52049))

(assert (=> bs!7087 m!199369))

(assert (=> d!51723 d!52049))

(declare-fun d!52051 () Bool)

(declare-fun res!81532 () Bool)

(declare-fun e!113248 () Bool)

(assert (=> d!52051 (=> res!81532 e!113248)))

(assert (=> d!52051 (= res!81532 (or ((_ is Nil!2210) lt!85194) ((_ is Nil!2210) (t!7023 lt!85194))))))

(assert (=> d!52051 (= (isStrictlySorted!326 lt!85194) e!113248)))

(declare-fun b!171578 () Bool)

(declare-fun e!113249 () Bool)

(assert (=> b!171578 (= e!113248 e!113249)))

(declare-fun res!81533 () Bool)

(assert (=> b!171578 (=> (not res!81533) (not e!113249))))

(assert (=> b!171578 (= res!81533 (bvslt (_1!1625 (h!2826 lt!85194)) (_1!1625 (h!2826 (t!7023 lt!85194)))))))

(declare-fun b!171579 () Bool)

(assert (=> b!171579 (= e!113249 (isStrictlySorted!326 (t!7023 lt!85194)))))

(assert (= (and d!52051 (not res!81532)) b!171578))

(assert (= (and b!171578 res!81533) b!171579))

(declare-fun m!200285 () Bool)

(assert (=> b!171579 m!200285))

(assert (=> d!51723 d!52051))

(declare-fun d!52053 () Bool)

(declare-fun e!113251 () Bool)

(assert (=> d!52053 e!113251))

(declare-fun res!81534 () Bool)

(assert (=> d!52053 (=> res!81534 e!113251)))

(declare-fun lt!85451 () Bool)

(assert (=> d!52053 (= res!81534 (not lt!85451))))

(declare-fun lt!85449 () Bool)

(assert (=> d!52053 (= lt!85451 lt!85449)))

(declare-fun lt!85450 () Unit!5249)

(declare-fun e!113250 () Unit!5249)

(assert (=> d!52053 (= lt!85450 e!113250)))

(declare-fun c!30683 () Bool)

(assert (=> d!52053 (= c!30683 lt!85449)))

(assert (=> d!52053 (= lt!85449 (containsKey!187 (toList!1101 lt!85309) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(assert (=> d!52053 (= (contains!1143 lt!85309 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))) lt!85451)))

(declare-fun b!171580 () Bool)

(declare-fun lt!85452 () Unit!5249)

(assert (=> b!171580 (= e!113250 lt!85452)))

(assert (=> b!171580 (= lt!85452 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85309) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(assert (=> b!171580 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85309) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(declare-fun b!171581 () Bool)

(declare-fun Unit!5271 () Unit!5249)

(assert (=> b!171581 (= e!113250 Unit!5271)))

(declare-fun b!171582 () Bool)

(assert (=> b!171582 (= e!113251 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85309) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))))

(assert (= (and d!52053 c!30683) b!171580))

(assert (= (and d!52053 (not c!30683)) b!171581))

(assert (= (and d!52053 (not res!81534)) b!171582))

(declare-fun m!200287 () Bool)

(assert (=> d!52053 m!200287))

(declare-fun m!200289 () Bool)

(assert (=> b!171580 m!200289))

(assert (=> b!171580 m!199659))

(assert (=> b!171580 m!199659))

(declare-fun m!200291 () Bool)

(assert (=> b!171580 m!200291))

(assert (=> b!171582 m!199659))

(assert (=> b!171582 m!199659))

(assert (=> b!171582 m!200291))

(assert (=> d!51779 d!52053))

(declare-fun b!171584 () Bool)

(declare-fun e!113252 () Option!189)

(declare-fun e!113253 () Option!189)

(assert (=> b!171584 (= e!113252 e!113253)))

(declare-fun c!30685 () Bool)

(assert (=> b!171584 (= c!30685 (and ((_ is Cons!2209) lt!85310) (not (= (_1!1625 (h!2826 lt!85310)) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171585 () Bool)

(assert (=> b!171585 (= e!113253 (getValueByKey!183 (t!7023 lt!85310) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(declare-fun d!52055 () Bool)

(declare-fun c!30684 () Bool)

(assert (=> d!52055 (= c!30684 (and ((_ is Cons!2209) lt!85310) (= (_1!1625 (h!2826 lt!85310)) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))))

(assert (=> d!52055 (= (getValueByKey!183 lt!85310 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))) e!113252)))

(declare-fun b!171586 () Bool)

(assert (=> b!171586 (= e!113253 None!187)))

(declare-fun b!171583 () Bool)

(assert (=> b!171583 (= e!113252 (Some!188 (_2!1625 (h!2826 lt!85310))))))

(assert (= (and d!52055 c!30684) b!171583))

(assert (= (and d!52055 (not c!30684)) b!171584))

(assert (= (and b!171584 c!30685) b!171585))

(assert (= (and b!171584 (not c!30685)) b!171586))

(declare-fun m!200293 () Bool)

(assert (=> b!171585 m!200293))

(assert (=> d!51779 d!52055))

(declare-fun d!52057 () Bool)

(assert (=> d!52057 (= (getValueByKey!183 lt!85310 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(declare-fun lt!85453 () Unit!5249)

(assert (=> d!52057 (= lt!85453 (choose!932 lt!85310 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(declare-fun e!113254 () Bool)

(assert (=> d!52057 e!113254))

(declare-fun res!81535 () Bool)

(assert (=> d!52057 (=> (not res!81535) (not e!113254))))

(assert (=> d!52057 (= res!81535 (isStrictlySorted!326 lt!85310))))

(assert (=> d!52057 (= (lemmaContainsTupThenGetReturnValue!98 lt!85310 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))) lt!85453)))

(declare-fun b!171587 () Bool)

(declare-fun res!81536 () Bool)

(assert (=> b!171587 (=> (not res!81536) (not e!113254))))

(assert (=> b!171587 (= res!81536 (containsKey!187 lt!85310 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(declare-fun b!171588 () Bool)

(assert (=> b!171588 (= e!113254 (contains!1145 lt!85310 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))))

(assert (= (and d!52057 res!81535) b!171587))

(assert (= (and b!171587 res!81536) b!171588))

(assert (=> d!52057 m!199653))

(declare-fun m!200295 () Bool)

(assert (=> d!52057 m!200295))

(declare-fun m!200297 () Bool)

(assert (=> d!52057 m!200297))

(declare-fun m!200299 () Bool)

(assert (=> b!171587 m!200299))

(declare-fun m!200301 () Bool)

(assert (=> b!171588 m!200301))

(assert (=> d!51779 d!52057))

(declare-fun b!171589 () Bool)

(declare-fun e!113255 () List!2213)

(declare-fun call!17473 () List!2213)

(assert (=> b!171589 (= e!113255 call!17473)))

(declare-fun b!171590 () Bool)

(declare-fun res!81538 () Bool)

(declare-fun e!113259 () Bool)

(assert (=> b!171590 (=> (not res!81538) (not e!113259))))

(declare-fun lt!85454 () List!2213)

(assert (=> b!171590 (= res!81538 (containsKey!187 lt!85454 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(declare-fun b!171591 () Bool)

(declare-fun e!113258 () List!2213)

(declare-fun e!113256 () List!2213)

(assert (=> b!171591 (= e!113258 e!113256)))

(declare-fun c!30687 () Bool)

(assert (=> b!171591 (= c!30687 (and ((_ is Cons!2209) (toList!1101 lt!85137)) (= (_1!1625 (h!2826 (toList!1101 lt!85137))) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))))

(declare-fun e!113257 () List!2213)

(declare-fun b!171592 () Bool)

(declare-fun c!30688 () Bool)

(assert (=> b!171592 (= e!113257 (ite c!30687 (t!7023 (toList!1101 lt!85137)) (ite c!30688 (Cons!2209 (h!2826 (toList!1101 lt!85137)) (t!7023 (toList!1101 lt!85137))) Nil!2210)))))

(declare-fun b!171593 () Bool)

(assert (=> b!171593 (= e!113259 (contains!1145 lt!85454 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))))

(declare-fun b!171594 () Bool)

(declare-fun call!17472 () List!2213)

(assert (=> b!171594 (= e!113258 call!17472)))

(declare-fun bm!17469 () Bool)

(declare-fun c!30689 () Bool)

(assert (=> bm!17469 (= call!17472 ($colon$colon!96 e!113257 (ite c!30689 (h!2826 (toList!1101 lt!85137)) (tuple2!3231 (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))))

(declare-fun c!30686 () Bool)

(assert (=> bm!17469 (= c!30686 c!30689)))

(declare-fun bm!17471 () Bool)

(declare-fun call!17474 () List!2213)

(assert (=> bm!17471 (= call!17473 call!17474)))

(declare-fun b!171595 () Bool)

(assert (=> b!171595 (= e!113256 call!17474)))

(declare-fun b!171596 () Bool)

(assert (=> b!171596 (= e!113255 call!17473)))

(declare-fun b!171597 () Bool)

(assert (=> b!171597 (= c!30688 (and ((_ is Cons!2209) (toList!1101 lt!85137)) (bvsgt (_1!1625 (h!2826 (toList!1101 lt!85137))) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))))

(assert (=> b!171597 (= e!113256 e!113255)))

(declare-fun b!171598 () Bool)

(assert (=> b!171598 (= e!113257 (insertStrictlySorted!100 (t!7023 (toList!1101 lt!85137)) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(declare-fun bm!17470 () Bool)

(assert (=> bm!17470 (= call!17474 call!17472)))

(declare-fun d!52059 () Bool)

(assert (=> d!52059 e!113259))

(declare-fun res!81537 () Bool)

(assert (=> d!52059 (=> (not res!81537) (not e!113259))))

(assert (=> d!52059 (= res!81537 (isStrictlySorted!326 lt!85454))))

(assert (=> d!52059 (= lt!85454 e!113258)))

(assert (=> d!52059 (= c!30689 (and ((_ is Cons!2209) (toList!1101 lt!85137)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85137))) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))))

(assert (=> d!52059 (isStrictlySorted!326 (toList!1101 lt!85137))))

(assert (=> d!52059 (= (insertStrictlySorted!100 (toList!1101 lt!85137) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))) lt!85454)))

(assert (= (and d!52059 c!30689) b!171594))

(assert (= (and d!52059 (not c!30689)) b!171591))

(assert (= (and b!171591 c!30687) b!171595))

(assert (= (and b!171591 (not c!30687)) b!171597))

(assert (= (and b!171597 c!30688) b!171596))

(assert (= (and b!171597 (not c!30688)) b!171589))

(assert (= (or b!171596 b!171589) bm!17471))

(assert (= (or b!171595 bm!17471) bm!17470))

(assert (= (or b!171594 bm!17470) bm!17469))

(assert (= (and bm!17469 c!30686) b!171598))

(assert (= (and bm!17469 (not c!30686)) b!171592))

(assert (= (and d!52059 res!81537) b!171590))

(assert (= (and b!171590 res!81538) b!171593))

(declare-fun m!200303 () Bool)

(assert (=> b!171590 m!200303))

(declare-fun m!200305 () Bool)

(assert (=> d!52059 m!200305))

(declare-fun m!200307 () Bool)

(assert (=> d!52059 m!200307))

(declare-fun m!200309 () Bool)

(assert (=> b!171598 m!200309))

(declare-fun m!200311 () Bool)

(assert (=> b!171593 m!200311))

(declare-fun m!200313 () Bool)

(assert (=> bm!17469 m!200313))

(assert (=> d!51779 d!52059))

(declare-fun d!52061 () Bool)

(declare-fun lt!85457 () Bool)

(declare-fun content!147 (List!2215) (InoxSet (_ BitVec 64)))

(assert (=> d!52061 (= lt!85457 (select (content!147 Nil!2212) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!113265 () Bool)

(assert (=> d!52061 (= lt!85457 e!113265)))

(declare-fun res!81544 () Bool)

(assert (=> d!52061 (=> (not res!81544) (not e!113265))))

(assert (=> d!52061 (= res!81544 ((_ is Cons!2211) Nil!2212))))

(assert (=> d!52061 (= (contains!1146 Nil!2212 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) lt!85457)))

(declare-fun b!171603 () Bool)

(declare-fun e!113264 () Bool)

(assert (=> b!171603 (= e!113265 e!113264)))

(declare-fun res!81543 () Bool)

(assert (=> b!171603 (=> res!81543 e!113264)))

(assert (=> b!171603 (= res!81543 (= (h!2828 Nil!2212) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!171604 () Bool)

(assert (=> b!171604 (= e!113264 (contains!1146 (t!7027 Nil!2212) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52061 res!81544) b!171603))

(assert (= (and b!171603 (not res!81543)) b!171604))

(declare-fun m!200315 () Bool)

(assert (=> d!52061 m!200315))

(assert (=> d!52061 m!199219))

(declare-fun m!200317 () Bool)

(assert (=> d!52061 m!200317))

(assert (=> b!171604 m!199219))

(declare-fun m!200319 () Bool)

(assert (=> b!171604 m!200319))

(assert (=> b!171278 d!52061))

(declare-fun d!52063 () Bool)

(declare-fun res!81545 () Bool)

(declare-fun e!113266 () Bool)

(assert (=> d!52063 (=> res!81545 e!113266)))

(assert (=> d!52063 (= res!81545 (and ((_ is Cons!2209) (toList!1101 lt!85152)) (= (_1!1625 (h!2826 (toList!1101 lt!85152))) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!52063 (= (containsKey!187 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) e!113266)))

(declare-fun b!171605 () Bool)

(declare-fun e!113267 () Bool)

(assert (=> b!171605 (= e!113266 e!113267)))

(declare-fun res!81546 () Bool)

(assert (=> b!171605 (=> (not res!81546) (not e!113267))))

(assert (=> b!171605 (= res!81546 (and (or (not ((_ is Cons!2209) (toList!1101 lt!85152))) (bvsle (_1!1625 (h!2826 (toList!1101 lt!85152))) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))) ((_ is Cons!2209) (toList!1101 lt!85152)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85152))) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun b!171606 () Bool)

(assert (=> b!171606 (= e!113267 (containsKey!187 (t!7023 (toList!1101 lt!85152)) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52063 (not res!81545)) b!171605))

(assert (= (and b!171605 res!81546) b!171606))

(assert (=> b!171606 m!199219))

(declare-fun m!200321 () Bool)

(assert (=> b!171606 m!200321))

(assert (=> d!51735 d!52063))

(assert (=> d!51783 d!51791))

(assert (=> d!51783 d!51801))

(declare-fun d!52065 () Bool)

(assert (=> d!52065 (contains!1143 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)) lt!85124)))

(assert (=> d!52065 true))

(declare-fun _$35!407 () Unit!5249)

(assert (=> d!52065 (= (choose!933 lt!85141 lt!85126 v!309 lt!85124) _$35!407)))

(declare-fun bs!7088 () Bool)

(assert (= bs!7088 d!52065))

(assert (=> bs!7088 m!199245))

(assert (=> bs!7088 m!199245))

(assert (=> bs!7088 m!199247))

(assert (=> d!51783 d!52065))

(declare-fun d!52067 () Bool)

(declare-fun e!113269 () Bool)

(assert (=> d!52067 e!113269))

(declare-fun res!81547 () Bool)

(assert (=> d!52067 (=> res!81547 e!113269)))

(declare-fun lt!85460 () Bool)

(assert (=> d!52067 (= res!81547 (not lt!85460))))

(declare-fun lt!85458 () Bool)

(assert (=> d!52067 (= lt!85460 lt!85458)))

(declare-fun lt!85459 () Unit!5249)

(declare-fun e!113268 () Unit!5249)

(assert (=> d!52067 (= lt!85459 e!113268)))

(declare-fun c!30690 () Bool)

(assert (=> d!52067 (= c!30690 lt!85458)))

(assert (=> d!52067 (= lt!85458 (containsKey!187 (toList!1101 lt!85141) lt!85124))))

(assert (=> d!52067 (= (contains!1143 lt!85141 lt!85124) lt!85460)))

(declare-fun b!171608 () Bool)

(declare-fun lt!85461 () Unit!5249)

(assert (=> b!171608 (= e!113268 lt!85461)))

(assert (=> b!171608 (= lt!85461 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85141) lt!85124))))

(assert (=> b!171608 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85141) lt!85124))))

(declare-fun b!171609 () Bool)

(declare-fun Unit!5272 () Unit!5249)

(assert (=> b!171609 (= e!113268 Unit!5272)))

(declare-fun b!171610 () Bool)

(assert (=> b!171610 (= e!113269 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85141) lt!85124)))))

(assert (= (and d!52067 c!30690) b!171608))

(assert (= (and d!52067 (not c!30690)) b!171609))

(assert (= (and d!52067 (not res!81547)) b!171610))

(declare-fun m!200323 () Bool)

(assert (=> d!52067 m!200323))

(declare-fun m!200325 () Bool)

(assert (=> b!171608 m!200325))

(declare-fun m!200327 () Bool)

(assert (=> b!171608 m!200327))

(assert (=> b!171608 m!200327))

(declare-fun m!200329 () Bool)

(assert (=> b!171608 m!200329))

(assert (=> b!171610 m!200327))

(assert (=> b!171610 m!200327))

(assert (=> b!171610 m!200329))

(assert (=> d!51783 d!52067))

(declare-fun d!52069 () Bool)

(assert (=> d!52069 (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))) lt!85124))))

(declare-fun lt!85462 () Unit!5249)

(assert (=> d!52069 (= lt!85462 (choose!931 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))) lt!85124))))

(declare-fun e!113270 () Bool)

(assert (=> d!52069 e!113270))

(declare-fun res!81548 () Bool)

(assert (=> d!52069 (=> (not res!81548) (not e!113270))))

(assert (=> d!52069 (= res!81548 (isStrictlySorted!326 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)))))))

(assert (=> d!52069 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))) lt!85124) lt!85462)))

(declare-fun b!171611 () Bool)

(assert (=> b!171611 (= e!113270 (containsKey!187 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))) lt!85124))))

(assert (= (and d!52069 res!81548) b!171611))

(assert (=> d!52069 m!199695))

(assert (=> d!52069 m!199695))

(assert (=> d!52069 m!199697))

(declare-fun m!200331 () Bool)

(assert (=> d!52069 m!200331))

(declare-fun m!200333 () Bool)

(assert (=> d!52069 m!200333))

(assert (=> b!171611 m!199691))

(assert (=> b!171241 d!52069))

(assert (=> b!171241 d!51959))

(assert (=> b!171241 d!51961))

(declare-fun d!52071 () Bool)

(declare-fun lt!85463 () Bool)

(assert (=> d!52071 (= lt!85463 (select (content!146 (toList!1101 lt!85324)) (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))

(declare-fun e!113272 () Bool)

(assert (=> d!52071 (= lt!85463 e!113272)))

(declare-fun res!81549 () Bool)

(assert (=> d!52071 (=> (not res!81549) (not e!113272))))

(assert (=> d!52071 (= res!81549 ((_ is Cons!2209) (toList!1101 lt!85324)))))

(assert (=> d!52071 (= (contains!1145 (toList!1101 lt!85324) (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) lt!85463)))

(declare-fun b!171612 () Bool)

(declare-fun e!113271 () Bool)

(assert (=> b!171612 (= e!113272 e!113271)))

(declare-fun res!81550 () Bool)

(assert (=> b!171612 (=> res!81550 e!113271)))

(assert (=> b!171612 (= res!81550 (= (h!2826 (toList!1101 lt!85324)) (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))

(declare-fun b!171613 () Bool)

(assert (=> b!171613 (= e!113271 (contains!1145 (t!7023 (toList!1101 lt!85324)) (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))

(assert (= (and d!52071 res!81549) b!171612))

(assert (= (and b!171612 (not res!81550)) b!171613))

(declare-fun m!200335 () Bool)

(assert (=> d!52071 m!200335))

(declare-fun m!200337 () Bool)

(assert (=> d!52071 m!200337))

(declare-fun m!200339 () Bool)

(assert (=> b!171613 m!200339))

(assert (=> b!171245 d!52071))

(declare-fun d!52073 () Bool)

(assert (=> d!52073 (= (apply!129 (+!239 lt!85158 (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) lt!85150) (apply!129 lt!85158 lt!85150))))

(assert (=> d!52073 true))

(declare-fun _$34!1044 () Unit!5249)

(assert (=> d!52073 (= (choose!934 lt!85158 lt!85157 (minValue!3398 thiss!1248) lt!85150) _$34!1044)))

(declare-fun bs!7089 () Bool)

(assert (= bs!7089 d!52073))

(assert (=> bs!7089 m!199305))

(assert (=> bs!7089 m!199305))

(assert (=> bs!7089 m!199323))

(assert (=> bs!7089 m!199315))

(assert (=> d!51827 d!52073))

(assert (=> d!51827 d!51825))

(assert (=> d!51827 d!51829))

(declare-fun d!52075 () Bool)

(declare-fun e!113274 () Bool)

(assert (=> d!52075 e!113274))

(declare-fun res!81551 () Bool)

(assert (=> d!52075 (=> res!81551 e!113274)))

(declare-fun lt!85466 () Bool)

(assert (=> d!52075 (= res!81551 (not lt!85466))))

(declare-fun lt!85464 () Bool)

(assert (=> d!52075 (= lt!85466 lt!85464)))

(declare-fun lt!85465 () Unit!5249)

(declare-fun e!113273 () Unit!5249)

(assert (=> d!52075 (= lt!85465 e!113273)))

(declare-fun c!30691 () Bool)

(assert (=> d!52075 (= c!30691 lt!85464)))

(assert (=> d!52075 (= lt!85464 (containsKey!187 (toList!1101 lt!85158) lt!85150))))

(assert (=> d!52075 (= (contains!1143 lt!85158 lt!85150) lt!85466)))

(declare-fun b!171615 () Bool)

(declare-fun lt!85467 () Unit!5249)

(assert (=> b!171615 (= e!113273 lt!85467)))

(assert (=> b!171615 (= lt!85467 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85158) lt!85150))))

(assert (=> b!171615 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85158) lt!85150))))

(declare-fun b!171616 () Bool)

(declare-fun Unit!5273 () Unit!5249)

(assert (=> b!171616 (= e!113273 Unit!5273)))

(declare-fun b!171617 () Bool)

(assert (=> b!171617 (= e!113274 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85158) lt!85150)))))

(assert (= (and d!52075 c!30691) b!171615))

(assert (= (and d!52075 (not c!30691)) b!171616))

(assert (= (and d!52075 (not res!81551)) b!171617))

(declare-fun m!200341 () Bool)

(assert (=> d!52075 m!200341))

(declare-fun m!200343 () Bool)

(assert (=> b!171615 m!200343))

(assert (=> b!171615 m!199793))

(assert (=> b!171615 m!199793))

(declare-fun m!200345 () Bool)

(assert (=> b!171615 m!200345))

(assert (=> b!171617 m!199793))

(assert (=> b!171617 m!199793))

(assert (=> b!171617 m!200345))

(assert (=> d!51827 d!52075))

(assert (=> d!51827 d!51837))

(declare-fun bm!17472 () Bool)

(declare-fun c!30692 () Bool)

(declare-fun call!17475 () Bool)

(assert (=> bm!17472 (= call!17475 (arrayNoDuplicates!0 (_keys!5387 lt!85067) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!30692 (Cons!2211 (select (arr!3388 (_keys!5387 lt!85067)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!30569 (Cons!2211 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) Nil!2212) Nil!2212)) (ite c!30569 (Cons!2211 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) Nil!2212) Nil!2212))))))

(declare-fun b!171618 () Bool)

(declare-fun e!113278 () Bool)

(assert (=> b!171618 (= e!113278 call!17475)))

(declare-fun b!171619 () Bool)

(declare-fun e!113277 () Bool)

(assert (=> b!171619 (= e!113277 e!113278)))

(assert (=> b!171619 (= c!30692 (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!171620 () Bool)

(assert (=> b!171620 (= e!113278 call!17475)))

(declare-fun b!171621 () Bool)

(declare-fun e!113275 () Bool)

(assert (=> b!171621 (= e!113275 (contains!1146 (ite c!30569 (Cons!2211 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) Nil!2212) Nil!2212) (select (arr!3388 (_keys!5387 lt!85067)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!171622 () Bool)

(declare-fun e!113276 () Bool)

(assert (=> b!171622 (= e!113276 e!113277)))

(declare-fun res!81552 () Bool)

(assert (=> b!171622 (=> (not res!81552) (not e!113277))))

(assert (=> b!171622 (= res!81552 (not e!113275))))

(declare-fun res!81554 () Bool)

(assert (=> b!171622 (=> (not res!81554) (not e!113275))))

(assert (=> b!171622 (= res!81554 (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!52077 () Bool)

(declare-fun res!81553 () Bool)

(assert (=> d!52077 (=> res!81553 e!113276)))

(assert (=> d!52077 (= res!81553 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 lt!85067))))))

(assert (=> d!52077 (= (arrayNoDuplicates!0 (_keys!5387 lt!85067) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30569 (Cons!2211 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000) Nil!2212) Nil!2212)) e!113276)))

(assert (= (and d!52077 (not res!81553)) b!171622))

(assert (= (and b!171622 res!81554) b!171621))

(assert (= (and b!171622 res!81552) b!171619))

(assert (= (and b!171619 c!30692) b!171618))

(assert (= (and b!171619 (not c!30692)) b!171620))

(assert (= (or b!171618 b!171620) bm!17472))

(assert (=> bm!17472 m!200093))

(declare-fun m!200347 () Bool)

(assert (=> bm!17472 m!200347))

(assert (=> b!171619 m!200093))

(assert (=> b!171619 m!200093))

(assert (=> b!171619 m!200095))

(assert (=> b!171621 m!200093))

(assert (=> b!171621 m!200093))

(declare-fun m!200349 () Bool)

(assert (=> b!171621 m!200349))

(assert (=> b!171622 m!200093))

(assert (=> b!171622 m!200093))

(assert (=> b!171622 m!200095))

(assert (=> bm!17437 d!52077))

(declare-fun b!171624 () Bool)

(declare-fun e!113279 () Option!189)

(declare-fun e!113280 () Option!189)

(assert (=> b!171624 (= e!113279 e!113280)))

(declare-fun c!30694 () Bool)

(assert (=> b!171624 (= c!30694 (and ((_ is Cons!2209) (toList!1101 lt!85254)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85254))) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))))

(declare-fun b!171625 () Bool)

(assert (=> b!171625 (= e!113280 (getValueByKey!183 (t!7023 (toList!1101 lt!85254)) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun d!52079 () Bool)

(declare-fun c!30693 () Bool)

(assert (=> d!52079 (= c!30693 (and ((_ is Cons!2209) (toList!1101 lt!85254)) (= (_1!1625 (h!2826 (toList!1101 lt!85254))) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(assert (=> d!52079 (= (getValueByKey!183 (toList!1101 lt!85254) (_1!1625 (ite (or c!30493 c!30491) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) e!113279)))

(declare-fun b!171626 () Bool)

(assert (=> b!171626 (= e!113280 None!187)))

(declare-fun b!171623 () Bool)

(assert (=> b!171623 (= e!113279 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85254)))))))

(assert (= (and d!52079 c!30693) b!171623))

(assert (= (and d!52079 (not c!30693)) b!171624))

(assert (= (and b!171624 c!30694) b!171625))

(assert (= (and b!171624 (not c!30694)) b!171626))

(declare-fun m!200351 () Bool)

(assert (=> b!171625 m!200351))

(assert (=> b!171115 d!52079))

(declare-fun b!171628 () Bool)

(declare-fun e!113281 () Option!189)

(declare-fun e!113282 () Option!189)

(assert (=> b!171628 (= e!113281 e!113282)))

(declare-fun c!30696 () Bool)

(assert (=> b!171628 (= c!30696 (and ((_ is Cons!2209) (toList!1101 lt!85362)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85362))) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))))

(declare-fun b!171629 () Bool)

(assert (=> b!171629 (= e!113282 (getValueByKey!183 (t!7023 (toList!1101 lt!85362)) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))))))

(declare-fun c!30695 () Bool)

(declare-fun d!52081 () Bool)

(assert (=> d!52081 (= c!30695 (and ((_ is Cons!2209) (toList!1101 lt!85362)) (= (_1!1625 (h!2826 (toList!1101 lt!85362))) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))))))))

(assert (=> d!52081 (= (getValueByKey!183 (toList!1101 lt!85362) (_1!1625 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248)))) e!113281)))

(declare-fun b!171630 () Bool)

(assert (=> b!171630 (= e!113282 None!187)))

(declare-fun b!171627 () Bool)

(assert (=> b!171627 (= e!113281 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85362)))))))

(assert (= (and d!52081 c!30695) b!171627))

(assert (= (and d!52081 (not c!30695)) b!171628))

(assert (= (and b!171628 c!30696) b!171629))

(assert (= (and b!171628 (not c!30696)) b!171630))

(declare-fun m!200353 () Bool)

(assert (=> b!171629 m!200353))

(assert (=> b!171271 d!52081))

(declare-fun d!52083 () Bool)

(declare-fun e!113284 () Bool)

(assert (=> d!52083 e!113284))

(declare-fun res!81555 () Bool)

(assert (=> d!52083 (=> res!81555 e!113284)))

(declare-fun lt!85470 () Bool)

(assert (=> d!52083 (= res!81555 (not lt!85470))))

(declare-fun lt!85468 () Bool)

(assert (=> d!52083 (= lt!85470 lt!85468)))

(declare-fun lt!85469 () Unit!5249)

(declare-fun e!113283 () Unit!5249)

(assert (=> d!52083 (= lt!85469 e!113283)))

(declare-fun c!30697 () Bool)

(assert (=> d!52083 (= c!30697 lt!85468)))

(assert (=> d!52083 (= lt!85468 (containsKey!187 (toList!1101 lt!85261) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52083 (= (contains!1143 lt!85261 #b1000000000000000000000000000000000000000000000000000000000000000) lt!85470)))

(declare-fun b!171631 () Bool)

(declare-fun lt!85471 () Unit!5249)

(assert (=> b!171631 (= e!113283 lt!85471)))

(assert (=> b!171631 (= lt!85471 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85261) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171631 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85261) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!171632 () Bool)

(declare-fun Unit!5274 () Unit!5249)

(assert (=> b!171632 (= e!113283 Unit!5274)))

(declare-fun b!171633 () Bool)

(assert (=> b!171633 (= e!113284 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85261) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52083 c!30697) b!171631))

(assert (= (and d!52083 (not c!30697)) b!171632))

(assert (= (and d!52083 (not res!81555)) b!171633))

(declare-fun m!200355 () Bool)

(assert (=> d!52083 m!200355))

(declare-fun m!200357 () Bool)

(assert (=> b!171631 m!200357))

(declare-fun m!200359 () Bool)

(assert (=> b!171631 m!200359))

(assert (=> b!171631 m!200359))

(declare-fun m!200361 () Bool)

(assert (=> b!171631 m!200361))

(assert (=> b!171633 m!200359))

(assert (=> b!171633 m!200359))

(assert (=> b!171633 m!200361))

(assert (=> b!171120 d!52083))

(declare-fun d!52085 () Bool)

(assert (=> d!52085 (= (apply!129 (+!239 lt!85123 (tuple2!3231 lt!85129 v!309)) lt!85138) (apply!129 lt!85123 lt!85138))))

(assert (=> d!52085 true))

(declare-fun _$34!1045 () Unit!5249)

(assert (=> d!52085 (= (choose!934 lt!85123 lt!85129 v!309 lt!85138) _$34!1045)))

(declare-fun bs!7090 () Bool)

(assert (= bs!7090 d!52085))

(assert (=> bs!7090 m!199235))

(assert (=> bs!7090 m!199235))

(assert (=> bs!7090 m!199237))

(assert (=> bs!7090 m!199233))

(assert (=> d!51797 d!52085))

(assert (=> d!51797 d!51781))

(assert (=> d!51797 d!51789))

(assert (=> d!51797 d!51805))

(declare-fun d!52087 () Bool)

(declare-fun e!113286 () Bool)

(assert (=> d!52087 e!113286))

(declare-fun res!81556 () Bool)

(assert (=> d!52087 (=> res!81556 e!113286)))

(declare-fun lt!85474 () Bool)

(assert (=> d!52087 (= res!81556 (not lt!85474))))

(declare-fun lt!85472 () Bool)

(assert (=> d!52087 (= lt!85474 lt!85472)))

(declare-fun lt!85473 () Unit!5249)

(declare-fun e!113285 () Unit!5249)

(assert (=> d!52087 (= lt!85473 e!113285)))

(declare-fun c!30698 () Bool)

(assert (=> d!52087 (= c!30698 lt!85472)))

(assert (=> d!52087 (= lt!85472 (containsKey!187 (toList!1101 lt!85123) lt!85138))))

(assert (=> d!52087 (= (contains!1143 lt!85123 lt!85138) lt!85474)))

(declare-fun b!171634 () Bool)

(declare-fun lt!85475 () Unit!5249)

(assert (=> b!171634 (= e!113285 lt!85475)))

(assert (=> b!171634 (= lt!85475 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85123) lt!85138))))

(assert (=> b!171634 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85123) lt!85138))))

(declare-fun b!171635 () Bool)

(declare-fun Unit!5275 () Unit!5249)

(assert (=> b!171635 (= e!113285 Unit!5275)))

(declare-fun b!171636 () Bool)

(assert (=> b!171636 (= e!113286 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85123) lt!85138)))))

(assert (= (and d!52087 c!30698) b!171634))

(assert (= (and d!52087 (not c!30698)) b!171635))

(assert (= (and d!52087 (not res!81556)) b!171636))

(declare-fun m!200363 () Bool)

(assert (=> d!52087 m!200363))

(declare-fun m!200365 () Bool)

(assert (=> b!171634 m!200365))

(assert (=> b!171634 m!199687))

(assert (=> b!171634 m!199687))

(declare-fun m!200367 () Bool)

(assert (=> b!171634 m!200367))

(assert (=> b!171636 m!199687))

(assert (=> b!171636 m!199687))

(assert (=> b!171636 m!200367))

(assert (=> d!51797 d!52087))

(declare-fun d!52089 () Bool)

(assert (=> d!52089 (= (size!3685 lt!85067) (bvadd (_size!1162 lt!85067) (bvsdiv (bvadd (extraKeys!3296 lt!85067) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!171188 d!52089))

(declare-fun b!171637 () Bool)

(declare-fun e!113291 () Bool)

(declare-fun e!113288 () Bool)

(assert (=> b!171637 (= e!113291 e!113288)))

(declare-fun c!30700 () Bool)

(assert (=> b!171637 (= c!30700 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun b!171639 () Bool)

(declare-fun e!113287 () Bool)

(assert (=> b!171639 (= e!113287 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!171639 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!171640 () Bool)

(declare-fun res!81560 () Bool)

(declare-fun e!113290 () Bool)

(assert (=> b!171640 (=> (not res!81560) (not e!113290))))

(declare-fun lt!85480 () ListLongMap!2171)

(assert (=> b!171640 (= res!81560 (not (contains!1143 lt!85480 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!171641 () Bool)

(declare-fun e!113293 () ListLongMap!2171)

(assert (=> b!171641 (= e!113293 (ListLongMap!2172 Nil!2210))))

(declare-fun b!171642 () Bool)

(declare-fun e!113289 () Bool)

(assert (=> b!171642 (= e!113291 e!113289)))

(assert (=> b!171642 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun res!81559 () Bool)

(assert (=> b!171642 (= res!81559 (contains!1143 lt!85480 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!171642 (=> (not res!81559) (not e!113289))))

(declare-fun b!171643 () Bool)

(assert (=> b!171643 (= e!113290 e!113291)))

(declare-fun c!30702 () Bool)

(assert (=> b!171643 (= c!30702 e!113287)))

(declare-fun res!81558 () Bool)

(assert (=> b!171643 (=> (not res!81558) (not e!113287))))

(assert (=> b!171643 (= res!81558 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun bm!17473 () Bool)

(declare-fun call!17476 () ListLongMap!2171)

(assert (=> bm!17473 (= call!17476 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3555 thiss!1248)))))

(declare-fun d!52091 () Bool)

(assert (=> d!52091 e!113290))

(declare-fun res!81557 () Bool)

(assert (=> d!52091 (=> (not res!81557) (not e!113290))))

(assert (=> d!52091 (= res!81557 (not (contains!1143 lt!85480 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52091 (= lt!85480 e!113293)))

(declare-fun c!30699 () Bool)

(assert (=> d!52091 (= c!30699 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> d!52091 (validMask!0 (mask!8383 thiss!1248))))

(assert (=> d!52091 (= (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3555 thiss!1248)) lt!85480)))

(declare-fun b!171638 () Bool)

(declare-fun e!113292 () ListLongMap!2171)

(assert (=> b!171638 (= e!113293 e!113292)))

(declare-fun c!30701 () Bool)

(assert (=> b!171638 (= c!30701 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!171644 () Bool)

(assert (=> b!171644 (= e!113288 (= lt!85480 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3555 thiss!1248))))))

(declare-fun b!171645 () Bool)

(assert (=> b!171645 (= e!113288 (isEmpty!439 lt!85480))))

(declare-fun b!171646 () Bool)

(assert (=> b!171646 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> b!171646 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3682 (_values!3538 thiss!1248))))))

(assert (=> b!171646 (= e!113289 (= (apply!129 lt!85480 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!171647 () Bool)

(assert (=> b!171647 (= e!113292 call!17476)))

(declare-fun b!171648 () Bool)

(declare-fun lt!85479 () Unit!5249)

(declare-fun lt!85476 () Unit!5249)

(assert (=> b!171648 (= lt!85479 lt!85476)))

(declare-fun lt!85481 () (_ BitVec 64))

(declare-fun lt!85482 () V!4987)

(declare-fun lt!85477 () ListLongMap!2171)

(declare-fun lt!85478 () (_ BitVec 64))

(assert (=> b!171648 (not (contains!1143 (+!239 lt!85477 (tuple2!3231 lt!85478 lt!85482)) lt!85481))))

(assert (=> b!171648 (= lt!85476 (addStillNotContains!73 lt!85477 lt!85478 lt!85482 lt!85481))))

(assert (=> b!171648 (= lt!85481 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!171648 (= lt!85482 (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!171648 (= lt!85478 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!171648 (= lt!85477 call!17476)))

(assert (=> b!171648 (= e!113292 (+!239 call!17476 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!52091 c!30699) b!171641))

(assert (= (and d!52091 (not c!30699)) b!171638))

(assert (= (and b!171638 c!30701) b!171648))

(assert (= (and b!171638 (not c!30701)) b!171647))

(assert (= (or b!171648 b!171647) bm!17473))

(assert (= (and d!52091 res!81557) b!171640))

(assert (= (and b!171640 res!81560) b!171643))

(assert (= (and b!171643 res!81558) b!171639))

(assert (= (and b!171643 c!30702) b!171642))

(assert (= (and b!171643 (not c!30702)) b!171637))

(assert (= (and b!171642 res!81559) b!171646))

(assert (= (and b!171637 c!30700) b!171644))

(assert (= (and b!171637 (not c!30700)) b!171645))

(declare-fun b_lambda!6947 () Bool)

(assert (=> (not b_lambda!6947) (not b!171646)))

(assert (=> b!171646 t!7026))

(declare-fun b_and!10687 () Bool)

(assert (= b_and!10685 (and (=> t!7026 result!4569) b_and!10687)))

(declare-fun b_lambda!6949 () Bool)

(assert (=> (not b_lambda!6949) (not b!171648)))

(assert (=> b!171648 t!7026))

(declare-fun b_and!10689 () Bool)

(assert (= b_and!10687 (and (=> t!7026 result!4569) b_and!10689)))

(assert (=> b!171638 m!200031))

(assert (=> b!171638 m!200031))

(assert (=> b!171638 m!200033))

(declare-fun m!200369 () Bool)

(assert (=> b!171644 m!200369))

(assert (=> b!171639 m!200031))

(assert (=> b!171639 m!200031))

(assert (=> b!171639 m!200033))

(assert (=> bm!17473 m!200369))

(declare-fun m!200371 () Bool)

(assert (=> d!52091 m!200371))

(assert (=> d!52091 m!199273))

(assert (=> b!171642 m!200031))

(assert (=> b!171642 m!200031))

(declare-fun m!200373 () Bool)

(assert (=> b!171642 m!200373))

(declare-fun m!200375 () Bool)

(assert (=> b!171648 m!200375))

(assert (=> b!171648 m!199267))

(declare-fun m!200377 () Bool)

(assert (=> b!171648 m!200377))

(declare-fun m!200379 () Bool)

(assert (=> b!171648 m!200379))

(assert (=> b!171648 m!200375))

(assert (=> b!171648 m!199267))

(declare-fun m!200381 () Bool)

(assert (=> b!171648 m!200381))

(assert (=> b!171648 m!200031))

(declare-fun m!200383 () Bool)

(assert (=> b!171648 m!200383))

(declare-fun m!200385 () Bool)

(assert (=> b!171648 m!200385))

(assert (=> b!171648 m!200383))

(declare-fun m!200387 () Bool)

(assert (=> b!171645 m!200387))

(assert (=> b!171646 m!200375))

(assert (=> b!171646 m!199267))

(assert (=> b!171646 m!200377))

(assert (=> b!171646 m!200031))

(declare-fun m!200389 () Bool)

(assert (=> b!171646 m!200389))

(assert (=> b!171646 m!200375))

(assert (=> b!171646 m!199267))

(assert (=> b!171646 m!200031))

(declare-fun m!200391 () Bool)

(assert (=> b!171640 m!200391))

(assert (=> b!171124 d!52091))

(declare-fun d!52093 () Bool)

(declare-fun lt!85483 () Bool)

(assert (=> d!52093 (= lt!85483 (select (content!146 (toList!1101 lt!85309)) (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))

(declare-fun e!113295 () Bool)

(assert (=> d!52093 (= lt!85483 e!113295)))

(declare-fun res!81561 () Bool)

(assert (=> d!52093 (=> (not res!81561) (not e!113295))))

(assert (=> d!52093 (= res!81561 ((_ is Cons!2209) (toList!1101 lt!85309)))))

(assert (=> d!52093 (= (contains!1145 (toList!1101 lt!85309) (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) lt!85483)))

(declare-fun b!171649 () Bool)

(declare-fun e!113294 () Bool)

(assert (=> b!171649 (= e!113295 e!113294)))

(declare-fun res!81562 () Bool)

(assert (=> b!171649 (=> res!81562 e!113294)))

(assert (=> b!171649 (= res!81562 (= (h!2826 (toList!1101 lt!85309)) (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))

(declare-fun b!171650 () Bool)

(assert (=> b!171650 (= e!113294 (contains!1145 (t!7023 (toList!1101 lt!85309)) (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))

(assert (= (and d!52093 res!81561) b!171649))

(assert (= (and b!171649 (not res!81562)) b!171650))

(declare-fun m!200393 () Bool)

(assert (=> d!52093 m!200393))

(declare-fun m!200395 () Bool)

(assert (=> d!52093 m!200395))

(declare-fun m!200397 () Bool)

(assert (=> b!171650 m!200397))

(assert (=> b!171237 d!52093))

(declare-fun d!52095 () Bool)

(declare-fun e!113297 () Bool)

(assert (=> d!52095 e!113297))

(declare-fun res!81563 () Bool)

(assert (=> d!52095 (=> res!81563 e!113297)))

(declare-fun lt!85486 () Bool)

(assert (=> d!52095 (= res!81563 (not lt!85486))))

(declare-fun lt!85484 () Bool)

(assert (=> d!52095 (= lt!85486 lt!85484)))

(declare-fun lt!85485 () Unit!5249)

(declare-fun e!113296 () Unit!5249)

(assert (=> d!52095 (= lt!85485 e!113296)))

(declare-fun c!30703 () Bool)

(assert (=> d!52095 (= c!30703 lt!85484)))

(assert (=> d!52095 (= lt!85484 (containsKey!187 (toList!1101 lt!85243) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!52095 (= (contains!1143 lt!85243 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) lt!85486)))

(declare-fun b!171651 () Bool)

(declare-fun lt!85487 () Unit!5249)

(assert (=> b!171651 (= e!113296 lt!85487)))

(assert (=> b!171651 (= lt!85487 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85243) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!171651 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85243) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!171652 () Bool)

(declare-fun Unit!5276 () Unit!5249)

(assert (=> b!171652 (= e!113296 Unit!5276)))

(declare-fun b!171653 () Bool)

(assert (=> b!171653 (= e!113297 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85243) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!52095 c!30703) b!171651))

(assert (= (and d!52095 (not c!30703)) b!171652))

(assert (= (and d!52095 (not res!81563)) b!171653))

(assert (=> d!52095 m!199219))

(declare-fun m!200399 () Bool)

(assert (=> d!52095 m!200399))

(assert (=> b!171651 m!199219))

(declare-fun m!200401 () Bool)

(assert (=> b!171651 m!200401))

(assert (=> b!171651 m!199219))

(assert (=> b!171651 m!200081))

(assert (=> b!171651 m!200081))

(declare-fun m!200403 () Bool)

(assert (=> b!171651 m!200403))

(assert (=> b!171653 m!199219))

(assert (=> b!171653 m!200081))

(assert (=> b!171653 m!200081))

(assert (=> b!171653 m!200403))

(assert (=> b!171093 d!52095))

(declare-fun d!52097 () Bool)

(declare-fun lt!85488 () Bool)

(assert (=> d!52097 (= lt!85488 (select (content!146 lt!85216) (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309)))))))

(declare-fun e!113299 () Bool)

(assert (=> d!52097 (= lt!85488 e!113299)))

(declare-fun res!81564 () Bool)

(assert (=> d!52097 (=> (not res!81564) (not e!113299))))

(assert (=> d!52097 (= res!81564 ((_ is Cons!2209) lt!85216))))

(assert (=> d!52097 (= (contains!1145 lt!85216 (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309)))) lt!85488)))

(declare-fun b!171654 () Bool)

(declare-fun e!113298 () Bool)

(assert (=> b!171654 (= e!113299 e!113298)))

(declare-fun res!81565 () Bool)

(assert (=> b!171654 (=> res!81565 e!113298)))

(assert (=> b!171654 (= res!81565 (= (h!2826 lt!85216) (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309)))))))

(declare-fun b!171655 () Bool)

(assert (=> b!171655 (= e!113298 (contains!1145 (t!7023 lt!85216) (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309)))))))

(assert (= (and d!52097 res!81564) b!171654))

(assert (= (and b!171654 (not res!81565)) b!171655))

(declare-fun m!200405 () Bool)

(assert (=> d!52097 m!200405))

(declare-fun m!200407 () Bool)

(assert (=> d!52097 m!200407))

(declare-fun m!200409 () Bool)

(assert (=> b!171655 m!200409))

(assert (=> b!171052 d!52097))

(declare-fun d!52099 () Bool)

(declare-fun e!113301 () Bool)

(assert (=> d!52099 e!113301))

(declare-fun res!81566 () Bool)

(assert (=> d!52099 (=> res!81566 e!113301)))

(declare-fun lt!85491 () Bool)

(assert (=> d!52099 (= res!81566 (not lt!85491))))

(declare-fun lt!85489 () Bool)

(assert (=> d!52099 (= lt!85491 lt!85489)))

(declare-fun lt!85490 () Unit!5249)

(declare-fun e!113300 () Unit!5249)

(assert (=> d!52099 (= lt!85490 e!113300)))

(declare-fun c!30704 () Bool)

(assert (=> d!52099 (= c!30704 lt!85489)))

(assert (=> d!52099 (= lt!85489 (containsKey!187 (toList!1101 lt!85197) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (=> d!52099 (= (contains!1143 lt!85197 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) lt!85491)))

(declare-fun b!171656 () Bool)

(declare-fun lt!85492 () Unit!5249)

(assert (=> b!171656 (= e!113300 lt!85492)))

(assert (=> b!171656 (= lt!85492 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85197) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (=> b!171656 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85197) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun b!171657 () Bool)

(declare-fun Unit!5277 () Unit!5249)

(assert (=> b!171657 (= e!113300 Unit!5277)))

(declare-fun b!171658 () Bool)

(assert (=> b!171658 (= e!113301 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85197) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (= (and d!52099 c!30704) b!171656))

(assert (= (and d!52099 (not c!30704)) b!171657))

(assert (= (and d!52099 (not res!81566)) b!171658))

(declare-fun m!200411 () Bool)

(assert (=> d!52099 m!200411))

(declare-fun m!200413 () Bool)

(assert (=> b!171656 m!200413))

(assert (=> b!171656 m!199389))

(assert (=> b!171656 m!199389))

(declare-fun m!200415 () Bool)

(assert (=> b!171656 m!200415))

(assert (=> b!171658 m!199389))

(assert (=> b!171658 m!199389))

(assert (=> b!171658 m!200415))

(assert (=> d!51707 d!52099))

(declare-fun b!171660 () Bool)

(declare-fun e!113302 () Option!189)

(declare-fun e!113303 () Option!189)

(assert (=> b!171660 (= e!113302 e!113303)))

(declare-fun c!30706 () Bool)

(assert (=> b!171660 (= c!30706 (and ((_ is Cons!2209) lt!85198) (not (= (_1!1625 (h!2826 lt!85198)) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171661 () Bool)

(assert (=> b!171661 (= e!113303 (getValueByKey!183 (t!7023 lt!85198) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun d!52101 () Bool)

(declare-fun c!30705 () Bool)

(assert (=> d!52101 (= c!30705 (and ((_ is Cons!2209) lt!85198) (= (_1!1625 (h!2826 lt!85198)) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!52101 (= (getValueByKey!183 lt!85198 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) e!113302)))

(declare-fun b!171662 () Bool)

(assert (=> b!171662 (= e!113303 None!187)))

(declare-fun b!171659 () Bool)

(assert (=> b!171659 (= e!113302 (Some!188 (_2!1625 (h!2826 lt!85198))))))

(assert (= (and d!52101 c!30705) b!171659))

(assert (= (and d!52101 (not c!30705)) b!171660))

(assert (= (and b!171660 c!30706) b!171661))

(assert (= (and b!171660 (not c!30706)) b!171662))

(declare-fun m!200417 () Bool)

(assert (=> b!171661 m!200417))

(assert (=> d!51707 d!52101))

(declare-fun d!52103 () Bool)

(assert (=> d!52103 (= (getValueByKey!183 lt!85198 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun lt!85493 () Unit!5249)

(assert (=> d!52103 (= lt!85493 (choose!932 lt!85198 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun e!113304 () Bool)

(assert (=> d!52103 e!113304))

(declare-fun res!81567 () Bool)

(assert (=> d!52103 (=> (not res!81567) (not e!113304))))

(assert (=> d!52103 (= res!81567 (isStrictlySorted!326 lt!85198))))

(assert (=> d!52103 (= (lemmaContainsTupThenGetReturnValue!98 lt!85198 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) lt!85493)))

(declare-fun b!171663 () Bool)

(declare-fun res!81568 () Bool)

(assert (=> b!171663 (=> (not res!81568) (not e!113304))))

(assert (=> b!171663 (= res!81568 (containsKey!187 lt!85198 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun b!171664 () Bool)

(assert (=> b!171664 (= e!113304 (contains!1145 lt!85198 (tuple2!3231 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (= (and d!52103 res!81567) b!171663))

(assert (= (and b!171663 res!81568) b!171664))

(assert (=> d!52103 m!199383))

(declare-fun m!200419 () Bool)

(assert (=> d!52103 m!200419))

(declare-fun m!200421 () Bool)

(assert (=> d!52103 m!200421))

(declare-fun m!200423 () Bool)

(assert (=> b!171663 m!200423))

(declare-fun m!200425 () Bool)

(assert (=> b!171664 m!200425))

(assert (=> d!51707 d!52103))

(declare-fun b!171665 () Bool)

(declare-fun e!113305 () List!2213)

(declare-fun call!17478 () List!2213)

(assert (=> b!171665 (= e!113305 call!17478)))

(declare-fun b!171666 () Bool)

(declare-fun res!81570 () Bool)

(declare-fun e!113309 () Bool)

(assert (=> b!171666 (=> (not res!81570) (not e!113309))))

(declare-fun lt!85494 () List!2213)

(assert (=> b!171666 (= res!81570 (containsKey!187 lt!85494 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun b!171667 () Bool)

(declare-fun e!113308 () List!2213)

(declare-fun e!113306 () List!2213)

(assert (=> b!171667 (= e!113308 e!113306)))

(declare-fun c!30708 () Bool)

(assert (=> b!171667 (= c!30708 (and ((_ is Cons!2209) (toList!1101 call!17411)) (= (_1!1625 (h!2826 (toList!1101 call!17411))) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun b!171668 () Bool)

(declare-fun c!30709 () Bool)

(declare-fun e!113307 () List!2213)

(assert (=> b!171668 (= e!113307 (ite c!30708 (t!7023 (toList!1101 call!17411)) (ite c!30709 (Cons!2209 (h!2826 (toList!1101 call!17411)) (t!7023 (toList!1101 call!17411))) Nil!2210)))))

(declare-fun b!171669 () Bool)

(assert (=> b!171669 (= e!113309 (contains!1145 lt!85494 (tuple2!3231 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun b!171670 () Bool)

(declare-fun call!17477 () List!2213)

(assert (=> b!171670 (= e!113308 call!17477)))

(declare-fun c!30710 () Bool)

(declare-fun bm!17474 () Bool)

(assert (=> bm!17474 (= call!17477 ($colon$colon!96 e!113307 (ite c!30710 (h!2826 (toList!1101 call!17411)) (tuple2!3231 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(declare-fun c!30707 () Bool)

(assert (=> bm!17474 (= c!30707 c!30710)))

(declare-fun bm!17476 () Bool)

(declare-fun call!17479 () List!2213)

(assert (=> bm!17476 (= call!17478 call!17479)))

(declare-fun b!171671 () Bool)

(assert (=> b!171671 (= e!113306 call!17479)))

(declare-fun b!171672 () Bool)

(assert (=> b!171672 (= e!113305 call!17478)))

(declare-fun b!171673 () Bool)

(assert (=> b!171673 (= c!30709 (and ((_ is Cons!2209) (toList!1101 call!17411)) (bvsgt (_1!1625 (h!2826 (toList!1101 call!17411))) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> b!171673 (= e!113306 e!113305)))

(declare-fun b!171674 () Bool)

(assert (=> b!171674 (= e!113307 (insertStrictlySorted!100 (t!7023 (toList!1101 call!17411)) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun bm!17475 () Bool)

(assert (=> bm!17475 (= call!17479 call!17477)))

(declare-fun d!52105 () Bool)

(assert (=> d!52105 e!113309))

(declare-fun res!81569 () Bool)

(assert (=> d!52105 (=> (not res!81569) (not e!113309))))

(assert (=> d!52105 (= res!81569 (isStrictlySorted!326 lt!85494))))

(assert (=> d!52105 (= lt!85494 e!113308)))

(assert (=> d!52105 (= c!30710 (and ((_ is Cons!2209) (toList!1101 call!17411)) (bvslt (_1!1625 (h!2826 (toList!1101 call!17411))) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!52105 (isStrictlySorted!326 (toList!1101 call!17411))))

(assert (=> d!52105 (= (insertStrictlySorted!100 (toList!1101 call!17411) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) lt!85494)))

(assert (= (and d!52105 c!30710) b!171670))

(assert (= (and d!52105 (not c!30710)) b!171667))

(assert (= (and b!171667 c!30708) b!171671))

(assert (= (and b!171667 (not c!30708)) b!171673))

(assert (= (and b!171673 c!30709) b!171672))

(assert (= (and b!171673 (not c!30709)) b!171665))

(assert (= (or b!171672 b!171665) bm!17476))

(assert (= (or b!171671 bm!17476) bm!17475))

(assert (= (or b!171670 bm!17475) bm!17474))

(assert (= (and bm!17474 c!30707) b!171674))

(assert (= (and bm!17474 (not c!30707)) b!171668))

(assert (= (and d!52105 res!81569) b!171666))

(assert (= (and b!171666 res!81570) b!171669))

(declare-fun m!200427 () Bool)

(assert (=> b!171666 m!200427))

(declare-fun m!200429 () Bool)

(assert (=> d!52105 m!200429))

(declare-fun m!200431 () Bool)

(assert (=> d!52105 m!200431))

(declare-fun m!200433 () Bool)

(assert (=> b!171674 m!200433))

(declare-fun m!200435 () Bool)

(assert (=> b!171669 m!200435))

(declare-fun m!200437 () Bool)

(assert (=> bm!17474 m!200437))

(assert (=> d!51707 d!52105))

(assert (=> b!171287 d!51749))

(declare-fun b!171675 () Bool)

(declare-fun e!113311 () (_ BitVec 32))

(declare-fun call!17480 () (_ BitVec 32))

(assert (=> b!171675 (= e!113311 call!17480)))

(declare-fun b!171676 () Bool)

(declare-fun e!113310 () (_ BitVec 32))

(assert (=> b!171676 (= e!113310 #b00000000000000000000000000000000)))

(declare-fun b!171677 () Bool)

(assert (=> b!171677 (= e!113310 e!113311)))

(declare-fun c!30712 () Bool)

(assert (=> b!171677 (= c!30712 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!171678 () Bool)

(assert (=> b!171678 (= e!113311 (bvadd #b00000000000000000000000000000001 call!17480))))

(declare-fun bm!17477 () Bool)

(assert (=> bm!17477 (= call!17480 (arrayCountValidKeys!0 (_keys!5387 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun d!52107 () Bool)

(declare-fun lt!85495 () (_ BitVec 32))

(assert (=> d!52107 (and (bvsge lt!85495 #b00000000000000000000000000000000) (bvsle lt!85495 (bvsub (size!3681 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!52107 (= lt!85495 e!113310)))

(declare-fun c!30711 () Bool)

(assert (=> d!52107 (= c!30711 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> d!52107 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!3681 (_keys!5387 thiss!1248)) (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> d!52107 (= (arrayCountValidKeys!0 (_keys!5387 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))) lt!85495)))

(assert (= (and d!52107 c!30711) b!171676))

(assert (= (and d!52107 (not c!30711)) b!171677))

(assert (= (and b!171677 c!30712) b!171678))

(assert (= (and b!171677 (not c!30712)) b!171675))

(assert (= (or b!171678 b!171675) bm!17477))

(assert (=> b!171677 m!200031))

(assert (=> b!171677 m!200031))

(assert (=> b!171677 m!200033))

(declare-fun m!200439 () Bool)

(assert (=> bm!17477 m!200439))

(assert (=> bm!17447 d!52107))

(declare-fun d!52109 () Bool)

(assert (=> d!52109 (= (get!1940 (getValueByKey!183 (toList!1101 lt!85123) lt!85138)) (v!3910 (getValueByKey!183 (toList!1101 lt!85123) lt!85138)))))

(assert (=> d!51789 d!52109))

(declare-fun b!171680 () Bool)

(declare-fun e!113312 () Option!189)

(declare-fun e!113313 () Option!189)

(assert (=> b!171680 (= e!113312 e!113313)))

(declare-fun c!30714 () Bool)

(assert (=> b!171680 (= c!30714 (and ((_ is Cons!2209) (toList!1101 lt!85123)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85123))) lt!85138))))))

(declare-fun b!171681 () Bool)

(assert (=> b!171681 (= e!113313 (getValueByKey!183 (t!7023 (toList!1101 lt!85123)) lt!85138))))

(declare-fun d!52111 () Bool)

(declare-fun c!30713 () Bool)

(assert (=> d!52111 (= c!30713 (and ((_ is Cons!2209) (toList!1101 lt!85123)) (= (_1!1625 (h!2826 (toList!1101 lt!85123))) lt!85138)))))

(assert (=> d!52111 (= (getValueByKey!183 (toList!1101 lt!85123) lt!85138) e!113312)))

(declare-fun b!171682 () Bool)

(assert (=> b!171682 (= e!113313 None!187)))

(declare-fun b!171679 () Bool)

(assert (=> b!171679 (= e!113312 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85123)))))))

(assert (= (and d!52111 c!30713) b!171679))

(assert (= (and d!52111 (not c!30713)) b!171680))

(assert (= (and b!171680 c!30714) b!171681))

(assert (= (and b!171680 (not c!30714)) b!171682))

(declare-fun m!200441 () Bool)

(assert (=> b!171681 m!200441))

(assert (=> d!51789 d!52111))

(assert (=> b!171210 d!51947))

(declare-fun d!52113 () Bool)

(assert (=> d!52113 (= (isEmpty!439 lt!85243) (isEmpty!440 (toList!1101 lt!85243)))))

(declare-fun bs!7091 () Bool)

(assert (= bs!7091 d!52113))

(declare-fun m!200443 () Bool)

(assert (=> bs!7091 m!200443))

(assert (=> b!171096 d!52113))

(declare-fun d!52115 () Bool)

(assert (=> d!52115 (arrayContainsKey!0 (_keys!5387 thiss!1248) lt!85375 #b00000000000000000000000000000000)))

(declare-fun lt!85496 () Unit!5249)

(assert (=> d!52115 (= lt!85496 (choose!13 (_keys!5387 thiss!1248) lt!85375 #b00000000000000000000000000000000))))

(assert (=> d!52115 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!52115 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5387 thiss!1248) lt!85375 #b00000000000000000000000000000000) lt!85496)))

(declare-fun bs!7092 () Bool)

(assert (= bs!7092 d!52115))

(assert (=> bs!7092 m!199891))

(declare-fun m!200445 () Bool)

(assert (=> bs!7092 m!200445))

(assert (=> b!171290 d!52115))

(declare-fun d!52117 () Bool)

(declare-fun res!81571 () Bool)

(declare-fun e!113314 () Bool)

(assert (=> d!52117 (=> res!81571 e!113314)))

(assert (=> d!52117 (= res!81571 (= (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) lt!85375))))

(assert (=> d!52117 (= (arrayContainsKey!0 (_keys!5387 thiss!1248) lt!85375 #b00000000000000000000000000000000) e!113314)))

(declare-fun b!171683 () Bool)

(declare-fun e!113315 () Bool)

(assert (=> b!171683 (= e!113314 e!113315)))

(declare-fun res!81572 () Bool)

(assert (=> b!171683 (=> (not res!81572) (not e!113315))))

(assert (=> b!171683 (= res!81572 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun b!171684 () Bool)

(assert (=> b!171684 (= e!113315 (arrayContainsKey!0 (_keys!5387 thiss!1248) lt!85375 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!52117 (not res!81571)) b!171683))

(assert (= (and b!171683 res!81572) b!171684))

(assert (=> d!52117 m!199219))

(declare-fun m!200447 () Bool)

(assert (=> b!171684 m!200447))

(assert (=> b!171290 d!52117))

(declare-fun b!171685 () Bool)

(declare-fun e!113318 () SeekEntryResult!544)

(declare-fun lt!85499 () SeekEntryResult!544)

(assert (=> b!171685 (= e!113318 (seekKeyOrZeroReturnVacant!0 (x!18969 lt!85499) (index!4346 lt!85499) (index!4346 lt!85499) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (_keys!5387 thiss!1248) (mask!8383 thiss!1248)))))

(declare-fun b!171686 () Bool)

(declare-fun e!113316 () SeekEntryResult!544)

(declare-fun e!113317 () SeekEntryResult!544)

(assert (=> b!171686 (= e!113316 e!113317)))

(declare-fun lt!85497 () (_ BitVec 64))

(assert (=> b!171686 (= lt!85497 (select (arr!3388 (_keys!5387 thiss!1248)) (index!4346 lt!85499)))))

(declare-fun c!30716 () Bool)

(assert (=> b!171686 (= c!30716 (= lt!85497 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!171687 () Bool)

(assert (=> b!171687 (= e!113318 (MissingZero!544 (index!4346 lt!85499)))))

(declare-fun b!171688 () Bool)

(assert (=> b!171688 (= e!113316 Undefined!544)))

(declare-fun b!171689 () Bool)

(assert (=> b!171689 (= e!113317 (Found!544 (index!4346 lt!85499)))))

(declare-fun d!52119 () Bool)

(declare-fun lt!85498 () SeekEntryResult!544)

(assert (=> d!52119 (and (or ((_ is Undefined!544) lt!85498) (not ((_ is Found!544) lt!85498)) (and (bvsge (index!4345 lt!85498) #b00000000000000000000000000000000) (bvslt (index!4345 lt!85498) (size!3681 (_keys!5387 thiss!1248))))) (or ((_ is Undefined!544) lt!85498) ((_ is Found!544) lt!85498) (not ((_ is MissingZero!544) lt!85498)) (and (bvsge (index!4344 lt!85498) #b00000000000000000000000000000000) (bvslt (index!4344 lt!85498) (size!3681 (_keys!5387 thiss!1248))))) (or ((_ is Undefined!544) lt!85498) ((_ is Found!544) lt!85498) ((_ is MissingZero!544) lt!85498) (not ((_ is MissingVacant!544) lt!85498)) (and (bvsge (index!4347 lt!85498) #b00000000000000000000000000000000) (bvslt (index!4347 lt!85498) (size!3681 (_keys!5387 thiss!1248))))) (or ((_ is Undefined!544) lt!85498) (ite ((_ is Found!544) lt!85498) (= (select (arr!3388 (_keys!5387 thiss!1248)) (index!4345 lt!85498)) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!544) lt!85498) (= (select (arr!3388 (_keys!5387 thiss!1248)) (index!4344 lt!85498)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!544) lt!85498) (= (select (arr!3388 (_keys!5387 thiss!1248)) (index!4347 lt!85498)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52119 (= lt!85498 e!113316)))

(declare-fun c!30715 () Bool)

(assert (=> d!52119 (= c!30715 (and ((_ is Intermediate!544) lt!85499) (undefined!1356 lt!85499)))))

(assert (=> d!52119 (= lt!85499 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (mask!8383 thiss!1248)) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (_keys!5387 thiss!1248) (mask!8383 thiss!1248)))))

(assert (=> d!52119 (validMask!0 (mask!8383 thiss!1248))))

(assert (=> d!52119 (= (seekEntryOrOpen!0 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (_keys!5387 thiss!1248) (mask!8383 thiss!1248)) lt!85498)))

(declare-fun b!171690 () Bool)

(declare-fun c!30717 () Bool)

(assert (=> b!171690 (= c!30717 (= lt!85497 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171690 (= e!113317 e!113318)))

(assert (= (and d!52119 c!30715) b!171688))

(assert (= (and d!52119 (not c!30715)) b!171686))

(assert (= (and b!171686 c!30716) b!171689))

(assert (= (and b!171686 (not c!30716)) b!171690))

(assert (= (and b!171690 c!30717) b!171687))

(assert (= (and b!171690 (not c!30717)) b!171685))

(assert (=> b!171685 m!199219))

(declare-fun m!200449 () Bool)

(assert (=> b!171685 m!200449))

(declare-fun m!200451 () Bool)

(assert (=> b!171686 m!200451))

(declare-fun m!200453 () Bool)

(assert (=> d!52119 m!200453))

(assert (=> d!52119 m!199219))

(declare-fun m!200455 () Bool)

(assert (=> d!52119 m!200455))

(declare-fun m!200457 () Bool)

(assert (=> d!52119 m!200457))

(declare-fun m!200459 () Bool)

(assert (=> d!52119 m!200459))

(assert (=> d!52119 m!199273))

(declare-fun m!200461 () Bool)

(assert (=> d!52119 m!200461))

(assert (=> d!52119 m!199219))

(assert (=> d!52119 m!200453))

(assert (=> b!171290 d!52119))

(declare-fun d!52121 () Bool)

(assert (=> d!52121 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun lt!85500 () Unit!5249)

(assert (=> d!52121 (= lt!85500 (choose!931 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!113319 () Bool)

(assert (=> d!52121 e!113319))

(declare-fun res!81573 () Bool)

(assert (=> d!52121 (=> (not res!81573) (not e!113319))))

(assert (=> d!52121 (= res!81573 (isStrictlySorted!326 (toList!1101 lt!85152)))))

(assert (=> d!52121 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) lt!85500)))

(declare-fun b!171691 () Bool)

(assert (=> b!171691 (= e!113319 (containsKey!187 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52121 res!81573) b!171691))

(assert (=> d!52121 m!199219))

(assert (=> d!52121 m!199477))

(assert (=> d!52121 m!199477))

(assert (=> d!52121 m!199479))

(assert (=> d!52121 m!199219))

(declare-fun m!200463 () Bool)

(assert (=> d!52121 m!200463))

(declare-fun m!200465 () Bool)

(assert (=> d!52121 m!200465))

(assert (=> b!171691 m!199219))

(assert (=> b!171691 m!199473))

(assert (=> b!171100 d!52121))

(declare-fun d!52123 () Bool)

(assert (=> d!52123 (= (isDefined!137 (getValueByKey!183 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))) (not (isEmpty!438 (getValueByKey!183 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))))

(declare-fun bs!7093 () Bool)

(assert (= bs!7093 d!52123))

(assert (=> bs!7093 m!199477))

(declare-fun m!200467 () Bool)

(assert (=> bs!7093 m!200467))

(assert (=> b!171100 d!52123))

(declare-fun b!171693 () Bool)

(declare-fun e!113320 () Option!189)

(declare-fun e!113321 () Option!189)

(assert (=> b!171693 (= e!113320 e!113321)))

(declare-fun c!30719 () Bool)

(assert (=> b!171693 (= c!30719 (and ((_ is Cons!2209) (toList!1101 lt!85152)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85152))) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))))

(declare-fun b!171694 () Bool)

(assert (=> b!171694 (= e!113321 (getValueByKey!183 (t!7023 (toList!1101 lt!85152)) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!52125 () Bool)

(declare-fun c!30718 () Bool)

(assert (=> d!52125 (= c!30718 (and ((_ is Cons!2209) (toList!1101 lt!85152)) (= (_1!1625 (h!2826 (toList!1101 lt!85152))) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!52125 (= (getValueByKey!183 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) e!113320)))

(declare-fun b!171695 () Bool)

(assert (=> b!171695 (= e!113321 None!187)))

(declare-fun b!171692 () Bool)

(assert (=> b!171692 (= e!113320 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85152)))))))

(assert (= (and d!52125 c!30718) b!171692))

(assert (= (and d!52125 (not c!30718)) b!171693))

(assert (= (and b!171693 c!30719) b!171694))

(assert (= (and b!171693 (not c!30719)) b!171695))

(assert (=> b!171694 m!199219))

(declare-fun m!200469 () Bool)

(assert (=> b!171694 m!200469))

(assert (=> b!171100 d!52125))

(declare-fun lt!85501 () Bool)

(declare-fun d!52127 () Bool)

(assert (=> d!52127 (= lt!85501 (select (content!146 (t!7023 (toList!1101 lt!85193))) (tuple2!3231 key!828 v!309)))))

(declare-fun e!113323 () Bool)

(assert (=> d!52127 (= lt!85501 e!113323)))

(declare-fun res!81574 () Bool)

(assert (=> d!52127 (=> (not res!81574) (not e!113323))))

(assert (=> d!52127 (= res!81574 ((_ is Cons!2209) (t!7023 (toList!1101 lt!85193))))))

(assert (=> d!52127 (= (contains!1145 (t!7023 (toList!1101 lt!85193)) (tuple2!3231 key!828 v!309)) lt!85501)))

(declare-fun b!171696 () Bool)

(declare-fun e!113322 () Bool)

(assert (=> b!171696 (= e!113323 e!113322)))

(declare-fun res!81575 () Bool)

(assert (=> b!171696 (=> res!81575 e!113322)))

(assert (=> b!171696 (= res!81575 (= (h!2826 (t!7023 (toList!1101 lt!85193))) (tuple2!3231 key!828 v!309)))))

(declare-fun b!171697 () Bool)

(assert (=> b!171697 (= e!113322 (contains!1145 (t!7023 (t!7023 (toList!1101 lt!85193))) (tuple2!3231 key!828 v!309)))))

(assert (= (and d!52127 res!81574) b!171696))

(assert (= (and b!171696 (not res!81575)) b!171697))

(assert (=> d!52127 m!199949))

(declare-fun m!200471 () Bool)

(assert (=> d!52127 m!200471))

(declare-fun m!200473 () Bool)

(assert (=> b!171697 m!200473))

(assert (=> b!171114 d!52127))

(declare-fun d!52129 () Bool)

(assert (=> d!52129 (= (isDefined!137 (getValueByKey!183 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))) (not (isEmpty!438 (getValueByKey!183 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))))

(declare-fun bs!7094 () Bool)

(assert (= bs!7094 d!52129))

(assert (=> bs!7094 m!199449))

(declare-fun m!200475 () Bool)

(assert (=> bs!7094 m!200475))

(assert (=> b!171063 d!52129))

(declare-fun b!171699 () Bool)

(declare-fun e!113324 () Option!189)

(declare-fun e!113325 () Option!189)

(assert (=> b!171699 (= e!113324 e!113325)))

(declare-fun c!30721 () Bool)

(assert (=> b!171699 (= c!30721 (and ((_ is Cons!2209) (toList!1101 lt!85127)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85127))) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))))

(declare-fun b!171700 () Bool)

(assert (=> b!171700 (= e!113325 (getValueByKey!183 (t!7023 (toList!1101 lt!85127)) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!52131 () Bool)

(declare-fun c!30720 () Bool)

(assert (=> d!52131 (= c!30720 (and ((_ is Cons!2209) (toList!1101 lt!85127)) (= (_1!1625 (h!2826 (toList!1101 lt!85127))) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!52131 (= (getValueByKey!183 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) e!113324)))

(declare-fun b!171701 () Bool)

(assert (=> b!171701 (= e!113325 None!187)))

(declare-fun b!171698 () Bool)

(assert (=> b!171698 (= e!113324 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85127)))))))

(assert (= (and d!52131 c!30720) b!171698))

(assert (= (and d!52131 (not c!30720)) b!171699))

(assert (= (and b!171699 c!30721) b!171700))

(assert (= (and b!171699 (not c!30721)) b!171701))

(assert (=> b!171700 m!199219))

(declare-fun m!200477 () Bool)

(assert (=> b!171700 m!200477))

(assert (=> b!171063 d!52131))

(declare-fun d!52133 () Bool)

(assert (=> d!52133 (not (contains!1143 (+!239 lt!85258 (tuple2!3231 lt!85259 lt!85263)) lt!85262))))

(declare-fun lt!85504 () Unit!5249)

(declare-fun choose!935 (ListLongMap!2171 (_ BitVec 64) V!4987 (_ BitVec 64)) Unit!5249)

(assert (=> d!52133 (= lt!85504 (choose!935 lt!85258 lt!85259 lt!85263 lt!85262))))

(declare-fun e!113328 () Bool)

(assert (=> d!52133 e!113328))

(declare-fun res!81578 () Bool)

(assert (=> d!52133 (=> (not res!81578) (not e!113328))))

(assert (=> d!52133 (= res!81578 (not (contains!1143 lt!85258 lt!85262)))))

(assert (=> d!52133 (= (addStillNotContains!73 lt!85258 lt!85259 lt!85263 lt!85262) lt!85504)))

(declare-fun b!171705 () Bool)

(assert (=> b!171705 (= e!113328 (not (= lt!85259 lt!85262)))))

(assert (= (and d!52133 res!81578) b!171705))

(assert (=> d!52133 m!199511))

(assert (=> d!52133 m!199511))

(assert (=> d!52133 m!199513))

(declare-fun m!200479 () Bool)

(assert (=> d!52133 m!200479))

(declare-fun m!200481 () Bool)

(assert (=> d!52133 m!200481))

(assert (=> b!171128 d!52133))

(declare-fun d!52135 () Bool)

(declare-fun e!113330 () Bool)

(assert (=> d!52135 e!113330))

(declare-fun res!81579 () Bool)

(assert (=> d!52135 (=> res!81579 e!113330)))

(declare-fun lt!85507 () Bool)

(assert (=> d!52135 (= res!81579 (not lt!85507))))

(declare-fun lt!85505 () Bool)

(assert (=> d!52135 (= lt!85507 lt!85505)))

(declare-fun lt!85506 () Unit!5249)

(declare-fun e!113329 () Unit!5249)

(assert (=> d!52135 (= lt!85506 e!113329)))

(declare-fun c!30722 () Bool)

(assert (=> d!52135 (= c!30722 lt!85505)))

(assert (=> d!52135 (= lt!85505 (containsKey!187 (toList!1101 (+!239 lt!85258 (tuple2!3231 lt!85259 lt!85263))) lt!85262))))

(assert (=> d!52135 (= (contains!1143 (+!239 lt!85258 (tuple2!3231 lt!85259 lt!85263)) lt!85262) lt!85507)))

(declare-fun b!171706 () Bool)

(declare-fun lt!85508 () Unit!5249)

(assert (=> b!171706 (= e!113329 lt!85508)))

(assert (=> b!171706 (= lt!85508 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 (+!239 lt!85258 (tuple2!3231 lt!85259 lt!85263))) lt!85262))))

(assert (=> b!171706 (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85258 (tuple2!3231 lt!85259 lt!85263))) lt!85262))))

(declare-fun b!171707 () Bool)

(declare-fun Unit!5278 () Unit!5249)

(assert (=> b!171707 (= e!113329 Unit!5278)))

(declare-fun b!171708 () Bool)

(assert (=> b!171708 (= e!113330 (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85258 (tuple2!3231 lt!85259 lt!85263))) lt!85262)))))

(assert (= (and d!52135 c!30722) b!171706))

(assert (= (and d!52135 (not c!30722)) b!171707))

(assert (= (and d!52135 (not res!81579)) b!171708))

(declare-fun m!200483 () Bool)

(assert (=> d!52135 m!200483))

(declare-fun m!200485 () Bool)

(assert (=> b!171706 m!200485))

(declare-fun m!200487 () Bool)

(assert (=> b!171706 m!200487))

(assert (=> b!171706 m!200487))

(declare-fun m!200489 () Bool)

(assert (=> b!171706 m!200489))

(assert (=> b!171708 m!200487))

(assert (=> b!171708 m!200487))

(assert (=> b!171708 m!200489))

(assert (=> b!171128 d!52135))

(declare-fun d!52137 () Bool)

(declare-fun e!113331 () Bool)

(assert (=> d!52137 e!113331))

(declare-fun res!81580 () Bool)

(assert (=> d!52137 (=> (not res!81580) (not e!113331))))

(declare-fun lt!85510 () ListLongMap!2171)

(assert (=> d!52137 (= res!81580 (contains!1143 lt!85510 (_1!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!85511 () List!2213)

(assert (=> d!52137 (= lt!85510 (ListLongMap!2172 lt!85511))))

(declare-fun lt!85512 () Unit!5249)

(declare-fun lt!85509 () Unit!5249)

(assert (=> d!52137 (= lt!85512 lt!85509)))

(assert (=> d!52137 (= (getValueByKey!183 lt!85511 (_1!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!188 (_2!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52137 (= lt!85509 (lemmaContainsTupThenGetReturnValue!98 lt!85511 (_1!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52137 (= lt!85511 (insertStrictlySorted!100 (toList!1101 call!17428) (_1!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52137 (= (+!239 call!17428 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!85510)))

(declare-fun b!171709 () Bool)

(declare-fun res!81581 () Bool)

(assert (=> b!171709 (=> (not res!81581) (not e!113331))))

(assert (=> b!171709 (= res!81581 (= (getValueByKey!183 (toList!1101 lt!85510) (_1!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!188 (_2!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!171710 () Bool)

(assert (=> b!171710 (= e!113331 (contains!1145 (toList!1101 lt!85510) (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!52137 res!81580) b!171709))

(assert (= (and b!171709 res!81581) b!171710))

(declare-fun m!200491 () Bool)

(assert (=> d!52137 m!200491))

(declare-fun m!200493 () Bool)

(assert (=> d!52137 m!200493))

(declare-fun m!200495 () Bool)

(assert (=> d!52137 m!200495))

(declare-fun m!200497 () Bool)

(assert (=> d!52137 m!200497))

(declare-fun m!200499 () Bool)

(assert (=> b!171709 m!200499))

(declare-fun m!200501 () Bool)

(assert (=> b!171710 m!200501))

(assert (=> b!171128 d!52137))

(declare-fun d!52139 () Bool)

(declare-fun e!113332 () Bool)

(assert (=> d!52139 e!113332))

(declare-fun res!81582 () Bool)

(assert (=> d!52139 (=> (not res!81582) (not e!113332))))

(declare-fun lt!85514 () ListLongMap!2171)

(assert (=> d!52139 (= res!81582 (contains!1143 lt!85514 (_1!1625 (tuple2!3231 lt!85259 lt!85263))))))

(declare-fun lt!85515 () List!2213)

(assert (=> d!52139 (= lt!85514 (ListLongMap!2172 lt!85515))))

(declare-fun lt!85516 () Unit!5249)

(declare-fun lt!85513 () Unit!5249)

(assert (=> d!52139 (= lt!85516 lt!85513)))

(assert (=> d!52139 (= (getValueByKey!183 lt!85515 (_1!1625 (tuple2!3231 lt!85259 lt!85263))) (Some!188 (_2!1625 (tuple2!3231 lt!85259 lt!85263))))))

(assert (=> d!52139 (= lt!85513 (lemmaContainsTupThenGetReturnValue!98 lt!85515 (_1!1625 (tuple2!3231 lt!85259 lt!85263)) (_2!1625 (tuple2!3231 lt!85259 lt!85263))))))

(assert (=> d!52139 (= lt!85515 (insertStrictlySorted!100 (toList!1101 lt!85258) (_1!1625 (tuple2!3231 lt!85259 lt!85263)) (_2!1625 (tuple2!3231 lt!85259 lt!85263))))))

(assert (=> d!52139 (= (+!239 lt!85258 (tuple2!3231 lt!85259 lt!85263)) lt!85514)))

(declare-fun b!171711 () Bool)

(declare-fun res!81583 () Bool)

(assert (=> b!171711 (=> (not res!81583) (not e!113332))))

(assert (=> b!171711 (= res!81583 (= (getValueByKey!183 (toList!1101 lt!85514) (_1!1625 (tuple2!3231 lt!85259 lt!85263))) (Some!188 (_2!1625 (tuple2!3231 lt!85259 lt!85263)))))))

(declare-fun b!171712 () Bool)

(assert (=> b!171712 (= e!113332 (contains!1145 (toList!1101 lt!85514) (tuple2!3231 lt!85259 lt!85263)))))

(assert (= (and d!52139 res!81582) b!171711))

(assert (= (and b!171711 res!81583) b!171712))

(declare-fun m!200503 () Bool)

(assert (=> d!52139 m!200503))

(declare-fun m!200505 () Bool)

(assert (=> d!52139 m!200505))

(declare-fun m!200507 () Bool)

(assert (=> d!52139 m!200507))

(declare-fun m!200509 () Bool)

(assert (=> d!52139 m!200509))

(declare-fun m!200511 () Bool)

(assert (=> b!171711 m!200511))

(declare-fun m!200513 () Bool)

(assert (=> b!171712 m!200513))

(assert (=> b!171128 d!52139))

(assert (=> b!171128 d!51767))

(declare-fun b!171714 () Bool)

(declare-fun e!113333 () Option!189)

(declare-fun e!113334 () Option!189)

(assert (=> b!171714 (= e!113333 e!113334)))

(declare-fun c!30724 () Bool)

(assert (=> b!171714 (= c!30724 (and ((_ is Cons!2209) (toList!1101 lt!85342)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85342))) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171715 () Bool)

(assert (=> b!171715 (= e!113334 (getValueByKey!183 (t!7023 (toList!1101 lt!85342)) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun d!52141 () Bool)

(declare-fun c!30723 () Bool)

(assert (=> d!52141 (= c!30723 (and ((_ is Cons!2209) (toList!1101 lt!85342)) (= (_1!1625 (h!2826 (toList!1101 lt!85342))) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!52141 (= (getValueByKey!183 (toList!1101 lt!85342) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) e!113333)))

(declare-fun b!171716 () Bool)

(assert (=> b!171716 (= e!113334 None!187)))

(declare-fun b!171713 () Bool)

(assert (=> b!171713 (= e!113333 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85342)))))))

(assert (= (and d!52141 c!30723) b!171713))

(assert (= (and d!52141 (not c!30723)) b!171714))

(assert (= (and b!171714 c!30724) b!171715))

(assert (= (and b!171714 (not c!30724)) b!171716))

(declare-fun m!200515 () Bool)

(assert (=> b!171715 m!200515))

(assert (=> b!171259 d!52141))

(declare-fun b!171718 () Bool)

(declare-fun e!113335 () Option!189)

(declare-fun e!113336 () Option!189)

(assert (=> b!171718 (= e!113335 e!113336)))

(declare-fun c!30726 () Bool)

(assert (=> b!171718 (= c!30726 (and ((_ is Cons!2209) (toList!1101 lt!85366)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85366))) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))))

(declare-fun b!171719 () Bool)

(assert (=> b!171719 (= e!113336 (getValueByKey!183 (t!7023 (toList!1101 lt!85366)) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))))))

(declare-fun c!30725 () Bool)

(declare-fun d!52143 () Bool)

(assert (=> d!52143 (= c!30725 (and ((_ is Cons!2209) (toList!1101 lt!85366)) (= (_1!1625 (h!2826 (toList!1101 lt!85366))) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))))))))

(assert (=> d!52143 (= (getValueByKey!183 (toList!1101 lt!85366) (_1!1625 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248)))) e!113335)))

(declare-fun b!171720 () Bool)

(assert (=> b!171720 (= e!113336 None!187)))

(declare-fun b!171717 () Bool)

(assert (=> b!171717 (= e!113335 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85366)))))))

(assert (= (and d!52143 c!30725) b!171717))

(assert (= (and d!52143 (not c!30725)) b!171718))

(assert (= (and b!171718 c!30726) b!171719))

(assert (= (and b!171718 (not c!30726)) b!171720))

(declare-fun m!200517 () Bool)

(assert (=> b!171719 m!200517))

(assert (=> b!171273 d!52143))

(declare-fun call!17481 () Bool)

(declare-fun bm!17478 () Bool)

(declare-fun c!30727 () Bool)

(assert (=> bm!17478 (= call!17481 (arrayNoDuplicates!0 (_keys!5387 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!30727 (Cons!2211 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!30579 (Cons!2211 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) Nil!2212) Nil!2212)) (ite c!30579 (Cons!2211 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) Nil!2212) Nil!2212))))))

(declare-fun b!171721 () Bool)

(declare-fun e!113340 () Bool)

(assert (=> b!171721 (= e!113340 call!17481)))

(declare-fun b!171722 () Bool)

(declare-fun e!113339 () Bool)

(assert (=> b!171722 (= e!113339 e!113340)))

(assert (=> b!171722 (= c!30727 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!171723 () Bool)

(assert (=> b!171723 (= e!113340 call!17481)))

(declare-fun b!171724 () Bool)

(declare-fun e!113337 () Bool)

(assert (=> b!171724 (= e!113337 (contains!1146 (ite c!30579 (Cons!2211 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) Nil!2212) Nil!2212) (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!171725 () Bool)

(declare-fun e!113338 () Bool)

(assert (=> b!171725 (= e!113338 e!113339)))

(declare-fun res!81584 () Bool)

(assert (=> b!171725 (=> (not res!81584) (not e!113339))))

(assert (=> b!171725 (= res!81584 (not e!113337))))

(declare-fun res!81586 () Bool)

(assert (=> b!171725 (=> (not res!81586) (not e!113337))))

(assert (=> b!171725 (= res!81586 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!52145 () Bool)

(declare-fun res!81585 () Bool)

(assert (=> d!52145 (=> res!81585 e!113338)))

(assert (=> d!52145 (= res!81585 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> d!52145 (= (arrayNoDuplicates!0 (_keys!5387 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30579 (Cons!2211 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) Nil!2212) Nil!2212)) e!113338)))

(assert (= (and d!52145 (not res!81585)) b!171725))

(assert (= (and b!171725 res!81586) b!171724))

(assert (= (and b!171725 res!81584) b!171722))

(assert (= (and b!171722 c!30727) b!171721))

(assert (= (and b!171722 (not c!30727)) b!171723))

(assert (= (or b!171721 b!171723) bm!17478))

(assert (=> bm!17478 m!200031))

(declare-fun m!200519 () Bool)

(assert (=> bm!17478 m!200519))

(assert (=> b!171722 m!200031))

(assert (=> b!171722 m!200031))

(assert (=> b!171722 m!200033))

(assert (=> b!171724 m!200031))

(assert (=> b!171724 m!200031))

(declare-fun m!200521 () Bool)

(assert (=> b!171724 m!200521))

(assert (=> b!171725 m!200031))

(assert (=> b!171725 m!200031))

(assert (=> b!171725 m!200033))

(assert (=> bm!17445 d!52145))

(assert (=> b!171141 d!51947))

(declare-fun b!171726 () Bool)

(declare-fun e!113341 () List!2213)

(declare-fun call!17483 () List!2213)

(assert (=> b!171726 (= e!113341 call!17483)))

(declare-fun b!171727 () Bool)

(declare-fun res!81588 () Bool)

(declare-fun e!113345 () Bool)

(assert (=> b!171727 (=> (not res!81588) (not e!113345))))

(declare-fun lt!85517 () List!2213)

(assert (=> b!171727 (= res!81588 (containsKey!187 lt!85517 (_1!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun b!171728 () Bool)

(declare-fun e!113344 () List!2213)

(declare-fun e!113342 () List!2213)

(assert (=> b!171728 (= e!113344 e!113342)))

(declare-fun c!30729 () Bool)

(assert (=> b!171728 (= c!30729 (and ((_ is Cons!2209) (t!7023 (toList!1101 (map!1852 thiss!1248)))) (= (_1!1625 (h!2826 (t!7023 (toList!1101 (map!1852 thiss!1248))))) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(declare-fun c!30730 () Bool)

(declare-fun b!171729 () Bool)

(declare-fun e!113343 () List!2213)

(assert (=> b!171729 (= e!113343 (ite c!30729 (t!7023 (t!7023 (toList!1101 (map!1852 thiss!1248)))) (ite c!30730 (Cons!2209 (h!2826 (t!7023 (toList!1101 (map!1852 thiss!1248)))) (t!7023 (t!7023 (toList!1101 (map!1852 thiss!1248))))) Nil!2210)))))

(declare-fun b!171730 () Bool)

(assert (=> b!171730 (= e!113345 (contains!1145 lt!85517 (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309)))))))

(declare-fun b!171731 () Bool)

(declare-fun call!17482 () List!2213)

(assert (=> b!171731 (= e!113344 call!17482)))

(declare-fun c!30731 () Bool)

(declare-fun bm!17479 () Bool)

(assert (=> bm!17479 (= call!17482 ($colon$colon!96 e!113343 (ite c!30731 (h!2826 (t!7023 (toList!1101 (map!1852 thiss!1248)))) (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309))))))))

(declare-fun c!30728 () Bool)

(assert (=> bm!17479 (= c!30728 c!30731)))

(declare-fun bm!17481 () Bool)

(declare-fun call!17484 () List!2213)

(assert (=> bm!17481 (= call!17483 call!17484)))

(declare-fun b!171732 () Bool)

(assert (=> b!171732 (= e!113342 call!17484)))

(declare-fun b!171733 () Bool)

(assert (=> b!171733 (= e!113341 call!17483)))

(declare-fun b!171734 () Bool)

(assert (=> b!171734 (= c!30730 (and ((_ is Cons!2209) (t!7023 (toList!1101 (map!1852 thiss!1248)))) (bvsgt (_1!1625 (h!2826 (t!7023 (toList!1101 (map!1852 thiss!1248))))) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(assert (=> b!171734 (= e!113342 e!113341)))

(declare-fun b!171735 () Bool)

(assert (=> b!171735 (= e!113343 (insertStrictlySorted!100 (t!7023 (t!7023 (toList!1101 (map!1852 thiss!1248)))) (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun bm!17480 () Bool)

(assert (=> bm!17480 (= call!17484 call!17482)))

(declare-fun d!52147 () Bool)

(assert (=> d!52147 e!113345))

(declare-fun res!81587 () Bool)

(assert (=> d!52147 (=> (not res!81587) (not e!113345))))

(assert (=> d!52147 (= res!81587 (isStrictlySorted!326 lt!85517))))

(assert (=> d!52147 (= lt!85517 e!113344)))

(assert (=> d!52147 (= c!30731 (and ((_ is Cons!2209) (t!7023 (toList!1101 (map!1852 thiss!1248)))) (bvslt (_1!1625 (h!2826 (t!7023 (toList!1101 (map!1852 thiss!1248))))) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(assert (=> d!52147 (isStrictlySorted!326 (t!7023 (toList!1101 (map!1852 thiss!1248))))))

(assert (=> d!52147 (= (insertStrictlySorted!100 (t!7023 (toList!1101 (map!1852 thiss!1248))) (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309))) lt!85517)))

(assert (= (and d!52147 c!30731) b!171731))

(assert (= (and d!52147 (not c!30731)) b!171728))

(assert (= (and b!171728 c!30729) b!171732))

(assert (= (and b!171728 (not c!30729)) b!171734))

(assert (= (and b!171734 c!30730) b!171733))

(assert (= (and b!171734 (not c!30730)) b!171726))

(assert (= (or b!171733 b!171726) bm!17481))

(assert (= (or b!171732 bm!17481) bm!17480))

(assert (= (or b!171731 bm!17480) bm!17479))

(assert (= (and bm!17479 c!30728) b!171735))

(assert (= (and bm!17479 (not c!30728)) b!171729))

(assert (= (and d!52147 res!81587) b!171727))

(assert (= (and b!171727 res!81588) b!171730))

(declare-fun m!200523 () Bool)

(assert (=> b!171727 m!200523))

(declare-fun m!200525 () Bool)

(assert (=> d!52147 m!200525))

(declare-fun m!200527 () Bool)

(assert (=> d!52147 m!200527))

(declare-fun m!200529 () Bool)

(assert (=> b!171735 m!200529))

(declare-fun m!200531 () Bool)

(assert (=> b!171730 m!200531))

(declare-fun m!200533 () Bool)

(assert (=> bm!17479 m!200533))

(assert (=> b!171057 d!52147))

(declare-fun b!171737 () Bool)

(declare-fun e!113346 () Option!189)

(declare-fun e!113347 () Option!189)

(assert (=> b!171737 (= e!113346 e!113347)))

(declare-fun c!30733 () Bool)

(assert (=> b!171737 (= c!30733 (and ((_ is Cons!2209) (toList!1101 lt!85197)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85197))) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171738 () Bool)

(assert (=> b!171738 (= e!113347 (getValueByKey!183 (t!7023 (toList!1101 lt!85197)) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun d!52149 () Bool)

(declare-fun c!30732 () Bool)

(assert (=> d!52149 (= c!30732 (and ((_ is Cons!2209) (toList!1101 lt!85197)) (= (_1!1625 (h!2826 (toList!1101 lt!85197))) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!52149 (= (getValueByKey!183 (toList!1101 lt!85197) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) e!113346)))

(declare-fun b!171739 () Bool)

(assert (=> b!171739 (= e!113347 None!187)))

(declare-fun b!171736 () Bool)

(assert (=> b!171736 (= e!113346 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85197)))))))

(assert (= (and d!52149 c!30732) b!171736))

(assert (= (and d!52149 (not c!30732)) b!171737))

(assert (= (and b!171737 c!30733) b!171738))

(assert (= (and b!171737 (not c!30733)) b!171739))

(declare-fun m!200535 () Bool)

(assert (=> b!171738 m!200535))

(assert (=> b!170995 d!52149))

(declare-fun d!52151 () Bool)

(assert (=> d!52151 (= (get!1940 (getValueByKey!183 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3910 (getValueByKey!183 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!51859 d!52151))

(assert (=> d!51859 d!51869))

(declare-fun d!52153 () Bool)

(assert (=> d!52153 (= (get!1942 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171195 d!52153))

(declare-fun d!52155 () Bool)

(declare-fun e!113349 () Bool)

(assert (=> d!52155 e!113349))

(declare-fun res!81589 () Bool)

(assert (=> d!52155 (=> res!81589 e!113349)))

(declare-fun lt!85520 () Bool)

(assert (=> d!52155 (= res!81589 (not lt!85520))))

(declare-fun lt!85518 () Bool)

(assert (=> d!52155 (= lt!85520 lt!85518)))

(declare-fun lt!85519 () Unit!5249)

(declare-fun e!113348 () Unit!5249)

(assert (=> d!52155 (= lt!85519 e!113348)))

(declare-fun c!30734 () Bool)

(assert (=> d!52155 (= c!30734 lt!85518)))

(assert (=> d!52155 (= lt!85518 (containsKey!187 (toList!1101 lt!85162) lt!85159))))

(assert (=> d!52155 (= (contains!1143 lt!85162 lt!85159) lt!85520)))

(declare-fun b!171740 () Bool)

(declare-fun lt!85521 () Unit!5249)

(assert (=> b!171740 (= e!113348 lt!85521)))

(assert (=> b!171740 (= lt!85521 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85162) lt!85159))))

(assert (=> b!171740 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85162) lt!85159))))

(declare-fun b!171741 () Bool)

(declare-fun Unit!5279 () Unit!5249)

(assert (=> b!171741 (= e!113348 Unit!5279)))

(declare-fun b!171742 () Bool)

(assert (=> b!171742 (= e!113349 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85162) lt!85159)))))

(assert (= (and d!52155 c!30734) b!171740))

(assert (= (and d!52155 (not c!30734)) b!171741))

(assert (= (and d!52155 (not res!81589)) b!171742))

(declare-fun m!200537 () Bool)

(assert (=> d!52155 m!200537))

(declare-fun m!200539 () Bool)

(assert (=> b!171740 m!200539))

(assert (=> b!171740 m!199857))

(assert (=> b!171740 m!199857))

(declare-fun m!200541 () Bool)

(assert (=> b!171740 m!200541))

(assert (=> b!171742 m!199857))

(assert (=> b!171742 m!199857))

(assert (=> b!171742 m!200541))

(assert (=> d!51831 d!52155))

(assert (=> d!51831 d!51833))

(assert (=> d!51831 d!51835))

(declare-fun d!52157 () Bool)

(assert (=> d!52157 (= (apply!129 (+!239 lt!85162 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) lt!85159) (apply!129 lt!85162 lt!85159))))

(assert (=> d!52157 true))

(declare-fun _$34!1046 () Unit!5249)

(assert (=> d!52157 (= (choose!934 lt!85162 lt!85153 (minValue!3398 thiss!1248) lt!85159) _$34!1046)))

(declare-fun bs!7095 () Bool)

(assert (= bs!7095 d!52157))

(assert (=> bs!7095 m!199317))

(assert (=> bs!7095 m!199317))

(assert (=> bs!7095 m!199325))

(assert (=> bs!7095 m!199319))

(assert (=> d!51831 d!52157))

(assert (=> d!51831 d!51845))

(declare-fun d!52159 () Bool)

(declare-fun e!113351 () Bool)

(assert (=> d!52159 e!113351))

(declare-fun res!81590 () Bool)

(assert (=> d!52159 (=> res!81590 e!113351)))

(declare-fun lt!85524 () Bool)

(assert (=> d!52159 (= res!81590 (not lt!85524))))

(declare-fun lt!85522 () Bool)

(assert (=> d!52159 (= lt!85524 lt!85522)))

(declare-fun lt!85523 () Unit!5249)

(declare-fun e!113350 () Unit!5249)

(assert (=> d!52159 (= lt!85523 e!113350)))

(declare-fun c!30735 () Bool)

(assert (=> d!52159 (= c!30735 lt!85522)))

(assert (=> d!52159 (= lt!85522 (containsKey!187 (toList!1101 lt!85324) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(assert (=> d!52159 (= (contains!1143 lt!85324 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))) lt!85524)))

(declare-fun b!171743 () Bool)

(declare-fun lt!85525 () Unit!5249)

(assert (=> b!171743 (= e!113350 lt!85525)))

(assert (=> b!171743 (= lt!85525 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85324) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(assert (=> b!171743 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85324) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(declare-fun b!171744 () Bool)

(declare-fun Unit!5280 () Unit!5249)

(assert (=> b!171744 (= e!113350 Unit!5280)))

(declare-fun b!171745 () Bool)

(assert (=> b!171745 (= e!113351 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85324) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))))

(assert (= (and d!52159 c!30735) b!171743))

(assert (= (and d!52159 (not c!30735)) b!171744))

(assert (= (and d!52159 (not res!81590)) b!171745))

(declare-fun m!200543 () Bool)

(assert (=> d!52159 m!200543))

(declare-fun m!200545 () Bool)

(assert (=> b!171743 m!200545))

(assert (=> b!171743 m!199707))

(assert (=> b!171743 m!199707))

(declare-fun m!200547 () Bool)

(assert (=> b!171743 m!200547))

(assert (=> b!171745 m!199707))

(assert (=> b!171745 m!199707))

(assert (=> b!171745 m!200547))

(assert (=> d!51793 d!52159))

(declare-fun b!171747 () Bool)

(declare-fun e!113352 () Option!189)

(declare-fun e!113353 () Option!189)

(assert (=> b!171747 (= e!113352 e!113353)))

(declare-fun c!30737 () Bool)

(assert (=> b!171747 (= c!30737 (and ((_ is Cons!2209) lt!85325) (not (= (_1!1625 (h!2826 lt!85325)) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171748 () Bool)

(assert (=> b!171748 (= e!113353 (getValueByKey!183 (t!7023 lt!85325) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(declare-fun c!30736 () Bool)

(declare-fun d!52161 () Bool)

(assert (=> d!52161 (= c!30736 (and ((_ is Cons!2209) lt!85325) (= (_1!1625 (h!2826 lt!85325)) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))))

(assert (=> d!52161 (= (getValueByKey!183 lt!85325 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))) e!113352)))

(declare-fun b!171749 () Bool)

(assert (=> b!171749 (= e!113353 None!187)))

(declare-fun b!171746 () Bool)

(assert (=> b!171746 (= e!113352 (Some!188 (_2!1625 (h!2826 lt!85325))))))

(assert (= (and d!52161 c!30736) b!171746))

(assert (= (and d!52161 (not c!30736)) b!171747))

(assert (= (and b!171747 c!30737) b!171748))

(assert (= (and b!171747 (not c!30737)) b!171749))

(declare-fun m!200549 () Bool)

(assert (=> b!171748 m!200549))

(assert (=> d!51793 d!52161))

(declare-fun d!52163 () Bool)

(assert (=> d!52163 (= (getValueByKey!183 lt!85325 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(declare-fun lt!85526 () Unit!5249)

(assert (=> d!52163 (= lt!85526 (choose!932 lt!85325 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(declare-fun e!113354 () Bool)

(assert (=> d!52163 e!113354))

(declare-fun res!81591 () Bool)

(assert (=> d!52163 (=> (not res!81591) (not e!113354))))

(assert (=> d!52163 (= res!81591 (isStrictlySorted!326 lt!85325))))

(assert (=> d!52163 (= (lemmaContainsTupThenGetReturnValue!98 lt!85325 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))) lt!85526)))

(declare-fun b!171750 () Bool)

(declare-fun res!81592 () Bool)

(assert (=> b!171750 (=> (not res!81592) (not e!113354))))

(assert (=> b!171750 (= res!81592 (containsKey!187 lt!85325 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(declare-fun b!171751 () Bool)

(assert (=> b!171751 (= e!113354 (contains!1145 lt!85325 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))))

(assert (= (and d!52163 res!81591) b!171750))

(assert (= (and b!171750 res!81592) b!171751))

(assert (=> d!52163 m!199701))

(declare-fun m!200551 () Bool)

(assert (=> d!52163 m!200551))

(declare-fun m!200553 () Bool)

(assert (=> d!52163 m!200553))

(declare-fun m!200555 () Bool)

(assert (=> b!171750 m!200555))

(declare-fun m!200557 () Bool)

(assert (=> b!171751 m!200557))

(assert (=> d!51793 d!52163))

(declare-fun b!171752 () Bool)

(declare-fun e!113355 () List!2213)

(declare-fun call!17486 () List!2213)

(assert (=> b!171752 (= e!113355 call!17486)))

(declare-fun b!171753 () Bool)

(declare-fun res!81594 () Bool)

(declare-fun e!113359 () Bool)

(assert (=> b!171753 (=> (not res!81594) (not e!113359))))

(declare-fun lt!85527 () List!2213)

(assert (=> b!171753 (= res!81594 (containsKey!187 lt!85527 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(declare-fun b!171754 () Bool)

(declare-fun e!113358 () List!2213)

(declare-fun e!113356 () List!2213)

(assert (=> b!171754 (= e!113358 e!113356)))

(declare-fun c!30739 () Bool)

(assert (=> b!171754 (= c!30739 (and ((_ is Cons!2209) (toList!1101 lt!85133)) (= (_1!1625 (h!2826 (toList!1101 lt!85133))) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))))

(declare-fun c!30740 () Bool)

(declare-fun e!113357 () List!2213)

(declare-fun b!171755 () Bool)

(assert (=> b!171755 (= e!113357 (ite c!30739 (t!7023 (toList!1101 lt!85133)) (ite c!30740 (Cons!2209 (h!2826 (toList!1101 lt!85133)) (t!7023 (toList!1101 lt!85133))) Nil!2210)))))

(declare-fun b!171756 () Bool)

(assert (=> b!171756 (= e!113359 (contains!1145 lt!85527 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))))

(declare-fun b!171757 () Bool)

(declare-fun call!17485 () List!2213)

(assert (=> b!171757 (= e!113358 call!17485)))

(declare-fun c!30741 () Bool)

(declare-fun bm!17482 () Bool)

(assert (=> bm!17482 (= call!17485 ($colon$colon!96 e!113357 (ite c!30741 (h!2826 (toList!1101 lt!85133)) (tuple2!3231 (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))))

(declare-fun c!30738 () Bool)

(assert (=> bm!17482 (= c!30738 c!30741)))

(declare-fun bm!17484 () Bool)

(declare-fun call!17487 () List!2213)

(assert (=> bm!17484 (= call!17486 call!17487)))

(declare-fun b!171758 () Bool)

(assert (=> b!171758 (= e!113356 call!17487)))

(declare-fun b!171759 () Bool)

(assert (=> b!171759 (= e!113355 call!17486)))

(declare-fun b!171760 () Bool)

(assert (=> b!171760 (= c!30740 (and ((_ is Cons!2209) (toList!1101 lt!85133)) (bvsgt (_1!1625 (h!2826 (toList!1101 lt!85133))) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))))

(assert (=> b!171760 (= e!113356 e!113355)))

(declare-fun b!171761 () Bool)

(assert (=> b!171761 (= e!113357 (insertStrictlySorted!100 (t!7023 (toList!1101 lt!85133)) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(declare-fun bm!17483 () Bool)

(assert (=> bm!17483 (= call!17487 call!17485)))

(declare-fun d!52165 () Bool)

(assert (=> d!52165 e!113359))

(declare-fun res!81593 () Bool)

(assert (=> d!52165 (=> (not res!81593) (not e!113359))))

(assert (=> d!52165 (= res!81593 (isStrictlySorted!326 lt!85527))))

(assert (=> d!52165 (= lt!85527 e!113358)))

(assert (=> d!52165 (= c!30741 (and ((_ is Cons!2209) (toList!1101 lt!85133)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85133))) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))))

(assert (=> d!52165 (isStrictlySorted!326 (toList!1101 lt!85133))))

(assert (=> d!52165 (= (insertStrictlySorted!100 (toList!1101 lt!85133) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))) lt!85527)))

(assert (= (and d!52165 c!30741) b!171757))

(assert (= (and d!52165 (not c!30741)) b!171754))

(assert (= (and b!171754 c!30739) b!171758))

(assert (= (and b!171754 (not c!30739)) b!171760))

(assert (= (and b!171760 c!30740) b!171759))

(assert (= (and b!171760 (not c!30740)) b!171752))

(assert (= (or b!171759 b!171752) bm!17484))

(assert (= (or b!171758 bm!17484) bm!17483))

(assert (= (or b!171757 bm!17483) bm!17482))

(assert (= (and bm!17482 c!30738) b!171761))

(assert (= (and bm!17482 (not c!30738)) b!171755))

(assert (= (and d!52165 res!81593) b!171753))

(assert (= (and b!171753 res!81594) b!171756))

(declare-fun m!200559 () Bool)

(assert (=> b!171753 m!200559))

(declare-fun m!200561 () Bool)

(assert (=> d!52165 m!200561))

(declare-fun m!200563 () Bool)

(assert (=> d!52165 m!200563))

(declare-fun m!200565 () Bool)

(assert (=> b!171761 m!200565))

(declare-fun m!200567 () Bool)

(assert (=> b!171756 m!200567))

(declare-fun m!200569 () Bool)

(assert (=> bm!17482 m!200569))

(assert (=> d!51793 d!52165))

(declare-fun d!52167 () Bool)

(assert (=> d!52167 (= (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))) lt!85125)) (v!3910 (getValueByKey!183 (toList!1101 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))) lt!85125)))))

(assert (=> d!51785 d!52167))

(declare-fun b!171763 () Bool)

(declare-fun e!113360 () Option!189)

(declare-fun e!113361 () Option!189)

(assert (=> b!171763 (= e!113360 e!113361)))

(declare-fun c!30743 () Bool)

(assert (=> b!171763 (= c!30743 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))) (not (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))) lt!85125))))))

(declare-fun b!171764 () Bool)

(assert (=> b!171764 (= e!113361 (getValueByKey!183 (t!7023 (toList!1101 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))) lt!85125))))

(declare-fun d!52169 () Bool)

(declare-fun c!30742 () Bool)

(assert (=> d!52169 (= c!30742 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))) (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))) lt!85125)))))

(assert (=> d!52169 (= (getValueByKey!183 (toList!1101 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))) lt!85125) e!113360)))

(declare-fun b!171765 () Bool)

(assert (=> b!171765 (= e!113361 None!187)))

(declare-fun b!171762 () Bool)

(assert (=> b!171762 (= e!113360 (Some!188 (_2!1625 (h!2826 (toList!1101 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))))))

(assert (= (and d!52169 c!30742) b!171762))

(assert (= (and d!52169 (not c!30742)) b!171763))

(assert (= (and b!171763 c!30743) b!171764))

(assert (= (and b!171763 (not c!30743)) b!171765))

(declare-fun m!200571 () Bool)

(assert (=> b!171764 m!200571))

(assert (=> d!51785 d!52169))

(declare-fun d!52171 () Bool)

(declare-fun res!81595 () Bool)

(declare-fun e!113362 () Bool)

(assert (=> d!52171 (=> res!81595 e!113362)))

(assert (=> d!52171 (= res!81595 (and ((_ is Cons!2209) (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)))) (= (_1!1625 (h!2826 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))))) lt!85124)))))

(assert (=> d!52171 (= (containsKey!187 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))) lt!85124) e!113362)))

(declare-fun b!171766 () Bool)

(declare-fun e!113363 () Bool)

(assert (=> b!171766 (= e!113362 e!113363)))

(declare-fun res!81596 () Bool)

(assert (=> b!171766 (=> (not res!81596) (not e!113363))))

(assert (=> b!171766 (= res!81596 (and (or (not ((_ is Cons!2209) (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))))) (bvsle (_1!1625 (h!2826 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))))) lt!85124)) ((_ is Cons!2209) (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)))) (bvslt (_1!1625 (h!2826 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309))))) lt!85124)))))

(declare-fun b!171767 () Bool)

(assert (=> b!171767 (= e!113363 (containsKey!187 (t!7023 (toList!1101 (+!239 lt!85141 (tuple2!3231 lt!85126 v!309)))) lt!85124))))

(assert (= (and d!52171 (not res!81595)) b!171766))

(assert (= (and b!171766 res!81596) b!171767))

(declare-fun m!200573 () Bool)

(assert (=> b!171767 m!200573))

(assert (=> d!51791 d!52171))

(declare-fun b!171769 () Bool)

(declare-fun e!113364 () Option!189)

(declare-fun e!113365 () Option!189)

(assert (=> b!171769 (= e!113364 e!113365)))

(declare-fun c!30745 () Bool)

(assert (=> b!171769 (= c!30745 (and ((_ is Cons!2209) (toList!1101 lt!85357)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85357))) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171770 () Bool)

(assert (=> b!171770 (= e!113365 (getValueByKey!183 (t!7023 (toList!1101 lt!85357)) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(declare-fun c!30744 () Bool)

(declare-fun d!52173 () Bool)

(assert (=> d!52173 (= c!30744 (and ((_ is Cons!2209) (toList!1101 lt!85357)) (= (_1!1625 (h!2826 (toList!1101 lt!85357))) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))))

(assert (=> d!52173 (= (getValueByKey!183 (toList!1101 lt!85357) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))) e!113364)))

(declare-fun b!171771 () Bool)

(assert (=> b!171771 (= e!113365 None!187)))

(declare-fun b!171768 () Bool)

(assert (=> b!171768 (= e!113364 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85357)))))))

(assert (= (and d!52173 c!30744) b!171768))

(assert (= (and d!52173 (not c!30744)) b!171769))

(assert (= (and b!171769 c!30745) b!171770))

(assert (= (and b!171769 (not c!30745)) b!171771))

(declare-fun m!200575 () Bool)

(assert (=> b!171770 m!200575))

(assert (=> b!171268 d!52173))

(declare-fun d!52175 () Bool)

(assert (=> d!52175 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun lt!85528 () Unit!5249)

(assert (=> d!52175 (= lt!85528 (choose!931 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun e!113366 () Bool)

(assert (=> d!52175 e!113366))

(declare-fun res!81597 () Bool)

(assert (=> d!52175 (=> (not res!81597) (not e!113366))))

(assert (=> d!52175 (= res!81597 (isStrictlySorted!326 (toList!1101 lt!85193)))))

(assert (=> d!52175 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309))) lt!85528)))

(declare-fun b!171772 () Bool)

(assert (=> b!171772 (= e!113366 (containsKey!187 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309))))))

(assert (= (and d!52175 res!81597) b!171772))

(assert (=> d!52175 m!199375))

(assert (=> d!52175 m!199375))

(assert (=> d!52175 m!199413))

(declare-fun m!200577 () Bool)

(assert (=> d!52175 m!200577))

(declare-fun m!200579 () Bool)

(assert (=> d!52175 m!200579))

(assert (=> b!171772 m!199409))

(assert (=> b!171015 d!52175))

(assert (=> b!171015 d!51875))

(assert (=> b!171015 d!51745))

(assert (=> b!171119 d!51749))

(declare-fun d!52177 () Bool)

(declare-fun e!113367 () Bool)

(assert (=> d!52177 e!113367))

(declare-fun res!81598 () Bool)

(assert (=> d!52177 (=> (not res!81598) (not e!113367))))

(declare-fun lt!85530 () ListLongMap!2171)

(assert (=> d!52177 (= res!81598 (contains!1143 lt!85530 (_1!1625 (ite (or c!30573 c!30571) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 lt!85067)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067))))))))

(declare-fun lt!85531 () List!2213)

(assert (=> d!52177 (= lt!85530 (ListLongMap!2172 lt!85531))))

(declare-fun lt!85532 () Unit!5249)

(declare-fun lt!85529 () Unit!5249)

(assert (=> d!52177 (= lt!85532 lt!85529)))

(assert (=> d!52177 (= (getValueByKey!183 lt!85531 (_1!1625 (ite (or c!30573 c!30571) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 lt!85067)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067))))) (Some!188 (_2!1625 (ite (or c!30573 c!30571) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 lt!85067)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067))))))))

(assert (=> d!52177 (= lt!85529 (lemmaContainsTupThenGetReturnValue!98 lt!85531 (_1!1625 (ite (or c!30573 c!30571) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 lt!85067)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067)))) (_2!1625 (ite (or c!30573 c!30571) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 lt!85067)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067))))))))

(assert (=> d!52177 (= lt!85531 (insertStrictlySorted!100 (toList!1101 (ite c!30573 call!17441 (ite c!30571 call!17445 call!17444))) (_1!1625 (ite (or c!30573 c!30571) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 lt!85067)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067)))) (_2!1625 (ite (or c!30573 c!30571) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 lt!85067)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067))))))))

(assert (=> d!52177 (= (+!239 (ite c!30573 call!17441 (ite c!30571 call!17445 call!17444)) (ite (or c!30573 c!30571) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 lt!85067)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067)))) lt!85530)))

(declare-fun b!171773 () Bool)

(declare-fun res!81599 () Bool)

(assert (=> b!171773 (=> (not res!81599) (not e!113367))))

(assert (=> b!171773 (= res!81599 (= (getValueByKey!183 (toList!1101 lt!85530) (_1!1625 (ite (or c!30573 c!30571) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 lt!85067)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067))))) (Some!188 (_2!1625 (ite (or c!30573 c!30571) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 lt!85067)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067)))))))))

(declare-fun b!171774 () Bool)

(assert (=> b!171774 (= e!113367 (contains!1145 (toList!1101 lt!85530) (ite (or c!30573 c!30571) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 lt!85067)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067)))))))

(assert (= (and d!52177 res!81598) b!171773))

(assert (= (and b!171773 res!81599) b!171774))

(declare-fun m!200581 () Bool)

(assert (=> d!52177 m!200581))

(declare-fun m!200583 () Bool)

(assert (=> d!52177 m!200583))

(declare-fun m!200585 () Bool)

(assert (=> d!52177 m!200585))

(declare-fun m!200587 () Bool)

(assert (=> d!52177 m!200587))

(declare-fun m!200589 () Bool)

(assert (=> b!171773 m!200589))

(declare-fun m!200591 () Bool)

(assert (=> b!171774 m!200591))

(assert (=> bm!17443 d!52177))

(assert (=> d!51819 d!51823))

(assert (=> d!51819 d!51847))

(declare-fun d!52179 () Bool)

(assert (=> d!52179 (contains!1143 (+!239 lt!85166 (tuple2!3231 lt!85151 (zeroValue!3398 thiss!1248))) lt!85149)))

(assert (=> d!52179 true))

(declare-fun _$35!408 () Unit!5249)

(assert (=> d!52179 (= (choose!933 lt!85166 lt!85151 (zeroValue!3398 thiss!1248) lt!85149) _$35!408)))

(declare-fun bs!7096 () Bool)

(assert (= bs!7096 d!52179))

(assert (=> bs!7096 m!199311))

(assert (=> bs!7096 m!199311))

(assert (=> bs!7096 m!199313))

(assert (=> d!51819 d!52179))

(declare-fun d!52181 () Bool)

(declare-fun e!113369 () Bool)

(assert (=> d!52181 e!113369))

(declare-fun res!81600 () Bool)

(assert (=> d!52181 (=> res!81600 e!113369)))

(declare-fun lt!85535 () Bool)

(assert (=> d!52181 (= res!81600 (not lt!85535))))

(declare-fun lt!85533 () Bool)

(assert (=> d!52181 (= lt!85535 lt!85533)))

(declare-fun lt!85534 () Unit!5249)

(declare-fun e!113368 () Unit!5249)

(assert (=> d!52181 (= lt!85534 e!113368)))

(declare-fun c!30746 () Bool)

(assert (=> d!52181 (= c!30746 lt!85533)))

(assert (=> d!52181 (= lt!85533 (containsKey!187 (toList!1101 lt!85166) lt!85149))))

(assert (=> d!52181 (= (contains!1143 lt!85166 lt!85149) lt!85535)))

(declare-fun b!171775 () Bool)

(declare-fun lt!85536 () Unit!5249)

(assert (=> b!171775 (= e!113368 lt!85536)))

(assert (=> b!171775 (= lt!85536 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85166) lt!85149))))

(assert (=> b!171775 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85166) lt!85149))))

(declare-fun b!171776 () Bool)

(declare-fun Unit!5281 () Unit!5249)

(assert (=> b!171776 (= e!113368 Unit!5281)))

(declare-fun b!171777 () Bool)

(assert (=> b!171777 (= e!113369 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85166) lt!85149)))))

(assert (= (and d!52181 c!30746) b!171775))

(assert (= (and d!52181 (not c!30746)) b!171776))

(assert (= (and d!52181 (not res!81600)) b!171777))

(declare-fun m!200593 () Bool)

(assert (=> d!52181 m!200593))

(declare-fun m!200595 () Bool)

(assert (=> b!171775 m!200595))

(declare-fun m!200597 () Bool)

(assert (=> b!171775 m!200597))

(assert (=> b!171775 m!200597))

(declare-fun m!200599 () Bool)

(assert (=> b!171775 m!200599))

(assert (=> b!171777 m!200597))

(assert (=> b!171777 m!200597))

(assert (=> b!171777 m!200599))

(assert (=> d!51819 d!52181))

(declare-fun d!52183 () Bool)

(declare-fun res!81601 () Bool)

(declare-fun e!113370 () Bool)

(assert (=> d!52183 (=> res!81601 e!113370)))

(assert (=> d!52183 (= res!81601 (and ((_ is Cons!2209) (toList!1101 lt!85152)) (= (_1!1625 (h!2826 (toList!1101 lt!85152))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52183 (= (containsKey!187 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000) e!113370)))

(declare-fun b!171778 () Bool)

(declare-fun e!113371 () Bool)

(assert (=> b!171778 (= e!113370 e!113371)))

(declare-fun res!81602 () Bool)

(assert (=> b!171778 (=> (not res!81602) (not e!113371))))

(assert (=> b!171778 (= res!81602 (and (or (not ((_ is Cons!2209) (toList!1101 lt!85152))) (bvsle (_1!1625 (h!2826 (toList!1101 lt!85152))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!2209) (toList!1101 lt!85152)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85152))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!171779 () Bool)

(assert (=> b!171779 (= e!113371 (containsKey!187 (t!7023 (toList!1101 lt!85152)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!52183 (not res!81601)) b!171778))

(assert (= (and b!171778 res!81602) b!171779))

(declare-fun m!200601 () Bool)

(assert (=> b!171779 m!200601))

(assert (=> d!51851 d!52183))

(declare-fun d!52185 () Bool)

(declare-fun e!113373 () Bool)

(assert (=> d!52185 e!113373))

(declare-fun res!81603 () Bool)

(assert (=> d!52185 (=> res!81603 e!113373)))

(declare-fun lt!85539 () Bool)

(assert (=> d!52185 (= res!81603 (not lt!85539))))

(declare-fun lt!85537 () Bool)

(assert (=> d!52185 (= lt!85539 lt!85537)))

(declare-fun lt!85538 () Unit!5249)

(declare-fun e!113372 () Unit!5249)

(assert (=> d!52185 (= lt!85538 e!113372)))

(declare-fun c!30747 () Bool)

(assert (=> d!52185 (= c!30747 lt!85537)))

(assert (=> d!52185 (= lt!85537 (containsKey!187 (toList!1101 lt!85243) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52185 (= (contains!1143 lt!85243 #b1000000000000000000000000000000000000000000000000000000000000000) lt!85539)))

(declare-fun b!171780 () Bool)

(declare-fun lt!85540 () Unit!5249)

(assert (=> b!171780 (= e!113372 lt!85540)))

(assert (=> b!171780 (= lt!85540 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85243) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171780 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85243) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!171781 () Bool)

(declare-fun Unit!5282 () Unit!5249)

(assert (=> b!171781 (= e!113372 Unit!5282)))

(declare-fun b!171782 () Bool)

(assert (=> b!171782 (= e!113373 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85243) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52185 c!30747) b!171780))

(assert (= (and d!52185 (not c!30747)) b!171781))

(assert (= (and d!52185 (not res!81603)) b!171782))

(declare-fun m!200603 () Bool)

(assert (=> d!52185 m!200603))

(declare-fun m!200605 () Bool)

(assert (=> b!171780 m!200605))

(declare-fun m!200607 () Bool)

(assert (=> b!171780 m!200607))

(assert (=> b!171780 m!200607))

(declare-fun m!200609 () Bool)

(assert (=> b!171780 m!200609))

(assert (=> b!171782 m!200607))

(assert (=> b!171782 m!200607))

(assert (=> b!171782 m!200609))

(assert (=> b!171091 d!52185))

(declare-fun b!171784 () Bool)

(declare-fun e!113374 () Option!189)

(declare-fun e!113375 () Option!189)

(assert (=> b!171784 (= e!113374 e!113375)))

(declare-fun c!30749 () Bool)

(assert (=> b!171784 (= c!30749 (and ((_ is Cons!2209) (toList!1101 lt!85324)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85324))) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171785 () Bool)

(assert (=> b!171785 (= e!113375 (getValueByKey!183 (t!7023 (toList!1101 lt!85324)) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))))))

(declare-fun d!52187 () Bool)

(declare-fun c!30748 () Bool)

(assert (=> d!52187 (= c!30748 (and ((_ is Cons!2209) (toList!1101 lt!85324)) (= (_1!1625 (h!2826 (toList!1101 lt!85324))) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))))))))

(assert (=> d!52187 (= (getValueByKey!183 (toList!1101 lt!85324) (_1!1625 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248)))) e!113374)))

(declare-fun b!171786 () Bool)

(assert (=> b!171786 (= e!113375 None!187)))

(declare-fun b!171783 () Bool)

(assert (=> b!171783 (= e!113374 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85324)))))))

(assert (= (and d!52187 c!30748) b!171783))

(assert (= (and d!52187 (not c!30748)) b!171784))

(assert (= (and b!171784 c!30749) b!171785))

(assert (= (and b!171784 (not c!30749)) b!171786))

(declare-fun m!200611 () Bool)

(assert (=> b!171785 m!200611))

(assert (=> b!171244 d!52187))

(declare-fun d!52189 () Bool)

(declare-fun lt!85541 () Bool)

(assert (=> d!52189 (= lt!85541 (select (content!146 (toList!1101 lt!85277)) (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun e!113377 () Bool)

(assert (=> d!52189 (= lt!85541 e!113377)))

(declare-fun res!81604 () Bool)

(assert (=> d!52189 (=> (not res!81604) (not e!113377))))

(assert (=> d!52189 (= res!81604 ((_ is Cons!2209) (toList!1101 lt!85277)))))

(assert (=> d!52189 (= (contains!1145 (toList!1101 lt!85277) (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) lt!85541)))

(declare-fun b!171787 () Bool)

(declare-fun e!113376 () Bool)

(assert (=> b!171787 (= e!113377 e!113376)))

(declare-fun res!81605 () Bool)

(assert (=> b!171787 (=> res!81605 e!113376)))

(assert (=> b!171787 (= res!81605 (= (h!2826 (toList!1101 lt!85277)) (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(declare-fun b!171788 () Bool)

(assert (=> b!171788 (= e!113376 (contains!1145 (t!7023 (toList!1101 lt!85277)) (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))

(assert (= (and d!52189 res!81604) b!171787))

(assert (= (and b!171787 (not res!81605)) b!171788))

(declare-fun m!200613 () Bool)

(assert (=> d!52189 m!200613))

(declare-fun m!200615 () Bool)

(assert (=> d!52189 m!200615))

(declare-fun m!200617 () Bool)

(assert (=> b!171788 m!200617))

(assert (=> b!171158 d!52189))

(declare-fun d!52191 () Bool)

(assert (=> d!52191 (= (apply!129 lt!85292 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1940 (getValueByKey!183 (toList!1101 lt!85292) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7097 () Bool)

(assert (= bs!7097 d!52191))

(declare-fun m!200619 () Bool)

(assert (=> bs!7097 m!200619))

(assert (=> bs!7097 m!200619))

(declare-fun m!200621 () Bool)

(assert (=> bs!7097 m!200621))

(assert (=> b!171231 d!52191))

(declare-fun d!52193 () Bool)

(assert (=> d!52193 (= (isEmpty!438 (getValueByKey!183 (toList!1101 lt!85065) key!828)) (not ((_ is Some!188) (getValueByKey!183 (toList!1101 lt!85065) key!828))))))

(assert (=> d!51711 d!52193))

(declare-fun b!171789 () Bool)

(declare-fun e!113378 () List!2213)

(declare-fun call!17489 () List!2213)

(assert (=> b!171789 (= e!113378 call!17489)))

(declare-fun b!171790 () Bool)

(declare-fun res!81607 () Bool)

(declare-fun e!113382 () Bool)

(assert (=> b!171790 (=> (not res!81607) (not e!113382))))

(declare-fun lt!85542 () List!2213)

(assert (=> b!171790 (= res!81607 (containsKey!187 lt!85542 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!171791 () Bool)

(declare-fun e!113381 () List!2213)

(declare-fun e!113379 () List!2213)

(assert (=> b!171791 (= e!113381 e!113379)))

(declare-fun c!30751 () Bool)

(assert (=> b!171791 (= c!30751 (and ((_ is Cons!2209) (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))) (= (_1!1625 (h!2826 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun c!30752 () Bool)

(declare-fun e!113380 () List!2213)

(declare-fun b!171792 () Bool)

(assert (=> b!171792 (= e!113380 (ite c!30751 (t!7023 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))) (ite c!30752 (Cons!2209 (h!2826 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))) (t!7023 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))) Nil!2210)))))

(declare-fun b!171793 () Bool)

(assert (=> b!171793 (= e!113382 (contains!1145 lt!85542 (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!171794 () Bool)

(declare-fun call!17488 () List!2213)

(assert (=> b!171794 (= e!113381 call!17488)))

(declare-fun bm!17485 () Bool)

(declare-fun c!30753 () Bool)

(assert (=> bm!17485 (= call!17488 ($colon$colon!96 e!113380 (ite c!30753 (h!2826 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))) (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun c!30750 () Bool)

(assert (=> bm!17485 (= c!30750 c!30753)))

(declare-fun bm!17487 () Bool)

(declare-fun call!17490 () List!2213)

(assert (=> bm!17487 (= call!17489 call!17490)))

(declare-fun b!171795 () Bool)

(assert (=> b!171795 (= e!113379 call!17490)))

(declare-fun b!171796 () Bool)

(assert (=> b!171796 (= e!113378 call!17489)))

(declare-fun b!171797 () Bool)

(assert (=> b!171797 (= c!30752 (and ((_ is Cons!2209) (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))) (bvsgt (_1!1625 (h!2826 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> b!171797 (= e!113379 e!113378)))

(declare-fun b!171798 () Bool)

(assert (=> b!171798 (= e!113380 (insertStrictlySorted!100 (t!7023 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun bm!17486 () Bool)

(assert (=> bm!17486 (= call!17490 call!17488)))

(declare-fun d!52195 () Bool)

(assert (=> d!52195 e!113382))

(declare-fun res!81606 () Bool)

(assert (=> d!52195 (=> (not res!81606) (not e!113382))))

(assert (=> d!52195 (= res!81606 (isStrictlySorted!326 lt!85542))))

(assert (=> d!52195 (= lt!85542 e!113381)))

(assert (=> d!52195 (= c!30753 (and ((_ is Cons!2209) (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248))))) (bvslt (_1!1625 (h!2826 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52195 (isStrictlySorted!326 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))))))

(assert (=> d!52195 (= (insertStrictlySorted!100 (t!7023 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!85542)))

(assert (= (and d!52195 c!30753) b!171794))

(assert (= (and d!52195 (not c!30753)) b!171791))

(assert (= (and b!171791 c!30751) b!171795))

(assert (= (and b!171791 (not c!30751)) b!171797))

(assert (= (and b!171797 c!30752) b!171796))

(assert (= (and b!171797 (not c!30752)) b!171789))

(assert (= (or b!171796 b!171789) bm!17487))

(assert (= (or b!171795 bm!17487) bm!17486))

(assert (= (or b!171794 bm!17486) bm!17485))

(assert (= (and bm!17485 c!30750) b!171798))

(assert (= (and bm!17485 (not c!30750)) b!171792))

(assert (= (and d!52195 res!81606) b!171790))

(assert (= (and b!171790 res!81607) b!171793))

(declare-fun m!200623 () Bool)

(assert (=> b!171790 m!200623))

(declare-fun m!200625 () Bool)

(assert (=> d!52195 m!200625))

(assert (=> d!52195 m!199935))

(declare-fun m!200627 () Bool)

(assert (=> b!171798 m!200627))

(declare-fun m!200629 () Bool)

(assert (=> b!171793 m!200629))

(declare-fun m!200631 () Bool)

(assert (=> bm!17485 m!200631))

(assert (=> b!171177 d!52195))

(assert (=> bm!17425 d!52091))

(declare-fun b!171800 () Bool)

(declare-fun e!113383 () Option!189)

(declare-fun e!113384 () Option!189)

(assert (=> b!171800 (= e!113383 e!113384)))

(declare-fun c!30755 () Bool)

(assert (=> b!171800 (= c!30755 (and ((_ is Cons!2209) (t!7023 (toList!1101 lt!85193))) (not (= (_1!1625 (h!2826 (t!7023 (toList!1101 lt!85193)))) (_1!1625 (tuple2!3231 key!828 v!309))))))))

(declare-fun b!171801 () Bool)

(assert (=> b!171801 (= e!113384 (getValueByKey!183 (t!7023 (t!7023 (toList!1101 lt!85193))) (_1!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun c!30754 () Bool)

(declare-fun d!52197 () Bool)

(assert (=> d!52197 (= c!30754 (and ((_ is Cons!2209) (t!7023 (toList!1101 lt!85193))) (= (_1!1625 (h!2826 (t!7023 (toList!1101 lt!85193)))) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(assert (=> d!52197 (= (getValueByKey!183 (t!7023 (toList!1101 lt!85193)) (_1!1625 (tuple2!3231 key!828 v!309))) e!113383)))

(declare-fun b!171802 () Bool)

(assert (=> b!171802 (= e!113384 None!187)))

(declare-fun b!171799 () Bool)

(assert (=> b!171799 (= e!113383 (Some!188 (_2!1625 (h!2826 (t!7023 (toList!1101 lt!85193))))))))

(assert (= (and d!52197 c!30754) b!171799))

(assert (= (and d!52197 (not c!30754)) b!171800))

(assert (= (and b!171800 c!30755) b!171801))

(assert (= (and b!171800 (not c!30755)) b!171802))

(declare-fun m!200633 () Bool)

(assert (=> b!171801 m!200633))

(assert (=> b!171131 d!52197))

(declare-fun b!171804 () Bool)

(declare-fun e!113385 () Option!189)

(declare-fun e!113386 () Option!189)

(assert (=> b!171804 (= e!113385 e!113386)))

(declare-fun c!30757 () Bool)

(assert (=> b!171804 (= c!30757 (and ((_ is Cons!2209) (toList!1101 lt!85309)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85309))) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171805 () Bool)

(assert (=> b!171805 (= e!113386 (getValueByKey!183 (t!7023 (toList!1101 lt!85309)) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))))))

(declare-fun d!52199 () Bool)

(declare-fun c!30756 () Bool)

(assert (=> d!52199 (= c!30756 (and ((_ is Cons!2209) (toList!1101 lt!85309)) (= (_1!1625 (h!2826 (toList!1101 lt!85309))) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))))))))

(assert (=> d!52199 (= (getValueByKey!183 (toList!1101 lt!85309) (_1!1625 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248)))) e!113385)))

(declare-fun b!171806 () Bool)

(assert (=> b!171806 (= e!113386 None!187)))

(declare-fun b!171803 () Bool)

(assert (=> b!171803 (= e!113385 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85309)))))))

(assert (= (and d!52199 c!30756) b!171803))

(assert (= (and d!52199 (not c!30756)) b!171804))

(assert (= (and b!171804 c!30757) b!171805))

(assert (= (and b!171804 (not c!30757)) b!171806))

(declare-fun m!200635 () Bool)

(assert (=> b!171805 m!200635))

(assert (=> b!171236 d!52199))

(assert (=> b!171187 d!52089))

(declare-fun b!171807 () Bool)

(declare-fun e!113391 () Bool)

(declare-fun e!113388 () Bool)

(assert (=> b!171807 (= e!113391 e!113388)))

(declare-fun c!30759 () Bool)

(assert (=> b!171807 (= c!30759 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun b!171809 () Bool)

(declare-fun e!113387 () Bool)

(assert (=> b!171809 (= e!113387 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!171809 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!171810 () Bool)

(declare-fun res!81611 () Bool)

(declare-fun e!113390 () Bool)

(assert (=> b!171810 (=> (not res!81611) (not e!113390))))

(declare-fun lt!85547 () ListLongMap!2171)

(assert (=> b!171810 (= res!81611 (not (contains!1143 lt!85547 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!171811 () Bool)

(declare-fun e!113393 () ListLongMap!2171)

(assert (=> b!171811 (= e!113393 (ListLongMap!2172 Nil!2210))))

(declare-fun b!171812 () Bool)

(declare-fun e!113389 () Bool)

(assert (=> b!171812 (= e!113391 e!113389)))

(assert (=> b!171812 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun res!81610 () Bool)

(assert (=> b!171812 (= res!81610 (contains!1143 lt!85547 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!171812 (=> (not res!81610) (not e!113389))))

(declare-fun b!171813 () Bool)

(assert (=> b!171813 (= e!113390 e!113391)))

(declare-fun c!30761 () Bool)

(assert (=> b!171813 (= c!30761 e!113387)))

(declare-fun res!81609 () Bool)

(assert (=> b!171813 (=> (not res!81609) (not e!113387))))

(assert (=> b!171813 (= res!81609 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(declare-fun bm!17488 () Bool)

(declare-fun call!17491 () ListLongMap!2171)

(assert (=> bm!17488 (= call!17491 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3555 thiss!1248)))))

(declare-fun d!52201 () Bool)

(assert (=> d!52201 e!113390))

(declare-fun res!81608 () Bool)

(assert (=> d!52201 (=> (not res!81608) (not e!113390))))

(assert (=> d!52201 (= res!81608 (not (contains!1143 lt!85547 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52201 (= lt!85547 e!113393)))

(declare-fun c!30758 () Bool)

(assert (=> d!52201 (= c!30758 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> d!52201 (validMask!0 (mask!8383 thiss!1248))))

(assert (=> d!52201 (= (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3555 thiss!1248)) lt!85547)))

(declare-fun b!171808 () Bool)

(declare-fun e!113392 () ListLongMap!2171)

(assert (=> b!171808 (= e!113393 e!113392)))

(declare-fun c!30760 () Bool)

(assert (=> b!171808 (= c!30760 (validKeyInArray!0 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!171814 () Bool)

(assert (=> b!171814 (= e!113388 (= lt!85547 (getCurrentListMapNoExtraKeys!159 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (bvor (extraKeys!3296 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!3398 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3555 thiss!1248))))))

(declare-fun b!171815 () Bool)

(assert (=> b!171815 (= e!113388 (isEmpty!439 lt!85547))))

(declare-fun b!171816 () Bool)

(assert (=> b!171816 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 thiss!1248))))))

(assert (=> b!171816 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3682 (_values!3538 thiss!1248))))))

(assert (=> b!171816 (= e!113389 (= (apply!129 lt!85547 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!171817 () Bool)

(assert (=> b!171817 (= e!113392 call!17491)))

(declare-fun b!171818 () Bool)

(declare-fun lt!85546 () Unit!5249)

(declare-fun lt!85543 () Unit!5249)

(assert (=> b!171818 (= lt!85546 lt!85543)))

(declare-fun lt!85544 () ListLongMap!2171)

(declare-fun lt!85548 () (_ BitVec 64))

(declare-fun lt!85545 () (_ BitVec 64))

(declare-fun lt!85549 () V!4987)

(assert (=> b!171818 (not (contains!1143 (+!239 lt!85544 (tuple2!3231 lt!85545 lt!85549)) lt!85548))))

(assert (=> b!171818 (= lt!85543 (addStillNotContains!73 lt!85544 lt!85545 lt!85549 lt!85548))))

(assert (=> b!171818 (= lt!85548 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!171818 (= lt!85549 (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!171818 (= lt!85545 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!171818 (= lt!85544 call!17491)))

(assert (=> b!171818 (= e!113392 (+!239 call!17491 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!52201 c!30758) b!171811))

(assert (= (and d!52201 (not c!30758)) b!171808))

(assert (= (and b!171808 c!30760) b!171818))

(assert (= (and b!171808 (not c!30760)) b!171817))

(assert (= (or b!171818 b!171817) bm!17488))

(assert (= (and d!52201 res!81608) b!171810))

(assert (= (and b!171810 res!81611) b!171813))

(assert (= (and b!171813 res!81609) b!171809))

(assert (= (and b!171813 c!30761) b!171812))

(assert (= (and b!171813 (not c!30761)) b!171807))

(assert (= (and b!171812 res!81610) b!171816))

(assert (= (and b!171807 c!30759) b!171814))

(assert (= (and b!171807 (not c!30759)) b!171815))

(declare-fun b_lambda!6951 () Bool)

(assert (=> (not b_lambda!6951) (not b!171816)))

(assert (=> b!171816 t!7026))

(declare-fun b_and!10691 () Bool)

(assert (= b_and!10689 (and (=> t!7026 result!4569) b_and!10691)))

(declare-fun b_lambda!6953 () Bool)

(assert (=> (not b_lambda!6953) (not b!171818)))

(assert (=> b!171818 t!7026))

(declare-fun b_and!10693 () Bool)

(assert (= b_and!10691 (and (=> t!7026 result!4569) b_and!10693)))

(assert (=> b!171808 m!200031))

(assert (=> b!171808 m!200031))

(assert (=> b!171808 m!200033))

(declare-fun m!200637 () Bool)

(assert (=> b!171814 m!200637))

(assert (=> b!171809 m!200031))

(assert (=> b!171809 m!200031))

(assert (=> b!171809 m!200033))

(assert (=> bm!17488 m!200637))

(declare-fun m!200639 () Bool)

(assert (=> d!52201 m!200639))

(assert (=> d!52201 m!199273))

(assert (=> b!171812 m!200031))

(assert (=> b!171812 m!200031))

(declare-fun m!200641 () Bool)

(assert (=> b!171812 m!200641))

(assert (=> b!171818 m!200375))

(assert (=> b!171818 m!199267))

(assert (=> b!171818 m!200377))

(declare-fun m!200643 () Bool)

(assert (=> b!171818 m!200643))

(assert (=> b!171818 m!200375))

(assert (=> b!171818 m!199267))

(declare-fun m!200645 () Bool)

(assert (=> b!171818 m!200645))

(assert (=> b!171818 m!200031))

(declare-fun m!200647 () Bool)

(assert (=> b!171818 m!200647))

(declare-fun m!200649 () Bool)

(assert (=> b!171818 m!200649))

(assert (=> b!171818 m!200647))

(declare-fun m!200651 () Bool)

(assert (=> b!171815 m!200651))

(assert (=> b!171816 m!200375))

(assert (=> b!171816 m!199267))

(assert (=> b!171816 m!200377))

(assert (=> b!171816 m!200031))

(declare-fun m!200653 () Bool)

(assert (=> b!171816 m!200653))

(assert (=> b!171816 m!200375))

(assert (=> b!171816 m!199267))

(assert (=> b!171816 m!200031))

(declare-fun m!200655 () Bool)

(assert (=> b!171810 m!200655))

(assert (=> b!171095 d!52201))

(assert (=> b!171256 d!51969))

(assert (=> b!171256 d!51971))

(declare-fun d!52203 () Bool)

(declare-fun res!81612 () Bool)

(declare-fun e!113394 () Bool)

(assert (=> d!52203 (=> res!81612 e!113394)))

(assert (=> d!52203 (= res!81612 (or ((_ is Nil!2210) lt!85216) ((_ is Nil!2210) (t!7023 lt!85216))))))

(assert (=> d!52203 (= (isStrictlySorted!326 lt!85216) e!113394)))

(declare-fun b!171819 () Bool)

(declare-fun e!113395 () Bool)

(assert (=> b!171819 (= e!113394 e!113395)))

(declare-fun res!81613 () Bool)

(assert (=> b!171819 (=> (not res!81613) (not e!113395))))

(assert (=> b!171819 (= res!81613 (bvslt (_1!1625 (h!2826 lt!85216)) (_1!1625 (h!2826 (t!7023 lt!85216)))))))

(declare-fun b!171820 () Bool)

(assert (=> b!171820 (= e!113395 (isStrictlySorted!326 (t!7023 lt!85216)))))

(assert (= (and d!52203 (not res!81612)) b!171819))

(assert (= (and b!171819 res!81613) b!171820))

(declare-fun m!200657 () Bool)

(assert (=> b!171820 m!200657))

(assert (=> d!51725 d!52203))

(declare-fun d!52205 () Bool)

(declare-fun res!81614 () Bool)

(declare-fun e!113396 () Bool)

(assert (=> d!52205 (=> res!81614 e!113396)))

(assert (=> d!52205 (= res!81614 (or ((_ is Nil!2210) (toList!1101 (map!1852 thiss!1248))) ((_ is Nil!2210) (t!7023 (toList!1101 (map!1852 thiss!1248))))))))

(assert (=> d!52205 (= (isStrictlySorted!326 (toList!1101 (map!1852 thiss!1248))) e!113396)))

(declare-fun b!171821 () Bool)

(declare-fun e!113397 () Bool)

(assert (=> b!171821 (= e!113396 e!113397)))

(declare-fun res!81615 () Bool)

(assert (=> b!171821 (=> (not res!81615) (not e!113397))))

(assert (=> b!171821 (= res!81615 (bvslt (_1!1625 (h!2826 (toList!1101 (map!1852 thiss!1248)))) (_1!1625 (h!2826 (t!7023 (toList!1101 (map!1852 thiss!1248)))))))))

(declare-fun b!171822 () Bool)

(assert (=> b!171822 (= e!113397 (isStrictlySorted!326 (t!7023 (toList!1101 (map!1852 thiss!1248)))))))

(assert (= (and d!52205 (not res!81614)) b!171821))

(assert (= (and b!171821 res!81615) b!171822))

(assert (=> b!171822 m!200527))

(assert (=> d!51725 d!52205))

(assert (=> b!171293 d!51749))

(assert (=> b!171263 d!51943))

(assert (=> b!171263 d!51945))

(declare-fun d!52207 () Bool)

(declare-fun lt!85550 () Bool)

(assert (=> d!52207 (= lt!85550 (select (content!147 Nil!2212) (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun e!113399 () Bool)

(assert (=> d!52207 (= lt!85550 e!113399)))

(declare-fun res!81617 () Bool)

(assert (=> d!52207 (=> (not res!81617) (not e!113399))))

(assert (=> d!52207 (= res!81617 ((_ is Cons!2211) Nil!2212))))

(assert (=> d!52207 (= (contains!1146 Nil!2212 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)) lt!85550)))

(declare-fun b!171823 () Bool)

(declare-fun e!113398 () Bool)

(assert (=> b!171823 (= e!113399 e!113398)))

(declare-fun res!81616 () Bool)

(assert (=> b!171823 (=> res!81616 e!113398)))

(assert (=> b!171823 (= res!81616 (= (h!2828 Nil!2212) (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun b!171824 () Bool)

(assert (=> b!171824 (= e!113398 (contains!1146 (t!7027 Nil!2212) (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(assert (= (and d!52207 res!81617) b!171823))

(assert (= (and b!171823 (not res!81616)) b!171824))

(assert (=> d!52207 m!200315))

(assert (=> d!52207 m!199523))

(declare-fun m!200659 () Bool)

(assert (=> d!52207 m!200659))

(assert (=> b!171824 m!199523))

(declare-fun m!200661 () Bool)

(assert (=> b!171824 m!200661))

(assert (=> b!171209 d!52207))

(assert (=> d!51775 d!51873))

(declare-fun d!52209 () Bool)

(declare-fun e!113401 () Bool)

(assert (=> d!52209 e!113401))

(declare-fun res!81618 () Bool)

(assert (=> d!52209 (=> res!81618 e!113401)))

(declare-fun lt!85553 () Bool)

(assert (=> d!52209 (= res!81618 (not lt!85553))))

(declare-fun lt!85551 () Bool)

(assert (=> d!52209 (= lt!85553 lt!85551)))

(declare-fun lt!85552 () Unit!5249)

(declare-fun e!113400 () Unit!5249)

(assert (=> d!52209 (= lt!85552 e!113400)))

(declare-fun c!30762 () Bool)

(assert (=> d!52209 (= c!30762 lt!85551)))

(assert (=> d!52209 (= lt!85551 (containsKey!187 (toList!1101 lt!85357) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(assert (=> d!52209 (= (contains!1143 lt!85357 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))) lt!85553)))

(declare-fun b!171825 () Bool)

(declare-fun lt!85554 () Unit!5249)

(assert (=> b!171825 (= e!113400 lt!85554)))

(assert (=> b!171825 (= lt!85554 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85357) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(assert (=> b!171825 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85357) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(declare-fun b!171826 () Bool)

(declare-fun Unit!5283 () Unit!5249)

(assert (=> b!171826 (= e!113400 Unit!5283)))

(declare-fun b!171827 () Bool)

(assert (=> b!171827 (= e!113401 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85357) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))))

(assert (= (and d!52209 c!30762) b!171825))

(assert (= (and d!52209 (not c!30762)) b!171826))

(assert (= (and d!52209 (not res!81618)) b!171827))

(declare-fun m!200663 () Bool)

(assert (=> d!52209 m!200663))

(declare-fun m!200665 () Bool)

(assert (=> b!171825 m!200665))

(assert (=> b!171825 m!199829))

(assert (=> b!171825 m!199829))

(declare-fun m!200667 () Bool)

(assert (=> b!171825 m!200667))

(assert (=> b!171827 m!199829))

(assert (=> b!171827 m!199829))

(assert (=> b!171827 m!200667))

(assert (=> d!51835 d!52209))

(declare-fun b!171829 () Bool)

(declare-fun e!113402 () Option!189)

(declare-fun e!113403 () Option!189)

(assert (=> b!171829 (= e!113402 e!113403)))

(declare-fun c!30764 () Bool)

(assert (=> b!171829 (= c!30764 (and ((_ is Cons!2209) lt!85358) (not (= (_1!1625 (h!2826 lt!85358)) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171830 () Bool)

(assert (=> b!171830 (= e!113403 (getValueByKey!183 (t!7023 lt!85358) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(declare-fun d!52211 () Bool)

(declare-fun c!30763 () Bool)

(assert (=> d!52211 (= c!30763 (and ((_ is Cons!2209) lt!85358) (= (_1!1625 (h!2826 lt!85358)) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))))

(assert (=> d!52211 (= (getValueByKey!183 lt!85358 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))) e!113402)))

(declare-fun b!171831 () Bool)

(assert (=> b!171831 (= e!113403 None!187)))

(declare-fun b!171828 () Bool)

(assert (=> b!171828 (= e!113402 (Some!188 (_2!1625 (h!2826 lt!85358))))))

(assert (= (and d!52211 c!30763) b!171828))

(assert (= (and d!52211 (not c!30763)) b!171829))

(assert (= (and b!171829 c!30764) b!171830))

(assert (= (and b!171829 (not c!30764)) b!171831))

(declare-fun m!200669 () Bool)

(assert (=> b!171830 m!200669))

(assert (=> d!51835 d!52211))

(declare-fun d!52213 () Bool)

(assert (=> d!52213 (= (getValueByKey!183 lt!85358 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))) (Some!188 (_2!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(declare-fun lt!85555 () Unit!5249)

(assert (=> d!52213 (= lt!85555 (choose!932 lt!85358 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(declare-fun e!113404 () Bool)

(assert (=> d!52213 e!113404))

(declare-fun res!81619 () Bool)

(assert (=> d!52213 (=> (not res!81619) (not e!113404))))

(assert (=> d!52213 (= res!81619 (isStrictlySorted!326 lt!85358))))

(assert (=> d!52213 (= (lemmaContainsTupThenGetReturnValue!98 lt!85358 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))) lt!85555)))

(declare-fun b!171832 () Bool)

(declare-fun res!81620 () Bool)

(assert (=> b!171832 (=> (not res!81620) (not e!113404))))

(assert (=> b!171832 (= res!81620 (containsKey!187 lt!85358 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(declare-fun b!171833 () Bool)

(assert (=> b!171833 (= e!113404 (contains!1145 lt!85358 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))))

(assert (= (and d!52213 res!81619) b!171832))

(assert (= (and b!171832 res!81620) b!171833))

(assert (=> d!52213 m!199823))

(declare-fun m!200671 () Bool)

(assert (=> d!52213 m!200671))

(declare-fun m!200673 () Bool)

(assert (=> d!52213 m!200673))

(declare-fun m!200675 () Bool)

(assert (=> b!171832 m!200675))

(declare-fun m!200677 () Bool)

(assert (=> b!171833 m!200677))

(assert (=> d!51835 d!52213))

(declare-fun b!171834 () Bool)

(declare-fun e!113405 () List!2213)

(declare-fun call!17493 () List!2213)

(assert (=> b!171834 (= e!113405 call!17493)))

(declare-fun b!171835 () Bool)

(declare-fun res!81622 () Bool)

(declare-fun e!113409 () Bool)

(assert (=> b!171835 (=> (not res!81622) (not e!113409))))

(declare-fun lt!85556 () List!2213)

(assert (=> b!171835 (= res!81622 (containsKey!187 lt!85556 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(declare-fun b!171836 () Bool)

(declare-fun e!113408 () List!2213)

(declare-fun e!113406 () List!2213)

(assert (=> b!171836 (= e!113408 e!113406)))

(declare-fun c!30766 () Bool)

(assert (=> b!171836 (= c!30766 (and ((_ is Cons!2209) (toList!1101 lt!85162)) (= (_1!1625 (h!2826 (toList!1101 lt!85162))) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))))

(declare-fun b!171837 () Bool)

(declare-fun c!30767 () Bool)

(declare-fun e!113407 () List!2213)

(assert (=> b!171837 (= e!113407 (ite c!30766 (t!7023 (toList!1101 lt!85162)) (ite c!30767 (Cons!2209 (h!2826 (toList!1101 lt!85162)) (t!7023 (toList!1101 lt!85162))) Nil!2210)))))

(declare-fun b!171838 () Bool)

(assert (=> b!171838 (= e!113409 (contains!1145 lt!85556 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))))

(declare-fun b!171839 () Bool)

(declare-fun call!17492 () List!2213)

(assert (=> b!171839 (= e!113408 call!17492)))

(declare-fun c!30768 () Bool)

(declare-fun bm!17489 () Bool)

(assert (=> bm!17489 (= call!17492 ($colon$colon!96 e!113407 (ite c!30768 (h!2826 (toList!1101 lt!85162)) (tuple2!3231 (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))))

(declare-fun c!30765 () Bool)

(assert (=> bm!17489 (= c!30765 c!30768)))

(declare-fun bm!17491 () Bool)

(declare-fun call!17494 () List!2213)

(assert (=> bm!17491 (= call!17493 call!17494)))

(declare-fun b!171840 () Bool)

(assert (=> b!171840 (= e!113406 call!17494)))

(declare-fun b!171841 () Bool)

(assert (=> b!171841 (= e!113405 call!17493)))

(declare-fun b!171842 () Bool)

(assert (=> b!171842 (= c!30767 (and ((_ is Cons!2209) (toList!1101 lt!85162)) (bvsgt (_1!1625 (h!2826 (toList!1101 lt!85162))) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))))

(assert (=> b!171842 (= e!113406 e!113405)))

(declare-fun b!171843 () Bool)

(assert (=> b!171843 (= e!113407 (insertStrictlySorted!100 (t!7023 (toList!1101 lt!85162)) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))))))

(declare-fun bm!17490 () Bool)

(assert (=> bm!17490 (= call!17494 call!17492)))

(declare-fun d!52215 () Bool)

(assert (=> d!52215 e!113409))

(declare-fun res!81621 () Bool)

(assert (=> d!52215 (=> (not res!81621) (not e!113409))))

(assert (=> d!52215 (= res!81621 (isStrictlySorted!326 lt!85556))))

(assert (=> d!52215 (= lt!85556 e!113408)))

(assert (=> d!52215 (= c!30768 (and ((_ is Cons!2209) (toList!1101 lt!85162)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85162))) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))))))))

(assert (=> d!52215 (isStrictlySorted!326 (toList!1101 lt!85162))))

(assert (=> d!52215 (= (insertStrictlySorted!100 (toList!1101 lt!85162) (_1!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248))) (_2!1625 (tuple2!3231 lt!85153 (minValue!3398 thiss!1248)))) lt!85556)))

(assert (= (and d!52215 c!30768) b!171839))

(assert (= (and d!52215 (not c!30768)) b!171836))

(assert (= (and b!171836 c!30766) b!171840))

(assert (= (and b!171836 (not c!30766)) b!171842))

(assert (= (and b!171842 c!30767) b!171841))

(assert (= (and b!171842 (not c!30767)) b!171834))

(assert (= (or b!171841 b!171834) bm!17491))

(assert (= (or b!171840 bm!17491) bm!17490))

(assert (= (or b!171839 bm!17490) bm!17489))

(assert (= (and bm!17489 c!30765) b!171843))

(assert (= (and bm!17489 (not c!30765)) b!171837))

(assert (= (and d!52215 res!81621) b!171835))

(assert (= (and b!171835 res!81622) b!171838))

(declare-fun m!200679 () Bool)

(assert (=> b!171835 m!200679))

(declare-fun m!200681 () Bool)

(assert (=> d!52215 m!200681))

(declare-fun m!200683 () Bool)

(assert (=> d!52215 m!200683))

(declare-fun m!200685 () Bool)

(assert (=> b!171843 m!200685))

(declare-fun m!200687 () Bool)

(assert (=> b!171838 m!200687))

(declare-fun m!200689 () Bool)

(assert (=> bm!17489 m!200689))

(assert (=> d!51835 d!52215))

(declare-fun d!52217 () Bool)

(declare-fun lt!85557 () Bool)

(assert (=> d!52217 (= lt!85557 (select (content!146 lt!85178) (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun e!113411 () Bool)

(assert (=> d!52217 (= lt!85557 e!113411)))

(declare-fun res!81623 () Bool)

(assert (=> d!52217 (=> (not res!81623) (not e!113411))))

(assert (=> d!52217 (= res!81623 ((_ is Cons!2209) lt!85178))))

(assert (=> d!52217 (= (contains!1145 lt!85178 (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))) lt!85557)))

(declare-fun b!171844 () Bool)

(declare-fun e!113410 () Bool)

(assert (=> b!171844 (= e!113411 e!113410)))

(declare-fun res!81624 () Bool)

(assert (=> b!171844 (=> res!81624 e!113410)))

(assert (=> b!171844 (= res!81624 (= (h!2826 lt!85178) (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!171845 () Bool)

(assert (=> b!171845 (= e!113410 (contains!1145 (t!7023 lt!85178) (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!52217 res!81623) b!171844))

(assert (= (and b!171844 (not res!81624)) b!171845))

(declare-fun m!200691 () Bool)

(assert (=> d!52217 m!200691))

(declare-fun m!200693 () Bool)

(assert (=> d!52217 m!200693))

(declare-fun m!200695 () Bool)

(assert (=> b!171845 m!200695))

(assert (=> b!171167 d!52217))

(declare-fun d!52219 () Bool)

(declare-fun e!113413 () Bool)

(assert (=> d!52219 e!113413))

(declare-fun res!81625 () Bool)

(assert (=> d!52219 (=> res!81625 e!113413)))

(declare-fun lt!85560 () Bool)

(assert (=> d!52219 (= res!81625 (not lt!85560))))

(declare-fun lt!85558 () Bool)

(assert (=> d!52219 (= lt!85560 lt!85558)))

(declare-fun lt!85559 () Unit!5249)

(declare-fun e!113412 () Unit!5249)

(assert (=> d!52219 (= lt!85559 e!113412)))

(declare-fun c!30769 () Bool)

(assert (=> d!52219 (= c!30769 lt!85558)))

(assert (=> d!52219 (= lt!85558 (containsKey!187 (toList!1101 lt!85292) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52219 (= (contains!1143 lt!85292 #b0000000000000000000000000000000000000000000000000000000000000000) lt!85560)))

(declare-fun b!171846 () Bool)

(declare-fun lt!85561 () Unit!5249)

(assert (=> b!171846 (= e!113412 lt!85561)))

(assert (=> b!171846 (= lt!85561 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85292) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171846 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85292) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!171847 () Bool)

(declare-fun Unit!5284 () Unit!5249)

(assert (=> b!171847 (= e!113412 Unit!5284)))

(declare-fun b!171848 () Bool)

(assert (=> b!171848 (= e!113413 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85292) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52219 c!30769) b!171846))

(assert (= (and d!52219 (not c!30769)) b!171847))

(assert (= (and d!52219 (not res!81625)) b!171848))

(declare-fun m!200697 () Bool)

(assert (=> d!52219 m!200697))

(declare-fun m!200699 () Bool)

(assert (=> b!171846 m!200699))

(assert (=> b!171846 m!200053))

(assert (=> b!171846 m!200053))

(declare-fun m!200701 () Bool)

(assert (=> b!171846 m!200701))

(assert (=> b!171848 m!200053))

(assert (=> b!171848 m!200053))

(assert (=> b!171848 m!200701))

(assert (=> bm!17444 d!52219))

(assert (=> d!51807 d!51793))

(assert (=> d!51807 d!51785))

(assert (=> d!51807 d!51787))

(declare-fun d!52221 () Bool)

(declare-fun e!113415 () Bool)

(assert (=> d!52221 e!113415))

(declare-fun res!81626 () Bool)

(assert (=> d!52221 (=> res!81626 e!113415)))

(declare-fun lt!85564 () Bool)

(assert (=> d!52221 (= res!81626 (not lt!85564))))

(declare-fun lt!85562 () Bool)

(assert (=> d!52221 (= lt!85564 lt!85562)))

(declare-fun lt!85563 () Unit!5249)

(declare-fun e!113414 () Unit!5249)

(assert (=> d!52221 (= lt!85563 e!113414)))

(declare-fun c!30770 () Bool)

(assert (=> d!52221 (= c!30770 lt!85562)))

(assert (=> d!52221 (= lt!85562 (containsKey!187 (toList!1101 lt!85133) lt!85125))))

(assert (=> d!52221 (= (contains!1143 lt!85133 lt!85125) lt!85564)))

(declare-fun b!171849 () Bool)

(declare-fun lt!85565 () Unit!5249)

(assert (=> b!171849 (= e!113414 lt!85565)))

(assert (=> b!171849 (= lt!85565 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85133) lt!85125))))

(assert (=> b!171849 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85133) lt!85125))))

(declare-fun b!171850 () Bool)

(declare-fun Unit!5285 () Unit!5249)

(assert (=> b!171850 (= e!113414 Unit!5285)))

(declare-fun b!171851 () Bool)

(assert (=> b!171851 (= e!113415 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85133) lt!85125)))))

(assert (= (and d!52221 c!30770) b!171849))

(assert (= (and d!52221 (not c!30770)) b!171850))

(assert (= (and d!52221 (not res!81626)) b!171851))

(declare-fun m!200703 () Bool)

(assert (=> d!52221 m!200703))

(declare-fun m!200705 () Bool)

(assert (=> b!171849 m!200705))

(assert (=> b!171849 m!199683))

(assert (=> b!171849 m!199683))

(declare-fun m!200707 () Bool)

(assert (=> b!171849 m!200707))

(assert (=> b!171851 m!199683))

(assert (=> b!171851 m!199683))

(assert (=> b!171851 m!200707))

(assert (=> d!51807 d!52221))

(declare-fun d!52223 () Bool)

(assert (=> d!52223 (= (apply!129 (+!239 lt!85133 (tuple2!3231 lt!85132 (minValue!3398 thiss!1248))) lt!85125) (apply!129 lt!85133 lt!85125))))

(assert (=> d!52223 true))

(declare-fun _$34!1047 () Unit!5249)

(assert (=> d!52223 (= (choose!934 lt!85133 lt!85132 (minValue!3398 thiss!1248) lt!85125) _$34!1047)))

(declare-fun bs!7098 () Bool)

(assert (= bs!7098 d!52223))

(assert (=> bs!7098 m!199239))

(assert (=> bs!7098 m!199239))

(assert (=> bs!7098 m!199257))

(assert (=> bs!7098 m!199249))

(assert (=> d!51807 d!52223))

(declare-fun d!52225 () Bool)

(assert (=> d!52225 (= (apply!129 lt!85302 lt!85299) (get!1940 (getValueByKey!183 (toList!1101 lt!85302) lt!85299)))))

(declare-fun bs!7099 () Bool)

(assert (= bs!7099 d!52225))

(declare-fun m!200709 () Bool)

(assert (=> bs!7099 m!200709))

(assert (=> bs!7099 m!200709))

(declare-fun m!200711 () Bool)

(assert (=> bs!7099 m!200711))

(assert (=> b!171218 d!52225))

(declare-fun d!52227 () Bool)

(assert (=> d!52227 (contains!1143 (+!239 lt!85306 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067))) lt!85289)))

(declare-fun lt!85566 () Unit!5249)

(assert (=> d!52227 (= lt!85566 (choose!933 lt!85306 lt!85291 (zeroValue!3398 lt!85067) lt!85289))))

(assert (=> d!52227 (contains!1143 lt!85306 lt!85289)))

(assert (=> d!52227 (= (addStillContains!105 lt!85306 lt!85291 (zeroValue!3398 lt!85067) lt!85289) lt!85566)))

(declare-fun bs!7100 () Bool)

(assert (= bs!7100 d!52227))

(assert (=> bs!7100 m!199617))

(assert (=> bs!7100 m!199617))

(assert (=> bs!7100 m!199619))

(declare-fun m!200713 () Bool)

(assert (=> bs!7100 m!200713))

(declare-fun m!200715 () Bool)

(assert (=> bs!7100 m!200715))

(assert (=> b!171218 d!52227))

(declare-fun d!52229 () Bool)

(assert (=> d!52229 (= (apply!129 (+!239 lt!85302 (tuple2!3231 lt!85293 (minValue!3398 lt!85067))) lt!85299) (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85302 (tuple2!3231 lt!85293 (minValue!3398 lt!85067)))) lt!85299)))))

(declare-fun bs!7101 () Bool)

(assert (= bs!7101 d!52229))

(declare-fun m!200717 () Bool)

(assert (=> bs!7101 m!200717))

(assert (=> bs!7101 m!200717))

(declare-fun m!200719 () Bool)

(assert (=> bs!7101 m!200719))

(assert (=> b!171218 d!52229))

(declare-fun d!52231 () Bool)

(assert (=> d!52231 (= (apply!129 (+!239 lt!85302 (tuple2!3231 lt!85293 (minValue!3398 lt!85067))) lt!85299) (apply!129 lt!85302 lt!85299))))

(declare-fun lt!85567 () Unit!5249)

(assert (=> d!52231 (= lt!85567 (choose!934 lt!85302 lt!85293 (minValue!3398 lt!85067) lt!85299))))

(declare-fun e!113416 () Bool)

(assert (=> d!52231 e!113416))

(declare-fun res!81627 () Bool)

(assert (=> d!52231 (=> (not res!81627) (not e!113416))))

(assert (=> d!52231 (= res!81627 (contains!1143 lt!85302 lt!85299))))

(assert (=> d!52231 (= (addApplyDifferent!105 lt!85302 lt!85293 (minValue!3398 lt!85067) lt!85299) lt!85567)))

(declare-fun b!171852 () Bool)

(assert (=> b!171852 (= e!113416 (not (= lt!85299 lt!85293)))))

(assert (= (and d!52231 res!81627) b!171852))

(assert (=> d!52231 m!199625))

(declare-fun m!200721 () Bool)

(assert (=> d!52231 m!200721))

(assert (=> d!52231 m!199623))

(assert (=> d!52231 m!199631))

(declare-fun m!200723 () Bool)

(assert (=> d!52231 m!200723))

(assert (=> d!52231 m!199623))

(assert (=> b!171218 d!52231))

(declare-fun d!52233 () Bool)

(declare-fun e!113418 () Bool)

(assert (=> d!52233 e!113418))

(declare-fun res!81628 () Bool)

(assert (=> d!52233 (=> res!81628 e!113418)))

(declare-fun lt!85570 () Bool)

(assert (=> d!52233 (= res!81628 (not lt!85570))))

(declare-fun lt!85568 () Bool)

(assert (=> d!52233 (= lt!85570 lt!85568)))

(declare-fun lt!85569 () Unit!5249)

(declare-fun e!113417 () Unit!5249)

(assert (=> d!52233 (= lt!85569 e!113417)))

(declare-fun c!30771 () Bool)

(assert (=> d!52233 (= c!30771 lt!85568)))

(assert (=> d!52233 (= lt!85568 (containsKey!187 (toList!1101 (+!239 lt!85306 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067)))) lt!85289))))

(assert (=> d!52233 (= (contains!1143 (+!239 lt!85306 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067))) lt!85289) lt!85570)))

(declare-fun b!171853 () Bool)

(declare-fun lt!85571 () Unit!5249)

(assert (=> b!171853 (= e!113417 lt!85571)))

(assert (=> b!171853 (= lt!85571 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 (+!239 lt!85306 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067)))) lt!85289))))

(assert (=> b!171853 (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85306 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067)))) lt!85289))))

(declare-fun b!171854 () Bool)

(declare-fun Unit!5286 () Unit!5249)

(assert (=> b!171854 (= e!113417 Unit!5286)))

(declare-fun b!171855 () Bool)

(assert (=> b!171855 (= e!113418 (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85306 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067)))) lt!85289)))))

(assert (= (and d!52233 c!30771) b!171853))

(assert (= (and d!52233 (not c!30771)) b!171854))

(assert (= (and d!52233 (not res!81628)) b!171855))

(declare-fun m!200725 () Bool)

(assert (=> d!52233 m!200725))

(declare-fun m!200727 () Bool)

(assert (=> b!171853 m!200727))

(declare-fun m!200729 () Bool)

(assert (=> b!171853 m!200729))

(assert (=> b!171853 m!200729))

(declare-fun m!200731 () Bool)

(assert (=> b!171853 m!200731))

(assert (=> b!171855 m!200729))

(assert (=> b!171855 m!200729))

(assert (=> b!171855 m!200731))

(assert (=> b!171218 d!52233))

(declare-fun d!52235 () Bool)

(declare-fun e!113419 () Bool)

(assert (=> d!52235 e!113419))

(declare-fun res!81629 () Bool)

(assert (=> d!52235 (=> (not res!81629) (not e!113419))))

(declare-fun lt!85573 () ListLongMap!2171)

(assert (=> d!52235 (= res!81629 (contains!1143 lt!85573 (_1!1625 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067)))))))

(declare-fun lt!85574 () List!2213)

(assert (=> d!52235 (= lt!85573 (ListLongMap!2172 lt!85574))))

(declare-fun lt!85575 () Unit!5249)

(declare-fun lt!85572 () Unit!5249)

(assert (=> d!52235 (= lt!85575 lt!85572)))

(assert (=> d!52235 (= (getValueByKey!183 lt!85574 (_1!1625 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067)))) (Some!188 (_2!1625 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067)))))))

(assert (=> d!52235 (= lt!85572 (lemmaContainsTupThenGetReturnValue!98 lt!85574 (_1!1625 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067))) (_2!1625 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067)))))))

(assert (=> d!52235 (= lt!85574 (insertStrictlySorted!100 (toList!1101 lt!85306) (_1!1625 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067))) (_2!1625 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067)))))))

(assert (=> d!52235 (= (+!239 lt!85306 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067))) lt!85573)))

(declare-fun b!171856 () Bool)

(declare-fun res!81630 () Bool)

(assert (=> b!171856 (=> (not res!81630) (not e!113419))))

(assert (=> b!171856 (= res!81630 (= (getValueByKey!183 (toList!1101 lt!85573) (_1!1625 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067)))) (Some!188 (_2!1625 (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067))))))))

(declare-fun b!171857 () Bool)

(assert (=> b!171857 (= e!113419 (contains!1145 (toList!1101 lt!85573) (tuple2!3231 lt!85291 (zeroValue!3398 lt!85067))))))

(assert (= (and d!52235 res!81629) b!171856))

(assert (= (and b!171856 res!81630) b!171857))

(declare-fun m!200733 () Bool)

(assert (=> d!52235 m!200733))

(declare-fun m!200735 () Bool)

(assert (=> d!52235 m!200735))

(declare-fun m!200737 () Bool)

(assert (=> d!52235 m!200737))

(declare-fun m!200739 () Bool)

(assert (=> d!52235 m!200739))

(declare-fun m!200741 () Bool)

(assert (=> b!171856 m!200741))

(declare-fun m!200743 () Bool)

(assert (=> b!171857 m!200743))

(assert (=> b!171218 d!52235))

(declare-fun d!52237 () Bool)

(assert (=> d!52237 (= (apply!129 lt!85298 lt!85290) (get!1940 (getValueByKey!183 (toList!1101 lt!85298) lt!85290)))))

(declare-fun bs!7102 () Bool)

(assert (= bs!7102 d!52237))

(declare-fun m!200745 () Bool)

(assert (=> bs!7102 m!200745))

(assert (=> bs!7102 m!200745))

(declare-fun m!200747 () Bool)

(assert (=> bs!7102 m!200747))

(assert (=> b!171218 d!52237))

(assert (=> b!171218 d!52039))

(declare-fun d!52239 () Bool)

(assert (=> d!52239 (= (apply!129 lt!85288 lt!85303) (get!1940 (getValueByKey!183 (toList!1101 lt!85288) lt!85303)))))

(declare-fun bs!7103 () Bool)

(assert (= bs!7103 d!52239))

(declare-fun m!200749 () Bool)

(assert (=> bs!7103 m!200749))

(assert (=> bs!7103 m!200749))

(declare-fun m!200751 () Bool)

(assert (=> bs!7103 m!200751))

(assert (=> b!171218 d!52239))

(declare-fun d!52241 () Bool)

(assert (=> d!52241 (= (apply!129 (+!239 lt!85288 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067))) lt!85303) (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85288 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067)))) lt!85303)))))

(declare-fun bs!7104 () Bool)

(assert (= bs!7104 d!52241))

(declare-fun m!200753 () Bool)

(assert (=> bs!7104 m!200753))

(assert (=> bs!7104 m!200753))

(declare-fun m!200755 () Bool)

(assert (=> bs!7104 m!200755))

(assert (=> b!171218 d!52241))

(declare-fun d!52243 () Bool)

(assert (=> d!52243 (= (apply!129 (+!239 lt!85298 (tuple2!3231 lt!85297 (minValue!3398 lt!85067))) lt!85290) (get!1940 (getValueByKey!183 (toList!1101 (+!239 lt!85298 (tuple2!3231 lt!85297 (minValue!3398 lt!85067)))) lt!85290)))))

(declare-fun bs!7105 () Bool)

(assert (= bs!7105 d!52243))

(declare-fun m!200757 () Bool)

(assert (=> bs!7105 m!200757))

(assert (=> bs!7105 m!200757))

(declare-fun m!200759 () Bool)

(assert (=> bs!7105 m!200759))

(assert (=> b!171218 d!52243))

(declare-fun d!52245 () Bool)

(declare-fun e!113420 () Bool)

(assert (=> d!52245 e!113420))

(declare-fun res!81631 () Bool)

(assert (=> d!52245 (=> (not res!81631) (not e!113420))))

(declare-fun lt!85577 () ListLongMap!2171)

(assert (=> d!52245 (= res!81631 (contains!1143 lt!85577 (_1!1625 (tuple2!3231 lt!85297 (minValue!3398 lt!85067)))))))

(declare-fun lt!85578 () List!2213)

(assert (=> d!52245 (= lt!85577 (ListLongMap!2172 lt!85578))))

(declare-fun lt!85579 () Unit!5249)

(declare-fun lt!85576 () Unit!5249)

(assert (=> d!52245 (= lt!85579 lt!85576)))

(assert (=> d!52245 (= (getValueByKey!183 lt!85578 (_1!1625 (tuple2!3231 lt!85297 (minValue!3398 lt!85067)))) (Some!188 (_2!1625 (tuple2!3231 lt!85297 (minValue!3398 lt!85067)))))))

(assert (=> d!52245 (= lt!85576 (lemmaContainsTupThenGetReturnValue!98 lt!85578 (_1!1625 (tuple2!3231 lt!85297 (minValue!3398 lt!85067))) (_2!1625 (tuple2!3231 lt!85297 (minValue!3398 lt!85067)))))))

(assert (=> d!52245 (= lt!85578 (insertStrictlySorted!100 (toList!1101 lt!85298) (_1!1625 (tuple2!3231 lt!85297 (minValue!3398 lt!85067))) (_2!1625 (tuple2!3231 lt!85297 (minValue!3398 lt!85067)))))))

(assert (=> d!52245 (= (+!239 lt!85298 (tuple2!3231 lt!85297 (minValue!3398 lt!85067))) lt!85577)))

(declare-fun b!171858 () Bool)

(declare-fun res!81632 () Bool)

(assert (=> b!171858 (=> (not res!81632) (not e!113420))))

(assert (=> b!171858 (= res!81632 (= (getValueByKey!183 (toList!1101 lt!85577) (_1!1625 (tuple2!3231 lt!85297 (minValue!3398 lt!85067)))) (Some!188 (_2!1625 (tuple2!3231 lt!85297 (minValue!3398 lt!85067))))))))

(declare-fun b!171859 () Bool)

(assert (=> b!171859 (= e!113420 (contains!1145 (toList!1101 lt!85577) (tuple2!3231 lt!85297 (minValue!3398 lt!85067))))))

(assert (= (and d!52245 res!81631) b!171858))

(assert (= (and b!171858 res!81632) b!171859))

(declare-fun m!200761 () Bool)

(assert (=> d!52245 m!200761))

(declare-fun m!200763 () Bool)

(assert (=> d!52245 m!200763))

(declare-fun m!200765 () Bool)

(assert (=> d!52245 m!200765))

(declare-fun m!200767 () Bool)

(assert (=> d!52245 m!200767))

(declare-fun m!200769 () Bool)

(assert (=> b!171858 m!200769))

(declare-fun m!200771 () Bool)

(assert (=> b!171859 m!200771))

(assert (=> b!171218 d!52245))

(declare-fun d!52247 () Bool)

(assert (=> d!52247 (= (apply!129 (+!239 lt!85298 (tuple2!3231 lt!85297 (minValue!3398 lt!85067))) lt!85290) (apply!129 lt!85298 lt!85290))))

(declare-fun lt!85580 () Unit!5249)

(assert (=> d!52247 (= lt!85580 (choose!934 lt!85298 lt!85297 (minValue!3398 lt!85067) lt!85290))))

(declare-fun e!113421 () Bool)

(assert (=> d!52247 e!113421))

(declare-fun res!81633 () Bool)

(assert (=> d!52247 (=> (not res!81633) (not e!113421))))

(assert (=> d!52247 (= res!81633 (contains!1143 lt!85298 lt!85290))))

(assert (=> d!52247 (= (addApplyDifferent!105 lt!85298 lt!85297 (minValue!3398 lt!85067) lt!85290) lt!85580)))

(declare-fun b!171860 () Bool)

(assert (=> b!171860 (= e!113421 (not (= lt!85290 lt!85297)))))

(assert (= (and d!52247 res!81633) b!171860))

(assert (=> d!52247 m!199621))

(declare-fun m!200773 () Bool)

(assert (=> d!52247 m!200773))

(assert (=> d!52247 m!199611))

(assert (=> d!52247 m!199629))

(declare-fun m!200775 () Bool)

(assert (=> d!52247 m!200775))

(assert (=> d!52247 m!199611))

(assert (=> b!171218 d!52247))

(declare-fun d!52249 () Bool)

(declare-fun e!113422 () Bool)

(assert (=> d!52249 e!113422))

(declare-fun res!81634 () Bool)

(assert (=> d!52249 (=> (not res!81634) (not e!113422))))

(declare-fun lt!85582 () ListLongMap!2171)

(assert (=> d!52249 (= res!81634 (contains!1143 lt!85582 (_1!1625 (tuple2!3231 lt!85293 (minValue!3398 lt!85067)))))))

(declare-fun lt!85583 () List!2213)

(assert (=> d!52249 (= lt!85582 (ListLongMap!2172 lt!85583))))

(declare-fun lt!85584 () Unit!5249)

(declare-fun lt!85581 () Unit!5249)

(assert (=> d!52249 (= lt!85584 lt!85581)))

(assert (=> d!52249 (= (getValueByKey!183 lt!85583 (_1!1625 (tuple2!3231 lt!85293 (minValue!3398 lt!85067)))) (Some!188 (_2!1625 (tuple2!3231 lt!85293 (minValue!3398 lt!85067)))))))

(assert (=> d!52249 (= lt!85581 (lemmaContainsTupThenGetReturnValue!98 lt!85583 (_1!1625 (tuple2!3231 lt!85293 (minValue!3398 lt!85067))) (_2!1625 (tuple2!3231 lt!85293 (minValue!3398 lt!85067)))))))

(assert (=> d!52249 (= lt!85583 (insertStrictlySorted!100 (toList!1101 lt!85302) (_1!1625 (tuple2!3231 lt!85293 (minValue!3398 lt!85067))) (_2!1625 (tuple2!3231 lt!85293 (minValue!3398 lt!85067)))))))

(assert (=> d!52249 (= (+!239 lt!85302 (tuple2!3231 lt!85293 (minValue!3398 lt!85067))) lt!85582)))

(declare-fun b!171861 () Bool)

(declare-fun res!81635 () Bool)

(assert (=> b!171861 (=> (not res!81635) (not e!113422))))

(assert (=> b!171861 (= res!81635 (= (getValueByKey!183 (toList!1101 lt!85582) (_1!1625 (tuple2!3231 lt!85293 (minValue!3398 lt!85067)))) (Some!188 (_2!1625 (tuple2!3231 lt!85293 (minValue!3398 lt!85067))))))))

(declare-fun b!171862 () Bool)

(assert (=> b!171862 (= e!113422 (contains!1145 (toList!1101 lt!85582) (tuple2!3231 lt!85293 (minValue!3398 lt!85067))))))

(assert (= (and d!52249 res!81634) b!171861))

(assert (= (and b!171861 res!81635) b!171862))

(declare-fun m!200777 () Bool)

(assert (=> d!52249 m!200777))

(declare-fun m!200779 () Bool)

(assert (=> d!52249 m!200779))

(declare-fun m!200781 () Bool)

(assert (=> d!52249 m!200781))

(declare-fun m!200783 () Bool)

(assert (=> d!52249 m!200783))

(declare-fun m!200785 () Bool)

(assert (=> b!171861 m!200785))

(declare-fun m!200787 () Bool)

(assert (=> b!171862 m!200787))

(assert (=> b!171218 d!52249))

(declare-fun d!52251 () Bool)

(assert (=> d!52251 (= (apply!129 (+!239 lt!85288 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067))) lt!85303) (apply!129 lt!85288 lt!85303))))

(declare-fun lt!85585 () Unit!5249)

(assert (=> d!52251 (= lt!85585 (choose!934 lt!85288 lt!85294 (zeroValue!3398 lt!85067) lt!85303))))

(declare-fun e!113423 () Bool)

(assert (=> d!52251 e!113423))

(declare-fun res!81636 () Bool)

(assert (=> d!52251 (=> (not res!81636) (not e!113423))))

(assert (=> d!52251 (= res!81636 (contains!1143 lt!85288 lt!85303))))

(assert (=> d!52251 (= (addApplyDifferent!105 lt!85288 lt!85294 (zeroValue!3398 lt!85067) lt!85303) lt!85585)))

(declare-fun b!171863 () Bool)

(assert (=> b!171863 (= e!113423 (not (= lt!85303 lt!85294)))))

(assert (= (and d!52251 res!81636) b!171863))

(assert (=> d!52251 m!199605))

(declare-fun m!200789 () Bool)

(assert (=> d!52251 m!200789))

(assert (=> d!52251 m!199607))

(assert (=> d!52251 m!199609))

(declare-fun m!200791 () Bool)

(assert (=> d!52251 m!200791))

(assert (=> d!52251 m!199607))

(assert (=> b!171218 d!52251))

(declare-fun d!52253 () Bool)

(declare-fun e!113424 () Bool)

(assert (=> d!52253 e!113424))

(declare-fun res!81637 () Bool)

(assert (=> d!52253 (=> (not res!81637) (not e!113424))))

(declare-fun lt!85587 () ListLongMap!2171)

(assert (=> d!52253 (= res!81637 (contains!1143 lt!85587 (_1!1625 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067)))))))

(declare-fun lt!85588 () List!2213)

(assert (=> d!52253 (= lt!85587 (ListLongMap!2172 lt!85588))))

(declare-fun lt!85589 () Unit!5249)

(declare-fun lt!85586 () Unit!5249)

(assert (=> d!52253 (= lt!85589 lt!85586)))

(assert (=> d!52253 (= (getValueByKey!183 lt!85588 (_1!1625 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067)))) (Some!188 (_2!1625 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067)))))))

(assert (=> d!52253 (= lt!85586 (lemmaContainsTupThenGetReturnValue!98 lt!85588 (_1!1625 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067))) (_2!1625 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067)))))))

(assert (=> d!52253 (= lt!85588 (insertStrictlySorted!100 (toList!1101 lt!85288) (_1!1625 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067))) (_2!1625 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067)))))))

(assert (=> d!52253 (= (+!239 lt!85288 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067))) lt!85587)))

(declare-fun b!171864 () Bool)

(declare-fun res!81638 () Bool)

(assert (=> b!171864 (=> (not res!81638) (not e!113424))))

(assert (=> b!171864 (= res!81638 (= (getValueByKey!183 (toList!1101 lt!85587) (_1!1625 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067)))) (Some!188 (_2!1625 (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067))))))))

(declare-fun b!171865 () Bool)

(assert (=> b!171865 (= e!113424 (contains!1145 (toList!1101 lt!85587) (tuple2!3231 lt!85294 (zeroValue!3398 lt!85067))))))

(assert (= (and d!52253 res!81637) b!171864))

(assert (= (and b!171864 res!81638) b!171865))

(declare-fun m!200793 () Bool)

(assert (=> d!52253 m!200793))

(declare-fun m!200795 () Bool)

(assert (=> d!52253 m!200795))

(declare-fun m!200797 () Bool)

(assert (=> d!52253 m!200797))

(declare-fun m!200799 () Bool)

(assert (=> d!52253 m!200799))

(declare-fun m!200801 () Bool)

(assert (=> b!171864 m!200801))

(declare-fun m!200803 () Bool)

(assert (=> b!171865 m!200803))

(assert (=> b!171218 d!52253))

(assert (=> d!51803 d!51795))

(assert (=> d!51803 d!51779))

(declare-fun d!52255 () Bool)

(declare-fun e!113426 () Bool)

(assert (=> d!52255 e!113426))

(declare-fun res!81639 () Bool)

(assert (=> d!52255 (=> res!81639 e!113426)))

(declare-fun lt!85592 () Bool)

(assert (=> d!52255 (= res!81639 (not lt!85592))))

(declare-fun lt!85590 () Bool)

(assert (=> d!52255 (= lt!85592 lt!85590)))

(declare-fun lt!85591 () Unit!5249)

(declare-fun e!113425 () Unit!5249)

(assert (=> d!52255 (= lt!85591 e!113425)))

(declare-fun c!30772 () Bool)

(assert (=> d!52255 (= c!30772 lt!85590)))

(assert (=> d!52255 (= lt!85590 (containsKey!187 (toList!1101 lt!85137) lt!85134))))

(assert (=> d!52255 (= (contains!1143 lt!85137 lt!85134) lt!85592)))

(declare-fun b!171866 () Bool)

(declare-fun lt!85593 () Unit!5249)

(assert (=> b!171866 (= e!113425 lt!85593)))

(assert (=> b!171866 (= lt!85593 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85137) lt!85134))))

(assert (=> b!171866 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85137) lt!85134))))

(declare-fun b!171867 () Bool)

(declare-fun Unit!5287 () Unit!5249)

(assert (=> b!171867 (= e!113425 Unit!5287)))

(declare-fun b!171868 () Bool)

(assert (=> b!171868 (= e!113426 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85137) lt!85134)))))

(assert (= (and d!52255 c!30772) b!171866))

(assert (= (and d!52255 (not c!30772)) b!171867))

(assert (= (and d!52255 (not res!81639)) b!171868))

(declare-fun m!200805 () Bool)

(assert (=> d!52255 m!200805))

(declare-fun m!200807 () Bool)

(assert (=> b!171866 m!200807))

(assert (=> b!171866 m!199719))

(assert (=> b!171866 m!199719))

(declare-fun m!200809 () Bool)

(assert (=> b!171866 m!200809))

(assert (=> b!171868 m!199719))

(assert (=> b!171868 m!199719))

(assert (=> b!171868 m!200809))

(assert (=> d!51803 d!52255))

(assert (=> d!51803 d!51799))

(declare-fun d!52257 () Bool)

(assert (=> d!52257 (= (apply!129 (+!239 lt!85137 (tuple2!3231 lt!85128 (minValue!3398 thiss!1248))) lt!85134) (apply!129 lt!85137 lt!85134))))

(assert (=> d!52257 true))

(declare-fun _$34!1048 () Unit!5249)

(assert (=> d!52257 (= (choose!934 lt!85137 lt!85128 (minValue!3398 thiss!1248) lt!85134) _$34!1048)))

(declare-fun bs!7106 () Bool)

(assert (= bs!7106 d!52257))

(assert (=> bs!7106 m!199251))

(assert (=> bs!7106 m!199251))

(assert (=> bs!7106 m!199259))

(assert (=> bs!7106 m!199253))

(assert (=> d!51803 d!52257))

(declare-fun d!52259 () Bool)

(declare-fun e!113428 () Bool)

(assert (=> d!52259 e!113428))

(declare-fun res!81640 () Bool)

(assert (=> d!52259 (=> res!81640 e!113428)))

(declare-fun lt!85596 () Bool)

(assert (=> d!52259 (= res!81640 (not lt!85596))))

(declare-fun lt!85594 () Bool)

(assert (=> d!52259 (= lt!85596 lt!85594)))

(declare-fun lt!85595 () Unit!5249)

(declare-fun e!113427 () Unit!5249)

(assert (=> d!52259 (= lt!85595 e!113427)))

(declare-fun c!30773 () Bool)

(assert (=> d!52259 (= c!30773 lt!85594)))

(assert (=> d!52259 (= lt!85594 (containsKey!187 (toList!1101 lt!85292) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52259 (= (contains!1143 lt!85292 #b1000000000000000000000000000000000000000000000000000000000000000) lt!85596)))

(declare-fun b!171869 () Bool)

(declare-fun lt!85597 () Unit!5249)

(assert (=> b!171869 (= e!113427 lt!85597)))

(assert (=> b!171869 (= lt!85597 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85292) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171869 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85292) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!171870 () Bool)

(declare-fun Unit!5288 () Unit!5249)

(assert (=> b!171870 (= e!113427 Unit!5288)))

(declare-fun b!171871 () Bool)

(assert (=> b!171871 (= e!113428 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85292) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52259 c!30773) b!171869))

(assert (= (and d!52259 (not c!30773)) b!171870))

(assert (= (and d!52259 (not res!81640)) b!171871))

(declare-fun m!200811 () Bool)

(assert (=> d!52259 m!200811))

(declare-fun m!200813 () Bool)

(assert (=> b!171869 m!200813))

(assert (=> b!171869 m!200619))

(assert (=> b!171869 m!200619))

(declare-fun m!200815 () Bool)

(assert (=> b!171869 m!200815))

(assert (=> b!171871 m!200619))

(assert (=> b!171871 m!200619))

(assert (=> b!171871 m!200815))

(assert (=> bm!17440 d!52259))

(declare-fun b!171873 () Bool)

(declare-fun e!113429 () Option!189)

(declare-fun e!113430 () Option!189)

(assert (=> b!171873 (= e!113429 e!113430)))

(declare-fun c!30775 () Bool)

(assert (=> b!171873 (= c!30775 (and ((_ is Cons!2209) (t!7023 lt!85194)) (not (= (_1!1625 (h!2826 (t!7023 lt!85194))) (_1!1625 (tuple2!3231 key!828 v!309))))))))

(declare-fun b!171874 () Bool)

(assert (=> b!171874 (= e!113430 (getValueByKey!183 (t!7023 (t!7023 lt!85194)) (_1!1625 (tuple2!3231 key!828 v!309))))))

(declare-fun c!30774 () Bool)

(declare-fun d!52261 () Bool)

(assert (=> d!52261 (= c!30774 (and ((_ is Cons!2209) (t!7023 lt!85194)) (= (_1!1625 (h!2826 (t!7023 lt!85194))) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(assert (=> d!52261 (= (getValueByKey!183 (t!7023 lt!85194) (_1!1625 (tuple2!3231 key!828 v!309))) e!113429)))

(declare-fun b!171875 () Bool)

(assert (=> b!171875 (= e!113430 None!187)))

(declare-fun b!171872 () Bool)

(assert (=> b!171872 (= e!113429 (Some!188 (_2!1625 (h!2826 (t!7023 lt!85194)))))))

(assert (= (and d!52261 c!30774) b!171872))

(assert (= (and d!52261 (not c!30774)) b!171873))

(assert (= (and b!171873 c!30775) b!171874))

(assert (= (and b!171873 (not c!30775)) b!171875))

(declare-fun m!200817 () Bool)

(assert (=> b!171874 m!200817))

(assert (=> b!171020 d!52261))

(declare-fun d!52263 () Bool)

(declare-fun e!113431 () Bool)

(assert (=> d!52263 e!113431))

(declare-fun res!81641 () Bool)

(assert (=> d!52263 (=> (not res!81641) (not e!113431))))

(declare-fun lt!85599 () ListLongMap!2171)

(assert (=> d!52263 (= res!81641 (contains!1143 lt!85599 (_1!1625 (tuple2!3231 lt!85241 lt!85245))))))

(declare-fun lt!85600 () List!2213)

(assert (=> d!52263 (= lt!85599 (ListLongMap!2172 lt!85600))))

(declare-fun lt!85601 () Unit!5249)

(declare-fun lt!85598 () Unit!5249)

(assert (=> d!52263 (= lt!85601 lt!85598)))

(assert (=> d!52263 (= (getValueByKey!183 lt!85600 (_1!1625 (tuple2!3231 lt!85241 lt!85245))) (Some!188 (_2!1625 (tuple2!3231 lt!85241 lt!85245))))))

(assert (=> d!52263 (= lt!85598 (lemmaContainsTupThenGetReturnValue!98 lt!85600 (_1!1625 (tuple2!3231 lt!85241 lt!85245)) (_2!1625 (tuple2!3231 lt!85241 lt!85245))))))

(assert (=> d!52263 (= lt!85600 (insertStrictlySorted!100 (toList!1101 lt!85240) (_1!1625 (tuple2!3231 lt!85241 lt!85245)) (_2!1625 (tuple2!3231 lt!85241 lt!85245))))))

(assert (=> d!52263 (= (+!239 lt!85240 (tuple2!3231 lt!85241 lt!85245)) lt!85599)))

(declare-fun b!171876 () Bool)

(declare-fun res!81642 () Bool)

(assert (=> b!171876 (=> (not res!81642) (not e!113431))))

(assert (=> b!171876 (= res!81642 (= (getValueByKey!183 (toList!1101 lt!85599) (_1!1625 (tuple2!3231 lt!85241 lt!85245))) (Some!188 (_2!1625 (tuple2!3231 lt!85241 lt!85245)))))))

(declare-fun b!171877 () Bool)

(assert (=> b!171877 (= e!113431 (contains!1145 (toList!1101 lt!85599) (tuple2!3231 lt!85241 lt!85245)))))

(assert (= (and d!52263 res!81641) b!171876))

(assert (= (and b!171876 res!81642) b!171877))

(declare-fun m!200819 () Bool)

(assert (=> d!52263 m!200819))

(declare-fun m!200821 () Bool)

(assert (=> d!52263 m!200821))

(declare-fun m!200823 () Bool)

(assert (=> d!52263 m!200823))

(declare-fun m!200825 () Bool)

(assert (=> d!52263 m!200825))

(declare-fun m!200827 () Bool)

(assert (=> b!171876 m!200827))

(declare-fun m!200829 () Bool)

(assert (=> b!171877 m!200829))

(assert (=> b!171099 d!52263))

(assert (=> b!171099 d!51767))

(declare-fun d!52265 () Bool)

(declare-fun e!113433 () Bool)

(assert (=> d!52265 e!113433))

(declare-fun res!81643 () Bool)

(assert (=> d!52265 (=> res!81643 e!113433)))

(declare-fun lt!85604 () Bool)

(assert (=> d!52265 (= res!81643 (not lt!85604))))

(declare-fun lt!85602 () Bool)

(assert (=> d!52265 (= lt!85604 lt!85602)))

(declare-fun lt!85603 () Unit!5249)

(declare-fun e!113432 () Unit!5249)

(assert (=> d!52265 (= lt!85603 e!113432)))

(declare-fun c!30776 () Bool)

(assert (=> d!52265 (= c!30776 lt!85602)))

(assert (=> d!52265 (= lt!85602 (containsKey!187 (toList!1101 (+!239 lt!85240 (tuple2!3231 lt!85241 lt!85245))) lt!85244))))

(assert (=> d!52265 (= (contains!1143 (+!239 lt!85240 (tuple2!3231 lt!85241 lt!85245)) lt!85244) lt!85604)))

(declare-fun b!171878 () Bool)

(declare-fun lt!85605 () Unit!5249)

(assert (=> b!171878 (= e!113432 lt!85605)))

(assert (=> b!171878 (= lt!85605 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 (+!239 lt!85240 (tuple2!3231 lt!85241 lt!85245))) lt!85244))))

(assert (=> b!171878 (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85240 (tuple2!3231 lt!85241 lt!85245))) lt!85244))))

(declare-fun b!171879 () Bool)

(declare-fun Unit!5289 () Unit!5249)

(assert (=> b!171879 (= e!113432 Unit!5289)))

(declare-fun b!171880 () Bool)

(assert (=> b!171880 (= e!113433 (isDefined!137 (getValueByKey!183 (toList!1101 (+!239 lt!85240 (tuple2!3231 lt!85241 lt!85245))) lt!85244)))))

(assert (= (and d!52265 c!30776) b!171878))

(assert (= (and d!52265 (not c!30776)) b!171879))

(assert (= (and d!52265 (not res!81643)) b!171880))

(declare-fun m!200831 () Bool)

(assert (=> d!52265 m!200831))

(declare-fun m!200833 () Bool)

(assert (=> b!171878 m!200833))

(declare-fun m!200835 () Bool)

(assert (=> b!171878 m!200835))

(assert (=> b!171878 m!200835))

(declare-fun m!200837 () Bool)

(assert (=> b!171878 m!200837))

(assert (=> b!171880 m!200835))

(assert (=> b!171880 m!200835))

(assert (=> b!171880 m!200837))

(assert (=> b!171099 d!52265))

(declare-fun d!52267 () Bool)

(assert (=> d!52267 (not (contains!1143 (+!239 lt!85240 (tuple2!3231 lt!85241 lt!85245)) lt!85244))))

(declare-fun lt!85606 () Unit!5249)

(assert (=> d!52267 (= lt!85606 (choose!935 lt!85240 lt!85241 lt!85245 lt!85244))))

(declare-fun e!113434 () Bool)

(assert (=> d!52267 e!113434))

(declare-fun res!81644 () Bool)

(assert (=> d!52267 (=> (not res!81644) (not e!113434))))

(assert (=> d!52267 (= res!81644 (not (contains!1143 lt!85240 lt!85244)))))

(assert (=> d!52267 (= (addStillNotContains!73 lt!85240 lt!85241 lt!85245 lt!85244) lt!85606)))

(declare-fun b!171881 () Bool)

(assert (=> b!171881 (= e!113434 (not (= lt!85241 lt!85244)))))

(assert (= (and d!52267 res!81644) b!171881))

(assert (=> d!52267 m!199463))

(assert (=> d!52267 m!199463))

(assert (=> d!52267 m!199465))

(declare-fun m!200839 () Bool)

(assert (=> d!52267 m!200839))

(declare-fun m!200841 () Bool)

(assert (=> d!52267 m!200841))

(assert (=> b!171099 d!52267))

(declare-fun d!52269 () Bool)

(declare-fun e!113435 () Bool)

(assert (=> d!52269 e!113435))

(declare-fun res!81645 () Bool)

(assert (=> d!52269 (=> (not res!81645) (not e!113435))))

(declare-fun lt!85608 () ListLongMap!2171)

(assert (=> d!52269 (= res!81645 (contains!1143 lt!85608 (_1!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!85609 () List!2213)

(assert (=> d!52269 (= lt!85608 (ListLongMap!2172 lt!85609))))

(declare-fun lt!85610 () Unit!5249)

(declare-fun lt!85607 () Unit!5249)

(assert (=> d!52269 (= lt!85610 lt!85607)))

(assert (=> d!52269 (= (getValueByKey!183 lt!85609 (_1!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!188 (_2!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52269 (= lt!85607 (lemmaContainsTupThenGetReturnValue!98 lt!85609 (_1!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52269 (= lt!85609 (insertStrictlySorted!100 (toList!1101 call!17427) (_1!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52269 (= (+!239 call!17427 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!85608)))

(declare-fun b!171882 () Bool)

(declare-fun res!81646 () Bool)

(assert (=> b!171882 (=> (not res!81646) (not e!113435))))

(assert (=> b!171882 (= res!81646 (= (getValueByKey!183 (toList!1101 lt!85608) (_1!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!188 (_2!1625 (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!171883 () Bool)

(assert (=> b!171883 (= e!113435 (contains!1145 (toList!1101 lt!85608) (tuple2!3231 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000) (get!1939 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!52269 res!81645) b!171882))

(assert (= (and b!171882 res!81646) b!171883))

(declare-fun m!200843 () Bool)

(assert (=> d!52269 m!200843))

(declare-fun m!200845 () Bool)

(assert (=> d!52269 m!200845))

(declare-fun m!200847 () Bool)

(assert (=> d!52269 m!200847))

(declare-fun m!200849 () Bool)

(assert (=> d!52269 m!200849))

(declare-fun m!200851 () Bool)

(assert (=> b!171882 m!200851))

(declare-fun m!200853 () Bool)

(assert (=> b!171883 m!200853))

(assert (=> b!171099 d!52269))

(declare-fun d!52271 () Bool)

(assert (=> d!52271 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!85611 () Unit!5249)

(assert (=> d!52271 (= lt!85611 (choose!931 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!113436 () Bool)

(assert (=> d!52271 e!113436))

(declare-fun res!81647 () Bool)

(assert (=> d!52271 (=> (not res!81647) (not e!113436))))

(assert (=> d!52271 (= res!81647 (isStrictlySorted!326 (toList!1101 lt!85152)))))

(assert (=> d!52271 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000) lt!85611)))

(declare-fun b!171884 () Bool)

(assert (=> b!171884 (= e!113436 (containsKey!187 (toList!1101 lt!85152) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!52271 res!81647) b!171884))

(assert (=> d!52271 m!199881))

(assert (=> d!52271 m!199881))

(assert (=> d!52271 m!199883))

(declare-fun m!200855 () Bool)

(assert (=> d!52271 m!200855))

(assert (=> d!52271 m!200465))

(assert (=> b!171884 m!199877))

(assert (=> b!171280 d!52271))

(assert (=> b!171280 d!51867))

(assert (=> b!171280 d!51869))

(declare-fun d!52273 () Bool)

(assert (=> d!52273 (= (get!1940 (getValueByKey!183 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))) (v!3910 (getValueByKey!183 (toList!1101 lt!85152) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!51777 d!52273))

(assert (=> d!51777 d!52125))

(declare-fun d!52275 () Bool)

(assert (=> d!52275 (= (get!1940 (getValueByKey!183 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))) (v!3910 (getValueByKey!183 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!51765 d!52275))

(assert (=> d!51765 d!52131))

(declare-fun d!52277 () Bool)

(declare-fun e!113438 () Bool)

(assert (=> d!52277 e!113438))

(declare-fun res!81648 () Bool)

(assert (=> d!52277 (=> res!81648 e!113438)))

(declare-fun lt!85614 () Bool)

(assert (=> d!52277 (= res!81648 (not lt!85614))))

(declare-fun lt!85612 () Bool)

(assert (=> d!52277 (= lt!85614 lt!85612)))

(declare-fun lt!85613 () Unit!5249)

(declare-fun e!113437 () Unit!5249)

(assert (=> d!52277 (= lt!85613 e!113437)))

(declare-fun c!30777 () Bool)

(assert (=> d!52277 (= c!30777 lt!85612)))

(assert (=> d!52277 (= lt!85612 (containsKey!187 (toList!1101 lt!85261) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52277 (= (contains!1143 lt!85261 #b0000000000000000000000000000000000000000000000000000000000000000) lt!85614)))

(declare-fun b!171885 () Bool)

(declare-fun lt!85615 () Unit!5249)

(assert (=> b!171885 (= e!113437 lt!85615)))

(assert (=> b!171885 (= lt!85615 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85261) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171885 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85261) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!171886 () Bool)

(declare-fun Unit!5290 () Unit!5249)

(assert (=> b!171886 (= e!113437 Unit!5290)))

(declare-fun b!171887 () Bool)

(assert (=> b!171887 (= e!113438 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85261) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52277 c!30777) b!171885))

(assert (= (and d!52277 (not c!30777)) b!171886))

(assert (= (and d!52277 (not res!81648)) b!171887))

(declare-fun m!200857 () Bool)

(assert (=> d!52277 m!200857))

(declare-fun m!200859 () Bool)

(assert (=> b!171885 m!200859))

(declare-fun m!200861 () Bool)

(assert (=> b!171885 m!200861))

(assert (=> b!171885 m!200861))

(declare-fun m!200863 () Bool)

(assert (=> b!171885 m!200863))

(assert (=> b!171887 m!200861))

(assert (=> b!171887 m!200861))

(assert (=> b!171887 m!200863))

(assert (=> d!51743 d!52277))

(assert (=> d!51743 d!51717))

(assert (=> b!171276 d!51749))

(declare-fun d!52279 () Bool)

(assert (=> d!52279 (= (get!1940 (getValueByKey!183 (toList!1101 lt!85162) lt!85159)) (v!3910 (getValueByKey!183 (toList!1101 lt!85162) lt!85159)))))

(assert (=> d!51845 d!52279))

(declare-fun b!171889 () Bool)

(declare-fun e!113439 () Option!189)

(declare-fun e!113440 () Option!189)

(assert (=> b!171889 (= e!113439 e!113440)))

(declare-fun c!30779 () Bool)

(assert (=> b!171889 (= c!30779 (and ((_ is Cons!2209) (toList!1101 lt!85162)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85162))) lt!85159))))))

(declare-fun b!171890 () Bool)

(assert (=> b!171890 (= e!113440 (getValueByKey!183 (t!7023 (toList!1101 lt!85162)) lt!85159))))

(declare-fun d!52281 () Bool)

(declare-fun c!30778 () Bool)

(assert (=> d!52281 (= c!30778 (and ((_ is Cons!2209) (toList!1101 lt!85162)) (= (_1!1625 (h!2826 (toList!1101 lt!85162))) lt!85159)))))

(assert (=> d!52281 (= (getValueByKey!183 (toList!1101 lt!85162) lt!85159) e!113439)))

(declare-fun b!171891 () Bool)

(assert (=> b!171891 (= e!113440 None!187)))

(declare-fun b!171888 () Bool)

(assert (=> b!171888 (= e!113439 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85162)))))))

(assert (= (and d!52281 c!30778) b!171888))

(assert (= (and d!52281 (not c!30778)) b!171889))

(assert (= (and b!171889 c!30779) b!171890))

(assert (= (and b!171889 (not c!30779)) b!171891))

(declare-fun m!200865 () Bool)

(assert (=> b!171890 m!200865))

(assert (=> d!51845 d!52281))

(declare-fun d!52283 () Bool)

(assert (=> d!52283 (= (get!1941 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!467 (defaultEntry!3555 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3908 (select (arr!3389 (_values!3538 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!171194 d!52283))

(declare-fun lt!85616 () Bool)

(declare-fun d!52285 () Bool)

(assert (=> d!52285 (= lt!85616 (select (content!146 lt!85194) (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309)))))))

(declare-fun e!113442 () Bool)

(assert (=> d!52285 (= lt!85616 e!113442)))

(declare-fun res!81649 () Bool)

(assert (=> d!52285 (=> (not res!81649) (not e!113442))))

(assert (=> d!52285 (= res!81649 ((_ is Cons!2209) lt!85194))))

(assert (=> d!52285 (= (contains!1145 lt!85194 (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309)))) lt!85616)))

(declare-fun b!171892 () Bool)

(declare-fun e!113441 () Bool)

(assert (=> b!171892 (= e!113442 e!113441)))

(declare-fun res!81650 () Bool)

(assert (=> b!171892 (=> res!81650 e!113441)))

(assert (=> b!171892 (= res!81650 (= (h!2826 lt!85194) (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309)))))))

(declare-fun b!171893 () Bool)

(assert (=> b!171893 (= e!113441 (contains!1145 (t!7023 lt!85194) (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309)))))))

(assert (= (and d!52285 res!81649) b!171892))

(assert (= (and b!171892 (not res!81650)) b!171893))

(declare-fun m!200867 () Bool)

(assert (=> d!52285 m!200867))

(declare-fun m!200869 () Bool)

(assert (=> d!52285 m!200869))

(declare-fun m!200871 () Bool)

(assert (=> b!171893 m!200871))

(assert (=> b!171027 d!52285))

(declare-fun d!52287 () Bool)

(declare-fun e!113444 () Bool)

(assert (=> d!52287 e!113444))

(declare-fun res!81651 () Bool)

(assert (=> d!52287 (=> res!81651 e!113444)))

(declare-fun lt!85619 () Bool)

(assert (=> d!52287 (= res!81651 (not lt!85619))))

(declare-fun lt!85617 () Bool)

(assert (=> d!52287 (= lt!85619 lt!85617)))

(declare-fun lt!85618 () Unit!5249)

(declare-fun e!113443 () Unit!5249)

(assert (=> d!52287 (= lt!85618 e!113443)))

(declare-fun c!30780 () Bool)

(assert (=> d!52287 (= c!30780 lt!85617)))

(assert (=> d!52287 (= lt!85617 (containsKey!187 (toList!1101 lt!85313) (_1!1625 (tuple2!3231 lt!85129 v!309))))))

(assert (=> d!52287 (= (contains!1143 lt!85313 (_1!1625 (tuple2!3231 lt!85129 v!309))) lt!85619)))

(declare-fun b!171894 () Bool)

(declare-fun lt!85620 () Unit!5249)

(assert (=> b!171894 (= e!113443 lt!85620)))

(assert (=> b!171894 (= lt!85620 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85313) (_1!1625 (tuple2!3231 lt!85129 v!309))))))

(assert (=> b!171894 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85313) (_1!1625 (tuple2!3231 lt!85129 v!309))))))

(declare-fun b!171895 () Bool)

(declare-fun Unit!5291 () Unit!5249)

(assert (=> b!171895 (= e!113443 Unit!5291)))

(declare-fun b!171896 () Bool)

(assert (=> b!171896 (= e!113444 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85313) (_1!1625 (tuple2!3231 lt!85129 v!309)))))))

(assert (= (and d!52287 c!30780) b!171894))

(assert (= (and d!52287 (not c!30780)) b!171895))

(assert (= (and d!52287 (not res!81651)) b!171896))

(declare-fun m!200873 () Bool)

(assert (=> d!52287 m!200873))

(declare-fun m!200875 () Bool)

(assert (=> b!171894 m!200875))

(assert (=> b!171894 m!199671))

(assert (=> b!171894 m!199671))

(declare-fun m!200877 () Bool)

(assert (=> b!171894 m!200877))

(assert (=> b!171896 m!199671))

(assert (=> b!171896 m!199671))

(assert (=> b!171896 m!200877))

(assert (=> d!51781 d!52287))

(declare-fun b!171898 () Bool)

(declare-fun e!113445 () Option!189)

(declare-fun e!113446 () Option!189)

(assert (=> b!171898 (= e!113445 e!113446)))

(declare-fun c!30782 () Bool)

(assert (=> b!171898 (= c!30782 (and ((_ is Cons!2209) lt!85314) (not (= (_1!1625 (h!2826 lt!85314)) (_1!1625 (tuple2!3231 lt!85129 v!309))))))))

(declare-fun b!171899 () Bool)

(assert (=> b!171899 (= e!113446 (getValueByKey!183 (t!7023 lt!85314) (_1!1625 (tuple2!3231 lt!85129 v!309))))))

(declare-fun d!52289 () Bool)

(declare-fun c!30781 () Bool)

(assert (=> d!52289 (= c!30781 (and ((_ is Cons!2209) lt!85314) (= (_1!1625 (h!2826 lt!85314)) (_1!1625 (tuple2!3231 lt!85129 v!309)))))))

(assert (=> d!52289 (= (getValueByKey!183 lt!85314 (_1!1625 (tuple2!3231 lt!85129 v!309))) e!113445)))

(declare-fun b!171900 () Bool)

(assert (=> b!171900 (= e!113446 None!187)))

(declare-fun b!171897 () Bool)

(assert (=> b!171897 (= e!113445 (Some!188 (_2!1625 (h!2826 lt!85314))))))

(assert (= (and d!52289 c!30781) b!171897))

(assert (= (and d!52289 (not c!30781)) b!171898))

(assert (= (and b!171898 c!30782) b!171899))

(assert (= (and b!171898 (not c!30782)) b!171900))

(declare-fun m!200879 () Bool)

(assert (=> b!171899 m!200879))

(assert (=> d!51781 d!52289))

(declare-fun d!52291 () Bool)

(assert (=> d!52291 (= (getValueByKey!183 lt!85314 (_1!1625 (tuple2!3231 lt!85129 v!309))) (Some!188 (_2!1625 (tuple2!3231 lt!85129 v!309))))))

(declare-fun lt!85621 () Unit!5249)

(assert (=> d!52291 (= lt!85621 (choose!932 lt!85314 (_1!1625 (tuple2!3231 lt!85129 v!309)) (_2!1625 (tuple2!3231 lt!85129 v!309))))))

(declare-fun e!113447 () Bool)

(assert (=> d!52291 e!113447))

(declare-fun res!81652 () Bool)

(assert (=> d!52291 (=> (not res!81652) (not e!113447))))

(assert (=> d!52291 (= res!81652 (isStrictlySorted!326 lt!85314))))

(assert (=> d!52291 (= (lemmaContainsTupThenGetReturnValue!98 lt!85314 (_1!1625 (tuple2!3231 lt!85129 v!309)) (_2!1625 (tuple2!3231 lt!85129 v!309))) lt!85621)))

(declare-fun b!171901 () Bool)

(declare-fun res!81653 () Bool)

(assert (=> b!171901 (=> (not res!81653) (not e!113447))))

(assert (=> b!171901 (= res!81653 (containsKey!187 lt!85314 (_1!1625 (tuple2!3231 lt!85129 v!309))))))

(declare-fun b!171902 () Bool)

(assert (=> b!171902 (= e!113447 (contains!1145 lt!85314 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85129 v!309)) (_2!1625 (tuple2!3231 lt!85129 v!309)))))))

(assert (= (and d!52291 res!81652) b!171901))

(assert (= (and b!171901 res!81653) b!171902))

(assert (=> d!52291 m!199665))

(declare-fun m!200881 () Bool)

(assert (=> d!52291 m!200881))

(declare-fun m!200883 () Bool)

(assert (=> d!52291 m!200883))

(declare-fun m!200885 () Bool)

(assert (=> b!171901 m!200885))

(declare-fun m!200887 () Bool)

(assert (=> b!171902 m!200887))

(assert (=> d!51781 d!52291))

(declare-fun b!171903 () Bool)

(declare-fun e!113448 () List!2213)

(declare-fun call!17496 () List!2213)

(assert (=> b!171903 (= e!113448 call!17496)))

(declare-fun b!171904 () Bool)

(declare-fun res!81655 () Bool)

(declare-fun e!113452 () Bool)

(assert (=> b!171904 (=> (not res!81655) (not e!113452))))

(declare-fun lt!85622 () List!2213)

(assert (=> b!171904 (= res!81655 (containsKey!187 lt!85622 (_1!1625 (tuple2!3231 lt!85129 v!309))))))

(declare-fun b!171905 () Bool)

(declare-fun e!113451 () List!2213)

(declare-fun e!113449 () List!2213)

(assert (=> b!171905 (= e!113451 e!113449)))

(declare-fun c!30784 () Bool)

(assert (=> b!171905 (= c!30784 (and ((_ is Cons!2209) (toList!1101 lt!85123)) (= (_1!1625 (h!2826 (toList!1101 lt!85123))) (_1!1625 (tuple2!3231 lt!85129 v!309)))))))

(declare-fun e!113450 () List!2213)

(declare-fun c!30785 () Bool)

(declare-fun b!171906 () Bool)

(assert (=> b!171906 (= e!113450 (ite c!30784 (t!7023 (toList!1101 lt!85123)) (ite c!30785 (Cons!2209 (h!2826 (toList!1101 lt!85123)) (t!7023 (toList!1101 lt!85123))) Nil!2210)))))

(declare-fun b!171907 () Bool)

(assert (=> b!171907 (= e!113452 (contains!1145 lt!85622 (tuple2!3231 (_1!1625 (tuple2!3231 lt!85129 v!309)) (_2!1625 (tuple2!3231 lt!85129 v!309)))))))

(declare-fun b!171908 () Bool)

(declare-fun call!17495 () List!2213)

(assert (=> b!171908 (= e!113451 call!17495)))

(declare-fun c!30786 () Bool)

(declare-fun bm!17492 () Bool)

(assert (=> bm!17492 (= call!17495 ($colon$colon!96 e!113450 (ite c!30786 (h!2826 (toList!1101 lt!85123)) (tuple2!3231 (_1!1625 (tuple2!3231 lt!85129 v!309)) (_2!1625 (tuple2!3231 lt!85129 v!309))))))))

(declare-fun c!30783 () Bool)

(assert (=> bm!17492 (= c!30783 c!30786)))

(declare-fun bm!17494 () Bool)

(declare-fun call!17497 () List!2213)

(assert (=> bm!17494 (= call!17496 call!17497)))

(declare-fun b!171909 () Bool)

(assert (=> b!171909 (= e!113449 call!17497)))

(declare-fun b!171910 () Bool)

(assert (=> b!171910 (= e!113448 call!17496)))

(declare-fun b!171911 () Bool)

(assert (=> b!171911 (= c!30785 (and ((_ is Cons!2209) (toList!1101 lt!85123)) (bvsgt (_1!1625 (h!2826 (toList!1101 lt!85123))) (_1!1625 (tuple2!3231 lt!85129 v!309)))))))

(assert (=> b!171911 (= e!113449 e!113448)))

(declare-fun b!171912 () Bool)

(assert (=> b!171912 (= e!113450 (insertStrictlySorted!100 (t!7023 (toList!1101 lt!85123)) (_1!1625 (tuple2!3231 lt!85129 v!309)) (_2!1625 (tuple2!3231 lt!85129 v!309))))))

(declare-fun bm!17493 () Bool)

(assert (=> bm!17493 (= call!17497 call!17495)))

(declare-fun d!52293 () Bool)

(assert (=> d!52293 e!113452))

(declare-fun res!81654 () Bool)

(assert (=> d!52293 (=> (not res!81654) (not e!113452))))

(assert (=> d!52293 (= res!81654 (isStrictlySorted!326 lt!85622))))

(assert (=> d!52293 (= lt!85622 e!113451)))

(assert (=> d!52293 (= c!30786 (and ((_ is Cons!2209) (toList!1101 lt!85123)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85123))) (_1!1625 (tuple2!3231 lt!85129 v!309)))))))

(assert (=> d!52293 (isStrictlySorted!326 (toList!1101 lt!85123))))

(assert (=> d!52293 (= (insertStrictlySorted!100 (toList!1101 lt!85123) (_1!1625 (tuple2!3231 lt!85129 v!309)) (_2!1625 (tuple2!3231 lt!85129 v!309))) lt!85622)))

(assert (= (and d!52293 c!30786) b!171908))

(assert (= (and d!52293 (not c!30786)) b!171905))

(assert (= (and b!171905 c!30784) b!171909))

(assert (= (and b!171905 (not c!30784)) b!171911))

(assert (= (and b!171911 c!30785) b!171910))

(assert (= (and b!171911 (not c!30785)) b!171903))

(assert (= (or b!171910 b!171903) bm!17494))

(assert (= (or b!171909 bm!17494) bm!17493))

(assert (= (or b!171908 bm!17493) bm!17492))

(assert (= (and bm!17492 c!30783) b!171912))

(assert (= (and bm!17492 (not c!30783)) b!171906))

(assert (= (and d!52293 res!81654) b!171904))

(assert (= (and b!171904 res!81655) b!171907))

(declare-fun m!200889 () Bool)

(assert (=> b!171904 m!200889))

(declare-fun m!200891 () Bool)

(assert (=> d!52293 m!200891))

(declare-fun m!200893 () Bool)

(assert (=> d!52293 m!200893))

(declare-fun m!200895 () Bool)

(assert (=> b!171912 m!200895))

(declare-fun m!200897 () Bool)

(assert (=> b!171907 m!200897))

(declare-fun m!200899 () Bool)

(assert (=> bm!17492 m!200899))

(assert (=> d!51781 d!52293))

(declare-fun b!171914 () Bool)

(declare-fun e!113453 () Option!189)

(declare-fun e!113454 () Option!189)

(assert (=> b!171914 (= e!113453 e!113454)))

(declare-fun c!30788 () Bool)

(assert (=> b!171914 (= c!30788 (and ((_ is Cons!2209) (toList!1101 lt!85277)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85277))) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))))

(declare-fun b!171915 () Bool)

(assert (=> b!171915 (= e!113454 (getValueByKey!183 (t!7023 (toList!1101 lt!85277)) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun d!52295 () Bool)

(declare-fun c!30787 () Bool)

(assert (=> d!52295 (= c!30787 (and ((_ is Cons!2209) (toList!1101 lt!85277)) (= (_1!1625 (h!2826 (toList!1101 lt!85277))) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(assert (=> d!52295 (= (getValueByKey!183 (toList!1101 lt!85277) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) e!113453)))

(declare-fun b!171916 () Bool)

(assert (=> b!171916 (= e!113454 None!187)))

(declare-fun b!171913 () Bool)

(assert (=> b!171913 (= e!113453 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85277)))))))

(assert (= (and d!52295 c!30787) b!171913))

(assert (= (and d!52295 (not c!30787)) b!171914))

(assert (= (and b!171914 c!30788) b!171915))

(assert (= (and b!171914 (not c!30788)) b!171916))

(declare-fun m!200901 () Bool)

(assert (=> b!171915 m!200901))

(assert (=> b!171157 d!52295))

(declare-fun d!52297 () Bool)

(declare-fun res!81656 () Bool)

(declare-fun e!113455 () Bool)

(assert (=> d!52297 (=> res!81656 e!113455)))

(assert (=> d!52297 (= res!81656 (and ((_ is Cons!2209) lt!85216) (= (_1!1625 (h!2826 lt!85216)) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(assert (=> d!52297 (= (containsKey!187 lt!85216 (_1!1625 (tuple2!3231 key!828 v!309))) e!113455)))

(declare-fun b!171917 () Bool)

(declare-fun e!113456 () Bool)

(assert (=> b!171917 (= e!113455 e!113456)))

(declare-fun res!81657 () Bool)

(assert (=> b!171917 (=> (not res!81657) (not e!113456))))

(assert (=> b!171917 (= res!81657 (and (or (not ((_ is Cons!2209) lt!85216)) (bvsle (_1!1625 (h!2826 lt!85216)) (_1!1625 (tuple2!3231 key!828 v!309)))) ((_ is Cons!2209) lt!85216) (bvslt (_1!1625 (h!2826 lt!85216)) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(declare-fun b!171918 () Bool)

(assert (=> b!171918 (= e!113456 (containsKey!187 (t!7023 lt!85216) (_1!1625 (tuple2!3231 key!828 v!309))))))

(assert (= (and d!52297 (not res!81656)) b!171917))

(assert (= (and b!171917 res!81657) b!171918))

(declare-fun m!200903 () Bool)

(assert (=> b!171918 m!200903))

(assert (=> b!171049 d!52297))

(declare-fun d!52299 () Bool)

(declare-fun res!81658 () Bool)

(declare-fun e!113457 () Bool)

(assert (=> d!52299 (=> res!81658 e!113457)))

(assert (=> d!52299 (= res!81658 (and ((_ is Cons!2209) (toList!1101 lt!85127)) (= (_1!1625 (h!2826 (toList!1101 lt!85127))) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!52299 (= (containsKey!187 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) e!113457)))

(declare-fun b!171919 () Bool)

(declare-fun e!113458 () Bool)

(assert (=> b!171919 (= e!113457 e!113458)))

(declare-fun res!81659 () Bool)

(assert (=> b!171919 (=> (not res!81659) (not e!113458))))

(assert (=> b!171919 (= res!81659 (and (or (not ((_ is Cons!2209) (toList!1101 lt!85127))) (bvsle (_1!1625 (h!2826 (toList!1101 lt!85127))) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))) ((_ is Cons!2209) (toList!1101 lt!85127)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85127))) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun b!171920 () Bool)

(assert (=> b!171920 (= e!113458 (containsKey!187 (t!7023 (toList!1101 lt!85127)) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52299 (not res!81658)) b!171919))

(assert (= (and b!171919 res!81659) b!171920))

(assert (=> b!171920 m!199219))

(declare-fun m!200905 () Bool)

(assert (=> b!171920 m!200905))

(assert (=> d!51731 d!52299))

(declare-fun lt!85623 () Bool)

(declare-fun d!52301 () Bool)

(assert (=> d!52301 (= lt!85623 (select (content!146 (toList!1101 lt!85352)) (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))

(declare-fun e!113460 () Bool)

(assert (=> d!52301 (= lt!85623 e!113460)))

(declare-fun res!81660 () Bool)

(assert (=> d!52301 (=> (not res!81660) (not e!113460))))

(assert (=> d!52301 (= res!81660 ((_ is Cons!2209) (toList!1101 lt!85352)))))

(assert (=> d!52301 (= (contains!1145 (toList!1101 lt!85352) (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))) lt!85623)))

(declare-fun b!171921 () Bool)

(declare-fun e!113459 () Bool)

(assert (=> b!171921 (= e!113460 e!113459)))

(declare-fun res!81661 () Bool)

(assert (=> b!171921 (=> res!81661 e!113459)))

(assert (=> b!171921 (= res!81661 (= (h!2826 (toList!1101 lt!85352)) (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))

(declare-fun b!171922 () Bool)

(assert (=> b!171922 (= e!113459 (contains!1145 (t!7023 (toList!1101 lt!85352)) (tuple2!3231 lt!85157 (minValue!3398 thiss!1248))))))

(assert (= (and d!52301 res!81660) b!171921))

(assert (= (and b!171921 (not res!81661)) b!171922))

(declare-fun m!200907 () Bool)

(assert (=> d!52301 m!200907))

(declare-fun m!200909 () Bool)

(assert (=> d!52301 m!200909))

(declare-fun m!200911 () Bool)

(assert (=> b!171922 m!200911))

(assert (=> b!171266 d!52301))

(assert (=> b!171213 d!51893))

(assert (=> b!170999 d!51737))

(declare-fun d!52303 () Bool)

(assert (=> d!52303 (= ($colon$colon!96 e!113002 (ite c!30563 (h!2826 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))) (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))) (Cons!2209 (ite c!30563 (h!2826 (toList!1101 (getCurrentListMap!750 (_keys!5387 thiss!1248) (_values!3538 thiss!1248) (mask!8383 thiss!1248) (extraKeys!3296 thiss!1248) (zeroValue!3398 thiss!1248) (minValue!3398 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3555 thiss!1248)))) (tuple2!3231 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))) e!113002))))

(assert (=> bm!17432 d!52303))

(assert (=> b!171118 d!51749))

(declare-fun d!52305 () Bool)

(declare-fun e!113462 () Bool)

(assert (=> d!52305 e!113462))

(declare-fun res!81662 () Bool)

(assert (=> d!52305 (=> res!81662 e!113462)))

(declare-fun lt!85626 () Bool)

(assert (=> d!52305 (= res!81662 (not lt!85626))))

(declare-fun lt!85624 () Bool)

(assert (=> d!52305 (= lt!85626 lt!85624)))

(declare-fun lt!85625 () Unit!5249)

(declare-fun e!113461 () Unit!5249)

(assert (=> d!52305 (= lt!85625 e!113461)))

(declare-fun c!30789 () Bool)

(assert (=> d!52305 (= c!30789 lt!85624)))

(assert (=> d!52305 (= lt!85624 (containsKey!187 (toList!1101 lt!85243) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52305 (= (contains!1143 lt!85243 #b0000000000000000000000000000000000000000000000000000000000000000) lt!85626)))

(declare-fun b!171923 () Bool)

(declare-fun lt!85627 () Unit!5249)

(assert (=> b!171923 (= e!113461 lt!85627)))

(assert (=> b!171923 (= lt!85627 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85243) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!171923 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85243) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!171924 () Bool)

(declare-fun Unit!5292 () Unit!5249)

(assert (=> b!171924 (= e!113461 Unit!5292)))

(declare-fun b!171925 () Bool)

(assert (=> b!171925 (= e!113462 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85243) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52305 c!30789) b!171923))

(assert (= (and d!52305 (not c!30789)) b!171924))

(assert (= (and d!52305 (not res!81662)) b!171925))

(declare-fun m!200913 () Bool)

(assert (=> d!52305 m!200913))

(declare-fun m!200915 () Bool)

(assert (=> b!171923 m!200915))

(declare-fun m!200917 () Bool)

(assert (=> b!171923 m!200917))

(assert (=> b!171923 m!200917))

(declare-fun m!200919 () Bool)

(assert (=> b!171923 m!200919))

(assert (=> b!171925 m!200917))

(assert (=> b!171925 m!200917))

(assert (=> b!171925 m!200919))

(assert (=> d!51733 d!52305))

(assert (=> d!51733 d!51717))

(declare-fun lt!85628 () Bool)

(declare-fun d!52307 () Bool)

(assert (=> d!52307 (= lt!85628 (select (content!146 (toList!1101 lt!85331)) (tuple2!3231 lt!85126 v!309)))))

(declare-fun e!113464 () Bool)

(assert (=> d!52307 (= lt!85628 e!113464)))

(declare-fun res!81663 () Bool)

(assert (=> d!52307 (=> (not res!81663) (not e!113464))))

(assert (=> d!52307 (= res!81663 ((_ is Cons!2209) (toList!1101 lt!85331)))))

(assert (=> d!52307 (= (contains!1145 (toList!1101 lt!85331) (tuple2!3231 lt!85126 v!309)) lt!85628)))

(declare-fun b!171926 () Bool)

(declare-fun e!113463 () Bool)

(assert (=> b!171926 (= e!113464 e!113463)))

(declare-fun res!81664 () Bool)

(assert (=> b!171926 (=> res!81664 e!113463)))

(assert (=> b!171926 (= res!81664 (= (h!2826 (toList!1101 lt!85331)) (tuple2!3231 lt!85126 v!309)))))

(declare-fun b!171927 () Bool)

(assert (=> b!171927 (= e!113463 (contains!1145 (t!7023 (toList!1101 lt!85331)) (tuple2!3231 lt!85126 v!309)))))

(assert (= (and d!52307 res!81663) b!171926))

(assert (= (and b!171926 (not res!81664)) b!171927))

(declare-fun m!200921 () Bool)

(assert (=> d!52307 m!200921))

(declare-fun m!200923 () Bool)

(assert (=> d!52307 m!200923))

(declare-fun m!200925 () Bool)

(assert (=> b!171927 m!200925))

(assert (=> b!171251 d!52307))

(declare-fun d!52309 () Bool)

(declare-fun e!113466 () Bool)

(assert (=> d!52309 e!113466))

(declare-fun res!81665 () Bool)

(assert (=> d!52309 (=> res!81665 e!113466)))

(declare-fun lt!85631 () Bool)

(assert (=> d!52309 (= res!81665 (not lt!85631))))

(declare-fun lt!85629 () Bool)

(assert (=> d!52309 (= lt!85631 lt!85629)))

(declare-fun lt!85630 () Unit!5249)

(declare-fun e!113465 () Unit!5249)

(assert (=> d!52309 (= lt!85630 e!113465)))

(declare-fun c!30790 () Bool)

(assert (=> d!52309 (= c!30790 lt!85629)))

(assert (=> d!52309 (= lt!85629 (containsKey!187 (toList!1101 lt!85292) (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(assert (=> d!52309 (= (contains!1143 lt!85292 (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)) lt!85631)))

(declare-fun b!171928 () Bool)

(declare-fun lt!85632 () Unit!5249)

(assert (=> b!171928 (= e!113465 lt!85632)))

(assert (=> b!171928 (= lt!85632 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85292) (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(assert (=> b!171928 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85292) (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000)))))

(declare-fun b!171929 () Bool)

(declare-fun Unit!5293 () Unit!5249)

(assert (=> b!171929 (= e!113465 Unit!5293)))

(declare-fun b!171930 () Bool)

(assert (=> b!171930 (= e!113466 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85292) (select (arr!3388 (_keys!5387 lt!85067)) #b00000000000000000000000000000000))))))

(assert (= (and d!52309 c!30790) b!171928))

(assert (= (and d!52309 (not c!30790)) b!171929))

(assert (= (and d!52309 (not res!81665)) b!171930))

(assert (=> d!52309 m!199523))

(declare-fun m!200927 () Bool)

(assert (=> d!52309 m!200927))

(assert (=> b!171928 m!199523))

(declare-fun m!200929 () Bool)

(assert (=> b!171928 m!200929))

(assert (=> b!171928 m!199523))

(assert (=> b!171928 m!200067))

(assert (=> b!171928 m!200067))

(declare-fun m!200931 () Bool)

(assert (=> b!171928 m!200931))

(assert (=> b!171930 m!199523))

(assert (=> b!171930 m!200067))

(assert (=> b!171930 m!200067))

(assert (=> b!171930 m!200931))

(assert (=> b!171226 d!52309))

(declare-fun d!52311 () Bool)

(declare-fun e!113468 () Bool)

(assert (=> d!52311 e!113468))

(declare-fun res!81666 () Bool)

(assert (=> d!52311 (=> res!81666 e!113468)))

(declare-fun lt!85635 () Bool)

(assert (=> d!52311 (= res!81666 (not lt!85635))))

(declare-fun lt!85633 () Bool)

(assert (=> d!52311 (= lt!85635 lt!85633)))

(declare-fun lt!85634 () Unit!5249)

(declare-fun e!113467 () Unit!5249)

(assert (=> d!52311 (= lt!85634 e!113467)))

(declare-fun c!30791 () Bool)

(assert (=> d!52311 (= c!30791 lt!85633)))

(assert (=> d!52311 (= lt!85633 (containsKey!187 (toList!1101 lt!85261) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!52311 (= (contains!1143 lt!85261 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) lt!85635)))

(declare-fun b!171931 () Bool)

(declare-fun lt!85636 () Unit!5249)

(assert (=> b!171931 (= e!113467 lt!85636)))

(assert (=> b!171931 (= lt!85636 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85261) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!171931 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85261) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!171932 () Bool)

(declare-fun Unit!5294 () Unit!5249)

(assert (=> b!171932 (= e!113467 Unit!5294)))

(declare-fun b!171933 () Bool)

(assert (=> b!171933 (= e!113468 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85261) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!52311 c!30791) b!171931))

(assert (= (and d!52311 (not c!30791)) b!171932))

(assert (= (and d!52311 (not res!81666)) b!171933))

(assert (=> d!52311 m!199219))

(declare-fun m!200933 () Bool)

(assert (=> d!52311 m!200933))

(assert (=> b!171931 m!199219))

(declare-fun m!200935 () Bool)

(assert (=> b!171931 m!200935))

(assert (=> b!171931 m!199219))

(declare-fun m!200937 () Bool)

(assert (=> b!171931 m!200937))

(assert (=> b!171931 m!200937))

(declare-fun m!200939 () Bool)

(assert (=> b!171931 m!200939))

(assert (=> b!171933 m!199219))

(assert (=> b!171933 m!200937))

(assert (=> b!171933 m!200937))

(assert (=> b!171933 m!200939))

(assert (=> b!171122 d!52311))

(declare-fun d!52313 () Bool)

(declare-fun res!81667 () Bool)

(declare-fun e!113469 () Bool)

(assert (=> d!52313 (=> res!81667 e!113469)))

(assert (=> d!52313 (= res!81667 (and ((_ is Cons!2209) (toList!1101 lt!85127)) (= (_1!1625 (h!2826 (toList!1101 lt!85127))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52313 (= (containsKey!187 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000) e!113469)))

(declare-fun b!171934 () Bool)

(declare-fun e!113470 () Bool)

(assert (=> b!171934 (= e!113469 e!113470)))

(declare-fun res!81668 () Bool)

(assert (=> b!171934 (=> (not res!81668) (not e!113470))))

(assert (=> b!171934 (= res!81668 (and (or (not ((_ is Cons!2209) (toList!1101 lt!85127))) (bvsle (_1!1625 (h!2826 (toList!1101 lt!85127))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!2209) (toList!1101 lt!85127)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85127))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!171935 () Bool)

(assert (=> b!171935 (= e!113470 (containsKey!187 (t!7023 (toList!1101 lt!85127)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!52313 (not res!81667)) b!171934))

(assert (= (and b!171934 res!81668) b!171935))

(declare-fun m!200941 () Bool)

(assert (=> b!171935 m!200941))

(assert (=> d!51715 d!52313))

(declare-fun d!52315 () Bool)

(assert (=> d!52315 (= (get!1940 (getValueByKey!183 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3910 (getValueByKey!183 (toList!1101 lt!85127) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!51813 d!52315))

(assert (=> d!51813 d!51971))

(assert (=> b!171090 d!51749))

(declare-fun d!52317 () Bool)

(assert (=> d!52317 (= (get!1940 (getValueByKey!183 (toList!1101 lt!85133) lt!85125)) (v!3910 (getValueByKey!183 (toList!1101 lt!85133) lt!85125)))))

(assert (=> d!51787 d!52317))

(declare-fun b!171937 () Bool)

(declare-fun e!113471 () Option!189)

(declare-fun e!113472 () Option!189)

(assert (=> b!171937 (= e!113471 e!113472)))

(declare-fun c!30793 () Bool)

(assert (=> b!171937 (= c!30793 (and ((_ is Cons!2209) (toList!1101 lt!85133)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85133))) lt!85125))))))

(declare-fun b!171938 () Bool)

(assert (=> b!171938 (= e!113472 (getValueByKey!183 (t!7023 (toList!1101 lt!85133)) lt!85125))))

(declare-fun d!52319 () Bool)

(declare-fun c!30792 () Bool)

(assert (=> d!52319 (= c!30792 (and ((_ is Cons!2209) (toList!1101 lt!85133)) (= (_1!1625 (h!2826 (toList!1101 lt!85133))) lt!85125)))))

(assert (=> d!52319 (= (getValueByKey!183 (toList!1101 lt!85133) lt!85125) e!113471)))

(declare-fun b!171939 () Bool)

(assert (=> b!171939 (= e!113472 None!187)))

(declare-fun b!171936 () Bool)

(assert (=> b!171936 (= e!113471 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85133)))))))

(assert (= (and d!52319 c!30792) b!171936))

(assert (= (and d!52319 (not c!30792)) b!171937))

(assert (= (and b!171937 c!30793) b!171938))

(assert (= (and b!171937 (not c!30793)) b!171939))

(declare-fun m!200943 () Bool)

(assert (=> b!171938 m!200943))

(assert (=> d!51787 d!52319))

(declare-fun b!171940 () Bool)

(declare-fun e!113474 () (_ BitVec 32))

(declare-fun call!17498 () (_ BitVec 32))

(assert (=> b!171940 (= e!113474 call!17498)))

(declare-fun b!171941 () Bool)

(declare-fun e!113473 () (_ BitVec 32))

(assert (=> b!171941 (= e!113473 #b00000000000000000000000000000000)))

(declare-fun b!171942 () Bool)

(assert (=> b!171942 (= e!113473 e!113474)))

(declare-fun c!30795 () Bool)

(assert (=> b!171942 (= c!30795 (validKeyInArray!0 (select (arr!3388 (_keys!5387 lt!85067)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!171943 () Bool)

(assert (=> b!171943 (= e!113474 (bvadd #b00000000000000000000000000000001 call!17498))))

(declare-fun bm!17495 () Bool)

(assert (=> bm!17495 (= call!17498 (arrayCountValidKeys!0 (_keys!5387 lt!85067) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!3681 (_keys!5387 lt!85067))))))

(declare-fun d!52321 () Bool)

(declare-fun lt!85637 () (_ BitVec 32))

(assert (=> d!52321 (and (bvsge lt!85637 #b00000000000000000000000000000000) (bvsle lt!85637 (bvsub (size!3681 (_keys!5387 lt!85067)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!52321 (= lt!85637 e!113473)))

(declare-fun c!30794 () Bool)

(assert (=> d!52321 (= c!30794 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 lt!85067))))))

(assert (=> d!52321 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 lt!85067))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!3681 (_keys!5387 lt!85067)) (size!3681 (_keys!5387 lt!85067))))))

(assert (=> d!52321 (= (arrayCountValidKeys!0 (_keys!5387 lt!85067) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3681 (_keys!5387 lt!85067))) lt!85637)))

(assert (= (and d!52321 c!30794) b!171941))

(assert (= (and d!52321 (not c!30794)) b!171942))

(assert (= (and b!171942 c!30795) b!171943))

(assert (= (and b!171942 (not c!30795)) b!171940))

(assert (= (or b!171943 b!171940) bm!17495))

(assert (=> b!171942 m!200093))

(assert (=> b!171942 m!200093))

(assert (=> b!171942 m!200095))

(declare-fun m!200945 () Bool)

(assert (=> bm!17495 m!200945))

(assert (=> bm!17431 d!52321))

(declare-fun d!52323 () Bool)

(assert (=> d!52323 (= ($colon$colon!96 e!112927 (ite c!30526 (h!2826 (toList!1101 (map!1852 thiss!1248))) (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309))))) (Cons!2209 (ite c!30526 (h!2826 (toList!1101 (map!1852 thiss!1248))) (tuple2!3231 (_1!1625 (tuple2!3231 key!828 v!309)) (_2!1625 (tuple2!3231 key!828 v!309)))) e!112927))))

(assert (=> bm!17419 d!52323))

(assert (=> b!171161 d!51909))

(assert (=> b!171161 d!51853))

(assert (=> d!51709 d!51711))

(assert (=> d!51709 d!51713))

(declare-fun d!52325 () Bool)

(assert (=> d!52325 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85065) key!828))))

(assert (=> d!52325 true))

(declare-fun _$12!443 () Unit!5249)

(assert (=> d!52325 (= (choose!931 (toList!1101 lt!85065) key!828) _$12!443)))

(declare-fun bs!7107 () Bool)

(assert (= bs!7107 d!52325))

(assert (=> bs!7107 m!199361))

(assert (=> bs!7107 m!199361))

(assert (=> bs!7107 m!199363))

(assert (=> d!51709 d!52325))

(declare-fun d!52327 () Bool)

(declare-fun res!81669 () Bool)

(declare-fun e!113475 () Bool)

(assert (=> d!52327 (=> res!81669 e!113475)))

(assert (=> d!52327 (= res!81669 (or ((_ is Nil!2210) (toList!1101 lt!85065)) ((_ is Nil!2210) (t!7023 (toList!1101 lt!85065)))))))

(assert (=> d!52327 (= (isStrictlySorted!326 (toList!1101 lt!85065)) e!113475)))

(declare-fun b!171944 () Bool)

(declare-fun e!113476 () Bool)

(assert (=> b!171944 (= e!113475 e!113476)))

(declare-fun res!81670 () Bool)

(assert (=> b!171944 (=> (not res!81670) (not e!113476))))

(assert (=> b!171944 (= res!81670 (bvslt (_1!1625 (h!2826 (toList!1101 lt!85065))) (_1!1625 (h!2826 (t!7023 (toList!1101 lt!85065))))))))

(declare-fun b!171945 () Bool)

(assert (=> b!171945 (= e!113476 (isStrictlySorted!326 (t!7023 (toList!1101 lt!85065))))))

(assert (= (and d!52327 (not res!81669)) b!171944))

(assert (= (and b!171944 res!81670) b!171945))

(declare-fun m!200947 () Bool)

(assert (=> b!171945 m!200947))

(assert (=> d!51709 d!52327))

(declare-fun d!52329 () Bool)

(assert (=> d!52329 (= (get!1940 (getValueByKey!183 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!3910 (getValueByKey!183 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!51773 d!52329))

(assert (=> d!51773 d!52037))

(assert (=> d!51841 d!51821))

(declare-fun d!52331 () Bool)

(declare-fun e!113478 () Bool)

(assert (=> d!52331 e!113478))

(declare-fun res!81671 () Bool)

(assert (=> d!52331 (=> res!81671 e!113478)))

(declare-fun lt!85640 () Bool)

(assert (=> d!52331 (= res!81671 (not lt!85640))))

(declare-fun lt!85638 () Bool)

(assert (=> d!52331 (= lt!85640 lt!85638)))

(declare-fun lt!85639 () Unit!5249)

(declare-fun e!113477 () Unit!5249)

(assert (=> d!52331 (= lt!85639 e!113477)))

(declare-fun c!30796 () Bool)

(assert (=> d!52331 (= c!30796 lt!85638)))

(assert (=> d!52331 (= lt!85638 (containsKey!187 (toList!1101 lt!85148) lt!85163))))

(assert (=> d!52331 (= (contains!1143 lt!85148 lt!85163) lt!85640)))

(declare-fun b!171946 () Bool)

(declare-fun lt!85641 () Unit!5249)

(assert (=> b!171946 (= e!113477 lt!85641)))

(assert (=> b!171946 (= lt!85641 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85148) lt!85163))))

(assert (=> b!171946 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85148) lt!85163))))

(declare-fun b!171947 () Bool)

(declare-fun Unit!5295 () Unit!5249)

(assert (=> b!171947 (= e!113477 Unit!5295)))

(declare-fun b!171948 () Bool)

(assert (=> b!171948 (= e!113478 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85148) lt!85163)))))

(assert (= (and d!52331 c!30796) b!171946))

(assert (= (and d!52331 (not c!30796)) b!171947))

(assert (= (and d!52331 (not res!81671)) b!171948))

(declare-fun m!200949 () Bool)

(assert (=> d!52331 m!200949))

(declare-fun m!200951 () Bool)

(assert (=> b!171946 m!200951))

(assert (=> b!171946 m!199781))

(assert (=> b!171946 m!199781))

(declare-fun m!200953 () Bool)

(assert (=> b!171946 m!200953))

(assert (=> b!171948 m!199781))

(assert (=> b!171948 m!199781))

(assert (=> b!171948 m!200953))

(assert (=> d!51841 d!52331))

(declare-fun d!52333 () Bool)

(assert (=> d!52333 (= (apply!129 (+!239 lt!85148 (tuple2!3231 lt!85154 (zeroValue!3398 thiss!1248))) lt!85163) (apply!129 lt!85148 lt!85163))))

(assert (=> d!52333 true))

(declare-fun _$34!1049 () Unit!5249)

(assert (=> d!52333 (= (choose!934 lt!85148 lt!85154 (zeroValue!3398 thiss!1248) lt!85163) _$34!1049)))

(declare-fun bs!7108 () Bool)

(assert (= bs!7108 d!52333))

(assert (=> bs!7108 m!199301))

(assert (=> bs!7108 m!199301))

(assert (=> bs!7108 m!199303))

(assert (=> bs!7108 m!199299))

(assert (=> d!51841 d!52333))

(assert (=> d!51841 d!51839))

(assert (=> d!51841 d!51843))

(declare-fun d!52335 () Bool)

(assert (=> d!52335 (= (get!1940 (getValueByKey!183 (toList!1101 lt!85137) lt!85134)) (v!3910 (getValueByKey!183 (toList!1101 lt!85137) lt!85134)))))

(assert (=> d!51799 d!52335))

(declare-fun b!171950 () Bool)

(declare-fun e!113479 () Option!189)

(declare-fun e!113480 () Option!189)

(assert (=> b!171950 (= e!113479 e!113480)))

(declare-fun c!30798 () Bool)

(assert (=> b!171950 (= c!30798 (and ((_ is Cons!2209) (toList!1101 lt!85137)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85137))) lt!85134))))))

(declare-fun b!171951 () Bool)

(assert (=> b!171951 (= e!113480 (getValueByKey!183 (t!7023 (toList!1101 lt!85137)) lt!85134))))

(declare-fun d!52337 () Bool)

(declare-fun c!30797 () Bool)

(assert (=> d!52337 (= c!30797 (and ((_ is Cons!2209) (toList!1101 lt!85137)) (= (_1!1625 (h!2826 (toList!1101 lt!85137))) lt!85134)))))

(assert (=> d!52337 (= (getValueByKey!183 (toList!1101 lt!85137) lt!85134) e!113479)))

(declare-fun b!171952 () Bool)

(assert (=> b!171952 (= e!113480 None!187)))

(declare-fun b!171949 () Bool)

(assert (=> b!171949 (= e!113479 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85137)))))))

(assert (= (and d!52337 c!30797) b!171949))

(assert (= (and d!52337 (not c!30797)) b!171950))

(assert (= (and b!171950 c!30798) b!171951))

(assert (= (and b!171950 (not c!30798)) b!171952))

(declare-fun m!200955 () Bool)

(assert (=> b!171951 m!200955))

(assert (=> d!51799 d!52337))

(assert (=> b!171230 d!51947))

(declare-fun d!52339 () Bool)

(declare-fun res!81672 () Bool)

(declare-fun e!113481 () Bool)

(assert (=> d!52339 (=> res!81672 e!113481)))

(assert (=> d!52339 (= res!81672 (and ((_ is Cons!2209) lt!85178) (= (_1!1625 (h!2826 lt!85178)) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52339 (= (containsKey!187 lt!85178 (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))) e!113481)))

(declare-fun b!171953 () Bool)

(declare-fun e!113482 () Bool)

(assert (=> b!171953 (= e!113481 e!113482)))

(declare-fun res!81673 () Bool)

(assert (=> b!171953 (=> (not res!81673) (not e!113482))))

(assert (=> b!171953 (= res!81673 (and (or (not ((_ is Cons!2209) lt!85178)) (bvsle (_1!1625 (h!2826 lt!85178)) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))) ((_ is Cons!2209) lt!85178) (bvslt (_1!1625 (h!2826 lt!85178)) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!171954 () Bool)

(assert (=> b!171954 (= e!113482 (containsKey!187 (t!7023 lt!85178) (_1!1625 (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (= (and d!52339 (not res!81672)) b!171953))

(assert (= (and b!171953 res!81673) b!171954))

(declare-fun m!200957 () Bool)

(assert (=> b!171954 m!200957))

(assert (=> b!171166 d!52339))

(declare-fun d!52341 () Bool)

(assert (=> d!52341 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun lt!85642 () Unit!5249)

(assert (=> d!52341 (= lt!85642 (choose!931 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!113483 () Bool)

(assert (=> d!52341 e!113483))

(declare-fun res!81674 () Bool)

(assert (=> d!52341 (=> (not res!81674) (not e!113483))))

(assert (=> d!52341 (= res!81674 (isStrictlySorted!326 (toList!1101 lt!85127)))))

(assert (=> d!52341 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) lt!85642)))

(declare-fun b!171955 () Bool)

(assert (=> b!171955 (= e!113483 (containsKey!187 (toList!1101 lt!85127) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52341 res!81674) b!171955))

(assert (=> d!52341 m!199219))

(assert (=> d!52341 m!199449))

(assert (=> d!52341 m!199449))

(assert (=> d!52341 m!199451))

(assert (=> d!52341 m!199219))

(declare-fun m!200959 () Bool)

(assert (=> d!52341 m!200959))

(assert (=> d!52341 m!200061))

(assert (=> b!171955 m!199219))

(assert (=> b!171955 m!199445))

(assert (=> b!171061 d!52341))

(assert (=> b!171061 d!52129))

(assert (=> b!171061 d!52131))

(declare-fun d!52343 () Bool)

(assert (=> d!52343 (= (apply!129 lt!85261 (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000)) (get!1940 (getValueByKey!183 (toList!1101 lt!85261) (select (arr!3388 (_keys!5387 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7109 () Bool)

(assert (= bs!7109 d!52343))

(assert (=> bs!7109 m!199219))

(assert (=> bs!7109 m!200937))

(assert (=> bs!7109 m!200937))

(declare-fun m!200961 () Bool)

(assert (=> bs!7109 m!200961))

(assert (=> b!171126 d!52343))

(assert (=> b!171126 d!51767))

(declare-fun d!52345 () Bool)

(declare-fun res!81675 () Bool)

(declare-fun e!113484 () Bool)

(assert (=> d!52345 (=> res!81675 e!113484)))

(assert (=> d!52345 (= res!81675 (and ((_ is Cons!2209) (toList!1101 lt!85193)) (= (_1!1625 (h!2826 (toList!1101 lt!85193))) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(assert (=> d!52345 (= (containsKey!187 (toList!1101 lt!85193) (_1!1625 (tuple2!3231 key!828 v!309))) e!113484)))

(declare-fun b!171956 () Bool)

(declare-fun e!113485 () Bool)

(assert (=> b!171956 (= e!113484 e!113485)))

(declare-fun res!81676 () Bool)

(assert (=> b!171956 (=> (not res!81676) (not e!113485))))

(assert (=> b!171956 (= res!81676 (and (or (not ((_ is Cons!2209) (toList!1101 lt!85193))) (bvsle (_1!1625 (h!2826 (toList!1101 lt!85193))) (_1!1625 (tuple2!3231 key!828 v!309)))) ((_ is Cons!2209) (toList!1101 lt!85193)) (bvslt (_1!1625 (h!2826 (toList!1101 lt!85193))) (_1!1625 (tuple2!3231 key!828 v!309)))))))

(declare-fun b!171957 () Bool)

(assert (=> b!171957 (= e!113485 (containsKey!187 (t!7023 (toList!1101 lt!85193)) (_1!1625 (tuple2!3231 key!828 v!309))))))

(assert (= (and d!52345 (not res!81675)) b!171956))

(assert (= (and b!171956 res!81676) b!171957))

(declare-fun m!200963 () Bool)

(assert (=> b!171957 m!200963))

(assert (=> d!51719 d!52345))

(assert (=> b!171234 d!51947))

(declare-fun lt!85643 () Bool)

(declare-fun d!52347 () Bool)

(assert (=> d!52347 (= lt!85643 (select (content!146 (toList!1101 lt!85313)) (tuple2!3231 lt!85129 v!309)))))

(declare-fun e!113487 () Bool)

(assert (=> d!52347 (= lt!85643 e!113487)))

(declare-fun res!81677 () Bool)

(assert (=> d!52347 (=> (not res!81677) (not e!113487))))

(assert (=> d!52347 (= res!81677 ((_ is Cons!2209) (toList!1101 lt!85313)))))

(assert (=> d!52347 (= (contains!1145 (toList!1101 lt!85313) (tuple2!3231 lt!85129 v!309)) lt!85643)))

(declare-fun b!171958 () Bool)

(declare-fun e!113486 () Bool)

(assert (=> b!171958 (= e!113487 e!113486)))

(declare-fun res!81678 () Bool)

(assert (=> b!171958 (=> res!81678 e!113486)))

(assert (=> b!171958 (= res!81678 (= (h!2826 (toList!1101 lt!85313)) (tuple2!3231 lt!85129 v!309)))))

(declare-fun b!171959 () Bool)

(assert (=> b!171959 (= e!113486 (contains!1145 (t!7023 (toList!1101 lt!85313)) (tuple2!3231 lt!85129 v!309)))))

(assert (= (and d!52347 res!81677) b!171958))

(assert (= (and b!171958 (not res!81678)) b!171959))

(declare-fun m!200965 () Bool)

(assert (=> d!52347 m!200965))

(declare-fun m!200967 () Bool)

(assert (=> d!52347 m!200967))

(declare-fun m!200969 () Bool)

(assert (=> b!171959 m!200969))

(assert (=> b!171239 d!52347))

(declare-fun d!52349 () Bool)

(declare-fun c!30799 () Bool)

(assert (=> d!52349 (= c!30799 ((_ is Nil!2210) (toList!1101 lt!85177)))))

(declare-fun e!113488 () (InoxSet tuple2!3230))

(assert (=> d!52349 (= (content!146 (toList!1101 lt!85177)) e!113488)))

(declare-fun b!171960 () Bool)

(assert (=> b!171960 (= e!113488 ((as const (Array tuple2!3230 Bool)) false))))

(declare-fun b!171961 () Bool)

(assert (=> b!171961 (= e!113488 ((_ map or) (store ((as const (Array tuple2!3230 Bool)) false) (h!2826 (toList!1101 lt!85177)) true) (content!146 (t!7023 (toList!1101 lt!85177)))))))

(assert (= (and d!52349 c!30799) b!171960))

(assert (= (and d!52349 (not c!30799)) b!171961))

(declare-fun m!200971 () Bool)

(assert (=> b!171961 m!200971))

(assert (=> b!171961 m!199909))

(assert (=> d!51815 d!52349))

(assert (=> bm!17424 d!52201))

(declare-fun d!52351 () Bool)

(assert (=> d!52351 (= (get!1940 (getValueByKey!183 (toList!1101 lt!85148) lt!85163)) (v!3910 (getValueByKey!183 (toList!1101 lt!85148) lt!85163)))))

(assert (=> d!51821 d!52351))

(declare-fun b!171963 () Bool)

(declare-fun e!113489 () Option!189)

(declare-fun e!113490 () Option!189)

(assert (=> b!171963 (= e!113489 e!113490)))

(declare-fun c!30801 () Bool)

(assert (=> b!171963 (= c!30801 (and ((_ is Cons!2209) (toList!1101 lt!85148)) (not (= (_1!1625 (h!2826 (toList!1101 lt!85148))) lt!85163))))))

(declare-fun b!171964 () Bool)

(assert (=> b!171964 (= e!113490 (getValueByKey!183 (t!7023 (toList!1101 lt!85148)) lt!85163))))

(declare-fun d!52353 () Bool)

(declare-fun c!30800 () Bool)

(assert (=> d!52353 (= c!30800 (and ((_ is Cons!2209) (toList!1101 lt!85148)) (= (_1!1625 (h!2826 (toList!1101 lt!85148))) lt!85163)))))

(assert (=> d!52353 (= (getValueByKey!183 (toList!1101 lt!85148) lt!85163) e!113489)))

(declare-fun b!171965 () Bool)

(assert (=> b!171965 (= e!113490 None!187)))

(declare-fun b!171962 () Bool)

(assert (=> b!171962 (= e!113489 (Some!188 (_2!1625 (h!2826 (toList!1101 lt!85148)))))))

(assert (= (and d!52353 c!30800) b!171962))

(assert (= (and d!52353 (not c!30800)) b!171963))

(assert (= (and b!171963 c!30801) b!171964))

(assert (= (and b!171963 (not c!30801)) b!171965))

(declare-fun m!200973 () Bool)

(assert (=> b!171964 m!200973))

(assert (=> d!51821 d!52353))

(assert (=> b!171102 d!52123))

(assert (=> b!171102 d!52125))

(declare-fun d!52355 () Bool)

(declare-fun e!113492 () Bool)

(assert (=> d!52355 e!113492))

(declare-fun res!81679 () Bool)

(assert (=> d!52355 (=> res!81679 e!113492)))

(declare-fun lt!85646 () Bool)

(assert (=> d!52355 (= res!81679 (not lt!85646))))

(declare-fun lt!85644 () Bool)

(assert (=> d!52355 (= lt!85646 lt!85644)))

(declare-fun lt!85645 () Unit!5249)

(declare-fun e!113491 () Unit!5249)

(assert (=> d!52355 (= lt!85645 e!113491)))

(declare-fun c!30802 () Bool)

(assert (=> d!52355 (= c!30802 lt!85644)))

(assert (=> d!52355 (= lt!85644 (containsKey!187 (toList!1101 lt!85277) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> d!52355 (= (contains!1143 lt!85277 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) lt!85646)))

(declare-fun b!171966 () Bool)

(declare-fun lt!85647 () Unit!5249)

(assert (=> b!171966 (= e!113491 lt!85647)))

(assert (=> b!171966 (= lt!85647 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85277) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(assert (=> b!171966 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85277) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun b!171967 () Bool)

(declare-fun Unit!5296 () Unit!5249)

(assert (=> b!171967 (= e!113491 Unit!5296)))

(declare-fun b!171968 () Bool)

(assert (=> b!171968 (= e!113492 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85277) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(assert (= (and d!52355 c!30802) b!171966))

(assert (= (and d!52355 (not c!30802)) b!171967))

(assert (= (and d!52355 (not res!81679)) b!171968))

(declare-fun m!200975 () Bool)

(assert (=> d!52355 m!200975))

(declare-fun m!200977 () Bool)

(assert (=> b!171966 m!200977))

(assert (=> b!171966 m!199545))

(assert (=> b!171966 m!199545))

(declare-fun m!200979 () Bool)

(assert (=> b!171966 m!200979))

(assert (=> b!171968 m!199545))

(assert (=> b!171968 m!199545))

(assert (=> b!171968 m!200979))

(assert (=> d!51753 d!52355))

(declare-fun b!171970 () Bool)

(declare-fun e!113493 () Option!189)

(declare-fun e!113494 () Option!189)

(assert (=> b!171970 (= e!113493 e!113494)))

(declare-fun c!30804 () Bool)

(assert (=> b!171970 (= c!30804 (and ((_ is Cons!2209) lt!85278) (not (= (_1!1625 (h!2826 lt!85278)) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))))

(declare-fun b!171971 () Bool)

(assert (=> b!171971 (= e!113494 (getValueByKey!183 (t!7023 lt!85278) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun d!52357 () Bool)

(declare-fun c!30803 () Bool)

(assert (=> d!52357 (= c!30803 (and ((_ is Cons!2209) lt!85278) (= (_1!1625 (h!2826 lt!85278)) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(assert (=> d!52357 (= (getValueByKey!183 lt!85278 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) e!113493)))

(declare-fun b!171972 () Bool)

(assert (=> b!171972 (= e!113494 None!187)))

(declare-fun b!171969 () Bool)

(assert (=> b!171969 (= e!113493 (Some!188 (_2!1625 (h!2826 lt!85278))))))

(assert (= (and d!52357 c!30803) b!171969))

(assert (= (and d!52357 (not c!30803)) b!171970))

(assert (= (and b!171970 c!30804) b!171971))

(assert (= (and b!171970 (not c!30804)) b!171972))

(declare-fun m!200981 () Bool)

(assert (=> b!171971 m!200981))

(assert (=> d!51753 d!52357))

(declare-fun d!52359 () Bool)

(assert (=> d!52359 (= (getValueByKey!183 lt!85278 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) (Some!188 (_2!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun lt!85648 () Unit!5249)

(assert (=> d!52359 (= lt!85648 (choose!932 lt!85278 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun e!113495 () Bool)

(assert (=> d!52359 e!113495))

(declare-fun res!81680 () Bool)

(assert (=> d!52359 (=> (not res!81680) (not e!113495))))

(assert (=> d!52359 (= res!81680 (isStrictlySorted!326 lt!85278))))

(assert (=> d!52359 (= (lemmaContainsTupThenGetReturnValue!98 lt!85278 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) lt!85648)))

(declare-fun b!171973 () Bool)

(declare-fun res!81681 () Bool)

(assert (=> b!171973 (=> (not res!81681) (not e!113495))))

(assert (=> b!171973 (= res!81681 (containsKey!187 lt!85278 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun b!171974 () Bool)

(assert (=> b!171974 (= e!113495 (contains!1145 lt!85278 (tuple2!3231 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(assert (= (and d!52359 res!81680) b!171973))

(assert (= (and b!171973 res!81681) b!171974))

(assert (=> d!52359 m!199539))

(declare-fun m!200983 () Bool)

(assert (=> d!52359 m!200983))

(declare-fun m!200985 () Bool)

(assert (=> d!52359 m!200985))

(declare-fun m!200987 () Bool)

(assert (=> b!171973 m!200987))

(declare-fun m!200989 () Bool)

(assert (=> b!171974 m!200989))

(assert (=> d!51753 d!52359))

(declare-fun b!171975 () Bool)

(declare-fun e!113496 () List!2213)

(declare-fun call!17500 () List!2213)

(assert (=> b!171975 (= e!113496 call!17500)))

(declare-fun b!171976 () Bool)

(declare-fun res!81683 () Bool)

(declare-fun e!113500 () Bool)

(assert (=> b!171976 (=> (not res!81683) (not e!113500))))

(declare-fun lt!85649 () List!2213)

(assert (=> b!171976 (= res!81683 (containsKey!187 lt!85649 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun b!171977 () Bool)

(declare-fun e!113499 () List!2213)

(declare-fun e!113497 () List!2213)

(assert (=> b!171977 (= e!113499 e!113497)))

(declare-fun c!30806 () Bool)

(assert (=> b!171977 (= c!30806 (and ((_ is Cons!2209) (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412)))) (= (_1!1625 (h!2826 (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412))))) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(declare-fun c!30807 () Bool)

(declare-fun b!171978 () Bool)

(declare-fun e!113498 () List!2213)

(assert (=> b!171978 (= e!113498 (ite c!30806 (t!7023 (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412)))) (ite c!30807 (Cons!2209 (h!2826 (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412)))) (t!7023 (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412))))) Nil!2210)))))

(declare-fun b!171979 () Bool)

(assert (=> b!171979 (= e!113500 (contains!1145 lt!85649 (tuple2!3231 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(declare-fun b!171980 () Bool)

(declare-fun call!17499 () List!2213)

(assert (=> b!171980 (= e!113499 call!17499)))

(declare-fun c!30808 () Bool)

(declare-fun bm!17496 () Bool)

(assert (=> bm!17496 (= call!17499 ($colon$colon!96 e!113498 (ite c!30808 (h!2826 (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412)))) (tuple2!3231 (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))))

(declare-fun c!30805 () Bool)

(assert (=> bm!17496 (= c!30805 c!30808)))

(declare-fun bm!17498 () Bool)

(declare-fun call!17501 () List!2213)

(assert (=> bm!17498 (= call!17500 call!17501)))

(declare-fun b!171981 () Bool)

(assert (=> b!171981 (= e!113497 call!17501)))

(declare-fun b!171982 () Bool)

(assert (=> b!171982 (= e!113496 call!17500)))

(declare-fun b!171983 () Bool)

(assert (=> b!171983 (= c!30807 (and ((_ is Cons!2209) (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412)))) (bvsgt (_1!1625 (h!2826 (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412))))) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(assert (=> b!171983 (= e!113497 e!113496)))

(declare-fun b!171984 () Bool)

(assert (=> b!171984 (= e!113498 (insertStrictlySorted!100 (t!7023 (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412)))) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))))))

(declare-fun bm!17497 () Bool)

(assert (=> bm!17497 (= call!17501 call!17499)))

(declare-fun d!52361 () Bool)

(assert (=> d!52361 e!113500))

(declare-fun res!81682 () Bool)

(assert (=> d!52361 (=> (not res!81682) (not e!113500))))

(assert (=> d!52361 (= res!81682 (isStrictlySorted!326 lt!85649))))

(assert (=> d!52361 (= lt!85649 e!113499)))

(assert (=> d!52361 (= c!30808 (and ((_ is Cons!2209) (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412)))) (bvslt (_1!1625 (h!2826 (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412))))) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))))))))

(assert (=> d!52361 (isStrictlySorted!326 (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412))))))

(assert (=> d!52361 (= (insertStrictlySorted!100 (toList!1101 (ite c!30499 call!17409 (ite c!30497 call!17413 call!17412))) (_1!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248)))) (_2!1625 (ite (or c!30499 c!30497) (tuple2!3231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3398 thiss!1248)) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 thiss!1248))))) lt!85649)))

(assert (= (and d!52361 c!30808) b!171980))

(assert (= (and d!52361 (not c!30808)) b!171977))

(assert (= (and b!171977 c!30806) b!171981))

(assert (= (and b!171977 (not c!30806)) b!171983))

(assert (= (and b!171983 c!30807) b!171982))

(assert (= (and b!171983 (not c!30807)) b!171975))

(assert (= (or b!171982 b!171975) bm!17498))

(assert (= (or b!171981 bm!17498) bm!17497))

(assert (= (or b!171980 bm!17497) bm!17496))

(assert (= (and bm!17496 c!30805) b!171984))

(assert (= (and bm!17496 (not c!30805)) b!171978))

(assert (= (and d!52361 res!81682) b!171976))

(assert (= (and b!171976 res!81683) b!171979))

(declare-fun m!200991 () Bool)

(assert (=> b!171976 m!200991))

(declare-fun m!200993 () Bool)

(assert (=> d!52361 m!200993))

(declare-fun m!200995 () Bool)

(assert (=> d!52361 m!200995))

(declare-fun m!200997 () Bool)

(assert (=> b!171984 m!200997))

(declare-fun m!200999 () Bool)

(assert (=> b!171979 m!200999))

(declare-fun m!201001 () Bool)

(assert (=> bm!17496 m!201001))

(assert (=> d!51753 d!52361))

(assert (=> d!51771 d!51717))

(declare-fun d!52363 () Bool)

(assert (=> d!52363 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!85650 () Unit!5249)

(assert (=> d!52363 (= lt!85650 (choose!931 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!113501 () Bool)

(assert (=> d!52363 e!113501))

(declare-fun res!81684 () Bool)

(assert (=> d!52363 (=> (not res!81684) (not e!113501))))

(assert (=> d!52363 (= res!81684 (isStrictlySorted!326 (toList!1101 lt!85152)))))

(assert (=> d!52363 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000) lt!85650)))

(declare-fun b!171985 () Bool)

(assert (=> b!171985 (= e!113501 (containsKey!187 (toList!1101 lt!85152) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!52363 res!81684) b!171985))

(assert (=> d!52363 m!199441))

(assert (=> d!52363 m!199441))

(assert (=> d!52363 m!199443))

(declare-fun m!201003 () Bool)

(assert (=> d!52363 m!201003))

(assert (=> d!52363 m!200465))

(assert (=> b!171985 m!199437))

(assert (=> b!171058 d!52363))

(assert (=> b!171058 d!52033))

(assert (=> b!171058 d!51879))

(declare-fun d!52365 () Bool)

(assert (=> d!52365 (isDefined!137 (getValueByKey!183 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!85651 () Unit!5249)

(assert (=> d!52365 (= lt!85651 (choose!931 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!113502 () Bool)

(assert (=> d!52365 e!113502))

(declare-fun res!81685 () Bool)

(assert (=> d!52365 (=> (not res!81685) (not e!113502))))

(assert (=> d!52365 (= res!81685 (isStrictlySorted!326 (toList!1101 lt!85127)))))

(assert (=> d!52365 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!136 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000) lt!85651)))

(declare-fun b!171986 () Bool)

(assert (=> b!171986 (= e!113502 (containsKey!187 (toList!1101 lt!85127) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!52365 res!81685) b!171986))

(assert (=> d!52365 m!199405))

(assert (=> d!52365 m!199405))

(assert (=> d!52365 m!199407))

(declare-fun m!201005 () Bool)

(assert (=> d!52365 m!201005))

(assert (=> d!52365 m!200061))

(assert (=> b!171986 m!199401))

(assert (=> b!171012 d!52365))

(assert (=> b!171012 d!52035))

(assert (=> b!171012 d!52037))

(declare-fun d!52367 () Bool)

(declare-fun e!113503 () Bool)

(assert (=> d!52367 e!113503))

(declare-fun res!81686 () Bool)

(assert (=> d!52367 (=> (not res!81686) (not e!113503))))

(declare-fun lt!85653 () ListLongMap!2171)

(assert (=> d!52367 (= res!81686 (contains!1143 lt!85653 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067)))))))

(declare-fun lt!85654 () List!2213)

(assert (=> d!52367 (= lt!85653 (ListLongMap!2172 lt!85654))))

(declare-fun lt!85655 () Unit!5249)

(declare-fun lt!85652 () Unit!5249)

(assert (=> d!52367 (= lt!85655 lt!85652)))

(assert (=> d!52367 (= (getValueByKey!183 lt!85654 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067)))) (Some!188 (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067)))))))

(assert (=> d!52367 (= lt!85652 (lemmaContainsTupThenGetReturnValue!98 lt!85654 (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067)))))))

(assert (=> d!52367 (= lt!85654 (insertStrictlySorted!100 (toList!1101 call!17443) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067))) (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067)))))))

(assert (=> d!52367 (= (+!239 call!17443 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067))) lt!85653)))

(declare-fun b!171987 () Bool)

(declare-fun res!81687 () Bool)

(assert (=> b!171987 (=> (not res!81687) (not e!113503))))

(assert (=> b!171987 (= res!81687 (= (getValueByKey!183 (toList!1101 lt!85653) (_1!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067)))) (Some!188 (_2!1625 (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067))))))))

(declare-fun b!171988 () Bool)

(assert (=> b!171988 (= e!113503 (contains!1145 (toList!1101 lt!85653) (tuple2!3231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3398 lt!85067))))))

(assert (= (and d!52367 res!81686) b!171987))

(assert (= (and b!171987 res!81687) b!171988))

(declare-fun m!201007 () Bool)

(assert (=> d!52367 m!201007))

(declare-fun m!201009 () Bool)

(assert (=> d!52367 m!201009))

(declare-fun m!201011 () Bool)

(assert (=> d!52367 m!201011))

(declare-fun m!201013 () Bool)

(assert (=> d!52367 m!201013))

(declare-fun m!201015 () Bool)

(assert (=> b!171987 m!201015))

(declare-fun m!201017 () Bool)

(assert (=> b!171988 m!201017))

(assert (=> b!171221 d!52367))

(declare-fun condMapEmpty!6808 () Bool)

(declare-fun mapDefault!6808 () ValueCell!1659)

(assert (=> mapNonEmpty!6807 (= condMapEmpty!6808 (= mapRest!6807 ((as const (Array (_ BitVec 32) ValueCell!1659)) mapDefault!6808)))))

(declare-fun e!113505 () Bool)

(declare-fun mapRes!6808 () Bool)

(assert (=> mapNonEmpty!6807 (= tp!15339 (and e!113505 mapRes!6808))))

(declare-fun b!171990 () Bool)

(assert (=> b!171990 (= e!113505 tp_is_empty!4005)))

(declare-fun b!171989 () Bool)

(declare-fun e!113504 () Bool)

(assert (=> b!171989 (= e!113504 tp_is_empty!4005)))

(declare-fun mapNonEmpty!6808 () Bool)

(declare-fun tp!15340 () Bool)

(assert (=> mapNonEmpty!6808 (= mapRes!6808 (and tp!15340 e!113504))))

(declare-fun mapRest!6808 () (Array (_ BitVec 32) ValueCell!1659))

(declare-fun mapKey!6808 () (_ BitVec 32))

(declare-fun mapValue!6808 () ValueCell!1659)

(assert (=> mapNonEmpty!6808 (= mapRest!6807 (store mapRest!6808 mapKey!6808 mapValue!6808))))

(declare-fun mapIsEmpty!6808 () Bool)

(assert (=> mapIsEmpty!6808 mapRes!6808))

(assert (= (and mapNonEmpty!6807 condMapEmpty!6808) mapIsEmpty!6808))

(assert (= (and mapNonEmpty!6807 (not condMapEmpty!6808)) mapNonEmpty!6808))

(assert (= (and mapNonEmpty!6808 ((_ is ValueCellFull!1659) mapValue!6808)) b!171989))

(assert (= (and mapNonEmpty!6807 ((_ is ValueCellFull!1659) mapDefault!6808)) b!171990))

(declare-fun m!201019 () Bool)

(assert (=> mapNonEmpty!6808 m!201019))

(declare-fun b_lambda!6955 () Bool)

(assert (= b_lambda!6953 (or (and b!170840 b_free!4233) b_lambda!6955)))

(declare-fun b_lambda!6957 () Bool)

(assert (= b_lambda!6947 (or (and b!170840 b_free!4233) b_lambda!6957)))

(declare-fun b_lambda!6959 () Bool)

(assert (= b_lambda!6933 (or (and b!170840 b_free!4233 (= (defaultEntry!3555 thiss!1248) (defaultEntry!3555 lt!85067))) b_lambda!6959)))

(declare-fun b_lambda!6961 () Bool)

(assert (= b_lambda!6949 (or (and b!170840 b_free!4233) b_lambda!6961)))

(declare-fun b_lambda!6963 () Bool)

(assert (= b_lambda!6951 (or (and b!170840 b_free!4233) b_lambda!6963)))

(check-sat (not d!52105) (not b!171561) (not d!52243) (not b_lambda!6935) (not b!171925) (not b!171391) (not d!51983) (not b_next!4233) (not d!52049) (not bm!17462) (not b!171551) (not d!52005) (not b!171645) (not b!171825) (not b!171598) (not b!171709) (not b!171580) (not b_lambda!6937) (not b!171880) (not b!171751) (not b!171658) (not b!171338) (not b!171793) (not b_lambda!6963) (not d!52087) (not b!171878) (not d!51973) (not d!52291) (not b!171390) (not b_lambda!6961) (not b!171411) (not b!171543) (not b!171393) (not b!171798) (not d!52325) (not b!171827) (not b!171633) (not bm!17468) (not b!171772) (not b!171538) (not b!171830) (not b!171785) (not d!51867) (not b!171773) (not bm!17469) (not d!52029) (not b!171420) (not b!171848) (not b!171753) (not b!171894) (not d!52059) (not b!171404) (not b!171642) (not b!171782) (not b!171401) (not bm!17482) (not b!171738) (not b!171328) (not bm!17451) (not b!171615) (not b!171343) (not b!171928) (not b!171522) (not d!52115) (not b!171893) (not bm!17492) (not b!171532) (not b!171579) (not b!171745) (not b!171862) (not d!52239) (not b!171874) (not b!171663) (not b!171979) (not b!171691) (not d!51993) (not b!171712) (not b_lambda!6923) (not d!51875) (not d!52259) (not b!171885) (not b!171585) (not b!171473) (not d!51929) (not b!171576) (not d!51999) (not b!171372) (not b!171743) (not b!171363) (not d!52091) (not b!171920) (not d!51943) (not b!171553) (not d!52163) (not d!52019) (not d!52361) (not d!52189) (not b!171479) (not d!52015) (not d!52061) (not b!171966) (not b!171478) (not d!52065) (not d!52057) (not b!171866) (not b!171742) (not b!171569) (not d!52277) (not b!171822) (not d!52067) (not d!52023) (not b!171527) (not b!171471) (not b!171710) (not d!51987) (not b!171779) (not b!171610) (not d!51919) (not d!52043) (not b!171383) (not bm!17478) (not b!171360) (not d!51969) (not b!171930) (not b!171669) (not d!52155) (not d!52255) (not b!171853) (not d!52069) (not b!171427) (not b!171533) (not d!52009) (not b!171524) (not b!171922) (not b!171369) (not b!171790) (not b!171481) (not b!171835) (not b!171814) (not b!171535) (not b!171470) (not d!52013) (not d!52165) (not d!52305) (not d!52225) (not d!52135) (not bm!17485) (not b!171371) (not b!171700) (not b!171451) (not b!171305) (not d!52271) (not b!171456) (not d!52311) (not b!171964) (not b!171801) (not b!171722) (not d!51933) (not b!171818) (not b!171725) (not b!171629) (not b!171824) (not bm!17456) (not d!51913) (not b!171311) (not b!171587) (not d!51979) (not b!171622) (not b!171735) (not b!171540) (not d!52237) (not b_lambda!6943) (not b!171931) (not b!171582) (not b!171445) (not b!171856) (not b!171948) (not d!52209) (not b!171974) (not b!171638) (not b!171843) (not b!171442) (not b!171619) (not b!171780) (not b!171677) (not b!171608) (not b!171904) (not bm!17448) (not b!171646) (not b!171951) (not b!171559) (not d!52227) (not b!171877) (not b!171809) (not b!171838) (not b!171805) (not b!171849) (not b!171706) (not b!171681) (not d!52309) (not d!52221) (not b!171435) (not d!52185) (not d!52201) (not b!171861) (not bm!17496) (not b!171425) (not d!52073) (not b!171567) (not b!171441) (not d!52033) (not b_lambda!6957) (not b!171432) (not b!171938) (not d!51921) (not d!52343) (not b!171845) (not d!52301) (not b!171563) (not b!171484) (not b!171851) (not d!52071) (not b!171621) (not d!51977) (not d!52263) (not b!171816) (not d!52245) (not b!171299) (not b!171325) (not d!52217) (not d!52181) (not d!52179) (not b!171730) (not b!171489) (not d!51959) (not b!171467) (not bm!17473) (not b!171976) (not b!171750) (not bm!17472) (not b!171954) (not d!52093) (not d!52027) (not b!171761) (not bm!17455) (not b!171565) (not b_lambda!6939) (not d!52123) (not d!52095) (not d!52333) (not b!171748) (not b!171708) (not b!171857) (not d!52247) (not d!52241) (not d!52265) (not b!171459) (not b!171366) (not d!52249) (not b!171606) (not b!171430) (not b!171896) (not d!52039) (not b!171984) (not b!171890) (not d!52053) (not b!171923) (not b!171955) (not b!171810) (not d!51927) (not b!171986) (not d!52257) (not b!171912) (not b!171374) (not b!171775) (not d!52195) (not d!51925) (not b!171988) (not bm!17459) (not b!171740) (not d!52287) (not b!171887) (not d!52035) (not b!171684) (not b!171820) (not b!171588) (not d!52103) (not d!51907) (not b!171832) (not b!171933) (not b!171546) (not d!52293) (not d!52359) (not d!52219) (not b!171715) (not b!171453) (not b!171855) (not d!52253) (not bm!17454) (not b!171521) (not b!171640) (not b!171907) (not b!171322) (not b!171438) (not d!52121) (not d!52191) (not b!171364) (not b!171448) (not d!52229) (not b!171634) (not b!171901) (not d!52099) (not d!52129) (not b!171868) (not d!52041) (not b!171476) (not b!171946) (not b!171774) (not bm!17477) (not d!52231) (not b!171314) (not d!52355) (not b!171697) (not d!52001) (not b!171664) (not b!171636) (not d!52307) (not b!171833) (not b!171508) (not d!52267) (not b!171604) (not b!171777) (not b!171935) (not b!171884) (not b!171406) (not b!171927) (not b!171869) (not d!52159) (not b!171661) (not b!171355) (not b!171573) (not b!171711) (not b!171331) (not b!171650) (not b!171541) (not b!171417) (not b!171961) (not b!171882) (not d!52119) (not b!171764) (not b!171674) (not b!171883) (not b!171446) (not d!52367) (not d!52213) (not d!52083) (not b!171308) (not b!171566) (not b!171666) (not b!171560) (not b!171694) (not b!171655) (not d!52085) (not b!171918) (not bm!17488) (not d!52147) (not b!171340) (not d!51935) (not d!52157) (not b!171593) (not d!52175) (not b!171957) (not b!171968) (not b!171302) (not d!52177) (not b!171808) (not b!171915) (not b!171846) (not b!171357) (not b_lambda!6959) (not b!171556) (not b!171756) (not d!51991) (not d!52207) (not b_lambda!6955) (not d!51941) b_and!10693 (not b!171899) (not b!171382) (not b!171864) (not b!171985) (not b_lambda!6921) (not d!51965) (not b!171514) (not b!171859) (not d!52007) (not b!171973) (not b!171942) (not d!52137) (not d!52139) (not d!52113) (not b!171349) (not b!171639) (not b!171653) (not d!52365) (not d!52251) (not b!171656) (not d!51871) (not b!171987) (not d!52285) (not b!171316) (not b!171385) (not b!171767) (not b!171519) (not b!171590) (not d!52021) (not bm!17489) (not b!171651) (not d!51963) tp_is_empty!4005 (not b!171971) (not mapNonEmpty!6808) (not b!171727) (not b!171571) (not b!171611) (not d!51967) (not d!52133) (not b!171858) (not b!171516) (not b!171396) (not b!171454) (not b!171388) (not d!52235) (not bm!17465) (not d!52097) (not b!171625) (not b!171613) (not b!171319) (not b!171871) (not b!171685) (not b!171409) (not b!171815) (not d!52269) (not b!171648) (not d!52341) (not b!171464) (not b!171959) (not b!171719) (not b!171812) (not bm!17495) (not b!171433) (not d!52363) (not d!52223) (not b!171902) (not d!52347) (not b!171644) (not b!171495) (not b!171631) (not b!171788) (not b!171347) (not b_lambda!6945) (not b!171724) (not b!171377) (not d!52075) (not d!52233) (not b_lambda!6941) (not b!171617) (not d!52215) (not b!171770) (not d!51909) (not bm!17474) (not d!52127) (not b!171876) (not b!171945) (not bm!17479) (not b!171414) (not d!51955) (not b!171865) (not d!52331) (not b!171422))
(check-sat b_and!10693 (not b_next!4233))
