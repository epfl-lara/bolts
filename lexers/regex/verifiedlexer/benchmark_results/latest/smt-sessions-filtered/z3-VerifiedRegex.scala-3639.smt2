; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207596 () Bool)

(assert start!207596)

(declare-fun b!2135501 () Bool)

(declare-fun b_free!62597 () Bool)

(declare-fun b_next!63301 () Bool)

(assert (=> b!2135501 (= b_free!62597 (not b_next!63301))))

(declare-fun tp!658271 () Bool)

(declare-fun b_and!172177 () Bool)

(assert (=> b!2135501 (= tp!658271 b_and!172177)))

(declare-fun b!2135490 () Bool)

(declare-fun b_free!62599 () Bool)

(declare-fun b_next!63303 () Bool)

(assert (=> b!2135490 (= b_free!62599 (not b_next!63303))))

(declare-fun tp!658288 () Bool)

(declare-fun b_and!172179 () Bool)

(assert (=> b!2135490 (= tp!658288 b_and!172179)))

(declare-fun b!2135524 () Bool)

(declare-fun b_free!62601 () Bool)

(declare-fun b_next!63305 () Bool)

(assert (=> b!2135524 (= b_free!62601 (not b_next!63305))))

(declare-fun tp!658286 () Bool)

(declare-fun b_and!172181 () Bool)

(assert (=> b!2135524 (= tp!658286 b_and!172181)))

(declare-fun b!2135493 () Bool)

(declare-fun b_free!62603 () Bool)

(declare-fun b_next!63307 () Bool)

(assert (=> b!2135493 (= b_free!62603 (not b_next!63307))))

(declare-fun tp!658277 () Bool)

(declare-fun b_and!172183 () Bool)

(assert (=> b!2135493 (= tp!658277 b_and!172183)))

(declare-fun b!2135509 () Bool)

(declare-fun b_free!62605 () Bool)

(declare-fun b_next!63309 () Bool)

(assert (=> b!2135509 (= b_free!62605 (not b_next!63309))))

(declare-fun tp!658287 () Bool)

(declare-fun b_and!172185 () Bool)

(assert (=> b!2135509 (= tp!658287 b_and!172185)))

(declare-fun b!2135523 () Bool)

(declare-fun b_free!62607 () Bool)

(declare-fun b_next!63311 () Bool)

(assert (=> b!2135523 (= b_free!62607 (not b_next!63311))))

(declare-fun tp!658291 () Bool)

(declare-fun b_and!172187 () Bool)

(assert (=> b!2135523 (= tp!658291 b_and!172187)))

(declare-fun b!2135511 () Bool)

(assert (=> b!2135511 true))

(declare-fun bs!444318 () Bool)

(declare-fun b!2135498 () Bool)

(assert (= bs!444318 (and b!2135498 b!2135511)))

(declare-fun lambda!79488 () Int)

(declare-fun lambda!79487 () Int)

(assert (=> bs!444318 (not (= lambda!79488 lambda!79487))))

(assert (=> b!2135498 true))

(declare-fun bs!444319 () Bool)

(declare-fun b!2135522 () Bool)

(assert (= bs!444319 (and b!2135522 b!2135511)))

(declare-fun lt!797158 () Int)

(declare-fun lt!797160 () Int)

(declare-fun lambda!79489 () Int)

(assert (=> bs!444319 (= (= lt!797160 lt!797158) (= lambda!79489 lambda!79487))))

(declare-fun bs!444320 () Bool)

(assert (= bs!444320 (and b!2135522 b!2135498)))

(assert (=> bs!444320 (not (= lambda!79489 lambda!79488))))

(assert (=> b!2135522 true))

(declare-fun b!2135480 () Bool)

(declare-fun e!1363020 () Bool)

(declare-fun e!1363003 () Bool)

(assert (=> b!2135480 (= e!1363020 e!1363003)))

(declare-fun res!922658 () Bool)

(assert (=> b!2135480 (=> (not res!922658) (not e!1363003))))

