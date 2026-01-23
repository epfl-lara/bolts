; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416624 () Bool)

(assert start!416624)

(declare-fun b!4326326 () Bool)

(declare-fun b_free!129099 () Bool)

(declare-fun b_next!129803 () Bool)

(assert (=> b!4326326 (= b_free!129099 (not b_next!129803))))

(declare-fun tp!1327790 () Bool)

(declare-fun b_and!340685 () Bool)

(assert (=> b!4326326 (= tp!1327790 b_and!340685)))

(declare-fun b!4326323 () Bool)

(declare-fun b_free!129101 () Bool)

(declare-fun b_next!129805 () Bool)

(assert (=> b!4326323 (= b_free!129101 (not b_next!129805))))

(declare-fun tp!1327795 () Bool)

(declare-fun b_and!340687 () Bool)

(assert (=> b!4326323 (= tp!1327795 b_and!340687)))

(declare-fun bs!607410 () Bool)

(declare-fun b!4326334 () Bool)

(declare-fun b!4326325 () Bool)

(assert (= bs!607410 (and b!4326334 b!4326325)))

(declare-fun lambda!134370 () Int)

(declare-fun lambda!134369 () Int)

(assert (=> bs!607410 (= lambda!134370 lambda!134369)))

(declare-fun b!4326307 () Bool)

(declare-fun res!1772932 () Bool)

(declare-fun e!2691965 () Bool)

(assert (=> b!4326307 (=> (not res!1772932) (not e!2691965))))

(declare-datatypes ((V!9911 0))(
  ( (V!9912 (val!16025 Int)) )
))
(declare-datatypes ((K!9709 0))(
  ( (K!9710 (val!16026 Int)) )
))
(declare-datatypes ((tuple2!47402 0))(
  ( (tuple2!47403 (_1!26989 K!9709) (_2!26989 V!9911)) )
))
(declare-datatypes ((List!48571 0))(
  ( (Nil!48447) (Cons!48447 (h!53915 tuple2!47402) (t!355477 List!48571)) )
))
(declare-datatypes ((array!17380 0))(
  ( (array!17381 (arr!7755 (Array (_ BitVec 32) (_ BitVec 64))) (size!35794 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4701 0))(
  ( (HashableExt!4700 (__x!30380 Int)) )
))
(declare-datatypes ((array!17382 0))(
  ( (array!17383 (arr!7756 (Array (_ BitVec 32) List!48571)) (size!35795 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9570 0))(
  ( (LongMapFixedSize!9571 (defaultEntry!5190 Int) (mask!13440 (_ BitVec 32)) (extraKeys!5050 (_ BitVec 32)) (zeroValue!5062 List!48571) (minValue!5062 List!48571) (_size!9615 (_ BitVec 32)) (_keys!5111 array!17380) (_values!5086 array!17382) (_vacant!4848 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18949 0))(
  ( (Cell!18950 (v!42902 LongMapFixedSize!9570)) )
))
(declare-datatypes ((MutLongMap!4785 0))(
  ( (LongMap!4785 (underlying!9799 Cell!18949)) (MutLongMapExt!4784 (__x!30381 Int)) )
))
(declare-datatypes ((Cell!18951 0))(
  ( (Cell!18952 (v!42903 MutLongMap!4785)) )
))
(declare-datatypes ((MutableMap!4691 0))(
  ( (MutableMapExt!4690 (__x!30382 Int)) (HashMap!4691 (underlying!9800 Cell!18951) (hashF!7007 Hashable!4701) (_size!9616 (_ BitVec 32)) (defaultValue!4862 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4691)

(declare-fun valid!3802 (MutableMap!4691) Bool)

(assert (=> b!4326307 (= res!1772932 (valid!3802 thiss!42308))))

(declare-fun call!300531 () Bool)

(declare-datatypes ((tuple2!47404 0))(
  ( (tuple2!47405 (_1!26990 (_ BitVec 64)) (_2!26990 List!48571)) )
))
(declare-datatypes ((List!48572 0))(
  ( (Nil!48448) (Cons!48448 (h!53916 tuple2!47404) (t!355478 List!48572)) )
))
(declare-datatypes ((ListLongMap!1233 0))(
  ( (ListLongMap!1234 (toList!2616 List!48572)) )
))
(declare-fun lt!1543761 () ListLongMap!1233)

(declare-fun lt!1543754 () ListLongMap!1233)

(declare-fun c!736059 () Bool)

(declare-fun bm!300503 () Bool)

(declare-fun forall!8846 (List!48572 Int) Bool)

(assert (=> bm!300503 (= call!300531 (forall!8846 (ite c!736059 (toList!2616 lt!1543754) (toList!2616 lt!1543761)) (ite c!736059 lambda!134369 lambda!134370)))))

(declare-fun bm!300504 () Bool)

(declare-datatypes ((ListMap!1893 0))(
  ( (ListMap!1894 (toList!2617 List!48571)) )
))
(declare-fun call!300515 () ListMap!1893)

(declare-datatypes ((tuple2!47406 0))(
  ( (tuple2!47407 (_1!26991 Bool) (_2!26991 MutableMap!4691)) )
))
(declare-fun lt!1543724 () tuple2!47406)

(declare-fun map!10490 (MutableMap!4691) ListMap!1893)

(assert (=> bm!300504 (= call!300515 (map!10490 (_2!26991 lt!1543724)))))

(declare-fun bm!300505 () Bool)

(declare-fun call!300522 () ListMap!1893)

(declare-fun call!300514 () ListMap!1893)

(assert (=> bm!300505 (= call!300522 call!300514)))

(declare-fun b!4326308 () Bool)

(declare-fun e!2691957 () Bool)

(declare-fun tp!1327791 () Bool)

(declare-fun mapRes!21315 () Bool)

(assert (=> b!4326308 (= e!2691957 (and tp!1327791 mapRes!21315))))

(declare-fun condMapEmpty!21315 () Bool)

(declare-fun mapDefault!21315 () List!48571)

(assert (=> b!4326308 (= condMapEmpty!21315 (= (arr!7756 (_values!5086 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48571)) mapDefault!21315)))))

(declare-fun b!4326309 () Bool)

(declare-datatypes ((Unit!68040 0))(
  ( (Unit!68041) )
))
(declare-fun e!2691978 () Unit!68040)

(declare-fun Unit!68042 () Unit!68040)

(assert (=> b!4326309 (= e!2691978 Unit!68042)))

(declare-fun bm!300506 () Bool)

(declare-fun call!300510 () Bool)

(declare-fun call!300520 () ListMap!1893)

(declare-fun call!300526 () ListMap!1893)

(declare-fun eq!171 (ListMap!1893 ListMap!1893) Bool)

(assert (=> bm!300506 (= call!300510 (eq!171 call!300520 call!300526))))

(declare-fun b!4326310 () Bool)

(declare-fun e!2691960 () Bool)

(declare-fun e!2691956 () Bool)

(assert (=> b!4326310 (= e!2691960 e!2691956)))

(declare-fun b!4326311 () Bool)

(declare-fun e!2691977 () List!48571)

(declare-fun call!300509 () List!48571)

(assert (=> b!4326311 (= e!2691977 call!300509)))

(declare-fun lt!1543748 () ListMap!1893)

(declare-fun bm!300507 () Bool)

(declare-fun lt!1543745 () ListMap!1893)

(declare-fun lt!1543736 () ListMap!1893)

(declare-fun lt!1543742 () ListMap!1893)

(declare-fun call!300512 () Bool)

(assert (=> bm!300507 (= call!300512 (eq!171 (ite c!736059 lt!1543742 lt!1543745) (ite c!736059 lt!1543736 lt!1543748)))))

(declare-fun b!4326312 () Bool)

(declare-fun res!1772934 () Bool)

(declare-fun e!2691959 () Bool)

(assert (=> b!4326312 (=> (not res!1772934) (not e!2691959))))

(declare-fun lt!1543738 () List!48571)

(declare-fun key!2048 () K!9709)

(declare-fun containsKey!424 (List!48571 K!9709) Bool)

(assert (=> b!4326312 (= res!1772934 (not (containsKey!424 lt!1543738 key!2048)))))

(declare-fun b!4326314 () Bool)

(declare-fun e!2691968 () Bool)

(assert (=> b!4326314 (= e!2691956 e!2691968)))

(declare-fun call!300533 () Bool)

(declare-fun bm!300508 () Bool)

(declare-fun contains!10538 (ListMap!1893 K!9709) Bool)

(assert (=> bm!300508 (= call!300533 (contains!10538 (ite c!736059 lt!1543742 lt!1543748) key!2048))))

(declare-fun bm!300509 () Bool)

(declare-fun call!300525 () (_ BitVec 64))

(declare-fun hash!1245 (Hashable!4701 K!9709) (_ BitVec 64))

(assert (=> bm!300509 (= call!300525 (hash!1245 (hashF!7007 thiss!42308) key!2048))))

(declare-fun b!4326313 () Bool)

(declare-fun lt!1543751 () Unit!68040)

(assert (=> b!4326313 (= e!2691978 lt!1543751)))

(declare-fun lt!1543721 () Unit!68040)

(declare-fun call!300511 () Unit!68040)

(assert (=> b!4326313 (= lt!1543721 call!300511)))

(declare-fun call!300513 () Bool)

(assert (=> b!4326313 call!300513))

(declare-fun call!300534 () Unit!68040)

(assert (=> b!4326313 (= lt!1543751 call!300534)))

(declare-fun call!300529 () Bool)

(assert (=> b!4326313 call!300529))

(declare-fun res!1772925 () Bool)

(assert (=> start!416624 (=> (not res!1772925) (not e!2691965))))

(get-info :version)

(assert (=> start!416624 (= res!1772925 ((_ is HashMap!4691) thiss!42308))))

(assert (=> start!416624 e!2691965))

(declare-fun e!2691976 () Bool)

(assert (=> start!416624 e!2691976))

(declare-fun tp_is_empty!24237 () Bool)

(assert (=> start!416624 tp_is_empty!24237))

(declare-fun tp_is_empty!24239 () Bool)

(assert (=> start!416624 tp_is_empty!24239))

(declare-fun b!4326315 () Bool)

(declare-fun e!2691969 () ListMap!1893)

(declare-fun lt!1543739 () ListMap!1893)

(assert (=> b!4326315 (= e!2691969 lt!1543739)))

(declare-fun b!4326316 () Bool)

(declare-fun lt!1543757 () Cell!18951)

(declare-fun lt!1543728 () Bool)

(declare-datatypes ((tuple2!47408 0))(
  ( (tuple2!47409 (_1!26992 Bool) (_2!26992 MutLongMap!4785)) )
))
(declare-fun lt!1543741 () tuple2!47408)

(declare-fun e!2691955 () tuple2!47406)

(declare-fun lt!1543759 () MutableMap!4691)

(declare-datatypes ((tuple2!47410 0))(
  ( (tuple2!47411 (_1!26993 Unit!68040) (_2!26993 MutableMap!4691)) )
))
(declare-fun Unit!68043 () Unit!68040)

(declare-fun Unit!68044 () Unit!68040)

(assert (=> b!4326316 (= e!2691955 (tuple2!47407 (_1!26992 lt!1543741) (_2!26993 (ite (and (_1!26992 lt!1543741) (not lt!1543728)) (tuple2!47411 Unit!68043 (HashMap!4691 lt!1543757 (hashF!7007 thiss!42308) (bvadd (_size!9616 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4862 thiss!42308))) (tuple2!47411 Unit!68044 lt!1543759)))))))

(declare-fun lt!1543753 () (_ BitVec 64))

(assert (=> b!4326316 (= lt!1543753 call!300525)))

(declare-fun lt!1543750 () List!48571)

(assert (=> b!4326316 (= lt!1543750 call!300509)))

(declare-fun lt!1543756 () tuple2!47402)

(declare-fun v!9179 () V!9911)

(assert (=> b!4326316 (= lt!1543756 (tuple2!47403 key!2048 v!9179))))

(declare-fun call!300516 () List!48571)

(assert (=> b!4326316 (= lt!1543738 call!300516)))

(declare-fun lt!1543752 () List!48571)

(assert (=> b!4326316 (= lt!1543752 (Cons!48447 lt!1543756 lt!1543738))))

(declare-fun call!300518 () tuple2!47408)

(assert (=> b!4326316 (= lt!1543741 call!300518)))

(assert (=> b!4326316 (= lt!1543757 (Cell!18952 (_2!26992 lt!1543741)))))

(assert (=> b!4326316 (= lt!1543759 (HashMap!4691 lt!1543757 (hashF!7007 thiss!42308) (_size!9616 thiss!42308) (defaultValue!4862 thiss!42308)))))

(declare-fun c!736056 () Bool)

(assert (=> b!4326316 (= c!736056 (_1!26992 lt!1543741))))

(declare-fun lt!1543733 () Unit!68040)

(declare-fun e!2691961 () Unit!68040)

(assert (=> b!4326316 (= lt!1543733 e!2691961)))

(declare-fun b!4326317 () Bool)

(declare-fun e!2691964 () Bool)

(assert (=> b!4326317 (= e!2691965 (not e!2691964))))

(declare-fun res!1772924 () Bool)

(assert (=> b!4326317 (=> (not res!1772924) (not e!2691964))))

(assert (=> b!4326317 (= res!1772924 (valid!3802 (_2!26991 lt!1543724)))))

(assert (=> b!4326317 ((_ is HashMap!4691) (_2!26991 lt!1543724))))

(assert (=> b!4326317 (= lt!1543724 e!2691955)))

(assert (=> b!4326317 (= c!736059 lt!1543728)))

(declare-fun contains!10539 (MutableMap!4691 K!9709) Bool)

(assert (=> b!4326317 (= lt!1543728 (contains!10539 thiss!42308 key!2048))))

(declare-fun lt!1543734 () ListLongMap!1233)

(declare-fun map!10491 (MutLongMap!4785) ListLongMap!1233)

(assert (=> b!4326317 (= lt!1543734 (map!10491 (v!42903 (underlying!9800 thiss!42308))))))

(assert (=> b!4326317 (= lt!1543739 (map!10490 thiss!42308))))

(declare-fun b!4326318 () Bool)

(declare-fun e!2691973 () Bool)

(declare-fun call!300523 () Bool)

(assert (=> b!4326318 (= e!2691973 call!300523)))

(declare-fun call!300527 () Bool)

(declare-fun bm!300510 () Bool)

(declare-fun lt!1543730 () MutableMap!4691)

(assert (=> bm!300510 (= call!300527 (valid!3802 (ite c!736059 lt!1543759 lt!1543730)))))

(declare-fun bm!300511 () Bool)

(declare-fun call!300535 () Unit!68040)

(declare-fun lt!1543763 () (_ BitVec 64))

(declare-fun lt!1543735 () List!48571)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!203 (ListLongMap!1233 (_ BitVec 64) List!48571 Hashable!4701) Unit!68040)

(assert (=> bm!300511 (= call!300535 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!203 lt!1543734 (ite c!736059 lt!1543753 lt!1543763) (ite c!736059 lt!1543752 lt!1543735) (hashF!7007 thiss!42308)))))

(declare-fun b!4326319 () Bool)

(declare-fun e!2691958 () Bool)

(assert (=> b!4326319 e!2691958))

(declare-fun res!1772927 () Bool)

(assert (=> b!4326319 (=> (not res!1772927) (not e!2691958))))

(assert (=> b!4326319 (= res!1772927 call!300527)))

(declare-fun Unit!68045 () Unit!68040)

(assert (=> b!4326319 (= e!2691961 Unit!68045)))

(declare-fun b!4326320 () Bool)

(declare-fun e!2691970 () Bool)

(declare-fun call!300524 () Bool)

(assert (=> b!4326320 (= e!2691970 call!300524)))

(declare-fun bm!300512 () Bool)

(declare-fun apply!11184 (MutLongMap!4785 (_ BitVec 64)) List!48571)

(assert (=> bm!300512 (= call!300509 (apply!11184 (v!42903 (underlying!9800 thiss!42308)) (ite c!736059 lt!1543753 lt!1543763)))))

(declare-fun call!300521 () ListLongMap!1233)

(declare-fun bm!300513 () Bool)

(declare-fun +!376 (ListLongMap!1233 tuple2!47404) ListLongMap!1233)

(assert (=> bm!300513 (= call!300521 (+!376 lt!1543734 (ite c!736059 (tuple2!47405 lt!1543753 lt!1543752) (tuple2!47405 lt!1543763 lt!1543735))))))

(declare-fun lt!1543755 () tuple2!47402)

(declare-fun bm!300514 () Bool)

(declare-fun call!300508 () ListMap!1893)

(declare-fun +!377 (ListMap!1893 tuple2!47402) ListMap!1893)

(assert (=> bm!300514 (= call!300508 (+!377 lt!1543739 (ite c!736059 lt!1543756 lt!1543755)))))

(declare-fun call!300530 () Bool)

(declare-fun bm!300515 () Bool)

(assert (=> bm!300515 (= call!300530 (contains!10538 (ite c!736059 lt!1543736 lt!1543745) key!2048))))

(declare-fun mapIsEmpty!21315 () Bool)

(assert (=> mapIsEmpty!21315 mapRes!21315))

(declare-fun b!4326321 () Bool)

(declare-fun e!2691962 () Bool)

(declare-fun lt!1543747 () MutLongMap!4785)

(assert (=> b!4326321 (= e!2691962 (and e!2691960 ((_ is LongMap!4785) lt!1543747)))))

(assert (=> b!4326321 (= lt!1543747 (v!42903 (underlying!9800 thiss!42308)))))

(declare-fun lt!1543746 () List!48571)

(declare-fun bm!300516 () Bool)

(declare-fun removePairForKey!291 (List!48571 K!9709) List!48571)

(assert (=> bm!300516 (= call!300516 (removePairForKey!291 (ite c!736059 lt!1543750 lt!1543746) key!2048))))

(declare-fun call!300537 () ListMap!1893)

(declare-fun bm!300517 () Bool)

(assert (=> bm!300517 (= call!300526 (+!377 call!300537 (ite c!736059 lt!1543756 lt!1543755)))))

(declare-fun b!4326322 () Bool)

(assert (=> b!4326322 (= e!2691964 e!2691970)))

(declare-fun c!736058 () Bool)

(assert (=> b!4326322 (= c!736058 (_1!26991 lt!1543724))))

(assert (=> b!4326323 (= e!2691976 (and e!2691962 tp!1327795))))

(declare-fun lt!1543762 () ListMap!1893)

(declare-fun bm!300518 () Bool)

(assert (=> bm!300518 (= call!300524 (eq!171 (ite c!736058 lt!1543762 call!300515) e!2691969))))

(declare-fun c!736055 () Bool)

(assert (=> bm!300518 (= c!736055 c!736058)))

(declare-fun bm!300519 () Bool)

(declare-fun call!300519 () ListMap!1893)

(assert (=> bm!300519 (= call!300519 call!300514)))

(declare-fun b!4326324 () Bool)

(declare-fun e!2691967 () Bool)

(declare-fun call!300528 () Bool)

(assert (=> b!4326324 (= e!2691967 call!300528)))

(declare-fun bm!300520 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!253 (List!48572 (_ BitVec 64) List!48571 Hashable!4701) Unit!68040)

(assert (=> bm!300520 (= call!300511 (lemmaInLongMapAllKeySameHashThenForTuple!253 (toList!2616 lt!1543734) (ite c!736059 lt!1543753 lt!1543763) (ite c!736059 lt!1543750 lt!1543746) (hashF!7007 thiss!42308)))))

(declare-fun e!2691966 () Bool)

(assert (=> b!4326325 e!2691966))

(declare-fun res!1772930 () Bool)

(assert (=> b!4326325 (=> (not res!1772930) (not e!2691966))))

(declare-fun call!300517 () Bool)

(assert (=> b!4326325 (= res!1772930 call!300517)))

(declare-fun lt!1543743 () ListLongMap!1233)

(declare-fun call!300536 () ListLongMap!1233)

(assert (=> b!4326325 (= lt!1543743 call!300536)))

(assert (=> b!4326325 (= call!300533 call!300530)))

(declare-fun lt!1543725 () Unit!68040)

(declare-fun call!300532 () Unit!68040)

(assert (=> b!4326325 (= lt!1543725 call!300532)))

(assert (=> b!4326325 (= lt!1543736 call!300508)))

(assert (=> b!4326325 (= lt!1543742 call!300519)))

(assert (=> b!4326325 call!300510))

(declare-fun lt!1543732 () Unit!68040)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!73 (ListLongMap!1233 (_ BitVec 64) List!48571 K!9709 V!9911 Hashable!4701) Unit!68040)

(assert (=> b!4326325 (= lt!1543732 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!73 lt!1543734 lt!1543753 lt!1543752 key!2048 v!9179 (hashF!7007 thiss!42308)))))

(declare-fun e!2691974 () Bool)

(assert (=> b!4326325 e!2691974))

(declare-fun res!1772929 () Bool)

(assert (=> b!4326325 (=> (not res!1772929) (not e!2691974))))

(assert (=> b!4326325 (= res!1772929 call!300531)))

(assert (=> b!4326325 (= lt!1543754 call!300521)))

(declare-fun lt!1543729 () Unit!68040)

(assert (=> b!4326325 (= lt!1543729 call!300535)))

(assert (=> b!4326325 e!2691959))

(declare-fun res!1772931 () Bool)

(assert (=> b!4326325 (=> (not res!1772931) (not e!2691959))))

(declare-fun noDuplicateKeys!273 (List!48571) Bool)

(assert (=> b!4326325 (= res!1772931 (noDuplicateKeys!273 lt!1543738))))

(declare-fun lt!1543723 () Unit!68040)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!201 (List!48571 K!9709) Unit!68040)

(assert (=> b!4326325 (= lt!1543723 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!201 lt!1543750 key!2048))))

(assert (=> b!4326325 call!300513))

(declare-fun lt!1543758 () Unit!68040)

(assert (=> b!4326325 (= lt!1543758 call!300534)))

(assert (=> b!4326325 call!300529))

(declare-fun lt!1543726 () Unit!68040)

(assert (=> b!4326325 (= lt!1543726 call!300511)))

(declare-fun Unit!68046 () Unit!68040)

(assert (=> b!4326325 (= e!2691961 Unit!68046)))

(declare-fun tp!1327792 () Bool)

(declare-fun tp!1327793 () Bool)

(declare-fun array_inv!5587 (array!17380) Bool)

(declare-fun array_inv!5588 (array!17382) Bool)

(assert (=> b!4326326 (= e!2691968 (and tp!1327790 tp!1327793 tp!1327792 (array_inv!5587 (_keys!5111 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308)))))) (array_inv!5588 (_values!5086 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308)))))) e!2691957))))

