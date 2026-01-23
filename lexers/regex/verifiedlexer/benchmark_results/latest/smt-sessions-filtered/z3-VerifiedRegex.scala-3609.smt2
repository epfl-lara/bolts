; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207438 () Bool)

(assert start!207438)

(declare-fun b!2127496 () Bool)

(declare-fun b_free!61877 () Bool)

(declare-fun b_next!62581 () Bool)

(assert (=> b!2127496 (= b_free!61877 (not b_next!62581))))

(declare-fun tp!652869 () Bool)

(declare-fun b_and!171457 () Bool)

(assert (=> b!2127496 (= tp!652869 b_and!171457)))

(declare-fun b!2127480 () Bool)

(declare-fun b_free!61879 () Bool)

(declare-fun b_next!62583 () Bool)

(assert (=> b!2127480 (= b_free!61879 (not b_next!62583))))

(declare-fun tp!652865 () Bool)

(declare-fun b_and!171459 () Bool)

(assert (=> b!2127480 (= tp!652865 b_and!171459)))

(declare-fun b!2127490 () Bool)

(declare-fun b_free!61881 () Bool)

(declare-fun b_next!62585 () Bool)

(assert (=> b!2127490 (= b_free!61881 (not b_next!62585))))

(declare-fun tp!652861 () Bool)

(declare-fun b_and!171461 () Bool)

(assert (=> b!2127490 (= tp!652861 b_and!171461)))

(declare-fun b!2127508 () Bool)

(declare-fun b_free!61883 () Bool)

(declare-fun b_next!62587 () Bool)

(assert (=> b!2127508 (= b_free!61883 (not b_next!62587))))

(declare-fun tp!652862 () Bool)

(declare-fun b_and!171463 () Bool)

(assert (=> b!2127508 (= tp!652862 b_and!171463)))

(declare-fun b!2127494 () Bool)

(declare-fun b_free!61885 () Bool)

(declare-fun b_next!62589 () Bool)

(assert (=> b!2127494 (= b_free!61885 (not b_next!62589))))

(declare-fun tp!652871 () Bool)

(declare-fun b_and!171465 () Bool)

(assert (=> b!2127494 (= tp!652871 b_and!171465)))

(declare-fun b!2127491 () Bool)

(declare-fun b_free!61887 () Bool)

(declare-fun b_next!62591 () Bool)

(assert (=> b!2127491 (= b_free!61887 (not b_next!62591))))

(declare-fun tp!652856 () Bool)

(declare-fun b_and!171467 () Bool)

(assert (=> b!2127491 (= tp!652856 b_and!171467)))

(declare-fun b!2127498 () Bool)

(assert (=> b!2127498 true))

(declare-fun bs!444179 () Bool)

(declare-fun b!2127487 () Bool)

(assert (= bs!444179 (and b!2127487 b!2127498)))

(declare-fun lambda!78935 () Int)

(declare-fun lambda!78934 () Int)

(assert (=> bs!444179 (not (= lambda!78935 lambda!78934))))

(assert (=> b!2127487 true))

(declare-fun mapIsEmpty!12259 () Bool)

(declare-fun mapRes!12261 () Bool)

(assert (=> mapIsEmpty!12259 mapRes!12261))

(declare-fun b!2127477 () Bool)

(declare-fun res!920205 () Bool)

(declare-fun e!1356174 () Bool)

(assert (=> b!2127477 (=> (not res!920205) (not e!1356174))))

