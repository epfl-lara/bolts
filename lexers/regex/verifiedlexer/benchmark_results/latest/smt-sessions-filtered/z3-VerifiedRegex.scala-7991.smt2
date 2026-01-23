; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414214 () Bool)

(assert start!414214)

(declare-fun b!4310234 () Bool)

(declare-fun b_free!128611 () Bool)

(declare-fun b_next!129315 () Bool)

(assert (=> b!4310234 (= b_free!128611 (not b_next!129315))))

(declare-fun tp!1324540 () Bool)

(declare-fun b_and!340039 () Bool)

(assert (=> b!4310234 (= tp!1324540 b_and!340039)))

(declare-fun b!4310233 () Bool)

(declare-fun b_free!128613 () Bool)

(declare-fun b_next!129317 () Bool)

(assert (=> b!4310233 (= b_free!128613 (not b_next!129317))))

(declare-fun tp!1324539 () Bool)

(declare-fun b_and!340041 () Bool)

(assert (=> b!4310233 (= tp!1324539 b_and!340041)))

(declare-fun b!4310229 () Bool)

(declare-fun e!2680606 () Bool)

(declare-fun e!2680607 () Bool)

(assert (=> b!4310229 (= e!2680606 e!2680607)))

(declare-fun res!1766512 () Bool)

(assert (=> b!4310229 (=> (not res!1766512) (not e!2680607))))

(declare-datatypes ((V!9606 0))(
  ( (V!9607 (val!15781 Int)) )
))
(declare-datatypes ((K!9404 0))(
  ( (K!9405 (val!15782 Int)) )
))
(declare-datatypes ((tuple2!46642 0))(
  ( (tuple2!46643 (_1!26601 K!9404) (_2!26601 V!9606)) )
))
(declare-datatypes ((List!48321 0))(
  ( (Nil!48197) (Cons!48197 (h!53632 tuple2!46642) (t!355128 List!48321)) )
))
(declare-datatypes ((array!16814 0))(
  ( (array!16815 (arr!7511 (Array (_ BitVec 32) (_ BitVec 64))) (size!35550 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4579 0))(
  ( (HashableExt!4578 (__x!30014 Int)) )
))
(declare-datatypes ((array!16816 0))(
  ( (array!16817 (arr!7512 (Array (_ BitVec 32) List!48321)) (size!35551 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9326 0))(
  ( (LongMapFixedSize!9327 (defaultEntry!5048 Int) (mask!13223 (_ BitVec 32)) (extraKeys!4912 (_ BitVec 32)) (zeroValue!4922 List!48321) (minValue!4922 List!48321) (_size!9369 (_ BitVec 32)) (_keys!4963 array!16814) (_values!4944 array!16816) (_vacant!4724 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18461 0))(
  ( (Cell!18462 (v!42341 LongMapFixedSize!9326)) )
))
(declare-datatypes ((MutLongMap!4663 0))(
  ( (LongMap!4663 (underlying!9555 Cell!18461)) (MutLongMapExt!4662 (__x!30015 Int)) )
))
(declare-datatypes ((Cell!18463 0))(
  ( (Cell!18464 (v!42342 MutLongMap!4663)) )
))
(declare-datatypes ((MutableMap!4569 0))(
  ( (MutableMapExt!4568 (__x!30016 Int)) (HashMap!4569 (underlying!9556 Cell!18463) (hashF!6699 Hashable!4579) (_size!9370 (_ BitVec 32)) (defaultValue!4740 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4569)

(declare-fun key!2048 () K!9404)

(declare-fun contains!10171 (MutableMap!4569 K!9404) Bool)

(assert (=> b!4310229 (= res!1766512 (contains!10171 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46644 0))(
  ( (tuple2!46645 (_1!26602 (_ BitVec 64)) (_2!26602 List!48321)) )
))
(declare-datatypes ((List!48322 0))(
  ( (Nil!48198) (Cons!48198 (h!53633 tuple2!46644) (t!355129 List!48322)) )
))
(declare-datatypes ((ListLongMap!1015 0))(
  ( (ListLongMap!1016 (toList!2403 List!48322)) )
))
(declare-fun lt!1530770 () ListLongMap!1015)

(declare-fun map!10187 (MutLongMap!4663) ListLongMap!1015)

(assert (=> b!4310229 (= lt!1530770 (map!10187 (v!42342 (underlying!9556 thiss!42308))))))

(declare-datatypes ((ListMap!1685 0))(
  ( (ListMap!1686 (toList!2404 List!48321)) )
))
(declare-fun lt!1530768 () ListMap!1685)

(declare-fun map!10188 (MutableMap!4569) ListMap!1685)

(assert (=> b!4310229 (= lt!1530768 (map!10188 thiss!42308))))

(declare-fun b!4310230 () Bool)

(declare-fun e!2680604 () Bool)

(declare-fun tp!1324538 () Bool)

(declare-fun mapRes!20822 () Bool)

(assert (=> b!4310230 (= e!2680604 (and tp!1324538 mapRes!20822))))

(declare-fun condMapEmpty!20822 () Bool)

(declare-fun mapDefault!20822 () List!48321)

(assert (=> b!4310230 (= condMapEmpty!20822 (= (arr!7512 (_values!4944 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48321)) mapDefault!20822)))))

(declare-fun b!4310231 () Bool)

(declare-fun e!2680598 () Bool)

(declare-fun e!2680603 () Bool)

(assert (=> b!4310231 (= e!2680598 e!2680603)))

(declare-fun b!4310232 () Bool)

(declare-fun res!1766513 () Bool)

(assert (=> b!4310232 (=> (not res!1766513) (not e!2680606))))

(declare-fun valid!3651 (MutableMap!4569) Bool)

(assert (=> b!4310232 (= res!1766513 (valid!3651 thiss!42308))))

(declare-fun e!2680600 () Bool)

(declare-fun e!2680599 () Bool)

(assert (=> b!4310233 (= e!2680600 (and e!2680599 tp!1324539))))

(declare-fun tp!1324536 () Bool)

(declare-fun e!2680602 () Bool)

(declare-fun tp!1324542 () Bool)

(declare-fun array_inv!5391 (array!16814) Bool)

(declare-fun array_inv!5392 (array!16816) Bool)

(assert (=> b!4310234 (= e!2680602 (and tp!1324540 tp!1324542 tp!1324536 (array_inv!5391 (_keys!4963 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308)))))) (array_inv!5392 (_values!4944 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308)))))) e!2680604))))

(declare-fun b!4310235 () Bool)

(assert (=> b!4310235 (= e!2680603 e!2680602)))

(declare-fun mapIsEmpty!20822 () Bool)

(assert (=> mapIsEmpty!20822 mapRes!20822))

(declare-fun b!4310236 () Bool)

(declare-fun lt!1530772 () MutLongMap!4663)

(get-info :version)

(assert (=> b!4310236 (= e!2680599 (and e!2680598 ((_ is LongMap!4663) lt!1530772)))))

(assert (=> b!4310236 (= lt!1530772 (v!42342 (underlying!9556 thiss!42308)))))

(declare-fun res!1766510 () Bool)

(assert (=> start!414214 (=> (not res!1766510) (not e!2680606))))

(assert (=> start!414214 (= res!1766510 ((_ is HashMap!4569) thiss!42308))))

(assert (=> start!414214 e!2680606))

(assert (=> start!414214 e!2680600))

(declare-fun tp_is_empty!23757 () Bool)

(assert (=> start!414214 tp_is_empty!23757))

(declare-fun tp_is_empty!23759 () Bool)

(assert (=> start!414214 tp_is_empty!23759))

(declare-fun mapNonEmpty!20822 () Bool)

(declare-fun tp!1324541 () Bool)

(declare-fun tp!1324537 () Bool)

(assert (=> mapNonEmpty!20822 (= mapRes!20822 (and tp!1324541 tp!1324537))))

(declare-fun mapKey!20822 () (_ BitVec 32))

(declare-fun mapValue!20822 () List!48321)

(declare-fun mapRest!20822 () (Array (_ BitVec 32) List!48321))

(assert (=> mapNonEmpty!20822 (= (arr!7512 (_values!4944 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308)))))) (store mapRest!20822 mapKey!20822 mapValue!20822))))

