; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207998 () Bool)

(assert start!207998)

(declare-fun b!2142144 () Bool)

(declare-fun b_free!63005 () Bool)

(declare-fun b_next!63709 () Bool)

(assert (=> b!2142144 (= b_free!63005 (not b_next!63709))))

(declare-fun tp!662905 () Bool)

(declare-fun b_and!172585 () Bool)

(assert (=> b!2142144 (= tp!662905 b_and!172585)))

(declare-fun b!2142145 () Bool)

(declare-fun b_free!63007 () Bool)

(declare-fun b_next!63711 () Bool)

(assert (=> b!2142145 (= b_free!63007 (not b_next!63711))))

(declare-fun tp!662903 () Bool)

(declare-fun b_and!172587 () Bool)

(assert (=> b!2142145 (= tp!662903 b_and!172587)))

(declare-fun b!2142128 () Bool)

(declare-fun b_free!63009 () Bool)

(declare-fun b_next!63713 () Bool)

(assert (=> b!2142128 (= b_free!63009 (not b_next!63713))))

(declare-fun tp!662900 () Bool)

(declare-fun b_and!172589 () Bool)

(assert (=> b!2142128 (= tp!662900 b_and!172589)))

(declare-fun b!2142154 () Bool)

(declare-fun b_free!63011 () Bool)

(declare-fun b_next!63715 () Bool)

(assert (=> b!2142154 (= b_free!63011 (not b_next!63715))))

(declare-fun tp!662909 () Bool)

(declare-fun b_and!172591 () Bool)

(assert (=> b!2142154 (= tp!662909 b_and!172591)))

(declare-fun b!2142121 () Bool)

(declare-fun b_free!63013 () Bool)

(declare-fun b_next!63717 () Bool)

(assert (=> b!2142121 (= b_free!63013 (not b_next!63717))))

(declare-fun tp!662893 () Bool)

(declare-fun b_and!172593 () Bool)

(assert (=> b!2142121 (= tp!662893 b_and!172593)))

(declare-fun b!2142156 () Bool)

(declare-fun b_free!63015 () Bool)

(declare-fun b_next!63719 () Bool)

(assert (=> b!2142156 (= b_free!63015 (not b_next!63719))))

(declare-fun tp!662892 () Bool)

(declare-fun b_and!172595 () Bool)

(assert (=> b!2142156 (= tp!662892 b_and!172595)))

(declare-fun b!2142147 () Bool)

(assert (=> b!2142147 true))

(declare-fun bs!445258 () Bool)

(declare-fun b!2142134 () Bool)

(assert (= bs!445258 (and b!2142134 b!2142147)))

(declare-fun lambda!80209 () Int)

(declare-fun lambda!80208 () Int)

(assert (=> bs!445258 (not (= lambda!80209 lambda!80208))))

(assert (=> b!2142134 true))

(declare-fun mapIsEmpty!13180 () Bool)

(declare-fun mapRes!13182 () Bool)

(assert (=> mapIsEmpty!13180 mapRes!13182))

(declare-fun b!2142119 () Bool)

(declare-fun res!924742 () Bool)

(declare-fun e!1368374 () Bool)

(assert (=> b!2142119 (=> (not res!924742) (not e!1368374))))

