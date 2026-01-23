; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413714 () Bool)

(assert start!413714)

(declare-fun b!4306525 () Bool)

(declare-fun b_free!128435 () Bool)

(declare-fun b_next!129139 () Bool)

(assert (=> b!4306525 (= b_free!128435 (not b_next!129139))))

(declare-fun tp!1323471 () Bool)

(declare-fun b_and!339837 () Bool)

(assert (=> b!4306525 (= tp!1323471 b_and!339837)))

(declare-fun b!4306531 () Bool)

(declare-fun b_free!128437 () Bool)

(declare-fun b_next!129141 () Bool)

(assert (=> b!4306531 (= b_free!128437 (not b_next!129141))))

(declare-fun tp!1323473 () Bool)

(declare-fun b_and!339839 () Bool)

(assert (=> b!4306531 (= tp!1323473 b_and!339839)))

(declare-fun b!4306524 () Bool)

(declare-fun e!2677846 () Bool)

(declare-fun e!2677840 () Bool)

(assert (=> b!4306524 (= e!2677846 e!2677840)))

(declare-fun res!1765158 () Bool)

(assert (=> b!4306524 (=> (not res!1765158) (not e!2677840))))

(declare-datatypes ((V!9496 0))(
  ( (V!9497 (val!15693 Int)) )
))
(declare-datatypes ((K!9294 0))(
  ( (K!9295 (val!15694 Int)) )
))
(declare-datatypes ((tuple2!46374 0))(
  ( (tuple2!46375 (_1!26466 K!9294) (_2!26466 V!9496)) )
))
(declare-datatypes ((List!48240 0))(
  ( (Nil!48116) (Cons!48116 (h!53544 tuple2!46374) (t!355027 List!48240)) )
))
(declare-datatypes ((array!16620 0))(
  ( (array!16621 (arr!7423 (Array (_ BitVec 32) (_ BitVec 64))) (size!35462 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4535 0))(
  ( (HashableExt!4534 (__x!29882 Int)) )
))
(declare-datatypes ((array!16622 0))(
  ( (array!16623 (arr!7424 (Array (_ BitVec 32) List!48240)) (size!35463 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9238 0))(
  ( (LongMapFixedSize!9239 (defaultEntry!5004 Int) (mask!13157 (_ BitVec 32)) (extraKeys!4868 (_ BitVec 32)) (zeroValue!4878 List!48240) (minValue!4878 List!48240) (_size!9281 (_ BitVec 32)) (_keys!4919 array!16620) (_values!4900 array!16622) (_vacant!4680 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18285 0))(
  ( (Cell!18286 (v!42181 LongMapFixedSize!9238)) )
))
(declare-datatypes ((MutLongMap!4619 0))(
  ( (LongMap!4619 (underlying!9467 Cell!18285)) (MutLongMapExt!4618 (__x!29883 Int)) )
))
(declare-datatypes ((Cell!18287 0))(
  ( (Cell!18288 (v!42182 MutLongMap!4619)) )
))
(declare-datatypes ((MutableMap!4525 0))(
  ( (MutableMapExt!4524 (__x!29884 Int)) (HashMap!4525 (underlying!9468 Cell!18287) (hashF!6615 Hashable!4535) (_size!9282 (_ BitVec 32)) (defaultValue!4696 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4525)

(declare-fun key!2048 () K!9294)

(declare-fun contains!10063 (MutableMap!4525 K!9294) Bool)

(assert (=> b!4306524 (= res!1765158 (not (contains!10063 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46376 0))(
  ( (tuple2!46377 (_1!26467 (_ BitVec 64)) (_2!26467 List!48240)) )
))
(declare-datatypes ((List!48241 0))(
  ( (Nil!48117) (Cons!48117 (h!53545 tuple2!46376) (t!355028 List!48241)) )
))
(declare-datatypes ((ListLongMap!945 0))(
  ( (ListLongMap!946 (toList!2334 List!48241)) )
))
(declare-fun lt!1527327 () ListLongMap!945)

(declare-fun map!10093 (MutLongMap!4619) ListLongMap!945)

(assert (=> b!4306524 (= lt!1527327 (map!10093 (v!42182 (underlying!9468 thiss!42308))))))

(declare-datatypes ((ListMap!1617 0))(
  ( (ListMap!1618 (toList!2335 List!48240)) )
))
(declare-fun lt!1527332 () ListMap!1617)

(declare-fun map!10094 (MutableMap!4525) ListMap!1617)

(assert (=> b!4306524 (= lt!1527332 (map!10094 thiss!42308))))

(declare-fun e!2677848 () Bool)

(declare-fun tp!1323472 () Bool)

(declare-fun tp!1323470 () Bool)

(declare-fun e!2677844 () Bool)

(declare-fun array_inv!5325 (array!16620) Bool)

(declare-fun array_inv!5326 (array!16622) Bool)

(assert (=> b!4306525 (= e!2677844 (and tp!1323471 tp!1323472 tp!1323470 (array_inv!5325 (_keys!4919 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308)))))) (array_inv!5326 (_values!4900 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308)))))) e!2677848))))

(declare-fun b!4306526 () Bool)

(declare-fun e!2677841 () List!48240)

(assert (=> b!4306526 (= e!2677841 Nil!48116)))

(declare-fun res!1765156 () Bool)

(assert (=> start!413714 (=> (not res!1765156) (not e!2677846))))

(get-info :version)

(assert (=> start!413714 (= res!1765156 ((_ is HashMap!4525) thiss!42308))))

(assert (=> start!413714 e!2677846))

(declare-fun e!2677837 () Bool)

(assert (=> start!413714 e!2677837))

(declare-fun tp_is_empty!23597 () Bool)

(assert (=> start!413714 tp_is_empty!23597))

(declare-fun tp_is_empty!23599 () Bool)

(assert (=> start!413714 tp_is_empty!23599))

(declare-fun b!4306527 () Bool)

(declare-fun e!2677847 () Bool)

(declare-fun lt!1527333 () ListLongMap!945)

(declare-fun allKeysSameHashInMap!314 (ListLongMap!945 Hashable!4535) Bool)

(assert (=> b!4306527 (= e!2677847 (allKeysSameHashInMap!314 lt!1527333 (hashF!6615 thiss!42308)))))

(declare-fun b!4306528 () Bool)

(declare-fun tp!1323468 () Bool)

(declare-fun mapRes!20662 () Bool)

(assert (=> b!4306528 (= e!2677848 (and tp!1323468 mapRes!20662))))

(declare-fun condMapEmpty!20662 () Bool)

(declare-fun mapDefault!20662 () List!48240)

(assert (=> b!4306528 (= condMapEmpty!20662 (= (arr!7424 (_values!4900 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48240)) mapDefault!20662)))))

(declare-fun b!4306529 () Bool)

(declare-fun e!2677839 () Bool)

(declare-fun e!2677843 () Bool)

(declare-fun lt!1527336 () MutLongMap!4619)

(assert (=> b!4306529 (= e!2677839 (and e!2677843 ((_ is LongMap!4619) lt!1527336)))))

(assert (=> b!4306529 (= lt!1527336 (v!42182 (underlying!9468 thiss!42308)))))

(declare-fun b!4306530 () Bool)

(declare-fun res!1765157 () Bool)

(assert (=> b!4306530 (=> (not res!1765157) (not e!2677846))))

(declare-fun valid!3605 (MutableMap!4525) Bool)

(assert (=> b!4306530 (= res!1765157 (valid!3605 thiss!42308))))

(declare-fun mapIsEmpty!20662 () Bool)

(assert (=> mapIsEmpty!20662 mapRes!20662))

(assert (=> b!4306531 (= e!2677837 (and e!2677839 tp!1323473))))

(declare-fun b!4306532 () Bool)

(declare-fun e!2677849 () Bool)

(declare-fun e!2677836 () Bool)

(assert (=> b!4306532 (= e!2677849 (not e!2677836))))

(declare-fun res!1765155 () Bool)

(assert (=> b!4306532 (=> res!1765155 e!2677836)))

(declare-datatypes ((tuple2!46378 0))(
  ( (tuple2!46379 (_1!26468 Bool) (_2!26468 MutLongMap!4619)) )
))
(declare-fun lt!1527334 () tuple2!46378)

(assert (=> b!4306532 (= res!1765155 (not ((_ is LongMap!4619) (_2!26468 lt!1527334))))))

(declare-fun lt!1527329 () tuple2!46374)

(declare-fun eq!124 (ListMap!1617 ListMap!1617) Bool)

(declare-fun extractMap!308 (List!48241) ListMap!1617)

(declare-fun +!229 (ListMap!1617 tuple2!46374) ListMap!1617)

(assert (=> b!4306532 (eq!124 (extractMap!308 (toList!2334 lt!1527333)) (+!229 (extractMap!308 (toList!2334 lt!1527327)) lt!1527329))))

(declare-datatypes ((Unit!67135 0))(
  ( (Unit!67136) )
))
(declare-fun lt!1527323 () Unit!67135)

(declare-fun lt!1527325 () List!48240)

(declare-fun lt!1527331 () (_ BitVec 64))

(declare-fun v!9179 () V!9496)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!42 (ListLongMap!945 (_ BitVec 64) List!48240 K!9294 V!9496 Hashable!4535) Unit!67135)

(assert (=> b!4306532 (= lt!1527323 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!42 lt!1527327 lt!1527331 lt!1527325 key!2048 v!9179 (hashF!6615 thiss!42308)))))

(assert (=> b!4306532 e!2677847))

(declare-fun res!1765154 () Bool)

(assert (=> b!4306532 (=> (not res!1765154) (not e!2677847))))

(declare-fun lambda!132530 () Int)

(declare-fun forall!8702 (List!48241 Int) Bool)

(assert (=> b!4306532 (= res!1765154 (forall!8702 (toList!2334 lt!1527333) lambda!132530))))

(declare-fun +!230 (ListLongMap!945 tuple2!46376) ListLongMap!945)

(assert (=> b!4306532 (= lt!1527333 (+!230 lt!1527327 (tuple2!46377 lt!1527331 lt!1527325)))))

(declare-fun lt!1527330 () Unit!67135)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!131 (ListLongMap!945 (_ BitVec 64) List!48240 Hashable!4535) Unit!67135)

(assert (=> b!4306532 (= lt!1527330 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!131 lt!1527327 lt!1527331 lt!1527325 (hashF!6615 thiss!42308)))))

(declare-fun lt!1527326 () Unit!67135)

(declare-fun e!2677842 () Unit!67135)

(assert (=> b!4306532 (= lt!1527326 e!2677842)))

(declare-fun c!732174 () Bool)

(declare-fun lt!1527324 () List!48240)

(declare-fun isEmpty!28068 (List!48240) Bool)

