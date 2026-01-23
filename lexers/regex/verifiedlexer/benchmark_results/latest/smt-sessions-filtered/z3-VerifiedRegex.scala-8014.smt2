; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415022 () Bool)

(assert start!415022)

(declare-fun b!4315084 () Bool)

(declare-fun b_free!128795 () Bool)

(declare-fun b_next!129499 () Bool)

(assert (=> b!4315084 (= b_free!128795 (not b_next!129499))))

(declare-fun tp!1325753 () Bool)

(declare-fun b_and!340269 () Bool)

(assert (=> b!4315084 (= tp!1325753 b_and!340269)))

(declare-fun b!4315083 () Bool)

(declare-fun b_free!128797 () Bool)

(declare-fun b_next!129501 () Bool)

(assert (=> b!4315083 (= b_free!128797 (not b_next!129501))))

(declare-fun tp!1325748 () Bool)

(declare-fun b_and!340271 () Bool)

(assert (=> b!4315083 (= tp!1325748 b_and!340271)))

(declare-fun b!4315079 () Bool)

(declare-fun e!2684169 () Bool)

(declare-fun e!2684170 () Bool)

(assert (=> b!4315079 (= e!2684169 e!2684170)))

(declare-fun res!1768670 () Bool)

(assert (=> b!4315079 (=> (not res!1768670) (not e!2684170))))

(declare-datatypes ((V!9721 0))(
  ( (V!9722 (val!15873 Int)) )
))
(declare-datatypes ((K!9519 0))(
  ( (K!9520 (val!15874 Int)) )
))
(declare-datatypes ((tuple2!46912 0))(
  ( (tuple2!46913 (_1!26738 K!9519) (_2!26738 V!9721)) )
))
(declare-datatypes ((List!48412 0))(
  ( (Nil!48288) (Cons!48288 (h!53738 tuple2!46912) (t!355253 List!48412)) )
))
(declare-datatypes ((array!17028 0))(
  ( (array!17029 (arr!7603 (Array (_ BitVec 32) (_ BitVec 64))) (size!35642 (_ BitVec 32))) )
))
(declare-datatypes ((array!17030 0))(
  ( (array!17031 (arr!7604 (Array (_ BitVec 32) List!48412)) (size!35643 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9418 0))(
  ( (LongMapFixedSize!9419 (defaultEntry!5094 Int) (mask!13292 (_ BitVec 32)) (extraKeys!4958 (_ BitVec 32)) (zeroValue!4968 List!48412) (minValue!4968 List!48412) (_size!9461 (_ BitVec 32)) (_keys!5009 array!17028) (_values!4990 array!17030) (_vacant!4770 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18645 0))(
  ( (Cell!18646 (v!42544 LongMapFixedSize!9418)) )
))
(declare-datatypes ((MutLongMap!4709 0))(
  ( (LongMap!4709 (underlying!9647 Cell!18645)) (MutLongMapExt!4708 (__x!30152 Int)) )
))
(declare-datatypes ((tuple2!46914 0))(
  ( (tuple2!46915 (_1!26739 Bool) (_2!26739 MutLongMap!4709)) )
))
(declare-fun lt!1534706 () tuple2!46914)

(assert (=> b!4315079 (= res!1768670 (_1!26739 lt!1534706))))

(declare-fun lt!1534705 () List!48412)

(declare-fun lt!1534699 () (_ BitVec 64))

(declare-datatypes ((Hashable!4625 0))(
  ( (HashableExt!4624 (__x!30153 Int)) )
))
(declare-datatypes ((Cell!18647 0))(
  ( (Cell!18648 (v!42545 MutLongMap!4709)) )
))
(declare-datatypes ((MutableMap!4615 0))(
  ( (MutableMapExt!4614 (__x!30154 Int)) (HashMap!4615 (underlying!9648 Cell!18647) (hashF!6818 Hashable!4625) (_size!9462 (_ BitVec 32)) (defaultValue!4786 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4615)

(declare-fun update!483 (MutLongMap!4709 (_ BitVec 64) List!48412) tuple2!46914)

(assert (=> b!4315079 (= lt!1534706 (update!483 (v!42545 (underlying!9648 thiss!42308)) lt!1534699 lt!1534705))))

(declare-fun lt!1534704 () tuple2!46912)

(declare-fun lt!1534700 () List!48412)

(assert (=> b!4315079 (= lt!1534705 (Cons!48288 lt!1534704 lt!1534700))))

(declare-fun lt!1534709 () List!48412)

(declare-fun key!2048 () K!9519)

(declare-fun removePairForKey!244 (List!48412 K!9519) List!48412)

(assert (=> b!4315079 (= lt!1534700 (removePairForKey!244 lt!1534709 key!2048))))

(declare-fun v!9179 () V!9721)

(assert (=> b!4315079 (= lt!1534704 (tuple2!46913 key!2048 v!9179))))

(declare-fun apply!11078 (MutLongMap!4709 (_ BitVec 64)) List!48412)

(assert (=> b!4315079 (= lt!1534709 (apply!11078 (v!42545 (underlying!9648 thiss!42308)) lt!1534699))))

(declare-fun hash!1097 (Hashable!4625 K!9519) (_ BitVec 64))

(assert (=> b!4315079 (= lt!1534699 (hash!1097 (hashF!6818 thiss!42308) key!2048))))

(declare-fun res!1768667 () Bool)

(declare-fun e!2684162 () Bool)

(assert (=> start!415022 (=> (not res!1768667) (not e!2684162))))

(get-info :version)

(assert (=> start!415022 (= res!1768667 ((_ is HashMap!4615) thiss!42308))))

(assert (=> start!415022 e!2684162))

(declare-fun e!2684164 () Bool)

(assert (=> start!415022 e!2684164))

(declare-fun tp_is_empty!23941 () Bool)

(assert (=> start!415022 tp_is_empty!23941))

(declare-fun tp_is_empty!23943 () Bool)

(assert (=> start!415022 tp_is_empty!23943))

(declare-fun mapIsEmpty!21007 () Bool)

(declare-fun mapRes!21007 () Bool)

(assert (=> mapIsEmpty!21007 mapRes!21007))

(declare-fun b!4315080 () Bool)

(declare-fun res!1768672 () Bool)

(declare-fun e!2684163 () Bool)

(assert (=> b!4315080 (=> (not res!1768672) (not e!2684163))))

(declare-fun containsKey!365 (List!48412 K!9519) Bool)

(assert (=> b!4315080 (= res!1768672 (not (containsKey!365 lt!1534700 key!2048)))))

(declare-fun b!4315081 () Bool)

(declare-fun e!2684171 () Bool)

(declare-fun e!2684161 () Bool)

(declare-fun lt!1534708 () MutLongMap!4709)

(assert (=> b!4315081 (= e!2684171 (and e!2684161 ((_ is LongMap!4709) lt!1534708)))))

(assert (=> b!4315081 (= lt!1534708 (v!42545 (underlying!9648 thiss!42308)))))

(declare-fun b!4315082 () Bool)

(declare-fun e!2684165 () Bool)

(assert (=> b!4315082 (= e!2684161 e!2684165)))

(assert (=> b!4315083 (= e!2684164 (and e!2684171 tp!1325748))))

(declare-fun tp!1325747 () Bool)

(declare-fun e!2684166 () Bool)

(declare-fun e!2684167 () Bool)

(declare-fun tp!1325751 () Bool)

(declare-fun array_inv!5465 (array!17028) Bool)

(declare-fun array_inv!5466 (array!17030) Bool)

(assert (=> b!4315084 (= e!2684166 (and tp!1325753 tp!1325751 tp!1325747 (array_inv!5465 (_keys!5009 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308)))))) (array_inv!5466 (_values!4990 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308)))))) e!2684167))))

(declare-fun b!4315085 () Bool)

(declare-datatypes ((tuple2!46916 0))(
  ( (tuple2!46917 (_1!26740 (_ BitVec 64)) (_2!26740 List!48412)) )
))
(declare-datatypes ((List!48413 0))(
  ( (Nil!48289) (Cons!48289 (h!53739 tuple2!46916) (t!355254 List!48413)) )
))
(declare-datatypes ((ListLongMap!1093 0))(
  ( (ListLongMap!1094 (toList!2479 List!48413)) )
))
(declare-fun lt!1534710 () ListLongMap!1093)

(declare-fun allKeysSameHashInMap!366 (ListLongMap!1093 Hashable!4625) Bool)

(assert (=> b!4315085 (= e!2684170 (not (allKeysSameHashInMap!366 lt!1534710 (hashF!6818 thiss!42308))))))

(declare-fun lambda!133395 () Int)

(declare-fun forall!8775 (List!48413 Int) Bool)

(assert (=> b!4315085 (forall!8775 (toList!2479 lt!1534710) lambda!133395)))

(declare-fun map!10297 (MutLongMap!4709) ListLongMap!1093)

(assert (=> b!4315085 (= lt!1534710 (map!10297 (_2!26739 lt!1534706)))))

(declare-datatypes ((ListMap!1759 0))(
  ( (ListMap!1760 (toList!2480 List!48412)) )
))
(declare-fun lt!1534714 () ListMap!1759)

(declare-fun lt!1534713 () ListMap!1759)

(declare-fun contains!10289 (ListMap!1759 K!9519) Bool)

(assert (=> b!4315085 (= (contains!10289 lt!1534714 key!2048) (contains!10289 lt!1534713 key!2048))))

(declare-datatypes ((Unit!67490 0))(
  ( (Unit!67491) )
))
(declare-fun lt!1534701 () Unit!67490)

(declare-fun lemmaEquivalentThenSameContains!61 (ListMap!1759 ListMap!1759 K!9519) Unit!67490)

(assert (=> b!4315085 (= lt!1534701 (lemmaEquivalentThenSameContains!61 lt!1534714 lt!1534713 key!2048))))

(declare-fun lt!1534715 () ListMap!1759)

(declare-fun +!301 (ListMap!1759 tuple2!46912) ListMap!1759)

(assert (=> b!4315085 (= lt!1534713 (+!301 lt!1534715 lt!1534704))))

(declare-fun map!10298 (MutableMap!4615) ListMap!1759)

(assert (=> b!4315085 (= lt!1534714 (map!10298 (HashMap!4615 (Cell!18648 (_2!26739 lt!1534706)) (hashF!6818 thiss!42308) (_size!9462 thiss!42308) (defaultValue!4786 thiss!42308))))))

(declare-fun lt!1534712 () ListLongMap!1093)

(declare-fun lt!1534702 () ListLongMap!1093)

(declare-fun eq!147 (ListMap!1759 ListMap!1759) Bool)

(declare-fun extractMap!350 (List!48413) ListMap!1759)

(assert (=> b!4315085 (eq!147 (extractMap!350 (toList!2479 lt!1534712)) (+!301 (extractMap!350 (toList!2479 lt!1534702)) lt!1534704))))

(declare-fun lt!1534711 () Unit!67490)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!66 (ListLongMap!1093 (_ BitVec 64) List!48412 K!9519 V!9721 Hashable!4625) Unit!67490)

(assert (=> b!4315085 (= lt!1534711 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!66 lt!1534702 lt!1534699 lt!1534705 key!2048 v!9179 (hashF!6818 thiss!42308)))))

(declare-fun e!2684168 () Bool)

(assert (=> b!4315085 e!2684168))

(declare-fun res!1768669 () Bool)

(assert (=> b!4315085 (=> (not res!1768669) (not e!2684168))))

(assert (=> b!4315085 (= res!1768669 (forall!8775 (toList!2479 lt!1534712) lambda!133395))))

(declare-fun +!302 (ListLongMap!1093 tuple2!46916) ListLongMap!1093)

(assert (=> b!4315085 (= lt!1534712 (+!302 lt!1534702 (tuple2!46917 lt!1534699 lt!1534705)))))

(declare-fun lt!1534703 () Unit!67490)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!168 (ListLongMap!1093 (_ BitVec 64) List!48412 Hashable!4625) Unit!67490)

(assert (=> b!4315085 (= lt!1534703 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!168 lt!1534702 lt!1534699 lt!1534705 (hashF!6818 thiss!42308)))))

(assert (=> b!4315085 e!2684163))

(declare-fun res!1768671 () Bool)

(assert (=> b!4315085 (=> (not res!1768671) (not e!2684163))))

(declare-fun noDuplicateKeys!246 (List!48412) Bool)

(assert (=> b!4315085 (= res!1768671 (noDuplicateKeys!246 lt!1534700))))

(declare-fun lt!1534707 () Unit!67490)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!194 (List!48412 K!9519) Unit!67490)

(assert (=> b!4315085 (= lt!1534707 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!194 lt!1534709 key!2048))))

(declare-fun allKeysSameHash!219 (List!48412 (_ BitVec 64) Hashable!4625) Bool)

(assert (=> b!4315085 (allKeysSameHash!219 lt!1534700 lt!1534699 (hashF!6818 thiss!42308))))

(declare-fun lt!1534716 () Unit!67490)

(declare-fun lemmaRemovePairForKeyPreservesHash!199 (List!48412 K!9519 (_ BitVec 64) Hashable!4625) Unit!67490)

(assert (=> b!4315085 (= lt!1534716 (lemmaRemovePairForKeyPreservesHash!199 lt!1534709 key!2048 lt!1534699 (hashF!6818 thiss!42308)))))

(assert (=> b!4315085 (allKeysSameHash!219 lt!1534709 lt!1534699 (hashF!6818 thiss!42308))))

(declare-fun lt!1534698 () Unit!67490)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!206 (List!48413 (_ BitVec 64) List!48412 Hashable!4625) Unit!67490)

(assert (=> b!4315085 (= lt!1534698 (lemmaInLongMapAllKeySameHashThenForTuple!206 (toList!2479 lt!1534702) lt!1534699 lt!1534709 (hashF!6818 thiss!42308)))))

(declare-fun b!4315086 () Bool)

(assert (=> b!4315086 (= e!2684162 e!2684169)))

(declare-fun res!1768668 () Bool)

(assert (=> b!4315086 (=> (not res!1768668) (not e!2684169))))

(declare-fun contains!10290 (MutableMap!4615 K!9519) Bool)

(assert (=> b!4315086 (= res!1768668 (contains!10290 thiss!42308 key!2048))))

(assert (=> b!4315086 (= lt!1534702 (map!10297 (v!42545 (underlying!9648 thiss!42308))))))

(assert (=> b!4315086 (= lt!1534715 (map!10298 thiss!42308))))

