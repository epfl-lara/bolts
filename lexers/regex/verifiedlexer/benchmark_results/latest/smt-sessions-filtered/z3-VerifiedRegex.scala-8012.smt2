; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414962 () Bool)

(assert start!414962)

(declare-fun b!4314738 () Bool)

(declare-fun b_free!128779 () Bool)

(declare-fun b_next!129483 () Bool)

(assert (=> b!4314738 (= b_free!128779 (not b_next!129483))))

(declare-fun tp!1325652 () Bool)

(declare-fun b_and!340251 () Bool)

(assert (=> b!4314738 (= tp!1325652 b_and!340251)))

(declare-fun b!4314736 () Bool)

(declare-fun b_free!128781 () Bool)

(declare-fun b_next!129485 () Bool)

(assert (=> b!4314736 (= b_free!128781 (not b_next!129485))))

(declare-fun tp!1325651 () Bool)

(declare-fun b_and!340253 () Bool)

(assert (=> b!4314736 (= tp!1325651 b_and!340253)))

(declare-fun mapIsEmpty!20992 () Bool)

(declare-fun mapRes!20992 () Bool)

(assert (=> mapIsEmpty!20992 mapRes!20992))

(declare-fun b!4314728 () Bool)

(declare-fun res!1768507 () Bool)

(declare-fun e!2683900 () Bool)

(assert (=> b!4314728 (=> (not res!1768507) (not e!2683900))))

(declare-datatypes ((V!9711 0))(
  ( (V!9712 (val!15865 Int)) )
))
(declare-datatypes ((K!9509 0))(
  ( (K!9510 (val!15866 Int)) )
))
(declare-datatypes ((tuple2!46892 0))(
  ( (tuple2!46893 (_1!26728 K!9509) (_2!26728 V!9711)) )
))
(declare-datatypes ((List!48405 0))(
  ( (Nil!48281) (Cons!48281 (h!53730 tuple2!46892) (t!355244 List!48405)) )
))
(declare-datatypes ((array!17010 0))(
  ( (array!17011 (arr!7595 (Array (_ BitVec 32) (_ BitVec 64))) (size!35634 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4621 0))(
  ( (HashableExt!4620 (__x!30140 Int)) )
))
(declare-datatypes ((array!17012 0))(
  ( (array!17013 (arr!7596 (Array (_ BitVec 32) List!48405)) (size!35635 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9410 0))(
  ( (LongMapFixedSize!9411 (defaultEntry!5090 Int) (mask!13286 (_ BitVec 32)) (extraKeys!4954 (_ BitVec 32)) (zeroValue!4964 List!48405) (minValue!4964 List!48405) (_size!9453 (_ BitVec 32)) (_keys!5005 array!17010) (_values!4986 array!17012) (_vacant!4766 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18629 0))(
  ( (Cell!18630 (v!42529 LongMapFixedSize!9410)) )
))
(declare-datatypes ((MutLongMap!4705 0))(
  ( (LongMap!4705 (underlying!9639 Cell!18629)) (MutLongMapExt!4704 (__x!30141 Int)) )
))
(declare-datatypes ((Cell!18631 0))(
  ( (Cell!18632 (v!42530 MutLongMap!4705)) )
))
(declare-datatypes ((MutableMap!4611 0))(
  ( (MutableMapExt!4610 (__x!30142 Int)) (HashMap!4611 (underlying!9640 Cell!18631) (hashF!6808 Hashable!4621) (_size!9454 (_ BitVec 32)) (defaultValue!4782 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4611)

(declare-fun valid!3702 (MutableMap!4611) Bool)

(assert (=> b!4314728 (= res!1768507 (valid!3702 thiss!42308))))

(declare-fun b!4314729 () Bool)

(declare-fun e!2683895 () Bool)

(declare-datatypes ((tuple2!46894 0))(
  ( (tuple2!46895 (_1!26729 (_ BitVec 64)) (_2!26729 List!48405)) )
))
(declare-datatypes ((List!48406 0))(
  ( (Nil!48282) (Cons!48282 (h!53731 tuple2!46894) (t!355245 List!48406)) )
))
(declare-datatypes ((ListLongMap!1089 0))(
  ( (ListLongMap!1090 (toList!2475 List!48406)) )
))
(declare-fun lt!1534319 () ListLongMap!1089)

(declare-fun allKeysSameHashInMap!364 (ListLongMap!1089 Hashable!4621) Bool)

(assert (=> b!4314729 (= e!2683895 (allKeysSameHashInMap!364 lt!1534319 (hashF!6808 thiss!42308)))))

(declare-fun mapNonEmpty!20992 () Bool)

(declare-fun tp!1325650 () Bool)

(declare-fun tp!1325648 () Bool)

(assert (=> mapNonEmpty!20992 (= mapRes!20992 (and tp!1325650 tp!1325648))))

(declare-fun mapRest!20992 () (Array (_ BitVec 32) List!48405))

(declare-fun mapValue!20992 () List!48405)

(declare-fun mapKey!20992 () (_ BitVec 32))

(assert (=> mapNonEmpty!20992 (= (arr!7596 (_values!4986 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308)))))) (store mapRest!20992 mapKey!20992 mapValue!20992))))

(declare-fun b!4314730 () Bool)

(declare-fun e!2683901 () Bool)

(declare-fun tp!1325654 () Bool)

(assert (=> b!4314730 (= e!2683901 (and tp!1325654 mapRes!20992))))

(declare-fun condMapEmpty!20992 () Bool)

(declare-fun mapDefault!20992 () List!48405)

(assert (=> b!4314730 (= condMapEmpty!20992 (= (arr!7596 (_values!4986 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48405)) mapDefault!20992)))))

(declare-fun b!4314731 () Bool)

(declare-fun e!2683898 () Bool)

(declare-fun e!2683893 () Bool)

(declare-fun lt!1534322 () MutLongMap!4705)

(get-info :version)

(assert (=> b!4314731 (= e!2683898 (and e!2683893 ((_ is LongMap!4705) lt!1534322)))))

(assert (=> b!4314731 (= lt!1534322 (v!42530 (underlying!9640 thiss!42308)))))

(declare-fun res!1768505 () Bool)

(assert (=> start!414962 (=> (not res!1768505) (not e!2683900))))

(assert (=> start!414962 (= res!1768505 ((_ is HashMap!4611) thiss!42308))))

(assert (=> start!414962 e!2683900))

(declare-fun e!2683896 () Bool)

(assert (=> start!414962 e!2683896))

(declare-fun tp_is_empty!23925 () Bool)

(assert (=> start!414962 tp_is_empty!23925))

(declare-fun tp_is_empty!23927 () Bool)

(assert (=> start!414962 tp_is_empty!23927))

(declare-fun b!4314732 () Bool)

(declare-fun res!1768502 () Bool)

(declare-fun e!2683899 () Bool)

(assert (=> b!4314732 (=> (not res!1768502) (not e!2683899))))

(declare-fun lt!1534315 () List!48405)

(declare-fun key!2048 () K!9509)

(declare-fun containsKey!359 (List!48405 K!9509) Bool)

(assert (=> b!4314732 (= res!1768502 (not (containsKey!359 lt!1534315 key!2048)))))

(declare-fun b!4314733 () Bool)

(declare-fun e!2683891 () Bool)

(assert (=> b!4314733 (= e!2683900 e!2683891)))

(declare-fun res!1768501 () Bool)

(assert (=> b!4314733 (=> (not res!1768501) (not e!2683891))))

(declare-fun contains!10280 (MutableMap!4611 K!9509) Bool)

(assert (=> b!4314733 (= res!1768501 (contains!10280 thiss!42308 key!2048))))

(declare-fun lt!1534314 () ListLongMap!1089)

(declare-fun map!10290 (MutLongMap!4705) ListLongMap!1089)

(assert (=> b!4314733 (= lt!1534314 (map!10290 (v!42530 (underlying!9640 thiss!42308))))))

(declare-datatypes ((ListMap!1755 0))(
  ( (ListMap!1756 (toList!2476 List!48405)) )
))
(declare-fun lt!1534324 () ListMap!1755)

(declare-fun map!10291 (MutableMap!4611) ListMap!1755)

(assert (=> b!4314733 (= lt!1534324 (map!10291 thiss!42308))))

(declare-fun b!4314734 () Bool)

(declare-fun e!2683894 () Bool)

(declare-fun e!2683892 () Bool)

(assert (=> b!4314734 (= e!2683894 e!2683892)))

(declare-fun b!4314735 () Bool)

(declare-fun e!2683890 () Bool)

(assert (=> b!4314735 (= e!2683891 e!2683890)))

(declare-fun res!1768503 () Bool)

(assert (=> b!4314735 (=> (not res!1768503) (not e!2683890))))

(declare-datatypes ((tuple2!46896 0))(
  ( (tuple2!46897 (_1!26730 Bool) (_2!26730 MutLongMap!4705)) )
))
(declare-fun lt!1534323 () tuple2!46896)

(assert (=> b!4314735 (= res!1768503 (_1!26730 lt!1534323))))

(declare-fun lt!1534311 () List!48405)

(declare-fun lt!1534325 () (_ BitVec 64))

(declare-fun update!479 (MutLongMap!4705 (_ BitVec 64) List!48405) tuple2!46896)

(assert (=> b!4314735 (= lt!1534323 (update!479 (v!42530 (underlying!9640 thiss!42308)) lt!1534325 lt!1534311))))

(declare-fun lt!1534321 () tuple2!46892)

(assert (=> b!4314735 (= lt!1534311 (Cons!48281 lt!1534321 lt!1534315))))

(declare-fun lt!1534327 () List!48405)

(declare-fun removePairForKey!241 (List!48405 K!9509) List!48405)

(assert (=> b!4314735 (= lt!1534315 (removePairForKey!241 lt!1534327 key!2048))))

(declare-fun v!9179 () V!9711)

(assert (=> b!4314735 (= lt!1534321 (tuple2!46893 key!2048 v!9179))))

(declare-fun apply!11073 (MutLongMap!4705 (_ BitVec 64)) List!48405)

(assert (=> b!4314735 (= lt!1534327 (apply!11073 (v!42530 (underlying!9640 thiss!42308)) lt!1534325))))

(declare-fun hash!1089 (Hashable!4621 K!9509) (_ BitVec 64))

(assert (=> b!4314735 (= lt!1534325 (hash!1089 (hashF!6808 thiss!42308) key!2048))))

(assert (=> b!4314736 (= e!2683896 (and e!2683898 tp!1325651))))

(declare-fun b!4314737 () Bool)

(assert (=> b!4314737 (= e!2683893 e!2683894)))

(declare-fun tp!1325649 () Bool)

(declare-fun tp!1325653 () Bool)

(declare-fun array_inv!5457 (array!17010) Bool)

(declare-fun array_inv!5458 (array!17012) Bool)

(assert (=> b!4314738 (= e!2683892 (and tp!1325652 tp!1325653 tp!1325649 (array_inv!5457 (_keys!5005 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308)))))) (array_inv!5458 (_values!4986 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308)))))) e!2683901))))

(declare-fun b!4314739 () Bool)

(declare-fun lambda!133347 () Int)

(declare-fun forall!8772 (List!48406 Int) Bool)

(assert (=> b!4314739 (= e!2683890 (not (forall!8772 (toList!2475 (map!10290 (_2!26730 lt!1534323))) lambda!133347)))))

(declare-fun lt!1534318 () ListMap!1755)

(declare-fun lt!1534326 () ListMap!1755)

(declare-fun contains!10281 (ListMap!1755 K!9509) Bool)

(assert (=> b!4314739 (= (contains!10281 lt!1534318 key!2048) (contains!10281 lt!1534326 key!2048))))

(declare-datatypes ((Unit!67477 0))(
  ( (Unit!67478) )
))
(declare-fun lt!1534313 () Unit!67477)

(declare-fun lemmaEquivalentThenSameContains!59 (ListMap!1755 ListMap!1755 K!9509) Unit!67477)

(assert (=> b!4314739 (= lt!1534313 (lemmaEquivalentThenSameContains!59 lt!1534318 lt!1534326 key!2048))))

(declare-fun +!297 (ListMap!1755 tuple2!46892) ListMap!1755)

(assert (=> b!4314739 (= lt!1534326 (+!297 lt!1534324 lt!1534321))))

(assert (=> b!4314739 (= lt!1534318 (map!10291 (HashMap!4611 (Cell!18632 (_2!26730 lt!1534323)) (hashF!6808 thiss!42308) (_size!9454 thiss!42308) (defaultValue!4782 thiss!42308))))))

(declare-fun eq!145 (ListMap!1755 ListMap!1755) Bool)

(declare-fun extractMap!348 (List!48406) ListMap!1755)

(assert (=> b!4314739 (eq!145 (extractMap!348 (toList!2475 lt!1534319)) (+!297 (extractMap!348 (toList!2475 lt!1534314)) lt!1534321))))

(declare-fun lt!1534310 () Unit!67477)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!64 (ListLongMap!1089 (_ BitVec 64) List!48405 K!9509 V!9711 Hashable!4621) Unit!67477)

(assert (=> b!4314739 (= lt!1534310 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!64 lt!1534314 lt!1534325 lt!1534311 key!2048 v!9179 (hashF!6808 thiss!42308)))))

(assert (=> b!4314739 e!2683895))

(declare-fun res!1768506 () Bool)

(assert (=> b!4314739 (=> (not res!1768506) (not e!2683895))))

(assert (=> b!4314739 (= res!1768506 (forall!8772 (toList!2475 lt!1534319) lambda!133347))))

(declare-fun +!298 (ListLongMap!1089 tuple2!46894) ListLongMap!1089)

(assert (=> b!4314739 (= lt!1534319 (+!298 lt!1534314 (tuple2!46895 lt!1534325 lt!1534311)))))

(declare-fun lt!1534317 () Unit!67477)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!166 (ListLongMap!1089 (_ BitVec 64) List!48405 Hashable!4621) Unit!67477)

(assert (=> b!4314739 (= lt!1534317 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!166 lt!1534314 lt!1534325 lt!1534311 (hashF!6808 thiss!42308)))))

(assert (=> b!4314739 e!2683899))