(assert (=> b!4306532 (= c!732174 (not (isEmpty!28068 lt!1527324)))))

(declare-fun b!4306533 () Bool)

(declare-fun e!2677845 () Bool)

(assert (=> b!4306533 (= e!2677843 e!2677845)))

(declare-fun b!4306534 () Bool)

(declare-fun apply!10971 (MutLongMap!4619 (_ BitVec 64)) List!48240)

(assert (=> b!4306534 (= e!2677841 (apply!10971 (v!42182 (underlying!9468 thiss!42308)) lt!1527331))))

(declare-fun mapNonEmpty!20662 () Bool)

(declare-fun tp!1323469 () Bool)

(declare-fun tp!1323467 () Bool)

(assert (=> mapNonEmpty!20662 (= mapRes!20662 (and tp!1323469 tp!1323467))))

(declare-fun mapValue!20662 () List!48240)

(declare-fun mapKey!20662 () (_ BitVec 32))

(declare-fun mapRest!20662 () (Array (_ BitVec 32) List!48240))

(assert (=> mapNonEmpty!20662 (= (arr!7424 (_values!4900 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308)))))) (store mapRest!20662 mapKey!20662 mapValue!20662))))

(declare-fun b!4306535 () Bool)

(assert (=> b!4306535 (= e!2677840 e!2677849)))

(declare-fun res!1765159 () Bool)

(assert (=> b!4306535 (=> (not res!1765159) (not e!2677849))))

(assert (=> b!4306535 (= res!1765159 (_1!26468 lt!1527334))))

(declare-fun update!398 (MutLongMap!4619 (_ BitVec 64) List!48240) tuple2!46378)

(assert (=> b!4306535 (= lt!1527334 (update!398 (v!42182 (underlying!9468 thiss!42308)) lt!1527331 lt!1527325))))

(assert (=> b!4306535 (= lt!1527325 (Cons!48116 lt!1527329 lt!1527324))))

(assert (=> b!4306535 (= lt!1527329 (tuple2!46375 key!2048 v!9179))))

(assert (=> b!4306535 (= lt!1527324 e!2677841)))

(declare-fun c!732173 () Bool)

(declare-fun contains!10064 (MutLongMap!4619 (_ BitVec 64)) Bool)

(assert (=> b!4306535 (= c!732173 (contains!10064 (v!42182 (underlying!9468 thiss!42308)) lt!1527331))))

(declare-fun hash!942 (Hashable!4535 K!9294) (_ BitVec 64))

(assert (=> b!4306535 (= lt!1527331 (hash!942 (hashF!6615 thiss!42308) key!2048))))

(declare-fun b!4306536 () Bool)

(declare-fun lt!1527335 () Unit!67135)

(assert (=> b!4306536 (= e!2677842 lt!1527335)))

(declare-fun lt!1527328 () Unit!67135)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!154 (List!48241 (_ BitVec 64) List!48240 Hashable!4535) Unit!67135)

(assert (=> b!4306536 (= lt!1527328 (lemmaInLongMapAllKeySameHashThenForTuple!154 (toList!2334 lt!1527327) lt!1527331 lt!1527324 (hashF!6615 thiss!42308)))))

(declare-fun allKeysSameHash!164 (List!48240 (_ BitVec 64) Hashable!4535) Bool)

