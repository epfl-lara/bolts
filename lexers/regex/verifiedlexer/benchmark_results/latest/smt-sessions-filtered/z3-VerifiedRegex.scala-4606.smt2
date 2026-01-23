; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242038 () Bool)

(assert start!242038)

(declare-fun b!2480223 () Bool)

(declare-fun b_free!72185 () Bool)

(declare-fun b_next!72889 () Bool)

(assert (=> b!2480223 (= b_free!72185 (not b_next!72889))))

(declare-fun tp!793768 () Bool)

(declare-fun b_and!188431 () Bool)

(assert (=> b!2480223 (= tp!793768 b_and!188431)))

(declare-fun b!2480237 () Bool)

(declare-fun b_free!72187 () Bool)

(declare-fun b_next!72891 () Bool)

(assert (=> b!2480237 (= b_free!72187 (not b_next!72891))))

(declare-fun tp!793770 () Bool)

(declare-fun b_and!188433 () Bool)

(assert (=> b!2480237 (= tp!793770 b_and!188433)))

(declare-fun b!2480218 () Bool)

(declare-fun res!1049908 () Bool)

(declare-fun e!1574145 () Bool)

(assert (=> b!2480218 (=> (not res!1049908) (not e!1574145))))

(declare-datatypes ((V!5617 0))(
  ( (V!5618 (val!8807 Int)) )
))
(declare-datatypes ((K!5415 0))(
  ( (K!5416 (val!8808 Int)) )
))
(declare-datatypes ((tuple2!28660 0))(
  ( (tuple2!28661 (_1!16871 K!5415) (_2!16871 V!5617)) )
))
(declare-datatypes ((List!29151 0))(
  ( (Nil!29051) (Cons!29051 (h!34457 tuple2!28660) (t!210808 List!29151)) )
))
(declare-datatypes ((tuple2!28662 0))(
  ( (tuple2!28663 (_1!16872 (_ BitVec 64)) (_2!16872 List!29151)) )
))
(declare-datatypes ((List!29152 0))(
  ( (Nil!29052) (Cons!29052 (h!34458 tuple2!28662) (t!210809 List!29152)) )
))
(declare-datatypes ((ListLongMap!481 0))(
  ( (ListLongMap!482 (toList!1536 List!29152)) )
))
(declare-fun lt!887292 () ListLongMap!481)

