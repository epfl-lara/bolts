; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11120 () Bool)

(assert start!11120)

(declare-fun b!90704 () Bool)

(declare-fun b_free!2309 () Bool)

(declare-fun b_next!2309 () Bool)

(assert (=> b!90704 (= b_free!2309 (not b_next!2309))))

(declare-fun tp!9178 () Bool)

(declare-fun b_and!5469 () Bool)

(assert (=> b!90704 (= tp!9178 b_and!5469)))

(declare-fun b!90701 () Bool)

(declare-fun b_free!2311 () Bool)

(declare-fun b_next!2311 () Bool)

(assert (=> b!90701 (= b_free!2311 (not b_next!2311))))

(declare-fun tp!9176 () Bool)

(declare-fun b_and!5471 () Bool)

(assert (=> b!90701 (= tp!9176 b_and!5471)))

(declare-fun e!59131 () Bool)

(declare-fun e!59142 () Bool)

(declare-fun tp_is_empty!2571 () Bool)

(declare-datatypes ((V!3075 0))(
  ( (V!3076 (val!1330 Int)) )
))
(declare-datatypes ((array!4108 0))(
  ( (array!4109 (arr!1954 (Array (_ BitVec 32) (_ BitVec 64))) (size!2201 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!942 0))(
  ( (ValueCellFull!942 (v!2707 V!3075)) (EmptyCell!942) )
))
(declare-datatypes ((array!4110 0))(
  ( (array!4111 (arr!1955 (Array (_ BitVec 32) ValueCell!942)) (size!2202 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!792 0))(
  ( (LongMapFixedSize!793 (defaultEntry!2397 Int) (mask!6453 (_ BitVec 32)) (extraKeys!2228 (_ BitVec 32)) (zeroValue!2285 V!3075) (minValue!2285 V!3075) (_size!445 (_ BitVec 32)) (_keys!4077 array!4108) (_values!2380 array!4110) (_vacant!445 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!792)

(declare-fun array_inv!1171 (array!4108) Bool)

(declare-fun array_inv!1172 (array!4110) Bool)

(assert (=> b!90701 (= e!59142 (and tp!9176 tp_is_empty!2571 (array_inv!1171 (_keys!4077 newMap!16)) (array_inv!1172 (_values!2380 newMap!16)) e!59131))))

(declare-fun b!90702 () Bool)

(declare-fun e!59132 () Bool)

(declare-fun e!59135 () Bool)

(assert (=> b!90702 (= e!59132 e!59135)))

(declare-fun res!46243 () Bool)

(assert (=> b!90702 (=> (not res!46243) (not e!59135))))

(declare-datatypes ((Cell!596 0))(
  ( (Cell!597 (v!2708 LongMapFixedSize!792)) )
))
(declare-datatypes ((LongMap!596 0))(
  ( (LongMap!597 (underlying!309 Cell!596)) )
))
(declare-fun thiss!992 () LongMap!596)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!90702 (= res!46243 (and (not (= (select (arr!1954 (_keys!4077 (v!2708 (underlying!309 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1954 (_keys!4077 (v!2708 (underlying!309 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!43941 () V!3075)

(declare-fun get!1244 (ValueCell!942 V!3075) V!3075)

(declare-fun dynLambda!361 (Int (_ BitVec 64)) V!3075)

(assert (=> b!90702 (= lt!43941 (get!1244 (select (arr!1955 (_values!2380 (v!2708 (underlying!309 thiss!992)))) from!355) (dynLambda!361 (defaultEntry!2397 (v!2708 (underlying!309 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!90703 () Bool)

(declare-fun e!59129 () Bool)

(assert (=> b!90703 (= e!59129 tp_is_empty!2571)))

(declare-fun mapIsEmpty!3531 () Bool)

(declare-fun mapRes!3532 () Bool)

(assert (=> mapIsEmpty!3531 mapRes!3532))

(declare-fun e!59141 () Bool)

(declare-fun e!59140 () Bool)

(assert (=> b!90704 (= e!59141 (and tp!9178 tp_is_empty!2571 (array_inv!1171 (_keys!4077 (v!2708 (underlying!309 thiss!992)))) (array_inv!1172 (_values!2380 (v!2708 (underlying!309 thiss!992)))) e!59140))))

(declare-fun b!90705 () Bool)

(declare-fun e!59145 () Bool)

(assert (=> b!90705 (= e!59145 e!59141)))

(declare-fun res!46240 () Bool)

(declare-fun e!59144 () Bool)

(assert (=> start!11120 (=> (not res!46240) (not e!59144))))

(declare-fun valid!349 (LongMap!596) Bool)

(assert (=> start!11120 (= res!46240 (valid!349 thiss!992))))

(assert (=> start!11120 e!59144))

(declare-fun e!59143 () Bool)

(assert (=> start!11120 e!59143))

(assert (=> start!11120 true))

(assert (=> start!11120 e!59142))

(declare-fun b!90706 () Bool)

(assert (=> b!90706 (= e!59144 e!59132)))

(declare-fun res!46238 () Bool)

(assert (=> b!90706 (=> (not res!46238) (not e!59132))))

(declare-datatypes ((tuple2!2272 0))(
  ( (tuple2!2273 (_1!1146 (_ BitVec 64)) (_2!1146 V!3075)) )
))
(declare-datatypes ((List!1574 0))(
  ( (Nil!1571) (Cons!1570 (h!2162 tuple2!2272) (t!5388 List!1574)) )
))
(declare-datatypes ((ListLongMap!1509 0))(
  ( (ListLongMap!1510 (toList!770 List!1574)) )
))
(declare-fun lt!43939 () ListLongMap!1509)

(declare-fun lt!43945 () ListLongMap!1509)

(assert (=> b!90706 (= res!46238 (= lt!43939 lt!43945))))

(declare-fun map!1216 (LongMapFixedSize!792) ListLongMap!1509)

(assert (=> b!90706 (= lt!43945 (map!1216 newMap!16))))

(declare-fun getCurrentListMap!452 (array!4108 array!4110 (_ BitVec 32) (_ BitVec 32) V!3075 V!3075 (_ BitVec 32) Int) ListLongMap!1509)

(assert (=> b!90706 (= lt!43939 (getCurrentListMap!452 (_keys!4077 (v!2708 (underlying!309 thiss!992))) (_values!2380 (v!2708 (underlying!309 thiss!992))) (mask!6453 (v!2708 (underlying!309 thiss!992))) (extraKeys!2228 (v!2708 (underlying!309 thiss!992))) (zeroValue!2285 (v!2708 (underlying!309 thiss!992))) (minValue!2285 (v!2708 (underlying!309 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2397 (v!2708 (underlying!309 thiss!992)))))))

(declare-fun b!90707 () Bool)

(declare-fun e!59139 () Bool)

(assert (=> b!90707 (= e!59131 (and e!59139 mapRes!3532))))

(declare-fun condMapEmpty!3532 () Bool)

(declare-fun mapDefault!3532 () ValueCell!942)

(assert (=> b!90707 (= condMapEmpty!3532 (= (arr!1955 (_values!2380 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!942)) mapDefault!3532)))))

(declare-fun b!90708 () Bool)

(declare-fun e!59133 () Bool)

(declare-fun e!59128 () Bool)

(assert (=> b!90708 (= e!59133 (not e!59128))))

(declare-fun res!46244 () Bool)

(assert (=> b!90708 (=> res!46244 e!59128)))

(declare-datatypes ((tuple2!2274 0))(
  ( (tuple2!2275 (_1!1147 Bool) (_2!1147 LongMapFixedSize!792)) )
))
(declare-fun lt!43943 () tuple2!2274)

(assert (=> b!90708 (= res!46244 (not (= (getCurrentListMap!452 (_keys!4077 (v!2708 (underlying!309 thiss!992))) (_values!2380 (v!2708 (underlying!309 thiss!992))) (mask!6453 (v!2708 (underlying!309 thiss!992))) (extraKeys!2228 (v!2708 (underlying!309 thiss!992))) (zeroValue!2285 (v!2708 (underlying!309 thiss!992))) (minValue!2285 (v!2708 (underlying!309 thiss!992))) from!355 (defaultEntry!2397 (v!2708 (underlying!309 thiss!992)))) (map!1216 (_2!1147 lt!43943)))))))

(declare-fun lt!43934 () tuple2!2272)

(declare-fun lt!43929 () tuple2!2272)

(declare-fun lt!43940 () ListLongMap!1509)

(declare-fun lt!43933 () ListLongMap!1509)

(declare-fun +!126 (ListLongMap!1509 tuple2!2272) ListLongMap!1509)

(assert (=> b!90708 (= (+!126 lt!43940 lt!43929) (+!126 (+!126 lt!43933 lt!43929) lt!43934))))

(assert (=> b!90708 (= lt!43929 (tuple2!2273 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2285 (v!2708 (underlying!309 thiss!992)))))))

(declare-datatypes ((Unit!2715 0))(
  ( (Unit!2716) )
))
(declare-fun lt!43931 () Unit!2715)

(declare-fun addCommutativeForDiffKeys!45 (ListLongMap!1509 (_ BitVec 64) V!3075 (_ BitVec 64) V!3075) Unit!2715)

(assert (=> b!90708 (= lt!43931 (addCommutativeForDiffKeys!45 lt!43933 (select (arr!1954 (_keys!4077 (v!2708 (underlying!309 thiss!992)))) from!355) lt!43941 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2285 (v!2708 (underlying!309 thiss!992)))))))

(declare-fun lt!43936 () ListLongMap!1509)

(assert (=> b!90708 (= lt!43936 lt!43940)))

(assert (=> b!90708 (= lt!43940 (+!126 lt!43933 lt!43934))))

(declare-fun lt!43942 () ListLongMap!1509)

(declare-fun lt!43930 () tuple2!2272)

(assert (=> b!90708 (= lt!43936 (+!126 lt!43942 lt!43930))))

(declare-fun lt!43937 () ListLongMap!1509)

(assert (=> b!90708 (= lt!43933 (+!126 lt!43937 lt!43930))))

(assert (=> b!90708 (= lt!43930 (tuple2!2273 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2285 (v!2708 (underlying!309 thiss!992)))))))

(assert (=> b!90708 (= lt!43942 (+!126 lt!43937 lt!43934))))

(assert (=> b!90708 (= lt!43934 (tuple2!2273 (select (arr!1954 (_keys!4077 (v!2708 (underlying!309 thiss!992)))) from!355) lt!43941))))

(declare-fun lt!43935 () Unit!2715)

(assert (=> b!90708 (= lt!43935 (addCommutativeForDiffKeys!45 lt!43937 (select (arr!1954 (_keys!4077 (v!2708 (underlying!309 thiss!992)))) from!355) lt!43941 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2285 (v!2708 (underlying!309 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!90 (array!4108 array!4110 (_ BitVec 32) (_ BitVec 32) V!3075 V!3075 (_ BitVec 32) Int) ListLongMap!1509)

(assert (=> b!90708 (= lt!43937 (getCurrentListMapNoExtraKeys!90 (_keys!4077 (v!2708 (underlying!309 thiss!992))) (_values!2380 (v!2708 (underlying!309 thiss!992))) (mask!6453 (v!2708 (underlying!309 thiss!992))) (extraKeys!2228 (v!2708 (underlying!309 thiss!992))) (zeroValue!2285 (v!2708 (underlying!309 thiss!992))) (minValue!2285 (v!2708 (underlying!309 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2397 (v!2708 (underlying!309 thiss!992)))))))

(declare-fun mapIsEmpty!3532 () Bool)

(declare-fun mapRes!3531 () Bool)

(assert (=> mapIsEmpty!3532 mapRes!3531))

(declare-fun b!90709 () Bool)

(assert (=> b!90709 (= e!59135 e!59133)))

(declare-fun res!46241 () Bool)

(assert (=> b!90709 (=> (not res!46241) (not e!59133))))

(assert (=> b!90709 (= res!46241 (and (_1!1147 lt!43943) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!43932 () Unit!2715)

(declare-fun e!59137 () Unit!2715)

(assert (=> b!90709 (= lt!43932 e!59137)))

(declare-fun c!15064 () Bool)

(declare-fun contains!778 (ListLongMap!1509 (_ BitVec 64)) Bool)

(assert (=> b!90709 (= c!15064 (contains!778 lt!43945 (select (arr!1954 (_keys!4077 (v!2708 (underlying!309 thiss!992)))) from!355)))))

(declare-fun update!130 (LongMapFixedSize!792 (_ BitVec 64) V!3075) tuple2!2274)

(assert (=> b!90709 (= lt!43943 (update!130 newMap!16 (select (arr!1954 (_keys!4077 (v!2708 (underlying!309 thiss!992)))) from!355) lt!43941))))

(declare-fun b!90710 () Bool)

(declare-fun e!59138 () Bool)

(assert (=> b!90710 (= e!59138 tp_is_empty!2571)))

(declare-fun b!90711 () Bool)

(declare-fun Unit!2717 () Unit!2715)

(assert (=> b!90711 (= e!59137 Unit!2717)))

(declare-fun lt!43944 () Unit!2715)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!82 (array!4108 array!4110 (_ BitVec 32) (_ BitVec 32) V!3075 V!3075 (_ BitVec 64) (_ BitVec 32) Int) Unit!2715)

(assert (=> b!90711 (= lt!43944 (lemmaListMapContainsThenArrayContainsFrom!82 (_keys!4077 (v!2708 (underlying!309 thiss!992))) (_values!2380 (v!2708 (underlying!309 thiss!992))) (mask!6453 (v!2708 (underlying!309 thiss!992))) (extraKeys!2228 (v!2708 (underlying!309 thiss!992))) (zeroValue!2285 (v!2708 (underlying!309 thiss!992))) (minValue!2285 (v!2708 (underlying!309 thiss!992))) (select (arr!1954 (_keys!4077 (v!2708 (underlying!309 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2397 (v!2708 (underlying!309 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!90711 (arrayContainsKey!0 (_keys!4077 (v!2708 (underlying!309 thiss!992))) (select (arr!1954 (_keys!4077 (v!2708 (underlying!309 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!43938 () Unit!2715)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4108 (_ BitVec 32) (_ BitVec 32)) Unit!2715)

(assert (=> b!90711 (= lt!43938 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4077 (v!2708 (underlying!309 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1575 0))(
  ( (Nil!1572) (Cons!1571 (h!2163 (_ BitVec 64)) (t!5389 List!1575)) )
))
(declare-fun arrayNoDuplicates!0 (array!4108 (_ BitVec 32) List!1575) Bool)

(assert (=> b!90711 (arrayNoDuplicates!0 (_keys!4077 (v!2708 (underlying!309 thiss!992))) from!355 Nil!1572)))

(declare-fun lt!43946 () Unit!2715)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4108 (_ BitVec 32) (_ BitVec 64) List!1575) Unit!2715)

(assert (=> b!90711 (= lt!43946 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4077 (v!2708 (underlying!309 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1954 (_keys!4077 (v!2708 (underlying!309 thiss!992)))) from!355) (Cons!1571 (select (arr!1954 (_keys!4077 (v!2708 (underlying!309 thiss!992)))) from!355) Nil!1572)))))

(assert (=> b!90711 false))

(declare-fun mapNonEmpty!3531 () Bool)

(declare-fun tp!9175 () Bool)

(assert (=> mapNonEmpty!3531 (= mapRes!3531 (and tp!9175 e!59138))))

(declare-fun mapValue!3531 () ValueCell!942)

(declare-fun mapKey!3532 () (_ BitVec 32))

(declare-fun mapRest!3531 () (Array (_ BitVec 32) ValueCell!942))

(assert (=> mapNonEmpty!3531 (= (arr!1955 (_values!2380 (v!2708 (underlying!309 thiss!992)))) (store mapRest!3531 mapKey!3532 mapValue!3531))))

(declare-fun b!90712 () Bool)

(declare-fun e!59136 () Bool)

(assert (=> b!90712 (= e!59136 tp_is_empty!2571)))

(declare-fun b!90713 () Bool)

(declare-fun Unit!2718 () Unit!2715)

(assert (=> b!90713 (= e!59137 Unit!2718)))

(declare-fun b!90714 () Bool)

(assert (=> b!90714 (= e!59140 (and e!59136 mapRes!3531))))

(declare-fun condMapEmpty!3531 () Bool)

(declare-fun mapDefault!3531 () ValueCell!942)

(assert (=> b!90714 (= condMapEmpty!3531 (= (arr!1955 (_values!2380 (v!2708 (underlying!309 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!942)) mapDefault!3531)))))

(declare-fun b!90715 () Bool)

(declare-fun res!46245 () Bool)

(assert (=> b!90715 (=> (not res!46245) (not e!59144))))

(assert (=> b!90715 (= res!46245 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6453 newMap!16)) (_size!445 (v!2708 (underlying!309 thiss!992)))))))

(declare-fun b!90716 () Bool)

(assert (=> b!90716 (= e!59128 (bvslt (bvsub from!355 #b00000000000000000000000000000001) (size!2201 (_keys!4077 (v!2708 (underlying!309 thiss!992))))))))

(declare-fun b!90717 () Bool)

(assert (=> b!90717 (= e!59139 tp_is_empty!2571)))

(declare-fun b!90718 () Bool)

(assert (=> b!90718 (= e!59143 e!59145)))

(declare-fun b!90719 () Bool)

(declare-fun res!46239 () Bool)

(assert (=> b!90719 (=> (not res!46239) (not e!59144))))

(assert (=> b!90719 (= res!46239 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2201 (_keys!4077 (v!2708 (underlying!309 thiss!992)))))))))

(declare-fun b!90720 () Bool)

(declare-fun res!46242 () Bool)

(assert (=> b!90720 (=> (not res!46242) (not e!59144))))

(declare-fun valid!350 (LongMapFixedSize!792) Bool)

(assert (=> b!90720 (= res!46242 (valid!350 newMap!16))))

(declare-fun mapNonEmpty!3532 () Bool)

(declare-fun tp!9177 () Bool)

(assert (=> mapNonEmpty!3532 (= mapRes!3532 (and tp!9177 e!59129))))

(declare-fun mapRest!3532 () (Array (_ BitVec 32) ValueCell!942))

(declare-fun mapValue!3532 () ValueCell!942)

(declare-fun mapKey!3531 () (_ BitVec 32))

(assert (=> mapNonEmpty!3532 (= (arr!1955 (_values!2380 newMap!16)) (store mapRest!3532 mapKey!3531 mapValue!3532))))

(assert (= (and start!11120 res!46240) b!90719))

(assert (= (and b!90719 res!46239) b!90720))

(assert (= (and b!90720 res!46242) b!90715))

(assert (= (and b!90715 res!46245) b!90706))

(assert (= (and b!90706 res!46238) b!90702))

(assert (= (and b!90702 res!46243) b!90709))

(assert (= (and b!90709 c!15064) b!90711))

(assert (= (and b!90709 (not c!15064)) b!90713))

(assert (= (and b!90709 res!46241) b!90708))

(assert (= (and b!90708 (not res!46244)) b!90716))

(assert (= (and b!90714 condMapEmpty!3531) mapIsEmpty!3532))

(assert (= (and b!90714 (not condMapEmpty!3531)) mapNonEmpty!3531))

(get-info :version)

(assert (= (and mapNonEmpty!3531 ((_ is ValueCellFull!942) mapValue!3531)) b!90710))

(assert (= (and b!90714 ((_ is ValueCellFull!942) mapDefault!3531)) b!90712))

(assert (= b!90704 b!90714))

(assert (= b!90705 b!90704))

(assert (= b!90718 b!90705))

(assert (= start!11120 b!90718))

(assert (= (and b!90707 condMapEmpty!3532) mapIsEmpty!3531))

(assert (= (and b!90707 (not condMapEmpty!3532)) mapNonEmpty!3532))

(assert (= (and mapNonEmpty!3532 ((_ is ValueCellFull!942) mapValue!3532)) b!90703))

(assert (= (and b!90707 ((_ is ValueCellFull!942) mapDefault!3532)) b!90717))

(assert (= b!90701 b!90707))

(assert (= start!11120 b!90701))

(declare-fun b_lambda!4005 () Bool)

(assert (=> (not b_lambda!4005) (not b!90702)))

(declare-fun t!5385 () Bool)

(declare-fun tb!1781 () Bool)

(assert (=> (and b!90704 (= (defaultEntry!2397 (v!2708 (underlying!309 thiss!992))) (defaultEntry!2397 (v!2708 (underlying!309 thiss!992)))) t!5385) tb!1781))

(declare-fun result!3049 () Bool)

(assert (=> tb!1781 (= result!3049 tp_is_empty!2571)))

(assert (=> b!90702 t!5385))

(declare-fun b_and!5473 () Bool)

(assert (= b_and!5469 (and (=> t!5385 result!3049) b_and!5473)))

(declare-fun tb!1783 () Bool)

(declare-fun t!5387 () Bool)

(assert (=> (and b!90701 (= (defaultEntry!2397 newMap!16) (defaultEntry!2397 (v!2708 (underlying!309 thiss!992)))) t!5387) tb!1783))

(declare-fun result!3053 () Bool)

(assert (= result!3053 result!3049))

(assert (=> b!90702 t!5387))

(declare-fun b_and!5475 () Bool)

(assert (= b_and!5471 (and (=> t!5387 result!3053) b_and!5475)))

(declare-fun m!97171 () Bool)

(assert (=> b!90708 m!97171))

(declare-fun m!97173 () Bool)

(assert (=> b!90708 m!97173))

(declare-fun m!97175 () Bool)

(assert (=> b!90708 m!97175))

(assert (=> b!90708 m!97173))

(declare-fun m!97177 () Bool)

(assert (=> b!90708 m!97177))

(declare-fun m!97179 () Bool)

(assert (=> b!90708 m!97179))

(declare-fun m!97181 () Bool)

(assert (=> b!90708 m!97181))

(assert (=> b!90708 m!97173))

(declare-fun m!97183 () Bool)

(assert (=> b!90708 m!97183))

(declare-fun m!97185 () Bool)

(assert (=> b!90708 m!97185))

(declare-fun m!97187 () Bool)

(assert (=> b!90708 m!97187))

(declare-fun m!97189 () Bool)

(assert (=> b!90708 m!97189))

(declare-fun m!97191 () Bool)

(assert (=> b!90708 m!97191))

(declare-fun m!97193 () Bool)

(assert (=> b!90708 m!97193))

(assert (=> b!90708 m!97183))

(declare-fun m!97195 () Bool)

(assert (=> b!90708 m!97195))

(declare-fun m!97197 () Bool)

(assert (=> b!90711 m!97197))

(declare-fun m!97199 () Bool)

(assert (=> b!90711 m!97199))

(assert (=> b!90711 m!97173))

(declare-fun m!97201 () Bool)

(assert (=> b!90711 m!97201))

(assert (=> b!90711 m!97173))

(assert (=> b!90711 m!97173))

(declare-fun m!97203 () Bool)

(assert (=> b!90711 m!97203))

(assert (=> b!90711 m!97173))

(declare-fun m!97205 () Bool)

(assert (=> b!90711 m!97205))

(declare-fun m!97207 () Bool)

(assert (=> b!90720 m!97207))

(declare-fun m!97209 () Bool)

(assert (=> b!90701 m!97209))

(declare-fun m!97211 () Bool)

(assert (=> b!90701 m!97211))

(assert (=> b!90709 m!97173))

(assert (=> b!90709 m!97173))

(declare-fun m!97213 () Bool)

(assert (=> b!90709 m!97213))

(assert (=> b!90709 m!97173))

(declare-fun m!97215 () Bool)

(assert (=> b!90709 m!97215))

(declare-fun m!97217 () Bool)

(assert (=> b!90706 m!97217))

(declare-fun m!97219 () Bool)

(assert (=> b!90706 m!97219))

(declare-fun m!97221 () Bool)

(assert (=> start!11120 m!97221))

(assert (=> b!90702 m!97173))

(declare-fun m!97223 () Bool)

(assert (=> b!90702 m!97223))

(declare-fun m!97225 () Bool)

(assert (=> b!90702 m!97225))

(assert (=> b!90702 m!97223))

(assert (=> b!90702 m!97225))

(declare-fun m!97227 () Bool)

(assert (=> b!90702 m!97227))

(declare-fun m!97229 () Bool)

(assert (=> mapNonEmpty!3532 m!97229))

(declare-fun m!97231 () Bool)

(assert (=> b!90704 m!97231))

(declare-fun m!97233 () Bool)

(assert (=> b!90704 m!97233))

(declare-fun m!97235 () Bool)

(assert (=> mapNonEmpty!3531 m!97235))

(check-sat (not b_next!2309) (not b!90711) (not b!90706) (not b!90708) (not b_next!2311) (not b!90701) (not mapNonEmpty!3532) (not b!90704) (not mapNonEmpty!3531) (not b!90720) (not b_lambda!4005) tp_is_empty!2571 b_and!5473 b_and!5475 (not b!90702) (not start!11120) (not b!90709))
(check-sat b_and!5473 b_and!5475 (not b_next!2309) (not b_next!2311))
