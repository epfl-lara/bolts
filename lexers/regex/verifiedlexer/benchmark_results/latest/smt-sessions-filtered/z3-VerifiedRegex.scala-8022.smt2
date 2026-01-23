; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415198 () Bool)

(assert start!415198)

(declare-fun b!4316266 () Bool)

(declare-fun b_free!128859 () Bool)

(declare-fun b_next!129563 () Bool)

(assert (=> b!4316266 (= b_free!128859 (not b_next!129563))))

(declare-fun tp!1326144 () Bool)

(declare-fun b_and!340341 () Bool)

(assert (=> b!4316266 (= tp!1326144 b_and!340341)))

(declare-fun b!4316264 () Bool)

(declare-fun b_free!128861 () Bool)

(declare-fun b_next!129565 () Bool)

(assert (=> b!4316264 (= b_free!128861 (not b_next!129565))))

(declare-fun tp!1326147 () Bool)

(declare-fun b_and!340343 () Bool)

(assert (=> b!4316264 (= tp!1326147 b_and!340343)))

(declare-fun b!4316257 () Bool)

(declare-datatypes ((K!9559 0))(
  ( (K!9560 (val!15905 Int)) )
))
(declare-datatypes ((V!9761 0))(
  ( (V!9762 (val!15906 Int)) )
))
(declare-datatypes ((tuple2!47004 0))(
  ( (tuple2!47005 (_1!26784 K!9559) (_2!26784 V!9761)) )
))
(declare-datatypes ((List!48445 0))(
  ( (Nil!48321) (Cons!48321 (h!53773 tuple2!47004) (t!355294 List!48445)) )
))
(declare-fun e!2685070 () List!48445)

(assert (=> b!4316257 (= e!2685070 Nil!48321)))

(declare-fun b!4316258 () Bool)

(declare-fun e!2685072 () Bool)

(declare-fun e!2685064 () Bool)

(assert (=> b!4316258 (= e!2685072 e!2685064)))

(declare-fun res!1769132 () Bool)

(assert (=> b!4316258 (=> (not res!1769132) (not e!2685064))))

(declare-datatypes ((array!17100 0))(
  ( (array!17101 (arr!7635 (Array (_ BitVec 32) (_ BitVec 64))) (size!35674 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4641 0))(
  ( (HashableExt!4640 (__x!30200 Int)) )
))
(declare-datatypes ((array!17102 0))(
  ( (array!17103 (arr!7636 (Array (_ BitVec 32) List!48445)) (size!35675 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9450 0))(
  ( (LongMapFixedSize!9451 (defaultEntry!5110 Int) (mask!13316 (_ BitVec 32)) (extraKeys!4974 (_ BitVec 32)) (zeroValue!4984 List!48445) (minValue!4984 List!48445) (_size!9493 (_ BitVec 32)) (_keys!5025 array!17100) (_values!5006 array!17102) (_vacant!4786 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18709 0))(
  ( (Cell!18710 (v!42602 LongMapFixedSize!9450)) )
))
(declare-datatypes ((MutLongMap!4725 0))(
  ( (LongMap!4725 (underlying!9679 Cell!18709)) (MutLongMapExt!4724 (__x!30201 Int)) )
))
(declare-datatypes ((Cell!18711 0))(
  ( (Cell!18712 (v!42603 MutLongMap!4725)) )
))
(declare-datatypes ((MutableMap!4631 0))(
  ( (MutableMapExt!4630 (__x!30202 Int)) (HashMap!4631 (underlying!9680 Cell!18711) (hashF!6846 Hashable!4641) (_size!9494 (_ BitVec 32)) (defaultValue!4802 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4631)

(declare-fun key!2048 () K!9559)

(declare-fun contains!10331 (MutableMap!4631 K!9559) Bool)

(assert (=> b!4316258 (= res!1769132 (not (contains!10331 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!47006 0))(
  ( (tuple2!47007 (_1!26785 (_ BitVec 64)) (_2!26785 List!48445)) )
))
(declare-datatypes ((List!48446 0))(
  ( (Nil!48322) (Cons!48322 (h!53774 tuple2!47006) (t!355295 List!48446)) )
))
(declare-datatypes ((ListLongMap!1123 0))(
  ( (ListLongMap!1124 (toList!2509 List!48446)) )
))
(declare-fun lt!1535734 () ListLongMap!1123)

(declare-fun map!10338 (MutLongMap!4725) ListLongMap!1123)

(assert (=> b!4316258 (= lt!1535734 (map!10338 (v!42603 (underlying!9680 thiss!42308))))))

(declare-datatypes ((ListMap!1789 0))(
  ( (ListMap!1790 (toList!2510 List!48445)) )
))
(declare-fun lt!1535733 () ListMap!1789)

(declare-fun map!10339 (MutableMap!4631) ListMap!1789)

(assert (=> b!4316258 (= lt!1535733 (map!10339 thiss!42308))))

(declare-fun b!4316259 () Bool)

(declare-fun e!2685071 () Bool)

(declare-fun tp!1326146 () Bool)

(declare-fun mapRes!21067 () Bool)

(assert (=> b!4316259 (= e!2685071 (and tp!1326146 mapRes!21067))))

(declare-fun condMapEmpty!21067 () Bool)

(declare-fun mapDefault!21067 () List!48445)

(assert (=> b!4316259 (= condMapEmpty!21067 (= (arr!7636 (_values!5006 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48445)) mapDefault!21067)))))

(declare-fun b!4316260 () Bool)

(declare-fun e!2685067 () Bool)

(declare-fun e!2685069 () Bool)

(assert (=> b!4316260 (= e!2685067 e!2685069)))

(declare-fun mapNonEmpty!21067 () Bool)

(declare-fun tp!1326145 () Bool)

(declare-fun tp!1326148 () Bool)

(assert (=> mapNonEmpty!21067 (= mapRes!21067 (and tp!1326145 tp!1326148))))

(declare-fun mapKey!21067 () (_ BitVec 32))

(declare-fun mapRest!21067 () (Array (_ BitVec 32) List!48445))

(declare-fun mapValue!21067 () List!48445)

(assert (=> mapNonEmpty!21067 (= (arr!7636 (_values!5006 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308)))))) (store mapRest!21067 mapKey!21067 mapValue!21067))))

(declare-fun lt!1535735 () (_ BitVec 64))

(declare-fun b!4316261 () Bool)

(declare-fun v!9179 () V!9761)

(get-info :version)

(declare-datatypes ((tuple2!47008 0))(
  ( (tuple2!47009 (_1!26786 Bool) (_2!26786 MutLongMap!4725)) )
))
(declare-fun update!496 (MutLongMap!4725 (_ BitVec 64) List!48445) tuple2!47008)

(assert (=> b!4316261 (= e!2685064 (not ((_ is LongMap!4725) (_2!26786 (update!496 (v!42603 (underlying!9680 thiss!42308)) lt!1535735 (Cons!48321 (tuple2!47005 key!2048 v!9179) e!2685070))))))))

(declare-fun c!733754 () Bool)

(declare-fun contains!10332 (MutLongMap!4725 (_ BitVec 64)) Bool)

(assert (=> b!4316261 (= c!733754 (contains!10332 (v!42603 (underlying!9680 thiss!42308)) lt!1535735))))

(declare-fun hash!1122 (Hashable!4641 K!9559) (_ BitVec 64))

(assert (=> b!4316261 (= lt!1535735 (hash!1122 (hashF!6846 thiss!42308) key!2048))))

(declare-fun res!1769131 () Bool)

(assert (=> start!415198 (=> (not res!1769131) (not e!2685072))))

(assert (=> start!415198 (= res!1769131 ((_ is HashMap!4631) thiss!42308))))

(assert (=> start!415198 e!2685072))

(declare-fun e!2685073 () Bool)

(assert (=> start!415198 e!2685073))

(declare-fun tp_is_empty!23997 () Bool)

(assert (=> start!415198 tp_is_empty!23997))

(declare-fun tp_is_empty!23999 () Bool)

(assert (=> start!415198 tp_is_empty!23999))

(declare-fun b!4316262 () Bool)

(declare-fun apply!11097 (MutLongMap!4725 (_ BitVec 64)) List!48445)

(assert (=> b!4316262 (= e!2685070 (apply!11097 (v!42603 (underlying!9680 thiss!42308)) lt!1535735))))

(declare-fun b!4316263 () Bool)

(declare-fun e!2685068 () Bool)

(assert (=> b!4316263 (= e!2685069 e!2685068)))

(declare-fun mapIsEmpty!21067 () Bool)

(assert (=> mapIsEmpty!21067 mapRes!21067))

(declare-fun e!2685065 () Bool)

(assert (=> b!4316264 (= e!2685073 (and e!2685065 tp!1326147))))

(declare-fun b!4316265 () Bool)

(declare-fun res!1769130 () Bool)

(assert (=> b!4316265 (=> (not res!1769130) (not e!2685072))))

(declare-fun valid!3726 (MutableMap!4631) Bool)

(assert (=> b!4316265 (= res!1769130 (valid!3726 thiss!42308))))

(declare-fun tp!1326143 () Bool)

(declare-fun tp!1326149 () Bool)

(declare-fun array_inv!5491 (array!17100) Bool)

(declare-fun array_inv!5492 (array!17102) Bool)

(assert (=> b!4316266 (= e!2685068 (and tp!1326144 tp!1326143 tp!1326149 (array_inv!5491 (_keys!5025 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308)))))) (array_inv!5492 (_values!5006 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308)))))) e!2685071))))

