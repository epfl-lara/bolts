; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206506 () Bool)

(assert start!206506)

(declare-fun b!2112952 () Bool)

(declare-fun b_free!61133 () Bool)

(declare-fun b_next!61837 () Bool)

(assert (=> b!2112952 (= b_free!61133 (not b_next!61837))))

(declare-fun tp!644034 () Bool)

(declare-fun b_and!170713 () Bool)

(assert (=> b!2112952 (= tp!644034 b_and!170713)))

(declare-fun b!2112967 () Bool)

(declare-fun b_free!61135 () Bool)

(declare-fun b_next!61839 () Bool)

(assert (=> b!2112967 (= b_free!61135 (not b_next!61839))))

(declare-fun tp!644037 () Bool)

(declare-fun b_and!170715 () Bool)

(assert (=> b!2112967 (= tp!644037 b_and!170715)))

(declare-fun b!2112978 () Bool)

(declare-fun b_free!61137 () Bool)

(declare-fun b_next!61841 () Bool)

(assert (=> b!2112978 (= b_free!61137 (not b_next!61841))))

(declare-fun tp!644033 () Bool)

(declare-fun b_and!170717 () Bool)

(assert (=> b!2112978 (= tp!644033 b_and!170717)))

(declare-fun b!2112977 () Bool)

(declare-fun b_free!61139 () Bool)

(declare-fun b_next!61843 () Bool)

(assert (=> b!2112977 (= b_free!61139 (not b_next!61843))))

(declare-fun tp!644018 () Bool)

(declare-fun b_and!170719 () Bool)

(assert (=> b!2112977 (= tp!644018 b_and!170719)))

(declare-fun b!2112973 () Bool)

(declare-fun b_free!61141 () Bool)

(declare-fun b_next!61845 () Bool)

(assert (=> b!2112973 (= b_free!61141 (not b_next!61845))))

(declare-fun tp!644029 () Bool)

(declare-fun b_and!170721 () Bool)

(assert (=> b!2112973 (= tp!644029 b_and!170721)))

(declare-fun b!2112965 () Bool)

(declare-fun b_free!61143 () Bool)

(declare-fun b_next!61847 () Bool)

(assert (=> b!2112965 (= b_free!61143 (not b_next!61847))))

(declare-fun tp!644027 () Bool)

(declare-fun b_and!170723 () Bool)

(assert (=> b!2112965 (= tp!644027 b_and!170723)))

(declare-fun mapNonEmpty!11269 () Bool)

(declare-fun mapRes!11269 () Bool)

(declare-fun tp!644010 () Bool)

(declare-fun tp!644025 () Bool)

(assert (=> mapNonEmpty!11269 (= mapRes!11269 (and tp!644010 tp!644025))))

