; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218208 () Bool)

(assert start!218208)

(declare-fun b!2239751 () Bool)

(declare-fun b_free!65009 () Bool)

(declare-fun b_next!65713 () Bool)

(assert (=> b!2239751 (= b_free!65009 (not b_next!65713))))

(declare-fun tp!705553 () Bool)

(declare-fun b_and!175021 () Bool)

(assert (=> b!2239751 (= tp!705553 b_and!175021)))

(declare-fun b!2239754 () Bool)

(declare-fun b_free!65011 () Bool)

(declare-fun b_next!65715 () Bool)

(assert (=> b!2239754 (= b_free!65011 (not b_next!65715))))

(declare-fun tp!705542 () Bool)

(declare-fun b_and!175023 () Bool)

(assert (=> b!2239754 (= tp!705542 b_and!175023)))

(declare-fun b!2239746 () Bool)

(declare-fun e!1431890 () Bool)

(declare-fun e!1431889 () Bool)

(declare-datatypes ((C!13144 0))(
  ( (C!13145 (val!7620 Int)) )
))
(declare-datatypes ((Regex!6499 0))(
  ( (ElementMatch!6499 (c!356720 C!13144)) (Concat!10837 (regOne!13510 Regex!6499) (regTwo!13510 Regex!6499)) (EmptyExpr!6499) (Star!6499 (reg!6828 Regex!6499)) (EmptyLang!6499) (Union!6499 (regOne!13511 Regex!6499) (regTwo!13511 Regex!6499)) )
))
(declare-datatypes ((List!26488 0))(
  ( (Nil!26394) (Cons!26394 (h!31795 Regex!6499) (t!199920 List!26488)) )
))
(declare-datatypes ((Context!4094 0))(
  ( (Context!4095 (exprs!2547 List!26488)) )
))
(declare-datatypes ((tuple3!4070 0))(
  ( (tuple3!4071 (_1!15405 Regex!6499) (_2!15405 Context!4094) (_3!2505 C!13144)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25800 0))(
  ( (tuple2!25801 (_1!15406 tuple3!4070) (_2!15406 (InoxSet Context!4094))) )
))
(declare-datatypes ((array!10950 0))(
  ( (array!10951 (arr!4861 (Array (_ BitVec 32) (_ BitVec 64))) (size!20642 (_ BitVec 32))) )
))
(declare-datatypes ((List!26489 0))(
  ( (Nil!26395) (Cons!26395 (h!31796 tuple2!25800) (t!199921 List!26489)) )
))
(declare-datatypes ((array!10952 0))(
  ( (array!10953 (arr!4862 (Array (_ BitVec 32) List!26489)) (size!20643 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6274 0))(
  ( (LongMapFixedSize!6275 (defaultEntry!3502 Int) (mask!7740 (_ BitVec 32)) (extraKeys!3385 (_ BitVec 32)) (zeroValue!3395 List!26489) (minValue!3395 List!26489) (_size!6321 (_ BitVec 32)) (_keys!3434 array!10950) (_values!3417 array!10952) (_vacant!3198 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12365 0))(
  ( (Cell!12366 (v!30017 LongMapFixedSize!6274)) )
))
(declare-datatypes ((MutLongMap!3137 0))(
  ( (LongMap!3137 (underlying!6475 Cell!12365)) (MutLongMapExt!3136 (__x!17637 Int)) )
))
(declare-fun lt!833376 () MutLongMap!3137)

(get-info :version)

(assert (=> b!2239746 (= e!1431890 (and e!1431889 ((_ is LongMap!3137) lt!833376)))))

(declare-datatypes ((Hashable!3047 0))(
  ( (HashableExt!3046 (__x!17638 Int)) )
))
(declare-datatypes ((Cell!12367 0))(
  ( (Cell!12368 (v!30018 MutLongMap!3137)) )
))
(declare-datatypes ((MutableMap!3047 0))(
  ( (MutableMapExt!3046 (__x!17639 Int)) (HashMap!3047 (underlying!6476 Cell!12367) (hashF!4970 Hashable!3047) (_size!6322 (_ BitVec 32)) (defaultValue!3209 Int)) )
))
(declare-datatypes ((CacheDown!2140 0))(
  ( (CacheDown!2141 (cache!3428 MutableMap!3047)) )
))
(declare-fun thiss!28743 () CacheDown!2140)

(assert (=> b!2239746 (= lt!833376 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))))

(declare-fun mapNonEmpty!14714 () Bool)

(declare-fun mapRes!14714 () Bool)

(declare-fun tp!705545 () Bool)

(declare-fun tp!705550 () Bool)

(assert (=> mapNonEmpty!14714 (= mapRes!14714 (and tp!705545 tp!705550))))

(declare-fun mapRest!14714 () (Array (_ BitVec 32) List!26489))

(declare-fun mapValue!14714 () List!26489)

(declare-fun mapKey!14714 () (_ BitVec 32))

(assert (=> mapNonEmpty!14714 (= (arr!4862 (_values!3417 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))))) (store mapRest!14714 mapKey!14714 mapValue!14714))))

(declare-fun res!957544 () Bool)

(declare-fun e!1431887 () Bool)

(assert (=> start!218208 (=> (not res!957544) (not e!1431887))))

(declare-fun validCacheMapDown!341 (MutableMap!3047) Bool)

(assert (=> start!218208 (= res!957544 (validCacheMapDown!341 (cache!3428 thiss!28743)))))

(assert (=> start!218208 e!1431887))

(declare-fun e!1431891 () Bool)

(declare-fun inv!35850 (CacheDown!2140) Bool)

(assert (=> start!218208 (and (inv!35850 thiss!28743) e!1431891)))

(declare-fun e!1431888 () Bool)

(assert (=> start!218208 e!1431888))

(declare-fun ctx!48 () Context!4094)

(declare-fun e!1431886 () Bool)

(declare-fun inv!35851 (Context!4094) Bool)

(assert (=> start!218208 (and (inv!35851 ctx!48) e!1431886)))

(declare-fun tp_is_empty!10219 () Bool)

(assert (=> start!218208 tp_is_empty!10219))

(declare-fun b!2239747 () Bool)

(declare-fun tp!705548 () Bool)

(declare-fun tp!705551 () Bool)

(assert (=> b!2239747 (= e!1431888 (and tp!705548 tp!705551))))

(declare-fun b!2239748 () Bool)

(declare-fun e!1431881 () Bool)

(assert (=> b!2239748 (= e!1431891 e!1431881)))

(declare-fun b!2239749 () Bool)

(declare-fun e!1431884 () Bool)

(declare-fun tp!705554 () Bool)

(assert (=> b!2239749 (= e!1431884 (and tp!705554 mapRes!14714))))

(declare-fun condMapEmpty!14714 () Bool)

(declare-fun mapDefault!14714 () List!26489)

(assert (=> b!2239749 (= condMapEmpty!14714 (= (arr!4862 (_values!3417 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26489)) mapDefault!14714)))))

(declare-fun b!2239750 () Bool)

(declare-fun res!957543 () Bool)

(assert (=> b!2239750 (=> (not res!957543) (not e!1431887))))

(declare-fun r!4750 () Regex!6499)

(declare-fun a!970 () C!13144)

(declare-fun contains!4453 (MutableMap!3047 tuple3!4070) Bool)

(assert (=> b!2239750 (= res!957543 (contains!4453 (cache!3428 thiss!28743) (tuple3!4071 r!4750 ctx!48 a!970)))))

