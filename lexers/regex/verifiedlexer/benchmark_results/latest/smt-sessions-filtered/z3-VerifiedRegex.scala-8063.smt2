; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416850 () Bool)

(assert start!416850)

(declare-fun b!4328215 () Bool)

(declare-fun b_free!129145 () Bool)

(declare-fun b_next!129849 () Bool)

(assert (=> b!4328215 (= b_free!129145 (not b_next!129849))))

(declare-fun tp!1327958 () Bool)

(declare-fun b_and!340737 () Bool)

(assert (=> b!4328215 (= tp!1327958 b_and!340737)))

(declare-fun res!1773619 () Bool)

(declare-fun e!2693221 () Bool)

(assert (=> start!416850 (=> (not res!1773619) (not e!2693221))))

(declare-datatypes ((V!9966 0))(
  ( (V!9967 (val!16048 Int)) )
))
(declare-datatypes ((array!17480 0))(
  ( (array!17481 (arr!7799 (Array (_ BitVec 32) V!9966)) (size!35839 (_ BitVec 32))) )
))
(declare-datatypes ((array!17482 0))(
  ( (array!17483 (arr!7800 (Array (_ BitVec 32) (_ BitVec 64))) (size!35840 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9614 0))(
  ( (LongMapFixedSize!9615 (defaultEntry!5221 Int) (mask!13485 (_ BitVec 32)) (extraKeys!5077 (_ BitVec 32)) (zeroValue!5090 V!9966) (minValue!5090 V!9966) (_size!9640 (_ BitVec 32)) (_keys!5142 array!17482) (_values!5115 array!17480) (_vacant!4872 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18995 0))(
  ( (Cell!18996 (v!43019 LongMapFixedSize!9614)) )
))
(declare-datatypes ((MutLongMap!4807 0))(
  ( (LongMap!4807 (underlying!9822 Cell!18995)) (MutLongMapExt!4806 (__x!30404 Int)) )
))
(declare-fun thiss!47260 () MutLongMap!4807)

(get-info :version)

(assert (=> start!416850 (= res!1773619 ((_ is LongMap!4807) thiss!47260))))

(assert (=> start!416850 e!2693221))

(declare-fun e!2693222 () Bool)

(assert (=> start!416850 e!2693222))

(declare-fun b!4328209 () Bool)

(declare-fun res!1773617 () Bool)

(assert (=> b!4328209 (=> (not res!1773617) (not e!2693221))))

(declare-fun valid!3828 (MutLongMap!4807) Bool)

(assert (=> b!4328209 (= res!1773617 (valid!3828 thiss!47260))))

(declare-fun b!4328210 () Bool)

(declare-fun e!2693217 () Bool)

(declare-fun e!2693223 () Bool)

(assert (=> b!4328210 (= e!2693217 (not e!2693223))))

(declare-fun res!1773616 () Bool)

(assert (=> b!4328210 (=> (not res!1773616) (not e!2693223))))

(declare-datatypes ((tuple2!47506 0))(
  ( (tuple2!47507 (_1!27046 Bool) (_2!27046 MutLongMap!4807)) )
))
(declare-fun lt!1545103 () tuple2!47506)

(assert (=> b!4328210 (= res!1773616 (valid!3828 (_2!27046 lt!1545103)))))

(assert (=> b!4328210 ((_ is LongMap!4807) (_2!27046 lt!1545103))))

(declare-fun b!4328211 () Bool)

(declare-fun e!2693219 () Bool)

(assert (=> b!4328211 (= e!2693222 e!2693219)))

(declare-fun b!4328212 () Bool)

(assert (=> b!4328212 (= e!2693221 e!2693217)))

(declare-fun res!1773618 () Bool)

(assert (=> b!4328212 (=> (not res!1773618) (not e!2693217))))

(assert (=> b!4328212 (= res!1773618 (not (_1!27046 lt!1545103)))))

(declare-fun e!2693215 () tuple2!47506)

(assert (=> b!4328212 (= lt!1545103 e!2693215)))

(declare-fun c!736509 () Bool)

(declare-fun imbalanced!109 (MutLongMap!4807) Bool)

(assert (=> b!4328212 (= c!736509 (imbalanced!109 thiss!47260))))

(declare-fun mapIsEmpty!21401 () Bool)

(declare-fun mapRes!21401 () Bool)

(assert (=> mapIsEmpty!21401 mapRes!21401))

(declare-fun b!4328213 () Bool)

(declare-datatypes ((tuple2!47508 0))(
  ( (tuple2!47509 (_1!27047 (_ BitVec 64)) (_2!27047 V!9966)) )
))
(declare-datatypes ((List!48584 0))(
  ( (Nil!48460) (Cons!48460 (h!53929 tuple2!47508) (t!355496 List!48584)) )
))
(declare-datatypes ((ListLongMap!1251 0))(
  ( (ListLongMap!1252 (toList!2626 List!48584)) )
))
(declare-fun map!10514 (MutLongMap!4807) ListLongMap!1251)

(assert (=> b!4328213 (= e!2693223 (= (map!10514 (_2!27046 lt!1545103)) (map!10514 thiss!47260)))))

(declare-fun b!4328214 () Bool)

(declare-fun e!2693216 () Bool)

(assert (=> b!4328214 (= e!2693219 e!2693216)))

(declare-fun tp_is_empty!24283 () Bool)

(declare-fun e!2693218 () Bool)

(declare-fun array_inv!5617 (array!17482) Bool)

(declare-fun array_inv!5618 (array!17480) Bool)

(assert (=> b!4328215 (= e!2693216 (and tp!1327958 tp_is_empty!24283 (array_inv!5617 (_keys!5142 (v!43019 (underlying!9822 thiss!47260)))) (array_inv!5618 (_values!5115 (v!43019 (underlying!9822 thiss!47260)))) e!2693218))))

(declare-fun b!4328216 () Bool)

(assert (=> b!4328216 (= e!2693218 (and tp_is_empty!24283 mapRes!21401))))

(declare-fun condMapEmpty!21401 () Bool)

(declare-fun mapDefault!21401 () V!9966)

(assert (=> b!4328216 (= condMapEmpty!21401 (= (arr!7799 (_values!5115 (v!43019 (underlying!9822 thiss!47260)))) ((as const (Array (_ BitVec 32) V!9966)) mapDefault!21401)))))

(declare-fun mapNonEmpty!21401 () Bool)

(declare-fun tp!1327959 () Bool)

(assert (=> mapNonEmpty!21401 (= mapRes!21401 (and tp!1327959 tp_is_empty!24283))))

(declare-fun mapValue!21401 () V!9966)

(declare-fun mapKey!21401 () (_ BitVec 32))

(declare-fun mapRest!21401 () (Array (_ BitVec 32) V!9966))

(assert (=> mapNonEmpty!21401 (= (arr!7799 (_values!5115 (v!43019 (underlying!9822 thiss!47260)))) (store mapRest!21401 mapKey!21401 mapValue!21401))))

(declare-fun b!4328217 () Bool)

(assert (=> b!4328217 (= e!2693215 (tuple2!47507 true thiss!47260))))

(declare-fun b!4328218 () Bool)

(declare-fun repack!111 (MutLongMap!4807) tuple2!47506)

(assert (=> b!4328218 (= e!2693215 (repack!111 thiss!47260))))

(assert (= (and start!416850 res!1773619) b!4328209))

(assert (= (and b!4328209 res!1773617) b!4328212))

(assert (= (and b!4328212 c!736509) b!4328218))

(assert (= (and b!4328212 (not c!736509)) b!4328217))

(assert (= (and b!4328212 res!1773618) b!4328210))

(assert (= (and b!4328210 res!1773616) b!4328213))

(assert (= (and b!4328216 condMapEmpty!21401) mapIsEmpty!21401))

(assert (= (and b!4328216 (not condMapEmpty!21401)) mapNonEmpty!21401))

(assert (= b!4328215 b!4328216))

(assert (= b!4328214 b!4328215))

(assert (= b!4328211 b!4328214))

(assert (= (and start!416850 ((_ is LongMap!4807) thiss!47260)) b!4328211))

(declare-fun m!4923065 () Bool)

(assert (=> b!4328218 m!4923065))

(declare-fun m!4923067 () Bool)

(assert (=> b!4328209 m!4923067))

(declare-fun m!4923069 () Bool)

(assert (=> b!4328210 m!4923069))

(declare-fun m!4923071 () Bool)

(assert (=> b!4328212 m!4923071))

(declare-fun m!4923073 () Bool)

(assert (=> b!4328215 m!4923073))

(declare-fun m!4923075 () Bool)

(assert (=> b!4328215 m!4923075))

(declare-fun m!4923077 () Bool)

(assert (=> mapNonEmpty!21401 m!4923077))

(declare-fun m!4923079 () Bool)

(assert (=> b!4328213 m!4923079))

(declare-fun m!4923081 () Bool)

(assert (=> b!4328213 m!4923081))

(check-sat (not mapNonEmpty!21401) (not b!4328215) b_and!340737 (not b_next!129849) tp_is_empty!24283 (not b!4328212) (not b!4328213) (not b!4328218) (not b!4328210) (not b!4328209))
(check-sat b_and!340737 (not b_next!129849))
(get-model)

(declare-fun d!1272138 () Bool)

(declare-fun valid!3829 (LongMapFixedSize!9614) Bool)

(assert (=> d!1272138 (= (valid!3828 thiss!47260) (valid!3829 (v!43019 (underlying!9822 thiss!47260))))))

(declare-fun bs!607562 () Bool)

(assert (= bs!607562 d!1272138))

(declare-fun m!4923083 () Bool)

(assert (=> bs!607562 m!4923083))

(assert (=> b!4328209 d!1272138))

(declare-fun d!1272140 () Bool)

(declare-fun map!10515 (LongMapFixedSize!9614) ListLongMap!1251)

(assert (=> d!1272140 (= (map!10514 (_2!27046 lt!1545103)) (map!10515 (v!43019 (underlying!9822 (_2!27046 lt!1545103)))))))

(declare-fun bs!607563 () Bool)

(assert (= bs!607563 d!1272140))

(declare-fun m!4923085 () Bool)

(assert (=> bs!607563 m!4923085))

(assert (=> b!4328213 d!1272140))

(declare-fun d!1272142 () Bool)

(assert (=> d!1272142 (= (map!10514 thiss!47260) (map!10515 (v!43019 (underlying!9822 thiss!47260))))))

(declare-fun bs!607564 () Bool)

(assert (= bs!607564 d!1272142))

(declare-fun m!4923087 () Bool)

(assert (=> bs!607564 m!4923087))

(assert (=> b!4328213 d!1272142))

(declare-fun d!1272144 () Bool)

(assert (=> d!1272144 (= (imbalanced!109 thiss!47260) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9640 (v!43019 (underlying!9822 thiss!47260))) (_vacant!4872 (v!43019 (underlying!9822 thiss!47260))))) (mask!13485 (v!43019 (underlying!9822 thiss!47260)))) (bvsgt (_vacant!4872 (v!43019 (underlying!9822 thiss!47260))) (_size!9640 (v!43019 (underlying!9822 thiss!47260))))))))