(declare-fun b!4315087 () Bool)

(assert (=> b!4315087 (= e!2684163 (noDuplicateKeys!246 lt!1534705))))

(declare-fun mapNonEmpty!21007 () Bool)

(declare-fun tp!1325750 () Bool)

(declare-fun tp!1325749 () Bool)

(assert (=> mapNonEmpty!21007 (= mapRes!21007 (and tp!1325750 tp!1325749))))

(declare-fun mapRest!21007 () (Array (_ BitVec 32) List!48412))

(declare-fun mapValue!21007 () List!48412)

(declare-fun mapKey!21007 () (_ BitVec 32))

(assert (=> mapNonEmpty!21007 (= (arr!7604 (_values!4990 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308)))))) (store mapRest!21007 mapKey!21007 mapValue!21007))))

(declare-fun b!4315088 () Bool)

(assert (=> b!4315088 (= e!2684168 (allKeysSameHashInMap!366 lt!1534712 (hashF!6818 thiss!42308)))))

(declare-fun b!4315089 () Bool)

(assert (=> b!4315089 (= e!2684165 e!2684166)))

(declare-fun b!4315090 () Bool)

(declare-fun res!1768666 () Bool)

(assert (=> b!4315090 (=> (not res!1768666) (not e!2684162))))

(declare-fun valid!3706 (MutableMap!4615) Bool)

(assert (=> b!4315090 (= res!1768666 (valid!3706 thiss!42308))))

(declare-fun b!4315091 () Bool)

(declare-fun tp!1325752 () Bool)

(assert (=> b!4315091 (= e!2684167 (and tp!1325752 mapRes!21007))))

(declare-fun condMapEmpty!21007 () Bool)

(declare-fun mapDefault!21007 () List!48412)

(assert (=> b!4315091 (= condMapEmpty!21007 (= (arr!7604 (_values!4990 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48412)) mapDefault!21007)))))

(assert (= (and start!415022 res!1768667) b!4315090))

(assert (= (and b!4315090 res!1768666) b!4315086))

(assert (= (and b!4315086 res!1768668) b!4315079))

(assert (= (and b!4315079 res!1768670) b!4315085))

(assert (= (and b!4315085 res!1768671) b!4315080))

(assert (= (and b!4315080 res!1768672) b!4315087))

(assert (= (and b!4315085 res!1768669) b!4315088))

(assert (= (and b!4315091 condMapEmpty!21007) mapIsEmpty!21007))

(assert (= (and b!4315091 (not condMapEmpty!21007)) mapNonEmpty!21007))

(assert (= b!4315084 b!4315091))

(assert (= b!4315089 b!4315084))

(assert (= b!4315082 b!4315089))

(assert (= (and b!4315081 ((_ is LongMap!4709) (v!42545 (underlying!9648 thiss!42308)))) b!4315082))

(assert (= b!4315083 b!4315081))

(assert (= (and start!415022 ((_ is HashMap!4615) thiss!42308)) b!4315083))

(declare-fun m!4908701 () Bool)

(assert (=> b!4315079 m!4908701))

(declare-fun m!4908703 () Bool)

(assert (=> b!4315079 m!4908703))

(declare-fun m!4908705 () Bool)

(assert (=> b!4315079 m!4908705))

(declare-fun m!4908707 () Bool)

(assert (=> b!4315079 m!4908707))

(declare-fun m!4908709 () Bool)

(assert (=> b!4315090 m!4908709))

(declare-fun m!4908711 () Bool)

(assert (=> b!4315086 m!4908711))

(declare-fun m!4908713 () Bool)

(assert (=> b!4315086 m!4908713))

(declare-fun m!4908715 () Bool)

(assert (=> b!4315086 m!4908715))

(declare-fun m!4908717 () Bool)

(assert (=> b!4315080 m!4908717))

(declare-fun m!4908719 () Bool)

(assert (=> b!4315084 m!4908719))

(declare-fun m!4908721 () Bool)

(assert (=> b!4315084 m!4908721))

(declare-fun m!4908723 () Bool)

(assert (=> b!4315087 m!4908723))

(declare-fun m!4908725 () Bool)

(assert (=> b!4315085 m!4908725))

(declare-fun m!4908727 () Bool)

(assert (=> b!4315085 m!4908727))

(declare-fun m!4908729 () Bool)

(assert (=> b!4315085 m!4908729))

(declare-fun m!4908731 () Bool)

(assert (=> b!4315085 m!4908731))

(declare-fun m!4908733 () Bool)

(assert (=> b!4315085 m!4908733))

(declare-fun m!4908735 () Bool)

(assert (=> b!4315085 m!4908735))

(declare-fun m!4908737 () Bool)

(assert (=> b!4315085 m!4908737))

(declare-fun m!4908739 () Bool)

(assert (=> b!4315085 m!4908739))

(declare-fun m!4908741 () Bool)

(assert (=> b!4315085 m!4908741))

(declare-fun m!4908743 () Bool)

(assert (=> b!4315085 m!4908743))

(declare-fun m!4908745 () Bool)

(assert (=> b!4315085 m!4908745))

(declare-fun m!4908747 () Bool)

(assert (=> b!4315085 m!4908747))

(declare-fun m!4908749 () Bool)

(assert (=> b!4315085 m!4908749))

(declare-fun m!4908751 () Bool)

(assert (=> b!4315085 m!4908751))

(assert (=> b!4315085 m!4908727))

(assert (=> b!4315085 m!4908741))

(declare-fun m!4908753 () Bool)

(assert (=> b!4315085 m!4908753))

(declare-fun m!4908755 () Bool)

(assert (=> b!4315085 m!4908755))

(declare-fun m!4908757 () Bool)

(assert (=> b!4315085 m!4908757))

(assert (=> b!4315085 m!4908739))

(declare-fun m!4908759 () Bool)

(assert (=> b!4315085 m!4908759))

(declare-fun m!4908761 () Bool)

(assert (=> b!4315085 m!4908761))

(declare-fun m!4908763 () Bool)

(assert (=> b!4315085 m!4908763))

(declare-fun m!4908765 () Bool)

(assert (=> b!4315085 m!4908765))

(declare-fun m!4908767 () Bool)

(assert (=> b!4315085 m!4908767))

(declare-fun m!4908769 () Bool)

(assert (=> b!4315088 m!4908769))

(declare-fun m!4908771 () Bool)

(assert (=> mapNonEmpty!21007 m!4908771))

(check-sat (not b!4315084) tp_is_empty!23941 tp_is_empty!23943 (not b!4315086) (not b!4315091) (not b!4315088) (not b!4315090) (not b!4315079) (not mapNonEmpty!21007) (not b_next!129499) (not b!4315085) b_and!340269 (not b!4315080) (not b_next!129501) b_and!340271 (not b!4315087))
(check-sat b_and!340269 b_and!340271 (not b_next!129501) (not b_next!129499))
(get-model)

(declare-fun d!1269091 () Bool)

(declare-fun res!1768677 () Bool)

(declare-fun e!2684176 () Bool)

(assert (=> d!1269091 (=> res!1768677 e!2684176)))

(assert (=> d!1269091 (= res!1768677 (not ((_ is Cons!48288) lt!1534705)))))

(assert (=> d!1269091 (= (noDuplicateKeys!246 lt!1534705) e!2684176)))

(declare-fun b!4315096 () Bool)

(declare-fun e!2684177 () Bool)

(assert (=> b!4315096 (= e!2684176 e!2684177)))

(declare-fun res!1768678 () Bool)

(assert (=> b!4315096 (=> (not res!1768678) (not e!2684177))))

(assert (=> b!4315096 (= res!1768678 (not (containsKey!365 (t!355253 lt!1534705) (_1!26738 (h!53738 lt!1534705)))))))

(declare-fun b!4315097 () Bool)

(assert (=> b!4315097 (= e!2684177 (noDuplicateKeys!246 (t!355253 lt!1534705)))))

(assert (= (and d!1269091 (not res!1768677)) b!4315096))

(assert (= (and b!4315096 res!1768678) b!4315097))

(declare-fun m!4908773 () Bool)

(assert (=> b!4315096 m!4908773))

(declare-fun m!4908775 () Bool)

(assert (=> b!4315097 m!4908775))

(assert (=> b!4315087 d!1269091))

(declare-fun bs!605705 () Bool)

(declare-fun b!4315129 () Bool)

(assert (= bs!605705 (and b!4315129 b!4315085)))

(declare-fun lambda!133398 () Int)

(assert (=> bs!605705 (= lambda!133398 lambda!133395)))

(declare-fun e!2684197 () Bool)

(declare-fun lt!1534773 () (_ BitVec 64))

(declare-fun b!4315120 () Bool)

(declare-datatypes ((Option!10266 0))(
  ( (None!10265) (Some!10265 (v!42550 tuple2!46912)) )
))
(declare-fun isDefined!7567 (Option!10266) Bool)

(declare-fun getPair!148 (List!48412 K!9519) Option!10266)

(assert (=> b!4315120 (= e!2684197 (isDefined!7567 (getPair!148 (apply!11078 (v!42545 (underlying!9648 thiss!42308)) lt!1534773) key!2048)))))

(declare-fun b!4315121 () Bool)

(declare-fun e!2684192 () Unit!67490)

(declare-fun Unit!67492 () Unit!67490)

(assert (=> b!4315121 (= e!2684192 Unit!67492)))

(declare-fun bm!298514 () Bool)

(declare-fun call!298524 () Option!10266)

(declare-fun call!298521 () List!48412)

(assert (=> bm!298514 (= call!298524 (getPair!148 call!298521 key!2048))))

(declare-fun bm!298515 () Bool)

(declare-fun call!298522 () ListLongMap!1093)

(assert (=> bm!298515 (= call!298522 (map!10297 (v!42545 (underlying!9648 thiss!42308))))))

(declare-fun b!4315122 () Bool)

(declare-fun e!2684194 () Unit!67490)

(declare-fun Unit!67493 () Unit!67490)

(assert (=> b!4315122 (= e!2684194 Unit!67493)))

(declare-fun bm!298516 () Bool)

(declare-fun call!298519 () (_ BitVec 64))

(assert (=> bm!298516 (= call!298519 (hash!1097 (hashF!6818 thiss!42308) key!2048))))

(declare-fun d!1269093 () Bool)

(declare-fun lt!1534762 () Bool)

(assert (=> d!1269093 (= lt!1534762 (contains!10289 (map!10298 thiss!42308) key!2048))))

(assert (=> d!1269093 (= lt!1534762 e!2684197)))

(declare-fun res!1768685 () Bool)

(assert (=> d!1269093 (=> (not res!1768685) (not e!2684197))))

(declare-fun contains!10291 (MutLongMap!4709 (_ BitVec 64)) Bool)

(assert (=> d!1269093 (= res!1768685 (contains!10291 (v!42545 (underlying!9648 thiss!42308)) lt!1534773))))

(declare-fun lt!1534766 () Unit!67490)

(declare-fun e!2684196 () Unit!67490)

(assert (=> d!1269093 (= lt!1534766 e!2684196)))

(declare-fun c!733589 () Bool)

(assert (=> d!1269093 (= c!733589 (contains!10289 (extractMap!350 (toList!2479 (map!10297 (v!42545 (underlying!9648 thiss!42308))))) key!2048))))

(declare-fun lt!1534759 () Unit!67490)

(assert (=> d!1269093 (= lt!1534759 e!2684192)))

(declare-fun c!733588 () Bool)

(assert (=> d!1269093 (= c!733588 (contains!10291 (v!42545 (underlying!9648 thiss!42308)) lt!1534773))))

(assert (=> d!1269093 (= lt!1534773 (hash!1097 (hashF!6818 thiss!42308) key!2048))))

(assert (=> d!1269093 (valid!3706 thiss!42308)))

(assert (=> d!1269093 (= (contains!10290 thiss!42308 key!2048) lt!1534762)))

(declare-fun b!4315123 () Bool)

(declare-fun lt!1534768 () Unit!67490)

(assert (=> b!4315123 (= e!2684196 lt!1534768)))

(declare-fun lt!1534764 () ListLongMap!1093)

(assert (=> b!4315123 (= lt!1534764 call!298522)))

(declare-fun lemmaInGenericMapThenInLongMap!148 (ListLongMap!1093 K!9519 Hashable!4625) Unit!67490)

(assert (=> b!4315123 (= lt!1534768 (lemmaInGenericMapThenInLongMap!148 lt!1534764 key!2048 (hashF!6818 thiss!42308)))))

(declare-fun res!1768687 () Bool)

(declare-fun call!298523 () Bool)

(assert (=> b!4315123 (= res!1768687 call!298523)))

(declare-fun e!2684193 () Bool)

(assert (=> b!4315123 (=> (not res!1768687) (not e!2684193))))

(assert (=> b!4315123 e!2684193))

(declare-fun b!4315124 () Bool)

(declare-fun e!2684198 () Unit!67490)

(declare-fun Unit!67494 () Unit!67490)

(assert (=> b!4315124 (= e!2684198 Unit!67494)))

(declare-fun b!4315125 () Bool)

(assert (=> b!4315125 (= e!2684196 e!2684198)))

(declare-fun res!1768686 () Bool)

(assert (=> b!4315125 (= res!1768686 call!298523)))

(declare-fun e!2684195 () Bool)

(assert (=> b!4315125 (=> (not res!1768686) (not e!2684195))))

(declare-fun c!733587 () Bool)

(assert (=> b!4315125 (= c!733587 e!2684195)))

(declare-fun bm!298517 () Bool)

(declare-fun contains!10292 (ListLongMap!1093 (_ BitVec 64)) Bool)

(assert (=> bm!298517 (= call!298523 (contains!10292 (ite c!733589 lt!1534764 call!298522) call!298519))))

(declare-fun b!4315126 () Bool)

(assert (=> b!4315126 false))

(declare-fun lt!1534758 () Unit!67490)

(declare-fun lt!1534769 () Unit!67490)

(assert (=> b!4315126 (= lt!1534758 lt!1534769)))

(declare-fun lt!1534771 () List!48413)

(declare-fun lt!1534774 () List!48412)

(declare-fun contains!10293 (List!48413 tuple2!46916) Bool)