(declare-fun res!1768504 () Bool)

(assert (=> b!4314739 (=> (not res!1768504) (not e!2683899))))

(declare-fun noDuplicateKeys!244 (List!48405) Bool)

(assert (=> b!4314739 (= res!1768504 (noDuplicateKeys!244 lt!1534315))))

(declare-fun lt!1534316 () Unit!67477)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!192 (List!48405 K!9509) Unit!67477)

(assert (=> b!4314739 (= lt!1534316 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!192 lt!1534327 key!2048))))

(declare-fun allKeysSameHash!217 (List!48405 (_ BitVec 64) Hashable!4621) Bool)

(assert (=> b!4314739 (allKeysSameHash!217 lt!1534315 lt!1534325 (hashF!6808 thiss!42308))))

(declare-fun lt!1534320 () Unit!67477)

(declare-fun lemmaRemovePairForKeyPreservesHash!197 (List!48405 K!9509 (_ BitVec 64) Hashable!4621) Unit!67477)

(assert (=> b!4314739 (= lt!1534320 (lemmaRemovePairForKeyPreservesHash!197 lt!1534327 key!2048 lt!1534325 (hashF!6808 thiss!42308)))))

(assert (=> b!4314739 (allKeysSameHash!217 lt!1534327 lt!1534325 (hashF!6808 thiss!42308))))

(declare-fun lt!1534312 () Unit!67477)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!204 (List!48406 (_ BitVec 64) List!48405 Hashable!4621) Unit!67477)

(assert (=> b!4314739 (= lt!1534312 (lemmaInLongMapAllKeySameHashThenForTuple!204 (toList!2475 lt!1534314) lt!1534325 lt!1534327 (hashF!6808 thiss!42308)))))

(declare-fun b!4314740 () Bool)

(assert (=> b!4314740 (= e!2683899 (noDuplicateKeys!244 lt!1534311))))

(assert (= (and start!414962 res!1768505) b!4314728))

(assert (= (and b!4314728 res!1768507) b!4314733))

(assert (= (and b!4314733 res!1768501) b!4314735))

(assert (= (and b!4314735 res!1768503) b!4314739))

(assert (= (and b!4314739 res!1768504) b!4314732))

(assert (= (and b!4314732 res!1768502) b!4314740))

(assert (= (and b!4314739 res!1768506) b!4314729))

(assert (= (and b!4314730 condMapEmpty!20992) mapIsEmpty!20992))

(assert (= (and b!4314730 (not condMapEmpty!20992)) mapNonEmpty!20992))

(assert (= b!4314738 b!4314730))

(assert (= b!4314734 b!4314738))

(assert (= b!4314737 b!4314734))

(assert (= (and b!4314731 ((_ is LongMap!4705) (v!42530 (underlying!9640 thiss!42308)))) b!4314737))

(assert (= b!4314736 b!4314731))

(assert (= (and start!414962 ((_ is HashMap!4611) thiss!42308)) b!4314736))

(declare-fun m!4908159 () Bool)

(assert (=> mapNonEmpty!20992 m!4908159))

(declare-fun m!4908161 () Bool)

(assert (=> b!4314729 m!4908161))

(declare-fun m!4908163 () Bool)

(assert (=> b!4314738 m!4908163))

(declare-fun m!4908165 () Bool)

(assert (=> b!4314738 m!4908165))

(declare-fun m!4908167 () Bool)

(assert (=> b!4314728 m!4908167))

(declare-fun m!4908169 () Bool)

(assert (=> b!4314740 m!4908169))

(declare-fun m!4908171 () Bool)

(assert (=> b!4314733 m!4908171))

(declare-fun m!4908173 () Bool)

(assert (=> b!4314733 m!4908173))

(declare-fun m!4908175 () Bool)

(assert (=> b!4314733 m!4908175))

(declare-fun m!4908177 () Bool)

(assert (=> b!4314732 m!4908177))

(declare-fun m!4908179 () Bool)

(assert (=> b!4314735 m!4908179))

(declare-fun m!4908181 () Bool)

(assert (=> b!4314735 m!4908181))

(declare-fun m!4908183 () Bool)

(assert (=> b!4314735 m!4908183))

(declare-fun m!4908185 () Bool)

(assert (=> b!4314735 m!4908185))

(declare-fun m!4908187 () Bool)

(assert (=> b!4314739 m!4908187))

(declare-fun m!4908189 () Bool)

(assert (=> b!4314739 m!4908189))

(declare-fun m!4908191 () Bool)

(assert (=> b!4314739 m!4908191))

(declare-fun m!4908193 () Bool)

(assert (=> b!4314739 m!4908193))

(declare-fun m!4908195 () Bool)

(assert (=> b!4314739 m!4908195))

(declare-fun m!4908197 () Bool)

(assert (=> b!4314739 m!4908197))

(declare-fun m!4908199 () Bool)

(assert (=> b!4314739 m!4908199))

(declare-fun m!4908201 () Bool)

(assert (=> b!4314739 m!4908201))

(declare-fun m!4908203 () Bool)

(assert (=> b!4314739 m!4908203))

(assert (=> b!4314739 m!4908189))

(declare-fun m!4908205 () Bool)

(assert (=> b!4314739 m!4908205))

(declare-fun m!4908207 () Bool)

(assert (=> b!4314739 m!4908207))

(assert (=> b!4314739 m!4908191))

(declare-fun m!4908209 () Bool)

(assert (=> b!4314739 m!4908209))

(assert (=> b!4314739 m!4908207))

(declare-fun m!4908211 () Bool)

(assert (=> b!4314739 m!4908211))

(declare-fun m!4908213 () Bool)

(assert (=> b!4314739 m!4908213))

(declare-fun m!4908215 () Bool)

(assert (=> b!4314739 m!4908215))

(declare-fun m!4908217 () Bool)

(assert (=> b!4314739 m!4908217))

(declare-fun m!4908219 () Bool)

(assert (=> b!4314739 m!4908219))

(declare-fun m!4908221 () Bool)

(assert (=> b!4314739 m!4908221))

(declare-fun m!4908223 () Bool)

(assert (=> b!4314739 m!4908223))

(declare-fun m!4908225 () Bool)

(assert (=> b!4314739 m!4908225))

(declare-fun m!4908227 () Bool)

(assert (=> b!4314739 m!4908227))

(check-sat (not b!4314738) (not mapNonEmpty!20992) (not b!4314733) (not b!4314729) (not b!4314730) (not b!4314739) b_and!340251 b_and!340253 tp_is_empty!23927 tp_is_empty!23925 (not b!4314735) (not b_next!129483) (not b!4314740) (not b!4314732) (not b!4314728) (not b_next!129485))
(check-sat b_and!340251 b_and!340253 (not b_next!129485) (not b_next!129483))
(get-model)

(declare-fun bm!298478 () Bool)

(declare-fun call!298484 () ListLongMap!1089)

(assert (=> bm!298478 (= call!298484 (map!10290 (v!42530 (underlying!9640 thiss!42308))))))

(declare-fun b!4314760 () Bool)

(declare-fun e!2683914 () Bool)

(declare-fun e!2683913 () Bool)

(assert (=> b!4314760 (= e!2683914 e!2683913)))

(declare-fun c!733541 () Bool)

(declare-fun lt!1534336 () tuple2!46896)

(assert (=> b!4314760 (= c!733541 (_1!26730 lt!1534336))))

(declare-fun e!2683912 () Bool)

(declare-fun call!298483 () ListLongMap!1089)

(declare-fun b!4314761 () Bool)

(assert (=> b!4314761 (= e!2683912 (= call!298483 (+!298 call!298484 (tuple2!46895 lt!1534325 lt!1534311))))))

(declare-fun b!4314762 () Bool)

(assert (=> b!4314762 (= e!2683913 (= call!298483 call!298484))))

(declare-fun b!4314763 () Bool)

(declare-fun res!1768516 () Bool)

(assert (=> b!4314763 (=> (not res!1768516) (not e!2683914))))

(declare-fun valid!3703 (MutLongMap!4705) Bool)

(assert (=> b!4314763 (= res!1768516 (valid!3703 (_2!26730 lt!1534336)))))

(declare-fun bm!298479 () Bool)

(assert (=> bm!298479 (= call!298483 (map!10290 (_2!26730 lt!1534336)))))

(declare-fun b!4314764 () Bool)

(declare-fun e!2683916 () tuple2!46896)

(assert (=> b!4314764 (= e!2683916 (tuple2!46897 true (v!42530 (underlying!9640 thiss!42308))))))

(declare-fun b!4314765 () Bool)

(assert (=> b!4314765 (= e!2683913 e!2683912)))

(declare-fun res!1768515 () Bool)

(declare-fun contains!10282 (ListLongMap!1089 (_ BitVec 64)) Bool)

(assert (=> b!4314765 (= res!1768515 (contains!10282 call!298483 lt!1534325))))

(assert (=> b!4314765 (=> (not res!1768515) (not e!2683912))))

(declare-fun b!4314766 () Bool)

(declare-fun e!2683915 () tuple2!46896)

(declare-fun lt!1534337 () tuple2!46896)

(assert (=> b!4314766 (= e!2683915 (tuple2!46897 false (_2!26730 lt!1534337)))))

(declare-fun b!4314767 () Bool)

(declare-datatypes ((tuple2!46898 0))(
  ( (tuple2!46899 (_1!26731 Bool) (_2!26731 LongMapFixedSize!9410)) )
))
(declare-fun lt!1534338 () tuple2!46898)

(assert (=> b!4314767 (= e!2683915 (tuple2!46897 (_1!26731 lt!1534338) (LongMap!4705 (Cell!18630 (_2!26731 lt!1534338)))))))

(declare-fun update!480 (LongMapFixedSize!9410 (_ BitVec 64) List!48405) tuple2!46898)

(assert (=> b!4314767 (= lt!1534338 (update!480 (v!42529 (underlying!9639 (_2!26730 lt!1534337))) lt!1534325 lt!1534311))))

(declare-fun b!4314759 () Bool)

(declare-fun lt!1534339 () tuple2!46896)

(assert (=> b!4314759 (= e!2683916 (tuple2!46897 (_1!26730 lt!1534339) (_2!26730 lt!1534339)))))

(declare-fun repack!69 (MutLongMap!4705) tuple2!46896)

(assert (=> b!4314759 (= lt!1534339 (repack!69 (v!42530 (underlying!9640 thiss!42308))))))

(declare-fun d!1269017 () Bool)

(assert (=> d!1269017 e!2683914))

(declare-fun res!1768514 () Bool)

(assert (=> d!1269017 (=> (not res!1768514) (not e!2683914))))

(assert (=> d!1269017 (= res!1768514 ((_ is LongMap!4705) (_2!26730 lt!1534336)))))

(assert (=> d!1269017 (= lt!1534336 e!2683915)))

(declare-fun c!733539 () Bool)

(assert (=> d!1269017 (= c!733539 (_1!26730 lt!1534337))))

(assert (=> d!1269017 (= lt!1534337 e!2683916)))

(declare-fun c!733540 () Bool)

(declare-fun imbalanced!65 (MutLongMap!4705) Bool)

(assert (=> d!1269017 (= c!733540 (imbalanced!65 (v!42530 (underlying!9640 thiss!42308))))))

(assert (=> d!1269017 (valid!3703 (v!42530 (underlying!9640 thiss!42308)))))

(assert (=> d!1269017 (= (update!479 (v!42530 (underlying!9640 thiss!42308)) lt!1534325 lt!1534311) lt!1534336)))

(assert (= (and d!1269017 c!733540) b!4314759))

(assert (= (and d!1269017 (not c!733540)) b!4314764))

(assert (= (and d!1269017 c!733539) b!4314767))

(assert (= (and d!1269017 (not c!733539)) b!4314766))

(assert (= (and d!1269017 res!1768514) b!4314763))

(assert (= (and b!4314763 res!1768516) b!4314760))

(assert (= (and b!4314760 c!733541) b!4314765))

(assert (= (and b!4314760 (not c!733541)) b!4314762))

(assert (= (and b!4314765 res!1768515) b!4314761))

(assert (= (or b!4314765 b!4314761 b!4314762) bm!298479))

(assert (= (or b!4314761 b!4314762) bm!298478))

(declare-fun m!4908229 () Bool)

(assert (=> d!1269017 m!4908229))

(declare-fun m!4908231 () Bool)

(assert (=> d!1269017 m!4908231))

(declare-fun m!4908233 () Bool)

(assert (=> b!4314765 m!4908233))

(declare-fun m!4908235 () Bool)

(assert (=> b!4314767 m!4908235))

(assert (=> bm!298478 m!4908173))

(declare-fun m!4908237 () Bool)

(assert (=> bm!298479 m!4908237))

(declare-fun m!4908239 () Bool)

(assert (=> b!4314763 m!4908239))

(declare-fun m!4908241 () Bool)

(assert (=> b!4314761 m!4908241))

(declare-fun m!4908243 () Bool)

(assert (=> b!4314759 m!4908243))

(assert (=> b!4314735 d!1269017))

(declare-fun b!4314778 () Bool)

(declare-fun e!2683922 () List!48405)

(assert (=> b!4314778 (= e!2683922 (Cons!48281 (h!53730 lt!1534327) (removePairForKey!241 (t!355244 lt!1534327) key!2048)))))

(declare-fun b!4314776 () Bool)

(declare-fun e!2683921 () List!48405)

(assert (=> b!4314776 (= e!2683921 (t!355244 lt!1534327))))

(declare-fun d!1269019 () Bool)

(declare-fun lt!1534342 () List!48405)

(assert (=> d!1269019 (not (containsKey!359 lt!1534342 key!2048))))

(assert (=> d!1269019 (= lt!1534342 e!2683921)))

(declare-fun c!733546 () Bool)

(assert (=> d!1269019 (= c!733546 (and ((_ is Cons!48281) lt!1534327) (= (_1!26728 (h!53730 lt!1534327)) key!2048)))))

(assert (=> d!1269019 (noDuplicateKeys!244 lt!1534327)))

(assert (=> d!1269019 (= (removePairForKey!241 lt!1534327 key!2048) lt!1534342)))

