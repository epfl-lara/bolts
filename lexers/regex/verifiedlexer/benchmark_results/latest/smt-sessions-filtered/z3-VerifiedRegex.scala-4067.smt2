; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218402 () Bool)

(assert start!218402)

(declare-fun b!2241592 () Bool)

(declare-fun b_free!65113 () Bool)

(declare-fun b_next!65817 () Bool)

(assert (=> b!2241592 (= b_free!65113 (not b_next!65817))))

(declare-fun tp!706784 () Bool)

(declare-fun b_and!175141 () Bool)

(assert (=> b!2241592 (= tp!706784 b_and!175141)))

(declare-fun b!2241595 () Bool)

(declare-fun b_free!65115 () Bool)

(declare-fun b_next!65819 () Bool)

(assert (=> b!2241595 (= b_free!65115 (not b_next!65819))))

(declare-fun tp!706788 () Bool)

(declare-fun b_and!175143 () Bool)

(assert (=> b!2241595 (= tp!706788 b_and!175143)))

(declare-fun b!2241591 () Bool)

(declare-fun e!1433424 () Bool)

(declare-fun e!1433431 () Bool)

(assert (=> b!2241591 (= e!1433424 e!1433431)))

(declare-fun e!1433433 () Bool)

(assert (=> b!2241592 (= e!1433431 (and e!1433433 tp!706784))))

(declare-fun mapIsEmpty!14816 () Bool)

(declare-fun mapRes!14816 () Bool)

(assert (=> mapIsEmpty!14816 mapRes!14816))

(declare-fun b!2241593 () Bool)

(declare-fun e!1433427 () Bool)

(declare-datatypes ((C!13196 0))(
  ( (C!13197 (val!7646 Int)) )
))
(declare-datatypes ((Regex!6525 0))(
  ( (ElementMatch!6525 (c!356908 C!13196)) (Concat!10863 (regOne!13562 Regex!6525) (regTwo!13562 Regex!6525)) (EmptyExpr!6525) (Star!6525 (reg!6854 Regex!6525)) (EmptyLang!6525) (Union!6525 (regOne!13563 Regex!6525) (regTwo!13563 Regex!6525)) )
))
(declare-datatypes ((List!26548 0))(
  ( (Nil!26454) (Cons!26454 (h!31855 Regex!6525) (t!199988 List!26548)) )
))
(declare-datatypes ((Context!4146 0))(
  ( (Context!4147 (exprs!2573 List!26548)) )
))
(declare-datatypes ((tuple2!25910 0))(
  ( (tuple2!25911 (_1!15465 Context!4146) (_2!15465 C!13196)) )
))
(declare-datatypes ((array!11070 0))(
  ( (array!11071 (arr!4913 (Array (_ BitVec 32) (_ BitVec 64))) (size!20694 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25912 0))(
  ( (tuple2!25913 (_1!15466 tuple2!25910) (_2!15466 (InoxSet Context!4146))) )
))
(declare-datatypes ((List!26549 0))(
  ( (Nil!26455) (Cons!26455 (h!31856 tuple2!25912) (t!199989 List!26549)) )
))
(declare-datatypes ((array!11072 0))(
  ( (array!11073 (arr!4914 (Array (_ BitVec 32) List!26549)) (size!20695 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6326 0))(
  ( (LongMapFixedSize!6327 (defaultEntry!3528 Int) (mask!7779 (_ BitVec 32)) (extraKeys!3411 (_ BitVec 32)) (zeroValue!3421 List!26549) (minValue!3421 List!26549) (_size!6373 (_ BitVec 32)) (_keys!3460 array!11070) (_values!3443 array!11072) (_vacant!3224 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12469 0))(
  ( (Cell!12470 (v!30092 LongMapFixedSize!6326)) )
))
(declare-datatypes ((MutLongMap!3163 0))(
  ( (LongMap!3163 (underlying!6527 Cell!12469)) (MutLongMapExt!3162 (__x!17715 Int)) )
))
(declare-datatypes ((Cell!12471 0))(
  ( (Cell!12472 (v!30093 MutLongMap!3163)) )
))
(declare-datatypes ((Hashable!3073 0))(
  ( (HashableExt!3072 (__x!17716 Int)) )
))
(declare-datatypes ((MutableMap!3073 0))(
  ( (MutableMapExt!3072 (__x!17717 Int)) (HashMap!3073 (underlying!6528 Cell!12471) (hashF!4996 Hashable!3073) (_size!6374 (_ BitVec 32)) (defaultValue!3235 Int)) )
))
(declare-datatypes ((CacheUp!2016 0))(
  ( (CacheUp!2017 (cache!3454 MutableMap!3073)) )
))
(declare-fun thiss!28603 () CacheUp!2016)

(get-info :version)

(assert (=> b!2241593 (= e!1433427 (not ((_ is HashMap!3073) (cache!3454 thiss!28603))))))

(declare-fun mapNonEmpty!14816 () Bool)

(declare-fun tp!706781 () Bool)

(declare-fun tp!706783 () Bool)

(assert (=> mapNonEmpty!14816 (= mapRes!14816 (and tp!706781 tp!706783))))

(declare-fun mapKey!14816 () (_ BitVec 32))

(declare-fun mapValue!14816 () List!26549)

(declare-fun mapRest!14816 () (Array (_ BitVec 32) List!26549))

(assert (=> mapNonEmpty!14816 (= (arr!4914 (_values!3443 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))))) (store mapRest!14816 mapKey!14816 mapValue!14816))))

(declare-fun b!2241594 () Bool)

(declare-fun e!1433425 () Bool)

(declare-fun lt!834537 () MutLongMap!3163)

(assert (=> b!2241594 (= e!1433433 (and e!1433425 ((_ is LongMap!3163) lt!834537)))))

(assert (=> b!2241594 (= lt!834537 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))))

(declare-fun tp!706786 () Bool)

(declare-fun e!1433428 () Bool)

(declare-fun e!1433430 () Bool)

(declare-fun tp!706782 () Bool)

(declare-fun array_inv!3529 (array!11070) Bool)

(declare-fun array_inv!3530 (array!11072) Bool)

(assert (=> b!2241595 (= e!1433430 (and tp!706788 tp!706786 tp!706782 (array_inv!3529 (_keys!3460 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))))) (array_inv!3530 (_values!3443 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))))) e!1433428))))

