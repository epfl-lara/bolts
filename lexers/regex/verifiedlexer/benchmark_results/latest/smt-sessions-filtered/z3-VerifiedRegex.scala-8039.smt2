; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416218 () Bool)

(assert start!416218)

(declare-fun b!4323466 () Bool)

(declare-fun b_free!128995 () Bool)

(declare-fun b_next!129699 () Bool)

(assert (=> b!4323466 (= b_free!128995 (not b_next!129699))))

(declare-fun tp!1327128 () Bool)

(declare-fun b_and!340559 () Bool)

(assert (=> b!4323466 (= tp!1327128 b_and!340559)))

(declare-fun b!4323453 () Bool)

(declare-fun b_free!128997 () Bool)

(declare-fun b_next!129701 () Bool)

(assert (=> b!4323453 (= b_free!128997 (not b_next!129701))))

(declare-fun tp!1327132 () Bool)

(declare-fun b_and!340561 () Bool)

(assert (=> b!4323453 (= tp!1327132 b_and!340561)))

(declare-fun b!4323449 () Bool)

(declare-fun e!2689912 () Bool)

(declare-datatypes ((V!9846 0))(
  ( (V!9847 (val!15973 Int)) )
))
(declare-datatypes ((K!9644 0))(
  ( (K!9645 (val!15974 Int)) )
))
(declare-datatypes ((tuple2!47226 0))(
  ( (tuple2!47227 (_1!26900 K!9644) (_2!26900 V!9846)) )
))
(declare-datatypes ((List!48518 0))(
  ( (Nil!48394) (Cons!48394 (h!53857 tuple2!47226) (t!355408 List!48518)) )
))
(declare-datatypes ((tuple2!47228 0))(
  ( (tuple2!47229 (_1!26901 (_ BitVec 64)) (_2!26901 List!48518)) )
))
(declare-datatypes ((List!48519 0))(
  ( (Nil!48395) (Cons!48395 (h!53858 tuple2!47228) (t!355409 List!48519)) )
))
(declare-datatypes ((ListLongMap!1183 0))(
  ( (ListLongMap!1184 (toList!2566 List!48519)) )
))
(declare-fun lt!1540985 () ListLongMap!1183)

(declare-datatypes ((array!17262 0))(
  ( (array!17263 (arr!7703 (Array (_ BitVec 32) (_ BitVec 64))) (size!35742 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4675 0))(
  ( (HashableExt!4674 (__x!30302 Int)) )
))
(declare-datatypes ((array!17264 0))(
  ( (array!17265 (arr!7704 (Array (_ BitVec 32) List!48518)) (size!35743 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9518 0))(
  ( (LongMapFixedSize!9519 (defaultEntry!5164 Int) (mask!13401 (_ BitVec 32)) (extraKeys!5024 (_ BitVec 32)) (zeroValue!5036 List!48518) (minValue!5036 List!48518) (_size!9563 (_ BitVec 32)) (_keys!5085 array!17262) (_values!5060 array!17264) (_vacant!4822 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18845 0))(
  ( (Cell!18846 (v!42796 LongMapFixedSize!9518)) )
))
(declare-datatypes ((MutLongMap!4759 0))(
  ( (LongMap!4759 (underlying!9747 Cell!18845)) (MutLongMapExt!4758 (__x!30303 Int)) )
))
(declare-datatypes ((Cell!18847 0))(
  ( (Cell!18848 (v!42797 MutLongMap!4759)) )
))
(declare-datatypes ((MutableMap!4665 0))(
  ( (MutableMapExt!4664 (__x!30304 Int)) (HashMap!4665 (underlying!9748 Cell!18847) (hashF!6947 Hashable!4675) (_size!9564 (_ BitVec 32)) (defaultValue!4836 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4665)

(declare-fun allKeysSameHashInMap!393 (ListLongMap!1183 Hashable!4675) Bool)

(assert (=> b!4323449 (= e!2689912 (allKeysSameHashInMap!393 lt!1540985 (hashF!6947 thiss!42308)))))

(declare-fun b!4323450 () Bool)

(declare-fun res!1771898 () Bool)

(declare-fun e!2689916 () Bool)

(assert (=> b!4323450 (=> (not res!1771898) (not e!2689916))))

(declare-fun valid!3771 (MutableMap!4665) Bool)

(assert (=> b!4323450 (= res!1771898 (valid!3771 thiss!42308))))

(declare-fun b!4323451 () Bool)

(declare-fun e!2689915 () Bool)

(declare-fun lt!1540990 () Bool)

(declare-fun lt!1540984 () List!48518)

(assert (=> b!4323451 (= e!2689915 (or lt!1540990 (not (= lt!1540984 Nil!48394))))))

(declare-fun mapNonEmpty!21215 () Bool)

(declare-fun mapRes!21215 () Bool)

(declare-fun tp!1327131 () Bool)

(declare-fun tp!1327133 () Bool)

(assert (=> mapNonEmpty!21215 (= mapRes!21215 (and tp!1327131 tp!1327133))))

(declare-fun mapRest!21215 () (Array (_ BitVec 32) List!48518))

(declare-fun mapKey!21215 () (_ BitVec 32))

(declare-fun mapValue!21215 () List!48518)

(assert (=> mapNonEmpty!21215 (= (arr!7704 (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) (store mapRest!21215 mapKey!21215 mapValue!21215))))

(declare-fun b!4323452 () Bool)

(declare-fun res!1771897 () Bool)

(declare-fun e!2689906 () Bool)

(assert (=> b!4323452 (=> res!1771897 e!2689906)))

(declare-fun lt!1540986 () ListLongMap!1183)

(declare-fun key!2048 () K!9644)

(declare-datatypes ((ListMap!1843 0))(
  ( (ListMap!1844 (toList!2567 List!48518)) )
))
(declare-fun contains!10452 (ListMap!1843 K!9644) Bool)

(declare-fun extractMap!372 (List!48519) ListMap!1843)

(assert (=> b!4323452 (= res!1771897 (contains!10452 (extractMap!372 (toList!2566 lt!1540986)) key!2048))))

(declare-fun e!2689901 () Bool)

(declare-fun e!2689902 () Bool)

(assert (=> b!4323453 (= e!2689901 (and e!2689902 tp!1327132))))

(declare-fun b!4323455 () Bool)

(declare-fun e!2689909 () List!48518)

(declare-fun lt!1540991 () (_ BitVec 64))

(declare-fun apply!11150 (MutLongMap!4759 (_ BitVec 64)) List!48518)

(assert (=> b!4323455 (= e!2689909 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1540991))))

(declare-fun b!4323456 () Bool)

(declare-fun e!2689917 () Bool)

(declare-fun e!2689911 () Bool)

(assert (=> b!4323456 (= e!2689917 e!2689911)))

(declare-fun res!1771895 () Bool)

(assert (=> b!4323456 (=> (not res!1771895) (not e!2689911))))

(declare-fun lt!1540989 () List!48518)

(declare-datatypes ((tuple2!47230 0))(
  ( (tuple2!47231 (_1!26902 Bool) (_2!26902 MutLongMap!4759)) )
))
(declare-fun update!536 (MutLongMap!4759 (_ BitVec 64) List!48518) tuple2!47230)

(assert (=> b!4323456 (= res!1771895 (_1!26902 (update!536 (v!42797 (underlying!9748 thiss!42308)) lt!1540991 lt!1540989)))))

(declare-fun v!9179 () V!9846)

(assert (=> b!4323456 (= lt!1540989 (Cons!48394 (tuple2!47227 key!2048 v!9179) lt!1540984))))

(assert (=> b!4323456 (= lt!1540984 e!2689909)))

(declare-fun c!735458 () Bool)

(declare-fun contains!10453 (MutLongMap!4759 (_ BitVec 64)) Bool)

(assert (=> b!4323456 (= c!735458 (contains!10453 (v!42797 (underlying!9748 thiss!42308)) lt!1540991))))

(declare-fun hash!1194 (Hashable!4675 K!9644) (_ BitVec 64))

(assert (=> b!4323456 (= lt!1540991 (hash!1194 (hashF!6947 thiss!42308) key!2048))))

(declare-fun b!4323457 () Bool)

(declare-fun e!2689904 () Bool)

(declare-fun tp!1327134 () Bool)

(assert (=> b!4323457 (= e!2689904 (and tp!1327134 mapRes!21215))))

(declare-fun condMapEmpty!21215 () Bool)

(declare-fun mapDefault!21215 () List!48518)

(assert (=> b!4323457 (= condMapEmpty!21215 (= (arr!7704 (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48518)) mapDefault!21215)))))

(declare-fun b!4323458 () Bool)

(declare-datatypes ((Unit!67880 0))(
  ( (Unit!67881) )
))
(declare-fun e!2689905 () Unit!67880)

(declare-fun lt!1540992 () Unit!67880)

(assert (=> b!4323458 (= e!2689905 lt!1540992)))

(declare-fun lt!1540983 () Unit!67880)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!235 (List!48519 (_ BitVec 64) List!48518 Hashable!4675) Unit!67880)

(assert (=> b!4323458 (= lt!1540983 (lemmaInLongMapAllKeySameHashThenForTuple!235 (toList!2566 lt!1540986) lt!1540991 lt!1540984 (hashF!6947 thiss!42308)))))

(declare-fun allKeysSameHash!250 (List!48518 (_ BitVec 64) Hashable!4675) Bool)

(assert (=> b!4323458 (allKeysSameHash!250 lt!1540984 lt!1540991 (hashF!6947 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!226 (List!48518 K!9644 (_ BitVec 64) Hashable!4675) Unit!67880)

(assert (=> b!4323458 (= lt!1540992 (lemmaRemovePairForKeyPreservesHash!226 lt!1540984 key!2048 lt!1540991 (hashF!6947 thiss!42308)))))

(declare-fun removePairForKey!273 (List!48518 K!9644) List!48518)

(assert (=> b!4323458 (allKeysSameHash!250 (removePairForKey!273 lt!1540984 key!2048) lt!1540991 (hashF!6947 thiss!42308))))

(declare-fun mapIsEmpty!21215 () Bool)

(assert (=> mapIsEmpty!21215 mapRes!21215))

(declare-fun b!4323459 () Bool)

(declare-fun e!2689913 () Bool)

(declare-fun e!2689910 () Bool)

(assert (=> b!4323459 (= e!2689913 e!2689910)))

(declare-fun b!4323460 () Bool)

(assert (=> b!4323460 (= e!2689916 e!2689917)))

(declare-fun res!1771888 () Bool)

(assert (=> b!4323460 (=> (not res!1771888) (not e!2689917))))

(declare-fun contains!10454 (MutableMap!4665 K!9644) Bool)

(assert (=> b!4323460 (= res!1771888 (not (contains!10454 thiss!42308 key!2048)))))

(declare-fun map!10422 (MutLongMap!4759) ListLongMap!1183)

(assert (=> b!4323460 (= lt!1540986 (map!10422 (v!42797 (underlying!9748 thiss!42308))))))

(declare-fun lt!1540987 () ListMap!1843)

(declare-fun map!10423 (MutableMap!4665) ListMap!1843)

(assert (=> b!4323460 (= lt!1540987 (map!10423 thiss!42308))))

(declare-fun b!4323461 () Bool)

(declare-fun e!2689914 () Bool)

(declare-fun apply!11151 (ListLongMap!1183 (_ BitVec 64)) List!48518)

(assert (=> b!4323461 (= e!2689914 (not (= lt!1540984 (apply!11151 lt!1540986 lt!1540991))))))

(declare-fun b!4323462 () Bool)

(declare-fun e!2689903 () Bool)

(assert (=> b!4323462 (= e!2689903 e!2689913)))

(declare-fun b!4323463 () Bool)

(declare-fun res!1771896 () Bool)

(assert (=> b!4323463 (=> res!1771896 e!2689906)))

(assert (=> b!4323463 (= res!1771896 (not (allKeysSameHashInMap!393 lt!1540986 (hashF!6947 thiss!42308))))))

(declare-fun b!4323464 () Bool)

(assert (=> b!4323464 (= e!2689909 Nil!48394)))

(declare-fun b!4323465 () Bool)

(declare-fun e!2689908 () Bool)

(assert (=> b!4323465 (= e!2689906 e!2689908)))

(declare-fun res!1771893 () Bool)

(assert (=> b!4323465 (=> res!1771893 e!2689908)))

(assert (=> b!4323465 (= res!1771893 e!2689915)))

(declare-fun res!1771889 () Bool)

(assert (=> b!4323465 (=> (not res!1771889) (not e!2689915))))

(assert (=> b!4323465 (= res!1771889 e!2689914)))

(declare-fun res!1771887 () Bool)

(assert (=> b!4323465 (=> res!1771887 e!2689914)))

(assert (=> b!4323465 (= res!1771887 (not lt!1540990))))

(declare-fun contains!10455 (ListLongMap!1183 (_ BitVec 64)) Bool)

(assert (=> b!4323465 (= lt!1540990 (contains!10455 lt!1540986 lt!1540991))))

(declare-fun tp!1327129 () Bool)

(declare-fun tp!1327130 () Bool)

(declare-fun array_inv!5547 (array!17262) Bool)

(declare-fun array_inv!5548 (array!17264) Bool)

(assert (=> b!4323466 (= e!2689910 (and tp!1327128 tp!1327130 tp!1327129 (array_inv!5547 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) (array_inv!5548 (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) e!2689904))))

(declare-fun b!4323467 () Bool)

(declare-fun res!1771890 () Bool)

(assert (=> b!4323467 (=> res!1771890 e!2689906)))

(assert (=> b!4323467 (= res!1771890 (not (allKeysSameHash!250 lt!1540989 lt!1540991 (hashF!6947 thiss!42308))))))

(declare-fun b!4323468 () Bool)

(declare-fun Unit!67882 () Unit!67880)

(assert (=> b!4323468 (= e!2689905 Unit!67882)))

(declare-fun b!4323454 () Bool)

(declare-fun noDuplicateKeys!265 (List!48518) Bool)

(assert (=> b!4323454 (= e!2689908 (noDuplicateKeys!265 lt!1540989))))

(declare-fun res!1771891 () Bool)

(assert (=> start!416218 (=> (not res!1771891) (not e!2689916))))

(get-info :version)

(assert (=> start!416218 (= res!1771891 ((_ is HashMap!4665) thiss!42308))))

(assert (=> start!416218 e!2689916))

(assert (=> start!416218 e!2689901))

(declare-fun tp_is_empty!24133 () Bool)

(assert (=> start!416218 tp_is_empty!24133))

(declare-fun tp_is_empty!24135 () Bool)

(assert (=> start!416218 tp_is_empty!24135))

(declare-fun b!4323469 () Bool)

(declare-fun lt!1540988 () MutLongMap!4759)

(assert (=> b!4323469 (= e!2689902 (and e!2689903 ((_ is LongMap!4759) lt!1540988)))))

(assert (=> b!4323469 (= lt!1540988 (v!42797 (underlying!9748 thiss!42308)))))

(declare-fun b!4323470 () Bool)

(assert (=> b!4323470 (= e!2689911 (not e!2689906))))

(declare-fun res!1771894 () Bool)

(assert (=> b!4323470 (=> res!1771894 e!2689906)))

(declare-fun lambda!134025 () Int)

(declare-fun forall!8820 (List!48519 Int) Bool)

(assert (=> b!4323470 (= res!1771894 (not (forall!8820 (toList!2566 lt!1540986) lambda!134025)))))

(assert (=> b!4323470 e!2689912))

(declare-fun res!1771892 () Bool)

(assert (=> b!4323470 (=> (not res!1771892) (not e!2689912))))

(assert (=> b!4323470 (= res!1771892 (forall!8820 (toList!2566 lt!1540985) lambda!134025))))

(declare-fun +!336 (ListLongMap!1183 tuple2!47228) ListLongMap!1183)

(assert (=> b!4323470 (= lt!1540985 (+!336 lt!1540986 (tuple2!47229 lt!1540991 lt!1540989)))))

(declare-fun lt!1540994 () Unit!67880)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!185 (ListLongMap!1183 (_ BitVec 64) List!48518 Hashable!4675) Unit!67880)

(assert (=> b!4323470 (= lt!1540994 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!185 lt!1540986 lt!1540991 lt!1540989 (hashF!6947 thiss!42308)))))

(declare-fun lt!1540993 () Unit!67880)

(assert (=> b!4323470 (= lt!1540993 e!2689905)))

(declare-fun c!735457 () Bool)

(declare-fun isEmpty!28126 (List!48518) Bool)

(assert (=> b!4323470 (= c!735457 (not (isEmpty!28126 lt!1540984)))))

(assert (= (and start!416218 res!1771891) b!4323450))

(assert (= (and b!4323450 res!1771898) b!4323460))

(assert (= (and b!4323460 res!1771888) b!4323456))

(assert (= (and b!4323456 c!735458) b!4323455))

(assert (= (and b!4323456 (not c!735458)) b!4323464))

(assert (= (and b!4323456 res!1771895) b!4323470))

(assert (= (and b!4323470 c!735457) b!4323458))

(assert (= (and b!4323470 (not c!735457)) b!4323468))

(assert (= (and b!4323470 res!1771892) b!4323449))

(assert (= (and b!4323470 (not res!1771894)) b!4323463))

(assert (= (and b!4323463 (not res!1771896)) b!4323467))

(assert (= (and b!4323467 (not res!1771890)) b!4323452))

(assert (= (and b!4323452 (not res!1771897)) b!4323465))

(assert (= (and b!4323465 (not res!1771887)) b!4323461))

(assert (= (and b!4323465 res!1771889) b!4323451))

(assert (= (and b!4323465 (not res!1771893)) b!4323454))

(assert (= (and b!4323457 condMapEmpty!21215) mapIsEmpty!21215))

(assert (= (and b!4323457 (not condMapEmpty!21215)) mapNonEmpty!21215))

(assert (= b!4323466 b!4323457))

(assert (= b!4323459 b!4323466))

(assert (= b!4323462 b!4323459))

(assert (= (and b!4323469 ((_ is LongMap!4759) (v!42797 (underlying!9748 thiss!42308)))) b!4323462))

(assert (= b!4323453 b!4323469))

(assert (= (and start!416218 ((_ is HashMap!4665) thiss!42308)) b!4323453))

(declare-fun m!4917913 () Bool)

(assert (=> b!4323450 m!4917913))

(declare-fun m!4917915 () Bool)

(assert (=> b!4323467 m!4917915))

(declare-fun m!4917917 () Bool)

(assert (=> b!4323455 m!4917917))

(declare-fun m!4917919 () Bool)

(assert (=> b!4323452 m!4917919))

(assert (=> b!4323452 m!4917919))

(declare-fun m!4917921 () Bool)

(assert (=> b!4323452 m!4917921))

(declare-fun m!4917923 () Bool)

(assert (=> b!4323465 m!4917923))

(declare-fun m!4917925 () Bool)

(assert (=> b!4323456 m!4917925))

(declare-fun m!4917927 () Bool)

(assert (=> b!4323456 m!4917927))

(declare-fun m!4917929 () Bool)

(assert (=> b!4323456 m!4917929))

(declare-fun m!4917931 () Bool)

(assert (=> mapNonEmpty!21215 m!4917931))

(declare-fun m!4917933 () Bool)

(assert (=> b!4323458 m!4917933))

(declare-fun m!4917935 () Bool)

(assert (=> b!4323458 m!4917935))

(declare-fun m!4917937 () Bool)

(assert (=> b!4323458 m!4917937))

(declare-fun m!4917939 () Bool)

(assert (=> b!4323458 m!4917939))

(assert (=> b!4323458 m!4917933))

(declare-fun m!4917941 () Bool)

(assert (=> b!4323458 m!4917941))

(declare-fun m!4917943 () Bool)

(assert (=> b!4323454 m!4917943))

(declare-fun m!4917945 () Bool)

(assert (=> b!4323466 m!4917945))

(declare-fun m!4917947 () Bool)

(assert (=> b!4323466 m!4917947))

(declare-fun m!4917949 () Bool)

(assert (=> b!4323460 m!4917949))

(declare-fun m!4917951 () Bool)

(assert (=> b!4323460 m!4917951))

(declare-fun m!4917953 () Bool)

(assert (=> b!4323460 m!4917953))

(declare-fun m!4917955 () Bool)

(assert (=> b!4323470 m!4917955))

(declare-fun m!4917957 () Bool)

(assert (=> b!4323470 m!4917957))

(declare-fun m!4917959 () Bool)

(assert (=> b!4323470 m!4917959))

(declare-fun m!4917961 () Bool)

(assert (=> b!4323470 m!4917961))

(declare-fun m!4917963 () Bool)

(assert (=> b!4323470 m!4917963))

(declare-fun m!4917965 () Bool)

(assert (=> b!4323461 m!4917965))

(declare-fun m!4917967 () Bool)

(assert (=> b!4323463 m!4917967))

(declare-fun m!4917969 () Bool)

(assert (=> b!4323449 m!4917969))

(check-sat (not b_next!129699) (not b!4323456) tp_is_empty!24133 (not b!4323454) b_and!340559 (not b!4323455) (not mapNonEmpty!21215) (not b!4323460) tp_is_empty!24135 (not b!4323449) (not b!4323466) (not b!4323470) b_and!340561 (not b!4323465) (not b_next!129701) (not b!4323450) (not b!4323457) (not b!4323461) (not b!4323452) (not b!4323463) (not b!4323467) (not b!4323458))
(check-sat b_and!340559 b_and!340561 (not b_next!129701) (not b_next!129699))
(get-model)

(declare-fun d!1271288 () Bool)

(declare-fun e!2689920 () Bool)

(assert (=> d!1271288 e!2689920))

(declare-fun c!735461 () Bool)

(assert (=> d!1271288 (= c!735461 (contains!10453 (v!42797 (underlying!9748 thiss!42308)) lt!1540991))))

(declare-fun lt!1540997 () List!48518)

(declare-fun apply!11152 (LongMapFixedSize!9518 (_ BitVec 64)) List!48518)

(assert (=> d!1271288 (= lt!1540997 (apply!11152 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991))))

(declare-fun valid!3772 (MutLongMap!4759) Bool)

(assert (=> d!1271288 (valid!3772 (v!42797 (underlying!9748 thiss!42308)))))

(assert (=> d!1271288 (= (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1540991) lt!1540997)))

(declare-fun b!4323475 () Bool)

(declare-datatypes ((Option!10309 0))(
  ( (None!10308) (Some!10308 (v!42802 List!48518)) )
))
(declare-fun get!15682 (Option!10309) List!48518)

(declare-fun getValueByKey!303 (List!48519 (_ BitVec 64)) Option!10309)

(assert (=> b!4323475 (= e!2689920 (= lt!1540997 (get!15682 (getValueByKey!303 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991))))))

(declare-fun b!4323476 () Bool)

(declare-fun dynLambda!20513 (Int (_ BitVec 64)) List!48518)

(assert (=> b!4323476 (= e!2689920 (= lt!1540997 (dynLambda!20513 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991)))))

(assert (=> b!4323476 ((_ is LongMap!4759) (v!42797 (underlying!9748 thiss!42308)))))

(assert (= (and d!1271288 c!735461) b!4323475))

(assert (= (and d!1271288 (not c!735461)) b!4323476))

(declare-fun b_lambda!127411 () Bool)

(assert (=> (not b_lambda!127411) (not b!4323476)))

(declare-fun t!355411 () Bool)

(declare-fun tb!257375 () Bool)

(assert (=> (and b!4323466 (= (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) t!355411) tb!257375))

(assert (=> b!4323476 t!355411))

(declare-fun result!314900 () Bool)

(declare-fun b_and!340563 () Bool)

(assert (= b_and!340559 (and (=> t!355411 result!314900) b_and!340563)))

(assert (=> d!1271288 m!4917927))

(declare-fun m!4917971 () Bool)

(assert (=> d!1271288 m!4917971))

(declare-fun m!4917973 () Bool)

(assert (=> d!1271288 m!4917973))

(assert (=> b!4323475 m!4917951))

(declare-fun m!4917975 () Bool)

(assert (=> b!4323475 m!4917975))

(assert (=> b!4323475 m!4917975))

(declare-fun m!4917977 () Bool)

(assert (=> b!4323475 m!4917977))

(declare-fun m!4917979 () Bool)

(assert (=> b!4323476 m!4917979))

(assert (=> b!4323455 d!1271288))

(declare-fun d!1271290 () Bool)

(declare-fun e!2689926 () Bool)

(assert (=> d!1271290 e!2689926))

(declare-fun res!1771901 () Bool)

(assert (=> d!1271290 (=> res!1771901 e!2689926)))

(declare-fun lt!1541009 () Bool)

(assert (=> d!1271290 (= res!1771901 (not lt!1541009))))

(declare-fun lt!1541008 () Bool)

(assert (=> d!1271290 (= lt!1541009 lt!1541008)))

(declare-fun lt!1541006 () Unit!67880)

(declare-fun e!2689925 () Unit!67880)

(assert (=> d!1271290 (= lt!1541006 e!2689925)))

(declare-fun c!735464 () Bool)

(assert (=> d!1271290 (= c!735464 lt!1541008)))

(declare-fun containsKey!409 (List!48519 (_ BitVec 64)) Bool)

(assert (=> d!1271290 (= lt!1541008 (containsKey!409 (toList!2566 lt!1540986) lt!1540991))))

(assert (=> d!1271290 (= (contains!10455 lt!1540986 lt!1540991) lt!1541009)))

(declare-fun b!4323483 () Bool)

(declare-fun lt!1541007 () Unit!67880)

(assert (=> b!4323483 (= e!2689925 lt!1541007)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!222 (List!48519 (_ BitVec 64)) Unit!67880)

(assert (=> b!4323483 (= lt!1541007 (lemmaContainsKeyImpliesGetValueByKeyDefined!222 (toList!2566 lt!1540986) lt!1540991))))

(declare-fun isDefined!7610 (Option!10309) Bool)

(assert (=> b!4323483 (isDefined!7610 (getValueByKey!303 (toList!2566 lt!1540986) lt!1540991))))

(declare-fun b!4323484 () Bool)

(declare-fun Unit!67883 () Unit!67880)

(assert (=> b!4323484 (= e!2689925 Unit!67883)))

(declare-fun b!4323485 () Bool)

(assert (=> b!4323485 (= e!2689926 (isDefined!7610 (getValueByKey!303 (toList!2566 lt!1540986) lt!1540991)))))

(assert (= (and d!1271290 c!735464) b!4323483))

(assert (= (and d!1271290 (not c!735464)) b!4323484))

(assert (= (and d!1271290 (not res!1771901)) b!4323485))

(declare-fun m!4917981 () Bool)

(assert (=> d!1271290 m!4917981))

(declare-fun m!4917983 () Bool)

(assert (=> b!4323483 m!4917983))

(declare-fun m!4917985 () Bool)

(assert (=> b!4323483 m!4917985))

(assert (=> b!4323483 m!4917985))

(declare-fun m!4917987 () Bool)

(assert (=> b!4323483 m!4917987))

(assert (=> b!4323485 m!4917985))

(assert (=> b!4323485 m!4917985))

(assert (=> b!4323485 m!4917987))

(assert (=> b!4323465 d!1271290))

(declare-fun d!1271292 () Bool)

(declare-fun e!2689941 () Bool)

(assert (=> d!1271292 e!2689941))

(declare-fun res!1771910 () Bool)

(assert (=> d!1271292 (=> (not res!1771910) (not e!2689941))))

(declare-fun lt!1541018 () tuple2!47230)

(assert (=> d!1271292 (= res!1771910 ((_ is LongMap!4759) (_2!26902 lt!1541018)))))

(declare-fun e!2689937 () tuple2!47230)

(assert (=> d!1271292 (= lt!1541018 e!2689937)))

(declare-fun c!735473 () Bool)

(declare-fun lt!1541019 () tuple2!47230)

(assert (=> d!1271292 (= c!735473 (_1!26902 lt!1541019))))

(declare-fun e!2689939 () tuple2!47230)

(assert (=> d!1271292 (= lt!1541019 e!2689939)))

(declare-fun c!735471 () Bool)

(declare-fun imbalanced!83 (MutLongMap!4759) Bool)

(assert (=> d!1271292 (= c!735471 (imbalanced!83 (v!42797 (underlying!9748 thiss!42308))))))

(assert (=> d!1271292 (valid!3772 (v!42797 (underlying!9748 thiss!42308)))))

(assert (=> d!1271292 (= (update!536 (v!42797 (underlying!9748 thiss!42308)) lt!1540991 lt!1540989) lt!1541018)))

(declare-fun b!4323504 () Bool)

(declare-fun call!299881 () ListLongMap!1183)

(declare-fun call!299882 () ListLongMap!1183)

(declare-fun e!2689940 () Bool)

(assert (=> b!4323504 (= e!2689940 (= call!299882 (+!336 call!299881 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun b!4323505 () Bool)

(declare-datatypes ((tuple2!47232 0))(
  ( (tuple2!47233 (_1!26903 Bool) (_2!26903 LongMapFixedSize!9518)) )
))
(declare-fun lt!1541021 () tuple2!47232)

(assert (=> b!4323505 (= e!2689937 (tuple2!47231 (_1!26903 lt!1541021) (LongMap!4759 (Cell!18846 (_2!26903 lt!1541021)))))))

(declare-fun update!537 (LongMapFixedSize!9518 (_ BitVec 64) List!48518) tuple2!47232)

(assert (=> b!4323505 (= lt!1541021 (update!537 (v!42796 (underlying!9747 (_2!26902 lt!1541019))) lt!1540991 lt!1540989))))

(declare-fun b!4323506 () Bool)

(declare-fun e!2689938 () Bool)

(assert (=> b!4323506 (= e!2689941 e!2689938)))

(declare-fun c!735472 () Bool)

(assert (=> b!4323506 (= c!735472 (_1!26902 lt!1541018))))

(declare-fun b!4323507 () Bool)

(declare-fun lt!1541020 () tuple2!47230)

(assert (=> b!4323507 (= e!2689939 (tuple2!47231 (_1!26902 lt!1541020) (_2!26902 lt!1541020)))))

(declare-fun repack!87 (MutLongMap!4759) tuple2!47230)

(assert (=> b!4323507 (= lt!1541020 (repack!87 (v!42797 (underlying!9748 thiss!42308))))))

(declare-fun bm!299876 () Bool)

(assert (=> bm!299876 (= call!299882 (map!10422 (_2!26902 lt!1541018)))))

(declare-fun bm!299877 () Bool)

(assert (=> bm!299877 (= call!299881 (map!10422 (v!42797 (underlying!9748 thiss!42308))))))

(declare-fun b!4323508 () Bool)

(declare-fun res!1771908 () Bool)

(assert (=> b!4323508 (=> (not res!1771908) (not e!2689941))))

(assert (=> b!4323508 (= res!1771908 (valid!3772 (_2!26902 lt!1541018)))))

(declare-fun b!4323509 () Bool)

(assert (=> b!4323509 (= e!2689938 e!2689940)))

(declare-fun res!1771909 () Bool)

(assert (=> b!4323509 (= res!1771909 (contains!10455 call!299882 lt!1540991))))

(assert (=> b!4323509 (=> (not res!1771909) (not e!2689940))))

(declare-fun b!4323510 () Bool)

(assert (=> b!4323510 (= e!2689937 (tuple2!47231 false (_2!26902 lt!1541019)))))

(declare-fun b!4323511 () Bool)

(assert (=> b!4323511 (= e!2689938 (= call!299882 call!299881))))

(declare-fun b!4323512 () Bool)

(assert (=> b!4323512 (= e!2689939 (tuple2!47231 true (v!42797 (underlying!9748 thiss!42308))))))

(assert (= (and d!1271292 c!735471) b!4323507))

(assert (= (and d!1271292 (not c!735471)) b!4323512))

(assert (= (and d!1271292 c!735473) b!4323505))

(assert (= (and d!1271292 (not c!735473)) b!4323510))

(assert (= (and d!1271292 res!1771910) b!4323508))

(assert (= (and b!4323508 res!1771908) b!4323506))

(assert (= (and b!4323506 c!735472) b!4323509))

(assert (= (and b!4323506 (not c!735472)) b!4323511))

(assert (= (and b!4323509 res!1771909) b!4323504))

(assert (= (or b!4323509 b!4323504 b!4323511) bm!299876))

(assert (= (or b!4323504 b!4323511) bm!299877))

(declare-fun m!4917989 () Bool)

(assert (=> d!1271292 m!4917989))

(assert (=> d!1271292 m!4917973))

(assert (=> bm!299877 m!4917951))

(declare-fun m!4917991 () Bool)

(assert (=> b!4323509 m!4917991))

(declare-fun m!4917993 () Bool)

(assert (=> b!4323504 m!4917993))

(declare-fun m!4917995 () Bool)

(assert (=> b!4323507 m!4917995))

(declare-fun m!4917997 () Bool)

(assert (=> bm!299876 m!4917997))

(declare-fun m!4917999 () Bool)

(assert (=> b!4323508 m!4917999))

(declare-fun m!4918001 () Bool)

(assert (=> b!4323505 m!4918001))

(assert (=> b!4323456 d!1271292))

(declare-fun d!1271294 () Bool)

(declare-fun lt!1541024 () Bool)

(assert (=> d!1271294 (= lt!1541024 (contains!10455 (map!10422 (v!42797 (underlying!9748 thiss!42308))) lt!1540991))))

(declare-fun contains!10456 (LongMapFixedSize!9518 (_ BitVec 64)) Bool)

(assert (=> d!1271294 (= lt!1541024 (contains!10456 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991))))

(assert (=> d!1271294 (valid!3772 (v!42797 (underlying!9748 thiss!42308)))))

(assert (=> d!1271294 (= (contains!10453 (v!42797 (underlying!9748 thiss!42308)) lt!1540991) lt!1541024)))

(declare-fun bs!606936 () Bool)

(assert (= bs!606936 d!1271294))

(assert (=> bs!606936 m!4917951))

(assert (=> bs!606936 m!4917951))

(declare-fun m!4918003 () Bool)

(assert (=> bs!606936 m!4918003))

(declare-fun m!4918005 () Bool)

(assert (=> bs!606936 m!4918005))

(assert (=> bs!606936 m!4917973))

(assert (=> b!4323456 d!1271294))

(declare-fun d!1271296 () Bool)

(declare-fun hash!1198 (Hashable!4675 K!9644) (_ BitVec 64))

(assert (=> d!1271296 (= (hash!1194 (hashF!6947 thiss!42308) key!2048) (hash!1198 (hashF!6947 thiss!42308) key!2048))))

(declare-fun bs!606937 () Bool)

(assert (= bs!606937 d!1271296))

(declare-fun m!4918007 () Bool)

(assert (=> bs!606937 m!4918007))

(assert (=> b!4323456 d!1271296))

(declare-fun d!1271298 () Bool)

(assert (=> d!1271298 (= (array_inv!5547 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) (bvsge (size!35742 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4323466 d!1271298))

(declare-fun d!1271300 () Bool)

(assert (=> d!1271300 (= (array_inv!5548 (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) (bvsge (size!35743 (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4323466 d!1271300))

(declare-fun d!1271302 () Bool)

(assert (=> d!1271302 true))

(assert (=> d!1271302 true))

(declare-fun lambda!134028 () Int)

(declare-fun forall!8821 (List!48518 Int) Bool)

(assert (=> d!1271302 (= (allKeysSameHash!250 lt!1540989 lt!1540991 (hashF!6947 thiss!42308)) (forall!8821 lt!1540989 lambda!134028))))

(declare-fun bs!606938 () Bool)

(assert (= bs!606938 d!1271302))

(declare-fun m!4918009 () Bool)

(assert (=> bs!606938 m!4918009))

(assert (=> b!4323467 d!1271302))

(declare-fun bs!606939 () Bool)

(declare-fun d!1271304 () Bool)

(assert (= bs!606939 (and d!1271304 d!1271302)))

(declare-fun lambda!134029 () Int)

(assert (=> bs!606939 (= lambda!134029 lambda!134028)))

(assert (=> d!1271304 true))

(assert (=> d!1271304 true))

(assert (=> d!1271304 (= (allKeysSameHash!250 lt!1540984 lt!1540991 (hashF!6947 thiss!42308)) (forall!8821 lt!1540984 lambda!134029))))

(declare-fun bs!606940 () Bool)

(assert (= bs!606940 d!1271304))

(declare-fun m!4918011 () Bool)

(assert (=> bs!606940 m!4918011))

(assert (=> b!4323458 d!1271304))

(declare-fun bs!606941 () Bool)

(declare-fun d!1271306 () Bool)

(assert (= bs!606941 (and d!1271306 d!1271302)))

(declare-fun lambda!134030 () Int)

(assert (=> bs!606941 (= lambda!134030 lambda!134028)))

(declare-fun bs!606942 () Bool)

(assert (= bs!606942 (and d!1271306 d!1271304)))

(assert (=> bs!606942 (= lambda!134030 lambda!134029)))

(assert (=> d!1271306 true))

(assert (=> d!1271306 true))

(assert (=> d!1271306 (= (allKeysSameHash!250 (removePairForKey!273 lt!1540984 key!2048) lt!1540991 (hashF!6947 thiss!42308)) (forall!8821 (removePairForKey!273 lt!1540984 key!2048) lambda!134030))))

(declare-fun bs!606943 () Bool)

(assert (= bs!606943 d!1271306))

(assert (=> bs!606943 m!4917933))

(declare-fun m!4918013 () Bool)

(assert (=> bs!606943 m!4918013))

(assert (=> b!4323458 d!1271306))

(declare-fun d!1271308 () Bool)

(assert (=> d!1271308 (allKeysSameHash!250 (removePairForKey!273 lt!1540984 key!2048) lt!1540991 (hashF!6947 thiss!42308))))

(declare-fun lt!1541027 () Unit!67880)

(declare-fun choose!26422 (List!48518 K!9644 (_ BitVec 64) Hashable!4675) Unit!67880)

(assert (=> d!1271308 (= lt!1541027 (choose!26422 lt!1540984 key!2048 lt!1540991 (hashF!6947 thiss!42308)))))

(assert (=> d!1271308 (noDuplicateKeys!265 lt!1540984)))

(assert (=> d!1271308 (= (lemmaRemovePairForKeyPreservesHash!226 lt!1540984 key!2048 lt!1540991 (hashF!6947 thiss!42308)) lt!1541027)))

(declare-fun bs!606944 () Bool)

(assert (= bs!606944 d!1271308))

(assert (=> bs!606944 m!4917933))

(assert (=> bs!606944 m!4917933))

(assert (=> bs!606944 m!4917941))

(declare-fun m!4918015 () Bool)

(assert (=> bs!606944 m!4918015))

(declare-fun m!4918017 () Bool)

(assert (=> bs!606944 m!4918017))

(assert (=> b!4323458 d!1271308))

(declare-fun b!4323525 () Bool)

(declare-fun e!2689946 () List!48518)

(assert (=> b!4323525 (= e!2689946 (t!355408 lt!1540984))))

(declare-fun b!4323526 () Bool)

(declare-fun e!2689947 () List!48518)

(assert (=> b!4323526 (= e!2689946 e!2689947)))

(declare-fun c!735478 () Bool)

(assert (=> b!4323526 (= c!735478 ((_ is Cons!48394) lt!1540984))))

(declare-fun d!1271310 () Bool)

(declare-fun lt!1541030 () List!48518)

(declare-fun containsKey!410 (List!48518 K!9644) Bool)

(assert (=> d!1271310 (not (containsKey!410 lt!1541030 key!2048))))

(assert (=> d!1271310 (= lt!1541030 e!2689946)))

(declare-fun c!735479 () Bool)

(assert (=> d!1271310 (= c!735479 (and ((_ is Cons!48394) lt!1540984) (= (_1!26900 (h!53857 lt!1540984)) key!2048)))))

(assert (=> d!1271310 (noDuplicateKeys!265 lt!1540984)))

(assert (=> d!1271310 (= (removePairForKey!273 lt!1540984 key!2048) lt!1541030)))

(declare-fun b!4323527 () Bool)

(assert (=> b!4323527 (= e!2689947 (Cons!48394 (h!53857 lt!1540984) (removePairForKey!273 (t!355408 lt!1540984) key!2048)))))

(declare-fun b!4323528 () Bool)

(assert (=> b!4323528 (= e!2689947 Nil!48394)))

(assert (= (and d!1271310 c!735479) b!4323525))

(assert (= (and d!1271310 (not c!735479)) b!4323526))

(assert (= (and b!4323526 c!735478) b!4323527))

(assert (= (and b!4323526 (not c!735478)) b!4323528))

(declare-fun m!4918019 () Bool)

(assert (=> d!1271310 m!4918019))

(assert (=> d!1271310 m!4918017))

(declare-fun m!4918021 () Bool)

(assert (=> b!4323527 m!4918021))

(assert (=> b!4323458 d!1271310))

(declare-fun bs!606945 () Bool)

(declare-fun d!1271312 () Bool)

(assert (= bs!606945 (and d!1271312 b!4323470)))

(declare-fun lambda!134033 () Int)

(assert (=> bs!606945 (not (= lambda!134033 lambda!134025))))

(assert (=> d!1271312 true))

(assert (=> d!1271312 (allKeysSameHash!250 lt!1540984 lt!1540991 (hashF!6947 thiss!42308))))

(declare-fun lt!1541033 () Unit!67880)

(declare-fun choose!26423 (List!48519 (_ BitVec 64) List!48518 Hashable!4675) Unit!67880)

(assert (=> d!1271312 (= lt!1541033 (choose!26423 (toList!2566 lt!1540986) lt!1540991 lt!1540984 (hashF!6947 thiss!42308)))))

(assert (=> d!1271312 (forall!8820 (toList!2566 lt!1540986) lambda!134033)))

(assert (=> d!1271312 (= (lemmaInLongMapAllKeySameHashThenForTuple!235 (toList!2566 lt!1540986) lt!1540991 lt!1540984 (hashF!6947 thiss!42308)) lt!1541033)))

(declare-fun bs!606946 () Bool)

(assert (= bs!606946 d!1271312))

(assert (=> bs!606946 m!4917937))

(declare-fun m!4918023 () Bool)

(assert (=> bs!606946 m!4918023))

(declare-fun m!4918025 () Bool)

(assert (=> bs!606946 m!4918025))

(assert (=> b!4323458 d!1271312))

(declare-fun bs!606947 () Bool)

(declare-fun d!1271314 () Bool)

(assert (= bs!606947 (and d!1271314 b!4323470)))

(declare-fun lambda!134036 () Int)

(assert (=> bs!606947 (not (= lambda!134036 lambda!134025))))

(declare-fun bs!606948 () Bool)

(assert (= bs!606948 (and d!1271314 d!1271312)))

(assert (=> bs!606948 (= lambda!134036 lambda!134033)))

(assert (=> d!1271314 true))

(assert (=> d!1271314 (= (allKeysSameHashInMap!393 lt!1540985 (hashF!6947 thiss!42308)) (forall!8820 (toList!2566 lt!1540985) lambda!134036))))

(declare-fun bs!606949 () Bool)

(assert (= bs!606949 d!1271314))

(declare-fun m!4918027 () Bool)

(assert (=> bs!606949 m!4918027))

(assert (=> b!4323449 d!1271314))

(declare-fun bs!606950 () Bool)

(declare-fun b!4323535 () Bool)

(assert (= bs!606950 (and b!4323535 b!4323470)))

(declare-fun lambda!134039 () Int)

(assert (=> bs!606950 (= lambda!134039 lambda!134025)))

(declare-fun bs!606951 () Bool)

(assert (= bs!606951 (and b!4323535 d!1271312)))

(assert (=> bs!606951 (not (= lambda!134039 lambda!134033))))

(declare-fun bs!606952 () Bool)

(assert (= bs!606952 (and b!4323535 d!1271314)))

(assert (=> bs!606952 (not (= lambda!134039 lambda!134036))))

(declare-fun d!1271316 () Bool)

(declare-fun res!1771915 () Bool)

(declare-fun e!2689950 () Bool)

(assert (=> d!1271316 (=> (not res!1771915) (not e!2689950))))

(assert (=> d!1271316 (= res!1771915 (valid!3772 (v!42797 (underlying!9748 thiss!42308))))))

(assert (=> d!1271316 (= (valid!3771 thiss!42308) e!2689950)))

(declare-fun res!1771916 () Bool)

(assert (=> b!4323535 (=> (not res!1771916) (not e!2689950))))

(assert (=> b!4323535 (= res!1771916 (forall!8820 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lambda!134039))))

(declare-fun b!4323536 () Bool)

(assert (=> b!4323536 (= e!2689950 (allKeysSameHashInMap!393 (map!10422 (v!42797 (underlying!9748 thiss!42308))) (hashF!6947 thiss!42308)))))

(assert (= (and d!1271316 res!1771915) b!4323535))

(assert (= (and b!4323535 res!1771916) b!4323536))

(assert (=> d!1271316 m!4917973))

(assert (=> b!4323535 m!4917951))

(declare-fun m!4918029 () Bool)

(assert (=> b!4323535 m!4918029))

(assert (=> b!4323536 m!4917951))

(assert (=> b!4323536 m!4917951))

(declare-fun m!4918031 () Bool)

(assert (=> b!4323536 m!4918031))

(assert (=> b!4323450 d!1271316))

(declare-fun d!1271318 () Bool)

(declare-fun res!1771921 () Bool)

(declare-fun e!2689955 () Bool)

(assert (=> d!1271318 (=> res!1771921 e!2689955)))

(assert (=> d!1271318 (= res!1771921 ((_ is Nil!48395) (toList!2566 lt!1540985)))))

(assert (=> d!1271318 (= (forall!8820 (toList!2566 lt!1540985) lambda!134025) e!2689955)))

(declare-fun b!4323541 () Bool)

(declare-fun e!2689956 () Bool)

(assert (=> b!4323541 (= e!2689955 e!2689956)))

(declare-fun res!1771922 () Bool)

(assert (=> b!4323541 (=> (not res!1771922) (not e!2689956))))

(declare-fun dynLambda!20514 (Int tuple2!47228) Bool)

(assert (=> b!4323541 (= res!1771922 (dynLambda!20514 lambda!134025 (h!53858 (toList!2566 lt!1540985))))))

(declare-fun b!4323542 () Bool)

(assert (=> b!4323542 (= e!2689956 (forall!8820 (t!355409 (toList!2566 lt!1540985)) lambda!134025))))

(assert (= (and d!1271318 (not res!1771921)) b!4323541))

(assert (= (and b!4323541 res!1771922) b!4323542))

(declare-fun b_lambda!127413 () Bool)

(assert (=> (not b_lambda!127413) (not b!4323541)))

(declare-fun m!4918033 () Bool)

(assert (=> b!4323541 m!4918033))

(declare-fun m!4918035 () Bool)

(assert (=> b!4323542 m!4918035))

(assert (=> b!4323470 d!1271318))

(declare-fun d!1271320 () Bool)

(declare-fun e!2689959 () Bool)

(assert (=> d!1271320 e!2689959))

(declare-fun res!1771927 () Bool)

(assert (=> d!1271320 (=> (not res!1771927) (not e!2689959))))

(declare-fun lt!1541044 () ListLongMap!1183)

(assert (=> d!1271320 (= res!1771927 (contains!10455 lt!1541044 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun lt!1541042 () List!48519)

(assert (=> d!1271320 (= lt!1541044 (ListLongMap!1184 lt!1541042))))

(declare-fun lt!1541043 () Unit!67880)

(declare-fun lt!1541045 () Unit!67880)

(assert (=> d!1271320 (= lt!1541043 lt!1541045)))

(assert (=> d!1271320 (= (getValueByKey!303 lt!1541042 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))) (Some!10308 (_2!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun lemmaContainsTupThenGetReturnValue!99 (List!48519 (_ BitVec 64) List!48518) Unit!67880)

(assert (=> d!1271320 (= lt!1541045 (lemmaContainsTupThenGetReturnValue!99 lt!1541042 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)) (_2!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun insertStrictlySorted!59 (List!48519 (_ BitVec 64) List!48518) List!48519)

(assert (=> d!1271320 (= lt!1541042 (insertStrictlySorted!59 (toList!2566 lt!1540986) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)) (_2!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(assert (=> d!1271320 (= (+!336 lt!1540986 (tuple2!47229 lt!1540991 lt!1540989)) lt!1541044)))

(declare-fun b!4323547 () Bool)

(declare-fun res!1771928 () Bool)

(assert (=> b!4323547 (=> (not res!1771928) (not e!2689959))))

(assert (=> b!4323547 (= res!1771928 (= (getValueByKey!303 (toList!2566 lt!1541044) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))) (Some!10308 (_2!26901 (tuple2!47229 lt!1540991 lt!1540989)))))))

(declare-fun b!4323548 () Bool)

(declare-fun contains!10457 (List!48519 tuple2!47228) Bool)

(assert (=> b!4323548 (= e!2689959 (contains!10457 (toList!2566 lt!1541044) (tuple2!47229 lt!1540991 lt!1540989)))))

(assert (= (and d!1271320 res!1771927) b!4323547))

(assert (= (and b!4323547 res!1771928) b!4323548))

(declare-fun m!4918037 () Bool)

(assert (=> d!1271320 m!4918037))

(declare-fun m!4918039 () Bool)

(assert (=> d!1271320 m!4918039))

(declare-fun m!4918041 () Bool)

(assert (=> d!1271320 m!4918041))

(declare-fun m!4918043 () Bool)

(assert (=> d!1271320 m!4918043))

(declare-fun m!4918045 () Bool)

(assert (=> b!4323547 m!4918045))

(declare-fun m!4918047 () Bool)

(assert (=> b!4323548 m!4918047))

(assert (=> b!4323470 d!1271320))

(declare-fun bs!606953 () Bool)

(declare-fun d!1271322 () Bool)

(assert (= bs!606953 (and d!1271322 b!4323470)))

(declare-fun lambda!134044 () Int)

(assert (=> bs!606953 (= lambda!134044 lambda!134025)))

(declare-fun bs!606954 () Bool)

(assert (= bs!606954 (and d!1271322 d!1271312)))

(assert (=> bs!606954 (not (= lambda!134044 lambda!134033))))

(declare-fun bs!606955 () Bool)

(assert (= bs!606955 (and d!1271322 d!1271314)))

(assert (=> bs!606955 (not (= lambda!134044 lambda!134036))))

(declare-fun bs!606956 () Bool)

(assert (= bs!606956 (and d!1271322 b!4323535)))

(assert (=> bs!606956 (= lambda!134044 lambda!134039)))

(declare-fun e!2689962 () Bool)

(assert (=> d!1271322 e!2689962))

(declare-fun res!1771931 () Bool)

(assert (=> d!1271322 (=> (not res!1771931) (not e!2689962))))

(declare-fun lt!1541051 () ListLongMap!1183)

(assert (=> d!1271322 (= res!1771931 (forall!8820 (toList!2566 lt!1541051) lambda!134044))))

(assert (=> d!1271322 (= lt!1541051 (+!336 lt!1540986 (tuple2!47229 lt!1540991 lt!1540989)))))

(declare-fun lt!1541050 () Unit!67880)

(declare-fun choose!26424 (ListLongMap!1183 (_ BitVec 64) List!48518 Hashable!4675) Unit!67880)

(assert (=> d!1271322 (= lt!1541050 (choose!26424 lt!1540986 lt!1540991 lt!1540989 (hashF!6947 thiss!42308)))))

(assert (=> d!1271322 (forall!8820 (toList!2566 lt!1540986) lambda!134044)))

(assert (=> d!1271322 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!185 lt!1540986 lt!1540991 lt!1540989 (hashF!6947 thiss!42308)) lt!1541050)))

(declare-fun b!4323551 () Bool)

(assert (=> b!4323551 (= e!2689962 (allKeysSameHashInMap!393 lt!1541051 (hashF!6947 thiss!42308)))))

(assert (= (and d!1271322 res!1771931) b!4323551))

(declare-fun m!4918049 () Bool)

(assert (=> d!1271322 m!4918049))

(assert (=> d!1271322 m!4917955))

(declare-fun m!4918051 () Bool)

(assert (=> d!1271322 m!4918051))

(declare-fun m!4918053 () Bool)

(assert (=> d!1271322 m!4918053))

(declare-fun m!4918055 () Bool)

(assert (=> b!4323551 m!4918055))

(assert (=> b!4323470 d!1271322))

(declare-fun d!1271324 () Bool)

(assert (=> d!1271324 (= (isEmpty!28126 lt!1540984) ((_ is Nil!48394) lt!1540984))))

(assert (=> b!4323470 d!1271324))

(declare-fun d!1271326 () Bool)

(declare-fun res!1771932 () Bool)

(declare-fun e!2689963 () Bool)

(assert (=> d!1271326 (=> res!1771932 e!2689963)))

(assert (=> d!1271326 (= res!1771932 ((_ is Nil!48395) (toList!2566 lt!1540986)))))

(assert (=> d!1271326 (= (forall!8820 (toList!2566 lt!1540986) lambda!134025) e!2689963)))

(declare-fun b!4323552 () Bool)

(declare-fun e!2689964 () Bool)

(assert (=> b!4323552 (= e!2689963 e!2689964)))

(declare-fun res!1771933 () Bool)

(assert (=> b!4323552 (=> (not res!1771933) (not e!2689964))))

(assert (=> b!4323552 (= res!1771933 (dynLambda!20514 lambda!134025 (h!53858 (toList!2566 lt!1540986))))))

(declare-fun b!4323553 () Bool)

(assert (=> b!4323553 (= e!2689964 (forall!8820 (t!355409 (toList!2566 lt!1540986)) lambda!134025))))

(assert (= (and d!1271326 (not res!1771932)) b!4323552))

(assert (= (and b!4323552 res!1771933) b!4323553))

(declare-fun b_lambda!127415 () Bool)

(assert (=> (not b_lambda!127415) (not b!4323552)))

(declare-fun m!4918057 () Bool)

(assert (=> b!4323552 m!4918057))

(declare-fun m!4918059 () Bool)

(assert (=> b!4323553 m!4918059))

(assert (=> b!4323470 d!1271326))

(declare-fun bs!606957 () Bool)

(declare-fun b!4323576 () Bool)

(assert (= bs!606957 (and b!4323576 b!4323470)))

(declare-fun lambda!134047 () Int)

(assert (=> bs!606957 (= lambda!134047 lambda!134025)))

(declare-fun bs!606958 () Bool)

(assert (= bs!606958 (and b!4323576 d!1271322)))

(assert (=> bs!606958 (= lambda!134047 lambda!134044)))

(declare-fun bs!606959 () Bool)

(assert (= bs!606959 (and b!4323576 b!4323535)))

(assert (=> bs!606959 (= lambda!134047 lambda!134039)))

(declare-fun bs!606960 () Bool)

(assert (= bs!606960 (and b!4323576 d!1271312)))

(assert (=> bs!606960 (not (= lambda!134047 lambda!134033))))

(declare-fun bs!606961 () Bool)

(assert (= bs!606961 (and b!4323576 d!1271314)))

(assert (=> bs!606961 (not (= lambda!134047 lambda!134036))))

(declare-fun d!1271328 () Bool)

(declare-fun lt!1541106 () Bool)

(assert (=> d!1271328 (= lt!1541106 (contains!10452 (map!10423 thiss!42308) key!2048))))

(declare-fun e!2689980 () Bool)

(assert (=> d!1271328 (= lt!1541106 e!2689980)))

(declare-fun res!1771940 () Bool)

(assert (=> d!1271328 (=> (not res!1771940) (not e!2689980))))

(declare-fun lt!1541095 () (_ BitVec 64))

(assert (=> d!1271328 (= res!1771940 (contains!10453 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))))

(declare-fun lt!1541104 () Unit!67880)

(declare-fun e!2689981 () Unit!67880)

(assert (=> d!1271328 (= lt!1541104 e!2689981)))

(declare-fun c!735488 () Bool)

(assert (=> d!1271328 (= c!735488 (contains!10452 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))) key!2048))))

(declare-fun lt!1541093 () Unit!67880)

(declare-fun e!2689985 () Unit!67880)

(assert (=> d!1271328 (= lt!1541093 e!2689985)))

(declare-fun c!735490 () Bool)

(assert (=> d!1271328 (= c!735490 (contains!10453 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))))

(assert (=> d!1271328 (= lt!1541095 (hash!1194 (hashF!6947 thiss!42308) key!2048))))

(assert (=> d!1271328 (valid!3771 thiss!42308)))

(assert (=> d!1271328 (= (contains!10454 thiss!42308 key!2048) lt!1541106)))

(declare-fun forallContained!1537 (List!48519 Int tuple2!47228) Unit!67880)

(assert (=> b!4323576 (= e!2689985 (forallContained!1537 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lambda!134047 (tuple2!47229 lt!1541095 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))))))

(declare-fun c!735489 () Bool)

(assert (=> b!4323576 (= c!735489 (not (contains!10457 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) (tuple2!47229 lt!1541095 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095)))))))

(declare-fun lt!1541111 () Unit!67880)

(declare-fun e!2689984 () Unit!67880)

(assert (=> b!4323576 (= lt!1541111 e!2689984)))

(declare-fun call!299898 () ListLongMap!1183)

(declare-fun call!299899 () (_ BitVec 64))

(declare-fun lt!1541096 () ListLongMap!1183)

(declare-fun call!299896 () List!48518)

(declare-fun bm!299890 () Bool)

(assert (=> bm!299890 (= call!299896 (apply!11151 (ite c!735488 lt!1541096 call!299898) call!299899))))

(declare-fun b!4323577 () Bool)

(declare-fun e!2689979 () Bool)

(declare-fun call!299900 () Bool)

(assert (=> b!4323577 (= e!2689979 call!299900)))

(declare-fun b!4323578 () Bool)

(assert (=> b!4323578 false))

(declare-fun lt!1541110 () Unit!67880)

(declare-fun lt!1541094 () Unit!67880)

(assert (=> b!4323578 (= lt!1541110 lt!1541094)))

(declare-fun lt!1541092 () List!48519)

(declare-fun lt!1541108 () List!48518)

(assert (=> b!4323578 (contains!10457 lt!1541092 (tuple2!47229 lt!1541095 lt!1541108))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!177 (List!48519 (_ BitVec 64) List!48518) Unit!67880)

(assert (=> b!4323578 (= lt!1541094 (lemmaGetValueByKeyImpliesContainsTuple!177 lt!1541092 lt!1541095 lt!1541108))))

(assert (=> b!4323578 (= lt!1541108 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))))

(assert (=> b!4323578 (= lt!1541092 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))))

(declare-fun lt!1541100 () Unit!67880)

(declare-fun lt!1541097 () Unit!67880)

(assert (=> b!4323578 (= lt!1541100 lt!1541097)))

(declare-fun lt!1541105 () List!48519)

(assert (=> b!4323578 (isDefined!7610 (getValueByKey!303 lt!1541105 lt!1541095))))

(assert (=> b!4323578 (= lt!1541097 (lemmaContainsKeyImpliesGetValueByKeyDefined!222 lt!1541105 lt!1541095))))

(assert (=> b!4323578 (= lt!1541105 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))))

(declare-fun lt!1541101 () Unit!67880)

(declare-fun lt!1541109 () Unit!67880)

(assert (=> b!4323578 (= lt!1541101 lt!1541109)))

(declare-fun lt!1541099 () List!48519)

(assert (=> b!4323578 (containsKey!409 lt!1541099 lt!1541095)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!166 (List!48519 (_ BitVec 64)) Unit!67880)

(assert (=> b!4323578 (= lt!1541109 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!166 lt!1541099 lt!1541095))))

(assert (=> b!4323578 (= lt!1541099 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))))

(declare-fun Unit!67884 () Unit!67880)

(assert (=> b!4323578 (= e!2689984 Unit!67884)))

(declare-fun bm!299891 () Bool)

(declare-datatypes ((Option!10310 0))(
  ( (None!10309) (Some!10309 (v!42803 tuple2!47226)) )
))
(declare-fun call!299895 () Option!10310)

(declare-fun isDefined!7611 (Option!10310) Bool)

(assert (=> bm!299891 (= call!299900 (isDefined!7611 call!299895))))

(declare-fun b!4323579 () Bool)

(declare-fun getPair!165 (List!48518 K!9644) Option!10310)

(assert (=> b!4323579 (= e!2689980 (isDefined!7611 (getPair!165 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095) key!2048)))))

(declare-fun b!4323580 () Bool)

(declare-fun e!2689982 () Bool)

(assert (=> b!4323580 (= e!2689982 call!299900)))

(declare-fun b!4323581 () Bool)

(declare-fun lt!1541103 () Unit!67880)

(assert (=> b!4323581 (= e!2689981 lt!1541103)))

(assert (=> b!4323581 (= lt!1541096 call!299898)))

(declare-fun lemmaInGenericMapThenInLongMap!165 (ListLongMap!1183 K!9644 Hashable!4675) Unit!67880)

(assert (=> b!4323581 (= lt!1541103 (lemmaInGenericMapThenInLongMap!165 lt!1541096 key!2048 (hashF!6947 thiss!42308)))))

(declare-fun res!1771941 () Bool)

(declare-fun call!299897 () Bool)

(assert (=> b!4323581 (= res!1771941 call!299897)))

(assert (=> b!4323581 (=> (not res!1771941) (not e!2689979))))

(assert (=> b!4323581 e!2689979))

(declare-fun bm!299892 () Bool)

(assert (=> bm!299892 (= call!299897 (contains!10455 (ite c!735488 lt!1541096 call!299898) call!299899))))

(declare-fun b!4323582 () Bool)

(declare-fun e!2689983 () Unit!67880)

(assert (=> b!4323582 (= e!2689981 e!2689983)))

(declare-fun res!1771942 () Bool)

(assert (=> b!4323582 (= res!1771942 call!299897)))

(assert (=> b!4323582 (=> (not res!1771942) (not e!2689982))))

(declare-fun c!735491 () Bool)

(assert (=> b!4323582 (= c!735491 e!2689982)))

(declare-fun b!4323583 () Bool)

(declare-fun Unit!67885 () Unit!67880)

(assert (=> b!4323583 (= e!2689983 Unit!67885)))

(declare-fun bm!299893 () Bool)

(assert (=> bm!299893 (= call!299899 (hash!1194 (hashF!6947 thiss!42308) key!2048))))

(declare-fun b!4323584 () Bool)

(declare-fun Unit!67886 () Unit!67880)

(assert (=> b!4323584 (= e!2689984 Unit!67886)))

(declare-fun bm!299894 () Bool)

(assert (=> bm!299894 (= call!299895 (getPair!165 call!299896 key!2048))))

(declare-fun bm!299895 () Bool)

(assert (=> bm!299895 (= call!299898 (map!10422 (v!42797 (underlying!9748 thiss!42308))))))

(declare-fun b!4323585 () Bool)

(assert (=> b!4323585 false))

(declare-fun lt!1541098 () Unit!67880)

(declare-fun lt!1541107 () Unit!67880)

(assert (=> b!4323585 (= lt!1541098 lt!1541107)))

(declare-fun lt!1541102 () ListLongMap!1183)

(assert (=> b!4323585 (contains!10452 (extractMap!372 (toList!2566 lt!1541102)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!165 (ListLongMap!1183 K!9644 Hashable!4675) Unit!67880)

(assert (=> b!4323585 (= lt!1541107 (lemmaInLongMapThenInGenericMap!165 lt!1541102 key!2048 (hashF!6947 thiss!42308)))))

(assert (=> b!4323585 (= lt!1541102 call!299898)))

(declare-fun Unit!67887 () Unit!67880)

(assert (=> b!4323585 (= e!2689983 Unit!67887)))

(declare-fun b!4323586 () Bool)

(declare-fun Unit!67888 () Unit!67880)

(assert (=> b!4323586 (= e!2689985 Unit!67888)))

(assert (= (and d!1271328 c!735490) b!4323576))

(assert (= (and d!1271328 (not c!735490)) b!4323586))

(assert (= (and b!4323576 c!735489) b!4323578))

(assert (= (and b!4323576 (not c!735489)) b!4323584))

(assert (= (and d!1271328 c!735488) b!4323581))

(assert (= (and d!1271328 (not c!735488)) b!4323582))

(assert (= (and b!4323581 res!1771941) b!4323577))

(assert (= (and b!4323582 res!1771942) b!4323580))

(assert (= (and b!4323582 c!735491) b!4323585))

(assert (= (and b!4323582 (not c!735491)) b!4323583))

(assert (= (or b!4323581 b!4323582 b!4323580 b!4323585) bm!299895))

(assert (= (or b!4323581 b!4323577 b!4323582 b!4323580) bm!299893))

(assert (= (or b!4323577 b!4323580) bm!299890))

(assert (= (or b!4323581 b!4323582) bm!299892))

(assert (= (or b!4323577 b!4323580) bm!299894))

(assert (= (or b!4323577 b!4323580) bm!299891))

(assert (= (and d!1271328 res!1771940) b!4323579))

(declare-fun m!4918061 () Bool)

(assert (=> bm!299894 m!4918061))

(assert (=> bm!299895 m!4917951))

(assert (=> d!1271328 m!4917953))

(declare-fun m!4918063 () Bool)

(assert (=> d!1271328 m!4918063))

(assert (=> d!1271328 m!4917951))

(assert (=> d!1271328 m!4917953))

(assert (=> d!1271328 m!4917913))

(declare-fun m!4918065 () Bool)

(assert (=> d!1271328 m!4918065))

(declare-fun m!4918067 () Bool)

(assert (=> d!1271328 m!4918067))

(assert (=> d!1271328 m!4917929))

(assert (=> d!1271328 m!4918067))

(declare-fun m!4918069 () Bool)

(assert (=> d!1271328 m!4918069))

(declare-fun m!4918071 () Bool)

(assert (=> bm!299891 m!4918071))

(declare-fun m!4918073 () Bool)

(assert (=> b!4323581 m!4918073))

(declare-fun m!4918075 () Bool)

(assert (=> b!4323578 m!4918075))

(declare-fun m!4918077 () Bool)

(assert (=> b!4323578 m!4918077))

(declare-fun m!4918079 () Bool)

(assert (=> b!4323578 m!4918079))

(declare-fun m!4918081 () Bool)

(assert (=> b!4323578 m!4918081))

(assert (=> b!4323578 m!4917951))

(declare-fun m!4918083 () Bool)

(assert (=> b!4323578 m!4918083))

(declare-fun m!4918085 () Bool)

(assert (=> b!4323578 m!4918085))

(declare-fun m!4918087 () Bool)

(assert (=> b!4323578 m!4918087))

(declare-fun m!4918089 () Bool)

(assert (=> b!4323578 m!4918089))

(assert (=> b!4323578 m!4918077))

(declare-fun m!4918091 () Bool)

(assert (=> bm!299890 m!4918091))

(assert (=> b!4323579 m!4918085))

(assert (=> b!4323579 m!4918085))

(declare-fun m!4918093 () Bool)

(assert (=> b!4323579 m!4918093))

(assert (=> b!4323579 m!4918093))

(declare-fun m!4918095 () Bool)

(assert (=> b!4323579 m!4918095))

(assert (=> bm!299893 m!4917929))

(declare-fun m!4918097 () Bool)

(assert (=> bm!299892 m!4918097))

(declare-fun m!4918099 () Bool)

(assert (=> b!4323585 m!4918099))

(assert (=> b!4323585 m!4918099))

(declare-fun m!4918101 () Bool)

(assert (=> b!4323585 m!4918101))

(declare-fun m!4918103 () Bool)

(assert (=> b!4323585 m!4918103))

(assert (=> b!4323576 m!4917951))

(assert (=> b!4323576 m!4918085))

(declare-fun m!4918105 () Bool)

(assert (=> b!4323576 m!4918105))

(declare-fun m!4918107 () Bool)

(assert (=> b!4323576 m!4918107))

(assert (=> b!4323460 d!1271328))

(declare-fun d!1271330 () Bool)

(declare-fun map!10424 (LongMapFixedSize!9518) ListLongMap!1183)

(assert (=> d!1271330 (= (map!10422 (v!42797 (underlying!9748 thiss!42308))) (map!10424 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))))))

(declare-fun bs!606962 () Bool)

(assert (= bs!606962 d!1271330))

(declare-fun m!4918109 () Bool)

(assert (=> bs!606962 m!4918109))

(assert (=> b!4323460 d!1271330))

(declare-fun d!1271332 () Bool)

(declare-fun lt!1541114 () ListMap!1843)

(declare-fun invariantList!604 (List!48518) Bool)

(assert (=> d!1271332 (invariantList!604 (toList!2567 lt!1541114))))

(assert (=> d!1271332 (= lt!1541114 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))))))

(assert (=> d!1271332 (valid!3771 thiss!42308)))

(assert (=> d!1271332 (= (map!10423 thiss!42308) lt!1541114)))

(declare-fun bs!606963 () Bool)

(assert (= bs!606963 d!1271332))

(declare-fun m!4918111 () Bool)

(assert (=> bs!606963 m!4918111))

(assert (=> bs!606963 m!4917951))

(assert (=> bs!606963 m!4918067))

(assert (=> bs!606963 m!4917913))

(assert (=> b!4323460 d!1271332))

(declare-fun d!1271334 () Bool)

(assert (=> d!1271334 (= (apply!11151 lt!1540986 lt!1540991) (get!15682 (getValueByKey!303 (toList!2566 lt!1540986) lt!1540991)))))

(declare-fun bs!606964 () Bool)

(assert (= bs!606964 d!1271334))

(assert (=> bs!606964 m!4917985))

(assert (=> bs!606964 m!4917985))

(declare-fun m!4918113 () Bool)

(assert (=> bs!606964 m!4918113))

(assert (=> b!4323461 d!1271334))

(declare-fun b!4323605 () Bool)

(assert (=> b!4323605 false))

(declare-fun lt!1541134 () Unit!67880)

(declare-fun lt!1541138 () Unit!67880)

(assert (=> b!4323605 (= lt!1541134 lt!1541138)))

(declare-fun containsKey!411 (List!48518 K!9644) Bool)

(assert (=> b!4323605 (containsKey!411 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!56 (List!48518 K!9644) Unit!67880)

(assert (=> b!4323605 (= lt!1541138 (lemmaInGetKeysListThenContainsKey!56 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048))))

(declare-fun e!2690003 () Unit!67880)

(declare-fun Unit!67889 () Unit!67880)

(assert (=> b!4323605 (= e!2690003 Unit!67889)))

(declare-fun bm!299898 () Bool)

(declare-fun call!299903 () Bool)

(declare-datatypes ((List!48520 0))(
  ( (Nil!48396) (Cons!48396 (h!53860 K!9644) (t!355412 List!48520)) )
))
(declare-fun e!2690000 () List!48520)

(declare-fun contains!10458 (List!48520 K!9644) Bool)

(assert (=> bm!299898 (= call!299903 (contains!10458 e!2690000 key!2048))))

(declare-fun c!735498 () Bool)

(declare-fun c!735499 () Bool)

(assert (=> bm!299898 (= c!735498 c!735499)))

(declare-fun b!4323607 () Bool)

(declare-fun e!2690001 () Unit!67880)

(declare-fun lt!1541133 () Unit!67880)

(assert (=> b!4323607 (= e!2690001 lt!1541133)))

(declare-fun lt!1541137 () Unit!67880)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!223 (List!48518 K!9644) Unit!67880)

(assert (=> b!4323607 (= lt!1541137 (lemmaContainsKeyImpliesGetValueByKeyDefined!223 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048))))

(declare-datatypes ((Option!10311 0))(
  ( (None!10310) (Some!10310 (v!42804 V!9846)) )
))
(declare-fun isDefined!7612 (Option!10311) Bool)

(declare-fun getValueByKey!304 (List!48518 K!9644) Option!10311)

(assert (=> b!4323607 (isDefined!7612 (getValueByKey!304 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048))))

(declare-fun lt!1541131 () Unit!67880)

(assert (=> b!4323607 (= lt!1541131 lt!1541137)))

(declare-fun lemmaInListThenGetKeysListContains!56 (List!48518 K!9644) Unit!67880)

(assert (=> b!4323607 (= lt!1541133 (lemmaInListThenGetKeysListContains!56 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048))))

(assert (=> b!4323607 call!299903))

(declare-fun b!4323608 () Bool)

(declare-fun e!2689999 () Bool)

(declare-fun keys!16182 (ListMap!1843) List!48520)

(assert (=> b!4323608 (= e!2689999 (contains!10458 (keys!16182 (extractMap!372 (toList!2566 lt!1540986))) key!2048))))

(declare-fun b!4323609 () Bool)

(assert (=> b!4323609 (= e!2690001 e!2690003)))

(declare-fun c!735500 () Bool)

(assert (=> b!4323609 (= c!735500 call!299903)))

(declare-fun d!1271336 () Bool)

(declare-fun e!2690002 () Bool)

(assert (=> d!1271336 e!2690002))

(declare-fun res!1771951 () Bool)

(assert (=> d!1271336 (=> res!1771951 e!2690002)))

(declare-fun e!2689998 () Bool)

(assert (=> d!1271336 (= res!1771951 e!2689998)))

(declare-fun res!1771949 () Bool)

(assert (=> d!1271336 (=> (not res!1771949) (not e!2689998))))

(declare-fun lt!1541135 () Bool)

(assert (=> d!1271336 (= res!1771949 (not lt!1541135))))

(declare-fun lt!1541136 () Bool)

(assert (=> d!1271336 (= lt!1541135 lt!1541136)))

(declare-fun lt!1541132 () Unit!67880)

(assert (=> d!1271336 (= lt!1541132 e!2690001)))

(assert (=> d!1271336 (= c!735499 lt!1541136)))

(assert (=> d!1271336 (= lt!1541136 (containsKey!411 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048))))

(assert (=> d!1271336 (= (contains!10452 (extractMap!372 (toList!2566 lt!1540986)) key!2048) lt!1541135)))

(declare-fun b!4323606 () Bool)

(declare-fun getKeysList!59 (List!48518) List!48520)

(assert (=> b!4323606 (= e!2690000 (getKeysList!59 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))))))

(declare-fun b!4323610 () Bool)

(assert (=> b!4323610 (= e!2689998 (not (contains!10458 (keys!16182 (extractMap!372 (toList!2566 lt!1540986))) key!2048)))))

(declare-fun b!4323611 () Bool)

(declare-fun Unit!67890 () Unit!67880)

(assert (=> b!4323611 (= e!2690003 Unit!67890)))

(declare-fun b!4323612 () Bool)

(assert (=> b!4323612 (= e!2690000 (keys!16182 (extractMap!372 (toList!2566 lt!1540986))))))

(declare-fun b!4323613 () Bool)

(assert (=> b!4323613 (= e!2690002 e!2689999)))

(declare-fun res!1771950 () Bool)

(assert (=> b!4323613 (=> (not res!1771950) (not e!2689999))))

(assert (=> b!4323613 (= res!1771950 (isDefined!7612 (getValueByKey!304 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048)))))

(assert (= (and d!1271336 c!735499) b!4323607))

(assert (= (and d!1271336 (not c!735499)) b!4323609))

(assert (= (and b!4323609 c!735500) b!4323605))

(assert (= (and b!4323609 (not c!735500)) b!4323611))

(assert (= (or b!4323607 b!4323609) bm!299898))

(assert (= (and bm!299898 c!735498) b!4323606))

(assert (= (and bm!299898 (not c!735498)) b!4323612))

(assert (= (and d!1271336 res!1771949) b!4323610))

(assert (= (and d!1271336 (not res!1771951)) b!4323613))

(assert (= (and b!4323613 res!1771950) b!4323608))

(declare-fun m!4918115 () Bool)

(assert (=> d!1271336 m!4918115))

(declare-fun m!4918117 () Bool)

(assert (=> b!4323613 m!4918117))

(assert (=> b!4323613 m!4918117))

(declare-fun m!4918119 () Bool)

(assert (=> b!4323613 m!4918119))

(declare-fun m!4918121 () Bool)

(assert (=> b!4323606 m!4918121))

(assert (=> b!4323612 m!4917919))

(declare-fun m!4918123 () Bool)

(assert (=> b!4323612 m!4918123))

(declare-fun m!4918125 () Bool)

(assert (=> b!4323607 m!4918125))

(assert (=> b!4323607 m!4918117))

(assert (=> b!4323607 m!4918117))

(assert (=> b!4323607 m!4918119))

(declare-fun m!4918127 () Bool)

(assert (=> b!4323607 m!4918127))

(assert (=> b!4323608 m!4917919))

(assert (=> b!4323608 m!4918123))

(assert (=> b!4323608 m!4918123))

(declare-fun m!4918129 () Bool)

(assert (=> b!4323608 m!4918129))

(assert (=> b!4323610 m!4917919))

(assert (=> b!4323610 m!4918123))

(assert (=> b!4323610 m!4918123))

(assert (=> b!4323610 m!4918129))

(assert (=> b!4323605 m!4918115))

(declare-fun m!4918131 () Bool)

(assert (=> b!4323605 m!4918131))

(declare-fun m!4918133 () Bool)

(assert (=> bm!299898 m!4918133))

(assert (=> b!4323452 d!1271336))

(declare-fun bs!606965 () Bool)

(declare-fun d!1271338 () Bool)

(assert (= bs!606965 (and d!1271338 b!4323470)))

(declare-fun lambda!134050 () Int)

(assert (=> bs!606965 (= lambda!134050 lambda!134025)))

(declare-fun bs!606966 () Bool)

(assert (= bs!606966 (and d!1271338 d!1271322)))

(assert (=> bs!606966 (= lambda!134050 lambda!134044)))

(declare-fun bs!606967 () Bool)

(assert (= bs!606967 (and d!1271338 b!4323535)))

(assert (=> bs!606967 (= lambda!134050 lambda!134039)))

(declare-fun bs!606968 () Bool)

(assert (= bs!606968 (and d!1271338 b!4323576)))

(assert (=> bs!606968 (= lambda!134050 lambda!134047)))

(declare-fun bs!606969 () Bool)

(assert (= bs!606969 (and d!1271338 d!1271312)))

(assert (=> bs!606969 (not (= lambda!134050 lambda!134033))))

(declare-fun bs!606970 () Bool)

(assert (= bs!606970 (and d!1271338 d!1271314)))

(assert (=> bs!606970 (not (= lambda!134050 lambda!134036))))

(declare-fun lt!1541141 () ListMap!1843)

(assert (=> d!1271338 (invariantList!604 (toList!2567 lt!1541141))))

(declare-fun e!2690006 () ListMap!1843)

(assert (=> d!1271338 (= lt!1541141 e!2690006)))

(declare-fun c!735503 () Bool)

(assert (=> d!1271338 (= c!735503 ((_ is Cons!48395) (toList!2566 lt!1540986)))))

(assert (=> d!1271338 (forall!8820 (toList!2566 lt!1540986) lambda!134050)))

(assert (=> d!1271338 (= (extractMap!372 (toList!2566 lt!1540986)) lt!1541141)))

(declare-fun b!4323618 () Bool)

(declare-fun addToMapMapFromBucket!54 (List!48518 ListMap!1843) ListMap!1843)

(assert (=> b!4323618 (= e!2690006 (addToMapMapFromBucket!54 (_2!26901 (h!53858 (toList!2566 lt!1540986))) (extractMap!372 (t!355409 (toList!2566 lt!1540986)))))))

(declare-fun b!4323619 () Bool)

(assert (=> b!4323619 (= e!2690006 (ListMap!1844 Nil!48394))))

(assert (= (and d!1271338 c!735503) b!4323618))

(assert (= (and d!1271338 (not c!735503)) b!4323619))

(declare-fun m!4918135 () Bool)

(assert (=> d!1271338 m!4918135))

(declare-fun m!4918137 () Bool)

(assert (=> d!1271338 m!4918137))

(declare-fun m!4918139 () Bool)

(assert (=> b!4323618 m!4918139))

(assert (=> b!4323618 m!4918139))

(declare-fun m!4918141 () Bool)

(assert (=> b!4323618 m!4918141))

(assert (=> b!4323452 d!1271338))

(declare-fun bs!606971 () Bool)

(declare-fun d!1271340 () Bool)

(assert (= bs!606971 (and d!1271340 b!4323470)))

(declare-fun lambda!134051 () Int)

(assert (=> bs!606971 (not (= lambda!134051 lambda!134025))))

(declare-fun bs!606972 () Bool)

(assert (= bs!606972 (and d!1271340 d!1271322)))

(assert (=> bs!606972 (not (= lambda!134051 lambda!134044))))

(declare-fun bs!606973 () Bool)

(assert (= bs!606973 (and d!1271340 b!4323535)))

(assert (=> bs!606973 (not (= lambda!134051 lambda!134039))))

(declare-fun bs!606974 () Bool)

(assert (= bs!606974 (and d!1271340 b!4323576)))

(assert (=> bs!606974 (not (= lambda!134051 lambda!134047))))

(declare-fun bs!606975 () Bool)

(assert (= bs!606975 (and d!1271340 d!1271338)))

(assert (=> bs!606975 (not (= lambda!134051 lambda!134050))))

(declare-fun bs!606976 () Bool)

(assert (= bs!606976 (and d!1271340 d!1271312)))

(assert (=> bs!606976 (= lambda!134051 lambda!134033)))

(declare-fun bs!606977 () Bool)

(assert (= bs!606977 (and d!1271340 d!1271314)))

(assert (=> bs!606977 (= lambda!134051 lambda!134036)))

(assert (=> d!1271340 true))

(assert (=> d!1271340 (= (allKeysSameHashInMap!393 lt!1540986 (hashF!6947 thiss!42308)) (forall!8820 (toList!2566 lt!1540986) lambda!134051))))

(declare-fun bs!606978 () Bool)

(assert (= bs!606978 d!1271340))

(declare-fun m!4918143 () Bool)

(assert (=> bs!606978 m!4918143))

(assert (=> b!4323463 d!1271340))

(declare-fun d!1271342 () Bool)

(declare-fun res!1771956 () Bool)

(declare-fun e!2690011 () Bool)

(assert (=> d!1271342 (=> res!1771956 e!2690011)))

(assert (=> d!1271342 (= res!1771956 (not ((_ is Cons!48394) lt!1540989)))))

(assert (=> d!1271342 (= (noDuplicateKeys!265 lt!1540989) e!2690011)))

(declare-fun b!4323624 () Bool)

(declare-fun e!2690012 () Bool)

(assert (=> b!4323624 (= e!2690011 e!2690012)))

(declare-fun res!1771957 () Bool)

(assert (=> b!4323624 (=> (not res!1771957) (not e!2690012))))

(assert (=> b!4323624 (= res!1771957 (not (containsKey!410 (t!355408 lt!1540989) (_1!26900 (h!53857 lt!1540989)))))))

(declare-fun b!4323625 () Bool)

(assert (=> b!4323625 (= e!2690012 (noDuplicateKeys!265 (t!355408 lt!1540989)))))

(assert (= (and d!1271342 (not res!1771956)) b!4323624))

(assert (= (and b!4323624 res!1771957) b!4323625))

(declare-fun m!4918145 () Bool)

(assert (=> b!4323624 m!4918145))

(declare-fun m!4918147 () Bool)

(assert (=> b!4323625 m!4918147))

(assert (=> b!4323454 d!1271342))

(declare-fun b!4323630 () Bool)

(declare-fun e!2690015 () Bool)

(declare-fun tp!1327137 () Bool)

(assert (=> b!4323630 (= e!2690015 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327137))))

(assert (=> b!4323466 (= tp!1327130 e!2690015)))

(assert (= (and b!4323466 ((_ is Cons!48394) (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))))) b!4323630))

(declare-fun tp!1327138 () Bool)

(declare-fun e!2690016 () Bool)

(declare-fun b!4323631 () Bool)

(assert (=> b!4323631 (= e!2690016 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327138))))

(assert (=> b!4323466 (= tp!1327129 e!2690016)))

(assert (= (and b!4323466 ((_ is Cons!48394) (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))))) b!4323631))

(declare-fun b!4323638 () Bool)

(declare-fun e!2690021 () Bool)

(declare-fun tp!1327146 () Bool)

(assert (=> b!4323638 (= e!2690021 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327146))))

(declare-fun condMapEmpty!21218 () Bool)

(declare-fun mapDefault!21218 () List!48518)

(assert (=> mapNonEmpty!21215 (= condMapEmpty!21218 (= mapRest!21215 ((as const (Array (_ BitVec 32) List!48518)) mapDefault!21218)))))

(declare-fun e!2690022 () Bool)

(declare-fun mapRes!21218 () Bool)

(assert (=> mapNonEmpty!21215 (= tp!1327131 (and e!2690022 mapRes!21218))))

(declare-fun mapNonEmpty!21218 () Bool)

(declare-fun tp!1327147 () Bool)

(assert (=> mapNonEmpty!21218 (= mapRes!21218 (and tp!1327147 e!2690021))))

(declare-fun mapValue!21218 () List!48518)

(declare-fun mapRest!21218 () (Array (_ BitVec 32) List!48518))

(declare-fun mapKey!21218 () (_ BitVec 32))

(assert (=> mapNonEmpty!21218 (= mapRest!21215 (store mapRest!21218 mapKey!21218 mapValue!21218))))

(declare-fun tp!1327145 () Bool)

(declare-fun b!4323639 () Bool)

(assert (=> b!4323639 (= e!2690022 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327145))))

(declare-fun mapIsEmpty!21218 () Bool)

(assert (=> mapIsEmpty!21218 mapRes!21218))

(assert (= (and mapNonEmpty!21215 condMapEmpty!21218) mapIsEmpty!21218))

(assert (= (and mapNonEmpty!21215 (not condMapEmpty!21218)) mapNonEmpty!21218))

(assert (= (and mapNonEmpty!21218 ((_ is Cons!48394) mapValue!21218)) b!4323638))

(assert (= (and mapNonEmpty!21215 ((_ is Cons!48394) mapDefault!21218)) b!4323639))

(declare-fun m!4918149 () Bool)

(assert (=> mapNonEmpty!21218 m!4918149))

(declare-fun tp!1327148 () Bool)

(declare-fun b!4323640 () Bool)

(declare-fun e!2690023 () Bool)

(assert (=> b!4323640 (= e!2690023 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327148))))

(assert (=> mapNonEmpty!21215 (= tp!1327133 e!2690023)))

(assert (= (and mapNonEmpty!21215 ((_ is Cons!48394) mapValue!21215)) b!4323640))

(declare-fun b!4323641 () Bool)

(declare-fun e!2690024 () Bool)

(declare-fun tp!1327149 () Bool)

(assert (=> b!4323641 (= e!2690024 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327149))))

(assert (=> b!4323457 (= tp!1327134 e!2690024)))

(assert (= (and b!4323457 ((_ is Cons!48394) mapDefault!21215)) b!4323641))

(declare-fun b_lambda!127417 () Bool)

(assert (= b_lambda!127413 (or b!4323470 b_lambda!127417)))

(declare-fun bs!606979 () Bool)

(declare-fun d!1271344 () Bool)

(assert (= bs!606979 (and d!1271344 b!4323470)))

(assert (=> bs!606979 (= (dynLambda!20514 lambda!134025 (h!53858 (toList!2566 lt!1540985))) (noDuplicateKeys!265 (_2!26901 (h!53858 (toList!2566 lt!1540985)))))))

(declare-fun m!4918151 () Bool)

(assert (=> bs!606979 m!4918151))

(assert (=> b!4323541 d!1271344))

(declare-fun b_lambda!127419 () Bool)

(assert (= b_lambda!127415 (or b!4323470 b_lambda!127419)))

(declare-fun bs!606980 () Bool)

(declare-fun d!1271346 () Bool)

(assert (= bs!606980 (and d!1271346 b!4323470)))

(assert (=> bs!606980 (= (dynLambda!20514 lambda!134025 (h!53858 (toList!2566 lt!1540986))) (noDuplicateKeys!265 (_2!26901 (h!53858 (toList!2566 lt!1540986)))))))

(declare-fun m!4918153 () Bool)

(assert (=> bs!606980 m!4918153))

(assert (=> b!4323552 d!1271346))

(declare-fun b_lambda!127421 () Bool)

(assert (= b_lambda!127411 (or (and b!4323466 b_free!128995) b_lambda!127421)))

(check-sat (not bm!299894) (not b!4323605) (not d!1271290) (not d!1271328) (not b!4323508) (not b!4323576) b_and!340563 (not b!4323536) (not d!1271332) (not bm!299891) (not bs!606980) (not b!4323608) (not b!4323618) (not bm!299898) (not b!4323639) (not b_lambda!127421) (not bm!299892) (not b_next!129699) (not d!1271338) (not d!1271322) (not b!4323641) (not d!1271302) (not b!4323485) (not mapNonEmpty!21218) (not b!4323553) (not b!4323483) (not bm!299895) (not bm!299890) (not b_lambda!127419) tp_is_empty!24133 (not d!1271334) (not b!4323640) (not b!4323475) (not b!4323613) (not d!1271310) (not d!1271304) (not tb!257375) (not d!1271340) (not b!4323505) (not b!4323610) (not d!1271316) (not b!4323542) (not b!4323551) (not b!4323527) (not b!4323607) (not d!1271312) (not d!1271292) b_and!340561 (not b!4323579) (not d!1271320) (not b_next!129701) (not b!4323625) (not b!4323547) (not d!1271308) (not bm!299893) (not b!4323638) (not b!4323606) (not bm!299876) (not b!4323535) (not b!4323504) (not b_lambda!127417) (not d!1271306) tp_is_empty!24135 (not b!4323631) (not bs!606979) (not b!4323509) (not b!4323585) (not b!4323581) (not bm!299877) (not b!4323624) (not b!4323507) (not b!4323548) (not b!4323630) (not d!1271288) (not d!1271294) (not b!4323578) (not d!1271314) (not b!4323612) (not d!1271296) (not d!1271336) (not d!1271330))
(check-sat b_and!340563 b_and!340561 (not b_next!129701) (not b_next!129699))
(get-model)

(declare-fun bs!606981 () Bool)

(declare-fun d!1271348 () Bool)

(assert (= bs!606981 (and d!1271348 b!4323470)))

(declare-fun lambda!134052 () Int)

(assert (=> bs!606981 (not (= lambda!134052 lambda!134025))))

(declare-fun bs!606982 () Bool)

(assert (= bs!606982 (and d!1271348 d!1271322)))

(assert (=> bs!606982 (not (= lambda!134052 lambda!134044))))

(declare-fun bs!606983 () Bool)

(assert (= bs!606983 (and d!1271348 b!4323535)))

(assert (=> bs!606983 (not (= lambda!134052 lambda!134039))))

(declare-fun bs!606984 () Bool)

(assert (= bs!606984 (and d!1271348 b!4323576)))

(assert (=> bs!606984 (not (= lambda!134052 lambda!134047))))

(declare-fun bs!606985 () Bool)

(assert (= bs!606985 (and d!1271348 d!1271338)))

(assert (=> bs!606985 (not (= lambda!134052 lambda!134050))))

(declare-fun bs!606986 () Bool)

(assert (= bs!606986 (and d!1271348 d!1271340)))

(assert (=> bs!606986 (= lambda!134052 lambda!134051)))

(declare-fun bs!606987 () Bool)

(assert (= bs!606987 (and d!1271348 d!1271312)))

(assert (=> bs!606987 (= lambda!134052 lambda!134033)))

(declare-fun bs!606988 () Bool)

(assert (= bs!606988 (and d!1271348 d!1271314)))

(assert (=> bs!606988 (= lambda!134052 lambda!134036)))

(assert (=> d!1271348 true))

(assert (=> d!1271348 (= (allKeysSameHashInMap!393 lt!1541051 (hashF!6947 thiss!42308)) (forall!8820 (toList!2566 lt!1541051) lambda!134052))))

(declare-fun bs!606989 () Bool)

(assert (= bs!606989 d!1271348))

(declare-fun m!4918155 () Bool)

(assert (=> bs!606989 m!4918155))

(assert (=> b!4323551 d!1271348))

(assert (=> d!1271308 d!1271306))

(assert (=> d!1271308 d!1271310))

(declare-fun d!1271350 () Bool)

(assert (=> d!1271350 (allKeysSameHash!250 (removePairForKey!273 lt!1540984 key!2048) lt!1540991 (hashF!6947 thiss!42308))))

(assert (=> d!1271350 true))

(declare-fun _$20!134 () Unit!67880)

(assert (=> d!1271350 (= (choose!26422 lt!1540984 key!2048 lt!1540991 (hashF!6947 thiss!42308)) _$20!134)))

(declare-fun bs!606990 () Bool)

(assert (= bs!606990 d!1271350))

(assert (=> bs!606990 m!4917933))

(assert (=> bs!606990 m!4917933))

(assert (=> bs!606990 m!4917941))

(assert (=> d!1271308 d!1271350))

(declare-fun d!1271352 () Bool)

(declare-fun res!1771958 () Bool)

(declare-fun e!2690025 () Bool)

(assert (=> d!1271352 (=> res!1771958 e!2690025)))

(assert (=> d!1271352 (= res!1771958 (not ((_ is Cons!48394) lt!1540984)))))

(assert (=> d!1271352 (= (noDuplicateKeys!265 lt!1540984) e!2690025)))

(declare-fun b!4323642 () Bool)

(declare-fun e!2690026 () Bool)

(assert (=> b!4323642 (= e!2690025 e!2690026)))

(declare-fun res!1771959 () Bool)

(assert (=> b!4323642 (=> (not res!1771959) (not e!2690026))))

(assert (=> b!4323642 (= res!1771959 (not (containsKey!410 (t!355408 lt!1540984) (_1!26900 (h!53857 lt!1540984)))))))

(declare-fun b!4323643 () Bool)

(assert (=> b!4323643 (= e!2690026 (noDuplicateKeys!265 (t!355408 lt!1540984)))))

(assert (= (and d!1271352 (not res!1771958)) b!4323642))

(assert (= (and b!4323642 res!1771959) b!4323643))

(declare-fun m!4918157 () Bool)

(assert (=> b!4323642 m!4918157))

(declare-fun m!4918159 () Bool)

(assert (=> b!4323643 m!4918159))

(assert (=> d!1271308 d!1271352))

(declare-fun d!1271354 () Bool)

(declare-fun noDuplicatedKeys!104 (List!48518) Bool)

(assert (=> d!1271354 (= (invariantList!604 (toList!2567 lt!1541114)) (noDuplicatedKeys!104 (toList!2567 lt!1541114)))))

(declare-fun bs!606991 () Bool)

(assert (= bs!606991 d!1271354))

(declare-fun m!4918161 () Bool)

(assert (=> bs!606991 m!4918161))

(assert (=> d!1271332 d!1271354))

(declare-fun bs!606992 () Bool)

(declare-fun d!1271356 () Bool)

(assert (= bs!606992 (and d!1271356 b!4323470)))

(declare-fun lambda!134053 () Int)

(assert (=> bs!606992 (= lambda!134053 lambda!134025)))

(declare-fun bs!606993 () Bool)

(assert (= bs!606993 (and d!1271356 d!1271322)))

(assert (=> bs!606993 (= lambda!134053 lambda!134044)))

(declare-fun bs!606994 () Bool)

(assert (= bs!606994 (and d!1271356 b!4323576)))

(assert (=> bs!606994 (= lambda!134053 lambda!134047)))

(declare-fun bs!606995 () Bool)

(assert (= bs!606995 (and d!1271356 d!1271338)))

(assert (=> bs!606995 (= lambda!134053 lambda!134050)))

(declare-fun bs!606996 () Bool)

(assert (= bs!606996 (and d!1271356 d!1271340)))

(assert (=> bs!606996 (not (= lambda!134053 lambda!134051))))

(declare-fun bs!606997 () Bool)

(assert (= bs!606997 (and d!1271356 d!1271312)))

(assert (=> bs!606997 (not (= lambda!134053 lambda!134033))))

(declare-fun bs!606998 () Bool)

(assert (= bs!606998 (and d!1271356 d!1271314)))

(assert (=> bs!606998 (not (= lambda!134053 lambda!134036))))

(declare-fun bs!606999 () Bool)

(assert (= bs!606999 (and d!1271356 d!1271348)))

(assert (=> bs!606999 (not (= lambda!134053 lambda!134052))))

(declare-fun bs!607000 () Bool)

(assert (= bs!607000 (and d!1271356 b!4323535)))

(assert (=> bs!607000 (= lambda!134053 lambda!134039)))

(declare-fun lt!1541142 () ListMap!1843)

(assert (=> d!1271356 (invariantList!604 (toList!2567 lt!1541142))))

(declare-fun e!2690027 () ListMap!1843)

(assert (=> d!1271356 (= lt!1541142 e!2690027)))

(declare-fun c!735504 () Bool)

(assert (=> d!1271356 (= c!735504 ((_ is Cons!48395) (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))))))

(assert (=> d!1271356 (forall!8820 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lambda!134053)))

(assert (=> d!1271356 (= (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))) lt!1541142)))

(declare-fun b!4323644 () Bool)

(assert (=> b!4323644 (= e!2690027 (addToMapMapFromBucket!54 (_2!26901 (h!53858 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) (extractMap!372 (t!355409 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))))))))

(declare-fun b!4323645 () Bool)

(assert (=> b!4323645 (= e!2690027 (ListMap!1844 Nil!48394))))

(assert (= (and d!1271356 c!735504) b!4323644))

(assert (= (and d!1271356 (not c!735504)) b!4323645))

(declare-fun m!4918163 () Bool)

(assert (=> d!1271356 m!4918163))

(declare-fun m!4918165 () Bool)

(assert (=> d!1271356 m!4918165))

(declare-fun m!4918167 () Bool)

(assert (=> b!4323644 m!4918167))

(assert (=> b!4323644 m!4918167))

(declare-fun m!4918169 () Bool)

(assert (=> b!4323644 m!4918169))

(assert (=> d!1271332 d!1271356))

(assert (=> d!1271332 d!1271330))

(assert (=> d!1271332 d!1271316))

(declare-fun d!1271358 () Bool)

(assert (=> d!1271358 (= (map!10422 (_2!26902 lt!1541018)) (map!10424 (v!42796 (underlying!9747 (_2!26902 lt!1541018)))))))

(declare-fun bs!607001 () Bool)

(assert (= bs!607001 d!1271358))

(declare-fun m!4918171 () Bool)

(assert (=> bs!607001 m!4918171))

(assert (=> bm!299876 d!1271358))

(declare-fun b!4323654 () Bool)

(declare-fun e!2690032 () Option!10309)

(assert (=> b!4323654 (= e!2690032 (Some!10308 (_2!26901 (h!53858 (toList!2566 lt!1541044)))))))

(declare-fun b!4323657 () Bool)

(declare-fun e!2690033 () Option!10309)

(assert (=> b!4323657 (= e!2690033 None!10308)))

(declare-fun b!4323656 () Bool)

(assert (=> b!4323656 (= e!2690033 (getValueByKey!303 (t!355409 (toList!2566 lt!1541044)) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun b!4323655 () Bool)

(assert (=> b!4323655 (= e!2690032 e!2690033)))

(declare-fun c!735510 () Bool)

(assert (=> b!4323655 (= c!735510 (and ((_ is Cons!48395) (toList!2566 lt!1541044)) (not (= (_1!26901 (h!53858 (toList!2566 lt!1541044))) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))))))))

(declare-fun d!1271360 () Bool)

(declare-fun c!735509 () Bool)

(assert (=> d!1271360 (= c!735509 (and ((_ is Cons!48395) (toList!2566 lt!1541044)) (= (_1!26901 (h!53858 (toList!2566 lt!1541044))) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)))))))

(assert (=> d!1271360 (= (getValueByKey!303 (toList!2566 lt!1541044) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))) e!2690032)))

(assert (= (and d!1271360 c!735509) b!4323654))

(assert (= (and d!1271360 (not c!735509)) b!4323655))

(assert (= (and b!4323655 c!735510) b!4323656))

(assert (= (and b!4323655 (not c!735510)) b!4323657))

(declare-fun m!4918173 () Bool)

(assert (=> b!4323656 m!4918173))

(assert (=> b!4323547 d!1271360))

(declare-fun d!1271362 () Bool)

(assert (=> d!1271362 (= (imbalanced!83 (v!42797 (underlying!9748 thiss!42308))) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9563 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_vacant!4822 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) (bvsgt (_vacant!4822 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_size!9563 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))))))))

(assert (=> d!1271292 d!1271362))

(declare-fun d!1271364 () Bool)

(declare-fun valid!3773 (LongMapFixedSize!9518) Bool)

(assert (=> d!1271364 (= (valid!3772 (v!42797 (underlying!9748 thiss!42308))) (valid!3773 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))))))

(declare-fun bs!607002 () Bool)

(assert (= bs!607002 d!1271364))

(declare-fun m!4918175 () Bool)

(assert (=> bs!607002 m!4918175))

(assert (=> d!1271292 d!1271364))

(declare-fun b!4323658 () Bool)

(assert (=> b!4323658 false))

(declare-fun lt!1541146 () Unit!67880)

(declare-fun lt!1541150 () Unit!67880)

(assert (=> b!4323658 (= lt!1541146 lt!1541150)))

(assert (=> b!4323658 (containsKey!411 (toList!2567 (extractMap!372 (toList!2566 lt!1541102))) key!2048)))

(assert (=> b!4323658 (= lt!1541150 (lemmaInGetKeysListThenContainsKey!56 (toList!2567 (extractMap!372 (toList!2566 lt!1541102))) key!2048))))

(declare-fun e!2690039 () Unit!67880)

(declare-fun Unit!67891 () Unit!67880)

(assert (=> b!4323658 (= e!2690039 Unit!67891)))

(declare-fun bm!299899 () Bool)

(declare-fun call!299904 () Bool)

(declare-fun e!2690036 () List!48520)

(assert (=> bm!299899 (= call!299904 (contains!10458 e!2690036 key!2048))))

(declare-fun c!735511 () Bool)

(declare-fun c!735512 () Bool)

(assert (=> bm!299899 (= c!735511 c!735512)))

(declare-fun b!4323660 () Bool)

(declare-fun e!2690037 () Unit!67880)

(declare-fun lt!1541145 () Unit!67880)

(assert (=> b!4323660 (= e!2690037 lt!1541145)))

(declare-fun lt!1541149 () Unit!67880)

(assert (=> b!4323660 (= lt!1541149 (lemmaContainsKeyImpliesGetValueByKeyDefined!223 (toList!2567 (extractMap!372 (toList!2566 lt!1541102))) key!2048))))

(assert (=> b!4323660 (isDefined!7612 (getValueByKey!304 (toList!2567 (extractMap!372 (toList!2566 lt!1541102))) key!2048))))

(declare-fun lt!1541143 () Unit!67880)

(assert (=> b!4323660 (= lt!1541143 lt!1541149)))

(assert (=> b!4323660 (= lt!1541145 (lemmaInListThenGetKeysListContains!56 (toList!2567 (extractMap!372 (toList!2566 lt!1541102))) key!2048))))

(assert (=> b!4323660 call!299904))

(declare-fun b!4323661 () Bool)

(declare-fun e!2690035 () Bool)

(assert (=> b!4323661 (= e!2690035 (contains!10458 (keys!16182 (extractMap!372 (toList!2566 lt!1541102))) key!2048))))

(declare-fun b!4323662 () Bool)

(assert (=> b!4323662 (= e!2690037 e!2690039)))

(declare-fun c!735513 () Bool)

(assert (=> b!4323662 (= c!735513 call!299904)))

(declare-fun d!1271366 () Bool)

(declare-fun e!2690038 () Bool)

(assert (=> d!1271366 e!2690038))

(declare-fun res!1771962 () Bool)

(assert (=> d!1271366 (=> res!1771962 e!2690038)))

(declare-fun e!2690034 () Bool)

(assert (=> d!1271366 (= res!1771962 e!2690034)))

(declare-fun res!1771960 () Bool)

(assert (=> d!1271366 (=> (not res!1771960) (not e!2690034))))

(declare-fun lt!1541147 () Bool)

(assert (=> d!1271366 (= res!1771960 (not lt!1541147))))

(declare-fun lt!1541148 () Bool)

(assert (=> d!1271366 (= lt!1541147 lt!1541148)))

(declare-fun lt!1541144 () Unit!67880)

(assert (=> d!1271366 (= lt!1541144 e!2690037)))

(assert (=> d!1271366 (= c!735512 lt!1541148)))

(assert (=> d!1271366 (= lt!1541148 (containsKey!411 (toList!2567 (extractMap!372 (toList!2566 lt!1541102))) key!2048))))

(assert (=> d!1271366 (= (contains!10452 (extractMap!372 (toList!2566 lt!1541102)) key!2048) lt!1541147)))

(declare-fun b!4323659 () Bool)

(assert (=> b!4323659 (= e!2690036 (getKeysList!59 (toList!2567 (extractMap!372 (toList!2566 lt!1541102)))))))

(declare-fun b!4323663 () Bool)

(assert (=> b!4323663 (= e!2690034 (not (contains!10458 (keys!16182 (extractMap!372 (toList!2566 lt!1541102))) key!2048)))))

(declare-fun b!4323664 () Bool)

(declare-fun Unit!67892 () Unit!67880)

(assert (=> b!4323664 (= e!2690039 Unit!67892)))

(declare-fun b!4323665 () Bool)

(assert (=> b!4323665 (= e!2690036 (keys!16182 (extractMap!372 (toList!2566 lt!1541102))))))

(declare-fun b!4323666 () Bool)

(assert (=> b!4323666 (= e!2690038 e!2690035)))

(declare-fun res!1771961 () Bool)

(assert (=> b!4323666 (=> (not res!1771961) (not e!2690035))))

(assert (=> b!4323666 (= res!1771961 (isDefined!7612 (getValueByKey!304 (toList!2567 (extractMap!372 (toList!2566 lt!1541102))) key!2048)))))

(assert (= (and d!1271366 c!735512) b!4323660))

(assert (= (and d!1271366 (not c!735512)) b!4323662))

(assert (= (and b!4323662 c!735513) b!4323658))

(assert (= (and b!4323662 (not c!735513)) b!4323664))

(assert (= (or b!4323660 b!4323662) bm!299899))

(assert (= (and bm!299899 c!735511) b!4323659))

(assert (= (and bm!299899 (not c!735511)) b!4323665))

(assert (= (and d!1271366 res!1771960) b!4323663))

(assert (= (and d!1271366 (not res!1771962)) b!4323666))

(assert (= (and b!4323666 res!1771961) b!4323661))

(declare-fun m!4918177 () Bool)

(assert (=> d!1271366 m!4918177))

(declare-fun m!4918179 () Bool)

(assert (=> b!4323666 m!4918179))

(assert (=> b!4323666 m!4918179))

(declare-fun m!4918181 () Bool)

(assert (=> b!4323666 m!4918181))

(declare-fun m!4918183 () Bool)

(assert (=> b!4323659 m!4918183))

(assert (=> b!4323665 m!4918099))

(declare-fun m!4918185 () Bool)

(assert (=> b!4323665 m!4918185))

(declare-fun m!4918187 () Bool)

(assert (=> b!4323660 m!4918187))

(assert (=> b!4323660 m!4918179))

(assert (=> b!4323660 m!4918179))

(assert (=> b!4323660 m!4918181))

(declare-fun m!4918189 () Bool)

(assert (=> b!4323660 m!4918189))

(assert (=> b!4323661 m!4918099))

(assert (=> b!4323661 m!4918185))

(assert (=> b!4323661 m!4918185))

(declare-fun m!4918191 () Bool)

(assert (=> b!4323661 m!4918191))

(assert (=> b!4323663 m!4918099))

(assert (=> b!4323663 m!4918185))

(assert (=> b!4323663 m!4918185))

(assert (=> b!4323663 m!4918191))

(assert (=> b!4323658 m!4918177))

(declare-fun m!4918193 () Bool)

(assert (=> b!4323658 m!4918193))

(declare-fun m!4918195 () Bool)

(assert (=> bm!299899 m!4918195))

(assert (=> b!4323585 d!1271366))

(declare-fun bs!607003 () Bool)

(declare-fun d!1271368 () Bool)

(assert (= bs!607003 (and d!1271368 b!4323470)))

(declare-fun lambda!134054 () Int)

(assert (=> bs!607003 (= lambda!134054 lambda!134025)))

(declare-fun bs!607004 () Bool)

(assert (= bs!607004 (and d!1271368 d!1271322)))

(assert (=> bs!607004 (= lambda!134054 lambda!134044)))

(declare-fun bs!607005 () Bool)

(assert (= bs!607005 (and d!1271368 d!1271356)))

(assert (=> bs!607005 (= lambda!134054 lambda!134053)))

(declare-fun bs!607006 () Bool)

(assert (= bs!607006 (and d!1271368 b!4323576)))

(assert (=> bs!607006 (= lambda!134054 lambda!134047)))

(declare-fun bs!607007 () Bool)

(assert (= bs!607007 (and d!1271368 d!1271338)))

(assert (=> bs!607007 (= lambda!134054 lambda!134050)))

(declare-fun bs!607008 () Bool)

(assert (= bs!607008 (and d!1271368 d!1271340)))

(assert (=> bs!607008 (not (= lambda!134054 lambda!134051))))

(declare-fun bs!607009 () Bool)

(assert (= bs!607009 (and d!1271368 d!1271312)))

(assert (=> bs!607009 (not (= lambda!134054 lambda!134033))))

(declare-fun bs!607010 () Bool)

(assert (= bs!607010 (and d!1271368 d!1271314)))

(assert (=> bs!607010 (not (= lambda!134054 lambda!134036))))

(declare-fun bs!607011 () Bool)

(assert (= bs!607011 (and d!1271368 d!1271348)))

(assert (=> bs!607011 (not (= lambda!134054 lambda!134052))))

(declare-fun bs!607012 () Bool)

(assert (= bs!607012 (and d!1271368 b!4323535)))

(assert (=> bs!607012 (= lambda!134054 lambda!134039)))

(declare-fun lt!1541151 () ListMap!1843)

(assert (=> d!1271368 (invariantList!604 (toList!2567 lt!1541151))))

(declare-fun e!2690040 () ListMap!1843)

(assert (=> d!1271368 (= lt!1541151 e!2690040)))

(declare-fun c!735514 () Bool)

(assert (=> d!1271368 (= c!735514 ((_ is Cons!48395) (toList!2566 lt!1541102)))))

(assert (=> d!1271368 (forall!8820 (toList!2566 lt!1541102) lambda!134054)))

(assert (=> d!1271368 (= (extractMap!372 (toList!2566 lt!1541102)) lt!1541151)))

(declare-fun b!4323667 () Bool)

(assert (=> b!4323667 (= e!2690040 (addToMapMapFromBucket!54 (_2!26901 (h!53858 (toList!2566 lt!1541102))) (extractMap!372 (t!355409 (toList!2566 lt!1541102)))))))

(declare-fun b!4323668 () Bool)

(assert (=> b!4323668 (= e!2690040 (ListMap!1844 Nil!48394))))

(assert (= (and d!1271368 c!735514) b!4323667))

(assert (= (and d!1271368 (not c!735514)) b!4323668))

(declare-fun m!4918197 () Bool)

(assert (=> d!1271368 m!4918197))

(declare-fun m!4918199 () Bool)

(assert (=> d!1271368 m!4918199))

(declare-fun m!4918201 () Bool)

(assert (=> b!4323667 m!4918201))

(assert (=> b!4323667 m!4918201))

(declare-fun m!4918203 () Bool)

(assert (=> b!4323667 m!4918203))

(assert (=> b!4323585 d!1271368))

(declare-fun bs!607013 () Bool)

(declare-fun d!1271370 () Bool)

(assert (= bs!607013 (and d!1271370 d!1271368)))

(declare-fun lambda!134057 () Int)

(assert (=> bs!607013 (= lambda!134057 lambda!134054)))

(declare-fun bs!607014 () Bool)

(assert (= bs!607014 (and d!1271370 b!4323470)))

(assert (=> bs!607014 (= lambda!134057 lambda!134025)))

(declare-fun bs!607015 () Bool)

(assert (= bs!607015 (and d!1271370 d!1271322)))

(assert (=> bs!607015 (= lambda!134057 lambda!134044)))

(declare-fun bs!607016 () Bool)

(assert (= bs!607016 (and d!1271370 d!1271356)))

(assert (=> bs!607016 (= lambda!134057 lambda!134053)))

(declare-fun bs!607017 () Bool)

(assert (= bs!607017 (and d!1271370 b!4323576)))

(assert (=> bs!607017 (= lambda!134057 lambda!134047)))

(declare-fun bs!607018 () Bool)

(assert (= bs!607018 (and d!1271370 d!1271338)))

(assert (=> bs!607018 (= lambda!134057 lambda!134050)))

(declare-fun bs!607019 () Bool)

(assert (= bs!607019 (and d!1271370 d!1271340)))

(assert (=> bs!607019 (not (= lambda!134057 lambda!134051))))

(declare-fun bs!607020 () Bool)

(assert (= bs!607020 (and d!1271370 d!1271312)))

(assert (=> bs!607020 (not (= lambda!134057 lambda!134033))))

(declare-fun bs!607021 () Bool)

(assert (= bs!607021 (and d!1271370 d!1271314)))

(assert (=> bs!607021 (not (= lambda!134057 lambda!134036))))

(declare-fun bs!607022 () Bool)

(assert (= bs!607022 (and d!1271370 d!1271348)))

(assert (=> bs!607022 (not (= lambda!134057 lambda!134052))))

(declare-fun bs!607023 () Bool)

(assert (= bs!607023 (and d!1271370 b!4323535)))

(assert (=> bs!607023 (= lambda!134057 lambda!134039)))

(assert (=> d!1271370 (contains!10452 (extractMap!372 (toList!2566 lt!1541102)) key!2048)))

(declare-fun lt!1541154 () Unit!67880)

(declare-fun choose!26425 (ListLongMap!1183 K!9644 Hashable!4675) Unit!67880)

(assert (=> d!1271370 (= lt!1541154 (choose!26425 lt!1541102 key!2048 (hashF!6947 thiss!42308)))))

(assert (=> d!1271370 (forall!8820 (toList!2566 lt!1541102) lambda!134057)))

(assert (=> d!1271370 (= (lemmaInLongMapThenInGenericMap!165 lt!1541102 key!2048 (hashF!6947 thiss!42308)) lt!1541154)))

(declare-fun bs!607024 () Bool)

(assert (= bs!607024 d!1271370))

(assert (=> bs!607024 m!4918099))

(assert (=> bs!607024 m!4918099))

(assert (=> bs!607024 m!4918101))

(declare-fun m!4918205 () Bool)

(assert (=> bs!607024 m!4918205))

(declare-fun m!4918207 () Bool)

(assert (=> bs!607024 m!4918207))

(assert (=> b!4323585 d!1271370))

(declare-fun d!1271372 () Bool)

(declare-fun res!1771967 () Bool)

(declare-fun e!2690045 () Bool)

(assert (=> d!1271372 (=> res!1771967 e!2690045)))

(assert (=> d!1271372 (= res!1771967 (and ((_ is Cons!48394) (t!355408 lt!1540989)) (= (_1!26900 (h!53857 (t!355408 lt!1540989))) (_1!26900 (h!53857 lt!1540989)))))))

(assert (=> d!1271372 (= (containsKey!410 (t!355408 lt!1540989) (_1!26900 (h!53857 lt!1540989))) e!2690045)))

(declare-fun b!4323673 () Bool)

(declare-fun e!2690046 () Bool)

(assert (=> b!4323673 (= e!2690045 e!2690046)))

(declare-fun res!1771968 () Bool)

(assert (=> b!4323673 (=> (not res!1771968) (not e!2690046))))

(assert (=> b!4323673 (= res!1771968 ((_ is Cons!48394) (t!355408 lt!1540989)))))

(declare-fun b!4323674 () Bool)

(assert (=> b!4323674 (= e!2690046 (containsKey!410 (t!355408 (t!355408 lt!1540989)) (_1!26900 (h!53857 lt!1540989))))))

(assert (= (and d!1271372 (not res!1771967)) b!4323673))

(assert (= (and b!4323673 res!1771968) b!4323674))

(declare-fun m!4918209 () Bool)

(assert (=> b!4323674 m!4918209))

(assert (=> b!4323624 d!1271372))

(declare-fun b!4323691 () Bool)

(declare-fun e!2690060 () Bool)

(assert (=> b!4323691 (= e!2690060 (not (containsKey!410 call!299896 key!2048)))))

(declare-fun b!4323692 () Bool)

(declare-fun e!2690059 () Bool)

(declare-fun e!2690058 () Bool)

(assert (=> b!4323692 (= e!2690059 e!2690058)))

(declare-fun res!1771980 () Bool)

(assert (=> b!4323692 (=> (not res!1771980) (not e!2690058))))

(declare-fun lt!1541157 () Option!10310)

(assert (=> b!4323692 (= res!1771980 (isDefined!7611 lt!1541157))))

(declare-fun b!4323693 () Bool)

(declare-fun e!2690057 () Option!10310)

(assert (=> b!4323693 (= e!2690057 (getPair!165 (t!355408 call!299896) key!2048))))

(declare-fun b!4323694 () Bool)

(declare-fun res!1771978 () Bool)

(assert (=> b!4323694 (=> (not res!1771978) (not e!2690058))))

(declare-fun get!15683 (Option!10310) tuple2!47226)

(assert (=> b!4323694 (= res!1771978 (= (_1!26900 (get!15683 lt!1541157)) key!2048))))

(declare-fun b!4323695 () Bool)

(assert (=> b!4323695 (= e!2690057 None!10309)))

(declare-fun b!4323696 () Bool)

(declare-fun e!2690061 () Option!10310)

(assert (=> b!4323696 (= e!2690061 e!2690057)))

(declare-fun c!735519 () Bool)

(assert (=> b!4323696 (= c!735519 ((_ is Cons!48394) call!299896))))

(declare-fun d!1271374 () Bool)

(assert (=> d!1271374 e!2690059))

(declare-fun res!1771977 () Bool)

(assert (=> d!1271374 (=> res!1771977 e!2690059)))

(assert (=> d!1271374 (= res!1771977 e!2690060)))

(declare-fun res!1771979 () Bool)

(assert (=> d!1271374 (=> (not res!1771979) (not e!2690060))))

(declare-fun isEmpty!28127 (Option!10310) Bool)

(assert (=> d!1271374 (= res!1771979 (isEmpty!28127 lt!1541157))))

(assert (=> d!1271374 (= lt!1541157 e!2690061)))

(declare-fun c!735520 () Bool)

(assert (=> d!1271374 (= c!735520 (and ((_ is Cons!48394) call!299896) (= (_1!26900 (h!53857 call!299896)) key!2048)))))

(assert (=> d!1271374 (noDuplicateKeys!265 call!299896)))

(assert (=> d!1271374 (= (getPair!165 call!299896 key!2048) lt!1541157)))

(declare-fun b!4323697 () Bool)

(assert (=> b!4323697 (= e!2690061 (Some!10309 (h!53857 call!299896)))))

(declare-fun b!4323698 () Bool)

(declare-fun contains!10459 (List!48518 tuple2!47226) Bool)

(assert (=> b!4323698 (= e!2690058 (contains!10459 call!299896 (get!15683 lt!1541157)))))

(assert (= (and d!1271374 c!735520) b!4323697))

(assert (= (and d!1271374 (not c!735520)) b!4323696))

(assert (= (and b!4323696 c!735519) b!4323693))

(assert (= (and b!4323696 (not c!735519)) b!4323695))

(assert (= (and d!1271374 res!1771979) b!4323691))

(assert (= (and d!1271374 (not res!1771977)) b!4323692))

(assert (= (and b!4323692 res!1771980) b!4323694))

(assert (= (and b!4323694 res!1771978) b!4323698))

(declare-fun m!4918211 () Bool)

(assert (=> d!1271374 m!4918211))

(declare-fun m!4918213 () Bool)

(assert (=> d!1271374 m!4918213))

(declare-fun m!4918215 () Bool)

(assert (=> b!4323692 m!4918215))

(declare-fun m!4918217 () Bool)

(assert (=> b!4323691 m!4918217))

(declare-fun m!4918219 () Bool)

(assert (=> b!4323694 m!4918219))

(assert (=> b!4323698 m!4918219))

(assert (=> b!4323698 m!4918219))

(declare-fun m!4918221 () Bool)

(assert (=> b!4323698 m!4918221))

(declare-fun m!4918223 () Bool)

(assert (=> b!4323693 m!4918223))

(assert (=> bm!299894 d!1271374))

(declare-fun d!1271376 () Bool)

(declare-fun res!1771981 () Bool)

(declare-fun e!2690062 () Bool)

(assert (=> d!1271376 (=> res!1771981 e!2690062)))

(assert (=> d!1271376 (= res!1771981 ((_ is Nil!48395) (toList!2566 lt!1540985)))))

(assert (=> d!1271376 (= (forall!8820 (toList!2566 lt!1540985) lambda!134036) e!2690062)))

(declare-fun b!4323699 () Bool)

(declare-fun e!2690063 () Bool)

(assert (=> b!4323699 (= e!2690062 e!2690063)))

(declare-fun res!1771982 () Bool)

(assert (=> b!4323699 (=> (not res!1771982) (not e!2690063))))

(assert (=> b!4323699 (= res!1771982 (dynLambda!20514 lambda!134036 (h!53858 (toList!2566 lt!1540985))))))

(declare-fun b!4323700 () Bool)

(assert (=> b!4323700 (= e!2690063 (forall!8820 (t!355409 (toList!2566 lt!1540985)) lambda!134036))))

(assert (= (and d!1271376 (not res!1771981)) b!4323699))

(assert (= (and b!4323699 res!1771982) b!4323700))

(declare-fun b_lambda!127423 () Bool)

(assert (=> (not b_lambda!127423) (not b!4323699)))

(declare-fun m!4918225 () Bool)

(assert (=> b!4323699 m!4918225))

(declare-fun m!4918227 () Bool)

(assert (=> b!4323700 m!4918227))

(assert (=> d!1271314 d!1271376))

(assert (=> d!1271288 d!1271294))

(declare-fun b!4323737 () Bool)

(declare-fun e!2690092 () Bool)

(declare-fun call!299915 () List!48518)

(assert (=> b!4323737 (= e!2690092 (= call!299915 (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun b!4323738 () Bool)

(declare-fun e!2690096 () List!48518)

(assert (=> b!4323738 (= e!2690096 (dynLambda!20513 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991))))

(declare-fun d!1271378 () Bool)

(declare-fun e!2690093 () Bool)

(assert (=> d!1271378 e!2690093))

(declare-fun c!735538 () Bool)

(assert (=> d!1271378 (= c!735538 (contains!10456 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991))))

(declare-fun lt!1541188 () List!48518)

(declare-fun e!2690091 () List!48518)

(assert (=> d!1271378 (= lt!1541188 e!2690091)))

(declare-fun c!735537 () Bool)

(assert (=> d!1271378 (= c!735537 (= lt!1540991 (bvneg lt!1540991)))))

(assert (=> d!1271378 (valid!3773 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))

(assert (=> d!1271378 (= (apply!11152 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991) lt!1541188)))

(declare-fun b!4323739 () Bool)

(declare-fun e!2690094 () Bool)

(declare-fun e!2690095 () Bool)

(assert (=> b!4323739 (= e!2690094 e!2690095)))

(declare-fun c!735536 () Bool)

(assert (=> b!4323739 (= c!735536 (= lt!1540991 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4323740 () Bool)

(declare-fun e!2690086 () List!48518)

(assert (=> b!4323740 (= e!2690086 (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))))))

(declare-datatypes ((SeekEntryResult!22 0))(
  ( (Found!22 (index!1469 (_ BitVec 32))) (Undefined!22) (MissingZero!22 (index!1470 (_ BitVec 32))) (MissingVacant!22 (index!1471 (_ BitVec 32))) (Intermediate!22 (undefined!103 Bool) (index!1472 (_ BitVec 32)) (x!750583 (_ BitVec 32))) )
))
(declare-fun lt!1541180 () SeekEntryResult!22)

(declare-fun b!4323741 () Bool)

(declare-fun e!2690090 () Bool)

(assert (=> b!4323741 (= e!2690090 (= call!299915 (select (arr!7704 (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) (index!1469 lt!1541180))))))

(declare-fun b!4323742 () Bool)

(assert (=> b!4323742 (= e!2690093 (= lt!1541188 (get!15682 (getValueByKey!303 (toList!2566 (map!10424 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) lt!1540991))))))

(declare-fun bm!299908 () Bool)

(declare-fun call!299913 () List!48518)

(assert (=> bm!299908 (= call!299915 call!299913)))

(declare-fun b!4323743 () Bool)

(declare-fun e!2690089 () List!48518)

(assert (=> b!4323743 (= e!2690089 (dynLambda!20513 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991))))

(declare-fun bm!299909 () Bool)

(declare-fun call!299916 () ListLongMap!1183)

(declare-fun call!299914 () ListLongMap!1183)

(assert (=> bm!299909 (= call!299916 call!299914)))

(declare-fun b!4323744 () Bool)

(assert (=> b!4323744 (= e!2690091 e!2690086)))

(declare-fun c!735541 () Bool)

(assert (=> b!4323744 (= c!735541 (and (= lt!1540991 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4323745 () Bool)

(declare-fun c!735535 () Bool)

(assert (=> b!4323745 (= c!735535 (and (= lt!1540991 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!4323745 (= e!2690086 e!2690089)))

(declare-fun b!4323746 () Bool)

(declare-fun e!2690088 () Bool)

(declare-fun lt!1541187 () SeekEntryResult!22)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4323746 (= e!2690088 (inRange!0 (index!1469 lt!1541187) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun bm!299910 () Bool)

(declare-fun getCurrentListMap!25 (array!17262 array!17264 (_ BitVec 32) (_ BitVec 32) List!48518 List!48518 (_ BitVec 32) Int) ListLongMap!1183)

(assert (=> bm!299910 (= call!299914 (getCurrentListMap!25 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun b!4323747 () Bool)

(declare-fun e!2690087 () Bool)

(assert (=> b!4323747 (= e!2690094 e!2690087)))

(declare-fun res!1771991 () Bool)

(assert (=> b!4323747 (= res!1771991 (not (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4323747 (=> (not res!1771991) (not e!2690087))))

(declare-fun b!4323748 () Bool)

(assert (=> b!4323748 (= e!2690091 e!2690096)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!17262 (_ BitVec 32)) SeekEntryResult!22)

(assert (=> b!4323748 (= lt!1541180 (seekEntry!0 lt!1540991 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun lt!1541183 () Unit!67880)

(declare-fun lemmaSeekEntryGivesInRangeIndex!12 (array!17262 array!17264 (_ BitVec 32) (_ BitVec 32) List!48518 List!48518 (_ BitVec 64)) Unit!67880)

(assert (=> b!4323748 (= lt!1541183 (lemmaSeekEntryGivesInRangeIndex!12 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991))))

(assert (=> b!4323748 (= lt!1541187 (seekEntry!0 lt!1540991 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun res!1771993 () Bool)

(assert (=> b!4323748 (= res!1771993 (not ((_ is Found!22) lt!1541187)))))

(assert (=> b!4323748 (=> res!1771993 e!2690088)))

(assert (=> b!4323748 e!2690088))

(declare-fun lt!1541184 () Unit!67880)

(assert (=> b!4323748 (= lt!1541184 lt!1541183)))

(declare-fun c!735540 () Bool)

(assert (=> b!4323748 (= c!735540 ((_ is Found!22) lt!1541180))))

(declare-fun b!4323749 () Bool)

(declare-fun res!1771994 () Bool)

(assert (=> b!4323749 (=> (not res!1771994) (not e!2690092))))

(assert (=> b!4323749 (= res!1771994 (not (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4323749 (= e!2690095 e!2690092)))

(declare-fun b!4323750 () Bool)

(assert (=> b!4323750 (= e!2690093 (= lt!1541188 (dynLambda!20513 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991)))))

(declare-fun b!4323751 () Bool)

(declare-fun lt!1541182 () Unit!67880)

(declare-fun lt!1541186 () Unit!67880)

(assert (=> b!4323751 (= lt!1541182 lt!1541186)))

(assert (=> b!4323751 e!2690094))

(declare-fun c!735539 () Bool)

(assert (=> b!4323751 (= c!735539 (= lt!1540991 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lemmaKeyInListMapThenSameValueInArray!12 (array!17262 array!17264 (_ BitVec 32) (_ BitVec 32) List!48518 List!48518 (_ BitVec 64) (_ BitVec 32) Int) Unit!67880)

(assert (=> b!4323751 (= lt!1541186 (lemmaKeyInListMapThenSameValueInArray!12 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991 (index!1469 lt!1541180) (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun lt!1541185 () Unit!67880)

(declare-fun lt!1541181 () Unit!67880)

(assert (=> b!4323751 (= lt!1541185 lt!1541181)))

(assert (=> b!4323751 (contains!10455 (getCurrentListMap!25 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) (select (arr!7703 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) (index!1469 lt!1541180)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!15 (array!17262 array!17264 (_ BitVec 32) (_ BitVec 32) List!48518 List!48518 (_ BitVec 32) Int) Unit!67880)

(assert (=> b!4323751 (= lt!1541181 (lemmaValidKeyInArrayIsInListMap!15 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (index!1469 lt!1541180) (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun lt!1541189 () Unit!67880)

(declare-fun lt!1541190 () Unit!67880)

(assert (=> b!4323751 (= lt!1541189 lt!1541190)))

(declare-fun arrayContainsKey!0 (array!17262 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4323751 (arrayContainsKey!0 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17262 (_ BitVec 64) (_ BitVec 32)) Unit!67880)

(assert (=> b!4323751 (= lt!1541190 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991 (index!1469 lt!1541180)))))

(assert (=> b!4323751 (= e!2690096 (select (arr!7704 (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) (index!1469 lt!1541180)))))

(declare-fun b!4323752 () Bool)

(declare-fun res!1771992 () Bool)

(assert (=> b!4323752 (=> (not res!1771992) (not e!2690090))))

(assert (=> b!4323752 (= res!1771992 (arrayContainsKey!0 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991 #b00000000000000000000000000000000))))

(assert (=> b!4323752 (= e!2690095 e!2690090)))

(declare-fun bm!299911 () Bool)

(assert (=> bm!299911 (= call!299913 (apply!11151 (ite c!735539 call!299914 call!299916) lt!1540991))))

(declare-fun b!4323753 () Bool)

(assert (=> b!4323753 (= e!2690089 (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))))))

(declare-fun b!4323754 () Bool)

(assert (=> b!4323754 (= e!2690087 (= call!299913 (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(assert (= (and d!1271378 c!735537) b!4323744))

(assert (= (and d!1271378 (not c!735537)) b!4323748))

(assert (= (and b!4323744 c!735541) b!4323740))

(assert (= (and b!4323744 (not c!735541)) b!4323745))

(assert (= (and b!4323745 c!735535) b!4323753))

(assert (= (and b!4323745 (not c!735535)) b!4323743))

(assert (= (and b!4323748 (not res!1771993)) b!4323746))

(assert (= (and b!4323748 c!735540) b!4323751))

(assert (= (and b!4323748 (not c!735540)) b!4323738))

(assert (= (and b!4323751 c!735539) b!4323747))

(assert (= (and b!4323751 (not c!735539)) b!4323739))

(assert (= (and b!4323747 res!1771991) b!4323754))

(assert (= (and b!4323739 c!735536) b!4323749))

(assert (= (and b!4323739 (not c!735536)) b!4323752))

(assert (= (and b!4323749 res!1771994) b!4323737))

(assert (= (and b!4323752 res!1771992) b!4323741))

(assert (= (or b!4323737 b!4323741) bm!299909))

(assert (= (or b!4323737 b!4323741) bm!299908))

(assert (= (or b!4323754 bm!299909) bm!299910))

(assert (= (or b!4323754 bm!299908) bm!299911))

(assert (= (and d!1271378 c!735538) b!4323742))

(assert (= (and d!1271378 (not c!735538)) b!4323750))

(declare-fun b_lambda!127425 () Bool)

(assert (=> (not b_lambda!127425) (not b!4323738)))

(assert (=> b!4323738 t!355411))

(declare-fun b_and!340565 () Bool)

(assert (= b_and!340563 (and (=> t!355411 result!314900) b_and!340565)))

(declare-fun b_lambda!127427 () Bool)

(assert (=> (not b_lambda!127427) (not b!4323743)))

(assert (=> b!4323743 t!355411))

(declare-fun b_and!340567 () Bool)

(assert (= b_and!340565 (and (=> t!355411 result!314900) b_and!340567)))

(declare-fun b_lambda!127429 () Bool)

(assert (=> (not b_lambda!127429) (not b!4323750)))

(assert (=> b!4323750 t!355411))

(declare-fun b_and!340569 () Bool)

(assert (= b_and!340567 (and (=> t!355411 result!314900) b_and!340569)))

(declare-fun m!4918229 () Bool)

(assert (=> b!4323748 m!4918229))

(declare-fun m!4918231 () Bool)

(assert (=> b!4323748 m!4918231))

(declare-fun m!4918233 () Bool)

(assert (=> bm!299911 m!4918233))

(declare-fun m!4918235 () Bool)

(assert (=> b!4323746 m!4918235))

(declare-fun m!4918237 () Bool)

(assert (=> bm!299910 m!4918237))

(assert (=> b!4323743 m!4917979))

(declare-fun m!4918239 () Bool)

(assert (=> b!4323751 m!4918239))

(declare-fun m!4918241 () Bool)

(assert (=> b!4323751 m!4918241))

(declare-fun m!4918243 () Bool)

(assert (=> b!4323751 m!4918243))

(declare-fun m!4918245 () Bool)

(assert (=> b!4323751 m!4918245))

(declare-fun m!4918247 () Bool)

(assert (=> b!4323751 m!4918247))

(assert (=> b!4323751 m!4918237))

(declare-fun m!4918249 () Bool)

(assert (=> b!4323751 m!4918249))

(assert (=> b!4323751 m!4918237))

(assert (=> b!4323751 m!4918243))

(declare-fun m!4918251 () Bool)

(assert (=> b!4323751 m!4918251))

(assert (=> d!1271378 m!4918005))

(assert (=> d!1271378 m!4918175))

(assert (=> b!4323750 m!4917979))

(assert (=> b!4323738 m!4917979))

(assert (=> b!4323742 m!4918109))

(declare-fun m!4918253 () Bool)

(assert (=> b!4323742 m!4918253))

(assert (=> b!4323742 m!4918253))

(declare-fun m!4918255 () Bool)

(assert (=> b!4323742 m!4918255))

(assert (=> b!4323741 m!4918249))

(assert (=> b!4323752 m!4918241))

(assert (=> d!1271288 d!1271378))

(assert (=> d!1271288 d!1271364))

(declare-fun d!1271380 () Bool)

(declare-fun e!2690097 () Bool)

(assert (=> d!1271380 e!2690097))

(declare-fun res!1771995 () Bool)

(assert (=> d!1271380 (=> (not res!1771995) (not e!2690097))))

(declare-fun lt!1541193 () ListLongMap!1183)

(assert (=> d!1271380 (= res!1771995 (contains!10455 lt!1541193 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun lt!1541191 () List!48519)

(assert (=> d!1271380 (= lt!1541193 (ListLongMap!1184 lt!1541191))))

(declare-fun lt!1541192 () Unit!67880)

(declare-fun lt!1541194 () Unit!67880)

(assert (=> d!1271380 (= lt!1541192 lt!1541194)))

(assert (=> d!1271380 (= (getValueByKey!303 lt!1541191 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))) (Some!10308 (_2!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(assert (=> d!1271380 (= lt!1541194 (lemmaContainsTupThenGetReturnValue!99 lt!1541191 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)) (_2!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(assert (=> d!1271380 (= lt!1541191 (insertStrictlySorted!59 (toList!2566 call!299881) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)) (_2!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(assert (=> d!1271380 (= (+!336 call!299881 (tuple2!47229 lt!1540991 lt!1540989)) lt!1541193)))

(declare-fun b!4323755 () Bool)

(declare-fun res!1771996 () Bool)

(assert (=> b!4323755 (=> (not res!1771996) (not e!2690097))))

(assert (=> b!4323755 (= res!1771996 (= (getValueByKey!303 (toList!2566 lt!1541193) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))) (Some!10308 (_2!26901 (tuple2!47229 lt!1540991 lt!1540989)))))))

(declare-fun b!4323756 () Bool)

(assert (=> b!4323756 (= e!2690097 (contains!10457 (toList!2566 lt!1541193) (tuple2!47229 lt!1540991 lt!1540989)))))

(assert (= (and d!1271380 res!1771995) b!4323755))

(assert (= (and b!4323755 res!1771996) b!4323756))

(declare-fun m!4918257 () Bool)

(assert (=> d!1271380 m!4918257))

(declare-fun m!4918259 () Bool)

(assert (=> d!1271380 m!4918259))

(declare-fun m!4918261 () Bool)

(assert (=> d!1271380 m!4918261))

(declare-fun m!4918263 () Bool)

(assert (=> d!1271380 m!4918263))

(declare-fun m!4918265 () Bool)

(assert (=> b!4323755 m!4918265))

(declare-fun m!4918267 () Bool)

(assert (=> b!4323756 m!4918267))

(assert (=> b!4323504 d!1271380))

(declare-fun d!1271382 () Bool)

(assert (=> d!1271382 (dynLambda!20514 lambda!134047 (tuple2!47229 lt!1541095 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095)))))

(declare-fun lt!1541197 () Unit!67880)

(declare-fun choose!26426 (List!48519 Int tuple2!47228) Unit!67880)

(assert (=> d!1271382 (= lt!1541197 (choose!26426 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lambda!134047 (tuple2!47229 lt!1541095 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))))))

(declare-fun e!2690100 () Bool)

(assert (=> d!1271382 e!2690100))

(declare-fun res!1771999 () Bool)

(assert (=> d!1271382 (=> (not res!1771999) (not e!2690100))))

(assert (=> d!1271382 (= res!1771999 (forall!8820 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lambda!134047))))

(assert (=> d!1271382 (= (forallContained!1537 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lambda!134047 (tuple2!47229 lt!1541095 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))) lt!1541197)))

(declare-fun b!4323759 () Bool)

(assert (=> b!4323759 (= e!2690100 (contains!10457 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) (tuple2!47229 lt!1541095 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))))))

(assert (= (and d!1271382 res!1771999) b!4323759))

(declare-fun b_lambda!127431 () Bool)

(assert (=> (not b_lambda!127431) (not d!1271382)))

(declare-fun m!4918269 () Bool)

(assert (=> d!1271382 m!4918269))

(declare-fun m!4918271 () Bool)

(assert (=> d!1271382 m!4918271))

(declare-fun m!4918273 () Bool)

(assert (=> d!1271382 m!4918273))

(assert (=> b!4323759 m!4918107))

(assert (=> b!4323576 d!1271382))

(assert (=> b!4323576 d!1271330))

(declare-fun d!1271384 () Bool)

(declare-fun e!2690101 () Bool)

(assert (=> d!1271384 e!2690101))

(declare-fun c!735542 () Bool)

(assert (=> d!1271384 (= c!735542 (contains!10453 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))))

(declare-fun lt!1541198 () List!48518)

(assert (=> d!1271384 (= lt!1541198 (apply!11152 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))) lt!1541095))))

(assert (=> d!1271384 (valid!3772 (v!42797 (underlying!9748 thiss!42308)))))

(assert (=> d!1271384 (= (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095) lt!1541198)))

(declare-fun b!4323760 () Bool)

(assert (=> b!4323760 (= e!2690101 (= lt!1541198 (get!15682 (getValueByKey!303 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lt!1541095))))))

(declare-fun b!4323761 () Bool)

(assert (=> b!4323761 (= e!2690101 (= lt!1541198 (dynLambda!20513 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1541095)))))

(assert (=> b!4323761 ((_ is LongMap!4759) (v!42797 (underlying!9748 thiss!42308)))))

(assert (= (and d!1271384 c!735542) b!4323760))

(assert (= (and d!1271384 (not c!735542)) b!4323761))

(declare-fun b_lambda!127433 () Bool)

(assert (=> (not b_lambda!127433) (not b!4323761)))

(declare-fun t!355414 () Bool)

(declare-fun tb!257377 () Bool)

(assert (=> (and b!4323466 (= (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) t!355414) tb!257377))

(assert (=> b!4323761 t!355414))

(declare-fun result!314906 () Bool)

(declare-fun b_and!340571 () Bool)

(assert (= b_and!340569 (and (=> t!355414 result!314906) b_and!340571)))

(assert (=> d!1271384 m!4918065))

(declare-fun m!4918275 () Bool)

(assert (=> d!1271384 m!4918275))

(assert (=> d!1271384 m!4917973))

(assert (=> b!4323760 m!4917951))

(declare-fun m!4918277 () Bool)

(assert (=> b!4323760 m!4918277))

(assert (=> b!4323760 m!4918277))

(declare-fun m!4918279 () Bool)

(assert (=> b!4323760 m!4918279))

(declare-fun m!4918281 () Bool)

(assert (=> b!4323761 m!4918281))

(assert (=> b!4323576 d!1271384))

(declare-fun d!1271386 () Bool)

(declare-fun lt!1541201 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7573 (List!48519) (InoxSet tuple2!47228))

(assert (=> d!1271386 (= lt!1541201 (select (content!7573 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))) (tuple2!47229 lt!1541095 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))))))

(declare-fun e!2690106 () Bool)

(assert (=> d!1271386 (= lt!1541201 e!2690106)))

(declare-fun res!1772004 () Bool)

(assert (=> d!1271386 (=> (not res!1772004) (not e!2690106))))

(assert (=> d!1271386 (= res!1772004 ((_ is Cons!48395) (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))))))

(assert (=> d!1271386 (= (contains!10457 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) (tuple2!47229 lt!1541095 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))) lt!1541201)))

(declare-fun b!4323766 () Bool)

(declare-fun e!2690107 () Bool)

(assert (=> b!4323766 (= e!2690106 e!2690107)))

(declare-fun res!1772005 () Bool)

(assert (=> b!4323766 (=> res!1772005 e!2690107)))

(assert (=> b!4323766 (= res!1772005 (= (h!53858 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))) (tuple2!47229 lt!1541095 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))))))

(declare-fun b!4323767 () Bool)

(assert (=> b!4323767 (= e!2690107 (contains!10457 (t!355409 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))) (tuple2!47229 lt!1541095 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))))))

(assert (= (and d!1271386 res!1772004) b!4323766))

(assert (= (and b!4323766 (not res!1772005)) b!4323767))

(declare-fun m!4918283 () Bool)

(assert (=> d!1271386 m!4918283))

(declare-fun m!4918285 () Bool)

(assert (=> d!1271386 m!4918285))

(declare-fun m!4918287 () Bool)

(assert (=> b!4323767 m!4918287))

(assert (=> b!4323576 d!1271386))

(declare-fun d!1271388 () Bool)

(assert (=> d!1271388 (isDefined!7612 (getValueByKey!304 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048))))

(declare-fun lt!1541204 () Unit!67880)

(declare-fun choose!26427 (List!48518 K!9644) Unit!67880)

(assert (=> d!1271388 (= lt!1541204 (choose!26427 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048))))

(assert (=> d!1271388 (invariantList!604 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))))

(assert (=> d!1271388 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!223 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048) lt!1541204)))

(declare-fun bs!607025 () Bool)

(assert (= bs!607025 d!1271388))

(assert (=> bs!607025 m!4918117))

(assert (=> bs!607025 m!4918117))

(assert (=> bs!607025 m!4918119))

(declare-fun m!4918289 () Bool)

(assert (=> bs!607025 m!4918289))

(declare-fun m!4918291 () Bool)

(assert (=> bs!607025 m!4918291))

(assert (=> b!4323607 d!1271388))

(declare-fun d!1271390 () Bool)

(declare-fun isEmpty!28128 (Option!10311) Bool)

(assert (=> d!1271390 (= (isDefined!7612 (getValueByKey!304 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048)) (not (isEmpty!28128 (getValueByKey!304 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048))))))

(declare-fun bs!607026 () Bool)

(assert (= bs!607026 d!1271390))

(assert (=> bs!607026 m!4918117))

(declare-fun m!4918293 () Bool)

(assert (=> bs!607026 m!4918293))

(assert (=> b!4323607 d!1271390))

(declare-fun b!4323777 () Bool)

(declare-fun e!2690112 () Option!10311)

(declare-fun e!2690113 () Option!10311)

(assert (=> b!4323777 (= e!2690112 e!2690113)))

(declare-fun c!735548 () Bool)

(assert (=> b!4323777 (= c!735548 (and ((_ is Cons!48394) (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))) (not (= (_1!26900 (h!53857 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))) key!2048))))))

(declare-fun d!1271392 () Bool)

(declare-fun c!735547 () Bool)

(assert (=> d!1271392 (= c!735547 (and ((_ is Cons!48394) (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))) (= (_1!26900 (h!53857 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))) key!2048)))))

(assert (=> d!1271392 (= (getValueByKey!304 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048) e!2690112)))

(declare-fun b!4323776 () Bool)

(assert (=> b!4323776 (= e!2690112 (Some!10310 (_2!26900 (h!53857 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))))))))

(declare-fun b!4323778 () Bool)

(assert (=> b!4323778 (= e!2690113 (getValueByKey!304 (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))) key!2048))))

(declare-fun b!4323779 () Bool)

(assert (=> b!4323779 (= e!2690113 None!10310)))

(assert (= (and d!1271392 c!735547) b!4323776))

(assert (= (and d!1271392 (not c!735547)) b!4323777))

(assert (= (and b!4323777 c!735548) b!4323778))

(assert (= (and b!4323777 (not c!735548)) b!4323779))

(declare-fun m!4918295 () Bool)

(assert (=> b!4323778 m!4918295))

(assert (=> b!4323607 d!1271392))

(declare-fun d!1271394 () Bool)

(assert (=> d!1271394 (contains!10458 (getKeysList!59 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))) key!2048)))

(declare-fun lt!1541207 () Unit!67880)

(declare-fun choose!26428 (List!48518 K!9644) Unit!67880)

(assert (=> d!1271394 (= lt!1541207 (choose!26428 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048))))

(assert (=> d!1271394 (invariantList!604 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))))

(assert (=> d!1271394 (= (lemmaInListThenGetKeysListContains!56 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048) lt!1541207)))

(declare-fun bs!607027 () Bool)

(assert (= bs!607027 d!1271394))

(assert (=> bs!607027 m!4918121))

(assert (=> bs!607027 m!4918121))

(declare-fun m!4918297 () Bool)

(assert (=> bs!607027 m!4918297))

(declare-fun m!4918299 () Bool)

(assert (=> bs!607027 m!4918299))

(assert (=> bs!607027 m!4918291))

(assert (=> b!4323607 d!1271394))

(declare-fun d!1271396 () Bool)

(declare-fun res!1772006 () Bool)

(declare-fun e!2690114 () Bool)

(assert (=> d!1271396 (=> res!1772006 e!2690114)))

(assert (=> d!1271396 (= res!1772006 ((_ is Nil!48395) (t!355409 (toList!2566 lt!1540985))))))

(assert (=> d!1271396 (= (forall!8820 (t!355409 (toList!2566 lt!1540985)) lambda!134025) e!2690114)))

(declare-fun b!4323780 () Bool)

(declare-fun e!2690115 () Bool)

(assert (=> b!4323780 (= e!2690114 e!2690115)))

(declare-fun res!1772007 () Bool)

(assert (=> b!4323780 (=> (not res!1772007) (not e!2690115))))

(assert (=> b!4323780 (= res!1772007 (dynLambda!20514 lambda!134025 (h!53858 (t!355409 (toList!2566 lt!1540985)))))))

(declare-fun b!4323781 () Bool)

(assert (=> b!4323781 (= e!2690115 (forall!8820 (t!355409 (t!355409 (toList!2566 lt!1540985))) lambda!134025))))

(assert (= (and d!1271396 (not res!1772006)) b!4323780))

(assert (= (and b!4323780 res!1772007) b!4323781))

(declare-fun b_lambda!127435 () Bool)

(assert (=> (not b_lambda!127435) (not b!4323780)))

(declare-fun m!4918301 () Bool)

(assert (=> b!4323780 m!4918301))

(declare-fun m!4918303 () Bool)

(assert (=> b!4323781 m!4918303))

(assert (=> b!4323542 d!1271396))

(declare-fun b!4323782 () Bool)

(declare-fun e!2690116 () List!48518)

(assert (=> b!4323782 (= e!2690116 (t!355408 (t!355408 lt!1540984)))))

(declare-fun b!4323783 () Bool)

(declare-fun e!2690117 () List!48518)

(assert (=> b!4323783 (= e!2690116 e!2690117)))

(declare-fun c!735549 () Bool)

(assert (=> b!4323783 (= c!735549 ((_ is Cons!48394) (t!355408 lt!1540984)))))

(declare-fun d!1271398 () Bool)

(declare-fun lt!1541208 () List!48518)

(assert (=> d!1271398 (not (containsKey!410 lt!1541208 key!2048))))

(assert (=> d!1271398 (= lt!1541208 e!2690116)))

(declare-fun c!735550 () Bool)

(assert (=> d!1271398 (= c!735550 (and ((_ is Cons!48394) (t!355408 lt!1540984)) (= (_1!26900 (h!53857 (t!355408 lt!1540984))) key!2048)))))

(assert (=> d!1271398 (noDuplicateKeys!265 (t!355408 lt!1540984))))

(assert (=> d!1271398 (= (removePairForKey!273 (t!355408 lt!1540984) key!2048) lt!1541208)))

(declare-fun b!4323784 () Bool)

(assert (=> b!4323784 (= e!2690117 (Cons!48394 (h!53857 (t!355408 lt!1540984)) (removePairForKey!273 (t!355408 (t!355408 lt!1540984)) key!2048)))))

(declare-fun b!4323785 () Bool)

(assert (=> b!4323785 (= e!2690117 Nil!48394)))

(assert (= (and d!1271398 c!735550) b!4323782))

(assert (= (and d!1271398 (not c!735550)) b!4323783))

(assert (= (and b!4323783 c!735549) b!4323784))

(assert (= (and b!4323783 (not c!735549)) b!4323785))

(declare-fun m!4918305 () Bool)

(assert (=> d!1271398 m!4918305))

(assert (=> d!1271398 m!4918159))

(declare-fun m!4918307 () Bool)

(assert (=> b!4323784 m!4918307))

(assert (=> b!4323527 d!1271398))

(declare-fun b!4323808 () Bool)

(assert (=> b!4323808 true))

(declare-fun bs!607028 () Bool)

(declare-fun b!4323812 () Bool)

(assert (= bs!607028 (and b!4323812 b!4323808)))

(declare-fun lambda!134067 () Int)

(declare-fun lambda!134066 () Int)

(assert (=> bs!607028 (= (= (Cons!48394 (h!53857 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))) (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))) (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))) (= lambda!134067 lambda!134066))))

(assert (=> b!4323812 true))

(declare-fun bs!607029 () Bool)

(declare-fun b!4323805 () Bool)

(assert (= bs!607029 (and b!4323805 b!4323808)))

(declare-fun lambda!134068 () Int)

(assert (=> bs!607029 (= (= (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))) (= lambda!134068 lambda!134066))))

(declare-fun bs!607030 () Bool)

(assert (= bs!607030 (and b!4323805 b!4323812)))

(assert (=> bs!607030 (= (= (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) (Cons!48394 (h!53857 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))) (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))))) (= lambda!134068 lambda!134067))))

(assert (=> b!4323805 true))

(declare-fun b!4323804 () Bool)

(declare-fun res!1772015 () Bool)

(declare-fun e!2690127 () Bool)

(assert (=> b!4323804 (=> (not res!1772015) (not e!2690127))))

(declare-fun lt!1541223 () List!48520)

(declare-fun length!32 (List!48520) Int)

(declare-fun length!33 (List!48518) Int)

(assert (=> b!4323804 (= res!1772015 (= (length!32 lt!1541223) (length!33 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))))))

(declare-fun res!1772014 () Bool)

(assert (=> b!4323805 (=> (not res!1772014) (not e!2690127))))

(declare-fun forall!8822 (List!48520 Int) Bool)

(assert (=> b!4323805 (= res!1772014 (forall!8822 lt!1541223 lambda!134068))))

(declare-fun lambda!134069 () Int)

(declare-fun b!4323806 () Bool)

(declare-fun content!7574 (List!48520) (InoxSet K!9644))

(declare-fun map!10425 (List!48518 Int) List!48520)

(assert (=> b!4323806 (= e!2690127 (= (content!7574 lt!1541223) (content!7574 (map!10425 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) lambda!134069))))))

(declare-fun b!4323807 () Bool)

(assert (=> b!4323807 false))

(declare-fun e!2690129 () Unit!67880)

(declare-fun Unit!67893 () Unit!67880)

(assert (=> b!4323807 (= e!2690129 Unit!67893)))

(declare-fun d!1271400 () Bool)

(assert (=> d!1271400 e!2690127))

(declare-fun res!1772016 () Bool)

(assert (=> d!1271400 (=> (not res!1772016) (not e!2690127))))

(declare-fun noDuplicate!588 (List!48520) Bool)

(assert (=> d!1271400 (= res!1772016 (noDuplicate!588 lt!1541223))))

(declare-fun e!2690128 () List!48520)

(assert (=> d!1271400 (= lt!1541223 e!2690128)))

(declare-fun c!735558 () Bool)

(assert (=> d!1271400 (= c!735558 ((_ is Cons!48394) (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))))))

(assert (=> d!1271400 (invariantList!604 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))))

(assert (=> d!1271400 (= (getKeysList!59 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))) lt!1541223)))

(assert (=> b!4323808 false))

(declare-fun lt!1541227 () Unit!67880)

(declare-fun forallContained!1538 (List!48520 Int K!9644) Unit!67880)

(assert (=> b!4323808 (= lt!1541227 (forallContained!1538 (getKeysList!59 (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))) lambda!134066 (_1!26900 (h!53857 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))))))))

(declare-fun e!2690126 () Unit!67880)

(declare-fun Unit!67894 () Unit!67880)

(assert (=> b!4323808 (= e!2690126 Unit!67894)))

(declare-fun b!4323809 () Bool)

(declare-fun Unit!67895 () Unit!67880)

(assert (=> b!4323809 (= e!2690129 Unit!67895)))

(declare-fun b!4323810 () Bool)

(assert (=> b!4323810 (= e!2690128 Nil!48396)))

(declare-fun b!4323811 () Bool)

(declare-fun Unit!67896 () Unit!67880)

(assert (=> b!4323811 (= e!2690126 Unit!67896)))

(assert (=> b!4323812 (= e!2690128 (Cons!48396 (_1!26900 (h!53857 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))) (getKeysList!59 (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))))))))

(declare-fun c!735559 () Bool)

(assert (=> b!4323812 (= c!735559 (containsKey!411 (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))) (_1!26900 (h!53857 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))))))))

(declare-fun lt!1541225 () Unit!67880)

(assert (=> b!4323812 (= lt!1541225 e!2690129)))

(declare-fun c!735557 () Bool)

(assert (=> b!4323812 (= c!735557 (contains!10458 (getKeysList!59 (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))) (_1!26900 (h!53857 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))))))))

(declare-fun lt!1541228 () Unit!67880)

(assert (=> b!4323812 (= lt!1541228 e!2690126)))

(declare-fun lt!1541226 () List!48520)

(assert (=> b!4323812 (= lt!1541226 (getKeysList!59 (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))))))

(declare-fun lt!1541224 () Unit!67880)

(declare-fun lemmaForallContainsAddHeadPreserves!10 (List!48518 List!48520 tuple2!47226) Unit!67880)

(assert (=> b!4323812 (= lt!1541224 (lemmaForallContainsAddHeadPreserves!10 (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))) lt!1541226 (h!53857 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))))))

(assert (=> b!4323812 (forall!8822 lt!1541226 lambda!134067)))

(declare-fun lt!1541229 () Unit!67880)

(assert (=> b!4323812 (= lt!1541229 lt!1541224)))

(assert (= (and d!1271400 c!735558) b!4323812))

(assert (= (and d!1271400 (not c!735558)) b!4323810))

(assert (= (and b!4323812 c!735559) b!4323807))

(assert (= (and b!4323812 (not c!735559)) b!4323809))

(assert (= (and b!4323812 c!735557) b!4323808))

(assert (= (and b!4323812 (not c!735557)) b!4323811))

(assert (= (and d!1271400 res!1772016) b!4323804))

(assert (= (and b!4323804 res!1772015) b!4323805))

(assert (= (and b!4323805 res!1772014) b!4323806))

(declare-fun m!4918309 () Bool)

(assert (=> d!1271400 m!4918309))

(assert (=> d!1271400 m!4918291))

(declare-fun m!4918311 () Bool)

(assert (=> b!4323808 m!4918311))

(assert (=> b!4323808 m!4918311))

(declare-fun m!4918313 () Bool)

(assert (=> b!4323808 m!4918313))

(declare-fun m!4918315 () Bool)

(assert (=> b!4323805 m!4918315))

(declare-fun m!4918317 () Bool)

(assert (=> b!4323806 m!4918317))

(declare-fun m!4918319 () Bool)

(assert (=> b!4323806 m!4918319))

(assert (=> b!4323806 m!4918319))

(declare-fun m!4918321 () Bool)

(assert (=> b!4323806 m!4918321))

(declare-fun m!4918323 () Bool)

(assert (=> b!4323804 m!4918323))

(declare-fun m!4918325 () Bool)

(assert (=> b!4323804 m!4918325))

(declare-fun m!4918327 () Bool)

(assert (=> b!4323812 m!4918327))

(assert (=> b!4323812 m!4918311))

(declare-fun m!4918329 () Bool)

(assert (=> b!4323812 m!4918329))

(assert (=> b!4323812 m!4918311))

(declare-fun m!4918331 () Bool)

(assert (=> b!4323812 m!4918331))

(declare-fun m!4918333 () Bool)

(assert (=> b!4323812 m!4918333))

(assert (=> b!4323606 d!1271400))

(declare-fun d!1271402 () Bool)

(assert (=> d!1271402 (= (valid!3772 (_2!26902 lt!1541018)) (valid!3773 (v!42796 (underlying!9747 (_2!26902 lt!1541018)))))))

(declare-fun bs!607031 () Bool)

(assert (= bs!607031 d!1271402))

(declare-fun m!4918335 () Bool)

(assert (=> bs!607031 m!4918335))

(assert (=> b!4323508 d!1271402))

(assert (=> b!4323613 d!1271390))

(assert (=> b!4323613 d!1271392))

(declare-fun d!1271404 () Bool)

(declare-fun res!1772017 () Bool)

(declare-fun e!2690130 () Bool)

(assert (=> d!1271404 (=> res!1772017 e!2690130)))

(assert (=> d!1271404 (= res!1772017 (not ((_ is Cons!48394) (_2!26901 (h!53858 (toList!2566 lt!1540986))))))))

(assert (=> d!1271404 (= (noDuplicateKeys!265 (_2!26901 (h!53858 (toList!2566 lt!1540986)))) e!2690130)))

(declare-fun b!4323815 () Bool)

(declare-fun e!2690131 () Bool)

(assert (=> b!4323815 (= e!2690130 e!2690131)))

(declare-fun res!1772018 () Bool)

(assert (=> b!4323815 (=> (not res!1772018) (not e!2690131))))

(assert (=> b!4323815 (= res!1772018 (not (containsKey!410 (t!355408 (_2!26901 (h!53858 (toList!2566 lt!1540986)))) (_1!26900 (h!53857 (_2!26901 (h!53858 (toList!2566 lt!1540986))))))))))

(declare-fun b!4323816 () Bool)

(assert (=> b!4323816 (= e!2690131 (noDuplicateKeys!265 (t!355408 (_2!26901 (h!53858 (toList!2566 lt!1540986))))))))

(assert (= (and d!1271404 (not res!1772017)) b!4323815))

(assert (= (and b!4323815 res!1772018) b!4323816))

(declare-fun m!4918337 () Bool)

(assert (=> b!4323815 m!4918337))

(declare-fun m!4918339 () Bool)

(assert (=> b!4323816 m!4918339))

(assert (=> bs!606980 d!1271404))

(declare-fun d!1271406 () Bool)

(assert (=> d!1271406 (= (isDefined!7611 call!299895) (not (isEmpty!28127 call!299895)))))

(declare-fun bs!607032 () Bool)

(assert (= bs!607032 d!1271406))

(declare-fun m!4918341 () Bool)

(assert (=> bs!607032 m!4918341))

(assert (=> bm!299891 d!1271406))

(declare-fun d!1271408 () Bool)

(declare-fun res!1772023 () Bool)

(declare-fun e!2690136 () Bool)

(assert (=> d!1271408 (=> res!1772023 e!2690136)))

(assert (=> d!1271408 (= res!1772023 ((_ is Nil!48394) lt!1540984))))

(assert (=> d!1271408 (= (forall!8821 lt!1540984 lambda!134029) e!2690136)))

(declare-fun b!4323821 () Bool)

(declare-fun e!2690137 () Bool)

(assert (=> b!4323821 (= e!2690136 e!2690137)))

(declare-fun res!1772024 () Bool)

(assert (=> b!4323821 (=> (not res!1772024) (not e!2690137))))

(declare-fun dynLambda!20515 (Int tuple2!47226) Bool)

(assert (=> b!4323821 (= res!1772024 (dynLambda!20515 lambda!134029 (h!53857 lt!1540984)))))

(declare-fun b!4323822 () Bool)

(assert (=> b!4323822 (= e!2690137 (forall!8821 (t!355408 lt!1540984) lambda!134029))))

(assert (= (and d!1271408 (not res!1772023)) b!4323821))

(assert (= (and b!4323821 res!1772024) b!4323822))

(declare-fun b_lambda!127437 () Bool)

(assert (=> (not b_lambda!127437) (not b!4323821)))

(declare-fun m!4918343 () Bool)

(assert (=> b!4323821 m!4918343))

(declare-fun m!4918345 () Bool)

(assert (=> b!4323822 m!4918345))

(assert (=> d!1271304 d!1271408))

(declare-fun d!1271410 () Bool)

(declare-fun res!1772025 () Bool)

(declare-fun e!2690138 () Bool)

(assert (=> d!1271410 (=> res!1772025 e!2690138)))

(assert (=> d!1271410 (= res!1772025 (and ((_ is Cons!48394) lt!1541030) (= (_1!26900 (h!53857 lt!1541030)) key!2048)))))

(assert (=> d!1271410 (= (containsKey!410 lt!1541030 key!2048) e!2690138)))

(declare-fun b!4323823 () Bool)

(declare-fun e!2690139 () Bool)

(assert (=> b!4323823 (= e!2690138 e!2690139)))

(declare-fun res!1772026 () Bool)

(assert (=> b!4323823 (=> (not res!1772026) (not e!2690139))))

(assert (=> b!4323823 (= res!1772026 ((_ is Cons!48394) lt!1541030))))

(declare-fun b!4323824 () Bool)

(assert (=> b!4323824 (= e!2690139 (containsKey!410 (t!355408 lt!1541030) key!2048))))

(assert (= (and d!1271410 (not res!1772025)) b!4323823))

(assert (= (and b!4323823 res!1772026) b!4323824))

(declare-fun m!4918347 () Bool)

(assert (=> b!4323824 m!4918347))

(assert (=> d!1271310 d!1271410))

(assert (=> d!1271310 d!1271352))

(declare-fun d!1271412 () Bool)

(declare-fun res!1772031 () Bool)

(declare-fun e!2690144 () Bool)

(assert (=> d!1271412 (=> res!1772031 e!2690144)))

(assert (=> d!1271412 (= res!1772031 (and ((_ is Cons!48395) (toList!2566 lt!1540986)) (= (_1!26901 (h!53858 (toList!2566 lt!1540986))) lt!1540991)))))

(assert (=> d!1271412 (= (containsKey!409 (toList!2566 lt!1540986) lt!1540991) e!2690144)))

(declare-fun b!4323829 () Bool)

(declare-fun e!2690145 () Bool)

(assert (=> b!4323829 (= e!2690144 e!2690145)))

(declare-fun res!1772032 () Bool)

(assert (=> b!4323829 (=> (not res!1772032) (not e!2690145))))

(assert (=> b!4323829 (= res!1772032 (and (or (not ((_ is Cons!48395) (toList!2566 lt!1540986))) (bvsle (_1!26901 (h!53858 (toList!2566 lt!1540986))) lt!1540991)) ((_ is Cons!48395) (toList!2566 lt!1540986)) (bvslt (_1!26901 (h!53858 (toList!2566 lt!1540986))) lt!1540991)))))

(declare-fun b!4323830 () Bool)

(assert (=> b!4323830 (= e!2690145 (containsKey!409 (t!355409 (toList!2566 lt!1540986)) lt!1540991))))

(assert (= (and d!1271412 (not res!1772031)) b!4323829))

(assert (= (and b!4323829 res!1772032) b!4323830))

(declare-fun m!4918349 () Bool)

(assert (=> b!4323830 m!4918349))

(assert (=> d!1271290 d!1271412))

(declare-fun bs!607033 () Bool)

(declare-fun d!1271414 () Bool)

(assert (= bs!607033 (and d!1271414 d!1271368)))

(declare-fun lambda!134070 () Int)

(assert (=> bs!607033 (not (= lambda!134070 lambda!134054))))

(declare-fun bs!607034 () Bool)

(assert (= bs!607034 (and d!1271414 b!4323470)))

(assert (=> bs!607034 (not (= lambda!134070 lambda!134025))))

(declare-fun bs!607035 () Bool)

(assert (= bs!607035 (and d!1271414 d!1271322)))

(assert (=> bs!607035 (not (= lambda!134070 lambda!134044))))

(declare-fun bs!607036 () Bool)

(assert (= bs!607036 (and d!1271414 d!1271356)))

(assert (=> bs!607036 (not (= lambda!134070 lambda!134053))))

(declare-fun bs!607037 () Bool)

(assert (= bs!607037 (and d!1271414 b!4323576)))

(assert (=> bs!607037 (not (= lambda!134070 lambda!134047))))

(declare-fun bs!607038 () Bool)

(assert (= bs!607038 (and d!1271414 d!1271370)))

(assert (=> bs!607038 (not (= lambda!134070 lambda!134057))))

(declare-fun bs!607039 () Bool)

(assert (= bs!607039 (and d!1271414 d!1271338)))

(assert (=> bs!607039 (not (= lambda!134070 lambda!134050))))

(declare-fun bs!607040 () Bool)

(assert (= bs!607040 (and d!1271414 d!1271340)))

(assert (=> bs!607040 (= lambda!134070 lambda!134051)))

(declare-fun bs!607041 () Bool)

(assert (= bs!607041 (and d!1271414 d!1271312)))

(assert (=> bs!607041 (= lambda!134070 lambda!134033)))

(declare-fun bs!607042 () Bool)

(assert (= bs!607042 (and d!1271414 d!1271314)))

(assert (=> bs!607042 (= lambda!134070 lambda!134036)))

(declare-fun bs!607043 () Bool)

(assert (= bs!607043 (and d!1271414 d!1271348)))

(assert (=> bs!607043 (= lambda!134070 lambda!134052)))

(declare-fun bs!607044 () Bool)

(assert (= bs!607044 (and d!1271414 b!4323535)))

(assert (=> bs!607044 (not (= lambda!134070 lambda!134039))))

(assert (=> d!1271414 true))

(assert (=> d!1271414 (= (allKeysSameHashInMap!393 (map!10422 (v!42797 (underlying!9748 thiss!42308))) (hashF!6947 thiss!42308)) (forall!8820 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lambda!134070))))

(declare-fun bs!607045 () Bool)

(assert (= bs!607045 d!1271414))

(declare-fun m!4918351 () Bool)

(assert (=> bs!607045 m!4918351))

(assert (=> b!4323536 d!1271414))

(assert (=> b!4323536 d!1271330))

(declare-fun d!1271416 () Bool)

(assert (=> d!1271416 (= (get!15682 (getValueByKey!303 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991)) (v!42802 (getValueByKey!303 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991)))))

(assert (=> b!4323475 d!1271416))

(declare-fun b!4323831 () Bool)

(declare-fun e!2690146 () Option!10309)

(assert (=> b!4323831 (= e!2690146 (Some!10308 (_2!26901 (h!53858 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))))))))

(declare-fun b!4323834 () Bool)

(declare-fun e!2690147 () Option!10309)

(assert (=> b!4323834 (= e!2690147 None!10308)))

(declare-fun b!4323833 () Bool)

(assert (=> b!4323833 (= e!2690147 (getValueByKey!303 (t!355409 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991))))

(declare-fun b!4323832 () Bool)

(assert (=> b!4323832 (= e!2690146 e!2690147)))

(declare-fun c!735561 () Bool)

(assert (=> b!4323832 (= c!735561 (and ((_ is Cons!48395) (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))) (not (= (_1!26901 (h!53858 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) lt!1540991))))))

(declare-fun d!1271418 () Bool)

(declare-fun c!735560 () Bool)

(assert (=> d!1271418 (= c!735560 (and ((_ is Cons!48395) (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))) (= (_1!26901 (h!53858 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) lt!1540991)))))

(assert (=> d!1271418 (= (getValueByKey!303 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991) e!2690146)))

(assert (= (and d!1271418 c!735560) b!4323831))

(assert (= (and d!1271418 (not c!735560)) b!4323832))

(assert (= (and b!4323832 c!735561) b!4323833))

(assert (= (and b!4323832 (not c!735561)) b!4323834))

(declare-fun m!4918353 () Bool)

(assert (=> b!4323833 m!4918353))

(assert (=> b!4323475 d!1271418))

(assert (=> b!4323475 d!1271330))

(declare-fun d!1271420 () Bool)

(declare-fun e!2690149 () Bool)

(assert (=> d!1271420 e!2690149))

(declare-fun res!1772033 () Bool)

(assert (=> d!1271420 (=> res!1772033 e!2690149)))

(declare-fun lt!1541233 () Bool)

(assert (=> d!1271420 (= res!1772033 (not lt!1541233))))

(declare-fun lt!1541232 () Bool)

(assert (=> d!1271420 (= lt!1541233 lt!1541232)))

(declare-fun lt!1541230 () Unit!67880)

(declare-fun e!2690148 () Unit!67880)

(assert (=> d!1271420 (= lt!1541230 e!2690148)))

(declare-fun c!735562 () Bool)

(assert (=> d!1271420 (= c!735562 lt!1541232)))

(assert (=> d!1271420 (= lt!1541232 (containsKey!409 (toList!2566 (ite c!735488 lt!1541096 call!299898)) call!299899))))

(assert (=> d!1271420 (= (contains!10455 (ite c!735488 lt!1541096 call!299898) call!299899) lt!1541233)))

(declare-fun b!4323835 () Bool)

(declare-fun lt!1541231 () Unit!67880)

(assert (=> b!4323835 (= e!2690148 lt!1541231)))

(assert (=> b!4323835 (= lt!1541231 (lemmaContainsKeyImpliesGetValueByKeyDefined!222 (toList!2566 (ite c!735488 lt!1541096 call!299898)) call!299899))))

(assert (=> b!4323835 (isDefined!7610 (getValueByKey!303 (toList!2566 (ite c!735488 lt!1541096 call!299898)) call!299899))))

(declare-fun b!4323836 () Bool)

(declare-fun Unit!67897 () Unit!67880)

(assert (=> b!4323836 (= e!2690148 Unit!67897)))

(declare-fun b!4323837 () Bool)

(assert (=> b!4323837 (= e!2690149 (isDefined!7610 (getValueByKey!303 (toList!2566 (ite c!735488 lt!1541096 call!299898)) call!299899)))))

(assert (= (and d!1271420 c!735562) b!4323835))

(assert (= (and d!1271420 (not c!735562)) b!4323836))

(assert (= (and d!1271420 (not res!1772033)) b!4323837))

(declare-fun m!4918355 () Bool)

(assert (=> d!1271420 m!4918355))

(declare-fun m!4918357 () Bool)

(assert (=> b!4323835 m!4918357))

(declare-fun m!4918359 () Bool)

(assert (=> b!4323835 m!4918359))

(assert (=> b!4323835 m!4918359))

(declare-fun m!4918361 () Bool)

(assert (=> b!4323835 m!4918361))

(assert (=> b!4323837 m!4918359))

(assert (=> b!4323837 m!4918359))

(assert (=> b!4323837 m!4918361))

(assert (=> bm!299892 d!1271420))

(declare-fun d!1271422 () Bool)

(declare-fun e!2690151 () Bool)

(assert (=> d!1271422 e!2690151))

(declare-fun res!1772034 () Bool)

(assert (=> d!1271422 (=> res!1772034 e!2690151)))

(declare-fun lt!1541237 () Bool)

(assert (=> d!1271422 (= res!1772034 (not lt!1541237))))

(declare-fun lt!1541236 () Bool)

(assert (=> d!1271422 (= lt!1541237 lt!1541236)))

(declare-fun lt!1541234 () Unit!67880)

(declare-fun e!2690150 () Unit!67880)

(assert (=> d!1271422 (= lt!1541234 e!2690150)))

(declare-fun c!735563 () Bool)

(assert (=> d!1271422 (= c!735563 lt!1541236)))

(assert (=> d!1271422 (= lt!1541236 (containsKey!409 (toList!2566 lt!1541044) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(assert (=> d!1271422 (= (contains!10455 lt!1541044 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))) lt!1541237)))

(declare-fun b!4323838 () Bool)

(declare-fun lt!1541235 () Unit!67880)

(assert (=> b!4323838 (= e!2690150 lt!1541235)))

(assert (=> b!4323838 (= lt!1541235 (lemmaContainsKeyImpliesGetValueByKeyDefined!222 (toList!2566 lt!1541044) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(assert (=> b!4323838 (isDefined!7610 (getValueByKey!303 (toList!2566 lt!1541044) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun b!4323839 () Bool)

(declare-fun Unit!67898 () Unit!67880)

(assert (=> b!4323839 (= e!2690150 Unit!67898)))

(declare-fun b!4323840 () Bool)

(assert (=> b!4323840 (= e!2690151 (isDefined!7610 (getValueByKey!303 (toList!2566 lt!1541044) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)))))))

(assert (= (and d!1271422 c!735563) b!4323838))

(assert (= (and d!1271422 (not c!735563)) b!4323839))

(assert (= (and d!1271422 (not res!1772034)) b!4323840))

(declare-fun m!4918363 () Bool)

(assert (=> d!1271422 m!4918363))

(declare-fun m!4918365 () Bool)

(assert (=> b!4323838 m!4918365))

(assert (=> b!4323838 m!4918045))

(assert (=> b!4323838 m!4918045))

(declare-fun m!4918367 () Bool)

(assert (=> b!4323838 m!4918367))

(assert (=> b!4323840 m!4918045))

(assert (=> b!4323840 m!4918045))

(assert (=> b!4323840 m!4918367))

(assert (=> d!1271320 d!1271422))

(declare-fun b!4323841 () Bool)

(declare-fun e!2690152 () Option!10309)

(assert (=> b!4323841 (= e!2690152 (Some!10308 (_2!26901 (h!53858 lt!1541042))))))

(declare-fun b!4323844 () Bool)

(declare-fun e!2690153 () Option!10309)

(assert (=> b!4323844 (= e!2690153 None!10308)))

(declare-fun b!4323843 () Bool)

(assert (=> b!4323843 (= e!2690153 (getValueByKey!303 (t!355409 lt!1541042) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun b!4323842 () Bool)

(assert (=> b!4323842 (= e!2690152 e!2690153)))

(declare-fun c!735565 () Bool)

(assert (=> b!4323842 (= c!735565 (and ((_ is Cons!48395) lt!1541042) (not (= (_1!26901 (h!53858 lt!1541042)) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))))))))

(declare-fun d!1271424 () Bool)

(declare-fun c!735564 () Bool)

(assert (=> d!1271424 (= c!735564 (and ((_ is Cons!48395) lt!1541042) (= (_1!26901 (h!53858 lt!1541042)) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)))))))

(assert (=> d!1271424 (= (getValueByKey!303 lt!1541042 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))) e!2690152)))

(assert (= (and d!1271424 c!735564) b!4323841))

(assert (= (and d!1271424 (not c!735564)) b!4323842))

(assert (= (and b!4323842 c!735565) b!4323843))

(assert (= (and b!4323842 (not c!735565)) b!4323844))

(declare-fun m!4918369 () Bool)

(assert (=> b!4323843 m!4918369))

(assert (=> d!1271320 d!1271424))

(declare-fun d!1271426 () Bool)

(assert (=> d!1271426 (= (getValueByKey!303 lt!1541042 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))) (Some!10308 (_2!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun lt!1541240 () Unit!67880)

(declare-fun choose!26429 (List!48519 (_ BitVec 64) List!48518) Unit!67880)

(assert (=> d!1271426 (= lt!1541240 (choose!26429 lt!1541042 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)) (_2!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun e!2690156 () Bool)

(assert (=> d!1271426 e!2690156))

(declare-fun res!1772039 () Bool)

(assert (=> d!1271426 (=> (not res!1772039) (not e!2690156))))

(declare-fun isStrictlySorted!22 (List!48519) Bool)

(assert (=> d!1271426 (= res!1772039 (isStrictlySorted!22 lt!1541042))))

(assert (=> d!1271426 (= (lemmaContainsTupThenGetReturnValue!99 lt!1541042 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)) (_2!26901 (tuple2!47229 lt!1540991 lt!1540989))) lt!1541240)))

(declare-fun b!4323849 () Bool)

(declare-fun res!1772040 () Bool)

(assert (=> b!4323849 (=> (not res!1772040) (not e!2690156))))

(assert (=> b!4323849 (= res!1772040 (containsKey!409 lt!1541042 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun b!4323850 () Bool)

(assert (=> b!4323850 (= e!2690156 (contains!10457 lt!1541042 (tuple2!47229 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)) (_2!26901 (tuple2!47229 lt!1540991 lt!1540989)))))))

(assert (= (and d!1271426 res!1772039) b!4323849))

(assert (= (and b!4323849 res!1772040) b!4323850))

(assert (=> d!1271426 m!4918039))

(declare-fun m!4918371 () Bool)

(assert (=> d!1271426 m!4918371))

(declare-fun m!4918373 () Bool)

(assert (=> d!1271426 m!4918373))

(declare-fun m!4918375 () Bool)

(assert (=> b!4323849 m!4918375))

(declare-fun m!4918377 () Bool)

(assert (=> b!4323850 m!4918377))

(assert (=> d!1271320 d!1271426))

(declare-fun b!4323871 () Bool)

(declare-fun e!2690170 () List!48519)

(assert (=> b!4323871 (= e!2690170 (insertStrictlySorted!59 (t!355409 (toList!2566 lt!1540986)) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)) (_2!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun lt!1541243 () List!48519)

(declare-fun e!2690167 () Bool)

(declare-fun b!4323872 () Bool)

(assert (=> b!4323872 (= e!2690167 (contains!10457 lt!1541243 (tuple2!47229 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)) (_2!26901 (tuple2!47229 lt!1540991 lt!1540989)))))))

(declare-fun b!4323873 () Bool)

(declare-fun e!2690169 () List!48519)

(declare-fun call!299924 () List!48519)

(assert (=> b!4323873 (= e!2690169 call!299924)))

(declare-fun b!4323874 () Bool)

(declare-fun e!2690168 () List!48519)

(declare-fun call!299923 () List!48519)

(assert (=> b!4323874 (= e!2690168 call!299923)))

(declare-fun c!735575 () Bool)

(declare-fun b!4323875 () Bool)

(assert (=> b!4323875 (= c!735575 (and ((_ is Cons!48395) (toList!2566 lt!1540986)) (bvsgt (_1!26901 (h!53858 (toList!2566 lt!1540986))) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)))))))

(declare-fun e!2690171 () List!48519)

(assert (=> b!4323875 (= e!2690171 e!2690169)))

(declare-fun bm!299918 () Bool)

(declare-fun call!299925 () List!48519)

(assert (=> bm!299918 (= call!299925 call!299923)))

(declare-fun d!1271428 () Bool)

(assert (=> d!1271428 e!2690167))

(declare-fun res!1772045 () Bool)

(assert (=> d!1271428 (=> (not res!1772045) (not e!2690167))))

(assert (=> d!1271428 (= res!1772045 (isStrictlySorted!22 lt!1541243))))

(assert (=> d!1271428 (= lt!1541243 e!2690168)))

(declare-fun c!735574 () Bool)

(assert (=> d!1271428 (= c!735574 (and ((_ is Cons!48395) (toList!2566 lt!1540986)) (bvslt (_1!26901 (h!53858 (toList!2566 lt!1540986))) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)))))))

(assert (=> d!1271428 (isStrictlySorted!22 (toList!2566 lt!1540986))))

(assert (=> d!1271428 (= (insertStrictlySorted!59 (toList!2566 lt!1540986) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)) (_2!26901 (tuple2!47229 lt!1540991 lt!1540989))) lt!1541243)))

(declare-fun b!4323876 () Bool)

(assert (=> b!4323876 (= e!2690171 call!299925)))

(declare-fun c!735577 () Bool)

(declare-fun b!4323877 () Bool)

(assert (=> b!4323877 (= e!2690170 (ite c!735577 (t!355409 (toList!2566 lt!1540986)) (ite c!735575 (Cons!48395 (h!53858 (toList!2566 lt!1540986)) (t!355409 (toList!2566 lt!1540986))) Nil!48395)))))

(declare-fun b!4323878 () Bool)

(assert (=> b!4323878 (= e!2690169 call!299924)))

(declare-fun b!4323879 () Bool)

(assert (=> b!4323879 (= e!2690168 e!2690171)))

(assert (=> b!4323879 (= c!735577 (and ((_ is Cons!48395) (toList!2566 lt!1540986)) (= (_1!26901 (h!53858 (toList!2566 lt!1540986))) (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)))))))

(declare-fun bm!299919 () Bool)

(assert (=> bm!299919 (= call!299924 call!299925)))

(declare-fun b!4323880 () Bool)

(declare-fun res!1772046 () Bool)

(assert (=> b!4323880 (=> (not res!1772046) (not e!2690167))))

(assert (=> b!4323880 (= res!1772046 (containsKey!409 lt!1541243 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun bm!299920 () Bool)

(declare-fun $colon$colon!662 (List!48519 tuple2!47228) List!48519)

(assert (=> bm!299920 (= call!299923 ($colon$colon!662 e!2690170 (ite c!735574 (h!53858 (toList!2566 lt!1540986)) (tuple2!47229 (_1!26901 (tuple2!47229 lt!1540991 lt!1540989)) (_2!26901 (tuple2!47229 lt!1540991 lt!1540989))))))))

(declare-fun c!735576 () Bool)

(assert (=> bm!299920 (= c!735576 c!735574)))

(assert (= (and d!1271428 c!735574) b!4323874))

(assert (= (and d!1271428 (not c!735574)) b!4323879))

(assert (= (and b!4323879 c!735577) b!4323876))

(assert (= (and b!4323879 (not c!735577)) b!4323875))

(assert (= (and b!4323875 c!735575) b!4323873))

(assert (= (and b!4323875 (not c!735575)) b!4323878))

(assert (= (or b!4323873 b!4323878) bm!299919))

(assert (= (or b!4323876 bm!299919) bm!299918))

(assert (= (or b!4323874 bm!299918) bm!299920))

(assert (= (and bm!299920 c!735576) b!4323871))

(assert (= (and bm!299920 (not c!735576)) b!4323877))

(assert (= (and d!1271428 res!1772045) b!4323880))

(assert (= (and b!4323880 res!1772046) b!4323872))

(declare-fun m!4918379 () Bool)

(assert (=> d!1271428 m!4918379))

(declare-fun m!4918381 () Bool)

(assert (=> d!1271428 m!4918381))

(declare-fun m!4918383 () Bool)

(assert (=> b!4323880 m!4918383))

(declare-fun m!4918385 () Bool)

(assert (=> b!4323871 m!4918385))

(declare-fun m!4918387 () Bool)

(assert (=> b!4323872 m!4918387))

(declare-fun m!4918389 () Bool)

(assert (=> bm!299920 m!4918389))

(assert (=> d!1271320 d!1271428))

(declare-fun bs!607046 () Bool)

(declare-fun b!4323893 () Bool)

(assert (= bs!607046 (and b!4323893 d!1271302)))

(declare-fun lambda!134099 () Int)

(assert (=> bs!607046 (not (= lambda!134099 lambda!134028))))

(declare-fun bs!607047 () Bool)

(assert (= bs!607047 (and b!4323893 d!1271304)))

(assert (=> bs!607047 (not (= lambda!134099 lambda!134029))))

(declare-fun bs!607048 () Bool)

(assert (= bs!607048 (and b!4323893 d!1271306)))

(assert (=> bs!607048 (not (= lambda!134099 lambda!134030))))

(assert (=> b!4323893 true))

(declare-fun bs!607049 () Bool)

(declare-fun b!4323892 () Bool)

(assert (= bs!607049 (and b!4323892 d!1271302)))

(declare-fun lambda!134100 () Int)

(assert (=> bs!607049 (not (= lambda!134100 lambda!134028))))

(declare-fun bs!607050 () Bool)

(assert (= bs!607050 (and b!4323892 d!1271304)))

(assert (=> bs!607050 (not (= lambda!134100 lambda!134029))))

(declare-fun bs!607051 () Bool)

(assert (= bs!607051 (and b!4323892 d!1271306)))

(assert (=> bs!607051 (not (= lambda!134100 lambda!134030))))

(declare-fun bs!607052 () Bool)

(assert (= bs!607052 (and b!4323892 b!4323893)))

(assert (=> bs!607052 (= lambda!134100 lambda!134099)))

(assert (=> b!4323892 true))

(declare-fun lt!1541303 () ListMap!1843)

(declare-fun lambda!134101 () Int)

(assert (=> b!4323892 (= (= lt!1541303 (extractMap!372 (t!355409 (toList!2566 lt!1540986)))) (= lambda!134101 lambda!134100))))

(assert (=> bs!607052 (= (= lt!1541303 (extractMap!372 (t!355409 (toList!2566 lt!1540986)))) (= lambda!134101 lambda!134099))))

(assert (=> bs!607051 (not (= lambda!134101 lambda!134030))))

(assert (=> bs!607050 (not (= lambda!134101 lambda!134029))))

(assert (=> bs!607049 (not (= lambda!134101 lambda!134028))))

(assert (=> b!4323892 true))

(declare-fun bs!607053 () Bool)

(declare-fun d!1271430 () Bool)

(assert (= bs!607053 (and d!1271430 b!4323892)))

(declare-fun lt!1541292 () ListMap!1843)

(declare-fun lambda!134102 () Int)

(assert (=> bs!607053 (= (= lt!1541292 lt!1541303) (= lambda!134102 lambda!134101))))

(assert (=> bs!607053 (= (= lt!1541292 (extractMap!372 (t!355409 (toList!2566 lt!1540986)))) (= lambda!134102 lambda!134100))))

(declare-fun bs!607054 () Bool)

(assert (= bs!607054 (and d!1271430 b!4323893)))

(assert (=> bs!607054 (= (= lt!1541292 (extractMap!372 (t!355409 (toList!2566 lt!1540986)))) (= lambda!134102 lambda!134099))))

(declare-fun bs!607055 () Bool)

(assert (= bs!607055 (and d!1271430 d!1271306)))

(assert (=> bs!607055 (not (= lambda!134102 lambda!134030))))

(declare-fun bs!607056 () Bool)

(assert (= bs!607056 (and d!1271430 d!1271304)))

(assert (=> bs!607056 (not (= lambda!134102 lambda!134029))))

(declare-fun bs!607057 () Bool)

(assert (= bs!607057 (and d!1271430 d!1271302)))

(assert (=> bs!607057 (not (= lambda!134102 lambda!134028))))

(assert (=> d!1271430 true))

(declare-fun e!2690179 () Bool)

(assert (=> d!1271430 e!2690179))

(declare-fun res!1772055 () Bool)

(assert (=> d!1271430 (=> (not res!1772055) (not e!2690179))))

(assert (=> d!1271430 (= res!1772055 (forall!8821 (_2!26901 (h!53858 (toList!2566 lt!1540986))) lambda!134102))))

(declare-fun e!2690180 () ListMap!1843)

(assert (=> d!1271430 (= lt!1541292 e!2690180)))

(declare-fun c!735580 () Bool)

(assert (=> d!1271430 (= c!735580 ((_ is Nil!48394) (_2!26901 (h!53858 (toList!2566 lt!1540986)))))))

(assert (=> d!1271430 (noDuplicateKeys!265 (_2!26901 (h!53858 (toList!2566 lt!1540986))))))

(assert (=> d!1271430 (= (addToMapMapFromBucket!54 (_2!26901 (h!53858 (toList!2566 lt!1540986))) (extractMap!372 (t!355409 (toList!2566 lt!1540986)))) lt!1541292)))

(declare-fun bm!299927 () Bool)

(declare-fun call!299934 () Unit!67880)

(declare-fun lemmaContainsAllItsOwnKeys!6 (ListMap!1843) Unit!67880)

(assert (=> bm!299927 (= call!299934 (lemmaContainsAllItsOwnKeys!6 (extractMap!372 (t!355409 (toList!2566 lt!1540986)))))))

(declare-fun b!4323891 () Bool)

(declare-fun res!1772054 () Bool)

(assert (=> b!4323891 (=> (not res!1772054) (not e!2690179))))

(assert (=> b!4323891 (= res!1772054 (forall!8821 (toList!2567 (extractMap!372 (t!355409 (toList!2566 lt!1540986)))) lambda!134102))))

(declare-fun bm!299928 () Bool)

(declare-fun lt!1541294 () ListMap!1843)

(declare-fun call!299932 () Bool)

(assert (=> bm!299928 (= call!299932 (forall!8821 (ite c!735580 (toList!2567 (extractMap!372 (t!355409 (toList!2566 lt!1540986)))) (toList!2567 lt!1541294)) (ite c!735580 lambda!134099 lambda!134101)))))

(assert (=> b!4323892 (= e!2690180 lt!1541303)))

(declare-fun +!337 (ListMap!1843 tuple2!47226) ListMap!1843)

(assert (=> b!4323892 (= lt!1541294 (+!337 (extractMap!372 (t!355409 (toList!2566 lt!1540986))) (h!53857 (_2!26901 (h!53858 (toList!2566 lt!1540986))))))))

(assert (=> b!4323892 (= lt!1541303 (addToMapMapFromBucket!54 (t!355408 (_2!26901 (h!53858 (toList!2566 lt!1540986)))) (+!337 (extractMap!372 (t!355409 (toList!2566 lt!1540986))) (h!53857 (_2!26901 (h!53858 (toList!2566 lt!1540986)))))))))

(declare-fun lt!1541295 () Unit!67880)

(assert (=> b!4323892 (= lt!1541295 call!299934)))

(assert (=> b!4323892 (forall!8821 (toList!2567 (extractMap!372 (t!355409 (toList!2566 lt!1540986)))) lambda!134100)))

(declare-fun lt!1541287 () Unit!67880)

(assert (=> b!4323892 (= lt!1541287 lt!1541295)))

(assert (=> b!4323892 (forall!8821 (toList!2567 lt!1541294) lambda!134101)))

(declare-fun lt!1541301 () Unit!67880)

(declare-fun Unit!67899 () Unit!67880)

(assert (=> b!4323892 (= lt!1541301 Unit!67899)))

(assert (=> b!4323892 (forall!8821 (t!355408 (_2!26901 (h!53858 (toList!2566 lt!1540986)))) lambda!134101)))

(declare-fun lt!1541305 () Unit!67880)

(declare-fun Unit!67900 () Unit!67880)

(assert (=> b!4323892 (= lt!1541305 Unit!67900)))

(declare-fun lt!1541286 () Unit!67880)

(declare-fun Unit!67901 () Unit!67880)

(assert (=> b!4323892 (= lt!1541286 Unit!67901)))

(declare-fun lt!1541293 () Unit!67880)

(declare-fun forallContained!1539 (List!48518 Int tuple2!47226) Unit!67880)

(assert (=> b!4323892 (= lt!1541293 (forallContained!1539 (toList!2567 lt!1541294) lambda!134101 (h!53857 (_2!26901 (h!53858 (toList!2566 lt!1540986))))))))

(assert (=> b!4323892 (contains!10452 lt!1541294 (_1!26900 (h!53857 (_2!26901 (h!53858 (toList!2566 lt!1540986))))))))

(declare-fun lt!1541299 () Unit!67880)

(declare-fun Unit!67902 () Unit!67880)

(assert (=> b!4323892 (= lt!1541299 Unit!67902)))

(assert (=> b!4323892 (contains!10452 lt!1541303 (_1!26900 (h!53857 (_2!26901 (h!53858 (toList!2566 lt!1540986))))))))

(declare-fun lt!1541306 () Unit!67880)

(declare-fun Unit!67903 () Unit!67880)

(assert (=> b!4323892 (= lt!1541306 Unit!67903)))

(declare-fun call!299933 () Bool)

(assert (=> b!4323892 call!299933))

(declare-fun lt!1541302 () Unit!67880)

(declare-fun Unit!67904 () Unit!67880)

(assert (=> b!4323892 (= lt!1541302 Unit!67904)))

(assert (=> b!4323892 call!299932))

(declare-fun lt!1541304 () Unit!67880)

(declare-fun Unit!67905 () Unit!67880)

(assert (=> b!4323892 (= lt!1541304 Unit!67905)))

(declare-fun lt!1541291 () Unit!67880)

(declare-fun Unit!67906 () Unit!67880)

(assert (=> b!4323892 (= lt!1541291 Unit!67906)))

(declare-fun lt!1541298 () Unit!67880)

(declare-fun addForallContainsKeyThenBeforeAdding!6 (ListMap!1843 ListMap!1843 K!9644 V!9846) Unit!67880)

(assert (=> b!4323892 (= lt!1541298 (addForallContainsKeyThenBeforeAdding!6 (extractMap!372 (t!355409 (toList!2566 lt!1540986))) lt!1541303 (_1!26900 (h!53857 (_2!26901 (h!53858 (toList!2566 lt!1540986))))) (_2!26900 (h!53857 (_2!26901 (h!53858 (toList!2566 lt!1540986)))))))))

(assert (=> b!4323892 (forall!8821 (toList!2567 (extractMap!372 (t!355409 (toList!2566 lt!1540986)))) lambda!134101)))

(declare-fun lt!1541297 () Unit!67880)

(assert (=> b!4323892 (= lt!1541297 lt!1541298)))

(assert (=> b!4323892 (forall!8821 (toList!2567 (extractMap!372 (t!355409 (toList!2566 lt!1540986)))) lambda!134101)))

(declare-fun lt!1541290 () Unit!67880)

(declare-fun Unit!67907 () Unit!67880)

(assert (=> b!4323892 (= lt!1541290 Unit!67907)))

(declare-fun res!1772053 () Bool)

(assert (=> b!4323892 (= res!1772053 (forall!8821 (_2!26901 (h!53858 (toList!2566 lt!1540986))) lambda!134101))))

(declare-fun e!2690178 () Bool)

(assert (=> b!4323892 (=> (not res!1772053) (not e!2690178))))

(assert (=> b!4323892 e!2690178))

(declare-fun lt!1541288 () Unit!67880)

(declare-fun Unit!67908 () Unit!67880)

(assert (=> b!4323892 (= lt!1541288 Unit!67908)))

(assert (=> b!4323893 (= e!2690180 (extractMap!372 (t!355409 (toList!2566 lt!1540986))))))

(declare-fun lt!1541289 () Unit!67880)

(assert (=> b!4323893 (= lt!1541289 call!299934)))

(assert (=> b!4323893 call!299932))

(declare-fun lt!1541296 () Unit!67880)

(assert (=> b!4323893 (= lt!1541296 lt!1541289)))

(assert (=> b!4323893 call!299933))

(declare-fun lt!1541300 () Unit!67880)

(declare-fun Unit!67909 () Unit!67880)

(assert (=> b!4323893 (= lt!1541300 Unit!67909)))

(declare-fun bm!299929 () Bool)

(assert (=> bm!299929 (= call!299933 (forall!8821 (ite c!735580 (toList!2567 (extractMap!372 (t!355409 (toList!2566 lt!1540986)))) (_2!26901 (h!53858 (toList!2566 lt!1540986)))) (ite c!735580 lambda!134099 lambda!134101)))))

(declare-fun b!4323894 () Bool)

(assert (=> b!4323894 (= e!2690178 (forall!8821 (toList!2567 (extractMap!372 (t!355409 (toList!2566 lt!1540986)))) lambda!134101))))

(declare-fun b!4323895 () Bool)

(assert (=> b!4323895 (= e!2690179 (invariantList!604 (toList!2567 lt!1541292)))))

(assert (= (and d!1271430 c!735580) b!4323893))

(assert (= (and d!1271430 (not c!735580)) b!4323892))

(assert (= (and b!4323892 res!1772053) b!4323894))

(assert (= (or b!4323893 b!4323892) bm!299927))

(assert (= (or b!4323893 b!4323892) bm!299928))

(assert (= (or b!4323893 b!4323892) bm!299929))

(assert (= (and d!1271430 res!1772055) b!4323891))

(assert (= (and b!4323891 res!1772054) b!4323895))

(declare-fun m!4918391 () Bool)

(assert (=> bm!299929 m!4918391))

(declare-fun m!4918393 () Bool)

(assert (=> b!4323894 m!4918393))

(declare-fun m!4918395 () Bool)

(assert (=> bm!299928 m!4918395))

(declare-fun m!4918397 () Bool)

(assert (=> b!4323895 m!4918397))

(assert (=> bm!299927 m!4918139))

(declare-fun m!4918399 () Bool)

(assert (=> bm!299927 m!4918399))

(declare-fun m!4918401 () Bool)

(assert (=> d!1271430 m!4918401))

(assert (=> d!1271430 m!4918153))

(declare-fun m!4918403 () Bool)

(assert (=> b!4323891 m!4918403))

(declare-fun m!4918405 () Bool)

(assert (=> b!4323892 m!4918405))

(declare-fun m!4918407 () Bool)

(assert (=> b!4323892 m!4918407))

(assert (=> b!4323892 m!4918139))

(declare-fun m!4918409 () Bool)

(assert (=> b!4323892 m!4918409))

(assert (=> b!4323892 m!4918393))

(declare-fun m!4918411 () Bool)

(assert (=> b!4323892 m!4918411))

(declare-fun m!4918413 () Bool)

(assert (=> b!4323892 m!4918413))

(assert (=> b!4323892 m!4918139))

(declare-fun m!4918415 () Bool)

(assert (=> b!4323892 m!4918415))

(declare-fun m!4918417 () Bool)

(assert (=> b!4323892 m!4918417))

(declare-fun m!4918419 () Bool)

(assert (=> b!4323892 m!4918419))

(assert (=> b!4323892 m!4918415))

(declare-fun m!4918421 () Bool)

(assert (=> b!4323892 m!4918421))

(declare-fun m!4918423 () Bool)

(assert (=> b!4323892 m!4918423))

(assert (=> b!4323892 m!4918393))

(assert (=> b!4323618 d!1271430))

(declare-fun bs!607058 () Bool)

(declare-fun d!1271432 () Bool)

(assert (= bs!607058 (and d!1271432 d!1271368)))

(declare-fun lambda!134103 () Int)

(assert (=> bs!607058 (= lambda!134103 lambda!134054)))

(declare-fun bs!607059 () Bool)

(assert (= bs!607059 (and d!1271432 b!4323470)))

(assert (=> bs!607059 (= lambda!134103 lambda!134025)))

(declare-fun bs!607060 () Bool)

(assert (= bs!607060 (and d!1271432 d!1271356)))

(assert (=> bs!607060 (= lambda!134103 lambda!134053)))

(declare-fun bs!607061 () Bool)

(assert (= bs!607061 (and d!1271432 b!4323576)))

(assert (=> bs!607061 (= lambda!134103 lambda!134047)))

(declare-fun bs!607062 () Bool)

(assert (= bs!607062 (and d!1271432 d!1271370)))

(assert (=> bs!607062 (= lambda!134103 lambda!134057)))

(declare-fun bs!607063 () Bool)

(assert (= bs!607063 (and d!1271432 d!1271338)))

(assert (=> bs!607063 (= lambda!134103 lambda!134050)))

(declare-fun bs!607064 () Bool)

(assert (= bs!607064 (and d!1271432 d!1271340)))

(assert (=> bs!607064 (not (= lambda!134103 lambda!134051))))

(declare-fun bs!607065 () Bool)

(assert (= bs!607065 (and d!1271432 d!1271312)))

(assert (=> bs!607065 (not (= lambda!134103 lambda!134033))))

(declare-fun bs!607066 () Bool)

(assert (= bs!607066 (and d!1271432 d!1271314)))

(assert (=> bs!607066 (not (= lambda!134103 lambda!134036))))

(declare-fun bs!607067 () Bool)

(assert (= bs!607067 (and d!1271432 d!1271322)))

(assert (=> bs!607067 (= lambda!134103 lambda!134044)))

(declare-fun bs!607068 () Bool)

(assert (= bs!607068 (and d!1271432 d!1271414)))

(assert (=> bs!607068 (not (= lambda!134103 lambda!134070))))

(declare-fun bs!607069 () Bool)

(assert (= bs!607069 (and d!1271432 d!1271348)))

(assert (=> bs!607069 (not (= lambda!134103 lambda!134052))))

(declare-fun bs!607070 () Bool)

(assert (= bs!607070 (and d!1271432 b!4323535)))

(assert (=> bs!607070 (= lambda!134103 lambda!134039)))

(declare-fun lt!1541307 () ListMap!1843)

(assert (=> d!1271432 (invariantList!604 (toList!2567 lt!1541307))))

(declare-fun e!2690181 () ListMap!1843)

(assert (=> d!1271432 (= lt!1541307 e!2690181)))

(declare-fun c!735581 () Bool)

(assert (=> d!1271432 (= c!735581 ((_ is Cons!48395) (t!355409 (toList!2566 lt!1540986))))))

(assert (=> d!1271432 (forall!8820 (t!355409 (toList!2566 lt!1540986)) lambda!134103)))

(assert (=> d!1271432 (= (extractMap!372 (t!355409 (toList!2566 lt!1540986))) lt!1541307)))

(declare-fun b!4323898 () Bool)

(assert (=> b!4323898 (= e!2690181 (addToMapMapFromBucket!54 (_2!26901 (h!53858 (t!355409 (toList!2566 lt!1540986)))) (extractMap!372 (t!355409 (t!355409 (toList!2566 lt!1540986))))))))

(declare-fun b!4323899 () Bool)

(assert (=> b!4323899 (= e!2690181 (ListMap!1844 Nil!48394))))

(assert (= (and d!1271432 c!735581) b!4323898))

(assert (= (and d!1271432 (not c!735581)) b!4323899))

(declare-fun m!4918425 () Bool)

(assert (=> d!1271432 m!4918425))

(declare-fun m!4918427 () Bool)

(assert (=> d!1271432 m!4918427))

(declare-fun m!4918429 () Bool)

(assert (=> b!4323898 m!4918429))

(assert (=> b!4323898 m!4918429))

(declare-fun m!4918431 () Bool)

(assert (=> b!4323898 m!4918431))

(assert (=> b!4323618 d!1271432))

(declare-fun d!1271434 () Bool)

(declare-fun e!2690183 () Bool)

(assert (=> d!1271434 e!2690183))

(declare-fun res!1772056 () Bool)

(assert (=> d!1271434 (=> res!1772056 e!2690183)))

(declare-fun lt!1541311 () Bool)

(assert (=> d!1271434 (= res!1772056 (not lt!1541311))))

(declare-fun lt!1541310 () Bool)

(assert (=> d!1271434 (= lt!1541311 lt!1541310)))

(declare-fun lt!1541308 () Unit!67880)

(declare-fun e!2690182 () Unit!67880)

(assert (=> d!1271434 (= lt!1541308 e!2690182)))

(declare-fun c!735582 () Bool)

(assert (=> d!1271434 (= c!735582 lt!1541310)))

(assert (=> d!1271434 (= lt!1541310 (containsKey!409 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991))))

(assert (=> d!1271434 (= (contains!10455 (map!10422 (v!42797 (underlying!9748 thiss!42308))) lt!1540991) lt!1541311)))

(declare-fun b!4323900 () Bool)

(declare-fun lt!1541309 () Unit!67880)

(assert (=> b!4323900 (= e!2690182 lt!1541309)))

(assert (=> b!4323900 (= lt!1541309 (lemmaContainsKeyImpliesGetValueByKeyDefined!222 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991))))

(assert (=> b!4323900 (isDefined!7610 (getValueByKey!303 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991))))

(declare-fun b!4323901 () Bool)

(declare-fun Unit!67910 () Unit!67880)

(assert (=> b!4323901 (= e!2690182 Unit!67910)))

(declare-fun b!4323902 () Bool)

(assert (=> b!4323902 (= e!2690183 (isDefined!7610 (getValueByKey!303 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991)))))

(assert (= (and d!1271434 c!735582) b!4323900))

(assert (= (and d!1271434 (not c!735582)) b!4323901))

(assert (= (and d!1271434 (not res!1772056)) b!4323902))

(declare-fun m!4918433 () Bool)

(assert (=> d!1271434 m!4918433))

(declare-fun m!4918435 () Bool)

(assert (=> b!4323900 m!4918435))

(assert (=> b!4323900 m!4917975))

(assert (=> b!4323900 m!4917975))

(declare-fun m!4918437 () Bool)

(assert (=> b!4323900 m!4918437))

(assert (=> b!4323902 m!4917975))

(assert (=> b!4323902 m!4917975))

(assert (=> b!4323902 m!4918437))

(assert (=> d!1271294 d!1271434))

(assert (=> d!1271294 d!1271330))

(declare-fun b!4323923 () Bool)

(declare-fun e!2690198 () Unit!67880)

(declare-fun Unit!67911 () Unit!67880)

(assert (=> b!4323923 (= e!2690198 Unit!67911)))

(declare-fun d!1271436 () Bool)

(declare-fun lt!1541352 () Bool)

(assert (=> d!1271436 (= lt!1541352 (contains!10455 (map!10424 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991))))

(declare-fun e!2690195 () Bool)

(assert (=> d!1271436 (= lt!1541352 e!2690195)))

(declare-fun c!735595 () Bool)

(assert (=> d!1271436 (= c!735595 (= lt!1540991 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1271436 (valid!3773 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))

(assert (=> d!1271436 (= (contains!10456 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))) lt!1540991) lt!1541352)))

(declare-fun b!4323924 () Bool)

(assert (=> b!4323924 false))

(declare-fun lt!1541343 () Unit!67880)

(declare-fun lt!1541353 () Unit!67880)

(assert (=> b!4323924 (= lt!1541343 lt!1541353)))

(declare-fun lt!1541355 () SeekEntryResult!22)

(declare-fun lt!1541351 () (_ BitVec 32))

(assert (=> b!4323924 (and ((_ is Found!22) lt!1541355) (= (index!1469 lt!1541355) lt!1541351))))

(assert (=> b!4323924 (= lt!1541355 (seekEntry!0 lt!1540991 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!17262 (_ BitVec 32)) Unit!67880)

(assert (=> b!4323924 (= lt!1541353 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1540991 lt!1541351 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun lt!1541348 () Unit!67880)

(declare-fun lt!1541347 () Unit!67880)

(assert (=> b!4323924 (= lt!1541348 lt!1541347)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17262 (_ BitVec 32)) Bool)

(assert (=> b!4323924 (arrayForallSeekEntryOrOpenFound!0 lt!1541351 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!17262 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!67880)

(assert (=> b!4323924 (= lt!1541347 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000000 lt!1541351))))

(declare-fun arrayScanForKey!0 (array!17262 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4323924 (= lt!1541351 (arrayScanForKey!0 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991 #b00000000000000000000000000000000))))

(declare-fun lt!1541346 () Unit!67880)

(declare-fun lt!1541342 () Unit!67880)

(assert (=> b!4323924 (= lt!1541346 lt!1541342)))

(declare-fun e!2690194 () Bool)

(assert (=> b!4323924 e!2690194))

(declare-fun c!735593 () Bool)

(assert (=> b!4323924 (= c!735593 (and (not (= lt!1540991 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1540991 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!18 (array!17262 array!17264 (_ BitVec 32) (_ BitVec 32) List!48518 List!48518 (_ BitVec 64) Int) Unit!67880)

(assert (=> b!4323924 (= lt!1541342 (lemmaKeyInListMapIsInArray!18 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun Unit!67912 () Unit!67880)

(assert (=> b!4323924 (= e!2690198 Unit!67912)))

(declare-fun b!4323925 () Bool)

(declare-fun e!2690196 () Bool)

(assert (=> b!4323925 (= e!2690196 false)))

(declare-fun c!735594 () Bool)

(declare-fun call!299942 () Bool)

(assert (=> b!4323925 (= c!735594 call!299942)))

(declare-fun lt!1541349 () Unit!67880)

(assert (=> b!4323925 (= lt!1541349 e!2690198)))

(declare-fun b!4323926 () Bool)

(assert (=> b!4323926 (= e!2690196 true)))

(declare-fun lt!1541345 () SeekEntryResult!22)

(declare-fun lt!1541344 () Unit!67880)

(assert (=> b!4323926 (= lt!1541344 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991 (index!1469 lt!1541345)))))

(declare-fun call!299943 () Bool)

(assert (=> b!4323926 call!299943))

(declare-fun lt!1541356 () Unit!67880)

(assert (=> b!4323926 (= lt!1541356 lt!1541344)))

(declare-fun lt!1541354 () Unit!67880)

(assert (=> b!4323926 (= lt!1541354 (lemmaValidKeyInArrayIsInListMap!15 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (index!1469 lt!1541345) (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(assert (=> b!4323926 call!299942))

(declare-fun lt!1541350 () Unit!67880)

(assert (=> b!4323926 (= lt!1541350 lt!1541354)))

(declare-fun bm!299936 () Bool)

(assert (=> bm!299936 (= call!299943 (arrayContainsKey!0 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991 #b00000000000000000000000000000000))))

(declare-fun b!4323927 () Bool)

(declare-fun e!2690197 () Bool)

(assert (=> b!4323927 (= e!2690195 e!2690197)))

(declare-fun c!735596 () Bool)

(assert (=> b!4323927 (= c!735596 (= lt!1540991 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4323928 () Bool)

(assert (=> b!4323928 (= e!2690194 call!299943)))

(declare-fun b!4323929 () Bool)

(declare-fun c!735597 () Bool)

(assert (=> b!4323929 (= c!735597 ((_ is Found!22) lt!1541345))))

(assert (=> b!4323929 (= lt!1541345 (seekEntry!0 lt!1540991 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(assert (=> b!4323929 (= e!2690197 e!2690196)))

(declare-fun bm!299937 () Bool)

(declare-fun call!299941 () ListLongMap!1183)

(assert (=> bm!299937 (= call!299942 (contains!10455 call!299941 (ite c!735597 (select (arr!7703 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) (index!1469 lt!1541345)) lt!1540991)))))

(declare-fun b!4323930 () Bool)

(assert (=> b!4323930 (= e!2690197 (not (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4323931 () Bool)

(assert (=> b!4323931 (= e!2690194 (ite (= lt!1540991 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4323932 () Bool)

(assert (=> b!4323932 (= e!2690195 (not (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!299938 () Bool)

(assert (=> bm!299938 (= call!299941 (getCurrentListMap!25 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(assert (= (and d!1271436 c!735595) b!4323932))

(assert (= (and d!1271436 (not c!735595)) b!4323927))

(assert (= (and b!4323927 c!735596) b!4323930))

(assert (= (and b!4323927 (not c!735596)) b!4323929))

(assert (= (and b!4323929 c!735597) b!4323926))

(assert (= (and b!4323929 (not c!735597)) b!4323925))

(assert (= (and b!4323925 c!735594) b!4323924))

(assert (= (and b!4323925 (not c!735594)) b!4323923))

(assert (= (and b!4323924 c!735593) b!4323928))

(assert (= (and b!4323924 (not c!735593)) b!4323931))

(assert (= (or b!4323926 b!4323928) bm!299936))

(assert (= (or b!4323926 b!4323925) bm!299938))

(assert (= (or b!4323926 b!4323925) bm!299937))

(declare-fun m!4918439 () Bool)

(assert (=> b!4323926 m!4918439))

(declare-fun m!4918441 () Bool)

(assert (=> b!4323926 m!4918441))

(declare-fun m!4918443 () Bool)

(assert (=> bm!299937 m!4918443))

(declare-fun m!4918445 () Bool)

(assert (=> bm!299937 m!4918445))

(assert (=> b!4323929 m!4918229))

(declare-fun m!4918447 () Bool)

(assert (=> b!4323924 m!4918447))

(declare-fun m!4918449 () Bool)

(assert (=> b!4323924 m!4918449))

(declare-fun m!4918451 () Bool)

(assert (=> b!4323924 m!4918451))

(declare-fun m!4918453 () Bool)

(assert (=> b!4323924 m!4918453))

(assert (=> b!4323924 m!4918229))

(declare-fun m!4918455 () Bool)

(assert (=> b!4323924 m!4918455))

(assert (=> bm!299938 m!4918237))

(assert (=> bm!299936 m!4918241))

(assert (=> d!1271436 m!4918109))

(assert (=> d!1271436 m!4918109))

(declare-fun m!4918457 () Bool)

(assert (=> d!1271436 m!4918457))

(assert (=> d!1271436 m!4918175))

(assert (=> d!1271294 d!1271436))

(assert (=> d!1271294 d!1271364))

(declare-fun lt!1541357 () Bool)

(declare-fun d!1271438 () Bool)

(assert (=> d!1271438 (= lt!1541357 (select (content!7573 (toList!2566 lt!1541044)) (tuple2!47229 lt!1540991 lt!1540989)))))

(declare-fun e!2690199 () Bool)

(assert (=> d!1271438 (= lt!1541357 e!2690199)))

(declare-fun res!1772057 () Bool)

(assert (=> d!1271438 (=> (not res!1772057) (not e!2690199))))

(assert (=> d!1271438 (= res!1772057 ((_ is Cons!48395) (toList!2566 lt!1541044)))))

(assert (=> d!1271438 (= (contains!10457 (toList!2566 lt!1541044) (tuple2!47229 lt!1540991 lt!1540989)) lt!1541357)))

(declare-fun b!4323933 () Bool)

(declare-fun e!2690200 () Bool)

(assert (=> b!4323933 (= e!2690199 e!2690200)))

(declare-fun res!1772058 () Bool)

(assert (=> b!4323933 (=> res!1772058 e!2690200)))

(assert (=> b!4323933 (= res!1772058 (= (h!53858 (toList!2566 lt!1541044)) (tuple2!47229 lt!1540991 lt!1540989)))))

(declare-fun b!4323934 () Bool)

(assert (=> b!4323934 (= e!2690200 (contains!10457 (t!355409 (toList!2566 lt!1541044)) (tuple2!47229 lt!1540991 lt!1540989)))))

(assert (= (and d!1271438 res!1772057) b!4323933))

(assert (= (and b!4323933 (not res!1772058)) b!4323934))

(declare-fun m!4918459 () Bool)

(assert (=> d!1271438 m!4918459))

(declare-fun m!4918461 () Bool)

(assert (=> d!1271438 m!4918461))

(declare-fun m!4918463 () Bool)

(assert (=> b!4323934 m!4918463))

(assert (=> b!4323548 d!1271438))

(declare-fun d!1271440 () Bool)

(declare-fun res!1772059 () Bool)

(declare-fun e!2690201 () Bool)

(assert (=> d!1271440 (=> res!1772059 e!2690201)))

(assert (=> d!1271440 (= res!1772059 (not ((_ is Cons!48394) (t!355408 lt!1540989))))))

(assert (=> d!1271440 (= (noDuplicateKeys!265 (t!355408 lt!1540989)) e!2690201)))

(declare-fun b!4323935 () Bool)

(declare-fun e!2690202 () Bool)

(assert (=> b!4323935 (= e!2690201 e!2690202)))

(declare-fun res!1772060 () Bool)

(assert (=> b!4323935 (=> (not res!1772060) (not e!2690202))))

(assert (=> b!4323935 (= res!1772060 (not (containsKey!410 (t!355408 (t!355408 lt!1540989)) (_1!26900 (h!53857 (t!355408 lt!1540989))))))))

(declare-fun b!4323936 () Bool)

(assert (=> b!4323936 (= e!2690202 (noDuplicateKeys!265 (t!355408 (t!355408 lt!1540989))))))

(assert (= (and d!1271440 (not res!1772059)) b!4323935))

(assert (= (and b!4323935 res!1772060) b!4323936))

(declare-fun m!4918465 () Bool)

(assert (=> b!4323935 m!4918465))

(declare-fun m!4918467 () Bool)

(assert (=> b!4323936 m!4918467))

(assert (=> b!4323625 d!1271440))

(declare-fun b!4323957 () Bool)

(declare-fun lt!1541387 () tuple2!47232)

(declare-fun call!299953 () tuple2!47232)

(assert (=> b!4323957 (= lt!1541387 call!299953)))

(declare-datatypes ((tuple2!47234 0))(
  ( (tuple2!47235 (_1!26904 Bool) (_2!26904 Cell!18845)) )
))
(declare-fun e!2690218 () tuple2!47234)

(assert (=> b!4323957 (= e!2690218 (tuple2!47235 (_1!26903 lt!1541387) (Cell!18846 (_2!26903 lt!1541387))))))

(declare-fun b!4323959 () Bool)

(declare-fun e!2690215 () tuple2!47234)

(declare-fun lt!1541381 () tuple2!47232)

(assert (=> b!4323959 (= e!2690215 (tuple2!47235 (_1!26903 lt!1541381) (Cell!18846 (_2!26903 lt!1541381))))))

(assert (=> b!4323959 (= lt!1541381 call!299953)))

(declare-fun bm!299947 () Bool)

(declare-fun call!299954 () LongMapFixedSize!9518)

(declare-fun call!299952 () LongMapFixedSize!9518)

(assert (=> bm!299947 (= call!299954 call!299952)))

(declare-fun b!4323960 () Bool)

(declare-datatypes ((tuple3!5508 0))(
  ( (tuple3!5509 (_1!26905 Bool) (_2!26905 Cell!18845) (_3!3287 MutLongMap!4759)) )
))
(declare-fun e!2690219 () tuple3!5508)

(declare-fun lt!1541384 () tuple2!47232)

(assert (=> b!4323960 (= e!2690219 (ite (_1!26903 lt!1541384) (tuple3!5509 true (underlying!9747 (v!42797 (underlying!9748 thiss!42308))) (LongMap!4759 (Cell!18846 (_2!26903 lt!1541384)))) (tuple3!5509 false (Cell!18846 (_2!26903 lt!1541384)) (v!42797 (underlying!9748 thiss!42308)))))))

(declare-fun lt!1541386 () tuple2!47234)

(declare-fun repackFrom!14 (MutLongMap!4759 LongMapFixedSize!9518 (_ BitVec 32)) tuple2!47232)

(assert (=> b!4323960 (= lt!1541384 (repackFrom!14 (v!42797 (underlying!9748 thiss!42308)) (v!42796 (_2!26904 lt!1541386)) (bvsub (size!35742 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))) #b00000000000000000000000000000001)))))

(declare-fun b!4323961 () Bool)

(declare-fun c!735606 () Bool)

(assert (=> b!4323961 (= c!735606 (and (not (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4323961 (= e!2690218 e!2690215)))

(declare-fun b!4323962 () Bool)

(declare-fun e!2690216 () Bool)

(declare-fun e!2690217 () Bool)

(assert (=> b!4323962 (= e!2690216 e!2690217)))

(declare-fun res!1772065 () Bool)

(assert (=> b!4323962 (=> res!1772065 e!2690217)))

(declare-fun lt!1541379 () tuple2!47230)

(assert (=> b!4323962 (= res!1772065 (= (_1!26902 lt!1541379) false))))

(declare-fun bm!299948 () Bool)

(declare-fun lt!1541382 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!28 ((_ BitVec 32) Int) LongMapFixedSize!9518)

(assert (=> bm!299948 (= call!299952 (getNewLongMapFixedSize!28 lt!1541382 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun b!4323963 () Bool)

(declare-fun e!2690220 () tuple2!47234)

(assert (=> b!4323963 (= e!2690220 e!2690218)))

(declare-fun c!735607 () Bool)

(assert (=> b!4323963 (= c!735607 (and (not (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4323964 () Bool)

(assert (=> b!4323964 (= e!2690219 (tuple3!5509 false (_2!26904 lt!1541386) (v!42797 (underlying!9748 thiss!42308))))))

(declare-fun d!1271442 () Bool)

(assert (=> d!1271442 e!2690216))

(declare-fun res!1772066 () Bool)

(assert (=> d!1271442 (=> (not res!1772066) (not e!2690216))))

(assert (=> d!1271442 (= res!1772066 ((_ is LongMap!4759) (_2!26902 lt!1541379)))))

(declare-fun lt!1541380 () tuple3!5508)

(assert (=> d!1271442 (= lt!1541379 (tuple2!47231 (_1!26905 lt!1541380) (_3!3287 lt!1541380)))))

(assert (=> d!1271442 (= lt!1541380 e!2690219)))

(declare-fun c!735608 () Bool)

(assert (=> d!1271442 (= c!735608 (not (_1!26904 lt!1541386)))))

(assert (=> d!1271442 (= lt!1541386 e!2690220)))

(declare-fun c!735609 () Bool)

(assert (=> d!1271442 (= c!735609 (and (not (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!1541383 () Cell!18845)

(assert (=> d!1271442 (= lt!1541383 (Cell!18846 (getNewLongMapFixedSize!28 lt!1541382 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))))))))

(declare-fun computeNewMask!14 (MutLongMap!4759 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1271442 (= lt!1541382 (computeNewMask!14 (v!42797 (underlying!9748 thiss!42308)) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_vacant!4822 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_size!9563 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(assert (=> d!1271442 (valid!3772 (v!42797 (underlying!9748 thiss!42308)))))

(assert (=> d!1271442 (= (repack!87 (v!42797 (underlying!9748 thiss!42308))) lt!1541379)))

(declare-fun b!4323958 () Bool)

(declare-fun lt!1541378 () tuple2!47232)

(declare-fun lt!1541385 () tuple2!47232)

(assert (=> b!4323958 (= e!2690220 (tuple2!47235 (and (_1!26903 lt!1541378) (_1!26903 lt!1541385)) (Cell!18846 (_2!26903 lt!1541385))))))

(assert (=> b!4323958 (= lt!1541378 (update!537 call!299952 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun call!299955 () tuple2!47232)

(assert (=> b!4323958 (= lt!1541385 call!299955)))

(declare-fun bm!299949 () Bool)

(assert (=> bm!299949 (= call!299955 (update!537 (ite c!735609 (_2!26903 lt!1541378) call!299954) (ite c!735609 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!735607 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!735609 (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (ite c!735607 (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))))

(declare-fun b!4323965 () Bool)

(assert (=> b!4323965 (= e!2690217 (= (map!10422 (_2!26902 lt!1541379)) (map!10422 (v!42797 (underlying!9748 thiss!42308)))))))

(declare-fun bm!299950 () Bool)

(assert (=> bm!299950 (= call!299953 call!299955)))

(declare-fun b!4323966 () Bool)

(assert (=> b!4323966 (= e!2690215 (tuple2!47235 true lt!1541383))))

(assert (= (and d!1271442 c!735609) b!4323958))

(assert (= (and d!1271442 (not c!735609)) b!4323963))

(assert (= (and b!4323963 c!735607) b!4323957))

(assert (= (and b!4323963 (not c!735607)) b!4323961))

(assert (= (and b!4323961 c!735606) b!4323959))

(assert (= (and b!4323961 (not c!735606)) b!4323966))

(assert (= (or b!4323957 b!4323959) bm!299947))

(assert (= (or b!4323957 b!4323959) bm!299950))

(assert (= (or b!4323958 bm!299947) bm!299948))

(assert (= (or b!4323958 bm!299950) bm!299949))

(assert (= (and d!1271442 c!735608) b!4323964))

(assert (= (and d!1271442 (not c!735608)) b!4323960))

(assert (= (and d!1271442 res!1772066) b!4323962))

(assert (= (and b!4323962 (not res!1772065)) b!4323965))

(declare-fun m!4918469 () Bool)

(assert (=> d!1271442 m!4918469))

(declare-fun m!4918471 () Bool)

(assert (=> d!1271442 m!4918471))

(assert (=> d!1271442 m!4917973))

(assert (=> bm!299948 m!4918469))

(declare-fun m!4918473 () Bool)

(assert (=> b!4323960 m!4918473))

(declare-fun m!4918475 () Bool)

(assert (=> b!4323958 m!4918475))

(declare-fun m!4918477 () Bool)

(assert (=> bm!299949 m!4918477))

(declare-fun m!4918479 () Bool)

(assert (=> b!4323965 m!4918479))

(assert (=> b!4323965 m!4917951))

(assert (=> b!4323507 d!1271442))

(declare-fun d!1271444 () Bool)

(declare-fun res!1772071 () Bool)

(declare-fun e!2690225 () Bool)

(assert (=> d!1271444 (=> res!1772071 e!2690225)))

(assert (=> d!1271444 (= res!1772071 (and ((_ is Cons!48394) (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))) (= (_1!26900 (h!53857 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))) key!2048)))))

(assert (=> d!1271444 (= (containsKey!411 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048) e!2690225)))

(declare-fun b!4323971 () Bool)

(declare-fun e!2690226 () Bool)

(assert (=> b!4323971 (= e!2690225 e!2690226)))

(declare-fun res!1772072 () Bool)

(assert (=> b!4323971 (=> (not res!1772072) (not e!2690226))))

(assert (=> b!4323971 (= res!1772072 ((_ is Cons!48394) (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))))))

(declare-fun b!4323972 () Bool)

(assert (=> b!4323972 (= e!2690226 (containsKey!411 (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))) key!2048))))

(assert (= (and d!1271444 (not res!1772071)) b!4323971))

(assert (= (and b!4323971 res!1772072) b!4323972))

(declare-fun m!4918481 () Bool)

(assert (=> b!4323972 m!4918481))

(assert (=> d!1271336 d!1271444))

(assert (=> bm!299895 d!1271330))

(declare-fun b!4324053 () Bool)

(declare-fun call!300012 () ListLongMap!1183)

(declare-fun e!2690277 () Bool)

(declare-fun call!300027 () ListLongMap!1183)

(assert (=> b!4324053 (= e!2690277 (= call!300012 (+!336 call!300027 (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun b!4324054 () Bool)

(declare-fun lt!1541465 () tuple2!47232)

(declare-fun call!300025 () tuple2!47232)

(assert (=> b!4324054 (= lt!1541465 call!300025)))

(declare-fun e!2690283 () tuple2!47232)

(assert (=> b!4324054 (= e!2690283 (tuple2!47233 (_1!26903 lt!1541465) (_2!26903 lt!1541465)))))

(declare-fun lt!1541458 () SeekEntryResult!22)

(declare-fun c!735645 () Bool)

(declare-fun bm!299999 () Bool)

(declare-fun updateHelperNewKey!12 (LongMapFixedSize!9518 (_ BitVec 64) List!48518 (_ BitVec 32)) tuple2!47232)

(assert (=> bm!299999 (= call!300025 (updateHelperNewKey!12 (v!42796 (underlying!9747 (_2!26902 lt!1541019))) lt!1540991 lt!1540989 (ite c!735645 (index!1471 lt!1541458) (index!1470 lt!1541458))))))

(declare-fun b!4324055 () Bool)

(declare-fun res!1772103 () Bool)

(declare-fun call!300008 () Bool)

(assert (=> b!4324055 (= res!1772103 call!300008)))

(declare-fun e!2690279 () Bool)

(assert (=> b!4324055 (=> (not res!1772103) (not e!2690279))))

(declare-fun lt!1541452 () SeekEntryResult!22)

(declare-fun lt!1541455 () SeekEntryResult!22)

(declare-fun c!735644 () Bool)

(declare-fun c!735641 () Bool)

(declare-fun lt!1541454 () SeekEntryResult!22)

(declare-fun c!735646 () Bool)

(declare-fun call!300017 () Bool)

(declare-fun bm!300000 () Bool)

(declare-fun c!735640 () Bool)

(declare-fun lt!1541457 () SeekEntryResult!22)

(declare-fun c!735647 () Bool)

(assert (=> bm!300000 (= call!300017 (inRange!0 (ite c!735641 (ite c!735644 (index!1469 lt!1541452) (ite c!735646 (index!1470 lt!1541457) (index!1471 lt!1541457))) (ite c!735640 (index!1469 lt!1541455) (ite c!735647 (index!1470 lt!1541454) (index!1471 lt!1541454)))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))))

(declare-fun call!300016 () ListLongMap!1183)

(declare-fun bm!300001 () Bool)

(assert (=> bm!300001 (= call!300016 (getCurrentListMap!25 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (ite c!735641 (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (array!17265 (store (arr!7704 (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (index!1469 lt!1541458) lt!1540989) (size!35743 (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (zeroValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (minValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) #b00000000000000000000000000000000 (defaultEntry!5164 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))))

(declare-fun bm!300002 () Bool)

(declare-fun call!300015 () Unit!67880)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!12 (array!17262 array!17264 (_ BitVec 32) (_ BitVec 32) List!48518 List!48518 (_ BitVec 64) Int) Unit!67880)

(assert (=> bm!300002 (= call!300015 (lemmaInListMapThenSeekEntryOrOpenFindsIt!12 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (zeroValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (minValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) lt!1540991 (defaultEntry!5164 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))))

(declare-fun b!4324056 () Bool)

(declare-fun e!2690275 () Unit!67880)

(declare-fun lt!1541447 () Unit!67880)

(assert (=> b!4324056 (= e!2690275 lt!1541447)))

(assert (=> b!4324056 (= lt!1541447 call!300015)))

(declare-fun call!300004 () SeekEntryResult!22)

(assert (=> b!4324056 (= lt!1541455 call!300004)))

(declare-fun res!1772106 () Bool)

(assert (=> b!4324056 (= res!1772106 ((_ is Found!22) lt!1541455))))

(assert (=> b!4324056 (=> (not res!1772106) (not e!2690279))))

(assert (=> b!4324056 e!2690279))

(declare-fun c!735638 () Bool)

(declare-fun call!300005 () ListLongMap!1183)

(declare-fun lt!1541449 () (_ BitVec 32))

(declare-fun c!735648 () Bool)

(declare-fun bm!300003 () Bool)

(assert (=> bm!300003 (= call!300005 (getCurrentListMap!25 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (ite c!735638 (ite c!735648 (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) lt!1541449) (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (zeroValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (ite c!735638 (ite c!735648 (minValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) lt!1540989) (minValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) #b00000000000000000000000000000000 (defaultEntry!5164 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))))

(declare-fun b!4324057 () Bool)

(declare-fun e!2690276 () Bool)

(declare-fun e!2690285 () Bool)

(assert (=> b!4324057 (= e!2690276 e!2690285)))

(declare-fun res!1772110 () Bool)

(declare-fun call!300014 () Bool)

(assert (=> b!4324057 (= res!1772110 call!300014)))

(assert (=> b!4324057 (=> (not res!1772110) (not e!2690285))))

(declare-fun b!4324058 () Bool)

(declare-fun res!1772105 () Bool)

(declare-fun e!2690273 () Bool)

(assert (=> b!4324058 (=> (not res!1772105) (not e!2690273))))

(assert (=> b!4324058 (= res!1772105 (= (select (arr!7703 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (index!1470 lt!1541454)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4324059 () Bool)

(declare-fun e!2690281 () tuple2!47232)

(declare-fun e!2690271 () tuple2!47232)

(assert (=> b!4324059 (= e!2690281 e!2690271)))

(assert (=> b!4324059 (= c!735648 (= lt!1540991 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4324060 () Bool)

(declare-fun e!2690280 () tuple2!47232)

(declare-fun lt!1541448 () tuple2!47232)

(assert (=> b!4324060 (= e!2690280 (tuple2!47233 (_1!26903 lt!1541448) (_2!26903 lt!1541448)))))

(assert (=> b!4324060 (= lt!1541448 call!300025)))

(declare-fun bm!300004 () Bool)

(declare-fun call!300021 () Bool)

(declare-fun call!300023 () Bool)

(assert (=> bm!300004 (= call!300021 call!300023)))

(declare-fun b!4324061 () Bool)

(declare-fun Unit!67913 () Unit!67880)

(assert (=> b!4324061 (= e!2690275 Unit!67913)))

(declare-fun lt!1541451 () Unit!67880)

(declare-fun call!300007 () Unit!67880)

(assert (=> b!4324061 (= lt!1541451 call!300007)))

(assert (=> b!4324061 (= lt!1541454 call!300004)))

(assert (=> b!4324061 (= c!735647 ((_ is MissingZero!22) lt!1541454))))

(declare-fun e!2690272 () Bool)

(assert (=> b!4324061 e!2690272))

(declare-fun lt!1541466 () Unit!67880)

(assert (=> b!4324061 (= lt!1541466 lt!1541451)))

(assert (=> b!4324061 false))

(declare-fun bm!300005 () Bool)

(assert (=> bm!300005 (= call!300008 call!300017)))

(declare-fun b!4324062 () Bool)

(declare-fun e!2690278 () Bool)

(assert (=> b!4324062 (= e!2690278 ((_ is Undefined!22) lt!1541454))))

(declare-fun bm!300006 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!12 (array!17262 array!17264 (_ BitVec 32) (_ BitVec 32) List!48518 List!48518 (_ BitVec 64) Int) Unit!67880)

(assert (=> bm!300006 (= call!300007 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!12 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (zeroValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (minValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) lt!1540991 (defaultEntry!5164 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))))

(declare-fun bm!300007 () Bool)

(declare-fun c!735637 () Bool)

(assert (=> bm!300007 (= c!735637 c!735641)))

(declare-fun e!2690270 () ListLongMap!1183)

(declare-fun call!300019 () Bool)

(assert (=> bm!300007 (= call!300019 (contains!10455 e!2690270 (ite c!735641 lt!1540991 (select (arr!7703 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (index!1469 lt!1541458)))))))

(declare-fun bm!300008 () Bool)

(declare-fun call!300010 () Bool)

(assert (=> bm!300008 (= call!300010 call!300023)))

(declare-fun b!4324063 () Bool)

(declare-fun e!2690284 () Unit!67880)

(declare-fun lt!1541461 () Unit!67880)

(assert (=> b!4324063 (= e!2690284 lt!1541461)))

(assert (=> b!4324063 (= lt!1541461 call!300007)))

(declare-fun call!300018 () SeekEntryResult!22)

(assert (=> b!4324063 (= lt!1541457 call!300018)))

(assert (=> b!4324063 (= c!735646 ((_ is MissingZero!22) lt!1541457))))

(declare-fun e!2690274 () Bool)

(assert (=> b!4324063 e!2690274))

(declare-fun b!4324064 () Bool)

(declare-fun lt!1541442 () Unit!67880)

(declare-fun lt!1541467 () Unit!67880)

(assert (=> b!4324064 (= lt!1541442 lt!1541467)))

(assert (=> b!4324064 call!300019))

(declare-fun lt!1541463 () array!17264)

(assert (=> b!4324064 (= lt!1541467 (lemmaValidKeyInArrayIsInListMap!15 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) lt!1541463 (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (zeroValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (minValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (index!1469 lt!1541458) (defaultEntry!5164 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))))

(assert (=> b!4324064 (= lt!1541463 (array!17265 (store (arr!7704 (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (index!1469 lt!1541458) lt!1540989) (size!35743 (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))))))))

(declare-fun lt!1541464 () Unit!67880)

(declare-fun lt!1541450 () Unit!67880)

(assert (=> b!4324064 (= lt!1541464 lt!1541450)))

(declare-fun call!300024 () ListLongMap!1183)

(assert (=> b!4324064 (= call!300024 call!300016)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!12 (array!17262 array!17264 (_ BitVec 32) (_ BitVec 32) List!48518 List!48518 (_ BitVec 32) (_ BitVec 64) List!48518 Int) Unit!67880)

(assert (=> b!4324064 (= lt!1541450 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!12 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (zeroValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (minValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (index!1469 lt!1541458) lt!1540991 lt!1540989 (defaultEntry!5164 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))))

(declare-fun lt!1541443 () Unit!67880)

(assert (=> b!4324064 (= lt!1541443 e!2690275)))

(assert (=> b!4324064 (= c!735640 (contains!10455 call!300005 lt!1540991))))

(assert (=> b!4324064 (= e!2690283 (tuple2!47233 true (LongMapFixedSize!9519 (defaultEntry!5164 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (zeroValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (minValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_size!9563 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (array!17265 (store (arr!7704 (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (index!1469 lt!1541458) lt!1540989) (size!35743 (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))))) (_vacant!4822 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))))))))

(declare-fun b!4324065 () Bool)

(assert (=> b!4324065 (= e!2690273 (not call!300021))))

(declare-fun b!4324066 () Bool)

(declare-fun c!735642 () Bool)

(assert (=> b!4324066 (= c!735642 ((_ is MissingVacant!22) lt!1541457))))

(assert (=> b!4324066 (= e!2690274 e!2690276)))

(declare-fun d!1271446 () Bool)

(declare-fun e!2690289 () Bool)

(assert (=> d!1271446 e!2690289))

(declare-fun res!1772101 () Bool)

(assert (=> d!1271446 (=> (not res!1772101) (not e!2690289))))

(declare-fun lt!1541444 () tuple2!47232)

(assert (=> d!1271446 (= res!1772101 (valid!3773 (_2!26903 lt!1541444)))))

(assert (=> d!1271446 (= lt!1541444 e!2690281)))

(assert (=> d!1271446 (= c!735638 (= lt!1540991 (bvneg lt!1540991)))))

(assert (=> d!1271446 (valid!3773 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))

(assert (=> d!1271446 (= (update!537 (v!42796 (underlying!9747 (_2!26902 lt!1541019))) lt!1540991 lt!1540989) lt!1541444)))

(declare-fun b!4324067 () Bool)

(assert (=> b!4324067 (= e!2690285 (not call!300010))))

(declare-fun bm!300009 () Bool)

(declare-fun call!300013 () ListLongMap!1183)

(declare-fun call!300020 () ListLongMap!1183)

(assert (=> bm!300009 (= call!300013 call!300020)))

(declare-fun b!4324068 () Bool)

(declare-fun res!1772111 () Bool)

(assert (=> b!4324068 (= res!1772111 (= (select (arr!7703 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (index!1471 lt!1541457)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4324068 (=> (not res!1772111) (not e!2690285))))

(declare-fun bm!300010 () Bool)

(declare-fun call!300009 () SeekEntryResult!22)

(assert (=> bm!300010 (= call!300018 call!300009)))

(declare-fun b!4324069 () Bool)

(assert (=> b!4324069 (= e!2690280 e!2690283)))

(declare-fun c!735639 () Bool)

(assert (=> b!4324069 (= c!735639 ((_ is MissingZero!22) lt!1541458))))

(declare-fun bm!300011 () Bool)

(assert (=> bm!300011 (= call!300012 (map!10424 (_2!26903 lt!1541444)))))

(declare-fun lt!1541446 () (_ BitVec 32))

(declare-fun bm!300012 () Bool)

(assert (=> bm!300012 (= call!300020 (getCurrentListMap!25 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (ite c!735638 (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) lt!1541463) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (ite (and c!735638 c!735648) lt!1541446 (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (ite (and c!735638 c!735648) lt!1540989 (zeroValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (minValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) #b00000000000000000000000000000000 (defaultEntry!5164 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))))

(declare-fun bm!300013 () Bool)

(declare-fun call!300011 () ListLongMap!1183)

(assert (=> bm!300013 (= call!300011 call!300024)))

(declare-fun b!4324070 () Bool)

(declare-fun lt!1541445 () Unit!67880)

(declare-fun lt!1541468 () Unit!67880)

(assert (=> b!4324070 (= lt!1541445 lt!1541468)))

(declare-fun call!300022 () ListLongMap!1183)

(assert (=> b!4324070 (= call!300011 call!300022)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!12 (array!17262 array!17264 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48518 List!48518 List!48518 Int) Unit!67880)

(assert (=> b!4324070 (= lt!1541468 (lemmaChangeLongMinValueKeyThenAddPairToListMap!12 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) lt!1541449 (zeroValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (minValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) lt!1540989 (defaultEntry!5164 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))))

(assert (=> b!4324070 (= lt!1541449 (bvor (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) #b00000000000000000000000000000010))))

(assert (=> b!4324070 (= e!2690271 (tuple2!47233 true (LongMapFixedSize!9519 (defaultEntry!5164 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (bvor (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) #b00000000000000000000000000000010) (zeroValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) lt!1540989 (_size!9563 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_vacant!4822 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))))))))

(declare-fun b!4324071 () Bool)

(assert (=> b!4324071 (= c!735645 ((_ is MissingVacant!22) lt!1541458))))

(declare-fun e!2690288 () tuple2!47232)

(assert (=> b!4324071 (= e!2690288 e!2690280)))

(declare-fun b!4324072 () Bool)

(assert (=> b!4324072 (= e!2690279 (= (select (arr!7703 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (index!1469 lt!1541455)) lt!1540991))))

(declare-fun b!4324073 () Bool)

(assert (=> b!4324073 (= e!2690270 call!300020)))

(declare-fun b!4324074 () Bool)

(declare-fun res!1772114 () Bool)

(assert (=> b!4324074 (= res!1772114 (= (select (arr!7703 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (index!1471 lt!1541454)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2690286 () Bool)

(assert (=> b!4324074 (=> (not res!1772114) (not e!2690286))))

(declare-fun b!4324075 () Bool)

(assert (=> b!4324075 (= e!2690276 ((_ is Undefined!22) lt!1541457))))

(declare-fun b!4324076 () Bool)

(declare-fun res!1772104 () Bool)

(declare-fun e!2690269 () Bool)

(assert (=> b!4324076 (=> (not res!1772104) (not e!2690269))))

(assert (=> b!4324076 (= res!1772104 (= (select (arr!7703 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (index!1470 lt!1541457)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4324077 () Bool)

(declare-fun res!1772113 () Bool)

(declare-fun call!300026 () Bool)

(assert (=> b!4324077 (= res!1772113 call!300026)))

(declare-fun e!2690287 () Bool)

(assert (=> b!4324077 (=> (not res!1772113) (not e!2690287))))

(declare-fun b!4324078 () Bool)

(assert (=> b!4324078 (= e!2690269 (not call!300010))))

(declare-fun b!4324079 () Bool)

(assert (=> b!4324079 (= e!2690278 e!2690286)))

(declare-fun res!1772112 () Bool)

(declare-fun call!300006 () Bool)

(assert (=> b!4324079 (= res!1772112 call!300006)))

(assert (=> b!4324079 (=> (not res!1772112) (not e!2690286))))

(declare-fun bm!300014 () Bool)

(assert (=> bm!300014 (= call!300027 (map!10424 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))))))

(declare-fun bm!300015 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17262 (_ BitVec 32)) SeekEntryResult!22)

(assert (=> bm!300015 (= call!300009 (seekEntryOrOpen!0 lt!1540991 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))))

(declare-fun b!4324080 () Bool)

(assert (=> b!4324080 (= e!2690287 (= (select (arr!7703 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))) (index!1469 lt!1541452)) lt!1540991))))

(declare-fun b!4324081 () Bool)

(declare-fun c!735636 () Bool)

(assert (=> b!4324081 (= c!735636 ((_ is MissingVacant!22) lt!1541454))))

(assert (=> b!4324081 (= e!2690272 e!2690278)))

(declare-fun bm!300016 () Bool)

(assert (=> bm!300016 (= call!300023 (arrayContainsKey!0 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) lt!1540991 #b00000000000000000000000000000000))))

(declare-fun bm!300017 () Bool)

(assert (=> bm!300017 (= call!300024 (+!336 (ite c!735638 (ite c!735648 call!300022 call!300013) call!300005) (ite c!735638 (ite c!735648 (tuple2!47229 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1540989) (tuple2!47229 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1540989)) (tuple2!47229 lt!1540991 lt!1540989))))))

(declare-fun b!4324082 () Bool)

(declare-fun e!2690282 () Bool)

(assert (=> b!4324082 (= e!2690282 e!2690277)))

(declare-fun res!1772109 () Bool)

(assert (=> b!4324082 (= res!1772109 (contains!10455 call!300012 lt!1540991))))

(assert (=> b!4324082 (=> (not res!1772109) (not e!2690277))))

(declare-fun bm!300018 () Bool)

(assert (=> bm!300018 (= call!300006 call!300008)))

(declare-fun b!4324083 () Bool)

(assert (=> b!4324083 (= e!2690270 call!300016)))

(declare-fun b!4324084 () Bool)

(declare-fun res!1772108 () Bool)

(assert (=> b!4324084 (=> (not res!1772108) (not e!2690269))))

(assert (=> b!4324084 (= res!1772108 call!300014)))

(assert (=> b!4324084 (= e!2690274 e!2690269)))

(declare-fun b!4324085 () Bool)

(declare-fun lt!1541453 () Unit!67880)

(assert (=> b!4324085 (= lt!1541453 e!2690284)))

(assert (=> b!4324085 (= c!735644 call!300019)))

(assert (=> b!4324085 (= e!2690288 (tuple2!47233 false (v!42796 (underlying!9747 (_2!26902 lt!1541019)))))))

(declare-fun bm!300019 () Bool)

(assert (=> bm!300019 (= call!300004 call!300009)))

(declare-fun b!4324086 () Bool)

(assert (=> b!4324086 (= e!2690281 e!2690288)))

(assert (=> b!4324086 (= lt!1541458 (seekEntryOrOpen!0 lt!1540991 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))))

(assert (=> b!4324086 (= c!735641 ((_ is Undefined!22) lt!1541458))))

(declare-fun bm!300020 () Bool)

(assert (=> bm!300020 (= call!300026 call!300017)))

(declare-fun bm!300021 () Bool)

(assert (=> bm!300021 (= call!300022 call!300005)))

(declare-fun b!4324087 () Bool)

(assert (=> b!4324087 (= e!2690289 e!2690282)))

(declare-fun c!735643 () Bool)

(assert (=> b!4324087 (= c!735643 (_1!26903 lt!1541444))))

(declare-fun b!4324088 () Bool)

(assert (=> b!4324088 (= e!2690286 (not call!300021))))

(declare-fun b!4324089 () Bool)

(declare-fun res!1772107 () Bool)

(assert (=> b!4324089 (=> (not res!1772107) (not e!2690273))))

(assert (=> b!4324089 (= res!1772107 call!300006)))

(assert (=> b!4324089 (= e!2690272 e!2690273)))

(declare-fun b!4324090 () Bool)

(assert (=> b!4324090 (= e!2690282 (= call!300012 call!300027))))

(declare-fun bm!300022 () Bool)

(assert (=> bm!300022 (= call!300014 call!300026)))

(declare-fun b!4324091 () Bool)

(declare-fun Unit!67914 () Unit!67880)

(assert (=> b!4324091 (= e!2690284 Unit!67914)))

(declare-fun lt!1541459 () Unit!67880)

(assert (=> b!4324091 (= lt!1541459 call!300015)))

(assert (=> b!4324091 (= lt!1541452 call!300018)))

(declare-fun res!1772102 () Bool)

(assert (=> b!4324091 (= res!1772102 ((_ is Found!22) lt!1541452))))

(assert (=> b!4324091 (=> (not res!1772102) (not e!2690287))))

(assert (=> b!4324091 e!2690287))

(declare-fun lt!1541462 () Unit!67880)

(assert (=> b!4324091 (= lt!1541462 lt!1541459)))

(assert (=> b!4324091 false))

(declare-fun b!4324092 () Bool)

(declare-fun lt!1541456 () Unit!67880)

(declare-fun lt!1541460 () Unit!67880)

(assert (=> b!4324092 (= lt!1541456 lt!1541460)))

(assert (=> b!4324092 (= call!300011 call!300013)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!12 (array!17262 array!17264 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48518 List!48518 List!48518 Int) Unit!67880)

(assert (=> b!4324092 (= lt!1541460 (lemmaChangeZeroKeyThenAddPairToListMap!12 (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) lt!1541446 (zeroValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) lt!1540989 (minValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (defaultEntry!5164 (v!42796 (underlying!9747 (_2!26902 lt!1541019))))))))

(assert (=> b!4324092 (= lt!1541446 (bvor (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) #b00000000000000000000000000000001))))

(assert (=> b!4324092 (= e!2690271 (tuple2!47233 true (LongMapFixedSize!9519 (defaultEntry!5164 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (mask!13401 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (bvor (extraKeys!5024 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) #b00000000000000000000000000000001) lt!1540989 (minValue!5036 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_size!9563 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_keys!5085 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_values!5060 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))) (_vacant!4822 (v!42796 (underlying!9747 (_2!26902 lt!1541019)))))))))

(assert (= (and d!1271446 c!735638) b!4324059))

(assert (= (and d!1271446 (not c!735638)) b!4324086))

(assert (= (and b!4324059 c!735648) b!4324092))

(assert (= (and b!4324059 (not c!735648)) b!4324070))

(assert (= (or b!4324092 b!4324070) bm!300009))

(assert (= (or b!4324092 b!4324070) bm!300021))

(assert (= (or b!4324092 b!4324070) bm!300013))

(assert (= (and b!4324086 c!735641) b!4324085))

(assert (= (and b!4324086 (not c!735641)) b!4324071))

(assert (= (and b!4324085 c!735644) b!4324091))

(assert (= (and b!4324085 (not c!735644)) b!4324063))

(assert (= (and b!4324091 res!1772102) b!4324077))

(assert (= (and b!4324077 res!1772113) b!4324080))

(assert (= (and b!4324063 c!735646) b!4324084))

(assert (= (and b!4324063 (not c!735646)) b!4324066))

(assert (= (and b!4324084 res!1772108) b!4324076))

(assert (= (and b!4324076 res!1772104) b!4324078))

(assert (= (and b!4324066 c!735642) b!4324057))

(assert (= (and b!4324066 (not c!735642)) b!4324075))

(assert (= (and b!4324057 res!1772110) b!4324068))

(assert (= (and b!4324068 res!1772111) b!4324067))

(assert (= (or b!4324078 b!4324067) bm!300008))

(assert (= (or b!4324084 b!4324057) bm!300022))

(assert (= (or b!4324077 bm!300022) bm!300020))

(assert (= (or b!4324091 b!4324063) bm!300010))

(assert (= (and b!4324071 c!735645) b!4324060))

(assert (= (and b!4324071 (not c!735645)) b!4324069))

(assert (= (and b!4324069 c!735639) b!4324054))

(assert (= (and b!4324069 (not c!735639)) b!4324064))

(assert (= (and b!4324064 c!735640) b!4324056))

(assert (= (and b!4324064 (not c!735640)) b!4324061))

(assert (= (and b!4324056 res!1772106) b!4324055))

(assert (= (and b!4324055 res!1772103) b!4324072))

(assert (= (and b!4324061 c!735647) b!4324089))

(assert (= (and b!4324061 (not c!735647)) b!4324081))

(assert (= (and b!4324089 res!1772107) b!4324058))

(assert (= (and b!4324058 res!1772105) b!4324065))

(assert (= (and b!4324081 c!735636) b!4324079))

(assert (= (and b!4324081 (not c!735636)) b!4324062))

(assert (= (and b!4324079 res!1772112) b!4324074))

(assert (= (and b!4324074 res!1772114) b!4324088))

(assert (= (or b!4324065 b!4324088) bm!300004))

(assert (= (or b!4324089 b!4324079) bm!300018))

(assert (= (or b!4324055 bm!300018) bm!300005))

(assert (= (or b!4324056 b!4324061) bm!300019))

(assert (= (or b!4324060 b!4324054) bm!299999))

(assert (= (or bm!300020 bm!300005) bm!300000))

(assert (= (or b!4324063 b!4324061) bm!300006))

(assert (= (or b!4324091 b!4324056) bm!300002))

(assert (= (or bm!300008 bm!300004) bm!300016))

(assert (= (or b!4324085 b!4324064) bm!300001))

(assert (= (or bm!300010 bm!300019) bm!300015))

(assert (= (or b!4324085 b!4324064) bm!300007))

(assert (= (and bm!300007 c!735637) b!4324083))

(assert (= (and bm!300007 (not c!735637)) b!4324073))

(assert (= (or bm!300021 b!4324064) bm!300003))

(assert (= (or bm!300009 b!4324073) bm!300012))

(assert (= (or bm!300013 b!4324064) bm!300017))

(assert (= (and d!1271446 res!1772101) b!4324087))

(assert (= (and b!4324087 c!735643) b!4324082))

(assert (= (and b!4324087 (not c!735643)) b!4324090))

(assert (= (and b!4324082 res!1772109) b!4324053))

(assert (= (or b!4324082 b!4324053 b!4324090) bm!300011))

(assert (= (or b!4324053 b!4324090) bm!300014))

(declare-fun m!4918483 () Bool)

(assert (=> bm!300002 m!4918483))

(declare-fun m!4918485 () Bool)

(assert (=> bm!300015 m!4918485))

(declare-fun m!4918487 () Bool)

(assert (=> b!4324074 m!4918487))

(declare-fun m!4918489 () Bool)

(assert (=> b!4324064 m!4918489))

(declare-fun m!4918491 () Bool)

(assert (=> b!4324064 m!4918491))

(declare-fun m!4918493 () Bool)

(assert (=> b!4324064 m!4918493))

(declare-fun m!4918495 () Bool)

(assert (=> b!4324064 m!4918495))

(declare-fun m!4918497 () Bool)

(assert (=> bm!300014 m!4918497))

(declare-fun m!4918499 () Bool)

(assert (=> bm!300006 m!4918499))

(declare-fun m!4918501 () Bool)

(assert (=> b!4324082 m!4918501))

(assert (=> b!4324086 m!4918485))

(declare-fun m!4918503 () Bool)

(assert (=> b!4324068 m!4918503))

(declare-fun m!4918505 () Bool)

(assert (=> bm!300003 m!4918505))

(declare-fun m!4918507 () Bool)

(assert (=> bm!299999 m!4918507))

(declare-fun m!4918509 () Bool)

(assert (=> b!4324053 m!4918509))

(declare-fun m!4918511 () Bool)

(assert (=> b!4324076 m!4918511))

(declare-fun m!4918513 () Bool)

(assert (=> b!4324070 m!4918513))

(declare-fun m!4918515 () Bool)

(assert (=> bm!300000 m!4918515))

(declare-fun m!4918517 () Bool)

(assert (=> bm!300011 m!4918517))

(declare-fun m!4918519 () Bool)

(assert (=> bm!300017 m!4918519))

(assert (=> bm!300001 m!4918491))

(declare-fun m!4918521 () Bool)

(assert (=> bm!300001 m!4918521))

(declare-fun m!4918523 () Bool)

(assert (=> b!4324080 m!4918523))

(declare-fun m!4918525 () Bool)

(assert (=> bm!300007 m!4918525))

(declare-fun m!4918527 () Bool)

(assert (=> bm!300007 m!4918527))

(declare-fun m!4918529 () Bool)

(assert (=> b!4324058 m!4918529))

(declare-fun m!4918531 () Bool)

(assert (=> b!4324092 m!4918531))

(declare-fun m!4918533 () Bool)

(assert (=> bm!300016 m!4918533))

(declare-fun m!4918535 () Bool)

(assert (=> d!1271446 m!4918535))

(declare-fun m!4918537 () Bool)

(assert (=> d!1271446 m!4918537))

(declare-fun m!4918539 () Bool)

(assert (=> b!4324072 m!4918539))

(declare-fun m!4918541 () Bool)

(assert (=> bm!300012 m!4918541))

(assert (=> b!4323505 d!1271446))

(declare-fun d!1271448 () Bool)

(declare-fun lt!1541471 () Bool)

(assert (=> d!1271448 (= lt!1541471 (select (content!7574 (keys!16182 (extractMap!372 (toList!2566 lt!1540986)))) key!2048))))

(declare-fun e!2690295 () Bool)

(assert (=> d!1271448 (= lt!1541471 e!2690295)))

(declare-fun res!1772120 () Bool)

(assert (=> d!1271448 (=> (not res!1772120) (not e!2690295))))

(assert (=> d!1271448 (= res!1772120 ((_ is Cons!48396) (keys!16182 (extractMap!372 (toList!2566 lt!1540986)))))))

(assert (=> d!1271448 (= (contains!10458 (keys!16182 (extractMap!372 (toList!2566 lt!1540986))) key!2048) lt!1541471)))

(declare-fun b!4324097 () Bool)

(declare-fun e!2690294 () Bool)

(assert (=> b!4324097 (= e!2690295 e!2690294)))

(declare-fun res!1772119 () Bool)

(assert (=> b!4324097 (=> res!1772119 e!2690294)))

(assert (=> b!4324097 (= res!1772119 (= (h!53860 (keys!16182 (extractMap!372 (toList!2566 lt!1540986)))) key!2048))))

(declare-fun b!4324098 () Bool)

(assert (=> b!4324098 (= e!2690294 (contains!10458 (t!355412 (keys!16182 (extractMap!372 (toList!2566 lt!1540986)))) key!2048))))

(assert (= (and d!1271448 res!1772120) b!4324097))

(assert (= (and b!4324097 (not res!1772119)) b!4324098))

(assert (=> d!1271448 m!4918123))

(declare-fun m!4918543 () Bool)

(assert (=> d!1271448 m!4918543))

(declare-fun m!4918545 () Bool)

(assert (=> d!1271448 m!4918545))

(declare-fun m!4918547 () Bool)

(assert (=> b!4324098 m!4918547))

(assert (=> b!4323608 d!1271448))

(declare-fun bs!607071 () Bool)

(declare-fun b!4324106 () Bool)

(assert (= bs!607071 (and b!4324106 b!4323808)))

(declare-fun lambda!134108 () Int)

(assert (=> bs!607071 (= (= (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))) (= lambda!134108 lambda!134066))))

(declare-fun bs!607072 () Bool)

(assert (= bs!607072 (and b!4324106 b!4323812)))

(assert (=> bs!607072 (= (= (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) (Cons!48394 (h!53857 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))) (t!355408 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))))) (= lambda!134108 lambda!134067))))

(declare-fun bs!607073 () Bool)

(assert (= bs!607073 (and b!4324106 b!4323805)))

(assert (=> bs!607073 (= lambda!134108 lambda!134068)))

(assert (=> b!4324106 true))

(declare-fun bs!607074 () Bool)

(declare-fun b!4324107 () Bool)

(assert (= bs!607074 (and b!4324107 b!4323806)))

(declare-fun lambda!134109 () Int)

(assert (=> bs!607074 (= lambda!134109 lambda!134069)))

(declare-fun d!1271450 () Bool)

(declare-fun e!2690298 () Bool)

(assert (=> d!1271450 e!2690298))

(declare-fun res!1772129 () Bool)

(assert (=> d!1271450 (=> (not res!1772129) (not e!2690298))))

(declare-fun lt!1541474 () List!48520)

(assert (=> d!1271450 (= res!1772129 (noDuplicate!588 lt!1541474))))

(assert (=> d!1271450 (= lt!1541474 (getKeysList!59 (toList!2567 (extractMap!372 (toList!2566 lt!1540986)))))))

(assert (=> d!1271450 (= (keys!16182 (extractMap!372 (toList!2566 lt!1540986))) lt!1541474)))

(declare-fun b!4324105 () Bool)

(declare-fun res!1772127 () Bool)

(assert (=> b!4324105 (=> (not res!1772127) (not e!2690298))))

(assert (=> b!4324105 (= res!1772127 (= (length!32 lt!1541474) (length!33 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))))))

(declare-fun res!1772128 () Bool)

(assert (=> b!4324106 (=> (not res!1772128) (not e!2690298))))

(assert (=> b!4324106 (= res!1772128 (forall!8822 lt!1541474 lambda!134108))))

(assert (=> b!4324107 (= e!2690298 (= (content!7574 lt!1541474) (content!7574 (map!10425 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) lambda!134109))))))

(assert (= (and d!1271450 res!1772129) b!4324105))

(assert (= (and b!4324105 res!1772127) b!4324106))

(assert (= (and b!4324106 res!1772128) b!4324107))

(declare-fun m!4918549 () Bool)

(assert (=> d!1271450 m!4918549))

(assert (=> d!1271450 m!4918121))

(declare-fun m!4918551 () Bool)

(assert (=> b!4324105 m!4918551))

(assert (=> b!4324105 m!4918325))

(declare-fun m!4918553 () Bool)

(assert (=> b!4324106 m!4918553))

(declare-fun m!4918555 () Bool)

(assert (=> b!4324107 m!4918555))

(declare-fun m!4918557 () Bool)

(assert (=> b!4324107 m!4918557))

(assert (=> b!4324107 m!4918557))

(declare-fun m!4918559 () Bool)

(assert (=> b!4324107 m!4918559))

(assert (=> b!4323608 d!1271450))

(declare-fun d!1271452 () Bool)

(declare-fun res!1772130 () Bool)

(declare-fun e!2690299 () Bool)

(assert (=> d!1271452 (=> res!1772130 e!2690299)))

(assert (=> d!1271452 (= res!1772130 ((_ is Nil!48395) (t!355409 (toList!2566 lt!1540986))))))

(assert (=> d!1271452 (= (forall!8820 (t!355409 (toList!2566 lt!1540986)) lambda!134025) e!2690299)))

(declare-fun b!4324110 () Bool)

(declare-fun e!2690300 () Bool)

(assert (=> b!4324110 (= e!2690299 e!2690300)))

(declare-fun res!1772131 () Bool)

(assert (=> b!4324110 (=> (not res!1772131) (not e!2690300))))

(assert (=> b!4324110 (= res!1772131 (dynLambda!20514 lambda!134025 (h!53858 (t!355409 (toList!2566 lt!1540986)))))))

(declare-fun b!4324111 () Bool)

(assert (=> b!4324111 (= e!2690300 (forall!8820 (t!355409 (t!355409 (toList!2566 lt!1540986))) lambda!134025))))

(assert (= (and d!1271452 (not res!1772130)) b!4324110))

(assert (= (and b!4324110 res!1772131) b!4324111))

(declare-fun b_lambda!127439 () Bool)

(assert (=> (not b_lambda!127439) (not b!4324110)))

(declare-fun m!4918561 () Bool)

(assert (=> b!4324110 m!4918561))

(declare-fun m!4918563 () Bool)

(assert (=> b!4324111 m!4918563))

(assert (=> b!4323553 d!1271452))

(declare-fun d!1271454 () Bool)

(declare-fun res!1772132 () Bool)

(declare-fun e!2690301 () Bool)

(assert (=> d!1271454 (=> res!1772132 e!2690301)))

(assert (=> d!1271454 (= res!1772132 (not ((_ is Cons!48394) (_2!26901 (h!53858 (toList!2566 lt!1540985))))))))

(assert (=> d!1271454 (= (noDuplicateKeys!265 (_2!26901 (h!53858 (toList!2566 lt!1540985)))) e!2690301)))

(declare-fun b!4324112 () Bool)

(declare-fun e!2690302 () Bool)

(assert (=> b!4324112 (= e!2690301 e!2690302)))

(declare-fun res!1772133 () Bool)

(assert (=> b!4324112 (=> (not res!1772133) (not e!2690302))))

(assert (=> b!4324112 (= res!1772133 (not (containsKey!410 (t!355408 (_2!26901 (h!53858 (toList!2566 lt!1540985)))) (_1!26900 (h!53857 (_2!26901 (h!53858 (toList!2566 lt!1540985))))))))))

(declare-fun b!4324113 () Bool)

(assert (=> b!4324113 (= e!2690302 (noDuplicateKeys!265 (t!355408 (_2!26901 (h!53858 (toList!2566 lt!1540985))))))))

(assert (= (and d!1271454 (not res!1772132)) b!4324112))

(assert (= (and b!4324112 res!1772133) b!4324113))

(declare-fun m!4918565 () Bool)

(assert (=> b!4324112 m!4918565))

(declare-fun m!4918567 () Bool)

(assert (=> b!4324113 m!4918567))

(assert (=> bs!606979 d!1271454))

(declare-fun d!1271456 () Bool)

(declare-fun lt!1541475 () Bool)

(assert (=> d!1271456 (= lt!1541475 (select (content!7574 e!2690000) key!2048))))

(declare-fun e!2690304 () Bool)

(assert (=> d!1271456 (= lt!1541475 e!2690304)))

(declare-fun res!1772135 () Bool)

(assert (=> d!1271456 (=> (not res!1772135) (not e!2690304))))

(assert (=> d!1271456 (= res!1772135 ((_ is Cons!48396) e!2690000))))

(assert (=> d!1271456 (= (contains!10458 e!2690000 key!2048) lt!1541475)))

(declare-fun b!4324114 () Bool)

(declare-fun e!2690303 () Bool)

(assert (=> b!4324114 (= e!2690304 e!2690303)))

(declare-fun res!1772134 () Bool)

(assert (=> b!4324114 (=> res!1772134 e!2690303)))

(assert (=> b!4324114 (= res!1772134 (= (h!53860 e!2690000) key!2048))))

(declare-fun b!4324115 () Bool)

(assert (=> b!4324115 (= e!2690303 (contains!10458 (t!355412 e!2690000) key!2048))))

(assert (= (and d!1271456 res!1772135) b!4324114))

(assert (= (and b!4324114 (not res!1772134)) b!4324115))

(declare-fun m!4918569 () Bool)

(assert (=> d!1271456 m!4918569))

(declare-fun m!4918571 () Bool)

(assert (=> d!1271456 m!4918571))

(declare-fun m!4918573 () Bool)

(assert (=> b!4324115 m!4918573))

(assert (=> bm!299898 d!1271456))

(declare-fun d!1271458 () Bool)

(declare-fun e!2690306 () Bool)

(assert (=> d!1271458 e!2690306))

(declare-fun res!1772136 () Bool)

(assert (=> d!1271458 (=> res!1772136 e!2690306)))

(declare-fun lt!1541479 () Bool)

(assert (=> d!1271458 (= res!1772136 (not lt!1541479))))

(declare-fun lt!1541478 () Bool)

(assert (=> d!1271458 (= lt!1541479 lt!1541478)))

(declare-fun lt!1541476 () Unit!67880)

(declare-fun e!2690305 () Unit!67880)

(assert (=> d!1271458 (= lt!1541476 e!2690305)))

(declare-fun c!735649 () Bool)

(assert (=> d!1271458 (= c!735649 lt!1541478)))

(assert (=> d!1271458 (= lt!1541478 (containsKey!409 (toList!2566 call!299882) lt!1540991))))

(assert (=> d!1271458 (= (contains!10455 call!299882 lt!1540991) lt!1541479)))

(declare-fun b!4324116 () Bool)

(declare-fun lt!1541477 () Unit!67880)

(assert (=> b!4324116 (= e!2690305 lt!1541477)))

(assert (=> b!4324116 (= lt!1541477 (lemmaContainsKeyImpliesGetValueByKeyDefined!222 (toList!2566 call!299882) lt!1540991))))

(assert (=> b!4324116 (isDefined!7610 (getValueByKey!303 (toList!2566 call!299882) lt!1540991))))

(declare-fun b!4324117 () Bool)

(declare-fun Unit!67915 () Unit!67880)

(assert (=> b!4324117 (= e!2690305 Unit!67915)))

(declare-fun b!4324118 () Bool)

(assert (=> b!4324118 (= e!2690306 (isDefined!7610 (getValueByKey!303 (toList!2566 call!299882) lt!1540991)))))

(assert (= (and d!1271458 c!735649) b!4324116))

(assert (= (and d!1271458 (not c!735649)) b!4324117))

(assert (= (and d!1271458 (not res!1772136)) b!4324118))

(declare-fun m!4918575 () Bool)

(assert (=> d!1271458 m!4918575))

(declare-fun m!4918577 () Bool)

(assert (=> b!4324116 m!4918577))

(declare-fun m!4918579 () Bool)

(assert (=> b!4324116 m!4918579))

(assert (=> b!4324116 m!4918579))

(declare-fun m!4918581 () Bool)

(assert (=> b!4324116 m!4918581))

(assert (=> b!4324118 m!4918579))

(assert (=> b!4324118 m!4918579))

(assert (=> b!4324118 m!4918581))

(assert (=> b!4323509 d!1271458))

(assert (=> b!4323605 d!1271444))

(declare-fun d!1271460 () Bool)

(assert (=> d!1271460 (containsKey!411 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048)))

(declare-fun lt!1541482 () Unit!67880)

(declare-fun choose!26430 (List!48518 K!9644) Unit!67880)

(assert (=> d!1271460 (= lt!1541482 (choose!26430 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048))))

(assert (=> d!1271460 (invariantList!604 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))))))

(assert (=> d!1271460 (= (lemmaInGetKeysListThenContainsKey!56 (toList!2567 (extractMap!372 (toList!2566 lt!1540986))) key!2048) lt!1541482)))

(declare-fun bs!607075 () Bool)

(assert (= bs!607075 d!1271460))

(assert (=> bs!607075 m!4918115))

(declare-fun m!4918583 () Bool)

(assert (=> bs!607075 m!4918583))

(assert (=> bs!607075 m!4918291))

(assert (=> b!4323605 d!1271460))

(assert (=> bm!299877 d!1271330))

(declare-fun d!1271462 () Bool)

(assert (=> d!1271462 (= (get!15682 (getValueByKey!303 (toList!2566 lt!1540986) lt!1540991)) (v!42802 (getValueByKey!303 (toList!2566 lt!1540986) lt!1540991)))))

(assert (=> d!1271334 d!1271462))

(declare-fun b!4324119 () Bool)

(declare-fun e!2690307 () Option!10309)

(assert (=> b!4324119 (= e!2690307 (Some!10308 (_2!26901 (h!53858 (toList!2566 lt!1540986)))))))

(declare-fun b!4324122 () Bool)

(declare-fun e!2690308 () Option!10309)

(assert (=> b!4324122 (= e!2690308 None!10308)))

(declare-fun b!4324121 () Bool)

(assert (=> b!4324121 (= e!2690308 (getValueByKey!303 (t!355409 (toList!2566 lt!1540986)) lt!1540991))))

(declare-fun b!4324120 () Bool)

(assert (=> b!4324120 (= e!2690307 e!2690308)))

(declare-fun c!735651 () Bool)

(assert (=> b!4324120 (= c!735651 (and ((_ is Cons!48395) (toList!2566 lt!1540986)) (not (= (_1!26901 (h!53858 (toList!2566 lt!1540986))) lt!1540991))))))

(declare-fun d!1271464 () Bool)

(declare-fun c!735650 () Bool)

(assert (=> d!1271464 (= c!735650 (and ((_ is Cons!48395) (toList!2566 lt!1540986)) (= (_1!26901 (h!53858 (toList!2566 lt!1540986))) lt!1540991)))))

(assert (=> d!1271464 (= (getValueByKey!303 (toList!2566 lt!1540986) lt!1540991) e!2690307)))

(assert (= (and d!1271464 c!735650) b!4324119))

(assert (= (and d!1271464 (not c!735650)) b!4324120))

(assert (= (and b!4324120 c!735651) b!4324121))

(assert (= (and b!4324120 (not c!735651)) b!4324122))

(declare-fun m!4918585 () Bool)

(assert (=> b!4324121 m!4918585))

(assert (=> d!1271334 d!1271464))

(declare-fun d!1271466 () Bool)

(assert (=> d!1271466 (= (invariantList!604 (toList!2567 lt!1541141)) (noDuplicatedKeys!104 (toList!2567 lt!1541141)))))

(declare-fun bs!607076 () Bool)

(assert (= bs!607076 d!1271466))

(declare-fun m!4918587 () Bool)

(assert (=> bs!607076 m!4918587))

(assert (=> d!1271338 d!1271466))

(declare-fun d!1271468 () Bool)

(declare-fun res!1772137 () Bool)

(declare-fun e!2690309 () Bool)

(assert (=> d!1271468 (=> res!1772137 e!2690309)))

(assert (=> d!1271468 (= res!1772137 ((_ is Nil!48395) (toList!2566 lt!1540986)))))

(assert (=> d!1271468 (= (forall!8820 (toList!2566 lt!1540986) lambda!134050) e!2690309)))

(declare-fun b!4324123 () Bool)

(declare-fun e!2690310 () Bool)

(assert (=> b!4324123 (= e!2690309 e!2690310)))

(declare-fun res!1772138 () Bool)

(assert (=> b!4324123 (=> (not res!1772138) (not e!2690310))))

(assert (=> b!4324123 (= res!1772138 (dynLambda!20514 lambda!134050 (h!53858 (toList!2566 lt!1540986))))))

(declare-fun b!4324124 () Bool)

(assert (=> b!4324124 (= e!2690310 (forall!8820 (t!355409 (toList!2566 lt!1540986)) lambda!134050))))

(assert (= (and d!1271468 (not res!1772137)) b!4324123))

(assert (= (and b!4324123 res!1772138) b!4324124))

(declare-fun b_lambda!127441 () Bool)

(assert (=> (not b_lambda!127441) (not b!4324123)))

(declare-fun m!4918589 () Bool)

(assert (=> b!4324123 m!4918589))

(declare-fun m!4918591 () Bool)

(assert (=> b!4324124 m!4918591))

(assert (=> d!1271338 d!1271468))

(assert (=> d!1271312 d!1271304))

(declare-fun d!1271470 () Bool)

(assert (=> d!1271470 (allKeysSameHash!250 lt!1540984 lt!1540991 (hashF!6947 thiss!42308))))

(assert (=> d!1271470 true))

(declare-fun _$19!989 () Unit!67880)

(assert (=> d!1271470 (= (choose!26423 (toList!2566 lt!1540986) lt!1540991 lt!1540984 (hashF!6947 thiss!42308)) _$19!989)))

(declare-fun bs!607077 () Bool)

(assert (= bs!607077 d!1271470))

(assert (=> bs!607077 m!4917937))

(assert (=> d!1271312 d!1271470))

(declare-fun d!1271472 () Bool)

(declare-fun res!1772139 () Bool)

(declare-fun e!2690311 () Bool)

(assert (=> d!1271472 (=> res!1772139 e!2690311)))

(assert (=> d!1271472 (= res!1772139 ((_ is Nil!48395) (toList!2566 lt!1540986)))))

(assert (=> d!1271472 (= (forall!8820 (toList!2566 lt!1540986) lambda!134033) e!2690311)))

(declare-fun b!4324125 () Bool)

(declare-fun e!2690312 () Bool)

(assert (=> b!4324125 (= e!2690311 e!2690312)))

(declare-fun res!1772140 () Bool)

(assert (=> b!4324125 (=> (not res!1772140) (not e!2690312))))

(assert (=> b!4324125 (= res!1772140 (dynLambda!20514 lambda!134033 (h!53858 (toList!2566 lt!1540986))))))

(declare-fun b!4324126 () Bool)

(assert (=> b!4324126 (= e!2690312 (forall!8820 (t!355409 (toList!2566 lt!1540986)) lambda!134033))))

(assert (= (and d!1271472 (not res!1772139)) b!4324125))

(assert (= (and b!4324125 res!1772140) b!4324126))

(declare-fun b_lambda!127443 () Bool)

(assert (=> (not b_lambda!127443) (not b!4324125)))

(declare-fun m!4918593 () Bool)

(assert (=> b!4324125 m!4918593))

(declare-fun m!4918595 () Bool)

(assert (=> b!4324126 m!4918595))

(assert (=> d!1271312 d!1271472))

(declare-fun d!1271474 () Bool)

(declare-fun isEmpty!28129 (Option!10309) Bool)

(assert (=> d!1271474 (= (isDefined!7610 (getValueByKey!303 (toList!2566 lt!1540986) lt!1540991)) (not (isEmpty!28129 (getValueByKey!303 (toList!2566 lt!1540986) lt!1540991))))))

(declare-fun bs!607078 () Bool)

(assert (= bs!607078 d!1271474))

(assert (=> bs!607078 m!4917985))

(declare-fun m!4918597 () Bool)

(assert (=> bs!607078 m!4918597))

(assert (=> b!4323485 d!1271474))

(assert (=> b!4323485 d!1271464))

(declare-fun d!1271476 () Bool)

(assert (=> d!1271476 (= (isDefined!7611 (getPair!165 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095) key!2048)) (not (isEmpty!28127 (getPair!165 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095) key!2048))))))

(declare-fun bs!607079 () Bool)

(assert (= bs!607079 d!1271476))

(assert (=> bs!607079 m!4918093))

(declare-fun m!4918599 () Bool)

(assert (=> bs!607079 m!4918599))

(assert (=> b!4323579 d!1271476))

(declare-fun b!4324127 () Bool)

(declare-fun e!2690316 () Bool)

(assert (=> b!4324127 (= e!2690316 (not (containsKey!410 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095) key!2048)))))

(declare-fun b!4324128 () Bool)

(declare-fun e!2690315 () Bool)

(declare-fun e!2690314 () Bool)

(assert (=> b!4324128 (= e!2690315 e!2690314)))

(declare-fun res!1772144 () Bool)

(assert (=> b!4324128 (=> (not res!1772144) (not e!2690314))))

(declare-fun lt!1541483 () Option!10310)

(assert (=> b!4324128 (= res!1772144 (isDefined!7611 lt!1541483))))

(declare-fun b!4324129 () Bool)

(declare-fun e!2690313 () Option!10310)

(assert (=> b!4324129 (= e!2690313 (getPair!165 (t!355408 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095)) key!2048))))

(declare-fun b!4324130 () Bool)

(declare-fun res!1772142 () Bool)

(assert (=> b!4324130 (=> (not res!1772142) (not e!2690314))))

(assert (=> b!4324130 (= res!1772142 (= (_1!26900 (get!15683 lt!1541483)) key!2048))))

(declare-fun b!4324131 () Bool)

(assert (=> b!4324131 (= e!2690313 None!10309)))

(declare-fun b!4324132 () Bool)

(declare-fun e!2690317 () Option!10310)

(assert (=> b!4324132 (= e!2690317 e!2690313)))

(declare-fun c!735652 () Bool)

(assert (=> b!4324132 (= c!735652 ((_ is Cons!48394) (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095)))))

(declare-fun d!1271478 () Bool)

(assert (=> d!1271478 e!2690315))

(declare-fun res!1772141 () Bool)

(assert (=> d!1271478 (=> res!1772141 e!2690315)))

(assert (=> d!1271478 (= res!1772141 e!2690316)))

(declare-fun res!1772143 () Bool)

(assert (=> d!1271478 (=> (not res!1772143) (not e!2690316))))

(assert (=> d!1271478 (= res!1772143 (isEmpty!28127 lt!1541483))))

(assert (=> d!1271478 (= lt!1541483 e!2690317)))

(declare-fun c!735653 () Bool)

(assert (=> d!1271478 (= c!735653 (and ((_ is Cons!48394) (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095)) (= (_1!26900 (h!53857 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))) key!2048)))))

(assert (=> d!1271478 (noDuplicateKeys!265 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))))

(assert (=> d!1271478 (= (getPair!165 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095) key!2048) lt!1541483)))

(declare-fun b!4324133 () Bool)

(assert (=> b!4324133 (= e!2690317 (Some!10309 (h!53857 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))))))

(declare-fun b!4324134 () Bool)

(assert (=> b!4324134 (= e!2690314 (contains!10459 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095) (get!15683 lt!1541483)))))

(assert (= (and d!1271478 c!735653) b!4324133))

(assert (= (and d!1271478 (not c!735653)) b!4324132))

(assert (= (and b!4324132 c!735652) b!4324129))

(assert (= (and b!4324132 (not c!735652)) b!4324131))

(assert (= (and d!1271478 res!1772143) b!4324127))

(assert (= (and d!1271478 (not res!1772141)) b!4324128))

(assert (= (and b!4324128 res!1772144) b!4324130))

(assert (= (and b!4324130 res!1772142) b!4324134))

(declare-fun m!4918601 () Bool)

(assert (=> d!1271478 m!4918601))

(assert (=> d!1271478 m!4918085))

(declare-fun m!4918603 () Bool)

(assert (=> d!1271478 m!4918603))

(declare-fun m!4918605 () Bool)

(assert (=> b!4324128 m!4918605))

(assert (=> b!4324127 m!4918085))

(declare-fun m!4918607 () Bool)

(assert (=> b!4324127 m!4918607))

(declare-fun m!4918609 () Bool)

(assert (=> b!4324130 m!4918609))

(assert (=> b!4324134 m!4918609))

(assert (=> b!4324134 m!4918085))

(assert (=> b!4324134 m!4918609))

(declare-fun m!4918611 () Bool)

(assert (=> b!4324134 m!4918611))

(declare-fun m!4918613 () Bool)

(assert (=> b!4324129 m!4918613))

(assert (=> b!4323579 d!1271478))

(assert (=> b!4323579 d!1271384))

(assert (=> b!4323612 d!1271450))

(declare-fun d!1271480 () Bool)

(assert (=> d!1271480 (isDefined!7610 (getValueByKey!303 (toList!2566 lt!1540986) lt!1540991))))

(declare-fun lt!1541486 () Unit!67880)

(declare-fun choose!26431 (List!48519 (_ BitVec 64)) Unit!67880)

(assert (=> d!1271480 (= lt!1541486 (choose!26431 (toList!2566 lt!1540986) lt!1540991))))

(declare-fun e!2690320 () Bool)

(assert (=> d!1271480 e!2690320))

(declare-fun res!1772147 () Bool)

(assert (=> d!1271480 (=> (not res!1772147) (not e!2690320))))

(assert (=> d!1271480 (= res!1772147 (isStrictlySorted!22 (toList!2566 lt!1540986)))))

(assert (=> d!1271480 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!222 (toList!2566 lt!1540986) lt!1540991) lt!1541486)))

(declare-fun b!4324137 () Bool)

(assert (=> b!4324137 (= e!2690320 (containsKey!409 (toList!2566 lt!1540986) lt!1540991))))

(assert (= (and d!1271480 res!1772147) b!4324137))

(assert (=> d!1271480 m!4917985))

(assert (=> d!1271480 m!4917985))

(assert (=> d!1271480 m!4917987))

(declare-fun m!4918615 () Bool)

(assert (=> d!1271480 m!4918615))

(assert (=> d!1271480 m!4918381))

(assert (=> b!4324137 m!4917981))

(assert (=> b!4323483 d!1271480))

(assert (=> b!4323483 d!1271474))

(assert (=> b!4323483 d!1271464))

(declare-fun d!1271482 () Bool)

(declare-fun res!1772148 () Bool)

(declare-fun e!2690321 () Bool)

(assert (=> d!1271482 (=> res!1772148 e!2690321)))

(assert (=> d!1271482 (= res!1772148 ((_ is Nil!48395) (toList!2566 lt!1540986)))))

(assert (=> d!1271482 (= (forall!8820 (toList!2566 lt!1540986) lambda!134051) e!2690321)))

(declare-fun b!4324138 () Bool)

(declare-fun e!2690322 () Bool)

(assert (=> b!4324138 (= e!2690321 e!2690322)))

(declare-fun res!1772149 () Bool)

(assert (=> b!4324138 (=> (not res!1772149) (not e!2690322))))

(assert (=> b!4324138 (= res!1772149 (dynLambda!20514 lambda!134051 (h!53858 (toList!2566 lt!1540986))))))

(declare-fun b!4324139 () Bool)

(assert (=> b!4324139 (= e!2690322 (forall!8820 (t!355409 (toList!2566 lt!1540986)) lambda!134051))))

(assert (= (and d!1271482 (not res!1772148)) b!4324138))

(assert (= (and b!4324138 res!1772149) b!4324139))

(declare-fun b_lambda!127445 () Bool)

(assert (=> (not b_lambda!127445) (not b!4324138)))

(declare-fun m!4918617 () Bool)

(assert (=> b!4324138 m!4918617))

(declare-fun m!4918619 () Bool)

(assert (=> b!4324139 m!4918619))

(assert (=> d!1271340 d!1271482))

(declare-fun d!1271484 () Bool)

(assert (=> d!1271484 (containsKey!409 lt!1541099 lt!1541095)))

(declare-fun lt!1541489 () Unit!67880)

(declare-fun choose!26432 (List!48519 (_ BitVec 64)) Unit!67880)

(assert (=> d!1271484 (= lt!1541489 (choose!26432 lt!1541099 lt!1541095))))

(declare-fun e!2690325 () Bool)

(assert (=> d!1271484 e!2690325))

(declare-fun res!1772152 () Bool)

(assert (=> d!1271484 (=> (not res!1772152) (not e!2690325))))

(assert (=> d!1271484 (= res!1772152 (isStrictlySorted!22 lt!1541099))))

(assert (=> d!1271484 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!166 lt!1541099 lt!1541095) lt!1541489)))

(declare-fun b!4324142 () Bool)

(assert (=> b!4324142 (= e!2690325 (isDefined!7610 (getValueByKey!303 lt!1541099 lt!1541095)))))

(assert (= (and d!1271484 res!1772152) b!4324142))

(assert (=> d!1271484 m!4918087))

(declare-fun m!4918621 () Bool)

(assert (=> d!1271484 m!4918621))

(declare-fun m!4918623 () Bool)

(assert (=> d!1271484 m!4918623))

(declare-fun m!4918625 () Bool)

(assert (=> b!4324142 m!4918625))

(assert (=> b!4324142 m!4918625))

(declare-fun m!4918627 () Bool)

(assert (=> b!4324142 m!4918627))

(assert (=> b!4323578 d!1271484))

(declare-fun d!1271486 () Bool)

(declare-fun res!1772153 () Bool)

(declare-fun e!2690326 () Bool)

(assert (=> d!1271486 (=> res!1772153 e!2690326)))

(assert (=> d!1271486 (= res!1772153 (and ((_ is Cons!48395) lt!1541099) (= (_1!26901 (h!53858 lt!1541099)) lt!1541095)))))

(assert (=> d!1271486 (= (containsKey!409 lt!1541099 lt!1541095) e!2690326)))

(declare-fun b!4324143 () Bool)

(declare-fun e!2690327 () Bool)

(assert (=> b!4324143 (= e!2690326 e!2690327)))

(declare-fun res!1772154 () Bool)

(assert (=> b!4324143 (=> (not res!1772154) (not e!2690327))))

(assert (=> b!4324143 (= res!1772154 (and (or (not ((_ is Cons!48395) lt!1541099)) (bvsle (_1!26901 (h!53858 lt!1541099)) lt!1541095)) ((_ is Cons!48395) lt!1541099) (bvslt (_1!26901 (h!53858 lt!1541099)) lt!1541095)))))

(declare-fun b!4324144 () Bool)

(assert (=> b!4324144 (= e!2690327 (containsKey!409 (t!355409 lt!1541099) lt!1541095))))

(assert (= (and d!1271486 (not res!1772153)) b!4324143))

(assert (= (and b!4324143 res!1772154) b!4324144))

(declare-fun m!4918629 () Bool)

(assert (=> b!4324144 m!4918629))

(assert (=> b!4323578 d!1271486))

(declare-fun b!4324145 () Bool)

(declare-fun e!2690328 () Option!10309)

(assert (=> b!4324145 (= e!2690328 (Some!10308 (_2!26901 (h!53858 lt!1541105))))))

(declare-fun b!4324148 () Bool)

(declare-fun e!2690329 () Option!10309)

(assert (=> b!4324148 (= e!2690329 None!10308)))

(declare-fun b!4324147 () Bool)

(assert (=> b!4324147 (= e!2690329 (getValueByKey!303 (t!355409 lt!1541105) lt!1541095))))

(declare-fun b!4324146 () Bool)

(assert (=> b!4324146 (= e!2690328 e!2690329)))

(declare-fun c!735655 () Bool)

(assert (=> b!4324146 (= c!735655 (and ((_ is Cons!48395) lt!1541105) (not (= (_1!26901 (h!53858 lt!1541105)) lt!1541095))))))

(declare-fun d!1271488 () Bool)

(declare-fun c!735654 () Bool)

(assert (=> d!1271488 (= c!735654 (and ((_ is Cons!48395) lt!1541105) (= (_1!26901 (h!53858 lt!1541105)) lt!1541095)))))

(assert (=> d!1271488 (= (getValueByKey!303 lt!1541105 lt!1541095) e!2690328)))

(assert (= (and d!1271488 c!735654) b!4324145))

(assert (= (and d!1271488 (not c!735654)) b!4324146))

(assert (= (and b!4324146 c!735655) b!4324147))

(assert (= (and b!4324146 (not c!735655)) b!4324148))

(declare-fun m!4918631 () Bool)

(assert (=> b!4324147 m!4918631))

(assert (=> b!4323578 d!1271488))

(declare-fun d!1271490 () Bool)

(assert (=> d!1271490 (= (isDefined!7610 (getValueByKey!303 lt!1541105 lt!1541095)) (not (isEmpty!28129 (getValueByKey!303 lt!1541105 lt!1541095))))))

(declare-fun bs!607080 () Bool)

(assert (= bs!607080 d!1271490))

(assert (=> bs!607080 m!4918077))

(declare-fun m!4918633 () Bool)

(assert (=> bs!607080 m!4918633))

(assert (=> b!4323578 d!1271490))

(declare-fun lt!1541490 () Bool)

(declare-fun d!1271492 () Bool)

(assert (=> d!1271492 (= lt!1541490 (select (content!7573 lt!1541092) (tuple2!47229 lt!1541095 lt!1541108)))))

(declare-fun e!2690330 () Bool)

(assert (=> d!1271492 (= lt!1541490 e!2690330)))

(declare-fun res!1772155 () Bool)

(assert (=> d!1271492 (=> (not res!1772155) (not e!2690330))))

(assert (=> d!1271492 (= res!1772155 ((_ is Cons!48395) lt!1541092))))

(assert (=> d!1271492 (= (contains!10457 lt!1541092 (tuple2!47229 lt!1541095 lt!1541108)) lt!1541490)))

(declare-fun b!4324149 () Bool)

(declare-fun e!2690331 () Bool)

(assert (=> b!4324149 (= e!2690330 e!2690331)))

(declare-fun res!1772156 () Bool)

(assert (=> b!4324149 (=> res!1772156 e!2690331)))

(assert (=> b!4324149 (= res!1772156 (= (h!53858 lt!1541092) (tuple2!47229 lt!1541095 lt!1541108)))))

(declare-fun b!4324150 () Bool)

(assert (=> b!4324150 (= e!2690331 (contains!10457 (t!355409 lt!1541092) (tuple2!47229 lt!1541095 lt!1541108)))))

(assert (= (and d!1271492 res!1772155) b!4324149))

(assert (= (and b!4324149 (not res!1772156)) b!4324150))

(declare-fun m!4918635 () Bool)

(assert (=> d!1271492 m!4918635))

(declare-fun m!4918637 () Bool)

(assert (=> d!1271492 m!4918637))

(declare-fun m!4918639 () Bool)

(assert (=> b!4324150 m!4918639))

(assert (=> b!4323578 d!1271492))

(declare-fun d!1271494 () Bool)

(assert (=> d!1271494 (isDefined!7610 (getValueByKey!303 lt!1541105 lt!1541095))))

(declare-fun lt!1541491 () Unit!67880)

(assert (=> d!1271494 (= lt!1541491 (choose!26431 lt!1541105 lt!1541095))))

(declare-fun e!2690332 () Bool)

(assert (=> d!1271494 e!2690332))

(declare-fun res!1772157 () Bool)

(assert (=> d!1271494 (=> (not res!1772157) (not e!2690332))))

(assert (=> d!1271494 (= res!1772157 (isStrictlySorted!22 lt!1541105))))

(assert (=> d!1271494 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!222 lt!1541105 lt!1541095) lt!1541491)))

(declare-fun b!4324151 () Bool)

(assert (=> b!4324151 (= e!2690332 (containsKey!409 lt!1541105 lt!1541095))))

(assert (= (and d!1271494 res!1772157) b!4324151))

(assert (=> d!1271494 m!4918077))

(assert (=> d!1271494 m!4918077))

(assert (=> d!1271494 m!4918079))

(declare-fun m!4918641 () Bool)

(assert (=> d!1271494 m!4918641))

(declare-fun m!4918643 () Bool)

(assert (=> d!1271494 m!4918643))

(declare-fun m!4918645 () Bool)

(assert (=> b!4324151 m!4918645))

(assert (=> b!4323578 d!1271494))

(declare-fun d!1271496 () Bool)

(assert (=> d!1271496 (contains!10457 lt!1541092 (tuple2!47229 lt!1541095 lt!1541108))))

(declare-fun lt!1541494 () Unit!67880)

(declare-fun choose!26433 (List!48519 (_ BitVec 64) List!48518) Unit!67880)

(assert (=> d!1271496 (= lt!1541494 (choose!26433 lt!1541092 lt!1541095 lt!1541108))))

(declare-fun e!2690335 () Bool)

(assert (=> d!1271496 e!2690335))

(declare-fun res!1772160 () Bool)

(assert (=> d!1271496 (=> (not res!1772160) (not e!2690335))))

(assert (=> d!1271496 (= res!1772160 (isStrictlySorted!22 lt!1541092))))

(assert (=> d!1271496 (= (lemmaGetValueByKeyImpliesContainsTuple!177 lt!1541092 lt!1541095 lt!1541108) lt!1541494)))

(declare-fun b!4324154 () Bool)

(assert (=> b!4324154 (= e!2690335 (= (getValueByKey!303 lt!1541092 lt!1541095) (Some!10308 lt!1541108)))))

(assert (= (and d!1271496 res!1772160) b!4324154))

(assert (=> d!1271496 m!4918081))

(declare-fun m!4918647 () Bool)

(assert (=> d!1271496 m!4918647))

(declare-fun m!4918649 () Bool)

(assert (=> d!1271496 m!4918649))

(declare-fun m!4918651 () Bool)

(assert (=> b!4324154 m!4918651))

(assert (=> b!4323578 d!1271496))

(assert (=> b!4323578 d!1271330))

(assert (=> b!4323578 d!1271384))

(assert (=> b!4323610 d!1271448))

(assert (=> b!4323610 d!1271450))

(declare-fun d!1271498 () Bool)

(assert (=> d!1271498 (= (apply!11151 (ite c!735488 lt!1541096 call!299898) call!299899) (get!15682 (getValueByKey!303 (toList!2566 (ite c!735488 lt!1541096 call!299898)) call!299899)))))

(declare-fun bs!607081 () Bool)

(assert (= bs!607081 d!1271498))

(assert (=> bs!607081 m!4918359))

(assert (=> bs!607081 m!4918359))

(declare-fun m!4918653 () Bool)

(assert (=> bs!607081 m!4918653))

(assert (=> bm!299890 d!1271498))

(assert (=> bm!299893 d!1271296))

(declare-fun d!1271500 () Bool)

(declare-fun choose!26434 (Hashable!4675 K!9644) (_ BitVec 64))

(assert (=> d!1271500 (= (hash!1198 (hashF!6947 thiss!42308) key!2048) (choose!26434 (hashF!6947 thiss!42308) key!2048))))

(declare-fun bs!607082 () Bool)

(assert (= bs!607082 d!1271500))

(declare-fun m!4918655 () Bool)

(assert (=> bs!607082 m!4918655))

(assert (=> d!1271296 d!1271500))

(declare-fun d!1271502 () Bool)

(declare-fun res!1772161 () Bool)

(declare-fun e!2690336 () Bool)

(assert (=> d!1271502 (=> res!1772161 e!2690336)))

(assert (=> d!1271502 (= res!1772161 ((_ is Nil!48395) (toList!2566 lt!1541051)))))

(assert (=> d!1271502 (= (forall!8820 (toList!2566 lt!1541051) lambda!134044) e!2690336)))

(declare-fun b!4324155 () Bool)

(declare-fun e!2690337 () Bool)

(assert (=> b!4324155 (= e!2690336 e!2690337)))

(declare-fun res!1772162 () Bool)

(assert (=> b!4324155 (=> (not res!1772162) (not e!2690337))))

(assert (=> b!4324155 (= res!1772162 (dynLambda!20514 lambda!134044 (h!53858 (toList!2566 lt!1541051))))))

(declare-fun b!4324156 () Bool)

(assert (=> b!4324156 (= e!2690337 (forall!8820 (t!355409 (toList!2566 lt!1541051)) lambda!134044))))

(assert (= (and d!1271502 (not res!1772161)) b!4324155))

(assert (= (and b!4324155 res!1772162) b!4324156))

(declare-fun b_lambda!127447 () Bool)

(assert (=> (not b_lambda!127447) (not b!4324155)))

(declare-fun m!4918657 () Bool)

(assert (=> b!4324155 m!4918657))

(declare-fun m!4918659 () Bool)

(assert (=> b!4324156 m!4918659))

(assert (=> d!1271322 d!1271502))

(assert (=> d!1271322 d!1271320))

(declare-fun bs!607083 () Bool)

(declare-fun d!1271504 () Bool)

(assert (= bs!607083 (and d!1271504 d!1271368)))

(declare-fun lambda!134112 () Int)

(assert (=> bs!607083 (= lambda!134112 lambda!134054)))

(declare-fun bs!607084 () Bool)

(assert (= bs!607084 (and d!1271504 b!4323470)))

(assert (=> bs!607084 (= lambda!134112 lambda!134025)))

(declare-fun bs!607085 () Bool)

(assert (= bs!607085 (and d!1271504 d!1271356)))

(assert (=> bs!607085 (= lambda!134112 lambda!134053)))

(declare-fun bs!607086 () Bool)

(assert (= bs!607086 (and d!1271504 b!4323576)))

(assert (=> bs!607086 (= lambda!134112 lambda!134047)))

(declare-fun bs!607087 () Bool)

(assert (= bs!607087 (and d!1271504 d!1271432)))

(assert (=> bs!607087 (= lambda!134112 lambda!134103)))

(declare-fun bs!607088 () Bool)

(assert (= bs!607088 (and d!1271504 d!1271370)))

(assert (=> bs!607088 (= lambda!134112 lambda!134057)))

(declare-fun bs!607089 () Bool)

(assert (= bs!607089 (and d!1271504 d!1271338)))

(assert (=> bs!607089 (= lambda!134112 lambda!134050)))

(declare-fun bs!607090 () Bool)

(assert (= bs!607090 (and d!1271504 d!1271340)))

(assert (=> bs!607090 (not (= lambda!134112 lambda!134051))))

(declare-fun bs!607091 () Bool)

(assert (= bs!607091 (and d!1271504 d!1271312)))

(assert (=> bs!607091 (not (= lambda!134112 lambda!134033))))

(declare-fun bs!607092 () Bool)

(assert (= bs!607092 (and d!1271504 d!1271314)))

(assert (=> bs!607092 (not (= lambda!134112 lambda!134036))))

(declare-fun bs!607093 () Bool)

(assert (= bs!607093 (and d!1271504 d!1271322)))

(assert (=> bs!607093 (= lambda!134112 lambda!134044)))

(declare-fun bs!607094 () Bool)

(assert (= bs!607094 (and d!1271504 d!1271414)))

(assert (=> bs!607094 (not (= lambda!134112 lambda!134070))))

(declare-fun bs!607095 () Bool)

(assert (= bs!607095 (and d!1271504 d!1271348)))

(assert (=> bs!607095 (not (= lambda!134112 lambda!134052))))

(declare-fun bs!607096 () Bool)

(assert (= bs!607096 (and d!1271504 b!4323535)))

(assert (=> bs!607096 (= lambda!134112 lambda!134039)))

(declare-fun e!2690340 () Bool)

(assert (=> d!1271504 e!2690340))

(declare-fun res!1772165 () Bool)

(assert (=> d!1271504 (=> (not res!1772165) (not e!2690340))))

(declare-fun lt!1541497 () ListLongMap!1183)

(assert (=> d!1271504 (= res!1772165 (forall!8820 (toList!2566 lt!1541497) lambda!134112))))

(assert (=> d!1271504 (= lt!1541497 (+!336 lt!1540986 (tuple2!47229 lt!1540991 lt!1540989)))))

(assert (=> d!1271504 true))

(declare-fun _$21!142 () Unit!67880)

(assert (=> d!1271504 (= (choose!26424 lt!1540986 lt!1540991 lt!1540989 (hashF!6947 thiss!42308)) _$21!142)))

(declare-fun b!4324159 () Bool)

(assert (=> b!4324159 (= e!2690340 (allKeysSameHashInMap!393 lt!1541497 (hashF!6947 thiss!42308)))))

(assert (= (and d!1271504 res!1772165) b!4324159))

(declare-fun m!4918661 () Bool)

(assert (=> d!1271504 m!4918661))

(assert (=> d!1271504 m!4917955))

(declare-fun m!4918663 () Bool)

(assert (=> b!4324159 m!4918663))

(assert (=> d!1271322 d!1271504))

(declare-fun d!1271506 () Bool)

(declare-fun res!1772166 () Bool)

(declare-fun e!2690341 () Bool)

(assert (=> d!1271506 (=> res!1772166 e!2690341)))

(assert (=> d!1271506 (= res!1772166 ((_ is Nil!48395) (toList!2566 lt!1540986)))))

(assert (=> d!1271506 (= (forall!8820 (toList!2566 lt!1540986) lambda!134044) e!2690341)))

(declare-fun b!4324160 () Bool)

(declare-fun e!2690342 () Bool)

(assert (=> b!4324160 (= e!2690341 e!2690342)))

(declare-fun res!1772167 () Bool)

(assert (=> b!4324160 (=> (not res!1772167) (not e!2690342))))

(assert (=> b!4324160 (= res!1772167 (dynLambda!20514 lambda!134044 (h!53858 (toList!2566 lt!1540986))))))

(declare-fun b!4324161 () Bool)

(assert (=> b!4324161 (= e!2690342 (forall!8820 (t!355409 (toList!2566 lt!1540986)) lambda!134044))))

(assert (= (and d!1271506 (not res!1772166)) b!4324160))

(assert (= (and b!4324160 res!1772167) b!4324161))

(declare-fun b_lambda!127449 () Bool)

(assert (=> (not b_lambda!127449) (not b!4324160)))

(declare-fun m!4918665 () Bool)

(assert (=> b!4324160 m!4918665))

(declare-fun m!4918667 () Bool)

(assert (=> b!4324161 m!4918667))

(assert (=> d!1271322 d!1271506))

(assert (=> d!1271316 d!1271364))

(declare-fun d!1271508 () Bool)

(declare-fun res!1772168 () Bool)

(declare-fun e!2690343 () Bool)

(assert (=> d!1271508 (=> res!1772168 e!2690343)))

(assert (=> d!1271508 (= res!1772168 ((_ is Nil!48394) (removePairForKey!273 lt!1540984 key!2048)))))

(assert (=> d!1271508 (= (forall!8821 (removePairForKey!273 lt!1540984 key!2048) lambda!134030) e!2690343)))

(declare-fun b!4324162 () Bool)

(declare-fun e!2690344 () Bool)

(assert (=> b!4324162 (= e!2690343 e!2690344)))

(declare-fun res!1772169 () Bool)

(assert (=> b!4324162 (=> (not res!1772169) (not e!2690344))))

(assert (=> b!4324162 (= res!1772169 (dynLambda!20515 lambda!134030 (h!53857 (removePairForKey!273 lt!1540984 key!2048))))))

(declare-fun b!4324163 () Bool)

(assert (=> b!4324163 (= e!2690344 (forall!8821 (t!355408 (removePairForKey!273 lt!1540984 key!2048)) lambda!134030))))

(assert (= (and d!1271508 (not res!1772168)) b!4324162))

(assert (= (and b!4324162 res!1772169) b!4324163))

(declare-fun b_lambda!127451 () Bool)

(assert (=> (not b_lambda!127451) (not b!4324162)))

(declare-fun m!4918669 () Bool)

(assert (=> b!4324162 m!4918669))

(declare-fun m!4918671 () Bool)

(assert (=> b!4324163 m!4918671))

(assert (=> d!1271306 d!1271508))

(declare-fun d!1271510 () Bool)

(declare-fun res!1772170 () Bool)

(declare-fun e!2690345 () Bool)

(assert (=> d!1271510 (=> res!1772170 e!2690345)))

(assert (=> d!1271510 (= res!1772170 ((_ is Nil!48395) (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))))))

(assert (=> d!1271510 (= (forall!8820 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))) lambda!134039) e!2690345)))

(declare-fun b!4324164 () Bool)

(declare-fun e!2690346 () Bool)

(assert (=> b!4324164 (= e!2690345 e!2690346)))

(declare-fun res!1772171 () Bool)

(assert (=> b!4324164 (=> (not res!1772171) (not e!2690346))))

(assert (=> b!4324164 (= res!1772171 (dynLambda!20514 lambda!134039 (h!53858 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun b!4324165 () Bool)

(assert (=> b!4324165 (= e!2690346 (forall!8820 (t!355409 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))) lambda!134039))))

(assert (= (and d!1271510 (not res!1772170)) b!4324164))

(assert (= (and b!4324164 res!1772171) b!4324165))

(declare-fun b_lambda!127453 () Bool)

(assert (=> (not b_lambda!127453) (not b!4324164)))

(declare-fun m!4918673 () Bool)

(assert (=> b!4324164 m!4918673))

(declare-fun m!4918675 () Bool)

(assert (=> b!4324165 m!4918675))

(assert (=> b!4323535 d!1271510))

(assert (=> b!4323535 d!1271330))

(declare-fun d!1271512 () Bool)

(assert (=> d!1271512 (= (map!10424 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (getCurrentListMap!25 (_keys!5085 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (_values!5060 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (mask!13401 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (extraKeys!5024 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun bs!607097 () Bool)

(assert (= bs!607097 d!1271512))

(assert (=> bs!607097 m!4918237))

(assert (=> d!1271330 d!1271512))

(assert (=> d!1271328 d!1271296))

(declare-fun b!4324166 () Bool)

(assert (=> b!4324166 false))

(declare-fun lt!1541501 () Unit!67880)

(declare-fun lt!1541505 () Unit!67880)

(assert (=> b!4324166 (= lt!1541501 lt!1541505)))

(assert (=> b!4324166 (containsKey!411 (toList!2567 (map!10423 thiss!42308)) key!2048)))

(assert (=> b!4324166 (= lt!1541505 (lemmaInGetKeysListThenContainsKey!56 (toList!2567 (map!10423 thiss!42308)) key!2048))))

(declare-fun e!2690352 () Unit!67880)

(declare-fun Unit!67916 () Unit!67880)

(assert (=> b!4324166 (= e!2690352 Unit!67916)))

(declare-fun bm!300023 () Bool)

(declare-fun call!300028 () Bool)

(declare-fun e!2690349 () List!48520)

(assert (=> bm!300023 (= call!300028 (contains!10458 e!2690349 key!2048))))

(declare-fun c!735656 () Bool)

(declare-fun c!735657 () Bool)

(assert (=> bm!300023 (= c!735656 c!735657)))

(declare-fun b!4324168 () Bool)

(declare-fun e!2690350 () Unit!67880)

(declare-fun lt!1541500 () Unit!67880)

(assert (=> b!4324168 (= e!2690350 lt!1541500)))

(declare-fun lt!1541504 () Unit!67880)

(assert (=> b!4324168 (= lt!1541504 (lemmaContainsKeyImpliesGetValueByKeyDefined!223 (toList!2567 (map!10423 thiss!42308)) key!2048))))

(assert (=> b!4324168 (isDefined!7612 (getValueByKey!304 (toList!2567 (map!10423 thiss!42308)) key!2048))))

(declare-fun lt!1541498 () Unit!67880)

(assert (=> b!4324168 (= lt!1541498 lt!1541504)))

(assert (=> b!4324168 (= lt!1541500 (lemmaInListThenGetKeysListContains!56 (toList!2567 (map!10423 thiss!42308)) key!2048))))

(assert (=> b!4324168 call!300028))

(declare-fun b!4324169 () Bool)

(declare-fun e!2690348 () Bool)

(assert (=> b!4324169 (= e!2690348 (contains!10458 (keys!16182 (map!10423 thiss!42308)) key!2048))))

(declare-fun b!4324170 () Bool)

(assert (=> b!4324170 (= e!2690350 e!2690352)))

(declare-fun c!735658 () Bool)

(assert (=> b!4324170 (= c!735658 call!300028)))

(declare-fun d!1271514 () Bool)

(declare-fun e!2690351 () Bool)

(assert (=> d!1271514 e!2690351))

(declare-fun res!1772174 () Bool)

(assert (=> d!1271514 (=> res!1772174 e!2690351)))

(declare-fun e!2690347 () Bool)

(assert (=> d!1271514 (= res!1772174 e!2690347)))

(declare-fun res!1772172 () Bool)

(assert (=> d!1271514 (=> (not res!1772172) (not e!2690347))))

(declare-fun lt!1541502 () Bool)

(assert (=> d!1271514 (= res!1772172 (not lt!1541502))))

(declare-fun lt!1541503 () Bool)

(assert (=> d!1271514 (= lt!1541502 lt!1541503)))

(declare-fun lt!1541499 () Unit!67880)

(assert (=> d!1271514 (= lt!1541499 e!2690350)))

(assert (=> d!1271514 (= c!735657 lt!1541503)))

(assert (=> d!1271514 (= lt!1541503 (containsKey!411 (toList!2567 (map!10423 thiss!42308)) key!2048))))

(assert (=> d!1271514 (= (contains!10452 (map!10423 thiss!42308) key!2048) lt!1541502)))

(declare-fun b!4324167 () Bool)

(assert (=> b!4324167 (= e!2690349 (getKeysList!59 (toList!2567 (map!10423 thiss!42308))))))

(declare-fun b!4324171 () Bool)

(assert (=> b!4324171 (= e!2690347 (not (contains!10458 (keys!16182 (map!10423 thiss!42308)) key!2048)))))

(declare-fun b!4324172 () Bool)

(declare-fun Unit!67917 () Unit!67880)

(assert (=> b!4324172 (= e!2690352 Unit!67917)))

(declare-fun b!4324173 () Bool)

(assert (=> b!4324173 (= e!2690349 (keys!16182 (map!10423 thiss!42308)))))

(declare-fun b!4324174 () Bool)

(assert (=> b!4324174 (= e!2690351 e!2690348)))

(declare-fun res!1772173 () Bool)

(assert (=> b!4324174 (=> (not res!1772173) (not e!2690348))))

(assert (=> b!4324174 (= res!1772173 (isDefined!7612 (getValueByKey!304 (toList!2567 (map!10423 thiss!42308)) key!2048)))))

(assert (= (and d!1271514 c!735657) b!4324168))

(assert (= (and d!1271514 (not c!735657)) b!4324170))

(assert (= (and b!4324170 c!735658) b!4324166))

(assert (= (and b!4324170 (not c!735658)) b!4324172))

(assert (= (or b!4324168 b!4324170) bm!300023))

(assert (= (and bm!300023 c!735656) b!4324167))

(assert (= (and bm!300023 (not c!735656)) b!4324173))

(assert (= (and d!1271514 res!1772172) b!4324171))

(assert (= (and d!1271514 (not res!1772174)) b!4324174))

(assert (= (and b!4324174 res!1772173) b!4324169))

(declare-fun m!4918677 () Bool)

(assert (=> d!1271514 m!4918677))

(declare-fun m!4918679 () Bool)

(assert (=> b!4324174 m!4918679))

(assert (=> b!4324174 m!4918679))

(declare-fun m!4918681 () Bool)

(assert (=> b!4324174 m!4918681))

(declare-fun m!4918683 () Bool)

(assert (=> b!4324167 m!4918683))

(assert (=> b!4324173 m!4917953))

(declare-fun m!4918685 () Bool)

(assert (=> b!4324173 m!4918685))

(declare-fun m!4918687 () Bool)

(assert (=> b!4324168 m!4918687))

(assert (=> b!4324168 m!4918679))

(assert (=> b!4324168 m!4918679))

(assert (=> b!4324168 m!4918681))

(declare-fun m!4918689 () Bool)

(assert (=> b!4324168 m!4918689))

(assert (=> b!4324169 m!4917953))

(assert (=> b!4324169 m!4918685))

(assert (=> b!4324169 m!4918685))

(declare-fun m!4918691 () Bool)

(assert (=> b!4324169 m!4918691))

(assert (=> b!4324171 m!4917953))

(assert (=> b!4324171 m!4918685))

(assert (=> b!4324171 m!4918685))

(assert (=> b!4324171 m!4918691))

(assert (=> b!4324166 m!4918677))

(declare-fun m!4918693 () Bool)

(assert (=> b!4324166 m!4918693))

(declare-fun m!4918695 () Bool)

(assert (=> bm!300023 m!4918695))

(assert (=> d!1271328 d!1271514))

(declare-fun b!4324175 () Bool)

(assert (=> b!4324175 false))

(declare-fun lt!1541509 () Unit!67880)

(declare-fun lt!1541513 () Unit!67880)

(assert (=> b!4324175 (= lt!1541509 lt!1541513)))

(assert (=> b!4324175 (containsKey!411 (toList!2567 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) key!2048)))

(assert (=> b!4324175 (= lt!1541513 (lemmaInGetKeysListThenContainsKey!56 (toList!2567 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) key!2048))))

(declare-fun e!2690358 () Unit!67880)

(declare-fun Unit!67918 () Unit!67880)

(assert (=> b!4324175 (= e!2690358 Unit!67918)))

(declare-fun bm!300024 () Bool)

(declare-fun call!300029 () Bool)

(declare-fun e!2690355 () List!48520)

(assert (=> bm!300024 (= call!300029 (contains!10458 e!2690355 key!2048))))

(declare-fun c!735659 () Bool)

(declare-fun c!735660 () Bool)

(assert (=> bm!300024 (= c!735659 c!735660)))

(declare-fun b!4324177 () Bool)

(declare-fun e!2690356 () Unit!67880)

(declare-fun lt!1541508 () Unit!67880)

(assert (=> b!4324177 (= e!2690356 lt!1541508)))

(declare-fun lt!1541512 () Unit!67880)

(assert (=> b!4324177 (= lt!1541512 (lemmaContainsKeyImpliesGetValueByKeyDefined!223 (toList!2567 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) key!2048))))

(assert (=> b!4324177 (isDefined!7612 (getValueByKey!304 (toList!2567 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) key!2048))))

(declare-fun lt!1541506 () Unit!67880)

(assert (=> b!4324177 (= lt!1541506 lt!1541512)))

(assert (=> b!4324177 (= lt!1541508 (lemmaInListThenGetKeysListContains!56 (toList!2567 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) key!2048))))

(assert (=> b!4324177 call!300029))

(declare-fun b!4324178 () Bool)

(declare-fun e!2690354 () Bool)

(assert (=> b!4324178 (= e!2690354 (contains!10458 (keys!16182 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) key!2048))))

(declare-fun b!4324179 () Bool)

(assert (=> b!4324179 (= e!2690356 e!2690358)))

(declare-fun c!735661 () Bool)

(assert (=> b!4324179 (= c!735661 call!300029)))

(declare-fun d!1271516 () Bool)

(declare-fun e!2690357 () Bool)

(assert (=> d!1271516 e!2690357))

(declare-fun res!1772177 () Bool)

(assert (=> d!1271516 (=> res!1772177 e!2690357)))

(declare-fun e!2690353 () Bool)

(assert (=> d!1271516 (= res!1772177 e!2690353)))

(declare-fun res!1772175 () Bool)

(assert (=> d!1271516 (=> (not res!1772175) (not e!2690353))))

(declare-fun lt!1541510 () Bool)

(assert (=> d!1271516 (= res!1772175 (not lt!1541510))))

(declare-fun lt!1541511 () Bool)

(assert (=> d!1271516 (= lt!1541510 lt!1541511)))

(declare-fun lt!1541507 () Unit!67880)

(assert (=> d!1271516 (= lt!1541507 e!2690356)))

(assert (=> d!1271516 (= c!735660 lt!1541511)))

(assert (=> d!1271516 (= lt!1541511 (containsKey!411 (toList!2567 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) key!2048))))

(assert (=> d!1271516 (= (contains!10452 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))) key!2048) lt!1541510)))

(declare-fun b!4324176 () Bool)

(assert (=> b!4324176 (= e!2690355 (getKeysList!59 (toList!2567 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))))))))

(declare-fun b!4324180 () Bool)

(assert (=> b!4324180 (= e!2690353 (not (contains!10458 (keys!16182 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) key!2048)))))

(declare-fun b!4324181 () Bool)

(declare-fun Unit!67919 () Unit!67880)

(assert (=> b!4324181 (= e!2690358 Unit!67919)))

(declare-fun b!4324182 () Bool)

(assert (=> b!4324182 (= e!2690355 (keys!16182 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))))))

(declare-fun b!4324183 () Bool)

(assert (=> b!4324183 (= e!2690357 e!2690354)))

(declare-fun res!1772176 () Bool)

(assert (=> b!4324183 (=> (not res!1772176) (not e!2690354))))

(assert (=> b!4324183 (= res!1772176 (isDefined!7612 (getValueByKey!304 (toList!2567 (extractMap!372 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) key!2048)))))

(assert (= (and d!1271516 c!735660) b!4324177))

(assert (= (and d!1271516 (not c!735660)) b!4324179))

(assert (= (and b!4324179 c!735661) b!4324175))

(assert (= (and b!4324179 (not c!735661)) b!4324181))

(assert (= (or b!4324177 b!4324179) bm!300024))

(assert (= (and bm!300024 c!735659) b!4324176))

(assert (= (and bm!300024 (not c!735659)) b!4324182))

(assert (= (and d!1271516 res!1772175) b!4324180))

(assert (= (and d!1271516 (not res!1772177)) b!4324183))

(assert (= (and b!4324183 res!1772176) b!4324178))

(declare-fun m!4918697 () Bool)

(assert (=> d!1271516 m!4918697))

(declare-fun m!4918699 () Bool)

(assert (=> b!4324183 m!4918699))

(assert (=> b!4324183 m!4918699))

(declare-fun m!4918701 () Bool)

(assert (=> b!4324183 m!4918701))

(declare-fun m!4918703 () Bool)

(assert (=> b!4324176 m!4918703))

(assert (=> b!4324182 m!4918067))

(declare-fun m!4918705 () Bool)

(assert (=> b!4324182 m!4918705))

(declare-fun m!4918707 () Bool)

(assert (=> b!4324177 m!4918707))

(assert (=> b!4324177 m!4918699))

(assert (=> b!4324177 m!4918699))

(assert (=> b!4324177 m!4918701))

(declare-fun m!4918709 () Bool)

(assert (=> b!4324177 m!4918709))

(assert (=> b!4324178 m!4918067))

(assert (=> b!4324178 m!4918705))

(assert (=> b!4324178 m!4918705))

(declare-fun m!4918711 () Bool)

(assert (=> b!4324178 m!4918711))

(assert (=> b!4324180 m!4918067))

(assert (=> b!4324180 m!4918705))

(assert (=> b!4324180 m!4918705))

(assert (=> b!4324180 m!4918711))

(assert (=> b!4324175 m!4918697))

(declare-fun m!4918713 () Bool)

(assert (=> b!4324175 m!4918713))

(declare-fun m!4918715 () Bool)

(assert (=> bm!300024 m!4918715))

(assert (=> d!1271328 d!1271516))

(assert (=> d!1271328 d!1271316))

(assert (=> d!1271328 d!1271332))

(declare-fun d!1271518 () Bool)

(declare-fun lt!1541514 () Bool)

(assert (=> d!1271518 (= lt!1541514 (contains!10455 (map!10422 (v!42797 (underlying!9748 thiss!42308))) lt!1541095))))

(assert (=> d!1271518 (= lt!1541514 (contains!10456 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))) lt!1541095))))

(assert (=> d!1271518 (valid!3772 (v!42797 (underlying!9748 thiss!42308)))))

(assert (=> d!1271518 (= (contains!10453 (v!42797 (underlying!9748 thiss!42308)) lt!1541095) lt!1541514)))

(declare-fun bs!607098 () Bool)

(assert (= bs!607098 d!1271518))

(assert (=> bs!607098 m!4917951))

(assert (=> bs!607098 m!4917951))

(declare-fun m!4918717 () Bool)

(assert (=> bs!607098 m!4918717))

(declare-fun m!4918719 () Bool)

(assert (=> bs!607098 m!4918719))

(assert (=> bs!607098 m!4917973))

(assert (=> d!1271328 d!1271518))

(assert (=> d!1271328 d!1271356))

(assert (=> d!1271328 d!1271330))

(declare-fun bs!607099 () Bool)

(declare-fun d!1271520 () Bool)

(assert (= bs!607099 (and d!1271520 d!1271368)))

(declare-fun lambda!134115 () Int)

(assert (=> bs!607099 (= lambda!134115 lambda!134054)))

(declare-fun bs!607100 () Bool)

(assert (= bs!607100 (and d!1271520 b!4323470)))

(assert (=> bs!607100 (= lambda!134115 lambda!134025)))

(declare-fun bs!607101 () Bool)

(assert (= bs!607101 (and d!1271520 d!1271356)))

(assert (=> bs!607101 (= lambda!134115 lambda!134053)))

(declare-fun bs!607102 () Bool)

(assert (= bs!607102 (and d!1271520 b!4323576)))

(assert (=> bs!607102 (= lambda!134115 lambda!134047)))

(declare-fun bs!607103 () Bool)

(assert (= bs!607103 (and d!1271520 d!1271432)))

(assert (=> bs!607103 (= lambda!134115 lambda!134103)))

(declare-fun bs!607104 () Bool)

(assert (= bs!607104 (and d!1271520 d!1271370)))

(assert (=> bs!607104 (= lambda!134115 lambda!134057)))

(declare-fun bs!607105 () Bool)

(assert (= bs!607105 (and d!1271520 d!1271504)))

(assert (=> bs!607105 (= lambda!134115 lambda!134112)))

(declare-fun bs!607106 () Bool)

(assert (= bs!607106 (and d!1271520 d!1271338)))

(assert (=> bs!607106 (= lambda!134115 lambda!134050)))

(declare-fun bs!607107 () Bool)

(assert (= bs!607107 (and d!1271520 d!1271340)))

(assert (=> bs!607107 (not (= lambda!134115 lambda!134051))))

(declare-fun bs!607108 () Bool)

(assert (= bs!607108 (and d!1271520 d!1271312)))

(assert (=> bs!607108 (not (= lambda!134115 lambda!134033))))

(declare-fun bs!607109 () Bool)

(assert (= bs!607109 (and d!1271520 d!1271314)))

(assert (=> bs!607109 (not (= lambda!134115 lambda!134036))))

(declare-fun bs!607110 () Bool)

(assert (= bs!607110 (and d!1271520 d!1271322)))

(assert (=> bs!607110 (= lambda!134115 lambda!134044)))

(declare-fun bs!607111 () Bool)

(assert (= bs!607111 (and d!1271520 d!1271414)))

(assert (=> bs!607111 (not (= lambda!134115 lambda!134070))))

(declare-fun bs!607112 () Bool)

(assert (= bs!607112 (and d!1271520 d!1271348)))

(assert (=> bs!607112 (not (= lambda!134115 lambda!134052))))

(declare-fun bs!607113 () Bool)

(assert (= bs!607113 (and d!1271520 b!4323535)))

(assert (=> bs!607113 (= lambda!134115 lambda!134039)))

(declare-fun e!2690361 () Bool)

(assert (=> d!1271520 e!2690361))

(declare-fun res!1772180 () Bool)

(assert (=> d!1271520 (=> (not res!1772180) (not e!2690361))))

(assert (=> d!1271520 (= res!1772180 (contains!10455 lt!1541096 (hash!1194 (hashF!6947 thiss!42308) key!2048)))))

(declare-fun lt!1541517 () Unit!67880)

(declare-fun choose!26435 (ListLongMap!1183 K!9644 Hashable!4675) Unit!67880)

(assert (=> d!1271520 (= lt!1541517 (choose!26435 lt!1541096 key!2048 (hashF!6947 thiss!42308)))))

(assert (=> d!1271520 (forall!8820 (toList!2566 lt!1541096) lambda!134115)))

(assert (=> d!1271520 (= (lemmaInGenericMapThenInLongMap!165 lt!1541096 key!2048 (hashF!6947 thiss!42308)) lt!1541517)))

(declare-fun b!4324186 () Bool)

(assert (=> b!4324186 (= e!2690361 (isDefined!7611 (getPair!165 (apply!11151 lt!1541096 (hash!1194 (hashF!6947 thiss!42308) key!2048)) key!2048)))))

(assert (= (and d!1271520 res!1772180) b!4324186))

(assert (=> d!1271520 m!4917929))

(assert (=> d!1271520 m!4917929))

(declare-fun m!4918721 () Bool)

(assert (=> d!1271520 m!4918721))

(declare-fun m!4918723 () Bool)

(assert (=> d!1271520 m!4918723))

(declare-fun m!4918725 () Bool)

(assert (=> d!1271520 m!4918725))

(assert (=> b!4324186 m!4917929))

(assert (=> b!4324186 m!4917929))

(declare-fun m!4918727 () Bool)

(assert (=> b!4324186 m!4918727))

(assert (=> b!4324186 m!4918727))

(declare-fun m!4918729 () Bool)

(assert (=> b!4324186 m!4918729))

(assert (=> b!4324186 m!4918729))

(declare-fun m!4918731 () Bool)

(assert (=> b!4324186 m!4918731))

(assert (=> b!4323581 d!1271520))

(declare-fun d!1271522 () Bool)

(declare-fun res!1772181 () Bool)

(declare-fun e!2690362 () Bool)

(assert (=> d!1271522 (=> res!1772181 e!2690362)))

(assert (=> d!1271522 (= res!1772181 ((_ is Nil!48394) lt!1540989))))

(assert (=> d!1271522 (= (forall!8821 lt!1540989 lambda!134028) e!2690362)))

(declare-fun b!4324187 () Bool)

(declare-fun e!2690363 () Bool)

(assert (=> b!4324187 (= e!2690362 e!2690363)))

(declare-fun res!1772182 () Bool)

(assert (=> b!4324187 (=> (not res!1772182) (not e!2690363))))

(assert (=> b!4324187 (= res!1772182 (dynLambda!20515 lambda!134028 (h!53857 lt!1540989)))))

(declare-fun b!4324188 () Bool)

(assert (=> b!4324188 (= e!2690363 (forall!8821 (t!355408 lt!1540989) lambda!134028))))

(assert (= (and d!1271522 (not res!1772181)) b!4324187))

(assert (= (and b!4324187 res!1772182) b!4324188))

(declare-fun b_lambda!127455 () Bool)

(assert (=> (not b_lambda!127455) (not b!4324187)))

(declare-fun m!4918733 () Bool)

(assert (=> b!4324187 m!4918733))

(declare-fun m!4918735 () Bool)

(assert (=> b!4324188 m!4918735))

(assert (=> d!1271302 d!1271522))

(declare-fun b!4324189 () Bool)

(declare-fun e!2690364 () Bool)

(declare-fun tp!1327150 () Bool)

(assert (=> b!4324189 (= e!2690364 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327150))))

(assert (=> b!4323631 (= tp!1327138 e!2690364)))

(assert (= (and b!4323631 ((_ is Cons!48394) (t!355408 (minValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))) b!4324189))

(declare-fun e!2690365 () Bool)

(declare-fun b!4324190 () Bool)

(declare-fun tp!1327151 () Bool)

(assert (=> b!4324190 (= e!2690365 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327151))))

(assert (=> tb!257375 (= result!314900 e!2690365)))

(assert (= (and tb!257375 ((_ is Cons!48394) (dynLambda!20513 (defaultEntry!5164 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308))))) lt!1540991))) b!4324190))

(declare-fun b!4324191 () Bool)

(declare-fun e!2690366 () Bool)

(declare-fun tp!1327152 () Bool)

(assert (=> b!4324191 (= e!2690366 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327152))))

(assert (=> b!4323639 (= tp!1327145 e!2690366)))

(assert (= (and b!4323639 ((_ is Cons!48394) (t!355408 mapDefault!21218))) b!4324191))

(declare-fun e!2690367 () Bool)

(declare-fun b!4324192 () Bool)

(declare-fun tp!1327153 () Bool)

(assert (=> b!4324192 (= e!2690367 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327153))))

(assert (=> b!4323630 (= tp!1327137 e!2690367)))

(assert (= (and b!4323630 ((_ is Cons!48394) (t!355408 (zeroValue!5036 (v!42796 (underlying!9747 (v!42797 (underlying!9748 thiss!42308)))))))) b!4324192))

(declare-fun e!2690368 () Bool)

(declare-fun b!4324193 () Bool)

(declare-fun tp!1327154 () Bool)

(assert (=> b!4324193 (= e!2690368 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327154))))

(assert (=> b!4323640 (= tp!1327148 e!2690368)))

(assert (= (and b!4323640 ((_ is Cons!48394) (t!355408 mapValue!21215))) b!4324193))

(declare-fun tp!1327155 () Bool)

(declare-fun e!2690369 () Bool)

(declare-fun b!4324194 () Bool)

(assert (=> b!4324194 (= e!2690369 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327155))))

(assert (=> b!4323638 (= tp!1327146 e!2690369)))

(assert (= (and b!4323638 ((_ is Cons!48394) (t!355408 mapValue!21218))) b!4324194))

(declare-fun tp!1327157 () Bool)

(declare-fun b!4324195 () Bool)

(declare-fun e!2690370 () Bool)

(assert (=> b!4324195 (= e!2690370 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327157))))

(declare-fun condMapEmpty!21219 () Bool)

(declare-fun mapDefault!21219 () List!48518)

(assert (=> mapNonEmpty!21218 (= condMapEmpty!21219 (= mapRest!21218 ((as const (Array (_ BitVec 32) List!48518)) mapDefault!21219)))))

(declare-fun e!2690371 () Bool)

(declare-fun mapRes!21219 () Bool)

(assert (=> mapNonEmpty!21218 (= tp!1327147 (and e!2690371 mapRes!21219))))

(declare-fun mapNonEmpty!21219 () Bool)

(declare-fun tp!1327158 () Bool)

(assert (=> mapNonEmpty!21219 (= mapRes!21219 (and tp!1327158 e!2690370))))

(declare-fun mapRest!21219 () (Array (_ BitVec 32) List!48518))

(declare-fun mapKey!21219 () (_ BitVec 32))

(declare-fun mapValue!21219 () List!48518)

(assert (=> mapNonEmpty!21219 (= mapRest!21218 (store mapRest!21219 mapKey!21219 mapValue!21219))))

(declare-fun b!4324196 () Bool)

(declare-fun tp!1327156 () Bool)

(assert (=> b!4324196 (= e!2690371 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327156))))

(declare-fun mapIsEmpty!21219 () Bool)

(assert (=> mapIsEmpty!21219 mapRes!21219))

(assert (= (and mapNonEmpty!21218 condMapEmpty!21219) mapIsEmpty!21219))

(assert (= (and mapNonEmpty!21218 (not condMapEmpty!21219)) mapNonEmpty!21219))

(assert (= (and mapNonEmpty!21219 ((_ is Cons!48394) mapValue!21219)) b!4324195))

(assert (= (and mapNonEmpty!21218 ((_ is Cons!48394) mapDefault!21219)) b!4324196))

(declare-fun m!4918737 () Bool)

(assert (=> mapNonEmpty!21219 m!4918737))

(declare-fun b!4324197 () Bool)

(declare-fun e!2690372 () Bool)

(declare-fun tp!1327159 () Bool)

(assert (=> b!4324197 (= e!2690372 (and tp_is_empty!24133 tp_is_empty!24135 tp!1327159))))

(assert (=> b!4323641 (= tp!1327149 e!2690372)))

(assert (= (and b!4323641 ((_ is Cons!48394) (t!355408 mapDefault!21215))) b!4324197))

(declare-fun b_lambda!127457 () Bool)

(assert (= b_lambda!127437 (or d!1271304 b_lambda!127457)))

(declare-fun bs!607114 () Bool)

(declare-fun d!1271524 () Bool)

(assert (= bs!607114 (and d!1271524 d!1271304)))

(assert (=> bs!607114 (= (dynLambda!20515 lambda!134029 (h!53857 lt!1540984)) (= (hash!1194 (hashF!6947 thiss!42308) (_1!26900 (h!53857 lt!1540984))) lt!1540991))))

(declare-fun m!4918739 () Bool)

(assert (=> bs!607114 m!4918739))

(assert (=> b!4323821 d!1271524))

(declare-fun b_lambda!127459 () Bool)

(assert (= b_lambda!127455 (or d!1271302 b_lambda!127459)))

(declare-fun bs!607115 () Bool)

(declare-fun d!1271526 () Bool)

(assert (= bs!607115 (and d!1271526 d!1271302)))

(assert (=> bs!607115 (= (dynLambda!20515 lambda!134028 (h!53857 lt!1540989)) (= (hash!1194 (hashF!6947 thiss!42308) (_1!26900 (h!53857 lt!1540989))) lt!1540991))))

(declare-fun m!4918741 () Bool)

(assert (=> bs!607115 m!4918741))

(assert (=> b!4324187 d!1271526))

(declare-fun b_lambda!127461 () Bool)

(assert (= b_lambda!127439 (or b!4323470 b_lambda!127461)))

(declare-fun bs!607116 () Bool)

(declare-fun d!1271528 () Bool)

(assert (= bs!607116 (and d!1271528 b!4323470)))

(assert (=> bs!607116 (= (dynLambda!20514 lambda!134025 (h!53858 (t!355409 (toList!2566 lt!1540986)))) (noDuplicateKeys!265 (_2!26901 (h!53858 (t!355409 (toList!2566 lt!1540986))))))))

(declare-fun m!4918743 () Bool)

(assert (=> bs!607116 m!4918743))

(assert (=> b!4324110 d!1271528))

(declare-fun b_lambda!127463 () Bool)

(assert (= b_lambda!127445 (or d!1271340 b_lambda!127463)))

(declare-fun bs!607117 () Bool)

(declare-fun d!1271530 () Bool)

(assert (= bs!607117 (and d!1271530 d!1271340)))

(assert (=> bs!607117 (= (dynLambda!20514 lambda!134051 (h!53858 (toList!2566 lt!1540986))) (allKeysSameHash!250 (_2!26901 (h!53858 (toList!2566 lt!1540986))) (_1!26901 (h!53858 (toList!2566 lt!1540986))) (hashF!6947 thiss!42308)))))

(declare-fun m!4918745 () Bool)

(assert (=> bs!607117 m!4918745))

(assert (=> b!4324138 d!1271530))

(declare-fun b_lambda!127465 () Bool)

(assert (= b_lambda!127451 (or d!1271306 b_lambda!127465)))

(declare-fun bs!607118 () Bool)

(declare-fun d!1271532 () Bool)

(assert (= bs!607118 (and d!1271532 d!1271306)))

(assert (=> bs!607118 (= (dynLambda!20515 lambda!134030 (h!53857 (removePairForKey!273 lt!1540984 key!2048))) (= (hash!1194 (hashF!6947 thiss!42308) (_1!26900 (h!53857 (removePairForKey!273 lt!1540984 key!2048)))) lt!1540991))))

(declare-fun m!4918747 () Bool)

(assert (=> bs!607118 m!4918747))

(assert (=> b!4324162 d!1271532))

(declare-fun b_lambda!127467 () Bool)

(assert (= b_lambda!127447 (or d!1271322 b_lambda!127467)))

(declare-fun bs!607119 () Bool)

(declare-fun d!1271534 () Bool)

(assert (= bs!607119 (and d!1271534 d!1271322)))

(assert (=> bs!607119 (= (dynLambda!20514 lambda!134044 (h!53858 (toList!2566 lt!1541051))) (noDuplicateKeys!265 (_2!26901 (h!53858 (toList!2566 lt!1541051)))))))

(declare-fun m!4918749 () Bool)

(assert (=> bs!607119 m!4918749))

(assert (=> b!4324155 d!1271534))

(declare-fun b_lambda!127469 () Bool)

(assert (= b_lambda!127453 (or b!4323535 b_lambda!127469)))

(declare-fun bs!607120 () Bool)

(declare-fun d!1271536 () Bool)

(assert (= bs!607120 (and d!1271536 b!4323535)))

(assert (=> bs!607120 (= (dynLambda!20514 lambda!134039 (h!53858 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308)))))) (noDuplicateKeys!265 (_2!26901 (h!53858 (toList!2566 (map!10422 (v!42797 (underlying!9748 thiss!42308))))))))))

(declare-fun m!4918751 () Bool)

(assert (=> bs!607120 m!4918751))

(assert (=> b!4324164 d!1271536))

(declare-fun b_lambda!127471 () Bool)

(assert (= b_lambda!127433 (or (and b!4323466 b_free!128995) b_lambda!127471)))

(declare-fun b_lambda!127473 () Bool)

(assert (= b_lambda!127425 (or (and b!4323466 b_free!128995) b_lambda!127473)))

(declare-fun b_lambda!127475 () Bool)

(assert (= b_lambda!127423 (or d!1271314 b_lambda!127475)))

(declare-fun bs!607121 () Bool)

(declare-fun d!1271538 () Bool)

(assert (= bs!607121 (and d!1271538 d!1271314)))

(assert (=> bs!607121 (= (dynLambda!20514 lambda!134036 (h!53858 (toList!2566 lt!1540985))) (allKeysSameHash!250 (_2!26901 (h!53858 (toList!2566 lt!1540985))) (_1!26901 (h!53858 (toList!2566 lt!1540985))) (hashF!6947 thiss!42308)))))

(declare-fun m!4918753 () Bool)

(assert (=> bs!607121 m!4918753))

(assert (=> b!4323699 d!1271538))

(declare-fun b_lambda!127477 () Bool)

(assert (= b_lambda!127441 (or d!1271338 b_lambda!127477)))

(declare-fun bs!607122 () Bool)

(declare-fun d!1271540 () Bool)

(assert (= bs!607122 (and d!1271540 d!1271338)))

(assert (=> bs!607122 (= (dynLambda!20514 lambda!134050 (h!53858 (toList!2566 lt!1540986))) (noDuplicateKeys!265 (_2!26901 (h!53858 (toList!2566 lt!1540986)))))))

(assert (=> bs!607122 m!4918153))

(assert (=> b!4324123 d!1271540))

(declare-fun b_lambda!127479 () Bool)

(assert (= b_lambda!127449 (or d!1271322 b_lambda!127479)))

(declare-fun bs!607123 () Bool)

(declare-fun d!1271542 () Bool)

(assert (= bs!607123 (and d!1271542 d!1271322)))

(assert (=> bs!607123 (= (dynLambda!20514 lambda!134044 (h!53858 (toList!2566 lt!1540986))) (noDuplicateKeys!265 (_2!26901 (h!53858 (toList!2566 lt!1540986)))))))

(assert (=> bs!607123 m!4918153))

(assert (=> b!4324160 d!1271542))

(declare-fun b_lambda!127481 () Bool)

(assert (= b_lambda!127435 (or b!4323470 b_lambda!127481)))

(declare-fun bs!607124 () Bool)

(declare-fun d!1271544 () Bool)

(assert (= bs!607124 (and d!1271544 b!4323470)))

(assert (=> bs!607124 (= (dynLambda!20514 lambda!134025 (h!53858 (t!355409 (toList!2566 lt!1540985)))) (noDuplicateKeys!265 (_2!26901 (h!53858 (t!355409 (toList!2566 lt!1540985))))))))

(declare-fun m!4918755 () Bool)

(assert (=> bs!607124 m!4918755))

(assert (=> b!4323780 d!1271544))

(declare-fun b_lambda!127483 () Bool)

(assert (= b_lambda!127427 (or (and b!4323466 b_free!128995) b_lambda!127483)))

(declare-fun b_lambda!127485 () Bool)

(assert (= b_lambda!127429 (or (and b!4323466 b_free!128995) b_lambda!127485)))

(declare-fun b_lambda!127487 () Bool)

(assert (= b_lambda!127443 (or d!1271312 b_lambda!127487)))

(declare-fun bs!607125 () Bool)

(declare-fun d!1271546 () Bool)

(assert (= bs!607125 (and d!1271546 d!1271312)))

(assert (=> bs!607125 (= (dynLambda!20514 lambda!134033 (h!53858 (toList!2566 lt!1540986))) (allKeysSameHash!250 (_2!26901 (h!53858 (toList!2566 lt!1540986))) (_1!26901 (h!53858 (toList!2566 lt!1540986))) (hashF!6947 thiss!42308)))))

(assert (=> bs!607125 m!4918745))

(assert (=> b!4324125 d!1271546))

(declare-fun b_lambda!127489 () Bool)

(assert (= b_lambda!127431 (or b!4323576 b_lambda!127489)))

(declare-fun bs!607126 () Bool)

(declare-fun d!1271548 () Bool)

(assert (= bs!607126 (and d!1271548 b!4323576)))

(assert (=> bs!607126 (= (dynLambda!20514 lambda!134047 (tuple2!47229 lt!1541095 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095))) (noDuplicateKeys!265 (_2!26901 (tuple2!47229 lt!1541095 (apply!11150 (v!42797 (underlying!9748 thiss!42308)) lt!1541095)))))))

(declare-fun m!4918757 () Bool)

(assert (=> bs!607126 m!4918757))

(assert (=> d!1271382 d!1271548))

(check-sat (not b!4324112) (not d!1271434) (not b!4323960) (not b!4324163) (not b!4323830) (not b!4324092) (not b!4324175) (not b!4324121) (not d!1271520) (not b!4323781) (not b!4324118) (not d!1271460) (not b!4324183) (not d!1271428) (not d!1271384) (not bs!607117) (not b!4324193) (not d!1271494) (not b!4324171) (not b!4323746) (not bm!299928) (not d!1271514) (not d!1271500) (not d!1271350) (not d!1271446) (not bm!299920) (not b!4323822) (not b!4324190) (not bs!607120) (not bm!299911) (not b!4323902) (not d!1271422) (not d!1271518) (not d!1271458) (not b!4323815) (not b_lambda!127421) (not mapNonEmpty!21219) (not b!4323824) (not b_lambda!127469) (not bm!300006) (not b!4324105) (not b!4323936) (not bm!300001) (not b!4324194) (not b_lambda!127463) (not d!1271388) (not b!4323924) (not b!4323691) (not bm!299936) (not d!1271490) (not b!4323958) (not b!4324150) (not b!4323767) (not b!4323759) (not b!4324177) (not b_next!129699) (not b!4323840) (not b!4324182) (not b!4324197) (not bm!299938) (not b!4323926) (not d!1271466) (not b!4323661) (not b!4323898) (not b!4323849) (not b!4324154) (not bs!607124) (not b!4324165) (not b!4323693) (not b!4323700) (not d!1271402) (not b!4323667) (not bs!607115) (not d!1271476) (not b!4324053) (not b!4324130) (not b!4324173) (not bm!300014) (not d!1271374) (not b!4324167) (not b!4324113) (not b!4324186) (not bs!607121) (not b!4323838) (not b!4324064) (not b!4324082) (not b!4323891) (not b_lambda!127483) (not b!4323642) (not b!4324106) (not b!4323748) (not b_lambda!127467) (not b!4323752) (not d!1271448) (not b!4323778) (not b_lambda!127481) (not b!4324196) (not bm!300023) (not d!1271406) (not b_lambda!127419) tp_is_empty!24133 (not b!4324192) (not b!4323666) (not bs!607119) (not b!4324189) (not bs!607118) (not bm!299899) (not b!4323808) (not b!4323843) (not bs!607116) (not b!4323694) (not d!1271356) (not b!4324086) (not b!4323806) (not b!4323665) (not b_lambda!127473) (not b_lambda!127465) (not d!1271498) (not bm!299929) (not b!4323837) (not b!4323784) (not b_lambda!127461) (not d!1271516) (not d!1271378) (not b!4324161) (not d!1271430) (not d!1271450) (not b!4324191) (not b!4323972) (not tb!257377) (not b!4324139) (not b!4324188) (not b!4324166) (not bm!300007) (not b!4323674) (not bs!607114) (not b!4324116) (not b!4324174) (not b!4323698) (not b!4323929) (not d!1271394) (not b!4324070) (not d!1271380) (not d!1271484) (not d!1271474) b_and!340561 (not b!4323656) (not b_lambda!127459) (not d!1271354) (not b!4323816) (not b!4323812) (not b!4324128) (not b!4324129) (not b_next!129701) (not d!1271512) (not d!1271478) (not b!4323644) (not b!4324151) (not b!4323742) (not d!1271426) (not b!4323895) (not b!4324178) (not bm!300017) (not bm!300000) (not bm!300002) (not b_lambda!127479) (not b!4324195) (not b!4323850) (not bm!299910) (not bs!607126) (not bs!607122) (not b!4323755) (not b!4324156) (not b_lambda!127471) (not b!4324159) (not b!4323965) (not b!4323833) b_and!340571 (not d!1271432) (not b!4324124) (not bm!300003) (not b!4323658) (not d!1271386) (not b!4323643) (not bs!607125) (not b!4323934) (not d!1271480) (not bm!300015) (not bm!300016) (not d!1271400) (not b!4323880) (not b!4324169) (not bm!299949) (not bm!300024) (not bm!299999) (not b!4324107) (not b_lambda!127417) (not d!1271382) (not d!1271364) tp_is_empty!24135 (not b_lambda!127457) (not b!4324127) (not b!4324144) (not b!4324142) (not b!4323892) (not b!4323872) (not b!4323935) (not b!4324115) (not b_lambda!127489) (not bm!299927) (not bm!299948) (not b_lambda!127475) (not b!4323804) (not d!1271370) (not d!1271398) (not bm!300012) (not d!1271504) (not d!1271442) (not b!4324137) (not b!4323660) (not d!1271366) (not d!1271358) (not d!1271368) (not b!4323760) (not b!4324126) (not d!1271436) (not bm!299937) (not d!1271390) (not b!4323756) (not b!4323751) (not bm!300011) (not b!4324176) (not b!4324098) (not b!4323659) (not b_lambda!127485) (not d!1271470) (not d!1271496) (not b!4324147) (not b_lambda!127487) (not b!4324180) (not b!4323805) (not b!4323871) (not d!1271438) (not b!4324111) (not b!4323663) (not b!4323894) (not bs!607123) (not b!4323692) (not d!1271492) (not b_lambda!127477) (not d!1271420) (not b!4323900) (not b!4324168) (not b!4323835) (not d!1271414) (not d!1271456) (not d!1271348) (not b!4324134))
(check-sat b_and!340571 b_and!340561 (not b_next!129701) (not b_next!129699))
