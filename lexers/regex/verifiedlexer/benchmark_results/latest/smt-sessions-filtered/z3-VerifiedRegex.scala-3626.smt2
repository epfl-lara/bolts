; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207544 () Bool)

(assert start!207544)

(declare-fun b!2131992 () Bool)

(declare-fun b_free!62285 () Bool)

(declare-fun b_next!62989 () Bool)

(assert (=> b!2131992 (= b_free!62285 (not b_next!62989))))

(declare-fun tp!656026 () Bool)

(declare-fun b_and!171865 () Bool)

(assert (=> b!2131992 (= tp!656026 b_and!171865)))

(declare-fun b!2131994 () Bool)

(declare-fun b_free!62287 () Bool)

(declare-fun b_next!62991 () Bool)

(assert (=> b!2131994 (= b_free!62287 (not b_next!62991))))

(declare-fun tp!656012 () Bool)

(declare-fun b_and!171867 () Bool)

(assert (=> b!2131994 (= tp!656012 b_and!171867)))

(declare-fun b!2131988 () Bool)

(declare-fun b_free!62289 () Bool)

(declare-fun b_next!62993 () Bool)

(assert (=> b!2131988 (= b_free!62289 (not b_next!62993))))

(declare-fun tp!656006 () Bool)

(declare-fun b_and!171869 () Bool)

(assert (=> b!2131988 (= tp!656006 b_and!171869)))

(declare-fun b!2131997 () Bool)

(declare-fun b_free!62291 () Bool)

(declare-fun b_next!62995 () Bool)

(assert (=> b!2131997 (= b_free!62291 (not b_next!62995))))

(declare-fun tp!656025 () Bool)

(declare-fun b_and!171871 () Bool)

(assert (=> b!2131997 (= tp!656025 b_and!171871)))

(declare-fun b!2131998 () Bool)

(declare-fun b_free!62293 () Bool)

(declare-fun b_next!62997 () Bool)

(assert (=> b!2131998 (= b_free!62293 (not b_next!62997))))

(declare-fun tp!656028 () Bool)

(declare-fun b_and!171873 () Bool)

(assert (=> b!2131998 (= tp!656028 b_and!171873)))

(declare-fun b!2132004 () Bool)

(declare-fun b_free!62295 () Bool)

(declare-fun b_next!62999 () Bool)

(assert (=> b!2132004 (= b_free!62295 (not b_next!62999))))

(declare-fun tp!656014 () Bool)

(declare-fun b_and!171875 () Bool)

(assert (=> b!2132004 (= tp!656014 b_and!171875)))

(declare-fun b!2132019 () Bool)

(assert (=> b!2132019 true))

(declare-fun bs!444264 () Bool)

(declare-fun b!2131983 () Bool)

(assert (= bs!444264 (and b!2131983 b!2132019)))

(declare-fun lambda!79243 () Int)

(declare-fun lambda!79242 () Int)

(assert (=> bs!444264 (not (= lambda!79243 lambda!79242))))

(assert (=> b!2131983 true))

(declare-fun b!2131978 () Bool)

(declare-fun e!1360080 () Bool)

(declare-fun e!1360055 () Bool)