(declare-fun b!4310237 () Bool)

(declare-fun e!2680605 () Bool)

(assert (=> b!4310237 (= e!2680607 e!2680605)))

(declare-fun res!1766511 () Bool)

(assert (=> b!4310237 (=> (not res!1766511) (not e!2680605))))

(declare-fun lt!1530769 () List!48321)

(declare-fun lt!1530771 () (_ BitVec 64))

(declare-fun v!9179 () V!9606)

(declare-datatypes ((tuple2!46646 0))(
  ( (tuple2!46647 (_1!26603 Bool) (_2!26603 MutLongMap!4663)) )
))
(declare-fun update!436 (MutLongMap!4663 (_ BitVec 64) List!48321) tuple2!46646)

(declare-fun removePairForKey!212 (List!48321 K!9404) List!48321)

(assert (=> b!4310237 (= res!1766511 (_1!26603 (update!436 (v!42342 (underlying!9556 thiss!42308)) lt!1530771 (Cons!48197 (tuple2!46643 key!2048 v!9179) (removePairForKey!212 lt!1530769 key!2048)))))))

(declare-fun apply!11015 (MutLongMap!4663 (_ BitVec 64)) List!48321)

(assert (=> b!4310237 (= lt!1530769 (apply!11015 (v!42342 (underlying!9556 thiss!42308)) lt!1530771))))

(declare-fun hash!1006 (Hashable!4579 K!9404) (_ BitVec 64))

(assert (=> b!4310237 (= lt!1530771 (hash!1006 (hashF!6699 thiss!42308) key!2048))))

(declare-fun b!4310238 () Bool)

(declare-fun noDuplicateKeys!210 (List!48321) Bool)

(assert (=> b!4310238 (= e!2680605 (not (noDuplicateKeys!210 lt!1530769)))))

(declare-fun allKeysSameHash!186 (List!48321 (_ BitVec 64) Hashable!4579) Bool)

(assert (=> b!4310238 (allKeysSameHash!186 lt!1530769 lt!1530771 (hashF!6699 thiss!42308))))

(declare-datatypes ((Unit!67316 0))(
  ( (Unit!67317) )
))
(declare-fun lt!1530773 () Unit!67316)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!173 (List!48322 (_ BitVec 64) List!48321 Hashable!4579) Unit!67316)

(assert (=> b!4310238 (= lt!1530773 (lemmaInLongMapAllKeySameHashThenForTuple!173 (toList!2403 lt!1530770) lt!1530771 lt!1530769 (hashF!6699 thiss!42308)))))

(assert (= (and start!414214 res!1766510) b!4310232))

(assert (= (and b!4310232 res!1766513) b!4310229))

(assert (= (and b!4310229 res!1766512) b!4310237))

(assert (= (and b!4310237 res!1766511) b!4310238))

(assert (= (and b!4310230 condMapEmpty!20822) mapIsEmpty!20822))

(assert (= (and b!4310230 (not condMapEmpty!20822)) mapNonEmpty!20822))

(assert (= b!4310234 b!4310230))

(assert (= b!4310235 b!4310234))

(assert (= b!4310231 b!4310235))

(assert (= (and b!4310236 ((_ is LongMap!4663) (v!42342 (underlying!9556 thiss!42308)))) b!4310231))

(assert (= b!4310233 b!4310236))

(assert (= (and start!414214 ((_ is HashMap!4569) thiss!42308)) b!4310233))

(declare-fun m!4903155 () Bool)

(assert (=> b!4310234 m!4903155))

(declare-fun m!4903157 () Bool)

(assert (=> b!4310234 m!4903157))

(declare-fun m!4903159 () Bool)

(assert (=> b!4310238 m!4903159))

(declare-fun m!4903161 () Bool)

(assert (=> b!4310238 m!4903161))

(declare-fun m!4903163 () Bool)

(assert (=> b!4310238 m!4903163))

(declare-fun m!4903165 () Bool)

(assert (=> b!4310237 m!4903165))

(declare-fun m!4903167 () Bool)

(assert (=> b!4310237 m!4903167))

(declare-fun m!4903169 () Bool)

(assert (=> b!4310237 m!4903169))

(declare-fun m!4903171 () Bool)

(assert (=> b!4310237 m!4903171))

(declare-fun m!4903173 () Bool)

(assert (=> b!4310229 m!4903173))

(declare-fun m!4903175 () Bool)

(assert (=> b!4310229 m!4903175))

(declare-fun m!4903177 () Bool)

(assert (=> b!4310229 m!4903177))

(declare-fun m!4903179 () Bool)

(assert (=> mapNonEmpty!20822 m!4903179))

(declare-fun m!4903181 () Bool)

(assert (=> b!4310232 m!4903181))

(check-sat (not b!4310230) (not b_next!129315) (not b!4310238) (not b!4310237) (not b_next!129317) (not mapNonEmpty!20822) (not b!4310229) tp_is_empty!23757 b_and!340039 tp_is_empty!23759 (not b!4310234) b_and!340041 (not b!4310232))
(check-sat b_and!340039 b_and!340041 (not b_next!129317) (not b_next!129315))
(get-model)

(declare-fun d!1268026 () Bool)

(declare-fun res!1766518 () Bool)

(declare-fun e!2680612 () Bool)

