; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218128 () Bool)

(assert start!218128)

(declare-fun b!2238757 () Bool)

(declare-fun b_free!64969 () Bool)

(declare-fun b_next!65673 () Bool)

(assert (=> b!2238757 (= b_free!64969 (not b_next!65673))))

(declare-fun tp!704743 () Bool)

(declare-fun b_and!174977 () Bool)

(assert (=> b!2238757 (= tp!704743 b_and!174977)))

(declare-fun b!2238744 () Bool)

(declare-fun b_free!64971 () Bool)

(declare-fun b_next!65675 () Bool)

(assert (=> b!2238744 (= b_free!64971 (not b_next!65675))))

(declare-fun tp!704744 () Bool)

(declare-fun b_and!174979 () Bool)

(assert (=> b!2238744 (= tp!704744 b_and!174979)))

(declare-fun b!2238742 () Bool)

(declare-fun e!1431191 () Bool)

(declare-fun e!1431186 () Bool)

(declare-datatypes ((C!13124 0))(
  ( (C!13125 (val!7610 Int)) )
))
(declare-datatypes ((Regex!6489 0))(
  ( (ElementMatch!6489 (c!356630 C!13124)) (Concat!10827 (regOne!13490 Regex!6489) (regTwo!13490 Regex!6489)) (EmptyExpr!6489) (Star!6489 (reg!6818 Regex!6489)) (EmptyLang!6489) (Union!6489 (regOne!13491 Regex!6489) (regTwo!13491 Regex!6489)) )
))
(declare-datatypes ((List!26464 0))(
  ( (Nil!26370) (Cons!26370 (h!31771 Regex!6489) (t!199894 List!26464)) )
))
(declare-datatypes ((Context!4074 0))(
  ( (Context!4075 (exprs!2537 List!26464)) )
))
(declare-datatypes ((tuple3!4050 0))(
  ( (tuple3!4051 (_1!15381 Regex!6489) (_2!15381 Context!4074) (_3!2495 C!13124)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25772 0))(
  ( (tuple2!25773 (_1!15382 tuple3!4050) (_2!15382 (InoxSet Context!4074))) )
))
(declare-datatypes ((array!10902 0))(
  ( (array!10903 (arr!4841 (Array (_ BitVec 32) (_ BitVec 64))) (size!20622 (_ BitVec 32))) )
))
(declare-datatypes ((List!26465 0))(
  ( (Nil!26371) (Cons!26371 (h!31772 tuple2!25772) (t!199895 List!26465)) )
))
(declare-datatypes ((array!10904 0))(
  ( (array!10905 (arr!4842 (Array (_ BitVec 32) List!26465)) (size!20623 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6254 0))(
  ( (LongMapFixedSize!6255 (defaultEntry!3492 Int) (mask!7725 (_ BitVec 32)) (extraKeys!3375 (_ BitVec 32)) (zeroValue!3385 List!26465) (minValue!3385 List!26465) (_size!6301 (_ BitVec 32)) (_keys!3424 array!10902) (_values!3407 array!10904) (_vacant!3188 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12325 0))(
  ( (Cell!12326 (v!29988 LongMapFixedSize!6254)) )
))
(declare-datatypes ((MutLongMap!3127 0))(
  ( (LongMap!3127 (underlying!6455 Cell!12325)) (MutLongMapExt!3126 (__x!17607 Int)) )
))
(declare-fun lt!833004 () MutLongMap!3127)

(get-info :version)

(assert (=> b!2238742 (= e!1431191 (and e!1431186 ((_ is LongMap!3127) lt!833004)))))

(declare-datatypes ((Hashable!3037 0))(
  ( (HashableExt!3036 (__x!17608 Int)) )
))
(declare-datatypes ((Cell!12327 0))(
  ( (Cell!12328 (v!29989 MutLongMap!3127)) )
))
(declare-datatypes ((MutableMap!3037 0))(
  ( (MutableMapExt!3036 (__x!17609 Int)) (HashMap!3037 (underlying!6456 Cell!12327) (hashF!4960 Hashable!3037) (_size!6302 (_ BitVec 32)) (defaultValue!3199 Int)) )
))
(declare-datatypes ((CacheDown!2120 0))(
  ( (CacheDown!2121 (cache!3418 MutableMap!3037)) )
))
(declare-fun thiss!28743 () CacheDown!2120)

(assert (=> b!2238742 (= lt!833004 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))

(declare-fun b!2238743 () Bool)

(declare-fun e!1431196 () Bool)

(declare-fun e!1431188 () Bool)

(assert (=> b!2238743 (= e!1431196 e!1431188)))

(declare-fun mapNonEmpty!14672 () Bool)

(declare-fun mapRes!14672 () Bool)

(declare-fun tp!704736 () Bool)

(declare-fun tp!704739 () Bool)

(assert (=> mapNonEmpty!14672 (= mapRes!14672 (and tp!704736 tp!704739))))

(declare-fun mapValue!14672 () List!26465)

(declare-fun mapRest!14672 () (Array (_ BitVec 32) List!26465))

(declare-fun mapKey!14672 () (_ BitVec 32))

(assert (=> mapNonEmpty!14672 (= (arr!4842 (_values!3407 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))) (store mapRest!14672 mapKey!14672 mapValue!14672))))

(assert (=> b!2238744 (= e!1431188 (and e!1431191 tp!704744))))

(declare-fun b!2238745 () Bool)

(declare-fun e!1431199 () Bool)

(declare-fun e!1431193 () Bool)

(assert (=> b!2238745 (= e!1431199 e!1431193)))

(declare-fun res!957359 () Bool)

(assert (=> b!2238745 (=> (not res!957359) (not e!1431193))))

(declare-fun lt!833006 () tuple3!4050)

(declare-fun contains!4430 (MutableMap!3037 tuple3!4050) Bool)

(assert (=> b!2238745 (= res!957359 (contains!4430 (cache!3418 thiss!28743) lt!833006))))

(declare-fun ctx!48 () Context!4074)

(declare-fun r!4750 () Regex!6489)

(declare-fun a!970 () C!13124)

(assert (=> b!2238745 (= lt!833006 (tuple3!4051 r!4750 ctx!48 a!970))))

(declare-fun b!2238747 () Bool)

(declare-fun e!1431195 () Bool)

(declare-fun apply!6498 (MutableMap!3037 tuple3!4050) (InoxSet Context!4074))

(declare-fun derivationStepZipperDown!79 (Regex!6489 Context!4074 C!13124) (InoxSet Context!4074))

(assert (=> b!2238747 (= e!1431195 (= (apply!6498 (cache!3418 thiss!28743) lt!833006) (derivationStepZipperDown!79 (_1!15381 lt!833006) (_2!15381 lt!833006) (_3!2495 lt!833006))))))

(declare-fun lt!833007 () (InoxSet Context!4074))

(assert (=> b!2238747 (= lt!833007 (apply!6498 (cache!3418 thiss!28743) lt!833006))))

(declare-fun lt!833002 () (InoxSet Context!4074))

(assert (=> b!2238747 (= lt!833002 (apply!6498 (cache!3418 thiss!28743) lt!833006))))

(declare-fun lt!832999 () (InoxSet Context!4074))

(assert (=> b!2238747 (= lt!832999 (apply!6498 (cache!3418 thiss!28743) lt!833006))))

(declare-fun lt!833001 () tuple3!4050)

(assert (=> b!2238747 (= lt!833001 lt!833006)))

(declare-fun b!2238748 () Bool)

(declare-fun e!1431194 () Bool)

(declare-fun tp_is_empty!10199 () Bool)

(assert (=> b!2238748 (= e!1431194 tp_is_empty!10199)))

(declare-fun b!2238749 () Bool)

(declare-fun e!1431190 () Bool)

(declare-fun e!1431192 () Bool)

(assert (=> b!2238749 (= e!1431190 e!1431192)))

(declare-fun b!2238750 () Bool)

(declare-fun tp!704738 () Bool)

(declare-fun tp!704746 () Bool)

(assert (=> b!2238750 (= e!1431194 (and tp!704738 tp!704746))))

(declare-fun b!2238751 () Bool)

(declare-fun tp!704741 () Bool)

(assert (=> b!2238751 (= e!1431194 tp!704741)))

(declare-fun b!2238752 () Bool)

(assert (=> b!2238752 (= e!1431186 e!1431190)))

(declare-fun b!2238753 () Bool)

(declare-fun res!957358 () Bool)

(declare-fun e!1431198 () Bool)

(assert (=> b!2238753 (=> res!957358 e!1431198)))

(assert (=> b!2238753 (= res!957358 (not ((_ is HashMap!3037) (cache!3418 thiss!28743))))))

(declare-fun b!2238754 () Bool)

(declare-fun valid!2356 (MutableMap!3037) Bool)

(assert (=> b!2238754 (= e!1431198 (valid!2356 (cache!3418 thiss!28743)))))

(declare-fun b!2238755 () Bool)

(declare-fun tp!704745 () Bool)

(declare-fun tp!704748 () Bool)

(assert (=> b!2238755 (= e!1431194 (and tp!704745 tp!704748))))

(declare-fun b!2238746 () Bool)

(declare-fun e!1431197 () Bool)

(declare-fun tp!704737 () Bool)

(assert (=> b!2238746 (= e!1431197 tp!704737)))

(declare-fun res!957361 () Bool)

(assert (=> start!218128 (=> (not res!957361) (not e!1431199))))

(declare-fun validCacheMapDown!333 (MutableMap!3037) Bool)

(assert (=> start!218128 (= res!957361 (validCacheMapDown!333 (cache!3418 thiss!28743)))))

(assert (=> start!218128 e!1431199))

(declare-fun inv!35819 (CacheDown!2120) Bool)

(assert (=> start!218128 (and (inv!35819 thiss!28743) e!1431196)))

(declare-fun inv!35820 (Context!4074) Bool)

(assert (=> start!218128 (and (inv!35820 ctx!48) e!1431197)))

(assert (=> start!218128 e!1431194))

(assert (=> start!218128 tp_is_empty!10199))

(declare-fun b!2238756 () Bool)

(assert (=> b!2238756 (= e!1431193 (not e!1431198))))

(declare-fun res!957360 () Bool)

(assert (=> b!2238756 (=> res!957360 e!1431198)))

(declare-fun validRegex!2442 (Regex!6489) Bool)

(assert (=> b!2238756 (= res!957360 (not (validRegex!2442 r!4750)))))

(assert (=> b!2238756 e!1431195))

(declare-fun res!957362 () Bool)

(assert (=> b!2238756 (=> (not res!957362) (not e!1431195))))

(assert (=> b!2238756 (= res!957362 (validRegex!2442 (_1!15381 lt!833006)))))

(declare-fun lt!833003 () (InoxSet Context!4074))

(assert (=> b!2238756 (= lt!833003 (apply!6498 (cache!3418 thiss!28743) lt!833006))))

(declare-fun lt!833005 () tuple2!25772)

(assert (=> b!2238756 (= lt!833005 (tuple2!25773 lt!833006 (apply!6498 (cache!3418 thiss!28743) lt!833006)))))

(declare-datatypes ((Unit!39333 0))(
  ( (Unit!39334) )
))
(declare-fun lt!833000 () Unit!39333)

(declare-fun lambda!84640 () Int)

(declare-fun lemmaForallPairsThenForLookup!31 (MutableMap!3037 tuple3!4050 Int) Unit!39333)

(assert (=> b!2238756 (= lt!833000 (lemmaForallPairsThenForLookup!31 (cache!3418 thiss!28743) lt!833006 lambda!84640))))

(declare-fun e!1431189 () Bool)

(declare-fun tp!704740 () Bool)

(declare-fun tp!704747 () Bool)

(declare-fun array_inv!3477 (array!10902) Bool)

(declare-fun array_inv!3478 (array!10904) Bool)

(assert (=> b!2238757 (= e!1431192 (and tp!704743 tp!704747 tp!704740 (array_inv!3477 (_keys!3424 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))) (array_inv!3478 (_values!3407 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))) e!1431189))))

(declare-fun mapIsEmpty!14672 () Bool)

(assert (=> mapIsEmpty!14672 mapRes!14672))

(declare-fun b!2238758 () Bool)

(declare-fun tp!704742 () Bool)

(assert (=> b!2238758 (= e!1431189 (and tp!704742 mapRes!14672))))

(declare-fun condMapEmpty!14672 () Bool)

(declare-fun mapDefault!14672 () List!26465)

(assert (=> b!2238758 (= condMapEmpty!14672 (= (arr!4842 (_values!3407 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26465)) mapDefault!14672)))))

(assert (= (and start!218128 res!957361) b!2238745))

(assert (= (and b!2238745 res!957359) b!2238756))

(assert (= (and b!2238756 res!957362) b!2238747))

(assert (= (and b!2238756 (not res!957360)) b!2238753))

(assert (= (and b!2238753 (not res!957358)) b!2238754))

(assert (= (and b!2238758 condMapEmpty!14672) mapIsEmpty!14672))

(assert (= (and b!2238758 (not condMapEmpty!14672)) mapNonEmpty!14672))

(assert (= b!2238757 b!2238758))

(assert (= b!2238749 b!2238757))

(assert (= b!2238752 b!2238749))

(assert (= (and b!2238742 ((_ is LongMap!3127) (v!29989 (underlying!6456 (cache!3418 thiss!28743))))) b!2238752))

(assert (= b!2238744 b!2238742))

(assert (= (and b!2238743 ((_ is HashMap!3037) (cache!3418 thiss!28743))) b!2238744))

(assert (= start!218128 b!2238743))

(assert (= start!218128 b!2238746))

(assert (= (and start!218128 ((_ is ElementMatch!6489) r!4750)) b!2238748))

(assert (= (and start!218128 ((_ is Concat!10827) r!4750)) b!2238750))

(assert (= (and start!218128 ((_ is Star!6489) r!4750)) b!2238751))

(assert (= (and start!218128 ((_ is Union!6489) r!4750)) b!2238755))

(declare-fun m!2671738 () Bool)

(assert (=> b!2238745 m!2671738))

(declare-fun m!2671740 () Bool)

(assert (=> b!2238754 m!2671740))

(declare-fun m!2671742 () Bool)

(assert (=> b!2238756 m!2671742))

(declare-fun m!2671744 () Bool)

(assert (=> b!2238756 m!2671744))

(declare-fun m!2671746 () Bool)

(assert (=> b!2238756 m!2671746))

(declare-fun m!2671748 () Bool)

(assert (=> b!2238756 m!2671748))

(assert (=> b!2238747 m!2671746))

(declare-fun m!2671750 () Bool)

(assert (=> b!2238747 m!2671750))

(declare-fun m!2671752 () Bool)

(assert (=> mapNonEmpty!14672 m!2671752))

(declare-fun m!2671754 () Bool)

(assert (=> start!218128 m!2671754))

(declare-fun m!2671756 () Bool)

(assert (=> start!218128 m!2671756))

(declare-fun m!2671758 () Bool)

(assert (=> start!218128 m!2671758))

(declare-fun m!2671760 () Bool)

(assert (=> b!2238757 m!2671760))

(declare-fun m!2671762 () Bool)

(assert (=> b!2238757 m!2671762))

(check-sat (not b!2238747) (not mapNonEmpty!14672) (not b_next!65673) (not b!2238746) (not b!2238751) (not b!2238754) tp_is_empty!10199 (not b!2238758) (not b!2238745) b_and!174979 (not b!2238757) (not b!2238750) (not b_next!65675) (not b!2238756) (not start!218128) (not b!2238755) b_and!174977)
(check-sat b_and!174977 b_and!174979 (not b_next!65675) (not b_next!65673))
(get-model)

(declare-fun d!665614 () Bool)

(declare-fun res!957367 () Bool)

(declare-fun e!1431202 () Bool)

(assert (=> d!665614 (=> (not res!957367) (not e!1431202))))

(declare-fun valid!2357 (MutLongMap!3127) Bool)

(assert (=> d!665614 (= res!957367 (valid!2357 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))))))