(declare-fun mapIsEmpty!14714 () Bool)

(assert (=> mapIsEmpty!14714 mapRes!14714))

(declare-fun tp!705546 () Bool)

(declare-fun e!1431885 () Bool)

(declare-fun tp!705544 () Bool)

(declare-fun array_inv!3489 (array!10950) Bool)

(declare-fun array_inv!3490 (array!10952) Bool)

(assert (=> b!2239751 (= e!1431885 (and tp!705553 tp!705544 tp!705546 (array_inv!3489 (_keys!3434 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))))) (array_inv!3490 (_values!3417 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))))) e!1431884))))

(declare-fun b!2239752 () Bool)

(assert (=> b!2239752 (= e!1431888 tp_is_empty!10219)))

(declare-fun b!2239753 () Bool)

(declare-fun e!1431883 () Bool)

(assert (=> b!2239753 (= e!1431883 e!1431885)))

(assert (=> b!2239754 (= e!1431881 (and e!1431890 tp!705542))))

(declare-fun b!2239755 () Bool)

(declare-fun tp!705552 () Bool)

(assert (=> b!2239755 (= e!1431888 tp!705552)))

(declare-fun b!2239756 () Bool)

(declare-fun valid!2362 (MutableMap!3047) Bool)

(assert (=> b!2239756 (= e!1431887 (not (valid!2362 (cache!3428 thiss!28743))))))

(declare-fun b!2239757 () Bool)

(declare-fun tp!705547 () Bool)

(assert (=> b!2239757 (= e!1431886 tp!705547)))

(declare-fun b!2239758 () Bool)

(declare-fun tp!705549 () Bool)

(declare-fun tp!705543 () Bool)

(assert (=> b!2239758 (= e!1431888 (and tp!705549 tp!705543))))

(declare-fun b!2239759 () Bool)

(assert (=> b!2239759 (= e!1431889 e!1431883)))

(declare-fun b!2239760 () Bool)

(declare-fun res!957542 () Bool)

(assert (=> b!2239760 (=> (not res!957542) (not e!1431887))))

(assert (=> b!2239760 (= res!957542 ((_ is HashMap!3047) (cache!3428 thiss!28743)))))

(assert (= (and start!218208 res!957544) b!2239750))

(assert (= (and b!2239750 res!957543) b!2239760))

(assert (= (and b!2239760 res!957542) b!2239756))

(assert (= (and b!2239749 condMapEmpty!14714) mapIsEmpty!14714))

(assert (= (and b!2239749 (not condMapEmpty!14714)) mapNonEmpty!14714))

(assert (= b!2239751 b!2239749))

(assert (= b!2239753 b!2239751))

(assert (= b!2239759 b!2239753))

(assert (= (and b!2239746 ((_ is LongMap!3137) (v!30018 (underlying!6476 (cache!3428 thiss!28743))))) b!2239759))

(assert (= b!2239754 b!2239746))

(assert (= (and b!2239748 ((_ is HashMap!3047) (cache!3428 thiss!28743))) b!2239754))

(assert (= start!218208 b!2239748))

(assert (= (and start!218208 ((_ is ElementMatch!6499) r!4750)) b!2239752))

(assert (= (and start!218208 ((_ is Concat!10837) r!4750)) b!2239758))

(assert (= (and start!218208 ((_ is Star!6499) r!4750)) b!2239755))

(assert (= (and start!218208 ((_ is Union!6499) r!4750)) b!2239747))

(assert (= start!218208 b!2239757))

(declare-fun m!2672348 () Bool)

(assert (=> mapNonEmpty!14714 m!2672348))

(declare-fun m!2672350 () Bool)

(assert (=> b!2239751 m!2672350))

(declare-fun m!2672352 () Bool)

(assert (=> b!2239751 m!2672352))

(declare-fun m!2672354 () Bool)

(assert (=> start!218208 m!2672354))

(declare-fun m!2672356 () Bool)

(assert (=> start!218208 m!2672356))

(declare-fun m!2672358 () Bool)

(assert (=> start!218208 m!2672358))

(declare-fun m!2672360 () Bool)

(assert (=> b!2239756 m!2672360))

(declare-fun m!2672362 () Bool)

(assert (=> b!2239750 m!2672362))

(check-sat (not b!2239757) (not b!2239756) (not mapNonEmpty!14714) (not b!2239751) tp_is_empty!10219 (not b!2239755) (not b!2239747) (not b!2239758) b_and!175023 (not start!218208) b_and!175021 (not b_next!65715) (not b_next!65713) (not b!2239750) (not b!2239749))
(check-sat b_and!175021 b_and!175023 (not b_next!65715) (not b_next!65713))
(get-model)

(declare-fun d!665683 () Bool)

(declare-fun res!957551 () Bool)

(declare-fun e!1431896 () Bool)

(assert (=> d!665683 (=> (not res!957551) (not e!1431896))))

(assert (=> d!665683 (= res!957551 (valid!2362 (cache!3428 thiss!28743)))))

(assert (=> d!665683 (= (validCacheMapDown!341 (cache!3428 thiss!28743)) e!1431896)))

(declare-fun b!2239767 () Bool)

(declare-fun res!957552 () Bool)

(assert (=> b!2239767 (=> (not res!957552) (not e!1431896))))

(declare-fun invariantList!384 (List!26489) Bool)

(declare-datatypes ((ListMap!863 0))(
  ( (ListMap!864 (toList!1378 List!26489)) )
))
(declare-fun map!5449 (MutableMap!3047) ListMap!863)

(assert (=> b!2239767 (= res!957552 (invariantList!384 (toList!1378 (map!5449 (cache!3428 thiss!28743)))))))

(declare-fun b!2239768 () Bool)

(declare-fun lambda!84692 () Int)

(declare-fun forall!5429 (List!26489 Int) Bool)

(assert (=> b!2239768 (= e!1431896 (forall!5429 (toList!1378 (map!5449 (cache!3428 thiss!28743))) lambda!84692))))

(assert (= (and d!665683 res!957551) b!2239767))

(assert (= (and b!2239767 res!957552) b!2239768))

(assert (=> d!665683 m!2672360))

(declare-fun m!2672365 () Bool)

(assert (=> b!2239767 m!2672365))

(declare-fun m!2672367 () Bool)

(assert (=> b!2239767 m!2672367))

(assert (=> b!2239768 m!2672365))

(declare-fun m!2672369 () Bool)

(assert (=> b!2239768 m!2672369))

(assert (=> start!218208 d!665683))

(declare-fun d!665685 () Bool)

(declare-fun res!957555 () Bool)

(declare-fun e!1431899 () Bool)

(assert (=> d!665685 (=> (not res!957555) (not e!1431899))))

(assert (=> d!665685 (= res!957555 ((_ is HashMap!3047) (cache!3428 thiss!28743)))))

(assert (=> d!665685 (= (inv!35850 thiss!28743) e!1431899)))

(declare-fun b!2239771 () Bool)

(assert (=> b!2239771 (= e!1431899 (validCacheMapDown!341 (cache!3428 thiss!28743)))))

(assert (= (and d!665685 res!957555) b!2239771))

(assert (=> b!2239771 m!2672354))

(assert (=> start!218208 d!665685))

(declare-fun d!665687 () Bool)

(declare-fun lambda!84695 () Int)

