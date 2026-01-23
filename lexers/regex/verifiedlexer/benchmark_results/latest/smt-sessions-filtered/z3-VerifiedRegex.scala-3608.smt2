; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207434 () Bool)

(assert start!207434)

(declare-fun b!2127272 () Bool)

(declare-fun b_free!61853 () Bool)

(declare-fun b_next!62557 () Bool)

(assert (=> b!2127272 (= b_free!61853 (not b_next!62557))))

(declare-fun tp!652703 () Bool)

(declare-fun b_and!171433 () Bool)

(assert (=> b!2127272 (= tp!652703 b_and!171433)))

(declare-fun b!2127256 () Bool)

(declare-fun b_free!61855 () Bool)

(declare-fun b_next!62559 () Bool)

(assert (=> b!2127256 (= b_free!61855 (not b_next!62559))))

(declare-fun tp!652699 () Bool)

(declare-fun b_and!171435 () Bool)

(assert (=> b!2127256 (= tp!652699 b_and!171435)))

(declare-fun b!2127275 () Bool)

(declare-fun b_free!61857 () Bool)

(declare-fun b_next!62561 () Bool)

(assert (=> b!2127275 (= b_free!61857 (not b_next!62561))))

(declare-fun tp!652685 () Bool)

(declare-fun b_and!171437 () Bool)

(assert (=> b!2127275 (= tp!652685 b_and!171437)))

(declare-fun b!2127264 () Bool)

(declare-fun b_free!61859 () Bool)

(declare-fun b_next!62563 () Bool)

(assert (=> b!2127264 (= b_free!61859 (not b_next!62563))))

(declare-fun tp!652680 () Bool)

(declare-fun b_and!171439 () Bool)

(assert (=> b!2127264 (= tp!652680 b_and!171439)))

(declare-fun b!2127266 () Bool)

(declare-fun b_free!61861 () Bool)

(declare-fun b_next!62565 () Bool)

(assert (=> b!2127266 (= b_free!61861 (not b_next!62565))))

(declare-fun tp!652693 () Bool)

(declare-fun b_and!171441 () Bool)

(assert (=> b!2127266 (= tp!652693 b_and!171441)))

(declare-fun b!2127281 () Bool)

(declare-fun b_free!61863 () Bool)

(declare-fun b_next!62567 () Bool)

(assert (=> b!2127281 (= b_free!61863 (not b_next!62567))))

(declare-fun tp!652681 () Bool)

(declare-fun b_and!171443 () Bool)

(assert (=> b!2127281 (= tp!652681 b_and!171443)))

(declare-fun b!2127252 () Bool)

(declare-fun e!1355981 () Bool)

(declare-datatypes ((C!11512 0))(
  ( (C!11513 (val!6742 Int)) )
))
(declare-datatypes ((List!23884 0))(
  ( (Nil!23800) (Cons!23800 (h!29201 C!11512) (t!196412 List!23884)) )
))
(declare-datatypes ((IArray!15647 0))(
  ( (IArray!15648 (innerList!7881 List!23884)) )
))
(declare-datatypes ((Conc!7821 0))(
  ( (Node!7821 (left!18387 Conc!7821) (right!18717 Conc!7821) (csize!15872 Int) (cheight!8032 Int)) (Leaf!11430 (xs!10763 IArray!15647) (csize!15873 Int)) (Empty!7821) )
))
(declare-datatypes ((BalanceConc!15404 0))(
  ( (BalanceConc!15405 (c!340114 Conc!7821)) )
))
(declare-fun totalInput!851 () BalanceConc!15404)

(declare-fun tp!652688 () Bool)

(declare-fun inv!31409 (Conc!7821) Bool)

(assert (=> b!2127252 (= e!1355981 (and (inv!31409 (c!340114 totalInput!851)) tp!652688))))

(declare-fun b!2127253 () Bool)

(declare-fun e!1355967 () Bool)

(declare-fun e!1355983 () Bool)

