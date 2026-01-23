; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208002 () Bool)

(assert start!208002)

(declare-fun b!2142386 () Bool)

(declare-fun b_free!63029 () Bool)

(declare-fun b_next!63733 () Bool)

(assert (=> b!2142386 (= b_free!63029 (not b_next!63733))))

(declare-fun tp!663063 () Bool)

(declare-fun b_and!172609 () Bool)

(assert (=> b!2142386 (= tp!663063 b_and!172609)))

(declare-fun b!2142362 () Bool)

(declare-fun b_free!63031 () Bool)

(declare-fun b_next!63735 () Bool)

(assert (=> b!2142362 (= b_free!63031 (not b_next!63735))))

(declare-fun tp!663088 () Bool)

(declare-fun b_and!172611 () Bool)

(assert (=> b!2142362 (= tp!663088 b_and!172611)))

(declare-fun b!2142372 () Bool)

(declare-fun b_free!63033 () Bool)

(declare-fun b_next!63737 () Bool)

(assert (=> b!2142372 (= b_free!63033 (not b_next!63737))))

(declare-fun tp!663089 () Bool)

(declare-fun b_and!172613 () Bool)

(assert (=> b!2142372 (= tp!663089 b_and!172613)))

(declare-fun b!2142376 () Bool)

(declare-fun b_free!63035 () Bool)

(declare-fun b_next!63739 () Bool)

(assert (=> b!2142376 (= b_free!63035 (not b_next!63739))))

(declare-fun tp!663072 () Bool)

(declare-fun b_and!172615 () Bool)

(assert (=> b!2142376 (= tp!663072 b_and!172615)))

(declare-fun b!2142377 () Bool)

(declare-fun b_free!63037 () Bool)

(declare-fun b_next!63741 () Bool)

(assert (=> b!2142377 (= b_free!63037 (not b_next!63741))))

(declare-fun tp!663079 () Bool)

(declare-fun b_and!172617 () Bool)

(assert (=> b!2142377 (= tp!663079 b_and!172617)))

(declare-fun b!2142392 () Bool)

(declare-fun b_free!63039 () Bool)

(declare-fun b_next!63743 () Bool)

(assert (=> b!2142392 (= b_free!63039 (not b_next!63743))))

(declare-fun tp!663087 () Bool)

(declare-fun b_and!172619 () Bool)

(assert (=> b!2142392 (= tp!663087 b_and!172619)))

(declare-fun b!2142366 () Bool)

(assert (=> b!2142366 true))

(declare-fun bs!445262 () Bool)

(declare-fun b!2142380 () Bool)

(assert (= bs!445262 (and b!2142380 b!2142366)))

(declare-fun lambda!80225 () Int)

(declare-fun lambda!80224 () Int)

(assert (=> bs!445262 (not (= lambda!80225 lambda!80224))))

(assert (=> b!2142380 true))

(declare-fun b!2142355 () Bool)

(declare-fun e!1368595 () Bool)

(declare-fun e!1368599 () Bool)

(assert (=> b!2142355 (= e!1368595 e!1368599)))

(declare-fun b!2142356 () Bool)

(declare-fun e!1368591 () Bool)

(declare-fun e!1368603 () Bool)

(assert (=> b!2142356 (= e!1368591 e!1368603)))

(declare-fun b!2142358 () Bool)

(declare-fun res!924797 () Bool)

(declare-fun e!1368594 () Bool)

(assert (=> b!2142358 (=> (not res!924797) (not e!1368594))))

(declare-fun e!1368592 () Bool)

(assert (=> b!2142358 (= res!924797 e!1368592)))

(declare-fun res!924796 () Bool)

(assert (=> b!2142358 (=> res!924796 e!1368592)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!11708 0))(
  ( (C!11709 (val!6840 Int)) )
))
(declare-datatypes ((Regex!5781 0))(
  ( (ElementMatch!5781 (c!340631 C!11708)) (Concat!10083 (regOne!12074 Regex!5781) (regTwo!12074 Regex!5781)) (EmptyExpr!5781) (Star!5781 (reg!6110 Regex!5781)) (EmptyLang!5781) (Union!5781 (regOne!12075 Regex!5781) (regTwo!12075 Regex!5781)) )
))
(declare-datatypes ((List!24440 0))(
  ( (Nil!24356) (Cons!24356 (h!29757 Regex!5781) (t!196970 List!24440)) )
))
(declare-datatypes ((Context!2702 0))(
  ( (Context!2703 (exprs!1851 List!24440)) )
))
(declare-fun z!3839 () (InoxSet Context!2702))

(declare-fun nullableZipper!142 ((InoxSet Context!2702)) Bool)