(declare-fun forall!5430 (List!26488 Int) Bool)

(assert (=> d!665687 (= (inv!35851 ctx!48) (forall!5430 (exprs!2547 ctx!48) lambda!84695))))

(declare-fun bs!454284 () Bool)

(assert (= bs!454284 d!665687))

(declare-fun m!2672371 () Bool)

(assert (=> bs!454284 m!2672371))

(assert (=> start!218208 d!665687))

(declare-fun b!2239794 () Bool)

(declare-fun e!1431917 () Bool)

(declare-fun lt!833435 () (_ BitVec 64))

(declare-datatypes ((Option!5146 0))(
  ( (None!5145) (Some!5145 (v!30019 tuple2!25800)) )
))
(declare-fun isDefined!4154 (Option!5146) Bool)

(declare-fun getPair!38 (List!26489 tuple3!4070) Option!5146)

(declare-fun apply!6507 (MutLongMap!3137 (_ BitVec 64)) List!26489)

(assert (=> b!2239794 (= e!1431917 (isDefined!4154 (getPair!38 (apply!6507 (v!30018 (underlying!6476 (cache!3428 thiss!28743))) lt!833435) (tuple3!4071 r!4750 ctx!48 a!970))))))

(declare-fun call!135155 () (_ BitVec 64))

(declare-fun bm!135149 () Bool)

(declare-datatypes ((tuple2!25802 0))(
  ( (tuple2!25803 (_1!15407 (_ BitVec 64)) (_2!15407 List!26489)) )
))
(declare-datatypes ((List!26490 0))(
  ( (Nil!26396) (Cons!26396 (h!31797 tuple2!25802) (t!199922 List!26490)) )
))
(declare-datatypes ((ListLongMap!347 0))(
  ( (ListLongMap!348 (toList!1379 List!26490)) )
))
(declare-fun lt!833417 () ListLongMap!347)

(declare-fun call!135159 () Bool)

(declare-fun call!135157 () ListLongMap!347)

(declare-fun c!356730 () Bool)

(declare-fun contains!4454 (ListLongMap!347 (_ BitVec 64)) Bool)

(assert (=> bm!135149 (= call!135159 (contains!4454 (ite c!356730 lt!833417 call!135157) call!135155))))

(declare-fun b!2239795 () Bool)

(declare-datatypes ((Unit!39363 0))(
  ( (Unit!39364) )
))
(declare-fun e!1431915 () Unit!39363)

(declare-fun Unit!39365 () Unit!39363)

(assert (=> b!2239795 (= e!1431915 Unit!39365)))

(declare-fun call!135154 () Option!5146)

(declare-fun call!135158 () List!26489)

(declare-fun bm!135150 () Bool)

(assert (=> bm!135150 (= call!135154 (getPair!38 call!135158 (tuple3!4071 r!4750 ctx!48 a!970)))))

(declare-fun b!2239796 () Bool)

(declare-fun e!1431919 () Unit!39363)

(declare-fun e!1431918 () Unit!39363)

(assert (=> b!2239796 (= e!1431919 e!1431918)))

(declare-fun res!957564 () Bool)

(assert (=> b!2239796 (= res!957564 call!135159)))

(declare-fun e!1431914 () Bool)

(assert (=> b!2239796 (=> (not res!957564) (not e!1431914))))

(declare-fun c!356732 () Bool)

(assert (=> b!2239796 (= c!356732 e!1431914)))

(declare-fun b!2239797 () Bool)

(declare-fun e!1431916 () Unit!39363)

(declare-fun Unit!39366 () Unit!39363)

(assert (=> b!2239797 (= e!1431916 Unit!39366)))

(declare-fun b!2239798 () Bool)

(declare-fun lt!833419 () Unit!39363)

(assert (=> b!2239798 (= e!1431919 lt!833419)))

(assert (=> b!2239798 (= lt!833417 call!135157)))

(declare-fun lemmaInGenericMapThenInLongMap!38 (ListLongMap!347 tuple3!4070 Hashable!3047) Unit!39363)

(assert (=> b!2239798 (= lt!833419 (lemmaInGenericMapThenInLongMap!38 lt!833417 (tuple3!4071 r!4750 ctx!48 a!970) (hashF!4970 (cache!3428 thiss!28743))))))

(declare-fun res!957563 () Bool)

(assert (=> b!2239798 (= res!957563 call!135159)))

(declare-fun e!1431920 () Bool)

(assert (=> b!2239798 (=> (not res!957563) (not e!1431920))))

(assert (=> b!2239798 e!1431920))

(declare-fun bm!135151 () Bool)

(declare-fun call!135156 () Bool)

(assert (=> bm!135151 (= call!135156 (isDefined!4154 call!135154))))

(declare-fun bm!135152 () Bool)

(declare-fun apply!6508 (ListLongMap!347 (_ BitVec 64)) List!26489)

(assert (=> bm!135152 (= call!135158 (apply!6508 (ite c!356730 lt!833417 call!135157) call!135155))))

(declare-fun bm!135153 () Bool)

(declare-fun hash!585 (Hashable!3047 tuple3!4070) (_ BitVec 64))

(assert (=> bm!135153 (= call!135155 (hash!585 (hashF!4970 (cache!3428 thiss!28743)) (tuple3!4071 r!4750 ctx!48 a!970)))))

(declare-fun b!2239799 () Bool)

(assert (=> b!2239799 (= e!1431920 call!135156)))

(declare-fun b!2239800 () Bool)

(declare-fun Unit!39367 () Unit!39363)

(assert (=> b!2239800 (= e!1431918 Unit!39367)))

(declare-fun b!2239801 () Bool)

(assert (=> b!2239801 false))

(declare-fun lt!833428 () Unit!39363)

(declare-fun lt!833432 () Unit!39363)

(assert (=> b!2239801 (= lt!833428 lt!833432)))

(declare-fun lt!833431 () List!26490)

(declare-fun lt!833420 () List!26489)

(declare-fun contains!4455 (List!26490 tuple2!25802) Bool)

(assert (=> b!2239801 (contains!4455 lt!833431 (tuple2!25803 lt!833435 lt!833420))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!39 (List!26490 (_ BitVec 64) List!26489) Unit!39363)

(assert (=> b!2239801 (= lt!833432 (lemmaGetValueByKeyImpliesContainsTuple!39 lt!833431 lt!833435 lt!833420))))

(assert (=> b!2239801 (= lt!833420 (apply!6507 (v!30018 (underlying!6476 (cache!3428 thiss!28743))) lt!833435))))

(declare-fun map!5450 (MutLongMap!3137) ListLongMap!347)

(assert (=> b!2239801 (= lt!833431 (toList!1379 (map!5450 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))))))

(declare-fun lt!833427 () Unit!39363)

(declare-fun lt!833418 () Unit!39363)

(assert (=> b!2239801 (= lt!833427 lt!833418)))

(declare-fun lt!833425 () List!26490)

(declare-datatypes ((Option!5147 0))(
  ( (None!5146) (Some!5146 (v!30020 List!26489)) )
))
(declare-fun isDefined!4155 (Option!5147) Bool)

(declare-fun getValueByKey!88 (List!26490 (_ BitVec 64)) Option!5147)