(declare-fun b!4326327 () Bool)

(declare-fun e!2691971 () Bool)

(assert (=> b!4326327 e!2691971))

(declare-fun res!1772926 () Bool)

(assert (=> b!4326327 (=> (not res!1772926) (not e!2691971))))

(assert (=> b!4326327 (= res!1772926 call!300527)))

(declare-fun e!2691963 () Unit!68040)

(declare-fun Unit!68047 () Unit!68040)

(assert (=> b!4326327 (= e!2691963 Unit!68047)))

(declare-fun bm!300521 () Bool)

(declare-fun allKeysSameHashInMap!413 (ListLongMap!1233 Hashable!4701) Bool)

(assert (=> bm!300521 (= call!300528 (allKeysSameHashInMap!413 (ite c!736059 lt!1543754 lt!1543761) (hashF!7007 thiss!42308)))))

(declare-fun b!4326328 () Bool)

(assert (=> b!4326328 (= e!2691969 (+!377 lt!1543739 (tuple2!47403 key!2048 v!9179)))))

(declare-fun bm!300522 () Bool)

(declare-fun update!564 (MutLongMap!4785 (_ BitVec 64) List!48571) tuple2!47408)

(assert (=> bm!300522 (= call!300518 (update!564 (v!42903 (underlying!9800 thiss!42308)) (ite c!736059 lt!1543753 lt!1543763) (ite c!736059 lt!1543752 lt!1543735)))))

(declare-fun bm!300523 () Bool)

(declare-fun lemmaEquivalentThenSameContains!74 (ListMap!1893 ListMap!1893 K!9709) Unit!68040)

(assert (=> bm!300523 (= call!300532 (lemmaEquivalentThenSameContains!74 (ite c!736059 lt!1543742 lt!1543745) (ite c!736059 lt!1543736 lt!1543748) key!2048))))

(declare-fun b!4326329 () Bool)

(declare-fun e!2691975 () Bool)

(assert (=> b!4326329 (= e!2691975 call!300524)))

(declare-fun b!4326330 () Bool)

(assert (=> b!4326330 (= e!2691974 call!300528)))

(declare-fun b!4326331 () Bool)

(assert (=> b!4326331 (= e!2691966 call!300512)))

(declare-fun b!4326332 () Bool)

(assert (=> b!4326332 (= e!2691959 (noDuplicateKeys!273 lt!1543752))))

(declare-fun lt!1543737 () tuple2!47408)

(declare-fun bm!300524 () Bool)

(assert (=> bm!300524 (= call!300536 (map!10491 (ite c!736059 (_2!26992 lt!1543741) (_2!26992 lt!1543737))))))

(declare-fun bm!300525 () Bool)

(declare-fun extractMap!392 (List!48572) ListMap!1893)

(assert (=> bm!300525 (= call!300537 (extractMap!392 (toList!2616 lt!1543734)))))

(declare-fun bm!300526 () Bool)

(declare-fun allKeysSameHash!269 (List!48571 (_ BitVec 64) Hashable!4701) Bool)

(assert (=> bm!300526 (= call!300513 (allKeysSameHash!269 (ite c!736059 lt!1543738 lt!1543746) (ite c!736059 lt!1543753 lt!1543763) (hashF!7007 thiss!42308)))))

(declare-fun bm!300527 () Bool)

(declare-fun lt!1543722 () ListLongMap!1233)

(assert (=> bm!300527 (= call!300517 (forall!8846 (ite c!736059 (toList!2616 lt!1543743) (toList!2616 lt!1543722)) (ite c!736059 lambda!134369 lambda!134370)))))

(declare-fun bm!300528 () Bool)

(assert (=> bm!300528 (= call!300520 (extractMap!392 (ite c!736059 (toList!2616 lt!1543754) (toList!2616 lt!1543722))))))

(declare-fun bm!300529 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!246 (List!48571 K!9709 (_ BitVec 64) Hashable!4701) Unit!68040)

(assert (=> bm!300529 (= call!300534 (lemmaRemovePairForKeyPreservesHash!246 (ite c!736059 lt!1543750 lt!1543746) key!2048 (ite c!736059 lt!1543753 lt!1543763) (hashF!7007 thiss!42308)))))

(declare-fun mapNonEmpty!21315 () Bool)

(declare-fun tp!1327789 () Bool)

(declare-fun tp!1327794 () Bool)

(assert (=> mapNonEmpty!21315 (= mapRes!21315 (and tp!1327789 tp!1327794))))

(declare-fun mapKey!21315 () (_ BitVec 32))

(declare-fun mapValue!21315 () List!48571)

(declare-fun mapRest!21315 () (Array (_ BitVec 32) List!48571))

(assert (=> mapNonEmpty!21315 (= (arr!7756 (_values!5086 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308)))))) (store mapRest!21315 mapKey!21315 mapValue!21315))))

(declare-fun lt!1543720 () Cell!18951)

(declare-fun b!4326333 () Bool)

(declare-fun Unit!68048 () Unit!68040)

(declare-fun Unit!68049 () Unit!68040)

(assert (=> b!4326333 (= e!2691955 (tuple2!47407 (_1!26992 lt!1543737) (_2!26993 (ite (and (_1!26992 lt!1543737) (not lt!1543728)) (tuple2!47411 Unit!68048 (HashMap!4691 lt!1543720 (hashF!7007 thiss!42308) (bvadd (_size!9616 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4862 thiss!42308))) (tuple2!47411 Unit!68049 lt!1543730)))))))

(assert (=> b!4326333 (= lt!1543763 call!300525)))

(declare-fun c!736060 () Bool)

(declare-fun contains!10540 (MutLongMap!4785 (_ BitVec 64)) Bool)

(assert (=> b!4326333 (= c!736060 (contains!10540 (v!42903 (underlying!9800 thiss!42308)) lt!1543763))))

(assert (=> b!4326333 (= lt!1543746 e!2691977)))

(assert (=> b!4326333 (= lt!1543755 (tuple2!47403 key!2048 v!9179))))

(assert (=> b!4326333 (= lt!1543735 (Cons!48447 lt!1543755 lt!1543746))))

(assert (=> b!4326333 (= lt!1543737 call!300518)))

(assert (=> b!4326333 (= lt!1543720 (Cell!18952 (_2!26992 lt!1543737)))))

(assert (=> b!4326333 (= lt!1543730 (HashMap!4691 lt!1543720 (hashF!7007 thiss!42308) (_size!9616 thiss!42308) (defaultValue!4862 thiss!42308)))))

(declare-fun c!736061 () Bool)

(assert (=> b!4326333 (= c!736061 (_1!26992 lt!1543737))))

(declare-fun lt!1543727 () Unit!68040)

(assert (=> b!4326333 (= lt!1543727 e!2691963)))

(declare-fun lt!1543749 () Bool)

(declare-fun lt!1543760 () Bool)

(assert (=> b!4326334 (and (= lt!1543749 lt!1543760) lt!1543760 lt!1543749)))

(assert (=> b!4326334 (= lt!1543760 call!300533)))

(assert (=> b!4326334 (= lt!1543749 call!300530)))

(declare-fun lt!1543744 () Unit!68040)

(assert (=> b!4326334 (= lt!1543744 call!300532)))

(assert (=> b!4326334 call!300512))

(assert (=> b!4326334 (= lt!1543748 call!300508)))

(assert (=> b!4326334 (= lt!1543745 call!300522)))

(assert (=> b!4326334 e!2691967))

(declare-fun res!1772933 () Bool)

(assert (=> b!4326334 (=> (not res!1772933) (not e!2691967))))

(assert (=> b!4326334 (= res!1772933 call!300531)))

(assert (=> b!4326334 (= lt!1543761 call!300536)))

(assert (=> b!4326334 call!300510))

(declare-fun lt!1543731 () Unit!68040)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!75 (ListLongMap!1233 (_ BitVec 64) List!48571 K!9709 V!9911 Hashable!4701) Unit!68040)

(assert (=> b!4326334 (= lt!1543731 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!75 lt!1543734 lt!1543763 lt!1543735 key!2048 v!9179 (hashF!7007 thiss!42308)))))

(assert (=> b!4326334 e!2691973))

(declare-fun res!1772935 () Bool)

(assert (=> b!4326334 (=> (not res!1772935) (not e!2691973))))

(assert (=> b!4326334 (= res!1772935 call!300517)))

(assert (=> b!4326334 (= lt!1543722 call!300521)))

(declare-fun lt!1543719 () Unit!68040)

(assert (=> b!4326334 (= lt!1543719 call!300535)))

(declare-fun lt!1543740 () Unit!68040)

(assert (=> b!4326334 (= lt!1543740 e!2691978)))

(declare-fun c!736057 () Bool)

(declare-fun isEmpty!28147 (List!48571) Bool)

(assert (=> b!4326334 (= c!736057 (not (isEmpty!28147 lt!1543746)))))

(declare-fun Unit!68050 () Unit!68040)

(assert (=> b!4326334 (= e!2691963 Unit!68050)))

(declare-fun b!4326335 () Bool)

(assert (=> b!4326335 (= e!2691970 e!2691975)))

(assert (=> b!4326335 (= lt!1543762 call!300515)))

(declare-fun res!1772936 () Bool)

(assert (=> b!4326335 (= res!1772936 (contains!10538 lt!1543762 key!2048))))

(assert (=> b!4326335 (=> (not res!1772936) (not e!2691975))))

(declare-fun b!4326336 () Bool)

(declare-fun res!1772928 () Bool)

(assert (=> b!4326336 (=> (not res!1772928) (not e!2691966))))

(assert (=> b!4326336 (= res!1772928 call!300523)))

(declare-fun bm!300530 () Bool)

(assert (=> bm!300530 (= call!300523 (allKeysSameHashInMap!413 (ite c!736059 lt!1543743 lt!1543722) (hashF!7007 thiss!42308)))))

(declare-fun b!4326337 () Bool)

(assert (=> b!4326337 (= e!2691977 Nil!48447)))

(declare-fun b!4326338 () Bool)

(assert (=> b!4326338 (= e!2691971 (= call!300522 lt!1543739))))

(declare-fun bm!300531 () Bool)

(assert (=> bm!300531 (= call!300529 (allKeysSameHash!269 (ite c!736059 lt!1543750 call!300516) (ite c!736059 lt!1543753 lt!1543763) (hashF!7007 thiss!42308)))))

(declare-fun b!4326339 () Bool)

(assert (=> b!4326339 (= e!2691958 (= call!300519 lt!1543739))))

(declare-fun bm!300532 () Bool)

(assert (=> bm!300532 (= call!300514 (map!10490 (ite c!736059 lt!1543759 lt!1543730)))))

(assert (= (and start!416624 res!1772925) b!4326307))

(assert (= (and b!4326307 res!1772932) b!4326317))

(assert (= (and b!4326317 c!736059) b!4326316))

(assert (= (and b!4326317 (not c!736059)) b!4326333))

(assert (= (and b!4326316 c!736056) b!4326325))

(assert (= (and b!4326316 (not c!736056)) b!4326319))

(assert (= (and b!4326325 res!1772931) b!4326312))

(assert (= (and b!4326312 res!1772934) b!4326332))

(assert (= (and b!4326325 res!1772929) b!4326330))

(assert (= (and b!4326325 res!1772930) b!4326336))

(assert (= (and b!4326336 res!1772928) b!4326331))

(assert (= (and b!4326319 res!1772927) b!4326339))

(assert (= (or b!4326325 b!4326339) bm!300519))

(assert (= (and b!4326333 c!736060) b!4326311))

(assert (= (and b!4326333 (not c!736060)) b!4326337))

(assert (= (and b!4326333 c!736061) b!4326334))

(assert (= (and b!4326333 (not c!736061)) b!4326327))

(assert (= (and b!4326334 c!736057) b!4326313))

(assert (= (and b!4326334 (not c!736057)) b!4326309))

(assert (= (and b!4326334 res!1772935) b!4326318))

(assert (= (and b!4326334 res!1772933) b!4326324))

(assert (= (and b!4326327 res!1772926) b!4326338))

(assert (= (or b!4326334 b!4326338) bm!300505))

(assert (= (or b!4326325 b!4326334) bm!300524))

(assert (= (or b!4326325 b!4326334) bm!300514))

(assert (= (or b!4326325 b!4326313) bm!300526))

(assert (= (or b!4326336 b!4326318) bm!300530))

(assert (= (or b!4326325 b!4326334) bm!300503))

(assert (= (or b!4326325 b!4326334) bm!300515))

(assert (= (or b!4326325 b!4326313) bm!300520))

(assert (= (or b!4326319 b!4326327) bm!300510))

(assert (= (or b!4326330 b!4326324) bm!300521))

(assert (= (or b!4326325 b!4326334) bm!300508))

(assert (= (or b!4326325 b!4326334) bm!300511))

(assert (= (or b!4326316 b!4326333) bm!300522))

(assert (= (or b!4326331 b!4326334) bm!300507))

(assert (= (or b!4326325 b!4326334) bm!300528))

(assert (= (or b!4326325 b!4326334) bm!300525))

(assert (= (or b!4326325 b!4326334) bm!300527))

(assert (= (or b!4326325 b!4326334) bm!300523))

(assert (= (or b!4326325 b!4326334) bm!300513))

(assert (= (or b!4326316 b!4326313) bm!300516))

(assert (= (or bm!300519 bm!300505) bm!300532))

(assert (= (or b!4326316 b!4326333) bm!300509))

(assert (= (or b!4326316 b!4326311) bm!300512))

(assert (= (or b!4326325 b!4326313) bm!300529))

(assert (= (or b!4326325 b!4326313) bm!300531))

(assert (= (or b!4326325 b!4326334) bm!300517))

(assert (= (or b!4326325 b!4326334) bm!300506))

(assert (= (and b!4326317 res!1772924) b!4326322))

(assert (= (and b!4326322 c!736058) b!4326335))

(assert (= (and b!4326322 (not c!736058)) b!4326320))

(assert (= (and b!4326335 res!1772936) b!4326329))

(assert (= (or b!4326335 b!4326320) bm!300504))

(assert (= (or b!4326329 b!4326320) bm!300518))

(assert (= (and bm!300518 c!736055) b!4326328))

(assert (= (and bm!300518 (not c!736055)) b!4326315))

(assert (= (and b!4326308 condMapEmpty!21315) mapIsEmpty!21315))

(assert (= (and b!4326308 (not condMapEmpty!21315)) mapNonEmpty!21315))

(assert (= b!4326326 b!4326308))

(assert (= b!4326314 b!4326326))

(assert (= b!4326310 b!4326314))

(assert (= (and b!4326321 ((_ is LongMap!4785) (v!42903 (underlying!9800 thiss!42308)))) b!4326310))

(assert (= b!4326323 b!4326321))

(assert (= (and start!416624 ((_ is HashMap!4691) thiss!42308)) b!4326323))

(declare-fun m!4921275 () Bool)

(assert (=> bm!300521 m!4921275))

(declare-fun m!4921277 () Bool)

(assert (=> bm!300511 m!4921277))

(declare-fun m!4921279 () Bool)

(assert (=> bm!300530 m!4921279))

(declare-fun m!4921281 () Bool)

(assert (=> bm!300510 m!4921281))

(declare-fun m!4921283 () Bool)

(assert (=> bm!300529 m!4921283))

(declare-fun m!4921285 () Bool)

(assert (=> bm!300528 m!4921285))

(declare-fun m!4921287 () Bool)

(assert (=> bm!300531 m!4921287))

(declare-fun m!4921289 () Bool)

(assert (=> bm!300524 m!4921289))

(declare-fun m!4921291 () Bool)

(assert (=> b!4326335 m!4921291))

(declare-fun m!4921293 () Bool)

(assert (=> b!4326312 m!4921293))

(declare-fun m!4921295 () Bool)

(assert (=> b!4326332 m!4921295))

(declare-fun m!4921297 () Bool)

(assert (=> bm!300515 m!4921297))

(declare-fun m!4921299 () Bool)

(assert (=> b!4326334 m!4921299))

(declare-fun m!4921301 () Bool)

(assert (=> b!4326334 m!4921301))

(declare-fun m!4921303 () Bool)

(assert (=> bm!300504 m!4921303))

(declare-fun m!4921305 () Bool)

(assert (=> bm!300508 m!4921305))

(declare-fun m!4921307 () Bool)

(assert (=> bm!300523 m!4921307))

(declare-fun m!4921309 () Bool)

(assert (=> bm!300527 m!4921309))

(declare-fun m!4921311 () Bool)

(assert (=> bm!300503 m!4921311))

(declare-fun m!4921313 () Bool)

(assert (=> bm!300522 m!4921313))

(declare-fun m!4921315 () Bool)

(assert (=> b!4326325 m!4921315))

(declare-fun m!4921317 () Bool)

(assert (=> b!4326325 m!4921317))

(declare-fun m!4921319 () Bool)

(assert (=> b!4326325 m!4921319))

(declare-fun m!4921321 () Bool)

(assert (=> b!4326307 m!4921321))

(declare-fun m!4921323 () Bool)

(assert (=> bm!300526 m!4921323))

(declare-fun m!4921325 () Bool)

(assert (=> bm!300513 m!4921325))

(declare-fun m!4921327 () Bool)

(assert (=> bm!300518 m!4921327))

(declare-fun m!4921329 () Bool)

(assert (=> bm!300514 m!4921329))

(declare-fun m!4921331 () Bool)

(assert (=> b!4326328 m!4921331))

(declare-fun m!4921333 () Bool)

(assert (=> bm!300517 m!4921333))

(declare-fun m!4921335 () Bool)

(assert (=> bm!300506 m!4921335))

(declare-fun m!4921337 () Bool)

(assert (=> bm!300512 m!4921337))

(declare-fun m!4921339 () Bool)

(assert (=> b!4326326 m!4921339))

(declare-fun m!4921341 () Bool)

(assert (=> b!4326326 m!4921341))

(declare-fun m!4921343 () Bool)

(assert (=> bm!300525 m!4921343))

(declare-fun m!4921345 () Bool)

(assert (=> b!4326317 m!4921345))

(declare-fun m!4921347 () Bool)

(assert (=> b!4326317 m!4921347))

(declare-fun m!4921349 () Bool)

(assert (=> b!4326317 m!4921349))

(declare-fun m!4921351 () Bool)

(assert (=> b!4326317 m!4921351))

(declare-fun m!4921353 () Bool)

(assert (=> bm!300520 m!4921353))

(declare-fun m!4921355 () Bool)

(assert (=> b!4326333 m!4921355))

(declare-fun m!4921357 () Bool)

(assert (=> bm!300516 m!4921357))

(declare-fun m!4921359 () Bool)

(assert (=> bm!300509 m!4921359))

(declare-fun m!4921361 () Bool)

(assert (=> bm!300532 m!4921361))

(declare-fun m!4921363 () Bool)

(assert (=> mapNonEmpty!21315 m!4921363))

(declare-fun m!4921365 () Bool)

(assert (=> bm!300507 m!4921365))

