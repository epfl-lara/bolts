; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413010 () Bool)

(assert start!413010)

(declare-fun b!4301147 () Bool)

(declare-fun b_free!128115 () Bool)

(declare-fun b_next!128819 () Bool)

(assert (=> b!4301147 (= b_free!128115 (not b_next!128819))))

(declare-fun tp!1321569 () Bool)

(declare-fun b_and!339487 () Bool)

(assert (=> b!4301147 (= tp!1321569 b_and!339487)))

(declare-fun b!4301154 () Bool)

(declare-fun b_free!128117 () Bool)

(declare-fun b_next!128821 () Bool)

(assert (=> b!4301154 (= b_free!128117 (not b_next!128821))))

(declare-fun tp!1321573 () Bool)

(declare-fun b_and!339489 () Bool)

(assert (=> b!4301154 (= tp!1321573 b_and!339489)))

(declare-fun res!1762812 () Bool)

(declare-fun e!2673674 () Bool)

(assert (=> start!413010 (=> (not res!1762812) (not e!2673674))))

(declare-datatypes ((V!9296 0))(
  ( (V!9297 (val!15533 Int)) )
))
(declare-datatypes ((K!9094 0))(
  ( (K!9095 (val!15534 Int)) )
))
(declare-datatypes ((tuple2!45982 0))(
  ( (tuple2!45983 (_1!26270 K!9094) (_2!26270 V!9296)) )
))
(declare-datatypes ((List!48092 0))(
  ( (Nil!47968) (Cons!47968 (h!53388 tuple2!45982) (t!354855 List!48092)) )
))
(declare-datatypes ((array!16272 0))(
  ( (array!16273 (arr!7263 (Array (_ BitVec 32) (_ BitVec 64))) (size!35302 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4455 0))(
  ( (HashableExt!4454 (__x!29642 Int)) )
))
(declare-datatypes ((array!16274 0))(
  ( (array!16275 (arr!7264 (Array (_ BitVec 32) List!48092)) (size!35303 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9078 0))(
  ( (LongMapFixedSize!9079 (defaultEntry!4924 Int) (mask!13037 (_ BitVec 32)) (extraKeys!4788 (_ BitVec 32)) (zeroValue!4798 List!48092) (minValue!4798 List!48092) (_size!9121 (_ BitVec 32)) (_keys!4839 array!16272) (_values!4820 array!16274) (_vacant!4600 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17965 0))(
  ( (Cell!17966 (v!41951 LongMapFixedSize!9078)) )
))
(declare-datatypes ((MutLongMap!4539 0))(
  ( (LongMap!4539 (underlying!9307 Cell!17965)) (MutLongMapExt!4538 (__x!29643 Int)) )
))
(declare-datatypes ((Cell!17967 0))(
  ( (Cell!17968 (v!41952 MutLongMap!4539)) )
))
(declare-datatypes ((MutableMap!4445 0))(
  ( (MutableMapExt!4444 (__x!29644 Int)) (HashMap!4445 (underlying!9308 Cell!17967) (hashF!6487 Hashable!4455) (_size!9122 (_ BitVec 32)) (defaultValue!4616 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4445)

(get-info :version)

(assert (=> start!413010 (= res!1762812 ((_ is HashMap!4445) thiss!42308))))

(assert (=> start!413010 e!2673674))

(declare-fun e!2673668 () Bool)

(assert (=> start!413010 e!2673668))

(declare-fun tp_is_empty!23303 () Bool)

(assert (=> start!413010 tp_is_empty!23303))

(declare-fun e!2673669 () Bool)

(declare-fun tp!1321571 () Bool)

(declare-fun e!2673667 () Bool)

(declare-fun tp!1321572 () Bool)

(declare-fun array_inv!5209 (array!16272) Bool)

(declare-fun array_inv!5210 (array!16274) Bool)

(assert (=> b!4301147 (= e!2673667 (and tp!1321569 tp!1321572 tp!1321571 (array_inv!5209 (_keys!4839 (v!41951 (underlying!9307 (v!41952 (underlying!9308 thiss!42308)))))) (array_inv!5210 (_values!4820 (v!41951 (underlying!9307 (v!41952 (underlying!9308 thiss!42308)))))) e!2673669))))

(declare-fun b!4301148 () Bool)

(declare-fun e!2673670 () Bool)

(assert (=> b!4301148 (= e!2673670 e!2673667)))

(declare-fun b!4301149 () Bool)

(declare-fun res!1762811 () Bool)

(assert (=> b!4301149 (=> (not res!1762811) (not e!2673674))))

(declare-fun valid!3522 (MutableMap!4445) Bool)

(assert (=> b!4301149 (= res!1762811 (valid!3522 thiss!42308))))

(declare-fun b!4301150 () Bool)

(declare-fun e!2673673 () Bool)

(assert (=> b!4301150 (= e!2673674 e!2673673)))

(declare-fun res!1762810 () Bool)

(assert (=> b!4301150 (=> (not res!1762810) (not e!2673673))))

(declare-fun key!2048 () K!9094)

(declare-fun contains!9886 (MutableMap!4445 K!9094) Bool)

(assert (=> b!4301150 (= res!1762810 (contains!9886 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!45984 0))(
  ( (tuple2!45985 (_1!26271 (_ BitVec 64)) (_2!26271 List!48092)) )
))
(declare-datatypes ((List!48093 0))(
  ( (Nil!47969) (Cons!47969 (h!53389 tuple2!45984) (t!354856 List!48093)) )
))
(declare-datatypes ((ListLongMap!821 0))(
  ( (ListLongMap!822 (toList!2215 List!48093)) )
))
(declare-fun lt!1523197 () ListLongMap!821)

(declare-fun map!9926 (MutLongMap!4539) ListLongMap!821)

(assert (=> b!4301150 (= lt!1523197 (map!9926 (v!41952 (underlying!9308 thiss!42308))))))

(declare-datatypes ((ListMap!1503 0))(
  ( (ListMap!1504 (toList!2216 List!48092)) )
))
(declare-fun lt!1523198 () ListMap!1503)

(declare-fun map!9927 (MutableMap!4445) ListMap!1503)

(assert (=> b!4301150 (= lt!1523198 (map!9927 thiss!42308))))

(declare-fun b!4301151 () Bool)

(declare-fun valid!3523 (MutLongMap!4539) Bool)

(assert (=> b!4301151 (= e!2673673 (not (valid!3523 (v!41952 (underlying!9308 thiss!42308)))))))

(declare-fun b!4301152 () Bool)

(declare-fun e!2673671 () Bool)

(assert (=> b!4301152 (= e!2673671 e!2673670)))

(declare-fun b!4301153 () Bool)

(declare-fun res!1762813 () Bool)

(assert (=> b!4301153 (=> (not res!1762813) (not e!2673673))))

(assert (=> b!4301153 (= res!1762813 ((_ is LongMap!4539) (v!41952 (underlying!9308 thiss!42308))))))

(declare-fun mapIsEmpty!20379 () Bool)

(declare-fun mapRes!20379 () Bool)

(assert (=> mapIsEmpty!20379 mapRes!20379))

(declare-fun e!2673666 () Bool)

(assert (=> b!4301154 (= e!2673668 (and e!2673666 tp!1321573))))

(declare-fun mapNonEmpty!20379 () Bool)

(declare-fun tp!1321567 () Bool)

(declare-fun tp!1321568 () Bool)

(assert (=> mapNonEmpty!20379 (= mapRes!20379 (and tp!1321567 tp!1321568))))

(declare-fun mapKey!20379 () (_ BitVec 32))

(declare-fun mapRest!20379 () (Array (_ BitVec 32) List!48092))

(declare-fun mapValue!20379 () List!48092)

(assert (=> mapNonEmpty!20379 (= (arr!7264 (_values!4820 (v!41951 (underlying!9307 (v!41952 (underlying!9308 thiss!42308)))))) (store mapRest!20379 mapKey!20379 mapValue!20379))))

(declare-fun b!4301155 () Bool)

(declare-fun lt!1523199 () MutLongMap!4539)

(assert (=> b!4301155 (= e!2673666 (and e!2673671 ((_ is LongMap!4539) lt!1523199)))))

(assert (=> b!4301155 (= lt!1523199 (v!41952 (underlying!9308 thiss!42308)))))

(declare-fun b!4301156 () Bool)

(declare-fun tp!1321570 () Bool)

(assert (=> b!4301156 (= e!2673669 (and tp!1321570 mapRes!20379))))

(declare-fun condMapEmpty!20379 () Bool)

(declare-fun mapDefault!20379 () List!48092)

(assert (=> b!4301156 (= condMapEmpty!20379 (= (arr!7264 (_values!4820 (v!41951 (underlying!9307 (v!41952 (underlying!9308 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48092)) mapDefault!20379)))))

(assert (= (and start!413010 res!1762812) b!4301149))

(assert (= (and b!4301149 res!1762811) b!4301150))

(assert (= (and b!4301150 res!1762810) b!4301153))

(assert (= (and b!4301153 res!1762813) b!4301151))

(assert (= (and b!4301156 condMapEmpty!20379) mapIsEmpty!20379))

(assert (= (and b!4301156 (not condMapEmpty!20379)) mapNonEmpty!20379))

(assert (= b!4301147 b!4301156))

(assert (= b!4301148 b!4301147))

(assert (= b!4301152 b!4301148))

(assert (= (and b!4301155 ((_ is LongMap!4539) (v!41952 (underlying!9308 thiss!42308)))) b!4301152))

(assert (= b!4301154 b!4301155))

(assert (= (and start!413010 ((_ is HashMap!4445) thiss!42308)) b!4301154))

(declare-fun m!4893349 () Bool)

(assert (=> b!4301150 m!4893349))

(declare-fun m!4893351 () Bool)

(assert (=> b!4301150 m!4893351))

(declare-fun m!4893353 () Bool)

(assert (=> b!4301150 m!4893353))

(declare-fun m!4893355 () Bool)

(assert (=> b!4301149 m!4893355))

(declare-fun m!4893357 () Bool)

(assert (=> b!4301147 m!4893357))

(declare-fun m!4893359 () Bool)

(assert (=> b!4301147 m!4893359))

(declare-fun m!4893361 () Bool)

(assert (=> mapNonEmpty!20379 m!4893361))

(declare-fun m!4893363 () Bool)

(assert (=> b!4301151 m!4893363))

(check-sat (not b!4301156) b_and!339489 (not b_next!128819) (not b!4301149) (not b!4301147) (not mapNonEmpty!20379) (not b_next!128821) (not b!4301151) (not b!4301150) tp_is_empty!23303 b_and!339487)
(check-sat b_and!339487 b_and!339489 (not b_next!128821) (not b_next!128819))
(get-model)

(declare-fun d!1266740 () Bool)

(declare-fun res!1762818 () Bool)

(declare-fun e!2673677 () Bool)

(assert (=> d!1266740 (=> (not res!1762818) (not e!2673677))))

(assert (=> d!1266740 (= res!1762818 (valid!3523 (v!41952 (underlying!9308 thiss!42308))))))

(assert (=> d!1266740 (= (valid!3522 thiss!42308) e!2673677)))

(declare-fun b!4301161 () Bool)

(declare-fun res!1762819 () Bool)

(assert (=> b!4301161 (=> (not res!1762819) (not e!2673677))))

(declare-fun lambda!132034 () Int)

(declare-fun forall!8644 (List!48093 Int) Bool)

(assert (=> b!4301161 (= res!1762819 (forall!8644 (toList!2215 (map!9926 (v!41952 (underlying!9308 thiss!42308)))) lambda!132034))))

(declare-fun b!4301162 () Bool)

(declare-fun allKeysSameHashInMap!277 (ListLongMap!821 Hashable!4455) Bool)

(assert (=> b!4301162 (= e!2673677 (allKeysSameHashInMap!277 (map!9926 (v!41952 (underlying!9308 thiss!42308))) (hashF!6487 thiss!42308)))))

(assert (= (and d!1266740 res!1762818) b!4301161))

(assert (= (and b!4301161 res!1762819) b!4301162))

(assert (=> d!1266740 m!4893363))

(assert (=> b!4301161 m!4893351))

(declare-fun m!4893365 () Bool)

(assert (=> b!4301161 m!4893365))

(assert (=> b!4301162 m!4893351))

(assert (=> b!4301162 m!4893351))

(declare-fun m!4893367 () Bool)

(assert (=> b!4301162 m!4893367))

(assert (=> b!4301149 d!1266740))

(declare-fun bs!604022 () Bool)

(declare-fun b!4301194 () Bool)

(assert (= bs!604022 (and b!4301194 b!4301161)))

(declare-fun lambda!132037 () Int)

(assert (=> bs!604022 (= lambda!132037 lambda!132034)))

(declare-fun b!4301185 () Bool)

(declare-fun e!2673698 () Bool)

(declare-fun call!296609 () Bool)

(assert (=> b!4301185 (= e!2673698 call!296609)))

(declare-fun b!4301186 () Bool)

(declare-datatypes ((Unit!66942 0))(
  ( (Unit!66943) )
))
(declare-fun e!2673694 () Unit!66942)

(declare-fun lt!1523258 () Unit!66942)

(assert (=> b!4301186 (= e!2673694 lt!1523258)))

(declare-fun lt!1523254 () ListLongMap!821)

(declare-fun call!296606 () ListLongMap!821)

(assert (=> b!4301186 (= lt!1523254 call!296606)))

(declare-fun lemmaInGenericMapThenInLongMap!110 (ListLongMap!821 K!9094 Hashable!4455) Unit!66942)

(assert (=> b!4301186 (= lt!1523258 (lemmaInGenericMapThenInLongMap!110 lt!1523254 key!2048 (hashF!6487 thiss!42308)))))

(declare-fun res!1762826 () Bool)

(declare-fun call!296605 () Bool)

(assert (=> b!4301186 (= res!1762826 call!296605)))

(assert (=> b!4301186 (=> (not res!1762826) (not e!2673698))))

(assert (=> b!4301186 e!2673698))

(declare-fun call!296610 () List!48092)

(declare-fun call!296608 () (_ BitVec 64))

(declare-fun bm!296600 () Bool)

(declare-fun c!731596 () Bool)

(declare-fun apply!10881 (ListLongMap!821 (_ BitVec 64)) List!48092)

(assert (=> bm!296600 (= call!296610 (apply!10881 (ite c!731596 lt!1523254 call!296606) call!296608))))

(declare-fun bm!296601 () Bool)

(declare-datatypes ((Option!10168 0))(
  ( (None!10167) (Some!10167 (v!41953 tuple2!45982)) )
))
(declare-fun call!296607 () Option!10168)

(declare-fun getPair!110 (List!48092 K!9094) Option!10168)

(assert (=> bm!296601 (= call!296607 (getPair!110 call!296610 key!2048))))

(declare-fun b!4301187 () Bool)

(declare-fun e!2673697 () Unit!66942)

(declare-fun Unit!66944 () Unit!66942)

(assert (=> b!4301187 (= e!2673697 Unit!66944)))

(declare-fun bm!296602 () Bool)

(declare-fun hash!844 (Hashable!4455 K!9094) (_ BitVec 64))

(assert (=> bm!296602 (= call!296608 (hash!844 (hashF!6487 thiss!42308) key!2048))))

(declare-fun bm!296603 () Bool)

(declare-fun isDefined!7477 (Option!10168) Bool)

(assert (=> bm!296603 (= call!296609 (isDefined!7477 call!296607))))

(declare-fun b!4301188 () Bool)

(declare-fun e!2673692 () Unit!66942)

(declare-fun Unit!66945 () Unit!66942)

(assert (=> b!4301188 (= e!2673692 Unit!66945)))

(declare-fun d!1266742 () Bool)

(declare-fun lt!1523242 () Bool)

(declare-fun contains!9887 (ListMap!1503 K!9094) Bool)

(assert (=> d!1266742 (= lt!1523242 (contains!9887 (map!9927 thiss!42308) key!2048))))

(declare-fun e!2673693 () Bool)

(assert (=> d!1266742 (= lt!1523242 e!2673693)))

(declare-fun res!1762827 () Bool)

(assert (=> d!1266742 (=> (not res!1762827) (not e!2673693))))

(declare-fun lt!1523247 () (_ BitVec 64))

(declare-fun contains!9888 (MutLongMap!4539 (_ BitVec 64)) Bool)

(assert (=> d!1266742 (= res!1762827 (contains!9888 (v!41952 (underlying!9308 thiss!42308)) lt!1523247))))

(declare-fun lt!1523246 () Unit!66942)

(assert (=> d!1266742 (= lt!1523246 e!2673694)))

(declare-fun extractMap!277 (List!48093) ListMap!1503)

(assert (=> d!1266742 (= c!731596 (contains!9887 (extractMap!277 (toList!2215 (map!9926 (v!41952 (underlying!9308 thiss!42308))))) key!2048))))

(declare-fun lt!1523245 () Unit!66942)

(declare-fun e!2673696 () Unit!66942)

(assert (=> d!1266742 (= lt!1523245 e!2673696)))

(declare-fun c!731597 () Bool)

(assert (=> d!1266742 (= c!731597 (contains!9888 (v!41952 (underlying!9308 thiss!42308)) lt!1523247))))

(assert (=> d!1266742 (= lt!1523247 (hash!844 (hashF!6487 thiss!42308) key!2048))))

(assert (=> d!1266742 (valid!3522 thiss!42308)))

(assert (=> d!1266742 (= (contains!9886 thiss!42308 key!2048) lt!1523242)))

(declare-fun b!4301189 () Bool)

(declare-fun apply!10882 (MutLongMap!4539 (_ BitVec 64)) List!48092)

(assert (=> b!4301189 (= e!2673693 (isDefined!7477 (getPair!110 (apply!10882 (v!41952 (underlying!9308 thiss!42308)) lt!1523247) key!2048)))))

(declare-fun b!4301190 () Bool)

(assert (=> b!4301190 (= e!2673694 e!2673692)))

(declare-fun res!1762828 () Bool)

(assert (=> b!4301190 (= res!1762828 call!296605)))

(declare-fun e!2673695 () Bool)

(assert (=> b!4301190 (=> (not res!1762828) (not e!2673695))))

(declare-fun c!731595 () Bool)

(assert (=> b!4301190 (= c!731595 e!2673695)))

(declare-fun b!4301191 () Bool)

(declare-fun Unit!66946 () Unit!66942)

(assert (=> b!4301191 (= e!2673696 Unit!66946)))

(declare-fun bm!296604 () Bool)

(declare-fun contains!9889 (ListLongMap!821 (_ BitVec 64)) Bool)

(assert (=> bm!296604 (= call!296605 (contains!9889 (ite c!731596 lt!1523254 call!296606) call!296608))))

(declare-fun b!4301192 () Bool)

(assert (=> b!4301192 false))

(declare-fun lt!1523255 () Unit!66942)

(declare-fun lt!1523248 () Unit!66942)

(assert (=> b!4301192 (= lt!1523255 lt!1523248)))

(declare-fun lt!1523259 () List!48093)

(declare-fun lt!1523243 () List!48092)

(declare-fun contains!9890 (List!48093 tuple2!45984) Bool)

(assert (=> b!4301192 (contains!9890 lt!1523259 (tuple2!45985 lt!1523247 lt!1523243))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!116 (List!48093 (_ BitVec 64) List!48092) Unit!66942)

(assert (=> b!4301192 (= lt!1523248 (lemmaGetValueByKeyImpliesContainsTuple!116 lt!1523259 lt!1523247 lt!1523243))))

(assert (=> b!4301192 (= lt!1523243 (apply!10882 (v!41952 (underlying!9308 thiss!42308)) lt!1523247))))

(assert (=> b!4301192 (= lt!1523259 (toList!2215 (map!9926 (v!41952 (underlying!9308 thiss!42308)))))))

(declare-fun lt!1523251 () Unit!66942)

(declare-fun lt!1523244 () Unit!66942)

(assert (=> b!4301192 (= lt!1523251 lt!1523244)))

(declare-fun lt!1523252 () List!48093)

(declare-datatypes ((Option!10169 0))(
  ( (None!10168) (Some!10168 (v!41954 List!48092)) )
))
(declare-fun isDefined!7478 (Option!10169) Bool)

(declare-fun getValueByKey!217 (List!48093 (_ BitVec 64)) Option!10169)

(assert (=> b!4301192 (isDefined!7478 (getValueByKey!217 lt!1523252 lt!1523247))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!144 (List!48093 (_ BitVec 64)) Unit!66942)

(assert (=> b!4301192 (= lt!1523244 (lemmaContainsKeyImpliesGetValueByKeyDefined!144 lt!1523252 lt!1523247))))

(assert (=> b!4301192 (= lt!1523252 (toList!2215 (map!9926 (v!41952 (underlying!9308 thiss!42308)))))))

(declare-fun lt!1523249 () Unit!66942)

(declare-fun lt!1523257 () Unit!66942)

(assert (=> b!4301192 (= lt!1523249 lt!1523257)))

(declare-fun lt!1523250 () List!48093)

(declare-fun containsKey!242 (List!48093 (_ BitVec 64)) Bool)

(assert (=> b!4301192 (containsKey!242 lt!1523250 lt!1523247)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!111 (List!48093 (_ BitVec 64)) Unit!66942)

(assert (=> b!4301192 (= lt!1523257 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!111 lt!1523250 lt!1523247))))

(assert (=> b!4301192 (= lt!1523250 (toList!2215 (map!9926 (v!41952 (underlying!9308 thiss!42308)))))))

(declare-fun Unit!66947 () Unit!66942)

(assert (=> b!4301192 (= e!2673697 Unit!66947)))

(declare-fun b!4301193 () Bool)

(assert (=> b!4301193 (= e!2673695 call!296609)))

(declare-fun forallContained!1472 (List!48093 Int tuple2!45984) Unit!66942)

(assert (=> b!4301194 (= e!2673696 (forallContained!1472 (toList!2215 (map!9926 (v!41952 (underlying!9308 thiss!42308)))) lambda!132037 (tuple2!45985 lt!1523247 (apply!10882 (v!41952 (underlying!9308 thiss!42308)) lt!1523247))))))

(declare-fun c!731594 () Bool)

(assert (=> b!4301194 (= c!731594 (not (contains!9890 (toList!2215 (map!9926 (v!41952 (underlying!9308 thiss!42308)))) (tuple2!45985 lt!1523247 (apply!10882 (v!41952 (underlying!9308 thiss!42308)) lt!1523247)))))))

(declare-fun lt!1523253 () Unit!66942)

(assert (=> b!4301194 (= lt!1523253 e!2673697)))

(declare-fun bm!296605 () Bool)

(assert (=> bm!296605 (= call!296606 (map!9926 (v!41952 (underlying!9308 thiss!42308))))))

(declare-fun b!4301195 () Bool)

(assert (=> b!4301195 false))

(declare-fun lt!1523240 () Unit!66942)

(declare-fun lt!1523256 () Unit!66942)

(assert (=> b!4301195 (= lt!1523240 lt!1523256)))

(declare-fun lt!1523241 () ListLongMap!821)

(assert (=> b!4301195 (contains!9887 (extractMap!277 (toList!2215 lt!1523241)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!110 (ListLongMap!821 K!9094 Hashable!4455) Unit!66942)

(assert (=> b!4301195 (= lt!1523256 (lemmaInLongMapThenInGenericMap!110 lt!1523241 key!2048 (hashF!6487 thiss!42308)))))

(assert (=> b!4301195 (= lt!1523241 call!296606)))

(declare-fun Unit!66948 () Unit!66942)

(assert (=> b!4301195 (= e!2673692 Unit!66948)))

(assert (= (and d!1266742 c!731597) b!4301194))

(assert (= (and d!1266742 (not c!731597)) b!4301191))

(assert (= (and b!4301194 c!731594) b!4301192))

(assert (= (and b!4301194 (not c!731594)) b!4301187))

(assert (= (and d!1266742 c!731596) b!4301186))

(assert (= (and d!1266742 (not c!731596)) b!4301190))

(assert (= (and b!4301186 res!1762826) b!4301185))

(assert (= (and b!4301190 res!1762828) b!4301193))

(assert (= (and b!4301190 c!731595) b!4301195))

(assert (= (and b!4301190 (not c!731595)) b!4301188))

(assert (= (or b!4301186 b!4301185 b!4301190 b!4301193) bm!296602))

(assert (= (or b!4301186 b!4301190 b!4301193 b!4301195) bm!296605))

(assert (= (or b!4301185 b!4301193) bm!296600))

(assert (= (or b!4301186 b!4301190) bm!296604))

(assert (= (or b!4301185 b!4301193) bm!296601))

(assert (= (or b!4301185 b!4301193) bm!296603))

(assert (= (and d!1266742 res!1762827) b!4301189))

(declare-fun m!4893369 () Bool)

(assert (=> b!4301189 m!4893369))

(assert (=> b!4301189 m!4893369))

(declare-fun m!4893371 () Bool)

(assert (=> b!4301189 m!4893371))

(assert (=> b!4301189 m!4893371))

(declare-fun m!4893373 () Bool)

(assert (=> b!4301189 m!4893373))

(declare-fun m!4893375 () Bool)

(assert (=> bm!296601 m!4893375))

(declare-fun m!4893377 () Bool)

(assert (=> bm!296600 m!4893377))

(declare-fun m!4893379 () Bool)

(assert (=> b!4301192 m!4893379))

(assert (=> b!4301192 m!4893379))

(declare-fun m!4893381 () Bool)

(assert (=> b!4301192 m!4893381))

(assert (=> b!4301192 m!4893369))

(declare-fun m!4893383 () Bool)

(assert (=> b!4301192 m!4893383))

(declare-fun m!4893385 () Bool)

(assert (=> b!4301192 m!4893385))

(declare-fun m!4893387 () Bool)

(assert (=> b!4301192 m!4893387))

(declare-fun m!4893389 () Bool)

(assert (=> b!4301192 m!4893389))

(declare-fun m!4893391 () Bool)

(assert (=> b!4301192 m!4893391))

(assert (=> b!4301192 m!4893351))

(declare-fun m!4893393 () Bool)

(assert (=> b!4301195 m!4893393))

(assert (=> b!4301195 m!4893393))

(declare-fun m!4893395 () Bool)

(assert (=> b!4301195 m!4893395))

(declare-fun m!4893397 () Bool)

(assert (=> b!4301195 m!4893397))

(declare-fun m!4893399 () Bool)

(assert (=> bm!296604 m!4893399))

(assert (=> b!4301194 m!4893351))

(assert (=> b!4301194 m!4893369))

(declare-fun m!4893401 () Bool)

(assert (=> b!4301194 m!4893401))

(declare-fun m!4893403 () Bool)

(assert (=> b!4301194 m!4893403))

(declare-fun m!4893405 () Bool)

(assert (=> bm!296602 m!4893405))

(assert (=> d!1266742 m!4893353))

(declare-fun m!4893407 () Bool)

(assert (=> d!1266742 m!4893407))

(declare-fun m!4893409 () Bool)

(assert (=> d!1266742 m!4893409))

(assert (=> d!1266742 m!4893407))

(assert (=> d!1266742 m!4893355))

(assert (=> d!1266742 m!4893351))

(assert (=> d!1266742 m!4893405))

(declare-fun m!4893411 () Bool)

(assert (=> d!1266742 m!4893411))

(assert (=> d!1266742 m!4893353))

(declare-fun m!4893413 () Bool)

(assert (=> d!1266742 m!4893413))

(declare-fun m!4893415 () Bool)

(assert (=> b!4301186 m!4893415))

(declare-fun m!4893417 () Bool)

(assert (=> bm!296603 m!4893417))

(assert (=> bm!296605 m!4893351))

(assert (=> b!4301150 d!1266742))

(declare-fun d!1266744 () Bool)

(declare-fun map!9928 (LongMapFixedSize!9078) ListLongMap!821)

(assert (=> d!1266744 (= (map!9926 (v!41952 (underlying!9308 thiss!42308))) (map!9928 (v!41951 (underlying!9307 (v!41952 (underlying!9308 thiss!42308))))))))

(declare-fun bs!604023 () Bool)

(assert (= bs!604023 d!1266744))

(declare-fun m!4893419 () Bool)

(assert (=> bs!604023 m!4893419))

(assert (=> b!4301150 d!1266744))

(declare-fun d!1266746 () Bool)

(declare-fun lt!1523262 () ListMap!1503)

(declare-fun invariantList!549 (List!48092) Bool)

(assert (=> d!1266746 (invariantList!549 (toList!2216 lt!1523262))))

(assert (=> d!1266746 (= lt!1523262 (extractMap!277 (toList!2215 (map!9926 (v!41952 (underlying!9308 thiss!42308))))))))

(assert (=> d!1266746 (valid!3522 thiss!42308)))

(assert (=> d!1266746 (= (map!9927 thiss!42308) lt!1523262)))

(declare-fun bs!604024 () Bool)

(assert (= bs!604024 d!1266746))

(declare-fun m!4893421 () Bool)

(assert (=> bs!604024 m!4893421))

(assert (=> bs!604024 m!4893351))

(assert (=> bs!604024 m!4893407))

(assert (=> bs!604024 m!4893355))

(assert (=> b!4301150 d!1266746))

(declare-fun d!1266748 () Bool)

(declare-fun valid!3524 (LongMapFixedSize!9078) Bool)

(assert (=> d!1266748 (= (valid!3523 (v!41952 (underlying!9308 thiss!42308))) (valid!3524 (v!41951 (underlying!9307 (v!41952 (underlying!9308 thiss!42308))))))))

(declare-fun bs!604025 () Bool)

(assert (= bs!604025 d!1266748))

(declare-fun m!4893423 () Bool)

(assert (=> bs!604025 m!4893423))

(assert (=> b!4301151 d!1266748))

(declare-fun d!1266750 () Bool)

(assert (=> d!1266750 (= (array_inv!5209 (_keys!4839 (v!41951 (underlying!9307 (v!41952 (underlying!9308 thiss!42308)))))) (bvsge (size!35302 (_keys!4839 (v!41951 (underlying!9307 (v!41952 (underlying!9308 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4301147 d!1266750))

(declare-fun d!1266752 () Bool)

(assert (=> d!1266752 (= (array_inv!5210 (_values!4820 (v!41951 (underlying!9307 (v!41952 (underlying!9308 thiss!42308)))))) (bvsge (size!35303 (_values!4820 (v!41951 (underlying!9307 (v!41952 (underlying!9308 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4301147 d!1266752))

(declare-fun b!4301203 () Bool)

(declare-fun e!2673704 () Bool)

(declare-fun tp_is_empty!23305 () Bool)

(declare-fun tp!1321582 () Bool)

(assert (=> b!4301203 (= e!2673704 (and tp_is_empty!23303 tp_is_empty!23305 tp!1321582))))

(declare-fun condMapEmpty!20382 () Bool)

(declare-fun mapDefault!20382 () List!48092)

(assert (=> mapNonEmpty!20379 (= condMapEmpty!20382 (= mapRest!20379 ((as const (Array (_ BitVec 32) List!48092)) mapDefault!20382)))))

(declare-fun mapRes!20382 () Bool)

(assert (=> mapNonEmpty!20379 (= tp!1321567 (and e!2673704 mapRes!20382))))

(declare-fun b!4301202 () Bool)

(declare-fun e!2673703 () Bool)

(declare-fun tp!1321580 () Bool)

(assert (=> b!4301202 (= e!2673703 (and tp_is_empty!23303 tp_is_empty!23305 tp!1321580))))

(declare-fun mapNonEmpty!20382 () Bool)

(declare-fun tp!1321581 () Bool)

(assert (=> mapNonEmpty!20382 (= mapRes!20382 (and tp!1321581 e!2673703))))

(declare-fun mapKey!20382 () (_ BitVec 32))

(declare-fun mapRest!20382 () (Array (_ BitVec 32) List!48092))

(declare-fun mapValue!20382 () List!48092)

(assert (=> mapNonEmpty!20382 (= mapRest!20379 (store mapRest!20382 mapKey!20382 mapValue!20382))))

(declare-fun mapIsEmpty!20382 () Bool)

(assert (=> mapIsEmpty!20382 mapRes!20382))

(assert (= (and mapNonEmpty!20379 condMapEmpty!20382) mapIsEmpty!20382))

(assert (= (and mapNonEmpty!20379 (not condMapEmpty!20382)) mapNonEmpty!20382))

(assert (= (and mapNonEmpty!20382 ((_ is Cons!47968) mapValue!20382)) b!4301202))

(assert (= (and mapNonEmpty!20379 ((_ is Cons!47968) mapDefault!20382)) b!4301203))

(declare-fun m!4893425 () Bool)

(assert (=> mapNonEmpty!20382 m!4893425))

(declare-fun b!4301208 () Bool)

(declare-fun e!2673707 () Bool)

(declare-fun tp!1321585 () Bool)

(assert (=> b!4301208 (= e!2673707 (and tp_is_empty!23303 tp_is_empty!23305 tp!1321585))))

(assert (=> mapNonEmpty!20379 (= tp!1321568 e!2673707)))

(assert (= (and mapNonEmpty!20379 ((_ is Cons!47968) mapValue!20379)) b!4301208))

(declare-fun tp!1321586 () Bool)

(declare-fun e!2673708 () Bool)

(declare-fun b!4301209 () Bool)

(assert (=> b!4301209 (= e!2673708 (and tp_is_empty!23303 tp_is_empty!23305 tp!1321586))))

(assert (=> b!4301156 (= tp!1321570 e!2673708)))

(assert (= (and b!4301156 ((_ is Cons!47968) mapDefault!20379)) b!4301209))

(declare-fun b!4301210 () Bool)

(declare-fun tp!1321587 () Bool)

(declare-fun e!2673709 () Bool)

(assert (=> b!4301210 (= e!2673709 (and tp_is_empty!23303 tp_is_empty!23305 tp!1321587))))

(assert (=> b!4301147 (= tp!1321572 e!2673709)))

(assert (= (and b!4301147 ((_ is Cons!47968) (zeroValue!4798 (v!41951 (underlying!9307 (v!41952 (underlying!9308 thiss!42308))))))) b!4301210))

(declare-fun b!4301211 () Bool)

(declare-fun tp!1321588 () Bool)

(declare-fun e!2673710 () Bool)

(assert (=> b!4301211 (= e!2673710 (and tp_is_empty!23303 tp_is_empty!23305 tp!1321588))))

(assert (=> b!4301147 (= tp!1321571 e!2673710)))

(assert (= (and b!4301147 ((_ is Cons!47968) (minValue!4798 (v!41951 (underlying!9307 (v!41952 (underlying!9308 thiss!42308))))))) b!4301211))

(check-sat (not bm!296604) (not b_next!128819) (not d!1266740) (not b!4301202) (not d!1266744) (not d!1266746) (not d!1266742) (not b!4301161) (not bm!296601) tp_is_empty!23305 (not b!4301195) (not b!4301211) b_and!339489 (not bm!296605) (not b!4301186) (not b!4301209) (not bm!296602) (not b!4301162) (not b!4301203) (not bm!296600) (not d!1266748) (not b!4301194) tp_is_empty!23303 b_and!339487 (not bm!296603) (not mapNonEmpty!20382) (not b_next!128821) (not b!4301192) (not b!4301210) (not b!4301208) (not b!4301189))
(check-sat b_and!339487 b_and!339489 (not b_next!128821) (not b_next!128819))
