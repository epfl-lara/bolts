; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15210 () Bool)

(assert start!15210)

(declare-fun b!146257 () Bool)

(declare-fun b_free!3101 () Bool)

(declare-fun b_next!3101 () Bool)

(assert (=> b!146257 (= b_free!3101 (not b_next!3101))))

(declare-fun tp!11806 () Bool)

(declare-fun b_and!9145 () Bool)

(assert (=> b!146257 (= tp!11806 b_and!9145)))

(declare-fun b!146263 () Bool)

(declare-fun b_free!3103 () Bool)

(declare-fun b_next!3103 () Bool)

(assert (=> b!146263 (= b_free!3103 (not b_next!3103))))

(declare-fun tp!11808 () Bool)

(declare-fun b_and!9147 () Bool)

(assert (=> b!146263 (= tp!11808 b_and!9147)))

(declare-fun mapIsEmpty!4973 () Bool)

(declare-fun mapRes!4973 () Bool)

(assert (=> mapIsEmpty!4973 mapRes!4973))

(declare-fun b!146254 () Bool)

(declare-fun e!95368 () Bool)

(declare-fun tp_is_empty!2967 () Bool)

(assert (=> b!146254 (= e!95368 tp_is_empty!2967)))

(declare-fun b!146255 () Bool)

(declare-fun e!95361 () Bool)

(declare-fun e!95354 () Bool)

(assert (=> b!146255 (= e!95361 e!95354)))

(declare-fun b!146256 () Bool)

(declare-datatypes ((Unit!4623 0))(
  ( (Unit!4624) )
))
(declare-fun e!95363 () Unit!4623)

(declare-fun Unit!4625 () Unit!4623)

(assert (=> b!146256 (= e!95363 Unit!4625)))

(declare-fun lt!76916 () Unit!4623)

