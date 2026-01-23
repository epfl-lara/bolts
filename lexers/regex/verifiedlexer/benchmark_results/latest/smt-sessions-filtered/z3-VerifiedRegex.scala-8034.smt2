; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415866 () Bool)

(assert start!415866)

(declare-fun b!4320923 () Bool)

(declare-fun b_free!128955 () Bool)

(declare-fun b_next!129659 () Bool)

(assert (=> b!4320923 (= b_free!128955 (not b_next!129659))))

(declare-fun tp!1326840 () Bool)

(declare-fun b_and!340495 () Bool)

(assert (=> b!4320923 (= tp!1326840 b_and!340495)))

(declare-fun b!4320909 () Bool)

(declare-fun b_free!128957 () Bool)

(declare-fun b_next!129661 () Bool)

(assert (=> b!4320909 (= b_free!128957 (not b_next!129661))))

(declare-fun tp!1326838 () Bool)

(declare-fun b_and!340497 () Bool)

(assert (=> b!4320909 (= tp!1326838 b_and!340497)))

(declare-fun b!4320908 () Bool)

(declare-fun res!1770823 () Bool)

(declare-fun e!2688219 () Bool)

(assert (=> b!4320908 (=> (not res!1770823) (not e!2688219))))

(declare-datatypes ((V!9821 0))(
  ( (V!9822 (val!15953 Int)) )
))
(declare-datatypes ((K!9619 0))(
  ( (K!9620 (val!15954 Int)) )
))
(declare-datatypes ((tuple2!47160 0))(
  ( (tuple2!47161 (_1!26866 K!9619) (_2!26866 V!9821)) )
))
(declare-datatypes ((List!48494 0))(
  ( (Nil!48370) (Cons!48370 (h!53829 tuple2!47160) (t!355371 List!48494)) )
))
(declare-datatypes ((array!17214 0))(
  ( (array!17215 (arr!7683 (Array (_ BitVec 32) (_ BitVec 64))) (size!35722 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4665 0))(
  ( (HashableExt!4664 (__x!30272 Int)) )
))
(declare-datatypes ((array!17216 0))(
  ( (array!17217 (arr!7684 (Array (_ BitVec 32) List!48494)) (size!35723 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9498 0))(
  ( (LongMapFixedSize!9499 (defaultEntry!5144 Int) (mask!13369 (_ BitVec 32)) (extraKeys!5006 (_ BitVec 32)) (zeroValue!5017 List!48494) (minValue!5017 List!48494) (_size!9542 (_ BitVec 32)) (_keys!5062 array!17214) (_values!5040 array!17216) (_vacant!4811 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18805 0))(
  ( (Cell!18806 (v!42738 LongMapFixedSize!9498)) )
))
(declare-datatypes ((MutLongMap!4749 0))(
  ( (LongMap!4749 (underlying!9727 Cell!18805)) (MutLongMapExt!4748 (__x!30273 Int)) )
))
(declare-datatypes ((Cell!18807 0))(
  ( (Cell!18808 (v!42739 MutLongMap!4749)) )
))
(declare-datatypes ((MutableMap!4655 0))(
  ( (MutableMapExt!4654 (__x!30274 Int)) (HashMap!4655 (underlying!9728 Cell!18807) (hashF!6910 Hashable!4665) (_size!9543 (_ BitVec 32)) (defaultValue!4826 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4655)

(declare-fun valid!3759 (MutableMap!4655) Bool)

(assert (=> b!4320908 (= res!1770823 (valid!3759 thiss!42308))))

(declare-fun mapIsEmpty!21171 () Bool)

(declare-fun mapRes!21171 () Bool)

(assert (=> mapIsEmpty!21171 mapRes!21171))

(declare-fun e!2688212 () Bool)

(declare-fun e!2688210 () Bool)

(assert (=> b!4320909 (= e!2688212 (and e!2688210 tp!1326838))))

(declare-fun b!4320910 () Bool)

(declare-fun e!2688216 () Bool)

(declare-fun e!2688209 () Bool)

(assert (=> b!4320910 (= e!2688216 (not e!2688209))))

(declare-fun res!1770825 () Bool)

(assert (=> b!4320910 (=> res!1770825 e!2688209)))

(declare-datatypes ((tuple2!47162 0))(
  ( (tuple2!47163 (_1!26867 (_ BitVec 64)) (_2!26867 List!48494)) )
))
(declare-datatypes ((List!48495 0))(
  ( (Nil!48371) (Cons!48371 (h!53830 tuple2!47162) (t!355372 List!48495)) )
))
(declare-datatypes ((ListLongMap!1163 0))(
  ( (ListLongMap!1164 (toList!2546 List!48495)) )
))
(declare-fun lt!1539070 () ListLongMap!1163)

(declare-fun lambda!133792 () Int)

(declare-fun forall!8807 (List!48495 Int) Bool)

(assert (=> b!4320910 (= res!1770825 (not (forall!8807 (toList!2546 lt!1539070) lambda!133792)))))

(declare-fun e!2688221 () Bool)

(assert (=> b!4320910 e!2688221))

(declare-fun res!1770821 () Bool)

(assert (=> b!4320910 (=> (not res!1770821) (not e!2688221))))

(declare-fun lt!1539066 () ListLongMap!1163)

(assert (=> b!4320910 (= res!1770821 (forall!8807 (toList!2546 lt!1539066) lambda!133792))))

(declare-fun lt!1539071 () (_ BitVec 64))

(declare-fun lt!1539064 () List!48494)

(declare-fun +!327 (ListLongMap!1163 tuple2!47162) ListLongMap!1163)

(assert (=> b!4320910 (= lt!1539066 (+!327 lt!1539070 (tuple2!47163 lt!1539071 lt!1539064)))))

(declare-datatypes ((Unit!67749 0))(
  ( (Unit!67750) )
))
(declare-fun lt!1539069 () Unit!67749)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!177 (ListLongMap!1163 (_ BitVec 64) List!48494 Hashable!4665) Unit!67749)

(assert (=> b!4320910 (= lt!1539069 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!177 lt!1539070 lt!1539071 lt!1539064 (hashF!6910 thiss!42308)))))

(declare-fun lt!1539067 () Unit!67749)

(declare-fun e!2688218 () Unit!67749)

(assert (=> b!4320910 (= lt!1539067 e!2688218)))

(declare-fun c!734867 () Bool)

(declare-fun lt!1539072 () List!48494)

(declare-fun isEmpty!28115 (List!48494) Bool)

(assert (=> b!4320910 (= c!734867 (not (isEmpty!28115 lt!1539072)))))

(declare-fun b!4320911 () Bool)

(declare-fun lt!1539068 () Unit!67749)

(assert (=> b!4320911 (= e!2688218 lt!1539068)))

(declare-fun lt!1539074 () Unit!67749)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!225 (List!48495 (_ BitVec 64) List!48494 Hashable!4665) Unit!67749)

(assert (=> b!4320911 (= lt!1539074 (lemmaInLongMapAllKeySameHashThenForTuple!225 (toList!2546 lt!1539070) lt!1539071 lt!1539072 (hashF!6910 thiss!42308)))))

(declare-fun allKeysSameHash!240 (List!48494 (_ BitVec 64) Hashable!4665) Bool)

(assert (=> b!4320911 (allKeysSameHash!240 lt!1539072 lt!1539071 (hashF!6910 thiss!42308))))

(declare-fun key!2048 () K!9619)

(declare-fun lemmaRemovePairForKeyPreservesHash!216 (List!48494 K!9619 (_ BitVec 64) Hashable!4665) Unit!67749)

(assert (=> b!4320911 (= lt!1539068 (lemmaRemovePairForKeyPreservesHash!216 lt!1539072 key!2048 lt!1539071 (hashF!6910 thiss!42308)))))

(declare-fun removePairForKey!263 (List!48494 K!9619) List!48494)

(assert (=> b!4320911 (allKeysSameHash!240 (removePairForKey!263 lt!1539072 key!2048) lt!1539071 (hashF!6910 thiss!42308))))

(declare-fun b!4320912 () Bool)

(declare-fun e!2688215 () List!48494)

(assert (=> b!4320912 (= e!2688215 Nil!48370)))

(declare-fun b!4320913 () Bool)

(declare-fun e!2688213 () Bool)

(assert (=> b!4320913 (= e!2688213 e!2688216)))

(declare-fun res!1770820 () Bool)

(assert (=> b!4320913 (=> (not res!1770820) (not e!2688216))))

(declare-datatypes ((tuple2!47164 0))(
  ( (tuple2!47165 (_1!26868 Bool) (_2!26868 MutLongMap!4749)) )
))
(declare-fun update!525 (MutLongMap!4749 (_ BitVec 64) List!48494) tuple2!47164)

(assert (=> b!4320913 (= res!1770820 (_1!26868 (update!525 (v!42739 (underlying!9728 thiss!42308)) lt!1539071 lt!1539064)))))

(declare-fun v!9179 () V!9821)

(assert (=> b!4320913 (= lt!1539064 (Cons!48370 (tuple2!47161 key!2048 v!9179) lt!1539072))))

(assert (=> b!4320913 (= lt!1539072 e!2688215)))

(declare-fun c!734866 () Bool)

(declare-fun contains!10413 (MutLongMap!4749 (_ BitVec 64)) Bool)

(assert (=> b!4320913 (= c!734866 (contains!10413 (v!42739 (underlying!9728 thiss!42308)) lt!1539071))))

(declare-fun hash!1168 (Hashable!4665 K!9619) (_ BitVec 64))

(assert (=> b!4320913 (= lt!1539071 (hash!1168 (hashF!6910 thiss!42308) key!2048))))

(declare-fun b!4320914 () Bool)

(declare-fun allKeysSameHashInMap!385 (ListLongMap!1163 Hashable!4665) Bool)

(assert (=> b!4320914 (= e!2688221 (allKeysSameHashInMap!385 lt!1539066 (hashF!6910 thiss!42308)))))

(declare-fun b!4320915 () Bool)

(assert (=> b!4320915 (= e!2688219 e!2688213)))

(declare-fun res!1770824 () Bool)

(assert (=> b!4320915 (=> (not res!1770824) (not e!2688213))))

(declare-fun contains!10414 (MutableMap!4655 K!9619) Bool)

(assert (=> b!4320915 (= res!1770824 (not (contains!10414 thiss!42308 key!2048)))))

(declare-fun map!10394 (MutLongMap!4749) ListLongMap!1163)

(assert (=> b!4320915 (= lt!1539070 (map!10394 (v!42739 (underlying!9728 thiss!42308))))))

(declare-datatypes ((ListMap!1823 0))(
  ( (ListMap!1824 (toList!2547 List!48494)) )
))
(declare-fun lt!1539073 () ListMap!1823)

(declare-fun map!10395 (MutableMap!4655) ListMap!1823)

(assert (=> b!4320915 (= lt!1539073 (map!10395 thiss!42308))))

(declare-fun b!4320916 () Bool)

(declare-fun e!2688217 () Bool)

(declare-fun lt!1539065 () MutLongMap!4749)

(get-info :version)

(assert (=> b!4320916 (= e!2688210 (and e!2688217 ((_ is LongMap!4749) lt!1539065)))))

(assert (=> b!4320916 (= lt!1539065 (v!42739 (underlying!9728 thiss!42308)))))

(declare-fun b!4320917 () Bool)

(assert (=> b!4320917 (= e!2688209 (allKeysSameHashInMap!385 lt!1539070 (hashF!6910 thiss!42308)))))

(declare-fun b!4320918 () Bool)

(declare-fun e!2688220 () Bool)

(declare-fun tp!1326839 () Bool)

(assert (=> b!4320918 (= e!2688220 (and tp!1326839 mapRes!21171))))

(declare-fun condMapEmpty!21171 () Bool)

(declare-fun mapDefault!21171 () List!48494)

(assert (=> b!4320918 (= condMapEmpty!21171 (= (arr!7684 (_values!5040 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48494)) mapDefault!21171)))))

(declare-fun mapNonEmpty!21171 () Bool)

(declare-fun tp!1326837 () Bool)

(declare-fun tp!1326836 () Bool)

(assert (=> mapNonEmpty!21171 (= mapRes!21171 (and tp!1326837 tp!1326836))))

(declare-fun mapValue!21171 () List!48494)

(declare-fun mapRest!21171 () (Array (_ BitVec 32) List!48494))

(declare-fun mapKey!21171 () (_ BitVec 32))

(assert (=> mapNonEmpty!21171 (= (arr!7684 (_values!5040 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308)))))) (store mapRest!21171 mapKey!21171 mapValue!21171))))

(declare-fun b!4320919 () Bool)

(declare-fun Unit!67751 () Unit!67749)

(assert (=> b!4320919 (= e!2688218 Unit!67751)))

(declare-fun b!4320920 () Bool)

(declare-fun e!2688208 () Bool)

(assert (=> b!4320920 (= e!2688217 e!2688208)))

(declare-fun b!4320921 () Bool)

(declare-fun apply!11134 (MutLongMap!4749 (_ BitVec 64)) List!48494)

(assert (=> b!4320921 (= e!2688215 (apply!11134 (v!42739 (underlying!9728 thiss!42308)) lt!1539071))))

(declare-fun res!1770822 () Bool)

(assert (=> start!415866 (=> (not res!1770822) (not e!2688219))))

(assert (=> start!415866 (= res!1770822 ((_ is HashMap!4655) thiss!42308))))

(assert (=> start!415866 e!2688219))

(assert (=> start!415866 e!2688212))

(declare-fun tp_is_empty!24093 () Bool)

(assert (=> start!415866 tp_is_empty!24093))

(declare-fun tp_is_empty!24095 () Bool)

(assert (=> start!415866 tp_is_empty!24095))

(declare-fun b!4320922 () Bool)

(declare-fun e!2688214 () Bool)

(assert (=> b!4320922 (= e!2688208 e!2688214)))

(declare-fun tp!1326835 () Bool)

(declare-fun tp!1326841 () Bool)

(declare-fun array_inv!5529 (array!17214) Bool)

(declare-fun array_inv!5530 (array!17216) Bool)

(assert (=> b!4320923 (= e!2688214 (and tp!1326840 tp!1326841 tp!1326835 (array_inv!5529 (_keys!5062 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308)))))) (array_inv!5530 (_values!5040 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308)))))) e!2688220))))

