; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76060 () Bool)

(assert start!76060)

(declare-fun b!893730 () Bool)

(declare-fun b_free!15861 () Bool)

(declare-fun b_next!15861 () Bool)

(assert (=> b!893730 (= b_free!15861 (not b_next!15861))))

(declare-fun tp!55563 () Bool)

(declare-fun b_and!26155 () Bool)

(assert (=> b!893730 (= tp!55563 b_and!26155)))

(declare-fun b!893724 () Bool)

(declare-fun e!499183 () Bool)

(declare-datatypes ((array!52350 0))(
  ( (array!52351 (arr!25174 (Array (_ BitVec 32) (_ BitVec 64))) (size!25620 (_ BitVec 32))) )
))
(declare-datatypes ((V!29217 0))(
  ( (V!29218 (val!9145 Int)) )
))
(declare-datatypes ((ValueCell!8613 0))(
  ( (ValueCellFull!8613 (v!11627 V!29217)) (EmptyCell!8613) )
))
(declare-datatypes ((array!52352 0))(
  ( (array!52353 (arr!25175 (Array (_ BitVec 32) ValueCell!8613)) (size!25621 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4242 0))(
  ( (LongMapFixedSize!4243 (defaultEntry!5327 Int) (mask!25864 (_ BitVec 32)) (extraKeys!5023 (_ BitVec 32)) (zeroValue!5127 V!29217) (minValue!5127 V!29217) (_size!2176 (_ BitVec 32)) (_keys!10015 array!52350) (_values!5314 array!52352) (_vacant!2176 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4242)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun dynLambda!1300 (Int (_ BitVec 64)) V!29217)

(assert (=> b!893724 (= e!499183 (not (= (minValue!5127 thiss!1181) (dynLambda!1300 (defaultEntry!5327 thiss!1181) key!785))))))

(declare-fun b!893725 () Bool)

(declare-fun res!605170 () Bool)

(declare-fun e!499182 () Bool)

(assert (=> b!893725 (=> (not res!605170) (not e!499182))))

(assert (=> b!893725 (= res!605170 (and (= key!785 (bvneg key!785)) (or (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!893726 () Bool)

(declare-fun e!499184 () Bool)

(declare-fun tp_is_empty!18189 () Bool)

(assert (=> b!893726 (= e!499184 tp_is_empty!18189)))

(declare-fun mapIsEmpty!28849 () Bool)

(declare-fun mapRes!28849 () Bool)

(assert (=> mapIsEmpty!28849 mapRes!28849))

(declare-fun b!893727 () Bool)

(declare-fun e!499180 () Bool)

(assert (=> b!893727 (= e!499180 tp_is_empty!18189)))

(declare-fun mapNonEmpty!28849 () Bool)

(declare-fun tp!55564 () Bool)

(assert (=> mapNonEmpty!28849 (= mapRes!28849 (and tp!55564 e!499184))))

(declare-fun mapRest!28849 () (Array (_ BitVec 32) ValueCell!8613))

(declare-fun mapValue!28849 () ValueCell!8613)

(declare-fun mapKey!28849 () (_ BitVec 32))

(assert (=> mapNonEmpty!28849 (= (arr!25175 (_values!5314 thiss!1181)) (store mapRest!28849 mapKey!28849 mapValue!28849))))

(declare-fun b!893729 () Bool)

(declare-fun e!499181 () Bool)

(assert (=> b!893729 (= e!499181 (and e!499180 mapRes!28849))))

(declare-fun condMapEmpty!28849 () Bool)

(declare-fun mapDefault!28849 () ValueCell!8613)

(assert (=> b!893729 (= condMapEmpty!28849 (= (arr!25175 (_values!5314 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8613)) mapDefault!28849)))))

(declare-fun e!499178 () Bool)

(declare-fun array_inv!19748 (array!52350) Bool)

(declare-fun array_inv!19749 (array!52352) Bool)

(assert (=> b!893730 (= e!499178 (and tp!55563 tp_is_empty!18189 (array_inv!19748 (_keys!10015 thiss!1181)) (array_inv!19749 (_values!5314 thiss!1181)) e!499181))))

(declare-fun b!893731 () Bool)

(declare-datatypes ((Option!457 0))(
  ( (Some!456 (v!11628 V!29217)) (None!455) )
))
(declare-fun get!13267 (Option!457) V!29217)

(declare-datatypes ((tuple2!12044 0))(
  ( (tuple2!12045 (_1!6032 (_ BitVec 64)) (_2!6032 V!29217)) )
))
(declare-datatypes ((List!17881 0))(
  ( (Nil!17878) (Cons!17877 (h!19009 tuple2!12044) (t!25218 List!17881)) )
))
(declare-fun getValueByKey!451 (List!17881 (_ BitVec 64)) Option!457)

(declare-datatypes ((ListLongMap!10755 0))(
  ( (ListLongMap!10756 (toList!5393 List!17881)) )
))
(declare-fun map!12220 (LongMapFixedSize!4242) ListLongMap!10755)

(assert (=> b!893731 (= e!499183 (not (= (minValue!5127 thiss!1181) (get!13267 (getValueByKey!451 (toList!5393 (map!12220 thiss!1181)) key!785)))))))

(declare-fun b!893728 () Bool)

(assert (=> b!893728 (= e!499182 e!499183)))

(declare-fun c!94158 () Bool)

(declare-fun contains!4374 (LongMapFixedSize!4242 (_ BitVec 64)) Bool)

(assert (=> b!893728 (= c!94158 (contains!4374 thiss!1181 key!785))))

(declare-fun res!605169 () Bool)

(assert (=> start!76060 (=> (not res!605169) (not e!499182))))

(declare-fun valid!1630 (LongMapFixedSize!4242) Bool)

(assert (=> start!76060 (= res!605169 (valid!1630 thiss!1181))))

(assert (=> start!76060 e!499182))

(assert (=> start!76060 e!499178))

(assert (=> start!76060 true))

(assert (= (and start!76060 res!605169) b!893725))

(assert (= (and b!893725 res!605170) b!893728))

(assert (= (and b!893728 c!94158) b!893731))

(assert (= (and b!893728 (not c!94158)) b!893724))

(assert (= (and b!893729 condMapEmpty!28849) mapIsEmpty!28849))

(assert (= (and b!893729 (not condMapEmpty!28849)) mapNonEmpty!28849))

(get-info :version)

(assert (= (and mapNonEmpty!28849 ((_ is ValueCellFull!8613) mapValue!28849)) b!893726))

(assert (= (and b!893729 ((_ is ValueCellFull!8613) mapDefault!28849)) b!893727))

(assert (= b!893730 b!893729))

(assert (= start!76060 b!893730))

(declare-fun b_lambda!12963 () Bool)

(assert (=> (not b_lambda!12963) (not b!893724)))

(declare-fun t!25217 () Bool)

(declare-fun tb!5187 () Bool)

(assert (=> (and b!893730 (= (defaultEntry!5327 thiss!1181) (defaultEntry!5327 thiss!1181)) t!25217) tb!5187))

(declare-fun result!10081 () Bool)

(assert (=> tb!5187 (= result!10081 tp_is_empty!18189)))

(assert (=> b!893724 t!25217))

(declare-fun b_and!26157 () Bool)

(assert (= b_and!26155 (and (=> t!25217 result!10081) b_and!26157)))

(declare-fun m!831899 () Bool)

(assert (=> b!893724 m!831899))

(declare-fun m!831901 () Bool)

(assert (=> mapNonEmpty!28849 m!831901))

(declare-fun m!831903 () Bool)

(assert (=> start!76060 m!831903))

(declare-fun m!831905 () Bool)

(assert (=> b!893731 m!831905))

(declare-fun m!831907 () Bool)

(assert (=> b!893731 m!831907))

(assert (=> b!893731 m!831907))

(declare-fun m!831909 () Bool)

(assert (=> b!893731 m!831909))

(declare-fun m!831911 () Bool)

(assert (=> b!893730 m!831911))

(declare-fun m!831913 () Bool)

(assert (=> b!893730 m!831913))

(declare-fun m!831915 () Bool)

(assert (=> b!893728 m!831915))

(check-sat (not b!893730) (not b_lambda!12963) (not b!893728) (not mapNonEmpty!28849) (not b!893731) tp_is_empty!18189 b_and!26157 (not start!76060) (not b_next!15861))
(check-sat b_and!26157 (not b_next!15861))
(get-model)

(declare-fun b_lambda!12967 () Bool)

(assert (= b_lambda!12963 (or (and b!893730 b_free!15861) b_lambda!12967)))

(check-sat (not b!893728) (not mapNonEmpty!28849) (not b!893731) tp_is_empty!18189 b_and!26157 (not b!893730) (not b_lambda!12967) (not start!76060) (not b_next!15861))
(check-sat b_and!26157 (not b_next!15861))
(get-model)

(declare-fun b!893780 () Bool)

(declare-fun e!499218 () Bool)

(assert (=> b!893780 (= e!499218 false)))

(declare-fun c!94174 () Bool)

(declare-fun call!39669 () Bool)

(assert (=> b!893780 (= c!94174 call!39669)))

(declare-datatypes ((Unit!30409 0))(
  ( (Unit!30410) )
))
(declare-fun lt!403909 () Unit!30409)

(declare-fun e!499220 () Unit!30409)

(assert (=> b!893780 (= lt!403909 e!499220)))

(declare-fun d!110393 () Bool)

(declare-fun lt!403914 () Bool)

(declare-fun contains!4375 (ListLongMap!10755 (_ BitVec 64)) Bool)

(assert (=> d!110393 (= lt!403914 (contains!4375 (map!12220 thiss!1181) key!785))))

(declare-fun e!499217 () Bool)

(assert (=> d!110393 (= lt!403914 e!499217)))

(declare-fun c!94172 () Bool)

(assert (=> d!110393 (= c!94172 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!110393 (valid!1630 thiss!1181)))

(assert (=> d!110393 (= (contains!4374 thiss!1181 key!785) lt!403914)))

(declare-fun b!893781 () Bool)

(declare-fun e!499219 () Bool)

(assert (=> b!893781 (= e!499217 e!499219)))

(declare-fun c!94175 () Bool)

(assert (=> b!893781 (= c!94175 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!893782 () Bool)

(assert (=> b!893782 (= e!499218 true)))

(declare-fun lt!403911 () Unit!30409)

(declare-datatypes ((SeekEntryResult!8858 0))(
  ( (MissingZero!8858 (index!37802 (_ BitVec 32))) (Found!8858 (index!37803 (_ BitVec 32))) (Intermediate!8858 (undefined!9670 Bool) (index!37804 (_ BitVec 32)) (x!75987 (_ BitVec 32))) (Undefined!8858) (MissingVacant!8858 (index!37805 (_ BitVec 32))) )
))
(declare-fun lt!403920 () SeekEntryResult!8858)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52350 (_ BitVec 64) (_ BitVec 32)) Unit!30409)

(assert (=> b!893782 (= lt!403911 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10015 thiss!1181) key!785 (index!37803 lt!403920)))))

(declare-fun call!39670 () Bool)

(assert (=> b!893782 call!39670))

(declare-fun lt!403923 () Unit!30409)

(assert (=> b!893782 (= lt!403923 lt!403911)))

(declare-fun lt!403912 () Unit!30409)

(declare-fun lemmaValidKeyInArrayIsInListMap!231 (array!52350 array!52352 (_ BitVec 32) (_ BitVec 32) V!29217 V!29217 (_ BitVec 32) Int) Unit!30409)

(assert (=> b!893782 (= lt!403912 (lemmaValidKeyInArrayIsInListMap!231 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) (index!37803 lt!403920) (defaultEntry!5327 thiss!1181)))))

(assert (=> b!893782 call!39669))

(declare-fun lt!403913 () Unit!30409)

(assert (=> b!893782 (= lt!403913 lt!403912)))

(declare-fun b!893783 () Bool)

(assert (=> b!893783 (= e!499219 (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!39666 () Bool)

(declare-fun arrayContainsKey!0 (array!52350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!39666 (= call!39670 (arrayContainsKey!0 (_keys!10015 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!893784 () Bool)

(declare-fun Unit!30411 () Unit!30409)

(assert (=> b!893784 (= e!499220 Unit!30411)))

(declare-fun b!893785 () Bool)

(assert (=> b!893785 (= e!499217 (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!39667 () Bool)

(declare-fun call!39671 () ListLongMap!10755)

(declare-fun getCurrentListMap!2638 (array!52350 array!52352 (_ BitVec 32) (_ BitVec 32) V!29217 V!29217 (_ BitVec 32) Int) ListLongMap!10755)

(assert (=> bm!39667 (= call!39671 (getCurrentListMap!2638 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181)))))

(declare-fun bm!39668 () Bool)

(declare-fun c!94173 () Bool)

(assert (=> bm!39668 (= call!39669 (contains!4375 call!39671 (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)))))

(declare-fun b!893786 () Bool)

(declare-fun e!499216 () Bool)

(assert (=> b!893786 (= e!499216 call!39670)))

(declare-fun b!893787 () Bool)

(assert (=> b!893787 false))

(declare-fun lt!403919 () Unit!30409)

(declare-fun lt!403918 () Unit!30409)

(assert (=> b!893787 (= lt!403919 lt!403918)))

(declare-fun lt!403917 () SeekEntryResult!8858)

(declare-fun lt!403916 () (_ BitVec 32))

(assert (=> b!893787 (and ((_ is Found!8858) lt!403917) (= (index!37803 lt!403917) lt!403916))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52350 (_ BitVec 32)) SeekEntryResult!8858)

(assert (=> b!893787 (= lt!403917 (seekEntry!0 key!785 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!52350 (_ BitVec 32)) Unit!30409)

(assert (=> b!893787 (= lt!403918 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!403916 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun lt!403922 () Unit!30409)

(declare-fun lt!403910 () Unit!30409)

(assert (=> b!893787 (= lt!403922 lt!403910)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52350 (_ BitVec 32)) Bool)

(assert (=> b!893787 (arrayForallSeekEntryOrOpenFound!0 lt!403916 (_keys!10015 thiss!1181) (mask!25864 thiss!1181))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!52350 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30409)

(assert (=> b!893787 (= lt!403910 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10015 thiss!1181) (mask!25864 thiss!1181) #b00000000000000000000000000000000 lt!403916))))

(declare-fun arrayScanForKey!0 (array!52350 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!893787 (= lt!403916 (arrayScanForKey!0 (_keys!10015 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun lt!403915 () Unit!30409)

(declare-fun lt!403921 () Unit!30409)

(assert (=> b!893787 (= lt!403915 lt!403921)))

(assert (=> b!893787 e!499216))

(declare-fun c!94176 () Bool)

(assert (=> b!893787 (= c!94176 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!165 (array!52350 array!52352 (_ BitVec 32) (_ BitVec 32) V!29217 V!29217 (_ BitVec 64) Int) Unit!30409)

(assert (=> b!893787 (= lt!403921 (lemmaKeyInListMapIsInArray!165 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) key!785 (defaultEntry!5327 thiss!1181)))))

(declare-fun Unit!30412 () Unit!30409)

(assert (=> b!893787 (= e!499220 Unit!30412)))

(declare-fun b!893788 () Bool)

(assert (=> b!893788 (= e!499216 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!893789 () Bool)

(assert (=> b!893789 (= c!94173 ((_ is Found!8858) lt!403920))))

(assert (=> b!893789 (= lt!403920 (seekEntry!0 key!785 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(assert (=> b!893789 (= e!499219 e!499218)))

(assert (= (and d!110393 c!94172) b!893785))

(assert (= (and d!110393 (not c!94172)) b!893781))

(assert (= (and b!893781 c!94175) b!893783))

(assert (= (and b!893781 (not c!94175)) b!893789))

(assert (= (and b!893789 c!94173) b!893782))

(assert (= (and b!893789 (not c!94173)) b!893780))

(assert (= (and b!893780 c!94174) b!893787))

(assert (= (and b!893780 (not c!94174)) b!893784))

(assert (= (and b!893787 c!94176) b!893786))

(assert (= (and b!893787 (not c!94176)) b!893788))

(assert (= (or b!893782 b!893786) bm!39666))

(assert (= (or b!893782 b!893780) bm!39667))

(assert (= (or b!893782 b!893780) bm!39668))

(declare-fun m!831935 () Bool)

(assert (=> b!893787 m!831935))

(declare-fun m!831937 () Bool)

(assert (=> b!893787 m!831937))

(declare-fun m!831939 () Bool)

(assert (=> b!893787 m!831939))

(declare-fun m!831941 () Bool)

(assert (=> b!893787 m!831941))

(declare-fun m!831943 () Bool)

(assert (=> b!893787 m!831943))

(declare-fun m!831945 () Bool)

(assert (=> b!893787 m!831945))

(assert (=> b!893789 m!831935))

(declare-fun m!831947 () Bool)

(assert (=> bm!39666 m!831947))

(declare-fun m!831949 () Bool)

(assert (=> b!893782 m!831949))

(declare-fun m!831951 () Bool)

(assert (=> b!893782 m!831951))

(declare-fun m!831953 () Bool)

(assert (=> bm!39668 m!831953))

(declare-fun m!831955 () Bool)

(assert (=> bm!39668 m!831955))

(assert (=> d!110393 m!831905))

(assert (=> d!110393 m!831905))

(declare-fun m!831957 () Bool)

(assert (=> d!110393 m!831957))

(assert (=> d!110393 m!831903))

(declare-fun m!831959 () Bool)

(assert (=> bm!39667 m!831959))

(assert (=> b!893728 d!110393))

(declare-fun d!110395 () Bool)

(assert (=> d!110395 (= (get!13267 (getValueByKey!451 (toList!5393 (map!12220 thiss!1181)) key!785)) (v!11628 (getValueByKey!451 (toList!5393 (map!12220 thiss!1181)) key!785)))))

(assert (=> b!893731 d!110395))

(declare-fun b!893798 () Bool)

(declare-fun e!499225 () Option!457)

(assert (=> b!893798 (= e!499225 (Some!456 (_2!6032 (h!19009 (toList!5393 (map!12220 thiss!1181))))))))

(declare-fun b!893799 () Bool)

(declare-fun e!499226 () Option!457)

(assert (=> b!893799 (= e!499225 e!499226)))

(declare-fun c!94182 () Bool)

(assert (=> b!893799 (= c!94182 (and ((_ is Cons!17877) (toList!5393 (map!12220 thiss!1181))) (not (= (_1!6032 (h!19009 (toList!5393 (map!12220 thiss!1181)))) key!785))))))

(declare-fun b!893800 () Bool)

(assert (=> b!893800 (= e!499226 (getValueByKey!451 (t!25218 (toList!5393 (map!12220 thiss!1181))) key!785))))

(declare-fun d!110397 () Bool)

(declare-fun c!94181 () Bool)

(assert (=> d!110397 (= c!94181 (and ((_ is Cons!17877) (toList!5393 (map!12220 thiss!1181))) (= (_1!6032 (h!19009 (toList!5393 (map!12220 thiss!1181)))) key!785)))))

(assert (=> d!110397 (= (getValueByKey!451 (toList!5393 (map!12220 thiss!1181)) key!785) e!499225)))

(declare-fun b!893801 () Bool)

(assert (=> b!893801 (= e!499226 None!455)))

(assert (= (and d!110397 c!94181) b!893798))

(assert (= (and d!110397 (not c!94181)) b!893799))

(assert (= (and b!893799 c!94182) b!893800))

(assert (= (and b!893799 (not c!94182)) b!893801))

(declare-fun m!831961 () Bool)

(assert (=> b!893800 m!831961))

(assert (=> b!893731 d!110397))

(declare-fun d!110399 () Bool)

(assert (=> d!110399 (= (map!12220 thiss!1181) (getCurrentListMap!2638 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181)))))

(declare-fun bs!25090 () Bool)

(assert (= bs!25090 d!110399))

(assert (=> bs!25090 m!831959))

(assert (=> b!893731 d!110399))

(declare-fun d!110401 () Bool)

(assert (=> d!110401 (= (array_inv!19748 (_keys!10015 thiss!1181)) (bvsge (size!25620 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!893730 d!110401))

(declare-fun d!110403 () Bool)

(assert (=> d!110403 (= (array_inv!19749 (_values!5314 thiss!1181)) (bvsge (size!25621 (_values!5314 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!893730 d!110403))

(declare-fun d!110405 () Bool)

(declare-fun res!605183 () Bool)

(declare-fun e!499229 () Bool)

(assert (=> d!110405 (=> (not res!605183) (not e!499229))))

(declare-fun simpleValid!297 (LongMapFixedSize!4242) Bool)

(assert (=> d!110405 (= res!605183 (simpleValid!297 thiss!1181))))

(assert (=> d!110405 (= (valid!1630 thiss!1181) e!499229)))

(declare-fun b!893808 () Bool)

(declare-fun res!605184 () Bool)

(assert (=> b!893808 (=> (not res!605184) (not e!499229))))

(declare-fun arrayCountValidKeys!0 (array!52350 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!893808 (= res!605184 (= (arrayCountValidKeys!0 (_keys!10015 thiss!1181) #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))) (_size!2176 thiss!1181)))))

(declare-fun b!893809 () Bool)

(declare-fun res!605185 () Bool)

(assert (=> b!893809 (=> (not res!605185) (not e!499229))))

(assert (=> b!893809 (= res!605185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun b!893810 () Bool)

(declare-datatypes ((List!17882 0))(
  ( (Nil!17879) (Cons!17878 (h!19010 (_ BitVec 64)) (t!25221 List!17882)) )
))
(declare-fun arrayNoDuplicates!0 (array!52350 (_ BitVec 32) List!17882) Bool)

(assert (=> b!893810 (= e!499229 (arrayNoDuplicates!0 (_keys!10015 thiss!1181) #b00000000000000000000000000000000 Nil!17879))))

(assert (= (and d!110405 res!605183) b!893808))

(assert (= (and b!893808 res!605184) b!893809))

(assert (= (and b!893809 res!605185) b!893810))

(declare-fun m!831963 () Bool)

(assert (=> d!110405 m!831963))

(declare-fun m!831965 () Bool)

(assert (=> b!893808 m!831965))

(declare-fun m!831967 () Bool)

(assert (=> b!893809 m!831967))

(declare-fun m!831969 () Bool)

(assert (=> b!893810 m!831969))

(assert (=> start!76060 d!110405))

(declare-fun b!893817 () Bool)

(declare-fun e!499234 () Bool)

(assert (=> b!893817 (= e!499234 tp_is_empty!18189)))

(declare-fun mapNonEmpty!28855 () Bool)

(declare-fun mapRes!28855 () Bool)

(declare-fun tp!55573 () Bool)

(assert (=> mapNonEmpty!28855 (= mapRes!28855 (and tp!55573 e!499234))))

(declare-fun mapKey!28855 () (_ BitVec 32))

(declare-fun mapValue!28855 () ValueCell!8613)

(declare-fun mapRest!28855 () (Array (_ BitVec 32) ValueCell!8613))

(assert (=> mapNonEmpty!28855 (= mapRest!28849 (store mapRest!28855 mapKey!28855 mapValue!28855))))

(declare-fun b!893818 () Bool)

(declare-fun e!499235 () Bool)

(assert (=> b!893818 (= e!499235 tp_is_empty!18189)))

(declare-fun condMapEmpty!28855 () Bool)

(declare-fun mapDefault!28855 () ValueCell!8613)

(assert (=> mapNonEmpty!28849 (= condMapEmpty!28855 (= mapRest!28849 ((as const (Array (_ BitVec 32) ValueCell!8613)) mapDefault!28855)))))

(assert (=> mapNonEmpty!28849 (= tp!55564 (and e!499235 mapRes!28855))))

(declare-fun mapIsEmpty!28855 () Bool)

(assert (=> mapIsEmpty!28855 mapRes!28855))

(assert (= (and mapNonEmpty!28849 condMapEmpty!28855) mapIsEmpty!28855))

(assert (= (and mapNonEmpty!28849 (not condMapEmpty!28855)) mapNonEmpty!28855))

(assert (= (and mapNonEmpty!28855 ((_ is ValueCellFull!8613) mapValue!28855)) b!893817))

(assert (= (and mapNonEmpty!28849 ((_ is ValueCellFull!8613) mapDefault!28855)) b!893818))

(declare-fun m!831971 () Bool)

(assert (=> mapNonEmpty!28855 m!831971))

(check-sat (not b!893789) (not b!893800) (not d!110399) (not b!893809) (not b!893810) (not d!110393) (not b_next!15861) (not mapNonEmpty!28855) (not bm!39667) (not b!893787) (not b!893782) (not d!110405) (not b!893808) (not bm!39668) tp_is_empty!18189 b_and!26157 (not bm!39666) (not b_lambda!12967))
(check-sat b_and!26157 (not b_next!15861))
(get-model)

(declare-fun d!110407 () Bool)

(declare-fun res!605190 () Bool)

(declare-fun e!499240 () Bool)

(assert (=> d!110407 (=> res!605190 e!499240)))

(assert (=> d!110407 (= res!605190 (= (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!110407 (= (arrayContainsKey!0 (_keys!10015 thiss!1181) key!785 #b00000000000000000000000000000000) e!499240)))

(declare-fun b!893823 () Bool)

(declare-fun e!499241 () Bool)

(assert (=> b!893823 (= e!499240 e!499241)))

(declare-fun res!605191 () Bool)

(assert (=> b!893823 (=> (not res!605191) (not e!499241))))

(assert (=> b!893823 (= res!605191 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun b!893824 () Bool)

(assert (=> b!893824 (= e!499241 (arrayContainsKey!0 (_keys!10015 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110407 (not res!605190)) b!893823))

(assert (= (and b!893823 res!605191) b!893824))

(declare-fun m!831973 () Bool)

(assert (=> d!110407 m!831973))

(declare-fun m!831975 () Bool)

(assert (=> b!893824 m!831975))

(assert (=> bm!39666 d!110407))

(declare-fun d!110409 () Bool)

(assert (=> d!110409 (arrayContainsKey!0 (_keys!10015 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403926 () Unit!30409)

(declare-fun choose!13 (array!52350 (_ BitVec 64) (_ BitVec 32)) Unit!30409)

(assert (=> d!110409 (= lt!403926 (choose!13 (_keys!10015 thiss!1181) key!785 (index!37803 lt!403920)))))

(assert (=> d!110409 (bvsge (index!37803 lt!403920) #b00000000000000000000000000000000)))

(assert (=> d!110409 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10015 thiss!1181) key!785 (index!37803 lt!403920)) lt!403926)))

(declare-fun bs!25091 () Bool)

(assert (= bs!25091 d!110409))

(assert (=> bs!25091 m!831947))

(declare-fun m!831977 () Bool)

(assert (=> bs!25091 m!831977))

(assert (=> b!893782 d!110409))

(declare-fun d!110411 () Bool)

(declare-fun e!499244 () Bool)

(assert (=> d!110411 e!499244))

(declare-fun res!605194 () Bool)

(assert (=> d!110411 (=> (not res!605194) (not e!499244))))

(assert (=> d!110411 (= res!605194 (and (bvsge (index!37803 lt!403920) #b00000000000000000000000000000000) (bvslt (index!37803 lt!403920) (size!25620 (_keys!10015 thiss!1181)))))))

(declare-fun lt!403929 () Unit!30409)

(declare-fun choose!1477 (array!52350 array!52352 (_ BitVec 32) (_ BitVec 32) V!29217 V!29217 (_ BitVec 32) Int) Unit!30409)

(assert (=> d!110411 (= lt!403929 (choose!1477 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) (index!37803 lt!403920) (defaultEntry!5327 thiss!1181)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!110411 (validMask!0 (mask!25864 thiss!1181))))

(assert (=> d!110411 (= (lemmaValidKeyInArrayIsInListMap!231 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) (index!37803 lt!403920) (defaultEntry!5327 thiss!1181)) lt!403929)))

(declare-fun b!893827 () Bool)

(assert (=> b!893827 (= e!499244 (contains!4375 (getCurrentListMap!2638 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181)) (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920))))))

(assert (= (and d!110411 res!605194) b!893827))

(declare-fun m!831979 () Bool)

(assert (=> d!110411 m!831979))

(declare-fun m!831981 () Bool)

(assert (=> d!110411 m!831981))

(assert (=> b!893827 m!831959))

(assert (=> b!893827 m!831953))

(assert (=> b!893827 m!831959))

(assert (=> b!893827 m!831953))

(declare-fun m!831983 () Bool)

(assert (=> b!893827 m!831983))

(assert (=> b!893782 d!110411))

(declare-fun bm!39683 () Bool)

(declare-fun call!39692 () Bool)

(declare-fun lt!403987 () ListLongMap!10755)

(assert (=> bm!39683 (= call!39692 (contains!4375 lt!403987 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!39684 () Bool)

(declare-fun call!39691 () ListLongMap!10755)

(declare-fun call!39690 () ListLongMap!10755)

(assert (=> bm!39684 (= call!39691 call!39690)))

(declare-fun b!893870 () Bool)

(declare-fun e!499281 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!893870 (= e!499281 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!893871 () Bool)

(declare-fun e!499277 () ListLongMap!10755)

(declare-fun call!39686 () ListLongMap!10755)

(assert (=> b!893871 (= e!499277 call!39686)))

(declare-fun b!893872 () Bool)

(declare-fun e!499272 () Bool)

(declare-fun apply!408 (ListLongMap!10755 (_ BitVec 64)) V!29217)

(declare-fun get!13268 (ValueCell!8613 V!29217) V!29217)

(assert (=> b!893872 (= e!499272 (= (apply!408 lt!403987 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)) (get!13268 (select (arr!25175 (_values!5314 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1300 (defaultEntry!5327 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!893872 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25621 (_values!5314 thiss!1181))))))

(assert (=> b!893872 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun b!893873 () Bool)

(declare-fun e!499279 () Bool)

(declare-fun e!499276 () Bool)

(assert (=> b!893873 (= e!499279 e!499276)))

(declare-fun c!94198 () Bool)

(assert (=> b!893873 (= c!94198 (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!893874 () Bool)

(declare-fun e!499275 () Bool)

(assert (=> b!893874 (= e!499275 (= (apply!408 lt!403987 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5127 thiss!1181)))))

(declare-fun bm!39685 () Bool)

(declare-fun call!39687 () ListLongMap!10755)

(assert (=> bm!39685 (= call!39686 call!39687)))

(declare-fun b!893875 () Bool)

(declare-fun res!605217 () Bool)

(assert (=> b!893875 (=> (not res!605217) (not e!499279))))

(declare-fun e!499271 () Bool)

(assert (=> b!893875 (= res!605217 e!499271)))

(declare-fun c!94197 () Bool)

(assert (=> b!893875 (= c!94197 (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!893876 () Bool)

(declare-fun e!499282 () Bool)

(assert (=> b!893876 (= e!499276 e!499282)))

(declare-fun res!605215 () Bool)

(assert (=> b!893876 (= res!605215 call!39692)))

(assert (=> b!893876 (=> (not res!605215) (not e!499282))))

(declare-fun b!893877 () Bool)

(declare-fun res!605213 () Bool)

(assert (=> b!893877 (=> (not res!605213) (not e!499279))))

(declare-fun e!499278 () Bool)

(assert (=> b!893877 (= res!605213 e!499278)))

(declare-fun res!605221 () Bool)

(assert (=> b!893877 (=> res!605221 e!499278)))

(declare-fun e!499274 () Bool)

(assert (=> b!893877 (= res!605221 (not e!499274))))

(declare-fun res!605220 () Bool)

(assert (=> b!893877 (=> (not res!605220) (not e!499274))))

(assert (=> b!893877 (= res!605220 (bvslt #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun b!893878 () Bool)

(assert (=> b!893878 (= e!499277 call!39691)))

(declare-fun bm!39686 () Bool)

(declare-fun call!39689 () ListLongMap!10755)

(assert (=> bm!39686 (= call!39690 call!39689)))

(declare-fun b!893879 () Bool)

(declare-fun e!499283 () ListLongMap!10755)

(declare-fun e!499280 () ListLongMap!10755)

(assert (=> b!893879 (= e!499283 e!499280)))

(declare-fun c!94196 () Bool)

(assert (=> b!893879 (= c!94196 (and (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!893880 () Bool)

(declare-fun call!39688 () Bool)

(assert (=> b!893880 (= e!499271 (not call!39688))))

(declare-fun b!893881 () Bool)

(declare-fun +!2544 (ListLongMap!10755 tuple2!12044) ListLongMap!10755)

(assert (=> b!893881 (= e!499283 (+!2544 call!39687 (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181))))))

(declare-fun b!893882 () Bool)

(assert (=> b!893882 (= e!499276 (not call!39692))))

(declare-fun b!893883 () Bool)

(assert (=> b!893883 (= e!499274 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!893884 () Bool)

(assert (=> b!893884 (= e!499278 e!499272)))

(declare-fun res!605218 () Bool)

(assert (=> b!893884 (=> (not res!605218) (not e!499272))))

(assert (=> b!893884 (= res!605218 (contains!4375 lt!403987 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!893884 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun b!893885 () Bool)

(assert (=> b!893885 (= e!499280 call!39686)))

(declare-fun bm!39687 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3292 (array!52350 array!52352 (_ BitVec 32) (_ BitVec 32) V!29217 V!29217 (_ BitVec 32) Int) ListLongMap!10755)

(assert (=> bm!39687 (= call!39689 (getCurrentListMapNoExtraKeys!3292 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181)))))

(declare-fun b!893886 () Bool)

(assert (=> b!893886 (= e!499271 e!499275)))

(declare-fun res!605214 () Bool)

(assert (=> b!893886 (= res!605214 call!39688)))

(assert (=> b!893886 (=> (not res!605214) (not e!499275))))

(declare-fun b!893887 () Bool)

(declare-fun e!499273 () Unit!30409)

(declare-fun lt!403984 () Unit!30409)

(assert (=> b!893887 (= e!499273 lt!403984)))

(declare-fun lt!403975 () ListLongMap!10755)

(assert (=> b!893887 (= lt!403975 (getCurrentListMapNoExtraKeys!3292 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181)))))

(declare-fun lt!403995 () (_ BitVec 64))

(assert (=> b!893887 (= lt!403995 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!403976 () (_ BitVec 64))

(assert (=> b!893887 (= lt!403976 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!403974 () Unit!30409)

(declare-fun addStillContains!330 (ListLongMap!10755 (_ BitVec 64) V!29217 (_ BitVec 64)) Unit!30409)

(assert (=> b!893887 (= lt!403974 (addStillContains!330 lt!403975 lt!403995 (zeroValue!5127 thiss!1181) lt!403976))))

(assert (=> b!893887 (contains!4375 (+!2544 lt!403975 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181))) lt!403976)))

(declare-fun lt!403978 () Unit!30409)

(assert (=> b!893887 (= lt!403978 lt!403974)))

(declare-fun lt!403979 () ListLongMap!10755)

(assert (=> b!893887 (= lt!403979 (getCurrentListMapNoExtraKeys!3292 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181)))))

(declare-fun lt!403988 () (_ BitVec 64))

(assert (=> b!893887 (= lt!403988 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!403981 () (_ BitVec 64))

(assert (=> b!893887 (= lt!403981 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!403993 () Unit!30409)

(declare-fun addApplyDifferent!330 (ListLongMap!10755 (_ BitVec 64) V!29217 (_ BitVec 64)) Unit!30409)

(assert (=> b!893887 (= lt!403993 (addApplyDifferent!330 lt!403979 lt!403988 (minValue!5127 thiss!1181) lt!403981))))

(assert (=> b!893887 (= (apply!408 (+!2544 lt!403979 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181))) lt!403981) (apply!408 lt!403979 lt!403981))))

(declare-fun lt!403985 () Unit!30409)

(assert (=> b!893887 (= lt!403985 lt!403993)))

(declare-fun lt!403994 () ListLongMap!10755)

(assert (=> b!893887 (= lt!403994 (getCurrentListMapNoExtraKeys!3292 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181)))))

(declare-fun lt!403989 () (_ BitVec 64))

(assert (=> b!893887 (= lt!403989 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!403982 () (_ BitVec 64))

(assert (=> b!893887 (= lt!403982 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!403977 () Unit!30409)

(assert (=> b!893887 (= lt!403977 (addApplyDifferent!330 lt!403994 lt!403989 (zeroValue!5127 thiss!1181) lt!403982))))

(assert (=> b!893887 (= (apply!408 (+!2544 lt!403994 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181))) lt!403982) (apply!408 lt!403994 lt!403982))))

(declare-fun lt!403986 () Unit!30409)

(assert (=> b!893887 (= lt!403986 lt!403977)))

(declare-fun lt!403991 () ListLongMap!10755)

(assert (=> b!893887 (= lt!403991 (getCurrentListMapNoExtraKeys!3292 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181)))))

(declare-fun lt!403983 () (_ BitVec 64))

(assert (=> b!893887 (= lt!403983 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!403990 () (_ BitVec 64))

(assert (=> b!893887 (= lt!403990 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!893887 (= lt!403984 (addApplyDifferent!330 lt!403991 lt!403983 (minValue!5127 thiss!1181) lt!403990))))

(assert (=> b!893887 (= (apply!408 (+!2544 lt!403991 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181))) lt!403990) (apply!408 lt!403991 lt!403990))))

(declare-fun b!893888 () Bool)

(declare-fun Unit!30413 () Unit!30409)

(assert (=> b!893888 (= e!499273 Unit!30413)))

(declare-fun b!893889 () Bool)

(assert (=> b!893889 (= e!499282 (= (apply!408 lt!403987 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5127 thiss!1181)))))

(declare-fun bm!39688 () Bool)

(assert (=> bm!39688 (= call!39688 (contains!4375 lt!403987 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!110413 () Bool)

(assert (=> d!110413 e!499279))

(declare-fun res!605216 () Bool)

(assert (=> d!110413 (=> (not res!605216) (not e!499279))))

(assert (=> d!110413 (= res!605216 (or (bvsge #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))))

(declare-fun lt!403980 () ListLongMap!10755)

(assert (=> d!110413 (= lt!403987 lt!403980)))

(declare-fun lt!403992 () Unit!30409)

(assert (=> d!110413 (= lt!403992 e!499273)))

(declare-fun c!94200 () Bool)

(assert (=> d!110413 (= c!94200 e!499281)))

(declare-fun res!605219 () Bool)

(assert (=> d!110413 (=> (not res!605219) (not e!499281))))

(assert (=> d!110413 (= res!605219 (bvslt #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> d!110413 (= lt!403980 e!499283)))

(declare-fun c!94195 () Bool)

(assert (=> d!110413 (= c!94195 (and (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!110413 (validMask!0 (mask!25864 thiss!1181))))

(assert (=> d!110413 (= (getCurrentListMap!2638 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181)) lt!403987)))

(declare-fun b!893890 () Bool)

(declare-fun c!94199 () Bool)

(assert (=> b!893890 (= c!94199 (and (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!893890 (= e!499280 e!499277)))

(declare-fun bm!39689 () Bool)

(assert (=> bm!39689 (= call!39687 (+!2544 (ite c!94195 call!39689 (ite c!94196 call!39690 call!39691)) (ite (or c!94195 c!94196) (tuple2!12045 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5127 thiss!1181)) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181)))))))

(assert (= (and d!110413 c!94195) b!893881))

(assert (= (and d!110413 (not c!94195)) b!893879))

(assert (= (and b!893879 c!94196) b!893885))

(assert (= (and b!893879 (not c!94196)) b!893890))

(assert (= (and b!893890 c!94199) b!893871))

(assert (= (and b!893890 (not c!94199)) b!893878))

(assert (= (or b!893871 b!893878) bm!39684))

(assert (= (or b!893885 bm!39684) bm!39686))

(assert (= (or b!893885 b!893871) bm!39685))

(assert (= (or b!893881 bm!39686) bm!39687))

(assert (= (or b!893881 bm!39685) bm!39689))

(assert (= (and d!110413 res!605219) b!893870))

(assert (= (and d!110413 c!94200) b!893887))

(assert (= (and d!110413 (not c!94200)) b!893888))

(assert (= (and d!110413 res!605216) b!893877))

(assert (= (and b!893877 res!605220) b!893883))

(assert (= (and b!893877 (not res!605221)) b!893884))

(assert (= (and b!893884 res!605218) b!893872))

(assert (= (and b!893877 res!605213) b!893875))

(assert (= (and b!893875 c!94197) b!893886))

(assert (= (and b!893875 (not c!94197)) b!893880))

(assert (= (and b!893886 res!605214) b!893874))

(assert (= (or b!893886 b!893880) bm!39688))

(assert (= (and b!893875 res!605217) b!893873))

(assert (= (and b!893873 c!94198) b!893876))

(assert (= (and b!893873 (not c!94198)) b!893882))

(assert (= (and b!893876 res!605215) b!893889))

(assert (= (or b!893876 b!893882) bm!39683))

(declare-fun b_lambda!12969 () Bool)

(assert (=> (not b_lambda!12969) (not b!893872)))

(declare-fun t!25223 () Bool)

(declare-fun tb!5191 () Bool)

(assert (=> (and b!893730 (= (defaultEntry!5327 thiss!1181) (defaultEntry!5327 thiss!1181)) t!25223) tb!5191))

(declare-fun result!10091 () Bool)

(assert (=> tb!5191 (= result!10091 tp_is_empty!18189)))

(assert (=> b!893872 t!25223))

(declare-fun b_and!26163 () Bool)

(assert (= b_and!26157 (and (=> t!25223 result!10091) b_and!26163)))

(assert (=> b!893870 m!831973))

(assert (=> b!893870 m!831973))

(declare-fun m!831985 () Bool)

(assert (=> b!893870 m!831985))

(declare-fun m!831987 () Bool)

(assert (=> bm!39683 m!831987))

(declare-fun m!831989 () Bool)

(assert (=> b!893881 m!831989))

(assert (=> b!893884 m!831973))

(assert (=> b!893884 m!831973))

(declare-fun m!831991 () Bool)

(assert (=> b!893884 m!831991))

(declare-fun m!831993 () Bool)

(assert (=> bm!39689 m!831993))

(declare-fun m!831995 () Bool)

(assert (=> b!893889 m!831995))

(assert (=> d!110413 m!831981))

(declare-fun m!831997 () Bool)

(assert (=> b!893872 m!831997))

(assert (=> b!893872 m!831973))

(assert (=> b!893872 m!831997))

(declare-fun m!831999 () Bool)

(assert (=> b!893872 m!831999))

(declare-fun m!832001 () Bool)

(assert (=> b!893872 m!832001))

(assert (=> b!893872 m!831999))

(assert (=> b!893872 m!831973))

(declare-fun m!832003 () Bool)

(assert (=> b!893872 m!832003))

(declare-fun m!832005 () Bool)

(assert (=> b!893887 m!832005))

(declare-fun m!832007 () Bool)

(assert (=> b!893887 m!832007))

(declare-fun m!832009 () Bool)

(assert (=> b!893887 m!832009))

(declare-fun m!832011 () Bool)

(assert (=> b!893887 m!832011))

(declare-fun m!832013 () Bool)

(assert (=> b!893887 m!832013))

(declare-fun m!832015 () Bool)

(assert (=> b!893887 m!832015))

(declare-fun m!832017 () Bool)

(assert (=> b!893887 m!832017))

(declare-fun m!832019 () Bool)

(assert (=> b!893887 m!832019))

(declare-fun m!832021 () Bool)

(assert (=> b!893887 m!832021))

(declare-fun m!832023 () Bool)

(assert (=> b!893887 m!832023))

(assert (=> b!893887 m!832009))

(declare-fun m!832025 () Bool)

(assert (=> b!893887 m!832025))

(assert (=> b!893887 m!832013))

(declare-fun m!832027 () Bool)

(assert (=> b!893887 m!832027))

(assert (=> b!893887 m!832015))

(assert (=> b!893887 m!831973))

(declare-fun m!832029 () Bool)

(assert (=> b!893887 m!832029))

(declare-fun m!832031 () Bool)

(assert (=> b!893887 m!832031))

(assert (=> b!893887 m!832007))

(declare-fun m!832033 () Bool)

(assert (=> b!893887 m!832033))

(declare-fun m!832035 () Bool)

(assert (=> b!893887 m!832035))

(declare-fun m!832037 () Bool)

(assert (=> bm!39688 m!832037))

(assert (=> b!893883 m!831973))

(assert (=> b!893883 m!831973))

(assert (=> b!893883 m!831985))

(assert (=> bm!39687 m!832035))

(declare-fun m!832039 () Bool)

(assert (=> b!893874 m!832039))

(assert (=> d!110399 d!110413))

(declare-fun d!110415 () Bool)

(declare-fun e!499288 () Bool)

(assert (=> d!110415 e!499288))

(declare-fun res!605224 () Bool)

(assert (=> d!110415 (=> res!605224 e!499288)))

(declare-fun lt!404007 () Bool)

(assert (=> d!110415 (= res!605224 (not lt!404007))))

(declare-fun lt!404006 () Bool)

(assert (=> d!110415 (= lt!404007 lt!404006)))

(declare-fun lt!404005 () Unit!30409)

(declare-fun e!499289 () Unit!30409)

(assert (=> d!110415 (= lt!404005 e!499289)))

(declare-fun c!94203 () Bool)

(assert (=> d!110415 (= c!94203 lt!404006)))

(declare-fun containsKey!424 (List!17881 (_ BitVec 64)) Bool)

(assert (=> d!110415 (= lt!404006 (containsKey!424 (toList!5393 (map!12220 thiss!1181)) key!785))))

(assert (=> d!110415 (= (contains!4375 (map!12220 thiss!1181) key!785) lt!404007)))

(declare-fun b!893897 () Bool)

(declare-fun lt!404004 () Unit!30409)

(assert (=> b!893897 (= e!499289 lt!404004)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!319 (List!17881 (_ BitVec 64)) Unit!30409)

(assert (=> b!893897 (= lt!404004 (lemmaContainsKeyImpliesGetValueByKeyDefined!319 (toList!5393 (map!12220 thiss!1181)) key!785))))

(declare-fun isDefined!329 (Option!457) Bool)

(assert (=> b!893897 (isDefined!329 (getValueByKey!451 (toList!5393 (map!12220 thiss!1181)) key!785))))

(declare-fun b!893898 () Bool)

(declare-fun Unit!30414 () Unit!30409)

(assert (=> b!893898 (= e!499289 Unit!30414)))

(declare-fun b!893899 () Bool)

(assert (=> b!893899 (= e!499288 (isDefined!329 (getValueByKey!451 (toList!5393 (map!12220 thiss!1181)) key!785)))))

(assert (= (and d!110415 c!94203) b!893897))

(assert (= (and d!110415 (not c!94203)) b!893898))

(assert (= (and d!110415 (not res!605224)) b!893899))

(declare-fun m!832041 () Bool)

(assert (=> d!110415 m!832041))

(declare-fun m!832043 () Bool)

(assert (=> b!893897 m!832043))

(assert (=> b!893897 m!831907))

(assert (=> b!893897 m!831907))

(declare-fun m!832045 () Bool)

(assert (=> b!893897 m!832045))

(assert (=> b!893899 m!831907))

(assert (=> b!893899 m!831907))

(assert (=> b!893899 m!832045))

(assert (=> d!110393 d!110415))

(assert (=> d!110393 d!110399))

(assert (=> d!110393 d!110405))

(declare-fun b!893912 () Bool)

(declare-fun c!94212 () Bool)

(declare-fun lt!404019 () (_ BitVec 64))

(assert (=> b!893912 (= c!94212 (= lt!404019 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!499296 () SeekEntryResult!8858)

(declare-fun e!499298 () SeekEntryResult!8858)

(assert (=> b!893912 (= e!499296 e!499298)))

(declare-fun b!893913 () Bool)

(declare-fun lt!404018 () SeekEntryResult!8858)

(assert (=> b!893913 (= e!499296 (Found!8858 (index!37804 lt!404018)))))

(declare-fun b!893914 () Bool)

(assert (=> b!893914 (= e!499298 (MissingZero!8858 (index!37804 lt!404018)))))

(declare-fun d!110417 () Bool)

(declare-fun lt!404016 () SeekEntryResult!8858)

(assert (=> d!110417 (and (or ((_ is MissingVacant!8858) lt!404016) (not ((_ is Found!8858) lt!404016)) (and (bvsge (index!37803 lt!404016) #b00000000000000000000000000000000) (bvslt (index!37803 lt!404016) (size!25620 (_keys!10015 thiss!1181))))) (not ((_ is MissingVacant!8858) lt!404016)) (or (not ((_ is Found!8858) lt!404016)) (= (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!404016)) key!785)))))

(declare-fun e!499297 () SeekEntryResult!8858)

(assert (=> d!110417 (= lt!404016 e!499297)))

(declare-fun c!94210 () Bool)

(assert (=> d!110417 (= c!94210 (and ((_ is Intermediate!8858) lt!404018) (undefined!9670 lt!404018)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52350 (_ BitVec 32)) SeekEntryResult!8858)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110417 (= lt!404018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25864 thiss!1181)) key!785 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(assert (=> d!110417 (validMask!0 (mask!25864 thiss!1181))))

(assert (=> d!110417 (= (seekEntry!0 key!785 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) lt!404016)))

(declare-fun b!893915 () Bool)

(declare-fun lt!404017 () SeekEntryResult!8858)

(assert (=> b!893915 (= e!499298 (ite ((_ is MissingVacant!8858) lt!404017) (MissingZero!8858 (index!37805 lt!404017)) lt!404017))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52350 (_ BitVec 32)) SeekEntryResult!8858)

(assert (=> b!893915 (= lt!404017 (seekKeyOrZeroReturnVacant!0 (x!75987 lt!404018) (index!37804 lt!404018) (index!37804 lt!404018) key!785 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun b!893916 () Bool)

(assert (=> b!893916 (= e!499297 Undefined!8858)))

(declare-fun b!893917 () Bool)

(assert (=> b!893917 (= e!499297 e!499296)))

(assert (=> b!893917 (= lt!404019 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37804 lt!404018)))))

(declare-fun c!94211 () Bool)

(assert (=> b!893917 (= c!94211 (= lt!404019 key!785))))

(assert (= (and d!110417 c!94210) b!893916))

(assert (= (and d!110417 (not c!94210)) b!893917))

(assert (= (and b!893917 c!94211) b!893913))

(assert (= (and b!893917 (not c!94211)) b!893912))

(assert (= (and b!893912 c!94212) b!893914))

(assert (= (and b!893912 (not c!94212)) b!893915))

(declare-fun m!832047 () Bool)

(assert (=> d!110417 m!832047))

(declare-fun m!832049 () Bool)

(assert (=> d!110417 m!832049))

(assert (=> d!110417 m!832049))

(declare-fun m!832051 () Bool)

(assert (=> d!110417 m!832051))

(assert (=> d!110417 m!831981))

(declare-fun m!832053 () Bool)

(assert (=> b!893915 m!832053))

(declare-fun m!832055 () Bool)

(assert (=> b!893917 m!832055))

(assert (=> b!893789 d!110417))

(declare-fun d!110419 () Bool)

(declare-fun e!499301 () Bool)

(assert (=> d!110419 e!499301))

(declare-fun c!94215 () Bool)

(assert (=> d!110419 (= c!94215 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!404022 () Unit!30409)

(declare-fun choose!1478 (array!52350 array!52352 (_ BitVec 32) (_ BitVec 32) V!29217 V!29217 (_ BitVec 64) Int) Unit!30409)

(assert (=> d!110419 (= lt!404022 (choose!1478 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) key!785 (defaultEntry!5327 thiss!1181)))))

(assert (=> d!110419 (validMask!0 (mask!25864 thiss!1181))))

(assert (=> d!110419 (= (lemmaKeyInListMapIsInArray!165 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) key!785 (defaultEntry!5327 thiss!1181)) lt!404022)))

(declare-fun b!893922 () Bool)

(assert (=> b!893922 (= e!499301 (arrayContainsKey!0 (_keys!10015 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!893923 () Bool)

(assert (=> b!893923 (= e!499301 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!110419 c!94215) b!893922))

(assert (= (and d!110419 (not c!94215)) b!893923))

(declare-fun m!832057 () Bool)

(assert (=> d!110419 m!832057))

(assert (=> d!110419 m!831981))

(assert (=> b!893922 m!831947))

(assert (=> b!893787 d!110419))

(declare-fun d!110421 () Bool)

(declare-fun lt!404028 () SeekEntryResult!8858)

(assert (=> d!110421 (and ((_ is Found!8858) lt!404028) (= (index!37803 lt!404028) lt!403916))))

(assert (=> d!110421 (= lt!404028 (seekEntry!0 key!785 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun lt!404027 () Unit!30409)

(declare-fun choose!0 ((_ BitVec 64) (_ BitVec 32) array!52350 (_ BitVec 32)) Unit!30409)

(assert (=> d!110421 (= lt!404027 (choose!0 key!785 lt!403916 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(assert (=> d!110421 (validMask!0 (mask!25864 thiss!1181))))

(assert (=> d!110421 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!403916 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) lt!404027)))

(declare-fun bs!25092 () Bool)

(assert (= bs!25092 d!110421))

(assert (=> bs!25092 m!831935))

(declare-fun m!832059 () Bool)

(assert (=> bs!25092 m!832059))

(assert (=> bs!25092 m!831981))

(assert (=> b!893787 d!110421))

(assert (=> b!893787 d!110417))

(declare-fun d!110423 () Bool)

(declare-fun lt!404031 () (_ BitVec 32))

(assert (=> d!110423 (and (or (bvslt lt!404031 #b00000000000000000000000000000000) (bvsge lt!404031 (size!25620 (_keys!10015 thiss!1181))) (and (bvsge lt!404031 #b00000000000000000000000000000000) (bvslt lt!404031 (size!25620 (_keys!10015 thiss!1181))))) (bvsge lt!404031 #b00000000000000000000000000000000) (bvslt lt!404031 (size!25620 (_keys!10015 thiss!1181))) (= (select (arr!25174 (_keys!10015 thiss!1181)) lt!404031) key!785))))

(declare-fun e!499304 () (_ BitVec 32))

(assert (=> d!110423 (= lt!404031 e!499304)))

(declare-fun c!94218 () Bool)

(assert (=> d!110423 (= c!94218 (= (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!110423 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))) (bvslt (size!25620 (_keys!10015 thiss!1181)) #b01111111111111111111111111111111))))

(assert (=> d!110423 (= (arrayScanForKey!0 (_keys!10015 thiss!1181) key!785 #b00000000000000000000000000000000) lt!404031)))

(declare-fun b!893928 () Bool)

(assert (=> b!893928 (= e!499304 #b00000000000000000000000000000000)))

(declare-fun b!893929 () Bool)

(assert (=> b!893929 (= e!499304 (arrayScanForKey!0 (_keys!10015 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110423 c!94218) b!893928))

(assert (= (and d!110423 (not c!94218)) b!893929))

(declare-fun m!832061 () Bool)

(assert (=> d!110423 m!832061))

(assert (=> d!110423 m!831973))

(declare-fun m!832063 () Bool)

(assert (=> b!893929 m!832063))

(assert (=> b!893787 d!110423))

(declare-fun d!110425 () Bool)

(assert (=> d!110425 (arrayForallSeekEntryOrOpenFound!0 lt!403916 (_keys!10015 thiss!1181) (mask!25864 thiss!1181))))

(declare-fun lt!404034 () Unit!30409)

(declare-fun choose!38 (array!52350 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30409)

(assert (=> d!110425 (= lt!404034 (choose!38 (_keys!10015 thiss!1181) (mask!25864 thiss!1181) #b00000000000000000000000000000000 lt!403916))))

(assert (=> d!110425 (validMask!0 (mask!25864 thiss!1181))))

(assert (=> d!110425 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10015 thiss!1181) (mask!25864 thiss!1181) #b00000000000000000000000000000000 lt!403916) lt!404034)))

(declare-fun bs!25093 () Bool)

(assert (= bs!25093 d!110425))

(assert (=> bs!25093 m!831937))

(declare-fun m!832065 () Bool)

(assert (=> bs!25093 m!832065))

(assert (=> bs!25093 m!831981))

(assert (=> b!893787 d!110425))

(declare-fun b!893938 () Bool)

(declare-fun e!499313 () Bool)

(declare-fun call!39695 () Bool)

(assert (=> b!893938 (= e!499313 call!39695)))

(declare-fun b!893939 () Bool)

(declare-fun e!499311 () Bool)

(assert (=> b!893939 (= e!499311 e!499313)))

(declare-fun c!94221 () Bool)

(assert (=> b!893939 (= c!94221 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) lt!403916)))))

(declare-fun d!110427 () Bool)

(declare-fun res!605230 () Bool)

(assert (=> d!110427 (=> res!605230 e!499311)))

(assert (=> d!110427 (= res!605230 (bvsge lt!403916 (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> d!110427 (= (arrayForallSeekEntryOrOpenFound!0 lt!403916 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) e!499311)))

(declare-fun bm!39692 () Bool)

(assert (=> bm!39692 (= call!39695 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!403916 #b00000000000000000000000000000001) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun b!893940 () Bool)

(declare-fun e!499312 () Bool)

(assert (=> b!893940 (= e!499312 call!39695)))

(declare-fun b!893941 () Bool)

(assert (=> b!893941 (= e!499313 e!499312)))

(declare-fun lt!404042 () (_ BitVec 64))

(assert (=> b!893941 (= lt!404042 (select (arr!25174 (_keys!10015 thiss!1181)) lt!403916))))

(declare-fun lt!404041 () Unit!30409)

(assert (=> b!893941 (= lt!404041 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10015 thiss!1181) lt!404042 lt!403916))))

(assert (=> b!893941 (arrayContainsKey!0 (_keys!10015 thiss!1181) lt!404042 #b00000000000000000000000000000000)))

(declare-fun lt!404043 () Unit!30409)

(assert (=> b!893941 (= lt!404043 lt!404041)))

(declare-fun res!605229 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52350 (_ BitVec 32)) SeekEntryResult!8858)

(assert (=> b!893941 (= res!605229 (= (seekEntryOrOpen!0 (select (arr!25174 (_keys!10015 thiss!1181)) lt!403916) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) (Found!8858 lt!403916)))))

(assert (=> b!893941 (=> (not res!605229) (not e!499312))))

(assert (= (and d!110427 (not res!605230)) b!893939))

(assert (= (and b!893939 c!94221) b!893941))

(assert (= (and b!893939 (not c!94221)) b!893938))

(assert (= (and b!893941 res!605229) b!893940))

(assert (= (or b!893940 b!893938) bm!39692))

(declare-fun m!832067 () Bool)

(assert (=> b!893939 m!832067))

(assert (=> b!893939 m!832067))

(declare-fun m!832069 () Bool)

(assert (=> b!893939 m!832069))

(declare-fun m!832071 () Bool)

(assert (=> bm!39692 m!832071))

(assert (=> b!893941 m!832067))

(declare-fun m!832073 () Bool)

(assert (=> b!893941 m!832073))

(declare-fun m!832075 () Bool)

(assert (=> b!893941 m!832075))

(assert (=> b!893941 m!832067))

(declare-fun m!832077 () Bool)

(assert (=> b!893941 m!832077))

(assert (=> b!893787 d!110427))

(declare-fun b!893952 () Bool)

(declare-fun e!499324 () Bool)

(declare-fun call!39698 () Bool)

(assert (=> b!893952 (= e!499324 call!39698)))

(declare-fun b!893953 () Bool)

(declare-fun e!499323 () Bool)

(declare-fun e!499325 () Bool)

(assert (=> b!893953 (= e!499323 e!499325)))

(declare-fun res!605239 () Bool)

(assert (=> b!893953 (=> (not res!605239) (not e!499325))))

(declare-fun e!499322 () Bool)

(assert (=> b!893953 (= res!605239 (not e!499322))))

(declare-fun res!605237 () Bool)

(assert (=> b!893953 (=> (not res!605237) (not e!499322))))

(assert (=> b!893953 (= res!605237 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!893954 () Bool)

(declare-fun contains!4376 (List!17882 (_ BitVec 64)) Bool)

(assert (=> b!893954 (= e!499322 (contains!4376 Nil!17879 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!893955 () Bool)

(assert (=> b!893955 (= e!499324 call!39698)))

(declare-fun bm!39695 () Bool)

(declare-fun c!94224 () Bool)

(assert (=> bm!39695 (= call!39698 (arrayNoDuplicates!0 (_keys!10015 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94224 (Cons!17878 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) Nil!17879) Nil!17879)))))

(declare-fun d!110429 () Bool)

(declare-fun res!605238 () Bool)

(assert (=> d!110429 (=> res!605238 e!499323)))

(assert (=> d!110429 (= res!605238 (bvsge #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> d!110429 (= (arrayNoDuplicates!0 (_keys!10015 thiss!1181) #b00000000000000000000000000000000 Nil!17879) e!499323)))

(declare-fun b!893956 () Bool)

(assert (=> b!893956 (= e!499325 e!499324)))

(assert (=> b!893956 (= c!94224 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110429 (not res!605238)) b!893953))

(assert (= (and b!893953 res!605237) b!893954))

(assert (= (and b!893953 res!605239) b!893956))

(assert (= (and b!893956 c!94224) b!893955))

(assert (= (and b!893956 (not c!94224)) b!893952))

(assert (= (or b!893955 b!893952) bm!39695))

(assert (=> b!893953 m!831973))

(assert (=> b!893953 m!831973))

(assert (=> b!893953 m!831985))

(assert (=> b!893954 m!831973))

(assert (=> b!893954 m!831973))

(declare-fun m!832079 () Bool)

(assert (=> b!893954 m!832079))

(assert (=> bm!39695 m!831973))

(declare-fun m!832081 () Bool)

(assert (=> bm!39695 m!832081))

(assert (=> b!893956 m!831973))

(assert (=> b!893956 m!831973))

(assert (=> b!893956 m!831985))

(assert (=> b!893810 d!110429))

(declare-fun b!893965 () Bool)

(declare-fun e!499331 () (_ BitVec 32))

(declare-fun call!39701 () (_ BitVec 32))

(assert (=> b!893965 (= e!499331 call!39701)))

(declare-fun d!110431 () Bool)

(declare-fun lt!404046 () (_ BitVec 32))

(assert (=> d!110431 (and (bvsge lt!404046 #b00000000000000000000000000000000) (bvsle lt!404046 (bvsub (size!25620 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!499330 () (_ BitVec 32))

(assert (=> d!110431 (= lt!404046 e!499330)))

(declare-fun c!94230 () Bool)

(assert (=> d!110431 (= c!94230 (bvsge #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> d!110431 (and (bvsle #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25620 (_keys!10015 thiss!1181)) (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> d!110431 (= (arrayCountValidKeys!0 (_keys!10015 thiss!1181) #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))) lt!404046)))

(declare-fun bm!39698 () Bool)

(assert (=> bm!39698 (= call!39701 (arrayCountValidKeys!0 (_keys!10015 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun b!893966 () Bool)

(assert (=> b!893966 (= e!499330 #b00000000000000000000000000000000)))

(declare-fun b!893967 () Bool)

(assert (=> b!893967 (= e!499331 (bvadd #b00000000000000000000000000000001 call!39701))))

(declare-fun b!893968 () Bool)

(assert (=> b!893968 (= e!499330 e!499331)))

(declare-fun c!94229 () Bool)

(assert (=> b!893968 (= c!94229 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110431 c!94230) b!893966))

(assert (= (and d!110431 (not c!94230)) b!893968))

(assert (= (and b!893968 c!94229) b!893967))

(assert (= (and b!893968 (not c!94229)) b!893965))

(assert (= (or b!893967 b!893965) bm!39698))

(declare-fun m!832083 () Bool)

(assert (=> bm!39698 m!832083))

(assert (=> b!893968 m!831973))

(assert (=> b!893968 m!831973))

(assert (=> b!893968 m!831985))

(assert (=> b!893808 d!110431))

(declare-fun b!893969 () Bool)

(declare-fun e!499334 () Bool)

(declare-fun call!39702 () Bool)

(assert (=> b!893969 (= e!499334 call!39702)))

(declare-fun b!893970 () Bool)

(declare-fun e!499332 () Bool)

(assert (=> b!893970 (= e!499332 e!499334)))

(declare-fun c!94231 () Bool)

(assert (=> b!893970 (= c!94231 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110433 () Bool)

(declare-fun res!605241 () Bool)

(assert (=> d!110433 (=> res!605241 e!499332)))

(assert (=> d!110433 (= res!605241 (bvsge #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> d!110433 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) e!499332)))

(declare-fun bm!39699 () Bool)

(assert (=> bm!39699 (= call!39702 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun b!893971 () Bool)

(declare-fun e!499333 () Bool)

(assert (=> b!893971 (= e!499333 call!39702)))

(declare-fun b!893972 () Bool)

(assert (=> b!893972 (= e!499334 e!499333)))

(declare-fun lt!404048 () (_ BitVec 64))

(assert (=> b!893972 (= lt!404048 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!404047 () Unit!30409)

(assert (=> b!893972 (= lt!404047 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10015 thiss!1181) lt!404048 #b00000000000000000000000000000000))))

(assert (=> b!893972 (arrayContainsKey!0 (_keys!10015 thiss!1181) lt!404048 #b00000000000000000000000000000000)))

(declare-fun lt!404049 () Unit!30409)

(assert (=> b!893972 (= lt!404049 lt!404047)))

(declare-fun res!605240 () Bool)

(assert (=> b!893972 (= res!605240 (= (seekEntryOrOpen!0 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) (Found!8858 #b00000000000000000000000000000000)))))

(assert (=> b!893972 (=> (not res!605240) (not e!499333))))

(assert (= (and d!110433 (not res!605241)) b!893970))

(assert (= (and b!893970 c!94231) b!893972))

(assert (= (and b!893970 (not c!94231)) b!893969))

(assert (= (and b!893972 res!605240) b!893971))

(assert (= (or b!893971 b!893969) bm!39699))

(assert (=> b!893970 m!831973))

(assert (=> b!893970 m!831973))

(assert (=> b!893970 m!831985))

(declare-fun m!832085 () Bool)

(assert (=> bm!39699 m!832085))

(assert (=> b!893972 m!831973))

(declare-fun m!832087 () Bool)

(assert (=> b!893972 m!832087))

(declare-fun m!832089 () Bool)

(assert (=> b!893972 m!832089))

(assert (=> b!893972 m!831973))

(declare-fun m!832091 () Bool)

(assert (=> b!893972 m!832091))

(assert (=> b!893809 d!110433))

(assert (=> bm!39667 d!110413))

(declare-fun b!893973 () Bool)

(declare-fun e!499335 () Option!457)

(assert (=> b!893973 (= e!499335 (Some!456 (_2!6032 (h!19009 (t!25218 (toList!5393 (map!12220 thiss!1181)))))))))

(declare-fun b!893974 () Bool)

(declare-fun e!499336 () Option!457)

(assert (=> b!893974 (= e!499335 e!499336)))

(declare-fun c!94233 () Bool)

(assert (=> b!893974 (= c!94233 (and ((_ is Cons!17877) (t!25218 (toList!5393 (map!12220 thiss!1181)))) (not (= (_1!6032 (h!19009 (t!25218 (toList!5393 (map!12220 thiss!1181))))) key!785))))))

(declare-fun b!893975 () Bool)

(assert (=> b!893975 (= e!499336 (getValueByKey!451 (t!25218 (t!25218 (toList!5393 (map!12220 thiss!1181)))) key!785))))

(declare-fun d!110435 () Bool)

(declare-fun c!94232 () Bool)

(assert (=> d!110435 (= c!94232 (and ((_ is Cons!17877) (t!25218 (toList!5393 (map!12220 thiss!1181)))) (= (_1!6032 (h!19009 (t!25218 (toList!5393 (map!12220 thiss!1181))))) key!785)))))

(assert (=> d!110435 (= (getValueByKey!451 (t!25218 (toList!5393 (map!12220 thiss!1181))) key!785) e!499335)))

(declare-fun b!893976 () Bool)

(assert (=> b!893976 (= e!499336 None!455)))

(assert (= (and d!110435 c!94232) b!893973))

(assert (= (and d!110435 (not c!94232)) b!893974))

(assert (= (and b!893974 c!94233) b!893975))

(assert (= (and b!893974 (not c!94233)) b!893976))

(declare-fun m!832093 () Bool)

(assert (=> b!893975 m!832093))

(assert (=> b!893800 d!110435))

(declare-fun d!110437 () Bool)

(declare-fun e!499337 () Bool)

(assert (=> d!110437 e!499337))

(declare-fun res!605242 () Bool)

(assert (=> d!110437 (=> res!605242 e!499337)))

(declare-fun lt!404053 () Bool)

(assert (=> d!110437 (= res!605242 (not lt!404053))))

(declare-fun lt!404052 () Bool)

(assert (=> d!110437 (= lt!404053 lt!404052)))

(declare-fun lt!404051 () Unit!30409)

(declare-fun e!499338 () Unit!30409)

(assert (=> d!110437 (= lt!404051 e!499338)))

(declare-fun c!94234 () Bool)

(assert (=> d!110437 (= c!94234 lt!404052)))

(assert (=> d!110437 (= lt!404052 (containsKey!424 (toList!5393 call!39671) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)))))

(assert (=> d!110437 (= (contains!4375 call!39671 (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)) lt!404053)))

(declare-fun b!893977 () Bool)

(declare-fun lt!404050 () Unit!30409)

(assert (=> b!893977 (= e!499338 lt!404050)))

(assert (=> b!893977 (= lt!404050 (lemmaContainsKeyImpliesGetValueByKeyDefined!319 (toList!5393 call!39671) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)))))

(assert (=> b!893977 (isDefined!329 (getValueByKey!451 (toList!5393 call!39671) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)))))

(declare-fun b!893978 () Bool)

(declare-fun Unit!30415 () Unit!30409)

(assert (=> b!893978 (= e!499338 Unit!30415)))

(declare-fun b!893979 () Bool)

(assert (=> b!893979 (= e!499337 (isDefined!329 (getValueByKey!451 (toList!5393 call!39671) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785))))))

(assert (= (and d!110437 c!94234) b!893977))

(assert (= (and d!110437 (not c!94234)) b!893978))

(assert (= (and d!110437 (not res!605242)) b!893979))

(declare-fun m!832095 () Bool)

(assert (=> d!110437 m!832095))

(declare-fun m!832097 () Bool)

(assert (=> b!893977 m!832097))

(declare-fun m!832099 () Bool)

(assert (=> b!893977 m!832099))

(assert (=> b!893977 m!832099))

(declare-fun m!832101 () Bool)

(assert (=> b!893977 m!832101))

(assert (=> b!893979 m!832099))

(assert (=> b!893979 m!832099))

(assert (=> b!893979 m!832101))

(assert (=> bm!39668 d!110437))

(declare-fun b!893989 () Bool)

(declare-fun res!605251 () Bool)

(declare-fun e!499341 () Bool)

(assert (=> b!893989 (=> (not res!605251) (not e!499341))))

(declare-fun size!25624 (LongMapFixedSize!4242) (_ BitVec 32))

(assert (=> b!893989 (= res!605251 (bvsge (size!25624 thiss!1181) (_size!2176 thiss!1181)))))

(declare-fun b!893990 () Bool)

(declare-fun res!605253 () Bool)

(assert (=> b!893990 (=> (not res!605253) (not e!499341))))

(assert (=> b!893990 (= res!605253 (= (size!25624 thiss!1181) (bvadd (_size!2176 thiss!1181) (bvsdiv (bvadd (extraKeys!5023 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!893988 () Bool)

(declare-fun res!605252 () Bool)

(assert (=> b!893988 (=> (not res!605252) (not e!499341))))

(assert (=> b!893988 (= res!605252 (and (= (size!25621 (_values!5314 thiss!1181)) (bvadd (mask!25864 thiss!1181) #b00000000000000000000000000000001)) (= (size!25620 (_keys!10015 thiss!1181)) (size!25621 (_values!5314 thiss!1181))) (bvsge (_size!2176 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2176 thiss!1181) (bvadd (mask!25864 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun d!110439 () Bool)

(declare-fun res!605254 () Bool)

(assert (=> d!110439 (=> (not res!605254) (not e!499341))))

(assert (=> d!110439 (= res!605254 (validMask!0 (mask!25864 thiss!1181)))))

(assert (=> d!110439 (= (simpleValid!297 thiss!1181) e!499341)))

(declare-fun b!893991 () Bool)

(assert (=> b!893991 (= e!499341 (and (bvsge (extraKeys!5023 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5023 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2176 thiss!1181) #b00000000000000000000000000000000)))))

(assert (= (and d!110439 res!605254) b!893988))

(assert (= (and b!893988 res!605252) b!893989))

(assert (= (and b!893989 res!605251) b!893990))

(assert (= (and b!893990 res!605253) b!893991))

(declare-fun m!832103 () Bool)

(assert (=> b!893989 m!832103))

(assert (=> b!893990 m!832103))

(assert (=> d!110439 m!831981))

(assert (=> d!110405 d!110439))

(declare-fun b!893992 () Bool)

(declare-fun e!499342 () Bool)

(assert (=> b!893992 (= e!499342 tp_is_empty!18189)))

(declare-fun mapNonEmpty!28856 () Bool)

(declare-fun mapRes!28856 () Bool)

(declare-fun tp!55574 () Bool)

(assert (=> mapNonEmpty!28856 (= mapRes!28856 (and tp!55574 e!499342))))

(declare-fun mapKey!28856 () (_ BitVec 32))

(declare-fun mapValue!28856 () ValueCell!8613)

(declare-fun mapRest!28856 () (Array (_ BitVec 32) ValueCell!8613))

(assert (=> mapNonEmpty!28856 (= mapRest!28855 (store mapRest!28856 mapKey!28856 mapValue!28856))))

(declare-fun b!893993 () Bool)

(declare-fun e!499343 () Bool)

(assert (=> b!893993 (= e!499343 tp_is_empty!18189)))

(declare-fun condMapEmpty!28856 () Bool)

(declare-fun mapDefault!28856 () ValueCell!8613)

(assert (=> mapNonEmpty!28855 (= condMapEmpty!28856 (= mapRest!28855 ((as const (Array (_ BitVec 32) ValueCell!8613)) mapDefault!28856)))))

(assert (=> mapNonEmpty!28855 (= tp!55573 (and e!499343 mapRes!28856))))

(declare-fun mapIsEmpty!28856 () Bool)

(assert (=> mapIsEmpty!28856 mapRes!28856))

(assert (= (and mapNonEmpty!28855 condMapEmpty!28856) mapIsEmpty!28856))

(assert (= (and mapNonEmpty!28855 (not condMapEmpty!28856)) mapNonEmpty!28856))

(assert (= (and mapNonEmpty!28856 ((_ is ValueCellFull!8613) mapValue!28856)) b!893992))

(assert (= (and mapNonEmpty!28855 ((_ is ValueCellFull!8613) mapDefault!28856)) b!893993))

(declare-fun m!832105 () Bool)

(assert (=> mapNonEmpty!28856 m!832105))

(declare-fun b_lambda!12971 () Bool)

(assert (= b_lambda!12969 (or (and b!893730 b_free!15861) b_lambda!12971)))

(check-sat (not b!893968) (not b!893870) (not bm!39698) (not bm!39695) (not b!893953) (not b!893872) b_and!26163 (not b!893929) (not d!110417) (not d!110425) (not b!893874) (not b!893954) (not bm!39692) (not b!893889) (not b!893989) (not b!893887) (not d!110409) (not bm!39687) (not b!893977) (not d!110437) (not b!893956) (not b!893884) (not d!110421) tp_is_empty!18189 (not bm!39699) (not bm!39688) (not d!110439) (not bm!39683) (not b!893990) (not b_lambda!12967) (not b!893979) (not b!893827) (not d!110413) (not b!893941) (not b!893883) (not b!893939) (not d!110411) (not d!110419) (not mapNonEmpty!28856) (not b!893881) (not b!893824) (not b!893899) (not d!110415) (not b!893897) (not b!893972) (not b_lambda!12971) (not b!893975) (not b!893915) (not b_next!15861) (not bm!39689) (not b!893922) (not b!893970))
(check-sat b_and!26163 (not b_next!15861))
(get-model)

(declare-fun d!110441 () Bool)

(assert (=> d!110441 (isDefined!329 (getValueByKey!451 (toList!5393 call!39671) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)))))

(declare-fun lt!404056 () Unit!30409)

(declare-fun choose!1479 (List!17881 (_ BitVec 64)) Unit!30409)

(assert (=> d!110441 (= lt!404056 (choose!1479 (toList!5393 call!39671) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)))))

(declare-fun e!499346 () Bool)

(assert (=> d!110441 e!499346))

(declare-fun res!605257 () Bool)

(assert (=> d!110441 (=> (not res!605257) (not e!499346))))

(declare-fun isStrictlySorted!492 (List!17881) Bool)

(assert (=> d!110441 (= res!605257 (isStrictlySorted!492 (toList!5393 call!39671)))))

(assert (=> d!110441 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!319 (toList!5393 call!39671) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)) lt!404056)))

(declare-fun b!893996 () Bool)

(assert (=> b!893996 (= e!499346 (containsKey!424 (toList!5393 call!39671) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)))))

(assert (= (and d!110441 res!605257) b!893996))

(assert (=> d!110441 m!832099))

(assert (=> d!110441 m!832099))

(assert (=> d!110441 m!832101))

(declare-fun m!832107 () Bool)

(assert (=> d!110441 m!832107))

(declare-fun m!832109 () Bool)

(assert (=> d!110441 m!832109))

(assert (=> b!893996 m!832095))

(assert (=> b!893977 d!110441))

(declare-fun d!110443 () Bool)

(declare-fun isEmpty!687 (Option!457) Bool)

(assert (=> d!110443 (= (isDefined!329 (getValueByKey!451 (toList!5393 call!39671) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785))) (not (isEmpty!687 (getValueByKey!451 (toList!5393 call!39671) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)))))))

(declare-fun bs!25094 () Bool)

(assert (= bs!25094 d!110443))

(assert (=> bs!25094 m!832099))

(declare-fun m!832111 () Bool)

(assert (=> bs!25094 m!832111))

(assert (=> b!893977 d!110443))

(declare-fun b!893997 () Bool)

(declare-fun e!499347 () Option!457)

(assert (=> b!893997 (= e!499347 (Some!456 (_2!6032 (h!19009 (toList!5393 call!39671)))))))

(declare-fun b!893998 () Bool)

(declare-fun e!499348 () Option!457)

(assert (=> b!893998 (= e!499347 e!499348)))

(declare-fun c!94236 () Bool)

(assert (=> b!893998 (= c!94236 (and ((_ is Cons!17877) (toList!5393 call!39671)) (not (= (_1!6032 (h!19009 (toList!5393 call!39671))) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)))))))

(declare-fun b!893999 () Bool)

(assert (=> b!893999 (= e!499348 (getValueByKey!451 (t!25218 (toList!5393 call!39671)) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)))))

(declare-fun c!94235 () Bool)

(declare-fun d!110445 () Bool)

(assert (=> d!110445 (= c!94235 (and ((_ is Cons!17877) (toList!5393 call!39671)) (= (_1!6032 (h!19009 (toList!5393 call!39671))) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785))))))

(assert (=> d!110445 (= (getValueByKey!451 (toList!5393 call!39671) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)) e!499347)))

(declare-fun b!894000 () Bool)

(assert (=> b!894000 (= e!499348 None!455)))

(assert (= (and d!110445 c!94235) b!893997))

(assert (= (and d!110445 (not c!94235)) b!893998))

(assert (= (and b!893998 c!94236) b!893999))

(assert (= (and b!893998 (not c!94236)) b!894000))

(declare-fun m!832113 () Bool)

(assert (=> b!893999 m!832113))

(assert (=> b!893977 d!110445))

(declare-fun d!110447 () Bool)

(assert (=> d!110447 (contains!4375 (getCurrentListMap!2638 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181)) (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)))))

(assert (=> d!110447 true))

(declare-fun _$16!175 () Unit!30409)

(assert (=> d!110447 (= (choose!1477 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) (index!37803 lt!403920) (defaultEntry!5327 thiss!1181)) _$16!175)))

(declare-fun bs!25095 () Bool)

(assert (= bs!25095 d!110447))

(assert (=> bs!25095 m!831959))

(assert (=> bs!25095 m!831953))

(assert (=> bs!25095 m!831959))

(assert (=> bs!25095 m!831953))

(assert (=> bs!25095 m!831983))

(assert (=> d!110411 d!110447))

(declare-fun d!110449 () Bool)

(assert (=> d!110449 (= (validMask!0 (mask!25864 thiss!1181)) (and (or (= (mask!25864 thiss!1181) #b00000000000000000000000000000111) (= (mask!25864 thiss!1181) #b00000000000000000000000000001111) (= (mask!25864 thiss!1181) #b00000000000000000000000000011111) (= (mask!25864 thiss!1181) #b00000000000000000000000000111111) (= (mask!25864 thiss!1181) #b00000000000000000000000001111111) (= (mask!25864 thiss!1181) #b00000000000000000000000011111111) (= (mask!25864 thiss!1181) #b00000000000000000000000111111111) (= (mask!25864 thiss!1181) #b00000000000000000000001111111111) (= (mask!25864 thiss!1181) #b00000000000000000000011111111111) (= (mask!25864 thiss!1181) #b00000000000000000000111111111111) (= (mask!25864 thiss!1181) #b00000000000000000001111111111111) (= (mask!25864 thiss!1181) #b00000000000000000011111111111111) (= (mask!25864 thiss!1181) #b00000000000000000111111111111111) (= (mask!25864 thiss!1181) #b00000000000000001111111111111111) (= (mask!25864 thiss!1181) #b00000000000000011111111111111111) (= (mask!25864 thiss!1181) #b00000000000000111111111111111111) (= (mask!25864 thiss!1181) #b00000000000001111111111111111111) (= (mask!25864 thiss!1181) #b00000000000011111111111111111111) (= (mask!25864 thiss!1181) #b00000000000111111111111111111111) (= (mask!25864 thiss!1181) #b00000000001111111111111111111111) (= (mask!25864 thiss!1181) #b00000000011111111111111111111111) (= (mask!25864 thiss!1181) #b00000000111111111111111111111111) (= (mask!25864 thiss!1181) #b00000001111111111111111111111111) (= (mask!25864 thiss!1181) #b00000011111111111111111111111111) (= (mask!25864 thiss!1181) #b00000111111111111111111111111111) (= (mask!25864 thiss!1181) #b00001111111111111111111111111111) (= (mask!25864 thiss!1181) #b00011111111111111111111111111111) (= (mask!25864 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25864 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> d!110411 d!110449))

(declare-fun d!110451 () Bool)

(declare-fun res!605262 () Bool)

(declare-fun e!499353 () Bool)

(assert (=> d!110451 (=> res!605262 e!499353)))

(assert (=> d!110451 (= res!605262 (and ((_ is Cons!17877) (toList!5393 (map!12220 thiss!1181))) (= (_1!6032 (h!19009 (toList!5393 (map!12220 thiss!1181)))) key!785)))))

(assert (=> d!110451 (= (containsKey!424 (toList!5393 (map!12220 thiss!1181)) key!785) e!499353)))

(declare-fun b!894005 () Bool)

(declare-fun e!499354 () Bool)

(assert (=> b!894005 (= e!499353 e!499354)))

(declare-fun res!605263 () Bool)

(assert (=> b!894005 (=> (not res!605263) (not e!499354))))

(assert (=> b!894005 (= res!605263 (and (or (not ((_ is Cons!17877) (toList!5393 (map!12220 thiss!1181)))) (bvsle (_1!6032 (h!19009 (toList!5393 (map!12220 thiss!1181)))) key!785)) ((_ is Cons!17877) (toList!5393 (map!12220 thiss!1181))) (bvslt (_1!6032 (h!19009 (toList!5393 (map!12220 thiss!1181)))) key!785)))))

(declare-fun b!894006 () Bool)

(assert (=> b!894006 (= e!499354 (containsKey!424 (t!25218 (toList!5393 (map!12220 thiss!1181))) key!785))))

(assert (= (and d!110451 (not res!605262)) b!894005))

(assert (= (and b!894005 res!605263) b!894006))

(declare-fun m!832115 () Bool)

(assert (=> b!894006 m!832115))

(assert (=> d!110415 d!110451))

(declare-fun d!110453 () Bool)

(declare-fun e!499355 () Bool)

(assert (=> d!110453 e!499355))

(declare-fun res!605264 () Bool)

(assert (=> d!110453 (=> res!605264 e!499355)))

(declare-fun lt!404060 () Bool)

(assert (=> d!110453 (= res!605264 (not lt!404060))))

(declare-fun lt!404059 () Bool)

(assert (=> d!110453 (= lt!404060 lt!404059)))

(declare-fun lt!404058 () Unit!30409)

(declare-fun e!499356 () Unit!30409)

(assert (=> d!110453 (= lt!404058 e!499356)))

(declare-fun c!94237 () Bool)

(assert (=> d!110453 (= c!94237 lt!404059)))

(assert (=> d!110453 (= lt!404059 (containsKey!424 (toList!5393 (getCurrentListMap!2638 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181))) (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920))))))

(assert (=> d!110453 (= (contains!4375 (getCurrentListMap!2638 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181)) (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920))) lt!404060)))

(declare-fun b!894007 () Bool)

(declare-fun lt!404057 () Unit!30409)

(assert (=> b!894007 (= e!499356 lt!404057)))

(assert (=> b!894007 (= lt!404057 (lemmaContainsKeyImpliesGetValueByKeyDefined!319 (toList!5393 (getCurrentListMap!2638 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181))) (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920))))))

(assert (=> b!894007 (isDefined!329 (getValueByKey!451 (toList!5393 (getCurrentListMap!2638 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181))) (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920))))))

(declare-fun b!894008 () Bool)

(declare-fun Unit!30416 () Unit!30409)

(assert (=> b!894008 (= e!499356 Unit!30416)))

(declare-fun b!894009 () Bool)

(assert (=> b!894009 (= e!499355 (isDefined!329 (getValueByKey!451 (toList!5393 (getCurrentListMap!2638 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181))) (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)))))))

(assert (= (and d!110453 c!94237) b!894007))

(assert (= (and d!110453 (not c!94237)) b!894008))

(assert (= (and d!110453 (not res!605264)) b!894009))

(assert (=> d!110453 m!831953))

(declare-fun m!832117 () Bool)

(assert (=> d!110453 m!832117))

(assert (=> b!894007 m!831953))

(declare-fun m!832119 () Bool)

(assert (=> b!894007 m!832119))

(assert (=> b!894007 m!831953))

(declare-fun m!832121 () Bool)

(assert (=> b!894007 m!832121))

(assert (=> b!894007 m!832121))

(declare-fun m!832123 () Bool)

(assert (=> b!894007 m!832123))

(assert (=> b!894009 m!831953))

(assert (=> b!894009 m!832121))

(assert (=> b!894009 m!832121))

(assert (=> b!894009 m!832123))

(assert (=> b!893827 d!110453))

(assert (=> b!893827 d!110413))

(declare-fun d!110455 () Bool)

(assert (=> d!110455 (= (size!25624 thiss!1181) (bvadd (_size!2176 thiss!1181) (bvsdiv (bvadd (extraKeys!5023 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!893989 d!110455))

(assert (=> b!893990 d!110455))

(declare-fun d!110457 () Bool)

(declare-fun e!499359 () Bool)

(assert (=> d!110457 e!499359))

(declare-fun res!605269 () Bool)

(assert (=> d!110457 (=> (not res!605269) (not e!499359))))

(declare-fun lt!404070 () ListLongMap!10755)

(assert (=> d!110457 (= res!605269 (contains!4375 lt!404070 (_1!6032 (ite (or c!94195 c!94196) (tuple2!12045 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5127 thiss!1181)) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181))))))))

(declare-fun lt!404071 () List!17881)

(assert (=> d!110457 (= lt!404070 (ListLongMap!10756 lt!404071))))

(declare-fun lt!404072 () Unit!30409)

(declare-fun lt!404069 () Unit!30409)

(assert (=> d!110457 (= lt!404072 lt!404069)))

(assert (=> d!110457 (= (getValueByKey!451 lt!404071 (_1!6032 (ite (or c!94195 c!94196) (tuple2!12045 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5127 thiss!1181)) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181))))) (Some!456 (_2!6032 (ite (or c!94195 c!94196) (tuple2!12045 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5127 thiss!1181)) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!248 (List!17881 (_ BitVec 64) V!29217) Unit!30409)

(assert (=> d!110457 (= lt!404069 (lemmaContainsTupThenGetReturnValue!248 lt!404071 (_1!6032 (ite (or c!94195 c!94196) (tuple2!12045 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5127 thiss!1181)) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181)))) (_2!6032 (ite (or c!94195 c!94196) (tuple2!12045 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5127 thiss!1181)) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181))))))))

(declare-fun insertStrictlySorted!304 (List!17881 (_ BitVec 64) V!29217) List!17881)

(assert (=> d!110457 (= lt!404071 (insertStrictlySorted!304 (toList!5393 (ite c!94195 call!39689 (ite c!94196 call!39690 call!39691))) (_1!6032 (ite (or c!94195 c!94196) (tuple2!12045 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5127 thiss!1181)) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181)))) (_2!6032 (ite (or c!94195 c!94196) (tuple2!12045 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5127 thiss!1181)) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181))))))))

(assert (=> d!110457 (= (+!2544 (ite c!94195 call!39689 (ite c!94196 call!39690 call!39691)) (ite (or c!94195 c!94196) (tuple2!12045 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5127 thiss!1181)) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181)))) lt!404070)))

(declare-fun b!894014 () Bool)

(declare-fun res!605270 () Bool)

(assert (=> b!894014 (=> (not res!605270) (not e!499359))))

(assert (=> b!894014 (= res!605270 (= (getValueByKey!451 (toList!5393 lt!404070) (_1!6032 (ite (or c!94195 c!94196) (tuple2!12045 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5127 thiss!1181)) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181))))) (Some!456 (_2!6032 (ite (or c!94195 c!94196) (tuple2!12045 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5127 thiss!1181)) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181)))))))))

(declare-fun b!894015 () Bool)

(declare-fun contains!4377 (List!17881 tuple2!12044) Bool)

(assert (=> b!894015 (= e!499359 (contains!4377 (toList!5393 lt!404070) (ite (or c!94195 c!94196) (tuple2!12045 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5127 thiss!1181)) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181)))))))

(assert (= (and d!110457 res!605269) b!894014))

(assert (= (and b!894014 res!605270) b!894015))

(declare-fun m!832125 () Bool)

(assert (=> d!110457 m!832125))

(declare-fun m!832127 () Bool)

(assert (=> d!110457 m!832127))

(declare-fun m!832129 () Bool)

(assert (=> d!110457 m!832129))

(declare-fun m!832131 () Bool)

(assert (=> d!110457 m!832131))

(declare-fun m!832133 () Bool)

(assert (=> b!894014 m!832133))

(declare-fun m!832135 () Bool)

(assert (=> b!894015 m!832135))

(assert (=> bm!39689 d!110457))

(declare-fun d!110459 () Bool)

(assert (=> d!110459 (= (apply!408 lt!403987 #b0000000000000000000000000000000000000000000000000000000000000000) (get!13267 (getValueByKey!451 (toList!5393 lt!403987) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25096 () Bool)

(assert (= bs!25096 d!110459))

(declare-fun m!832137 () Bool)

(assert (=> bs!25096 m!832137))

(assert (=> bs!25096 m!832137))

(declare-fun m!832139 () Bool)

(assert (=> bs!25096 m!832139))

(assert (=> b!893874 d!110459))

(declare-fun d!110461 () Bool)

(assert (=> d!110461 (= (isDefined!329 (getValueByKey!451 (toList!5393 (map!12220 thiss!1181)) key!785)) (not (isEmpty!687 (getValueByKey!451 (toList!5393 (map!12220 thiss!1181)) key!785))))))

(declare-fun bs!25097 () Bool)

(assert (= bs!25097 d!110461))

(assert (=> bs!25097 m!831907))

(declare-fun m!832141 () Bool)

(assert (=> bs!25097 m!832141))

(assert (=> b!893899 d!110461))

(assert (=> b!893899 d!110397))

(declare-fun d!110463 () Bool)

(assert (=> d!110463 (= (apply!408 lt!403987 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)) (get!13267 (getValueByKey!451 (toList!5393 lt!403987) (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000))))))

(declare-fun bs!25098 () Bool)

(assert (= bs!25098 d!110463))

(assert (=> bs!25098 m!831973))

(declare-fun m!832143 () Bool)

(assert (=> bs!25098 m!832143))

(assert (=> bs!25098 m!832143))

(declare-fun m!832145 () Bool)

(assert (=> bs!25098 m!832145))

(assert (=> b!893872 d!110463))

(declare-fun d!110465 () Bool)

(declare-fun c!94240 () Bool)

(assert (=> d!110465 (= c!94240 ((_ is ValueCellFull!8613) (select (arr!25175 (_values!5314 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!499362 () V!29217)

(assert (=> d!110465 (= (get!13268 (select (arr!25175 (_values!5314 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1300 (defaultEntry!5327 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)) e!499362)))

(declare-fun b!894020 () Bool)

(declare-fun get!13269 (ValueCell!8613 V!29217) V!29217)

(assert (=> b!894020 (= e!499362 (get!13269 (select (arr!25175 (_values!5314 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1300 (defaultEntry!5327 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!894021 () Bool)

(declare-fun get!13270 (ValueCell!8613 V!29217) V!29217)

(assert (=> b!894021 (= e!499362 (get!13270 (select (arr!25175 (_values!5314 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1300 (defaultEntry!5327 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!110465 c!94240) b!894020))

(assert (= (and d!110465 (not c!94240)) b!894021))

(assert (=> b!894020 m!831997))

(assert (=> b!894020 m!831999))

(declare-fun m!832147 () Bool)

(assert (=> b!894020 m!832147))

(assert (=> b!894021 m!831997))

(assert (=> b!894021 m!831999))

(declare-fun m!832149 () Bool)

(assert (=> b!894021 m!832149))

(assert (=> b!893872 d!110465))

(declare-fun d!110467 () Bool)

(assert (=> d!110467 (= (apply!408 lt!403987 #b1000000000000000000000000000000000000000000000000000000000000000) (get!13267 (getValueByKey!451 (toList!5393 lt!403987) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25099 () Bool)

(assert (= bs!25099 d!110467))

(declare-fun m!832151 () Bool)

(assert (=> bs!25099 m!832151))

(assert (=> bs!25099 m!832151))

(declare-fun m!832153 () Bool)

(assert (=> bs!25099 m!832153))

(assert (=> b!893889 d!110467))

(declare-fun d!110469 () Bool)

(declare-fun e!499363 () Bool)

(assert (=> d!110469 e!499363))

(declare-fun res!605271 () Bool)

(assert (=> d!110469 (=> res!605271 e!499363)))

(declare-fun lt!404076 () Bool)

(assert (=> d!110469 (= res!605271 (not lt!404076))))

(declare-fun lt!404075 () Bool)

(assert (=> d!110469 (= lt!404076 lt!404075)))

(declare-fun lt!404074 () Unit!30409)

(declare-fun e!499364 () Unit!30409)

(assert (=> d!110469 (= lt!404074 e!499364)))

(declare-fun c!94241 () Bool)

(assert (=> d!110469 (= c!94241 lt!404075)))

(assert (=> d!110469 (= lt!404075 (containsKey!424 (toList!5393 lt!403987) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!110469 (= (contains!4375 lt!403987 #b0000000000000000000000000000000000000000000000000000000000000000) lt!404076)))

(declare-fun b!894022 () Bool)

(declare-fun lt!404073 () Unit!30409)

(assert (=> b!894022 (= e!499364 lt!404073)))

(assert (=> b!894022 (= lt!404073 (lemmaContainsKeyImpliesGetValueByKeyDefined!319 (toList!5393 lt!403987) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!894022 (isDefined!329 (getValueByKey!451 (toList!5393 lt!403987) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!894023 () Bool)

(declare-fun Unit!30417 () Unit!30409)

(assert (=> b!894023 (= e!499364 Unit!30417)))

(declare-fun b!894024 () Bool)

(assert (=> b!894024 (= e!499363 (isDefined!329 (getValueByKey!451 (toList!5393 lt!403987) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!110469 c!94241) b!894022))

(assert (= (and d!110469 (not c!94241)) b!894023))

(assert (= (and d!110469 (not res!605271)) b!894024))

(declare-fun m!832155 () Bool)

(assert (=> d!110469 m!832155))

(declare-fun m!832157 () Bool)

(assert (=> b!894022 m!832157))

(assert (=> b!894022 m!832137))

(assert (=> b!894022 m!832137))

(declare-fun m!832159 () Bool)

(assert (=> b!894022 m!832159))

(assert (=> b!894024 m!832137))

(assert (=> b!894024 m!832137))

(assert (=> b!894024 m!832159))

(assert (=> bm!39688 d!110469))

(declare-fun d!110471 () Bool)

(assert (=> d!110471 (= (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)) (and (not (= (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!893968 d!110471))

(declare-fun d!110473 () Bool)

(assert (=> d!110473 (isDefined!329 (getValueByKey!451 (toList!5393 (map!12220 thiss!1181)) key!785))))

(declare-fun lt!404077 () Unit!30409)

(assert (=> d!110473 (= lt!404077 (choose!1479 (toList!5393 (map!12220 thiss!1181)) key!785))))

(declare-fun e!499365 () Bool)

(assert (=> d!110473 e!499365))

(declare-fun res!605272 () Bool)

(assert (=> d!110473 (=> (not res!605272) (not e!499365))))

(assert (=> d!110473 (= res!605272 (isStrictlySorted!492 (toList!5393 (map!12220 thiss!1181))))))

(assert (=> d!110473 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!319 (toList!5393 (map!12220 thiss!1181)) key!785) lt!404077)))

(declare-fun b!894025 () Bool)

(assert (=> b!894025 (= e!499365 (containsKey!424 (toList!5393 (map!12220 thiss!1181)) key!785))))

(assert (= (and d!110473 res!605272) b!894025))

(assert (=> d!110473 m!831907))

(assert (=> d!110473 m!831907))

(assert (=> d!110473 m!832045))

(declare-fun m!832161 () Bool)

(assert (=> d!110473 m!832161))

(declare-fun m!832163 () Bool)

(assert (=> d!110473 m!832163))

(assert (=> b!894025 m!832041))

(assert (=> b!893897 d!110473))

(assert (=> b!893897 d!110461))

(assert (=> b!893897 d!110397))

(assert (=> b!893870 d!110471))

(assert (=> d!110439 d!110449))

(declare-fun d!110475 () Bool)

(declare-fun lt!404083 () SeekEntryResult!8858)

(assert (=> d!110475 (and (or ((_ is Undefined!8858) lt!404083) (not ((_ is Found!8858) lt!404083)) (and (bvsge (index!37803 lt!404083) #b00000000000000000000000000000000) (bvslt (index!37803 lt!404083) (size!25620 (_keys!10015 thiss!1181))))) (or ((_ is Undefined!8858) lt!404083) ((_ is Found!8858) lt!404083) (not ((_ is MissingVacant!8858) lt!404083)) (not (= (index!37805 lt!404083) (index!37804 lt!404018))) (and (bvsge (index!37805 lt!404083) #b00000000000000000000000000000000) (bvslt (index!37805 lt!404083) (size!25620 (_keys!10015 thiss!1181))))) (or ((_ is Undefined!8858) lt!404083) (ite ((_ is Found!8858) lt!404083) (= (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!404083)) key!785) (and ((_ is MissingVacant!8858) lt!404083) (= (index!37805 lt!404083) (index!37804 lt!404018)) (= (select (arr!25174 (_keys!10015 thiss!1181)) (index!37805 lt!404083)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!499373 () SeekEntryResult!8858)

(assert (=> d!110475 (= lt!404083 e!499373)))

(declare-fun c!94250 () Bool)

(assert (=> d!110475 (= c!94250 (bvsge (x!75987 lt!404018) #b01111111111111111111111111111110))))

(declare-fun lt!404082 () (_ BitVec 64))

(assert (=> d!110475 (= lt!404082 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37804 lt!404018)))))

(assert (=> d!110475 (validMask!0 (mask!25864 thiss!1181))))

(assert (=> d!110475 (= (seekKeyOrZeroReturnVacant!0 (x!75987 lt!404018) (index!37804 lt!404018) (index!37804 lt!404018) key!785 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) lt!404083)))

(declare-fun b!894038 () Bool)

(assert (=> b!894038 (= e!499373 Undefined!8858)))

(declare-fun b!894039 () Bool)

(declare-fun e!499372 () SeekEntryResult!8858)

(assert (=> b!894039 (= e!499373 e!499372)))

(declare-fun c!94249 () Bool)

(assert (=> b!894039 (= c!94249 (= lt!404082 key!785))))

(declare-fun b!894040 () Bool)

(declare-fun e!499374 () SeekEntryResult!8858)

(assert (=> b!894040 (= e!499374 (MissingVacant!8858 (index!37804 lt!404018)))))

(declare-fun b!894041 () Bool)

(declare-fun c!94248 () Bool)

(assert (=> b!894041 (= c!94248 (= lt!404082 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!894041 (= e!499372 e!499374)))

(declare-fun b!894042 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!894042 (= e!499374 (seekKeyOrZeroReturnVacant!0 (bvadd (x!75987 lt!404018) #b00000000000000000000000000000001) (nextIndex!0 (index!37804 lt!404018) (x!75987 lt!404018) (mask!25864 thiss!1181)) (index!37804 lt!404018) key!785 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun b!894043 () Bool)

(assert (=> b!894043 (= e!499372 (Found!8858 (index!37804 lt!404018)))))

(assert (= (and d!110475 c!94250) b!894038))

(assert (= (and d!110475 (not c!94250)) b!894039))

(assert (= (and b!894039 c!94249) b!894043))

(assert (= (and b!894039 (not c!94249)) b!894041))

(assert (= (and b!894041 c!94248) b!894040))

(assert (= (and b!894041 (not c!94248)) b!894042))

(declare-fun m!832165 () Bool)

(assert (=> d!110475 m!832165))

(declare-fun m!832167 () Bool)

(assert (=> d!110475 m!832167))

(assert (=> d!110475 m!832055))

(assert (=> d!110475 m!831981))

(declare-fun m!832169 () Bool)

(assert (=> b!894042 m!832169))

(assert (=> b!894042 m!832169))

(declare-fun m!832171 () Bool)

(assert (=> b!894042 m!832171))

(assert (=> b!893915 d!110475))

(declare-fun d!110477 () Bool)

(declare-fun e!499375 () Bool)

(assert (=> d!110477 e!499375))

(declare-fun res!605273 () Bool)

(assert (=> d!110477 (=> res!605273 e!499375)))

(declare-fun lt!404087 () Bool)

(assert (=> d!110477 (= res!605273 (not lt!404087))))

(declare-fun lt!404086 () Bool)

(assert (=> d!110477 (= lt!404087 lt!404086)))

(declare-fun lt!404085 () Unit!30409)

(declare-fun e!499376 () Unit!30409)

(assert (=> d!110477 (= lt!404085 e!499376)))

(declare-fun c!94251 () Bool)

(assert (=> d!110477 (= c!94251 lt!404086)))

(assert (=> d!110477 (= lt!404086 (containsKey!424 (toList!5393 lt!403987) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!110477 (= (contains!4375 lt!403987 #b1000000000000000000000000000000000000000000000000000000000000000) lt!404087)))

(declare-fun b!894044 () Bool)

(declare-fun lt!404084 () Unit!30409)

(assert (=> b!894044 (= e!499376 lt!404084)))

(assert (=> b!894044 (= lt!404084 (lemmaContainsKeyImpliesGetValueByKeyDefined!319 (toList!5393 lt!403987) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!894044 (isDefined!329 (getValueByKey!451 (toList!5393 lt!403987) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!894045 () Bool)

(declare-fun Unit!30418 () Unit!30409)

(assert (=> b!894045 (= e!499376 Unit!30418)))

(declare-fun b!894046 () Bool)

(assert (=> b!894046 (= e!499375 (isDefined!329 (getValueByKey!451 (toList!5393 lt!403987) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!110477 c!94251) b!894044))

(assert (= (and d!110477 (not c!94251)) b!894045))

(assert (= (and d!110477 (not res!605273)) b!894046))

(declare-fun m!832173 () Bool)

(assert (=> d!110477 m!832173))

(declare-fun m!832175 () Bool)

(assert (=> b!894044 m!832175))

(assert (=> b!894044 m!832151))

(assert (=> b!894044 m!832151))

(declare-fun m!832177 () Bool)

(assert (=> b!894044 m!832177))

(assert (=> b!894046 m!832151))

(assert (=> b!894046 m!832151))

(assert (=> b!894046 m!832177))

(assert (=> bm!39683 d!110477))

(declare-fun d!110479 () Bool)

(declare-fun res!605274 () Bool)

(declare-fun e!499377 () Bool)

(assert (=> d!110479 (=> res!605274 e!499377)))

(assert (=> d!110479 (= res!605274 (and ((_ is Cons!17877) (toList!5393 call!39671)) (= (_1!6032 (h!19009 (toList!5393 call!39671))) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785))))))

(assert (=> d!110479 (= (containsKey!424 (toList!5393 call!39671) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)) e!499377)))

(declare-fun b!894047 () Bool)

(declare-fun e!499378 () Bool)

(assert (=> b!894047 (= e!499377 e!499378)))

(declare-fun res!605275 () Bool)

(assert (=> b!894047 (=> (not res!605275) (not e!499378))))

(assert (=> b!894047 (= res!605275 (and (or (not ((_ is Cons!17877) (toList!5393 call!39671))) (bvsle (_1!6032 (h!19009 (toList!5393 call!39671))) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785))) ((_ is Cons!17877) (toList!5393 call!39671)) (bvslt (_1!6032 (h!19009 (toList!5393 call!39671))) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785))))))

(declare-fun b!894048 () Bool)

(assert (=> b!894048 (= e!499378 (containsKey!424 (t!25218 (toList!5393 call!39671)) (ite c!94173 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!403920)) key!785)))))

(assert (= (and d!110479 (not res!605274)) b!894047))

(assert (= (and b!894047 res!605275) b!894048))

(declare-fun m!832179 () Bool)

(assert (=> b!894048 m!832179))

(assert (=> d!110437 d!110479))

(assert (=> d!110421 d!110417))

(declare-fun d!110481 () Bool)

(declare-fun lt!404090 () SeekEntryResult!8858)

(assert (=> d!110481 (and ((_ is Found!8858) lt!404090) (= (index!37803 lt!404090) lt!403916))))

(assert (=> d!110481 (= lt!404090 (seekEntry!0 key!785 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(assert (=> d!110481 true))

(declare-fun _$57!22 () Unit!30409)

(assert (=> d!110481 (= (choose!0 key!785 lt!403916 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) _$57!22)))

(declare-fun bs!25100 () Bool)

(assert (= bs!25100 d!110481))

(assert (=> bs!25100 m!831935))

(assert (=> d!110421 d!110481))

(assert (=> d!110421 d!110449))

(assert (=> b!893956 d!110471))

(declare-fun d!110483 () Bool)

(assert (=> d!110483 (arrayContainsKey!0 (_keys!10015 thiss!1181) lt!404042 #b00000000000000000000000000000000)))

(declare-fun lt!404091 () Unit!30409)

(assert (=> d!110483 (= lt!404091 (choose!13 (_keys!10015 thiss!1181) lt!404042 lt!403916))))

(assert (=> d!110483 (bvsge lt!403916 #b00000000000000000000000000000000)))

(assert (=> d!110483 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10015 thiss!1181) lt!404042 lt!403916) lt!404091)))

(declare-fun bs!25101 () Bool)

(assert (= bs!25101 d!110483))

(assert (=> bs!25101 m!832075))

(declare-fun m!832181 () Bool)

(assert (=> bs!25101 m!832181))

(assert (=> b!893941 d!110483))

(declare-fun d!110485 () Bool)

(declare-fun res!605276 () Bool)

(declare-fun e!499379 () Bool)

(assert (=> d!110485 (=> res!605276 e!499379)))

(assert (=> d!110485 (= res!605276 (= (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) lt!404042))))

(assert (=> d!110485 (= (arrayContainsKey!0 (_keys!10015 thiss!1181) lt!404042 #b00000000000000000000000000000000) e!499379)))

(declare-fun b!894049 () Bool)

(declare-fun e!499380 () Bool)

(assert (=> b!894049 (= e!499379 e!499380)))

(declare-fun res!605277 () Bool)

(assert (=> b!894049 (=> (not res!605277) (not e!499380))))

(assert (=> b!894049 (= res!605277 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun b!894050 () Bool)

(assert (=> b!894050 (= e!499380 (arrayContainsKey!0 (_keys!10015 thiss!1181) lt!404042 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110485 (not res!605276)) b!894049))

(assert (= (and b!894049 res!605277) b!894050))

(assert (=> d!110485 m!831973))

(declare-fun m!832183 () Bool)

(assert (=> b!894050 m!832183))

(assert (=> b!893941 d!110485))

(declare-fun b!894063 () Bool)

(declare-fun e!499389 () SeekEntryResult!8858)

(declare-fun lt!404099 () SeekEntryResult!8858)

(assert (=> b!894063 (= e!499389 (Found!8858 (index!37804 lt!404099)))))

(declare-fun b!894064 () Bool)

(declare-fun e!499388 () SeekEntryResult!8858)

(assert (=> b!894064 (= e!499388 (MissingZero!8858 (index!37804 lt!404099)))))

(declare-fun b!894065 () Bool)

(assert (=> b!894065 (= e!499388 (seekKeyOrZeroReturnVacant!0 (x!75987 lt!404099) (index!37804 lt!404099) (index!37804 lt!404099) (select (arr!25174 (_keys!10015 thiss!1181)) lt!403916) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun b!894066 () Bool)

(declare-fun e!499387 () SeekEntryResult!8858)

(assert (=> b!894066 (= e!499387 Undefined!8858)))

(declare-fun d!110487 () Bool)

(declare-fun lt!404100 () SeekEntryResult!8858)

(assert (=> d!110487 (and (or ((_ is Undefined!8858) lt!404100) (not ((_ is Found!8858) lt!404100)) (and (bvsge (index!37803 lt!404100) #b00000000000000000000000000000000) (bvslt (index!37803 lt!404100) (size!25620 (_keys!10015 thiss!1181))))) (or ((_ is Undefined!8858) lt!404100) ((_ is Found!8858) lt!404100) (not ((_ is MissingZero!8858) lt!404100)) (and (bvsge (index!37802 lt!404100) #b00000000000000000000000000000000) (bvslt (index!37802 lt!404100) (size!25620 (_keys!10015 thiss!1181))))) (or ((_ is Undefined!8858) lt!404100) ((_ is Found!8858) lt!404100) ((_ is MissingZero!8858) lt!404100) (not ((_ is MissingVacant!8858) lt!404100)) (and (bvsge (index!37805 lt!404100) #b00000000000000000000000000000000) (bvslt (index!37805 lt!404100) (size!25620 (_keys!10015 thiss!1181))))) (or ((_ is Undefined!8858) lt!404100) (ite ((_ is Found!8858) lt!404100) (= (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!404100)) (select (arr!25174 (_keys!10015 thiss!1181)) lt!403916)) (ite ((_ is MissingZero!8858) lt!404100) (= (select (arr!25174 (_keys!10015 thiss!1181)) (index!37802 lt!404100)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8858) lt!404100) (= (select (arr!25174 (_keys!10015 thiss!1181)) (index!37805 lt!404100)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!110487 (= lt!404100 e!499387)))

(declare-fun c!94259 () Bool)

(assert (=> d!110487 (= c!94259 (and ((_ is Intermediate!8858) lt!404099) (undefined!9670 lt!404099)))))

(assert (=> d!110487 (= lt!404099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!25174 (_keys!10015 thiss!1181)) lt!403916) (mask!25864 thiss!1181)) (select (arr!25174 (_keys!10015 thiss!1181)) lt!403916) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(assert (=> d!110487 (validMask!0 (mask!25864 thiss!1181))))

(assert (=> d!110487 (= (seekEntryOrOpen!0 (select (arr!25174 (_keys!10015 thiss!1181)) lt!403916) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) lt!404100)))

(declare-fun b!894067 () Bool)

(assert (=> b!894067 (= e!499387 e!499389)))

(declare-fun lt!404098 () (_ BitVec 64))

(assert (=> b!894067 (= lt!404098 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37804 lt!404099)))))

(declare-fun c!94260 () Bool)

(assert (=> b!894067 (= c!94260 (= lt!404098 (select (arr!25174 (_keys!10015 thiss!1181)) lt!403916)))))

(declare-fun b!894068 () Bool)

(declare-fun c!94258 () Bool)

(assert (=> b!894068 (= c!94258 (= lt!404098 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!894068 (= e!499389 e!499388)))

(assert (= (and d!110487 c!94259) b!894066))

(assert (= (and d!110487 (not c!94259)) b!894067))

(assert (= (and b!894067 c!94260) b!894063))

(assert (= (and b!894067 (not c!94260)) b!894068))

(assert (= (and b!894068 c!94258) b!894064))

(assert (= (and b!894068 (not c!94258)) b!894065))

(assert (=> b!894065 m!832067))

(declare-fun m!832185 () Bool)

(assert (=> b!894065 m!832185))

(declare-fun m!832187 () Bool)

(assert (=> d!110487 m!832187))

(declare-fun m!832189 () Bool)

(assert (=> d!110487 m!832189))

(assert (=> d!110487 m!832067))

(declare-fun m!832191 () Bool)

(assert (=> d!110487 m!832191))

(assert (=> d!110487 m!831981))

(assert (=> d!110487 m!832191))

(assert (=> d!110487 m!832067))

(declare-fun m!832193 () Bool)

(assert (=> d!110487 m!832193))

(declare-fun m!832195 () Bool)

(assert (=> d!110487 m!832195))

(declare-fun m!832197 () Bool)

(assert (=> b!894067 m!832197))

(assert (=> b!893941 d!110487))

(assert (=> d!110425 d!110427))

(declare-fun d!110489 () Bool)

(assert (=> d!110489 (arrayForallSeekEntryOrOpenFound!0 lt!403916 (_keys!10015 thiss!1181) (mask!25864 thiss!1181))))

(assert (=> d!110489 true))

(declare-fun _$72!119 () Unit!30409)

(assert (=> d!110489 (= (choose!38 (_keys!10015 thiss!1181) (mask!25864 thiss!1181) #b00000000000000000000000000000000 lt!403916) _$72!119)))

(declare-fun bs!25102 () Bool)

(assert (= bs!25102 d!110489))

(assert (=> bs!25102 m!831937))

(assert (=> d!110425 d!110489))

(assert (=> d!110425 d!110449))

(declare-fun d!110491 () Bool)

(declare-fun e!499390 () Bool)

(assert (=> d!110491 e!499390))

(declare-fun res!605278 () Bool)

(assert (=> d!110491 (=> (not res!605278) (not e!499390))))

(declare-fun lt!404102 () ListLongMap!10755)

(assert (=> d!110491 (= res!605278 (contains!4375 lt!404102 (_1!6032 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181)))))))

(declare-fun lt!404103 () List!17881)

(assert (=> d!110491 (= lt!404102 (ListLongMap!10756 lt!404103))))

(declare-fun lt!404104 () Unit!30409)

(declare-fun lt!404101 () Unit!30409)

(assert (=> d!110491 (= lt!404104 lt!404101)))

(assert (=> d!110491 (= (getValueByKey!451 lt!404103 (_1!6032 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181)))) (Some!456 (_2!6032 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181)))))))

(assert (=> d!110491 (= lt!404101 (lemmaContainsTupThenGetReturnValue!248 lt!404103 (_1!6032 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181))) (_2!6032 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181)))))))

(assert (=> d!110491 (= lt!404103 (insertStrictlySorted!304 (toList!5393 lt!403991) (_1!6032 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181))) (_2!6032 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181)))))))

(assert (=> d!110491 (= (+!2544 lt!403991 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181))) lt!404102)))

(declare-fun b!894069 () Bool)

(declare-fun res!605279 () Bool)

(assert (=> b!894069 (=> (not res!605279) (not e!499390))))

(assert (=> b!894069 (= res!605279 (= (getValueByKey!451 (toList!5393 lt!404102) (_1!6032 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181)))) (Some!456 (_2!6032 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181))))))))

(declare-fun b!894070 () Bool)

(assert (=> b!894070 (= e!499390 (contains!4377 (toList!5393 lt!404102) (tuple2!12045 lt!403983 (minValue!5127 thiss!1181))))))

(assert (= (and d!110491 res!605278) b!894069))

(assert (= (and b!894069 res!605279) b!894070))

(declare-fun m!832199 () Bool)

(assert (=> d!110491 m!832199))

(declare-fun m!832201 () Bool)

(assert (=> d!110491 m!832201))

(declare-fun m!832203 () Bool)

(assert (=> d!110491 m!832203))

(declare-fun m!832205 () Bool)

(assert (=> d!110491 m!832205))

(declare-fun m!832207 () Bool)

(assert (=> b!894069 m!832207))

(declare-fun m!832209 () Bool)

(assert (=> b!894070 m!832209))

(assert (=> b!893887 d!110491))

(declare-fun d!110493 () Bool)

(declare-fun e!499391 () Bool)

(assert (=> d!110493 e!499391))

(declare-fun res!605280 () Bool)

(assert (=> d!110493 (=> (not res!605280) (not e!499391))))

(declare-fun lt!404106 () ListLongMap!10755)

(assert (=> d!110493 (= res!605280 (contains!4375 lt!404106 (_1!6032 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181)))))))

(declare-fun lt!404107 () List!17881)

(assert (=> d!110493 (= lt!404106 (ListLongMap!10756 lt!404107))))

(declare-fun lt!404108 () Unit!30409)

(declare-fun lt!404105 () Unit!30409)

(assert (=> d!110493 (= lt!404108 lt!404105)))

(assert (=> d!110493 (= (getValueByKey!451 lt!404107 (_1!6032 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181)))) (Some!456 (_2!6032 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181)))))))

(assert (=> d!110493 (= lt!404105 (lemmaContainsTupThenGetReturnValue!248 lt!404107 (_1!6032 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181))) (_2!6032 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181)))))))

(assert (=> d!110493 (= lt!404107 (insertStrictlySorted!304 (toList!5393 lt!403994) (_1!6032 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181))) (_2!6032 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181)))))))

(assert (=> d!110493 (= (+!2544 lt!403994 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181))) lt!404106)))

(declare-fun b!894071 () Bool)

(declare-fun res!605281 () Bool)

(assert (=> b!894071 (=> (not res!605281) (not e!499391))))

(assert (=> b!894071 (= res!605281 (= (getValueByKey!451 (toList!5393 lt!404106) (_1!6032 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181)))) (Some!456 (_2!6032 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181))))))))

(declare-fun b!894072 () Bool)

(assert (=> b!894072 (= e!499391 (contains!4377 (toList!5393 lt!404106) (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181))))))

(assert (= (and d!110493 res!605280) b!894071))

(assert (= (and b!894071 res!605281) b!894072))

(declare-fun m!832211 () Bool)

(assert (=> d!110493 m!832211))

(declare-fun m!832213 () Bool)

(assert (=> d!110493 m!832213))

(declare-fun m!832215 () Bool)

(assert (=> d!110493 m!832215))

(declare-fun m!832217 () Bool)

(assert (=> d!110493 m!832217))

(declare-fun m!832219 () Bool)

(assert (=> b!894071 m!832219))

(declare-fun m!832221 () Bool)

(assert (=> b!894072 m!832221))

(assert (=> b!893887 d!110493))

(declare-fun d!110495 () Bool)

(assert (=> d!110495 (= (apply!408 (+!2544 lt!403991 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181))) lt!403990) (get!13267 (getValueByKey!451 (toList!5393 (+!2544 lt!403991 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181)))) lt!403990)))))

(declare-fun bs!25103 () Bool)

(assert (= bs!25103 d!110495))

(declare-fun m!832223 () Bool)

(assert (=> bs!25103 m!832223))

(assert (=> bs!25103 m!832223))

(declare-fun m!832225 () Bool)

(assert (=> bs!25103 m!832225))

(assert (=> b!893887 d!110495))

(declare-fun d!110497 () Bool)

(assert (=> d!110497 (= (apply!408 (+!2544 lt!403979 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181))) lt!403981) (get!13267 (getValueByKey!451 (toList!5393 (+!2544 lt!403979 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181)))) lt!403981)))))

(declare-fun bs!25104 () Bool)

(assert (= bs!25104 d!110497))

(declare-fun m!832227 () Bool)

(assert (=> bs!25104 m!832227))

(assert (=> bs!25104 m!832227))

(declare-fun m!832229 () Bool)

(assert (=> bs!25104 m!832229))

(assert (=> b!893887 d!110497))

(declare-fun d!110499 () Bool)

(declare-fun e!499392 () Bool)

(assert (=> d!110499 e!499392))

(declare-fun res!605282 () Bool)

(assert (=> d!110499 (=> (not res!605282) (not e!499392))))

(declare-fun lt!404110 () ListLongMap!10755)

(assert (=> d!110499 (= res!605282 (contains!4375 lt!404110 (_1!6032 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181)))))))

(declare-fun lt!404111 () List!17881)

(assert (=> d!110499 (= lt!404110 (ListLongMap!10756 lt!404111))))

(declare-fun lt!404112 () Unit!30409)

(declare-fun lt!404109 () Unit!30409)

(assert (=> d!110499 (= lt!404112 lt!404109)))

(assert (=> d!110499 (= (getValueByKey!451 lt!404111 (_1!6032 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181)))) (Some!456 (_2!6032 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181)))))))

(assert (=> d!110499 (= lt!404109 (lemmaContainsTupThenGetReturnValue!248 lt!404111 (_1!6032 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181))) (_2!6032 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181)))))))

(assert (=> d!110499 (= lt!404111 (insertStrictlySorted!304 (toList!5393 lt!403975) (_1!6032 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181))) (_2!6032 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181)))))))

(assert (=> d!110499 (= (+!2544 lt!403975 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181))) lt!404110)))

(declare-fun b!894073 () Bool)

(declare-fun res!605283 () Bool)

(assert (=> b!894073 (=> (not res!605283) (not e!499392))))

(assert (=> b!894073 (= res!605283 (= (getValueByKey!451 (toList!5393 lt!404110) (_1!6032 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181)))) (Some!456 (_2!6032 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181))))))))

(declare-fun b!894074 () Bool)

(assert (=> b!894074 (= e!499392 (contains!4377 (toList!5393 lt!404110) (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181))))))

(assert (= (and d!110499 res!605282) b!894073))

(assert (= (and b!894073 res!605283) b!894074))

(declare-fun m!832231 () Bool)

(assert (=> d!110499 m!832231))

(declare-fun m!832233 () Bool)

(assert (=> d!110499 m!832233))

(declare-fun m!832235 () Bool)

(assert (=> d!110499 m!832235))

(declare-fun m!832237 () Bool)

(assert (=> d!110499 m!832237))

(declare-fun m!832239 () Bool)

(assert (=> b!894073 m!832239))

(declare-fun m!832241 () Bool)

(assert (=> b!894074 m!832241))

(assert (=> b!893887 d!110499))

(declare-fun d!110501 () Bool)

(declare-fun e!499393 () Bool)

(assert (=> d!110501 e!499393))

(declare-fun res!605284 () Bool)

(assert (=> d!110501 (=> res!605284 e!499393)))

(declare-fun lt!404116 () Bool)

(assert (=> d!110501 (= res!605284 (not lt!404116))))

(declare-fun lt!404115 () Bool)

(assert (=> d!110501 (= lt!404116 lt!404115)))

(declare-fun lt!404114 () Unit!30409)

(declare-fun e!499394 () Unit!30409)

(assert (=> d!110501 (= lt!404114 e!499394)))

(declare-fun c!94261 () Bool)

(assert (=> d!110501 (= c!94261 lt!404115)))

(assert (=> d!110501 (= lt!404115 (containsKey!424 (toList!5393 (+!2544 lt!403975 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181)))) lt!403976))))

(assert (=> d!110501 (= (contains!4375 (+!2544 lt!403975 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181))) lt!403976) lt!404116)))

(declare-fun b!894075 () Bool)

(declare-fun lt!404113 () Unit!30409)

(assert (=> b!894075 (= e!499394 lt!404113)))

(assert (=> b!894075 (= lt!404113 (lemmaContainsKeyImpliesGetValueByKeyDefined!319 (toList!5393 (+!2544 lt!403975 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181)))) lt!403976))))

(assert (=> b!894075 (isDefined!329 (getValueByKey!451 (toList!5393 (+!2544 lt!403975 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181)))) lt!403976))))

(declare-fun b!894076 () Bool)

(declare-fun Unit!30419 () Unit!30409)

(assert (=> b!894076 (= e!499394 Unit!30419)))

(declare-fun b!894077 () Bool)

(assert (=> b!894077 (= e!499393 (isDefined!329 (getValueByKey!451 (toList!5393 (+!2544 lt!403975 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181)))) lt!403976)))))

(assert (= (and d!110501 c!94261) b!894075))

(assert (= (and d!110501 (not c!94261)) b!894076))

(assert (= (and d!110501 (not res!605284)) b!894077))

(declare-fun m!832243 () Bool)

(assert (=> d!110501 m!832243))

(declare-fun m!832245 () Bool)

(assert (=> b!894075 m!832245))

(declare-fun m!832247 () Bool)

(assert (=> b!894075 m!832247))

(assert (=> b!894075 m!832247))

(declare-fun m!832249 () Bool)

(assert (=> b!894075 m!832249))

(assert (=> b!894077 m!832247))

(assert (=> b!894077 m!832247))

(assert (=> b!894077 m!832249))

(assert (=> b!893887 d!110501))

(declare-fun d!110503 () Bool)

(assert (=> d!110503 (= (apply!408 (+!2544 lt!403979 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181))) lt!403981) (apply!408 lt!403979 lt!403981))))

(declare-fun lt!404119 () Unit!30409)

(declare-fun choose!1480 (ListLongMap!10755 (_ BitVec 64) V!29217 (_ BitVec 64)) Unit!30409)

(assert (=> d!110503 (= lt!404119 (choose!1480 lt!403979 lt!403988 (minValue!5127 thiss!1181) lt!403981))))

(declare-fun e!499397 () Bool)

(assert (=> d!110503 e!499397))

(declare-fun res!605287 () Bool)

(assert (=> d!110503 (=> (not res!605287) (not e!499397))))

(assert (=> d!110503 (= res!605287 (contains!4375 lt!403979 lt!403981))))

(assert (=> d!110503 (= (addApplyDifferent!330 lt!403979 lt!403988 (minValue!5127 thiss!1181) lt!403981) lt!404119)))

(declare-fun b!894081 () Bool)

(assert (=> b!894081 (= e!499397 (not (= lt!403981 lt!403988)))))

(assert (= (and d!110503 res!605287) b!894081))

(declare-fun m!832251 () Bool)

(assert (=> d!110503 m!832251))

(declare-fun m!832253 () Bool)

(assert (=> d!110503 m!832253))

(assert (=> d!110503 m!832013))

(assert (=> d!110503 m!832013))

(assert (=> d!110503 m!832027))

(assert (=> d!110503 m!832005))

(assert (=> b!893887 d!110503))

(declare-fun d!110505 () Bool)

(declare-fun e!499398 () Bool)

(assert (=> d!110505 e!499398))

(declare-fun res!605288 () Bool)

(assert (=> d!110505 (=> (not res!605288) (not e!499398))))

(declare-fun lt!404121 () ListLongMap!10755)

(assert (=> d!110505 (= res!605288 (contains!4375 lt!404121 (_1!6032 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181)))))))

(declare-fun lt!404122 () List!17881)

(assert (=> d!110505 (= lt!404121 (ListLongMap!10756 lt!404122))))

(declare-fun lt!404123 () Unit!30409)

(declare-fun lt!404120 () Unit!30409)

(assert (=> d!110505 (= lt!404123 lt!404120)))

(assert (=> d!110505 (= (getValueByKey!451 lt!404122 (_1!6032 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181)))) (Some!456 (_2!6032 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181)))))))

(assert (=> d!110505 (= lt!404120 (lemmaContainsTupThenGetReturnValue!248 lt!404122 (_1!6032 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181))) (_2!6032 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181)))))))

(assert (=> d!110505 (= lt!404122 (insertStrictlySorted!304 (toList!5393 lt!403979) (_1!6032 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181))) (_2!6032 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181)))))))

(assert (=> d!110505 (= (+!2544 lt!403979 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181))) lt!404121)))

(declare-fun b!894082 () Bool)

(declare-fun res!605289 () Bool)

(assert (=> b!894082 (=> (not res!605289) (not e!499398))))

(assert (=> b!894082 (= res!605289 (= (getValueByKey!451 (toList!5393 lt!404121) (_1!6032 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181)))) (Some!456 (_2!6032 (tuple2!12045 lt!403988 (minValue!5127 thiss!1181))))))))

(declare-fun b!894083 () Bool)

(assert (=> b!894083 (= e!499398 (contains!4377 (toList!5393 lt!404121) (tuple2!12045 lt!403988 (minValue!5127 thiss!1181))))))

(assert (= (and d!110505 res!605288) b!894082))

(assert (= (and b!894082 res!605289) b!894083))

(declare-fun m!832255 () Bool)

(assert (=> d!110505 m!832255))

(declare-fun m!832257 () Bool)

(assert (=> d!110505 m!832257))

(declare-fun m!832259 () Bool)

(assert (=> d!110505 m!832259))

(declare-fun m!832261 () Bool)

(assert (=> d!110505 m!832261))

(declare-fun m!832263 () Bool)

(assert (=> b!894082 m!832263))

(declare-fun m!832265 () Bool)

(assert (=> b!894083 m!832265))

(assert (=> b!893887 d!110505))

(declare-fun d!110507 () Bool)

(assert (=> d!110507 (= (apply!408 (+!2544 lt!403994 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181))) lt!403982) (get!13267 (getValueByKey!451 (toList!5393 (+!2544 lt!403994 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181)))) lt!403982)))))

(declare-fun bs!25105 () Bool)

(assert (= bs!25105 d!110507))

(declare-fun m!832267 () Bool)

(assert (=> bs!25105 m!832267))

(assert (=> bs!25105 m!832267))

(declare-fun m!832269 () Bool)

(assert (=> bs!25105 m!832269))

(assert (=> b!893887 d!110507))

(declare-fun d!110509 () Bool)

(assert (=> d!110509 (= (apply!408 lt!403991 lt!403990) (get!13267 (getValueByKey!451 (toList!5393 lt!403991) lt!403990)))))

(declare-fun bs!25106 () Bool)

(assert (= bs!25106 d!110509))

(declare-fun m!832271 () Bool)

(assert (=> bs!25106 m!832271))

(assert (=> bs!25106 m!832271))

(declare-fun m!832273 () Bool)

(assert (=> bs!25106 m!832273))

(assert (=> b!893887 d!110509))

(declare-fun b!894108 () Bool)

(declare-fun e!499419 () ListLongMap!10755)

(declare-fun e!499413 () ListLongMap!10755)

(assert (=> b!894108 (= e!499419 e!499413)))

(declare-fun c!94271 () Bool)

(assert (=> b!894108 (= c!94271 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!894109 () Bool)

(declare-fun call!39705 () ListLongMap!10755)

(assert (=> b!894109 (= e!499413 call!39705)))

(declare-fun b!894110 () Bool)

(declare-fun e!499414 () Bool)

(declare-fun e!499418 () Bool)

(assert (=> b!894110 (= e!499414 e!499418)))

(declare-fun c!94270 () Bool)

(assert (=> b!894110 (= c!94270 (bvslt #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun d!110511 () Bool)

(declare-fun e!499417 () Bool)

(assert (=> d!110511 e!499417))

(declare-fun res!605300 () Bool)

(assert (=> d!110511 (=> (not res!605300) (not e!499417))))

(declare-fun lt!404140 () ListLongMap!10755)

(assert (=> d!110511 (= res!605300 (not (contains!4375 lt!404140 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!110511 (= lt!404140 e!499419)))

(declare-fun c!94273 () Bool)

(assert (=> d!110511 (= c!94273 (bvsge #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> d!110511 (validMask!0 (mask!25864 thiss!1181))))

(assert (=> d!110511 (= (getCurrentListMapNoExtraKeys!3292 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5327 thiss!1181)) lt!404140)))

(declare-fun b!894111 () Bool)

(assert (=> b!894111 (= e!499417 e!499414)))

(declare-fun c!94272 () Bool)

(declare-fun e!499416 () Bool)

(assert (=> b!894111 (= c!94272 e!499416)))

(declare-fun res!605299 () Bool)

(assert (=> b!894111 (=> (not res!605299) (not e!499416))))

(assert (=> b!894111 (= res!605299 (bvslt #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun b!894112 () Bool)

(assert (=> b!894112 (= e!499418 (= lt!404140 (getCurrentListMapNoExtraKeys!3292 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5327 thiss!1181))))))

(declare-fun b!894113 () Bool)

(assert (=> b!894113 (= e!499416 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!894113 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!894114 () Bool)

(assert (=> b!894114 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> b!894114 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25621 (_values!5314 thiss!1181))))))

(declare-fun e!499415 () Bool)

(assert (=> b!894114 (= e!499415 (= (apply!408 lt!404140 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)) (get!13268 (select (arr!25175 (_values!5314 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1300 (defaultEntry!5327 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!894115 () Bool)

(assert (=> b!894115 (= e!499419 (ListLongMap!10756 Nil!17878))))

(declare-fun b!894116 () Bool)

(assert (=> b!894116 (= e!499414 e!499415)))

(assert (=> b!894116 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun res!605301 () Bool)

(assert (=> b!894116 (= res!605301 (contains!4375 lt!404140 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!894116 (=> (not res!605301) (not e!499415))))

(declare-fun b!894117 () Bool)

(declare-fun lt!404138 () Unit!30409)

(declare-fun lt!404144 () Unit!30409)

(assert (=> b!894117 (= lt!404138 lt!404144)))

(declare-fun lt!404141 () (_ BitVec 64))

(declare-fun lt!404142 () V!29217)

(declare-fun lt!404143 () ListLongMap!10755)

(declare-fun lt!404139 () (_ BitVec 64))

(assert (=> b!894117 (not (contains!4375 (+!2544 lt!404143 (tuple2!12045 lt!404141 lt!404142)) lt!404139))))

(declare-fun addStillNotContains!215 (ListLongMap!10755 (_ BitVec 64) V!29217 (_ BitVec 64)) Unit!30409)

(assert (=> b!894117 (= lt!404144 (addStillNotContains!215 lt!404143 lt!404141 lt!404142 lt!404139))))

(assert (=> b!894117 (= lt!404139 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!894117 (= lt!404142 (get!13268 (select (arr!25175 (_values!5314 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1300 (defaultEntry!5327 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!894117 (= lt!404141 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894117 (= lt!404143 call!39705)))

(assert (=> b!894117 (= e!499413 (+!2544 call!39705 (tuple2!12045 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) (get!13268 (select (arr!25175 (_values!5314 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1300 (defaultEntry!5327 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!894118 () Bool)

(declare-fun res!605298 () Bool)

(assert (=> b!894118 (=> (not res!605298) (not e!499417))))

(assert (=> b!894118 (= res!605298 (not (contains!4375 lt!404140 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!894119 () Bool)

(declare-fun isEmpty!688 (ListLongMap!10755) Bool)

(assert (=> b!894119 (= e!499418 (isEmpty!688 lt!404140))))

(declare-fun bm!39702 () Bool)

(assert (=> bm!39702 (= call!39705 (getCurrentListMapNoExtraKeys!3292 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5327 thiss!1181)))))

(assert (= (and d!110511 c!94273) b!894115))

(assert (= (and d!110511 (not c!94273)) b!894108))

(assert (= (and b!894108 c!94271) b!894117))

(assert (= (and b!894108 (not c!94271)) b!894109))

(assert (= (or b!894117 b!894109) bm!39702))

(assert (= (and d!110511 res!605300) b!894118))

(assert (= (and b!894118 res!605298) b!894111))

(assert (= (and b!894111 res!605299) b!894113))

(assert (= (and b!894111 c!94272) b!894116))

(assert (= (and b!894111 (not c!94272)) b!894110))

(assert (= (and b!894116 res!605301) b!894114))

(assert (= (and b!894110 c!94270) b!894112))

(assert (= (and b!894110 (not c!94270)) b!894119))

(declare-fun b_lambda!12973 () Bool)

(assert (=> (not b_lambda!12973) (not b!894114)))

(assert (=> b!894114 t!25223))

(declare-fun b_and!26165 () Bool)

(assert (= b_and!26163 (and (=> t!25223 result!10091) b_and!26165)))

(declare-fun b_lambda!12975 () Bool)

(assert (=> (not b_lambda!12975) (not b!894117)))

(assert (=> b!894117 t!25223))

(declare-fun b_and!26167 () Bool)

(assert (= b_and!26165 (and (=> t!25223 result!10091) b_and!26167)))

(declare-fun m!832275 () Bool)

(assert (=> bm!39702 m!832275))

(declare-fun m!832277 () Bool)

(assert (=> b!894117 m!832277))

(declare-fun m!832279 () Bool)

(assert (=> b!894117 m!832279))

(declare-fun m!832281 () Bool)

(assert (=> b!894117 m!832281))

(declare-fun m!832283 () Bool)

(assert (=> b!894117 m!832283))

(assert (=> b!894117 m!831973))

(assert (=> b!894117 m!831997))

(assert (=> b!894117 m!832279))

(assert (=> b!894117 m!831999))

(assert (=> b!894117 m!831997))

(assert (=> b!894117 m!831999))

(assert (=> b!894117 m!832001))

(assert (=> b!894108 m!831973))

(assert (=> b!894108 m!831973))

(assert (=> b!894108 m!831985))

(assert (=> b!894114 m!831973))

(declare-fun m!832285 () Bool)

(assert (=> b!894114 m!832285))

(assert (=> b!894114 m!831973))

(assert (=> b!894114 m!831997))

(assert (=> b!894114 m!831999))

(assert (=> b!894114 m!831997))

(assert (=> b!894114 m!831999))

(assert (=> b!894114 m!832001))

(assert (=> b!894112 m!832275))

(declare-fun m!832287 () Bool)

(assert (=> d!110511 m!832287))

(assert (=> d!110511 m!831981))

(assert (=> b!894116 m!831973))

(assert (=> b!894116 m!831973))

(declare-fun m!832289 () Bool)

(assert (=> b!894116 m!832289))

(declare-fun m!832291 () Bool)

(assert (=> b!894118 m!832291))

(assert (=> b!894113 m!831973))

(assert (=> b!894113 m!831973))

(assert (=> b!894113 m!831985))

(declare-fun m!832293 () Bool)

(assert (=> b!894119 m!832293))

(assert (=> b!893887 d!110511))

(declare-fun d!110513 () Bool)

(assert (=> d!110513 (= (apply!408 (+!2544 lt!403994 (tuple2!12045 lt!403989 (zeroValue!5127 thiss!1181))) lt!403982) (apply!408 lt!403994 lt!403982))))

(declare-fun lt!404145 () Unit!30409)

(assert (=> d!110513 (= lt!404145 (choose!1480 lt!403994 lt!403989 (zeroValue!5127 thiss!1181) lt!403982))))

(declare-fun e!499420 () Bool)

(assert (=> d!110513 e!499420))

(declare-fun res!605302 () Bool)

(assert (=> d!110513 (=> (not res!605302) (not e!499420))))

(assert (=> d!110513 (= res!605302 (contains!4375 lt!403994 lt!403982))))

(assert (=> d!110513 (= (addApplyDifferent!330 lt!403994 lt!403989 (zeroValue!5127 thiss!1181) lt!403982) lt!404145)))

(declare-fun b!894120 () Bool)

(assert (=> b!894120 (= e!499420 (not (= lt!403982 lt!403989)))))

(assert (= (and d!110513 res!605302) b!894120))

(declare-fun m!832295 () Bool)

(assert (=> d!110513 m!832295))

(declare-fun m!832297 () Bool)

(assert (=> d!110513 m!832297))

(assert (=> d!110513 m!832009))

(assert (=> d!110513 m!832009))

(assert (=> d!110513 m!832025))

(assert (=> d!110513 m!832021))

(assert (=> b!893887 d!110513))

(declare-fun d!110515 () Bool)

(assert (=> d!110515 (contains!4375 (+!2544 lt!403975 (tuple2!12045 lt!403995 (zeroValue!5127 thiss!1181))) lt!403976)))

(declare-fun lt!404148 () Unit!30409)

(declare-fun choose!1481 (ListLongMap!10755 (_ BitVec 64) V!29217 (_ BitVec 64)) Unit!30409)

(assert (=> d!110515 (= lt!404148 (choose!1481 lt!403975 lt!403995 (zeroValue!5127 thiss!1181) lt!403976))))

(assert (=> d!110515 (contains!4375 lt!403975 lt!403976)))

(assert (=> d!110515 (= (addStillContains!330 lt!403975 lt!403995 (zeroValue!5127 thiss!1181) lt!403976) lt!404148)))

(declare-fun bs!25107 () Bool)

(assert (= bs!25107 d!110515))

(assert (=> bs!25107 m!832015))

(assert (=> bs!25107 m!832015))

(assert (=> bs!25107 m!832017))

(declare-fun m!832299 () Bool)

(assert (=> bs!25107 m!832299))

(declare-fun m!832301 () Bool)

(assert (=> bs!25107 m!832301))

(assert (=> b!893887 d!110515))

(declare-fun d!110517 () Bool)

(assert (=> d!110517 (= (apply!408 lt!403979 lt!403981) (get!13267 (getValueByKey!451 (toList!5393 lt!403979) lt!403981)))))

(declare-fun bs!25108 () Bool)

(assert (= bs!25108 d!110517))

(declare-fun m!832303 () Bool)

(assert (=> bs!25108 m!832303))

(assert (=> bs!25108 m!832303))

(declare-fun m!832305 () Bool)

(assert (=> bs!25108 m!832305))

(assert (=> b!893887 d!110517))

(declare-fun d!110519 () Bool)

(assert (=> d!110519 (= (apply!408 (+!2544 lt!403991 (tuple2!12045 lt!403983 (minValue!5127 thiss!1181))) lt!403990) (apply!408 lt!403991 lt!403990))))

(declare-fun lt!404149 () Unit!30409)

(assert (=> d!110519 (= lt!404149 (choose!1480 lt!403991 lt!403983 (minValue!5127 thiss!1181) lt!403990))))

(declare-fun e!499421 () Bool)

(assert (=> d!110519 e!499421))

(declare-fun res!605303 () Bool)

(assert (=> d!110519 (=> (not res!605303) (not e!499421))))

(assert (=> d!110519 (= res!605303 (contains!4375 lt!403991 lt!403990))))

(assert (=> d!110519 (= (addApplyDifferent!330 lt!403991 lt!403983 (minValue!5127 thiss!1181) lt!403990) lt!404149)))

(declare-fun b!894122 () Bool)

(assert (=> b!894122 (= e!499421 (not (= lt!403990 lt!403983)))))

(assert (= (and d!110519 res!605303) b!894122))

(declare-fun m!832307 () Bool)

(assert (=> d!110519 m!832307))

(declare-fun m!832309 () Bool)

(assert (=> d!110519 m!832309))

(assert (=> d!110519 m!832007))

(assert (=> d!110519 m!832007))

(assert (=> d!110519 m!832033))

(assert (=> d!110519 m!832019))

(assert (=> b!893887 d!110519))

(declare-fun d!110521 () Bool)

(assert (=> d!110521 (= (apply!408 lt!403994 lt!403982) (get!13267 (getValueByKey!451 (toList!5393 lt!403994) lt!403982)))))

(declare-fun bs!25109 () Bool)

(assert (= bs!25109 d!110521))

(declare-fun m!832311 () Bool)

(assert (=> bs!25109 m!832311))

(assert (=> bs!25109 m!832311))

(declare-fun m!832313 () Bool)

(assert (=> bs!25109 m!832313))

(assert (=> b!893887 d!110521))

(declare-fun b!894123 () Bool)

(declare-fun e!499424 () Bool)

(declare-fun call!39706 () Bool)

(assert (=> b!894123 (= e!499424 call!39706)))

(declare-fun b!894124 () Bool)

(declare-fun e!499422 () Bool)

(assert (=> b!894124 (= e!499422 e!499424)))

(declare-fun c!94274 () Bool)

(assert (=> b!894124 (= c!94274 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd lt!403916 #b00000000000000000000000000000001))))))

(declare-fun d!110523 () Bool)

(declare-fun res!605305 () Bool)

(assert (=> d!110523 (=> res!605305 e!499422)))

(assert (=> d!110523 (= res!605305 (bvsge (bvadd lt!403916 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> d!110523 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!403916 #b00000000000000000000000000000001) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) e!499422)))

(declare-fun bm!39703 () Bool)

(assert (=> bm!39703 (= call!39706 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!403916 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun b!894125 () Bool)

(declare-fun e!499423 () Bool)

(assert (=> b!894125 (= e!499423 call!39706)))

(declare-fun b!894126 () Bool)

(assert (=> b!894126 (= e!499424 e!499423)))

(declare-fun lt!404151 () (_ BitVec 64))

(assert (=> b!894126 (= lt!404151 (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd lt!403916 #b00000000000000000000000000000001)))))

(declare-fun lt!404150 () Unit!30409)

(assert (=> b!894126 (= lt!404150 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10015 thiss!1181) lt!404151 (bvadd lt!403916 #b00000000000000000000000000000001)))))

(assert (=> b!894126 (arrayContainsKey!0 (_keys!10015 thiss!1181) lt!404151 #b00000000000000000000000000000000)))

(declare-fun lt!404152 () Unit!30409)

(assert (=> b!894126 (= lt!404152 lt!404150)))

(declare-fun res!605304 () Bool)

(assert (=> b!894126 (= res!605304 (= (seekEntryOrOpen!0 (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd lt!403916 #b00000000000000000000000000000001)) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) (Found!8858 (bvadd lt!403916 #b00000000000000000000000000000001))))))

(assert (=> b!894126 (=> (not res!605304) (not e!499423))))

(assert (= (and d!110523 (not res!605305)) b!894124))

(assert (= (and b!894124 c!94274) b!894126))

(assert (= (and b!894124 (not c!94274)) b!894123))

(assert (= (and b!894126 res!605304) b!894125))

(assert (= (or b!894125 b!894123) bm!39703))

(declare-fun m!832315 () Bool)

(assert (=> b!894124 m!832315))

(assert (=> b!894124 m!832315))

(declare-fun m!832317 () Bool)

(assert (=> b!894124 m!832317))

(declare-fun m!832319 () Bool)

(assert (=> bm!39703 m!832319))

(assert (=> b!894126 m!832315))

(declare-fun m!832321 () Bool)

(assert (=> b!894126 m!832321))

(declare-fun m!832323 () Bool)

(assert (=> b!894126 m!832323))

(assert (=> b!894126 m!832315))

(declare-fun m!832325 () Bool)

(assert (=> b!894126 m!832325))

(assert (=> bm!39692 d!110523))

(assert (=> bm!39687 d!110511))

(declare-fun b!894127 () Bool)

(declare-fun e!499426 () (_ BitVec 32))

(declare-fun call!39707 () (_ BitVec 32))

(assert (=> b!894127 (= e!499426 call!39707)))

(declare-fun d!110525 () Bool)

(declare-fun lt!404153 () (_ BitVec 32))

(assert (=> d!110525 (and (bvsge lt!404153 #b00000000000000000000000000000000) (bvsle lt!404153 (bvsub (size!25620 (_keys!10015 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!499425 () (_ BitVec 32))

(assert (=> d!110525 (= lt!404153 e!499425)))

(declare-fun c!94276 () Bool)

(assert (=> d!110525 (= c!94276 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> d!110525 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!25620 (_keys!10015 thiss!1181)) (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> d!110525 (= (arrayCountValidKeys!0 (_keys!10015 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))) lt!404153)))

(declare-fun bm!39704 () Bool)

(assert (=> bm!39704 (= call!39707 (arrayCountValidKeys!0 (_keys!10015 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun b!894128 () Bool)

(assert (=> b!894128 (= e!499425 #b00000000000000000000000000000000)))

(declare-fun b!894129 () Bool)

(assert (=> b!894129 (= e!499426 (bvadd #b00000000000000000000000000000001 call!39707))))

(declare-fun b!894130 () Bool)

(assert (=> b!894130 (= e!499425 e!499426)))

(declare-fun c!94275 () Bool)

(assert (=> b!894130 (= c!94275 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!110525 c!94276) b!894128))

(assert (= (and d!110525 (not c!94276)) b!894130))

(assert (= (and b!894130 c!94275) b!894129))

(assert (= (and b!894130 (not c!94275)) b!894127))

(assert (= (or b!894129 b!894127) bm!39704))

(declare-fun m!832327 () Bool)

(assert (=> bm!39704 m!832327))

(declare-fun m!832329 () Bool)

(assert (=> b!894130 m!832329))

(assert (=> b!894130 m!832329))

(declare-fun m!832331 () Bool)

(assert (=> b!894130 m!832331))

(assert (=> bm!39698 d!110525))

(declare-fun d!110527 () Bool)

(assert (=> d!110527 (arrayContainsKey!0 (_keys!10015 thiss!1181) lt!404048 #b00000000000000000000000000000000)))

(declare-fun lt!404154 () Unit!30409)

(assert (=> d!110527 (= lt!404154 (choose!13 (_keys!10015 thiss!1181) lt!404048 #b00000000000000000000000000000000))))

(assert (=> d!110527 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!110527 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10015 thiss!1181) lt!404048 #b00000000000000000000000000000000) lt!404154)))

(declare-fun bs!25110 () Bool)

(assert (= bs!25110 d!110527))

(assert (=> bs!25110 m!832089))

(declare-fun m!832333 () Bool)

(assert (=> bs!25110 m!832333))

(assert (=> b!893972 d!110527))

(declare-fun d!110529 () Bool)

(declare-fun res!605306 () Bool)

(declare-fun e!499427 () Bool)

(assert (=> d!110529 (=> res!605306 e!499427)))

(assert (=> d!110529 (= res!605306 (= (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) lt!404048))))

(assert (=> d!110529 (= (arrayContainsKey!0 (_keys!10015 thiss!1181) lt!404048 #b00000000000000000000000000000000) e!499427)))

(declare-fun b!894131 () Bool)

(declare-fun e!499428 () Bool)

(assert (=> b!894131 (= e!499427 e!499428)))

(declare-fun res!605307 () Bool)

(assert (=> b!894131 (=> (not res!605307) (not e!499428))))

(assert (=> b!894131 (= res!605307 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun b!894132 () Bool)

(assert (=> b!894132 (= e!499428 (arrayContainsKey!0 (_keys!10015 thiss!1181) lt!404048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110529 (not res!605306)) b!894131))

(assert (= (and b!894131 res!605307) b!894132))

(assert (=> d!110529 m!831973))

(declare-fun m!832335 () Bool)

(assert (=> b!894132 m!832335))

(assert (=> b!893972 d!110529))

(declare-fun b!894133 () Bool)

(declare-fun e!499431 () SeekEntryResult!8858)

(declare-fun lt!404156 () SeekEntryResult!8858)

(assert (=> b!894133 (= e!499431 (Found!8858 (index!37804 lt!404156)))))

(declare-fun b!894134 () Bool)

(declare-fun e!499430 () SeekEntryResult!8858)

(assert (=> b!894134 (= e!499430 (MissingZero!8858 (index!37804 lt!404156)))))

(declare-fun b!894135 () Bool)

(assert (=> b!894135 (= e!499430 (seekKeyOrZeroReturnVacant!0 (x!75987 lt!404156) (index!37804 lt!404156) (index!37804 lt!404156) (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun b!894136 () Bool)

(declare-fun e!499429 () SeekEntryResult!8858)

(assert (=> b!894136 (= e!499429 Undefined!8858)))

(declare-fun d!110531 () Bool)

(declare-fun lt!404157 () SeekEntryResult!8858)

(assert (=> d!110531 (and (or ((_ is Undefined!8858) lt!404157) (not ((_ is Found!8858) lt!404157)) (and (bvsge (index!37803 lt!404157) #b00000000000000000000000000000000) (bvslt (index!37803 lt!404157) (size!25620 (_keys!10015 thiss!1181))))) (or ((_ is Undefined!8858) lt!404157) ((_ is Found!8858) lt!404157) (not ((_ is MissingZero!8858) lt!404157)) (and (bvsge (index!37802 lt!404157) #b00000000000000000000000000000000) (bvslt (index!37802 lt!404157) (size!25620 (_keys!10015 thiss!1181))))) (or ((_ is Undefined!8858) lt!404157) ((_ is Found!8858) lt!404157) ((_ is MissingZero!8858) lt!404157) (not ((_ is MissingVacant!8858) lt!404157)) (and (bvsge (index!37805 lt!404157) #b00000000000000000000000000000000) (bvslt (index!37805 lt!404157) (size!25620 (_keys!10015 thiss!1181))))) (or ((_ is Undefined!8858) lt!404157) (ite ((_ is Found!8858) lt!404157) (= (select (arr!25174 (_keys!10015 thiss!1181)) (index!37803 lt!404157)) (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!8858) lt!404157) (= (select (arr!25174 (_keys!10015 thiss!1181)) (index!37802 lt!404157)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8858) lt!404157) (= (select (arr!25174 (_keys!10015 thiss!1181)) (index!37805 lt!404157)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!110531 (= lt!404157 e!499429)))

(declare-fun c!94278 () Bool)

(assert (=> d!110531 (= c!94278 (and ((_ is Intermediate!8858) lt!404156) (undefined!9670 lt!404156)))))

(assert (=> d!110531 (= lt!404156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) (mask!25864 thiss!1181)) (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(assert (=> d!110531 (validMask!0 (mask!25864 thiss!1181))))

(assert (=> d!110531 (= (seekEntryOrOpen!0 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) lt!404157)))

(declare-fun b!894137 () Bool)

(assert (=> b!894137 (= e!499429 e!499431)))

(declare-fun lt!404155 () (_ BitVec 64))

(assert (=> b!894137 (= lt!404155 (select (arr!25174 (_keys!10015 thiss!1181)) (index!37804 lt!404156)))))

(declare-fun c!94279 () Bool)

(assert (=> b!894137 (= c!94279 (= lt!404155 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!894138 () Bool)

(declare-fun c!94277 () Bool)

(assert (=> b!894138 (= c!94277 (= lt!404155 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!894138 (= e!499431 e!499430)))

(assert (= (and d!110531 c!94278) b!894136))

(assert (= (and d!110531 (not c!94278)) b!894137))

(assert (= (and b!894137 c!94279) b!894133))

(assert (= (and b!894137 (not c!94279)) b!894138))

(assert (= (and b!894138 c!94277) b!894134))

(assert (= (and b!894138 (not c!94277)) b!894135))

(assert (=> b!894135 m!831973))

(declare-fun m!832337 () Bool)

(assert (=> b!894135 m!832337))

(declare-fun m!832339 () Bool)

(assert (=> d!110531 m!832339))

(declare-fun m!832341 () Bool)

(assert (=> d!110531 m!832341))

(assert (=> d!110531 m!831973))

(declare-fun m!832343 () Bool)

(assert (=> d!110531 m!832343))

(assert (=> d!110531 m!831981))

(assert (=> d!110531 m!832343))

(assert (=> d!110531 m!831973))

(declare-fun m!832345 () Bool)

(assert (=> d!110531 m!832345))

(declare-fun m!832347 () Bool)

(assert (=> d!110531 m!832347))

(declare-fun m!832349 () Bool)

(assert (=> b!894137 m!832349))

(assert (=> b!893972 d!110531))

(declare-fun b!894139 () Bool)

(declare-fun e!499434 () Bool)

(declare-fun call!39708 () Bool)

(assert (=> b!894139 (= e!499434 call!39708)))

(declare-fun b!894140 () Bool)

(declare-fun e!499433 () Bool)

(declare-fun e!499435 () Bool)

(assert (=> b!894140 (= e!499433 e!499435)))

(declare-fun res!605310 () Bool)

(assert (=> b!894140 (=> (not res!605310) (not e!499435))))

(declare-fun e!499432 () Bool)

(assert (=> b!894140 (= res!605310 (not e!499432))))

(declare-fun res!605308 () Bool)

(assert (=> b!894140 (=> (not res!605308) (not e!499432))))

(assert (=> b!894140 (= res!605308 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!894141 () Bool)

(assert (=> b!894141 (= e!499432 (contains!4376 (ite c!94224 (Cons!17878 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) Nil!17879) Nil!17879) (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!894142 () Bool)

(assert (=> b!894142 (= e!499434 call!39708)))

(declare-fun bm!39705 () Bool)

(declare-fun c!94280 () Bool)

(assert (=> bm!39705 (= call!39708 (arrayNoDuplicates!0 (_keys!10015 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!94280 (Cons!17878 (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!94224 (Cons!17878 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) Nil!17879) Nil!17879)) (ite c!94224 (Cons!17878 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) Nil!17879) Nil!17879))))))

(declare-fun d!110533 () Bool)

(declare-fun res!605309 () Bool)

(assert (=> d!110533 (=> res!605309 e!499433)))

(assert (=> d!110533 (= res!605309 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> d!110533 (= (arrayNoDuplicates!0 (_keys!10015 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94224 (Cons!17878 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000) Nil!17879) Nil!17879)) e!499433)))

(declare-fun b!894143 () Bool)

(assert (=> b!894143 (= e!499435 e!499434)))

(assert (=> b!894143 (= c!94280 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!110533 (not res!605309)) b!894140))

(assert (= (and b!894140 res!605308) b!894141))

(assert (= (and b!894140 res!605310) b!894143))

(assert (= (and b!894143 c!94280) b!894142))

(assert (= (and b!894143 (not c!94280)) b!894139))

(assert (= (or b!894142 b!894139) bm!39705))

(assert (=> b!894140 m!832329))

(assert (=> b!894140 m!832329))

(assert (=> b!894140 m!832331))

(assert (=> b!894141 m!832329))

(assert (=> b!894141 m!832329))

(declare-fun m!832351 () Bool)

(assert (=> b!894141 m!832351))

(assert (=> bm!39705 m!832329))

(declare-fun m!832353 () Bool)

(assert (=> bm!39705 m!832353))

(assert (=> b!894143 m!832329))

(assert (=> b!894143 m!832329))

(assert (=> b!894143 m!832331))

(assert (=> bm!39695 d!110533))

(declare-fun b!894144 () Bool)

(declare-fun e!499438 () Bool)

(declare-fun call!39709 () Bool)

(assert (=> b!894144 (= e!499438 call!39709)))

(declare-fun b!894145 () Bool)

(declare-fun e!499436 () Bool)

(assert (=> b!894145 (= e!499436 e!499438)))

(declare-fun c!94281 () Bool)

(assert (=> b!894145 (= c!94281 (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!110535 () Bool)

(declare-fun res!605312 () Bool)

(assert (=> d!110535 (=> res!605312 e!499436)))

(assert (=> d!110535 (= res!605312 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> d!110535 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) e!499436)))

(declare-fun bm!39706 () Bool)

(assert (=> bm!39706 (= call!39709 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun b!894146 () Bool)

(declare-fun e!499437 () Bool)

(assert (=> b!894146 (= e!499437 call!39709)))

(declare-fun b!894147 () Bool)

(assert (=> b!894147 (= e!499438 e!499437)))

(declare-fun lt!404159 () (_ BitVec 64))

(assert (=> b!894147 (= lt!404159 (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!404158 () Unit!30409)

(assert (=> b!894147 (= lt!404158 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10015 thiss!1181) lt!404159 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!894147 (arrayContainsKey!0 (_keys!10015 thiss!1181) lt!404159 #b00000000000000000000000000000000)))

(declare-fun lt!404160 () Unit!30409)

(assert (=> b!894147 (= lt!404160 lt!404158)))

(declare-fun res!605311 () Bool)

(assert (=> b!894147 (= res!605311 (= (seekEntryOrOpen!0 (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) (Found!8858 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!894147 (=> (not res!605311) (not e!499437))))

(assert (= (and d!110535 (not res!605312)) b!894145))

(assert (= (and b!894145 c!94281) b!894147))

(assert (= (and b!894145 (not c!94281)) b!894144))

(assert (= (and b!894147 res!605311) b!894146))

(assert (= (or b!894146 b!894144) bm!39706))

(assert (=> b!894145 m!832329))

(assert (=> b!894145 m!832329))

(assert (=> b!894145 m!832331))

(declare-fun m!832355 () Bool)

(assert (=> bm!39706 m!832355))

(assert (=> b!894147 m!832329))

(declare-fun m!832357 () Bool)

(assert (=> b!894147 m!832357))

(declare-fun m!832359 () Bool)

(assert (=> b!894147 m!832359))

(assert (=> b!894147 m!832329))

(declare-fun m!832361 () Bool)

(assert (=> b!894147 m!832361))

(assert (=> bm!39699 d!110535))

(declare-fun d!110537 () Bool)

(declare-fun lt!404163 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!403 (List!17882) (InoxSet (_ BitVec 64)))

(assert (=> d!110537 (= lt!404163 (select (content!403 Nil!17879) (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!499443 () Bool)

(assert (=> d!110537 (= lt!404163 e!499443)))

(declare-fun res!605317 () Bool)

(assert (=> d!110537 (=> (not res!605317) (not e!499443))))

(assert (=> d!110537 (= res!605317 ((_ is Cons!17878) Nil!17879))))

(assert (=> d!110537 (= (contains!4376 Nil!17879 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)) lt!404163)))

(declare-fun b!894152 () Bool)

(declare-fun e!499444 () Bool)

(assert (=> b!894152 (= e!499443 e!499444)))

(declare-fun res!605318 () Bool)

(assert (=> b!894152 (=> res!605318 e!499444)))

(assert (=> b!894152 (= res!605318 (= (h!19010 Nil!17879) (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!894153 () Bool)

(assert (=> b!894153 (= e!499444 (contains!4376 (t!25221 Nil!17879) (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110537 res!605317) b!894152))

(assert (= (and b!894152 (not res!605318)) b!894153))

(declare-fun m!832363 () Bool)

(assert (=> d!110537 m!832363))

(assert (=> d!110537 m!831973))

(declare-fun m!832365 () Bool)

(assert (=> d!110537 m!832365))

(assert (=> b!894153 m!831973))

(declare-fun m!832367 () Bool)

(assert (=> b!894153 m!832367))

(assert (=> b!893954 d!110537))

(declare-fun d!110539 () Bool)

(assert (=> d!110539 (= (validKeyInArray!0 (select (arr!25174 (_keys!10015 thiss!1181)) lt!403916)) (and (not (= (select (arr!25174 (_keys!10015 thiss!1181)) lt!403916) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!25174 (_keys!10015 thiss!1181)) lt!403916) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!893939 d!110539))

(assert (=> d!110409 d!110407))

(declare-fun d!110541 () Bool)

(assert (=> d!110541 (arrayContainsKey!0 (_keys!10015 thiss!1181) key!785 #b00000000000000000000000000000000)))

(assert (=> d!110541 true))

(declare-fun _$60!403 () Unit!30409)

(assert (=> d!110541 (= (choose!13 (_keys!10015 thiss!1181) key!785 (index!37803 lt!403920)) _$60!403)))

(declare-fun bs!25111 () Bool)

(assert (= bs!25111 d!110541))

(assert (=> bs!25111 m!831947))

(assert (=> d!110409 d!110541))

(assert (=> b!893970 d!110471))

(assert (=> b!893953 d!110471))

(declare-fun d!110543 () Bool)

(declare-fun e!499445 () Bool)

(assert (=> d!110543 e!499445))

(declare-fun res!605319 () Bool)

(assert (=> d!110543 (=> res!605319 e!499445)))

(declare-fun lt!404167 () Bool)

(assert (=> d!110543 (= res!605319 (not lt!404167))))

(declare-fun lt!404166 () Bool)

(assert (=> d!110543 (= lt!404167 lt!404166)))

(declare-fun lt!404165 () Unit!30409)

(declare-fun e!499446 () Unit!30409)

(assert (=> d!110543 (= lt!404165 e!499446)))

(declare-fun c!94282 () Bool)

(assert (=> d!110543 (= c!94282 lt!404166)))

(assert (=> d!110543 (= lt!404166 (containsKey!424 (toList!5393 lt!403987) (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!110543 (= (contains!4375 lt!403987 (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)) lt!404167)))

(declare-fun b!894154 () Bool)

(declare-fun lt!404164 () Unit!30409)

(assert (=> b!894154 (= e!499446 lt!404164)))

(assert (=> b!894154 (= lt!404164 (lemmaContainsKeyImpliesGetValueByKeyDefined!319 (toList!5393 lt!403987) (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!894154 (isDefined!329 (getValueByKey!451 (toList!5393 lt!403987) (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!894155 () Bool)

(declare-fun Unit!30420 () Unit!30409)

(assert (=> b!894155 (= e!499446 Unit!30420)))

(declare-fun b!894156 () Bool)

(assert (=> b!894156 (= e!499445 (isDefined!329 (getValueByKey!451 (toList!5393 lt!403987) (select (arr!25174 (_keys!10015 thiss!1181)) #b00000000000000000000000000000000))))))

(assert (= (and d!110543 c!94282) b!894154))

(assert (= (and d!110543 (not c!94282)) b!894155))

(assert (= (and d!110543 (not res!605319)) b!894156))

(assert (=> d!110543 m!831973))

(declare-fun m!832369 () Bool)

(assert (=> d!110543 m!832369))

(assert (=> b!894154 m!831973))

(declare-fun m!832371 () Bool)

(assert (=> b!894154 m!832371))

(assert (=> b!894154 m!831973))

(assert (=> b!894154 m!832143))

(assert (=> b!894154 m!832143))

(declare-fun m!832373 () Bool)

(assert (=> b!894154 m!832373))

(assert (=> b!894156 m!831973))

(assert (=> b!894156 m!832143))

(assert (=> b!894156 m!832143))

(assert (=> b!894156 m!832373))

(assert (=> b!893884 d!110543))

(assert (=> d!110413 d!110449))

(declare-fun d!110545 () Bool)

(declare-fun lt!404168 () (_ BitVec 32))

(assert (=> d!110545 (and (or (bvslt lt!404168 #b00000000000000000000000000000000) (bvsge lt!404168 (size!25620 (_keys!10015 thiss!1181))) (and (bvsge lt!404168 #b00000000000000000000000000000000) (bvslt lt!404168 (size!25620 (_keys!10015 thiss!1181))))) (bvsge lt!404168 #b00000000000000000000000000000000) (bvslt lt!404168 (size!25620 (_keys!10015 thiss!1181))) (= (select (arr!25174 (_keys!10015 thiss!1181)) lt!404168) key!785))))

(declare-fun e!499447 () (_ BitVec 32))

(assert (=> d!110545 (= lt!404168 e!499447)))

(declare-fun c!94283 () Bool)

(assert (=> d!110545 (= c!94283 (= (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!785))))

(assert (=> d!110545 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))) (bvslt (size!25620 (_keys!10015 thiss!1181)) #b01111111111111111111111111111111))))

(assert (=> d!110545 (= (arrayScanForKey!0 (_keys!10015 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!404168)))

(declare-fun b!894157 () Bool)

(assert (=> b!894157 (= e!499447 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))

(declare-fun b!894158 () Bool)

(assert (=> b!894158 (= e!499447 (arrayScanForKey!0 (_keys!10015 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!110545 c!94283) b!894157))

(assert (= (and d!110545 (not c!94283)) b!894158))

(declare-fun m!832375 () Bool)

(assert (=> d!110545 m!832375))

(assert (=> d!110545 m!832329))

(declare-fun m!832377 () Bool)

(assert (=> b!894158 m!832377))

(assert (=> b!893929 d!110545))

(declare-fun b!894159 () Bool)

(declare-fun e!499448 () Option!457)

(assert (=> b!894159 (= e!499448 (Some!456 (_2!6032 (h!19009 (t!25218 (t!25218 (toList!5393 (map!12220 thiss!1181))))))))))

(declare-fun b!894160 () Bool)

(declare-fun e!499449 () Option!457)

(assert (=> b!894160 (= e!499448 e!499449)))

(declare-fun c!94285 () Bool)

(assert (=> b!894160 (= c!94285 (and ((_ is Cons!17877) (t!25218 (t!25218 (toList!5393 (map!12220 thiss!1181))))) (not (= (_1!6032 (h!19009 (t!25218 (t!25218 (toList!5393 (map!12220 thiss!1181)))))) key!785))))))

(declare-fun b!894161 () Bool)

(assert (=> b!894161 (= e!499449 (getValueByKey!451 (t!25218 (t!25218 (t!25218 (toList!5393 (map!12220 thiss!1181))))) key!785))))

(declare-fun d!110547 () Bool)

(declare-fun c!94284 () Bool)

(assert (=> d!110547 (= c!94284 (and ((_ is Cons!17877) (t!25218 (t!25218 (toList!5393 (map!12220 thiss!1181))))) (= (_1!6032 (h!19009 (t!25218 (t!25218 (toList!5393 (map!12220 thiss!1181)))))) key!785)))))

(assert (=> d!110547 (= (getValueByKey!451 (t!25218 (t!25218 (toList!5393 (map!12220 thiss!1181)))) key!785) e!499448)))

(declare-fun b!894162 () Bool)

(assert (=> b!894162 (= e!499449 None!455)))

(assert (= (and d!110547 c!94284) b!894159))

(assert (= (and d!110547 (not c!94284)) b!894160))

(assert (= (and b!894160 c!94285) b!894161))

(assert (= (and b!894160 (not c!94285)) b!894162))

(declare-fun m!832379 () Bool)

(assert (=> b!894161 m!832379))

(assert (=> b!893975 d!110547))

(assert (=> b!893922 d!110407))

(assert (=> b!893883 d!110471))

(declare-fun d!110549 () Bool)

(declare-fun e!499450 () Bool)

(assert (=> d!110549 e!499450))

(declare-fun res!605320 () Bool)

(assert (=> d!110549 (=> (not res!605320) (not e!499450))))

(declare-fun lt!404170 () ListLongMap!10755)

(assert (=> d!110549 (= res!605320 (contains!4375 lt!404170 (_1!6032 (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181)))))))

(declare-fun lt!404171 () List!17881)

(assert (=> d!110549 (= lt!404170 (ListLongMap!10756 lt!404171))))

(declare-fun lt!404172 () Unit!30409)

(declare-fun lt!404169 () Unit!30409)

(assert (=> d!110549 (= lt!404172 lt!404169)))

(assert (=> d!110549 (= (getValueByKey!451 lt!404171 (_1!6032 (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181)))) (Some!456 (_2!6032 (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181)))))))

(assert (=> d!110549 (= lt!404169 (lemmaContainsTupThenGetReturnValue!248 lt!404171 (_1!6032 (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181))) (_2!6032 (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181)))))))

(assert (=> d!110549 (= lt!404171 (insertStrictlySorted!304 (toList!5393 call!39687) (_1!6032 (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181))) (_2!6032 (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181)))))))

(assert (=> d!110549 (= (+!2544 call!39687 (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181))) lt!404170)))

(declare-fun b!894163 () Bool)

(declare-fun res!605321 () Bool)

(assert (=> b!894163 (=> (not res!605321) (not e!499450))))

(assert (=> b!894163 (= res!605321 (= (getValueByKey!451 (toList!5393 lt!404170) (_1!6032 (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181)))) (Some!456 (_2!6032 (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181))))))))

(declare-fun b!894164 () Bool)

(assert (=> b!894164 (= e!499450 (contains!4377 (toList!5393 lt!404170) (tuple2!12045 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5127 thiss!1181))))))

(assert (= (and d!110549 res!605320) b!894163))

(assert (= (and b!894163 res!605321) b!894164))

(declare-fun m!832381 () Bool)

(assert (=> d!110549 m!832381))

(declare-fun m!832383 () Bool)

(assert (=> d!110549 m!832383))

(declare-fun m!832385 () Bool)

(assert (=> d!110549 m!832385))

(declare-fun m!832387 () Bool)

(assert (=> d!110549 m!832387))

(declare-fun m!832389 () Bool)

(assert (=> b!894163 m!832389))

(declare-fun m!832391 () Bool)

(assert (=> b!894164 m!832391))

(assert (=> b!893881 d!110549))

(declare-fun d!110551 () Bool)

(declare-fun e!499453 () Bool)

(assert (=> d!110551 e!499453))

(declare-fun c!94288 () Bool)

(assert (=> d!110551 (= c!94288 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!110551 true))

(declare-fun _$15!92 () Unit!30409)

(assert (=> d!110551 (= (choose!1478 (_keys!10015 thiss!1181) (_values!5314 thiss!1181) (mask!25864 thiss!1181) (extraKeys!5023 thiss!1181) (zeroValue!5127 thiss!1181) (minValue!5127 thiss!1181) key!785 (defaultEntry!5327 thiss!1181)) _$15!92)))

(declare-fun b!894169 () Bool)

(assert (=> b!894169 (= e!499453 (arrayContainsKey!0 (_keys!10015 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!894170 () Bool)

(assert (=> b!894170 (= e!499453 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5023 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!110551 c!94288) b!894169))

(assert (= (and d!110551 (not c!94288)) b!894170))

(assert (=> b!894169 m!831947))

(assert (=> d!110419 d!110551))

(assert (=> d!110419 d!110449))

(declare-fun d!110553 () Bool)

(declare-fun e!499468 () Bool)

(assert (=> d!110553 e!499468))

(declare-fun c!94295 () Bool)

(declare-fun lt!404178 () SeekEntryResult!8858)

(assert (=> d!110553 (= c!94295 (and ((_ is Intermediate!8858) lt!404178) (undefined!9670 lt!404178)))))

(declare-fun e!499464 () SeekEntryResult!8858)

(assert (=> d!110553 (= lt!404178 e!499464)))

(declare-fun c!94296 () Bool)

(assert (=> d!110553 (= c!94296 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!404177 () (_ BitVec 64))

(assert (=> d!110553 (= lt!404177 (select (arr!25174 (_keys!10015 thiss!1181)) (toIndex!0 key!785 (mask!25864 thiss!1181))))))

(assert (=> d!110553 (validMask!0 (mask!25864 thiss!1181))))

(assert (=> d!110553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25864 thiss!1181)) key!785 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)) lt!404178)))

(declare-fun b!894189 () Bool)

(declare-fun e!499466 () SeekEntryResult!8858)

(assert (=> b!894189 (= e!499464 e!499466)))

(declare-fun c!94297 () Bool)

(assert (=> b!894189 (= c!94297 (or (= lt!404177 key!785) (= (bvadd lt!404177 lt!404177) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!894190 () Bool)

(assert (=> b!894190 (= e!499466 (Intermediate!8858 false (toIndex!0 key!785 (mask!25864 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!894191 () Bool)

(assert (=> b!894191 (and (bvsge (index!37804 lt!404178) #b00000000000000000000000000000000) (bvslt (index!37804 lt!404178) (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun res!605330 () Bool)

(assert (=> b!894191 (= res!605330 (= (select (arr!25174 (_keys!10015 thiss!1181)) (index!37804 lt!404178)) key!785))))

(declare-fun e!499467 () Bool)

(assert (=> b!894191 (=> res!605330 e!499467)))

(declare-fun e!499465 () Bool)

(assert (=> b!894191 (= e!499465 e!499467)))

(declare-fun b!894192 () Bool)

(assert (=> b!894192 (and (bvsge (index!37804 lt!404178) #b00000000000000000000000000000000) (bvslt (index!37804 lt!404178) (size!25620 (_keys!10015 thiss!1181))))))

(assert (=> b!894192 (= e!499467 (= (select (arr!25174 (_keys!10015 thiss!1181)) (index!37804 lt!404178)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!894193 () Bool)

(assert (=> b!894193 (= e!499468 (bvsge (x!75987 lt!404178) #b01111111111111111111111111111110))))

(declare-fun b!894194 () Bool)

(assert (=> b!894194 (= e!499466 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!25864 thiss!1181)) #b00000000000000000000000000000000 (mask!25864 thiss!1181)) key!785 (_keys!10015 thiss!1181) (mask!25864 thiss!1181)))))

(declare-fun b!894195 () Bool)

(assert (=> b!894195 (= e!499464 (Intermediate!8858 true (toIndex!0 key!785 (mask!25864 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!894196 () Bool)

(assert (=> b!894196 (and (bvsge (index!37804 lt!404178) #b00000000000000000000000000000000) (bvslt (index!37804 lt!404178) (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun res!605328 () Bool)

(assert (=> b!894196 (= res!605328 (= (select (arr!25174 (_keys!10015 thiss!1181)) (index!37804 lt!404178)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!894196 (=> res!605328 e!499467)))

(declare-fun b!894197 () Bool)

(assert (=> b!894197 (= e!499468 e!499465)))

(declare-fun res!605329 () Bool)

(assert (=> b!894197 (= res!605329 (and ((_ is Intermediate!8858) lt!404178) (not (undefined!9670 lt!404178)) (bvslt (x!75987 lt!404178) #b01111111111111111111111111111110) (bvsge (x!75987 lt!404178) #b00000000000000000000000000000000) (bvsge (x!75987 lt!404178) #b00000000000000000000000000000000)))))

(assert (=> b!894197 (=> (not res!605329) (not e!499465))))

(assert (= (and d!110553 c!94296) b!894195))

(assert (= (and d!110553 (not c!94296)) b!894189))

(assert (= (and b!894189 c!94297) b!894190))

(assert (= (and b!894189 (not c!94297)) b!894194))

(assert (= (and d!110553 c!94295) b!894193))

(assert (= (and d!110553 (not c!94295)) b!894197))

(assert (= (and b!894197 res!605329) b!894191))

(assert (= (and b!894191 (not res!605330)) b!894196))

(assert (= (and b!894196 (not res!605328)) b!894192))

(assert (=> d!110553 m!832049))

(declare-fun m!832393 () Bool)

(assert (=> d!110553 m!832393))

(assert (=> d!110553 m!831981))

(declare-fun m!832395 () Bool)

(assert (=> b!894196 m!832395))

(assert (=> b!894194 m!832049))

(declare-fun m!832397 () Bool)

(assert (=> b!894194 m!832397))

(assert (=> b!894194 m!832397))

(declare-fun m!832399 () Bool)

(assert (=> b!894194 m!832399))

(assert (=> b!894191 m!832395))

(assert (=> b!894192 m!832395))

(assert (=> d!110417 d!110553))

(declare-fun d!110555 () Bool)

(declare-fun lt!404184 () (_ BitVec 32))

(declare-fun lt!404183 () (_ BitVec 32))

(assert (=> d!110555 (= lt!404184 (bvmul (bvxor lt!404183 (bvlshr lt!404183 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!110555 (= lt!404183 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!110555 (and (bvsge (mask!25864 thiss!1181) #b00000000000000000000000000000000) (let ((res!605331 (let ((h!19011 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!75999 (bvmul (bvxor h!19011 (bvlshr h!19011 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!75999 (bvlshr x!75999 #b00000000000000000000000000001101)) (mask!25864 thiss!1181)))))) (and (bvslt res!605331 (bvadd (mask!25864 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!605331 #b00000000000000000000000000000000))))))

(assert (=> d!110555 (= (toIndex!0 key!785 (mask!25864 thiss!1181)) (bvand (bvxor lt!404184 (bvlshr lt!404184 #b00000000000000000000000000001101)) (mask!25864 thiss!1181)))))

(assert (=> d!110417 d!110555))

(assert (=> d!110417 d!110449))

(declare-fun d!110557 () Bool)

(declare-fun res!605332 () Bool)

(declare-fun e!499469 () Bool)

(assert (=> d!110557 (=> res!605332 e!499469)))

(assert (=> d!110557 (= res!605332 (= (select (arr!25174 (_keys!10015 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!785))))

(assert (=> d!110557 (= (arrayContainsKey!0 (_keys!10015 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!499469)))

(declare-fun b!894198 () Bool)

(declare-fun e!499470 () Bool)

(assert (=> b!894198 (= e!499469 e!499470)))

(declare-fun res!605333 () Bool)

(assert (=> b!894198 (=> (not res!605333) (not e!499470))))

(assert (=> b!894198 (= res!605333 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!25620 (_keys!10015 thiss!1181))))))

(declare-fun b!894199 () Bool)

(assert (=> b!894199 (= e!499470 (arrayContainsKey!0 (_keys!10015 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!110557 (not res!605332)) b!894198))

(assert (= (and b!894198 res!605333) b!894199))

(assert (=> d!110557 m!832329))

(declare-fun m!832401 () Bool)

(assert (=> b!894199 m!832401))

(assert (=> b!893824 d!110557))

(assert (=> b!893979 d!110443))

(assert (=> b!893979 d!110445))

(declare-fun b!894200 () Bool)

(declare-fun e!499471 () Bool)

(assert (=> b!894200 (= e!499471 tp_is_empty!18189)))

(declare-fun mapNonEmpty!28857 () Bool)

(declare-fun mapRes!28857 () Bool)

(declare-fun tp!55575 () Bool)

(assert (=> mapNonEmpty!28857 (= mapRes!28857 (and tp!55575 e!499471))))

(declare-fun mapKey!28857 () (_ BitVec 32))

(declare-fun mapValue!28857 () ValueCell!8613)

(declare-fun mapRest!28857 () (Array (_ BitVec 32) ValueCell!8613))

(assert (=> mapNonEmpty!28857 (= mapRest!28856 (store mapRest!28857 mapKey!28857 mapValue!28857))))

(declare-fun b!894201 () Bool)

(declare-fun e!499472 () Bool)

(assert (=> b!894201 (= e!499472 tp_is_empty!18189)))

(declare-fun condMapEmpty!28857 () Bool)

(declare-fun mapDefault!28857 () ValueCell!8613)

(assert (=> mapNonEmpty!28856 (= condMapEmpty!28857 (= mapRest!28856 ((as const (Array (_ BitVec 32) ValueCell!8613)) mapDefault!28857)))))

(assert (=> mapNonEmpty!28856 (= tp!55574 (and e!499472 mapRes!28857))))

(declare-fun mapIsEmpty!28857 () Bool)

(assert (=> mapIsEmpty!28857 mapRes!28857))

(assert (= (and mapNonEmpty!28856 condMapEmpty!28857) mapIsEmpty!28857))

(assert (= (and mapNonEmpty!28856 (not condMapEmpty!28857)) mapNonEmpty!28857))

(assert (= (and mapNonEmpty!28857 ((_ is ValueCellFull!8613) mapValue!28857)) b!894200))

(assert (= (and mapNonEmpty!28856 ((_ is ValueCellFull!8613) mapDefault!28857)) b!894201))

(declare-fun m!832403 () Bool)

(assert (=> mapNonEmpty!28857 m!832403))

(declare-fun b_lambda!12977 () Bool)

(assert (= b_lambda!12975 (or (and b!893730 b_free!15861) b_lambda!12977)))

(declare-fun b_lambda!12979 () Bool)

(assert (= b_lambda!12973 (or (and b!893730 b_free!15861) b_lambda!12979)))

(check-sat (not d!110521) (not b!894069) (not b!894071) (not b!894116) (not d!110483) (not b!894048) (not b!894112) (not b!894156) (not b!894070) (not d!110515) (not b!894124) (not d!110519) (not d!110531) (not d!110469) (not b!894044) (not b!894006) (not d!110513) (not d!110553) (not d!110517) (not b!894046) (not b!894077) (not bm!39702) (not d!110549) (not b!894147) (not mapNonEmpty!28857) (not d!110495) (not b!894158) (not d!110475) (not d!110503) (not b!893996) (not d!110543) (not d!110493) (not b!894199) (not b!894021) (not d!110443) tp_is_empty!18189 (not b!894145) (not b!894074) (not b!894118) (not d!110507) (not d!110509) (not b_lambda!12967) (not b!894135) (not b!894163) (not b!894108) (not b!894082) (not d!110491) (not b!894083) (not d!110487) (not d!110511) (not d!110467) (not d!110527) (not b!894072) (not b!894130) (not d!110489) (not b_lambda!12979) (not bm!39704) (not b!894024) (not d!110447) (not d!110477) (not b!894117) (not d!110537) (not b!894022) (not d!110501) (not b!894143) (not b!894015) (not b!893999) (not d!110473) (not b!894140) b_and!26167 (not bm!39703) (not b!894113) (not b!894007) (not b!894126) (not b!894153) (not b!894141) (not d!110497) (not b!894154) (not b_lambda!12977) (not b!894025) (not d!110505) (not b!894194) (not d!110481) (not b!894050) (not d!110461) (not b!894169) (not d!110441) (not d!110457) (not b!894014) (not d!110453) (not b_lambda!12971) (not b!894132) (not b!894042) (not b!894073) (not b_next!15861) (not d!110499) (not b!894119) (not d!110459) (not d!110463) (not bm!39706) (not b!894164) (not d!110541) (not bm!39705) (not b!894075) (not b!894009) (not b!894065) (not b!894020) (not b!894161) (not b!894114))
(check-sat b_and!26167 (not b_next!15861))