(check-sat (not bm!300516) (not b!4326334) (not bm!300520) tp_is_empty!24239 (not bm!300515) (not bm!300511) (not bm!300530) (not b!4326325) (not bm!300510) (not bm!300526) (not b!4326328) (not b!4326307) (not bm!300528) (not b!4326308) (not bm!300529) (not b!4326333) (not b!4326335) (not bm!300531) (not bm!300513) (not bm!300507) (not bm!300527) b_and!340687 (not bm!300512) (not bm!300522) (not bm!300509) (not bm!300518) (not b!4326312) (not bm!300506) (not b!4326332) (not bm!300521) (not bm!300508) (not bm!300523) (not bm!300517) (not bm!300514) (not bm!300525) b_and!340685 (not bm!300532) (not mapNonEmpty!21315) (not b_next!129803) (not b_next!129805) (not bm!300524) (not b!4326317) (not bm!300503) (not b!4326326) (not bm!300504) tp_is_empty!24237)
(check-sat b_and!340685 b_and!340687 (not b_next!129805) (not b_next!129803))
(get-model)

(declare-fun bs!607411 () Bool)

(declare-fun d!1271865 () Bool)

(assert (= bs!607411 (and d!1271865 b!4326325)))

(declare-fun lambda!134373 () Int)

(assert (=> bs!607411 (not (= lambda!134373 lambda!134369))))

(declare-fun bs!607412 () Bool)

(assert (= bs!607412 (and d!1271865 b!4326334)))

(assert (=> bs!607412 (not (= lambda!134373 lambda!134370))))

(assert (=> d!1271865 true))

(assert (=> d!1271865 (= (allKeysSameHashInMap!413 (ite c!736059 lt!1543754 lt!1543761) (hashF!7007 thiss!42308)) (forall!8846 (toList!2616 (ite c!736059 lt!1543754 lt!1543761)) lambda!134373))))

(declare-fun bs!607413 () Bool)

(assert (= bs!607413 d!1271865))

(declare-fun m!4921367 () Bool)

(assert (=> bs!607413 m!4921367))

(assert (=> bm!300521 d!1271865))

(declare-fun d!1271867 () Bool)

(declare-fun e!2691981 () Bool)

(assert (=> d!1271867 e!2691981))

(declare-fun res!1772941 () Bool)

(assert (=> d!1271867 (=> (not res!1772941) (not e!2691981))))

(declare-fun lt!1543772 () ListMap!1893)

(assert (=> d!1271867 (= res!1772941 (contains!10538 lt!1543772 (_1!26989 (tuple2!47403 key!2048 v!9179))))))

(declare-fun lt!1543775 () List!48571)

(assert (=> d!1271867 (= lt!1543772 (ListMap!1894 lt!1543775))))

(declare-fun lt!1543774 () Unit!68040)

(declare-fun lt!1543773 () Unit!68040)

(assert (=> d!1271867 (= lt!1543774 lt!1543773)))

(declare-datatypes ((Option!10328 0))(
  ( (None!10327) (Some!10327 (v!42908 V!9911)) )
))
(declare-fun getValueByKey!315 (List!48571 K!9709) Option!10328)

(assert (=> d!1271867 (= (getValueByKey!315 lt!1543775 (_1!26989 (tuple2!47403 key!2048 v!9179))) (Some!10327 (_2!26989 (tuple2!47403 key!2048 v!9179))))))

(declare-fun lemmaContainsTupThenGetReturnValue!108 (List!48571 K!9709 V!9911) Unit!68040)

(assert (=> d!1271867 (= lt!1543773 (lemmaContainsTupThenGetReturnValue!108 lt!1543775 (_1!26989 (tuple2!47403 key!2048 v!9179)) (_2!26989 (tuple2!47403 key!2048 v!9179))))))

(declare-fun insertNoDuplicatedKeys!53 (List!48571 K!9709 V!9911) List!48571)

(assert (=> d!1271867 (= lt!1543775 (insertNoDuplicatedKeys!53 (toList!2617 lt!1543739) (_1!26989 (tuple2!47403 key!2048 v!9179)) (_2!26989 (tuple2!47403 key!2048 v!9179))))))

(assert (=> d!1271867 (= (+!377 lt!1543739 (tuple2!47403 key!2048 v!9179)) lt!1543772)))

(declare-fun b!4326346 () Bool)

(declare-fun res!1772942 () Bool)

(assert (=> b!4326346 (=> (not res!1772942) (not e!2691981))))

(assert (=> b!4326346 (= res!1772942 (= (getValueByKey!315 (toList!2617 lt!1543772) (_1!26989 (tuple2!47403 key!2048 v!9179))) (Some!10327 (_2!26989 (tuple2!47403 key!2048 v!9179)))))))

(declare-fun b!4326347 () Bool)

(declare-fun contains!10541 (List!48571 tuple2!47402) Bool)

(assert (=> b!4326347 (= e!2691981 (contains!10541 (toList!2617 lt!1543772) (tuple2!47403 key!2048 v!9179)))))

(assert (= (and d!1271867 res!1772941) b!4326346))

(assert (= (and b!4326346 res!1772942) b!4326347))

(declare-fun m!4921369 () Bool)

(assert (=> d!1271867 m!4921369))

(declare-fun m!4921371 () Bool)

(assert (=> d!1271867 m!4921371))

(declare-fun m!4921373 () Bool)

(assert (=> d!1271867 m!4921373))

(declare-fun m!4921375 () Bool)

(assert (=> d!1271867 m!4921375))

(declare-fun m!4921377 () Bool)

(assert (=> b!4326346 m!4921377))

(declare-fun m!4921379 () Bool)

(assert (=> b!4326347 m!4921379))

(assert (=> b!4326328 d!1271867))

(declare-fun bs!607414 () Bool)

(declare-fun d!1271869 () Bool)

(assert (= bs!607414 (and d!1271869 b!4326325)))

(declare-fun lambda!134378 () Int)

(assert (=> bs!607414 (= lambda!134378 lambda!134369)))

(declare-fun bs!607415 () Bool)

(assert (= bs!607415 (and d!1271869 b!4326334)))

(assert (=> bs!607415 (= lambda!134378 lambda!134370)))

(declare-fun bs!607416 () Bool)

(assert (= bs!607416 (and d!1271869 d!1271865)))

(assert (=> bs!607416 (not (= lambda!134378 lambda!134373))))

(declare-fun e!2691984 () Bool)

(assert (=> d!1271869 e!2691984))

(declare-fun res!1772945 () Bool)

(assert (=> d!1271869 (=> (not res!1772945) (not e!2691984))))

(declare-fun lt!1543781 () ListLongMap!1233)

(assert (=> d!1271869 (= res!1772945 (forall!8846 (toList!2616 lt!1543781) lambda!134378))))

(assert (=> d!1271869 (= lt!1543781 (+!376 lt!1543734 (tuple2!47405 (ite c!736059 lt!1543753 lt!1543763) (ite c!736059 lt!1543752 lt!1543735))))))

(declare-fun lt!1543780 () Unit!68040)

(declare-fun choose!26453 (ListLongMap!1233 (_ BitVec 64) List!48571 Hashable!4701) Unit!68040)

(assert (=> d!1271869 (= lt!1543780 (choose!26453 lt!1543734 (ite c!736059 lt!1543753 lt!1543763) (ite c!736059 lt!1543752 lt!1543735) (hashF!7007 thiss!42308)))))

(assert (=> d!1271869 (forall!8846 (toList!2616 lt!1543734) lambda!134378)))

(assert (=> d!1271869 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!203 lt!1543734 (ite c!736059 lt!1543753 lt!1543763) (ite c!736059 lt!1543752 lt!1543735) (hashF!7007 thiss!42308)) lt!1543780)))

(declare-fun b!4326350 () Bool)

(assert (=> b!4326350 (= e!2691984 (allKeysSameHashInMap!413 lt!1543781 (hashF!7007 thiss!42308)))))

(assert (= (and d!1271869 res!1772945) b!4326350))

(declare-fun m!4921381 () Bool)

(assert (=> d!1271869 m!4921381))

(declare-fun m!4921383 () Bool)

(assert (=> d!1271869 m!4921383))

(declare-fun m!4921385 () Bool)

(assert (=> d!1271869 m!4921385))

(declare-fun m!4921387 () Bool)

(assert (=> d!1271869 m!4921387))

(declare-fun m!4921389 () Bool)

(assert (=> b!4326350 m!4921389))

(assert (=> bm!300511 d!1271869))

(declare-fun bs!607417 () Bool)

(declare-fun b!4326355 () Bool)

(assert (= bs!607417 (and b!4326355 b!4326325)))

(declare-fun lambda!134381 () Int)

(assert (=> bs!607417 (= lambda!134381 lambda!134369)))

(declare-fun bs!607418 () Bool)

(assert (= bs!607418 (and b!4326355 b!4326334)))

(assert (=> bs!607418 (= lambda!134381 lambda!134370)))

(declare-fun bs!607419 () Bool)

(assert (= bs!607419 (and b!4326355 d!1271865)))

(assert (=> bs!607419 (not (= lambda!134381 lambda!134373))))

(declare-fun bs!607420 () Bool)

(assert (= bs!607420 (and b!4326355 d!1271869)))

(assert (=> bs!607420 (= lambda!134381 lambda!134378)))

(declare-fun d!1271871 () Bool)

(declare-fun res!1772950 () Bool)

(declare-fun e!2691987 () Bool)

(assert (=> d!1271871 (=> (not res!1772950) (not e!2691987))))

(declare-fun valid!3803 (MutLongMap!4785) Bool)

(assert (=> d!1271871 (= res!1772950 (valid!3803 (v!42903 (underlying!9800 (ite c!736059 lt!1543759 lt!1543730)))))))

(assert (=> d!1271871 (= (valid!3802 (ite c!736059 lt!1543759 lt!1543730)) e!2691987)))

(declare-fun res!1772951 () Bool)

(assert (=> b!4326355 (=> (not res!1772951) (not e!2691987))))

(assert (=> b!4326355 (= res!1772951 (forall!8846 (toList!2616 (map!10491 (v!42903 (underlying!9800 (ite c!736059 lt!1543759 lt!1543730))))) lambda!134381))))

(declare-fun b!4326356 () Bool)

(assert (=> b!4326356 (= e!2691987 (allKeysSameHashInMap!413 (map!10491 (v!42903 (underlying!9800 (ite c!736059 lt!1543759 lt!1543730)))) (hashF!7007 (ite c!736059 lt!1543759 lt!1543730))))))

(assert (= (and d!1271871 res!1772950) b!4326355))

(assert (= (and b!4326355 res!1772951) b!4326356))

(declare-fun m!4921391 () Bool)

(assert (=> d!1271871 m!4921391))

(declare-fun m!4921393 () Bool)

(assert (=> b!4326355 m!4921393))

(declare-fun m!4921395 () Bool)

(assert (=> b!4326355 m!4921395))

(assert (=> b!4326356 m!4921393))

(assert (=> b!4326356 m!4921393))

(declare-fun m!4921397 () Bool)

(assert (=> b!4326356 m!4921397))

(assert (=> bm!300510 d!1271871))

(declare-fun d!1271873 () Bool)

(assert (=> d!1271873 true))

(assert (=> d!1271873 true))

(declare-fun lambda!134384 () Int)

(declare-fun forall!8847 (List!48571 Int) Bool)

(assert (=> d!1271873 (= (allKeysSameHash!269 (ite c!736059 lt!1543750 call!300516) (ite c!736059 lt!1543753 lt!1543763) (hashF!7007 thiss!42308)) (forall!8847 (ite c!736059 lt!1543750 call!300516) lambda!134384))))

(declare-fun bs!607421 () Bool)

(assert (= bs!607421 d!1271873))

(declare-fun m!4921399 () Bool)

(assert (=> bs!607421 m!4921399))

(assert (=> bm!300531 d!1271873))

(declare-fun bs!607422 () Bool)

(declare-fun d!1271875 () Bool)

(assert (= bs!607422 (and d!1271875 d!1271865)))

(declare-fun lambda!134387 () Int)

(assert (=> bs!607422 (not (= lambda!134387 lambda!134373))))

(declare-fun bs!607423 () Bool)

(assert (= bs!607423 (and d!1271875 b!4326355)))

(assert (=> bs!607423 (= lambda!134387 lambda!134381)))

(declare-fun bs!607424 () Bool)

(assert (= bs!607424 (and d!1271875 d!1271869)))

(assert (=> bs!607424 (= lambda!134387 lambda!134378)))

(declare-fun bs!607425 () Bool)

(assert (= bs!607425 (and d!1271875 b!4326325)))

(assert (=> bs!607425 (= lambda!134387 lambda!134369)))

(declare-fun bs!607426 () Bool)

(assert (= bs!607426 (and d!1271875 b!4326334)))

(assert (=> bs!607426 (= lambda!134387 lambda!134370)))

(assert (=> d!1271875 (eq!171 (extractMap!392 (toList!2616 (+!376 lt!1543734 (tuple2!47405 lt!1543753 lt!1543752)))) (+!377 (extractMap!392 (toList!2616 lt!1543734)) (tuple2!47403 key!2048 v!9179)))))

(declare-fun lt!1543784 () Unit!68040)

(declare-fun choose!26454 (ListLongMap!1233 (_ BitVec 64) List!48571 K!9709 V!9911 Hashable!4701) Unit!68040)

(assert (=> d!1271875 (= lt!1543784 (choose!26454 lt!1543734 lt!1543753 lt!1543752 key!2048 v!9179 (hashF!7007 thiss!42308)))))

(assert (=> d!1271875 (forall!8846 (toList!2616 lt!1543734) lambda!134387)))

(assert (=> d!1271875 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!73 lt!1543734 lt!1543753 lt!1543752 key!2048 v!9179 (hashF!7007 thiss!42308)) lt!1543784)))

(declare-fun bs!607427 () Bool)

(assert (= bs!607427 d!1271875))

(declare-fun m!4921401 () Bool)

(assert (=> bs!607427 m!4921401))

(declare-fun m!4921403 () Bool)

(assert (=> bs!607427 m!4921403))

(assert (=> bs!607427 m!4921403))

(declare-fun m!4921405 () Bool)

(assert (=> bs!607427 m!4921405))

(declare-fun m!4921407 () Bool)

(assert (=> bs!607427 m!4921407))

(assert (=> bs!607427 m!4921343))

(declare-fun m!4921409 () Bool)

(assert (=> bs!607427 m!4921409))

(assert (=> bs!607427 m!4921343))

(assert (=> bs!607427 m!4921405))

(declare-fun m!4921411 () Bool)

(assert (=> bs!607427 m!4921411))

(assert (=> b!4326325 d!1271875))

(declare-fun d!1271877 () Bool)

(declare-fun res!1772956 () Bool)

(declare-fun e!2691992 () Bool)

(assert (=> d!1271877 (=> res!1772956 e!2691992)))

(assert (=> d!1271877 (= res!1772956 (not ((_ is Cons!48447) lt!1543738)))))

(assert (=> d!1271877 (= (noDuplicateKeys!273 lt!1543738) e!2691992)))

(declare-fun b!4326365 () Bool)

(declare-fun e!2691993 () Bool)

(assert (=> b!4326365 (= e!2691992 e!2691993)))

(declare-fun res!1772957 () Bool)

(assert (=> b!4326365 (=> (not res!1772957) (not e!2691993))))

(assert (=> b!4326365 (= res!1772957 (not (containsKey!424 (t!355477 lt!1543738) (_1!26989 (h!53915 lt!1543738)))))))

(declare-fun b!4326366 () Bool)

(assert (=> b!4326366 (= e!2691993 (noDuplicateKeys!273 (t!355477 lt!1543738)))))

(assert (= (and d!1271877 (not res!1772956)) b!4326365))

(assert (= (and b!4326365 res!1772957) b!4326366))

(declare-fun m!4921413 () Bool)

(assert (=> b!4326365 m!4921413))

(declare-fun m!4921415 () Bool)

(assert (=> b!4326366 m!4921415))

(assert (=> b!4326325 d!1271877))

(declare-fun d!1271879 () Bool)

(assert (=> d!1271879 (noDuplicateKeys!273 (removePairForKey!291 lt!1543750 key!2048))))

(declare-fun lt!1543787 () Unit!68040)

(declare-fun choose!26455 (List!48571 K!9709) Unit!68040)

(assert (=> d!1271879 (= lt!1543787 (choose!26455 lt!1543750 key!2048))))

(assert (=> d!1271879 (noDuplicateKeys!273 lt!1543750)))

(assert (=> d!1271879 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!201 lt!1543750 key!2048) lt!1543787)))

(declare-fun bs!607428 () Bool)

(assert (= bs!607428 d!1271879))

(declare-fun m!4921417 () Bool)

(assert (=> bs!607428 m!4921417))

(assert (=> bs!607428 m!4921417))

(declare-fun m!4921419 () Bool)

(assert (=> bs!607428 m!4921419))

(declare-fun m!4921421 () Bool)

(assert (=> bs!607428 m!4921421))

(declare-fun m!4921423 () Bool)

(assert (=> bs!607428 m!4921423))

(assert (=> b!4326325 d!1271879))

(declare-fun bs!607429 () Bool)

(declare-fun b!4326367 () Bool)

(assert (= bs!607429 (and b!4326367 d!1271865)))

(declare-fun lambda!134388 () Int)

(assert (=> bs!607429 (not (= lambda!134388 lambda!134373))))

(declare-fun bs!607430 () Bool)

(assert (= bs!607430 (and b!4326367 b!4326355)))

(assert (=> bs!607430 (= lambda!134388 lambda!134381)))

(declare-fun bs!607431 () Bool)

(assert (= bs!607431 (and b!4326367 d!1271869)))

(assert (=> bs!607431 (= lambda!134388 lambda!134378)))

(declare-fun bs!607432 () Bool)

(assert (= bs!607432 (and b!4326367 b!4326325)))

(assert (=> bs!607432 (= lambda!134388 lambda!134369)))

(declare-fun bs!607433 () Bool)

(assert (= bs!607433 (and b!4326367 d!1271875)))

(assert (=> bs!607433 (= lambda!134388 lambda!134387)))

(declare-fun bs!607434 () Bool)

(assert (= bs!607434 (and b!4326367 b!4326334)))

(assert (=> bs!607434 (= lambda!134388 lambda!134370)))

(declare-fun d!1271881 () Bool)

(declare-fun res!1772958 () Bool)

(declare-fun e!2691994 () Bool)

(assert (=> d!1271881 (=> (not res!1772958) (not e!2691994))))

(assert (=> d!1271881 (= res!1772958 (valid!3803 (v!42903 (underlying!9800 (_2!26991 lt!1543724)))))))

(assert (=> d!1271881 (= (valid!3802 (_2!26991 lt!1543724)) e!2691994)))

(declare-fun res!1772959 () Bool)

(assert (=> b!4326367 (=> (not res!1772959) (not e!2691994))))

(assert (=> b!4326367 (= res!1772959 (forall!8846 (toList!2616 (map!10491 (v!42903 (underlying!9800 (_2!26991 lt!1543724))))) lambda!134388))))

(declare-fun b!4326368 () Bool)

(assert (=> b!4326368 (= e!2691994 (allKeysSameHashInMap!413 (map!10491 (v!42903 (underlying!9800 (_2!26991 lt!1543724)))) (hashF!7007 (_2!26991 lt!1543724))))))

(assert (= (and d!1271881 res!1772958) b!4326367))

(assert (= (and b!4326367 res!1772959) b!4326368))

(declare-fun m!4921425 () Bool)

(assert (=> d!1271881 m!4921425))

(declare-fun m!4921427 () Bool)

(assert (=> b!4326367 m!4921427))

(declare-fun m!4921429 () Bool)

(assert (=> b!4326367 m!4921429))

(assert (=> b!4326368 m!4921427))

(assert (=> b!4326368 m!4921427))

(declare-fun m!4921431 () Bool)

(assert (=> b!4326368 m!4921431))

(assert (=> b!4326317 d!1271881))

(declare-fun bs!607435 () Bool)

(declare-fun b!4326399 () Bool)

(assert (= bs!607435 (and b!4326399 d!1271865)))

(declare-fun lambda!134391 () Int)

(assert (=> bs!607435 (not (= lambda!134391 lambda!134373))))

(declare-fun bs!607436 () Bool)

(assert (= bs!607436 (and b!4326399 b!4326355)))

(assert (=> bs!607436 (= lambda!134391 lambda!134381)))

(declare-fun bs!607437 () Bool)

(assert (= bs!607437 (and b!4326399 d!1271869)))

(assert (=> bs!607437 (= lambda!134391 lambda!134378)))

(declare-fun bs!607438 () Bool)

(assert (= bs!607438 (and b!4326399 b!4326325)))

(assert (=> bs!607438 (= lambda!134391 lambda!134369)))

(declare-fun bs!607439 () Bool)

(assert (= bs!607439 (and b!4326399 b!4326367)))

(assert (=> bs!607439 (= lambda!134391 lambda!134388)))

(declare-fun bs!607440 () Bool)

(assert (= bs!607440 (and b!4326399 d!1271875)))

(assert (=> bs!607440 (= lambda!134391 lambda!134387)))

(declare-fun bs!607441 () Bool)

