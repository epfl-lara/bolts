; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46624 () Bool)

(assert start!46624)

(declare-fun b!514646 () Bool)

(declare-fun b_free!13451 () Bool)

(declare-fun b_next!13451 () Bool)

(assert (=> b!514646 (= b_free!13451 (not b_next!13451))))

(declare-fun tp!160489 () Bool)

(declare-fun b_and!50887 () Bool)

(assert (=> b!514646 (= tp!160489 b_and!50887)))

(declare-fun b_free!13453 () Bool)

(declare-fun b_next!13453 () Bool)

(assert (=> start!46624 (= b_free!13453 (not b_next!13453))))

(declare-fun tp!160492 () Bool)

(declare-fun b_and!50889 () Bool)

(assert (=> start!46624 (= tp!160492 b_and!50889)))

(declare-fun b!514645 () Bool)

(declare-fun b_free!13455 () Bool)

(declare-fun b_next!13455 () Bool)

(assert (=> b!514645 (= b_free!13455 (not b_next!13455))))

(declare-fun tp!160487 () Bool)

(declare-fun b_and!50891 () Bool)

(assert (=> b!514645 (= tp!160487 b_and!50891)))

(declare-fun b!514643 () Bool)

(declare-fun e!307717 () Bool)

(declare-fun tp!160485 () Bool)

(declare-fun mapRes!1921 () Bool)

(assert (=> b!514643 (= e!307717 (and tp!160485 mapRes!1921))))

(declare-fun condMapEmpty!1921 () Bool)