(declare-fun b!2241596 () Bool)

(declare-fun e!1433426 () Bool)

(assert (=> b!2241596 (= e!1433425 e!1433426)))

(declare-fun b!2241597 () Bool)

(declare-fun tp!706787 () Bool)

(assert (=> b!2241597 (= e!1433428 (and tp!706787 mapRes!14816))))

(declare-fun condMapEmpty!14816 () Bool)

(declare-fun mapDefault!14816 () List!26549)

(assert (=> b!2241597 (= condMapEmpty!14816 (= (arr!4914 (_values!3443 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))))) ((as const (Array (_ BitVec 32) List!26549)) mapDefault!14816)))))

(declare-fun b!2241599 () Bool)

(declare-fun res!957967 () Bool)

(assert (=> b!2241599 (=> (not res!957967) (not e!1433427))))

(declare-fun ctx!36 () Context!4146)

(declare-fun a!922 () C!13196)

(declare-fun contains!4506 (MutableMap!3073 tuple2!25910) Bool)

(assert (=> b!2241599 (= res!957967 (not (contains!4506 (cache!3454 thiss!28603) (tuple2!25911 ctx!36 a!922))))))

(declare-fun b!2241600 () Bool)

(declare-fun e!1433429 () Bool)

(declare-fun tp!706785 () Bool)

(assert (=> b!2241600 (= e!1433429 tp!706785)))

(declare-fun b!2241598 () Bool)

(assert (=> b!2241598 (= e!1433426 e!1433430)))

(declare-fun res!957968 () Bool)

(assert (=> start!218402 (=> (not res!957968) (not e!1433427))))

(declare-fun validCacheMapUp!306 (MutableMap!3073) Bool)

(assert (=> start!218402 (= res!957968 (validCacheMapUp!306 (cache!3454 thiss!28603)))))

(assert (=> start!218402 e!1433427))

(declare-fun inv!35929 (CacheUp!2016) Bool)

(assert (=> start!218402 (and (inv!35929 thiss!28603) e!1433424)))

(declare-fun inv!35930 (Context!4146) Bool)

(assert (=> start!218402 (and (inv!35930 ctx!36) e!1433429)))

(declare-fun tp_is_empty!10271 () Bool)

(assert (=> start!218402 tp_is_empty!10271))

(assert (= (and start!218402 res!957968) b!2241599))

(assert (= (and b!2241599 res!957967) b!2241593))

(assert (= (and b!2241597 condMapEmpty!14816) mapIsEmpty!14816))

(assert (= (and b!2241597 (not condMapEmpty!14816)) mapNonEmpty!14816))

(assert (= b!2241595 b!2241597))

(assert (= b!2241598 b!2241595))

(assert (= b!2241596 b!2241598))

(assert (= (and b!2241594 ((_ is LongMap!3163) (v!30093 (underlying!6528 (cache!3454 thiss!28603))))) b!2241596))

(assert (= b!2241592 b!2241594))

(assert (= (and b!2241591 ((_ is HashMap!3073) (cache!3454 thiss!28603))) b!2241592))

(assert (= start!218402 b!2241591))

(assert (= start!218402 b!2241600))

(declare-fun m!2673886 () Bool)

(assert (=> mapNonEmpty!14816 m!2673886))

(declare-fun m!2673888 () Bool)

(assert (=> b!2241595 m!2673888))

(declare-fun m!2673890 () Bool)

(assert (=> b!2241595 m!2673890))

(declare-fun m!2673892 () Bool)

(assert (=> b!2241599 m!2673892))

(declare-fun m!2673894 () Bool)

(assert (=> start!218402 m!2673894))

(declare-fun m!2673896 () Bool)

(assert (=> start!218402 m!2673896))

(declare-fun m!2673898 () Bool)

(assert (=> start!218402 m!2673898))

(check-sat tp_is_empty!10271 (not start!218402) (not b!2241595) (not b!2241599) (not b!2241600) b_and!175143 (not b!2241597) (not b_next!65819) (not b_next!65817) b_and!175141 (not mapNonEmpty!14816))
(check-sat b_and!175141 b_and!175143 (not b_next!65819) (not b_next!65817))
(get-model)

(declare-fun d!665844 () Bool)