(assert (=> b!4315126 (contains!10293 lt!1534771 (tuple2!46917 lt!1534773 lt!1534774))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!160 (List!48413 (_ BitVec 64) List!48412) Unit!67490)

(assert (=> b!4315126 (= lt!1534769 (lemmaGetValueByKeyImpliesContainsTuple!160 lt!1534771 lt!1534773 lt!1534774))))

(assert (=> b!4315126 (= lt!1534774 (apply!11078 (v!42545 (underlying!9648 thiss!42308)) lt!1534773))))

(assert (=> b!4315126 (= lt!1534771 (toList!2479 (map!10297 (v!42545 (underlying!9648 thiss!42308)))))))

(declare-fun lt!1534761 () Unit!67490)

(declare-fun lt!1534757 () Unit!67490)

(assert (=> b!4315126 (= lt!1534761 lt!1534757)))

(declare-fun lt!1534760 () List!48413)

(declare-datatypes ((Option!10267 0))(
  ( (None!10266) (Some!10266 (v!42551 List!48412)) )
))
(declare-fun isDefined!7568 (Option!10267) Bool)

(declare-fun getValueByKey!277 (List!48413 (_ BitVec 64)) Option!10267)

(assert (=> b!4315126 (isDefined!7568 (getValueByKey!277 lt!1534760 lt!1534773))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!196 (List!48413 (_ BitVec 64)) Unit!67490)

(assert (=> b!4315126 (= lt!1534757 (lemmaContainsKeyImpliesGetValueByKeyDefined!196 lt!1534760 lt!1534773))))

(assert (=> b!4315126 (= lt!1534760 (toList!2479 (map!10297 (v!42545 (underlying!9648 thiss!42308)))))))

(declare-fun lt!1534772 () Unit!67490)

(declare-fun lt!1534765 () Unit!67490)

(assert (=> b!4315126 (= lt!1534772 lt!1534765)))

(declare-fun lt!1534767 () List!48413)

(declare-fun containsKey!366 (List!48413 (_ BitVec 64)) Bool)

(assert (=> b!4315126 (containsKey!366 lt!1534767 lt!1534773)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!149 (List!48413 (_ BitVec 64)) Unit!67490)

(assert (=> b!4315126 (= lt!1534765 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!149 lt!1534767 lt!1534773))))

(assert (=> b!4315126 (= lt!1534767 (toList!2479 (map!10297 (v!42545 (underlying!9648 thiss!42308)))))))

(declare-fun Unit!67495 () Unit!67490)

(assert (=> b!4315126 (= e!2684194 Unit!67495)))

(declare-fun b!4315127 () Bool)

(declare-fun call!298520 () Bool)

(assert (=> b!4315127 (= e!2684193 call!298520)))

(declare-fun b!4315128 () Bool)

(assert (=> b!4315128 false))

(declare-fun lt!1534776 () Unit!67490)

(declare-fun lt!1534775 () Unit!67490)

(assert (=> b!4315128 (= lt!1534776 lt!1534775)))

(declare-fun lt!1534763 () ListLongMap!1093)

(assert (=> b!4315128 (contains!10289 (extractMap!350 (toList!2479 lt!1534763)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!148 (ListLongMap!1093 K!9519 Hashable!4625) Unit!67490)

(assert (=> b!4315128 (= lt!1534775 (lemmaInLongMapThenInGenericMap!148 lt!1534763 key!2048 (hashF!6818 thiss!42308)))))

(assert (=> b!4315128 (= lt!1534763 call!298522)))

(declare-fun Unit!67496 () Unit!67490)

(assert (=> b!4315128 (= e!2684198 Unit!67496)))

(declare-fun bm!298518 () Bool)

(declare-fun apply!11079 (ListLongMap!1093 (_ BitVec 64)) List!48412)

(assert (=> bm!298518 (= call!298521 (apply!11079 (ite c!733589 lt!1534764 call!298522) call!298519))))

(declare-fun forallContained!1516 (List!48413 Int tuple2!46916) Unit!67490)

(assert (=> b!4315129 (= e!2684192 (forallContained!1516 (toList!2479 (map!10297 (v!42545 (underlying!9648 thiss!42308)))) lambda!133398 (tuple2!46917 lt!1534773 (apply!11078 (v!42545 (underlying!9648 thiss!42308)) lt!1534773))))))

(declare-fun c!733590 () Bool)

(assert (=> b!4315129 (= c!733590 (not (contains!10293 (toList!2479 (map!10297 (v!42545 (underlying!9648 thiss!42308)))) (tuple2!46917 lt!1534773 (apply!11078 (v!42545 (underlying!9648 thiss!42308)) lt!1534773)))))))

(declare-fun lt!1534770 () Unit!67490)

(assert (=> b!4315129 (= lt!1534770 e!2684194)))

(declare-fun bm!298519 () Bool)

(assert (=> bm!298519 (= call!298520 (isDefined!7567 call!298524))))

(declare-fun b!4315130 () Bool)

(assert (=> b!4315130 (= e!2684195 call!298520)))

(assert (= (and d!1269093 c!733588) b!4315129))

(assert (= (and d!1269093 (not c!733588)) b!4315121))

(assert (= (and b!4315129 c!733590) b!4315126))

(assert (= (and b!4315129 (not c!733590)) b!4315122))

(assert (= (and d!1269093 c!733589) b!4315123))

(assert (= (and d!1269093 (not c!733589)) b!4315125))

(assert (= (and b!4315123 res!1768687) b!4315127))

(assert (= (and b!4315125 res!1768686) b!4315130))

(assert (= (and b!4315125 c!733587) b!4315128))

(assert (= (and b!4315125 (not c!733587)) b!4315124))

(assert (= (or b!4315123 b!4315125 b!4315130 b!4315128) bm!298515))

(assert (= (or b!4315123 b!4315127 b!4315125 b!4315130) bm!298516))

(assert (= (or b!4315127 b!4315130) bm!298518))

(assert (= (or b!4315123 b!4315125) bm!298517))

(assert (= (or b!4315127 b!4315130) bm!298514))

(assert (= (or b!4315127 b!4315130) bm!298519))

(assert (= (and d!1269093 res!1768685) b!4315120))

(declare-fun m!4908777 () Bool)

(assert (=> bm!298518 m!4908777))

(declare-fun m!4908779 () Bool)

(assert (=> b!4315120 m!4908779))

(assert (=> b!4315120 m!4908779))

(declare-fun m!4908781 () Bool)

(assert (=> b!4315120 m!4908781))

(assert (=> b!4315120 m!4908781))

(declare-fun m!4908783 () Bool)

(assert (=> b!4315120 m!4908783))

(assert (=> bm!298516 m!4908707))

(assert (=> b!4315129 m!4908713))

(assert (=> b!4315129 m!4908779))

(declare-fun m!4908785 () Bool)

(assert (=> b!4315129 m!4908785))

(declare-fun m!4908787 () Bool)

(assert (=> b!4315129 m!4908787))

(declare-fun m!4908789 () Bool)

(assert (=> bm!298517 m!4908789))

(declare-fun m!4908791 () Bool)

(assert (=> b!4315128 m!4908791))

(assert (=> b!4315128 m!4908791))

(declare-fun m!4908793 () Bool)

(assert (=> b!4315128 m!4908793))

(declare-fun m!4908795 () Bool)

(assert (=> b!4315128 m!4908795))

(declare-fun m!4908797 () Bool)

(assert (=> bm!298519 m!4908797))

(assert (=> d!1269093 m!4908707))

(declare-fun m!4908799 () Bool)

(assert (=> d!1269093 m!4908799))

(declare-fun m!4908801 () Bool)

(assert (=> d!1269093 m!4908801))

(assert (=> d!1269093 m!4908801))

(declare-fun m!4908803 () Bool)

(assert (=> d!1269093 m!4908803))

(assert (=> d!1269093 m!4908715))

(declare-fun m!4908805 () Bool)

(assert (=> d!1269093 m!4908805))

(assert (=> d!1269093 m!4908713))

(assert (=> d!1269093 m!4908715))

(assert (=> d!1269093 m!4908709))

(declare-fun m!4908807 () Bool)

(assert (=> b!4315126 m!4908807))

(declare-fun m!4908809 () Bool)

(assert (=> b!4315126 m!4908809))

(assert (=> b!4315126 m!4908779))

(declare-fun m!4908811 () Bool)

(assert (=> b!4315126 m!4908811))

(declare-fun m!4908813 () Bool)

(assert (=> b!4315126 m!4908813))

(declare-fun m!4908815 () Bool)

(assert (=> b!4315126 m!4908815))

(declare-fun m!4908817 () Bool)

(assert (=> b!4315126 m!4908817))

(assert (=> b!4315126 m!4908713))

(declare-fun m!4908819 () Bool)

(assert (=> b!4315126 m!4908819))

(assert (=> b!4315126 m!4908811))

(declare-fun m!4908821 () Bool)

(assert (=> bm!298514 m!4908821))

(assert (=> bm!298515 m!4908713))

(declare-fun m!4908823 () Bool)

(assert (=> b!4315123 m!4908823))

(assert (=> b!4315086 d!1269093))

(declare-fun d!1269095 () Bool)

(declare-fun map!10299 (LongMapFixedSize!9418) ListLongMap!1093)

(assert (=> d!1269095 (= (map!10297 (v!42545 (underlying!9648 thiss!42308))) (map!10299 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308))))))))

(declare-fun bs!605706 () Bool)

(assert (= bs!605706 d!1269095))

(declare-fun m!4908825 () Bool)

(assert (=> bs!605706 m!4908825))

(assert (=> b!4315086 d!1269095))

(declare-fun d!1269097 () Bool)

(declare-fun lt!1534779 () ListMap!1759)

(declare-fun invariantList!587 (List!48412) Bool)

(assert (=> d!1269097 (invariantList!587 (toList!2480 lt!1534779))))

(assert (=> d!1269097 (= lt!1534779 (extractMap!350 (toList!2479 (map!10297 (v!42545 (underlying!9648 thiss!42308))))))))

(assert (=> d!1269097 (valid!3706 thiss!42308)))

(assert (=> d!1269097 (= (map!10298 thiss!42308) lt!1534779)))

(declare-fun bs!605707 () Bool)

(assert (= bs!605707 d!1269097))

(declare-fun m!4908827 () Bool)

(assert (=> bs!605707 m!4908827))

(assert (=> bs!605707 m!4908713))

(assert (=> bs!605707 m!4908801))

(assert (=> bs!605707 m!4908709))

(assert (=> b!4315086 d!1269097))

(declare-fun bs!605708 () Bool)

(declare-fun b!4315135 () Bool)

(assert (= bs!605708 (and b!4315135 b!4315085)))

(declare-fun lambda!133401 () Int)

(assert (=> bs!605708 (= lambda!133401 lambda!133395)))

(declare-fun bs!605709 () Bool)

(assert (= bs!605709 (and b!4315135 b!4315129)))

(assert (=> bs!605709 (= lambda!133401 lambda!133398)))

(declare-fun d!1269099 () Bool)

(declare-fun res!1768692 () Bool)

(declare-fun e!2684201 () Bool)

(assert (=> d!1269099 (=> (not res!1768692) (not e!2684201))))

(declare-fun valid!3707 (MutLongMap!4709) Bool)

(assert (=> d!1269099 (= res!1768692 (valid!3707 (v!42545 (underlying!9648 thiss!42308))))))

(assert (=> d!1269099 (= (valid!3706 thiss!42308) e!2684201)))

(declare-fun res!1768693 () Bool)

(assert (=> b!4315135 (=> (not res!1768693) (not e!2684201))))

(assert (=> b!4315135 (= res!1768693 (forall!8775 (toList!2479 (map!10297 (v!42545 (underlying!9648 thiss!42308)))) lambda!133401))))

(declare-fun b!4315136 () Bool)

(assert (=> b!4315136 (= e!2684201 (allKeysSameHashInMap!366 (map!10297 (v!42545 (underlying!9648 thiss!42308))) (hashF!6818 thiss!42308)))))

(assert (= (and d!1269099 res!1768692) b!4315135))

(assert (= (and b!4315135 res!1768693) b!4315136))

(declare-fun m!4908829 () Bool)

(assert (=> d!1269099 m!4908829))

(assert (=> b!4315135 m!4908713))

(declare-fun m!4908831 () Bool)

(assert (=> b!4315135 m!4908831))

(assert (=> b!4315136 m!4908713))

(assert (=> b!4315136 m!4908713))

(declare-fun m!4908833 () Bool)

(assert (=> b!4315136 m!4908833))

(assert (=> b!4315090 d!1269099))

(declare-fun d!1269101 () Bool)

(declare-fun res!1768698 () Bool)

(declare-fun e!2684206 () Bool)

(assert (=> d!1269101 (=> res!1768698 e!2684206)))

(assert (=> d!1269101 (= res!1768698 (and ((_ is Cons!48288) lt!1534700) (= (_1!26738 (h!53738 lt!1534700)) key!2048)))))

(assert (=> d!1269101 (= (containsKey!365 lt!1534700 key!2048) e!2684206)))

(declare-fun b!4315141 () Bool)

(declare-fun e!2684207 () Bool)

(assert (=> b!4315141 (= e!2684206 e!2684207)))

(declare-fun res!1768699 () Bool)

(assert (=> b!4315141 (=> (not res!1768699) (not e!2684207))))

(assert (=> b!4315141 (= res!1768699 ((_ is Cons!48288) lt!1534700))))

(declare-fun b!4315142 () Bool)

(assert (=> b!4315142 (= e!2684207 (containsKey!365 (t!355253 lt!1534700) key!2048))))

(assert (= (and d!1269101 (not res!1768698)) b!4315141))

(assert (= (and b!4315141 res!1768699) b!4315142))

(declare-fun m!4908835 () Bool)

(assert (=> b!4315142 m!4908835))

(assert (=> b!4315080 d!1269101))

(declare-fun bs!605710 () Bool)

(declare-fun d!1269103 () Bool)

(assert (= bs!605710 (and d!1269103 b!4315085)))

(declare-fun lambda!133404 () Int)

(assert (=> bs!605710 (not (= lambda!133404 lambda!133395))))

(declare-fun bs!605711 () Bool)

(assert (= bs!605711 (and d!1269103 b!4315129)))

(assert (=> bs!605711 (not (= lambda!133404 lambda!133398))))

(declare-fun bs!605712 () Bool)

(assert (= bs!605712 (and d!1269103 b!4315135)))

(assert (=> bs!605712 (not (= lambda!133404 lambda!133401))))

(assert (=> d!1269103 true))

(assert (=> d!1269103 (allKeysSameHash!219 lt!1534709 lt!1534699 (hashF!6818 thiss!42308))))

(declare-fun lt!1534782 () Unit!67490)

(declare-fun choose!26325 (List!48413 (_ BitVec 64) List!48412 Hashable!4625) Unit!67490)

(assert (=> d!1269103 (= lt!1534782 (choose!26325 (toList!2479 lt!1534702) lt!1534699 lt!1534709 (hashF!6818 thiss!42308)))))

(assert (=> d!1269103 (forall!8775 (toList!2479 lt!1534702) lambda!133404)))

(assert (=> d!1269103 (= (lemmaInLongMapAllKeySameHashThenForTuple!206 (toList!2479 lt!1534702) lt!1534699 lt!1534709 (hashF!6818 thiss!42308)) lt!1534782)))

(declare-fun bs!605713 () Bool)

(assert (= bs!605713 d!1269103))

(assert (=> bs!605713 m!4908733))

(declare-fun m!4908837 () Bool)

(assert (=> bs!605713 m!4908837))

(declare-fun m!4908839 () Bool)

(assert (=> bs!605713 m!4908839))

(assert (=> b!4315085 d!1269103))

(declare-fun bs!605714 () Bool)

(declare-fun d!1269105 () Bool)

(assert (= bs!605714 (and d!1269105 b!4315085)))

(declare-fun lambda!133407 () Int)

(assert (=> bs!605714 (not (= lambda!133407 lambda!133395))))

(declare-fun bs!605715 () Bool)

(assert (= bs!605715 (and d!1269105 b!4315129)))

(assert (=> bs!605715 (not (= lambda!133407 lambda!133398))))

(declare-fun bs!605716 () Bool)

(assert (= bs!605716 (and d!1269105 b!4315135)))

(assert (=> bs!605716 (not (= lambda!133407 lambda!133401))))

(declare-fun bs!605717 () Bool)

(assert (= bs!605717 (and d!1269105 d!1269103)))

(assert (=> bs!605717 (= lambda!133407 lambda!133404)))

(assert (=> d!1269105 true))

(assert (=> d!1269105 (= (allKeysSameHashInMap!366 lt!1534710 (hashF!6818 thiss!42308)) (forall!8775 (toList!2479 lt!1534710) lambda!133407))))

(declare-fun bs!605718 () Bool)

(assert (= bs!605718 d!1269105))

(declare-fun m!4908841 () Bool)

(assert (=> bs!605718 m!4908841))

(assert (=> b!4315085 d!1269105))

(declare-fun b!4315163 () Bool)

(declare-fun e!2684223 () Unit!67490)

(declare-fun lt!1534799 () Unit!67490)

(assert (=> b!4315163 (= e!2684223 lt!1534799)))

(declare-fun lt!1534803 () Unit!67490)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!197 (List!48412 K!9519) Unit!67490)