(assert (= (and start!415866 res!1770822) b!4320908))

(assert (= (and b!4320908 res!1770823) b!4320915))

(assert (= (and b!4320915 res!1770824) b!4320913))

(assert (= (and b!4320913 c!734866) b!4320921))

(assert (= (and b!4320913 (not c!734866)) b!4320912))

(assert (= (and b!4320913 res!1770820) b!4320910))

(assert (= (and b!4320910 c!734867) b!4320911))

(assert (= (and b!4320910 (not c!734867)) b!4320919))

(assert (= (and b!4320910 res!1770821) b!4320914))

(assert (= (and b!4320910 (not res!1770825)) b!4320917))

(assert (= (and b!4320918 condMapEmpty!21171) mapIsEmpty!21171))

(assert (= (and b!4320918 (not condMapEmpty!21171)) mapNonEmpty!21171))

(assert (= b!4320923 b!4320918))

(assert (= b!4320922 b!4320923))

(assert (= b!4320920 b!4320922))

(assert (= (and b!4320916 ((_ is LongMap!4749) (v!42739 (underlying!9728 thiss!42308)))) b!4320920))

(assert (= b!4320909 b!4320916))

(assert (= (and start!415866 ((_ is HashMap!4655) thiss!42308)) b!4320909))

(declare-fun m!4914877 () Bool)

(assert (=> b!4320911 m!4914877))

(declare-fun m!4914879 () Bool)

(assert (=> b!4320911 m!4914879))

(declare-fun m!4914881 () Bool)

(assert (=> b!4320911 m!4914881))

(declare-fun m!4914883 () Bool)

(assert (=> b!4320911 m!4914883))

(assert (=> b!4320911 m!4914879))

(declare-fun m!4914885 () Bool)

(assert (=> b!4320911 m!4914885))

(declare-fun m!4914887 () Bool)

(assert (=> b!4320915 m!4914887))

(declare-fun m!4914889 () Bool)

(assert (=> b!4320915 m!4914889))

(declare-fun m!4914891 () Bool)

(assert (=> b!4320915 m!4914891))

(declare-fun m!4914893 () Bool)

(assert (=> b!4320917 m!4914893))

(declare-fun m!4914895 () Bool)

(assert (=> b!4320908 m!4914895))

(declare-fun m!4914897 () Bool)

(assert (=> b!4320910 m!4914897))

(declare-fun m!4914899 () Bool)

(assert (=> b!4320910 m!4914899))

(declare-fun m!4914901 () Bool)

(assert (=> b!4320910 m!4914901))

(declare-fun m!4914903 () Bool)

(assert (=> b!4320910 m!4914903))

(declare-fun m!4914905 () Bool)

(assert (=> b!4320910 m!4914905))

(declare-fun m!4914907 () Bool)

(assert (=> b!4320914 m!4914907))

(declare-fun m!4914909 () Bool)

(assert (=> b!4320921 m!4914909))

(declare-fun m!4914911 () Bool)

(assert (=> b!4320913 m!4914911))

(declare-fun m!4914913 () Bool)

(assert (=> b!4320913 m!4914913))

(declare-fun m!4914915 () Bool)

(assert (=> b!4320913 m!4914915))

(declare-fun m!4914917 () Bool)

(assert (=> b!4320923 m!4914917))

(declare-fun m!4914919 () Bool)

(assert (=> b!4320923 m!4914919))

(declare-fun m!4914921 () Bool)

(assert (=> mapNonEmpty!21171 m!4914921))

(check-sat (not b!4320910) (not b!4320913) (not mapNonEmpty!21171) b_and!340495 (not b_next!129659) (not b!4320921) (not b!4320923) (not b!4320914) (not b!4320908) b_and!340497 (not b!4320918) (not b!4320915) (not b!4320911) (not b_next!129661) tp_is_empty!24093 (not b!4320917) tp_is_empty!24095)
(check-sat b_and!340495 b_and!340497 (not b_next!129661) (not b_next!129659))
(get-model)

(declare-fun bs!606425 () Bool)

(declare-fun d!1270457 () Bool)

(assert (= bs!606425 (and d!1270457 b!4320910)))

(declare-fun lambda!133795 () Int)

(assert (=> bs!606425 (not (= lambda!133795 lambda!133792))))

(assert (=> d!1270457 true))