(assert (=> d!1268026 (=> res!1766518 e!2680612)))

(assert (=> d!1268026 (= res!1766518 (not ((_ is Cons!48197) lt!1530769)))))

(assert (=> d!1268026 (= (noDuplicateKeys!210 lt!1530769) e!2680612)))

(declare-fun b!4310243 () Bool)

(declare-fun e!2680613 () Bool)

(assert (=> b!4310243 (= e!2680612 e!2680613)))

(declare-fun res!1766519 () Bool)

(assert (=> b!4310243 (=> (not res!1766519) (not e!2680613))))

(declare-fun containsKey!312 (List!48321 K!9404) Bool)

(assert (=> b!4310243 (= res!1766519 (not (containsKey!312 (t!355128 lt!1530769) (_1!26601 (h!53632 lt!1530769)))))))

(declare-fun b!4310244 () Bool)

(assert (=> b!4310244 (= e!2680613 (noDuplicateKeys!210 (t!355128 lt!1530769)))))

(assert (= (and d!1268026 (not res!1766518)) b!4310243))

(assert (= (and b!4310243 res!1766519) b!4310244))

(declare-fun m!4903183 () Bool)

(assert (=> b!4310243 m!4903183))

(declare-fun m!4903185 () Bool)

(assert (=> b!4310244 m!4903185))

(assert (=> b!4310238 d!1268026))

(declare-fun d!1268028 () Bool)

(assert (=> d!1268028 true))

(assert (=> d!1268028 true))

(declare-fun lambda!132913 () Int)

(declare-fun forall!8730 (List!48321 Int) Bool)

(assert (=> d!1268028 (= (allKeysSameHash!186 lt!1530769 lt!1530771 (hashF!6699 thiss!42308)) (forall!8730 lt!1530769 lambda!132913))))

(declare-fun bs!605051 () Bool)

(assert (= bs!605051 d!1268028))

(declare-fun m!4903187 () Bool)

(assert (=> bs!605051 m!4903187))

(assert (=> b!4310238 d!1268028))

(declare-fun d!1268030 () Bool)

(assert (=> d!1268030 true))

(assert (=> d!1268030 (allKeysSameHash!186 lt!1530769 lt!1530771 (hashF!6699 thiss!42308))))

(declare-fun lt!1530776 () Unit!67316)

(declare-fun choose!26255 (List!48322 (_ BitVec 64) List!48321 Hashable!4579) Unit!67316)

(assert (=> d!1268030 (= lt!1530776 (choose!26255 (toList!2403 lt!1530770) lt!1530771 lt!1530769 (hashF!6699 thiss!42308)))))

(declare-fun lambda!132916 () Int)

(declare-fun forall!8731 (List!48322 Int) Bool)

(assert (=> d!1268030 (forall!8731 (toList!2403 lt!1530770) lambda!132916)))

(assert (=> d!1268030 (= (lemmaInLongMapAllKeySameHashThenForTuple!173 (toList!2403 lt!1530770) lt!1530771 lt!1530769 (hashF!6699 thiss!42308)) lt!1530776)))

(declare-fun bs!605052 () Bool)

(assert (= bs!605052 d!1268030))

(assert (=> bs!605052 m!4903161))

(declare-fun m!4903189 () Bool)

(assert (=> bs!605052 m!4903189))

(declare-fun m!4903191 () Bool)

(assert (=> bs!605052 m!4903191))

(assert (=> b!4310238 d!1268030))

(declare-fun bs!605053 () Bool)

(declare-fun b!4310276 () Bool)

(assert (= bs!605053 (and b!4310276 d!1268030)))

(declare-fun lambda!132919 () Int)

(assert (=> bs!605053 (not (= lambda!132919 lambda!132916))))

(declare-fun b!4310273 () Bool)

(assert (=> b!4310273 false))

(declare-fun lt!1530830 () Unit!67316)

(declare-fun lt!1530822 () Unit!67316)

(assert (=> b!4310273 (= lt!1530830 lt!1530822)))

(declare-fun lt!1530817 () List!48322)

(declare-fun lt!1530832 () (_ BitVec 64))

(declare-fun lt!1530821 () List!48321)

(declare-fun contains!10172 (List!48322 tuple2!46644) Bool)