(assert (=> d!665614 (= (valid!2356 (cache!3418 thiss!28743)) e!1431202)))

(declare-fun b!2238763 () Bool)

(declare-fun res!957368 () Bool)

(assert (=> b!2238763 (=> (not res!957368) (not e!1431202))))

(declare-fun lambda!84643 () Int)

(declare-datatypes ((tuple2!25774 0))(
  ( (tuple2!25775 (_1!15383 (_ BitVec 64)) (_2!15383 List!26465)) )
))
(declare-datatypes ((List!26466 0))(
  ( (Nil!26372) (Cons!26372 (h!31773 tuple2!25774) (t!199898 List!26466)) )
))
(declare-fun forall!5419 (List!26466 Int) Bool)

(declare-datatypes ((ListLongMap!339 0))(
  ( (ListLongMap!340 (toList!1370 List!26466)) )
))
(declare-fun map!5436 (MutLongMap!3127) ListLongMap!339)

(assert (=> b!2238763 (= res!957368 (forall!5419 (toList!1370 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))) lambda!84643))))

(declare-fun b!2238764 () Bool)

(declare-fun allKeysSameHashInMap!111 (ListLongMap!339 Hashable!3037) Bool)

(assert (=> b!2238764 (= e!1431202 (allKeysSameHashInMap!111 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))) (hashF!4960 (cache!3418 thiss!28743))))))

(assert (= (and d!665614 res!957367) b!2238763))

(assert (= (and b!2238763 res!957368) b!2238764))

(declare-fun m!2671764 () Bool)

(assert (=> d!665614 m!2671764))

(declare-fun m!2671766 () Bool)

(assert (=> b!2238763 m!2671766))

(declare-fun m!2671768 () Bool)

(assert (=> b!2238763 m!2671768))

(assert (=> b!2238764 m!2671766))

(assert (=> b!2238764 m!2671766))

(declare-fun m!2671770 () Bool)

(assert (=> b!2238764 m!2671770))

(assert (=> b!2238754 d!665614))

(declare-fun d!665616 () Bool)

(assert (=> d!665616 (= (array_inv!3477 (_keys!3424 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))) (bvsge (size!20622 (_keys!3424 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2238757 d!665616))

(declare-fun d!665618 () Bool)

(assert (=> d!665618 (= (array_inv!3478 (_values!3407 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))) (bvsge (size!20623 (_values!3407 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2238757 d!665618))

(declare-fun bs!454263 () Bool)

(declare-fun b!2238772 () Bool)

(assert (= bs!454263 (and b!2238772 b!2238756)))

(declare-fun lambda!84646 () Int)

(assert (=> bs!454263 (= lambda!84646 lambda!84640)))

(declare-fun d!665620 () Bool)

(declare-fun res!957375 () Bool)

(declare-fun e!1431207 () Bool)

(assert (=> d!665620 (=> (not res!957375) (not e!1431207))))

(assert (=> d!665620 (= res!957375 (valid!2356 (cache!3418 thiss!28743)))))

(assert (=> d!665620 (= (validCacheMapDown!333 (cache!3418 thiss!28743)) e!1431207)))

(declare-fun b!2238771 () Bool)

(declare-fun res!957376 () Bool)

(assert (=> b!2238771 (=> (not res!957376) (not e!1431207))))

(declare-fun invariantList!380 (List!26465) Bool)

(declare-datatypes ((ListMap!855 0))(
  ( (ListMap!856 (toList!1371 List!26465)) )
))
(declare-fun map!5437 (MutableMap!3037) ListMap!855)

(assert (=> b!2238771 (= res!957376 (invariantList!380 (toList!1371 (map!5437 (cache!3418 thiss!28743)))))))

(declare-fun forall!5420 (List!26465 Int) Bool)

(assert (=> b!2238772 (= e!1431207 (forall!5420 (toList!1371 (map!5437 (cache!3418 thiss!28743))) lambda!84646))))

(assert (= (and d!665620 res!957375) b!2238771))

(assert (= (and b!2238771 res!957376) b!2238772))

(assert (=> d!665620 m!2671740))

(declare-fun m!2671773 () Bool)

(assert (=> b!2238771 m!2671773))

(declare-fun m!2671775 () Bool)

(assert (=> b!2238771 m!2671775))

(assert (=> b!2238772 m!2671773))

(declare-fun m!2671777 () Bool)

(assert (=> b!2238772 m!2671777))

(assert (=> start!218128 d!665620))

(declare-fun d!665622 () Bool)

(declare-fun res!957379 () Bool)

(declare-fun e!1431210 () Bool)

(assert (=> d!665622 (=> (not res!957379) (not e!1431210))))

(assert (=> d!665622 (= res!957379 ((_ is HashMap!3037) (cache!3418 thiss!28743)))))

(assert (=> d!665622 (= (inv!35819 thiss!28743) e!1431210)))

(declare-fun b!2238775 () Bool)

(assert (=> b!2238775 (= e!1431210 (validCacheMapDown!333 (cache!3418 thiss!28743)))))

(assert (= (and d!665622 res!957379) b!2238775))

(assert (=> b!2238775 m!2671754))

(assert (=> start!218128 d!665622))

(declare-fun d!665624 () Bool)

(declare-fun lambda!84649 () Int)

(declare-fun forall!5421 (List!26464 Int) Bool)

(assert (=> d!665624 (= (inv!35820 ctx!48) (forall!5421 (exprs!2537 ctx!48) lambda!84649))))

(declare-fun bs!454264 () Bool)

(assert (= bs!454264 d!665624))

(declare-fun m!2671779 () Bool)

(assert (=> bs!454264 m!2671779))

(assert (=> start!218128 d!665624))

(declare-fun bs!454265 () Bool)

(declare-fun b!2238789 () Bool)

(assert (= bs!454265 (and b!2238789 b!2238763)))

(declare-fun lambda!84656 () Int)

(assert (=> bs!454265 (= lambda!84656 lambda!84643)))

(declare-fun b!2238788 () Bool)

(declare-fun e!1431217 () Bool)

(declare-fun lt!833091 () (InoxSet Context!4074))

(declare-datatypes ((Option!5137 0))(
  ( (None!5136) (Some!5136 (v!29990 (InoxSet Context!4074))) )
))
(declare-fun get!7979 (Option!5137) (InoxSet Context!4074))

(declare-fun getValueByKey!83 (List!26465 tuple3!4050) Option!5137)

(assert (=> b!2238788 (= e!1431217 (= lt!833091 (get!7979 (getValueByKey!83 (toList!1371 (map!5437 (cache!3418 thiss!28743))) lt!833006))))))

(declare-fun e!1431219 () (InoxSet Context!4074))

(declare-fun lt!833096 () (_ BitVec 64))

(declare-datatypes ((Option!5138 0))(
  ( (None!5137) (Some!5137 (v!29991 tuple2!25772)) )
))
(declare-fun get!7980 (Option!5138) tuple2!25772)

(declare-fun getPair!34 (List!26465 tuple3!4050) Option!5138)

(declare-fun apply!6499 (MutLongMap!3127 (_ BitVec 64)) List!26465)

(assert (=> b!2238789 (= e!1431219 (_2!15382 (get!7980 (getPair!34 (apply!6499 (v!29989 (underlying!6456 (cache!3418 thiss!28743))) lt!833096) lt!833006))))))

(declare-fun hash!581 (Hashable!3037 tuple3!4050) (_ BitVec 64))

(assert (=> b!2238789 (= lt!833096 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006))))

(declare-fun c!356638 () Bool)

(declare-fun contains!4431 (List!26466 tuple2!25774) Bool)

(assert (=> b!2238789 (= c!356638 (not (contains!4431 (toList!1370 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))) (tuple2!25775 lt!833096 (apply!6499 (v!29989 (underlying!6456 (cache!3418 thiss!28743))) lt!833096)))))))

(declare-fun lt!833082 () Unit!39333)

(declare-fun e!1431218 () Unit!39333)

(assert (=> b!2238789 (= lt!833082 e!1431218)))

(declare-fun lt!833075 () Unit!39333)

(declare-fun forallContained!781 (List!26466 Int tuple2!25774) Unit!39333)

(assert (=> b!2238789 (= lt!833075 (forallContained!781 (toList!1370 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))) lambda!84656 (tuple2!25775 lt!833096 (apply!6499 (v!29989 (underlying!6456 (cache!3418 thiss!28743))) lt!833096))))))

(declare-fun lt!833092 () ListLongMap!339)

(assert (=> b!2238789 (= lt!833092 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))))))

