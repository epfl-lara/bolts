; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486946 () Bool)

(assert start!486946)

(declare-fun b_free!129433 () Bool)

(declare-fun b_next!130137 () Bool)

(assert (=> start!486946 (= b_free!129433 (not b_next!130137))))

(declare-fun tp!1354158 () Bool)

(declare-fun b_and!341061 () Bool)

(assert (=> start!486946 (= tp!1354158 b_and!341061)))

(declare-fun b!4761594 () Bool)

(declare-fun b_free!129435 () Bool)

(declare-fun b_next!130139 () Bool)

(assert (=> b!4761594 (= b_free!129435 (not b_next!130139))))

(declare-fun tp!1354157 () Bool)

(declare-fun b_and!341063 () Bool)

(assert (=> b!4761594 (= tp!1354157 b_and!341063)))

(declare-fun b!4761591 () Bool)

(declare-fun b_free!129437 () Bool)

(declare-fun b_next!130141 () Bool)

(assert (=> b!4761591 (= b_free!129437 (not b_next!130141))))

(declare-fun tp!1354160 () Bool)

(declare-fun b_and!341065 () Bool)

(assert (=> b!4761591 (= tp!1354160 b_and!341065)))

(declare-fun b!4761590 () Bool)

(declare-fun res!2019452 () Bool)

(declare-fun e!2971488 () Bool)

(assert (=> b!4761590 (=> (not res!2019452) (not e!2971488))))

