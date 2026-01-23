; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208120 () Bool)

(assert start!208120)

(declare-fun b!2145234 () Bool)

(declare-fun b_free!63245 () Bool)

(declare-fun b_next!63949 () Bool)

(assert (=> b!2145234 (= b_free!63245 (not b_next!63949))))

(declare-fun tp!665020 () Bool)

(declare-fun b_and!172825 () Bool)

(assert (=> b!2145234 (= tp!665020 b_and!172825)))

(declare-fun b!2145231 () Bool)

(declare-fun b_free!63247 () Bool)

(declare-fun b_next!63951 () Bool)

(assert (=> b!2145231 (= b_free!63247 (not b_next!63951))))

(declare-fun tp!665039 () Bool)

(declare-fun b_and!172827 () Bool)

(assert (=> b!2145231 (= tp!665039 b_and!172827)))

(declare-fun b!2145217 () Bool)

(declare-fun b_free!63249 () Bool)

(declare-fun b_next!63953 () Bool)

(assert (=> b!2145217 (= b_free!63249 (not b_next!63953))))

(declare-fun tp!665019 () Bool)

(declare-fun b_and!172829 () Bool)

(assert (=> b!2145217 (= tp!665019 b_and!172829)))

(declare-fun b!2145216 () Bool)

(declare-fun b_free!63251 () Bool)

(declare-fun b_next!63955 () Bool)

(assert (=> b!2145216 (= b_free!63251 (not b_next!63955))))

(declare-fun tp!665026 () Bool)

(declare-fun b_and!172831 () Bool)

(assert (=> b!2145216 (= tp!665026 b_and!172831)))

(declare-fun b!2145213 () Bool)

(declare-fun b_free!63253 () Bool)

(declare-fun b_next!63957 () Bool)

(assert (=> b!2145213 (= b_free!63253 (not b_next!63957))))

(declare-fun tp!665033 () Bool)

(declare-fun b_and!172833 () Bool)

(assert (=> b!2145213 (= tp!665033 b_and!172833)))

(declare-fun b!2145209 () Bool)

(declare-fun b_free!63255 () Bool)

(declare-fun b_next!63959 () Bool)

(assert (=> b!2145209 (= b_free!63255 (not b_next!63959))))

(declare-fun tp!665031 () Bool)

(declare-fun b_and!172835 () Bool)

(assert (=> b!2145209 (= tp!665031 b_and!172835)))

(declare-fun b!2145227 () Bool)

(assert (=> b!2145227 true))

(declare-fun bs!445346 () Bool)

(declare-fun b!2145221 () Bool)

(assert (= bs!445346 (and b!2145221 b!2145227)))

(declare-fun lambda!80463 () Int)

(declare-fun lambda!80462 () Int)

(assert (=> bs!445346 (not (= lambda!80463 lambda!80462))))

(assert (=> b!2145221 true))

(declare-fun b!2145205 () Bool)

(declare-fun res!925681 () Bool)

(declare-fun e!1370969 () Bool)

(assert (=> b!2145205 (=> (not res!925681) (not e!1370969))))