(assert (=> b!2239801 (isDefined!4155 (getValueByKey!88 lt!833425 lt!833435))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!56 (List!26490 (_ BitVec 64)) Unit!39363)

(assert (=> b!2239801 (= lt!833418 (lemmaContainsKeyImpliesGetValueByKeyDefined!56 lt!833425 lt!833435))))

(assert (=> b!2239801 (= lt!833425 (toList!1379 (map!5450 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))))))

(declare-fun lt!833426 () Unit!39363)

(declare-fun lt!833434 () Unit!39363)

(assert (=> b!2239801 (= lt!833426 lt!833434)))

(declare-fun lt!833429 () List!26490)

(declare-fun containsKey!87 (List!26490 (_ BitVec 64)) Bool)

(assert (=> b!2239801 (containsKey!87 lt!833429 lt!833435)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!39 (List!26490 (_ BitVec 64)) Unit!39363)

(assert (=> b!2239801 (= lt!833434 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!39 lt!833429 lt!833435))))

(assert (=> b!2239801 (= lt!833429 (toList!1379 (map!5450 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))))))

(declare-fun Unit!39368 () Unit!39363)

(assert (=> b!2239801 (= e!1431916 Unit!39368)))

(declare-fun b!2239802 () Bool)

(declare-fun lambda!84698 () Int)

(declare-fun forallContained!785 (List!26490 Int tuple2!25802) Unit!39363)

(assert (=> b!2239802 (= e!1431915 (forallContained!785 (toList!1379 (map!5450 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))) lambda!84698 (tuple2!25803 lt!833435 (apply!6507 (v!30018 (underlying!6476 (cache!3428 thiss!28743))) lt!833435))))))

(declare-fun c!356731 () Bool)

(assert (=> b!2239802 (= c!356731 (not (contains!4455 (toList!1379 (map!5450 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))) (tuple2!25803 lt!833435 (apply!6507 (v!30018 (underlying!6476 (cache!3428 thiss!28743))) lt!833435)))))))

(declare-fun lt!833430 () Unit!39363)

(assert (=> b!2239802 (= lt!833430 e!1431916)))

(declare-fun b!2239803 () Bool)

(assert (=> b!2239803 false))

(declare-fun lt!833422 () Unit!39363)

(declare-fun lt!833433 () Unit!39363)

(assert (=> b!2239803 (= lt!833422 lt!833433)))

(declare-fun lt!833421 () ListLongMap!347)

(declare-fun contains!4456 (ListMap!863 tuple3!4070) Bool)

(declare-fun extractMap!118 (List!26490) ListMap!863)

(assert (=> b!2239803 (contains!4456 (extractMap!118 (toList!1379 lt!833421)) (tuple3!4071 r!4750 ctx!48 a!970))))

(declare-fun lemmaInLongMapThenInGenericMap!38 (ListLongMap!347 tuple3!4070 Hashable!3047) Unit!39363)

(assert (=> b!2239803 (= lt!833433 (lemmaInLongMapThenInGenericMap!38 lt!833421 (tuple3!4071 r!4750 ctx!48 a!970) (hashF!4970 (cache!3428 thiss!28743))))))

(assert (=> b!2239803 (= lt!833421 call!135157)))

(declare-fun Unit!39369 () Unit!39363)

(assert (=> b!2239803 (= e!1431918 Unit!39369)))

(declare-fun b!2239804 () Bool)

(assert (=> b!2239804 (= e!1431914 call!135156)))

(declare-fun bm!135154 () Bool)

(assert (=> bm!135154 (= call!135157 (map!5450 (v!30018 (underlying!6476 (cache!3428 thiss!28743)))))))

(declare-fun lt!833424 () Bool)

(declare-fun d!665689 () Bool)

(assert (=> d!665689 (= lt!833424 (contains!4456 (map!5449 (cache!3428 thiss!28743)) (tuple3!4071 r!4750 ctx!48 a!970)))))

(assert (=> d!665689 (= lt!833424 e!1431917)))

(declare-fun res!957562 () Bool)

(assert (=> d!665689 (=> (not res!957562) (not e!1431917))))

(declare-fun contains!4457 (MutLongMap!3137 (_ BitVec 64)) Bool)

(assert (=> d!665689 (= res!957562 (contains!4457 (v!30018 (underlying!6476 (cache!3428 thiss!28743))) lt!833435))))

(declare-fun lt!833423 () Unit!39363)

(assert (=> d!665689 (= lt!833423 e!1431919)))

(assert (=> d!665689 (= c!356730 (contains!4456 (extractMap!118 (toList!1379 (map!5450 (v!30018 (underlying!6476 (cache!3428 thiss!28743)))))) (tuple3!4071 r!4750 ctx!48 a!970)))))

(declare-fun lt!833436 () Unit!39363)

(assert (=> d!665689 (= lt!833436 e!1431915)))

(declare-fun c!356729 () Bool)

(assert (=> d!665689 (= c!356729 (contains!4457 (v!30018 (underlying!6476 (cache!3428 thiss!28743))) lt!833435))))

(assert (=> d!665689 (= lt!833435 (hash!585 (hashF!4970 (cache!3428 thiss!28743)) (tuple3!4071 r!4750 ctx!48 a!970)))))

(assert (=> d!665689 (valid!2362 (cache!3428 thiss!28743))))

(assert (=> d!665689 (= (contains!4453 (cache!3428 thiss!28743) (tuple3!4071 r!4750 ctx!48 a!970)) lt!833424)))

(assert (= (and d!665689 c!356729) b!2239802))

(assert (= (and d!665689 (not c!356729)) b!2239795))

(assert (= (and b!2239802 c!356731) b!2239801))

(assert (= (and b!2239802 (not c!356731)) b!2239797))

(assert (= (and d!665689 c!356730) b!2239798))

(assert (= (and d!665689 (not c!356730)) b!2239796))

(assert (= (and b!2239798 res!957563) b!2239799))

(assert (= (and b!2239796 res!957564) b!2239804))

(assert (= (and b!2239796 c!356732) b!2239803))

(assert (= (and b!2239796 (not c!356732)) b!2239800))

(assert (= (or b!2239798 b!2239799 b!2239796 b!2239804) bm!135153))

(assert (= (or b!2239798 b!2239796 b!2239804 b!2239803) bm!135154))

(assert (= (or b!2239798 b!2239796) bm!135149))

(assert (= (or b!2239799 b!2239804) bm!135152))

(assert (= (or b!2239799 b!2239804) bm!135150))

(assert (= (or b!2239799 b!2239804) bm!135151))

(assert (= (and d!665689 res!957562) b!2239794))

(declare-fun m!2672373 () Bool)

(assert (=> b!2239802 m!2672373))

(declare-fun m!2672375 () Bool)

(assert (=> b!2239802 m!2672375))

(declare-fun m!2672377 () Bool)

(assert (=> b!2239802 m!2672377))

(declare-fun m!2672379 () Bool)

(assert (=> b!2239802 m!2672379))

(declare-fun m!2672381 () Bool)

(assert (=> bm!135152 m!2672381))

(assert (=> b!2239794 m!2672375))

(assert (=> b!2239794 m!2672375))

(declare-fun m!2672383 () Bool)

(assert (=> b!2239794 m!2672383))

(assert (=> b!2239794 m!2672383))

(declare-fun m!2672385 () Bool)

(assert (=> b!2239794 m!2672385))

(assert (=> bm!135154 m!2672373))

(declare-fun m!2672387 () Bool)

(assert (=> b!2239801 m!2672387))

(declare-fun m!2672389 () Bool)