(assert (= bs!607441 (and b!4326399 b!4326334)))

(assert (=> bs!607441 (= lambda!134391 lambda!134370)))

(declare-fun b!4326391 () Bool)

(declare-fun e!2692009 () Bool)

(declare-fun call!300552 () Bool)

(assert (=> b!4326391 (= e!2692009 call!300552)))

(declare-fun call!300554 () Bool)

(declare-fun lt!1543844 () ListLongMap!1233)

(declare-fun bm!300545 () Bool)

(declare-fun call!300550 () ListLongMap!1233)

(declare-fun c!736071 () Bool)

(declare-fun call!300551 () (_ BitVec 64))

(declare-fun contains!10542 (ListLongMap!1233 (_ BitVec 64)) Bool)

(assert (=> bm!300545 (= call!300554 (contains!10542 (ite c!736071 lt!1543844 call!300550) call!300551))))

(declare-fun b!4326392 () Bool)

(declare-fun e!2692011 () Unit!68040)

(declare-fun Unit!68051 () Unit!68040)

(assert (=> b!4326392 (= e!2692011 Unit!68051)))

(declare-fun b!4326393 () Bool)

(declare-fun e!2692010 () Unit!68040)

(declare-fun Unit!68052 () Unit!68040)

(assert (=> b!4326393 (= e!2692010 Unit!68052)))

(declare-fun b!4326394 () Bool)

(declare-fun e!2692013 () Unit!68040)

(declare-fun e!2692014 () Unit!68040)

(assert (=> b!4326394 (= e!2692013 e!2692014)))

(declare-fun res!1772967 () Bool)

(assert (=> b!4326394 (= res!1772967 call!300554)))

(declare-fun e!2692015 () Bool)

(assert (=> b!4326394 (=> (not res!1772967) (not e!2692015))))

(declare-fun c!736073 () Bool)

(assert (=> b!4326394 (= c!736073 e!2692015)))

(declare-fun b!4326395 () Bool)

(assert (=> b!4326395 false))

(declare-fun lt!1543838 () Unit!68040)

(declare-fun lt!1543847 () Unit!68040)

(assert (=> b!4326395 (= lt!1543838 lt!1543847)))

(declare-fun lt!1543833 () ListLongMap!1233)

(assert (=> b!4326395 (contains!10538 (extractMap!392 (toList!2616 lt!1543833)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!172 (ListLongMap!1233 K!9709 Hashable!4701) Unit!68040)

(assert (=> b!4326395 (= lt!1543847 (lemmaInLongMapThenInGenericMap!172 lt!1543833 key!2048 (hashF!7007 thiss!42308)))))

(assert (=> b!4326395 (= lt!1543833 call!300550)))

(declare-fun Unit!68053 () Unit!68040)

(assert (=> b!4326395 (= e!2692014 Unit!68053)))

(declare-fun b!4326396 () Bool)

(declare-fun Unit!68054 () Unit!68040)

(assert (=> b!4326396 (= e!2692014 Unit!68054)))

(declare-fun d!1271883 () Bool)

(declare-fun lt!1543845 () Bool)

(assert (=> d!1271883 (= lt!1543845 (contains!10538 (map!10490 thiss!42308) key!2048))))

(declare-fun e!2692012 () Bool)

(assert (=> d!1271883 (= lt!1543845 e!2692012)))

(declare-fun res!1772966 () Bool)

(assert (=> d!1271883 (=> (not res!1772966) (not e!2692012))))

(declare-fun lt!1543839 () (_ BitVec 64))

(assert (=> d!1271883 (= res!1772966 (contains!10540 (v!42903 (underlying!9800 thiss!42308)) lt!1543839))))

(declare-fun lt!1543841 () Unit!68040)

(assert (=> d!1271883 (= lt!1543841 e!2692013)))

(assert (=> d!1271883 (= c!736071 (contains!10538 (extractMap!392 (toList!2616 (map!10491 (v!42903 (underlying!9800 thiss!42308))))) key!2048))))

(declare-fun lt!1543840 () Unit!68040)

(assert (=> d!1271883 (= lt!1543840 e!2692010)))

(declare-fun c!736070 () Bool)

(assert (=> d!1271883 (= c!736070 (contains!10540 (v!42903 (underlying!9800 thiss!42308)) lt!1543839))))

(assert (=> d!1271883 (= lt!1543839 (hash!1245 (hashF!7007 thiss!42308) key!2048))))

(assert (=> d!1271883 (valid!3802 thiss!42308)))

(assert (=> d!1271883 (= (contains!10539 thiss!42308 key!2048) lt!1543845)))

(declare-fun bm!300546 () Bool)

(declare-datatypes ((Option!10329 0))(
  ( (None!10328) (Some!10328 (v!42909 tuple2!47402)) )
))
(declare-fun call!300555 () Option!10329)

(declare-fun isDefined!7626 (Option!10329) Bool)

(assert (=> bm!300546 (= call!300552 (isDefined!7626 call!300555))))

(declare-fun b!4326397 () Bool)

(assert (=> b!4326397 false))

(declare-fun lt!1543834 () Unit!68040)

(declare-fun lt!1543842 () Unit!68040)

(assert (=> b!4326397 (= lt!1543834 lt!1543842)))

(declare-fun lt!1543835 () List!48572)

(declare-fun lt!1543836 () List!48571)

(declare-fun contains!10543 (List!48572 tuple2!47404) Bool)

(assert (=> b!4326397 (contains!10543 lt!1543835 (tuple2!47405 lt!1543839 lt!1543836))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!184 (List!48572 (_ BitVec 64) List!48571) Unit!68040)

(assert (=> b!4326397 (= lt!1543842 (lemmaGetValueByKeyImpliesContainsTuple!184 lt!1543835 lt!1543839 lt!1543836))))

(assert (=> b!4326397 (= lt!1543836 (apply!11184 (v!42903 (underlying!9800 thiss!42308)) lt!1543839))))

(assert (=> b!4326397 (= lt!1543835 (toList!2616 (map!10491 (v!42903 (underlying!9800 thiss!42308)))))))

(declare-fun lt!1543837 () Unit!68040)

(declare-fun lt!1543829 () Unit!68040)

(assert (=> b!4326397 (= lt!1543837 lt!1543829)))

(declare-fun lt!1543828 () List!48572)

(declare-datatypes ((Option!10330 0))(
  ( (None!10329) (Some!10329 (v!42910 List!48571)) )
))
(declare-fun isDefined!7627 (Option!10330) Bool)

(declare-fun getValueByKey!316 (List!48572 (_ BitVec 64)) Option!10330)

(assert (=> b!4326397 (isDefined!7627 (getValueByKey!316 lt!1543828 lt!1543839))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!231 (List!48572 (_ BitVec 64)) Unit!68040)

(assert (=> b!4326397 (= lt!1543829 (lemmaContainsKeyImpliesGetValueByKeyDefined!231 lt!1543828 lt!1543839))))

(assert (=> b!4326397 (= lt!1543828 (toList!2616 (map!10491 (v!42903 (underlying!9800 thiss!42308)))))))

(declare-fun lt!1543843 () Unit!68040)

(declare-fun lt!1543846 () Unit!68040)

(assert (=> b!4326397 (= lt!1543843 lt!1543846)))

(declare-fun lt!1543831 () List!48572)

(declare-fun containsKey!425 (List!48572 (_ BitVec 64)) Bool)

(assert (=> b!4326397 (containsKey!425 lt!1543831 lt!1543839)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!173 (List!48572 (_ BitVec 64)) Unit!68040)

(assert (=> b!4326397 (= lt!1543846 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!173 lt!1543831 lt!1543839))))

(assert (=> b!4326397 (= lt!1543831 (toList!2616 (map!10491 (v!42903 (underlying!9800 thiss!42308)))))))

(declare-fun Unit!68055 () Unit!68040)

(assert (=> b!4326397 (= e!2692011 Unit!68055)))

(declare-fun bm!300547 () Bool)

(assert (=> bm!300547 (= call!300551 (hash!1245 (hashF!7007 thiss!42308) key!2048))))

(declare-fun b!4326398 () Bool)

(declare-fun lt!1543830 () Unit!68040)

(assert (=> b!4326398 (= e!2692013 lt!1543830)))

(assert (=> b!4326398 (= lt!1543844 call!300550)))

(declare-fun lemmaInGenericMapThenInLongMap!172 (ListLongMap!1233 K!9709 Hashable!4701) Unit!68040)

(assert (=> b!4326398 (= lt!1543830 (lemmaInGenericMapThenInLongMap!172 lt!1543844 key!2048 (hashF!7007 thiss!42308)))))

(declare-fun res!1772968 () Bool)

(assert (=> b!4326398 (= res!1772968 call!300554)))

(assert (=> b!4326398 (=> (not res!1772968) (not e!2692009))))

(assert (=> b!4326398 e!2692009))

(declare-fun forallContained!1546 (List!48572 Int tuple2!47404) Unit!68040)

(assert (=> b!4326399 (= e!2692010 (forallContained!1546 (toList!2616 (map!10491 (v!42903 (underlying!9800 thiss!42308)))) lambda!134391 (tuple2!47405 lt!1543839 (apply!11184 (v!42903 (underlying!9800 thiss!42308)) lt!1543839))))))

(declare-fun c!736072 () Bool)

(assert (=> b!4326399 (= c!736072 (not (contains!10543 (toList!2616 (map!10491 (v!42903 (underlying!9800 thiss!42308)))) (tuple2!47405 lt!1543839 (apply!11184 (v!42903 (underlying!9800 thiss!42308)) lt!1543839)))))))

(declare-fun lt!1543832 () Unit!68040)

(assert (=> b!4326399 (= lt!1543832 e!2692011)))

(declare-fun call!300553 () List!48571)

(declare-fun bm!300548 () Bool)

(declare-fun apply!11185 (ListLongMap!1233 (_ BitVec 64)) List!48571)

(assert (=> bm!300548 (= call!300553 (apply!11185 (ite c!736071 lt!1543844 call!300550) call!300551))))

(declare-fun bm!300549 () Bool)

(assert (=> bm!300549 (= call!300550 (map!10491 (v!42903 (underlying!9800 thiss!42308))))))

(declare-fun b!4326400 () Bool)

(declare-fun getPair!172 (List!48571 K!9709) Option!10329)

(assert (=> b!4326400 (= e!2692012 (isDefined!7626 (getPair!172 (apply!11184 (v!42903 (underlying!9800 thiss!42308)) lt!1543839) key!2048)))))

(declare-fun b!4326401 () Bool)

(assert (=> b!4326401 (= e!2692015 call!300552)))

(declare-fun bm!300550 () Bool)

(assert (=> bm!300550 (= call!300555 (getPair!172 call!300553 key!2048))))

(assert (= (and d!1271883 c!736070) b!4326399))

(assert (= (and d!1271883 (not c!736070)) b!4326393))

(assert (= (and b!4326399 c!736072) b!4326397))

(assert (= (and b!4326399 (not c!736072)) b!4326392))

(assert (= (and d!1271883 c!736071) b!4326398))

(assert (= (and d!1271883 (not c!736071)) b!4326394))

(assert (= (and b!4326398 res!1772968) b!4326391))

(assert (= (and b!4326394 res!1772967) b!4326401))

(assert (= (and b!4326394 c!736073) b!4326395))

(assert (= (and b!4326394 (not c!736073)) b!4326396))

(assert (= (or b!4326398 b!4326394 b!4326401 b!4326395) bm!300549))

(assert (= (or b!4326398 b!4326391 b!4326394 b!4326401) bm!300547))

(assert (= (or b!4326398 b!4326394) bm!300545))

(assert (= (or b!4326391 b!4326401) bm!300548))

(assert (= (or b!4326391 b!4326401) bm!300550))

(assert (= (or b!4326391 b!4326401) bm!300546))

(assert (= (and d!1271883 res!1772966) b!4326400))

(declare-fun m!4921433 () Bool)

(assert (=> b!4326395 m!4921433))

(assert (=> b!4326395 m!4921433))

(declare-fun m!4921435 () Bool)

(assert (=> b!4326395 m!4921435))

(declare-fun m!4921437 () Bool)

(assert (=> b!4326395 m!4921437))

(declare-fun m!4921439 () Bool)

(assert (=> b!4326400 m!4921439))

(assert (=> b!4326400 m!4921439))

(declare-fun m!4921441 () Bool)

(assert (=> b!4326400 m!4921441))

(assert (=> b!4326400 m!4921441))

(declare-fun m!4921443 () Bool)

(assert (=> b!4326400 m!4921443))

(declare-fun m!4921445 () Bool)

(assert (=> bm!300545 m!4921445))

(assert (=> bm!300549 m!4921349))

(declare-fun m!4921447 () Bool)

(assert (=> d!1271883 m!4921447))

(declare-fun m!4921449 () Bool)

(assert (=> d!1271883 m!4921449))

(declare-fun m!4921451 () Bool)

(assert (=> d!1271883 m!4921451))

(assert (=> d!1271883 m!4921321))

(assert (=> d!1271883 m!4921351))

(declare-fun m!4921453 () Bool)

(assert (=> d!1271883 m!4921453))

(assert (=> d!1271883 m!4921349))

(assert (=> d!1271883 m!4921351))

(assert (=> d!1271883 m!4921359))

(assert (=> d!1271883 m!4921447))

(assert (=> b!4326399 m!4921349))

(assert (=> b!4326399 m!4921439))

(declare-fun m!4921455 () Bool)

(assert (=> b!4326399 m!4921455))

(declare-fun m!4921457 () Bool)

(assert (=> b!4326399 m!4921457))

(declare-fun m!4921459 () Bool)

(assert (=> b!4326397 m!4921459))

(declare-fun m!4921461 () Bool)

(assert (=> b!4326397 m!4921461))

(declare-fun m!4921463 () Bool)

(assert (=> b!4326397 m!4921463))

(declare-fun m!4921465 () Bool)

(assert (=> b!4326397 m!4921465))

(declare-fun m!4921467 () Bool)

(assert (=> b!4326397 m!4921467))

(assert (=> b!4326397 m!4921439))

(declare-fun m!4921469 () Bool)

(assert (=> b!4326397 m!4921469))

(declare-fun m!4921471 () Bool)

(assert (=> b!4326397 m!4921471))

(assert (=> b!4326397 m!4921459))

(assert (=> b!4326397 m!4921349))

(declare-fun m!4921473 () Bool)

(assert (=> bm!300546 m!4921473))

(declare-fun m!4921475 () Bool)

(assert (=> b!4326398 m!4921475))

(declare-fun m!4921477 () Bool)

(assert (=> bm!300550 m!4921477))

(assert (=> bm!300547 m!4921359))

(declare-fun m!4921479 () Bool)

(assert (=> bm!300548 m!4921479))

(assert (=> b!4326317 d!1271883))

(declare-fun d!1271885 () Bool)

(declare-fun map!10492 (LongMapFixedSize!9570) ListLongMap!1233)

(assert (=> d!1271885 (= (map!10491 (v!42903 (underlying!9800 thiss!42308))) (map!10492 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308))))))))

(declare-fun bs!607442 () Bool)

(assert (= bs!607442 d!1271885))

(declare-fun m!4921481 () Bool)

(assert (=> bs!607442 m!4921481))

(assert (=> b!4326317 d!1271885))

(declare-fun d!1271887 () Bool)

(declare-fun lt!1543850 () ListMap!1893)

(declare-fun invariantList!611 (List!48571) Bool)

(assert (=> d!1271887 (invariantList!611 (toList!2617 lt!1543850))))

(assert (=> d!1271887 (= lt!1543850 (extractMap!392 (toList!2616 (map!10491 (v!42903 (underlying!9800 thiss!42308))))))))

(assert (=> d!1271887 (valid!3802 thiss!42308)))

(assert (=> d!1271887 (= (map!10490 thiss!42308) lt!1543850)))

(declare-fun bs!607443 () Bool)

(assert (= bs!607443 d!1271887))

(declare-fun m!4921483 () Bool)

(assert (=> bs!607443 m!4921483))

(assert (=> bs!607443 m!4921349))

(assert (=> bs!607443 m!4921447))

(assert (=> bs!607443 m!4921321))

(assert (=> b!4326317 d!1271887))

(declare-fun bs!607444 () Bool)

(declare-fun d!1271889 () Bool)

(assert (= bs!607444 (and d!1271889 d!1271865)))

(declare-fun lambda!134392 () Int)

(assert (=> bs!607444 (= lambda!134392 lambda!134373)))

(declare-fun bs!607445 () Bool)

(assert (= bs!607445 (and d!1271889 b!4326355)))

(assert (=> bs!607445 (not (= lambda!134392 lambda!134381))))

(declare-fun bs!607446 () Bool)

(assert (= bs!607446 (and d!1271889 d!1271869)))

(assert (=> bs!607446 (not (= lambda!134392 lambda!134378))))

(declare-fun bs!607447 () Bool)

(assert (= bs!607447 (and d!1271889 b!4326325)))

(assert (=> bs!607447 (not (= lambda!134392 lambda!134369))))

(declare-fun bs!607448 () Bool)

(assert (= bs!607448 (and d!1271889 b!4326399)))

(assert (=> bs!607448 (not (= lambda!134392 lambda!134391))))

(declare-fun bs!607449 () Bool)

(assert (= bs!607449 (and d!1271889 b!4326367)))

(assert (=> bs!607449 (not (= lambda!134392 lambda!134388))))

(declare-fun bs!607450 () Bool)

(assert (= bs!607450 (and d!1271889 d!1271875)))

(assert (=> bs!607450 (not (= lambda!134392 lambda!134387))))

(declare-fun bs!607451 () Bool)

(assert (= bs!607451 (and d!1271889 b!4326334)))

(assert (=> bs!607451 (not (= lambda!134392 lambda!134370))))

(assert (=> d!1271889 true))

(assert (=> d!1271889 (= (allKeysSameHashInMap!413 (ite c!736059 lt!1543743 lt!1543722) (hashF!7007 thiss!42308)) (forall!8846 (toList!2616 (ite c!736059 lt!1543743 lt!1543722)) lambda!134392))))

(declare-fun bs!607452 () Bool)

(assert (= bs!607452 d!1271889))

(declare-fun m!4921485 () Bool)

(assert (=> bs!607452 m!4921485))

(assert (=> bm!300530 d!1271889))

(declare-fun d!1271891 () Bool)

(assert (=> d!1271891 (= (array_inv!5587 (_keys!5111 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308)))))) (bvsge (size!35794 (_keys!5111 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4326326 d!1271891))

(declare-fun d!1271893 () Bool)

(assert (=> d!1271893 (= (array_inv!5588 (_values!5086 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308)))))) (bvsge (size!35795 (_values!5086 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4326326 d!1271893))

(declare-fun d!1271895 () Bool)

(declare-fun e!2692029 () Bool)

(assert (=> d!1271895 e!2692029))

(declare-fun res!1772975 () Bool)

(assert (=> d!1271895 (=> res!1772975 e!2692029)))

(declare-fun e!2692031 () Bool)

(assert (=> d!1271895 (= res!1772975 e!2692031)))

(declare-fun res!1772976 () Bool)

(assert (=> d!1271895 (=> (not res!1772976) (not e!2692031))))

(declare-fun lt!1543871 () Bool)

(assert (=> d!1271895 (= res!1772976 (not lt!1543871))))

(declare-fun lt!1543868 () Bool)

(assert (=> d!1271895 (= lt!1543871 lt!1543868)))

(declare-fun lt!1543870 () Unit!68040)

(declare-fun e!2692032 () Unit!68040)

(assert (=> d!1271895 (= lt!1543870 e!2692032)))

(declare-fun c!736080 () Bool)

(assert (=> d!1271895 (= c!736080 lt!1543868)))

(declare-fun containsKey!426 (List!48571 K!9709) Bool)

(assert (=> d!1271895 (= lt!1543868 (containsKey!426 (toList!2617 (ite c!736059 lt!1543742 lt!1543748)) key!2048))))

(assert (=> d!1271895 (= (contains!10538 (ite c!736059 lt!1543742 lt!1543748) key!2048) lt!1543871)))

(declare-fun b!4326420 () Bool)

(declare-fun e!2692030 () Unit!68040)

(assert (=> b!4326420 (= e!2692032 e!2692030)))

(declare-fun c!736082 () Bool)

(declare-fun call!300558 () Bool)

(assert (=> b!4326420 (= c!736082 call!300558)))

(declare-fun b!4326421 () Bool)

(assert (=> b!4326421 false))

(declare-fun lt!1543867 () Unit!68040)

(declare-fun lt!1543873 () Unit!68040)

(assert (=> b!4326421 (= lt!1543867 lt!1543873)))

(assert (=> b!4326421 (containsKey!426 (toList!2617 (ite c!736059 lt!1543742 lt!1543748)) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!58 (List!48571 K!9709) Unit!68040)

(assert (=> b!4326421 (= lt!1543873 (lemmaInGetKeysListThenContainsKey!58 (toList!2617 (ite c!736059 lt!1543742 lt!1543748)) key!2048))))

(declare-fun Unit!68056 () Unit!68040)

(assert (=> b!4326421 (= e!2692030 Unit!68056)))

(declare-fun e!2692028 () Bool)

(declare-fun b!4326422 () Bool)

(declare-datatypes ((List!48573 0))(
  ( (Nil!48449) (Cons!48449 (h!53918 K!9709) (t!355481 List!48573)) )
))
(declare-fun contains!10544 (List!48573 K!9709) Bool)

(declare-fun keys!16210 (ListMap!1893) List!48573)

(assert (=> b!4326422 (= e!2692028 (contains!10544 (keys!16210 (ite c!736059 lt!1543742 lt!1543748)) key!2048))))

(declare-fun b!4326423 () Bool)

(declare-fun lt!1543869 () Unit!68040)

(assert (=> b!4326423 (= e!2692032 lt!1543869)))

(declare-fun lt!1543872 () Unit!68040)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!232 (List!48571 K!9709) Unit!68040)

(assert (=> b!4326423 (= lt!1543872 (lemmaContainsKeyImpliesGetValueByKeyDefined!232 (toList!2617 (ite c!736059 lt!1543742 lt!1543748)) key!2048))))

(declare-fun isDefined!7628 (Option!10328) Bool)

(assert (=> b!4326423 (isDefined!7628 (getValueByKey!315 (toList!2617 (ite c!736059 lt!1543742 lt!1543748)) key!2048))))

(declare-fun lt!1543874 () Unit!68040)

(assert (=> b!4326423 (= lt!1543874 lt!1543872)))

(declare-fun lemmaInListThenGetKeysListContains!58 (List!48571 K!9709) Unit!68040)

(assert (=> b!4326423 (= lt!1543869 (lemmaInListThenGetKeysListContains!58 (toList!2617 (ite c!736059 lt!1543742 lt!1543748)) key!2048))))

(assert (=> b!4326423 call!300558))

(declare-fun b!4326424 () Bool)

(assert (=> b!4326424 (= e!2692029 e!2692028)))

(declare-fun res!1772977 () Bool)

(assert (=> b!4326424 (=> (not res!1772977) (not e!2692028))))

(assert (=> b!4326424 (= res!1772977 (isDefined!7628 (getValueByKey!315 (toList!2617 (ite c!736059 lt!1543742 lt!1543748)) key!2048)))))

(declare-fun b!4326425 () Bool)

(assert (=> b!4326425 (= e!2692031 (not (contains!10544 (keys!16210 (ite c!736059 lt!1543742 lt!1543748)) key!2048)))))

(declare-fun b!4326426 () Bool)

(declare-fun e!2692033 () List!48573)

(assert (=> b!4326426 (= e!2692033 (keys!16210 (ite c!736059 lt!1543742 lt!1543748)))))

(declare-fun b!4326427 () Bool)

(declare-fun getKeysList!61 (List!48571) List!48573)

(assert (=> b!4326427 (= e!2692033 (getKeysList!61 (toList!2617 (ite c!736059 lt!1543742 lt!1543748))))))

(declare-fun b!4326428 () Bool)

(declare-fun Unit!68057 () Unit!68040)

(assert (=> b!4326428 (= e!2692030 Unit!68057)))

(declare-fun bm!300553 () Bool)

(assert (=> bm!300553 (= call!300558 (contains!10544 e!2692033 key!2048))))

(declare-fun c!736081 () Bool)

(assert (=> bm!300553 (= c!736081 c!736080)))

(assert (= (and d!1271895 c!736080) b!4326423))

(assert (= (and d!1271895 (not c!736080)) b!4326420))

(assert (= (and b!4326420 c!736082) b!4326421))

(assert (= (and b!4326420 (not c!736082)) b!4326428))

(assert (= (or b!4326423 b!4326420) bm!300553))

(assert (= (and bm!300553 c!736081) b!4326427))

(assert (= (and bm!300553 (not c!736081)) b!4326426))

(assert (= (and d!1271895 res!1772976) b!4326425))

(assert (= (and d!1271895 (not res!1772975)) b!4326424))

(assert (= (and b!4326424 res!1772977) b!4326422))

(declare-fun m!4921487 () Bool)

(assert (=> b!4326423 m!4921487))

(declare-fun m!4921489 () Bool)

(assert (=> b!4326423 m!4921489))

(assert (=> b!4326423 m!4921489))

(declare-fun m!4921491 () Bool)

(assert (=> b!4326423 m!4921491))

(declare-fun m!4921493 () Bool)

(assert (=> b!4326423 m!4921493))

(declare-fun m!4921495 () Bool)

(assert (=> b!4326425 m!4921495))

(assert (=> b!4326425 m!4921495))

(declare-fun m!4921497 () Bool)

(assert (=> b!4326425 m!4921497))

(assert (=> b!4326426 m!4921495))

(declare-fun m!4921499 () Bool)

(assert (=> bm!300553 m!4921499))

(declare-fun m!4921501 () Bool)

(assert (=> b!4326421 m!4921501))

(declare-fun m!4921503 () Bool)

(assert (=> b!4326421 m!4921503))

(assert (=> b!4326424 m!4921489))

(assert (=> b!4326424 m!4921489))

(assert (=> b!4326424 m!4921491))

(assert (=> b!4326422 m!4921495))

(assert (=> b!4326422 m!4921495))

(assert (=> b!4326422 m!4921497))

(declare-fun m!4921505 () Bool)

(assert (=> b!4326427 m!4921505))

(assert (=> d!1271895 m!4921501))

(assert (=> bm!300508 d!1271895))

(declare-fun bs!607453 () Bool)

(declare-fun d!1271897 () Bool)

(assert (= bs!607453 (and d!1271897 d!1271865)))

(declare-fun lambda!134395 () Int)

(assert (=> bs!607453 (not (= lambda!134395 lambda!134373))))

(declare-fun bs!607454 () Bool)

(assert (= bs!607454 (and d!1271897 b!4326355)))

(assert (=> bs!607454 (= lambda!134395 lambda!134381)))

(declare-fun bs!607455 () Bool)

(assert (= bs!607455 (and d!1271897 d!1271869)))

(assert (=> bs!607455 (= lambda!134395 lambda!134378)))

(declare-fun bs!607456 () Bool)

(assert (= bs!607456 (and d!1271897 d!1271889)))

(assert (=> bs!607456 (not (= lambda!134395 lambda!134392))))

(declare-fun bs!607457 () Bool)

(assert (= bs!607457 (and d!1271897 b!4326325)))

(assert (=> bs!607457 (= lambda!134395 lambda!134369)))

(declare-fun bs!607458 () Bool)

(assert (= bs!607458 (and d!1271897 b!4326399)))

(assert (=> bs!607458 (= lambda!134395 lambda!134391)))

(declare-fun bs!607459 () Bool)

(assert (= bs!607459 (and d!1271897 b!4326367)))

(assert (=> bs!607459 (= lambda!134395 lambda!134388)))

(declare-fun bs!607460 () Bool)

(assert (= bs!607460 (and d!1271897 d!1271875)))

(assert (=> bs!607460 (= lambda!134395 lambda!134387)))

(declare-fun bs!607461 () Bool)

(assert (= bs!607461 (and d!1271897 b!4326334)))

(assert (=> bs!607461 (= lambda!134395 lambda!134370)))

(assert (=> d!1271897 (eq!171 (extractMap!392 (toList!2616 (+!376 lt!1543734 (tuple2!47405 lt!1543763 lt!1543735)))) (+!377 (extractMap!392 (toList!2616 lt!1543734)) (tuple2!47403 key!2048 v!9179)))))

(declare-fun lt!1543877 () Unit!68040)

(declare-fun choose!26456 (ListLongMap!1233 (_ BitVec 64) List!48571 K!9709 V!9911 Hashable!4701) Unit!68040)

(assert (=> d!1271897 (= lt!1543877 (choose!26456 lt!1543734 lt!1543763 lt!1543735 key!2048 v!9179 (hashF!7007 thiss!42308)))))

(assert (=> d!1271897 (forall!8846 (toList!2616 lt!1543734) lambda!134395)))

(assert (=> d!1271897 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!75 lt!1543734 lt!1543763 lt!1543735 key!2048 v!9179 (hashF!7007 thiss!42308)) lt!1543877)))