(declare-fun totalInputSize!296 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!797163 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2135480 (= res!922658 (and (= totalInputSize!296 lt!797163) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-datatypes ((C!11636 0))(
  ( (C!11637 (val!6804 Int)) )
))
(declare-datatypes ((List!24237 0))(
  ( (Nil!24153) (Cons!24153 (h!29554 C!11636) (t!196765 List!24237)) )
))
(declare-datatypes ((IArray!15771 0))(
  ( (IArray!15772 (innerList!7943 List!24237)) )
))
(declare-datatypes ((Conc!7883 0))(
  ( (Node!7883 (left!18604 Conc!7883) (right!18934 Conc!7883) (csize!15996 Int) (cheight!8094 Int)) (Leaf!11523 (xs!10825 IArray!15771) (csize!15997 Int)) (Empty!7883) )
))
(declare-datatypes ((BalanceConc!15528 0))(
  ( (BalanceConc!15529 (c!340329 Conc!7883)) )
))
(declare-fun totalInput!851 () BalanceConc!15528)

(declare-fun size!18892 (BalanceConc!15528) Int)

(assert (=> b!2135480 (= lt!797163 (size!18892 totalInput!851))))

(declare-fun b!2135481 () Bool)

(declare-fun e!1363023 () Int)

(assert (=> b!2135481 (= e!1363023 from!1043)))

(declare-fun b!2135482 () Bool)

(declare-fun e!1362997 () Bool)

(declare-fun e!1362996 () Bool)

(assert (=> b!2135482 (= e!1362997 e!1362996)))

(declare-fun b!2135483 () Bool)

(declare-fun e!1363006 () Bool)

(declare-fun tp!658280 () Bool)

(declare-fun mapRes!12808 () Bool)

(assert (=> b!2135483 (= e!1363006 (and tp!658280 mapRes!12808))))

(declare-fun condMapEmpty!12809 () Bool)

(declare-datatypes ((Regex!5745 0))(
  ( (ElementMatch!5745 (c!340330 C!11636)) (Concat!10047 (regOne!12002 Regex!5745) (regTwo!12002 Regex!5745)) (EmptyExpr!5745) (Star!5745 (reg!6074 Regex!5745)) (EmptyLang!5745) (Union!5745 (regOne!12003 Regex!5745) (regTwo!12003 Regex!5745)) )
))
(declare-datatypes ((List!24238 0))(
  ( (Nil!24154) (Cons!24154 (h!29555 Regex!5745) (t!196766 List!24238)) )
))
(declare-datatypes ((Context!2630 0))(
  ( (Context!2631 (exprs!1815 List!24238)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3270 0))(
  ( (tuple3!3271 (_1!14075 (InoxSet Context!2630)) (_2!14075 Int) (_3!2105 Int)) )
))
(declare-datatypes ((tuple2!23940 0))(
  ( (tuple2!23941 (_1!14076 tuple3!3270) (_2!14076 Int)) )
))
(declare-datatypes ((List!24239 0))(
  ( (Nil!24155) (Cons!24155 (h!29556 tuple2!23940) (t!196767 List!24239)) )
))
(declare-datatypes ((array!9053 0))(
  ( (array!9054 (arr!4038 (Array (_ BitVec 32) (_ BitVec 64))) (size!18893 (_ BitVec 32))) )
))
(declare-datatypes ((array!9055 0))(
  ( (array!9056 (arr!4039 (Array (_ BitVec 32) List!24239)) (size!18894 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5344 0))(
  ( (LongMapFixedSize!5345 (defaultEntry!3037 Int) (mask!6860 (_ BitVec 32)) (extraKeys!2920 (_ BitVec 32)) (zeroValue!2930 List!24239) (minValue!2930 List!24239) (_size!5395 (_ BitVec 32)) (_keys!2969 array!9053) (_values!2952 array!9055) (_vacant!2733 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10513 0))(
  ( (Cell!10514 (v!28720 LongMapFixedSize!5344)) )
))
(declare-datatypes ((MutLongMap!2672 0))(
  ( (LongMap!2672 (underlying!5539 Cell!10513)) (MutLongMapExt!2671 (__x!16192 Int)) )
))
(declare-datatypes ((Cell!10515 0))(
  ( (Cell!10516 (v!28721 MutLongMap!2672)) )
))
(declare-datatypes ((Hashable!2586 0))(
  ( (HashableExt!2585 (__x!16193 Int)) )
))
(declare-datatypes ((MutableMap!2586 0))(
  ( (MutableMapExt!2585 (__x!16194 Int)) (HashMap!2586 (underlying!5540 Cell!10515) (hashF!4509 Hashable!2586) (_size!5396 (_ BitVec 32)) (defaultValue!2748 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!736 0))(
  ( (CacheFurthestNullable!737 (cache!2967 MutableMap!2586) (totalInput!3064 BalanceConc!15528)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!736)

(declare-fun mapDefault!12810 () List!24239)

(assert (=> b!2135483 (= condMapEmpty!12809 (= (arr!4039 (_values!2952 (v!28720 (underlying!5539 (v!28721 (underlying!5540 (cache!2967 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24239)) mapDefault!12810)))))

(declare-fun b!2135484 () Bool)

(declare-fun e!1363007 () Bool)

(declare-datatypes ((StackFrame!178 0))(
  ( (StackFrame!179 (z!5817 (InoxSet Context!2630)) (from!2703 Int) (lastNullablePos!390 Int) (res!922662 Int) (totalInput!3065 BalanceConc!15528)) )
))
(declare-datatypes ((List!24240 0))(
  ( (Nil!24156) (Cons!24156 (h!29557 StackFrame!178) (t!196768 List!24240)) )
))
(declare-fun stack!8 () List!24240)

(declare-fun tp!658268 () Bool)

(declare-fun inv!31816 (Conc!7883) Bool)

(assert (=> b!2135484 (= e!1363007 (and (inv!31816 (c!340329 (totalInput!3065 (h!29557 stack!8)))) tp!658268))))

(declare-fun b!2135485 () Bool)

(declare-fun e!1363030 () Bool)

(declare-fun e!1363032 () Bool)

(assert (=> b!2135485 (= e!1363030 e!1363032)))

(declare-fun b!2135486 () Bool)

(declare-fun e!1363014 () Bool)

(declare-fun tp!658290 () Bool)

(assert (=> b!2135486 (= e!1363014 tp!658290)))

(declare-fun b!2135487 () Bool)

(declare-fun e!1363019 () Bool)

(assert (=> b!2135487 (= e!1363019 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2135488 () Bool)

(declare-fun e!1363017 () Bool)

(assert (=> b!2135488 (= e!1362996 e!1363017)))

(declare-fun b!2135489 () Bool)

(declare-fun e!1363013 () Bool)

(declare-fun e!1362995 () Bool)

(assert (=> b!2135489 (= e!1363013 e!1362995)))

(declare-fun e!1362998 () Bool)

(declare-fun e!1363028 () Bool)

(assert (=> b!2135490 (= e!1362998 (and e!1363028 tp!658288))))

(declare-fun b!2135491 () Bool)

(declare-fun e!1363009 () Bool)

(declare-fun tp!658267 () Bool)

(assert (=> b!2135491 (= e!1363009 (and (inv!31816 (c!340329 (totalInput!3064 cacheFurthestNullable!114))) tp!658267))))

(declare-fun b!2135492 () Bool)

(declare-fun res!922649 () Bool)

(declare-fun e!1363027 () Bool)

(assert (=> b!2135492 (=> res!922649 e!1363027)))

(declare-fun lt!797164 () List!24240)

(declare-fun forall!4932 (List!24240 Int) Bool)

(assert (=> b!2135492 (= res!922649 (not (forall!4932 lt!797164 lambda!79489)))))

(declare-fun e!1363000 () Bool)

(declare-fun e!1363021 () Bool)

(assert (=> b!2135493 (= e!1363000 (and e!1363021 tp!658277))))

(declare-fun b!2135494 () Bool)

(declare-fun e!1363022 () Bool)

(assert (=> b!2135494 (= e!1362995 e!1363022)))

(declare-fun b!2135495 () Bool)

(declare-fun e!1363002 () Bool)

(assert (=> b!2135495 (= e!1363002 e!1363000)))

(declare-fun b!2135496 () Bool)

(declare-fun e!1363024 () Bool)

(declare-datatypes ((tuple2!23942 0))(
  ( (tuple2!23943 (_1!14077 Context!2630) (_2!14077 C!11636)) )
))
(declare-datatypes ((tuple2!23944 0))(
  ( (tuple2!23945 (_1!14078 tuple2!23942) (_2!14078 (InoxSet Context!2630))) )
))
(declare-datatypes ((List!24241 0))(
  ( (Nil!24157) (Cons!24157 (h!29558 tuple2!23944) (t!196769 List!24241)) )
))
(declare-datatypes ((array!9057 0))(
  ( (array!9058 (arr!4040 (Array (_ BitVec 32) List!24241)) (size!18895 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5346 0))(
  ( (LongMapFixedSize!5347 (defaultEntry!3038 Int) (mask!6861 (_ BitVec 32)) (extraKeys!2921 (_ BitVec 32)) (zeroValue!2931 List!24241) (minValue!2931 List!24241) (_size!5397 (_ BitVec 32)) (_keys!2970 array!9053) (_values!2953 array!9057) (_vacant!2734 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10517 0))(
  ( (Cell!10518 (v!28722 LongMapFixedSize!5346)) )
))
(declare-datatypes ((MutLongMap!2673 0))(
  ( (LongMap!2673 (underlying!5541 Cell!10517)) (MutLongMapExt!2672 (__x!16195 Int)) )
))
(declare-fun lt!797159 () MutLongMap!2673)

(get-info :version)

(assert (=> b!2135496 (= e!1363024 (and e!1362997 ((_ is LongMap!2673) lt!797159)))))

(declare-datatypes ((Cell!10519 0))(
  ( (Cell!10520 (v!28723 MutLongMap!2673)) )
))
(declare-datatypes ((Hashable!2587 0))(
  ( (HashableExt!2586 (__x!16196 Int)) )
))
(declare-datatypes ((MutableMap!2587 0))(
  ( (MutableMapExt!2586 (__x!16197 Int)) (HashMap!2587 (underlying!5542 Cell!10519) (hashF!4510 Hashable!2587) (_size!5398 (_ BitVec 32)) (defaultValue!2749 Int)) )
))
(declare-datatypes ((CacheUp!1790 0))(
  ( (CacheUp!1791 (cache!2968 MutableMap!2587)) )
))
(declare-fun cacheUp!979 () CacheUp!1790)

(assert (=> b!2135496 (= lt!797159 (v!28723 (underlying!5542 (cache!2968 cacheUp!979))))))

(declare-fun b!2135497 () Bool)

(declare-fun e!1363012 () Bool)

(declare-fun e!1363008 () Bool)

(assert (=> b!2135497 (= e!1363012 (not e!1363008))))

(declare-fun res!922659 () Bool)

(assert (=> b!2135497 (=> res!922659 e!1363008)))

(declare-fun z!3839 () (InoxSet Context!2630))

(declare-datatypes ((Option!4912 0))(
  ( (None!4911) (Some!4911 (v!28724 Int)) )
))
(declare-fun get!7394 (CacheFurthestNullable!736 (InoxSet Context!2630) Int Int) Option!4912)

(assert (=> b!2135497 (= res!922659 ((_ is Some!4911) (get!7394 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2135497 (forall!4932 stack!8 lambda!79487)))

(declare-fun res!922650 () Bool)

(assert (=> b!2135498 (=> (not res!922650) (not e!1363012))))

(assert (=> b!2135498 (= res!922650 (forall!4932 stack!8 lambda!79488))))

(declare-fun b!2135499 () Bool)

(declare-fun e!1363004 () Bool)

(assert (=> b!2135499 (= e!1363004 e!1363030)))

(declare-fun setIsEmpty!15936 () Bool)

(declare-fun setRes!15936 () Bool)

(assert (=> setIsEmpty!15936 setRes!15936))

(declare-fun mapNonEmpty!12808 () Bool)

(declare-fun mapRes!12809 () Bool)

(declare-fun tp!658266 () Bool)

(declare-fun tp!658292 () Bool)

(assert (=> mapNonEmpty!12808 (= mapRes!12809 (and tp!658266 tp!658292))))

(declare-fun mapKey!12810 () (_ BitVec 32))

(declare-datatypes ((tuple3!3272 0))(
  ( (tuple3!3273 (_1!14079 Regex!5745) (_2!14079 Context!2630) (_3!2106 C!11636)) )
))
(declare-datatypes ((tuple2!23946 0))(
  ( (tuple2!23947 (_1!14080 tuple3!3272) (_2!14080 (InoxSet Context!2630))) )
))
(declare-datatypes ((List!24242 0))(
  ( (Nil!24158) (Cons!24158 (h!29559 tuple2!23946) (t!196770 List!24242)) )
))
(declare-datatypes ((Hashable!2588 0))(
  ( (HashableExt!2587 (__x!16198 Int)) )
))
(declare-datatypes ((array!9059 0))(
  ( (array!9060 (arr!4041 (Array (_ BitVec 32) List!24242)) (size!18896 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5348 0))(
  ( (LongMapFixedSize!5349 (defaultEntry!3039 Int) (mask!6862 (_ BitVec 32)) (extraKeys!2922 (_ BitVec 32)) (zeroValue!2932 List!24242) (minValue!2932 List!24242) (_size!5399 (_ BitVec 32)) (_keys!2971 array!9053) (_values!2954 array!9059) (_vacant!2735 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10521 0))(
  ( (Cell!10522 (v!28725 LongMapFixedSize!5348)) )
))
(declare-datatypes ((MutLongMap!2674 0))(
  ( (LongMap!2674 (underlying!5543 Cell!10521)) (MutLongMapExt!2673 (__x!16199 Int)) )
))
(declare-datatypes ((Cell!10523 0))(
  ( (Cell!10524 (v!28726 MutLongMap!2674)) )
))
(declare-datatypes ((MutableMap!2588 0))(
  ( (MutableMapExt!2587 (__x!16200 Int)) (HashMap!2588 (underlying!5544 Cell!10523) (hashF!4511 Hashable!2588) (_size!5400 (_ BitVec 32)) (defaultValue!2750 Int)) )
))
(declare-datatypes ((CacheDown!1770 0))(
  ( (CacheDown!1771 (cache!2969 MutableMap!2588)) )
))
(declare-fun cacheDown!1098 () CacheDown!1770)

(declare-fun mapValue!12810 () List!24242)

(declare-fun mapRest!12809 () (Array (_ BitVec 32) List!24242))

(assert (=> mapNonEmpty!12808 (= (arr!4041 (_values!2954 (v!28725 (underlying!5543 (v!28726 (underlying!5544 (cache!2969 cacheDown!1098))))))) (store mapRest!12809 mapKey!12810 mapValue!12810))))

(declare-fun b!2135500 () Bool)

(declare-fun res!922657 () Bool)

(assert (=> b!2135500 (=> (not res!922657) (not e!1363003))))

(assert (=> b!2135500 (= res!922657 e!1363019)))

(declare-fun res!922648 () Bool)

(assert (=> b!2135500 (=> res!922648 e!1363019)))

(declare-fun nullableZipper!120 ((InoxSet Context!2630)) Bool)

(assert (=> b!2135500 (= res!922648 (not (nullableZipper!120 z!3839)))))

(declare-fun mapIsEmpty!12808 () Bool)

(declare-fun mapRes!12810 () Bool)

(assert (=> mapIsEmpty!12808 mapRes!12810))

(declare-fun mapIsEmpty!12809 () Bool)

(assert (=> mapIsEmpty!12809 mapRes!12808))

(declare-fun tp!658285 () Bool)

(declare-fun tp!658283 () Bool)

(declare-fun array_inv!2889 (array!9053) Bool)

(declare-fun array_inv!2890 (array!9055) Bool)

(assert (=> b!2135501 (= e!1363022 (and tp!658271 tp!658285 tp!658283 (array_inv!2889 (_keys!2969 (v!28720 (underlying!5539 (v!28721 (underlying!5540 (cache!2967 cacheFurthestNullable!114))))))) (array_inv!2890 (_values!2952 (v!28720 (underlying!5539 (v!28721 (underlying!5540 (cache!2967 cacheFurthestNullable!114))))))) e!1363006))))

(declare-fun b!2135502 () Bool)

(declare-fun res!922653 () Bool)

(assert (=> b!2135502 (=> (not res!922653) (not e!1363003))))

(declare-fun valid!2092 (CacheDown!1770) Bool)

(assert (=> b!2135502 (= res!922653 (valid!2092 cacheDown!1098))))

(declare-fun e!1363016 () Bool)

(declare-fun b!2135503 () Bool)

(declare-fun inv!31817 (BalanceConc!15528) Bool)

(assert (=> b!2135503 (= e!1363016 (and e!1362998 (inv!31817 (totalInput!3064 cacheFurthestNullable!114)) e!1363009))))

(declare-fun b!2135504 () Bool)

(declare-fun res!922656 () Bool)

(assert (=> b!2135504 (=> (not res!922656) (not e!1363003))))

(declare-fun valid!2093 (CacheUp!1790) Bool)

(assert (=> b!2135504 (= res!922656 (valid!2093 cacheUp!979))))

(declare-fun mapNonEmpty!12809 () Bool)

(declare-fun tp!658278 () Bool)

(declare-fun tp!658279 () Bool)

(assert (=> mapNonEmpty!12809 (= mapRes!12810 (and tp!658278 tp!658279))))

(declare-fun mapValue!12808 () List!24241)

(declare-fun mapKey!12808 () (_ BitVec 32))

(declare-fun mapRest!12808 () (Array (_ BitVec 32) List!24241))

(assert (=> mapNonEmpty!12809 (= (arr!4040 (_values!2953 (v!28722 (underlying!5541 (v!28723 (underlying!5542 (cache!2968 cacheUp!979))))))) (store mapRest!12808 mapKey!12808 mapValue!12808))))

(declare-fun setIsEmpty!15937 () Bool)

(declare-fun setRes!15937 () Bool)

(assert (=> setIsEmpty!15937 setRes!15937))

(declare-fun res!922660 () Bool)

(assert (=> start!207596 (=> (not res!922660) (not e!1363020))))

(assert (=> start!207596 (= res!922660 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207596 e!1363020))

(declare-fun inv!31818 (CacheFurthestNullable!736) Bool)

(assert (=> start!207596 (and (inv!31818 cacheFurthestNullable!114) e!1363016)))

(assert (=> start!207596 true))

(declare-fun inv!31819 (CacheDown!1770) Bool)

(assert (=> start!207596 (and (inv!31819 cacheDown!1098) e!1363002)))

(declare-fun e!1363010 () Bool)

(declare-fun inv!31820 (CacheUp!1790) Bool)

(assert (=> start!207596 (and (inv!31820 cacheUp!979) e!1363010)))

(declare-fun condSetEmpty!15937 () Bool)

(assert (=> start!207596 (= condSetEmpty!15937 (= z!3839 ((as const (Array Context!2630 Bool)) false)))))

(assert (=> start!207596 setRes!15937))

(declare-fun e!1363031 () Bool)

(assert (=> start!207596 (and (inv!31817 totalInput!851) e!1363031)))

(declare-fun e!1363015 () Bool)

(assert (=> start!207596 e!1363015))

(declare-fun b!2135505 () Bool)

(declare-fun tp!658275 () Bool)

(declare-fun e!1363029 () Bool)

(declare-fun inv!31821 (StackFrame!178) Bool)

(assert (=> b!2135505 (= e!1363015 (and (inv!31821 (h!29557 stack!8)) e!1363029 tp!658275))))

(declare-fun mapNonEmpty!12810 () Bool)

(declare-fun tp!658269 () Bool)

(declare-fun tp!658272 () Bool)

(assert (=> mapNonEmpty!12810 (= mapRes!12808 (and tp!658269 tp!658272))))

(declare-fun mapValue!12809 () List!24239)

(declare-fun mapRest!12810 () (Array (_ BitVec 32) List!24239))

(declare-fun mapKey!12809 () (_ BitVec 32))

(assert (=> mapNonEmpty!12810 (= (arr!4039 (_values!2952 (v!28720 (underlying!5539 (v!28721 (underlying!5540 (cache!2967 cacheFurthestNullable!114))))))) (store mapRest!12810 mapKey!12809 mapValue!12809))))

(declare-fun b!2135506 () Bool)

(declare-fun res!922645 () Bool)

(assert (=> b!2135506 (=> res!922645 e!1363008)))

(declare-fun lostCauseZipper!95 ((InoxSet Context!2630)) Bool)

(assert (=> b!2135506 (= res!922645 (lostCauseZipper!95 z!3839))))

(declare-fun e!1362999 () Bool)

(declare-fun setElem!15937 () Context!2630)

(declare-fun tp!658284 () Bool)

(declare-fun setNonEmpty!15936 () Bool)

(declare-fun inv!31822 (Context!2630) Bool)

(assert (=> setNonEmpty!15936 (= setRes!15937 (and tp!658284 (inv!31822 setElem!15937) e!1362999))))

(declare-fun setRest!15937 () (InoxSet Context!2630))

(assert (=> setNonEmpty!15936 (= z!3839 ((_ map or) (store ((as const (Array Context!2630 Bool)) false) setElem!15937 true) setRest!15937))))

(declare-fun b!2135507 () Bool)

(declare-fun res!922661 () Bool)

(assert (=> b!2135507 (=> (not res!922661) (not e!1363003))))

(declare-fun valid!2094 (CacheFurthestNullable!736) Bool)

(assert (=> b!2135507 (= res!922661 (valid!2094 cacheFurthestNullable!114))))

(declare-fun b!2135508 () Bool)

(declare-fun e!1363025 () Bool)

(assert (=> b!2135508 (= e!1363008 e!1363025)))

(declare-fun res!922655 () Bool)

(assert (=> b!2135508 (=> res!922655 e!1363025)))

(assert (=> b!2135508 (= res!922655 (not (= lt!797158 lt!797160)))))

(declare-datatypes ((tuple3!3274 0))(
  ( (tuple3!3275 (_1!14081 (InoxSet Context!2630)) (_2!14081 CacheUp!1790) (_3!2107 CacheDown!1770)) )
))
(declare-fun lt!797162 () tuple3!3274)

(declare-fun furthestNullablePosition!55 ((InoxSet Context!2630) Int BalanceConc!15528 Int Int) Int)

(assert (=> b!2135508 (= lt!797160 (furthestNullablePosition!55 (_1!14081 lt!797162) (+ 1 from!1043) totalInput!851 lt!797163 e!1363023))))

(declare-fun c!340328 () Bool)

(assert (=> b!2135508 (= c!340328 (nullableZipper!120 (_1!14081 lt!797162)))))

(assert (=> b!2135508 (= lt!797164 (Cons!24156 (StackFrame!179 z!3839 from!1043 lastNullablePos!123 lt!797158 totalInput!851) stack!8))))

(declare-fun derivationStepZipperMem!42 ((InoxSet Context!2630) C!11636 CacheUp!1790 CacheDown!1770) tuple3!3274)

(declare-fun apply!5941 (BalanceConc!15528 Int) C!11636)

(assert (=> b!2135508 (= lt!797162 (derivationStepZipperMem!42 z!3839 (apply!5941 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun e!1363033 () Bool)

(assert (=> b!2135509 (= e!1363033 (and e!1363024 tp!658287))))

(declare-fun b!2135510 () Bool)

(declare-fun e!1363001 () Bool)

(declare-fun tp!658294 () Bool)

(assert (=> b!2135510 (= e!1363001 (and tp!658294 mapRes!12809))))

(declare-fun condMapEmpty!12808 () Bool)

(declare-fun mapDefault!12809 () List!24242)

(assert (=> b!2135510 (= condMapEmpty!12808 (= (arr!4041 (_values!2954 (v!28725 (underlying!5543 (v!28726 (underlying!5544 (cache!2969 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24242)) mapDefault!12809)))))

(declare-fun setNonEmpty!15937 () Bool)

(declare-fun tp!658293 () Bool)

(declare-fun setElem!15936 () Context!2630)

(assert (=> setNonEmpty!15937 (= setRes!15936 (and tp!658293 (inv!31822 setElem!15936) e!1363014))))

(declare-fun setRest!15936 () (InoxSet Context!2630))

(assert (=> setNonEmpty!15937 (= (z!5817 (h!29557 stack!8)) ((_ map or) (store ((as const (Array Context!2630 Bool)) false) setElem!15936 true) setRest!15936))))

(assert (=> b!2135511 (= e!1363003 e!1363012)))

(declare-fun res!922654 () Bool)

(assert (=> b!2135511 (=> (not res!922654) (not e!1363012))))

(assert (=> b!2135511 (= res!922654 (forall!4932 stack!8 lambda!79487))))

(assert (=> b!2135511 (= lt!797158 (furthestNullablePosition!55 z!3839 from!1043 totalInput!851 lt!797163 lastNullablePos!123))))

(declare-fun b!2135512 () Bool)

(declare-fun lt!797161 () MutLongMap!2672)

(assert (=> b!2135512 (= e!1363028 (and e!1363013 ((_ is LongMap!2672) lt!797161)))))

(assert (=> b!2135512 (= lt!797161 (v!28721 (underlying!5540 (cache!2967 cacheFurthestNullable!114))))))

(declare-fun b!2135513 () Bool)

(declare-fun tp!658281 () Bool)

(assert (=> b!2135513 (= e!1362999 tp!658281)))

(declare-fun b!2135514 () Bool)

(assert (=> b!2135514 (= e!1363027 (and (>= (+ 1 from!1043) 0) (<= (+ 1 from!1043) totalInputSize!296)))))

(declare-fun b!2135515 () Bool)

(assert (=> b!2135515 (= e!1363029 (and setRes!15936 (inv!31817 (totalInput!3065 (h!29557 stack!8))) e!1363007))))

(declare-fun condSetEmpty!15936 () Bool)

(assert (=> b!2135515 (= condSetEmpty!15936 (= (z!5817 (h!29557 stack!8)) ((as const (Array Context!2630 Bool)) false)))))

(declare-fun b!2135516 () Bool)

(declare-fun res!922647 () Bool)

(assert (=> b!2135516 (=> res!922647 e!1363027)))

(assert (=> b!2135516 (= res!922647 (not (forall!4932 lt!797164 lambda!79488)))))

(declare-fun b!2135517 () Bool)

(assert (=> b!2135517 (= e!1363010 e!1363033)))

(declare-fun b!2135518 () Bool)

(declare-fun tp!658276 () Bool)

(assert (=> b!2135518 (= e!1363031 (and (inv!31816 (c!340329 totalInput!851)) tp!658276))))

(declare-fun b!2135519 () Bool)

(assert (=> b!2135519 (= e!1363023 lastNullablePos!123)))

(declare-fun b!2135520 () Bool)

(declare-fun res!922651 () Bool)

(assert (=> b!2135520 (=> res!922651 e!1363008)))

(assert (=> b!2135520 (= res!922651 (= from!1043 totalInputSize!296))))

(declare-fun b!2135521 () Bool)

(declare-fun res!922646 () Bool)

(assert (=> b!2135521 (=> (not res!922646) (not e!1363003))))

(assert (=> b!2135521 (= res!922646 (= (totalInput!3064 cacheFurthestNullable!114) totalInput!851))))

(assert (=> b!2135522 (= e!1363025 e!1363027)))

(declare-fun res!922652 () Bool)

(assert (=> b!2135522 (=> res!922652 e!1363027)))

(assert (=> b!2135522 (= res!922652 (not (forall!4932 stack!8 lambda!79489)))))

(assert (=> b!2135522 (forall!4932 stack!8 lambda!79489)))

(declare-datatypes ((Unit!37651 0))(
  ( (Unit!37652) )
))
(declare-fun lt!797165 () Unit!37651)

(declare-fun lemmaStackPreservesForEqualRes!12 (List!24240 Int Int) Unit!37651)

(assert (=> b!2135522 (= lt!797165 (lemmaStackPreservesForEqualRes!12 stack!8 lt!797158 lt!797160))))

(assert (=> b!2135522 (forall!4932 stack!8 lambda!79487)))

(declare-fun tp!658273 () Bool)

(declare-fun tp!658282 () Bool)

(declare-fun array_inv!2891 (array!9059) Bool)

(assert (=> b!2135523 (= e!1363032 (and tp!658291 tp!658282 tp!658273 (array_inv!2889 (_keys!2971 (v!28725 (underlying!5543 (v!28726 (underlying!5544 (cache!2969 cacheDown!1098))))))) (array_inv!2891 (_values!2954 (v!28725 (underlying!5543 (v!28726 (underlying!5544 (cache!2969 cacheDown!1098))))))) e!1363001))))

(declare-fun tp!658270 () Bool)

(declare-fun tp!658289 () Bool)

(declare-fun e!1363011 () Bool)

(declare-fun array_inv!2892 (array!9057) Bool)

(assert (=> b!2135524 (= e!1363017 (and tp!658286 tp!658289 tp!658270 (array_inv!2889 (_keys!2970 (v!28722 (underlying!5541 (v!28723 (underlying!5542 (cache!2968 cacheUp!979))))))) (array_inv!2892 (_values!2953 (v!28722 (underlying!5541 (v!28723 (underlying!5542 (cache!2968 cacheUp!979))))))) e!1363011))))

(declare-fun b!2135525 () Bool)

(declare-fun tp!658274 () Bool)

(assert (=> b!2135525 (= e!1363011 (and tp!658274 mapRes!12810))))

(declare-fun condMapEmpty!12810 () Bool)

(declare-fun mapDefault!12808 () List!24241)

(assert (=> b!2135525 (= condMapEmpty!12810 (= (arr!4040 (_values!2953 (v!28722 (underlying!5541 (v!28723 (underlying!5542 (cache!2968 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24241)) mapDefault!12808)))))

(declare-fun mapIsEmpty!12810 () Bool)

(assert (=> mapIsEmpty!12810 mapRes!12809))

(declare-fun b!2135526 () Bool)

(declare-fun lt!797166 () MutLongMap!2674)

(assert (=> b!2135526 (= e!1363021 (and e!1363004 ((_ is LongMap!2674) lt!797166)))))

(assert (=> b!2135526 (= lt!797166 (v!28726 (underlying!5544 (cache!2969 cacheDown!1098))))))

(assert (= (and start!207596 res!922660) b!2135480))

(assert (= (and b!2135480 res!922658) b!2135500))

(assert (= (and b!2135500 (not res!922648)) b!2135487))

(assert (= (and b!2135500 res!922657) b!2135504))

(assert (= (and b!2135504 res!922656) b!2135502))

(assert (= (and b!2135502 res!922653) b!2135507))

(assert (= (and b!2135507 res!922661) b!2135521))

(assert (= (and b!2135521 res!922646) b!2135511))

(assert (= (and b!2135511 res!922654) b!2135498))

(assert (= (and b!2135498 res!922650) b!2135497))

(assert (= (and b!2135497 (not res!922659)) b!2135520))

(assert (= (and b!2135520 (not res!922651)) b!2135506))

(assert (= (and b!2135506 (not res!922645)) b!2135508))

(assert (= (and b!2135508 c!340328) b!2135481))

(assert (= (and b!2135508 (not c!340328)) b!2135519))

(assert (= (and b!2135508 (not res!922655)) b!2135522))

(assert (= (and b!2135522 (not res!922652)) b!2135492))

(assert (= (and b!2135492 (not res!922649)) b!2135516))

(assert (= (and b!2135516 (not res!922647)) b!2135514))

(assert (= (and b!2135483 condMapEmpty!12809) mapIsEmpty!12809))

(assert (= (and b!2135483 (not condMapEmpty!12809)) mapNonEmpty!12810))

(assert (= b!2135501 b!2135483))

(assert (= b!2135494 b!2135501))

(assert (= b!2135489 b!2135494))

(assert (= (and b!2135512 ((_ is LongMap!2672) (v!28721 (underlying!5540 (cache!2967 cacheFurthestNullable!114))))) b!2135489))

(assert (= b!2135490 b!2135512))

(assert (= (and b!2135503 ((_ is HashMap!2586) (cache!2967 cacheFurthestNullable!114))) b!2135490))

(assert (= b!2135503 b!2135491))

(assert (= start!207596 b!2135503))

(assert (= (and b!2135510 condMapEmpty!12808) mapIsEmpty!12810))

(assert (= (and b!2135510 (not condMapEmpty!12808)) mapNonEmpty!12808))

(assert (= b!2135523 b!2135510))

(assert (= b!2135485 b!2135523))

(assert (= b!2135499 b!2135485))

(assert (= (and b!2135526 ((_ is LongMap!2674) (v!28726 (underlying!5544 (cache!2969 cacheDown!1098))))) b!2135499))

(assert (= b!2135493 b!2135526))

(assert (= (and b!2135495 ((_ is HashMap!2588) (cache!2969 cacheDown!1098))) b!2135493))

(assert (= start!207596 b!2135495))

(assert (= (and b!2135525 condMapEmpty!12810) mapIsEmpty!12808))

(assert (= (and b!2135525 (not condMapEmpty!12810)) mapNonEmpty!12809))

(assert (= b!2135524 b!2135525))

(assert (= b!2135488 b!2135524))

(assert (= b!2135482 b!2135488))

(assert (= (and b!2135496 ((_ is LongMap!2673) (v!28723 (underlying!5542 (cache!2968 cacheUp!979))))) b!2135482))

(assert (= b!2135509 b!2135496))

(assert (= (and b!2135517 ((_ is HashMap!2587) (cache!2968 cacheUp!979))) b!2135509))

(assert (= start!207596 b!2135517))

(assert (= (and start!207596 condSetEmpty!15937) setIsEmpty!15937))

(assert (= (and start!207596 (not condSetEmpty!15937)) setNonEmpty!15936))

(assert (= setNonEmpty!15936 b!2135513))

(assert (= start!207596 b!2135518))

(assert (= (and b!2135515 condSetEmpty!15936) setIsEmpty!15936))

(assert (= (and b!2135515 (not condSetEmpty!15936)) setNonEmpty!15937))

(assert (= setNonEmpty!15937 b!2135486))

(assert (= b!2135515 b!2135484))

(assert (= b!2135505 b!2135515))

(assert (= (and start!207596 ((_ is Cons!24156) stack!8)) b!2135505))

(declare-fun m!2583210 () Bool)

(assert (=> start!207596 m!2583210))

(declare-fun m!2583212 () Bool)

(assert (=> start!207596 m!2583212))

(declare-fun m!2583214 () Bool)

(assert (=> start!207596 m!2583214))

(declare-fun m!2583216 () Bool)

(assert (=> start!207596 m!2583216))

(declare-fun m!2583218 () Bool)

(assert (=> b!2135484 m!2583218))

(declare-fun m!2583220 () Bool)

(assert (=> b!2135516 m!2583220))

(declare-fun m!2583222 () Bool)

(assert (=> b!2135515 m!2583222))

(declare-fun m!2583224 () Bool)

(assert (=> b!2135511 m!2583224))

(declare-fun m!2583226 () Bool)

(assert (=> b!2135511 m!2583226))

(declare-fun m!2583228 () Bool)

(assert (=> b!2135480 m!2583228))

(declare-fun m!2583230 () Bool)

(assert (=> b!2135502 m!2583230))

(declare-fun m!2583232 () Bool)

(assert (=> b!2135505 m!2583232))

(declare-fun m!2583234 () Bool)

(assert (=> setNonEmpty!15936 m!2583234))

(declare-fun m!2583236 () Bool)

(assert (=> b!2135504 m!2583236))

(declare-fun m!2583238 () Bool)

(assert (=> b!2135501 m!2583238))

(declare-fun m!2583240 () Bool)

(assert (=> b!2135501 m!2583240))

(declare-fun m!2583242 () Bool)

(assert (=> b!2135508 m!2583242))

(declare-fun m!2583244 () Bool)

(assert (=> b!2135508 m!2583244))

(declare-fun m!2583246 () Bool)

(assert (=> b!2135508 m!2583246))

(assert (=> b!2135508 m!2583246))

(declare-fun m!2583248 () Bool)

(assert (=> b!2135508 m!2583248))

(declare-fun m!2583250 () Bool)

(assert (=> b!2135492 m!2583250))

(declare-fun m!2583252 () Bool)

(assert (=> b!2135503 m!2583252))

(declare-fun m!2583254 () Bool)

(assert (=> setNonEmpty!15937 m!2583254))

(declare-fun m!2583256 () Bool)

(assert (=> b!2135523 m!2583256))

(declare-fun m!2583258 () Bool)

(assert (=> b!2135523 m!2583258))

(declare-fun m!2583260 () Bool)

(assert (=> b!2135522 m!2583260))

(assert (=> b!2135522 m!2583260))

(declare-fun m!2583262 () Bool)

(assert (=> b!2135522 m!2583262))

(assert (=> b!2135522 m!2583224))

(declare-fun m!2583264 () Bool)

(assert (=> b!2135498 m!2583264))

(declare-fun m!2583266 () Bool)

(assert (=> mapNonEmpty!12810 m!2583266))

(declare-fun m!2583268 () Bool)

(assert (=> b!2135506 m!2583268))

(declare-fun m!2583270 () Bool)

(assert (=> b!2135518 m!2583270))

(declare-fun m!2583272 () Bool)

(assert (=> b!2135497 m!2583272))

(assert (=> b!2135497 m!2583224))

(declare-fun m!2583274 () Bool)

(assert (=> b!2135524 m!2583274))

(declare-fun m!2583276 () Bool)

(assert (=> b!2135524 m!2583276))

(declare-fun m!2583278 () Bool)

(assert (=> b!2135500 m!2583278))

(declare-fun m!2583280 () Bool)

(assert (=> b!2135507 m!2583280))

(declare-fun m!2583282 () Bool)

(assert (=> mapNonEmpty!12808 m!2583282))

(declare-fun m!2583284 () Bool)

(assert (=> b!2135491 m!2583284))

(declare-fun m!2583286 () Bool)

(assert (=> mapNonEmpty!12809 m!2583286))

(check-sat (not b!2135523) (not b!2135518) (not mapNonEmpty!12810) (not b!2135522) b_and!172185 b_and!172181 (not b!2135497) (not b!2135507) (not b!2135502) (not b!2135504) (not b!2135484) (not b!2135503) b_and!172183 (not b_next!63301) (not b!2135480) (not b_next!63303) b_and!172177 (not b!2135500) (not b!2135525) b_and!172179 (not b!2135501) b_and!172187 (not setNonEmpty!15936) (not b!2135483) (not b!2135498) (not b!2135524) (not b!2135486) (not b!2135513) (not b_next!63305) (not start!207596) (not b!2135511) (not b!2135510) (not b!2135506) (not b_next!63311) (not b!2135505) (not b!2135515) (not b!2135508) (not setNonEmpty!15937) (not b!2135491) (not b!2135516) (not b!2135492) (not mapNonEmpty!12809) (not b_next!63309) (not b_next!63307) (not mapNonEmpty!12808))
(check-sat (not b_next!63301) b_and!172179 b_and!172187 b_and!172185 b_and!172181 (not b_next!63305) (not b_next!63311) (not b_next!63309) (not b_next!63307) b_and!172183 (not b_next!63303) b_and!172177)