(assert (=> b!4310273 (contains!10172 lt!1530817 (tuple2!46645 lt!1530832 lt!1530821))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!144 (List!48322 (_ BitVec 64) List!48321) Unit!67316)

(assert (=> b!4310273 (= lt!1530822 (lemmaGetValueByKeyImpliesContainsTuple!144 lt!1530817 lt!1530832 lt!1530821))))

(assert (=> b!4310273 (= lt!1530821 (apply!11015 (v!42342 (underlying!9556 thiss!42308)) lt!1530832))))

(assert (=> b!4310273 (= lt!1530817 (toList!2403 (map!10187 (v!42342 (underlying!9556 thiss!42308)))))))

(declare-fun lt!1530834 () Unit!67316)

(declare-fun lt!1530828 () Unit!67316)

(assert (=> b!4310273 (= lt!1530834 lt!1530828)))

(declare-fun lt!1530833 () List!48322)

(declare-datatypes ((Option!10229 0))(
  ( (None!10228) (Some!10228 (v!42347 List!48321)) )
))
(declare-fun isDefined!7531 (Option!10229) Bool)

(declare-fun getValueByKey!255 (List!48322 (_ BitVec 64)) Option!10229)

(assert (=> b!4310273 (isDefined!7531 (getValueByKey!255 lt!1530833 lt!1530832))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!175 (List!48322 (_ BitVec 64)) Unit!67316)

(assert (=> b!4310273 (= lt!1530828 (lemmaContainsKeyImpliesGetValueByKeyDefined!175 lt!1530833 lt!1530832))))

(assert (=> b!4310273 (= lt!1530833 (toList!2403 (map!10187 (v!42342 (underlying!9556 thiss!42308)))))))

(declare-fun lt!1530818 () Unit!67316)

(declare-fun lt!1530820 () Unit!67316)

(assert (=> b!4310273 (= lt!1530818 lt!1530820)))

(declare-fun lt!1530825 () List!48322)

(declare-fun containsKey!313 (List!48322 (_ BitVec 64)) Bool)

(assert (=> b!4310273 (containsKey!313 lt!1530825 lt!1530832)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!134 (List!48322 (_ BitVec 64)) Unit!67316)

(assert (=> b!4310273 (= lt!1530820 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!134 lt!1530825 lt!1530832))))

(assert (=> b!4310273 (= lt!1530825 (toList!2403 (map!10187 (v!42342 (underlying!9556 thiss!42308)))))))

(declare-fun e!2680629 () Unit!67316)

(declare-fun Unit!67318 () Unit!67316)

(assert (=> b!4310273 (= e!2680629 Unit!67318)))

(declare-fun b!4310274 () Bool)

(declare-fun e!2680632 () Bool)

(declare-fun call!297935 () Bool)

(assert (=> b!4310274 (= e!2680632 call!297935)))

(declare-fun b!4310275 () Bool)

(declare-fun e!2680628 () Unit!67316)

(declare-fun Unit!67319 () Unit!67316)

(assert (=> b!4310275 (= e!2680628 Unit!67319)))

(declare-fun e!2680633 () Unit!67316)

(declare-fun forallContained!1500 (List!48322 Int tuple2!46644) Unit!67316)

(assert (=> b!4310276 (= e!2680633 (forallContained!1500 (toList!2403 (map!10187 (v!42342 (underlying!9556 thiss!42308)))) lambda!132919 (tuple2!46645 lt!1530832 (apply!11015 (v!42342 (underlying!9556 thiss!42308)) lt!1530832))))))

(declare-fun c!732831 () Bool)

(assert (=> b!4310276 (= c!732831 (not (contains!10172 (toList!2403 (map!10187 (v!42342 (underlying!9556 thiss!42308)))) (tuple2!46645 lt!1530832 (apply!11015 (v!42342 (underlying!9556 thiss!42308)) lt!1530832)))))))

(declare-fun lt!1530819 () Unit!67316)

(assert (=> b!4310276 (= lt!1530819 e!2680629)))

(declare-fun b!4310277 () Bool)

(declare-fun e!2680630 () Unit!67316)

(declare-fun lt!1530835 () Unit!67316)

(assert (=> b!4310277 (= e!2680630 lt!1530835)))

(declare-fun lt!1530829 () ListLongMap!1015)

(declare-fun call!297940 () ListLongMap!1015)

(assert (=> b!4310277 (= lt!1530829 call!297940)))

(declare-fun lemmaInGenericMapThenInLongMap!133 (ListLongMap!1015 K!9404 Hashable!4579) Unit!67316)

(assert (=> b!4310277 (= lt!1530835 (lemmaInGenericMapThenInLongMap!133 lt!1530829 key!2048 (hashF!6699 thiss!42308)))))

(declare-fun res!1766526 () Bool)

(declare-fun call!297938 () Bool)

(assert (=> b!4310277 (= res!1766526 call!297938)))

(assert (=> b!4310277 (=> (not res!1766526) (not e!2680632))))

(assert (=> b!4310277 e!2680632))

(declare-fun bm!297930 () Bool)

(declare-datatypes ((Option!10230 0))(
  ( (None!10229) (Some!10229 (v!42348 tuple2!46642)) )
))
(declare-fun call!297937 () Option!10230)

(declare-fun call!297939 () List!48321)

(declare-fun getPair!133 (List!48321 K!9404) Option!10230)

(assert (=> bm!297930 (= call!297937 (getPair!133 call!297939 key!2048))))

(declare-fun bm!297931 () Bool)

(declare-fun call!297936 () (_ BitVec 64))

(assert (=> bm!297931 (= call!297936 (hash!1006 (hashF!6699 thiss!42308) key!2048))))

(declare-fun b!4310278 () Bool)

(declare-fun Unit!67320 () Unit!67316)

(assert (=> b!4310278 (= e!2680633 Unit!67320)))

(declare-fun c!732830 () Bool)

(declare-fun bm!297932 () Bool)

(declare-fun contains!10173 (ListLongMap!1015 (_ BitVec 64)) Bool)

(assert (=> bm!297932 (= call!297938 (contains!10173 (ite c!732830 lt!1530829 call!297940) call!297936))))

(declare-fun bm!297933 () Bool)

(declare-fun apply!11016 (ListLongMap!1015 (_ BitVec 64)) List!48321)

(assert (=> bm!297933 (= call!297939 (apply!11016 (ite c!732830 lt!1530829 call!297940) call!297936))))

(declare-fun b!4310279 () Bool)

(declare-fun Unit!67321 () Unit!67316)

(assert (=> b!4310279 (= e!2680629 Unit!67321)))

(declare-fun b!4310280 () Bool)

(assert (=> b!4310280 (= e!2680630 e!2680628)))

(declare-fun res!1766528 () Bool)

(assert (=> b!4310280 (= res!1766528 call!297938)))

(declare-fun e!2680631 () Bool)

(assert (=> b!4310280 (=> (not res!1766528) (not e!2680631))))

(declare-fun c!732829 () Bool)

(assert (=> b!4310280 (= c!732829 e!2680631)))

(declare-fun d!1268032 () Bool)

(declare-fun lt!1530831 () Bool)

(declare-fun contains!10174 (ListMap!1685 K!9404) Bool)

(assert (=> d!1268032 (= lt!1530831 (contains!10174 (map!10188 thiss!42308) key!2048))))

(declare-fun e!2680634 () Bool)

(assert (=> d!1268032 (= lt!1530831 e!2680634)))

(declare-fun res!1766527 () Bool)

(assert (=> d!1268032 (=> (not res!1766527) (not e!2680634))))

(declare-fun contains!10175 (MutLongMap!4663 (_ BitVec 64)) Bool)

(assert (=> d!1268032 (= res!1766527 (contains!10175 (v!42342 (underlying!9556 thiss!42308)) lt!1530832))))

(declare-fun lt!1530827 () Unit!67316)

(assert (=> d!1268032 (= lt!1530827 e!2680630)))

(declare-fun extractMap!328 (List!48322) ListMap!1685)

(assert (=> d!1268032 (= c!732830 (contains!10174 (extractMap!328 (toList!2403 (map!10187 (v!42342 (underlying!9556 thiss!42308))))) key!2048))))

(declare-fun lt!1530824 () Unit!67316)

(assert (=> d!1268032 (= lt!1530824 e!2680633)))

(declare-fun c!732828 () Bool)

(assert (=> d!1268032 (= c!732828 (contains!10175 (v!42342 (underlying!9556 thiss!42308)) lt!1530832))))

(assert (=> d!1268032 (= lt!1530832 (hash!1006 (hashF!6699 thiss!42308) key!2048))))

(assert (=> d!1268032 (valid!3651 thiss!42308)))

(assert (=> d!1268032 (= (contains!10171 thiss!42308 key!2048) lt!1530831)))

(declare-fun b!4310281 () Bool)

(assert (=> b!4310281 (= e!2680631 call!297935)))

(declare-fun bm!297934 () Bool)

(assert (=> bm!297934 (= call!297940 (map!10187 (v!42342 (underlying!9556 thiss!42308))))))

(declare-fun b!4310282 () Bool)

(assert (=> b!4310282 false))

(declare-fun lt!1530823 () Unit!67316)

(declare-fun lt!1530826 () Unit!67316)

(assert (=> b!4310282 (= lt!1530823 lt!1530826)))

(declare-fun lt!1530836 () ListLongMap!1015)

(assert (=> b!4310282 (contains!10174 (extractMap!328 (toList!2403 lt!1530836)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!133 (ListLongMap!1015 K!9404 Hashable!4579) Unit!67316)

(assert (=> b!4310282 (= lt!1530826 (lemmaInLongMapThenInGenericMap!133 lt!1530836 key!2048 (hashF!6699 thiss!42308)))))

(assert (=> b!4310282 (= lt!1530836 call!297940)))

(declare-fun Unit!67322 () Unit!67316)

(assert (=> b!4310282 (= e!2680628 Unit!67322)))

(declare-fun bm!297935 () Bool)

(declare-fun isDefined!7532 (Option!10230) Bool)

(assert (=> bm!297935 (= call!297935 (isDefined!7532 call!297937))))

(declare-fun b!4310283 () Bool)

(assert (=> b!4310283 (= e!2680634 (isDefined!7532 (getPair!133 (apply!11015 (v!42342 (underlying!9556 thiss!42308)) lt!1530832) key!2048)))))

(assert (= (and d!1268032 c!732828) b!4310276))

(assert (= (and d!1268032 (not c!732828)) b!4310278))

(assert (= (and b!4310276 c!732831) b!4310273))

(assert (= (and b!4310276 (not c!732831)) b!4310279))

(assert (= (and d!1268032 c!732830) b!4310277))

(assert (= (and d!1268032 (not c!732830)) b!4310280))

(assert (= (and b!4310277 res!1766526) b!4310274))

(assert (= (and b!4310280 res!1766528) b!4310281))

(assert (= (and b!4310280 c!732829) b!4310282))

(assert (= (and b!4310280 (not c!732829)) b!4310275))

(assert (= (or b!4310277 b!4310280 b!4310281 b!4310282) bm!297934))

(assert (= (or b!4310277 b!4310274 b!4310280 b!4310281) bm!297931))

(assert (= (or b!4310274 b!4310281) bm!297933))

(assert (= (or b!4310277 b!4310280) bm!297932))

(assert (= (or b!4310274 b!4310281) bm!297930))

(assert (= (or b!4310274 b!4310281) bm!297935))

(assert (= (and d!1268032 res!1766527) b!4310283))

(declare-fun m!4903193 () Bool)

(assert (=> d!1268032 m!4903193))

(assert (=> d!1268032 m!4903175))

(assert (=> d!1268032 m!4903177))

(declare-fun m!4903195 () Bool)

(assert (=> d!1268032 m!4903195))

(declare-fun m!4903197 () Bool)

(assert (=> d!1268032 m!4903197))

(declare-fun m!4903199 () Bool)

(assert (=> d!1268032 m!4903199))

(assert (=> d!1268032 m!4903181))

(assert (=> d!1268032 m!4903197))

(assert (=> d!1268032 m!4903171))

(assert (=> d!1268032 m!4903177))

(declare-fun m!4903201 () Bool)

(assert (=> b!4310273 m!4903201))

(declare-fun m!4903203 () Bool)

(assert (=> b!4310273 m!4903203))

(declare-fun m!4903205 () Bool)

(assert (=> b!4310273 m!4903205))

(assert (=> b!4310273 m!4903175))

(declare-fun m!4903207 () Bool)

(assert (=> b!4310273 m!4903207))

(declare-fun m!4903209 () Bool)

(assert (=> b!4310273 m!4903209))

(declare-fun m!4903211 () Bool)

(assert (=> b!4310273 m!4903211))

(declare-fun m!4903213 () Bool)

(assert (=> b!4310273 m!4903213))

(declare-fun m!4903215 () Bool)

(assert (=> b!4310273 m!4903215))

(assert (=> b!4310273 m!4903201))

(declare-fun m!4903217 () Bool)

(assert (=> bm!297932 m!4903217))

(declare-fun m!4903219 () Bool)

(assert (=> b!4310282 m!4903219))

(assert (=> b!4310282 m!4903219))

(declare-fun m!4903221 () Bool)

(assert (=> b!4310282 m!4903221))

(declare-fun m!4903223 () Bool)

(assert (=> b!4310282 m!4903223))

(declare-fun m!4903225 () Bool)

(assert (=> bm!297933 m!4903225))

(declare-fun m!4903227 () Bool)

(assert (=> bm!297930 m!4903227))

(assert (=> bm!297934 m!4903175))

(declare-fun m!4903229 () Bool)

(assert (=> b!4310277 m!4903229))

(assert (=> bm!297931 m!4903171))

(declare-fun m!4903231 () Bool)

(assert (=> bm!297935 m!4903231))

(assert (=> b!4310283 m!4903209))

(assert (=> b!4310283 m!4903209))

(declare-fun m!4903233 () Bool)

(assert (=> b!4310283 m!4903233))

(assert (=> b!4310283 m!4903233))

(declare-fun m!4903235 () Bool)

(assert (=> b!4310283 m!4903235))

(assert (=> b!4310276 m!4903175))

(assert (=> b!4310276 m!4903209))

(declare-fun m!4903237 () Bool)

(assert (=> b!4310276 m!4903237))

(declare-fun m!4903239 () Bool)

(assert (=> b!4310276 m!4903239))

(assert (=> b!4310229 d!1268032))

(declare-fun d!1268034 () Bool)

(declare-fun map!10189 (LongMapFixedSize!9326) ListLongMap!1015)

(assert (=> d!1268034 (= (map!10187 (v!42342 (underlying!9556 thiss!42308))) (map!10189 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308))))))))

(declare-fun bs!605054 () Bool)

(assert (= bs!605054 d!1268034))

(declare-fun m!4903241 () Bool)

(assert (=> bs!605054 m!4903241))

(assert (=> b!4310229 d!1268034))

(declare-fun d!1268036 () Bool)

(declare-fun lt!1530839 () ListMap!1685)

(declare-fun invariantList!572 (List!48321) Bool)

(assert (=> d!1268036 (invariantList!572 (toList!2404 lt!1530839))))

(assert (=> d!1268036 (= lt!1530839 (extractMap!328 (toList!2403 (map!10187 (v!42342 (underlying!9556 thiss!42308))))))))

(assert (=> d!1268036 (valid!3651 thiss!42308)))

(assert (=> d!1268036 (= (map!10188 thiss!42308) lt!1530839)))

(declare-fun bs!605055 () Bool)

(assert (= bs!605055 d!1268036))

(declare-fun m!4903243 () Bool)

(assert (=> bs!605055 m!4903243))

(assert (=> bs!605055 m!4903175))

(assert (=> bs!605055 m!4903197))

(assert (=> bs!605055 m!4903181))

(assert (=> b!4310229 d!1268036))

(declare-fun d!1268038 () Bool)

(declare-fun e!2680646 () Bool)

(assert (=> d!1268038 e!2680646))

(declare-fun res!1766536 () Bool)

(assert (=> d!1268038 (=> (not res!1766536) (not e!2680646))))

(declare-fun lt!1530849 () tuple2!46646)

(assert (=> d!1268038 (= res!1766536 ((_ is LongMap!4663) (_2!26603 lt!1530849)))))

(declare-fun e!2680649 () tuple2!46646)

(assert (=> d!1268038 (= lt!1530849 e!2680649)))

(declare-fun c!732838 () Bool)

(declare-fun lt!1530851 () tuple2!46646)

(assert (=> d!1268038 (= c!732838 (_1!26603 lt!1530851))))

(declare-fun e!2680648 () tuple2!46646)

(assert (=> d!1268038 (= lt!1530851 e!2680648)))

(declare-fun c!732840 () Bool)

(declare-fun imbalanced!51 (MutLongMap!4663) Bool)

(assert (=> d!1268038 (= c!732840 (imbalanced!51 (v!42342 (underlying!9556 thiss!42308))))))

(declare-fun valid!3652 (MutLongMap!4663) Bool)

(assert (=> d!1268038 (valid!3652 (v!42342 (underlying!9556 thiss!42308)))))

(assert (=> d!1268038 (= (update!436 (v!42342 (underlying!9556 thiss!42308)) lt!1530771 (Cons!48197 (tuple2!46643 key!2048 v!9179) (removePairForKey!212 lt!1530769 key!2048))) lt!1530849)))

(declare-fun b!4310302 () Bool)

(declare-fun lt!1530848 () tuple2!46646)

(assert (=> b!4310302 (= e!2680648 (tuple2!46647 (_1!26603 lt!1530848) (_2!26603 lt!1530848)))))

(declare-fun repack!55 (MutLongMap!4663) tuple2!46646)

(assert (=> b!4310302 (= lt!1530848 (repack!55 (v!42342 (underlying!9556 thiss!42308))))))

(declare-fun bm!297940 () Bool)

(declare-fun call!297945 () ListLongMap!1015)

(assert (=> bm!297940 (= call!297945 (map!10187 (v!42342 (underlying!9556 thiss!42308))))))

(declare-fun bm!297941 () Bool)

(declare-fun call!297946 () ListLongMap!1015)

(assert (=> bm!297941 (= call!297946 (map!10187 (_2!26603 lt!1530849)))))

(declare-fun b!4310303 () Bool)

(declare-datatypes ((tuple2!46648 0))(
  ( (tuple2!46649 (_1!26604 Bool) (_2!26604 LongMapFixedSize!9326)) )
))
(declare-fun lt!1530850 () tuple2!46648)

(assert (=> b!4310303 (= e!2680649 (tuple2!46647 (_1!26604 lt!1530850) (LongMap!4663 (Cell!18462 (_2!26604 lt!1530850)))))))

(declare-fun update!437 (LongMapFixedSize!9326 (_ BitVec 64) List!48321) tuple2!46648)

(assert (=> b!4310303 (= lt!1530850 (update!437 (v!42341 (underlying!9555 (_2!26603 lt!1530851))) lt!1530771 (Cons!48197 (tuple2!46643 key!2048 v!9179) (removePairForKey!212 lt!1530769 key!2048))))))

(declare-fun b!4310304 () Bool)

(declare-fun e!2680645 () Bool)

(declare-fun e!2680647 () Bool)

(assert (=> b!4310304 (= e!2680645 e!2680647)))

(declare-fun res!1766537 () Bool)

(assert (=> b!4310304 (= res!1766537 (contains!10173 call!297946 lt!1530771))))

(assert (=> b!4310304 (=> (not res!1766537) (not e!2680647))))

(declare-fun b!4310305 () Bool)

(assert (=> b!4310305 (= e!2680649 (tuple2!46647 false (_2!26603 lt!1530851)))))

(declare-fun b!4310306 () Bool)

(assert (=> b!4310306 (= e!2680648 (tuple2!46647 true (v!42342 (underlying!9556 thiss!42308))))))

(declare-fun b!4310307 () Bool)

(assert (=> b!4310307 (= e!2680645 (= call!297946 call!297945))))

(declare-fun b!4310308 () Bool)

(declare-fun res!1766535 () Bool)

(assert (=> b!4310308 (=> (not res!1766535) (not e!2680646))))

(assert (=> b!4310308 (= res!1766535 (valid!3652 (_2!26603 lt!1530849)))))

(declare-fun b!4310309 () Bool)

(declare-fun +!268 (ListLongMap!1015 tuple2!46644) ListLongMap!1015)

(assert (=> b!4310309 (= e!2680647 (= call!297946 (+!268 call!297945 (tuple2!46645 lt!1530771 (Cons!48197 (tuple2!46643 key!2048 v!9179) (removePairForKey!212 lt!1530769 key!2048))))))))

(declare-fun b!4310310 () Bool)

(assert (=> b!4310310 (= e!2680646 e!2680645)))

(declare-fun c!732839 () Bool)

(assert (=> b!4310310 (= c!732839 (_1!26603 lt!1530849))))

(assert (= (and d!1268038 c!732840) b!4310302))

(assert (= (and d!1268038 (not c!732840)) b!4310306))

(assert (= (and d!1268038 c!732838) b!4310303))

(assert (= (and d!1268038 (not c!732838)) b!4310305))

(assert (= (and d!1268038 res!1766536) b!4310308))

(assert (= (and b!4310308 res!1766535) b!4310310))

(assert (= (and b!4310310 c!732839) b!4310304))

(assert (= (and b!4310310 (not c!732839)) b!4310307))

(assert (= (and b!4310304 res!1766537) b!4310309))

(assert (= (or b!4310309 b!4310307) bm!297940))

(assert (= (or b!4310304 b!4310309 b!4310307) bm!297941))

(declare-fun m!4903245 () Bool)

(assert (=> b!4310304 m!4903245))

(declare-fun m!4903247 () Bool)

(assert (=> b!4310309 m!4903247))

(assert (=> bm!297940 m!4903175))

(declare-fun m!4903249 () Bool)

(assert (=> b!4310302 m!4903249))

(declare-fun m!4903251 () Bool)

(assert (=> bm!297941 m!4903251))

(declare-fun m!4903253 () Bool)

(assert (=> b!4310303 m!4903253))

(declare-fun m!4903255 () Bool)

(assert (=> b!4310308 m!4903255))

(declare-fun m!4903257 () Bool)

(assert (=> d!1268038 m!4903257))

(declare-fun m!4903259 () Bool)

(assert (=> d!1268038 m!4903259))

(assert (=> b!4310237 d!1268038))

(declare-fun b!4310321 () Bool)

(declare-fun e!2680655 () List!48321)

(assert (=> b!4310321 (= e!2680655 (Cons!48197 (h!53632 lt!1530769) (removePairForKey!212 (t!355128 lt!1530769) key!2048)))))

(declare-fun b!4310319 () Bool)

(declare-fun e!2680654 () List!48321)

(assert (=> b!4310319 (= e!2680654 (t!355128 lt!1530769))))

(declare-fun d!1268040 () Bool)

(declare-fun lt!1530854 () List!48321)

(assert (=> d!1268040 (not (containsKey!312 lt!1530854 key!2048))))

(assert (=> d!1268040 (= lt!1530854 e!2680654)))

(declare-fun c!732845 () Bool)

(assert (=> d!1268040 (= c!732845 (and ((_ is Cons!48197) lt!1530769) (= (_1!26601 (h!53632 lt!1530769)) key!2048)))))

(assert (=> d!1268040 (noDuplicateKeys!210 lt!1530769)))

(assert (=> d!1268040 (= (removePairForKey!212 lt!1530769 key!2048) lt!1530854)))

(declare-fun b!4310320 () Bool)

(assert (=> b!4310320 (= e!2680654 e!2680655)))

(declare-fun c!732846 () Bool)

(assert (=> b!4310320 (= c!732846 ((_ is Cons!48197) lt!1530769))))

(declare-fun b!4310322 () Bool)

(assert (=> b!4310322 (= e!2680655 Nil!48197)))

(assert (= (and d!1268040 c!732845) b!4310319))

(assert (= (and d!1268040 (not c!732845)) b!4310320))

(assert (= (and b!4310320 c!732846) b!4310321))

(assert (= (and b!4310320 (not c!732846)) b!4310322))

(declare-fun m!4903261 () Bool)

(assert (=> b!4310321 m!4903261))

(declare-fun m!4903263 () Bool)

(assert (=> d!1268040 m!4903263))

(assert (=> d!1268040 m!4903159))

(assert (=> b!4310237 d!1268040))

(declare-fun d!1268042 () Bool)

(declare-fun e!2680658 () Bool)

(assert (=> d!1268042 e!2680658))

(declare-fun c!732849 () Bool)

(assert (=> d!1268042 (= c!732849 (contains!10175 (v!42342 (underlying!9556 thiss!42308)) lt!1530771))))

(declare-fun lt!1530857 () List!48321)

(declare-fun apply!11017 (LongMapFixedSize!9326 (_ BitVec 64)) List!48321)

(assert (=> d!1268042 (= lt!1530857 (apply!11017 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308)))) lt!1530771))))