(declare-fun bs!607462 () Bool)

(assert (= bs!607462 d!1271897))

(declare-fun m!4921507 () Bool)

(assert (=> bs!607462 m!4921507))

(assert (=> bs!607462 m!4921343))

(assert (=> bs!607462 m!4921405))

(declare-fun m!4921509 () Bool)

(assert (=> bs!607462 m!4921509))

(assert (=> bs!607462 m!4921343))

(declare-fun m!4921511 () Bool)

(assert (=> bs!607462 m!4921511))

(assert (=> bs!607462 m!4921511))

(assert (=> bs!607462 m!4921405))

(declare-fun m!4921513 () Bool)

(assert (=> bs!607462 m!4921513))

(declare-fun m!4921515 () Bool)

(assert (=> bs!607462 m!4921515))

(assert (=> b!4326334 d!1271897))

(declare-fun d!1271899 () Bool)

(assert (=> d!1271899 (= (isEmpty!28147 lt!1543746) ((_ is Nil!48447) lt!1543746))))

(assert (=> b!4326334 d!1271899))

(declare-fun d!1271901 () Bool)

(declare-fun lt!1543880 () Bool)

(assert (=> d!1271901 (= lt!1543880 (contains!10542 (map!10491 (v!42903 (underlying!9800 thiss!42308))) lt!1543763))))

(declare-fun contains!10545 (LongMapFixedSize!9570 (_ BitVec 64)) Bool)

(assert (=> d!1271901 (= lt!1543880 (contains!10545 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308)))) lt!1543763))))

(assert (=> d!1271901 (valid!3803 (v!42903 (underlying!9800 thiss!42308)))))

(assert (=> d!1271901 (= (contains!10540 (v!42903 (underlying!9800 thiss!42308)) lt!1543763) lt!1543880)))

(declare-fun bs!607463 () Bool)

(assert (= bs!607463 d!1271901))

(assert (=> bs!607463 m!4921349))

(assert (=> bs!607463 m!4921349))

(declare-fun m!4921517 () Bool)

(assert (=> bs!607463 m!4921517))

(declare-fun m!4921519 () Bool)

(assert (=> bs!607463 m!4921519))

(declare-fun m!4921521 () Bool)

(assert (=> bs!607463 m!4921521))

(assert (=> b!4326333 d!1271901))

(declare-fun d!1271903 () Bool)

(declare-fun e!2692035 () Bool)

(assert (=> d!1271903 e!2692035))

(declare-fun res!1772978 () Bool)

(assert (=> d!1271903 (=> res!1772978 e!2692035)))

(declare-fun e!2692037 () Bool)

(assert (=> d!1271903 (= res!1772978 e!2692037)))

(declare-fun res!1772979 () Bool)

(assert (=> d!1271903 (=> (not res!1772979) (not e!2692037))))

(declare-fun lt!1543885 () Bool)

(assert (=> d!1271903 (= res!1772979 (not lt!1543885))))

(declare-fun lt!1543882 () Bool)

(assert (=> d!1271903 (= lt!1543885 lt!1543882)))

(declare-fun lt!1543884 () Unit!68040)

(declare-fun e!2692038 () Unit!68040)

(assert (=> d!1271903 (= lt!1543884 e!2692038)))

(declare-fun c!736083 () Bool)

(assert (=> d!1271903 (= c!736083 lt!1543882)))

(assert (=> d!1271903 (= lt!1543882 (containsKey!426 (toList!2617 lt!1543762) key!2048))))

(assert (=> d!1271903 (= (contains!10538 lt!1543762 key!2048) lt!1543885)))

(declare-fun b!4326429 () Bool)

(declare-fun e!2692036 () Unit!68040)

(assert (=> b!4326429 (= e!2692038 e!2692036)))

(declare-fun c!736085 () Bool)

(declare-fun call!300559 () Bool)

(assert (=> b!4326429 (= c!736085 call!300559)))

(declare-fun b!4326430 () Bool)

(assert (=> b!4326430 false))

(declare-fun lt!1543881 () Unit!68040)

(declare-fun lt!1543887 () Unit!68040)

(assert (=> b!4326430 (= lt!1543881 lt!1543887)))

(assert (=> b!4326430 (containsKey!426 (toList!2617 lt!1543762) key!2048)))

(assert (=> b!4326430 (= lt!1543887 (lemmaInGetKeysListThenContainsKey!58 (toList!2617 lt!1543762) key!2048))))

(declare-fun Unit!68058 () Unit!68040)

(assert (=> b!4326430 (= e!2692036 Unit!68058)))

(declare-fun b!4326431 () Bool)

(declare-fun e!2692034 () Bool)

(assert (=> b!4326431 (= e!2692034 (contains!10544 (keys!16210 lt!1543762) key!2048))))

(declare-fun b!4326432 () Bool)

(declare-fun lt!1543883 () Unit!68040)

(assert (=> b!4326432 (= e!2692038 lt!1543883)))

(declare-fun lt!1543886 () Unit!68040)

(assert (=> b!4326432 (= lt!1543886 (lemmaContainsKeyImpliesGetValueByKeyDefined!232 (toList!2617 lt!1543762) key!2048))))

(assert (=> b!4326432 (isDefined!7628 (getValueByKey!315 (toList!2617 lt!1543762) key!2048))))

(declare-fun lt!1543888 () Unit!68040)

(assert (=> b!4326432 (= lt!1543888 lt!1543886)))

(assert (=> b!4326432 (= lt!1543883 (lemmaInListThenGetKeysListContains!58 (toList!2617 lt!1543762) key!2048))))

(assert (=> b!4326432 call!300559))

(declare-fun b!4326433 () Bool)

(assert (=> b!4326433 (= e!2692035 e!2692034)))

(declare-fun res!1772980 () Bool)

(assert (=> b!4326433 (=> (not res!1772980) (not e!2692034))))

(assert (=> b!4326433 (= res!1772980 (isDefined!7628 (getValueByKey!315 (toList!2617 lt!1543762) key!2048)))))

(declare-fun b!4326434 () Bool)

(assert (=> b!4326434 (= e!2692037 (not (contains!10544 (keys!16210 lt!1543762) key!2048)))))

(declare-fun b!4326435 () Bool)

(declare-fun e!2692039 () List!48573)

(assert (=> b!4326435 (= e!2692039 (keys!16210 lt!1543762))))

(declare-fun b!4326436 () Bool)

(assert (=> b!4326436 (= e!2692039 (getKeysList!61 (toList!2617 lt!1543762)))))

(declare-fun b!4326437 () Bool)

(declare-fun Unit!68059 () Unit!68040)

(assert (=> b!4326437 (= e!2692036 Unit!68059)))

(declare-fun bm!300554 () Bool)

(assert (=> bm!300554 (= call!300559 (contains!10544 e!2692039 key!2048))))

(declare-fun c!736084 () Bool)

(assert (=> bm!300554 (= c!736084 c!736083)))

(assert (= (and d!1271903 c!736083) b!4326432))

(assert (= (and d!1271903 (not c!736083)) b!4326429))

(assert (= (and b!4326429 c!736085) b!4326430))

(assert (= (and b!4326429 (not c!736085)) b!4326437))

(assert (= (or b!4326432 b!4326429) bm!300554))

(assert (= (and bm!300554 c!736084) b!4326436))

(assert (= (and bm!300554 (not c!736084)) b!4326435))

(assert (= (and d!1271903 res!1772979) b!4326434))

(assert (= (and d!1271903 (not res!1772978)) b!4326433))

(assert (= (and b!4326433 res!1772980) b!4326431))

(declare-fun m!4921523 () Bool)

(assert (=> b!4326432 m!4921523))

(declare-fun m!4921525 () Bool)

(assert (=> b!4326432 m!4921525))

(assert (=> b!4326432 m!4921525))

(declare-fun m!4921527 () Bool)

(assert (=> b!4326432 m!4921527))

(declare-fun m!4921529 () Bool)

(assert (=> b!4326432 m!4921529))

(declare-fun m!4921531 () Bool)

(assert (=> b!4326434 m!4921531))

(assert (=> b!4326434 m!4921531))

(declare-fun m!4921533 () Bool)

(assert (=> b!4326434 m!4921533))

(assert (=> b!4326435 m!4921531))

(declare-fun m!4921535 () Bool)

(assert (=> bm!300554 m!4921535))

(declare-fun m!4921537 () Bool)

(assert (=> b!4326430 m!4921537))

(declare-fun m!4921539 () Bool)

(assert (=> b!4326430 m!4921539))

(assert (=> b!4326433 m!4921525))

(assert (=> b!4326433 m!4921525))

(assert (=> b!4326433 m!4921527))

(assert (=> b!4326431 m!4921531))

(assert (=> b!4326431 m!4921531))

(assert (=> b!4326431 m!4921533))

(declare-fun m!4921541 () Bool)

(assert (=> b!4326436 m!4921541))

(assert (=> d!1271903 m!4921537))

(assert (=> b!4326335 d!1271903))

(declare-fun bs!607464 () Bool)

(declare-fun d!1271905 () Bool)

(assert (= bs!607464 (and d!1271905 d!1271865)))

(declare-fun lambda!134398 () Int)

(assert (=> bs!607464 (= lambda!134398 lambda!134373)))

(declare-fun bs!607465 () Bool)

(assert (= bs!607465 (and d!1271905 b!4326355)))

(assert (=> bs!607465 (not (= lambda!134398 lambda!134381))))

(declare-fun bs!607466 () Bool)

(assert (= bs!607466 (and d!1271905 d!1271869)))

(assert (=> bs!607466 (not (= lambda!134398 lambda!134378))))

(declare-fun bs!607467 () Bool)

(assert (= bs!607467 (and d!1271905 d!1271897)))

(assert (=> bs!607467 (not (= lambda!134398 lambda!134395))))

(declare-fun bs!607468 () Bool)

(assert (= bs!607468 (and d!1271905 d!1271889)))

(assert (=> bs!607468 (= lambda!134398 lambda!134392)))

(declare-fun bs!607469 () Bool)

(assert (= bs!607469 (and d!1271905 b!4326325)))

(assert (=> bs!607469 (not (= lambda!134398 lambda!134369))))

(declare-fun bs!607470 () Bool)

(assert (= bs!607470 (and d!1271905 b!4326399)))

(assert (=> bs!607470 (not (= lambda!134398 lambda!134391))))

(declare-fun bs!607471 () Bool)

(assert (= bs!607471 (and d!1271905 b!4326367)))

(assert (=> bs!607471 (not (= lambda!134398 lambda!134388))))

(declare-fun bs!607472 () Bool)

(assert (= bs!607472 (and d!1271905 d!1271875)))

(assert (=> bs!607472 (not (= lambda!134398 lambda!134387))))

(declare-fun bs!607473 () Bool)

(assert (= bs!607473 (and d!1271905 b!4326334)))

(assert (=> bs!607473 (not (= lambda!134398 lambda!134370))))

(assert (=> d!1271905 true))

(assert (=> d!1271905 (allKeysSameHash!269 (ite c!736059 lt!1543750 lt!1543746) (ite c!736059 lt!1543753 lt!1543763) (hashF!7007 thiss!42308))))

(declare-fun lt!1543891 () Unit!68040)

(declare-fun choose!26457 (List!48572 (_ BitVec 64) List!48571 Hashable!4701) Unit!68040)

(assert (=> d!1271905 (= lt!1543891 (choose!26457 (toList!2616 lt!1543734) (ite c!736059 lt!1543753 lt!1543763) (ite c!736059 lt!1543750 lt!1543746) (hashF!7007 thiss!42308)))))

(assert (=> d!1271905 (forall!8846 (toList!2616 lt!1543734) lambda!134398)))

(assert (=> d!1271905 (= (lemmaInLongMapAllKeySameHashThenForTuple!253 (toList!2616 lt!1543734) (ite c!736059 lt!1543753 lt!1543763) (ite c!736059 lt!1543750 lt!1543746) (hashF!7007 thiss!42308)) lt!1543891)))

(declare-fun bs!607474 () Bool)

(assert (= bs!607474 d!1271905))

(declare-fun m!4921543 () Bool)

(assert (=> bs!607474 m!4921543))

(declare-fun m!4921545 () Bool)

(assert (=> bs!607474 m!4921545))

(declare-fun m!4921547 () Bool)

(assert (=> bs!607474 m!4921547))

(assert (=> bm!300520 d!1271905))

(declare-fun d!1271907 () Bool)

(declare-fun hash!1251 (Hashable!4701 K!9709) (_ BitVec 64))

(assert (=> d!1271907 (= (hash!1245 (hashF!7007 thiss!42308) key!2048) (hash!1251 (hashF!7007 thiss!42308) key!2048))))

(declare-fun bs!607475 () Bool)

(assert (= bs!607475 d!1271907))

(declare-fun m!4921549 () Bool)

(assert (=> bs!607475 m!4921549))