(assert (=> b!4328212 d!1272144))

(declare-fun d!1272146 () Bool)

(assert (=> d!1272146 (= (array_inv!5617 (_keys!5142 (v!43019 (underlying!9822 thiss!47260)))) (bvsge (size!35840 (_keys!5142 (v!43019 (underlying!9822 thiss!47260)))) #b00000000000000000000000000000000))))

(assert (=> b!4328215 d!1272146))

(declare-fun d!1272148 () Bool)

(assert (=> d!1272148 (= (array_inv!5618 (_values!5115 (v!43019 (underlying!9822 thiss!47260)))) (bvsge (size!35839 (_values!5115 (v!43019 (underlying!9822 thiss!47260)))) #b00000000000000000000000000000000))))

(assert (=> b!4328215 d!1272148))

(declare-fun b!4328239 () Bool)

(declare-datatypes ((tuple2!47510 0))(
  ( (tuple2!47511 (_1!27048 Bool) (_2!27048 Cell!18995)) )
))
(declare-fun e!2693237 () tuple2!47510)

(declare-fun lt!1545132 () Cell!18995)

(assert (=> b!4328239 (= e!2693237 (tuple2!47511 true lt!1545132))))

(declare-fun b!4328240 () Bool)

(declare-fun e!2693238 () tuple2!47510)

(declare-fun e!2693236 () tuple2!47510)

(assert (=> b!4328240 (= e!2693238 e!2693236)))

(declare-fun c!736519 () Bool)

(assert (=> b!4328240 (= c!736519 (and (not (= (bvand (extraKeys!5077 (v!43019 (underlying!9822 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5077 (v!43019 (underlying!9822 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!1272150 () Bool)

(declare-fun e!2693241 () Bool)

(assert (=> d!1272150 e!2693241))

(declare-fun res!1773624 () Bool)

(assert (=> d!1272150 (=> (not res!1773624) (not e!2693241))))

(declare-fun lt!1545128 () tuple2!47506)

(assert (=> d!1272150 (= res!1773624 ((_ is LongMap!4807) (_2!27046 lt!1545128)))))

(declare-datatypes ((tuple3!5520 0))(
  ( (tuple3!5521 (_1!27049 Bool) (_2!27049 Cell!18995) (_3!3293 MutLongMap!4807)) )
))
(declare-fun lt!1545130 () tuple3!5520)

(assert (=> d!1272150 (= lt!1545128 (tuple2!47507 (_1!27049 lt!1545130) (_3!3293 lt!1545130)))))

(declare-fun e!2693240 () tuple3!5520)

(assert (=> d!1272150 (= lt!1545130 e!2693240)))

(declare-fun c!736520 () Bool)

(declare-fun lt!1545125 () tuple2!47510)

(assert (=> d!1272150 (= c!736520 (not (_1!27048 lt!1545125)))))

(assert (=> d!1272150 (= lt!1545125 e!2693238)))

(declare-fun c!736518 () Bool)

(assert (=> d!1272150 (= c!736518 (and (not (= (bvand (extraKeys!5077 (v!43019 (underlying!9822 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5077 (v!43019 (underlying!9822 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!1545124 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!34 ((_ BitVec 32) Int) LongMapFixedSize!9614)

(assert (=> d!1272150 (= lt!1545132 (Cell!18996 (getNewLongMapFixedSize!34 lt!1545124 (defaultEntry!5221 (v!43019 (underlying!9822 thiss!47260))))))))

(declare-fun computeNewMask!20 (MutLongMap!4807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1272150 (= lt!1545124 (computeNewMask!20 thiss!47260 (mask!13485 (v!43019 (underlying!9822 thiss!47260))) (_vacant!4872 (v!43019 (underlying!9822 thiss!47260))) (_size!9640 (v!43019 (underlying!9822 thiss!47260)))))))

(assert (=> d!1272150 (valid!3828 thiss!47260)))

(assert (=> d!1272150 (= (repack!111 thiss!47260) lt!1545128)))

(declare-fun b!4328241 () Bool)

(declare-fun e!2693239 () Bool)

(assert (=> b!4328241 (= e!2693239 (= (map!10514 (_2!27046 lt!1545128)) (map!10514 thiss!47260)))))

(declare-fun bm!301007 () Bool)

(declare-fun call!301012 () LongMapFixedSize!9614)

(assert (=> bm!301007 (= call!301012 (getNewLongMapFixedSize!34 lt!1545124 (defaultEntry!5221 (v!43019 (underlying!9822 thiss!47260)))))))

(declare-fun b!4328242 () Bool)

(declare-datatypes ((tuple2!47512 0))(
  ( (tuple2!47513 (_1!27050 Bool) (_2!27050 LongMapFixedSize!9614)) )
))
(declare-fun lt!1545131 () tuple2!47512)

(declare-fun call!301015 () tuple2!47512)

(assert (=> b!4328242 (= lt!1545131 call!301015)))

(assert (=> b!4328242 (= e!2693236 (tuple2!47511 (_1!27050 lt!1545131) (Cell!18996 (_2!27050 lt!1545131))))))

(declare-fun b!4328243 () Bool)

(declare-fun lt!1545126 () tuple2!47512)

(assert (=> b!4328243 (= e!2693240 (ite (_1!27050 lt!1545126) (tuple3!5521 true (underlying!9822 thiss!47260) (LongMap!4807 (Cell!18996 (_2!27050 lt!1545126)))) (tuple3!5521 false (Cell!18996 (_2!27050 lt!1545126)) thiss!47260)))))

(declare-fun repackFrom!20 (MutLongMap!4807 LongMapFixedSize!9614 (_ BitVec 32)) tuple2!47512)

(assert (=> b!4328243 (= lt!1545126 (repackFrom!20 thiss!47260 (v!43019 (_2!27048 lt!1545125)) (bvsub (size!35840 (_keys!5142 (v!43019 (underlying!9822 thiss!47260)))) #b00000000000000000000000000000001)))))

(declare-fun b!4328244 () Bool)

(declare-fun lt!1545129 () tuple2!47512)

(declare-fun lt!1545133 () tuple2!47512)

(assert (=> b!4328244 (= e!2693238 (tuple2!47511 (and (_1!27050 lt!1545129) (_1!27050 lt!1545133)) (Cell!18996 (_2!27050 lt!1545133))))))

(declare-fun update!576 (LongMapFixedSize!9614 (_ BitVec 64) V!9966) tuple2!47512)

(assert (=> b!4328244 (= lt!1545129 (update!576 call!301012 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5090 (v!43019 (underlying!9822 thiss!47260)))))))

(declare-fun call!301014 () tuple2!47512)

(assert (=> b!4328244 (= lt!1545133 call!301014)))

(declare-fun bm!301008 () Bool)

(declare-fun call!301013 () LongMapFixedSize!9614)

(assert (=> bm!301008 (= call!301013 call!301012)))

(declare-fun b!4328245 () Bool)

(declare-fun lt!1545127 () tuple2!47512)

(assert (=> b!4328245 (= e!2693237 (tuple2!47511 (_1!27050 lt!1545127) (Cell!18996 (_2!27050 lt!1545127))))))

(assert (=> b!4328245 (= lt!1545127 call!301015)))

(declare-fun b!4328246 () Bool)

(declare-fun c!736521 () Bool)

(assert (=> b!4328246 (= c!736521 (and (not (= (bvand (extraKeys!5077 (v!43019 (underlying!9822 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5077 (v!43019 (underlying!9822 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4328246 (= e!2693236 e!2693237)))

(declare-fun b!4328247 () Bool)

(assert (=> b!4328247 (= e!2693241 e!2693239)))

(declare-fun res!1773625 () Bool)

(assert (=> b!4328247 (=> res!1773625 e!2693239)))

(assert (=> b!4328247 (= res!1773625 (= (_1!27046 lt!1545128) false))))

(declare-fun bm!301009 () Bool)

(assert (=> bm!301009 (= call!301014 (update!576 (ite c!736518 (_2!27050 lt!1545129) call!301013) (ite c!736518 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736519 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736518 (minValue!5090 (v!43019 (underlying!9822 thiss!47260))) (ite c!736519 (zeroValue!5090 (v!43019 (underlying!9822 thiss!47260))) (minValue!5090 (v!43019 (underlying!9822 thiss!47260)))))))))

(declare-fun bm!301010 () Bool)

(assert (=> bm!301010 (= call!301015 call!301014)))

(declare-fun b!4328248 () Bool)

(assert (=> b!4328248 (= e!2693240 (tuple3!5521 false (_2!27048 lt!1545125) thiss!47260))))

(assert (= (and d!1272150 c!736518) b!4328244))

(assert (= (and d!1272150 (not c!736518)) b!4328240))

(assert (= (and b!4328240 c!736519) b!4328242))

(assert (= (and b!4328240 (not c!736519)) b!4328246))

(assert (= (and b!4328246 c!736521) b!4328245))

(assert (= (and b!4328246 (not c!736521)) b!4328239))

(assert (= (or b!4328242 b!4328245) bm!301008))

(assert (= (or b!4328242 b!4328245) bm!301010))

(assert (= (or b!4328244 bm!301008) bm!301007))

(assert (= (or b!4328244 bm!301010) bm!301009))

(assert (= (and d!1272150 c!736520) b!4328248))

(assert (= (and d!1272150 (not c!736520)) b!4328243))

(assert (= (and d!1272150 res!1773624) b!4328247))

(assert (= (and b!4328247 (not res!1773625)) b!4328241))

(declare-fun m!4923089 () Bool)

(assert (=> b!4328241 m!4923089))

(assert (=> b!4328241 m!4923081))

(declare-fun m!4923091 () Bool)

(assert (=> b!4328243 m!4923091))

(declare-fun m!4923093 () Bool)

(assert (=> b!4328244 m!4923093))

(declare-fun m!4923095 () Bool)

(assert (=> bm!301007 m!4923095))

(assert (=> d!1272150 m!4923095))

(declare-fun m!4923097 () Bool)

(assert (=> d!1272150 m!4923097))

(assert (=> d!1272150 m!4923067))

(declare-fun m!4923099 () Bool)

(assert (=> bm!301009 m!4923099))

(assert (=> b!4328218 d!1272150))

(declare-fun d!1272152 () Bool)

(assert (=> d!1272152 (= (valid!3828 (_2!27046 lt!1545103)) (valid!3829 (v!43019 (underlying!9822 (_2!27046 lt!1545103)))))))

(declare-fun bs!607565 () Bool)

(assert (= bs!607565 d!1272152))

(declare-fun m!4923101 () Bool)

(assert (=> bs!607565 m!4923101))

(assert (=> b!4328210 d!1272152))

(declare-fun condMapEmpty!21404 () Bool)

(declare-fun mapDefault!21404 () V!9966)

(assert (=> mapNonEmpty!21401 (= condMapEmpty!21404 (= mapRest!21401 ((as const (Array (_ BitVec 32) V!9966)) mapDefault!21404)))))

(declare-fun mapRes!21404 () Bool)

(assert (=> mapNonEmpty!21401 (= tp!1327959 (and tp_is_empty!24283 mapRes!21404))))

(declare-fun mapIsEmpty!21404 () Bool)

(assert (=> mapIsEmpty!21404 mapRes!21404))

(declare-fun mapNonEmpty!21404 () Bool)

(declare-fun tp!1327962 () Bool)

(assert (=> mapNonEmpty!21404 (= mapRes!21404 (and tp!1327962 tp_is_empty!24283))))

(declare-fun mapKey!21404 () (_ BitVec 32))

(declare-fun mapRest!21404 () (Array (_ BitVec 32) V!9966))

(declare-fun mapValue!21404 () V!9966)

(assert (=> mapNonEmpty!21404 (= mapRest!21401 (store mapRest!21404 mapKey!21404 mapValue!21404))))

(assert (= (and mapNonEmpty!21401 condMapEmpty!21404) mapIsEmpty!21404))

(assert (= (and mapNonEmpty!21401 (not condMapEmpty!21404)) mapNonEmpty!21404))

(declare-fun m!4923103 () Bool)

(assert (=> mapNonEmpty!21404 m!4923103))

(check-sat (not b!4328243) b_and!340737 (not b_next!129849) (not b!4328241) (not d!1272150) (not bm!301009) (not b!4328244) (not d!1272142) (not mapNonEmpty!21404) tp_is_empty!24283 (not d!1272152) (not bm!301007) (not d!1272138) (not d!1272140))
(check-sat b_and!340737 (not b_next!129849))
