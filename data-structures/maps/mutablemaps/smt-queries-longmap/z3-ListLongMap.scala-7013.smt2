; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89108 () Bool)

(assert start!89108)

(declare-fun b!1021211 () Bool)

(declare-fun b_free!20133 () Bool)

(declare-fun b_next!20133 () Bool)

(assert (=> b!1021211 (= b_free!20133 (not b_next!20133))))

(declare-fun tp!71428 () Bool)

(declare-fun b_and!32339 () Bool)

(assert (=> b!1021211 (= tp!71428 b_and!32339)))

(declare-fun b!1021210 () Bool)

(declare-fun e!575165 () Bool)

(declare-fun e!575168 () Bool)

(assert (=> b!1021210 (= e!575165 e!575168)))

(declare-fun c!103464 () Bool)

(declare-datatypes ((V!36677 0))(
  ( (V!36678 (val!11977 Int)) )
))
(declare-datatypes ((array!63730 0))(
  ( (array!63731 (arr!30675 (Array (_ BitVec 32) (_ BitVec 64))) (size!31187 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11223 0))(
  ( (ValueCellFull!11223 (v!14542 V!36677)) (EmptyCell!11223) )
))
(declare-datatypes ((array!63732 0))(
  ( (array!63733 (arr!30676 (Array (_ BitVec 32) ValueCell!11223)) (size!31188 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5040 0))(
  ( (LongMapFixedSize!5041 (defaultEntry!5872 Int) (mask!29434 (_ BitVec 32)) (extraKeys!5604 (_ BitVec 32)) (zeroValue!5708 V!36677) (minValue!5708 V!36677) (_size!2575 (_ BitVec 32)) (_keys!11014 array!63730) (_values!5895 array!63732) (_vacant!2575 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15572 0))(
  ( (tuple2!15573 (_1!7796 Bool) (_2!7796 LongMapFixedSize!5040)) )
))
(declare-fun lt!449985 () tuple2!15572)

(assert (=> b!1021210 (= c!103464 (_1!7796 lt!449985))))

(declare-fun tp_is_empty!23853 () Bool)

(declare-fun e!575170 () Bool)

(declare-datatypes ((Cell!1108 0))(
  ( (Cell!1109 (v!14543 LongMapFixedSize!5040)) )
))
(declare-datatypes ((LongMap!1108 0))(
  ( (LongMap!1109 (underlying!565 Cell!1108)) )
))
(declare-fun thiss!908 () LongMap!1108)

(declare-fun e!575169 () Bool)

(declare-fun array_inv!23649 (array!63730) Bool)

(declare-fun array_inv!23650 (array!63732) Bool)

(assert (=> b!1021211 (= e!575170 (and tp!71428 tp_is_empty!23853 (array_inv!23649 (_keys!11014 (v!14543 (underlying!565 thiss!908)))) (array_inv!23650 (_values!5895 (v!14543 (underlying!565 thiss!908)))) e!575169))))

(declare-fun b!1021212 () Bool)

(declare-fun e!575166 () Bool)

(assert (=> b!1021212 (= e!575166 e!575170)))

(declare-datatypes ((tuple2!15574 0))(
  ( (tuple2!15575 (_1!7797 (_ BitVec 64)) (_2!7797 V!36677)) )
))
(declare-datatypes ((List!21765 0))(
  ( (Nil!21762) (Cons!21761 (h!22959 tuple2!15574) (t!30782 List!21765)) )
))
(declare-datatypes ((ListLongMap!13737 0))(
  ( (ListLongMap!13738 (toList!6884 List!21765)) )
))
(declare-fun call!43195 () ListLongMap!13737)

(declare-fun bm!43191 () Bool)

(declare-fun lt!449986 () LongMap!1108)

(declare-fun map!14481 (LongMap!1108) ListLongMap!13737)

(assert (=> bm!43191 (= call!43195 (map!14481 (ite c!103464 thiss!908 lt!449986)))))

(declare-fun mapNonEmpty!37191 () Bool)

(declare-fun mapRes!37191 () Bool)

(declare-fun tp!71429 () Bool)

(declare-fun e!575162 () Bool)

(assert (=> mapNonEmpty!37191 (= mapRes!37191 (and tp!71429 e!575162))))

(declare-fun mapValue!37191 () ValueCell!11223)

(declare-fun mapKey!37191 () (_ BitVec 32))

(declare-fun mapRest!37191 () (Array (_ BitVec 32) ValueCell!11223))

(assert (=> mapNonEmpty!37191 (= (arr!30676 (_values!5895 (v!14543 (underlying!565 thiss!908)))) (store mapRest!37191 mapKey!37191 mapValue!37191))))

(declare-fun b!1021214 () Bool)

(declare-fun e!575167 () Bool)

(assert (=> b!1021214 (= e!575169 (and e!575167 mapRes!37191))))

(declare-fun condMapEmpty!37191 () Bool)

(declare-fun mapDefault!37191 () ValueCell!11223)

(assert (=> b!1021214 (= condMapEmpty!37191 (= (arr!30676 (_values!5895 (v!14543 (underlying!565 thiss!908)))) ((as const (Array (_ BitVec 32) ValueCell!11223)) mapDefault!37191)))))

(declare-fun b!1021215 () Bool)

(assert (=> b!1021215 (= e!575162 tp_is_empty!23853)))

(declare-fun mapIsEmpty!37191 () Bool)

(assert (=> mapIsEmpty!37191 mapRes!37191))

(declare-fun b!1021216 () Bool)

(declare-fun call!43194 () ListLongMap!13737)

(assert (=> b!1021216 (= e!575168 (not (= call!43195 call!43194)))))

(declare-fun bm!43192 () Bool)

(assert (=> bm!43192 (= call!43194 (map!14481 (ite c!103464 lt!449986 thiss!908)))))

(declare-fun b!1021217 () Bool)

(declare-fun e!575164 () Bool)

(assert (=> b!1021217 (= e!575164 e!575165)))

(declare-fun res!684413 () Bool)

(assert (=> b!1021217 (=> res!684413 e!575165)))

(declare-fun valid!1887 (LongMap!1108) Bool)

(assert (=> b!1021217 (= res!684413 (not (valid!1887 lt!449986)))))

(assert (=> b!1021217 (= lt!449986 (LongMap!1109 (Cell!1109 (_2!7796 lt!449985))))))

(declare-fun key!697 () (_ BitVec 64))

(declare-fun remove!8 (LongMapFixedSize!5040 (_ BitVec 64)) tuple2!15572)

(assert (=> b!1021217 (= lt!449985 (remove!8 (v!14543 (underlying!565 thiss!908)) key!697))))

(declare-fun b!1021218 () Bool)

(declare-fun -!460 (ListLongMap!13737 (_ BitVec 64)) ListLongMap!13737)

(assert (=> b!1021218 (= e!575168 (not (= call!43194 (-!460 call!43195 key!697))))))

(declare-fun b!1021219 () Bool)

(assert (=> b!1021219 (= e!575167 tp_is_empty!23853)))

(declare-fun b!1021213 () Bool)

(declare-fun e!575161 () Bool)

(assert (=> b!1021213 (= e!575161 e!575166)))

(declare-fun res!684414 () Bool)

(assert (=> start!89108 (=> (not res!684414) (not e!575164))))

(assert (=> start!89108 (= res!684414 (valid!1887 thiss!908))))

(assert (=> start!89108 e!575164))

(assert (=> start!89108 e!575161))

(assert (=> start!89108 true))

(assert (= (and start!89108 res!684414) b!1021217))

(assert (= (and b!1021217 (not res!684413)) b!1021210))

(assert (= (and b!1021210 c!103464) b!1021218))

(assert (= (and b!1021210 (not c!103464)) b!1021216))

(assert (= (or b!1021218 b!1021216) bm!43192))

(assert (= (or b!1021218 b!1021216) bm!43191))

(assert (= (and b!1021214 condMapEmpty!37191) mapIsEmpty!37191))

(assert (= (and b!1021214 (not condMapEmpty!37191)) mapNonEmpty!37191))

(get-info :version)

(assert (= (and mapNonEmpty!37191 ((_ is ValueCellFull!11223) mapValue!37191)) b!1021215))

(assert (= (and b!1021214 ((_ is ValueCellFull!11223) mapDefault!37191)) b!1021219))

(assert (= b!1021211 b!1021214))

(assert (= b!1021212 b!1021211))

(assert (= b!1021213 b!1021212))

(assert (= start!89108 b!1021213))

(declare-fun m!940919 () Bool)

(assert (=> b!1021217 m!940919))

(declare-fun m!940921 () Bool)

(assert (=> b!1021217 m!940921))

(declare-fun m!940923 () Bool)

(assert (=> start!89108 m!940923))

(declare-fun m!940925 () Bool)

(assert (=> b!1021211 m!940925))

(declare-fun m!940927 () Bool)

(assert (=> b!1021211 m!940927))

(declare-fun m!940929 () Bool)

(assert (=> bm!43192 m!940929))

(declare-fun m!940931 () Bool)

(assert (=> mapNonEmpty!37191 m!940931))

(declare-fun m!940933 () Bool)

(assert (=> bm!43191 m!940933))

(declare-fun m!940935 () Bool)

(assert (=> b!1021218 m!940935))

(check-sat (not mapNonEmpty!37191) (not b_next!20133) tp_is_empty!23853 (not b!1021217) (not b!1021211) (not bm!43191) (not bm!43192) b_and!32339 (not b!1021218) (not start!89108))
(check-sat b_and!32339 (not b_next!20133))
(get-model)

(declare-fun d!122449 () Bool)

(declare-fun map!14483 (LongMapFixedSize!5040) ListLongMap!13737)

(assert (=> d!122449 (= (map!14481 (ite c!103464 thiss!908 lt!449986)) (map!14483 (v!14543 (underlying!565 (ite c!103464 thiss!908 lt!449986)))))))

(declare-fun bs!29761 () Bool)

(assert (= bs!29761 d!122449))

(declare-fun m!940955 () Bool)

(assert (=> bs!29761 m!940955))

(assert (=> bm!43191 d!122449))

(declare-fun d!122451 () Bool)

(assert (=> d!122451 (= (array_inv!23649 (_keys!11014 (v!14543 (underlying!565 thiss!908)))) (bvsge (size!31187 (_keys!11014 (v!14543 (underlying!565 thiss!908)))) #b00000000000000000000000000000000))))

(assert (=> b!1021211 d!122451))

(declare-fun d!122453 () Bool)

(assert (=> d!122453 (= (array_inv!23650 (_values!5895 (v!14543 (underlying!565 thiss!908)))) (bvsge (size!31188 (_values!5895 (v!14543 (underlying!565 thiss!908)))) #b00000000000000000000000000000000))))

(assert (=> b!1021211 d!122453))

(declare-fun d!122455 () Bool)

(declare-fun lt!449995 () ListLongMap!13737)

(declare-fun contains!5954 (ListLongMap!13737 (_ BitVec 64)) Bool)

(assert (=> d!122455 (not (contains!5954 lt!449995 key!697))))

(declare-fun removeStrictlySorted!49 (List!21765 (_ BitVec 64)) List!21765)

(assert (=> d!122455 (= lt!449995 (ListLongMap!13738 (removeStrictlySorted!49 (toList!6884 call!43195) key!697)))))

(assert (=> d!122455 (= (-!460 call!43195 key!697) lt!449995)))

(declare-fun bs!29762 () Bool)

(assert (= bs!29762 d!122455))

(declare-fun m!940957 () Bool)

(assert (=> bs!29762 m!940957))

(declare-fun m!940959 () Bool)

(assert (=> bs!29762 m!940959))

(assert (=> b!1021218 d!122455))

(declare-fun d!122457 () Bool)

(declare-fun valid!1889 (LongMapFixedSize!5040) Bool)

(assert (=> d!122457 (= (valid!1887 lt!449986) (valid!1889 (v!14543 (underlying!565 lt!449986))))))

(declare-fun bs!29763 () Bool)

(assert (= bs!29763 d!122457))

(declare-fun m!940961 () Bool)

(assert (=> bs!29763 m!940961))

(assert (=> b!1021217 d!122457))

(declare-fun b!1021288 () Bool)

(declare-fun e!575227 () ListLongMap!13737)

(declare-fun getCurrentListMap!3892 (array!63730 array!63732 (_ BitVec 32) (_ BitVec 32) V!36677 V!36677 (_ BitVec 32) Int) ListLongMap!13737)

(assert (=> b!1021288 (= e!575227 (getCurrentListMap!3892 (_keys!11014 (v!14543 (underlying!565 thiss!908))) (_values!5895 (v!14543 (underlying!565 thiss!908))) (mask!29434 (v!14543 (underlying!565 thiss!908))) (extraKeys!5604 (v!14543 (underlying!565 thiss!908))) (zeroValue!5708 (v!14543 (underlying!565 thiss!908))) (minValue!5708 (v!14543 (underlying!565 thiss!908))) #b00000000000000000000000000000000 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908)))))))

(declare-fun b!1021289 () Bool)

(declare-fun e!575223 () array!63732)

(assert (=> b!1021289 (= e!575223 (_values!5895 (v!14543 (underlying!565 thiss!908))))))

(declare-fun b!1021290 () Bool)

(declare-fun e!575226 () tuple2!15572)

(assert (=> b!1021290 (= e!575226 (tuple2!15573 false (v!14543 (underlying!565 thiss!908))))))

(declare-fun b!1021291 () Bool)

(declare-fun e!575224 () Bool)

(declare-datatypes ((Unit!33270 0))(
  ( (Unit!33271) )
))
(declare-datatypes ((tuple2!15580 0))(
  ( (tuple2!15581 (_1!7800 Unit!33270) (_2!7800 LongMapFixedSize!5040)) )
))
(declare-fun lt!450060 () tuple2!15580)

(declare-fun arrayContainsKey!0 (array!63730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1021291 (= e!575224 (arrayContainsKey!0 (_keys!11014 (_2!7800 lt!450060)) key!697 #b00000000000000000000000000000000))))

(declare-fun c!103492 () Bool)

(declare-fun call!43220 () ListLongMap!13737)

(declare-fun c!103487 () Bool)

(declare-fun bm!43215 () Bool)

(assert (=> bm!43215 (= call!43220 (-!460 e!575227 (ite c!103487 (ite c!103492 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) key!697)))))

(declare-fun c!103489 () Bool)

(assert (=> bm!43215 (= c!103489 c!103487)))

(declare-fun b!1021292 () Bool)

(declare-fun lt!450057 () Unit!33270)

(declare-fun lt!450080 () Unit!33270)

(assert (=> b!1021292 (= lt!450057 lt!450080)))

(declare-fun call!43218 () ListLongMap!13737)

(declare-fun call!43224 () ListLongMap!13737)

(assert (=> b!1021292 (= call!43218 call!43224)))

(declare-fun lt!450069 () V!36677)

(declare-fun lt!450062 () (_ BitVec 32))

(declare-fun lemmaRemoveZeroKeyThenRemoveKeyFromListMap!1 (array!63730 array!63732 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36677 V!36677 V!36677 Int) Unit!33270)

(assert (=> b!1021292 (= lt!450080 (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!1 (_keys!11014 (v!14543 (underlying!565 thiss!908))) (_values!5895 (v!14543 (underlying!565 thiss!908))) (mask!29434 (v!14543 (underlying!565 thiss!908))) (extraKeys!5604 (v!14543 (underlying!565 thiss!908))) lt!450062 (zeroValue!5708 (v!14543 (underlying!565 thiss!908))) lt!450069 (minValue!5708 (v!14543 (underlying!565 thiss!908))) (defaultEntry!5872 (v!14543 (underlying!565 thiss!908)))))))

(declare-fun dynLambda!1936 (Int (_ BitVec 64)) V!36677)

(assert (=> b!1021292 (= lt!450069 (dynLambda!1936 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1021292 (= lt!450062 (bvand (extraKeys!5604 (v!14543 (underlying!565 thiss!908))) #b00000000000000000000000000000010))))

(declare-fun e!575222 () tuple2!15572)

(assert (=> b!1021292 (= e!575222 (tuple2!15573 true (LongMapFixedSize!5041 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) (mask!29434 (v!14543 (underlying!565 thiss!908))) (bvand (extraKeys!5604 (v!14543 (underlying!565 thiss!908))) #b00000000000000000000000000000010) (dynLambda!1936 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) #b0000000000000000000000000000000000000000000000000000000000000000) (minValue!5708 (v!14543 (underlying!565 thiss!908))) (_size!2575 (v!14543 (underlying!565 thiss!908))) (_keys!11014 (v!14543 (underlying!565 thiss!908))) (_values!5895 (v!14543 (underlying!565 thiss!908))) (_vacant!2575 (v!14543 (underlying!565 thiss!908))))))))

(declare-fun b!1021293 () Bool)

(assert (=> b!1021293 (= e!575224 (ite (= key!697 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5604 (_2!7800 lt!450060)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5604 (_2!7800 lt!450060)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1021294 () Bool)

(declare-fun e!575228 () tuple2!15572)

(assert (=> b!1021294 (= e!575228 e!575222)))

(assert (=> b!1021294 (= c!103492 (= key!697 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1021295 () Bool)

(declare-datatypes ((SeekEntryResult!9575 0))(
  ( (MissingZero!9575 (index!40670 (_ BitVec 32))) (Found!9575 (index!40671 (_ BitVec 32))) (Intermediate!9575 (undefined!10387 Bool) (index!40672 (_ BitVec 32)) (x!90652 (_ BitVec 32))) (Undefined!9575) (MissingVacant!9575 (index!40673 (_ BitVec 32))) )
))
(declare-fun lt!450054 () SeekEntryResult!9575)

(assert (=> b!1021295 (= e!575223 (array!63733 (store (arr!30676 (_values!5895 (v!14543 (underlying!565 thiss!908)))) (index!40671 lt!450054) (ValueCellFull!11223 (dynLambda!1936 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31188 (_values!5895 (v!14543 (underlying!565 thiss!908))))))))

(declare-fun b!1021296 () Bool)

(declare-fun lt!450056 () (_ BitVec 32))

(declare-fun e!575230 () tuple2!15580)

(declare-fun Unit!33272 () Unit!33270)

(assert (=> b!1021296 (= e!575230 (tuple2!15581 Unit!33272 (LongMapFixedSize!5041 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) (mask!29434 (v!14543 (underlying!565 thiss!908))) (extraKeys!5604 (v!14543 (underlying!565 thiss!908))) (zeroValue!5708 (v!14543 (underlying!565 thiss!908))) (minValue!5708 (v!14543 (underlying!565 thiss!908))) (bvsub (_size!2575 (v!14543 (underlying!565 thiss!908))) #b00000000000000000000000000000001) (array!63731 (store (arr!30675 (_keys!11014 (v!14543 (underlying!565 thiss!908)))) (index!40671 lt!450054) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31187 (_keys!11014 (v!14543 (underlying!565 thiss!908))))) (array!63733 (store (arr!30676 (_values!5895 (v!14543 (underlying!565 thiss!908)))) (index!40671 lt!450054) (ValueCellFull!11223 (dynLambda!1936 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31188 (_values!5895 (v!14543 (underlying!565 thiss!908))))) lt!450056)))))

(declare-fun d!122459 () Bool)

(declare-fun e!575221 () Bool)

(assert (=> d!122459 e!575221))

(declare-fun res!684423 () Bool)

(assert (=> d!122459 (=> (not res!684423) (not e!575221))))

(declare-fun lt!450059 () tuple2!15572)

(assert (=> d!122459 (= res!684423 (valid!1889 (_2!7796 lt!450059)))))

(assert (=> d!122459 (= lt!450059 e!575228)))

(assert (=> d!122459 (= c!103487 (= key!697 (bvneg key!697)))))

(assert (=> d!122459 (valid!1889 (v!14543 (underlying!565 thiss!908)))))

(assert (=> d!122459 (= (remove!8 (v!14543 (underlying!565 thiss!908)) key!697) lt!450059)))

(declare-fun bm!43216 () Bool)

(assert (=> bm!43216 (= call!43218 call!43220)))

(declare-fun bm!43217 () Bool)

(declare-fun call!43219 () ListLongMap!13737)

(assert (=> bm!43217 (= call!43219 (map!14483 (_2!7796 lt!450059)))))

(declare-fun b!1021297 () Bool)

(declare-fun e!575229 () Unit!33270)

(declare-fun Unit!33273 () Unit!33270)

(assert (=> b!1021297 (= e!575229 Unit!33273)))

(declare-fun b!1021298 () Bool)

(assert (=> b!1021298 (= e!575228 e!575226)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!63730 (_ BitVec 32)) SeekEntryResult!9575)

(assert (=> b!1021298 (= lt!450054 (seekEntry!0 key!697 (_keys!11014 (v!14543 (underlying!565 thiss!908))) (mask!29434 (v!14543 (underlying!565 thiss!908)))))))

(declare-fun c!103486 () Bool)

(assert (=> b!1021298 (= c!103486 ((_ is Found!9575) lt!450054))))

(declare-fun b!1021299 () Bool)

(declare-fun Unit!33274 () Unit!33270)

(assert (=> b!1021299 (= e!575229 Unit!33274)))

(declare-fun lt!450075 () Unit!33270)

(declare-fun lemmaKeyInListMapIsInArray!348 (array!63730 array!63732 (_ BitVec 32) (_ BitVec 32) V!36677 V!36677 (_ BitVec 64) Int) Unit!33270)

(assert (=> b!1021299 (= lt!450075 (lemmaKeyInListMapIsInArray!348 (_keys!11014 (_2!7800 lt!450060)) (_values!5895 (_2!7800 lt!450060)) (mask!29434 (_2!7800 lt!450060)) (extraKeys!5604 (_2!7800 lt!450060)) (zeroValue!5708 (_2!7800 lt!450060)) (minValue!5708 (_2!7800 lt!450060)) key!697 (defaultEntry!5872 (_2!7800 lt!450060))))))

(declare-fun c!103488 () Bool)

(assert (=> b!1021299 (= c!103488 (and (not (= key!697 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!697 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1021299 e!575224))

(declare-fun lt!450055 () Unit!33270)

(assert (=> b!1021299 (= lt!450055 lt!450075)))

(assert (=> b!1021299 false))

(declare-fun bm!43218 () Bool)

(declare-fun call!43223 () ListLongMap!13737)

(assert (=> bm!43218 (= call!43224 call!43223)))

(declare-fun b!1021300 () Bool)

(declare-fun e!575225 () Bool)

(declare-fun call!43225 () ListLongMap!13737)

(assert (=> b!1021300 (= e!575225 (= call!43219 call!43225))))

(declare-fun b!1021301 () Bool)

(declare-fun lt!450074 () Unit!33270)

(assert (=> b!1021301 (= lt!450074 e!575229)))

(declare-fun c!103491 () Bool)

(declare-fun call!43222 () ListLongMap!13737)

(assert (=> b!1021301 (= c!103491 (contains!5954 call!43222 key!697))))

(assert (=> b!1021301 (= lt!450060 e!575230)))

(declare-fun c!103493 () Bool)

(assert (=> b!1021301 (= c!103493 (bvsgt lt!450056 #b00000000000000000000000000000000))))

(assert (=> b!1021301 (= lt!450056 (bvadd (_vacant!2575 (v!14543 (underlying!565 thiss!908))) #b00000000000000000000000000000001))))

(declare-fun lt!450071 () Unit!33270)

(declare-fun lt!450068 () Unit!33270)

(assert (=> b!1021301 (= lt!450071 lt!450068)))

(assert (=> b!1021301 (= call!43220 call!43223)))

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!1 (array!63730 array!63732 (_ BitVec 32) (_ BitVec 32) V!36677 V!36677 (_ BitVec 32) (_ BitVec 64) Int) Unit!33270)

(assert (=> b!1021301 (= lt!450068 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!1 (_keys!11014 (v!14543 (underlying!565 thiss!908))) (_values!5895 (v!14543 (underlying!565 thiss!908))) (mask!29434 (v!14543 (underlying!565 thiss!908))) (extraKeys!5604 (v!14543 (underlying!565 thiss!908))) (zeroValue!5708 (v!14543 (underlying!565 thiss!908))) (minValue!5708 (v!14543 (underlying!565 thiss!908))) (index!40671 lt!450054) key!697 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908)))))))

(declare-fun lt!450061 () Unit!33270)

(declare-fun lt!450066 () Unit!33270)

(assert (=> b!1021301 (= lt!450061 lt!450066)))

(assert (=> b!1021301 (not (arrayContainsKey!0 (array!63731 (store (arr!30675 (_keys!11014 (v!14543 (underlying!565 thiss!908)))) (index!40671 lt!450054) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31187 (_keys!11014 (v!14543 (underlying!565 thiss!908))))) key!697 #b00000000000000000000000000000000))))

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!63730 (_ BitVec 32) (_ BitVec 64)) Unit!33270)

(assert (=> b!1021301 (= lt!450066 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11014 (v!14543 (underlying!565 thiss!908))) (index!40671 lt!450054) key!697))))

(declare-fun lt!450063 () Unit!33270)

(declare-fun lt!450072 () Unit!33270)

(assert (=> b!1021301 (= lt!450063 lt!450072)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63730 (_ BitVec 32)) Bool)

(assert (=> b!1021301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!63731 (store (arr!30675 (_keys!11014 (v!14543 (underlying!565 thiss!908)))) (index!40671 lt!450054) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31187 (_keys!11014 (v!14543 (underlying!565 thiss!908))))) (mask!29434 (v!14543 (underlying!565 thiss!908))))))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!63730 (_ BitVec 32) (_ BitVec 32)) Unit!33270)

(assert (=> b!1021301 (= lt!450072 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11014 (v!14543 (underlying!565 thiss!908))) (index!40671 lt!450054) (mask!29434 (v!14543 (underlying!565 thiss!908)))))))

(declare-fun lt!450081 () Unit!33270)

(declare-fun lt!450077 () Unit!33270)

(assert (=> b!1021301 (= lt!450081 lt!450077)))

(declare-datatypes ((List!21767 0))(
  ( (Nil!21764) (Cons!21763 (h!22961 (_ BitVec 64)) (t!30788 List!21767)) )
))
(declare-fun lt!450073 () List!21767)

(declare-fun lt!450070 () (_ BitVec 32))

(declare-fun lt!450065 () (_ BitVec 64))

(declare-fun arrayNoDuplicates!0 (array!63730 (_ BitVec 32) List!21767) Bool)

(assert (=> b!1021301 (arrayNoDuplicates!0 (array!63731 (store (arr!30675 (_keys!11014 (v!14543 (underlying!565 thiss!908)))) (index!40671 lt!450054) lt!450065) (size!31187 (_keys!11014 (v!14543 (underlying!565 thiss!908))))) lt!450070 lt!450073)))

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!63730 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21767) Unit!33270)

(assert (=> b!1021301 (= lt!450077 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11014 (v!14543 (underlying!565 thiss!908))) lt!450065 (index!40671 lt!450054) lt!450070 lt!450073))))

(assert (=> b!1021301 (= lt!450073 Nil!21764)))

(assert (=> b!1021301 (= lt!450070 #b00000000000000000000000000000000)))

(assert (=> b!1021301 (= lt!450065 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!450078 () Unit!33270)

(declare-fun lt!450082 () Unit!33270)

(assert (=> b!1021301 (= lt!450078 lt!450082)))

(declare-fun lt!450064 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!63730 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1021301 (= (arrayCountValidKeys!0 (array!63731 (store (arr!30675 (_keys!11014 (v!14543 (underlying!565 thiss!908)))) (index!40671 lt!450054) lt!450064) (size!31187 (_keys!11014 (v!14543 (underlying!565 thiss!908))))) #b00000000000000000000000000000000 (size!31187 (_keys!11014 (v!14543 (underlying!565 thiss!908))))) (bvsub (arrayCountValidKeys!0 (_keys!11014 (v!14543 (underlying!565 thiss!908))) #b00000000000000000000000000000000 (size!31187 (_keys!11014 (v!14543 (underlying!565 thiss!908))))) #b00000000000000000000000000000001))))

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!63730 (_ BitVec 32) (_ BitVec 64)) Unit!33270)

(assert (=> b!1021301 (= lt!450082 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11014 (v!14543 (underlying!565 thiss!908))) (index!40671 lt!450054) lt!450064))))

(assert (=> b!1021301 (= lt!450064 #b1000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1021301 (= e!575226 (tuple2!15573 true (_2!7800 lt!450060)))))

(declare-fun b!1021302 () Bool)

(declare-fun lt!450076 () Unit!33270)

(declare-fun lt!450079 () Unit!33270)

(assert (=> b!1021302 (= lt!450076 lt!450079)))

(declare-fun call!43221 () ListLongMap!13737)

(assert (=> b!1021302 (= call!43218 call!43221)))

(declare-fun lt!450058 () V!36677)

(declare-fun lt!450067 () (_ BitVec 32))

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!1 (array!63730 array!63732 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36677 V!36677 V!36677 Int) Unit!33270)

(assert (=> b!1021302 (= lt!450079 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!1 (_keys!11014 (v!14543 (underlying!565 thiss!908))) (_values!5895 (v!14543 (underlying!565 thiss!908))) (mask!29434 (v!14543 (underlying!565 thiss!908))) (extraKeys!5604 (v!14543 (underlying!565 thiss!908))) lt!450067 (zeroValue!5708 (v!14543 (underlying!565 thiss!908))) (minValue!5708 (v!14543 (underlying!565 thiss!908))) lt!450058 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908)))))))

(assert (=> b!1021302 (= lt!450058 (dynLambda!1936 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1021302 (= lt!450067 (bvand (extraKeys!5604 (v!14543 (underlying!565 thiss!908))) #b00000000000000000000000000000001))))

(assert (=> b!1021302 (= e!575222 (tuple2!15573 true (LongMapFixedSize!5041 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) (mask!29434 (v!14543 (underlying!565 thiss!908))) (bvand (extraKeys!5604 (v!14543 (underlying!565 thiss!908))) #b00000000000000000000000000000001) (zeroValue!5708 (v!14543 (underlying!565 thiss!908))) (dynLambda!1936 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) #b1000000000000000000000000000000000000000000000000000000000000000) (_size!2575 (v!14543 (underlying!565 thiss!908))) (_keys!11014 (v!14543 (underlying!565 thiss!908))) (_values!5895 (v!14543 (underlying!565 thiss!908))) (_vacant!2575 (v!14543 (underlying!565 thiss!908))))))))

(declare-fun b!1021303 () Bool)

(assert (=> b!1021303 (= e!575225 (= call!43219 (-!460 call!43225 key!697)))))

(declare-fun b!1021304 () Bool)

(declare-fun Unit!33275 () Unit!33270)

(assert (=> b!1021304 (= e!575230 (tuple2!15581 Unit!33275 (LongMapFixedSize!5041 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) (mask!29434 (v!14543 (underlying!565 thiss!908))) (extraKeys!5604 (v!14543 (underlying!565 thiss!908))) (zeroValue!5708 (v!14543 (underlying!565 thiss!908))) (minValue!5708 (v!14543 (underlying!565 thiss!908))) (bvsub (_size!2575 (v!14543 (underlying!565 thiss!908))) #b00000000000000000000000000000001) (array!63731 (store (arr!30675 (_keys!11014 (v!14543 (underlying!565 thiss!908)))) (index!40671 lt!450054) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31187 (_keys!11014 (v!14543 (underlying!565 thiss!908))))) (array!63733 (store (arr!30676 (_values!5895 (v!14543 (underlying!565 thiss!908)))) (index!40671 lt!450054) (ValueCellFull!11223 (dynLambda!1936 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31188 (_values!5895 (v!14543 (underlying!565 thiss!908))))) (_vacant!2575 (v!14543 (underlying!565 thiss!908))))))))

(declare-fun b!1021305 () Bool)

(assert (=> b!1021305 (= e!575221 e!575225)))

(declare-fun c!103494 () Bool)

(assert (=> b!1021305 (= c!103494 (_1!7796 lt!450059))))

(declare-fun bm!43219 () Bool)

(assert (=> bm!43219 (= call!43223 (getCurrentListMap!3892 (ite c!103487 (_keys!11014 (v!14543 (underlying!565 thiss!908))) (array!63731 (store (arr!30675 (_keys!11014 (v!14543 (underlying!565 thiss!908)))) (index!40671 lt!450054) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31187 (_keys!11014 (v!14543 (underlying!565 thiss!908)))))) e!575223 (mask!29434 (v!14543 (underlying!565 thiss!908))) (ite (and c!103487 c!103492) lt!450062 (extraKeys!5604 (v!14543 (underlying!565 thiss!908)))) (ite (and c!103487 c!103492) lt!450069 (zeroValue!5708 (v!14543 (underlying!565 thiss!908)))) (minValue!5708 (v!14543 (underlying!565 thiss!908))) #b00000000000000000000000000000000 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908)))))))

(declare-fun c!103490 () Bool)

(assert (=> bm!43219 (= c!103490 c!103487)))

(declare-fun bm!43220 () Bool)

(assert (=> bm!43220 (= call!43221 call!43222)))

(declare-fun bm!43221 () Bool)

(assert (=> bm!43221 (= call!43222 (getCurrentListMap!3892 (ite c!103487 (_keys!11014 (v!14543 (underlying!565 thiss!908))) (_keys!11014 (_2!7800 lt!450060))) (ite c!103487 (_values!5895 (v!14543 (underlying!565 thiss!908))) (_values!5895 (_2!7800 lt!450060))) (ite c!103487 (mask!29434 (v!14543 (underlying!565 thiss!908))) (mask!29434 (_2!7800 lt!450060))) (ite c!103487 (ite c!103492 (extraKeys!5604 (v!14543 (underlying!565 thiss!908))) lt!450067) (extraKeys!5604 (_2!7800 lt!450060))) (ite c!103487 (zeroValue!5708 (v!14543 (underlying!565 thiss!908))) (zeroValue!5708 (_2!7800 lt!450060))) (ite c!103487 (ite c!103492 (minValue!5708 (v!14543 (underlying!565 thiss!908))) lt!450058) (minValue!5708 (_2!7800 lt!450060))) #b00000000000000000000000000000000 (ite c!103487 (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) (defaultEntry!5872 (_2!7800 lt!450060)))))))

(declare-fun bm!43222 () Bool)

(assert (=> bm!43222 (= call!43225 (map!14483 (v!14543 (underlying!565 thiss!908))))))

(declare-fun b!1021306 () Bool)

(assert (=> b!1021306 (= e!575227 (ite c!103492 call!43221 call!43224))))

(assert (= (and d!122459 c!103487) b!1021294))

(assert (= (and d!122459 (not c!103487)) b!1021298))

(assert (= (and b!1021294 c!103492) b!1021292))

(assert (= (and b!1021294 (not c!103492)) b!1021302))

(assert (= (or b!1021292 b!1021302) bm!43218))

(assert (= (or b!1021292 b!1021302) bm!43220))

(assert (= (or b!1021292 b!1021302) bm!43216))

(assert (= (and b!1021298 c!103486) b!1021301))

(assert (= (and b!1021298 (not c!103486)) b!1021290))

(assert (= (and b!1021301 c!103493) b!1021296))

(assert (= (and b!1021301 (not c!103493)) b!1021304))

(assert (= (and b!1021301 c!103491) b!1021299))

(assert (= (and b!1021301 (not c!103491)) b!1021297))

(assert (= (and b!1021299 c!103488) b!1021291))

(assert (= (and b!1021299 (not c!103488)) b!1021293))

(assert (= (or bm!43220 b!1021301) bm!43221))

(assert (= (or bm!43218 b!1021301) bm!43219))

(assert (= (and bm!43219 c!103490) b!1021289))

(assert (= (and bm!43219 (not c!103490)) b!1021295))

(assert (= (or bm!43216 b!1021301) bm!43215))

(assert (= (and bm!43215 c!103489) b!1021306))

(assert (= (and bm!43215 (not c!103489)) b!1021288))

(assert (= (and d!122459 res!684423) b!1021305))

(assert (= (and b!1021305 c!103494) b!1021303))

(assert (= (and b!1021305 (not c!103494)) b!1021300))

(assert (= (or b!1021303 b!1021300) bm!43217))

(assert (= (or b!1021303 b!1021300) bm!43222))

(declare-fun b_lambda!15681 () Bool)

(assert (=> (not b_lambda!15681) (not b!1021302)))

(declare-fun t!30785 () Bool)

(declare-fun tb!6843 () Bool)

(assert (=> (and b!1021211 (= (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) (defaultEntry!5872 (v!14543 (underlying!565 thiss!908)))) t!30785) tb!6843))

(declare-fun result!13985 () Bool)

(assert (=> tb!6843 (= result!13985 tp_is_empty!23853)))

(assert (=> b!1021302 t!30785))

(declare-fun b_and!32343 () Bool)

(assert (= b_and!32339 (and (=> t!30785 result!13985) b_and!32343)))

(declare-fun b_lambda!15683 () Bool)

(assert (=> (not b_lambda!15683) (not b!1021292)))

(declare-fun t!30787 () Bool)

(declare-fun tb!6845 () Bool)

(assert (=> (and b!1021211 (= (defaultEntry!5872 (v!14543 (underlying!565 thiss!908))) (defaultEntry!5872 (v!14543 (underlying!565 thiss!908)))) t!30787) tb!6845))

(declare-fun result!13989 () Bool)

(assert (=> tb!6845 (= result!13989 tp_is_empty!23853)))

(assert (=> b!1021292 t!30787))

(declare-fun b_and!32345 () Bool)

(assert (= b_and!32343 (and (=> t!30787 result!13989) b_and!32345)))

(declare-fun b_lambda!15685 () Bool)

(assert (=> (not b_lambda!15685) (not b!1021296)))

(assert (=> b!1021296 t!30787))

(declare-fun b_and!32347 () Bool)

(assert (= b_and!32345 (and (=> t!30787 result!13989) b_and!32347)))

(declare-fun b_lambda!15687 () Bool)

(assert (=> (not b_lambda!15687) (not b!1021295)))

(assert (=> b!1021295 t!30787))

(declare-fun b_and!32349 () Bool)

(assert (= b_and!32347 (and (=> t!30787 result!13989) b_and!32349)))

(declare-fun b_lambda!15689 () Bool)

(assert (=> (not b_lambda!15689) (not b!1021304)))

(assert (=> b!1021304 t!30787))

(declare-fun b_and!32351 () Bool)

(assert (= b_and!32349 (and (=> t!30787 result!13989) b_and!32351)))

(declare-fun m!940963 () Bool)

(assert (=> b!1021288 m!940963))

(declare-fun m!940965 () Bool)

(assert (=> b!1021296 m!940965))

(declare-fun m!940967 () Bool)

(assert (=> b!1021296 m!940967))

(declare-fun m!940969 () Bool)

(assert (=> b!1021296 m!940969))

(declare-fun m!940971 () Bool)

(assert (=> bm!43215 m!940971))

(declare-fun m!940973 () Bool)

(assert (=> bm!43222 m!940973))

(declare-fun m!940975 () Bool)

(assert (=> b!1021291 m!940975))

(declare-fun m!940977 () Bool)

(assert (=> bm!43221 m!940977))

(declare-fun m!940979 () Bool)

(assert (=> b!1021302 m!940979))

(declare-fun m!940981 () Bool)

(assert (=> b!1021302 m!940981))

(declare-fun m!940983 () Bool)

(assert (=> b!1021303 m!940983))

(declare-fun m!940985 () Bool)

(assert (=> d!122459 m!940985))

(declare-fun m!940987 () Bool)

(assert (=> d!122459 m!940987))

(declare-fun m!940989 () Bool)

(assert (=> bm!43217 m!940989))

(declare-fun m!940991 () Bool)

(assert (=> b!1021301 m!940991))

(declare-fun m!940993 () Bool)

(assert (=> b!1021301 m!940993))

(declare-fun m!940995 () Bool)

(assert (=> b!1021301 m!940995))

(declare-fun m!940997 () Bool)

(assert (=> b!1021301 m!940997))

(declare-fun m!940999 () Bool)

(assert (=> b!1021301 m!940999))

(declare-fun m!941001 () Bool)

(assert (=> b!1021301 m!941001))

(declare-fun m!941003 () Bool)

(assert (=> b!1021301 m!941003))

(declare-fun m!941005 () Bool)

(assert (=> b!1021301 m!941005))

(declare-fun m!941007 () Bool)

(assert (=> b!1021301 m!941007))

(declare-fun m!941009 () Bool)

(assert (=> b!1021301 m!941009))

(declare-fun m!941011 () Bool)

(assert (=> b!1021301 m!941011))

(declare-fun m!941013 () Bool)

(assert (=> b!1021301 m!941013))

(declare-fun m!941015 () Bool)

(assert (=> b!1021301 m!941015))

(assert (=> b!1021301 m!940965))

(assert (=> bm!43219 m!940965))

(declare-fun m!941017 () Bool)

(assert (=> bm!43219 m!941017))

(declare-fun m!941019 () Bool)

(assert (=> b!1021299 m!941019))

(declare-fun m!941021 () Bool)

(assert (=> b!1021298 m!941021))

(assert (=> b!1021304 m!940965))

(assert (=> b!1021304 m!940967))

(assert (=> b!1021304 m!940969))

(assert (=> b!1021295 m!940967))

(assert (=> b!1021295 m!940969))

(declare-fun m!941023 () Bool)

(assert (=> b!1021292 m!941023))

(assert (=> b!1021292 m!940967))

(assert (=> b!1021217 d!122459))

(declare-fun d!122461 () Bool)

(assert (=> d!122461 (= (valid!1887 thiss!908) (valid!1889 (v!14543 (underlying!565 thiss!908))))))

(declare-fun bs!29764 () Bool)

(assert (= bs!29764 d!122461))

(assert (=> bs!29764 m!940987))

(assert (=> start!89108 d!122461))

(declare-fun d!122463 () Bool)

(assert (=> d!122463 (= (map!14481 (ite c!103464 lt!449986 thiss!908)) (map!14483 (v!14543 (underlying!565 (ite c!103464 lt!449986 thiss!908)))))))

(declare-fun bs!29765 () Bool)

(assert (= bs!29765 d!122463))

(declare-fun m!941025 () Bool)

(assert (=> bs!29765 m!941025))

(assert (=> bm!43192 d!122463))

(declare-fun mapIsEmpty!37197 () Bool)

(declare-fun mapRes!37197 () Bool)

(assert (=> mapIsEmpty!37197 mapRes!37197))

(declare-fun b!1021315 () Bool)

(declare-fun e!575236 () Bool)

(assert (=> b!1021315 (= e!575236 tp_is_empty!23853)))

(declare-fun condMapEmpty!37197 () Bool)

(declare-fun mapDefault!37197 () ValueCell!11223)

(assert (=> mapNonEmpty!37191 (= condMapEmpty!37197 (= mapRest!37191 ((as const (Array (_ BitVec 32) ValueCell!11223)) mapDefault!37197)))))

(declare-fun e!575235 () Bool)

(assert (=> mapNonEmpty!37191 (= tp!71429 (and e!575235 mapRes!37197))))

(declare-fun b!1021316 () Bool)

(assert (=> b!1021316 (= e!575235 tp_is_empty!23853)))

(declare-fun mapNonEmpty!37197 () Bool)

(declare-fun tp!71438 () Bool)

(assert (=> mapNonEmpty!37197 (= mapRes!37197 (and tp!71438 e!575236))))

(declare-fun mapKey!37197 () (_ BitVec 32))

(declare-fun mapRest!37197 () (Array (_ BitVec 32) ValueCell!11223))

(declare-fun mapValue!37197 () ValueCell!11223)

(assert (=> mapNonEmpty!37197 (= mapRest!37191 (store mapRest!37197 mapKey!37197 mapValue!37197))))

(assert (= (and mapNonEmpty!37191 condMapEmpty!37197) mapIsEmpty!37197))

(assert (= (and mapNonEmpty!37191 (not condMapEmpty!37197)) mapNonEmpty!37197))

(assert (= (and mapNonEmpty!37197 ((_ is ValueCellFull!11223) mapValue!37197)) b!1021315))

(assert (= (and mapNonEmpty!37191 ((_ is ValueCellFull!11223) mapDefault!37197)) b!1021316))

(declare-fun m!941027 () Bool)

(assert (=> mapNonEmpty!37197 m!941027))

(declare-fun b_lambda!15691 () Bool)

(assert (= b_lambda!15689 (or (and b!1021211 b_free!20133) b_lambda!15691)))

(declare-fun b_lambda!15693 () Bool)

(assert (= b_lambda!15687 (or (and b!1021211 b_free!20133) b_lambda!15693)))

(declare-fun b_lambda!15695 () Bool)

(assert (= b_lambda!15683 (or (and b!1021211 b_free!20133) b_lambda!15695)))

(declare-fun b_lambda!15697 () Bool)

(assert (= b_lambda!15685 (or (and b!1021211 b_free!20133) b_lambda!15697)))

(declare-fun b_lambda!15699 () Bool)

(assert (= b_lambda!15681 (or (and b!1021211 b_free!20133) b_lambda!15699)))

(check-sat (not mapNonEmpty!37197) (not b_lambda!15691) (not b!1021302) (not b!1021298) (not b_lambda!15697) (not d!122463) (not b_lambda!15693) (not b!1021291) (not b!1021292) (not bm!43215) (not b!1021288) (not b_lambda!15699) (not d!122459) (not b!1021301) (not d!122449) (not b!1021299) (not d!122455) (not b_next!20133) tp_is_empty!23853 (not bm!43222) (not b!1021303) (not d!122457) (not bm!43219) b_and!32351 (not bm!43221) (not b_lambda!15695) (not d!122461) (not bm!43217))
(check-sat b_and!32351 (not b_next!20133))