(declare-datatypes ((C!11584 0))(
  ( (C!11585 (val!6778 Int)) )
))
(declare-datatypes ((Regex!5719 0))(
  ( (ElementMatch!5719 (c!340211 C!11584)) (Concat!10021 (regOne!11950 Regex!5719) (regTwo!11950 Regex!5719)) (EmptyExpr!5719) (Star!5719 (reg!6048 Regex!5719)) (EmptyLang!5719) (Union!5719 (regOne!11951 Regex!5719) (regTwo!11951 Regex!5719)) )
))
(declare-datatypes ((List!24090 0))(
  ( (Nil!24006) (Cons!24006 (h!29407 Regex!5719) (t!196618 List!24090)) )
))
(declare-datatypes ((Context!2578 0))(
  ( (Context!2579 (exprs!1789 List!24090)) )
))
(declare-datatypes ((tuple2!23748 0))(
  ( (tuple2!23749 (_1!13916 Context!2578) (_2!13916 C!11584)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23750 0))(
  ( (tuple2!23751 (_1!13917 tuple2!23748) (_2!13917 (InoxSet Context!2578))) )
))
(declare-datatypes ((List!24091 0))(
  ( (Nil!24007) (Cons!24007 (h!29408 tuple2!23750) (t!196619 List!24091)) )
))
(declare-datatypes ((array!8857 0))(
  ( (array!8858 (arr!3940 (Array (_ BitVec 32) (_ BitVec 64))) (size!18777 (_ BitVec 32))) )
))
(declare-datatypes ((array!8859 0))(
  ( (array!8860 (arr!3941 (Array (_ BitVec 32) List!24091)) (size!18778 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5200 0))(
  ( (LongMapFixedSize!5201 (defaultEntry!2965 Int) (mask!6775 (_ BitVec 32)) (extraKeys!2848 (_ BitVec 32)) (zeroValue!2858 List!24091) (minValue!2858 List!24091) (_size!5251 (_ BitVec 32)) (_keys!2897 array!8857) (_values!2880 array!8859) (_vacant!2661 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10225 0))(
  ( (Cell!10226 (v!28560 LongMapFixedSize!5200)) )
))
(declare-datatypes ((MutLongMap!2600 0))(
  ( (LongMap!2600 (underlying!5395 Cell!10225)) (MutLongMapExt!2599 (__x!15976 Int)) )
))
(declare-fun lt!796596 () MutLongMap!2600)

(get-info :version)

(assert (=> b!2131978 (= e!1360080 (and e!1360055 ((_ is LongMap!2600) lt!796596)))))

(declare-datatypes ((Cell!10227 0))(
  ( (Cell!10228 (v!28561 MutLongMap!2600)) )
))
(declare-datatypes ((Hashable!2514 0))(
  ( (HashableExt!2513 (__x!15977 Int)) )
))
(declare-datatypes ((MutableMap!2514 0))(
  ( (MutableMapExt!2513 (__x!15978 Int)) (HashMap!2514 (underlying!5396 Cell!10227) (hashF!4437 Hashable!2514) (_size!5252 (_ BitVec 32)) (defaultValue!2676 Int)) )
))
(declare-datatypes ((CacheUp!1742 0))(
  ( (CacheUp!1743 (cache!2895 MutableMap!2514)) )
))
(declare-fun cacheUp!979 () CacheUp!1742)

(assert (=> b!2131978 (= lt!796596 (v!28561 (underlying!5396 (cache!2895 cacheUp!979))))))

(declare-fun tp!656016 () Bool)

(declare-fun e!1360082 () Bool)

(declare-fun b!2131979 () Bool)

(declare-datatypes ((List!24092 0))(
  ( (Nil!24008) (Cons!24008 (h!29409 C!11584) (t!196620 List!24092)) )
))
(declare-datatypes ((IArray!15719 0))(
  ( (IArray!15720 (innerList!7917 List!24092)) )
))
(declare-datatypes ((Conc!7857 0))(
  ( (Node!7857 (left!18513 Conc!7857) (right!18843 Conc!7857) (csize!15944 Int) (cheight!8068 Int)) (Leaf!11484 (xs!10799 IArray!15719) (csize!15945 Int)) (Empty!7857) )
))
(declare-datatypes ((BalanceConc!15476 0))(
  ( (BalanceConc!15477 (c!340212 Conc!7857)) )
))
(declare-datatypes ((StackFrame!132 0))(
  ( (StackFrame!133 (z!5794 (InoxSet Context!2578)) (from!2680 Int) (lastNullablePos!367 Int) (res!921553 Int) (totalInput!3015 BalanceConc!15476)) )
))
(declare-datatypes ((List!24093 0))(
  ( (Nil!24009) (Cons!24009 (h!29410 StackFrame!132) (t!196621 List!24093)) )
))
(declare-fun stack!8 () List!24093)

(declare-fun e!1360063 () Bool)

(declare-fun inv!31644 (StackFrame!132) Bool)

(assert (=> b!2131979 (= e!1360063 (and (inv!31644 (h!29410 stack!8)) e!1360082 tp!656016))))

(declare-fun b!2131980 () Bool)

(declare-fun res!921540 () Bool)

(declare-fun e!1360056 () Bool)

(assert (=> b!2131980 (=> (not res!921540) (not e!1360056))))

(declare-datatypes ((tuple3!3144 0))(
  ( (tuple3!3145 (_1!13918 (InoxSet Context!2578)) (_2!13918 Int) (_3!2042 Int)) )
))
(declare-datatypes ((tuple2!23752 0))(
  ( (tuple2!23753 (_1!13919 tuple3!3144) (_2!13919 Int)) )
))
(declare-datatypes ((List!24094 0))(
  ( (Nil!24010) (Cons!24010 (h!29411 tuple2!23752) (t!196622 List!24094)) )
))
(declare-datatypes ((array!8861 0))(
  ( (array!8862 (arr!3942 (Array (_ BitVec 32) List!24094)) (size!18779 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5202 0))(
  ( (LongMapFixedSize!5203 (defaultEntry!2966 Int) (mask!6776 (_ BitVec 32)) (extraKeys!2849 (_ BitVec 32)) (zeroValue!2859 List!24094) (minValue!2859 List!24094) (_size!5253 (_ BitVec 32)) (_keys!2898 array!8857) (_values!2881 array!8861) (_vacant!2662 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10229 0))(
  ( (Cell!10230 (v!28562 LongMapFixedSize!5202)) )
))
(declare-datatypes ((MutLongMap!2601 0))(
  ( (LongMap!2601 (underlying!5397 Cell!10229)) (MutLongMapExt!2600 (__x!15979 Int)) )
))
(declare-datatypes ((Cell!10231 0))(
  ( (Cell!10232 (v!28563 MutLongMap!2601)) )
))
(declare-datatypes ((Hashable!2515 0))(
  ( (HashableExt!2514 (__x!15980 Int)) )
))
(declare-datatypes ((MutableMap!2515 0))(
  ( (MutableMapExt!2514 (__x!15981 Int)) (HashMap!2515 (underlying!5398 Cell!10231) (hashF!4438 Hashable!2515) (_size!5254 (_ BitVec 32)) (defaultValue!2677 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!684 0))(
  ( (CacheFurthestNullable!685 (cache!2896 MutableMap!2515) (totalInput!3016 BalanceConc!15476)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!684)

(declare-fun valid!2039 (CacheFurthestNullable!684) Bool)

(assert (=> b!2131980 (= res!921540 (valid!2039 cacheFurthestNullable!114))))

(declare-fun mapNonEmpty!12574 () Bool)

(declare-fun mapRes!12575 () Bool)

(declare-fun tp!656023 () Bool)

(declare-fun tp!656029 () Bool)

(assert (=> mapNonEmpty!12574 (= mapRes!12575 (and tp!656023 tp!656029))))

(declare-fun mapRest!12576 () (Array (_ BitVec 32) List!24094))

(declare-fun mapValue!12576 () List!24094)

(declare-fun mapKey!12575 () (_ BitVec 32))

(assert (=> mapNonEmpty!12574 (= (arr!3942 (_values!2881 (v!28562 (underlying!5397 (v!28563 (underlying!5398 (cache!2896 cacheFurthestNullable!114))))))) (store mapRest!12576 mapKey!12575 mapValue!12576))))

(declare-fun mapIsEmpty!12574 () Bool)

(declare-fun mapRes!12574 () Bool)

(assert (=> mapIsEmpty!12574 mapRes!12574))

(declare-fun b!2131981 () Bool)

(declare-fun e!1360061 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2131981 (= e!1360061 from!1043)))

(declare-fun b!2131982 () Bool)

(declare-fun e!1360087 () Bool)

(declare-fun e!1360054 () Bool)

(assert (=> b!2131982 (= e!1360087 e!1360054)))

(declare-fun res!921542 () Bool)

(declare-fun e!1360076 () Bool)

(assert (=> b!2131983 (=> (not res!921542) (not e!1360076))))

(declare-fun forall!4912 (List!24093 Int) Bool)

(assert (=> b!2131983 (= res!921542 (forall!4912 stack!8 lambda!79243))))

(declare-fun e!1360071 () Bool)

(declare-fun setNonEmpty!15780 () Bool)

(declare-fun tp!656005 () Bool)

(declare-fun setElem!15780 () Context!2578)

(declare-fun setRes!15780 () Bool)

(declare-fun inv!31645 (Context!2578) Bool)

(assert (=> setNonEmpty!15780 (= setRes!15780 (and tp!656005 (inv!31645 setElem!15780) e!1360071))))

(declare-fun setRest!15780 () (InoxSet Context!2578))

(assert (=> setNonEmpty!15780 (= (z!5794 (h!29410 stack!8)) ((_ map or) (store ((as const (Array Context!2578 Bool)) false) setElem!15780 true) setRest!15780))))

(declare-fun b!2131984 () Bool)

(declare-fun tp!656009 () Bool)

(assert (=> b!2131984 (= e!1360071 tp!656009)))

(declare-fun b!2131985 () Bool)

(declare-fun e!1360062 () Bool)

(declare-fun e!1360075 () Bool)

(assert (=> b!2131985 (= e!1360062 e!1360075)))

(declare-fun b!2131986 () Bool)

(declare-fun res!921545 () Bool)

(assert (=> b!2131986 (=> (not res!921545) (not e!1360056))))

(declare-fun e!1360081 () Bool)

(assert (=> b!2131986 (= res!921545 e!1360081)))

(declare-fun res!921547 () Bool)

(assert (=> b!2131986 (=> res!921547 e!1360081)))

(declare-fun z!3839 () (InoxSet Context!2578))

(declare-fun nullableZipper!102 ((InoxSet Context!2578)) Bool)

(assert (=> b!2131986 (= res!921547 (not (nullableZipper!102 z!3839)))))

(declare-fun b!2131987 () Bool)

(declare-fun e!1360077 () Bool)

(declare-fun e!1360066 () Bool)

(assert (=> b!2131987 (= e!1360077 e!1360066)))

(assert (=> b!2131988 (= e!1360066 (and e!1360080 tp!656006))))

(declare-fun b!2131989 () Bool)

(declare-fun e!1360086 () Bool)

(declare-fun totalInput!851 () BalanceConc!15476)

(declare-fun tp!656017 () Bool)

(declare-fun inv!31646 (Conc!7857) Bool)

(assert (=> b!2131989 (= e!1360086 (and (inv!31646 (c!340212 totalInput!851)) tp!656017))))

(declare-fun setIsEmpty!15780 () Bool)

(assert (=> setIsEmpty!15780 setRes!15780))

(declare-fun b!2131990 () Bool)

(declare-fun e!1360051 () Bool)

(declare-fun tp!656013 () Bool)

(assert (=> b!2131990 (= e!1360051 tp!656013)))

(declare-fun b!2131991 () Bool)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2131991 (= e!1360081 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun mapNonEmpty!12575 () Bool)

(declare-fun tp!656011 () Bool)

(declare-fun tp!656024 () Bool)

(assert (=> mapNonEmpty!12575 (= mapRes!12574 (and tp!656011 tp!656024))))

(declare-fun mapRest!12575 () (Array (_ BitVec 32) List!24091))

(declare-fun mapValue!12575 () List!24091)

(declare-fun mapKey!12576 () (_ BitVec 32))

(assert (=> mapNonEmpty!12575 (= (arr!3941 (_values!2880 (v!28560 (underlying!5395 (v!28561 (underlying!5396 (cache!2895 cacheUp!979))))))) (store mapRest!12575 mapKey!12576 mapValue!12575))))

(declare-fun e!1360059 () Bool)

(declare-datatypes ((tuple3!3146 0))(
  ( (tuple3!3147 (_1!13920 Regex!5719) (_2!13920 Context!2578) (_3!2043 C!11584)) )
))
(declare-datatypes ((tuple2!23754 0))(
  ( (tuple2!23755 (_1!13921 tuple3!3146) (_2!13921 (InoxSet Context!2578))) )
))
(declare-datatypes ((List!24095 0))(
  ( (Nil!24011) (Cons!24011 (h!29412 tuple2!23754) (t!196623 List!24095)) )
))
(declare-datatypes ((Hashable!2516 0))(
  ( (HashableExt!2515 (__x!15982 Int)) )
))
(declare-datatypes ((array!8863 0))(
  ( (array!8864 (arr!3943 (Array (_ BitVec 32) List!24095)) (size!18780 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5204 0))(
  ( (LongMapFixedSize!5205 (defaultEntry!2967 Int) (mask!6777 (_ BitVec 32)) (extraKeys!2850 (_ BitVec 32)) (zeroValue!2860 List!24095) (minValue!2860 List!24095) (_size!5255 (_ BitVec 32)) (_keys!2899 array!8857) (_values!2882 array!8863) (_vacant!2663 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10233 0))(
  ( (Cell!10234 (v!28564 LongMapFixedSize!5204)) )
))
(declare-datatypes ((MutLongMap!2602 0))(
  ( (LongMap!2602 (underlying!5399 Cell!10233)) (MutLongMapExt!2601 (__x!15983 Int)) )
))
(declare-datatypes ((Cell!10235 0))(
  ( (Cell!10236 (v!28565 MutLongMap!2602)) )
))
(declare-datatypes ((MutableMap!2516 0))(
  ( (MutableMapExt!2515 (__x!15984 Int)) (HashMap!2516 (underlying!5400 Cell!10235) (hashF!4439 Hashable!2516) (_size!5256 (_ BitVec 32)) (defaultValue!2678 Int)) )
))
(declare-datatypes ((CacheDown!1726 0))(
  ( (CacheDown!1727 (cache!2897 MutableMap!2516)) )
))
(declare-fun cacheDown!1098 () CacheDown!1726)

(declare-fun tp!656022 () Bool)

(declare-fun e!1360058 () Bool)

(declare-fun tp!656021 () Bool)

(declare-fun array_inv!2814 (array!8857) Bool)

(declare-fun array_inv!2815 (array!8863) Bool)

(assert (=> b!2131992 (= e!1360059 (and tp!656026 tp!656021 tp!656022 (array_inv!2814 (_keys!2899 (v!28564 (underlying!5399 (v!28565 (underlying!5400 (cache!2897 cacheDown!1098))))))) (array_inv!2815 (_values!2882 (v!28564 (underlying!5399 (v!28565 (underlying!5400 (cache!2897 cacheDown!1098))))))) e!1360058))))

(declare-fun b!2131993 () Bool)

(declare-fun e!1360053 () Bool)

(declare-fun tp!656031 () Bool)

(assert (=> b!2131993 (= e!1360053 (and (inv!31646 (c!340212 (totalInput!3015 (h!29410 stack!8)))) tp!656031))))

(declare-fun e!1360068 () Bool)

(declare-fun tp!656027 () Bool)

(declare-fun tp!656004 () Bool)

(declare-fun e!1360067 () Bool)

(declare-fun array_inv!2816 (array!8859) Bool)

(assert (=> b!2131994 (= e!1360068 (and tp!656012 tp!656004 tp!656027 (array_inv!2814 (_keys!2897 (v!28560 (underlying!5395 (v!28561 (underlying!5396 (cache!2895 cacheUp!979))))))) (array_inv!2816 (_values!2880 (v!28560 (underlying!5395 (v!28561 (underlying!5396 (cache!2895 cacheUp!979))))))) e!1360067))))

(declare-fun b!2131995 () Bool)

(declare-fun res!921548 () Bool)

(declare-fun e!1360078 () Bool)

(assert (=> b!2131995 (=> res!921548 e!1360078)))

(declare-fun lostCauseZipper!76 ((InoxSet Context!2578)) Bool)

(assert (=> b!2131995 (= res!921548 (lostCauseZipper!76 z!3839))))

(declare-fun mapNonEmpty!12576 () Bool)

(declare-fun mapRes!12576 () Bool)

(declare-fun tp!656007 () Bool)

(declare-fun tp!656008 () Bool)

(assert (=> mapNonEmpty!12576 (= mapRes!12576 (and tp!656007 tp!656008))))

(declare-fun mapRest!12574 () (Array (_ BitVec 32) List!24095))

(declare-fun mapKey!12574 () (_ BitVec 32))

(declare-fun mapValue!12574 () List!24095)

(assert (=> mapNonEmpty!12576 (= (arr!3943 (_values!2882 (v!28564 (underlying!5399 (v!28565 (underlying!5400 (cache!2897 cacheDown!1098))))))) (store mapRest!12574 mapKey!12574 mapValue!12574))))

(declare-fun b!2131996 () Bool)

(declare-fun e!1360064 () Bool)

(assert (=> b!2131996 (= e!1360064 e!1360062)))

(declare-fun setIsEmpty!15781 () Bool)

(declare-fun setRes!15781 () Bool)

(assert (=> setIsEmpty!15781 setRes!15781))

(declare-fun e!1360057 () Bool)

(assert (=> b!2131997 (= e!1360054 (and e!1360057 tp!656025))))

(declare-fun tp!656030 () Bool)

(declare-fun e!1360083 () Bool)

(declare-fun tp!656015 () Bool)

(declare-fun array_inv!2817 (array!8861) Bool)

(assert (=> b!2131998 (= e!1360075 (and tp!656028 tp!656015 tp!656030 (array_inv!2814 (_keys!2898 (v!28562 (underlying!5397 (v!28563 (underlying!5398 (cache!2896 cacheFurthestNullable!114))))))) (array_inv!2817 (_values!2881 (v!28562 (underlying!5397 (v!28563 (underlying!5398 (cache!2896 cacheFurthestNullable!114))))))) e!1360083))))

(declare-fun b!2131999 () Bool)

(declare-fun e!1360052 () Bool)

(assert (=> b!2131999 (= e!1360052 e!1360056)))

(declare-fun res!921549 () Bool)

(assert (=> b!2131999 (=> (not res!921549) (not e!1360056))))

(declare-fun totalInputSize!296 () Int)

(declare-fun lt!796600 () Int)

(assert (=> b!2131999 (= res!921549 (and (= totalInputSize!296 lt!796600) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18781 (BalanceConc!15476) Int)

(assert (=> b!2131999 (= lt!796600 (size!18781 totalInput!851))))

(declare-fun b!2132000 () Bool)

(declare-fun e!1360060 () Bool)

(assert (=> b!2132000 (= e!1360055 e!1360060)))

(declare-fun b!2132001 () Bool)

(assert (=> b!2132001 (= e!1360076 (not e!1360078))))

(declare-fun res!921551 () Bool)

(assert (=> b!2132001 (=> res!921551 e!1360078)))

(declare-datatypes ((Option!4896 0))(
  ( (None!4895) (Some!4895 (v!28566 Int)) )
))
(declare-fun get!7365 (CacheFurthestNullable!684 (InoxSet Context!2578) Int Int) Option!4896)

(assert (=> b!2132001 (= res!921551 ((_ is Some!4895) (get!7365 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2132001 (forall!4912 stack!8 lambda!79242)))

(declare-fun b!2132002 () Bool)

(assert (=> b!2132002 (= e!1360060 e!1360068)))

(declare-fun setElem!15781 () Context!2578)

(declare-fun tp!656010 () Bool)

(declare-fun setNonEmpty!15781 () Bool)

(assert (=> setNonEmpty!15781 (= setRes!15781 (and tp!656010 (inv!31645 setElem!15781) e!1360051))))

(declare-fun setRest!15781 () (InoxSet Context!2578))

(assert (=> setNonEmpty!15781 (= z!3839 ((_ map or) (store ((as const (Array Context!2578 Bool)) false) setElem!15781 true) setRest!15781))))

(declare-fun b!2132003 () Bool)

(declare-fun res!921552 () Bool)

(assert (=> b!2132003 (=> (not res!921552) (not e!1360056))))

(declare-fun valid!2040 (CacheUp!1742) Bool)

(assert (=> b!2132003 (= res!921552 (valid!2040 cacheUp!979))))

(declare-fun e!1360084 () Bool)

(declare-fun e!1360085 () Bool)

(assert (=> b!2132004 (= e!1360084 (and e!1360085 tp!656014))))

(declare-fun b!2132005 () Bool)

(assert (=> b!2132005 (= e!1360078 (<= from!1043 lt!796600))))

(declare-datatypes ((tuple3!3148 0))(
  ( (tuple3!3149 (_1!13922 (InoxSet Context!2578)) (_2!13922 CacheUp!1742) (_3!2044 CacheDown!1726)) )
))
(declare-fun lt!796599 () tuple3!3148)

(declare-fun lt!796597 () Int)

(declare-fun furthestNullablePosition!37 ((InoxSet Context!2578) Int BalanceConc!15476 Int Int) Int)

(assert (=> b!2132005 (= lt!796597 (furthestNullablePosition!37 (_1!13922 lt!796599) (+ 1 from!1043) totalInput!851 lt!796600 e!1360061))))

(declare-fun c!340210 () Bool)

(assert (=> b!2132005 (= c!340210 (nullableZipper!102 (_1!13922 lt!796599)))))

(declare-fun derivationStepZipperMem!27 ((InoxSet Context!2578) C!11584 CacheUp!1742 CacheDown!1726) tuple3!3148)

(declare-fun apply!5926 (BalanceConc!15476 Int) C!11584)

(assert (=> b!2132005 (= lt!796599 (derivationStepZipperMem!27 z!3839 (apply!5926 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2132006 () Bool)

(declare-fun e!1360079 () Bool)

(declare-fun e!1360072 () Bool)

(assert (=> b!2132006 (= e!1360079 e!1360072)))

(declare-fun b!2132007 () Bool)

(declare-fun res!921541 () Bool)

(assert (=> b!2132007 (=> (not res!921541) (not e!1360056))))

(declare-fun valid!2041 (CacheDown!1726) Bool)

(assert (=> b!2132007 (= res!921541 (valid!2041 cacheDown!1098))))

(declare-fun b!2132008 () Bool)

(declare-fun e!1360069 () Bool)

(declare-fun tp!656020 () Bool)

(assert (=> b!2132008 (= e!1360069 (and (inv!31646 (c!340212 (totalInput!3016 cacheFurthestNullable!114))) tp!656020))))

(declare-fun b!2132009 () Bool)

(declare-fun res!921546 () Bool)

(assert (=> b!2132009 (=> res!921546 e!1360078)))

(assert (=> b!2132009 (= res!921546 (= from!1043 totalInputSize!296))))

(declare-fun mapIsEmpty!12575 () Bool)

(assert (=> mapIsEmpty!12575 mapRes!12575))

(declare-fun mapIsEmpty!12576 () Bool)

(assert (=> mapIsEmpty!12576 mapRes!12576))

(declare-fun b!2132010 () Bool)

(declare-fun inv!31647 (BalanceConc!15476) Bool)

(assert (=> b!2132010 (= e!1360082 (and setRes!15780 (inv!31647 (totalInput!3015 (h!29410 stack!8))) e!1360053))))

(declare-fun condSetEmpty!15781 () Bool)

(assert (=> b!2132010 (= condSetEmpty!15781 (= (z!5794 (h!29410 stack!8)) ((as const (Array Context!2578 Bool)) false)))))

(declare-fun b!2132011 () Bool)

(assert (=> b!2132011 (= e!1360072 e!1360059)))

(declare-fun b!2132012 () Bool)

(declare-fun tp!656032 () Bool)

(assert (=> b!2132012 (= e!1360083 (and tp!656032 mapRes!12575))))

(declare-fun condMapEmpty!12576 () Bool)

(declare-fun mapDefault!12574 () List!24094)

(assert (=> b!2132012 (= condMapEmpty!12576 (= (arr!3942 (_values!2881 (v!28562 (underlying!5397 (v!28563 (underlying!5398 (cache!2896 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24094)) mapDefault!12574)))))

(declare-fun b!2132013 () Bool)

(assert (=> b!2132013 (= e!1360061 lastNullablePos!123)))

(declare-fun b!2132014 () Bool)

(declare-fun tp!656019 () Bool)

(assert (=> b!2132014 (= e!1360058 (and tp!656019 mapRes!12576))))

(declare-fun condMapEmpty!12574 () Bool)

(declare-fun mapDefault!12575 () List!24095)

(assert (=> b!2132014 (= condMapEmpty!12574 (= (arr!3943 (_values!2882 (v!28564 (underlying!5399 (v!28565 (underlying!5400 (cache!2897 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24095)) mapDefault!12575)))))

(declare-fun b!2132015 () Bool)

(declare-fun lt!796601 () MutLongMap!2602)

(assert (=> b!2132015 (= e!1360057 (and e!1360079 ((_ is LongMap!2602) lt!796601)))))

(assert (=> b!2132015 (= lt!796601 (v!28565 (underlying!5400 (cache!2897 cacheDown!1098))))))

(declare-fun b!2132016 () Bool)

(declare-fun res!921544 () Bool)

(assert (=> b!2132016 (=> (not res!921544) (not e!1360056))))

(assert (=> b!2132016 (= res!921544 (= (totalInput!3016 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2132017 () Bool)

(declare-fun lt!796598 () MutLongMap!2601)

(assert (=> b!2132017 (= e!1360085 (and e!1360064 ((_ is LongMap!2601) lt!796598)))))

(assert (=> b!2132017 (= lt!796598 (v!28563 (underlying!5398 (cache!2896 cacheFurthestNullable!114))))))

(declare-fun b!2132018 () Bool)

(declare-fun tp!656018 () Bool)

(assert (=> b!2132018 (= e!1360067 (and tp!656018 mapRes!12574))))

(declare-fun condMapEmpty!12575 () Bool)

(declare-fun mapDefault!12576 () List!24091)

(assert (=> b!2132018 (= condMapEmpty!12575 (= (arr!3941 (_values!2880 (v!28560 (underlying!5395 (v!28561 (underlying!5396 (cache!2895 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24091)) mapDefault!12576)))))

(assert (=> b!2132019 (= e!1360056 e!1360076)))

(declare-fun res!921543 () Bool)

(assert (=> b!2132019 (=> (not res!921543) (not e!1360076))))

(assert (=> b!2132019 (= res!921543 (forall!4912 stack!8 lambda!79242))))

(declare-fun lt!796602 () Int)

(assert (=> b!2132019 (= lt!796602 (furthestNullablePosition!37 z!3839 from!1043 totalInput!851 lt!796600 lastNullablePos!123))))

(declare-fun res!921550 () Bool)

(assert (=> start!207544 (=> (not res!921550) (not e!1360052))))

(assert (=> start!207544 (= res!921550 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207544 e!1360052))

(declare-fun e!1360065 () Bool)

(declare-fun inv!31648 (CacheFurthestNullable!684) Bool)

(assert (=> start!207544 (and (inv!31648 cacheFurthestNullable!114) e!1360065)))

(assert (=> start!207544 true))

(declare-fun inv!31649 (CacheDown!1726) Bool)

(assert (=> start!207544 (and (inv!31649 cacheDown!1098) e!1360087)))

(declare-fun inv!31650 (CacheUp!1742) Bool)

(assert (=> start!207544 (and (inv!31650 cacheUp!979) e!1360077)))

(declare-fun condSetEmpty!15780 () Bool)

(assert (=> start!207544 (= condSetEmpty!15780 (= z!3839 ((as const (Array Context!2578 Bool)) false)))))

(assert (=> start!207544 setRes!15781))

(assert (=> start!207544 (and (inv!31647 totalInput!851) e!1360086)))

(assert (=> start!207544 e!1360063))

(declare-fun b!2132020 () Bool)

(assert (=> b!2132020 (= e!1360065 (and e!1360084 (inv!31647 (totalInput!3016 cacheFurthestNullable!114)) e!1360069))))

(assert (= (and start!207544 res!921550) b!2131999))

(assert (= (and b!2131999 res!921549) b!2131986))

(assert (= (and b!2131986 (not res!921547)) b!2131991))

(assert (= (and b!2131986 res!921545) b!2132003))

(assert (= (and b!2132003 res!921552) b!2132007))

(assert (= (and b!2132007 res!921541) b!2131980))

(assert (= (and b!2131980 res!921540) b!2132016))

(assert (= (and b!2132016 res!921544) b!2132019))

(assert (= (and b!2132019 res!921543) b!2131983))

(assert (= (and b!2131983 res!921542) b!2132001))

(assert (= (and b!2132001 (not res!921551)) b!2132009))

(assert (= (and b!2132009 (not res!921546)) b!2131995))

(assert (= (and b!2131995 (not res!921548)) b!2132005))

(assert (= (and b!2132005 c!340210) b!2131981))

(assert (= (and b!2132005 (not c!340210)) b!2132013))

(assert (= (and b!2132012 condMapEmpty!12576) mapIsEmpty!12575))

(assert (= (and b!2132012 (not condMapEmpty!12576)) mapNonEmpty!12574))

(assert (= b!2131998 b!2132012))

(assert (= b!2131985 b!2131998))

(assert (= b!2131996 b!2131985))

(assert (= (and b!2132017 ((_ is LongMap!2601) (v!28563 (underlying!5398 (cache!2896 cacheFurthestNullable!114))))) b!2131996))

(assert (= b!2132004 b!2132017))

(assert (= (and b!2132020 ((_ is HashMap!2515) (cache!2896 cacheFurthestNullable!114))) b!2132004))

(assert (= b!2132020 b!2132008))

(assert (= start!207544 b!2132020))

(assert (= (and b!2132014 condMapEmpty!12574) mapIsEmpty!12576))

(assert (= (and b!2132014 (not condMapEmpty!12574)) mapNonEmpty!12576))

(assert (= b!2131992 b!2132014))

(assert (= b!2132011 b!2131992))

(assert (= b!2132006 b!2132011))

(assert (= (and b!2132015 ((_ is LongMap!2602) (v!28565 (underlying!5400 (cache!2897 cacheDown!1098))))) b!2132006))

(assert (= b!2131997 b!2132015))

(assert (= (and b!2131982 ((_ is HashMap!2516) (cache!2897 cacheDown!1098))) b!2131997))

(assert (= start!207544 b!2131982))

(assert (= (and b!2132018 condMapEmpty!12575) mapIsEmpty!12574))

(assert (= (and b!2132018 (not condMapEmpty!12575)) mapNonEmpty!12575))

(assert (= b!2131994 b!2132018))

(assert (= b!2132002 b!2131994))

(assert (= b!2132000 b!2132002))

(assert (= (and b!2131978 ((_ is LongMap!2600) (v!28561 (underlying!5396 (cache!2895 cacheUp!979))))) b!2132000))

(assert (= b!2131988 b!2131978))

(assert (= (and b!2131987 ((_ is HashMap!2514) (cache!2895 cacheUp!979))) b!2131988))

(assert (= start!207544 b!2131987))

(assert (= (and start!207544 condSetEmpty!15780) setIsEmpty!15781))

(assert (= (and start!207544 (not condSetEmpty!15780)) setNonEmpty!15781))

(assert (= setNonEmpty!15781 b!2131990))

(assert (= start!207544 b!2131989))

(assert (= (and b!2132010 condSetEmpty!15781) setIsEmpty!15780))

(assert (= (and b!2132010 (not condSetEmpty!15781)) setNonEmpty!15780))

(assert (= setNonEmpty!15780 b!2131984))

(assert (= b!2132010 b!2131993))

(assert (= b!2131979 b!2132010))

(assert (= (and start!207544 ((_ is Cons!24009) stack!8)) b!2131979))

(declare-fun m!2581382 () Bool)

(assert (=> mapNonEmpty!12575 m!2581382))

(declare-fun m!2581384 () Bool)

(assert (=> b!2132019 m!2581384))

(declare-fun m!2581386 () Bool)

(assert (=> b!2132019 m!2581386))

(declare-fun m!2581388 () Bool)

(assert (=> b!2131980 m!2581388))

(declare-fun m!2581390 () Bool)

(assert (=> b!2131998 m!2581390))

(declare-fun m!2581392 () Bool)

(assert (=> b!2131998 m!2581392))

(declare-fun m!2581394 () Bool)

(assert (=> b!2132020 m!2581394))

(declare-fun m!2581396 () Bool)

(assert (=> mapNonEmpty!12574 m!2581396))

(declare-fun m!2581398 () Bool)

(assert (=> b!2131992 m!2581398))

(declare-fun m!2581400 () Bool)

(assert (=> b!2131992 m!2581400))

(declare-fun m!2581402 () Bool)

(assert (=> start!207544 m!2581402))

(declare-fun m!2581404 () Bool)

(assert (=> start!207544 m!2581404))

(declare-fun m!2581406 () Bool)

(assert (=> start!207544 m!2581406))

(declare-fun m!2581408 () Bool)

(assert (=> start!207544 m!2581408))

(declare-fun m!2581410 () Bool)

(assert (=> b!2131983 m!2581410))

(declare-fun m!2581412 () Bool)

(assert (=> b!2132008 m!2581412))

(declare-fun m!2581414 () Bool)

(assert (=> setNonEmpty!15780 m!2581414))

(declare-fun m!2581416 () Bool)

(assert (=> b!2131993 m!2581416))

(declare-fun m!2581418 () Bool)

(assert (=> b!2131995 m!2581418))

(declare-fun m!2581420 () Bool)

(assert (=> b!2132005 m!2581420))

(declare-fun m!2581422 () Bool)

(assert (=> b!2132005 m!2581422))

(declare-fun m!2581424 () Bool)

(assert (=> b!2132005 m!2581424))

(assert (=> b!2132005 m!2581424))

(declare-fun m!2581426 () Bool)

(assert (=> b!2132005 m!2581426))

(declare-fun m!2581428 () Bool)

(assert (=> b!2131989 m!2581428))

(declare-fun m!2581430 () Bool)

(assert (=> b!2132007 m!2581430))

(declare-fun m!2581432 () Bool)

(assert (=> b!2132003 m!2581432))

(declare-fun m!2581434 () Bool)

(assert (=> b!2131994 m!2581434))

(declare-fun m!2581436 () Bool)

(assert (=> b!2131994 m!2581436))

(declare-fun m!2581438 () Bool)

(assert (=> b!2131999 m!2581438))

(declare-fun m!2581440 () Bool)

(assert (=> b!2132001 m!2581440))

(assert (=> b!2132001 m!2581384))

(declare-fun m!2581442 () Bool)

(assert (=> mapNonEmpty!12576 m!2581442))

(declare-fun m!2581444 () Bool)

(assert (=> b!2131979 m!2581444))

(declare-fun m!2581446 () Bool)

(assert (=> b!2131986 m!2581446))

(declare-fun m!2581448 () Bool)

(assert (=> b!2132010 m!2581448))

(declare-fun m!2581450 () Bool)

(assert (=> setNonEmpty!15781 m!2581450))

(check-sat (not b!2132019) (not b_next!62993) (not mapNonEmpty!12575) (not b!2131990) b_and!171867 (not b_next!62991) (not b_next!62997) (not b!2132007) b_and!171875 (not b!2131979) (not b!2131994) (not b!2131993) (not b!2131999) (not start!207544) b_and!171865 (not b!2131998) (not b_next!62989) (not b!2131986) b_and!171871 (not mapNonEmpty!12574) (not mapNonEmpty!12576) (not b!2132012) (not setNonEmpty!15781) (not b_next!62999) (not b!2131989) (not b!2132001) (not b!2132020) b_and!171873 (not b!2131984) (not b!2131983) (not b!2132010) b_and!171869 (not setNonEmpty!15780) (not b!2132014) (not b!2132008) (not b!2131980) (not b!2132003) (not b!2132018) (not b!2131995) (not b!2131992) (not b_next!62995) (not b!2132005))
(check-sat (not b_next!62993) b_and!171865 b_and!171867 (not b_next!62991) (not b_next!62999) (not b_next!62997) b_and!171875 b_and!171873 b_and!171869 (not b_next!62995) (not b_next!62989) b_and!171871)
