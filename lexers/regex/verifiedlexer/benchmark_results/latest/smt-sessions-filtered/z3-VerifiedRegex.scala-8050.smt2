; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416616 () Bool)

(assert start!416616)

(declare-fun b!4325967 () Bool)

(declare-fun b_free!129083 () Bool)

(declare-fun b_next!129787 () Bool)

(assert (=> b!4325967 (= b_free!129083 (not b_next!129787))))

(declare-fun tp!1327708 () Bool)

(declare-fun b_and!340669 () Bool)

(assert (=> b!4325967 (= tp!1327708 b_and!340669)))

(declare-fun b!4325976 () Bool)

(declare-fun b_free!129085 () Bool)

(declare-fun b_next!129789 () Bool)

(assert (=> b!4325976 (= b_free!129085 (not b_next!129789))))

(declare-fun tp!1327710 () Bool)

(declare-fun b_and!340671 () Bool)

(assert (=> b!4325976 (= tp!1327710 b_and!340671)))

(declare-fun b!4325962 () Bool)

(declare-fun e!2691706 () Bool)

(declare-fun e!2691705 () Bool)

(assert (=> b!4325962 (= e!2691706 e!2691705)))

(declare-fun b!4325963 () Bool)

(declare-datatypes ((K!9699 0))(
  ( (K!9700 (val!16017 Int)) )
))
(declare-datatypes ((V!9901 0))(
  ( (V!9902 (val!16018 Int)) )
))
(declare-datatypes ((tuple2!47370 0))(
  ( (tuple2!47371 (_1!26973 K!9699) (_2!26973 V!9901)) )
))
(declare-datatypes ((List!48563 0))(
  ( (Nil!48439) (Cons!48439 (h!53907 tuple2!47370) (t!355469 List!48563)) )
))
(declare-fun e!2691700 () List!48563)

(assert (=> b!4325963 (= e!2691700 Nil!48439)))

(declare-fun b!4325964 () Bool)

(declare-fun e!2691702 () Bool)

(assert (=> b!4325964 (= e!2691702 e!2691706)))

(declare-fun b!4325965 () Bool)

(declare-fun e!2691703 () Bool)

(declare-datatypes ((tuple2!47372 0))(
  ( (tuple2!47373 (_1!26974 (_ BitVec 64)) (_2!26974 List!48563)) )
))
(declare-datatypes ((List!48564 0))(
  ( (Nil!48440) (Cons!48440 (h!53908 tuple2!47372) (t!355470 List!48564)) )
))
(declare-datatypes ((ListLongMap!1225 0))(
  ( (ListLongMap!1226 (toList!2608 List!48564)) )
))
(declare-fun lt!1543220 () ListLongMap!1225)