(declare-fun b!4316267 () Bool)

(declare-fun lt!1535732 () MutLongMap!4725)

(assert (=> b!4316267 (= e!2685065 (and e!2685067 ((_ is LongMap!4725) lt!1535732)))))

(assert (=> b!4316267 (= lt!1535732 (v!42603 (underlying!9680 thiss!42308)))))

(assert (= (and start!415198 res!1769131) b!4316265))

(assert (= (and b!4316265 res!1769130) b!4316258))

(assert (= (and b!4316258 res!1769132) b!4316261))

(assert (= (and b!4316261 c!733754) b!4316262))

(assert (= (and b!4316261 (not c!733754)) b!4316257))

(assert (= (and b!4316259 condMapEmpty!21067) mapIsEmpty!21067))

(assert (= (and b!4316259 (not condMapEmpty!21067)) mapNonEmpty!21067))

(assert (= b!4316266 b!4316259))

(assert (= b!4316263 b!4316266))

(assert (= b!4316260 b!4316263))

(assert (= (and b!4316267 ((_ is LongMap!4725) (v!42603 (underlying!9680 thiss!42308)))) b!4316260))

(assert (= b!4316264 b!4316267))

(assert (= (and start!415198 ((_ is HashMap!4631) thiss!42308)) b!4316264))

(declare-fun m!4910155 () Bool)

(assert (=> mapNonEmpty!21067 m!4910155))

(declare-fun m!4910157 () Bool)

(assert (=> b!4316265 m!4910157))

(declare-fun m!4910159 () Bool)

(assert (=> b!4316262 m!4910159))

(declare-fun m!4910161 () Bool)

(assert (=> b!4316266 m!4910161))

(declare-fun m!4910163 () Bool)

(assert (=> b!4316266 m!4910163))

(declare-fun m!4910165 () Bool)

(assert (=> b!4316261 m!4910165))

(declare-fun m!4910167 () Bool)

(assert (=> b!4316261 m!4910167))

(declare-fun m!4910169 () Bool)

(assert (=> b!4316261 m!4910169))

(declare-fun m!4910171 () Bool)

(assert (=> b!4316258 m!4910171))

(declare-fun m!4910173 () Bool)

(assert (=> b!4316258 m!4910173))

(declare-fun m!4910175 () Bool)

(assert (=> b!4316258 m!4910175))