(assert (=> d!1270457 (= (allKeysSameHashInMap!385 lt!1539066 (hashF!6910 thiss!42308)) (forall!8807 (toList!2546 lt!1539066) lambda!133795))))

(declare-fun bs!606426 () Bool)

(assert (= bs!606426 d!1270457))

(declare-fun m!4914923 () Bool)

(assert (=> bs!606426 m!4914923))

(assert (=> b!4320914 d!1270457))

(declare-fun bs!606427 () Bool)

(declare-fun b!4320950 () Bool)

(assert (= bs!606427 (and b!4320950 b!4320910)))

(declare-fun lambda!133798 () Int)

(assert (=> bs!606427 (= lambda!133798 lambda!133792)))

(declare-fun bs!606428 () Bool)

(assert (= bs!606428 (and b!4320950 d!1270457)))

(assert (=> bs!606428 (not (= lambda!133798 lambda!133795))))

(declare-fun b!4320948 () Bool)

(declare-fun e!2688238 () Bool)

(declare-fun call!299486 () Bool)

(assert (=> b!4320948 (= e!2688238 call!299486)))

(declare-fun b!4320949 () Bool)

(declare-fun e!2688242 () Unit!67749)

(declare-fun Unit!67752 () Unit!67749)

(assert (=> b!4320949 (= e!2688242 Unit!67752)))

(declare-fun call!299481 () (_ BitVec 64))

(declare-fun call!299484 () ListLongMap!1163)

(declare-fun c!734878 () Bool)

(declare-fun lt!1539121 () ListLongMap!1163)

(declare-fun call!299485 () Bool)

(declare-fun bm!299476 () Bool)

(declare-fun contains!10415 (ListLongMap!1163 (_ BitVec 64)) Bool)

(assert (=> bm!299476 (= call!299485 (contains!10415 (ite c!734878 lt!1539121 call!299484) call!299481))))

(declare-fun lt!1539126 () (_ BitVec 64))

(declare-fun forallContained!1531 (List!48495 Int tuple2!47162) Unit!67749)

(assert (=> b!4320950 (= e!2688242 (forallContained!1531 (toList!2546 (map!10394 (v!42739 (underlying!9728 thiss!42308)))) lambda!133798 (tuple2!47163 lt!1539126 (apply!11134 (v!42739 (underlying!9728 thiss!42308)) lt!1539126))))))

(declare-fun c!734879 () Bool)

(declare-fun contains!10416 (List!48495 tuple2!47162) Bool)

(assert (=> b!4320950 (= c!734879 (not (contains!10416 (toList!2546 (map!10394 (v!42739 (underlying!9728 thiss!42308)))) (tuple2!47163 lt!1539126 (apply!11134 (v!42739 (underlying!9728 thiss!42308)) lt!1539126)))))))

(declare-fun lt!1539129 () Unit!67749)

(declare-fun e!2688237 () Unit!67749)

(assert (=> b!4320950 (= lt!1539129 e!2688237)))

(declare-fun b!4320951 () Bool)

(declare-fun e!2688241 () Unit!67749)

(declare-fun lt!1539128 () Unit!67749)

(assert (=> b!4320951 (= e!2688241 lt!1539128)))

(assert (=> b!4320951 (= lt!1539121 call!299484)))

(declare-fun lemmaInGenericMapThenInLongMap!161 (ListLongMap!1163 K!9619 Hashable!4665) Unit!67749)

(assert (=> b!4320951 (= lt!1539128 (lemmaInGenericMapThenInLongMap!161 lt!1539121 key!2048 (hashF!6910 thiss!42308)))))

(declare-fun res!1770832 () Bool)

(assert (=> b!4320951 (= res!1770832 call!299485)))

(assert (=> b!4320951 (=> (not res!1770832) (not e!2688238))))

(assert (=> b!4320951 e!2688238))

(declare-fun bm!299477 () Bool)

(declare-datatypes ((Option!10298 0))(
  ( (None!10297) (Some!10297 (v!42744 tuple2!47160)) )
))
(declare-fun call!299483 () Option!10298)

(declare-fun isDefined!7599 (Option!10298) Bool)

(assert (=> bm!299477 (= call!299486 (isDefined!7599 call!299483))))

(declare-fun bm!299478 () Bool)

(declare-fun call!299482 () List!48494)

(declare-fun getPair!161 (List!48494 K!9619) Option!10298)

(assert (=> bm!299478 (= call!299483 (getPair!161 call!299482 key!2048))))

(declare-fun b!4320952 () Bool)

(declare-fun e!2688240 () Unit!67749)

(declare-fun Unit!67753 () Unit!67749)

(assert (=> b!4320952 (= e!2688240 Unit!67753)))

(declare-fun b!4320953 () Bool)

(assert (=> b!4320953 (= e!2688241 e!2688240)))

(declare-fun res!1770833 () Bool)

(assert (=> b!4320953 (= res!1770833 call!299485)))

(declare-fun e!2688239 () Bool)

(assert (=> b!4320953 (=> (not res!1770833) (not e!2688239))))

(declare-fun c!734876 () Bool)

(assert (=> b!4320953 (= c!734876 e!2688239)))

(declare-fun e!2688236 () Bool)

(declare-fun b!4320954 () Bool)

(assert (=> b!4320954 (= e!2688236 (isDefined!7599 (getPair!161 (apply!11134 (v!42739 (underlying!9728 thiss!42308)) lt!1539126) key!2048)))))

(declare-fun bm!299480 () Bool)

(assert (=> bm!299480 (= call!299484 (map!10394 (v!42739 (underlying!9728 thiss!42308))))))

(declare-fun b!4320955 () Bool)

(assert (=> b!4320955 (= e!2688239 call!299486)))

(declare-fun b!4320956 () Bool)

(declare-fun Unit!67754 () Unit!67749)

(assert (=> b!4320956 (= e!2688237 Unit!67754)))

(declare-fun b!4320957 () Bool)

(assert (=> b!4320957 false))

(declare-fun lt!1539125 () Unit!67749)

(declare-fun lt!1539131 () Unit!67749)

(assert (=> b!4320957 (= lt!1539125 lt!1539131)))

(declare-fun lt!1539115 () ListLongMap!1163)

(declare-fun contains!10417 (ListMap!1823 K!9619) Bool)

(declare-fun extractMap!367 (List!48495) ListMap!1823)