(assert (=> b!4306536 (allKeysSameHash!164 lt!1527324 lt!1527331 (hashF!6615 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!148 (List!48240 K!9294 (_ BitVec 64) Hashable!4535) Unit!67135)

(assert (=> b!4306536 (= lt!1527335 (lemmaRemovePairForKeyPreservesHash!148 lt!1527324 key!2048 lt!1527331 (hashF!6615 thiss!42308)))))

(declare-fun removePairForKey!188 (List!48240 K!9294) List!48240)

(assert (=> b!4306536 (allKeysSameHash!164 (removePairForKey!188 lt!1527324 key!2048) lt!1527331 (hashF!6615 thiss!42308))))

(declare-fun b!4306537 () Bool)

(declare-fun Unit!67137 () Unit!67135)

(assert (=> b!4306537 (= e!2677842 Unit!67137)))

(declare-fun b!4306538 () Bool)

(assert (=> b!4306538 (= e!2677845 e!2677844)))

(declare-fun b!4306539 () Bool)

(declare-fun valid!3606 (MutLongMap!4619) Bool)

(assert (=> b!4306539 (= e!2677836 (valid!3606 (_2!26468 lt!1527334)))))

(assert (= (and start!413714 res!1765156) b!4306530))

(assert (= (and b!4306530 res!1765157) b!4306524))

(assert (= (and b!4306524 res!1765158) b!4306535))

(assert (= (and b!4306535 c!732173) b!4306534))

(assert (= (and b!4306535 (not c!732173)) b!4306526))

(assert (= (and b!4306535 res!1765159) b!4306532))

(assert (= (and b!4306532 c!732174) b!4306536))

(assert (= (and b!4306532 (not c!732174)) b!4306537))

(assert (= (and b!4306532 res!1765154) b!4306527))

(assert (= (and b!4306532 (not res!1765155)) b!4306539))

(assert (= (and b!4306528 condMapEmpty!20662) mapIsEmpty!20662))

(assert (= (and b!4306528 (not condMapEmpty!20662)) mapNonEmpty!20662))

(assert (= b!4306525 b!4306528))

(assert (= b!4306538 b!4306525))

(assert (= b!4306533 b!4306538))

(assert (= (and b!4306529 ((_ is LongMap!4619) (v!42182 (underlying!9468 thiss!42308)))) b!4306533))

(assert (= b!4306531 b!4306529))

(assert (= (and start!413714 ((_ is HashMap!4525) thiss!42308)) b!4306531))

(declare-fun m!4899159 () Bool)

(assert (=> b!4306534 m!4899159))

(declare-fun m!4899161 () Bool)

(assert (=> b!4306525 m!4899161))

(declare-fun m!4899163 () Bool)

(assert (=> b!4306525 m!4899163))

(declare-fun m!4899165 () Bool)

(assert (=> b!4306539 m!4899165))

(declare-fun m!4899167 () Bool)

(assert (=> b!4306532 m!4899167))

(declare-fun m!4899169 () Bool)

(assert (=> b!4306532 m!4899169))

(declare-fun m!4899171 () Bool)

(assert (=> b!4306532 m!4899171))

(declare-fun m!4899173 () Bool)

(assert (=> b!4306532 m!4899173))

(declare-fun m!4899175 () Bool)

(assert (=> b!4306532 m!4899175))

(assert (=> b!4306532 m!4899167))

(declare-fun m!4899177 () Bool)

(assert (=> b!4306532 m!4899177))

(declare-fun m!4899179 () Bool)

(assert (=> b!4306532 m!4899179))

(declare-fun m!4899181 () Bool)

(assert (=> b!4306532 m!4899181))

(assert (=> b!4306532 m!4899175))

(assert (=> b!4306532 m!4899169))

(declare-fun m!4899183 () Bool)

(assert (=> b!4306532 m!4899183))

(declare-fun m!4899185 () Bool)

(assert (=> b!4306527 m!4899185))

(declare-fun m!4899187 () Bool)

(assert (=> b!4306530 m!4899187))

(declare-fun m!4899189 () Bool)

(assert (=> b!4306524 m!4899189))

(declare-fun m!4899191 () Bool)

(assert (=> b!4306524 m!4899191))

(declare-fun m!4899193 () Bool)

(assert (=> b!4306524 m!4899193))

(declare-fun m!4899195 () Bool)

(assert (=> b!4306536 m!4899195))

(declare-fun m!4899197 () Bool)

(assert (=> b!4306536 m!4899197))

(declare-fun m!4899199 () Bool)

(assert (=> b!4306536 m!4899199))

(declare-fun m!4899201 () Bool)

(assert (=> b!4306536 m!4899201))

(assert (=> b!4306536 m!4899195))

(declare-fun m!4899203 () Bool)

(assert (=> b!4306536 m!4899203))

(declare-fun m!4899205 () Bool)

(assert (=> mapNonEmpty!20662 m!4899205))

(declare-fun m!4899207 () Bool)

(assert (=> b!4306535 m!4899207))

(declare-fun m!4899209 () Bool)

(assert (=> b!4306535 m!4899209))

(declare-fun m!4899211 () Bool)

(assert (=> b!4306535 m!4899211))

(check-sat (not b!4306539) (not b!4306534) tp_is_empty!23597 tp_is_empty!23599 (not b!4306532) b_and!339839 b_and!339837 (not b!4306527) (not b!4306536) (not b_next!129139) (not b_next!129141) (not b!4306535) (not b!4306528) (not b!4306524) (not b!4306530) (not b!4306525) (not mapNonEmpty!20662))
(check-sat b_and!339837 b_and!339839 (not b_next!129141) (not b_next!129139))
(get-model)

(declare-fun bs!604567 () Bool)

(declare-fun b!4306569 () Bool)

(assert (= bs!604567 (and b!4306569 b!4306532)))

(declare-fun lambda!132533 () Int)

(assert (=> bs!604567 (= lambda!132533 lambda!132530)))

(declare-fun call!296943 () List!48240)

(declare-fun lt!1527393 () ListLongMap!945)

(declare-fun c!732185 () Bool)

(declare-fun call!296942 () ListLongMap!945)

(declare-fun call!296946 () (_ BitVec 64))

(declare-fun bm!296937 () Bool)

(declare-fun apply!10972 (ListLongMap!945 (_ BitVec 64)) List!48240)

(assert (=> bm!296937 (= call!296943 (apply!10972 (ite c!732185 lt!1527393 call!296942) call!296946))))

(declare-fun d!1267460 () Bool)

(declare-fun lt!1527394 () Bool)

(declare-fun contains!10065 (ListMap!1617 K!9294) Bool)

(assert (=> d!1267460 (= lt!1527394 (contains!10065 (map!10094 thiss!42308) key!2048))))

(declare-fun e!2677869 () Bool)

(assert (=> d!1267460 (= lt!1527394 e!2677869)))

(declare-fun res!1765167 () Bool)

(assert (=> d!1267460 (=> (not res!1765167) (not e!2677869))))

(declare-fun lt!1527380 () (_ BitVec 64))

(assert (=> d!1267460 (= res!1765167 (contains!10064 (v!42182 (underlying!9468 thiss!42308)) lt!1527380))))

(declare-fun lt!1527379 () Unit!67135)

(declare-fun e!2677868 () Unit!67135)

(assert (=> d!1267460 (= lt!1527379 e!2677868)))

(assert (=> d!1267460 (= c!732185 (contains!10065 (extractMap!308 (toList!2334 (map!10093 (v!42182 (underlying!9468 thiss!42308))))) key!2048))))

(declare-fun lt!1527385 () Unit!67135)

(declare-fun e!2677864 () Unit!67135)

(assert (=> d!1267460 (= lt!1527385 e!2677864)))

(declare-fun c!732183 () Bool)

(assert (=> d!1267460 (= c!732183 (contains!10064 (v!42182 (underlying!9468 thiss!42308)) lt!1527380))))

(assert (=> d!1267460 (= lt!1527380 (hash!942 (hashF!6615 thiss!42308) key!2048))))

(assert (=> d!1267460 (valid!3605 thiss!42308)))

(assert (=> d!1267460 (= (contains!10063 thiss!42308 key!2048) lt!1527394)))

(declare-fun b!4306562 () Bool)

(declare-fun e!2677867 () Unit!67135)

(assert (=> b!4306562 (= e!2677868 e!2677867)))

(declare-fun res!1765168 () Bool)

(declare-fun call!296944 () Bool)

(assert (=> b!4306562 (= res!1765168 call!296944)))

(declare-fun e!2677870 () Bool)

(assert (=> b!4306562 (=> (not res!1765168) (not e!2677870))))

(declare-fun c!732186 () Bool)

(assert (=> b!4306562 (= c!732186 e!2677870)))

(declare-fun b!4306563 () Bool)

(declare-fun e!2677866 () Bool)

(declare-fun call!296945 () Bool)

(assert (=> b!4306563 (= e!2677866 call!296945)))

(declare-fun b!4306564 () Bool)

(declare-datatypes ((Option!10204 0))(
  ( (None!10203) (Some!10203 (v!42187 tuple2!46374)) )
))
(declare-fun isDefined!7511 (Option!10204) Bool)

(declare-fun getPair!124 (List!48240 K!9294) Option!10204)

(assert (=> b!4306564 (= e!2677869 (isDefined!7511 (getPair!124 (apply!10971 (v!42182 (underlying!9468 thiss!42308)) lt!1527380) key!2048)))))

(declare-fun b!4306565 () Bool)

(assert (=> b!4306565 false))

(declare-fun lt!1527382 () Unit!67135)

(declare-fun lt!1527384 () Unit!67135)

(assert (=> b!4306565 (= lt!1527382 lt!1527384)))

(declare-fun lt!1527396 () List!48241)

(declare-fun lt!1527389 () List!48240)

(declare-fun contains!10066 (List!48241 tuple2!46376) Bool)

(assert (=> b!4306565 (contains!10066 lt!1527396 (tuple2!46377 lt!1527380 lt!1527389))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!135 (List!48241 (_ BitVec 64) List!48240) Unit!67135)

(assert (=> b!4306565 (= lt!1527384 (lemmaGetValueByKeyImpliesContainsTuple!135 lt!1527396 lt!1527380 lt!1527389))))

(assert (=> b!4306565 (= lt!1527389 (apply!10971 (v!42182 (underlying!9468 thiss!42308)) lt!1527380))))

(assert (=> b!4306565 (= lt!1527396 (toList!2334 (map!10093 (v!42182 (underlying!9468 thiss!42308)))))))

(declare-fun lt!1527395 () Unit!67135)

(declare-fun lt!1527381 () Unit!67135)

(assert (=> b!4306565 (= lt!1527395 lt!1527381)))

(declare-fun lt!1527387 () List!48241)

(declare-datatypes ((Option!10205 0))(
  ( (None!10204) (Some!10204 (v!42188 List!48240)) )
))
(declare-fun isDefined!7512 (Option!10205) Bool)

(declare-fun getValueByKey!239 (List!48241 (_ BitVec 64)) Option!10205)

(assert (=> b!4306565 (isDefined!7512 (getValueByKey!239 lt!1527387 lt!1527380))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!164 (List!48241 (_ BitVec 64)) Unit!67135)

(assert (=> b!4306565 (= lt!1527381 (lemmaContainsKeyImpliesGetValueByKeyDefined!164 lt!1527387 lt!1527380))))

(assert (=> b!4306565 (= lt!1527387 (toList!2334 (map!10093 (v!42182 (underlying!9468 thiss!42308)))))))

(declare-fun lt!1527392 () Unit!67135)

(declare-fun lt!1527377 () Unit!67135)

(assert (=> b!4306565 (= lt!1527392 lt!1527377)))

(declare-fun lt!1527388 () List!48241)

(declare-fun containsKey!286 (List!48241 (_ BitVec 64)) Bool)

(assert (=> b!4306565 (containsKey!286 lt!1527388 lt!1527380)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!125 (List!48241 (_ BitVec 64)) Unit!67135)

(assert (=> b!4306565 (= lt!1527377 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!125 lt!1527388 lt!1527380))))

(assert (=> b!4306565 (= lt!1527388 (toList!2334 (map!10093 (v!42182 (underlying!9468 thiss!42308)))))))

(declare-fun e!2677865 () Unit!67135)

(declare-fun Unit!67138 () Unit!67135)

(assert (=> b!4306565 (= e!2677865 Unit!67138)))

(declare-fun bm!296938 () Bool)

(declare-fun contains!10067 (ListLongMap!945 (_ BitVec 64)) Bool)

(assert (=> bm!296938 (= call!296944 (contains!10067 (ite c!732185 lt!1527393 call!296942) call!296946))))

(declare-fun bm!296939 () Bool)

(assert (=> bm!296939 (= call!296942 (map!10093 (v!42182 (underlying!9468 thiss!42308))))))

(declare-fun bm!296940 () Bool)

(assert (=> bm!296940 (= call!296946 (hash!942 (hashF!6615 thiss!42308) key!2048))))

(declare-fun b!4306566 () Bool)

(declare-fun Unit!67139 () Unit!67135)

(assert (=> b!4306566 (= e!2677865 Unit!67139)))

(declare-fun b!4306567 () Bool)

(declare-fun Unit!67140 () Unit!67135)

(assert (=> b!4306567 (= e!2677864 Unit!67140)))

(declare-fun b!4306568 () Bool)

(assert (=> b!4306568 false))

(declare-fun lt!1527383 () Unit!67135)

(declare-fun lt!1527378 () Unit!67135)

(assert (=> b!4306568 (= lt!1527383 lt!1527378)))

(declare-fun lt!1527391 () ListLongMap!945)

(assert (=> b!4306568 (contains!10065 (extractMap!308 (toList!2334 lt!1527391)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!124 (ListLongMap!945 K!9294 Hashable!4535) Unit!67135)

(assert (=> b!4306568 (= lt!1527378 (lemmaInLongMapThenInGenericMap!124 lt!1527391 key!2048 (hashF!6615 thiss!42308)))))

(assert (=> b!4306568 (= lt!1527391 call!296942)))

(declare-fun Unit!67141 () Unit!67135)

(assert (=> b!4306568 (= e!2677867 Unit!67141)))

(declare-fun forallContained!1491 (List!48241 Int tuple2!46376) Unit!67135)

(assert (=> b!4306569 (= e!2677864 (forallContained!1491 (toList!2334 (map!10093 (v!42182 (underlying!9468 thiss!42308)))) lambda!132533 (tuple2!46377 lt!1527380 (apply!10971 (v!42182 (underlying!9468 thiss!42308)) lt!1527380))))))

(declare-fun c!732184 () Bool)

(assert (=> b!4306569 (= c!732184 (not (contains!10066 (toList!2334 (map!10093 (v!42182 (underlying!9468 thiss!42308)))) (tuple2!46377 lt!1527380 (apply!10971 (v!42182 (underlying!9468 thiss!42308)) lt!1527380)))))))

(declare-fun lt!1527386 () Unit!67135)

(assert (=> b!4306569 (= lt!1527386 e!2677865)))

(declare-fun bm!296941 () Bool)

(declare-fun call!296947 () Option!10204)

(assert (=> bm!296941 (= call!296947 (getPair!124 call!296943 key!2048))))

(declare-fun b!4306570 () Bool)

(declare-fun Unit!67142 () Unit!67135)

(assert (=> b!4306570 (= e!2677867 Unit!67142)))

(declare-fun b!4306571 () Bool)

(declare-fun lt!1527390 () Unit!67135)

(assert (=> b!4306571 (= e!2677868 lt!1527390)))

(assert (=> b!4306571 (= lt!1527393 call!296942)))

(declare-fun lemmaInGenericMapThenInLongMap!124 (ListLongMap!945 K!9294 Hashable!4535) Unit!67135)

(assert (=> b!4306571 (= lt!1527390 (lemmaInGenericMapThenInLongMap!124 lt!1527393 key!2048 (hashF!6615 thiss!42308)))))

(declare-fun res!1765166 () Bool)

(assert (=> b!4306571 (= res!1765166 call!296944)))

(assert (=> b!4306571 (=> (not res!1765166) (not e!2677866))))

(assert (=> b!4306571 e!2677866))

(declare-fun b!4306572 () Bool)

(assert (=> b!4306572 (= e!2677870 call!296945)))

(declare-fun bm!296942 () Bool)

(assert (=> bm!296942 (= call!296945 (isDefined!7511 call!296947))))

(assert (= (and d!1267460 c!732183) b!4306569))

(assert (= (and d!1267460 (not c!732183)) b!4306567))

(assert (= (and b!4306569 c!732184) b!4306565))

(assert (= (and b!4306569 (not c!732184)) b!4306566))

(assert (= (and d!1267460 c!732185) b!4306571))

(assert (= (and d!1267460 (not c!732185)) b!4306562))

(assert (= (and b!4306571 res!1765166) b!4306563))

(assert (= (and b!4306562 res!1765168) b!4306572))

(assert (= (and b!4306562 c!732186) b!4306568))

(assert (= (and b!4306562 (not c!732186)) b!4306570))

(assert (= (or b!4306571 b!4306563 b!4306562 b!4306572) bm!296940))

(assert (= (or b!4306571 b!4306562 b!4306572 b!4306568) bm!296939))

(assert (= (or b!4306571 b!4306562) bm!296938))

(assert (= (or b!4306563 b!4306572) bm!296937))

(assert (= (or b!4306563 b!4306572) bm!296941))

(assert (= (or b!4306563 b!4306572) bm!296942))

(assert (= (and d!1267460 res!1765167) b!4306564))

(assert (=> bm!296939 m!4899191))

(assert (=> d!1267460 m!4899193))

(declare-fun m!4899213 () Bool)

(assert (=> d!1267460 m!4899213))

(declare-fun m!4899215 () Bool)

(assert (=> d!1267460 m!4899215))

(assert (=> d!1267460 m!4899213))

(declare-fun m!4899217 () Bool)

(assert (=> d!1267460 m!4899217))

(assert (=> d!1267460 m!4899193))

(declare-fun m!4899219 () Bool)

(assert (=> d!1267460 m!4899219))

(assert (=> d!1267460 m!4899187))

(assert (=> d!1267460 m!4899211))

(assert (=> d!1267460 m!4899191))

(assert (=> b!4306569 m!4899191))

(declare-fun m!4899221 () Bool)

(assert (=> b!4306569 m!4899221))

(declare-fun m!4899223 () Bool)

(assert (=> b!4306569 m!4899223))

(declare-fun m!4899225 () Bool)

(assert (=> b!4306569 m!4899225))

(declare-fun m!4899227 () Bool)

(assert (=> b!4306571 m!4899227))

(declare-fun m!4899229 () Bool)

(assert (=> bm!296937 m!4899229))

(declare-fun m!4899231 () Bool)

(assert (=> bm!296942 m!4899231))

(declare-fun m!4899233 () Bool)

(assert (=> b!4306568 m!4899233))

(assert (=> b!4306568 m!4899233))

(declare-fun m!4899235 () Bool)

(assert (=> b!4306568 m!4899235))

(declare-fun m!4899237 () Bool)

(assert (=> b!4306568 m!4899237))

(assert (=> b!4306564 m!4899221))

(assert (=> b!4306564 m!4899221))

(declare-fun m!4899239 () Bool)

(assert (=> b!4306564 m!4899239))

(assert (=> b!4306564 m!4899239))

(declare-fun m!4899241 () Bool)

(assert (=> b!4306564 m!4899241))

(assert (=> bm!296940 m!4899211))

(declare-fun m!4899243 () Bool)

(assert (=> bm!296938 m!4899243))

(declare-fun m!4899245 () Bool)

(assert (=> bm!296941 m!4899245))

(declare-fun m!4899247 () Bool)

(assert (=> b!4306565 m!4899247))

(declare-fun m!4899249 () Bool)

(assert (=> b!4306565 m!4899249))

(assert (=> b!4306565 m!4899249))

(declare-fun m!4899251 () Bool)

(assert (=> b!4306565 m!4899251))

(assert (=> b!4306565 m!4899191))

(assert (=> b!4306565 m!4899221))

(declare-fun m!4899253 () Bool)

(assert (=> b!4306565 m!4899253))

(declare-fun m!4899255 () Bool)

(assert (=> b!4306565 m!4899255))

(declare-fun m!4899257 () Bool)

(assert (=> b!4306565 m!4899257))

(declare-fun m!4899259 () Bool)

(assert (=> b!4306565 m!4899259))

(assert (=> b!4306524 d!1267460))

(declare-fun d!1267462 () Bool)

(declare-fun map!10095 (LongMapFixedSize!9238) ListLongMap!945)

(assert (=> d!1267462 (= (map!10093 (v!42182 (underlying!9468 thiss!42308))) (map!10095 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308))))))))

(declare-fun bs!604568 () Bool)

(assert (= bs!604568 d!1267462))

(declare-fun m!4899261 () Bool)

(assert (=> bs!604568 m!4899261))

(assert (=> b!4306524 d!1267462))

(declare-fun d!1267464 () Bool)

(declare-fun lt!1527399 () ListMap!1617)

(declare-fun invariantList!563 (List!48240) Bool)

(assert (=> d!1267464 (invariantList!563 (toList!2335 lt!1527399))))

(assert (=> d!1267464 (= lt!1527399 (extractMap!308 (toList!2334 (map!10093 (v!42182 (underlying!9468 thiss!42308))))))))

(assert (=> d!1267464 (valid!3605 thiss!42308)))

(assert (=> d!1267464 (= (map!10094 thiss!42308) lt!1527399)))

(declare-fun bs!604569 () Bool)

(assert (= bs!604569 d!1267464))

(declare-fun m!4899263 () Bool)

(assert (=> bs!604569 m!4899263))

(assert (=> bs!604569 m!4899191))

(assert (=> bs!604569 m!4899213))

(assert (=> bs!604569 m!4899187))

(assert (=> b!4306524 d!1267464))

(declare-fun d!1267466 () Bool)

(declare-fun e!2677873 () Bool)

(assert (=> d!1267466 e!2677873))

(declare-fun c!732189 () Bool)

(assert (=> d!1267466 (= c!732189 (contains!10064 (v!42182 (underlying!9468 thiss!42308)) lt!1527331))))

(declare-fun lt!1527402 () List!48240)

(declare-fun apply!10973 (LongMapFixedSize!9238 (_ BitVec 64)) List!48240)

(assert (=> d!1267466 (= lt!1527402 (apply!10973 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308)))) lt!1527331))))

