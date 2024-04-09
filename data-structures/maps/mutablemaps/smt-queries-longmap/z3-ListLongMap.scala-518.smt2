; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13078 () Bool)

(assert start!13078)

(declare-fun b!114139 () Bool)

(declare-fun b_free!2609 () Bool)

(declare-fun b_next!2609 () Bool)

(assert (=> b!114139 (= b_free!2609 (not b_next!2609))))

(declare-fun tp!10188 () Bool)

(declare-fun b_and!7033 () Bool)

(assert (=> b!114139 (= tp!10188 b_and!7033)))

(declare-fun b!114141 () Bool)

(declare-fun b_free!2611 () Bool)

(declare-fun b_next!2611 () Bool)

(assert (=> b!114141 (= b_free!2611 (not b_next!2611))))

(declare-fun tp!10187 () Bool)

(declare-fun b_and!7035 () Bool)

(assert (=> b!114141 (= tp!10187 b_and!7035)))

(declare-fun mapNonEmpty!4091 () Bool)

(declare-fun mapRes!4092 () Bool)

(declare-fun tp!10185 () Bool)

(declare-fun e!74200 () Bool)

(assert (=> mapNonEmpty!4091 (= mapRes!4092 (and tp!10185 e!74200))))

(declare-datatypes ((V!3275 0))(
  ( (V!3276 (val!1405 Int)) )
))
(declare-datatypes ((ValueCell!1017 0))(
  ( (ValueCellFull!1017 (v!2976 V!3275)) (EmptyCell!1017) )
))
(declare-fun mapValue!4092 () ValueCell!1017)