(assert (=> b!4320957 (contains!10417 (extractMap!367 (toList!2546 lt!1539115)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!161 (ListLongMap!1163 K!9619 Hashable!4665) Unit!67749)

(assert (=> b!4320957 (= lt!1539131 (lemmaInLongMapThenInGenericMap!161 lt!1539115 key!2048 (hashF!6910 thiss!42308)))))

(assert (=> b!4320957 (= lt!1539115 call!299484)))

(declare-fun Unit!67755 () Unit!67749)

(assert (=> b!4320957 (= e!2688240 Unit!67755)))

(declare-fun b!4320958 () Bool)

(assert (=> b!4320958 false))

(declare-fun lt!1539118 () Unit!67749)

(declare-fun lt!1539124 () Unit!67749)

(assert (=> b!4320958 (= lt!1539118 lt!1539124)))

(declare-fun lt!1539130 () List!48495)

(declare-fun lt!1539127 () List!48494)

(assert (=> b!4320958 (contains!10416 lt!1539130 (tuple2!47163 lt!1539126 lt!1539127))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!173 (List!48495 (_ BitVec 64) List!48494) Unit!67749)

(assert (=> b!4320958 (= lt!1539124 (lemmaGetValueByKeyImpliesContainsTuple!173 lt!1539130 lt!1539126 lt!1539127))))

(assert (=> b!4320958 (= lt!1539127 (apply!11134 (v!42739 (underlying!9728 thiss!42308)) lt!1539126))))

(assert (=> b!4320958 (= lt!1539130 (toList!2546 (map!10394 (v!42739 (underlying!9728 thiss!42308)))))))

(declare-fun lt!1539117 () Unit!67749)

(declare-fun lt!1539120 () Unit!67749)

(assert (=> b!4320958 (= lt!1539117 lt!1539120)))

(declare-fun lt!1539134 () List!48495)

(declare-datatypes ((Option!10299 0))(
  ( (None!10298) (Some!10298 (v!42745 List!48494)) )
))
(declare-fun isDefined!7600 (Option!10299) Bool)

(declare-fun getValueByKey!296 (List!48495 (_ BitVec 64)) Option!10299)

(assert (=> b!4320958 (isDefined!7600 (getValueByKey!296 lt!1539134 lt!1539126))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!215 (List!48495 (_ BitVec 64)) Unit!67749)

(assert (=> b!4320958 (= lt!1539120 (lemmaContainsKeyImpliesGetValueByKeyDefined!215 lt!1539134 lt!1539126))))

(assert (=> b!4320958 (= lt!1539134 (toList!2546 (map!10394 (v!42739 (underlying!9728 thiss!42308)))))))

(declare-fun lt!1539133 () Unit!67749)

(declare-fun lt!1539122 () Unit!67749)

(assert (=> b!4320958 (= lt!1539133 lt!1539122)))

(declare-fun lt!1539116 () List!48495)

(declare-fun containsKey!398 (List!48495 (_ BitVec 64)) Bool)

(assert (=> b!4320958 (containsKey!398 lt!1539116 lt!1539126)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!162 (List!48495 (_ BitVec 64)) Unit!67749)

(assert (=> b!4320958 (= lt!1539122 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!162 lt!1539116 lt!1539126))))

(assert (=> b!4320958 (= lt!1539116 (toList!2546 (map!10394 (v!42739 (underlying!9728 thiss!42308)))))))

(declare-fun Unit!67756 () Unit!67749)

(assert (=> b!4320958 (= e!2688237 Unit!67756)))

(declare-fun bm!299481 () Bool)

(declare-fun apply!11135 (ListLongMap!1163 (_ BitVec 64)) List!48494)

(assert (=> bm!299481 (= call!299482 (apply!11135 (ite c!734878 lt!1539121 call!299484) call!299481))))

(declare-fun d!1270459 () Bool)

(declare-fun lt!1539119 () Bool)

(assert (=> d!1270459 (= lt!1539119 (contains!10417 (map!10395 thiss!42308) key!2048))))

(assert (=> d!1270459 (= lt!1539119 e!2688236)))

(declare-fun res!1770834 () Bool)

(assert (=> d!1270459 (=> (not res!1770834) (not e!2688236))))

(assert (=> d!1270459 (= res!1770834 (contains!10413 (v!42739 (underlying!9728 thiss!42308)) lt!1539126))))

(declare-fun lt!1539123 () Unit!67749)

(assert (=> d!1270459 (= lt!1539123 e!2688241)))

(assert (=> d!1270459 (= c!734878 (contains!10417 (extractMap!367 (toList!2546 (map!10394 (v!42739 (underlying!9728 thiss!42308))))) key!2048))))

(declare-fun lt!1539132 () Unit!67749)

(assert (=> d!1270459 (= lt!1539132 e!2688242)))

(declare-fun c!734877 () Bool)

(assert (=> d!1270459 (= c!734877 (contains!10413 (v!42739 (underlying!9728 thiss!42308)) lt!1539126))))

(assert (=> d!1270459 (= lt!1539126 (hash!1168 (hashF!6910 thiss!42308) key!2048))))

(assert (=> d!1270459 (valid!3759 thiss!42308)))

(assert (=> d!1270459 (= (contains!10414 thiss!42308 key!2048) lt!1539119)))

(declare-fun bm!299479 () Bool)

(assert (=> bm!299479 (= call!299481 (hash!1168 (hashF!6910 thiss!42308) key!2048))))

(assert (= (and d!1270459 c!734877) b!4320950))

(assert (= (and d!1270459 (not c!734877)) b!4320949))

(assert (= (and b!4320950 c!734879) b!4320958))

(assert (= (and b!4320950 (not c!734879)) b!4320956))

(assert (= (and d!1270459 c!734878) b!4320951))

(assert (= (and d!1270459 (not c!734878)) b!4320953))

(assert (= (and b!4320951 res!1770832) b!4320948))

(assert (= (and b!4320953 res!1770833) b!4320955))

(assert (= (and b!4320953 c!734876) b!4320957))

(assert (= (and b!4320953 (not c!734876)) b!4320952))

(assert (= (or b!4320951 b!4320948 b!4320953 b!4320955) bm!299479))

(assert (= (or b!4320951 b!4320953 b!4320955 b!4320957) bm!299480))

(assert (= (or b!4320951 b!4320953) bm!299476))

(assert (= (or b!4320948 b!4320955) bm!299481))

(assert (= (or b!4320948 b!4320955) bm!299478))

(assert (= (or b!4320948 b!4320955) bm!299477))

(assert (= (and d!1270459 res!1770834) b!4320954))

(declare-fun m!4914925 () Bool)

(assert (=> bm!299478 m!4914925))

(declare-fun m!4914927 () Bool)

(assert (=> b!4320958 m!4914927))

(declare-fun m!4914929 () Bool)

(assert (=> b!4320958 m!4914929))

(declare-fun m!4914931 () Bool)

(assert (=> b!4320958 m!4914931))

(declare-fun m!4914933 () Bool)

(assert (=> b!4320958 m!4914933))

(assert (=> b!4320958 m!4914889))

(declare-fun m!4914935 () Bool)

(assert (=> b!4320958 m!4914935))

(declare-fun m!4914937 () Bool)

(assert (=> b!4320958 m!4914937))

(declare-fun m!4914939 () Bool)

(assert (=> b!4320958 m!4914939))

(declare-fun m!4914941 () Bool)

(assert (=> b!4320958 m!4914941))

(assert (=> b!4320958 m!4914937))

(assert (=> bm!299480 m!4914889))

(declare-fun m!4914943 () Bool)

(assert (=> b!4320951 m!4914943))

(assert (=> b!4320954 m!4914941))

(assert (=> b!4320954 m!4914941))

(declare-fun m!4914945 () Bool)

(assert (=> b!4320954 m!4914945))

(assert (=> b!4320954 m!4914945))

(declare-fun m!4914947 () Bool)

(assert (=> b!4320954 m!4914947))

(assert (=> b!4320950 m!4914889))

(assert (=> b!4320950 m!4914941))

(declare-fun m!4914949 () Bool)

(assert (=> b!4320950 m!4914949))

(declare-fun m!4914951 () Bool)

(assert (=> b!4320950 m!4914951))

(declare-fun m!4914953 () Bool)

(assert (=> b!4320957 m!4914953))

(assert (=> b!4320957 m!4914953))

(declare-fun m!4914955 () Bool)

(assert (=> b!4320957 m!4914955))

(declare-fun m!4914957 () Bool)

(assert (=> b!4320957 m!4914957))

(assert (=> d!1270459 m!4914891))

(declare-fun m!4914959 () Bool)

(assert (=> d!1270459 m!4914959))

(declare-fun m!4914961 () Bool)

(assert (=> d!1270459 m!4914961))

(declare-fun m!4914963 () Bool)

(assert (=> d!1270459 m!4914963))

(declare-fun m!4914965 () Bool)

(assert (=> d!1270459 m!4914965))

(assert (=> d!1270459 m!4914891))

(assert (=> d!1270459 m!4914889))

(assert (=> d!1270459 m!4914915))

(assert (=> d!1270459 m!4914963))

(assert (=> d!1270459 m!4914895))

(declare-fun m!4914967 () Bool)

(assert (=> bm!299476 m!4914967))

(assert (=> bm!299479 m!4914915))

(declare-fun m!4914969 () Bool)

(assert (=> bm!299477 m!4914969))

(declare-fun m!4914971 () Bool)

(assert (=> bm!299481 m!4914971))

(assert (=> b!4320915 d!1270459))

(declare-fun d!1270461 () Bool)

(declare-fun map!10396 (LongMapFixedSize!9498) ListLongMap!1163)

(assert (=> d!1270461 (= (map!10394 (v!42739 (underlying!9728 thiss!42308))) (map!10396 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308))))))))

(declare-fun bs!606429 () Bool)

(assert (= bs!606429 d!1270461))

(declare-fun m!4914973 () Bool)

(assert (=> bs!606429 m!4914973))

(assert (=> b!4320915 d!1270461))

(declare-fun d!1270463 () Bool)

(declare-fun lt!1539137 () ListMap!1823)

(declare-fun invariantList!600 (List!48494) Bool)

(assert (=> d!1270463 (invariantList!600 (toList!2547 lt!1539137))))

(assert (=> d!1270463 (= lt!1539137 (extractMap!367 (toList!2546 (map!10394 (v!42739 (underlying!9728 thiss!42308))))))))

(assert (=> d!1270463 (valid!3759 thiss!42308)))

(assert (=> d!1270463 (= (map!10395 thiss!42308) lt!1539137)))

(declare-fun bs!606430 () Bool)

(assert (= bs!606430 d!1270463))

(declare-fun m!4914975 () Bool)

(assert (=> bs!606430 m!4914975))

(assert (=> bs!606430 m!4914889))

(assert (=> bs!606430 m!4914963))

(assert (=> bs!606430 m!4914895))

(assert (=> b!4320915 d!1270463))

(declare-fun d!1270465 () Bool)

(assert (=> d!1270465 (= (isEmpty!28115 lt!1539072) ((_ is Nil!48370) lt!1539072))))

(assert (=> b!4320910 d!1270465))

(declare-fun d!1270467 () Bool)

(declare-fun res!1770839 () Bool)

(declare-fun e!2688247 () Bool)

(assert (=> d!1270467 (=> res!1770839 e!2688247)))

(assert (=> d!1270467 (= res!1770839 ((_ is Nil!48371) (toList!2546 lt!1539070)))))

(assert (=> d!1270467 (= (forall!8807 (toList!2546 lt!1539070) lambda!133792) e!2688247)))

(declare-fun b!4320963 () Bool)

(declare-fun e!2688248 () Bool)

(assert (=> b!4320963 (= e!2688247 e!2688248)))

(declare-fun res!1770840 () Bool)

(assert (=> b!4320963 (=> (not res!1770840) (not e!2688248))))

(declare-fun dynLambda!20504 (Int tuple2!47162) Bool)

(assert (=> b!4320963 (= res!1770840 (dynLambda!20504 lambda!133792 (h!53830 (toList!2546 lt!1539070))))))

(declare-fun b!4320964 () Bool)

(assert (=> b!4320964 (= e!2688248 (forall!8807 (t!355372 (toList!2546 lt!1539070)) lambda!133792))))

(assert (= (and d!1270467 (not res!1770839)) b!4320963))

(assert (= (and b!4320963 res!1770840) b!4320964))

(declare-fun b_lambda!127203 () Bool)

(assert (=> (not b_lambda!127203) (not b!4320963)))

(declare-fun m!4914977 () Bool)

(assert (=> b!4320963 m!4914977))

(declare-fun m!4914979 () Bool)

(assert (=> b!4320964 m!4914979))

(assert (=> b!4320910 d!1270467))

(declare-fun bs!606431 () Bool)

(declare-fun d!1270469 () Bool)

(assert (= bs!606431 (and d!1270469 b!4320910)))

(declare-fun lambda!133803 () Int)

(assert (=> bs!606431 (= lambda!133803 lambda!133792)))

(declare-fun bs!606432 () Bool)

(assert (= bs!606432 (and d!1270469 d!1270457)))

(assert (=> bs!606432 (not (= lambda!133803 lambda!133795))))

(declare-fun bs!606433 () Bool)

(assert (= bs!606433 (and d!1270469 b!4320950)))

(assert (=> bs!606433 (= lambda!133803 lambda!133798)))

(declare-fun e!2688251 () Bool)

(assert (=> d!1270469 e!2688251))

(declare-fun res!1770843 () Bool)

(assert (=> d!1270469 (=> (not res!1770843) (not e!2688251))))

(declare-fun lt!1539143 () ListLongMap!1163)

(assert (=> d!1270469 (= res!1770843 (forall!8807 (toList!2546 lt!1539143) lambda!133803))))

(assert (=> d!1270469 (= lt!1539143 (+!327 lt!1539070 (tuple2!47163 lt!1539071 lt!1539064)))))

(declare-fun lt!1539142 () Unit!67749)

(declare-fun choose!26390 (ListLongMap!1163 (_ BitVec 64) List!48494 Hashable!4665) Unit!67749)

(assert (=> d!1270469 (= lt!1539142 (choose!26390 lt!1539070 lt!1539071 lt!1539064 (hashF!6910 thiss!42308)))))

(assert (=> d!1270469 (forall!8807 (toList!2546 lt!1539070) lambda!133803)))

(assert (=> d!1270469 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!177 lt!1539070 lt!1539071 lt!1539064 (hashF!6910 thiss!42308)) lt!1539142)))