(assert (=> b!2142358 (= res!924796 (not (nullableZipper!142 z!3839)))))

(declare-fun tp!663083 () Bool)

(declare-fun e!1368582 () Bool)

(declare-fun setNonEmpty!16499 () Bool)

(declare-fun setElem!16500 () Context!2702)

(declare-fun setRes!16499 () Bool)

(declare-fun inv!32059 (Context!2702) Bool)

(assert (=> setNonEmpty!16499 (= setRes!16499 (and tp!663083 (inv!32059 setElem!16500) e!1368582))))

(declare-fun setRest!16499 () (InoxSet Context!2702))

(assert (=> setNonEmpty!16499 (= z!3839 ((_ map or) (store ((as const (Array Context!2702 Bool)) false) setElem!16500 true) setRest!16499))))

(declare-fun b!2142359 () Bool)

(declare-fun e!1368593 () Bool)

(declare-datatypes ((List!24441 0))(
  ( (Nil!24357) (Cons!24357 (h!29758 C!11708) (t!196971 List!24441)) )
))
(declare-datatypes ((IArray!15841 0))(
  ( (IArray!15842 (innerList!7978 List!24441)) )
))
(declare-datatypes ((Conc!7918 0))(
  ( (Node!7918 (left!18729 Conc!7918) (right!19059 Conc!7918) (csize!16066 Int) (cheight!8129 Int)) (Leaf!11576 (xs!10860 IArray!15841) (csize!16067 Int)) (Empty!7918) )
))
(declare-datatypes ((BalanceConc!15598 0))(
  ( (BalanceConc!15599 (c!340632 Conc!7918)) )
))
(declare-fun totalInput!851 () BalanceConc!15598)

(declare-fun tp!663066 () Bool)

(declare-fun inv!32060 (Conc!7918) Bool)

(assert (=> b!2142359 (= e!1368593 (and (inv!32060 (c!340632 totalInput!851)) tp!663066))))

(declare-fun b!2142360 () Bool)

(declare-fun e!1368610 () Bool)

(declare-fun tp!663085 () Bool)

(declare-fun mapRes!13200 () Bool)

(assert (=> b!2142360 (= e!1368610 (and tp!663085 mapRes!13200))))

(declare-fun condMapEmpty!13199 () Bool)