(declare-datatypes ((C!11392 0))(
  ( (C!11393 (val!6682 Int)) )
))
(declare-datatypes ((Regex!5623 0))(
  ( (ElementMatch!5623 (c!339182 C!11392)) (Concat!9925 (regOne!11758 Regex!5623) (regTwo!11758 Regex!5623)) (EmptyExpr!5623) (Star!5623 (reg!5952 Regex!5623)) (EmptyLang!5623) (Union!5623 (regOne!11759 Regex!5623) (regTwo!11759 Regex!5623)) )
))
(declare-datatypes ((List!23573 0))(
  ( (Nil!23489) (Cons!23489 (h!28890 Regex!5623) (t!196082 List!23573)) )
))
(declare-datatypes ((Context!2386 0))(
  ( (Context!2387 (exprs!1693 List!23573)) )
))
(declare-datatypes ((tuple3!2728 0))(
  ( (tuple3!2729 (_1!13287 Regex!5623) (_2!13287 Context!2386) (_3!1828 C!11392)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22918 0))(
  ( (tuple2!22919 (_1!13288 tuple3!2728) (_2!13288 (InoxSet Context!2386))) )
))
(declare-datatypes ((List!23574 0))(
  ( (Nil!23490) (Cons!23490 (h!28891 tuple2!22918) (t!196083 List!23574)) )
))
(declare-fun mapValue!11270 () List!23574)

(declare-fun mapRest!11271 () (Array (_ BitVec 32) List!23574))

(declare-fun mapKey!11270 () (_ BitVec 32))

(declare-datatypes ((array!8091 0))(
  ( (array!8092 (arr!3587 (Array (_ BitVec 32) (_ BitVec 64))) (size!18339 (_ BitVec 32))) )
))
(declare-datatypes ((array!8093 0))(
  ( (array!8094 (arr!3588 (Array (_ BitVec 32) List!23574)) (size!18340 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4686 0))(
  ( (LongMapFixedSize!4687 (defaultEntry!2708 Int) (mask!6470 (_ BitVec 32)) (extraKeys!2591 (_ BitVec 32)) (zeroValue!2601 List!23574) (minValue!2601 List!23574) (_size!4737 (_ BitVec 32)) (_keys!2640 array!8091) (_values!2623 array!8093) (_vacant!2404 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9197 0))(
  ( (Cell!9198 (v!28013 LongMapFixedSize!4686)) )
))
(declare-datatypes ((MutLongMap!2343 0))(
  ( (LongMap!2343 (underlying!4881 Cell!9197)) (MutLongMapExt!2342 (__x!15205 Int)) )
))
(declare-datatypes ((Hashable!2257 0))(
  ( (HashableExt!2256 (__x!15206 Int)) )
))
(declare-datatypes ((Cell!9199 0))(
  ( (Cell!9200 (v!28014 MutLongMap!2343)) )
))
(declare-datatypes ((MutableMap!2257 0))(
  ( (MutableMapExt!2256 (__x!15207 Int)) (HashMap!2257 (underlying!4882 Cell!9199) (hashF!4180 Hashable!2257) (_size!4738 (_ BitVec 32)) (defaultValue!2419 Int)) )
))
(declare-datatypes ((CacheDown!1552 0))(
  ( (CacheDown!1553 (cache!2638 MutableMap!2257)) )
))
(declare-fun cacheDown!1229 () CacheDown!1552)

(assert (=> mapNonEmpty!11269 (= (arr!3588 (_values!2623 (v!28013 (underlying!4881 (v!28014 (underlying!4882 (cache!2638 cacheDown!1229))))))) (store mapRest!11271 mapKey!11270 mapValue!11270))))

(declare-datatypes ((tuple2!22920 0))(
  ( (tuple2!22921 (_1!13289 Context!2386) (_2!13289 C!11392)) )
))
(declare-datatypes ((tuple2!22922 0))(
  ( (tuple2!22923 (_1!13290 tuple2!22920) (_2!13290 (InoxSet Context!2386))) )
))
(declare-datatypes ((List!23575 0))(
  ( (Nil!23491) (Cons!23491 (h!28892 tuple2!22922) (t!196084 List!23575)) )
))
(declare-datatypes ((array!8095 0))(
  ( (array!8096 (arr!3589 (Array (_ BitVec 32) List!23575)) (size!18341 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2258 0))(
  ( (HashableExt!2257 (__x!15208 Int)) )
))
(declare-datatypes ((LongMapFixedSize!4688 0))(
  ( (LongMapFixedSize!4689 (defaultEntry!2709 Int) (mask!6471 (_ BitVec 32)) (extraKeys!2592 (_ BitVec 32)) (zeroValue!2602 List!23575) (minValue!2602 List!23575) (_size!4739 (_ BitVec 32)) (_keys!2641 array!8091) (_values!2624 array!8095) (_vacant!2405 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9201 0))(
  ( (Cell!9202 (v!28015 LongMapFixedSize!4688)) )
))
(declare-datatypes ((MutLongMap!2344 0))(
  ( (LongMap!2344 (underlying!4883 Cell!9201)) (MutLongMapExt!2343 (__x!15209 Int)) )
))
(declare-datatypes ((Cell!9203 0))(
  ( (Cell!9204 (v!28016 MutLongMap!2344)) )
))
(declare-datatypes ((MutableMap!2258 0))(
  ( (MutableMapExt!2257 (__x!15210 Int)) (HashMap!2258 (underlying!4884 Cell!9203) (hashF!4181 Hashable!2258) (_size!4740 (_ BitVec 32)) (defaultValue!2420 Int)) )
))
(declare-datatypes ((CacheUp!1554 0))(
  ( (CacheUp!1555 (cache!2639 MutableMap!2258)) )
))
(declare-fun cacheUp!1110 () CacheUp!1554)

(declare-fun tp!644019 () Bool)

(declare-fun e!1344302 () Bool)

(declare-fun tp!644015 () Bool)

(declare-fun e!1344318 () Bool)

(declare-fun array_inv!2581 (array!8091) Bool)

(declare-fun array_inv!2582 (array!8095) Bool)

(assert (=> b!2112952 (= e!1344302 (and tp!644034 tp!644019 tp!644015 (array_inv!2581 (_keys!2641 (v!28015 (underlying!4883 (v!28016 (underlying!4884 (cache!2639 cacheUp!1110))))))) (array_inv!2582 (_values!2624 (v!28015 (underlying!4883 (v!28016 (underlying!4884 (cache!2639 cacheUp!1110))))))) e!1344318))))

(declare-fun b!2112953 () Bool)

(declare-fun e!1344326 () Bool)

(declare-fun e!1344325 () Bool)

(assert (=> b!2112953 (= e!1344326 e!1344325)))

(declare-fun b!2112954 () Bool)

(declare-fun e!1344311 () Bool)

(declare-fun tp!644028 () Bool)

(assert (=> b!2112954 (= e!1344311 tp!644028)))

(declare-fun b!2112955 () Bool)

(declare-fun res!917363 () Bool)

(declare-fun e!1344306 () Bool)

(assert (=> b!2112955 (=> (not res!917363) (not e!1344306))))

(declare-fun valid!1849 (CacheDown!1552) Bool)

(assert (=> b!2112955 (= res!917363 (valid!1849 cacheDown!1229))))

(declare-fun b!2112956 () Bool)

(declare-fun e!1344319 () Bool)

(declare-fun e!1344324 () Bool)

(assert (=> b!2112956 (= e!1344319 e!1344324)))

(declare-fun b!2112957 () Bool)

(declare-fun e!1344310 () Bool)

(declare-fun e!1344303 () Bool)

(assert (=> b!2112957 (= e!1344310 e!1344303)))

(declare-fun b!2112958 () Bool)

(declare-fun tp_is_empty!9435 () Bool)

(assert (=> b!2112958 (= e!1344311 tp_is_empty!9435)))

(declare-fun b!2112959 () Bool)

(declare-fun res!917361 () Bool)

(assert (=> b!2112959 (=> (not res!917361) (not e!1344306))))

(declare-fun valid!1850 (CacheUp!1554) Bool)

(assert (=> b!2112959 (= res!917361 (valid!1850 cacheUp!1110))))

(declare-fun b!2112960 () Bool)

(declare-fun e!1344322 () Bool)

(declare-fun tp!644021 () Bool)

(assert (=> b!2112960 (= e!1344322 (and tp!644021 mapRes!11269))))

(declare-fun condMapEmpty!11269 () Bool)

(declare-fun mapDefault!11269 () List!23574)

(assert (=> b!2112960 (= condMapEmpty!11269 (= (arr!3588 (_values!2623 (v!28013 (underlying!4881 (v!28014 (underlying!4882 (cache!2638 cacheDown!1229))))))) ((as const (Array (_ BitVec 32) List!23574)) mapDefault!11269)))))

(declare-fun mapNonEmpty!11270 () Bool)

(declare-fun mapRes!11271 () Bool)

(declare-fun tp!644012 () Bool)

(declare-fun tp!644017 () Bool)

(assert (=> mapNonEmpty!11270 (= mapRes!11271 (and tp!644012 tp!644017))))

(declare-fun mapKey!11271 () (_ BitVec 32))

(declare-fun mapValue!11269 () List!23575)

(declare-fun mapRest!11269 () (Array (_ BitVec 32) List!23575))

(assert (=> mapNonEmpty!11270 (= (arr!3589 (_values!2624 (v!28015 (underlying!4883 (v!28016 (underlying!4884 (cache!2639 cacheUp!1110))))))) (store mapRest!11269 mapKey!11271 mapValue!11269))))

(declare-fun b!2112961 () Bool)

(declare-fun e!1344321 () Bool)

(declare-datatypes ((List!23576 0))(
  ( (Nil!23492) (Cons!23492 (h!28893 C!11392) (t!196085 List!23576)) )
))
(declare-datatypes ((IArray!15535 0))(
  ( (IArray!15536 (innerList!7825 List!23576)) )
))
(declare-datatypes ((Conc!7765 0))(
  ( (Node!7765 (left!18231 Conc!7765) (right!18561 Conc!7765) (csize!15760 Int) (cheight!7976 Int)) (Leaf!11344 (xs!10707 IArray!15535) (csize!15761 Int)) (Empty!7765) )
))
(declare-datatypes ((BalanceConc!15292 0))(
  ( (BalanceConc!15293 (c!339183 Conc!7765)) )
))
(declare-fun input!6660 () BalanceConc!15292)

(declare-fun tp!644020 () Bool)

(declare-fun inv!31073 (Conc!7765) Bool)

(assert (=> b!2112961 (= e!1344321 (and (inv!31073 (c!339183 input!6660)) tp!644020))))

(declare-fun b!2112962 () Bool)

(declare-fun tp!644036 () Bool)

(declare-fun tp!644014 () Bool)

(assert (=> b!2112962 (= e!1344311 (and tp!644036 tp!644014))))

(declare-fun b!2112963 () Bool)

(declare-fun e!1344305 () Bool)

(declare-fun e!1344298 () Bool)

(assert (=> b!2112963 (= e!1344305 e!1344298)))

(declare-fun b!2112964 () Bool)

(declare-fun res!917365 () Bool)

(assert (=> b!2112964 (=> (not res!917365) (not e!1344306))))

(declare-datatypes ((Hashable!2259 0))(
  ( (HashableExt!2258 (__x!15211 Int)) )
))
(declare-datatypes ((tuple3!2730 0))(
  ( (tuple3!2731 (_1!13291 (InoxSet Context!2386)) (_2!13291 Int) (_3!1829 Int)) )
))
(declare-datatypes ((tuple2!22924 0))(
  ( (tuple2!22925 (_1!13292 tuple3!2730) (_2!13292 Int)) )
))
(declare-datatypes ((List!23577 0))(
  ( (Nil!23493) (Cons!23493 (h!28894 tuple2!22924) (t!196086 List!23577)) )
))
(declare-datatypes ((array!8097 0))(
  ( (array!8098 (arr!3590 (Array (_ BitVec 32) List!23577)) (size!18342 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4690 0))(
  ( (LongMapFixedSize!4691 (defaultEntry!2710 Int) (mask!6472 (_ BitVec 32)) (extraKeys!2593 (_ BitVec 32)) (zeroValue!2603 List!23577) (minValue!2603 List!23577) (_size!4741 (_ BitVec 32)) (_keys!2642 array!8091) (_values!2625 array!8097) (_vacant!2406 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9205 0))(
  ( (Cell!9206 (v!28017 LongMapFixedSize!4690)) )
))
(declare-datatypes ((MutLongMap!2345 0))(
  ( (LongMap!2345 (underlying!4885 Cell!9205)) (MutLongMapExt!2344 (__x!15212 Int)) )
))
(declare-datatypes ((Cell!9207 0))(
  ( (Cell!9208 (v!28018 MutLongMap!2345)) )
))
(declare-datatypes ((MutableMap!2259 0))(
  ( (MutableMapExt!2258 (__x!15213 Int)) (HashMap!2259 (underlying!4886 Cell!9207) (hashF!4182 Hashable!2259) (_size!4742 (_ BitVec 32)) (defaultValue!2421 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!532 0))(
  ( (CacheFurthestNullable!533 (cache!2640 MutableMap!2259) (totalInput!2823 BalanceConc!15292)) )
))
(declare-fun cacheFurthestNullable!141 () CacheFurthestNullable!532)

(declare-fun totalInput!1306 () BalanceConc!15292)

(assert (=> b!2112964 (= res!917365 (= (totalInput!2823 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun e!1344312 () Bool)

(declare-fun tp!644026 () Bool)

(declare-fun tp!644038 () Bool)

(declare-fun e!1344309 () Bool)

(declare-fun array_inv!2583 (array!8097) Bool)

(assert (=> b!2112965 (= e!1344309 (and tp!644027 tp!644038 tp!644026 (array_inv!2581 (_keys!2642 (v!28017 (underlying!4885 (v!28018 (underlying!4886 (cache!2640 cacheFurthestNullable!141))))))) (array_inv!2583 (_values!2625 (v!28017 (underlying!4885 (v!28018 (underlying!4886 (cache!2640 cacheFurthestNullable!141))))))) e!1344312))))

(declare-fun b!2112966 () Bool)

(declare-fun e!1344301 () Bool)

(declare-fun lt!792795 () MutLongMap!2344)

(get-info :version)

(assert (=> b!2112966 (= e!1344301 (and e!1344326 ((_ is LongMap!2344) lt!792795)))))

(assert (=> b!2112966 (= lt!792795 (v!28016 (underlying!4884 (cache!2639 cacheUp!1110))))))

(declare-fun e!1344300 () Bool)

(declare-fun e!1344316 () Bool)

(assert (=> b!2112967 (= e!1344300 (and e!1344316 tp!644037))))

(declare-fun res!917362 () Bool)

(assert (=> start!206506 (=> (not res!917362) (not e!1344306))))

(declare-fun r!15373 () Regex!5623)

(declare-fun validRegex!2218 (Regex!5623) Bool)

(assert (=> start!206506 (= res!917362 (validRegex!2218 r!15373))))

(assert (=> start!206506 e!1344306))

(declare-fun e!1344308 () Bool)

(declare-fun inv!31074 (CacheDown!1552) Bool)

(assert (=> start!206506 (and (inv!31074 cacheDown!1229) e!1344308)))

(assert (=> start!206506 e!1344311))

(declare-fun inv!31075 (CacheUp!1554) Bool)

(assert (=> start!206506 (and (inv!31075 cacheUp!1110) e!1344319)))

(declare-fun inv!31076 (BalanceConc!15292) Bool)

(assert (=> start!206506 (and (inv!31076 input!6660) e!1344321)))

(declare-fun e!1344307 () Bool)

(assert (=> start!206506 (and (inv!31076 totalInput!1306) e!1344307)))

(declare-fun e!1344313 () Bool)

(declare-fun inv!31077 (CacheFurthestNullable!532) Bool)

(assert (=> start!206506 (and (inv!31077 cacheFurthestNullable!141) e!1344313)))

(declare-fun b!2112968 () Bool)

(declare-fun tp!644016 () Bool)

(assert (=> b!2112968 (= e!1344318 (and tp!644016 mapRes!11271))))

(declare-fun condMapEmpty!11270 () Bool)

(declare-fun mapDefault!11270 () List!23575)

(assert (=> b!2112968 (= condMapEmpty!11270 (= (arr!3589 (_values!2624 (v!28015 (underlying!4883 (v!28016 (underlying!4884 (cache!2639 cacheUp!1110))))))) ((as const (Array (_ BitVec 32) List!23575)) mapDefault!11270)))))

(declare-fun mapIsEmpty!11269 () Bool)

(declare-fun mapRes!11270 () Bool)

(assert (=> mapIsEmpty!11269 mapRes!11270))

(declare-fun b!2112969 () Bool)

(declare-fun tp!644023 () Bool)

(assert (=> b!2112969 (= e!1344307 (and (inv!31073 (c!339183 totalInput!1306)) tp!644023))))

(declare-fun b!2112970 () Bool)

(declare-fun tp!644013 () Bool)

(assert (=> b!2112970 (= e!1344312 (and tp!644013 mapRes!11270))))

(declare-fun condMapEmpty!11271 () Bool)

(declare-fun mapDefault!11271 () List!23577)

(assert (=> b!2112970 (= condMapEmpty!11271 (= (arr!3590 (_values!2625 (v!28017 (underlying!4885 (v!28018 (underlying!4886 (cache!2640 cacheFurthestNullable!141))))))) ((as const (Array (_ BitVec 32) List!23577)) mapDefault!11271)))))

(declare-fun b!2112971 () Bool)

(declare-fun res!917364 () Bool)

(assert (=> b!2112971 (=> (not res!917364) (not e!1344306))))

(declare-fun valid!1851 (CacheFurthestNullable!532) Bool)

(assert (=> b!2112971 (= res!917364 (valid!1851 cacheFurthestNullable!141))))

(declare-fun b!2112972 () Bool)

(declare-fun e!1344299 () Bool)

(declare-fun lt!792794 () MutLongMap!2343)

(assert (=> b!2112972 (= e!1344316 (and e!1344299 ((_ is LongMap!2343) lt!792794)))))

(assert (=> b!2112972 (= lt!792794 (v!28014 (underlying!4882 (cache!2638 cacheDown!1229))))))

(declare-fun tp!644024 () Bool)

(declare-fun tp!644032 () Bool)

(declare-fun array_inv!2584 (array!8093) Bool)

(assert (=> b!2112973 (= e!1344303 (and tp!644029 tp!644032 tp!644024 (array_inv!2581 (_keys!2640 (v!28013 (underlying!4881 (v!28014 (underlying!4882 (cache!2638 cacheDown!1229))))))) (array_inv!2584 (_values!2623 (v!28013 (underlying!4881 (v!28014 (underlying!4882 (cache!2638 cacheDown!1229))))))) e!1344322))))

(declare-fun e!1344304 () Bool)

(declare-fun e!1344317 () Bool)

(declare-fun b!2112974 () Bool)

(assert (=> b!2112974 (= e!1344313 (and e!1344304 (inv!31076 (totalInput!2823 cacheFurthestNullable!141)) e!1344317))))

(declare-fun b!2112975 () Bool)

(assert (=> b!2112975 (= e!1344306 false)))

(declare-fun lt!792796 () Bool)

(declare-fun isSuffix!593 (List!23576 List!23576) Bool)

(declare-fun list!9491 (BalanceConc!15292) List!23576)

(assert (=> b!2112975 (= lt!792796 (isSuffix!593 (list!9491 input!6660) (list!9491 totalInput!1306)))))

(declare-fun b!2112976 () Bool)

(assert (=> b!2112976 (= e!1344299 e!1344310)))

(declare-fun e!1344315 () Bool)

(assert (=> b!2112977 (= e!1344304 (and e!1344315 tp!644018))))

(assert (=> b!2112978 (= e!1344324 (and e!1344301 tp!644033))))

(declare-fun mapIsEmpty!11270 () Bool)

(assert (=> mapIsEmpty!11270 mapRes!11271))

(declare-fun b!2112979 () Bool)

(declare-fun tp!644022 () Bool)

(assert (=> b!2112979 (= e!1344317 (and (inv!31073 (c!339183 (totalInput!2823 cacheFurthestNullable!141))) tp!644022))))

(declare-fun mapNonEmpty!11271 () Bool)

(declare-fun tp!644030 () Bool)

(declare-fun tp!644011 () Bool)

(assert (=> mapNonEmpty!11271 (= mapRes!11270 (and tp!644030 tp!644011))))

(declare-fun mapRest!11270 () (Array (_ BitVec 32) List!23577))

(declare-fun mapValue!11271 () List!23577)

(declare-fun mapKey!11269 () (_ BitVec 32))

(assert (=> mapNonEmpty!11271 (= (arr!3590 (_values!2625 (v!28017 (underlying!4885 (v!28018 (underlying!4886 (cache!2640 cacheFurthestNullable!141))))))) (store mapRest!11270 mapKey!11269 mapValue!11271))))

(declare-fun mapIsEmpty!11271 () Bool)

(assert (=> mapIsEmpty!11271 mapRes!11269))

(declare-fun b!2112980 () Bool)

(declare-fun tp!644035 () Bool)

(declare-fun tp!644031 () Bool)

(assert (=> b!2112980 (= e!1344311 (and tp!644035 tp!644031))))

(declare-fun b!2112981 () Bool)

(declare-fun lt!792797 () MutLongMap!2345)

(assert (=> b!2112981 (= e!1344315 (and e!1344305 ((_ is LongMap!2345) lt!792797)))))

(assert (=> b!2112981 (= lt!792797 (v!28018 (underlying!4886 (cache!2640 cacheFurthestNullable!141))))))

(declare-fun b!2112982 () Bool)

(assert (=> b!2112982 (= e!1344298 e!1344309)))

(declare-fun b!2112983 () Bool)

(assert (=> b!2112983 (= e!1344325 e!1344302)))

(declare-fun b!2112984 () Bool)

(assert (=> b!2112984 (= e!1344308 e!1344300)))

(assert (= (and start!206506 res!917362) b!2112959))

(assert (= (and b!2112959 res!917361) b!2112955))

(assert (= (and b!2112955 res!917363) b!2112971))

(assert (= (and b!2112971 res!917364) b!2112964))

(assert (= (and b!2112964 res!917365) b!2112975))

(assert (= (and b!2112960 condMapEmpty!11269) mapIsEmpty!11271))

(assert (= (and b!2112960 (not condMapEmpty!11269)) mapNonEmpty!11269))

(assert (= b!2112973 b!2112960))

(assert (= b!2112957 b!2112973))

(assert (= b!2112976 b!2112957))

(assert (= (and b!2112972 ((_ is LongMap!2343) (v!28014 (underlying!4882 (cache!2638 cacheDown!1229))))) b!2112976))

(assert (= b!2112967 b!2112972))

(assert (= (and b!2112984 ((_ is HashMap!2257) (cache!2638 cacheDown!1229))) b!2112967))

(assert (= start!206506 b!2112984))

(assert (= (and start!206506 ((_ is ElementMatch!5623) r!15373)) b!2112958))

(assert (= (and start!206506 ((_ is Concat!9925) r!15373)) b!2112980))

(assert (= (and start!206506 ((_ is Star!5623) r!15373)) b!2112954))

(assert (= (and start!206506 ((_ is Union!5623) r!15373)) b!2112962))

(assert (= (and b!2112968 condMapEmpty!11270) mapIsEmpty!11270))

(assert (= (and b!2112968 (not condMapEmpty!11270)) mapNonEmpty!11270))

(assert (= b!2112952 b!2112968))

(assert (= b!2112983 b!2112952))

(assert (= b!2112953 b!2112983))

(assert (= (and b!2112966 ((_ is LongMap!2344) (v!28016 (underlying!4884 (cache!2639 cacheUp!1110))))) b!2112953))

(assert (= b!2112978 b!2112966))

(assert (= (and b!2112956 ((_ is HashMap!2258) (cache!2639 cacheUp!1110))) b!2112978))

(assert (= start!206506 b!2112956))

(assert (= start!206506 b!2112961))

(assert (= start!206506 b!2112969))

(assert (= (and b!2112970 condMapEmpty!11271) mapIsEmpty!11269))

(assert (= (and b!2112970 (not condMapEmpty!11271)) mapNonEmpty!11271))

(assert (= b!2112965 b!2112970))

(assert (= b!2112982 b!2112965))

(assert (= b!2112963 b!2112982))

(assert (= (and b!2112981 ((_ is LongMap!2345) (v!28018 (underlying!4886 (cache!2640 cacheFurthestNullable!141))))) b!2112963))

(assert (= b!2112977 b!2112981))

(assert (= (and b!2112974 ((_ is HashMap!2259) (cache!2640 cacheFurthestNullable!141))) b!2112977))

(assert (= b!2112974 b!2112979))

(assert (= start!206506 b!2112974))

(declare-fun m!2569309 () Bool)

(assert (=> b!2112974 m!2569309))

(declare-fun m!2569311 () Bool)

(assert (=> b!2112979 m!2569311))

(declare-fun m!2569313 () Bool)

(assert (=> mapNonEmpty!11271 m!2569313))

(declare-fun m!2569315 () Bool)

(assert (=> b!2112959 m!2569315))

(declare-fun m!2569317 () Bool)

(assert (=> b!2112965 m!2569317))

(declare-fun m!2569319 () Bool)

(assert (=> b!2112965 m!2569319))

(declare-fun m!2569321 () Bool)

(assert (=> b!2112975 m!2569321))

(declare-fun m!2569323 () Bool)

(assert (=> b!2112975 m!2569323))

(assert (=> b!2112975 m!2569321))

(assert (=> b!2112975 m!2569323))

(declare-fun m!2569325 () Bool)

(assert (=> b!2112975 m!2569325))

(declare-fun m!2569327 () Bool)

(assert (=> mapNonEmpty!11270 m!2569327))

(declare-fun m!2569329 () Bool)

(assert (=> b!2112969 m!2569329))

(declare-fun m!2569331 () Bool)

(assert (=> b!2112955 m!2569331))

(declare-fun m!2569333 () Bool)

(assert (=> b!2112973 m!2569333))

(declare-fun m!2569335 () Bool)

(assert (=> b!2112973 m!2569335))

(declare-fun m!2569337 () Bool)

(assert (=> start!206506 m!2569337))

(declare-fun m!2569339 () Bool)

(assert (=> start!206506 m!2569339))

(declare-fun m!2569341 () Bool)

(assert (=> start!206506 m!2569341))

(declare-fun m!2569343 () Bool)

(assert (=> start!206506 m!2569343))

(declare-fun m!2569345 () Bool)

(assert (=> start!206506 m!2569345))

(declare-fun m!2569347 () Bool)

(assert (=> start!206506 m!2569347))

(declare-fun m!2569349 () Bool)

(assert (=> mapNonEmpty!11269 m!2569349))

(declare-fun m!2569351 () Bool)

(assert (=> b!2112961 m!2569351))

(declare-fun m!2569353 () Bool)

(assert (=> b!2112971 m!2569353))

(declare-fun m!2569355 () Bool)

(assert (=> b!2112952 m!2569355))

(declare-fun m!2569357 () Bool)

(assert (=> b!2112952 m!2569357))

(check-sat (not b!2112955) (not b!2112968) b_and!170721 (not mapNonEmpty!11270) (not b!2112969) (not b!2112961) (not b_next!61845) (not b_next!61847) b_and!170713 (not b!2112975) (not b!2112952) (not start!206506) b_and!170723 (not b!2112959) (not b!2112970) (not mapNonEmpty!11271) (not mapNonEmpty!11269) (not b!2112971) tp_is_empty!9435 (not b_next!61839) (not b!2112974) b_and!170719 (not b!2112973) (not b_next!61841) (not b_next!61837) (not b!2112979) (not b!2112965) b_and!170715 (not b!2112954) b_and!170717 (not b!2112980) (not b_next!61843) (not b!2112960) (not b!2112962))
(check-sat (not b_next!61839) b_and!170719 b_and!170721 (not b_next!61845) (not b_next!61847) b_and!170713 b_and!170723 (not b_next!61841) (not b_next!61837) b_and!170715 b_and!170717 (not b_next!61843))