(assert (=> b!2239801 m!2672389))

(declare-fun m!2672391 () Bool)

(assert (=> b!2239801 m!2672391))

(declare-fun m!2672393 () Bool)

(assert (=> b!2239801 m!2672393))

(assert (=> b!2239801 m!2672373))

(declare-fun m!2672395 () Bool)

(assert (=> b!2239801 m!2672395))

(declare-fun m!2672397 () Bool)

(assert (=> b!2239801 m!2672397))

(declare-fun m!2672399 () Bool)

(assert (=> b!2239801 m!2672399))

(assert (=> b!2239801 m!2672395))

(assert (=> b!2239801 m!2672375))

(declare-fun m!2672401 () Bool)

(assert (=> bm!135149 m!2672401))

(declare-fun m!2672403 () Bool)

(assert (=> b!2239798 m!2672403))

(declare-fun m!2672405 () Bool)

(assert (=> bm!135153 m!2672405))

(declare-fun m!2672407 () Bool)

(assert (=> b!2239803 m!2672407))

(assert (=> b!2239803 m!2672407))

(declare-fun m!2672409 () Bool)

(assert (=> b!2239803 m!2672409))

(declare-fun m!2672411 () Bool)

(assert (=> b!2239803 m!2672411))

(declare-fun m!2672413 () Bool)

(assert (=> d!665689 m!2672413))

(declare-fun m!2672415 () Bool)

(assert (=> d!665689 m!2672415))

(assert (=> d!665689 m!2672365))

(declare-fun m!2672417 () Bool)

(assert (=> d!665689 m!2672417))

(assert (=> d!665689 m!2672365))

(declare-fun m!2672419 () Bool)

(assert (=> d!665689 m!2672419))

(assert (=> d!665689 m!2672360))

(assert (=> d!665689 m!2672373))

(assert (=> d!665689 m!2672405))

(assert (=> d!665689 m!2672413))

(declare-fun m!2672421 () Bool)

(assert (=> bm!135151 m!2672421))

(declare-fun m!2672423 () Bool)

(assert (=> bm!135150 m!2672423))

(assert (=> b!2239750 d!665689))

(declare-fun d!665691 () Bool)