(assert (=> b!4315163 (= lt!1534803 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!2480 lt!1534713) key!2048))))

(declare-datatypes ((Option!10268 0))(
  ( (None!10267) (Some!10267 (v!42552 V!9721)) )
))
(declare-fun isDefined!7569 (Option!10268) Bool)

(declare-fun getValueByKey!278 (List!48412 K!9519) Option!10268)

(assert (=> b!4315163 (isDefined!7569 (getValueByKey!278 (toList!2480 lt!1534713) key!2048))))

(declare-fun lt!1534805 () Unit!67490)

(assert (=> b!4315163 (= lt!1534805 lt!1534803)))

(declare-fun lemmaInListThenGetKeysListContains!47 (List!48412 K!9519) Unit!67490)

(assert (=> b!4315163 (= lt!1534799 (lemmaInListThenGetKeysListContains!47 (toList!2480 lt!1534713) key!2048))))

(declare-fun call!298527 () Bool)

(assert (=> b!4315163 call!298527))

(declare-fun b!4315164 () Bool)

(declare-fun e!2684224 () Unit!67490)

(assert (=> b!4315164 (= e!2684223 e!2684224)))

(declare-fun c!733598 () Bool)

(assert (=> b!4315164 (= c!733598 call!298527)))

(declare-fun b!4315165 () Bool)

(declare-datatypes ((List!48414 0))(
  ( (Nil!48290) (Cons!48290 (h!53741 K!9519) (t!355257 List!48414)) )
))
(declare-fun e!2684221 () List!48414)

(declare-fun keys!16123 (ListMap!1759) List!48414)

(assert (=> b!4315165 (= e!2684221 (keys!16123 lt!1534713))))

(declare-fun b!4315166 () Bool)

(assert (=> b!4315166 false))

(declare-fun lt!1534801 () Unit!67490)

(declare-fun lt!1534804 () Unit!67490)

(assert (=> b!4315166 (= lt!1534801 lt!1534804)))

(declare-fun containsKey!367 (List!48412 K!9519) Bool)

(assert (=> b!4315166 (containsKey!367 (toList!2480 lt!1534713) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!47 (List!48412 K!9519) Unit!67490)

(assert (=> b!4315166 (= lt!1534804 (lemmaInGetKeysListThenContainsKey!47 (toList!2480 lt!1534713) key!2048))))

(declare-fun Unit!67497 () Unit!67490)

(assert (=> b!4315166 (= e!2684224 Unit!67497)))

(declare-fun b!4315167 () Bool)

(declare-fun e!2684220 () Bool)

(declare-fun e!2684222 () Bool)

(assert (=> b!4315167 (= e!2684220 e!2684222)))

(declare-fun res!1768707 () Bool)

(assert (=> b!4315167 (=> (not res!1768707) (not e!2684222))))

(assert (=> b!4315167 (= res!1768707 (isDefined!7569 (getValueByKey!278 (toList!2480 lt!1534713) key!2048)))))

(declare-fun d!1269107 () Bool)

(assert (=> d!1269107 e!2684220))

(declare-fun res!1768706 () Bool)

(assert (=> d!1269107 (=> res!1768706 e!2684220)))

(declare-fun e!2684225 () Bool)

(assert (=> d!1269107 (= res!1768706 e!2684225)))

(declare-fun res!1768708 () Bool)

(assert (=> d!1269107 (=> (not res!1768708) (not e!2684225))))

(declare-fun lt!1534800 () Bool)

(assert (=> d!1269107 (= res!1768708 (not lt!1534800))))

(declare-fun lt!1534802 () Bool)

(assert (=> d!1269107 (= lt!1534800 lt!1534802)))

(declare-fun lt!1534806 () Unit!67490)

(assert (=> d!1269107 (= lt!1534806 e!2684223)))

(declare-fun c!733597 () Bool)

(assert (=> d!1269107 (= c!733597 lt!1534802)))

(assert (=> d!1269107 (= lt!1534802 (containsKey!367 (toList!2480 lt!1534713) key!2048))))

(assert (=> d!1269107 (= (contains!10289 lt!1534713 key!2048) lt!1534800)))

(declare-fun b!4315168 () Bool)

(declare-fun getKeysList!50 (List!48412) List!48414)

(assert (=> b!4315168 (= e!2684221 (getKeysList!50 (toList!2480 lt!1534713)))))

(declare-fun b!4315169 () Bool)

(declare-fun contains!10294 (List!48414 K!9519) Bool)

(assert (=> b!4315169 (= e!2684225 (not (contains!10294 (keys!16123 lt!1534713) key!2048)))))

(declare-fun b!4315170 () Bool)

(declare-fun Unit!67498 () Unit!67490)

(assert (=> b!4315170 (= e!2684224 Unit!67498)))

(declare-fun b!4315171 () Bool)

(assert (=> b!4315171 (= e!2684222 (contains!10294 (keys!16123 lt!1534713) key!2048))))

(declare-fun bm!298522 () Bool)

(assert (=> bm!298522 (= call!298527 (contains!10294 e!2684221 key!2048))))

(declare-fun c!733599 () Bool)

(assert (=> bm!298522 (= c!733599 c!733597)))

(assert (= (and d!1269107 c!733597) b!4315163))

(assert (= (and d!1269107 (not c!733597)) b!4315164))

(assert (= (and b!4315164 c!733598) b!4315166))

(assert (= (and b!4315164 (not c!733598)) b!4315170))

(assert (= (or b!4315163 b!4315164) bm!298522))

(assert (= (and bm!298522 c!733599) b!4315168))

(assert (= (and bm!298522 (not c!733599)) b!4315165))

(assert (= (and d!1269107 res!1768708) b!4315169))

(assert (= (and d!1269107 (not res!1768706)) b!4315167))

(assert (= (and b!4315167 res!1768707) b!4315171))

(declare-fun m!4908843 () Bool)

(assert (=> b!4315165 m!4908843))

(declare-fun m!4908845 () Bool)

(assert (=> b!4315166 m!4908845))

(declare-fun m!4908847 () Bool)

(assert (=> b!4315166 m!4908847))

(declare-fun m!4908849 () Bool)

(assert (=> b!4315168 m!4908849))

(assert (=> b!4315171 m!4908843))

(assert (=> b!4315171 m!4908843))

(declare-fun m!4908851 () Bool)

(assert (=> b!4315171 m!4908851))

(assert (=> d!1269107 m!4908845))

(declare-fun m!4908853 () Bool)

(assert (=> b!4315167 m!4908853))

(assert (=> b!4315167 m!4908853))

(declare-fun m!4908855 () Bool)

(assert (=> b!4315167 m!4908855))

(declare-fun m!4908857 () Bool)

(assert (=> bm!298522 m!4908857))

(assert (=> b!4315169 m!4908843))

(assert (=> b!4315169 m!4908843))

(assert (=> b!4315169 m!4908851))

(declare-fun m!4908859 () Bool)

(assert (=> b!4315163 m!4908859))

(assert (=> b!4315163 m!4908853))

(assert (=> b!4315163 m!4908853))

(assert (=> b!4315163 m!4908855))

(declare-fun m!4908861 () Bool)

(assert (=> b!4315163 m!4908861))

(assert (=> b!4315085 d!1269107))

(declare-fun d!1269109 () Bool)

(declare-fun e!2684228 () Bool)

(assert (=> d!1269109 e!2684228))

(declare-fun res!1768713 () Bool)

(assert (=> d!1269109 (=> (not res!1768713) (not e!2684228))))

(declare-fun lt!1534815 () ListMap!1759)

(assert (=> d!1269109 (= res!1768713 (contains!10289 lt!1534815 (_1!26738 lt!1534704)))))

(declare-fun lt!1534816 () List!48412)

(assert (=> d!1269109 (= lt!1534815 (ListMap!1760 lt!1534816))))

(declare-fun lt!1534818 () Unit!67490)

(declare-fun lt!1534817 () Unit!67490)

(assert (=> d!1269109 (= lt!1534818 lt!1534817)))

(assert (=> d!1269109 (= (getValueByKey!278 lt!1534816 (_1!26738 lt!1534704)) (Some!10267 (_2!26738 lt!1534704)))))

(declare-fun lemmaContainsTupThenGetReturnValue!86 (List!48412 K!9519 V!9721) Unit!67490)

(assert (=> d!1269109 (= lt!1534817 (lemmaContainsTupThenGetReturnValue!86 lt!1534816 (_1!26738 lt!1534704) (_2!26738 lt!1534704)))))

(declare-fun insertNoDuplicatedKeys!47 (List!48412 K!9519 V!9721) List!48412)

(assert (=> d!1269109 (= lt!1534816 (insertNoDuplicatedKeys!47 (toList!2480 lt!1534715) (_1!26738 lt!1534704) (_2!26738 lt!1534704)))))

(assert (=> d!1269109 (= (+!301 lt!1534715 lt!1534704) lt!1534815)))

(declare-fun b!4315176 () Bool)

(declare-fun res!1768714 () Bool)

(assert (=> b!4315176 (=> (not res!1768714) (not e!2684228))))

(assert (=> b!4315176 (= res!1768714 (= (getValueByKey!278 (toList!2480 lt!1534815) (_1!26738 lt!1534704)) (Some!10267 (_2!26738 lt!1534704))))))

(declare-fun b!4315177 () Bool)

(declare-fun contains!10295 (List!48412 tuple2!46912) Bool)

(assert (=> b!4315177 (= e!2684228 (contains!10295 (toList!2480 lt!1534815) lt!1534704))))

(assert (= (and d!1269109 res!1768713) b!4315176))

(assert (= (and b!4315176 res!1768714) b!4315177))

(declare-fun m!4908863 () Bool)

(assert (=> d!1269109 m!4908863))

(declare-fun m!4908865 () Bool)

(assert (=> d!1269109 m!4908865))

(declare-fun m!4908867 () Bool)

(assert (=> d!1269109 m!4908867))

(declare-fun m!4908869 () Bool)

(assert (=> d!1269109 m!4908869))

(declare-fun m!4908871 () Bool)

(assert (=> b!4315176 m!4908871))

(declare-fun m!4908873 () Bool)

(assert (=> b!4315177 m!4908873))

(assert (=> b!4315085 d!1269109))

(declare-fun d!1269111 () Bool)

(assert (=> d!1269111 (= (contains!10289 lt!1534714 key!2048) (contains!10289 lt!1534713 key!2048))))

(declare-fun lt!1534821 () Unit!67490)

(declare-fun choose!26326 (ListMap!1759 ListMap!1759 K!9519) Unit!67490)

(assert (=> d!1269111 (= lt!1534821 (choose!26326 lt!1534714 lt!1534713 key!2048))))

(assert (=> d!1269111 (eq!147 lt!1534714 lt!1534713)))

(assert (=> d!1269111 (= (lemmaEquivalentThenSameContains!61 lt!1534714 lt!1534713 key!2048) lt!1534821)))

(declare-fun bs!605719 () Bool)

(assert (= bs!605719 d!1269111))

(assert (=> bs!605719 m!4908755))

(assert (=> bs!605719 m!4908747))

(declare-fun m!4908875 () Bool)

(assert (=> bs!605719 m!4908875))

(declare-fun m!4908877 () Bool)

(assert (=> bs!605719 m!4908877))

(assert (=> b!4315085 d!1269111))

(declare-fun d!1269113 () Bool)

(assert (=> d!1269113 true))

(assert (=> d!1269113 true))

(declare-fun lambda!133410 () Int)

(declare-fun forall!8776 (List!48412 Int) Bool)

(assert (=> d!1269113 (= (allKeysSameHash!219 lt!1534700 lt!1534699 (hashF!6818 thiss!42308)) (forall!8776 lt!1534700 lambda!133410))))

(declare-fun bs!605720 () Bool)

(assert (= bs!605720 d!1269113))

(declare-fun m!4908879 () Bool)

(assert (=> bs!605720 m!4908879))

(assert (=> b!4315085 d!1269113))

(declare-fun d!1269115 () Bool)

(declare-fun res!1768719 () Bool)

(declare-fun e!2684233 () Bool)

(assert (=> d!1269115 (=> res!1768719 e!2684233)))

(assert (=> d!1269115 (= res!1768719 ((_ is Nil!48289) (toList!2479 lt!1534710)))))

(assert (=> d!1269115 (= (forall!8775 (toList!2479 lt!1534710) lambda!133395) e!2684233)))

(declare-fun b!4315186 () Bool)

(declare-fun e!2684234 () Bool)

(assert (=> b!4315186 (= e!2684233 e!2684234)))

(declare-fun res!1768720 () Bool)

(assert (=> b!4315186 (=> (not res!1768720) (not e!2684234))))

(declare-fun dynLambda!20466 (Int tuple2!46916) Bool)

(assert (=> b!4315186 (= res!1768720 (dynLambda!20466 lambda!133395 (h!53739 (toList!2479 lt!1534710))))))

(declare-fun b!4315187 () Bool)

(assert (=> b!4315187 (= e!2684234 (forall!8775 (t!355254 (toList!2479 lt!1534710)) lambda!133395))))

(assert (= (and d!1269115 (not res!1768719)) b!4315186))

(assert (= (and b!4315186 res!1768720) b!4315187))

(declare-fun b_lambda!126879 () Bool)

(assert (=> (not b_lambda!126879) (not b!4315186)))

(declare-fun m!4908881 () Bool)

(assert (=> b!4315186 m!4908881))

(declare-fun m!4908883 () Bool)

(assert (=> b!4315187 m!4908883))

(assert (=> b!4315085 d!1269115))

(declare-fun d!1269117 () Bool)

(declare-fun e!2684237 () Bool)

(assert (=> d!1269117 e!2684237))

(declare-fun res!1768725 () Bool)

(assert (=> d!1269117 (=> (not res!1768725) (not e!2684237))))

(declare-fun lt!1534832 () ListLongMap!1093)

(assert (=> d!1269117 (= res!1768725 (contains!10292 lt!1534832 (_1!26740 (tuple2!46917 lt!1534699 lt!1534705))))))

(declare-fun lt!1534830 () List!48413)

(assert (=> d!1269117 (= lt!1534832 (ListLongMap!1094 lt!1534830))))

(declare-fun lt!1534831 () Unit!67490)

(declare-fun lt!1534833 () Unit!67490)

(assert (=> d!1269117 (= lt!1534831 lt!1534833)))

(assert (=> d!1269117 (= (getValueByKey!277 lt!1534830 (_1!26740 (tuple2!46917 lt!1534699 lt!1534705))) (Some!10266 (_2!26740 (tuple2!46917 lt!1534699 lt!1534705))))))

(declare-fun lemmaContainsTupThenGetReturnValue!87 (List!48413 (_ BitVec 64) List!48412) Unit!67490)

(assert (=> d!1269117 (= lt!1534833 (lemmaContainsTupThenGetReturnValue!87 lt!1534830 (_1!26740 (tuple2!46917 lt!1534699 lt!1534705)) (_2!26740 (tuple2!46917 lt!1534699 lt!1534705))))))

(declare-fun insertStrictlySorted!48 (List!48413 (_ BitVec 64) List!48412) List!48413)

(assert (=> d!1269117 (= lt!1534830 (insertStrictlySorted!48 (toList!2479 lt!1534702) (_1!26740 (tuple2!46917 lt!1534699 lt!1534705)) (_2!26740 (tuple2!46917 lt!1534699 lt!1534705))))))

(assert (=> d!1269117 (= (+!302 lt!1534702 (tuple2!46917 lt!1534699 lt!1534705)) lt!1534832)))

(declare-fun b!4315192 () Bool)

(declare-fun res!1768726 () Bool)

(assert (=> b!4315192 (=> (not res!1768726) (not e!2684237))))

(assert (=> b!4315192 (= res!1768726 (= (getValueByKey!277 (toList!2479 lt!1534832) (_1!26740 (tuple2!46917 lt!1534699 lt!1534705))) (Some!10266 (_2!26740 (tuple2!46917 lt!1534699 lt!1534705)))))))

(declare-fun b!4315193 () Bool)

(assert (=> b!4315193 (= e!2684237 (contains!10293 (toList!2479 lt!1534832) (tuple2!46917 lt!1534699 lt!1534705)))))

(assert (= (and d!1269117 res!1768725) b!4315192))

(assert (= (and b!4315192 res!1768726) b!4315193))

(declare-fun m!4908885 () Bool)

(assert (=> d!1269117 m!4908885))

(declare-fun m!4908887 () Bool)

(assert (=> d!1269117 m!4908887))

(declare-fun m!4908889 () Bool)

(assert (=> d!1269117 m!4908889))

(declare-fun m!4908891 () Bool)

(assert (=> d!1269117 m!4908891))

(declare-fun m!4908893 () Bool)

(assert (=> b!4315192 m!4908893))

(declare-fun m!4908895 () Bool)

(assert (=> b!4315193 m!4908895))

(assert (=> b!4315085 d!1269117))

(declare-fun b!4315194 () Bool)

(declare-fun e!2684241 () Unit!67490)

(declare-fun lt!1534834 () Unit!67490)

(assert (=> b!4315194 (= e!2684241 lt!1534834)))

(declare-fun lt!1534838 () Unit!67490)

(assert (=> b!4315194 (= lt!1534838 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!2480 lt!1534714) key!2048))))