(declare-fun lt!833086 () Unit!39333)

(declare-fun lemmaGetPairGetSameValueAsMap!22 (ListLongMap!339 tuple3!4050 (InoxSet Context!4074) Hashable!3037) Unit!39333)

(assert (=> b!2238789 (= lt!833086 (lemmaGetPairGetSameValueAsMap!22 lt!833092 lt!833006 (_2!15382 (get!7980 (getPair!34 (apply!6499 (v!29989 (underlying!6456 (cache!3418 thiss!28743))) lt!833096) lt!833006))) (hashF!4960 (cache!3418 thiss!28743))))))

(declare-fun lt!833068 () Unit!39333)

(declare-fun lemmaInGenMapThenLongMapContainsHash!22 (ListLongMap!339 tuple3!4050 Hashable!3037) Unit!39333)

(assert (=> b!2238789 (= lt!833068 (lemmaInGenMapThenLongMapContainsHash!22 lt!833092 lt!833006 (hashF!4960 (cache!3418 thiss!28743))))))

(declare-fun contains!4432 (ListLongMap!339 (_ BitVec 64)) Bool)

(assert (=> b!2238789 (contains!4432 lt!833092 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006))))

(declare-fun lt!833088 () Unit!39333)

(assert (=> b!2238789 (= lt!833088 lt!833068)))

(declare-fun lt!833073 () (_ BitVec 64))

(assert (=> b!2238789 (= lt!833073 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006))))

(declare-fun lt!833093 () List!26465)

(declare-fun apply!6500 (ListLongMap!339 (_ BitVec 64)) List!26465)

(assert (=> b!2238789 (= lt!833093 (apply!6500 lt!833092 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006)))))

(declare-fun lt!833076 () Unit!39333)

(declare-fun lemmaGetValueImpliesTupleContained!23 (ListLongMap!339 (_ BitVec 64) List!26465) Unit!39333)

(assert (=> b!2238789 (= lt!833076 (lemmaGetValueImpliesTupleContained!23 lt!833092 lt!833073 lt!833093))))

(assert (=> b!2238789 (contains!4431 (toList!1370 lt!833092) (tuple2!25775 lt!833073 lt!833093))))

(declare-fun lt!833090 () Unit!39333)

(assert (=> b!2238789 (= lt!833090 lt!833076)))

(declare-fun lt!833070 () Unit!39333)

(assert (=> b!2238789 (= lt!833070 (forallContained!781 (toList!1370 lt!833092) lambda!84656 (tuple2!25775 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006) (apply!6500 lt!833092 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006)))))))

(declare-fun lt!833080 () Unit!39333)

(declare-fun lemmaInGenMapThenGetPairDefined!22 (ListLongMap!339 tuple3!4050 Hashable!3037) Unit!39333)

(assert (=> b!2238789 (= lt!833080 (lemmaInGenMapThenGetPairDefined!22 lt!833092 lt!833006 (hashF!4960 (cache!3418 thiss!28743))))))

(declare-fun lt!833094 () Unit!39333)

(assert (=> b!2238789 (= lt!833094 (lemmaInGenMapThenLongMapContainsHash!22 lt!833092 lt!833006 (hashF!4960 (cache!3418 thiss!28743))))))

(declare-fun lt!833077 () Unit!39333)

(assert (=> b!2238789 (= lt!833077 lt!833094)))

(declare-fun lt!833081 () (_ BitVec 64))

(assert (=> b!2238789 (= lt!833081 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006))))

(declare-fun lt!833071 () List!26465)

(assert (=> b!2238789 (= lt!833071 (apply!6500 lt!833092 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006)))))

(declare-fun lt!833097 () Unit!39333)

(assert (=> b!2238789 (= lt!833097 (lemmaGetValueImpliesTupleContained!23 lt!833092 lt!833081 lt!833071))))

(assert (=> b!2238789 (contains!4431 (toList!1370 lt!833092) (tuple2!25775 lt!833081 lt!833071))))

(declare-fun lt!833079 () Unit!39333)

(assert (=> b!2238789 (= lt!833079 lt!833097)))

(declare-fun lt!833084 () Unit!39333)

(assert (=> b!2238789 (= lt!833084 (forallContained!781 (toList!1370 lt!833092) lambda!84656 (tuple2!25775 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006) (apply!6500 lt!833092 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006)))))))

(declare-fun isDefined!4146 (Option!5138) Bool)

(assert (=> b!2238789 (isDefined!4146 (getPair!34 (apply!6500 lt!833092 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006)) lt!833006))))

(declare-fun lt!833089 () Unit!39333)

(assert (=> b!2238789 (= lt!833089 lt!833080)))

(declare-fun extractMap!114 (List!26466) ListMap!855)

(assert (=> b!2238789 (= (_2!15382 (get!7980 (getPair!34 (apply!6500 lt!833092 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006)) lt!833006))) (get!7979 (getValueByKey!83 (toList!1371 (extractMap!114 (toList!1370 lt!833092))) lt!833006)))))

(declare-fun lt!833069 () Unit!39333)

(assert (=> b!2238789 (= lt!833069 lt!833086)))

(declare-fun d!665626 () Bool)

(assert (=> d!665626 e!1431217))

(declare-fun c!356639 () Bool)

(assert (=> d!665626 (= c!356639 (contains!4430 (cache!3418 thiss!28743) lt!833006))))

(assert (=> d!665626 (= lt!833091 e!1431219)))

(declare-fun c!356637 () Bool)

(assert (=> d!665626 (= c!356637 (not (contains!4430 (cache!3418 thiss!28743) lt!833006)))))

(assert (=> d!665626 (valid!2356 (cache!3418 thiss!28743))))

(assert (=> d!665626 (= (apply!6498 (cache!3418 thiss!28743) lt!833006) lt!833091)))

(declare-fun b!2238790 () Bool)

(declare-fun dynLambda!11538 (Int tuple3!4050) (InoxSet Context!4074))

(assert (=> b!2238790 (= e!1431217 (= lt!833091 (dynLambda!11538 (defaultValue!3199 (cache!3418 thiss!28743)) lt!833006)))))

(declare-fun b!2238791 () Bool)

(assert (=> b!2238791 (= e!1431219 (dynLambda!11538 (defaultValue!3199 (cache!3418 thiss!28743)) lt!833006))))

(declare-fun b!2238792 () Bool)

(assert (=> b!2238792 false))

(declare-fun lt!833085 () Unit!39333)

(declare-fun lt!833083 () Unit!39333)

(assert (=> b!2238792 (= lt!833085 lt!833083)))

(declare-fun lt!833087 () List!26466)

(declare-fun lt!833072 () List!26465)