(declare-datatypes ((tuple3!3440 0))(
  ( (tuple3!3441 (_1!14286 Regex!5781) (_2!14286 Context!2702) (_3!2190 C!11708)) )
))
(declare-datatypes ((tuple2!24192 0))(
  ( (tuple2!24193 (_1!14287 tuple3!3440) (_2!14287 (InoxSet Context!2702))) )
))
(declare-datatypes ((List!24442 0))(
  ( (Nil!24358) (Cons!24358 (h!29759 tuple2!24192) (t!196972 List!24442)) )
))
(declare-datatypes ((Hashable!2682 0))(
  ( (HashableExt!2681 (__x!16480 Int)) )
))
(declare-datatypes ((array!9345 0))(
  ( (array!9346 (arr!4170 (Array (_ BitVec 32) (_ BitVec 64))) (size!19061 (_ BitVec 32))) )
))
(declare-datatypes ((array!9347 0))(
  ( (array!9348 (arr!4171 (Array (_ BitVec 32) List!24442)) (size!19062 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5536 0))(
  ( (LongMapFixedSize!5537 (defaultEntry!3133 Int) (mask!6974 (_ BitVec 32)) (extraKeys!3016 (_ BitVec 32)) (zeroValue!3026 List!24442) (minValue!3026 List!24442) (_size!5587 (_ BitVec 32)) (_keys!3065 array!9345) (_values!3048 array!9347) (_vacant!2829 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10897 0))(
  ( (Cell!10898 (v!28940 LongMapFixedSize!5536)) )
))
(declare-datatypes ((MutLongMap!2768 0))(
  ( (LongMap!2768 (underlying!5731 Cell!10897)) (MutLongMapExt!2767 (__x!16481 Int)) )
))
(declare-datatypes ((Cell!10899 0))(
  ( (Cell!10900 (v!28941 MutLongMap!2768)) )
))
(declare-datatypes ((MutableMap!2682 0))(
  ( (MutableMapExt!2681 (__x!16482 Int)) (HashMap!2682 (underlying!5732 Cell!10899) (hashF!4605 Hashable!2682) (_size!5588 (_ BitVec 32)) (defaultValue!2844 Int)) )
))
(declare-datatypes ((CacheDown!1836 0))(
  ( (CacheDown!1837 (cache!3063 MutableMap!2682)) )
))
(declare-fun cacheDown!1098 () CacheDown!1836)

(declare-fun mapDefault!13200 () List!24442)

(assert (=> b!2142360 (= condMapEmpty!13199 (= (arr!4171 (_values!3048 (v!28940 (underlying!5731 (v!28941 (underlying!5732 (cache!3063 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24442)) mapDefault!13200)))))

(declare-datatypes ((tuple3!3442 0))(
  ( (tuple3!3443 (_1!14288 (InoxSet Context!2702)) (_2!14288 Int) (_3!2191 Int)) )
))
(declare-datatypes ((tuple2!24194 0))(
  ( (tuple2!24195 (_1!14289 tuple3!3442) (_2!14289 Int)) )
))
(declare-datatypes ((List!24443 0))(
  ( (Nil!24359) (Cons!24359 (h!29760 tuple2!24194) (t!196973 List!24443)) )
))
(declare-datatypes ((array!9349 0))(
  ( (array!9350 (arr!4172 (Array (_ BitVec 32) List!24443)) (size!19063 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5538 0))(
  ( (LongMapFixedSize!5539 (defaultEntry!3134 Int) (mask!6975 (_ BitVec 32)) (extraKeys!3017 (_ BitVec 32)) (zeroValue!3027 List!24443) (minValue!3027 List!24443) (_size!5589 (_ BitVec 32)) (_keys!3066 array!9345) (_values!3049 array!9349) (_vacant!2830 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10901 0))(
  ( (Cell!10902 (v!28942 LongMapFixedSize!5538)) )
))
(declare-datatypes ((MutLongMap!2769 0))(
  ( (LongMap!2769 (underlying!5733 Cell!10901)) (MutLongMapExt!2768 (__x!16483 Int)) )
))
(declare-datatypes ((Cell!10903 0))(
  ( (Cell!10904 (v!28943 MutLongMap!2769)) )
))
(declare-datatypes ((Hashable!2683 0))(
  ( (HashableExt!2682 (__x!16484 Int)) )
))
(declare-datatypes ((MutableMap!2683 0))(
  ( (MutableMapExt!2682 (__x!16485 Int)) (HashMap!2683 (underlying!5734 Cell!10903) (hashF!4606 Hashable!2683) (_size!5590 (_ BitVec 32)) (defaultValue!2845 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!804 0))(
  ( (CacheFurthestNullable!805 (cache!3064 MutableMap!2683) (totalInput!3136 BalanceConc!15598)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!804)

(declare-fun e!1368597 () Bool)

(declare-fun b!2142361 () Bool)

(declare-fun e!1368596 () Bool)

(declare-fun e!1368589 () Bool)

(declare-fun inv!32061 (BalanceConc!15598) Bool)

(assert (=> b!2142361 (= e!1368597 (and e!1368596 (inv!32061 (totalInput!3136 cacheFurthestNullable!114)) e!1368589))))

(declare-fun setIsEmpty!16499 () Bool)

(declare-fun setRes!16500 () Bool)

(assert (=> setIsEmpty!16499 setRes!16500))

(declare-fun tp!663082 () Bool)

(declare-fun tp!663065 () Bool)

(declare-datatypes ((tuple2!24196 0))(
  ( (tuple2!24197 (_1!14290 Context!2702) (_2!14290 C!11708)) )
))
(declare-datatypes ((tuple2!24198 0))(
  ( (tuple2!24199 (_1!14291 tuple2!24196) (_2!14291 (InoxSet Context!2702))) )
))
(declare-datatypes ((List!24444 0))(
  ( (Nil!24360) (Cons!24360 (h!29761 tuple2!24198) (t!196974 List!24444)) )
))
(declare-datatypes ((array!9351 0))(
  ( (array!9352 (arr!4173 (Array (_ BitVec 32) List!24444)) (size!19064 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5540 0))(
  ( (LongMapFixedSize!5541 (defaultEntry!3135 Int) (mask!6976 (_ BitVec 32)) (extraKeys!3018 (_ BitVec 32)) (zeroValue!3028 List!24444) (minValue!3028 List!24444) (_size!5591 (_ BitVec 32)) (_keys!3067 array!9345) (_values!3050 array!9351) (_vacant!2831 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10905 0))(
  ( (Cell!10906 (v!28944 LongMapFixedSize!5540)) )
))
(declare-datatypes ((MutLongMap!2770 0))(
  ( (LongMap!2770 (underlying!5735 Cell!10905)) (MutLongMapExt!2769 (__x!16486 Int)) )
))
(declare-datatypes ((Cell!10907 0))(
  ( (Cell!10908 (v!28945 MutLongMap!2770)) )
))
(declare-datatypes ((Hashable!2684 0))(
  ( (HashableExt!2683 (__x!16487 Int)) )
))
(declare-datatypes ((MutableMap!2684 0))(
  ( (MutableMapExt!2683 (__x!16488 Int)) (HashMap!2684 (underlying!5736 Cell!10907) (hashF!4607 Hashable!2684) (_size!5592 (_ BitVec 32)) (defaultValue!2846 Int)) )
))
(declare-datatypes ((CacheUp!1848 0))(
  ( (CacheUp!1849 (cache!3065 MutableMap!2684)) )
))
(declare-fun cacheUp!979 () CacheUp!1848)

(declare-fun e!1368601 () Bool)

(declare-fun e!1368602 () Bool)

(declare-fun array_inv!2983 (array!9345) Bool)

(declare-fun array_inv!2984 (array!9351) Bool)

(assert (=> b!2142362 (= e!1368601 (and tp!663088 tp!663065 tp!663082 (array_inv!2983 (_keys!3067 (v!28944 (underlying!5735 (v!28945 (underlying!5736 (cache!3065 cacheUp!979))))))) (array_inv!2984 (_values!3050 (v!28944 (underlying!5735 (v!28945 (underlying!5736 (cache!3065 cacheUp!979))))))) e!1368602))))

(declare-fun b!2142363 () Bool)

(declare-fun tp!663086 () Bool)

(assert (=> b!2142363 (= e!1368589 (and (inv!32060 (c!340632 (totalInput!3136 cacheFurthestNullable!114))) tp!663086))))

(declare-fun mapIsEmpty!13198 () Bool)

(declare-fun mapRes!13199 () Bool)

(assert (=> mapIsEmpty!13198 mapRes!13199))

(declare-fun b!2142364 () Bool)

(declare-fun e!1368606 () Bool)

(declare-datatypes ((StackFrame!238 0))(
  ( (StackFrame!239 (z!5880 (InoxSet Context!2702)) (from!2748 Int) (lastNullablePos!435 Int) (res!924804 Int) (totalInput!3137 BalanceConc!15598)) )
))
(declare-datatypes ((List!24445 0))(
  ( (Nil!24361) (Cons!24361 (h!29762 StackFrame!238) (t!196975 List!24445)) )
))
(declare-fun stack!8 () List!24445)

(declare-fun forall!4977 (List!24445 Int) Bool)

(assert (=> b!2142364 (= e!1368606 (not (forall!4977 stack!8 lambda!80224)))))

(declare-fun b!2142365 () Bool)

(declare-fun e!1368578 () Bool)

(declare-fun e!1368586 () Bool)

(assert (=> b!2142365 (= e!1368578 e!1368586)))

(assert (=> b!2142366 (= e!1368594 e!1368606)))

(declare-fun res!924801 () Bool)

(assert (=> b!2142366 (=> (not res!924801) (not e!1368606))))

(assert (=> b!2142366 (= res!924801 (forall!4977 stack!8 lambda!80224))))

(declare-fun lt!798361 () Int)

(declare-fun lt!798358 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(declare-fun furthestNullablePosition!80 ((InoxSet Context!2702) Int BalanceConc!15598 Int Int) Int)

(assert (=> b!2142366 (= lt!798358 (furthestNullablePosition!80 z!3839 from!1043 totalInput!851 lt!798361 lastNullablePos!123))))

(declare-fun b!2142367 () Bool)

(declare-fun e!1368607 () Bool)

(declare-fun tp!663084 () Bool)

(assert (=> b!2142367 (= e!1368607 tp!663084)))

(declare-fun setElem!16499 () Context!2702)

(declare-fun tp!663075 () Bool)

(declare-fun setNonEmpty!16500 () Bool)

(assert (=> setNonEmpty!16500 (= setRes!16500 (and tp!663075 (inv!32059 setElem!16499) e!1368607))))

(declare-fun setRest!16500 () (InoxSet Context!2702))

(assert (=> setNonEmpty!16500 (= (z!5880 (h!29762 stack!8)) ((_ map or) (store ((as const (Array Context!2702 Bool)) false) setElem!16499 true) setRest!16500))))

(declare-fun b!2142368 () Bool)

(declare-fun e!1368585 () Bool)

(declare-fun tp!663068 () Bool)

(assert (=> b!2142368 (= e!1368585 (and (inv!32060 (c!340632 (totalInput!3137 (h!29762 stack!8)))) tp!663068))))

(declare-fun b!2142357 () Bool)

(declare-fun e!1368605 () Bool)

(assert (=> b!2142357 (= e!1368599 e!1368605)))

(declare-fun res!924803 () Bool)

(declare-fun e!1368587 () Bool)

(assert (=> start!208002 (=> (not res!924803) (not e!1368587))))

(declare-fun totalInputSize!296 () Int)

(assert (=> start!208002 (= res!924803 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!208002 e!1368587))

(declare-fun inv!32062 (CacheFurthestNullable!804) Bool)

(assert (=> start!208002 (and (inv!32062 cacheFurthestNullable!114) e!1368597)))

(assert (=> start!208002 true))

(declare-fun inv!32063 (CacheDown!1836) Bool)

(assert (=> start!208002 (and (inv!32063 cacheDown!1098) e!1368578)))

(declare-fun inv!32064 (CacheUp!1848) Bool)

(assert (=> start!208002 (and (inv!32064 cacheUp!979) e!1368591)))

(declare-fun condSetEmpty!16500 () Bool)

(assert (=> start!208002 (= condSetEmpty!16500 (= z!3839 ((as const (Array Context!2702 Bool)) false)))))

(assert (=> start!208002 setRes!16499))

(assert (=> start!208002 (and (inv!32061 totalInput!851) e!1368593)))

(declare-fun e!1368584 () Bool)

(assert (=> start!208002 e!1368584))

(declare-fun b!2142369 () Bool)

(declare-fun e!1368590 () Bool)

(assert (=> b!2142369 (= e!1368590 e!1368601)))

(declare-fun setIsEmpty!16500 () Bool)

(assert (=> setIsEmpty!16500 setRes!16499))

(declare-fun b!2142370 () Bool)

(assert (=> b!2142370 (= e!1368592 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2142371 () Bool)

(declare-fun e!1368581 () Bool)

(declare-fun e!1368583 () Bool)

(assert (=> b!2142371 (= e!1368581 e!1368583)))

(declare-fun tp!663071 () Bool)

(declare-fun tp!663069 () Bool)

(declare-fun e!1368600 () Bool)

(declare-fun e!1368604 () Bool)

(declare-fun array_inv!2985 (array!9349) Bool)

(assert (=> b!2142372 (= e!1368604 (and tp!663089 tp!663069 tp!663071 (array_inv!2983 (_keys!3066 (v!28942 (underlying!5733 (v!28943 (underlying!5734 (cache!3064 cacheFurthestNullable!114))))))) (array_inv!2985 (_values!3049 (v!28942 (underlying!5733 (v!28943 (underlying!5734 (cache!3064 cacheFurthestNullable!114))))))) e!1368600))))

(declare-fun b!2142373 () Bool)

(declare-fun res!924794 () Bool)

(assert (=> b!2142373 (=> (not res!924794) (not e!1368594))))

(declare-fun valid!2162 (CacheFurthestNullable!804) Bool)

(assert (=> b!2142373 (= res!924794 (valid!2162 cacheFurthestNullable!114))))

(declare-fun b!2142374 () Bool)

(declare-fun tp!663064 () Bool)

(declare-fun e!1368579 () Bool)

(declare-fun inv!32065 (StackFrame!238) Bool)

(assert (=> b!2142374 (= e!1368584 (and (inv!32065 (h!29762 stack!8)) e!1368579 tp!663064))))

(declare-fun b!2142375 () Bool)

(assert (=> b!2142375 (= e!1368583 e!1368604)))

(declare-fun mapIsEmpty!13199 () Bool)

(declare-fun mapRes!13198 () Bool)

(assert (=> mapIsEmpty!13199 mapRes!13198))

(declare-fun e!1368588 () Bool)

(assert (=> b!2142376 (= e!1368596 (and e!1368588 tp!663072))))

(declare-fun mapNonEmpty!13198 () Bool)

(declare-fun tp!663073 () Bool)

(declare-fun tp!663078 () Bool)

(assert (=> mapNonEmpty!13198 (= mapRes!13200 (and tp!663073 tp!663078))))

(declare-fun mapRest!13200 () (Array (_ BitVec 32) List!24442))

(declare-fun mapKey!13199 () (_ BitVec 32))

(declare-fun mapValue!13198 () List!24442)

(assert (=> mapNonEmpty!13198 (= (arr!4171 (_values!3048 (v!28940 (underlying!5731 (v!28941 (underlying!5732 (cache!3063 cacheDown!1098))))))) (store mapRest!13200 mapKey!13199 mapValue!13198))))

(declare-fun tp!663070 () Bool)

(declare-fun tp!663062 () Bool)

(declare-fun array_inv!2986 (array!9347) Bool)

(assert (=> b!2142377 (= e!1368605 (and tp!663079 tp!663062 tp!663070 (array_inv!2983 (_keys!3065 (v!28940 (underlying!5731 (v!28941 (underlying!5732 (cache!3063 cacheDown!1098))))))) (array_inv!2986 (_values!3048 (v!28940 (underlying!5731 (v!28941 (underlying!5732 (cache!3063 cacheDown!1098))))))) e!1368610))))

(declare-fun b!2142378 () Bool)

(declare-fun res!924800 () Bool)

(assert (=> b!2142378 (=> (not res!924800) (not e!1368594))))

(declare-fun valid!2163 (CacheUp!1848) Bool)

(assert (=> b!2142378 (= res!924800 (valid!2163 cacheUp!979))))

(declare-fun b!2142379 () Bool)

(declare-fun tp!663081 () Bool)

(assert (=> b!2142379 (= e!1368582 tp!663081)))

(declare-fun res!924795 () Bool)

(assert (=> b!2142380 (=> (not res!924795) (not e!1368606))))

(assert (=> b!2142380 (= res!924795 (forall!4977 stack!8 lambda!80225))))

(declare-fun b!2142381 () Bool)

(declare-fun e!1368609 () Bool)

(declare-fun e!1368580 () Bool)

(declare-fun lt!798359 () MutLongMap!2770)

(get-info :version)

(assert (=> b!2142381 (= e!1368609 (and e!1368580 ((_ is LongMap!2770) lt!798359)))))

(assert (=> b!2142381 (= lt!798359 (v!28945 (underlying!5736 (cache!3065 cacheUp!979))))))

(declare-fun b!2142382 () Bool)

(declare-fun tp!663080 () Bool)

(assert (=> b!2142382 (= e!1368600 (and tp!663080 mapRes!13198))))

(declare-fun condMapEmpty!13198 () Bool)

(declare-fun mapDefault!13198 () List!24443)

(assert (=> b!2142382 (= condMapEmpty!13198 (= (arr!4172 (_values!3049 (v!28942 (underlying!5733 (v!28943 (underlying!5734 (cache!3064 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24443)) mapDefault!13198)))))

(declare-fun b!2142383 () Bool)

(assert (=> b!2142383 (= e!1368579 (and setRes!16500 (inv!32061 (totalInput!3137 (h!29762 stack!8))) e!1368585))))

(declare-fun condSetEmpty!16499 () Bool)

(assert (=> b!2142383 (= condSetEmpty!16499 (= (z!5880 (h!29762 stack!8)) ((as const (Array Context!2702 Bool)) false)))))

(declare-fun b!2142384 () Bool)

(assert (=> b!2142384 (= e!1368580 e!1368590)))

(declare-fun b!2142385 () Bool)

(declare-fun res!924802 () Bool)

(assert (=> b!2142385 (=> (not res!924802) (not e!1368594))))

(declare-fun valid!2164 (CacheDown!1836) Bool)

(assert (=> b!2142385 (= res!924802 (valid!2164 cacheDown!1098))))

(assert (=> b!2142386 (= e!1368603 (and e!1368609 tp!663063))))

(declare-fun b!2142387 () Bool)

(declare-fun res!924799 () Bool)

(assert (=> b!2142387 (=> (not res!924799) (not e!1368594))))

(assert (=> b!2142387 (= res!924799 (= (totalInput!3136 cacheFurthestNullable!114) totalInput!851))))

(declare-fun mapIsEmpty!13200 () Bool)

(assert (=> mapIsEmpty!13200 mapRes!13200))

(declare-fun mapNonEmpty!13199 () Bool)

(declare-fun tp!663076 () Bool)

(declare-fun tp!663074 () Bool)

(assert (=> mapNonEmpty!13199 (= mapRes!13199 (and tp!663076 tp!663074))))

(declare-fun mapRest!13199 () (Array (_ BitVec 32) List!24444))

(declare-fun mapKey!13200 () (_ BitVec 32))

(declare-fun mapValue!13200 () List!24444)

(assert (=> mapNonEmpty!13199 (= (arr!4173 (_values!3050 (v!28944 (underlying!5735 (v!28945 (underlying!5736 (cache!3065 cacheUp!979))))))) (store mapRest!13199 mapKey!13200 mapValue!13200))))

(declare-fun b!2142388 () Bool)

(declare-fun lt!798357 () MutLongMap!2769)

(assert (=> b!2142388 (= e!1368588 (and e!1368581 ((_ is LongMap!2769) lt!798357)))))

(assert (=> b!2142388 (= lt!798357 (v!28943 (underlying!5734 (cache!3064 cacheFurthestNullable!114))))))

(declare-fun b!2142389 () Bool)

(assert (=> b!2142389 (= e!1368587 e!1368594)))

(declare-fun res!924798 () Bool)

(assert (=> b!2142389 (=> (not res!924798) (not e!1368594))))

(assert (=> b!2142389 (= res!924798 (and (= totalInputSize!296 lt!798361) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19065 (BalanceConc!15598) Int)

(assert (=> b!2142389 (= lt!798361 (size!19065 totalInput!851))))

(declare-fun b!2142390 () Bool)

(declare-fun e!1368598 () Bool)

(declare-fun lt!798360 () MutLongMap!2768)

(assert (=> b!2142390 (= e!1368598 (and e!1368595 ((_ is LongMap!2768) lt!798360)))))

(assert (=> b!2142390 (= lt!798360 (v!28941 (underlying!5732 (cache!3063 cacheDown!1098))))))

(declare-fun b!2142391 () Bool)

(declare-fun tp!663077 () Bool)

(assert (=> b!2142391 (= e!1368602 (and tp!663077 mapRes!13199))))

(declare-fun condMapEmpty!13200 () Bool)

(declare-fun mapDefault!13199 () List!24444)

(assert (=> b!2142391 (= condMapEmpty!13200 (= (arr!4173 (_values!3050 (v!28944 (underlying!5735 (v!28945 (underlying!5736 (cache!3065 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24444)) mapDefault!13199)))))

(declare-fun mapNonEmpty!13200 () Bool)

(declare-fun tp!663061 () Bool)

(declare-fun tp!663067 () Bool)

(assert (=> mapNonEmpty!13200 (= mapRes!13198 (and tp!663061 tp!663067))))

(declare-fun mapValue!13199 () List!24443)

(declare-fun mapKey!13198 () (_ BitVec 32))

(declare-fun mapRest!13198 () (Array (_ BitVec 32) List!24443))

(assert (=> mapNonEmpty!13200 (= (arr!4172 (_values!3049 (v!28942 (underlying!5733 (v!28943 (underlying!5734 (cache!3064 cacheFurthestNullable!114))))))) (store mapRest!13198 mapKey!13198 mapValue!13199))))

(assert (=> b!2142392 (= e!1368586 (and e!1368598 tp!663087))))

(assert (= (and start!208002 res!924803) b!2142389))

(assert (= (and b!2142389 res!924798) b!2142358))

(assert (= (and b!2142358 (not res!924796)) b!2142370))

(assert (= (and b!2142358 res!924797) b!2142378))

(assert (= (and b!2142378 res!924800) b!2142385))

(assert (= (and b!2142385 res!924802) b!2142373))

(assert (= (and b!2142373 res!924794) b!2142387))

(assert (= (and b!2142387 res!924799) b!2142366))

(assert (= (and b!2142366 res!924801) b!2142380))

(assert (= (and b!2142380 res!924795) b!2142364))

(assert (= (and b!2142382 condMapEmpty!13198) mapIsEmpty!13199))

(assert (= (and b!2142382 (not condMapEmpty!13198)) mapNonEmpty!13200))

(assert (= b!2142372 b!2142382))

(assert (= b!2142375 b!2142372))

(assert (= b!2142371 b!2142375))

(assert (= (and b!2142388 ((_ is LongMap!2769) (v!28943 (underlying!5734 (cache!3064 cacheFurthestNullable!114))))) b!2142371))

(assert (= b!2142376 b!2142388))

(assert (= (and b!2142361 ((_ is HashMap!2683) (cache!3064 cacheFurthestNullable!114))) b!2142376))

(assert (= b!2142361 b!2142363))

(assert (= start!208002 b!2142361))

(assert (= (and b!2142360 condMapEmpty!13199) mapIsEmpty!13200))

(assert (= (and b!2142360 (not condMapEmpty!13199)) mapNonEmpty!13198))

(assert (= b!2142377 b!2142360))

(assert (= b!2142357 b!2142377))

(assert (= b!2142355 b!2142357))

(assert (= (and b!2142390 ((_ is LongMap!2768) (v!28941 (underlying!5732 (cache!3063 cacheDown!1098))))) b!2142355))

(assert (= b!2142392 b!2142390))

(assert (= (and b!2142365 ((_ is HashMap!2682) (cache!3063 cacheDown!1098))) b!2142392))

(assert (= start!208002 b!2142365))

(assert (= (and b!2142391 condMapEmpty!13200) mapIsEmpty!13198))

(assert (= (and b!2142391 (not condMapEmpty!13200)) mapNonEmpty!13199))

(assert (= b!2142362 b!2142391))

(assert (= b!2142369 b!2142362))

(assert (= b!2142384 b!2142369))

(assert (= (and b!2142381 ((_ is LongMap!2770) (v!28945 (underlying!5736 (cache!3065 cacheUp!979))))) b!2142384))

(assert (= b!2142386 b!2142381))

(assert (= (and b!2142356 ((_ is HashMap!2684) (cache!3065 cacheUp!979))) b!2142386))

(assert (= start!208002 b!2142356))

(assert (= (and start!208002 condSetEmpty!16500) setIsEmpty!16500))

(assert (= (and start!208002 (not condSetEmpty!16500)) setNonEmpty!16499))

(assert (= setNonEmpty!16499 b!2142379))

(assert (= start!208002 b!2142359))

(assert (= (and b!2142383 condSetEmpty!16499) setIsEmpty!16499))

(assert (= (and b!2142383 (not condSetEmpty!16499)) setNonEmpty!16500))

(assert (= setNonEmpty!16500 b!2142367))

(assert (= b!2142383 b!2142368))

(assert (= b!2142374 b!2142383))

(assert (= (and start!208002 ((_ is Cons!24361) stack!8)) b!2142374))

(declare-fun m!2587687 () Bool)

(assert (=> b!2142359 m!2587687))

(declare-fun m!2587689 () Bool)

(assert (=> b!2142385 m!2587689))

(declare-fun m!2587691 () Bool)

(assert (=> b!2142377 m!2587691))

(declare-fun m!2587693 () Bool)

(assert (=> b!2142377 m!2587693))

(declare-fun m!2587695 () Bool)

(assert (=> b!2142372 m!2587695))

(declare-fun m!2587697 () Bool)

(assert (=> b!2142372 m!2587697))

(declare-fun m!2587699 () Bool)

(assert (=> b!2142361 m!2587699))

(declare-fun m!2587701 () Bool)

(assert (=> b!2142383 m!2587701))

(declare-fun m!2587703 () Bool)

(assert (=> mapNonEmpty!13200 m!2587703))

(declare-fun m!2587705 () Bool)

(assert (=> setNonEmpty!16499 m!2587705))

(declare-fun m!2587707 () Bool)

(assert (=> mapNonEmpty!13198 m!2587707))

(declare-fun m!2587709 () Bool)

(assert (=> b!2142374 m!2587709))

(declare-fun m!2587711 () Bool)

(assert (=> mapNonEmpty!13199 m!2587711))

(declare-fun m!2587713 () Bool)

(assert (=> setNonEmpty!16500 m!2587713))

(declare-fun m!2587715 () Bool)

(assert (=> b!2142363 m!2587715))

(declare-fun m!2587717 () Bool)

(assert (=> b!2142373 m!2587717))

(declare-fun m!2587719 () Bool)

(assert (=> b!2142366 m!2587719))

(declare-fun m!2587721 () Bool)

(assert (=> b!2142366 m!2587721))

(declare-fun m!2587723 () Bool)

(assert (=> b!2142368 m!2587723))

(declare-fun m!2587725 () Bool)

(assert (=> start!208002 m!2587725))

(declare-fun m!2587727 () Bool)

(assert (=> start!208002 m!2587727))

(declare-fun m!2587729 () Bool)

(assert (=> start!208002 m!2587729))

(declare-fun m!2587731 () Bool)

(assert (=> start!208002 m!2587731))

(declare-fun m!2587733 () Bool)

(assert (=> b!2142378 m!2587733))

(declare-fun m!2587735 () Bool)

(assert (=> b!2142389 m!2587735))

(declare-fun m!2587737 () Bool)

(assert (=> b!2142362 m!2587737))

(declare-fun m!2587739 () Bool)

(assert (=> b!2142362 m!2587739))

(assert (=> b!2142364 m!2587719))

(declare-fun m!2587741 () Bool)

(assert (=> b!2142358 m!2587741))

(declare-fun m!2587743 () Bool)

(assert (=> b!2142380 m!2587743))

(check-sat b_and!172617 (not b!2142379) b_and!172609 b_and!172611 (not b!2142368) (not setNonEmpty!16499) (not b!2142383) (not start!208002) (not b!2142366) (not b_next!63733) (not b!2142374) (not b!2142372) (not b_next!63743) (not b_next!63741) (not b!2142389) (not b!2142378) (not b!2142385) (not b!2142364) b_and!172615 (not b!2142358) (not b!2142361) (not b!2142391) (not b_next!63739) b_and!172613 (not b_next!63737) (not b!2142359) (not b!2142360) (not b!2142380) (not b!2142362) b_and!172619 (not b!2142367) (not mapNonEmpty!13200) (not b!2142382) (not b_next!63735) (not b!2142373) (not b!2142363) (not b!2142377) (not mapNonEmpty!13199) (not mapNonEmpty!13198) (not setNonEmpty!16500))
(check-sat b_and!172617 b_and!172615 (not b_next!63737) b_and!172609 b_and!172611 b_and!172619 (not b_next!63733) (not b_next!63735) (not b_next!63743) (not b_next!63741) (not b_next!63739) b_and!172613)