(assert (=> b!4315194 (isDefined!7569 (getValueByKey!278 (toList!2480 lt!1534714) key!2048))))

(declare-fun lt!1534840 () Unit!67490)

(assert (=> b!4315194 (= lt!1534840 lt!1534838)))

(assert (=> b!4315194 (= lt!1534834 (lemmaInListThenGetKeysListContains!47 (toList!2480 lt!1534714) key!2048))))

(declare-fun call!298528 () Bool)

(assert (=> b!4315194 call!298528))

(declare-fun b!4315195 () Bool)

(declare-fun e!2684242 () Unit!67490)

(assert (=> b!4315195 (= e!2684241 e!2684242)))

(declare-fun c!733601 () Bool)

(assert (=> b!4315195 (= c!733601 call!298528)))

(declare-fun b!4315196 () Bool)

(declare-fun e!2684239 () List!48414)

(assert (=> b!4315196 (= e!2684239 (keys!16123 lt!1534714))))

(declare-fun b!4315197 () Bool)

(assert (=> b!4315197 false))

(declare-fun lt!1534836 () Unit!67490)

(declare-fun lt!1534839 () Unit!67490)

(assert (=> b!4315197 (= lt!1534836 lt!1534839)))

(assert (=> b!4315197 (containsKey!367 (toList!2480 lt!1534714) key!2048)))

(assert (=> b!4315197 (= lt!1534839 (lemmaInGetKeysListThenContainsKey!47 (toList!2480 lt!1534714) key!2048))))

(declare-fun Unit!67499 () Unit!67490)

(assert (=> b!4315197 (= e!2684242 Unit!67499)))

(declare-fun b!4315198 () Bool)

(declare-fun e!2684238 () Bool)

(declare-fun e!2684240 () Bool)

(assert (=> b!4315198 (= e!2684238 e!2684240)))

(declare-fun res!1768728 () Bool)

(assert (=> b!4315198 (=> (not res!1768728) (not e!2684240))))

(assert (=> b!4315198 (= res!1768728 (isDefined!7569 (getValueByKey!278 (toList!2480 lt!1534714) key!2048)))))

(declare-fun d!1269119 () Bool)

(assert (=> d!1269119 e!2684238))

(declare-fun res!1768727 () Bool)

(assert (=> d!1269119 (=> res!1768727 e!2684238)))

(declare-fun e!2684243 () Bool)

(assert (=> d!1269119 (= res!1768727 e!2684243)))

(declare-fun res!1768729 () Bool)

(assert (=> d!1269119 (=> (not res!1768729) (not e!2684243))))

(declare-fun lt!1534835 () Bool)

(assert (=> d!1269119 (= res!1768729 (not lt!1534835))))

(declare-fun lt!1534837 () Bool)

(assert (=> d!1269119 (= lt!1534835 lt!1534837)))

(declare-fun lt!1534841 () Unit!67490)

(assert (=> d!1269119 (= lt!1534841 e!2684241)))

(declare-fun c!733600 () Bool)

(assert (=> d!1269119 (= c!733600 lt!1534837)))

(assert (=> d!1269119 (= lt!1534837 (containsKey!367 (toList!2480 lt!1534714) key!2048))))

(assert (=> d!1269119 (= (contains!10289 lt!1534714 key!2048) lt!1534835)))

(declare-fun b!4315199 () Bool)

(assert (=> b!4315199 (= e!2684239 (getKeysList!50 (toList!2480 lt!1534714)))))

(declare-fun b!4315200 () Bool)

(assert (=> b!4315200 (= e!2684243 (not (contains!10294 (keys!16123 lt!1534714) key!2048)))))

(declare-fun b!4315201 () Bool)

(declare-fun Unit!67500 () Unit!67490)

(assert (=> b!4315201 (= e!2684242 Unit!67500)))

(declare-fun b!4315202 () Bool)

(assert (=> b!4315202 (= e!2684240 (contains!10294 (keys!16123 lt!1534714) key!2048))))

(declare-fun bm!298523 () Bool)

(assert (=> bm!298523 (= call!298528 (contains!10294 e!2684239 key!2048))))

(declare-fun c!733602 () Bool)

(assert (=> bm!298523 (= c!733602 c!733600)))

(assert (= (and d!1269119 c!733600) b!4315194))

(assert (= (and d!1269119 (not c!733600)) b!4315195))

(assert (= (and b!4315195 c!733601) b!4315197))

(assert (= (and b!4315195 (not c!733601)) b!4315201))

(assert (= (or b!4315194 b!4315195) bm!298523))

(assert (= (and bm!298523 c!733602) b!4315199))

(assert (= (and bm!298523 (not c!733602)) b!4315196))

(assert (= (and d!1269119 res!1768729) b!4315200))

(assert (= (and d!1269119 (not res!1768727)) b!4315198))

(assert (= (and b!4315198 res!1768728) b!4315202))

(declare-fun m!4908897 () Bool)

(assert (=> b!4315196 m!4908897))

(declare-fun m!4908899 () Bool)

(assert (=> b!4315197 m!4908899))

(declare-fun m!4908901 () Bool)

(assert (=> b!4315197 m!4908901))

(declare-fun m!4908903 () Bool)

(assert (=> b!4315199 m!4908903))

(assert (=> b!4315202 m!4908897))

(assert (=> b!4315202 m!4908897))

(declare-fun m!4908905 () Bool)

(assert (=> b!4315202 m!4908905))

(assert (=> d!1269119 m!4908899))

(declare-fun m!4908907 () Bool)

(assert (=> b!4315198 m!4908907))

(assert (=> b!4315198 m!4908907))

(declare-fun m!4908909 () Bool)

(assert (=> b!4315198 m!4908909))

(declare-fun m!4908911 () Bool)

(assert (=> bm!298523 m!4908911))

(assert (=> b!4315200 m!4908897))

(assert (=> b!4315200 m!4908897))

(assert (=> b!4315200 m!4908905))

(declare-fun m!4908913 () Bool)

(assert (=> b!4315194 m!4908913))

(assert (=> b!4315194 m!4908907))

(assert (=> b!4315194 m!4908907))

(assert (=> b!4315194 m!4908909))

(declare-fun m!4908915 () Bool)

(assert (=> b!4315194 m!4908915))

(assert (=> b!4315085 d!1269119))

(declare-fun d!1269121 () Bool)

(assert (=> d!1269121 (= (map!10297 (_2!26739 lt!1534706)) (map!10299 (v!42544 (underlying!9647 (_2!26739 lt!1534706)))))))

(declare-fun bs!605721 () Bool)

(assert (= bs!605721 d!1269121))

(declare-fun m!4908917 () Bool)

(assert (=> bs!605721 m!4908917))

(assert (=> b!4315085 d!1269121))

(declare-fun d!1269123 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7561 (List!48412) (InoxSet tuple2!46912))

(assert (=> d!1269123 (= (eq!147 (extractMap!350 (toList!2479 lt!1534712)) (+!301 (extractMap!350 (toList!2479 lt!1534702)) lt!1534704)) (= (content!7561 (toList!2480 (extractMap!350 (toList!2479 lt!1534712)))) (content!7561 (toList!2480 (+!301 (extractMap!350 (toList!2479 lt!1534702)) lt!1534704)))))))

(declare-fun bs!605722 () Bool)

(assert (= bs!605722 d!1269123))

(declare-fun m!4908919 () Bool)

(assert (=> bs!605722 m!4908919))

(declare-fun m!4908921 () Bool)

(assert (=> bs!605722 m!4908921))

(assert (=> b!4315085 d!1269123))

(declare-fun d!1269125 () Bool)

(declare-fun res!1768730 () Bool)

(declare-fun e!2684244 () Bool)

(assert (=> d!1269125 (=> res!1768730 e!2684244)))

(assert (=> d!1269125 (= res!1768730 (not ((_ is Cons!48288) lt!1534700)))))

(assert (=> d!1269125 (= (noDuplicateKeys!246 lt!1534700) e!2684244)))

(declare-fun b!4315203 () Bool)

(declare-fun e!2684245 () Bool)

(assert (=> b!4315203 (= e!2684244 e!2684245)))

(declare-fun res!1768731 () Bool)

(assert (=> b!4315203 (=> (not res!1768731) (not e!2684245))))

(assert (=> b!4315203 (= res!1768731 (not (containsKey!365 (t!355253 lt!1534700) (_1!26738 (h!53738 lt!1534700)))))))

(declare-fun b!4315204 () Bool)

(assert (=> b!4315204 (= e!2684245 (noDuplicateKeys!246 (t!355253 lt!1534700)))))

(assert (= (and d!1269125 (not res!1768730)) b!4315203))

(assert (= (and b!4315203 res!1768731) b!4315204))

(declare-fun m!4908923 () Bool)

(assert (=> b!4315203 m!4908923))

(declare-fun m!4908925 () Bool)

(assert (=> b!4315204 m!4908925))

(assert (=> b!4315085 d!1269125))

(declare-fun bs!605723 () Bool)

