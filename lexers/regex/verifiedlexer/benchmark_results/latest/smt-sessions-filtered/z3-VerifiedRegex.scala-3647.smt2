; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207674 () Bool)

(assert start!207674)

(declare-fun b!2138052 () Bool)

(declare-fun b_free!62789 () Bool)

(declare-fun b_next!63493 () Bool)

(assert (=> b!2138052 (= b_free!62789 (not b_next!63493))))

(declare-fun tp!659866 () Bool)

(declare-fun b_and!172369 () Bool)

(assert (=> b!2138052 (= tp!659866 b_and!172369)))

(declare-fun b!2138038 () Bool)

(declare-fun b_free!62791 () Bool)

(declare-fun b_next!63495 () Bool)

(assert (=> b!2138038 (= b_free!62791 (not b_next!63495))))

(declare-fun tp!659867 () Bool)

(declare-fun b_and!172371 () Bool)

(assert (=> b!2138038 (= tp!659867 b_and!172371)))

(declare-fun b!2138049 () Bool)

(declare-fun b_free!62793 () Bool)

(declare-fun b_next!63497 () Bool)

(assert (=> b!2138049 (= b_free!62793 (not b_next!63497))))

(declare-fun tp!659861 () Bool)

(declare-fun b_and!172373 () Bool)

(assert (=> b!2138049 (= tp!659861 b_and!172373)))

(declare-fun b!2138070 () Bool)

(declare-fun b_free!62795 () Bool)

(declare-fun b_next!63499 () Bool)

(assert (=> b!2138070 (= b_free!62795 (not b_next!63499))))

(declare-fun tp!659873 () Bool)

(declare-fun b_and!172375 () Bool)

(assert (=> b!2138070 (= tp!659873 b_and!172375)))

(declare-fun b!2138077 () Bool)

(declare-fun b_free!62797 () Bool)

(declare-fun b_next!63501 () Bool)

(assert (=> b!2138077 (= b_free!62797 (not b_next!63501))))

(declare-fun tp!659869 () Bool)

(declare-fun b_and!172377 () Bool)

(assert (=> b!2138077 (= tp!659869 b_and!172377)))

(declare-fun b!2138037 () Bool)

(declare-fun b_free!62799 () Bool)

(declare-fun b_next!63503 () Bool)

(assert (=> b!2138037 (= b_free!62799 (not b_next!63503))))

(declare-fun tp!659865 () Bool)

(declare-fun b_and!172379 () Bool)

(assert (=> b!2138037 (= tp!659865 b_and!172379)))

(declare-fun b!2138048 () Bool)

(assert (=> b!2138048 true))

(declare-fun bs!444415 () Bool)

(declare-fun b!2138074 () Bool)

(assert (= bs!444415 (and b!2138074 b!2138048)))

(declare-fun lambda!79821 () Int)

(declare-fun lambda!79820 () Int)

(assert (=> bs!444415 (not (= lambda!79821 lambda!79820))))

(assert (=> b!2138074 true))

(declare-fun bs!444416 () Bool)

(declare-fun b!2138073 () Bool)

(assert (= bs!444416 (and b!2138073 b!2138048)))

(declare-fun lambda!79822 () Int)

(declare-fun lt!797723 () Int)

(declare-fun lt!797714 () Int)

(assert (=> bs!444416 (= (= lt!797714 lt!797723) (= lambda!79822 lambda!79820))))

(declare-fun bs!444417 () Bool)

(assert (= bs!444417 (and b!2138073 b!2138074)))

(assert (=> bs!444417 (not (= lambda!79822 lambda!79821))))

(assert (=> b!2138073 true))

(declare-fun b!2138034 () Bool)

(declare-fun res!923591 () Bool)

(declare-fun e!1365064 () Bool)

(assert (=> b!2138034 (=> res!923591 e!1365064)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!11668 0))(
  ( (C!11669 (val!6820 Int)) )
))
(declare-datatypes ((Regex!5761 0))(
  ( (ElementMatch!5761 (c!340405 C!11668)) (Concat!10063 (regOne!12034 Regex!5761) (regTwo!12034 Regex!5761)) (EmptyExpr!5761) (Star!5761 (reg!6090 Regex!5761)) (EmptyLang!5761) (Union!5761 (regOne!12035 Regex!5761) (regTwo!12035 Regex!5761)) )
))
(declare-datatypes ((List!24327 0))(
  ( (Nil!24243) (Cons!24243 (h!29644 Regex!5761) (t!196855 List!24327)) )
))
(declare-datatypes ((Context!2662 0))(
  ( (Context!2663 (exprs!1831 List!24327)) )
))
(declare-fun z!3839 () (InoxSet Context!2662))

(declare-fun lostCauseZipper!106 ((InoxSet Context!2662)) Bool)

(assert (=> b!2138034 (= res!923591 (lostCauseZipper!106 z!3839))))

(declare-fun b!2138035 () Bool)

(declare-fun e!1365042 () Bool)

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2138035 (= e!1365042 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2138036 () Bool)

(declare-fun e!1365057 () Bool)

(declare-fun e!1365051 () Bool)