(check-sat (not b!4316261) (not b!4316265) (not b_next!129563) (not b!4316258) tp_is_empty!23999 (not b!4316266) (not b!4316262) (not b_next!129565) tp_is_empty!23997 (not b!4316259) b_and!340343 (not mapNonEmpty!21067) b_and!340341)
(check-sat b_and!340341 b_and!340343 (not b_next!129565) (not b_next!129563))
(get-model)

(declare-fun b!4316290 () Bool)

(assert (=> b!4316290 false))

(declare-datatypes ((Unit!67542 0))(
  ( (Unit!67543) )
))
(declare-fun lt!1535794 () Unit!67542)

(declare-fun lt!1535792 () Unit!67542)

(assert (=> b!4316290 (= lt!1535794 lt!1535792)))

(declare-fun lt!1535776 () List!48446)

(declare-fun lt!1535779 () (_ BitVec 64))

(declare-fun lt!1535793 () List!48445)

(declare-fun contains!10333 (List!48446 tuple2!47006) Bool)

(assert (=> b!4316290 (contains!10333 lt!1535776 (tuple2!47007 lt!1535779 lt!1535793))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!164 (List!48446 (_ BitVec 64) List!48445) Unit!67542)

(assert (=> b!4316290 (= lt!1535792 (lemmaGetValueByKeyImpliesContainsTuple!164 lt!1535776 lt!1535779 lt!1535793))))

(assert (=> b!4316290 (= lt!1535793 (apply!11097 (v!42603 (underlying!9680 thiss!42308)) lt!1535779))))

(assert (=> b!4316290 (= lt!1535776 (toList!2509 (map!10338 (v!42603 (underlying!9680 thiss!42308)))))))

(declare-fun lt!1535791 () Unit!67542)

(declare-fun lt!1535785 () Unit!67542)

(assert (=> b!4316290 (= lt!1535791 lt!1535785)))

(declare-fun lt!1535781 () List!48446)

(declare-datatypes ((Option!10276 0))(
  ( (None!10275) (Some!10275 (v!42608 List!48445)) )
))
(declare-fun isDefined!7577 (Option!10276) Bool)

(declare-fun getValueByKey!283 (List!48446 (_ BitVec 64)) Option!10276)

(assert (=> b!4316290 (isDefined!7577 (getValueByKey!283 lt!1535781 lt!1535779))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!202 (List!48446 (_ BitVec 64)) Unit!67542)

(assert (=> b!4316290 (= lt!1535785 (lemmaContainsKeyImpliesGetValueByKeyDefined!202 lt!1535781 lt!1535779))))

(assert (=> b!4316290 (= lt!1535781 (toList!2509 (map!10338 (v!42603 (underlying!9680 thiss!42308)))))))

(declare-fun lt!1535787 () Unit!67542)

(declare-fun lt!1535778 () Unit!67542)

(assert (=> b!4316290 (= lt!1535787 lt!1535778)))

(declare-fun lt!1535784 () List!48446)

(declare-fun containsKey!378 (List!48446 (_ BitVec 64)) Bool)

(assert (=> b!4316290 (containsKey!378 lt!1535784 lt!1535779)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!153 (List!48446 (_ BitVec 64)) Unit!67542)

(assert (=> b!4316290 (= lt!1535778 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!153 lt!1535784 lt!1535779))))

(assert (=> b!4316290 (= lt!1535784 (toList!2509 (map!10338 (v!42603 (underlying!9680 thiss!42308)))))))

(declare-fun e!2685090 () Unit!67542)

(declare-fun Unit!67544 () Unit!67542)

(assert (=> b!4316290 (= e!2685090 Unit!67544)))

(declare-fun bm!298630 () Bool)

(declare-fun call!298637 () Bool)

(declare-datatypes ((Option!10277 0))(
  ( (None!10276) (Some!10276 (v!42609 tuple2!47004)) )
))
(declare-fun call!298639 () Option!10277)

(declare-fun isDefined!7578 (Option!10277) Bool)

(assert (=> bm!298630 (= call!298637 (isDefined!7578 call!298639))))

(declare-fun bm!298631 () Bool)

(declare-fun call!298638 () (_ BitVec 64))

(assert (=> bm!298631 (= call!298638 (hash!1122 (hashF!6846 thiss!42308) key!2048))))

(declare-fun d!1269295 () Bool)

(declare-fun lt!1535788 () Bool)

(declare-fun contains!10334 (ListMap!1789 K!9559) Bool)

(assert (=> d!1269295 (= lt!1535788 (contains!10334 (map!10339 thiss!42308) key!2048))))

(declare-fun e!2685089 () Bool)

(assert (=> d!1269295 (= lt!1535788 e!2685089)))

(declare-fun res!1769141 () Bool)

(assert (=> d!1269295 (=> (not res!1769141) (not e!2685089))))

(assert (=> d!1269295 (= res!1769141 (contains!10332 (v!42603 (underlying!9680 thiss!42308)) lt!1535779))))

(declare-fun lt!1535789 () Unit!67542)

(declare-fun e!2685093 () Unit!67542)

(assert (=> d!1269295 (= lt!1535789 e!2685093)))

(declare-fun c!733764 () Bool)

(declare-fun extractMap!358 (List!48446) ListMap!1789)

(assert (=> d!1269295 (= c!733764 (contains!10334 (extractMap!358 (toList!2509 (map!10338 (v!42603 (underlying!9680 thiss!42308))))) key!2048))))

(declare-fun lt!1535795 () Unit!67542)

(declare-fun e!2685094 () Unit!67542)

(assert (=> d!1269295 (= lt!1535795 e!2685094)))

(declare-fun c!733766 () Bool)

(assert (=> d!1269295 (= c!733766 (contains!10332 (v!42603 (underlying!9680 thiss!42308)) lt!1535779))))

(assert (=> d!1269295 (= lt!1535779 (hash!1122 (hashF!6846 thiss!42308) key!2048))))

(assert (=> d!1269295 (valid!3726 thiss!42308)))

(assert (=> d!1269295 (= (contains!10331 thiss!42308 key!2048) lt!1535788)))

(declare-fun b!4316291 () Bool)

(declare-fun Unit!67545 () Unit!67542)

(assert (=> b!4316291 (= e!2685094 Unit!67545)))

(declare-fun b!4316292 () Bool)

(declare-fun Unit!67546 () Unit!67542)

(assert (=> b!4316292 (= e!2685090 Unit!67546)))

(declare-fun b!4316293 () Bool)

(declare-fun getPair!152 (List!48445 K!9559) Option!10277)

(assert (=> b!4316293 (= e!2685089 (isDefined!7578 (getPair!152 (apply!11097 (v!42603 (underlying!9680 thiss!42308)) lt!1535779) key!2048)))))

(declare-fun call!298640 () ListLongMap!1123)

(declare-fun bm!298632 () Bool)

(declare-fun lt!1535786 () ListLongMap!1123)

(declare-fun call!298635 () Bool)

(declare-fun contains!10335 (ListLongMap!1123 (_ BitVec 64)) Bool)

(assert (=> bm!298632 (= call!298635 (contains!10335 (ite c!733764 lt!1535786 call!298640) call!298638))))

(declare-fun bm!298633 () Bool)

(declare-fun call!298636 () List!48445)

(assert (=> bm!298633 (= call!298639 (getPair!152 call!298636 key!2048))))

(declare-fun b!4316294 () Bool)

(declare-fun lt!1535780 () Unit!67542)

(assert (=> b!4316294 (= e!2685093 lt!1535780)))

(assert (=> b!4316294 (= lt!1535786 call!298640)))

(declare-fun lemmaInGenericMapThenInLongMap!152 (ListLongMap!1123 K!9559 Hashable!4641) Unit!67542)

(assert (=> b!4316294 (= lt!1535780 (lemmaInGenericMapThenInLongMap!152 lt!1535786 key!2048 (hashF!6846 thiss!42308)))))

(declare-fun res!1769139 () Bool)

(assert (=> b!4316294 (= res!1769139 call!298635)))

(declare-fun e!2685092 () Bool)

(assert (=> b!4316294 (=> (not res!1769139) (not e!2685092))))

(assert (=> b!4316294 e!2685092))

(declare-fun bm!298634 () Bool)

(assert (=> bm!298634 (= call!298640 (map!10338 (v!42603 (underlying!9680 thiss!42308))))))

(declare-fun b!4316295 () Bool)

(declare-fun e!2685088 () Unit!67542)

(declare-fun Unit!67547 () Unit!67542)

(assert (=> b!4316295 (= e!2685088 Unit!67547)))

(declare-fun b!4316296 () Bool)

(assert (=> b!4316296 (= e!2685093 e!2685088)))

(declare-fun res!1769140 () Bool)

(assert (=> b!4316296 (= res!1769140 call!298635)))

(declare-fun e!2685091 () Bool)

(assert (=> b!4316296 (=> (not res!1769140) (not e!2685091))))

(declare-fun c!733765 () Bool)

(assert (=> b!4316296 (= c!733765 e!2685091)))

(declare-fun b!4316297 () Bool)

(assert (=> b!4316297 false))

(declare-fun lt!1535790 () Unit!67542)

(declare-fun lt!1535783 () Unit!67542)

(assert (=> b!4316297 (= lt!1535790 lt!1535783)))

(declare-fun lt!1535777 () ListLongMap!1123)

(assert (=> b!4316297 (contains!10334 (extractMap!358 (toList!2509 lt!1535777)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!152 (ListLongMap!1123 K!9559 Hashable!4641) Unit!67542)

(assert (=> b!4316297 (= lt!1535783 (lemmaInLongMapThenInGenericMap!152 lt!1535777 key!2048 (hashF!6846 thiss!42308)))))

(assert (=> b!4316297 (= lt!1535777 call!298640)))

(declare-fun Unit!67548 () Unit!67542)

(assert (=> b!4316297 (= e!2685088 Unit!67548)))

(declare-fun bm!298635 () Bool)

(declare-fun apply!11098 (ListLongMap!1123 (_ BitVec 64)) List!48445)

(assert (=> bm!298635 (= call!298636 (apply!11098 (ite c!733764 lt!1535786 call!298640) call!298638))))

(declare-fun b!4316298 () Bool)

(assert (=> b!4316298 (= e!2685091 call!298637)))

(declare-fun b!4316299 () Bool)

(declare-fun lambda!133500 () Int)

(declare-fun forallContained!1520 (List!48446 Int tuple2!47006) Unit!67542)

(assert (=> b!4316299 (= e!2685094 (forallContained!1520 (toList!2509 (map!10338 (v!42603 (underlying!9680 thiss!42308)))) lambda!133500 (tuple2!47007 lt!1535779 (apply!11097 (v!42603 (underlying!9680 thiss!42308)) lt!1535779))))))

(declare-fun c!733763 () Bool)

(assert (=> b!4316299 (= c!733763 (not (contains!10333 (toList!2509 (map!10338 (v!42603 (underlying!9680 thiss!42308)))) (tuple2!47007 lt!1535779 (apply!11097 (v!42603 (underlying!9680 thiss!42308)) lt!1535779)))))))

(declare-fun lt!1535782 () Unit!67542)

(assert (=> b!4316299 (= lt!1535782 e!2685090)))

(declare-fun b!4316300 () Bool)

(assert (=> b!4316300 (= e!2685092 call!298637)))

(assert (= (and d!1269295 c!733766) b!4316299))

(assert (= (and d!1269295 (not c!733766)) b!4316291))

(assert (= (and b!4316299 c!733763) b!4316290))

(assert (= (and b!4316299 (not c!733763)) b!4316292))

(assert (= (and d!1269295 c!733764) b!4316294))

(assert (= (and d!1269295 (not c!733764)) b!4316296))

(assert (= (and b!4316294 res!1769139) b!4316300))

(assert (= (and b!4316296 res!1769140) b!4316298))

(assert (= (and b!4316296 c!733765) b!4316297))

(assert (= (and b!4316296 (not c!733765)) b!4316295))

(assert (= (or b!4316294 b!4316300 b!4316296 b!4316298) bm!298631))

(assert (= (or b!4316294 b!4316296 b!4316298 b!4316297) bm!298634))

(assert (= (or b!4316300 b!4316298) bm!298635))

(assert (= (or b!4316294 b!4316296) bm!298632))

(assert (= (or b!4316300 b!4316298) bm!298633))

(assert (= (or b!4316300 b!4316298) bm!298630))

(assert (= (and d!1269295 res!1769141) b!4316293))

(declare-fun m!4910177 () Bool)

(assert (=> bm!298633 m!4910177))

(assert (=> b!4316299 m!4910173))

(declare-fun m!4910179 () Bool)

(assert (=> b!4316299 m!4910179))

(declare-fun m!4910181 () Bool)

(assert (=> b!4316299 m!4910181))

(declare-fun m!4910183 () Bool)

(assert (=> b!4316299 m!4910183))

(assert (=> b!4316293 m!4910179))

(assert (=> b!4316293 m!4910179))

(declare-fun m!4910185 () Bool)

(assert (=> b!4316293 m!4910185))

(assert (=> b!4316293 m!4910185))

(declare-fun m!4910187 () Bool)

(assert (=> b!4316293 m!4910187))

(declare-fun m!4910189 () Bool)

(assert (=> bm!298635 m!4910189))

(assert (=> d!1269295 m!4910157))

(declare-fun m!4910191 () Bool)

(assert (=> d!1269295 m!4910191))

(declare-fun m!4910193 () Bool)

(assert (=> d!1269295 m!4910193))

(declare-fun m!4910195 () Bool)

(assert (=> d!1269295 m!4910195))

(assert (=> d!1269295 m!4910173))

(assert (=> d!1269295 m!4910169))

(assert (=> d!1269295 m!4910191))

(assert (=> d!1269295 m!4910175))

(declare-fun m!4910197 () Bool)

(assert (=> d!1269295 m!4910197))

(assert (=> d!1269295 m!4910175))

(assert (=> bm!298634 m!4910173))

(declare-fun m!4910199 () Bool)

(assert (=> b!4316294 m!4910199))

(declare-fun m!4910201 () Bool)

(assert (=> b!4316290 m!4910201))

(declare-fun m!4910203 () Bool)

(assert (=> b!4316290 m!4910203))

(declare-fun m!4910205 () Bool)

(assert (=> b!4316290 m!4910205))

(declare-fun m!4910207 () Bool)

(assert (=> b!4316290 m!4910207))

(assert (=> b!4316290 m!4910173))

(declare-fun m!4910209 () Bool)

(assert (=> b!4316290 m!4910209))

(declare-fun m!4910211 () Bool)

(assert (=> b!4316290 m!4910211))

(assert (=> b!4316290 m!4910179))

(assert (=> b!4316290 m!4910211))

(declare-fun m!4910213 () Bool)

(assert (=> b!4316290 m!4910213))

(declare-fun m!4910215 () Bool)

(assert (=> b!4316297 m!4910215))

(assert (=> b!4316297 m!4910215))

(declare-fun m!4910217 () Bool)

(assert (=> b!4316297 m!4910217))

(declare-fun m!4910219 () Bool)

(assert (=> b!4316297 m!4910219))

(assert (=> bm!298631 m!4910169))

(declare-fun m!4910221 () Bool)

(assert (=> bm!298630 m!4910221))

(declare-fun m!4910223 () Bool)

(assert (=> bm!298632 m!4910223))

(assert (=> b!4316258 d!1269295))

(declare-fun d!1269297 () Bool)

(declare-fun map!10340 (LongMapFixedSize!9450) ListLongMap!1123)

(assert (=> d!1269297 (= (map!10338 (v!42603 (underlying!9680 thiss!42308))) (map!10340 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308))))))))

(declare-fun bs!605861 () Bool)

(assert (= bs!605861 d!1269297))

(declare-fun m!4910225 () Bool)

(assert (=> bs!605861 m!4910225))

(assert (=> b!4316258 d!1269297))

(declare-fun d!1269299 () Bool)

(declare-fun lt!1535798 () ListMap!1789)

(declare-fun invariantList!591 (List!48445) Bool)

(assert (=> d!1269299 (invariantList!591 (toList!2510 lt!1535798))))

(assert (=> d!1269299 (= lt!1535798 (extractMap!358 (toList!2509 (map!10338 (v!42603 (underlying!9680 thiss!42308))))))))

(assert (=> d!1269299 (valid!3726 thiss!42308)))

(assert (=> d!1269299 (= (map!10339 thiss!42308) lt!1535798)))

(declare-fun bs!605862 () Bool)

(assert (= bs!605862 d!1269299))

(declare-fun m!4910227 () Bool)

(assert (=> bs!605862 m!4910227))

(assert (=> bs!605862 m!4910173))

(assert (=> bs!605862 m!4910191))

(assert (=> bs!605862 m!4910157))

(assert (=> b!4316258 d!1269299))

(declare-fun d!1269301 () Bool)

(assert (=> d!1269301 (= (array_inv!5491 (_keys!5025 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308)))))) (bvsge (size!35674 (_keys!5025 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4316266 d!1269301))

(declare-fun d!1269303 () Bool)

(assert (=> d!1269303 (= (array_inv!5492 (_values!5006 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308)))))) (bvsge (size!35675 (_values!5006 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4316266 d!1269303))

(declare-fun d!1269305 () Bool)

(declare-fun e!2685097 () Bool)

(assert (=> d!1269305 e!2685097))

(declare-fun c!733769 () Bool)

(assert (=> d!1269305 (= c!733769 (contains!10332 (v!42603 (underlying!9680 thiss!42308)) lt!1535735))))

(declare-fun lt!1535801 () List!48445)

(declare-fun apply!11099 (LongMapFixedSize!9450 (_ BitVec 64)) List!48445)

(assert (=> d!1269305 (= lt!1535801 (apply!11099 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308)))) lt!1535735))))