(assert (=> d!665691 (= (array_inv!3489 (_keys!3434 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))))) (bvsge (size!20642 (_keys!3434 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2239751 d!665691))

(declare-fun d!665693 () Bool)

(assert (=> d!665693 (= (array_inv!3490 (_values!3417 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))))) (bvsge (size!20643 (_values!3417 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2239751 d!665693))

(declare-fun bs!454285 () Bool)

(declare-fun b!2239809 () Bool)

(assert (= bs!454285 (and b!2239809 b!2239802)))

(declare-fun lambda!84701 () Int)

(assert (=> bs!454285 (= lambda!84701 lambda!84698)))

(declare-fun d!665695 () Bool)

(declare-fun res!957569 () Bool)

(declare-fun e!1431923 () Bool)

(assert (=> d!665695 (=> (not res!957569) (not e!1431923))))

(declare-fun valid!2363 (MutLongMap!3137) Bool)

(assert (=> d!665695 (= res!957569 (valid!2363 (v!30018 (underlying!6476 (cache!3428 thiss!28743)))))))

(assert (=> d!665695 (= (valid!2362 (cache!3428 thiss!28743)) e!1431923)))

(declare-fun res!957570 () Bool)

(assert (=> b!2239809 (=> (not res!957570) (not e!1431923))))

(declare-fun forall!5431 (List!26490 Int) Bool)

(assert (=> b!2239809 (= res!957570 (forall!5431 (toList!1379 (map!5450 (v!30018 (underlying!6476 (cache!3428 thiss!28743))))) lambda!84701))))

(declare-fun b!2239810 () Bool)

(declare-fun allKeysSameHashInMap!113 (ListLongMap!347 Hashable!3047) Bool)

(assert (=> b!2239810 (= e!1431923 (allKeysSameHashInMap!113 (map!5450 (v!30018 (underlying!6476 (cache!3428 thiss!28743)))) (hashF!4970 (cache!3428 thiss!28743))))))

(assert (= (and d!665695 res!957569) b!2239809))

(assert (= (and b!2239809 res!957570) b!2239810))

(declare-fun m!2672425 () Bool)

(assert (=> d!665695 m!2672425))

(assert (=> b!2239809 m!2672373))

(declare-fun m!2672427 () Bool)

(assert (=> b!2239809 m!2672427))

(assert (=> b!2239810 m!2672373))

(assert (=> b!2239810 m!2672373))

(declare-fun m!2672429 () Bool)

(assert (=> b!2239810 m!2672429))

(assert (=> b!2239756 d!665695))

(declare-fun e!1431932 () Bool)

(assert (=> b!2239749 (= tp!705554 e!1431932)))

(declare-fun b!2239819 () Bool)

(declare-fun e!1431931 () Bool)

(declare-fun tp!705565 () Bool)

(assert (=> b!2239819 (= e!1431931 tp!705565)))

(declare-fun tp!705566 () Bool)

(declare-fun tp!705567 () Bool)

(declare-fun setRes!20530 () Bool)

(declare-fun b!2239820 () Bool)

(assert (=> b!2239820 (= e!1431932 (and tp!705567 (inv!35851 (_2!15405 (_1!15406 (h!31796 mapDefault!14714)))) e!1431931 tp_is_empty!10219 setRes!20530 tp!705566))))

(declare-fun condSetEmpty!20530 () Bool)

(assert (=> b!2239820 (= condSetEmpty!20530 (= (_2!15406 (h!31796 mapDefault!14714)) ((as const (Array Context!4094 Bool)) false)))))

(declare-fun setIsEmpty!20530 () Bool)

(assert (=> setIsEmpty!20530 setRes!20530))

(declare-fun b!2239821 () Bool)

(declare-fun e!1431930 () Bool)

(declare-fun tp!705569 () Bool)

(assert (=> b!2239821 (= e!1431930 tp!705569)))

(declare-fun setNonEmpty!20530 () Bool)

(declare-fun tp!705568 () Bool)

(declare-fun setElem!20530 () Context!4094)

(assert (=> setNonEmpty!20530 (= setRes!20530 (and tp!705568 (inv!35851 setElem!20530) e!1431930))))

(declare-fun setRest!20530 () (InoxSet Context!4094))

(assert (=> setNonEmpty!20530 (= (_2!15406 (h!31796 mapDefault!14714)) ((_ map or) (store ((as const (Array Context!4094 Bool)) false) setElem!20530 true) setRest!20530))))

(assert (= b!2239820 b!2239819))

(assert (= (and b!2239820 condSetEmpty!20530) setIsEmpty!20530))

(assert (= (and b!2239820 (not condSetEmpty!20530)) setNonEmpty!20530))

(assert (= setNonEmpty!20530 b!2239821))

(assert (= (and b!2239749 ((_ is Cons!26395) mapDefault!14714)) b!2239820))

(declare-fun m!2672431 () Bool)

(assert (=> b!2239820 m!2672431))

(declare-fun m!2672433 () Bool)

(assert (=> setNonEmpty!20530 m!2672433))

(declare-fun b!2239834 () Bool)

(declare-fun e!1431935 () Bool)

(declare-fun tp!705581 () Bool)

(assert (=> b!2239834 (= e!1431935 tp!705581)))

(declare-fun b!2239835 () Bool)

(declare-fun tp!705582 () Bool)

(declare-fun tp!705583 () Bool)

(assert (=> b!2239835 (= e!1431935 (and tp!705582 tp!705583))))

(declare-fun b!2239832 () Bool)

(assert (=> b!2239832 (= e!1431935 tp_is_empty!10219)))

(declare-fun b!2239833 () Bool)

(declare-fun tp!705580 () Bool)

(declare-fun tp!705584 () Bool)

(assert (=> b!2239833 (= e!1431935 (and tp!705580 tp!705584))))

(assert (=> b!2239758 (= tp!705549 e!1431935)))

(assert (= (and b!2239758 ((_ is ElementMatch!6499) (regOne!13510 r!4750))) b!2239832))

(assert (= (and b!2239758 ((_ is Concat!10837) (regOne!13510 r!4750))) b!2239833))

(assert (= (and b!2239758 ((_ is Star!6499) (regOne!13510 r!4750))) b!2239834))

(assert (= (and b!2239758 ((_ is Union!6499) (regOne!13510 r!4750))) b!2239835))

(declare-fun b!2239838 () Bool)

(declare-fun e!1431936 () Bool)

(declare-fun tp!705586 () Bool)

(assert (=> b!2239838 (= e!1431936 tp!705586)))

(declare-fun b!2239839 () Bool)

(declare-fun tp!705587 () Bool)

(declare-fun tp!705588 () Bool)

(assert (=> b!2239839 (= e!1431936 (and tp!705587 tp!705588))))

(declare-fun b!2239836 () Bool)

(assert (=> b!2239836 (= e!1431936 tp_is_empty!10219)))

(declare-fun b!2239837 () Bool)

(declare-fun tp!705585 () Bool)

(declare-fun tp!705589 () Bool)

(assert (=> b!2239837 (= e!1431936 (and tp!705585 tp!705589))))

(assert (=> b!2239758 (= tp!705543 e!1431936)))

(assert (= (and b!2239758 ((_ is ElementMatch!6499) (regTwo!13510 r!4750))) b!2239836))

(assert (= (and b!2239758 ((_ is Concat!10837) (regTwo!13510 r!4750))) b!2239837))

(assert (= (and b!2239758 ((_ is Star!6499) (regTwo!13510 r!4750))) b!2239838))

(assert (= (and b!2239758 ((_ is Union!6499) (regTwo!13510 r!4750))) b!2239839))

(declare-fun b!2239844 () Bool)

(declare-fun e!1431939 () Bool)

(declare-fun tp!705594 () Bool)

(declare-fun tp!705595 () Bool)

(assert (=> b!2239844 (= e!1431939 (and tp!705594 tp!705595))))

(assert (=> b!2239757 (= tp!705547 e!1431939)))

(assert (= (and b!2239757 ((_ is Cons!26394) (exprs!2547 ctx!48))) b!2239844))

(declare-fun b!2239847 () Bool)

(declare-fun e!1431940 () Bool)

(declare-fun tp!705597 () Bool)

(assert (=> b!2239847 (= e!1431940 tp!705597)))

(declare-fun b!2239848 () Bool)

(declare-fun tp!705598 () Bool)

(declare-fun tp!705599 () Bool)

(assert (=> b!2239848 (= e!1431940 (and tp!705598 tp!705599))))

(declare-fun b!2239845 () Bool)

(assert (=> b!2239845 (= e!1431940 tp_is_empty!10219)))

(declare-fun b!2239846 () Bool)

(declare-fun tp!705596 () Bool)

(declare-fun tp!705600 () Bool)

(assert (=> b!2239846 (= e!1431940 (and tp!705596 tp!705600))))

(assert (=> b!2239747 (= tp!705548 e!1431940)))

(assert (= (and b!2239747 ((_ is ElementMatch!6499) (regOne!13511 r!4750))) b!2239845))

(assert (= (and b!2239747 ((_ is Concat!10837) (regOne!13511 r!4750))) b!2239846))

(assert (= (and b!2239747 ((_ is Star!6499) (regOne!13511 r!4750))) b!2239847))

(assert (= (and b!2239747 ((_ is Union!6499) (regOne!13511 r!4750))) b!2239848))

(declare-fun b!2239851 () Bool)

(declare-fun e!1431941 () Bool)

(declare-fun tp!705602 () Bool)

(assert (=> b!2239851 (= e!1431941 tp!705602)))

(declare-fun b!2239852 () Bool)

(declare-fun tp!705603 () Bool)

(declare-fun tp!705604 () Bool)

(assert (=> b!2239852 (= e!1431941 (and tp!705603 tp!705604))))

(declare-fun b!2239849 () Bool)

(assert (=> b!2239849 (= e!1431941 tp_is_empty!10219)))

(declare-fun b!2239850 () Bool)

(declare-fun tp!705601 () Bool)

(declare-fun tp!705605 () Bool)

(assert (=> b!2239850 (= e!1431941 (and tp!705601 tp!705605))))

(assert (=> b!2239747 (= tp!705551 e!1431941)))

(assert (= (and b!2239747 ((_ is ElementMatch!6499) (regTwo!13511 r!4750))) b!2239849))

(assert (= (and b!2239747 ((_ is Concat!10837) (regTwo!13511 r!4750))) b!2239850))

(assert (= (and b!2239747 ((_ is Star!6499) (regTwo!13511 r!4750))) b!2239851))

(assert (= (and b!2239747 ((_ is Union!6499) (regTwo!13511 r!4750))) b!2239852))

(declare-fun e!1431944 () Bool)

(assert (=> b!2239751 (= tp!705544 e!1431944)))

(declare-fun b!2239853 () Bool)

(declare-fun e!1431943 () Bool)

(declare-fun tp!705606 () Bool)

(assert (=> b!2239853 (= e!1431943 tp!705606)))

(declare-fun tp!705608 () Bool)

(declare-fun b!2239854 () Bool)

(declare-fun setRes!20531 () Bool)

(declare-fun tp!705607 () Bool)

(assert (=> b!2239854 (= e!1431944 (and tp!705608 (inv!35851 (_2!15405 (_1!15406 (h!31796 (zeroValue!3395 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743)))))))))) e!1431943 tp_is_empty!10219 setRes!20531 tp!705607))))

(declare-fun condSetEmpty!20531 () Bool)

(assert (=> b!2239854 (= condSetEmpty!20531 (= (_2!15406 (h!31796 (zeroValue!3395 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743)))))))) ((as const (Array Context!4094 Bool)) false)))))

(declare-fun setIsEmpty!20531 () Bool)

(assert (=> setIsEmpty!20531 setRes!20531))

(declare-fun b!2239855 () Bool)

(declare-fun e!1431942 () Bool)

(declare-fun tp!705610 () Bool)

(assert (=> b!2239855 (= e!1431942 tp!705610)))

(declare-fun tp!705609 () Bool)

(declare-fun setElem!20531 () Context!4094)

(declare-fun setNonEmpty!20531 () Bool)

(assert (=> setNonEmpty!20531 (= setRes!20531 (and tp!705609 (inv!35851 setElem!20531) e!1431942))))

(declare-fun setRest!20531 () (InoxSet Context!4094))

(assert (=> setNonEmpty!20531 (= (_2!15406 (h!31796 (zeroValue!3395 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4094 Bool)) false) setElem!20531 true) setRest!20531))))

(assert (= b!2239854 b!2239853))