(declare-fun b!4314777 () Bool)

(assert (=> b!4314777 (= e!2683921 e!2683922)))

(declare-fun c!733547 () Bool)

(assert (=> b!4314777 (= c!733547 ((_ is Cons!48281) lt!1534327))))

(declare-fun b!4314779 () Bool)

(assert (=> b!4314779 (= e!2683922 Nil!48281)))

(assert (= (and d!1269019 c!733546) b!4314776))

(assert (= (and d!1269019 (not c!733546)) b!4314777))

(assert (= (and b!4314777 c!733547) b!4314778))

(assert (= (and b!4314777 (not c!733547)) b!4314779))

(declare-fun m!4908245 () Bool)

(assert (=> b!4314778 m!4908245))

(declare-fun m!4908247 () Bool)

(assert (=> d!1269019 m!4908247))

(declare-fun m!4908249 () Bool)

(assert (=> d!1269019 m!4908249))

(assert (=> b!4314735 d!1269019))

(declare-fun d!1269021 () Bool)

(declare-fun e!2683925 () Bool)

(assert (=> d!1269021 e!2683925))

(declare-fun c!733550 () Bool)

(declare-fun contains!10283 (MutLongMap!4705 (_ BitVec 64)) Bool)

(assert (=> d!1269021 (= c!733550 (contains!10283 (v!42530 (underlying!9640 thiss!42308)) lt!1534325))))

(declare-fun lt!1534345 () List!48405)

(declare-fun apply!11074 (LongMapFixedSize!9410 (_ BitVec 64)) List!48405)

(assert (=> d!1269021 (= lt!1534345 (apply!11074 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308)))) lt!1534325))))

(assert (=> d!1269021 (valid!3703 (v!42530 (underlying!9640 thiss!42308)))))

(assert (=> d!1269021 (= (apply!11073 (v!42530 (underlying!9640 thiss!42308)) lt!1534325) lt!1534345)))

(declare-fun b!4314784 () Bool)

(declare-datatypes ((Option!10263 0))(
  ( (None!10262) (Some!10262 (v!42535 List!48405)) )
))
(declare-fun get!15632 (Option!10263) List!48405)

(declare-fun getValueByKey!275 (List!48406 (_ BitVec 64)) Option!10263)

(assert (=> b!4314784 (= e!2683925 (= lt!1534345 (get!15632 (getValueByKey!275 (toList!2475 (map!10290 (v!42530 (underlying!9640 thiss!42308)))) lt!1534325))))))

(declare-fun b!4314785 () Bool)

(declare-fun dynLambda!20464 (Int (_ BitVec 64)) List!48405)

(assert (=> b!4314785 (= e!2683925 (= lt!1534345 (dynLambda!20464 (defaultEntry!5090 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308))))) lt!1534325)))))

(assert (=> b!4314785 ((_ is LongMap!4705) (v!42530 (underlying!9640 thiss!42308)))))

(assert (= (and d!1269021 c!733550) b!4314784))

(assert (= (and d!1269021 (not c!733550)) b!4314785))

(declare-fun b_lambda!126867 () Bool)

(assert (=> (not b_lambda!126867) (not b!4314785)))

(declare-fun t!355247 () Bool)

(declare-fun tb!257325 () Bool)

(assert (=> (and b!4314738 (= (defaultEntry!5090 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308))))) (defaultEntry!5090 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308)))))) t!355247) tb!257325))

(assert (=> b!4314785 t!355247))

(declare-fun result!314778 () Bool)

(declare-fun b_and!340255 () Bool)

(assert (= b_and!340251 (and (=> t!355247 result!314778) b_and!340255)))

(declare-fun m!4908251 () Bool)

(assert (=> d!1269021 m!4908251))

(declare-fun m!4908253 () Bool)

(assert (=> d!1269021 m!4908253))

(assert (=> d!1269021 m!4908231))

(assert (=> b!4314784 m!4908173))

(declare-fun m!4908255 () Bool)

(assert (=> b!4314784 m!4908255))

(assert (=> b!4314784 m!4908255))

(declare-fun m!4908257 () Bool)

(assert (=> b!4314784 m!4908257))

(declare-fun m!4908259 () Bool)

(assert (=> b!4314785 m!4908259))

(assert (=> b!4314735 d!1269021))

(declare-fun d!1269023 () Bool)

(declare-fun hash!1094 (Hashable!4621 K!9509) (_ BitVec 64))

(assert (=> d!1269023 (= (hash!1089 (hashF!6808 thiss!42308) key!2048) (hash!1094 (hashF!6808 thiss!42308) key!2048))))

(declare-fun bs!605648 () Bool)

(assert (= bs!605648 d!1269023))

(declare-fun m!4908261 () Bool)

(assert (=> bs!605648 m!4908261))

(assert (=> b!4314735 d!1269023))

(declare-fun d!1269025 () Bool)

(declare-fun res!1768521 () Bool)

(declare-fun e!2683930 () Bool)

(assert (=> d!1269025 (=> res!1768521 e!2683930)))

(assert (=> d!1269025 (= res!1768521 (not ((_ is Cons!48281) lt!1534311)))))

(assert (=> d!1269025 (= (noDuplicateKeys!244 lt!1534311) e!2683930)))

(declare-fun b!4314790 () Bool)

(declare-fun e!2683931 () Bool)

(assert (=> b!4314790 (= e!2683930 e!2683931)))

(declare-fun res!1768522 () Bool)

(assert (=> b!4314790 (=> (not res!1768522) (not e!2683931))))

(assert (=> b!4314790 (= res!1768522 (not (containsKey!359 (t!355244 lt!1534311) (_1!26728 (h!53730 lt!1534311)))))))

(declare-fun b!4314791 () Bool)

(assert (=> b!4314791 (= e!2683931 (noDuplicateKeys!244 (t!355244 lt!1534311)))))

(assert (= (and d!1269025 (not res!1768521)) b!4314790))

(assert (= (and b!4314790 res!1768522) b!4314791))

(declare-fun m!4908263 () Bool)

(assert (=> b!4314790 m!4908263))

(declare-fun m!4908265 () Bool)

(assert (=> b!4314791 m!4908265))

(assert (=> b!4314740 d!1269025))

(declare-fun bs!605649 () Bool)

(declare-fun b!4314796 () Bool)

(assert (= bs!605649 (and b!4314796 b!4314739)))

(declare-fun lambda!133350 () Int)

(assert (=> bs!605649 (= lambda!133350 lambda!133347)))

(declare-fun d!1269027 () Bool)

(declare-fun res!1768527 () Bool)

(declare-fun e!2683934 () Bool)

(assert (=> d!1269027 (=> (not res!1768527) (not e!2683934))))

(assert (=> d!1269027 (= res!1768527 (valid!3703 (v!42530 (underlying!9640 thiss!42308))))))

(assert (=> d!1269027 (= (valid!3702 thiss!42308) e!2683934)))

(declare-fun res!1768528 () Bool)

(assert (=> b!4314796 (=> (not res!1768528) (not e!2683934))))

(assert (=> b!4314796 (= res!1768528 (forall!8772 (toList!2475 (map!10290 (v!42530 (underlying!9640 thiss!42308)))) lambda!133350))))

(declare-fun b!4314797 () Bool)

(assert (=> b!4314797 (= e!2683934 (allKeysSameHashInMap!364 (map!10290 (v!42530 (underlying!9640 thiss!42308))) (hashF!6808 thiss!42308)))))

(assert (= (and d!1269027 res!1768527) b!4314796))

(assert (= (and b!4314796 res!1768528) b!4314797))

(assert (=> d!1269027 m!4908231))

(assert (=> b!4314796 m!4908173))

(declare-fun m!4908267 () Bool)

(assert (=> b!4314796 m!4908267))

(assert (=> b!4314797 m!4908173))

(assert (=> b!4314797 m!4908173))

(declare-fun m!4908269 () Bool)

(assert (=> b!4314797 m!4908269))

(assert (=> b!4314728 d!1269027))

(declare-fun d!1269029 () Bool)

(assert (=> d!1269029 (= (array_inv!5457 (_keys!5005 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308)))))) (bvsge (size!35634 (_keys!5005 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4314738 d!1269029))

(declare-fun d!1269031 () Bool)

(assert (=> d!1269031 (= (array_inv!5458 (_values!4986 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308)))))) (bvsge (size!35635 (_values!4986 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4314738 d!1269031))

(declare-fun d!1269033 () Bool)

(declare-fun res!1768533 () Bool)

(declare-fun e!2683939 () Bool)

(assert (=> d!1269033 (=> res!1768533 e!2683939)))

(assert (=> d!1269033 (= res!1768533 (and ((_ is Cons!48281) lt!1534315) (= (_1!26728 (h!53730 lt!1534315)) key!2048)))))

(assert (=> d!1269033 (= (containsKey!359 lt!1534315 key!2048) e!2683939)))

(declare-fun b!4314802 () Bool)

(declare-fun e!2683940 () Bool)

(assert (=> b!4314802 (= e!2683939 e!2683940)))

(declare-fun res!1768534 () Bool)

(assert (=> b!4314802 (=> (not res!1768534) (not e!2683940))))

(assert (=> b!4314802 (= res!1768534 ((_ is Cons!48281) lt!1534315))))

(declare-fun b!4314803 () Bool)

(assert (=> b!4314803 (= e!2683940 (containsKey!359 (t!355244 lt!1534315) key!2048))))

(assert (= (and d!1269033 (not res!1768533)) b!4314802))

(assert (= (and b!4314802 res!1768534) b!4314803))

(declare-fun m!4908271 () Bool)

(assert (=> b!4314803 m!4908271))

(assert (=> b!4314732 d!1269033))

(declare-fun d!1269035 () Bool)

(assert (=> d!1269035 (noDuplicateKeys!244 (removePairForKey!241 lt!1534327 key!2048))))

(declare-fun lt!1534348 () Unit!67477)

(declare-fun choose!26319 (List!48405 K!9509) Unit!67477)

(assert (=> d!1269035 (= lt!1534348 (choose!26319 lt!1534327 key!2048))))

(assert (=> d!1269035 (noDuplicateKeys!244 lt!1534327)))

(assert (=> d!1269035 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!192 lt!1534327 key!2048) lt!1534348)))

(declare-fun bs!605650 () Bool)

(assert (= bs!605650 d!1269035))

(assert (=> bs!605650 m!4908181))

(assert (=> bs!605650 m!4908181))

(declare-fun m!4908273 () Bool)

(assert (=> bs!605650 m!4908273))

(declare-fun m!4908275 () Bool)

(assert (=> bs!605650 m!4908275))

(assert (=> bs!605650 m!4908249))

(assert (=> b!4314739 d!1269035))

(declare-fun d!1269037 () Bool)

(assert (=> d!1269037 (allKeysSameHash!217 (removePairForKey!241 lt!1534327 key!2048) lt!1534325 (hashF!6808 thiss!42308))))

(declare-fun lt!1534351 () Unit!67477)

(declare-fun choose!26320 (List!48405 K!9509 (_ BitVec 64) Hashable!4621) Unit!67477)

(assert (=> d!1269037 (= lt!1534351 (choose!26320 lt!1534327 key!2048 lt!1534325 (hashF!6808 thiss!42308)))))

(assert (=> d!1269037 (noDuplicateKeys!244 lt!1534327)))

(assert (=> d!1269037 (= (lemmaRemovePairForKeyPreservesHash!197 lt!1534327 key!2048 lt!1534325 (hashF!6808 thiss!42308)) lt!1534351)))

(declare-fun bs!605651 () Bool)

(assert (= bs!605651 d!1269037))

(assert (=> bs!605651 m!4908181))

(assert (=> bs!605651 m!4908181))

(declare-fun m!4908277 () Bool)

(assert (=> bs!605651 m!4908277))

(declare-fun m!4908279 () Bool)

(assert (=> bs!605651 m!4908279))

(assert (=> bs!605651 m!4908249))

(assert (=> b!4314739 d!1269037))

(declare-fun d!1269039 () Bool)

(declare-fun e!2683943 () Bool)

(assert (=> d!1269039 e!2683943))

(declare-fun res!1768539 () Bool)

(assert (=> d!1269039 (=> (not res!1768539) (not e!2683943))))

(declare-fun lt!1534362 () ListLongMap!1089)

(assert (=> d!1269039 (= res!1768539 (contains!10282 lt!1534362 (_1!26729 (tuple2!46895 lt!1534325 lt!1534311))))))

(declare-fun lt!1534361 () List!48406)

(assert (=> d!1269039 (= lt!1534362 (ListLongMap!1090 lt!1534361))))

(declare-fun lt!1534360 () Unit!67477)

(declare-fun lt!1534363 () Unit!67477)

(assert (=> d!1269039 (= lt!1534360 lt!1534363)))

(assert (=> d!1269039 (= (getValueByKey!275 lt!1534361 (_1!26729 (tuple2!46895 lt!1534325 lt!1534311))) (Some!10262 (_2!26729 (tuple2!46895 lt!1534325 lt!1534311))))))

(declare-fun lemmaContainsTupThenGetReturnValue!84 (List!48406 (_ BitVec 64) List!48405) Unit!67477)

(assert (=> d!1269039 (= lt!1534363 (lemmaContainsTupThenGetReturnValue!84 lt!1534361 (_1!26729 (tuple2!46895 lt!1534325 lt!1534311)) (_2!26729 (tuple2!46895 lt!1534325 lt!1534311))))))

(declare-fun insertStrictlySorted!47 (List!48406 (_ BitVec 64) List!48405) List!48406)

(assert (=> d!1269039 (= lt!1534361 (insertStrictlySorted!47 (toList!2475 lt!1534314) (_1!26729 (tuple2!46895 lt!1534325 lt!1534311)) (_2!26729 (tuple2!46895 lt!1534325 lt!1534311))))))

(assert (=> d!1269039 (= (+!298 lt!1534314 (tuple2!46895 lt!1534325 lt!1534311)) lt!1534362)))

(declare-fun b!4314808 () Bool)

(declare-fun res!1768540 () Bool)

(assert (=> b!4314808 (=> (not res!1768540) (not e!2683943))))