(assert (=> d!665844 (= (array_inv!3529 (_keys!3460 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))))) (bvsge (size!20694 (_keys!3460 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2241595 d!665844))

(declare-fun d!665846 () Bool)

(assert (=> d!665846 (= (array_inv!3530 (_values!3443 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))))) (bvsge (size!20695 (_values!3443 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2241595 d!665846))

(declare-fun d!665848 () Bool)

(declare-fun res!957973 () Bool)

(declare-fun e!1433436 () Bool)

(assert (=> d!665848 (=> (not res!957973) (not e!1433436))))

(declare-fun valid!2377 (MutableMap!3073) Bool)

(assert (=> d!665848 (= res!957973 (valid!2377 (cache!3454 thiss!28603)))))

(assert (=> d!665848 (= (validCacheMapUp!306 (cache!3454 thiss!28603)) e!1433436)))

(declare-fun b!2241605 () Bool)

(declare-fun res!957974 () Bool)

(assert (=> b!2241605 (=> (not res!957974) (not e!1433436))))

(declare-fun invariantList!392 (List!26549) Bool)

(declare-datatypes ((ListMap!881 0))(
  ( (ListMap!882 (toList!1395 List!26549)) )
))
(declare-fun map!5479 (MutableMap!3073) ListMap!881)

(assert (=> b!2241605 (= res!957974 (invariantList!392 (toList!1395 (map!5479 (cache!3454 thiss!28603)))))))

(declare-fun b!2241606 () Bool)

(declare-fun lambda!84846 () Int)

(declare-fun forall!5450 (List!26549 Int) Bool)

(assert (=> b!2241606 (= e!1433436 (forall!5450 (toList!1395 (map!5479 (cache!3454 thiss!28603))) lambda!84846))))

(assert (= (and d!665848 res!957973) b!2241605))

(assert (= (and b!2241605 res!957974) b!2241606))

(declare-fun m!2673901 () Bool)

(assert (=> d!665848 m!2673901))

(declare-fun m!2673903 () Bool)

(assert (=> b!2241605 m!2673903))

(declare-fun m!2673905 () Bool)

(assert (=> b!2241605 m!2673905))

(assert (=> b!2241606 m!2673903))

(declare-fun m!2673907 () Bool)

(assert (=> b!2241606 m!2673907))

(assert (=> start!218402 d!665848))

(declare-fun d!665850 () Bool)

(declare-fun res!957977 () Bool)

(declare-fun e!1433439 () Bool)

(assert (=> d!665850 (=> (not res!957977) (not e!1433439))))

(assert (=> d!665850 (= res!957977 ((_ is HashMap!3073) (cache!3454 thiss!28603)))))

(assert (=> d!665850 (= (inv!35929 thiss!28603) e!1433439)))

(declare-fun b!2241609 () Bool)

(assert (=> b!2241609 (= e!1433439 (validCacheMapUp!306 (cache!3454 thiss!28603)))))

(assert (= (and d!665850 res!957977) b!2241609))

(assert (=> b!2241609 m!2673894))

(assert (=> start!218402 d!665850))

(declare-fun d!665852 () Bool)

(declare-fun lambda!84849 () Int)

(declare-fun forall!5451 (List!26548 Int) Bool)

(assert (=> d!665852 (= (inv!35930 ctx!36) (forall!5451 (exprs!2573 ctx!36) lambda!84849))))

(declare-fun bs!454341 () Bool)

(assert (= bs!454341 d!665852))

(declare-fun m!2673909 () Bool)

(assert (=> bs!454341 m!2673909))

(assert (=> start!218402 d!665852))

(declare-fun b!2241632 () Bool)

(declare-datatypes ((Unit!39439 0))(
  ( (Unit!39440) )
))
(declare-fun e!1433460 () Unit!39439)

(declare-fun Unit!39441 () Unit!39439)

(assert (=> b!2241632 (= e!1433460 Unit!39441)))

(declare-fun bm!135302 () Bool)

(declare-fun call!135310 () Bool)

(declare-datatypes ((Option!5169 0))(
  ( (None!5168) (Some!5168 (v!30094 tuple2!25912)) )
))
(declare-fun call!135311 () Option!5169)

(declare-fun isDefined!4171 (Option!5169) Bool)

(assert (=> bm!135302 (= call!135310 (isDefined!4171 call!135311))))

(declare-fun bm!135303 () Bool)

(declare-fun call!135307 () (_ BitVec 64))

(declare-fun hash!593 (Hashable!3073 tuple2!25910) (_ BitVec 64))

(assert (=> bm!135303 (= call!135307 (hash!593 (hashF!4996 (cache!3454 thiss!28603)) (tuple2!25911 ctx!36 a!922)))))

(declare-datatypes ((tuple2!25914 0))(
  ( (tuple2!25915 (_1!15467 (_ BitVec 64)) (_2!15467 List!26549)) )
))
(declare-datatypes ((List!26550 0))(
  ( (Nil!26456) (Cons!26456 (h!31857 tuple2!25914) (t!199990 List!26550)) )
))
(declare-datatypes ((ListLongMap!363 0))(
  ( (ListLongMap!364 (toList!1396 List!26550)) )
))
(declare-fun lt!834585 () ListLongMap!363)

(declare-fun call!135309 () Bool)

(declare-fun c!356919 () Bool)

(declare-fun call!135312 () ListLongMap!363)

(declare-fun bm!135304 () Bool)

(declare-fun contains!4507 (ListLongMap!363 (_ BitVec 64)) Bool)

(assert (=> bm!135304 (= call!135309 (contains!4507 (ite c!356919 lt!834585 call!135312) call!135307))))

(declare-fun b!2241633 () Bool)

(assert (=> b!2241633 false))

(declare-fun lt!834587 () Unit!39439)

(declare-fun lt!834584 () Unit!39439)

(assert (=> b!2241633 (= lt!834587 lt!834584)))

(declare-fun lt!834593 () ListLongMap!363)

(declare-fun contains!4508 (ListMap!881 tuple2!25910) Bool)

(declare-fun extractMap!126 (List!26550) ListMap!881)

(assert (=> b!2241633 (contains!4508 (extractMap!126 (toList!1396 lt!834593)) (tuple2!25911 ctx!36 a!922))))

(declare-fun lemmaInLongMapThenInGenericMap!46 (ListLongMap!363 tuple2!25910 Hashable!3073) Unit!39439)

(assert (=> b!2241633 (= lt!834584 (lemmaInLongMapThenInGenericMap!46 lt!834593 (tuple2!25911 ctx!36 a!922) (hashF!4996 (cache!3454 thiss!28603))))))

(assert (=> b!2241633 (= lt!834593 call!135312)))

(declare-fun Unit!39442 () Unit!39439)

(assert (=> b!2241633 (= e!1433460 Unit!39442)))

(declare-fun bm!135306 () Bool)

(declare-fun map!5480 (MutLongMap!3163) ListLongMap!363)

(assert (=> bm!135306 (= call!135312 (map!5480 (v!30093 (underlying!6528 (cache!3454 thiss!28603)))))))

(declare-fun call!135308 () List!26549)

(declare-fun bm!135307 () Bool)

(declare-fun apply!6532 (ListLongMap!363 (_ BitVec 64)) List!26549)

(assert (=> bm!135307 (= call!135308 (apply!6532 (ite c!356919 lt!834585 call!135312) call!135307))))

(declare-fun b!2241634 () Bool)

(declare-fun e!1433459 () Unit!39439)

(declare-fun lt!834586 () Unit!39439)

(assert (=> b!2241634 (= e!1433459 lt!834586)))

(assert (=> b!2241634 (= lt!834585 call!135312)))

(declare-fun lemmaInGenericMapThenInLongMap!46 (ListLongMap!363 tuple2!25910 Hashable!3073) Unit!39439)

(assert (=> b!2241634 (= lt!834586 (lemmaInGenericMapThenInLongMap!46 lt!834585 (tuple2!25911 ctx!36 a!922) (hashF!4996 (cache!3454 thiss!28603))))))

(declare-fun res!957986 () Bool)

(assert (=> b!2241634 (= res!957986 call!135309)))

(declare-fun e!1433455 () Bool)

(assert (=> b!2241634 (=> (not res!957986) (not e!1433455))))

(assert (=> b!2241634 e!1433455))

(declare-fun e!1433458 () Unit!39439)

(declare-fun b!2241635 () Bool)

(declare-fun lt!834596 () (_ BitVec 64))

(declare-fun lambda!84852 () Int)

(declare-fun forallContained!793 (List!26550 Int tuple2!25914) Unit!39439)

(declare-fun apply!6533 (MutLongMap!3163 (_ BitVec 64)) List!26549)

(assert (=> b!2241635 (= e!1433458 (forallContained!793 (toList!1396 (map!5480 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))) lambda!84852 (tuple2!25915 lt!834596 (apply!6533 (v!30093 (underlying!6528 (cache!3454 thiss!28603))) lt!834596))))))

(declare-fun c!356917 () Bool)

(declare-fun contains!4509 (List!26550 tuple2!25914) Bool)

(assert (=> b!2241635 (= c!356917 (not (contains!4509 (toList!1396 (map!5480 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))) (tuple2!25915 lt!834596 (apply!6533 (v!30093 (underlying!6528 (cache!3454 thiss!28603))) lt!834596)))))))