(declare-fun d!1269127 () Bool)

(assert (= bs!605723 (and d!1269127 d!1269105)))

(declare-fun lambda!133415 () Int)

(assert (=> bs!605723 (not (= lambda!133415 lambda!133407))))

(declare-fun bs!605724 () Bool)

(assert (= bs!605724 (and d!1269127 d!1269103)))

(assert (=> bs!605724 (not (= lambda!133415 lambda!133404))))

(declare-fun bs!605725 () Bool)

(assert (= bs!605725 (and d!1269127 b!4315085)))

(assert (=> bs!605725 (= lambda!133415 lambda!133395)))

(declare-fun bs!605726 () Bool)

(assert (= bs!605726 (and d!1269127 b!4315135)))

(assert (=> bs!605726 (= lambda!133415 lambda!133401)))

(declare-fun bs!605727 () Bool)

(assert (= bs!605727 (and d!1269127 b!4315129)))

(assert (=> bs!605727 (= lambda!133415 lambda!133398)))

(declare-fun e!2684248 () Bool)

(assert (=> d!1269127 e!2684248))

(declare-fun res!1768734 () Bool)

(assert (=> d!1269127 (=> (not res!1768734) (not e!2684248))))

(declare-fun lt!1534847 () ListLongMap!1093)

(assert (=> d!1269127 (= res!1768734 (forall!8775 (toList!2479 lt!1534847) lambda!133415))))

(assert (=> d!1269127 (= lt!1534847 (+!302 lt!1534702 (tuple2!46917 lt!1534699 lt!1534705)))))

(declare-fun lt!1534846 () Unit!67490)

(declare-fun choose!26327 (ListLongMap!1093 (_ BitVec 64) List!48412 Hashable!4625) Unit!67490)

(assert (=> d!1269127 (= lt!1534846 (choose!26327 lt!1534702 lt!1534699 lt!1534705 (hashF!6818 thiss!42308)))))

(assert (=> d!1269127 (forall!8775 (toList!2479 lt!1534702) lambda!133415)))

(assert (=> d!1269127 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!168 lt!1534702 lt!1534699 lt!1534705 (hashF!6818 thiss!42308)) lt!1534846)))

(declare-fun b!4315207 () Bool)

(assert (=> b!4315207 (= e!2684248 (allKeysSameHashInMap!366 lt!1534847 (hashF!6818 thiss!42308)))))

(assert (= (and d!1269127 res!1768734) b!4315207))

(declare-fun m!4908927 () Bool)

(assert (=> d!1269127 m!4908927))

(assert (=> d!1269127 m!4908757))

(declare-fun m!4908929 () Bool)

(assert (=> d!1269127 m!4908929))

(declare-fun m!4908931 () Bool)

(assert (=> d!1269127 m!4908931))

(declare-fun m!4908933 () Bool)

(assert (=> b!4315207 m!4908933))

(assert (=> b!4315085 d!1269127))

(declare-fun d!1269129 () Bool)

(declare-fun lt!1534848 () ListMap!1759)

(assert (=> d!1269129 (invariantList!587 (toList!2480 lt!1534848))))

(assert (=> d!1269129 (= lt!1534848 (extractMap!350 (toList!2479 (map!10297 (v!42545 (underlying!9648 (HashMap!4615 (Cell!18648 (_2!26739 lt!1534706)) (hashF!6818 thiss!42308) (_size!9462 thiss!42308) (defaultValue!4786 thiss!42308))))))))))

(assert (=> d!1269129 (valid!3706 (HashMap!4615 (Cell!18648 (_2!26739 lt!1534706)) (hashF!6818 thiss!42308) (_size!9462 thiss!42308) (defaultValue!4786 thiss!42308)))))

(assert (=> d!1269129 (= (map!10298 (HashMap!4615 (Cell!18648 (_2!26739 lt!1534706)) (hashF!6818 thiss!42308) (_size!9462 thiss!42308) (defaultValue!4786 thiss!42308))) lt!1534848)))

(declare-fun bs!605728 () Bool)

(assert (= bs!605728 d!1269129))

(declare-fun m!4908935 () Bool)

(assert (=> bs!605728 m!4908935))

(declare-fun m!4908937 () Bool)

(assert (=> bs!605728 m!4908937))

(declare-fun m!4908939 () Bool)

(assert (=> bs!605728 m!4908939))

(declare-fun m!4908941 () Bool)

(assert (=> bs!605728 m!4908941))

(assert (=> b!4315085 d!1269129))

(declare-fun bs!605729 () Bool)

(declare-fun d!1269131 () Bool)

(assert (= bs!605729 (and d!1269131 d!1269105)))

(declare-fun lambda!133418 () Int)

(assert (=> bs!605729 (not (= lambda!133418 lambda!133407))))

(declare-fun bs!605730 () Bool)

(assert (= bs!605730 (and d!1269131 d!1269127)))

(assert (=> bs!605730 (= lambda!133418 lambda!133415)))

(declare-fun bs!605731 () Bool)

(assert (= bs!605731 (and d!1269131 d!1269103)))

(assert (=> bs!605731 (not (= lambda!133418 lambda!133404))))

(declare-fun bs!605732 () Bool)

(assert (= bs!605732 (and d!1269131 b!4315085)))

(assert (=> bs!605732 (= lambda!133418 lambda!133395)))

(declare-fun bs!605733 () Bool)

(assert (= bs!605733 (and d!1269131 b!4315135)))

(assert (=> bs!605733 (= lambda!133418 lambda!133401)))

(declare-fun bs!605734 () Bool)

(assert (= bs!605734 (and d!1269131 b!4315129)))

(assert (=> bs!605734 (= lambda!133418 lambda!133398)))

(declare-fun lt!1534851 () ListMap!1759)

(assert (=> d!1269131 (invariantList!587 (toList!2480 lt!1534851))))

(declare-fun e!2684251 () ListMap!1759)

(assert (=> d!1269131 (= lt!1534851 e!2684251)))

(declare-fun c!733605 () Bool)

(assert (=> d!1269131 (= c!733605 ((_ is Cons!48289) (toList!2479 lt!1534702)))))

(assert (=> d!1269131 (forall!8775 (toList!2479 lt!1534702) lambda!133418)))

(assert (=> d!1269131 (= (extractMap!350 (toList!2479 lt!1534702)) lt!1534851)))

(declare-fun b!4315212 () Bool)

(declare-fun addToMapMapFromBucket!45 (List!48412 ListMap!1759) ListMap!1759)

(assert (=> b!4315212 (= e!2684251 (addToMapMapFromBucket!45 (_2!26740 (h!53739 (toList!2479 lt!1534702))) (extractMap!350 (t!355254 (toList!2479 lt!1534702)))))))

(declare-fun b!4315213 () Bool)

(assert (=> b!4315213 (= e!2684251 (ListMap!1760 Nil!48288))))

(assert (= (and d!1269131 c!733605) b!4315212))

(assert (= (and d!1269131 (not c!733605)) b!4315213))

(declare-fun m!4908943 () Bool)

(assert (=> d!1269131 m!4908943))

(declare-fun m!4908945 () Bool)

(assert (=> d!1269131 m!4908945))

(declare-fun m!4908947 () Bool)

(assert (=> b!4315212 m!4908947))

(assert (=> b!4315212 m!4908947))

(declare-fun m!4908949 () Bool)

(assert (=> b!4315212 m!4908949))

(assert (=> b!4315085 d!1269131))

(declare-fun bs!605735 () Bool)

(declare-fun d!1269133 () Bool)

(assert (= bs!605735 (and d!1269133 d!1269105)))

(declare-fun lambda!133421 () Int)

(assert (=> bs!605735 (not (= lambda!133421 lambda!133407))))

(declare-fun bs!605736 () Bool)

(assert (= bs!605736 (and d!1269133 d!1269127)))

(assert (=> bs!605736 (= lambda!133421 lambda!133415)))

(declare-fun bs!605737 () Bool)

(assert (= bs!605737 (and d!1269133 d!1269103)))

(assert (=> bs!605737 (not (= lambda!133421 lambda!133404))))

(declare-fun bs!605738 () Bool)

(assert (= bs!605738 (and d!1269133 b!4315085)))

(assert (=> bs!605738 (= lambda!133421 lambda!133395)))

(declare-fun bs!605739 () Bool)

(assert (= bs!605739 (and d!1269133 b!4315135)))

(assert (=> bs!605739 (= lambda!133421 lambda!133401)))

(declare-fun bs!605740 () Bool)

(assert (= bs!605740 (and d!1269133 b!4315129)))

(assert (=> bs!605740 (= lambda!133421 lambda!133398)))

(declare-fun bs!605741 () Bool)

(assert (= bs!605741 (and d!1269133 d!1269131)))

(assert (=> bs!605741 (= lambda!133421 lambda!133418)))

(assert (=> d!1269133 (eq!147 (extractMap!350 (toList!2479 (+!302 lt!1534702 (tuple2!46917 lt!1534699 lt!1534705)))) (+!301 (extractMap!350 (toList!2479 lt!1534702)) (tuple2!46913 key!2048 v!9179)))))

(declare-fun lt!1534854 () Unit!67490)

(declare-fun choose!26328 (ListLongMap!1093 (_ BitVec 64) List!48412 K!9519 V!9721 Hashable!4625) Unit!67490)

(assert (=> d!1269133 (= lt!1534854 (choose!26328 lt!1534702 lt!1534699 lt!1534705 key!2048 v!9179 (hashF!6818 thiss!42308)))))

(assert (=> d!1269133 (forall!8775 (toList!2479 lt!1534702) lambda!133421)))

(assert (=> d!1269133 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!66 lt!1534702 lt!1534699 lt!1534705 key!2048 v!9179 (hashF!6818 thiss!42308)) lt!1534854)))

(declare-fun bs!605742 () Bool)

(assert (= bs!605742 d!1269133))

(declare-fun m!4908951 () Bool)

(assert (=> bs!605742 m!4908951))

(assert (=> bs!605742 m!4908757))

(assert (=> bs!605742 m!4908727))

(declare-fun m!4908953 () Bool)

(assert (=> bs!605742 m!4908953))

(declare-fun m!4908955 () Bool)

(assert (=> bs!605742 m!4908955))

(assert (=> bs!605742 m!4908953))

(declare-fun m!4908957 () Bool)

(assert (=> bs!605742 m!4908957))

(assert (=> bs!605742 m!4908727))

(assert (=> bs!605742 m!4908955))

(declare-fun m!4908959 () Bool)

(assert (=> bs!605742 m!4908959))

(assert (=> b!4315085 d!1269133))

(declare-fun d!1269135 () Bool)

(declare-fun res!1768735 () Bool)

(declare-fun e!2684252 () Bool)

(assert (=> d!1269135 (=> res!1768735 e!2684252)))

(assert (=> d!1269135 (= res!1768735 ((_ is Nil!48289) (toList!2479 lt!1534712)))))

(assert (=> d!1269135 (= (forall!8775 (toList!2479 lt!1534712) lambda!133395) e!2684252)))

(declare-fun b!4315214 () Bool)

(declare-fun e!2684253 () Bool)

(assert (=> b!4315214 (= e!2684252 e!2684253)))

(declare-fun res!1768736 () Bool)

(assert (=> b!4315214 (=> (not res!1768736) (not e!2684253))))

(assert (=> b!4315214 (= res!1768736 (dynLambda!20466 lambda!133395 (h!53739 (toList!2479 lt!1534712))))))

(declare-fun b!4315215 () Bool)

(assert (=> b!4315215 (= e!2684253 (forall!8775 (t!355254 (toList!2479 lt!1534712)) lambda!133395))))

(assert (= (and d!1269135 (not res!1768735)) b!4315214))

(assert (= (and b!4315214 res!1768736) b!4315215))

(declare-fun b_lambda!126881 () Bool)

(assert (=> (not b_lambda!126881) (not b!4315214)))

(declare-fun m!4908961 () Bool)

(assert (=> b!4315214 m!4908961))

(declare-fun m!4908963 () Bool)

(assert (=> b!4315215 m!4908963))

(assert (=> b!4315085 d!1269135))

(declare-fun d!1269137 () Bool)

(assert (=> d!1269137 (noDuplicateKeys!246 (removePairForKey!244 lt!1534709 key!2048))))

(declare-fun lt!1534857 () Unit!67490)

(declare-fun choose!26329 (List!48412 K!9519) Unit!67490)

(assert (=> d!1269137 (= lt!1534857 (choose!26329 lt!1534709 key!2048))))

(assert (=> d!1269137 (noDuplicateKeys!246 lt!1534709)))

(assert (=> d!1269137 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!194 lt!1534709 key!2048) lt!1534857)))

(declare-fun bs!605743 () Bool)

(assert (= bs!605743 d!1269137))

(assert (=> bs!605743 m!4908703))

(assert (=> bs!605743 m!4908703))

(declare-fun m!4908965 () Bool)

(assert (=> bs!605743 m!4908965))

(declare-fun m!4908967 () Bool)

(assert (=> bs!605743 m!4908967))

(declare-fun m!4908969 () Bool)

(assert (=> bs!605743 m!4908969))

(assert (=> b!4315085 d!1269137))

(declare-fun d!1269139 () Bool)

(declare-fun e!2684254 () Bool)

(assert (=> d!1269139 e!2684254))

(declare-fun res!1768737 () Bool)

(assert (=> d!1269139 (=> (not res!1768737) (not e!2684254))))

(declare-fun lt!1534858 () ListMap!1759)

(assert (=> d!1269139 (= res!1768737 (contains!10289 lt!1534858 (_1!26738 lt!1534704)))))

(declare-fun lt!1534859 () List!48412)

(assert (=> d!1269139 (= lt!1534858 (ListMap!1760 lt!1534859))))

(declare-fun lt!1534861 () Unit!67490)

(declare-fun lt!1534860 () Unit!67490)

(assert (=> d!1269139 (= lt!1534861 lt!1534860)))

(assert (=> d!1269139 (= (getValueByKey!278 lt!1534859 (_1!26738 lt!1534704)) (Some!10267 (_2!26738 lt!1534704)))))

(assert (=> d!1269139 (= lt!1534860 (lemmaContainsTupThenGetReturnValue!86 lt!1534859 (_1!26738 lt!1534704) (_2!26738 lt!1534704)))))

(assert (=> d!1269139 (= lt!1534859 (insertNoDuplicatedKeys!47 (toList!2480 (extractMap!350 (toList!2479 lt!1534702))) (_1!26738 lt!1534704) (_2!26738 lt!1534704)))))