(assert (=> b!4314808 (= res!1768540 (= (getValueByKey!275 (toList!2475 lt!1534362) (_1!26729 (tuple2!46895 lt!1534325 lt!1534311))) (Some!10262 (_2!26729 (tuple2!46895 lt!1534325 lt!1534311)))))))

(declare-fun b!4314809 () Bool)

(declare-fun contains!10284 (List!48406 tuple2!46894) Bool)

(assert (=> b!4314809 (= e!2683943 (contains!10284 (toList!2475 lt!1534362) (tuple2!46895 lt!1534325 lt!1534311)))))

(assert (= (and d!1269039 res!1768539) b!4314808))

(assert (= (and b!4314808 res!1768540) b!4314809))

(declare-fun m!4908281 () Bool)

(assert (=> d!1269039 m!4908281))

(declare-fun m!4908283 () Bool)

(assert (=> d!1269039 m!4908283))

(declare-fun m!4908285 () Bool)

(assert (=> d!1269039 m!4908285))

(declare-fun m!4908287 () Bool)

(assert (=> d!1269039 m!4908287))

(declare-fun m!4908289 () Bool)

(assert (=> b!4314808 m!4908289))

(declare-fun m!4908291 () Bool)

(assert (=> b!4314809 m!4908291))

(assert (=> b!4314739 d!1269039))

(declare-fun d!1269041 () Bool)

(declare-fun res!1768545 () Bool)

(declare-fun e!2683948 () Bool)

(assert (=> d!1269041 (=> res!1768545 e!2683948)))

(assert (=> d!1269041 (= res!1768545 ((_ is Nil!48282) (toList!2475 lt!1534319)))))

(assert (=> d!1269041 (= (forall!8772 (toList!2475 lt!1534319) lambda!133347) e!2683948)))

(declare-fun b!4314814 () Bool)

(declare-fun e!2683949 () Bool)

(assert (=> b!4314814 (= e!2683948 e!2683949)))

(declare-fun res!1768546 () Bool)

(assert (=> b!4314814 (=> (not res!1768546) (not e!2683949))))

(declare-fun dynLambda!20465 (Int tuple2!46894) Bool)

(assert (=> b!4314814 (= res!1768546 (dynLambda!20465 lambda!133347 (h!53731 (toList!2475 lt!1534319))))))

(declare-fun b!4314815 () Bool)

(assert (=> b!4314815 (= e!2683949 (forall!8772 (t!355245 (toList!2475 lt!1534319)) lambda!133347))))

(assert (= (and d!1269041 (not res!1768545)) b!4314814))

(assert (= (and b!4314814 res!1768546) b!4314815))

(declare-fun b_lambda!126869 () Bool)

(assert (=> (not b_lambda!126869) (not b!4314814)))

(declare-fun m!4908293 () Bool)

(assert (=> b!4314814 m!4908293))

(declare-fun m!4908295 () Bool)

(assert (=> b!4314815 m!4908295))

(assert (=> b!4314739 d!1269041))

(declare-fun d!1269043 () Bool)

(assert (=> d!1269043 (= (contains!10281 lt!1534318 key!2048) (contains!10281 lt!1534326 key!2048))))

(declare-fun lt!1534366 () Unit!67477)

(declare-fun choose!26321 (ListMap!1755 ListMap!1755 K!9509) Unit!67477)

(assert (=> d!1269043 (= lt!1534366 (choose!26321 lt!1534318 lt!1534326 key!2048))))

(assert (=> d!1269043 (eq!145 lt!1534318 lt!1534326)))

(assert (=> d!1269043 (= (lemmaEquivalentThenSameContains!59 lt!1534318 lt!1534326 key!2048) lt!1534366)))

(declare-fun bs!605652 () Bool)

(assert (= bs!605652 d!1269043))

(assert (=> bs!605652 m!4908209))

(assert (=> bs!605652 m!4908215))

(declare-fun m!4908297 () Bool)

(assert (=> bs!605652 m!4908297))

(declare-fun m!4908299 () Bool)

(assert (=> bs!605652 m!4908299))

(assert (=> b!4314739 d!1269043))

(declare-fun d!1269045 () Bool)

(assert (=> d!1269045 true))

(assert (=> d!1269045 true))

(declare-fun lambda!133353 () Int)

(declare-fun forall!8773 (List!48405 Int) Bool)

(assert (=> d!1269045 (= (allKeysSameHash!217 lt!1534327 lt!1534325 (hashF!6808 thiss!42308)) (forall!8773 lt!1534327 lambda!133353))))

(declare-fun bs!605653 () Bool)

(assert (= bs!605653 d!1269045))

(declare-fun m!4908301 () Bool)

(assert (=> bs!605653 m!4908301))

(assert (=> b!4314739 d!1269045))

(declare-fun bs!605654 () Bool)

(declare-fun d!1269047 () Bool)

(assert (= bs!605654 (and d!1269047 b!4314739)))

(declare-fun lambda!133356 () Int)

(assert (=> bs!605654 (= lambda!133356 lambda!133347)))

(declare-fun bs!605655 () Bool)

(assert (= bs!605655 (and d!1269047 b!4314796)))

(assert (=> bs!605655 (= lambda!133356 lambda!133350)))

(declare-fun lt!1534369 () ListMap!1755)

(declare-fun invariantList!586 (List!48405) Bool)

(assert (=> d!1269047 (invariantList!586 (toList!2476 lt!1534369))))

(declare-fun e!2683952 () ListMap!1755)

(assert (=> d!1269047 (= lt!1534369 e!2683952)))

(declare-fun c!733553 () Bool)

(assert (=> d!1269047 (= c!733553 ((_ is Cons!48282) (toList!2475 lt!1534319)))))

(assert (=> d!1269047 (forall!8772 (toList!2475 lt!1534319) lambda!133356)))

(assert (=> d!1269047 (= (extractMap!348 (toList!2475 lt!1534319)) lt!1534369)))

(declare-fun b!4314824 () Bool)

(declare-fun addToMapMapFromBucket!44 (List!48405 ListMap!1755) ListMap!1755)

(assert (=> b!4314824 (= e!2683952 (addToMapMapFromBucket!44 (_2!26729 (h!53731 (toList!2475 lt!1534319))) (extractMap!348 (t!355245 (toList!2475 lt!1534319)))))))

(declare-fun b!4314825 () Bool)

(assert (=> b!4314825 (= e!2683952 (ListMap!1756 Nil!48281))))

(assert (= (and d!1269047 c!733553) b!4314824))

(assert (= (and d!1269047 (not c!733553)) b!4314825))

(declare-fun m!4908303 () Bool)

(assert (=> d!1269047 m!4908303))

(declare-fun m!4908305 () Bool)

(assert (=> d!1269047 m!4908305))

(declare-fun m!4908307 () Bool)

(assert (=> b!4314824 m!4908307))

(assert (=> b!4314824 m!4908307))

(declare-fun m!4908309 () Bool)

(assert (=> b!4314824 m!4908309))

(assert (=> b!4314739 d!1269047))

(declare-fun bs!605656 () Bool)

(declare-fun d!1269049 () Bool)

(assert (= bs!605656 (and d!1269049 b!4314739)))

(declare-fun lambda!133359 () Int)

(assert (=> bs!605656 (not (= lambda!133359 lambda!133347))))

(declare-fun bs!605657 () Bool)

(assert (= bs!605657 (and d!1269049 b!4314796)))

(assert (=> bs!605657 (not (= lambda!133359 lambda!133350))))

(declare-fun bs!605658 () Bool)

(assert (= bs!605658 (and d!1269049 d!1269047)))

(assert (=> bs!605658 (not (= lambda!133359 lambda!133356))))

(assert (=> d!1269049 true))

(assert (=> d!1269049 (allKeysSameHash!217 lt!1534327 lt!1534325 (hashF!6808 thiss!42308))))

(declare-fun lt!1534372 () Unit!67477)

(declare-fun choose!26322 (List!48406 (_ BitVec 64) List!48405 Hashable!4621) Unit!67477)

(assert (=> d!1269049 (= lt!1534372 (choose!26322 (toList!2475 lt!1534314) lt!1534325 lt!1534327 (hashF!6808 thiss!42308)))))

(assert (=> d!1269049 (forall!8772 (toList!2475 lt!1534314) lambda!133359)))

(assert (=> d!1269049 (= (lemmaInLongMapAllKeySameHashThenForTuple!204 (toList!2475 lt!1534314) lt!1534325 lt!1534327 (hashF!6808 thiss!42308)) lt!1534372)))

(declare-fun bs!605659 () Bool)

(assert (= bs!605659 d!1269049))

(assert (=> bs!605659 m!4908221))

(declare-fun m!4908311 () Bool)

(assert (=> bs!605659 m!4908311))

(declare-fun m!4908313 () Bool)

(assert (=> bs!605659 m!4908313))

(assert (=> b!4314739 d!1269049))

(declare-fun d!1269051 () Bool)

(declare-fun lt!1534375 () ListMap!1755)

(assert (=> d!1269051 (invariantList!586 (toList!2476 lt!1534375))))

(assert (=> d!1269051 (= lt!1534375 (extractMap!348 (toList!2475 (map!10290 (v!42530 (underlying!9640 (HashMap!4611 (Cell!18632 (_2!26730 lt!1534323)) (hashF!6808 thiss!42308) (_size!9454 thiss!42308) (defaultValue!4782 thiss!42308))))))))))

(assert (=> d!1269051 (valid!3702 (HashMap!4611 (Cell!18632 (_2!26730 lt!1534323)) (hashF!6808 thiss!42308) (_size!9454 thiss!42308) (defaultValue!4782 thiss!42308)))))

(assert (=> d!1269051 (= (map!10291 (HashMap!4611 (Cell!18632 (_2!26730 lt!1534323)) (hashF!6808 thiss!42308) (_size!9454 thiss!42308) (defaultValue!4782 thiss!42308))) lt!1534375)))

(declare-fun bs!605660 () Bool)

(assert (= bs!605660 d!1269051))

(declare-fun m!4908315 () Bool)

(assert (=> bs!605660 m!4908315))

(declare-fun m!4908317 () Bool)

(assert (=> bs!605660 m!4908317))

(declare-fun m!4908319 () Bool)

(assert (=> bs!605660 m!4908319))

(declare-fun m!4908321 () Bool)

(assert (=> bs!605660 m!4908321))

(assert (=> b!4314739 d!1269051))

(declare-fun b!4314846 () Bool)

(assert (=> b!4314846 false))

(declare-fun lt!1534393 () Unit!67477)

(declare-fun lt!1534392 () Unit!67477)

(assert (=> b!4314846 (= lt!1534393 lt!1534392)))

(declare-fun containsKey!360 (List!48405 K!9509) Bool)