(assert (=> b!2238792 (contains!4431 lt!833087 (tuple2!25775 lt!833096 lt!833072))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!35 (List!26466 (_ BitVec 64) List!26465) Unit!39333)

(assert (=> b!2238792 (= lt!833083 (lemmaGetValueByKeyImpliesContainsTuple!35 lt!833087 lt!833096 lt!833072))))

(assert (=> b!2238792 (= lt!833072 (apply!6499 (v!29989 (underlying!6456 (cache!3418 thiss!28743))) lt!833096))))

(assert (=> b!2238792 (= lt!833087 (toList!1370 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))))

(declare-fun lt!833095 () Unit!39333)

(declare-fun lt!833074 () Unit!39333)

(assert (=> b!2238792 (= lt!833095 lt!833074)))

(declare-fun lt!833078 () List!26466)

(declare-datatypes ((Option!5139 0))(
  ( (None!5138) (Some!5138 (v!29992 List!26465)) )
))
(declare-fun isDefined!4147 (Option!5139) Bool)

(declare-fun getValueByKey!84 (List!26466 (_ BitVec 64)) Option!5139)

(assert (=> b!2238792 (isDefined!4147 (getValueByKey!84 lt!833078 lt!833096))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!52 (List!26466 (_ BitVec 64)) Unit!39333)

(assert (=> b!2238792 (= lt!833074 (lemmaContainsKeyImpliesGetValueByKeyDefined!52 lt!833078 lt!833096))))

(assert (=> b!2238792 (= lt!833078 (toList!1370 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))))

(declare-fun Unit!39335 () Unit!39333)

(assert (=> b!2238792 (= e!1431218 Unit!39335)))

(declare-fun b!2238793 () Bool)

(declare-fun Unit!39336 () Unit!39333)

(assert (=> b!2238793 (= e!1431218 Unit!39336)))

(assert (= (and d!665626 c!356637) b!2238791))

(assert (= (and d!665626 (not c!356637)) b!2238789))

(assert (= (and b!2238789 c!356638) b!2238792))

(assert (= (and b!2238789 (not c!356638)) b!2238793))

(assert (= (and d!665626 c!356639) b!2238788))

(assert (= (and d!665626 (not c!356639)) b!2238790))

(declare-fun b_lambda!71741 () Bool)

(assert (=> (not b_lambda!71741) (not b!2238790)))

(declare-fun t!199897 () Bool)

(declare-fun tb!132861 () Bool)

(assert (=> (and b!2238744 (= (defaultValue!3199 (cache!3418 thiss!28743)) (defaultValue!3199 (cache!3418 thiss!28743))) t!199897) tb!132861))

(assert (=> b!2238790 t!199897))

(declare-fun result!161778 () Bool)

(declare-fun b_and!174981 () Bool)

(assert (= b_and!174979 (and (=> t!199897 result!161778) b_and!174981)))

(declare-fun b_lambda!71743 () Bool)

(assert (=> (not b_lambda!71743) (not b!2238791)))

(assert (=> b!2238791 t!199897))

(declare-fun b_and!174983 () Bool)

(assert (= b_and!174981 (and (=> t!199897 result!161778) b_and!174983)))

(assert (=> b!2238788 m!2671773))

(declare-fun m!2671781 () Bool)

(assert (=> b!2238788 m!2671781))

(assert (=> b!2238788 m!2671781))

(declare-fun m!2671783 () Bool)

(assert (=> b!2238788 m!2671783))

(assert (=> d!665626 m!2671738))

(assert (=> d!665626 m!2671740))

(declare-fun m!2671785 () Bool)

(assert (=> b!2238790 m!2671785))

(assert (=> b!2238791 m!2671785))

(declare-fun m!2671787 () Bool)

(assert (=> b!2238789 m!2671787))

(declare-fun m!2671789 () Bool)

(assert (=> b!2238789 m!2671789))

(declare-fun m!2671791 () Bool)

(assert (=> b!2238789 m!2671791))

(declare-fun m!2671793 () Bool)

(assert (=> b!2238789 m!2671793))

(declare-fun m!2671795 () Bool)

(assert (=> b!2238789 m!2671795))

(assert (=> b!2238789 m!2671789))

(declare-fun m!2671797 () Bool)

(assert (=> b!2238789 m!2671797))

(declare-fun m!2671799 () Bool)

(assert (=> b!2238789 m!2671799))

(assert (=> b!2238789 m!2671795))

(declare-fun m!2671801 () Bool)

(assert (=> b!2238789 m!2671801))

(declare-fun m!2671803 () Bool)

(assert (=> b!2238789 m!2671803))

(assert (=> b!2238789 m!2671791))

(declare-fun m!2671805 () Bool)

(assert (=> b!2238789 m!2671805))

(assert (=> b!2238789 m!2671766))

(assert (=> b!2238789 m!2671803))

(declare-fun m!2671807 () Bool)

(assert (=> b!2238789 m!2671807))

(declare-fun m!2671809 () Bool)

(assert (=> b!2238789 m!2671809))

(declare-fun m!2671811 () Bool)

(assert (=> b!2238789 m!2671811))

(declare-fun m!2671813 () Bool)

(assert (=> b!2238789 m!2671813))

(declare-fun m!2671815 () Bool)

(assert (=> b!2238789 m!2671815))

(assert (=> b!2238789 m!2671791))

(declare-fun m!2671817 () Bool)

(assert (=> b!2238789 m!2671817))

(declare-fun m!2671819 () Bool)

(assert (=> b!2238789 m!2671819))

(assert (=> b!2238789 m!2671795))

(declare-fun m!2671821 () Bool)

(assert (=> b!2238789 m!2671821))

(declare-fun m!2671823 () Bool)

(assert (=> b!2238789 m!2671823))

(declare-fun m!2671825 () Bool)

(assert (=> b!2238789 m!2671825))

(assert (=> b!2238789 m!2671813))

(declare-fun m!2671827 () Bool)

(assert (=> b!2238789 m!2671827))

(declare-fun m!2671829 () Bool)

(assert (=> b!2238789 m!2671829))

(assert (=> b!2238789 m!2671825))

(assert (=> b!2238789 m!2671821))

(declare-fun m!2671831 () Bool)

(assert (=> b!2238792 m!2671831))

(declare-fun m!2671833 () Bool)

(assert (=> b!2238792 m!2671833))

(assert (=> b!2238792 m!2671825))

(declare-fun m!2671835 () Bool)

(assert (=> b!2238792 m!2671835))

(assert (=> b!2238792 m!2671766))

(assert (=> b!2238792 m!2671833))

(declare-fun m!2671837 () Bool)

(assert (=> b!2238792 m!2671837))

(declare-fun m!2671839 () Bool)

(assert (=> b!2238792 m!2671839))

(assert (=> b!2238747 d!665626))

(declare-fun b!2238816 () Bool)

(declare-fun e!1431235 () Bool)

(declare-fun nullable!1789 (Regex!6489) Bool)

(assert (=> b!2238816 (= e!1431235 (nullable!1789 (regOne!13490 (_1!15381 lt!833006))))))

(declare-fun b!2238817 () Bool)

(declare-fun c!356652 () Bool)

(assert (=> b!2238817 (= c!356652 ((_ is Star!6489) (_1!15381 lt!833006)))))

(declare-fun e!1431234 () (InoxSet Context!4074))

(declare-fun e!1431236 () (InoxSet Context!4074))

(assert (=> b!2238817 (= e!1431234 e!1431236)))

(declare-fun c!356654 () Bool)

(declare-fun call!135057 () List!26464)

(declare-fun bm!135047 () Bool)

(declare-fun c!356651 () Bool)

(declare-fun c!356650 () Bool)

(declare-fun call!135055 () (InoxSet Context!4074))

(assert (=> bm!135047 (= call!135055 (derivationStepZipperDown!79 (ite c!356650 (regOne!13491 (_1!15381 lt!833006)) (ite c!356651 (regTwo!13490 (_1!15381 lt!833006)) (ite c!356654 (regOne!13490 (_1!15381 lt!833006)) (reg!6818 (_1!15381 lt!833006))))) (ite (or c!356650 c!356651) (_2!15381 lt!833006) (Context!4075 call!135057)) (_3!2495 lt!833006)))))

(declare-fun b!2238818 () Bool)

(declare-fun call!135056 () (InoxSet Context!4074))

(assert (=> b!2238818 (= e!1431236 call!135056)))

(declare-fun d!665628 () Bool)

(declare-fun c!356653 () Bool)

(assert (=> d!665628 (= c!356653 (and ((_ is ElementMatch!6489) (_1!15381 lt!833006)) (= (c!356630 (_1!15381 lt!833006)) (_3!2495 lt!833006))))))

(declare-fun e!1431237 () (InoxSet Context!4074))

(assert (=> d!665628 (= (derivationStepZipperDown!79 (_1!15381 lt!833006) (_2!15381 lt!833006) (_3!2495 lt!833006)) e!1431237)))

(declare-fun bm!135048 () Bool)

(declare-fun call!135054 () (InoxSet Context!4074))

(assert (=> bm!135048 (= call!135056 call!135054)))

(declare-fun b!2238819 () Bool)

(assert (=> b!2238819 (= e!1431236 ((as const (Array Context!4074 Bool)) false))))

(declare-fun b!2238820 () Bool)

(assert (=> b!2238820 (= e!1431234 call!135056)))

(declare-fun b!2238821 () Bool)

(assert (=> b!2238821 (= e!1431237 (store ((as const (Array Context!4074 Bool)) false) (_2!15381 lt!833006) true))))

(declare-fun b!2238822 () Bool)

(assert (=> b!2238822 (= c!356651 e!1431235)))

(declare-fun res!957382 () Bool)

(assert (=> b!2238822 (=> (not res!957382) (not e!1431235))))

(assert (=> b!2238822 (= res!957382 ((_ is Concat!10827) (_1!15381 lt!833006)))))

(declare-fun e!1431232 () (InoxSet Context!4074))

(declare-fun e!1431233 () (InoxSet Context!4074))

(assert (=> b!2238822 (= e!1431232 e!1431233)))

(declare-fun b!2238823 () Bool)

(assert (=> b!2238823 (= e!1431237 e!1431232)))

(assert (=> b!2238823 (= c!356650 ((_ is Union!6489) (_1!15381 lt!833006)))))

(declare-fun b!2238824 () Bool)

(declare-fun call!135052 () (InoxSet Context!4074))

(assert (=> b!2238824 (= e!1431232 ((_ map or) call!135055 call!135052))))

(declare-fun call!135053 () List!26464)

(declare-fun bm!135049 () Bool)

(assert (=> bm!135049 (= call!135052 (derivationStepZipperDown!79 (ite c!356650 (regTwo!13491 (_1!15381 lt!833006)) (regOne!13490 (_1!15381 lt!833006))) (ite c!356650 (_2!15381 lt!833006) (Context!4075 call!135053)) (_3!2495 lt!833006)))))

(declare-fun bm!135050 () Bool)

(assert (=> bm!135050 (= call!135054 call!135055)))

(declare-fun b!2238825 () Bool)

(assert (=> b!2238825 (= e!1431233 e!1431234)))

(assert (=> b!2238825 (= c!356654 ((_ is Concat!10827) (_1!15381 lt!833006)))))

(declare-fun bm!135051 () Bool)

(assert (=> bm!135051 (= call!135057 call!135053)))

(declare-fun bm!135052 () Bool)

(declare-fun $colon$colon!535 (List!26464 Regex!6489) List!26464)

(assert (=> bm!135052 (= call!135053 ($colon$colon!535 (exprs!2537 (_2!15381 lt!833006)) (ite (or c!356651 c!356654) (regTwo!13490 (_1!15381 lt!833006)) (_1!15381 lt!833006))))))

(declare-fun b!2238826 () Bool)

(assert (=> b!2238826 (= e!1431233 ((_ map or) call!135052 call!135054))))

(assert (= (and d!665628 c!356653) b!2238821))

(assert (= (and d!665628 (not c!356653)) b!2238823))

(assert (= (and b!2238823 c!356650) b!2238824))

(assert (= (and b!2238823 (not c!356650)) b!2238822))

(assert (= (and b!2238822 res!957382) b!2238816))

(assert (= (and b!2238822 c!356651) b!2238826))

(assert (= (and b!2238822 (not c!356651)) b!2238825))

(assert (= (and b!2238825 c!356654) b!2238820))

(assert (= (and b!2238825 (not c!356654)) b!2238817))

(assert (= (and b!2238817 c!356652) b!2238818))

(assert (= (and b!2238817 (not c!356652)) b!2238819))

(assert (= (or b!2238820 b!2238818) bm!135051))

(assert (= (or b!2238820 b!2238818) bm!135048))

(assert (= (or b!2238826 bm!135048) bm!135050))

(assert (= (or b!2238826 bm!135051) bm!135052))

(assert (= (or b!2238824 b!2238826) bm!135049))

(assert (= (or b!2238824 bm!135050) bm!135047))

(declare-fun m!2671841 () Bool)

(assert (=> b!2238821 m!2671841))

(declare-fun m!2671843 () Bool)

(assert (=> bm!135052 m!2671843))

(declare-fun m!2671845 () Bool)

(assert (=> bm!135049 m!2671845))

(declare-fun m!2671847 () Bool)

(assert (=> b!2238816 m!2671847))

(declare-fun m!2671849 () Bool)

(assert (=> bm!135047 m!2671849))

(assert (=> b!2238747 d!665628))

(declare-fun b!2238846 () Bool)

(declare-fun e!1431254 () Bool)

(declare-fun e!1431255 () Bool)

(assert (=> b!2238846 (= e!1431254 e!1431255)))

(declare-fun res!957394 () Bool)

(assert (=> b!2238846 (= res!957394 (not (nullable!1789 (reg!6818 r!4750))))))

(assert (=> b!2238846 (=> (not res!957394) (not e!1431255))))

(declare-fun b!2238847 () Bool)

(declare-fun e!1431256 () Bool)

(declare-fun e!1431252 () Bool)

(assert (=> b!2238847 (= e!1431256 e!1431252)))

(declare-fun res!957395 () Bool)

(assert (=> b!2238847 (=> (not res!957395) (not e!1431252))))

(declare-fun call!135066 () Bool)

(assert (=> b!2238847 (= res!957395 call!135066)))

(declare-fun bm!135059 () Bool)

(declare-fun call!135065 () Bool)

(declare-fun c!356660 () Bool)

(assert (=> bm!135059 (= call!135065 (validRegex!2442 (ite c!356660 (regTwo!13491 r!4750) (regTwo!13490 r!4750))))))

(declare-fun b!2238848 () Bool)

(declare-fun call!135064 () Bool)

(assert (=> b!2238848 (= e!1431255 call!135064)))

(declare-fun b!2238849 () Bool)

(declare-fun e!1431257 () Bool)

(assert (=> b!2238849 (= e!1431257 call!135065)))

(declare-fun bm!135060 () Bool)

(declare-fun c!356659 () Bool)

(assert (=> bm!135060 (= call!135064 (validRegex!2442 (ite c!356659 (reg!6818 r!4750) (ite c!356660 (regOne!13491 r!4750) (regOne!13490 r!4750)))))))

(declare-fun b!2238850 () Bool)

(declare-fun e!1431253 () Bool)

(assert (=> b!2238850 (= e!1431254 e!1431253)))

(assert (=> b!2238850 (= c!356660 ((_ is Union!6489) r!4750))))

(declare-fun b!2238851 () Bool)

(declare-fun res!957393 () Bool)

(assert (=> b!2238851 (=> (not res!957393) (not e!1431257))))

(assert (=> b!2238851 (= res!957393 call!135066)))

(assert (=> b!2238851 (= e!1431253 e!1431257)))

(declare-fun b!2238852 () Bool)

(assert (=> b!2238852 (= e!1431252 call!135065)))

(declare-fun d!665630 () Bool)

(declare-fun res!957396 () Bool)

(declare-fun e!1431258 () Bool)

(assert (=> d!665630 (=> res!957396 e!1431258)))

(assert (=> d!665630 (= res!957396 ((_ is ElementMatch!6489) r!4750))))

(assert (=> d!665630 (= (validRegex!2442 r!4750) e!1431258)))

(declare-fun b!2238845 () Bool)

(declare-fun res!957397 () Bool)

(assert (=> b!2238845 (=> res!957397 e!1431256)))

(assert (=> b!2238845 (= res!957397 (not ((_ is Concat!10827) r!4750)))))

(assert (=> b!2238845 (= e!1431253 e!1431256)))

(declare-fun bm!135061 () Bool)

(assert (=> bm!135061 (= call!135066 call!135064)))

(declare-fun b!2238853 () Bool)

(assert (=> b!2238853 (= e!1431258 e!1431254)))

(assert (=> b!2238853 (= c!356659 ((_ is Star!6489) r!4750))))

(assert (= (and d!665630 (not res!957396)) b!2238853))

(assert (= (and b!2238853 c!356659) b!2238846))

(assert (= (and b!2238853 (not c!356659)) b!2238850))

(assert (= (and b!2238846 res!957394) b!2238848))

(assert (= (and b!2238850 c!356660) b!2238851))

(assert (= (and b!2238850 (not c!356660)) b!2238845))

(assert (= (and b!2238851 res!957393) b!2238849))

(assert (= (and b!2238845 (not res!957397)) b!2238847))

(assert (= (and b!2238847 res!957395) b!2238852))

(assert (= (or b!2238851 b!2238847) bm!135061))

(assert (= (or b!2238849 b!2238852) bm!135059))

(assert (= (or b!2238848 bm!135061) bm!135060))

(declare-fun m!2671851 () Bool)

(assert (=> b!2238846 m!2671851))

(declare-fun m!2671853 () Bool)

(assert (=> bm!135059 m!2671853))

(declare-fun m!2671855 () Bool)

(assert (=> bm!135060 m!2671855))

(assert (=> b!2238756 d!665630))

(declare-fun b!2238855 () Bool)

(declare-fun e!1431261 () Bool)

(declare-fun e!1431262 () Bool)

(assert (=> b!2238855 (= e!1431261 e!1431262)))

(declare-fun res!957399 () Bool)

(assert (=> b!2238855 (= res!957399 (not (nullable!1789 (reg!6818 (_1!15381 lt!833006)))))))

(assert (=> b!2238855 (=> (not res!957399) (not e!1431262))))

(declare-fun b!2238856 () Bool)

(declare-fun e!1431263 () Bool)

(declare-fun e!1431259 () Bool)

(assert (=> b!2238856 (= e!1431263 e!1431259)))

(declare-fun res!957400 () Bool)

(assert (=> b!2238856 (=> (not res!957400) (not e!1431259))))

(declare-fun call!135069 () Bool)

(assert (=> b!2238856 (= res!957400 call!135069)))

(declare-fun bm!135062 () Bool)

(declare-fun call!135068 () Bool)

(declare-fun c!356662 () Bool)

(assert (=> bm!135062 (= call!135068 (validRegex!2442 (ite c!356662 (regTwo!13491 (_1!15381 lt!833006)) (regTwo!13490 (_1!15381 lt!833006)))))))

(declare-fun b!2238857 () Bool)

(declare-fun call!135067 () Bool)

(assert (=> b!2238857 (= e!1431262 call!135067)))

(declare-fun b!2238858 () Bool)

(declare-fun e!1431264 () Bool)

(assert (=> b!2238858 (= e!1431264 call!135068)))

(declare-fun bm!135063 () Bool)

(declare-fun c!356661 () Bool)

(assert (=> bm!135063 (= call!135067 (validRegex!2442 (ite c!356661 (reg!6818 (_1!15381 lt!833006)) (ite c!356662 (regOne!13491 (_1!15381 lt!833006)) (regOne!13490 (_1!15381 lt!833006))))))))

(declare-fun b!2238859 () Bool)

(declare-fun e!1431260 () Bool)

(assert (=> b!2238859 (= e!1431261 e!1431260)))

(assert (=> b!2238859 (= c!356662 ((_ is Union!6489) (_1!15381 lt!833006)))))

(declare-fun b!2238860 () Bool)

(declare-fun res!957398 () Bool)

(assert (=> b!2238860 (=> (not res!957398) (not e!1431264))))

(assert (=> b!2238860 (= res!957398 call!135069)))

(assert (=> b!2238860 (= e!1431260 e!1431264)))

(declare-fun b!2238861 () Bool)

(assert (=> b!2238861 (= e!1431259 call!135068)))

(declare-fun d!665632 () Bool)

(declare-fun res!957401 () Bool)

(declare-fun e!1431265 () Bool)

(assert (=> d!665632 (=> res!957401 e!1431265)))

(assert (=> d!665632 (= res!957401 ((_ is ElementMatch!6489) (_1!15381 lt!833006)))))

(assert (=> d!665632 (= (validRegex!2442 (_1!15381 lt!833006)) e!1431265)))

(declare-fun b!2238854 () Bool)

(declare-fun res!957402 () Bool)

(assert (=> b!2238854 (=> res!957402 e!1431263)))

(assert (=> b!2238854 (= res!957402 (not ((_ is Concat!10827) (_1!15381 lt!833006))))))

(assert (=> b!2238854 (= e!1431260 e!1431263)))

(declare-fun bm!135064 () Bool)

(assert (=> bm!135064 (= call!135069 call!135067)))

(declare-fun b!2238862 () Bool)

(assert (=> b!2238862 (= e!1431265 e!1431261)))

(assert (=> b!2238862 (= c!356661 ((_ is Star!6489) (_1!15381 lt!833006)))))

(assert (= (and d!665632 (not res!957401)) b!2238862))

(assert (= (and b!2238862 c!356661) b!2238855))

(assert (= (and b!2238862 (not c!356661)) b!2238859))

(assert (= (and b!2238855 res!957399) b!2238857))

(assert (= (and b!2238859 c!356662) b!2238860))

(assert (= (and b!2238859 (not c!356662)) b!2238854))

(assert (= (and b!2238860 res!957398) b!2238858))

(assert (= (and b!2238854 (not res!957402)) b!2238856))

(assert (= (and b!2238856 res!957400) b!2238861))

(assert (= (or b!2238860 b!2238856) bm!135064))

(assert (= (or b!2238858 b!2238861) bm!135062))

(assert (= (or b!2238857 bm!135064) bm!135063))

(declare-fun m!2671857 () Bool)

(assert (=> b!2238855 m!2671857))

(declare-fun m!2671859 () Bool)

(assert (=> bm!135062 m!2671859))

(declare-fun m!2671861 () Bool)

(assert (=> bm!135063 m!2671861))

(assert (=> b!2238756 d!665632))

(assert (=> b!2238756 d!665626))

(declare-fun d!665634 () Bool)

(declare-fun dynLambda!11539 (Int tuple2!25772) Bool)

(assert (=> d!665634 (dynLambda!11539 lambda!84640 (tuple2!25773 lt!833006 (apply!6498 (cache!3418 thiss!28743) lt!833006)))))

(declare-fun lt!833100 () Unit!39333)

(declare-fun choose!13141 (MutableMap!3037 tuple3!4050 Int) Unit!39333)

(assert (=> d!665634 (= lt!833100 (choose!13141 (cache!3418 thiss!28743) lt!833006 lambda!84640))))

(assert (=> d!665634 (valid!2356 (cache!3418 thiss!28743))))

(assert (=> d!665634 (= (lemmaForallPairsThenForLookup!31 (cache!3418 thiss!28743) lt!833006 lambda!84640) lt!833100)))

(declare-fun b_lambda!71745 () Bool)

(assert (=> (not b_lambda!71745) (not d!665634)))

(declare-fun bs!454266 () Bool)

(assert (= bs!454266 d!665634))

(assert (=> bs!454266 m!2671746))

(declare-fun m!2671863 () Bool)

(assert (=> bs!454266 m!2671863))

(declare-fun m!2671865 () Bool)

(assert (=> bs!454266 m!2671865))

(assert (=> bs!454266 m!2671740))

(assert (=> b!2238756 d!665634))

(declare-fun bs!454267 () Bool)

(declare-fun b!2238887 () Bool)

(assert (= bs!454267 (and b!2238887 b!2238763)))

(declare-fun lambda!84659 () Int)

(assert (=> bs!454267 (= lambda!84659 lambda!84643)))

(declare-fun bs!454268 () Bool)

(assert (= bs!454268 (and b!2238887 b!2238789)))

(assert (=> bs!454268 (= lambda!84659 lambda!84656)))

(declare-fun b!2238885 () Bool)

(declare-fun e!1431285 () Unit!39333)

(declare-fun Unit!39337 () Unit!39333)

(assert (=> b!2238885 (= e!1431285 Unit!39337)))

(declare-fun bm!135077 () Bool)

(declare-fun call!135084 () Option!5138)

(declare-fun call!135086 () List!26465)

(assert (=> bm!135077 (= call!135084 (getPair!34 call!135086 lt!833006))))

(declare-fun b!2238886 () Bool)

(declare-fun e!1431286 () Unit!39333)

(declare-fun e!1431284 () Unit!39333)

(assert (=> b!2238886 (= e!1431286 e!1431284)))

(declare-fun res!957410 () Bool)

(declare-fun call!135083 () Bool)

(assert (=> b!2238886 (= res!957410 call!135083)))

(declare-fun e!1431283 () Bool)

(assert (=> b!2238886 (=> (not res!957410) (not e!1431283))))

(declare-fun c!356672 () Bool)

(assert (=> b!2238886 (= c!356672 e!1431283)))

(declare-fun lt!833159 () (_ BitVec 64))

(assert (=> b!2238887 (= e!1431285 (forallContained!781 (toList!1370 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))) lambda!84659 (tuple2!25775 lt!833159 (apply!6499 (v!29989 (underlying!6456 (cache!3418 thiss!28743))) lt!833159))))))