(assert (=> d!1267466 (valid!3606 (v!42182 (underlying!9468 thiss!42308)))))

(assert (=> d!1267466 (= (apply!10971 (v!42182 (underlying!9468 thiss!42308)) lt!1527331) lt!1527402)))

(declare-fun b!4306577 () Bool)

(declare-fun get!15563 (Option!10205) List!48240)

(assert (=> b!4306577 (= e!2677873 (= lt!1527402 (get!15563 (getValueByKey!239 (toList!2334 (map!10093 (v!42182 (underlying!9468 thiss!42308)))) lt!1527331))))))

(declare-fun b!4306578 () Bool)

(declare-fun dynLambda!20409 (Int (_ BitVec 64)) List!48240)

(assert (=> b!4306578 (= e!2677873 (= lt!1527402 (dynLambda!20409 (defaultEntry!5004 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308))))) lt!1527331)))))

(assert (=> b!4306578 ((_ is LongMap!4619) (v!42182 (underlying!9468 thiss!42308)))))

(assert (= (and d!1267466 c!732189) b!4306577))

(assert (= (and d!1267466 (not c!732189)) b!4306578))

(declare-fun b_lambda!126515 () Bool)

(assert (=> (not b_lambda!126515) (not b!4306578)))

(declare-fun t!355030 () Bool)

(declare-fun tb!257273 () Bool)

(assert (=> (and b!4306525 (= (defaultEntry!5004 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308))))) (defaultEntry!5004 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308)))))) t!355030) tb!257273))

(assert (=> b!4306578 t!355030))

(declare-fun result!314634 () Bool)

(declare-fun b_and!339841 () Bool)

(assert (= b_and!339837 (and (=> t!355030 result!314634) b_and!339841)))

(assert (=> d!1267466 m!4899209))

(declare-fun m!4899265 () Bool)

(assert (=> d!1267466 m!4899265))

(declare-fun m!4899267 () Bool)

(assert (=> d!1267466 m!4899267))

(assert (=> b!4306577 m!4899191))

(declare-fun m!4899269 () Bool)

(assert (=> b!4306577 m!4899269))

(assert (=> b!4306577 m!4899269))

(declare-fun m!4899271 () Bool)

(assert (=> b!4306577 m!4899271))

(declare-fun m!4899273 () Bool)

(assert (=> b!4306578 m!4899273))

(assert (=> b!4306534 d!1267466))

(declare-fun bs!604570 () Bool)

(declare-fun b!4306583 () Bool)

(assert (= bs!604570 (and b!4306583 b!4306532)))

(declare-fun lambda!132536 () Int)

(assert (=> bs!604570 (= lambda!132536 lambda!132530)))

(declare-fun bs!604571 () Bool)

(assert (= bs!604571 (and b!4306583 b!4306569)))

(assert (=> bs!604571 (= lambda!132536 lambda!132533)))

(declare-fun d!1267468 () Bool)

(declare-fun res!1765173 () Bool)

(declare-fun e!2677876 () Bool)

(assert (=> d!1267468 (=> (not res!1765173) (not e!2677876))))

(assert (=> d!1267468 (= res!1765173 (valid!3606 (v!42182 (underlying!9468 thiss!42308))))))

(assert (=> d!1267468 (= (valid!3605 thiss!42308) e!2677876)))

(declare-fun res!1765174 () Bool)

(assert (=> b!4306583 (=> (not res!1765174) (not e!2677876))))

(assert (=> b!4306583 (= res!1765174 (forall!8702 (toList!2334 (map!10093 (v!42182 (underlying!9468 thiss!42308)))) lambda!132536))))

(declare-fun b!4306584 () Bool)

(assert (=> b!4306584 (= e!2677876 (allKeysSameHashInMap!314 (map!10093 (v!42182 (underlying!9468 thiss!42308))) (hashF!6615 thiss!42308)))))

(assert (= (and d!1267468 res!1765173) b!4306583))

(assert (= (and b!4306583 res!1765174) b!4306584))

(assert (=> d!1267468 m!4899267))

(assert (=> b!4306583 m!4899191))

(declare-fun m!4899275 () Bool)

(assert (=> b!4306583 m!4899275))

(assert (=> b!4306584 m!4899191))

(assert (=> b!4306584 m!4899191))

(declare-fun m!4899277 () Bool)

(assert (=> b!4306584 m!4899277))

(assert (=> b!4306530 d!1267468))

(declare-fun d!1267470 () Bool)