(declare-datatypes ((List!24328 0))(
  ( (Nil!24244) (Cons!24244 (h!29645 C!11668) (t!196856 List!24328)) )
))
(declare-datatypes ((IArray!15803 0))(
  ( (IArray!15804 (innerList!7959 List!24328)) )
))
(declare-datatypes ((Conc!7899 0))(
  ( (Node!7899 (left!18660 Conc!7899) (right!18990 Conc!7899) (csize!16028 Int) (cheight!8110 Int)) (Leaf!11547 (xs!10841 IArray!15803) (csize!16029 Int)) (Empty!7899) )
))
(declare-datatypes ((BalanceConc!15560 0))(
  ( (BalanceConc!15561 (c!340406 Conc!7899)) )
))
(declare-datatypes ((StackFrame!206 0))(
  ( (StackFrame!207 (z!5836 (InoxSet Context!2662)) (from!2719 Int) (lastNullablePos!406 Int) (res!923602 Int) (totalInput!3094 BalanceConc!15560)) )
))
(declare-datatypes ((List!24329 0))(
  ( (Nil!24245) (Cons!24245 (h!29646 StackFrame!206) (t!196857 List!24329)) )
))
(declare-fun stack!8 () List!24329)

(declare-fun setRes!16076 () Bool)

(declare-fun inv!31913 (BalanceConc!15560) Bool)

(assert (=> b!2138036 (= e!1365057 (and setRes!16076 (inv!31913 (totalInput!3094 (h!29646 stack!8))) e!1365051))))

(declare-fun condSetEmpty!16076 () Bool)

(assert (=> b!2138036 (= condSetEmpty!16076 (= (z!5836 (h!29646 stack!8)) ((as const (Array Context!2662 Bool)) false)))))

(declare-fun e!1365061 () Bool)

(declare-fun tp!659862 () Bool)

(declare-fun setElem!16075 () Context!2662)

(declare-fun setNonEmpty!16075 () Bool)

(declare-fun inv!31914 (Context!2662) Bool)

(assert (=> setNonEmpty!16075 (= setRes!16076 (and tp!659862 (inv!31914 setElem!16075) e!1365061))))

(declare-fun setRest!16076 () (InoxSet Context!2662))

(assert (=> setNonEmpty!16075 (= (z!5836 (h!29646 stack!8)) ((_ map or) (store ((as const (Array Context!2662 Bool)) false) setElem!16075 true) setRest!16076))))

(declare-fun setElem!16076 () Context!2662)

(declare-fun tp!659864 () Bool)

(declare-fun setNonEmpty!16076 () Bool)

(declare-fun setRes!16075 () Bool)

(declare-fun e!1365032 () Bool)

(assert (=> setNonEmpty!16076 (= setRes!16075 (and tp!659864 (inv!31914 setElem!16076) e!1365032))))

(declare-fun setRest!16075 () (InoxSet Context!2662))

(assert (=> setNonEmpty!16076 (= z!3839 ((_ map or) (store ((as const (Array Context!2662 Bool)) false) setElem!16076 true) setRest!16075))))

(declare-fun tp!659858 () Bool)

(declare-fun e!1365039 () Bool)

(declare-fun tp!659871 () Bool)

(declare-fun e!1365034 () Bool)