(declare-fun c!356673 () Bool)

(assert (=> b!2238887 (= c!356673 (not (contains!4431 (toList!1370 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))) (tuple2!25775 lt!833159 (apply!6499 (v!29989 (underlying!6456 (cache!3418 thiss!28743))) lt!833159)))))))

(declare-fun lt!833146 () Unit!39333)

(declare-fun e!1431282 () Unit!39333)

(assert (=> b!2238887 (= lt!833146 e!1431282)))

(declare-fun bm!135078 () Bool)

(declare-fun call!135087 () ListLongMap!339)

(assert (=> bm!135078 (= call!135087 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))))))

(declare-fun call!135085 () (_ BitVec 64))

(declare-fun bm!135079 () Bool)

(declare-fun c!356674 () Bool)

(declare-fun lt!833149 () ListLongMap!339)

(assert (=> bm!135079 (= call!135083 (contains!4432 (ite c!356674 lt!833149 call!135087) call!135085))))

(declare-fun d!665636 () Bool)

(declare-fun lt!833148 () Bool)

(declare-fun contains!4433 (ListMap!855 tuple3!4050) Bool)

(assert (=> d!665636 (= lt!833148 (contains!4433 (map!5437 (cache!3418 thiss!28743)) lt!833006))))

(declare-fun e!1431280 () Bool)

(assert (=> d!665636 (= lt!833148 e!1431280)))

(declare-fun res!957409 () Bool)

(assert (=> d!665636 (=> (not res!957409) (not e!1431280))))

(declare-fun contains!4434 (MutLongMap!3127 (_ BitVec 64)) Bool)

(assert (=> d!665636 (= res!957409 (contains!4434 (v!29989 (underlying!6456 (cache!3418 thiss!28743))) lt!833159))))

(declare-fun lt!833145 () Unit!39333)

(assert (=> d!665636 (= lt!833145 e!1431286)))

(assert (=> d!665636 (= c!356674 (contains!4433 (extractMap!114 (toList!1370 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))))) lt!833006))))

(declare-fun lt!833152 () Unit!39333)

(assert (=> d!665636 (= lt!833152 e!1431285)))

(declare-fun c!356671 () Bool)

(assert (=> d!665636 (= c!356671 (contains!4434 (v!29989 (underlying!6456 (cache!3418 thiss!28743))) lt!833159))))

(assert (=> d!665636 (= lt!833159 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006))))

(assert (=> d!665636 (valid!2356 (cache!3418 thiss!28743))))

(assert (=> d!665636 (= (contains!4430 (cache!3418 thiss!28743) lt!833006) lt!833148)))

(declare-fun bm!135080 () Bool)

(assert (=> bm!135080 (= call!135086 (apply!6500 (ite c!356674 lt!833149 call!135087) call!135085))))

(declare-fun b!2238888 () Bool)

(declare-fun e!1431281 () Bool)

(declare-fun call!135082 () Bool)

(assert (=> b!2238888 (= e!1431281 call!135082)))

(declare-fun b!2238889 () Bool)

(declare-fun Unit!39338 () Unit!39333)

(assert (=> b!2238889 (= e!1431282 Unit!39338)))

(declare-fun b!2238890 () Bool)