(declare-fun valid!3727 (MutLongMap!4725) Bool)

(assert (=> d!1269305 (valid!3727 (v!42603 (underlying!9680 thiss!42308)))))

(assert (=> d!1269305 (= (apply!11097 (v!42603 (underlying!9680 thiss!42308)) lt!1535735) lt!1535801)))

(declare-fun b!4316305 () Bool)

(declare-fun get!15647 (Option!10276) List!48445)

(assert (=> b!4316305 (= e!2685097 (= lt!1535801 (get!15647 (getValueByKey!283 (toList!2509 (map!10338 (v!42603 (underlying!9680 thiss!42308)))) lt!1535735))))))

(declare-fun b!4316306 () Bool)

(declare-fun dynLambda!20472 (Int (_ BitVec 64)) List!48445)

(assert (=> b!4316306 (= e!2685097 (= lt!1535801 (dynLambda!20472 (defaultEntry!5110 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308))))) lt!1535735)))))

(assert (=> b!4316306 ((_ is LongMap!4725) (v!42603 (underlying!9680 thiss!42308)))))

(assert (= (and d!1269305 c!733769) b!4316305))

(assert (= (and d!1269305 (not c!733769)) b!4316306))

(declare-fun b_lambda!126911 () Bool)

(assert (=> (not b_lambda!126911) (not b!4316306)))