(assert (=> b!4314846 (containsKey!360 (toList!2476 lt!1534318) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!46 (List!48405 K!9509) Unit!67477)

(assert (=> b!4314846 (= lt!1534392 (lemmaInGetKeysListThenContainsKey!46 (toList!2476 lt!1534318) key!2048))))

(declare-fun e!2683970 () Unit!67477)

(declare-fun Unit!67479 () Unit!67477)

(assert (=> b!4314846 (= e!2683970 Unit!67479)))

(declare-fun b!4314847 () Bool)

(declare-fun e!2683969 () Bool)

(declare-fun e!2683968 () Bool)

(assert (=> b!4314847 (= e!2683969 e!2683968)))

(declare-fun res!1768554 () Bool)

(assert (=> b!4314847 (=> (not res!1768554) (not e!2683968))))

(declare-datatypes ((Option!10264 0))(
  ( (None!10263) (Some!10263 (v!42536 V!9711)) )
))
(declare-fun isDefined!7564 (Option!10264) Bool)

(declare-fun getValueByKey!276 (List!48405 K!9509) Option!10264)

(assert (=> b!4314847 (= res!1768554 (isDefined!7564 (getValueByKey!276 (toList!2476 lt!1534318) key!2048)))))

(declare-fun b!4314848 () Bool)

(declare-fun e!2683966 () Unit!67477)

(declare-fun lt!1534395 () Unit!67477)

(assert (=> b!4314848 (= e!2683966 lt!1534395)))

(declare-fun lt!1534396 () Unit!67477)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!194 (List!48405 K!9509) Unit!67477)

(assert (=> b!4314848 (= lt!1534396 (lemmaContainsKeyImpliesGetValueByKeyDefined!194 (toList!2476 lt!1534318) key!2048))))

(assert (=> b!4314848 (isDefined!7564 (getValueByKey!276 (toList!2476 lt!1534318) key!2048))))

(declare-fun lt!1534394 () Unit!67477)

(assert (=> b!4314848 (= lt!1534394 lt!1534396)))

(declare-fun lemmaInListThenGetKeysListContains!46 (List!48405 K!9509) Unit!67477)

(assert (=> b!4314848 (= lt!1534395 (lemmaInListThenGetKeysListContains!46 (toList!2476 lt!1534318) key!2048))))

(declare-fun call!298487 () Bool)

(assert (=> b!4314848 call!298487))

(declare-fun b!4314849 () Bool)

(declare-fun Unit!67480 () Unit!67477)

(assert (=> b!4314849 (= e!2683970 Unit!67480)))

(declare-fun b!4314850 () Bool)

(declare-datatypes ((List!48407 0))(
  ( (Nil!48283) (Cons!48283 (h!53733 K!9509) (t!355248 List!48407)) )
))
(declare-fun e!2683965 () List!48407)

(declare-fun keys!16118 (ListMap!1755) List!48407)

(assert (=> b!4314850 (= e!2683965 (keys!16118 lt!1534318))))

(declare-fun d!1269053 () Bool)

(assert (=> d!1269053 e!2683969))

(declare-fun res!1768555 () Bool)

(assert (=> d!1269053 (=> res!1768555 e!2683969)))

(declare-fun e!2683967 () Bool)

(assert (=> d!1269053 (= res!1768555 e!2683967)))

(declare-fun res!1768553 () Bool)

(assert (=> d!1269053 (=> (not res!1768553) (not e!2683967))))

(declare-fun lt!1534398 () Bool)

(assert (=> d!1269053 (= res!1768553 (not lt!1534398))))

(declare-fun lt!1534397 () Bool)

(assert (=> d!1269053 (= lt!1534398 lt!1534397)))

(declare-fun lt!1534399 () Unit!67477)

(assert (=> d!1269053 (= lt!1534399 e!2683966)))

(declare-fun c!733561 () Bool)

(assert (=> d!1269053 (= c!733561 lt!1534397)))

(assert (=> d!1269053 (= lt!1534397 (containsKey!360 (toList!2476 lt!1534318) key!2048))))

(assert (=> d!1269053 (= (contains!10281 lt!1534318 key!2048) lt!1534398)))

(declare-fun b!4314851 () Bool)

(declare-fun contains!10285 (List!48407 K!9509) Bool)

(assert (=> b!4314851 (= e!2683968 (contains!10285 (keys!16118 lt!1534318) key!2048))))

(declare-fun bm!298482 () Bool)

(assert (=> bm!298482 (= call!298487 (contains!10285 e!2683965 key!2048))))

(declare-fun c!733562 () Bool)

(assert (=> bm!298482 (= c!733562 c!733561)))

(declare-fun b!4314852 () Bool)

(assert (=> b!4314852 (= e!2683966 e!2683970)))

(declare-fun c!733560 () Bool)

(assert (=> b!4314852 (= c!733560 call!298487)))

(declare-fun b!4314853 () Bool)

(assert (=> b!4314853 (= e!2683967 (not (contains!10285 (keys!16118 lt!1534318) key!2048)))))

(declare-fun b!4314854 () Bool)

(declare-fun getKeysList!49 (List!48405) List!48407)

(assert (=> b!4314854 (= e!2683965 (getKeysList!49 (toList!2476 lt!1534318)))))

(assert (= (and d!1269053 c!733561) b!4314848))

(assert (= (and d!1269053 (not c!733561)) b!4314852))

(assert (= (and b!4314852 c!733560) b!4314846))

(assert (= (and b!4314852 (not c!733560)) b!4314849))

(assert (= (or b!4314848 b!4314852) bm!298482))

(assert (= (and bm!298482 c!733562) b!4314854))

(assert (= (and bm!298482 (not c!733562)) b!4314850))

(assert (= (and d!1269053 res!1768553) b!4314853))

(assert (= (and d!1269053 (not res!1768555)) b!4314847))

(assert (= (and b!4314847 res!1768554) b!4314851))

(declare-fun m!4908323 () Bool)

(assert (=> b!4314846 m!4908323))

(declare-fun m!4908325 () Bool)

(assert (=> b!4314846 m!4908325))

(declare-fun m!4908327 () Bool)

(assert (=> b!4314851 m!4908327))

(assert (=> b!4314851 m!4908327))

(declare-fun m!4908329 () Bool)

(assert (=> b!4314851 m!4908329))

(declare-fun m!4908331 () Bool)

(assert (=> bm!298482 m!4908331))

(assert (=> b!4314850 m!4908327))

(assert (=> b!4314853 m!4908327))

(assert (=> b!4314853 m!4908327))

(assert (=> b!4314853 m!4908329))

(declare-fun m!4908333 () Bool)

(assert (=> b!4314848 m!4908333))

(declare-fun m!4908335 () Bool)

(assert (=> b!4314848 m!4908335))

(assert (=> b!4314848 m!4908335))

(declare-fun m!4908337 () Bool)

(assert (=> b!4314848 m!4908337))

(declare-fun m!4908339 () Bool)

(assert (=> b!4314848 m!4908339))

(assert (=> b!4314847 m!4908335))

(assert (=> b!4314847 m!4908335))

(assert (=> b!4314847 m!4908337))

(assert (=> d!1269053 m!4908323))

(declare-fun m!4908341 () Bool)

(assert (=> b!4314854 m!4908341))

(assert (=> b!4314739 d!1269053))

(declare-fun bs!605661 () Bool)

(declare-fun d!1269055 () Bool)

(assert (= bs!605661 (and d!1269055 b!4314739)))

(declare-fun lambda!133362 () Int)

(assert (=> bs!605661 (= lambda!133362 lambda!133347)))

(declare-fun bs!605662 () Bool)

(assert (= bs!605662 (and d!1269055 b!4314796)))

(assert (=> bs!605662 (= lambda!133362 lambda!133350)))

(declare-fun bs!605663 () Bool)

(assert (= bs!605663 (and d!1269055 d!1269047)))

(assert (=> bs!605663 (= lambda!133362 lambda!133356)))

(declare-fun bs!605664 () Bool)

(assert (= bs!605664 (and d!1269055 d!1269049)))

(assert (=> bs!605664 (not (= lambda!133362 lambda!133359))))

(assert (=> d!1269055 (eq!145 (extractMap!348 (toList!2475 (+!298 lt!1534314 (tuple2!46895 lt!1534325 lt!1534311)))) (+!297 (extractMap!348 (toList!2475 lt!1534314)) (tuple2!46893 key!2048 v!9179)))))

(declare-fun lt!1534402 () Unit!67477)

(declare-fun choose!26323 (ListLongMap!1089 (_ BitVec 64) List!48405 K!9509 V!9711 Hashable!4621) Unit!67477)

(assert (=> d!1269055 (= lt!1534402 (choose!26323 lt!1534314 lt!1534325 lt!1534311 key!2048 v!9179 (hashF!6808 thiss!42308)))))

(assert (=> d!1269055 (forall!8772 (toList!2475 lt!1534314) lambda!133362)))

(assert (=> d!1269055 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!64 lt!1534314 lt!1534325 lt!1534311 key!2048 v!9179 (hashF!6808 thiss!42308)) lt!1534402)))

(declare-fun bs!605665 () Bool)

(assert (= bs!605665 d!1269055))

(declare-fun m!4908343 () Bool)

(assert (=> bs!605665 m!4908343))

(declare-fun m!4908345 () Bool)

(assert (=> bs!605665 m!4908345))

(assert (=> bs!605665 m!4908207))

(declare-fun m!4908347 () Bool)

(assert (=> bs!605665 m!4908347))

(assert (=> bs!605665 m!4908207))

(declare-fun m!4908349 () Bool)

(assert (=> bs!605665 m!4908349))

(assert (=> bs!605665 m!4908347))

(declare-fun m!4908351 () Bool)

(assert (=> bs!605665 m!4908351))

(assert (=> bs!605665 m!4908227))

(assert (=> bs!605665 m!4908349))

(assert (=> b!4314739 d!1269055))

(declare-fun bs!605666 () Bool)

(declare-fun d!1269057 () Bool)

(assert (= bs!605666 (and d!1269057 d!1269055)))

(declare-fun lambda!133363 () Int)

(assert (=> bs!605666 (= lambda!133363 lambda!133362)))

(declare-fun bs!605667 () Bool)

(assert (= bs!605667 (and d!1269057 b!4314739)))

(assert (=> bs!605667 (= lambda!133363 lambda!133347)))

(declare-fun bs!605668 () Bool)

(assert (= bs!605668 (and d!1269057 d!1269049)))

(assert (=> bs!605668 (not (= lambda!133363 lambda!133359))))

(declare-fun bs!605669 () Bool)

(assert (= bs!605669 (and d!1269057 b!4314796)))

(assert (=> bs!605669 (= lambda!133363 lambda!133350)))

(declare-fun bs!605670 () Bool)

(assert (= bs!605670 (and d!1269057 d!1269047)))

(assert (=> bs!605670 (= lambda!133363 lambda!133356)))

(declare-fun lt!1534403 () ListMap!1755)

(assert (=> d!1269057 (invariantList!586 (toList!2476 lt!1534403))))

(declare-fun e!2683971 () ListMap!1755)

(assert (=> d!1269057 (= lt!1534403 e!2683971)))

(declare-fun c!733563 () Bool)

(assert (=> d!1269057 (= c!733563 ((_ is Cons!48282) (toList!2475 lt!1534314)))))

(assert (=> d!1269057 (forall!8772 (toList!2475 lt!1534314) lambda!133363)))

(assert (=> d!1269057 (= (extractMap!348 (toList!2475 lt!1534314)) lt!1534403)))

(declare-fun b!4314855 () Bool)

(assert (=> b!4314855 (= e!2683971 (addToMapMapFromBucket!44 (_2!26729 (h!53731 (toList!2475 lt!1534314))) (extractMap!348 (t!355245 (toList!2475 lt!1534314)))))))

(declare-fun b!4314856 () Bool)

(assert (=> b!4314856 (= e!2683971 (ListMap!1756 Nil!48281))))

(assert (= (and d!1269057 c!733563) b!4314855))

(assert (= (and d!1269057 (not c!733563)) b!4314856))

(declare-fun m!4908353 () Bool)

(assert (=> d!1269057 m!4908353))

(declare-fun m!4908355 () Bool)

(assert (=> d!1269057 m!4908355))

(declare-fun m!4908357 () Bool)

(assert (=> b!4314855 m!4908357))

(assert (=> b!4314855 m!4908357))

(declare-fun m!4908359 () Bool)

(assert (=> b!4314855 m!4908359))

(assert (=> b!4314739 d!1269057))

(declare-fun d!1269059 () Bool)

(declare-fun res!1768556 () Bool)

(declare-fun e!2683972 () Bool)

(assert (=> d!1269059 (=> res!1768556 e!2683972)))

(assert (=> d!1269059 (= res!1768556 ((_ is Nil!48282) (toList!2475 (map!10290 (_2!26730 lt!1534323)))))))

(assert (=> d!1269059 (= (forall!8772 (toList!2475 (map!10290 (_2!26730 lt!1534323))) lambda!133347) e!2683972)))

(declare-fun b!4314857 () Bool)

(declare-fun e!2683973 () Bool)

(assert (=> b!4314857 (= e!2683972 e!2683973)))

(declare-fun res!1768557 () Bool)

(assert (=> b!4314857 (=> (not res!1768557) (not e!2683973))))

(assert (=> b!4314857 (= res!1768557 (dynLambda!20465 lambda!133347 (h!53731 (toList!2475 (map!10290 (_2!26730 lt!1534323))))))))

(declare-fun b!4314858 () Bool)

(assert (=> b!4314858 (= e!2683973 (forall!8772 (t!355245 (toList!2475 (map!10290 (_2!26730 lt!1534323)))) lambda!133347))))

(assert (= (and d!1269059 (not res!1768556)) b!4314857))

(assert (= (and b!4314857 res!1768557) b!4314858))

(declare-fun b_lambda!126871 () Bool)

(assert (=> (not b_lambda!126871) (not b!4314857)))

(declare-fun m!4908361 () Bool)

(assert (=> b!4314857 m!4908361))

(declare-fun m!4908363 () Bool)

(assert (=> b!4314858 m!4908363))

(assert (=> b!4314739 d!1269059))

(declare-fun d!1269061 () Bool)

(declare-fun e!2683976 () Bool)

(assert (=> d!1269061 e!2683976))

(declare-fun res!1768563 () Bool)

(assert (=> d!1269061 (=> (not res!1768563) (not e!2683976))))

(declare-fun lt!1534415 () ListMap!1755)

(assert (=> d!1269061 (= res!1768563 (contains!10281 lt!1534415 (_1!26728 lt!1534321)))))

(declare-fun lt!1534413 () List!48405)

(assert (=> d!1269061 (= lt!1534415 (ListMap!1756 lt!1534413))))

(declare-fun lt!1534412 () Unit!67477)

(declare-fun lt!1534414 () Unit!67477)

(assert (=> d!1269061 (= lt!1534412 lt!1534414)))

(assert (=> d!1269061 (= (getValueByKey!276 lt!1534413 (_1!26728 lt!1534321)) (Some!10263 (_2!26728 lt!1534321)))))

(declare-fun lemmaContainsTupThenGetReturnValue!85 (List!48405 K!9509 V!9711) Unit!67477)

(assert (=> d!1269061 (= lt!1534414 (lemmaContainsTupThenGetReturnValue!85 lt!1534413 (_1!26728 lt!1534321) (_2!26728 lt!1534321)))))

(declare-fun insertNoDuplicatedKeys!46 (List!48405 K!9509 V!9711) List!48405)

(assert (=> d!1269061 (= lt!1534413 (insertNoDuplicatedKeys!46 (toList!2476 (extractMap!348 (toList!2475 lt!1534314))) (_1!26728 lt!1534321) (_2!26728 lt!1534321)))))

(assert (=> d!1269061 (= (+!297 (extractMap!348 (toList!2475 lt!1534314)) lt!1534321) lt!1534415)))

(declare-fun b!4314863 () Bool)

(declare-fun res!1768562 () Bool)

(assert (=> b!4314863 (=> (not res!1768562) (not e!2683976))))

(assert (=> b!4314863 (= res!1768562 (= (getValueByKey!276 (toList!2476 lt!1534415) (_1!26728 lt!1534321)) (Some!10263 (_2!26728 lt!1534321))))))

(declare-fun b!4314864 () Bool)

(declare-fun contains!10286 (List!48405 tuple2!46892) Bool)

(assert (=> b!4314864 (= e!2683976 (contains!10286 (toList!2476 lt!1534415) lt!1534321))))

(assert (= (and d!1269061 res!1768563) b!4314863))

(assert (= (and b!4314863 res!1768562) b!4314864))

(declare-fun m!4908365 () Bool)

(assert (=> d!1269061 m!4908365))

(declare-fun m!4908367 () Bool)

(assert (=> d!1269061 m!4908367))

(declare-fun m!4908369 () Bool)

(assert (=> d!1269061 m!4908369))

(declare-fun m!4908371 () Bool)

(assert (=> d!1269061 m!4908371))

(declare-fun m!4908373 () Bool)

(assert (=> b!4314863 m!4908373))

(declare-fun m!4908375 () Bool)

(assert (=> b!4314864 m!4908375))

(assert (=> b!4314739 d!1269061))

(declare-fun b!4314865 () Bool)

(assert (=> b!4314865 false))

(declare-fun lt!1534417 () Unit!67477)

(declare-fun lt!1534416 () Unit!67477)

(assert (=> b!4314865 (= lt!1534417 lt!1534416)))

(assert (=> b!4314865 (containsKey!360 (toList!2476 lt!1534326) key!2048)))