(assert (=> b!2238890 false))

(declare-fun lt!833155 () Unit!39333)

(declare-fun lt!833157 () Unit!39333)

(assert (=> b!2238890 (= lt!833155 lt!833157)))

(declare-fun lt!833141 () List!26466)

(declare-fun lt!833160 () List!26465)

(assert (=> b!2238890 (contains!4431 lt!833141 (tuple2!25775 lt!833159 lt!833160))))

(assert (=> b!2238890 (= lt!833157 (lemmaGetValueByKeyImpliesContainsTuple!35 lt!833141 lt!833159 lt!833160))))

(assert (=> b!2238890 (= lt!833160 (apply!6499 (v!29989 (underlying!6456 (cache!3418 thiss!28743))) lt!833159))))

(assert (=> b!2238890 (= lt!833141 (toList!1370 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))))

(declare-fun lt!833142 () Unit!39333)

(declare-fun lt!833153 () Unit!39333)

(assert (=> b!2238890 (= lt!833142 lt!833153)))

(declare-fun lt!833154 () List!26466)

(assert (=> b!2238890 (isDefined!4147 (getValueByKey!84 lt!833154 lt!833159))))

(assert (=> b!2238890 (= lt!833153 (lemmaContainsKeyImpliesGetValueByKeyDefined!52 lt!833154 lt!833159))))

(assert (=> b!2238890 (= lt!833154 (toList!1370 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))))

(declare-fun lt!833156 () Unit!39333)

(declare-fun lt!833147 () Unit!39333)

(assert (=> b!2238890 (= lt!833156 lt!833147)))

(declare-fun lt!833158 () List!26466)

(declare-fun containsKey!83 (List!26466 (_ BitVec 64)) Bool)

(assert (=> b!2238890 (containsKey!83 lt!833158 lt!833159)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!35 (List!26466 (_ BitVec 64)) Unit!39333)

(assert (=> b!2238890 (= lt!833147 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!35 lt!833158 lt!833159))))

(assert (=> b!2238890 (= lt!833158 (toList!1370 (map!5436 (v!29989 (underlying!6456 (cache!3418 thiss!28743))))))))

(declare-fun Unit!39339 () Unit!39333)

(assert (=> b!2238890 (= e!1431282 Unit!39339)))

(declare-fun bm!135081 () Bool)

(assert (=> bm!135081 (= call!135082 (isDefined!4146 call!135084))))

(declare-fun b!2238891 () Bool)

(assert (=> b!2238891 (= e!1431280 (isDefined!4146 (getPair!34 (apply!6499 (v!29989 (underlying!6456 (cache!3418 thiss!28743))) lt!833159) lt!833006)))))

(declare-fun b!2238892 () Bool)

(assert (=> b!2238892 (= e!1431283 call!135082)))

(declare-fun bm!135082 () Bool)

(assert (=> bm!135082 (= call!135085 (hash!581 (hashF!4960 (cache!3418 thiss!28743)) lt!833006))))

(declare-fun b!2238893 () Bool)

(assert (=> b!2238893 false))

(declare-fun lt!833143 () Unit!39333)

(declare-fun lt!833150 () Unit!39333)

(assert (=> b!2238893 (= lt!833143 lt!833150)))

(declare-fun lt!833144 () ListLongMap!339)

(assert (=> b!2238893 (contains!4433 (extractMap!114 (toList!1370 lt!833144)) lt!833006)))

(declare-fun lemmaInLongMapThenInGenericMap!34 (ListLongMap!339 tuple3!4050 Hashable!3037) Unit!39333)

(assert (=> b!2238893 (= lt!833150 (lemmaInLongMapThenInGenericMap!34 lt!833144 lt!833006 (hashF!4960 (cache!3418 thiss!28743))))))

(assert (=> b!2238893 (= lt!833144 call!135087)))

(declare-fun Unit!39340 () Unit!39333)

(assert (=> b!2238893 (= e!1431284 Unit!39340)))

(declare-fun b!2238894 () Bool)

(declare-fun lt!833151 () Unit!39333)

(assert (=> b!2238894 (= e!1431286 lt!833151)))

(assert (=> b!2238894 (= lt!833149 call!135087)))

(declare-fun lemmaInGenericMapThenInLongMap!34 (ListLongMap!339 tuple3!4050 Hashable!3037) Unit!39333)

(assert (=> b!2238894 (= lt!833151 (lemmaInGenericMapThenInLongMap!34 lt!833149 lt!833006 (hashF!4960 (cache!3418 thiss!28743))))))

(declare-fun res!957411 () Bool)

(assert (=> b!2238894 (= res!957411 call!135083)))

(assert (=> b!2238894 (=> (not res!957411) (not e!1431281))))

(assert (=> b!2238894 e!1431281))

(declare-fun b!2238895 () Bool)

(declare-fun Unit!39341 () Unit!39333)

(assert (=> b!2238895 (= e!1431284 Unit!39341)))

(assert (= (and d!665636 c!356671) b!2238887))

(assert (= (and d!665636 (not c!356671)) b!2238885))

(assert (= (and b!2238887 c!356673) b!2238890))

(assert (= (and b!2238887 (not c!356673)) b!2238889))

(assert (= (and d!665636 c!356674) b!2238894))

(assert (= (and d!665636 (not c!356674)) b!2238886))

(assert (= (and b!2238894 res!957411) b!2238888))

(assert (= (and b!2238886 res!957410) b!2238892))

(assert (= (and b!2238886 c!356672) b!2238893))

(assert (= (and b!2238886 (not c!356672)) b!2238895))

(assert (= (or b!2238894 b!2238886 b!2238892 b!2238893) bm!135078))

(assert (= (or b!2238894 b!2238888 b!2238886 b!2238892) bm!135082))

(assert (= (or b!2238894 b!2238886) bm!135079))

(assert (= (or b!2238888 b!2238892) bm!135080))

(assert (= (or b!2238888 b!2238892) bm!135077))

(assert (= (or b!2238888 b!2238892) bm!135081))

(assert (= (and d!665636 res!957409) b!2238891))

(assert (=> bm!135078 m!2671766))

(declare-fun m!2671867 () Bool)

(assert (=> bm!135080 m!2671867))

(declare-fun m!2671869 () Bool)

(assert (=> b!2238893 m!2671869))

(assert (=> b!2238893 m!2671869))

(declare-fun m!2671871 () Bool)

(assert (=> b!2238893 m!2671871))

(declare-fun m!2671873 () Bool)

(assert (=> b!2238893 m!2671873))

(declare-fun m!2671875 () Bool)

(assert (=> bm!135077 m!2671875))

(declare-fun m!2671877 () Bool)

(assert (=> b!2238894 m!2671877))

(assert (=> bm!135082 m!2671795))

(declare-fun m!2671879 () Bool)

(assert (=> b!2238891 m!2671879))

(assert (=> b!2238891 m!2671879))

(declare-fun m!2671881 () Bool)

(assert (=> b!2238891 m!2671881))

(assert (=> b!2238891 m!2671881))

(declare-fun m!2671883 () Bool)

(assert (=> b!2238891 m!2671883))

(declare-fun m!2671885 () Bool)

(assert (=> b!2238890 m!2671885))

(declare-fun m!2671887 () Bool)

(assert (=> b!2238890 m!2671887))

(declare-fun m!2671889 () Bool)

(assert (=> b!2238890 m!2671889))

(declare-fun m!2671891 () Bool)

(assert (=> b!2238890 m!2671891))

(assert (=> b!2238890 m!2671766))

(declare-fun m!2671893 () Bool)

(assert (=> b!2238890 m!2671893))

(declare-fun m!2671895 () Bool)

(assert (=> b!2238890 m!2671895))

(declare-fun m!2671897 () Bool)

(assert (=> b!2238890 m!2671897))

(assert (=> b!2238890 m!2671893))

(assert (=> b!2238890 m!2671879))

(assert (=> d!665636 m!2671740))

(declare-fun m!2671899 () Bool)

(assert (=> d!665636 m!2671899))

(assert (=> d!665636 m!2671766))

(declare-fun m!2671901 () Bool)

(assert (=> d!665636 m!2671901))

(assert (=> d!665636 m!2671773))

(declare-fun m!2671903 () Bool)

(assert (=> d!665636 m!2671903))

(assert (=> d!665636 m!2671795))

(assert (=> d!665636 m!2671773))

(assert (=> d!665636 m!2671901))

(declare-fun m!2671905 () Bool)

(assert (=> d!665636 m!2671905))

(declare-fun m!2671907 () Bool)

(assert (=> bm!135079 m!2671907))

(declare-fun m!2671909 () Bool)

(assert (=> bm!135081 m!2671909))

(assert (=> b!2238887 m!2671766))

(assert (=> b!2238887 m!2671879))

(declare-fun m!2671911 () Bool)

(assert (=> b!2238887 m!2671911))

(declare-fun m!2671913 () Bool)

(assert (=> b!2238887 m!2671913))

(assert (=> b!2238745 d!665636))

(declare-fun b!2238906 () Bool)

(declare-fun e!1431289 () Bool)

(assert (=> b!2238906 (= e!1431289 tp_is_empty!10199)))

(declare-fun b!2238909 () Bool)

(declare-fun tp!704763 () Bool)

(declare-fun tp!704761 () Bool)

(assert (=> b!2238909 (= e!1431289 (and tp!704763 tp!704761))))

(assert (=> b!2238750 (= tp!704738 e!1431289)))

(declare-fun b!2238908 () Bool)

(declare-fun tp!704762 () Bool)

(assert (=> b!2238908 (= e!1431289 tp!704762)))

(declare-fun b!2238907 () Bool)

(declare-fun tp!704760 () Bool)

(declare-fun tp!704759 () Bool)

(assert (=> b!2238907 (= e!1431289 (and tp!704760 tp!704759))))

(assert (= (and b!2238750 ((_ is ElementMatch!6489) (regOne!13490 r!4750))) b!2238906))

(assert (= (and b!2238750 ((_ is Concat!10827) (regOne!13490 r!4750))) b!2238907))

(assert (= (and b!2238750 ((_ is Star!6489) (regOne!13490 r!4750))) b!2238908))

(assert (= (and b!2238750 ((_ is Union!6489) (regOne!13490 r!4750))) b!2238909))

(declare-fun b!2238910 () Bool)

(declare-fun e!1431290 () Bool)

(assert (=> b!2238910 (= e!1431290 tp_is_empty!10199)))

(declare-fun b!2238913 () Bool)

(declare-fun tp!704768 () Bool)

(declare-fun tp!704766 () Bool)

(assert (=> b!2238913 (= e!1431290 (and tp!704768 tp!704766))))

(assert (=> b!2238750 (= tp!704746 e!1431290)))

(declare-fun b!2238912 () Bool)

(declare-fun tp!704767 () Bool)

(assert (=> b!2238912 (= e!1431290 tp!704767)))

(declare-fun b!2238911 () Bool)

(declare-fun tp!704765 () Bool)

(declare-fun tp!704764 () Bool)

(assert (=> b!2238911 (= e!1431290 (and tp!704765 tp!704764))))

(assert (= (and b!2238750 ((_ is ElementMatch!6489) (regTwo!13490 r!4750))) b!2238910))

(assert (= (and b!2238750 ((_ is Concat!10827) (regTwo!13490 r!4750))) b!2238911))

(assert (= (and b!2238750 ((_ is Star!6489) (regTwo!13490 r!4750))) b!2238912))

(assert (= (and b!2238750 ((_ is Union!6489) (regTwo!13490 r!4750))) b!2238913))

(declare-fun b!2238914 () Bool)

(declare-fun e!1431291 () Bool)

(assert (=> b!2238914 (= e!1431291 tp_is_empty!10199)))

(declare-fun b!2238917 () Bool)

(declare-fun tp!704773 () Bool)

(declare-fun tp!704771 () Bool)

(assert (=> b!2238917 (= e!1431291 (and tp!704773 tp!704771))))

(assert (=> b!2238755 (= tp!704745 e!1431291)))

(declare-fun b!2238916 () Bool)