(declare-fun b!4320967 () Bool)

(assert (=> b!4320967 (= e!2688251 (allKeysSameHashInMap!385 lt!1539143 (hashF!6910 thiss!42308)))))

(assert (= (and d!1270469 res!1770843) b!4320967))

(declare-fun m!4914981 () Bool)

(assert (=> d!1270469 m!4914981))

(assert (=> d!1270469 m!4914897))

(declare-fun m!4914983 () Bool)

(assert (=> d!1270469 m!4914983))

(declare-fun m!4914985 () Bool)

(assert (=> d!1270469 m!4914985))

(declare-fun m!4914987 () Bool)

(assert (=> b!4320967 m!4914987))

(assert (=> b!4320910 d!1270469))

(declare-fun d!1270471 () Bool)

(declare-fun res!1770844 () Bool)

(declare-fun e!2688252 () Bool)

(assert (=> d!1270471 (=> res!1770844 e!2688252)))

(assert (=> d!1270471 (= res!1770844 ((_ is Nil!48371) (toList!2546 lt!1539066)))))

(assert (=> d!1270471 (= (forall!8807 (toList!2546 lt!1539066) lambda!133792) e!2688252)))

(declare-fun b!4320968 () Bool)

(declare-fun e!2688253 () Bool)

(assert (=> b!4320968 (= e!2688252 e!2688253)))

(declare-fun res!1770845 () Bool)

(assert (=> b!4320968 (=> (not res!1770845) (not e!2688253))))

(assert (=> b!4320968 (= res!1770845 (dynLambda!20504 lambda!133792 (h!53830 (toList!2546 lt!1539066))))))

(declare-fun b!4320969 () Bool)

(assert (=> b!4320969 (= e!2688253 (forall!8807 (t!355372 (toList!2546 lt!1539066)) lambda!133792))))

(assert (= (and d!1270471 (not res!1770844)) b!4320968))

(assert (= (and b!4320968 res!1770845) b!4320969))

(declare-fun b_lambda!127205 () Bool)

(assert (=> (not b_lambda!127205) (not b!4320968)))

(declare-fun m!4914989 () Bool)

(assert (=> b!4320968 m!4914989))

(declare-fun m!4914991 () Bool)

(assert (=> b!4320969 m!4914991))

(assert (=> b!4320910 d!1270471))

(declare-fun d!1270473 () Bool)

(declare-fun e!2688256 () Bool)

(assert (=> d!1270473 e!2688256))

(declare-fun res!1770850 () Bool)

(assert (=> d!1270473 (=> (not res!1770850) (not e!2688256))))

(declare-fun lt!1539153 () ListLongMap!1163)

(assert (=> d!1270473 (= res!1770850 (contains!10415 lt!1539153 (_1!26867 (tuple2!47163 lt!1539071 lt!1539064))))))

(declare-fun lt!1539155 () List!48495)

(assert (=> d!1270473 (= lt!1539153 (ListLongMap!1164 lt!1539155))))

(declare-fun lt!1539154 () Unit!67749)

(declare-fun lt!1539152 () Unit!67749)

(assert (=> d!1270473 (= lt!1539154 lt!1539152)))

(assert (=> d!1270473 (= (getValueByKey!296 lt!1539155 (_1!26867 (tuple2!47163 lt!1539071 lt!1539064))) (Some!10298 (_2!26867 (tuple2!47163 lt!1539071 lt!1539064))))))

(declare-fun lemmaContainsTupThenGetReturnValue!95 (List!48495 (_ BitVec 64) List!48494) Unit!67749)

(assert (=> d!1270473 (= lt!1539152 (lemmaContainsTupThenGetReturnValue!95 lt!1539155 (_1!26867 (tuple2!47163 lt!1539071 lt!1539064)) (_2!26867 (tuple2!47163 lt!1539071 lt!1539064))))))

(declare-fun insertStrictlySorted!55 (List!48495 (_ BitVec 64) List!48494) List!48495)

(assert (=> d!1270473 (= lt!1539155 (insertStrictlySorted!55 (toList!2546 lt!1539070) (_1!26867 (tuple2!47163 lt!1539071 lt!1539064)) (_2!26867 (tuple2!47163 lt!1539071 lt!1539064))))))

(assert (=> d!1270473 (= (+!327 lt!1539070 (tuple2!47163 lt!1539071 lt!1539064)) lt!1539153)))

(declare-fun b!4320974 () Bool)

(declare-fun res!1770851 () Bool)

(assert (=> b!4320974 (=> (not res!1770851) (not e!2688256))))

(assert (=> b!4320974 (= res!1770851 (= (getValueByKey!296 (toList!2546 lt!1539153) (_1!26867 (tuple2!47163 lt!1539071 lt!1539064))) (Some!10298 (_2!26867 (tuple2!47163 lt!1539071 lt!1539064)))))))

(declare-fun b!4320975 () Bool)

(assert (=> b!4320975 (= e!2688256 (contains!10416 (toList!2546 lt!1539153) (tuple2!47163 lt!1539071 lt!1539064)))))

(assert (= (and d!1270473 res!1770850) b!4320974))

(assert (= (and b!4320974 res!1770851) b!4320975))

(declare-fun m!4914993 () Bool)

(assert (=> d!1270473 m!4914993))

(declare-fun m!4914995 () Bool)

(assert (=> d!1270473 m!4914995))

(declare-fun m!4914997 () Bool)

(assert (=> d!1270473 m!4914997))

(declare-fun m!4914999 () Bool)

(assert (=> d!1270473 m!4914999))

(declare-fun m!4915001 () Bool)

(assert (=> b!4320974 m!4915001))

(declare-fun m!4915003 () Bool)

(assert (=> b!4320975 m!4915003))

(assert (=> b!4320910 d!1270473))

(declare-fun d!1270475 () Bool)

(assert (=> d!1270475 true))

(assert (=> d!1270475 true))

(declare-fun lambda!133806 () Int)

(declare-fun forall!8808 (List!48494 Int) Bool)

(assert (=> d!1270475 (= (allKeysSameHash!240 lt!1539072 lt!1539071 (hashF!6910 thiss!42308)) (forall!8808 lt!1539072 lambda!133806))))

(declare-fun bs!606434 () Bool)

(assert (= bs!606434 d!1270475))

(declare-fun m!4915005 () Bool)

(assert (=> bs!606434 m!4915005))

(assert (=> b!4320911 d!1270475))

(declare-fun d!1270477 () Bool)

(assert (=> d!1270477 (allKeysSameHash!240 (removePairForKey!263 lt!1539072 key!2048) lt!1539071 (hashF!6910 thiss!42308))))

(declare-fun lt!1539158 () Unit!67749)

(declare-fun choose!26391 (List!48494 K!9619 (_ BitVec 64) Hashable!4665) Unit!67749)

(assert (=> d!1270477 (= lt!1539158 (choose!26391 lt!1539072 key!2048 lt!1539071 (hashF!6910 thiss!42308)))))

(declare-fun noDuplicateKeys!261 (List!48494) Bool)

(assert (=> d!1270477 (noDuplicateKeys!261 lt!1539072)))

(assert (=> d!1270477 (= (lemmaRemovePairForKeyPreservesHash!216 lt!1539072 key!2048 lt!1539071 (hashF!6910 thiss!42308)) lt!1539158)))