(assert (=> d!1267470 (= (array_inv!5325 (_keys!4919 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308)))))) (bvsge (size!35462 (_keys!4919 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4306525 d!1267470))

(declare-fun d!1267472 () Bool)

(assert (=> d!1267472 (= (array_inv!5326 (_values!4900 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308)))))) (bvsge (size!35463 (_values!4900 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4306525 d!1267472))

(declare-fun d!1267474 () Bool)

(declare-fun valid!3607 (LongMapFixedSize!9238) Bool)

(assert (=> d!1267474 (= (valid!3606 (_2!26468 lt!1527334)) (valid!3607 (v!42181 (underlying!9467 (_2!26468 lt!1527334)))))))

(declare-fun bs!604572 () Bool)

(assert (= bs!604572 d!1267474))

(declare-fun m!4899279 () Bool)

(assert (=> bs!604572 m!4899279))

(assert (=> b!4306539 d!1267474))

(declare-fun b!4306603 () Bool)

(declare-fun res!1765182 () Bool)

(declare-fun e!2677891 () Bool)

(assert (=> b!4306603 (=> (not res!1765182) (not e!2677891))))

(declare-fun lt!1527411 () tuple2!46378)

(assert (=> b!4306603 (= res!1765182 (valid!3606 (_2!26468 lt!1527411)))))

(declare-fun e!2677888 () Bool)

(declare-fun b!4306604 () Bool)

(declare-fun call!296953 () ListLongMap!945)

(declare-fun call!296952 () ListLongMap!945)

(assert (=> b!4306604 (= e!2677888 (= call!296953 (+!230 call!296952 (tuple2!46377 lt!1527331 lt!1527325))))))

(declare-fun b!4306605 () Bool)

(declare-fun e!2677890 () tuple2!46378)

(declare-fun lt!1527414 () tuple2!46378)

(assert (=> b!4306605 (= e!2677890 (tuple2!46379 false (_2!26468 lt!1527414)))))

(declare-fun b!4306606 () Bool)

(declare-datatypes ((tuple2!46380 0))(
  ( (tuple2!46381 (_1!26469 Bool) (_2!26469 LongMapFixedSize!9238)) )
))
(declare-fun lt!1527412 () tuple2!46380)

(assert (=> b!4306606 (= e!2677890 (tuple2!46379 (_1!26469 lt!1527412) (LongMap!4619 (Cell!18286 (_2!26469 lt!1527412)))))))

(declare-fun update!399 (LongMapFixedSize!9238 (_ BitVec 64) List!48240) tuple2!46380)

(assert (=> b!4306606 (= lt!1527412 (update!399 (v!42181 (underlying!9467 (_2!26468 lt!1527414))) lt!1527331 lt!1527325))))

(declare-fun b!4306607 () Bool)

(declare-fun e!2677889 () tuple2!46378)

(declare-fun lt!1527413 () tuple2!46378)

(assert (=> b!4306607 (= e!2677889 (tuple2!46379 (_1!26468 lt!1527413) (_2!26468 lt!1527413)))))

(declare-fun repack!46 (MutLongMap!4619) tuple2!46378)

(assert (=> b!4306607 (= lt!1527413 (repack!46 (v!42182 (underlying!9468 thiss!42308))))))

(declare-fun bm!296947 () Bool)

(assert (=> bm!296947 (= call!296952 (map!10093 (v!42182 (underlying!9468 thiss!42308))))))

(declare-fun b!4306609 () Bool)

(declare-fun e!2677887 () Bool)

(assert (=> b!4306609 (= e!2677887 e!2677888)))

(declare-fun res!1765181 () Bool)

(assert (=> b!4306609 (= res!1765181 (contains!10067 call!296953 lt!1527331))))

(assert (=> b!4306609 (=> (not res!1765181) (not e!2677888))))

(declare-fun b!4306610 () Bool)

(assert (=> b!4306610 (= e!2677889 (tuple2!46379 true (v!42182 (underlying!9468 thiss!42308))))))

(declare-fun bm!296948 () Bool)

(assert (=> bm!296948 (= call!296953 (map!10093 (_2!26468 lt!1527411)))))

(declare-fun b!4306611 () Bool)

(assert (=> b!4306611 (= e!2677887 (= call!296953 call!296952))))

(declare-fun b!4306608 () Bool)

(assert (=> b!4306608 (= e!2677891 e!2677887)))

(declare-fun c!732196 () Bool)

(assert (=> b!4306608 (= c!732196 (_1!26468 lt!1527411))))

(declare-fun d!1267476 () Bool)

(assert (=> d!1267476 e!2677891))

(declare-fun res!1765183 () Bool)

(assert (=> d!1267476 (=> (not res!1765183) (not e!2677891))))

(assert (=> d!1267476 (= res!1765183 ((_ is LongMap!4619) (_2!26468 lt!1527411)))))

(assert (=> d!1267476 (= lt!1527411 e!2677890)))

(declare-fun c!732197 () Bool)

(assert (=> d!1267476 (= c!732197 (_1!26468 lt!1527414))))

(assert (=> d!1267476 (= lt!1527414 e!2677889)))

(declare-fun c!732198 () Bool)

(declare-fun imbalanced!42 (MutLongMap!4619) Bool)

(assert (=> d!1267476 (= c!732198 (imbalanced!42 (v!42182 (underlying!9468 thiss!42308))))))

(assert (=> d!1267476 (valid!3606 (v!42182 (underlying!9468 thiss!42308)))))

(assert (=> d!1267476 (= (update!398 (v!42182 (underlying!9468 thiss!42308)) lt!1527331 lt!1527325) lt!1527411)))

(assert (= (and d!1267476 c!732198) b!4306607))

(assert (= (and d!1267476 (not c!732198)) b!4306610))

(assert (= (and d!1267476 c!732197) b!4306606))

(assert (= (and d!1267476 (not c!732197)) b!4306605))

(assert (= (and d!1267476 res!1765183) b!4306603))

(assert (= (and b!4306603 res!1765182) b!4306608))

(assert (= (and b!4306608 c!732196) b!4306609))

(assert (= (and b!4306608 (not c!732196)) b!4306611))

(assert (= (and b!4306609 res!1765181) b!4306604))

(assert (= (or b!4306609 b!4306604 b!4306611) bm!296948))

(assert (= (or b!4306604 b!4306611) bm!296947))

(declare-fun m!4899281 () Bool)

(assert (=> bm!296948 m!4899281))

(declare-fun m!4899283 () Bool)

(assert (=> b!4306609 m!4899283))

(declare-fun m!4899285 () Bool)

(assert (=> b!4306607 m!4899285))

(declare-fun m!4899287 () Bool)

(assert (=> b!4306603 m!4899287))

(declare-fun m!4899289 () Bool)

(assert (=> d!1267476 m!4899289))

(assert (=> d!1267476 m!4899267))

(declare-fun m!4899291 () Bool)

(assert (=> b!4306606 m!4899291))

(declare-fun m!4899293 () Bool)

(assert (=> b!4306604 m!4899293))

(assert (=> bm!296947 m!4899191))

(assert (=> b!4306535 d!1267476))

(declare-fun d!1267478 () Bool)

(declare-fun lt!1527417 () Bool)

(assert (=> d!1267478 (= lt!1527417 (contains!10067 (map!10093 (v!42182 (underlying!9468 thiss!42308))) lt!1527331))))

(declare-fun contains!10068 (LongMapFixedSize!9238 (_ BitVec 64)) Bool)

(assert (=> d!1267478 (= lt!1527417 (contains!10068 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308)))) lt!1527331))))

(assert (=> d!1267478 (valid!3606 (v!42182 (underlying!9468 thiss!42308)))))

(assert (=> d!1267478 (= (contains!10064 (v!42182 (underlying!9468 thiss!42308)) lt!1527331) lt!1527417)))

(declare-fun bs!604573 () Bool)

(assert (= bs!604573 d!1267478))

(assert (=> bs!604573 m!4899191))

(assert (=> bs!604573 m!4899191))

(declare-fun m!4899295 () Bool)

(assert (=> bs!604573 m!4899295))

(declare-fun m!4899297 () Bool)

(assert (=> bs!604573 m!4899297))

(assert (=> bs!604573 m!4899267))

(assert (=> b!4306535 d!1267478))

(declare-fun d!1267480 () Bool)

(declare-fun hash!947 (Hashable!4535 K!9294) (_ BitVec 64))

(assert (=> d!1267480 (= (hash!942 (hashF!6615 thiss!42308) key!2048) (hash!947 (hashF!6615 thiss!42308) key!2048))))

(declare-fun bs!604574 () Bool)

(assert (= bs!604574 d!1267480))

(declare-fun m!4899299 () Bool)

(assert (=> bs!604574 m!4899299))

(assert (=> b!4306535 d!1267480))

(declare-fun bs!604575 () Bool)

(declare-fun d!1267482 () Bool)

(assert (= bs!604575 (and d!1267482 b!4306532)))

(declare-fun lambda!132539 () Int)

(assert (=> bs!604575 (not (= lambda!132539 lambda!132530))))

(declare-fun bs!604576 () Bool)

(assert (= bs!604576 (and d!1267482 b!4306569)))

(assert (=> bs!604576 (not (= lambda!132539 lambda!132533))))

(declare-fun bs!604577 () Bool)

(assert (= bs!604577 (and d!1267482 b!4306583)))

(assert (=> bs!604577 (not (= lambda!132539 lambda!132536))))

(assert (=> d!1267482 true))

(assert (=> d!1267482 (= (allKeysSameHashInMap!314 lt!1527333 (hashF!6615 thiss!42308)) (forall!8702 (toList!2334 lt!1527333) lambda!132539))))

(declare-fun bs!604578 () Bool)

(assert (= bs!604578 d!1267482))

(declare-fun m!4899301 () Bool)

(assert (=> bs!604578 m!4899301))

(assert (=> b!4306527 d!1267482))

(declare-fun bs!604579 () Bool)

(declare-fun d!1267484 () Bool)

(assert (= bs!604579 (and d!1267484 b!4306532)))

(declare-fun lambda!132542 () Int)

(assert (=> bs!604579 (not (= lambda!132542 lambda!132530))))

(declare-fun bs!604580 () Bool)

(assert (= bs!604580 (and d!1267484 b!4306569)))

(assert (=> bs!604580 (not (= lambda!132542 lambda!132533))))

(declare-fun bs!604581 () Bool)

(assert (= bs!604581 (and d!1267484 b!4306583)))

(assert (=> bs!604581 (not (= lambda!132542 lambda!132536))))

(declare-fun bs!604582 () Bool)

(assert (= bs!604582 (and d!1267484 d!1267482)))

(assert (=> bs!604582 (= lambda!132542 lambda!132539)))

(assert (=> d!1267484 true))

(assert (=> d!1267484 (allKeysSameHash!164 lt!1527324 lt!1527331 (hashF!6615 thiss!42308))))

(declare-fun lt!1527420 () Unit!67135)

(declare-fun choose!26223 (List!48241 (_ BitVec 64) List!48240 Hashable!4535) Unit!67135)

(assert (=> d!1267484 (= lt!1527420 (choose!26223 (toList!2334 lt!1527327) lt!1527331 lt!1527324 (hashF!6615 thiss!42308)))))

(assert (=> d!1267484 (forall!8702 (toList!2334 lt!1527327) lambda!132542)))

(assert (=> d!1267484 (= (lemmaInLongMapAllKeySameHashThenForTuple!154 (toList!2334 lt!1527327) lt!1527331 lt!1527324 (hashF!6615 thiss!42308)) lt!1527420)))

(declare-fun bs!604583 () Bool)

(assert (= bs!604583 d!1267484))

(assert (=> bs!604583 m!4899201))

(declare-fun m!4899303 () Bool)

(assert (=> bs!604583 m!4899303))

(declare-fun m!4899305 () Bool)

(assert (=> bs!604583 m!4899305))

(assert (=> b!4306536 d!1267484))

(declare-fun d!1267486 () Bool)

(assert (=> d!1267486 (allKeysSameHash!164 (removePairForKey!188 lt!1527324 key!2048) lt!1527331 (hashF!6615 thiss!42308))))

(declare-fun lt!1527423 () Unit!67135)

(declare-fun choose!26224 (List!48240 K!9294 (_ BitVec 64) Hashable!4535) Unit!67135)

(assert (=> d!1267486 (= lt!1527423 (choose!26224 lt!1527324 key!2048 lt!1527331 (hashF!6615 thiss!42308)))))

(declare-fun noDuplicateKeys!194 (List!48240) Bool)

(assert (=> d!1267486 (noDuplicateKeys!194 lt!1527324)))

(assert (=> d!1267486 (= (lemmaRemovePairForKeyPreservesHash!148 lt!1527324 key!2048 lt!1527331 (hashF!6615 thiss!42308)) lt!1527423)))