(assert (=> d!1269139 (= (+!301 (extractMap!350 (toList!2479 lt!1534702)) lt!1534704) lt!1534858)))

(declare-fun b!4315216 () Bool)

(declare-fun res!1768738 () Bool)

(assert (=> b!4315216 (=> (not res!1768738) (not e!2684254))))

(assert (=> b!4315216 (= res!1768738 (= (getValueByKey!278 (toList!2480 lt!1534858) (_1!26738 lt!1534704)) (Some!10267 (_2!26738 lt!1534704))))))

(declare-fun b!4315217 () Bool)

(assert (=> b!4315217 (= e!2684254 (contains!10295 (toList!2480 lt!1534858) lt!1534704))))

(assert (= (and d!1269139 res!1768737) b!4315216))

(assert (= (and b!4315216 res!1768738) b!4315217))

(declare-fun m!4908971 () Bool)

(assert (=> d!1269139 m!4908971))

(declare-fun m!4908973 () Bool)

(assert (=> d!1269139 m!4908973))

(declare-fun m!4908975 () Bool)

(assert (=> d!1269139 m!4908975))

(declare-fun m!4908977 () Bool)

(assert (=> d!1269139 m!4908977))

(declare-fun m!4908979 () Bool)

(assert (=> b!4315216 m!4908979))

(declare-fun m!4908981 () Bool)

(assert (=> b!4315217 m!4908981))

(assert (=> b!4315085 d!1269139))

(declare-fun bs!605744 () Bool)

(declare-fun d!1269141 () Bool)

(assert (= bs!605744 (and d!1269141 d!1269113)))

(declare-fun lambda!133422 () Int)

(assert (=> bs!605744 (= lambda!133422 lambda!133410)))

(assert (=> d!1269141 true))

(assert (=> d!1269141 true))

(assert (=> d!1269141 (= (allKeysSameHash!219 lt!1534709 lt!1534699 (hashF!6818 thiss!42308)) (forall!8776 lt!1534709 lambda!133422))))

(declare-fun bs!605745 () Bool)

(assert (= bs!605745 d!1269141))

(declare-fun m!4908983 () Bool)

(assert (=> bs!605745 m!4908983))

(assert (=> b!4315085 d!1269141))

(declare-fun d!1269143 () Bool)

(assert (=> d!1269143 (allKeysSameHash!219 (removePairForKey!244 lt!1534709 key!2048) lt!1534699 (hashF!6818 thiss!42308))))

(declare-fun lt!1534864 () Unit!67490)

(declare-fun choose!26330 (List!48412 K!9519 (_ BitVec 64) Hashable!4625) Unit!67490)

(assert (=> d!1269143 (= lt!1534864 (choose!26330 lt!1534709 key!2048 lt!1534699 (hashF!6818 thiss!42308)))))

(assert (=> d!1269143 (noDuplicateKeys!246 lt!1534709)))

(assert (=> d!1269143 (= (lemmaRemovePairForKeyPreservesHash!199 lt!1534709 key!2048 lt!1534699 (hashF!6818 thiss!42308)) lt!1534864)))

(declare-fun bs!605746 () Bool)

(assert (= bs!605746 d!1269143))

(assert (=> bs!605746 m!4908703))

(assert (=> bs!605746 m!4908703))

(declare-fun m!4908985 () Bool)

(assert (=> bs!605746 m!4908985))

(declare-fun m!4908987 () Bool)

(assert (=> bs!605746 m!4908987))

(assert (=> bs!605746 m!4908969))

(assert (=> b!4315085 d!1269143))

(declare-fun bs!605747 () Bool)

(declare-fun d!1269145 () Bool)

(assert (= bs!605747 (and d!1269145 d!1269105)))

(declare-fun lambda!133423 () Int)

(assert (=> bs!605747 (not (= lambda!133423 lambda!133407))))

(declare-fun bs!605748 () Bool)

(assert (= bs!605748 (and d!1269145 d!1269127)))

(assert (=> bs!605748 (= lambda!133423 lambda!133415)))

(declare-fun bs!605749 () Bool)

(assert (= bs!605749 (and d!1269145 d!1269103)))

(assert (=> bs!605749 (not (= lambda!133423 lambda!133404))))

(declare-fun bs!605750 () Bool)

(assert (= bs!605750 (and d!1269145 b!4315085)))

(assert (=> bs!605750 (= lambda!133423 lambda!133395)))

(declare-fun bs!605751 () Bool)

(assert (= bs!605751 (and d!1269145 b!4315135)))

(assert (=> bs!605751 (= lambda!133423 lambda!133401)))

(declare-fun bs!605752 () Bool)

(assert (= bs!605752 (and d!1269145 d!1269133)))

(assert (=> bs!605752 (= lambda!133423 lambda!133421)))

(declare-fun bs!605753 () Bool)

(assert (= bs!605753 (and d!1269145 b!4315129)))

(assert (=> bs!605753 (= lambda!133423 lambda!133398)))

(declare-fun bs!605754 () Bool)

(assert (= bs!605754 (and d!1269145 d!1269131)))

(assert (=> bs!605754 (= lambda!133423 lambda!133418)))

(declare-fun lt!1534865 () ListMap!1759)

(assert (=> d!1269145 (invariantList!587 (toList!2480 lt!1534865))))

(declare-fun e!2684255 () ListMap!1759)

(assert (=> d!1269145 (= lt!1534865 e!2684255)))

(declare-fun c!733606 () Bool)

(assert (=> d!1269145 (= c!733606 ((_ is Cons!48289) (toList!2479 lt!1534712)))))

(assert (=> d!1269145 (forall!8775 (toList!2479 lt!1534712) lambda!133423)))

(assert (=> d!1269145 (= (extractMap!350 (toList!2479 lt!1534712)) lt!1534865)))

(declare-fun b!4315218 () Bool)

(assert (=> b!4315218 (= e!2684255 (addToMapMapFromBucket!45 (_2!26740 (h!53739 (toList!2479 lt!1534712))) (extractMap!350 (t!355254 (toList!2479 lt!1534712)))))))

(declare-fun b!4315219 () Bool)

(assert (=> b!4315219 (= e!2684255 (ListMap!1760 Nil!48288))))

(assert (= (and d!1269145 c!733606) b!4315218))

(assert (= (and d!1269145 (not c!733606)) b!4315219))

(declare-fun m!4908989 () Bool)

(assert (=> d!1269145 m!4908989))

(declare-fun m!4908991 () Bool)

(assert (=> d!1269145 m!4908991))

(declare-fun m!4908993 () Bool)

(assert (=> b!4315218 m!4908993))

(assert (=> b!4315218 m!4908993))

(declare-fun m!4908995 () Bool)

(assert (=> b!4315218 m!4908995))

(assert (=> b!4315085 d!1269145))

(declare-fun d!1269147 () Bool)

(assert (=> d!1269147 (= (array_inv!5465 (_keys!5009 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308)))))) (bvsge (size!35642 (_keys!5009 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4315084 d!1269147))

(declare-fun d!1269149 () Bool)

(assert (=> d!1269149 (= (array_inv!5466 (_values!4990 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308)))))) (bvsge (size!35643 (_values!4990 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4315084 d!1269149))

(declare-fun bs!605755 () Bool)

(declare-fun d!1269151 () Bool)

(assert (= bs!605755 (and d!1269151 d!1269145)))

(declare-fun lambda!133424 () Int)

(assert (=> bs!605755 (not (= lambda!133424 lambda!133423))))

(declare-fun bs!605756 () Bool)

(assert (= bs!605756 (and d!1269151 d!1269105)))

(assert (=> bs!605756 (= lambda!133424 lambda!133407)))

(declare-fun bs!605757 () Bool)

(assert (= bs!605757 (and d!1269151 d!1269127)))

(assert (=> bs!605757 (not (= lambda!133424 lambda!133415))))

(declare-fun bs!605758 () Bool)

(assert (= bs!605758 (and d!1269151 d!1269103)))

(assert (=> bs!605758 (= lambda!133424 lambda!133404)))

(declare-fun bs!605759 () Bool)

(assert (= bs!605759 (and d!1269151 b!4315085)))

(assert (=> bs!605759 (not (= lambda!133424 lambda!133395))))

(declare-fun bs!605760 () Bool)

(assert (= bs!605760 (and d!1269151 b!4315135)))

(assert (=> bs!605760 (not (= lambda!133424 lambda!133401))))

(declare-fun bs!605761 () Bool)

(assert (= bs!605761 (and d!1269151 d!1269133)))

(assert (=> bs!605761 (not (= lambda!133424 lambda!133421))))

(declare-fun bs!605762 () Bool)

(assert (= bs!605762 (and d!1269151 b!4315129)))

(assert (=> bs!605762 (not (= lambda!133424 lambda!133398))))

(declare-fun bs!605763 () Bool)

(assert (= bs!605763 (and d!1269151 d!1269131)))

(assert (=> bs!605763 (not (= lambda!133424 lambda!133418))))

(assert (=> d!1269151 true))

(assert (=> d!1269151 (= (allKeysSameHashInMap!366 lt!1534712 (hashF!6818 thiss!42308)) (forall!8775 (toList!2479 lt!1534712) lambda!133424))))

(declare-fun bs!605764 () Bool)

(assert (= bs!605764 d!1269151))

(declare-fun m!4908997 () Bool)

(assert (=> bs!605764 m!4908997))

(assert (=> b!4315088 d!1269151))

(declare-fun b!4315238 () Bool)

(declare-fun res!1768745 () Bool)

(declare-fun e!2684269 () Bool)

(assert (=> b!4315238 (=> (not res!1768745) (not e!2684269))))

(declare-fun lt!1534876 () tuple2!46914)

(assert (=> b!4315238 (= res!1768745 (valid!3707 (_2!26739 lt!1534876)))))

(declare-fun b!4315239 () Bool)

(declare-fun e!2684270 () tuple2!46914)

(declare-fun lt!1534874 () tuple2!46914)

(assert (=> b!4315239 (= e!2684270 (tuple2!46915 false (_2!26739 lt!1534874)))))

(declare-fun b!4315240 () Bool)

(declare-datatypes ((tuple2!46918 0))(
  ( (tuple2!46919 (_1!26741 Bool) (_2!26741 LongMapFixedSize!9418)) )
))
(declare-fun lt!1534877 () tuple2!46918)

(assert (=> b!4315240 (= e!2684270 (tuple2!46915 (_1!26741 lt!1534877) (LongMap!4709 (Cell!18646 (_2!26741 lt!1534877)))))))

(declare-fun update!484 (LongMapFixedSize!9418 (_ BitVec 64) List!48412) tuple2!46918)

(assert (=> b!4315240 (= lt!1534877 (update!484 (v!42544 (underlying!9647 (_2!26739 lt!1534874))) lt!1534699 lt!1534705))))

(declare-fun e!2684267 () Bool)

(declare-fun call!298533 () ListLongMap!1093)

(declare-fun b!4315241 () Bool)

(declare-fun call!298534 () ListLongMap!1093)

(assert (=> b!4315241 (= e!2684267 (= call!298534 (+!302 call!298533 (tuple2!46917 lt!1534699 lt!1534705))))))

(declare-fun b!4315242 () Bool)

(declare-fun e!2684268 () tuple2!46914)

(declare-fun lt!1534875 () tuple2!46914)

(assert (=> b!4315242 (= e!2684268 (tuple2!46915 (_1!26739 lt!1534875) (_2!26739 lt!1534875)))))

(declare-fun repack!70 (MutLongMap!4709) tuple2!46914)

(assert (=> b!4315242 (= lt!1534875 (repack!70 (v!42545 (underlying!9648 thiss!42308))))))

(declare-fun d!1269153 () Bool)

(assert (=> d!1269153 e!2684269))

(declare-fun res!1768746 () Bool)

(assert (=> d!1269153 (=> (not res!1768746) (not e!2684269))))

(assert (=> d!1269153 (= res!1768746 ((_ is LongMap!4709) (_2!26739 lt!1534876)))))

(assert (=> d!1269153 (= lt!1534876 e!2684270)))

(declare-fun c!733613 () Bool)

(assert (=> d!1269153 (= c!733613 (_1!26739 lt!1534874))))

(assert (=> d!1269153 (= lt!1534874 e!2684268)))

(declare-fun c!733614 () Bool)

(declare-fun imbalanced!66 (MutLongMap!4709) Bool)

(assert (=> d!1269153 (= c!733614 (imbalanced!66 (v!42545 (underlying!9648 thiss!42308))))))

(assert (=> d!1269153 (valid!3707 (v!42545 (underlying!9648 thiss!42308)))))

(assert (=> d!1269153 (= (update!483 (v!42545 (underlying!9648 thiss!42308)) lt!1534699 lt!1534705) lt!1534876)))

(declare-fun b!4315243 () Bool)

(declare-fun e!2684266 () Bool)

(assert (=> b!4315243 (= e!2684269 e!2684266)))

(declare-fun c!733615 () Bool)

(assert (=> b!4315243 (= c!733615 (_1!26739 lt!1534876))))

(declare-fun b!4315244 () Bool)

(assert (=> b!4315244 (= e!2684266 e!2684267)))

(declare-fun res!1768747 () Bool)

(assert (=> b!4315244 (= res!1768747 (contains!10292 call!298534 lt!1534699))))

(assert (=> b!4315244 (=> (not res!1768747) (not e!2684267))))

(declare-fun bm!298528 () Bool)

(assert (=> bm!298528 (= call!298534 (map!10297 (ite c!733615 (_2!26739 lt!1534876) (v!42545 (underlying!9648 thiss!42308)))))))

(declare-fun bm!298529 () Bool)

(assert (=> bm!298529 (= call!298533 (map!10297 (ite c!733615 (v!42545 (underlying!9648 thiss!42308)) (_2!26739 lt!1534876))))))

(declare-fun b!4315245 () Bool)

(assert (=> b!4315245 (= e!2684266 (= call!298533 call!298534))))

(declare-fun b!4315246 () Bool)

(assert (=> b!4315246 (= e!2684268 (tuple2!46915 true (v!42545 (underlying!9648 thiss!42308))))))

(assert (= (and d!1269153 c!733614) b!4315242))

(assert (= (and d!1269153 (not c!733614)) b!4315246))

(assert (= (and d!1269153 c!733613) b!4315240))

(assert (= (and d!1269153 (not c!733613)) b!4315239))

(assert (= (and d!1269153 res!1768746) b!4315238))

(assert (= (and b!4315238 res!1768745) b!4315243))

(assert (= (and b!4315243 c!733615) b!4315244))

(assert (= (and b!4315243 (not c!733615)) b!4315245))

(assert (= (and b!4315244 res!1768747) b!4315241))

(assert (= (or b!4315241 b!4315245) bm!298529))

(assert (= (or b!4315244 b!4315241 b!4315245) bm!298528))

(declare-fun m!4908999 () Bool)

(assert (=> b!4315240 m!4908999))

(declare-fun m!4909001 () Bool)

(assert (=> d!1269153 m!4909001))

(assert (=> d!1269153 m!4908829))

(declare-fun m!4909003 () Bool)

(assert (=> b!4315242 m!4909003))

(declare-fun m!4909005 () Bool)

(assert (=> b!4315238 m!4909005))

(declare-fun m!4909007 () Bool)

(assert (=> b!4315244 m!4909007))

(declare-fun m!4909009 () Bool)

(assert (=> b!4315241 m!4909009))

(declare-fun m!4909011 () Bool)

(assert (=> bm!298528 m!4909011))

(declare-fun m!4909013 () Bool)

(assert (=> bm!298529 m!4909013))

(assert (=> b!4315079 d!1269153))

(declare-fun b!4315258 () Bool)

(declare-fun e!2684276 () List!48412)

(assert (=> b!4315258 (= e!2684276 Nil!48288)))

(declare-fun b!4315257 () Bool)

(assert (=> b!4315257 (= e!2684276 (Cons!48288 (h!53738 lt!1534709) (removePairForKey!244 (t!355253 lt!1534709) key!2048)))))

(declare-fun b!4315256 () Bool)

(declare-fun e!2684275 () List!48412)

(assert (=> b!4315256 (= e!2684275 e!2684276)))

(declare-fun c!733620 () Bool)

(assert (=> b!4315256 (= c!733620 ((_ is Cons!48288) lt!1534709))))

(declare-fun b!4315255 () Bool)

(assert (=> b!4315255 (= e!2684275 (t!355253 lt!1534709))))

(declare-fun d!1269155 () Bool)

(declare-fun lt!1534880 () List!48412)

(assert (=> d!1269155 (not (containsKey!365 lt!1534880 key!2048))))

(assert (=> d!1269155 (= lt!1534880 e!2684275)))

(declare-fun c!733621 () Bool)

(assert (=> d!1269155 (= c!733621 (and ((_ is Cons!48288) lt!1534709) (= (_1!26738 (h!53738 lt!1534709)) key!2048)))))

(assert (=> d!1269155 (noDuplicateKeys!246 lt!1534709)))

(assert (=> d!1269155 (= (removePairForKey!244 lt!1534709 key!2048) lt!1534880)))

(assert (= (and d!1269155 c!733621) b!4315255))

(assert (= (and d!1269155 (not c!733621)) b!4315256))

(assert (= (and b!4315256 c!733620) b!4315257))

(assert (= (and b!4315256 (not c!733620)) b!4315258))

(declare-fun m!4909015 () Bool)

(assert (=> b!4315257 m!4909015))

(declare-fun m!4909017 () Bool)

(assert (=> d!1269155 m!4909017))

(assert (=> d!1269155 m!4908969))

(assert (=> b!4315079 d!1269155))

(declare-fun d!1269157 () Bool)

(declare-fun e!2684279 () Bool)

(assert (=> d!1269157 e!2684279))

(declare-fun c!733624 () Bool)

(assert (=> d!1269157 (= c!733624 (contains!10291 (v!42545 (underlying!9648 thiss!42308)) lt!1534699))))

(declare-fun lt!1534883 () List!48412)

(declare-fun apply!11080 (LongMapFixedSize!9418 (_ BitVec 64)) List!48412)

(assert (=> d!1269157 (= lt!1534883 (apply!11080 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308)))) lt!1534699))))