(declare-datatypes ((V!3603 0))(
  ( (V!3604 (val!1528 Int)) )
))
(declare-datatypes ((array!4978 0))(
  ( (array!4979 (arr!2350 (Array (_ BitVec 32) (_ BitVec 64))) (size!2626 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1140 0))(
  ( (ValueCellFull!1140 (v!3344 V!3603)) (EmptyCell!1140) )
))
(declare-datatypes ((array!4980 0))(
  ( (array!4981 (arr!2351 (Array (_ BitVec 32) ValueCell!1140)) (size!2627 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1188 0))(
  ( (LongMapFixedSize!1189 (defaultEntry!3010 Int) (mask!7384 (_ BitVec 32)) (extraKeys!2755 (_ BitVec 32)) (zeroValue!2855 V!3603) (minValue!2855 V!3603) (_size!643 (_ BitVec 32)) (_keys!4779 array!4978) (_values!2993 array!4980) (_vacant!643 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!970 0))(
  ( (Cell!971 (v!3345 LongMapFixedSize!1188)) )
))
(declare-datatypes ((LongMap!970 0))(
  ( (LongMap!971 (underlying!496 Cell!970)) )
))
(declare-fun thiss!992 () LongMap!970)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!154 (array!4978 array!4980 (_ BitVec 32) (_ BitVec 32) V!3603 V!3603 (_ BitVec 64) (_ BitVec 32) Int) Unit!4623)

(assert (=> b!146256 (= lt!76916 (lemmaListMapContainsThenArrayContainsFrom!154 (_keys!4779 (v!3345 (underlying!496 thiss!992))) (_values!2993 (v!3345 (underlying!496 thiss!992))) (mask!7384 (v!3345 (underlying!496 thiss!992))) (extraKeys!2755 (v!3345 (underlying!496 thiss!992))) (zeroValue!2855 (v!3345 (underlying!496 thiss!992))) (minValue!2855 (v!3345 (underlying!496 thiss!992))) (select (arr!2350 (_keys!4779 (v!3345 (underlying!496 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3010 (v!3345 (underlying!496 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!146256 (arrayContainsKey!0 (_keys!4779 (v!3345 (underlying!496 thiss!992))) (select (arr!2350 (_keys!4779 (v!3345 (underlying!496 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!76914 () Unit!4623)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4978 (_ BitVec 32) (_ BitVec 32)) Unit!4623)

(assert (=> b!146256 (= lt!76914 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4779 (v!3345 (underlying!496 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1789 0))(
  ( (Nil!1786) (Cons!1785 (h!2393 (_ BitVec 64)) (t!6482 List!1789)) )
))
(declare-fun arrayNoDuplicates!0 (array!4978 (_ BitVec 32) List!1789) Bool)

(assert (=> b!146256 (arrayNoDuplicates!0 (_keys!4779 (v!3345 (underlying!496 thiss!992))) from!355 Nil!1786)))

(declare-fun lt!76918 () Unit!4623)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4978 (_ BitVec 32) (_ BitVec 64) List!1789) Unit!4623)

(assert (=> b!146256 (= lt!76918 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4779 (v!3345 (underlying!496 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2350 (_keys!4779 (v!3345 (underlying!496 thiss!992)))) from!355) (Cons!1785 (select (arr!2350 (_keys!4779 (v!3345 (underlying!496 thiss!992)))) from!355) Nil!1786)))))

(assert (=> b!146256 false))

(declare-fun res!69602 () Bool)

(declare-fun e!95355 () Bool)

(assert (=> start!15210 (=> (not res!69602) (not e!95355))))

(declare-fun valid!577 (LongMap!970) Bool)

(assert (=> start!15210 (= res!69602 (valid!577 thiss!992))))

(assert (=> start!15210 e!95355))

(assert (=> start!15210 e!95361))

(assert (=> start!15210 true))

(declare-fun e!95356 () Bool)

(assert (=> start!15210 e!95356))

(declare-fun e!95366 () Bool)

(declare-fun e!95357 () Bool)

(declare-fun array_inv!1457 (array!4978) Bool)

(declare-fun array_inv!1458 (array!4980) Bool)

(assert (=> b!146257 (= e!95357 (and tp!11806 tp_is_empty!2967 (array_inv!1457 (_keys!4779 (v!3345 (underlying!496 thiss!992)))) (array_inv!1458 (_values!2993 (v!3345 (underlying!496 thiss!992)))) e!95366))))

(declare-fun b!146258 () Bool)

(declare-fun e!95353 () Bool)

(assert (=> b!146258 (= e!95353 tp_is_empty!2967)))

(declare-fun mapNonEmpty!4973 () Bool)

(declare-fun tp!11807 () Bool)

(assert (=> mapNonEmpty!4973 (= mapRes!4973 (and tp!11807 e!95353))))

(declare-fun mapRest!4973 () (Array (_ BitVec 32) ValueCell!1140))

(declare-fun mapKey!4974 () (_ BitVec 32))

(declare-fun mapValue!4974 () ValueCell!1140)

(assert (=> mapNonEmpty!4973 (= (arr!2351 (_values!2993 (v!3345 (underlying!496 thiss!992)))) (store mapRest!4973 mapKey!4974 mapValue!4974))))

(declare-fun b!146259 () Bool)

(declare-fun res!69601 () Bool)

(assert (=> b!146259 (=> (not res!69601) (not e!95355))))

(declare-fun newMap!16 () LongMapFixedSize!1188)

(declare-fun valid!578 (LongMapFixedSize!1188) Bool)

(assert (=> b!146259 (= res!69601 (valid!578 newMap!16))))

(declare-fun b!146260 () Bool)

(declare-fun e!95367 () Bool)

(declare-fun e!95360 () Bool)

(declare-fun mapRes!4974 () Bool)

(assert (=> b!146260 (= e!95367 (and e!95360 mapRes!4974))))

(declare-fun condMapEmpty!4974 () Bool)

(declare-fun mapDefault!4973 () ValueCell!1140)

(assert (=> b!146260 (= condMapEmpty!4974 (= (arr!2351 (_values!2993 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1140)) mapDefault!4973)))))

(declare-fun b!146261 () Bool)

(declare-fun res!69603 () Bool)

(assert (=> b!146261 (=> (not res!69603) (not e!95355))))

(assert (=> b!146261 (= res!69603 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7384 newMap!16)) (_size!643 (v!3345 (underlying!496 thiss!992)))))))

(declare-fun b!146262 () Bool)

(assert (=> b!146262 (= e!95354 e!95357)))

(assert (=> b!146263 (= e!95356 (and tp!11808 tp_is_empty!2967 (array_inv!1457 (_keys!4779 newMap!16)) (array_inv!1458 (_values!2993 newMap!16)) e!95367))))

(declare-fun b!146264 () Bool)

(declare-fun e!95362 () Bool)

(assert (=> b!146264 (= e!95355 e!95362)))

(declare-fun res!69600 () Bool)

(assert (=> b!146264 (=> (not res!69600) (not e!95362))))

(declare-datatypes ((tuple2!2728 0))(
  ( (tuple2!2729 (_1!1374 (_ BitVec 64)) (_2!1374 V!3603)) )
))
(declare-datatypes ((List!1790 0))(
  ( (Nil!1787) (Cons!1786 (h!2394 tuple2!2728) (t!6483 List!1790)) )
))
(declare-datatypes ((ListLongMap!1771 0))(
  ( (ListLongMap!1772 (toList!901 List!1790)) )
))
(declare-fun lt!76917 () ListLongMap!1771)

(declare-fun lt!76913 () ListLongMap!1771)

(assert (=> b!146264 (= res!69600 (and (= lt!76917 lt!76913) (not (= (select (arr!2350 (_keys!4779 (v!3345 (underlying!496 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2350 (_keys!4779 (v!3345 (underlying!496 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1460 (LongMapFixedSize!1188) ListLongMap!1771)

(assert (=> b!146264 (= lt!76913 (map!1460 newMap!16))))

(declare-fun getCurrentListMap!565 (array!4978 array!4980 (_ BitVec 32) (_ BitVec 32) V!3603 V!3603 (_ BitVec 32) Int) ListLongMap!1771)

(assert (=> b!146264 (= lt!76917 (getCurrentListMap!565 (_keys!4779 (v!3345 (underlying!496 thiss!992))) (_values!2993 (v!3345 (underlying!496 thiss!992))) (mask!7384 (v!3345 (underlying!496 thiss!992))) (extraKeys!2755 (v!3345 (underlying!496 thiss!992))) (zeroValue!2855 (v!3345 (underlying!496 thiss!992))) (minValue!2855 (v!3345 (underlying!496 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3010 (v!3345 (underlying!496 thiss!992)))))))

(declare-fun b!146265 () Bool)

(declare-fun Unit!4626 () Unit!4623)

(assert (=> b!146265 (= e!95363 Unit!4626)))

(declare-fun b!146266 () Bool)

(declare-fun e!95364 () Bool)

(assert (=> b!146266 (= e!95366 (and e!95364 mapRes!4973))))

(declare-fun condMapEmpty!4973 () Bool)

(declare-fun mapDefault!4974 () ValueCell!1140)

(assert (=> b!146266 (= condMapEmpty!4973 (= (arr!2351 (_values!2993 (v!3345 (underlying!496 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1140)) mapDefault!4974)))))

(declare-fun b!146267 () Bool)

(declare-fun e!95365 () Bool)

(assert (=> b!146267 (= e!95365 false)))

(declare-fun lt!76915 () ListLongMap!1771)

(declare-fun getCurrentListMapNoExtraKeys!146 (array!4978 array!4980 (_ BitVec 32) (_ BitVec 32) V!3603 V!3603 (_ BitVec 32) Int) ListLongMap!1771)

(assert (=> b!146267 (= lt!76915 (getCurrentListMapNoExtraKeys!146 (_keys!4779 (v!3345 (underlying!496 thiss!992))) (_values!2993 (v!3345 (underlying!496 thiss!992))) (mask!7384 (v!3345 (underlying!496 thiss!992))) (extraKeys!2755 (v!3345 (underlying!496 thiss!992))) (zeroValue!2855 (v!3345 (underlying!496 thiss!992))) (minValue!2855 (v!3345 (underlying!496 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3010 (v!3345 (underlying!496 thiss!992)))))))

(declare-fun b!146268 () Bool)

(assert (=> b!146268 (= e!95364 tp_is_empty!2967)))

(declare-fun mapIsEmpty!4974 () Bool)

(assert (=> mapIsEmpty!4974 mapRes!4974))

(declare-fun b!146269 () Bool)

(declare-fun res!69598 () Bool)

(assert (=> b!146269 (=> (not res!69598) (not e!95355))))

(assert (=> b!146269 (= res!69598 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2626 (_keys!4779 (v!3345 (underlying!496 thiss!992)))))))))

(declare-fun b!146270 () Bool)

(assert (=> b!146270 (= e!95360 tp_is_empty!2967)))

(declare-fun mapNonEmpty!4974 () Bool)

(declare-fun tp!11805 () Bool)

(assert (=> mapNonEmpty!4974 (= mapRes!4974 (and tp!11805 e!95368))))

(declare-fun mapRest!4974 () (Array (_ BitVec 32) ValueCell!1140))

(declare-fun mapValue!4973 () ValueCell!1140)

(declare-fun mapKey!4973 () (_ BitVec 32))

(assert (=> mapNonEmpty!4974 (= (arr!2351 (_values!2993 newMap!16)) (store mapRest!4974 mapKey!4973 mapValue!4973))))

(declare-fun b!146271 () Bool)

(assert (=> b!146271 (= e!95362 e!95365)))

(declare-fun res!69599 () Bool)

(assert (=> b!146271 (=> (not res!69599) (not e!95365))))

(declare-datatypes ((tuple2!2730 0))(
  ( (tuple2!2731 (_1!1375 Bool) (_2!1375 LongMapFixedSize!1188)) )
))
(declare-fun lt!76919 () tuple2!2730)

(assert (=> b!146271 (= res!69599 (and (_1!1375 lt!76919) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!76920 () Unit!4623)

(assert (=> b!146271 (= lt!76920 e!95363)))

(declare-fun c!27680 () Bool)

(declare-fun contains!943 (ListLongMap!1771 (_ BitVec 64)) Bool)

(assert (=> b!146271 (= c!27680 (contains!943 lt!76913 (select (arr!2350 (_keys!4779 (v!3345 (underlying!496 thiss!992)))) from!355)))))

(declare-fun update!220 (LongMapFixedSize!1188 (_ BitVec 64) V!3603) tuple2!2730)

(declare-fun get!1571 (ValueCell!1140 V!3603) V!3603)

(declare-fun dynLambda!453 (Int (_ BitVec 64)) V!3603)

(assert (=> b!146271 (= lt!76919 (update!220 newMap!16 (select (arr!2350 (_keys!4779 (v!3345 (underlying!496 thiss!992)))) from!355) (get!1571 (select (arr!2351 (_values!2993 (v!3345 (underlying!496 thiss!992)))) from!355) (dynLambda!453 (defaultEntry!3010 (v!3345 (underlying!496 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!15210 res!69602) b!146269))

(assert (= (and b!146269 res!69598) b!146259))

(assert (= (and b!146259 res!69601) b!146261))

(assert (= (and b!146261 res!69603) b!146264))

(assert (= (and b!146264 res!69600) b!146271))

(assert (= (and b!146271 c!27680) b!146256))

(assert (= (and b!146271 (not c!27680)) b!146265))

(assert (= (and b!146271 res!69599) b!146267))

(assert (= (and b!146266 condMapEmpty!4973) mapIsEmpty!4973))

(assert (= (and b!146266 (not condMapEmpty!4973)) mapNonEmpty!4973))

(get-info :version)

(assert (= (and mapNonEmpty!4973 ((_ is ValueCellFull!1140) mapValue!4974)) b!146258))

(assert (= (and b!146266 ((_ is ValueCellFull!1140) mapDefault!4974)) b!146268))

(assert (= b!146257 b!146266))

(assert (= b!146262 b!146257))

(assert (= b!146255 b!146262))

(assert (= start!15210 b!146255))

(assert (= (and b!146260 condMapEmpty!4974) mapIsEmpty!4974))

(assert (= (and b!146260 (not condMapEmpty!4974)) mapNonEmpty!4974))

(assert (= (and mapNonEmpty!4974 ((_ is ValueCellFull!1140) mapValue!4973)) b!146254))

(assert (= (and b!146260 ((_ is ValueCellFull!1140) mapDefault!4973)) b!146270))

(assert (= b!146263 b!146260))

(assert (= start!15210 b!146263))

(declare-fun b_lambda!6581 () Bool)

(assert (=> (not b_lambda!6581) (not b!146271)))

(declare-fun t!6479 () Bool)

(declare-fun tb!2653 () Bool)

(assert (=> (and b!146257 (= (defaultEntry!3010 (v!3345 (underlying!496 thiss!992))) (defaultEntry!3010 (v!3345 (underlying!496 thiss!992)))) t!6479) tb!2653))

(declare-fun result!4331 () Bool)

(assert (=> tb!2653 (= result!4331 tp_is_empty!2967)))

(assert (=> b!146271 t!6479))

(declare-fun b_and!9149 () Bool)

(assert (= b_and!9145 (and (=> t!6479 result!4331) b_and!9149)))

(declare-fun tb!2655 () Bool)

(declare-fun t!6481 () Bool)

(assert (=> (and b!146263 (= (defaultEntry!3010 newMap!16) (defaultEntry!3010 (v!3345 (underlying!496 thiss!992)))) t!6481) tb!2655))

(declare-fun result!4335 () Bool)

(assert (= result!4335 result!4331))

(assert (=> b!146271 t!6481))

(declare-fun b_and!9151 () Bool)

(assert (= b_and!9147 (and (=> t!6481 result!4335) b_and!9151)))

(declare-fun m!176233 () Bool)

(assert (=> b!146263 m!176233))

(declare-fun m!176235 () Bool)

(assert (=> b!146263 m!176235))

(declare-fun m!176237 () Bool)

(assert (=> b!146264 m!176237))

(declare-fun m!176239 () Bool)

(assert (=> b!146264 m!176239))

(declare-fun m!176241 () Bool)

(assert (=> b!146264 m!176241))

(declare-fun m!176243 () Bool)

(assert (=> mapNonEmpty!4974 m!176243))

(declare-fun m!176245 () Bool)

(assert (=> b!146259 m!176245))

(declare-fun m!176247 () Bool)

(assert (=> start!15210 m!176247))

(assert (=> b!146271 m!176237))

(declare-fun m!176249 () Bool)

(assert (=> b!146271 m!176249))

(declare-fun m!176251 () Bool)

(assert (=> b!146271 m!176251))

(declare-fun m!176253 () Bool)

(assert (=> b!146271 m!176253))

(declare-fun m!176255 () Bool)

(assert (=> b!146271 m!176255))

(assert (=> b!146271 m!176237))

(assert (=> b!146271 m!176253))

(assert (=> b!146271 m!176237))

(assert (=> b!146271 m!176255))

(declare-fun m!176257 () Bool)

(assert (=> b!146271 m!176257))

(assert (=> b!146271 m!176251))

(declare-fun m!176259 () Bool)

(assert (=> b!146256 m!176259))

(declare-fun m!176261 () Bool)

(assert (=> b!146256 m!176261))

(assert (=> b!146256 m!176237))

(declare-fun m!176263 () Bool)

(assert (=> b!146256 m!176263))

(assert (=> b!146256 m!176237))

(assert (=> b!146256 m!176237))

(declare-fun m!176265 () Bool)

(assert (=> b!146256 m!176265))

(assert (=> b!146256 m!176237))

(declare-fun m!176267 () Bool)

(assert (=> b!146256 m!176267))

(declare-fun m!176269 () Bool)

(assert (=> b!146267 m!176269))

(declare-fun m!176271 () Bool)

(assert (=> b!146257 m!176271))

(declare-fun m!176273 () Bool)

(assert (=> b!146257 m!176273))

(declare-fun m!176275 () Bool)

(assert (=> mapNonEmpty!4973 m!176275))

(check-sat (not b!146267) b_and!9151 (not mapNonEmpty!4973) (not b!146271) (not b_next!3103) tp_is_empty!2967 (not start!15210) (not mapNonEmpty!4974) b_and!9149 (not b!146257) (not b_lambda!6581) (not b_next!3101) (not b!146259) (not b!146264) (not b!146263) (not b!146256))
(check-sat b_and!9149 b_and!9151 (not b_next!3101) (not b_next!3103))