(declare-fun bs!604584 () Bool)

(assert (= bs!604584 d!1267486))

(assert (=> bs!604584 m!4899195))

(assert (=> bs!604584 m!4899195))

(assert (=> bs!604584 m!4899203))

(declare-fun m!4899307 () Bool)

(assert (=> bs!604584 m!4899307))

(declare-fun m!4899309 () Bool)

(assert (=> bs!604584 m!4899309))

(assert (=> b!4306536 d!1267486))

(declare-fun b!4306625 () Bool)

(declare-fun e!2677896 () List!48240)

(assert (=> b!4306625 (= e!2677896 Nil!48116)))

(declare-fun b!4306624 () Bool)

(assert (=> b!4306624 (= e!2677896 (Cons!48116 (h!53544 lt!1527324) (removePairForKey!188 (t!355027 lt!1527324) key!2048)))))

(declare-fun b!4306622 () Bool)

(declare-fun e!2677897 () List!48240)

(assert (=> b!4306622 (= e!2677897 (t!355027 lt!1527324))))

(declare-fun b!4306623 () Bool)

(assert (=> b!4306623 (= e!2677897 e!2677896)))

(declare-fun c!732203 () Bool)

(assert (=> b!4306623 (= c!732203 ((_ is Cons!48116) lt!1527324))))

(declare-fun d!1267488 () Bool)

(declare-fun lt!1527426 () List!48240)

(declare-fun containsKey!287 (List!48240 K!9294) Bool)

(assert (=> d!1267488 (not (containsKey!287 lt!1527426 key!2048))))

(assert (=> d!1267488 (= lt!1527426 e!2677897)))

(declare-fun c!732204 () Bool)

(assert (=> d!1267488 (= c!732204 (and ((_ is Cons!48116) lt!1527324) (= (_1!26466 (h!53544 lt!1527324)) key!2048)))))

(assert (=> d!1267488 (noDuplicateKeys!194 lt!1527324)))

(assert (=> d!1267488 (= (removePairForKey!188 lt!1527324 key!2048) lt!1527426)))

(assert (= (and d!1267488 c!732204) b!4306622))

(assert (= (and d!1267488 (not c!732204)) b!4306623))

(assert (= (and b!4306623 c!732203) b!4306624))

(assert (= (and b!4306623 (not c!732203)) b!4306625))

(declare-fun m!4899311 () Bool)

(assert (=> b!4306624 m!4899311))

(declare-fun m!4899313 () Bool)

(assert (=> d!1267488 m!4899313))

(assert (=> d!1267488 m!4899309))

(assert (=> b!4306536 d!1267488))

(declare-fun d!1267490 () Bool)

(assert (=> d!1267490 true))

(assert (=> d!1267490 true))

(declare-fun lambda!132545 () Int)

(declare-fun forall!8703 (List!48240 Int) Bool)

(assert (=> d!1267490 (= (allKeysSameHash!164 lt!1527324 lt!1527331 (hashF!6615 thiss!42308)) (forall!8703 lt!1527324 lambda!132545))))

(declare-fun bs!604585 () Bool)

(assert (= bs!604585 d!1267490))

(declare-fun m!4899315 () Bool)

(assert (=> bs!604585 m!4899315))

(assert (=> b!4306536 d!1267490))

(declare-fun bs!604586 () Bool)

(declare-fun d!1267492 () Bool)

(assert (= bs!604586 (and d!1267492 d!1267490)))

(declare-fun lambda!132546 () Int)

(assert (=> bs!604586 (= lambda!132546 lambda!132545)))

(assert (=> d!1267492 true))

(assert (=> d!1267492 true))

(assert (=> d!1267492 (= (allKeysSameHash!164 (removePairForKey!188 lt!1527324 key!2048) lt!1527331 (hashF!6615 thiss!42308)) (forall!8703 (removePairForKey!188 lt!1527324 key!2048) lambda!132546))))

(declare-fun bs!604587 () Bool)

(assert (= bs!604587 d!1267492))

(assert (=> bs!604587 m!4899195))

(declare-fun m!4899317 () Bool)

(assert (=> bs!604587 m!4899317))

(assert (=> b!4306536 d!1267492))

(declare-fun bs!604588 () Bool)

(declare-fun d!1267494 () Bool)

(assert (= bs!604588 (and d!1267494 d!1267482)))

(declare-fun lambda!132549 () Int)

(assert (=> bs!604588 (not (= lambda!132549 lambda!132539))))

(declare-fun bs!604589 () Bool)

(assert (= bs!604589 (and d!1267494 b!4306583)))

(assert (=> bs!604589 (= lambda!132549 lambda!132536)))

(declare-fun bs!604590 () Bool)

(assert (= bs!604590 (and d!1267494 d!1267484)))

(assert (=> bs!604590 (not (= lambda!132549 lambda!132542))))

(declare-fun bs!604591 () Bool)

(assert (= bs!604591 (and d!1267494 b!4306532)))

(assert (=> bs!604591 (= lambda!132549 lambda!132530)))

(declare-fun bs!604592 () Bool)

(assert (= bs!604592 (and d!1267494 b!4306569)))

(assert (=> bs!604592 (= lambda!132549 lambda!132533)))

(assert (=> d!1267494 (eq!124 (extractMap!308 (toList!2334 (+!230 lt!1527327 (tuple2!46377 lt!1527331 lt!1527325)))) (+!229 (extractMap!308 (toList!2334 lt!1527327)) (tuple2!46375 key!2048 v!9179)))))

(declare-fun lt!1527429 () Unit!67135)

(declare-fun choose!26225 (ListLongMap!945 (_ BitVec 64) List!48240 K!9294 V!9496 Hashable!4535) Unit!67135)

(assert (=> d!1267494 (= lt!1527429 (choose!26225 lt!1527327 lt!1527331 lt!1527325 key!2048 v!9179 (hashF!6615 thiss!42308)))))

(assert (=> d!1267494 (forall!8702 (toList!2334 lt!1527327) lambda!132549)))

(assert (=> d!1267494 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!42 lt!1527327 lt!1527331 lt!1527325 key!2048 v!9179 (hashF!6615 thiss!42308)) lt!1527429)))

(declare-fun bs!604593 () Bool)

(assert (= bs!604593 d!1267494))

(declare-fun m!4899319 () Bool)

(assert (=> bs!604593 m!4899319))

(declare-fun m!4899321 () Bool)

(assert (=> bs!604593 m!4899321))

(declare-fun m!4899323 () Bool)

(assert (=> bs!604593 m!4899323))

(assert (=> bs!604593 m!4899319))

(assert (=> bs!604593 m!4899181))

(assert (=> bs!604593 m!4899175))

(assert (=> bs!604593 m!4899321))

(assert (=> bs!604593 m!4899175))

(declare-fun m!4899325 () Bool)

(assert (=> bs!604593 m!4899325))

(declare-fun m!4899327 () Bool)

(assert (=> bs!604593 m!4899327))

(assert (=> b!4306532 d!1267494))

(declare-fun d!1267496 () Bool)

(declare-fun res!1765188 () Bool)

(declare-fun e!2677902 () Bool)

(assert (=> d!1267496 (=> res!1765188 e!2677902)))

(assert (=> d!1267496 (= res!1765188 ((_ is Nil!48117) (toList!2334 lt!1527333)))))

(assert (=> d!1267496 (= (forall!8702 (toList!2334 lt!1527333) lambda!132530) e!2677902)))

(declare-fun b!4306634 () Bool)

(declare-fun e!2677903 () Bool)

(assert (=> b!4306634 (= e!2677902 e!2677903)))

(declare-fun res!1765189 () Bool)

(assert (=> b!4306634 (=> (not res!1765189) (not e!2677903))))

(declare-fun dynLambda!20410 (Int tuple2!46376) Bool)

(assert (=> b!4306634 (= res!1765189 (dynLambda!20410 lambda!132530 (h!53545 (toList!2334 lt!1527333))))))

(declare-fun b!4306635 () Bool)

(assert (=> b!4306635 (= e!2677903 (forall!8702 (t!355028 (toList!2334 lt!1527333)) lambda!132530))))

(assert (= (and d!1267496 (not res!1765188)) b!4306634))

(assert (= (and b!4306634 res!1765189) b!4306635))

(declare-fun b_lambda!126517 () Bool)

(assert (=> (not b_lambda!126517) (not b!4306634)))

(declare-fun m!4899329 () Bool)

(assert (=> b!4306634 m!4899329))

(declare-fun m!4899331 () Bool)

(assert (=> b!4306635 m!4899331))

(assert (=> b!4306532 d!1267496))

(declare-fun bs!604594 () Bool)

(declare-fun d!1267498 () Bool)

(assert (= bs!604594 (and d!1267498 d!1267482)))

(declare-fun lambda!132554 () Int)

(assert (=> bs!604594 (not (= lambda!132554 lambda!132539))))

(declare-fun bs!604595 () Bool)

(assert (= bs!604595 (and d!1267498 d!1267494)))

(assert (=> bs!604595 (= lambda!132554 lambda!132549)))

(declare-fun bs!604596 () Bool)

(assert (= bs!604596 (and d!1267498 b!4306583)))

(assert (=> bs!604596 (= lambda!132554 lambda!132536)))

(declare-fun bs!604597 () Bool)

(assert (= bs!604597 (and d!1267498 d!1267484)))

(assert (=> bs!604597 (not (= lambda!132554 lambda!132542))))

(declare-fun bs!604598 () Bool)

(assert (= bs!604598 (and d!1267498 b!4306532)))

(assert (=> bs!604598 (= lambda!132554 lambda!132530)))

(declare-fun bs!604599 () Bool)

(assert (= bs!604599 (and d!1267498 b!4306569)))

(assert (=> bs!604599 (= lambda!132554 lambda!132533)))

(declare-fun e!2677906 () Bool)

(assert (=> d!1267498 e!2677906))

(declare-fun res!1765192 () Bool)

(assert (=> d!1267498 (=> (not res!1765192) (not e!2677906))))

(declare-fun lt!1527435 () ListLongMap!945)

(assert (=> d!1267498 (= res!1765192 (forall!8702 (toList!2334 lt!1527435) lambda!132554))))

(assert (=> d!1267498 (= lt!1527435 (+!230 lt!1527327 (tuple2!46377 lt!1527331 lt!1527325)))))

(declare-fun lt!1527434 () Unit!67135)

(declare-fun choose!26226 (ListLongMap!945 (_ BitVec 64) List!48240 Hashable!4535) Unit!67135)

(assert (=> d!1267498 (= lt!1527434 (choose!26226 lt!1527327 lt!1527331 lt!1527325 (hashF!6615 thiss!42308)))))

(assert (=> d!1267498 (forall!8702 (toList!2334 lt!1527327) lambda!132554)))

