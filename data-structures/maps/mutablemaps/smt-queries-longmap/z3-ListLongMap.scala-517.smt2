; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13072 () Bool)

(assert start!13072)

(declare-fun b!113944 () Bool)

(declare-fun b_free!2597 () Bool)

(declare-fun b_next!2597 () Bool)

(assert (=> b!113944 (= b_free!2597 (not b_next!2597))))

(declare-fun tp!10151 () Bool)

(declare-fun b_and!7009 () Bool)

(assert (=> b!113944 (= tp!10151 b_and!7009)))

(declare-fun b!113951 () Bool)

(declare-fun b_free!2599 () Bool)

(declare-fun b_next!2599 () Bool)

(assert (=> b!113951 (= b_free!2599 (not b_next!2599))))

(declare-fun tp!10150 () Bool)

(declare-fun b_and!7011 () Bool)

(assert (=> b!113951 (= tp!10150 b_and!7011)))

(declare-fun b!113940 () Bool)

(declare-fun e!74046 () Bool)

(declare-fun e!74058 () Bool)

(assert (=> b!113940 (= e!74046 e!74058)))

(declare-fun b!113941 () Bool)

(declare-fun e!74053 () Bool)

(declare-fun e!74044 () Bool)

(assert (=> b!113941 (= e!74053 e!74044)))

(declare-fun res!56133 () Bool)

(assert (=> b!113941 (=> (not res!56133) (not e!74044))))