(declare-fun t!355297 () Bool)

(declare-fun tb!257335 () Bool)

(assert (=> (and b!4316266 (= (defaultEntry!5110 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308))))) (defaultEntry!5110 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308)))))) t!355297) tb!257335))

(assert (=> b!4316306 t!355297))

(declare-fun result!314808 () Bool)

(declare-fun b_and!340345 () Bool)

(assert (= b_and!340341 (and (=> t!355297 result!314808) b_and!340345)))

(assert (=> d!1269305 m!4910167))

(declare-fun m!4910229 () Bool)

(assert (=> d!1269305 m!4910229))

(declare-fun m!4910231 () Bool)

(assert (=> d!1269305 m!4910231))

(assert (=> b!4316305 m!4910173))

(declare-fun m!4910233 () Bool)

(assert (=> b!4316305 m!4910233))

(assert (=> b!4316305 m!4910233))

(declare-fun m!4910235 () Bool)

(assert (=> b!4316305 m!4910235))

(declare-fun m!4910237 () Bool)

(assert (=> b!4316306 m!4910237))

(assert (=> b!4316262 d!1269305))

(declare-fun e!2685108 () Bool)

(declare-fun call!298645 () ListLongMap!1123)

(declare-fun call!298646 () ListLongMap!1123)

(declare-fun b!4316325 () Bool)