(declare-datatypes ((Unit!42505 0))(
  ( (Unit!42506) )
))
(declare-datatypes ((Hashable!3242 0))(
  ( (HashableExt!3241 (__x!18902 Int)) )
))
(declare-datatypes ((array!11785 0))(
  ( (array!11786 (arr!5254 (Array (_ BitVec 32) List!29151)) (size!22673 (_ BitVec 32))) )
))
(declare-datatypes ((array!11787 0))(
  ( (array!11788 (arr!5255 (Array (_ BitVec 32) (_ BitVec 64))) (size!22674 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6664 0))(
  ( (LongMapFixedSize!6665 (defaultEntry!3706 Int) (mask!8487 (_ BitVec 32)) (extraKeys!3580 (_ BitVec 32)) (zeroValue!3590 List!29151) (minValue!3590 List!29151) (_size!6711 (_ BitVec 32)) (_keys!3629 array!11787) (_values!3612 array!11785) (_vacant!3393 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13145 0))(
  ( (Cell!13146 (v!31376 LongMapFixedSize!6664)) )
))
(declare-datatypes ((MutLongMap!3332 0))(
  ( (LongMap!3332 (underlying!6871 Cell!13145)) (MutLongMapExt!3331 (__x!18903 Int)) )
))
(declare-datatypes ((Cell!13147 0))(
  ( (Cell!13148 (v!31377 MutLongMap!3332)) )
))
(declare-datatypes ((MutableMap!3242 0))(
  ( (MutableMapExt!3241 (__x!18904 Int)) (HashMap!3242 (underlying!6872 Cell!13147) (hashF!5200 Hashable!3242) (_size!6712 (_ BitVec 32)) (defaultValue!3404 Int)) )
))
(declare-datatypes ((tuple2!28664 0))(
  ( (tuple2!28665 (_1!16873 Unit!42505) (_2!16873 MutableMap!3242)) )
))
(declare-fun lt!887274 () tuple2!28664)

(declare-fun allKeysSameHashInMap!151 (ListLongMap!481 Hashable!3242) Bool)

(assert (=> b!2480218 (= res!1049908 (allKeysSameHashInMap!151 lt!887292 (hashF!5200 (_2!16873 lt!887274))))))

(declare-fun b!2480219 () Bool)

(declare-fun e!1574142 () Bool)

(declare-fun e!1574146 () Bool)

(assert (=> b!2480219 (= e!1574142 e!1574146)))

(declare-fun b!2480220 () Bool)

(declare-fun e!1574139 () Bool)

(declare-fun e!1574147 () Bool)

(assert (=> b!2480220 (= e!1574139 e!1574147)))

(declare-fun res!1049909 () Bool)

(assert (=> b!2480220 (=> res!1049909 e!1574147)))

(declare-fun lt!887288 () (_ BitVec 64))

(declare-fun lt!887277 () (_ BitVec 64))

(assert (=> b!2480220 (= res!1049909 (not (= lt!887288 lt!887277)))))

(declare-fun key!2246 () K!5415)

(declare-fun hash!671 (Hashable!3242 K!5415) (_ BitVec 64))

(assert (=> b!2480220 (= lt!887288 (hash!671 (hashF!5200 (_2!16873 lt!887274)) key!2246))))

(declare-fun b!2480221 () Bool)

(declare-fun e!1574151 () Bool)

(declare-fun tp!793772 () Bool)

(declare-fun mapRes!15454 () Bool)

(assert (=> b!2480221 (= e!1574151 (and tp!793772 mapRes!15454))))

(declare-fun condMapEmpty!15454 () Bool)

(declare-fun thiss!42540 () MutableMap!3242)

(declare-fun mapDefault!15454 () List!29151)

(assert (=> b!2480221 (= condMapEmpty!15454 (= (arr!5254 (_values!3612 (v!31376 (underlying!6871 (v!31377 (underlying!6872 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29151)) mapDefault!15454)))))

(declare-fun b!2480222 () Bool)

(declare-fun e!1574143 () Bool)

(declare-fun lt!887279 () ListLongMap!481)

(assert (=> b!2480222 (= e!1574143 (allKeysSameHashInMap!151 lt!887279 (hashF!5200 (_2!16873 lt!887274))))))

(declare-fun tp!793771 () Bool)

(declare-fun tp!793769 () Bool)

(declare-fun e!1574149 () Bool)

(declare-fun array_inv!3767 (array!11787) Bool)

(declare-fun array_inv!3768 (array!11785) Bool)

(assert (=> b!2480223 (= e!1574149 (and tp!793768 tp!793769 tp!793771 (array_inv!3767 (_keys!3629 (v!31376 (underlying!6871 (v!31377 (underlying!6872 thiss!42540)))))) (array_inv!3768 (_values!3612 (v!31376 (underlying!6871 (v!31377 (underlying!6872 thiss!42540)))))) e!1574151))))

(declare-fun b!2480224 () Bool)

(declare-fun res!1049905 () Bool)

(assert (=> b!2480224 (=> res!1049905 e!1574139)))

(declare-fun lt!887278 () ListLongMap!481)

(assert (=> b!2480224 (= res!1049905 (not (allKeysSameHashInMap!151 lt!887278 (hashF!5200 (_2!16873 lt!887274)))))))

(declare-fun mapNonEmpty!15454 () Bool)

(declare-fun tp!793767 () Bool)

(declare-fun tp!793766 () Bool)

(assert (=> mapNonEmpty!15454 (= mapRes!15454 (and tp!793767 tp!793766))))

(declare-fun mapValue!15454 () List!29151)

(declare-fun mapKey!15454 () (_ BitVec 32))

(declare-fun mapRest!15454 () (Array (_ BitVec 32) List!29151))

(assert (=> mapNonEmpty!15454 (= (arr!5254 (_values!3612 (v!31376 (underlying!6871 (v!31377 (underlying!6872 thiss!42540)))))) (store mapRest!15454 mapKey!15454 mapValue!15454))))

(declare-fun b!2480225 () Bool)

(declare-fun res!1049911 () Bool)

(assert (=> b!2480225 (=> res!1049911 e!1574139)))

(declare-datatypes ((ListMap!1021 0))(
  ( (ListMap!1022 (toList!1537 List!29151)) )
))
(declare-fun contains!5057 (ListMap!1021 K!5415) Bool)

(declare-fun extractMap!160 (List!29152) ListMap!1021)

(assert (=> b!2480225 (= res!1049911 (not (contains!5057 (extractMap!160 (toList!1536 lt!887278)) key!2246)))))

(declare-fun b!2480226 () Bool)

(declare-fun e!1574144 () Bool)

(declare-fun lt!887291 () MutLongMap!3332)

(get-info :version)

(assert (=> b!2480226 (= e!1574144 (and e!1574142 ((_ is LongMap!3332) lt!887291)))))

(assert (=> b!2480226 (= lt!887291 (v!31377 (underlying!6872 thiss!42540)))))

(declare-fun b!2480227 () Bool)

(declare-fun e!1574141 () Bool)

(assert (=> b!2480227 (= e!1574141 true)))

(declare-fun lambda!93838 () Int)

(declare-fun lt!887270 () tuple2!28662)

(declare-fun lt!887282 () Unit!42505)

(declare-fun forallContained!839 (List!29152 Int tuple2!28662) Unit!42505)

(assert (=> b!2480227 (= lt!887282 (forallContained!839 (toList!1536 lt!887278) lambda!93838 lt!887270))))

(declare-fun b!2480228 () Bool)

(declare-fun lt!887281 () ListMap!1021)

(assert (=> b!2480228 (= e!1574145 (contains!5057 lt!887281 key!2246))))

(declare-fun b!2480229 () Bool)

(assert (=> b!2480229 (= e!1574147 e!1574141)))

(declare-fun res!1049917 () Bool)

(assert (=> b!2480229 (=> res!1049917 e!1574141)))

(declare-fun lt!887285 () List!29151)

(declare-fun lt!887287 () List!29151)

(declare-fun removePairForKey!58 (List!29151 K!5415) List!29151)

(assert (=> b!2480229 (= res!1049917 (not (= lt!887285 (removePairForKey!58 lt!887287 key!2246))))))

(declare-fun lt!887273 () Unit!42505)

(assert (=> b!2480229 (= lt!887273 (forallContained!839 (toList!1536 lt!887278) lambda!93838 lt!887270))))

(declare-fun contains!5058 (List!29152 tuple2!28662) Bool)

(assert (=> b!2480229 (contains!5058 (toList!1536 lt!887278) lt!887270)))

(assert (=> b!2480229 (= lt!887270 (tuple2!28663 lt!887277 lt!887287))))

(declare-fun lt!887275 () Unit!42505)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!71 (List!29152 (_ BitVec 64) List!29151) Unit!42505)

(assert (=> b!2480229 (= lt!887275 (lemmaGetValueByKeyImpliesContainsTuple!71 (toList!1536 lt!887278) lt!887277 lt!887287))))

(declare-fun apply!6895 (ListLongMap!481 (_ BitVec 64)) List!29151)

(assert (=> b!2480229 (= lt!887287 (apply!6895 lt!887278 lt!887277))))

(declare-fun contains!5059 (ListLongMap!481 (_ BitVec 64)) Bool)

(assert (=> b!2480229 (contains!5059 lt!887278 lt!887288)))

(declare-fun lt!887290 () Unit!42505)

(declare-fun lemmaInGenMapThenLongMapContainsHash!31 (ListLongMap!481 K!5415 Hashable!3242) Unit!42505)

(assert (=> b!2480229 (= lt!887290 (lemmaInGenMapThenLongMapContainsHash!31 lt!887278 key!2246 (hashF!5200 (_2!16873 lt!887274))))))

(declare-fun b!2480230 () Bool)

(declare-fun e!1574140 () Bool)

(declare-fun e!1574150 () Bool)

(assert (=> b!2480230 (= e!1574140 (not e!1574150))))

(declare-fun res!1049907 () Bool)

(assert (=> b!2480230 (=> res!1049907 e!1574150)))

(declare-datatypes ((tuple2!28666 0))(
  ( (tuple2!28667 (_1!16874 Bool) (_2!16874 MutLongMap!3332)) )
))
(declare-fun lt!887276 () tuple2!28666)

(assert (=> b!2480230 (= res!1049907 (not (_1!16874 lt!887276)))))

(declare-fun noDuplicateKeys!68 (List!29151) Bool)

(assert (=> b!2480230 (noDuplicateKeys!68 lt!887285)))

(declare-fun lt!887289 () Unit!42505)

(declare-fun lt!887283 () List!29151)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!54 (List!29151 K!5415) Unit!42505)

(assert (=> b!2480230 (= lt!887289 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!54 lt!887283 key!2246))))

(declare-fun lt!887271 () Cell!13147)

(declare-fun Unit!42507 () Unit!42505)

(declare-fun Unit!42508 () Unit!42505)

(assert (=> b!2480230 (= lt!887274 (ite (_1!16874 lt!887276) (tuple2!28665 Unit!42507 (HashMap!3242 lt!887271 (hashF!5200 thiss!42540) (bvsub (_size!6712 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3404 thiss!42540))) (tuple2!28665 Unit!42508 (HashMap!3242 lt!887271 (hashF!5200 thiss!42540) (_size!6712 thiss!42540) (defaultValue!3404 thiss!42540)))))))

(assert (=> b!2480230 (= lt!887271 (Cell!13148 (_2!16874 lt!887276)))))

(declare-fun update!175 (MutLongMap!3332 (_ BitVec 64) List!29151) tuple2!28666)

(assert (=> b!2480230 (= lt!887276 (update!175 (v!31377 (underlying!6872 thiss!42540)) lt!887277 lt!887285))))

(assert (=> b!2480230 (= lt!887285 (removePairForKey!58 lt!887283 key!2246))))

(declare-fun map!6139 (MutableMap!3242) ListMap!1021)

(assert (=> b!2480230 (= lt!887281 (map!6139 thiss!42540))))

(declare-fun lt!887286 () Unit!42505)

(assert (=> b!2480230 (= lt!887286 (forallContained!839 (toList!1536 lt!887278) lambda!93838 (tuple2!28663 lt!887277 lt!887283)))))

(declare-fun map!6140 (MutLongMap!3332) ListLongMap!481)

(assert (=> b!2480230 (= lt!887278 (map!6140 (v!31377 (underlying!6872 thiss!42540))))))

(declare-fun apply!6896 (MutLongMap!3332 (_ BitVec 64)) List!29151)

(assert (=> b!2480230 (= lt!887283 (apply!6896 (v!31377 (underlying!6872 thiss!42540)) lt!887277))))

(assert (=> b!2480230 (= lt!887277 (hash!671 (hashF!5200 thiss!42540) key!2246))))

(declare-fun b!2480232 () Bool)

(declare-fun res!1049914 () Bool)

(assert (=> b!2480232 (=> (not res!1049914) (not e!1574145))))

(declare-fun valid!2543 (MutableMap!3242) Bool)

(assert (=> b!2480232 (= res!1049914 (valid!2543 (_2!16873 lt!887274)))))

(declare-fun b!2480233 () Bool)

(declare-fun res!1049910 () Bool)

(assert (=> b!2480233 (=> (not res!1049910) (not e!1574140))))

(assert (=> b!2480233 (= res!1049910 (valid!2543 thiss!42540))))

(declare-fun b!2480234 () Bool)

(assert (=> b!2480234 (= e!1574150 e!1574139)))

(declare-fun res!1049906 () Bool)

(assert (=> b!2480234 (=> res!1049906 e!1574139)))

(declare-fun forall!5957 (List!29152 Int) Bool)

(assert (=> b!2480234 (= res!1049906 (not (forall!5957 (toList!1536 lt!887278) lambda!93838)))))

(assert (=> b!2480234 e!1574145))

(declare-fun res!1049915 () Bool)

(assert (=> b!2480234 (=> (not res!1049915) (not e!1574145))))

(assert (=> b!2480234 (= res!1049915 (forall!5957 (toList!1536 lt!887292) lambda!93838))))

(assert (=> b!2480234 (= lt!887292 (map!6140 (v!31377 (underlying!6872 (_2!16873 lt!887274)))))))

(assert (=> b!2480234 e!1574143))

(declare-fun res!1049916 () Bool)

(assert (=> b!2480234 (=> (not res!1049916) (not e!1574143))))

(assert (=> b!2480234 (= res!1049916 (forall!5957 (toList!1536 lt!887279) lambda!93838))))

(declare-fun +!74 (ListLongMap!481 tuple2!28662) ListLongMap!481)

(assert (=> b!2480234 (= lt!887279 (+!74 lt!887278 (tuple2!28663 lt!887277 lt!887285)))))

(declare-fun lt!887284 () Unit!42505)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!45 (ListLongMap!481 (_ BitVec 64) List!29151 Hashable!3242) Unit!42505)

(assert (=> b!2480234 (= lt!887284 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!45 lt!887278 lt!887277 lt!887285 (hashF!5200 (_2!16873 lt!887274))))))

(declare-fun allKeysSameHash!55 (List!29151 (_ BitVec 64) Hashable!3242) Bool)

(assert (=> b!2480234 (allKeysSameHash!55 lt!887285 lt!887277 (hashF!5200 (_2!16873 lt!887274)))))

(declare-fun lt!887272 () Unit!42505)

(declare-fun lemmaRemovePairForKeyPreservesHash!49 (List!29151 K!5415 (_ BitVec 64) Hashable!3242) Unit!42505)

(assert (=> b!2480234 (= lt!887272 (lemmaRemovePairForKeyPreservesHash!49 lt!887283 key!2246 lt!887277 (hashF!5200 (_2!16873 lt!887274))))))

(assert (=> b!2480234 (allKeysSameHash!55 lt!887283 lt!887277 (hashF!5200 (_2!16873 lt!887274)))))

(declare-fun lt!887280 () Unit!42505)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!51 (List!29152 (_ BitVec 64) List!29151 Hashable!3242) Unit!42505)

(assert (=> b!2480234 (= lt!887280 (lemmaInLongMapAllKeySameHashThenForTuple!51 (toList!1536 lt!887278) lt!887277 lt!887283 (hashF!5200 (_2!16873 lt!887274))))))

(declare-fun b!2480235 () Bool)

(declare-fun res!1049913 () Bool)

(assert (=> b!2480235 (=> res!1049913 e!1574141)))

(assert (=> b!2480235 (= res!1049913 (not (forall!5957 (toList!1536 lt!887278) lambda!93838)))))

(declare-fun b!2480236 () Bool)

(assert (=> b!2480236 (= e!1574146 e!1574149)))

(declare-fun e!1574138 () Bool)

(assert (=> b!2480237 (= e!1574138 (and e!1574144 tp!793770))))

(declare-fun mapIsEmpty!15454 () Bool)

(assert (=> mapIsEmpty!15454 mapRes!15454))

(declare-fun res!1049918 () Bool)

(assert (=> start!242038 (=> (not res!1049918) (not e!1574140))))

(assert (=> start!242038 (= res!1049918 ((_ is HashMap!3242) thiss!42540))))

(assert (=> start!242038 e!1574140))

(assert (=> start!242038 e!1574138))

(declare-fun tp_is_empty!12187 () Bool)

(assert (=> start!242038 tp_is_empty!12187))

(declare-fun b!2480231 () Bool)

(declare-fun res!1049912 () Bool)

(assert (=> b!2480231 (=> (not res!1049912) (not e!1574140))))

(declare-fun contains!5060 (MutableMap!3242 K!5415) Bool)

(assert (=> b!2480231 (= res!1049912 (contains!5060 thiss!42540 key!2246))))

(assert (= (and start!242038 res!1049918) b!2480233))

(assert (= (and b!2480233 res!1049910) b!2480231))

(assert (= (and b!2480231 res!1049912) b!2480230))

(assert (= (and b!2480230 (not res!1049907)) b!2480234))

(assert (= (and b!2480234 res!1049916) b!2480222))

(assert (= (and b!2480234 res!1049915) b!2480218))

(assert (= (and b!2480218 res!1049908) b!2480232))

(assert (= (and b!2480232 res!1049914) b!2480228))

(assert (= (and b!2480234 (not res!1049906)) b!2480224))

(assert (= (and b!2480224 (not res!1049905)) b!2480225))

(assert (= (and b!2480225 (not res!1049911)) b!2480220))

(assert (= (and b!2480220 (not res!1049909)) b!2480229))

(assert (= (and b!2480229 (not res!1049917)) b!2480235))

(assert (= (and b!2480235 (not res!1049913)) b!2480227))

(assert (= (and b!2480221 condMapEmpty!15454) mapIsEmpty!15454))

(assert (= (and b!2480221 (not condMapEmpty!15454)) mapNonEmpty!15454))

(assert (= b!2480223 b!2480221))

(assert (= b!2480236 b!2480223))

(assert (= b!2480219 b!2480236))

(assert (= (and b!2480226 ((_ is LongMap!3332) (v!31377 (underlying!6872 thiss!42540)))) b!2480219))

(assert (= b!2480237 b!2480226))

(assert (= (and start!242038 ((_ is HashMap!3242) thiss!42540)) b!2480237))

(declare-fun m!2848143 () Bool)

(assert (=> b!2480220 m!2848143))

(declare-fun m!2848145 () Bool)

(assert (=> b!2480218 m!2848145))

(declare-fun m!2848147 () Bool)

(assert (=> b!2480233 m!2848147))

(declare-fun m!2848149 () Bool)

(assert (=> b!2480230 m!2848149))

(declare-fun m!2848151 () Bool)

(assert (=> b!2480230 m!2848151))

(declare-fun m!2848153 () Bool)

(assert (=> b!2480230 m!2848153))

(declare-fun m!2848155 () Bool)

(assert (=> b!2480230 m!2848155))

(declare-fun m!2848157 () Bool)

(assert (=> b!2480230 m!2848157))

(declare-fun m!2848159 () Bool)

(assert (=> b!2480230 m!2848159))

(declare-fun m!2848161 () Bool)

(assert (=> b!2480230 m!2848161))

(declare-fun m!2848163 () Bool)

(assert (=> b!2480230 m!2848163))

(declare-fun m!2848165 () Bool)

(assert (=> b!2480230 m!2848165))

(declare-fun m!2848167 () Bool)

(assert (=> b!2480223 m!2848167))

(declare-fun m!2848169 () Bool)

(assert (=> b!2480223 m!2848169))

(declare-fun m!2848171 () Bool)

(assert (=> b!2480227 m!2848171))

(declare-fun m!2848173 () Bool)

(assert (=> b!2480222 m!2848173))

(declare-fun m!2848175 () Bool)

(assert (=> b!2480232 m!2848175))

(declare-fun m!2848177 () Bool)

(assert (=> b!2480235 m!2848177))

(declare-fun m!2848179 () Bool)

(assert (=> mapNonEmpty!15454 m!2848179))

(declare-fun m!2848181 () Bool)

(assert (=> b!2480228 m!2848181))

(declare-fun m!2848183 () Bool)

(assert (=> b!2480224 m!2848183))

(declare-fun m!2848185 () Bool)

(assert (=> b!2480234 m!2848185))

(declare-fun m!2848187 () Bool)

(assert (=> b!2480234 m!2848187))

(declare-fun m!2848189 () Bool)

(assert (=> b!2480234 m!2848189))

(declare-fun m!2848191 () Bool)

(assert (=> b!2480234 m!2848191))

(declare-fun m!2848193 () Bool)

(assert (=> b!2480234 m!2848193))

(declare-fun m!2848195 () Bool)

(assert (=> b!2480234 m!2848195))

(declare-fun m!2848197 () Bool)

(assert (=> b!2480234 m!2848197))

(declare-fun m!2848199 () Bool)

(assert (=> b!2480234 m!2848199))

(declare-fun m!2848201 () Bool)

(assert (=> b!2480234 m!2848201))

(assert (=> b!2480234 m!2848177))

(declare-fun m!2848203 () Bool)

(assert (=> b!2480229 m!2848203))

(assert (=> b!2480229 m!2848171))

(declare-fun m!2848205 () Bool)

(assert (=> b!2480229 m!2848205))

(declare-fun m!2848207 () Bool)

(assert (=> b!2480229 m!2848207))

(declare-fun m!2848209 () Bool)

(assert (=> b!2480229 m!2848209))

(declare-fun m!2848211 () Bool)

(assert (=> b!2480229 m!2848211))

(declare-fun m!2848213 () Bool)

(assert (=> b!2480229 m!2848213))

(declare-fun m!2848215 () Bool)

(assert (=> b!2480225 m!2848215))

(assert (=> b!2480225 m!2848215))

(declare-fun m!2848217 () Bool)

(assert (=> b!2480225 m!2848217))

(declare-fun m!2848219 () Bool)

(assert (=> b!2480231 m!2848219))

(check-sat (not b!2480224) (not b!2480225) (not b!2480235) (not b!2480218) (not b!2480220) (not b_next!72891) (not b_next!72889) (not b!2480233) b_and!188431 (not b!2480222) b_and!188433 (not b!2480228) (not b!2480227) (not b!2480230) (not b!2480223) (not b!2480221) (not b!2480229) tp_is_empty!12187 (not mapNonEmpty!15454) (not b!2480231) (not b!2480234) (not b!2480232))
(check-sat b_and!188433 b_and!188431 (not b_next!72889) (not b_next!72891))