(declare-datatypes ((C!11704 0))(
  ( (C!11705 (val!6838 Int)) )
))
(declare-datatypes ((Regex!5779 0))(
  ( (ElementMatch!5779 (c!340628 C!11704)) (Concat!10081 (regOne!12070 Regex!5779) (regTwo!12070 Regex!5779)) (EmptyExpr!5779) (Star!5779 (reg!6108 Regex!5779)) (EmptyLang!5779) (Union!5779 (regOne!12071 Regex!5779) (regTwo!12071 Regex!5779)) )
))
(declare-datatypes ((List!24432 0))(
  ( (Nil!24348) (Cons!24348 (h!29749 Regex!5779) (t!196962 List!24432)) )
))
(declare-datatypes ((Context!2698 0))(
  ( (Context!2699 (exprs!1849 List!24432)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3436 0))(
  ( (tuple3!3437 (_1!14278 (InoxSet Context!2698)) (_2!14278 Int) (_3!2188 Int)) )
))
(declare-datatypes ((tuple2!24180 0))(
  ( (tuple2!24181 (_1!14279 tuple3!3436) (_2!14279 Int)) )
))
(declare-datatypes ((List!24433 0))(
  ( (Nil!24349) (Cons!24349 (h!29750 tuple2!24180) (t!196963 List!24433)) )
))
(declare-datatypes ((array!9333 0))(
  ( (array!9334 (arr!4164 (Array (_ BitVec 32) (_ BitVec 64))) (size!19054 (_ BitVec 32))) )
))
(declare-datatypes ((array!9335 0))(
  ( (array!9336 (arr!4165 (Array (_ BitVec 32) List!24433)) (size!19055 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5528 0))(
  ( (LongMapFixedSize!5529 (defaultEntry!3129 Int) (mask!6969 (_ BitVec 32)) (extraKeys!3012 (_ BitVec 32)) (zeroValue!3022 List!24433) (minValue!3022 List!24433) (_size!5579 (_ BitVec 32)) (_keys!3061 array!9333) (_values!3044 array!9335) (_vacant!2825 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10881 0))(
  ( (Cell!10882 (v!28932 LongMapFixedSize!5528)) )
))
(declare-datatypes ((List!24434 0))(
  ( (Nil!24350) (Cons!24350 (h!29751 C!11704) (t!196964 List!24434)) )
))
(declare-datatypes ((IArray!15839 0))(
  ( (IArray!15840 (innerList!7977 List!24434)) )
))
(declare-datatypes ((Conc!7917 0))(
  ( (Node!7917 (left!18723 Conc!7917) (right!19053 Conc!7917) (csize!16064 Int) (cheight!8128 Int)) (Leaf!11574 (xs!10859 IArray!15839) (csize!16065 Int)) (Empty!7917) )
))
(declare-datatypes ((MutLongMap!2764 0))(
  ( (LongMap!2764 (underlying!5723 Cell!10881)) (MutLongMapExt!2763 (__x!16468 Int)) )
))
(declare-datatypes ((Cell!10883 0))(
  ( (Cell!10884 (v!28933 MutLongMap!2764)) )
))
(declare-datatypes ((Hashable!2678 0))(
  ( (HashableExt!2677 (__x!16469 Int)) )
))
(declare-datatypes ((MutableMap!2678 0))(
  ( (MutableMapExt!2677 (__x!16470 Int)) (HashMap!2678 (underlying!5724 Cell!10883) (hashF!4601 Hashable!2678) (_size!5580 (_ BitVec 32)) (defaultValue!2840 Int)) )
))
(declare-datatypes ((BalanceConc!15596 0))(
  ( (BalanceConc!15597 (c!340629 Conc!7917)) )
))
(declare-datatypes ((CacheFurthestNullable!802 0))(
  ( (CacheFurthestNullable!803 (cache!3059 MutableMap!2678) (totalInput!3134 BalanceConc!15596)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!802)

(declare-fun valid!2159 (CacheFurthestNullable!802) Bool)

(assert (=> b!2142119 (= res!924742 (valid!2159 cacheFurthestNullable!114))))

(declare-fun mapNonEmpty!13180 () Bool)

(declare-fun mapRes!13181 () Bool)

(declare-fun tp!662904 () Bool)

(declare-fun tp!662897 () Bool)

(assert (=> mapNonEmpty!13180 (= mapRes!13181 (and tp!662904 tp!662897))))

(declare-datatypes ((tuple2!24182 0))(
  ( (tuple2!24183 (_1!14280 Context!2698) (_2!14280 C!11704)) )
))
(declare-datatypes ((tuple2!24184 0))(
  ( (tuple2!24185 (_1!14281 tuple2!24182) (_2!14281 (InoxSet Context!2698))) )
))
(declare-datatypes ((List!24435 0))(
  ( (Nil!24351) (Cons!24351 (h!29752 tuple2!24184) (t!196965 List!24435)) )
))
(declare-datatypes ((array!9337 0))(
  ( (array!9338 (arr!4166 (Array (_ BitVec 32) List!24435)) (size!19056 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5530 0))(
  ( (LongMapFixedSize!5531 (defaultEntry!3130 Int) (mask!6970 (_ BitVec 32)) (extraKeys!3013 (_ BitVec 32)) (zeroValue!3023 List!24435) (minValue!3023 List!24435) (_size!5581 (_ BitVec 32)) (_keys!3062 array!9333) (_values!3045 array!9337) (_vacant!2826 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10885 0))(
  ( (Cell!10886 (v!28934 LongMapFixedSize!5530)) )
))
(declare-datatypes ((MutLongMap!2765 0))(
  ( (LongMap!2765 (underlying!5725 Cell!10885)) (MutLongMapExt!2764 (__x!16471 Int)) )
))
(declare-datatypes ((Cell!10887 0))(
  ( (Cell!10888 (v!28935 MutLongMap!2765)) )
))
(declare-datatypes ((Hashable!2679 0))(
  ( (HashableExt!2678 (__x!16472 Int)) )
))
(declare-datatypes ((MutableMap!2679 0))(
  ( (MutableMapExt!2678 (__x!16473 Int)) (HashMap!2679 (underlying!5726 Cell!10887) (hashF!4602 Hashable!2679) (_size!5582 (_ BitVec 32)) (defaultValue!2841 Int)) )
))
(declare-datatypes ((CacheUp!1844 0))(
  ( (CacheUp!1845 (cache!3060 MutableMap!2679)) )
))
(declare-fun cacheUp!979 () CacheUp!1844)

(declare-fun mapValue!13180 () List!24435)

(declare-fun mapRest!13180 () (Array (_ BitVec 32) List!24435))

(declare-fun mapKey!13182 () (_ BitVec 32))

(assert (=> mapNonEmpty!13180 (= (arr!4166 (_values!3045 (v!28934 (underlying!5725 (v!28935 (underlying!5726 (cache!3060 cacheUp!979))))))) (store mapRest!13180 mapKey!13182 mapValue!13180))))

(declare-fun b!2142120 () Bool)

(declare-fun e!1368372 () Bool)

(declare-fun e!1368387 () Bool)

(assert (=> b!2142120 (= e!1368372 e!1368387)))

(declare-fun e!1368381 () Bool)

(declare-fun e!1368401 () Bool)

(assert (=> b!2142121 (= e!1368381 (and e!1368401 tp!662893))))

(declare-fun b!2142122 () Bool)

(declare-fun e!1368383 () Bool)

(declare-fun totalInput!851 () BalanceConc!15596)

(declare-fun tp!662896 () Bool)

(declare-fun inv!32049 (Conc!7917) Bool)

(assert (=> b!2142122 (= e!1368383 (and (inv!32049 (c!340629 totalInput!851)) tp!662896))))

(declare-fun b!2142123 () Bool)

(declare-fun e!1368368 () Bool)

(declare-fun tp!662889 () Bool)

(assert (=> b!2142123 (= e!1368368 (and (inv!32049 (c!340629 (totalInput!3134 cacheFurthestNullable!114))) tp!662889))))

(declare-fun b!2142124 () Bool)

(declare-fun e!1368394 () Bool)

(declare-fun e!1368396 () Bool)

(assert (=> b!2142124 (= e!1368394 e!1368396)))

(declare-fun b!2142125 () Bool)

(declare-fun e!1368391 () Bool)

(assert (=> b!2142125 (= e!1368391 e!1368374)))

(declare-fun res!924741 () Bool)

(assert (=> b!2142125 (=> (not res!924741) (not e!1368374))))

(declare-fun totalInputSize!296 () Int)

(declare-fun lt!798327 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2142125 (= res!924741 (and (= totalInputSize!296 lt!798327) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19057 (BalanceConc!15596) Int)

(assert (=> b!2142125 (= lt!798327 (size!19057 totalInput!851))))

(declare-fun e!1368392 () Bool)

(declare-fun setNonEmpty!16487 () Bool)

(declare-fun tp!662888 () Bool)

(declare-fun setRes!16488 () Bool)

(declare-fun setElem!16488 () Context!2698)

(declare-fun inv!32050 (Context!2698) Bool)

(assert (=> setNonEmpty!16487 (= setRes!16488 (and tp!662888 (inv!32050 setElem!16488) e!1368392))))

(declare-datatypes ((StackFrame!236 0))(
  ( (StackFrame!237 (z!5879 (InoxSet Context!2698)) (from!2747 Int) (lastNullablePos!434 Int) (res!924743 Int) (totalInput!3135 BalanceConc!15596)) )
))
(declare-datatypes ((List!24436 0))(
  ( (Nil!24352) (Cons!24352 (h!29753 StackFrame!236) (t!196966 List!24436)) )
))
(declare-fun stack!8 () List!24436)

(declare-fun setRest!16488 () (InoxSet Context!2698))

(assert (=> setNonEmpty!16487 (= (z!5879 (h!29753 stack!8)) ((_ map or) (store ((as const (Array Context!2698 Bool)) false) setElem!16488 true) setRest!16488))))

(declare-fun b!2142126 () Bool)

(declare-fun e!1368379 () Bool)

(declare-fun tp!662890 () Bool)

(assert (=> b!2142126 (= e!1368379 (and tp!662890 mapRes!13181))))

(declare-fun condMapEmpty!13180 () Bool)

(declare-fun mapDefault!13181 () List!24435)

(assert (=> b!2142126 (= condMapEmpty!13180 (= (arr!4166 (_values!3045 (v!28934 (underlying!5725 (v!28935 (underlying!5726 (cache!3060 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24435)) mapDefault!13181)))))

(declare-fun setIsEmpty!16487 () Bool)

(assert (=> setIsEmpty!16487 setRes!16488))

(declare-fun b!2142127 () Bool)

(declare-fun e!1368378 () Bool)

(declare-fun e!1368376 () Bool)

(declare-datatypes ((tuple3!3438 0))(
  ( (tuple3!3439 (_1!14282 Regex!5779) (_2!14282 Context!2698) (_3!2189 C!11704)) )
))
(declare-datatypes ((tuple2!24186 0))(
  ( (tuple2!24187 (_1!14283 tuple3!3438) (_2!14283 (InoxSet Context!2698))) )
))
(declare-datatypes ((List!24437 0))(
  ( (Nil!24353) (Cons!24353 (h!29754 tuple2!24186) (t!196967 List!24437)) )
))
(declare-datatypes ((array!9339 0))(
  ( (array!9340 (arr!4167 (Array (_ BitVec 32) List!24437)) (size!19058 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5532 0))(
  ( (LongMapFixedSize!5533 (defaultEntry!3131 Int) (mask!6971 (_ BitVec 32)) (extraKeys!3014 (_ BitVec 32)) (zeroValue!3024 List!24437) (minValue!3024 List!24437) (_size!5583 (_ BitVec 32)) (_keys!3063 array!9333) (_values!3046 array!9339) (_vacant!2827 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10889 0))(
  ( (Cell!10890 (v!28936 LongMapFixedSize!5532)) )
))
(declare-datatypes ((MutLongMap!2766 0))(
  ( (LongMap!2766 (underlying!5727 Cell!10889)) (MutLongMapExt!2765 (__x!16474 Int)) )
))
(declare-fun lt!798328 () MutLongMap!2766)

(get-info :version)

(assert (=> b!2142127 (= e!1368378 (and e!1368376 ((_ is LongMap!2766) lt!798328)))))

(declare-datatypes ((Hashable!2680 0))(
  ( (HashableExt!2679 (__x!16475 Int)) )
))
(declare-datatypes ((Cell!10891 0))(
  ( (Cell!10892 (v!28937 MutLongMap!2766)) )
))
(declare-datatypes ((MutableMap!2680 0))(
  ( (MutableMapExt!2679 (__x!16476 Int)) (HashMap!2680 (underlying!5728 Cell!10891) (hashF!4603 Hashable!2680) (_size!5584 (_ BitVec 32)) (defaultValue!2842 Int)) )
))
(declare-datatypes ((CacheDown!1834 0))(
  ( (CacheDown!1835 (cache!3061 MutableMap!2680)) )
))
(declare-fun cacheDown!1098 () CacheDown!1834)

(assert (=> b!2142127 (= lt!798328 (v!28937 (underlying!5728 (cache!3061 cacheDown!1098))))))

(declare-fun e!1368395 () Bool)

(declare-fun e!1368393 () Bool)

(assert (=> b!2142128 (= e!1368395 (and e!1368393 tp!662900))))

(declare-fun b!2142129 () Bool)

(declare-fun e!1368377 () Bool)

(declare-fun e!1368397 () Bool)

(assert (=> b!2142129 (= e!1368377 e!1368397)))

(declare-fun mapNonEmpty!13181 () Bool)

(declare-fun mapRes!13180 () Bool)

(declare-fun tp!662911 () Bool)

(declare-fun tp!662887 () Bool)

(assert (=> mapNonEmpty!13181 (= mapRes!13180 (and tp!662911 tp!662887))))

(declare-fun mapValue!13182 () List!24437)

(declare-fun mapKey!13180 () (_ BitVec 32))

(declare-fun mapRest!13182 () (Array (_ BitVec 32) List!24437))

(assert (=> mapNonEmpty!13181 (= (arr!4167 (_values!3046 (v!28936 (underlying!5727 (v!28937 (underlying!5728 (cache!3061 cacheDown!1098))))))) (store mapRest!13182 mapKey!13180 mapValue!13182))))

(declare-fun b!2142130 () Bool)

(declare-fun e!1368400 () Bool)

(declare-fun tp!662899 () Bool)

(assert (=> b!2142130 (= e!1368400 (and (inv!32049 (c!340629 (totalInput!3135 (h!29753 stack!8)))) tp!662899))))

(declare-fun b!2142131 () Bool)

(declare-fun e!1368384 () Bool)

(declare-fun inv!32051 (BalanceConc!15596) Bool)

(assert (=> b!2142131 (= e!1368384 (and e!1368381 (inv!32051 (totalInput!3134 cacheFurthestNullable!114)) e!1368368))))

(declare-fun b!2142132 () Bool)

(declare-fun res!924740 () Bool)

(assert (=> b!2142132 (=> (not res!924740) (not e!1368374))))

(declare-fun valid!2160 (CacheUp!1844) Bool)

(assert (=> b!2142132 (= res!924740 (valid!2160 cacheUp!979))))

(declare-fun b!2142133 () Bool)

(declare-fun e!1368370 () Bool)

(declare-fun tp!662902 () Bool)

(assert (=> b!2142133 (= e!1368370 (and tp!662902 mapRes!13180))))

(declare-fun condMapEmpty!13181 () Bool)

(declare-fun mapDefault!13182 () List!24437)

(assert (=> b!2142133 (= condMapEmpty!13181 (= (arr!4167 (_values!3046 (v!28936 (underlying!5727 (v!28937 (underlying!5728 (cache!3061 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24437)) mapDefault!13182)))))

(declare-fun res!924733 () Bool)

(declare-fun e!1368375 () Bool)

(assert (=> b!2142134 (=> (not res!924733) (not e!1368375))))

(declare-fun forall!4976 (List!24436 Int) Bool)

(assert (=> b!2142134 (= res!924733 (forall!4976 stack!8 lambda!80209))))

(declare-fun b!2142135 () Bool)

(declare-fun tp!662908 () Bool)

(assert (=> b!2142135 (= e!1368392 tp!662908)))

(declare-fun mapIsEmpty!13181 () Bool)

(assert (=> mapIsEmpty!13181 mapRes!13181))

(declare-fun b!2142136 () Bool)

(assert (=> b!2142136 (= e!1368376 e!1368394)))

(declare-fun b!2142137 () Bool)

(declare-fun lt!798330 () MutLongMap!2765)

(assert (=> b!2142137 (= e!1368393 (and e!1368372 ((_ is LongMap!2765) lt!798330)))))

(assert (=> b!2142137 (= lt!798330 (v!28935 (underlying!5726 (cache!3060 cacheUp!979))))))

(declare-fun res!924734 () Bool)

(assert (=> start!207998 (=> (not res!924734) (not e!1368391))))

(assert (=> start!207998 (= res!924734 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207998 e!1368391))

(declare-fun inv!32052 (CacheFurthestNullable!802) Bool)

(assert (=> start!207998 (and (inv!32052 cacheFurthestNullable!114) e!1368384)))

(assert (=> start!207998 true))

(declare-fun e!1368389 () Bool)

(declare-fun inv!32053 (CacheDown!1834) Bool)

(assert (=> start!207998 (and (inv!32053 cacheDown!1098) e!1368389)))

(declare-fun e!1368398 () Bool)

(declare-fun inv!32054 (CacheUp!1844) Bool)

(assert (=> start!207998 (and (inv!32054 cacheUp!979) e!1368398)))

(declare-fun condSetEmpty!16487 () Bool)

(declare-fun z!3839 () (InoxSet Context!2698))

(assert (=> start!207998 (= condSetEmpty!16487 (= z!3839 ((as const (Array Context!2698 Bool)) false)))))

(declare-fun setRes!16487 () Bool)

(assert (=> start!207998 setRes!16487))

(assert (=> start!207998 (and (inv!32051 totalInput!851) e!1368383)))

(declare-fun e!1368373 () Bool)

(assert (=> start!207998 e!1368373))

(declare-fun b!2142138 () Bool)

(assert (=> b!2142138 (= e!1368398 e!1368395)))

(declare-fun b!2142139 () Bool)

(declare-fun res!924738 () Bool)

(assert (=> b!2142139 (=> (not res!924738) (not e!1368374))))

(declare-fun e!1368390 () Bool)

(assert (=> b!2142139 (= res!924738 e!1368390)))

(declare-fun res!924735 () Bool)

(assert (=> b!2142139 (=> res!924735 e!1368390)))

(declare-fun nullableZipper!141 ((InoxSet Context!2698)) Bool)

(assert (=> b!2142139 (= res!924735 (not (nullableZipper!141 z!3839)))))

(declare-fun mapIsEmpty!13182 () Bool)

(assert (=> mapIsEmpty!13182 mapRes!13180))

(declare-fun b!2142140 () Bool)

(declare-fun e!1368386 () Bool)

(assert (=> b!2142140 (= e!1368389 e!1368386)))

(declare-fun mapNonEmpty!13182 () Bool)

(declare-fun tp!662894 () Bool)

(declare-fun tp!662912 () Bool)

(assert (=> mapNonEmpty!13182 (= mapRes!13182 (and tp!662894 tp!662912))))

(declare-fun mapRest!13181 () (Array (_ BitVec 32) List!24433))

(declare-fun mapKey!13181 () (_ BitVec 32))

(declare-fun mapValue!13181 () List!24433)

(assert (=> mapNonEmpty!13182 (= (arr!4165 (_values!3044 (v!28932 (underlying!5723 (v!28933 (underlying!5724 (cache!3059 cacheFurthestNullable!114))))))) (store mapRest!13181 mapKey!13181 mapValue!13181))))

(declare-fun b!2142141 () Bool)

(declare-fun res!924736 () Bool)

(assert (=> b!2142141 (=> (not res!924736) (not e!1368374))))

(assert (=> b!2142141 (= res!924736 (= (totalInput!3134 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2142142 () Bool)

(declare-fun e!1368371 () Bool)

(declare-fun lt!798329 () MutLongMap!2764)

(assert (=> b!2142142 (= e!1368401 (and e!1368371 ((_ is LongMap!2764) lt!798329)))))

(assert (=> b!2142142 (= lt!798329 (v!28933 (underlying!5724 (cache!3059 cacheFurthestNullable!114))))))

(declare-fun b!2142143 () Bool)

(assert (=> b!2142143 (= e!1368375 (< (- totalInputSize!296 from!1043) 0))))

(assert (=> b!2142144 (= e!1368386 (and e!1368378 tp!662905))))

(declare-fun tp!662913 () Bool)

(declare-fun tp!662910 () Bool)

(declare-fun e!1368402 () Bool)

(declare-fun array_inv!2979 (array!9333) Bool)

(declare-fun array_inv!2980 (array!9335) Bool)

(assert (=> b!2142145 (= e!1368397 (and tp!662903 tp!662910 tp!662913 (array_inv!2979 (_keys!3061 (v!28932 (underlying!5723 (v!28933 (underlying!5724 (cache!3059 cacheFurthestNullable!114))))))) (array_inv!2980 (_values!3044 (v!28932 (underlying!5723 (v!28933 (underlying!5724 (cache!3059 cacheFurthestNullable!114))))))) e!1368402))))

(declare-fun b!2142146 () Bool)

(declare-fun tp!662907 () Bool)

(assert (=> b!2142146 (= e!1368402 (and tp!662907 mapRes!13182))))

(declare-fun condMapEmpty!13182 () Bool)

(declare-fun mapDefault!13180 () List!24433)

(assert (=> b!2142146 (= condMapEmpty!13182 (= (arr!4165 (_values!3044 (v!28932 (underlying!5723 (v!28933 (underlying!5724 (cache!3059 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24433)) mapDefault!13180)))))

(assert (=> b!2142147 (= e!1368374 e!1368375)))

(declare-fun res!924739 () Bool)

(assert (=> b!2142147 (=> (not res!924739) (not e!1368375))))

(assert (=> b!2142147 (= res!924739 (forall!4976 stack!8 lambda!80208))))

(declare-fun lt!798331 () Int)

(declare-fun furthestNullablePosition!79 ((InoxSet Context!2698) Int BalanceConc!15596 Int Int) Int)

(assert (=> b!2142147 (= lt!798331 (furthestNullablePosition!79 z!3839 from!1043 totalInput!851 lt!798327 lastNullablePos!123))))

(declare-fun b!2142148 () Bool)

(declare-fun e!1368399 () Bool)

(declare-fun tp!662891 () Bool)

(assert (=> b!2142148 (= e!1368399 tp!662891)))

(declare-fun b!2142149 () Bool)

(declare-fun res!924737 () Bool)

(assert (=> b!2142149 (=> (not res!924737) (not e!1368374))))

(declare-fun valid!2161 (CacheDown!1834) Bool)

(assert (=> b!2142149 (= res!924737 (valid!2161 cacheDown!1098))))

(declare-fun e!1368382 () Bool)

(declare-fun b!2142150 () Bool)

(assert (=> b!2142150 (= e!1368382 (and setRes!16488 (inv!32051 (totalInput!3135 (h!29753 stack!8))) e!1368400))))

(declare-fun condSetEmpty!16488 () Bool)

(assert (=> b!2142150 (= condSetEmpty!16488 (= (z!5879 (h!29753 stack!8)) ((as const (Array Context!2698 Bool)) false)))))

(declare-fun b!2142151 () Bool)

(assert (=> b!2142151 (= e!1368390 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun tp!662901 () Bool)

(declare-fun b!2142152 () Bool)

(declare-fun inv!32055 (StackFrame!236) Bool)

(assert (=> b!2142152 (= e!1368373 (and (inv!32055 (h!29753 stack!8)) e!1368382 tp!662901))))

(declare-fun b!2142153 () Bool)

(declare-fun e!1368385 () Bool)

(assert (=> b!2142153 (= e!1368387 e!1368385)))

(declare-fun tp!662906 () Bool)

(declare-fun setElem!16487 () Context!2698)

(declare-fun setNonEmpty!16488 () Bool)

(assert (=> setNonEmpty!16488 (= setRes!16487 (and tp!662906 (inv!32050 setElem!16487) e!1368399))))

(declare-fun setRest!16487 () (InoxSet Context!2698))

(assert (=> setNonEmpty!16488 (= z!3839 ((_ map or) (store ((as const (Array Context!2698 Bool)) false) setElem!16487 true) setRest!16487))))

(declare-fun setIsEmpty!16488 () Bool)

(assert (=> setIsEmpty!16488 setRes!16487))

(declare-fun tp!662898 () Bool)

(declare-fun tp!662895 () Bool)

(declare-fun array_inv!2981 (array!9339) Bool)

(assert (=> b!2142154 (= e!1368396 (and tp!662909 tp!662895 tp!662898 (array_inv!2979 (_keys!3063 (v!28936 (underlying!5727 (v!28937 (underlying!5728 (cache!3061 cacheDown!1098))))))) (array_inv!2981 (_values!3046 (v!28936 (underlying!5727 (v!28937 (underlying!5728 (cache!3061 cacheDown!1098))))))) e!1368370))))

(declare-fun b!2142155 () Bool)

(assert (=> b!2142155 (= e!1368371 e!1368377)))

(declare-fun tp!662914 () Bool)

(declare-fun tp!662915 () Bool)

(declare-fun array_inv!2982 (array!9337) Bool)

(assert (=> b!2142156 (= e!1368385 (and tp!662892 tp!662914 tp!662915 (array_inv!2979 (_keys!3062 (v!28934 (underlying!5725 (v!28935 (underlying!5726 (cache!3060 cacheUp!979))))))) (array_inv!2982 (_values!3045 (v!28934 (underlying!5725 (v!28935 (underlying!5726 (cache!3060 cacheUp!979))))))) e!1368379))))

(assert (= (and start!207998 res!924734) b!2142125))

(assert (= (and b!2142125 res!924741) b!2142139))

(assert (= (and b!2142139 (not res!924735)) b!2142151))

(assert (= (and b!2142139 res!924738) b!2142132))

(assert (= (and b!2142132 res!924740) b!2142149))

(assert (= (and b!2142149 res!924737) b!2142119))

(assert (= (and b!2142119 res!924742) b!2142141))

(assert (= (and b!2142141 res!924736) b!2142147))

(assert (= (and b!2142147 res!924739) b!2142134))

(assert (= (and b!2142134 res!924733) b!2142143))

(assert (= (and b!2142146 condMapEmpty!13182) mapIsEmpty!13180))

(assert (= (and b!2142146 (not condMapEmpty!13182)) mapNonEmpty!13182))

(assert (= b!2142145 b!2142146))

(assert (= b!2142129 b!2142145))

(assert (= b!2142155 b!2142129))

(assert (= (and b!2142142 ((_ is LongMap!2764) (v!28933 (underlying!5724 (cache!3059 cacheFurthestNullable!114))))) b!2142155))

(assert (= b!2142121 b!2142142))

(assert (= (and b!2142131 ((_ is HashMap!2678) (cache!3059 cacheFurthestNullable!114))) b!2142121))

(assert (= b!2142131 b!2142123))

(assert (= start!207998 b!2142131))

(assert (= (and b!2142133 condMapEmpty!13181) mapIsEmpty!13182))

(assert (= (and b!2142133 (not condMapEmpty!13181)) mapNonEmpty!13181))

(assert (= b!2142154 b!2142133))

(assert (= b!2142124 b!2142154))

(assert (= b!2142136 b!2142124))

(assert (= (and b!2142127 ((_ is LongMap!2766) (v!28937 (underlying!5728 (cache!3061 cacheDown!1098))))) b!2142136))

(assert (= b!2142144 b!2142127))

(assert (= (and b!2142140 ((_ is HashMap!2680) (cache!3061 cacheDown!1098))) b!2142144))

(assert (= start!207998 b!2142140))

(assert (= (and b!2142126 condMapEmpty!13180) mapIsEmpty!13181))

(assert (= (and b!2142126 (not condMapEmpty!13180)) mapNonEmpty!13180))

(assert (= b!2142156 b!2142126))

(assert (= b!2142153 b!2142156))

(assert (= b!2142120 b!2142153))

(assert (= (and b!2142137 ((_ is LongMap!2765) (v!28935 (underlying!5726 (cache!3060 cacheUp!979))))) b!2142120))

(assert (= b!2142128 b!2142137))

(assert (= (and b!2142138 ((_ is HashMap!2679) (cache!3060 cacheUp!979))) b!2142128))

(assert (= start!207998 b!2142138))

(assert (= (and start!207998 condSetEmpty!16487) setIsEmpty!16488))

(assert (= (and start!207998 (not condSetEmpty!16487)) setNonEmpty!16488))

(assert (= setNonEmpty!16488 b!2142148))

(assert (= start!207998 b!2142122))

(assert (= (and b!2142150 condSetEmpty!16488) setIsEmpty!16487))

(assert (= (and b!2142150 (not condSetEmpty!16488)) setNonEmpty!16487))

(assert (= setNonEmpty!16487 b!2142135))

(assert (= b!2142150 b!2142130))

(assert (= b!2142152 b!2142150))

(assert (= (and start!207998 ((_ is Cons!24352) stack!8)) b!2142152))

(declare-fun m!2587571 () Bool)

(assert (=> b!2142139 m!2587571))

(declare-fun m!2587573 () Bool)

(assert (=> b!2142132 m!2587573))

(declare-fun m!2587575 () Bool)

(assert (=> b!2142119 m!2587575))

(declare-fun m!2587577 () Bool)

(assert (=> mapNonEmpty!13180 m!2587577))

(declare-fun m!2587579 () Bool)

(assert (=> b!2142125 m!2587579))

(declare-fun m!2587581 () Bool)

(assert (=> b!2142147 m!2587581))

(declare-fun m!2587583 () Bool)

(assert (=> b!2142147 m!2587583))

(declare-fun m!2587585 () Bool)

(assert (=> b!2142156 m!2587585))

(declare-fun m!2587587 () Bool)

(assert (=> b!2142156 m!2587587))

(declare-fun m!2587589 () Bool)

(assert (=> setNonEmpty!16488 m!2587589))

(declare-fun m!2587591 () Bool)

(assert (=> start!207998 m!2587591))

(declare-fun m!2587593 () Bool)

(assert (=> start!207998 m!2587593))

(declare-fun m!2587595 () Bool)

(assert (=> start!207998 m!2587595))

(declare-fun m!2587597 () Bool)

(assert (=> start!207998 m!2587597))

(declare-fun m!2587599 () Bool)

(assert (=> b!2142131 m!2587599))

(declare-fun m!2587601 () Bool)

(assert (=> b!2142123 m!2587601))

(declare-fun m!2587603 () Bool)

(assert (=> b!2142152 m!2587603))

(declare-fun m!2587605 () Bool)

(assert (=> setNonEmpty!16487 m!2587605))

(declare-fun m!2587607 () Bool)

(assert (=> b!2142149 m!2587607))

(declare-fun m!2587609 () Bool)

(assert (=> mapNonEmpty!13182 m!2587609))

(declare-fun m!2587611 () Bool)

(assert (=> mapNonEmpty!13181 m!2587611))

(declare-fun m!2587613 () Bool)

(assert (=> b!2142134 m!2587613))

(declare-fun m!2587615 () Bool)

(assert (=> b!2142122 m!2587615))

(declare-fun m!2587617 () Bool)

(assert (=> b!2142130 m!2587617))

(declare-fun m!2587619 () Bool)

(assert (=> b!2142145 m!2587619))

(declare-fun m!2587621 () Bool)

(assert (=> b!2142145 m!2587621))

(declare-fun m!2587623 () Bool)

(assert (=> b!2142150 m!2587623))

(declare-fun m!2587625 () Bool)

(assert (=> b!2142154 m!2587625))

(declare-fun m!2587627 () Bool)

(assert (=> b!2142154 m!2587627))

(check-sat b_and!172591 (not b!2142139) (not b_next!63715) b_and!172587 (not mapNonEmpty!13182) (not mapNonEmpty!13180) (not b!2142126) (not b!2142123) (not b!2142131) (not b!2142156) (not b!2142145) (not b!2142125) b_and!172589 (not b!2142147) (not setNonEmpty!16487) (not b_next!63713) (not b!2142133) b_and!172585 b_and!172595 (not b!2142154) (not b!2142152) (not b_next!63717) (not b!2142149) (not b!2142130) (not b_next!63719) b_and!172593 (not b!2142150) (not b_next!63709) (not start!207998) (not b!2142146) (not b!2142119) (not mapNonEmpty!13181) (not b!2142122) (not b!2142148) (not b!2142132) (not setNonEmpty!16488) (not b!2142135) (not b!2142134) (not b_next!63711))
(check-sat b_and!172591 (not b_next!63715) b_and!172589 b_and!172587 (not b_next!63717) (not b_next!63709) (not b_next!63711) (not b_next!63713) b_and!172585 b_and!172595 (not b_next!63719) b_and!172593)