(assert (=> d!1268042 (valid!3652 (v!42342 (underlying!9556 thiss!42308)))))

(assert (=> d!1268042 (= (apply!11015 (v!42342 (underlying!9556 thiss!42308)) lt!1530771) lt!1530857)))

(declare-fun b!4310327 () Bool)

(declare-fun get!15595 (Option!10229) List!48321)

(assert (=> b!4310327 (= e!2680658 (= lt!1530857 (get!15595 (getValueByKey!255 (toList!2403 (map!10187 (v!42342 (underlying!9556 thiss!42308)))) lt!1530771))))))

(declare-fun b!4310328 () Bool)

(declare-fun dynLambda!20438 (Int (_ BitVec 64)) List!48321)

(assert (=> b!4310328 (= e!2680658 (= lt!1530857 (dynLambda!20438 (defaultEntry!5048 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308))))) lt!1530771)))))

(assert (=> b!4310328 ((_ is LongMap!4663) (v!42342 (underlying!9556 thiss!42308)))))

(assert (= (and d!1268042 c!732849) b!4310327))

(assert (= (and d!1268042 (not c!732849)) b!4310328))

(declare-fun b_lambda!126631 () Bool)

(assert (=> (not b_lambda!126631) (not b!4310328)))

(declare-fun t!355131 () Bool)