(assert (=> b!4314865 (= lt!1534416 (lemmaInGetKeysListThenContainsKey!46 (toList!2476 lt!1534326) key!2048))))

(declare-fun e!2683982 () Unit!67477)

(declare-fun Unit!67481 () Unit!67477)

(assert (=> b!4314865 (= e!2683982 Unit!67481)))

(declare-fun b!4314866 () Bool)

(declare-fun e!2683981 () Bool)

(declare-fun e!2683980 () Bool)

(assert (=> b!4314866 (= e!2683981 e!2683980)))

(declare-fun res!1768565 () Bool)

(assert (=> b!4314866 (=> (not res!1768565) (not e!2683980))))

(assert (=> b!4314866 (= res!1768565 (isDefined!7564 (getValueByKey!276 (toList!2476 lt!1534326) key!2048)))))

(declare-fun b!4314867 () Bool)

(declare-fun e!2683978 () Unit!67477)

(declare-fun lt!1534419 () Unit!67477)

(assert (=> b!4314867 (= e!2683978 lt!1534419)))

(declare-fun lt!1534420 () Unit!67477)

(assert (=> b!4314867 (= lt!1534420 (lemmaContainsKeyImpliesGetValueByKeyDefined!194 (toList!2476 lt!1534326) key!2048))))

(assert (=> b!4314867 (isDefined!7564 (getValueByKey!276 (toList!2476 lt!1534326) key!2048))))

(declare-fun lt!1534418 () Unit!67477)

(assert (=> b!4314867 (= lt!1534418 lt!1534420)))

(assert (=> b!4314867 (= lt!1534419 (lemmaInListThenGetKeysListContains!46 (toList!2476 lt!1534326) key!2048))))

(declare-fun call!298488 () Bool)

(assert (=> b!4314867 call!298488))

(declare-fun b!4314868 () Bool)

(declare-fun Unit!67482 () Unit!67477)

(assert (=> b!4314868 (= e!2683982 Unit!67482)))

(declare-fun b!4314869 () Bool)

(declare-fun e!2683977 () List!48407)

(assert (=> b!4314869 (= e!2683977 (keys!16118 lt!1534326))))

(declare-fun d!1269063 () Bool)

(assert (=> d!1269063 e!2683981))

(declare-fun res!1768566 () Bool)

(assert (=> d!1269063 (=> res!1768566 e!2683981)))

(declare-fun e!2683979 () Bool)

(assert (=> d!1269063 (= res!1768566 e!2683979)))

(declare-fun res!1768564 () Bool)

(assert (=> d!1269063 (=> (not res!1768564) (not e!2683979))))

(declare-fun lt!1534422 () Bool)

(assert (=> d!1269063 (= res!1768564 (not lt!1534422))))

(declare-fun lt!1534421 () Bool)

(assert (=> d!1269063 (= lt!1534422 lt!1534421)))

(declare-fun lt!1534423 () Unit!67477)

(assert (=> d!1269063 (= lt!1534423 e!2683978)))

(declare-fun c!733565 () Bool)

(assert (=> d!1269063 (= c!733565 lt!1534421)))

(assert (=> d!1269063 (= lt!1534421 (containsKey!360 (toList!2476 lt!1534326) key!2048))))

(assert (=> d!1269063 (= (contains!10281 lt!1534326 key!2048) lt!1534422)))

(declare-fun b!4314870 () Bool)

(assert (=> b!4314870 (= e!2683980 (contains!10285 (keys!16118 lt!1534326) key!2048))))

(declare-fun bm!298483 () Bool)

(assert (=> bm!298483 (= call!298488 (contains!10285 e!2683977 key!2048))))

(declare-fun c!733566 () Bool)

(assert (=> bm!298483 (= c!733566 c!733565)))

(declare-fun b!4314871 () Bool)

(assert (=> b!4314871 (= e!2683978 e!2683982)))

(declare-fun c!733564 () Bool)

(assert (=> b!4314871 (= c!733564 call!298488)))

(declare-fun b!4314872 () Bool)

(assert (=> b!4314872 (= e!2683979 (not (contains!10285 (keys!16118 lt!1534326) key!2048)))))

(declare-fun b!4314873 () Bool)

(assert (=> b!4314873 (= e!2683977 (getKeysList!49 (toList!2476 lt!1534326)))))

(assert (= (and d!1269063 c!733565) b!4314867))

(assert (= (and d!1269063 (not c!733565)) b!4314871))

(assert (= (and b!4314871 c!733564) b!4314865))

(assert (= (and b!4314871 (not c!733564)) b!4314868))

(assert (= (or b!4314867 b!4314871) bm!298483))

(assert (= (and bm!298483 c!733566) b!4314873))

(assert (= (and bm!298483 (not c!733566)) b!4314869))

(assert (= (and d!1269063 res!1768564) b!4314872))

(assert (= (and d!1269063 (not res!1768566)) b!4314866))

(assert (= (and b!4314866 res!1768565) b!4314870))

(declare-fun m!4908377 () Bool)

(assert (=> b!4314865 m!4908377))

(declare-fun m!4908379 () Bool)

(assert (=> b!4314865 m!4908379))

(declare-fun m!4908381 () Bool)

(assert (=> b!4314870 m!4908381))

(assert (=> b!4314870 m!4908381))

(declare-fun m!4908383 () Bool)

(assert (=> b!4314870 m!4908383))

(declare-fun m!4908385 () Bool)

(assert (=> bm!298483 m!4908385))

(assert (=> b!4314869 m!4908381))

(assert (=> b!4314872 m!4908381))

(assert (=> b!4314872 m!4908381))

(assert (=> b!4314872 m!4908383))

(declare-fun m!4908387 () Bool)

(assert (=> b!4314867 m!4908387))

(declare-fun m!4908389 () Bool)

(assert (=> b!4314867 m!4908389))

(assert (=> b!4314867 m!4908389))

(declare-fun m!4908391 () Bool)

(assert (=> b!4314867 m!4908391))

(declare-fun m!4908393 () Bool)

(assert (=> b!4314867 m!4908393))

(assert (=> b!4314866 m!4908389))

(assert (=> b!4314866 m!4908389))

(assert (=> b!4314866 m!4908391))

(assert (=> d!1269063 m!4908377))

(declare-fun m!4908395 () Bool)

(assert (=> b!4314873 m!4908395))

(assert (=> b!4314739 d!1269063))

(declare-fun d!1269065 () Bool)

(declare-fun res!1768567 () Bool)

(declare-fun e!2683983 () Bool)

(assert (=> d!1269065 (=> res!1768567 e!2683983)))

(assert (=> d!1269065 (= res!1768567 (not ((_ is Cons!48281) lt!1534315)))))

(assert (=> d!1269065 (= (noDuplicateKeys!244 lt!1534315) e!2683983)))

(declare-fun b!4314874 () Bool)

(declare-fun e!2683984 () Bool)

(assert (=> b!4314874 (= e!2683983 e!2683984)))

(declare-fun res!1768568 () Bool)

(assert (=> b!4314874 (=> (not res!1768568) (not e!2683984))))

(assert (=> b!4314874 (= res!1768568 (not (containsKey!359 (t!355244 lt!1534315) (_1!26728 (h!53730 lt!1534315)))))))

(declare-fun b!4314875 () Bool)

(assert (=> b!4314875 (= e!2683984 (noDuplicateKeys!244 (t!355244 lt!1534315)))))

(assert (= (and d!1269065 (not res!1768567)) b!4314874))

(assert (= (and b!4314874 res!1768568) b!4314875))

(declare-fun m!4908397 () Bool)

(assert (=> b!4314874 m!4908397))

(declare-fun m!4908399 () Bool)

(assert (=> b!4314875 m!4908399))

(assert (=> b!4314739 d!1269065))

(declare-fun d!1269067 () Bool)

(declare-fun e!2683985 () Bool)

(assert (=> d!1269067 e!2683985))

(declare-fun res!1768570 () Bool)

(assert (=> d!1269067 (=> (not res!1768570) (not e!2683985))))

(declare-fun lt!1534427 () ListMap!1755)

(assert (=> d!1269067 (= res!1768570 (contains!10281 lt!1534427 (_1!26728 lt!1534321)))))

(declare-fun lt!1534425 () List!48405)

(assert (=> d!1269067 (= lt!1534427 (ListMap!1756 lt!1534425))))

(declare-fun lt!1534424 () Unit!67477)

(declare-fun lt!1534426 () Unit!67477)

(assert (=> d!1269067 (= lt!1534424 lt!1534426)))

(assert (=> d!1269067 (= (getValueByKey!276 lt!1534425 (_1!26728 lt!1534321)) (Some!10263 (_2!26728 lt!1534321)))))

(assert (=> d!1269067 (= lt!1534426 (lemmaContainsTupThenGetReturnValue!85 lt!1534425 (_1!26728 lt!1534321) (_2!26728 lt!1534321)))))

(assert (=> d!1269067 (= lt!1534425 (insertNoDuplicatedKeys!46 (toList!2476 lt!1534324) (_1!26728 lt!1534321) (_2!26728 lt!1534321)))))

(assert (=> d!1269067 (= (+!297 lt!1534324 lt!1534321) lt!1534427)))

(declare-fun b!4314876 () Bool)

(declare-fun res!1768569 () Bool)

(assert (=> b!4314876 (=> (not res!1768569) (not e!2683985))))

(assert (=> b!4314876 (= res!1768569 (= (getValueByKey!276 (toList!2476 lt!1534427) (_1!26728 lt!1534321)) (Some!10263 (_2!26728 lt!1534321))))))

(declare-fun b!4314877 () Bool)

(assert (=> b!4314877 (= e!2683985 (contains!10286 (toList!2476 lt!1534427) lt!1534321))))

(assert (= (and d!1269067 res!1768570) b!4314876))

(assert (= (and b!4314876 res!1768569) b!4314877))

(declare-fun m!4908401 () Bool)

(assert (=> d!1269067 m!4908401))

(declare-fun m!4908403 () Bool)

(assert (=> d!1269067 m!4908403))

(declare-fun m!4908405 () Bool)

(assert (=> d!1269067 m!4908405))

(declare-fun m!4908407 () Bool)

(assert (=> d!1269067 m!4908407))

(declare-fun m!4908409 () Bool)

(assert (=> b!4314876 m!4908409))

(declare-fun m!4908411 () Bool)

(assert (=> b!4314877 m!4908411))

(assert (=> b!4314739 d!1269067))

(declare-fun d!1269069 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7560 (List!48405) (InoxSet tuple2!46892))

(assert (=> d!1269069 (= (eq!145 (extractMap!348 (toList!2475 lt!1534319)) (+!297 (extractMap!348 (toList!2475 lt!1534314)) lt!1534321)) (= (content!7560 (toList!2476 (extractMap!348 (toList!2475 lt!1534319)))) (content!7560 (toList!2476 (+!297 (extractMap!348 (toList!2475 lt!1534314)) lt!1534321)))))))

(declare-fun bs!605671 () Bool)

(assert (= bs!605671 d!1269069))

(declare-fun m!4908413 () Bool)

(assert (=> bs!605671 m!4908413))

(declare-fun m!4908415 () Bool)

(assert (=> bs!605671 m!4908415))

(assert (=> b!4314739 d!1269069))

(declare-fun bs!605672 () Bool)

(declare-fun d!1269071 () Bool)

(assert (= bs!605672 (and d!1269071 d!1269055)))

(declare-fun lambda!133368 () Int)

(assert (=> bs!605672 (= lambda!133368 lambda!133362)))

(declare-fun bs!605673 () Bool)

(assert (= bs!605673 (and d!1269071 b!4314739)))

(assert (=> bs!605673 (= lambda!133368 lambda!133347)))

(declare-fun bs!605674 () Bool)

(assert (= bs!605674 (and d!1269071 d!1269049)))

(assert (=> bs!605674 (not (= lambda!133368 lambda!133359))))

(declare-fun bs!605675 () Bool)

(assert (= bs!605675 (and d!1269071 d!1269057)))

(assert (=> bs!605675 (= lambda!133368 lambda!133363)))

(declare-fun bs!605676 () Bool)

(assert (= bs!605676 (and d!1269071 b!4314796)))

(assert (=> bs!605676 (= lambda!133368 lambda!133350)))

(declare-fun bs!605677 () Bool)

(assert (= bs!605677 (and d!1269071 d!1269047)))

(assert (=> bs!605677 (= lambda!133368 lambda!133356)))

(declare-fun e!2683988 () Bool)

(assert (=> d!1269071 e!2683988))

(declare-fun res!1768573 () Bool)

(assert (=> d!1269071 (=> (not res!1768573) (not e!2683988))))

(declare-fun lt!1534433 () ListLongMap!1089)

(assert (=> d!1269071 (= res!1768573 (forall!8772 (toList!2475 lt!1534433) lambda!133368))))

(assert (=> d!1269071 (= lt!1534433 (+!298 lt!1534314 (tuple2!46895 lt!1534325 lt!1534311)))))

(declare-fun lt!1534432 () Unit!67477)

(declare-fun choose!26324 (ListLongMap!1089 (_ BitVec 64) List!48405 Hashable!4621) Unit!67477)

(assert (=> d!1269071 (= lt!1534432 (choose!26324 lt!1534314 lt!1534325 lt!1534311 (hashF!6808 thiss!42308)))))

(assert (=> d!1269071 (forall!8772 (toList!2475 lt!1534314) lambda!133368)))

(assert (=> d!1269071 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!166 lt!1534314 lt!1534325 lt!1534311 (hashF!6808 thiss!42308)) lt!1534432)))

(declare-fun b!4314880 () Bool)

(assert (=> b!4314880 (= e!2683988 (allKeysSameHashInMap!364 lt!1534433 (hashF!6808 thiss!42308)))))

(assert (= (and d!1269071 res!1768573) b!4314880))

(declare-fun m!4908417 () Bool)

(assert (=> d!1269071 m!4908417))

(assert (=> d!1269071 m!4908227))

(declare-fun m!4908419 () Bool)

(assert (=> d!1269071 m!4908419))

(declare-fun m!4908421 () Bool)