(declare-fun lt!834595 () Unit!39439)

(declare-fun e!1433457 () Unit!39439)

(assert (=> b!2241635 (= lt!834595 e!1433457)))

(declare-fun b!2241636 () Bool)

(assert (=> b!2241636 (= e!1433455 call!135310)))

(declare-fun b!2241637 () Bool)

(declare-fun Unit!39443 () Unit!39439)

(assert (=> b!2241637 (= e!1433457 Unit!39443)))

(declare-fun b!2241638 () Bool)

(declare-fun e!1433456 () Bool)

(assert (=> b!2241638 (= e!1433456 call!135310)))

(declare-fun b!2241639 () Bool)

(declare-fun Unit!39444 () Unit!39439)

(assert (=> b!2241639 (= e!1433458 Unit!39444)))

(declare-fun b!2241640 () Bool)

(assert (=> b!2241640 (= e!1433459 e!1433460)))

(declare-fun res!957985 () Bool)

(assert (=> b!2241640 (= res!957985 call!135309)))

(assert (=> b!2241640 (=> (not res!957985) (not e!1433456))))

(declare-fun c!356920 () Bool)

(assert (=> b!2241640 (= c!356920 e!1433456)))

(declare-fun b!2241641 () Bool)

(assert (=> b!2241641 false))

(declare-fun lt!834583 () Unit!39439)

(declare-fun lt!834581 () Unit!39439)

(assert (=> b!2241641 (= lt!834583 lt!834581)))

(declare-fun lt!834590 () List!26550)

(declare-fun lt!834591 () List!26549)

(assert (=> b!2241641 (contains!4509 lt!834590 (tuple2!25915 lt!834596 lt!834591))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!47 (List!26550 (_ BitVec 64) List!26549) Unit!39439)

(assert (=> b!2241641 (= lt!834581 (lemmaGetValueByKeyImpliesContainsTuple!47 lt!834590 lt!834596 lt!834591))))

(assert (=> b!2241641 (= lt!834591 (apply!6533 (v!30093 (underlying!6528 (cache!3454 thiss!28603))) lt!834596))))

(assert (=> b!2241641 (= lt!834590 (toList!1396 (map!5480 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))))))

(declare-fun lt!834589 () Unit!39439)

(declare-fun lt!834594 () Unit!39439)

(assert (=> b!2241641 (= lt!834589 lt!834594)))

(declare-fun lt!834597 () List!26550)

(declare-datatypes ((Option!5170 0))(
  ( (None!5169) (Some!5169 (v!30095 List!26549)) )
))
(declare-fun isDefined!4172 (Option!5170) Bool)

(declare-fun getValueByKey!100 (List!26550 (_ BitVec 64)) Option!5170)

(assert (=> b!2241641 (isDefined!4172 (getValueByKey!100 lt!834597 lt!834596))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!64 (List!26550 (_ BitVec 64)) Unit!39439)

(assert (=> b!2241641 (= lt!834594 (lemmaContainsKeyImpliesGetValueByKeyDefined!64 lt!834597 lt!834596))))

(assert (=> b!2241641 (= lt!834597 (toList!1396 (map!5480 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))))))

(declare-fun lt!834588 () Unit!39439)

(declare-fun lt!834580 () Unit!39439)

(assert (=> b!2241641 (= lt!834588 lt!834580)))

(declare-fun lt!834578 () List!26550)

(declare-fun containsKey!95 (List!26550 (_ BitVec 64)) Bool)

(assert (=> b!2241641 (containsKey!95 lt!834578 lt!834596)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!47 (List!26550 (_ BitVec 64)) Unit!39439)

(assert (=> b!2241641 (= lt!834580 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!47 lt!834578 lt!834596))))

(assert (=> b!2241641 (= lt!834578 (toList!1396 (map!5480 (v!30093 (underlying!6528 (cache!3454 thiss!28603))))))))

(declare-fun Unit!39445 () Unit!39439)

(assert (=> b!2241641 (= e!1433457 Unit!39445)))

(declare-fun b!2241642 () Bool)

(declare-fun e!1433454 () Bool)

(declare-fun getPair!46 (List!26549 tuple2!25910) Option!5169)

