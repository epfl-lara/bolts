; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412728 () Bool)

(assert start!412728)

(declare-fun b!4298795 () Bool)

(declare-fun b_free!127953 () Bool)

(declare-fun b_next!128657 () Bool)

(assert (=> b!4298795 (= b_free!127953 (not b_next!128657))))

(declare-fun tp!1320697 () Bool)

(declare-fun b_and!339231 () Bool)

(assert (=> b!4298795 (= tp!1320697 b_and!339231)))

(declare-fun b!4298791 () Bool)

(declare-fun b_free!127955 () Bool)

(declare-fun b_next!128659 () Bool)

(assert (=> b!4298791 (= b_free!127955 (not b_next!128659))))

(declare-fun tp!1320703 () Bool)

(declare-fun b_and!339233 () Bool)

(assert (=> b!4298791 (= tp!1320703 b_and!339233)))

(declare-fun b_free!127957 () Bool)

(declare-fun b_next!128661 () Bool)

(assert (=> start!412728 (= b_free!127957 (not b_next!128661))))

(declare-fun tp!1320701 () Bool)

(declare-fun b_and!339235 () Bool)

(assert (=> start!412728 (= tp!1320701 b_and!339235)))

(declare-fun b!4298786 () Bool)

(declare-fun e!2671895 () Bool)

(declare-fun e!2671888 () Bool)

(assert (=> b!4298786 (= e!2671895 e!2671888)))

(declare-fun res!1761889 () Bool)

(assert (=> b!4298786 (=> (not res!1761889) (not e!2671888))))

(declare-fun p!6034 () Int)

(declare-datatypes ((K!9019 0))(
  ( (K!9020 (val!15473 Int)) )
))
(declare-datatypes ((V!9221 0))(
  ( (V!9222 (val!15474 Int)) )
))
(declare-datatypes ((tuple2!45812 0))(
  ( (tuple2!45813 (_1!26185 K!9019) (_2!26185 V!9221)) )
))
(declare-fun lt!1520477 () tuple2!45812)

(declare-fun dynLambda!20351 (Int tuple2!45812) Bool)

(assert (=> b!4298786 (= res!1761889 (dynLambda!20351 p!6034 lt!1520477))))

(declare-fun k0!1716 () K!9019)

(declare-fun v!9471 () V!9221)

(assert (=> b!4298786 (= lt!1520477 (tuple2!45813 k0!1716 v!9471))))

(declare-fun b!4298787 () Bool)

(declare-fun res!1761888 () Bool)

(declare-fun e!2671889 () Bool)

(assert (=> b!4298787 (=> (not res!1761888) (not e!2671889))))