(assert (=> bm!300509 d!1271907))

(declare-fun d!1271909 () Bool)

(assert (=> d!1271909 (allKeysSameHash!269 (removePairForKey!291 (ite c!736059 lt!1543750 lt!1543746) key!2048) (ite c!736059 lt!1543753 lt!1543763) (hashF!7007 thiss!42308))))

(declare-fun lt!1543894 () Unit!68040)

(declare-fun choose!26458 (List!48571 K!9709 (_ BitVec 64) Hashable!4701) Unit!68040)

(assert (=> d!1271909 (= lt!1543894 (choose!26458 (ite c!736059 lt!1543750 lt!1543746) key!2048 (ite c!736059 lt!1543753 lt!1543763) (hashF!7007 thiss!42308)))))

(assert (=> d!1271909 (noDuplicateKeys!273 (ite c!736059 lt!1543750 lt!1543746))))

(assert (=> d!1271909 (= (lemmaRemovePairForKeyPreservesHash!246 (ite c!736059 lt!1543750 lt!1543746) key!2048 (ite c!736059 lt!1543753 lt!1543763) (hashF!7007 thiss!42308)) lt!1543894)))

(declare-fun bs!607476 () Bool)

(assert (= bs!607476 d!1271909))

(assert (=> bs!607476 m!4921357))

(assert (=> bs!607476 m!4921357))

(declare-fun m!4921551 () Bool)

(assert (=> bs!607476 m!4921551))

(declare-fun m!4921553 () Bool)

(assert (=> bs!607476 m!4921553))

(declare-fun m!4921555 () Bool)

(assert (=> bs!607476 m!4921555))

(assert (=> bm!300529 d!1271909))

(declare-fun d!1271911 () Bool)

(declare-fun res!1772985 () Bool)

(declare-fun e!2692044 () Bool)

(assert (=> d!1271911 (=> res!1772985 e!2692044)))

(assert (=> d!1271911 (= res!1772985 (and ((_ is Cons!48447) lt!1543738) (= (_1!26989 (h!53915 lt!1543738)) key!2048)))))

(assert (=> d!1271911 (= (containsKey!424 lt!1543738 key!2048) e!2692044)))

(declare-fun b!4326442 () Bool)

(declare-fun e!2692045 () Bool)

(assert (=> b!4326442 (= e!2692044 e!2692045)))

(declare-fun res!1772986 () Bool)

(assert (=> b!4326442 (=> (not res!1772986) (not e!2692045))))

(assert (=> b!4326442 (= res!1772986 ((_ is Cons!48447) lt!1543738))))

(declare-fun b!4326443 () Bool)

(assert (=> b!4326443 (= e!2692045 (containsKey!424 (t!355477 lt!1543738) key!2048))))

(assert (= (and d!1271911 (not res!1772985)) b!4326442))

(assert (= (and b!4326442 res!1772986) b!4326443))

(declare-fun m!4921557 () Bool)

(assert (=> b!4326443 m!4921557))

(assert (=> b!4326312 d!1271911))

(declare-fun d!1271913 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7579 (List!48571) (InoxSet tuple2!47402))

(assert (=> d!1271913 (= (eq!171 (ite c!736058 lt!1543762 call!300515) e!2691969) (= (content!7579 (toList!2617 (ite c!736058 lt!1543762 call!300515))) (content!7579 (toList!2617 e!2691969))))))

(declare-fun bs!607477 () Bool)

(assert (= bs!607477 d!1271913))

(declare-fun m!4921559 () Bool)

(assert (=> bs!607477 m!4921559))

(declare-fun m!4921561 () Bool)

(assert (=> bs!607477 m!4921561))

(assert (=> bm!300518 d!1271913))

(declare-fun b!4326453 () Bool)

(declare-fun e!2692051 () List!48571)

(declare-fun e!2692050 () List!48571)

(assert (=> b!4326453 (= e!2692051 e!2692050)))

(declare-fun c!736090 () Bool)

(assert (=> b!4326453 (= c!736090 ((_ is Cons!48447) (ite c!736059 lt!1543750 lt!1543746)))))

(declare-fun b!4326454 () Bool)

(assert (=> b!4326454 (= e!2692050 (Cons!48447 (h!53915 (ite c!736059 lt!1543750 lt!1543746)) (removePairForKey!291 (t!355477 (ite c!736059 lt!1543750 lt!1543746)) key!2048)))))

(declare-fun b!4326452 () Bool)

(assert (=> b!4326452 (= e!2692051 (t!355477 (ite c!736059 lt!1543750 lt!1543746)))))

(declare-fun b!4326455 () Bool)

(assert (=> b!4326455 (= e!2692050 Nil!48447)))

(declare-fun d!1271915 () Bool)

(declare-fun lt!1543897 () List!48571)

(assert (=> d!1271915 (not (containsKey!424 lt!1543897 key!2048))))

(assert (=> d!1271915 (= lt!1543897 e!2692051)))

(declare-fun c!736091 () Bool)

(assert (=> d!1271915 (= c!736091 (and ((_ is Cons!48447) (ite c!736059 lt!1543750 lt!1543746)) (= (_1!26989 (h!53915 (ite c!736059 lt!1543750 lt!1543746))) key!2048)))))

(assert (=> d!1271915 (noDuplicateKeys!273 (ite c!736059 lt!1543750 lt!1543746))))

(assert (=> d!1271915 (= (removePairForKey!291 (ite c!736059 lt!1543750 lt!1543746) key!2048) lt!1543897)))

(assert (= (and d!1271915 c!736091) b!4326452))

(assert (= (and d!1271915 (not c!736091)) b!4326453))

(assert (= (and b!4326453 c!736090) b!4326454))

(assert (= (and b!4326453 (not c!736090)) b!4326455))

(declare-fun m!4921563 () Bool)

(assert (=> b!4326454 m!4921563))

(declare-fun m!4921565 () Bool)

(assert (=> d!1271915 m!4921565))

(assert (=> d!1271915 m!4921555))

(assert (=> bm!300516 d!1271915))

(declare-fun bs!607478 () Bool)

(declare-fun d!1271917 () Bool)

(assert (= bs!607478 (and d!1271917 d!1271873)))

(declare-fun lambda!134399 () Int)

(assert (=> bs!607478 (= lambda!134399 lambda!134384)))

(assert (=> d!1271917 true))

(assert (=> d!1271917 true))

(assert (=> d!1271917 (= (allKeysSameHash!269 (ite c!736059 lt!1543738 lt!1543746) (ite c!736059 lt!1543753 lt!1543763) (hashF!7007 thiss!42308)) (forall!8847 (ite c!736059 lt!1543738 lt!1543746) lambda!134399))))

(declare-fun bs!607479 () Bool)

(assert (= bs!607479 d!1271917))

(declare-fun m!4921567 () Bool)

(assert (=> bs!607479 m!4921567))

(assert (=> bm!300526 d!1271917))

(declare-fun d!1271919 () Bool)

(assert (=> d!1271919 (= (eq!171 (ite c!736059 lt!1543742 lt!1543745) (ite c!736059 lt!1543736 lt!1543748)) (= (content!7579 (toList!2617 (ite c!736059 lt!1543742 lt!1543745))) (content!7579 (toList!2617 (ite c!736059 lt!1543736 lt!1543748)))))))

(declare-fun bs!607480 () Bool)

(assert (= bs!607480 d!1271919))

(declare-fun m!4921569 () Bool)

(assert (=> bs!607480 m!4921569))

(declare-fun m!4921571 () Bool)

(assert (=> bs!607480 m!4921571))

(assert (=> bm!300507 d!1271919))

(declare-fun bs!607481 () Bool)

(declare-fun d!1271921 () Bool)

(assert (= bs!607481 (and d!1271921 d!1271865)))

(declare-fun lambda!134402 () Int)

(assert (=> bs!607481 (not (= lambda!134402 lambda!134373))))

(declare-fun bs!607482 () Bool)

(assert (= bs!607482 (and d!1271921 b!4326355)))

(assert (=> bs!607482 (= lambda!134402 lambda!134381)))

(declare-fun bs!607483 () Bool)

(assert (= bs!607483 (and d!1271921 d!1271869)))

(assert (=> bs!607483 (= lambda!134402 lambda!134378)))

(declare-fun bs!607484 () Bool)

(assert (= bs!607484 (and d!1271921 d!1271897)))

(assert (=> bs!607484 (= lambda!134402 lambda!134395)))

(declare-fun bs!607485 () Bool)

(assert (= bs!607485 (and d!1271921 d!1271905)))

(assert (=> bs!607485 (not (= lambda!134402 lambda!134398))))

(declare-fun bs!607486 () Bool)

(assert (= bs!607486 (and d!1271921 d!1271889)))

(assert (=> bs!607486 (not (= lambda!134402 lambda!134392))))

(declare-fun bs!607487 () Bool)

(assert (= bs!607487 (and d!1271921 b!4326325)))

(assert (=> bs!607487 (= lambda!134402 lambda!134369)))

(declare-fun bs!607488 () Bool)

(assert (= bs!607488 (and d!1271921 b!4326399)))

(assert (=> bs!607488 (= lambda!134402 lambda!134391)))

(declare-fun bs!607489 () Bool)

(assert (= bs!607489 (and d!1271921 b!4326367)))

(assert (=> bs!607489 (= lambda!134402 lambda!134388)))

(declare-fun bs!607490 () Bool)

(assert (= bs!607490 (and d!1271921 d!1271875)))

(assert (=> bs!607490 (= lambda!134402 lambda!134387)))

(declare-fun bs!607491 () Bool)

(assert (= bs!607491 (and d!1271921 b!4326334)))

(assert (=> bs!607491 (= lambda!134402 lambda!134370)))

(declare-fun lt!1543900 () ListMap!1893)

(assert (=> d!1271921 (invariantList!611 (toList!2617 lt!1543900))))

(declare-fun e!2692054 () ListMap!1893)

(assert (=> d!1271921 (= lt!1543900 e!2692054)))

(declare-fun c!736094 () Bool)

(assert (=> d!1271921 (= c!736094 ((_ is Cons!48448) (ite c!736059 (toList!2616 lt!1543754) (toList!2616 lt!1543722))))))

(assert (=> d!1271921 (forall!8846 (ite c!736059 (toList!2616 lt!1543754) (toList!2616 lt!1543722)) lambda!134402)))

(assert (=> d!1271921 (= (extractMap!392 (ite c!736059 (toList!2616 lt!1543754) (toList!2616 lt!1543722))) lt!1543900)))

(declare-fun b!4326460 () Bool)

(declare-fun addToMapMapFromBucket!59 (List!48571 ListMap!1893) ListMap!1893)

(assert (=> b!4326460 (= e!2692054 (addToMapMapFromBucket!59 (_2!26990 (h!53916 (ite c!736059 (toList!2616 lt!1543754) (toList!2616 lt!1543722)))) (extractMap!392 (t!355478 (ite c!736059 (toList!2616 lt!1543754) (toList!2616 lt!1543722))))))))

(declare-fun b!4326461 () Bool)

(assert (=> b!4326461 (= e!2692054 (ListMap!1894 Nil!48447))))

(assert (= (and d!1271921 c!736094) b!4326460))

(assert (= (and d!1271921 (not c!736094)) b!4326461))

(declare-fun m!4921573 () Bool)

(assert (=> d!1271921 m!4921573))

(declare-fun m!4921575 () Bool)

(assert (=> d!1271921 m!4921575))

(declare-fun m!4921577 () Bool)

(assert (=> b!4326460 m!4921577))

(assert (=> b!4326460 m!4921577))

(declare-fun m!4921579 () Bool)

(assert (=> b!4326460 m!4921579))

(assert (=> bm!300528 d!1271921))

(declare-fun d!1271923 () Bool)

(declare-fun res!1772991 () Bool)

(declare-fun e!2692059 () Bool)

(assert (=> d!1271923 (=> res!1772991 e!2692059)))

(assert (=> d!1271923 (= res!1772991 ((_ is Nil!48448) (ite c!736059 (toList!2616 lt!1543743) (toList!2616 lt!1543722))))))

(assert (=> d!1271923 (= (forall!8846 (ite c!736059 (toList!2616 lt!1543743) (toList!2616 lt!1543722)) (ite c!736059 lambda!134369 lambda!134370)) e!2692059)))

(declare-fun b!4326466 () Bool)

(declare-fun e!2692060 () Bool)

(assert (=> b!4326466 (= e!2692059 e!2692060)))

(declare-fun res!1772992 () Bool)

(assert (=> b!4326466 (=> (not res!1772992) (not e!2692060))))

(declare-fun dynLambda!20526 (Int tuple2!47404) Bool)

(assert (=> b!4326466 (= res!1772992 (dynLambda!20526 (ite c!736059 lambda!134369 lambda!134370) (h!53916 (ite c!736059 (toList!2616 lt!1543743) (toList!2616 lt!1543722)))))))

(declare-fun b!4326467 () Bool)

(assert (=> b!4326467 (= e!2692060 (forall!8846 (t!355478 (ite c!736059 (toList!2616 lt!1543743) (toList!2616 lt!1543722))) (ite c!736059 lambda!134369 lambda!134370)))))

(assert (= (and d!1271923 (not res!1772991)) b!4326466))

(assert (= (and b!4326466 res!1772992) b!4326467))

(declare-fun b_lambda!127547 () Bool)

(assert (=> (not b_lambda!127547) (not b!4326466)))

(declare-fun m!4921581 () Bool)

(assert (=> b!4326466 m!4921581))

(declare-fun m!4921583 () Bool)

(assert (=> b!4326467 m!4921583))

(assert (=> bm!300527 d!1271923))

(declare-fun d!1271925 () Bool)

(declare-fun e!2692061 () Bool)

(assert (=> d!1271925 e!2692061))

(declare-fun res!1772993 () Bool)

(assert (=> d!1271925 (=> (not res!1772993) (not e!2692061))))

(declare-fun lt!1543901 () ListMap!1893)

(assert (=> d!1271925 (= res!1772993 (contains!10538 lt!1543901 (_1!26989 (ite c!736059 lt!1543756 lt!1543755))))))

(declare-fun lt!1543904 () List!48571)

(assert (=> d!1271925 (= lt!1543901 (ListMap!1894 lt!1543904))))

(declare-fun lt!1543903 () Unit!68040)

(declare-fun lt!1543902 () Unit!68040)

(assert (=> d!1271925 (= lt!1543903 lt!1543902)))

(assert (=> d!1271925 (= (getValueByKey!315 lt!1543904 (_1!26989 (ite c!736059 lt!1543756 lt!1543755))) (Some!10327 (_2!26989 (ite c!736059 lt!1543756 lt!1543755))))))

(assert (=> d!1271925 (= lt!1543902 (lemmaContainsTupThenGetReturnValue!108 lt!1543904 (_1!26989 (ite c!736059 lt!1543756 lt!1543755)) (_2!26989 (ite c!736059 lt!1543756 lt!1543755))))))

(assert (=> d!1271925 (= lt!1543904 (insertNoDuplicatedKeys!53 (toList!2617 call!300537) (_1!26989 (ite c!736059 lt!1543756 lt!1543755)) (_2!26989 (ite c!736059 lt!1543756 lt!1543755))))))

(assert (=> d!1271925 (= (+!377 call!300537 (ite c!736059 lt!1543756 lt!1543755)) lt!1543901)))

(declare-fun b!4326468 () Bool)

(declare-fun res!1772994 () Bool)

(assert (=> b!4326468 (=> (not res!1772994) (not e!2692061))))

(assert (=> b!4326468 (= res!1772994 (= (getValueByKey!315 (toList!2617 lt!1543901) (_1!26989 (ite c!736059 lt!1543756 lt!1543755))) (Some!10327 (_2!26989 (ite c!736059 lt!1543756 lt!1543755)))))))

(declare-fun b!4326469 () Bool)

(assert (=> b!4326469 (= e!2692061 (contains!10541 (toList!2617 lt!1543901) (ite c!736059 lt!1543756 lt!1543755)))))

(assert (= (and d!1271925 res!1772993) b!4326468))

(assert (= (and b!4326468 res!1772994) b!4326469))

(declare-fun m!4921585 () Bool)

(assert (=> d!1271925 m!4921585))

(declare-fun m!4921587 () Bool)

(assert (=> d!1271925 m!4921587))

(declare-fun m!4921589 () Bool)

(assert (=> d!1271925 m!4921589))

(declare-fun m!4921591 () Bool)

(assert (=> d!1271925 m!4921591))

(declare-fun m!4921593 () Bool)

(assert (=> b!4326468 m!4921593))

(declare-fun m!4921595 () Bool)

(assert (=> b!4326469 m!4921595))

(assert (=> bm!300517 d!1271925))

(declare-fun d!1271927 () Bool)

(assert (=> d!1271927 (= (map!10491 (ite c!736059 (_2!26992 lt!1543741) (_2!26992 lt!1543737))) (map!10492 (v!42902 (underlying!9799 (ite c!736059 (_2!26992 lt!1543741) (_2!26992 lt!1543737))))))))

(declare-fun bs!607492 () Bool)

(assert (= bs!607492 d!1271927))

(declare-fun m!4921597 () Bool)

(assert (=> bs!607492 m!4921597))

(assert (=> bm!300524 d!1271927))

(declare-fun d!1271929 () Bool)

(declare-fun res!1772995 () Bool)

(declare-fun e!2692062 () Bool)

(assert (=> d!1271929 (=> res!1772995 e!2692062)))

(assert (=> d!1271929 (= res!1772995 (not ((_ is Cons!48447) lt!1543752)))))

(assert (=> d!1271929 (= (noDuplicateKeys!273 lt!1543752) e!2692062)))

(declare-fun b!4326470 () Bool)

(declare-fun e!2692063 () Bool)

(assert (=> b!4326470 (= e!2692062 e!2692063)))

(declare-fun res!1772996 () Bool)

(assert (=> b!4326470 (=> (not res!1772996) (not e!2692063))))

(assert (=> b!4326470 (= res!1772996 (not (containsKey!424 (t!355477 lt!1543752) (_1!26989 (h!53915 lt!1543752)))))))

(declare-fun b!4326471 () Bool)

(assert (=> b!4326471 (= e!2692063 (noDuplicateKeys!273 (t!355477 lt!1543752)))))

(assert (= (and d!1271929 (not res!1772995)) b!4326470))

(assert (= (and b!4326470 res!1772996) b!4326471))

(declare-fun m!4921599 () Bool)

(assert (=> b!4326470 m!4921599))

(declare-fun m!4921601 () Bool)

(assert (=> b!4326471 m!4921601))

(assert (=> b!4326332 d!1271929))

(declare-fun d!1271931 () Bool)

(declare-fun e!2692065 () Bool)

(assert (=> d!1271931 e!2692065))

(declare-fun res!1772997 () Bool)

(assert (=> d!1271931 (=> res!1772997 e!2692065)))

(declare-fun e!2692067 () Bool)

(assert (=> d!1271931 (= res!1772997 e!2692067)))

(declare-fun res!1772998 () Bool)

(assert (=> d!1271931 (=> (not res!1772998) (not e!2692067))))

(declare-fun lt!1543909 () Bool)

(assert (=> d!1271931 (= res!1772998 (not lt!1543909))))

(declare-fun lt!1543906 () Bool)

(assert (=> d!1271931 (= lt!1543909 lt!1543906)))

(declare-fun lt!1543908 () Unit!68040)

(declare-fun e!2692068 () Unit!68040)

(assert (=> d!1271931 (= lt!1543908 e!2692068)))

(declare-fun c!736095 () Bool)

(assert (=> d!1271931 (= c!736095 lt!1543906)))

(assert (=> d!1271931 (= lt!1543906 (containsKey!426 (toList!2617 (ite c!736059 lt!1543736 lt!1543745)) key!2048))))

(assert (=> d!1271931 (= (contains!10538 (ite c!736059 lt!1543736 lt!1543745) key!2048) lt!1543909)))

(declare-fun b!4326472 () Bool)

(declare-fun e!2692066 () Unit!68040)

(assert (=> b!4326472 (= e!2692068 e!2692066)))

(declare-fun c!736097 () Bool)

(declare-fun call!300560 () Bool)

(assert (=> b!4326472 (= c!736097 call!300560)))

(declare-fun b!4326473 () Bool)

(assert (=> b!4326473 false))

(declare-fun lt!1543905 () Unit!68040)

(declare-fun lt!1543911 () Unit!68040)

(assert (=> b!4326473 (= lt!1543905 lt!1543911)))

(assert (=> b!4326473 (containsKey!426 (toList!2617 (ite c!736059 lt!1543736 lt!1543745)) key!2048)))

(assert (=> b!4326473 (= lt!1543911 (lemmaInGetKeysListThenContainsKey!58 (toList!2617 (ite c!736059 lt!1543736 lt!1543745)) key!2048))))

(declare-fun Unit!68060 () Unit!68040)

(assert (=> b!4326473 (= e!2692066 Unit!68060)))

(declare-fun b!4326474 () Bool)