(declare-datatypes ((C!11516 0))(
  ( (C!11517 (val!6744 Int)) )
))
(declare-datatypes ((Regex!5685 0))(
  ( (ElementMatch!5685 (c!340118 C!11516)) (Concat!9987 (regOne!11882 Regex!5685) (regTwo!11882 Regex!5685)) (EmptyExpr!5685) (Star!5685 (reg!6014 Regex!5685)) (EmptyLang!5685) (Union!5685 (regOne!11883 Regex!5685) (regTwo!11883 Regex!5685)) )
))
(declare-datatypes ((List!23895 0))(
  ( (Nil!23811) (Cons!23811 (h!29212 Regex!5685) (t!196423 List!23895)) )
))
(declare-datatypes ((Context!2510 0))(
  ( (Context!2511 (exprs!1755 List!23895)) )
))
(declare-datatypes ((tuple3!3006 0))(
  ( (tuple3!3007 (_1!13719 Regex!5685) (_2!13719 Context!2510) (_3!1973 C!11516)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23492 0))(
  ( (tuple2!23493 (_1!13720 tuple3!3006) (_2!13720 (InoxSet Context!2510))) )
))
(declare-datatypes ((List!23896 0))(
  ( (Nil!23812) (Cons!23812 (h!29213 tuple2!23492) (t!196424 List!23896)) )
))
(declare-datatypes ((Hashable!2418 0))(
  ( (HashableExt!2417 (__x!15688 Int)) )
))
(declare-datatypes ((array!8593 0))(
  ( (array!8594 (arr!3810 (Array (_ BitVec 32) (_ BitVec 64))) (size!18623 (_ BitVec 32))) )
))
(declare-datatypes ((array!8595 0))(
  ( (array!8596 (arr!3811 (Array (_ BitVec 32) List!23896)) (size!18624 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5008 0))(
  ( (LongMapFixedSize!5009 (defaultEntry!2869 Int) (mask!6662 (_ BitVec 32)) (extraKeys!2752 (_ BitVec 32)) (zeroValue!2762 List!23896) (minValue!2762 List!23896) (_size!5059 (_ BitVec 32)) (_keys!2801 array!8593) (_values!2784 array!8595) (_vacant!2565 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9841 0))(
  ( (Cell!9842 (v!28348 LongMapFixedSize!5008)) )
))
(declare-datatypes ((MutLongMap!2504 0))(
  ( (LongMap!2504 (underlying!5203 Cell!9841)) (MutLongMapExt!2503 (__x!15689 Int)) )
))
(declare-datatypes ((Cell!9843 0))(
  ( (Cell!9844 (v!28349 MutLongMap!2504)) )
))
(declare-datatypes ((MutableMap!2418 0))(
  ( (MutableMapExt!2417 (__x!15690 Int)) (HashMap!2418 (underlying!5204 Cell!9843) (hashF!4341 Hashable!2418) (_size!5060 (_ BitVec 32)) (defaultValue!2580 Int)) )
))
(declare-datatypes ((CacheDown!1664 0))(
  ( (CacheDown!1665 (cache!2799 MutableMap!2418)) )
))
(declare-fun cacheDown!1098 () CacheDown!1664)

(declare-fun valid!1972 (CacheDown!1664) Bool)

(assert (=> b!2127477 (= res!920205 (valid!1972 cacheDown!1098))))

(declare-fun b!2127478 () Bool)

(declare-fun e!1356177 () Bool)

(declare-fun tp!652872 () Bool)

(assert (=> b!2127478 (= e!1356177 tp!652872)))

(declare-fun b!2127479 () Bool)

(declare-fun e!1356186 () Bool)

(declare-fun e!1356184 () Bool)

(assert (=> b!2127479 (= e!1356186 e!1356184)))

(declare-fun b!2127481 () Bool)

(declare-fun e!1356164 () Bool)

(declare-fun tp!652864 () Bool)

(assert (=> b!2127481 (= e!1356164 (and tp!652864 mapRes!12261))))

(declare-fun condMapEmpty!12260 () Bool)

(declare-fun mapDefault!12259 () List!23896)

(assert (=> b!2127481 (= condMapEmpty!12260 (= (arr!3811 (_values!2784 (v!28348 (underlying!5203 (v!28349 (underlying!5204 (cache!2799 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!23896)) mapDefault!12259)))))

(declare-fun b!2127482 () Bool)

(declare-fun e!1356166 () Bool)

(declare-datatypes ((List!23897 0))(
  ( (Nil!23813) (Cons!23813 (h!29214 C!11516) (t!196425 List!23897)) )
))
(declare-datatypes ((IArray!15651 0))(
  ( (IArray!15652 (innerList!7883 List!23897)) )
))
(declare-datatypes ((Conc!7823 0))(
  ( (Node!7823 (left!18394 Conc!7823) (right!18724 Conc!7823) (csize!15876 Int) (cheight!8034 Int)) (Leaf!11433 (xs!10765 IArray!15651) (csize!15877 Int)) (Empty!7823) )
))
(declare-datatypes ((BalanceConc!15408 0))(
  ( (BalanceConc!15409 (c!340119 Conc!7823)) )
))
(declare-datatypes ((StackFrame!70 0))(
  ( (StackFrame!71 (z!5761 (InoxSet Context!2510)) (from!2648 Int) (lastNullablePos!335 Int) (res!920207 Int) (totalInput!2949 BalanceConc!15408)) )
))
(declare-datatypes ((List!23898 0))(
  ( (Nil!23814) (Cons!23814 (h!29215 StackFrame!70) (t!196426 List!23898)) )
))
(declare-fun stack!8 () List!23898)

(declare-fun tp!652860 () Bool)

(declare-fun inv!31420 (Conc!7823) Bool)

(assert (=> b!2127482 (= e!1356166 (and (inv!31420 (c!340119 (totalInput!2949 (h!29215 stack!8)))) tp!652860))))

(declare-fun setRes!15534 () Bool)

(declare-fun tp!652877 () Bool)

(declare-fun e!1356182 () Bool)

(declare-fun setElem!15533 () Context!2510)

(declare-fun setNonEmpty!15533 () Bool)

(declare-fun inv!31421 (Context!2510) Bool)

(assert (=> setNonEmpty!15533 (= setRes!15534 (and tp!652877 (inv!31421 setElem!15533) e!1356182))))

(declare-fun setRest!15534 () (InoxSet Context!2510))

(assert (=> setNonEmpty!15533 (= (z!5761 (h!29215 stack!8)) ((_ map or) (store ((as const (Array Context!2510 Bool)) false) setElem!15533 true) setRest!15534))))

(declare-fun e!1356167 () Bool)

(declare-fun b!2127483 () Bool)

(declare-fun inv!31422 (BalanceConc!15408) Bool)

(assert (=> b!2127483 (= e!1356167 (and setRes!15534 (inv!31422 (totalInput!2949 (h!29215 stack!8))) e!1356166))))

(declare-fun condSetEmpty!15534 () Bool)

(assert (=> b!2127483 (= condSetEmpty!15534 (= (z!5761 (h!29215 stack!8)) ((as const (Array Context!2510 Bool)) false)))))

(declare-fun b!2127484 () Bool)

(declare-fun tp!652859 () Bool)

(assert (=> b!2127484 (= e!1356182 tp!652859)))

(declare-fun mapIsEmpty!12260 () Bool)

(declare-fun mapRes!12259 () Bool)

(assert (=> mapIsEmpty!12260 mapRes!12259))

(declare-fun b!2127485 () Bool)

(declare-fun e!1356192 () Bool)

(declare-fun e!1356170 () Bool)

(assert (=> b!2127485 (= e!1356192 e!1356170)))

(declare-fun b!2127486 () Bool)

(declare-fun e!1356188 () Bool)

(declare-fun totalInput!851 () BalanceConc!15408)

(declare-fun tp!652867 () Bool)

(assert (=> b!2127486 (= e!1356188 (and (inv!31420 (c!340119 totalInput!851)) tp!652867))))

(declare-fun res!920198 () Bool)

(declare-fun e!1356175 () Bool)

(assert (=> b!2127487 (=> (not res!920198) (not e!1356175))))

(declare-fun forall!4884 (List!23898 Int) Bool)

(assert (=> b!2127487 (= res!920198 (forall!4884 stack!8 lambda!78935))))

(declare-fun mapNonEmpty!12259 () Bool)

(declare-fun tp!652876 () Bool)

(declare-fun tp!652875 () Bool)

(assert (=> mapNonEmpty!12259 (= mapRes!12261 (and tp!652876 tp!652875))))

(declare-fun mapValue!12260 () List!23896)

(declare-fun mapRest!12259 () (Array (_ BitVec 32) List!23896))

(declare-fun mapKey!12261 () (_ BitVec 32))

(assert (=> mapNonEmpty!12259 (= (arr!3811 (_values!2784 (v!28348 (underlying!5203 (v!28349 (underlying!5204 (cache!2799 cacheDown!1098))))))) (store mapRest!12259 mapKey!12261 mapValue!12260))))

(declare-fun b!2127488 () Bool)

(declare-fun res!920204 () Bool)

(assert (=> b!2127488 (=> (not res!920204) (not e!1356174))))

(declare-datatypes ((tuple3!3008 0))(
  ( (tuple3!3009 (_1!13721 (InoxSet Context!2510)) (_2!13721 Int) (_3!1974 Int)) )
))
(declare-datatypes ((tuple2!23494 0))(
  ( (tuple2!23495 (_1!13722 tuple3!3008) (_2!13722 Int)) )
))
(declare-datatypes ((List!23899 0))(
  ( (Nil!23815) (Cons!23815 (h!29216 tuple2!23494) (t!196427 List!23899)) )
))
(declare-datatypes ((array!8597 0))(
  ( (array!8598 (arr!3812 (Array (_ BitVec 32) List!23899)) (size!18625 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5010 0))(
  ( (LongMapFixedSize!5011 (defaultEntry!2870 Int) (mask!6663 (_ BitVec 32)) (extraKeys!2753 (_ BitVec 32)) (zeroValue!2763 List!23899) (minValue!2763 List!23899) (_size!5061 (_ BitVec 32)) (_keys!2802 array!8593) (_values!2785 array!8597) (_vacant!2566 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9845 0))(
  ( (Cell!9846 (v!28350 LongMapFixedSize!5010)) )
))
(declare-datatypes ((MutLongMap!2505 0))(
  ( (LongMap!2505 (underlying!5205 Cell!9845)) (MutLongMapExt!2504 (__x!15691 Int)) )
))
(declare-datatypes ((Cell!9847 0))(
  ( (Cell!9848 (v!28351 MutLongMap!2505)) )
))
(declare-datatypes ((Hashable!2419 0))(
  ( (HashableExt!2418 (__x!15692 Int)) )
))
(declare-datatypes ((MutableMap!2419 0))(
  ( (MutableMapExt!2418 (__x!15693 Int)) (HashMap!2419 (underlying!5206 Cell!9847) (hashF!4342 Hashable!2419) (_size!5062 (_ BitVec 32)) (defaultValue!2581 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!618 0))(
  ( (CacheFurthestNullable!619 (cache!2800 MutableMap!2419) (totalInput!2950 BalanceConc!15408)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!618)

(declare-fun valid!1973 (CacheFurthestNullable!618) Bool)

(assert (=> b!2127488 (= res!920204 (valid!1973 cacheFurthestNullable!114))))

(declare-fun b!2127489 () Bool)

(declare-fun e!1356173 () Bool)

(declare-fun e!1356190 () Bool)

(declare-fun lt!796003 () MutLongMap!2505)

(get-info :version)

(assert (=> b!2127489 (= e!1356173 (and e!1356190 ((_ is LongMap!2505) lt!796003)))))

(assert (=> b!2127489 (= lt!796003 (v!28351 (underlying!5206 (cache!2800 cacheFurthestNullable!114))))))

(declare-fun e!1356165 () Bool)

(assert (=> b!2127490 (= e!1356184 (and e!1356165 tp!652861))))

(declare-fun e!1356162 () Bool)

(declare-fun e!1356195 () Bool)

(assert (=> b!2127491 (= e!1356162 (and e!1356195 tp!652856))))

(declare-fun b!2127492 () Bool)

(declare-fun res!920202 () Bool)

(assert (=> b!2127492 (=> (not res!920202) (not e!1356174))))

(assert (=> b!2127492 (= res!920202 (= (totalInput!2950 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2127493 () Bool)

(assert (=> b!2127493 (= e!1356190 e!1356192)))

(declare-fun mapIsEmpty!12261 () Bool)

(declare-fun mapRes!12260 () Bool)

(assert (=> mapIsEmpty!12261 mapRes!12260))

(declare-fun e!1356179 () Bool)

(declare-fun tp!652854 () Bool)

(declare-fun tp!652868 () Bool)

(declare-fun array_inv!2724 (array!8593) Bool)

(declare-fun array_inv!2725 (array!8595) Bool)

(assert (=> b!2127494 (= e!1356179 (and tp!652871 tp!652868 tp!652854 (array_inv!2724 (_keys!2801 (v!28348 (underlying!5203 (v!28349 (underlying!5204 (cache!2799 cacheDown!1098))))))) (array_inv!2725 (_values!2784 (v!28348 (underlying!5203 (v!28349 (underlying!5204 (cache!2799 cacheDown!1098))))))) e!1356164))))

(declare-fun b!2127495 () Bool)

(declare-fun e!1356168 () Bool)

(assert (=> b!2127495 (= e!1356168 e!1356162)))

(declare-datatypes ((tuple2!23496 0))(
  ( (tuple2!23497 (_1!13723 Context!2510) (_2!13723 C!11516)) )
))
(declare-datatypes ((tuple2!23498 0))(
  ( (tuple2!23499 (_1!13724 tuple2!23496) (_2!13724 (InoxSet Context!2510))) )
))
(declare-datatypes ((List!23900 0))(
  ( (Nil!23816) (Cons!23816 (h!29217 tuple2!23498) (t!196428 List!23900)) )
))
(declare-datatypes ((array!8599 0))(
  ( (array!8600 (arr!3813 (Array (_ BitVec 32) List!23900)) (size!18626 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5012 0))(
  ( (LongMapFixedSize!5013 (defaultEntry!2871 Int) (mask!6664 (_ BitVec 32)) (extraKeys!2754 (_ BitVec 32)) (zeroValue!2764 List!23900) (minValue!2764 List!23900) (_size!5063 (_ BitVec 32)) (_keys!2803 array!8593) (_values!2786 array!8599) (_vacant!2567 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9849 0))(
  ( (Cell!9850 (v!28352 LongMapFixedSize!5012)) )
))
(declare-datatypes ((MutLongMap!2506 0))(
  ( (LongMap!2506 (underlying!5207 Cell!9849)) (MutLongMapExt!2505 (__x!15694 Int)) )
))
(declare-datatypes ((Cell!9851 0))(
  ( (Cell!9852 (v!28353 MutLongMap!2506)) )
))
(declare-datatypes ((Hashable!2420 0))(
  ( (HashableExt!2419 (__x!15695 Int)) )
))
(declare-datatypes ((MutableMap!2420 0))(
  ( (MutableMapExt!2419 (__x!15696 Int)) (HashMap!2420 (underlying!5208 Cell!9851) (hashF!4343 Hashable!2420) (_size!5064 (_ BitVec 32)) (defaultValue!2582 Int)) )
))
(declare-datatypes ((CacheUp!1678 0))(
  ( (CacheUp!1679 (cache!2801 MutableMap!2420)) )
))
(declare-fun cacheUp!979 () CacheUp!1678)

(declare-fun tp!652853 () Bool)

(declare-fun e!1356194 () Bool)

(declare-fun tp!652850 () Bool)

(declare-fun e!1356178 () Bool)

(declare-fun array_inv!2726 (array!8599) Bool)

(assert (=> b!2127496 (= e!1356194 (and tp!652869 tp!652853 tp!652850 (array_inv!2724 (_keys!2803 (v!28352 (underlying!5207 (v!28353 (underlying!5208 (cache!2801 cacheUp!979))))))) (array_inv!2726 (_values!2786 (v!28352 (underlying!5207 (v!28353 (underlying!5208 (cache!2801 cacheUp!979))))))) e!1356178))))

(declare-fun setIsEmpty!15533 () Bool)

(declare-fun setRes!15533 () Bool)

(assert (=> setIsEmpty!15533 setRes!15533))

(declare-fun setIsEmpty!15534 () Bool)

(assert (=> setIsEmpty!15534 setRes!15534))

(declare-fun b!2127497 () Bool)

(declare-fun tp!652878 () Bool)

(assert (=> b!2127497 (= e!1356178 (and tp!652878 mapRes!12259))))

(declare-fun condMapEmpty!12261 () Bool)

(declare-fun mapDefault!12261 () List!23900)

(assert (=> b!2127497 (= condMapEmpty!12261 (= (arr!3813 (_values!2786 (v!28352 (underlying!5207 (v!28353 (underlying!5208 (cache!2801 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!23900)) mapDefault!12261)))))

(assert (=> b!2127498 (= e!1356174 e!1356175)))

(declare-fun res!920203 () Bool)

(assert (=> b!2127498 (=> (not res!920203) (not e!1356175))))

(assert (=> b!2127498 (= res!920203 (forall!4884 stack!8 lambda!78934))))

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!796001 () Int)

(declare-fun lt!796004 () Int)

(declare-fun z!3839 () (InoxSet Context!2510))

(declare-fun from!1043 () Int)

(declare-fun furthestNullablePosition!15 ((InoxSet Context!2510) Int BalanceConc!15408 Int Int) Int)

(assert (=> b!2127498 (= lt!796001 (furthestNullablePosition!15 z!3839 from!1043 totalInput!851 lt!796004 lastNullablePos!123))))

(declare-fun b!2127499 () Bool)

(declare-fun res!920197 () Bool)

(assert (=> b!2127499 (=> (not res!920197) (not e!1356174))))

(declare-fun e!1356176 () Bool)

(assert (=> b!2127499 (= res!920197 e!1356176)))

(declare-fun res!920201 () Bool)

(assert (=> b!2127499 (=> res!920201 e!1356176)))

(declare-fun nullableZipper!77 ((InoxSet Context!2510)) Bool)

(assert (=> b!2127499 (= res!920201 (not (nullableZipper!77 z!3839)))))

(declare-fun e!1356163 () Bool)

(assert (=> b!2127480 (= e!1356163 (and e!1356173 tp!652865))))

(declare-fun res!920206 () Bool)

(declare-fun e!1356183 () Bool)

(assert (=> start!207438 (=> (not res!920206) (not e!1356183))))

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207438 (= res!920206 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207438 e!1356183))

(declare-fun e!1356172 () Bool)

(declare-fun inv!31423 (CacheFurthestNullable!618) Bool)

(assert (=> start!207438 (and (inv!31423 cacheFurthestNullable!114) e!1356172)))

(assert (=> start!207438 true))

(declare-fun inv!31424 (CacheDown!1664) Bool)

(assert (=> start!207438 (and (inv!31424 cacheDown!1098) e!1356186)))

(declare-fun inv!31425 (CacheUp!1678) Bool)

(assert (=> start!207438 (and (inv!31425 cacheUp!979) e!1356168)))

(declare-fun condSetEmpty!15533 () Bool)

(assert (=> start!207438 (= condSetEmpty!15533 (= z!3839 ((as const (Array Context!2510 Bool)) false)))))

(assert (=> start!207438 setRes!15533))

(assert (=> start!207438 (and (inv!31422 totalInput!851) e!1356188)))

(declare-fun e!1356185 () Bool)

(assert (=> start!207438 e!1356185))

(declare-fun b!2127500 () Bool)

(declare-fun e!1356193 () Bool)

(declare-fun e!1356189 () Bool)

(assert (=> b!2127500 (= e!1356193 e!1356189)))

(declare-fun b!2127501 () Bool)

(assert (=> b!2127501 (= e!1356183 e!1356174)))

(declare-fun res!920199 () Bool)

(assert (=> b!2127501 (=> (not res!920199) (not e!1356174))))

(assert (=> b!2127501 (= res!920199 (and (= totalInputSize!296 lt!796004) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18627 (BalanceConc!15408) Int)

(assert (=> b!2127501 (= lt!796004 (size!18627 totalInput!851))))

(declare-fun mapNonEmpty!12260 () Bool)

(declare-fun tp!652863 () Bool)

(declare-fun tp!652874 () Bool)

(assert (=> mapNonEmpty!12260 (= mapRes!12260 (and tp!652863 tp!652874))))

(declare-fun mapKey!12260 () (_ BitVec 32))

(declare-fun mapValue!12261 () List!23899)

(declare-fun mapRest!12261 () (Array (_ BitVec 32) List!23899))

(assert (=> mapNonEmpty!12260 (= (arr!3812 (_values!2785 (v!28350 (underlying!5205 (v!28351 (underlying!5206 (cache!2800 cacheFurthestNullable!114))))))) (store mapRest!12261 mapKey!12260 mapValue!12261))))

(declare-fun b!2127502 () Bool)

(declare-fun e!1356171 () Bool)

(assert (=> b!2127502 (= e!1356171 e!1356194)))

(declare-fun b!2127503 () Bool)

(assert (=> b!2127503 (= e!1356176 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2127504 () Bool)

(assert (=> b!2127504 (= e!1356189 e!1356179)))

(declare-fun b!2127505 () Bool)

(declare-fun e!1356187 () Bool)

(declare-fun tp!652852 () Bool)

(assert (=> b!2127505 (= e!1356187 (and tp!652852 mapRes!12260))))

(declare-fun condMapEmpty!12259 () Bool)

(declare-fun mapDefault!12260 () List!23899)

(assert (=> b!2127505 (= condMapEmpty!12259 (= (arr!3812 (_values!2785 (v!28350 (underlying!5205 (v!28351 (underlying!5206 (cache!2800 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!23899)) mapDefault!12260)))))

(declare-fun b!2127506 () Bool)

(declare-fun e!1356196 () Bool)

(declare-fun tp!652857 () Bool)

(assert (=> b!2127506 (= e!1356196 (and (inv!31420 (c!340119 (totalInput!2950 cacheFurthestNullable!114))) tp!652857))))

(declare-fun b!2127507 () Bool)

(assert (=> b!2127507 (= e!1356172 (and e!1356163 (inv!31422 (totalInput!2950 cacheFurthestNullable!114)) e!1356196))))

(declare-fun tp!652851 () Bool)

(declare-fun tp!652855 () Bool)

(declare-fun array_inv!2727 (array!8597) Bool)

(assert (=> b!2127508 (= e!1356170 (and tp!652862 tp!652851 tp!652855 (array_inv!2724 (_keys!2802 (v!28350 (underlying!5205 (v!28351 (underlying!5206 (cache!2800 cacheFurthestNullable!114))))))) (array_inv!2727 (_values!2785 (v!28350 (underlying!5205 (v!28351 (underlying!5206 (cache!2800 cacheFurthestNullable!114))))))) e!1356187))))

(declare-fun b!2127509 () Bool)

(declare-fun res!920200 () Bool)

(assert (=> b!2127509 (=> (not res!920200) (not e!1356174))))

(declare-fun valid!1974 (CacheUp!1678) Bool)

(assert (=> b!2127509 (= res!920200 (valid!1974 cacheUp!979))))

(declare-fun tp!652858 () Bool)

(declare-fun setElem!15534 () Context!2510)

(declare-fun setNonEmpty!15534 () Bool)

(assert (=> setNonEmpty!15534 (= setRes!15533 (and tp!652858 (inv!31421 setElem!15534) e!1356177))))

(declare-fun setRest!15533 () (InoxSet Context!2510))

(assert (=> setNonEmpty!15534 (= z!3839 ((_ map or) (store ((as const (Array Context!2510 Bool)) false) setElem!15534 true) setRest!15533))))

(declare-fun b!2127510 () Bool)

(declare-fun lt!796002 () MutLongMap!2504)

(assert (=> b!2127510 (= e!1356165 (and e!1356193 ((_ is LongMap!2504) lt!796002)))))

(assert (=> b!2127510 (= lt!796002 (v!28349 (underlying!5204 (cache!2799 cacheDown!1098))))))

(declare-fun b!2127511 () Bool)

(declare-fun e!1356180 () Bool)

(assert (=> b!2127511 (= e!1356180 e!1356171)))

(declare-fun b!2127512 () Bool)

(declare-fun lt!796005 () MutLongMap!2506)

(assert (=> b!2127512 (= e!1356195 (and e!1356180 ((_ is LongMap!2506) lt!796005)))))

(assert (=> b!2127512 (= lt!796005 (v!28353 (underlying!5208 (cache!2801 cacheUp!979))))))

(declare-fun b!2127513 () Bool)

(declare-fun tp!652870 () Bool)

(declare-fun inv!31426 (StackFrame!70) Bool)

(assert (=> b!2127513 (= e!1356185 (and (inv!31426 (h!29215 stack!8)) e!1356167 tp!652870))))

(declare-fun b!2127514 () Bool)

(assert (=> b!2127514 (= e!1356175 (not true))))

(assert (=> b!2127514 (forall!4884 stack!8 lambda!78934)))

(declare-fun mapNonEmpty!12261 () Bool)

(declare-fun tp!652866 () Bool)

(declare-fun tp!652873 () Bool)

(assert (=> mapNonEmpty!12261 (= mapRes!12259 (and tp!652866 tp!652873))))

(declare-fun mapValue!12259 () List!23900)

(declare-fun mapKey!12259 () (_ BitVec 32))

(declare-fun mapRest!12260 () (Array (_ BitVec 32) List!23900))

(assert (=> mapNonEmpty!12261 (= (arr!3813 (_values!2786 (v!28352 (underlying!5207 (v!28353 (underlying!5208 (cache!2801 cacheUp!979))))))) (store mapRest!12260 mapKey!12259 mapValue!12259))))

(assert (= (and start!207438 res!920206) b!2127501))

(assert (= (and b!2127501 res!920199) b!2127499))

(assert (= (and b!2127499 (not res!920201)) b!2127503))

(assert (= (and b!2127499 res!920197) b!2127509))

(assert (= (and b!2127509 res!920200) b!2127477))

(assert (= (and b!2127477 res!920205) b!2127488))

(assert (= (and b!2127488 res!920204) b!2127492))

(assert (= (and b!2127492 res!920202) b!2127498))

(assert (= (and b!2127498 res!920203) b!2127487))

(assert (= (and b!2127487 res!920198) b!2127514))

(assert (= (and b!2127505 condMapEmpty!12259) mapIsEmpty!12261))

(assert (= (and b!2127505 (not condMapEmpty!12259)) mapNonEmpty!12260))

(assert (= b!2127508 b!2127505))

(assert (= b!2127485 b!2127508))

(assert (= b!2127493 b!2127485))

(assert (= (and b!2127489 ((_ is LongMap!2505) (v!28351 (underlying!5206 (cache!2800 cacheFurthestNullable!114))))) b!2127493))

(assert (= b!2127480 b!2127489))

(assert (= (and b!2127507 ((_ is HashMap!2419) (cache!2800 cacheFurthestNullable!114))) b!2127480))

(assert (= b!2127507 b!2127506))

(assert (= start!207438 b!2127507))

(assert (= (and b!2127481 condMapEmpty!12260) mapIsEmpty!12259))

(assert (= (and b!2127481 (not condMapEmpty!12260)) mapNonEmpty!12259))

(assert (= b!2127494 b!2127481))

(assert (= b!2127504 b!2127494))

(assert (= b!2127500 b!2127504))

(assert (= (and b!2127510 ((_ is LongMap!2504) (v!28349 (underlying!5204 (cache!2799 cacheDown!1098))))) b!2127500))

(assert (= b!2127490 b!2127510))

(assert (= (and b!2127479 ((_ is HashMap!2418) (cache!2799 cacheDown!1098))) b!2127490))

(assert (= start!207438 b!2127479))

(assert (= (and b!2127497 condMapEmpty!12261) mapIsEmpty!12260))

(assert (= (and b!2127497 (not condMapEmpty!12261)) mapNonEmpty!12261))

(assert (= b!2127496 b!2127497))

(assert (= b!2127502 b!2127496))

(assert (= b!2127511 b!2127502))

(assert (= (and b!2127512 ((_ is LongMap!2506) (v!28353 (underlying!5208 (cache!2801 cacheUp!979))))) b!2127511))

(assert (= b!2127491 b!2127512))

(assert (= (and b!2127495 ((_ is HashMap!2420) (cache!2801 cacheUp!979))) b!2127491))

(assert (= start!207438 b!2127495))

(assert (= (and start!207438 condSetEmpty!15533) setIsEmpty!15533))

(assert (= (and start!207438 (not condSetEmpty!15533)) setNonEmpty!15534))

(assert (= setNonEmpty!15534 b!2127478))

(assert (= start!207438 b!2127486))

(assert (= (and b!2127483 condSetEmpty!15534) setIsEmpty!15534))

(assert (= (and b!2127483 (not condSetEmpty!15534)) setNonEmpty!15533))

(assert (= setNonEmpty!15533 b!2127484))

(assert (= b!2127483 b!2127482))

(assert (= b!2127513 b!2127483))

(assert (= (and start!207438 ((_ is Cons!23814) stack!8)) b!2127513))

(declare-fun m!2579071 () Bool)

(assert (=> b!2127486 m!2579071))

(declare-fun m!2579073 () Bool)

(assert (=> b!2127507 m!2579073))

(declare-fun m!2579075 () Bool)

(assert (=> b!2127494 m!2579075))

(declare-fun m!2579077 () Bool)

(assert (=> b!2127494 m!2579077))

(declare-fun m!2579079 () Bool)

(assert (=> mapNonEmpty!12261 m!2579079))

(declare-fun m!2579081 () Bool)

(assert (=> mapNonEmpty!12259 m!2579081))

(declare-fun m!2579083 () Bool)

(assert (=> b!2127513 m!2579083))

(declare-fun m!2579085 () Bool)

(assert (=> mapNonEmpty!12260 m!2579085))

(declare-fun m!2579087 () Bool)

(assert (=> start!207438 m!2579087))

(declare-fun m!2579089 () Bool)

(assert (=> start!207438 m!2579089))

(declare-fun m!2579091 () Bool)

(assert (=> start!207438 m!2579091))

(declare-fun m!2579093 () Bool)

(assert (=> start!207438 m!2579093))

(declare-fun m!2579095 () Bool)

(assert (=> b!2127509 m!2579095))

(declare-fun m!2579097 () Bool)

(assert (=> b!2127501 m!2579097))

(declare-fun m!2579099 () Bool)

(assert (=> b!2127482 m!2579099))

(declare-fun m!2579101 () Bool)

(assert (=> b!2127499 m!2579101))

(declare-fun m!2579103 () Bool)

(assert (=> b!2127477 m!2579103))

(declare-fun m!2579105 () Bool)

(assert (=> b!2127508 m!2579105))

(declare-fun m!2579107 () Bool)

(assert (=> b!2127508 m!2579107))

(declare-fun m!2579109 () Bool)

(assert (=> b!2127514 m!2579109))

(declare-fun m!2579111 () Bool)

(assert (=> setNonEmpty!15534 m!2579111))

(assert (=> b!2127498 m!2579109))

(declare-fun m!2579113 () Bool)

(assert (=> b!2127498 m!2579113))

(declare-fun m!2579115 () Bool)

(assert (=> b!2127488 m!2579115))

(declare-fun m!2579117 () Bool)

(assert (=> b!2127506 m!2579117))

(declare-fun m!2579119 () Bool)

(assert (=> b!2127487 m!2579119))

(declare-fun m!2579121 () Bool)

(assert (=> b!2127496 m!2579121))

(declare-fun m!2579123 () Bool)

(assert (=> b!2127496 m!2579123))

(declare-fun m!2579125 () Bool)

(assert (=> setNonEmpty!15533 m!2579125))

(declare-fun m!2579127 () Bool)

(assert (=> b!2127483 m!2579127))

(check-sat (not b!2127508) (not b!2127487) (not b!2127513) b_and!171463 (not b!2127497) b_and!171457 (not b!2127501) (not b!2127507) (not b_next!62589) (not start!207438) (not b!2127499) b_and!171467 (not b!2127477) (not mapNonEmpty!12261) (not b!2127481) (not b_next!62587) b_and!171459 (not setNonEmpty!15533) (not b!2127484) (not b!2127509) (not b!2127505) (not b!2127482) b_and!171461 (not b!2127498) (not b!2127483) (not b_next!62591) (not setNonEmpty!15534) (not b_next!62583) (not b_next!62581) (not b!2127506) (not b!2127494) b_and!171465 (not mapNonEmpty!12259) (not mapNonEmpty!12260) (not b!2127478) (not b!2127514) (not b!2127496) (not b_next!62585) (not b!2127486) (not b!2127488))
(check-sat (not b_next!62589) b_and!171467 (not b_next!62587) b_and!171459 b_and!171463 b_and!171461 (not b_next!62591) (not b_next!62583) (not b_next!62581) b_and!171465 b_and!171457 (not b_next!62585))
