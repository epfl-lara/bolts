; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14110 () Bool)

(assert start!14110)

(declare-fun b!130948 () Bool)

(declare-fun b_free!2897 () Bool)

(declare-fun b_next!2897 () Bool)

(assert (=> b!130948 (= b_free!2897 (not b_next!2897))))

(declare-fun tp!11121 () Bool)

(declare-fun b_and!8129 () Bool)

(assert (=> b!130948 (= tp!11121 b_and!8129)))

(declare-fun b!130955 () Bool)

(declare-fun b_free!2899 () Bool)

(declare-fun b_next!2899 () Bool)

(assert (=> b!130955 (= b_free!2899 (not b_next!2899))))

(declare-fun tp!11124 () Bool)

(declare-fun b_and!8131 () Bool)

(assert (=> b!130955 (= tp!11124 b_and!8131)))

(declare-fun b!130945 () Bool)

(declare-fun e!85432 () Bool)

(declare-fun e!85434 () Bool)

(assert (=> b!130945 (= e!85432 e!85434)))

(declare-fun res!63124 () Bool)

(assert (=> b!130945 (=> (not res!63124) (not e!85434))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3467 0))(
  ( (V!3468 (val!1477 Int)) )
))
(declare-datatypes ((tuple2!2596 0))(
  ( (tuple2!2597 (_1!1308 (_ BitVec 64)) (_2!1308 V!3467)) )
))
(declare-datatypes ((List!1730 0))(
  ( (Nil!1727) (Cons!1726 (h!2331 tuple2!2596) (t!6161 List!1730)) )
))
(declare-datatypes ((ListLongMap!1701 0))(
  ( (ListLongMap!1702 (toList!866 List!1730)) )
))
(declare-fun lt!68158 () ListLongMap!1701)