(declare-fun tp!704772 () Bool)

(assert (=> b!2238916 (= e!1431291 tp!704772)))

(declare-fun b!2238915 () Bool)

(declare-fun tp!704770 () Bool)

(declare-fun tp!704769 () Bool)

(assert (=> b!2238915 (= e!1431291 (and tp!704770 tp!704769))))

(assert (= (and b!2238755 ((_ is ElementMatch!6489) (regOne!13491 r!4750))) b!2238914))

(assert (= (and b!2238755 ((_ is Concat!10827) (regOne!13491 r!4750))) b!2238915))

(assert (= (and b!2238755 ((_ is Star!6489) (regOne!13491 r!4750))) b!2238916))

(assert (= (and b!2238755 ((_ is Union!6489) (regOne!13491 r!4750))) b!2238917))

(declare-fun b!2238918 () Bool)

(declare-fun e!1431292 () Bool)

(assert (=> b!2238918 (= e!1431292 tp_is_empty!10199)))

(declare-fun b!2238921 () Bool)

(declare-fun tp!704778 () Bool)

(declare-fun tp!704776 () Bool)

(assert (=> b!2238921 (= e!1431292 (and tp!704778 tp!704776))))

(assert (=> b!2238755 (= tp!704748 e!1431292)))

(declare-fun b!2238920 () Bool)

(declare-fun tp!704777 () Bool)

(assert (=> b!2238920 (= e!1431292 tp!704777)))

(declare-fun b!2238919 () Bool)

(declare-fun tp!704775 () Bool)

(declare-fun tp!704774 () Bool)

(assert (=> b!2238919 (= e!1431292 (and tp!704775 tp!704774))))

(assert (= (and b!2238755 ((_ is ElementMatch!6489) (regTwo!13491 r!4750))) b!2238918))

(assert (= (and b!2238755 ((_ is Concat!10827) (regTwo!13491 r!4750))) b!2238919))

(assert (= (and b!2238755 ((_ is Star!6489) (regTwo!13491 r!4750))) b!2238920))

(assert (= (and b!2238755 ((_ is Union!6489) (regTwo!13491 r!4750))) b!2238921))

(declare-fun e!1431307 () Bool)

(declare-fun setNonEmpty!20484 () Bool)

(declare-fun setElem!20484 () Context!4074)

(declare-fun tp!704808 () Bool)

(declare-fun setRes!20484 () Bool)

(assert (=> setNonEmpty!20484 (= setRes!20484 (and tp!704808 (inv!35820 setElem!20484) e!1431307))))

(declare-fun mapValue!14675 () List!26465)

(declare-fun setRest!20484 () (InoxSet Context!4074))

(assert (=> setNonEmpty!20484 (= (_2!15382 (h!31772 mapValue!14675)) ((_ map or) (store ((as const (Array Context!4074 Bool)) false) setElem!20484 true) setRest!20484))))

(declare-fun b!2238936 () Bool)

(declare-fun tp!704801 () Bool)

(assert (=> b!2238936 (= e!1431307 tp!704801)))

(declare-fun tp!704807 () Bool)

(declare-fun e!1431305 () Bool)

(declare-fun b!2238937 () Bool)

(declare-fun tp!704802 () Bool)

(declare-fun e!1431308 () Bool)

(assert (=> b!2238937 (= e!1431308 (and tp!704802 (inv!35820 (_2!15381 (_1!15382 (h!31772 mapValue!14675)))) e!1431305 tp_is_empty!10199 setRes!20484 tp!704807))))

(declare-fun condSetEmpty!20484 () Bool)

(assert (=> b!2238937 (= condSetEmpty!20484 (= (_2!15382 (h!31772 mapValue!14675)) ((as const (Array Context!4074 Bool)) false)))))

(declare-fun b!2238938 () Bool)

(declare-fun tp!704804 () Bool)

(assert (=> b!2238938 (= e!1431305 tp!704804)))

(declare-fun condMapEmpty!14675 () Bool)

(declare-fun mapDefault!14675 () List!26465)

(assert (=> mapNonEmpty!14672 (= condMapEmpty!14675 (= mapRest!14672 ((as const (Array (_ BitVec 32) List!26465)) mapDefault!14675)))))

(declare-fun e!1431309 () Bool)

(declare-fun mapRes!14675 () Bool)

(assert (=> mapNonEmpty!14672 (= tp!704736 (and e!1431309 mapRes!14675))))

(declare-fun mapIsEmpty!14675 () Bool)

(assert (=> mapIsEmpty!14675 mapRes!14675))

(declare-fun tp!704803 () Bool)

(declare-fun setRes!20485 () Bool)

(declare-fun e!1431310 () Bool)

(declare-fun tp!704810 () Bool)

(declare-fun b!2238939 () Bool)

(assert (=> b!2238939 (= e!1431309 (and tp!704810 (inv!35820 (_2!15381 (_1!15382 (h!31772 mapDefault!14675)))) e!1431310 tp_is_empty!10199 setRes!20485 tp!704803))))

(declare-fun condSetEmpty!20485 () Bool)

(assert (=> b!2238939 (= condSetEmpty!20485 (= (_2!15382 (h!31772 mapDefault!14675)) ((as const (Array Context!4074 Bool)) false)))))

(declare-fun setIsEmpty!20484 () Bool)

(assert (=> setIsEmpty!20484 setRes!20484))

(declare-fun mapNonEmpty!14675 () Bool)

(declare-fun tp!704811 () Bool)

(assert (=> mapNonEmpty!14675 (= mapRes!14675 (and tp!704811 e!1431308))))

(declare-fun mapKey!14675 () (_ BitVec 32))

(declare-fun mapRest!14675 () (Array (_ BitVec 32) List!26465))

(assert (=> mapNonEmpty!14675 (= mapRest!14672 (store mapRest!14675 mapKey!14675 mapValue!14675))))

(declare-fun b!2238940 () Bool)

(declare-fun tp!704806 () Bool)

(assert (=> b!2238940 (= e!1431310 tp!704806)))

(declare-fun e!1431306 () Bool)

(declare-fun setNonEmpty!20485 () Bool)

(declare-fun setElem!20485 () Context!4074)

(declare-fun tp!704809 () Bool)

(assert (=> setNonEmpty!20485 (= setRes!20485 (and tp!704809 (inv!35820 setElem!20485) e!1431306))))

(declare-fun setRest!20485 () (InoxSet Context!4074))

(assert (=> setNonEmpty!20485 (= (_2!15382 (h!31772 mapDefault!14675)) ((_ map or) (store ((as const (Array Context!4074 Bool)) false) setElem!20485 true) setRest!20485))))

(declare-fun b!2238941 () Bool)

(declare-fun tp!704805 () Bool)

(assert (=> b!2238941 (= e!1431306 tp!704805)))

(declare-fun setIsEmpty!20485 () Bool)

(assert (=> setIsEmpty!20485 setRes!20485))

(assert (= (and mapNonEmpty!14672 condMapEmpty!14675) mapIsEmpty!14675))

(assert (= (and mapNonEmpty!14672 (not condMapEmpty!14675)) mapNonEmpty!14675))

(assert (= b!2238937 b!2238938))

(assert (= (and b!2238937 condSetEmpty!20484) setIsEmpty!20484))

(assert (= (and b!2238937 (not condSetEmpty!20484)) setNonEmpty!20484))

(assert (= setNonEmpty!20484 b!2238936))

(assert (= (and mapNonEmpty!14675 ((_ is Cons!26371) mapValue!14675)) b!2238937))

(assert (= b!2238939 b!2238940))

(assert (= (and b!2238939 condSetEmpty!20485) setIsEmpty!20485))

(assert (= (and b!2238939 (not condSetEmpty!20485)) setNonEmpty!20485))

(assert (= setNonEmpty!20485 b!2238941))

(assert (= (and mapNonEmpty!14672 ((_ is Cons!26371) mapDefault!14675)) b!2238939))

(declare-fun m!2671915 () Bool)

(assert (=> setNonEmpty!20484 m!2671915))

(declare-fun m!2671917 () Bool)

(assert (=> b!2238939 m!2671917))

(declare-fun m!2671919 () Bool)

(assert (=> setNonEmpty!20485 m!2671919))

(declare-fun m!2671921 () Bool)

(assert (=> mapNonEmpty!14675 m!2671921))

(declare-fun m!2671923 () Bool)

(assert (=> b!2238937 m!2671923))

(declare-fun setNonEmpty!20488 () Bool)

(declare-fun tp!704824 () Bool)

(declare-fun e!1431317 () Bool)

(declare-fun setRes!20488 () Bool)

(declare-fun setElem!20488 () Context!4074)

(assert (=> setNonEmpty!20488 (= setRes!20488 (and tp!704824 (inv!35820 setElem!20488) e!1431317))))

(declare-fun setRest!20488 () (InoxSet Context!4074))

(assert (=> setNonEmpty!20488 (= (_2!15382 (h!31772 mapValue!14672)) ((_ map or) (store ((as const (Array Context!4074 Bool)) false) setElem!20488 true) setRest!20488))))

(declare-fun e!1431318 () Bool)

(assert (=> mapNonEmpty!14672 (= tp!704739 e!1431318)))

(declare-fun tp!704822 () Bool)

(declare-fun tp!704823 () Bool)

(declare-fun e!1431319 () Bool)

(declare-fun b!2238950 () Bool)

(assert (=> b!2238950 (= e!1431318 (and tp!704822 (inv!35820 (_2!15381 (_1!15382 (h!31772 mapValue!14672)))) e!1431319 tp_is_empty!10199 setRes!20488 tp!704823))))

(declare-fun condSetEmpty!20488 () Bool)

(assert (=> b!2238950 (= condSetEmpty!20488 (= (_2!15382 (h!31772 mapValue!14672)) ((as const (Array Context!4074 Bool)) false)))))

(declare-fun b!2238951 () Bool)

(declare-fun tp!704826 () Bool)

(assert (=> b!2238951 (= e!1431319 tp!704826)))

(declare-fun setIsEmpty!20488 () Bool)

(assert (=> setIsEmpty!20488 setRes!20488))

(declare-fun b!2238952 () Bool)

(declare-fun tp!704825 () Bool)

(assert (=> b!2238952 (= e!1431317 tp!704825)))

(assert (= b!2238950 b!2238951))

(assert (= (and b!2238950 condSetEmpty!20488) setIsEmpty!20488))

(assert (= (and b!2238950 (not condSetEmpty!20488)) setNonEmpty!20488))

(assert (= setNonEmpty!20488 b!2238952))

(assert (= (and mapNonEmpty!14672 ((_ is Cons!26371) mapValue!14672)) b!2238950))

(declare-fun m!2671925 () Bool)

(assert (=> setNonEmpty!20488 m!2671925))

(declare-fun m!2671927 () Bool)

(assert (=> b!2238950 m!2671927))

(declare-fun setRes!20489 () Bool)

(declare-fun e!1431320 () Bool)

(declare-fun setElem!20489 () Context!4074)

(declare-fun tp!704829 () Bool)

(declare-fun setNonEmpty!20489 () Bool)

(assert (=> setNonEmpty!20489 (= setRes!20489 (and tp!704829 (inv!35820 setElem!20489) e!1431320))))

(declare-fun setRest!20489 () (InoxSet Context!4074))

(assert (=> setNonEmpty!20489 (= (_2!15382 (h!31772 mapDefault!14672)) ((_ map or) (store ((as const (Array Context!4074 Bool)) false) setElem!20489 true) setRest!20489))))

(declare-fun e!1431321 () Bool)

(assert (=> b!2238758 (= tp!704742 e!1431321)))

(declare-fun b!2238953 () Bool)

(declare-fun tp!704827 () Bool)

(declare-fun e!1431322 () Bool)

(declare-fun tp!704828 () Bool)

(assert (=> b!2238953 (= e!1431321 (and tp!704827 (inv!35820 (_2!15381 (_1!15382 (h!31772 mapDefault!14672)))) e!1431322 tp_is_empty!10199 setRes!20489 tp!704828))))