(declare-datatypes ((V!1460 0))(
  ( (V!1461 (val!1753 Int)) )
))
(declare-datatypes ((K!1362 0))(
  ( (K!1363 (val!1754 Int)) )
))
(declare-datatypes ((tuple2!5670 0))(
  ( (tuple2!5671 (_1!3051 K!1362) (_2!3051 V!1460)) )
))
(declare-datatypes ((List!4698 0))(
  ( (Nil!4688) (Cons!4688 (h!10085 tuple2!5670) (t!73230 List!4698)) )
))
(declare-datatypes ((array!1911 0))(
  ( (array!1912 (arr!882 (Array (_ BitVec 32) List!4698)) (size!3816 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!471 0))(
  ( (HashableExt!470 (__x!3388 Int)) )
))
(declare-datatypes ((array!1913 0))(
  ( (array!1914 (arr!883 (Array (_ BitVec 32) (_ BitVec 64))) (size!3817 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!998 0))(
  ( (LongMapFixedSize!999 (defaultEntry!850 Int) (mask!1913 (_ BitVec 32)) (extraKeys!745 (_ BitVec 32)) (zeroValue!755 List!4698) (minValue!755 List!4698) (_size!1107 (_ BitVec 32)) (_keys!790 array!1913) (_values!777 array!1911) (_vacant!560 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1937 0))(
  ( (Cell!1938 (v!15715 LongMapFixedSize!998)) )
))
(declare-datatypes ((MutLongMap!499 0))(
  ( (LongMap!499 (underlying!1177 Cell!1937)) (MutLongMapExt!498 (__x!3389 Int)) )
))
(declare-datatypes ((Cell!1939 0))(
  ( (Cell!1940 (v!15716 MutLongMap!499)) )
))
(declare-datatypes ((MutableMap!471 0))(
  ( (MutableMapExt!470 (__x!3390 Int)) (HashMap!471 (underlying!1178 Cell!1939) (hashF!2347 Hashable!471) (_size!1108 (_ BitVec 32)) (defaultValue!620 Int)) )
))
(declare-fun hm!65 () MutableMap!471)

(declare-fun mapDefault!1921 () List!4698)

(assert (=> b!514643 (= condMapEmpty!1921 (= (arr!882 (_values!777 (v!15715 (underlying!1177 (v!15716 (underlying!1178 hm!65)))))) ((as const (Array (_ BitVec 32) List!4698)) mapDefault!1921)))))

(declare-fun res!218242 () Bool)

(declare-fun e!307712 () Bool)

(assert (=> start!46624 (=> (not res!218242) (not e!307712))))

(get-info :version)

(assert (=> start!46624 (= res!218242 ((_ is HashMap!471) hm!65))))

(assert (=> start!46624 e!307712))

(declare-fun e!307713 () Bool)

(assert (=> start!46624 e!307713))

(assert (=> start!46624 tp!160492))

(declare-fun tp_is_empty!2567 () Bool)

(assert (=> start!46624 tp_is_empty!2567))

(declare-fun b!514644 () Bool)

(declare-fun e!307719 () Bool)

(declare-datatypes ((tuple2!5672 0))(
  ( (tuple2!5673 (_1!3052 Bool) (_2!3052 MutableMap!471)) )
))
(declare-fun lt!213159 () tuple2!5672)

(assert (=> b!514644 (= e!307719 (and (not (_1!3052 lt!213159)) (not ((_ is HashMap!471) (_2!3052 lt!213159)))))))

(declare-fun e!307715 () Bool)

(assert (=> b!514645 (= e!307713 (and e!307715 tp!160487))))

(declare-fun mapIsEmpty!1921 () Bool)

(assert (=> mapIsEmpty!1921 mapRes!1921))

(declare-fun tp!160488 () Bool)

(declare-fun e!307716 () Bool)

(declare-fun tp!160491 () Bool)

(declare-fun array_inv!641 (array!1913) Bool)

(declare-fun array_inv!642 (array!1911) Bool)

(assert (=> b!514646 (= e!307716 (and tp!160489 tp!160488 tp!160491 (array_inv!641 (_keys!790 (v!15715 (underlying!1177 (v!15716 (underlying!1178 hm!65)))))) (array_inv!642 (_values!777 (v!15715 (underlying!1177 (v!15716 (underlying!1178 hm!65)))))) e!307717))))

(declare-fun b!514647 () Bool)

(declare-fun e!307714 () Bool)

(assert (=> b!514647 (= e!307714 e!307716)))

(declare-fun b!514648 () Bool)

(declare-fun e!307721 () Bool)

(assert (=> b!514648 (= e!307712 e!307721)))

(declare-fun res!218241 () Bool)

(assert (=> b!514648 (=> (not res!218241) (not e!307721))))

(declare-datatypes ((ListMap!151 0))(
  ( (ListMap!152 (toList!391 List!4698)) )
))
(declare-fun lt!213157 () ListMap!151)

(declare-fun p!6060 () Int)

(declare-fun forall!1375 (List!4698 Int) Bool)

(assert (=> b!514648 (= res!218241 (forall!1375 (toList!391 lt!213157) p!6060))))

(declare-fun map!1000 (MutableMap!471) ListMap!151)

(assert (=> b!514648 (= lt!213157 (map!1000 hm!65))))

(declare-fun b!514649 () Bool)

(declare-fun e!307718 () Bool)

(declare-fun lt!213158 () MutLongMap!499)

(assert (=> b!514649 (= e!307715 (and e!307718 ((_ is LongMap!499) lt!213158)))))

(assert (=> b!514649 (= lt!213158 (v!15716 (underlying!1178 hm!65)))))

(declare-fun b!514650 () Bool)

(declare-fun res!218243 () Bool)

(assert (=> b!514650 (=> (not res!218243) (not e!307719))))

(declare-fun invariantList!55 (List!4698) Bool)

(assert (=> b!514650 (= res!218243 (invariantList!55 (toList!391 (map!1000 (_2!3052 lt!213159)))))))

(declare-fun b!514651 () Bool)

(assert (=> b!514651 (= e!307721 e!307719)))

(declare-fun res!218244 () Bool)

(assert (=> b!514651 (=> (not res!218244) (not e!307719))))

(declare-fun valid!455 (MutableMap!471) Bool)

(assert (=> b!514651 (= res!218244 (valid!455 (_2!3052 lt!213159)))))

(declare-fun k0!1740 () K!1362)

(declare-fun remove!21 (MutableMap!471 K!1362) tuple2!5672)

(assert (=> b!514651 (= lt!213159 (remove!21 hm!65 k0!1740))))

(declare-fun lt!213156 () ListMap!151)

(declare-fun -!18 (ListMap!151 K!1362) ListMap!151)

(assert (=> b!514651 (= lt!213156 (-!18 lt!213157 k0!1740))))

(declare-fun mapNonEmpty!1921 () Bool)

(declare-fun tp!160486 () Bool)

(declare-fun tp!160490 () Bool)

(assert (=> mapNonEmpty!1921 (= mapRes!1921 (and tp!160486 tp!160490))))

(declare-fun mapValue!1921 () List!4698)

(declare-fun mapRest!1921 () (Array (_ BitVec 32) List!4698))

(declare-fun mapKey!1921 () (_ BitVec 32))

(assert (=> mapNonEmpty!1921 (= (arr!882 (_values!777 (v!15715 (underlying!1177 (v!15716 (underlying!1178 hm!65)))))) (store mapRest!1921 mapKey!1921 mapValue!1921))))

(declare-fun b!514652 () Bool)

(declare-fun res!218240 () Bool)

(assert (=> b!514652 (=> (not res!218240) (not e!307712))))

(assert (=> b!514652 (= res!218240 (valid!455 hm!65))))

(declare-fun b!514653 () Bool)

(assert (=> b!514653 (= e!307718 e!307714)))

(assert (= (and start!46624 res!218242) b!514652))

(assert (= (and b!514652 res!218240) b!514648))

(assert (= (and b!514648 res!218241) b!514651))

(assert (= (and b!514651 res!218244) b!514650))

(assert (= (and b!514650 res!218243) b!514644))

(assert (= (and b!514643 condMapEmpty!1921) mapIsEmpty!1921))

(assert (= (and b!514643 (not condMapEmpty!1921)) mapNonEmpty!1921))

(assert (= b!514646 b!514643))

(assert (= b!514647 b!514646))

(assert (= b!514653 b!514647))

(assert (= (and b!514649 ((_ is LongMap!499) (v!15716 (underlying!1178 hm!65)))) b!514653))

(assert (= b!514645 b!514649))

(assert (= (and start!46624 ((_ is HashMap!471) hm!65)) b!514645))

(declare-fun m!760649 () Bool)

(assert (=> b!514650 m!760649))

(declare-fun m!760651 () Bool)

(assert (=> b!514650 m!760651))

(declare-fun m!760653 () Bool)

(assert (=> b!514652 m!760653))

(declare-fun m!760655 () Bool)

(assert (=> b!514646 m!760655))

(declare-fun m!760657 () Bool)

(assert (=> b!514646 m!760657))

(declare-fun m!760659 () Bool)

(assert (=> b!514648 m!760659))

(declare-fun m!760661 () Bool)

(assert (=> b!514648 m!760661))

(declare-fun m!760663 () Bool)

(assert (=> b!514651 m!760663))

(declare-fun m!760665 () Bool)

(assert (=> b!514651 m!760665))

(declare-fun m!760667 () Bool)

(assert (=> b!514651 m!760667))

(declare-fun m!760669 () Bool)

(assert (=> mapNonEmpty!1921 m!760669))

(check-sat b_and!50889 (not b!514646) (not b!514651) (not b!514643) (not mapNonEmpty!1921) (not b_next!13451) (not b!514648) (not b_next!13455) (not b_next!13453) b_and!50891 b_and!50887 (not b!514650) tp_is_empty!2567 (not b!514652))
(check-sat b_and!50889 b_and!50887 (not b_next!13451) (not b_next!13455) (not b_next!13453) b_and!50891)
(get-model)

(declare-fun d!184332 () Bool)

(declare-fun res!218249 () Bool)

(declare-fun e!307724 () Bool)

(assert (=> d!184332 (=> (not res!218249) (not e!307724))))

(declare-fun valid!456 (MutLongMap!499) Bool)

(assert (=> d!184332 (= res!218249 (valid!456 (v!15716 (underlying!1178 hm!65))))))

(assert (=> d!184332 (= (valid!455 hm!65) e!307724)))

(declare-fun b!514658 () Bool)

(declare-fun res!218250 () Bool)

(assert (=> b!514658 (=> (not res!218250) (not e!307724))))

(declare-fun lambda!14331 () Int)

(declare-datatypes ((tuple2!5674 0))(
  ( (tuple2!5675 (_1!3053 (_ BitVec 64)) (_2!3053 List!4698)) )
))
(declare-datatypes ((List!4699 0))(
  ( (Nil!4689) (Cons!4689 (h!10086 tuple2!5674) (t!73233 List!4699)) )
))
(declare-fun forall!1376 (List!4699 Int) Bool)

(declare-datatypes ((ListLongMap!63 0))(
  ( (ListLongMap!64 (toList!392 List!4699)) )
))
(declare-fun map!1001 (MutLongMap!499) ListLongMap!63)

(assert (=> b!514658 (= res!218250 (forall!1376 (toList!392 (map!1001 (v!15716 (underlying!1178 hm!65)))) lambda!14331))))

(declare-fun b!514659 () Bool)

(declare-fun allKeysSameHashInMap!20 (ListLongMap!63 Hashable!471) Bool)

(assert (=> b!514659 (= e!307724 (allKeysSameHashInMap!20 (map!1001 (v!15716 (underlying!1178 hm!65))) (hashF!2347 hm!65)))))

(assert (= (and d!184332 res!218249) b!514658))

(assert (= (and b!514658 res!218250) b!514659))

(declare-fun m!760671 () Bool)

(assert (=> d!184332 m!760671))

(declare-fun m!760673 () Bool)

(assert (=> b!514658 m!760673))

(declare-fun m!760675 () Bool)

(assert (=> b!514658 m!760675))

(assert (=> b!514659 m!760673))

(assert (=> b!514659 m!760673))

(declare-fun m!760677 () Bool)

(assert (=> b!514659 m!760677))

(assert (=> b!514652 d!184332))

(declare-fun d!184334 () Bool)

(declare-fun res!218255 () Bool)

(declare-fun e!307729 () Bool)

(assert (=> d!184334 (=> res!218255 e!307729)))

(assert (=> d!184334 (= res!218255 ((_ is Nil!4688) (toList!391 lt!213157)))))

(assert (=> d!184334 (= (forall!1375 (toList!391 lt!213157) p!6060) e!307729)))

(declare-fun b!514664 () Bool)

(declare-fun e!307730 () Bool)

(assert (=> b!514664 (= e!307729 e!307730)))

(declare-fun res!218256 () Bool)

(assert (=> b!514664 (=> (not res!218256) (not e!307730))))

(declare-fun dynLambda!2968 (Int tuple2!5670) Bool)

(assert (=> b!514664 (= res!218256 (dynLambda!2968 p!6060 (h!10085 (toList!391 lt!213157))))))

(declare-fun b!514665 () Bool)

(assert (=> b!514665 (= e!307730 (forall!1375 (t!73230 (toList!391 lt!213157)) p!6060))))

(assert (= (and d!184334 (not res!218255)) b!514664))

(assert (= (and b!514664 res!218256) b!514665))

(declare-fun b_lambda!19985 () Bool)

(assert (=> (not b_lambda!19985) (not b!514664)))

(declare-fun t!73232 () Bool)

(declare-fun tb!47131 () Bool)

(assert (=> (and start!46624 (= p!6060 p!6060) t!73232) tb!47131))

(declare-fun result!52154 () Bool)

(assert (=> tb!47131 (= result!52154 true)))

(assert (=> b!514664 t!73232))

(declare-fun b_and!50893 () Bool)

(assert (= b_and!50889 (and (=> t!73232 result!52154) b_and!50893)))

(declare-fun m!760679 () Bool)

(assert (=> b!514664 m!760679))

(declare-fun m!760681 () Bool)

(assert (=> b!514665 m!760681))

(assert (=> b!514648 d!184334))

(declare-fun d!184336 () Bool)

(declare-fun lt!213162 () ListMap!151)

(assert (=> d!184336 (invariantList!55 (toList!391 lt!213162))))

(declare-fun extractMap!13 (List!4699) ListMap!151)

(assert (=> d!184336 (= lt!213162 (extractMap!13 (toList!392 (map!1001 (v!15716 (underlying!1178 hm!65))))))))

(assert (=> d!184336 (valid!455 hm!65)))

(assert (=> d!184336 (= (map!1000 hm!65) lt!213162)))

(declare-fun bs!59437 () Bool)

(assert (= bs!59437 d!184336))

(declare-fun m!760683 () Bool)

(assert (=> bs!59437 m!760683))

(assert (=> bs!59437 m!760673))

(declare-fun m!760685 () Bool)

(assert (=> bs!59437 m!760685))

(assert (=> bs!59437 m!760653))

(assert (=> b!514648 d!184336))

(declare-fun bs!59438 () Bool)

(declare-fun b!514666 () Bool)

(assert (= bs!59438 (and b!514666 b!514658)))

(declare-fun lambda!14332 () Int)

(assert (=> bs!59438 (= lambda!14332 lambda!14331)))

(declare-fun d!184338 () Bool)

(declare-fun res!218257 () Bool)

(declare-fun e!307731 () Bool)

(assert (=> d!184338 (=> (not res!218257) (not e!307731))))

(assert (=> d!184338 (= res!218257 (valid!456 (v!15716 (underlying!1178 (_2!3052 lt!213159)))))))

(assert (=> d!184338 (= (valid!455 (_2!3052 lt!213159)) e!307731)))

(declare-fun res!218258 () Bool)

(assert (=> b!514666 (=> (not res!218258) (not e!307731))))

(assert (=> b!514666 (= res!218258 (forall!1376 (toList!392 (map!1001 (v!15716 (underlying!1178 (_2!3052 lt!213159))))) lambda!14332))))

(declare-fun b!514667 () Bool)

(assert (=> b!514667 (= e!307731 (allKeysSameHashInMap!20 (map!1001 (v!15716 (underlying!1178 (_2!3052 lt!213159)))) (hashF!2347 (_2!3052 lt!213159))))))

(assert (= (and d!184338 res!218257) b!514666))

(assert (= (and b!514666 res!218258) b!514667))

(declare-fun m!760687 () Bool)

(assert (=> d!184338 m!760687))

(declare-fun m!760689 () Bool)

(assert (=> b!514666 m!760689))

(declare-fun m!760691 () Bool)

(assert (=> b!514666 m!760691))

(assert (=> b!514667 m!760689))

(assert (=> b!514667 m!760689))

(declare-fun m!760693 () Bool)

(assert (=> b!514667 m!760693))

(assert (=> b!514651 d!184338))

(declare-fun bs!59439 () Bool)

(declare-fun b!514697 () Bool)

(assert (= bs!59439 (and b!514697 b!514658)))

(declare-fun lambda!14339 () Int)

(assert (=> bs!59439 (= lambda!14339 lambda!14331)))

(declare-fun bs!59440 () Bool)

(assert (= bs!59440 (and b!514697 b!514666)))

(assert (=> bs!59440 (= lambda!14339 lambda!14332)))

(declare-fun b!514690 () Bool)

(declare-fun e!307749 () tuple2!5672)

(assert (=> b!514690 (= e!307749 (tuple2!5673 true hm!65))))

(declare-fun lt!213227 () ListLongMap!63)

(declare-fun call!37428 () ListLongMap!63)

(assert (=> b!514690 (= lt!213227 call!37428)))

(declare-datatypes ((Unit!8469 0))(
  ( (Unit!8470) )
))
(declare-fun lt!213228 () Unit!8469)

(declare-fun lemmaRemoveNotContainedDoesNotChange!5 (ListLongMap!63 K!1362 Hashable!471) Unit!8469)

(assert (=> b!514690 (= lt!213228 (lemmaRemoveNotContainedDoesNotChange!5 lt!213227 k0!1740 (hashF!2347 hm!65)))))

(declare-fun call!37429 () ListMap!151)

(declare-fun call!37426 () ListMap!151)

(assert (=> b!514690 (= call!37429 call!37426)))

(declare-fun lt!213252 () Unit!8469)

(assert (=> b!514690 (= lt!213252 lt!213228)))

(declare-fun b!514692 () Bool)

(declare-fun e!307748 () Bool)

(declare-fun e!307745 () Bool)

(assert (=> b!514692 (= e!307748 e!307745)))

(declare-fun c!99812 () Bool)

(declare-fun lt!213245 () tuple2!5672)

(assert (=> b!514692 (= c!99812 (_1!3052 lt!213245))))

(declare-fun bm!37420 () Bool)

(declare-fun call!37432 () ListMap!151)

(assert (=> bm!37420 (= call!37432 (map!1000 (_2!3052 lt!213245)))))

(declare-fun bm!37421 () Bool)

(declare-fun call!37431 () ListMap!151)

(declare-datatypes ((tuple2!5676 0))(
  ( (tuple2!5677 (_1!3054 Unit!8469) (_2!3054 MutableMap!471)) )
))
(declare-fun lt!213251 () tuple2!5676)

(assert (=> bm!37421 (= call!37431 (map!1000 (_2!3054 lt!213251)))))

(declare-fun b!514693 () Bool)

(declare-fun call!37427 () Bool)

(assert (=> b!514693 (= e!307745 call!37427)))

(declare-fun b!514694 () Bool)

(declare-fun eq!17 (ListMap!151 ListMap!151) Bool)

(assert (=> b!514694 (eq!17 call!37431 call!37426)))

(declare-fun lt!213224 () Unit!8469)

(declare-fun lt!213225 () Unit!8469)

(assert (=> b!514694 (= lt!213224 lt!213225)))

(declare-fun lt!213243 () (_ BitVec 64))

(declare-fun lt!213247 () ListLongMap!63)

(declare-fun lt!213237 () List!4698)

(declare-fun +!16 (ListLongMap!63 tuple2!5674) ListLongMap!63)

(assert (=> b!514694 (eq!17 (extractMap!13 (toList!392 (+!16 lt!213247 (tuple2!5675 lt!213243 lt!213237)))) (-!18 call!37429 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!5 (ListLongMap!63 (_ BitVec 64) List!4698 K!1362 Hashable!471) Unit!8469)

(assert (=> b!514694 (= lt!213225 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!5 lt!213247 lt!213243 lt!213237 k0!1740 (hashF!2347 (_2!3054 lt!213251))))))

(declare-fun lt!213244 () Unit!8469)

(declare-fun Unit!8471 () Unit!8469)

(assert (=> b!514694 (= lt!213244 Unit!8471)))

(declare-fun lt!213235 () ListMap!151)

(declare-fun contains!1065 (ListMap!151 K!1362) Bool)

(assert (=> b!514694 (contains!1065 lt!213235 k0!1740)))

(declare-fun lt!213236 () Unit!8469)

(declare-fun Unit!8472 () Unit!8469)

(assert (=> b!514694 (= lt!213236 Unit!8472)))

(declare-fun call!37430 () Bool)

(assert (=> b!514694 call!37430))

(declare-fun lt!213232 () Unit!8469)

(declare-fun Unit!8473 () Unit!8469)

(assert (=> b!514694 (= lt!213232 Unit!8473)))

(assert (=> b!514694 (allKeysSameHashInMap!20 call!37428 (hashF!2347 (_2!3054 lt!213251)))))

(declare-fun lt!213250 () Unit!8469)

(declare-fun Unit!8474 () Unit!8469)

(assert (=> b!514694 (= lt!213250 Unit!8474)))

(assert (=> b!514694 (forall!1376 (toList!392 call!37428) lambda!14339)))

(declare-fun lt!213240 () Unit!8469)

(declare-fun lt!213229 () Unit!8469)

(assert (=> b!514694 (= lt!213240 lt!213229)))

(declare-fun e!307746 () Bool)

(assert (=> b!514694 e!307746))

(declare-fun res!218266 () Bool)

(assert (=> b!514694 (=> (not res!218266) (not e!307746))))

(declare-fun lt!213238 () ListLongMap!63)

(assert (=> b!514694 (= res!218266 (forall!1376 (toList!392 lt!213238) lambda!14339))))

(assert (=> b!514694 (= lt!213238 (+!16 lt!213247 (tuple2!5675 lt!213243 lt!213237)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!7 (ListLongMap!63 (_ BitVec 64) List!4698 Hashable!471) Unit!8469)

(assert (=> b!514694 (= lt!213229 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!7 lt!213247 lt!213243 lt!213237 (hashF!2347 (_2!3054 lt!213251))))))

(declare-fun lt!213226 () Unit!8469)

(declare-fun lt!213242 () Unit!8469)

(assert (=> b!514694 (= lt!213226 lt!213242)))

(declare-fun lt!213234 () List!4698)

(declare-fun allKeysSameHash!8 (List!4698 (_ BitVec 64) Hashable!471) Bool)

(declare-fun removePairForKey!7 (List!4698 K!1362) List!4698)

(assert (=> b!514694 (allKeysSameHash!8 (removePairForKey!7 lt!213234 k0!1740) lt!213243 (hashF!2347 (_2!3054 lt!213251)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!7 (List!4698 K!1362 (_ BitVec 64) Hashable!471) Unit!8469)

(assert (=> b!514694 (= lt!213242 (lemmaRemovePairForKeyPreservesHash!7 lt!213234 k0!1740 lt!213243 (hashF!2347 (_2!3054 lt!213251))))))

(declare-fun lt!213246 () Unit!8469)

(declare-fun lt!213223 () Unit!8469)

(assert (=> b!514694 (= lt!213246 lt!213223)))

(assert (=> b!514694 (allKeysSameHash!8 lt!213234 lt!213243 (hashF!2347 (_2!3054 lt!213251)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!7 (List!4699 (_ BitVec 64) List!4698 Hashable!471) Unit!8469)

(assert (=> b!514694 (= lt!213223 (lemmaInLongMapAllKeySameHashThenForTuple!7 (toList!392 lt!213247) lt!213243 lt!213234 (hashF!2347 (_2!3054 lt!213251))))))

(declare-fun e!307744 () Unit!8469)

(declare-fun Unit!8475 () Unit!8469)

(assert (=> b!514694 (= e!307744 Unit!8475)))

(declare-fun b!514695 () Bool)

(assert (=> b!514695 (= e!307746 (allKeysSameHashInMap!20 lt!213238 (hashF!2347 (_2!3054 lt!213251))))))

(declare-fun b!514696 () Bool)

(declare-fun e!307747 () ListMap!151)

(declare-fun call!37425 () ListMap!151)

(assert (=> b!514696 (= e!307747 (-!18 call!37425 k0!1740))))

(declare-fun b!514691 () Bool)

(assert (=> b!514691 (= e!307747 call!37425)))

(declare-fun d!184340 () Bool)

(assert (=> d!184340 e!307748))

(declare-fun res!218265 () Bool)

(assert (=> d!184340 (=> (not res!218265) (not e!307748))))

(assert (=> d!184340 (= res!218265 ((_ is HashMap!471) (_2!3052 lt!213245)))))

(assert (=> d!184340 (= lt!213245 e!307749)))

(declare-fun c!99810 () Bool)

(declare-fun lt!213248 () Bool)

(assert (=> d!184340 (= c!99810 (not lt!213248))))

(declare-fun contains!1066 (MutableMap!471 K!1362) Bool)

(assert (=> d!184340 (= lt!213248 (contains!1066 hm!65 k0!1740))))

(assert (=> d!184340 (valid!455 hm!65)))

(assert (=> d!184340 (= (remove!21 hm!65 k0!1740) lt!213245)))

(declare-fun bm!37422 () Bool)

(assert (=> bm!37422 (= call!37425 (map!1000 hm!65))))

(declare-fun bm!37423 () Bool)

(assert (=> bm!37423 (= call!37429 (extractMap!13 (ite c!99810 (toList!392 lt!213227) (toList!392 lt!213247))))))

(declare-datatypes ((tuple2!5678 0))(
  ( (tuple2!5679 (_1!3055 Bool) (_2!3055 MutLongMap!499)) )
))
(declare-fun lt!213230 () tuple2!5678)

(assert (=> b!514697 (= e!307749 (tuple2!5673 (_1!3055 lt!213230) (_2!3054 lt!213251)))))

(declare-fun hash!506 (Hashable!471 K!1362) (_ BitVec 64))

(assert (=> b!514697 (= lt!213243 (hash!506 (hashF!2347 hm!65) k0!1740))))

(declare-fun apply!1175 (MutLongMap!499 (_ BitVec 64)) List!4698)

(assert (=> b!514697 (= lt!213234 (apply!1175 (v!15716 (underlying!1178 hm!65)) lt!213243))))

(declare-fun lt!213231 () Unit!8469)

(declare-fun forallContained!438 (List!4699 Int tuple2!5674) Unit!8469)

(assert (=> b!514697 (= lt!213231 (forallContained!438 (toList!392 (map!1001 (v!15716 (underlying!1178 hm!65)))) lambda!14339 (tuple2!5675 lt!213243 (apply!1175 (v!15716 (underlying!1178 hm!65)) lt!213243))))))

(assert (=> b!514697 (= lt!213235 (map!1000 hm!65))))

(assert (=> b!514697 (= lt!213247 (map!1001 (v!15716 (underlying!1178 hm!65))))))

(assert (=> b!514697 (= lt!213237 (removePairForKey!7 lt!213234 k0!1740))))

(declare-fun update!46 (MutLongMap!499 (_ BitVec 64) List!4698) tuple2!5678)

(assert (=> b!514697 (= lt!213230 (update!46 (v!15716 (underlying!1178 hm!65)) lt!213243 lt!213237))))

(declare-fun Unit!8476 () Unit!8469)

(declare-fun Unit!8477 () Unit!8469)

(assert (=> b!514697 (= lt!213251 (ite (and (_1!3055 lt!213230) lt!213248) (tuple2!5677 Unit!8476 (HashMap!471 (Cell!1940 (_2!3055 lt!213230)) (hashF!2347 hm!65) (bvsub (_size!1108 hm!65) #b00000000000000000000000000000001) (defaultValue!620 hm!65))) (tuple2!5677 Unit!8477 (HashMap!471 (Cell!1940 (_2!3055 lt!213230)) (hashF!2347 hm!65) (_size!1108 hm!65) (defaultValue!620 hm!65)))))))

(declare-fun lt!213233 () Unit!8469)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!7 (List!4698 K!1362) Unit!8469)

(assert (=> b!514697 (= lt!213233 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!7 lt!213234 k0!1740))))

(declare-fun noDuplicateKeys!9 (List!4698) Bool)

(assert (=> b!514697 (noDuplicateKeys!9 (removePairForKey!7 lt!213234 k0!1740))))

(declare-fun lt!213249 () Unit!8469)

(assert (=> b!514697 (= lt!213249 lt!213233)))

(declare-fun c!99813 () Bool)

(assert (=> b!514697 (= c!99813 (_1!3055 lt!213230))))

(declare-fun lt!213239 () Unit!8469)

(assert (=> b!514697 (= lt!213239 e!307744)))

(declare-fun b!514698 () Bool)

(assert (=> b!514698 (= call!37431 lt!213235)))

(declare-fun lt!213241 () Unit!8469)

(declare-fun Unit!8478 () Unit!8469)

(assert (=> b!514698 (= lt!213241 Unit!8478)))

(assert (=> b!514698 call!37430))

(declare-fun Unit!8479 () Unit!8469)

(assert (=> b!514698 (= e!307744 Unit!8479)))

(declare-fun bm!37424 () Bool)

(assert (=> bm!37424 (= call!37427 (eq!17 call!37432 e!307747))))

(declare-fun c!99811 () Bool)

(assert (=> bm!37424 (= c!99811 c!99812)))

(declare-fun bm!37425 () Bool)

(assert (=> bm!37425 (= call!37428 (map!1001 (ite c!99810 (v!15716 (underlying!1178 hm!65)) (v!15716 (underlying!1178 (_2!3054 lt!213251))))))))

(declare-fun b!514699 () Bool)

(assert (=> b!514699 (= e!307745 call!37427)))

(declare-fun bm!37426 () Bool)

(assert (=> bm!37426 (= call!37426 (-!18 (ite c!99810 call!37429 lt!213235) k0!1740))))

(declare-fun bm!37427 () Bool)

(assert (=> bm!37427 (= call!37430 (valid!455 (_2!3054 lt!213251)))))

(declare-fun b!514700 () Bool)

(declare-fun res!218267 () Bool)

(assert (=> b!514700 (=> (not res!218267) (not e!307748))))

(assert (=> b!514700 (= res!218267 (valid!455 (_2!3052 lt!213245)))))

(assert (= (and d!184340 c!99810) b!514690))

(assert (= (and d!184340 (not c!99810)) b!514697))

(assert (= (and b!514697 c!99813) b!514694))

(assert (= (and b!514697 (not c!99813)) b!514698))

(assert (= (and b!514694 res!218266) b!514695))

(assert (= (or b!514694 b!514698) bm!37427))

(assert (= (or b!514694 b!514698) bm!37421))

(assert (= (or b!514690 b!514694) bm!37425))

(assert (= (or b!514690 b!514694) bm!37423))

(assert (= (or b!514690 b!514694) bm!37426))

(assert (= (and d!184340 res!218265) b!514700))

(assert (= (and b!514700 res!218267) b!514692))

(assert (= (and b!514692 c!99812) b!514693))

(assert (= (and b!514692 (not c!99812)) b!514699))

(assert (= (or b!514693 b!514699) bm!37420))

(assert (= (or b!514693 b!514699) bm!37422))

(assert (= (or b!514693 b!514699) bm!37424))

(assert (= (and bm!37424 c!99811) b!514696))

(assert (= (and bm!37424 (not c!99811)) b!514691))

(assert (=> b!514697 m!760673))

(declare-fun m!760695 () Bool)

(assert (=> b!514697 m!760695))

(declare-fun m!760697 () Bool)

(assert (=> b!514697 m!760697))

(declare-fun m!760699 () Bool)

(assert (=> b!514697 m!760699))

(assert (=> b!514697 m!760661))

(declare-fun m!760701 () Bool)

(assert (=> b!514697 m!760701))

(declare-fun m!760703 () Bool)

(assert (=> b!514697 m!760703))

(declare-fun m!760705 () Bool)

(assert (=> b!514697 m!760705))

(assert (=> b!514697 m!760695))

(declare-fun m!760707 () Bool)

(assert (=> b!514697 m!760707))

(assert (=> bm!37422 m!760661))

(declare-fun m!760709 () Bool)

(assert (=> bm!37425 m!760709))

(declare-fun m!760711 () Bool)

(assert (=> bm!37420 m!760711))

(declare-fun m!760713 () Bool)

(assert (=> bm!37421 m!760713))

(declare-fun m!760715 () Bool)

(assert (=> b!514690 m!760715))

(declare-fun m!760717 () Bool)

(assert (=> b!514695 m!760717))

(declare-fun m!760719 () Bool)

(assert (=> bm!37427 m!760719))

(declare-fun m!760721 () Bool)

(assert (=> b!514700 m!760721))

(declare-fun m!760723 () Bool)

(assert (=> bm!37424 m!760723))

(declare-fun m!760725 () Bool)

(assert (=> bm!37426 m!760725))

(declare-fun m!760727 () Bool)

(assert (=> b!514696 m!760727))

(declare-fun m!760729 () Bool)

(assert (=> b!514694 m!760729))

(assert (=> b!514694 m!760695))

(declare-fun m!760731 () Bool)

(assert (=> b!514694 m!760731))

(declare-fun m!760733 () Bool)

(assert (=> b!514694 m!760733))

(declare-fun m!760735 () Bool)

(assert (=> b!514694 m!760735))

(assert (=> b!514694 m!760735))

(declare-fun m!760737 () Bool)

(assert (=> b!514694 m!760737))

(declare-fun m!760739 () Bool)

(assert (=> b!514694 m!760739))

(assert (=> b!514694 m!760737))

(declare-fun m!760741 () Bool)

(assert (=> b!514694 m!760741))

(declare-fun m!760743 () Bool)

(assert (=> b!514694 m!760743))

(declare-fun m!760745 () Bool)

(assert (=> b!514694 m!760745))

(assert (=> b!514694 m!760695))

(declare-fun m!760747 () Bool)

(assert (=> b!514694 m!760747))

(declare-fun m!760749 () Bool)

(assert (=> b!514694 m!760749))

(declare-fun m!760751 () Bool)

(assert (=> b!514694 m!760751))

(declare-fun m!760753 () Bool)

(assert (=> b!514694 m!760753))

(declare-fun m!760755 () Bool)

(assert (=> b!514694 m!760755))

(declare-fun m!760757 () Bool)

(assert (=> b!514694 m!760757))

(declare-fun m!760759 () Bool)

(assert (=> d!184340 m!760759))

(assert (=> d!184340 m!760653))

(declare-fun m!760761 () Bool)

(assert (=> bm!37423 m!760761))

(assert (=> b!514651 d!184340))

(declare-fun d!184342 () Bool)

(declare-fun e!307752 () Bool)

(assert (=> d!184342 e!307752))

(declare-fun res!218270 () Bool)

(assert (=> d!184342 (=> (not res!218270) (not e!307752))))

(declare-fun lt!213255 () ListMap!151)

(assert (=> d!184342 (= res!218270 (not (contains!1065 lt!213255 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!5 (List!4698 K!1362) List!4698)

(assert (=> d!184342 (= lt!213255 (ListMap!152 (removePresrvNoDuplicatedKeys!5 (toList!391 lt!213157) k0!1740)))))

(assert (=> d!184342 (= (-!18 lt!213157 k0!1740) lt!213255)))

(declare-fun b!514703 () Bool)

(declare-datatypes ((List!4700 0))(
  ( (Nil!4690) (Cons!4690 (h!10087 K!1362) (t!73234 List!4700)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!813 (List!4700) (InoxSet K!1362))

(declare-fun keys!1824 (ListMap!151) List!4700)

(assert (=> b!514703 (= e!307752 (= ((_ map and) (content!813 (keys!1824 lt!213157)) ((_ map not) (store ((as const (Array K!1362 Bool)) false) k0!1740 true))) (content!813 (keys!1824 lt!213255))))))

(assert (= (and d!184342 res!218270) b!514703))

(declare-fun m!760763 () Bool)

(assert (=> d!184342 m!760763))

(declare-fun m!760765 () Bool)

(assert (=> d!184342 m!760765))

(declare-fun m!760767 () Bool)

(assert (=> b!514703 m!760767))

(declare-fun m!760769 () Bool)

(assert (=> b!514703 m!760769))

(assert (=> b!514703 m!760767))

(declare-fun m!760771 () Bool)

(assert (=> b!514703 m!760771))

(declare-fun m!760773 () Bool)

(assert (=> b!514703 m!760773))

(assert (=> b!514703 m!760773))

(declare-fun m!760775 () Bool)

(assert (=> b!514703 m!760775))

(assert (=> b!514651 d!184342))

(declare-fun d!184344 () Bool)

(assert (=> d!184344 (= (array_inv!641 (_keys!790 (v!15715 (underlying!1177 (v!15716 (underlying!1178 hm!65)))))) (bvsge (size!3817 (_keys!790 (v!15715 (underlying!1177 (v!15716 (underlying!1178 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!514646 d!184344))

(declare-fun d!184346 () Bool)

(assert (=> d!184346 (= (array_inv!642 (_values!777 (v!15715 (underlying!1177 (v!15716 (underlying!1178 hm!65)))))) (bvsge (size!3816 (_values!777 (v!15715 (underlying!1177 (v!15716 (underlying!1178 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!514646 d!184346))

(declare-fun d!184348 () Bool)

(declare-fun noDuplicatedKeys!9 (List!4698) Bool)

(assert (=> d!184348 (= (invariantList!55 (toList!391 (map!1000 (_2!3052 lt!213159)))) (noDuplicatedKeys!9 (toList!391 (map!1000 (_2!3052 lt!213159)))))))

(declare-fun bs!59441 () Bool)

(assert (= bs!59441 d!184348))

(declare-fun m!760777 () Bool)

(assert (=> bs!59441 m!760777))

(assert (=> b!514650 d!184348))

(declare-fun d!184350 () Bool)

(declare-fun lt!213256 () ListMap!151)

(assert (=> d!184350 (invariantList!55 (toList!391 lt!213256))))

(assert (=> d!184350 (= lt!213256 (extractMap!13 (toList!392 (map!1001 (v!15716 (underlying!1178 (_2!3052 lt!213159)))))))))

(assert (=> d!184350 (valid!455 (_2!3052 lt!213159))))

(assert (=> d!184350 (= (map!1000 (_2!3052 lt!213159)) lt!213256)))

(declare-fun bs!59442 () Bool)

(assert (= bs!59442 d!184350))

(declare-fun m!760779 () Bool)

(assert (=> bs!59442 m!760779))

(assert (=> bs!59442 m!760689))

(declare-fun m!760781 () Bool)

(assert (=> bs!59442 m!760781))

(assert (=> bs!59442 m!760663))

(assert (=> b!514650 d!184350))

(declare-fun tp!160495 () Bool)

(declare-fun b!514708 () Bool)

(declare-fun tp_is_empty!2569 () Bool)

(declare-fun e!307755 () Bool)

(assert (=> b!514708 (= e!307755 (and tp_is_empty!2567 tp_is_empty!2569 tp!160495))))

(assert (=> b!514643 (= tp!160485 e!307755)))

(assert (= (and b!514643 ((_ is Cons!4688) mapDefault!1921)) b!514708))

(declare-fun mapNonEmpty!1924 () Bool)

(declare-fun mapRes!1924 () Bool)

(declare-fun tp!160503 () Bool)

(declare-fun e!307760 () Bool)

(assert (=> mapNonEmpty!1924 (= mapRes!1924 (and tp!160503 e!307760))))

(declare-fun mapKey!1924 () (_ BitVec 32))

(declare-fun mapValue!1924 () List!4698)

(declare-fun mapRest!1924 () (Array (_ BitVec 32) List!4698))

(assert (=> mapNonEmpty!1924 (= mapRest!1921 (store mapRest!1924 mapKey!1924 mapValue!1924))))

(declare-fun b!514716 () Bool)

(declare-fun e!307761 () Bool)

(declare-fun tp!160502 () Bool)

(assert (=> b!514716 (= e!307761 (and tp_is_empty!2567 tp_is_empty!2569 tp!160502))))

(declare-fun mapIsEmpty!1924 () Bool)

(assert (=> mapIsEmpty!1924 mapRes!1924))

(declare-fun b!514715 () Bool)

(declare-fun tp!160504 () Bool)

(assert (=> b!514715 (= e!307760 (and tp_is_empty!2567 tp_is_empty!2569 tp!160504))))

(declare-fun condMapEmpty!1924 () Bool)

(declare-fun mapDefault!1924 () List!4698)

(assert (=> mapNonEmpty!1921 (= condMapEmpty!1924 (= mapRest!1921 ((as const (Array (_ BitVec 32) List!4698)) mapDefault!1924)))))

(assert (=> mapNonEmpty!1921 (= tp!160486 (and e!307761 mapRes!1924))))

(assert (= (and mapNonEmpty!1921 condMapEmpty!1924) mapIsEmpty!1924))

(assert (= (and mapNonEmpty!1921 (not condMapEmpty!1924)) mapNonEmpty!1924))

(assert (= (and mapNonEmpty!1924 ((_ is Cons!4688) mapValue!1924)) b!514715))

(assert (= (and mapNonEmpty!1921 ((_ is Cons!4688) mapDefault!1924)) b!514716))

(declare-fun m!760783 () Bool)

(assert (=> mapNonEmpty!1924 m!760783))

(declare-fun e!307762 () Bool)

(declare-fun tp!160505 () Bool)

(declare-fun b!514717 () Bool)

(assert (=> b!514717 (= e!307762 (and tp_is_empty!2567 tp_is_empty!2569 tp!160505))))

(assert (=> mapNonEmpty!1921 (= tp!160490 e!307762)))

(assert (= (and mapNonEmpty!1921 ((_ is Cons!4688) mapValue!1921)) b!514717))

(declare-fun e!307763 () Bool)

(declare-fun b!514718 () Bool)

(declare-fun tp!160506 () Bool)

(assert (=> b!514718 (= e!307763 (and tp_is_empty!2567 tp_is_empty!2569 tp!160506))))

(assert (=> b!514646 (= tp!160488 e!307763)))

(assert (= (and b!514646 ((_ is Cons!4688) (zeroValue!755 (v!15715 (underlying!1177 (v!15716 (underlying!1178 hm!65))))))) b!514718))

(declare-fun b!514719 () Bool)

(declare-fun e!307764 () Bool)

(declare-fun tp!160507 () Bool)

(assert (=> b!514719 (= e!307764 (and tp_is_empty!2567 tp_is_empty!2569 tp!160507))))

(assert (=> b!514646 (= tp!160491 e!307764)))

(assert (= (and b!514646 ((_ is Cons!4688) (minValue!755 (v!15715 (underlying!1177 (v!15716 (underlying!1178 hm!65))))))) b!514719))

(declare-fun b_lambda!19987 () Bool)

(assert (= b_lambda!19985 (or (and start!46624 b_free!13453) b_lambda!19987)))

(check-sat (not bm!37424) b_and!50887 (not b!514667) (not b!514665) (not d!184332) tp_is_empty!2569 (not b!514715) (not mapNonEmpty!1924) (not b!514690) (not bm!37423) (not b!514659) b_and!50893 (not b!514695) (not b!514697) (not bm!37422) (not b!514718) (not b_lambda!19987) (not d!184342) (not b!514666) (not b!514694) (not d!184336) (not b!514700) (not b_next!13451) (not b!514719) (not b!514708) (not d!184350) tp_is_empty!2567 (not b!514703) (not bm!37425) (not bm!37427) (not b_next!13455) (not b!514696) (not b!514658) (not b_next!13453) (not d!184340) (not b!514716) (not d!184348) (not d!184338) (not b!514717) (not bm!37421) (not bm!37420) b_and!50891 (not bm!37426))
(check-sat b_and!50893 b_and!50887 (not b_next!13451) (not b_next!13455) (not b_next!13453) b_and!50891)