(assert (=> b!2241642 (= e!1433454 (isDefined!4171 (getPair!46 (apply!6533 (v!30093 (underlying!6528 (cache!3454 thiss!28603))) lt!834596) (tuple2!25911 ctx!36 a!922))))))

(declare-fun bm!135305 () Bool)

(assert (=> bm!135305 (= call!135311 (getPair!46 call!135308 (tuple2!25911 ctx!36 a!922)))))

(declare-fun lt!834579 () Bool)

(declare-fun d!665854 () Bool)

(assert (=> d!665854 (= lt!834579 (contains!4508 (map!5479 (cache!3454 thiss!28603)) (tuple2!25911 ctx!36 a!922)))))

(assert (=> d!665854 (= lt!834579 e!1433454)))

(declare-fun res!957984 () Bool)

(assert (=> d!665854 (=> (not res!957984) (not e!1433454))))

(declare-fun contains!4510 (MutLongMap!3163 (_ BitVec 64)) Bool)

(assert (=> d!665854 (= res!957984 (contains!4510 (v!30093 (underlying!6528 (cache!3454 thiss!28603))) lt!834596))))

(declare-fun lt!834592 () Unit!39439)

(assert (=> d!665854 (= lt!834592 e!1433459)))

(assert (=> d!665854 (= c!356919 (contains!4508 (extractMap!126 (toList!1396 (map!5480 (v!30093 (underlying!6528 (cache!3454 thiss!28603)))))) (tuple2!25911 ctx!36 a!922)))))

(declare-fun lt!834582 () Unit!39439)

(assert (=> d!665854 (= lt!834582 e!1433458)))

(declare-fun c!356918 () Bool)

(assert (=> d!665854 (= c!356918 (contains!4510 (v!30093 (underlying!6528 (cache!3454 thiss!28603))) lt!834596))))

(assert (=> d!665854 (= lt!834596 (hash!593 (hashF!4996 (cache!3454 thiss!28603)) (tuple2!25911 ctx!36 a!922)))))

(assert (=> d!665854 (valid!2377 (cache!3454 thiss!28603))))

(assert (=> d!665854 (= (contains!4506 (cache!3454 thiss!28603) (tuple2!25911 ctx!36 a!922)) lt!834579)))

(assert (= (and d!665854 c!356918) b!2241635))

(assert (= (and d!665854 (not c!356918)) b!2241639))

(assert (= (and b!2241635 c!356917) b!2241641))

(assert (= (and b!2241635 (not c!356917)) b!2241637))

(assert (= (and d!665854 c!356919) b!2241634))

(assert (= (and d!665854 (not c!356919)) b!2241640))

(assert (= (and b!2241634 res!957986) b!2241636))

(assert (= (and b!2241640 res!957985) b!2241638))

(assert (= (and b!2241640 c!356920) b!2241633))

(assert (= (and b!2241640 (not c!356920)) b!2241632))

(assert (= (or b!2241634 b!2241636 b!2241640 b!2241638) bm!135303))

(assert (= (or b!2241634 b!2241640 b!2241638 b!2241633) bm!135306))

(assert (= (or b!2241636 b!2241638) bm!135307))

(assert (= (or b!2241634 b!2241640) bm!135304))

(assert (= (or b!2241636 b!2241638) bm!135305))

(assert (= (or b!2241636 b!2241638) bm!135302))

(assert (= (and d!665854 res!957984) b!2241642))

(declare-fun m!2673911 () Bool)

(assert (=> bm!135305 m!2673911))

(declare-fun m!2673913 () Bool)

(assert (=> b!2241633 m!2673913))

(assert (=> b!2241633 m!2673913))

(declare-fun m!2673915 () Bool)

(assert (=> b!2241633 m!2673915))

(declare-fun m!2673917 () Bool)

(assert (=> b!2241633 m!2673917))

(declare-fun m!2673919 () Bool)

(assert (=> b!2241642 m!2673919))

(assert (=> b!2241642 m!2673919))

(declare-fun m!2673921 () Bool)

(assert (=> b!2241642 m!2673921))

(assert (=> b!2241642 m!2673921))

(declare-fun m!2673923 () Bool)

(assert (=> b!2241642 m!2673923))

(declare-fun m!2673925 () Bool)

(assert (=> bm!135304 m!2673925))

(assert (=> d!665854 m!2673903))

(declare-fun m!2673927 () Bool)

(assert (=> d!665854 m!2673927))

(declare-fun m!2673929 () Bool)

(assert (=> d!665854 m!2673929))

(declare-fun m!2673931 () Bool)

(assert (=> d!665854 m!2673931))

(declare-fun m!2673933 () Bool)

(assert (=> d!665854 m!2673933))

(assert (=> d!665854 m!2673901))

(assert (=> d!665854 m!2673903))

(assert (=> d!665854 m!2673931))

(declare-fun m!2673935 () Bool)

(assert (=> d!665854 m!2673935))

(declare-fun m!2673937 () Bool)

(assert (=> d!665854 m!2673937))

(assert (=> bm!135306 m!2673929))

(assert (=> b!2241635 m!2673929))

(assert (=> b!2241635 m!2673919))

(declare-fun m!2673939 () Bool)

(assert (=> b!2241635 m!2673939))

(declare-fun m!2673941 () Bool)

(assert (=> b!2241635 m!2673941))

(assert (=> bm!135303 m!2673933))

(declare-fun m!2673943 () Bool)

(assert (=> bm!135302 m!2673943))

(declare-fun m!2673945 () Bool)

(assert (=> bm!135307 m!2673945))

(declare-fun m!2673947 () Bool)

(assert (=> b!2241634 m!2673947))

(assert (=> b!2241641 m!2673919))

(assert (=> b!2241641 m!2673929))

(declare-fun m!2673949 () Bool)

(assert (=> b!2241641 m!2673949))

(declare-fun m!2673951 () Bool)

(assert (=> b!2241641 m!2673951))

(declare-fun m!2673953 () Bool)

(assert (=> b!2241641 m!2673953))

(declare-fun m!2673955 () Bool)