(assert (=> d!1267498 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!131 lt!1527327 lt!1527331 lt!1527325 (hashF!6615 thiss!42308)) lt!1527434)))

(declare-fun b!4306638 () Bool)

(assert (=> b!4306638 (= e!2677906 (allKeysSameHashInMap!314 lt!1527435 (hashF!6615 thiss!42308)))))

(assert (= (and d!1267498 res!1765192) b!4306638))

(declare-fun m!4899333 () Bool)

(assert (=> d!1267498 m!4899333))

(assert (=> d!1267498 m!4899181))

(declare-fun m!4899335 () Bool)

(assert (=> d!1267498 m!4899335))

(declare-fun m!4899337 () Bool)

(assert (=> d!1267498 m!4899337))

(declare-fun m!4899339 () Bool)

(assert (=> b!4306638 m!4899339))

(assert (=> b!4306532 d!1267498))

(declare-fun bs!604600 () Bool)

(declare-fun d!1267500 () Bool)

(assert (= bs!604600 (and d!1267500 d!1267482)))

(declare-fun lambda!132557 () Int)

(assert (=> bs!604600 (not (= lambda!132557 lambda!132539))))

(declare-fun bs!604601 () Bool)

(assert (= bs!604601 (and d!1267500 d!1267494)))

(assert (=> bs!604601 (= lambda!132557 lambda!132549)))

(declare-fun bs!604602 () Bool)

(assert (= bs!604602 (and d!1267500 b!4306583)))

(assert (=> bs!604602 (= lambda!132557 lambda!132536)))

(declare-fun bs!604603 () Bool)

(assert (= bs!604603 (and d!1267500 d!1267484)))

(assert (=> bs!604603 (not (= lambda!132557 lambda!132542))))

(declare-fun bs!604604 () Bool)

(assert (= bs!604604 (and d!1267500 b!4306532)))

(assert (=> bs!604604 (= lambda!132557 lambda!132530)))

(declare-fun bs!604605 () Bool)

(assert (= bs!604605 (and d!1267500 b!4306569)))

(assert (=> bs!604605 (= lambda!132557 lambda!132533)))

(declare-fun bs!604606 () Bool)

(assert (= bs!604606 (and d!1267500 d!1267498)))

(assert (=> bs!604606 (= lambda!132557 lambda!132554)))

(declare-fun lt!1527438 () ListMap!1617)

(assert (=> d!1267500 (invariantList!563 (toList!2335 lt!1527438))))

(declare-fun e!2677909 () ListMap!1617)

(assert (=> d!1267500 (= lt!1527438 e!2677909)))

(declare-fun c!732207 () Bool)

(assert (=> d!1267500 (= c!732207 ((_ is Cons!48117) (toList!2334 lt!1527327)))))

(assert (=> d!1267500 (forall!8702 (toList!2334 lt!1527327) lambda!132557)))

(assert (=> d!1267500 (= (extractMap!308 (toList!2334 lt!1527327)) lt!1527438)))

(declare-fun b!4306643 () Bool)

(declare-fun addToMapMapFromBucket!31 (List!48240 ListMap!1617) ListMap!1617)

(assert (=> b!4306643 (= e!2677909 (addToMapMapFromBucket!31 (_2!26467 (h!53545 (toList!2334 lt!1527327))) (extractMap!308 (t!355028 (toList!2334 lt!1527327)))))))

(declare-fun b!4306644 () Bool)

(assert (=> b!4306644 (= e!2677909 (ListMap!1618 Nil!48116))))

(assert (= (and d!1267500 c!732207) b!4306643))

(assert (= (and d!1267500 (not c!732207)) b!4306644))

(declare-fun m!4899341 () Bool)

(assert (=> d!1267500 m!4899341))

(declare-fun m!4899343 () Bool)

(assert (=> d!1267500 m!4899343))

(declare-fun m!4899345 () Bool)

(assert (=> b!4306643 m!4899345))

(assert (=> b!4306643 m!4899345))

(declare-fun m!4899347 () Bool)

(assert (=> b!4306643 m!4899347))

(assert (=> b!4306532 d!1267500))

(declare-fun bs!604607 () Bool)

(declare-fun d!1267502 () Bool)

(assert (= bs!604607 (and d!1267502 d!1267482)))

(declare-fun lambda!132558 () Int)

(assert (=> bs!604607 (not (= lambda!132558 lambda!132539))))

(declare-fun bs!604608 () Bool)

(assert (= bs!604608 (and d!1267502 d!1267494)))

(assert (=> bs!604608 (= lambda!132558 lambda!132549)))

(declare-fun bs!604609 () Bool)

(assert (= bs!604609 (and d!1267502 b!4306583)))

(assert (=> bs!604609 (= lambda!132558 lambda!132536)))

(declare-fun bs!604610 () Bool)

(assert (= bs!604610 (and d!1267502 d!1267484)))

(assert (=> bs!604610 (not (= lambda!132558 lambda!132542))))

(declare-fun bs!604611 () Bool)

(assert (= bs!604611 (and d!1267502 b!4306532)))

(assert (=> bs!604611 (= lambda!132558 lambda!132530)))

(declare-fun bs!604612 () Bool)

(assert (= bs!604612 (and d!1267502 b!4306569)))

(assert (=> bs!604612 (= lambda!132558 lambda!132533)))

(declare-fun bs!604613 () Bool)

(assert (= bs!604613 (and d!1267502 d!1267500)))

(assert (=> bs!604613 (= lambda!132558 lambda!132557)))

(declare-fun bs!604614 () Bool)

(assert (= bs!604614 (and d!1267502 d!1267498)))

(assert (=> bs!604614 (= lambda!132558 lambda!132554)))

(declare-fun lt!1527439 () ListMap!1617)

(assert (=> d!1267502 (invariantList!563 (toList!2335 lt!1527439))))

(declare-fun e!2677910 () ListMap!1617)

(assert (=> d!1267502 (= lt!1527439 e!2677910)))

(declare-fun c!732208 () Bool)

(assert (=> d!1267502 (= c!732208 ((_ is Cons!48117) (toList!2334 lt!1527333)))))

(assert (=> d!1267502 (forall!8702 (toList!2334 lt!1527333) lambda!132558)))

(assert (=> d!1267502 (= (extractMap!308 (toList!2334 lt!1527333)) lt!1527439)))

(declare-fun b!4306645 () Bool)

(assert (=> b!4306645 (= e!2677910 (addToMapMapFromBucket!31 (_2!26467 (h!53545 (toList!2334 lt!1527333))) (extractMap!308 (t!355028 (toList!2334 lt!1527333)))))))

(declare-fun b!4306646 () Bool)

(assert (=> b!4306646 (= e!2677910 (ListMap!1618 Nil!48116))))

(assert (= (and d!1267502 c!732208) b!4306645))

(assert (= (and d!1267502 (not c!732208)) b!4306646))

(declare-fun m!4899349 () Bool)

(assert (=> d!1267502 m!4899349))

(declare-fun m!4899351 () Bool)

(assert (=> d!1267502 m!4899351))

(declare-fun m!4899353 () Bool)

(assert (=> b!4306645 m!4899353))

(assert (=> b!4306645 m!4899353))

(declare-fun m!4899355 () Bool)

(assert (=> b!4306645 m!4899355))

(assert (=> b!4306532 d!1267502))

(declare-fun d!1267504 () Bool)

(declare-fun e!2677913 () Bool)

(assert (=> d!1267504 e!2677913))

(declare-fun res!1765198 () Bool)

(assert (=> d!1267504 (=> (not res!1765198) (not e!2677913))))

(declare-fun lt!1527450 () ListLongMap!945)

(assert (=> d!1267504 (= res!1765198 (contains!10067 lt!1527450 (_1!26467 (tuple2!46377 lt!1527331 lt!1527325))))))

(declare-fun lt!1527448 () List!48241)

(assert (=> d!1267504 (= lt!1527450 (ListLongMap!946 lt!1527448))))

(declare-fun lt!1527449 () Unit!67135)

(declare-fun lt!1527451 () Unit!67135)

(assert (=> d!1267504 (= lt!1527449 lt!1527451)))

(assert (=> d!1267504 (= (getValueByKey!239 lt!1527448 (_1!26467 (tuple2!46377 lt!1527331 lt!1527325))) (Some!10204 (_2!26467 (tuple2!46377 lt!1527331 lt!1527325))))))

(declare-fun lemmaContainsTupThenGetReturnValue!62 (List!48241 (_ BitVec 64) List!48240) Unit!67135)

(assert (=> d!1267504 (= lt!1527451 (lemmaContainsTupThenGetReturnValue!62 lt!1527448 (_1!26467 (tuple2!46377 lt!1527331 lt!1527325)) (_2!26467 (tuple2!46377 lt!1527331 lt!1527325))))))

(declare-fun insertStrictlySorted!32 (List!48241 (_ BitVec 64) List!48240) List!48241)

(assert (=> d!1267504 (= lt!1527448 (insertStrictlySorted!32 (toList!2334 lt!1527327) (_1!26467 (tuple2!46377 lt!1527331 lt!1527325)) (_2!26467 (tuple2!46377 lt!1527331 lt!1527325))))))

(assert (=> d!1267504 (= (+!230 lt!1527327 (tuple2!46377 lt!1527331 lt!1527325)) lt!1527450)))

(declare-fun b!4306651 () Bool)

(declare-fun res!1765197 () Bool)

(assert (=> b!4306651 (=> (not res!1765197) (not e!2677913))))

(assert (=> b!4306651 (= res!1765197 (= (getValueByKey!239 (toList!2334 lt!1527450) (_1!26467 (tuple2!46377 lt!1527331 lt!1527325))) (Some!10204 (_2!26467 (tuple2!46377 lt!1527331 lt!1527325)))))))

(declare-fun b!4306652 () Bool)

(assert (=> b!4306652 (= e!2677913 (contains!10066 (toList!2334 lt!1527450) (tuple2!46377 lt!1527331 lt!1527325)))))

(assert (= (and d!1267504 res!1765198) b!4306651))

(assert (= (and b!4306651 res!1765197) b!4306652))

(declare-fun m!4899357 () Bool)

(assert (=> d!1267504 m!4899357))

(declare-fun m!4899359 () Bool)

(assert (=> d!1267504 m!4899359))

(declare-fun m!4899361 () Bool)

(assert (=> d!1267504 m!4899361))

(declare-fun m!4899363 () Bool)

(assert (=> d!1267504 m!4899363))

(declare-fun m!4899365 () Bool)

(assert (=> b!4306651 m!4899365))

(declare-fun m!4899367 () Bool)

(assert (=> b!4306652 m!4899367))

(assert (=> b!4306532 d!1267504))

(declare-fun d!1267506 () Bool)

(declare-fun e!2677916 () Bool)