(assert (=> d!1269071 m!4908421))

(declare-fun m!4908423 () Bool)

(assert (=> b!4314880 m!4908423))

(assert (=> b!4314739 d!1269071))

(declare-fun bs!605678 () Bool)

(declare-fun d!1269073 () Bool)

(assert (= bs!605678 (and d!1269073 d!1269045)))

(declare-fun lambda!133369 () Int)

(assert (=> bs!605678 (= lambda!133369 lambda!133353)))

(assert (=> d!1269073 true))

(assert (=> d!1269073 true))

(assert (=> d!1269073 (= (allKeysSameHash!217 lt!1534315 lt!1534325 (hashF!6808 thiss!42308)) (forall!8773 lt!1534315 lambda!133369))))

(declare-fun bs!605679 () Bool)

(assert (= bs!605679 d!1269073))

(declare-fun m!4908425 () Bool)

(assert (=> bs!605679 m!4908425))

(assert (=> b!4314739 d!1269073))

(declare-fun d!1269075 () Bool)

(declare-fun map!10292 (LongMapFixedSize!9410) ListLongMap!1089)

(assert (=> d!1269075 (= (map!10290 (_2!26730 lt!1534323)) (map!10292 (v!42529 (underlying!9639 (_2!26730 lt!1534323)))))))

(declare-fun bs!605680 () Bool)

(assert (= bs!605680 d!1269075))

(declare-fun m!4908427 () Bool)

(assert (=> bs!605680 m!4908427))

(assert (=> b!4314739 d!1269075))

(declare-fun bs!605681 () Bool)

(declare-fun b!4314908 () Bool)

(assert (= bs!605681 (and b!4314908 d!1269055)))

(declare-fun lambda!133372 () Int)

(assert (=> bs!605681 (= lambda!133372 lambda!133362)))

(declare-fun bs!605682 () Bool)

(assert (= bs!605682 (and b!4314908 b!4314739)))

(assert (=> bs!605682 (= lambda!133372 lambda!133347)))

(declare-fun bs!605683 () Bool)

(assert (= bs!605683 (and b!4314908 d!1269049)))

(assert (=> bs!605683 (not (= lambda!133372 lambda!133359))))

(declare-fun bs!605684 () Bool)

(assert (= bs!605684 (and b!4314908 d!1269057)))

(assert (=> bs!605684 (= lambda!133372 lambda!133363)))

(declare-fun bs!605685 () Bool)

(assert (= bs!605685 (and b!4314908 b!4314796)))

(assert (=> bs!605685 (= lambda!133372 lambda!133350)))

(declare-fun bs!605686 () Bool)

(assert (= bs!605686 (and b!4314908 d!1269047)))

(assert (=> bs!605686 (= lambda!133372 lambda!133356)))

(declare-fun bs!605687 () Bool)

(assert (= bs!605687 (and b!4314908 d!1269071)))

(assert (=> bs!605687 (= lambda!133372 lambda!133368)))

(declare-fun b!4314903 () Bool)

(declare-fun e!2684004 () Unit!67477)

(declare-fun Unit!67483 () Unit!67477)

(assert (=> b!4314903 (= e!2684004 Unit!67483)))

(declare-fun b!4314904 () Bool)

(assert (=> b!4314904 false))

(declare-fun lt!1534487 () Unit!67477)

(declare-fun lt!1534486 () Unit!67477)

(assert (=> b!4314904 (= lt!1534487 lt!1534486)))

(declare-fun lt!1534484 () ListLongMap!1089)

(assert (=> b!4314904 (contains!10281 (extractMap!348 (toList!2475 lt!1534484)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!147 (ListLongMap!1089 K!9509 Hashable!4621) Unit!67477)

(assert (=> b!4314904 (= lt!1534486 (lemmaInLongMapThenInGenericMap!147 lt!1534484 key!2048 (hashF!6808 thiss!42308)))))

(declare-fun call!298501 () ListLongMap!1089)

(assert (=> b!4314904 (= lt!1534484 call!298501)))

(declare-fun e!2684006 () Unit!67477)

(declare-fun Unit!67484 () Unit!67477)

(assert (=> b!4314904 (= e!2684006 Unit!67484)))

(declare-fun d!1269077 () Bool)

(declare-fun lt!1534476 () Bool)

(assert (=> d!1269077 (= lt!1534476 (contains!10281 (map!10291 thiss!42308) key!2048))))

(declare-fun e!2684003 () Bool)

(assert (=> d!1269077 (= lt!1534476 e!2684003)))

(declare-fun res!1768580 () Bool)

(assert (=> d!1269077 (=> (not res!1768580) (not e!2684003))))

(declare-fun lt!1534477 () (_ BitVec 64))

(assert (=> d!1269077 (= res!1768580 (contains!10283 (v!42530 (underlying!9640 thiss!42308)) lt!1534477))))

(declare-fun lt!1534475 () Unit!67477)

(declare-fun e!2684007 () Unit!67477)

(assert (=> d!1269077 (= lt!1534475 e!2684007)))

(declare-fun c!733576 () Bool)

(assert (=> d!1269077 (= c!733576 (contains!10281 (extractMap!348 (toList!2475 (map!10290 (v!42530 (underlying!9640 thiss!42308))))) key!2048))))

(declare-fun lt!1534493 () Unit!67477)

(declare-fun e!2684008 () Unit!67477)

(assert (=> d!1269077 (= lt!1534493 e!2684008)))

(declare-fun c!733577 () Bool)

(assert (=> d!1269077 (= c!733577 (contains!10283 (v!42530 (underlying!9640 thiss!42308)) lt!1534477))))

(assert (=> d!1269077 (= lt!1534477 (hash!1089 (hashF!6808 thiss!42308) key!2048))))

(assert (=> d!1269077 (valid!3702 thiss!42308)))

(assert (=> d!1269077 (= (contains!10280 thiss!42308 key!2048) lt!1534476)))

(declare-fun b!4314905 () Bool)

(declare-datatypes ((Option!10265 0))(
  ( (None!10264) (Some!10264 (v!42537 tuple2!46892)) )
))
(declare-fun isDefined!7565 (Option!10265) Bool)

(declare-fun getPair!147 (List!48405 K!9509) Option!10265)

(assert (=> b!4314905 (= e!2684003 (isDefined!7565 (getPair!147 (apply!11073 (v!42530 (underlying!9640 thiss!42308)) lt!1534477) key!2048)))))

(declare-fun b!4314906 () Bool)

(assert (=> b!4314906 (= e!2684007 e!2684006)))

(declare-fun res!1768582 () Bool)

(declare-fun call!298504 () Bool)

(assert (=> b!4314906 (= res!1768582 call!298504)))

(declare-fun e!2684005 () Bool)

(assert (=> b!4314906 (=> (not res!1768582) (not e!2684005))))

(declare-fun c!733578 () Bool)

(assert (=> b!4314906 (= c!733578 e!2684005)))

(declare-fun lt!1534492 () ListLongMap!1089)

(declare-fun call!298506 () (_ BitVec 64))

(declare-fun bm!298496 () Bool)

(assert (=> bm!298496 (= call!298504 (contains!10282 (ite c!733576 lt!1534492 call!298501) call!298506))))

(declare-fun bm!298497 () Bool)

(assert (=> bm!298497 (= call!298501 (map!10290 (v!42530 (underlying!9640 thiss!42308))))))

(declare-fun call!298505 () List!48405)

(declare-fun bm!298498 () Bool)

(declare-fun apply!11075 (ListLongMap!1089 (_ BitVec 64)) List!48405)

(assert (=> bm!298498 (= call!298505 (apply!11075 (ite c!733576 lt!1534492 call!298501) call!298506))))

(declare-fun b!4314907 () Bool)

(declare-fun lt!1534480 () Unit!67477)

(assert (=> b!4314907 (= e!2684007 lt!1534480)))

(assert (=> b!4314907 (= lt!1534492 call!298501)))

(declare-fun lemmaInGenericMapThenInLongMap!147 (ListLongMap!1089 K!9509 Hashable!4621) Unit!67477)

(assert (=> b!4314907 (= lt!1534480 (lemmaInGenericMapThenInLongMap!147 lt!1534492 key!2048 (hashF!6808 thiss!42308)))))

(declare-fun res!1768581 () Bool)

(assert (=> b!4314907 (= res!1768581 call!298504)))

(declare-fun e!2684009 () Bool)

(assert (=> b!4314907 (=> (not res!1768581) (not e!2684009))))

(assert (=> b!4314907 e!2684009))

(declare-fun forallContained!1515 (List!48406 Int tuple2!46894) Unit!67477)

(assert (=> b!4314908 (= e!2684008 (forallContained!1515 (toList!2475 (map!10290 (v!42530 (underlying!9640 thiss!42308)))) lambda!133372 (tuple2!46895 lt!1534477 (apply!11073 (v!42530 (underlying!9640 thiss!42308)) lt!1534477))))))

(declare-fun c!733575 () Bool)

(assert (=> b!4314908 (= c!733575 (not (contains!10284 (toList!2475 (map!10290 (v!42530 (underlying!9640 thiss!42308)))) (tuple2!46895 lt!1534477 (apply!11073 (v!42530 (underlying!9640 thiss!42308)) lt!1534477)))))))

(declare-fun lt!1534483 () Unit!67477)

(assert (=> b!4314908 (= lt!1534483 e!2684004)))

(declare-fun b!4314909 () Bool)

(assert (=> b!4314909 false))

(declare-fun lt!1534478 () Unit!67477)

(declare-fun lt!1534491 () Unit!67477)

(assert (=> b!4314909 (= lt!1534478 lt!1534491)))

(declare-fun lt!1534485 () List!48406)

(declare-fun lt!1534490 () List!48405)

(assert (=> b!4314909 (contains!10284 lt!1534485 (tuple2!46895 lt!1534477 lt!1534490))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!159 (List!48406 (_ BitVec 64) List!48405) Unit!67477)

(assert (=> b!4314909 (= lt!1534491 (lemmaGetValueByKeyImpliesContainsTuple!159 lt!1534485 lt!1534477 lt!1534490))))

(assert (=> b!4314909 (= lt!1534490 (apply!11073 (v!42530 (underlying!9640 thiss!42308)) lt!1534477))))

(assert (=> b!4314909 (= lt!1534485 (toList!2475 (map!10290 (v!42530 (underlying!9640 thiss!42308)))))))

(declare-fun lt!1534489 () Unit!67477)

(declare-fun lt!1534482 () Unit!67477)

(assert (=> b!4314909 (= lt!1534489 lt!1534482)))

(declare-fun lt!1534488 () List!48406)

(declare-fun isDefined!7566 (Option!10263) Bool)

(assert (=> b!4314909 (isDefined!7566 (getValueByKey!275 lt!1534488 lt!1534477))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!195 (List!48406 (_ BitVec 64)) Unit!67477)

(assert (=> b!4314909 (= lt!1534482 (lemmaContainsKeyImpliesGetValueByKeyDefined!195 lt!1534488 lt!1534477))))

(assert (=> b!4314909 (= lt!1534488 (toList!2475 (map!10290 (v!42530 (underlying!9640 thiss!42308)))))))

(declare-fun lt!1534481 () Unit!67477)

(declare-fun lt!1534479 () Unit!67477)

(assert (=> b!4314909 (= lt!1534481 lt!1534479)))

(declare-fun lt!1534474 () List!48406)

(declare-fun containsKey!361 (List!48406 (_ BitVec 64)) Bool)

(assert (=> b!4314909 (containsKey!361 lt!1534474 lt!1534477)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!148 (List!48406 (_ BitVec 64)) Unit!67477)

(assert (=> b!4314909 (= lt!1534479 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!148 lt!1534474 lt!1534477))))

(assert (=> b!4314909 (= lt!1534474 (toList!2475 (map!10290 (v!42530 (underlying!9640 thiss!42308)))))))

(declare-fun Unit!67485 () Unit!67477)

(assert (=> b!4314909 (= e!2684004 Unit!67485)))

(declare-fun b!4314910 () Bool)

(declare-fun Unit!67486 () Unit!67477)

(assert (=> b!4314910 (= e!2684008 Unit!67486)))

(declare-fun bm!298499 () Bool)

(assert (=> bm!298499 (= call!298506 (hash!1089 (hashF!6808 thiss!42308) key!2048))))

(declare-fun bm!298500 () Bool)

(declare-fun call!298503 () Bool)

(declare-fun call!298502 () Option!10265)

(assert (=> bm!298500 (= call!298503 (isDefined!7565 call!298502))))

(declare-fun b!4314911 () Bool)

(assert (=> b!4314911 (= e!2684009 call!298503)))

(declare-fun b!4314912 () Bool)

(assert (=> b!4314912 (= e!2684005 call!298503)))

(declare-fun b!4314913 () Bool)

(declare-fun Unit!67487 () Unit!67477)

(assert (=> b!4314913 (= e!2684006 Unit!67487)))

(declare-fun bm!298501 () Bool)

(assert (=> bm!298501 (= call!298502 (getPair!147 call!298505 key!2048))))

(assert (= (and d!1269077 c!733577) b!4314908))

(assert (= (and d!1269077 (not c!733577)) b!4314910))

(assert (= (and b!4314908 c!733575) b!4314909))

(assert (= (and b!4314908 (not c!733575)) b!4314903))

(assert (= (and d!1269077 c!733576) b!4314907))

(assert (= (and d!1269077 (not c!733576)) b!4314906))

(assert (= (and b!4314907 res!1768581) b!4314911))

(assert (= (and b!4314906 res!1768582) b!4314912))

(assert (= (and b!4314906 c!733578) b!4314904))

(assert (= (and b!4314906 (not c!733578)) b!4314913))

(assert (= (or b!4314907 b!4314906 b!4314912 b!4314904) bm!298497))

(assert (= (or b!4314907 b!4314911 b!4314906 b!4314912) bm!298499))

(assert (= (or b!4314911 b!4314912) bm!298498))

(assert (= (or b!4314907 b!4314906) bm!298496))

(assert (= (or b!4314911 b!4314912) bm!298501))

(assert (= (or b!4314911 b!4314912) bm!298500))

(assert (= (and d!1269077 res!1768580) b!4314905))

(declare-fun m!4908429 () Bool)

(assert (=> bm!298501 m!4908429))

(assert (=> b!4314909 m!4908173))

(declare-fun m!4908431 () Bool)

(assert (=> b!4314909 m!4908431))

(declare-fun m!4908433 () Bool)

(assert (=> b!4314909 m!4908433))

(declare-fun m!4908435 () Bool)

(assert (=> b!4314909 m!4908435))

(declare-fun m!4908437 () Bool)

(assert (=> b!4314909 m!4908437))

(declare-fun m!4908439 () Bool)

(assert (=> b!4314909 m!4908439))

(assert (=> b!4314909 m!4908435))

(declare-fun m!4908441 () Bool)

(assert (=> b!4314909 m!4908441))

(declare-fun m!4908443 () Bool)

(assert (=> b!4314909 m!4908443))

(declare-fun m!4908445 () Bool)

(assert (=> b!4314909 m!4908445))

(declare-fun m!4908447 () Bool)

(assert (=> b!4314907 m!4908447))

(declare-fun m!4908449 () Bool)

(assert (=> b!4314904 m!4908449))

(assert (=> b!4314904 m!4908449))

(declare-fun m!4908451 () Bool)

(assert (=> b!4314904 m!4908451))

(declare-fun m!4908453 () Bool)

(assert (=> b!4314904 m!4908453))

(declare-fun m!4908455 () Bool)

(assert (=> bm!298500 m!4908455))

(assert (=> bm!298497 m!4908173))

(declare-fun m!4908457 () Bool)

(assert (=> bm!298496 m!4908457))

(declare-fun m!4908459 () Bool)

(assert (=> bm!298498 m!4908459))

(assert (=> b!4314908 m!4908173))

(assert (=> b!4314908 m!4908433))

(declare-fun m!4908461 () Bool)

(assert (=> b!4314908 m!4908461))

(declare-fun m!4908463 () Bool)

(assert (=> b!4314908 m!4908463))

(assert (=> d!1269077 m!4908173))

(declare-fun m!4908465 () Bool)

(assert (=> d!1269077 m!4908465))

(declare-fun m!4908467 () Bool)

(assert (=> d!1269077 m!4908467))

(assert (=> d!1269077 m!4908175))

(declare-fun m!4908469 () Bool)

(assert (=> d!1269077 m!4908469))

(assert (=> d!1269077 m!4908467))

(declare-fun m!4908471 () Bool)

(assert (=> d!1269077 m!4908471))

(assert (=> d!1269077 m!4908167))

(assert (=> d!1269077 m!4908175))

(assert (=> d!1269077 m!4908185))

(assert (=> b!4314905 m!4908433))

(assert (=> b!4314905 m!4908433))

(declare-fun m!4908473 () Bool)

(assert (=> b!4314905 m!4908473))

(assert (=> b!4314905 m!4908473))

(declare-fun m!4908475 () Bool)

(assert (=> b!4314905 m!4908475))

(assert (=> bm!298499 m!4908185))

(assert (=> b!4314733 d!1269077))

(declare-fun d!1269079 () Bool)

(assert (=> d!1269079 (= (map!10290 (v!42530 (underlying!9640 thiss!42308))) (map!10292 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308))))))))

(declare-fun bs!605688 () Bool)

(assert (= bs!605688 d!1269079))

(declare-fun m!4908477 () Bool)

(assert (=> bs!605688 m!4908477))

(assert (=> b!4314733 d!1269079))

(declare-fun d!1269081 () Bool)

(declare-fun lt!1534494 () ListMap!1755)

(assert (=> d!1269081 (invariantList!586 (toList!2476 lt!1534494))))

(assert (=> d!1269081 (= lt!1534494 (extractMap!348 (toList!2475 (map!10290 (v!42530 (underlying!9640 thiss!42308))))))))

(assert (=> d!1269081 (valid!3702 thiss!42308)))

(assert (=> d!1269081 (= (map!10291 thiss!42308) lt!1534494)))

(declare-fun bs!605689 () Bool)

(assert (= bs!605689 d!1269081))

(declare-fun m!4908479 () Bool)

(assert (=> bs!605689 m!4908479))

(assert (=> bs!605689 m!4908173))

(assert (=> bs!605689 m!4908467))

(assert (=> bs!605689 m!4908167))

(assert (=> b!4314733 d!1269081))

(declare-fun bs!605690 () Bool)

(declare-fun d!1269083 () Bool)

(assert (= bs!605690 (and d!1269083 d!1269055)))

(declare-fun lambda!133375 () Int)

(assert (=> bs!605690 (not (= lambda!133375 lambda!133362))))

(declare-fun bs!605691 () Bool)

(assert (= bs!605691 (and d!1269083 b!4314739)))

(assert (=> bs!605691 (not (= lambda!133375 lambda!133347))))

(declare-fun bs!605692 () Bool)

(assert (= bs!605692 (and d!1269083 d!1269049)))

(assert (=> bs!605692 (= lambda!133375 lambda!133359)))

(declare-fun bs!605693 () Bool)

(assert (= bs!605693 (and d!1269083 d!1269057)))

(assert (=> bs!605693 (not (= lambda!133375 lambda!133363))))

(declare-fun bs!605694 () Bool)

(assert (= bs!605694 (and d!1269083 b!4314796)))

(assert (=> bs!605694 (not (= lambda!133375 lambda!133350))))

(declare-fun bs!605695 () Bool)

(assert (= bs!605695 (and d!1269083 d!1269047)))

(assert (=> bs!605695 (not (= lambda!133375 lambda!133356))))

(declare-fun bs!605696 () Bool)

(assert (= bs!605696 (and d!1269083 d!1269071)))

(assert (=> bs!605696 (not (= lambda!133375 lambda!133368))))

(declare-fun bs!605697 () Bool)

(assert (= bs!605697 (and d!1269083 b!4314908)))

(assert (=> bs!605697 (not (= lambda!133375 lambda!133372))))

(assert (=> d!1269083 true))

(assert (=> d!1269083 (= (allKeysSameHashInMap!364 lt!1534319 (hashF!6808 thiss!42308)) (forall!8772 (toList!2475 lt!1534319) lambda!133375))))

(declare-fun bs!605698 () Bool)

(assert (= bs!605698 d!1269083))

(declare-fun m!4908481 () Bool)

(assert (=> bs!605698 m!4908481))

(assert (=> b!4314729 d!1269083))

(declare-fun e!2684012 () Bool)

(declare-fun b!4314918 () Bool)

(declare-fun tp!1325657 () Bool)

(assert (=> b!4314918 (= e!2684012 (and tp_is_empty!23927 tp_is_empty!23925 tp!1325657))))

(assert (=> b!4314730 (= tp!1325654 e!2684012)))

(assert (= (and b!4314730 ((_ is Cons!48281) mapDefault!20992)) b!4314918))

(declare-fun b!4314926 () Bool)

(declare-fun e!2684018 () Bool)

(declare-fun tp!1325665 () Bool)

(assert (=> b!4314926 (= e!2684018 (and tp_is_empty!23927 tp_is_empty!23925 tp!1325665))))

(declare-fun condMapEmpty!20995 () Bool)

(declare-fun mapDefault!20995 () List!48405)

(assert (=> mapNonEmpty!20992 (= condMapEmpty!20995 (= mapRest!20992 ((as const (Array (_ BitVec 32) List!48405)) mapDefault!20995)))))

(declare-fun mapRes!20995 () Bool)

(assert (=> mapNonEmpty!20992 (= tp!1325650 (and e!2684018 mapRes!20995))))

(declare-fun mapIsEmpty!20995 () Bool)

(assert (=> mapIsEmpty!20995 mapRes!20995))

(declare-fun mapNonEmpty!20995 () Bool)

(declare-fun tp!1325664 () Bool)

(declare-fun e!2684017 () Bool)

(assert (=> mapNonEmpty!20995 (= mapRes!20995 (and tp!1325664 e!2684017))))

(declare-fun mapValue!20995 () List!48405)

(declare-fun mapKey!20995 () (_ BitVec 32))

(declare-fun mapRest!20995 () (Array (_ BitVec 32) List!48405))

(assert (=> mapNonEmpty!20995 (= mapRest!20992 (store mapRest!20995 mapKey!20995 mapValue!20995))))

(declare-fun b!4314925 () Bool)

(declare-fun tp!1325666 () Bool)

(assert (=> b!4314925 (= e!2684017 (and tp_is_empty!23927 tp_is_empty!23925 tp!1325666))))

(assert (= (and mapNonEmpty!20992 condMapEmpty!20995) mapIsEmpty!20995))

(assert (= (and mapNonEmpty!20992 (not condMapEmpty!20995)) mapNonEmpty!20995))

(assert (= (and mapNonEmpty!20995 ((_ is Cons!48281) mapValue!20995)) b!4314925))

(assert (= (and mapNonEmpty!20992 ((_ is Cons!48281) mapDefault!20995)) b!4314926))

(declare-fun m!4908483 () Bool)

(assert (=> mapNonEmpty!20995 m!4908483))

(declare-fun e!2684019 () Bool)

(declare-fun tp!1325667 () Bool)

(declare-fun b!4314927 () Bool)

(assert (=> b!4314927 (= e!2684019 (and tp_is_empty!23927 tp_is_empty!23925 tp!1325667))))

(assert (=> mapNonEmpty!20992 (= tp!1325648 e!2684019)))

(assert (= (and mapNonEmpty!20992 ((_ is Cons!48281) mapValue!20992)) b!4314927))

(declare-fun e!2684020 () Bool)

(declare-fun tp!1325668 () Bool)

(declare-fun b!4314928 () Bool)

(assert (=> b!4314928 (= e!2684020 (and tp_is_empty!23927 tp_is_empty!23925 tp!1325668))))

(assert (=> b!4314738 (= tp!1325653 e!2684020)))

(assert (= (and b!4314738 ((_ is Cons!48281) (zeroValue!4964 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308))))))) b!4314928))