(declare-datatypes ((array!17788 0))(
  ( (array!17789 (arr!7935 (Array (_ BitVec 32) (_ BitVec 64))) (size!36162 (_ BitVec 32))) )
))
(declare-datatypes ((K!14829 0))(
  ( (K!14830 (val!20169 Int)) )
))
(declare-datatypes ((V!15075 0))(
  ( (V!15076 (val!20170 Int)) )
))
(declare-datatypes ((tuple2!55354 0))(
  ( (tuple2!55355 (_1!30971 K!14829) (_2!30971 V!15075)) )
))
(declare-datatypes ((List!53519 0))(
  ( (Nil!53395) (Cons!53395 (h!59806 tuple2!55354) (t!360881 List!53519)) )
))
(declare-datatypes ((array!17790 0))(
  ( (array!17791 (arr!7936 (Array (_ BitVec 32) List!53519)) (size!36163 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9750 0))(
  ( (LongMapFixedSize!9751 (defaultEntry!5289 Int) (mask!14598 (_ BitVec 32)) (extraKeys!5145 (_ BitVec 32)) (zeroValue!5158 List!53519) (minValue!5158 List!53519) (_size!9775 (_ BitVec 32)) (_keys!5210 array!17788) (_values!5183 array!17790) (_vacant!4940 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19265 0))(
  ( (Cell!19266 (v!47450 LongMapFixedSize!9750)) )
))
(declare-datatypes ((MutLongMap!4875 0))(
  ( (LongMap!4875 (underlying!9957 Cell!19265)) (MutLongMapExt!4874 (__x!32373 Int)) )
))
(declare-datatypes ((Cell!19267 0))(
  ( (Cell!19268 (v!47451 MutLongMap!4875)) )
))
(declare-datatypes ((Hashable!6536 0))(
  ( (HashableExt!6535 (__x!32374 Int)) )
))
(declare-datatypes ((MutableMap!4759 0))(
  ( (MutableMapExt!4758 (__x!32375 Int)) (HashMap!4759 (underlying!9958 Cell!19267) (hashF!12346 Hashable!6536) (_size!9776 (_ BitVec 32)) (defaultValue!4930 Int)) )
))
(declare-fun hm!63 () MutableMap!4759)

(declare-fun k0!1662 () K!14829)

(declare-fun contains!16697 (MutableMap!4759 K!14829) Bool)

(assert (=> b!4761590 (= res!2019452 (contains!16697 hm!63 k0!1662))))

(declare-fun tp!1354162 () Bool)

(declare-fun e!2971486 () Bool)

(declare-fun e!2971483 () Bool)

(declare-fun tp!1354159 () Bool)

(declare-fun array_inv!5711 (array!17788) Bool)

(declare-fun array_inv!5712 (array!17790) Bool)

(assert (=> b!4761591 (= e!2971483 (and tp!1354160 tp!1354159 tp!1354162 (array_inv!5711 (_keys!5210 (v!47450 (underlying!9957 (v!47451 (underlying!9958 hm!63)))))) (array_inv!5712 (_values!5183 (v!47450 (underlying!9957 (v!47451 (underlying!9958 hm!63)))))) e!2971486))))

(declare-fun b!4761592 () Bool)

(declare-datatypes ((ListMap!5737 0))(
  ( (ListMap!5738 (toList!6229 List!53519)) )
))
(declare-fun lt!1925337 () ListMap!5737)

(declare-fun invariantList!1653 (List!53519) Bool)

(assert (=> b!4761592 (= e!2971488 (not (invariantList!1653 (toList!6229 lt!1925337))))))

(declare-fun lt!1925335 () V!15075)

(declare-fun apply!12555 (MutableMap!4759 K!14829) V!15075)

(assert (=> b!4761592 (= lt!1925335 (apply!12555 hm!63 k0!1662))))

(declare-fun b!4761593 () Bool)

(declare-fun tp!1354161 () Bool)

(declare-fun mapRes!21659 () Bool)

(assert (=> b!4761593 (= e!2971486 (and tp!1354161 mapRes!21659))))

(declare-fun condMapEmpty!21659 () Bool)

(declare-fun mapDefault!21659 () List!53519)

(assert (=> b!4761593 (= condMapEmpty!21659 (= (arr!7936 (_values!5183 (v!47450 (underlying!9957 (v!47451 (underlying!9958 hm!63)))))) ((as const (Array (_ BitVec 32) List!53519)) mapDefault!21659)))))

(declare-fun e!2971490 () Bool)

(declare-fun e!2971489 () Bool)

(assert (=> b!4761594 (= e!2971490 (and e!2971489 tp!1354157))))

(declare-fun b!4761595 () Bool)

(declare-fun e!2971484 () Bool)

(declare-fun lt!1925336 () MutLongMap!4875)

(get-info :version)

(assert (=> b!4761595 (= e!2971489 (and e!2971484 ((_ is LongMap!4875) lt!1925336)))))

(assert (=> b!4761595 (= lt!1925336 (v!47451 (underlying!9958 hm!63)))))

(declare-fun b!4761596 () Bool)

(declare-fun e!2971485 () Bool)

(assert (=> b!4761596 (= e!2971484 e!2971485)))

(declare-fun b!4761597 () Bool)

(assert (=> b!4761597 (= e!2971485 e!2971483)))

(declare-fun b!4761598 () Bool)

(declare-fun e!2971482 () Bool)

(assert (=> b!4761598 (= e!2971482 e!2971488)))

(declare-fun res!2019450 () Bool)

(assert (=> b!4761598 (=> (not res!2019450) (not e!2971488))))

(declare-fun p!6026 () Int)

(declare-fun forall!11850 (List!53519 Int) Bool)

(assert (=> b!4761598 (= res!2019450 (forall!11850 (toList!6229 lt!1925337) p!6026))))

(declare-fun map!11895 (MutableMap!4759) ListMap!5737)

(assert (=> b!4761598 (= lt!1925337 (map!11895 hm!63))))

(declare-fun mapIsEmpty!21659 () Bool)

(assert (=> mapIsEmpty!21659 mapRes!21659))

(declare-fun b!4761599 () Bool)

(declare-fun res!2019451 () Bool)

(assert (=> b!4761599 (=> (not res!2019451) (not e!2971482))))

(declare-fun valid!3868 (MutableMap!4759) Bool)

(assert (=> b!4761599 (= res!2019451 (valid!3868 hm!63))))

(declare-fun res!2019449 () Bool)

(assert (=> start!486946 (=> (not res!2019449) (not e!2971482))))

(assert (=> start!486946 (= res!2019449 ((_ is HashMap!4759) hm!63))))

(assert (=> start!486946 e!2971482))

(assert (=> start!486946 e!2971490))

(assert (=> start!486946 tp!1354158))

(declare-fun tp_is_empty!32315 () Bool)

(assert (=> start!486946 tp_is_empty!32315))

(declare-fun mapNonEmpty!21659 () Bool)

(declare-fun tp!1354163 () Bool)

(declare-fun tp!1354156 () Bool)

(assert (=> mapNonEmpty!21659 (= mapRes!21659 (and tp!1354163 tp!1354156))))

(declare-fun mapValue!21659 () List!53519)

(declare-fun mapRest!21659 () (Array (_ BitVec 32) List!53519))

(declare-fun mapKey!21659 () (_ BitVec 32))

(assert (=> mapNonEmpty!21659 (= (arr!7936 (_values!5183 (v!47450 (underlying!9957 (v!47451 (underlying!9958 hm!63)))))) (store mapRest!21659 mapKey!21659 mapValue!21659))))

(assert (= (and start!486946 res!2019449) b!4761599))

(assert (= (and b!4761599 res!2019451) b!4761598))

(assert (= (and b!4761598 res!2019450) b!4761590))

(assert (= (and b!4761590 res!2019452) b!4761592))

(assert (= (and b!4761593 condMapEmpty!21659) mapIsEmpty!21659))

(assert (= (and b!4761593 (not condMapEmpty!21659)) mapNonEmpty!21659))

(assert (= b!4761591 b!4761593))

(assert (= b!4761597 b!4761591))

(assert (= b!4761596 b!4761597))

(assert (= (and b!4761595 ((_ is LongMap!4875) (v!47451 (underlying!9958 hm!63)))) b!4761596))

(assert (= b!4761594 b!4761595))

(assert (= (and start!486946 ((_ is HashMap!4759) hm!63)) b!4761594))

(declare-fun m!5730648 () Bool)

(assert (=> b!4761591 m!5730648))

(declare-fun m!5730650 () Bool)

(assert (=> b!4761591 m!5730650))

(declare-fun m!5730652 () Bool)

(assert (=> b!4761599 m!5730652))

(declare-fun m!5730654 () Bool)

(assert (=> b!4761592 m!5730654))

(declare-fun m!5730656 () Bool)

(assert (=> b!4761592 m!5730656))

(declare-fun m!5730658 () Bool)

(assert (=> mapNonEmpty!21659 m!5730658))

(declare-fun m!5730660 () Bool)

(assert (=> b!4761598 m!5730660))

(declare-fun m!5730662 () Bool)

(assert (=> b!4761598 m!5730662))

(declare-fun m!5730664 () Bool)

(assert (=> b!4761590 m!5730664))

(check-sat tp_is_empty!32315 (not b!4761591) (not b!4761592) (not b_next!130139) (not b!4761593) b_and!341065 b_and!341063 (not mapNonEmpty!21659) (not b!4761598) (not b_next!130141) b_and!341061 (not b_next!130137) (not b!4761590) (not b!4761599))
(check-sat (not b_next!130139) b_and!341065 b_and!341063 (not b_next!130141) b_and!341061 (not b_next!130137))
(get-model)

(declare-fun d!1521473 () Bool)

(declare-fun noDuplicatedKeys!404 (List!53519) Bool)

(assert (=> d!1521473 (= (invariantList!1653 (toList!6229 lt!1925337)) (noDuplicatedKeys!404 (toList!6229 lt!1925337)))))

(declare-fun bs!1147127 () Bool)

(assert (= bs!1147127 d!1521473))

(declare-fun m!5730666 () Bool)

(assert (=> bs!1147127 m!5730666))

(assert (=> b!4761592 d!1521473))

(declare-fun b!4761612 () Bool)

(declare-fun e!2971497 () Bool)

(declare-fun lt!1925422 () V!15075)

(declare-datatypes ((Option!12612 0))(
  ( (None!12611) (Some!12611 (v!47452 V!15075)) )
))
(declare-fun get!17971 (Option!12612) V!15075)

(declare-fun getValueByKey!2142 (List!53519 K!14829) Option!12612)

(assert (=> b!4761612 (= e!2971497 (= lt!1925422 (get!17971 (getValueByKey!2142 (toList!6229 (map!11895 hm!63)) k0!1662))))))

(declare-fun b!4761613 () Bool)

(declare-fun dynLambda!21923 (Int K!14829) V!15075)

(assert (=> b!4761613 (= e!2971497 (= lt!1925422 (dynLambda!21923 (defaultValue!4930 hm!63) k0!1662)))))

(declare-fun e!2971499 () V!15075)

(declare-fun b!4761614 () Bool)

(declare-fun lt!1925427 () (_ BitVec 64))

(declare-datatypes ((Option!12613 0))(
  ( (None!12612) (Some!12612 (v!47453 tuple2!55354)) )
))
(declare-fun get!17972 (Option!12613) tuple2!55354)

(declare-fun getPair!623 (List!53519 K!14829) Option!12613)

(declare-fun apply!12556 (MutLongMap!4875 (_ BitVec 64)) List!53519)

(assert (=> b!4761614 (= e!2971499 (_2!30971 (get!17972 (getPair!623 (apply!12556 (v!47451 (underlying!9958 hm!63)) lt!1925427) k0!1662))))))

(declare-fun hash!4524 (Hashable!6536 K!14829) (_ BitVec 64))

(assert (=> b!4761614 (= lt!1925427 (hash!4524 (hashF!12346 hm!63) k0!1662))))

(declare-fun c!812225 () Bool)

(declare-datatypes ((tuple2!55356 0))(
  ( (tuple2!55357 (_1!30972 (_ BitVec 64)) (_2!30972 List!53519)) )
))
(declare-datatypes ((List!53520 0))(
  ( (Nil!53396) (Cons!53396 (h!59807 tuple2!55356) (t!360886 List!53520)) )
))
(declare-fun contains!16698 (List!53520 tuple2!55356) Bool)

(declare-datatypes ((ListLongMap!4615 0))(
  ( (ListLongMap!4616 (toList!6230 List!53520)) )
))
(declare-fun map!11896 (MutLongMap!4875) ListLongMap!4615)

(assert (=> b!4761614 (= c!812225 (not (contains!16698 (toList!6230 (map!11896 (v!47451 (underlying!9958 hm!63)))) (tuple2!55357 lt!1925427 (apply!12556 (v!47451 (underlying!9958 hm!63)) lt!1925427)))))))

(declare-datatypes ((Unit!137860 0))(
  ( (Unit!137861) )
))
(declare-fun lt!1925419 () Unit!137860)

(declare-fun e!2971498 () Unit!137860)

(assert (=> b!4761614 (= lt!1925419 e!2971498)))

(declare-fun lambda!223829 () Int)

(declare-fun lt!1925408 () Unit!137860)

(declare-fun forallContained!3835 (List!53520 Int tuple2!55356) Unit!137860)

(assert (=> b!4761614 (= lt!1925408 (forallContained!3835 (toList!6230 (map!11896 (v!47451 (underlying!9958 hm!63)))) lambda!223829 (tuple2!55357 lt!1925427 (apply!12556 (v!47451 (underlying!9958 hm!63)) lt!1925427))))))

(declare-fun lt!1925398 () ListLongMap!4615)

(assert (=> b!4761614 (= lt!1925398 (map!11896 (v!47451 (underlying!9958 hm!63))))))

(declare-fun lt!1925423 () Unit!137860)

(declare-fun lemmaGetPairGetSameValueAsMap!50 (ListLongMap!4615 K!14829 V!15075 Hashable!6536) Unit!137860)

(assert (=> b!4761614 (= lt!1925423 (lemmaGetPairGetSameValueAsMap!50 lt!1925398 k0!1662 (_2!30971 (get!17972 (getPair!623 (apply!12556 (v!47451 (underlying!9958 hm!63)) lt!1925427) k0!1662))) (hashF!12346 hm!63)))))

(declare-fun lt!1925399 () Unit!137860)

(declare-fun lemmaInGenMapThenLongMapContainsHash!824 (ListLongMap!4615 K!14829 Hashable!6536) Unit!137860)

(assert (=> b!4761614 (= lt!1925399 (lemmaInGenMapThenLongMapContainsHash!824 lt!1925398 k0!1662 (hashF!12346 hm!63)))))

(declare-fun contains!16699 (ListLongMap!4615 (_ BitVec 64)) Bool)

(assert (=> b!4761614 (contains!16699 lt!1925398 (hash!4524 (hashF!12346 hm!63) k0!1662))))

(declare-fun lt!1925409 () Unit!137860)

(assert (=> b!4761614 (= lt!1925409 lt!1925399)))

(declare-fun lt!1925415 () (_ BitVec 64))

(assert (=> b!4761614 (= lt!1925415 (hash!4524 (hashF!12346 hm!63) k0!1662))))

(declare-fun lt!1925413 () List!53519)

(declare-fun apply!12557 (ListLongMap!4615 (_ BitVec 64)) List!53519)

(assert (=> b!4761614 (= lt!1925413 (apply!12557 lt!1925398 (hash!4524 (hashF!12346 hm!63) k0!1662)))))

(declare-fun lt!1925416 () Unit!137860)

(declare-fun lemmaGetValueImpliesTupleContained!423 (ListLongMap!4615 (_ BitVec 64) List!53519) Unit!137860)

(assert (=> b!4761614 (= lt!1925416 (lemmaGetValueImpliesTupleContained!423 lt!1925398 lt!1925415 lt!1925413))))

(assert (=> b!4761614 (contains!16698 (toList!6230 lt!1925398) (tuple2!55357 lt!1925415 lt!1925413))))

(declare-fun lt!1925412 () Unit!137860)

(assert (=> b!4761614 (= lt!1925412 lt!1925416)))

(declare-fun lt!1925410 () Unit!137860)

(assert (=> b!4761614 (= lt!1925410 (forallContained!3835 (toList!6230 lt!1925398) lambda!223829 (tuple2!55357 (hash!4524 (hashF!12346 hm!63) k0!1662) (apply!12557 lt!1925398 (hash!4524 (hashF!12346 hm!63) k0!1662)))))))

(declare-fun lt!1925417 () Unit!137860)

(declare-fun lemmaInGenMapThenGetPairDefined!414 (ListLongMap!4615 K!14829 Hashable!6536) Unit!137860)

(assert (=> b!4761614 (= lt!1925417 (lemmaInGenMapThenGetPairDefined!414 lt!1925398 k0!1662 (hashF!12346 hm!63)))))

(declare-fun lt!1925421 () Unit!137860)

(assert (=> b!4761614 (= lt!1925421 (lemmaInGenMapThenLongMapContainsHash!824 lt!1925398 k0!1662 (hashF!12346 hm!63)))))

(declare-fun lt!1925404 () Unit!137860)

(assert (=> b!4761614 (= lt!1925404 lt!1925421)))

(declare-fun lt!1925411 () (_ BitVec 64))

(assert (=> b!4761614 (= lt!1925411 (hash!4524 (hashF!12346 hm!63) k0!1662))))

(declare-fun lt!1925405 () List!53519)

(assert (=> b!4761614 (= lt!1925405 (apply!12557 lt!1925398 (hash!4524 (hashF!12346 hm!63) k0!1662)))))

(declare-fun lt!1925402 () Unit!137860)

(assert (=> b!4761614 (= lt!1925402 (lemmaGetValueImpliesTupleContained!423 lt!1925398 lt!1925411 lt!1925405))))

(assert (=> b!4761614 (contains!16698 (toList!6230 lt!1925398) (tuple2!55357 lt!1925411 lt!1925405))))

(declare-fun lt!1925400 () Unit!137860)

(assert (=> b!4761614 (= lt!1925400 lt!1925402)))

(declare-fun lt!1925418 () Unit!137860)

(assert (=> b!4761614 (= lt!1925418 (forallContained!3835 (toList!6230 lt!1925398) lambda!223829 (tuple2!55357 (hash!4524 (hashF!12346 hm!63) k0!1662) (apply!12557 lt!1925398 (hash!4524 (hashF!12346 hm!63) k0!1662)))))))

(declare-fun isDefined!9788 (Option!12613) Bool)

(assert (=> b!4761614 (isDefined!9788 (getPair!623 (apply!12557 lt!1925398 (hash!4524 (hashF!12346 hm!63) k0!1662)) k0!1662))))

(declare-fun lt!1925425 () Unit!137860)

(assert (=> b!4761614 (= lt!1925425 lt!1925417)))

(declare-fun extractMap!2123 (List!53520) ListMap!5737)

(assert (=> b!4761614 (= (_2!30971 (get!17972 (getPair!623 (apply!12557 lt!1925398 (hash!4524 (hashF!12346 hm!63) k0!1662)) k0!1662))) (get!17971 (getValueByKey!2142 (toList!6229 (extractMap!2123 (toList!6230 lt!1925398))) k0!1662)))))

(declare-fun lt!1925403 () Unit!137860)

(assert (=> b!4761614 (= lt!1925403 lt!1925423)))

(declare-fun b!4761615 () Bool)

(declare-fun Unit!137862 () Unit!137860)

(assert (=> b!4761615 (= e!2971498 Unit!137862)))

(declare-fun b!4761616 () Bool)

(assert (=> b!4761616 false))

(declare-fun lt!1925426 () Unit!137860)

(declare-fun lt!1925407 () Unit!137860)

(assert (=> b!4761616 (= lt!1925426 lt!1925407)))

(declare-fun lt!1925406 () List!53520)

(declare-fun lt!1925401 () List!53519)

(assert (=> b!4761616 (contains!16698 lt!1925406 (tuple2!55357 lt!1925427 lt!1925401))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!905 (List!53520 (_ BitVec 64) List!53519) Unit!137860)

(assert (=> b!4761616 (= lt!1925407 (lemmaGetValueByKeyImpliesContainsTuple!905 lt!1925406 lt!1925427 lt!1925401))))

(assert (=> b!4761616 (= lt!1925401 (apply!12556 (v!47451 (underlying!9958 hm!63)) lt!1925427))))

(assert (=> b!4761616 (= lt!1925406 (toList!6230 (map!11896 (v!47451 (underlying!9958 hm!63)))))))

(declare-fun lt!1925414 () Unit!137860)

(declare-fun lt!1925420 () Unit!137860)

(assert (=> b!4761616 (= lt!1925414 lt!1925420)))

(declare-fun lt!1925424 () List!53520)

(declare-datatypes ((Option!12614 0))(
  ( (None!12613) (Some!12613 (v!47454 List!53519)) )
))
(declare-fun isDefined!9789 (Option!12614) Bool)

(declare-fun getValueByKey!2143 (List!53520 (_ BitVec 64)) Option!12614)

(assert (=> b!4761616 (isDefined!9789 (getValueByKey!2143 lt!1925424 lt!1925427))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1959 (List!53520 (_ BitVec 64)) Unit!137860)

(assert (=> b!4761616 (= lt!1925420 (lemmaContainsKeyImpliesGetValueByKeyDefined!1959 lt!1925424 lt!1925427))))

(assert (=> b!4761616 (= lt!1925424 (toList!6230 (map!11896 (v!47451 (underlying!9958 hm!63)))))))

(declare-fun Unit!137863 () Unit!137860)

(assert (=> b!4761616 (= e!2971498 Unit!137863)))

(declare-fun b!4761617 () Bool)

(assert (=> b!4761617 (= e!2971499 (dynLambda!21923 (defaultValue!4930 hm!63) k0!1662))))

(declare-fun d!1521475 () Bool)

(assert (=> d!1521475 e!2971497))

(declare-fun c!812226 () Bool)

(assert (=> d!1521475 (= c!812226 (contains!16697 hm!63 k0!1662))))

(assert (=> d!1521475 (= lt!1925422 e!2971499)))

(declare-fun c!812227 () Bool)

(assert (=> d!1521475 (= c!812227 (not (contains!16697 hm!63 k0!1662)))))

(assert (=> d!1521475 (valid!3868 hm!63)))

(assert (=> d!1521475 (= (apply!12555 hm!63 k0!1662) lt!1925422)))

(assert (= (and d!1521475 c!812227) b!4761617))

(assert (= (and d!1521475 (not c!812227)) b!4761614))

(assert (= (and b!4761614 c!812225) b!4761616))

(assert (= (and b!4761614 (not c!812225)) b!4761615))

(assert (= (and d!1521475 c!812226) b!4761612))

(assert (= (and d!1521475 (not c!812226)) b!4761613))

(declare-fun b_lambda!183829 () Bool)

(assert (=> (not b_lambda!183829) (not b!4761613)))

(declare-fun t!360883 () Bool)

(declare-fun tb!257415 () Bool)

(assert (=> (and b!4761594 (= (defaultValue!4930 hm!63) (defaultValue!4930 hm!63)) t!360883) tb!257415))

(declare-fun result!318988 () Bool)

(declare-fun tp_is_empty!32317 () Bool)

(assert (=> tb!257415 (= result!318988 tp_is_empty!32317)))

(assert (=> b!4761613 t!360883))

(declare-fun b_and!341067 () Bool)

(assert (= b_and!341063 (and (=> t!360883 result!318988) b_and!341067)))

(declare-fun b_lambda!183831 () Bool)

(assert (=> (not b_lambda!183831) (not b!4761617)))

(assert (=> b!4761617 t!360883))

(declare-fun b_and!341069 () Bool)

(assert (= b_and!341067 (and (=> t!360883 result!318988) b_and!341069)))

(declare-fun m!5730668 () Bool)

(assert (=> b!4761616 m!5730668))

(declare-fun m!5730670 () Bool)

(assert (=> b!4761616 m!5730670))

(assert (=> b!4761616 m!5730668))

(declare-fun m!5730672 () Bool)

(assert (=> b!4761616 m!5730672))

(declare-fun m!5730674 () Bool)

(assert (=> b!4761616 m!5730674))

(declare-fun m!5730676 () Bool)

(assert (=> b!4761616 m!5730676))

(declare-fun m!5730678 () Bool)

(assert (=> b!4761616 m!5730678))

(declare-fun m!5730680 () Bool)

(assert (=> b!4761616 m!5730680))

(declare-fun m!5730682 () Bool)

(assert (=> b!4761617 m!5730682))

(assert (=> b!4761612 m!5730662))

(declare-fun m!5730684 () Bool)

(assert (=> b!4761612 m!5730684))

(assert (=> b!4761612 m!5730684))

(declare-fun m!5730686 () Bool)

(assert (=> b!4761612 m!5730686))

(declare-fun m!5730688 () Bool)

(assert (=> b!4761614 m!5730688))

(declare-fun m!5730690 () Bool)

(assert (=> b!4761614 m!5730690))

(declare-fun m!5730692 () Bool)

(assert (=> b!4761614 m!5730692))

(declare-fun m!5730694 () Bool)

(assert (=> b!4761614 m!5730694))

(declare-fun m!5730696 () Bool)

(assert (=> b!4761614 m!5730696))

(declare-fun m!5730698 () Bool)

(assert (=> b!4761614 m!5730698))

(declare-fun m!5730700 () Bool)

(assert (=> b!4761614 m!5730700))

(declare-fun m!5730702 () Bool)

(assert (=> b!4761614 m!5730702))

(declare-fun m!5730704 () Bool)

(assert (=> b!4761614 m!5730704))

(declare-fun m!5730706 () Bool)

(assert (=> b!4761614 m!5730706))

(declare-fun m!5730708 () Bool)

(assert (=> b!4761614 m!5730708))

(declare-fun m!5730710 () Bool)

(assert (=> b!4761614 m!5730710))

(declare-fun m!5730712 () Bool)

(assert (=> b!4761614 m!5730712))

(declare-fun m!5730714 () Bool)

(assert (=> b!4761614 m!5730714))

(declare-fun m!5730716 () Bool)

(assert (=> b!4761614 m!5730716))

(declare-fun m!5730718 () Bool)

(assert (=> b!4761614 m!5730718))

(assert (=> b!4761614 m!5730698))

(assert (=> b!4761614 m!5730710))

(assert (=> b!4761614 m!5730700))

(assert (=> b!4761614 m!5730690))

(assert (=> b!4761614 m!5730680))

(assert (=> b!4761614 m!5730706))

(assert (=> b!4761614 m!5730678))

(assert (=> b!4761614 m!5730680))

(assert (=> b!4761614 m!5730698))

(declare-fun m!5730720 () Bool)

(assert (=> b!4761614 m!5730720))

(declare-fun m!5730722 () Bool)

(assert (=> b!4761614 m!5730722))

(declare-fun m!5730724 () Bool)

(assert (=> b!4761614 m!5730724))

(declare-fun m!5730726 () Bool)

(assert (=> b!4761614 m!5730726))

(assert (=> b!4761614 m!5730714))

(assert (=> b!4761614 m!5730690))

(declare-fun m!5730728 () Bool)

(assert (=> b!4761614 m!5730728))

(assert (=> d!1521475 m!5730664))

(assert (=> d!1521475 m!5730652))

(assert (=> b!4761613 m!5730682))

(assert (=> b!4761592 d!1521475))

(declare-fun d!1521477 () Bool)

(declare-fun res!2019457 () Bool)

(declare-fun e!2971504 () Bool)

(assert (=> d!1521477 (=> res!2019457 e!2971504)))

(assert (=> d!1521477 (= res!2019457 ((_ is Nil!53395) (toList!6229 lt!1925337)))))

(assert (=> d!1521477 (= (forall!11850 (toList!6229 lt!1925337) p!6026) e!2971504)))

(declare-fun b!4761624 () Bool)

(declare-fun e!2971505 () Bool)

(assert (=> b!4761624 (= e!2971504 e!2971505)))

(declare-fun res!2019458 () Bool)

(assert (=> b!4761624 (=> (not res!2019458) (not e!2971505))))

(declare-fun dynLambda!21924 (Int tuple2!55354) Bool)

(assert (=> b!4761624 (= res!2019458 (dynLambda!21924 p!6026 (h!59806 (toList!6229 lt!1925337))))))

(declare-fun b!4761625 () Bool)

(assert (=> b!4761625 (= e!2971505 (forall!11850 (t!360881 (toList!6229 lt!1925337)) p!6026))))

(assert (= (and d!1521477 (not res!2019457)) b!4761624))

(assert (= (and b!4761624 res!2019458) b!4761625))

(declare-fun b_lambda!183833 () Bool)

(assert (=> (not b_lambda!183833) (not b!4761624)))

(declare-fun t!360885 () Bool)

(declare-fun tb!257417 () Bool)

(assert (=> (and start!486946 (= p!6026 p!6026) t!360885) tb!257417))

(declare-fun result!318992 () Bool)

(assert (=> tb!257417 (= result!318992 true)))

(assert (=> b!4761624 t!360885))

(declare-fun b_and!341071 () Bool)

(assert (= b_and!341061 (and (=> t!360885 result!318992) b_and!341071)))

(declare-fun m!5730730 () Bool)

(assert (=> b!4761624 m!5730730))

(declare-fun m!5730732 () Bool)

(assert (=> b!4761625 m!5730732))

(assert (=> b!4761598 d!1521477))

(declare-fun d!1521479 () Bool)

(declare-fun lt!1925430 () ListMap!5737)

(assert (=> d!1521479 (invariantList!1653 (toList!6229 lt!1925430))))

(assert (=> d!1521479 (= lt!1925430 (extractMap!2123 (toList!6230 (map!11896 (v!47451 (underlying!9958 hm!63))))))))

(assert (=> d!1521479 (valid!3868 hm!63)))

(assert (=> d!1521479 (= (map!11895 hm!63) lt!1925430)))

(declare-fun bs!1147128 () Bool)

(assert (= bs!1147128 d!1521479))

(declare-fun m!5730734 () Bool)

(assert (=> bs!1147128 m!5730734))

(assert (=> bs!1147128 m!5730678))

(declare-fun m!5730736 () Bool)

(assert (=> bs!1147128 m!5730736))

(assert (=> bs!1147128 m!5730652))

(assert (=> b!4761598 d!1521479))

(declare-fun bs!1147129 () Bool)

(declare-fun b!4761630 () Bool)

(assert (= bs!1147129 (and b!4761630 b!4761614)))

(declare-fun lambda!223832 () Int)

(assert (=> bs!1147129 (= lambda!223832 lambda!223829)))

(declare-fun d!1521481 () Bool)

(declare-fun res!2019463 () Bool)

(declare-fun e!2971508 () Bool)

(assert (=> d!1521481 (=> (not res!2019463) (not e!2971508))))

(declare-fun valid!3869 (MutLongMap!4875) Bool)

(assert (=> d!1521481 (= res!2019463 (valid!3869 (v!47451 (underlying!9958 hm!63))))))

(assert (=> d!1521481 (= (valid!3868 hm!63) e!2971508)))

(declare-fun res!2019464 () Bool)

(assert (=> b!4761630 (=> (not res!2019464) (not e!2971508))))

(declare-fun forall!11851 (List!53520 Int) Bool)

(assert (=> b!4761630 (= res!2019464 (forall!11851 (toList!6230 (map!11896 (v!47451 (underlying!9958 hm!63)))) lambda!223832))))

(declare-fun b!4761631 () Bool)

(declare-fun allKeysSameHashInMap!2004 (ListLongMap!4615 Hashable!6536) Bool)

(assert (=> b!4761631 (= e!2971508 (allKeysSameHashInMap!2004 (map!11896 (v!47451 (underlying!9958 hm!63))) (hashF!12346 hm!63)))))

(assert (= (and d!1521481 res!2019463) b!4761630))

(assert (= (and b!4761630 res!2019464) b!4761631))

(declare-fun m!5730738 () Bool)

(assert (=> d!1521481 m!5730738))

(assert (=> b!4761630 m!5730678))

(declare-fun m!5730740 () Bool)

(assert (=> b!4761630 m!5730740))

(assert (=> b!4761631 m!5730678))

(assert (=> b!4761631 m!5730678))

(declare-fun m!5730742 () Bool)

(assert (=> b!4761631 m!5730742))

(assert (=> b!4761599 d!1521481))

(declare-fun bs!1147130 () Bool)

(declare-fun b!4761660 () Bool)

(assert (= bs!1147130 (and b!4761660 b!4761614)))

(declare-fun lambda!223835 () Int)

(assert (=> bs!1147130 (= lambda!223835 lambda!223829)))

(declare-fun bs!1147131 () Bool)

(assert (= bs!1147131 (and b!4761660 b!4761630)))

(assert (=> bs!1147131 (= lambda!223835 lambda!223832)))

(declare-fun b!4761654 () Bool)

(declare-fun e!2971529 () Unit!137860)

(declare-fun Unit!137864 () Unit!137860)

(assert (=> b!4761654 (= e!2971529 Unit!137864)))

(declare-fun call!333816 () ListLongMap!4615)

(declare-fun call!333819 () Bool)

(declare-fun call!333815 () (_ BitVec 64))

(declare-fun lt!1925482 () ListLongMap!4615)

(declare-fun bm!333809 () Bool)

(declare-fun c!812239 () Bool)

(assert (=> bm!333809 (= call!333819 (contains!16699 (ite c!812239 lt!1925482 call!333816) call!333815))))

(declare-fun bm!333810 () Bool)

(declare-fun call!333817 () Bool)

(declare-fun call!333818 () Option!12613)

(assert (=> bm!333810 (= call!333817 (isDefined!9788 call!333818))))

(declare-fun bm!333811 () Bool)

(assert (=> bm!333811 (= call!333816 (map!11896 (v!47451 (underlying!9958 hm!63))))))

(declare-fun e!2971524 () Bool)

(declare-fun b!4761656 () Bool)

(declare-fun lt!1925481 () (_ BitVec 64))

(assert (=> b!4761656 (= e!2971524 (isDefined!9788 (getPair!623 (apply!12556 (v!47451 (underlying!9958 hm!63)) lt!1925481) k0!1662)))))

(declare-fun b!4761657 () Bool)

(assert (=> b!4761657 false))

(declare-fun lt!1925476 () Unit!137860)

(declare-fun lt!1925474 () Unit!137860)

(assert (=> b!4761657 (= lt!1925476 lt!1925474)))

(declare-fun lt!1925472 () List!53520)

(declare-fun lt!1925487 () List!53519)

(assert (=> b!4761657 (contains!16698 lt!1925472 (tuple2!55357 lt!1925481 lt!1925487))))

(assert (=> b!4761657 (= lt!1925474 (lemmaGetValueByKeyImpliesContainsTuple!905 lt!1925472 lt!1925481 lt!1925487))))

(assert (=> b!4761657 (= lt!1925487 (apply!12556 (v!47451 (underlying!9958 hm!63)) lt!1925481))))

(assert (=> b!4761657 (= lt!1925472 (toList!6230 (map!11896 (v!47451 (underlying!9958 hm!63)))))))

(declare-fun lt!1925485 () Unit!137860)

(declare-fun lt!1925483 () Unit!137860)

(assert (=> b!4761657 (= lt!1925485 lt!1925483)))

(declare-fun lt!1925480 () List!53520)

(assert (=> b!4761657 (isDefined!9789 (getValueByKey!2143 lt!1925480 lt!1925481))))

(assert (=> b!4761657 (= lt!1925483 (lemmaContainsKeyImpliesGetValueByKeyDefined!1959 lt!1925480 lt!1925481))))

(assert (=> b!4761657 (= lt!1925480 (toList!6230 (map!11896 (v!47451 (underlying!9958 hm!63)))))))

(declare-fun lt!1925478 () Unit!137860)

(declare-fun lt!1925479 () Unit!137860)

(assert (=> b!4761657 (= lt!1925478 lt!1925479)))

(declare-fun lt!1925488 () List!53520)

(declare-fun containsKey!3642 (List!53520 (_ BitVec 64)) Bool)

(assert (=> b!4761657 (containsKey!3642 lt!1925488 lt!1925481)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!188 (List!53520 (_ BitVec 64)) Unit!137860)

(assert (=> b!4761657 (= lt!1925479 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!188 lt!1925488 lt!1925481))))

(assert (=> b!4761657 (= lt!1925488 (toList!6230 (map!11896 (v!47451 (underlying!9958 hm!63)))))))

(declare-fun e!2971528 () Unit!137860)

(declare-fun Unit!137865 () Unit!137860)

(assert (=> b!4761657 (= e!2971528 Unit!137865)))

(declare-fun b!4761658 () Bool)

(declare-fun e!2971525 () Unit!137860)

(declare-fun lt!1925475 () Unit!137860)

(assert (=> b!4761658 (= e!2971525 lt!1925475)))

(assert (=> b!4761658 (= lt!1925482 call!333816)))

(declare-fun lemmaInGenericMapThenInLongMap!187 (ListLongMap!4615 K!14829 Hashable!6536) Unit!137860)

(assert (=> b!4761658 (= lt!1925475 (lemmaInGenericMapThenInLongMap!187 lt!1925482 k0!1662 (hashF!12346 hm!63)))))

(declare-fun res!2019472 () Bool)

(assert (=> b!4761658 (= res!2019472 call!333819)))

(declare-fun e!2971527 () Bool)

(assert (=> b!4761658 (=> (not res!2019472) (not e!2971527))))

(assert (=> b!4761658 e!2971527))

(declare-fun b!4761659 () Bool)

(declare-fun e!2971526 () Unit!137860)

(declare-fun Unit!137866 () Unit!137860)

(assert (=> b!4761659 (= e!2971526 Unit!137866)))

(declare-fun bm!333812 () Bool)

(declare-fun call!333814 () List!53519)

(assert (=> bm!333812 (= call!333818 (getPair!623 call!333814 k0!1662))))

(assert (=> b!4761660 (= e!2971526 (forallContained!3835 (toList!6230 (map!11896 (v!47451 (underlying!9958 hm!63)))) lambda!223835 (tuple2!55357 lt!1925481 (apply!12556 (v!47451 (underlying!9958 hm!63)) lt!1925481))))))

(declare-fun c!812236 () Bool)

(assert (=> b!4761660 (= c!812236 (not (contains!16698 (toList!6230 (map!11896 (v!47451 (underlying!9958 hm!63)))) (tuple2!55357 lt!1925481 (apply!12556 (v!47451 (underlying!9958 hm!63)) lt!1925481)))))))

(declare-fun lt!1925477 () Unit!137860)

(assert (=> b!4761660 (= lt!1925477 e!2971528)))

(declare-fun bm!333813 () Bool)

(assert (=> bm!333813 (= call!333815 (hash!4524 (hashF!12346 hm!63) k0!1662))))

(declare-fun b!4761661 () Bool)

(declare-fun Unit!137867 () Unit!137860)

(assert (=> b!4761661 (= e!2971528 Unit!137867)))

(declare-fun d!1521483 () Bool)

(declare-fun lt!1925490 () Bool)

(declare-fun contains!16700 (ListMap!5737 K!14829) Bool)

(assert (=> d!1521483 (= lt!1925490 (contains!16700 (map!11895 hm!63) k0!1662))))

(assert (=> d!1521483 (= lt!1925490 e!2971524)))

(declare-fun res!2019471 () Bool)

(assert (=> d!1521483 (=> (not res!2019471) (not e!2971524))))

(declare-fun contains!16701 (MutLongMap!4875 (_ BitVec 64)) Bool)

(assert (=> d!1521483 (= res!2019471 (contains!16701 (v!47451 (underlying!9958 hm!63)) lt!1925481))))

(declare-fun lt!1925486 () Unit!137860)

(assert (=> d!1521483 (= lt!1925486 e!2971525)))

(assert (=> d!1521483 (= c!812239 (contains!16700 (extractMap!2123 (toList!6230 (map!11896 (v!47451 (underlying!9958 hm!63))))) k0!1662))))

(declare-fun lt!1925489 () Unit!137860)

(assert (=> d!1521483 (= lt!1925489 e!2971526)))

(declare-fun c!812238 () Bool)

(assert (=> d!1521483 (= c!812238 (contains!16701 (v!47451 (underlying!9958 hm!63)) lt!1925481))))

(assert (=> d!1521483 (= lt!1925481 (hash!4524 (hashF!12346 hm!63) k0!1662))))

(assert (=> d!1521483 (valid!3868 hm!63)))

(assert (=> d!1521483 (= (contains!16697 hm!63 k0!1662) lt!1925490)))

(declare-fun b!4761655 () Bool)

(assert (=> b!4761655 false))

(declare-fun lt!1925484 () Unit!137860)

(declare-fun lt!1925471 () Unit!137860)

(assert (=> b!4761655 (= lt!1925484 lt!1925471)))

(declare-fun lt!1925473 () ListLongMap!4615)

(assert (=> b!4761655 (contains!16700 (extractMap!2123 (toList!6230 lt!1925473)) k0!1662)))

(declare-fun lemmaInLongMapThenInGenericMap!187 (ListLongMap!4615 K!14829 Hashable!6536) Unit!137860)

(assert (=> b!4761655 (= lt!1925471 (lemmaInLongMapThenInGenericMap!187 lt!1925473 k0!1662 (hashF!12346 hm!63)))))

(assert (=> b!4761655 (= lt!1925473 call!333816)))

(declare-fun Unit!137868 () Unit!137860)

(assert (=> b!4761655 (= e!2971529 Unit!137868)))

(declare-fun bm!333814 () Bool)

(assert (=> bm!333814 (= call!333814 (apply!12557 (ite c!812239 lt!1925482 call!333816) call!333815))))

(declare-fun b!4761662 () Bool)

(declare-fun e!2971523 () Bool)

(assert (=> b!4761662 (= e!2971523 call!333817)))

(declare-fun b!4761663 () Bool)

(assert (=> b!4761663 (= e!2971525 e!2971529)))

(declare-fun res!2019473 () Bool)

(assert (=> b!4761663 (= res!2019473 call!333819)))

(assert (=> b!4761663 (=> (not res!2019473) (not e!2971523))))

(declare-fun c!812237 () Bool)

(assert (=> b!4761663 (= c!812237 e!2971523)))

(declare-fun b!4761664 () Bool)

(assert (=> b!4761664 (= e!2971527 call!333817)))

(assert (= (and d!1521483 c!812238) b!4761660))

(assert (= (and d!1521483 (not c!812238)) b!4761659))

(assert (= (and b!4761660 c!812236) b!4761657))

(assert (= (and b!4761660 (not c!812236)) b!4761661))

(assert (= (and d!1521483 c!812239) b!4761658))

(assert (= (and d!1521483 (not c!812239)) b!4761663))

(assert (= (and b!4761658 res!2019472) b!4761664))

(assert (= (and b!4761663 res!2019473) b!4761662))

(assert (= (and b!4761663 c!812237) b!4761655))

(assert (= (and b!4761663 (not c!812237)) b!4761654))

(assert (= (or b!4761658 b!4761663 b!4761662 b!4761655) bm!333811))

(assert (= (or b!4761658 b!4761664 b!4761663 b!4761662) bm!333813))

(assert (= (or b!4761664 b!4761662) bm!333814))

(assert (= (or b!4761658 b!4761663) bm!333809))

(assert (= (or b!4761664 b!4761662) bm!333812))

(assert (= (or b!4761664 b!4761662) bm!333810))

(assert (= (and d!1521483 res!2019471) b!4761656))

(assert (=> b!4761660 m!5730678))

(declare-fun m!5730744 () Bool)

(assert (=> b!4761660 m!5730744))

(declare-fun m!5730746 () Bool)

(assert (=> b!4761660 m!5730746))

(declare-fun m!5730748 () Bool)

(assert (=> b!4761660 m!5730748))

(assert (=> bm!333813 m!5730698))

(declare-fun m!5730750 () Bool)

(assert (=> bm!333814 m!5730750))

(declare-fun m!5730752 () Bool)

(assert (=> bm!333810 m!5730752))

(declare-fun m!5730754 () Bool)

(assert (=> bm!333812 m!5730754))

(assert (=> b!4761656 m!5730744))

(assert (=> b!4761656 m!5730744))

(declare-fun m!5730756 () Bool)

(assert (=> b!4761656 m!5730756))

(assert (=> b!4761656 m!5730756))

(declare-fun m!5730758 () Bool)

(assert (=> b!4761656 m!5730758))

(declare-fun m!5730760 () Bool)

(assert (=> bm!333809 m!5730760))

(assert (=> bm!333811 m!5730678))

(assert (=> d!1521483 m!5730678))

(assert (=> d!1521483 m!5730662))

(assert (=> d!1521483 m!5730698))

(assert (=> d!1521483 m!5730736))

(declare-fun m!5730762 () Bool)

(assert (=> d!1521483 m!5730762))

(declare-fun m!5730764 () Bool)

(assert (=> d!1521483 m!5730764))

(assert (=> d!1521483 m!5730736))

(assert (=> d!1521483 m!5730652))

(assert (=> d!1521483 m!5730662))

(declare-fun m!5730766 () Bool)

(assert (=> d!1521483 m!5730766))

(declare-fun m!5730768 () Bool)

(assert (=> b!4761655 m!5730768))

(assert (=> b!4761655 m!5730768))

(declare-fun m!5730770 () Bool)

(assert (=> b!4761655 m!5730770))

(declare-fun m!5730772 () Bool)

(assert (=> b!4761655 m!5730772))

(assert (=> b!4761657 m!5730678))

(declare-fun m!5730774 () Bool)

(assert (=> b!4761657 m!5730774))

(declare-fun m!5730776 () Bool)

(assert (=> b!4761657 m!5730776))

(declare-fun m!5730778 () Bool)

(assert (=> b!4761657 m!5730778))

(assert (=> b!4761657 m!5730774))

(declare-fun m!5730780 () Bool)

(assert (=> b!4761657 m!5730780))

(declare-fun m!5730782 () Bool)

(assert (=> b!4761657 m!5730782))

(declare-fun m!5730784 () Bool)

(assert (=> b!4761657 m!5730784))

(assert (=> b!4761657 m!5730744))

(declare-fun m!5730786 () Bool)

(assert (=> b!4761657 m!5730786))

(declare-fun m!5730788 () Bool)

(assert (=> b!4761658 m!5730788))

(assert (=> b!4761590 d!1521483))

(declare-fun d!1521485 () Bool)

(assert (=> d!1521485 (= (array_inv!5711 (_keys!5210 (v!47450 (underlying!9957 (v!47451 (underlying!9958 hm!63)))))) (bvsge (size!36162 (_keys!5210 (v!47450 (underlying!9957 (v!47451 (underlying!9958 hm!63)))))) #b00000000000000000000000000000000))))

(assert (=> b!4761591 d!1521485))

(declare-fun d!1521487 () Bool)

(assert (=> d!1521487 (= (array_inv!5712 (_values!5183 (v!47450 (underlying!9957 (v!47451 (underlying!9958 hm!63)))))) (bvsge (size!36163 (_values!5183 (v!47450 (underlying!9957 (v!47451 (underlying!9958 hm!63)))))) #b00000000000000000000000000000000))))

(assert (=> b!4761591 d!1521487))

(declare-fun b!4761669 () Bool)

(declare-fun e!2971532 () Bool)

(declare-fun tp!1354166 () Bool)

(assert (=> b!4761669 (= e!2971532 (and tp_is_empty!32315 tp_is_empty!32317 tp!1354166))))

(assert (=> b!4761593 (= tp!1354161 e!2971532)))

(assert (= (and b!4761593 ((_ is Cons!53395) mapDefault!21659)) b!4761669))

(declare-fun condMapEmpty!21662 () Bool)

(declare-fun mapDefault!21662 () List!53519)

(assert (=> mapNonEmpty!21659 (= condMapEmpty!21662 (= mapRest!21659 ((as const (Array (_ BitVec 32) List!53519)) mapDefault!21662)))))

(declare-fun e!2971537 () Bool)

(declare-fun mapRes!21662 () Bool)

(assert (=> mapNonEmpty!21659 (= tp!1354163 (and e!2971537 mapRes!21662))))

(declare-fun tp!1354173 () Bool)

(declare-fun e!2971538 () Bool)

(declare-fun b!4761676 () Bool)

(assert (=> b!4761676 (= e!2971538 (and tp_is_empty!32315 tp_is_empty!32317 tp!1354173))))

(declare-fun b!4761677 () Bool)

(declare-fun tp!1354174 () Bool)

(assert (=> b!4761677 (= e!2971537 (and tp_is_empty!32315 tp_is_empty!32317 tp!1354174))))

(declare-fun mapIsEmpty!21662 () Bool)

(assert (=> mapIsEmpty!21662 mapRes!21662))

(declare-fun mapNonEmpty!21662 () Bool)

(declare-fun tp!1354175 () Bool)

(assert (=> mapNonEmpty!21662 (= mapRes!21662 (and tp!1354175 e!2971538))))

(declare-fun mapKey!21662 () (_ BitVec 32))

(declare-fun mapRest!21662 () (Array (_ BitVec 32) List!53519))

(declare-fun mapValue!21662 () List!53519)

(assert (=> mapNonEmpty!21662 (= mapRest!21659 (store mapRest!21662 mapKey!21662 mapValue!21662))))

(assert (= (and mapNonEmpty!21659 condMapEmpty!21662) mapIsEmpty!21662))

(assert (= (and mapNonEmpty!21659 (not condMapEmpty!21662)) mapNonEmpty!21662))

(assert (= (and mapNonEmpty!21662 ((_ is Cons!53395) mapValue!21662)) b!4761676))

(assert (= (and mapNonEmpty!21659 ((_ is Cons!53395) mapDefault!21662)) b!4761677))

(declare-fun m!5730790 () Bool)

(assert (=> mapNonEmpty!21662 m!5730790))

(declare-fun tp!1354176 () Bool)

(declare-fun e!2971539 () Bool)

(declare-fun b!4761678 () Bool)

(assert (=> b!4761678 (= e!2971539 (and tp_is_empty!32315 tp_is_empty!32317 tp!1354176))))

(assert (=> mapNonEmpty!21659 (= tp!1354156 e!2971539)))

(assert (= (and mapNonEmpty!21659 ((_ is Cons!53395) mapValue!21659)) b!4761678))

(declare-fun e!2971540 () Bool)

(declare-fun b!4761679 () Bool)

(declare-fun tp!1354177 () Bool)

(assert (=> b!4761679 (= e!2971540 (and tp_is_empty!32315 tp_is_empty!32317 tp!1354177))))

(assert (=> b!4761591 (= tp!1354159 e!2971540)))

(assert (= (and b!4761591 ((_ is Cons!53395) (zeroValue!5158 (v!47450 (underlying!9957 (v!47451 (underlying!9958 hm!63))))))) b!4761679))

(declare-fun tp!1354178 () Bool)

(declare-fun b!4761680 () Bool)

(declare-fun e!2971541 () Bool)

(assert (=> b!4761680 (= e!2971541 (and tp_is_empty!32315 tp_is_empty!32317 tp!1354178))))

(assert (=> b!4761591 (= tp!1354162 e!2971541)))

(assert (= (and b!4761591 ((_ is Cons!53395) (minValue!5158 (v!47450 (underlying!9957 (v!47451 (underlying!9958 hm!63))))))) b!4761680))

(declare-fun b_lambda!183835 () Bool)

(assert (= b_lambda!183831 (or (and b!4761594 b_free!129435) b_lambda!183835)))

(declare-fun b_lambda!183837 () Bool)

(assert (= b_lambda!183829 (or (and b!4761594 b_free!129435) b_lambda!183837)))

(declare-fun b_lambda!183839 () Bool)

(assert (= b_lambda!183833 (or (and start!486946 b_free!129433) b_lambda!183839)))

(check-sat (not d!1521479) b_and!341071 (not b_lambda!183837) (not d!1521475) (not b!4761676) (not b!4761680) (not b!4761677) (not b_lambda!183835) (not bm!333813) (not b!4761658) (not b_next!130141) (not bm!333809) (not d!1521473) (not b!4761655) tp_is_empty!32315 (not b_next!130137) (not bm!333814) (not b!4761660) (not b!4761657) (not b!4761614) (not b_next!130139) (not b!4761678) b_and!341069 (not b!4761679) (not b!4761612) (not b!4761656) (not bm!333811) b_and!341065 (not d!1521483) (not b!4761625) (not bm!333812) (not b_lambda!183839) tp_is_empty!32317 (not b!4761630) (not b!4761669) (not b!4761631) (not d!1521481) (not b!4761616) (not mapNonEmpty!21662) (not bm!333810))
(check-sat (not b_next!130137) b_and!341071 b_and!341065 (not b_next!130141) (not b_next!130139) b_and!341069)