(assert (= (and b!2239854 condSetEmpty!20531) setIsEmpty!20531))

(assert (= (and b!2239854 (not condSetEmpty!20531)) setNonEmpty!20531))

(assert (= setNonEmpty!20531 b!2239855))

(assert (= (and b!2239751 ((_ is Cons!26395) (zeroValue!3395 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743)))))))) b!2239854))

(declare-fun m!2672435 () Bool)

(assert (=> b!2239854 m!2672435))

(declare-fun m!2672437 () Bool)

(assert (=> setNonEmpty!20531 m!2672437))

(declare-fun e!1431947 () Bool)

(assert (=> b!2239751 (= tp!705546 e!1431947)))

(declare-fun b!2239856 () Bool)

(declare-fun e!1431946 () Bool)

(declare-fun tp!705611 () Bool)

(assert (=> b!2239856 (= e!1431946 tp!705611)))

(declare-fun b!2239857 () Bool)

(declare-fun setRes!20532 () Bool)

(declare-fun tp!705613 () Bool)

(declare-fun tp!705612 () Bool)

(assert (=> b!2239857 (= e!1431947 (and tp!705613 (inv!35851 (_2!15405 (_1!15406 (h!31796 (minValue!3395 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743)))))))))) e!1431946 tp_is_empty!10219 setRes!20532 tp!705612))))

(declare-fun condSetEmpty!20532 () Bool)

(assert (=> b!2239857 (= condSetEmpty!20532 (= (_2!15406 (h!31796 (minValue!3395 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743)))))))) ((as const (Array Context!4094 Bool)) false)))))

(declare-fun setIsEmpty!20532 () Bool)

(assert (=> setIsEmpty!20532 setRes!20532))

(declare-fun b!2239858 () Bool)

(declare-fun e!1431945 () Bool)

(declare-fun tp!705615 () Bool)

(assert (=> b!2239858 (= e!1431945 tp!705615)))

(declare-fun tp!705614 () Bool)

(declare-fun setNonEmpty!20532 () Bool)

(declare-fun setElem!20532 () Context!4094)

(assert (=> setNonEmpty!20532 (= setRes!20532 (and tp!705614 (inv!35851 setElem!20532) e!1431945))))

(declare-fun setRest!20532 () (InoxSet Context!4094))

(assert (=> setNonEmpty!20532 (= (_2!15406 (h!31796 (minValue!3395 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4094 Bool)) false) setElem!20532 true) setRest!20532))))

(assert (= b!2239857 b!2239856))

(assert (= (and b!2239857 condSetEmpty!20532) setIsEmpty!20532))

(assert (= (and b!2239857 (not condSetEmpty!20532)) setNonEmpty!20532))

(assert (= setNonEmpty!20532 b!2239858))

(assert (= (and b!2239751 ((_ is Cons!26395) (minValue!3395 (v!30017 (underlying!6475 (v!30018 (underlying!6476 (cache!3428 thiss!28743)))))))) b!2239857))

(declare-fun m!2672439 () Bool)

(assert (=> b!2239857 m!2672439))

(declare-fun m!2672441 () Bool)

(assert (=> setNonEmpty!20532 m!2672441))

(declare-fun setElem!20538 () Context!4094)

(declare-fun setNonEmpty!20537 () Bool)

(declare-fun e!1431963 () Bool)

(declare-fun setRes!20538 () Bool)

(declare-fun tp!705647 () Bool)

(assert (=> setNonEmpty!20537 (= setRes!20538 (and tp!705647 (inv!35851 setElem!20538) e!1431963))))

(declare-fun mapDefault!14717 () List!26489)

(declare-fun setRest!20537 () (InoxSet Context!4094))

(assert (=> setNonEmpty!20537 (= (_2!15406 (h!31796 mapDefault!14717)) ((_ map or) (store ((as const (Array Context!4094 Bool)) false) setElem!20538 true) setRest!20537))))

(declare-fun tp!705646 () Bool)

(declare-fun e!1431964 () Bool)

(declare-fun setRes!20537 () Bool)

(declare-fun setNonEmpty!20538 () Bool)

(declare-fun setElem!20537 () Context!4094)

(assert (=> setNonEmpty!20538 (= setRes!20537 (and tp!705646 (inv!35851 setElem!20537) e!1431964))))

(declare-fun mapValue!14717 () List!26489)

(declare-fun setRest!20538 () (InoxSet Context!4094))

(assert (=> setNonEmpty!20538 (= (_2!15406 (h!31796 mapValue!14717)) ((_ map or) (store ((as const (Array Context!4094 Bool)) false) setElem!20537 true) setRest!20538))))

(declare-fun b!2239874 () Bool)

(declare-fun tp!705638 () Bool)

(assert (=> b!2239874 (= e!1431963 tp!705638)))

(declare-fun b!2239875 () Bool)

(declare-fun e!1431965 () Bool)

(declare-fun tp!705648 () Bool)

(assert (=> b!2239875 (= e!1431965 tp!705648)))

(declare-fun mapNonEmpty!14717 () Bool)

(declare-fun mapRes!14717 () Bool)

(declare-fun tp!705641 () Bool)

(declare-fun e!1431961 () Bool)

(assert (=> mapNonEmpty!14717 (= mapRes!14717 (and tp!705641 e!1431961))))

(declare-fun mapKey!14717 () (_ BitVec 32))

(declare-fun mapRest!14717 () (Array (_ BitVec 32) List!26489))

(assert (=> mapNonEmpty!14717 (= mapRest!14714 (store mapRest!14717 mapKey!14717 mapValue!14717))))

(declare-fun mapIsEmpty!14717 () Bool)

(assert (=> mapIsEmpty!14717 mapRes!14717))

(declare-fun setIsEmpty!20537 () Bool)

(assert (=> setIsEmpty!20537 setRes!20537))

(declare-fun tp!705639 () Bool)

(declare-fun e!1431960 () Bool)

(declare-fun b!2239876 () Bool)

(declare-fun tp!705643 () Bool)

(assert (=> b!2239876 (= e!1431960 (and tp!705643 (inv!35851 (_2!15405 (_1!15406 (h!31796 mapDefault!14717)))) e!1431965 tp_is_empty!10219 setRes!20538 tp!705639))))

(declare-fun condSetEmpty!20538 () Bool)

(assert (=> b!2239876 (= condSetEmpty!20538 (= (_2!15406 (h!31796 mapDefault!14717)) ((as const (Array Context!4094 Bool)) false)))))

(declare-fun setIsEmpty!20538 () Bool)

(assert (=> setIsEmpty!20538 setRes!20538))

(declare-fun b!2239873 () Bool)

(declare-fun e!1431962 () Bool)

(declare-fun tp!705645 () Bool)

(assert (=> b!2239873 (= e!1431962 tp!705645)))

(declare-fun condMapEmpty!14717 () Bool)

(assert (=> mapNonEmpty!14714 (= condMapEmpty!14717 (= mapRest!14714 ((as const (Array (_ BitVec 32) List!26489)) mapDefault!14717)))))

(assert (=> mapNonEmpty!14714 (= tp!705545 (and e!1431960 mapRes!14717))))

(declare-fun b!2239877 () Bool)

(declare-fun tp!705640 () Bool)

(assert (=> b!2239877 (= e!1431964 tp!705640)))

(declare-fun b!2239878 () Bool)

(declare-fun tp!705642 () Bool)