(declare-fun e!2692064 () Bool)

(assert (=> b!4326474 (= e!2692064 (contains!10544 (keys!16210 (ite c!736059 lt!1543736 lt!1543745)) key!2048))))

(declare-fun b!4326475 () Bool)

(declare-fun lt!1543907 () Unit!68040)

(assert (=> b!4326475 (= e!2692068 lt!1543907)))

(declare-fun lt!1543910 () Unit!68040)

(assert (=> b!4326475 (= lt!1543910 (lemmaContainsKeyImpliesGetValueByKeyDefined!232 (toList!2617 (ite c!736059 lt!1543736 lt!1543745)) key!2048))))

(assert (=> b!4326475 (isDefined!7628 (getValueByKey!315 (toList!2617 (ite c!736059 lt!1543736 lt!1543745)) key!2048))))

(declare-fun lt!1543912 () Unit!68040)

(assert (=> b!4326475 (= lt!1543912 lt!1543910)))

(assert (=> b!4326475 (= lt!1543907 (lemmaInListThenGetKeysListContains!58 (toList!2617 (ite c!736059 lt!1543736 lt!1543745)) key!2048))))

(assert (=> b!4326475 call!300560))

(declare-fun b!4326476 () Bool)

(assert (=> b!4326476 (= e!2692065 e!2692064)))

(declare-fun res!1772999 () Bool)

(assert (=> b!4326476 (=> (not res!1772999) (not e!2692064))))

(assert (=> b!4326476 (= res!1772999 (isDefined!7628 (getValueByKey!315 (toList!2617 (ite c!736059 lt!1543736 lt!1543745)) key!2048)))))

(declare-fun b!4326477 () Bool)

(assert (=> b!4326477 (= e!2692067 (not (contains!10544 (keys!16210 (ite c!736059 lt!1543736 lt!1543745)) key!2048)))))

(declare-fun e!2692069 () List!48573)

(declare-fun b!4326478 () Bool)

(assert (=> b!4326478 (= e!2692069 (keys!16210 (ite c!736059 lt!1543736 lt!1543745)))))

(declare-fun b!4326479 () Bool)

(assert (=> b!4326479 (= e!2692069 (getKeysList!61 (toList!2617 (ite c!736059 lt!1543736 lt!1543745))))))

(declare-fun b!4326480 () Bool)

(declare-fun Unit!68061 () Unit!68040)

(assert (=> b!4326480 (= e!2692066 Unit!68061)))

(declare-fun bm!300555 () Bool)

(assert (=> bm!300555 (= call!300560 (contains!10544 e!2692069 key!2048))))

(declare-fun c!736096 () Bool)

(assert (=> bm!300555 (= c!736096 c!736095)))

(assert (= (and d!1271931 c!736095) b!4326475))

(assert (= (and d!1271931 (not c!736095)) b!4326472))

(assert (= (and b!4326472 c!736097) b!4326473))

(assert (= (and b!4326472 (not c!736097)) b!4326480))

(assert (= (or b!4326475 b!4326472) bm!300555))

(assert (= (and bm!300555 c!736096) b!4326479))

(assert (= (and bm!300555 (not c!736096)) b!4326478))

(assert (= (and d!1271931 res!1772998) b!4326477))

(assert (= (and d!1271931 (not res!1772997)) b!4326476))

(assert (= (and b!4326476 res!1772999) b!4326474))

(declare-fun m!4921603 () Bool)

(assert (=> b!4326475 m!4921603))

(declare-fun m!4921605 () Bool)

(assert (=> b!4326475 m!4921605))

(assert (=> b!4326475 m!4921605))

(declare-fun m!4921607 () Bool)

(assert (=> b!4326475 m!4921607))

(declare-fun m!4921609 () Bool)

(assert (=> b!4326475 m!4921609))

(declare-fun m!4921611 () Bool)

(assert (=> b!4326477 m!4921611))

(assert (=> b!4326477 m!4921611))

(declare-fun m!4921613 () Bool)

(assert (=> b!4326477 m!4921613))

(assert (=> b!4326478 m!4921611))

(declare-fun m!4921615 () Bool)

(assert (=> bm!300555 m!4921615))

(declare-fun m!4921617 () Bool)

(assert (=> b!4326473 m!4921617))

(declare-fun m!4921619 () Bool)

(assert (=> b!4326473 m!4921619))

(assert (=> b!4326476 m!4921605))

(assert (=> b!4326476 m!4921605))

(assert (=> b!4326476 m!4921607))

(assert (=> b!4326474 m!4921611))

(assert (=> b!4326474 m!4921611))

(assert (=> b!4326474 m!4921613))

(declare-fun m!4921621 () Bool)

(assert (=> b!4326479 m!4921621))

(assert (=> d!1271931 m!4921617))

(assert (=> bm!300515 d!1271931))

(declare-fun bs!607493 () Bool)

(declare-fun d!1271933 () Bool)

(assert (= bs!607493 (and d!1271933 d!1271865)))

(declare-fun lambda!134403 () Int)

(assert (=> bs!607493 (not (= lambda!134403 lambda!134373))))

(declare-fun bs!607494 () Bool)

(assert (= bs!607494 (and d!1271933 b!4326355)))

(assert (=> bs!607494 (= lambda!134403 lambda!134381)))

(declare-fun bs!607495 () Bool)

(assert (= bs!607495 (and d!1271933 d!1271869)))

(assert (=> bs!607495 (= lambda!134403 lambda!134378)))

(declare-fun bs!607496 () Bool)

(assert (= bs!607496 (and d!1271933 d!1271897)))

(assert (=> bs!607496 (= lambda!134403 lambda!134395)))

(declare-fun bs!607497 () Bool)

(assert (= bs!607497 (and d!1271933 d!1271905)))

(assert (=> bs!607497 (not (= lambda!134403 lambda!134398))))

(declare-fun bs!607498 () Bool)

(assert (= bs!607498 (and d!1271933 d!1271889)))

(assert (=> bs!607498 (not (= lambda!134403 lambda!134392))))

(declare-fun bs!607499 () Bool)

(assert (= bs!607499 (and d!1271933 b!4326325)))

(assert (=> bs!607499 (= lambda!134403 lambda!134369)))

(declare-fun bs!607500 () Bool)

(assert (= bs!607500 (and d!1271933 b!4326399)))

(assert (=> bs!607500 (= lambda!134403 lambda!134391)))

(declare-fun bs!607501 () Bool)

(assert (= bs!607501 (and d!1271933 d!1271921)))

(assert (=> bs!607501 (= lambda!134403 lambda!134402)))

(declare-fun bs!607502 () Bool)

(assert (= bs!607502 (and d!1271933 b!4326367)))

(assert (=> bs!607502 (= lambda!134403 lambda!134388)))

(declare-fun bs!607503 () Bool)

(assert (= bs!607503 (and d!1271933 d!1271875)))

(assert (=> bs!607503 (= lambda!134403 lambda!134387)))

(declare-fun bs!607504 () Bool)

(assert (= bs!607504 (and d!1271933 b!4326334)))

(assert (=> bs!607504 (= lambda!134403 lambda!134370)))

(declare-fun lt!1543913 () ListMap!1893)

(assert (=> d!1271933 (invariantList!611 (toList!2617 lt!1543913))))

(declare-fun e!2692070 () ListMap!1893)

(assert (=> d!1271933 (= lt!1543913 e!2692070)))

(declare-fun c!736098 () Bool)

(assert (=> d!1271933 (= c!736098 ((_ is Cons!48448) (toList!2616 lt!1543734)))))

(assert (=> d!1271933 (forall!8846 (toList!2616 lt!1543734) lambda!134403)))

(assert (=> d!1271933 (= (extractMap!392 (toList!2616 lt!1543734)) lt!1543913)))

(declare-fun b!4326481 () Bool)

(assert (=> b!4326481 (= e!2692070 (addToMapMapFromBucket!59 (_2!26990 (h!53916 (toList!2616 lt!1543734))) (extractMap!392 (t!355478 (toList!2616 lt!1543734)))))))

(declare-fun b!4326482 () Bool)

(assert (=> b!4326482 (= e!2692070 (ListMap!1894 Nil!48447))))

(assert (= (and d!1271933 c!736098) b!4326481))

(assert (= (and d!1271933 (not c!736098)) b!4326482))

(declare-fun m!4921623 () Bool)

(assert (=> d!1271933 m!4921623))

(declare-fun m!4921625 () Bool)

(assert (=> d!1271933 m!4921625))

(declare-fun m!4921627 () Bool)

(assert (=> b!4326481 m!4921627))

(assert (=> b!4326481 m!4921627))

(declare-fun m!4921629 () Bool)

(assert (=> b!4326481 m!4921629))

(assert (=> bm!300525 d!1271933))

(declare-fun d!1271935 () Bool)

(assert (=> d!1271935 (= (eq!171 call!300520 call!300526) (= (content!7579 (toList!2617 call!300520)) (content!7579 (toList!2617 call!300526))))))

(declare-fun bs!607505 () Bool)

(assert (= bs!607505 d!1271935))

(declare-fun m!4921631 () Bool)

(assert (=> bs!607505 m!4921631))

(declare-fun m!4921633 () Bool)

(assert (=> bs!607505 m!4921633))

(assert (=> bm!300506 d!1271935))

(declare-fun d!1271937 () Bool)

(declare-fun e!2692073 () Bool)

(assert (=> d!1271937 e!2692073))

(declare-fun res!1773004 () Bool)

(assert (=> d!1271937 (=> (not res!1773004) (not e!2692073))))

(declare-fun lt!1543923 () ListLongMap!1233)

(assert (=> d!1271937 (= res!1773004 (contains!10542 lt!1543923 (_1!26990 (ite c!736059 (tuple2!47405 lt!1543753 lt!1543752) (tuple2!47405 lt!1543763 lt!1543735)))))))

(declare-fun lt!1543925 () List!48572)

(assert (=> d!1271937 (= lt!1543923 (ListLongMap!1234 lt!1543925))))

(declare-fun lt!1543924 () Unit!68040)

(declare-fun lt!1543922 () Unit!68040)

(assert (=> d!1271937 (= lt!1543924 lt!1543922)))

(assert (=> d!1271937 (= (getValueByKey!316 lt!1543925 (_1!26990 (ite c!736059 (tuple2!47405 lt!1543753 lt!1543752) (tuple2!47405 lt!1543763 lt!1543735)))) (Some!10329 (_2!26990 (ite c!736059 (tuple2!47405 lt!1543753 lt!1543752) (tuple2!47405 lt!1543763 lt!1543735)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!109 (List!48572 (_ BitVec 64) List!48571) Unit!68040)

(assert (=> d!1271937 (= lt!1543922 (lemmaContainsTupThenGetReturnValue!109 lt!1543925 (_1!26990 (ite c!736059 (tuple2!47405 lt!1543753 lt!1543752) (tuple2!47405 lt!1543763 lt!1543735))) (_2!26990 (ite c!736059 (tuple2!47405 lt!1543753 lt!1543752) (tuple2!47405 lt!1543763 lt!1543735)))))))

(declare-fun insertStrictlySorted!64 (List!48572 (_ BitVec 64) List!48571) List!48572)

(assert (=> d!1271937 (= lt!1543925 (insertStrictlySorted!64 (toList!2616 lt!1543734) (_1!26990 (ite c!736059 (tuple2!47405 lt!1543753 lt!1543752) (tuple2!47405 lt!1543763 lt!1543735))) (_2!26990 (ite c!736059 (tuple2!47405 lt!1543753 lt!1543752) (tuple2!47405 lt!1543763 lt!1543735)))))))

(assert (=> d!1271937 (= (+!376 lt!1543734 (ite c!736059 (tuple2!47405 lt!1543753 lt!1543752) (tuple2!47405 lt!1543763 lt!1543735))) lt!1543923)))

(declare-fun b!4326487 () Bool)

(declare-fun res!1773005 () Bool)

(assert (=> b!4326487 (=> (not res!1773005) (not e!2692073))))

(assert (=> b!4326487 (= res!1773005 (= (getValueByKey!316 (toList!2616 lt!1543923) (_1!26990 (ite c!736059 (tuple2!47405 lt!1543753 lt!1543752) (tuple2!47405 lt!1543763 lt!1543735)))) (Some!10329 (_2!26990 (ite c!736059 (tuple2!47405 lt!1543753 lt!1543752) (tuple2!47405 lt!1543763 lt!1543735))))))))

(declare-fun b!4326488 () Bool)

(assert (=> b!4326488 (= e!2692073 (contains!10543 (toList!2616 lt!1543923) (ite c!736059 (tuple2!47405 lt!1543753 lt!1543752) (tuple2!47405 lt!1543763 lt!1543735))))))

(assert (= (and d!1271937 res!1773004) b!4326487))

(assert (= (and b!4326487 res!1773005) b!4326488))

(declare-fun m!4921635 () Bool)

(assert (=> d!1271937 m!4921635))

(declare-fun m!4921637 () Bool)

(assert (=> d!1271937 m!4921637))

(declare-fun m!4921639 () Bool)

(assert (=> d!1271937 m!4921639))

(declare-fun m!4921641 () Bool)

(assert (=> d!1271937 m!4921641))

(declare-fun m!4921643 () Bool)

(assert (=> b!4326487 m!4921643))

(declare-fun m!4921645 () Bool)

(assert (=> b!4326488 m!4921645))

(assert (=> bm!300513 d!1271937))

(declare-fun d!1271939 () Bool)

(declare-fun e!2692076 () Bool)

(assert (=> d!1271939 e!2692076))

(declare-fun c!736101 () Bool)

(assert (=> d!1271939 (= c!736101 (contains!10540 (v!42903 (underlying!9800 thiss!42308)) (ite c!736059 lt!1543753 lt!1543763)))))

(declare-fun lt!1543928 () List!48571)

(declare-fun apply!11186 (LongMapFixedSize!9570 (_ BitVec 64)) List!48571)

(assert (=> d!1271939 (= lt!1543928 (apply!11186 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308)))) (ite c!736059 lt!1543753 lt!1543763)))))

(assert (=> d!1271939 (valid!3803 (v!42903 (underlying!9800 thiss!42308)))))

(assert (=> d!1271939 (= (apply!11184 (v!42903 (underlying!9800 thiss!42308)) (ite c!736059 lt!1543753 lt!1543763)) lt!1543928)))

(declare-fun b!4326493 () Bool)

(declare-fun get!15703 (Option!10330) List!48571)

(assert (=> b!4326493 (= e!2692076 (= lt!1543928 (get!15703 (getValueByKey!316 (toList!2616 (map!10491 (v!42903 (underlying!9800 thiss!42308)))) (ite c!736059 lt!1543753 lt!1543763)))))))

(declare-fun b!4326494 () Bool)

(declare-fun dynLambda!20527 (Int (_ BitVec 64)) List!48571)

(assert (=> b!4326494 (= e!2692076 (= lt!1543928 (dynLambda!20527 (defaultEntry!5190 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308))))) (ite c!736059 lt!1543753 lt!1543763))))))

(assert (=> b!4326494 ((_ is LongMap!4785) (v!42903 (underlying!9800 thiss!42308)))))

(assert (= (and d!1271939 c!736101) b!4326493))

(assert (= (and d!1271939 (not c!736101)) b!4326494))

(declare-fun b_lambda!127549 () Bool)

(assert (=> (not b_lambda!127549) (not b!4326494)))

(declare-fun t!355480 () Bool)

(declare-fun tb!257391 () Bool)

(assert (=> (and b!4326326 (= (defaultEntry!5190 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308))))) (defaultEntry!5190 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308)))))) t!355480) tb!257391))

(assert (=> b!4326494 t!355480))

(declare-fun result!314944 () Bool)

(declare-fun b_and!340689 () Bool)

(assert (= b_and!340685 (and (=> t!355480 result!314944) b_and!340689)))

(declare-fun m!4921647 () Bool)

(assert (=> d!1271939 m!4921647))

(declare-fun m!4921649 () Bool)

(assert (=> d!1271939 m!4921649))

(assert (=> d!1271939 m!4921521))

(assert (=> b!4326493 m!4921349))

(declare-fun m!4921651 () Bool)

(assert (=> b!4326493 m!4921651))

(assert (=> b!4326493 m!4921651))

(declare-fun m!4921653 () Bool)

(assert (=> b!4326493 m!4921653))

(declare-fun m!4921655 () Bool)

(assert (=> b!4326494 m!4921655))

(assert (=> bm!300512 d!1271939))

(declare-fun d!1271941 () Bool)

(declare-fun lt!1543929 () ListMap!1893)

(assert (=> d!1271941 (invariantList!611 (toList!2617 lt!1543929))))

(assert (=> d!1271941 (= lt!1543929 (extractMap!392 (toList!2616 (map!10491 (v!42903 (underlying!9800 (_2!26991 lt!1543724)))))))))

(assert (=> d!1271941 (valid!3802 (_2!26991 lt!1543724))))

(assert (=> d!1271941 (= (map!10490 (_2!26991 lt!1543724)) lt!1543929)))

(declare-fun bs!607506 () Bool)

(assert (= bs!607506 d!1271941))

(declare-fun m!4921657 () Bool)

(assert (=> bs!607506 m!4921657))

(assert (=> bs!607506 m!4921427))

(declare-fun m!4921659 () Bool)

(assert (=> bs!607506 m!4921659))

(assert (=> bs!607506 m!4921345))

(assert (=> bm!300504 d!1271941))

(declare-fun d!1271943 () Bool)

(declare-fun e!2692077 () Bool)

(assert (=> d!1271943 e!2692077))

(declare-fun res!1773006 () Bool)

(assert (=> d!1271943 (=> (not res!1773006) (not e!2692077))))

(declare-fun lt!1543930 () ListMap!1893)

(assert (=> d!1271943 (= res!1773006 (contains!10538 lt!1543930 (_1!26989 (ite c!736059 lt!1543756 lt!1543755))))))

(declare-fun lt!1543933 () List!48571)

(assert (=> d!1271943 (= lt!1543930 (ListMap!1894 lt!1543933))))

(declare-fun lt!1543932 () Unit!68040)

(declare-fun lt!1543931 () Unit!68040)

(assert (=> d!1271943 (= lt!1543932 lt!1543931)))

(assert (=> d!1271943 (= (getValueByKey!315 lt!1543933 (_1!26989 (ite c!736059 lt!1543756 lt!1543755))) (Some!10327 (_2!26989 (ite c!736059 lt!1543756 lt!1543755))))))

(assert (=> d!1271943 (= lt!1543931 (lemmaContainsTupThenGetReturnValue!108 lt!1543933 (_1!26989 (ite c!736059 lt!1543756 lt!1543755)) (_2!26989 (ite c!736059 lt!1543756 lt!1543755))))))

(assert (=> d!1271943 (= lt!1543933 (insertNoDuplicatedKeys!53 (toList!2617 lt!1543739) (_1!26989 (ite c!736059 lt!1543756 lt!1543755)) (_2!26989 (ite c!736059 lt!1543756 lt!1543755))))))

(assert (=> d!1271943 (= (+!377 lt!1543739 (ite c!736059 lt!1543756 lt!1543755)) lt!1543930)))

(declare-fun b!4326495 () Bool)

(declare-fun res!1773007 () Bool)

(assert (=> b!4326495 (=> (not res!1773007) (not e!2692077))))

(assert (=> b!4326495 (= res!1773007 (= (getValueByKey!315 (toList!2617 lt!1543930) (_1!26989 (ite c!736059 lt!1543756 lt!1543755))) (Some!10327 (_2!26989 (ite c!736059 lt!1543756 lt!1543755)))))))

(declare-fun b!4326496 () Bool)

(assert (=> b!4326496 (= e!2692077 (contains!10541 (toList!2617 lt!1543930) (ite c!736059 lt!1543756 lt!1543755)))))

(assert (= (and d!1271943 res!1773006) b!4326495))

(assert (= (and b!4326495 res!1773007) b!4326496))

(declare-fun m!4921661 () Bool)

(assert (=> d!1271943 m!4921661))

(declare-fun m!4921663 () Bool)

(assert (=> d!1271943 m!4921663))

(declare-fun m!4921665 () Bool)

(assert (=> d!1271943 m!4921665))

(declare-fun m!4921667 () Bool)

(assert (=> d!1271943 m!4921667))

(declare-fun m!4921669 () Bool)

(assert (=> b!4326495 m!4921669))

(declare-fun m!4921671 () Bool)

(assert (=> b!4326496 m!4921671))

(assert (=> bm!300514 d!1271943))

(declare-fun bs!607507 () Bool)

(declare-fun b!4326497 () Bool)

(assert (= bs!607507 (and b!4326497 d!1271865)))

(declare-fun lambda!134404 () Int)

(assert (=> bs!607507 (not (= lambda!134404 lambda!134373))))

(declare-fun bs!607508 () Bool)

(assert (= bs!607508 (and b!4326497 d!1271869)))

(assert (=> bs!607508 (= lambda!134404 lambda!134378)))

(declare-fun bs!607509 () Bool)