(assert (=> b!2241641 m!2673955))

(declare-fun m!2673957 () Bool)

(assert (=> b!2241641 m!2673957))

(declare-fun m!2673959 () Bool)

(assert (=> b!2241641 m!2673959))

(assert (=> b!2241641 m!2673949))

(declare-fun m!2673961 () Bool)

(assert (=> b!2241641 m!2673961))

(assert (=> b!2241599 d!665854))

(declare-fun b!2241647 () Bool)

(declare-fun e!1433463 () Bool)

(declare-fun tp!706793 () Bool)

(declare-fun tp!706794 () Bool)

(assert (=> b!2241647 (= e!1433463 (and tp!706793 tp!706794))))

(assert (=> b!2241600 (= tp!706785 e!1433463)))

(assert (= (and b!2241600 ((_ is Cons!26454) (exprs!2573 ctx!36))) b!2241647))

(declare-fun setIsEmpty!20626 () Bool)

(declare-fun setRes!20626 () Bool)

(assert (=> setIsEmpty!20626 setRes!20626))

(declare-fun b!2241656 () Bool)

(declare-fun e!1433472 () Bool)

(declare-fun tp!706805 () Bool)

(assert (=> b!2241656 (= e!1433472 tp!706805)))

(declare-fun tp!706806 () Bool)

(declare-fun e!1433471 () Bool)

(declare-fun b!2241657 () Bool)

(assert (=> b!2241657 (= e!1433471 (and (inv!35930 (_1!15465 (_1!15466 (h!31856 (zeroValue!3421 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603)))))))))) e!1433472 tp_is_empty!10271 setRes!20626 tp!706806))))

(declare-fun condSetEmpty!20626 () Bool)

(assert (=> b!2241657 (= condSetEmpty!20626 (= (_2!15466 (h!31856 (zeroValue!3421 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603)))))))) ((as const (Array Context!4146 Bool)) false)))))

(assert (=> b!2241595 (= tp!706786 e!1433471)))

(declare-fun setElem!20626 () Context!4146)

(declare-fun setNonEmpty!20626 () Bool)

(declare-fun e!1433470 () Bool)

(declare-fun tp!706804 () Bool)

(assert (=> setNonEmpty!20626 (= setRes!20626 (and tp!706804 (inv!35930 setElem!20626) e!1433470))))

(declare-fun setRest!20626 () (InoxSet Context!4146))

(assert (=> setNonEmpty!20626 (= (_2!15466 (h!31856 (zeroValue!3421 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4146 Bool)) false) setElem!20626 true) setRest!20626))))

(declare-fun b!2241658 () Bool)

(declare-fun tp!706803 () Bool)

(assert (=> b!2241658 (= e!1433470 tp!706803)))

(assert (= b!2241657 b!2241656))

(assert (= (and b!2241657 condSetEmpty!20626) setIsEmpty!20626))

(assert (= (and b!2241657 (not condSetEmpty!20626)) setNonEmpty!20626))

(assert (= setNonEmpty!20626 b!2241658))

(assert (= (and b!2241595 ((_ is Cons!26455) (zeroValue!3421 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603)))))))) b!2241657))

(declare-fun m!2673963 () Bool)

(assert (=> b!2241657 m!2673963))

(declare-fun m!2673965 () Bool)

(assert (=> setNonEmpty!20626 m!2673965))

(declare-fun setIsEmpty!20627 () Bool)

(declare-fun setRes!20627 () Bool)

(assert (=> setIsEmpty!20627 setRes!20627))

(declare-fun b!2241659 () Bool)

(declare-fun e!1433475 () Bool)

(declare-fun tp!706809 () Bool)

(assert (=> b!2241659 (= e!1433475 tp!706809)))

(declare-fun e!1433474 () Bool)

(declare-fun tp!706810 () Bool)

(declare-fun b!2241660 () Bool)

(assert (=> b!2241660 (= e!1433474 (and (inv!35930 (_1!15465 (_1!15466 (h!31856 (minValue!3421 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603)))))))))) e!1433475 tp_is_empty!10271 setRes!20627 tp!706810))))

(declare-fun condSetEmpty!20627 () Bool)

(assert (=> b!2241660 (= condSetEmpty!20627 (= (_2!15466 (h!31856 (minValue!3421 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603)))))))) ((as const (Array Context!4146 Bool)) false)))))

(assert (=> b!2241595 (= tp!706782 e!1433474)))

(declare-fun setNonEmpty!20627 () Bool)

(declare-fun setElem!20627 () Context!4146)

(declare-fun tp!706808 () Bool)

(declare-fun e!1433473 () Bool)

(assert (=> setNonEmpty!20627 (= setRes!20627 (and tp!706808 (inv!35930 setElem!20627) e!1433473))))

(declare-fun setRest!20627 () (InoxSet Context!4146))

(assert (=> setNonEmpty!20627 (= (_2!15466 (h!31856 (minValue!3421 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4146 Bool)) false) setElem!20627 true) setRest!20627))))

(declare-fun b!2241661 () Bool)

(declare-fun tp!706807 () Bool)

(assert (=> b!2241661 (= e!1433473 tp!706807)))

(assert (= b!2241660 b!2241659))

(assert (= (and b!2241660 condSetEmpty!20627) setIsEmpty!20627))

(assert (= (and b!2241660 (not condSetEmpty!20627)) setNonEmpty!20627))

(assert (= setNonEmpty!20627 b!2241661))

(assert (= (and b!2241595 ((_ is Cons!26455) (minValue!3421 (v!30092 (underlying!6527 (v!30093 (underlying!6528 (cache!3454 thiss!28603)))))))) b!2241660))

(declare-fun m!2673967 () Bool)

(assert (=> b!2241660 m!2673967))

(declare-fun m!2673969 () Bool)

(assert (=> setNonEmpty!20627 m!2673969))

(declare-fun setIsEmpty!20628 () Bool)

(declare-fun setRes!20628 () Bool)

(assert (=> setIsEmpty!20628 setRes!20628))

(declare-fun b!2241662 () Bool)