(assert (=> d!1269157 (valid!3707 (v!42545 (underlying!9648 thiss!42308)))))

(assert (=> d!1269157 (= (apply!11078 (v!42545 (underlying!9648 thiss!42308)) lt!1534699) lt!1534883)))

(declare-fun b!4315263 () Bool)

(declare-fun get!15635 (Option!10267) List!48412)

(assert (=> b!4315263 (= e!2684279 (= lt!1534883 (get!15635 (getValueByKey!277 (toList!2479 (map!10297 (v!42545 (underlying!9648 thiss!42308)))) lt!1534699))))))

(declare-fun b!4315264 () Bool)

(declare-fun dynLambda!20467 (Int (_ BitVec 64)) List!48412)

(assert (=> b!4315264 (= e!2684279 (= lt!1534883 (dynLambda!20467 (defaultEntry!5094 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308))))) lt!1534699)))))

(assert (=> b!4315264 ((_ is LongMap!4709) (v!42545 (underlying!9648 thiss!42308)))))

(assert (= (and d!1269157 c!733624) b!4315263))

(assert (= (and d!1269157 (not c!733624)) b!4315264))

(declare-fun b_lambda!126883 () Bool)

(assert (=> (not b_lambda!126883) (not b!4315264)))

(declare-fun t!355256 () Bool)

(declare-fun tb!257327 () Bool)

(assert (=> (and b!4315084 (= (defaultEntry!5094 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308))))) (defaultEntry!5094 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308)))))) t!355256) tb!257327))

(assert (=> b!4315264 t!355256))

(declare-fun result!314784 () Bool)

(declare-fun b_and!340273 () Bool)

(assert (= b_and!340269 (and (=> t!355256 result!314784) b_and!340273)))

(declare-fun m!4909019 () Bool)

(assert (=> d!1269157 m!4909019))

(declare-fun m!4909021 () Bool)

(assert (=> d!1269157 m!4909021))

(assert (=> d!1269157 m!4908829))

(assert (=> b!4315263 m!4908713))

(declare-fun m!4909023 () Bool)

(assert (=> b!4315263 m!4909023))

(assert (=> b!4315263 m!4909023))

(declare-fun m!4909025 () Bool)

(assert (=> b!4315263 m!4909025))

(declare-fun m!4909027 () Bool)

(assert (=> b!4315264 m!4909027))

(assert (=> b!4315079 d!1269157))

(declare-fun d!1269159 () Bool)

(declare-fun hash!1102 (Hashable!4625 K!9519) (_ BitVec 64))

(assert (=> d!1269159 (= (hash!1097 (hashF!6818 thiss!42308) key!2048) (hash!1102 (hashF!6818 thiss!42308) key!2048))))

(declare-fun bs!605765 () Bool)

(assert (= bs!605765 d!1269159))

(declare-fun m!4909029 () Bool)

(assert (=> bs!605765 m!4909029))

(assert (=> b!4315079 d!1269159))

(declare-fun tp!1325756 () Bool)

(declare-fun e!2684282 () Bool)

(declare-fun b!4315269 () Bool)

(assert (=> b!4315269 (= e!2684282 (and tp_is_empty!23943 tp_is_empty!23941 tp!1325756))))

(assert (=> b!4315091 (= tp!1325752 e!2684282)))

(assert (= (and b!4315091 ((_ is Cons!48288) mapDefault!21007)) b!4315269))

(declare-fun e!2684283 () Bool)

(declare-fun b!4315270 () Bool)

(declare-fun tp!1325757 () Bool)

(assert (=> b!4315270 (= e!2684283 (and tp_is_empty!23943 tp_is_empty!23941 tp!1325757))))

(assert (=> b!4315084 (= tp!1325751 e!2684283)))

(assert (= (and b!4315084 ((_ is Cons!48288) (zeroValue!4968 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308))))))) b!4315270))

(declare-fun tp!1325758 () Bool)

(declare-fun b!4315271 () Bool)

(declare-fun e!2684284 () Bool)

(assert (=> b!4315271 (= e!2684284 (and tp_is_empty!23943 tp_is_empty!23941 tp!1325758))))

(assert (=> b!4315084 (= tp!1325747 e!2684284)))

(assert (= (and b!4315084 ((_ is Cons!48288) (minValue!4968 (v!42544 (underlying!9647 (v!42545 (underlying!9648 thiss!42308))))))) b!4315271))

(declare-fun mapNonEmpty!21010 () Bool)

(declare-fun mapRes!21010 () Bool)

(declare-fun tp!1325765 () Bool)

(declare-fun e!2684290 () Bool)

(assert (=> mapNonEmpty!21010 (= mapRes!21010 (and tp!1325765 e!2684290))))

(declare-fun mapValue!21010 () List!48412)

(declare-fun mapRest!21010 () (Array (_ BitVec 32) List!48412))

(declare-fun mapKey!21010 () (_ BitVec 32))

(assert (=> mapNonEmpty!21010 (= mapRest!21007 (store mapRest!21010 mapKey!21010 mapValue!21010))))

(declare-fun mapIsEmpty!21010 () Bool)

(assert (=> mapIsEmpty!21010 mapRes!21010))

(declare-fun condMapEmpty!21010 () Bool)

(declare-fun mapDefault!21010 () List!48412)

(assert (=> mapNonEmpty!21007 (= condMapEmpty!21010 (= mapRest!21007 ((as const (Array (_ BitVec 32) List!48412)) mapDefault!21010)))))

(declare-fun e!2684289 () Bool)

(assert (=> mapNonEmpty!21007 (= tp!1325750 (and e!2684289 mapRes!21010))))

(declare-fun b!4315278 () Bool)

(declare-fun tp!1325767 () Bool)

(assert (=> b!4315278 (= e!2684290 (and tp_is_empty!23943 tp_is_empty!23941 tp!1325767))))

(declare-fun tp!1325766 () Bool)

(declare-fun b!4315279 () Bool)

(assert (=> b!4315279 (= e!2684289 (and tp_is_empty!23943 tp_is_empty!23941 tp!1325766))))

(assert (= (and mapNonEmpty!21007 condMapEmpty!21010) mapIsEmpty!21010))

(assert (= (and mapNonEmpty!21007 (not condMapEmpty!21010)) mapNonEmpty!21010))

(assert (= (and mapNonEmpty!21010 ((_ is Cons!48288) mapValue!21010)) b!4315278))

(assert (= (and mapNonEmpty!21007 ((_ is Cons!48288) mapDefault!21010)) b!4315279))

(declare-fun m!4909031 () Bool)

(assert (=> mapNonEmpty!21010 m!4909031))

(declare-fun tp!1325768 () Bool)

(declare-fun e!2684291 () Bool)

(declare-fun b!4315280 () Bool)

(assert (=> b!4315280 (= e!2684291 (and tp_is_empty!23943 tp_is_empty!23941 tp!1325768))))

(assert (=> mapNonEmpty!21007 (= tp!1325749 e!2684291)))

(assert (= (and mapNonEmpty!21007 ((_ is Cons!48288) mapValue!21007)) b!4315280))

(declare-fun b_lambda!126885 () Bool)

(assert (= b_lambda!126879 (or b!4315085 b_lambda!126885)))

(declare-fun bs!605766 () Bool)

(declare-fun d!1269161 () Bool)

(assert (= bs!605766 (and d!1269161 b!4315085)))

(assert (=> bs!605766 (= (dynLambda!20466 lambda!133395 (h!53739 (toList!2479 lt!1534710))) (noDuplicateKeys!246 (_2!26740 (h!53739 (toList!2479 lt!1534710)))))))

(declare-fun m!4909033 () Bool)

(assert (=> bs!605766 m!4909033))

(assert (=> b!4315186 d!1269161))

(declare-fun b_lambda!126887 () Bool)

(assert (= b_lambda!126883 (or (and b!4315084 b_free!128795) b_lambda!126887)))

(declare-fun b_lambda!126889 () Bool)

(assert (= b_lambda!126881 (or b!4315085 b_lambda!126889)))

(declare-fun bs!605767 () Bool)

(declare-fun d!1269163 () Bool)

(assert (= bs!605767 (and d!1269163 b!4315085)))

(assert (=> bs!605767 (= (dynLambda!20466 lambda!133395 (h!53739 (toList!2479 lt!1534712))) (noDuplicateKeys!246 (_2!26740 (h!53739 (toList!2479 lt!1534712)))))))

(declare-fun m!4909035 () Bool)

(assert (=> bs!605767 m!4909035))

(assert (=> b!4315214 d!1269163))

(check-sat (not b!4315165) (not d!1269103) (not b!4315280) (not b_lambda!126889) (not b!4315194) b_and!340273 (not b!4315129) (not d!1269143) (not b!4315167) (not bm!298514) (not d!1269141) tp_is_empty!23941 (not bm!298517) (not bm!298529) (not d!1269159) (not b!4315096) (not bm!298518) (not d!1269097) (not d!1269137) tp_is_empty!23943 (not b!4315200) (not b!4315120) (not d!1269157) (not d!1269111) (not b!4315128) (not d!1269127) (not b!4315168) (not b!4315097) (not d!1269155) (not d!1269145) (not b!4315207) (not b!4315242) (not d!1269153) (not b!4315169) (not d!1269113) (not d!1269123) (not b!4315142) (not d!1269151) (not b!4315240) (not b!4315126) (not d!1269105) (not b!4315197) (not bm!298515) (not tb!257327) (not bm!298516) (not b!4315193) (not b!4315216) (not b!4315238) (not b!4315163) (not d!1269099) (not b!4315279) (not b!4315177) (not b!4315241) (not b!4315212) (not b!4315271) (not b!4315136) (not d!1269093) (not b!4315278) (not d!1269095) (not b!4315192) (not b!4315270) (not d!1269109) (not d!1269139) (not b!4315166) (not d!1269107) (not b!4315187) (not b!4315196) (not b!4315123) (not bs!605767) (not b!4315269) (not b!4315135) (not b!4315217) (not bm!298528) (not d!1269129) (not b_next!129501) (not b!4315203) b_and!340271 (not b!4315199) (not b!4315171) (not b!4315204) (not bm!298522) (not b_lambda!126885) (not d!1269117) (not bm!298519) (not bm!298523) (not b!4315257) (not d!1269133) (not b!4315244) (not b_next!129499) (not b!4315215) (not d!1269131) (not b!4315176) (not d!1269119) (not mapNonEmpty!21010) (not b!4315263) (not bs!605766) (not b!4315198) (not b!4315202) (not d!1269121) (not b_lambda!126887) (not b!4315218))
(check-sat b_and!340273 b_and!340271 (not b_next!129501) (not b_next!129499))