(declare-fun tp!705644 () Bool)

(assert (=> b!2239878 (= e!1431961 (and tp!705644 (inv!35851 (_2!15405 (_1!15406 (h!31796 mapValue!14717)))) e!1431962 tp_is_empty!10219 setRes!20537 tp!705642))))

(declare-fun condSetEmpty!20537 () Bool)

(assert (=> b!2239878 (= condSetEmpty!20537 (= (_2!15406 (h!31796 mapValue!14717)) ((as const (Array Context!4094 Bool)) false)))))

(assert (= (and mapNonEmpty!14714 condMapEmpty!14717) mapIsEmpty!14717))

(assert (= (and mapNonEmpty!14714 (not condMapEmpty!14717)) mapNonEmpty!14717))

(assert (= b!2239878 b!2239873))

(assert (= (and b!2239878 condSetEmpty!20537) setIsEmpty!20537))

(assert (= (and b!2239878 (not condSetEmpty!20537)) setNonEmpty!20538))

(assert (= setNonEmpty!20538 b!2239877))

(assert (= (and mapNonEmpty!14717 ((_ is Cons!26395) mapValue!14717)) b!2239878))

(assert (= b!2239876 b!2239875))

(assert (= (and b!2239876 condSetEmpty!20538) setIsEmpty!20538))

(assert (= (and b!2239876 (not condSetEmpty!20538)) setNonEmpty!20537))

(assert (= setNonEmpty!20537 b!2239874))

(assert (= (and mapNonEmpty!14714 ((_ is Cons!26395) mapDefault!14717)) b!2239876))

(declare-fun m!2672443 () Bool)

(assert (=> b!2239876 m!2672443))

(declare-fun m!2672445 () Bool)

(assert (=> setNonEmpty!20538 m!2672445))

(declare-fun m!2672447 () Bool)

(assert (=> mapNonEmpty!14717 m!2672447))

(declare-fun m!2672449 () Bool)

(assert (=> b!2239878 m!2672449))

(declare-fun m!2672451 () Bool)

(assert (=> setNonEmpty!20537 m!2672451))

(declare-fun e!1431968 () Bool)

(assert (=> mapNonEmpty!14714 (= tp!705550 e!1431968)))

(declare-fun b!2239879 () Bool)

(declare-fun e!1431967 () Bool)

(declare-fun tp!705649 () Bool)

(assert (=> b!2239879 (= e!1431967 tp!705649)))

(declare-fun tp!705650 () Bool)

(declare-fun b!2239880 () Bool)

(declare-fun tp!705651 () Bool)

(declare-fun setRes!20539 () Bool)

(assert (=> b!2239880 (= e!1431968 (and tp!705651 (inv!35851 (_2!15405 (_1!15406 (h!31796 mapValue!14714)))) e!1431967 tp_is_empty!10219 setRes!20539 tp!705650))))

(declare-fun condSetEmpty!20539 () Bool)

(assert (=> b!2239880 (= condSetEmpty!20539 (= (_2!15406 (h!31796 mapValue!14714)) ((as const (Array Context!4094 Bool)) false)))))

(declare-fun setIsEmpty!20539 () Bool)

(assert (=> setIsEmpty!20539 setRes!20539))

(declare-fun b!2239881 () Bool)

(declare-fun e!1431966 () Bool)

(declare-fun tp!705653 () Bool)

(assert (=> b!2239881 (= e!1431966 tp!705653)))

(declare-fun tp!705652 () Bool)

(declare-fun setElem!20539 () Context!4094)

(declare-fun setNonEmpty!20539 () Bool)

(assert (=> setNonEmpty!20539 (= setRes!20539 (and tp!705652 (inv!35851 setElem!20539) e!1431966))))

(declare-fun setRest!20539 () (InoxSet Context!4094))

(assert (=> setNonEmpty!20539 (= (_2!15406 (h!31796 mapValue!14714)) ((_ map or) (store ((as const (Array Context!4094 Bool)) false) setElem!20539 true) setRest!20539))))

(assert (= b!2239880 b!2239879))

(assert (= (and b!2239880 condSetEmpty!20539) setIsEmpty!20539))

(assert (= (and b!2239880 (not condSetEmpty!20539)) setNonEmpty!20539))

(assert (= setNonEmpty!20539 b!2239881))

(assert (= (and mapNonEmpty!14714 ((_ is Cons!26395) mapValue!14714)) b!2239880))

(declare-fun m!2672453 () Bool)

(assert (=> b!2239880 m!2672453))

(declare-fun m!2672455 () Bool)

(assert (=> setNonEmpty!20539 m!2672455))

(declare-fun b!2239884 () Bool)

(declare-fun e!1431969 () Bool)

(declare-fun tp!705655 () Bool)

(assert (=> b!2239884 (= e!1431969 tp!705655)))

(declare-fun b!2239885 () Bool)

(declare-fun tp!705656 () Bool)

(declare-fun tp!705657 () Bool)

(assert (=> b!2239885 (= e!1431969 (and tp!705656 tp!705657))))

(declare-fun b!2239882 () Bool)

(assert (=> b!2239882 (= e!1431969 tp_is_empty!10219)))

(declare-fun b!2239883 () Bool)

(declare-fun tp!705654 () Bool)

(declare-fun tp!705658 () Bool)

(assert (=> b!2239883 (= e!1431969 (and tp!705654 tp!705658))))

(assert (=> b!2239755 (= tp!705552 e!1431969)))

(assert (= (and b!2239755 ((_ is ElementMatch!6499) (reg!6828 r!4750))) b!2239882))

(assert (= (and b!2239755 ((_ is Concat!10837) (reg!6828 r!4750))) b!2239883))

(assert (= (and b!2239755 ((_ is Star!6499) (reg!6828 r!4750))) b!2239884))

(assert (= (and b!2239755 ((_ is Union!6499) (reg!6828 r!4750))) b!2239885))

(check-sat (not b!2239875) (not b!2239820) (not b!2239884) (not b!2239801) (not b!2239794) (not b!2239879) (not b!2239771) (not d!665695) (not b!2239852) (not b!2239809) b_and!175021 (not bm!135154) (not b!2239878) (not b!2239837) (not b_next!65715) (not b!2239768) (not b_next!65713) (not b!2239881) (not b!2239835) (not b!2239873) (not setNonEmpty!20539) (not setNonEmpty!20530) (not b!2239877) (not b!2239839) (not b!2239846) (not b!2239848) (not b!2239854) (not setNonEmpty!20538) (not bm!135149) (not setNonEmpty!20532) (not b!2239767) (not bm!135151) (not d!665683) (not bm!135150) (not b!2239803) (not b!2239885) (not d!665689) tp_is_empty!10219 (not b!2239819) (not b!2239853) (not b!2239874) (not b!2239876) (not b!2239850) (not b!2239880) (not b!2239802) (not b!2239883) (not b!2239798) (not setNonEmpty!20537) (not d!665687) (not b!2239821) (not b!2239833) (not b!2239858) (not b!2239838) (not b!2239834) (not b!2239851) (not mapNonEmpty!14717) (not b!2239856) (not b!2239847) (not bm!135152) (not b!2239855) (not setNonEmpty!20531) b_and!175023 (not b!2239844) (not bm!135153) (not b!2239857) (not b!2239810))
(check-sat b_and!175021 b_and!175023 (not b_next!65715) (not b_next!65713))