(declare-fun tb!257293 () Bool)

(assert (=> (and b!4310234 (= (defaultEntry!5048 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308))))) (defaultEntry!5048 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308)))))) t!355131) tb!257293))

(assert (=> b!4310328 t!355131))

(declare-fun result!314690 () Bool)

(declare-fun b_and!340043 () Bool)

(assert (= b_and!340039 (and (=> t!355131 result!314690) b_and!340043)))

(declare-fun m!4903265 () Bool)

(assert (=> d!1268042 m!4903265))

(declare-fun m!4903267 () Bool)

(assert (=> d!1268042 m!4903267))

(assert (=> d!1268042 m!4903259))

(assert (=> b!4310327 m!4903175))

(declare-fun m!4903269 () Bool)

(assert (=> b!4310327 m!4903269))

(assert (=> b!4310327 m!4903269))

(declare-fun m!4903271 () Bool)

(assert (=> b!4310327 m!4903271))

(declare-fun m!4903273 () Bool)

(assert (=> b!4310328 m!4903273))

(assert (=> b!4310237 d!1268042))

(declare-fun d!1268044 () Bool)

(declare-fun hash!1008 (Hashable!4579 K!9404) (_ BitVec 64))

(assert (=> d!1268044 (= (hash!1006 (hashF!6699 thiss!42308) key!2048) (hash!1008 (hashF!6699 thiss!42308) key!2048))))