(declare-datatypes ((C!11744 0))(
  ( (C!11745 (val!6858 Int)) )
))
(declare-datatypes ((Regex!5799 0))(
  ( (ElementMatch!5799 (c!340723 C!11744)) (Concat!10101 (regOne!12110 Regex!5799) (regTwo!12110 Regex!5799)) (EmptyExpr!5799) (Star!5799 (reg!6128 Regex!5799)) (EmptyLang!5799) (Union!5799 (regOne!12111 Regex!5799) (regTwo!12111 Regex!5799)) )
))
(declare-datatypes ((List!24536 0))(
  ( (Nil!24452) (Cons!24452 (h!29853 Regex!5799) (t!197066 List!24536)) )
))
(declare-datatypes ((Context!2738 0))(
  ( (Context!2739 (exprs!1869 List!24536)) )
))
(declare-datatypes ((tuple2!24314 0))(
  ( (tuple2!24315 (_1!14383 Context!2738) (_2!14383 C!11744)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!24316 0))(
  ( (tuple2!24317 (_1!14384 tuple2!24314) (_2!14384 (InoxSet Context!2738))) )
))
(declare-datatypes ((List!24537 0))(
  ( (Nil!24453) (Cons!24453 (h!29854 tuple2!24316) (t!197067 List!24537)) )
))
(declare-datatypes ((array!9483 0))(
  ( (array!9484 (arr!4235 (Array (_ BitVec 32) (_ BitVec 64))) (size!19141 (_ BitVec 32))) )
))
(declare-datatypes ((array!9485 0))(
  ( (array!9486 (arr!4236 (Array (_ BitVec 32) List!24537)) (size!19142 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5630 0))(
  ( (LongMapFixedSize!5631 (defaultEntry!3180 Int) (mask!7030 (_ BitVec 32)) (extraKeys!3063 (_ BitVec 32)) (zeroValue!3073 List!24537) (minValue!3073 List!24537) (_size!5681 (_ BitVec 32)) (_keys!3112 array!9483) (_values!3095 array!9485) (_vacant!2876 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11085 0))(
  ( (Cell!11086 (v!29045 LongMapFixedSize!5630)) )
))
(declare-datatypes ((MutLongMap!2815 0))(
  ( (LongMap!2815 (underlying!5825 Cell!11085)) (MutLongMapExt!2814 (__x!16621 Int)) )
))
(declare-datatypes ((Cell!11087 0))(
  ( (Cell!11088 (v!29046 MutLongMap!2815)) )
))
(declare-datatypes ((Hashable!2729 0))(
  ( (HashableExt!2728 (__x!16622 Int)) )
))
(declare-datatypes ((MutableMap!2729 0))(
  ( (MutableMapExt!2728 (__x!16623 Int)) (HashMap!2729 (underlying!5826 Cell!11087) (hashF!4652 Hashable!2729) (_size!5682 (_ BitVec 32)) (defaultValue!2891 Int)) )
))
(declare-datatypes ((CacheUp!1876 0))(
  ( (CacheUp!1877 (cache!3110 MutableMap!2729)) )
))
(declare-fun cacheUp!979 () CacheUp!1876)

(declare-fun valid!2194 (CacheUp!1876) Bool)

(assert (=> b!2145205 (= res!925681 (valid!2194 cacheUp!979))))

(declare-fun b!2145206 () Bool)

(declare-fun e!1370982 () Bool)

(declare-fun e!1370970 () Bool)

(assert (=> b!2145206 (= e!1370982 (not e!1370970))))

(declare-fun res!925680 () Bool)

(assert (=> b!2145206 (=> res!925680 e!1370970)))

(declare-datatypes ((tuple3!3512 0))(
  ( (tuple3!3513 (_1!14385 (InoxSet Context!2738)) (_2!14385 Int) (_3!2226 Int)) )
))
(declare-datatypes ((tuple2!24318 0))(
  ( (tuple2!24319 (_1!14386 tuple3!3512) (_2!14386 Int)) )
))
(declare-datatypes ((List!24538 0))(
  ( (Nil!24454) (Cons!24454 (h!29855 tuple2!24318) (t!197068 List!24538)) )
))
(declare-datatypes ((array!9487 0))(
  ( (array!9488 (arr!4237 (Array (_ BitVec 32) List!24538)) (size!19143 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5632 0))(
  ( (LongMapFixedSize!5633 (defaultEntry!3181 Int) (mask!7031 (_ BitVec 32)) (extraKeys!3064 (_ BitVec 32)) (zeroValue!3074 List!24538) (minValue!3074 List!24538) (_size!5683 (_ BitVec 32)) (_keys!3113 array!9483) (_values!3096 array!9487) (_vacant!2877 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11089 0))(
  ( (Cell!11090 (v!29047 LongMapFixedSize!5632)) )
))
(declare-datatypes ((List!24539 0))(
  ( (Nil!24455) (Cons!24455 (h!29856 C!11744) (t!197069 List!24539)) )
))
(declare-datatypes ((IArray!15875 0))(
  ( (IArray!15876 (innerList!7995 List!24539)) )
))
(declare-datatypes ((Conc!7935 0))(
  ( (Node!7935 (left!18791 Conc!7935) (right!19121 Conc!7935) (csize!16100 Int) (cheight!8146 Int)) (Leaf!11602 (xs!10877 IArray!15875) (csize!16101 Int)) (Empty!7935) )
))
(declare-datatypes ((MutLongMap!2816 0))(
  ( (LongMap!2816 (underlying!5827 Cell!11089)) (MutLongMapExt!2815 (__x!16624 Int)) )
))
(declare-datatypes ((Cell!11091 0))(
  ( (Cell!11092 (v!29048 MutLongMap!2816)) )
))
(declare-datatypes ((Hashable!2730 0))(
  ( (HashableExt!2729 (__x!16625 Int)) )
))
(declare-datatypes ((MutableMap!2730 0))(
  ( (MutableMapExt!2729 (__x!16626 Int)) (HashMap!2730 (underlying!5828 Cell!11091) (hashF!4653 Hashable!2730) (_size!5684 (_ BitVec 32)) (defaultValue!2892 Int)) )
))
(declare-datatypes ((BalanceConc!15632 0))(
  ( (BalanceConc!15633 (c!340724 Conc!7935)) )
))
(declare-datatypes ((CacheFurthestNullable!836 0))(
  ( (CacheFurthestNullable!837 (cache!3111 MutableMap!2730) (totalInput!3167 BalanceConc!15632)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!836)

(declare-fun lastNullablePos!123 () Int)

(declare-fun z!3839 () (InoxSet Context!2738))

(declare-fun from!1043 () Int)

(get-info :version)

(declare-datatypes ((Option!4951 0))(
  ( (None!4950) (Some!4950 (v!29049 Int)) )
))
(declare-fun get!7461 (CacheFurthestNullable!836 (InoxSet Context!2738) Int Int) Option!4951)

(assert (=> b!2145206 (= res!925680 ((_ is Some!4950) (get!7461 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(declare-datatypes ((StackFrame!264 0))(
  ( (StackFrame!265 (z!5901 (InoxSet Context!2738)) (from!2765 Int) (lastNullablePos!452 Int) (res!925693 Int) (totalInput!3168 BalanceConc!15632)) )
))
(declare-datatypes ((List!24540 0))(
  ( (Nil!24456) (Cons!24456 (h!29857 StackFrame!264) (t!197070 List!24540)) )
))
(declare-fun stack!8 () List!24540)

(declare-fun forall!4992 (List!24540 Int) Bool)

(assert (=> b!2145206 (forall!4992 stack!8 lambda!80462)))

(declare-fun b!2145207 () Bool)

(declare-fun e!1370985 () Bool)

(assert (=> b!2145207 (= e!1370985 true)))

(assert (=> b!2145207 (forall!4992 stack!8 lambda!80462)))

(declare-fun mapNonEmpty!13378 () Bool)

(declare-fun mapRes!13378 () Bool)

(declare-fun tp!665029 () Bool)

(declare-fun tp!665037 () Bool)

(assert (=> mapNonEmpty!13378 (= mapRes!13378 (and tp!665029 tp!665037))))

(declare-datatypes ((tuple3!3514 0))(
  ( (tuple3!3515 (_1!14387 Regex!5799) (_2!14387 Context!2738) (_3!2227 C!11744)) )
))
(declare-datatypes ((tuple2!24320 0))(
  ( (tuple2!24321 (_1!14388 tuple3!3514) (_2!14388 (InoxSet Context!2738))) )
))
(declare-datatypes ((List!24541 0))(
  ( (Nil!24457) (Cons!24457 (h!29858 tuple2!24320) (t!197071 List!24541)) )
))
(declare-datatypes ((Hashable!2731 0))(
  ( (HashableExt!2730 (__x!16627 Int)) )
))
(declare-datatypes ((array!9489 0))(
  ( (array!9490 (arr!4238 (Array (_ BitVec 32) List!24541)) (size!19144 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5634 0))(
  ( (LongMapFixedSize!5635 (defaultEntry!3182 Int) (mask!7032 (_ BitVec 32)) (extraKeys!3065 (_ BitVec 32)) (zeroValue!3075 List!24541) (minValue!3075 List!24541) (_size!5685 (_ BitVec 32)) (_keys!3114 array!9483) (_values!3097 array!9489) (_vacant!2878 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11093 0))(
  ( (Cell!11094 (v!29050 LongMapFixedSize!5634)) )
))
(declare-datatypes ((MutLongMap!2817 0))(
  ( (LongMap!2817 (underlying!5829 Cell!11093)) (MutLongMapExt!2816 (__x!16628 Int)) )
))
(declare-datatypes ((Cell!11095 0))(
  ( (Cell!11096 (v!29051 MutLongMap!2817)) )
))
(declare-datatypes ((MutableMap!2731 0))(
  ( (MutableMapExt!2730 (__x!16629 Int)) (HashMap!2731 (underlying!5830 Cell!11095) (hashF!4654 Hashable!2731) (_size!5686 (_ BitVec 32)) (defaultValue!2893 Int)) )
))
(declare-datatypes ((CacheDown!1870 0))(
  ( (CacheDown!1871 (cache!3112 MutableMap!2731)) )
))
(declare-fun cacheDown!1098 () CacheDown!1870)

(declare-fun mapRest!13380 () (Array (_ BitVec 32) List!24541))

(declare-fun mapKey!13380 () (_ BitVec 32))

(declare-fun mapValue!13380 () List!24541)

(assert (=> mapNonEmpty!13378 (= (arr!4238 (_values!3097 (v!29050 (underlying!5829 (v!29051 (underlying!5830 (cache!3112 cacheDown!1098))))))) (store mapRest!13380 mapKey!13380 mapValue!13380))))

(declare-fun b!2145208 () Bool)

(declare-fun e!1370977 () Bool)

(declare-fun e!1370960 () Bool)

(declare-fun lt!798719 () MutLongMap!2815)

(assert (=> b!2145208 (= e!1370977 (and e!1370960 ((_ is LongMap!2815) lt!798719)))))

(assert (=> b!2145208 (= lt!798719 (v!29046 (underlying!5826 (cache!3110 cacheUp!979))))))

(declare-fun e!1370991 () Bool)

(declare-fun e!1370989 () Bool)

(assert (=> b!2145209 (= e!1370991 (and e!1370989 tp!665031))))

(declare-fun b!2145210 () Bool)

(declare-fun e!1370974 () Bool)

(declare-fun tp!665044 () Bool)

(assert (=> b!2145210 (= e!1370974 tp!665044)))

(declare-fun b!2145211 () Bool)

(declare-fun e!1370963 () Bool)

(assert (=> b!2145211 (= e!1370963 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun e!1370973 () Bool)

(declare-fun e!1370957 () Bool)

(assert (=> b!2145213 (= e!1370973 (and e!1370957 tp!665033))))

(declare-fun mapIsEmpty!13378 () Bool)

(declare-fun mapRes!13379 () Bool)

(assert (=> mapIsEmpty!13378 mapRes!13379))

(declare-fun b!2145214 () Bool)

(declare-fun e!1370961 () Bool)

(declare-fun e!1370965 () Bool)

(assert (=> b!2145214 (= e!1370961 e!1370965)))

(declare-fun b!2145215 () Bool)

(declare-fun e!1370987 () Bool)

(declare-fun e!1370964 () Bool)

(assert (=> b!2145215 (= e!1370987 e!1370964)))

(assert (=> b!2145216 (= e!1370965 (and e!1370977 tp!665026))))

(declare-fun tp!665036 () Bool)

(declare-fun e!1370979 () Bool)

(declare-fun tp!665030 () Bool)

(declare-fun e!1370986 () Bool)

(declare-fun array_inv!3030 (array!9483) Bool)

(declare-fun array_inv!3031 (array!9487) Bool)

(assert (=> b!2145217 (= e!1370986 (and tp!665019 tp!665030 tp!665036 (array_inv!3030 (_keys!3113 (v!29047 (underlying!5827 (v!29048 (underlying!5828 (cache!3111 cacheFurthestNullable!114))))))) (array_inv!3031 (_values!3096 (v!29047 (underlying!5827 (v!29048 (underlying!5828 (cache!3111 cacheFurthestNullable!114))))))) e!1370979))))

(declare-fun b!2145218 () Bool)

(declare-fun res!925692 () Bool)

(assert (=> b!2145218 (=> (not res!925692) (not e!1370969))))

(assert (=> b!2145218 (= res!925692 e!1370963)))

(declare-fun res!925691 () Bool)

(assert (=> b!2145218 (=> res!925691 e!1370963)))

(declare-fun nullableZipper!153 ((InoxSet Context!2738)) Bool)

(assert (=> b!2145218 (= res!925691 (not (nullableZipper!153 z!3839)))))

(declare-fun b!2145219 () Bool)

(declare-fun e!1370981 () Bool)

(declare-fun e!1370976 () Bool)

(assert (=> b!2145219 (= e!1370981 e!1370976)))

(declare-fun b!2145220 () Bool)

(declare-fun e!1370984 () Int)

(assert (=> b!2145220 (= e!1370984 lastNullablePos!123)))

(declare-fun res!925682 () Bool)

(assert (=> b!2145221 (=> (not res!925682) (not e!1370982))))

(assert (=> b!2145221 (= res!925682 (forall!4992 stack!8 lambda!80463))))

(declare-fun mapNonEmpty!13379 () Bool)

(declare-fun tp!665043 () Bool)

(declare-fun tp!665042 () Bool)

(assert (=> mapNonEmpty!13379 (= mapRes!13379 (and tp!665043 tp!665042))))

(declare-fun mapRest!13378 () (Array (_ BitVec 32) List!24537))

(declare-fun mapKey!13378 () (_ BitVec 32))

(declare-fun mapValue!13378 () List!24537)

(assert (=> mapNonEmpty!13379 (= (arr!4236 (_values!3095 (v!29045 (underlying!5825 (v!29046 (underlying!5826 (cache!3110 cacheUp!979))))))) (store mapRest!13378 mapKey!13378 mapValue!13378))))

(declare-fun b!2145222 () Bool)

(declare-fun tp!665032 () Bool)

(declare-fun mapRes!13380 () Bool)

(assert (=> b!2145222 (= e!1370979 (and tp!665032 mapRes!13380))))

(declare-fun condMapEmpty!13380 () Bool)

(declare-fun mapDefault!13378 () List!24538)

(assert (=> b!2145222 (= condMapEmpty!13380 (= (arr!4237 (_values!3096 (v!29047 (underlying!5827 (v!29048 (underlying!5828 (cache!3111 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24538)) mapDefault!13378)))))

(declare-fun mapIsEmpty!13379 () Bool)

(assert (=> mapIsEmpty!13379 mapRes!13380))

(declare-fun b!2145212 () Bool)

(declare-fun res!925686 () Bool)

(assert (=> b!2145212 (=> (not res!925686) (not e!1370969))))

(declare-fun totalInput!851 () BalanceConc!15632)

(assert (=> b!2145212 (= res!925686 (= (totalInput!3167 cacheFurthestNullable!114) totalInput!851))))

(declare-fun res!925685 () Bool)

(declare-fun e!1370971 () Bool)

(assert (=> start!208120 (=> (not res!925685) (not e!1370971))))

(declare-fun totalInputSize!296 () Int)

(assert (=> start!208120 (= res!925685 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!208120 e!1370971))

(declare-fun e!1370980 () Bool)

(declare-fun inv!32170 (CacheFurthestNullable!836) Bool)

(assert (=> start!208120 (and (inv!32170 cacheFurthestNullable!114) e!1370980)))

(assert (=> start!208120 true))

(declare-fun e!1370978 () Bool)

(declare-fun inv!32171 (CacheDown!1870) Bool)

(assert (=> start!208120 (and (inv!32171 cacheDown!1098) e!1370978)))

(declare-fun inv!32172 (CacheUp!1876) Bool)

(assert (=> start!208120 (and (inv!32172 cacheUp!979) e!1370961)))

(declare-fun condSetEmpty!16693 () Bool)

(assert (=> start!208120 (= condSetEmpty!16693 (= z!3839 ((as const (Array Context!2738 Bool)) false)))))

(declare-fun setRes!16693 () Bool)

(assert (=> start!208120 setRes!16693))

(declare-fun e!1370988 () Bool)

(declare-fun inv!32173 (BalanceConc!15632) Bool)

(assert (=> start!208120 (and (inv!32173 totalInput!851) e!1370988)))

(declare-fun e!1370994 () Bool)

(assert (=> start!208120 e!1370994))

(declare-fun setIsEmpty!16693 () Bool)

(declare-fun setRes!16694 () Bool)

(assert (=> setIsEmpty!16693 setRes!16694))

(declare-fun b!2145223 () Bool)

(declare-fun e!1370967 () Bool)

(declare-fun tp!665045 () Bool)

(assert (=> b!2145223 (= e!1370967 (and tp!665045 mapRes!13378))))

(declare-fun condMapEmpty!13379 () Bool)

(declare-fun mapDefault!13380 () List!24541)

(assert (=> b!2145223 (= condMapEmpty!13379 (= (arr!4238 (_values!3097 (v!29050 (underlying!5829 (v!29051 (underlying!5830 (cache!3112 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24541)) mapDefault!13380)))))

(declare-fun e!1370968 () Bool)

(declare-fun tp!665034 () Bool)

(declare-fun b!2145224 () Bool)

(declare-fun inv!32174 (StackFrame!264) Bool)

(assert (=> b!2145224 (= e!1370994 (and (inv!32174 (h!29857 stack!8)) e!1370968 tp!665034))))

(declare-fun b!2145225 () Bool)

(assert (=> b!2145225 (= e!1370964 e!1370986)))

(declare-fun b!2145226 () Bool)

(declare-fun e!1370959 () Bool)

(declare-fun tp!665035 () Bool)

(declare-fun inv!32175 (Conc!7935) Bool)

(assert (=> b!2145226 (= e!1370959 (and (inv!32175 (c!340724 (totalInput!3168 (h!29857 stack!8)))) tp!665035))))

(assert (=> b!2145227 (= e!1370969 e!1370982)))

(declare-fun res!925679 () Bool)

(assert (=> b!2145227 (=> (not res!925679) (not e!1370982))))

(assert (=> b!2145227 (= res!925679 (forall!4992 stack!8 lambda!80462))))

(declare-fun lt!798718 () Int)

(declare-fun lt!798723 () Int)

(declare-fun furthestNullablePosition!91 ((InoxSet Context!2738) Int BalanceConc!15632 Int Int) Int)

(assert (=> b!2145227 (= lt!798723 (furthestNullablePosition!91 z!3839 from!1043 totalInput!851 lt!798718 lastNullablePos!123))))

(declare-fun b!2145228 () Bool)

(declare-fun e!1370962 () Bool)

(declare-fun lt!798721 () MutLongMap!2817)

(assert (=> b!2145228 (= e!1370989 (and e!1370962 ((_ is LongMap!2817) lt!798721)))))

(assert (=> b!2145228 (= lt!798721 (v!29051 (underlying!5830 (cache!3112 cacheDown!1098))))))

(declare-fun b!2145229 () Bool)

(declare-fun e!1370972 () Bool)

(declare-fun e!1370993 () Bool)

(assert (=> b!2145229 (= e!1370972 e!1370993)))

(declare-fun setIsEmpty!16694 () Bool)

(assert (=> setIsEmpty!16694 setRes!16693))

(declare-fun b!2145230 () Bool)

(declare-fun res!925683 () Bool)

(assert (=> b!2145230 (=> (not res!925683) (not e!1370969))))

(declare-fun valid!2195 (CacheFurthestNullable!836) Bool)

(assert (=> b!2145230 (= res!925683 (valid!2195 cacheFurthestNullable!114))))

(declare-fun tp!665024 () Bool)

(declare-fun tp!665028 () Bool)

(declare-fun e!1370966 () Bool)

(declare-fun array_inv!3032 (array!9485) Bool)

(assert (=> b!2145231 (= e!1370993 (and tp!665039 tp!665024 tp!665028 (array_inv!3030 (_keys!3112 (v!29045 (underlying!5825 (v!29046 (underlying!5826 (cache!3110 cacheUp!979))))))) (array_inv!3032 (_values!3095 (v!29045 (underlying!5825 (v!29046 (underlying!5826 (cache!3110 cacheUp!979))))))) e!1370966))))

(declare-fun b!2145232 () Bool)

(assert (=> b!2145232 (= e!1370978 e!1370991)))

(declare-fun b!2145233 () Bool)

(declare-fun lt!798720 () MutLongMap!2816)

(assert (=> b!2145233 (= e!1370957 (and e!1370987 ((_ is LongMap!2816) lt!798720)))))

(assert (=> b!2145233 (= lt!798720 (v!29048 (underlying!5828 (cache!3111 cacheFurthestNullable!114))))))

(declare-fun mapNonEmpty!13380 () Bool)

(declare-fun tp!665038 () Bool)

(declare-fun tp!665027 () Bool)

(assert (=> mapNonEmpty!13380 (= mapRes!13380 (and tp!665038 tp!665027))))

(declare-fun mapKey!13379 () (_ BitVec 32))

(declare-fun mapRest!13379 () (Array (_ BitVec 32) List!24538))

(declare-fun mapValue!13379 () List!24538)

(assert (=> mapNonEmpty!13380 (= (arr!4237 (_values!3096 (v!29047 (underlying!5827 (v!29048 (underlying!5828 (cache!3111 cacheFurthestNullable!114))))))) (store mapRest!13379 mapKey!13379 mapValue!13379))))

(declare-fun tp!665041 () Bool)

(declare-fun tp!665046 () Bool)

(declare-fun array_inv!3033 (array!9489) Bool)

(assert (=> b!2145234 (= e!1370976 (and tp!665020 tp!665046 tp!665041 (array_inv!3030 (_keys!3114 (v!29050 (underlying!5829 (v!29051 (underlying!5830 (cache!3112 cacheDown!1098))))))) (array_inv!3033 (_values!3097 (v!29050 (underlying!5829 (v!29051 (underlying!5830 (cache!3112 cacheDown!1098))))))) e!1370967))))

(declare-fun b!2145235 () Bool)

(assert (=> b!2145235 (= e!1370960 e!1370972)))

(declare-fun b!2145236 () Bool)

(declare-fun res!925690 () Bool)

(assert (=> b!2145236 (=> (not res!925690) (not e!1370969))))

(declare-fun valid!2196 (CacheDown!1870) Bool)

(assert (=> b!2145236 (= res!925690 (valid!2196 cacheDown!1098))))

(declare-fun b!2145237 () Bool)

(declare-fun tp!665047 () Bool)

(assert (=> b!2145237 (= e!1370988 (and (inv!32175 (c!340724 totalInput!851)) tp!665047))))

(declare-fun b!2145238 () Bool)

(declare-fun e!1370990 () Bool)

(declare-fun tp!665040 () Bool)

(assert (=> b!2145238 (= e!1370990 tp!665040)))

(declare-fun b!2145239 () Bool)

(declare-fun e!1370992 () Bool)

(declare-fun tp!665021 () Bool)

(assert (=> b!2145239 (= e!1370992 (and (inv!32175 (c!340724 (totalInput!3167 cacheFurthestNullable!114))) tp!665021))))

(declare-fun b!2145240 () Bool)

(assert (=> b!2145240 (= e!1370971 e!1370969)))

(declare-fun res!925684 () Bool)

(assert (=> b!2145240 (=> (not res!925684) (not e!1370969))))

(assert (=> b!2145240 (= res!925684 (and (= totalInputSize!296 lt!798718) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19145 (BalanceConc!15632) Int)

(assert (=> b!2145240 (= lt!798718 (size!19145 totalInput!851))))

(declare-fun b!2145241 () Bool)

(declare-fun tp!665023 () Bool)

(assert (=> b!2145241 (= e!1370966 (and tp!665023 mapRes!13379))))

(declare-fun condMapEmpty!13378 () Bool)

(declare-fun mapDefault!13379 () List!24537)

(assert (=> b!2145241 (= condMapEmpty!13378 (= (arr!4236 (_values!3095 (v!29045 (underlying!5825 (v!29046 (underlying!5826 (cache!3110 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24537)) mapDefault!13379)))))

(declare-fun b!2145242 () Bool)

(assert (=> b!2145242 (= e!1370968 (and setRes!16694 (inv!32173 (totalInput!3168 (h!29857 stack!8))) e!1370959))))

(declare-fun condSetEmpty!16694 () Bool)

(assert (=> b!2145242 (= condSetEmpty!16694 (= (z!5901 (h!29857 stack!8)) ((as const (Array Context!2738 Bool)) false)))))

(declare-fun mapIsEmpty!13380 () Bool)

(assert (=> mapIsEmpty!13380 mapRes!13378))

(declare-fun b!2145243 () Bool)

(declare-fun res!925689 () Bool)

(assert (=> b!2145243 (=> res!925689 e!1370970)))

(assert (=> b!2145243 (= res!925689 (= from!1043 totalInputSize!296))))

(declare-fun setElem!16694 () Context!2738)

(declare-fun tp!665025 () Bool)

(declare-fun setNonEmpty!16693 () Bool)

(declare-fun inv!32176 (Context!2738) Bool)

(assert (=> setNonEmpty!16693 (= setRes!16694 (and tp!665025 (inv!32176 setElem!16694) e!1370974))))

(declare-fun setRest!16693 () (InoxSet Context!2738))

(assert (=> setNonEmpty!16693 (= (z!5901 (h!29857 stack!8)) ((_ map or) (store ((as const (Array Context!2738 Bool)) false) setElem!16694 true) setRest!16693))))

(declare-fun b!2145244 () Bool)

(assert (=> b!2145244 (= e!1370970 e!1370985)))

(declare-fun res!925688 () Bool)

(assert (=> b!2145244 (=> res!925688 e!1370985)))

(declare-datatypes ((tuple3!3516 0))(
  ( (tuple3!3517 (_1!14389 (InoxSet Context!2738)) (_2!14389 CacheUp!1876) (_3!2228 CacheDown!1870)) )
))
(declare-fun lt!798722 () tuple3!3516)

(assert (=> b!2145244 (= res!925688 (not (= lt!798723 (furthestNullablePosition!91 (_1!14389 lt!798722) (+ 1 from!1043) totalInput!851 lt!798718 e!1370984))))))

(declare-fun c!340722 () Bool)

(assert (=> b!2145244 (= c!340722 (nullableZipper!153 (_1!14389 lt!798722)))))

(declare-fun derivationStepZipperMem!62 ((InoxSet Context!2738) C!11744 CacheUp!1876 CacheDown!1870) tuple3!3516)

(declare-fun apply!5977 (BalanceConc!15632 Int) C!11744)

(assert (=> b!2145244 (= lt!798722 (derivationStepZipperMem!62 z!3839 (apply!5977 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2145245 () Bool)

(assert (=> b!2145245 (= e!1370980 (and e!1370973 (inv!32173 (totalInput!3167 cacheFurthestNullable!114)) e!1370992))))

(declare-fun tp!665022 () Bool)

(declare-fun setElem!16693 () Context!2738)

(declare-fun setNonEmpty!16694 () Bool)

(assert (=> setNonEmpty!16694 (= setRes!16693 (and tp!665022 (inv!32176 setElem!16693) e!1370990))))

(declare-fun setRest!16694 () (InoxSet Context!2738))

(assert (=> setNonEmpty!16694 (= z!3839 ((_ map or) (store ((as const (Array Context!2738 Bool)) false) setElem!16693 true) setRest!16694))))

(declare-fun b!2145246 () Bool)

(assert (=> b!2145246 (= e!1370984 from!1043)))

(declare-fun b!2145247 () Bool)

(declare-fun res!925687 () Bool)

(assert (=> b!2145247 (=> res!925687 e!1370970)))

(declare-fun lostCauseZipper!129 ((InoxSet Context!2738)) Bool)

(assert (=> b!2145247 (= res!925687 (lostCauseZipper!129 z!3839))))

(declare-fun b!2145248 () Bool)

(assert (=> b!2145248 (= e!1370962 e!1370981)))

(assert (= (and start!208120 res!925685) b!2145240))

(assert (= (and b!2145240 res!925684) b!2145218))

(assert (= (and b!2145218 (not res!925691)) b!2145211))

(assert (= (and b!2145218 res!925692) b!2145205))

(assert (= (and b!2145205 res!925681) b!2145236))

(assert (= (and b!2145236 res!925690) b!2145230))

(assert (= (and b!2145230 res!925683) b!2145212))

(assert (= (and b!2145212 res!925686) b!2145227))

(assert (= (and b!2145227 res!925679) b!2145221))

(assert (= (and b!2145221 res!925682) b!2145206))

(assert (= (and b!2145206 (not res!925680)) b!2145243))

(assert (= (and b!2145243 (not res!925689)) b!2145247))

(assert (= (and b!2145247 (not res!925687)) b!2145244))

(assert (= (and b!2145244 c!340722) b!2145246))

(assert (= (and b!2145244 (not c!340722)) b!2145220))

(assert (= (and b!2145244 (not res!925688)) b!2145207))

(assert (= (and b!2145222 condMapEmpty!13380) mapIsEmpty!13379))

(assert (= (and b!2145222 (not condMapEmpty!13380)) mapNonEmpty!13380))

(assert (= b!2145217 b!2145222))

(assert (= b!2145225 b!2145217))

(assert (= b!2145215 b!2145225))

(assert (= (and b!2145233 ((_ is LongMap!2816) (v!29048 (underlying!5828 (cache!3111 cacheFurthestNullable!114))))) b!2145215))

(assert (= b!2145213 b!2145233))

(assert (= (and b!2145245 ((_ is HashMap!2730) (cache!3111 cacheFurthestNullable!114))) b!2145213))

(assert (= b!2145245 b!2145239))

(assert (= start!208120 b!2145245))

(assert (= (and b!2145223 condMapEmpty!13379) mapIsEmpty!13380))

(assert (= (and b!2145223 (not condMapEmpty!13379)) mapNonEmpty!13378))

(assert (= b!2145234 b!2145223))

(assert (= b!2145219 b!2145234))

(assert (= b!2145248 b!2145219))

(assert (= (and b!2145228 ((_ is LongMap!2817) (v!29051 (underlying!5830 (cache!3112 cacheDown!1098))))) b!2145248))

(assert (= b!2145209 b!2145228))

(assert (= (and b!2145232 ((_ is HashMap!2731) (cache!3112 cacheDown!1098))) b!2145209))

(assert (= start!208120 b!2145232))

(assert (= (and b!2145241 condMapEmpty!13378) mapIsEmpty!13378))

(assert (= (and b!2145241 (not condMapEmpty!13378)) mapNonEmpty!13379))

(assert (= b!2145231 b!2145241))

(assert (= b!2145229 b!2145231))

(assert (= b!2145235 b!2145229))

(assert (= (and b!2145208 ((_ is LongMap!2815) (v!29046 (underlying!5826 (cache!3110 cacheUp!979))))) b!2145235))

(assert (= b!2145216 b!2145208))

(assert (= (and b!2145214 ((_ is HashMap!2729) (cache!3110 cacheUp!979))) b!2145216))

(assert (= start!208120 b!2145214))

(assert (= (and start!208120 condSetEmpty!16693) setIsEmpty!16694))

(assert (= (and start!208120 (not condSetEmpty!16693)) setNonEmpty!16694))

(assert (= setNonEmpty!16694 b!2145238))

(assert (= start!208120 b!2145237))

(assert (= (and b!2145242 condSetEmpty!16694) setIsEmpty!16693))

(assert (= (and b!2145242 (not condSetEmpty!16694)) setNonEmpty!16693))

(assert (= setNonEmpty!16693 b!2145210))

(assert (= b!2145242 b!2145226))

(assert (= b!2145224 b!2145242))

(assert (= (and start!208120 ((_ is Cons!24456) stack!8)) b!2145224))

(declare-fun m!2589255 () Bool)

(assert (=> b!2145224 m!2589255))

(declare-fun m!2589257 () Bool)

(assert (=> b!2145231 m!2589257))

(declare-fun m!2589259 () Bool)

(assert (=> b!2145231 m!2589259))

(declare-fun m!2589261 () Bool)

(assert (=> b!2145207 m!2589261))

(declare-fun m!2589263 () Bool)

(assert (=> setNonEmpty!16693 m!2589263))

(declare-fun m!2589265 () Bool)

(assert (=> b!2145206 m!2589265))

(assert (=> b!2145206 m!2589261))

(declare-fun m!2589267 () Bool)

(assert (=> start!208120 m!2589267))

(declare-fun m!2589269 () Bool)

(assert (=> start!208120 m!2589269))

(declare-fun m!2589271 () Bool)

(assert (=> start!208120 m!2589271))

(declare-fun m!2589273 () Bool)

(assert (=> start!208120 m!2589273))

(declare-fun m!2589275 () Bool)

(assert (=> b!2145237 m!2589275))

(declare-fun m!2589277 () Bool)

(assert (=> b!2145217 m!2589277))

(declare-fun m!2589279 () Bool)

(assert (=> b!2145217 m!2589279))

(declare-fun m!2589281 () Bool)

(assert (=> b!2145245 m!2589281))

(declare-fun m!2589283 () Bool)

(assert (=> mapNonEmpty!13380 m!2589283))

(declare-fun m!2589285 () Bool)

(assert (=> mapNonEmpty!13379 m!2589285))

(declare-fun m!2589287 () Bool)

(assert (=> b!2145221 m!2589287))

(declare-fun m!2589289 () Bool)

(assert (=> b!2145242 m!2589289))

(declare-fun m!2589291 () Bool)

(assert (=> b!2145247 m!2589291))

(declare-fun m!2589293 () Bool)

(assert (=> b!2145218 m!2589293))

(declare-fun m!2589295 () Bool)

(assert (=> b!2145240 m!2589295))

(declare-fun m!2589297 () Bool)

(assert (=> b!2145205 m!2589297))

(declare-fun m!2589299 () Bool)

(assert (=> setNonEmpty!16694 m!2589299))

(declare-fun m!2589301 () Bool)

(assert (=> mapNonEmpty!13378 m!2589301))

(declare-fun m!2589303 () Bool)

(assert (=> b!2145226 m!2589303))

(assert (=> b!2145227 m!2589261))

(declare-fun m!2589305 () Bool)

(assert (=> b!2145227 m!2589305))

(declare-fun m!2589307 () Bool)

(assert (=> b!2145234 m!2589307))

(declare-fun m!2589309 () Bool)

(assert (=> b!2145234 m!2589309))

(declare-fun m!2589311 () Bool)

(assert (=> b!2145230 m!2589311))

(declare-fun m!2589313 () Bool)

(assert (=> b!2145239 m!2589313))

(declare-fun m!2589315 () Bool)

(assert (=> b!2145244 m!2589315))

(declare-fun m!2589317 () Bool)

(assert (=> b!2145244 m!2589317))

(declare-fun m!2589319 () Bool)

(assert (=> b!2145244 m!2589319))

(assert (=> b!2145244 m!2589319))

(declare-fun m!2589321 () Bool)

(assert (=> b!2145244 m!2589321))

(declare-fun m!2589323 () Bool)

(assert (=> b!2145236 m!2589323))

(check-sat (not b!2145242) (not b_next!63955) (not b!2145236) (not b_next!63949) (not setNonEmpty!16693) (not b!2145230) (not b!2145221) (not setNonEmpty!16694) (not b!2145244) (not b!2145234) (not b!2145239) b_and!172825 b_and!172829 (not mapNonEmpty!13380) (not mapNonEmpty!13378) (not b!2145238) (not b!2145226) (not b!2145231) b_and!172835 (not b_next!63953) (not mapNonEmpty!13379) (not b!2145218) (not b!2145237) (not b!2145222) (not b!2145217) (not b!2145205) (not b!2145240) b_and!172831 (not start!208120) b_and!172833 (not b!2145227) b_and!172827 (not b_next!63951) (not b_next!63959) (not b!2145241) (not b!2145207) (not b!2145245) (not b!2145206) (not b_next!63957) (not b!2145210) (not b!2145247) (not b!2145224) (not b!2145223))
(check-sat b_and!172835 (not b_next!63953) (not b_next!63955) b_and!172831 (not b_next!63949) (not b_next!63959) (not b_next!63957) b_and!172825 b_and!172829 b_and!172833 b_and!172827 (not b_next!63951))