(declare-fun bs!606435 () Bool)

(assert (= bs!606435 d!1270477))

(assert (=> bs!606435 m!4914879))

(assert (=> bs!606435 m!4914879))

(assert (=> bs!606435 m!4914881))

(declare-fun m!4915007 () Bool)

(assert (=> bs!606435 m!4915007))

(declare-fun m!4915009 () Bool)

(assert (=> bs!606435 m!4915009))

(assert (=> b!4320911 d!1270477))

(declare-fun d!1270479 () Bool)

(declare-fun lt!1539161 () List!48494)

(declare-fun containsKey!399 (List!48494 K!9619) Bool)

(assert (=> d!1270479 (not (containsKey!399 lt!1539161 key!2048))))

(declare-fun e!2688262 () List!48494)

(assert (=> d!1270479 (= lt!1539161 e!2688262)))

(declare-fun c!734885 () Bool)

(assert (=> d!1270479 (= c!734885 (and ((_ is Cons!48370) lt!1539072) (= (_1!26866 (h!53829 lt!1539072)) key!2048)))))

(assert (=> d!1270479 (noDuplicateKeys!261 lt!1539072)))

(assert (=> d!1270479 (= (removePairForKey!263 lt!1539072 key!2048) lt!1539161)))

(declare-fun b!4320990 () Bool)

(declare-fun e!2688261 () List!48494)

(assert (=> b!4320990 (= e!2688261 (Cons!48370 (h!53829 lt!1539072) (removePairForKey!263 (t!355371 lt!1539072) key!2048)))))

(declare-fun b!4320988 () Bool)

(assert (=> b!4320988 (= e!2688262 (t!355371 lt!1539072))))

(declare-fun b!4320991 () Bool)

(assert (=> b!4320991 (= e!2688261 Nil!48370)))

(declare-fun b!4320989 () Bool)

(assert (=> b!4320989 (= e!2688262 e!2688261)))

(declare-fun c!734884 () Bool)

(assert (=> b!4320989 (= c!734884 ((_ is Cons!48370) lt!1539072))))

(assert (= (and d!1270479 c!734885) b!4320988))

(assert (= (and d!1270479 (not c!734885)) b!4320989))

(assert (= (and b!4320989 c!734884) b!4320990))

(assert (= (and b!4320989 (not c!734884)) b!4320991))

(declare-fun m!4915011 () Bool)

(assert (=> d!1270479 m!4915011))

(assert (=> d!1270479 m!4915009))

(declare-fun m!4915013 () Bool)

(assert (=> b!4320990 m!4915013))

(assert (=> b!4320911 d!1270479))

(declare-fun bs!606436 () Bool)

(declare-fun d!1270481 () Bool)

(assert (= bs!606436 (and d!1270481 d!1270475)))

(declare-fun lambda!133807 () Int)

(assert (=> bs!606436 (= lambda!133807 lambda!133806)))

(assert (=> d!1270481 true))

(assert (=> d!1270481 true))

(assert (=> d!1270481 (= (allKeysSameHash!240 (removePairForKey!263 lt!1539072 key!2048) lt!1539071 (hashF!6910 thiss!42308)) (forall!8808 (removePairForKey!263 lt!1539072 key!2048) lambda!133807))))

(declare-fun bs!606437 () Bool)

(assert (= bs!606437 d!1270481))

(assert (=> bs!606437 m!4914879))

(declare-fun m!4915015 () Bool)

(assert (=> bs!606437 m!4915015))

(assert (=> b!4320911 d!1270481))

(declare-fun bs!606438 () Bool)

(declare-fun d!1270483 () Bool)

(assert (= bs!606438 (and d!1270483 b!4320910)))

(declare-fun lambda!133810 () Int)

(assert (=> bs!606438 (not (= lambda!133810 lambda!133792))))

(declare-fun bs!606439 () Bool)

(assert (= bs!606439 (and d!1270483 d!1270457)))

(assert (=> bs!606439 (= lambda!133810 lambda!133795)))

(declare-fun bs!606440 () Bool)

(assert (= bs!606440 (and d!1270483 b!4320950)))

(assert (=> bs!606440 (not (= lambda!133810 lambda!133798))))

(declare-fun bs!606441 () Bool)

(assert (= bs!606441 (and d!1270483 d!1270469)))

(assert (=> bs!606441 (not (= lambda!133810 lambda!133803))))

(assert (=> d!1270483 true))

(assert (=> d!1270483 (allKeysSameHash!240 lt!1539072 lt!1539071 (hashF!6910 thiss!42308))))

(declare-fun lt!1539164 () Unit!67749)

(declare-fun choose!26392 (List!48495 (_ BitVec 64) List!48494 Hashable!4665) Unit!67749)

(assert (=> d!1270483 (= lt!1539164 (choose!26392 (toList!2546 lt!1539070) lt!1539071 lt!1539072 (hashF!6910 thiss!42308)))))

(assert (=> d!1270483 (forall!8807 (toList!2546 lt!1539070) lambda!133810)))

(assert (=> d!1270483 (= (lemmaInLongMapAllKeySameHashThenForTuple!225 (toList!2546 lt!1539070) lt!1539071 lt!1539072 (hashF!6910 thiss!42308)) lt!1539164)))

(declare-fun bs!606442 () Bool)

(assert (= bs!606442 d!1270483))

(assert (=> bs!606442 m!4914883))

(declare-fun m!4915017 () Bool)

(assert (=> bs!606442 m!4915017))

(declare-fun m!4915019 () Bool)

(assert (=> bs!606442 m!4915019))

(assert (=> b!4320911 d!1270483))

(declare-fun d!1270485 () Bool)

(declare-fun e!2688265 () Bool)

(assert (=> d!1270485 e!2688265))

(declare-fun c!734888 () Bool)

(assert (=> d!1270485 (= c!734888 (contains!10413 (v!42739 (underlying!9728 thiss!42308)) lt!1539071))))

(declare-fun lt!1539167 () List!48494)

(declare-fun apply!11136 (LongMapFixedSize!9498 (_ BitVec 64)) List!48494)

(assert (=> d!1270485 (= lt!1539167 (apply!11136 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308)))) lt!1539071))))

(declare-fun valid!3760 (MutLongMap!4749) Bool)

(assert (=> d!1270485 (valid!3760 (v!42739 (underlying!9728 thiss!42308)))))

(assert (=> d!1270485 (= (apply!11134 (v!42739 (underlying!9728 thiss!42308)) lt!1539071) lt!1539167)))

(declare-fun b!4320996 () Bool)

(declare-fun get!15672 (Option!10299) List!48494)

(assert (=> b!4320996 (= e!2688265 (= lt!1539167 (get!15672 (getValueByKey!296 (toList!2546 (map!10394 (v!42739 (underlying!9728 thiss!42308)))) lt!1539071))))))

(declare-fun b!4320997 () Bool)

(declare-fun dynLambda!20505 (Int (_ BitVec 64)) List!48494)

(assert (=> b!4320997 (= e!2688265 (= lt!1539167 (dynLambda!20505 (defaultEntry!5144 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308))))) lt!1539071)))))

(assert (=> b!4320997 ((_ is LongMap!4749) (v!42739 (underlying!9728 thiss!42308)))))

(assert (= (and d!1270485 c!734888) b!4320996))

(assert (= (and d!1270485 (not c!734888)) b!4320997))

(declare-fun b_lambda!127207 () Bool)

(assert (=> (not b_lambda!127207) (not b!4320997)))

(declare-fun t!355374 () Bool)

(declare-fun tb!257363 () Bool)

(assert (=> (and b!4320923 (= (defaultEntry!5144 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308))))) (defaultEntry!5144 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308)))))) t!355374) tb!257363))

(assert (=> b!4320997 t!355374))

(declare-fun result!314872 () Bool)

(declare-fun b_and!340499 () Bool)

(assert (= b_and!340495 (and (=> t!355374 result!314872) b_and!340499)))

(assert (=> d!1270485 m!4914913))

(declare-fun m!4915021 () Bool)

(assert (=> d!1270485 m!4915021))

(declare-fun m!4915023 () Bool)

(assert (=> d!1270485 m!4915023))

(assert (=> b!4320996 m!4914889))

(declare-fun m!4915025 () Bool)

(assert (=> b!4320996 m!4915025))

(assert (=> b!4320996 m!4915025))

(declare-fun m!4915027 () Bool)

(assert (=> b!4320996 m!4915027))

(declare-fun m!4915029 () Bool)

(assert (=> b!4320997 m!4915029))

(assert (=> b!4320921 d!1270485))

(declare-fun bs!606443 () Bool)

(declare-fun d!1270487 () Bool)

(assert (= bs!606443 (and d!1270487 d!1270469)))

(declare-fun lambda!133811 () Int)

(assert (=> bs!606443 (not (= lambda!133811 lambda!133803))))

(declare-fun bs!606444 () Bool)

(assert (= bs!606444 (and d!1270487 d!1270457)))

(assert (=> bs!606444 (= lambda!133811 lambda!133795)))

(declare-fun bs!606445 () Bool)

(assert (= bs!606445 (and d!1270487 b!4320910)))

(assert (=> bs!606445 (not (= lambda!133811 lambda!133792))))

(declare-fun bs!606446 () Bool)

(assert (= bs!606446 (and d!1270487 b!4320950)))

(assert (=> bs!606446 (not (= lambda!133811 lambda!133798))))