(declare-fun +!315 (ListLongMap!1123 tuple2!47006) ListLongMap!1123)

(assert (=> b!4316325 (= e!2685108 (= call!298645 (+!315 call!298646 (tuple2!47007 lt!1535735 (Cons!48321 (tuple2!47005 key!2048 v!9179) e!2685070)))))))

(declare-fun b!4316326 () Bool)

(declare-fun e!2685112 () tuple2!47008)

(declare-datatypes ((tuple2!47010 0))(
  ( (tuple2!47011 (_1!26787 Bool) (_2!26787 LongMapFixedSize!9450)) )
))
(declare-fun lt!1535812 () tuple2!47010)

(assert (=> b!4316326 (= e!2685112 (tuple2!47009 (_1!26787 lt!1535812) (LongMap!4725 (Cell!18710 (_2!26787 lt!1535812)))))))

(declare-fun lt!1535811 () tuple2!47008)

(declare-fun update!497 (LongMapFixedSize!9450 (_ BitVec 64) List!48445) tuple2!47010)

(assert (=> b!4316326 (= lt!1535812 (update!497 (v!42602 (underlying!9679 (_2!26786 lt!1535811))) lt!1535735 (Cons!48321 (tuple2!47005 key!2048 v!9179) e!2685070)))))

(declare-fun b!4316327 () Bool)

(declare-fun e!2685109 () tuple2!47008)

(assert (=> b!4316327 (= e!2685109 (tuple2!47009 true (v!42603 (underlying!9680 thiss!42308))))))

(declare-fun bm!298640 () Bool)

(declare-fun lt!1535813 () tuple2!47008)

(assert (=> bm!298640 (= call!298645 (map!10338 (_2!26786 lt!1535813)))))

(declare-fun b!4316328 () Bool)

(declare-fun e!2685111 () Bool)

(assert (=> b!4316328 (= e!2685111 e!2685108)))

(declare-fun res!1769149 () Bool)

(assert (=> b!4316328 (= res!1769149 (contains!10335 call!298645 lt!1535735))))

(assert (=> b!4316328 (=> (not res!1769149) (not e!2685108))))

(declare-fun b!4316329 () Bool)

(assert (=> b!4316329 (= e!2685111 (= call!298645 call!298646))))

(declare-fun b!4316330 () Bool)

(declare-fun res!1769150 () Bool)

(declare-fun e!2685110 () Bool)

(assert (=> b!4316330 (=> (not res!1769150) (not e!2685110))))

(assert (=> b!4316330 (= res!1769150 (valid!3727 (_2!26786 lt!1535813)))))

(declare-fun bm!298641 () Bool)

(assert (=> bm!298641 (= call!298646 (map!10338 (v!42603 (underlying!9680 thiss!42308))))))

(declare-fun d!1269307 () Bool)

(assert (=> d!1269307 e!2685110))

(declare-fun res!1769148 () Bool)

(assert (=> d!1269307 (=> (not res!1769148) (not e!2685110))))

(assert (=> d!1269307 (= res!1769148 ((_ is LongMap!4725) (_2!26786 lt!1535813)))))

(assert (=> d!1269307 (= lt!1535813 e!2685112)))

(declare-fun c!733778 () Bool)

(assert (=> d!1269307 (= c!733778 (_1!26786 lt!1535811))))

(assert (=> d!1269307 (= lt!1535811 e!2685109)))

(declare-fun c!733777 () Bool)