(declare-datatypes ((Regex!5683 0))(
  ( (ElementMatch!5683 (c!340115 C!11512)) (Concat!9985 (regOne!11878 Regex!5683) (regTwo!11878 Regex!5683)) (EmptyExpr!5683) (Star!5683 (reg!6012 Regex!5683)) (EmptyLang!5683) (Union!5683 (regOne!11879 Regex!5683) (regTwo!11879 Regex!5683)) )
))
(declare-datatypes ((List!23885 0))(
  ( (Nil!23801) (Cons!23801 (h!29202 Regex!5683) (t!196413 List!23885)) )
))
(declare-datatypes ((Context!2506 0))(
  ( (Context!2507 (exprs!1753 List!23885)) )
))
(declare-datatypes ((tuple2!23476 0))(
  ( (tuple2!23477 (_1!13707 Context!2506) (_2!13707 C!11512)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23478 0))(
  ( (tuple2!23479 (_1!13708 tuple2!23476) (_2!13708 (InoxSet Context!2506))) )
))
(declare-datatypes ((List!23886 0))(
  ( (Nil!23802) (Cons!23802 (h!29203 tuple2!23478) (t!196414 List!23886)) )
))
(declare-datatypes ((array!8577 0))(
  ( (array!8578 (arr!3802 (Array (_ BitVec 32) (_ BitVec 64))) (size!18613 (_ BitVec 32))) )
))
(declare-datatypes ((array!8579 0))(
  ( (array!8580 (arr!3803 (Array (_ BitVec 32) List!23886)) (size!18614 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4996 0))(
  ( (LongMapFixedSize!4997 (defaultEntry!2863 Int) (mask!6655 (_ BitVec 32)) (extraKeys!2746 (_ BitVec 32)) (zeroValue!2756 List!23886) (minValue!2756 List!23886) (_size!5047 (_ BitVec 32)) (_keys!2795 array!8577) (_values!2778 array!8579) (_vacant!2559 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9817 0))(
  ( (Cell!9818 (v!28336 LongMapFixedSize!4996)) )
))
(declare-datatypes ((MutLongMap!2498 0))(
  ( (LongMap!2498 (underlying!5191 Cell!9817)) (MutLongMapExt!2497 (__x!15670 Int)) )
))
(declare-fun lt!795972 () MutLongMap!2498)

(get-info :version)

(assert (=> b!2127253 (= e!1355967 (and e!1355983 ((_ is LongMap!2498) lt!795972)))))

(declare-datatypes ((Cell!9819 0))(
  ( (Cell!9820 (v!28337 MutLongMap!2498)) )
))
(declare-datatypes ((Hashable!2412 0))(
  ( (HashableExt!2411 (__x!15671 Int)) )
))
(declare-datatypes ((MutableMap!2412 0))(
  ( (MutableMapExt!2411 (__x!15672 Int)) (HashMap!2412 (underlying!5192 Cell!9819) (hashF!4335 Hashable!2412) (_size!5048 (_ BitVec 32)) (defaultValue!2574 Int)) )
))
(declare-datatypes ((CacheUp!1674 0))(
  ( (CacheUp!1675 (cache!2793 MutableMap!2412)) )
))
(declare-fun cacheUp!979 () CacheUp!1674)

(assert (=> b!2127253 (= lt!795972 (v!28337 (underlying!5192 (cache!2793 cacheUp!979))))))

(declare-fun b!2127254 () Bool)

(declare-fun e!1355957 () Bool)

(declare-fun tp!652690 () Bool)

(declare-fun mapRes!12243 () Bool)

(assert (=> b!2127254 (= e!1355957 (and tp!652690 mapRes!12243))))

(declare-fun condMapEmpty!12241 () Bool)

(declare-datatypes ((tuple3!2998 0))(
  ( (tuple3!2999 (_1!13709 Regex!5683) (_2!13709 Context!2506) (_3!1969 C!11512)) )
))
(declare-datatypes ((tuple2!23480 0))(
  ( (tuple2!23481 (_1!13710 tuple3!2998) (_2!13710 (InoxSet Context!2506))) )
))
(declare-datatypes ((List!23887 0))(
  ( (Nil!23803) (Cons!23803 (h!29204 tuple2!23480) (t!196415 List!23887)) )
))
(declare-datatypes ((Hashable!2413 0))(
  ( (HashableExt!2412 (__x!15673 Int)) )
))
(declare-datatypes ((array!8581 0))(
  ( (array!8582 (arr!3804 (Array (_ BitVec 32) List!23887)) (size!18615 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4998 0))(
  ( (LongMapFixedSize!4999 (defaultEntry!2864 Int) (mask!6656 (_ BitVec 32)) (extraKeys!2747 (_ BitVec 32)) (zeroValue!2757 List!23887) (minValue!2757 List!23887) (_size!5049 (_ BitVec 32)) (_keys!2796 array!8577) (_values!2779 array!8581) (_vacant!2560 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9821 0))(
  ( (Cell!9822 (v!28338 LongMapFixedSize!4998)) )
))
(declare-datatypes ((MutLongMap!2499 0))(
  ( (LongMap!2499 (underlying!5193 Cell!9821)) (MutLongMapExt!2498 (__x!15674 Int)) )
))
(declare-datatypes ((Cell!9823 0))(
  ( (Cell!9824 (v!28339 MutLongMap!2499)) )
))
(declare-datatypes ((MutableMap!2413 0))(
  ( (MutableMapExt!2412 (__x!15675 Int)) (HashMap!2413 (underlying!5194 Cell!9823) (hashF!4336 Hashable!2413) (_size!5050 (_ BitVec 32)) (defaultValue!2575 Int)) )
))
(declare-datatypes ((CacheDown!1660 0))(
  ( (CacheDown!1661 (cache!2794 MutableMap!2413)) )
))
(declare-fun cacheDown!1098 () CacheDown!1660)

(declare-fun mapDefault!12242 () List!23887)

(assert (=> b!2127254 (= condMapEmpty!12241 (= (arr!3804 (_values!2779 (v!28338 (underlying!5193 (v!28339 (underlying!5194 (cache!2794 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!23887)) mapDefault!12242)))))

(declare-fun b!2127255 () Bool)

(declare-fun e!1355986 () Bool)

(declare-fun tp!652704 () Bool)

(assert (=> b!2127255 (= e!1355986 tp!652704)))

(declare-fun e!1355961 () Bool)

(declare-fun e!1355964 () Bool)

(assert (=> b!2127256 (= e!1355961 (and e!1355964 tp!652699))))

(declare-fun b!2127257 () Bool)

(declare-fun e!1355974 () Bool)

(declare-fun e!1355960 () Bool)

(assert (=> b!2127257 (= e!1355974 e!1355960)))

(declare-fun b!2127258 () Bool)

(declare-fun e!1355985 () Bool)

(declare-fun e!1355970 () Bool)

(assert (=> b!2127258 (= e!1355985 e!1355970)))

(declare-fun setIsEmpty!15522 () Bool)

(declare-fun setRes!15522 () Bool)

(assert (=> setIsEmpty!15522 setRes!15522))

(declare-fun e!1355975 () Bool)

(declare-datatypes ((tuple3!3000 0))(
  ( (tuple3!3001 (_1!13711 (InoxSet Context!2506)) (_2!13711 Int) (_3!1970 Int)) )
))
(declare-datatypes ((tuple2!23482 0))(
  ( (tuple2!23483 (_1!13712 tuple3!3000) (_2!13712 Int)) )
))
(declare-datatypes ((List!23888 0))(
  ( (Nil!23804) (Cons!23804 (h!29205 tuple2!23482) (t!196416 List!23888)) )
))
(declare-datatypes ((array!8583 0))(
  ( (array!8584 (arr!3805 (Array (_ BitVec 32) List!23888)) (size!18616 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5000 0))(
  ( (LongMapFixedSize!5001 (defaultEntry!2865 Int) (mask!6657 (_ BitVec 32)) (extraKeys!2748 (_ BitVec 32)) (zeroValue!2758 List!23888) (minValue!2758 List!23888) (_size!5051 (_ BitVec 32)) (_keys!2797 array!8577) (_values!2780 array!8583) (_vacant!2561 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9825 0))(
  ( (Cell!9826 (v!28340 LongMapFixedSize!5000)) )
))
(declare-datatypes ((MutLongMap!2500 0))(
  ( (LongMap!2500 (underlying!5195 Cell!9825)) (MutLongMapExt!2499 (__x!15676 Int)) )
))
(declare-datatypes ((Cell!9827 0))(
  ( (Cell!9828 (v!28341 MutLongMap!2500)) )
))
(declare-datatypes ((Hashable!2414 0))(
  ( (HashableExt!2413 (__x!15677 Int)) )
))
(declare-datatypes ((MutableMap!2414 0))(
  ( (MutableMapExt!2413 (__x!15678 Int)) (HashMap!2414 (underlying!5196 Cell!9827) (hashF!4337 Hashable!2414) (_size!5052 (_ BitVec 32)) (defaultValue!2576 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!614 0))(
  ( (CacheFurthestNullable!615 (cache!2795 MutableMap!2414) (totalInput!2946 BalanceConc!15404)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!614)

(declare-fun lt!795971 () Bool)

(declare-fun from!1043 () Int)

(declare-fun b!2127259 () Bool)

(declare-fun lt!795975 () Int)

(assert (=> b!2127259 (= e!1355975 (and (= (totalInput!2946 cacheFurthestNullable!114) totalInput!851) (<= from!1043 lt!795975) (not lt!795971)))))

(declare-fun b!2127260 () Bool)

(declare-fun e!1355958 () Bool)

(declare-fun e!1355978 () Bool)

(declare-fun lt!795974 () MutLongMap!2500)

(assert (=> b!2127260 (= e!1355958 (and e!1355978 ((_ is LongMap!2500) lt!795974)))))

(assert (=> b!2127260 (= lt!795974 (v!28341 (underlying!5196 (cache!2795 cacheFurthestNullable!114))))))

(declare-fun mapNonEmpty!12241 () Bool)

(declare-fun tp!652687 () Bool)

(declare-fun tp!652697 () Bool)

(assert (=> mapNonEmpty!12241 (= mapRes!12243 (and tp!652687 tp!652697))))

(declare-fun mapKey!12241 () (_ BitVec 32))

(declare-fun mapValue!12243 () List!23887)

(declare-fun mapRest!12243 () (Array (_ BitVec 32) List!23887))

(assert (=> mapNonEmpty!12241 (= (arr!3804 (_values!2779 (v!28338 (underlying!5193 (v!28339 (underlying!5194 (cache!2794 cacheDown!1098))))))) (store mapRest!12243 mapKey!12241 mapValue!12243))))

(declare-fun b!2127261 () Bool)

(declare-fun e!1355962 () Bool)

(declare-fun e!1355982 () Bool)

(assert (=> b!2127261 (= e!1355962 e!1355982)))

(declare-fun b!2127262 () Bool)

(declare-fun res!920144 () Bool)

(assert (=> b!2127262 (=> (not res!920144) (not e!1355975))))

(declare-fun valid!1967 (CacheFurthestNullable!614) Bool)

(assert (=> b!2127262 (= res!920144 (valid!1967 cacheFurthestNullable!114))))

(declare-fun tp!652695 () Bool)

(declare-fun e!1355968 () Bool)

(declare-fun tp!652696 () Bool)

(declare-fun array_inv!2720 (array!8577) Bool)

(declare-fun array_inv!2721 (array!8583) Bool)

(assert (=> b!2127264 (= e!1355960 (and tp!652680 tp!652696 tp!652695 (array_inv!2720 (_keys!2797 (v!28340 (underlying!5195 (v!28341 (underlying!5196 (cache!2795 cacheFurthestNullable!114))))))) (array_inv!2721 (_values!2780 (v!28340 (underlying!5195 (v!28341 (underlying!5196 (cache!2795 cacheFurthestNullable!114))))))) e!1355968))))

(declare-fun b!2127265 () Bool)

(declare-fun e!1355977 () Bool)

(declare-fun tp!652682 () Bool)

(declare-fun mapRes!12242 () Bool)

(assert (=> b!2127265 (= e!1355977 (and tp!652682 mapRes!12242))))

(declare-fun condMapEmpty!12243 () Bool)

(declare-fun mapDefault!12241 () List!23886)

(assert (=> b!2127265 (= condMapEmpty!12243 (= (arr!3803 (_values!2778 (v!28336 (underlying!5191 (v!28337 (underlying!5192 (cache!2793 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!23886)) mapDefault!12241)))))

(declare-fun mapNonEmpty!12242 () Bool)

(declare-fun tp!652684 () Bool)

(declare-fun tp!652694 () Bool)

(assert (=> mapNonEmpty!12242 (= mapRes!12242 (and tp!652684 tp!652694))))

(declare-fun mapValue!12242 () List!23886)

(declare-fun mapKey!12243 () (_ BitVec 32))

(declare-fun mapRest!12242 () (Array (_ BitVec 32) List!23886))

(assert (=> mapNonEmpty!12242 (= (arr!3803 (_values!2778 (v!28336 (underlying!5191 (v!28337 (underlying!5192 (cache!2793 cacheUp!979))))))) (store mapRest!12242 mapKey!12243 mapValue!12242))))

(declare-fun tp!652700 () Bool)

(declare-fun tp!652689 () Bool)

(declare-fun array_inv!2722 (array!8581) Bool)

(assert (=> b!2127266 (= e!1355970 (and tp!652693 tp!652689 tp!652700 (array_inv!2720 (_keys!2796 (v!28338 (underlying!5193 (v!28339 (underlying!5194 (cache!2794 cacheDown!1098))))))) (array_inv!2722 (_values!2779 (v!28338 (underlying!5193 (v!28339 (underlying!5194 (cache!2794 cacheDown!1098))))))) e!1355957))))

(declare-fun b!2127267 () Bool)

(declare-fun e!1355973 () Bool)

(assert (=> b!2127267 (= e!1355973 e!1355961)))

(declare-fun b!2127268 () Bool)

(declare-fun res!920145 () Bool)

(assert (=> b!2127268 (=> (not res!920145) (not e!1355975))))

(declare-fun valid!1968 (CacheDown!1660) Bool)

(assert (=> b!2127268 (= res!920145 (valid!1968 cacheDown!1098))))

(declare-fun b!2127269 () Bool)

(assert (=> b!2127269 (= e!1355978 e!1355974)))

(declare-fun b!2127270 () Bool)

(declare-fun res!920142 () Bool)

(assert (=> b!2127270 (=> (not res!920142) (not e!1355975))))

(declare-fun valid!1969 (CacheUp!1674) Bool)

(assert (=> b!2127270 (= res!920142 (valid!1969 cacheUp!979))))

(declare-fun b!2127271 () Bool)

(declare-fun e!1355979 () Bool)

(declare-fun e!1355956 () Bool)

(assert (=> b!2127271 (= e!1355979 e!1355956)))

(declare-fun e!1355976 () Bool)

(assert (=> b!2127272 (= e!1355976 (and e!1355958 tp!652703))))

(declare-fun b!2127273 () Bool)

(declare-fun e!1355972 () Bool)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2127273 (= e!1355972 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2127274 () Bool)

(declare-fun e!1355959 () Bool)

(declare-fun lt!795973 () MutLongMap!2499)

(assert (=> b!2127274 (= e!1355964 (and e!1355959 ((_ is LongMap!2499) lt!795973)))))

(assert (=> b!2127274 (= lt!795973 (v!28339 (underlying!5194 (cache!2794 cacheDown!1098))))))

(declare-fun tp!652683 () Bool)

(declare-fun tp!652692 () Bool)

(declare-fun array_inv!2723 (array!8579) Bool)

(assert (=> b!2127275 (= e!1355956 (and tp!652685 tp!652683 tp!652692 (array_inv!2720 (_keys!2795 (v!28336 (underlying!5191 (v!28337 (underlying!5192 (cache!2793 cacheUp!979))))))) (array_inv!2723 (_values!2778 (v!28336 (underlying!5191 (v!28337 (underlying!5192 (cache!2793 cacheUp!979))))))) e!1355977))))

(declare-fun setNonEmpty!15522 () Bool)

(declare-fun setElem!15522 () Context!2506)

(declare-fun tp!652691 () Bool)

(declare-fun inv!31410 (Context!2506) Bool)

(assert (=> setNonEmpty!15522 (= setRes!15522 (and tp!652691 (inv!31410 setElem!15522) e!1355986))))

(declare-fun z!3839 () (InoxSet Context!2506))

(declare-fun setRest!15522 () (InoxSet Context!2506))

(assert (=> setNonEmpty!15522 (= z!3839 ((_ map or) (store ((as const (Array Context!2506 Bool)) false) setElem!15522 true) setRest!15522))))

(declare-fun e!1355969 () Bool)

(declare-fun e!1355971 () Bool)

(declare-fun b!2127276 () Bool)

(declare-fun inv!31411 (BalanceConc!15404) Bool)

(assert (=> b!2127276 (= e!1355971 (and e!1355976 (inv!31411 (totalInput!2946 cacheFurthestNullable!114)) e!1355969))))

(declare-fun b!2127277 () Bool)

(declare-fun e!1355980 () Bool)

(assert (=> b!2127277 (= e!1355980 e!1355975)))

(declare-fun res!920141 () Bool)

(assert (=> b!2127277 (=> (not res!920141) (not e!1355975))))

(assert (=> b!2127277 (= res!920141 lt!795971)))

(assert (=> b!2127277 (= lt!795971 e!1355972)))

(declare-fun res!920143 () Bool)

(assert (=> b!2127277 (=> res!920143 e!1355972)))

(declare-fun nullableZipper!76 ((InoxSet Context!2506)) Bool)

(assert (=> b!2127277 (= res!920143 (not (nullableZipper!76 z!3839)))))

(declare-fun b!2127278 () Bool)

(declare-fun e!1355963 () Bool)

(assert (=> b!2127278 (= e!1355963 e!1355980)))

(declare-fun res!920140 () Bool)

(assert (=> b!2127278 (=> (not res!920140) (not e!1355980))))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2127278 (= res!920140 (and (= totalInputSize!296 lt!795975) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18617 (BalanceConc!15404) Int)

(assert (=> b!2127278 (= lt!795975 (size!18617 totalInput!851))))

(declare-fun b!2127279 () Bool)

(assert (=> b!2127279 (= e!1355983 e!1355979)))

(declare-fun b!2127280 () Bool)

(assert (=> b!2127280 (= e!1355959 e!1355985)))

(declare-fun mapIsEmpty!12241 () Bool)

(declare-fun mapRes!12241 () Bool)

(assert (=> mapIsEmpty!12241 mapRes!12241))

(declare-fun mapIsEmpty!12242 () Bool)

(assert (=> mapIsEmpty!12242 mapRes!12243))

(declare-fun b!2127263 () Bool)

(declare-fun tp!652701 () Bool)

(assert (=> b!2127263 (= e!1355969 (and (inv!31409 (c!340114 (totalInput!2946 cacheFurthestNullable!114))) tp!652701))))

(declare-fun res!920139 () Bool)

(assert (=> start!207434 (=> (not res!920139) (not e!1355963))))

(assert (=> start!207434 (= res!920139 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207434 e!1355963))

(declare-fun inv!31412 (CacheFurthestNullable!614) Bool)

(assert (=> start!207434 (and (inv!31412 cacheFurthestNullable!114) e!1355971)))

(assert (=> start!207434 true))

(declare-fun inv!31413 (CacheDown!1660) Bool)

(assert (=> start!207434 (and (inv!31413 cacheDown!1098) e!1355973)))

(declare-fun inv!31414 (CacheUp!1674) Bool)

(assert (=> start!207434 (and (inv!31414 cacheUp!979) e!1355962)))

(declare-fun condSetEmpty!15522 () Bool)

(assert (=> start!207434 (= condSetEmpty!15522 (= z!3839 ((as const (Array Context!2506 Bool)) false)))))

(assert (=> start!207434 setRes!15522))

(assert (=> start!207434 (and (inv!31411 totalInput!851) e!1355981)))

(declare-fun mapNonEmpty!12243 () Bool)

(declare-fun tp!652702 () Bool)

(declare-fun tp!652698 () Bool)

(assert (=> mapNonEmpty!12243 (= mapRes!12241 (and tp!652702 tp!652698))))

(declare-fun mapKey!12242 () (_ BitVec 32))

(declare-fun mapValue!12241 () List!23888)

(declare-fun mapRest!12241 () (Array (_ BitVec 32) List!23888))

(assert (=> mapNonEmpty!12243 (= (arr!3805 (_values!2780 (v!28340 (underlying!5195 (v!28341 (underlying!5196 (cache!2795 cacheFurthestNullable!114))))))) (store mapRest!12241 mapKey!12242 mapValue!12241))))

(assert (=> b!2127281 (= e!1355982 (and e!1355967 tp!652681))))

(declare-fun mapIsEmpty!12243 () Bool)

(assert (=> mapIsEmpty!12243 mapRes!12242))

(declare-fun b!2127282 () Bool)

(declare-fun tp!652686 () Bool)

(assert (=> b!2127282 (= e!1355968 (and tp!652686 mapRes!12241))))

(declare-fun condMapEmpty!12242 () Bool)

(declare-fun mapDefault!12243 () List!23888)

(assert (=> b!2127282 (= condMapEmpty!12242 (= (arr!3805 (_values!2780 (v!28340 (underlying!5195 (v!28341 (underlying!5196 (cache!2795 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!23888)) mapDefault!12243)))))

(assert (= (and start!207434 res!920139) b!2127278))

(assert (= (and b!2127278 res!920140) b!2127277))

(assert (= (and b!2127277 (not res!920143)) b!2127273))

(assert (= (and b!2127277 res!920141) b!2127270))

(assert (= (and b!2127270 res!920142) b!2127268))

(assert (= (and b!2127268 res!920145) b!2127262))

(assert (= (and b!2127262 res!920144) b!2127259))

(assert (= (and b!2127282 condMapEmpty!12242) mapIsEmpty!12241))

(assert (= (and b!2127282 (not condMapEmpty!12242)) mapNonEmpty!12243))

(assert (= b!2127264 b!2127282))

(assert (= b!2127257 b!2127264))

(assert (= b!2127269 b!2127257))

(assert (= (and b!2127260 ((_ is LongMap!2500) (v!28341 (underlying!5196 (cache!2795 cacheFurthestNullable!114))))) b!2127269))

(assert (= b!2127272 b!2127260))

(assert (= (and b!2127276 ((_ is HashMap!2414) (cache!2795 cacheFurthestNullable!114))) b!2127272))

(assert (= b!2127276 b!2127263))

(assert (= start!207434 b!2127276))

(assert (= (and b!2127254 condMapEmpty!12241) mapIsEmpty!12242))

(assert (= (and b!2127254 (not condMapEmpty!12241)) mapNonEmpty!12241))

(assert (= b!2127266 b!2127254))

(assert (= b!2127258 b!2127266))

(assert (= b!2127280 b!2127258))

(assert (= (and b!2127274 ((_ is LongMap!2499) (v!28339 (underlying!5194 (cache!2794 cacheDown!1098))))) b!2127280))

(assert (= b!2127256 b!2127274))

(assert (= (and b!2127267 ((_ is HashMap!2413) (cache!2794 cacheDown!1098))) b!2127256))

(assert (= start!207434 b!2127267))

(assert (= (and b!2127265 condMapEmpty!12243) mapIsEmpty!12243))

(assert (= (and b!2127265 (not condMapEmpty!12243)) mapNonEmpty!12242))

(assert (= b!2127275 b!2127265))

(assert (= b!2127271 b!2127275))

(assert (= b!2127279 b!2127271))

(assert (= (and b!2127253 ((_ is LongMap!2498) (v!28337 (underlying!5192 (cache!2793 cacheUp!979))))) b!2127279))

(assert (= b!2127281 b!2127253))

(assert (= (and b!2127261 ((_ is HashMap!2412) (cache!2793 cacheUp!979))) b!2127281))

(assert (= start!207434 b!2127261))

(assert (= (and start!207434 condSetEmpty!15522) setIsEmpty!15522))

(assert (= (and start!207434 (not condSetEmpty!15522)) setNonEmpty!15522))

(assert (= setNonEmpty!15522 b!2127255))

(assert (= start!207434 b!2127252))

(declare-fun m!2578969 () Bool)

(assert (=> start!207434 m!2578969))

(declare-fun m!2578971 () Bool)

(assert (=> start!207434 m!2578971))

(declare-fun m!2578973 () Bool)

(assert (=> start!207434 m!2578973))

(declare-fun m!2578975 () Bool)

(assert (=> start!207434 m!2578975))

(declare-fun m!2578977 () Bool)

(assert (=> b!2127270 m!2578977))

(declare-fun m!2578979 () Bool)

(assert (=> b!2127268 m!2578979))

(declare-fun m!2578981 () Bool)

(assert (=> mapNonEmpty!12242 m!2578981))

(declare-fun m!2578983 () Bool)

(assert (=> b!2127266 m!2578983))

(declare-fun m!2578985 () Bool)

(assert (=> b!2127266 m!2578985))

(declare-fun m!2578987 () Bool)

(assert (=> b!2127276 m!2578987))

(declare-fun m!2578989 () Bool)

(assert (=> mapNonEmpty!12243 m!2578989))

(declare-fun m!2578991 () Bool)

(assert (=> b!2127278 m!2578991))

(declare-fun m!2578993 () Bool)

(assert (=> b!2127252 m!2578993))

(declare-fun m!2578995 () Bool)

(assert (=> b!2127262 m!2578995))

(declare-fun m!2578997 () Bool)

(assert (=> b!2127263 m!2578997))

(declare-fun m!2578999 () Bool)

(assert (=> b!2127277 m!2578999))

(declare-fun m!2579001 () Bool)

(assert (=> mapNonEmpty!12241 m!2579001))

(declare-fun m!2579003 () Bool)

(assert (=> setNonEmpty!15522 m!2579003))

(declare-fun m!2579005 () Bool)

(assert (=> b!2127275 m!2579005))

(declare-fun m!2579007 () Bool)

(assert (=> b!2127275 m!2579007))

(declare-fun m!2579009 () Bool)

(assert (=> b!2127264 m!2579009))

(declare-fun m!2579011 () Bool)

(assert (=> b!2127264 m!2579011))

(check-sat (not b_next!62561) (not b!2127275) (not b!2127252) (not b_next!62567) b_and!171439 (not b!2127276) (not b!2127268) (not setNonEmpty!15522) (not b_next!62565) b_and!171435 (not b!2127263) b_and!171443 (not mapNonEmpty!12242) (not b_next!62563) (not b!2127265) (not b!2127282) (not b!2127266) (not mapNonEmpty!12243) (not b!2127254) (not b_next!62559) (not b!2127255) b_and!171441 b_and!171433 (not b!2127277) (not b!2127262) (not start!207434) (not b_next!62557) (not b!2127264) b_and!171437 (not b!2127278) (not b!2127270) (not mapNonEmpty!12241))
(check-sat (not b_next!62561) (not b_next!62567) b_and!171443 b_and!171439 (not b_next!62563) (not b_next!62559) b_and!171441 b_and!171433 (not b_next!62565) (not b_next!62557) b_and!171437 b_and!171435)