(declare-fun bs!606447 () Bool)

(assert (= bs!606447 (and d!1270487 d!1270483)))

(assert (=> bs!606447 (= lambda!133811 lambda!133810)))

(assert (=> d!1270487 true))

(assert (=> d!1270487 (= (allKeysSameHashInMap!385 lt!1539070 (hashF!6910 thiss!42308)) (forall!8807 (toList!2546 lt!1539070) lambda!133811))))

(declare-fun bs!606448 () Bool)

(assert (= bs!606448 d!1270487))

(declare-fun m!4915031 () Bool)

(assert (=> bs!606448 m!4915031))

(assert (=> b!4320917 d!1270487))

(declare-fun bs!606449 () Bool)

(declare-fun b!4321002 () Bool)

(assert (= bs!606449 (and b!4321002 d!1270469)))

(declare-fun lambda!133814 () Int)

(assert (=> bs!606449 (= lambda!133814 lambda!133803)))

(declare-fun bs!606450 () Bool)

(assert (= bs!606450 (and b!4321002 d!1270457)))

(assert (=> bs!606450 (not (= lambda!133814 lambda!133795))))

(declare-fun bs!606451 () Bool)

(assert (= bs!606451 (and b!4321002 b!4320910)))

(assert (=> bs!606451 (= lambda!133814 lambda!133792)))

(declare-fun bs!606452 () Bool)

(assert (= bs!606452 (and b!4321002 d!1270483)))

(assert (=> bs!606452 (not (= lambda!133814 lambda!133810))))

(declare-fun bs!606453 () Bool)

(assert (= bs!606453 (and b!4321002 b!4320950)))

(assert (=> bs!606453 (= lambda!133814 lambda!133798)))

(declare-fun bs!606454 () Bool)

(assert (= bs!606454 (and b!4321002 d!1270487)))

(assert (=> bs!606454 (not (= lambda!133814 lambda!133811))))

(declare-fun d!1270489 () Bool)

(declare-fun res!1770856 () Bool)

(declare-fun e!2688268 () Bool)

(assert (=> d!1270489 (=> (not res!1770856) (not e!2688268))))

(assert (=> d!1270489 (= res!1770856 (valid!3760 (v!42739 (underlying!9728 thiss!42308))))))

(assert (=> d!1270489 (= (valid!3759 thiss!42308) e!2688268)))

(declare-fun res!1770857 () Bool)

(assert (=> b!4321002 (=> (not res!1770857) (not e!2688268))))

(assert (=> b!4321002 (= res!1770857 (forall!8807 (toList!2546 (map!10394 (v!42739 (underlying!9728 thiss!42308)))) lambda!133814))))

(declare-fun b!4321003 () Bool)

(assert (=> b!4321003 (= e!2688268 (allKeysSameHashInMap!385 (map!10394 (v!42739 (underlying!9728 thiss!42308))) (hashF!6910 thiss!42308)))))

(assert (= (and d!1270489 res!1770856) b!4321002))

(assert (= (and b!4321002 res!1770857) b!4321003))

(assert (=> d!1270489 m!4915023))

(assert (=> b!4321002 m!4914889))

(declare-fun m!4915033 () Bool)

(assert (=> b!4321002 m!4915033))

(assert (=> b!4321003 m!4914889))

(assert (=> b!4321003 m!4914889))

(declare-fun m!4915035 () Bool)

(assert (=> b!4321003 m!4915035))

(assert (=> b!4320908 d!1270489))

(declare-fun b!4321022 () Bool)

(declare-fun e!2688282 () Bool)

(declare-fun call!299491 () ListLongMap!1163)

(declare-fun call!299492 () ListLongMap!1163)

(assert (=> b!4321022 (= e!2688282 (= call!299491 call!299492))))

(declare-fun b!4321023 () Bool)

(declare-fun e!2688283 () tuple2!47164)

(declare-datatypes ((tuple2!47166 0))(
  ( (tuple2!47167 (_1!26869 Bool) (_2!26869 LongMapFixedSize!9498)) )
))
(declare-fun lt!1539178 () tuple2!47166)

(assert (=> b!4321023 (= e!2688283 (tuple2!47165 (_1!26869 lt!1539178) (LongMap!4749 (Cell!18806 (_2!26869 lt!1539178)))))))

(declare-fun lt!1539177 () tuple2!47164)

(declare-fun update!526 (LongMapFixedSize!9498 (_ BitVec 64) List!48494) tuple2!47166)

(assert (=> b!4321023 (= lt!1539178 (update!526 (v!42738 (underlying!9727 (_2!26868 lt!1539177))) lt!1539071 lt!1539064))))

(declare-fun b!4321024 () Bool)

(declare-fun res!1770866 () Bool)

(declare-fun e!2688280 () Bool)

(assert (=> b!4321024 (=> (not res!1770866) (not e!2688280))))

(declare-fun lt!1539176 () tuple2!47164)

(assert (=> b!4321024 (= res!1770866 (valid!3760 (_2!26868 lt!1539176)))))

(declare-fun b!4321025 () Bool)

(declare-fun e!2688281 () Bool)

(assert (=> b!4321025 (= e!2688282 e!2688281)))

(declare-fun res!1770864 () Bool)

(assert (=> b!4321025 (= res!1770864 (contains!10415 call!299491 lt!1539071))))

(assert (=> b!4321025 (=> (not res!1770864) (not e!2688281))))

(declare-fun b!4321026 () Bool)

(declare-fun e!2688279 () tuple2!47164)

(declare-fun lt!1539179 () tuple2!47164)

(assert (=> b!4321026 (= e!2688279 (tuple2!47165 (_1!26868 lt!1539179) (_2!26868 lt!1539179)))))

(declare-fun repack!83 (MutLongMap!4749) tuple2!47164)

(assert (=> b!4321026 (= lt!1539179 (repack!83 (v!42739 (underlying!9728 thiss!42308))))))

(declare-fun d!1270491 () Bool)

(assert (=> d!1270491 e!2688280))

(declare-fun res!1770865 () Bool)

(assert (=> d!1270491 (=> (not res!1770865) (not e!2688280))))

(assert (=> d!1270491 (= res!1770865 ((_ is LongMap!4749) (_2!26868 lt!1539176)))))

(assert (=> d!1270491 (= lt!1539176 e!2688283)))

(declare-fun c!734895 () Bool)

(assert (=> d!1270491 (= c!734895 (_1!26868 lt!1539177))))

(assert (=> d!1270491 (= lt!1539177 e!2688279)))

(declare-fun c!734896 () Bool)

(declare-fun imbalanced!79 (MutLongMap!4749) Bool)

(assert (=> d!1270491 (= c!734896 (imbalanced!79 (v!42739 (underlying!9728 thiss!42308))))))

(assert (=> d!1270491 (valid!3760 (v!42739 (underlying!9728 thiss!42308)))))

(assert (=> d!1270491 (= (update!525 (v!42739 (underlying!9728 thiss!42308)) lt!1539071 lt!1539064) lt!1539176)))

(declare-fun b!4321027 () Bool)

(assert (=> b!4321027 (= e!2688279 (tuple2!47165 true (v!42739 (underlying!9728 thiss!42308))))))

(declare-fun bm!299486 () Bool)

(assert (=> bm!299486 (= call!299492 (map!10394 (v!42739 (underlying!9728 thiss!42308))))))

(declare-fun bm!299487 () Bool)

(assert (=> bm!299487 (= call!299491 (map!10394 (_2!26868 lt!1539176)))))

(declare-fun b!4321028 () Bool)

(assert (=> b!4321028 (= e!2688281 (= call!299491 (+!327 call!299492 (tuple2!47163 lt!1539071 lt!1539064))))))

(declare-fun b!4321029 () Bool)

(assert (=> b!4321029 (= e!2688280 e!2688282)))

(declare-fun c!734897 () Bool)

(assert (=> b!4321029 (= c!734897 (_1!26868 lt!1539176))))

(declare-fun b!4321030 () Bool)

(assert (=> b!4321030 (= e!2688283 (tuple2!47165 false (_2!26868 lt!1539177)))))

(assert (= (and d!1270491 c!734896) b!4321026))

(assert (= (and d!1270491 (not c!734896)) b!4321027))

(assert (= (and d!1270491 c!734895) b!4321023))

(assert (= (and d!1270491 (not c!734895)) b!4321030))

(assert (= (and d!1270491 res!1770865) b!4321024))

(assert (= (and b!4321024 res!1770866) b!4321029))

(assert (= (and b!4321029 c!734897) b!4321025))

(assert (= (and b!4321029 (not c!734897)) b!4321022))

(assert (= (and b!4321025 res!1770864) b!4321028))

(assert (= (or b!4321025 b!4321028 b!4321022) bm!299487))

(assert (= (or b!4321028 b!4321022) bm!299486))

(declare-fun m!4915037 () Bool)

(assert (=> d!1270491 m!4915037))

(assert (=> d!1270491 m!4915023))

(declare-fun m!4915039 () Bool)

(assert (=> b!4321024 m!4915039))

(declare-fun m!4915041 () Bool)

(assert (=> b!4321028 m!4915041))

(declare-fun m!4915043 () Bool)

(assert (=> b!4321023 m!4915043))

(declare-fun m!4915045 () Bool)

(assert (=> bm!299487 m!4915045))

(declare-fun m!4915047 () Bool)

(assert (=> b!4321025 m!4915047))