(declare-fun bs!605056 () Bool)

(assert (= bs!605056 d!1268044))

(declare-fun m!4903275 () Bool)

(assert (=> bs!605056 m!4903275))

(assert (=> b!4310237 d!1268044))

(declare-fun d!1268046 () Bool)

(assert (=> d!1268046 (= (array_inv!5391 (_keys!4963 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308)))))) (bvsge (size!35550 (_keys!4963 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4310234 d!1268046))

(declare-fun d!1268048 () Bool)

(assert (=> d!1268048 (= (array_inv!5392 (_values!4944 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308)))))) (bvsge (size!35551 (_values!4944 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4310234 d!1268048))

(declare-fun bs!605057 () Bool)

(declare-fun b!4310333 () Bool)

(assert (= bs!605057 (and b!4310333 d!1268030)))

(declare-fun lambda!132922 () Int)

(assert (=> bs!605057 (not (= lambda!132922 lambda!132916))))

(declare-fun bs!605058 () Bool)

(assert (= bs!605058 (and b!4310333 b!4310276)))

(assert (=> bs!605058 (= lambda!132922 lambda!132919)))

(declare-fun d!1268050 () Bool)

(declare-fun res!1766542 () Bool)

(declare-fun e!2680661 () Bool)

(assert (=> d!1268050 (=> (not res!1766542) (not e!2680661))))

(assert (=> d!1268050 (= res!1766542 (valid!3652 (v!42342 (underlying!9556 thiss!42308))))))

(assert (=> d!1268050 (= (valid!3651 thiss!42308) e!2680661)))

(declare-fun res!1766543 () Bool)

(assert (=> b!4310333 (=> (not res!1766543) (not e!2680661))))

(assert (=> b!4310333 (= res!1766543 (forall!8731 (toList!2403 (map!10187 (v!42342 (underlying!9556 thiss!42308)))) lambda!132922))))

(declare-fun b!4310334 () Bool)

(declare-fun allKeysSameHashInMap!336 (ListLongMap!1015 Hashable!4579) Bool)

(assert (=> b!4310334 (= e!2680661 (allKeysSameHashInMap!336 (map!10187 (v!42342 (underlying!9556 thiss!42308))) (hashF!6699 thiss!42308)))))

(assert (= (and d!1268050 res!1766542) b!4310333))

(assert (= (and b!4310333 res!1766543) b!4310334))

(assert (=> d!1268050 m!4903259))

(assert (=> b!4310333 m!4903175))

(declare-fun m!4903277 () Bool)

(assert (=> b!4310333 m!4903277))

(assert (=> b!4310334 m!4903175))

(assert (=> b!4310334 m!4903175))

(declare-fun m!4903279 () Bool)

(assert (=> b!4310334 m!4903279))

(assert (=> b!4310232 d!1268050))

(declare-fun b!4310339 () Bool)

(declare-fun tp!1324545 () Bool)

(declare-fun e!2680664 () Bool)

(assert (=> b!4310339 (= e!2680664 (and tp_is_empty!23757 tp_is_empty!23759 tp!1324545))))

(assert (=> b!4310230 (= tp!1324538 e!2680664)))

(assert (= (and b!4310230 ((_ is Cons!48197) mapDefault!20822)) b!4310339))

(declare-fun tp!1324546 () Bool)

(declare-fun e!2680665 () Bool)

(declare-fun b!4310340 () Bool)

(assert (=> b!4310340 (= e!2680665 (and tp_is_empty!23757 tp_is_empty!23759 tp!1324546))))

(assert (=> b!4310234 (= tp!1324542 e!2680665)))

(assert (= (and b!4310234 ((_ is Cons!48197) (zeroValue!4922 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308))))))) b!4310340))