(declare-datatypes ((array!4442 0))(
  ( (array!4443 (arr!2104 (Array (_ BitVec 32) (_ BitVec 64))) (size!2364 (_ BitVec 32))) )
))
(declare-datatypes ((array!4444 0))(
  ( (array!4445 (arr!2105 (Array (_ BitVec 32) ValueCell!1017)) (size!2365 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!942 0))(
  ( (LongMapFixedSize!943 (defaultEntry!2677 Int) (mask!6869 (_ BitVec 32)) (extraKeys!2466 (_ BitVec 32)) (zeroValue!2544 V!3275) (minValue!2544 V!3275) (_size!520 (_ BitVec 32)) (_keys!4399 array!4442) (_values!2660 array!4444) (_vacant!520 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!942)

(declare-fun mapKey!4091 () (_ BitVec 32))

(declare-fun mapRest!4092 () (Array (_ BitVec 32) ValueCell!1017))

(assert (=> mapNonEmpty!4091 (= (arr!2105 (_values!2660 newMap!16)) (store mapRest!4092 mapKey!4091 mapValue!4092))))

(declare-fun mapNonEmpty!4092 () Bool)

(declare-fun mapRes!4091 () Bool)

(declare-fun tp!10186 () Bool)

(declare-fun e!74204 () Bool)

(assert (=> mapNonEmpty!4092 (= mapRes!4091 (and tp!10186 e!74204))))

(declare-datatypes ((Cell!742 0))(
  ( (Cell!743 (v!2977 LongMapFixedSize!942)) )
))
(declare-datatypes ((LongMap!742 0))(
  ( (LongMap!743 (underlying!382 Cell!742)) )
))
(declare-fun thiss!992 () LongMap!742)

(declare-fun mapValue!4091 () ValueCell!1017)

(declare-fun mapKey!4092 () (_ BitVec 32))

(declare-fun mapRest!4091 () (Array (_ BitVec 32) ValueCell!1017))

(assert (=> mapNonEmpty!4092 (= (arr!2105 (_values!2660 (v!2977 (underlying!382 thiss!992)))) (store mapRest!4091 mapKey!4092 mapValue!4091))))

(declare-fun b!114133 () Bool)

(declare-fun res!56203 () Bool)

(declare-fun e!74214 () Bool)

(assert (=> b!114133 (=> (not res!56203) (not e!74214))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!114133 (= res!56203 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2364 (_keys!4399 (v!2977 (underlying!382 thiss!992)))))))))

(declare-fun b!114134 () Bool)

(declare-fun e!74202 () Bool)

(declare-fun e!74206 () Bool)

(assert (=> b!114134 (= e!74202 e!74206)))

(declare-fun res!56207 () Bool)

(assert (=> b!114134 (=> (not res!56207) (not e!74206))))

(declare-datatypes ((tuple2!2454 0))(
  ( (tuple2!2455 (_1!1237 Bool) (_2!1237 LongMapFixedSize!942)) )
))
(declare-fun lt!59316 () tuple2!2454)

(assert (=> b!114134 (= res!56207 (and (_1!1237 lt!59316) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!3571 0))(
  ( (Unit!3572) )
))
(declare-fun lt!59321 () Unit!3571)

(declare-fun e!74201 () Unit!3571)

(assert (=> b!114134 (= lt!59321 e!74201)))

(declare-fun c!20446 () Bool)

(declare-datatypes ((tuple2!2456 0))(
  ( (tuple2!2457 (_1!1238 (_ BitVec 64)) (_2!1238 V!3275)) )
))
(declare-datatypes ((List!1667 0))(
  ( (Nil!1664) (Cons!1663 (h!2263 tuple2!2456) (t!5881 List!1667)) )
))
(declare-datatypes ((ListLongMap!1611 0))(
  ( (ListLongMap!1612 (toList!821 List!1667)) )
))
(declare-fun lt!59317 () ListLongMap!1611)

(declare-fun contains!848 (ListLongMap!1611 (_ BitVec 64)) Bool)

(assert (=> b!114134 (= c!20446 (contains!848 lt!59317 (select (arr!2104 (_keys!4399 (v!2977 (underlying!382 thiss!992)))) from!355)))))

(declare-fun lt!59311 () V!3275)

(declare-fun update!167 (LongMapFixedSize!942 (_ BitVec 64) V!3275) tuple2!2454)

(assert (=> b!114134 (= lt!59316 (update!167 newMap!16 (select (arr!2104 (_keys!4399 (v!2977 (underlying!382 thiss!992)))) from!355) lt!59311))))

(declare-fun b!114135 () Bool)

(declare-fun tp_is_empty!2721 () Bool)

(assert (=> b!114135 (= e!74204 tp_is_empty!2721)))

(declare-fun b!114136 () Bool)

(declare-fun e!74213 () Bool)

(declare-fun e!74209 () Bool)

(assert (=> b!114136 (= e!74213 e!74209)))

(declare-fun b!114137 () Bool)

(declare-fun e!74207 () Bool)

(assert (=> b!114137 (= e!74207 tp_is_empty!2721)))

(declare-fun b!114138 () Bool)

(declare-fun e!74198 () Bool)

(assert (=> b!114138 (= e!74198 e!74202)))

(declare-fun res!56208 () Bool)

(assert (=> b!114138 (=> (not res!56208) (not e!74202))))

(assert (=> b!114138 (= res!56208 (and (not (= (select (arr!2104 (_keys!4399 (v!2977 (underlying!382 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2104 (_keys!4399 (v!2977 (underlying!382 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1378 (ValueCell!1017 V!3275) V!3275)

(declare-fun dynLambda!398 (Int (_ BitVec 64)) V!3275)

(assert (=> b!114138 (= lt!59311 (get!1378 (select (arr!2105 (_values!2660 (v!2977 (underlying!382 thiss!992)))) from!355) (dynLambda!398 (defaultEntry!2677 (v!2977 (underlying!382 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!74212 () Bool)

(declare-fun array_inv!1267 (array!4442) Bool)

(declare-fun array_inv!1268 (array!4444) Bool)

(assert (=> b!114139 (= e!74209 (and tp!10188 tp_is_empty!2721 (array_inv!1267 (_keys!4399 (v!2977 (underlying!382 thiss!992)))) (array_inv!1268 (_values!2660 (v!2977 (underlying!382 thiss!992)))) e!74212))))

(declare-fun b!114140 () Bool)

(assert (=> b!114140 (= e!74214 e!74198)))

(declare-fun res!56206 () Bool)

(assert (=> b!114140 (=> (not res!56206) (not e!74198))))

(declare-fun lt!59320 () ListLongMap!1611)

(assert (=> b!114140 (= res!56206 (= lt!59320 lt!59317))))

(declare-fun map!1310 (LongMapFixedSize!942) ListLongMap!1611)

(assert (=> b!114140 (= lt!59317 (map!1310 newMap!16))))

(declare-fun getCurrentListMap!497 (array!4442 array!4444 (_ BitVec 32) (_ BitVec 32) V!3275 V!3275 (_ BitVec 32) Int) ListLongMap!1611)

(assert (=> b!114140 (= lt!59320 (getCurrentListMap!497 (_keys!4399 (v!2977 (underlying!382 thiss!992))) (_values!2660 (v!2977 (underlying!382 thiss!992))) (mask!6869 (v!2977 (underlying!382 thiss!992))) (extraKeys!2466 (v!2977 (underlying!382 thiss!992))) (zeroValue!2544 (v!2977 (underlying!382 thiss!992))) (minValue!2544 (v!2977 (underlying!382 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2677 (v!2977 (underlying!382 thiss!992)))))))

(declare-fun e!74203 () Bool)

(declare-fun e!74211 () Bool)

(assert (=> b!114141 (= e!74211 (and tp!10187 tp_is_empty!2721 (array_inv!1267 (_keys!4399 newMap!16)) (array_inv!1268 (_values!2660 newMap!16)) e!74203))))

(declare-fun b!114142 () Bool)

(declare-fun e!74205 () Bool)

(assert (=> b!114142 (= e!74203 (and e!74205 mapRes!4092))))

(declare-fun condMapEmpty!4092 () Bool)

(declare-fun mapDefault!4091 () ValueCell!1017)

(assert (=> b!114142 (= condMapEmpty!4092 (= (arr!2105 (_values!2660 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1017)) mapDefault!4091)))))

(declare-fun b!114143 () Bool)

(declare-fun res!56209 () Bool)

(assert (=> b!114143 (=> (not res!56209) (not e!74214))))

(assert (=> b!114143 (= res!56209 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6869 newMap!16)) (_size!520 (v!2977 (underlying!382 thiss!992)))))))

(declare-fun b!114144 () Bool)

(declare-fun res!56205 () Bool)

(assert (=> b!114144 (=> (not res!56205) (not e!74214))))

(declare-fun valid!436 (LongMapFixedSize!942) Bool)

(assert (=> b!114144 (= res!56205 (valid!436 newMap!16))))

(declare-fun mapIsEmpty!4091 () Bool)

(assert (=> mapIsEmpty!4091 mapRes!4092))

(declare-fun b!114145 () Bool)

(declare-fun Unit!3573 () Unit!3571)

(assert (=> b!114145 (= e!74201 Unit!3573)))

(declare-fun lt!59314 () Unit!3571)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!123 (array!4442 array!4444 (_ BitVec 32) (_ BitVec 32) V!3275 V!3275 (_ BitVec 64) (_ BitVec 32) Int) Unit!3571)

(assert (=> b!114145 (= lt!59314 (lemmaListMapContainsThenArrayContainsFrom!123 (_keys!4399 (v!2977 (underlying!382 thiss!992))) (_values!2660 (v!2977 (underlying!382 thiss!992))) (mask!6869 (v!2977 (underlying!382 thiss!992))) (extraKeys!2466 (v!2977 (underlying!382 thiss!992))) (zeroValue!2544 (v!2977 (underlying!382 thiss!992))) (minValue!2544 (v!2977 (underlying!382 thiss!992))) (select (arr!2104 (_keys!4399 (v!2977 (underlying!382 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2677 (v!2977 (underlying!382 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!114145 (arrayContainsKey!0 (_keys!4399 (v!2977 (underlying!382 thiss!992))) (select (arr!2104 (_keys!4399 (v!2977 (underlying!382 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!59312 () Unit!3571)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4442 (_ BitVec 32) (_ BitVec 32)) Unit!3571)

(assert (=> b!114145 (= lt!59312 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4399 (v!2977 (underlying!382 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1668 0))(
  ( (Nil!1665) (Cons!1664 (h!2264 (_ BitVec 64)) (t!5882 List!1668)) )
))
(declare-fun arrayNoDuplicates!0 (array!4442 (_ BitVec 32) List!1668) Bool)

(assert (=> b!114145 (arrayNoDuplicates!0 (_keys!4399 (v!2977 (underlying!382 thiss!992))) from!355 Nil!1665)))

(declare-fun lt!59313 () Unit!3571)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4442 (_ BitVec 32) (_ BitVec 64) List!1668) Unit!3571)

(assert (=> b!114145 (= lt!59313 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4399 (v!2977 (underlying!382 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2104 (_keys!4399 (v!2977 (underlying!382 thiss!992)))) from!355) (Cons!1664 (select (arr!2104 (_keys!4399 (v!2977 (underlying!382 thiss!992)))) from!355) Nil!1665)))))

(assert (=> b!114145 false))

(declare-fun res!56204 () Bool)

(assert (=> start!13078 (=> (not res!56204) (not e!74214))))

(declare-fun valid!437 (LongMap!742) Bool)

(assert (=> start!13078 (= res!56204 (valid!437 thiss!992))))

(assert (=> start!13078 e!74214))

(declare-fun e!74208 () Bool)

(assert (=> start!13078 e!74208))

(assert (=> start!13078 true))

(assert (=> start!13078 e!74211))

(declare-fun b!114146 () Bool)

(assert (=> b!114146 (= e!74208 e!74213)))

(declare-fun b!114147 () Bool)

(assert (=> b!114147 (= e!74205 tp_is_empty!2721)))

(declare-fun b!114148 () Bool)

(declare-fun Unit!3574 () Unit!3571)

(assert (=> b!114148 (= e!74201 Unit!3574)))

(declare-fun b!114149 () Bool)

(assert (=> b!114149 (= e!74206 (not true))))

(declare-fun lt!59318 () ListLongMap!1611)

(declare-fun lt!59310 () tuple2!2456)

(declare-fun lt!59315 () tuple2!2456)

(declare-fun +!155 (ListLongMap!1611 tuple2!2456) ListLongMap!1611)

(assert (=> b!114149 (= (+!155 (+!155 lt!59318 lt!59310) lt!59315) (+!155 (+!155 lt!59318 lt!59315) lt!59310))))

(assert (=> b!114149 (= lt!59315 (tuple2!2457 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2544 (v!2977 (underlying!382 thiss!992)))))))

(assert (=> b!114149 (= lt!59310 (tuple2!2457 (select (arr!2104 (_keys!4399 (v!2977 (underlying!382 thiss!992)))) from!355) lt!59311))))

(declare-fun lt!59319 () Unit!3571)

(declare-fun addCommutativeForDiffKeys!67 (ListLongMap!1611 (_ BitVec 64) V!3275 (_ BitVec 64) V!3275) Unit!3571)

(assert (=> b!114149 (= lt!59319 (addCommutativeForDiffKeys!67 lt!59318 (select (arr!2104 (_keys!4399 (v!2977 (underlying!382 thiss!992)))) from!355) lt!59311 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2544 (v!2977 (underlying!382 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!122 (array!4442 array!4444 (_ BitVec 32) (_ BitVec 32) V!3275 V!3275 (_ BitVec 32) Int) ListLongMap!1611)

(assert (=> b!114149 (= lt!59318 (getCurrentListMapNoExtraKeys!122 (_keys!4399 (v!2977 (underlying!382 thiss!992))) (_values!2660 (v!2977 (underlying!382 thiss!992))) (mask!6869 (v!2977 (underlying!382 thiss!992))) (extraKeys!2466 (v!2977 (underlying!382 thiss!992))) (zeroValue!2544 (v!2977 (underlying!382 thiss!992))) (minValue!2544 (v!2977 (underlying!382 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2677 (v!2977 (underlying!382 thiss!992)))))))

(declare-fun b!114150 () Bool)

(assert (=> b!114150 (= e!74200 tp_is_empty!2721)))

(declare-fun b!114151 () Bool)

(assert (=> b!114151 (= e!74212 (and e!74207 mapRes!4091))))

(declare-fun condMapEmpty!4091 () Bool)

(declare-fun mapDefault!4092 () ValueCell!1017)

(assert (=> b!114151 (= condMapEmpty!4091 (= (arr!2105 (_values!2660 (v!2977 (underlying!382 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1017)) mapDefault!4092)))))

(declare-fun mapIsEmpty!4092 () Bool)

(assert (=> mapIsEmpty!4092 mapRes!4091))

(assert (= (and start!13078 res!56204) b!114133))

(assert (= (and b!114133 res!56203) b!114144))

(assert (= (and b!114144 res!56205) b!114143))

(assert (= (and b!114143 res!56209) b!114140))

(assert (= (and b!114140 res!56206) b!114138))

(assert (= (and b!114138 res!56208) b!114134))

(assert (= (and b!114134 c!20446) b!114145))

(assert (= (and b!114134 (not c!20446)) b!114148))

(assert (= (and b!114134 res!56207) b!114149))

(assert (= (and b!114151 condMapEmpty!4091) mapIsEmpty!4092))

(assert (= (and b!114151 (not condMapEmpty!4091)) mapNonEmpty!4092))

(get-info :version)

(assert (= (and mapNonEmpty!4092 ((_ is ValueCellFull!1017) mapValue!4091)) b!114135))

(assert (= (and b!114151 ((_ is ValueCellFull!1017) mapDefault!4092)) b!114137))

(assert (= b!114139 b!114151))

(assert (= b!114136 b!114139))

(assert (= b!114146 b!114136))

(assert (= start!13078 b!114146))

(assert (= (and b!114142 condMapEmpty!4092) mapIsEmpty!4091))

(assert (= (and b!114142 (not condMapEmpty!4092)) mapNonEmpty!4091))

(assert (= (and mapNonEmpty!4091 ((_ is ValueCellFull!1017) mapValue!4092)) b!114150))

(assert (= (and b!114142 ((_ is ValueCellFull!1017) mapDefault!4091)) b!114147))

(assert (= b!114141 b!114142))

(assert (= start!13078 b!114141))

(declare-fun b_lambda!5131 () Bool)

(assert (=> (not b_lambda!5131) (not b!114138)))

(declare-fun t!5878 () Bool)

(declare-fun tb!2177 () Bool)

(assert (=> (and b!114139 (= (defaultEntry!2677 (v!2977 (underlying!382 thiss!992))) (defaultEntry!2677 (v!2977 (underlying!382 thiss!992)))) t!5878) tb!2177))

(declare-fun result!3629 () Bool)

(assert (=> tb!2177 (= result!3629 tp_is_empty!2721)))

(assert (=> b!114138 t!5878))

(declare-fun b_and!7037 () Bool)

(assert (= b_and!7033 (and (=> t!5878 result!3629) b_and!7037)))

(declare-fun t!5880 () Bool)

(declare-fun tb!2179 () Bool)

(assert (=> (and b!114141 (= (defaultEntry!2677 newMap!16) (defaultEntry!2677 (v!2977 (underlying!382 thiss!992)))) t!5880) tb!2179))

(declare-fun result!3633 () Bool)

(assert (= result!3633 result!3629))

(assert (=> b!114138 t!5880))

(declare-fun b_and!7039 () Bool)

(assert (= b_and!7035 (and (=> t!5880 result!3633) b_and!7039)))

(declare-fun m!130615 () Bool)

(assert (=> mapNonEmpty!4092 m!130615))

(declare-fun m!130617 () Bool)

(assert (=> mapNonEmpty!4091 m!130617))

(declare-fun m!130619 () Bool)

(assert (=> start!13078 m!130619))

(declare-fun m!130621 () Bool)

(assert (=> b!114145 m!130621))

(declare-fun m!130623 () Bool)

(assert (=> b!114145 m!130623))

(declare-fun m!130625 () Bool)

(assert (=> b!114145 m!130625))

(declare-fun m!130627 () Bool)

(assert (=> b!114145 m!130627))

(assert (=> b!114145 m!130625))

(assert (=> b!114145 m!130625))

(declare-fun m!130629 () Bool)

(assert (=> b!114145 m!130629))

(assert (=> b!114145 m!130625))

(declare-fun m!130631 () Bool)

(assert (=> b!114145 m!130631))

(declare-fun m!130633 () Bool)

(assert (=> b!114144 m!130633))

(declare-fun m!130635 () Bool)

(assert (=> b!114140 m!130635))

(declare-fun m!130637 () Bool)

(assert (=> b!114140 m!130637))

(declare-fun m!130639 () Bool)

(assert (=> b!114141 m!130639))

(declare-fun m!130641 () Bool)

(assert (=> b!114141 m!130641))

(declare-fun m!130643 () Bool)

(assert (=> b!114139 m!130643))

(declare-fun m!130645 () Bool)

(assert (=> b!114139 m!130645))

(assert (=> b!114138 m!130625))

(declare-fun m!130647 () Bool)

(assert (=> b!114138 m!130647))

(declare-fun m!130649 () Bool)

(assert (=> b!114138 m!130649))

(assert (=> b!114138 m!130647))

(assert (=> b!114138 m!130649))

(declare-fun m!130651 () Bool)

(assert (=> b!114138 m!130651))

(assert (=> b!114134 m!130625))

(assert (=> b!114134 m!130625))

(declare-fun m!130653 () Bool)

(assert (=> b!114134 m!130653))

(assert (=> b!114134 m!130625))

(declare-fun m!130655 () Bool)

(assert (=> b!114134 m!130655))

(declare-fun m!130657 () Bool)

(assert (=> b!114149 m!130657))

(declare-fun m!130659 () Bool)

(assert (=> b!114149 m!130659))

(declare-fun m!130661 () Bool)

(assert (=> b!114149 m!130661))

(assert (=> b!114149 m!130657))

(declare-fun m!130663 () Bool)

(assert (=> b!114149 m!130663))

(assert (=> b!114149 m!130625))

(assert (=> b!114149 m!130625))

(declare-fun m!130665 () Bool)

(assert (=> b!114149 m!130665))

(declare-fun m!130667 () Bool)

(assert (=> b!114149 m!130667))

(assert (=> b!114149 m!130659))

(check-sat tp_is_empty!2721 (not b!114140) (not mapNonEmpty!4091) (not b_next!2609) (not b!114144) (not b!114134) (not b_next!2611) (not b!114139) b_and!7037 (not b!114145) (not b!114141) (not start!13078) (not b_lambda!5131) b_and!7039 (not b!114149) (not mapNonEmpty!4092) (not b!114138))
(check-sat b_and!7037 b_and!7039 (not b_next!2609) (not b_next!2611))