(declare-datatypes ((tuple3!3350 0))(
  ( (tuple3!3351 (_1!14171 (InoxSet Context!2662)) (_2!14171 Int) (_3!2145 Int)) )
))
(declare-datatypes ((tuple2!24052 0))(
  ( (tuple2!24053 (_1!14172 tuple3!3350) (_2!14172 Int)) )
))
(declare-datatypes ((List!24330 0))(
  ( (Nil!24246) (Cons!24246 (h!29647 tuple2!24052) (t!196858 List!24330)) )
))
(declare-datatypes ((array!9175 0))(
  ( (array!9176 (arr!4097 (Array (_ BitVec 32) (_ BitVec 64))) (size!18961 (_ BitVec 32))) )
))
(declare-datatypes ((array!9177 0))(
  ( (array!9178 (arr!4098 (Array (_ BitVec 32) List!24330)) (size!18962 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5430 0))(
  ( (LongMapFixedSize!5431 (defaultEntry!3080 Int) (mask!6911 (_ BitVec 32)) (extraKeys!2963 (_ BitVec 32)) (zeroValue!2973 List!24330) (minValue!2973 List!24330) (_size!5481 (_ BitVec 32)) (_keys!3012 array!9175) (_values!2995 array!9177) (_vacant!2776 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10685 0))(
  ( (Cell!10686 (v!28817 LongMapFixedSize!5430)) )
))
(declare-datatypes ((MutLongMap!2715 0))(
  ( (LongMap!2715 (underlying!5625 Cell!10685)) (MutLongMapExt!2714 (__x!16321 Int)) )
))
(declare-datatypes ((Cell!10687 0))(
  ( (Cell!10688 (v!28818 MutLongMap!2715)) )
))
(declare-datatypes ((Hashable!2629 0))(
  ( (HashableExt!2628 (__x!16322 Int)) )
))
(declare-datatypes ((MutableMap!2629 0))(
  ( (MutableMapExt!2628 (__x!16323 Int)) (HashMap!2629 (underlying!5626 Cell!10687) (hashF!4552 Hashable!2629) (_size!5482 (_ BitVec 32)) (defaultValue!2791 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!766 0))(
  ( (CacheFurthestNullable!767 (cache!3010 MutableMap!2629) (totalInput!3095 BalanceConc!15560)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!766)

(declare-fun array_inv!2930 (array!9175) Bool)

(declare-fun array_inv!2931 (array!9177) Bool)

(assert (=> b!2138037 (= e!1365039 (and tp!659865 tp!659858 tp!659871 (array_inv!2930 (_keys!3012 (v!28817 (underlying!5625 (v!28818 (underlying!5626 (cache!3010 cacheFurthestNullable!114))))))) (array_inv!2931 (_values!2995 (v!28817 (underlying!5625 (v!28818 (underlying!5626 (cache!3010 cacheFurthestNullable!114))))))) e!1365034))))

(declare-fun e!1365054 () Bool)

(declare-fun e!1365043 () Bool)

(assert (=> b!2138038 (= e!1365054 (and e!1365043 tp!659867))))

(declare-fun b!2138039 () Bool)

(declare-fun e!1365035 () Bool)

(declare-datatypes ((tuple3!3352 0))(
  ( (tuple3!3353 (_1!14173 Regex!5761) (_2!14173 Context!2662) (_3!2146 C!11668)) )
))
(declare-datatypes ((tuple2!24054 0))(
  ( (tuple2!24055 (_1!14174 tuple3!3352) (_2!14174 (InoxSet Context!2662))) )
))
(declare-datatypes ((List!24331 0))(
  ( (Nil!24247) (Cons!24247 (h!29648 tuple2!24054) (t!196859 List!24331)) )
))
(declare-datatypes ((array!9179 0))(
  ( (array!9180 (arr!4099 (Array (_ BitVec 32) List!24331)) (size!18963 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5432 0))(
  ( (LongMapFixedSize!5433 (defaultEntry!3081 Int) (mask!6912 (_ BitVec 32)) (extraKeys!2964 (_ BitVec 32)) (zeroValue!2974 List!24331) (minValue!2974 List!24331) (_size!5483 (_ BitVec 32)) (_keys!3013 array!9175) (_values!2996 array!9179) (_vacant!2777 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10689 0))(
  ( (Cell!10690 (v!28819 LongMapFixedSize!5432)) )
))
(declare-datatypes ((MutLongMap!2716 0))(
  ( (LongMap!2716 (underlying!5627 Cell!10689)) (MutLongMapExt!2715 (__x!16324 Int)) )
))
(declare-fun lt!797720 () MutLongMap!2716)

(get-info :version)

(assert (=> b!2138039 (= e!1365043 (and e!1365035 ((_ is LongMap!2716) lt!797720)))))

(declare-datatypes ((Hashable!2630 0))(
  ( (HashableExt!2629 (__x!16325 Int)) )
))
(declare-datatypes ((Cell!10691 0))(
  ( (Cell!10692 (v!28820 MutLongMap!2716)) )
))
(declare-datatypes ((MutableMap!2630 0))(
  ( (MutableMapExt!2629 (__x!16326 Int)) (HashMap!2630 (underlying!5628 Cell!10691) (hashF!4553 Hashable!2630) (_size!5484 (_ BitVec 32)) (defaultValue!2792 Int)) )
))
(declare-datatypes ((CacheDown!1800 0))(
  ( (CacheDown!1801 (cache!3011 MutableMap!2630)) )
))
(declare-fun cacheDown!1098 () CacheDown!1800)

(assert (=> b!2138039 (= lt!797720 (v!28820 (underlying!5628 (cache!3011 cacheDown!1098))))))

(declare-fun b!2138040 () Bool)

(declare-fun e!1365037 () Bool)

(declare-fun e!1365049 () Bool)

(assert (=> b!2138040 (= e!1365037 e!1365049)))

(declare-fun b!2138033 () Bool)

(declare-fun e!1365068 () Int)

(assert (=> b!2138033 (= e!1365068 from!1043)))

(declare-fun res!923586 () Bool)

(declare-fun e!1365050 () Bool)

(assert (=> start!207674 (=> (not res!923586) (not e!1365050))))

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207674 (= res!923586 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207674 e!1365050))

(declare-fun e!1365067 () Bool)

(declare-fun inv!31915 (CacheFurthestNullable!766) Bool)

(assert (=> start!207674 (and (inv!31915 cacheFurthestNullable!114) e!1365067)))

(assert (=> start!207674 true))

(declare-fun e!1365055 () Bool)

(declare-fun inv!31916 (CacheDown!1800) Bool)

(assert (=> start!207674 (and (inv!31916 cacheDown!1098) e!1365055)))

(declare-datatypes ((tuple2!24056 0))(
  ( (tuple2!24057 (_1!14175 Context!2662) (_2!14175 C!11668)) )
))
(declare-datatypes ((tuple2!24058 0))(
  ( (tuple2!24059 (_1!14176 tuple2!24056) (_2!14176 (InoxSet Context!2662))) )
))
(declare-datatypes ((List!24332 0))(
  ( (Nil!24248) (Cons!24248 (h!29649 tuple2!24058) (t!196860 List!24332)) )
))
(declare-datatypes ((array!9181 0))(
  ( (array!9182 (arr!4100 (Array (_ BitVec 32) List!24332)) (size!18964 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5434 0))(
  ( (LongMapFixedSize!5435 (defaultEntry!3082 Int) (mask!6913 (_ BitVec 32)) (extraKeys!2965 (_ BitVec 32)) (zeroValue!2975 List!24332) (minValue!2975 List!24332) (_size!5485 (_ BitVec 32)) (_keys!3014 array!9175) (_values!2997 array!9181) (_vacant!2778 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10693 0))(
  ( (Cell!10694 (v!28821 LongMapFixedSize!5434)) )
))
(declare-datatypes ((MutLongMap!2717 0))(
  ( (LongMap!2717 (underlying!5629 Cell!10693)) (MutLongMapExt!2716 (__x!16327 Int)) )
))
(declare-datatypes ((Cell!10695 0))(
  ( (Cell!10696 (v!28822 MutLongMap!2717)) )
))
(declare-datatypes ((Hashable!2631 0))(
  ( (HashableExt!2630 (__x!16328 Int)) )
))
(declare-datatypes ((MutableMap!2631 0))(
  ( (MutableMapExt!2630 (__x!16329 Int)) (HashMap!2631 (underlying!5630 Cell!10695) (hashF!4554 Hashable!2631) (_size!5486 (_ BitVec 32)) (defaultValue!2793 Int)) )
))
(declare-datatypes ((CacheUp!1816 0))(
  ( (CacheUp!1817 (cache!3012 MutableMap!2631)) )
))
(declare-fun cacheUp!979 () CacheUp!1816)

(declare-fun e!1365036 () Bool)

(declare-fun inv!31917 (CacheUp!1816) Bool)

(assert (=> start!207674 (and (inv!31917 cacheUp!979) e!1365036)))

(declare-fun condSetEmpty!16075 () Bool)

(assert (=> start!207674 (= condSetEmpty!16075 (= z!3839 ((as const (Array Context!2662 Bool)) false)))))

(assert (=> start!207674 setRes!16075))

(declare-fun totalInput!851 () BalanceConc!15560)

(declare-fun e!1365045 () Bool)

(assert (=> start!207674 (and (inv!31913 totalInput!851) e!1365045)))

(declare-fun e!1365046 () Bool)

(assert (=> start!207674 e!1365046))

(declare-fun b!2138041 () Bool)

(declare-fun e!1365066 () Bool)

(assert (=> b!2138041 (= e!1365050 e!1365066)))

(declare-fun res!923592 () Bool)

(assert (=> b!2138041 (=> (not res!923592) (not e!1365066))))

(declare-fun lt!797718 () Int)

(assert (=> b!2138041 (= res!923592 (and (= totalInputSize!296 lt!797718) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18965 (BalanceConc!15560) Int)

(assert (=> b!2138041 (= lt!797718 (size!18965 totalInput!851))))

(declare-fun mapNonEmpty!12961 () Bool)

(declare-fun mapRes!12962 () Bool)

(declare-fun tp!659875 () Bool)

(declare-fun tp!659882 () Bool)

(assert (=> mapNonEmpty!12961 (= mapRes!12962 (and tp!659875 tp!659882))))

(declare-fun mapKey!12963 () (_ BitVec 32))

(declare-fun mapValue!12963 () List!24330)

(declare-fun mapRest!12962 () (Array (_ BitVec 32) List!24330))

(assert (=> mapNonEmpty!12961 (= (arr!4098 (_values!2995 (v!28817 (underlying!5625 (v!28818 (underlying!5626 (cache!3010 cacheFurthestNullable!114))))))) (store mapRest!12962 mapKey!12963 mapValue!12963))))

(declare-fun b!2138042 () Bool)

(declare-fun e!1365040 () Bool)

(declare-fun tp!659870 () Bool)

(declare-fun mapRes!12963 () Bool)

(assert (=> b!2138042 (= e!1365040 (and tp!659870 mapRes!12963))))

(declare-fun condMapEmpty!12961 () Bool)

(declare-fun mapDefault!12961 () List!24332)

(assert (=> b!2138042 (= condMapEmpty!12961 (= (arr!4100 (_values!2997 (v!28821 (underlying!5629 (v!28822 (underlying!5630 (cache!3012 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24332)) mapDefault!12961)))))

(declare-fun b!2138043 () Bool)

(declare-fun e!1365056 () Bool)

(declare-fun tp!659854 () Bool)

(declare-fun mapRes!12961 () Bool)

(assert (=> b!2138043 (= e!1365056 (and tp!659854 mapRes!12961))))

(declare-fun condMapEmpty!12963 () Bool)

(declare-fun mapDefault!12962 () List!24331)

(assert (=> b!2138043 (= condMapEmpty!12963 (= (arr!4099 (_values!2996 (v!28819 (underlying!5627 (v!28820 (underlying!5628 (cache!3011 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24331)) mapDefault!12962)))))

(declare-fun b!2138044 () Bool)

(declare-fun e!1365033 () Bool)

(declare-fun e!1365047 () Bool)

(declare-fun lt!797717 () MutLongMap!2715)

(assert (=> b!2138044 (= e!1365033 (and e!1365047 ((_ is LongMap!2715) lt!797717)))))

(assert (=> b!2138044 (= lt!797717 (v!28818 (underlying!5626 (cache!3010 cacheFurthestNullable!114))))))

(declare-fun b!2138045 () Bool)

(declare-fun res!923589 () Bool)

(assert (=> b!2138045 (=> (not res!923589) (not e!1365066))))

(assert (=> b!2138045 (= res!923589 (= (totalInput!3095 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2138046 () Bool)

(declare-fun tp!659860 () Bool)

(assert (=> b!2138046 (= e!1365034 (and tp!659860 mapRes!12962))))

(declare-fun condMapEmpty!12962 () Bool)

(declare-fun mapDefault!12963 () List!24330)

(assert (=> b!2138046 (= condMapEmpty!12962 (= (arr!4098 (_values!2995 (v!28817 (underlying!5625 (v!28818 (underlying!5626 (cache!3010 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24330)) mapDefault!12963)))))

(declare-fun b!2138047 () Bool)

(declare-fun tp!659855 () Bool)

(assert (=> b!2138047 (= e!1365032 tp!659855)))

(declare-fun e!1365052 () Bool)

(assert (=> b!2138048 (= e!1365066 e!1365052)))

(declare-fun res!923587 () Bool)

(assert (=> b!2138048 (=> (not res!923587) (not e!1365052))))

(declare-fun forall!4947 (List!24329 Int) Bool)

(assert (=> b!2138048 (= res!923587 (forall!4947 stack!8 lambda!79820))))

(declare-fun furthestNullablePosition!66 ((InoxSet Context!2662) Int BalanceConc!15560 Int Int) Int)

(assert (=> b!2138048 (= lt!797723 (furthestNullablePosition!66 z!3839 from!1043 totalInput!851 lt!797718 lastNullablePos!123))))

(declare-fun e!1365038 () Bool)

(assert (=> b!2138049 (= e!1365038 (and e!1365033 tp!659861))))

(declare-fun b!2138050 () Bool)

(declare-fun res!923590 () Bool)

(assert (=> b!2138050 (=> (not res!923590) (not e!1365066))))

(declare-fun valid!2121 (CacheDown!1800) Bool)

(assert (=> b!2138050 (= res!923590 (valid!2121 cacheDown!1098))))

(declare-fun tp!659863 () Bool)

(declare-fun b!2138051 () Bool)

(declare-fun inv!31918 (StackFrame!206) Bool)

(assert (=> b!2138051 (= e!1365046 (and (inv!31918 (h!29646 stack!8)) e!1365057 tp!659863))))

(declare-fun e!1365058 () Bool)

(declare-fun e!1365031 () Bool)

(assert (=> b!2138052 (= e!1365058 (and e!1365031 tp!659866))))

(declare-fun b!2138053 () Bool)

(declare-fun tp!659876 () Bool)

(declare-fun inv!31919 (Conc!7899) Bool)

(assert (=> b!2138053 (= e!1365045 (and (inv!31919 (c!340406 totalInput!851)) tp!659876))))

(declare-fun mapIsEmpty!12961 () Bool)

(assert (=> mapIsEmpty!12961 mapRes!12961))

(declare-fun b!2138054 () Bool)

(declare-fun lt!797721 () MutLongMap!2717)

(assert (=> b!2138054 (= e!1365031 (and e!1365037 ((_ is LongMap!2717) lt!797721)))))

(assert (=> b!2138054 (= lt!797721 (v!28822 (underlying!5630 (cache!3012 cacheUp!979))))))

(declare-fun b!2138055 () Bool)

(declare-fun res!923594 () Bool)

(declare-fun e!1365030 () Bool)

(assert (=> b!2138055 (=> res!923594 e!1365030)))

(declare-fun lt!797722 () List!24329)

(assert (=> b!2138055 (= res!923594 (not (forall!4947 lt!797722 lambda!79821)))))

(declare-fun b!2138056 () Bool)

(declare-fun res!923597 () Bool)

(assert (=> b!2138056 (=> res!923597 e!1365064)))

(assert (=> b!2138056 (= res!923597 (= from!1043 totalInputSize!296))))

(declare-fun b!2138057 () Bool)

(assert (=> b!2138057 (= e!1365068 lastNullablePos!123)))

(declare-fun b!2138058 () Bool)

(declare-fun e!1365053 () Bool)

(assert (=> b!2138058 (= e!1365064 e!1365053)))

(declare-fun res!923596 () Bool)

(assert (=> b!2138058 (=> res!923596 e!1365053)))

(assert (=> b!2138058 (= res!923596 (not (= lt!797723 lt!797714)))))

(declare-fun lt!797716 () Int)

(declare-datatypes ((tuple3!3354 0))(
  ( (tuple3!3355 (_1!14177 (InoxSet Context!2662)) (_2!14177 CacheUp!1816) (_3!2147 CacheDown!1800)) )
))
(declare-fun lt!797715 () tuple3!3354)

(assert (=> b!2138058 (= lt!797714 (furthestNullablePosition!66 (_1!14177 lt!797715) (+ 1 from!1043) totalInput!851 lt!797718 lt!797716))))

(assert (=> b!2138058 (= lt!797722 (Cons!24245 (StackFrame!207 z!3839 from!1043 lastNullablePos!123 lt!797723 totalInput!851) stack!8))))

(assert (=> b!2138058 (= lt!797716 e!1365068)))

(declare-fun c!340404 () Bool)

(declare-fun nullableZipper!130 ((InoxSet Context!2662)) Bool)

(assert (=> b!2138058 (= c!340404 (nullableZipper!130 (_1!14177 lt!797715)))))

(declare-fun derivationStepZipperMem!52 ((InoxSet Context!2662) C!11668 CacheUp!1816 CacheDown!1800) tuple3!3354)

(declare-fun apply!5953 (BalanceConc!15560 Int) C!11668)

(assert (=> b!2138058 (= lt!797715 (derivationStepZipperMem!52 z!3839 (apply!5953 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2138059 () Bool)

(assert (=> b!2138059 (= e!1365055 e!1365054)))

(declare-fun b!2138060 () Bool)

(declare-fun e!1365065 () Bool)

(assert (=> b!2138060 (= e!1365049 e!1365065)))

(declare-fun mapIsEmpty!12962 () Bool)

(assert (=> mapIsEmpty!12962 mapRes!12962))

(declare-fun mapNonEmpty!12962 () Bool)

(declare-fun tp!659874 () Bool)

(declare-fun tp!659877 () Bool)

(assert (=> mapNonEmpty!12962 (= mapRes!12963 (and tp!659874 tp!659877))))

(declare-fun mapKey!12961 () (_ BitVec 32))

(declare-fun mapRest!12961 () (Array (_ BitVec 32) List!24332))

(declare-fun mapValue!12962 () List!24332)

(assert (=> mapNonEmpty!12962 (= (arr!4100 (_values!2997 (v!28821 (underlying!5629 (v!28822 (underlying!5630 (cache!3012 cacheUp!979))))))) (store mapRest!12961 mapKey!12961 mapValue!12962))))

(declare-fun b!2138061 () Bool)

(assert (=> b!2138061 (= e!1365030 true)))

(declare-datatypes ((tuple2!24060 0))(
  ( (tuple2!24061 (_1!14178 Int) (_2!14178 List!24329)) )
))
(declare-datatypes ((tuple3!3356 0))(
  ( (tuple3!3357 (_1!14179 tuple2!24060) (_2!14179 CacheUp!1816) (_3!2148 CacheDown!1800)) )
))
(declare-fun lt!797719 () tuple3!3356)

(declare-fun furthestNullablePositionStackMem!16 ((InoxSet Context!2662) Int BalanceConc!15560 Int Int List!24329 CacheUp!1816 CacheDown!1800 CacheFurthestNullable!766) tuple3!3356)

(assert (=> b!2138061 (= lt!797719 (furthestNullablePositionStackMem!16 (_1!14177 lt!797715) (+ 1 from!1043) totalInput!851 totalInputSize!296 lt!797716 lt!797722 (_2!14177 lt!797715) (_3!2147 lt!797715) cacheFurthestNullable!114))))

(declare-fun mapNonEmpty!12963 () Bool)

(declare-fun tp!659880 () Bool)

(declare-fun tp!659879 () Bool)

(assert (=> mapNonEmpty!12963 (= mapRes!12961 (and tp!659880 tp!659879))))

(declare-fun mapKey!12962 () (_ BitVec 32))

(declare-fun mapValue!12961 () List!24331)

(declare-fun mapRest!12963 () (Array (_ BitVec 32) List!24331))

(assert (=> mapNonEmpty!12963 (= (arr!4099 (_values!2996 (v!28819 (underlying!5627 (v!28820 (underlying!5628 (cache!3011 cacheDown!1098))))))) (store mapRest!12963 mapKey!12962 mapValue!12961))))

(declare-fun b!2138062 () Bool)

(declare-fun e!1365059 () Bool)

(assert (=> b!2138062 (= e!1365067 (and e!1365038 (inv!31913 (totalInput!3095 cacheFurthestNullable!114)) e!1365059))))

(declare-fun b!2138063 () Bool)

(declare-fun res!923595 () Bool)

(assert (=> b!2138063 (=> (not res!923595) (not e!1365066))))

(declare-fun valid!2122 (CacheUp!1816) Bool)

(assert (=> b!2138063 (= res!923595 (valid!2122 cacheUp!979))))

(declare-fun b!2138064 () Bool)

(declare-fun e!1365044 () Bool)

(declare-fun e!1365048 () Bool)

(assert (=> b!2138064 (= e!1365044 e!1365048)))

(declare-fun mapIsEmpty!12963 () Bool)

(assert (=> mapIsEmpty!12963 mapRes!12963))

(declare-fun b!2138065 () Bool)

(declare-fun tp!659856 () Bool)

(assert (=> b!2138065 (= e!1365051 (and (inv!31919 (c!340406 (totalInput!3094 (h!29646 stack!8)))) tp!659856))))

(declare-fun b!2138066 () Bool)

(declare-fun res!923600 () Bool)

(assert (=> b!2138066 (=> (not res!923600) (not e!1365066))))

(declare-fun valid!2123 (CacheFurthestNullable!766) Bool)

(assert (=> b!2138066 (= res!923600 (valid!2123 cacheFurthestNullable!114))))

(declare-fun setIsEmpty!16075 () Bool)

(assert (=> setIsEmpty!16075 setRes!16075))

(declare-fun b!2138067 () Bool)

(declare-fun tp!659878 () Bool)

(assert (=> b!2138067 (= e!1365061 tp!659878)))

(declare-fun b!2138068 () Bool)

(declare-fun e!1365041 () Bool)

(assert (=> b!2138068 (= e!1365047 e!1365041)))

(declare-fun b!2138069 () Bool)

(assert (=> b!2138069 (= e!1365036 e!1365058)))

(declare-fun tp!659881 () Bool)

(declare-fun tp!659859 () Bool)

(declare-fun array_inv!2932 (array!9181) Bool)

(assert (=> b!2138070 (= e!1365065 (and tp!659873 tp!659881 tp!659859 (array_inv!2930 (_keys!3014 (v!28821 (underlying!5629 (v!28822 (underlying!5630 (cache!3012 cacheUp!979))))))) (array_inv!2932 (_values!2997 (v!28821 (underlying!5629 (v!28822 (underlying!5630 (cache!3012 cacheUp!979))))))) e!1365040))))

(declare-fun b!2138071 () Bool)

(assert (=> b!2138071 (= e!1365035 e!1365044)))

(declare-fun b!2138072 () Bool)

(assert (=> b!2138072 (= e!1365052 (not e!1365064))))

(declare-fun res!923599 () Bool)

(assert (=> b!2138072 (=> res!923599 e!1365064)))

(declare-datatypes ((Option!4923 0))(
  ( (None!4922) (Some!4922 (v!28823 Int)) )
))
(declare-fun get!7413 (CacheFurthestNullable!766 (InoxSet Context!2662) Int Int) Option!4923)

(assert (=> b!2138072 (= res!923599 ((_ is Some!4922) (get!7413 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2138072 (forall!4947 stack!8 lambda!79820)))

(assert (=> b!2138073 (= e!1365053 e!1365030)))

(declare-fun res!923601 () Bool)

(assert (=> b!2138073 (=> res!923601 e!1365030)))

(assert (=> b!2138073 (= res!923601 (not (forall!4947 stack!8 lambda!79822)))))

(assert (=> b!2138073 (forall!4947 stack!8 lambda!79822)))

(declare-datatypes ((Unit!37675 0))(
  ( (Unit!37676) )
))
(declare-fun lt!797713 () Unit!37675)

(declare-fun lemmaStackPreservesForEqualRes!23 (List!24329 Int Int) Unit!37675)

(assert (=> b!2138073 (= lt!797713 (lemmaStackPreservesForEqualRes!23 stack!8 lt!797723 lt!797714))))

(assert (=> b!2138073 (forall!4947 stack!8 lambda!79820)))

(declare-fun res!923585 () Bool)

(assert (=> b!2138074 (=> (not res!923585) (not e!1365052))))

(assert (=> b!2138074 (= res!923585 (forall!4947 stack!8 lambda!79821))))

(declare-fun b!2138075 () Bool)

(assert (=> b!2138075 (= e!1365041 e!1365039)))

(declare-fun b!2138076 () Bool)

(declare-fun res!923593 () Bool)

(assert (=> b!2138076 (=> res!923593 e!1365030)))

(assert (=> b!2138076 (= res!923593 (not (forall!4947 lt!797722 lambda!79822)))))

(declare-fun tp!659857 () Bool)

(declare-fun tp!659868 () Bool)

(declare-fun array_inv!2933 (array!9179) Bool)

(assert (=> b!2138077 (= e!1365048 (and tp!659869 tp!659868 tp!659857 (array_inv!2930 (_keys!3013 (v!28819 (underlying!5627 (v!28820 (underlying!5628 (cache!3011 cacheDown!1098))))))) (array_inv!2933 (_values!2996 (v!28819 (underlying!5627 (v!28820 (underlying!5628 (cache!3011 cacheDown!1098))))))) e!1365056))))

(declare-fun b!2138078 () Bool)

(declare-fun tp!659872 () Bool)

(assert (=> b!2138078 (= e!1365059 (and (inv!31919 (c!340406 (totalInput!3095 cacheFurthestNullable!114))) tp!659872))))

(declare-fun setIsEmpty!16076 () Bool)

(assert (=> setIsEmpty!16076 setRes!16076))

(declare-fun b!2138079 () Bool)

(declare-fun res!923598 () Bool)

(assert (=> b!2138079 (=> (not res!923598) (not e!1365066))))

(assert (=> b!2138079 (= res!923598 e!1365042)))

(declare-fun res!923588 () Bool)

(assert (=> b!2138079 (=> res!923588 e!1365042)))

(assert (=> b!2138079 (= res!923588 (not (nullableZipper!130 z!3839)))))

(assert (= (and start!207674 res!923586) b!2138041))

(assert (= (and b!2138041 res!923592) b!2138079))

(assert (= (and b!2138079 (not res!923588)) b!2138035))

(assert (= (and b!2138079 res!923598) b!2138063))

(assert (= (and b!2138063 res!923595) b!2138050))

(assert (= (and b!2138050 res!923590) b!2138066))

(assert (= (and b!2138066 res!923600) b!2138045))

(assert (= (and b!2138045 res!923589) b!2138048))

(assert (= (and b!2138048 res!923587) b!2138074))

(assert (= (and b!2138074 res!923585) b!2138072))

(assert (= (and b!2138072 (not res!923599)) b!2138056))

(assert (= (and b!2138056 (not res!923597)) b!2138034))

(assert (= (and b!2138034 (not res!923591)) b!2138058))

(assert (= (and b!2138058 c!340404) b!2138033))

(assert (= (and b!2138058 (not c!340404)) b!2138057))

(assert (= (and b!2138058 (not res!923596)) b!2138073))

(assert (= (and b!2138073 (not res!923601)) b!2138076))

(assert (= (and b!2138076 (not res!923593)) b!2138055))

(assert (= (and b!2138055 (not res!923594)) b!2138061))

(assert (= (and b!2138046 condMapEmpty!12962) mapIsEmpty!12962))

(assert (= (and b!2138046 (not condMapEmpty!12962)) mapNonEmpty!12961))

(assert (= b!2138037 b!2138046))

(assert (= b!2138075 b!2138037))

(assert (= b!2138068 b!2138075))

(assert (= (and b!2138044 ((_ is LongMap!2715) (v!28818 (underlying!5626 (cache!3010 cacheFurthestNullable!114))))) b!2138068))

(assert (= b!2138049 b!2138044))

(assert (= (and b!2138062 ((_ is HashMap!2629) (cache!3010 cacheFurthestNullable!114))) b!2138049))

(assert (= b!2138062 b!2138078))

(assert (= start!207674 b!2138062))

(assert (= (and b!2138043 condMapEmpty!12963) mapIsEmpty!12961))

(assert (= (and b!2138043 (not condMapEmpty!12963)) mapNonEmpty!12963))

(assert (= b!2138077 b!2138043))

(assert (= b!2138064 b!2138077))

(assert (= b!2138071 b!2138064))

(assert (= (and b!2138039 ((_ is LongMap!2716) (v!28820 (underlying!5628 (cache!3011 cacheDown!1098))))) b!2138071))

(assert (= b!2138038 b!2138039))

(assert (= (and b!2138059 ((_ is HashMap!2630) (cache!3011 cacheDown!1098))) b!2138038))

(assert (= start!207674 b!2138059))

(assert (= (and b!2138042 condMapEmpty!12961) mapIsEmpty!12963))

(assert (= (and b!2138042 (not condMapEmpty!12961)) mapNonEmpty!12962))

(assert (= b!2138070 b!2138042))

(assert (= b!2138060 b!2138070))

(assert (= b!2138040 b!2138060))

(assert (= (and b!2138054 ((_ is LongMap!2717) (v!28822 (underlying!5630 (cache!3012 cacheUp!979))))) b!2138040))

(assert (= b!2138052 b!2138054))

(assert (= (and b!2138069 ((_ is HashMap!2631) (cache!3012 cacheUp!979))) b!2138052))

(assert (= start!207674 b!2138069))

(assert (= (and start!207674 condSetEmpty!16075) setIsEmpty!16075))

(assert (= (and start!207674 (not condSetEmpty!16075)) setNonEmpty!16076))

(assert (= setNonEmpty!16076 b!2138047))

(assert (= start!207674 b!2138053))

(assert (= (and b!2138036 condSetEmpty!16076) setIsEmpty!16076))

(assert (= (and b!2138036 (not condSetEmpty!16076)) setNonEmpty!16075))

(assert (= setNonEmpty!16075 b!2138067))

(assert (= b!2138036 b!2138065))

(assert (= b!2138051 b!2138036))

(assert (= (and start!207674 ((_ is Cons!24245) stack!8)) b!2138051))

(declare-fun m!2584704 () Bool)

(assert (=> b!2138078 m!2584704))

(declare-fun m!2584706 () Bool)

(assert (=> setNonEmpty!16076 m!2584706))

(declare-fun m!2584708 () Bool)

(assert (=> b!2138058 m!2584708))

(declare-fun m!2584710 () Bool)

(assert (=> b!2138058 m!2584710))

(declare-fun m!2584712 () Bool)

(assert (=> b!2138058 m!2584712))

(assert (=> b!2138058 m!2584712))

(declare-fun m!2584714 () Bool)

(assert (=> b!2138058 m!2584714))

(declare-fun m!2584716 () Bool)

(assert (=> start!207674 m!2584716))

(declare-fun m!2584718 () Bool)

(assert (=> start!207674 m!2584718))

(declare-fun m!2584720 () Bool)

(assert (=> start!207674 m!2584720))

(declare-fun m!2584722 () Bool)

(assert (=> start!207674 m!2584722))

(declare-fun m!2584724 () Bool)

(assert (=> b!2138065 m!2584724))

(declare-fun m!2584726 () Bool)

(assert (=> b!2138062 m!2584726))

(declare-fun m!2584728 () Bool)

(assert (=> b!2138063 m!2584728))

(declare-fun m!2584730 () Bool)

(assert (=> b!2138051 m!2584730))

(declare-fun m!2584732 () Bool)

(assert (=> b!2138079 m!2584732))

(declare-fun m!2584734 () Bool)

(assert (=> b!2138077 m!2584734))

(declare-fun m!2584736 () Bool)

(assert (=> b!2138077 m!2584736))

(declare-fun m!2584738 () Bool)

(assert (=> b!2138041 m!2584738))

(declare-fun m!2584740 () Bool)

(assert (=> mapNonEmpty!12963 m!2584740))

(declare-fun m!2584742 () Bool)

(assert (=> b!2138053 m!2584742))

(declare-fun m!2584744 () Bool)

(assert (=> b!2138050 m!2584744))

(declare-fun m!2584746 () Bool)

(assert (=> b!2138048 m!2584746))

(declare-fun m!2584748 () Bool)

(assert (=> b!2138048 m!2584748))

(declare-fun m!2584750 () Bool)

(assert (=> b!2138076 m!2584750))

(declare-fun m!2584752 () Bool)

(assert (=> mapNonEmpty!12962 m!2584752))

(declare-fun m!2584754 () Bool)

(assert (=> b!2138072 m!2584754))

(assert (=> b!2138072 m!2584746))

(declare-fun m!2584756 () Bool)

(assert (=> b!2138070 m!2584756))

(declare-fun m!2584758 () Bool)

(assert (=> b!2138070 m!2584758))

(declare-fun m!2584760 () Bool)

(assert (=> b!2138034 m!2584760))

(declare-fun m!2584762 () Bool)

(assert (=> b!2138074 m!2584762))

(declare-fun m!2584764 () Bool)

(assert (=> b!2138036 m!2584764))

(declare-fun m!2584766 () Bool)

(assert (=> setNonEmpty!16075 m!2584766))

(declare-fun m!2584768 () Bool)

(assert (=> b!2138061 m!2584768))

(declare-fun m!2584770 () Bool)

(assert (=> b!2138066 m!2584770))

(declare-fun m!2584772 () Bool)

(assert (=> b!2138055 m!2584772))

(declare-fun m!2584774 () Bool)

(assert (=> b!2138037 m!2584774))

(declare-fun m!2584776 () Bool)

(assert (=> b!2138037 m!2584776))

(declare-fun m!2584778 () Bool)

(assert (=> mapNonEmpty!12961 m!2584778))

(declare-fun m!2584780 () Bool)

(assert (=> b!2138073 m!2584780))

(assert (=> b!2138073 m!2584780))

(declare-fun m!2584782 () Bool)

(assert (=> b!2138073 m!2584782))

(assert (=> b!2138073 m!2584746))

(check-sat b_and!172371 b_and!172375 (not b!2138065) b_and!172377 (not b!2138072) (not b!2138073) (not b!2138062) (not b_next!63495) (not b!2138050) (not b!2138041) (not b!2138055) (not b!2138066) (not b!2138037) (not b!2138048) (not b!2138058) (not b!2138070) (not b!2138063) (not b!2138074) (not setNonEmpty!16076) (not setNonEmpty!16075) (not start!207674) (not mapNonEmpty!12963) (not b_next!63497) (not b_next!63501) (not b_next!63499) (not b!2138061) (not b!2138079) (not b!2138053) b_and!172373 (not b!2138036) (not b!2138047) (not b!2138051) (not b!2138042) (not b!2138043) b_and!172379 (not b_next!63503) (not b!2138034) b_and!172369 (not b!2138077) (not mapNonEmpty!12961) (not b!2138076) (not b!2138078) (not mapNonEmpty!12962) (not b_next!63493) (not b!2138067) (not b!2138046))
(check-sat b_and!172371 (not b_next!63497) b_and!172375 b_and!172377 b_and!172373 (not b_next!63495) b_and!172379 (not b_next!63493) (not b_next!63501) (not b_next!63499) (not b_next!63503) b_and!172369)