(declare-fun e!2684021 () Bool)

(declare-fun b!4314929 () Bool)

(declare-fun tp!1325669 () Bool)

(assert (=> b!4314929 (= e!2684021 (and tp_is_empty!23927 tp_is_empty!23925 tp!1325669))))

(assert (=> b!4314738 (= tp!1325649 e!2684021)))

(assert (= (and b!4314738 ((_ is Cons!48281) (minValue!4964 (v!42529 (underlying!9639 (v!42530 (underlying!9640 thiss!42308))))))) b!4314929))

(declare-fun b_lambda!126873 () Bool)

(assert (= b_lambda!126869 (or b!4314739 b_lambda!126873)))

(declare-fun bs!605699 () Bool)

(declare-fun d!1269085 () Bool)

(assert (= bs!605699 (and d!1269085 b!4314739)))

(assert (=> bs!605699 (= (dynLambda!20465 lambda!133347 (h!53731 (toList!2475 lt!1534319))) (noDuplicateKeys!244 (_2!26729 (h!53731 (toList!2475 lt!1534319)))))))

(declare-fun m!4908485 () Bool)

(assert (=> bs!605699 m!4908485))

(assert (=> b!4314814 d!1269085))

(declare-fun b_lambda!126875 () Bool)

(assert (= b_lambda!126867 (or (and b!4314738 b_free!128779) b_lambda!126875)))

(declare-fun b_lambda!126877 () Bool)

(assert (= b_lambda!126871 (or b!4314739 b_lambda!126877)))

(declare-fun bs!605700 () Bool)

(declare-fun d!1269087 () Bool)

(assert (= bs!605700 (and d!1269087 b!4314739)))

(assert (=> bs!605700 (= (dynLambda!20465 lambda!133347 (h!53731 (toList!2475 (map!10290 (_2!26730 lt!1534323))))) (noDuplicateKeys!244 (_2!26729 (h!53731 (toList!2475 (map!10290 (_2!26730 lt!1534323)))))))))

(declare-fun m!4908487 () Bool)

(assert (=> bs!605700 m!4908487))

(assert (=> b!4314857 d!1269087))

(check-sat (not b!4314870) (not bs!605699) (not d!1269019) (not b!4314904) (not b!4314880) (not d!1269017) (not d!1269075) (not b!4314867) (not b!4314874) (not b!4314865) (not b_lambda!126877) (not b!4314763) (not tb!257325) (not d!1269021) (not b!4314863) (not d!1269057) (not b!4314847) (not bm!298482) (not d!1269063) (not b!4314876) (not d!1269077) (not b!4314815) (not b!4314877) (not bm!298501) (not d!1269073) (not b!4314850) (not b!4314791) (not bm!298499) (not d!1269023) (not d!1269039) (not b!4314765) (not bm!298500) (not d!1269037) (not d!1269055) (not d!1269047) (not b!4314875) (not b!4314866) (not b!4314784) (not b!4314929) (not d!1269083) (not d!1269067) (not d!1269027) (not mapNonEmpty!20995) (not d!1269069) (not bm!298497) (not bm!298479) (not d!1269079) (not d!1269045) tp_is_empty!23927 tp_is_empty!23925 (not b!4314809) (not b_next!129483) (not b!4314869) (not b_lambda!126875) (not b!4314872) (not b!4314905) (not bm!298483) (not bm!298478) (not b!4314796) (not b!4314824) (not b!4314918) (not b!4314926) (not b!4314909) (not d!1269061) (not d!1269035) (not b!4314778) (not b!4314808) (not b!4314854) (not d!1269071) (not b!4314855) (not b!4314797) (not b!4314759) (not b!4314846) (not b!4314790) (not d!1269081) (not b!4314761) (not bm!298496) (not b_next!129485) (not b!4314907) (not b!4314925) b_and!340255 (not b!4314853) (not b!4314767) (not b!4314864) (not b!4314928) (not bs!605700) (not b!4314927) (not d!1269043) (not b!4314851) (not d!1269051) (not b!4314803) (not b!4314908) (not bm!298498) (not b!4314873) (not d!1269049) (not b!4314848) (not b_lambda!126873) b_and!340253 (not b!4314858) (not d!1269053))
(check-sat b_and!340255 b_and!340253 (not b_next!129485) (not b_next!129483))