(assert (=> bm!299486 m!4914889))

(declare-fun m!4915049 () Bool)

(assert (=> b!4321026 m!4915049))

(assert (=> b!4320913 d!1270491))

(declare-fun d!1270493 () Bool)

(declare-fun lt!1539182 () Bool)

(assert (=> d!1270493 (= lt!1539182 (contains!10415 (map!10394 (v!42739 (underlying!9728 thiss!42308))) lt!1539071))))

(declare-fun contains!10418 (LongMapFixedSize!9498 (_ BitVec 64)) Bool)

(assert (=> d!1270493 (= lt!1539182 (contains!10418 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308)))) lt!1539071))))

(assert (=> d!1270493 (valid!3760 (v!42739 (underlying!9728 thiss!42308)))))

(assert (=> d!1270493 (= (contains!10413 (v!42739 (underlying!9728 thiss!42308)) lt!1539071) lt!1539182)))

(declare-fun bs!606455 () Bool)

(assert (= bs!606455 d!1270493))

(assert (=> bs!606455 m!4914889))

(assert (=> bs!606455 m!4914889))

(declare-fun m!4915051 () Bool)

(assert (=> bs!606455 m!4915051))

(declare-fun m!4915053 () Bool)

(assert (=> bs!606455 m!4915053))

(assert (=> bs!606455 m!4915023))

(assert (=> b!4320913 d!1270493))

(declare-fun d!1270495 () Bool)

(declare-fun hash!1172 (Hashable!4665 K!9619) (_ BitVec 64))

(assert (=> d!1270495 (= (hash!1168 (hashF!6910 thiss!42308) key!2048) (hash!1172 (hashF!6910 thiss!42308) key!2048))))

(declare-fun bs!606456 () Bool)

(assert (= bs!606456 d!1270495))

(declare-fun m!4915055 () Bool)

(assert (=> bs!606456 m!4915055))

(assert (=> b!4320913 d!1270495))

(declare-fun d!1270497 () Bool)

(assert (=> d!1270497 (= (array_inv!5529 (_keys!5062 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308)))))) (bvsge (size!35722 (_keys!5062 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4320923 d!1270497))

(declare-fun d!1270499 () Bool)

(assert (=> d!1270499 (= (array_inv!5530 (_values!5040 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308)))))) (bvsge (size!35723 (_values!5040 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4320923 d!1270499))

(declare-fun tp!1326850 () Bool)

(declare-fun e!2688288 () Bool)

(declare-fun b!4321038 () Bool)

(assert (=> b!4321038 (= e!2688288 (and tp_is_empty!24093 tp_is_empty!24095 tp!1326850))))

(declare-fun condMapEmpty!21174 () Bool)

(declare-fun mapDefault!21174 () List!48494)

(assert (=> mapNonEmpty!21171 (= condMapEmpty!21174 (= mapRest!21171 ((as const (Array (_ BitVec 32) List!48494)) mapDefault!21174)))))

(declare-fun mapRes!21174 () Bool)

(assert (=> mapNonEmpty!21171 (= tp!1326837 (and e!2688288 mapRes!21174))))

(declare-fun b!4321037 () Bool)

(declare-fun e!2688289 () Bool)

(declare-fun tp!1326848 () Bool)

(assert (=> b!4321037 (= e!2688289 (and tp_is_empty!24093 tp_is_empty!24095 tp!1326848))))

(declare-fun mapNonEmpty!21174 () Bool)

(declare-fun tp!1326849 () Bool)

(assert (=> mapNonEmpty!21174 (= mapRes!21174 (and tp!1326849 e!2688289))))

(declare-fun mapKey!21174 () (_ BitVec 32))

(declare-fun mapValue!21174 () List!48494)

(declare-fun mapRest!21174 () (Array (_ BitVec 32) List!48494))

(assert (=> mapNonEmpty!21174 (= mapRest!21171 (store mapRest!21174 mapKey!21174 mapValue!21174))))

(declare-fun mapIsEmpty!21174 () Bool)

(assert (=> mapIsEmpty!21174 mapRes!21174))

(assert (= (and mapNonEmpty!21171 condMapEmpty!21174) mapIsEmpty!21174))

(assert (= (and mapNonEmpty!21171 (not condMapEmpty!21174)) mapNonEmpty!21174))

(assert (= (and mapNonEmpty!21174 ((_ is Cons!48370) mapValue!21174)) b!4321037))

(assert (= (and mapNonEmpty!21171 ((_ is Cons!48370) mapDefault!21174)) b!4321038))

(declare-fun m!4915057 () Bool)

(assert (=> mapNonEmpty!21174 m!4915057))

(declare-fun b!4321043 () Bool)

(declare-fun tp!1326853 () Bool)

(declare-fun e!2688292 () Bool)

(assert (=> b!4321043 (= e!2688292 (and tp_is_empty!24093 tp_is_empty!24095 tp!1326853))))

(assert (=> mapNonEmpty!21171 (= tp!1326836 e!2688292)))

(assert (= (and mapNonEmpty!21171 ((_ is Cons!48370) mapValue!21171)) b!4321043))

(declare-fun e!2688293 () Bool)

(declare-fun b!4321044 () Bool)

(declare-fun tp!1326854 () Bool)

(assert (=> b!4321044 (= e!2688293 (and tp_is_empty!24093 tp_is_empty!24095 tp!1326854))))

(assert (=> b!4320918 (= tp!1326839 e!2688293)))

(assert (= (and b!4320918 ((_ is Cons!48370) mapDefault!21171)) b!4321044))

(declare-fun b!4321045 () Bool)

(declare-fun e!2688294 () Bool)

(declare-fun tp!1326855 () Bool)

(assert (=> b!4321045 (= e!2688294 (and tp_is_empty!24093 tp_is_empty!24095 tp!1326855))))

(assert (=> b!4320923 (= tp!1326841 e!2688294)))

(assert (= (and b!4320923 ((_ is Cons!48370) (zeroValue!5017 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308))))))) b!4321045))

(declare-fun b!4321046 () Bool)

(declare-fun e!2688295 () Bool)

(declare-fun tp!1326856 () Bool)

(assert (=> b!4321046 (= e!2688295 (and tp_is_empty!24093 tp_is_empty!24095 tp!1326856))))

(assert (=> b!4320923 (= tp!1326835 e!2688295)))

(assert (= (and b!4320923 ((_ is Cons!48370) (minValue!5017 (v!42738 (underlying!9727 (v!42739 (underlying!9728 thiss!42308))))))) b!4321046))

(declare-fun b_lambda!127209 () Bool)

(assert (= b_lambda!127205 (or b!4320910 b_lambda!127209)))

(declare-fun bs!606457 () Bool)

(declare-fun d!1270501 () Bool)

(assert (= bs!606457 (and d!1270501 b!4320910)))

(assert (=> bs!606457 (= (dynLambda!20504 lambda!133792 (h!53830 (toList!2546 lt!1539066))) (noDuplicateKeys!261 (_2!26867 (h!53830 (toList!2546 lt!1539066)))))))

(declare-fun m!4915059 () Bool)

(assert (=> bs!606457 m!4915059))

(assert (=> b!4320968 d!1270501))

(declare-fun b_lambda!127211 () Bool)

(assert (= b_lambda!127207 (or (and b!4320923 b_free!128955) b_lambda!127211)))

(declare-fun b_lambda!127213 () Bool)

(assert (= b_lambda!127203 (or b!4320910 b_lambda!127213)))

(declare-fun bs!606458 () Bool)

(declare-fun d!1270503 () Bool)

(assert (= bs!606458 (and d!1270503 b!4320910)))

(assert (=> bs!606458 (= (dynLambda!20504 lambda!133792 (h!53830 (toList!2546 lt!1539070))) (noDuplicateKeys!261 (_2!26867 (h!53830 (toList!2546 lt!1539070)))))))

(declare-fun m!4915061 () Bool)

(assert (=> bs!606458 m!4915061))

(assert (=> b!4320963 d!1270503))

(check-sat (not b!4321043) (not d!1270489) (not b!4321023) (not d!1270463) (not b!4320990) (not b!4320967) b_and!340497 (not d!1270473) (not b!4320957) (not b!4321025) (not b_lambda!127211) (not d!1270481) (not b!4320964) (not b!4320975) (not bm!299481) (not d!1270483) (not b_lambda!127213) b_and!340499 (not d!1270475) (not d!1270477) (not d!1270459) (not bs!606458) (not bm!299480) (not b!4321045) (not d!1270491) (not d!1270487) (not b!4320950) (not b_lambda!127209) (not b!4320958) (not d!1270479) (not d!1270457) (not tb!257363) (not d!1270485) (not b!4321028) (not b!4321026) (not b!4320996) (not b!4321024) (not b!4320954) (not b!4321046) (not b_next!129661) tp_is_empty!24093 (not bm!299478) (not b_next!129659) (not b!4321037) (not b!4321044) (not b!4321003) (not b!4320969) (not b!4321038) (not bs!606457) (not bm!299486) tp_is_empty!24095 (not bm!299476) (not b!4320974) (not b!4321002) (not d!1270493) (not d!1270495) (not b!4320951) (not bm!299487) (not d!1270461) (not d!1270469) (not mapNonEmpty!21174) (not bm!299479) (not bm!299477))
(check-sat b_and!340499 b_and!340497 (not b_next!129661) (not b_next!129659))