(declare-datatypes ((array!4752 0))(
  ( (array!4753 (arr!2248 (Array (_ BitVec 32) (_ BitVec 64))) (size!2515 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1089 0))(
  ( (ValueCellFull!1089 (v!3174 V!3467)) (EmptyCell!1089) )
))
(declare-datatypes ((array!4754 0))(
  ( (array!4755 (arr!2249 (Array (_ BitVec 32) ValueCell!1089)) (size!2516 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1086 0))(
  ( (LongMapFixedSize!1087 (defaultEntry!2843 Int) (mask!7131 (_ BitVec 32)) (extraKeys!2612 (_ BitVec 32)) (zeroValue!2700 V!3467) (minValue!2700 V!3467) (_size!592 (_ BitVec 32)) (_keys!4588 array!4752) (_values!2826 array!4754) (_vacant!592 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!876 0))(
  ( (Cell!877 (v!3175 LongMapFixedSize!1086)) )
))
(declare-datatypes ((LongMap!876 0))(
  ( (LongMap!877 (underlying!449 Cell!876)) )
))
(declare-fun thiss!992 () LongMap!876)

(declare-fun contains!889 (ListLongMap!1701 (_ BitVec 64)) Bool)

(assert (=> b!130945 (= res!63124 (contains!889 lt!68158 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!1086)

(declare-datatypes ((tuple2!2598 0))(
  ( (tuple2!2599 (_1!1309 Bool) (_2!1309 LongMapFixedSize!1086)) )
))
(declare-fun lt!68160 () tuple2!2598)

(declare-fun update!189 (LongMapFixedSize!1086 (_ BitVec 64) V!3467) tuple2!2598)

(declare-fun get!1475 (ValueCell!1089 V!3467) V!3467)

(declare-fun dynLambda!422 (Int (_ BitVec 64)) V!3467)

(assert (=> b!130945 (= lt!68160 (update!189 newMap!16 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!130946 () Bool)

(declare-fun e!85431 () Bool)

(declare-fun e!85425 () Bool)

(declare-fun mapRes!4596 () Bool)

(assert (=> b!130946 (= e!85431 (and e!85425 mapRes!4596))))

(declare-fun condMapEmpty!4595 () Bool)

(declare-fun mapDefault!4596 () ValueCell!1089)

(assert (=> b!130946 (= condMapEmpty!4595 (= (arr!2249 (_values!2826 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1089)) mapDefault!4596)))))

(declare-fun tp_is_empty!2865 () Bool)

(declare-fun e!85433 () Bool)

(declare-fun e!85430 () Bool)

(declare-fun array_inv!1381 (array!4752) Bool)

(declare-fun array_inv!1382 (array!4754) Bool)

(assert (=> b!130948 (= e!85430 (and tp!11121 tp_is_empty!2865 (array_inv!1381 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (array_inv!1382 (_values!2826 (v!3175 (underlying!449 thiss!992)))) e!85433))))

(declare-fun b!130949 () Bool)

(declare-fun res!63123 () Bool)

(declare-fun e!85427 () Bool)

(assert (=> b!130949 (=> (not res!63123) (not e!85427))))

(assert (=> b!130949 (= res!63123 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992)))))))))

(declare-fun b!130950 () Bool)

(declare-fun res!63125 () Bool)

(assert (=> b!130950 (=> (not res!63125) (not e!85434))))

(assert (=> b!130950 (= res!63125 (and (= (size!2516 (_values!2826 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!7131 (v!3175 (underlying!449 thiss!992))))) (= (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (size!2516 (_values!2826 (v!3175 (underlying!449 thiss!992))))) (bvsge (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!130951 () Bool)

(declare-fun e!85426 () Bool)

(declare-fun e!85437 () Bool)

(assert (=> b!130951 (= e!85426 e!85437)))

(declare-fun b!130952 () Bool)

(assert (=> b!130952 (= e!85425 tp_is_empty!2865)))

(declare-fun b!130953 () Bool)

(assert (=> b!130953 (= e!85427 e!85432)))

(declare-fun res!63121 () Bool)

(assert (=> b!130953 (=> (not res!63121) (not e!85432))))

(declare-fun lt!68159 () ListLongMap!1701)

(assert (=> b!130953 (= res!63121 (and (= lt!68159 lt!68158) (not (= (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1398 (LongMapFixedSize!1086) ListLongMap!1701)

(assert (=> b!130953 (= lt!68158 (map!1398 newMap!16))))

(declare-fun getCurrentListMap!537 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 (_ BitVec 32) Int) ListLongMap!1701)

(assert (=> b!130953 (= lt!68159 (getCurrentListMap!537 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (_values!2826 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992))) (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) (minValue!2700 (v!3175 (underlying!449 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun mapIsEmpty!4595 () Bool)

(declare-fun mapRes!4595 () Bool)

(assert (=> mapIsEmpty!4595 mapRes!4595))

(declare-fun b!130954 () Bool)

(declare-fun res!63122 () Bool)

(assert (=> b!130954 (=> (not res!63122) (not e!85427))))

(assert (=> b!130954 (= res!63122 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7131 newMap!16)) (_size!592 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun mapIsEmpty!4596 () Bool)

(assert (=> mapIsEmpty!4596 mapRes!4596))

(declare-fun e!85424 () Bool)

(assert (=> b!130955 (= e!85424 (and tp!11124 tp_is_empty!2865 (array_inv!1381 (_keys!4588 newMap!16)) (array_inv!1382 (_values!2826 newMap!16)) e!85431))))

(declare-fun b!130956 () Bool)

(declare-fun e!85435 () Bool)

(assert (=> b!130956 (= e!85433 (and e!85435 mapRes!4595))))

(declare-fun condMapEmpty!4596 () Bool)

(declare-fun mapDefault!4595 () ValueCell!1089)

(assert (=> b!130956 (= condMapEmpty!4596 (= (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1089)) mapDefault!4595)))))

(declare-fun b!130957 () Bool)

(assert (=> b!130957 (= e!85435 tp_is_empty!2865)))

(declare-fun res!63120 () Bool)

(assert (=> start!14110 (=> (not res!63120) (not e!85427))))

(declare-fun valid!514 (LongMap!876) Bool)

(assert (=> start!14110 (= res!63120 (valid!514 thiss!992))))

(assert (=> start!14110 e!85427))

(assert (=> start!14110 e!85426))

(assert (=> start!14110 true))

(assert (=> start!14110 e!85424))

(declare-fun b!130947 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4752 (_ BitVec 32)) Bool)

(assert (=> b!130947 (= e!85434 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992))))))))

(declare-fun mapNonEmpty!4595 () Bool)

(declare-fun tp!11122 () Bool)

(declare-fun e!85436 () Bool)

(assert (=> mapNonEmpty!4595 (= mapRes!4595 (and tp!11122 e!85436))))

(declare-fun mapKey!4596 () (_ BitVec 32))

(declare-fun mapValue!4595 () ValueCell!1089)

(declare-fun mapRest!4596 () (Array (_ BitVec 32) ValueCell!1089))

(assert (=> mapNonEmpty!4595 (= (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) (store mapRest!4596 mapKey!4596 mapValue!4595))))

(declare-fun b!130958 () Bool)

(declare-fun e!85423 () Bool)

(assert (=> b!130958 (= e!85423 tp_is_empty!2865)))

(declare-fun mapNonEmpty!4596 () Bool)

(declare-fun tp!11123 () Bool)

(assert (=> mapNonEmpty!4596 (= mapRes!4596 (and tp!11123 e!85423))))

(declare-fun mapRest!4595 () (Array (_ BitVec 32) ValueCell!1089))

(declare-fun mapKey!4595 () (_ BitVec 32))

(declare-fun mapValue!4596 () ValueCell!1089)

(assert (=> mapNonEmpty!4596 (= (arr!2249 (_values!2826 newMap!16)) (store mapRest!4595 mapKey!4595 mapValue!4596))))

(declare-fun b!130959 () Bool)

(declare-fun res!63119 () Bool)

(assert (=> b!130959 (=> (not res!63119) (not e!85427))))

(declare-fun valid!515 (LongMapFixedSize!1086) Bool)

(assert (=> b!130959 (= res!63119 (valid!515 newMap!16))))

(declare-fun b!130960 () Bool)

(declare-fun res!63126 () Bool)

(assert (=> b!130960 (=> (not res!63126) (not e!85434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!130960 (= res!63126 (validMask!0 (mask!7131 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun b!130961 () Bool)

(assert (=> b!130961 (= e!85437 e!85430)))

(declare-fun b!130962 () Bool)

(assert (=> b!130962 (= e!85436 tp_is_empty!2865)))

(assert (= (and start!14110 res!63120) b!130949))

(assert (= (and b!130949 res!63123) b!130959))

(assert (= (and b!130959 res!63119) b!130954))

(assert (= (and b!130954 res!63122) b!130953))

(assert (= (and b!130953 res!63121) b!130945))

(assert (= (and b!130945 res!63124) b!130960))

(assert (= (and b!130960 res!63126) b!130950))

(assert (= (and b!130950 res!63125) b!130947))

(assert (= (and b!130956 condMapEmpty!4596) mapIsEmpty!4595))

(assert (= (and b!130956 (not condMapEmpty!4596)) mapNonEmpty!4595))

(get-info :version)

(assert (= (and mapNonEmpty!4595 ((_ is ValueCellFull!1089) mapValue!4595)) b!130962))

(assert (= (and b!130956 ((_ is ValueCellFull!1089) mapDefault!4595)) b!130957))

(assert (= b!130948 b!130956))

(assert (= b!130961 b!130948))

(assert (= b!130951 b!130961))

(assert (= start!14110 b!130951))

(assert (= (and b!130946 condMapEmpty!4595) mapIsEmpty!4596))

(assert (= (and b!130946 (not condMapEmpty!4595)) mapNonEmpty!4596))

(assert (= (and mapNonEmpty!4596 ((_ is ValueCellFull!1089) mapValue!4596)) b!130958))

(assert (= (and b!130946 ((_ is ValueCellFull!1089) mapDefault!4596)) b!130952))

(assert (= b!130955 b!130946))

(assert (= start!14110 b!130955))

(declare-fun b_lambda!5863 () Bool)

(assert (=> (not b_lambda!5863) (not b!130945)))

(declare-fun t!6158 () Bool)

(declare-fun tb!2393 () Bool)

(assert (=> (and b!130948 (= (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992)))) t!6158) tb!2393))

(declare-fun result!3947 () Bool)

(assert (=> tb!2393 (= result!3947 tp_is_empty!2865)))

(assert (=> b!130945 t!6158))

(declare-fun b_and!8133 () Bool)

(assert (= b_and!8129 (and (=> t!6158 result!3947) b_and!8133)))

(declare-fun t!6160 () Bool)

(declare-fun tb!2395 () Bool)

(assert (=> (and b!130955 (= (defaultEntry!2843 newMap!16) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992)))) t!6160) tb!2395))

(declare-fun result!3951 () Bool)

(assert (= result!3951 result!3947))

(assert (=> b!130945 t!6160))

(declare-fun b_and!8135 () Bool)

(assert (= b_and!8131 (and (=> t!6160 result!3951) b_and!8135)))

(declare-fun m!154599 () Bool)

(assert (=> b!130960 m!154599))

(declare-fun m!154601 () Bool)

(assert (=> b!130945 m!154601))

(declare-fun m!154603 () Bool)

(assert (=> b!130945 m!154603))

(declare-fun m!154605 () Bool)

(assert (=> b!130945 m!154605))

(assert (=> b!130945 m!154603))

(declare-fun m!154607 () Bool)

(assert (=> b!130945 m!154607))

(assert (=> b!130945 m!154605))

(declare-fun m!154609 () Bool)

(assert (=> b!130945 m!154609))

(assert (=> b!130945 m!154601))

(assert (=> b!130945 m!154607))

(declare-fun m!154611 () Bool)

(assert (=> b!130945 m!154611))

(assert (=> b!130945 m!154607))

(declare-fun m!154613 () Bool)

(assert (=> b!130959 m!154613))

(assert (=> b!130953 m!154607))

(declare-fun m!154615 () Bool)

(assert (=> b!130953 m!154615))

(declare-fun m!154617 () Bool)

(assert (=> b!130953 m!154617))

(declare-fun m!154619 () Bool)

(assert (=> start!14110 m!154619))

(declare-fun m!154621 () Bool)

(assert (=> b!130948 m!154621))

(declare-fun m!154623 () Bool)

(assert (=> b!130948 m!154623))

(declare-fun m!154625 () Bool)

(assert (=> b!130955 m!154625))

(declare-fun m!154627 () Bool)

(assert (=> b!130955 m!154627))

(declare-fun m!154629 () Bool)

(assert (=> mapNonEmpty!4596 m!154629))

(declare-fun m!154631 () Bool)

(assert (=> mapNonEmpty!4595 m!154631))

(declare-fun m!154633 () Bool)

(assert (=> b!130947 m!154633))

(check-sat (not b!130948) (not mapNonEmpty!4596) (not b!130955) (not b!130947) (not b_next!2899) tp_is_empty!2865 (not b!130945) (not b!130953) (not b!130959) b_and!8133 (not b_next!2897) b_and!8135 (not b!130960) (not mapNonEmpty!4595) (not start!14110) (not b_lambda!5863))
(check-sat b_and!8133 b_and!8135 (not b_next!2897) (not b_next!2899))
(get-model)

(declare-fun b_lambda!5867 () Bool)

(assert (= b_lambda!5863 (or (and b!130948 b_free!2897) (and b!130955 b_free!2899 (= (defaultEntry!2843 newMap!16) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))))) b_lambda!5867)))

(check-sat (not b!130948) (not mapNonEmpty!4596) (not b!130955) (not b!130947) (not b_next!2899) tp_is_empty!2865 (not b!130945) (not b!130953) (not b!130959) (not b_lambda!5867) b_and!8133 (not b_next!2897) b_and!8135 (not b!130960) (not mapNonEmpty!4595) (not start!14110))
(check-sat b_and!8133 b_and!8135 (not b_next!2897) (not b_next!2899))
(get-model)

(declare-fun d!39957 () Bool)

(declare-fun e!85487 () Bool)

(assert (=> d!39957 e!85487))

(declare-fun res!63153 () Bool)

(assert (=> d!39957 (=> res!63153 e!85487)))

(declare-fun lt!68179 () Bool)

(assert (=> d!39957 (= res!63153 (not lt!68179))))

(declare-fun lt!68178 () Bool)

(assert (=> d!39957 (= lt!68179 lt!68178)))

(declare-datatypes ((Unit!4112 0))(
  ( (Unit!4113) )
))
(declare-fun lt!68180 () Unit!4112)

(declare-fun e!85488 () Unit!4112)

(assert (=> d!39957 (= lt!68180 e!85488)))

(declare-fun c!24179 () Bool)

(assert (=> d!39957 (= c!24179 lt!68178)))

(declare-fun containsKey!173 (List!1730 (_ BitVec 64)) Bool)

(assert (=> d!39957 (= lt!68178 (containsKey!173 (toList!866 lt!68158) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(assert (=> d!39957 (= (contains!889 lt!68158 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) lt!68179)))

(declare-fun b!131027 () Bool)

(declare-fun lt!68181 () Unit!4112)

(assert (=> b!131027 (= e!85488 lt!68181)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!122 (List!1730 (_ BitVec 64)) Unit!4112)

(assert (=> b!131027 (= lt!68181 (lemmaContainsKeyImpliesGetValueByKeyDefined!122 (toList!866 lt!68158) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-datatypes ((Option!175 0))(
  ( (Some!174 (v!3179 V!3467)) (None!173) )
))
(declare-fun isDefined!123 (Option!175) Bool)

(declare-fun getValueByKey!169 (List!1730 (_ BitVec 64)) Option!175)

(assert (=> b!131027 (isDefined!123 (getValueByKey!169 (toList!866 lt!68158) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun b!131028 () Bool)

(declare-fun Unit!4114 () Unit!4112)

(assert (=> b!131028 (= e!85488 Unit!4114)))

(declare-fun b!131029 () Bool)

(assert (=> b!131029 (= e!85487 (isDefined!123 (getValueByKey!169 (toList!866 lt!68158) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355))))))

(assert (= (and d!39957 c!24179) b!131027))

(assert (= (and d!39957 (not c!24179)) b!131028))

(assert (= (and d!39957 (not res!63153)) b!131029))

(assert (=> d!39957 m!154607))

(declare-fun m!154671 () Bool)

(assert (=> d!39957 m!154671))

(assert (=> b!131027 m!154607))

(declare-fun m!154673 () Bool)

(assert (=> b!131027 m!154673))

(assert (=> b!131027 m!154607))

(declare-fun m!154675 () Bool)

(assert (=> b!131027 m!154675))

(assert (=> b!131027 m!154675))

(declare-fun m!154677 () Bool)

(assert (=> b!131027 m!154677))

(assert (=> b!131029 m!154607))

(assert (=> b!131029 m!154675))

(assert (=> b!131029 m!154675))

(assert (=> b!131029 m!154677))

(assert (=> b!130945 d!39957))

(declare-fun bm!14301 () Bool)

(declare-datatypes ((SeekEntryResult!283 0))(
  ( (MissingZero!283 (index!3290 (_ BitVec 32))) (Found!283 (index!3291 (_ BitVec 32))) (Intermediate!283 (undefined!1095 Bool) (index!3292 (_ BitVec 32)) (x!15422 (_ BitVec 32))) (Undefined!283) (MissingVacant!283 (index!3293 (_ BitVec 32))) )
))
(declare-fun lt!68256 () SeekEntryResult!283)

(declare-fun call!14307 () tuple2!2598)

(declare-fun c!24213 () Bool)

(declare-fun updateHelperNewKey!59 (LongMapFixedSize!1086 (_ BitVec 64) V!3467 (_ BitVec 32)) tuple2!2598)

(assert (=> bm!14301 (= call!14307 (updateHelperNewKey!59 newMap!16 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256))))))

(declare-fun b!131114 () Bool)

(declare-fun res!63184 () Bool)

(declare-fun e!85535 () Bool)

(assert (=> b!131114 (=> (not res!63184) (not e!85535))))

(declare-fun lt!68253 () SeekEntryResult!283)

(assert (=> b!131114 (= res!63184 (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3290 lt!68253)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!14303 () Bool)

(declare-fun call!14315 () Bool)

(declare-fun call!14327 () Bool)

(assert (=> bm!14303 (= call!14315 call!14327)))

(declare-fun bm!14304 () Bool)

(declare-fun call!14323 () Bool)

(declare-fun call!14308 () Bool)

(assert (=> bm!14304 (= call!14323 call!14308)))

(declare-fun b!131115 () Bool)

(declare-fun e!85549 () Bool)

(declare-fun e!85534 () Bool)

(assert (=> b!131115 (= e!85549 e!85534)))

(declare-fun res!63182 () Bool)

(declare-fun call!14322 () ListLongMap!1701)

(assert (=> b!131115 (= res!63182 (contains!889 call!14322 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(assert (=> b!131115 (=> (not res!63182) (not e!85534))))

(declare-fun bm!14305 () Bool)

(declare-fun call!14309 () ListLongMap!1701)

(declare-fun call!14321 () ListLongMap!1701)

(assert (=> bm!14305 (= call!14309 call!14321)))

(declare-fun b!131116 () Bool)

(declare-fun e!85536 () tuple2!2598)

(declare-fun e!85547 () tuple2!2598)

(assert (=> b!131116 (= e!85536 e!85547)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4752 (_ BitVec 32)) SeekEntryResult!283)

(assert (=> b!131116 (= lt!68256 (seekEntryOrOpen!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (_keys!4588 newMap!16) (mask!7131 newMap!16)))))

(declare-fun c!24217 () Bool)

(assert (=> b!131116 (= c!24217 ((_ is Undefined!283) lt!68256))))

(declare-fun bm!14306 () Bool)

(declare-fun call!14317 () Bool)

(declare-fun call!14319 () Bool)

(assert (=> bm!14306 (= call!14317 call!14319)))

(declare-fun b!131117 () Bool)

(assert (=> b!131117 (= c!24213 ((_ is MissingVacant!283) lt!68256))))

(declare-fun e!85552 () tuple2!2598)

(assert (=> b!131117 (= e!85547 e!85552)))

(declare-fun bm!14307 () Bool)

(declare-fun call!14306 () ListLongMap!1701)

(declare-fun call!14312 () ListLongMap!1701)

(assert (=> bm!14307 (= call!14306 call!14312)))

(declare-fun b!131118 () Bool)

(declare-fun e!85533 () tuple2!2598)

(assert (=> b!131118 (= e!85552 e!85533)))

(declare-fun c!24211 () Bool)

(assert (=> b!131118 (= c!24211 ((_ is MissingZero!283) lt!68256))))

(declare-fun bm!14308 () Bool)

(declare-fun call!14314 () SeekEntryResult!283)

(declare-fun call!14326 () SeekEntryResult!283)

(assert (=> bm!14308 (= call!14314 call!14326)))

(declare-fun bm!14309 () Bool)

(declare-fun call!14324 () SeekEntryResult!283)

(assert (=> bm!14309 (= call!14324 call!14326)))

(declare-fun b!131119 () Bool)

(declare-fun lt!68257 () Unit!4112)

(declare-fun lt!68258 () Unit!4112)

(assert (=> b!131119 (= lt!68257 lt!68258)))

(declare-fun call!14316 () ListLongMap!1701)

(assert (=> b!131119 (= call!14309 call!14316)))

(declare-fun lt!68243 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!59 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 V!3467 Int) Unit!4112)

(assert (=> b!131119 (= lt!68258 (lemmaChangeLongMinValueKeyThenAddPairToListMap!59 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) lt!68243 (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2843 newMap!16)))))

(assert (=> b!131119 (= lt!68243 (bvor (extraKeys!2612 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!85553 () tuple2!2598)

(assert (=> b!131119 (= e!85553 (tuple2!2599 true (LongMapFixedSize!1087 (defaultEntry!2843 newMap!16) (mask!7131 newMap!16) (bvor (extraKeys!2612 newMap!16) #b00000000000000000000000000000010) (zeroValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!592 newMap!16) (_keys!4588 newMap!16) (_values!2826 newMap!16) (_vacant!592 newMap!16))))))

(declare-fun b!131120 () Bool)

(assert (=> b!131120 (= e!85535 (not call!14315))))

(declare-fun b!131121 () Bool)

(declare-fun e!85542 () Bool)

(assert (=> b!131121 (= e!85542 (not call!14315))))

(declare-fun b!131122 () Bool)

(declare-fun e!85550 () Unit!4112)

(declare-fun lt!68254 () Unit!4112)

(assert (=> b!131122 (= e!85550 lt!68254)))

(declare-fun call!14320 () Unit!4112)

(assert (=> b!131122 (= lt!68254 call!14320)))

(declare-fun lt!68244 () SeekEntryResult!283)

(assert (=> b!131122 (= lt!68244 call!14324)))

(declare-fun res!63185 () Bool)

(assert (=> b!131122 (= res!63185 ((_ is Found!283) lt!68244))))

(declare-fun e!85551 () Bool)

(assert (=> b!131122 (=> (not res!63185) (not e!85551))))

(assert (=> b!131122 e!85551))

(declare-fun b!131123 () Bool)

(declare-fun e!85545 () Bool)

(assert (=> b!131123 (= e!85545 ((_ is Undefined!283) lt!68253))))

(declare-fun bm!14310 () Bool)

(declare-fun call!14313 () Bool)

(assert (=> bm!14310 (= call!14313 call!14327)))

(declare-fun b!131124 () Bool)

(declare-fun res!63187 () Bool)

(assert (=> b!131124 (= res!63187 call!14317)))

(assert (=> b!131124 (=> (not res!63187) (not e!85551))))

(declare-fun b!131125 () Bool)

(declare-fun res!63189 () Bool)

(assert (=> b!131125 (=> (not res!63189) (not e!85535))))

(declare-fun call!14310 () Bool)

(assert (=> b!131125 (= res!63189 call!14310)))

(declare-fun e!85537 () Bool)

(assert (=> b!131125 (= e!85537 e!85535)))

(declare-fun b!131126 () Bool)

(declare-fun lt!68246 () Unit!4112)

(declare-fun lt!68242 () Unit!4112)

(assert (=> b!131126 (= lt!68246 lt!68242)))

(declare-fun call!14305 () ListLongMap!1701)

(assert (=> b!131126 (contains!889 call!14305 (select (arr!2248 (_keys!4588 newMap!16)) (index!3291 lt!68256)))))

(declare-fun lt!68262 () array!4754)

(declare-fun lemmaValidKeyInArrayIsInListMap!117 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 (_ BitVec 32) Int) Unit!4112)

(assert (=> b!131126 (= lt!68242 (lemmaValidKeyInArrayIsInListMap!117 (_keys!4588 newMap!16) lt!68262 (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (index!3291 lt!68256) (defaultEntry!2843 newMap!16)))))

(assert (=> b!131126 (= lt!68262 (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (index!3291 lt!68256) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16))))))

(declare-fun lt!68249 () Unit!4112)

(declare-fun lt!68261 () Unit!4112)

(assert (=> b!131126 (= lt!68249 lt!68261)))

(declare-fun call!14304 () ListLongMap!1701)

(assert (=> b!131126 (= call!14321 call!14304)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!59 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 (_ BitVec 32) (_ BitVec 64) V!3467 Int) Unit!4112)

(assert (=> b!131126 (= lt!68261 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!59 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (index!3291 lt!68256) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68247 () Unit!4112)

(assert (=> b!131126 (= lt!68247 e!85550)))

(declare-fun c!24214 () Bool)

(declare-fun call!14318 () Bool)

(assert (=> b!131126 (= c!24214 call!14318)))

(assert (=> b!131126 (= e!85533 (tuple2!2599 true (LongMapFixedSize!1087 (defaultEntry!2843 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (_size!592 newMap!16) (_keys!4588 newMap!16) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (index!3291 lt!68256) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16))) (_vacant!592 newMap!16))))))

(declare-fun b!131127 () Bool)

(declare-fun c!24219 () Bool)

(declare-fun lt!68250 () SeekEntryResult!283)

(assert (=> b!131127 (= c!24219 ((_ is MissingVacant!283) lt!68250))))

(declare-fun e!85543 () Bool)

(declare-fun e!85544 () Bool)

(assert (=> b!131127 (= e!85543 e!85544)))

(declare-fun bm!14311 () Bool)

(declare-fun arrayContainsKey!0 (array!4752 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!14311 (= call!14327 (arrayContainsKey!0 (_keys!4588 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!131128 () Bool)

(declare-fun e!85554 () Unit!4112)

(declare-fun lt!68237 () Unit!4112)

(assert (=> b!131128 (= e!85554 lt!68237)))

(declare-fun call!14311 () Unit!4112)

(assert (=> b!131128 (= lt!68237 call!14311)))

(assert (=> b!131128 (= lt!68250 call!14314)))

(declare-fun c!24209 () Bool)

(assert (=> b!131128 (= c!24209 ((_ is MissingZero!283) lt!68250))))

(assert (=> b!131128 e!85543))

(declare-fun bm!14312 () Bool)

(assert (=> bm!14312 (= call!14308 call!14319)))

(declare-fun b!131129 () Bool)

(declare-fun res!63183 () Bool)

(declare-fun e!85548 () Bool)

(assert (=> b!131129 (=> (not res!63183) (not e!85548))))

(assert (=> b!131129 (= res!63183 call!14323)))

(assert (=> b!131129 (= e!85543 e!85548)))

(declare-fun bm!14313 () Bool)

(assert (=> bm!14313 (= call!14305 call!14312)))

(declare-fun b!131130 () Bool)

(declare-fun e!85540 () Bool)

(assert (=> b!131130 (= e!85540 e!85549)))

(declare-fun c!24216 () Bool)

(declare-fun lt!68251 () tuple2!2598)

(assert (=> b!131130 (= c!24216 (_1!1309 lt!68251))))

(declare-fun b!131131 () Bool)

(declare-fun call!14325 () ListLongMap!1701)

(declare-fun +!168 (ListLongMap!1701 tuple2!2596) ListLongMap!1701)

(assert (=> b!131131 (= e!85534 (= call!14322 (+!168 call!14325 (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!131132 () Bool)

(declare-fun e!85538 () Bool)

(assert (=> b!131132 (= e!85544 e!85538)))

(declare-fun res!63195 () Bool)

(assert (=> b!131132 (= res!63195 call!14323)))

(assert (=> b!131132 (=> (not res!63195) (not e!85538))))

(declare-fun b!131133 () Bool)

(assert (=> b!131133 (= e!85545 e!85542)))

(declare-fun res!63192 () Bool)

(assert (=> b!131133 (= res!63192 call!14310)))

(assert (=> b!131133 (=> (not res!63192) (not e!85542))))

(declare-fun c!24208 () Bool)

(declare-fun lt!68238 () (_ BitVec 32))

(declare-fun bm!14314 () Bool)

(declare-fun c!24215 () Bool)

(assert (=> bm!14314 (= call!14304 (getCurrentListMap!537 (_keys!4588 newMap!16) (ite c!24215 (_values!2826 newMap!16) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (index!3291 lt!68256) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16)))) (mask!7131 newMap!16) (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16)) (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun d!39959 () Bool)

(assert (=> d!39959 e!85540))

(declare-fun res!63188 () Bool)

(assert (=> d!39959 (=> (not res!63188) (not e!85540))))

(assert (=> d!39959 (= res!63188 (valid!515 (_2!1309 lt!68251)))))

(assert (=> d!39959 (= lt!68251 e!85536)))

(assert (=> d!39959 (= c!24215 (= (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (bvneg (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355))))))

(assert (=> d!39959 (valid!515 newMap!16)))

(assert (=> d!39959 (= (update!189 newMap!16 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!68251)))

(declare-fun bm!14302 () Bool)

(assert (=> bm!14302 (= call!14310 call!14317)))

(declare-fun b!131134 () Bool)

(declare-fun res!63190 () Bool)

(assert (=> b!131134 (=> (not res!63190) (not e!85548))))

(assert (=> b!131134 (= res!63190 (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3290 lt!68250)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!14315 () Bool)

(declare-fun c!24212 () Bool)

(declare-fun c!24218 () Bool)

(declare-fun lt!68248 () SeekEntryResult!283)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!14315 (= call!14319 (inRange!0 (ite c!24217 (ite c!24218 (index!3291 lt!68248) (ite c!24209 (index!3290 lt!68250) (index!3293 lt!68250))) (ite c!24214 (index!3291 lt!68244) (ite c!24212 (index!3290 lt!68253) (index!3293 lt!68253)))) (mask!7131 newMap!16)))))

(declare-fun bm!14316 () Bool)

(assert (=> bm!14316 (= call!14326 (seekEntryOrOpen!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (_keys!4588 newMap!16) (mask!7131 newMap!16)))))

(declare-fun b!131135 () Bool)

(assert (=> b!131135 (= e!85549 (= call!14322 call!14325))))

(declare-fun bm!14317 () Bool)

(assert (=> bm!14317 (= call!14316 call!14304)))

(declare-fun b!131136 () Bool)

(declare-fun lt!68252 () Unit!4112)

(declare-fun lt!68259 () Unit!4112)

(assert (=> b!131136 (= lt!68252 lt!68259)))

(assert (=> b!131136 (= call!14309 call!14316)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!59 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 V!3467 Int) Unit!4112)

(assert (=> b!131136 (= lt!68259 (lemmaChangeZeroKeyThenAddPairToListMap!59 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) lt!68238 (zeroValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2700 newMap!16) (defaultEntry!2843 newMap!16)))))

(assert (=> b!131136 (= lt!68238 (bvor (extraKeys!2612 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!131136 (= e!85553 (tuple2!2599 true (LongMapFixedSize!1087 (defaultEntry!2843 newMap!16) (mask!7131 newMap!16) (bvor (extraKeys!2612 newMap!16) #b00000000000000000000000000000001) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2700 newMap!16) (_size!592 newMap!16) (_keys!4588 newMap!16) (_values!2826 newMap!16) (_vacant!592 newMap!16))))))

(declare-fun bm!14318 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!59 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 (_ BitVec 64) Int) Unit!4112)

(assert (=> bm!14318 (= call!14311 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!59 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (defaultEntry!2843 newMap!16)))))

(declare-fun b!131137 () Bool)

(assert (=> b!131137 (= e!85536 e!85553)))

(assert (=> b!131137 (= c!24208 (= (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!131138 () Bool)

(declare-fun Unit!4115 () Unit!4112)

(assert (=> b!131138 (= e!85554 Unit!4115)))

(declare-fun lt!68239 () Unit!4112)

(assert (=> b!131138 (= lt!68239 call!14320)))

(assert (=> b!131138 (= lt!68248 call!14314)))

(declare-fun res!63191 () Bool)

(assert (=> b!131138 (= res!63191 ((_ is Found!283) lt!68248))))

(declare-fun e!85546 () Bool)

(assert (=> b!131138 (=> (not res!63191) (not e!85546))))

(assert (=> b!131138 e!85546))

(declare-fun lt!68241 () Unit!4112)

(assert (=> b!131138 (= lt!68241 lt!68239)))

(assert (=> b!131138 false))

(declare-fun b!131139 () Bool)

(declare-fun e!85539 () ListLongMap!1701)

(assert (=> b!131139 (= e!85539 (getCurrentListMap!537 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun b!131140 () Bool)

(declare-fun Unit!4116 () Unit!4112)

(assert (=> b!131140 (= e!85550 Unit!4116)))

(declare-fun lt!68245 () Unit!4112)

(assert (=> b!131140 (= lt!68245 call!14311)))

(assert (=> b!131140 (= lt!68253 call!14324)))

(assert (=> b!131140 (= c!24212 ((_ is MissingZero!283) lt!68253))))

(assert (=> b!131140 e!85537))

(declare-fun lt!68260 () Unit!4112)

(assert (=> b!131140 (= lt!68260 lt!68245)))

(assert (=> b!131140 false))

(declare-fun bm!14319 () Bool)

(declare-fun c!24220 () Bool)

(assert (=> bm!14319 (= c!24220 c!24217)))

(declare-fun e!85541 () ListLongMap!1701)

(assert (=> bm!14319 (= call!14318 (contains!889 e!85541 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun b!131141 () Bool)

(declare-fun lt!68236 () tuple2!2598)

(assert (=> b!131141 (= e!85552 (tuple2!2599 (_1!1309 lt!68236) (_2!1309 lt!68236)))))

(assert (=> b!131141 (= lt!68236 call!14307)))

(declare-fun b!131142 () Bool)

(declare-fun res!63193 () Bool)

(assert (=> b!131142 (= res!63193 (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3293 lt!68253)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!131142 (=> (not res!63193) (not e!85542))))

(declare-fun b!131143 () Bool)

(declare-fun res!63186 () Bool)

(assert (=> b!131143 (= res!63186 call!14308)))

(assert (=> b!131143 (=> (not res!63186) (not e!85546))))

(declare-fun b!131144 () Bool)

(declare-fun c!24210 () Bool)

(assert (=> b!131144 (= c!24210 ((_ is MissingVacant!283) lt!68253))))

(assert (=> b!131144 (= e!85537 e!85545)))

(declare-fun bm!14320 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!59 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 (_ BitVec 64) Int) Unit!4112)

(assert (=> bm!14320 (= call!14320 (lemmaInListMapThenSeekEntryOrOpenFindsIt!59 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (defaultEntry!2843 newMap!16)))))

(declare-fun b!131145 () Bool)

(assert (=> b!131145 (= e!85541 call!14305)))

(declare-fun b!131146 () Bool)

(assert (=> b!131146 (= e!85548 (not call!14313))))

(declare-fun b!131147 () Bool)

(assert (=> b!131147 (= e!85544 ((_ is Undefined!283) lt!68250))))

(declare-fun bm!14321 () Bool)

(assert (=> bm!14321 (= call!14312 (getCurrentListMap!537 (_keys!4588 newMap!16) (ite (or c!24215 c!24217) (_values!2826 newMap!16) lt!68262) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun b!131148 () Bool)

(assert (=> b!131148 (= e!85541 (getCurrentListMap!537 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun b!131149 () Bool)

(assert (=> b!131149 (= e!85546 (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3291 lt!68248)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun b!131150 () Bool)

(declare-fun lt!68255 () Unit!4112)

(assert (=> b!131150 (= lt!68255 e!85554)))

(assert (=> b!131150 (= c!24218 call!14318)))

(assert (=> b!131150 (= e!85547 (tuple2!2599 false newMap!16))))

(declare-fun b!131151 () Bool)

(declare-fun lt!68240 () tuple2!2598)

(assert (=> b!131151 (= lt!68240 call!14307)))

(assert (=> b!131151 (= e!85533 (tuple2!2599 (_1!1309 lt!68240) (_2!1309 lt!68240)))))

(declare-fun bm!14322 () Bool)

(assert (=> bm!14322 (= call!14325 (map!1398 newMap!16))))

(declare-fun bm!14323 () Bool)

(assert (=> bm!14323 (= call!14321 (+!168 e!85539 (ite c!24215 (ite c!24208 (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!24221 () Bool)

(assert (=> bm!14323 (= c!24221 c!24215)))

(declare-fun b!131152 () Bool)

(assert (=> b!131152 (= e!85551 (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3291 lt!68244)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun b!131153 () Bool)

(declare-fun res!63194 () Bool)

(assert (=> b!131153 (= res!63194 (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3293 lt!68250)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!131153 (=> (not res!63194) (not e!85538))))

(declare-fun b!131154 () Bool)

(assert (=> b!131154 (= e!85539 call!14306)))

(declare-fun b!131155 () Bool)

(assert (=> b!131155 (= e!85538 (not call!14313))))

(declare-fun bm!14324 () Bool)

(assert (=> bm!14324 (= call!14322 (map!1398 (_2!1309 lt!68251)))))

(assert (= (and d!39959 c!24215) b!131137))

(assert (= (and d!39959 (not c!24215)) b!131116))

(assert (= (and b!131137 c!24208) b!131136))

(assert (= (and b!131137 (not c!24208)) b!131119))

(assert (= (or b!131136 b!131119) bm!14307))

(assert (= (or b!131136 b!131119) bm!14317))

(assert (= (or b!131136 b!131119) bm!14305))

(assert (= (and b!131116 c!24217) b!131150))

(assert (= (and b!131116 (not c!24217)) b!131117))

(assert (= (and b!131150 c!24218) b!131138))

(assert (= (and b!131150 (not c!24218)) b!131128))

(assert (= (and b!131138 res!63191) b!131143))

(assert (= (and b!131143 res!63186) b!131149))

(assert (= (and b!131128 c!24209) b!131129))

(assert (= (and b!131128 (not c!24209)) b!131127))

(assert (= (and b!131129 res!63183) b!131134))

(assert (= (and b!131134 res!63190) b!131146))

(assert (= (and b!131127 c!24219) b!131132))

(assert (= (and b!131127 (not c!24219)) b!131147))

(assert (= (and b!131132 res!63195) b!131153))

(assert (= (and b!131153 res!63194) b!131155))

(assert (= (or b!131129 b!131132) bm!14304))

(assert (= (or b!131146 b!131155) bm!14310))

(assert (= (or b!131143 bm!14304) bm!14312))

(assert (= (or b!131138 b!131128) bm!14308))

(assert (= (and b!131117 c!24213) b!131141))

(assert (= (and b!131117 (not c!24213)) b!131118))

(assert (= (and b!131118 c!24211) b!131151))

(assert (= (and b!131118 (not c!24211)) b!131126))

(assert (= (and b!131126 c!24214) b!131122))

(assert (= (and b!131126 (not c!24214)) b!131140))

(assert (= (and b!131122 res!63185) b!131124))

(assert (= (and b!131124 res!63187) b!131152))

(assert (= (and b!131140 c!24212) b!131125))

(assert (= (and b!131140 (not c!24212)) b!131144))

(assert (= (and b!131125 res!63189) b!131114))

(assert (= (and b!131114 res!63184) b!131120))

(assert (= (and b!131144 c!24210) b!131133))

(assert (= (and b!131144 (not c!24210)) b!131123))

(assert (= (and b!131133 res!63192) b!131142))

(assert (= (and b!131142 res!63193) b!131121))

(assert (= (or b!131125 b!131133) bm!14302))

(assert (= (or b!131120 b!131121) bm!14303))

(assert (= (or b!131124 bm!14302) bm!14306))

(assert (= (or b!131122 b!131140) bm!14309))

(assert (= (or b!131141 b!131151) bm!14301))

(assert (= (or b!131150 b!131126) bm!14313))

(assert (= (or bm!14312 bm!14306) bm!14315))

(assert (= (or b!131128 b!131140) bm!14318))

(assert (= (or bm!14310 bm!14303) bm!14311))

(assert (= (or bm!14308 bm!14309) bm!14316))

(assert (= (or b!131138 b!131122) bm!14320))

(assert (= (or b!131150 b!131126) bm!14319))

(assert (= (and bm!14319 c!24220) b!131145))

(assert (= (and bm!14319 (not c!24220)) b!131148))

(assert (= (or bm!14307 bm!14313) bm!14321))

(assert (= (or bm!14317 b!131126) bm!14314))

(assert (= (or bm!14305 b!131126) bm!14323))

(assert (= (and bm!14323 c!24221) b!131154))

(assert (= (and bm!14323 (not c!24221)) b!131139))

(assert (= (and d!39959 res!63188) b!131130))

(assert (= (and b!131130 c!24216) b!131115))

(assert (= (and b!131130 (not c!24216)) b!131135))

(assert (= (and b!131115 res!63182) b!131131))

(assert (= (or b!131131 b!131135) bm!14322))

(assert (= (or b!131115 b!131131 b!131135) bm!14324))

(declare-fun m!154679 () Bool)

(assert (=> b!131114 m!154679))

(assert (=> bm!14318 m!154607))

(declare-fun m!154681 () Bool)

(assert (=> bm!14318 m!154681))

(declare-fun m!154683 () Bool)

(assert (=> d!39959 m!154683))

(assert (=> d!39959 m!154613))

(declare-fun m!154685 () Bool)

(assert (=> b!131153 m!154685))

(declare-fun m!154687 () Bool)

(assert (=> bm!14324 m!154687))

(declare-fun m!154689 () Bool)

(assert (=> b!131131 m!154689))

(declare-fun m!154691 () Bool)

(assert (=> b!131148 m!154691))

(declare-fun m!154693 () Bool)

(assert (=> bm!14321 m!154693))

(assert (=> bm!14322 m!154615))

(assert (=> bm!14311 m!154607))

(declare-fun m!154695 () Bool)

(assert (=> bm!14311 m!154695))

(declare-fun m!154697 () Bool)

(assert (=> b!131142 m!154697))

(declare-fun m!154699 () Bool)

(assert (=> b!131126 m!154699))

(declare-fun m!154701 () Bool)

(assert (=> b!131126 m!154701))

(declare-fun m!154703 () Bool)

(assert (=> b!131126 m!154703))

(assert (=> b!131126 m!154607))

(assert (=> b!131126 m!154605))

(declare-fun m!154705 () Bool)

(assert (=> b!131126 m!154705))

(assert (=> b!131126 m!154701))

(declare-fun m!154707 () Bool)

(assert (=> b!131126 m!154707))

(assert (=> bm!14316 m!154607))

(declare-fun m!154709 () Bool)

(assert (=> bm!14316 m!154709))

(declare-fun m!154711 () Bool)

(assert (=> bm!14323 m!154711))

(assert (=> b!131136 m!154605))

(declare-fun m!154713 () Bool)

(assert (=> b!131136 m!154713))

(assert (=> b!131119 m!154605))

(declare-fun m!154715 () Bool)

(assert (=> b!131119 m!154715))

(assert (=> bm!14319 m!154607))

(declare-fun m!154717 () Bool)

(assert (=> bm!14319 m!154717))

(assert (=> b!131139 m!154691))

(assert (=> bm!14320 m!154607))

(declare-fun m!154719 () Bool)

(assert (=> bm!14320 m!154719))

(declare-fun m!154721 () Bool)

(assert (=> b!131134 m!154721))

(assert (=> bm!14314 m!154707))

(declare-fun m!154723 () Bool)

(assert (=> bm!14314 m!154723))

(declare-fun m!154725 () Bool)

(assert (=> b!131152 m!154725))

(assert (=> b!131116 m!154607))

(assert (=> b!131116 m!154709))

(assert (=> b!131115 m!154607))

(declare-fun m!154727 () Bool)

(assert (=> b!131115 m!154727))

(assert (=> bm!14301 m!154607))

(assert (=> bm!14301 m!154605))

(declare-fun m!154729 () Bool)

(assert (=> bm!14301 m!154729))

(declare-fun m!154731 () Bool)

(assert (=> bm!14315 m!154731))

(declare-fun m!154733 () Bool)

(assert (=> b!131149 m!154733))

(assert (=> b!130945 d!39959))

(declare-fun d!39961 () Bool)

(declare-fun c!24224 () Bool)

(assert (=> d!39961 (= c!24224 ((_ is ValueCellFull!1089) (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun e!85557 () V!3467)

(assert (=> d!39961 (= (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!85557)))

(declare-fun b!131160 () Bool)

(declare-fun get!1476 (ValueCell!1089 V!3467) V!3467)

(assert (=> b!131160 (= e!85557 (get!1476 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!131161 () Bool)

(declare-fun get!1477 (ValueCell!1089 V!3467) V!3467)

(assert (=> b!131161 (= e!85557 (get!1477 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39961 c!24224) b!131160))

(assert (= (and d!39961 (not c!24224)) b!131161))

(assert (=> b!131160 m!154601))

(assert (=> b!131160 m!154603))

(declare-fun m!154735 () Bool)

(assert (=> b!131160 m!154735))

(assert (=> b!131161 m!154601))

(assert (=> b!131161 m!154603))

(declare-fun m!154737 () Bool)

(assert (=> b!131161 m!154737))

(assert (=> b!130945 d!39961))

(declare-fun d!39963 () Bool)

(assert (=> d!39963 (= (array_inv!1381 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvsge (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!130948 d!39963))

(declare-fun d!39965 () Bool)

(assert (=> d!39965 (= (array_inv!1382 (_values!2826 (v!3175 (underlying!449 thiss!992)))) (bvsge (size!2516 (_values!2826 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!130948 d!39965))

(declare-fun d!39967 () Bool)

(assert (=> d!39967 (= (validMask!0 (mask!7131 (v!3175 (underlying!449 thiss!992)))) (and (or (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000001111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000011111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000001111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000011111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000001111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000011111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000001111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000011111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000000111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000001111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000011111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000000111111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000001111111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000011111111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000000111111111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000001111111111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000011111111111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000000111111111111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000001111111111111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000011111111111111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00000111111111111111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00001111111111111111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00011111111111111111111111111111) (= (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!7131 (v!3175 (underlying!449 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!130960 d!39967))

(declare-fun d!39969 () Bool)

(assert (=> d!39969 (= (valid!514 thiss!992) (valid!515 (v!3175 (underlying!449 thiss!992))))))

(declare-fun bs!5446 () Bool)

(assert (= bs!5446 d!39969))

(declare-fun m!154739 () Bool)

(assert (=> bs!5446 m!154739))

(assert (=> start!14110 d!39969))

(declare-fun d!39971 () Bool)

(assert (=> d!39971 (= (map!1398 newMap!16) (getCurrentListMap!537 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun bs!5447 () Bool)

(assert (= bs!5447 d!39971))

(assert (=> bs!5447 m!154691))

(assert (=> b!130953 d!39971))

(declare-fun b!131204 () Bool)

(declare-fun e!85588 () Bool)

(declare-fun lt!68312 () ListLongMap!1701)

(declare-fun apply!114 (ListLongMap!1701 (_ BitVec 64)) V!3467)

(assert (=> b!131204 (= e!85588 (= (apply!114 lt!68312 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun b!131205 () Bool)

(declare-fun e!85584 () Unit!4112)

(declare-fun lt!68323 () Unit!4112)

(assert (=> b!131205 (= e!85584 lt!68323)))

(declare-fun lt!68327 () ListLongMap!1701)

(declare-fun getCurrentListMapNoExtraKeys!135 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 (_ BitVec 32) Int) ListLongMap!1701)

(assert (=> b!131205 (= lt!68327 (getCurrentListMapNoExtraKeys!135 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (_values!2826 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992))) (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) (minValue!2700 (v!3175 (underlying!449 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun lt!68321 () (_ BitVec 64))

(assert (=> b!131205 (= lt!68321 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68320 () (_ BitVec 64))

(assert (=> b!131205 (= lt!68320 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!68326 () Unit!4112)

(declare-fun addStillContains!90 (ListLongMap!1701 (_ BitVec 64) V!3467 (_ BitVec 64)) Unit!4112)

(assert (=> b!131205 (= lt!68326 (addStillContains!90 lt!68327 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) lt!68320))))

(assert (=> b!131205 (contains!889 (+!168 lt!68327 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68320)))

(declare-fun lt!68315 () Unit!4112)

(assert (=> b!131205 (= lt!68315 lt!68326)))

(declare-fun lt!68325 () ListLongMap!1701)

(assert (=> b!131205 (= lt!68325 (getCurrentListMapNoExtraKeys!135 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (_values!2826 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992))) (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) (minValue!2700 (v!3175 (underlying!449 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun lt!68309 () (_ BitVec 64))

(assert (=> b!131205 (= lt!68309 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68322 () (_ BitVec 64))

(assert (=> b!131205 (= lt!68322 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!68313 () Unit!4112)

(declare-fun addApplyDifferent!90 (ListLongMap!1701 (_ BitVec 64) V!3467 (_ BitVec 64)) Unit!4112)

(assert (=> b!131205 (= lt!68313 (addApplyDifferent!90 lt!68325 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992))) lt!68322))))

(assert (=> b!131205 (= (apply!114 (+!168 lt!68325 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68322) (apply!114 lt!68325 lt!68322))))

(declare-fun lt!68317 () Unit!4112)

(assert (=> b!131205 (= lt!68317 lt!68313)))

(declare-fun lt!68319 () ListLongMap!1701)

(assert (=> b!131205 (= lt!68319 (getCurrentListMapNoExtraKeys!135 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (_values!2826 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992))) (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) (minValue!2700 (v!3175 (underlying!449 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun lt!68308 () (_ BitVec 64))

(assert (=> b!131205 (= lt!68308 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68318 () (_ BitVec 64))

(assert (=> b!131205 (= lt!68318 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!68314 () Unit!4112)

(assert (=> b!131205 (= lt!68314 (addApplyDifferent!90 lt!68319 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) lt!68318))))

(assert (=> b!131205 (= (apply!114 (+!168 lt!68319 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68318) (apply!114 lt!68319 lt!68318))))

(declare-fun lt!68324 () Unit!4112)

(assert (=> b!131205 (= lt!68324 lt!68314)))

(declare-fun lt!68310 () ListLongMap!1701)

(assert (=> b!131205 (= lt!68310 (getCurrentListMapNoExtraKeys!135 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (_values!2826 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992))) (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) (minValue!2700 (v!3175 (underlying!449 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun lt!68328 () (_ BitVec 64))

(assert (=> b!131205 (= lt!68328 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68316 () (_ BitVec 64))

(assert (=> b!131205 (= lt!68316 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!131205 (= lt!68323 (addApplyDifferent!90 lt!68310 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992))) lt!68316))))

(assert (=> b!131205 (= (apply!114 (+!168 lt!68310 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68316) (apply!114 lt!68310 lt!68316))))

(declare-fun bm!14339 () Bool)

(declare-fun call!14346 () Bool)

(assert (=> bm!14339 (= call!14346 (contains!889 lt!68312 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!14340 () Bool)

(declare-fun call!14342 () Bool)

(assert (=> bm!14340 (= call!14342 (contains!889 lt!68312 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!131206 () Bool)

(declare-fun e!85591 () Bool)

(declare-fun e!85596 () Bool)

(assert (=> b!131206 (= e!85591 e!85596)))

(declare-fun res!63222 () Bool)

(assert (=> b!131206 (= res!63222 call!14346)))

(assert (=> b!131206 (=> (not res!63222) (not e!85596))))

(declare-fun bm!14341 () Bool)

(declare-fun call!14345 () ListLongMap!1701)

(declare-fun call!14344 () ListLongMap!1701)

(assert (=> bm!14341 (= call!14345 call!14344)))

(declare-fun b!131207 () Bool)

(declare-fun e!85593 () Bool)

(assert (=> b!131207 (= e!85593 (not call!14342))))

(declare-fun b!131208 () Bool)

(assert (=> b!131208 (= e!85593 e!85588)))

(declare-fun res!63218 () Bool)

(assert (=> b!131208 (= res!63218 call!14342)))

(assert (=> b!131208 (=> (not res!63218) (not e!85588))))

(declare-fun b!131209 () Bool)

(declare-fun e!85585 () Bool)

(declare-fun e!85592 () Bool)

(assert (=> b!131209 (= e!85585 e!85592)))

(declare-fun res!63214 () Bool)

(assert (=> b!131209 (=> (not res!63214) (not e!85592))))

(assert (=> b!131209 (= res!63214 (contains!889 lt!68312 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!131209 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))

(declare-fun b!131210 () Bool)

(declare-fun e!85587 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!131210 (= e!85587 (validKeyInArray!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!131211 () Bool)

(assert (=> b!131211 (= e!85592 (= (apply!114 lt!68312 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!131211 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2516 (_values!2826 (v!3175 (underlying!449 thiss!992))))))))

(assert (=> b!131211 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))

(declare-fun b!131212 () Bool)

(assert (=> b!131212 (= e!85591 (not call!14346))))

(declare-fun bm!14342 () Bool)

(assert (=> bm!14342 (= call!14344 (getCurrentListMapNoExtraKeys!135 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (_values!2826 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992))) (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) (minValue!2700 (v!3175 (underlying!449 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun b!131213 () Bool)

(declare-fun c!24238 () Bool)

(assert (=> b!131213 (= c!24238 (and (not (= (bvand (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!85590 () ListLongMap!1701)

(declare-fun e!85586 () ListLongMap!1701)

(assert (=> b!131213 (= e!85590 e!85586)))

(declare-fun d!39973 () Bool)

(declare-fun e!85595 () Bool)

(assert (=> d!39973 e!85595))

(declare-fun res!63220 () Bool)

(assert (=> d!39973 (=> (not res!63220) (not e!85595))))

(assert (=> d!39973 (= res!63220 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))))

(declare-fun lt!68311 () ListLongMap!1701)

(assert (=> d!39973 (= lt!68312 lt!68311)))

(declare-fun lt!68307 () Unit!4112)

(assert (=> d!39973 (= lt!68307 e!85584)))

(declare-fun c!24240 () Bool)

(assert (=> d!39973 (= c!24240 e!85587)))

(declare-fun res!63216 () Bool)

(assert (=> d!39973 (=> (not res!63216) (not e!85587))))

(assert (=> d!39973 (= res!63216 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))

(declare-fun e!85594 () ListLongMap!1701)

(assert (=> d!39973 (= lt!68311 e!85594)))

(declare-fun c!24241 () Bool)

(assert (=> d!39973 (= c!24241 (and (not (= (bvand (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39973 (validMask!0 (mask!7131 (v!3175 (underlying!449 thiss!992))))))

(assert (=> d!39973 (= (getCurrentListMap!537 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (_values!2826 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992))) (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) (minValue!2700 (v!3175 (underlying!449 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992)))) lt!68312)))

(declare-fun b!131214 () Bool)

(declare-fun res!63215 () Bool)

(assert (=> b!131214 (=> (not res!63215) (not e!85595))))

(assert (=> b!131214 (= res!63215 e!85585)))

(declare-fun res!63221 () Bool)

(assert (=> b!131214 (=> res!63221 e!85585)))

(declare-fun e!85589 () Bool)

(assert (=> b!131214 (= res!63221 (not e!85589))))

(declare-fun res!63219 () Bool)

(assert (=> b!131214 (=> (not res!63219) (not e!85589))))

(assert (=> b!131214 (= res!63219 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))

(declare-fun b!131215 () Bool)

(declare-fun call!14343 () ListLongMap!1701)

(assert (=> b!131215 (= e!85586 call!14343)))

(declare-fun b!131216 () Bool)

(declare-fun call!14347 () ListLongMap!1701)

(assert (=> b!131216 (= e!85594 (+!168 call!14347 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))))

(declare-fun c!24242 () Bool)

(declare-fun bm!14343 () Bool)

(assert (=> bm!14343 (= call!14347 (+!168 (ite c!24241 call!14344 (ite c!24242 call!14345 call!14343)) (ite (or c!24241 c!24242) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(declare-fun b!131217 () Bool)

(declare-fun Unit!4117 () Unit!4112)

(assert (=> b!131217 (= e!85584 Unit!4117)))

(declare-fun b!131218 () Bool)

(assert (=> b!131218 (= e!85595 e!85591)))

(declare-fun c!24239 () Bool)

(assert (=> b!131218 (= c!24239 (not (= (bvand (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!131219 () Bool)

(declare-fun res!63217 () Bool)

(assert (=> b!131219 (=> (not res!63217) (not e!85595))))

(assert (=> b!131219 (= res!63217 e!85593)))

(declare-fun c!24237 () Bool)

(assert (=> b!131219 (= c!24237 (not (= (bvand (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!131220 () Bool)

(declare-fun call!14348 () ListLongMap!1701)

(assert (=> b!131220 (= e!85586 call!14348)))

(declare-fun b!131221 () Bool)

(assert (=> b!131221 (= e!85589 (validKeyInArray!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!14344 () Bool)

(assert (=> bm!14344 (= call!14348 call!14347)))

(declare-fun b!131222 () Bool)

(assert (=> b!131222 (= e!85596 (= (apply!114 lt!68312 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun bm!14345 () Bool)

(assert (=> bm!14345 (= call!14343 call!14345)))

(declare-fun b!131223 () Bool)

(assert (=> b!131223 (= e!85594 e!85590)))

(assert (=> b!131223 (= c!24242 (and (not (= (bvand (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!131224 () Bool)

(assert (=> b!131224 (= e!85590 call!14348)))

(assert (= (and d!39973 c!24241) b!131216))

(assert (= (and d!39973 (not c!24241)) b!131223))

(assert (= (and b!131223 c!24242) b!131224))

(assert (= (and b!131223 (not c!24242)) b!131213))

(assert (= (and b!131213 c!24238) b!131220))

(assert (= (and b!131213 (not c!24238)) b!131215))

(assert (= (or b!131220 b!131215) bm!14345))

(assert (= (or b!131224 bm!14345) bm!14341))

(assert (= (or b!131224 b!131220) bm!14344))

(assert (= (or b!131216 bm!14341) bm!14342))

(assert (= (or b!131216 bm!14344) bm!14343))

(assert (= (and d!39973 res!63216) b!131210))

(assert (= (and d!39973 c!24240) b!131205))

(assert (= (and d!39973 (not c!24240)) b!131217))

(assert (= (and d!39973 res!63220) b!131214))

(assert (= (and b!131214 res!63219) b!131221))

(assert (= (and b!131214 (not res!63221)) b!131209))

(assert (= (and b!131209 res!63214) b!131211))

(assert (= (and b!131214 res!63215) b!131219))

(assert (= (and b!131219 c!24237) b!131208))

(assert (= (and b!131219 (not c!24237)) b!131207))

(assert (= (and b!131208 res!63218) b!131204))

(assert (= (or b!131208 b!131207) bm!14340))

(assert (= (and b!131219 res!63217) b!131218))

(assert (= (and b!131218 c!24239) b!131206))

(assert (= (and b!131218 (not c!24239)) b!131212))

(assert (= (and b!131206 res!63222) b!131222))

(assert (= (or b!131206 b!131212) bm!14339))

(declare-fun b_lambda!5869 () Bool)

(assert (=> (not b_lambda!5869) (not b!131211)))

(assert (=> b!131211 t!6158))

(declare-fun b_and!8145 () Bool)

(assert (= b_and!8133 (and (=> t!6158 result!3947) b_and!8145)))

(assert (=> b!131211 t!6160))

(declare-fun b_and!8147 () Bool)

(assert (= b_and!8135 (and (=> t!6160 result!3951) b_and!8147)))

(declare-fun m!154741 () Bool)

(assert (=> b!131221 m!154741))

(assert (=> b!131221 m!154741))

(declare-fun m!154743 () Bool)

(assert (=> b!131221 m!154743))

(declare-fun m!154745 () Bool)

(assert (=> bm!14343 m!154745))

(assert (=> d!39973 m!154599))

(assert (=> b!131209 m!154741))

(assert (=> b!131209 m!154741))

(declare-fun m!154747 () Bool)

(assert (=> b!131209 m!154747))

(declare-fun m!154749 () Bool)

(assert (=> b!131211 m!154749))

(assert (=> b!131211 m!154603))

(declare-fun m!154751 () Bool)

(assert (=> b!131211 m!154751))

(assert (=> b!131211 m!154603))

(assert (=> b!131211 m!154741))

(assert (=> b!131211 m!154749))

(assert (=> b!131211 m!154741))

(declare-fun m!154753 () Bool)

(assert (=> b!131211 m!154753))

(declare-fun m!154755 () Bool)

(assert (=> bm!14342 m!154755))

(declare-fun m!154757 () Bool)

(assert (=> bm!14339 m!154757))

(declare-fun m!154759 () Bool)

(assert (=> b!131222 m!154759))

(declare-fun m!154761 () Bool)

(assert (=> b!131204 m!154761))

(declare-fun m!154763 () Bool)

(assert (=> b!131205 m!154763))

(declare-fun m!154765 () Bool)

(assert (=> b!131205 m!154765))

(declare-fun m!154767 () Bool)

(assert (=> b!131205 m!154767))

(declare-fun m!154769 () Bool)

(assert (=> b!131205 m!154769))

(declare-fun m!154771 () Bool)

(assert (=> b!131205 m!154771))

(assert (=> b!131205 m!154763))

(assert (=> b!131205 m!154741))

(declare-fun m!154773 () Bool)

(assert (=> b!131205 m!154773))

(declare-fun m!154775 () Bool)

(assert (=> b!131205 m!154775))

(declare-fun m!154777 () Bool)

(assert (=> b!131205 m!154777))

(declare-fun m!154779 () Bool)

(assert (=> b!131205 m!154779))

(declare-fun m!154781 () Bool)

(assert (=> b!131205 m!154781))

(assert (=> b!131205 m!154771))

(declare-fun m!154783 () Bool)

(assert (=> b!131205 m!154783))

(declare-fun m!154785 () Bool)

(assert (=> b!131205 m!154785))

(declare-fun m!154787 () Bool)

(assert (=> b!131205 m!154787))

(assert (=> b!131205 m!154775))

(declare-fun m!154789 () Bool)

(assert (=> b!131205 m!154789))

(assert (=> b!131205 m!154785))

(declare-fun m!154791 () Bool)

(assert (=> b!131205 m!154791))

(assert (=> b!131205 m!154755))

(declare-fun m!154793 () Bool)

(assert (=> b!131216 m!154793))

(declare-fun m!154795 () Bool)

(assert (=> bm!14340 m!154795))

(assert (=> b!131210 m!154741))

(assert (=> b!131210 m!154741))

(assert (=> b!131210 m!154743))

(assert (=> b!130953 d!39973))

(declare-fun b!131233 () Bool)

(declare-fun e!85604 () Bool)

(declare-fun call!14351 () Bool)

(assert (=> b!131233 (= e!85604 call!14351)))

(declare-fun bm!14348 () Bool)

(assert (=> bm!14348 (= call!14351 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4588 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun d!39975 () Bool)

(declare-fun res!63228 () Bool)

(declare-fun e!85605 () Bool)

(assert (=> d!39975 (=> res!63228 e!85605)))

(assert (=> d!39975 (= res!63228 (bvsge #b00000000000000000000000000000000 (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))

(assert (=> d!39975 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992)))) e!85605)))

(declare-fun b!131234 () Bool)

(declare-fun e!85603 () Bool)

(assert (=> b!131234 (= e!85603 call!14351)))

(declare-fun b!131235 () Bool)

(assert (=> b!131235 (= e!85605 e!85604)))

(declare-fun c!24245 () Bool)

(assert (=> b!131235 (= c!24245 (validKeyInArray!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!131236 () Bool)

(assert (=> b!131236 (= e!85604 e!85603)))

(declare-fun lt!68335 () (_ BitVec 64))

(assert (=> b!131236 (= lt!68335 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!68336 () Unit!4112)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4752 (_ BitVec 64) (_ BitVec 32)) Unit!4112)

(assert (=> b!131236 (= lt!68336 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4588 (v!3175 (underlying!449 thiss!992))) lt!68335 #b00000000000000000000000000000000))))

(assert (=> b!131236 (arrayContainsKey!0 (_keys!4588 (v!3175 (underlying!449 thiss!992))) lt!68335 #b00000000000000000000000000000000)))

(declare-fun lt!68337 () Unit!4112)

(assert (=> b!131236 (= lt!68337 lt!68336)))

(declare-fun res!63227 () Bool)

(assert (=> b!131236 (= res!63227 (= (seekEntryOrOpen!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000) (_keys!4588 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992)))) (Found!283 #b00000000000000000000000000000000)))))

(assert (=> b!131236 (=> (not res!63227) (not e!85603))))

(assert (= (and d!39975 (not res!63228)) b!131235))

(assert (= (and b!131235 c!24245) b!131236))

(assert (= (and b!131235 (not c!24245)) b!131233))

(assert (= (and b!131236 res!63227) b!131234))

(assert (= (or b!131234 b!131233) bm!14348))

(declare-fun m!154797 () Bool)

(assert (=> bm!14348 m!154797))

(declare-fun m!154799 () Bool)

(assert (=> b!131235 m!154799))

(assert (=> b!131235 m!154799))

(declare-fun m!154801 () Bool)

(assert (=> b!131235 m!154801))

(assert (=> b!131236 m!154799))

(declare-fun m!154803 () Bool)

(assert (=> b!131236 m!154803))

(declare-fun m!154805 () Bool)

(assert (=> b!131236 m!154805))

(assert (=> b!131236 m!154799))

(declare-fun m!154807 () Bool)

(assert (=> b!131236 m!154807))

(assert (=> b!130947 d!39975))

(declare-fun d!39977 () Bool)

(declare-fun res!63235 () Bool)

(declare-fun e!85608 () Bool)

(assert (=> d!39977 (=> (not res!63235) (not e!85608))))

(declare-fun simpleValid!89 (LongMapFixedSize!1086) Bool)

(assert (=> d!39977 (= res!63235 (simpleValid!89 newMap!16))))

(assert (=> d!39977 (= (valid!515 newMap!16) e!85608)))

(declare-fun b!131243 () Bool)

(declare-fun res!63236 () Bool)

(assert (=> b!131243 (=> (not res!63236) (not e!85608))))

(declare-fun arrayCountValidKeys!0 (array!4752 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!131243 (= res!63236 (= (arrayCountValidKeys!0 (_keys!4588 newMap!16) #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))) (_size!592 newMap!16)))))

(declare-fun b!131244 () Bool)

(declare-fun res!63237 () Bool)

(assert (=> b!131244 (=> (not res!63237) (not e!85608))))

(assert (=> b!131244 (= res!63237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4588 newMap!16) (mask!7131 newMap!16)))))

(declare-fun b!131245 () Bool)

(declare-datatypes ((List!1731 0))(
  ( (Nil!1728) (Cons!1727 (h!2332 (_ BitVec 64)) (t!6166 List!1731)) )
))
(declare-fun arrayNoDuplicates!0 (array!4752 (_ BitVec 32) List!1731) Bool)

(assert (=> b!131245 (= e!85608 (arrayNoDuplicates!0 (_keys!4588 newMap!16) #b00000000000000000000000000000000 Nil!1728))))

(assert (= (and d!39977 res!63235) b!131243))

(assert (= (and b!131243 res!63236) b!131244))

(assert (= (and b!131244 res!63237) b!131245))

(declare-fun m!154809 () Bool)

(assert (=> d!39977 m!154809))

(declare-fun m!154811 () Bool)

(assert (=> b!131243 m!154811))

(declare-fun m!154813 () Bool)

(assert (=> b!131244 m!154813))

(declare-fun m!154815 () Bool)

(assert (=> b!131245 m!154815))

(assert (=> b!130959 d!39977))

(declare-fun d!39979 () Bool)

(assert (=> d!39979 (= (array_inv!1381 (_keys!4588 newMap!16)) (bvsge (size!2515 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!130955 d!39979))

(declare-fun d!39981 () Bool)

(assert (=> d!39981 (= (array_inv!1382 (_values!2826 newMap!16)) (bvsge (size!2516 (_values!2826 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!130955 d!39981))

(declare-fun mapIsEmpty!4605 () Bool)

(declare-fun mapRes!4605 () Bool)

(assert (=> mapIsEmpty!4605 mapRes!4605))

(declare-fun condMapEmpty!4605 () Bool)

(declare-fun mapDefault!4605 () ValueCell!1089)

(assert (=> mapNonEmpty!4595 (= condMapEmpty!4605 (= mapRest!4596 ((as const (Array (_ BitVec 32) ValueCell!1089)) mapDefault!4605)))))

(declare-fun e!85613 () Bool)

(assert (=> mapNonEmpty!4595 (= tp!11122 (and e!85613 mapRes!4605))))

(declare-fun b!131253 () Bool)

(assert (=> b!131253 (= e!85613 tp_is_empty!2865)))

(declare-fun b!131252 () Bool)

(declare-fun e!85614 () Bool)

(assert (=> b!131252 (= e!85614 tp_is_empty!2865)))

(declare-fun mapNonEmpty!4605 () Bool)

(declare-fun tp!11139 () Bool)

(assert (=> mapNonEmpty!4605 (= mapRes!4605 (and tp!11139 e!85614))))

(declare-fun mapValue!4605 () ValueCell!1089)

(declare-fun mapRest!4605 () (Array (_ BitVec 32) ValueCell!1089))

(declare-fun mapKey!4605 () (_ BitVec 32))

(assert (=> mapNonEmpty!4605 (= mapRest!4596 (store mapRest!4605 mapKey!4605 mapValue!4605))))

(assert (= (and mapNonEmpty!4595 condMapEmpty!4605) mapIsEmpty!4605))

(assert (= (and mapNonEmpty!4595 (not condMapEmpty!4605)) mapNonEmpty!4605))

(assert (= (and mapNonEmpty!4605 ((_ is ValueCellFull!1089) mapValue!4605)) b!131252))

(assert (= (and mapNonEmpty!4595 ((_ is ValueCellFull!1089) mapDefault!4605)) b!131253))

(declare-fun m!154817 () Bool)

(assert (=> mapNonEmpty!4605 m!154817))

(declare-fun mapIsEmpty!4606 () Bool)

(declare-fun mapRes!4606 () Bool)

(assert (=> mapIsEmpty!4606 mapRes!4606))

(declare-fun condMapEmpty!4606 () Bool)

(declare-fun mapDefault!4606 () ValueCell!1089)

(assert (=> mapNonEmpty!4596 (= condMapEmpty!4606 (= mapRest!4595 ((as const (Array (_ BitVec 32) ValueCell!1089)) mapDefault!4606)))))

(declare-fun e!85615 () Bool)

(assert (=> mapNonEmpty!4596 (= tp!11123 (and e!85615 mapRes!4606))))

(declare-fun b!131255 () Bool)

(assert (=> b!131255 (= e!85615 tp_is_empty!2865)))

(declare-fun b!131254 () Bool)

(declare-fun e!85616 () Bool)

(assert (=> b!131254 (= e!85616 tp_is_empty!2865)))

(declare-fun mapNonEmpty!4606 () Bool)

(declare-fun tp!11140 () Bool)

(assert (=> mapNonEmpty!4606 (= mapRes!4606 (and tp!11140 e!85616))))

(declare-fun mapValue!4606 () ValueCell!1089)

(declare-fun mapRest!4606 () (Array (_ BitVec 32) ValueCell!1089))

(declare-fun mapKey!4606 () (_ BitVec 32))

(assert (=> mapNonEmpty!4606 (= mapRest!4595 (store mapRest!4606 mapKey!4606 mapValue!4606))))

(assert (= (and mapNonEmpty!4596 condMapEmpty!4606) mapIsEmpty!4606))

(assert (= (and mapNonEmpty!4596 (not condMapEmpty!4606)) mapNonEmpty!4606))

(assert (= (and mapNonEmpty!4606 ((_ is ValueCellFull!1089) mapValue!4606)) b!131254))

(assert (= (and mapNonEmpty!4596 ((_ is ValueCellFull!1089) mapDefault!4606)) b!131255))

(declare-fun m!154819 () Bool)

(assert (=> mapNonEmpty!4606 m!154819))

(declare-fun b_lambda!5871 () Bool)

(assert (= b_lambda!5869 (or (and b!130948 b_free!2897) (and b!130955 b_free!2899 (= (defaultEntry!2843 newMap!16) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))))) b_lambda!5871)))

(check-sat (not b!131139) (not b!131205) (not b_next!2899) tp_is_empty!2865 (not d!39971) (not bm!14339) (not b!131027) (not b!131148) (not b!131209) (not bm!14316) (not bm!14343) (not d!39977) (not bm!14314) (not bm!14323) (not bm!14342) (not b!131210) (not b!131244) (not b!131116) (not b!131221) (not bm!14315) (not d!39957) (not bm!14311) (not b_lambda!5871) (not bm!14340) (not d!39973) (not bm!14320) (not b_lambda!5867) (not b!131160) (not b!131211) (not b!131131) (not b!131236) (not d!39969) (not b!131235) (not bm!14348) (not b!131115) (not bm!14322) (not b!131243) (not b!131029) (not b_next!2897) (not b!131204) (not mapNonEmpty!4605) (not b!131136) (not b!131216) (not b!131222) (not bm!14324) (not b!131119) (not d!39959) b_and!8145 (not bm!14318) (not b!131126) (not b!131161) (not bm!14301) (not mapNonEmpty!4606) (not bm!14321) (not b!131245) b_and!8147 (not bm!14319))
(check-sat b_and!8145 b_and!8147 (not b_next!2897) (not b_next!2899))
(get-model)

(declare-fun d!39983 () Bool)

(assert (=> d!39983 (= (validKeyInArray!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!131235 d!39983))

(declare-fun b!131280 () Bool)

(declare-fun e!85637 () Bool)

(declare-fun e!85635 () Bool)

(assert (=> b!131280 (= e!85637 e!85635)))

(assert (=> b!131280 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))

(declare-fun lt!68358 () ListLongMap!1701)

(declare-fun res!63246 () Bool)

(assert (=> b!131280 (= res!63246 (contains!889 lt!68358 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!131280 (=> (not res!63246) (not e!85635))))

(declare-fun e!85633 () Bool)

(declare-fun b!131281 () Bool)

(assert (=> b!131281 (= e!85633 (= lt!68358 (getCurrentListMapNoExtraKeys!135 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (_values!2826 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992))) (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) (minValue!2700 (v!3175 (underlying!449 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))))))))

(declare-fun b!131282 () Bool)

(declare-fun e!85631 () ListLongMap!1701)

(declare-fun e!85636 () ListLongMap!1701)

(assert (=> b!131282 (= e!85631 e!85636)))

(declare-fun c!24256 () Bool)

(assert (=> b!131282 (= c!24256 (validKeyInArray!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!131284 () Bool)

(declare-fun e!85632 () Bool)

(assert (=> b!131284 (= e!85632 e!85637)))

(declare-fun c!24257 () Bool)

(declare-fun e!85634 () Bool)

(assert (=> b!131284 (= c!24257 e!85634)))

(declare-fun res!63248 () Bool)

(assert (=> b!131284 (=> (not res!63248) (not e!85634))))

(assert (=> b!131284 (= res!63248 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))

(declare-fun b!131285 () Bool)

(assert (=> b!131285 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))

(assert (=> b!131285 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2516 (_values!2826 (v!3175 (underlying!449 thiss!992))))))))

(assert (=> b!131285 (= e!85635 (= (apply!114 lt!68358 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!131286 () Bool)

(declare-fun call!14354 () ListLongMap!1701)

(assert (=> b!131286 (= e!85636 call!14354)))

(declare-fun b!131287 () Bool)

(declare-fun isEmpty!410 (ListLongMap!1701) Bool)

(assert (=> b!131287 (= e!85633 (isEmpty!410 lt!68358))))

(declare-fun b!131288 () Bool)

(assert (=> b!131288 (= e!85634 (validKeyInArray!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!131288 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun bm!14351 () Bool)

(assert (=> bm!14351 (= call!14354 (getCurrentListMapNoExtraKeys!135 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (_values!2826 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992))) (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) (minValue!2700 (v!3175 (underlying!449 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun b!131289 () Bool)

(declare-fun res!63247 () Bool)

(assert (=> b!131289 (=> (not res!63247) (not e!85632))))

(assert (=> b!131289 (= res!63247 (not (contains!889 lt!68358 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!39985 () Bool)

(assert (=> d!39985 e!85632))

(declare-fun res!63249 () Bool)

(assert (=> d!39985 (=> (not res!63249) (not e!85632))))

(assert (=> d!39985 (= res!63249 (not (contains!889 lt!68358 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39985 (= lt!68358 e!85631)))

(declare-fun c!24254 () Bool)

(assert (=> d!39985 (= c!24254 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))

(assert (=> d!39985 (validMask!0 (mask!7131 (v!3175 (underlying!449 thiss!992))))))

(assert (=> d!39985 (= (getCurrentListMapNoExtraKeys!135 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (_values!2826 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992))) (extraKeys!2612 (v!3175 (underlying!449 thiss!992))) (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) (minValue!2700 (v!3175 (underlying!449 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992)))) lt!68358)))

(declare-fun b!131283 () Bool)

(assert (=> b!131283 (= e!85631 (ListLongMap!1702 Nil!1727))))

(declare-fun b!131290 () Bool)

(declare-fun lt!68352 () Unit!4112)

(declare-fun lt!68355 () Unit!4112)

(assert (=> b!131290 (= lt!68352 lt!68355)))

(declare-fun lt!68353 () (_ BitVec 64))

(declare-fun lt!68357 () ListLongMap!1701)

(declare-fun lt!68356 () V!3467)

(declare-fun lt!68354 () (_ BitVec 64))

(assert (=> b!131290 (not (contains!889 (+!168 lt!68357 (tuple2!2597 lt!68354 lt!68356)) lt!68353))))

(declare-fun addStillNotContains!61 (ListLongMap!1701 (_ BitVec 64) V!3467 (_ BitVec 64)) Unit!4112)

(assert (=> b!131290 (= lt!68355 (addStillNotContains!61 lt!68357 lt!68354 lt!68356 lt!68353))))

(assert (=> b!131290 (= lt!68353 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!131290 (= lt!68356 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!131290 (= lt!68354 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!131290 (= lt!68357 call!14354)))

(assert (=> b!131290 (= e!85636 (+!168 call!14354 (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!131291 () Bool)

(assert (=> b!131291 (= e!85637 e!85633)))

(declare-fun c!24255 () Bool)

(assert (=> b!131291 (= c!24255 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))

(assert (= (and d!39985 c!24254) b!131283))

(assert (= (and d!39985 (not c!24254)) b!131282))

(assert (= (and b!131282 c!24256) b!131290))

(assert (= (and b!131282 (not c!24256)) b!131286))

(assert (= (or b!131290 b!131286) bm!14351))

(assert (= (and d!39985 res!63249) b!131289))

(assert (= (and b!131289 res!63247) b!131284))

(assert (= (and b!131284 res!63248) b!131288))

(assert (= (and b!131284 c!24257) b!131280))

(assert (= (and b!131284 (not c!24257)) b!131291))

(assert (= (and b!131280 res!63246) b!131285))

(assert (= (and b!131291 c!24255) b!131281))

(assert (= (and b!131291 (not c!24255)) b!131287))

(declare-fun b_lambda!5873 () Bool)

(assert (=> (not b_lambda!5873) (not b!131285)))

(assert (=> b!131285 t!6158))

(declare-fun b_and!8149 () Bool)

(assert (= b_and!8145 (and (=> t!6158 result!3947) b_and!8149)))

(assert (=> b!131285 t!6160))

(declare-fun b_and!8151 () Bool)

(assert (= b_and!8147 (and (=> t!6160 result!3951) b_and!8151)))

(declare-fun b_lambda!5875 () Bool)

(assert (=> (not b_lambda!5875) (not b!131290)))

(assert (=> b!131290 t!6158))

(declare-fun b_and!8153 () Bool)

(assert (= b_and!8149 (and (=> t!6158 result!3947) b_and!8153)))

(assert (=> b!131290 t!6160))

(declare-fun b_and!8155 () Bool)

(assert (= b_and!8151 (and (=> t!6160 result!3951) b_and!8155)))

(declare-fun m!154821 () Bool)

(assert (=> b!131290 m!154821))

(declare-fun m!154823 () Bool)

(assert (=> b!131290 m!154823))

(assert (=> b!131290 m!154749))

(assert (=> b!131290 m!154603))

(assert (=> b!131290 m!154749))

(assert (=> b!131290 m!154603))

(assert (=> b!131290 m!154751))

(assert (=> b!131290 m!154741))

(assert (=> b!131290 m!154821))

(declare-fun m!154825 () Bool)

(assert (=> b!131290 m!154825))

(declare-fun m!154827 () Bool)

(assert (=> b!131290 m!154827))

(declare-fun m!154829 () Bool)

(assert (=> d!39985 m!154829))

(assert (=> d!39985 m!154599))

(declare-fun m!154831 () Bool)

(assert (=> b!131281 m!154831))

(assert (=> b!131285 m!154749))

(assert (=> b!131285 m!154603))

(assert (=> b!131285 m!154749))

(assert (=> b!131285 m!154603))

(assert (=> b!131285 m!154751))

(assert (=> b!131285 m!154741))

(assert (=> b!131285 m!154741))

(declare-fun m!154833 () Bool)

(assert (=> b!131285 m!154833))

(assert (=> b!131288 m!154741))

(assert (=> b!131288 m!154741))

(assert (=> b!131288 m!154743))

(assert (=> bm!14351 m!154831))

(assert (=> b!131282 m!154741))

(assert (=> b!131282 m!154741))

(assert (=> b!131282 m!154743))

(declare-fun m!154835 () Bool)

(assert (=> b!131287 m!154835))

(declare-fun m!154837 () Bool)

(assert (=> b!131289 m!154837))

(assert (=> b!131280 m!154741))

(assert (=> b!131280 m!154741))

(declare-fun m!154839 () Bool)

(assert (=> b!131280 m!154839))

(assert (=> bm!14342 d!39985))

(declare-fun b!131292 () Bool)

(declare-fun e!85642 () Bool)

(declare-fun lt!68364 () ListLongMap!1701)

(assert (=> b!131292 (= e!85642 (= (apply!114 lt!68364 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2700 newMap!16)))))

(declare-fun b!131293 () Bool)

(declare-fun e!85638 () Unit!4112)

(declare-fun lt!68375 () Unit!4112)

(assert (=> b!131293 (= e!85638 lt!68375)))

(declare-fun lt!68379 () ListLongMap!1701)

(assert (=> b!131293 (= lt!68379 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68373 () (_ BitVec 64))

(assert (=> b!131293 (= lt!68373 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68372 () (_ BitVec 64))

(assert (=> b!131293 (= lt!68372 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68378 () Unit!4112)

(assert (=> b!131293 (= lt!68378 (addStillContains!90 lt!68379 lt!68373 (zeroValue!2700 newMap!16) lt!68372))))

(assert (=> b!131293 (contains!889 (+!168 lt!68379 (tuple2!2597 lt!68373 (zeroValue!2700 newMap!16))) lt!68372)))

(declare-fun lt!68367 () Unit!4112)

(assert (=> b!131293 (= lt!68367 lt!68378)))

(declare-fun lt!68377 () ListLongMap!1701)

(assert (=> b!131293 (= lt!68377 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68361 () (_ BitVec 64))

(assert (=> b!131293 (= lt!68361 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68374 () (_ BitVec 64))

(assert (=> b!131293 (= lt!68374 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68365 () Unit!4112)

(assert (=> b!131293 (= lt!68365 (addApplyDifferent!90 lt!68377 lt!68361 (minValue!2700 newMap!16) lt!68374))))

(assert (=> b!131293 (= (apply!114 (+!168 lt!68377 (tuple2!2597 lt!68361 (minValue!2700 newMap!16))) lt!68374) (apply!114 lt!68377 lt!68374))))

(declare-fun lt!68369 () Unit!4112)

(assert (=> b!131293 (= lt!68369 lt!68365)))

(declare-fun lt!68371 () ListLongMap!1701)

(assert (=> b!131293 (= lt!68371 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68360 () (_ BitVec 64))

(assert (=> b!131293 (= lt!68360 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68370 () (_ BitVec 64))

(assert (=> b!131293 (= lt!68370 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68366 () Unit!4112)

(assert (=> b!131293 (= lt!68366 (addApplyDifferent!90 lt!68371 lt!68360 (zeroValue!2700 newMap!16) lt!68370))))

(assert (=> b!131293 (= (apply!114 (+!168 lt!68371 (tuple2!2597 lt!68360 (zeroValue!2700 newMap!16))) lt!68370) (apply!114 lt!68371 lt!68370))))

(declare-fun lt!68376 () Unit!4112)

(assert (=> b!131293 (= lt!68376 lt!68366)))

(declare-fun lt!68362 () ListLongMap!1701)

(assert (=> b!131293 (= lt!68362 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68380 () (_ BitVec 64))

(assert (=> b!131293 (= lt!68380 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68368 () (_ BitVec 64))

(assert (=> b!131293 (= lt!68368 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!131293 (= lt!68375 (addApplyDifferent!90 lt!68362 lt!68380 (minValue!2700 newMap!16) lt!68368))))

(assert (=> b!131293 (= (apply!114 (+!168 lt!68362 (tuple2!2597 lt!68380 (minValue!2700 newMap!16))) lt!68368) (apply!114 lt!68362 lt!68368))))

(declare-fun bm!14352 () Bool)

(declare-fun call!14359 () Bool)

(assert (=> bm!14352 (= call!14359 (contains!889 lt!68364 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!14353 () Bool)

(declare-fun call!14355 () Bool)

(assert (=> bm!14353 (= call!14355 (contains!889 lt!68364 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!131294 () Bool)

(declare-fun e!85645 () Bool)

(declare-fun e!85650 () Bool)

(assert (=> b!131294 (= e!85645 e!85650)))

(declare-fun res!63258 () Bool)

(assert (=> b!131294 (= res!63258 call!14359)))

(assert (=> b!131294 (=> (not res!63258) (not e!85650))))

(declare-fun bm!14354 () Bool)

(declare-fun call!14358 () ListLongMap!1701)

(declare-fun call!14357 () ListLongMap!1701)

(assert (=> bm!14354 (= call!14358 call!14357)))

(declare-fun b!131295 () Bool)

(declare-fun e!85647 () Bool)

(assert (=> b!131295 (= e!85647 (not call!14355))))

(declare-fun b!131296 () Bool)

(assert (=> b!131296 (= e!85647 e!85642)))

(declare-fun res!63254 () Bool)

(assert (=> b!131296 (= res!63254 call!14355)))

(assert (=> b!131296 (=> (not res!63254) (not e!85642))))

(declare-fun b!131297 () Bool)

(declare-fun e!85639 () Bool)

(declare-fun e!85646 () Bool)

(assert (=> b!131297 (= e!85639 e!85646)))

(declare-fun res!63250 () Bool)

(assert (=> b!131297 (=> (not res!63250) (not e!85646))))

(assert (=> b!131297 (= res!63250 (contains!889 lt!68364 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!131297 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(declare-fun b!131298 () Bool)

(declare-fun e!85641 () Bool)

(assert (=> b!131298 (= e!85641 (validKeyInArray!0 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!131299 () Bool)

(assert (=> b!131299 (= e!85646 (= (apply!114 lt!68364 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)) (get!1475 (select (arr!2249 (_values!2826 newMap!16)) #b00000000000000000000000000000000) (dynLambda!422 (defaultEntry!2843 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!131299 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2516 (_values!2826 newMap!16))))))

(assert (=> b!131299 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(declare-fun b!131300 () Bool)

(assert (=> b!131300 (= e!85645 (not call!14359))))

(declare-fun bm!14355 () Bool)

(assert (=> bm!14355 (= call!14357 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun b!131301 () Bool)

(declare-fun c!24259 () Bool)

(assert (=> b!131301 (= c!24259 (and (not (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!85644 () ListLongMap!1701)

(declare-fun e!85640 () ListLongMap!1701)

(assert (=> b!131301 (= e!85644 e!85640)))

(declare-fun d!39987 () Bool)

(declare-fun e!85649 () Bool)

(assert (=> d!39987 e!85649))

(declare-fun res!63256 () Bool)

(assert (=> d!39987 (=> (not res!63256) (not e!85649))))

(assert (=> d!39987 (= res!63256 (or (bvsge #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))))

(declare-fun lt!68363 () ListLongMap!1701)

(assert (=> d!39987 (= lt!68364 lt!68363)))

(declare-fun lt!68359 () Unit!4112)

(assert (=> d!39987 (= lt!68359 e!85638)))

(declare-fun c!24261 () Bool)

(assert (=> d!39987 (= c!24261 e!85641)))

(declare-fun res!63252 () Bool)

(assert (=> d!39987 (=> (not res!63252) (not e!85641))))

(assert (=> d!39987 (= res!63252 (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(declare-fun e!85648 () ListLongMap!1701)

(assert (=> d!39987 (= lt!68363 e!85648)))

(declare-fun c!24262 () Bool)

(assert (=> d!39987 (= c!24262 (and (not (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39987 (validMask!0 (mask!7131 newMap!16))))

(assert (=> d!39987 (= (getCurrentListMap!537 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)) lt!68364)))

(declare-fun b!131302 () Bool)

(declare-fun res!63251 () Bool)

(assert (=> b!131302 (=> (not res!63251) (not e!85649))))

(assert (=> b!131302 (= res!63251 e!85639)))

(declare-fun res!63257 () Bool)

(assert (=> b!131302 (=> res!63257 e!85639)))

(declare-fun e!85643 () Bool)

(assert (=> b!131302 (= res!63257 (not e!85643))))

(declare-fun res!63255 () Bool)

(assert (=> b!131302 (=> (not res!63255) (not e!85643))))

(assert (=> b!131302 (= res!63255 (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(declare-fun b!131303 () Bool)

(declare-fun call!14356 () ListLongMap!1701)

(assert (=> b!131303 (= e!85640 call!14356)))

(declare-fun b!131304 () Bool)

(declare-fun call!14360 () ListLongMap!1701)

(assert (=> b!131304 (= e!85648 (+!168 call!14360 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 newMap!16))))))

(declare-fun bm!14356 () Bool)

(declare-fun c!24263 () Bool)

(assert (=> bm!14356 (= call!14360 (+!168 (ite c!24262 call!14357 (ite c!24263 call!14358 call!14356)) (ite (or c!24262 c!24263) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 newMap!16)) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 newMap!16)))))))

(declare-fun b!131305 () Bool)

(declare-fun Unit!4118 () Unit!4112)

(assert (=> b!131305 (= e!85638 Unit!4118)))

(declare-fun b!131306 () Bool)

(assert (=> b!131306 (= e!85649 e!85645)))

(declare-fun c!24260 () Bool)

(assert (=> b!131306 (= c!24260 (not (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!131307 () Bool)

(declare-fun res!63253 () Bool)

(assert (=> b!131307 (=> (not res!63253) (not e!85649))))

(assert (=> b!131307 (= res!63253 e!85647)))

(declare-fun c!24258 () Bool)

(assert (=> b!131307 (= c!24258 (not (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!131308 () Bool)

(declare-fun call!14361 () ListLongMap!1701)

(assert (=> b!131308 (= e!85640 call!14361)))

(declare-fun b!131309 () Bool)

(assert (=> b!131309 (= e!85643 (validKeyInArray!0 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!14357 () Bool)

(assert (=> bm!14357 (= call!14361 call!14360)))

(declare-fun b!131310 () Bool)

(assert (=> b!131310 (= e!85650 (= (apply!114 lt!68364 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2700 newMap!16)))))

(declare-fun bm!14358 () Bool)

(assert (=> bm!14358 (= call!14356 call!14358)))

(declare-fun b!131311 () Bool)

(assert (=> b!131311 (= e!85648 e!85644)))

(assert (=> b!131311 (= c!24263 (and (not (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!131312 () Bool)

(assert (=> b!131312 (= e!85644 call!14361)))

(assert (= (and d!39987 c!24262) b!131304))

(assert (= (and d!39987 (not c!24262)) b!131311))

(assert (= (and b!131311 c!24263) b!131312))

(assert (= (and b!131311 (not c!24263)) b!131301))

(assert (= (and b!131301 c!24259) b!131308))

(assert (= (and b!131301 (not c!24259)) b!131303))

(assert (= (or b!131308 b!131303) bm!14358))

(assert (= (or b!131312 bm!14358) bm!14354))

(assert (= (or b!131312 b!131308) bm!14357))

(assert (= (or b!131304 bm!14354) bm!14355))

(assert (= (or b!131304 bm!14357) bm!14356))

(assert (= (and d!39987 res!63252) b!131298))

(assert (= (and d!39987 c!24261) b!131293))

(assert (= (and d!39987 (not c!24261)) b!131305))

(assert (= (and d!39987 res!63256) b!131302))

(assert (= (and b!131302 res!63255) b!131309))

(assert (= (and b!131302 (not res!63257)) b!131297))

(assert (= (and b!131297 res!63250) b!131299))

(assert (= (and b!131302 res!63251) b!131307))

(assert (= (and b!131307 c!24258) b!131296))

(assert (= (and b!131307 (not c!24258)) b!131295))

(assert (= (and b!131296 res!63254) b!131292))

(assert (= (or b!131296 b!131295) bm!14353))

(assert (= (and b!131307 res!63253) b!131306))

(assert (= (and b!131306 c!24260) b!131294))

(assert (= (and b!131306 (not c!24260)) b!131300))

(assert (= (and b!131294 res!63258) b!131310))

(assert (= (or b!131294 b!131300) bm!14352))

(declare-fun b_lambda!5877 () Bool)

(assert (=> (not b_lambda!5877) (not b!131299)))

(declare-fun t!6168 () Bool)

(declare-fun tb!2401 () Bool)

(assert (=> (and b!130948 (= (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) (defaultEntry!2843 newMap!16)) t!6168) tb!2401))

(declare-fun result!3961 () Bool)

(assert (=> tb!2401 (= result!3961 tp_is_empty!2865)))

(assert (=> b!131299 t!6168))

(declare-fun b_and!8157 () Bool)

(assert (= b_and!8153 (and (=> t!6168 result!3961) b_and!8157)))

(declare-fun t!6170 () Bool)

(declare-fun tb!2403 () Bool)

(assert (=> (and b!130955 (= (defaultEntry!2843 newMap!16) (defaultEntry!2843 newMap!16)) t!6170) tb!2403))

(declare-fun result!3963 () Bool)

(assert (= result!3963 result!3961))

(assert (=> b!131299 t!6170))

(declare-fun b_and!8159 () Bool)

(assert (= b_and!8155 (and (=> t!6170 result!3963) b_and!8159)))

(declare-fun m!154841 () Bool)

(assert (=> b!131309 m!154841))

(assert (=> b!131309 m!154841))

(declare-fun m!154843 () Bool)

(assert (=> b!131309 m!154843))

(declare-fun m!154845 () Bool)

(assert (=> bm!14356 m!154845))

(declare-fun m!154847 () Bool)

(assert (=> d!39987 m!154847))

(assert (=> b!131297 m!154841))

(assert (=> b!131297 m!154841))

(declare-fun m!154849 () Bool)

(assert (=> b!131297 m!154849))

(declare-fun m!154851 () Bool)

(assert (=> b!131299 m!154851))

(declare-fun m!154853 () Bool)

(assert (=> b!131299 m!154853))

(declare-fun m!154855 () Bool)

(assert (=> b!131299 m!154855))

(assert (=> b!131299 m!154853))

(assert (=> b!131299 m!154841))

(assert (=> b!131299 m!154851))

(assert (=> b!131299 m!154841))

(declare-fun m!154857 () Bool)

(assert (=> b!131299 m!154857))

(declare-fun m!154859 () Bool)

(assert (=> bm!14355 m!154859))

(declare-fun m!154861 () Bool)

(assert (=> bm!14352 m!154861))

(declare-fun m!154863 () Bool)

(assert (=> b!131310 m!154863))

(declare-fun m!154865 () Bool)

(assert (=> b!131292 m!154865))

(declare-fun m!154867 () Bool)

(assert (=> b!131293 m!154867))

(declare-fun m!154869 () Bool)

(assert (=> b!131293 m!154869))

(declare-fun m!154871 () Bool)

(assert (=> b!131293 m!154871))

(declare-fun m!154873 () Bool)

(assert (=> b!131293 m!154873))

(declare-fun m!154875 () Bool)

(assert (=> b!131293 m!154875))

(assert (=> b!131293 m!154867))

(assert (=> b!131293 m!154841))

(declare-fun m!154877 () Bool)

(assert (=> b!131293 m!154877))

(declare-fun m!154879 () Bool)

(assert (=> b!131293 m!154879))

(declare-fun m!154881 () Bool)

(assert (=> b!131293 m!154881))

(declare-fun m!154883 () Bool)

(assert (=> b!131293 m!154883))

(declare-fun m!154885 () Bool)

(assert (=> b!131293 m!154885))

(assert (=> b!131293 m!154875))

(declare-fun m!154887 () Bool)

(assert (=> b!131293 m!154887))

(declare-fun m!154889 () Bool)

(assert (=> b!131293 m!154889))

(declare-fun m!154891 () Bool)

(assert (=> b!131293 m!154891))

(assert (=> b!131293 m!154879))

(declare-fun m!154893 () Bool)

(assert (=> b!131293 m!154893))

(assert (=> b!131293 m!154889))

(declare-fun m!154895 () Bool)

(assert (=> b!131293 m!154895))

(assert (=> b!131293 m!154859))

(declare-fun m!154897 () Bool)

(assert (=> b!131304 m!154897))

(declare-fun m!154899 () Bool)

(assert (=> bm!14353 m!154899))

(assert (=> b!131298 m!154841))

(assert (=> b!131298 m!154841))

(assert (=> b!131298 m!154843))

(assert (=> d!39971 d!39987))

(declare-fun b!131329 () Bool)

(declare-fun e!85662 () Bool)

(declare-fun call!14366 () Bool)

(assert (=> b!131329 (= e!85662 (not call!14366))))

(declare-fun b!131330 () Bool)

(declare-fun res!63268 () Bool)

(assert (=> b!131330 (=> (not res!63268) (not e!85662))))

(declare-fun lt!68385 () SeekEntryResult!283)

(assert (=> b!131330 (= res!63268 (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3293 lt!68385)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!131330 (and (bvsge (index!3293 lt!68385) #b00000000000000000000000000000000) (bvslt (index!3293 lt!68385) (size!2515 (_keys!4588 newMap!16))))))

(declare-fun b!131331 () Bool)

(declare-fun res!63269 () Bool)

(assert (=> b!131331 (=> (not res!63269) (not e!85662))))

(declare-fun call!14367 () Bool)

(assert (=> b!131331 (= res!63269 call!14367)))

(declare-fun e!85661 () Bool)

(assert (=> b!131331 (= e!85661 e!85662)))

(declare-fun b!131332 () Bool)

(declare-fun e!85659 () Bool)

(assert (=> b!131332 (= e!85659 (not call!14366))))

(declare-fun b!131333 () Bool)

(declare-fun e!85660 () Bool)

(assert (=> b!131333 (= e!85660 e!85659)))

(declare-fun res!63267 () Bool)

(assert (=> b!131333 (= res!63267 call!14367)))

(assert (=> b!131333 (=> (not res!63267) (not e!85659))))

(declare-fun b!131334 () Bool)

(assert (=> b!131334 (= e!85660 e!85661)))

(declare-fun c!24268 () Bool)

(assert (=> b!131334 (= c!24268 ((_ is MissingVacant!283) lt!68385))))

(declare-fun b!131335 () Bool)

(assert (=> b!131335 (and (bvsge (index!3290 lt!68385) #b00000000000000000000000000000000) (bvslt (index!3290 lt!68385) (size!2515 (_keys!4588 newMap!16))))))

(declare-fun res!63270 () Bool)

(assert (=> b!131335 (= res!63270 (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3290 lt!68385)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!131335 (=> (not res!63270) (not e!85659))))

(declare-fun bm!14364 () Bool)

(assert (=> bm!14364 (= call!14366 (arrayContainsKey!0 (_keys!4588 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!131336 () Bool)

(assert (=> b!131336 (= e!85661 ((_ is Undefined!283) lt!68385))))

(declare-fun d!39989 () Bool)

(assert (=> d!39989 e!85660))

(declare-fun c!24269 () Bool)

(assert (=> d!39989 (= c!24269 ((_ is MissingZero!283) lt!68385))))

(assert (=> d!39989 (= lt!68385 (seekEntryOrOpen!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (_keys!4588 newMap!16) (mask!7131 newMap!16)))))

(declare-fun lt!68386 () Unit!4112)

(declare-fun choose!807 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 (_ BitVec 64) Int) Unit!4112)

(assert (=> d!39989 (= lt!68386 (choose!807 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (defaultEntry!2843 newMap!16)))))

(assert (=> d!39989 (validMask!0 (mask!7131 newMap!16))))

(assert (=> d!39989 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!59 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (defaultEntry!2843 newMap!16)) lt!68386)))

(declare-fun bm!14363 () Bool)

(assert (=> bm!14363 (= call!14367 (inRange!0 (ite c!24269 (index!3290 lt!68385) (index!3293 lt!68385)) (mask!7131 newMap!16)))))

(assert (= (and d!39989 c!24269) b!131333))

(assert (= (and d!39989 (not c!24269)) b!131334))

(assert (= (and b!131333 res!63267) b!131335))

(assert (= (and b!131335 res!63270) b!131332))

(assert (= (and b!131334 c!24268) b!131331))

(assert (= (and b!131334 (not c!24268)) b!131336))

(assert (= (and b!131331 res!63269) b!131330))

(assert (= (and b!131330 res!63268) b!131329))

(assert (= (or b!131333 b!131331) bm!14363))

(assert (= (or b!131332 b!131329) bm!14364))

(assert (=> bm!14364 m!154607))

(assert (=> bm!14364 m!154695))

(declare-fun m!154901 () Bool)

(assert (=> bm!14363 m!154901))

(assert (=> d!39989 m!154607))

(assert (=> d!39989 m!154709))

(assert (=> d!39989 m!154607))

(declare-fun m!154903 () Bool)

(assert (=> d!39989 m!154903))

(assert (=> d!39989 m!154847))

(declare-fun m!154905 () Bool)

(assert (=> b!131335 m!154905))

(declare-fun m!154907 () Bool)

(assert (=> b!131330 m!154907))

(assert (=> bm!14318 d!39989))

(declare-fun d!39991 () Bool)

(declare-fun isEmpty!411 (Option!175) Bool)

(assert (=> d!39991 (= (isDefined!123 (getValueByKey!169 (toList!866 lt!68158) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355))) (not (isEmpty!411 (getValueByKey!169 (toList!866 lt!68158) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))))

(declare-fun bs!5448 () Bool)

(assert (= bs!5448 d!39991))

(assert (=> bs!5448 m!154675))

(declare-fun m!154909 () Bool)

(assert (=> bs!5448 m!154909))

(assert (=> b!131029 d!39991))

(declare-fun b!131348 () Bool)

(declare-fun e!85668 () Option!175)

(assert (=> b!131348 (= e!85668 None!173)))

(declare-fun b!131345 () Bool)

(declare-fun e!85667 () Option!175)

(assert (=> b!131345 (= e!85667 (Some!174 (_2!1308 (h!2331 (toList!866 lt!68158)))))))

(declare-fun b!131346 () Bool)

(assert (=> b!131346 (= e!85667 e!85668)))

(declare-fun c!24275 () Bool)

(assert (=> b!131346 (= c!24275 (and ((_ is Cons!1726) (toList!866 lt!68158)) (not (= (_1!1308 (h!2331 (toList!866 lt!68158))) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))))

(declare-fun b!131347 () Bool)

(assert (=> b!131347 (= e!85668 (getValueByKey!169 (t!6161 (toList!866 lt!68158)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun c!24274 () Bool)

(declare-fun d!39993 () Bool)

(assert (=> d!39993 (= c!24274 (and ((_ is Cons!1726) (toList!866 lt!68158)) (= (_1!1308 (h!2331 (toList!866 lt!68158))) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355))))))

(assert (=> d!39993 (= (getValueByKey!169 (toList!866 lt!68158) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) e!85667)))

(assert (= (and d!39993 c!24274) b!131345))

(assert (= (and d!39993 (not c!24274)) b!131346))

(assert (= (and b!131346 c!24275) b!131347))

(assert (= (and b!131346 (not c!24275)) b!131348))

(assert (=> b!131347 m!154607))

(declare-fun m!154911 () Bool)

(assert (=> b!131347 m!154911))

(assert (=> b!131029 d!39993))

(assert (=> bm!14322 d!39971))

(declare-fun d!39995 () Bool)

(assert (=> d!39995 (isDefined!123 (getValueByKey!169 (toList!866 lt!68158) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun lt!68389 () Unit!4112)

(declare-fun choose!808 (List!1730 (_ BitVec 64)) Unit!4112)

(assert (=> d!39995 (= lt!68389 (choose!808 (toList!866 lt!68158) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun e!85671 () Bool)

(assert (=> d!39995 e!85671))

(declare-fun res!63273 () Bool)

(assert (=> d!39995 (=> (not res!63273) (not e!85671))))

(declare-fun isStrictlySorted!315 (List!1730) Bool)

(assert (=> d!39995 (= res!63273 (isStrictlySorted!315 (toList!866 lt!68158)))))

(assert (=> d!39995 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!122 (toList!866 lt!68158) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) lt!68389)))

(declare-fun b!131351 () Bool)

(assert (=> b!131351 (= e!85671 (containsKey!173 (toList!866 lt!68158) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(assert (= (and d!39995 res!63273) b!131351))

(assert (=> d!39995 m!154607))

(assert (=> d!39995 m!154675))

(assert (=> d!39995 m!154675))

(assert (=> d!39995 m!154677))

(assert (=> d!39995 m!154607))

(declare-fun m!154913 () Bool)

(assert (=> d!39995 m!154913))

(declare-fun m!154915 () Bool)

(assert (=> d!39995 m!154915))

(assert (=> b!131351 m!154607))

(assert (=> b!131351 m!154671))

(assert (=> b!131027 d!39995))

(assert (=> b!131027 d!39991))

(assert (=> b!131027 d!39993))

(declare-fun d!39997 () Bool)

(declare-fun get!1478 (Option!175) V!3467)

(assert (=> d!39997 (= (apply!114 lt!68312 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1478 (getValueByKey!169 (toList!866 lt!68312) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!5449 () Bool)

(assert (= bs!5449 d!39997))

(assert (=> bs!5449 m!154741))

(declare-fun m!154917 () Bool)

(assert (=> bs!5449 m!154917))

(assert (=> bs!5449 m!154917))

(declare-fun m!154919 () Bool)

(assert (=> bs!5449 m!154919))

(assert (=> b!131211 d!39997))

(declare-fun d!39999 () Bool)

(declare-fun c!24276 () Bool)

(assert (=> d!39999 (= c!24276 ((_ is ValueCellFull!1089) (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!85672 () V!3467)

(assert (=> d!39999 (= (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!85672)))

(declare-fun b!131352 () Bool)

(assert (=> b!131352 (= e!85672 (get!1476 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!131353 () Bool)

(assert (=> b!131353 (= e!85672 (get!1477 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39999 c!24276) b!131352))

(assert (= (and d!39999 (not c!24276)) b!131353))

(assert (=> b!131352 m!154749))

(assert (=> b!131352 m!154603))

(declare-fun m!154921 () Bool)

(assert (=> b!131352 m!154921))

(assert (=> b!131353 m!154749))

(assert (=> b!131353 m!154603))

(declare-fun m!154923 () Bool)

(assert (=> b!131353 m!154923))

(assert (=> b!131211 d!39999))

(declare-fun d!40001 () Bool)

(declare-fun e!85673 () Bool)

(assert (=> d!40001 e!85673))

(declare-fun res!63274 () Bool)

(assert (=> d!40001 (=> res!63274 e!85673)))

(declare-fun lt!68391 () Bool)

(assert (=> d!40001 (= res!63274 (not lt!68391))))

(declare-fun lt!68390 () Bool)

(assert (=> d!40001 (= lt!68391 lt!68390)))

(declare-fun lt!68392 () Unit!4112)

(declare-fun e!85674 () Unit!4112)

(assert (=> d!40001 (= lt!68392 e!85674)))

(declare-fun c!24277 () Bool)

(assert (=> d!40001 (= c!24277 lt!68390)))

(assert (=> d!40001 (= lt!68390 (containsKey!173 (toList!866 lt!68312) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!40001 (= (contains!889 lt!68312 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!68391)))

(declare-fun b!131354 () Bool)

(declare-fun lt!68393 () Unit!4112)

(assert (=> b!131354 (= e!85674 lt!68393)))

(assert (=> b!131354 (= lt!68393 (lemmaContainsKeyImpliesGetValueByKeyDefined!122 (toList!866 lt!68312) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!131354 (isDefined!123 (getValueByKey!169 (toList!866 lt!68312) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!131355 () Bool)

(declare-fun Unit!4119 () Unit!4112)

(assert (=> b!131355 (= e!85674 Unit!4119)))

(declare-fun b!131356 () Bool)

(assert (=> b!131356 (= e!85673 (isDefined!123 (getValueByKey!169 (toList!866 lt!68312) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!40001 c!24277) b!131354))

(assert (= (and d!40001 (not c!24277)) b!131355))

(assert (= (and d!40001 (not res!63274)) b!131356))

(assert (=> d!40001 m!154741))

(declare-fun m!154925 () Bool)

(assert (=> d!40001 m!154925))

(assert (=> b!131354 m!154741))

(declare-fun m!154927 () Bool)

(assert (=> b!131354 m!154927))

(assert (=> b!131354 m!154741))

(assert (=> b!131354 m!154917))

(assert (=> b!131354 m!154917))

(declare-fun m!154929 () Bool)

(assert (=> b!131354 m!154929))

(assert (=> b!131356 m!154741))

(assert (=> b!131356 m!154917))

(assert (=> b!131356 m!154917))

(assert (=> b!131356 m!154929))

(assert (=> b!131209 d!40001))

(declare-fun b!131369 () Bool)

(declare-fun e!85682 () SeekEntryResult!283)

(assert (=> b!131369 (= e!85682 Undefined!283)))

(declare-fun b!131370 () Bool)

(declare-fun e!85681 () SeekEntryResult!283)

(assert (=> b!131370 (= e!85682 e!85681)))

(declare-fun lt!68400 () (_ BitVec 64))

(declare-fun lt!68402 () SeekEntryResult!283)

(assert (=> b!131370 (= lt!68400 (select (arr!2248 (_keys!4588 newMap!16)) (index!3292 lt!68402)))))

(declare-fun c!24286 () Bool)

(assert (=> b!131370 (= c!24286 (= lt!68400 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun lt!68401 () SeekEntryResult!283)

(declare-fun d!40003 () Bool)

(assert (=> d!40003 (and (or ((_ is Undefined!283) lt!68401) (not ((_ is Found!283) lt!68401)) (and (bvsge (index!3291 lt!68401) #b00000000000000000000000000000000) (bvslt (index!3291 lt!68401) (size!2515 (_keys!4588 newMap!16))))) (or ((_ is Undefined!283) lt!68401) ((_ is Found!283) lt!68401) (not ((_ is MissingZero!283) lt!68401)) (and (bvsge (index!3290 lt!68401) #b00000000000000000000000000000000) (bvslt (index!3290 lt!68401) (size!2515 (_keys!4588 newMap!16))))) (or ((_ is Undefined!283) lt!68401) ((_ is Found!283) lt!68401) ((_ is MissingZero!283) lt!68401) (not ((_ is MissingVacant!283) lt!68401)) (and (bvsge (index!3293 lt!68401) #b00000000000000000000000000000000) (bvslt (index!3293 lt!68401) (size!2515 (_keys!4588 newMap!16))))) (or ((_ is Undefined!283) lt!68401) (ite ((_ is Found!283) lt!68401) (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3291 lt!68401)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) (ite ((_ is MissingZero!283) lt!68401) (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3290 lt!68401)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!283) lt!68401) (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3293 lt!68401)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!40003 (= lt!68401 e!85682)))

(declare-fun c!24285 () Bool)

(assert (=> d!40003 (= c!24285 (and ((_ is Intermediate!283) lt!68402) (undefined!1095 lt!68402)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4752 (_ BitVec 32)) SeekEntryResult!283)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!40003 (= lt!68402 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (mask!7131 newMap!16)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (_keys!4588 newMap!16) (mask!7131 newMap!16)))))

(assert (=> d!40003 (validMask!0 (mask!7131 newMap!16))))

(assert (=> d!40003 (= (seekEntryOrOpen!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (_keys!4588 newMap!16) (mask!7131 newMap!16)) lt!68401)))

(declare-fun b!131371 () Bool)

(assert (=> b!131371 (= e!85681 (Found!283 (index!3292 lt!68402)))))

(declare-fun b!131372 () Bool)

(declare-fun e!85683 () SeekEntryResult!283)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4752 (_ BitVec 32)) SeekEntryResult!283)

(assert (=> b!131372 (= e!85683 (seekKeyOrZeroReturnVacant!0 (x!15422 lt!68402) (index!3292 lt!68402) (index!3292 lt!68402) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (_keys!4588 newMap!16) (mask!7131 newMap!16)))))

(declare-fun b!131373 () Bool)

(declare-fun c!24284 () Bool)

(assert (=> b!131373 (= c!24284 (= lt!68400 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!131373 (= e!85681 e!85683)))

(declare-fun b!131374 () Bool)

(assert (=> b!131374 (= e!85683 (MissingZero!283 (index!3292 lt!68402)))))

(assert (= (and d!40003 c!24285) b!131369))

(assert (= (and d!40003 (not c!24285)) b!131370))

(assert (= (and b!131370 c!24286) b!131371))

(assert (= (and b!131370 (not c!24286)) b!131373))

(assert (= (and b!131373 c!24284) b!131374))

(assert (= (and b!131373 (not c!24284)) b!131372))

(declare-fun m!154931 () Bool)

(assert (=> b!131370 m!154931))

(declare-fun m!154933 () Bool)

(assert (=> d!40003 m!154933))

(declare-fun m!154935 () Bool)

(assert (=> d!40003 m!154935))

(assert (=> d!40003 m!154607))

(declare-fun m!154937 () Bool)

(assert (=> d!40003 m!154937))

(declare-fun m!154939 () Bool)

(assert (=> d!40003 m!154939))

(assert (=> d!40003 m!154607))

(assert (=> d!40003 m!154935))

(assert (=> d!40003 m!154847))

(declare-fun m!154941 () Bool)

(assert (=> d!40003 m!154941))

(assert (=> b!131372 m!154607))

(declare-fun m!154943 () Bool)

(assert (=> b!131372 m!154943))

(assert (=> bm!14316 d!40003))

(declare-fun b!131375 () Bool)

(declare-fun e!85685 () Bool)

(declare-fun call!14368 () Bool)

(assert (=> b!131375 (= e!85685 call!14368)))

(declare-fun bm!14365 () Bool)

(assert (=> bm!14365 (= call!14368 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4588 newMap!16) (mask!7131 newMap!16)))))

(declare-fun d!40005 () Bool)

(declare-fun res!63276 () Bool)

(declare-fun e!85686 () Bool)

(assert (=> d!40005 (=> res!63276 e!85686)))

(assert (=> d!40005 (= res!63276 (bvsge #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(assert (=> d!40005 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4588 newMap!16) (mask!7131 newMap!16)) e!85686)))

(declare-fun b!131376 () Bool)

(declare-fun e!85684 () Bool)

(assert (=> b!131376 (= e!85684 call!14368)))

(declare-fun b!131377 () Bool)

(assert (=> b!131377 (= e!85686 e!85685)))

(declare-fun c!24287 () Bool)

(assert (=> b!131377 (= c!24287 (validKeyInArray!0 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!131378 () Bool)

(assert (=> b!131378 (= e!85685 e!85684)))

(declare-fun lt!68403 () (_ BitVec 64))

(assert (=> b!131378 (= lt!68403 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68404 () Unit!4112)

(assert (=> b!131378 (= lt!68404 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4588 newMap!16) lt!68403 #b00000000000000000000000000000000))))

(assert (=> b!131378 (arrayContainsKey!0 (_keys!4588 newMap!16) lt!68403 #b00000000000000000000000000000000)))

(declare-fun lt!68405 () Unit!4112)

(assert (=> b!131378 (= lt!68405 lt!68404)))

(declare-fun res!63275 () Bool)

(assert (=> b!131378 (= res!63275 (= (seekEntryOrOpen!0 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000) (_keys!4588 newMap!16) (mask!7131 newMap!16)) (Found!283 #b00000000000000000000000000000000)))))

(assert (=> b!131378 (=> (not res!63275) (not e!85684))))

(assert (= (and d!40005 (not res!63276)) b!131377))

(assert (= (and b!131377 c!24287) b!131378))

(assert (= (and b!131377 (not c!24287)) b!131375))

(assert (= (and b!131378 res!63275) b!131376))

(assert (= (or b!131376 b!131375) bm!14365))

(declare-fun m!154945 () Bool)

(assert (=> bm!14365 m!154945))

(assert (=> b!131377 m!154841))

(assert (=> b!131377 m!154841))

(assert (=> b!131377 m!154843))

(assert (=> b!131378 m!154841))

(declare-fun m!154947 () Bool)

(assert (=> b!131378 m!154947))

(declare-fun m!154949 () Bool)

(assert (=> b!131378 m!154949))

(assert (=> b!131378 m!154841))

(declare-fun m!154951 () Bool)

(assert (=> b!131378 m!154951))

(assert (=> b!131244 d!40005))

(assert (=> b!131148 d!39987))

(declare-fun b!131387 () Bool)

(declare-fun res!63286 () Bool)

(declare-fun e!85689 () Bool)

(assert (=> b!131387 (=> (not res!63286) (not e!85689))))

(assert (=> b!131387 (= res!63286 (and (= (size!2516 (_values!2826 newMap!16)) (bvadd (mask!7131 newMap!16) #b00000000000000000000000000000001)) (= (size!2515 (_keys!4588 newMap!16)) (size!2516 (_values!2826 newMap!16))) (bvsge (_size!592 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!592 newMap!16) (bvadd (mask!7131 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!131388 () Bool)

(declare-fun res!63288 () Bool)

(assert (=> b!131388 (=> (not res!63288) (not e!85689))))

(declare-fun size!2519 (LongMapFixedSize!1086) (_ BitVec 32))

(assert (=> b!131388 (= res!63288 (bvsge (size!2519 newMap!16) (_size!592 newMap!16)))))

(declare-fun b!131389 () Bool)

(declare-fun res!63285 () Bool)

(assert (=> b!131389 (=> (not res!63285) (not e!85689))))

(assert (=> b!131389 (= res!63285 (= (size!2519 newMap!16) (bvadd (_size!592 newMap!16) (bvsdiv (bvadd (extraKeys!2612 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!40007 () Bool)

(declare-fun res!63287 () Bool)

(assert (=> d!40007 (=> (not res!63287) (not e!85689))))

(assert (=> d!40007 (= res!63287 (validMask!0 (mask!7131 newMap!16)))))

(assert (=> d!40007 (= (simpleValid!89 newMap!16) e!85689)))

(declare-fun b!131390 () Bool)

(assert (=> b!131390 (= e!85689 (and (bvsge (extraKeys!2612 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2612 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!592 newMap!16) #b00000000000000000000000000000000)))))

(assert (= (and d!40007 res!63287) b!131387))

(assert (= (and b!131387 res!63286) b!131388))

(assert (= (and b!131388 res!63288) b!131389))

(assert (= (and b!131389 res!63285) b!131390))

(declare-fun m!154953 () Bool)

(assert (=> b!131388 m!154953))

(assert (=> b!131389 m!154953))

(assert (=> d!40007 m!154847))

(assert (=> d!39977 d!40007))

(declare-fun d!40009 () Bool)

(assert (=> d!40009 (= (get!1477 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!131161 d!40009))

(declare-fun d!40011 () Bool)

(declare-fun res!63289 () Bool)

(declare-fun e!85690 () Bool)

(assert (=> d!40011 (=> (not res!63289) (not e!85690))))

(assert (=> d!40011 (= res!63289 (simpleValid!89 (v!3175 (underlying!449 thiss!992))))))

(assert (=> d!40011 (= (valid!515 (v!3175 (underlying!449 thiss!992))) e!85690)))

(declare-fun b!131391 () Bool)

(declare-fun res!63290 () Bool)

(assert (=> b!131391 (=> (not res!63290) (not e!85690))))

(assert (=> b!131391 (= res!63290 (= (arrayCountValidKeys!0 (_keys!4588 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000000 (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))) (_size!592 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun b!131392 () Bool)

(declare-fun res!63291 () Bool)

(assert (=> b!131392 (=> (not res!63291) (not e!85690))))

(assert (=> b!131392 (= res!63291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4588 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun b!131393 () Bool)

(assert (=> b!131393 (= e!85690 (arrayNoDuplicates!0 (_keys!4588 (v!3175 (underlying!449 thiss!992))) #b00000000000000000000000000000000 Nil!1728))))

(assert (= (and d!40011 res!63289) b!131391))

(assert (= (and b!131391 res!63290) b!131392))

(assert (= (and b!131392 res!63291) b!131393))

(declare-fun m!154955 () Bool)

(assert (=> d!40011 m!154955))

(declare-fun m!154957 () Bool)

(assert (=> b!131391 m!154957))

(assert (=> b!131392 m!154633))

(declare-fun m!154959 () Bool)

(assert (=> b!131393 m!154959))

(assert (=> d!39969 d!40011))

(declare-fun d!40013 () Bool)

(declare-fun res!63292 () Bool)

(declare-fun e!85691 () Bool)

(assert (=> d!40013 (=> (not res!63292) (not e!85691))))

(assert (=> d!40013 (= res!63292 (simpleValid!89 (_2!1309 lt!68251)))))

(assert (=> d!40013 (= (valid!515 (_2!1309 lt!68251)) e!85691)))

(declare-fun b!131394 () Bool)

(declare-fun res!63293 () Bool)

(assert (=> b!131394 (=> (not res!63293) (not e!85691))))

(assert (=> b!131394 (= res!63293 (= (arrayCountValidKeys!0 (_keys!4588 (_2!1309 lt!68251)) #b00000000000000000000000000000000 (size!2515 (_keys!4588 (_2!1309 lt!68251)))) (_size!592 (_2!1309 lt!68251))))))

(declare-fun b!131395 () Bool)

(declare-fun res!63294 () Bool)

(assert (=> b!131395 (=> (not res!63294) (not e!85691))))

(assert (=> b!131395 (= res!63294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4588 (_2!1309 lt!68251)) (mask!7131 (_2!1309 lt!68251))))))

(declare-fun b!131396 () Bool)

(assert (=> b!131396 (= e!85691 (arrayNoDuplicates!0 (_keys!4588 (_2!1309 lt!68251)) #b00000000000000000000000000000000 Nil!1728))))

(assert (= (and d!40013 res!63292) b!131394))

(assert (= (and b!131394 res!63293) b!131395))

(assert (= (and b!131395 res!63294) b!131396))

(declare-fun m!154961 () Bool)

(assert (=> d!40013 m!154961))

(declare-fun m!154963 () Bool)

(assert (=> b!131394 m!154963))

(declare-fun m!154965 () Bool)

(assert (=> b!131395 m!154965))

(declare-fun m!154967 () Bool)

(assert (=> b!131396 m!154967))

(assert (=> d!39959 d!40013))

(assert (=> d!39959 d!39977))

(declare-fun d!40015 () Bool)

(declare-fun e!85694 () Bool)

(assert (=> d!40015 e!85694))

(declare-fun res!63300 () Bool)

(assert (=> d!40015 (=> (not res!63300) (not e!85694))))

(declare-fun lt!68416 () ListLongMap!1701)

(assert (=> d!40015 (= res!63300 (contains!889 lt!68416 (_1!1308 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(declare-fun lt!68417 () List!1730)

(assert (=> d!40015 (= lt!68416 (ListLongMap!1702 lt!68417))))

(declare-fun lt!68414 () Unit!4112)

(declare-fun lt!68415 () Unit!4112)

(assert (=> d!40015 (= lt!68414 lt!68415)))

(assert (=> d!40015 (= (getValueByKey!169 lt!68417 (_1!1308 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))) (Some!174 (_2!1308 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!86 (List!1730 (_ BitVec 64) V!3467) Unit!4112)

(assert (=> d!40015 (= lt!68415 (lemmaContainsTupThenGetReturnValue!86 lt!68417 (_1!1308 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) (_2!1308 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(declare-fun insertStrictlySorted!88 (List!1730 (_ BitVec 64) V!3467) List!1730)

(assert (=> d!40015 (= lt!68417 (insertStrictlySorted!88 (toList!866 lt!68325) (_1!1308 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) (_2!1308 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40015 (= (+!168 lt!68325 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68416)))

(declare-fun b!131401 () Bool)

(declare-fun res!63299 () Bool)

(assert (=> b!131401 (=> (not res!63299) (not e!85694))))

(assert (=> b!131401 (= res!63299 (= (getValueByKey!169 (toList!866 lt!68416) (_1!1308 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))) (Some!174 (_2!1308 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))))))

(declare-fun b!131402 () Bool)

(declare-fun contains!890 (List!1730 tuple2!2596) Bool)

(assert (=> b!131402 (= e!85694 (contains!890 (toList!866 lt!68416) (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))))

(assert (= (and d!40015 res!63300) b!131401))

(assert (= (and b!131401 res!63299) b!131402))

(declare-fun m!154969 () Bool)

(assert (=> d!40015 m!154969))

(declare-fun m!154971 () Bool)

(assert (=> d!40015 m!154971))

(declare-fun m!154973 () Bool)

(assert (=> d!40015 m!154973))

(declare-fun m!154975 () Bool)

(assert (=> d!40015 m!154975))

(declare-fun m!154977 () Bool)

(assert (=> b!131401 m!154977))

(declare-fun m!154979 () Bool)

(assert (=> b!131402 m!154979))

(assert (=> b!131205 d!40015))

(declare-fun d!40017 () Bool)

(assert (=> d!40017 (= (apply!114 lt!68310 lt!68316) (get!1478 (getValueByKey!169 (toList!866 lt!68310) lt!68316)))))

(declare-fun bs!5450 () Bool)

(assert (= bs!5450 d!40017))

(declare-fun m!154981 () Bool)

(assert (=> bs!5450 m!154981))

(assert (=> bs!5450 m!154981))

(declare-fun m!154983 () Bool)

(assert (=> bs!5450 m!154983))

(assert (=> b!131205 d!40017))

(declare-fun d!40019 () Bool)

(assert (=> d!40019 (= (apply!114 (+!168 lt!68310 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68316) (apply!114 lt!68310 lt!68316))))

(declare-fun lt!68420 () Unit!4112)

(declare-fun choose!809 (ListLongMap!1701 (_ BitVec 64) V!3467 (_ BitVec 64)) Unit!4112)

(assert (=> d!40019 (= lt!68420 (choose!809 lt!68310 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992))) lt!68316))))

(declare-fun e!85697 () Bool)

(assert (=> d!40019 e!85697))

(declare-fun res!63303 () Bool)

(assert (=> d!40019 (=> (not res!63303) (not e!85697))))

(assert (=> d!40019 (= res!63303 (contains!889 lt!68310 lt!68316))))

(assert (=> d!40019 (= (addApplyDifferent!90 lt!68310 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992))) lt!68316) lt!68420)))

(declare-fun b!131406 () Bool)

(assert (=> b!131406 (= e!85697 (not (= lt!68316 lt!68328)))))

(assert (= (and d!40019 res!63303) b!131406))

(assert (=> d!40019 m!154785))

(assert (=> d!40019 m!154787))

(declare-fun m!154985 () Bool)

(assert (=> d!40019 m!154985))

(assert (=> d!40019 m!154785))

(assert (=> d!40019 m!154767))

(declare-fun m!154987 () Bool)

(assert (=> d!40019 m!154987))

(assert (=> b!131205 d!40019))

(declare-fun d!40021 () Bool)

(assert (=> d!40021 (= (apply!114 lt!68325 lt!68322) (get!1478 (getValueByKey!169 (toList!866 lt!68325) lt!68322)))))

(declare-fun bs!5451 () Bool)

(assert (= bs!5451 d!40021))

(declare-fun m!154989 () Bool)

(assert (=> bs!5451 m!154989))

(assert (=> bs!5451 m!154989))

(declare-fun m!154991 () Bool)

(assert (=> bs!5451 m!154991))

(assert (=> b!131205 d!40021))

(declare-fun d!40023 () Bool)

(assert (=> d!40023 (= (apply!114 (+!168 lt!68325 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68322) (apply!114 lt!68325 lt!68322))))

(declare-fun lt!68421 () Unit!4112)

(assert (=> d!40023 (= lt!68421 (choose!809 lt!68325 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992))) lt!68322))))

(declare-fun e!85698 () Bool)

(assert (=> d!40023 e!85698))

(declare-fun res!63304 () Bool)

(assert (=> d!40023 (=> (not res!63304) (not e!85698))))

(assert (=> d!40023 (= res!63304 (contains!889 lt!68325 lt!68322))))

(assert (=> d!40023 (= (addApplyDifferent!90 lt!68325 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992))) lt!68322) lt!68421)))

(declare-fun b!131407 () Bool)

(assert (=> b!131407 (= e!85698 (not (= lt!68322 lt!68309)))))

(assert (= (and d!40023 res!63304) b!131407))

(assert (=> d!40023 m!154775))

(assert (=> d!40023 m!154789))

(declare-fun m!154993 () Bool)

(assert (=> d!40023 m!154993))

(assert (=> d!40023 m!154775))

(assert (=> d!40023 m!154779))

(declare-fun m!154995 () Bool)

(assert (=> d!40023 m!154995))

(assert (=> b!131205 d!40023))

(declare-fun d!40025 () Bool)

(assert (=> d!40025 (= (apply!114 (+!168 lt!68319 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68318) (get!1478 (getValueByKey!169 (toList!866 (+!168 lt!68319 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))) lt!68318)))))

(declare-fun bs!5452 () Bool)

(assert (= bs!5452 d!40025))

(declare-fun m!154997 () Bool)

(assert (=> bs!5452 m!154997))

(assert (=> bs!5452 m!154997))

(declare-fun m!154999 () Bool)

(assert (=> bs!5452 m!154999))

(assert (=> b!131205 d!40025))

(declare-fun d!40027 () Bool)

(declare-fun e!85699 () Bool)

(assert (=> d!40027 e!85699))

(declare-fun res!63305 () Bool)

(assert (=> d!40027 (=> res!63305 e!85699)))

(declare-fun lt!68423 () Bool)

(assert (=> d!40027 (= res!63305 (not lt!68423))))

(declare-fun lt!68422 () Bool)

(assert (=> d!40027 (= lt!68423 lt!68422)))

(declare-fun lt!68424 () Unit!4112)

(declare-fun e!85700 () Unit!4112)

(assert (=> d!40027 (= lt!68424 e!85700)))

(declare-fun c!24288 () Bool)

(assert (=> d!40027 (= c!24288 lt!68422)))

(assert (=> d!40027 (= lt!68422 (containsKey!173 (toList!866 (+!168 lt!68327 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))) lt!68320))))

(assert (=> d!40027 (= (contains!889 (+!168 lt!68327 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68320) lt!68423)))

(declare-fun b!131408 () Bool)

(declare-fun lt!68425 () Unit!4112)

(assert (=> b!131408 (= e!85700 lt!68425)))

(assert (=> b!131408 (= lt!68425 (lemmaContainsKeyImpliesGetValueByKeyDefined!122 (toList!866 (+!168 lt!68327 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))) lt!68320))))

(assert (=> b!131408 (isDefined!123 (getValueByKey!169 (toList!866 (+!168 lt!68327 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))) lt!68320))))

(declare-fun b!131409 () Bool)

(declare-fun Unit!4120 () Unit!4112)

(assert (=> b!131409 (= e!85700 Unit!4120)))

(declare-fun b!131410 () Bool)

(assert (=> b!131410 (= e!85699 (isDefined!123 (getValueByKey!169 (toList!866 (+!168 lt!68327 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))) lt!68320)))))

(assert (= (and d!40027 c!24288) b!131408))

(assert (= (and d!40027 (not c!24288)) b!131409))

(assert (= (and d!40027 (not res!63305)) b!131410))

(declare-fun m!155001 () Bool)

(assert (=> d!40027 m!155001))

(declare-fun m!155003 () Bool)

(assert (=> b!131408 m!155003))

(declare-fun m!155005 () Bool)

(assert (=> b!131408 m!155005))

(assert (=> b!131408 m!155005))

(declare-fun m!155007 () Bool)

(assert (=> b!131408 m!155007))

(assert (=> b!131410 m!155005))

(assert (=> b!131410 m!155005))

(assert (=> b!131410 m!155007))

(assert (=> b!131205 d!40027))

(declare-fun d!40029 () Bool)

(assert (=> d!40029 (= (apply!114 (+!168 lt!68325 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68322) (get!1478 (getValueByKey!169 (toList!866 (+!168 lt!68325 (tuple2!2597 lt!68309 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))) lt!68322)))))

(declare-fun bs!5453 () Bool)

(assert (= bs!5453 d!40029))

(declare-fun m!155009 () Bool)

(assert (=> bs!5453 m!155009))

(assert (=> bs!5453 m!155009))

(declare-fun m!155011 () Bool)

(assert (=> bs!5453 m!155011))

(assert (=> b!131205 d!40029))

(declare-fun d!40031 () Bool)

(assert (=> d!40031 (= (apply!114 (+!168 lt!68319 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68318) (apply!114 lt!68319 lt!68318))))

(declare-fun lt!68426 () Unit!4112)

(assert (=> d!40031 (= lt!68426 (choose!809 lt!68319 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) lt!68318))))

(declare-fun e!85701 () Bool)

(assert (=> d!40031 e!85701))

(declare-fun res!63306 () Bool)

(assert (=> d!40031 (=> (not res!63306) (not e!85701))))

(assert (=> d!40031 (= res!63306 (contains!889 lt!68319 lt!68318))))

(assert (=> d!40031 (= (addApplyDifferent!90 lt!68319 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) lt!68318) lt!68426)))

(declare-fun b!131411 () Bool)

(assert (=> b!131411 (= e!85701 (not (= lt!68318 lt!68308)))))

(assert (= (and d!40031 res!63306) b!131411))

(assert (=> d!40031 m!154771))

(assert (=> d!40031 m!154783))

(declare-fun m!155013 () Bool)

(assert (=> d!40031 m!155013))

(assert (=> d!40031 m!154771))

(assert (=> d!40031 m!154769))

(declare-fun m!155015 () Bool)

(assert (=> d!40031 m!155015))

(assert (=> b!131205 d!40031))

(declare-fun d!40033 () Bool)

(assert (=> d!40033 (= (apply!114 lt!68319 lt!68318) (get!1478 (getValueByKey!169 (toList!866 lt!68319) lt!68318)))))

(declare-fun bs!5454 () Bool)

(assert (= bs!5454 d!40033))

(declare-fun m!155017 () Bool)

(assert (=> bs!5454 m!155017))

(assert (=> bs!5454 m!155017))

(declare-fun m!155019 () Bool)

(assert (=> bs!5454 m!155019))

(assert (=> b!131205 d!40033))

(declare-fun d!40035 () Bool)

(assert (=> d!40035 (= (apply!114 (+!168 lt!68310 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68316) (get!1478 (getValueByKey!169 (toList!866 (+!168 lt!68310 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))) lt!68316)))))

(declare-fun bs!5455 () Bool)

(assert (= bs!5455 d!40035))

(declare-fun m!155021 () Bool)

(assert (=> bs!5455 m!155021))

(assert (=> bs!5455 m!155021))

(declare-fun m!155023 () Bool)

(assert (=> bs!5455 m!155023))

(assert (=> b!131205 d!40035))

(declare-fun d!40037 () Bool)

(declare-fun e!85702 () Bool)

(assert (=> d!40037 e!85702))

(declare-fun res!63308 () Bool)

(assert (=> d!40037 (=> (not res!63308) (not e!85702))))

(declare-fun lt!68429 () ListLongMap!1701)

(assert (=> d!40037 (= res!63308 (contains!889 lt!68429 (_1!1308 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(declare-fun lt!68430 () List!1730)

(assert (=> d!40037 (= lt!68429 (ListLongMap!1702 lt!68430))))

(declare-fun lt!68427 () Unit!4112)

(declare-fun lt!68428 () Unit!4112)

(assert (=> d!40037 (= lt!68427 lt!68428)))

(assert (=> d!40037 (= (getValueByKey!169 lt!68430 (_1!1308 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))) (Some!174 (_2!1308 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40037 (= lt!68428 (lemmaContainsTupThenGetReturnValue!86 lt!68430 (_1!1308 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))) (_2!1308 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40037 (= lt!68430 (insertStrictlySorted!88 (toList!866 lt!68319) (_1!1308 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))) (_2!1308 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40037 (= (+!168 lt!68319 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68429)))

(declare-fun b!131412 () Bool)

(declare-fun res!63307 () Bool)

(assert (=> b!131412 (=> (not res!63307) (not e!85702))))

(assert (=> b!131412 (= res!63307 (= (getValueByKey!169 (toList!866 lt!68429) (_1!1308 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))) (Some!174 (_2!1308 (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))))))))

(declare-fun b!131413 () Bool)

(assert (=> b!131413 (= e!85702 (contains!890 (toList!866 lt!68429) (tuple2!2597 lt!68308 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))))))

(assert (= (and d!40037 res!63308) b!131412))

(assert (= (and b!131412 res!63307) b!131413))

(declare-fun m!155025 () Bool)

(assert (=> d!40037 m!155025))

(declare-fun m!155027 () Bool)

(assert (=> d!40037 m!155027))

(declare-fun m!155029 () Bool)

(assert (=> d!40037 m!155029))

(declare-fun m!155031 () Bool)

(assert (=> d!40037 m!155031))

(declare-fun m!155033 () Bool)

(assert (=> b!131412 m!155033))

(declare-fun m!155035 () Bool)

(assert (=> b!131413 m!155035))

(assert (=> b!131205 d!40037))

(declare-fun d!40039 () Bool)

(assert (=> d!40039 (contains!889 (+!168 lt!68327 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68320)))

(declare-fun lt!68433 () Unit!4112)

(declare-fun choose!810 (ListLongMap!1701 (_ BitVec 64) V!3467 (_ BitVec 64)) Unit!4112)

(assert (=> d!40039 (= lt!68433 (choose!810 lt!68327 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) lt!68320))))

(assert (=> d!40039 (contains!889 lt!68327 lt!68320)))

(assert (=> d!40039 (= (addStillContains!90 lt!68327 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))) lt!68320) lt!68433)))

(declare-fun bs!5456 () Bool)

(assert (= bs!5456 d!40039))

(assert (=> bs!5456 m!154763))

(assert (=> bs!5456 m!154763))

(assert (=> bs!5456 m!154765))

(declare-fun m!155037 () Bool)

(assert (=> bs!5456 m!155037))

(declare-fun m!155039 () Bool)

(assert (=> bs!5456 m!155039))

(assert (=> b!131205 d!40039))

(declare-fun d!40041 () Bool)

(declare-fun e!85703 () Bool)

(assert (=> d!40041 e!85703))

(declare-fun res!63310 () Bool)

(assert (=> d!40041 (=> (not res!63310) (not e!85703))))

(declare-fun lt!68436 () ListLongMap!1701)

(assert (=> d!40041 (= res!63310 (contains!889 lt!68436 (_1!1308 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(declare-fun lt!68437 () List!1730)

(assert (=> d!40041 (= lt!68436 (ListLongMap!1702 lt!68437))))

(declare-fun lt!68434 () Unit!4112)

(declare-fun lt!68435 () Unit!4112)

(assert (=> d!40041 (= lt!68434 lt!68435)))

(assert (=> d!40041 (= (getValueByKey!169 lt!68437 (_1!1308 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))) (Some!174 (_2!1308 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40041 (= lt!68435 (lemmaContainsTupThenGetReturnValue!86 lt!68437 (_1!1308 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))) (_2!1308 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40041 (= lt!68437 (insertStrictlySorted!88 (toList!866 lt!68327) (_1!1308 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))) (_2!1308 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40041 (= (+!168 lt!68327 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68436)))

(declare-fun b!131415 () Bool)

(declare-fun res!63309 () Bool)

(assert (=> b!131415 (=> (not res!63309) (not e!85703))))

(assert (=> b!131415 (= res!63309 (= (getValueByKey!169 (toList!866 lt!68436) (_1!1308 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))))) (Some!174 (_2!1308 (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))))))))

(declare-fun b!131416 () Bool)

(assert (=> b!131416 (= e!85703 (contains!890 (toList!866 lt!68436) (tuple2!2597 lt!68321 (zeroValue!2700 (v!3175 (underlying!449 thiss!992))))))))

(assert (= (and d!40041 res!63310) b!131415))

(assert (= (and b!131415 res!63309) b!131416))

(declare-fun m!155041 () Bool)

(assert (=> d!40041 m!155041))

(declare-fun m!155043 () Bool)

(assert (=> d!40041 m!155043))

(declare-fun m!155045 () Bool)

(assert (=> d!40041 m!155045))

(declare-fun m!155047 () Bool)

(assert (=> d!40041 m!155047))

(declare-fun m!155049 () Bool)

(assert (=> b!131415 m!155049))

(declare-fun m!155051 () Bool)

(assert (=> b!131416 m!155051))

(assert (=> b!131205 d!40041))

(assert (=> b!131205 d!39985))

(declare-fun d!40043 () Bool)

(declare-fun e!85704 () Bool)

(assert (=> d!40043 e!85704))

(declare-fun res!63312 () Bool)

(assert (=> d!40043 (=> (not res!63312) (not e!85704))))

(declare-fun lt!68440 () ListLongMap!1701)

(assert (=> d!40043 (= res!63312 (contains!889 lt!68440 (_1!1308 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(declare-fun lt!68441 () List!1730)

(assert (=> d!40043 (= lt!68440 (ListLongMap!1702 lt!68441))))

(declare-fun lt!68438 () Unit!4112)

(declare-fun lt!68439 () Unit!4112)

(assert (=> d!40043 (= lt!68438 lt!68439)))

(assert (=> d!40043 (= (getValueByKey!169 lt!68441 (_1!1308 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))) (Some!174 (_2!1308 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40043 (= lt!68439 (lemmaContainsTupThenGetReturnValue!86 lt!68441 (_1!1308 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) (_2!1308 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40043 (= lt!68441 (insertStrictlySorted!88 (toList!866 lt!68310) (_1!1308 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) (_2!1308 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40043 (= (+!168 lt!68310 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68440)))

(declare-fun b!131417 () Bool)

(declare-fun res!63311 () Bool)

(assert (=> b!131417 (=> (not res!63311) (not e!85704))))

(assert (=> b!131417 (= res!63311 (= (getValueByKey!169 (toList!866 lt!68440) (_1!1308 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))) (Some!174 (_2!1308 (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))))))

(declare-fun b!131418 () Bool)

(assert (=> b!131418 (= e!85704 (contains!890 (toList!866 lt!68440) (tuple2!2597 lt!68328 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))))

(assert (= (and d!40043 res!63312) b!131417))

(assert (= (and b!131417 res!63311) b!131418))

(declare-fun m!155053 () Bool)

(assert (=> d!40043 m!155053))

(declare-fun m!155055 () Bool)

(assert (=> d!40043 m!155055))

(declare-fun m!155057 () Bool)

(assert (=> d!40043 m!155057))

(declare-fun m!155059 () Bool)

(assert (=> d!40043 m!155059))

(declare-fun m!155061 () Bool)

(assert (=> b!131417 m!155061))

(declare-fun m!155063 () Bool)

(assert (=> b!131418 m!155063))

(assert (=> b!131205 d!40043))

(declare-fun d!40045 () Bool)

(assert (=> d!40045 (= (validKeyInArray!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!131221 d!40045))

(declare-fun d!40047 () Bool)

(declare-fun e!85707 () Bool)

(assert (=> d!40047 e!85707))

(declare-fun res!63317 () Bool)

(assert (=> d!40047 (=> (not res!63317) (not e!85707))))

(declare-fun lt!68447 () SeekEntryResult!283)

(assert (=> d!40047 (= res!63317 ((_ is Found!283) lt!68447))))

(assert (=> d!40047 (= lt!68447 (seekEntryOrOpen!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (_keys!4588 newMap!16) (mask!7131 newMap!16)))))

(declare-fun lt!68446 () Unit!4112)

(declare-fun choose!811 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 (_ BitVec 64) Int) Unit!4112)

(assert (=> d!40047 (= lt!68446 (choose!811 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (defaultEntry!2843 newMap!16)))))

(assert (=> d!40047 (validMask!0 (mask!7131 newMap!16))))

(assert (=> d!40047 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!59 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (defaultEntry!2843 newMap!16)) lt!68446)))

(declare-fun b!131423 () Bool)

(declare-fun res!63318 () Bool)

(assert (=> b!131423 (=> (not res!63318) (not e!85707))))

(assert (=> b!131423 (= res!63318 (inRange!0 (index!3291 lt!68447) (mask!7131 newMap!16)))))

(declare-fun b!131424 () Bool)

(assert (=> b!131424 (= e!85707 (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3291 lt!68447)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(assert (=> b!131424 (and (bvsge (index!3291 lt!68447) #b00000000000000000000000000000000) (bvslt (index!3291 lt!68447) (size!2515 (_keys!4588 newMap!16))))))

(assert (= (and d!40047 res!63317) b!131423))

(assert (= (and b!131423 res!63318) b!131424))

(assert (=> d!40047 m!154607))

(assert (=> d!40047 m!154709))

(assert (=> d!40047 m!154607))

(declare-fun m!155065 () Bool)

(assert (=> d!40047 m!155065))

(assert (=> d!40047 m!154847))

(declare-fun m!155067 () Bool)

(assert (=> b!131423 m!155067))

(declare-fun m!155069 () Bool)

(assert (=> b!131424 m!155069))

(assert (=> bm!14320 d!40047))

(assert (=> d!39973 d!39967))

(declare-fun d!40049 () Bool)

(declare-fun e!85708 () Bool)

(assert (=> d!40049 e!85708))

(declare-fun res!63320 () Bool)

(assert (=> d!40049 (=> (not res!63320) (not e!85708))))

(declare-fun lt!68450 () ListLongMap!1701)

(assert (=> d!40049 (= res!63320 (contains!889 lt!68450 (_1!1308 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(declare-fun lt!68451 () List!1730)

(assert (=> d!40049 (= lt!68450 (ListLongMap!1702 lt!68451))))

(declare-fun lt!68448 () Unit!4112)

(declare-fun lt!68449 () Unit!4112)

(assert (=> d!40049 (= lt!68448 lt!68449)))

(assert (=> d!40049 (= (getValueByKey!169 lt!68451 (_1!1308 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))) (Some!174 (_2!1308 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40049 (= lt!68449 (lemmaContainsTupThenGetReturnValue!86 lt!68451 (_1!1308 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) (_2!1308 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40049 (= lt!68451 (insertStrictlySorted!88 (toList!866 call!14347) (_1!1308 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) (_2!1308 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (=> d!40049 (= (+!168 call!14347 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992))))) lt!68450)))

(declare-fun b!131425 () Bool)

(declare-fun res!63319 () Bool)

(assert (=> b!131425 (=> (not res!63319) (not e!85708))))

(assert (=> b!131425 (= res!63319 (= (getValueByKey!169 (toList!866 lt!68450) (_1!1308 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))) (Some!174 (_2!1308 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))))))

(declare-fun b!131426 () Bool)

(assert (=> b!131426 (= e!85708 (contains!890 (toList!866 lt!68450) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))))

(assert (= (and d!40049 res!63320) b!131425))

(assert (= (and b!131425 res!63319) b!131426))

(declare-fun m!155071 () Bool)

(assert (=> d!40049 m!155071))

(declare-fun m!155073 () Bool)

(assert (=> d!40049 m!155073))

(declare-fun m!155075 () Bool)

(assert (=> d!40049 m!155075))

(declare-fun m!155077 () Bool)

(assert (=> d!40049 m!155077))

(declare-fun m!155079 () Bool)

(assert (=> b!131425 m!155079))

(declare-fun m!155081 () Bool)

(assert (=> b!131426 m!155081))

(assert (=> b!131216 d!40049))

(declare-fun call!14378 () Bool)

(declare-fun bm!14374 () Bool)

(assert (=> bm!14374 (= call!14378 (arrayContainsKey!0 (_keys!4588 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!131461 () Bool)

(declare-fun e!85732 () Bool)

(declare-fun e!85729 () Bool)

(assert (=> b!131461 (= e!85732 e!85729)))

(declare-fun res!63345 () Bool)

(declare-fun call!14380 () Bool)

(assert (=> b!131461 (= res!63345 call!14380)))

(assert (=> b!131461 (=> (not res!63345) (not e!85729))))

(declare-fun call!14377 () Bool)

(declare-fun lt!68517 () SeekEntryResult!283)

(declare-fun c!24298 () Bool)

(declare-fun bm!14375 () Bool)

(declare-fun c!24297 () Bool)

(declare-fun lt!68535 () SeekEntryResult!283)

(assert (=> bm!14375 (= call!14377 (inRange!0 (ite c!24298 (index!3291 lt!68517) (ite c!24297 (index!3290 lt!68535) (index!3293 lt!68535))) (mask!7131 newMap!16)))))

(declare-fun bm!14376 () Bool)

(assert (=> bm!14376 (= call!14380 call!14377)))

(declare-fun b!131462 () Bool)

(assert (=> b!131462 (= e!85729 (not call!14378))))

(declare-fun b!131463 () Bool)

(declare-fun res!63342 () Bool)

(declare-fun e!85730 () Bool)

(assert (=> b!131463 (=> (not res!63342) (not e!85730))))

(assert (=> b!131463 (= res!63342 (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3290 lt!68535)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!131464 () Bool)

(declare-fun res!63340 () Bool)

(declare-fun e!85726 () Bool)

(assert (=> b!131464 (=> (not res!63340) (not e!85726))))

(declare-fun lt!68520 () tuple2!2598)

(assert (=> b!131464 (= res!63340 (valid!515 (_2!1309 lt!68520)))))

(declare-fun b!131465 () Bool)

(declare-fun e!85727 () Unit!4112)

(declare-fun Unit!4121 () Unit!4112)

(assert (=> b!131465 (= e!85727 Unit!4121)))

(declare-fun b!131466 () Bool)

(declare-fun c!24299 () Bool)

(assert (=> b!131466 (= c!24299 ((_ is MissingVacant!283) lt!68535))))

(declare-fun e!85728 () Bool)

(assert (=> b!131466 (= e!85728 e!85732)))

(declare-fun b!131467 () Bool)

(declare-fun res!63341 () Bool)

(assert (=> b!131467 (=> (not res!63341) (not e!85726))))

(assert (=> b!131467 (= res!63341 (contains!889 (map!1398 (_2!1309 lt!68520)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun b!131468 () Bool)

(assert (=> b!131468 (= e!85730 (not call!14378))))

(declare-fun b!131469 () Bool)

(assert (=> b!131469 (= e!85732 ((_ is Undefined!283) lt!68535))))

(declare-fun b!131470 () Bool)

(declare-fun res!63344 () Bool)

(assert (=> b!131470 (=> (not res!63344) (not e!85730))))

(assert (=> b!131470 (= res!63344 call!14380)))

(assert (=> b!131470 (= e!85728 e!85730)))

(declare-fun b!131471 () Bool)

(declare-fun e!85725 () Bool)

(assert (=> b!131471 (= e!85725 (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3291 lt!68517)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun b!131472 () Bool)

(declare-fun res!63347 () Bool)

(assert (=> b!131472 (= res!63347 call!14377)))

(assert (=> b!131472 (=> (not res!63347) (not e!85725))))

(declare-fun b!131473 () Bool)

(declare-fun res!63339 () Bool)

(assert (=> b!131473 (= res!63339 (= (select (arr!2248 (_keys!4588 newMap!16)) (index!3293 lt!68535)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!131473 (=> (not res!63339) (not e!85729))))

(declare-fun b!131474 () Bool)

(declare-fun Unit!4122 () Unit!4112)

(assert (=> b!131474 (= e!85727 Unit!4122)))

(declare-fun lt!68527 () Unit!4112)

(declare-fun lemmaArrayContainsKeyThenInListMap!40 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 (_ BitVec 64) (_ BitVec 32) Int) Unit!4112)

(assert (=> b!131474 (= lt!68527 (lemmaArrayContainsKeyThenInListMap!40 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(assert (=> b!131474 (contains!889 (getCurrentListMap!537 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355))))

(declare-fun lt!68533 () Unit!4112)

(assert (=> b!131474 (= lt!68533 lt!68527)))

(assert (=> b!131474 false))

(declare-fun call!14379 () SeekEntryResult!283)

(declare-fun bm!14377 () Bool)

(assert (=> bm!14377 (= call!14379 (seekEntryOrOpen!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (_keys!4588 newMap!16) (mask!7131 newMap!16)))))

(declare-fun d!40051 () Bool)

(assert (=> d!40051 e!85726))

(declare-fun res!63343 () Bool)

(assert (=> d!40051 (=> (not res!63343) (not e!85726))))

(assert (=> d!40051 (= res!63343 (_1!1309 lt!68520))))

(assert (=> d!40051 (= lt!68520 (tuple2!2599 true (LongMapFixedSize!1087 (defaultEntry!2843 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (bvadd (_size!592 newMap!16) #b00000000000000000000000000000001) (array!4753 (store (arr!2248 (_keys!4588 newMap!16)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) (size!2515 (_keys!4588 newMap!16))) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16))) (_vacant!592 newMap!16))))))

(declare-fun lt!68516 () Unit!4112)

(declare-fun lt!68524 () Unit!4112)

(assert (=> d!40051 (= lt!68516 lt!68524)))

(declare-fun lt!68534 () array!4754)

(declare-fun lt!68522 () array!4752)

(assert (=> d!40051 (contains!889 (getCurrentListMap!537 lt!68522 lt!68534 (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)) (select (store (arr!2248 (_keys!4588 newMap!16)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256))))))

(assert (=> d!40051 (= lt!68524 (lemmaValidKeyInArrayIsInListMap!117 lt!68522 lt!68534 (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (defaultEntry!2843 newMap!16)))))

(assert (=> d!40051 (= lt!68534 (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16))))))

(assert (=> d!40051 (= lt!68522 (array!4753 (store (arr!2248 (_keys!4588 newMap!16)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) (size!2515 (_keys!4588 newMap!16))))))

(declare-fun lt!68523 () Unit!4112)

(declare-fun lt!68525 () Unit!4112)

(assert (=> d!40051 (= lt!68523 lt!68525)))

(declare-fun lt!68518 () array!4752)

(assert (=> d!40051 (= (arrayCountValidKeys!0 lt!68518 (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (bvadd (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4752 (_ BitVec 32)) Unit!4112)

(assert (=> d!40051 (= lt!68525 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!68518 (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256))))))

(assert (=> d!40051 (= lt!68518 (array!4753 (store (arr!2248 (_keys!4588 newMap!16)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) (size!2515 (_keys!4588 newMap!16))))))

(declare-fun lt!68515 () Unit!4112)

(declare-fun lt!68528 () Unit!4112)

(assert (=> d!40051 (= lt!68515 lt!68528)))

(declare-fun lt!68514 () array!4752)

(assert (=> d!40051 (arrayContainsKey!0 lt!68514 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!40051 (= lt!68528 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!68514 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256))))))

(assert (=> d!40051 (= lt!68514 (array!4753 (store (arr!2248 (_keys!4588 newMap!16)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) (size!2515 (_keys!4588 newMap!16))))))

(declare-fun lt!68519 () Unit!4112)

(declare-fun lt!68530 () Unit!4112)

(assert (=> d!40051 (= lt!68519 lt!68530)))

(assert (=> d!40051 (= (+!168 (getCurrentListMap!537 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!537 (array!4753 (store (arr!2248 (_keys!4588 newMap!16)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) (size!2515 (_keys!4588 newMap!16))) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16))) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!40 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 (_ BitVec 32) (_ BitVec 64) V!3467 Int) Unit!4112)

(assert (=> d!40051 (= lt!68530 (lemmaAddValidKeyToArrayThenAddPairToListMap!40 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68541 () Unit!4112)

(declare-fun lt!68521 () Unit!4112)

(assert (=> d!40051 (= lt!68541 lt!68521)))

(assert (=> d!40051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4753 (store (arr!2248 (_keys!4588 newMap!16)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) (size!2515 (_keys!4588 newMap!16))) (mask!7131 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4752 (_ BitVec 32) (_ BitVec 32)) Unit!4112)

(assert (=> d!40051 (= lt!68521 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (_keys!4588 newMap!16) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (mask!7131 newMap!16)))))

(declare-fun lt!68540 () Unit!4112)

(declare-fun lt!68537 () Unit!4112)

(assert (=> d!40051 (= lt!68540 lt!68537)))

(assert (=> d!40051 (= (arrayCountValidKeys!0 (array!4753 (store (arr!2248 (_keys!4588 newMap!16)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) (size!2515 (_keys!4588 newMap!16))) #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4588 newMap!16) #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4752 (_ BitVec 32) (_ BitVec 64)) Unit!4112)

(assert (=> d!40051 (= lt!68537 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4588 newMap!16) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun lt!68526 () Unit!4112)

(declare-fun lt!68529 () Unit!4112)

(assert (=> d!40051 (= lt!68526 lt!68529)))

(declare-fun lt!68532 () List!1731)

(declare-fun lt!68536 () (_ BitVec 32))

(assert (=> d!40051 (arrayNoDuplicates!0 (array!4753 (store (arr!2248 (_keys!4588 newMap!16)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) (size!2515 (_keys!4588 newMap!16))) lt!68536 lt!68532)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4752 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1731) Unit!4112)

(assert (=> d!40051 (= lt!68529 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4588 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256)) lt!68536 lt!68532))))

(assert (=> d!40051 (= lt!68532 Nil!1728)))

(assert (=> d!40051 (= lt!68536 #b00000000000000000000000000000000)))

(declare-fun lt!68512 () Unit!4112)

(assert (=> d!40051 (= lt!68512 e!85727)))

(declare-fun c!24300 () Bool)

(assert (=> d!40051 (= c!24300 (arrayContainsKey!0 (_keys!4588 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!68531 () Unit!4112)

(declare-fun e!85731 () Unit!4112)

(assert (=> d!40051 (= lt!68531 e!85731)))

(assert (=> d!40051 (= c!24298 (contains!889 (getCurrentListMap!537 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(assert (=> d!40051 (valid!515 newMap!16)))

(assert (=> d!40051 (= (updateHelperNewKey!59 newMap!16 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!24213 (index!3293 lt!68256) (index!3290 lt!68256))) lt!68520)))

(declare-fun b!131475 () Bool)

(assert (=> b!131475 (= e!85726 (= (map!1398 (_2!1309 lt!68520)) (+!168 (map!1398 newMap!16) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!131476 () Bool)

(declare-fun Unit!4123 () Unit!4112)

(assert (=> b!131476 (= e!85731 Unit!4123)))

(declare-fun lt!68539 () Unit!4112)

(assert (=> b!131476 (= lt!68539 (lemmaInListMapThenSeekEntryOrOpenFindsIt!59 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (defaultEntry!2843 newMap!16)))))

(assert (=> b!131476 (= lt!68517 call!14379)))

(declare-fun res!63346 () Bool)

(assert (=> b!131476 (= res!63346 ((_ is Found!283) lt!68517))))

(assert (=> b!131476 (=> (not res!63346) (not e!85725))))

(assert (=> b!131476 e!85725))

(declare-fun lt!68538 () Unit!4112)

(assert (=> b!131476 (= lt!68538 lt!68539)))

(assert (=> b!131476 false))

(declare-fun b!131477 () Bool)

(declare-fun lt!68513 () Unit!4112)

(assert (=> b!131477 (= e!85731 lt!68513)))

(assert (=> b!131477 (= lt!68513 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!59 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (defaultEntry!2843 newMap!16)))))

(assert (=> b!131477 (= lt!68535 call!14379)))

(assert (=> b!131477 (= c!24297 ((_ is MissingZero!283) lt!68535))))

(assert (=> b!131477 e!85728))

(assert (= (and d!40051 c!24298) b!131476))

(assert (= (and d!40051 (not c!24298)) b!131477))

(assert (= (and b!131476 res!63346) b!131472))

(assert (= (and b!131472 res!63347) b!131471))

(assert (= (and b!131477 c!24297) b!131470))

(assert (= (and b!131477 (not c!24297)) b!131466))

(assert (= (and b!131470 res!63344) b!131463))

(assert (= (and b!131463 res!63342) b!131468))

(assert (= (and b!131466 c!24299) b!131461))

(assert (= (and b!131466 (not c!24299)) b!131469))

(assert (= (and b!131461 res!63345) b!131473))

(assert (= (and b!131473 res!63339) b!131462))

(assert (= (or b!131470 b!131461) bm!14376))

(assert (= (or b!131468 b!131462) bm!14374))

(assert (= (or b!131472 bm!14376) bm!14375))

(assert (= (or b!131476 b!131477) bm!14377))

(assert (= (and d!40051 c!24300) b!131474))

(assert (= (and d!40051 (not c!24300)) b!131465))

(assert (= (and d!40051 res!63343) b!131464))

(assert (= (and b!131464 res!63340) b!131467))

(assert (= (and b!131467 res!63341) b!131475))

(declare-fun m!155083 () Bool)

(assert (=> b!131471 m!155083))

(assert (=> b!131474 m!154607))

(declare-fun m!155085 () Bool)

(assert (=> b!131474 m!155085))

(assert (=> b!131474 m!154691))

(assert (=> b!131474 m!154691))

(assert (=> b!131474 m!154607))

(declare-fun m!155087 () Bool)

(assert (=> b!131474 m!155087))

(declare-fun m!155089 () Bool)

(assert (=> b!131467 m!155089))

(assert (=> b!131467 m!155089))

(assert (=> b!131467 m!154607))

(declare-fun m!155091 () Bool)

(assert (=> b!131467 m!155091))

(assert (=> d!40051 m!154691))

(assert (=> d!40051 m!154607))

(assert (=> d!40051 m!154605))

(declare-fun m!155093 () Bool)

(assert (=> d!40051 m!155093))

(assert (=> d!40051 m!154607))

(declare-fun m!155095 () Bool)

(assert (=> d!40051 m!155095))

(declare-fun m!155097 () Bool)

(assert (=> d!40051 m!155097))

(declare-fun m!155099 () Bool)

(assert (=> d!40051 m!155099))

(declare-fun m!155101 () Bool)

(assert (=> d!40051 m!155101))

(assert (=> d!40051 m!155097))

(assert (=> d!40051 m!154607))

(declare-fun m!155103 () Bool)

(assert (=> d!40051 m!155103))

(assert (=> d!40051 m!154607))

(declare-fun m!155105 () Bool)

(assert (=> d!40051 m!155105))

(assert (=> d!40051 m!154691))

(declare-fun m!155107 () Bool)

(assert (=> d!40051 m!155107))

(assert (=> d!40051 m!154691))

(assert (=> d!40051 m!154607))

(assert (=> d!40051 m!155087))

(declare-fun m!155109 () Bool)

(assert (=> d!40051 m!155109))

(assert (=> d!40051 m!154811))

(declare-fun m!155111 () Bool)

(assert (=> d!40051 m!155111))

(declare-fun m!155113 () Bool)

(assert (=> d!40051 m!155113))

(assert (=> d!40051 m!154607))

(declare-fun m!155115 () Bool)

(assert (=> d!40051 m!155115))

(declare-fun m!155117 () Bool)

(assert (=> d!40051 m!155117))

(assert (=> d!40051 m!154607))

(declare-fun m!155119 () Bool)

(assert (=> d!40051 m!155119))

(declare-fun m!155121 () Bool)

(assert (=> d!40051 m!155121))

(declare-fun m!155123 () Bool)

(assert (=> d!40051 m!155123))

(assert (=> d!40051 m!154607))

(assert (=> d!40051 m!154695))

(assert (=> d!40051 m!154613))

(declare-fun m!155125 () Bool)

(assert (=> d!40051 m!155125))

(declare-fun m!155127 () Bool)

(assert (=> d!40051 m!155127))

(declare-fun m!155129 () Bool)

(assert (=> d!40051 m!155129))

(assert (=> d!40051 m!155099))

(assert (=> bm!14374 m!154607))

(assert (=> bm!14374 m!154695))

(declare-fun m!155131 () Bool)

(assert (=> b!131464 m!155131))

(assert (=> bm!14377 m!154607))

(assert (=> bm!14377 m!154709))

(declare-fun m!155133 () Bool)

(assert (=> b!131463 m!155133))

(declare-fun m!155135 () Bool)

(assert (=> b!131473 m!155135))

(assert (=> b!131475 m!155089))

(assert (=> b!131475 m!154615))

(assert (=> b!131475 m!154615))

(declare-fun m!155137 () Bool)

(assert (=> b!131475 m!155137))

(declare-fun m!155139 () Bool)

(assert (=> bm!14375 m!155139))

(assert (=> b!131477 m!154607))

(assert (=> b!131477 m!154681))

(assert (=> b!131476 m!154607))

(assert (=> b!131476 m!154719))

(assert (=> bm!14301 d!40051))

(declare-fun d!40053 () Bool)

(assert (=> d!40053 (= (map!1398 (_2!1309 lt!68251)) (getCurrentListMap!537 (_keys!4588 (_2!1309 lt!68251)) (_values!2826 (_2!1309 lt!68251)) (mask!7131 (_2!1309 lt!68251)) (extraKeys!2612 (_2!1309 lt!68251)) (zeroValue!2700 (_2!1309 lt!68251)) (minValue!2700 (_2!1309 lt!68251)) #b00000000000000000000000000000000 (defaultEntry!2843 (_2!1309 lt!68251))))))

(declare-fun bs!5457 () Bool)

(assert (= bs!5457 d!40053))

(declare-fun m!155141 () Bool)

(assert (=> bs!5457 m!155141))

(assert (=> bm!14324 d!40053))

(declare-fun d!40055 () Bool)

(assert (=> d!40055 (arrayContainsKey!0 (_keys!4588 (v!3175 (underlying!449 thiss!992))) lt!68335 #b00000000000000000000000000000000)))

(declare-fun lt!68544 () Unit!4112)

(declare-fun choose!13 (array!4752 (_ BitVec 64) (_ BitVec 32)) Unit!4112)

(assert (=> d!40055 (= lt!68544 (choose!13 (_keys!4588 (v!3175 (underlying!449 thiss!992))) lt!68335 #b00000000000000000000000000000000))))

(assert (=> d!40055 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!40055 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4588 (v!3175 (underlying!449 thiss!992))) lt!68335 #b00000000000000000000000000000000) lt!68544)))

(declare-fun bs!5458 () Bool)

(assert (= bs!5458 d!40055))

(assert (=> bs!5458 m!154805))

(declare-fun m!155143 () Bool)

(assert (=> bs!5458 m!155143))

(assert (=> b!131236 d!40055))

(declare-fun d!40057 () Bool)

(declare-fun res!63352 () Bool)

(declare-fun e!85737 () Bool)

(assert (=> d!40057 (=> res!63352 e!85737)))

(assert (=> d!40057 (= res!63352 (= (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000) lt!68335))))

(assert (=> d!40057 (= (arrayContainsKey!0 (_keys!4588 (v!3175 (underlying!449 thiss!992))) lt!68335 #b00000000000000000000000000000000) e!85737)))

(declare-fun b!131482 () Bool)

(declare-fun e!85738 () Bool)

(assert (=> b!131482 (= e!85737 e!85738)))

(declare-fun res!63353 () Bool)

(assert (=> b!131482 (=> (not res!63353) (not e!85738))))

(assert (=> b!131482 (= res!63353 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))

(declare-fun b!131483 () Bool)

(assert (=> b!131483 (= e!85738 (arrayContainsKey!0 (_keys!4588 (v!3175 (underlying!449 thiss!992))) lt!68335 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!40057 (not res!63352)) b!131482))

(assert (= (and b!131482 res!63353) b!131483))

(assert (=> d!40057 m!154799))

(declare-fun m!155145 () Bool)

(assert (=> b!131483 m!155145))

(assert (=> b!131236 d!40057))

(declare-fun b!131484 () Bool)

(declare-fun e!85740 () SeekEntryResult!283)

(assert (=> b!131484 (= e!85740 Undefined!283)))

(declare-fun b!131485 () Bool)

(declare-fun e!85739 () SeekEntryResult!283)

(assert (=> b!131485 (= e!85740 e!85739)))

(declare-fun lt!68545 () (_ BitVec 64))

(declare-fun lt!68547 () SeekEntryResult!283)

(assert (=> b!131485 (= lt!68545 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (index!3292 lt!68547)))))

(declare-fun c!24303 () Bool)

(assert (=> b!131485 (= c!24303 (= lt!68545 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!40059 () Bool)

(declare-fun lt!68546 () SeekEntryResult!283)

(assert (=> d!40059 (and (or ((_ is Undefined!283) lt!68546) (not ((_ is Found!283) lt!68546)) (and (bvsge (index!3291 lt!68546) #b00000000000000000000000000000000) (bvslt (index!3291 lt!68546) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))) (or ((_ is Undefined!283) lt!68546) ((_ is Found!283) lt!68546) (not ((_ is MissingZero!283) lt!68546)) (and (bvsge (index!3290 lt!68546) #b00000000000000000000000000000000) (bvslt (index!3290 lt!68546) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))) (or ((_ is Undefined!283) lt!68546) ((_ is Found!283) lt!68546) ((_ is MissingZero!283) lt!68546) (not ((_ is MissingVacant!283) lt!68546)) (and (bvsge (index!3293 lt!68546) #b00000000000000000000000000000000) (bvslt (index!3293 lt!68546) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))) (or ((_ is Undefined!283) lt!68546) (ite ((_ is Found!283) lt!68546) (= (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (index!3291 lt!68546)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!283) lt!68546) (= (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (index!3290 lt!68546)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!283) lt!68546) (= (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (index!3293 lt!68546)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!40059 (= lt!68546 e!85740)))

(declare-fun c!24302 () Bool)

(assert (=> d!40059 (= c!24302 (and ((_ is Intermediate!283) lt!68547) (undefined!1095 lt!68547)))))

(assert (=> d!40059 (= lt!68547 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000) (mask!7131 (v!3175 (underlying!449 thiss!992)))) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000) (_keys!4588 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992)))))))

(assert (=> d!40059 (validMask!0 (mask!7131 (v!3175 (underlying!449 thiss!992))))))

(assert (=> d!40059 (= (seekEntryOrOpen!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000) (_keys!4588 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992)))) lt!68546)))

(declare-fun b!131486 () Bool)

(assert (=> b!131486 (= e!85739 (Found!283 (index!3292 lt!68547)))))

(declare-fun b!131487 () Bool)

(declare-fun e!85741 () SeekEntryResult!283)

(assert (=> b!131487 (= e!85741 (seekKeyOrZeroReturnVacant!0 (x!15422 lt!68547) (index!3292 lt!68547) (index!3292 lt!68547) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) #b00000000000000000000000000000000) (_keys!4588 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun b!131488 () Bool)

(declare-fun c!24301 () Bool)

(assert (=> b!131488 (= c!24301 (= lt!68545 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!131488 (= e!85739 e!85741)))

(declare-fun b!131489 () Bool)

(assert (=> b!131489 (= e!85741 (MissingZero!283 (index!3292 lt!68547)))))

(assert (= (and d!40059 c!24302) b!131484))

(assert (= (and d!40059 (not c!24302)) b!131485))

(assert (= (and b!131485 c!24303) b!131486))

(assert (= (and b!131485 (not c!24303)) b!131488))

(assert (= (and b!131488 c!24301) b!131489))

(assert (= (and b!131488 (not c!24301)) b!131487))

(declare-fun m!155147 () Bool)

(assert (=> b!131485 m!155147))

(declare-fun m!155149 () Bool)

(assert (=> d!40059 m!155149))

(declare-fun m!155151 () Bool)

(assert (=> d!40059 m!155151))

(assert (=> d!40059 m!154799))

(declare-fun m!155153 () Bool)

(assert (=> d!40059 m!155153))

(declare-fun m!155155 () Bool)

(assert (=> d!40059 m!155155))

(assert (=> d!40059 m!154799))

(assert (=> d!40059 m!155151))

(assert (=> d!40059 m!154599))

(declare-fun m!155157 () Bool)

(assert (=> d!40059 m!155157))

(assert (=> b!131487 m!154799))

(declare-fun m!155159 () Bool)

(assert (=> b!131487 m!155159))

(assert (=> b!131236 d!40059))

(declare-fun d!40061 () Bool)

(assert (=> d!40061 (= (+!168 (getCurrentListMap!537 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!537 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) lt!68238 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68550 () Unit!4112)

(declare-fun choose!812 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 V!3467 Int) Unit!4112)

(assert (=> d!40061 (= lt!68550 (choose!812 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) lt!68238 (zeroValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2700 newMap!16) (defaultEntry!2843 newMap!16)))))

(assert (=> d!40061 (validMask!0 (mask!7131 newMap!16))))

(assert (=> d!40061 (= (lemmaChangeZeroKeyThenAddPairToListMap!59 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) lt!68238 (zeroValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2700 newMap!16) (defaultEntry!2843 newMap!16)) lt!68550)))

(declare-fun bs!5459 () Bool)

(assert (= bs!5459 d!40061))

(assert (=> bs!5459 m!154847))

(assert (=> bs!5459 m!154691))

(declare-fun m!155161 () Bool)

(assert (=> bs!5459 m!155161))

(assert (=> bs!5459 m!154691))

(assert (=> bs!5459 m!154605))

(declare-fun m!155163 () Bool)

(assert (=> bs!5459 m!155163))

(assert (=> bs!5459 m!154605))

(declare-fun m!155165 () Bool)

(assert (=> bs!5459 m!155165))

(assert (=> b!131136 d!40061))

(declare-fun d!40063 () Bool)

(declare-fun e!85742 () Bool)

(assert (=> d!40063 e!85742))

(declare-fun res!63355 () Bool)

(assert (=> d!40063 (=> (not res!63355) (not e!85742))))

(declare-fun lt!68553 () ListLongMap!1701)

(assert (=> d!40063 (= res!63355 (contains!889 lt!68553 (_1!1308 (ite c!24215 (ite c!24208 (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!68554 () List!1730)

(assert (=> d!40063 (= lt!68553 (ListLongMap!1702 lt!68554))))

(declare-fun lt!68551 () Unit!4112)

(declare-fun lt!68552 () Unit!4112)

(assert (=> d!40063 (= lt!68551 lt!68552)))

(assert (=> d!40063 (= (getValueByKey!169 lt!68554 (_1!1308 (ite c!24215 (ite c!24208 (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!174 (_2!1308 (ite c!24215 (ite c!24208 (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!40063 (= lt!68552 (lemmaContainsTupThenGetReturnValue!86 lt!68554 (_1!1308 (ite c!24215 (ite c!24208 (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1308 (ite c!24215 (ite c!24208 (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!40063 (= lt!68554 (insertStrictlySorted!88 (toList!866 e!85539) (_1!1308 (ite c!24215 (ite c!24208 (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1308 (ite c!24215 (ite c!24208 (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!40063 (= (+!168 e!85539 (ite c!24215 (ite c!24208 (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!68553)))

(declare-fun b!131490 () Bool)

(declare-fun res!63354 () Bool)

(assert (=> b!131490 (=> (not res!63354) (not e!85742))))

(assert (=> b!131490 (= res!63354 (= (getValueByKey!169 (toList!866 lt!68553) (_1!1308 (ite c!24215 (ite c!24208 (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!174 (_2!1308 (ite c!24215 (ite c!24208 (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!131491 () Bool)

(assert (=> b!131491 (= e!85742 (contains!890 (toList!866 lt!68553) (ite c!24215 (ite c!24208 (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!40063 res!63355) b!131490))

(assert (= (and b!131490 res!63354) b!131491))

(declare-fun m!155167 () Bool)

(assert (=> d!40063 m!155167))

(declare-fun m!155169 () Bool)

(assert (=> d!40063 m!155169))

(declare-fun m!155171 () Bool)

(assert (=> d!40063 m!155171))

(declare-fun m!155173 () Bool)

(assert (=> d!40063 m!155173))

(declare-fun m!155175 () Bool)

(assert (=> b!131490 m!155175))

(declare-fun m!155177 () Bool)

(assert (=> b!131491 m!155177))

(assert (=> bm!14323 d!40063))

(declare-fun b!131492 () Bool)

(declare-fun e!85744 () Bool)

(declare-fun call!14381 () Bool)

(assert (=> b!131492 (= e!85744 call!14381)))

(declare-fun bm!14378 () Bool)

(assert (=> bm!14378 (= call!14381 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4588 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992)))))))

(declare-fun d!40065 () Bool)

(declare-fun res!63357 () Bool)

(declare-fun e!85745 () Bool)

(assert (=> d!40065 (=> res!63357 e!85745)))

(assert (=> d!40065 (= res!63357 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2515 (_keys!4588 (v!3175 (underlying!449 thiss!992))))))))

(assert (=> d!40065 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4588 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992)))) e!85745)))

(declare-fun b!131493 () Bool)

(declare-fun e!85743 () Bool)

(assert (=> b!131493 (= e!85743 call!14381)))

(declare-fun b!131494 () Bool)

(assert (=> b!131494 (= e!85745 e!85744)))

(declare-fun c!24304 () Bool)

(assert (=> b!131494 (= c!24304 (validKeyInArray!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!131495 () Bool)

(assert (=> b!131495 (= e!85744 e!85743)))

(declare-fun lt!68555 () (_ BitVec 64))

(assert (=> b!131495 (= lt!68555 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!68556 () Unit!4112)

(assert (=> b!131495 (= lt!68556 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4588 (v!3175 (underlying!449 thiss!992))) lt!68555 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!131495 (arrayContainsKey!0 (_keys!4588 (v!3175 (underlying!449 thiss!992))) lt!68555 #b00000000000000000000000000000000)))

(declare-fun lt!68557 () Unit!4112)

(assert (=> b!131495 (= lt!68557 lt!68556)))

(declare-fun res!63356 () Bool)

(assert (=> b!131495 (= res!63356 (= (seekEntryOrOpen!0 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4588 (v!3175 (underlying!449 thiss!992))) (mask!7131 (v!3175 (underlying!449 thiss!992)))) (Found!283 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!131495 (=> (not res!63356) (not e!85743))))

(assert (= (and d!40065 (not res!63357)) b!131494))

(assert (= (and b!131494 c!24304) b!131495))

(assert (= (and b!131494 (not c!24304)) b!131492))

(assert (= (and b!131495 res!63356) b!131493))

(assert (= (or b!131493 b!131492) bm!14378))

(declare-fun m!155179 () Bool)

(assert (=> bm!14378 m!155179))

(declare-fun m!155181 () Bool)

(assert (=> b!131494 m!155181))

(assert (=> b!131494 m!155181))

(declare-fun m!155183 () Bool)

(assert (=> b!131494 m!155183))

(assert (=> b!131495 m!155181))

(declare-fun m!155185 () Bool)

(assert (=> b!131495 m!155185))

(declare-fun m!155187 () Bool)

(assert (=> b!131495 m!155187))

(assert (=> b!131495 m!155181))

(declare-fun m!155189 () Bool)

(assert (=> b!131495 m!155189))

(assert (=> bm!14348 d!40065))

(declare-fun b!131506 () Bool)

(declare-fun e!85756 () Bool)

(declare-fun call!14384 () Bool)

(assert (=> b!131506 (= e!85756 call!14384)))

(declare-fun bm!14381 () Bool)

(declare-fun c!24307 () Bool)

(assert (=> bm!14381 (= call!14384 (arrayNoDuplicates!0 (_keys!4588 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!24307 (Cons!1727 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000) Nil!1728) Nil!1728)))))

(declare-fun b!131507 () Bool)

(declare-fun e!85757 () Bool)

(declare-fun contains!891 (List!1731 (_ BitVec 64)) Bool)

(assert (=> b!131507 (= e!85757 (contains!891 Nil!1728 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!40067 () Bool)

(declare-fun res!63366 () Bool)

(declare-fun e!85755 () Bool)

(assert (=> d!40067 (=> res!63366 e!85755)))

(assert (=> d!40067 (= res!63366 (bvsge #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(assert (=> d!40067 (= (arrayNoDuplicates!0 (_keys!4588 newMap!16) #b00000000000000000000000000000000 Nil!1728) e!85755)))

(declare-fun b!131508 () Bool)

(assert (=> b!131508 (= e!85756 call!14384)))

(declare-fun b!131509 () Bool)

(declare-fun e!85754 () Bool)

(assert (=> b!131509 (= e!85755 e!85754)))

(declare-fun res!63365 () Bool)

(assert (=> b!131509 (=> (not res!63365) (not e!85754))))

(assert (=> b!131509 (= res!63365 (not e!85757))))

(declare-fun res!63364 () Bool)

(assert (=> b!131509 (=> (not res!63364) (not e!85757))))

(assert (=> b!131509 (= res!63364 (validKeyInArray!0 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!131510 () Bool)

(assert (=> b!131510 (= e!85754 e!85756)))

(assert (=> b!131510 (= c!24307 (validKeyInArray!0 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!40067 (not res!63366)) b!131509))

(assert (= (and b!131509 res!63364) b!131507))

(assert (= (and b!131509 res!63365) b!131510))

(assert (= (and b!131510 c!24307) b!131508))

(assert (= (and b!131510 (not c!24307)) b!131506))

(assert (= (or b!131508 b!131506) bm!14381))

(assert (=> bm!14381 m!154841))

(declare-fun m!155191 () Bool)

(assert (=> bm!14381 m!155191))

(assert (=> b!131507 m!154841))

(assert (=> b!131507 m!154841))

(declare-fun m!155193 () Bool)

(assert (=> b!131507 m!155193))

(assert (=> b!131509 m!154841))

(assert (=> b!131509 m!154841))

(assert (=> b!131509 m!154843))

(assert (=> b!131510 m!154841))

(assert (=> b!131510 m!154841))

(assert (=> b!131510 m!154843))

(assert (=> b!131245 d!40067))

(assert (=> b!131210 d!40045))

(declare-fun d!40069 () Bool)

(assert (=> d!40069 (= (inRange!0 (ite c!24217 (ite c!24218 (index!3291 lt!68248) (ite c!24209 (index!3290 lt!68250) (index!3293 lt!68250))) (ite c!24214 (index!3291 lt!68244) (ite c!24212 (index!3290 lt!68253) (index!3293 lt!68253)))) (mask!7131 newMap!16)) (and (bvsge (ite c!24217 (ite c!24218 (index!3291 lt!68248) (ite c!24209 (index!3290 lt!68250) (index!3293 lt!68250))) (ite c!24214 (index!3291 lt!68244) (ite c!24212 (index!3290 lt!68253) (index!3293 lt!68253)))) #b00000000000000000000000000000000) (bvslt (ite c!24217 (ite c!24218 (index!3291 lt!68248) (ite c!24209 (index!3290 lt!68250) (index!3293 lt!68250))) (ite c!24214 (index!3291 lt!68244) (ite c!24212 (index!3290 lt!68253) (index!3293 lt!68253)))) (bvadd (mask!7131 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!14315 d!40069))

(declare-fun d!40071 () Bool)

(assert (=> d!40071 (= (+!168 (getCurrentListMap!537 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!537 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) lt!68243 (zeroValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68560 () Unit!4112)

(declare-fun choose!813 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 V!3467 Int) Unit!4112)

(assert (=> d!40071 (= lt!68560 (choose!813 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) lt!68243 (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2843 newMap!16)))))

(assert (=> d!40071 (validMask!0 (mask!7131 newMap!16))))

(assert (=> d!40071 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!59 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) lt!68243 (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2843 newMap!16)) lt!68560)))

(declare-fun bs!5460 () Bool)

(assert (= bs!5460 d!40071))

(assert (=> bs!5460 m!154691))

(declare-fun m!155195 () Bool)

(assert (=> bs!5460 m!155195))

(assert (=> bs!5460 m!154691))

(assert (=> bs!5460 m!154605))

(declare-fun m!155197 () Bool)

(assert (=> bs!5460 m!155197))

(assert (=> bs!5460 m!154847))

(assert (=> bs!5460 m!154605))

(declare-fun m!155199 () Bool)

(assert (=> bs!5460 m!155199))

(assert (=> b!131119 d!40071))

(declare-fun bm!14384 () Bool)

(declare-fun call!14387 () (_ BitVec 32))

(assert (=> bm!14384 (= call!14387 (arrayCountValidKeys!0 (_keys!4588 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2515 (_keys!4588 newMap!16))))))

(declare-fun b!131519 () Bool)

(declare-fun e!85763 () (_ BitVec 32))

(assert (=> b!131519 (= e!85763 call!14387)))

(declare-fun b!131520 () Bool)

(assert (=> b!131520 (= e!85763 (bvadd #b00000000000000000000000000000001 call!14387))))

(declare-fun b!131522 () Bool)

(declare-fun e!85762 () (_ BitVec 32))

(assert (=> b!131522 (= e!85762 e!85763)))

(declare-fun c!24312 () Bool)

(assert (=> b!131522 (= c!24312 (validKeyInArray!0 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!131521 () Bool)

(assert (=> b!131521 (= e!85762 #b00000000000000000000000000000000)))

(declare-fun d!40073 () Bool)

(declare-fun lt!68563 () (_ BitVec 32))

(assert (=> d!40073 (and (bvsge lt!68563 #b00000000000000000000000000000000) (bvsle lt!68563 (bvsub (size!2515 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!40073 (= lt!68563 e!85762)))

(declare-fun c!24313 () Bool)

(assert (=> d!40073 (= c!24313 (bvsge #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(assert (=> d!40073 (and (bvsle #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2515 (_keys!4588 newMap!16)) (size!2515 (_keys!4588 newMap!16))))))

(assert (=> d!40073 (= (arrayCountValidKeys!0 (_keys!4588 newMap!16) #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))) lt!68563)))

(assert (= (and d!40073 c!24313) b!131521))

(assert (= (and d!40073 (not c!24313)) b!131522))

(assert (= (and b!131522 c!24312) b!131520))

(assert (= (and b!131522 (not c!24312)) b!131519))

(assert (= (or b!131520 b!131519) bm!14384))

(declare-fun m!155201 () Bool)

(assert (=> bm!14384 m!155201))

(assert (=> b!131522 m!154841))

(assert (=> b!131522 m!154841))

(assert (=> b!131522 m!154843))

(assert (=> b!131243 d!40073))

(declare-fun b!131523 () Bool)

(declare-fun lt!68569 () ListLongMap!1701)

(declare-fun e!85768 () Bool)

(assert (=> b!131523 (= e!85768 (= (apply!114 lt!68569 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16))))))

(declare-fun b!131524 () Bool)

(declare-fun e!85764 () Unit!4112)

(declare-fun lt!68580 () Unit!4112)

(assert (=> b!131524 (= e!85764 lt!68580)))

(declare-fun lt!68584 () ListLongMap!1701)

(assert (=> b!131524 (= lt!68584 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (ite c!24215 (_values!2826 newMap!16) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (index!3291 lt!68256) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16)))) (mask!7131 newMap!16) (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16)) (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68578 () (_ BitVec 64))

(assert (=> b!131524 (= lt!68578 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68577 () (_ BitVec 64))

(assert (=> b!131524 (= lt!68577 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68583 () Unit!4112)

(assert (=> b!131524 (= lt!68583 (addStillContains!90 lt!68584 lt!68578 (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16)) lt!68577))))

(assert (=> b!131524 (contains!889 (+!168 lt!68584 (tuple2!2597 lt!68578 (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16)))) lt!68577)))

(declare-fun lt!68572 () Unit!4112)

(assert (=> b!131524 (= lt!68572 lt!68583)))

(declare-fun lt!68582 () ListLongMap!1701)

(assert (=> b!131524 (= lt!68582 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (ite c!24215 (_values!2826 newMap!16) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (index!3291 lt!68256) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16)))) (mask!7131 newMap!16) (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16)) (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68566 () (_ BitVec 64))

(assert (=> b!131524 (= lt!68566 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68579 () (_ BitVec 64))

(assert (=> b!131524 (= lt!68579 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68570 () Unit!4112)

(assert (=> b!131524 (= lt!68570 (addApplyDifferent!90 lt!68582 lt!68566 (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16)) lt!68579))))

(assert (=> b!131524 (= (apply!114 (+!168 lt!68582 (tuple2!2597 lt!68566 (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16)))) lt!68579) (apply!114 lt!68582 lt!68579))))

(declare-fun lt!68574 () Unit!4112)

(assert (=> b!131524 (= lt!68574 lt!68570)))

(declare-fun lt!68576 () ListLongMap!1701)

(assert (=> b!131524 (= lt!68576 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (ite c!24215 (_values!2826 newMap!16) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (index!3291 lt!68256) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16)))) (mask!7131 newMap!16) (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16)) (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68565 () (_ BitVec 64))

(assert (=> b!131524 (= lt!68565 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68575 () (_ BitVec 64))

(assert (=> b!131524 (= lt!68575 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68571 () Unit!4112)

(assert (=> b!131524 (= lt!68571 (addApplyDifferent!90 lt!68576 lt!68565 (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16)) lt!68575))))

(assert (=> b!131524 (= (apply!114 (+!168 lt!68576 (tuple2!2597 lt!68565 (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16)))) lt!68575) (apply!114 lt!68576 lt!68575))))

(declare-fun lt!68581 () Unit!4112)

(assert (=> b!131524 (= lt!68581 lt!68571)))

(declare-fun lt!68567 () ListLongMap!1701)

(assert (=> b!131524 (= lt!68567 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (ite c!24215 (_values!2826 newMap!16) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (index!3291 lt!68256) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16)))) (mask!7131 newMap!16) (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16)) (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68585 () (_ BitVec 64))

(assert (=> b!131524 (= lt!68585 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68573 () (_ BitVec 64))

(assert (=> b!131524 (= lt!68573 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!131524 (= lt!68580 (addApplyDifferent!90 lt!68567 lt!68585 (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16)) lt!68573))))

(assert (=> b!131524 (= (apply!114 (+!168 lt!68567 (tuple2!2597 lt!68585 (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16)))) lt!68573) (apply!114 lt!68567 lt!68573))))

(declare-fun bm!14385 () Bool)

(declare-fun call!14392 () Bool)

(assert (=> bm!14385 (= call!14392 (contains!889 lt!68569 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!14386 () Bool)

(declare-fun call!14388 () Bool)

(assert (=> bm!14386 (= call!14388 (contains!889 lt!68569 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!131525 () Bool)

(declare-fun e!85771 () Bool)

(declare-fun e!85776 () Bool)

(assert (=> b!131525 (= e!85771 e!85776)))

(declare-fun res!63375 () Bool)

(assert (=> b!131525 (= res!63375 call!14392)))

(assert (=> b!131525 (=> (not res!63375) (not e!85776))))

(declare-fun bm!14387 () Bool)

(declare-fun call!14391 () ListLongMap!1701)

(declare-fun call!14390 () ListLongMap!1701)

(assert (=> bm!14387 (= call!14391 call!14390)))

(declare-fun b!131526 () Bool)

(declare-fun e!85773 () Bool)

(assert (=> b!131526 (= e!85773 (not call!14388))))

(declare-fun b!131527 () Bool)

(assert (=> b!131527 (= e!85773 e!85768)))

(declare-fun res!63371 () Bool)

(assert (=> b!131527 (= res!63371 call!14388)))

(assert (=> b!131527 (=> (not res!63371) (not e!85768))))

(declare-fun b!131528 () Bool)

(declare-fun e!85765 () Bool)

(declare-fun e!85772 () Bool)

(assert (=> b!131528 (= e!85765 e!85772)))

(declare-fun res!63367 () Bool)

(assert (=> b!131528 (=> (not res!63367) (not e!85772))))

(assert (=> b!131528 (= res!63367 (contains!889 lt!68569 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!131528 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(declare-fun b!131529 () Bool)

(declare-fun e!85767 () Bool)

(assert (=> b!131529 (= e!85767 (validKeyInArray!0 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!131530 () Bool)

(assert (=> b!131530 (= e!85772 (= (apply!114 lt!68569 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)) (get!1475 (select (arr!2249 (ite c!24215 (_values!2826 newMap!16) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (index!3291 lt!68256) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!422 (defaultEntry!2843 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!131530 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2516 (ite c!24215 (_values!2826 newMap!16) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (index!3291 lt!68256) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16)))))))))

(assert (=> b!131530 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(declare-fun b!131531 () Bool)

(assert (=> b!131531 (= e!85771 (not call!14392))))

(declare-fun bm!14388 () Bool)

(assert (=> bm!14388 (= call!14390 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (ite c!24215 (_values!2826 newMap!16) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (index!3291 lt!68256) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16)))) (mask!7131 newMap!16) (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16)) (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun c!24315 () Bool)

(declare-fun b!131532 () Bool)

(assert (=> b!131532 (= c!24315 (and (not (= (bvand (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!85770 () ListLongMap!1701)

(declare-fun e!85766 () ListLongMap!1701)

(assert (=> b!131532 (= e!85770 e!85766)))

(declare-fun d!40075 () Bool)

(declare-fun e!85775 () Bool)

(assert (=> d!40075 e!85775))

(declare-fun res!63373 () Bool)

(assert (=> d!40075 (=> (not res!63373) (not e!85775))))

(assert (=> d!40075 (= res!63373 (or (bvsge #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))))

(declare-fun lt!68568 () ListLongMap!1701)

(assert (=> d!40075 (= lt!68569 lt!68568)))

(declare-fun lt!68564 () Unit!4112)

(assert (=> d!40075 (= lt!68564 e!85764)))

(declare-fun c!24317 () Bool)

(assert (=> d!40075 (= c!24317 e!85767)))

(declare-fun res!63369 () Bool)

(assert (=> d!40075 (=> (not res!63369) (not e!85767))))

(assert (=> d!40075 (= res!63369 (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(declare-fun e!85774 () ListLongMap!1701)

(assert (=> d!40075 (= lt!68568 e!85774)))

(declare-fun c!24318 () Bool)

(assert (=> d!40075 (= c!24318 (and (not (= (bvand (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!40075 (validMask!0 (mask!7131 newMap!16))))

(assert (=> d!40075 (= (getCurrentListMap!537 (_keys!4588 newMap!16) (ite c!24215 (_values!2826 newMap!16) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (index!3291 lt!68256) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16)))) (mask!7131 newMap!16) (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16)) (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)) lt!68569)))

(declare-fun b!131533 () Bool)

(declare-fun res!63368 () Bool)

(assert (=> b!131533 (=> (not res!63368) (not e!85775))))

(assert (=> b!131533 (= res!63368 e!85765)))

(declare-fun res!63374 () Bool)

(assert (=> b!131533 (=> res!63374 e!85765)))

(declare-fun e!85769 () Bool)

(assert (=> b!131533 (= res!63374 (not e!85769))))

(declare-fun res!63372 () Bool)

(assert (=> b!131533 (=> (not res!63372) (not e!85769))))

(assert (=> b!131533 (= res!63372 (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(declare-fun b!131534 () Bool)

(declare-fun call!14389 () ListLongMap!1701)

(assert (=> b!131534 (= e!85766 call!14389)))

(declare-fun call!14393 () ListLongMap!1701)

(declare-fun b!131535 () Bool)

(assert (=> b!131535 (= e!85774 (+!168 call!14393 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16)))))))

(declare-fun bm!14389 () Bool)

(declare-fun c!24319 () Bool)

(assert (=> bm!14389 (= call!14393 (+!168 (ite c!24318 call!14390 (ite c!24319 call!14391 call!14389)) (ite (or c!24318 c!24319) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!24215 c!24208) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2700 newMap!16))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16))))))))

(declare-fun b!131536 () Bool)

(declare-fun Unit!4124 () Unit!4112)

(assert (=> b!131536 (= e!85764 Unit!4124)))

(declare-fun b!131537 () Bool)

(assert (=> b!131537 (= e!85775 e!85771)))

(declare-fun c!24316 () Bool)

(assert (=> b!131537 (= c!24316 (not (= (bvand (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!131538 () Bool)

(declare-fun res!63370 () Bool)

(assert (=> b!131538 (=> (not res!63370) (not e!85775))))

(assert (=> b!131538 (= res!63370 e!85773)))

(declare-fun c!24314 () Bool)

(assert (=> b!131538 (= c!24314 (not (= (bvand (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!131539 () Bool)

(declare-fun call!14394 () ListLongMap!1701)

(assert (=> b!131539 (= e!85766 call!14394)))

(declare-fun b!131540 () Bool)

(assert (=> b!131540 (= e!85769 (validKeyInArray!0 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!14390 () Bool)

(assert (=> bm!14390 (= call!14394 call!14393)))

(declare-fun b!131541 () Bool)

(assert (=> b!131541 (= e!85776 (= (apply!114 lt!68569 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!24215 (ite c!24208 (minValue!2700 newMap!16) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2700 newMap!16))))))

(declare-fun bm!14391 () Bool)

(assert (=> bm!14391 (= call!14389 call!14391)))

(declare-fun b!131542 () Bool)

(assert (=> b!131542 (= e!85774 e!85770)))

(assert (=> b!131542 (= c!24319 (and (not (= (bvand (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!24215 (ite c!24208 lt!68238 lt!68243) (extraKeys!2612 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!131543 () Bool)

(assert (=> b!131543 (= e!85770 call!14394)))

(assert (= (and d!40075 c!24318) b!131535))

(assert (= (and d!40075 (not c!24318)) b!131542))

(assert (= (and b!131542 c!24319) b!131543))

(assert (= (and b!131542 (not c!24319)) b!131532))

(assert (= (and b!131532 c!24315) b!131539))

(assert (= (and b!131532 (not c!24315)) b!131534))

(assert (= (or b!131539 b!131534) bm!14391))

(assert (= (or b!131543 bm!14391) bm!14387))

(assert (= (or b!131543 b!131539) bm!14390))

(assert (= (or b!131535 bm!14387) bm!14388))

(assert (= (or b!131535 bm!14390) bm!14389))

(assert (= (and d!40075 res!63369) b!131529))

(assert (= (and d!40075 c!24317) b!131524))

(assert (= (and d!40075 (not c!24317)) b!131536))

(assert (= (and d!40075 res!63373) b!131533))

(assert (= (and b!131533 res!63372) b!131540))

(assert (= (and b!131533 (not res!63374)) b!131528))

(assert (= (and b!131528 res!63367) b!131530))

(assert (= (and b!131533 res!63368) b!131538))

(assert (= (and b!131538 c!24314) b!131527))

(assert (= (and b!131538 (not c!24314)) b!131526))

(assert (= (and b!131527 res!63371) b!131523))

(assert (= (or b!131527 b!131526) bm!14386))

(assert (= (and b!131538 res!63370) b!131537))

(assert (= (and b!131537 c!24316) b!131525))

(assert (= (and b!131537 (not c!24316)) b!131531))

(assert (= (and b!131525 res!63375) b!131541))

(assert (= (or b!131525 b!131531) bm!14385))

(declare-fun b_lambda!5879 () Bool)

(assert (=> (not b_lambda!5879) (not b!131530)))

(assert (=> b!131530 t!6168))

(declare-fun b_and!8161 () Bool)

(assert (= b_and!8157 (and (=> t!6168 result!3961) b_and!8161)))

(assert (=> b!131530 t!6170))

(declare-fun b_and!8163 () Bool)

(assert (= b_and!8159 (and (=> t!6170 result!3963) b_and!8163)))

(assert (=> b!131540 m!154841))

(assert (=> b!131540 m!154841))

(assert (=> b!131540 m!154843))

(declare-fun m!155203 () Bool)

(assert (=> bm!14389 m!155203))

(assert (=> d!40075 m!154847))

(assert (=> b!131528 m!154841))

(assert (=> b!131528 m!154841))

(declare-fun m!155205 () Bool)

(assert (=> b!131528 m!155205))

(declare-fun m!155207 () Bool)

(assert (=> b!131530 m!155207))

(assert (=> b!131530 m!154853))

(declare-fun m!155209 () Bool)

(assert (=> b!131530 m!155209))

(assert (=> b!131530 m!154853))

(assert (=> b!131530 m!154841))

(assert (=> b!131530 m!155207))

(assert (=> b!131530 m!154841))

(declare-fun m!155211 () Bool)

(assert (=> b!131530 m!155211))

(declare-fun m!155213 () Bool)

(assert (=> bm!14388 m!155213))

(declare-fun m!155215 () Bool)

(assert (=> bm!14385 m!155215))

(declare-fun m!155217 () Bool)

(assert (=> b!131541 m!155217))

(declare-fun m!155219 () Bool)

(assert (=> b!131523 m!155219))

(declare-fun m!155221 () Bool)

(assert (=> b!131524 m!155221))

(declare-fun m!155223 () Bool)

(assert (=> b!131524 m!155223))

(declare-fun m!155225 () Bool)

(assert (=> b!131524 m!155225))

(declare-fun m!155227 () Bool)

(assert (=> b!131524 m!155227))

(declare-fun m!155229 () Bool)

(assert (=> b!131524 m!155229))

(assert (=> b!131524 m!155221))

(assert (=> b!131524 m!154841))

(declare-fun m!155231 () Bool)

(assert (=> b!131524 m!155231))

(declare-fun m!155233 () Bool)

(assert (=> b!131524 m!155233))

(declare-fun m!155235 () Bool)

(assert (=> b!131524 m!155235))

(declare-fun m!155237 () Bool)

(assert (=> b!131524 m!155237))

(declare-fun m!155239 () Bool)

(assert (=> b!131524 m!155239))

(assert (=> b!131524 m!155229))

(declare-fun m!155241 () Bool)

(assert (=> b!131524 m!155241))

(declare-fun m!155243 () Bool)

(assert (=> b!131524 m!155243))

(declare-fun m!155245 () Bool)

(assert (=> b!131524 m!155245))

(assert (=> b!131524 m!155233))

(declare-fun m!155247 () Bool)

(assert (=> b!131524 m!155247))

(assert (=> b!131524 m!155243))

(declare-fun m!155249 () Bool)

(assert (=> b!131524 m!155249))

(assert (=> b!131524 m!155213))

(declare-fun m!155251 () Bool)

(assert (=> b!131535 m!155251))

(declare-fun m!155253 () Bool)

(assert (=> bm!14386 m!155253))

(assert (=> b!131529 m!154841))

(assert (=> b!131529 m!154841))

(assert (=> b!131529 m!154843))

(assert (=> bm!14314 d!40075))

(declare-fun b!131544 () Bool)

(declare-fun e!85781 () Bool)

(declare-fun lt!68591 () ListLongMap!1701)

(assert (=> b!131544 (= e!85781 (= (apply!114 lt!68591 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2700 newMap!16)))))

(declare-fun b!131545 () Bool)

(declare-fun e!85777 () Unit!4112)

(declare-fun lt!68602 () Unit!4112)

(assert (=> b!131545 (= e!85777 lt!68602)))

(declare-fun lt!68606 () ListLongMap!1701)

(assert (=> b!131545 (= lt!68606 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (ite (or c!24215 c!24217) (_values!2826 newMap!16) lt!68262) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68600 () (_ BitVec 64))

(assert (=> b!131545 (= lt!68600 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68599 () (_ BitVec 64))

(assert (=> b!131545 (= lt!68599 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68605 () Unit!4112)

(assert (=> b!131545 (= lt!68605 (addStillContains!90 lt!68606 lt!68600 (zeroValue!2700 newMap!16) lt!68599))))

(assert (=> b!131545 (contains!889 (+!168 lt!68606 (tuple2!2597 lt!68600 (zeroValue!2700 newMap!16))) lt!68599)))

(declare-fun lt!68594 () Unit!4112)

(assert (=> b!131545 (= lt!68594 lt!68605)))

(declare-fun lt!68604 () ListLongMap!1701)

(assert (=> b!131545 (= lt!68604 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (ite (or c!24215 c!24217) (_values!2826 newMap!16) lt!68262) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68588 () (_ BitVec 64))

(assert (=> b!131545 (= lt!68588 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68601 () (_ BitVec 64))

(assert (=> b!131545 (= lt!68601 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68592 () Unit!4112)

(assert (=> b!131545 (= lt!68592 (addApplyDifferent!90 lt!68604 lt!68588 (minValue!2700 newMap!16) lt!68601))))

(assert (=> b!131545 (= (apply!114 (+!168 lt!68604 (tuple2!2597 lt!68588 (minValue!2700 newMap!16))) lt!68601) (apply!114 lt!68604 lt!68601))))

(declare-fun lt!68596 () Unit!4112)

(assert (=> b!131545 (= lt!68596 lt!68592)))

(declare-fun lt!68598 () ListLongMap!1701)

(assert (=> b!131545 (= lt!68598 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (ite (or c!24215 c!24217) (_values!2826 newMap!16) lt!68262) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68587 () (_ BitVec 64))

(assert (=> b!131545 (= lt!68587 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68597 () (_ BitVec 64))

(assert (=> b!131545 (= lt!68597 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68593 () Unit!4112)

(assert (=> b!131545 (= lt!68593 (addApplyDifferent!90 lt!68598 lt!68587 (zeroValue!2700 newMap!16) lt!68597))))

(assert (=> b!131545 (= (apply!114 (+!168 lt!68598 (tuple2!2597 lt!68587 (zeroValue!2700 newMap!16))) lt!68597) (apply!114 lt!68598 lt!68597))))

(declare-fun lt!68603 () Unit!4112)

(assert (=> b!131545 (= lt!68603 lt!68593)))

(declare-fun lt!68589 () ListLongMap!1701)

(assert (=> b!131545 (= lt!68589 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (ite (or c!24215 c!24217) (_values!2826 newMap!16) lt!68262) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun lt!68607 () (_ BitVec 64))

(assert (=> b!131545 (= lt!68607 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68595 () (_ BitVec 64))

(assert (=> b!131545 (= lt!68595 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!131545 (= lt!68602 (addApplyDifferent!90 lt!68589 lt!68607 (minValue!2700 newMap!16) lt!68595))))

(assert (=> b!131545 (= (apply!114 (+!168 lt!68589 (tuple2!2597 lt!68607 (minValue!2700 newMap!16))) lt!68595) (apply!114 lt!68589 lt!68595))))

(declare-fun bm!14392 () Bool)

(declare-fun call!14399 () Bool)

(assert (=> bm!14392 (= call!14399 (contains!889 lt!68591 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!14393 () Bool)

(declare-fun call!14395 () Bool)

(assert (=> bm!14393 (= call!14395 (contains!889 lt!68591 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!131546 () Bool)

(declare-fun e!85784 () Bool)

(declare-fun e!85789 () Bool)

(assert (=> b!131546 (= e!85784 e!85789)))

(declare-fun res!63384 () Bool)

(assert (=> b!131546 (= res!63384 call!14399)))

(assert (=> b!131546 (=> (not res!63384) (not e!85789))))

(declare-fun bm!14394 () Bool)

(declare-fun call!14398 () ListLongMap!1701)

(declare-fun call!14397 () ListLongMap!1701)

(assert (=> bm!14394 (= call!14398 call!14397)))

(declare-fun b!131547 () Bool)

(declare-fun e!85786 () Bool)

(assert (=> b!131547 (= e!85786 (not call!14395))))

(declare-fun b!131548 () Bool)

(assert (=> b!131548 (= e!85786 e!85781)))

(declare-fun res!63380 () Bool)

(assert (=> b!131548 (= res!63380 call!14395)))

(assert (=> b!131548 (=> (not res!63380) (not e!85781))))

(declare-fun b!131549 () Bool)

(declare-fun e!85778 () Bool)

(declare-fun e!85785 () Bool)

(assert (=> b!131549 (= e!85778 e!85785)))

(declare-fun res!63376 () Bool)

(assert (=> b!131549 (=> (not res!63376) (not e!85785))))

(assert (=> b!131549 (= res!63376 (contains!889 lt!68591 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!131549 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(declare-fun b!131550 () Bool)

(declare-fun e!85780 () Bool)

(assert (=> b!131550 (= e!85780 (validKeyInArray!0 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!131551 () Bool)

(assert (=> b!131551 (= e!85785 (= (apply!114 lt!68591 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)) (get!1475 (select (arr!2249 (ite (or c!24215 c!24217) (_values!2826 newMap!16) lt!68262)) #b00000000000000000000000000000000) (dynLambda!422 (defaultEntry!2843 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!131551 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2516 (ite (or c!24215 c!24217) (_values!2826 newMap!16) lt!68262))))))

(assert (=> b!131551 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(declare-fun b!131552 () Bool)

(assert (=> b!131552 (= e!85784 (not call!14399))))

(declare-fun bm!14395 () Bool)

(assert (=> bm!14395 (= call!14397 (getCurrentListMapNoExtraKeys!135 (_keys!4588 newMap!16) (ite (or c!24215 c!24217) (_values!2826 newMap!16) lt!68262) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)))))

(declare-fun b!131553 () Bool)

(declare-fun c!24321 () Bool)

(assert (=> b!131553 (= c!24321 (and (not (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!85783 () ListLongMap!1701)

(declare-fun e!85779 () ListLongMap!1701)

(assert (=> b!131553 (= e!85783 e!85779)))

(declare-fun d!40077 () Bool)

(declare-fun e!85788 () Bool)

(assert (=> d!40077 e!85788))

(declare-fun res!63382 () Bool)

(assert (=> d!40077 (=> (not res!63382) (not e!85788))))

(assert (=> d!40077 (= res!63382 (or (bvsge #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))))

(declare-fun lt!68590 () ListLongMap!1701)

(assert (=> d!40077 (= lt!68591 lt!68590)))

(declare-fun lt!68586 () Unit!4112)

(assert (=> d!40077 (= lt!68586 e!85777)))

(declare-fun c!24323 () Bool)

(assert (=> d!40077 (= c!24323 e!85780)))

(declare-fun res!63378 () Bool)

(assert (=> d!40077 (=> (not res!63378) (not e!85780))))

(assert (=> d!40077 (= res!63378 (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(declare-fun e!85787 () ListLongMap!1701)

(assert (=> d!40077 (= lt!68590 e!85787)))

(declare-fun c!24324 () Bool)

(assert (=> d!40077 (= c!24324 (and (not (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!40077 (validMask!0 (mask!7131 newMap!16))))

(assert (=> d!40077 (= (getCurrentListMap!537 (_keys!4588 newMap!16) (ite (or c!24215 c!24217) (_values!2826 newMap!16) lt!68262) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)) lt!68591)))

(declare-fun b!131554 () Bool)

(declare-fun res!63377 () Bool)

(assert (=> b!131554 (=> (not res!63377) (not e!85788))))

(assert (=> b!131554 (= res!63377 e!85778)))

(declare-fun res!63383 () Bool)

(assert (=> b!131554 (=> res!63383 e!85778)))

(declare-fun e!85782 () Bool)

(assert (=> b!131554 (= res!63383 (not e!85782))))

(declare-fun res!63381 () Bool)

(assert (=> b!131554 (=> (not res!63381) (not e!85782))))

(assert (=> b!131554 (= res!63381 (bvslt #b00000000000000000000000000000000 (size!2515 (_keys!4588 newMap!16))))))

(declare-fun b!131555 () Bool)

(declare-fun call!14396 () ListLongMap!1701)

(assert (=> b!131555 (= e!85779 call!14396)))

(declare-fun b!131556 () Bool)

(declare-fun call!14400 () ListLongMap!1701)

(assert (=> b!131556 (= e!85787 (+!168 call!14400 (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 newMap!16))))))

(declare-fun c!24325 () Bool)

(declare-fun bm!14396 () Bool)

(assert (=> bm!14396 (= call!14400 (+!168 (ite c!24324 call!14397 (ite c!24325 call!14398 call!14396)) (ite (or c!24324 c!24325) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 newMap!16)) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 newMap!16)))))))

(declare-fun b!131557 () Bool)

(declare-fun Unit!4125 () Unit!4112)

(assert (=> b!131557 (= e!85777 Unit!4125)))

(declare-fun b!131558 () Bool)

(assert (=> b!131558 (= e!85788 e!85784)))

(declare-fun c!24322 () Bool)

(assert (=> b!131558 (= c!24322 (not (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!131559 () Bool)

(declare-fun res!63379 () Bool)

(assert (=> b!131559 (=> (not res!63379) (not e!85788))))

(assert (=> b!131559 (= res!63379 e!85786)))

(declare-fun c!24320 () Bool)

(assert (=> b!131559 (= c!24320 (not (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!131560 () Bool)

(declare-fun call!14401 () ListLongMap!1701)

(assert (=> b!131560 (= e!85779 call!14401)))

(declare-fun b!131561 () Bool)

(assert (=> b!131561 (= e!85782 (validKeyInArray!0 (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!14397 () Bool)

(assert (=> bm!14397 (= call!14401 call!14400)))

(declare-fun b!131562 () Bool)

(assert (=> b!131562 (= e!85789 (= (apply!114 lt!68591 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2700 newMap!16)))))

(declare-fun bm!14398 () Bool)

(assert (=> bm!14398 (= call!14396 call!14398)))

(declare-fun b!131563 () Bool)

(assert (=> b!131563 (= e!85787 e!85783)))

(assert (=> b!131563 (= c!24325 (and (not (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2612 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!131564 () Bool)

(assert (=> b!131564 (= e!85783 call!14401)))

(assert (= (and d!40077 c!24324) b!131556))

(assert (= (and d!40077 (not c!24324)) b!131563))

(assert (= (and b!131563 c!24325) b!131564))

(assert (= (and b!131563 (not c!24325)) b!131553))

(assert (= (and b!131553 c!24321) b!131560))

(assert (= (and b!131553 (not c!24321)) b!131555))

(assert (= (or b!131560 b!131555) bm!14398))

(assert (= (or b!131564 bm!14398) bm!14394))

(assert (= (or b!131564 b!131560) bm!14397))

(assert (= (or b!131556 bm!14394) bm!14395))

(assert (= (or b!131556 bm!14397) bm!14396))

(assert (= (and d!40077 res!63378) b!131550))

(assert (= (and d!40077 c!24323) b!131545))

(assert (= (and d!40077 (not c!24323)) b!131557))

(assert (= (and d!40077 res!63382) b!131554))

(assert (= (and b!131554 res!63381) b!131561))

(assert (= (and b!131554 (not res!63383)) b!131549))

(assert (= (and b!131549 res!63376) b!131551))

(assert (= (and b!131554 res!63377) b!131559))

(assert (= (and b!131559 c!24320) b!131548))

(assert (= (and b!131559 (not c!24320)) b!131547))

(assert (= (and b!131548 res!63380) b!131544))

(assert (= (or b!131548 b!131547) bm!14393))

(assert (= (and b!131559 res!63379) b!131558))

(assert (= (and b!131558 c!24322) b!131546))

(assert (= (and b!131558 (not c!24322)) b!131552))

(assert (= (and b!131546 res!63384) b!131562))

(assert (= (or b!131546 b!131552) bm!14392))

(declare-fun b_lambda!5881 () Bool)

(assert (=> (not b_lambda!5881) (not b!131551)))

(assert (=> b!131551 t!6168))

(declare-fun b_and!8165 () Bool)

(assert (= b_and!8161 (and (=> t!6168 result!3961) b_and!8165)))

(assert (=> b!131551 t!6170))

(declare-fun b_and!8167 () Bool)

(assert (= b_and!8163 (and (=> t!6170 result!3963) b_and!8167)))

(assert (=> b!131561 m!154841))

(assert (=> b!131561 m!154841))

(assert (=> b!131561 m!154843))

(declare-fun m!155255 () Bool)

(assert (=> bm!14396 m!155255))

(assert (=> d!40077 m!154847))

(assert (=> b!131549 m!154841))

(assert (=> b!131549 m!154841))

(declare-fun m!155257 () Bool)

(assert (=> b!131549 m!155257))

(declare-fun m!155259 () Bool)

(assert (=> b!131551 m!155259))

(assert (=> b!131551 m!154853))

(declare-fun m!155261 () Bool)

(assert (=> b!131551 m!155261))

(assert (=> b!131551 m!154853))

(assert (=> b!131551 m!154841))

(assert (=> b!131551 m!155259))

(assert (=> b!131551 m!154841))

(declare-fun m!155263 () Bool)

(assert (=> b!131551 m!155263))

(declare-fun m!155265 () Bool)

(assert (=> bm!14395 m!155265))

(declare-fun m!155267 () Bool)

(assert (=> bm!14392 m!155267))

(declare-fun m!155269 () Bool)

(assert (=> b!131562 m!155269))

(declare-fun m!155271 () Bool)

(assert (=> b!131544 m!155271))

(declare-fun m!155273 () Bool)

(assert (=> b!131545 m!155273))

(declare-fun m!155275 () Bool)

(assert (=> b!131545 m!155275))

(declare-fun m!155277 () Bool)

(assert (=> b!131545 m!155277))

(declare-fun m!155279 () Bool)

(assert (=> b!131545 m!155279))

(declare-fun m!155281 () Bool)

(assert (=> b!131545 m!155281))

(assert (=> b!131545 m!155273))

(assert (=> b!131545 m!154841))

(declare-fun m!155283 () Bool)

(assert (=> b!131545 m!155283))

(declare-fun m!155285 () Bool)

(assert (=> b!131545 m!155285))

(declare-fun m!155287 () Bool)

(assert (=> b!131545 m!155287))

(declare-fun m!155289 () Bool)

(assert (=> b!131545 m!155289))

(declare-fun m!155291 () Bool)

(assert (=> b!131545 m!155291))

(assert (=> b!131545 m!155281))

(declare-fun m!155293 () Bool)

(assert (=> b!131545 m!155293))

(declare-fun m!155295 () Bool)

(assert (=> b!131545 m!155295))

(declare-fun m!155297 () Bool)

(assert (=> b!131545 m!155297))

(assert (=> b!131545 m!155285))

(declare-fun m!155299 () Bool)

(assert (=> b!131545 m!155299))

(assert (=> b!131545 m!155295))

(declare-fun m!155301 () Bool)

(assert (=> b!131545 m!155301))

(assert (=> b!131545 m!155265))

(declare-fun m!155303 () Bool)

(assert (=> b!131556 m!155303))

(declare-fun m!155305 () Bool)

(assert (=> bm!14393 m!155305))

(assert (=> b!131550 m!154841))

(assert (=> b!131550 m!154841))

(assert (=> b!131550 m!154843))

(assert (=> bm!14321 d!40077))

(declare-fun d!40079 () Bool)

(declare-fun e!85790 () Bool)

(assert (=> d!40079 e!85790))

(declare-fun res!63385 () Bool)

(assert (=> d!40079 (=> res!63385 e!85790)))

(declare-fun lt!68609 () Bool)

(assert (=> d!40079 (= res!63385 (not lt!68609))))

(declare-fun lt!68608 () Bool)

(assert (=> d!40079 (= lt!68609 lt!68608)))

(declare-fun lt!68610 () Unit!4112)

(declare-fun e!85791 () Unit!4112)

(assert (=> d!40079 (= lt!68610 e!85791)))

(declare-fun c!24326 () Bool)

(assert (=> d!40079 (= c!24326 lt!68608)))

(assert (=> d!40079 (= lt!68608 (containsKey!173 (toList!866 lt!68312) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!40079 (= (contains!889 lt!68312 #b0000000000000000000000000000000000000000000000000000000000000000) lt!68609)))

(declare-fun b!131565 () Bool)

(declare-fun lt!68611 () Unit!4112)

(assert (=> b!131565 (= e!85791 lt!68611)))

(assert (=> b!131565 (= lt!68611 (lemmaContainsKeyImpliesGetValueByKeyDefined!122 (toList!866 lt!68312) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!131565 (isDefined!123 (getValueByKey!169 (toList!866 lt!68312) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!131566 () Bool)

(declare-fun Unit!4126 () Unit!4112)

(assert (=> b!131566 (= e!85791 Unit!4126)))

(declare-fun b!131567 () Bool)

(assert (=> b!131567 (= e!85790 (isDefined!123 (getValueByKey!169 (toList!866 lt!68312) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!40079 c!24326) b!131565))

(assert (= (and d!40079 (not c!24326)) b!131566))

(assert (= (and d!40079 (not res!63385)) b!131567))

(declare-fun m!155307 () Bool)

(assert (=> d!40079 m!155307))

(declare-fun m!155309 () Bool)

(assert (=> b!131565 m!155309))

(declare-fun m!155311 () Bool)

(assert (=> b!131565 m!155311))

(assert (=> b!131565 m!155311))

(declare-fun m!155313 () Bool)

(assert (=> b!131565 m!155313))

(assert (=> b!131567 m!155311))

(assert (=> b!131567 m!155311))

(assert (=> b!131567 m!155313))

(assert (=> bm!14340 d!40079))

(declare-fun d!40081 () Bool)

(assert (=> d!40081 (= (apply!114 lt!68312 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1478 (getValueByKey!169 (toList!866 lt!68312) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5461 () Bool)

(assert (= bs!5461 d!40081))

(declare-fun m!155315 () Bool)

(assert (=> bs!5461 m!155315))

(assert (=> bs!5461 m!155315))

(declare-fun m!155317 () Bool)

(assert (=> bs!5461 m!155317))

(assert (=> b!131222 d!40081))

(declare-fun d!40083 () Bool)

(assert (=> d!40083 (= (get!1476 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3174 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(assert (=> b!131160 d!40083))

(declare-fun d!40085 () Bool)

(declare-fun e!85792 () Bool)

(assert (=> d!40085 e!85792))

(declare-fun res!63386 () Bool)

(assert (=> d!40085 (=> res!63386 e!85792)))

(declare-fun lt!68613 () Bool)

(assert (=> d!40085 (= res!63386 (not lt!68613))))

(declare-fun lt!68612 () Bool)

(assert (=> d!40085 (= lt!68613 lt!68612)))

(declare-fun lt!68614 () Unit!4112)

(declare-fun e!85793 () Unit!4112)

(assert (=> d!40085 (= lt!68614 e!85793)))

(declare-fun c!24327 () Bool)

(assert (=> d!40085 (= c!24327 lt!68612)))

(assert (=> d!40085 (= lt!68612 (containsKey!173 (toList!866 lt!68312) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!40085 (= (contains!889 lt!68312 #b1000000000000000000000000000000000000000000000000000000000000000) lt!68613)))

(declare-fun b!131568 () Bool)

(declare-fun lt!68615 () Unit!4112)

(assert (=> b!131568 (= e!85793 lt!68615)))

(assert (=> b!131568 (= lt!68615 (lemmaContainsKeyImpliesGetValueByKeyDefined!122 (toList!866 lt!68312) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!131568 (isDefined!123 (getValueByKey!169 (toList!866 lt!68312) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!131569 () Bool)

(declare-fun Unit!4127 () Unit!4112)

(assert (=> b!131569 (= e!85793 Unit!4127)))

(declare-fun b!131570 () Bool)

(assert (=> b!131570 (= e!85792 (isDefined!123 (getValueByKey!169 (toList!866 lt!68312) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!40085 c!24327) b!131568))

(assert (= (and d!40085 (not c!24327)) b!131569))

(assert (= (and d!40085 (not res!63386)) b!131570))

(declare-fun m!155319 () Bool)

(assert (=> d!40085 m!155319))

(declare-fun m!155321 () Bool)

(assert (=> b!131568 m!155321))

(assert (=> b!131568 m!155315))

(assert (=> b!131568 m!155315))

(declare-fun m!155323 () Bool)

(assert (=> b!131568 m!155323))

(assert (=> b!131570 m!155315))

(assert (=> b!131570 m!155315))

(assert (=> b!131570 m!155323))

(assert (=> bm!14339 d!40085))

(declare-fun d!40087 () Bool)

(declare-fun e!85794 () Bool)

(assert (=> d!40087 e!85794))

(declare-fun res!63388 () Bool)

(assert (=> d!40087 (=> (not res!63388) (not e!85794))))

(declare-fun lt!68618 () ListLongMap!1701)

(assert (=> d!40087 (= res!63388 (contains!889 lt!68618 (_1!1308 (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!68619 () List!1730)

(assert (=> d!40087 (= lt!68618 (ListLongMap!1702 lt!68619))))

(declare-fun lt!68616 () Unit!4112)

(declare-fun lt!68617 () Unit!4112)

(assert (=> d!40087 (= lt!68616 lt!68617)))

(assert (=> d!40087 (= (getValueByKey!169 lt!68619 (_1!1308 (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!174 (_2!1308 (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!40087 (= lt!68617 (lemmaContainsTupThenGetReturnValue!86 lt!68619 (_1!1308 (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1308 (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!40087 (= lt!68619 (insertStrictlySorted!88 (toList!866 call!14325) (_1!1308 (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1308 (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!40087 (= (+!168 call!14325 (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!68618)))

(declare-fun b!131571 () Bool)

(declare-fun res!63387 () Bool)

(assert (=> b!131571 (=> (not res!63387) (not e!85794))))

(assert (=> b!131571 (= res!63387 (= (getValueByKey!169 (toList!866 lt!68618) (_1!1308 (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!174 (_2!1308 (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!131572 () Bool)

(assert (=> b!131572 (= e!85794 (contains!890 (toList!866 lt!68618) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!40087 res!63388) b!131571))

(assert (= (and b!131571 res!63387) b!131572))

(declare-fun m!155325 () Bool)

(assert (=> d!40087 m!155325))

(declare-fun m!155327 () Bool)

(assert (=> d!40087 m!155327))

(declare-fun m!155329 () Bool)

(assert (=> d!40087 m!155329))

(declare-fun m!155331 () Bool)

(assert (=> d!40087 m!155331))

(declare-fun m!155333 () Bool)

(assert (=> b!131571 m!155333))

(declare-fun m!155335 () Bool)

(assert (=> b!131572 m!155335))

(assert (=> b!131131 d!40087))

(assert (=> b!131116 d!40003))

(declare-fun d!40089 () Bool)

(assert (=> d!40089 (= (apply!114 lt!68312 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1478 (getValueByKey!169 (toList!866 lt!68312) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5462 () Bool)

(assert (= bs!5462 d!40089))

(assert (=> bs!5462 m!155311))

(assert (=> bs!5462 m!155311))

(declare-fun m!155337 () Bool)

(assert (=> bs!5462 m!155337))

(assert (=> b!131204 d!40089))

(declare-fun d!40091 () Bool)

(declare-fun e!85795 () Bool)

(assert (=> d!40091 e!85795))

(declare-fun res!63389 () Bool)

(assert (=> d!40091 (=> res!63389 e!85795)))

(declare-fun lt!68621 () Bool)

(assert (=> d!40091 (= res!63389 (not lt!68621))))

(declare-fun lt!68620 () Bool)

(assert (=> d!40091 (= lt!68621 lt!68620)))

(declare-fun lt!68622 () Unit!4112)

(declare-fun e!85796 () Unit!4112)

(assert (=> d!40091 (= lt!68622 e!85796)))

(declare-fun c!24328 () Bool)

(assert (=> d!40091 (= c!24328 lt!68620)))

(assert (=> d!40091 (= lt!68620 (containsKey!173 (toList!866 call!14322) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(assert (=> d!40091 (= (contains!889 call!14322 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) lt!68621)))

(declare-fun b!131573 () Bool)

(declare-fun lt!68623 () Unit!4112)

(assert (=> b!131573 (= e!85796 lt!68623)))

(assert (=> b!131573 (= lt!68623 (lemmaContainsKeyImpliesGetValueByKeyDefined!122 (toList!866 call!14322) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(assert (=> b!131573 (isDefined!123 (getValueByKey!169 (toList!866 call!14322) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun b!131574 () Bool)

(declare-fun Unit!4128 () Unit!4112)

(assert (=> b!131574 (= e!85796 Unit!4128)))

(declare-fun b!131575 () Bool)

(assert (=> b!131575 (= e!85795 (isDefined!123 (getValueByKey!169 (toList!866 call!14322) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355))))))

(assert (= (and d!40091 c!24328) b!131573))

(assert (= (and d!40091 (not c!24328)) b!131574))

(assert (= (and d!40091 (not res!63389)) b!131575))

(assert (=> d!40091 m!154607))

(declare-fun m!155339 () Bool)

(assert (=> d!40091 m!155339))

(assert (=> b!131573 m!154607))

(declare-fun m!155341 () Bool)

(assert (=> b!131573 m!155341))

(assert (=> b!131573 m!154607))

(declare-fun m!155343 () Bool)

(assert (=> b!131573 m!155343))

(assert (=> b!131573 m!155343))

(declare-fun m!155345 () Bool)

(assert (=> b!131573 m!155345))

(assert (=> b!131575 m!154607))

(assert (=> b!131575 m!155343))

(assert (=> b!131575 m!155343))

(assert (=> b!131575 m!155345))

(assert (=> b!131115 d!40091))

(declare-fun d!40093 () Bool)

(declare-fun res!63390 () Bool)

(declare-fun e!85797 () Bool)

(assert (=> d!40093 (=> res!63390 e!85797)))

(assert (=> d!40093 (= res!63390 (= (select (arr!2248 (_keys!4588 newMap!16)) #b00000000000000000000000000000000) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(assert (=> d!40093 (= (arrayContainsKey!0 (_keys!4588 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) #b00000000000000000000000000000000) e!85797)))

(declare-fun b!131576 () Bool)

(declare-fun e!85798 () Bool)

(assert (=> b!131576 (= e!85797 e!85798)))

(declare-fun res!63391 () Bool)

(assert (=> b!131576 (=> (not res!63391) (not e!85798))))

(assert (=> b!131576 (= res!63391 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2515 (_keys!4588 newMap!16))))))

(declare-fun b!131577 () Bool)

(assert (=> b!131577 (= e!85798 (arrayContainsKey!0 (_keys!4588 newMap!16) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!40093 (not res!63390)) b!131576))

(assert (= (and b!131576 res!63391) b!131577))

(assert (=> d!40093 m!154841))

(assert (=> b!131577 m!154607))

(declare-fun m!155347 () Bool)

(assert (=> b!131577 m!155347))

(assert (=> bm!14311 d!40093))

(declare-fun d!40095 () Bool)

(declare-fun res!63396 () Bool)

(declare-fun e!85803 () Bool)

(assert (=> d!40095 (=> res!63396 e!85803)))

(assert (=> d!40095 (= res!63396 (and ((_ is Cons!1726) (toList!866 lt!68158)) (= (_1!1308 (h!2331 (toList!866 lt!68158))) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355))))))

(assert (=> d!40095 (= (containsKey!173 (toList!866 lt!68158) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) e!85803)))

(declare-fun b!131582 () Bool)

(declare-fun e!85804 () Bool)

(assert (=> b!131582 (= e!85803 e!85804)))

(declare-fun res!63397 () Bool)

(assert (=> b!131582 (=> (not res!63397) (not e!85804))))

(assert (=> b!131582 (= res!63397 (and (or (not ((_ is Cons!1726) (toList!866 lt!68158))) (bvsle (_1!1308 (h!2331 (toList!866 lt!68158))) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355))) ((_ is Cons!1726) (toList!866 lt!68158)) (bvslt (_1!1308 (h!2331 (toList!866 lt!68158))) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355))))))

(declare-fun b!131583 () Bool)

(assert (=> b!131583 (= e!85804 (containsKey!173 (t!6161 (toList!866 lt!68158)) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(assert (= (and d!40095 (not res!63396)) b!131582))

(assert (= (and b!131582 res!63397) b!131583))

(assert (=> b!131583 m!154607))

(declare-fun m!155349 () Bool)

(assert (=> b!131583 m!155349))

(assert (=> d!39957 d!40095))

(declare-fun d!40097 () Bool)

(declare-fun e!85805 () Bool)

(assert (=> d!40097 e!85805))

(declare-fun res!63399 () Bool)

(assert (=> d!40097 (=> (not res!63399) (not e!85805))))

(declare-fun lt!68626 () ListLongMap!1701)

(assert (=> d!40097 (= res!63399 (contains!889 lt!68626 (_1!1308 (ite (or c!24241 c!24242) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))))))

(declare-fun lt!68627 () List!1730)

(assert (=> d!40097 (= lt!68626 (ListLongMap!1702 lt!68627))))

(declare-fun lt!68624 () Unit!4112)

(declare-fun lt!68625 () Unit!4112)

(assert (=> d!40097 (= lt!68624 lt!68625)))

(assert (=> d!40097 (= (getValueByKey!169 lt!68627 (_1!1308 (ite (or c!24241 c!24242) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))) (Some!174 (_2!1308 (ite (or c!24241 c!24242) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))))))

(assert (=> d!40097 (= lt!68625 (lemmaContainsTupThenGetReturnValue!86 lt!68627 (_1!1308 (ite (or c!24241 c!24242) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))) (_2!1308 (ite (or c!24241 c!24242) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))))))

(assert (=> d!40097 (= lt!68627 (insertStrictlySorted!88 (toList!866 (ite c!24241 call!14344 (ite c!24242 call!14345 call!14343))) (_1!1308 (ite (or c!24241 c!24242) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))) (_2!1308 (ite (or c!24241 c!24242) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))))))

(assert (=> d!40097 (= (+!168 (ite c!24241 call!14344 (ite c!24242 call!14345 call!14343)) (ite (or c!24241 c!24242) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))) lt!68626)))

(declare-fun b!131584 () Bool)

(declare-fun res!63398 () Bool)

(assert (=> b!131584 (=> (not res!63398) (not e!85805))))

(assert (=> b!131584 (= res!63398 (= (getValueByKey!169 (toList!866 lt!68626) (_1!1308 (ite (or c!24241 c!24242) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992))))))) (Some!174 (_2!1308 (ite (or c!24241 c!24242) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))))

(declare-fun b!131585 () Bool)

(assert (=> b!131585 (= e!85805 (contains!890 (toList!866 lt!68626) (ite (or c!24241 c!24242) (tuple2!2597 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2700 (v!3175 (underlying!449 thiss!992)))) (tuple2!2597 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2700 (v!3175 (underlying!449 thiss!992)))))))))

(assert (= (and d!40097 res!63399) b!131584))

(assert (= (and b!131584 res!63398) b!131585))

(declare-fun m!155351 () Bool)

(assert (=> d!40097 m!155351))

(declare-fun m!155353 () Bool)

(assert (=> d!40097 m!155353))

(declare-fun m!155355 () Bool)

(assert (=> d!40097 m!155355))

(declare-fun m!155357 () Bool)

(assert (=> d!40097 m!155357))

(declare-fun m!155359 () Bool)

(assert (=> b!131584 m!155359))

(declare-fun m!155361 () Bool)

(assert (=> b!131585 m!155361))

(assert (=> bm!14343 d!40097))

(declare-fun d!40099 () Bool)

(declare-fun e!85806 () Bool)

(assert (=> d!40099 e!85806))

(declare-fun res!63400 () Bool)

(assert (=> d!40099 (=> res!63400 e!85806)))

(declare-fun lt!68629 () Bool)

(assert (=> d!40099 (= res!63400 (not lt!68629))))

(declare-fun lt!68628 () Bool)

(assert (=> d!40099 (= lt!68629 lt!68628)))

(declare-fun lt!68630 () Unit!4112)

(declare-fun e!85807 () Unit!4112)

(assert (=> d!40099 (= lt!68630 e!85807)))

(declare-fun c!24329 () Bool)

(assert (=> d!40099 (= c!24329 lt!68628)))

(assert (=> d!40099 (= lt!68628 (containsKey!173 (toList!866 e!85541) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(assert (=> d!40099 (= (contains!889 e!85541 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)) lt!68629)))

(declare-fun b!131586 () Bool)

(declare-fun lt!68631 () Unit!4112)

(assert (=> b!131586 (= e!85807 lt!68631)))

(assert (=> b!131586 (= lt!68631 (lemmaContainsKeyImpliesGetValueByKeyDefined!122 (toList!866 e!85541) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(assert (=> b!131586 (isDefined!123 (getValueByKey!169 (toList!866 e!85541) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355)))))

(declare-fun b!131587 () Bool)

(declare-fun Unit!4129 () Unit!4112)

(assert (=> b!131587 (= e!85807 Unit!4129)))

(declare-fun b!131588 () Bool)

(assert (=> b!131588 (= e!85806 (isDefined!123 (getValueByKey!169 (toList!866 e!85541) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355))))))

(assert (= (and d!40099 c!24329) b!131586))

(assert (= (and d!40099 (not c!24329)) b!131587))

(assert (= (and d!40099 (not res!63400)) b!131588))

(assert (=> d!40099 m!154607))

(declare-fun m!155363 () Bool)

(assert (=> d!40099 m!155363))

(assert (=> b!131586 m!154607))

(declare-fun m!155365 () Bool)

(assert (=> b!131586 m!155365))

(assert (=> b!131586 m!154607))

(declare-fun m!155367 () Bool)

(assert (=> b!131586 m!155367))

(assert (=> b!131586 m!155367))

(declare-fun m!155369 () Bool)

(assert (=> b!131586 m!155369))

(assert (=> b!131588 m!154607))

(assert (=> b!131588 m!155367))

(assert (=> b!131588 m!155367))

(assert (=> b!131588 m!155369))

(assert (=> bm!14319 d!40099))

(assert (=> b!131139 d!39987))

(declare-fun d!40101 () Bool)

(declare-fun e!85808 () Bool)

(assert (=> d!40101 e!85808))

(declare-fun res!63401 () Bool)

(assert (=> d!40101 (=> res!63401 e!85808)))

(declare-fun lt!68633 () Bool)

(assert (=> d!40101 (= res!63401 (not lt!68633))))

(declare-fun lt!68632 () Bool)

(assert (=> d!40101 (= lt!68633 lt!68632)))

(declare-fun lt!68634 () Unit!4112)

(declare-fun e!85809 () Unit!4112)

(assert (=> d!40101 (= lt!68634 e!85809)))

(declare-fun c!24330 () Bool)

(assert (=> d!40101 (= c!24330 lt!68632)))

(assert (=> d!40101 (= lt!68632 (containsKey!173 (toList!866 call!14305) (select (arr!2248 (_keys!4588 newMap!16)) (index!3291 lt!68256))))))

(assert (=> d!40101 (= (contains!889 call!14305 (select (arr!2248 (_keys!4588 newMap!16)) (index!3291 lt!68256))) lt!68633)))

(declare-fun b!131589 () Bool)

(declare-fun lt!68635 () Unit!4112)

(assert (=> b!131589 (= e!85809 lt!68635)))

(assert (=> b!131589 (= lt!68635 (lemmaContainsKeyImpliesGetValueByKeyDefined!122 (toList!866 call!14305) (select (arr!2248 (_keys!4588 newMap!16)) (index!3291 lt!68256))))))

(assert (=> b!131589 (isDefined!123 (getValueByKey!169 (toList!866 call!14305) (select (arr!2248 (_keys!4588 newMap!16)) (index!3291 lt!68256))))))

(declare-fun b!131590 () Bool)

(declare-fun Unit!4130 () Unit!4112)

(assert (=> b!131590 (= e!85809 Unit!4130)))

(declare-fun b!131591 () Bool)

(assert (=> b!131591 (= e!85808 (isDefined!123 (getValueByKey!169 (toList!866 call!14305) (select (arr!2248 (_keys!4588 newMap!16)) (index!3291 lt!68256)))))))

(assert (= (and d!40101 c!24330) b!131589))

(assert (= (and d!40101 (not c!24330)) b!131590))

(assert (= (and d!40101 (not res!63401)) b!131591))

(assert (=> d!40101 m!154701))

(declare-fun m!155371 () Bool)

(assert (=> d!40101 m!155371))

(assert (=> b!131589 m!154701))

(declare-fun m!155373 () Bool)

(assert (=> b!131589 m!155373))

(assert (=> b!131589 m!154701))

(declare-fun m!155375 () Bool)

(assert (=> b!131589 m!155375))

(assert (=> b!131589 m!155375))

(declare-fun m!155377 () Bool)

(assert (=> b!131589 m!155377))

(assert (=> b!131591 m!154701))

(assert (=> b!131591 m!155375))

(assert (=> b!131591 m!155375))

(assert (=> b!131591 m!155377))

(assert (=> b!131126 d!40101))

(declare-fun d!40103 () Bool)

(declare-fun e!85812 () Bool)

(assert (=> d!40103 e!85812))

(declare-fun res!63404 () Bool)

(assert (=> d!40103 (=> (not res!63404) (not e!85812))))

(assert (=> d!40103 (= res!63404 (and (bvsge (index!3291 lt!68256) #b00000000000000000000000000000000) (bvslt (index!3291 lt!68256) (size!2515 (_keys!4588 newMap!16)))))))

(declare-fun lt!68638 () Unit!4112)

(declare-fun choose!814 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 (_ BitVec 32) Int) Unit!4112)

(assert (=> d!40103 (= lt!68638 (choose!814 (_keys!4588 newMap!16) lt!68262 (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (index!3291 lt!68256) (defaultEntry!2843 newMap!16)))))

(assert (=> d!40103 (validMask!0 (mask!7131 newMap!16))))

(assert (=> d!40103 (= (lemmaValidKeyInArrayIsInListMap!117 (_keys!4588 newMap!16) lt!68262 (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (index!3291 lt!68256) (defaultEntry!2843 newMap!16)) lt!68638)))

(declare-fun b!131594 () Bool)

(assert (=> b!131594 (= e!85812 (contains!889 (getCurrentListMap!537 (_keys!4588 newMap!16) lt!68262 (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)) (select (arr!2248 (_keys!4588 newMap!16)) (index!3291 lt!68256))))))

(assert (= (and d!40103 res!63404) b!131594))

(declare-fun m!155379 () Bool)

(assert (=> d!40103 m!155379))

(assert (=> d!40103 m!154847))

(declare-fun m!155381 () Bool)

(assert (=> b!131594 m!155381))

(assert (=> b!131594 m!154701))

(assert (=> b!131594 m!155381))

(assert (=> b!131594 m!154701))

(declare-fun m!155383 () Bool)

(assert (=> b!131594 m!155383))

(assert (=> b!131126 d!40103))

(declare-fun d!40105 () Bool)

(declare-fun e!85815 () Bool)

(assert (=> d!40105 e!85815))

(declare-fun res!63407 () Bool)

(assert (=> d!40105 (=> (not res!63407) (not e!85815))))

(assert (=> d!40105 (= res!63407 (and (bvsge (index!3291 lt!68256) #b00000000000000000000000000000000) (bvslt (index!3291 lt!68256) (size!2516 (_values!2826 newMap!16)))))))

(declare-fun lt!68641 () Unit!4112)

(declare-fun choose!815 (array!4752 array!4754 (_ BitVec 32) (_ BitVec 32) V!3467 V!3467 (_ BitVec 32) (_ BitVec 64) V!3467 Int) Unit!4112)

(assert (=> d!40105 (= lt!68641 (choose!815 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (index!3291 lt!68256) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2843 newMap!16)))))

(assert (=> d!40105 (validMask!0 (mask!7131 newMap!16))))

(assert (=> d!40105 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!59 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) (index!3291 lt!68256) (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2843 newMap!16)) lt!68641)))

(declare-fun b!131597 () Bool)

(assert (=> b!131597 (= e!85815 (= (+!168 (getCurrentListMap!537 (_keys!4588 newMap!16) (_values!2826 newMap!16) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16)) (tuple2!2597 (select (arr!2248 (_keys!4588 (v!3175 (underlying!449 thiss!992)))) from!355) (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!537 (_keys!4588 newMap!16) (array!4755 (store (arr!2249 (_values!2826 newMap!16)) (index!3291 lt!68256) (ValueCellFull!1089 (get!1475 (select (arr!2249 (_values!2826 (v!3175 (underlying!449 thiss!992)))) from!355) (dynLambda!422 (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2516 (_values!2826 newMap!16))) (mask!7131 newMap!16) (extraKeys!2612 newMap!16) (zeroValue!2700 newMap!16) (minValue!2700 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2843 newMap!16))))))

(assert (= (and d!40105 res!63407) b!131597))

(assert (=> d!40105 m!154607))

(assert (=> d!40105 m!154605))

(declare-fun m!155385 () Bool)

(assert (=> d!40105 m!155385))

(assert (=> d!40105 m!154847))

(assert (=> b!131597 m!154691))

(assert (=> b!131597 m!154691))

(assert (=> b!131597 m!155107))

(assert (=> b!131597 m!154707))

(declare-fun m!155387 () Bool)

(assert (=> b!131597 m!155387))

(assert (=> b!131126 d!40105))

(declare-fun mapIsEmpty!4607 () Bool)

(declare-fun mapRes!4607 () Bool)

(assert (=> mapIsEmpty!4607 mapRes!4607))

(declare-fun condMapEmpty!4607 () Bool)

(declare-fun mapDefault!4607 () ValueCell!1089)

(assert (=> mapNonEmpty!4605 (= condMapEmpty!4607 (= mapRest!4605 ((as const (Array (_ BitVec 32) ValueCell!1089)) mapDefault!4607)))))

(declare-fun e!85816 () Bool)

(assert (=> mapNonEmpty!4605 (= tp!11139 (and e!85816 mapRes!4607))))

(declare-fun b!131599 () Bool)

(assert (=> b!131599 (= e!85816 tp_is_empty!2865)))

(declare-fun b!131598 () Bool)

(declare-fun e!85817 () Bool)

(assert (=> b!131598 (= e!85817 tp_is_empty!2865)))

(declare-fun mapNonEmpty!4607 () Bool)

(declare-fun tp!11141 () Bool)

(assert (=> mapNonEmpty!4607 (= mapRes!4607 (and tp!11141 e!85817))))

(declare-fun mapRest!4607 () (Array (_ BitVec 32) ValueCell!1089))

(declare-fun mapKey!4607 () (_ BitVec 32))

(declare-fun mapValue!4607 () ValueCell!1089)

(assert (=> mapNonEmpty!4607 (= mapRest!4605 (store mapRest!4607 mapKey!4607 mapValue!4607))))

(assert (= (and mapNonEmpty!4605 condMapEmpty!4607) mapIsEmpty!4607))

(assert (= (and mapNonEmpty!4605 (not condMapEmpty!4607)) mapNonEmpty!4607))

(assert (= (and mapNonEmpty!4607 ((_ is ValueCellFull!1089) mapValue!4607)) b!131598))

(assert (= (and mapNonEmpty!4605 ((_ is ValueCellFull!1089) mapDefault!4607)) b!131599))

(declare-fun m!155389 () Bool)

(assert (=> mapNonEmpty!4607 m!155389))

(declare-fun mapIsEmpty!4608 () Bool)

(declare-fun mapRes!4608 () Bool)

(assert (=> mapIsEmpty!4608 mapRes!4608))

(declare-fun condMapEmpty!4608 () Bool)

(declare-fun mapDefault!4608 () ValueCell!1089)

(assert (=> mapNonEmpty!4606 (= condMapEmpty!4608 (= mapRest!4606 ((as const (Array (_ BitVec 32) ValueCell!1089)) mapDefault!4608)))))

(declare-fun e!85818 () Bool)

(assert (=> mapNonEmpty!4606 (= tp!11140 (and e!85818 mapRes!4608))))

(declare-fun b!131601 () Bool)

(assert (=> b!131601 (= e!85818 tp_is_empty!2865)))

(declare-fun b!131600 () Bool)

(declare-fun e!85819 () Bool)

(assert (=> b!131600 (= e!85819 tp_is_empty!2865)))

(declare-fun mapNonEmpty!4608 () Bool)

(declare-fun tp!11142 () Bool)

(assert (=> mapNonEmpty!4608 (= mapRes!4608 (and tp!11142 e!85819))))

(declare-fun mapRest!4608 () (Array (_ BitVec 32) ValueCell!1089))

(declare-fun mapValue!4608 () ValueCell!1089)

(declare-fun mapKey!4608 () (_ BitVec 32))

(assert (=> mapNonEmpty!4608 (= mapRest!4606 (store mapRest!4608 mapKey!4608 mapValue!4608))))

(assert (= (and mapNonEmpty!4606 condMapEmpty!4608) mapIsEmpty!4608))

(assert (= (and mapNonEmpty!4606 (not condMapEmpty!4608)) mapNonEmpty!4608))

(assert (= (and mapNonEmpty!4608 ((_ is ValueCellFull!1089) mapValue!4608)) b!131600))

(assert (= (and mapNonEmpty!4606 ((_ is ValueCellFull!1089) mapDefault!4608)) b!131601))

(declare-fun m!155391 () Bool)

(assert (=> mapNonEmpty!4608 m!155391))

(declare-fun b_lambda!5883 () Bool)

(assert (= b_lambda!5875 (or (and b!130948 b_free!2897) (and b!130955 b_free!2899 (= (defaultEntry!2843 newMap!16) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))))) b_lambda!5883)))

(declare-fun b_lambda!5885 () Bool)

(assert (= b_lambda!5873 (or (and b!130948 b_free!2897) (and b!130955 b_free!2899 (= (defaultEntry!2843 newMap!16) (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))))) b_lambda!5885)))

(declare-fun b_lambda!5887 () Bool)

(assert (= b_lambda!5879 (or (and b!130948 b_free!2897 (= (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) (defaultEntry!2843 newMap!16))) (and b!130955 b_free!2899) b_lambda!5887)))

(declare-fun b_lambda!5889 () Bool)

(assert (= b_lambda!5877 (or (and b!130948 b_free!2897 (= (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) (defaultEntry!2843 newMap!16))) (and b!130955 b_free!2899) b_lambda!5889)))

(declare-fun b_lambda!5891 () Bool)

(assert (= b_lambda!5881 (or (and b!130948 b_free!2897 (= (defaultEntry!2843 (v!3175 (underlying!449 thiss!992))) (defaultEntry!2843 newMap!16))) (and b!130955 b_free!2899) b_lambda!5891)))

(check-sat (not bm!14389) (not b!131389) (not b!131549) (not bm!14386) (not b!131395) (not b!131292) (not d!40087) (not d!40105) (not b!131412) (not d!40003) (not b!131588) (not b!131594) (not b!131583) (not b!131402) (not b!131426) (not bm!14356) (not b!131524) (not b!131417) (not d!40061) (not bm!14395) (not b!131575) (not b!131509) (not b!131416) (not b!131351) (not b!131372) (not d!40039) (not b!131475) (not b!131586) (not b_lambda!5887) (not d!40075) (not b_lambda!5883) (not b!131551) (not b!131423) (not b!131309) (not b!131528) (not b!131568) (not b!131483) (not d!40049) (not d!40013) (not b!131408) (not b!131288) (not b!131393) (not b_next!2899) (not d!40043) (not b!131510) (not b!131597) (not b!131413) (not b!131562) (not b!131293) (not b!131572) (not b!131467) (not b!131347) (not b!131410) b_and!8167 tp_is_empty!2865 (not d!40017) (not d!39987) (not b!131523) (not b!131464) (not d!40023) (not d!40047) (not b!131425) (not b!131545) (not b!131490) (not b!131561) (not d!40063) (not d!39989) (not d!40103) (not d!40015) (not b_lambda!5871) (not d!40031) (not bm!14384) (not b!131507) (not b!131401) (not b!131585) (not bm!14377) (not bm!14385) (not d!40091) (not d!40055) (not b!131570) (not d!40021) (not bm!14381) (not b!131388) (not b_lambda!5889) (not b!131573) (not d!39997) (not bm!14352) (not b_lambda!5891) (not b!131285) (not b!131377) (not d!40059) (not b!131304) (not b_lambda!5885) (not b_lambda!5867) (not bm!14364) (not d!40027) (not bm!14355) (not d!39995) (not b!131298) (not d!40011) (not b!131565) (not d!40097) (not d!39985) b_and!8165 (not b!131530) (not b!131556) (not b!131352) (not bm!14388) (not bm!14392) (not b!131287) (not b!131550) (not b!131354) (not d!40099) (not b!131474) (not b!131353) (not d!40051) (not b_next!2897) (not b!131529) (not b!131418) (not b!131299) (not b!131356) (not d!40089) (not b!131577) (not d!40053) (not b!131540) (not d!40077) (not bm!14396) (not b!131282) (not b!131392) (not b!131522) (not d!40041) (not b!131281) (not d!40033) (not b!131391) (not d!40019) (not d!40085) (not b!131415) (not b!131297) (not d!39991) (not b!131280) (not b!131541) (not d!40079) (not d!40029) (not mapNonEmpty!4608) (not b!131378) (not b!131477) (not b!131289) (not b!131544) (not b!131487) (not d!40101) (not mapNonEmpty!4607) (not b!131589) (not b!131396) (not b!131567) (not b!131495) (not d!40007) (not b!131290) (not b!131494) (not b!131310) (not bm!14375) (not d!40071) (not d!40025) (not b!131491) (not b!131394) (not b!131476) (not b!131571) (not d!40001) (not b!131584) (not b!131535) (not b!131591) (not bm!14353) (not bm!14378) (not d!40037) (not bm!14374) (not bm!14365) (not bm!14351) (not bm!14393) (not d!40035) (not bm!14363) (not d!40081))
(check-sat b_and!8165 b_and!8167 (not b_next!2897) (not b_next!2899))