(declare-fun condSetEmpty!20489 () Bool)

(assert (=> b!2238953 (= condSetEmpty!20489 (= (_2!15382 (h!31772 mapDefault!14672)) ((as const (Array Context!4074 Bool)) false)))))

(declare-fun b!2238954 () Bool)

(declare-fun tp!704831 () Bool)

(assert (=> b!2238954 (= e!1431322 tp!704831)))

(declare-fun setIsEmpty!20489 () Bool)

(assert (=> setIsEmpty!20489 setRes!20489))

(declare-fun b!2238955 () Bool)

(declare-fun tp!704830 () Bool)

(assert (=> b!2238955 (= e!1431320 tp!704830)))

(assert (= b!2238953 b!2238954))

(assert (= (and b!2238953 condSetEmpty!20489) setIsEmpty!20489))

(assert (= (and b!2238953 (not condSetEmpty!20489)) setNonEmpty!20489))

(assert (= setNonEmpty!20489 b!2238955))

(assert (= (and b!2238758 ((_ is Cons!26371) mapDefault!14672)) b!2238953))

(declare-fun m!2671929 () Bool)

(assert (=> setNonEmpty!20489 m!2671929))

(declare-fun m!2671931 () Bool)

(assert (=> b!2238953 m!2671931))

(declare-fun setRes!20490 () Bool)

(declare-fun setNonEmpty!20490 () Bool)

(declare-fun setElem!20490 () Context!4074)

(declare-fun e!1431323 () Bool)

(declare-fun tp!704834 () Bool)

(assert (=> setNonEmpty!20490 (= setRes!20490 (and tp!704834 (inv!35820 setElem!20490) e!1431323))))

(declare-fun setRest!20490 () (InoxSet Context!4074))

(assert (=> setNonEmpty!20490 (= (_2!15382 (h!31772 (zeroValue!3385 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4074 Bool)) false) setElem!20490 true) setRest!20490))))

(declare-fun e!1431324 () Bool)

(assert (=> b!2238757 (= tp!704747 e!1431324)))

(declare-fun tp!704833 () Bool)

(declare-fun e!1431325 () Bool)

(declare-fun tp!704832 () Bool)

(declare-fun b!2238956 () Bool)

(assert (=> b!2238956 (= e!1431324 (and tp!704832 (inv!35820 (_2!15381 (_1!15382 (h!31772 (zeroValue!3385 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))))))))) e!1431325 tp_is_empty!10199 setRes!20490 tp!704833))))

(declare-fun condSetEmpty!20490 () Bool)

(assert (=> b!2238956 (= condSetEmpty!20490 (= (_2!15382 (h!31772 (zeroValue!3385 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))))))) ((as const (Array Context!4074 Bool)) false)))))

(declare-fun b!2238957 () Bool)

(declare-fun tp!704836 () Bool)

(assert (=> b!2238957 (= e!1431325 tp!704836)))

(declare-fun setIsEmpty!20490 () Bool)

(assert (=> setIsEmpty!20490 setRes!20490))

(declare-fun b!2238958 () Bool)

(declare-fun tp!704835 () Bool)

(assert (=> b!2238958 (= e!1431323 tp!704835)))

(assert (= b!2238956 b!2238957))

(assert (= (and b!2238956 condSetEmpty!20490) setIsEmpty!20490))

(assert (= (and b!2238956 (not condSetEmpty!20490)) setNonEmpty!20490))

(assert (= setNonEmpty!20490 b!2238958))

(assert (= (and b!2238757 ((_ is Cons!26371) (zeroValue!3385 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))))))) b!2238956))

(declare-fun m!2671933 () Bool)

(assert (=> setNonEmpty!20490 m!2671933))

(declare-fun m!2671935 () Bool)

(assert (=> b!2238956 m!2671935))

(declare-fun tp!704839 () Bool)

(declare-fun setNonEmpty!20491 () Bool)

(declare-fun setElem!20491 () Context!4074)

(declare-fun setRes!20491 () Bool)

(declare-fun e!1431326 () Bool)

(assert (=> setNonEmpty!20491 (= setRes!20491 (and tp!704839 (inv!35820 setElem!20491) e!1431326))))

(declare-fun setRest!20491 () (InoxSet Context!4074))

(assert (=> setNonEmpty!20491 (= (_2!15382 (h!31772 (minValue!3385 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4074 Bool)) false) setElem!20491 true) setRest!20491))))

(declare-fun e!1431327 () Bool)

(assert (=> b!2238757 (= tp!704740 e!1431327)))

(declare-fun b!2238959 () Bool)

(declare-fun e!1431328 () Bool)

(declare-fun tp!704838 () Bool)

(declare-fun tp!704837 () Bool)

(assert (=> b!2238959 (= e!1431327 (and tp!704837 (inv!35820 (_2!15381 (_1!15382 (h!31772 (minValue!3385 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))))))))) e!1431328 tp_is_empty!10199 setRes!20491 tp!704838))))

(declare-fun condSetEmpty!20491 () Bool)

(assert (=> b!2238959 (= condSetEmpty!20491 (= (_2!15382 (h!31772 (minValue!3385 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))))))) ((as const (Array Context!4074 Bool)) false)))))

(declare-fun b!2238960 () Bool)

(declare-fun tp!704841 () Bool)

(assert (=> b!2238960 (= e!1431328 tp!704841)))

(declare-fun setIsEmpty!20491 () Bool)

(assert (=> setIsEmpty!20491 setRes!20491))

(declare-fun b!2238961 () Bool)

(declare-fun tp!704840 () Bool)

(assert (=> b!2238961 (= e!1431326 tp!704840)))

(assert (= b!2238959 b!2238960))

(assert (= (and b!2238959 condSetEmpty!20491) setIsEmpty!20491))

(assert (= (and b!2238959 (not condSetEmpty!20491)) setNonEmpty!20491))

(assert (= setNonEmpty!20491 b!2238961))

(assert (= (and b!2238757 ((_ is Cons!26371) (minValue!3385 (v!29988 (underlying!6455 (v!29989 (underlying!6456 (cache!3418 thiss!28743)))))))) b!2238959))

(declare-fun m!2671937 () Bool)

(assert (=> setNonEmpty!20491 m!2671937))

(declare-fun m!2671939 () Bool)

(assert (=> b!2238959 m!2671939))

(declare-fun b!2238966 () Bool)

(declare-fun e!1431331 () Bool)

(declare-fun tp!704846 () Bool)

(declare-fun tp!704847 () Bool)

(assert (=> b!2238966 (= e!1431331 (and tp!704846 tp!704847))))

(assert (=> b!2238746 (= tp!704737 e!1431331)))

(assert (= (and b!2238746 ((_ is Cons!26370) (exprs!2537 ctx!48))) b!2238966))

(declare-fun b!2238967 () Bool)

(declare-fun e!1431332 () Bool)

(assert (=> b!2238967 (= e!1431332 tp_is_empty!10199)))

(declare-fun b!2238970 () Bool)

(declare-fun tp!704852 () Bool)

(declare-fun tp!704850 () Bool)

(assert (=> b!2238970 (= e!1431332 (and tp!704852 tp!704850))))

(assert (=> b!2238751 (= tp!704741 e!1431332)))

(declare-fun b!2238969 () Bool)

(declare-fun tp!704851 () Bool)

(assert (=> b!2238969 (= e!1431332 tp!704851)))

(declare-fun b!2238968 () Bool)

(declare-fun tp!704849 () Bool)

(declare-fun tp!704848 () Bool)

(assert (=> b!2238968 (= e!1431332 (and tp!704849 tp!704848))))

(assert (= (and b!2238751 ((_ is ElementMatch!6489) (reg!6818 r!4750))) b!2238967))

(assert (= (and b!2238751 ((_ is Concat!10827) (reg!6818 r!4750))) b!2238968))

(assert (= (and b!2238751 ((_ is Star!6489) (reg!6818 r!4750))) b!2238969))

(assert (= (and b!2238751 ((_ is Union!6489) (reg!6818 r!4750))) b!2238970))

(declare-fun b_lambda!71747 () Bool)

(assert (= b_lambda!71745 (or b!2238756 b_lambda!71747)))

(declare-fun bs!454269 () Bool)

(declare-fun d!665638 () Bool)

(assert (= bs!454269 (and d!665638 b!2238756)))

(declare-fun res!957412 () Bool)

(declare-fun e!1431333 () Bool)

(assert (=> bs!454269 (=> (not res!957412) (not e!1431333))))

(assert (=> bs!454269 (= res!957412 (validRegex!2442 (_1!15381 (_1!15382 (tuple2!25773 lt!833006 (apply!6498 (cache!3418 thiss!28743) lt!833006))))))))

(assert (=> bs!454269 (= (dynLambda!11539 lambda!84640 (tuple2!25773 lt!833006 (apply!6498 (cache!3418 thiss!28743) lt!833006))) e!1431333)))

(declare-fun b!2238971 () Bool)

(assert (=> b!2238971 (= e!1431333 (= (_2!15382 (tuple2!25773 lt!833006 (apply!6498 (cache!3418 thiss!28743) lt!833006))) (derivationStepZipperDown!79 (_1!15381 (_1!15382 (tuple2!25773 lt!833006 (apply!6498 (cache!3418 thiss!28743) lt!833006)))) (_2!15381 (_1!15382 (tuple2!25773 lt!833006 (apply!6498 (cache!3418 thiss!28743) lt!833006)))) (_3!2495 (_1!15382 (tuple2!25773 lt!833006 (apply!6498 (cache!3418 thiss!28743) lt!833006)))))))))

(assert (= (and bs!454269 res!957412) b!2238971))

(declare-fun m!2671941 () Bool)

(assert (=> bs!454269 m!2671941))

(declare-fun m!2671943 () Bool)

(assert (=> b!2238971 m!2671943))

(assert (=> d!665634 d!665638))

(declare-fun b_lambda!71749 () Bool)

(assert (= b_lambda!71741 (or (and b!2238744 b_free!64971) b_lambda!71749)))

(declare-fun b_lambda!71751 () Bool)

(assert (= b_lambda!71743 (or (and b!2238744 b_free!64971) b_lambda!71751)))

(check-sat (not d!665620) (not d!665636) (not bm!135059) (not b!2238894) (not b!2238968) (not d!665626) (not b!2238891) (not b!2238816) (not setNonEmpty!20489) (not d!665634) (not setNonEmpty!20490) (not setNonEmpty!20491) (not bm!135077) (not b!2238939) (not b_next!65673) (not b!2238971) (not b!2238911) (not b!2238912) (not b!2238893) (not b!2238913) (not b!2238772) (not b!2238952) (not b!2238951) (not b!2238950) (not b!2238938) (not b!2238907) (not b!2238959) (not b!2238966) (not b!2238956) (not bm!135062) (not setNonEmpty!20488) (not b!2238955) (not b!2238961) (not mapNonEmpty!14675) (not b!2238921) (not bm!135060) (not b!2238937) (not setNonEmpty!20485) (not b!2238960) (not b!2238958) (not b!2238908) (not b!2238957) (not b!2238792) (not bm!135063) (not b!2238890) (not b!2238846) (not b!2238887) (not bm!135080) (not b!2238764) (not d!665624) (not bm!135047) (not b!2238771) (not b!2238763) b_and!174983 (not b!2238909) (not bm!135079) (not b!2238915) (not b!2238970) (not bs!454269) (not b!2238936) (not b_lambda!71751) tp_is_empty!10199 (not tb!132861) (not bm!135081) (not b!2238775) (not bm!135049) (not b!2238953) (not b!2238855) (not b_next!65675) (not bm!135078) (not bm!135082) (not b_lambda!71747) (not b!2238940) (not b!2238919) (not b!2238788) (not setNonEmpty!20484) (not bm!135052) (not b!2238917) (not b!2238954) (not b!2238916) b_and!174977 (not b!2238941) (not b!2238920) (not b!2238969) (not b!2238789) (not d!665614) (not b_lambda!71749))
(check-sat b_and!174977 b_and!174983 (not b_next!65675) (not b_next!65673))