(declare-datatypes ((List!48041 0))(
  ( (Nil!47917) (Cons!47917 (h!53337 tuple2!45812) (t!354712 List!48041)) )
))
(declare-datatypes ((array!16128 0))(
  ( (array!16129 (arr!7203 (Array (_ BitVec 32) (_ BitVec 64))) (size!35242 (_ BitVec 32))) )
))
(declare-datatypes ((array!16130 0))(
  ( (array!16131 (arr!7204 (Array (_ BitVec 32) List!48041)) (size!35243 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9018 0))(
  ( (LongMapFixedSize!9019 (defaultEntry!4894 Int) (mask!12992 (_ BitVec 32)) (extraKeys!4758 (_ BitVec 32)) (zeroValue!4768 List!48041) (minValue!4768 List!48041) (_size!9061 (_ BitVec 32)) (_keys!4809 array!16128) (_values!4790 array!16130) (_vacant!4570 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17845 0))(
  ( (Cell!17846 (v!41869 LongMapFixedSize!9018)) )
))
(declare-datatypes ((MutLongMap!4509 0))(
  ( (LongMap!4509 (underlying!9247 Cell!17845)) (MutLongMapExt!4508 (__x!29552 Int)) )
))
(declare-datatypes ((Hashable!4425 0))(
  ( (HashableExt!4424 (__x!29553 Int)) )
))
(declare-datatypes ((Cell!17847 0))(
  ( (Cell!17848 (v!41870 MutLongMap!4509)) )
))
(declare-datatypes ((MutableMap!4415 0))(
  ( (MutableMapExt!4414 (__x!29554 Int)) (HashMap!4415 (underlying!9248 Cell!17847) (hashF!6457 Hashable!4425) (_size!9062 (_ BitVec 32)) (defaultValue!4586 Int)) )
))
(declare-fun hm!64 () MutableMap!4415)

(declare-fun valid!3487 (MutableMap!4415) Bool)

(assert (=> b!4298787 (= res!1761888 (valid!3487 hm!64))))

(declare-fun b!4298788 () Bool)

(declare-datatypes ((Unit!66672 0))(
  ( (Unit!66673) )
))
(declare-fun e!2671887 () Unit!66672)

(declare-fun lt!1520480 () Unit!66672)

(assert (=> b!4298788 (= e!2671887 lt!1520480)))

(declare-fun lt!1520481 () Unit!66672)

(declare-datatypes ((ListMap!1457 0))(
  ( (ListMap!1458 (toList!2178 List!48041)) )
))
(declare-fun lt!1520482 () ListMap!1457)

(declare-fun lemmaInsertNoDuplicatedKeysPreservesForall!8 (List!48041 K!9019 V!9221 Int) Unit!66672)

(assert (=> b!4298788 (= lt!1520481 (lemmaInsertNoDuplicatedKeysPreservesForall!8 (toList!2178 lt!1520482) k0!1716 v!9471 p!6034))))

(declare-fun forall!8616 (List!48041 Int) Bool)

(declare-fun insertNoDuplicatedKeys!17 (List!48041 K!9019 V!9221) List!48041)

(assert (=> b!4298788 (forall!8616 (insertNoDuplicatedKeys!17 (toList!2178 lt!1520482) k0!1716 v!9471) p!6034)))

(declare-fun lt!1520483 () ListMap!1457)

(declare-datatypes ((tuple2!45814 0))(
  ( (tuple2!45815 (_1!26186 Bool) (_2!26186 MutableMap!4415)) )
))
(declare-fun lt!1520478 () tuple2!45814)

(declare-fun map!9877 (MutableMap!4415) ListMap!1457)

(assert (=> b!4298788 (= lt!1520483 (map!9877 (_2!26186 lt!1520478)))))

(declare-fun lt!1520476 () ListMap!1457)

(declare-fun lemmaForallSubset!18 (List!48041 List!48041 Int) Unit!66672)

(assert (=> b!4298788 (= lt!1520480 (lemmaForallSubset!18 (toList!2178 lt!1520483) (toList!2178 lt!1520476) p!6034))))

(assert (=> b!4298788 (forall!8616 (toList!2178 lt!1520483) p!6034)))

(declare-fun b!4298789 () Bool)

(declare-fun Unit!66674 () Unit!66672)

(assert (=> b!4298789 (= e!2671887 Unit!66674)))

(declare-fun b!4298790 () Bool)

(declare-fun e!2671891 () Bool)

(declare-fun e!2671894 () Bool)

(declare-fun lt!1520479 () MutLongMap!4509)

(get-info :version)

(assert (=> b!4298790 (= e!2671891 (and e!2671894 ((_ is LongMap!4509) lt!1520479)))))

(assert (=> b!4298790 (= lt!1520479 (v!41870 (underlying!9248 hm!64)))))

(declare-fun tp!1320698 () Bool)

(declare-fun e!2671893 () Bool)

(declare-fun e!2671890 () Bool)

(declare-fun tp!1320699 () Bool)

(declare-fun array_inv!5161 (array!16128) Bool)

(declare-fun array_inv!5162 (array!16130) Bool)

(assert (=> b!4298791 (= e!2671890 (and tp!1320703 tp!1320698 tp!1320699 (array_inv!5161 (_keys!4809 (v!41869 (underlying!9247 (v!41870 (underlying!9248 hm!64)))))) (array_inv!5162 (_values!4790 (v!41869 (underlying!9247 (v!41870 (underlying!9248 hm!64)))))) e!2671893))))

(declare-fun b!4298792 () Bool)

(assert (=> b!4298792 (= e!2671889 e!2671895)))

(declare-fun res!1761890 () Bool)

(assert (=> b!4298792 (=> (not res!1761890) (not e!2671895))))

(assert (=> b!4298792 (= res!1761890 (forall!8616 (toList!2178 lt!1520482) p!6034))))

(assert (=> b!4298792 (= lt!1520482 (map!9877 hm!64))))

(declare-fun mapNonEmpty!20253 () Bool)

(declare-fun mapRes!20253 () Bool)

(declare-fun tp!1320700 () Bool)

(declare-fun tp!1320696 () Bool)

(assert (=> mapNonEmpty!20253 (= mapRes!20253 (and tp!1320700 tp!1320696))))

(declare-fun mapValue!20253 () List!48041)

(declare-fun mapKey!20253 () (_ BitVec 32))

(declare-fun mapRest!20253 () (Array (_ BitVec 32) List!48041))

(assert (=> mapNonEmpty!20253 (= (arr!7204 (_values!4790 (v!41869 (underlying!9247 (v!41870 (underlying!9248 hm!64)))))) (store mapRest!20253 mapKey!20253 mapValue!20253))))

(declare-fun b!4298793 () Bool)

(declare-fun tp!1320702 () Bool)

(assert (=> b!4298793 (= e!2671893 (and tp!1320702 mapRes!20253))))

(declare-fun condMapEmpty!20253 () Bool)

(declare-fun mapDefault!20253 () List!48041)

(assert (=> b!4298793 (= condMapEmpty!20253 (= (arr!7204 (_values!4790 (v!41869 (underlying!9247 (v!41870 (underlying!9248 hm!64)))))) ((as const (Array (_ BitVec 32) List!48041)) mapDefault!20253)))))

(declare-fun b!4298794 () Bool)

(declare-fun e!2671886 () Bool)

(assert (=> b!4298794 (= e!2671886 e!2671890)))

(declare-fun res!1761887 () Bool)

(assert (=> start!412728 (=> (not res!1761887) (not e!2671889))))

(assert (=> start!412728 (= res!1761887 ((_ is HashMap!4415) hm!64))))

(assert (=> start!412728 e!2671889))

(declare-fun e!2671896 () Bool)

(assert (=> start!412728 e!2671896))

(declare-fun tp_is_empty!23209 () Bool)

(assert (=> start!412728 tp_is_empty!23209))

(declare-fun tp_is_empty!23211 () Bool)

(assert (=> start!412728 tp_is_empty!23211))

(assert (=> start!412728 tp!1320701))

(assert (=> b!4298795 (= e!2671896 (and e!2671891 tp!1320697))))

(declare-fun mapIsEmpty!20253 () Bool)

(assert (=> mapIsEmpty!20253 mapRes!20253))

(declare-fun b!4298796 () Bool)

(assert (=> b!4298796 (= e!2671888 (not ((_ is HashMap!4415) (_2!26186 lt!1520478))))))

(declare-fun lt!1520475 () Unit!66672)

(assert (=> b!4298796 (= lt!1520475 e!2671887)))

(declare-fun c!731233 () Bool)

(assert (=> b!4298796 (= c!731233 (_1!26186 lt!1520478))))

(declare-fun update!316 (MutableMap!4415 K!9019 V!9221) tuple2!45814)

(assert (=> b!4298796 (= lt!1520478 (update!316 hm!64 k0!1716 v!9471))))

(declare-fun +!158 (ListMap!1457 tuple2!45812) ListMap!1457)

(assert (=> b!4298796 (= lt!1520476 (+!158 lt!1520482 lt!1520477))))

(declare-fun b!4298797 () Bool)

(assert (=> b!4298797 (= e!2671894 e!2671886)))

(assert (= (and start!412728 res!1761887) b!4298787))

(assert (= (and b!4298787 res!1761888) b!4298792))

(assert (= (and b!4298792 res!1761890) b!4298786))

(assert (= (and b!4298786 res!1761889) b!4298796))

(assert (= (and b!4298796 c!731233) b!4298788))

(assert (= (and b!4298796 (not c!731233)) b!4298789))

(assert (= (and b!4298793 condMapEmpty!20253) mapIsEmpty!20253))

(assert (= (and b!4298793 (not condMapEmpty!20253)) mapNonEmpty!20253))

(assert (= b!4298791 b!4298793))

(assert (= b!4298794 b!4298791))

(assert (= b!4298797 b!4298794))

(assert (= (and b!4298790 ((_ is LongMap!4509) (v!41870 (underlying!9248 hm!64)))) b!4298797))

(assert (= b!4298795 b!4298790))

(assert (= (and start!412728 ((_ is HashMap!4415) hm!64)) b!4298795))

(declare-fun b_lambda!126239 () Bool)

(assert (=> (not b_lambda!126239) (not b!4298786)))

(declare-fun t!354711 () Bool)

(declare-fun tb!257155 () Bool)

(assert (=> (and start!412728 (= p!6034 p!6034) t!354711) tb!257155))

(declare-fun result!314412 () Bool)

(assert (=> tb!257155 (= result!314412 true)))

(assert (=> b!4298786 t!354711))

(declare-fun b_and!339237 () Bool)

(assert (= b_and!339235 (and (=> t!354711 result!314412) b_and!339237)))

(declare-fun m!4890875 () Bool)

(assert (=> b!4298796 m!4890875))

(declare-fun m!4890877 () Bool)

(assert (=> b!4298796 m!4890877))

(declare-fun m!4890879 () Bool)

(assert (=> b!4298786 m!4890879))

(declare-fun m!4890881 () Bool)

(assert (=> b!4298788 m!4890881))

(declare-fun m!4890883 () Bool)

(assert (=> b!4298788 m!4890883))

(declare-fun m!4890885 () Bool)

(assert (=> b!4298788 m!4890885))

(declare-fun m!4890887 () Bool)

(assert (=> b!4298788 m!4890887))

(declare-fun m!4890889 () Bool)

(assert (=> b!4298788 m!4890889))

(assert (=> b!4298788 m!4890889))

(declare-fun m!4890891 () Bool)

(assert (=> b!4298788 m!4890891))

(declare-fun m!4890893 () Bool)

(assert (=> b!4298787 m!4890893))

(declare-fun m!4890895 () Bool)

(assert (=> b!4298792 m!4890895))

(declare-fun m!4890897 () Bool)

(assert (=> b!4298792 m!4890897))

(declare-fun m!4890899 () Bool)

(assert (=> mapNonEmpty!20253 m!4890899))

(declare-fun m!4890901 () Bool)

(assert (=> b!4298791 m!4890901))

(declare-fun m!4890903 () Bool)

(assert (=> b!4298791 m!4890903))

(check-sat (not mapNonEmpty!20253) tp_is_empty!23209 (not b!4298791) (not b!4298788) (not b_next!128659) b_and!339237 (not b_lambda!126239) tp_is_empty!23211 (not b!4298793) (not b!4298796) b_and!339231 (not b!4298787) (not b!4298792) (not b_next!128661) b_and!339233 (not b_next!128657))
(check-sat b_and!339231 (not b_next!128659) b_and!339237 (not b_next!128661) b_and!339233 (not b_next!128657))
(get-model)

(declare-fun b_lambda!126241 () Bool)

(assert (= b_lambda!126239 (or (and start!412728 b_free!127957) b_lambda!126241)))

(check-sat (not mapNonEmpty!20253) tp_is_empty!23209 (not b_lambda!126241) (not b!4298791) (not b!4298788) (not b_next!128659) b_and!339237 tp_is_empty!23211 (not b!4298793) (not b!4298796) b_and!339231 (not b!4298787) (not b!4298792) (not b_next!128661) b_and!339233 (not b_next!128657))
(check-sat b_and!339231 (not b_next!128659) b_and!339237 (not b_next!128661) b_and!339233 (not b_next!128657))
(get-model)

(declare-fun d!1266445 () Bool)

(declare-fun res!1761895 () Bool)

(declare-fun e!2671901 () Bool)

(assert (=> d!1266445 (=> res!1761895 e!2671901)))

(assert (=> d!1266445 (= res!1761895 ((_ is Nil!47917) (insertNoDuplicatedKeys!17 (toList!2178 lt!1520482) k0!1716 v!9471)))))

(assert (=> d!1266445 (= (forall!8616 (insertNoDuplicatedKeys!17 (toList!2178 lt!1520482) k0!1716 v!9471) p!6034) e!2671901)))

(declare-fun b!4298802 () Bool)

(declare-fun e!2671902 () Bool)

(assert (=> b!4298802 (= e!2671901 e!2671902)))

(declare-fun res!1761896 () Bool)

(assert (=> b!4298802 (=> (not res!1761896) (not e!2671902))))

(assert (=> b!4298802 (= res!1761896 (dynLambda!20351 p!6034 (h!53337 (insertNoDuplicatedKeys!17 (toList!2178 lt!1520482) k0!1716 v!9471))))))

(declare-fun b!4298803 () Bool)

(assert (=> b!4298803 (= e!2671902 (forall!8616 (t!354712 (insertNoDuplicatedKeys!17 (toList!2178 lt!1520482) k0!1716 v!9471)) p!6034))))

(assert (= (and d!1266445 (not res!1761895)) b!4298802))

(assert (= (and b!4298802 res!1761896) b!4298803))

(declare-fun b_lambda!126243 () Bool)

(assert (=> (not b_lambda!126243) (not b!4298802)))

(declare-fun t!354714 () Bool)

(declare-fun tb!257157 () Bool)

(assert (=> (and start!412728 (= p!6034 p!6034) t!354714) tb!257157))

(declare-fun result!314414 () Bool)

(assert (=> tb!257157 (= result!314414 true)))

(assert (=> b!4298802 t!354714))

(declare-fun b_and!339239 () Bool)

(assert (= b_and!339237 (and (=> t!354714 result!314414) b_and!339239)))

(declare-fun m!4890905 () Bool)

(assert (=> b!4298802 m!4890905))

(declare-fun m!4890907 () Bool)

(assert (=> b!4298803 m!4890907))

(assert (=> b!4298788 d!1266445))

(declare-fun d!1266447 () Bool)

(assert (=> d!1266447 (forall!8616 (insertNoDuplicatedKeys!17 (toList!2178 lt!1520482) k0!1716 v!9471) p!6034)))

(declare-fun lt!1520486 () Unit!66672)

(declare-fun choose!26164 (List!48041 K!9019 V!9221 Int) Unit!66672)

(assert (=> d!1266447 (= lt!1520486 (choose!26164 (toList!2178 lt!1520482) k0!1716 v!9471 p!6034))))

(declare-fun invariantList!534 (List!48041) Bool)

(assert (=> d!1266447 (invariantList!534 (toList!2178 lt!1520482))))

(assert (=> d!1266447 (= (lemmaInsertNoDuplicatedKeysPreservesForall!8 (toList!2178 lt!1520482) k0!1716 v!9471 p!6034) lt!1520486)))

(declare-fun bs!603910 () Bool)

(assert (= bs!603910 d!1266447))

(assert (=> bs!603910 m!4890889))

(assert (=> bs!603910 m!4890889))

(assert (=> bs!603910 m!4890891))

(declare-fun m!4890909 () Bool)

(assert (=> bs!603910 m!4890909))

(declare-fun m!4890911 () Bool)

(assert (=> bs!603910 m!4890911))

(assert (=> b!4298788 d!1266447))

(declare-fun d!1266449 () Bool)

(assert (=> d!1266449 (forall!8616 (toList!2178 lt!1520483) p!6034)))

(declare-fun lt!1520489 () Unit!66672)

(declare-fun choose!26165 (List!48041 List!48041 Int) Unit!66672)

(assert (=> d!1266449 (= lt!1520489 (choose!26165 (toList!2178 lt!1520483) (toList!2178 lt!1520476) p!6034))))

(assert (=> d!1266449 (invariantList!534 (toList!2178 lt!1520483))))

(assert (=> d!1266449 (= (lemmaForallSubset!18 (toList!2178 lt!1520483) (toList!2178 lt!1520476) p!6034) lt!1520489)))

(declare-fun bs!603911 () Bool)

(assert (= bs!603911 d!1266449))

(assert (=> bs!603911 m!4890885))

(declare-fun m!4890913 () Bool)

(assert (=> bs!603911 m!4890913))

(declare-fun m!4890915 () Bool)

(assert (=> bs!603911 m!4890915))

(assert (=> b!4298788 d!1266449))

(declare-fun d!1266451 () Bool)

(declare-fun res!1761897 () Bool)

(declare-fun e!2671903 () Bool)

(assert (=> d!1266451 (=> res!1761897 e!2671903)))

(assert (=> d!1266451 (= res!1761897 ((_ is Nil!47917) (toList!2178 lt!1520483)))))

(assert (=> d!1266451 (= (forall!8616 (toList!2178 lt!1520483) p!6034) e!2671903)))

(declare-fun b!4298804 () Bool)

(declare-fun e!2671904 () Bool)

(assert (=> b!4298804 (= e!2671903 e!2671904)))

(declare-fun res!1761898 () Bool)

(assert (=> b!4298804 (=> (not res!1761898) (not e!2671904))))

(assert (=> b!4298804 (= res!1761898 (dynLambda!20351 p!6034 (h!53337 (toList!2178 lt!1520483))))))

(declare-fun b!4298805 () Bool)

(assert (=> b!4298805 (= e!2671904 (forall!8616 (t!354712 (toList!2178 lt!1520483)) p!6034))))

(assert (= (and d!1266451 (not res!1761897)) b!4298804))

(assert (= (and b!4298804 res!1761898) b!4298805))

(declare-fun b_lambda!126245 () Bool)

(assert (=> (not b_lambda!126245) (not b!4298804)))

(declare-fun t!354716 () Bool)

(declare-fun tb!257159 () Bool)

(assert (=> (and start!412728 (= p!6034 p!6034) t!354716) tb!257159))

(declare-fun result!314416 () Bool)

(assert (=> tb!257159 (= result!314416 true)))

(assert (=> b!4298804 t!354716))

(declare-fun b_and!339241 () Bool)

(assert (= b_and!339239 (and (=> t!354716 result!314416) b_and!339241)))

(declare-fun m!4890917 () Bool)

(assert (=> b!4298804 m!4890917))

(declare-fun m!4890919 () Bool)

(assert (=> b!4298805 m!4890919))

(assert (=> b!4298788 d!1266451))

(declare-fun d!1266453 () Bool)

(declare-fun lt!1520492 () ListMap!1457)

(assert (=> d!1266453 (invariantList!534 (toList!2178 lt!1520492))))

(declare-datatypes ((tuple2!45816 0))(
  ( (tuple2!45817 (_1!26187 (_ BitVec 64)) (_2!26187 List!48041)) )
))
(declare-datatypes ((List!48042 0))(
  ( (Nil!47918) (Cons!47918 (h!53338 tuple2!45816) (t!354719 List!48042)) )
))
(declare-fun extractMap!265 (List!48042) ListMap!1457)

(declare-datatypes ((ListLongMap!793 0))(
  ( (ListLongMap!794 (toList!2179 List!48042)) )
))
(declare-fun map!9878 (MutLongMap!4509) ListLongMap!793)

(assert (=> d!1266453 (= lt!1520492 (extractMap!265 (toList!2179 (map!9878 (v!41870 (underlying!9248 (_2!26186 lt!1520478)))))))))

(assert (=> d!1266453 (valid!3487 (_2!26186 lt!1520478))))

(assert (=> d!1266453 (= (map!9877 (_2!26186 lt!1520478)) lt!1520492)))

(declare-fun bs!603912 () Bool)

(assert (= bs!603912 d!1266453))

(declare-fun m!4890921 () Bool)

(assert (=> bs!603912 m!4890921))

(declare-fun m!4890923 () Bool)

(assert (=> bs!603912 m!4890923))

(declare-fun m!4890925 () Bool)

(assert (=> bs!603912 m!4890925))

(declare-fun m!4890927 () Bool)

(assert (=> bs!603912 m!4890927))

(assert (=> b!4298788 d!1266453))

(declare-fun d!1266455 () Bool)

(declare-fun e!2671920 () Bool)

(assert (=> d!1266455 e!2671920))

(declare-fun res!1761907 () Bool)

(assert (=> d!1266455 (=> (not res!1761907) (not e!2671920))))

(declare-fun lt!1520525 () List!48041)

(assert (=> d!1266455 (= res!1761907 (invariantList!534 lt!1520525))))

(declare-fun e!2671923 () List!48041)

(assert (=> d!1266455 (= lt!1520525 e!2671923)))

(declare-fun c!731247 () Bool)

(assert (=> d!1266455 (= c!731247 (and ((_ is Cons!47917) (toList!2178 lt!1520482)) (= (_1!26185 (h!53337 (toList!2178 lt!1520482))) k0!1716)))))

(assert (=> d!1266455 (invariantList!534 (toList!2178 lt!1520482))))

(assert (=> d!1266455 (= (insertNoDuplicatedKeys!17 (toList!2178 lt!1520482) k0!1716 v!9471) lt!1520525)))

(declare-fun b!4298834 () Bool)

(declare-fun e!2671922 () Unit!66672)

(declare-fun Unit!66675 () Unit!66672)

(assert (=> b!4298834 (= e!2671922 Unit!66675)))

(declare-fun b!4298835 () Bool)

(declare-datatypes ((List!48043 0))(
  ( (Nil!47919) (Cons!47919 (h!53339 K!9019) (t!354720 List!48043)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7525 (List!48043) (InoxSet K!9019))

(declare-fun getKeysList!29 (List!48041) List!48043)

(assert (=> b!4298835 (= e!2671920 (= (content!7525 (getKeysList!29 lt!1520525)) ((_ map or) (content!7525 (getKeysList!29 (toList!2178 lt!1520482))) (store ((as const (Array K!9019 Bool)) false) k0!1716 true))))))

(declare-fun b!4298836 () Bool)

(declare-fun e!2671921 () List!48041)

(declare-fun call!295495 () List!48041)

(assert (=> b!4298836 (= e!2671921 call!295495)))

(declare-fun bm!295489 () Bool)

(declare-fun call!295497 () List!48043)

(declare-fun lt!1520516 () List!48041)

(assert (=> bm!295489 (= call!295497 (getKeysList!29 (ite c!731247 (toList!2178 lt!1520482) lt!1520516)))))

(declare-fun e!2671924 () List!48041)

(declare-fun b!4298837 () Bool)

(assert (=> b!4298837 (= e!2671924 (insertNoDuplicatedKeys!17 (t!354712 (toList!2178 lt!1520482)) k0!1716 v!9471))))

(declare-fun b!4298838 () Bool)

(declare-fun e!2671919 () List!48041)

(declare-fun lt!1520519 () List!48041)

(assert (=> b!4298838 (= e!2671919 lt!1520519)))

(declare-fun call!295496 () List!48041)

(assert (=> b!4298838 (= lt!1520519 call!295496)))

(declare-fun c!731244 () Bool)

(declare-fun containsKey!224 (List!48041 K!9019) Bool)

(assert (=> b!4298838 (= c!731244 (containsKey!224 (insertNoDuplicatedKeys!17 (t!354712 (toList!2178 lt!1520482)) k0!1716 v!9471) (_1!26185 (h!53337 (toList!2178 lt!1520482)))))))

(declare-fun lt!1520518 () Unit!66672)

(assert (=> b!4298838 (= lt!1520518 e!2671922)))

(declare-fun c!731246 () Bool)

(declare-fun call!295494 () List!48041)

(declare-fun c!731248 () Bool)

(declare-fun bm!295490 () Bool)

(declare-fun $colon$colon!652 (List!48041 tuple2!45812) List!48041)

(assert (=> bm!295490 (= call!295494 ($colon$colon!652 (ite c!731247 (t!354712 (toList!2178 lt!1520482)) (ite c!731246 (toList!2178 lt!1520482) e!2671924)) (ite (or c!731247 c!731246) (tuple2!45813 k0!1716 v!9471) (ite c!731248 (h!53337 (toList!2178 lt!1520482)) (tuple2!45813 k0!1716 v!9471)))))))

(declare-fun b!4298839 () Bool)

(assert (=> b!4298839 (= c!731248 ((_ is Cons!47917) (toList!2178 lt!1520482)))))

(assert (=> b!4298839 (= e!2671921 e!2671919)))

(declare-fun b!4298840 () Bool)

(assert (=> b!4298840 (= e!2671924 Nil!47917)))

(declare-fun bm!295491 () Bool)

(assert (=> bm!295491 (= call!295495 call!295494)))

(declare-fun b!4298841 () Bool)

(declare-fun e!2671925 () Bool)

(assert (=> b!4298841 (= e!2671925 (not (containsKey!224 (toList!2178 lt!1520482) k0!1716)))))

(declare-fun bm!295492 () Bool)

(assert (=> bm!295492 (= call!295496 call!295495)))

(declare-fun c!731245 () Bool)

(assert (=> bm!295492 (= c!731245 c!731248)))

(declare-fun b!4298842 () Bool)

(declare-fun res!1761910 () Bool)

(assert (=> b!4298842 (=> (not res!1761910) (not e!2671920))))

(declare-fun contains!9834 (List!48041 tuple2!45812) Bool)

(assert (=> b!4298842 (= res!1761910 (contains!9834 lt!1520525 (tuple2!45813 k0!1716 v!9471)))))

(declare-fun b!4298843 () Bool)

(assert (=> b!4298843 (= e!2671923 call!295494)))

(declare-fun lt!1520517 () List!48043)

(assert (=> b!4298843 (= lt!1520517 call!295497)))

(declare-fun lt!1520522 () Unit!66672)

(declare-fun lemmaSubseqRefl!56 (List!48043) Unit!66672)

(assert (=> b!4298843 (= lt!1520522 (lemmaSubseqRefl!56 lt!1520517))))

(declare-fun subseq!572 (List!48043 List!48043) Bool)

(assert (=> b!4298843 (subseq!572 lt!1520517 lt!1520517)))

(declare-fun lt!1520521 () Unit!66672)

(assert (=> b!4298843 (= lt!1520521 lt!1520522)))

(declare-fun b!4298844 () Bool)

(assert (=> b!4298844 (= e!2671919 call!295496)))

(declare-fun b!4298845 () Bool)

(assert (=> b!4298845 (= e!2671923 e!2671921)))

(declare-fun res!1761909 () Bool)

(assert (=> b!4298845 (= res!1761909 ((_ is Cons!47917) (toList!2178 lt!1520482)))))

(assert (=> b!4298845 (=> (not res!1761909) (not e!2671925))))

(assert (=> b!4298845 (= c!731246 e!2671925)))

(declare-fun b!4298846 () Bool)

(declare-fun res!1761908 () Bool)

(assert (=> b!4298846 (=> (not res!1761908) (not e!2671920))))

(assert (=> b!4298846 (= res!1761908 (containsKey!224 lt!1520525 k0!1716))))

(declare-fun b!4298847 () Bool)

(assert (=> b!4298847 false))

(declare-fun lt!1520520 () Unit!66672)

(declare-fun lt!1520515 () Unit!66672)

(assert (=> b!4298847 (= lt!1520520 lt!1520515)))

(assert (=> b!4298847 (containsKey!224 (t!354712 (toList!2178 lt!1520482)) (_1!26185 (h!53337 (toList!2178 lt!1520482))))))

(declare-fun lemmaInGetKeysListThenContainsKey!26 (List!48041 K!9019) Unit!66672)

(assert (=> b!4298847 (= lt!1520515 (lemmaInGetKeysListThenContainsKey!26 (t!354712 (toList!2178 lt!1520482)) (_1!26185 (h!53337 (toList!2178 lt!1520482)))))))

(declare-fun lt!1520523 () Unit!66672)

(declare-fun lt!1520524 () Unit!66672)

(assert (=> b!4298847 (= lt!1520523 lt!1520524)))

(declare-fun contains!9835 (List!48043 K!9019) Bool)

(assert (=> b!4298847 (contains!9835 call!295497 (_1!26185 (h!53337 (toList!2178 lt!1520482))))))

(declare-fun lemmaInListThenGetKeysListContains!26 (List!48041 K!9019) Unit!66672)

(assert (=> b!4298847 (= lt!1520524 (lemmaInListThenGetKeysListContains!26 lt!1520516 (_1!26185 (h!53337 (toList!2178 lt!1520482)))))))

(assert (=> b!4298847 (= lt!1520516 (insertNoDuplicatedKeys!17 (t!354712 (toList!2178 lt!1520482)) k0!1716 v!9471))))

(declare-fun Unit!66676 () Unit!66672)

(assert (=> b!4298847 (= e!2671922 Unit!66676)))

(assert (= (and d!1266455 c!731247) b!4298843))

(assert (= (and d!1266455 (not c!731247)) b!4298845))

(assert (= (and b!4298845 res!1761909) b!4298841))

(assert (= (and b!4298845 c!731246) b!4298836))

(assert (= (and b!4298845 (not c!731246)) b!4298839))

(assert (= (and b!4298839 c!731248) b!4298838))

(assert (= (and b!4298839 (not c!731248)) b!4298844))

(assert (= (and b!4298838 c!731244) b!4298847))

(assert (= (and b!4298838 (not c!731244)) b!4298834))

(assert (= (or b!4298838 b!4298844) bm!295492))

(assert (= (and bm!295492 c!731245) b!4298837))

(assert (= (and bm!295492 (not c!731245)) b!4298840))

(assert (= (or b!4298836 bm!295492) bm!295491))

(assert (= (or b!4298843 b!4298847) bm!295489))

(assert (= (or b!4298843 bm!295491) bm!295490))

(assert (= (and d!1266455 res!1761907) b!4298846))

(assert (= (and b!4298846 res!1761908) b!4298842))

(assert (= (and b!4298842 res!1761910) b!4298835))

(declare-fun m!4890929 () Bool)

(assert (=> bm!295490 m!4890929))

(declare-fun m!4890931 () Bool)

(assert (=> b!4298838 m!4890931))

(assert (=> b!4298838 m!4890931))

(declare-fun m!4890933 () Bool)

(assert (=> b!4298838 m!4890933))

(declare-fun m!4890935 () Bool)

(assert (=> b!4298842 m!4890935))

(assert (=> b!4298837 m!4890931))

(declare-fun m!4890937 () Bool)

(assert (=> b!4298846 m!4890937))

(declare-fun m!4890939 () Bool)

(assert (=> b!4298841 m!4890939))

(declare-fun m!4890941 () Bool)

(assert (=> d!1266455 m!4890941))

(assert (=> d!1266455 m!4890911))

(declare-fun m!4890943 () Bool)

(assert (=> b!4298847 m!4890943))

(declare-fun m!4890945 () Bool)

(assert (=> b!4298847 m!4890945))

(declare-fun m!4890947 () Bool)

(assert (=> b!4298847 m!4890947))

(declare-fun m!4890949 () Bool)

(assert (=> b!4298847 m!4890949))

(assert (=> b!4298847 m!4890931))

(declare-fun m!4890951 () Bool)

(assert (=> bm!295489 m!4890951))

(declare-fun m!4890953 () Bool)

(assert (=> b!4298835 m!4890953))

(declare-fun m!4890955 () Bool)

(assert (=> b!4298835 m!4890955))

(assert (=> b!4298835 m!4890955))

(declare-fun m!4890957 () Bool)

(assert (=> b!4298835 m!4890957))

(assert (=> b!4298835 m!4890953))

(declare-fun m!4890959 () Bool)

(assert (=> b!4298835 m!4890959))

(declare-fun m!4890961 () Bool)

(assert (=> b!4298835 m!4890961))

(declare-fun m!4890963 () Bool)

(assert (=> b!4298843 m!4890963))

(declare-fun m!4890965 () Bool)

(assert (=> b!4298843 m!4890965))

(assert (=> b!4298788 d!1266455))

(declare-fun d!1266457 () Bool)

(declare-fun res!1761915 () Bool)

(declare-fun e!2671928 () Bool)

(assert (=> d!1266457 (=> (not res!1761915) (not e!2671928))))

(declare-fun valid!3488 (MutLongMap!4509) Bool)

(assert (=> d!1266457 (= res!1761915 (valid!3488 (v!41870 (underlying!9248 hm!64))))))

(assert (=> d!1266457 (= (valid!3487 hm!64) e!2671928)))

(declare-fun b!4298852 () Bool)

(declare-fun res!1761916 () Bool)

(assert (=> b!4298852 (=> (not res!1761916) (not e!2671928))))

(declare-fun lambda!131887 () Int)

(declare-fun forall!8617 (List!48042 Int) Bool)

(assert (=> b!4298852 (= res!1761916 (forall!8617 (toList!2179 (map!9878 (v!41870 (underlying!9248 hm!64)))) lambda!131887))))

(declare-fun b!4298853 () Bool)

(declare-fun allKeysSameHashInMap!265 (ListLongMap!793 Hashable!4425) Bool)

(assert (=> b!4298853 (= e!2671928 (allKeysSameHashInMap!265 (map!9878 (v!41870 (underlying!9248 hm!64))) (hashF!6457 hm!64)))))

(assert (= (and d!1266457 res!1761915) b!4298852))

(assert (= (and b!4298852 res!1761916) b!4298853))

(declare-fun m!4890967 () Bool)

(assert (=> d!1266457 m!4890967))

(declare-fun m!4890969 () Bool)

(assert (=> b!4298852 m!4890969))

(declare-fun m!4890971 () Bool)

(assert (=> b!4298852 m!4890971))

(assert (=> b!4298853 m!4890969))

(assert (=> b!4298853 m!4890969))

(declare-fun m!4890973 () Bool)

(assert (=> b!4298853 m!4890973))

(assert (=> b!4298787 d!1266457))

(declare-fun bs!603913 () Bool)

(declare-fun b!4298905 () Bool)

(assert (= bs!603913 (and b!4298905 b!4298852)))

(declare-fun lambda!131896 () Int)

(assert (=> bs!603913 (= lambda!131896 lambda!131887)))

(declare-fun bs!603914 () Bool)

(declare-fun b!4298906 () Bool)

(assert (= bs!603914 (and b!4298906 b!4298852)))

(declare-fun lambda!131897 () Int)

(assert (=> bs!603914 (= lambda!131897 lambda!131887)))

(declare-fun bs!603915 () Bool)

(assert (= bs!603915 (and b!4298906 b!4298905)))

(assert (=> bs!603915 (= lambda!131897 lambda!131896)))

(declare-fun bm!295555 () Bool)

(declare-fun call!295572 () Bool)

(declare-fun call!295584 () ListMap!1457)

(declare-fun e!2671951 () ListMap!1457)

(declare-fun eq!94 (ListMap!1457 ListMap!1457) Bool)

(assert (=> bm!295555 (= call!295572 (eq!94 call!295584 e!2671951))))

(declare-fun c!731269 () Bool)

(declare-fun c!731266 () Bool)

(assert (=> bm!295555 (= c!731269 c!731266)))

(declare-fun bm!295556 () Bool)

(declare-fun call!295561 () ListMap!1457)

(declare-fun call!295567 () ListMap!1457)

(assert (=> bm!295556 (= call!295561 call!295567)))

(declare-fun lt!1520643 () ListMap!1457)

(declare-fun lt!1520652 () ListMap!1457)

(declare-fun bm!295557 () Bool)

(declare-fun lt!1520681 () ListMap!1457)

(declare-fun c!731263 () Bool)

(declare-fun lt!1520690 () ListMap!1457)

(declare-fun call!295564 () Unit!66672)

(declare-fun lemmaEquivalentThenSameContains!29 (ListMap!1457 ListMap!1457 K!9019) Unit!66672)

(assert (=> bm!295557 (= call!295564 (lemmaEquivalentThenSameContains!29 (ite c!731263 lt!1520690 lt!1520681) (ite c!731263 lt!1520652 lt!1520643) k0!1716))))

(declare-fun b!4298892 () Bool)

(declare-fun lt!1520655 () ListMap!1457)

(assert (=> b!4298892 (= call!295561 lt!1520655)))

(declare-fun lt!1520662 () Unit!66672)

(declare-fun Unit!66677 () Unit!66672)

(assert (=> b!4298892 (= lt!1520662 Unit!66677)))

(declare-fun call!295588 () Bool)

(assert (=> b!4298892 call!295588))

(declare-fun e!2671954 () Unit!66672)

(declare-fun Unit!66678 () Unit!66672)

(assert (=> b!4298892 (= e!2671954 Unit!66678)))

(declare-fun bm!295558 () Bool)

(declare-fun call!295563 () Bool)

(declare-fun contains!9836 (ListMap!1457 K!9019) Bool)

(assert (=> bm!295558 (= call!295563 (contains!9836 (ite c!731263 lt!1520690 lt!1520643) k0!1716))))

(declare-fun lt!1520672 () List!48041)

(declare-fun lt!1520644 () List!48041)

(declare-fun bm!295559 () Bool)

(declare-fun lt!1520654 () (_ BitVec 64))

(declare-datatypes ((tuple2!45818 0))(
  ( (tuple2!45819 (_1!26188 Bool) (_2!26188 MutLongMap!4509)) )
))
(declare-fun call!295578 () tuple2!45818)

(declare-fun lt!1520678 () (_ BitVec 64))

(declare-fun update!317 (MutLongMap!4509 (_ BitVec 64) List!48041) tuple2!45818)

(assert (=> bm!295559 (= call!295578 (update!317 (v!41870 (underlying!9248 hm!64)) (ite c!731263 lt!1520678 lt!1520654) (ite c!731263 lt!1520672 lt!1520644)))))

(declare-fun bm!295560 () Bool)

(declare-fun lt!1520685 () tuple2!45814)

(assert (=> bm!295560 (= call!295584 (map!9877 (_2!26186 lt!1520685)))))

(declare-fun lt!1520661 () tuple2!45818)

(declare-fun lt!1520668 () MutableMap!4415)

(declare-fun e!2671956 () tuple2!45814)

(declare-fun b!4298893 () Bool)

(declare-datatypes ((tuple2!45820 0))(
  ( (tuple2!45821 (_1!26189 Unit!66672) (_2!26189 MutableMap!4415)) )
))
(declare-fun Unit!66679 () Unit!66672)

(declare-fun Unit!66680 () Unit!66672)

(assert (=> b!4298893 (= e!2671956 (tuple2!45815 (_1!26188 lt!1520661) (_2!26189 (ite (_1!26188 lt!1520661) (tuple2!45821 Unit!66679 (HashMap!4415 (Cell!17848 (_2!26188 lt!1520661)) (hashF!6457 hm!64) (bvadd (_size!9062 hm!64) #b00000000000000000000000000000001) (defaultValue!4586 hm!64))) (tuple2!45821 Unit!66680 lt!1520668)))))))

(declare-fun call!295583 () (_ BitVec 64))

(assert (=> b!4298893 (= lt!1520654 call!295583)))

(declare-fun c!731267 () Bool)

(declare-fun contains!9837 (MutLongMap!4509 (_ BitVec 64)) Bool)

(assert (=> b!4298893 (= c!731267 (contains!9837 (v!41870 (underlying!9248 hm!64)) lt!1520654))))

(declare-fun lt!1520679 () List!48041)

(declare-fun e!2671959 () List!48041)

(assert (=> b!4298893 (= lt!1520679 e!2671959)))

(assert (=> b!4298893 (= lt!1520644 (Cons!47917 (tuple2!45813 k0!1716 v!9471) lt!1520679))))

(assert (=> b!4298893 (= lt!1520661 call!295578)))

(assert (=> b!4298893 (= lt!1520668 (HashMap!4415 (Cell!17848 (_2!26188 lt!1520661)) (hashF!6457 hm!64) (_size!9062 hm!64) (defaultValue!4586 hm!64)))))

(declare-fun c!731265 () Bool)

(assert (=> b!4298893 (= c!731265 (_1!26188 lt!1520661))))

(declare-fun lt!1520665 () Unit!66672)

(declare-fun e!2671958 () Unit!66672)

(assert (=> b!4298893 (= lt!1520665 e!2671958)))

(declare-fun b!4298894 () Bool)

(declare-fun e!2671955 () Bool)

(assert (=> b!4298894 (= e!2671955 call!295572)))

(declare-fun lt!1520651 () ListLongMap!793)

(declare-fun lt!1520642 () ListLongMap!793)

(declare-fun bm!295561 () Bool)

(declare-fun call!295560 () Bool)

(assert (=> bm!295561 (= call!295560 (allKeysSameHashInMap!265 (ite c!731263 lt!1520642 lt!1520651) (hashF!6457 hm!64)))))

(declare-fun bm!295562 () Bool)

(declare-fun call!295562 () Bool)

(declare-fun call!295579 () ListLongMap!793)

(assert (=> bm!295562 (= call!295562 (allKeysSameHashInMap!265 call!295579 (hashF!6457 hm!64)))))

(declare-fun lt!1520641 () ListLongMap!793)

(declare-fun bm!295563 () Bool)

(declare-fun call!295571 () ListLongMap!793)

(declare-fun +!159 (ListLongMap!793 tuple2!45816) ListLongMap!793)

(assert (=> bm!295563 (= call!295571 (+!159 lt!1520641 (ite c!731263 (tuple2!45817 lt!1520678 lt!1520672) (tuple2!45817 lt!1520654 lt!1520644))))))

(declare-fun b!4298895 () Bool)

(declare-fun lt!1520658 () tuple2!45818)

(declare-fun lt!1520660 () MutableMap!4415)

(declare-fun Unit!66681 () Unit!66672)

(declare-fun Unit!66682 () Unit!66672)

(assert (=> b!4298895 (= e!2671956 (tuple2!45815 (_1!26188 lt!1520658) (_2!26189 (ite false (tuple2!45821 Unit!66681 (HashMap!4415 (Cell!17848 (_2!26188 lt!1520658)) (hashF!6457 hm!64) (bvadd (_size!9062 hm!64) #b00000000000000000000000000000001) (defaultValue!4586 hm!64))) (tuple2!45821 Unit!66682 lt!1520660)))))))

(assert (=> b!4298895 (= lt!1520678 call!295583)))

(declare-fun lt!1520653 () List!48041)

(declare-fun call!295573 () List!48041)

(assert (=> b!4298895 (= lt!1520653 call!295573)))

(declare-fun call!295590 () List!48041)

(assert (=> b!4298895 (= lt!1520672 (Cons!47917 (tuple2!45813 k0!1716 v!9471) call!295590))))

(assert (=> b!4298895 (= lt!1520658 call!295578)))

(assert (=> b!4298895 (= lt!1520660 (HashMap!4415 (Cell!17848 (_2!26188 lt!1520658)) (hashF!6457 hm!64) (_size!9062 hm!64) (defaultValue!4586 hm!64)))))

(declare-fun c!731268 () Bool)

(assert (=> b!4298895 (= c!731268 (_1!26188 lt!1520658))))

(declare-fun lt!1520682 () Unit!66672)

(assert (=> b!4298895 (= lt!1520682 e!2671954)))

(declare-fun bm!295564 () Bool)

(declare-fun removePairForKey!134 (List!48041 K!9019) List!48041)

(assert (=> bm!295564 (= call!295590 (removePairForKey!134 (ite c!731263 lt!1520653 lt!1520679) k0!1716))))

(declare-fun b!4298896 () Bool)

(declare-fun call!295566 () ListMap!1457)

(assert (=> b!4298896 (= e!2671951 call!295566)))

(declare-fun b!4298897 () Bool)

(declare-fun e!2671953 () Bool)

(declare-fun e!2671957 () Bool)

(assert (=> b!4298897 (= e!2671953 e!2671957)))

(assert (=> b!4298897 (= c!731266 (_1!26186 lt!1520685))))

(declare-fun b!4298898 () Bool)

(assert (=> b!4298898 (= e!2671959 call!295573)))

(declare-fun bm!295565 () Bool)

(declare-fun call!295577 () ListMap!1457)

(assert (=> bm!295565 (= call!295577 call!295567)))

(declare-fun b!4298899 () Bool)

(assert (=> b!4298899 (= e!2671951 (+!158 call!295566 (tuple2!45813 k0!1716 v!9471)))))

(declare-fun b!4298900 () Bool)

(assert (=> b!4298900 (= e!2671957 e!2671955)))

(declare-fun res!1761931 () Bool)

(assert (=> b!4298900 (= res!1761931 (contains!9836 call!295584 k0!1716))))

(assert (=> b!4298900 (=> (not res!1761931) (not e!2671955))))

(declare-fun b!4298901 () Bool)

(declare-fun e!2671960 () Bool)

(assert (=> b!4298901 (= e!2671960 call!295560)))

(declare-fun call!295582 () Unit!66672)

(declare-fun bm!295566 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!95 (ListLongMap!793 (_ BitVec 64) List!48041 Hashable!4425) Unit!66672)

(assert (=> bm!295566 (= call!295582 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!95 lt!1520641 (ite c!731263 lt!1520678 lt!1520654) (ite c!731263 lt!1520672 lt!1520644) (hashF!6457 hm!64)))))

(declare-fun b!4298902 () Bool)

(declare-fun res!1761929 () Bool)

(assert (=> b!4298902 (=> (not res!1761929) (not e!2671953))))

(assert (=> b!4298902 (= res!1761929 (valid!3487 (_2!26186 lt!1520685)))))

(declare-fun b!4298903 () Bool)

(assert (=> b!4298903 (= e!2671957 call!295572)))

(declare-fun b!4298904 () Bool)

(declare-fun e!2671952 () Unit!66672)

(declare-fun Unit!66683 () Unit!66672)

(assert (=> b!4298904 (= e!2671952 Unit!66683)))

(declare-fun bm!295567 () Bool)

(declare-fun call!295574 () Bool)

(declare-fun allKeysSameHash!117 (List!48041 (_ BitVec 64) Hashable!4425) Bool)

(assert (=> bm!295567 (= call!295574 (allKeysSameHash!117 (ite c!731263 lt!1520653 lt!1520679) (ite c!731263 lt!1520678 lt!1520654) (hashF!6457 hm!64)))))

(declare-fun bm!295568 () Bool)

(assert (=> bm!295568 (= call!295567 (map!9877 (ite c!731263 lt!1520660 lt!1520668)))))

(declare-fun bm!295569 () Bool)

(assert (=> bm!295569 (= call!295566 (map!9877 hm!64))))

(declare-fun call!295586 () Bool)

(assert (=> b!4298905 call!295586))

(declare-fun lt!1520639 () Unit!66672)

(declare-fun Unit!66684 () Unit!66672)

(assert (=> b!4298905 (= lt!1520639 Unit!66684)))

(assert (=> b!4298905 call!295562))

(declare-fun lt!1520667 () Unit!66672)

(declare-fun Unit!66685 () Unit!66672)

(assert (=> b!4298905 (= lt!1520667 Unit!66685)))

(declare-fun call!295565 () Bool)

(assert (=> b!4298905 call!295565))

(declare-fun lt!1520670 () Unit!66672)

(declare-fun lt!1520684 () Unit!66672)

(assert (=> b!4298905 (= lt!1520670 lt!1520684)))

(declare-fun call!295581 () Bool)

(assert (=> b!4298905 (= call!295563 call!295581)))

(assert (=> b!4298905 (= lt!1520684 call!295564)))

(declare-fun call!295575 () ListMap!1457)

(assert (=> b!4298905 (= lt!1520652 call!295575)))

(assert (=> b!4298905 (= lt!1520690 call!295561)))

(declare-fun lt!1520680 () Unit!66672)

(declare-fun lt!1520636 () Unit!66672)

(assert (=> b!4298905 (= lt!1520680 lt!1520636)))

(declare-fun call!295569 () Bool)

(assert (=> b!4298905 call!295569))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!29 (ListLongMap!793 (_ BitVec 64) List!48041 K!9019 V!9221 Hashable!4425) Unit!66672)

(assert (=> b!4298905 (= lt!1520636 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!29 lt!1520641 lt!1520678 lt!1520672 k0!1716 v!9471 (hashF!6457 hm!64)))))

(declare-fun lt!1520648 () Unit!66672)

(declare-fun lt!1520638 () Unit!66672)

(assert (=> b!4298905 (= lt!1520648 lt!1520638)))

(assert (=> b!4298905 e!2671960))

(declare-fun res!1761930 () Bool)

(assert (=> b!4298905 (=> (not res!1761930) (not e!2671960))))

(declare-fun call!295585 () Bool)

(assert (=> b!4298905 (= res!1761930 call!295585)))

(assert (=> b!4298905 (= lt!1520642 call!295571)))

(assert (=> b!4298905 (= lt!1520638 call!295582)))

(declare-fun lt!1520669 () Unit!66672)

(declare-fun Unit!66686 () Unit!66672)

(assert (=> b!4298905 (= lt!1520669 Unit!66686)))

(declare-fun noDuplicateKeys!145 (List!48041) Bool)

(assert (=> b!4298905 (noDuplicateKeys!145 lt!1520672)))

(declare-fun lt!1520657 () Unit!66672)

(declare-fun Unit!66687 () Unit!66672)

(assert (=> b!4298905 (= lt!1520657 Unit!66687)))

(declare-fun containsKey!225 (List!48041 K!9019) Bool)

(assert (=> b!4298905 (not (containsKey!225 call!295590 k0!1716))))

(declare-fun lt!1520656 () Unit!66672)

(declare-fun Unit!66688 () Unit!66672)

(assert (=> b!4298905 (= lt!1520656 Unit!66688)))

(declare-fun lt!1520664 () Unit!66672)

(declare-fun lt!1520649 () Unit!66672)

(assert (=> b!4298905 (= lt!1520664 lt!1520649)))

(assert (=> b!4298905 (noDuplicateKeys!145 call!295590)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!122 (List!48041 K!9019) Unit!66672)

(assert (=> b!4298905 (= lt!1520649 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!122 lt!1520653 k0!1716))))

(declare-fun lt!1520650 () Unit!66672)

(declare-fun lt!1520674 () Unit!66672)

(assert (=> b!4298905 (= lt!1520650 lt!1520674)))

(declare-fun call!295580 () Bool)

(assert (=> b!4298905 call!295580))

(declare-fun call!295568 () Unit!66672)

(assert (=> b!4298905 (= lt!1520674 call!295568)))

(declare-fun lt!1520673 () Unit!66672)

(declare-fun lt!1520688 () Unit!66672)

(assert (=> b!4298905 (= lt!1520673 lt!1520688)))

(assert (=> b!4298905 call!295574))

(declare-fun call!295587 () Unit!66672)

(assert (=> b!4298905 (= lt!1520688 call!295587)))

(declare-fun Unit!66689 () Unit!66672)

(assert (=> b!4298905 (= e!2671954 Unit!66689)))

(declare-fun bm!295570 () Bool)

(assert (=> bm!295570 (= call!295588 (valid!3487 (ite c!731263 lt!1520660 lt!1520668)))))

(declare-fun bm!295571 () Bool)

(declare-fun call!295589 () ListMap!1457)

(declare-fun call!295570 () ListMap!1457)

(assert (=> bm!295571 (= call!295569 (eq!94 call!295589 call!295570))))

(assert (=> b!4298906 (contains!9836 call!295577 k0!1716)))

(declare-fun lt!1520666 () Unit!66672)

(declare-fun Unit!66690 () Unit!66672)

(assert (=> b!4298906 (= lt!1520666 Unit!66690)))

(assert (=> b!4298906 (contains!9836 call!295575 k0!1716)))

(declare-fun lt!1520675 () Unit!66672)

(declare-fun lt!1520647 () Unit!66672)

(assert (=> b!4298906 (= lt!1520675 lt!1520647)))

(assert (=> b!4298906 (= call!295581 call!295563)))

(assert (=> b!4298906 (= lt!1520647 call!295564)))

(assert (=> b!4298906 (= lt!1520643 call!295575)))

(assert (=> b!4298906 (= lt!1520681 call!295577)))

(declare-fun lt!1520683 () Unit!66672)

(declare-fun Unit!66691 () Unit!66672)

(assert (=> b!4298906 (= lt!1520683 Unit!66691)))

(assert (=> b!4298906 call!295586))

(declare-fun lt!1520676 () Unit!66672)

(declare-fun Unit!66692 () Unit!66672)

(assert (=> b!4298906 (= lt!1520676 Unit!66692)))

(assert (=> b!4298906 call!295562))

(declare-fun lt!1520637 () Unit!66672)

(declare-fun Unit!66693 () Unit!66672)

(assert (=> b!4298906 (= lt!1520637 Unit!66693)))

(assert (=> b!4298906 call!295565))

(declare-fun lt!1520663 () Unit!66672)

(declare-fun lt!1520645 () Unit!66672)

(assert (=> b!4298906 (= lt!1520663 lt!1520645)))

(assert (=> b!4298906 call!295569))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!29 (ListLongMap!793 (_ BitVec 64) List!48041 K!9019 V!9221 Hashable!4425) Unit!66672)

(assert (=> b!4298906 (= lt!1520645 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!29 lt!1520641 lt!1520654 lt!1520644 k0!1716 v!9471 (hashF!6457 hm!64)))))

(declare-fun lt!1520640 () Unit!66672)

(declare-fun lt!1520686 () Unit!66672)

(assert (=> b!4298906 (= lt!1520640 lt!1520686)))

(declare-fun e!2671961 () Bool)

(assert (=> b!4298906 e!2671961))

(declare-fun res!1761928 () Bool)

(assert (=> b!4298906 (=> (not res!1761928) (not e!2671961))))

(assert (=> b!4298906 (= res!1761928 call!295585)))

(assert (=> b!4298906 (= lt!1520651 call!295571)))

(assert (=> b!4298906 (= lt!1520686 call!295582)))

(declare-fun lt!1520677 () Unit!66672)

(assert (=> b!4298906 (= lt!1520677 e!2671952)))

(declare-fun c!731264 () Bool)

(declare-fun isEmpty!28041 (List!48041) Bool)

(assert (=> b!4298906 (= c!731264 (not (isEmpty!28041 lt!1520679)))))

(declare-fun Unit!66694 () Unit!66672)

(assert (=> b!4298906 (= e!2671958 Unit!66694)))

(declare-fun bm!295572 () Bool)

(assert (=> bm!295572 (= call!295589 (extractMap!265 (toList!2179 call!295571)))))

(declare-fun b!4298907 () Bool)

(assert (=> b!4298907 (= call!295577 lt!1520655)))

(declare-fun lt!1520687 () Unit!66672)

(declare-fun Unit!66695 () Unit!66672)

(assert (=> b!4298907 (= lt!1520687 Unit!66695)))

(assert (=> b!4298907 call!295588))

(declare-fun Unit!66696 () Unit!66672)

(assert (=> b!4298907 (= e!2671958 Unit!66696)))

(declare-fun bm!295573 () Bool)

(assert (=> bm!295573 (= call!295581 (contains!9836 (ite c!731263 lt!1520652 lt!1520681) k0!1716))))

(declare-fun bm!295574 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!108 (List!48042 (_ BitVec 64) List!48041 Hashable!4425) Unit!66672)

(assert (=> bm!295574 (= call!295587 (lemmaInLongMapAllKeySameHashThenForTuple!108 (toList!2179 lt!1520641) (ite c!731263 lt!1520678 lt!1520654) (ite c!731263 lt!1520653 lt!1520679) (hashF!6457 hm!64)))))

(declare-fun bm!295575 () Bool)

(assert (=> bm!295575 (= call!295586 (eq!94 (ite c!731263 call!295561 call!295577) call!295575))))

(declare-fun bm!295576 () Bool)

(assert (=> bm!295576 (= call!295580 (allKeysSameHash!117 call!295590 (ite c!731263 lt!1520678 lt!1520654) (hashF!6457 hm!64)))))

(declare-fun bm!295577 () Bool)

(assert (=> bm!295577 (= call!295579 (map!9878 (ite c!731263 (_2!26188 lt!1520658) (_2!26188 lt!1520661))))))

(declare-fun bm!295578 () Bool)

(declare-fun call!295576 () ListMap!1457)

(assert (=> bm!295578 (= call!295570 (+!158 call!295576 (tuple2!45813 k0!1716 v!9471)))))

(declare-fun bm!295579 () Bool)

(assert (=> bm!295579 (= call!295565 (forall!8617 (toList!2179 call!295579) (ite c!731263 lambda!131896 lambda!131897)))))

(declare-fun bm!295580 () Bool)

(assert (=> bm!295580 (= call!295576 (extractMap!265 (toList!2179 lt!1520641)))))

(declare-fun b!4298908 () Bool)

(declare-fun lt!1520671 () Unit!66672)

(assert (=> b!4298908 (= e!2671952 lt!1520671)))

(declare-fun lt!1520646 () Unit!66672)

(assert (=> b!4298908 (= lt!1520646 call!295587)))

(assert (=> b!4298908 call!295574))

(declare-fun lt!1520689 () Unit!66672)

(assert (=> b!4298908 (= lt!1520689 lt!1520646)))

(assert (=> b!4298908 (= lt!1520671 call!295568)))

(assert (=> b!4298908 call!295580))

(declare-fun bm!295581 () Bool)

(declare-fun apply!10870 (MutLongMap!4509 (_ BitVec 64)) List!48041)

(assert (=> bm!295581 (= call!295573 (apply!10870 (v!41870 (underlying!9248 hm!64)) (ite c!731263 lt!1520678 lt!1520654)))))

(declare-fun bm!295582 () Bool)

(assert (=> bm!295582 (= call!295575 (+!158 lt!1520655 (tuple2!45813 k0!1716 v!9471)))))

(declare-fun bm!295583 () Bool)

(assert (=> bm!295583 (= call!295585 (forall!8617 (ite c!731263 (toList!2179 lt!1520642) (toList!2179 lt!1520651)) (ite c!731263 lambda!131896 lambda!131897)))))

(declare-fun bm!295584 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!104 (List!48041 K!9019 (_ BitVec 64) Hashable!4425) Unit!66672)

(assert (=> bm!295584 (= call!295568 (lemmaRemovePairForKeyPreservesHash!104 (ite c!731263 lt!1520653 lt!1520679) k0!1716 (ite c!731263 lt!1520678 lt!1520654) (hashF!6457 hm!64)))))

(declare-fun b!4298909 () Bool)

(assert (=> b!4298909 (= e!2671959 Nil!47917)))

(declare-fun d!1266459 () Bool)

(assert (=> d!1266459 e!2671953))

(declare-fun res!1761927 () Bool)

(assert (=> d!1266459 (=> (not res!1761927) (not e!2671953))))

(assert (=> d!1266459 (= res!1761927 ((_ is HashMap!4415) (_2!26186 lt!1520685)))))

(declare-fun lt!1520659 () tuple2!45814)

(assert (=> d!1266459 (= lt!1520685 (tuple2!45815 (_1!26186 lt!1520659) (_2!26186 lt!1520659)))))

(assert (=> d!1266459 (= lt!1520659 e!2671956)))

(declare-fun contains!9838 (MutableMap!4415 K!9019) Bool)

(assert (=> d!1266459 (= c!731263 (contains!9838 hm!64 k0!1716))))

(assert (=> d!1266459 (= lt!1520641 (map!9878 (v!41870 (underlying!9248 hm!64))))))

(assert (=> d!1266459 (= lt!1520655 (map!9877 hm!64))))

(assert (=> d!1266459 (valid!3487 hm!64)))

(assert (=> d!1266459 (= (update!316 hm!64 k0!1716 v!9471) lt!1520685)))

(declare-fun bm!295585 () Bool)

(declare-fun hash!833 (Hashable!4425 K!9019) (_ BitVec 64))

(assert (=> bm!295585 (= call!295583 (hash!833 (hashF!6457 hm!64) k0!1716))))

(declare-fun b!4298910 () Bool)

(assert (=> b!4298910 (= e!2671961 call!295560)))

(assert (= (and d!1266459 c!731263) b!4298895))

(assert (= (and d!1266459 (not c!731263)) b!4298893))

(assert (= (and b!4298895 c!731268) b!4298905))

(assert (= (and b!4298895 (not c!731268)) b!4298892))

(assert (= (and b!4298905 res!1761930) b!4298901))

(assert (= (or b!4298905 b!4298892) bm!295556))

(assert (= (and b!4298893 c!731267) b!4298898))

(assert (= (and b!4298893 (not c!731267)) b!4298909))

(assert (= (and b!4298893 c!731265) b!4298906))

(assert (= (and b!4298893 (not c!731265)) b!4298907))

(assert (= (and b!4298906 c!731264) b!4298908))

(assert (= (and b!4298906 (not c!731264)) b!4298904))

(assert (= (and b!4298906 res!1761928) b!4298910))

(assert (= (or b!4298906 b!4298907) bm!295565))

(assert (= (or b!4298905 b!4298906) bm!295557))

(assert (= (or bm!295556 bm!295565) bm!295568))

(assert (= (or b!4298905 b!4298906) bm!295566))

(assert (= (or b!4298895 b!4298898) bm!295581))

(assert (= (or b!4298905 b!4298906) bm!295577))

(assert (= (or b!4298905 b!4298906) bm!295582))

(assert (= (or b!4298905 b!4298906) bm!295558))

(assert (= (or b!4298905 b!4298906) bm!295580))

(assert (= (or b!4298905 b!4298906) bm!295573))

(assert (= (or b!4298905 b!4298908) bm!295584))

(assert (= (or b!4298895 b!4298905 b!4298908) bm!295564))

(assert (= (or b!4298905 b!4298906) bm!295563))

(assert (= (or b!4298892 b!4298907) bm!295570))

(assert (= (or b!4298895 b!4298893) bm!295585))

(assert (= (or b!4298905 b!4298908) bm!295574))

(assert (= (or b!4298905 b!4298906) bm!295583))

(assert (= (or b!4298895 b!4298893) bm!295559))

(assert (= (or b!4298901 b!4298910) bm!295561))

(assert (= (or b!4298905 b!4298908) bm!295567))

(assert (= (or b!4298905 b!4298906) bm!295562))

(assert (= (or b!4298905 b!4298906) bm!295579))

(assert (= (or b!4298905 b!4298908) bm!295576))

(assert (= (or b!4298905 b!4298906) bm!295578))

(assert (= (or b!4298905 b!4298906) bm!295575))

(assert (= (or b!4298905 b!4298906) bm!295572))

(assert (= (or b!4298905 b!4298906) bm!295571))

(assert (= (and d!1266459 res!1761927) b!4298902))

(assert (= (and b!4298902 res!1761929) b!4298897))

(assert (= (and b!4298897 c!731266) b!4298900))

(assert (= (and b!4298897 (not c!731266)) b!4298903))

(assert (= (and b!4298900 res!1761931) b!4298894))

(assert (= (or b!4298894 b!4298903) bm!295569))

(assert (= (or b!4298900 b!4298894 b!4298903) bm!295560))

(assert (= (or b!4298894 b!4298903) bm!295555))

(assert (= (and bm!295555 c!731269) b!4298899))

(assert (= (and bm!295555 (not c!731269)) b!4298896))

(declare-fun m!4890975 () Bool)

(assert (=> bm!295577 m!4890975))

(declare-fun m!4890977 () Bool)

(assert (=> bm!295584 m!4890977))

(declare-fun m!4890979 () Bool)

(assert (=> bm!295560 m!4890979))

(declare-fun m!4890981 () Bool)

(assert (=> b!4298906 m!4890981))

(declare-fun m!4890983 () Bool)

(assert (=> b!4298906 m!4890983))

(declare-fun m!4890985 () Bool)

(assert (=> b!4298906 m!4890985))

(declare-fun m!4890987 () Bool)

(assert (=> b!4298906 m!4890987))

(declare-fun m!4890989 () Bool)

(assert (=> bm!295582 m!4890989))

(declare-fun m!4890991 () Bool)

(assert (=> d!1266459 m!4890991))

(assert (=> d!1266459 m!4890969))

(assert (=> d!1266459 m!4890897))

(assert (=> d!1266459 m!4890893))

(declare-fun m!4890993 () Bool)

(assert (=> bm!295583 m!4890993))

(declare-fun m!4890995 () Bool)

(assert (=> bm!295581 m!4890995))

(declare-fun m!4890997 () Bool)

(assert (=> b!4298900 m!4890997))

(declare-fun m!4890999 () Bool)

(assert (=> bm!295572 m!4890999))

(declare-fun m!4891001 () Bool)

(assert (=> bm!295561 m!4891001))

(declare-fun m!4891003 () Bool)

(assert (=> bm!295568 m!4891003))

(declare-fun m!4891005 () Bool)

(assert (=> bm!295555 m!4891005))

(declare-fun m!4891007 () Bool)

(assert (=> bm!295567 m!4891007))

(declare-fun m!4891009 () Bool)

(assert (=> bm!295563 m!4891009))

(assert (=> bm!295569 m!4890897))

(declare-fun m!4891011 () Bool)

(assert (=> bm!295564 m!4891011))

(declare-fun m!4891013 () Bool)

(assert (=> b!4298902 m!4891013))

(declare-fun m!4891015 () Bool)

(assert (=> bm!295579 m!4891015))

(declare-fun m!4891017 () Bool)

(assert (=> bm!295562 m!4891017))

(declare-fun m!4891019 () Bool)

(assert (=> bm!295574 m!4891019))

(declare-fun m!4891021 () Bool)

(assert (=> bm!295570 m!4891021))

(declare-fun m!4891023 () Bool)

(assert (=> bm!295566 m!4891023))

(declare-fun m!4891025 () Bool)

(assert (=> b!4298893 m!4891025))

(declare-fun m!4891027 () Bool)

(assert (=> bm!295576 m!4891027))

(declare-fun m!4891029 () Bool)

(assert (=> bm!295573 m!4891029))

(declare-fun m!4891031 () Bool)

(assert (=> b!4298905 m!4891031))

(declare-fun m!4891033 () Bool)

(assert (=> b!4298905 m!4891033))

(declare-fun m!4891035 () Bool)

(assert (=> b!4298905 m!4891035))

(declare-fun m!4891037 () Bool)

(assert (=> b!4298905 m!4891037))

(declare-fun m!4891039 () Bool)

(assert (=> b!4298905 m!4891039))

(declare-fun m!4891041 () Bool)

(assert (=> bm!295585 m!4891041))

(declare-fun m!4891043 () Bool)

(assert (=> b!4298899 m!4891043))

(declare-fun m!4891045 () Bool)

(assert (=> bm!295578 m!4891045))

(declare-fun m!4891047 () Bool)

(assert (=> bm!295575 m!4891047))

(declare-fun m!4891049 () Bool)

(assert (=> bm!295558 m!4891049))

(declare-fun m!4891051 () Bool)

(assert (=> bm!295571 m!4891051))

(declare-fun m!4891053 () Bool)

(assert (=> bm!295580 m!4891053))

(declare-fun m!4891055 () Bool)

(assert (=> bm!295559 m!4891055))

(declare-fun m!4891057 () Bool)

(assert (=> bm!295557 m!4891057))

(assert (=> b!4298796 d!1266459))

(declare-fun d!1266461 () Bool)

(declare-fun e!2671964 () Bool)

(assert (=> d!1266461 e!2671964))

(declare-fun res!1761936 () Bool)

(assert (=> d!1266461 (=> (not res!1761936) (not e!2671964))))

(declare-fun lt!1520699 () ListMap!1457)

(assert (=> d!1266461 (= res!1761936 (contains!9836 lt!1520699 (_1!26185 lt!1520477)))))

(declare-fun lt!1520701 () List!48041)

(assert (=> d!1266461 (= lt!1520699 (ListMap!1458 lt!1520701))))

(declare-fun lt!1520702 () Unit!66672)

(declare-fun lt!1520700 () Unit!66672)

(assert (=> d!1266461 (= lt!1520702 lt!1520700)))

(declare-datatypes ((Option!10157 0))(
  ( (None!10156) (Some!10156 (v!41872 V!9221)) )
))
(declare-fun getValueByKey!206 (List!48041 K!9019) Option!10157)

(assert (=> d!1266461 (= (getValueByKey!206 lt!1520701 (_1!26185 lt!1520477)) (Some!10156 (_2!26185 lt!1520477)))))

(declare-fun lemmaContainsTupThenGetReturnValue!37 (List!48041 K!9019 V!9221) Unit!66672)

(assert (=> d!1266461 (= lt!1520700 (lemmaContainsTupThenGetReturnValue!37 lt!1520701 (_1!26185 lt!1520477) (_2!26185 lt!1520477)))))

(assert (=> d!1266461 (= lt!1520701 (insertNoDuplicatedKeys!17 (toList!2178 lt!1520482) (_1!26185 lt!1520477) (_2!26185 lt!1520477)))))

(assert (=> d!1266461 (= (+!158 lt!1520482 lt!1520477) lt!1520699)))

(declare-fun b!4298915 () Bool)

(declare-fun res!1761937 () Bool)

(assert (=> b!4298915 (=> (not res!1761937) (not e!2671964))))

(assert (=> b!4298915 (= res!1761937 (= (getValueByKey!206 (toList!2178 lt!1520699) (_1!26185 lt!1520477)) (Some!10156 (_2!26185 lt!1520477))))))

(declare-fun b!4298916 () Bool)

(assert (=> b!4298916 (= e!2671964 (contains!9834 (toList!2178 lt!1520699) lt!1520477))))

(assert (= (and d!1266461 res!1761936) b!4298915))

(assert (= (and b!4298915 res!1761937) b!4298916))

(declare-fun m!4891059 () Bool)

(assert (=> d!1266461 m!4891059))

(declare-fun m!4891061 () Bool)

(assert (=> d!1266461 m!4891061))

(declare-fun m!4891063 () Bool)

(assert (=> d!1266461 m!4891063))

(declare-fun m!4891065 () Bool)

(assert (=> d!1266461 m!4891065))

(declare-fun m!4891067 () Bool)

(assert (=> b!4298915 m!4891067))

(declare-fun m!4891069 () Bool)

(assert (=> b!4298916 m!4891069))

(assert (=> b!4298796 d!1266461))

(declare-fun d!1266463 () Bool)

(declare-fun res!1761938 () Bool)

(declare-fun e!2671965 () Bool)

(assert (=> d!1266463 (=> res!1761938 e!2671965)))

(assert (=> d!1266463 (= res!1761938 ((_ is Nil!47917) (toList!2178 lt!1520482)))))

(assert (=> d!1266463 (= (forall!8616 (toList!2178 lt!1520482) p!6034) e!2671965)))

(declare-fun b!4298917 () Bool)

(declare-fun e!2671966 () Bool)

(assert (=> b!4298917 (= e!2671965 e!2671966)))

(declare-fun res!1761939 () Bool)

(assert (=> b!4298917 (=> (not res!1761939) (not e!2671966))))

(assert (=> b!4298917 (= res!1761939 (dynLambda!20351 p!6034 (h!53337 (toList!2178 lt!1520482))))))

(declare-fun b!4298918 () Bool)

(assert (=> b!4298918 (= e!2671966 (forall!8616 (t!354712 (toList!2178 lt!1520482)) p!6034))))

(assert (= (and d!1266463 (not res!1761938)) b!4298917))

(assert (= (and b!4298917 res!1761939) b!4298918))

(declare-fun b_lambda!126247 () Bool)

(assert (=> (not b_lambda!126247) (not b!4298917)))

(declare-fun t!354718 () Bool)

(declare-fun tb!257161 () Bool)

(assert (=> (and start!412728 (= p!6034 p!6034) t!354718) tb!257161))

(declare-fun result!314418 () Bool)

(assert (=> tb!257161 (= result!314418 true)))

(assert (=> b!4298917 t!354718))

(declare-fun b_and!339243 () Bool)

(assert (= b_and!339241 (and (=> t!354718 result!314418) b_and!339243)))

(declare-fun m!4891071 () Bool)

(assert (=> b!4298917 m!4891071))

(declare-fun m!4891073 () Bool)

(assert (=> b!4298918 m!4891073))

(assert (=> b!4298792 d!1266463))

(declare-fun d!1266465 () Bool)

(declare-fun lt!1520703 () ListMap!1457)

(assert (=> d!1266465 (invariantList!534 (toList!2178 lt!1520703))))

(assert (=> d!1266465 (= lt!1520703 (extractMap!265 (toList!2179 (map!9878 (v!41870 (underlying!9248 hm!64))))))))

(assert (=> d!1266465 (valid!3487 hm!64)))

(assert (=> d!1266465 (= (map!9877 hm!64) lt!1520703)))

(declare-fun bs!603916 () Bool)

(assert (= bs!603916 d!1266465))

(declare-fun m!4891075 () Bool)

(assert (=> bs!603916 m!4891075))

(assert (=> bs!603916 m!4890969))

(declare-fun m!4891077 () Bool)

(assert (=> bs!603916 m!4891077))

(assert (=> bs!603916 m!4890893))

(assert (=> b!4298792 d!1266465))

(declare-fun d!1266467 () Bool)

(assert (=> d!1266467 (= (array_inv!5161 (_keys!4809 (v!41869 (underlying!9247 (v!41870 (underlying!9248 hm!64)))))) (bvsge (size!35242 (_keys!4809 (v!41869 (underlying!9247 (v!41870 (underlying!9248 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4298791 d!1266467))

(declare-fun d!1266469 () Bool)

(assert (=> d!1266469 (= (array_inv!5162 (_values!4790 (v!41869 (underlying!9247 (v!41870 (underlying!9248 hm!64)))))) (bvsge (size!35243 (_values!4790 (v!41869 (underlying!9247 (v!41870 (underlying!9248 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4298791 d!1266469))

(declare-fun e!2671969 () Bool)

(declare-fun tp!1320706 () Bool)

(declare-fun b!4298923 () Bool)

(assert (=> b!4298923 (= e!2671969 (and tp_is_empty!23209 tp_is_empty!23211 tp!1320706))))

(assert (=> b!4298793 (= tp!1320702 e!2671969)))

(assert (= (and b!4298793 ((_ is Cons!47917) mapDefault!20253)) b!4298923))

(declare-fun condMapEmpty!20256 () Bool)

(declare-fun mapDefault!20256 () List!48041)

(assert (=> mapNonEmpty!20253 (= condMapEmpty!20256 (= mapRest!20253 ((as const (Array (_ BitVec 32) List!48041)) mapDefault!20256)))))

(declare-fun e!2671974 () Bool)

(declare-fun mapRes!20256 () Bool)

(assert (=> mapNonEmpty!20253 (= tp!1320700 (and e!2671974 mapRes!20256))))

(declare-fun b!4298930 () Bool)

(declare-fun e!2671975 () Bool)

(declare-fun tp!1320713 () Bool)

(assert (=> b!4298930 (= e!2671975 (and tp_is_empty!23209 tp_is_empty!23211 tp!1320713))))

(declare-fun mapNonEmpty!20256 () Bool)

(declare-fun tp!1320715 () Bool)

(assert (=> mapNonEmpty!20256 (= mapRes!20256 (and tp!1320715 e!2671975))))

(declare-fun mapValue!20256 () List!48041)

(declare-fun mapKey!20256 () (_ BitVec 32))

(declare-fun mapRest!20256 () (Array (_ BitVec 32) List!48041))

(assert (=> mapNonEmpty!20256 (= mapRest!20253 (store mapRest!20256 mapKey!20256 mapValue!20256))))

(declare-fun tp!1320714 () Bool)

(declare-fun b!4298931 () Bool)

(assert (=> b!4298931 (= e!2671974 (and tp_is_empty!23209 tp_is_empty!23211 tp!1320714))))

(declare-fun mapIsEmpty!20256 () Bool)

(assert (=> mapIsEmpty!20256 mapRes!20256))

(assert (= (and mapNonEmpty!20253 condMapEmpty!20256) mapIsEmpty!20256))

(assert (= (and mapNonEmpty!20253 (not condMapEmpty!20256)) mapNonEmpty!20256))

(assert (= (and mapNonEmpty!20256 ((_ is Cons!47917) mapValue!20256)) b!4298930))

(assert (= (and mapNonEmpty!20253 ((_ is Cons!47917) mapDefault!20256)) b!4298931))

(declare-fun m!4891079 () Bool)

(assert (=> mapNonEmpty!20256 m!4891079))

(declare-fun b!4298932 () Bool)

(declare-fun e!2671976 () Bool)

(declare-fun tp!1320716 () Bool)

(assert (=> b!4298932 (= e!2671976 (and tp_is_empty!23209 tp_is_empty!23211 tp!1320716))))

(assert (=> mapNonEmpty!20253 (= tp!1320696 e!2671976)))

(assert (= (and mapNonEmpty!20253 ((_ is Cons!47917) mapValue!20253)) b!4298932))

(declare-fun tp!1320717 () Bool)

(declare-fun b!4298933 () Bool)

(declare-fun e!2671977 () Bool)

(assert (=> b!4298933 (= e!2671977 (and tp_is_empty!23209 tp_is_empty!23211 tp!1320717))))

(assert (=> b!4298791 (= tp!1320698 e!2671977)))

(assert (= (and b!4298791 ((_ is Cons!47917) (zeroValue!4768 (v!41869 (underlying!9247 (v!41870 (underlying!9248 hm!64))))))) b!4298933))

(declare-fun tp!1320718 () Bool)

(declare-fun b!4298934 () Bool)

(declare-fun e!2671978 () Bool)

(assert (=> b!4298934 (= e!2671978 (and tp_is_empty!23209 tp_is_empty!23211 tp!1320718))))

(assert (=> b!4298791 (= tp!1320699 e!2671978)))

(assert (= (and b!4298791 ((_ is Cons!47917) (minValue!4768 (v!41869 (underlying!9247 (v!41870 (underlying!9248 hm!64))))))) b!4298934))

(declare-fun b_lambda!126249 () Bool)

(assert (= b_lambda!126243 (or (and start!412728 b_free!127957) b_lambda!126249)))

(declare-fun b_lambda!126251 () Bool)

(assert (= b_lambda!126247 (or (and start!412728 b_free!127957) b_lambda!126251)))

(declare-fun b_lambda!126253 () Bool)

(assert (= b_lambda!126245 (or (and start!412728 b_free!127957) b_lambda!126253)))

(check-sat (not b_lambda!126241) (not bm!295584) (not bm!295557) (not bm!295555) (not bm!295578) (not bm!295583) (not bm!295572) (not bm!295585) (not bm!295564) (not bm!295568) (not bm!295570) (not b!4298853) (not b!4298905) (not b!4298900) (not b!4298852) (not bm!295558) (not bm!295582) tp_is_empty!23209 (not b!4298918) b_and!339231 (not b!4298906) (not mapNonEmpty!20256) (not d!1266455) (not bm!295580) (not bm!295559) (not d!1266453) (not bm!295581) (not b_lambda!126249) (not bm!295574) (not b_lambda!126253) (not bm!295561) (not b_next!128659) (not bm!295576) (not b!4298902) (not bm!295566) (not b!4298915) (not b_lambda!126251) (not d!1266447) (not b!4298846) (not b_next!128661) (not b!4298932) (not d!1266449) (not b!4298837) (not bm!295573) (not bm!295571) (not d!1266465) (not b!4298838) (not b!4298841) (not bm!295567) (not bm!295577) (not b!4298803) (not bm!295490) (not b!4298847) (not b!4298835) (not b!4298843) (not bm!295489) (not bm!295569) (not bm!295575) (not b!4298805) (not d!1266461) (not bm!295563) (not d!1266457) (not b!4298933) (not b!4298842) (not b!4298899) (not b!4298930) (not d!1266459) (not b!4298934) (not bm!295562) b_and!339233 (not b_next!128657) (not bm!295560) (not b!4298923) (not bm!295579) (not b!4298916) b_and!339243 tp_is_empty!23211 (not b!4298931) (not b!4298893))
(check-sat b_and!339231 (not b_next!128659) (not b_next!128661) b_and!339243 b_and!339233 (not b_next!128657))