(declare-datatypes ((V!3267 0))(
  ( (V!3268 (val!1402 Int)) )
))
(declare-datatypes ((array!4430 0))(
  ( (array!4431 (arr!2098 (Array (_ BitVec 32) (_ BitVec 64))) (size!2358 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1014 0))(
  ( (ValueCellFull!1014 (v!2970 V!3267)) (EmptyCell!1014) )
))
(declare-datatypes ((array!4432 0))(
  ( (array!4433 (arr!2099 (Array (_ BitVec 32) ValueCell!1014)) (size!2359 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!936 0))(
  ( (LongMapFixedSize!937 (defaultEntry!2674 Int) (mask!6864 (_ BitVec 32)) (extraKeys!2463 (_ BitVec 32)) (zeroValue!2541 V!3267) (minValue!2541 V!3267) (_size!517 (_ BitVec 32)) (_keys!4396 array!4430) (_values!2657 array!4432) (_vacant!517 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2450 0))(
  ( (tuple2!2451 (_1!1235 Bool) (_2!1235 LongMapFixedSize!936)) )
))
(declare-fun lt!59204 () tuple2!2450)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!113941 (= res!56133 (and (_1!1235 lt!59204) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!3567 0))(
  ( (Unit!3568) )
))
(declare-fun lt!59205 () Unit!3567)

(declare-fun e!74045 () Unit!3567)

(assert (=> b!113941 (= lt!59205 e!74045)))

(declare-datatypes ((Cell!736 0))(
  ( (Cell!737 (v!2971 LongMapFixedSize!936)) )
))
(declare-datatypes ((LongMap!736 0))(
  ( (LongMap!737 (underlying!379 Cell!736)) )
))
(declare-fun thiss!992 () LongMap!736)

(declare-fun c!20437 () Bool)

(declare-datatypes ((tuple2!2452 0))(
  ( (tuple2!2453 (_1!1236 (_ BitVec 64)) (_2!1236 V!3267)) )
))
(declare-datatypes ((List!1665 0))(
  ( (Nil!1662) (Cons!1661 (h!2261 tuple2!2452) (t!5867 List!1665)) )
))
(declare-datatypes ((ListLongMap!1609 0))(
  ( (ListLongMap!1610 (toList!820 List!1665)) )
))
(declare-fun lt!59207 () ListLongMap!1609)

(declare-fun contains!847 (ListLongMap!1609 (_ BitVec 64)) Bool)

(assert (=> b!113941 (= c!20437 (contains!847 lt!59207 (select (arr!2098 (_keys!4396 (v!2971 (underlying!379 thiss!992)))) from!355)))))

(declare-fun lt!59203 () V!3267)

(declare-fun newMap!16 () LongMapFixedSize!936)

(declare-fun update!166 (LongMapFixedSize!936 (_ BitVec 64) V!3267) tuple2!2450)

(assert (=> b!113941 (= lt!59204 (update!166 newMap!16 (select (arr!2098 (_keys!4396 (v!2971 (underlying!379 thiss!992)))) from!355) lt!59203))))

(declare-fun b!113942 () Bool)

(declare-fun e!74050 () Bool)

(assert (=> b!113942 (= e!74050 e!74053)))

(declare-fun res!56125 () Bool)

(assert (=> b!113942 (=> (not res!56125) (not e!74053))))

(assert (=> b!113942 (= res!56125 (and (not (= (select (arr!2098 (_keys!4396 (v!2971 (underlying!379 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2098 (_keys!4396 (v!2971 (underlying!379 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1375 (ValueCell!1014 V!3267) V!3267)

(declare-fun dynLambda!397 (Int (_ BitVec 64)) V!3267)

(assert (=> b!113942 (= lt!59203 (get!1375 (select (arr!2099 (_values!2657 (v!2971 (underlying!379 thiss!992)))) from!355) (dynLambda!397 (defaultEntry!2674 (v!2971 (underlying!379 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!56128 () Bool)

(declare-fun e!74049 () Bool)

(assert (=> start!13072 (=> (not res!56128) (not e!74049))))

(declare-fun valid!432 (LongMap!736) Bool)

(assert (=> start!13072 (= res!56128 (valid!432 thiss!992))))

(assert (=> start!13072 e!74049))

(assert (=> start!13072 e!74046))

(assert (=> start!13072 true))

(declare-fun e!74057 () Bool)

(assert (=> start!13072 e!74057))

(declare-fun b!113943 () Bool)

(declare-fun e!74052 () Bool)

(declare-fun tp_is_empty!2715 () Bool)

(assert (=> b!113943 (= e!74052 tp_is_empty!2715)))

(declare-fun mapNonEmpty!4073 () Bool)

(declare-fun mapRes!4073 () Bool)

(declare-fun tp!10149 () Bool)

(declare-fun e!74047 () Bool)

(assert (=> mapNonEmpty!4073 (= mapRes!4073 (and tp!10149 e!74047))))

(declare-fun mapValue!4074 () ValueCell!1014)

(declare-fun mapRest!4074 () (Array (_ BitVec 32) ValueCell!1014))

(declare-fun mapKey!4074 () (_ BitVec 32))

(assert (=> mapNonEmpty!4073 (= (arr!2099 (_values!2657 newMap!16)) (store mapRest!4074 mapKey!4074 mapValue!4074))))

(declare-fun mapIsEmpty!4073 () Bool)

(assert (=> mapIsEmpty!4073 mapRes!4073))

(declare-fun e!74042 () Bool)

(declare-fun e!74041 () Bool)

(declare-fun array_inv!1263 (array!4430) Bool)

(declare-fun array_inv!1264 (array!4432) Bool)

(assert (=> b!113944 (= e!74041 (and tp!10151 tp_is_empty!2715 (array_inv!1263 (_keys!4396 (v!2971 (underlying!379 thiss!992)))) (array_inv!1264 (_values!2657 (v!2971 (underlying!379 thiss!992)))) e!74042))))

(declare-fun b!113945 () Bool)

(declare-fun e!74043 () Bool)

(assert (=> b!113945 (= e!74043 tp_is_empty!2715)))

(declare-fun b!113946 () Bool)

(declare-fun Unit!3569 () Unit!3567)

(assert (=> b!113946 (= e!74045 Unit!3569)))

(declare-fun b!113947 () Bool)

(declare-fun res!56126 () Bool)

(assert (=> b!113947 (=> (not res!56126) (not e!74049))))

(declare-fun valid!433 (LongMapFixedSize!936) Bool)

(assert (=> b!113947 (= res!56126 (valid!433 newMap!16))))

(declare-fun b!113948 () Bool)

(assert (=> b!113948 (= e!74049 e!74050)))

(declare-fun res!56132 () Bool)

(assert (=> b!113948 (=> (not res!56132) (not e!74050))))

(declare-fun lt!59213 () ListLongMap!1609)

(assert (=> b!113948 (= res!56132 (= lt!59213 lt!59207))))

(declare-fun map!1307 (LongMapFixedSize!936) ListLongMap!1609)

(assert (=> b!113948 (= lt!59207 (map!1307 newMap!16))))

(declare-fun getCurrentListMap!496 (array!4430 array!4432 (_ BitVec 32) (_ BitVec 32) V!3267 V!3267 (_ BitVec 32) Int) ListLongMap!1609)

(assert (=> b!113948 (= lt!59213 (getCurrentListMap!496 (_keys!4396 (v!2971 (underlying!379 thiss!992))) (_values!2657 (v!2971 (underlying!379 thiss!992))) (mask!6864 (v!2971 (underlying!379 thiss!992))) (extraKeys!2463 (v!2971 (underlying!379 thiss!992))) (zeroValue!2541 (v!2971 (underlying!379 thiss!992))) (minValue!2541 (v!2971 (underlying!379 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2674 (v!2971 (underlying!379 thiss!992)))))))

(declare-fun b!113949 () Bool)

(declare-fun e!74054 () Bool)

(assert (=> b!113949 (= e!74054 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000))))

(declare-fun b!113950 () Bool)

(declare-fun res!56127 () Bool)

(assert (=> b!113950 (=> res!56127 e!74054)))

(declare-datatypes ((List!1666 0))(
  ( (Nil!1663) (Cons!1662 (h!2262 (_ BitVec 64)) (t!5868 List!1666)) )
))
(declare-fun arrayNoDuplicates!0 (array!4430 (_ BitVec 32) List!1666) Bool)

(assert (=> b!113950 (= res!56127 (not (arrayNoDuplicates!0 (_keys!4396 (v!2971 (underlying!379 thiss!992))) #b00000000000000000000000000000000 Nil!1663)))))

(declare-fun e!74055 () Bool)

(assert (=> b!113951 (= e!74057 (and tp!10150 tp_is_empty!2715 (array_inv!1263 (_keys!4396 newMap!16)) (array_inv!1264 (_values!2657 newMap!16)) e!74055))))

(declare-fun mapIsEmpty!4074 () Bool)

(declare-fun mapRes!4074 () Bool)

(assert (=> mapIsEmpty!4074 mapRes!4074))

(declare-fun b!113952 () Bool)

(declare-fun res!56124 () Bool)

(assert (=> b!113952 (=> (not res!56124) (not e!74049))))

(assert (=> b!113952 (= res!56124 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2358 (_keys!4396 (v!2971 (underlying!379 thiss!992)))))))))

(declare-fun b!113953 () Bool)

(declare-fun res!56134 () Bool)

(assert (=> b!113953 (=> res!56134 e!74054)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4430 (_ BitVec 32)) Bool)

(assert (=> b!113953 (= res!56134 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4396 (v!2971 (underlying!379 thiss!992))) (mask!6864 (v!2971 (underlying!379 thiss!992))))))))

(declare-fun mapNonEmpty!4074 () Bool)

(declare-fun tp!10152 () Bool)

(declare-fun e!74056 () Bool)

(assert (=> mapNonEmpty!4074 (= mapRes!4074 (and tp!10152 e!74056))))

(declare-fun mapKey!4073 () (_ BitVec 32))

(declare-fun mapRest!4073 () (Array (_ BitVec 32) ValueCell!1014))

(declare-fun mapValue!4073 () ValueCell!1014)

(assert (=> mapNonEmpty!4074 (= (arr!2099 (_values!2657 (v!2971 (underlying!379 thiss!992)))) (store mapRest!4073 mapKey!4073 mapValue!4073))))

(declare-fun b!113954 () Bool)

(assert (=> b!113954 (= e!74055 (and e!74052 mapRes!4073))))

(declare-fun condMapEmpty!4073 () Bool)

(declare-fun mapDefault!4074 () ValueCell!1014)

(assert (=> b!113954 (= condMapEmpty!4073 (= (arr!2099 (_values!2657 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1014)) mapDefault!4074)))))

(declare-fun b!113955 () Bool)

(declare-fun Unit!3570 () Unit!3567)

(assert (=> b!113955 (= e!74045 Unit!3570)))

(declare-fun lt!59202 () Unit!3567)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!122 (array!4430 array!4432 (_ BitVec 32) (_ BitVec 32) V!3267 V!3267 (_ BitVec 64) (_ BitVec 32) Int) Unit!3567)

(assert (=> b!113955 (= lt!59202 (lemmaListMapContainsThenArrayContainsFrom!122 (_keys!4396 (v!2971 (underlying!379 thiss!992))) (_values!2657 (v!2971 (underlying!379 thiss!992))) (mask!6864 (v!2971 (underlying!379 thiss!992))) (extraKeys!2463 (v!2971 (underlying!379 thiss!992))) (zeroValue!2541 (v!2971 (underlying!379 thiss!992))) (minValue!2541 (v!2971 (underlying!379 thiss!992))) (select (arr!2098 (_keys!4396 (v!2971 (underlying!379 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2674 (v!2971 (underlying!379 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!113955 (arrayContainsKey!0 (_keys!4396 (v!2971 (underlying!379 thiss!992))) (select (arr!2098 (_keys!4396 (v!2971 (underlying!379 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!59208 () Unit!3567)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4430 (_ BitVec 32) (_ BitVec 32)) Unit!3567)

(assert (=> b!113955 (= lt!59208 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4396 (v!2971 (underlying!379 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> b!113955 (arrayNoDuplicates!0 (_keys!4396 (v!2971 (underlying!379 thiss!992))) from!355 Nil!1663)))

(declare-fun lt!59209 () Unit!3567)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4430 (_ BitVec 32) (_ BitVec 64) List!1666) Unit!3567)

(assert (=> b!113955 (= lt!59209 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4396 (v!2971 (underlying!379 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2098 (_keys!4396 (v!2971 (underlying!379 thiss!992)))) from!355) (Cons!1662 (select (arr!2098 (_keys!4396 (v!2971 (underlying!379 thiss!992)))) from!355) Nil!1663)))))

(assert (=> b!113955 false))

(declare-fun b!113956 () Bool)

(assert (=> b!113956 (= e!74042 (and e!74043 mapRes!4074))))

(declare-fun condMapEmpty!4074 () Bool)

(declare-fun mapDefault!4073 () ValueCell!1014)

(assert (=> b!113956 (= condMapEmpty!4074 (= (arr!2099 (_values!2657 (v!2971 (underlying!379 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1014)) mapDefault!4073)))))

(declare-fun b!113957 () Bool)

(declare-fun res!56130 () Bool)

(assert (=> b!113957 (=> (not res!56130) (not e!74049))))

(assert (=> b!113957 (= res!56130 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6864 newMap!16)) (_size!517 (v!2971 (underlying!379 thiss!992)))))))

(declare-fun b!113958 () Bool)

(assert (=> b!113958 (= e!74044 (not e!74054))))

(declare-fun res!56129 () Bool)

(assert (=> b!113958 (=> res!56129 e!74054)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!113958 (= res!56129 (not (validMask!0 (mask!6864 (v!2971 (underlying!379 thiss!992))))))))

(declare-fun lt!59206 () ListLongMap!1609)

(declare-fun lt!59210 () tuple2!2452)

(declare-fun lt!59212 () tuple2!2452)

(declare-fun +!154 (ListLongMap!1609 tuple2!2452) ListLongMap!1609)

(assert (=> b!113958 (= (+!154 (+!154 lt!59206 lt!59210) lt!59212) (+!154 (+!154 lt!59206 lt!59212) lt!59210))))

(assert (=> b!113958 (= lt!59212 (tuple2!2453 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2541 (v!2971 (underlying!379 thiss!992)))))))

(assert (=> b!113958 (= lt!59210 (tuple2!2453 (select (arr!2098 (_keys!4396 (v!2971 (underlying!379 thiss!992)))) from!355) lt!59203))))

(declare-fun lt!59211 () Unit!3567)

(declare-fun addCommutativeForDiffKeys!66 (ListLongMap!1609 (_ BitVec 64) V!3267 (_ BitVec 64) V!3267) Unit!3567)

(assert (=> b!113958 (= lt!59211 (addCommutativeForDiffKeys!66 lt!59206 (select (arr!2098 (_keys!4396 (v!2971 (underlying!379 thiss!992)))) from!355) lt!59203 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2541 (v!2971 (underlying!379 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!121 (array!4430 array!4432 (_ BitVec 32) (_ BitVec 32) V!3267 V!3267 (_ BitVec 32) Int) ListLongMap!1609)

(assert (=> b!113958 (= lt!59206 (getCurrentListMapNoExtraKeys!121 (_keys!4396 (v!2971 (underlying!379 thiss!992))) (_values!2657 (v!2971 (underlying!379 thiss!992))) (mask!6864 (v!2971 (underlying!379 thiss!992))) (extraKeys!2463 (v!2971 (underlying!379 thiss!992))) (zeroValue!2541 (v!2971 (underlying!379 thiss!992))) (minValue!2541 (v!2971 (underlying!379 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2674 (v!2971 (underlying!379 thiss!992)))))))

(declare-fun b!113959 () Bool)

(assert (=> b!113959 (= e!74047 tp_is_empty!2715)))

(declare-fun b!113960 () Bool)

(declare-fun res!56131 () Bool)

(assert (=> b!113960 (=> res!56131 e!74054)))

(assert (=> b!113960 (= res!56131 (or (not (= (size!2359 (_values!2657 (v!2971 (underlying!379 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6864 (v!2971 (underlying!379 thiss!992)))))) (not (= (size!2358 (_keys!4396 (v!2971 (underlying!379 thiss!992)))) (size!2359 (_values!2657 (v!2971 (underlying!379 thiss!992)))))) (bvslt (mask!6864 (v!2971 (underlying!379 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2463 (v!2971 (underlying!379 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2463 (v!2971 (underlying!379 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!113961 () Bool)

(assert (=> b!113961 (= e!74056 tp_is_empty!2715)))

(declare-fun b!113962 () Bool)

(assert (=> b!113962 (= e!74058 e!74041)))

(assert (= (and start!13072 res!56128) b!113952))

(assert (= (and b!113952 res!56124) b!113947))

(assert (= (and b!113947 res!56126) b!113957))

(assert (= (and b!113957 res!56130) b!113948))

(assert (= (and b!113948 res!56132) b!113942))

(assert (= (and b!113942 res!56125) b!113941))

(assert (= (and b!113941 c!20437) b!113955))

(assert (= (and b!113941 (not c!20437)) b!113946))

(assert (= (and b!113941 res!56133) b!113958))

(assert (= (and b!113958 (not res!56129)) b!113960))

(assert (= (and b!113960 (not res!56131)) b!113953))

(assert (= (and b!113953 (not res!56134)) b!113950))

(assert (= (and b!113950 (not res!56127)) b!113949))

(assert (= (and b!113956 condMapEmpty!4074) mapIsEmpty!4074))

(assert (= (and b!113956 (not condMapEmpty!4074)) mapNonEmpty!4074))

(get-info :version)

(assert (= (and mapNonEmpty!4074 ((_ is ValueCellFull!1014) mapValue!4073)) b!113961))

(assert (= (and b!113956 ((_ is ValueCellFull!1014) mapDefault!4073)) b!113945))

(assert (= b!113944 b!113956))

(assert (= b!113962 b!113944))

(assert (= b!113940 b!113962))

(assert (= start!13072 b!113940))

(assert (= (and b!113954 condMapEmpty!4073) mapIsEmpty!4073))

(assert (= (and b!113954 (not condMapEmpty!4073)) mapNonEmpty!4073))

(assert (= (and mapNonEmpty!4073 ((_ is ValueCellFull!1014) mapValue!4074)) b!113959))

(assert (= (and b!113954 ((_ is ValueCellFull!1014) mapDefault!4074)) b!113943))

(assert (= b!113951 b!113954))

(assert (= start!13072 b!113951))

(declare-fun b_lambda!5125 () Bool)

(assert (=> (not b_lambda!5125) (not b!113942)))

(declare-fun t!5864 () Bool)

(declare-fun tb!2165 () Bool)

(assert (=> (and b!113944 (= (defaultEntry!2674 (v!2971 (underlying!379 thiss!992))) (defaultEntry!2674 (v!2971 (underlying!379 thiss!992)))) t!5864) tb!2165))

(declare-fun result!3611 () Bool)

(assert (=> tb!2165 (= result!3611 tp_is_empty!2715)))

(assert (=> b!113942 t!5864))

(declare-fun b_and!7013 () Bool)

(assert (= b_and!7009 (and (=> t!5864 result!3611) b_and!7013)))

(declare-fun tb!2167 () Bool)

(declare-fun t!5866 () Bool)

(assert (=> (and b!113951 (= (defaultEntry!2674 newMap!16) (defaultEntry!2674 (v!2971 (underlying!379 thiss!992)))) t!5866) tb!2167))

(declare-fun result!3615 () Bool)

(assert (= result!3615 result!3611))

(assert (=> b!113942 t!5866))

(declare-fun b_and!7015 () Bool)

(assert (= b_and!7011 (and (=> t!5866 result!3615) b_and!7015)))

(declare-fun m!130441 () Bool)

(assert (=> b!113948 m!130441))

(declare-fun m!130443 () Bool)

(assert (=> b!113948 m!130443))

(declare-fun m!130445 () Bool)

(assert (=> b!113958 m!130445))

(declare-fun m!130447 () Bool)

(assert (=> b!113958 m!130447))

(declare-fun m!130449 () Bool)

(assert (=> b!113958 m!130449))

(assert (=> b!113958 m!130447))

(declare-fun m!130451 () Bool)

(assert (=> b!113958 m!130451))

(declare-fun m!130453 () Bool)

(assert (=> b!113958 m!130453))

(declare-fun m!130455 () Bool)

(assert (=> b!113958 m!130455))

(assert (=> b!113958 m!130449))

(declare-fun m!130457 () Bool)

(assert (=> b!113958 m!130457))

(assert (=> b!113958 m!130453))

(declare-fun m!130459 () Bool)

(assert (=> b!113958 m!130459))

(declare-fun m!130461 () Bool)

(assert (=> mapNonEmpty!4074 m!130461))

(assert (=> b!113942 m!130449))

(declare-fun m!130463 () Bool)

(assert (=> b!113942 m!130463))

(declare-fun m!130465 () Bool)

(assert (=> b!113942 m!130465))

(assert (=> b!113942 m!130463))

(assert (=> b!113942 m!130465))

(declare-fun m!130467 () Bool)

(assert (=> b!113942 m!130467))

(assert (=> b!113941 m!130449))

(assert (=> b!113941 m!130449))

(declare-fun m!130469 () Bool)

(assert (=> b!113941 m!130469))

(assert (=> b!113941 m!130449))

(declare-fun m!130471 () Bool)

(assert (=> b!113941 m!130471))

(declare-fun m!130473 () Bool)

(assert (=> b!113944 m!130473))

(declare-fun m!130475 () Bool)

(assert (=> b!113944 m!130475))

(declare-fun m!130477 () Bool)

(assert (=> start!13072 m!130477))

(declare-fun m!130479 () Bool)

(assert (=> b!113951 m!130479))

(declare-fun m!130481 () Bool)

(assert (=> b!113951 m!130481))

(declare-fun m!130483 () Bool)

(assert (=> b!113947 m!130483))

(declare-fun m!130485 () Bool)

(assert (=> mapNonEmpty!4073 m!130485))

(declare-fun m!130487 () Bool)

(assert (=> b!113955 m!130487))

(declare-fun m!130489 () Bool)

(assert (=> b!113955 m!130489))

(assert (=> b!113955 m!130449))

(declare-fun m!130491 () Bool)

(assert (=> b!113955 m!130491))

(assert (=> b!113955 m!130449))

(assert (=> b!113955 m!130449))

(declare-fun m!130493 () Bool)

(assert (=> b!113955 m!130493))

(assert (=> b!113955 m!130449))

(declare-fun m!130495 () Bool)

(assert (=> b!113955 m!130495))

(declare-fun m!130497 () Bool)

(assert (=> b!113953 m!130497))

(declare-fun m!130499 () Bool)

(assert (=> b!113950 m!130499))

(check-sat b_and!7015 (not b_next!2599) (not b!113947) (not mapNonEmpty!4073) (not b_next!2597) (not mapNonEmpty!4074) (not b!113941) b_and!7013 (not b!113951) (not b!113942) (not b!113953) (not b!113944) tp_is_empty!2715 (not b!113955) (not b!113950) (not start!13072) (not b_lambda!5125) (not b!113958) (not b!113948))
(check-sat b_and!7013 b_and!7015 (not b_next!2597) (not b_next!2599))