(declare-fun e!2680666 () Bool)

(declare-fun b!4310341 () Bool)

(declare-fun tp!1324547 () Bool)

(assert (=> b!4310341 (= e!2680666 (and tp_is_empty!23757 tp_is_empty!23759 tp!1324547))))

(assert (=> b!4310234 (= tp!1324536 e!2680666)))

(assert (= (and b!4310234 ((_ is Cons!48197) (minValue!4922 (v!42341 (underlying!9555 (v!42342 (underlying!9556 thiss!42308))))))) b!4310341))

(declare-fun e!2680672 () Bool)

(declare-fun tp!1324555 () Bool)

(declare-fun b!4310349 () Bool)

(assert (=> b!4310349 (= e!2680672 (and tp_is_empty!23757 tp_is_empty!23759 tp!1324555))))

(declare-fun condMapEmpty!20825 () Bool)

(declare-fun mapDefault!20825 () List!48321)

(assert (=> mapNonEmpty!20822 (= condMapEmpty!20825 (= mapRest!20822 ((as const (Array (_ BitVec 32) List!48321)) mapDefault!20825)))))

(declare-fun mapRes!20825 () Bool)

(assert (=> mapNonEmpty!20822 (= tp!1324541 (and e!2680672 mapRes!20825))))

(declare-fun e!2680671 () Bool)

(declare-fun tp!1324554 () Bool)

(declare-fun b!4310348 () Bool)

(assert (=> b!4310348 (= e!2680671 (and tp_is_empty!23757 tp_is_empty!23759 tp!1324554))))

(declare-fun mapNonEmpty!20825 () Bool)

(declare-fun tp!1324556 () Bool)

(assert (=> mapNonEmpty!20825 (= mapRes!20825 (and tp!1324556 e!2680671))))

(declare-fun mapValue!20825 () List!48321)

(declare-fun mapKey!20825 () (_ BitVec 32))

(declare-fun mapRest!20825 () (Array (_ BitVec 32) List!48321))

(assert (=> mapNonEmpty!20825 (= mapRest!20822 (store mapRest!20825 mapKey!20825 mapValue!20825))))

(declare-fun mapIsEmpty!20825 () Bool)

(assert (=> mapIsEmpty!20825 mapRes!20825))

(assert (= (and mapNonEmpty!20822 condMapEmpty!20825) mapIsEmpty!20825))

(assert (= (and mapNonEmpty!20822 (not condMapEmpty!20825)) mapNonEmpty!20825))

(assert (= (and mapNonEmpty!20825 ((_ is Cons!48197) mapValue!20825)) b!4310348))

(assert (= (and mapNonEmpty!20822 ((_ is Cons!48197) mapDefault!20825)) b!4310349))

(declare-fun m!4903281 () Bool)

(assert (=> mapNonEmpty!20825 m!4903281))

(declare-fun b!4310350 () Bool)

(declare-fun tp!1324557 () Bool)

(declare-fun e!2680673 () Bool)

(assert (=> b!4310350 (= e!2680673 (and tp_is_empty!23757 tp_is_empty!23759 tp!1324557))))

(assert (=> mapNonEmpty!20822 (= tp!1324537 e!2680673)))

(assert (= (and mapNonEmpty!20822 ((_ is Cons!48197) mapValue!20822)) b!4310350))

(declare-fun b_lambda!126633 () Bool)

(assert (= b_lambda!126631 (or (and b!4310234 b_free!128611) b_lambda!126633)))

(check-sat (not b!4310309) (not d!1268036) tp_is_empty!23759 (not b!4310350) (not b!4310339) (not b!4310340) (not bm!297935) (not b!4310303) (not d!1268032) (not tb!257293) (not b!4310283) (not b!4310304) tp_is_empty!23757 (not bm!297934) (not d!1268038) (not b!4310321) (not b!4310273) (not b!4310334) (not b!4310327) (not b!4310276) b_and!340043 (not b_next!129315) (not d!1268034) (not d!1268050) b_and!340041 (not b!4310349) (not b!4310348) (not d!1268040) (not b!4310302) (not d!1268042) (not b!4310308) (not b!4310333) (not bm!297931) (not d!1268030) (not bm!297930) (not b!4310341) (not b!4310277) (not b!4310282) (not bm!297941) (not bm!297933) (not bm!297940) (not mapNonEmpty!20825) (not d!1268044) (not bm!297932) (not b_next!129317) (not b_lambda!126633) (not b!4310244) (not d!1268028) (not b!4310243))
(check-sat b_and!340043 b_and!340041 (not b_next!129317) (not b_next!129315))