(declare-fun e!1433478 () Bool)

(declare-fun tp!706813 () Bool)

(assert (=> b!2241662 (= e!1433478 tp!706813)))

(declare-fun e!1433477 () Bool)

(declare-fun b!2241663 () Bool)

(declare-fun tp!706814 () Bool)

(assert (=> b!2241663 (= e!1433477 (and (inv!35930 (_1!15465 (_1!15466 (h!31856 mapDefault!14816)))) e!1433478 tp_is_empty!10271 setRes!20628 tp!706814))))

(declare-fun condSetEmpty!20628 () Bool)

(assert (=> b!2241663 (= condSetEmpty!20628 (= (_2!15466 (h!31856 mapDefault!14816)) ((as const (Array Context!4146 Bool)) false)))))

(assert (=> b!2241597 (= tp!706787 e!1433477)))

(declare-fun tp!706812 () Bool)

(declare-fun setElem!20628 () Context!4146)

(declare-fun e!1433476 () Bool)

(declare-fun setNonEmpty!20628 () Bool)

(assert (=> setNonEmpty!20628 (= setRes!20628 (and tp!706812 (inv!35930 setElem!20628) e!1433476))))

(declare-fun setRest!20628 () (InoxSet Context!4146))

(assert (=> setNonEmpty!20628 (= (_2!15466 (h!31856 mapDefault!14816)) ((_ map or) (store ((as const (Array Context!4146 Bool)) false) setElem!20628 true) setRest!20628))))

(declare-fun b!2241664 () Bool)

(declare-fun tp!706811 () Bool)

(assert (=> b!2241664 (= e!1433476 tp!706811)))

(assert (= b!2241663 b!2241662))

(assert (= (and b!2241663 condSetEmpty!20628) setIsEmpty!20628))

(assert (= (and b!2241663 (not condSetEmpty!20628)) setNonEmpty!20628))

(assert (= setNonEmpty!20628 b!2241664))

(assert (= (and b!2241597 ((_ is Cons!26455) mapDefault!14816)) b!2241663))

(declare-fun m!2673971 () Bool)

(assert (=> b!2241663 m!2673971))

(declare-fun m!2673973 () Bool)

(assert (=> setNonEmpty!20628 m!2673973))

(declare-fun e!1433491 () Bool)

(declare-fun tp!706837 () Bool)

(declare-fun mapValue!14819 () List!26549)

(declare-fun e!1433494 () Bool)

(declare-fun setRes!20633 () Bool)

(declare-fun b!2241679 () Bool)

(assert (=> b!2241679 (= e!1433491 (and (inv!35930 (_1!15465 (_1!15466 (h!31856 mapValue!14819)))) e!1433494 tp_is_empty!10271 setRes!20633 tp!706837))))

(declare-fun condSetEmpty!20633 () Bool)

(assert (=> b!2241679 (= condSetEmpty!20633 (= (_2!15466 (h!31856 mapValue!14819)) ((as const (Array Context!4146 Bool)) false)))))

(declare-fun setElem!20634 () Context!4146)

(declare-fun setNonEmpty!20633 () Bool)

(declare-fun tp!706836 () Bool)

(declare-fun e!1433492 () Bool)

(assert (=> setNonEmpty!20633 (= setRes!20633 (and tp!706836 (inv!35930 setElem!20634) e!1433492))))

(declare-fun setRest!20634 () (InoxSet Context!4146))

(assert (=> setNonEmpty!20633 (= (_2!15466 (h!31856 mapValue!14819)) ((_ map or) (store ((as const (Array Context!4146 Bool)) false) setElem!20634 true) setRest!20634))))

(declare-fun setIsEmpty!20633 () Bool)

(declare-fun setRes!20634 () Bool)

(assert (=> setIsEmpty!20633 setRes!20634))

(declare-fun setIsEmpty!20634 () Bool)

(assert (=> setIsEmpty!20634 setRes!20633))

(declare-fun e!1433493 () Bool)

(declare-fun setNonEmpty!20634 () Bool)

(declare-fun setElem!20633 () Context!4146)

(declare-fun tp!706838 () Bool)

(assert (=> setNonEmpty!20634 (= setRes!20634 (and tp!706838 (inv!35930 setElem!20633) e!1433493))))

(declare-fun mapDefault!14819 () List!26549)

(declare-fun setRest!20633 () (InoxSet Context!4146))

(assert (=> setNonEmpty!20634 (= (_2!15466 (h!31856 mapDefault!14819)) ((_ map or) (store ((as const (Array Context!4146 Bool)) false) setElem!20633 true) setRest!20633))))

(declare-fun b!2241680 () Bool)

(declare-fun tp!706833 () Bool)

(assert (=> b!2241680 (= e!1433494 tp!706833)))

(declare-fun b!2241681 () Bool)

(declare-fun tp!706841 () Bool)

(assert (=> b!2241681 (= e!1433493 tp!706841)))

(declare-fun condMapEmpty!14819 () Bool)

(assert (=> mapNonEmpty!14816 (= condMapEmpty!14819 (= mapRest!14816 ((as const (Array (_ BitVec 32) List!26549)) mapDefault!14819)))))

(declare-fun e!1433495 () Bool)

(declare-fun mapRes!14819 () Bool)

(assert (=> mapNonEmpty!14816 (= tp!706781 (and e!1433495 mapRes!14819))))

(declare-fun e!1433496 () Bool)

(declare-fun b!2241682 () Bool)

(declare-fun tp!706839 () Bool)

(assert (=> b!2241682 (= e!1433495 (and (inv!35930 (_1!15465 (_1!15466 (h!31856 mapDefault!14819)))) e!1433496 tp_is_empty!10271 setRes!20634 tp!706839))))

(declare-fun condSetEmpty!20634 () Bool)

(assert (=> b!2241682 (= condSetEmpty!20634 (= (_2!15466 (h!31856 mapDefault!14819)) ((as const (Array Context!4146 Bool)) false)))))

(declare-fun mapNonEmpty!14819 () Bool)