(assert (=> d!1267506 e!2677916))

(declare-fun res!1765204 () Bool)

(assert (=> d!1267506 (=> (not res!1765204) (not e!2677916))))

(declare-fun lt!1527463 () ListMap!1617)

(assert (=> d!1267506 (= res!1765204 (contains!10065 lt!1527463 (_1!26466 lt!1527329)))))

(declare-fun lt!1527462 () List!48240)

(assert (=> d!1267506 (= lt!1527463 (ListMap!1618 lt!1527462))))

(declare-fun lt!1527460 () Unit!67135)

(declare-fun lt!1527461 () Unit!67135)

(assert (=> d!1267506 (= lt!1527460 lt!1527461)))

(declare-datatypes ((Option!10206 0))(
  ( (None!10205) (Some!10205 (v!42189 V!9496)) )
))
(declare-fun getValueByKey!240 (List!48240 K!9294) Option!10206)

(assert (=> d!1267506 (= (getValueByKey!240 lt!1527462 (_1!26466 lt!1527329)) (Some!10205 (_2!26466 lt!1527329)))))

(declare-fun lemmaContainsTupThenGetReturnValue!63 (List!48240 K!9294 V!9496) Unit!67135)

(assert (=> d!1267506 (= lt!1527461 (lemmaContainsTupThenGetReturnValue!63 lt!1527462 (_1!26466 lt!1527329) (_2!26466 lt!1527329)))))

(declare-fun insertNoDuplicatedKeys!39 (List!48240 K!9294 V!9496) List!48240)

(assert (=> d!1267506 (= lt!1527462 (insertNoDuplicatedKeys!39 (toList!2335 (extractMap!308 (toList!2334 lt!1527327))) (_1!26466 lt!1527329) (_2!26466 lt!1527329)))))

(assert (=> d!1267506 (= (+!229 (extractMap!308 (toList!2334 lt!1527327)) lt!1527329) lt!1527463)))

(declare-fun b!4306657 () Bool)

(declare-fun res!1765203 () Bool)

(assert (=> b!4306657 (=> (not res!1765203) (not e!2677916))))

(assert (=> b!4306657 (= res!1765203 (= (getValueByKey!240 (toList!2335 lt!1527463) (_1!26466 lt!1527329)) (Some!10205 (_2!26466 lt!1527329))))))

(declare-fun b!4306658 () Bool)

(declare-fun contains!10069 (List!48240 tuple2!46374) Bool)

(assert (=> b!4306658 (= e!2677916 (contains!10069 (toList!2335 lt!1527463) lt!1527329))))

(assert (= (and d!1267506 res!1765204) b!4306657))

(assert (= (and b!4306657 res!1765203) b!4306658))

(declare-fun m!4899369 () Bool)

(assert (=> d!1267506 m!4899369))

(declare-fun m!4899371 () Bool)

(assert (=> d!1267506 m!4899371))

(declare-fun m!4899373 () Bool)

(assert (=> d!1267506 m!4899373))

(declare-fun m!4899375 () Bool)

(assert (=> d!1267506 m!4899375))

(declare-fun m!4899377 () Bool)

(assert (=> b!4306657 m!4899377))

(declare-fun m!4899379 () Bool)

(assert (=> b!4306658 m!4899379))

(assert (=> b!4306532 d!1267506))

(declare-fun d!1267508 () Bool)

(assert (=> d!1267508 (= (isEmpty!28068 lt!1527324) ((_ is Nil!48116) lt!1527324))))

(assert (=> b!4306532 d!1267508))

(declare-fun d!1267510 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7548 (List!48240) (InoxSet tuple2!46374))

(assert (=> d!1267510 (= (eq!124 (extractMap!308 (toList!2334 lt!1527333)) (+!229 (extractMap!308 (toList!2334 lt!1527327)) lt!1527329)) (= (content!7548 (toList!2335 (extractMap!308 (toList!2334 lt!1527333)))) (content!7548 (toList!2335 (+!229 (extractMap!308 (toList!2334 lt!1527327)) lt!1527329)))))))

(declare-fun bs!604615 () Bool)

(assert (= bs!604615 d!1267510))

(declare-fun m!4899381 () Bool)

(assert (=> bs!604615 m!4899381))

(declare-fun m!4899383 () Bool)

(assert (=> bs!604615 m!4899383))

(assert (=> b!4306532 d!1267510))

(declare-fun b!4306663 () Bool)

(declare-fun e!2677919 () Bool)

(declare-fun tp!1323476 () Bool)

(assert (=> b!4306663 (= e!2677919 (and tp_is_empty!23597 tp_is_empty!23599 tp!1323476))))

(assert (=> b!4306525 (= tp!1323472 e!2677919)))

(assert (= (and b!4306525 ((_ is Cons!48116) (zeroValue!4878 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308))))))) b!4306663))

(declare-fun tp!1323477 () Bool)

(declare-fun b!4306664 () Bool)

(declare-fun e!2677920 () Bool)

(assert (=> b!4306664 (= e!2677920 (and tp_is_empty!23597 tp_is_empty!23599 tp!1323477))))

(assert (=> b!4306525 (= tp!1323470 e!2677920)))

(assert (= (and b!4306525 ((_ is Cons!48116) (minValue!4878 (v!42181 (underlying!9467 (v!42182 (underlying!9468 thiss!42308))))))) b!4306664))

(declare-fun mapIsEmpty!20665 () Bool)

(declare-fun mapRes!20665 () Bool)

(assert (=> mapIsEmpty!20665 mapRes!20665))

(declare-fun e!2677925 () Bool)

(declare-fun b!4306672 () Bool)

(declare-fun tp!1323485 () Bool)

(assert (=> b!4306672 (= e!2677925 (and tp_is_empty!23597 tp_is_empty!23599 tp!1323485))))

(declare-fun mapNonEmpty!20665 () Bool)

(declare-fun tp!1323484 () Bool)

(declare-fun e!2677926 () Bool)

(assert (=> mapNonEmpty!20665 (= mapRes!20665 (and tp!1323484 e!2677926))))

(declare-fun mapValue!20665 () List!48240)

(declare-fun mapKey!20665 () (_ BitVec 32))

(declare-fun mapRest!20665 () (Array (_ BitVec 32) List!48240))

(assert (=> mapNonEmpty!20665 (= mapRest!20662 (store mapRest!20665 mapKey!20665 mapValue!20665))))

(declare-fun tp!1323486 () Bool)

(declare-fun b!4306671 () Bool)

(assert (=> b!4306671 (= e!2677926 (and tp_is_empty!23597 tp_is_empty!23599 tp!1323486))))

(declare-fun condMapEmpty!20665 () Bool)

(declare-fun mapDefault!20665 () List!48240)

(assert (=> mapNonEmpty!20662 (= condMapEmpty!20665 (= mapRest!20662 ((as const (Array (_ BitVec 32) List!48240)) mapDefault!20665)))))

(assert (=> mapNonEmpty!20662 (= tp!1323469 (and e!2677925 mapRes!20665))))

(assert (= (and mapNonEmpty!20662 condMapEmpty!20665) mapIsEmpty!20665))

(assert (= (and mapNonEmpty!20662 (not condMapEmpty!20665)) mapNonEmpty!20665))

(assert (= (and mapNonEmpty!20665 ((_ is Cons!48116) mapValue!20665)) b!4306671))

(assert (= (and mapNonEmpty!20662 ((_ is Cons!48116) mapDefault!20665)) b!4306672))

(declare-fun m!4899385 () Bool)

(assert (=> mapNonEmpty!20665 m!4899385))

(declare-fun b!4306673 () Bool)

(declare-fun e!2677927 () Bool)

(declare-fun tp!1323487 () Bool)

(assert (=> b!4306673 (= e!2677927 (and tp_is_empty!23597 tp_is_empty!23599 tp!1323487))))

(assert (=> mapNonEmpty!20662 (= tp!1323467 e!2677927)))

(assert (= (and mapNonEmpty!20662 ((_ is Cons!48116) mapValue!20662)) b!4306673))

(declare-fun e!2677928 () Bool)

(declare-fun tp!1323488 () Bool)

(declare-fun b!4306674 () Bool)

(assert (=> b!4306674 (= e!2677928 (and tp_is_empty!23597 tp_is_empty!23599 tp!1323488))))

(assert (=> b!4306528 (= tp!1323468 e!2677928)))

(assert (= (and b!4306528 ((_ is Cons!48116) mapDefault!20662)) b!4306674))

(declare-fun b_lambda!126519 () Bool)

(assert (= b_lambda!126515 (or (and b!4306525 b_free!128435) b_lambda!126519)))

(declare-fun b_lambda!126521 () Bool)

(assert (= b_lambda!126517 (or b!4306532 b_lambda!126521)))

(declare-fun bs!604616 () Bool)

(declare-fun d!1267512 () Bool)

(assert (= bs!604616 (and d!1267512 b!4306532)))

(assert (=> bs!604616 (= (dynLambda!20410 lambda!132530 (h!53545 (toList!2334 lt!1527333))) (noDuplicateKeys!194 (_2!26467 (h!53545 (toList!2334 lt!1527333)))))))

(declare-fun m!4899387 () Bool)

(assert (=> bs!604616 m!4899387))

(assert (=> b!4306634 d!1267512))

(check-sat (not bs!604616) (not d!1267506) (not d!1267498) (not b!4306568) (not b!4306609) (not bm!296940) (not d!1267490) (not d!1267494) (not d!1267502) (not b_next!129139) (not b_next!129141) (not d!1267484) (not b!4306674) (not bm!296938) (not b!4306635) (not b_lambda!126521) (not b!4306577) (not d!1267492) (not b!4306671) tp_is_empty!23597 (not d!1267510) tp_is_empty!23599 (not b!4306565) (not d!1267460) (not b!4306606) (not b!4306607) (not b!4306652) b_and!339841 (not tb!257273) (not d!1267486) (not b!4306583) (not d!1267468) (not b!4306604) (not b!4306673) (not bm!296948) (not d!1267478) b_and!339839 (not bm!296942) (not b!4306643) (not bm!296941) (not d!1267488) (not d!1267504) (not bm!296947) (not mapNonEmpty!20665) (not bm!296939) (not b!4306638) (not b_lambda!126519) (not d!1267464) (not d!1267466) (not d!1267482) (not b!4306603) (not d!1267462) (not b!4306624) (not bm!296937) (not b!4306651) (not d!1267480) (not b!4306663) (not b!4306584) (not b!4306658) (not b!4306564) (not b!4306571) (not d!1267500) (not b!4306657) (not b!4306645) (not b!4306569) (not b!4306664) (not d!1267474) (not d!1267476) (not b!4306672))
(check-sat b_and!339841 b_and!339839 (not b_next!129141) (not b_next!129139))