(declare-fun imbalanced!70 (MutLongMap!4725) Bool)

(assert (=> d!1269307 (= c!733777 (imbalanced!70 (v!42603 (underlying!9680 thiss!42308))))))

(assert (=> d!1269307 (valid!3727 (v!42603 (underlying!9680 thiss!42308)))))

(assert (=> d!1269307 (= (update!496 (v!42603 (underlying!9680 thiss!42308)) lt!1535735 (Cons!48321 (tuple2!47005 key!2048 v!9179) e!2685070)) lt!1535813)))

(declare-fun b!4316331 () Bool)

(declare-fun lt!1535810 () tuple2!47008)

(assert (=> b!4316331 (= e!2685109 (tuple2!47009 (_1!26786 lt!1535810) (_2!26786 lt!1535810)))))

(declare-fun repack!74 (MutLongMap!4725) tuple2!47008)

(assert (=> b!4316331 (= lt!1535810 (repack!74 (v!42603 (underlying!9680 thiss!42308))))))

(declare-fun b!4316332 () Bool)

(assert (=> b!4316332 (= e!2685112 (tuple2!47009 false (_2!26786 lt!1535811)))))

(declare-fun b!4316333 () Bool)

(assert (=> b!4316333 (= e!2685110 e!2685111)))

(declare-fun c!733776 () Bool)

(assert (=> b!4316333 (= c!733776 (_1!26786 lt!1535813))))

(assert (= (and d!1269307 c!733777) b!4316331))

(assert (= (and d!1269307 (not c!733777)) b!4316327))

(assert (= (and d!1269307 c!733778) b!4316326))

(assert (= (and d!1269307 (not c!733778)) b!4316332))

(assert (= (and d!1269307 res!1769148) b!4316330))

(assert (= (and b!4316330 res!1769150) b!4316333))

(assert (= (and b!4316333 c!733776) b!4316328))

(assert (= (and b!4316333 (not c!733776)) b!4316329))

(assert (= (and b!4316328 res!1769149) b!4316325))

(assert (= (or b!4316328 b!4316325 b!4316329) bm!298640))

(assert (= (or b!4316325 b!4316329) bm!298641))

(declare-fun m!4910239 () Bool)

(assert (=> b!4316325 m!4910239))

(assert (=> bm!298641 m!4910173))

(declare-fun m!4910241 () Bool)

(assert (=> b!4316328 m!4910241))

(declare-fun m!4910243 () Bool)

(assert (=> b!4316330 m!4910243))

(declare-fun m!4910245 () Bool)

(assert (=> bm!298640 m!4910245))

(declare-fun m!4910247 () Bool)

(assert (=> d!1269307 m!4910247))

(assert (=> d!1269307 m!4910231))

(declare-fun m!4910249 () Bool)

(assert (=> b!4316326 m!4910249))

(declare-fun m!4910251 () Bool)

(assert (=> b!4316331 m!4910251))

(assert (=> b!4316261 d!1269307))

(declare-fun d!1269309 () Bool)

(declare-fun lt!1535816 () Bool)

(assert (=> d!1269309 (= lt!1535816 (contains!10335 (map!10338 (v!42603 (underlying!9680 thiss!42308))) lt!1535735))))

(declare-fun contains!10336 (LongMapFixedSize!9450 (_ BitVec 64)) Bool)

(assert (=> d!1269309 (= lt!1535816 (contains!10336 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308)))) lt!1535735))))

(assert (=> d!1269309 (valid!3727 (v!42603 (underlying!9680 thiss!42308)))))

(assert (=> d!1269309 (= (contains!10332 (v!42603 (underlying!9680 thiss!42308)) lt!1535735) lt!1535816)))

(declare-fun bs!605863 () Bool)

(assert (= bs!605863 d!1269309))

(assert (=> bs!605863 m!4910173))

(assert (=> bs!605863 m!4910173))

(declare-fun m!4910253 () Bool)

(assert (=> bs!605863 m!4910253))

(declare-fun m!4910255 () Bool)

(assert (=> bs!605863 m!4910255))

(assert (=> bs!605863 m!4910231))

(assert (=> b!4316261 d!1269309))

(declare-fun d!1269311 () Bool)

(declare-fun hash!1123 (Hashable!4641 K!9559) (_ BitVec 64))

(assert (=> d!1269311 (= (hash!1122 (hashF!6846 thiss!42308) key!2048) (hash!1123 (hashF!6846 thiss!42308) key!2048))))

(declare-fun bs!605864 () Bool)

(assert (= bs!605864 d!1269311))

(declare-fun m!4910257 () Bool)

(assert (=> bs!605864 m!4910257))

(assert (=> b!4316261 d!1269311))

(declare-fun bs!605865 () Bool)

(declare-fun b!4316338 () Bool)

(assert (= bs!605865 (and b!4316338 b!4316299)))

(declare-fun lambda!133503 () Int)

(assert (=> bs!605865 (= lambda!133503 lambda!133500)))

(declare-fun d!1269313 () Bool)

(declare-fun res!1769155 () Bool)

(declare-fun e!2685115 () Bool)

(assert (=> d!1269313 (=> (not res!1769155) (not e!2685115))))

(assert (=> d!1269313 (= res!1769155 (valid!3727 (v!42603 (underlying!9680 thiss!42308))))))

(assert (=> d!1269313 (= (valid!3726 thiss!42308) e!2685115)))

(declare-fun res!1769156 () Bool)

(assert (=> b!4316338 (=> (not res!1769156) (not e!2685115))))

(declare-fun forall!8785 (List!48446 Int) Bool)

(assert (=> b!4316338 (= res!1769156 (forall!8785 (toList!2509 (map!10338 (v!42603 (underlying!9680 thiss!42308)))) lambda!133503))))

(declare-fun b!4316339 () Bool)

(declare-fun allKeysSameHashInMap!374 (ListLongMap!1123 Hashable!4641) Bool)

(assert (=> b!4316339 (= e!2685115 (allKeysSameHashInMap!374 (map!10338 (v!42603 (underlying!9680 thiss!42308))) (hashF!6846 thiss!42308)))))