(declare-fun tp!706835 () Bool)

(assert (=> mapNonEmpty!14819 (= mapRes!14819 (and tp!706835 e!1433491))))

(declare-fun mapRest!14819 () (Array (_ BitVec 32) List!26549))

(declare-fun mapKey!14819 () (_ BitVec 32))

(assert (=> mapNonEmpty!14819 (= mapRest!14816 (store mapRest!14819 mapKey!14819 mapValue!14819))))

(declare-fun b!2241683 () Bool)

(declare-fun tp!706834 () Bool)

(assert (=> b!2241683 (= e!1433496 tp!706834)))

(declare-fun b!2241684 () Bool)

(declare-fun tp!706840 () Bool)

(assert (=> b!2241684 (= e!1433492 tp!706840)))

(declare-fun mapIsEmpty!14819 () Bool)

(assert (=> mapIsEmpty!14819 mapRes!14819))

(assert (= (and mapNonEmpty!14816 condMapEmpty!14819) mapIsEmpty!14819))

(assert (= (and mapNonEmpty!14816 (not condMapEmpty!14819)) mapNonEmpty!14819))

(assert (= b!2241679 b!2241680))

(assert (= (and b!2241679 condSetEmpty!20633) setIsEmpty!20634))

(assert (= (and b!2241679 (not condSetEmpty!20633)) setNonEmpty!20633))

(assert (= setNonEmpty!20633 b!2241684))

(assert (= (and mapNonEmpty!14819 ((_ is Cons!26455) mapValue!14819)) b!2241679))

(assert (= b!2241682 b!2241683))

(assert (= (and b!2241682 condSetEmpty!20634) setIsEmpty!20633))

(assert (= (and b!2241682 (not condSetEmpty!20634)) setNonEmpty!20634))

(assert (= setNonEmpty!20634 b!2241681))

(assert (= (and mapNonEmpty!14816 ((_ is Cons!26455) mapDefault!14819)) b!2241682))

(declare-fun m!2673975 () Bool)

(assert (=> b!2241679 m!2673975))

(declare-fun m!2673977 () Bool)

(assert (=> setNonEmpty!20634 m!2673977))

(declare-fun m!2673979 () Bool)

(assert (=> setNonEmpty!20633 m!2673979))

(declare-fun m!2673981 () Bool)

(assert (=> b!2241682 m!2673981))

(declare-fun m!2673983 () Bool)

(assert (=> mapNonEmpty!14819 m!2673983))

(declare-fun setIsEmpty!20635 () Bool)

(declare-fun setRes!20635 () Bool)

(assert (=> setIsEmpty!20635 setRes!20635))

(declare-fun b!2241685 () Bool)

(declare-fun e!1433499 () Bool)

(declare-fun tp!706844 () Bool)

(assert (=> b!2241685 (= e!1433499 tp!706844)))

(declare-fun b!2241686 () Bool)

(declare-fun tp!706845 () Bool)

(declare-fun e!1433498 () Bool)

(assert (=> b!2241686 (= e!1433498 (and (inv!35930 (_1!15465 (_1!15466 (h!31856 mapValue!14816)))) e!1433499 tp_is_empty!10271 setRes!20635 tp!706845))))

(declare-fun condSetEmpty!20635 () Bool)

(assert (=> b!2241686 (= condSetEmpty!20635 (= (_2!15466 (h!31856 mapValue!14816)) ((as const (Array Context!4146 Bool)) false)))))

(assert (=> mapNonEmpty!14816 (= tp!706783 e!1433498)))

(declare-fun tp!706843 () Bool)

(declare-fun e!1433497 () Bool)

(declare-fun setNonEmpty!20635 () Bool)

(declare-fun setElem!20635 () Context!4146)

(assert (=> setNonEmpty!20635 (= setRes!20635 (and tp!706843 (inv!35930 setElem!20635) e!1433497))))

(declare-fun setRest!20635 () (InoxSet Context!4146))

(assert (=> setNonEmpty!20635 (= (_2!15466 (h!31856 mapValue!14816)) ((_ map or) (store ((as const (Array Context!4146 Bool)) false) setElem!20635 true) setRest!20635))))

(declare-fun b!2241687 () Bool)

(declare-fun tp!706842 () Bool)

(assert (=> b!2241687 (= e!1433497 tp!706842)))

(assert (= b!2241686 b!2241685))

(assert (= (and b!2241686 condSetEmpty!20635) setIsEmpty!20635))

(assert (= (and b!2241686 (not condSetEmpty!20635)) setNonEmpty!20635))

(assert (= setNonEmpty!20635 b!2241687))

(assert (= (and mapNonEmpty!14816 ((_ is Cons!26455) mapValue!14816)) b!2241686))

(declare-fun m!2673985 () Bool)

(assert (=> b!2241686 m!2673985))

(declare-fun m!2673987 () Bool)

(assert (=> setNonEmpty!20635 m!2673987))

(check-sat tp_is_empty!10271 (not bm!135302) (not setNonEmpty!20627) (not b!2241635) (not b!2241609) (not b!2241682) (not b!2241633) (not setNonEmpty!20634) (not d!665848) (not b!2241663) (not bm!135305) b_and!175141 (not setNonEmpty!20633) (not b!2241685) (not b!2241647) (not b!2241679) (not b!2241642) (not setNonEmpty!20635) (not d!665852) (not b!2241641) (not b!2241687) (not mapNonEmpty!14819) (not b!2241683) (not b!2241605) (not b!2241686) (not bm!135306) (not d!665854) (not b!2241684) (not b!2241656) (not b!2241658) (not b!2241664) (not b!2241661) (not b!2241681) (not setNonEmpty!20628) b_and!175143 (not b!2241660) (not b!2241606) (not b!2241657) (not b!2241659) (not b_next!65819) (not bm!135304) (not bm!135303) (not b!2241662) (not b!2241680) (not bm!135307) (not setNonEmpty!20626) (not b_next!65817) (not b!2241634))
(check-sat b_and!175141 b_and!175143 (not b_next!65819) (not b_next!65817))
