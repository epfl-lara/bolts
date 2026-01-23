; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487942 () Bool)

(assert start!487942)

(declare-fun b!4768289 () Bool)

(declare-fun b_free!129699 () Bool)

(declare-fun b_next!130489 () Bool)

(assert (=> b!4768289 (= b_free!129699 (not b_next!130489))))

(declare-fun tp!1355831 () Bool)

(declare-fun b_and!341421 () Bool)

(assert (=> b!4768289 (= tp!1355831 b_and!341421)))

(declare-fun b!4768290 () Bool)

(declare-fun b_free!129701 () Bool)

(declare-fun b_next!130491 () Bool)

(assert (=> b!4768290 (= b_free!129701 (not b_next!130491))))

(declare-fun tp!1355830 () Bool)

(declare-fun b_and!341423 () Bool)

(assert (=> b!4768290 (= tp!1355830 b_and!341423)))

(declare-fun b!4768284 () Bool)

(declare-fun e!2976343 () Bool)

(declare-fun e!2976346 () Bool)

(assert (=> b!4768284 (= e!2976343 e!2976346)))

(declare-fun res!2022352 () Bool)

(declare-fun e!2976347 () Bool)

(assert (=> start!487942 (=> (not res!2022352) (not e!2976347))))

(declare-datatypes ((K!14989 0))(
  ( (K!14990 (val!20297 Int)) )
))
(declare-datatypes ((V!15235 0))(
  ( (V!15236 (val!20298 Int)) )
))
(declare-datatypes ((tuple2!55576 0))(
  ( (tuple2!55577 (_1!31082 K!14989) (_2!31082 V!15235)) )
))
(declare-datatypes ((array!18080 0))(
  ( (array!18081 (arr!8063 (Array (_ BitVec 32) (_ BitVec 64))) (size!36293 (_ BitVec 32))) )
))
(declare-datatypes ((List!53633 0))(
  ( (Nil!53509) (Cons!53509 (h!59921 tuple2!55576) (t!361063 List!53633)) )
))
(declare-datatypes ((array!18082 0))(
  ( (array!18083 (arr!8064 (Array (_ BitVec 32) List!53633)) (size!36294 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6600 0))(
  ( (HashableExt!6599 (__x!32565 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9878 0))(
  ( (LongMapFixedSize!9879 (defaultEntry!5357 Int) (mask!14704 (_ BitVec 32)) (extraKeys!5214 (_ BitVec 32)) (zeroValue!5227 List!53633) (minValue!5227 List!53633) (_size!9903 (_ BitVec 32)) (_keys!5281 array!18080) (_values!5252 array!18082) (_vacant!5004 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19521 0))(
  ( (Cell!19522 (v!47739 LongMapFixedSize!9878)) )
))
(declare-datatypes ((MutLongMap!4939 0))(
  ( (LongMap!4939 (underlying!10085 Cell!19521)) (MutLongMapExt!4938 (__x!32566 Int)) )
))
(declare-datatypes ((Cell!19523 0))(
  ( (Cell!19524 (v!47740 MutLongMap!4939)) )
))
(declare-datatypes ((MutableMap!4823 0))(
  ( (MutableMapExt!4822 (__x!32567 Int)) (HashMap!4823 (underlying!10086 Cell!19523) (hashF!12473 Hashable!6600) (_size!9904 (_ BitVec 32)) (defaultValue!4994 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4823)

(get-info :version)

(assert (=> start!487942 (= res!2022352 ((_ is HashMap!4823) thiss!42052))))

(assert (=> start!487942 e!2976347))

(declare-fun e!2976345 () Bool)

(assert (=> start!487942 e!2976345))

(declare-fun tp_is_empty!32479 () Bool)

(assert (=> start!487942 tp_is_empty!32479))

(declare-fun mapNonEmpty!21909 () Bool)

(declare-fun mapRes!21909 () Bool)

(declare-fun tp!1355836 () Bool)

(declare-fun tp!1355832 () Bool)

(assert (=> mapNonEmpty!21909 (= mapRes!21909 (and tp!1355836 tp!1355832))))

(declare-fun mapKey!21909 () (_ BitVec 32))

(declare-fun mapValue!21909 () List!53633)

(declare-fun mapRest!21909 () (Array (_ BitVec 32) List!53633))

(assert (=> mapNonEmpty!21909 (= (arr!8064 (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) (store mapRest!21909 mapKey!21909 mapValue!21909))))

(declare-fun mapIsEmpty!21909 () Bool)

(assert (=> mapIsEmpty!21909 mapRes!21909))

(declare-fun key!1776 () K!14989)

(declare-datatypes ((Option!12704 0))(
  ( (None!12703) (Some!12703 (v!47741 tuple2!55576)) )
))
(declare-fun lt!1931246 () Option!12704)

(declare-fun e!2976340 () Bool)

(declare-datatypes ((tuple2!55578 0))(
  ( (tuple2!55579 (_1!31083 (_ BitVec 64)) (_2!31083 List!53633)) )
))
(declare-datatypes ((List!53634 0))(
  ( (Nil!53510) (Cons!53510 (h!59922 tuple2!55578) (t!361064 List!53634)) )
))
(declare-datatypes ((ListLongMap!4709 0))(
  ( (ListLongMap!4710 (toList!6311 List!53634)) )
))
(declare-fun lt!1931247 () ListLongMap!4709)

(declare-fun b!4768285 () Bool)

(declare-fun get!18065 (Option!12704) tuple2!55576)

(declare-datatypes ((Option!12705 0))(
  ( (None!12704) (Some!12704 (v!47742 V!15235)) )
))
(declare-fun get!18066 (Option!12705) V!15235)

(declare-fun getValueByKey!2200 (List!53633 K!14989) Option!12705)

(declare-datatypes ((ListMap!5807 0))(
  ( (ListMap!5808 (toList!6312 List!53633)) )
))
(declare-fun extractMap!2155 (List!53634) ListMap!5807)

(assert (=> b!4768285 (= e!2976340 (= (_2!31082 (get!18065 lt!1931246)) (get!18066 (getValueByKey!2200 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776))))))

(declare-fun b!4768286 () Bool)

(declare-fun e!2976350 () Bool)

(declare-fun lt!1931242 () Option!12705)

(declare-fun isDefined!9855 (Option!12705) Bool)

(assert (=> b!4768286 (= e!2976350 (isDefined!9855 lt!1931242))))

(declare-fun b!4768287 () Bool)

(declare-datatypes ((Unit!138311 0))(
  ( (Unit!138312) )
))
(declare-fun e!2976342 () Unit!138311)

(declare-fun Unit!138313 () Unit!138311)

(assert (=> b!4768287 (= e!2976342 Unit!138313)))

(declare-fun lt!1931232 () Unit!138311)

(declare-fun lt!1931249 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1997 (List!53634 (_ BitVec 64)) Unit!138311)

(assert (=> b!4768287 (= lt!1931232 (lemmaContainsKeyImpliesGetValueByKeyDefined!1997 (toList!6311 lt!1931247) lt!1931249))))

(declare-datatypes ((Option!12706 0))(
  ( (None!12705) (Some!12705 (v!47743 List!53633)) )
))
(declare-fun isDefined!9856 (Option!12706) Bool)

(declare-fun getValueByKey!2201 (List!53634 (_ BitVec 64)) Option!12706)

(assert (=> b!4768287 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249))))

(declare-fun lt!1931237 () List!53633)

(declare-fun lt!1931236 () Unit!138311)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!940 (List!53634 (_ BitVec 64) List!53633) Unit!138311)

(assert (=> b!4768287 (= lt!1931236 (lemmaGetValueByKeyImpliesContainsTuple!940 (toList!6311 lt!1931247) lt!1931249 lt!1931237))))

(assert (=> b!4768287 false))

(declare-fun b!4768288 () Bool)

(assert (=> b!4768288 (= e!2976347 (not e!2976350))))

(declare-fun res!2022351 () Bool)

(assert (=> b!4768288 (=> res!2022351 e!2976350)))

(declare-fun lt!1931239 () tuple2!55576)

(assert (=> b!4768288 (= res!2022351 (not (= (_2!31082 lt!1931239) (get!18066 lt!1931242))))))

(declare-fun map!12009 (MutableMap!4823) ListMap!5807)

(assert (=> b!4768288 (= lt!1931242 (getValueByKey!2200 (toList!6312 (map!12009 thiss!42052)) key!1776))))

(assert (=> b!4768288 e!2976340))

(declare-fun res!2022354 () Bool)

(assert (=> b!4768288 (=> (not res!2022354) (not e!2976340))))

(declare-fun isDefined!9857 (Option!12704) Bool)

(assert (=> b!4768288 (= res!2022354 (isDefined!9857 lt!1931246))))

(declare-fun lt!1931230 () List!53633)

(declare-fun getPair!652 (List!53633 K!14989) Option!12704)

(assert (=> b!4768288 (= lt!1931246 (getPair!652 lt!1931230 key!1776))))

(declare-fun lt!1931245 () tuple2!55578)

(declare-fun lt!1931244 () Unit!138311)

(declare-fun lambda!224638 () Int)

(declare-fun forallContained!3869 (List!53634 Int tuple2!55578) Unit!138311)

(assert (=> b!4768288 (= lt!1931244 (forallContained!3869 (toList!6311 lt!1931247) lambda!224638 lt!1931245))))

(declare-fun lt!1931243 () Unit!138311)

(declare-fun lemmaInGenMapThenGetPairDefined!435 (ListLongMap!4709 K!14989 Hashable!6600) Unit!138311)

(assert (=> b!4768288 (= lt!1931243 (lemmaInGenMapThenGetPairDefined!435 lt!1931247 key!1776 (hashF!12473 thiss!42052)))))

(declare-fun lt!1931233 () Unit!138311)

(assert (=> b!4768288 (= lt!1931233 (forallContained!3869 (toList!6311 lt!1931247) lambda!224638 lt!1931245))))

(declare-fun contains!16866 (List!53634 tuple2!55578) Bool)

(assert (=> b!4768288 (contains!16866 (toList!6311 lt!1931247) lt!1931245)))

(assert (=> b!4768288 (= lt!1931245 (tuple2!55579 lt!1931249 lt!1931230))))

(declare-fun lt!1931238 () Unit!138311)

(declare-fun lemmaGetValueImpliesTupleContained!444 (ListLongMap!4709 (_ BitVec 64) List!53633) Unit!138311)

(assert (=> b!4768288 (= lt!1931238 (lemmaGetValueImpliesTupleContained!444 lt!1931247 lt!1931249 lt!1931230))))

(declare-fun apply!12644 (ListLongMap!4709 (_ BitVec 64)) List!53633)

(assert (=> b!4768288 (= lt!1931230 (apply!12644 lt!1931247 lt!1931249))))

(declare-fun contains!16867 (ListLongMap!4709 (_ BitVec 64)) Bool)

(assert (=> b!4768288 (contains!16867 lt!1931247 lt!1931249)))

(declare-fun lt!1931234 () Unit!138311)

(declare-fun lemmaInGenMapThenLongMapContainsHash!845 (ListLongMap!4709 K!14989 Hashable!6600) Unit!138311)

(assert (=> b!4768288 (= lt!1931234 (lemmaInGenMapThenLongMapContainsHash!845 lt!1931247 key!1776 (hashF!12473 thiss!42052)))))

(declare-fun lt!1931241 () Unit!138311)

(declare-fun lemmaGetPairGetSameValueAsMap!67 (ListLongMap!4709 K!14989 V!15235 Hashable!6600) Unit!138311)

(assert (=> b!4768288 (= lt!1931241 (lemmaGetPairGetSameValueAsMap!67 lt!1931247 key!1776 (_2!31082 lt!1931239) (hashF!12473 thiss!42052)))))

(assert (=> b!4768288 (= lt!1931239 (get!18065 (getPair!652 lt!1931237 key!1776)))))

(declare-fun lt!1931231 () Unit!138311)

(declare-fun lt!1931240 () tuple2!55578)

(assert (=> b!4768288 (= lt!1931231 (forallContained!3869 (toList!6311 lt!1931247) lambda!224638 lt!1931240))))

(declare-fun lt!1931235 () Unit!138311)

(assert (=> b!4768288 (= lt!1931235 e!2976342)))

(declare-fun c!813358 () Bool)

(assert (=> b!4768288 (= c!813358 (not (contains!16866 (toList!6311 lt!1931247) lt!1931240)))))

(assert (=> b!4768288 (= lt!1931240 (tuple2!55579 lt!1931249 lt!1931237))))

(declare-fun apply!12645 (MutLongMap!4939 (_ BitVec 64)) List!53633)

(assert (=> b!4768288 (= lt!1931237 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931249))))

(declare-fun map!12010 (MutLongMap!4939) ListLongMap!4709)

(assert (=> b!4768288 (= lt!1931247 (map!12010 (v!47740 (underlying!10086 thiss!42052))))))

(declare-fun hash!4580 (Hashable!6600 K!14989) (_ BitVec 64))

(assert (=> b!4768288 (= lt!1931249 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(declare-fun e!2976341 () Bool)

(declare-fun tp!1355834 () Bool)

(declare-fun tp!1355835 () Bool)

(declare-fun e!2976348 () Bool)

(declare-fun array_inv!5807 (array!18080) Bool)

(declare-fun array_inv!5808 (array!18082) Bool)

(assert (=> b!4768289 (= e!2976341 (and tp!1355831 tp!1355835 tp!1355834 (array_inv!5807 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) (array_inv!5808 (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) e!2976348))))

(declare-fun e!2976349 () Bool)

(assert (=> b!4768290 (= e!2976345 (and e!2976349 tp!1355830))))

(declare-fun b!4768291 () Bool)

(declare-fun tp!1355833 () Bool)

(assert (=> b!4768291 (= e!2976348 (and tp!1355833 mapRes!21909))))

(declare-fun condMapEmpty!21909 () Bool)

(declare-fun mapDefault!21909 () List!53633)

(assert (=> b!4768291 (= condMapEmpty!21909 (= (arr!8064 (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53633)) mapDefault!21909)))))

(declare-fun b!4768292 () Bool)

(declare-fun res!2022353 () Bool)

(assert (=> b!4768292 (=> (not res!2022353) (not e!2976347))))

(declare-fun valid!3944 (MutableMap!4823) Bool)

(assert (=> b!4768292 (= res!2022353 (valid!3944 thiss!42052))))

(declare-fun b!4768293 () Bool)

(assert (=> b!4768293 (= e!2976346 e!2976341)))

(declare-fun b!4768294 () Bool)

(declare-fun res!2022350 () Bool)

(assert (=> b!4768294 (=> (not res!2022350) (not e!2976347))))

(declare-fun contains!16868 (MutableMap!4823 K!14989) Bool)

(assert (=> b!4768294 (= res!2022350 (contains!16868 thiss!42052 key!1776))))

(declare-fun b!4768295 () Bool)

(declare-fun Unit!138314 () Unit!138311)

(assert (=> b!4768295 (= e!2976342 Unit!138314)))

(declare-fun b!4768296 () Bool)

(declare-fun lt!1931248 () MutLongMap!4939)

(assert (=> b!4768296 (= e!2976349 (and e!2976343 ((_ is LongMap!4939) lt!1931248)))))

(assert (=> b!4768296 (= lt!1931248 (v!47740 (underlying!10086 thiss!42052)))))

(assert (= (and start!487942 res!2022352) b!4768292))

(assert (= (and b!4768292 res!2022353) b!4768294))

(assert (= (and b!4768294 res!2022350) b!4768288))

(assert (= (and b!4768288 c!813358) b!4768287))

(assert (= (and b!4768288 (not c!813358)) b!4768295))

(assert (= (and b!4768288 res!2022354) b!4768285))

(assert (= (and b!4768288 (not res!2022351)) b!4768286))

(assert (= (and b!4768291 condMapEmpty!21909) mapIsEmpty!21909))

(assert (= (and b!4768291 (not condMapEmpty!21909)) mapNonEmpty!21909))

(assert (= b!4768289 b!4768291))

(assert (= b!4768293 b!4768289))

(assert (= b!4768284 b!4768293))

(assert (= (and b!4768296 ((_ is LongMap!4939) (v!47740 (underlying!10086 thiss!42052)))) b!4768284))

(assert (= b!4768290 b!4768296))

(assert (= (and start!487942 ((_ is HashMap!4823) thiss!42052)) b!4768290))

(declare-fun m!5739724 () Bool)

(assert (=> b!4768285 m!5739724))

(declare-fun m!5739726 () Bool)

(assert (=> b!4768285 m!5739726))

(declare-fun m!5739728 () Bool)

(assert (=> b!4768285 m!5739728))

(assert (=> b!4768285 m!5739728))

(declare-fun m!5739730 () Bool)

(assert (=> b!4768285 m!5739730))

(declare-fun m!5739732 () Bool)

(assert (=> b!4768292 m!5739732))

(declare-fun m!5739734 () Bool)

(assert (=> b!4768287 m!5739734))

(declare-fun m!5739736 () Bool)

(assert (=> b!4768287 m!5739736))

(assert (=> b!4768287 m!5739736))

(declare-fun m!5739738 () Bool)

(assert (=> b!4768287 m!5739738))

(declare-fun m!5739740 () Bool)

(assert (=> b!4768287 m!5739740))

(declare-fun m!5739742 () Bool)

(assert (=> b!4768286 m!5739742))

(declare-fun m!5739744 () Bool)

(assert (=> b!4768289 m!5739744))

(declare-fun m!5739746 () Bool)

(assert (=> b!4768289 m!5739746))

(declare-fun m!5739748 () Bool)

(assert (=> b!4768288 m!5739748))

(declare-fun m!5739750 () Bool)

(assert (=> b!4768288 m!5739750))

(declare-fun m!5739752 () Bool)

(assert (=> b!4768288 m!5739752))

(declare-fun m!5739754 () Bool)

(assert (=> b!4768288 m!5739754))

(declare-fun m!5739756 () Bool)

(assert (=> b!4768288 m!5739756))

(declare-fun m!5739758 () Bool)

(assert (=> b!4768288 m!5739758))

(declare-fun m!5739760 () Bool)

(assert (=> b!4768288 m!5739760))

(declare-fun m!5739762 () Bool)

(assert (=> b!4768288 m!5739762))

(declare-fun m!5739764 () Bool)

(assert (=> b!4768288 m!5739764))

(declare-fun m!5739766 () Bool)

(assert (=> b!4768288 m!5739766))

(declare-fun m!5739768 () Bool)

(assert (=> b!4768288 m!5739768))

(declare-fun m!5739770 () Bool)

(assert (=> b!4768288 m!5739770))

(assert (=> b!4768288 m!5739758))

(declare-fun m!5739772 () Bool)

(assert (=> b!4768288 m!5739772))

(declare-fun m!5739774 () Bool)

(assert (=> b!4768288 m!5739774))

(declare-fun m!5739776 () Bool)

(assert (=> b!4768288 m!5739776))

(declare-fun m!5739778 () Bool)

(assert (=> b!4768288 m!5739778))

(assert (=> b!4768288 m!5739768))

(declare-fun m!5739780 () Bool)

(assert (=> b!4768288 m!5739780))

(declare-fun m!5739782 () Bool)

(assert (=> b!4768288 m!5739782))

(declare-fun m!5739784 () Bool)

(assert (=> b!4768288 m!5739784))

(declare-fun m!5739786 () Bool)

(assert (=> b!4768288 m!5739786))

(declare-fun m!5739788 () Bool)

(assert (=> mapNonEmpty!21909 m!5739788))

(declare-fun m!5739790 () Bool)

(assert (=> b!4768294 m!5739790))

(check-sat (not mapNonEmpty!21909) (not b!4768292) (not b!4768294) (not b!4768286) (not b_next!130489) tp_is_empty!32479 (not b!4768289) (not b!4768285) (not b!4768291) b_and!341423 (not b!4768288) (not b_next!130491) b_and!341421 (not b!4768287))
(check-sat b_and!341423 b_and!341421 (not b_next!130491) (not b_next!130489))
(get-model)

(declare-fun d!1524113 () Bool)

(assert (=> d!1524113 (= (get!18066 lt!1931242) (v!47742 lt!1931242))))

(assert (=> b!4768288 d!1524113))

(declare-fun b!4768313 () Bool)

(declare-fun e!2976364 () Option!12704)

(assert (=> b!4768313 (= e!2976364 (getPair!652 (t!361063 lt!1931230) key!1776))))

(declare-fun b!4768315 () Bool)

(declare-fun e!2976362 () Bool)

(declare-fun lt!1931252 () Option!12704)

(declare-fun contains!16869 (List!53633 tuple2!55576) Bool)

(assert (=> b!4768315 (= e!2976362 (contains!16869 lt!1931230 (get!18065 lt!1931252)))))

(declare-fun b!4768316 () Bool)

(declare-fun e!2976361 () Bool)

(declare-fun containsKey!3672 (List!53633 K!14989) Bool)

(assert (=> b!4768316 (= e!2976361 (not (containsKey!3672 lt!1931230 key!1776)))))

(declare-fun b!4768317 () Bool)

(declare-fun e!2976365 () Option!12704)

(assert (=> b!4768317 (= e!2976365 (Some!12703 (h!59921 lt!1931230)))))

(declare-fun b!4768318 () Bool)

(declare-fun res!2022364 () Bool)

(assert (=> b!4768318 (=> (not res!2022364) (not e!2976362))))

(assert (=> b!4768318 (= res!2022364 (= (_1!31082 (get!18065 lt!1931252)) key!1776))))

(declare-fun b!4768319 () Bool)

(declare-fun e!2976363 () Bool)

(assert (=> b!4768319 (= e!2976363 e!2976362)))

(declare-fun res!2022365 () Bool)

(assert (=> b!4768319 (=> (not res!2022365) (not e!2976362))))

(assert (=> b!4768319 (= res!2022365 (isDefined!9857 lt!1931252))))

(declare-fun b!4768320 () Bool)

(assert (=> b!4768320 (= e!2976364 None!12703)))

(declare-fun d!1524115 () Bool)

(assert (=> d!1524115 e!2976363))

(declare-fun res!2022366 () Bool)

(assert (=> d!1524115 (=> res!2022366 e!2976363)))

(assert (=> d!1524115 (= res!2022366 e!2976361)))

(declare-fun res!2022363 () Bool)

(assert (=> d!1524115 (=> (not res!2022363) (not e!2976361))))

(declare-fun isEmpty!29287 (Option!12704) Bool)

(assert (=> d!1524115 (= res!2022363 (isEmpty!29287 lt!1931252))))

(assert (=> d!1524115 (= lt!1931252 e!2976365)))

(declare-fun c!813364 () Bool)

(assert (=> d!1524115 (= c!813364 (and ((_ is Cons!53509) lt!1931230) (= (_1!31082 (h!59921 lt!1931230)) key!1776)))))

(declare-fun noDuplicateKeys!2258 (List!53633) Bool)

(assert (=> d!1524115 (noDuplicateKeys!2258 lt!1931230)))

(assert (=> d!1524115 (= (getPair!652 lt!1931230 key!1776) lt!1931252)))

(declare-fun b!4768314 () Bool)

(assert (=> b!4768314 (= e!2976365 e!2976364)))

(declare-fun c!813363 () Bool)

(assert (=> b!4768314 (= c!813363 ((_ is Cons!53509) lt!1931230))))

(assert (= (and d!1524115 c!813364) b!4768317))

(assert (= (and d!1524115 (not c!813364)) b!4768314))

(assert (= (and b!4768314 c!813363) b!4768313))

(assert (= (and b!4768314 (not c!813363)) b!4768320))

(assert (= (and d!1524115 res!2022363) b!4768316))

(assert (= (and d!1524115 (not res!2022366)) b!4768319))

(assert (= (and b!4768319 res!2022365) b!4768318))

(assert (= (and b!4768318 res!2022364) b!4768315))

(declare-fun m!5739792 () Bool)

(assert (=> b!4768316 m!5739792))

(declare-fun m!5739794 () Bool)

(assert (=> b!4768315 m!5739794))

(assert (=> b!4768315 m!5739794))

(declare-fun m!5739796 () Bool)

(assert (=> b!4768315 m!5739796))

(assert (=> b!4768318 m!5739794))

(declare-fun m!5739798 () Bool)

(assert (=> b!4768313 m!5739798))

(declare-fun m!5739800 () Bool)

(assert (=> d!1524115 m!5739800))

(declare-fun m!5739802 () Bool)

(assert (=> d!1524115 m!5739802))

(declare-fun m!5739804 () Bool)

(assert (=> b!4768319 m!5739804))

(assert (=> b!4768288 d!1524115))

(declare-fun d!1524117 () Bool)

(declare-fun e!2976370 () Bool)

(assert (=> d!1524117 e!2976370))

(declare-fun res!2022369 () Bool)

(assert (=> d!1524117 (=> res!2022369 e!2976370)))

(declare-fun lt!1931261 () Bool)

(assert (=> d!1524117 (= res!2022369 (not lt!1931261))))

(declare-fun lt!1931264 () Bool)

(assert (=> d!1524117 (= lt!1931261 lt!1931264)))

(declare-fun lt!1931262 () Unit!138311)

(declare-fun e!2976371 () Unit!138311)

(assert (=> d!1524117 (= lt!1931262 e!2976371)))

(declare-fun c!813367 () Bool)

(assert (=> d!1524117 (= c!813367 lt!1931264)))

(declare-fun containsKey!3673 (List!53634 (_ BitVec 64)) Bool)

(assert (=> d!1524117 (= lt!1931264 (containsKey!3673 (toList!6311 lt!1931247) lt!1931249))))

(assert (=> d!1524117 (= (contains!16867 lt!1931247 lt!1931249) lt!1931261)))

(declare-fun b!4768327 () Bool)

(declare-fun lt!1931263 () Unit!138311)

(assert (=> b!4768327 (= e!2976371 lt!1931263)))

(assert (=> b!4768327 (= lt!1931263 (lemmaContainsKeyImpliesGetValueByKeyDefined!1997 (toList!6311 lt!1931247) lt!1931249))))

(assert (=> b!4768327 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249))))

(declare-fun b!4768328 () Bool)

(declare-fun Unit!138315 () Unit!138311)

(assert (=> b!4768328 (= e!2976371 Unit!138315)))

(declare-fun b!4768329 () Bool)

(assert (=> b!4768329 (= e!2976370 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249)))))

(assert (= (and d!1524117 c!813367) b!4768327))

(assert (= (and d!1524117 (not c!813367)) b!4768328))

(assert (= (and d!1524117 (not res!2022369)) b!4768329))

(declare-fun m!5739806 () Bool)

(assert (=> d!1524117 m!5739806))

(assert (=> b!4768327 m!5739734))

(assert (=> b!4768327 m!5739736))

(assert (=> b!4768327 m!5739736))

(assert (=> b!4768327 m!5739738))

(assert (=> b!4768329 m!5739736))

(assert (=> b!4768329 m!5739736))

(assert (=> b!4768329 m!5739738))

(assert (=> b!4768288 d!1524117))

(declare-fun bs!1149160 () Bool)

(declare-fun d!1524119 () Bool)

(assert (= bs!1149160 (and d!1524119 b!4768288)))

(declare-fun lambda!224651 () Int)

(assert (=> bs!1149160 (= lambda!224651 lambda!224638)))

(declare-fun b!4768350 () Bool)

(declare-fun res!2022392 () Bool)

(declare-fun e!2976384 () Bool)

(assert (=> b!4768350 (=> (not res!2022392) (not e!2976384))))

(declare-fun allKeysSameHashInMap!2025 (ListLongMap!4709 Hashable!6600) Bool)

(assert (=> b!4768350 (= res!2022392 (allKeysSameHashInMap!2025 lt!1931247 (hashF!12473 thiss!42052)))))

(declare-fun b!4768351 () Bool)

(declare-fun res!2022394 () Bool)

(declare-fun e!2976385 () Bool)

(assert (=> b!4768351 (=> (not res!2022394) (not e!2976385))))

(declare-fun contains!16870 (ListMap!5807 K!14989) Bool)

(assert (=> b!4768351 (= res!2022394 (contains!16870 (extractMap!2155 (toList!6311 lt!1931247)) key!1776))))

(declare-fun lt!1931302 () (_ BitVec 64))

(declare-fun b!4768352 () Bool)

(declare-fun lt!1931299 () List!53633)

(declare-fun e!2976383 () Bool)

(assert (=> b!4768352 (= e!2976383 (= (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931302) (Some!12705 lt!1931299)))))

(assert (=> d!1524119 e!2976385))

(declare-fun res!2022397 () Bool)

(assert (=> d!1524119 (=> (not res!2022397) (not e!2976385))))

(declare-fun forall!11880 (List!53634 Int) Bool)

(assert (=> d!1524119 (= res!2022397 (forall!11880 (toList!6311 lt!1931247) lambda!224651))))

(declare-fun lt!1931315 () Unit!138311)

(declare-fun choose!33996 (ListLongMap!4709 K!14989 V!15235 Hashable!6600) Unit!138311)

(assert (=> d!1524119 (= lt!1931315 (choose!33996 lt!1931247 key!1776 (_2!31082 lt!1931239) (hashF!12473 thiss!42052)))))

(assert (=> d!1524119 (forall!11880 (toList!6311 lt!1931247) lambda!224651)))

(assert (=> d!1524119 (= (lemmaGetPairGetSameValueAsMap!67 lt!1931247 key!1776 (_2!31082 lt!1931239) (hashF!12473 thiss!42052)) lt!1931315)))

(declare-fun b!4768353 () Bool)

(declare-fun res!2022391 () Bool)

(declare-fun e!2976386 () Bool)

(assert (=> b!4768353 (=> (not res!2022391) (not e!2976386))))

(assert (=> b!4768353 (= res!2022391 (allKeysSameHashInMap!2025 lt!1931247 (hashF!12473 thiss!42052)))))

(declare-fun e!2976382 () Bool)

(declare-fun lt!1931303 () (_ BitVec 64))

(declare-fun lt!1931301 () List!53633)

(declare-fun b!4768354 () Bool)

(assert (=> b!4768354 (= e!2976382 (= (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931303) (Some!12705 lt!1931301)))))

(declare-fun b!4768355 () Bool)

(declare-fun res!2022390 () Bool)

(assert (=> b!4768355 (=> (not res!2022390) (not e!2976385))))

(assert (=> b!4768355 (= res!2022390 (allKeysSameHashInMap!2025 lt!1931247 (hashF!12473 thiss!42052)))))

(declare-fun b!4768356 () Bool)

(assert (=> b!4768356 (= e!2976386 (isDefined!9857 (getPair!652 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1931300 () Unit!138311)

(assert (=> b!4768356 (= lt!1931300 (forallContained!3869 (toList!6311 lt!1931247) lambda!224651 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))))

(declare-fun lt!1931308 () Unit!138311)

(declare-fun lt!1931310 () Unit!138311)

(assert (=> b!4768356 (= lt!1931308 lt!1931310)))

(assert (=> b!4768356 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931302 lt!1931299))))

(assert (=> b!4768356 (= lt!1931310 (lemmaGetValueImpliesTupleContained!444 lt!1931247 lt!1931302 lt!1931299))))

(assert (=> b!4768356 e!2976383))

(declare-fun res!2022398 () Bool)

(assert (=> b!4768356 (=> (not res!2022398) (not e!2976383))))

(assert (=> b!4768356 (= res!2022398 (contains!16867 lt!1931247 lt!1931302))))

(assert (=> b!4768356 (= lt!1931299 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))

(assert (=> b!4768356 (= lt!1931302 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(declare-fun lt!1931307 () Unit!138311)

(declare-fun lt!1931305 () Unit!138311)

(assert (=> b!4768356 (= lt!1931307 lt!1931305)))

(assert (=> b!4768356 (contains!16867 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(assert (=> b!4768356 (= lt!1931305 (lemmaInGenMapThenLongMapContainsHash!845 lt!1931247 key!1776 (hashF!12473 thiss!42052)))))

(declare-fun b!4768357 () Bool)

(declare-fun res!2022395 () Bool)

(assert (=> b!4768357 (=> (not res!2022395) (not e!2976386))))

(assert (=> b!4768357 (= res!2022395 (contains!16870 (extractMap!2155 (toList!6311 lt!1931247)) key!1776))))

(declare-fun b!4768358 () Bool)

(assert (=> b!4768358 (= e!2976384 (contains!16870 (extractMap!2155 (toList!6311 lt!1931247)) key!1776))))

(declare-fun b!4768359 () Bool)

(assert (=> b!4768359 (= e!2976385 (= (_2!31082 (get!18065 (getPair!652 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776))) (get!18066 (getValueByKey!2200 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776))))))

(declare-fun lt!1931306 () Unit!138311)

(declare-fun lt!1931304 () Unit!138311)

(assert (=> b!4768359 (= lt!1931306 lt!1931304)))

(assert (=> b!4768359 e!2976386))

(declare-fun res!2022393 () Bool)

(assert (=> b!4768359 (=> (not res!2022393) (not e!2976386))))

(assert (=> b!4768359 (= res!2022393 (forall!11880 (toList!6311 lt!1931247) lambda!224651))))

(assert (=> b!4768359 (= lt!1931304 (lemmaInGenMapThenGetPairDefined!435 lt!1931247 key!1776 (hashF!12473 thiss!42052)))))

(assert (=> b!4768359 e!2976384))

(declare-fun res!2022399 () Bool)

(assert (=> b!4768359 (=> (not res!2022399) (not e!2976384))))

(assert (=> b!4768359 (= res!2022399 (forall!11880 (toList!6311 lt!1931247) lambda!224651))))

(declare-fun lt!1931313 () Unit!138311)

(assert (=> b!4768359 (= lt!1931313 (forallContained!3869 (toList!6311 lt!1931247) lambda!224651 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))))

(declare-fun lt!1931314 () Unit!138311)

(declare-fun lt!1931309 () Unit!138311)

(assert (=> b!4768359 (= lt!1931314 lt!1931309)))

(assert (=> b!4768359 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931303 lt!1931301))))

(assert (=> b!4768359 (= lt!1931309 (lemmaGetValueImpliesTupleContained!444 lt!1931247 lt!1931303 lt!1931301))))

(assert (=> b!4768359 e!2976382))

(declare-fun res!2022396 () Bool)

(assert (=> b!4768359 (=> (not res!2022396) (not e!2976382))))

(assert (=> b!4768359 (= res!2022396 (contains!16867 lt!1931247 lt!1931303))))

(assert (=> b!4768359 (= lt!1931301 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))

(assert (=> b!4768359 (= lt!1931303 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(declare-fun lt!1931311 () Unit!138311)

(declare-fun lt!1931312 () Unit!138311)

(assert (=> b!4768359 (= lt!1931311 lt!1931312)))

(assert (=> b!4768359 (contains!16867 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(assert (=> b!4768359 (= lt!1931312 (lemmaInGenMapThenLongMapContainsHash!845 lt!1931247 key!1776 (hashF!12473 thiss!42052)))))

(assert (= (and d!1524119 res!2022397) b!4768355))

(assert (= (and b!4768355 res!2022390) b!4768351))

(assert (= (and b!4768351 res!2022394) b!4768359))

(assert (= (and b!4768359 res!2022396) b!4768354))

(assert (= (and b!4768359 res!2022399) b!4768350))

(assert (= (and b!4768350 res!2022392) b!4768358))

(assert (= (and b!4768359 res!2022393) b!4768353))

(assert (= (and b!4768353 res!2022391) b!4768357))

(assert (= (and b!4768357 res!2022395) b!4768356))

(assert (= (and b!4768356 res!2022398) b!4768352))

(assert (=> b!4768351 m!5739726))

(assert (=> b!4768351 m!5739726))

(declare-fun m!5739808 () Bool)

(assert (=> b!4768351 m!5739808))

(declare-fun m!5739810 () Bool)

(assert (=> b!4768350 m!5739810))

(assert (=> b!4768359 m!5739776))

(declare-fun m!5739812 () Bool)

(assert (=> b!4768359 m!5739812))

(declare-fun m!5739814 () Bool)

(assert (=> b!4768359 m!5739814))

(assert (=> b!4768359 m!5739726))

(assert (=> b!4768359 m!5739776))

(declare-fun m!5739816 () Bool)

(assert (=> b!4768359 m!5739816))

(declare-fun m!5739818 () Bool)

(assert (=> b!4768359 m!5739818))

(assert (=> b!4768359 m!5739728))

(assert (=> b!4768359 m!5739778))

(assert (=> b!4768359 m!5739748))

(declare-fun m!5739820 () Bool)

(assert (=> b!4768359 m!5739820))

(assert (=> b!4768359 m!5739776))

(declare-fun m!5739822 () Bool)

(assert (=> b!4768359 m!5739822))

(declare-fun m!5739824 () Bool)

(assert (=> b!4768359 m!5739824))

(declare-fun m!5739826 () Bool)

(assert (=> b!4768359 m!5739826))

(assert (=> b!4768359 m!5739814))

(declare-fun m!5739828 () Bool)

(assert (=> b!4768359 m!5739828))

(assert (=> b!4768359 m!5739728))

(assert (=> b!4768359 m!5739730))

(assert (=> b!4768359 m!5739816))

(assert (=> b!4768359 m!5739822))

(assert (=> b!4768357 m!5739726))

(assert (=> b!4768357 m!5739726))

(assert (=> b!4768357 m!5739808))

(declare-fun m!5739830 () Bool)

(assert (=> b!4768352 m!5739830))

(assert (=> b!4768355 m!5739810))

(declare-fun m!5739832 () Bool)

(assert (=> b!4768354 m!5739832))

(assert (=> b!4768356 m!5739776))

(assert (=> b!4768356 m!5739812))

(assert (=> b!4768356 m!5739822))

(declare-fun m!5739834 () Bool)

(assert (=> b!4768356 m!5739834))

(assert (=> b!4768356 m!5739820))

(assert (=> b!4768356 m!5739776))

(assert (=> b!4768356 m!5739776))

(assert (=> b!4768356 m!5739816))

(declare-fun m!5739836 () Bool)

(assert (=> b!4768356 m!5739836))

(assert (=> b!4768356 m!5739816))

(assert (=> b!4768356 m!5739822))

(declare-fun m!5739838 () Bool)

(assert (=> b!4768356 m!5739838))

(declare-fun m!5739840 () Bool)

(assert (=> b!4768356 m!5739840))

(assert (=> b!4768356 m!5739748))

(assert (=> d!1524119 m!5739814))

(declare-fun m!5739842 () Bool)

(assert (=> d!1524119 m!5739842))

(assert (=> d!1524119 m!5739814))

(assert (=> b!4768353 m!5739810))

(assert (=> b!4768358 m!5739726))

(assert (=> b!4768358 m!5739726))

(assert (=> b!4768358 m!5739808))

(assert (=> b!4768288 d!1524119))

(declare-fun bs!1149161 () Bool)

(declare-fun d!1524121 () Bool)

(assert (= bs!1149161 (and d!1524121 b!4768288)))

(declare-fun lambda!224658 () Int)

(assert (=> bs!1149161 (= lambda!224658 lambda!224638)))

(declare-fun bs!1149162 () Bool)

(assert (= bs!1149162 (and d!1524121 d!1524119)))

(assert (=> bs!1149162 (= lambda!224658 lambda!224651)))

(declare-fun b!4768368 () Bool)

(declare-fun res!2022411 () Bool)

(declare-fun e!2976391 () Bool)

(assert (=> b!4768368 (=> (not res!2022411) (not e!2976391))))

(assert (=> b!4768368 (= res!2022411 (allKeysSameHashInMap!2025 lt!1931247 (hashF!12473 thiss!42052)))))

(declare-fun b!4768370 () Bool)

(assert (=> b!4768370 (= e!2976391 (isDefined!9857 (getPair!652 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1931332 () Unit!138311)

(assert (=> b!4768370 (= lt!1931332 (forallContained!3869 (toList!6311 lt!1931247) lambda!224658 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))))

(declare-fun lt!1931333 () Unit!138311)

(declare-fun lt!1931339 () Unit!138311)

(assert (=> b!4768370 (= lt!1931333 lt!1931339)))

(declare-fun lt!1931338 () (_ BitVec 64))

(declare-fun lt!1931337 () List!53633)

(assert (=> b!4768370 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931338 lt!1931337))))

(assert (=> b!4768370 (= lt!1931339 (lemmaGetValueImpliesTupleContained!444 lt!1931247 lt!1931338 lt!1931337))))

(declare-fun e!2976392 () Bool)

(assert (=> b!4768370 e!2976392))

(declare-fun res!2022408 () Bool)

(assert (=> b!4768370 (=> (not res!2022408) (not e!2976392))))

(assert (=> b!4768370 (= res!2022408 (contains!16867 lt!1931247 lt!1931338))))

(assert (=> b!4768370 (= lt!1931337 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))

(assert (=> b!4768370 (= lt!1931338 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(declare-fun lt!1931334 () Unit!138311)

(declare-fun lt!1931336 () Unit!138311)

(assert (=> b!4768370 (= lt!1931334 lt!1931336)))

(assert (=> b!4768370 (contains!16867 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(assert (=> b!4768370 (= lt!1931336 (lemmaInGenMapThenLongMapContainsHash!845 lt!1931247 key!1776 (hashF!12473 thiss!42052)))))

(declare-fun b!4768369 () Bool)

(declare-fun res!2022409 () Bool)

(assert (=> b!4768369 (=> (not res!2022409) (not e!2976391))))

(assert (=> b!4768369 (= res!2022409 (contains!16870 (extractMap!2155 (toList!6311 lt!1931247)) key!1776))))

(assert (=> d!1524121 e!2976391))

(declare-fun res!2022410 () Bool)

(assert (=> d!1524121 (=> (not res!2022410) (not e!2976391))))

(assert (=> d!1524121 (= res!2022410 (forall!11880 (toList!6311 lt!1931247) lambda!224658))))

(declare-fun lt!1931335 () Unit!138311)

(declare-fun choose!33997 (ListLongMap!4709 K!14989 Hashable!6600) Unit!138311)

(assert (=> d!1524121 (= lt!1931335 (choose!33997 lt!1931247 key!1776 (hashF!12473 thiss!42052)))))

(assert (=> d!1524121 (forall!11880 (toList!6311 lt!1931247) lambda!224658)))

(assert (=> d!1524121 (= (lemmaInGenMapThenGetPairDefined!435 lt!1931247 key!1776 (hashF!12473 thiss!42052)) lt!1931335)))

(declare-fun b!4768371 () Bool)

(assert (=> b!4768371 (= e!2976392 (= (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931338) (Some!12705 lt!1931337)))))

(assert (= (and d!1524121 res!2022410) b!4768368))

(assert (= (and b!4768368 res!2022411) b!4768369))

(assert (= (and b!4768369 res!2022409) b!4768370))

(assert (= (and b!4768370 res!2022408) b!4768371))

(assert (=> b!4768368 m!5739810))

(declare-fun m!5739844 () Bool)

(assert (=> b!4768371 m!5739844))

(declare-fun m!5739846 () Bool)

(assert (=> d!1524121 m!5739846))

(declare-fun m!5739848 () Bool)

(assert (=> d!1524121 m!5739848))

(assert (=> d!1524121 m!5739846))

(declare-fun m!5739850 () Bool)

(assert (=> b!4768370 m!5739850))

(assert (=> b!4768370 m!5739748))

(declare-fun m!5739852 () Bool)

(assert (=> b!4768370 m!5739852))

(assert (=> b!4768370 m!5739776))

(assert (=> b!4768370 m!5739822))

(assert (=> b!4768370 m!5739834))

(declare-fun m!5739854 () Bool)

(assert (=> b!4768370 m!5739854))

(assert (=> b!4768370 m!5739776))

(assert (=> b!4768370 m!5739816))

(assert (=> b!4768370 m!5739776))

(assert (=> b!4768370 m!5739812))

(assert (=> b!4768370 m!5739816))

(assert (=> b!4768370 m!5739822))

(declare-fun m!5739856 () Bool)

(assert (=> b!4768370 m!5739856))

(assert (=> b!4768369 m!5739726))

(assert (=> b!4768369 m!5739726))

(assert (=> b!4768369 m!5739808))

(assert (=> b!4768288 d!1524121))

(declare-fun d!1524123 () Bool)

(assert (=> d!1524123 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931249 lt!1931230))))

(declare-fun lt!1931342 () Unit!138311)

(declare-fun choose!33998 (ListLongMap!4709 (_ BitVec 64) List!53633) Unit!138311)

(assert (=> d!1524123 (= lt!1931342 (choose!33998 lt!1931247 lt!1931249 lt!1931230))))

(assert (=> d!1524123 (contains!16867 lt!1931247 lt!1931249)))

(assert (=> d!1524123 (= (lemmaGetValueImpliesTupleContained!444 lt!1931247 lt!1931249 lt!1931230) lt!1931342)))

(declare-fun bs!1149163 () Bool)

(assert (= bs!1149163 d!1524123))

(declare-fun m!5739858 () Bool)

(assert (=> bs!1149163 m!5739858))

(declare-fun m!5739860 () Bool)

(assert (=> bs!1149163 m!5739860))

(assert (=> bs!1149163 m!5739756))

(assert (=> b!4768288 d!1524123))

(declare-fun b!4768373 () Bool)

(declare-fun e!2976396 () Option!12704)

(assert (=> b!4768373 (= e!2976396 (getPair!652 (t!361063 lt!1931237) key!1776))))

(declare-fun b!4768375 () Bool)

(declare-fun e!2976394 () Bool)

(declare-fun lt!1931343 () Option!12704)

(assert (=> b!4768375 (= e!2976394 (contains!16869 lt!1931237 (get!18065 lt!1931343)))))

(declare-fun b!4768376 () Bool)

(declare-fun e!2976393 () Bool)

(assert (=> b!4768376 (= e!2976393 (not (containsKey!3672 lt!1931237 key!1776)))))

(declare-fun b!4768377 () Bool)

(declare-fun e!2976397 () Option!12704)

(assert (=> b!4768377 (= e!2976397 (Some!12703 (h!59921 lt!1931237)))))

(declare-fun b!4768378 () Bool)

(declare-fun res!2022413 () Bool)

(assert (=> b!4768378 (=> (not res!2022413) (not e!2976394))))

(assert (=> b!4768378 (= res!2022413 (= (_1!31082 (get!18065 lt!1931343)) key!1776))))

(declare-fun b!4768379 () Bool)

(declare-fun e!2976395 () Bool)

(assert (=> b!4768379 (= e!2976395 e!2976394)))

(declare-fun res!2022414 () Bool)

(assert (=> b!4768379 (=> (not res!2022414) (not e!2976394))))

(assert (=> b!4768379 (= res!2022414 (isDefined!9857 lt!1931343))))

(declare-fun b!4768380 () Bool)

(assert (=> b!4768380 (= e!2976396 None!12703)))

(declare-fun d!1524125 () Bool)

(assert (=> d!1524125 e!2976395))

(declare-fun res!2022415 () Bool)

(assert (=> d!1524125 (=> res!2022415 e!2976395)))

(assert (=> d!1524125 (= res!2022415 e!2976393)))

(declare-fun res!2022412 () Bool)

(assert (=> d!1524125 (=> (not res!2022412) (not e!2976393))))

(assert (=> d!1524125 (= res!2022412 (isEmpty!29287 lt!1931343))))

(assert (=> d!1524125 (= lt!1931343 e!2976397)))

(declare-fun c!813369 () Bool)

(assert (=> d!1524125 (= c!813369 (and ((_ is Cons!53509) lt!1931237) (= (_1!31082 (h!59921 lt!1931237)) key!1776)))))

(assert (=> d!1524125 (noDuplicateKeys!2258 lt!1931237)))

(assert (=> d!1524125 (= (getPair!652 lt!1931237 key!1776) lt!1931343)))

(declare-fun b!4768374 () Bool)

(assert (=> b!4768374 (= e!2976397 e!2976396)))

(declare-fun c!813368 () Bool)

(assert (=> b!4768374 (= c!813368 ((_ is Cons!53509) lt!1931237))))

(assert (= (and d!1524125 c!813369) b!4768377))

(assert (= (and d!1524125 (not c!813369)) b!4768374))

(assert (= (and b!4768374 c!813368) b!4768373))

(assert (= (and b!4768374 (not c!813368)) b!4768380))

(assert (= (and d!1524125 res!2022412) b!4768376))

(assert (= (and d!1524125 (not res!2022415)) b!4768379))

(assert (= (and b!4768379 res!2022414) b!4768378))

(assert (= (and b!4768378 res!2022413) b!4768375))

(declare-fun m!5739862 () Bool)

(assert (=> b!4768376 m!5739862))

(declare-fun m!5739864 () Bool)

(assert (=> b!4768375 m!5739864))

(assert (=> b!4768375 m!5739864))

(declare-fun m!5739866 () Bool)

(assert (=> b!4768375 m!5739866))

(assert (=> b!4768378 m!5739864))

(declare-fun m!5739868 () Bool)

(assert (=> b!4768373 m!5739868))

(declare-fun m!5739870 () Bool)

(assert (=> d!1524125 m!5739870))

(declare-fun m!5739872 () Bool)

(assert (=> d!1524125 m!5739872))

(declare-fun m!5739874 () Bool)

(assert (=> b!4768379 m!5739874))

(assert (=> b!4768288 d!1524125))

(declare-fun d!1524127 () Bool)

(assert (=> d!1524127 (= (get!18065 (getPair!652 lt!1931237 key!1776)) (v!47741 (getPair!652 lt!1931237 key!1776)))))

(assert (=> b!4768288 d!1524127))

(declare-fun b!4768389 () Bool)

(declare-fun e!2976402 () Option!12705)

(assert (=> b!4768389 (= e!2976402 (Some!12704 (_2!31082 (h!59921 (toList!6312 (map!12009 thiss!42052))))))))

(declare-fun d!1524129 () Bool)

(declare-fun c!813374 () Bool)

(assert (=> d!1524129 (= c!813374 (and ((_ is Cons!53509) (toList!6312 (map!12009 thiss!42052))) (= (_1!31082 (h!59921 (toList!6312 (map!12009 thiss!42052)))) key!1776)))))

(assert (=> d!1524129 (= (getValueByKey!2200 (toList!6312 (map!12009 thiss!42052)) key!1776) e!2976402)))

(declare-fun b!4768390 () Bool)

(declare-fun e!2976403 () Option!12705)

(assert (=> b!4768390 (= e!2976402 e!2976403)))

(declare-fun c!813375 () Bool)

(assert (=> b!4768390 (= c!813375 (and ((_ is Cons!53509) (toList!6312 (map!12009 thiss!42052))) (not (= (_1!31082 (h!59921 (toList!6312 (map!12009 thiss!42052)))) key!1776))))))

(declare-fun b!4768391 () Bool)

(assert (=> b!4768391 (= e!2976403 (getValueByKey!2200 (t!361063 (toList!6312 (map!12009 thiss!42052))) key!1776))))

(declare-fun b!4768392 () Bool)

(assert (=> b!4768392 (= e!2976403 None!12704)))

(assert (= (and d!1524129 c!813374) b!4768389))

(assert (= (and d!1524129 (not c!813374)) b!4768390))

(assert (= (and b!4768390 c!813375) b!4768391))

(assert (= (and b!4768390 (not c!813375)) b!4768392))

(declare-fun m!5739876 () Bool)

(assert (=> b!4768391 m!5739876))

(assert (=> b!4768288 d!1524129))

(declare-fun d!1524131 () Bool)

(declare-fun get!18067 (Option!12706) List!53633)

(assert (=> d!1524131 (= (apply!12644 lt!1931247 lt!1931249) (get!18067 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249)))))

(declare-fun bs!1149164 () Bool)

(assert (= bs!1149164 d!1524131))

(assert (=> bs!1149164 m!5739736))

(assert (=> bs!1149164 m!5739736))

(declare-fun m!5739878 () Bool)

(assert (=> bs!1149164 m!5739878))

(assert (=> b!4768288 d!1524131))

(declare-fun d!1524133 () Bool)

(declare-fun dynLambda!21958 (Int tuple2!55578) Bool)

(assert (=> d!1524133 (dynLambda!21958 lambda!224638 lt!1931245)))

(declare-fun lt!1931346 () Unit!138311)

(declare-fun choose!33999 (List!53634 Int tuple2!55578) Unit!138311)

(assert (=> d!1524133 (= lt!1931346 (choose!33999 (toList!6311 lt!1931247) lambda!224638 lt!1931245))))

(declare-fun e!2976406 () Bool)

(assert (=> d!1524133 e!2976406))

(declare-fun res!2022418 () Bool)

(assert (=> d!1524133 (=> (not res!2022418) (not e!2976406))))

(assert (=> d!1524133 (= res!2022418 (forall!11880 (toList!6311 lt!1931247) lambda!224638))))

(assert (=> d!1524133 (= (forallContained!3869 (toList!6311 lt!1931247) lambda!224638 lt!1931245) lt!1931346)))

(declare-fun b!4768395 () Bool)

(assert (=> b!4768395 (= e!2976406 (contains!16866 (toList!6311 lt!1931247) lt!1931245))))

(assert (= (and d!1524133 res!2022418) b!4768395))

(declare-fun b_lambda!184451 () Bool)

(assert (=> (not b_lambda!184451) (not d!1524133)))

(declare-fun m!5739880 () Bool)

(assert (=> d!1524133 m!5739880))

(declare-fun m!5739882 () Bool)

(assert (=> d!1524133 m!5739882))

(declare-fun m!5739884 () Bool)

(assert (=> d!1524133 m!5739884))

(assert (=> b!4768395 m!5739762))

(assert (=> b!4768288 d!1524133))

(declare-fun d!1524135 () Bool)

(declare-fun map!12011 (LongMapFixedSize!9878) ListLongMap!4709)

(assert (=> d!1524135 (= (map!12010 (v!47740 (underlying!10086 thiss!42052))) (map!12011 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))))))

(declare-fun bs!1149165 () Bool)

(assert (= bs!1149165 d!1524135))

(declare-fun m!5739886 () Bool)

(assert (=> bs!1149165 m!5739886))

(assert (=> b!4768288 d!1524135))

(declare-fun d!1524137 () Bool)

(declare-fun lt!1931349 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9591 (List!53634) (InoxSet tuple2!55578))

(assert (=> d!1524137 (= lt!1931349 (select (content!9591 (toList!6311 lt!1931247)) lt!1931240))))

(declare-fun e!2976412 () Bool)

(assert (=> d!1524137 (= lt!1931349 e!2976412)))

(declare-fun res!2022423 () Bool)

(assert (=> d!1524137 (=> (not res!2022423) (not e!2976412))))

(assert (=> d!1524137 (= res!2022423 ((_ is Cons!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524137 (= (contains!16866 (toList!6311 lt!1931247) lt!1931240) lt!1931349)))

(declare-fun b!4768400 () Bool)

(declare-fun e!2976411 () Bool)

(assert (=> b!4768400 (= e!2976412 e!2976411)))

(declare-fun res!2022424 () Bool)

(assert (=> b!4768400 (=> res!2022424 e!2976411)))

(assert (=> b!4768400 (= res!2022424 (= (h!59922 (toList!6311 lt!1931247)) lt!1931240))))

(declare-fun b!4768401 () Bool)

(assert (=> b!4768401 (= e!2976411 (contains!16866 (t!361064 (toList!6311 lt!1931247)) lt!1931240))))

(assert (= (and d!1524137 res!2022423) b!4768400))

(assert (= (and b!4768400 (not res!2022424)) b!4768401))

(declare-fun m!5739888 () Bool)

(assert (=> d!1524137 m!5739888))

(declare-fun m!5739890 () Bool)

(assert (=> d!1524137 m!5739890))

(declare-fun m!5739892 () Bool)

(assert (=> b!4768401 m!5739892))

(assert (=> b!4768288 d!1524137))

(declare-fun d!1524139 () Bool)

(declare-fun lt!1931352 () ListMap!5807)

(declare-fun invariantList!1664 (List!53633) Bool)

(assert (=> d!1524139 (invariantList!1664 (toList!6312 lt!1931352))))

(assert (=> d!1524139 (= lt!1931352 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))))))

(assert (=> d!1524139 (valid!3944 thiss!42052)))

(assert (=> d!1524139 (= (map!12009 thiss!42052) lt!1931352)))

(declare-fun bs!1149166 () Bool)

(assert (= bs!1149166 d!1524139))

(declare-fun m!5739894 () Bool)

(assert (=> bs!1149166 m!5739894))

(assert (=> bs!1149166 m!5739760))

(declare-fun m!5739896 () Bool)

(assert (=> bs!1149166 m!5739896))

(assert (=> bs!1149166 m!5739732))

(assert (=> b!4768288 d!1524139))

(declare-fun bs!1149167 () Bool)

(declare-fun d!1524141 () Bool)

(assert (= bs!1149167 (and d!1524141 b!4768288)))

(declare-fun lambda!224661 () Int)

(assert (=> bs!1149167 (= lambda!224661 lambda!224638)))

(declare-fun bs!1149168 () Bool)

(assert (= bs!1149168 (and d!1524141 d!1524119)))

(assert (=> bs!1149168 (= lambda!224661 lambda!224651)))

(declare-fun bs!1149169 () Bool)

(assert (= bs!1149169 (and d!1524141 d!1524121)))

(assert (=> bs!1149169 (= lambda!224661 lambda!224658)))

(assert (=> d!1524141 (contains!16867 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(declare-fun lt!1931355 () Unit!138311)

(declare-fun choose!34000 (ListLongMap!4709 K!14989 Hashable!6600) Unit!138311)

(assert (=> d!1524141 (= lt!1931355 (choose!34000 lt!1931247 key!1776 (hashF!12473 thiss!42052)))))

(assert (=> d!1524141 (forall!11880 (toList!6311 lt!1931247) lambda!224661)))

(assert (=> d!1524141 (= (lemmaInGenMapThenLongMapContainsHash!845 lt!1931247 key!1776 (hashF!12473 thiss!42052)) lt!1931355)))

(declare-fun bs!1149170 () Bool)

(assert (= bs!1149170 d!1524141))

(assert (=> bs!1149170 m!5739776))

(assert (=> bs!1149170 m!5739776))

(assert (=> bs!1149170 m!5739812))

(declare-fun m!5739898 () Bool)

(assert (=> bs!1149170 m!5739898))

(declare-fun m!5739900 () Bool)

(assert (=> bs!1149170 m!5739900))

(assert (=> b!4768288 d!1524141))

(declare-fun d!1524143 () Bool)

(declare-fun hash!4581 (Hashable!6600 K!14989) (_ BitVec 64))

(assert (=> d!1524143 (= (hash!4580 (hashF!12473 thiss!42052) key!1776) (hash!4581 (hashF!12473 thiss!42052) key!1776))))

(declare-fun bs!1149171 () Bool)

(assert (= bs!1149171 d!1524143))

(declare-fun m!5739902 () Bool)

(assert (=> bs!1149171 m!5739902))

(assert (=> b!4768288 d!1524143))

(declare-fun d!1524145 () Bool)

(assert (=> d!1524145 (= (isDefined!9857 lt!1931246) (not (isEmpty!29287 lt!1931246)))))

(declare-fun bs!1149172 () Bool)

(assert (= bs!1149172 d!1524145))

(declare-fun m!5739904 () Bool)

(assert (=> bs!1149172 m!5739904))

(assert (=> b!4768288 d!1524145))

(declare-fun d!1524147 () Bool)

(declare-fun lt!1931356 () Bool)

(assert (=> d!1524147 (= lt!1931356 (select (content!9591 (toList!6311 lt!1931247)) lt!1931245))))

(declare-fun e!2976414 () Bool)

(assert (=> d!1524147 (= lt!1931356 e!2976414)))

(declare-fun res!2022425 () Bool)

(assert (=> d!1524147 (=> (not res!2022425) (not e!2976414))))

(assert (=> d!1524147 (= res!2022425 ((_ is Cons!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524147 (= (contains!16866 (toList!6311 lt!1931247) lt!1931245) lt!1931356)))

(declare-fun b!4768402 () Bool)

(declare-fun e!2976413 () Bool)

(assert (=> b!4768402 (= e!2976414 e!2976413)))

(declare-fun res!2022426 () Bool)

(assert (=> b!4768402 (=> res!2022426 e!2976413)))

(assert (=> b!4768402 (= res!2022426 (= (h!59922 (toList!6311 lt!1931247)) lt!1931245))))

(declare-fun b!4768403 () Bool)

(assert (=> b!4768403 (= e!2976413 (contains!16866 (t!361064 (toList!6311 lt!1931247)) lt!1931245))))

(assert (= (and d!1524147 res!2022425) b!4768402))

(assert (= (and b!4768402 (not res!2022426)) b!4768403))

(assert (=> d!1524147 m!5739888))

(declare-fun m!5739906 () Bool)

(assert (=> d!1524147 m!5739906))

(declare-fun m!5739908 () Bool)

(assert (=> b!4768403 m!5739908))

(assert (=> b!4768288 d!1524147))

(declare-fun d!1524149 () Bool)

(declare-fun e!2976417 () Bool)

(assert (=> d!1524149 e!2976417))

(declare-fun c!813378 () Bool)

(declare-fun contains!16871 (MutLongMap!4939 (_ BitVec 64)) Bool)

(assert (=> d!1524149 (= c!813378 (contains!16871 (v!47740 (underlying!10086 thiss!42052)) lt!1931249))))

(declare-fun lt!1931359 () List!53633)

(declare-fun apply!12646 (LongMapFixedSize!9878 (_ BitVec 64)) List!53633)

(assert (=> d!1524149 (= lt!1931359 (apply!12646 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))) lt!1931249))))

(declare-fun valid!3945 (MutLongMap!4939) Bool)

(assert (=> d!1524149 (valid!3945 (v!47740 (underlying!10086 thiss!42052)))))

(assert (=> d!1524149 (= (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931249) lt!1931359)))

(declare-fun b!4768408 () Bool)

(assert (=> b!4768408 (= e!2976417 (= lt!1931359 (get!18067 (getValueByKey!2201 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lt!1931249))))))

(declare-fun b!4768409 () Bool)

(declare-fun dynLambda!21959 (Int (_ BitVec 64)) List!53633)

(assert (=> b!4768409 (= e!2976417 (= lt!1931359 (dynLambda!21959 (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) lt!1931249)))))

(assert (=> b!4768409 ((_ is LongMap!4939) (v!47740 (underlying!10086 thiss!42052)))))

(assert (= (and d!1524149 c!813378) b!4768408))

(assert (= (and d!1524149 (not c!813378)) b!4768409))

(declare-fun b_lambda!184453 () Bool)

(assert (=> (not b_lambda!184453) (not b!4768409)))

(declare-fun t!361066 () Bool)

(declare-fun tb!257483 () Bool)

(assert (=> (and b!4768289 (= (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) t!361066) tb!257483))

(assert (=> b!4768409 t!361066))

(declare-fun result!319134 () Bool)

(declare-fun b_and!341425 () Bool)

(assert (= b_and!341421 (and (=> t!361066 result!319134) b_and!341425)))

(declare-fun m!5739910 () Bool)

(assert (=> d!1524149 m!5739910))

(declare-fun m!5739912 () Bool)

(assert (=> d!1524149 m!5739912))

(declare-fun m!5739914 () Bool)

(assert (=> d!1524149 m!5739914))

(assert (=> b!4768408 m!5739760))

(declare-fun m!5739916 () Bool)

(assert (=> b!4768408 m!5739916))

(assert (=> b!4768408 m!5739916))

(declare-fun m!5739918 () Bool)

(assert (=> b!4768408 m!5739918))

(declare-fun m!5739920 () Bool)

(assert (=> b!4768409 m!5739920))

(assert (=> b!4768288 d!1524149))

(declare-fun d!1524151 () Bool)

(assert (=> d!1524151 (dynLambda!21958 lambda!224638 lt!1931240)))

(declare-fun lt!1931360 () Unit!138311)

(assert (=> d!1524151 (= lt!1931360 (choose!33999 (toList!6311 lt!1931247) lambda!224638 lt!1931240))))

(declare-fun e!2976418 () Bool)

(assert (=> d!1524151 e!2976418))

(declare-fun res!2022427 () Bool)

(assert (=> d!1524151 (=> (not res!2022427) (not e!2976418))))

(assert (=> d!1524151 (= res!2022427 (forall!11880 (toList!6311 lt!1931247) lambda!224638))))

(assert (=> d!1524151 (= (forallContained!3869 (toList!6311 lt!1931247) lambda!224638 lt!1931240) lt!1931360)))

(declare-fun b!4768410 () Bool)

(assert (=> b!4768410 (= e!2976418 (contains!16866 (toList!6311 lt!1931247) lt!1931240))))

(assert (= (and d!1524151 res!2022427) b!4768410))

(declare-fun b_lambda!184455 () Bool)

(assert (=> (not b_lambda!184455) (not d!1524151)))

(declare-fun m!5739922 () Bool)

(assert (=> d!1524151 m!5739922))

(declare-fun m!5739924 () Bool)

(assert (=> d!1524151 m!5739924))

(assert (=> d!1524151 m!5739884))

(assert (=> b!4768410 m!5739784))

(assert (=> b!4768288 d!1524151))

(declare-fun d!1524153 () Bool)

(declare-fun isEmpty!29288 (Option!12705) Bool)

(assert (=> d!1524153 (= (isDefined!9855 lt!1931242) (not (isEmpty!29288 lt!1931242)))))

(declare-fun bs!1149173 () Bool)

(assert (= bs!1149173 d!1524153))

(declare-fun m!5739926 () Bool)

(assert (=> bs!1149173 m!5739926))

(assert (=> b!4768286 d!1524153))

(declare-fun bs!1149174 () Bool)

(declare-fun b!4768415 () Bool)

(assert (= bs!1149174 (and b!4768415 b!4768288)))

(declare-fun lambda!224664 () Int)

(assert (=> bs!1149174 (= lambda!224664 lambda!224638)))

(declare-fun bs!1149175 () Bool)

(assert (= bs!1149175 (and b!4768415 d!1524119)))

(assert (=> bs!1149175 (= lambda!224664 lambda!224651)))

(declare-fun bs!1149176 () Bool)

(assert (= bs!1149176 (and b!4768415 d!1524121)))

(assert (=> bs!1149176 (= lambda!224664 lambda!224658)))

(declare-fun bs!1149177 () Bool)

(assert (= bs!1149177 (and b!4768415 d!1524141)))

(assert (=> bs!1149177 (= lambda!224664 lambda!224661)))

(declare-fun d!1524155 () Bool)

(declare-fun res!2022432 () Bool)

(declare-fun e!2976421 () Bool)

(assert (=> d!1524155 (=> (not res!2022432) (not e!2976421))))

(assert (=> d!1524155 (= res!2022432 (valid!3945 (v!47740 (underlying!10086 thiss!42052))))))

(assert (=> d!1524155 (= (valid!3944 thiss!42052) e!2976421)))

(declare-fun res!2022433 () Bool)

(assert (=> b!4768415 (=> (not res!2022433) (not e!2976421))))

(assert (=> b!4768415 (= res!2022433 (forall!11880 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lambda!224664))))

(declare-fun b!4768416 () Bool)

(assert (=> b!4768416 (= e!2976421 (allKeysSameHashInMap!2025 (map!12010 (v!47740 (underlying!10086 thiss!42052))) (hashF!12473 thiss!42052)))))

(assert (= (and d!1524155 res!2022432) b!4768415))

(assert (= (and b!4768415 res!2022433) b!4768416))

(assert (=> d!1524155 m!5739914))

(assert (=> b!4768415 m!5739760))

(declare-fun m!5739928 () Bool)

(assert (=> b!4768415 m!5739928))

(assert (=> b!4768416 m!5739760))

(assert (=> b!4768416 m!5739760))

(declare-fun m!5739930 () Bool)

(assert (=> b!4768416 m!5739930))

(assert (=> b!4768292 d!1524155))

(declare-fun d!1524157 () Bool)

(assert (=> d!1524157 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249))))

(declare-fun lt!1931363 () Unit!138311)

(declare-fun choose!34001 (List!53634 (_ BitVec 64)) Unit!138311)

(assert (=> d!1524157 (= lt!1931363 (choose!34001 (toList!6311 lt!1931247) lt!1931249))))

(declare-fun e!2976424 () Bool)

(assert (=> d!1524157 e!2976424))

(declare-fun res!2022436 () Bool)

(assert (=> d!1524157 (=> (not res!2022436) (not e!2976424))))

(declare-fun isStrictlySorted!811 (List!53634) Bool)

(assert (=> d!1524157 (= res!2022436 (isStrictlySorted!811 (toList!6311 lt!1931247)))))

(assert (=> d!1524157 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1997 (toList!6311 lt!1931247) lt!1931249) lt!1931363)))

(declare-fun b!4768419 () Bool)

(assert (=> b!4768419 (= e!2976424 (containsKey!3673 (toList!6311 lt!1931247) lt!1931249))))

(assert (= (and d!1524157 res!2022436) b!4768419))

(assert (=> d!1524157 m!5739736))

(assert (=> d!1524157 m!5739736))

(assert (=> d!1524157 m!5739738))

(declare-fun m!5739932 () Bool)

(assert (=> d!1524157 m!5739932))

(declare-fun m!5739934 () Bool)

(assert (=> d!1524157 m!5739934))

(assert (=> b!4768419 m!5739806))

(assert (=> b!4768287 d!1524157))

(declare-fun d!1524159 () Bool)

(declare-fun isEmpty!29289 (Option!12706) Bool)

(assert (=> d!1524159 (= (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249)) (not (isEmpty!29289 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249))))))

(declare-fun bs!1149178 () Bool)

(assert (= bs!1149178 d!1524159))

(assert (=> bs!1149178 m!5739736))

(declare-fun m!5739936 () Bool)

(assert (=> bs!1149178 m!5739936))

(assert (=> b!4768287 d!1524159))

(declare-fun b!4768431 () Bool)

(declare-fun e!2976430 () Option!12706)

(assert (=> b!4768431 (= e!2976430 None!12705)))

(declare-fun b!4768429 () Bool)

(declare-fun e!2976429 () Option!12706)

(assert (=> b!4768429 (= e!2976429 e!2976430)))

(declare-fun c!813384 () Bool)

(assert (=> b!4768429 (= c!813384 (and ((_ is Cons!53510) (toList!6311 lt!1931247)) (not (= (_1!31083 (h!59922 (toList!6311 lt!1931247))) lt!1931249))))))

(declare-fun d!1524161 () Bool)

(declare-fun c!813383 () Bool)

(assert (=> d!1524161 (= c!813383 (and ((_ is Cons!53510) (toList!6311 lt!1931247)) (= (_1!31083 (h!59922 (toList!6311 lt!1931247))) lt!1931249)))))

(assert (=> d!1524161 (= (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249) e!2976429)))

(declare-fun b!4768430 () Bool)

(assert (=> b!4768430 (= e!2976430 (getValueByKey!2201 (t!361064 (toList!6311 lt!1931247)) lt!1931249))))

(declare-fun b!4768428 () Bool)

(assert (=> b!4768428 (= e!2976429 (Some!12705 (_2!31083 (h!59922 (toList!6311 lt!1931247)))))))

(assert (= (and d!1524161 c!813383) b!4768428))

(assert (= (and d!1524161 (not c!813383)) b!4768429))

(assert (= (and b!4768429 c!813384) b!4768430))

(assert (= (and b!4768429 (not c!813384)) b!4768431))

(declare-fun m!5739938 () Bool)

(assert (=> b!4768430 m!5739938))

(assert (=> b!4768287 d!1524161))

(declare-fun d!1524163 () Bool)

(assert (=> d!1524163 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931249 lt!1931237))))

(declare-fun lt!1931366 () Unit!138311)

(declare-fun choose!34002 (List!53634 (_ BitVec 64) List!53633) Unit!138311)

(assert (=> d!1524163 (= lt!1931366 (choose!34002 (toList!6311 lt!1931247) lt!1931249 lt!1931237))))

(declare-fun e!2976433 () Bool)

(assert (=> d!1524163 e!2976433))

(declare-fun res!2022439 () Bool)

(assert (=> d!1524163 (=> (not res!2022439) (not e!2976433))))

(assert (=> d!1524163 (= res!2022439 (isStrictlySorted!811 (toList!6311 lt!1931247)))))

(assert (=> d!1524163 (= (lemmaGetValueByKeyImpliesContainsTuple!940 (toList!6311 lt!1931247) lt!1931249 lt!1931237) lt!1931366)))

(declare-fun b!4768434 () Bool)

(assert (=> b!4768434 (= e!2976433 (= (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249) (Some!12705 lt!1931237)))))

(assert (= (and d!1524163 res!2022439) b!4768434))

(declare-fun m!5739940 () Bool)

(assert (=> d!1524163 m!5739940))

(declare-fun m!5739942 () Bool)

(assert (=> d!1524163 m!5739942))

(assert (=> d!1524163 m!5739934))

(assert (=> b!4768434 m!5739736))

(assert (=> b!4768287 d!1524163))

(declare-fun d!1524165 () Bool)

(assert (=> d!1524165 (= (get!18065 lt!1931246) (v!47741 lt!1931246))))

(assert (=> b!4768285 d!1524165))

(declare-fun d!1524167 () Bool)

(assert (=> d!1524167 (= (get!18066 (getValueByKey!2200 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776)) (v!47742 (getValueByKey!2200 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776)))))

(assert (=> b!4768285 d!1524167))

(declare-fun b!4768435 () Bool)

(declare-fun e!2976434 () Option!12705)

(assert (=> b!4768435 (= e!2976434 (Some!12704 (_2!31082 (h!59921 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247)))))))))

(declare-fun d!1524169 () Bool)

(declare-fun c!813385 () Bool)

(assert (=> d!1524169 (= c!813385 (and ((_ is Cons!53509) (toList!6312 (extractMap!2155 (toList!6311 lt!1931247)))) (= (_1!31082 (h!59921 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))))) key!1776)))))

(assert (=> d!1524169 (= (getValueByKey!2200 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776) e!2976434)))

(declare-fun b!4768436 () Bool)

(declare-fun e!2976435 () Option!12705)

(assert (=> b!4768436 (= e!2976434 e!2976435)))

(declare-fun c!813386 () Bool)

(assert (=> b!4768436 (= c!813386 (and ((_ is Cons!53509) (toList!6312 (extractMap!2155 (toList!6311 lt!1931247)))) (not (= (_1!31082 (h!59921 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))))) key!1776))))))

(declare-fun b!4768437 () Bool)

(assert (=> b!4768437 (= e!2976435 (getValueByKey!2200 (t!361063 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247)))) key!1776))))

(declare-fun b!4768438 () Bool)

(assert (=> b!4768438 (= e!2976435 None!12704)))

(assert (= (and d!1524169 c!813385) b!4768435))

(assert (= (and d!1524169 (not c!813385)) b!4768436))

(assert (= (and b!4768436 c!813386) b!4768437))

(assert (= (and b!4768436 (not c!813386)) b!4768438))

(declare-fun m!5739944 () Bool)

(assert (=> b!4768437 m!5739944))

(assert (=> b!4768285 d!1524169))

(declare-fun bs!1149179 () Bool)

(declare-fun d!1524171 () Bool)

(assert (= bs!1149179 (and d!1524171 d!1524141)))

(declare-fun lambda!224667 () Int)

(assert (=> bs!1149179 (= lambda!224667 lambda!224661)))

(declare-fun bs!1149180 () Bool)

(assert (= bs!1149180 (and d!1524171 d!1524121)))

(assert (=> bs!1149180 (= lambda!224667 lambda!224658)))

(declare-fun bs!1149181 () Bool)

(assert (= bs!1149181 (and d!1524171 b!4768288)))

(assert (=> bs!1149181 (= lambda!224667 lambda!224638)))

(declare-fun bs!1149182 () Bool)

(assert (= bs!1149182 (and d!1524171 d!1524119)))

(assert (=> bs!1149182 (= lambda!224667 lambda!224651)))

(declare-fun bs!1149183 () Bool)

(assert (= bs!1149183 (and d!1524171 b!4768415)))

(assert (=> bs!1149183 (= lambda!224667 lambda!224664)))

(declare-fun lt!1931369 () ListMap!5807)

(assert (=> d!1524171 (invariantList!1664 (toList!6312 lt!1931369))))

(declare-fun e!2976438 () ListMap!5807)

(assert (=> d!1524171 (= lt!1931369 e!2976438)))

(declare-fun c!813389 () Bool)

(assert (=> d!1524171 (= c!813389 ((_ is Cons!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524171 (forall!11880 (toList!6311 lt!1931247) lambda!224667)))

(assert (=> d!1524171 (= (extractMap!2155 (toList!6311 lt!1931247)) lt!1931369)))

(declare-fun b!4768443 () Bool)

(declare-fun addToMapMapFromBucket!1629 (List!53633 ListMap!5807) ListMap!5807)

(assert (=> b!4768443 (= e!2976438 (addToMapMapFromBucket!1629 (_2!31083 (h!59922 (toList!6311 lt!1931247))) (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))))))

(declare-fun b!4768444 () Bool)

(assert (=> b!4768444 (= e!2976438 (ListMap!5808 Nil!53509))))

(assert (= (and d!1524171 c!813389) b!4768443))

(assert (= (and d!1524171 (not c!813389)) b!4768444))

(declare-fun m!5739946 () Bool)

(assert (=> d!1524171 m!5739946))

(declare-fun m!5739948 () Bool)

(assert (=> d!1524171 m!5739948))

(declare-fun m!5739950 () Bool)

(assert (=> b!4768443 m!5739950))

(assert (=> b!4768443 m!5739950))

(declare-fun m!5739952 () Bool)

(assert (=> b!4768443 m!5739952))

(assert (=> b!4768285 d!1524171))

(declare-fun bs!1149184 () Bool)

(declare-fun b!4768475 () Bool)

(assert (= bs!1149184 (and b!4768475 d!1524141)))

(declare-fun lambda!224670 () Int)

(assert (=> bs!1149184 (= lambda!224670 lambda!224661)))

(declare-fun bs!1149185 () Bool)

(assert (= bs!1149185 (and b!4768475 d!1524121)))

(assert (=> bs!1149185 (= lambda!224670 lambda!224658)))

(declare-fun bs!1149186 () Bool)

(assert (= bs!1149186 (and b!4768475 b!4768288)))

(assert (=> bs!1149186 (= lambda!224670 lambda!224638)))

(declare-fun bs!1149187 () Bool)

(assert (= bs!1149187 (and b!4768475 d!1524119)))

(assert (=> bs!1149187 (= lambda!224670 lambda!224651)))

(declare-fun bs!1149188 () Bool)

(assert (= bs!1149188 (and b!4768475 b!4768415)))

(assert (=> bs!1149188 (= lambda!224670 lambda!224664)))

(declare-fun bs!1149189 () Bool)

(assert (= bs!1149189 (and b!4768475 d!1524171)))

(assert (=> bs!1149189 (= lambda!224670 lambda!224667)))

(declare-fun b!4768467 () Bool)

(declare-fun e!2976453 () Unit!138311)

(declare-fun Unit!138316 () Unit!138311)

(assert (=> b!4768467 (= e!2976453 Unit!138316)))

(declare-fun b!4768468 () Bool)

(assert (=> b!4768468 false))

(declare-fun lt!1931422 () Unit!138311)

(declare-fun lt!1931426 () Unit!138311)

(assert (=> b!4768468 (= lt!1931422 lt!1931426)))

(declare-fun lt!1931425 () List!53634)

(declare-fun lt!1931411 () (_ BitVec 64))

(declare-fun lt!1931412 () List!53633)

(assert (=> b!4768468 (contains!16866 lt!1931425 (tuple2!55579 lt!1931411 lt!1931412))))

(assert (=> b!4768468 (= lt!1931426 (lemmaGetValueByKeyImpliesContainsTuple!940 lt!1931425 lt!1931411 lt!1931412))))

(assert (=> b!4768468 (= lt!1931412 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))))

(assert (=> b!4768468 (= lt!1931425 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))))

(declare-fun lt!1931420 () Unit!138311)

(declare-fun lt!1931416 () Unit!138311)

(assert (=> b!4768468 (= lt!1931420 lt!1931416)))

(declare-fun lt!1931418 () List!53634)

(assert (=> b!4768468 (isDefined!9856 (getValueByKey!2201 lt!1931418 lt!1931411))))

(assert (=> b!4768468 (= lt!1931416 (lemmaContainsKeyImpliesGetValueByKeyDefined!1997 lt!1931418 lt!1931411))))

(assert (=> b!4768468 (= lt!1931418 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))))

(declare-fun lt!1931414 () Unit!138311)

(declare-fun lt!1931428 () Unit!138311)

(assert (=> b!4768468 (= lt!1931414 lt!1931428)))

(declare-fun lt!1931424 () List!53634)

(assert (=> b!4768468 (containsKey!3673 lt!1931424 lt!1931411)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!206 (List!53634 (_ BitVec 64)) Unit!138311)

(assert (=> b!4768468 (= lt!1931428 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!206 lt!1931424 lt!1931411))))

(assert (=> b!4768468 (= lt!1931424 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))))

(declare-fun e!2976454 () Unit!138311)

(declare-fun Unit!138317 () Unit!138311)

(assert (=> b!4768468 (= e!2976454 Unit!138317)))

(declare-fun call!334295 () ListLongMap!4709)

(declare-fun call!334294 () List!53633)

(declare-fun c!813401 () Bool)

(declare-fun lt!1931419 () ListLongMap!4709)

(declare-fun bm!334289 () Bool)

(declare-fun call!334297 () (_ BitVec 64))

(assert (=> bm!334289 (= call!334294 (apply!12644 (ite c!813401 lt!1931419 call!334295) call!334297))))

(declare-fun b!4768469 () Bool)

(declare-fun e!2976455 () Bool)

(declare-fun call!334296 () Bool)

(assert (=> b!4768469 (= e!2976455 call!334296)))

(declare-fun b!4768470 () Bool)

(assert (=> b!4768470 false))

(declare-fun lt!1931427 () Unit!138311)

(declare-fun lt!1931410 () Unit!138311)

(assert (=> b!4768470 (= lt!1931427 lt!1931410)))

(declare-fun lt!1931413 () ListLongMap!4709)

(assert (=> b!4768470 (contains!16870 (extractMap!2155 (toList!6311 lt!1931413)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!205 (ListLongMap!4709 K!14989 Hashable!6600) Unit!138311)

(assert (=> b!4768470 (= lt!1931410 (lemmaInLongMapThenInGenericMap!205 lt!1931413 key!1776 (hashF!12473 thiss!42052)))))

(assert (=> b!4768470 (= lt!1931413 call!334295)))

(declare-fun Unit!138318 () Unit!138311)

(assert (=> b!4768470 (= e!2976453 Unit!138318)))

(declare-fun b!4768471 () Bool)

(declare-fun e!2976459 () Unit!138311)

(declare-fun lt!1931423 () Unit!138311)

(assert (=> b!4768471 (= e!2976459 lt!1931423)))

(assert (=> b!4768471 (= lt!1931419 call!334295)))

(declare-fun lemmaInGenericMapThenInLongMap!205 (ListLongMap!4709 K!14989 Hashable!6600) Unit!138311)

(assert (=> b!4768471 (= lt!1931423 (lemmaInGenericMapThenInLongMap!205 lt!1931419 key!1776 (hashF!12473 thiss!42052)))))

(declare-fun res!2022446 () Bool)

(declare-fun call!334298 () Bool)

(assert (=> b!4768471 (= res!2022446 call!334298)))

(declare-fun e!2976457 () Bool)

(assert (=> b!4768471 (=> (not res!2022446) (not e!2976457))))

(assert (=> b!4768471 e!2976457))

(declare-fun b!4768472 () Bool)

(declare-fun e!2976458 () Bool)

(assert (=> b!4768472 (= e!2976458 (isDefined!9857 (getPair!652 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411) key!1776)))))

(declare-fun b!4768473 () Bool)

(assert (=> b!4768473 (= e!2976459 e!2976453)))

(declare-fun res!2022448 () Bool)

(assert (=> b!4768473 (= res!2022448 call!334298)))

(assert (=> b!4768473 (=> (not res!2022448) (not e!2976455))))

(declare-fun c!813398 () Bool)

(assert (=> b!4768473 (= c!813398 e!2976455)))

(declare-fun bm!334290 () Bool)

(assert (=> bm!334290 (= call!334298 (contains!16867 (ite c!813401 lt!1931419 call!334295) call!334297))))

(declare-fun bm!334291 () Bool)

(declare-fun call!334299 () Option!12704)

(assert (=> bm!334291 (= call!334299 (getPair!652 call!334294 key!1776))))

(declare-fun d!1524173 () Bool)

(declare-fun lt!1931415 () Bool)

(assert (=> d!1524173 (= lt!1931415 (contains!16870 (map!12009 thiss!42052) key!1776))))

(assert (=> d!1524173 (= lt!1931415 e!2976458)))

(declare-fun res!2022447 () Bool)

(assert (=> d!1524173 (=> (not res!2022447) (not e!2976458))))

(assert (=> d!1524173 (= res!2022447 (contains!16871 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))))

(declare-fun lt!1931429 () Unit!138311)

(assert (=> d!1524173 (= lt!1931429 e!2976459)))

(assert (=> d!1524173 (= c!813401 (contains!16870 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))) key!1776))))

(declare-fun lt!1931417 () Unit!138311)

(declare-fun e!2976456 () Unit!138311)

(assert (=> d!1524173 (= lt!1931417 e!2976456)))

(declare-fun c!813399 () Bool)

(assert (=> d!1524173 (= c!813399 (contains!16871 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))))

(assert (=> d!1524173 (= lt!1931411 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(assert (=> d!1524173 (valid!3944 thiss!42052)))

(assert (=> d!1524173 (= (contains!16868 thiss!42052 key!1776) lt!1931415)))

(declare-fun bm!334292 () Bool)

(assert (=> bm!334292 (= call!334297 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(declare-fun b!4768474 () Bool)

(declare-fun Unit!138319 () Unit!138311)

(assert (=> b!4768474 (= e!2976454 Unit!138319)))

(assert (=> b!4768475 (= e!2976456 (forallContained!3869 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lambda!224670 (tuple2!55579 lt!1931411 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))))))

(declare-fun c!813400 () Bool)

(assert (=> b!4768475 (= c!813400 (not (contains!16866 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) (tuple2!55579 lt!1931411 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411)))))))

(declare-fun lt!1931421 () Unit!138311)

(assert (=> b!4768475 (= lt!1931421 e!2976454)))

(declare-fun bm!334293 () Bool)

(assert (=> bm!334293 (= call!334296 (isDefined!9857 call!334299))))

(declare-fun b!4768476 () Bool)

(declare-fun Unit!138320 () Unit!138311)

(assert (=> b!4768476 (= e!2976456 Unit!138320)))

(declare-fun bm!334294 () Bool)

(assert (=> bm!334294 (= call!334295 (map!12010 (v!47740 (underlying!10086 thiss!42052))))))

(declare-fun b!4768477 () Bool)

(assert (=> b!4768477 (= e!2976457 call!334296)))

(assert (= (and d!1524173 c!813399) b!4768475))

(assert (= (and d!1524173 (not c!813399)) b!4768476))

(assert (= (and b!4768475 c!813400) b!4768468))

(assert (= (and b!4768475 (not c!813400)) b!4768474))

(assert (= (and d!1524173 c!813401) b!4768471))

(assert (= (and d!1524173 (not c!813401)) b!4768473))

(assert (= (and b!4768471 res!2022446) b!4768477))

(assert (= (and b!4768473 res!2022448) b!4768469))

(assert (= (and b!4768473 c!813398) b!4768470))

(assert (= (and b!4768473 (not c!813398)) b!4768467))

(assert (= (or b!4768471 b!4768473 b!4768469 b!4768470) bm!334294))

(assert (= (or b!4768471 b!4768477 b!4768473 b!4768469) bm!334292))

(assert (= (or b!4768471 b!4768473) bm!334290))

(assert (= (or b!4768477 b!4768469) bm!334289))

(assert (= (or b!4768477 b!4768469) bm!334291))

(assert (= (or b!4768477 b!4768469) bm!334293))

(assert (= (and d!1524173 res!2022447) b!4768472))

(declare-fun m!5739954 () Bool)

(assert (=> b!4768471 m!5739954))

(assert (=> b!4768468 m!5739760))

(declare-fun m!5739956 () Bool)

(assert (=> b!4768468 m!5739956))

(declare-fun m!5739958 () Bool)

(assert (=> b!4768468 m!5739958))

(declare-fun m!5739960 () Bool)

(assert (=> b!4768468 m!5739960))

(declare-fun m!5739962 () Bool)

(assert (=> b!4768468 m!5739962))

(declare-fun m!5739964 () Bool)

(assert (=> b!4768468 m!5739964))

(assert (=> b!4768468 m!5739960))

(declare-fun m!5739966 () Bool)

(assert (=> b!4768468 m!5739966))

(declare-fun m!5739968 () Bool)

(assert (=> b!4768468 m!5739968))

(declare-fun m!5739970 () Bool)

(assert (=> b!4768468 m!5739970))

(assert (=> d!1524173 m!5739760))

(assert (=> d!1524173 m!5739774))

(declare-fun m!5739972 () Bool)

(assert (=> d!1524173 m!5739972))

(assert (=> d!1524173 m!5739896))

(declare-fun m!5739974 () Bool)

(assert (=> d!1524173 m!5739974))

(declare-fun m!5739976 () Bool)

(assert (=> d!1524173 m!5739976))

(assert (=> d!1524173 m!5739776))

(assert (=> d!1524173 m!5739896))

(assert (=> d!1524173 m!5739732))

(assert (=> d!1524173 m!5739774))

(declare-fun m!5739978 () Bool)

(assert (=> bm!334291 m!5739978))

(declare-fun m!5739980 () Bool)

(assert (=> bm!334289 m!5739980))

(declare-fun m!5739982 () Bool)

(assert (=> bm!334290 m!5739982))

(assert (=> b!4768472 m!5739970))

(assert (=> b!4768472 m!5739970))

(declare-fun m!5739984 () Bool)

(assert (=> b!4768472 m!5739984))

(assert (=> b!4768472 m!5739984))

(declare-fun m!5739986 () Bool)

(assert (=> b!4768472 m!5739986))

(declare-fun m!5739988 () Bool)

(assert (=> bm!334293 m!5739988))

(declare-fun m!5739990 () Bool)

(assert (=> b!4768470 m!5739990))

(assert (=> b!4768470 m!5739990))

(declare-fun m!5739992 () Bool)

(assert (=> b!4768470 m!5739992))

(declare-fun m!5739994 () Bool)

(assert (=> b!4768470 m!5739994))

(assert (=> bm!334292 m!5739776))

(assert (=> b!4768475 m!5739760))

(assert (=> b!4768475 m!5739970))

(declare-fun m!5739996 () Bool)

(assert (=> b!4768475 m!5739996))

(declare-fun m!5739998 () Bool)

(assert (=> b!4768475 m!5739998))

(assert (=> bm!334294 m!5739760))

(assert (=> b!4768294 d!1524173))

(declare-fun d!1524175 () Bool)

(assert (=> d!1524175 (= (array_inv!5807 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) (bvsge (size!36293 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4768289 d!1524175))

(declare-fun d!1524177 () Bool)

(assert (=> d!1524177 (= (array_inv!5808 (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) (bvsge (size!36294 (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4768289 d!1524177))

(declare-fun condMapEmpty!21912 () Bool)

(declare-fun mapDefault!21912 () List!53633)

(assert (=> mapNonEmpty!21909 (= condMapEmpty!21912 (= mapRest!21909 ((as const (Array (_ BitVec 32) List!53633)) mapDefault!21912)))))

(declare-fun e!2976464 () Bool)

(declare-fun mapRes!21912 () Bool)

(assert (=> mapNonEmpty!21909 (= tp!1355836 (and e!2976464 mapRes!21912))))

(declare-fun mapNonEmpty!21912 () Bool)

(declare-fun tp!1355843 () Bool)

(declare-fun e!2976465 () Bool)

(assert (=> mapNonEmpty!21912 (= mapRes!21912 (and tp!1355843 e!2976465))))

(declare-fun mapRest!21912 () (Array (_ BitVec 32) List!53633))

(declare-fun mapKey!21912 () (_ BitVec 32))

(declare-fun mapValue!21912 () List!53633)

(assert (=> mapNonEmpty!21912 (= mapRest!21909 (store mapRest!21912 mapKey!21912 mapValue!21912))))

(declare-fun mapIsEmpty!21912 () Bool)

(assert (=> mapIsEmpty!21912 mapRes!21912))

(declare-fun tp!1355845 () Bool)

(declare-fun b!4768485 () Bool)

(declare-fun tp_is_empty!32481 () Bool)

(assert (=> b!4768485 (= e!2976464 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355845))))

(declare-fun tp!1355844 () Bool)

(declare-fun b!4768484 () Bool)

(assert (=> b!4768484 (= e!2976465 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355844))))

(assert (= (and mapNonEmpty!21909 condMapEmpty!21912) mapIsEmpty!21912))

(assert (= (and mapNonEmpty!21909 (not condMapEmpty!21912)) mapNonEmpty!21912))

(assert (= (and mapNonEmpty!21912 ((_ is Cons!53509) mapValue!21912)) b!4768484))

(assert (= (and mapNonEmpty!21909 ((_ is Cons!53509) mapDefault!21912)) b!4768485))

(declare-fun m!5740000 () Bool)

(assert (=> mapNonEmpty!21912 m!5740000))

(declare-fun tp!1355848 () Bool)

(declare-fun b!4768490 () Bool)

(declare-fun e!2976468 () Bool)

(assert (=> b!4768490 (= e!2976468 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355848))))

(assert (=> mapNonEmpty!21909 (= tp!1355832 e!2976468)))

(assert (= (and mapNonEmpty!21909 ((_ is Cons!53509) mapValue!21909)) b!4768490))

(declare-fun b!4768491 () Bool)

(declare-fun e!2976469 () Bool)

(declare-fun tp!1355849 () Bool)

(assert (=> b!4768491 (= e!2976469 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355849))))

(assert (=> b!4768291 (= tp!1355833 e!2976469)))

(assert (= (and b!4768291 ((_ is Cons!53509) mapDefault!21909)) b!4768491))

(declare-fun e!2976470 () Bool)

(declare-fun tp!1355850 () Bool)

(declare-fun b!4768492 () Bool)

(assert (=> b!4768492 (= e!2976470 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355850))))

(assert (=> b!4768289 (= tp!1355835 e!2976470)))

(assert (= (and b!4768289 ((_ is Cons!53509) (zeroValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))))) b!4768492))

(declare-fun tp!1355851 () Bool)

(declare-fun b!4768493 () Bool)

(declare-fun e!2976471 () Bool)

(assert (=> b!4768493 (= e!2976471 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355851))))

(assert (=> b!4768289 (= tp!1355834 e!2976471)))

(assert (= (and b!4768289 ((_ is Cons!53509) (minValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))))) b!4768493))

(declare-fun b_lambda!184457 () Bool)

(assert (= b_lambda!184451 (or b!4768288 b_lambda!184457)))

(declare-fun bs!1149190 () Bool)

(declare-fun d!1524179 () Bool)

(assert (= bs!1149190 (and d!1524179 b!4768288)))

(assert (=> bs!1149190 (= (dynLambda!21958 lambda!224638 lt!1931245) (noDuplicateKeys!2258 (_2!31083 lt!1931245)))))

(declare-fun m!5740002 () Bool)

(assert (=> bs!1149190 m!5740002))

(assert (=> d!1524133 d!1524179))

(declare-fun b_lambda!184459 () Bool)

(assert (= b_lambda!184455 (or b!4768288 b_lambda!184459)))

(declare-fun bs!1149191 () Bool)

(declare-fun d!1524181 () Bool)

(assert (= bs!1149191 (and d!1524181 b!4768288)))

(assert (=> bs!1149191 (= (dynLambda!21958 lambda!224638 lt!1931240) (noDuplicateKeys!2258 (_2!31083 lt!1931240)))))

(declare-fun m!5740004 () Bool)

(assert (=> bs!1149191 m!5740004))

(assert (=> d!1524151 d!1524181))

(declare-fun b_lambda!184461 () Bool)

(assert (= b_lambda!184453 (or (and b!4768289 b_free!129699) b_lambda!184461)))

(check-sat (not b!4768485) (not d!1524157) (not bm!334289) tp_is_empty!32481 (not b!4768391) (not d!1524151) (not b!4768316) (not d!1524141) (not bm!334292) (not d!1524123) (not b!4768475) (not b!4768395) (not b!4768368) (not b!4768350) (not d!1524159) (not d!1524121) (not d!1524119) (not d!1524133) (not d!1524145) (not b!4768376) (not d!1524163) (not b!4768356) (not d!1524131) (not b!4768371) (not b!4768378) (not b!4768329) (not d!1524115) (not b!4768416) (not bm!334290) (not d!1524135) (not b!4768437) (not b!4768357) (not b!4768327) (not tb!257483) (not b!4768379) (not b!4768468) (not b!4768443) (not d!1524147) (not d!1524173) (not d!1524153) (not b_next!130489) (not bm!334293) (not b!4768403) (not d!1524171) (not d!1524155) (not b!4768493) (not b!4768318) (not d!1524117) b_and!341423 (not b!4768369) (not b!4768471) (not b!4768373) (not bm!334291) (not b!4768370) (not b!4768358) (not b!4768472) (not b_next!130491) (not b_lambda!184459) (not b!4768492) (not b!4768359) (not b!4768315) (not b!4768419) (not b!4768491) (not bs!1149190) (not b!4768352) (not b!4768353) (not d!1524139) (not d!1524143) (not b!4768401) (not b!4768410) (not b!4768415) (not b_lambda!184461) (not d!1524149) (not b!4768470) (not mapNonEmpty!21912) (not b!4768430) (not b!4768484) (not b!4768434) (not d!1524137) (not bm!334294) (not b!4768351) (not b!4768313) (not b!4768355) (not b!4768354) (not b!4768375) tp_is_empty!32479 (not bs!1149191) (not b!4768408) (not b_lambda!184457) (not d!1524125) (not b!4768490) b_and!341425 (not b!4768319))
(check-sat b_and!341423 b_and!341425 (not b_next!130491) (not b_next!130489))
(get-model)

(declare-fun d!1524183 () Bool)

(assert (=> d!1524183 (= (isDefined!9857 lt!1931343) (not (isEmpty!29287 lt!1931343)))))

(declare-fun bs!1149192 () Bool)

(assert (= bs!1149192 d!1524183))

(assert (=> bs!1149192 m!5739870))

(assert (=> b!4768379 d!1524183))

(declare-fun d!1524185 () Bool)

(declare-fun res!2022453 () Bool)

(declare-fun e!2976476 () Bool)

(assert (=> d!1524185 (=> res!2022453 e!2976476)))

(assert (=> d!1524185 (= res!2022453 (not ((_ is Cons!53509) (_2!31083 lt!1931240))))))

(assert (=> d!1524185 (= (noDuplicateKeys!2258 (_2!31083 lt!1931240)) e!2976476)))

(declare-fun b!4768498 () Bool)

(declare-fun e!2976477 () Bool)

(assert (=> b!4768498 (= e!2976476 e!2976477)))

(declare-fun res!2022454 () Bool)

(assert (=> b!4768498 (=> (not res!2022454) (not e!2976477))))

(assert (=> b!4768498 (= res!2022454 (not (containsKey!3672 (t!361063 (_2!31083 lt!1931240)) (_1!31082 (h!59921 (_2!31083 lt!1931240))))))))

(declare-fun b!4768499 () Bool)

(assert (=> b!4768499 (= e!2976477 (noDuplicateKeys!2258 (t!361063 (_2!31083 lt!1931240))))))

(assert (= (and d!1524185 (not res!2022453)) b!4768498))

(assert (= (and b!4768498 res!2022454) b!4768499))

(declare-fun m!5740006 () Bool)

(assert (=> b!4768498 m!5740006))

(declare-fun m!5740008 () Bool)

(assert (=> b!4768499 m!5740008))

(assert (=> bs!1149191 d!1524185))

(declare-fun d!1524187 () Bool)

(assert (=> d!1524187 (dynLambda!21958 lambda!224638 lt!1931245)))

(assert (=> d!1524187 true))

(declare-fun _$7!2307 () Unit!138311)

(assert (=> d!1524187 (= (choose!33999 (toList!6311 lt!1931247) lambda!224638 lt!1931245) _$7!2307)))

(declare-fun b_lambda!184463 () Bool)

(assert (=> (not b_lambda!184463) (not d!1524187)))

(declare-fun bs!1149193 () Bool)

(assert (= bs!1149193 d!1524187))

(assert (=> bs!1149193 m!5739880))

(assert (=> d!1524133 d!1524187))

(declare-fun d!1524189 () Bool)

(declare-fun res!2022459 () Bool)

(declare-fun e!2976482 () Bool)

(assert (=> d!1524189 (=> res!2022459 e!2976482)))

(assert (=> d!1524189 (= res!2022459 ((_ is Nil!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524189 (= (forall!11880 (toList!6311 lt!1931247) lambda!224638) e!2976482)))

(declare-fun b!4768504 () Bool)

(declare-fun e!2976483 () Bool)

(assert (=> b!4768504 (= e!2976482 e!2976483)))

(declare-fun res!2022460 () Bool)

(assert (=> b!4768504 (=> (not res!2022460) (not e!2976483))))

(assert (=> b!4768504 (= res!2022460 (dynLambda!21958 lambda!224638 (h!59922 (toList!6311 lt!1931247))))))

(declare-fun b!4768505 () Bool)

(assert (=> b!4768505 (= e!2976483 (forall!11880 (t!361064 (toList!6311 lt!1931247)) lambda!224638))))

(assert (= (and d!1524189 (not res!2022459)) b!4768504))

(assert (= (and b!4768504 res!2022460) b!4768505))

(declare-fun b_lambda!184465 () Bool)

(assert (=> (not b_lambda!184465) (not b!4768504)))

(declare-fun m!5740010 () Bool)

(assert (=> b!4768504 m!5740010))

(declare-fun m!5740012 () Bool)

(assert (=> b!4768505 m!5740012))

(assert (=> d!1524133 d!1524189))

(declare-fun d!1524191 () Bool)

(declare-fun lt!1931430 () Bool)

(assert (=> d!1524191 (= lt!1931430 (select (content!9591 (t!361064 (toList!6311 lt!1931247))) lt!1931245))))

(declare-fun e!2976485 () Bool)

(assert (=> d!1524191 (= lt!1931430 e!2976485)))

(declare-fun res!2022461 () Bool)

(assert (=> d!1524191 (=> (not res!2022461) (not e!2976485))))

(assert (=> d!1524191 (= res!2022461 ((_ is Cons!53510) (t!361064 (toList!6311 lt!1931247))))))

(assert (=> d!1524191 (= (contains!16866 (t!361064 (toList!6311 lt!1931247)) lt!1931245) lt!1931430)))

(declare-fun b!4768506 () Bool)

(declare-fun e!2976484 () Bool)

(assert (=> b!4768506 (= e!2976485 e!2976484)))

(declare-fun res!2022462 () Bool)

(assert (=> b!4768506 (=> res!2022462 e!2976484)))

(assert (=> b!4768506 (= res!2022462 (= (h!59922 (t!361064 (toList!6311 lt!1931247))) lt!1931245))))

(declare-fun b!4768507 () Bool)

(assert (=> b!4768507 (= e!2976484 (contains!16866 (t!361064 (t!361064 (toList!6311 lt!1931247))) lt!1931245))))

(assert (= (and d!1524191 res!2022461) b!4768506))

(assert (= (and b!4768506 (not res!2022462)) b!4768507))

(declare-fun m!5740014 () Bool)

(assert (=> d!1524191 m!5740014))

(declare-fun m!5740016 () Bool)

(assert (=> d!1524191 m!5740016))

(declare-fun m!5740018 () Bool)

(assert (=> b!4768507 m!5740018))

(assert (=> b!4768403 d!1524191))

(declare-fun d!1524193 () Bool)

(declare-fun res!2022467 () Bool)

(declare-fun e!2976490 () Bool)

(assert (=> d!1524193 (=> res!2022467 e!2976490)))

(assert (=> d!1524193 (= res!2022467 (and ((_ is Cons!53509) lt!1931230) (= (_1!31082 (h!59921 lt!1931230)) key!1776)))))

(assert (=> d!1524193 (= (containsKey!3672 lt!1931230 key!1776) e!2976490)))

(declare-fun b!4768512 () Bool)

(declare-fun e!2976491 () Bool)

(assert (=> b!4768512 (= e!2976490 e!2976491)))

(declare-fun res!2022468 () Bool)

(assert (=> b!4768512 (=> (not res!2022468) (not e!2976491))))

(assert (=> b!4768512 (= res!2022468 ((_ is Cons!53509) lt!1931230))))

(declare-fun b!4768513 () Bool)

(assert (=> b!4768513 (= e!2976491 (containsKey!3672 (t!361063 lt!1931230) key!1776))))

(assert (= (and d!1524193 (not res!2022467)) b!4768512))

(assert (= (and b!4768512 res!2022468) b!4768513))

(declare-fun m!5740020 () Bool)

(assert (=> b!4768513 m!5740020))

(assert (=> b!4768316 d!1524193))

(declare-fun d!1524195 () Bool)

(assert (=> d!1524195 (= (apply!12644 (ite c!813401 lt!1931419 call!334295) call!334297) (get!18067 (getValueByKey!2201 (toList!6311 (ite c!813401 lt!1931419 call!334295)) call!334297)))))

(declare-fun bs!1149194 () Bool)

(assert (= bs!1149194 d!1524195))

(declare-fun m!5740022 () Bool)

(assert (=> bs!1149194 m!5740022))

(assert (=> bs!1149194 m!5740022))

(declare-fun m!5740024 () Bool)

(assert (=> bs!1149194 m!5740024))

(assert (=> bm!334289 d!1524195))

(declare-fun d!1524197 () Bool)

(assert (=> d!1524197 (= (get!18065 lt!1931252) (v!47741 lt!1931252))))

(assert (=> b!4768318 d!1524197))

(declare-fun d!1524199 () Bool)

(assert (=> d!1524199 (= (isEmpty!29287 lt!1931343) (not ((_ is Some!12703) lt!1931343)))))

(assert (=> d!1524125 d!1524199))

(declare-fun d!1524201 () Bool)

(declare-fun res!2022469 () Bool)

(declare-fun e!2976492 () Bool)

(assert (=> d!1524201 (=> res!2022469 e!2976492)))

(assert (=> d!1524201 (= res!2022469 (not ((_ is Cons!53509) lt!1931237)))))

(assert (=> d!1524201 (= (noDuplicateKeys!2258 lt!1931237) e!2976492)))

(declare-fun b!4768514 () Bool)

(declare-fun e!2976493 () Bool)

(assert (=> b!4768514 (= e!2976492 e!2976493)))

(declare-fun res!2022470 () Bool)

(assert (=> b!4768514 (=> (not res!2022470) (not e!2976493))))

(assert (=> b!4768514 (= res!2022470 (not (containsKey!3672 (t!361063 lt!1931237) (_1!31082 (h!59921 lt!1931237)))))))

(declare-fun b!4768515 () Bool)

(assert (=> b!4768515 (= e!2976493 (noDuplicateKeys!2258 (t!361063 lt!1931237)))))

(assert (= (and d!1524201 (not res!2022469)) b!4768514))

(assert (= (and b!4768514 res!2022470) b!4768515))

(declare-fun m!5740026 () Bool)

(assert (=> b!4768514 m!5740026))

(declare-fun m!5740028 () Bool)

(assert (=> b!4768515 m!5740028))

(assert (=> d!1524125 d!1524201))

(declare-fun d!1524203 () Bool)

(declare-fun e!2976507 () Bool)

(assert (=> d!1524203 e!2976507))

(declare-fun res!2022478 () Bool)

(assert (=> d!1524203 (=> res!2022478 e!2976507)))

(declare-fun e!2976510 () Bool)

(assert (=> d!1524203 (= res!2022478 e!2976510)))

(declare-fun res!2022479 () Bool)

(assert (=> d!1524203 (=> (not res!2022479) (not e!2976510))))

(declare-fun lt!1931449 () Bool)

(assert (=> d!1524203 (= res!2022479 (not lt!1931449))))

(declare-fun lt!1931450 () Bool)

(assert (=> d!1524203 (= lt!1931449 lt!1931450)))

(declare-fun lt!1931452 () Unit!138311)

(declare-fun e!2976506 () Unit!138311)

(assert (=> d!1524203 (= lt!1931452 e!2976506)))

(declare-fun c!813410 () Bool)

(assert (=> d!1524203 (= c!813410 lt!1931450)))

(declare-fun containsKey!3674 (List!53633 K!14989) Bool)

(assert (=> d!1524203 (= lt!1931450 (containsKey!3674 (toList!6312 (extractMap!2155 (toList!6311 lt!1931413))) key!1776))))

(assert (=> d!1524203 (= (contains!16870 (extractMap!2155 (toList!6311 lt!1931413)) key!1776) lt!1931449)))

(declare-fun b!4768534 () Bool)

(declare-fun e!2976511 () Bool)

(declare-datatypes ((List!53635 0))(
  ( (Nil!53511) (Cons!53511 (h!59923 K!14989) (t!361069 List!53635)) )
))
(declare-fun contains!16872 (List!53635 K!14989) Bool)

(declare-fun keys!19401 (ListMap!5807) List!53635)

(assert (=> b!4768534 (= e!2976511 (contains!16872 (keys!19401 (extractMap!2155 (toList!6311 lt!1931413))) key!1776))))

(declare-fun b!4768535 () Bool)

(assert (=> b!4768535 false))

(declare-fun lt!1931453 () Unit!138311)

(declare-fun lt!1931454 () Unit!138311)

(assert (=> b!4768535 (= lt!1931453 lt!1931454)))

(assert (=> b!4768535 (containsKey!3674 (toList!6312 (extractMap!2155 (toList!6311 lt!1931413))) key!1776)))

(declare-fun lemmaInGetKeysListThenContainsKey!1006 (List!53633 K!14989) Unit!138311)

(assert (=> b!4768535 (= lt!1931454 (lemmaInGetKeysListThenContainsKey!1006 (toList!6312 (extractMap!2155 (toList!6311 lt!1931413))) key!1776))))

(declare-fun e!2976508 () Unit!138311)

(declare-fun Unit!138321 () Unit!138311)

(assert (=> b!4768535 (= e!2976508 Unit!138321)))

(declare-fun b!4768536 () Bool)

(assert (=> b!4768536 (= e!2976506 e!2976508)))

(declare-fun c!813409 () Bool)

(declare-fun call!334302 () Bool)

(assert (=> b!4768536 (= c!813409 call!334302)))

(declare-fun b!4768537 () Bool)

(declare-fun Unit!138322 () Unit!138311)

(assert (=> b!4768537 (= e!2976508 Unit!138322)))

(declare-fun b!4768538 () Bool)

(declare-fun lt!1931447 () Unit!138311)

(assert (=> b!4768538 (= e!2976506 lt!1931447)))

(declare-fun lt!1931451 () Unit!138311)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1998 (List!53633 K!14989) Unit!138311)

(assert (=> b!4768538 (= lt!1931451 (lemmaContainsKeyImpliesGetValueByKeyDefined!1998 (toList!6312 (extractMap!2155 (toList!6311 lt!1931413))) key!1776))))

(assert (=> b!4768538 (isDefined!9855 (getValueByKey!2200 (toList!6312 (extractMap!2155 (toList!6311 lt!1931413))) key!1776))))

(declare-fun lt!1931448 () Unit!138311)

(assert (=> b!4768538 (= lt!1931448 lt!1931451)))

(declare-fun lemmaInListThenGetKeysListContains!1002 (List!53633 K!14989) Unit!138311)

(assert (=> b!4768538 (= lt!1931447 (lemmaInListThenGetKeysListContains!1002 (toList!6312 (extractMap!2155 (toList!6311 lt!1931413))) key!1776))))

(assert (=> b!4768538 call!334302))

(declare-fun b!4768539 () Bool)

(declare-fun e!2976509 () List!53635)

(declare-fun getKeysList!1007 (List!53633) List!53635)

(assert (=> b!4768539 (= e!2976509 (getKeysList!1007 (toList!6312 (extractMap!2155 (toList!6311 lt!1931413)))))))

(declare-fun b!4768540 () Bool)

(assert (=> b!4768540 (= e!2976509 (keys!19401 (extractMap!2155 (toList!6311 lt!1931413))))))

(declare-fun b!4768541 () Bool)

(assert (=> b!4768541 (= e!2976510 (not (contains!16872 (keys!19401 (extractMap!2155 (toList!6311 lt!1931413))) key!1776)))))

(declare-fun b!4768542 () Bool)

(assert (=> b!4768542 (= e!2976507 e!2976511)))

(declare-fun res!2022477 () Bool)

(assert (=> b!4768542 (=> (not res!2022477) (not e!2976511))))

(assert (=> b!4768542 (= res!2022477 (isDefined!9855 (getValueByKey!2200 (toList!6312 (extractMap!2155 (toList!6311 lt!1931413))) key!1776)))))

(declare-fun bm!334297 () Bool)

(assert (=> bm!334297 (= call!334302 (contains!16872 e!2976509 key!1776))))

(declare-fun c!813408 () Bool)

(assert (=> bm!334297 (= c!813408 c!813410)))

(assert (= (and d!1524203 c!813410) b!4768538))

(assert (= (and d!1524203 (not c!813410)) b!4768536))

(assert (= (and b!4768536 c!813409) b!4768535))

(assert (= (and b!4768536 (not c!813409)) b!4768537))

(assert (= (or b!4768538 b!4768536) bm!334297))

(assert (= (and bm!334297 c!813408) b!4768539))

(assert (= (and bm!334297 (not c!813408)) b!4768540))

(assert (= (and d!1524203 res!2022479) b!4768541))

(assert (= (and d!1524203 (not res!2022478)) b!4768542))

(assert (= (and b!4768542 res!2022477) b!4768534))

(declare-fun m!5740030 () Bool)

(assert (=> b!4768538 m!5740030))

(declare-fun m!5740032 () Bool)

(assert (=> b!4768538 m!5740032))

(assert (=> b!4768538 m!5740032))

(declare-fun m!5740034 () Bool)

(assert (=> b!4768538 m!5740034))

(declare-fun m!5740036 () Bool)

(assert (=> b!4768538 m!5740036))

(declare-fun m!5740038 () Bool)

(assert (=> b!4768539 m!5740038))

(assert (=> b!4768534 m!5739990))

(declare-fun m!5740040 () Bool)

(assert (=> b!4768534 m!5740040))

(assert (=> b!4768534 m!5740040))

(declare-fun m!5740042 () Bool)

(assert (=> b!4768534 m!5740042))

(declare-fun m!5740044 () Bool)

(assert (=> bm!334297 m!5740044))

(declare-fun m!5740046 () Bool)

(assert (=> b!4768535 m!5740046))

(declare-fun m!5740048 () Bool)

(assert (=> b!4768535 m!5740048))

(assert (=> b!4768540 m!5739990))

(assert (=> b!4768540 m!5740040))

(assert (=> d!1524203 m!5740046))

(assert (=> b!4768541 m!5739990))

(assert (=> b!4768541 m!5740040))

(assert (=> b!4768541 m!5740040))

(assert (=> b!4768541 m!5740042))

(assert (=> b!4768542 m!5740032))

(assert (=> b!4768542 m!5740032))

(assert (=> b!4768542 m!5740034))

(assert (=> b!4768470 d!1524203))

(declare-fun bs!1149195 () Bool)

(declare-fun d!1524205 () Bool)

(assert (= bs!1149195 (and d!1524205 d!1524141)))

(declare-fun lambda!224671 () Int)

(assert (=> bs!1149195 (= lambda!224671 lambda!224661)))

(declare-fun bs!1149196 () Bool)

(assert (= bs!1149196 (and d!1524205 d!1524121)))

(assert (=> bs!1149196 (= lambda!224671 lambda!224658)))

(declare-fun bs!1149197 () Bool)

(assert (= bs!1149197 (and d!1524205 b!4768288)))

(assert (=> bs!1149197 (= lambda!224671 lambda!224638)))

(declare-fun bs!1149198 () Bool)

(assert (= bs!1149198 (and d!1524205 d!1524119)))

(assert (=> bs!1149198 (= lambda!224671 lambda!224651)))

(declare-fun bs!1149199 () Bool)

(assert (= bs!1149199 (and d!1524205 b!4768415)))

(assert (=> bs!1149199 (= lambda!224671 lambda!224664)))

(declare-fun bs!1149200 () Bool)

(assert (= bs!1149200 (and d!1524205 b!4768475)))

(assert (=> bs!1149200 (= lambda!224671 lambda!224670)))

(declare-fun bs!1149201 () Bool)

(assert (= bs!1149201 (and d!1524205 d!1524171)))

(assert (=> bs!1149201 (= lambda!224671 lambda!224667)))

(declare-fun lt!1931455 () ListMap!5807)

(assert (=> d!1524205 (invariantList!1664 (toList!6312 lt!1931455))))

(declare-fun e!2976512 () ListMap!5807)

(assert (=> d!1524205 (= lt!1931455 e!2976512)))

(declare-fun c!813411 () Bool)

(assert (=> d!1524205 (= c!813411 ((_ is Cons!53510) (toList!6311 lt!1931413)))))

(assert (=> d!1524205 (forall!11880 (toList!6311 lt!1931413) lambda!224671)))

(assert (=> d!1524205 (= (extractMap!2155 (toList!6311 lt!1931413)) lt!1931455)))

(declare-fun b!4768543 () Bool)

(assert (=> b!4768543 (= e!2976512 (addToMapMapFromBucket!1629 (_2!31083 (h!59922 (toList!6311 lt!1931413))) (extractMap!2155 (t!361064 (toList!6311 lt!1931413)))))))

(declare-fun b!4768544 () Bool)

(assert (=> b!4768544 (= e!2976512 (ListMap!5808 Nil!53509))))

(assert (= (and d!1524205 c!813411) b!4768543))

(assert (= (and d!1524205 (not c!813411)) b!4768544))

(declare-fun m!5740050 () Bool)

(assert (=> d!1524205 m!5740050))

(declare-fun m!5740052 () Bool)

(assert (=> d!1524205 m!5740052))

(declare-fun m!5740054 () Bool)

(assert (=> b!4768543 m!5740054))

(assert (=> b!4768543 m!5740054))

(declare-fun m!5740056 () Bool)

(assert (=> b!4768543 m!5740056))

(assert (=> b!4768470 d!1524205))

(declare-fun bs!1149202 () Bool)

(declare-fun d!1524207 () Bool)

(assert (= bs!1149202 (and d!1524207 d!1524141)))

(declare-fun lambda!224674 () Int)

(assert (=> bs!1149202 (= lambda!224674 lambda!224661)))

(declare-fun bs!1149203 () Bool)

(assert (= bs!1149203 (and d!1524207 d!1524121)))

(assert (=> bs!1149203 (= lambda!224674 lambda!224658)))

(declare-fun bs!1149204 () Bool)

(assert (= bs!1149204 (and d!1524207 b!4768288)))

(assert (=> bs!1149204 (= lambda!224674 lambda!224638)))

(declare-fun bs!1149205 () Bool)

(assert (= bs!1149205 (and d!1524207 d!1524119)))

(assert (=> bs!1149205 (= lambda!224674 lambda!224651)))

(declare-fun bs!1149206 () Bool)

(assert (= bs!1149206 (and d!1524207 b!4768415)))

(assert (=> bs!1149206 (= lambda!224674 lambda!224664)))

(declare-fun bs!1149207 () Bool)

(assert (= bs!1149207 (and d!1524207 b!4768475)))

(assert (=> bs!1149207 (= lambda!224674 lambda!224670)))

(declare-fun bs!1149208 () Bool)

(assert (= bs!1149208 (and d!1524207 d!1524171)))

(assert (=> bs!1149208 (= lambda!224674 lambda!224667)))

(declare-fun bs!1149209 () Bool)

(assert (= bs!1149209 (and d!1524207 d!1524205)))

(assert (=> bs!1149209 (= lambda!224674 lambda!224671)))

(assert (=> d!1524207 (contains!16870 (extractMap!2155 (toList!6311 lt!1931413)) key!1776)))

(declare-fun lt!1931458 () Unit!138311)

(declare-fun choose!34003 (ListLongMap!4709 K!14989 Hashable!6600) Unit!138311)

(assert (=> d!1524207 (= lt!1931458 (choose!34003 lt!1931413 key!1776 (hashF!12473 thiss!42052)))))

(assert (=> d!1524207 (forall!11880 (toList!6311 lt!1931413) lambda!224674)))

(assert (=> d!1524207 (= (lemmaInLongMapThenInGenericMap!205 lt!1931413 key!1776 (hashF!12473 thiss!42052)) lt!1931458)))

(declare-fun bs!1149210 () Bool)

(assert (= bs!1149210 d!1524207))

(assert (=> bs!1149210 m!5739990))

(assert (=> bs!1149210 m!5739990))

(assert (=> bs!1149210 m!5739992))

(declare-fun m!5740058 () Bool)

(assert (=> bs!1149210 m!5740058))

(declare-fun m!5740060 () Bool)

(assert (=> bs!1149210 m!5740060))

(assert (=> b!4768470 d!1524207))

(declare-fun d!1524209 () Bool)

(declare-fun valid!3946 (LongMapFixedSize!9878) Bool)

(assert (=> d!1524209 (= (valid!3945 (v!47740 (underlying!10086 thiss!42052))) (valid!3946 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))))))

(declare-fun bs!1149211 () Bool)

(assert (= bs!1149211 d!1524209))

(declare-fun m!5740062 () Bool)

(assert (=> bs!1149211 m!5740062))

(assert (=> d!1524155 d!1524209))

(declare-fun d!1524211 () Bool)

(declare-fun res!2022480 () Bool)

(declare-fun e!2976513 () Bool)

(assert (=> d!1524211 (=> res!2022480 e!2976513)))

(assert (=> d!1524211 (= res!2022480 ((_ is Nil!53510) (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))))))

(assert (=> d!1524211 (= (forall!11880 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lambda!224664) e!2976513)))

(declare-fun b!4768545 () Bool)

(declare-fun e!2976514 () Bool)

(assert (=> b!4768545 (= e!2976513 e!2976514)))

(declare-fun res!2022481 () Bool)

(assert (=> b!4768545 (=> (not res!2022481) (not e!2976514))))

(assert (=> b!4768545 (= res!2022481 (dynLambda!21958 lambda!224664 (h!59922 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))))))

(declare-fun b!4768546 () Bool)

(assert (=> b!4768546 (= e!2976514 (forall!11880 (t!361064 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))) lambda!224664))))

(assert (= (and d!1524211 (not res!2022480)) b!4768545))

(assert (= (and b!4768545 res!2022481) b!4768546))

(declare-fun b_lambda!184467 () Bool)

(assert (=> (not b_lambda!184467) (not b!4768545)))

(declare-fun m!5740064 () Bool)

(assert (=> b!4768545 m!5740064))

(declare-fun m!5740066 () Bool)

(assert (=> b!4768546 m!5740066))

(assert (=> b!4768415 d!1524211))

(assert (=> b!4768415 d!1524135))

(declare-fun d!1524213 () Bool)

(assert (=> d!1524213 (= (isEmpty!29287 lt!1931246) (not ((_ is Some!12703) lt!1931246)))))

(assert (=> d!1524145 d!1524213))

(declare-fun d!1524215 () Bool)

(declare-fun lt!1931461 () Bool)

(assert (=> d!1524215 (= lt!1931461 (contains!16867 (map!12010 (v!47740 (underlying!10086 thiss!42052))) lt!1931249))))

(declare-fun contains!16873 (LongMapFixedSize!9878 (_ BitVec 64)) Bool)

(assert (=> d!1524215 (= lt!1931461 (contains!16873 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))) lt!1931249))))

(assert (=> d!1524215 (valid!3945 (v!47740 (underlying!10086 thiss!42052)))))

(assert (=> d!1524215 (= (contains!16871 (v!47740 (underlying!10086 thiss!42052)) lt!1931249) lt!1931461)))

(declare-fun bs!1149212 () Bool)

(assert (= bs!1149212 d!1524215))

(assert (=> bs!1149212 m!5739760))

(assert (=> bs!1149212 m!5739760))

(declare-fun m!5740068 () Bool)

(assert (=> bs!1149212 m!5740068))

(declare-fun m!5740070 () Bool)

(assert (=> bs!1149212 m!5740070))

(assert (=> bs!1149212 m!5739914))

(assert (=> d!1524149 d!1524215))

(declare-fun b!4768583 () Bool)

(declare-fun res!2022492 () Bool)

(declare-fun e!2976546 () Bool)

(assert (=> b!4768583 (=> (not res!2022492) (not e!2976546))))

(assert (=> b!4768583 (= res!2022492 (not (= (bvand (extraKeys!5214 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!2976540 () Bool)

(assert (=> b!4768583 (= e!2976540 e!2976546)))

(declare-fun call!334312 () ListLongMap!4709)

(declare-fun call!334313 () ListLongMap!4709)

(declare-fun bm!334306 () Bool)

(declare-fun c!813430 () Bool)

(declare-fun call!334314 () List!53633)

(assert (=> bm!334306 (= call!334314 (apply!12644 (ite c!813430 call!334312 call!334313) lt!1931249))))

(declare-fun b!4768584 () Bool)

(declare-fun e!2976538 () List!53633)

(assert (=> b!4768584 (= e!2976538 (zeroValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))))))

(declare-fun b!4768585 () Bool)

(declare-fun e!2976537 () Bool)

(declare-datatypes ((SeekEntryResult!27 0))(
  ( (Found!27 (index!1490 (_ BitVec 32))) (Undefined!27) (MissingZero!27 (index!1491 (_ BitVec 32))) (MissingVacant!27 (index!1492 (_ BitVec 32))) (Intermediate!27 (undefined!108 Bool) (index!1493 (_ BitVec 32)) (x!819476 (_ BitVec 32))) )
))
(declare-fun lt!1931488 () SeekEntryResult!27)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4768585 (= e!2976537 (inRange!0 (index!1490 lt!1931488) (mask!14704 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))))))

(declare-fun b!4768586 () Bool)

(declare-fun e!2976545 () Bool)

(assert (=> b!4768586 (= e!2976545 e!2976540)))

(declare-fun c!813432 () Bool)

(assert (=> b!4768586 (= c!813432 (= lt!1931249 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4768587 () Bool)

(declare-fun e!2976541 () List!53633)

(assert (=> b!4768587 (= e!2976541 e!2976538)))

(declare-fun c!813426 () Bool)

(assert (=> b!4768587 (= c!813426 (and (= lt!1931249 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5214 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4768588 () Bool)

(declare-fun res!2022491 () Bool)

(declare-fun e!2976539 () Bool)

(assert (=> b!4768588 (=> (not res!2022491) (not e!2976539))))

(declare-fun arrayContainsKey!0 (array!18080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4768588 (= res!2022491 (arrayContainsKey!0 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) lt!1931249 #b00000000000000000000000000000000))))

(assert (=> b!4768588 (= e!2976540 e!2976539)))

(declare-fun call!334311 () List!53633)

(declare-fun b!4768589 () Bool)

(declare-fun lt!1931485 () SeekEntryResult!27)

(assert (=> b!4768589 (= e!2976539 (= call!334311 (select (arr!8064 (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) (index!1490 lt!1931485))))))

(declare-fun b!4768590 () Bool)

(assert (=> b!4768590 (= e!2976546 (= call!334311 (minValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))))))

(declare-fun b!4768591 () Bool)

(declare-fun e!2976544 () Bool)

(assert (=> b!4768591 (= e!2976545 e!2976544)))

(declare-fun res!2022493 () Bool)

(assert (=> b!4768591 (= res!2022493 (not (= (bvand (extraKeys!5214 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4768591 (=> (not res!2022493) (not e!2976544))))

(declare-fun d!1524217 () Bool)

(declare-fun e!2976542 () Bool)

(assert (=> d!1524217 e!2976542))

(declare-fun c!813427 () Bool)

(assert (=> d!1524217 (= c!813427 (contains!16873 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))) lt!1931249))))

(declare-fun lt!1931489 () List!53633)

(assert (=> d!1524217 (= lt!1931489 e!2976541)))

(declare-fun c!813431 () Bool)

(assert (=> d!1524217 (= c!813431 (= lt!1931249 (bvneg lt!1931249)))))

(assert (=> d!1524217 (valid!3946 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))))

(assert (=> d!1524217 (= (apply!12646 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))) lt!1931249) lt!1931489)))

(declare-fun b!4768592 () Bool)

(declare-fun e!2976543 () List!53633)

(assert (=> b!4768592 (= e!2976543 (dynLambda!21959 (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) lt!1931249))))

(declare-fun b!4768593 () Bool)

(declare-fun c!813428 () Bool)

(assert (=> b!4768593 (= c!813428 (and (= lt!1931249 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5214 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!2976547 () List!53633)

(assert (=> b!4768593 (= e!2976538 e!2976547)))

(declare-fun b!4768594 () Bool)

(assert (=> b!4768594 (= e!2976544 (= call!334314 (zeroValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))))))

(declare-fun b!4768595 () Bool)

(assert (=> b!4768595 (= e!2976542 (= lt!1931489 (dynLambda!21959 (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) lt!1931249)))))

(declare-fun bm!334307 () Bool)

(declare-fun getCurrentListMap!30 (array!18080 array!18082 (_ BitVec 32) (_ BitVec 32) List!53633 List!53633 (_ BitVec 32) Int) ListLongMap!4709)

(assert (=> bm!334307 (= call!334312 (getCurrentListMap!30 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (mask!14704 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (extraKeys!5214 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (zeroValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (minValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) #b00000000000000000000000000000000 (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))))))

(declare-fun bm!334308 () Bool)

(assert (=> bm!334308 (= call!334311 call!334314)))

(declare-fun bm!334309 () Bool)

(assert (=> bm!334309 (= call!334313 call!334312)))

(declare-fun b!4768596 () Bool)

(assert (=> b!4768596 (= e!2976547 (dynLambda!21959 (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) lt!1931249))))

(declare-fun b!4768597 () Bool)

(assert (=> b!4768597 (= e!2976542 (= lt!1931489 (get!18067 (getValueByKey!2201 (toList!6311 (map!12011 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) lt!1931249))))))

(declare-fun b!4768598 () Bool)

(declare-fun lt!1931486 () Unit!138311)

(declare-fun lt!1931494 () Unit!138311)

(assert (=> b!4768598 (= lt!1931486 lt!1931494)))

(assert (=> b!4768598 e!2976545))

(assert (=> b!4768598 (= c!813430 (= lt!1931249 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lemmaKeyInListMapThenSameValueInArray!15 (array!18080 array!18082 (_ BitVec 32) (_ BitVec 32) List!53633 List!53633 (_ BitVec 64) (_ BitVec 32) Int) Unit!138311)

(assert (=> b!4768598 (= lt!1931494 (lemmaKeyInListMapThenSameValueInArray!15 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (mask!14704 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (extraKeys!5214 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (zeroValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (minValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) lt!1931249 (index!1490 lt!1931485) (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))))))

(declare-fun lt!1931484 () Unit!138311)

(declare-fun lt!1931491 () Unit!138311)

(assert (=> b!4768598 (= lt!1931484 lt!1931491)))

(assert (=> b!4768598 (contains!16867 (getCurrentListMap!30 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (mask!14704 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (extraKeys!5214 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (zeroValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (minValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) #b00000000000000000000000000000000 (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) (select (arr!8063 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) (index!1490 lt!1931485)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!20 (array!18080 array!18082 (_ BitVec 32) (_ BitVec 32) List!53633 List!53633 (_ BitVec 32) Int) Unit!138311)

(assert (=> b!4768598 (= lt!1931491 (lemmaValidKeyInArrayIsInListMap!20 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (mask!14704 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (extraKeys!5214 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (zeroValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (minValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (index!1490 lt!1931485) (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))))))

(declare-fun lt!1931492 () Unit!138311)

(declare-fun lt!1931493 () Unit!138311)

(assert (=> b!4768598 (= lt!1931492 lt!1931493)))

(assert (=> b!4768598 (arrayContainsKey!0 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) lt!1931249 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18080 (_ BitVec 64) (_ BitVec 32)) Unit!138311)

(assert (=> b!4768598 (= lt!1931493 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) lt!1931249 (index!1490 lt!1931485)))))

(assert (=> b!4768598 (= e!2976543 (select (arr!8064 (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) (index!1490 lt!1931485)))))

(declare-fun b!4768599 () Bool)

(assert (=> b!4768599 (= e!2976547 (minValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))))))

(declare-fun b!4768600 () Bool)

(assert (=> b!4768600 (= e!2976541 e!2976543)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!18080 (_ BitVec 32)) SeekEntryResult!27)

(assert (=> b!4768600 (= lt!1931485 (seekEntry!0 lt!1931249 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (mask!14704 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))))))

(declare-fun lt!1931490 () Unit!138311)

(declare-fun lemmaSeekEntryGivesInRangeIndex!15 (array!18080 array!18082 (_ BitVec 32) (_ BitVec 32) List!53633 List!53633 (_ BitVec 64)) Unit!138311)

(assert (=> b!4768600 (= lt!1931490 (lemmaSeekEntryGivesInRangeIndex!15 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (mask!14704 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (extraKeys!5214 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (zeroValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (minValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) lt!1931249))))

(assert (=> b!4768600 (= lt!1931488 (seekEntry!0 lt!1931249 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (mask!14704 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))))))

(declare-fun res!2022490 () Bool)

(assert (=> b!4768600 (= res!2022490 (not ((_ is Found!27) lt!1931488)))))

(assert (=> b!4768600 (=> res!2022490 e!2976537)))

(assert (=> b!4768600 e!2976537))

(declare-fun lt!1931487 () Unit!138311)

(assert (=> b!4768600 (= lt!1931487 lt!1931490)))

(declare-fun c!813429 () Bool)

(assert (=> b!4768600 (= c!813429 ((_ is Found!27) lt!1931485))))

(assert (= (and d!1524217 c!813431) b!4768587))

(assert (= (and d!1524217 (not c!813431)) b!4768600))

(assert (= (and b!4768587 c!813426) b!4768584))

(assert (= (and b!4768587 (not c!813426)) b!4768593))

(assert (= (and b!4768593 c!813428) b!4768599))

(assert (= (and b!4768593 (not c!813428)) b!4768596))

(assert (= (and b!4768600 (not res!2022490)) b!4768585))

(assert (= (and b!4768600 c!813429) b!4768598))

(assert (= (and b!4768600 (not c!813429)) b!4768592))

(assert (= (and b!4768598 c!813430) b!4768591))

(assert (= (and b!4768598 (not c!813430)) b!4768586))

(assert (= (and b!4768591 res!2022493) b!4768594))

(assert (= (and b!4768586 c!813432) b!4768583))

(assert (= (and b!4768586 (not c!813432)) b!4768588))

(assert (= (and b!4768583 res!2022492) b!4768590))

(assert (= (and b!4768588 res!2022491) b!4768589))

(assert (= (or b!4768590 b!4768589) bm!334309))

(assert (= (or b!4768590 b!4768589) bm!334308))

(assert (= (or b!4768594 bm!334309) bm!334307))

(assert (= (or b!4768594 bm!334308) bm!334306))

(assert (= (and d!1524217 c!813427) b!4768597))

(assert (= (and d!1524217 (not c!813427)) b!4768595))

(declare-fun b_lambda!184469 () Bool)

(assert (=> (not b_lambda!184469) (not b!4768592)))

(assert (=> b!4768592 t!361066))

(declare-fun b_and!341427 () Bool)

(assert (= b_and!341425 (and (=> t!361066 result!319134) b_and!341427)))

(declare-fun b_lambda!184471 () Bool)

(assert (=> (not b_lambda!184471) (not b!4768595)))

(assert (=> b!4768595 t!361066))

(declare-fun b_and!341429 () Bool)

(assert (= b_and!341427 (and (=> t!361066 result!319134) b_and!341429)))

(declare-fun b_lambda!184473 () Bool)

(assert (=> (not b_lambda!184473) (not b!4768596)))

(assert (=> b!4768596 t!361066))

(declare-fun b_and!341431 () Bool)

(assert (= b_and!341429 (and (=> t!361066 result!319134) b_and!341431)))

(declare-fun m!5740072 () Bool)

(assert (=> b!4768589 m!5740072))

(declare-fun m!5740074 () Bool)

(assert (=> b!4768588 m!5740074))

(assert (=> d!1524217 m!5740070))

(assert (=> d!1524217 m!5740062))

(declare-fun m!5740076 () Bool)

(assert (=> b!4768598 m!5740076))

(declare-fun m!5740078 () Bool)

(assert (=> b!4768598 m!5740078))

(assert (=> b!4768598 m!5740076))

(declare-fun m!5740080 () Bool)

(assert (=> b!4768598 m!5740080))

(declare-fun m!5740082 () Bool)

(assert (=> b!4768598 m!5740082))

(declare-fun m!5740084 () Bool)

(assert (=> b!4768598 m!5740084))

(assert (=> b!4768598 m!5740072))

(declare-fun m!5740086 () Bool)

(assert (=> b!4768598 m!5740086))

(assert (=> b!4768598 m!5740078))

(assert (=> b!4768598 m!5740074))

(assert (=> bm!334307 m!5740078))

(assert (=> b!4768595 m!5739920))

(declare-fun m!5740088 () Bool)

(assert (=> b!4768600 m!5740088))

(declare-fun m!5740090 () Bool)

(assert (=> b!4768600 m!5740090))

(assert (=> b!4768596 m!5739920))

(assert (=> b!4768592 m!5739920))

(assert (=> b!4768597 m!5739886))

(declare-fun m!5740092 () Bool)

(assert (=> b!4768597 m!5740092))

(assert (=> b!4768597 m!5740092))

(declare-fun m!5740094 () Bool)

(assert (=> b!4768597 m!5740094))

(declare-fun m!5740096 () Bool)

(assert (=> bm!334306 m!5740096))

(declare-fun m!5740098 () Bool)

(assert (=> b!4768585 m!5740098))

(assert (=> d!1524149 d!1524217))

(assert (=> d!1524149 d!1524209))

(declare-fun d!1524219 () Bool)

(assert (=> d!1524219 (= (map!12011 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (getCurrentListMap!30 (_keys!5281 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (_values!5252 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (mask!14704 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (extraKeys!5214 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (zeroValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (minValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) #b00000000000000000000000000000000 (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))))))

(declare-fun bs!1149213 () Bool)

(assert (= bs!1149213 d!1524219))

(assert (=> bs!1149213 m!5740078))

(assert (=> d!1524135 d!1524219))

(declare-fun d!1524221 () Bool)

(assert (=> d!1524221 (= (isDefined!9857 (getPair!652 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411) key!1776)) (not (isEmpty!29287 (getPair!652 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411) key!1776))))))

(declare-fun bs!1149214 () Bool)

(assert (= bs!1149214 d!1524221))

(assert (=> bs!1149214 m!5739984))

(declare-fun m!5740100 () Bool)

(assert (=> bs!1149214 m!5740100))

(assert (=> b!4768472 d!1524221))

(declare-fun b!4768601 () Bool)

(declare-fun e!2976551 () Option!12704)

(assert (=> b!4768601 (= e!2976551 (getPair!652 (t!361063 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411)) key!1776))))

(declare-fun lt!1931495 () Option!12704)

(declare-fun e!2976549 () Bool)

(declare-fun b!4768603 () Bool)

(assert (=> b!4768603 (= e!2976549 (contains!16869 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411) (get!18065 lt!1931495)))))

(declare-fun b!4768604 () Bool)

(declare-fun e!2976548 () Bool)

(assert (=> b!4768604 (= e!2976548 (not (containsKey!3672 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411) key!1776)))))

(declare-fun b!4768605 () Bool)

(declare-fun e!2976552 () Option!12704)

(assert (=> b!4768605 (= e!2976552 (Some!12703 (h!59921 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))))))

(declare-fun b!4768606 () Bool)

(declare-fun res!2022495 () Bool)

(assert (=> b!4768606 (=> (not res!2022495) (not e!2976549))))

(assert (=> b!4768606 (= res!2022495 (= (_1!31082 (get!18065 lt!1931495)) key!1776))))

(declare-fun b!4768607 () Bool)

(declare-fun e!2976550 () Bool)

(assert (=> b!4768607 (= e!2976550 e!2976549)))

(declare-fun res!2022496 () Bool)

(assert (=> b!4768607 (=> (not res!2022496) (not e!2976549))))

(assert (=> b!4768607 (= res!2022496 (isDefined!9857 lt!1931495))))

(declare-fun b!4768608 () Bool)

(assert (=> b!4768608 (= e!2976551 None!12703)))

(declare-fun d!1524223 () Bool)

(assert (=> d!1524223 e!2976550))

(declare-fun res!2022497 () Bool)

(assert (=> d!1524223 (=> res!2022497 e!2976550)))

(assert (=> d!1524223 (= res!2022497 e!2976548)))

(declare-fun res!2022494 () Bool)

(assert (=> d!1524223 (=> (not res!2022494) (not e!2976548))))

(assert (=> d!1524223 (= res!2022494 (isEmpty!29287 lt!1931495))))

(assert (=> d!1524223 (= lt!1931495 e!2976552)))

(declare-fun c!813434 () Bool)

(assert (=> d!1524223 (= c!813434 (and ((_ is Cons!53509) (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411)) (= (_1!31082 (h!59921 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))) key!1776)))))

(assert (=> d!1524223 (noDuplicateKeys!2258 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))))

(assert (=> d!1524223 (= (getPair!652 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411) key!1776) lt!1931495)))

(declare-fun b!4768602 () Bool)

(assert (=> b!4768602 (= e!2976552 e!2976551)))

(declare-fun c!813433 () Bool)

(assert (=> b!4768602 (= c!813433 ((_ is Cons!53509) (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411)))))

(assert (= (and d!1524223 c!813434) b!4768605))

(assert (= (and d!1524223 (not c!813434)) b!4768602))

(assert (= (and b!4768602 c!813433) b!4768601))

(assert (= (and b!4768602 (not c!813433)) b!4768608))

(assert (= (and d!1524223 res!2022494) b!4768604))

(assert (= (and d!1524223 (not res!2022497)) b!4768607))

(assert (= (and b!4768607 res!2022496) b!4768606))

(assert (= (and b!4768606 res!2022495) b!4768603))

(assert (=> b!4768604 m!5739970))

(declare-fun m!5740102 () Bool)

(assert (=> b!4768604 m!5740102))

(declare-fun m!5740104 () Bool)

(assert (=> b!4768603 m!5740104))

(assert (=> b!4768603 m!5739970))

(assert (=> b!4768603 m!5740104))

(declare-fun m!5740106 () Bool)

(assert (=> b!4768603 m!5740106))

(assert (=> b!4768606 m!5740104))

(declare-fun m!5740108 () Bool)

(assert (=> b!4768601 m!5740108))

(declare-fun m!5740110 () Bool)

(assert (=> d!1524223 m!5740110))

(assert (=> d!1524223 m!5739970))

(declare-fun m!5740112 () Bool)

(assert (=> d!1524223 m!5740112))

(declare-fun m!5740114 () Bool)

(assert (=> b!4768607 m!5740114))

(assert (=> b!4768472 d!1524223))

(declare-fun d!1524225 () Bool)

(declare-fun e!2976553 () Bool)

(assert (=> d!1524225 e!2976553))

(declare-fun c!813435 () Bool)

(assert (=> d!1524225 (= c!813435 (contains!16871 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))))

(declare-fun lt!1931496 () List!53633)

(assert (=> d!1524225 (= lt!1931496 (apply!12646 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))) lt!1931411))))

(assert (=> d!1524225 (valid!3945 (v!47740 (underlying!10086 thiss!42052)))))

(assert (=> d!1524225 (= (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411) lt!1931496)))

(declare-fun b!4768609 () Bool)

(assert (=> b!4768609 (= e!2976553 (= lt!1931496 (get!18067 (getValueByKey!2201 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lt!1931411))))))

(declare-fun b!4768610 () Bool)

(assert (=> b!4768610 (= e!2976553 (= lt!1931496 (dynLambda!21959 (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) lt!1931411)))))

(assert (=> b!4768610 ((_ is LongMap!4939) (v!47740 (underlying!10086 thiss!42052)))))

(assert (= (and d!1524225 c!813435) b!4768609))

(assert (= (and d!1524225 (not c!813435)) b!4768610))

(declare-fun b_lambda!184475 () Bool)

(assert (=> (not b_lambda!184475) (not b!4768610)))

(declare-fun t!361068 () Bool)

(declare-fun tb!257485 () Bool)

(assert (=> (and b!4768289 (= (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))) t!361068) tb!257485))

(assert (=> b!4768610 t!361068))

(declare-fun result!319140 () Bool)

(declare-fun b_and!341433 () Bool)

(assert (= b_and!341431 (and (=> t!361068 result!319140) b_and!341433)))

(assert (=> d!1524225 m!5739976))

(declare-fun m!5740116 () Bool)

(assert (=> d!1524225 m!5740116))

(assert (=> d!1524225 m!5739914))

(assert (=> b!4768609 m!5739760))

(declare-fun m!5740118 () Bool)

(assert (=> b!4768609 m!5740118))

(assert (=> b!4768609 m!5740118))

(declare-fun m!5740120 () Bool)

(assert (=> b!4768609 m!5740120))

(declare-fun m!5740122 () Bool)

(assert (=> b!4768610 m!5740122))

(assert (=> b!4768472 d!1524225))

(declare-fun d!1524227 () Bool)

(declare-fun e!2976554 () Bool)

(assert (=> d!1524227 e!2976554))

(declare-fun res!2022498 () Bool)

(assert (=> d!1524227 (=> res!2022498 e!2976554)))

(declare-fun lt!1931497 () Bool)

(assert (=> d!1524227 (= res!2022498 (not lt!1931497))))

(declare-fun lt!1931500 () Bool)

(assert (=> d!1524227 (= lt!1931497 lt!1931500)))

(declare-fun lt!1931498 () Unit!138311)

(declare-fun e!2976555 () Unit!138311)

(assert (=> d!1524227 (= lt!1931498 e!2976555)))

(declare-fun c!813436 () Bool)

(assert (=> d!1524227 (= c!813436 lt!1931500)))

(assert (=> d!1524227 (= lt!1931500 (containsKey!3673 (toList!6311 (ite c!813401 lt!1931419 call!334295)) call!334297))))

(assert (=> d!1524227 (= (contains!16867 (ite c!813401 lt!1931419 call!334295) call!334297) lt!1931497)))

(declare-fun b!4768611 () Bool)

(declare-fun lt!1931499 () Unit!138311)

(assert (=> b!4768611 (= e!2976555 lt!1931499)))

(assert (=> b!4768611 (= lt!1931499 (lemmaContainsKeyImpliesGetValueByKeyDefined!1997 (toList!6311 (ite c!813401 lt!1931419 call!334295)) call!334297))))

(assert (=> b!4768611 (isDefined!9856 (getValueByKey!2201 (toList!6311 (ite c!813401 lt!1931419 call!334295)) call!334297))))

(declare-fun b!4768612 () Bool)

(declare-fun Unit!138323 () Unit!138311)

(assert (=> b!4768612 (= e!2976555 Unit!138323)))

(declare-fun b!4768613 () Bool)

(assert (=> b!4768613 (= e!2976554 (isDefined!9856 (getValueByKey!2201 (toList!6311 (ite c!813401 lt!1931419 call!334295)) call!334297)))))

(assert (= (and d!1524227 c!813436) b!4768611))

(assert (= (and d!1524227 (not c!813436)) b!4768612))

(assert (= (and d!1524227 (not res!2022498)) b!4768613))

(declare-fun m!5740124 () Bool)

(assert (=> d!1524227 m!5740124))

(declare-fun m!5740126 () Bool)

(assert (=> b!4768611 m!5740126))

(assert (=> b!4768611 m!5740022))

(assert (=> b!4768611 m!5740022))

(declare-fun m!5740128 () Bool)

(assert (=> b!4768611 m!5740128))

(assert (=> b!4768613 m!5740022))

(assert (=> b!4768613 m!5740022))

(assert (=> b!4768613 m!5740128))

(assert (=> bm!334290 d!1524227))

(declare-fun d!1524229 () Bool)

(declare-fun e!2976557 () Bool)

(assert (=> d!1524229 e!2976557))

(declare-fun res!2022500 () Bool)

(assert (=> d!1524229 (=> res!2022500 e!2976557)))

(declare-fun e!2976560 () Bool)

(assert (=> d!1524229 (= res!2022500 e!2976560)))

(declare-fun res!2022501 () Bool)

(assert (=> d!1524229 (=> (not res!2022501) (not e!2976560))))

(declare-fun lt!1931503 () Bool)

(assert (=> d!1524229 (= res!2022501 (not lt!1931503))))

(declare-fun lt!1931504 () Bool)

(assert (=> d!1524229 (= lt!1931503 lt!1931504)))

(declare-fun lt!1931506 () Unit!138311)

(declare-fun e!2976556 () Unit!138311)

(assert (=> d!1524229 (= lt!1931506 e!2976556)))

(declare-fun c!813439 () Bool)

(assert (=> d!1524229 (= c!813439 lt!1931504)))

(assert (=> d!1524229 (= lt!1931504 (containsKey!3674 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776))))

(assert (=> d!1524229 (= (contains!16870 (extractMap!2155 (toList!6311 lt!1931247)) key!1776) lt!1931503)))

(declare-fun b!4768614 () Bool)

(declare-fun e!2976561 () Bool)

(assert (=> b!4768614 (= e!2976561 (contains!16872 (keys!19401 (extractMap!2155 (toList!6311 lt!1931247))) key!1776))))

(declare-fun b!4768615 () Bool)

(assert (=> b!4768615 false))

(declare-fun lt!1931507 () Unit!138311)

(declare-fun lt!1931508 () Unit!138311)

(assert (=> b!4768615 (= lt!1931507 lt!1931508)))

(assert (=> b!4768615 (containsKey!3674 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776)))

(assert (=> b!4768615 (= lt!1931508 (lemmaInGetKeysListThenContainsKey!1006 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776))))

(declare-fun e!2976558 () Unit!138311)

(declare-fun Unit!138324 () Unit!138311)

(assert (=> b!4768615 (= e!2976558 Unit!138324)))

(declare-fun b!4768616 () Bool)

(assert (=> b!4768616 (= e!2976556 e!2976558)))

(declare-fun c!813438 () Bool)

(declare-fun call!334315 () Bool)

(assert (=> b!4768616 (= c!813438 call!334315)))

(declare-fun b!4768617 () Bool)

(declare-fun Unit!138325 () Unit!138311)

(assert (=> b!4768617 (= e!2976558 Unit!138325)))

(declare-fun b!4768618 () Bool)

(declare-fun lt!1931501 () Unit!138311)

(assert (=> b!4768618 (= e!2976556 lt!1931501)))

(declare-fun lt!1931505 () Unit!138311)

(assert (=> b!4768618 (= lt!1931505 (lemmaContainsKeyImpliesGetValueByKeyDefined!1998 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776))))

(assert (=> b!4768618 (isDefined!9855 (getValueByKey!2200 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776))))

(declare-fun lt!1931502 () Unit!138311)

(assert (=> b!4768618 (= lt!1931502 lt!1931505)))

(assert (=> b!4768618 (= lt!1931501 (lemmaInListThenGetKeysListContains!1002 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776))))

(assert (=> b!4768618 call!334315))

(declare-fun b!4768619 () Bool)

(declare-fun e!2976559 () List!53635)

(assert (=> b!4768619 (= e!2976559 (getKeysList!1007 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247)))))))

(declare-fun b!4768620 () Bool)

(assert (=> b!4768620 (= e!2976559 (keys!19401 (extractMap!2155 (toList!6311 lt!1931247))))))

(declare-fun b!4768621 () Bool)

(assert (=> b!4768621 (= e!2976560 (not (contains!16872 (keys!19401 (extractMap!2155 (toList!6311 lt!1931247))) key!1776)))))

(declare-fun b!4768622 () Bool)

(assert (=> b!4768622 (= e!2976557 e!2976561)))

(declare-fun res!2022499 () Bool)

(assert (=> b!4768622 (=> (not res!2022499) (not e!2976561))))

(assert (=> b!4768622 (= res!2022499 (isDefined!9855 (getValueByKey!2200 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776)))))

(declare-fun bm!334310 () Bool)

(assert (=> bm!334310 (= call!334315 (contains!16872 e!2976559 key!1776))))

(declare-fun c!813437 () Bool)

(assert (=> bm!334310 (= c!813437 c!813439)))

(assert (= (and d!1524229 c!813439) b!4768618))

(assert (= (and d!1524229 (not c!813439)) b!4768616))

(assert (= (and b!4768616 c!813438) b!4768615))

(assert (= (and b!4768616 (not c!813438)) b!4768617))

(assert (= (or b!4768618 b!4768616) bm!334310))

(assert (= (and bm!334310 c!813437) b!4768619))

(assert (= (and bm!334310 (not c!813437)) b!4768620))

(assert (= (and d!1524229 res!2022501) b!4768621))

(assert (= (and d!1524229 (not res!2022500)) b!4768622))

(assert (= (and b!4768622 res!2022499) b!4768614))

(declare-fun m!5740130 () Bool)

(assert (=> b!4768618 m!5740130))

(assert (=> b!4768618 m!5739728))

(assert (=> b!4768618 m!5739728))

(declare-fun m!5740132 () Bool)

(assert (=> b!4768618 m!5740132))

(declare-fun m!5740134 () Bool)

(assert (=> b!4768618 m!5740134))

(declare-fun m!5740136 () Bool)

(assert (=> b!4768619 m!5740136))

(assert (=> b!4768614 m!5739726))

(declare-fun m!5740138 () Bool)

(assert (=> b!4768614 m!5740138))

(assert (=> b!4768614 m!5740138))

(declare-fun m!5740140 () Bool)

(assert (=> b!4768614 m!5740140))

(declare-fun m!5740142 () Bool)

(assert (=> bm!334310 m!5740142))

(declare-fun m!5740144 () Bool)

(assert (=> b!4768615 m!5740144))

(declare-fun m!5740146 () Bool)

(assert (=> b!4768615 m!5740146))

(assert (=> b!4768620 m!5739726))

(assert (=> b!4768620 m!5740138))

(assert (=> d!1524229 m!5740144))

(assert (=> b!4768621 m!5739726))

(assert (=> b!4768621 m!5740138))

(assert (=> b!4768621 m!5740138))

(assert (=> b!4768621 m!5740140))

(assert (=> b!4768622 m!5739728))

(assert (=> b!4768622 m!5739728))

(assert (=> b!4768622 m!5740132))

(assert (=> b!4768369 d!1524229))

(assert (=> b!4768369 d!1524171))

(declare-fun b!4768626 () Bool)

(declare-fun e!2976563 () Option!12706)

(assert (=> b!4768626 (= e!2976563 None!12705)))

(declare-fun b!4768624 () Bool)

(declare-fun e!2976562 () Option!12706)

(assert (=> b!4768624 (= e!2976562 e!2976563)))

(declare-fun c!813441 () Bool)

(assert (=> b!4768624 (= c!813441 (and ((_ is Cons!53510) (t!361064 (toList!6311 lt!1931247))) (not (= (_1!31083 (h!59922 (t!361064 (toList!6311 lt!1931247)))) lt!1931249))))))

(declare-fun d!1524231 () Bool)

(declare-fun c!813440 () Bool)

(assert (=> d!1524231 (= c!813440 (and ((_ is Cons!53510) (t!361064 (toList!6311 lt!1931247))) (= (_1!31083 (h!59922 (t!361064 (toList!6311 lt!1931247)))) lt!1931249)))))

(assert (=> d!1524231 (= (getValueByKey!2201 (t!361064 (toList!6311 lt!1931247)) lt!1931249) e!2976562)))

(declare-fun b!4768625 () Bool)

(assert (=> b!4768625 (= e!2976563 (getValueByKey!2201 (t!361064 (t!361064 (toList!6311 lt!1931247))) lt!1931249))))

(declare-fun b!4768623 () Bool)

(assert (=> b!4768623 (= e!2976562 (Some!12705 (_2!31083 (h!59922 (t!361064 (toList!6311 lt!1931247))))))))

(assert (= (and d!1524231 c!813440) b!4768623))

(assert (= (and d!1524231 (not c!813440)) b!4768624))

(assert (= (and b!4768624 c!813441) b!4768625))

(assert (= (and b!4768624 (not c!813441)) b!4768626))

(declare-fun m!5740148 () Bool)

(assert (=> b!4768625 m!5740148))

(assert (=> b!4768430 d!1524231))

(declare-fun d!1524233 () Bool)

(declare-fun lt!1931509 () Bool)

(assert (=> d!1524233 (= lt!1931509 (select (content!9591 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931249 lt!1931230)))))

(declare-fun e!2976565 () Bool)

(assert (=> d!1524233 (= lt!1931509 e!2976565)))

(declare-fun res!2022502 () Bool)

(assert (=> d!1524233 (=> (not res!2022502) (not e!2976565))))

(assert (=> d!1524233 (= res!2022502 ((_ is Cons!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524233 (= (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931249 lt!1931230)) lt!1931509)))

(declare-fun b!4768627 () Bool)

(declare-fun e!2976564 () Bool)

(assert (=> b!4768627 (= e!2976565 e!2976564)))

(declare-fun res!2022503 () Bool)

(assert (=> b!4768627 (=> res!2022503 e!2976564)))

(assert (=> b!4768627 (= res!2022503 (= (h!59922 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931249 lt!1931230)))))

(declare-fun b!4768628 () Bool)

(assert (=> b!4768628 (= e!2976564 (contains!16866 (t!361064 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931249 lt!1931230)))))

(assert (= (and d!1524233 res!2022502) b!4768627))

(assert (= (and b!4768627 (not res!2022503)) b!4768628))

(assert (=> d!1524233 m!5739888))

(declare-fun m!5740150 () Bool)

(assert (=> d!1524233 m!5740150))

(declare-fun m!5740152 () Bool)

(assert (=> b!4768628 m!5740152))

(assert (=> d!1524123 d!1524233))

(declare-fun d!1524235 () Bool)

(assert (=> d!1524235 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931249 lt!1931230))))

(assert (=> d!1524235 true))

(declare-fun _$41!466 () Unit!138311)

(assert (=> d!1524235 (= (choose!33998 lt!1931247 lt!1931249 lt!1931230) _$41!466)))

(declare-fun bs!1149215 () Bool)

(assert (= bs!1149215 d!1524235))

(assert (=> bs!1149215 m!5739858))

(assert (=> d!1524123 d!1524235))

(assert (=> d!1524123 d!1524117))

(assert (=> bm!334292 d!1524143))

(declare-fun b!4768644 () Bool)

(assert (=> b!4768644 true))

(declare-fun bs!1149216 () Bool)

(declare-fun b!4768641 () Bool)

(assert (= bs!1149216 (and b!4768641 b!4768644)))

(declare-fun lambda!224704 () Int)

(declare-fun lambda!224703 () Int)

(assert (=> bs!1149216 (= lambda!224704 lambda!224703)))

(assert (=> b!4768641 true))

(declare-fun lt!1931554 () ListMap!5807)

(declare-fun lambda!224705 () Int)

(assert (=> bs!1149216 (= (= lt!1931554 (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))) (= lambda!224705 lambda!224703))))

(assert (=> b!4768641 (= (= lt!1931554 (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))) (= lambda!224705 lambda!224704))))

(assert (=> b!4768641 true))

(declare-fun bs!1149217 () Bool)

(declare-fun d!1524237 () Bool)

(assert (= bs!1149217 (and d!1524237 b!4768644)))

(declare-fun lambda!224706 () Int)

(declare-fun lt!1931559 () ListMap!5807)

(assert (=> bs!1149217 (= (= lt!1931559 (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))) (= lambda!224706 lambda!224703))))

(declare-fun bs!1149218 () Bool)

(assert (= bs!1149218 (and d!1524237 b!4768641)))

(assert (=> bs!1149218 (= (= lt!1931559 (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))) (= lambda!224706 lambda!224704))))

(assert (=> bs!1149218 (= (= lt!1931559 lt!1931554) (= lambda!224706 lambda!224705))))

(assert (=> d!1524237 true))

(declare-fun b!4768640 () Bool)

(declare-fun res!2022510 () Bool)

(declare-fun e!2976574 () Bool)

(assert (=> b!4768640 (=> (not res!2022510) (not e!2976574))))

(declare-fun forall!11881 (List!53633 Int) Bool)

(assert (=> b!4768640 (= res!2022510 (forall!11881 (toList!6312 (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))) lambda!224706))))

(declare-fun lt!1931557 () ListMap!5807)

(declare-fun bm!334317 () Bool)

(declare-fun call!334323 () Bool)

(declare-fun c!813444 () Bool)

(assert (=> bm!334317 (= call!334323 (forall!11881 (ite c!813444 (toList!6312 (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))) (toList!6312 lt!1931557)) (ite c!813444 lambda!224703 lambda!224705)))))

(assert (=> d!1524237 e!2976574))

(declare-fun res!2022512 () Bool)

(assert (=> d!1524237 (=> (not res!2022512) (not e!2976574))))

(assert (=> d!1524237 (= res!2022512 (forall!11881 (_2!31083 (h!59922 (toList!6311 lt!1931247))) lambda!224706))))

(declare-fun e!2976572 () ListMap!5807)

(assert (=> d!1524237 (= lt!1931559 e!2976572)))

(assert (=> d!1524237 (= c!813444 ((_ is Nil!53509) (_2!31083 (h!59922 (toList!6311 lt!1931247)))))))

(assert (=> d!1524237 (noDuplicateKeys!2258 (_2!31083 (h!59922 (toList!6311 lt!1931247))))))

(assert (=> d!1524237 (= (addToMapMapFromBucket!1629 (_2!31083 (h!59922 (toList!6311 lt!1931247))) (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))) lt!1931559)))

(declare-fun bm!334318 () Bool)

(declare-fun call!334324 () Unit!138311)

(declare-fun lemmaContainsAllItsOwnKeys!908 (ListMap!5807) Unit!138311)

(assert (=> bm!334318 (= call!334324 (lemmaContainsAllItsOwnKeys!908 (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))))))

(assert (=> b!4768641 (= e!2976572 lt!1931554)))

(declare-fun +!2452 (ListMap!5807 tuple2!55576) ListMap!5807)

(assert (=> b!4768641 (= lt!1931557 (+!2452 (extractMap!2155 (t!361064 (toList!6311 lt!1931247))) (h!59921 (_2!31083 (h!59922 (toList!6311 lt!1931247))))))))

(assert (=> b!4768641 (= lt!1931554 (addToMapMapFromBucket!1629 (t!361063 (_2!31083 (h!59922 (toList!6311 lt!1931247)))) (+!2452 (extractMap!2155 (t!361064 (toList!6311 lt!1931247))) (h!59921 (_2!31083 (h!59922 (toList!6311 lt!1931247)))))))))

(declare-fun lt!1931561 () Unit!138311)

(assert (=> b!4768641 (= lt!1931561 call!334324)))

(assert (=> b!4768641 (forall!11881 (toList!6312 (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))) lambda!224704)))

(declare-fun lt!1931565 () Unit!138311)

(assert (=> b!4768641 (= lt!1931565 lt!1931561)))

(assert (=> b!4768641 (forall!11881 (toList!6312 lt!1931557) lambda!224705)))

(declare-fun lt!1931555 () Unit!138311)

(declare-fun Unit!138326 () Unit!138311)

(assert (=> b!4768641 (= lt!1931555 Unit!138326)))

(assert (=> b!4768641 (forall!11881 (t!361063 (_2!31083 (h!59922 (toList!6311 lt!1931247)))) lambda!224705)))

(declare-fun lt!1931562 () Unit!138311)

(declare-fun Unit!138327 () Unit!138311)

(assert (=> b!4768641 (= lt!1931562 Unit!138327)))

(declare-fun lt!1931567 () Unit!138311)

(declare-fun Unit!138328 () Unit!138311)

(assert (=> b!4768641 (= lt!1931567 Unit!138328)))

(declare-fun lt!1931553 () Unit!138311)

(declare-fun forallContained!3870 (List!53633 Int tuple2!55576) Unit!138311)

(assert (=> b!4768641 (= lt!1931553 (forallContained!3870 (toList!6312 lt!1931557) lambda!224705 (h!59921 (_2!31083 (h!59922 (toList!6311 lt!1931247))))))))

(assert (=> b!4768641 (contains!16870 lt!1931557 (_1!31082 (h!59921 (_2!31083 (h!59922 (toList!6311 lt!1931247))))))))

(declare-fun lt!1931552 () Unit!138311)

(declare-fun Unit!138329 () Unit!138311)

(assert (=> b!4768641 (= lt!1931552 Unit!138329)))

(assert (=> b!4768641 (contains!16870 lt!1931554 (_1!31082 (h!59921 (_2!31083 (h!59922 (toList!6311 lt!1931247))))))))

(declare-fun lt!1931564 () Unit!138311)

(declare-fun Unit!138330 () Unit!138311)

(assert (=> b!4768641 (= lt!1931564 Unit!138330)))

(assert (=> b!4768641 (forall!11881 (_2!31083 (h!59922 (toList!6311 lt!1931247))) lambda!224705)))

(declare-fun lt!1931568 () Unit!138311)

(declare-fun Unit!138331 () Unit!138311)

(assert (=> b!4768641 (= lt!1931568 Unit!138331)))

(assert (=> b!4768641 call!334323))

(declare-fun lt!1931558 () Unit!138311)

(declare-fun Unit!138332 () Unit!138311)

(assert (=> b!4768641 (= lt!1931558 Unit!138332)))

(declare-fun lt!1931571 () Unit!138311)

(declare-fun Unit!138333 () Unit!138311)

(assert (=> b!4768641 (= lt!1931571 Unit!138333)))

(declare-fun lt!1931563 () Unit!138311)

(declare-fun addForallContainsKeyThenBeforeAdding!907 (ListMap!5807 ListMap!5807 K!14989 V!15235) Unit!138311)

(assert (=> b!4768641 (= lt!1931563 (addForallContainsKeyThenBeforeAdding!907 (extractMap!2155 (t!361064 (toList!6311 lt!1931247))) lt!1931554 (_1!31082 (h!59921 (_2!31083 (h!59922 (toList!6311 lt!1931247))))) (_2!31082 (h!59921 (_2!31083 (h!59922 (toList!6311 lt!1931247)))))))))

(assert (=> b!4768641 (forall!11881 (toList!6312 (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))) lambda!224705)))

(declare-fun lt!1931569 () Unit!138311)

(assert (=> b!4768641 (= lt!1931569 lt!1931563)))

(assert (=> b!4768641 (forall!11881 (toList!6312 (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))) lambda!224705)))

(declare-fun lt!1931570 () Unit!138311)

(declare-fun Unit!138334 () Unit!138311)

(assert (=> b!4768641 (= lt!1931570 Unit!138334)))

(declare-fun res!2022511 () Bool)

(declare-fun call!334322 () Bool)

(assert (=> b!4768641 (= res!2022511 call!334322)))

(declare-fun e!2976573 () Bool)

(assert (=> b!4768641 (=> (not res!2022511) (not e!2976573))))

(assert (=> b!4768641 e!2976573))

(declare-fun lt!1931556 () Unit!138311)

(declare-fun Unit!138335 () Unit!138311)

(assert (=> b!4768641 (= lt!1931556 Unit!138335)))

(declare-fun b!4768642 () Bool)

(assert (=> b!4768642 (= e!2976574 (invariantList!1664 (toList!6312 lt!1931559)))))

(declare-fun b!4768643 () Bool)

(assert (=> b!4768643 (= e!2976573 (forall!11881 (toList!6312 (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))) lambda!224705))))

(assert (=> b!4768644 (= e!2976572 (extractMap!2155 (t!361064 (toList!6311 lt!1931247))))))

(declare-fun lt!1931566 () Unit!138311)

(assert (=> b!4768644 (= lt!1931566 call!334324)))

(assert (=> b!4768644 call!334322))

(declare-fun lt!1931572 () Unit!138311)

(assert (=> b!4768644 (= lt!1931572 lt!1931566)))

(assert (=> b!4768644 call!334323))

(declare-fun lt!1931560 () Unit!138311)

(declare-fun Unit!138336 () Unit!138311)

(assert (=> b!4768644 (= lt!1931560 Unit!138336)))

(declare-fun bm!334319 () Bool)

(assert (=> bm!334319 (= call!334322 (forall!11881 (ite c!813444 (toList!6312 (extractMap!2155 (t!361064 (toList!6311 lt!1931247)))) (_2!31083 (h!59922 (toList!6311 lt!1931247)))) (ite c!813444 lambda!224703 lambda!224705)))))

(assert (= (and d!1524237 c!813444) b!4768644))

(assert (= (and d!1524237 (not c!813444)) b!4768641))

(assert (= (and b!4768641 res!2022511) b!4768643))

(assert (= (or b!4768644 b!4768641) bm!334319))

(assert (= (or b!4768644 b!4768641) bm!334317))

(assert (= (or b!4768644 b!4768641) bm!334318))

(assert (= (and d!1524237 res!2022512) b!4768640))

(assert (= (and b!4768640 res!2022510) b!4768642))

(assert (=> bm!334318 m!5739950))

(declare-fun m!5740154 () Bool)

(assert (=> bm!334318 m!5740154))

(declare-fun m!5740156 () Bool)

(assert (=> b!4768640 m!5740156))

(declare-fun m!5740158 () Bool)

(assert (=> bm!334319 m!5740158))

(declare-fun m!5740160 () Bool)

(assert (=> b!4768642 m!5740160))

(declare-fun m!5740162 () Bool)

(assert (=> d!1524237 m!5740162))

(declare-fun m!5740164 () Bool)

(assert (=> d!1524237 m!5740164))

(declare-fun m!5740166 () Bool)

(assert (=> bm!334317 m!5740166))

(declare-fun m!5740168 () Bool)

(assert (=> b!4768641 m!5740168))

(declare-fun m!5740170 () Bool)

(assert (=> b!4768641 m!5740170))

(assert (=> b!4768641 m!5739950))

(declare-fun m!5740172 () Bool)

(assert (=> b!4768641 m!5740172))

(declare-fun m!5740174 () Bool)

(assert (=> b!4768641 m!5740174))

(declare-fun m!5740176 () Bool)

(assert (=> b!4768641 m!5740176))

(assert (=> b!4768641 m!5739950))

(declare-fun m!5740178 () Bool)

(assert (=> b!4768641 m!5740178))

(declare-fun m!5740180 () Bool)

(assert (=> b!4768641 m!5740180))

(declare-fun m!5740182 () Bool)

(assert (=> b!4768641 m!5740182))

(declare-fun m!5740184 () Bool)

(assert (=> b!4768641 m!5740184))

(assert (=> b!4768641 m!5740184))

(assert (=> b!4768641 m!5740172))

(declare-fun m!5740186 () Bool)

(assert (=> b!4768641 m!5740186))

(declare-fun m!5740188 () Bool)

(assert (=> b!4768641 m!5740188))

(assert (=> b!4768643 m!5740184))

(assert (=> b!4768443 d!1524237))

(declare-fun bs!1149219 () Bool)

(declare-fun d!1524239 () Bool)

(assert (= bs!1149219 (and d!1524239 d!1524141)))

(declare-fun lambda!224707 () Int)

(assert (=> bs!1149219 (= lambda!224707 lambda!224661)))

(declare-fun bs!1149220 () Bool)

(assert (= bs!1149220 (and d!1524239 d!1524207)))

(assert (=> bs!1149220 (= lambda!224707 lambda!224674)))

(declare-fun bs!1149221 () Bool)

(assert (= bs!1149221 (and d!1524239 d!1524121)))

(assert (=> bs!1149221 (= lambda!224707 lambda!224658)))

(declare-fun bs!1149222 () Bool)

(assert (= bs!1149222 (and d!1524239 b!4768288)))

(assert (=> bs!1149222 (= lambda!224707 lambda!224638)))

(declare-fun bs!1149223 () Bool)

(assert (= bs!1149223 (and d!1524239 d!1524119)))

(assert (=> bs!1149223 (= lambda!224707 lambda!224651)))

(declare-fun bs!1149224 () Bool)

(assert (= bs!1149224 (and d!1524239 b!4768415)))

(assert (=> bs!1149224 (= lambda!224707 lambda!224664)))

(declare-fun bs!1149225 () Bool)

(assert (= bs!1149225 (and d!1524239 b!4768475)))

(assert (=> bs!1149225 (= lambda!224707 lambda!224670)))

(declare-fun bs!1149226 () Bool)

(assert (= bs!1149226 (and d!1524239 d!1524171)))

(assert (=> bs!1149226 (= lambda!224707 lambda!224667)))

(declare-fun bs!1149227 () Bool)

(assert (= bs!1149227 (and d!1524239 d!1524205)))

(assert (=> bs!1149227 (= lambda!224707 lambda!224671)))

(declare-fun lt!1931573 () ListMap!5807)

(assert (=> d!1524239 (invariantList!1664 (toList!6312 lt!1931573))))

(declare-fun e!2976575 () ListMap!5807)

(assert (=> d!1524239 (= lt!1931573 e!2976575)))

(declare-fun c!813445 () Bool)

(assert (=> d!1524239 (= c!813445 ((_ is Cons!53510) (t!361064 (toList!6311 lt!1931247))))))

(assert (=> d!1524239 (forall!11880 (t!361064 (toList!6311 lt!1931247)) lambda!224707)))

(assert (=> d!1524239 (= (extractMap!2155 (t!361064 (toList!6311 lt!1931247))) lt!1931573)))

(declare-fun b!4768647 () Bool)

(assert (=> b!4768647 (= e!2976575 (addToMapMapFromBucket!1629 (_2!31083 (h!59922 (t!361064 (toList!6311 lt!1931247)))) (extractMap!2155 (t!361064 (t!361064 (toList!6311 lt!1931247))))))))

(declare-fun b!4768648 () Bool)

(assert (=> b!4768648 (= e!2976575 (ListMap!5808 Nil!53509))))

(assert (= (and d!1524239 c!813445) b!4768647))

(assert (= (and d!1524239 (not c!813445)) b!4768648))

(declare-fun m!5740190 () Bool)

(assert (=> d!1524239 m!5740190))

(declare-fun m!5740192 () Bool)

(assert (=> d!1524239 m!5740192))

(declare-fun m!5740194 () Bool)

(assert (=> b!4768647 m!5740194))

(assert (=> b!4768647 m!5740194))

(declare-fun m!5740196 () Bool)

(assert (=> b!4768647 m!5740196))

(assert (=> b!4768443 d!1524239))

(declare-fun d!1524241 () Bool)

(declare-fun res!2022517 () Bool)

(declare-fun e!2976580 () Bool)

(assert (=> d!1524241 (=> res!2022517 e!2976580)))

(assert (=> d!1524241 (= res!2022517 (and ((_ is Cons!53510) (toList!6311 lt!1931247)) (= (_1!31083 (h!59922 (toList!6311 lt!1931247))) lt!1931249)))))

(assert (=> d!1524241 (= (containsKey!3673 (toList!6311 lt!1931247) lt!1931249) e!2976580)))

(declare-fun b!4768653 () Bool)

(declare-fun e!2976581 () Bool)

(assert (=> b!4768653 (= e!2976580 e!2976581)))

(declare-fun res!2022518 () Bool)

(assert (=> b!4768653 (=> (not res!2022518) (not e!2976581))))

(assert (=> b!4768653 (= res!2022518 (and (or (not ((_ is Cons!53510) (toList!6311 lt!1931247))) (bvsle (_1!31083 (h!59922 (toList!6311 lt!1931247))) lt!1931249)) ((_ is Cons!53510) (toList!6311 lt!1931247)) (bvslt (_1!31083 (h!59922 (toList!6311 lt!1931247))) lt!1931249)))))

(declare-fun b!4768654 () Bool)

(assert (=> b!4768654 (= e!2976581 (containsKey!3673 (t!361064 (toList!6311 lt!1931247)) lt!1931249))))

(assert (= (and d!1524241 (not res!2022517)) b!4768653))

(assert (= (and b!4768653 res!2022518) b!4768654))

(declare-fun m!5740198 () Bool)

(assert (=> b!4768654 m!5740198))

(assert (=> b!4768419 d!1524241))

(declare-fun d!1524243 () Bool)

(assert (=> d!1524243 (= (isDefined!9857 (getPair!652 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776)) (not (isEmpty!29287 (getPair!652 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776))))))

(declare-fun bs!1149228 () Bool)

(assert (= bs!1149228 d!1524243))

(assert (=> bs!1149228 m!5739822))

(declare-fun m!5740200 () Bool)

(assert (=> bs!1149228 m!5740200))

(assert (=> b!4768370 d!1524243))

(declare-fun d!1524245 () Bool)

(declare-fun e!2976582 () Bool)

(assert (=> d!1524245 e!2976582))

(declare-fun res!2022519 () Bool)

(assert (=> d!1524245 (=> res!2022519 e!2976582)))

(declare-fun lt!1931574 () Bool)

(assert (=> d!1524245 (= res!2022519 (not lt!1931574))))

(declare-fun lt!1931577 () Bool)

(assert (=> d!1524245 (= lt!1931574 lt!1931577)))

(declare-fun lt!1931575 () Unit!138311)

(declare-fun e!2976583 () Unit!138311)

(assert (=> d!1524245 (= lt!1931575 e!2976583)))

(declare-fun c!813446 () Bool)

(assert (=> d!1524245 (= c!813446 lt!1931577)))

(assert (=> d!1524245 (= lt!1931577 (containsKey!3673 (toList!6311 lt!1931247) (hash!4580 (hashF!12473 thiss!42052) key!1776)))))

(assert (=> d!1524245 (= (contains!16867 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) lt!1931574)))

(declare-fun b!4768655 () Bool)

(declare-fun lt!1931576 () Unit!138311)

(assert (=> b!4768655 (= e!2976583 lt!1931576)))

(assert (=> b!4768655 (= lt!1931576 (lemmaContainsKeyImpliesGetValueByKeyDefined!1997 (toList!6311 lt!1931247) (hash!4580 (hashF!12473 thiss!42052) key!1776)))))

(assert (=> b!4768655 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) (hash!4580 (hashF!12473 thiss!42052) key!1776)))))

(declare-fun b!4768656 () Bool)

(declare-fun Unit!138337 () Unit!138311)

(assert (=> b!4768656 (= e!2976583 Unit!138337)))

(declare-fun b!4768657 () Bool)

(assert (=> b!4768657 (= e!2976582 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) (hash!4580 (hashF!12473 thiss!42052) key!1776))))))

(assert (= (and d!1524245 c!813446) b!4768655))

(assert (= (and d!1524245 (not c!813446)) b!4768656))

(assert (= (and d!1524245 (not res!2022519)) b!4768657))

(assert (=> d!1524245 m!5739776))

(declare-fun m!5740202 () Bool)

(assert (=> d!1524245 m!5740202))

(assert (=> b!4768655 m!5739776))

(declare-fun m!5740204 () Bool)

(assert (=> b!4768655 m!5740204))

(assert (=> b!4768655 m!5739776))

(declare-fun m!5740206 () Bool)

(assert (=> b!4768655 m!5740206))

(assert (=> b!4768655 m!5740206))

(declare-fun m!5740208 () Bool)

(assert (=> b!4768655 m!5740208))

(assert (=> b!4768657 m!5739776))

(assert (=> b!4768657 m!5740206))

(assert (=> b!4768657 m!5740206))

(assert (=> b!4768657 m!5740208))

(assert (=> b!4768370 d!1524245))

(declare-fun d!1524247 () Bool)

(assert (=> d!1524247 (dynLambda!21958 lambda!224658 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))))

(declare-fun lt!1931578 () Unit!138311)

(assert (=> d!1524247 (= lt!1931578 (choose!33999 (toList!6311 lt!1931247) lambda!224658 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))))

(declare-fun e!2976584 () Bool)

(assert (=> d!1524247 e!2976584))

(declare-fun res!2022520 () Bool)

(assert (=> d!1524247 (=> (not res!2022520) (not e!2976584))))

(assert (=> d!1524247 (= res!2022520 (forall!11880 (toList!6311 lt!1931247) lambda!224658))))

(assert (=> d!1524247 (= (forallContained!3869 (toList!6311 lt!1931247) lambda!224658 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))) lt!1931578)))

(declare-fun b!4768658 () Bool)

(assert (=> b!4768658 (= e!2976584 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))))

(assert (= (and d!1524247 res!2022520) b!4768658))

(declare-fun b_lambda!184477 () Bool)

(assert (=> (not b_lambda!184477) (not d!1524247)))

(declare-fun m!5740210 () Bool)

(assert (=> d!1524247 m!5740210))

(declare-fun m!5740212 () Bool)

(assert (=> d!1524247 m!5740212))

(assert (=> d!1524247 m!5739846))

(declare-fun m!5740214 () Bool)

(assert (=> b!4768658 m!5740214))

(assert (=> b!4768370 d!1524247))

(declare-fun d!1524249 () Bool)

(assert (=> d!1524249 (= (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) (get!18067 (getValueByKey!2201 (toList!6311 lt!1931247) (hash!4580 (hashF!12473 thiss!42052) key!1776))))))

(declare-fun bs!1149229 () Bool)

(assert (= bs!1149229 d!1524249))

(assert (=> bs!1149229 m!5739776))

(assert (=> bs!1149229 m!5740206))

(assert (=> bs!1149229 m!5740206))

(declare-fun m!5740216 () Bool)

(assert (=> bs!1149229 m!5740216))

(assert (=> b!4768370 d!1524249))

(declare-fun lt!1931579 () Bool)

(declare-fun d!1524251 () Bool)

(assert (=> d!1524251 (= lt!1931579 (select (content!9591 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931338 lt!1931337)))))

(declare-fun e!2976586 () Bool)

(assert (=> d!1524251 (= lt!1931579 e!2976586)))

(declare-fun res!2022521 () Bool)

(assert (=> d!1524251 (=> (not res!2022521) (not e!2976586))))

(assert (=> d!1524251 (= res!2022521 ((_ is Cons!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524251 (= (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931338 lt!1931337)) lt!1931579)))

(declare-fun b!4768659 () Bool)

(declare-fun e!2976585 () Bool)

(assert (=> b!4768659 (= e!2976586 e!2976585)))

(declare-fun res!2022522 () Bool)

(assert (=> b!4768659 (=> res!2022522 e!2976585)))

(assert (=> b!4768659 (= res!2022522 (= (h!59922 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931338 lt!1931337)))))

(declare-fun b!4768660 () Bool)

(assert (=> b!4768660 (= e!2976585 (contains!16866 (t!361064 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931338 lt!1931337)))))

(assert (= (and d!1524251 res!2022521) b!4768659))

(assert (= (and b!4768659 (not res!2022522)) b!4768660))

(assert (=> d!1524251 m!5739888))

(declare-fun m!5740218 () Bool)

(assert (=> d!1524251 m!5740218))

(declare-fun m!5740220 () Bool)

(assert (=> b!4768660 m!5740220))

(assert (=> b!4768370 d!1524251))

(declare-fun d!1524253 () Bool)

(assert (=> d!1524253 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931338 lt!1931337))))

(declare-fun lt!1931580 () Unit!138311)

(assert (=> d!1524253 (= lt!1931580 (choose!33998 lt!1931247 lt!1931338 lt!1931337))))

(assert (=> d!1524253 (contains!16867 lt!1931247 lt!1931338)))

(assert (=> d!1524253 (= (lemmaGetValueImpliesTupleContained!444 lt!1931247 lt!1931338 lt!1931337) lt!1931580)))

(declare-fun bs!1149230 () Bool)

(assert (= bs!1149230 d!1524253))

(assert (=> bs!1149230 m!5739856))

(declare-fun m!5740222 () Bool)

(assert (=> bs!1149230 m!5740222))

(assert (=> bs!1149230 m!5739850))

(assert (=> b!4768370 d!1524253))

(assert (=> b!4768370 d!1524141))

(assert (=> b!4768370 d!1524143))

(declare-fun b!4768661 () Bool)

(declare-fun e!2976590 () Option!12704)

(assert (=> b!4768661 (= e!2976590 (getPair!652 (t!361063 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))) key!1776))))

(declare-fun b!4768663 () Bool)

(declare-fun e!2976588 () Bool)

(declare-fun lt!1931581 () Option!12704)

(assert (=> b!4768663 (= e!2976588 (contains!16869 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) (get!18065 lt!1931581)))))

(declare-fun b!4768664 () Bool)

(declare-fun e!2976587 () Bool)

(assert (=> b!4768664 (= e!2976587 (not (containsKey!3672 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776)))))

(declare-fun b!4768665 () Bool)

(declare-fun e!2976591 () Option!12704)

(assert (=> b!4768665 (= e!2976591 (Some!12703 (h!59921 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))))

(declare-fun b!4768666 () Bool)

(declare-fun res!2022524 () Bool)

(assert (=> b!4768666 (=> (not res!2022524) (not e!2976588))))

(assert (=> b!4768666 (= res!2022524 (= (_1!31082 (get!18065 lt!1931581)) key!1776))))

(declare-fun b!4768667 () Bool)

(declare-fun e!2976589 () Bool)

(assert (=> b!4768667 (= e!2976589 e!2976588)))

(declare-fun res!2022525 () Bool)

(assert (=> b!4768667 (=> (not res!2022525) (not e!2976588))))

(assert (=> b!4768667 (= res!2022525 (isDefined!9857 lt!1931581))))

(declare-fun b!4768668 () Bool)

(assert (=> b!4768668 (= e!2976590 None!12703)))

(declare-fun d!1524255 () Bool)

(assert (=> d!1524255 e!2976589))

(declare-fun res!2022526 () Bool)

(assert (=> d!1524255 (=> res!2022526 e!2976589)))

(assert (=> d!1524255 (= res!2022526 e!2976587)))

(declare-fun res!2022523 () Bool)

(assert (=> d!1524255 (=> (not res!2022523) (not e!2976587))))

(assert (=> d!1524255 (= res!2022523 (isEmpty!29287 lt!1931581))))

(assert (=> d!1524255 (= lt!1931581 e!2976591)))

(declare-fun c!813448 () Bool)

(assert (=> d!1524255 (= c!813448 (and ((_ is Cons!53509) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))) (= (_1!31082 (h!59921 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))) key!1776)))))

(assert (=> d!1524255 (noDuplicateKeys!2258 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))

(assert (=> d!1524255 (= (getPair!652 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776) lt!1931581)))

(declare-fun b!4768662 () Bool)

(assert (=> b!4768662 (= e!2976591 e!2976590)))

(declare-fun c!813447 () Bool)

(assert (=> b!4768662 (= c!813447 ((_ is Cons!53509) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))))

(assert (= (and d!1524255 c!813448) b!4768665))

(assert (= (and d!1524255 (not c!813448)) b!4768662))

(assert (= (and b!4768662 c!813447) b!4768661))

(assert (= (and b!4768662 (not c!813447)) b!4768668))

(assert (= (and d!1524255 res!2022523) b!4768664))

(assert (= (and d!1524255 (not res!2022526)) b!4768667))

(assert (= (and b!4768667 res!2022525) b!4768666))

(assert (= (and b!4768666 res!2022524) b!4768663))

(assert (=> b!4768664 m!5739816))

(declare-fun m!5740224 () Bool)

(assert (=> b!4768664 m!5740224))

(declare-fun m!5740226 () Bool)

(assert (=> b!4768663 m!5740226))

(assert (=> b!4768663 m!5739816))

(assert (=> b!4768663 m!5740226))

(declare-fun m!5740228 () Bool)

(assert (=> b!4768663 m!5740228))

(assert (=> b!4768666 m!5740226))

(declare-fun m!5740230 () Bool)

(assert (=> b!4768661 m!5740230))

(declare-fun m!5740232 () Bool)

(assert (=> d!1524255 m!5740232))

(assert (=> d!1524255 m!5739816))

(declare-fun m!5740234 () Bool)

(assert (=> d!1524255 m!5740234))

(declare-fun m!5740236 () Bool)

(assert (=> b!4768667 m!5740236))

(assert (=> b!4768370 d!1524255))

(declare-fun d!1524257 () Bool)

(declare-fun e!2976592 () Bool)

(assert (=> d!1524257 e!2976592))

(declare-fun res!2022527 () Bool)

(assert (=> d!1524257 (=> res!2022527 e!2976592)))

(declare-fun lt!1931582 () Bool)

(assert (=> d!1524257 (= res!2022527 (not lt!1931582))))

(declare-fun lt!1931585 () Bool)

(assert (=> d!1524257 (= lt!1931582 lt!1931585)))

(declare-fun lt!1931583 () Unit!138311)

(declare-fun e!2976593 () Unit!138311)

(assert (=> d!1524257 (= lt!1931583 e!2976593)))

(declare-fun c!813449 () Bool)

(assert (=> d!1524257 (= c!813449 lt!1931585)))

(assert (=> d!1524257 (= lt!1931585 (containsKey!3673 (toList!6311 lt!1931247) lt!1931338))))

(assert (=> d!1524257 (= (contains!16867 lt!1931247 lt!1931338) lt!1931582)))

(declare-fun b!4768669 () Bool)

(declare-fun lt!1931584 () Unit!138311)

(assert (=> b!4768669 (= e!2976593 lt!1931584)))

(assert (=> b!4768669 (= lt!1931584 (lemmaContainsKeyImpliesGetValueByKeyDefined!1997 (toList!6311 lt!1931247) lt!1931338))))

(assert (=> b!4768669 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931338))))

(declare-fun b!4768670 () Bool)

(declare-fun Unit!138338 () Unit!138311)

(assert (=> b!4768670 (= e!2976593 Unit!138338)))

(declare-fun b!4768671 () Bool)

(assert (=> b!4768671 (= e!2976592 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931338)))))

(assert (= (and d!1524257 c!813449) b!4768669))

(assert (= (and d!1524257 (not c!813449)) b!4768670))

(assert (= (and d!1524257 (not res!2022527)) b!4768671))

(declare-fun m!5740238 () Bool)

(assert (=> d!1524257 m!5740238))

(declare-fun m!5740240 () Bool)

(assert (=> b!4768669 m!5740240))

(assert (=> b!4768669 m!5739844))

(assert (=> b!4768669 m!5739844))

(declare-fun m!5740242 () Bool)

(assert (=> b!4768669 m!5740242))

(assert (=> b!4768671 m!5739844))

(assert (=> b!4768671 m!5739844))

(assert (=> b!4768671 m!5740242))

(assert (=> b!4768370 d!1524257))

(assert (=> b!4768351 d!1524229))

(assert (=> b!4768351 d!1524171))

(declare-fun d!1524259 () Bool)

(assert (=> d!1524259 (= (isDefined!9857 call!334299) (not (isEmpty!29287 call!334299)))))

(declare-fun bs!1149231 () Bool)

(assert (= bs!1149231 d!1524259))

(declare-fun m!5740244 () Bool)

(assert (=> bs!1149231 m!5740244))

(assert (=> bm!334293 d!1524259))

(assert (=> b!4768327 d!1524157))

(assert (=> b!4768327 d!1524159))

(assert (=> b!4768327 d!1524161))

(assert (=> b!4768329 d!1524159))

(assert (=> b!4768329 d!1524161))

(declare-fun bs!1149232 () Bool)

(declare-fun d!1524261 () Bool)

(assert (= bs!1149232 (and d!1524261 d!1524141)))

(declare-fun lambda!224710 () Int)

(assert (=> bs!1149232 (not (= lambda!224710 lambda!224661))))

(declare-fun bs!1149233 () Bool)

(assert (= bs!1149233 (and d!1524261 d!1524239)))

(assert (=> bs!1149233 (not (= lambda!224710 lambda!224707))))

(declare-fun bs!1149234 () Bool)

(assert (= bs!1149234 (and d!1524261 d!1524207)))

(assert (=> bs!1149234 (not (= lambda!224710 lambda!224674))))

(declare-fun bs!1149235 () Bool)

(assert (= bs!1149235 (and d!1524261 d!1524121)))

(assert (=> bs!1149235 (not (= lambda!224710 lambda!224658))))

(declare-fun bs!1149236 () Bool)

(assert (= bs!1149236 (and d!1524261 b!4768288)))

(assert (=> bs!1149236 (not (= lambda!224710 lambda!224638))))

(declare-fun bs!1149237 () Bool)

(assert (= bs!1149237 (and d!1524261 d!1524119)))

(assert (=> bs!1149237 (not (= lambda!224710 lambda!224651))))

(declare-fun bs!1149238 () Bool)

(assert (= bs!1149238 (and d!1524261 b!4768415)))

(assert (=> bs!1149238 (not (= lambda!224710 lambda!224664))))

(declare-fun bs!1149239 () Bool)

(assert (= bs!1149239 (and d!1524261 b!4768475)))

(assert (=> bs!1149239 (not (= lambda!224710 lambda!224670))))

(declare-fun bs!1149240 () Bool)

(assert (= bs!1149240 (and d!1524261 d!1524171)))

(assert (=> bs!1149240 (not (= lambda!224710 lambda!224667))))

(declare-fun bs!1149241 () Bool)

(assert (= bs!1149241 (and d!1524261 d!1524205)))

(assert (=> bs!1149241 (not (= lambda!224710 lambda!224671))))

(assert (=> d!1524261 true))

(assert (=> d!1524261 (= (allKeysSameHashInMap!2025 lt!1931247 (hashF!12473 thiss!42052)) (forall!11880 (toList!6311 lt!1931247) lambda!224710))))

(declare-fun bs!1149242 () Bool)

(assert (= bs!1149242 d!1524261))

(declare-fun m!5740246 () Bool)

(assert (=> bs!1149242 m!5740246))

(assert (=> b!4768353 d!1524261))

(assert (=> bm!334294 d!1524135))

(declare-fun d!1524263 () Bool)

(declare-fun lt!1931586 () Bool)

(assert (=> d!1524263 (= lt!1931586 (select (content!9591 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931249 lt!1931237)))))

(declare-fun e!2976595 () Bool)

(assert (=> d!1524263 (= lt!1931586 e!2976595)))

(declare-fun res!2022528 () Bool)

(assert (=> d!1524263 (=> (not res!2022528) (not e!2976595))))

(assert (=> d!1524263 (= res!2022528 ((_ is Cons!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524263 (= (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931249 lt!1931237)) lt!1931586)))

(declare-fun b!4768674 () Bool)

(declare-fun e!2976594 () Bool)

(assert (=> b!4768674 (= e!2976595 e!2976594)))

(declare-fun res!2022529 () Bool)

(assert (=> b!4768674 (=> res!2022529 e!2976594)))

(assert (=> b!4768674 (= res!2022529 (= (h!59922 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931249 lt!1931237)))))

(declare-fun b!4768675 () Bool)

(assert (=> b!4768675 (= e!2976594 (contains!16866 (t!361064 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931249 lt!1931237)))))

(assert (= (and d!1524263 res!2022528) b!4768674))

(assert (= (and b!4768674 (not res!2022529)) b!4768675))

(assert (=> d!1524263 m!5739888))

(declare-fun m!5740248 () Bool)

(assert (=> d!1524263 m!5740248))

(declare-fun m!5740250 () Bool)

(assert (=> b!4768675 m!5740250))

(assert (=> d!1524163 d!1524263))

(declare-fun d!1524265 () Bool)

(assert (=> d!1524265 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931249 lt!1931237))))

(assert (=> d!1524265 true))

(declare-fun _$14!1559 () Unit!138311)

(assert (=> d!1524265 (= (choose!34002 (toList!6311 lt!1931247) lt!1931249 lt!1931237) _$14!1559)))

(declare-fun bs!1149243 () Bool)

(assert (= bs!1149243 d!1524265))

(assert (=> bs!1149243 m!5739940))

(assert (=> d!1524163 d!1524265))

(declare-fun d!1524267 () Bool)

(declare-fun res!2022534 () Bool)

(declare-fun e!2976600 () Bool)

(assert (=> d!1524267 (=> res!2022534 e!2976600)))

(assert (=> d!1524267 (= res!2022534 (or ((_ is Nil!53510) (toList!6311 lt!1931247)) ((_ is Nil!53510) (t!361064 (toList!6311 lt!1931247)))))))

(assert (=> d!1524267 (= (isStrictlySorted!811 (toList!6311 lt!1931247)) e!2976600)))

(declare-fun b!4768680 () Bool)

(declare-fun e!2976601 () Bool)

(assert (=> b!4768680 (= e!2976600 e!2976601)))

(declare-fun res!2022535 () Bool)

(assert (=> b!4768680 (=> (not res!2022535) (not e!2976601))))

(assert (=> b!4768680 (= res!2022535 (bvslt (_1!31083 (h!59922 (toList!6311 lt!1931247))) (_1!31083 (h!59922 (t!361064 (toList!6311 lt!1931247))))))))

(declare-fun b!4768681 () Bool)

(assert (=> b!4768681 (= e!2976601 (isStrictlySorted!811 (t!361064 (toList!6311 lt!1931247))))))

(assert (= (and d!1524267 (not res!2022534)) b!4768680))

(assert (= (and b!4768680 res!2022535) b!4768681))

(declare-fun m!5740252 () Bool)

(assert (=> b!4768681 m!5740252))

(assert (=> d!1524163 d!1524267))

(assert (=> b!4768355 d!1524261))

(assert (=> b!4768395 d!1524147))

(declare-fun b!4768682 () Bool)

(declare-fun e!2976605 () Option!12704)

(assert (=> b!4768682 (= e!2976605 (getPair!652 (t!361063 (t!361063 lt!1931237)) key!1776))))

(declare-fun b!4768684 () Bool)

(declare-fun e!2976603 () Bool)

(declare-fun lt!1931587 () Option!12704)

(assert (=> b!4768684 (= e!2976603 (contains!16869 (t!361063 lt!1931237) (get!18065 lt!1931587)))))

(declare-fun b!4768685 () Bool)

(declare-fun e!2976602 () Bool)

(assert (=> b!4768685 (= e!2976602 (not (containsKey!3672 (t!361063 lt!1931237) key!1776)))))

(declare-fun b!4768686 () Bool)

(declare-fun e!2976606 () Option!12704)

(assert (=> b!4768686 (= e!2976606 (Some!12703 (h!59921 (t!361063 lt!1931237))))))

(declare-fun b!4768687 () Bool)

(declare-fun res!2022537 () Bool)

(assert (=> b!4768687 (=> (not res!2022537) (not e!2976603))))

(assert (=> b!4768687 (= res!2022537 (= (_1!31082 (get!18065 lt!1931587)) key!1776))))

(declare-fun b!4768688 () Bool)

(declare-fun e!2976604 () Bool)

(assert (=> b!4768688 (= e!2976604 e!2976603)))

(declare-fun res!2022538 () Bool)

(assert (=> b!4768688 (=> (not res!2022538) (not e!2976603))))

(assert (=> b!4768688 (= res!2022538 (isDefined!9857 lt!1931587))))

(declare-fun b!4768689 () Bool)

(assert (=> b!4768689 (= e!2976605 None!12703)))

(declare-fun d!1524269 () Bool)

(assert (=> d!1524269 e!2976604))

(declare-fun res!2022539 () Bool)

(assert (=> d!1524269 (=> res!2022539 e!2976604)))

(assert (=> d!1524269 (= res!2022539 e!2976602)))

(declare-fun res!2022536 () Bool)

(assert (=> d!1524269 (=> (not res!2022536) (not e!2976602))))

(assert (=> d!1524269 (= res!2022536 (isEmpty!29287 lt!1931587))))

(assert (=> d!1524269 (= lt!1931587 e!2976606)))

(declare-fun c!813451 () Bool)

(assert (=> d!1524269 (= c!813451 (and ((_ is Cons!53509) (t!361063 lt!1931237)) (= (_1!31082 (h!59921 (t!361063 lt!1931237))) key!1776)))))

(assert (=> d!1524269 (noDuplicateKeys!2258 (t!361063 lt!1931237))))

(assert (=> d!1524269 (= (getPair!652 (t!361063 lt!1931237) key!1776) lt!1931587)))

(declare-fun b!4768683 () Bool)

(assert (=> b!4768683 (= e!2976606 e!2976605)))

(declare-fun c!813450 () Bool)

(assert (=> b!4768683 (= c!813450 ((_ is Cons!53509) (t!361063 lt!1931237)))))

(assert (= (and d!1524269 c!813451) b!4768686))

(assert (= (and d!1524269 (not c!813451)) b!4768683))

(assert (= (and b!4768683 c!813450) b!4768682))

(assert (= (and b!4768683 (not c!813450)) b!4768689))

(assert (= (and d!1524269 res!2022536) b!4768685))

(assert (= (and d!1524269 (not res!2022539)) b!4768688))

(assert (= (and b!4768688 res!2022538) b!4768687))

(assert (= (and b!4768687 res!2022537) b!4768684))

(declare-fun m!5740254 () Bool)

(assert (=> b!4768685 m!5740254))

(declare-fun m!5740256 () Bool)

(assert (=> b!4768684 m!5740256))

(assert (=> b!4768684 m!5740256))

(declare-fun m!5740258 () Bool)

(assert (=> b!4768684 m!5740258))

(assert (=> b!4768687 m!5740256))

(declare-fun m!5740260 () Bool)

(assert (=> b!4768682 m!5740260))

(declare-fun m!5740262 () Bool)

(assert (=> d!1524269 m!5740262))

(assert (=> d!1524269 m!5740028))

(declare-fun m!5740264 () Bool)

(assert (=> b!4768688 m!5740264))

(assert (=> b!4768373 d!1524269))

(declare-fun d!1524271 () Bool)

(declare-fun res!2022540 () Bool)

(declare-fun e!2976607 () Bool)

(assert (=> d!1524271 (=> res!2022540 e!2976607)))

(assert (=> d!1524271 (= res!2022540 ((_ is Nil!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524271 (= (forall!11880 (toList!6311 lt!1931247) lambda!224658) e!2976607)))

(declare-fun b!4768690 () Bool)

(declare-fun e!2976608 () Bool)

(assert (=> b!4768690 (= e!2976607 e!2976608)))

(declare-fun res!2022541 () Bool)

(assert (=> b!4768690 (=> (not res!2022541) (not e!2976608))))

(assert (=> b!4768690 (= res!2022541 (dynLambda!21958 lambda!224658 (h!59922 (toList!6311 lt!1931247))))))

(declare-fun b!4768691 () Bool)

(assert (=> b!4768691 (= e!2976608 (forall!11880 (t!361064 (toList!6311 lt!1931247)) lambda!224658))))

(assert (= (and d!1524271 (not res!2022540)) b!4768690))

(assert (= (and b!4768690 res!2022541) b!4768691))

(declare-fun b_lambda!184479 () Bool)

(assert (=> (not b_lambda!184479) (not b!4768690)))

(declare-fun m!5740266 () Bool)

(assert (=> b!4768690 m!5740266))

(declare-fun m!5740268 () Bool)

(assert (=> b!4768691 m!5740268))

(assert (=> d!1524121 d!1524271))

(declare-fun bs!1149244 () Bool)

(declare-fun d!1524273 () Bool)

(assert (= bs!1149244 (and d!1524273 d!1524141)))

(declare-fun lambda!224713 () Int)

(assert (=> bs!1149244 (= lambda!224713 lambda!224661)))

(declare-fun bs!1149245 () Bool)

(assert (= bs!1149245 (and d!1524273 d!1524239)))

(assert (=> bs!1149245 (= lambda!224713 lambda!224707)))

(declare-fun bs!1149246 () Bool)

(assert (= bs!1149246 (and d!1524273 d!1524207)))

(assert (=> bs!1149246 (= lambda!224713 lambda!224674)))

(declare-fun bs!1149247 () Bool)

(assert (= bs!1149247 (and d!1524273 d!1524121)))

(assert (=> bs!1149247 (= lambda!224713 lambda!224658)))

(declare-fun bs!1149248 () Bool)

(assert (= bs!1149248 (and d!1524273 b!4768288)))

(assert (=> bs!1149248 (= lambda!224713 lambda!224638)))

(declare-fun bs!1149249 () Bool)

(assert (= bs!1149249 (and d!1524273 d!1524261)))

(assert (=> bs!1149249 (not (= lambda!224713 lambda!224710))))

(declare-fun bs!1149250 () Bool)

(assert (= bs!1149250 (and d!1524273 d!1524119)))

(assert (=> bs!1149250 (= lambda!224713 lambda!224651)))

(declare-fun bs!1149251 () Bool)

(assert (= bs!1149251 (and d!1524273 b!4768415)))

(assert (=> bs!1149251 (= lambda!224713 lambda!224664)))

(declare-fun bs!1149252 () Bool)

(assert (= bs!1149252 (and d!1524273 b!4768475)))

(assert (=> bs!1149252 (= lambda!224713 lambda!224670)))

(declare-fun bs!1149253 () Bool)

(assert (= bs!1149253 (and d!1524273 d!1524171)))

(assert (=> bs!1149253 (= lambda!224713 lambda!224667)))

(declare-fun bs!1149254 () Bool)

(assert (= bs!1149254 (and d!1524273 d!1524205)))

(assert (=> bs!1149254 (= lambda!224713 lambda!224671)))

(assert (=> d!1524273 (isDefined!9857 (getPair!652 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776))))

(declare-fun lt!1931606 () Unit!138311)

(assert (=> d!1524273 (= lt!1931606 (forallContained!3869 (toList!6311 lt!1931247) lambda!224713 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))))

(declare-fun lt!1931603 () Unit!138311)

(declare-fun lt!1931604 () Unit!138311)

(assert (=> d!1524273 (= lt!1931603 lt!1931604)))

(declare-fun lt!1931602 () (_ BitVec 64))

(declare-fun lt!1931605 () List!53633)

(assert (=> d!1524273 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931602 lt!1931605))))

(assert (=> d!1524273 (= lt!1931604 (lemmaGetValueImpliesTupleContained!444 lt!1931247 lt!1931602 lt!1931605))))

(assert (=> d!1524273 (= lt!1931605 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))

(assert (=> d!1524273 (= lt!1931602 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(declare-fun lt!1931608 () Unit!138311)

(declare-fun lt!1931607 () Unit!138311)

(assert (=> d!1524273 (= lt!1931608 lt!1931607)))

(assert (=> d!1524273 (contains!16867 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(assert (=> d!1524273 (= lt!1931607 (lemmaInGenMapThenLongMapContainsHash!845 lt!1931247 key!1776 (hashF!12473 thiss!42052)))))

(assert (=> d!1524273 true))

(declare-fun _$25!298 () Unit!138311)

(assert (=> d!1524273 (= (choose!33997 lt!1931247 key!1776 (hashF!12473 thiss!42052)) _$25!298)))

(declare-fun bs!1149255 () Bool)

(assert (= bs!1149255 d!1524273))

(declare-fun m!5740270 () Bool)

(assert (=> bs!1149255 m!5740270))

(assert (=> bs!1149255 m!5739776))

(assert (=> bs!1149255 m!5739816))

(assert (=> bs!1149255 m!5739822))

(assert (=> bs!1149255 m!5739822))

(assert (=> bs!1149255 m!5739834))

(assert (=> bs!1149255 m!5739776))

(assert (=> bs!1149255 m!5739816))

(assert (=> bs!1149255 m!5739748))

(declare-fun m!5740272 () Bool)

(assert (=> bs!1149255 m!5740272))

(declare-fun m!5740274 () Bool)

(assert (=> bs!1149255 m!5740274))

(assert (=> bs!1149255 m!5739776))

(assert (=> bs!1149255 m!5739812))

(assert (=> d!1524121 d!1524273))

(declare-fun d!1524275 () Bool)

(assert (=> d!1524275 (= (isEmpty!29288 lt!1931242) (not ((_ is Some!12704) lt!1931242)))))

(assert (=> d!1524153 d!1524275))

(declare-fun d!1524277 () Bool)

(declare-fun lt!1931611 () Bool)

(declare-fun content!9592 (List!53633) (InoxSet tuple2!55576))

(assert (=> d!1524277 (= lt!1931611 (select (content!9592 lt!1931237) (get!18065 lt!1931343)))))

(declare-fun e!2976613 () Bool)

(assert (=> d!1524277 (= lt!1931611 e!2976613)))

(declare-fun res!2022546 () Bool)

(assert (=> d!1524277 (=> (not res!2022546) (not e!2976613))))

(assert (=> d!1524277 (= res!2022546 ((_ is Cons!53509) lt!1931237))))

(assert (=> d!1524277 (= (contains!16869 lt!1931237 (get!18065 lt!1931343)) lt!1931611)))

(declare-fun b!4768696 () Bool)

(declare-fun e!2976614 () Bool)

(assert (=> b!4768696 (= e!2976613 e!2976614)))

(declare-fun res!2022547 () Bool)

(assert (=> b!4768696 (=> res!2022547 e!2976614)))

(assert (=> b!4768696 (= res!2022547 (= (h!59921 lt!1931237) (get!18065 lt!1931343)))))

(declare-fun b!4768697 () Bool)

(assert (=> b!4768697 (= e!2976614 (contains!16869 (t!361063 lt!1931237) (get!18065 lt!1931343)))))

(assert (= (and d!1524277 res!2022546) b!4768696))

(assert (= (and b!4768696 (not res!2022547)) b!4768697))

(declare-fun m!5740276 () Bool)

(assert (=> d!1524277 m!5740276))

(assert (=> d!1524277 m!5739864))

(declare-fun m!5740278 () Bool)

(assert (=> d!1524277 m!5740278))

(assert (=> b!4768697 m!5739864))

(declare-fun m!5740280 () Bool)

(assert (=> b!4768697 m!5740280))

(assert (=> b!4768375 d!1524277))

(declare-fun d!1524279 () Bool)

(assert (=> d!1524279 (= (get!18065 lt!1931343) (v!47741 lt!1931343))))

(assert (=> b!4768375 d!1524279))

(declare-fun d!1524281 () Bool)

(assert (=> d!1524281 (= (isEmpty!29289 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249)) (not ((_ is Some!12705) (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249))))))

(assert (=> d!1524159 d!1524281))

(declare-fun d!1524283 () Bool)

(declare-fun res!2022548 () Bool)

(declare-fun e!2976615 () Bool)

(assert (=> d!1524283 (=> res!2022548 e!2976615)))

(assert (=> d!1524283 (= res!2022548 ((_ is Nil!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524283 (= (forall!11880 (toList!6311 lt!1931247) lambda!224651) e!2976615)))

(declare-fun b!4768698 () Bool)

(declare-fun e!2976616 () Bool)

(assert (=> b!4768698 (= e!2976615 e!2976616)))

(declare-fun res!2022549 () Bool)

(assert (=> b!4768698 (=> (not res!2022549) (not e!2976616))))

(assert (=> b!4768698 (= res!2022549 (dynLambda!21958 lambda!224651 (h!59922 (toList!6311 lt!1931247))))))

(declare-fun b!4768699 () Bool)

(assert (=> b!4768699 (= e!2976616 (forall!11880 (t!361064 (toList!6311 lt!1931247)) lambda!224651))))

(assert (= (and d!1524283 (not res!2022548)) b!4768698))

(assert (= (and b!4768698 res!2022549) b!4768699))

(declare-fun b_lambda!184481 () Bool)

(assert (=> (not b_lambda!184481) (not b!4768698)))

(declare-fun m!5740282 () Bool)

(assert (=> b!4768698 m!5740282))

(declare-fun m!5740284 () Bool)

(assert (=> b!4768699 m!5740284))

(assert (=> d!1524119 d!1524283))

(declare-fun bs!1149256 () Bool)

(declare-fun d!1524285 () Bool)

(assert (= bs!1149256 (and d!1524285 d!1524141)))

(declare-fun lambda!224718 () Int)

(assert (=> bs!1149256 (= lambda!224718 lambda!224661)))

(declare-fun bs!1149257 () Bool)

(assert (= bs!1149257 (and d!1524285 d!1524207)))

(assert (=> bs!1149257 (= lambda!224718 lambda!224674)))

(declare-fun bs!1149258 () Bool)

(assert (= bs!1149258 (and d!1524285 d!1524121)))

(assert (=> bs!1149258 (= lambda!224718 lambda!224658)))

(declare-fun bs!1149259 () Bool)

(assert (= bs!1149259 (and d!1524285 b!4768288)))

(assert (=> bs!1149259 (= lambda!224718 lambda!224638)))

(declare-fun bs!1149260 () Bool)

(assert (= bs!1149260 (and d!1524285 d!1524261)))

(assert (=> bs!1149260 (not (= lambda!224718 lambda!224710))))

(declare-fun bs!1149261 () Bool)

(assert (= bs!1149261 (and d!1524285 d!1524119)))

(assert (=> bs!1149261 (= lambda!224718 lambda!224651)))

(declare-fun bs!1149262 () Bool)

(assert (= bs!1149262 (and d!1524285 b!4768415)))

(assert (=> bs!1149262 (= lambda!224718 lambda!224664)))

(declare-fun bs!1149263 () Bool)

(assert (= bs!1149263 (and d!1524285 b!4768475)))

(assert (=> bs!1149263 (= lambda!224718 lambda!224670)))

(declare-fun bs!1149264 () Bool)

(assert (= bs!1149264 (and d!1524285 d!1524171)))

(assert (=> bs!1149264 (= lambda!224718 lambda!224667)))

(declare-fun bs!1149265 () Bool)

(assert (= bs!1149265 (and d!1524285 d!1524205)))

(assert (=> bs!1149265 (= lambda!224718 lambda!224671)))

(declare-fun bs!1149266 () Bool)

(assert (= bs!1149266 (and d!1524285 d!1524273)))

(assert (=> bs!1149266 (= lambda!224718 lambda!224713)))

(declare-fun bs!1149267 () Bool)

(assert (= bs!1149267 (and d!1524285 d!1524239)))

(assert (=> bs!1149267 (= lambda!224718 lambda!224707)))

(assert (=> d!1524285 (= (_2!31082 (get!18065 (getPair!652 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776))) (get!18066 (getValueByKey!2200 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))) key!1776)))))

(declare-fun lt!1931654 () Unit!138311)

(declare-fun lt!1931650 () Unit!138311)

(assert (=> d!1524285 (= lt!1931654 lt!1931650)))

(assert (=> d!1524285 (isDefined!9857 (getPair!652 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776))))

(declare-fun lt!1931649 () Unit!138311)

(assert (=> d!1524285 (= lt!1931649 (forallContained!3869 (toList!6311 lt!1931247) lambda!224718 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))))

(declare-fun lt!1931646 () Unit!138311)

(declare-fun lt!1931659 () Unit!138311)

(assert (=> d!1524285 (= lt!1931646 lt!1931659)))

(declare-fun lt!1931657 () (_ BitVec 64))

(declare-fun lt!1931658 () List!53633)

(assert (=> d!1524285 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931657 lt!1931658))))

(assert (=> d!1524285 (= lt!1931659 (lemmaGetValueImpliesTupleContained!444 lt!1931247 lt!1931657 lt!1931658))))

(assert (=> d!1524285 (= lt!1931658 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))

(assert (=> d!1524285 (= lt!1931657 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(declare-fun lt!1931651 () Unit!138311)

(declare-fun lt!1931645 () Unit!138311)

(assert (=> d!1524285 (= lt!1931651 lt!1931645)))

(assert (=> d!1524285 (contains!16867 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(assert (=> d!1524285 (= lt!1931645 (lemmaInGenMapThenLongMapContainsHash!845 lt!1931247 key!1776 (hashF!12473 thiss!42052)))))

(assert (=> d!1524285 (= lt!1931650 (lemmaInGenMapThenGetPairDefined!435 lt!1931247 key!1776 (hashF!12473 thiss!42052)))))

(declare-fun lt!1931655 () Unit!138311)

(assert (=> d!1524285 (= lt!1931655 (forallContained!3869 (toList!6311 lt!1931247) lambda!224718 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))))

(declare-fun lt!1931644 () Unit!138311)

(declare-fun lt!1931653 () Unit!138311)

(assert (=> d!1524285 (= lt!1931644 lt!1931653)))

(declare-fun lt!1931648 () (_ BitVec 64))

(declare-fun lt!1931656 () List!53633)

(assert (=> d!1524285 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931648 lt!1931656))))

(assert (=> d!1524285 (= lt!1931653 (lemmaGetValueImpliesTupleContained!444 lt!1931247 lt!1931648 lt!1931656))))

(assert (=> d!1524285 (= lt!1931656 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))

(assert (=> d!1524285 (= lt!1931648 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(declare-fun lt!1931652 () Unit!138311)

(declare-fun lt!1931647 () Unit!138311)

(assert (=> d!1524285 (= lt!1931652 lt!1931647)))

(assert (=> d!1524285 (contains!16867 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(assert (=> d!1524285 (= lt!1931647 (lemmaInGenMapThenLongMapContainsHash!845 lt!1931247 key!1776 (hashF!12473 thiss!42052)))))

(assert (=> d!1524285 true))

(declare-fun _$7!2310 () Unit!138311)

(assert (=> d!1524285 (= (choose!33996 lt!1931247 key!1776 (_2!31082 lt!1931239) (hashF!12473 thiss!42052)) _$7!2310)))

(declare-fun bs!1149268 () Bool)

(assert (= bs!1149268 d!1524285))

(assert (=> bs!1149268 m!5739726))

(assert (=> bs!1149268 m!5739748))

(declare-fun m!5740286 () Bool)

(assert (=> bs!1149268 m!5740286))

(assert (=> bs!1149268 m!5739728))

(declare-fun m!5740288 () Bool)

(assert (=> bs!1149268 m!5740288))

(assert (=> bs!1149268 m!5739776))

(assert (=> bs!1149268 m!5739776))

(assert (=> bs!1149268 m!5739816))

(assert (=> bs!1149268 m!5739728))

(assert (=> bs!1149268 m!5739730))

(assert (=> bs!1149268 m!5739778))

(declare-fun m!5740290 () Bool)

(assert (=> bs!1149268 m!5740290))

(assert (=> bs!1149268 m!5739776))

(assert (=> bs!1149268 m!5739812))

(assert (=> bs!1149268 m!5739822))

(assert (=> bs!1149268 m!5739824))

(declare-fun m!5740292 () Bool)

(assert (=> bs!1149268 m!5740292))

(declare-fun m!5740294 () Bool)

(assert (=> bs!1149268 m!5740294))

(assert (=> bs!1149268 m!5740292))

(assert (=> bs!1149268 m!5739822))

(assert (=> bs!1149268 m!5739834))

(assert (=> bs!1149268 m!5739816))

(assert (=> bs!1149268 m!5739822))

(assert (=> d!1524119 d!1524285))

(assert (=> b!4768357 d!1524229))

(assert (=> b!4768357 d!1524171))

(assert (=> b!4768359 d!1524167))

(assert (=> b!4768359 d!1524169))

(assert (=> b!4768359 d!1524171))

(assert (=> b!4768359 d!1524283))

(declare-fun d!1524287 () Bool)

(assert (=> d!1524287 (dynLambda!21958 lambda!224651 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))))

(declare-fun lt!1931660 () Unit!138311)

(assert (=> d!1524287 (= lt!1931660 (choose!33999 (toList!6311 lt!1931247) lambda!224651 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))))

(declare-fun e!2976617 () Bool)

(assert (=> d!1524287 e!2976617))

(declare-fun res!2022550 () Bool)

(assert (=> d!1524287 (=> (not res!2022550) (not e!2976617))))

(assert (=> d!1524287 (= res!2022550 (forall!11880 (toList!6311 lt!1931247) lambda!224651))))

(assert (=> d!1524287 (= (forallContained!3869 (toList!6311 lt!1931247) lambda!224651 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))) lt!1931660)))

(declare-fun b!4768700 () Bool)

(assert (=> b!4768700 (= e!2976617 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))))

(assert (= (and d!1524287 res!2022550) b!4768700))

(declare-fun b_lambda!184483 () Bool)

(assert (=> (not b_lambda!184483) (not d!1524287)))

(declare-fun m!5740296 () Bool)

(assert (=> d!1524287 m!5740296))

(declare-fun m!5740298 () Bool)

(assert (=> d!1524287 m!5740298))

(assert (=> d!1524287 m!5739814))

(assert (=> b!4768700 m!5740214))

(assert (=> b!4768359 d!1524287))

(declare-fun d!1524289 () Bool)

(assert (=> d!1524289 (= (get!18065 (getPair!652 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776)) (v!47741 (getPair!652 (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776)))))

(assert (=> b!4768359 d!1524289))

(declare-fun d!1524291 () Bool)

(assert (=> d!1524291 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931303 lt!1931301))))

(declare-fun lt!1931661 () Unit!138311)

(assert (=> d!1524291 (= lt!1931661 (choose!33998 lt!1931247 lt!1931303 lt!1931301))))

(assert (=> d!1524291 (contains!16867 lt!1931247 lt!1931303)))

(assert (=> d!1524291 (= (lemmaGetValueImpliesTupleContained!444 lt!1931247 lt!1931303 lt!1931301) lt!1931661)))

(declare-fun bs!1149269 () Bool)

(assert (= bs!1149269 d!1524291))

(assert (=> bs!1149269 m!5739828))

(declare-fun m!5740300 () Bool)

(assert (=> bs!1149269 m!5740300))

(assert (=> bs!1149269 m!5739818))

(assert (=> b!4768359 d!1524291))

(assert (=> b!4768359 d!1524249))

(assert (=> b!4768359 d!1524255))

(declare-fun d!1524293 () Bool)

(declare-fun e!2976618 () Bool)

(assert (=> d!1524293 e!2976618))

(declare-fun res!2022551 () Bool)

(assert (=> d!1524293 (=> res!2022551 e!2976618)))

(declare-fun lt!1931662 () Bool)

(assert (=> d!1524293 (= res!2022551 (not lt!1931662))))

(declare-fun lt!1931665 () Bool)

(assert (=> d!1524293 (= lt!1931662 lt!1931665)))

(declare-fun lt!1931663 () Unit!138311)

(declare-fun e!2976619 () Unit!138311)

(assert (=> d!1524293 (= lt!1931663 e!2976619)))

(declare-fun c!813452 () Bool)

(assert (=> d!1524293 (= c!813452 lt!1931665)))

(assert (=> d!1524293 (= lt!1931665 (containsKey!3673 (toList!6311 lt!1931247) lt!1931303))))

(assert (=> d!1524293 (= (contains!16867 lt!1931247 lt!1931303) lt!1931662)))

(declare-fun b!4768701 () Bool)

(declare-fun lt!1931664 () Unit!138311)

(assert (=> b!4768701 (= e!2976619 lt!1931664)))

(assert (=> b!4768701 (= lt!1931664 (lemmaContainsKeyImpliesGetValueByKeyDefined!1997 (toList!6311 lt!1931247) lt!1931303))))

(assert (=> b!4768701 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931303))))

(declare-fun b!4768702 () Bool)

(declare-fun Unit!138339 () Unit!138311)

(assert (=> b!4768702 (= e!2976619 Unit!138339)))

(declare-fun b!4768703 () Bool)

(assert (=> b!4768703 (= e!2976618 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931303)))))

(assert (= (and d!1524293 c!813452) b!4768701))

(assert (= (and d!1524293 (not c!813452)) b!4768702))

(assert (= (and d!1524293 (not res!2022551)) b!4768703))

(declare-fun m!5740302 () Bool)

(assert (=> d!1524293 m!5740302))

(declare-fun m!5740304 () Bool)

(assert (=> b!4768701 m!5740304))

(assert (=> b!4768701 m!5739832))

(assert (=> b!4768701 m!5739832))

(declare-fun m!5740306 () Bool)

(assert (=> b!4768701 m!5740306))

(assert (=> b!4768703 m!5739832))

(assert (=> b!4768703 m!5739832))

(assert (=> b!4768703 m!5740306))

(assert (=> b!4768359 d!1524293))

(assert (=> b!4768359 d!1524245))

(declare-fun d!1524295 () Bool)

(declare-fun lt!1931666 () Bool)

(assert (=> d!1524295 (= lt!1931666 (select (content!9591 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931303 lt!1931301)))))

(declare-fun e!2976621 () Bool)

(assert (=> d!1524295 (= lt!1931666 e!2976621)))

(declare-fun res!2022552 () Bool)

(assert (=> d!1524295 (=> (not res!2022552) (not e!2976621))))

(assert (=> d!1524295 (= res!2022552 ((_ is Cons!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524295 (= (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931303 lt!1931301)) lt!1931666)))

(declare-fun b!4768704 () Bool)

(declare-fun e!2976620 () Bool)

(assert (=> b!4768704 (= e!2976621 e!2976620)))

(declare-fun res!2022553 () Bool)

(assert (=> b!4768704 (=> res!2022553 e!2976620)))

(assert (=> b!4768704 (= res!2022553 (= (h!59922 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931303 lt!1931301)))))

(declare-fun b!4768705 () Bool)

(assert (=> b!4768705 (= e!2976620 (contains!16866 (t!361064 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931303 lt!1931301)))))

(assert (= (and d!1524295 res!2022552) b!4768704))

(assert (= (and b!4768704 (not res!2022553)) b!4768705))

(assert (=> d!1524295 m!5739888))

(declare-fun m!5740308 () Bool)

(assert (=> d!1524295 m!5740308))

(declare-fun m!5740310 () Bool)

(assert (=> b!4768705 m!5740310))

(assert (=> b!4768359 d!1524295))

(assert (=> b!4768359 d!1524121))

(assert (=> b!4768359 d!1524141))

(assert (=> b!4768359 d!1524143))

(declare-fun d!1524297 () Bool)

(declare-fun lt!1931667 () Bool)

(assert (=> d!1524297 (= lt!1931667 (select (content!9591 lt!1931425) (tuple2!55579 lt!1931411 lt!1931412)))))

(declare-fun e!2976623 () Bool)

(assert (=> d!1524297 (= lt!1931667 e!2976623)))

(declare-fun res!2022554 () Bool)

(assert (=> d!1524297 (=> (not res!2022554) (not e!2976623))))

(assert (=> d!1524297 (= res!2022554 ((_ is Cons!53510) lt!1931425))))

(assert (=> d!1524297 (= (contains!16866 lt!1931425 (tuple2!55579 lt!1931411 lt!1931412)) lt!1931667)))

(declare-fun b!4768706 () Bool)

(declare-fun e!2976622 () Bool)

(assert (=> b!4768706 (= e!2976623 e!2976622)))

(declare-fun res!2022555 () Bool)

(assert (=> b!4768706 (=> res!2022555 e!2976622)))

(assert (=> b!4768706 (= res!2022555 (= (h!59922 lt!1931425) (tuple2!55579 lt!1931411 lt!1931412)))))

(declare-fun b!4768707 () Bool)

(assert (=> b!4768707 (= e!2976622 (contains!16866 (t!361064 lt!1931425) (tuple2!55579 lt!1931411 lt!1931412)))))

(assert (= (and d!1524297 res!2022554) b!4768706))

(assert (= (and b!4768706 (not res!2022555)) b!4768707))

(declare-fun m!5740312 () Bool)

(assert (=> d!1524297 m!5740312))

(declare-fun m!5740314 () Bool)

(assert (=> d!1524297 m!5740314))

(declare-fun m!5740316 () Bool)

(assert (=> b!4768707 m!5740316))

(assert (=> b!4768468 d!1524297))

(declare-fun d!1524299 () Bool)

(assert (=> d!1524299 (isDefined!9856 (getValueByKey!2201 lt!1931418 lt!1931411))))

(declare-fun lt!1931668 () Unit!138311)

(assert (=> d!1524299 (= lt!1931668 (choose!34001 lt!1931418 lt!1931411))))

(declare-fun e!2976624 () Bool)

(assert (=> d!1524299 e!2976624))

(declare-fun res!2022556 () Bool)

(assert (=> d!1524299 (=> (not res!2022556) (not e!2976624))))

(assert (=> d!1524299 (= res!2022556 (isStrictlySorted!811 lt!1931418))))

(assert (=> d!1524299 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1997 lt!1931418 lt!1931411) lt!1931668)))

(declare-fun b!4768708 () Bool)

(assert (=> b!4768708 (= e!2976624 (containsKey!3673 lt!1931418 lt!1931411))))

(assert (= (and d!1524299 res!2022556) b!4768708))

(assert (=> d!1524299 m!5739960))

(assert (=> d!1524299 m!5739960))

(assert (=> d!1524299 m!5739962))

(declare-fun m!5740318 () Bool)

(assert (=> d!1524299 m!5740318))

(declare-fun m!5740320 () Bool)

(assert (=> d!1524299 m!5740320))

(declare-fun m!5740322 () Bool)

(assert (=> b!4768708 m!5740322))

(assert (=> b!4768468 d!1524299))

(declare-fun b!4768712 () Bool)

(declare-fun e!2976626 () Option!12706)

(assert (=> b!4768712 (= e!2976626 None!12705)))

(declare-fun b!4768710 () Bool)

(declare-fun e!2976625 () Option!12706)

(assert (=> b!4768710 (= e!2976625 e!2976626)))

(declare-fun c!813454 () Bool)

(assert (=> b!4768710 (= c!813454 (and ((_ is Cons!53510) lt!1931418) (not (= (_1!31083 (h!59922 lt!1931418)) lt!1931411))))))

(declare-fun d!1524301 () Bool)

(declare-fun c!813453 () Bool)

(assert (=> d!1524301 (= c!813453 (and ((_ is Cons!53510) lt!1931418) (= (_1!31083 (h!59922 lt!1931418)) lt!1931411)))))

(assert (=> d!1524301 (= (getValueByKey!2201 lt!1931418 lt!1931411) e!2976625)))

(declare-fun b!4768711 () Bool)

(assert (=> b!4768711 (= e!2976626 (getValueByKey!2201 (t!361064 lt!1931418) lt!1931411))))

(declare-fun b!4768709 () Bool)

(assert (=> b!4768709 (= e!2976625 (Some!12705 (_2!31083 (h!59922 lt!1931418))))))

(assert (= (and d!1524301 c!813453) b!4768709))

(assert (= (and d!1524301 (not c!813453)) b!4768710))

(assert (= (and b!4768710 c!813454) b!4768711))

(assert (= (and b!4768710 (not c!813454)) b!4768712))

(declare-fun m!5740324 () Bool)

(assert (=> b!4768711 m!5740324))

(assert (=> b!4768468 d!1524301))

(assert (=> b!4768468 d!1524135))

(assert (=> b!4768468 d!1524225))

(declare-fun d!1524303 () Bool)

(assert (=> d!1524303 (= (isDefined!9856 (getValueByKey!2201 lt!1931418 lt!1931411)) (not (isEmpty!29289 (getValueByKey!2201 lt!1931418 lt!1931411))))))

(declare-fun bs!1149270 () Bool)

(assert (= bs!1149270 d!1524303))

(assert (=> bs!1149270 m!5739960))

(declare-fun m!5740326 () Bool)

(assert (=> bs!1149270 m!5740326))

(assert (=> b!4768468 d!1524303))

(declare-fun d!1524305 () Bool)

(declare-fun res!2022557 () Bool)

(declare-fun e!2976627 () Bool)

(assert (=> d!1524305 (=> res!2022557 e!2976627)))

(assert (=> d!1524305 (= res!2022557 (and ((_ is Cons!53510) lt!1931424) (= (_1!31083 (h!59922 lt!1931424)) lt!1931411)))))

(assert (=> d!1524305 (= (containsKey!3673 lt!1931424 lt!1931411) e!2976627)))

(declare-fun b!4768713 () Bool)

(declare-fun e!2976628 () Bool)

(assert (=> b!4768713 (= e!2976627 e!2976628)))

(declare-fun res!2022558 () Bool)

(assert (=> b!4768713 (=> (not res!2022558) (not e!2976628))))

(assert (=> b!4768713 (= res!2022558 (and (or (not ((_ is Cons!53510) lt!1931424)) (bvsle (_1!31083 (h!59922 lt!1931424)) lt!1931411)) ((_ is Cons!53510) lt!1931424) (bvslt (_1!31083 (h!59922 lt!1931424)) lt!1931411)))))

(declare-fun b!4768714 () Bool)

(assert (=> b!4768714 (= e!2976628 (containsKey!3673 (t!361064 lt!1931424) lt!1931411))))

(assert (= (and d!1524305 (not res!2022557)) b!4768713))

(assert (= (and b!4768713 res!2022558) b!4768714))

(declare-fun m!5740328 () Bool)

(assert (=> b!4768714 m!5740328))

(assert (=> b!4768468 d!1524305))

(declare-fun d!1524307 () Bool)

(assert (=> d!1524307 (containsKey!3673 lt!1931424 lt!1931411)))

(declare-fun lt!1931671 () Unit!138311)

(declare-fun choose!34004 (List!53634 (_ BitVec 64)) Unit!138311)

(assert (=> d!1524307 (= lt!1931671 (choose!34004 lt!1931424 lt!1931411))))

(declare-fun e!2976631 () Bool)

(assert (=> d!1524307 e!2976631))

(declare-fun res!2022561 () Bool)

(assert (=> d!1524307 (=> (not res!2022561) (not e!2976631))))

(assert (=> d!1524307 (= res!2022561 (isStrictlySorted!811 lt!1931424))))

(assert (=> d!1524307 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!206 lt!1931424 lt!1931411) lt!1931671)))

(declare-fun b!4768717 () Bool)

(assert (=> b!4768717 (= e!2976631 (isDefined!9856 (getValueByKey!2201 lt!1931424 lt!1931411)))))

(assert (= (and d!1524307 res!2022561) b!4768717))

(assert (=> d!1524307 m!5739958))

(declare-fun m!5740330 () Bool)

(assert (=> d!1524307 m!5740330))

(declare-fun m!5740332 () Bool)

(assert (=> d!1524307 m!5740332))

(declare-fun m!5740334 () Bool)

(assert (=> b!4768717 m!5740334))

(assert (=> b!4768717 m!5740334))

(declare-fun m!5740336 () Bool)

(assert (=> b!4768717 m!5740336))

(assert (=> b!4768468 d!1524307))

(declare-fun d!1524309 () Bool)

(assert (=> d!1524309 (contains!16866 lt!1931425 (tuple2!55579 lt!1931411 lt!1931412))))

(declare-fun lt!1931672 () Unit!138311)

(assert (=> d!1524309 (= lt!1931672 (choose!34002 lt!1931425 lt!1931411 lt!1931412))))

(declare-fun e!2976632 () Bool)

(assert (=> d!1524309 e!2976632))

(declare-fun res!2022562 () Bool)

(assert (=> d!1524309 (=> (not res!2022562) (not e!2976632))))

(assert (=> d!1524309 (= res!2022562 (isStrictlySorted!811 lt!1931425))))

(assert (=> d!1524309 (= (lemmaGetValueByKeyImpliesContainsTuple!940 lt!1931425 lt!1931411 lt!1931412) lt!1931672)))

(declare-fun b!4768718 () Bool)

(assert (=> b!4768718 (= e!2976632 (= (getValueByKey!2201 lt!1931425 lt!1931411) (Some!12705 lt!1931412)))))

(assert (= (and d!1524309 res!2022562) b!4768718))

(assert (=> d!1524309 m!5739956))

(declare-fun m!5740338 () Bool)

(assert (=> d!1524309 m!5740338))

(declare-fun m!5740340 () Bool)

(assert (=> d!1524309 m!5740340))

(declare-fun m!5740342 () Bool)

(assert (=> b!4768718 m!5740342))

(assert (=> b!4768468 d!1524309))

(declare-fun d!1524311 () Bool)

(declare-fun lt!1931673 () Bool)

(assert (=> d!1524311 (= lt!1931673 (select (content!9592 lt!1931230) (get!18065 lt!1931252)))))

(declare-fun e!2976633 () Bool)

(assert (=> d!1524311 (= lt!1931673 e!2976633)))

(declare-fun res!2022563 () Bool)

(assert (=> d!1524311 (=> (not res!2022563) (not e!2976633))))

(assert (=> d!1524311 (= res!2022563 ((_ is Cons!53509) lt!1931230))))

(assert (=> d!1524311 (= (contains!16869 lt!1931230 (get!18065 lt!1931252)) lt!1931673)))

(declare-fun b!4768719 () Bool)

(declare-fun e!2976634 () Bool)

(assert (=> b!4768719 (= e!2976633 e!2976634)))

(declare-fun res!2022564 () Bool)

(assert (=> b!4768719 (=> res!2022564 e!2976634)))

(assert (=> b!4768719 (= res!2022564 (= (h!59921 lt!1931230) (get!18065 lt!1931252)))))

(declare-fun b!4768720 () Bool)

(assert (=> b!4768720 (= e!2976634 (contains!16869 (t!361063 lt!1931230) (get!18065 lt!1931252)))))

(assert (= (and d!1524311 res!2022563) b!4768719))

(assert (= (and b!4768719 (not res!2022564)) b!4768720))

(declare-fun m!5740344 () Bool)

(assert (=> d!1524311 m!5740344))

(assert (=> d!1524311 m!5739794))

(declare-fun m!5740346 () Bool)

(assert (=> d!1524311 m!5740346))

(assert (=> b!4768720 m!5739794))

(declare-fun m!5740348 () Bool)

(assert (=> b!4768720 m!5740348))

(assert (=> b!4768315 d!1524311))

(assert (=> b!4768315 d!1524197))

(assert (=> d!1524117 d!1524241))

(assert (=> b!4768378 d!1524279))

(declare-fun d!1524313 () Bool)

(assert (=> d!1524313 (= (get!18067 (getValueByKey!2201 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lt!1931249)) (v!47743 (getValueByKey!2201 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lt!1931249)))))

(assert (=> b!4768408 d!1524313))

(declare-fun b!4768724 () Bool)

(declare-fun e!2976636 () Option!12706)

(assert (=> b!4768724 (= e!2976636 None!12705)))

(declare-fun b!4768722 () Bool)

(declare-fun e!2976635 () Option!12706)

(assert (=> b!4768722 (= e!2976635 e!2976636)))

(declare-fun c!813456 () Bool)

(assert (=> b!4768722 (= c!813456 (and ((_ is Cons!53510) (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))) (not (= (_1!31083 (h!59922 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) lt!1931249))))))

(declare-fun d!1524315 () Bool)

(declare-fun c!813455 () Bool)

(assert (=> d!1524315 (= c!813455 (and ((_ is Cons!53510) (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))) (= (_1!31083 (h!59922 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) lt!1931249)))))

(assert (=> d!1524315 (= (getValueByKey!2201 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lt!1931249) e!2976635)))

(declare-fun b!4768723 () Bool)

(assert (=> b!4768723 (= e!2976636 (getValueByKey!2201 (t!361064 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))) lt!1931249))))

(declare-fun b!4768721 () Bool)

(assert (=> b!4768721 (= e!2976635 (Some!12705 (_2!31083 (h!59922 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))))))))

(assert (= (and d!1524315 c!813455) b!4768721))

(assert (= (and d!1524315 (not c!813455)) b!4768722))

(assert (= (and b!4768722 c!813456) b!4768723))

(assert (= (and b!4768722 (not c!813456)) b!4768724))

(declare-fun m!5740350 () Bool)

(assert (=> b!4768723 m!5740350))

(assert (=> b!4768408 d!1524315))

(assert (=> b!4768408 d!1524135))

(declare-fun bs!1149271 () Bool)

(declare-fun d!1524317 () Bool)

(assert (= bs!1149271 (and d!1524317 d!1524141)))

(declare-fun lambda!224721 () Int)

(assert (=> bs!1149271 (= lambda!224721 lambda!224661)))

(declare-fun bs!1149272 () Bool)

(assert (= bs!1149272 (and d!1524317 d!1524207)))

(assert (=> bs!1149272 (= lambda!224721 lambda!224674)))

(declare-fun bs!1149273 () Bool)

(assert (= bs!1149273 (and d!1524317 d!1524121)))

(assert (=> bs!1149273 (= lambda!224721 lambda!224658)))

(declare-fun bs!1149274 () Bool)

(assert (= bs!1149274 (and d!1524317 b!4768288)))

(assert (=> bs!1149274 (= lambda!224721 lambda!224638)))

(declare-fun bs!1149275 () Bool)

(assert (= bs!1149275 (and d!1524317 d!1524261)))

(assert (=> bs!1149275 (not (= lambda!224721 lambda!224710))))

(declare-fun bs!1149276 () Bool)

(assert (= bs!1149276 (and d!1524317 d!1524119)))

(assert (=> bs!1149276 (= lambda!224721 lambda!224651)))

(declare-fun bs!1149277 () Bool)

(assert (= bs!1149277 (and d!1524317 b!4768415)))

(assert (=> bs!1149277 (= lambda!224721 lambda!224664)))

(declare-fun bs!1149278 () Bool)

(assert (= bs!1149278 (and d!1524317 b!4768475)))

(assert (=> bs!1149278 (= lambda!224721 lambda!224670)))

(declare-fun bs!1149279 () Bool)

(assert (= bs!1149279 (and d!1524317 d!1524171)))

(assert (=> bs!1149279 (= lambda!224721 lambda!224667)))

(declare-fun bs!1149280 () Bool)

(assert (= bs!1149280 (and d!1524317 d!1524205)))

(assert (=> bs!1149280 (= lambda!224721 lambda!224671)))

(declare-fun bs!1149281 () Bool)

(assert (= bs!1149281 (and d!1524317 d!1524285)))

(assert (=> bs!1149281 (= lambda!224721 lambda!224718)))

(declare-fun bs!1149282 () Bool)

(assert (= bs!1149282 (and d!1524317 d!1524273)))

(assert (=> bs!1149282 (= lambda!224721 lambda!224713)))

(declare-fun bs!1149283 () Bool)

(assert (= bs!1149283 (and d!1524317 d!1524239)))

(assert (=> bs!1149283 (= lambda!224721 lambda!224707)))

(declare-fun e!2976639 () Bool)

(assert (=> d!1524317 e!2976639))

(declare-fun res!2022567 () Bool)

(assert (=> d!1524317 (=> (not res!2022567) (not e!2976639))))

(assert (=> d!1524317 (= res!2022567 (contains!16867 lt!1931419 (hash!4580 (hashF!12473 thiss!42052) key!1776)))))

(declare-fun lt!1931676 () Unit!138311)

(declare-fun choose!34005 (ListLongMap!4709 K!14989 Hashable!6600) Unit!138311)

(assert (=> d!1524317 (= lt!1931676 (choose!34005 lt!1931419 key!1776 (hashF!12473 thiss!42052)))))

(assert (=> d!1524317 (forall!11880 (toList!6311 lt!1931419) lambda!224721)))

(assert (=> d!1524317 (= (lemmaInGenericMapThenInLongMap!205 lt!1931419 key!1776 (hashF!12473 thiss!42052)) lt!1931676)))

(declare-fun b!4768727 () Bool)

(assert (=> b!4768727 (= e!2976639 (isDefined!9857 (getPair!652 (apply!12644 lt!1931419 (hash!4580 (hashF!12473 thiss!42052) key!1776)) key!1776)))))

(assert (= (and d!1524317 res!2022567) b!4768727))

(assert (=> d!1524317 m!5739776))

(assert (=> d!1524317 m!5739776))

(declare-fun m!5740352 () Bool)

(assert (=> d!1524317 m!5740352))

(declare-fun m!5740354 () Bool)

(assert (=> d!1524317 m!5740354))

(declare-fun m!5740356 () Bool)

(assert (=> d!1524317 m!5740356))

(assert (=> b!4768727 m!5739776))

(assert (=> b!4768727 m!5739776))

(declare-fun m!5740358 () Bool)

(assert (=> b!4768727 m!5740358))

(assert (=> b!4768727 m!5740358))

(declare-fun m!5740360 () Bool)

(assert (=> b!4768727 m!5740360))

(assert (=> b!4768727 m!5740360))

(declare-fun m!5740362 () Bool)

(assert (=> b!4768727 m!5740362))

(assert (=> b!4768471 d!1524317))

(declare-fun d!1524319 () Bool)

(assert (=> d!1524319 (= (isDefined!9857 lt!1931252) (not (isEmpty!29287 lt!1931252)))))

(declare-fun bs!1149284 () Bool)

(assert (= bs!1149284 d!1524319))

(assert (=> bs!1149284 m!5739800))

(assert (=> b!4768319 d!1524319))

(declare-fun d!1524321 () Bool)

(declare-fun noDuplicatedKeys!407 (List!53633) Bool)

(assert (=> d!1524321 (= (invariantList!1664 (toList!6312 lt!1931352)) (noDuplicatedKeys!407 (toList!6312 lt!1931352)))))

(declare-fun bs!1149285 () Bool)

(assert (= bs!1149285 d!1524321))

(declare-fun m!5740364 () Bool)

(assert (=> bs!1149285 m!5740364))

(assert (=> d!1524139 d!1524321))

(declare-fun bs!1149286 () Bool)

(declare-fun d!1524323 () Bool)

(assert (= bs!1149286 (and d!1524323 d!1524207)))

(declare-fun lambda!224722 () Int)

(assert (=> bs!1149286 (= lambda!224722 lambda!224674)))

(declare-fun bs!1149287 () Bool)

(assert (= bs!1149287 (and d!1524323 d!1524121)))

(assert (=> bs!1149287 (= lambda!224722 lambda!224658)))

(declare-fun bs!1149288 () Bool)

(assert (= bs!1149288 (and d!1524323 b!4768288)))

(assert (=> bs!1149288 (= lambda!224722 lambda!224638)))

(declare-fun bs!1149289 () Bool)

(assert (= bs!1149289 (and d!1524323 d!1524261)))

(assert (=> bs!1149289 (not (= lambda!224722 lambda!224710))))

(declare-fun bs!1149290 () Bool)

(assert (= bs!1149290 (and d!1524323 d!1524119)))

(assert (=> bs!1149290 (= lambda!224722 lambda!224651)))

(declare-fun bs!1149291 () Bool)

(assert (= bs!1149291 (and d!1524323 b!4768415)))

(assert (=> bs!1149291 (= lambda!224722 lambda!224664)))

(declare-fun bs!1149292 () Bool)

(assert (= bs!1149292 (and d!1524323 b!4768475)))

(assert (=> bs!1149292 (= lambda!224722 lambda!224670)))

(declare-fun bs!1149293 () Bool)

(assert (= bs!1149293 (and d!1524323 d!1524171)))

(assert (=> bs!1149293 (= lambda!224722 lambda!224667)))

(declare-fun bs!1149294 () Bool)

(assert (= bs!1149294 (and d!1524323 d!1524205)))

(assert (=> bs!1149294 (= lambda!224722 lambda!224671)))

(declare-fun bs!1149295 () Bool)

(assert (= bs!1149295 (and d!1524323 d!1524285)))

(assert (=> bs!1149295 (= lambda!224722 lambda!224718)))

(declare-fun bs!1149296 () Bool)

(assert (= bs!1149296 (and d!1524323 d!1524317)))

(assert (=> bs!1149296 (= lambda!224722 lambda!224721)))

(declare-fun bs!1149297 () Bool)

(assert (= bs!1149297 (and d!1524323 d!1524141)))

(assert (=> bs!1149297 (= lambda!224722 lambda!224661)))

(declare-fun bs!1149298 () Bool)

(assert (= bs!1149298 (and d!1524323 d!1524273)))

(assert (=> bs!1149298 (= lambda!224722 lambda!224713)))

(declare-fun bs!1149299 () Bool)

(assert (= bs!1149299 (and d!1524323 d!1524239)))

(assert (=> bs!1149299 (= lambda!224722 lambda!224707)))

(declare-fun lt!1931677 () ListMap!5807)

(assert (=> d!1524323 (invariantList!1664 (toList!6312 lt!1931677))))

(declare-fun e!2976640 () ListMap!5807)

(assert (=> d!1524323 (= lt!1931677 e!2976640)))

(declare-fun c!813457 () Bool)

(assert (=> d!1524323 (= c!813457 ((_ is Cons!53510) (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))))))

(assert (=> d!1524323 (forall!11880 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lambda!224722)))

(assert (=> d!1524323 (= (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))) lt!1931677)))

(declare-fun b!4768728 () Bool)

(assert (=> b!4768728 (= e!2976640 (addToMapMapFromBucket!1629 (_2!31083 (h!59922 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) (extractMap!2155 (t!361064 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))))))))

(declare-fun b!4768729 () Bool)

(assert (=> b!4768729 (= e!2976640 (ListMap!5808 Nil!53509))))

(assert (= (and d!1524323 c!813457) b!4768728))

(assert (= (and d!1524323 (not c!813457)) b!4768729))

(declare-fun m!5740366 () Bool)

(assert (=> d!1524323 m!5740366))

(declare-fun m!5740368 () Bool)

(assert (=> d!1524323 m!5740368))

(declare-fun m!5740370 () Bool)

(assert (=> b!4768728 m!5740370))

(assert (=> b!4768728 m!5740370))

(declare-fun m!5740372 () Bool)

(assert (=> b!4768728 m!5740372))

(assert (=> d!1524139 d!1524323))

(assert (=> d!1524139 d!1524135))

(assert (=> d!1524139 d!1524155))

(declare-fun d!1524325 () Bool)

(assert (=> d!1524325 (dynLambda!21958 lambda!224638 lt!1931240)))

(assert (=> d!1524325 true))

(declare-fun _$7!2311 () Unit!138311)

(assert (=> d!1524325 (= (choose!33999 (toList!6311 lt!1931247) lambda!224638 lt!1931240) _$7!2311)))

(declare-fun b_lambda!184485 () Bool)

(assert (=> (not b_lambda!184485) (not d!1524325)))

(declare-fun bs!1149300 () Bool)

(assert (= bs!1149300 d!1524325))

(assert (=> bs!1149300 m!5739922))

(assert (=> d!1524151 d!1524325))

(assert (=> d!1524151 d!1524189))

(declare-fun b!4768730 () Bool)

(declare-fun e!2976641 () Option!12705)

(assert (=> b!4768730 (= e!2976641 (Some!12704 (_2!31082 (h!59921 (t!361063 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))))))))))

(declare-fun d!1524327 () Bool)

(declare-fun c!813458 () Bool)

(assert (=> d!1524327 (= c!813458 (and ((_ is Cons!53509) (t!361063 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))))) (= (_1!31082 (h!59921 (t!361063 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247)))))) key!1776)))))

(assert (=> d!1524327 (= (getValueByKey!2200 (t!361063 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247)))) key!1776) e!2976641)))

(declare-fun b!4768731 () Bool)

(declare-fun e!2976642 () Option!12705)

(assert (=> b!4768731 (= e!2976641 e!2976642)))

(declare-fun c!813459 () Bool)

(assert (=> b!4768731 (= c!813459 (and ((_ is Cons!53509) (t!361063 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))))) (not (= (_1!31082 (h!59921 (t!361063 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247)))))) key!1776))))))

(declare-fun b!4768732 () Bool)

(assert (=> b!4768732 (= e!2976642 (getValueByKey!2200 (t!361063 (t!361063 (toList!6312 (extractMap!2155 (toList!6311 lt!1931247))))) key!1776))))

(declare-fun b!4768733 () Bool)

(assert (=> b!4768733 (= e!2976642 None!12704)))

(assert (= (and d!1524327 c!813458) b!4768730))

(assert (= (and d!1524327 (not c!813458)) b!4768731))

(assert (= (and b!4768731 c!813459) b!4768732))

(assert (= (and b!4768731 (not c!813459)) b!4768733))

(declare-fun m!5740374 () Bool)

(assert (=> b!4768732 m!5740374))

(assert (=> b!4768437 d!1524327))

(declare-fun bs!1149301 () Bool)

(declare-fun d!1524329 () Bool)

(assert (= bs!1149301 (and d!1524329 d!1524207)))

(declare-fun lambda!224723 () Int)

(assert (=> bs!1149301 (not (= lambda!224723 lambda!224674))))

(declare-fun bs!1149302 () Bool)

(assert (= bs!1149302 (and d!1524329 d!1524121)))

(assert (=> bs!1149302 (not (= lambda!224723 lambda!224658))))

(declare-fun bs!1149303 () Bool)

(assert (= bs!1149303 (and d!1524329 d!1524261)))

(assert (=> bs!1149303 (= lambda!224723 lambda!224710)))

(declare-fun bs!1149304 () Bool)

(assert (= bs!1149304 (and d!1524329 d!1524119)))

(assert (=> bs!1149304 (not (= lambda!224723 lambda!224651))))

(declare-fun bs!1149305 () Bool)

(assert (= bs!1149305 (and d!1524329 b!4768415)))

(assert (=> bs!1149305 (not (= lambda!224723 lambda!224664))))

(declare-fun bs!1149306 () Bool)

(assert (= bs!1149306 (and d!1524329 b!4768475)))

(assert (=> bs!1149306 (not (= lambda!224723 lambda!224670))))

(declare-fun bs!1149307 () Bool)

(assert (= bs!1149307 (and d!1524329 d!1524171)))

(assert (=> bs!1149307 (not (= lambda!224723 lambda!224667))))

(declare-fun bs!1149308 () Bool)

(assert (= bs!1149308 (and d!1524329 d!1524205)))

(assert (=> bs!1149308 (not (= lambda!224723 lambda!224671))))

(declare-fun bs!1149309 () Bool)

(assert (= bs!1149309 (and d!1524329 d!1524285)))

(assert (=> bs!1149309 (not (= lambda!224723 lambda!224718))))

(declare-fun bs!1149310 () Bool)

(assert (= bs!1149310 (and d!1524329 d!1524317)))

(assert (=> bs!1149310 (not (= lambda!224723 lambda!224721))))

(declare-fun bs!1149311 () Bool)

(assert (= bs!1149311 (and d!1524329 d!1524141)))

(assert (=> bs!1149311 (not (= lambda!224723 lambda!224661))))

(declare-fun bs!1149312 () Bool)

(assert (= bs!1149312 (and d!1524329 d!1524273)))

(assert (=> bs!1149312 (not (= lambda!224723 lambda!224713))))

(declare-fun bs!1149313 () Bool)

(assert (= bs!1149313 (and d!1524329 d!1524239)))

(assert (=> bs!1149313 (not (= lambda!224723 lambda!224707))))

(declare-fun bs!1149314 () Bool)

(assert (= bs!1149314 (and d!1524329 d!1524323)))

(assert (=> bs!1149314 (not (= lambda!224723 lambda!224722))))

(declare-fun bs!1149315 () Bool)

(assert (= bs!1149315 (and d!1524329 b!4768288)))

(assert (=> bs!1149315 (not (= lambda!224723 lambda!224638))))

(assert (=> d!1524329 true))

(assert (=> d!1524329 (= (allKeysSameHashInMap!2025 (map!12010 (v!47740 (underlying!10086 thiss!42052))) (hashF!12473 thiss!42052)) (forall!11880 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lambda!224723))))

(declare-fun bs!1149316 () Bool)

(assert (= bs!1149316 d!1524329))

(declare-fun m!5740376 () Bool)

(assert (=> bs!1149316 m!5740376))

(assert (=> b!4768416 d!1524329))

(assert (=> b!4768416 d!1524135))

(declare-fun d!1524331 () Bool)

(assert (=> d!1524331 (= (isEmpty!29287 lt!1931252) (not ((_ is Some!12703) lt!1931252)))))

(assert (=> d!1524115 d!1524331))

(declare-fun d!1524333 () Bool)

(declare-fun res!2022568 () Bool)

(declare-fun e!2976643 () Bool)

(assert (=> d!1524333 (=> res!2022568 e!2976643)))

(assert (=> d!1524333 (= res!2022568 (not ((_ is Cons!53509) lt!1931230)))))

(assert (=> d!1524333 (= (noDuplicateKeys!2258 lt!1931230) e!2976643)))

(declare-fun b!4768734 () Bool)

(declare-fun e!2976644 () Bool)

(assert (=> b!4768734 (= e!2976643 e!2976644)))

(declare-fun res!2022569 () Bool)

(assert (=> b!4768734 (=> (not res!2022569) (not e!2976644))))

(assert (=> b!4768734 (= res!2022569 (not (containsKey!3672 (t!361063 lt!1931230) (_1!31082 (h!59921 lt!1931230)))))))

(declare-fun b!4768735 () Bool)

(assert (=> b!4768735 (= e!2976644 (noDuplicateKeys!2258 (t!361063 lt!1931230)))))

(assert (= (and d!1524333 (not res!2022568)) b!4768734))

(assert (= (and b!4768734 res!2022569) b!4768735))

(declare-fun m!5740378 () Bool)

(assert (=> b!4768734 m!5740378))

(declare-fun m!5740380 () Bool)

(assert (=> b!4768735 m!5740380))

(assert (=> d!1524115 d!1524333))

(declare-fun d!1524335 () Bool)

(declare-fun e!2976646 () Bool)

(assert (=> d!1524335 e!2976646))

(declare-fun res!2022571 () Bool)

(assert (=> d!1524335 (=> res!2022571 e!2976646)))

(declare-fun e!2976649 () Bool)

(assert (=> d!1524335 (= res!2022571 e!2976649)))

(declare-fun res!2022572 () Bool)

(assert (=> d!1524335 (=> (not res!2022572) (not e!2976649))))

(declare-fun lt!1931680 () Bool)

(assert (=> d!1524335 (= res!2022572 (not lt!1931680))))

(declare-fun lt!1931681 () Bool)

(assert (=> d!1524335 (= lt!1931680 lt!1931681)))

(declare-fun lt!1931683 () Unit!138311)

(declare-fun e!2976645 () Unit!138311)

(assert (=> d!1524335 (= lt!1931683 e!2976645)))

(declare-fun c!813462 () Bool)

(assert (=> d!1524335 (= c!813462 lt!1931681)))

(assert (=> d!1524335 (= lt!1931681 (containsKey!3674 (toList!6312 (map!12009 thiss!42052)) key!1776))))

(assert (=> d!1524335 (= (contains!16870 (map!12009 thiss!42052) key!1776) lt!1931680)))

(declare-fun b!4768736 () Bool)

(declare-fun e!2976650 () Bool)

(assert (=> b!4768736 (= e!2976650 (contains!16872 (keys!19401 (map!12009 thiss!42052)) key!1776))))

(declare-fun b!4768737 () Bool)

(assert (=> b!4768737 false))

(declare-fun lt!1931684 () Unit!138311)

(declare-fun lt!1931685 () Unit!138311)

(assert (=> b!4768737 (= lt!1931684 lt!1931685)))

(assert (=> b!4768737 (containsKey!3674 (toList!6312 (map!12009 thiss!42052)) key!1776)))

(assert (=> b!4768737 (= lt!1931685 (lemmaInGetKeysListThenContainsKey!1006 (toList!6312 (map!12009 thiss!42052)) key!1776))))

(declare-fun e!2976647 () Unit!138311)

(declare-fun Unit!138340 () Unit!138311)

(assert (=> b!4768737 (= e!2976647 Unit!138340)))

(declare-fun b!4768738 () Bool)

(assert (=> b!4768738 (= e!2976645 e!2976647)))

(declare-fun c!813461 () Bool)

(declare-fun call!334325 () Bool)

(assert (=> b!4768738 (= c!813461 call!334325)))

(declare-fun b!4768739 () Bool)

(declare-fun Unit!138341 () Unit!138311)

(assert (=> b!4768739 (= e!2976647 Unit!138341)))

(declare-fun b!4768740 () Bool)

(declare-fun lt!1931678 () Unit!138311)

(assert (=> b!4768740 (= e!2976645 lt!1931678)))

(declare-fun lt!1931682 () Unit!138311)

(assert (=> b!4768740 (= lt!1931682 (lemmaContainsKeyImpliesGetValueByKeyDefined!1998 (toList!6312 (map!12009 thiss!42052)) key!1776))))

(assert (=> b!4768740 (isDefined!9855 (getValueByKey!2200 (toList!6312 (map!12009 thiss!42052)) key!1776))))

(declare-fun lt!1931679 () Unit!138311)

(assert (=> b!4768740 (= lt!1931679 lt!1931682)))

(assert (=> b!4768740 (= lt!1931678 (lemmaInListThenGetKeysListContains!1002 (toList!6312 (map!12009 thiss!42052)) key!1776))))

(assert (=> b!4768740 call!334325))

(declare-fun b!4768741 () Bool)

(declare-fun e!2976648 () List!53635)

(assert (=> b!4768741 (= e!2976648 (getKeysList!1007 (toList!6312 (map!12009 thiss!42052))))))

(declare-fun b!4768742 () Bool)

(assert (=> b!4768742 (= e!2976648 (keys!19401 (map!12009 thiss!42052)))))

(declare-fun b!4768743 () Bool)

(assert (=> b!4768743 (= e!2976649 (not (contains!16872 (keys!19401 (map!12009 thiss!42052)) key!1776)))))

(declare-fun b!4768744 () Bool)

(assert (=> b!4768744 (= e!2976646 e!2976650)))

(declare-fun res!2022570 () Bool)

(assert (=> b!4768744 (=> (not res!2022570) (not e!2976650))))

(assert (=> b!4768744 (= res!2022570 (isDefined!9855 (getValueByKey!2200 (toList!6312 (map!12009 thiss!42052)) key!1776)))))

(declare-fun bm!334320 () Bool)

(assert (=> bm!334320 (= call!334325 (contains!16872 e!2976648 key!1776))))

(declare-fun c!813460 () Bool)

(assert (=> bm!334320 (= c!813460 c!813462)))

(assert (= (and d!1524335 c!813462) b!4768740))

(assert (= (and d!1524335 (not c!813462)) b!4768738))

(assert (= (and b!4768738 c!813461) b!4768737))

(assert (= (and b!4768738 (not c!813461)) b!4768739))

(assert (= (or b!4768740 b!4768738) bm!334320))

(assert (= (and bm!334320 c!813460) b!4768741))

(assert (= (and bm!334320 (not c!813460)) b!4768742))

(assert (= (and d!1524335 res!2022572) b!4768743))

(assert (= (and d!1524335 (not res!2022571)) b!4768744))

(assert (= (and b!4768744 res!2022570) b!4768736))

(declare-fun m!5740382 () Bool)

(assert (=> b!4768740 m!5740382))

(assert (=> b!4768740 m!5739754))

(assert (=> b!4768740 m!5739754))

(declare-fun m!5740384 () Bool)

(assert (=> b!4768740 m!5740384))

(declare-fun m!5740386 () Bool)

(assert (=> b!4768740 m!5740386))

(declare-fun m!5740388 () Bool)

(assert (=> b!4768741 m!5740388))

(assert (=> b!4768736 m!5739774))

(declare-fun m!5740390 () Bool)

(assert (=> b!4768736 m!5740390))

(assert (=> b!4768736 m!5740390))

(declare-fun m!5740392 () Bool)

(assert (=> b!4768736 m!5740392))

(declare-fun m!5740394 () Bool)

(assert (=> bm!334320 m!5740394))

(declare-fun m!5740396 () Bool)

(assert (=> b!4768737 m!5740396))

(declare-fun m!5740398 () Bool)

(assert (=> b!4768737 m!5740398))

(assert (=> b!4768742 m!5739774))

(assert (=> b!4768742 m!5740390))

(assert (=> d!1524335 m!5740396))

(assert (=> b!4768743 m!5739774))

(assert (=> b!4768743 m!5740390))

(assert (=> b!4768743 m!5740390))

(assert (=> b!4768743 m!5740392))

(assert (=> b!4768744 m!5739754))

(assert (=> b!4768744 m!5739754))

(assert (=> b!4768744 m!5740384))

(assert (=> d!1524173 d!1524335))

(assert (=> d!1524173 d!1524135))

(assert (=> d!1524173 d!1524139))

(assert (=> d!1524173 d!1524143))

(declare-fun d!1524337 () Bool)

(declare-fun e!2976652 () Bool)

(assert (=> d!1524337 e!2976652))

(declare-fun res!2022574 () Bool)

(assert (=> d!1524337 (=> res!2022574 e!2976652)))

(declare-fun e!2976655 () Bool)

(assert (=> d!1524337 (= res!2022574 e!2976655)))

(declare-fun res!2022575 () Bool)

(assert (=> d!1524337 (=> (not res!2022575) (not e!2976655))))

(declare-fun lt!1931688 () Bool)

(assert (=> d!1524337 (= res!2022575 (not lt!1931688))))

(declare-fun lt!1931689 () Bool)

(assert (=> d!1524337 (= lt!1931688 lt!1931689)))

(declare-fun lt!1931691 () Unit!138311)

(declare-fun e!2976651 () Unit!138311)

(assert (=> d!1524337 (= lt!1931691 e!2976651)))

(declare-fun c!813465 () Bool)

(assert (=> d!1524337 (= c!813465 lt!1931689)))

(assert (=> d!1524337 (= lt!1931689 (containsKey!3674 (toList!6312 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) key!1776))))

(assert (=> d!1524337 (= (contains!16870 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))) key!1776) lt!1931688)))

(declare-fun b!4768745 () Bool)

(declare-fun e!2976656 () Bool)

(assert (=> b!4768745 (= e!2976656 (contains!16872 (keys!19401 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) key!1776))))

(declare-fun b!4768746 () Bool)

(assert (=> b!4768746 false))

(declare-fun lt!1931692 () Unit!138311)

(declare-fun lt!1931693 () Unit!138311)

(assert (=> b!4768746 (= lt!1931692 lt!1931693)))

(assert (=> b!4768746 (containsKey!3674 (toList!6312 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) key!1776)))

(assert (=> b!4768746 (= lt!1931693 (lemmaInGetKeysListThenContainsKey!1006 (toList!6312 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) key!1776))))

(declare-fun e!2976653 () Unit!138311)

(declare-fun Unit!138342 () Unit!138311)

(assert (=> b!4768746 (= e!2976653 Unit!138342)))

(declare-fun b!4768747 () Bool)

(assert (=> b!4768747 (= e!2976651 e!2976653)))

(declare-fun c!813464 () Bool)

(declare-fun call!334326 () Bool)

(assert (=> b!4768747 (= c!813464 call!334326)))

(declare-fun b!4768748 () Bool)

(declare-fun Unit!138343 () Unit!138311)

(assert (=> b!4768748 (= e!2976653 Unit!138343)))

(declare-fun b!4768749 () Bool)

(declare-fun lt!1931686 () Unit!138311)

(assert (=> b!4768749 (= e!2976651 lt!1931686)))

(declare-fun lt!1931690 () Unit!138311)

(assert (=> b!4768749 (= lt!1931690 (lemmaContainsKeyImpliesGetValueByKeyDefined!1998 (toList!6312 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) key!1776))))

(assert (=> b!4768749 (isDefined!9855 (getValueByKey!2200 (toList!6312 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) key!1776))))

(declare-fun lt!1931687 () Unit!138311)

(assert (=> b!4768749 (= lt!1931687 lt!1931690)))

(assert (=> b!4768749 (= lt!1931686 (lemmaInListThenGetKeysListContains!1002 (toList!6312 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) key!1776))))

(assert (=> b!4768749 call!334326))

(declare-fun b!4768750 () Bool)

(declare-fun e!2976654 () List!53635)

(assert (=> b!4768750 (= e!2976654 (getKeysList!1007 (toList!6312 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))))))))

(declare-fun b!4768751 () Bool)

(assert (=> b!4768751 (= e!2976654 (keys!19401 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))))))

(declare-fun b!4768752 () Bool)

(assert (=> b!4768752 (= e!2976655 (not (contains!16872 (keys!19401 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) key!1776)))))

(declare-fun b!4768753 () Bool)

(assert (=> b!4768753 (= e!2976652 e!2976656)))

(declare-fun res!2022573 () Bool)

(assert (=> b!4768753 (=> (not res!2022573) (not e!2976656))))

(assert (=> b!4768753 (= res!2022573 (isDefined!9855 (getValueByKey!2200 (toList!6312 (extractMap!2155 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) key!1776)))))

(declare-fun bm!334321 () Bool)

(assert (=> bm!334321 (= call!334326 (contains!16872 e!2976654 key!1776))))

(declare-fun c!813463 () Bool)

(assert (=> bm!334321 (= c!813463 c!813465)))

(assert (= (and d!1524337 c!813465) b!4768749))

(assert (= (and d!1524337 (not c!813465)) b!4768747))

(assert (= (and b!4768747 c!813464) b!4768746))

(assert (= (and b!4768747 (not c!813464)) b!4768748))

(assert (= (or b!4768749 b!4768747) bm!334321))

(assert (= (and bm!334321 c!813463) b!4768750))

(assert (= (and bm!334321 (not c!813463)) b!4768751))

(assert (= (and d!1524337 res!2022575) b!4768752))

(assert (= (and d!1524337 (not res!2022574)) b!4768753))

(assert (= (and b!4768753 res!2022573) b!4768745))

(declare-fun m!5740400 () Bool)

(assert (=> b!4768749 m!5740400))

(declare-fun m!5740402 () Bool)

(assert (=> b!4768749 m!5740402))

(assert (=> b!4768749 m!5740402))

(declare-fun m!5740404 () Bool)

(assert (=> b!4768749 m!5740404))

(declare-fun m!5740406 () Bool)

(assert (=> b!4768749 m!5740406))

(declare-fun m!5740408 () Bool)

(assert (=> b!4768750 m!5740408))

(assert (=> b!4768745 m!5739896))

(declare-fun m!5740410 () Bool)

(assert (=> b!4768745 m!5740410))

(assert (=> b!4768745 m!5740410))

(declare-fun m!5740412 () Bool)

(assert (=> b!4768745 m!5740412))

(declare-fun m!5740414 () Bool)

(assert (=> bm!334321 m!5740414))

(declare-fun m!5740416 () Bool)

(assert (=> b!4768746 m!5740416))

(declare-fun m!5740418 () Bool)

(assert (=> b!4768746 m!5740418))

(assert (=> b!4768751 m!5739896))

(assert (=> b!4768751 m!5740410))

(assert (=> d!1524337 m!5740416))

(assert (=> b!4768752 m!5739896))

(assert (=> b!4768752 m!5740410))

(assert (=> b!4768752 m!5740410))

(assert (=> b!4768752 m!5740412))

(assert (=> b!4768753 m!5740402))

(assert (=> b!4768753 m!5740402))

(assert (=> b!4768753 m!5740404))

(assert (=> d!1524173 d!1524337))

(assert (=> d!1524173 d!1524323))

(assert (=> d!1524173 d!1524155))

(declare-fun d!1524339 () Bool)

(declare-fun lt!1931694 () Bool)

(assert (=> d!1524339 (= lt!1931694 (contains!16867 (map!12010 (v!47740 (underlying!10086 thiss!42052))) lt!1931411))))

(assert (=> d!1524339 (= lt!1931694 (contains!16873 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))) lt!1931411))))

(assert (=> d!1524339 (valid!3945 (v!47740 (underlying!10086 thiss!42052)))))

(assert (=> d!1524339 (= (contains!16871 (v!47740 (underlying!10086 thiss!42052)) lt!1931411) lt!1931694)))

(declare-fun bs!1149317 () Bool)

(assert (= bs!1149317 d!1524339))

(assert (=> bs!1149317 m!5739760))

(assert (=> bs!1149317 m!5739760))

(declare-fun m!5740420 () Bool)

(assert (=> bs!1149317 m!5740420))

(declare-fun m!5740422 () Bool)

(assert (=> bs!1149317 m!5740422))

(assert (=> bs!1149317 m!5739914))

(assert (=> d!1524173 d!1524339))

(declare-fun b!4768754 () Bool)

(declare-fun e!2976657 () Option!12705)

(assert (=> b!4768754 (= e!2976657 (Some!12704 (_2!31082 (h!59921 (t!361063 (toList!6312 (map!12009 thiss!42052)))))))))

(declare-fun d!1524341 () Bool)

(declare-fun c!813466 () Bool)

(assert (=> d!1524341 (= c!813466 (and ((_ is Cons!53509) (t!361063 (toList!6312 (map!12009 thiss!42052)))) (= (_1!31082 (h!59921 (t!361063 (toList!6312 (map!12009 thiss!42052))))) key!1776)))))

(assert (=> d!1524341 (= (getValueByKey!2200 (t!361063 (toList!6312 (map!12009 thiss!42052))) key!1776) e!2976657)))

(declare-fun b!4768755 () Bool)

(declare-fun e!2976658 () Option!12705)

(assert (=> b!4768755 (= e!2976657 e!2976658)))

(declare-fun c!813467 () Bool)

(assert (=> b!4768755 (= c!813467 (and ((_ is Cons!53509) (t!361063 (toList!6312 (map!12009 thiss!42052)))) (not (= (_1!31082 (h!59921 (t!361063 (toList!6312 (map!12009 thiss!42052))))) key!1776))))))

(declare-fun b!4768756 () Bool)

(assert (=> b!4768756 (= e!2976658 (getValueByKey!2200 (t!361063 (t!361063 (toList!6312 (map!12009 thiss!42052)))) key!1776))))

(declare-fun b!4768757 () Bool)

(assert (=> b!4768757 (= e!2976658 None!12704)))

(assert (= (and d!1524341 c!813466) b!4768754))

(assert (= (and d!1524341 (not c!813466)) b!4768755))

(assert (= (and b!4768755 c!813467) b!4768756))

(assert (= (and b!4768755 (not c!813467)) b!4768757))

(declare-fun m!5740424 () Bool)

(assert (=> b!4768756 m!5740424))

(assert (=> b!4768391 d!1524341))

(assert (=> b!4768368 d!1524261))

(declare-fun b!4768758 () Bool)

(declare-fun e!2976662 () Option!12704)

(assert (=> b!4768758 (= e!2976662 (getPair!652 (t!361063 call!334294) key!1776))))

(declare-fun b!4768760 () Bool)

(declare-fun e!2976660 () Bool)

(declare-fun lt!1931695 () Option!12704)

(assert (=> b!4768760 (= e!2976660 (contains!16869 call!334294 (get!18065 lt!1931695)))))

(declare-fun b!4768761 () Bool)

(declare-fun e!2976659 () Bool)

(assert (=> b!4768761 (= e!2976659 (not (containsKey!3672 call!334294 key!1776)))))

(declare-fun b!4768762 () Bool)

(declare-fun e!2976663 () Option!12704)

(assert (=> b!4768762 (= e!2976663 (Some!12703 (h!59921 call!334294)))))

(declare-fun b!4768763 () Bool)

(declare-fun res!2022577 () Bool)

(assert (=> b!4768763 (=> (not res!2022577) (not e!2976660))))

(assert (=> b!4768763 (= res!2022577 (= (_1!31082 (get!18065 lt!1931695)) key!1776))))

(declare-fun b!4768764 () Bool)

(declare-fun e!2976661 () Bool)

(assert (=> b!4768764 (= e!2976661 e!2976660)))

(declare-fun res!2022578 () Bool)

(assert (=> b!4768764 (=> (not res!2022578) (not e!2976660))))

(assert (=> b!4768764 (= res!2022578 (isDefined!9857 lt!1931695))))

(declare-fun b!4768765 () Bool)

(assert (=> b!4768765 (= e!2976662 None!12703)))

(declare-fun d!1524343 () Bool)

(assert (=> d!1524343 e!2976661))

(declare-fun res!2022579 () Bool)

(assert (=> d!1524343 (=> res!2022579 e!2976661)))

(assert (=> d!1524343 (= res!2022579 e!2976659)))

(declare-fun res!2022576 () Bool)

(assert (=> d!1524343 (=> (not res!2022576) (not e!2976659))))

(assert (=> d!1524343 (= res!2022576 (isEmpty!29287 lt!1931695))))

(assert (=> d!1524343 (= lt!1931695 e!2976663)))

(declare-fun c!813469 () Bool)

(assert (=> d!1524343 (= c!813469 (and ((_ is Cons!53509) call!334294) (= (_1!31082 (h!59921 call!334294)) key!1776)))))

(assert (=> d!1524343 (noDuplicateKeys!2258 call!334294)))

(assert (=> d!1524343 (= (getPair!652 call!334294 key!1776) lt!1931695)))

(declare-fun b!4768759 () Bool)

(assert (=> b!4768759 (= e!2976663 e!2976662)))

(declare-fun c!813468 () Bool)

(assert (=> b!4768759 (= c!813468 ((_ is Cons!53509) call!334294))))

(assert (= (and d!1524343 c!813469) b!4768762))

(assert (= (and d!1524343 (not c!813469)) b!4768759))

(assert (= (and b!4768759 c!813468) b!4768758))

(assert (= (and b!4768759 (not c!813468)) b!4768765))

(assert (= (and d!1524343 res!2022576) b!4768761))

(assert (= (and d!1524343 (not res!2022579)) b!4768764))

(assert (= (and b!4768764 res!2022578) b!4768763))

(assert (= (and b!4768763 res!2022577) b!4768760))

(declare-fun m!5740426 () Bool)

(assert (=> b!4768761 m!5740426))

(declare-fun m!5740428 () Bool)

(assert (=> b!4768760 m!5740428))

(assert (=> b!4768760 m!5740428))

(declare-fun m!5740430 () Bool)

(assert (=> b!4768760 m!5740430))

(assert (=> b!4768763 m!5740428))

(declare-fun m!5740432 () Bool)

(assert (=> b!4768758 m!5740432))

(declare-fun m!5740434 () Bool)

(assert (=> d!1524343 m!5740434))

(declare-fun m!5740436 () Bool)

(assert (=> d!1524343 m!5740436))

(declare-fun m!5740438 () Bool)

(assert (=> b!4768764 m!5740438))

(assert (=> bm!334291 d!1524343))

(assert (=> b!4768410 d!1524137))

(assert (=> b!4768434 d!1524161))

(declare-fun d!1524345 () Bool)

(assert (=> d!1524345 (dynLambda!21958 lambda!224670 (tuple2!55579 lt!1931411 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411)))))

(declare-fun lt!1931696 () Unit!138311)

(assert (=> d!1524345 (= lt!1931696 (choose!33999 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lambda!224670 (tuple2!55579 lt!1931411 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))))))

(declare-fun e!2976664 () Bool)

(assert (=> d!1524345 e!2976664))

(declare-fun res!2022580 () Bool)

(assert (=> d!1524345 (=> (not res!2022580) (not e!2976664))))

(assert (=> d!1524345 (= res!2022580 (forall!11880 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lambda!224670))))

(assert (=> d!1524345 (= (forallContained!3869 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) lambda!224670 (tuple2!55579 lt!1931411 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))) lt!1931696)))

(declare-fun b!4768766 () Bool)

(assert (=> b!4768766 (= e!2976664 (contains!16866 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) (tuple2!55579 lt!1931411 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))))))

(assert (= (and d!1524345 res!2022580) b!4768766))

(declare-fun b_lambda!184487 () Bool)

(assert (=> (not b_lambda!184487) (not d!1524345)))

(declare-fun m!5740440 () Bool)

(assert (=> d!1524345 m!5740440))

(declare-fun m!5740442 () Bool)

(assert (=> d!1524345 m!5740442))

(declare-fun m!5740444 () Bool)

(assert (=> d!1524345 m!5740444))

(assert (=> b!4768766 m!5739998))

(assert (=> b!4768475 d!1524345))

(assert (=> b!4768475 d!1524135))

(assert (=> b!4768475 d!1524225))

(declare-fun d!1524347 () Bool)

(declare-fun lt!1931697 () Bool)

(assert (=> d!1524347 (= lt!1931697 (select (content!9591 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))) (tuple2!55579 lt!1931411 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))))))

(declare-fun e!2976666 () Bool)

(assert (=> d!1524347 (= lt!1931697 e!2976666)))

(declare-fun res!2022581 () Bool)

(assert (=> d!1524347 (=> (not res!2022581) (not e!2976666))))

(assert (=> d!1524347 (= res!2022581 ((_ is Cons!53510) (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))))))

(assert (=> d!1524347 (= (contains!16866 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))) (tuple2!55579 lt!1931411 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))) lt!1931697)))

(declare-fun b!4768767 () Bool)

(declare-fun e!2976665 () Bool)

(assert (=> b!4768767 (= e!2976666 e!2976665)))

(declare-fun res!2022582 () Bool)

(assert (=> b!4768767 (=> res!2022582 e!2976665)))

(assert (=> b!4768767 (= res!2022582 (= (h!59922 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))) (tuple2!55579 lt!1931411 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))))))

(declare-fun b!4768768 () Bool)

(assert (=> b!4768768 (= e!2976665 (contains!16866 (t!361064 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))) (tuple2!55579 lt!1931411 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))))))

(assert (= (and d!1524347 res!2022581) b!4768767))

(assert (= (and b!4768767 (not res!2022582)) b!4768768))

(declare-fun m!5740446 () Bool)

(assert (=> d!1524347 m!5740446))

(declare-fun m!5740448 () Bool)

(assert (=> d!1524347 m!5740448))

(declare-fun m!5740450 () Bool)

(assert (=> b!4768768 m!5740450))

(assert (=> b!4768475 d!1524347))

(declare-fun d!1524349 () Bool)

(assert (=> d!1524349 (= (invariantList!1664 (toList!6312 lt!1931369)) (noDuplicatedKeys!407 (toList!6312 lt!1931369)))))

(declare-fun bs!1149318 () Bool)

(assert (= bs!1149318 d!1524349))

(declare-fun m!5740452 () Bool)

(assert (=> bs!1149318 m!5740452))

(assert (=> d!1524171 d!1524349))

(declare-fun d!1524351 () Bool)

(declare-fun res!2022583 () Bool)

(declare-fun e!2976667 () Bool)

(assert (=> d!1524351 (=> res!2022583 e!2976667)))

(assert (=> d!1524351 (= res!2022583 ((_ is Nil!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524351 (= (forall!11880 (toList!6311 lt!1931247) lambda!224667) e!2976667)))

(declare-fun b!4768769 () Bool)

(declare-fun e!2976668 () Bool)

(assert (=> b!4768769 (= e!2976667 e!2976668)))

(declare-fun res!2022584 () Bool)

(assert (=> b!4768769 (=> (not res!2022584) (not e!2976668))))

(assert (=> b!4768769 (= res!2022584 (dynLambda!21958 lambda!224667 (h!59922 (toList!6311 lt!1931247))))))

(declare-fun b!4768770 () Bool)

(assert (=> b!4768770 (= e!2976668 (forall!11880 (t!361064 (toList!6311 lt!1931247)) lambda!224667))))

(assert (= (and d!1524351 (not res!2022583)) b!4768769))

(assert (= (and b!4768769 res!2022584) b!4768770))

(declare-fun b_lambda!184489 () Bool)

(assert (=> (not b_lambda!184489) (not b!4768769)))

(declare-fun m!5740454 () Bool)

(assert (=> b!4768769 m!5740454))

(declare-fun m!5740456 () Bool)

(assert (=> b!4768770 m!5740456))

(assert (=> d!1524171 d!1524351))

(declare-fun d!1524353 () Bool)

(assert (=> d!1524353 (= (get!18067 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249)) (v!47743 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249)))))

(assert (=> d!1524131 d!1524353))

(assert (=> d!1524131 d!1524161))

(assert (=> b!4768350 d!1524261))

(declare-fun b!4768774 () Bool)

(declare-fun e!2976670 () Option!12706)

(assert (=> b!4768774 (= e!2976670 None!12705)))

(declare-fun b!4768772 () Bool)

(declare-fun e!2976669 () Option!12706)

(assert (=> b!4768772 (= e!2976669 e!2976670)))

(declare-fun c!813471 () Bool)

(assert (=> b!4768772 (= c!813471 (and ((_ is Cons!53510) (toList!6311 lt!1931247)) (not (= (_1!31083 (h!59922 (toList!6311 lt!1931247))) lt!1931338))))))

(declare-fun d!1524355 () Bool)

(declare-fun c!813470 () Bool)

(assert (=> d!1524355 (= c!813470 (and ((_ is Cons!53510) (toList!6311 lt!1931247)) (= (_1!31083 (h!59922 (toList!6311 lt!1931247))) lt!1931338)))))

(assert (=> d!1524355 (= (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931338) e!2976669)))

(declare-fun b!4768773 () Bool)

(assert (=> b!4768773 (= e!2976670 (getValueByKey!2201 (t!361064 (toList!6311 lt!1931247)) lt!1931338))))

(declare-fun b!4768771 () Bool)

(assert (=> b!4768771 (= e!2976669 (Some!12705 (_2!31083 (h!59922 (toList!6311 lt!1931247)))))))

(assert (= (and d!1524355 c!813470) b!4768771))

(assert (= (and d!1524355 (not c!813470)) b!4768772))

(assert (= (and b!4768772 c!813471) b!4768773))

(assert (= (and b!4768772 (not c!813471)) b!4768774))

(declare-fun m!5740458 () Bool)

(assert (=> b!4768773 m!5740458))

(assert (=> b!4768371 d!1524355))

(declare-fun d!1524357 () Bool)

(declare-fun c!813474 () Bool)

(assert (=> d!1524357 (= c!813474 ((_ is Nil!53510) (toList!6311 lt!1931247)))))

(declare-fun e!2976673 () (InoxSet tuple2!55578))

(assert (=> d!1524357 (= (content!9591 (toList!6311 lt!1931247)) e!2976673)))

(declare-fun b!4768779 () Bool)

(assert (=> b!4768779 (= e!2976673 ((as const (Array tuple2!55578 Bool)) false))))

(declare-fun b!4768780 () Bool)

(assert (=> b!4768780 (= e!2976673 ((_ map or) (store ((as const (Array tuple2!55578 Bool)) false) (h!59922 (toList!6311 lt!1931247)) true) (content!9591 (t!361064 (toList!6311 lt!1931247)))))))

(assert (= (and d!1524357 c!813474) b!4768779))

(assert (= (and d!1524357 (not c!813474)) b!4768780))

(declare-fun m!5740460 () Bool)

(assert (=> b!4768780 m!5740460))

(assert (=> b!4768780 m!5740014))

(assert (=> d!1524147 d!1524357))

(declare-fun b!4768784 () Bool)

(declare-fun e!2976675 () Option!12706)

(assert (=> b!4768784 (= e!2976675 None!12705)))

(declare-fun b!4768782 () Bool)

(declare-fun e!2976674 () Option!12706)

(assert (=> b!4768782 (= e!2976674 e!2976675)))

(declare-fun c!813476 () Bool)

(assert (=> b!4768782 (= c!813476 (and ((_ is Cons!53510) (toList!6311 lt!1931247)) (not (= (_1!31083 (h!59922 (toList!6311 lt!1931247))) lt!1931302))))))

(declare-fun d!1524359 () Bool)

(declare-fun c!813475 () Bool)

(assert (=> d!1524359 (= c!813475 (and ((_ is Cons!53510) (toList!6311 lt!1931247)) (= (_1!31083 (h!59922 (toList!6311 lt!1931247))) lt!1931302)))))

(assert (=> d!1524359 (= (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931302) e!2976674)))

(declare-fun b!4768783 () Bool)

(assert (=> b!4768783 (= e!2976675 (getValueByKey!2201 (t!361064 (toList!6311 lt!1931247)) lt!1931302))))

(declare-fun b!4768781 () Bool)

(assert (=> b!4768781 (= e!2976674 (Some!12705 (_2!31083 (h!59922 (toList!6311 lt!1931247)))))))

(assert (= (and d!1524359 c!813475) b!4768781))

(assert (= (and d!1524359 (not c!813475)) b!4768782))

(assert (= (and b!4768782 c!813476) b!4768783))

(assert (= (and b!4768782 (not c!813476)) b!4768784))

(declare-fun m!5740462 () Bool)

(assert (=> b!4768783 m!5740462))

(assert (=> b!4768352 d!1524359))

(assert (=> d!1524137 d!1524357))

(assert (=> d!1524141 d!1524245))

(assert (=> d!1524141 d!1524143))

(declare-fun d!1524361 () Bool)

(assert (=> d!1524361 (contains!16867 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))

(assert (=> d!1524361 true))

(declare-fun _$27!1563 () Unit!138311)

(assert (=> d!1524361 (= (choose!34000 lt!1931247 key!1776 (hashF!12473 thiss!42052)) _$27!1563)))

(declare-fun bs!1149319 () Bool)

(assert (= bs!1149319 d!1524361))

(assert (=> bs!1149319 m!5739776))

(assert (=> bs!1149319 m!5739776))

(assert (=> bs!1149319 m!5739812))

(assert (=> d!1524141 d!1524361))

(declare-fun d!1524363 () Bool)

(declare-fun res!2022585 () Bool)

(declare-fun e!2976676 () Bool)

(assert (=> d!1524363 (=> res!2022585 e!2976676)))

(assert (=> d!1524363 (= res!2022585 ((_ is Nil!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524363 (= (forall!11880 (toList!6311 lt!1931247) lambda!224661) e!2976676)))

(declare-fun b!4768785 () Bool)

(declare-fun e!2976677 () Bool)

(assert (=> b!4768785 (= e!2976676 e!2976677)))

(declare-fun res!2022586 () Bool)

(assert (=> b!4768785 (=> (not res!2022586) (not e!2976677))))

(assert (=> b!4768785 (= res!2022586 (dynLambda!21958 lambda!224661 (h!59922 (toList!6311 lt!1931247))))))

(declare-fun b!4768786 () Bool)

(assert (=> b!4768786 (= e!2976677 (forall!11880 (t!361064 (toList!6311 lt!1931247)) lambda!224661))))

(assert (= (and d!1524363 (not res!2022585)) b!4768785))

(assert (= (and b!4768785 res!2022586) b!4768786))

(declare-fun b_lambda!184491 () Bool)

(assert (=> (not b_lambda!184491) (not b!4768785)))

(declare-fun m!5740464 () Bool)

(assert (=> b!4768785 m!5740464))

(declare-fun m!5740466 () Bool)

(assert (=> b!4768786 m!5740466))

(assert (=> d!1524141 d!1524363))

(assert (=> d!1524157 d!1524159))

(assert (=> d!1524157 d!1524161))

(declare-fun d!1524365 () Bool)

(assert (=> d!1524365 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931249))))

(assert (=> d!1524365 true))

(declare-fun _$13!1621 () Unit!138311)

(assert (=> d!1524365 (= (choose!34001 (toList!6311 lt!1931247) lt!1931249) _$13!1621)))

(declare-fun bs!1149320 () Bool)

(assert (= bs!1149320 d!1524365))

(assert (=> bs!1149320 m!5739736))

(assert (=> bs!1149320 m!5739736))

(assert (=> bs!1149320 m!5739738))

(assert (=> d!1524157 d!1524365))

(assert (=> d!1524157 d!1524267))

(declare-fun b!4768790 () Bool)

(declare-fun e!2976679 () Option!12706)

(assert (=> b!4768790 (= e!2976679 None!12705)))

(declare-fun b!4768788 () Bool)

(declare-fun e!2976678 () Option!12706)

(assert (=> b!4768788 (= e!2976678 e!2976679)))

(declare-fun c!813478 () Bool)

(assert (=> b!4768788 (= c!813478 (and ((_ is Cons!53510) (toList!6311 lt!1931247)) (not (= (_1!31083 (h!59922 (toList!6311 lt!1931247))) lt!1931303))))))

(declare-fun d!1524367 () Bool)

(declare-fun c!813477 () Bool)

(assert (=> d!1524367 (= c!813477 (and ((_ is Cons!53510) (toList!6311 lt!1931247)) (= (_1!31083 (h!59922 (toList!6311 lt!1931247))) lt!1931303)))))

(assert (=> d!1524367 (= (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931303) e!2976678)))

(declare-fun b!4768789 () Bool)

(assert (=> b!4768789 (= e!2976679 (getValueByKey!2201 (t!361064 (toList!6311 lt!1931247)) lt!1931303))))

(declare-fun b!4768787 () Bool)

(assert (=> b!4768787 (= e!2976678 (Some!12705 (_2!31083 (h!59922 (toList!6311 lt!1931247)))))))

(assert (= (and d!1524367 c!813477) b!4768787))

(assert (= (and d!1524367 (not c!813477)) b!4768788))

(assert (= (and b!4768788 c!813478) b!4768789))

(assert (= (and b!4768788 (not c!813478)) b!4768790))

(declare-fun m!5740468 () Bool)

(assert (=> b!4768789 m!5740468))

(assert (=> b!4768354 d!1524367))

(declare-fun d!1524369 () Bool)

(declare-fun lt!1931698 () Bool)

(assert (=> d!1524369 (= lt!1931698 (select (content!9591 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931302 lt!1931299)))))

(declare-fun e!2976681 () Bool)

(assert (=> d!1524369 (= lt!1931698 e!2976681)))

(declare-fun res!2022587 () Bool)

(assert (=> d!1524369 (=> (not res!2022587) (not e!2976681))))

(assert (=> d!1524369 (= res!2022587 ((_ is Cons!53510) (toList!6311 lt!1931247)))))

(assert (=> d!1524369 (= (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931302 lt!1931299)) lt!1931698)))

(declare-fun b!4768791 () Bool)

(declare-fun e!2976680 () Bool)

(assert (=> b!4768791 (= e!2976681 e!2976680)))

(declare-fun res!2022588 () Bool)

(assert (=> b!4768791 (=> res!2022588 e!2976680)))

(assert (=> b!4768791 (= res!2022588 (= (h!59922 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931302 lt!1931299)))))

(declare-fun b!4768792 () Bool)

(assert (=> b!4768792 (= e!2976680 (contains!16866 (t!361064 (toList!6311 lt!1931247)) (tuple2!55579 lt!1931302 lt!1931299)))))

(assert (= (and d!1524369 res!2022587) b!4768791))

(assert (= (and b!4768791 (not res!2022588)) b!4768792))

(assert (=> d!1524369 m!5739888))

(declare-fun m!5740470 () Bool)

(assert (=> d!1524369 m!5740470))

(declare-fun m!5740472 () Bool)

(assert (=> b!4768792 m!5740472))

(assert (=> b!4768356 d!1524369))

(assert (=> b!4768356 d!1524287))

(assert (=> b!4768356 d!1524243))

(declare-fun d!1524371 () Bool)

(assert (=> d!1524371 (contains!16866 (toList!6311 lt!1931247) (tuple2!55579 lt!1931302 lt!1931299))))

(declare-fun lt!1931699 () Unit!138311)

(assert (=> d!1524371 (= lt!1931699 (choose!33998 lt!1931247 lt!1931302 lt!1931299))))

(assert (=> d!1524371 (contains!16867 lt!1931247 lt!1931302)))

(assert (=> d!1524371 (= (lemmaGetValueImpliesTupleContained!444 lt!1931247 lt!1931302 lt!1931299) lt!1931699)))

(declare-fun bs!1149321 () Bool)

(assert (= bs!1149321 d!1524371))

(assert (=> bs!1149321 m!5739838))

(declare-fun m!5740474 () Bool)

(assert (=> bs!1149321 m!5740474))

(assert (=> bs!1149321 m!5739840))

(assert (=> b!4768356 d!1524371))

(assert (=> b!4768356 d!1524249))

(assert (=> b!4768356 d!1524255))

(assert (=> b!4768356 d!1524245))

(declare-fun d!1524373 () Bool)

(declare-fun e!2976682 () Bool)

(assert (=> d!1524373 e!2976682))

(declare-fun res!2022589 () Bool)

(assert (=> d!1524373 (=> res!2022589 e!2976682)))

(declare-fun lt!1931700 () Bool)

(assert (=> d!1524373 (= res!2022589 (not lt!1931700))))

(declare-fun lt!1931703 () Bool)

(assert (=> d!1524373 (= lt!1931700 lt!1931703)))

(declare-fun lt!1931701 () Unit!138311)

(declare-fun e!2976683 () Unit!138311)

(assert (=> d!1524373 (= lt!1931701 e!2976683)))

(declare-fun c!813479 () Bool)

(assert (=> d!1524373 (= c!813479 lt!1931703)))

(assert (=> d!1524373 (= lt!1931703 (containsKey!3673 (toList!6311 lt!1931247) lt!1931302))))

(assert (=> d!1524373 (= (contains!16867 lt!1931247 lt!1931302) lt!1931700)))

(declare-fun b!4768793 () Bool)

(declare-fun lt!1931702 () Unit!138311)

(assert (=> b!4768793 (= e!2976683 lt!1931702)))

(assert (=> b!4768793 (= lt!1931702 (lemmaContainsKeyImpliesGetValueByKeyDefined!1997 (toList!6311 lt!1931247) lt!1931302))))

(assert (=> b!4768793 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931302))))

(declare-fun b!4768794 () Bool)

(declare-fun Unit!138344 () Unit!138311)

(assert (=> b!4768794 (= e!2976683 Unit!138344)))

(declare-fun b!4768795 () Bool)

(assert (=> b!4768795 (= e!2976682 (isDefined!9856 (getValueByKey!2201 (toList!6311 lt!1931247) lt!1931302)))))

(assert (= (and d!1524373 c!813479) b!4768793))

(assert (= (and d!1524373 (not c!813479)) b!4768794))

(assert (= (and d!1524373 (not res!2022589)) b!4768795))

(declare-fun m!5740476 () Bool)

(assert (=> d!1524373 m!5740476))

(declare-fun m!5740478 () Bool)

(assert (=> b!4768793 m!5740478))

(assert (=> b!4768793 m!5739830))

(assert (=> b!4768793 m!5739830))

(declare-fun m!5740480 () Bool)

(assert (=> b!4768793 m!5740480))

(assert (=> b!4768795 m!5739830))

(assert (=> b!4768795 m!5739830))

(assert (=> b!4768795 m!5740480))

(assert (=> b!4768356 d!1524373))

(assert (=> b!4768356 d!1524141))

(assert (=> b!4768356 d!1524143))

(declare-fun d!1524375 () Bool)

(declare-fun res!2022590 () Bool)

(declare-fun e!2976684 () Bool)

(assert (=> d!1524375 (=> res!2022590 e!2976684)))

(assert (=> d!1524375 (= res!2022590 (not ((_ is Cons!53509) (_2!31083 lt!1931245))))))

(assert (=> d!1524375 (= (noDuplicateKeys!2258 (_2!31083 lt!1931245)) e!2976684)))

(declare-fun b!4768796 () Bool)

(declare-fun e!2976685 () Bool)

(assert (=> b!4768796 (= e!2976684 e!2976685)))

(declare-fun res!2022591 () Bool)

(assert (=> b!4768796 (=> (not res!2022591) (not e!2976685))))

(assert (=> b!4768796 (= res!2022591 (not (containsKey!3672 (t!361063 (_2!31083 lt!1931245)) (_1!31082 (h!59921 (_2!31083 lt!1931245))))))))

(declare-fun b!4768797 () Bool)

(assert (=> b!4768797 (= e!2976685 (noDuplicateKeys!2258 (t!361063 (_2!31083 lt!1931245))))))

(assert (= (and d!1524375 (not res!2022590)) b!4768796))

(assert (= (and b!4768796 res!2022591) b!4768797))

(declare-fun m!5740482 () Bool)

(assert (=> b!4768796 m!5740482))

(declare-fun m!5740484 () Bool)

(assert (=> b!4768797 m!5740484))

(assert (=> bs!1149190 d!1524375))

(declare-fun d!1524377 () Bool)

(declare-fun lt!1931704 () Bool)

(assert (=> d!1524377 (= lt!1931704 (select (content!9591 (t!361064 (toList!6311 lt!1931247))) lt!1931240))))

(declare-fun e!2976687 () Bool)

(assert (=> d!1524377 (= lt!1931704 e!2976687)))

(declare-fun res!2022592 () Bool)

(assert (=> d!1524377 (=> (not res!2022592) (not e!2976687))))

(assert (=> d!1524377 (= res!2022592 ((_ is Cons!53510) (t!361064 (toList!6311 lt!1931247))))))

(assert (=> d!1524377 (= (contains!16866 (t!361064 (toList!6311 lt!1931247)) lt!1931240) lt!1931704)))

(declare-fun b!4768798 () Bool)

(declare-fun e!2976686 () Bool)

(assert (=> b!4768798 (= e!2976687 e!2976686)))

(declare-fun res!2022593 () Bool)

(assert (=> b!4768798 (=> res!2022593 e!2976686)))

(assert (=> b!4768798 (= res!2022593 (= (h!59922 (t!361064 (toList!6311 lt!1931247))) lt!1931240))))

(declare-fun b!4768799 () Bool)

(assert (=> b!4768799 (= e!2976686 (contains!16866 (t!361064 (t!361064 (toList!6311 lt!1931247))) lt!1931240))))

(assert (= (and d!1524377 res!2022592) b!4768798))

(assert (= (and b!4768798 (not res!2022593)) b!4768799))

(assert (=> d!1524377 m!5740014))

(declare-fun m!5740486 () Bool)

(assert (=> d!1524377 m!5740486))

(declare-fun m!5740488 () Bool)

(assert (=> b!4768799 m!5740488))

(assert (=> b!4768401 d!1524377))

(declare-fun b!4768800 () Bool)

(declare-fun e!2976691 () Option!12704)

(assert (=> b!4768800 (= e!2976691 (getPair!652 (t!361063 (t!361063 lt!1931230)) key!1776))))

(declare-fun b!4768802 () Bool)

(declare-fun e!2976689 () Bool)

(declare-fun lt!1931705 () Option!12704)

(assert (=> b!4768802 (= e!2976689 (contains!16869 (t!361063 lt!1931230) (get!18065 lt!1931705)))))

(declare-fun b!4768803 () Bool)

(declare-fun e!2976688 () Bool)

(assert (=> b!4768803 (= e!2976688 (not (containsKey!3672 (t!361063 lt!1931230) key!1776)))))

(declare-fun b!4768804 () Bool)

(declare-fun e!2976692 () Option!12704)

(assert (=> b!4768804 (= e!2976692 (Some!12703 (h!59921 (t!361063 lt!1931230))))))

(declare-fun b!4768805 () Bool)

(declare-fun res!2022595 () Bool)

(assert (=> b!4768805 (=> (not res!2022595) (not e!2976689))))

(assert (=> b!4768805 (= res!2022595 (= (_1!31082 (get!18065 lt!1931705)) key!1776))))

(declare-fun b!4768806 () Bool)

(declare-fun e!2976690 () Bool)

(assert (=> b!4768806 (= e!2976690 e!2976689)))

(declare-fun res!2022596 () Bool)

(assert (=> b!4768806 (=> (not res!2022596) (not e!2976689))))

(assert (=> b!4768806 (= res!2022596 (isDefined!9857 lt!1931705))))

(declare-fun b!4768807 () Bool)

(assert (=> b!4768807 (= e!2976691 None!12703)))

(declare-fun d!1524379 () Bool)

(assert (=> d!1524379 e!2976690))

(declare-fun res!2022597 () Bool)

(assert (=> d!1524379 (=> res!2022597 e!2976690)))

(assert (=> d!1524379 (= res!2022597 e!2976688)))

(declare-fun res!2022594 () Bool)

(assert (=> d!1524379 (=> (not res!2022594) (not e!2976688))))

(assert (=> d!1524379 (= res!2022594 (isEmpty!29287 lt!1931705))))

(assert (=> d!1524379 (= lt!1931705 e!2976692)))

(declare-fun c!813481 () Bool)

(assert (=> d!1524379 (= c!813481 (and ((_ is Cons!53509) (t!361063 lt!1931230)) (= (_1!31082 (h!59921 (t!361063 lt!1931230))) key!1776)))))

(assert (=> d!1524379 (noDuplicateKeys!2258 (t!361063 lt!1931230))))

(assert (=> d!1524379 (= (getPair!652 (t!361063 lt!1931230) key!1776) lt!1931705)))

(declare-fun b!4768801 () Bool)

(assert (=> b!4768801 (= e!2976692 e!2976691)))

(declare-fun c!813480 () Bool)

(assert (=> b!4768801 (= c!813480 ((_ is Cons!53509) (t!361063 lt!1931230)))))

(assert (= (and d!1524379 c!813481) b!4768804))

(assert (= (and d!1524379 (not c!813481)) b!4768801))

(assert (= (and b!4768801 c!813480) b!4768800))

(assert (= (and b!4768801 (not c!813480)) b!4768807))

(assert (= (and d!1524379 res!2022594) b!4768803))

(assert (= (and d!1524379 (not res!2022597)) b!4768806))

(assert (= (and b!4768806 res!2022596) b!4768805))

(assert (= (and b!4768805 res!2022595) b!4768802))

(assert (=> b!4768803 m!5740020))

(declare-fun m!5740490 () Bool)

(assert (=> b!4768802 m!5740490))

(assert (=> b!4768802 m!5740490))

(declare-fun m!5740492 () Bool)

(assert (=> b!4768802 m!5740492))

(assert (=> b!4768805 m!5740490))

(declare-fun m!5740494 () Bool)

(assert (=> b!4768800 m!5740494))

(declare-fun m!5740496 () Bool)

(assert (=> d!1524379 m!5740496))

(assert (=> d!1524379 m!5740380))

(declare-fun m!5740498 () Bool)

(assert (=> b!4768806 m!5740498))

(assert (=> b!4768313 d!1524379))

(declare-fun d!1524381 () Bool)

(declare-fun res!2022598 () Bool)

(declare-fun e!2976693 () Bool)

(assert (=> d!1524381 (=> res!2022598 e!2976693)))

(assert (=> d!1524381 (= res!2022598 (and ((_ is Cons!53509) lt!1931237) (= (_1!31082 (h!59921 lt!1931237)) key!1776)))))

(assert (=> d!1524381 (= (containsKey!3672 lt!1931237 key!1776) e!2976693)))

(declare-fun b!4768808 () Bool)

(declare-fun e!2976694 () Bool)

(assert (=> b!4768808 (= e!2976693 e!2976694)))

(declare-fun res!2022599 () Bool)

(assert (=> b!4768808 (=> (not res!2022599) (not e!2976694))))

(assert (=> b!4768808 (= res!2022599 ((_ is Cons!53509) lt!1931237))))

(declare-fun b!4768809 () Bool)

(assert (=> b!4768809 (= e!2976694 (containsKey!3672 (t!361063 lt!1931237) key!1776))))

(assert (= (and d!1524381 (not res!2022598)) b!4768808))

(assert (= (and b!4768808 res!2022599) b!4768809))

(assert (=> b!4768809 m!5740254))

(assert (=> b!4768376 d!1524381))

(declare-fun d!1524383 () Bool)

(declare-fun choose!34006 (Hashable!6600 K!14989) (_ BitVec 64))

(assert (=> d!1524383 (= (hash!4581 (hashF!12473 thiss!42052) key!1776) (choose!34006 (hashF!12473 thiss!42052) key!1776))))

(declare-fun bs!1149322 () Bool)

(assert (= bs!1149322 d!1524383))

(declare-fun m!5740500 () Bool)

(assert (=> bs!1149322 m!5740500))

(assert (=> d!1524143 d!1524383))

(assert (=> b!4768358 d!1524229))

(assert (=> b!4768358 d!1524171))

(declare-fun e!2976695 () Bool)

(declare-fun tp!1355852 () Bool)

(declare-fun b!4768810 () Bool)

(assert (=> b!4768810 (= e!2976695 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355852))))

(assert (=> b!4768492 (= tp!1355850 e!2976695)))

(assert (= (and b!4768492 ((_ is Cons!53509) (t!361063 (zeroValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))))) b!4768810))

(declare-fun tp!1355853 () Bool)

(declare-fun b!4768811 () Bool)

(declare-fun e!2976696 () Bool)

(assert (=> b!4768811 (= e!2976696 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355853))))

(assert (=> b!4768491 (= tp!1355849 e!2976696)))

(assert (= (and b!4768491 ((_ is Cons!53509) (t!361063 mapDefault!21909))) b!4768811))

(declare-fun condMapEmpty!21913 () Bool)

(declare-fun mapDefault!21913 () List!53633)

(assert (=> mapNonEmpty!21912 (= condMapEmpty!21913 (= mapRest!21912 ((as const (Array (_ BitVec 32) List!53633)) mapDefault!21913)))))

(declare-fun e!2976697 () Bool)

(declare-fun mapRes!21913 () Bool)

(assert (=> mapNonEmpty!21912 (= tp!1355843 (and e!2976697 mapRes!21913))))

(declare-fun mapNonEmpty!21913 () Bool)

(declare-fun tp!1355854 () Bool)

(declare-fun e!2976698 () Bool)

(assert (=> mapNonEmpty!21913 (= mapRes!21913 (and tp!1355854 e!2976698))))

(declare-fun mapKey!21913 () (_ BitVec 32))

(declare-fun mapRest!21913 () (Array (_ BitVec 32) List!53633))

(declare-fun mapValue!21913 () List!53633)

(assert (=> mapNonEmpty!21913 (= mapRest!21912 (store mapRest!21913 mapKey!21913 mapValue!21913))))

(declare-fun mapIsEmpty!21913 () Bool)

(assert (=> mapIsEmpty!21913 mapRes!21913))

(declare-fun tp!1355856 () Bool)

(declare-fun b!4768813 () Bool)

(assert (=> b!4768813 (= e!2976697 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355856))))

(declare-fun tp!1355855 () Bool)

(declare-fun b!4768812 () Bool)

(assert (=> b!4768812 (= e!2976698 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355855))))

(assert (= (and mapNonEmpty!21912 condMapEmpty!21913) mapIsEmpty!21913))

(assert (= (and mapNonEmpty!21912 (not condMapEmpty!21913)) mapNonEmpty!21913))

(assert (= (and mapNonEmpty!21913 ((_ is Cons!53509) mapValue!21913)) b!4768812))

(assert (= (and mapNonEmpty!21912 ((_ is Cons!53509) mapDefault!21913)) b!4768813))

(declare-fun m!5740502 () Bool)

(assert (=> mapNonEmpty!21913 m!5740502))

(declare-fun b!4768814 () Bool)

(declare-fun tp!1355857 () Bool)

(declare-fun e!2976699 () Bool)

(assert (=> b!4768814 (= e!2976699 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355857))))

(assert (=> b!4768485 (= tp!1355845 e!2976699)))

(assert (= (and b!4768485 ((_ is Cons!53509) (t!361063 mapDefault!21912))) b!4768814))

(declare-fun tp!1355858 () Bool)

(declare-fun b!4768815 () Bool)

(declare-fun e!2976700 () Bool)

(assert (=> b!4768815 (= e!2976700 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355858))))

(assert (=> b!4768484 (= tp!1355844 e!2976700)))

(assert (= (and b!4768484 ((_ is Cons!53509) (t!361063 mapValue!21912))) b!4768815))

(declare-fun tp!1355859 () Bool)

(declare-fun b!4768816 () Bool)

(declare-fun e!2976701 () Bool)

(assert (=> b!4768816 (= e!2976701 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355859))))

(assert (=> b!4768493 (= tp!1355851 e!2976701)))

(assert (= (and b!4768493 ((_ is Cons!53509) (t!361063 (minValue!5227 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052)))))))) b!4768816))

(declare-fun tp!1355860 () Bool)

(declare-fun b!4768817 () Bool)

(declare-fun e!2976702 () Bool)

(assert (=> b!4768817 (= e!2976702 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355860))))

(assert (=> b!4768490 (= tp!1355848 e!2976702)))

(assert (= (and b!4768490 ((_ is Cons!53509) (t!361063 mapValue!21909))) b!4768817))

(declare-fun tp!1355861 () Bool)

(declare-fun b!4768818 () Bool)

(declare-fun e!2976703 () Bool)

(assert (=> b!4768818 (= e!2976703 (and tp_is_empty!32479 tp_is_empty!32481 tp!1355861))))

(assert (=> tb!257483 (= result!319134 e!2976703)))

(assert (= (and tb!257483 ((_ is Cons!53509) (dynLambda!21959 (defaultEntry!5357 (v!47739 (underlying!10085 (v!47740 (underlying!10086 thiss!42052))))) lt!1931249))) b!4768818))

(declare-fun b_lambda!184493 () Bool)

(assert (= b_lambda!184475 (or (and b!4768289 b_free!129699) b_lambda!184493)))

(declare-fun b_lambda!184495 () Bool)

(assert (= b_lambda!184485 (or b!4768288 b_lambda!184495)))

(assert (=> d!1524325 d!1524181))

(declare-fun b_lambda!184497 () Bool)

(assert (= b_lambda!184465 (or b!4768288 b_lambda!184497)))

(declare-fun bs!1149323 () Bool)

(declare-fun d!1524385 () Bool)

(assert (= bs!1149323 (and d!1524385 b!4768288)))

(assert (=> bs!1149323 (= (dynLambda!21958 lambda!224638 (h!59922 (toList!6311 lt!1931247))) (noDuplicateKeys!2258 (_2!31083 (h!59922 (toList!6311 lt!1931247)))))))

(assert (=> bs!1149323 m!5740164))

(assert (=> b!4768504 d!1524385))

(declare-fun b_lambda!184499 () Bool)

(assert (= b_lambda!184479 (or d!1524121 b_lambda!184499)))

(declare-fun bs!1149324 () Bool)

(declare-fun d!1524387 () Bool)

(assert (= bs!1149324 (and d!1524387 d!1524121)))

(assert (=> bs!1149324 (= (dynLambda!21958 lambda!224658 (h!59922 (toList!6311 lt!1931247))) (noDuplicateKeys!2258 (_2!31083 (h!59922 (toList!6311 lt!1931247)))))))

(assert (=> bs!1149324 m!5740164))

(assert (=> b!4768690 d!1524387))

(declare-fun b_lambda!184501 () Bool)

(assert (= b_lambda!184491 (or d!1524141 b_lambda!184501)))

(declare-fun bs!1149325 () Bool)

(declare-fun d!1524389 () Bool)

(assert (= bs!1149325 (and d!1524389 d!1524141)))

(assert (=> bs!1149325 (= (dynLambda!21958 lambda!224661 (h!59922 (toList!6311 lt!1931247))) (noDuplicateKeys!2258 (_2!31083 (h!59922 (toList!6311 lt!1931247)))))))

(assert (=> bs!1149325 m!5740164))

(assert (=> b!4768785 d!1524389))

(declare-fun b_lambda!184503 () Bool)

(assert (= b_lambda!184463 (or b!4768288 b_lambda!184503)))

(assert (=> d!1524187 d!1524179))

(declare-fun b_lambda!184505 () Bool)

(assert (= b_lambda!184477 (or d!1524121 b_lambda!184505)))

(declare-fun bs!1149326 () Bool)

(declare-fun d!1524391 () Bool)

(assert (= bs!1149326 (and d!1524391 d!1524121)))

(assert (=> bs!1149326 (= (dynLambda!21958 lambda!224658 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))) (noDuplicateKeys!2258 (_2!31083 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))))))

(declare-fun m!5740504 () Bool)

(assert (=> bs!1149326 m!5740504))

(assert (=> d!1524247 d!1524391))

(declare-fun b_lambda!184507 () Bool)

(assert (= b_lambda!184467 (or b!4768415 b_lambda!184507)))

(declare-fun bs!1149327 () Bool)

(declare-fun d!1524393 () Bool)

(assert (= bs!1149327 (and d!1524393 b!4768415)))

(assert (=> bs!1149327 (= (dynLambda!21958 lambda!224664 (h!59922 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052)))))) (noDuplicateKeys!2258 (_2!31083 (h!59922 (toList!6311 (map!12010 (v!47740 (underlying!10086 thiss!42052))))))))))

(declare-fun m!5740506 () Bool)

(assert (=> bs!1149327 m!5740506))

(assert (=> b!4768545 d!1524393))

(declare-fun b_lambda!184509 () Bool)

(assert (= b_lambda!184487 (or b!4768475 b_lambda!184509)))

(declare-fun bs!1149328 () Bool)

(declare-fun d!1524395 () Bool)

(assert (= bs!1149328 (and d!1524395 b!4768475)))

(assert (=> bs!1149328 (= (dynLambda!21958 lambda!224670 (tuple2!55579 lt!1931411 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411))) (noDuplicateKeys!2258 (_2!31083 (tuple2!55579 lt!1931411 (apply!12645 (v!47740 (underlying!10086 thiss!42052)) lt!1931411)))))))

(declare-fun m!5740508 () Bool)

(assert (=> bs!1149328 m!5740508))

(assert (=> d!1524345 d!1524395))

(declare-fun b_lambda!184511 () Bool)

(assert (= b_lambda!184483 (or d!1524119 b_lambda!184511)))

(declare-fun bs!1149329 () Bool)

(declare-fun d!1524397 () Bool)

(assert (= bs!1149329 (and d!1524397 d!1524119)))

(assert (=> bs!1149329 (= (dynLambda!21958 lambda!224651 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776)))) (noDuplicateKeys!2258 (_2!31083 (tuple2!55579 (hash!4580 (hashF!12473 thiss!42052) key!1776) (apply!12644 lt!1931247 (hash!4580 (hashF!12473 thiss!42052) key!1776))))))))

(assert (=> bs!1149329 m!5740504))

(assert (=> d!1524287 d!1524397))

(declare-fun b_lambda!184513 () Bool)

(assert (= b_lambda!184473 (or (and b!4768289 b_free!129699) b_lambda!184513)))

(declare-fun b_lambda!184515 () Bool)

(assert (= b_lambda!184481 (or d!1524119 b_lambda!184515)))

(declare-fun bs!1149330 () Bool)

(declare-fun d!1524399 () Bool)

(assert (= bs!1149330 (and d!1524399 d!1524119)))

(assert (=> bs!1149330 (= (dynLambda!21958 lambda!224651 (h!59922 (toList!6311 lt!1931247))) (noDuplicateKeys!2258 (_2!31083 (h!59922 (toList!6311 lt!1931247)))))))

(assert (=> bs!1149330 m!5740164))

(assert (=> b!4768698 d!1524399))

(declare-fun b_lambda!184517 () Bool)

(assert (= b_lambda!184469 (or (and b!4768289 b_free!129699) b_lambda!184517)))

(declare-fun b_lambda!184519 () Bool)

(assert (= b_lambda!184471 (or (and b!4768289 b_free!129699) b_lambda!184519)))

(declare-fun b_lambda!184521 () Bool)

(assert (= b_lambda!184489 (or d!1524171 b_lambda!184521)))

(declare-fun bs!1149331 () Bool)

(declare-fun d!1524401 () Bool)

(assert (= bs!1149331 (and d!1524401 d!1524171)))

(assert (=> bs!1149331 (= (dynLambda!21958 lambda!224667 (h!59922 (toList!6311 lt!1931247))) (noDuplicateKeys!2258 (_2!31083 (h!59922 (toList!6311 lt!1931247)))))))

(assert (=> bs!1149331 m!5740164))

(assert (=> b!4768769 d!1524401))

(check-sat (not d!1524339) (not b!4768604) (not b!4768773) (not d!1524225) (not b!4768699) (not d!1524311) (not b!4768600) (not d!1524317) (not d!1524337) (not b!4768534) (not b!4768816) (not bm!334318) (not b!4768737) (not b!4768811) (not b!4768740) (not b!4768667) (not b_lambda!184493) (not b!4768723) (not b!4768655) (not b!4768732) (not b_lambda!184521) (not b!4768697) (not d!1524209) (not d!1524369) (not d!1524261) (not d!1524335) (not b!4768805) (not b!4768546) (not b!4768661) (not b_lambda!184497) (not bs!1149326) (not b!4768654) (not b!4768615) (not b!4768789) (not b!4768498) (not d!1524383) (not b!4768815) (not b!4768541) (not b!4768796) (not b!4768597) (not b!4768744) (not d!1524319) (not b!4768642) (not b!4768763) (not b!4768535) (not b!4768505) (not b!4768684) (not b!4768768) (not b!4768720) (not b!4768663) (not b_lambda!184505) (not b_lambda!184501) (not b_lambda!184495) (not d!1524373) (not d!1524229) (not b!4768711) (not b!4768809) (not b!4768588) (not b!4768700) (not b!4768812) (not b!4768743) (not b_lambda!184519) (not b!4768780) (not b!4768728) (not bs!1149323) (not b_lambda!184499) (not d!1524219) (not d!1524309) (not b!4768786) (not d!1524303) (not b!4768540) (not b!4768666) (not d!1524379) (not b!4768817) (not b!4768750) (not b!4768660) (not bs!1149329) (not d!1524233) (not b_lambda!184503) (not d!1524307) (not d!1524257) (not b!4768793) (not b!4768735) (not b!4768813) (not d!1524377) (not d!1524247) (not d!1524343) (not b_next!130489) (not d!1524277) (not d!1524263) (not d!1524239) (not d!1524249) (not d!1524255) (not b!4768515) (not d!1524297) (not b!4768625) (not b!4768601) (not b!4768736) (not b!4768761) (not b!4768620) (not b!4768707) (not b!4768499) b_and!341423 (not d!1524205) (not b!4768818) (not b_lambda!184509) (not b!4768611) (not b!4768727) (not bm!334307) (not b!4768538) (not d!1524223) (not d!1524265) (not b!4768770) (not b!4768618) (not mapNonEmpty!21913) (not d!1524285) (not b!4768795) (not d!1524191) (not b!4768507) (not b!4768606) (not b_lambda!184459) (not b!4768756) (not d!1524323) (not b!4768752) (not b_next!130491) (not b!4768688) (not d!1524183) (not b_lambda!184511) (not b!4768640) (not b!4768718) (not b!4768598) (not b!4768628) (not bm!334321) (not b!4768746) (not d!1524349) (not bs!1149331) (not b!4768671) (not b!4768766) (not b!4768749) (not b!4768622) (not d!1524195) (not b!4768783) (not b!4768691) (not d!1524347) (not d!1524329) (not b_lambda!184461) (not b!4768753) (not d!1524299) (not d!1524345) (not b_lambda!184507) (not bs!1149325) (not d!1524361) (not b_lambda!184517) (not b!4768643) (not b!4768708) (not d!1524237) (not d!1524295) (not b!4768764) (not b!4768741) (not b!4768701) (not d!1524321) (not b!4768687) (not b!4768607) (not bm!334319) (not d!1524259) (not d!1524365) (not b!4768669) (not d!1524215) (not b!4768742) (not d!1524291) (not b!4768799) (not d!1524217) (not b!4768745) (not b!4768800) (not d!1524245) (not b!4768806) (not b!4768514) (not bm!334310) (not b!4768675) (not bs!1149324) (not tb!257485) (not b!4768619) (not b!4768621) (not b!4768810) (not b!4768609) (not b!4768613) (not bm!334320) (not b!4768658) (not b!4768758) (not b!4768513) (not d!1524221) (not b!4768760) (not b!4768734) (not b!4768714) (not b!4768703) (not b!4768539) (not b!4768585) (not b!4768614) (not bm!334317) (not b!4768657) tp_is_empty!32479 (not b!4768603) (not b!4768705) (not b!4768664) (not d!1524293) (not b!4768685) (not b!4768682) (not d!1524227) (not bm!334297) b_and!341433 (not d!1524371) (not b_lambda!184457) (not d!1524269) (not b!4768717) (not bm!334306) (not d!1524253) (not d!1524207) (not b!4768802) (not b!4768681) (not b!4768814) (not b!4768792) (not b!4768647) (not d!1524273) (not d!1524235) (not b!4768803) (not d!1524287) (not b!4768751) (not b_lambda!184513) tp_is_empty!32481 (not b!4768641) (not b_lambda!184515) (not bs!1149327) (not bs!1149328) (not b!4768542) (not bs!1149330) (not d!1524251) (not b!4768797) (not d!1524203) (not b!4768543) (not d!1524243))
(check-sat b_and!341423 b_and!341433 (not b_next!130491) (not b_next!130489))