(assert (= bs!607509 (and b!4326497 d!1271897)))

(assert (=> bs!607509 (= lambda!134404 lambda!134395)))

(declare-fun bs!607510 () Bool)

(assert (= bs!607510 (and b!4326497 d!1271905)))

(assert (=> bs!607510 (not (= lambda!134404 lambda!134398))))

(declare-fun bs!607511 () Bool)

(assert (= bs!607511 (and b!4326497 d!1271889)))

(assert (=> bs!607511 (not (= lambda!134404 lambda!134392))))

(declare-fun bs!607512 () Bool)

(assert (= bs!607512 (and b!4326497 b!4326325)))

(assert (=> bs!607512 (= lambda!134404 lambda!134369)))

(declare-fun bs!607513 () Bool)

(assert (= bs!607513 (and b!4326497 b!4326399)))

(assert (=> bs!607513 (= lambda!134404 lambda!134391)))

(declare-fun bs!607514 () Bool)

(assert (= bs!607514 (and b!4326497 d!1271921)))

(assert (=> bs!607514 (= lambda!134404 lambda!134402)))

(declare-fun bs!607515 () Bool)

(assert (= bs!607515 (and b!4326497 b!4326367)))

(assert (=> bs!607515 (= lambda!134404 lambda!134388)))

(declare-fun bs!607516 () Bool)

(assert (= bs!607516 (and b!4326497 d!1271933)))

(assert (=> bs!607516 (= lambda!134404 lambda!134403)))

(declare-fun bs!607517 () Bool)

(assert (= bs!607517 (and b!4326497 b!4326355)))

(assert (=> bs!607517 (= lambda!134404 lambda!134381)))

(declare-fun bs!607518 () Bool)

(assert (= bs!607518 (and b!4326497 d!1271875)))

(assert (=> bs!607518 (= lambda!134404 lambda!134387)))

(declare-fun bs!607519 () Bool)

(assert (= bs!607519 (and b!4326497 b!4326334)))

(assert (=> bs!607519 (= lambda!134404 lambda!134370)))

(declare-fun d!1271945 () Bool)

(declare-fun res!1773008 () Bool)

(declare-fun e!2692078 () Bool)

(assert (=> d!1271945 (=> (not res!1773008) (not e!2692078))))

(assert (=> d!1271945 (= res!1773008 (valid!3803 (v!42903 (underlying!9800 thiss!42308))))))

(assert (=> d!1271945 (= (valid!3802 thiss!42308) e!2692078)))

(declare-fun res!1773009 () Bool)

(assert (=> b!4326497 (=> (not res!1773009) (not e!2692078))))

(assert (=> b!4326497 (= res!1773009 (forall!8846 (toList!2616 (map!10491 (v!42903 (underlying!9800 thiss!42308)))) lambda!134404))))

(declare-fun b!4326498 () Bool)

(assert (=> b!4326498 (= e!2692078 (allKeysSameHashInMap!413 (map!10491 (v!42903 (underlying!9800 thiss!42308))) (hashF!7007 thiss!42308)))))

(assert (= (and d!1271945 res!1773008) b!4326497))

(assert (= (and b!4326497 res!1773009) b!4326498))

(assert (=> d!1271945 m!4921521))

(assert (=> b!4326497 m!4921349))

(declare-fun m!4921673 () Bool)

(assert (=> b!4326497 m!4921673))

(assert (=> b!4326498 m!4921349))

(assert (=> b!4326498 m!4921349))

(declare-fun m!4921675 () Bool)

(assert (=> b!4326498 m!4921675))

(assert (=> b!4326307 d!1271945))

(declare-fun d!1271947 () Bool)

(declare-fun lt!1543934 () ListMap!1893)

(assert (=> d!1271947 (invariantList!611 (toList!2617 lt!1543934))))

(assert (=> d!1271947 (= lt!1543934 (extractMap!392 (toList!2616 (map!10491 (v!42903 (underlying!9800 (ite c!736059 lt!1543759 lt!1543730)))))))))

(assert (=> d!1271947 (valid!3802 (ite c!736059 lt!1543759 lt!1543730))))

(assert (=> d!1271947 (= (map!10490 (ite c!736059 lt!1543759 lt!1543730)) lt!1543934)))

(declare-fun bs!607520 () Bool)

(assert (= bs!607520 d!1271947))

(declare-fun m!4921677 () Bool)

(assert (=> bs!607520 m!4921677))

(assert (=> bs!607520 m!4921393))

(declare-fun m!4921679 () Bool)

(assert (=> bs!607520 m!4921679))

(assert (=> bs!607520 m!4921281))

(assert (=> bm!300532 d!1271947))

(declare-fun b!4326517 () Bool)

(declare-fun e!2692093 () Bool)

(declare-fun call!300566 () ListLongMap!1233)

(declare-fun call!300565 () ListLongMap!1233)

(assert (=> b!4326517 (= e!2692093 (= call!300566 call!300565))))

(declare-fun b!4326518 () Bool)

(declare-fun e!2692092 () Bool)

(assert (=> b!4326518 (= e!2692093 e!2692092)))

(declare-fun res!1773018 () Bool)

(assert (=> b!4326518 (= res!1773018 (contains!10542 call!300566 (ite c!736059 lt!1543753 lt!1543763)))))

(assert (=> b!4326518 (=> (not res!1773018) (not e!2692092))))

(declare-fun b!4326520 () Bool)

(assert (=> b!4326520 (= e!2692092 (= call!300566 (+!376 call!300565 (tuple2!47405 (ite c!736059 lt!1543753 lt!1543763) (ite c!736059 lt!1543752 lt!1543735)))))))

(declare-fun b!4326521 () Bool)

(declare-fun e!2692091 () Bool)

(assert (=> b!4326521 (= e!2692091 e!2692093)))

(declare-fun c!736109 () Bool)

(declare-fun lt!1543946 () tuple2!47408)

(assert (=> b!4326521 (= c!736109 (_1!26992 lt!1543946))))

(declare-fun b!4326522 () Bool)

(declare-fun e!2692090 () tuple2!47408)

(declare-datatypes ((tuple2!47412 0))(
  ( (tuple2!47413 (_1!26994 Bool) (_2!26994 LongMapFixedSize!9570)) )
))
(declare-fun lt!1543943 () tuple2!47412)

(assert (=> b!4326522 (= e!2692090 (tuple2!47409 (_1!26994 lt!1543943) (LongMap!4785 (Cell!18950 (_2!26994 lt!1543943)))))))

(declare-fun lt!1543945 () tuple2!47408)

(declare-fun update!565 (LongMapFixedSize!9570 (_ BitVec 64) List!48571) tuple2!47412)

(assert (=> b!4326522 (= lt!1543943 (update!565 (v!42902 (underlying!9799 (_2!26992 lt!1543945))) (ite c!736059 lt!1543753 lt!1543763) (ite c!736059 lt!1543752 lt!1543735)))))

(declare-fun b!4326523 () Bool)

(declare-fun e!2692089 () tuple2!47408)

(assert (=> b!4326523 (= e!2692089 (tuple2!47409 true (v!42903 (underlying!9800 thiss!42308))))))

(declare-fun b!4326524 () Bool)

(declare-fun res!1773016 () Bool)

(assert (=> b!4326524 (=> (not res!1773016) (not e!2692091))))

(assert (=> b!4326524 (= res!1773016 (valid!3803 (_2!26992 lt!1543946)))))

(declare-fun bm!300560 () Bool)

(assert (=> bm!300560 (= call!300565 (map!10491 (v!42903 (underlying!9800 thiss!42308))))))

(declare-fun b!4326519 () Bool)

(assert (=> b!4326519 (= e!2692090 (tuple2!47409 false (_2!26992 lt!1543945)))))

(declare-fun d!1271949 () Bool)

(assert (=> d!1271949 e!2692091))

(declare-fun res!1773017 () Bool)

(assert (=> d!1271949 (=> (not res!1773017) (not e!2692091))))

(assert (=> d!1271949 (= res!1773017 ((_ is LongMap!4785) (_2!26992 lt!1543946)))))

(assert (=> d!1271949 (= lt!1543946 e!2692090)))

(declare-fun c!736108 () Bool)

(assert (=> d!1271949 (= c!736108 (_1!26992 lt!1543945))))

(assert (=> d!1271949 (= lt!1543945 e!2692089)))

(declare-fun c!736110 () Bool)

(declare-fun imbalanced!90 (MutLongMap!4785) Bool)

(assert (=> d!1271949 (= c!736110 (imbalanced!90 (v!42903 (underlying!9800 thiss!42308))))))

(assert (=> d!1271949 (valid!3803 (v!42903 (underlying!9800 thiss!42308)))))

(assert (=> d!1271949 (= (update!564 (v!42903 (underlying!9800 thiss!42308)) (ite c!736059 lt!1543753 lt!1543763) (ite c!736059 lt!1543752 lt!1543735)) lt!1543946)))

(declare-fun bm!300561 () Bool)

(assert (=> bm!300561 (= call!300566 (map!10491 (_2!26992 lt!1543946)))))

(declare-fun b!4326525 () Bool)

(declare-fun lt!1543944 () tuple2!47408)

(assert (=> b!4326525 (= e!2692089 (tuple2!47409 (_1!26992 lt!1543944) (_2!26992 lt!1543944)))))

(declare-fun repack!94 (MutLongMap!4785) tuple2!47408)

(assert (=> b!4326525 (= lt!1543944 (repack!94 (v!42903 (underlying!9800 thiss!42308))))))

(assert (= (and d!1271949 c!736110) b!4326525))

(assert (= (and d!1271949 (not c!736110)) b!4326523))

(assert (= (and d!1271949 c!736108) b!4326522))

(assert (= (and d!1271949 (not c!736108)) b!4326519))

(assert (= (and d!1271949 res!1773017) b!4326524))

(assert (= (and b!4326524 res!1773016) b!4326521))

(assert (= (and b!4326521 c!736109) b!4326518))

(assert (= (and b!4326521 (not c!736109)) b!4326517))

(assert (= (and b!4326518 res!1773018) b!4326520))

(assert (= (or b!4326518 b!4326520 b!4326517) bm!300561))

(assert (= (or b!4326520 b!4326517) bm!300560))

(declare-fun m!4921681 () Bool)

(assert (=> b!4326524 m!4921681))

(assert (=> bm!300560 m!4921349))

(declare-fun m!4921683 () Bool)

(assert (=> bm!300561 m!4921683))

(declare-fun m!4921685 () Bool)

(assert (=> b!4326525 m!4921685))

(declare-fun m!4921687 () Bool)

(assert (=> b!4326518 m!4921687))

(declare-fun m!4921689 () Bool)

(assert (=> b!4326522 m!4921689))

(declare-fun m!4921691 () Bool)

(assert (=> d!1271949 m!4921691))

(assert (=> d!1271949 m!4921521))

(declare-fun m!4921693 () Bool)

(assert (=> b!4326520 m!4921693))

(assert (=> bm!300522 d!1271949))

(declare-fun d!1271951 () Bool)

(declare-fun res!1773019 () Bool)

(declare-fun e!2692094 () Bool)

(assert (=> d!1271951 (=> res!1773019 e!2692094)))

(assert (=> d!1271951 (= res!1773019 ((_ is Nil!48448) (ite c!736059 (toList!2616 lt!1543754) (toList!2616 lt!1543761))))))

(assert (=> d!1271951 (= (forall!8846 (ite c!736059 (toList!2616 lt!1543754) (toList!2616 lt!1543761)) (ite c!736059 lambda!134369 lambda!134370)) e!2692094)))

(declare-fun b!4326526 () Bool)

(declare-fun e!2692095 () Bool)

(assert (=> b!4326526 (= e!2692094 e!2692095)))

(declare-fun res!1773020 () Bool)

(assert (=> b!4326526 (=> (not res!1773020) (not e!2692095))))

(assert (=> b!4326526 (= res!1773020 (dynLambda!20526 (ite c!736059 lambda!134369 lambda!134370) (h!53916 (ite c!736059 (toList!2616 lt!1543754) (toList!2616 lt!1543761)))))))

(declare-fun b!4326527 () Bool)

(assert (=> b!4326527 (= e!2692095 (forall!8846 (t!355478 (ite c!736059 (toList!2616 lt!1543754) (toList!2616 lt!1543761))) (ite c!736059 lambda!134369 lambda!134370)))))

(assert (= (and d!1271951 (not res!1773019)) b!4326526))

(assert (= (and b!4326526 res!1773020) b!4326527))

(declare-fun b_lambda!127551 () Bool)

(assert (=> (not b_lambda!127551) (not b!4326526)))

(declare-fun m!4921695 () Bool)

(assert (=> b!4326526 m!4921695))

(declare-fun m!4921697 () Bool)

(assert (=> b!4326527 m!4921697))

(assert (=> bm!300503 d!1271951))

(declare-fun d!1271953 () Bool)

(assert (=> d!1271953 (= (contains!10538 (ite c!736059 lt!1543742 lt!1543745) key!2048) (contains!10538 (ite c!736059 lt!1543736 lt!1543748) key!2048))))

(declare-fun lt!1543949 () Unit!68040)

(declare-fun choose!26459 (ListMap!1893 ListMap!1893 K!9709) Unit!68040)

(assert (=> d!1271953 (= lt!1543949 (choose!26459 (ite c!736059 lt!1543742 lt!1543745) (ite c!736059 lt!1543736 lt!1543748) key!2048))))

(assert (=> d!1271953 (eq!171 (ite c!736059 lt!1543742 lt!1543745) (ite c!736059 lt!1543736 lt!1543748))))

(assert (=> d!1271953 (= (lemmaEquivalentThenSameContains!74 (ite c!736059 lt!1543742 lt!1543745) (ite c!736059 lt!1543736 lt!1543748) key!2048) lt!1543949)))

(declare-fun bs!607521 () Bool)

(assert (= bs!607521 d!1271953))

(declare-fun m!4921699 () Bool)

(assert (=> bs!607521 m!4921699))

(declare-fun m!4921701 () Bool)

(assert (=> bs!607521 m!4921701))

(declare-fun m!4921703 () Bool)

(assert (=> bs!607521 m!4921703))

(assert (=> bs!607521 m!4921365))

(assert (=> bm!300523 d!1271953))

(declare-fun e!2692098 () Bool)

(declare-fun tp!1327798 () Bool)

(declare-fun b!4326532 () Bool)

(assert (=> b!4326532 (= e!2692098 (and tp_is_empty!24239 tp_is_empty!24237 tp!1327798))))

(assert (=> b!4326308 (= tp!1327791 e!2692098)))

(assert (= (and b!4326308 ((_ is Cons!48447) mapDefault!21315)) b!4326532))

(declare-fun condMapEmpty!21318 () Bool)

(declare-fun mapDefault!21318 () List!48571)

(assert (=> mapNonEmpty!21315 (= condMapEmpty!21318 (= mapRest!21315 ((as const (Array (_ BitVec 32) List!48571)) mapDefault!21318)))))

(declare-fun e!2692103 () Bool)

(declare-fun mapRes!21318 () Bool)

(assert (=> mapNonEmpty!21315 (= tp!1327789 (and e!2692103 mapRes!21318))))

(declare-fun b!4326540 () Bool)

(declare-fun tp!1327805 () Bool)

(assert (=> b!4326540 (= e!2692103 (and tp_is_empty!24239 tp_is_empty!24237 tp!1327805))))

(declare-fun mapNonEmpty!21318 () Bool)

(declare-fun tp!1327806 () Bool)

(declare-fun e!2692104 () Bool)

(assert (=> mapNonEmpty!21318 (= mapRes!21318 (and tp!1327806 e!2692104))))

(declare-fun mapRest!21318 () (Array (_ BitVec 32) List!48571))

(declare-fun mapValue!21318 () List!48571)

(declare-fun mapKey!21318 () (_ BitVec 32))

(assert (=> mapNonEmpty!21318 (= mapRest!21315 (store mapRest!21318 mapKey!21318 mapValue!21318))))

(declare-fun mapIsEmpty!21318 () Bool)

(assert (=> mapIsEmpty!21318 mapRes!21318))

(declare-fun b!4326539 () Bool)

(declare-fun tp!1327807 () Bool)

(assert (=> b!4326539 (= e!2692104 (and tp_is_empty!24239 tp_is_empty!24237 tp!1327807))))

(assert (= (and mapNonEmpty!21315 condMapEmpty!21318) mapIsEmpty!21318))

(assert (= (and mapNonEmpty!21315 (not condMapEmpty!21318)) mapNonEmpty!21318))

(assert (= (and mapNonEmpty!21318 ((_ is Cons!48447) mapValue!21318)) b!4326539))

(assert (= (and mapNonEmpty!21315 ((_ is Cons!48447) mapDefault!21318)) b!4326540))

(declare-fun m!4921705 () Bool)

(assert (=> mapNonEmpty!21318 m!4921705))

(declare-fun b!4326541 () Bool)

(declare-fun tp!1327808 () Bool)

(declare-fun e!2692105 () Bool)

(assert (=> b!4326541 (= e!2692105 (and tp_is_empty!24239 tp_is_empty!24237 tp!1327808))))

(assert (=> mapNonEmpty!21315 (= tp!1327794 e!2692105)))

(assert (= (and mapNonEmpty!21315 ((_ is Cons!48447) mapValue!21315)) b!4326541))

(declare-fun e!2692106 () Bool)

(declare-fun tp!1327809 () Bool)

(declare-fun b!4326542 () Bool)

(assert (=> b!4326542 (= e!2692106 (and tp_is_empty!24239 tp_is_empty!24237 tp!1327809))))

(assert (=> b!4326326 (= tp!1327793 e!2692106)))

(assert (= (and b!4326326 ((_ is Cons!48447) (zeroValue!5062 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308))))))) b!4326542))

(declare-fun b!4326543 () Bool)

(declare-fun tp!1327810 () Bool)

(declare-fun e!2692107 () Bool)

(assert (=> b!4326543 (= e!2692107 (and tp_is_empty!24239 tp_is_empty!24237 tp!1327810))))

(assert (=> b!4326326 (= tp!1327792 e!2692107)))

(assert (= (and b!4326326 ((_ is Cons!48447) (minValue!5062 (v!42902 (underlying!9799 (v!42903 (underlying!9800 thiss!42308))))))) b!4326543))

(declare-fun b_lambda!127553 () Bool)

(assert (= b_lambda!127549 (or (and b!4326326 b_free!129099) b_lambda!127553)))

(check-sat (not b!4326430) (not b!4326475) (not b!4326477) (not b!4326518) (not b!4326543) (not d!1271947) (not b!4326522) (not b!4326400) (not b!4326481) (not d!1271953) (not d!1271909) (not d!1271915) (not b!4326540) (not b!4326479) (not b!4326399) (not b!4326454) (not b!4326469) (not bm!300554) (not b!4326346) (not b!4326443) (not b!4326431) (not b!4326488) (not d!1271943) (not b_lambda!127553) (not d!1271919) (not b!4326435) (not b!4326498) (not d!1271933) (not bm!300546) (not b!4326471) (not b!4326424) (not d!1271913) (not d!1271887) (not b!4326356) (not b!4326468) (not d!1271897) (not tb!257391) (not bm!300555) (not b!4326496) (not d!1271885) (not b!4326520) (not b!4326525) (not bm!300545) (not b!4326434) (not d!1271903) (not b!4326368) (not d!1271875) (not d!1271881) (not bm!300560) (not d!1271925) (not b!4326425) (not b!4326397) (not b!4326350) (not b!4326527) (not b!4326532) (not b!4326470) (not d!1271883) (not b!4326432) (not b!4326493) b_and!340689 b_and!340687 (not d!1271895) (not b!4326473) (not bm!300547) (not b!4326542) tp_is_empty!24239 (not b!4326487) (not b!4326426) (not b!4326427) (not b!4326367) (not b!4326395) (not d!1271939) (not d!1271949) (not d!1271937) (not d!1271907) (not d!1271871) (not b!4326541) (not d!1271935) (not d!1271873) (not mapNonEmpty!21318) (not d!1271905) (not b_lambda!127547) (not b!4326460) (not d!1271869) (not b!4326347) (not d!1271865) (not bm!300548) (not d!1271901) (not b!4326476) (not b!4326495) (not d!1271879) (not b!4326421) (not b!4326524) (not b_lambda!127551) (not d!1271941) (not b!4326497) (not b_next!129803) (not b_next!129805) (not b!4326539) (not d!1271889) (not b!4326467) (not b!4326365) (not b!4326398) (not b!4326478) (not bm!300553) (not d!1271927) (not b!4326433) (not bm!300561) (not d!1271867) tp_is_empty!24237 (not b!4326422) (not d!1271945) (not d!1271917) (not b!4326423) (not bm!300550) (not b!4326436) (not bm!300549) (not d!1271921) (not d!1271931) (not b!4326355) (not b!4326366) (not b!4326474))
(check-sat b_and!340689 b_and!340687 (not b_next!129805) (not b_next!129803))