(assert (= (and d!1269313 res!1769155) b!4316338))

(assert (= (and b!4316338 res!1769156) b!4316339))

(assert (=> d!1269313 m!4910231))

(assert (=> b!4316338 m!4910173))

(declare-fun m!4910259 () Bool)

(assert (=> b!4316338 m!4910259))

(assert (=> b!4316339 m!4910173))

(assert (=> b!4316339 m!4910173))

(declare-fun m!4910261 () Bool)

(assert (=> b!4316339 m!4910261))

(assert (=> b!4316265 d!1269313))

(declare-fun b!4316346 () Bool)

(declare-fun tp!1326157 () Bool)

(declare-fun e!2685120 () Bool)

(assert (=> b!4316346 (= e!2685120 (and tp_is_empty!23997 tp_is_empty!23999 tp!1326157))))

(declare-fun b!4316347 () Bool)

(declare-fun e!2685121 () Bool)

(declare-fun tp!1326156 () Bool)

(assert (=> b!4316347 (= e!2685121 (and tp_is_empty!23997 tp_is_empty!23999 tp!1326156))))

(declare-fun mapNonEmpty!21070 () Bool)

(declare-fun mapRes!21070 () Bool)

(declare-fun tp!1326158 () Bool)

(assert (=> mapNonEmpty!21070 (= mapRes!21070 (and tp!1326158 e!2685120))))

(declare-fun mapRest!21070 () (Array (_ BitVec 32) List!48445))

(declare-fun mapKey!21070 () (_ BitVec 32))

(declare-fun mapValue!21070 () List!48445)

(assert (=> mapNonEmpty!21070 (= mapRest!21067 (store mapRest!21070 mapKey!21070 mapValue!21070))))

(declare-fun mapIsEmpty!21070 () Bool)

(assert (=> mapIsEmpty!21070 mapRes!21070))

(declare-fun condMapEmpty!21070 () Bool)

(declare-fun mapDefault!21070 () List!48445)

(assert (=> mapNonEmpty!21067 (= condMapEmpty!21070 (= mapRest!21067 ((as const (Array (_ BitVec 32) List!48445)) mapDefault!21070)))))

(assert (=> mapNonEmpty!21067 (= tp!1326145 (and e!2685121 mapRes!21070))))

(assert (= (and mapNonEmpty!21067 condMapEmpty!21070) mapIsEmpty!21070))

(assert (= (and mapNonEmpty!21067 (not condMapEmpty!21070)) mapNonEmpty!21070))

(assert (= (and mapNonEmpty!21070 ((_ is Cons!48321) mapValue!21070)) b!4316346))

(assert (= (and mapNonEmpty!21067 ((_ is Cons!48321) mapDefault!21070)) b!4316347))

(declare-fun m!4910263 () Bool)

(assert (=> mapNonEmpty!21070 m!4910263))

(declare-fun e!2685124 () Bool)

(declare-fun b!4316352 () Bool)

(declare-fun tp!1326161 () Bool)

(assert (=> b!4316352 (= e!2685124 (and tp_is_empty!23997 tp_is_empty!23999 tp!1326161))))

(assert (=> mapNonEmpty!21067 (= tp!1326148 e!2685124)))

(assert (= (and mapNonEmpty!21067 ((_ is Cons!48321) mapValue!21067)) b!4316352))

(declare-fun e!2685125 () Bool)

(declare-fun b!4316353 () Bool)

(declare-fun tp!1326162 () Bool)

(assert (=> b!4316353 (= e!2685125 (and tp_is_empty!23997 tp_is_empty!23999 tp!1326162))))

(assert (=> b!4316259 (= tp!1326146 e!2685125)))

(assert (= (and b!4316259 ((_ is Cons!48321) mapDefault!21067)) b!4316353))

(declare-fun b!4316354 () Bool)

(declare-fun e!2685126 () Bool)

(declare-fun tp!1326163 () Bool)

(assert (=> b!4316354 (= e!2685126 (and tp_is_empty!23997 tp_is_empty!23999 tp!1326163))))

(assert (=> b!4316266 (= tp!1326143 e!2685126)))

(assert (= (and b!4316266 ((_ is Cons!48321) (zeroValue!4984 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308))))))) b!4316354))

(declare-fun e!2685127 () Bool)

(declare-fun tp!1326164 () Bool)

(declare-fun b!4316355 () Bool)

(assert (=> b!4316355 (= e!2685127 (and tp_is_empty!23997 tp_is_empty!23999 tp!1326164))))

(assert (=> b!4316266 (= tp!1326149 e!2685127)))

(assert (= (and b!4316266 ((_ is Cons!48321) (minValue!4984 (v!42602 (underlying!9679 (v!42603 (underlying!9680 thiss!42308))))))) b!4316355))

(declare-fun b_lambda!126913 () Bool)

(assert (= b_lambda!126911 (or (and b!4316266 b_free!128859) b_lambda!126913)))

(check-sat (not bm!298631) (not d!1269313) (not b!4316293) (not b!4316338) (not b_next!129563) (not bm!298640) (not b!4316299) tp_is_empty!23999 (not bm!298641) (not d!1269309) b_and!340343 (not d!1269295) (not tb!257335) (not b!4316325) (not mapNonEmpty!21070) (not b!4316353) (not bm!298630) (not b!4316305) (not d!1269297) (not bm!298633) (not b!4316290) (not b!4316294) (not b_lambda!126913) (not bm!298635) (not b!4316297) (not d!1269311) (not b!4316339) (not b!4316355) (not b_next!129565) (not d!1269305) tp_is_empty!23997 (not bm!298634) (not b!4316347) (not b!4316354) b_and!340345 (not d!1269299) (not d!1269307) (not b!4316330) (not b!4316352) (not b!4316346) (not b!4316326) (not bm!298632) (not b!4316331) (not b!4316328))
(check-sat b_and!340345 b_and!340343 (not b_next!129565) (not b_next!129563))