(declare-datatypes ((array!17364 0))(
  ( (array!17365 (arr!7747 (Array (_ BitVec 32) (_ BitVec 64))) (size!35786 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4697 0))(
  ( (HashableExt!4696 (__x!30368 Int)) )
))
(declare-datatypes ((array!17366 0))(
  ( (array!17367 (arr!7748 (Array (_ BitVec 32) List!48563)) (size!35787 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9562 0))(
  ( (LongMapFixedSize!9563 (defaultEntry!5186 Int) (mask!13434 (_ BitVec 32)) (extraKeys!5046 (_ BitVec 32)) (zeroValue!5058 List!48563) (minValue!5058 List!48563) (_size!9607 (_ BitVec 32)) (_keys!5107 array!17364) (_values!5082 array!17366) (_vacant!4844 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18933 0))(
  ( (Cell!18934 (v!42894 LongMapFixedSize!9562)) )
))
(declare-datatypes ((MutLongMap!4781 0))(
  ( (LongMap!4781 (underlying!9791 Cell!18933)) (MutLongMapExt!4780 (__x!30369 Int)) )
))
(declare-datatypes ((Cell!18935 0))(
  ( (Cell!18936 (v!42895 MutLongMap!4781)) )
))
(declare-datatypes ((MutableMap!4687 0))(
  ( (MutableMapExt!4686 (__x!30370 Int)) (HashMap!4687 (underlying!9792 Cell!18935) (hashF!7003 Hashable!4697) (_size!9608 (_ BitVec 32)) (defaultValue!4858 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4687)

(declare-fun allKeysSameHashInMap!410 (ListLongMap!1225 Hashable!4697) Bool)

(assert (=> b!4325965 (= e!2691703 (allKeysSameHashInMap!410 lt!1543220 (hashF!7003 thiss!42308)))))

(declare-fun b!4325966 () Bool)

(declare-datatypes ((Unit!68011 0))(
  ( (Unit!68012) )
))
(declare-fun e!2691714 () Unit!68011)

(declare-fun Unit!68013 () Unit!68011)

(assert (=> b!4325966 (= e!2691714 Unit!68013)))

(declare-fun c!735987 () Bool)

(declare-fun lt!1543215 () List!48563)

(declare-fun isEmpty!28144 (List!48563) Bool)

(assert (=> b!4325966 (= c!735987 (not (isEmpty!28144 lt!1543215)))))

(declare-fun lt!1543216 () Unit!68011)

(declare-fun e!2691713 () Unit!68011)

(assert (=> b!4325966 (= lt!1543216 e!2691713)))

(declare-fun lt!1543230 () (_ BitVec 64))

(declare-fun lt!1543222 () ListLongMap!1225)

(declare-fun lt!1543219 () Unit!68011)

(declare-fun lt!1543217 () List!48563)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!200 (ListLongMap!1225 (_ BitVec 64) List!48563 Hashable!4697) Unit!68011)

(assert (=> b!4325966 (= lt!1543219 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!200 lt!1543222 lt!1543230 lt!1543217 (hashF!7003 thiss!42308)))))

(declare-fun +!368 (ListLongMap!1225 tuple2!47372) ListLongMap!1225)

(assert (=> b!4325966 (= lt!1543220 (+!368 lt!1543222 (tuple2!47373 lt!1543230 lt!1543217)))))

(declare-fun res!1772790 () Bool)

(declare-fun lambda!134330 () Int)

(declare-fun forall!8843 (List!48564 Int) Bool)

(assert (=> b!4325966 (= res!1772790 (forall!8843 (toList!2608 lt!1543220) lambda!134330))))

(assert (=> b!4325966 (=> (not res!1772790) (not e!2691703))))

(assert (=> b!4325966 e!2691703))

(declare-fun lt!1543234 () Unit!68011)

(declare-fun v!9179 () V!9901)

(declare-fun key!2048 () K!9699)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!72 (ListLongMap!1225 (_ BitVec 64) List!48563 K!9699 V!9901 Hashable!4697) Unit!68011)

(assert (=> b!4325966 (= lt!1543234 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!72 lt!1543222 lt!1543230 lt!1543217 key!2048 v!9179 (hashF!7003 thiss!42308)))))

(declare-fun lt!1543224 () tuple2!47370)

(declare-datatypes ((ListMap!1885 0))(
  ( (ListMap!1886 (toList!2609 List!48563)) )
))
(declare-fun eq!167 (ListMap!1885 ListMap!1885) Bool)

(declare-fun extractMap!389 (List!48564) ListMap!1885)

(declare-fun +!369 (ListMap!1885 tuple2!47370) ListMap!1885)

(assert (=> b!4325966 (eq!167 (extractMap!389 (toList!2608 lt!1543220)) (+!369 (extractMap!389 (toList!2608 lt!1543222)) lt!1543224))))

(declare-fun lt!1543218 () ListLongMap!1225)

(declare-datatypes ((tuple2!47374 0))(
  ( (tuple2!47375 (_1!26975 Bool) (_2!26975 MutLongMap!4781)) )
))
(declare-fun lt!1543228 () tuple2!47374)

(declare-fun map!10482 (MutLongMap!4781) ListLongMap!1225)

(assert (=> b!4325966 (= lt!1543218 (map!10482 (_2!26975 lt!1543228)))))

(declare-fun res!1772789 () Bool)

(assert (=> b!4325966 (= res!1772789 (forall!8843 (toList!2608 lt!1543218) lambda!134330))))

(declare-fun e!2691701 () Bool)

(assert (=> b!4325966 (=> (not res!1772789) (not e!2691701))))

(assert (=> b!4325966 e!2691701))

(declare-fun lt!1543227 () ListMap!1885)

(declare-fun call!300189 () ListMap!1885)

(assert (=> b!4325966 (= lt!1543227 call!300189)))

(declare-fun lt!1543233 () ListMap!1885)

(declare-fun lt!1543231 () ListMap!1885)

(assert (=> b!4325966 (= lt!1543233 (+!369 lt!1543231 lt!1543224))))

(assert (=> b!4325966 (eq!167 lt!1543227 lt!1543233)))

(declare-fun lt!1543223 () Unit!68011)

(declare-fun lemmaEquivalentThenSameContains!72 (ListMap!1885 ListMap!1885 K!9699) Unit!68011)

(assert (=> b!4325966 (= lt!1543223 (lemmaEquivalentThenSameContains!72 lt!1543227 lt!1543233 key!2048))))

(declare-fun lt!1543226 () Bool)

(declare-fun contains!10528 (ListMap!1885 K!9699) Bool)

(assert (=> b!4325966 (= lt!1543226 (contains!10528 lt!1543227 key!2048))))

(declare-fun lt!1543221 () Bool)

(assert (=> b!4325966 (= lt!1543221 (contains!10528 lt!1543233 key!2048))))

(assert (=> b!4325966 (and (= lt!1543226 lt!1543221) lt!1543221 lt!1543226)))

(declare-fun tp!1327709 () Bool)

(declare-fun e!2691710 () Bool)

(declare-fun tp!1327707 () Bool)

(declare-fun array_inv!5581 (array!17364) Bool)

(declare-fun array_inv!5582 (array!17366) Bool)

(assert (=> b!4325967 (= e!2691705 (and tp!1327708 tp!1327707 tp!1327709 (array_inv!5581 (_keys!5107 (v!42894 (underlying!9791 (v!42895 (underlying!9792 thiss!42308)))))) (array_inv!5582 (_values!5082 (v!42894 (underlying!9791 (v!42895 (underlying!9792 thiss!42308)))))) e!2691710))))

(declare-fun b!4325968 () Bool)

(declare-fun e!2691711 () Bool)

(assert (=> b!4325968 (= e!2691711 (= call!300189 lt!1543231))))

(declare-fun b!4325969 () Bool)

(declare-fun Unit!68014 () Unit!68011)

(assert (=> b!4325969 (= e!2691713 Unit!68014)))

(declare-fun mapIsEmpty!21303 () Bool)

(declare-fun mapRes!21303 () Bool)

(assert (=> mapIsEmpty!21303 mapRes!21303))

(declare-fun b!4325970 () Bool)

(declare-fun Unit!68015 () Unit!68011)

(assert (=> b!4325970 (= e!2691714 Unit!68015)))

(declare-fun res!1772788 () Bool)

(declare-fun lt!1543214 () MutableMap!4687)

(declare-fun valid!3799 (MutableMap!4687) Bool)

(assert (=> b!4325970 (= res!1772788 (valid!3799 lt!1543214))))

(assert (=> b!4325970 (=> (not res!1772788) (not e!2691711))))

(assert (=> b!4325970 e!2691711))

(declare-fun mapNonEmpty!21303 () Bool)

(declare-fun tp!1327711 () Bool)

(declare-fun tp!1327706 () Bool)

(assert (=> mapNonEmpty!21303 (= mapRes!21303 (and tp!1327711 tp!1327706))))

(declare-fun mapKey!21303 () (_ BitVec 32))

(declare-fun mapRest!21303 () (Array (_ BitVec 32) List!48563))

(declare-fun mapValue!21303 () List!48563)

(assert (=> mapNonEmpty!21303 (= (arr!7748 (_values!5082 (v!42894 (underlying!9791 (v!42895 (underlying!9792 thiss!42308)))))) (store mapRest!21303 mapKey!21303 mapValue!21303))))

(declare-fun b!4325972 () Bool)

(declare-fun e!2691704 () Bool)

(declare-fun e!2691709 () Bool)

(assert (=> b!4325972 (= e!2691704 e!2691709)))

(declare-fun res!1772787 () Bool)

(assert (=> b!4325972 (=> (not res!1772787) (not e!2691709))))

(declare-fun contains!10529 (MutableMap!4687 K!9699) Bool)

(assert (=> b!4325972 (= res!1772787 (not (contains!10529 thiss!42308 key!2048)))))

(assert (=> b!4325972 (= lt!1543222 (map!10482 (v!42895 (underlying!9792 thiss!42308))))))

(declare-fun map!10483 (MutableMap!4687) ListMap!1885)

(assert (=> b!4325972 (= lt!1543231 (map!10483 thiss!42308))))

(declare-fun b!4325973 () Bool)

(declare-fun lt!1543213 () Cell!18935)

(get-info :version)

(declare-datatypes ((tuple2!47376 0))(
  ( (tuple2!47377 (_1!26976 Unit!68011) (_2!26976 MutableMap!4687)) )
))
(declare-fun Unit!68016 () Unit!68011)

(declare-fun Unit!68017 () Unit!68011)

(assert (=> b!4325973 (= e!2691709 (not ((_ is HashMap!4687) (_2!26976 (ite (_1!26975 lt!1543228) (tuple2!47377 Unit!68016 (HashMap!4687 lt!1543213 (hashF!7003 thiss!42308) (bvadd (_size!9608 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4858 thiss!42308))) (tuple2!47377 Unit!68017 lt!1543214))))))))

(declare-fun lt!1543225 () Unit!68011)

(assert (=> b!4325973 (= lt!1543225 e!2691714)))

(declare-fun c!735989 () Bool)

(assert (=> b!4325973 (= c!735989 (_1!26975 lt!1543228))))

(assert (=> b!4325973 (= lt!1543214 (HashMap!4687 lt!1543213 (hashF!7003 thiss!42308) (_size!9608 thiss!42308) (defaultValue!4858 thiss!42308)))))

(assert (=> b!4325973 (= lt!1543213 (Cell!18936 (_2!26975 lt!1543228)))))

(declare-fun update!562 (MutLongMap!4781 (_ BitVec 64) List!48563) tuple2!47374)

(assert (=> b!4325973 (= lt!1543228 (update!562 (v!42895 (underlying!9792 thiss!42308)) lt!1543230 lt!1543217))))

(assert (=> b!4325973 (= lt!1543217 (Cons!48439 lt!1543224 lt!1543215))))

(assert (=> b!4325973 (= lt!1543224 (tuple2!47371 key!2048 v!9179))))

(assert (=> b!4325973 (= lt!1543215 e!2691700)))

(declare-fun c!735988 () Bool)

(declare-fun contains!10530 (MutLongMap!4781 (_ BitVec 64)) Bool)

(assert (=> b!4325973 (= c!735988 (contains!10530 (v!42895 (underlying!9792 thiss!42308)) lt!1543230))))

(declare-fun hash!1242 (Hashable!4697 K!9699) (_ BitVec 64))

(assert (=> b!4325973 (= lt!1543230 (hash!1242 (hashF!7003 thiss!42308) key!2048))))

(declare-fun b!4325974 () Bool)

(declare-fun apply!11181 (MutLongMap!4781 (_ BitVec 64)) List!48563)

(assert (=> b!4325974 (= e!2691700 (apply!11181 (v!42895 (underlying!9792 thiss!42308)) lt!1543230))))

(declare-fun b!4325975 () Bool)

(declare-fun tp!1327705 () Bool)

(assert (=> b!4325975 (= e!2691710 (and tp!1327705 mapRes!21303))))

(declare-fun condMapEmpty!21303 () Bool)

(declare-fun mapDefault!21303 () List!48563)

(assert (=> b!4325975 (= condMapEmpty!21303 (= (arr!7748 (_values!5082 (v!42894 (underlying!9791 (v!42895 (underlying!9792 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48563)) mapDefault!21303)))))

(declare-fun e!2691707 () Bool)

(declare-fun e!2691708 () Bool)

(assert (=> b!4325976 (= e!2691707 (and e!2691708 tp!1327710))))

(declare-fun b!4325977 () Bool)

(declare-fun lt!1543229 () MutLongMap!4781)

(assert (=> b!4325977 (= e!2691708 (and e!2691702 ((_ is LongMap!4781) lt!1543229)))))

(assert (=> b!4325977 (= lt!1543229 (v!42895 (underlying!9792 thiss!42308)))))

(declare-fun bm!300184 () Bool)

(assert (=> bm!300184 (= call!300189 (map!10483 lt!1543214))))

(declare-fun res!1772792 () Bool)

(assert (=> start!416616 (=> (not res!1772792) (not e!2691704))))

(assert (=> start!416616 (= res!1772792 ((_ is HashMap!4687) thiss!42308))))

(assert (=> start!416616 e!2691704))

(assert (=> start!416616 e!2691707))

(declare-fun tp_is_empty!24221 () Bool)

(assert (=> start!416616 tp_is_empty!24221))

(declare-fun tp_is_empty!24223 () Bool)

(assert (=> start!416616 tp_is_empty!24223))

(declare-fun b!4325971 () Bool)

(declare-fun allKeysSameHash!266 (List!48563 (_ BitVec 64) Hashable!4697) Bool)

(declare-fun removePairForKey!289 (List!48563 K!9699) List!48563)

(assert (=> b!4325971 (allKeysSameHash!266 (removePairForKey!289 lt!1543215 key!2048) lt!1543230 (hashF!7003 thiss!42308))))

(declare-fun lt!1543232 () Unit!68011)

(declare-fun lemmaRemovePairForKeyPreservesHash!242 (List!48563 K!9699 (_ BitVec 64) Hashable!4697) Unit!68011)

(assert (=> b!4325971 (= lt!1543232 (lemmaRemovePairForKeyPreservesHash!242 lt!1543215 key!2048 lt!1543230 (hashF!7003 thiss!42308)))))

(assert (=> b!4325971 (allKeysSameHash!266 lt!1543215 lt!1543230 (hashF!7003 thiss!42308))))

(declare-fun lt!1543235 () Unit!68011)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!251 (List!48564 (_ BitVec 64) List!48563 Hashable!4697) Unit!68011)

(assert (=> b!4325971 (= lt!1543235 (lemmaInLongMapAllKeySameHashThenForTuple!251 (toList!2608 lt!1543222) lt!1543230 lt!1543215 (hashF!7003 thiss!42308)))))

(assert (=> b!4325971 (= e!2691713 lt!1543232)))

(declare-fun b!4325978 () Bool)

(assert (=> b!4325978 (= e!2691701 (allKeysSameHashInMap!410 lt!1543218 (hashF!7003 thiss!42308)))))

(declare-fun b!4325979 () Bool)

(declare-fun res!1772791 () Bool)

(assert (=> b!4325979 (=> (not res!1772791) (not e!2691704))))

(assert (=> b!4325979 (= res!1772791 (valid!3799 thiss!42308))))

(assert (= (and start!416616 res!1772792) b!4325979))

(assert (= (and b!4325979 res!1772791) b!4325972))

(assert (= (and b!4325972 res!1772787) b!4325973))

(assert (= (and b!4325973 c!735988) b!4325974))

(assert (= (and b!4325973 (not c!735988)) b!4325963))

(assert (= (and b!4325973 c!735989) b!4325966))

(assert (= (and b!4325973 (not c!735989)) b!4325970))

(assert (= (and b!4325966 c!735987) b!4325971))

(assert (= (and b!4325966 (not c!735987)) b!4325969))

(assert (= (and b!4325966 res!1772790) b!4325965))

(assert (= (and b!4325966 res!1772789) b!4325978))

(assert (= (and b!4325970 res!1772788) b!4325968))

(assert (= (or b!4325966 b!4325968) bm!300184))

(assert (= (and b!4325975 condMapEmpty!21303) mapIsEmpty!21303))

(assert (= (and b!4325975 (not condMapEmpty!21303)) mapNonEmpty!21303))

(assert (= b!4325967 b!4325975))

(assert (= b!4325962 b!4325967))

(assert (= b!4325964 b!4325962))

(assert (= (and b!4325977 ((_ is LongMap!4781) (v!42895 (underlying!9792 thiss!42308)))) b!4325964))

(assert (= b!4325976 b!4325977))

(assert (= (and start!416616 ((_ is HashMap!4687) thiss!42308)) b!4325976))

(declare-fun m!4920947 () Bool)

(assert (=> b!4325979 m!4920947))

(declare-fun m!4920949 () Bool)

(assert (=> b!4325966 m!4920949))

(declare-fun m!4920951 () Bool)

(assert (=> b!4325966 m!4920951))

(declare-fun m!4920953 () Bool)

(assert (=> b!4325966 m!4920953))

(declare-fun m!4920955 () Bool)

(assert (=> b!4325966 m!4920955))

(declare-fun m!4920957 () Bool)

(assert (=> b!4325966 m!4920957))

(assert (=> b!4325966 m!4920949))

(declare-fun m!4920959 () Bool)

(assert (=> b!4325966 m!4920959))

(declare-fun m!4920961 () Bool)

(assert (=> b!4325966 m!4920961))

(declare-fun m!4920963 () Bool)

(assert (=> b!4325966 m!4920963))

(assert (=> b!4325966 m!4920963))

(assert (=> b!4325966 m!4920951))

(declare-fun m!4920965 () Bool)

(assert (=> b!4325966 m!4920965))

(declare-fun m!4920967 () Bool)

(assert (=> b!4325966 m!4920967))

(declare-fun m!4920969 () Bool)

(assert (=> b!4325966 m!4920969))

(declare-fun m!4920971 () Bool)

(assert (=> b!4325966 m!4920971))

(declare-fun m!4920973 () Bool)

(assert (=> b!4325966 m!4920973))

(declare-fun m!4920975 () Bool)

(assert (=> b!4325966 m!4920975))

(declare-fun m!4920977 () Bool)

(assert (=> b!4325966 m!4920977))

(declare-fun m!4920979 () Bool)

(assert (=> b!4325966 m!4920979))

(declare-fun m!4920981 () Bool)

(assert (=> b!4325974 m!4920981))

(declare-fun m!4920983 () Bool)

(assert (=> b!4325967 m!4920983))

(declare-fun m!4920985 () Bool)

(assert (=> b!4325967 m!4920985))

(declare-fun m!4920987 () Bool)

(assert (=> b!4325970 m!4920987))

(declare-fun m!4920989 () Bool)

(assert (=> b!4325978 m!4920989))

(declare-fun m!4920991 () Bool)

(assert (=> b!4325972 m!4920991))

(declare-fun m!4920993 () Bool)

(assert (=> b!4325972 m!4920993))

(declare-fun m!4920995 () Bool)

(assert (=> b!4325972 m!4920995))

(declare-fun m!4920997 () Bool)

(assert (=> b!4325965 m!4920997))

(declare-fun m!4920999 () Bool)

(assert (=> bm!300184 m!4920999))

(declare-fun m!4921001 () Bool)

(assert (=> mapNonEmpty!21303 m!4921001))

(declare-fun m!4921003 () Bool)

(assert (=> b!4325973 m!4921003))

(declare-fun m!4921005 () Bool)

(assert (=> b!4325973 m!4921005))

(declare-fun m!4921007 () Bool)

(assert (=> b!4325973 m!4921007))

(declare-fun m!4921009 () Bool)

(assert (=> b!4325971 m!4921009))

(declare-fun m!4921011 () Bool)

(assert (=> b!4325971 m!4921011))

(declare-fun m!4921013 () Bool)

(assert (=> b!4325971 m!4921013))

(assert (=> b!4325971 m!4921011))

(declare-fun m!4921015 () Bool)

(assert (=> b!4325971 m!4921015))

(declare-fun m!4921017 () Bool)

(assert (=> b!4325971 m!4921017))

(check-sat (not b!4325979) (not b!4325973) (not b!4325965) b_and!340671 (not b!4325972) tp_is_empty!24223 (not b!4325978) (not b!4325967) b_and!340669 (not b!4325975) (not b!4325971) (not b!4325974) tp_is_empty!24221 (not b!4325970) (not b!4325966) (not b_next!129787) (not b_next!129789) (not bm!300184) (not mapNonEmpty!21303))
(check-sat b_and!340669 b_and!340671 (not b_next!129789) (not b_next!129787))
