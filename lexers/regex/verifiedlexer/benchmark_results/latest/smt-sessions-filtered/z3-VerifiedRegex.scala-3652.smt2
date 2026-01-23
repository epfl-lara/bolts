; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207890 () Bool)

(assert start!207890)

(declare-fun b!2140588 () Bool)

(declare-fun b_free!62909 () Bool)

(declare-fun b_next!63613 () Bool)

(assert (=> b!2140588 (= b_free!62909 (not b_next!63613))))

(declare-fun tp!661825 () Bool)

(declare-fun b_and!172489 () Bool)

(assert (=> b!2140588 (= tp!661825 b_and!172489)))

(declare-fun b!2140571 () Bool)

(declare-fun b_free!62911 () Bool)

(declare-fun b_next!63615 () Bool)

(assert (=> b!2140571 (= b_free!62911 (not b_next!63615))))

(declare-fun tp!661819 () Bool)

(declare-fun b_and!172491 () Bool)

(assert (=> b!2140571 (= tp!661819 b_and!172491)))

(declare-fun b!2140584 () Bool)

(declare-fun b_free!62913 () Bool)

(declare-fun b_next!63617 () Bool)

(assert (=> b!2140584 (= b_free!62913 (not b_next!63617))))

(declare-fun tp!661814 () Bool)

(declare-fun b_and!172493 () Bool)

(assert (=> b!2140584 (= tp!661814 b_and!172493)))

(declare-fun b!2140574 () Bool)

(declare-fun b_free!62915 () Bool)

(declare-fun b_next!63619 () Bool)

(assert (=> b!2140574 (= b_free!62915 (not b_next!63619))))

(declare-fun tp!661823 () Bool)

(declare-fun b_and!172495 () Bool)

(assert (=> b!2140574 (= tp!661823 b_and!172495)))

(declare-fun b!2140559 () Bool)

(declare-fun b_free!62917 () Bool)

(declare-fun b_next!63621 () Bool)

(assert (=> b!2140559 (= b_free!62917 (not b_next!63621))))

(declare-fun tp!661801 () Bool)

(declare-fun b_and!172497 () Bool)

(assert (=> b!2140559 (= tp!661801 b_and!172497)))

(declare-fun b!2140555 () Bool)

(declare-fun b_free!62919 () Bool)

(declare-fun b_next!63623 () Bool)

(assert (=> b!2140555 (= b_free!62919 (not b_next!63623))))

(declare-fun tp!661800 () Bool)

(declare-fun b_and!172499 () Bool)

(assert (=> b!2140555 (= tp!661800 b_and!172499)))

(declare-fun b!2140598 () Bool)

(assert (=> b!2140598 true))

(declare-fun bs!445167 () Bool)

(declare-fun b!2140589 () Bool)

(assert (= bs!445167 (and b!2140589 b!2140598)))

(declare-fun lambda!80040 () Int)

(declare-fun lambda!80039 () Int)

(assert (=> bs!445167 (not (= lambda!80040 lambda!80039))))

(assert (=> b!2140589 true))

(declare-fun bs!445168 () Bool)

(declare-fun b!2140573 () Bool)

(assert (= bs!445168 (and b!2140573 b!2140598)))

(declare-fun lambda!80041 () Int)

(declare-fun lt!798056 () Int)

(declare-fun lt!798051 () Int)

(assert (=> bs!445168 (= (= lt!798051 lt!798056) (= lambda!80041 lambda!80039))))

(declare-fun bs!445169 () Bool)

(assert (= bs!445169 (and b!2140573 b!2140589)))

(assert (=> bs!445169 (not (= lambda!80041 lambda!80040))))

(assert (=> b!2140573 true))

(declare-fun e!1367105 () Bool)

(declare-fun e!1367112 () Bool)

(assert (=> b!2140555 (= e!1367105 (and e!1367112 tp!661800))))

(declare-fun b!2140556 () Bool)

(declare-fun e!1367090 () Bool)

(declare-fun e!1367102 () Bool)

(assert (=> b!2140556 (= e!1367090 e!1367102)))

(declare-fun b!2140557 () Bool)

(declare-fun e!1367081 () Int)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2140557 (= e!1367081 lastNullablePos!123)))

(declare-fun b!2140558 () Bool)

(declare-fun e!1367107 () Bool)

(declare-fun e!1367080 () Bool)

(declare-datatypes ((C!11688 0))(
  ( (C!11689 (val!6830 Int)) )
))
(declare-datatypes ((Regex!5771 0))(
  ( (ElementMatch!5771 (c!340542 C!11688)) (Concat!10073 (regOne!12054 Regex!5771) (regTwo!12054 Regex!5771)) (EmptyExpr!5771) (Star!5771 (reg!6100 Regex!5771)) (EmptyLang!5771) (Union!5771 (regOne!12055 Regex!5771) (regTwo!12055 Regex!5771)) )
))
(declare-datatypes ((List!24382 0))(
  ( (Nil!24298) (Cons!24298 (h!29699 Regex!5771) (t!196912 List!24382)) )
))
(declare-datatypes ((Context!2682 0))(
  ( (Context!2683 (exprs!1841 List!24382)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3394 0))(
  ( (tuple3!3395 (_1!14225 (InoxSet Context!2682)) (_2!14225 Int) (_3!2167 Int)) )
))
(declare-datatypes ((tuple2!24116 0))(
  ( (tuple2!24117 (_1!14226 tuple3!3394) (_2!14226 Int)) )
))
(declare-datatypes ((List!24383 0))(
  ( (Nil!24299) (Cons!24299 (h!29700 tuple2!24116) (t!196913 List!24383)) )
))
(declare-datatypes ((array!9261 0))(
  ( (array!9262 (arr!4132 (Array (_ BitVec 32) (_ BitVec 64))) (size!19011 (_ BitVec 32))) )
))
(declare-datatypes ((array!9263 0))(
  ( (array!9264 (arr!4133 (Array (_ BitVec 32) List!24383)) (size!19012 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5480 0))(
  ( (LongMapFixedSize!5481 (defaultEntry!3105 Int) (mask!6941 (_ BitVec 32)) (extraKeys!2988 (_ BitVec 32)) (zeroValue!2998 List!24383) (minValue!2998 List!24383) (_size!5531 (_ BitVec 32)) (_keys!3037 array!9261) (_values!3020 array!9263) (_vacant!2801 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10785 0))(
  ( (Cell!10786 (v!28877 LongMapFixedSize!5480)) )
))
(declare-datatypes ((MutLongMap!2740 0))(
  ( (LongMap!2740 (underlying!5675 Cell!10785)) (MutLongMapExt!2739 (__x!16396 Int)) )
))
(declare-fun lt!798053 () MutLongMap!2740)

(get-info :version)

(assert (=> b!2140558 (= e!1367107 (and e!1367080 ((_ is LongMap!2740) lt!798053)))))

(declare-datatypes ((List!24384 0))(
  ( (Nil!24300) (Cons!24300 (h!29701 C!11688) (t!196914 List!24384)) )
))
(declare-datatypes ((IArray!15823 0))(
  ( (IArray!15824 (innerList!7969 List!24384)) )
))
(declare-datatypes ((Conc!7909 0))(
  ( (Node!7909 (left!18695 Conc!7909) (right!19025 Conc!7909) (csize!16048 Int) (cheight!8120 Int)) (Leaf!11562 (xs!10851 IArray!15823) (csize!16049 Int)) (Empty!7909) )
))
(declare-datatypes ((Cell!10787 0))(
  ( (Cell!10788 (v!28878 MutLongMap!2740)) )
))
(declare-datatypes ((Hashable!2654 0))(
  ( (HashableExt!2653 (__x!16397 Int)) )
))
(declare-datatypes ((MutableMap!2654 0))(
  ( (MutableMapExt!2653 (__x!16398 Int)) (HashMap!2654 (underlying!5676 Cell!10787) (hashF!4577 Hashable!2654) (_size!5532 (_ BitVec 32)) (defaultValue!2816 Int)) )
))
(declare-datatypes ((BalanceConc!15580 0))(
  ( (BalanceConc!15581 (c!340543 Conc!7909)) )
))
(declare-datatypes ((CacheFurthestNullable!786 0))(
  ( (CacheFurthestNullable!787 (cache!3035 MutableMap!2654) (totalInput!3116 BalanceConc!15580)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!786)

(assert (=> b!2140558 (= lt!798053 (v!28878 (underlying!5676 (cache!3035 cacheFurthestNullable!114))))))

(declare-fun e!1367094 () Bool)

(assert (=> b!2140559 (= e!1367094 (and e!1367107 tp!661801))))

(declare-fun setRes!16354 () Bool)

(declare-fun tp!661818 () Bool)

(declare-fun setNonEmpty!16353 () Bool)

(declare-fun setElem!16354 () Context!2682)

(declare-fun e!1367087 () Bool)

(declare-fun inv!31984 (Context!2682) Bool)

(assert (=> setNonEmpty!16353 (= setRes!16354 (and tp!661818 (inv!31984 setElem!16354) e!1367087))))

(declare-fun z!3839 () (InoxSet Context!2682))

(declare-fun setRest!16353 () (InoxSet Context!2682))

(assert (=> setNonEmpty!16353 (= z!3839 ((_ map or) (store ((as const (Array Context!2682 Bool)) false) setElem!16354 true) setRest!16353))))

(declare-fun b!2140560 () Bool)

(declare-fun tp!661826 () Bool)

(assert (=> b!2140560 (= e!1367087 tp!661826)))

(declare-fun e!1367088 () Bool)

(declare-fun tp!661810 () Bool)

(declare-fun b!2140561 () Bool)

(declare-fun e!1367095 () Bool)

(declare-datatypes ((StackFrame!220 0))(
  ( (StackFrame!221 (z!5861 (InoxSet Context!2682)) (from!2735 Int) (lastNullablePos!422 Int) (res!924283 Int) (totalInput!3117 BalanceConc!15580)) )
))
(declare-datatypes ((List!24385 0))(
  ( (Nil!24301) (Cons!24301 (h!29702 StackFrame!220) (t!196915 List!24385)) )
))
(declare-fun stack!8 () List!24385)

(declare-fun inv!31985 (StackFrame!220) Bool)

(assert (=> b!2140561 (= e!1367095 (and (inv!31985 (h!29702 stack!8)) e!1367088 tp!661810))))

(declare-fun mapIsEmpty!13090 () Bool)

(declare-fun mapRes!13091 () Bool)

(assert (=> mapIsEmpty!13090 mapRes!13091))

(declare-fun b!2140562 () Bool)

(declare-fun e!1367098 () Bool)

(declare-fun tp!661821 () Bool)

(assert (=> b!2140562 (= e!1367098 (and tp!661821 mapRes!13091))))

(declare-fun condMapEmpty!13092 () Bool)

(declare-datatypes ((tuple2!24118 0))(
  ( (tuple2!24119 (_1!14227 Context!2682) (_2!14227 C!11688)) )
))
(declare-datatypes ((tuple2!24120 0))(
  ( (tuple2!24121 (_1!14228 tuple2!24118) (_2!14228 (InoxSet Context!2682))) )
))
(declare-datatypes ((List!24386 0))(
  ( (Nil!24302) (Cons!24302 (h!29703 tuple2!24120) (t!196916 List!24386)) )
))
(declare-datatypes ((array!9265 0))(
  ( (array!9266 (arr!4134 (Array (_ BitVec 32) List!24386)) (size!19013 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5482 0))(
  ( (LongMapFixedSize!5483 (defaultEntry!3106 Int) (mask!6942 (_ BitVec 32)) (extraKeys!2989 (_ BitVec 32)) (zeroValue!2999 List!24386) (minValue!2999 List!24386) (_size!5533 (_ BitVec 32)) (_keys!3038 array!9261) (_values!3021 array!9265) (_vacant!2802 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10789 0))(
  ( (Cell!10790 (v!28879 LongMapFixedSize!5482)) )
))
(declare-datatypes ((MutLongMap!2741 0))(
  ( (LongMap!2741 (underlying!5677 Cell!10789)) (MutLongMapExt!2740 (__x!16399 Int)) )
))
(declare-datatypes ((Cell!10791 0))(
  ( (Cell!10792 (v!28880 MutLongMap!2741)) )
))
(declare-datatypes ((Hashable!2655 0))(
  ( (HashableExt!2654 (__x!16400 Int)) )
))
(declare-datatypes ((MutableMap!2655 0))(
  ( (MutableMapExt!2654 (__x!16401 Int)) (HashMap!2655 (underlying!5678 Cell!10791) (hashF!4578 Hashable!2655) (_size!5534 (_ BitVec 32)) (defaultValue!2817 Int)) )
))
(declare-datatypes ((CacheUp!1828 0))(
  ( (CacheUp!1829 (cache!3036 MutableMap!2655)) )
))
(declare-fun cacheUp!979 () CacheUp!1828)

(declare-fun mapDefault!13092 () List!24386)

(assert (=> b!2140562 (= condMapEmpty!13092 (= (arr!4134 (_values!3021 (v!28879 (underlying!5677 (v!28880 (underlying!5678 (cache!3036 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24386)) mapDefault!13092)))))

(declare-fun b!2140563 () Bool)

(declare-fun e!1367084 () Bool)

(declare-fun e!1367086 () Bool)

(assert (=> b!2140563 (= e!1367084 e!1367086)))

(declare-fun b!2140564 () Bool)

(declare-fun e!1367109 () Bool)

(declare-fun e!1367085 () Bool)

(assert (=> b!2140564 (= e!1367109 e!1367085)))

(declare-fun b!2140565 () Bool)

(declare-fun e!1367089 () Bool)

(assert (=> b!2140565 (= e!1367102 e!1367089)))

(declare-fun b!2140566 () Bool)

(declare-fun e!1367104 () Bool)

(declare-fun e!1367097 () Bool)

(declare-datatypes ((tuple3!3396 0))(
  ( (tuple3!3397 (_1!14229 Regex!5771) (_2!14229 Context!2682) (_3!2168 C!11688)) )
))
(declare-datatypes ((tuple2!24122 0))(
  ( (tuple2!24123 (_1!14230 tuple3!3396) (_2!14230 (InoxSet Context!2682))) )
))
(declare-datatypes ((List!24387 0))(
  ( (Nil!24303) (Cons!24303 (h!29704 tuple2!24122) (t!196917 List!24387)) )
))
(declare-datatypes ((array!9267 0))(
  ( (array!9268 (arr!4135 (Array (_ BitVec 32) List!24387)) (size!19014 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5484 0))(
  ( (LongMapFixedSize!5485 (defaultEntry!3107 Int) (mask!6943 (_ BitVec 32)) (extraKeys!2990 (_ BitVec 32)) (zeroValue!3000 List!24387) (minValue!3000 List!24387) (_size!5535 (_ BitVec 32)) (_keys!3039 array!9261) (_values!3022 array!9267) (_vacant!2803 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10793 0))(
  ( (Cell!10794 (v!28881 LongMapFixedSize!5484)) )
))
(declare-datatypes ((MutLongMap!2742 0))(
  ( (LongMap!2742 (underlying!5679 Cell!10793)) (MutLongMapExt!2741 (__x!16402 Int)) )
))
(declare-fun lt!798052 () MutLongMap!2742)

(assert (=> b!2140566 (= e!1367104 (and e!1367097 ((_ is LongMap!2742) lt!798052)))))

(declare-datatypes ((Hashable!2656 0))(
  ( (HashableExt!2655 (__x!16403 Int)) )
))
(declare-datatypes ((Cell!10795 0))(
  ( (Cell!10796 (v!28882 MutLongMap!2742)) )
))
(declare-datatypes ((MutableMap!2656 0))(
  ( (MutableMapExt!2655 (__x!16404 Int)) (HashMap!2656 (underlying!5680 Cell!10795) (hashF!4579 Hashable!2656) (_size!5536 (_ BitVec 32)) (defaultValue!2818 Int)) )
))
(declare-datatypes ((CacheDown!1818 0))(
  ( (CacheDown!1819 (cache!3037 MutableMap!2656)) )
))
(declare-fun cacheDown!1098 () CacheDown!1818)

(assert (=> b!2140566 (= lt!798052 (v!28882 (underlying!5680 (cache!3037 cacheDown!1098))))))

(declare-fun b!2140567 () Bool)

(declare-fun e!1367103 () Bool)

(declare-fun e!1367099 () Bool)

(assert (=> b!2140567 (= e!1367103 e!1367099)))

(declare-fun res!924269 () Bool)

(assert (=> b!2140567 (=> res!924269 e!1367099)))

(assert (=> b!2140567 (= res!924269 (not (= lt!798056 lt!798051)))))

(declare-datatypes ((tuple3!3398 0))(
  ( (tuple3!3399 (_1!14231 (InoxSet Context!2682)) (_2!14231 CacheUp!1828) (_3!2169 CacheDown!1818)) )
))
(declare-fun lt!798054 () tuple3!3398)

(declare-fun lt!798055 () Int)

(declare-fun from!1043 () Int)

(declare-fun totalInput!851 () BalanceConc!15580)

(declare-fun furthestNullablePosition!72 ((InoxSet Context!2682) Int BalanceConc!15580 Int Int) Int)

(assert (=> b!2140567 (= lt!798051 (furthestNullablePosition!72 (_1!14231 lt!798054) (+ 1 from!1043) totalInput!851 lt!798055 e!1367081))))

(declare-fun c!340541 () Bool)

(declare-fun nullableZipper!136 ((InoxSet Context!2682)) Bool)

(assert (=> b!2140567 (= c!340541 (nullableZipper!136 (_1!14231 lt!798054)))))

(declare-fun derivationStepZipperMem!54 ((InoxSet Context!2682) C!11688 CacheUp!1828 CacheDown!1818) tuple3!3398)

(declare-fun apply!5962 (BalanceConc!15580 Int) C!11688)

(assert (=> b!2140567 (= lt!798054 (derivationStepZipperMem!54 z!3839 (apply!5962 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2140568 () Bool)

(declare-fun res!924279 () Bool)

(declare-fun e!1367108 () Bool)

(assert (=> b!2140568 (=> (not res!924279) (not e!1367108))))

(declare-fun valid!2141 (CacheUp!1828) Bool)

(assert (=> b!2140568 (= res!924279 (valid!2141 cacheUp!979))))

(declare-fun mapIsEmpty!13091 () Bool)

(declare-fun mapRes!13090 () Bool)

(assert (=> mapIsEmpty!13091 mapRes!13090))

(declare-fun mapNonEmpty!13090 () Bool)

(declare-fun mapRes!13092 () Bool)

(declare-fun tp!661822 () Bool)

(declare-fun tp!661802 () Bool)

(assert (=> mapNonEmpty!13090 (= mapRes!13092 (and tp!661822 tp!661802))))

(declare-fun mapValue!13091 () List!24387)

(declare-fun mapRest!13091 () (Array (_ BitVec 32) List!24387))

(declare-fun mapKey!13091 () (_ BitVec 32))

(assert (=> mapNonEmpty!13090 (= (arr!4135 (_values!3022 (v!28881 (underlying!5679 (v!28882 (underlying!5680 (cache!3037 cacheDown!1098))))))) (store mapRest!13091 mapKey!13091 mapValue!13091))))

(declare-fun b!2140569 () Bool)

(declare-fun e!1367110 () Bool)

(declare-fun tp!661804 () Bool)

(assert (=> b!2140569 (= e!1367110 (and tp!661804 mapRes!13090))))

(declare-fun condMapEmpty!13090 () Bool)

(declare-fun mapDefault!13090 () List!24383)

(assert (=> b!2140569 (= condMapEmpty!13090 (= (arr!4133 (_values!3020 (v!28877 (underlying!5675 (v!28878 (underlying!5676 (cache!3035 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24383)) mapDefault!13090)))))

(declare-fun b!2140570 () Bool)

(declare-fun e!1367106 () Bool)

(declare-fun tp!661799 () Bool)

(declare-fun inv!31986 (Conc!7909) Bool)

(assert (=> b!2140570 (= e!1367106 (and (inv!31986 (c!340543 (totalInput!3116 cacheFurthestNullable!114))) tp!661799))))

(declare-fun e!1367092 () Bool)

(assert (=> b!2140571 (= e!1367092 (and e!1367104 tp!661819))))

(declare-fun b!2140572 () Bool)

(declare-fun res!924274 () Bool)

(assert (=> b!2140572 (=> (not res!924274) (not e!1367108))))

(declare-fun valid!2142 (CacheFurthestNullable!786) Bool)

(assert (=> b!2140572 (= res!924274 (valid!2142 cacheFurthestNullable!114))))

(declare-fun forall!4964 (List!24385 Int) Bool)

(assert (=> b!2140573 (= e!1367099 (forall!4964 stack!8 lambda!80041))))

(assert (=> b!2140573 (forall!4964 stack!8 lambda!80041)))

(declare-datatypes ((Unit!37689 0))(
  ( (Unit!37690) )
))
(declare-fun lt!798050 () Unit!37689)

(declare-fun lemmaStackPreservesForEqualRes!24 (List!24385 Int Int) Unit!37689)

(assert (=> b!2140573 (= lt!798050 (lemmaStackPreservesForEqualRes!24 stack!8 lt!798056 lt!798051))))

(assert (=> b!2140573 (forall!4964 stack!8 lambda!80039)))

(declare-fun e!1367091 () Bool)

(declare-fun tp!661824 () Bool)

(declare-fun tp!661815 () Bool)

(declare-fun array_inv!2954 (array!9261) Bool)

(declare-fun array_inv!2955 (array!9267) Bool)

(assert (=> b!2140574 (= e!1367086 (and tp!661823 tp!661815 tp!661824 (array_inv!2954 (_keys!3039 (v!28881 (underlying!5679 (v!28882 (underlying!5680 (cache!3037 cacheDown!1098))))))) (array_inv!2955 (_values!3022 (v!28881 (underlying!5679 (v!28882 (underlying!5680 (cache!3037 cacheDown!1098))))))) e!1367091))))

(declare-fun b!2140575 () Bool)

(declare-fun e!1367083 () Bool)

(assert (=> b!2140575 (= e!1367083 e!1367092)))

(declare-fun res!924282 () Bool)

(declare-fun e!1367100 () Bool)

(assert (=> start!207890 (=> (not res!924282) (not e!1367100))))

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207890 (= res!924282 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207890 e!1367100))

(declare-fun e!1367078 () Bool)

(declare-fun inv!31987 (CacheFurthestNullable!786) Bool)

(assert (=> start!207890 (and (inv!31987 cacheFurthestNullable!114) e!1367078)))

(assert (=> start!207890 true))

(declare-fun inv!31988 (CacheDown!1818) Bool)

(assert (=> start!207890 (and (inv!31988 cacheDown!1098) e!1367083)))

(declare-fun e!1367111 () Bool)

(declare-fun inv!31989 (CacheUp!1828) Bool)

(assert (=> start!207890 (and (inv!31989 cacheUp!979) e!1367111)))

(declare-fun condSetEmpty!16354 () Bool)

(assert (=> start!207890 (= condSetEmpty!16354 (= z!3839 ((as const (Array Context!2682 Bool)) false)))))

(assert (=> start!207890 setRes!16354))

(declare-fun e!1367077 () Bool)

(declare-fun inv!31990 (BalanceConc!15580) Bool)

(assert (=> start!207890 (and (inv!31990 totalInput!851) e!1367077)))

(assert (=> start!207890 e!1367095))

(declare-fun setIsEmpty!16353 () Bool)

(declare-fun setRes!16353 () Bool)

(assert (=> setIsEmpty!16353 setRes!16353))

(declare-fun b!2140576 () Bool)

(declare-fun res!924270 () Bool)

(assert (=> b!2140576 (=> (not res!924270) (not e!1367108))))

(declare-fun e!1367076 () Bool)

(assert (=> b!2140576 (= res!924270 e!1367076)))

(declare-fun res!924273 () Bool)

(assert (=> b!2140576 (=> res!924273 e!1367076)))

(assert (=> b!2140576 (= res!924273 (not (nullableZipper!136 z!3839)))))

(declare-fun b!2140577 () Bool)

(declare-fun res!924275 () Bool)

(assert (=> b!2140577 (=> res!924275 e!1367103)))

(declare-fun lostCauseZipper!112 ((InoxSet Context!2682)) Bool)

(assert (=> b!2140577 (= res!924275 (lostCauseZipper!112 z!3839))))

(declare-fun b!2140578 () Bool)

(declare-fun e!1367082 () Bool)

(assert (=> b!2140578 (= e!1367082 (not e!1367103))))

(declare-fun res!924278 () Bool)

(assert (=> b!2140578 (=> res!924278 e!1367103)))

(declare-datatypes ((Option!4933 0))(
  ( (None!4932) (Some!4932 (v!28883 Int)) )
))
(declare-fun get!7429 (CacheFurthestNullable!786 (InoxSet Context!2682) Int Int) Option!4933)

(assert (=> b!2140578 (= res!924278 ((_ is Some!4932) (get!7429 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2140578 (forall!4964 stack!8 lambda!80039)))

(declare-fun b!2140579 () Bool)

(declare-fun e!1367096 () Bool)

(declare-fun tp!661816 () Bool)

(assert (=> b!2140579 (= e!1367096 tp!661816)))

(declare-fun b!2140580 () Bool)

(assert (=> b!2140580 (= e!1367097 e!1367084)))

(declare-fun b!2140581 () Bool)

(assert (=> b!2140581 (= e!1367081 from!1043)))

(declare-fun b!2140582 () Bool)

(declare-fun tp!661803 () Bool)

(assert (=> b!2140582 (= e!1367077 (and (inv!31986 (c!340543 totalInput!851)) tp!661803))))

(declare-fun b!2140583 () Bool)

(declare-fun res!924280 () Bool)

(assert (=> b!2140583 (=> (not res!924280) (not e!1367108))))

(assert (=> b!2140583 (= res!924280 (= (totalInput!3116 cacheFurthestNullable!114) totalInput!851))))

(declare-fun setNonEmpty!16354 () Bool)

(declare-fun setElem!16353 () Context!2682)

(declare-fun tp!661809 () Bool)

(assert (=> setNonEmpty!16354 (= setRes!16353 (and tp!661809 (inv!31984 setElem!16353) e!1367096))))

(declare-fun setRest!16354 () (InoxSet Context!2682))

(assert (=> setNonEmpty!16354 (= (z!5861 (h!29702 stack!8)) ((_ map or) (store ((as const (Array Context!2682 Bool)) false) setElem!16353 true) setRest!16354))))

(declare-fun tp!661808 () Bool)

(declare-fun tp!661827 () Bool)

(declare-fun array_inv!2956 (array!9265) Bool)

(assert (=> b!2140584 (= e!1367089 (and tp!661814 tp!661808 tp!661827 (array_inv!2954 (_keys!3038 (v!28879 (underlying!5677 (v!28880 (underlying!5678 (cache!3036 cacheUp!979))))))) (array_inv!2956 (_values!3021 (v!28879 (underlying!5677 (v!28880 (underlying!5678 (cache!3036 cacheUp!979))))))) e!1367098))))

(declare-fun b!2140585 () Bool)

(assert (=> b!2140585 (= e!1367111 e!1367105)))

(declare-fun mapNonEmpty!13091 () Bool)

(declare-fun tp!661812 () Bool)

(declare-fun tp!661817 () Bool)

(assert (=> mapNonEmpty!13091 (= mapRes!13091 (and tp!661812 tp!661817))))

(declare-fun mapValue!13090 () List!24386)

(declare-fun mapRest!13092 () (Array (_ BitVec 32) List!24386))

(declare-fun mapKey!13090 () (_ BitVec 32))

(assert (=> mapNonEmpty!13091 (= (arr!4134 (_values!3021 (v!28879 (underlying!5677 (v!28880 (underlying!5678 (cache!3036 cacheUp!979))))))) (store mapRest!13092 mapKey!13090 mapValue!13090))))

(declare-fun b!2140586 () Bool)

(declare-fun tp!661813 () Bool)

(assert (=> b!2140586 (= e!1367091 (and tp!661813 mapRes!13092))))

(declare-fun condMapEmpty!13091 () Bool)

(declare-fun mapDefault!13091 () List!24387)

(assert (=> b!2140586 (= condMapEmpty!13091 (= (arr!4135 (_values!3022 (v!28881 (underlying!5679 (v!28882 (underlying!5680 (cache!3037 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24387)) mapDefault!13091)))))

(declare-fun b!2140587 () Bool)

(declare-fun lt!798057 () MutLongMap!2741)

(assert (=> b!2140587 (= e!1367112 (and e!1367090 ((_ is LongMap!2741) lt!798057)))))

(assert (=> b!2140587 (= lt!798057 (v!28880 (underlying!5678 (cache!3036 cacheUp!979))))))

(declare-fun tp!661805 () Bool)

(declare-fun tp!661820 () Bool)

(declare-fun array_inv!2957 (array!9263) Bool)

(assert (=> b!2140588 (= e!1367085 (and tp!661825 tp!661805 tp!661820 (array_inv!2954 (_keys!3037 (v!28877 (underlying!5675 (v!28878 (underlying!5676 (cache!3035 cacheFurthestNullable!114))))))) (array_inv!2957 (_values!3020 (v!28877 (underlying!5675 (v!28878 (underlying!5676 (cache!3035 cacheFurthestNullable!114))))))) e!1367110))))

(declare-fun res!924281 () Bool)

(assert (=> b!2140589 (=> (not res!924281) (not e!1367082))))

(assert (=> b!2140589 (= res!924281 (forall!4964 stack!8 lambda!80040))))

(declare-fun setIsEmpty!16354 () Bool)

(assert (=> setIsEmpty!16354 setRes!16354))

(declare-fun b!2140590 () Bool)

(assert (=> b!2140590 (= e!1367080 e!1367109)))

(declare-fun b!2140591 () Bool)

(assert (=> b!2140591 (= e!1367076 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun mapNonEmpty!13092 () Bool)

(declare-fun tp!661806 () Bool)

(declare-fun tp!661807 () Bool)

(assert (=> mapNonEmpty!13092 (= mapRes!13090 (and tp!661806 tp!661807))))

(declare-fun mapKey!13092 () (_ BitVec 32))

(declare-fun mapRest!13090 () (Array (_ BitVec 32) List!24383))

(declare-fun mapValue!13092 () List!24383)

(assert (=> mapNonEmpty!13092 (= (arr!4133 (_values!3020 (v!28877 (underlying!5675 (v!28878 (underlying!5676 (cache!3035 cacheFurthestNullable!114))))))) (store mapRest!13090 mapKey!13092 mapValue!13092))))

(declare-fun b!2140592 () Bool)

(declare-fun e!1367093 () Bool)

(declare-fun tp!661811 () Bool)

(assert (=> b!2140592 (= e!1367093 (and (inv!31986 (c!340543 (totalInput!3117 (h!29702 stack!8)))) tp!661811))))

(declare-fun b!2140593 () Bool)

(declare-fun res!924276 () Bool)

(assert (=> b!2140593 (=> res!924276 e!1367103)))

(assert (=> b!2140593 (= res!924276 (= from!1043 totalInputSize!296))))

(declare-fun b!2140594 () Bool)

(assert (=> b!2140594 (= e!1367100 e!1367108)))

(declare-fun res!924272 () Bool)

(assert (=> b!2140594 (=> (not res!924272) (not e!1367108))))

(assert (=> b!2140594 (= res!924272 (and (= totalInputSize!296 lt!798055) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19015 (BalanceConc!15580) Int)

(assert (=> b!2140594 (= lt!798055 (size!19015 totalInput!851))))

(declare-fun b!2140595 () Bool)

(assert (=> b!2140595 (= e!1367088 (and setRes!16353 (inv!31990 (totalInput!3117 (h!29702 stack!8))) e!1367093))))

(declare-fun condSetEmpty!16353 () Bool)

(assert (=> b!2140595 (= condSetEmpty!16353 (= (z!5861 (h!29702 stack!8)) ((as const (Array Context!2682 Bool)) false)))))

(declare-fun b!2140596 () Bool)

(assert (=> b!2140596 (= e!1367078 (and e!1367094 (inv!31990 (totalInput!3116 cacheFurthestNullable!114)) e!1367106))))

(declare-fun b!2140597 () Bool)

(declare-fun res!924277 () Bool)

(assert (=> b!2140597 (=> (not res!924277) (not e!1367108))))

(declare-fun valid!2143 (CacheDown!1818) Bool)

(assert (=> b!2140597 (= res!924277 (valid!2143 cacheDown!1098))))

(declare-fun mapIsEmpty!13092 () Bool)

(assert (=> mapIsEmpty!13092 mapRes!13092))

(assert (=> b!2140598 (= e!1367108 e!1367082)))

(declare-fun res!924271 () Bool)

(assert (=> b!2140598 (=> (not res!924271) (not e!1367082))))

(assert (=> b!2140598 (= res!924271 (forall!4964 stack!8 lambda!80039))))

(assert (=> b!2140598 (= lt!798056 (furthestNullablePosition!72 z!3839 from!1043 totalInput!851 lt!798055 lastNullablePos!123))))

(assert (= (and start!207890 res!924282) b!2140594))

(assert (= (and b!2140594 res!924272) b!2140576))

(assert (= (and b!2140576 (not res!924273)) b!2140591))

(assert (= (and b!2140576 res!924270) b!2140568))

(assert (= (and b!2140568 res!924279) b!2140597))

(assert (= (and b!2140597 res!924277) b!2140572))

(assert (= (and b!2140572 res!924274) b!2140583))

(assert (= (and b!2140583 res!924280) b!2140598))

(assert (= (and b!2140598 res!924271) b!2140589))

(assert (= (and b!2140589 res!924281) b!2140578))

(assert (= (and b!2140578 (not res!924278)) b!2140593))

(assert (= (and b!2140593 (not res!924276)) b!2140577))

(assert (= (and b!2140577 (not res!924275)) b!2140567))

(assert (= (and b!2140567 c!340541) b!2140581))

(assert (= (and b!2140567 (not c!340541)) b!2140557))

(assert (= (and b!2140567 (not res!924269)) b!2140573))

(assert (= (and b!2140569 condMapEmpty!13090) mapIsEmpty!13091))

(assert (= (and b!2140569 (not condMapEmpty!13090)) mapNonEmpty!13092))

(assert (= b!2140588 b!2140569))

(assert (= b!2140564 b!2140588))

(assert (= b!2140590 b!2140564))

(assert (= (and b!2140558 ((_ is LongMap!2740) (v!28878 (underlying!5676 (cache!3035 cacheFurthestNullable!114))))) b!2140590))

(assert (= b!2140559 b!2140558))

(assert (= (and b!2140596 ((_ is HashMap!2654) (cache!3035 cacheFurthestNullable!114))) b!2140559))

(assert (= b!2140596 b!2140570))

(assert (= start!207890 b!2140596))

(assert (= (and b!2140586 condMapEmpty!13091) mapIsEmpty!13092))

(assert (= (and b!2140586 (not condMapEmpty!13091)) mapNonEmpty!13090))

(assert (= b!2140574 b!2140586))

(assert (= b!2140563 b!2140574))

(assert (= b!2140580 b!2140563))

(assert (= (and b!2140566 ((_ is LongMap!2742) (v!28882 (underlying!5680 (cache!3037 cacheDown!1098))))) b!2140580))

(assert (= b!2140571 b!2140566))

(assert (= (and b!2140575 ((_ is HashMap!2656) (cache!3037 cacheDown!1098))) b!2140571))

(assert (= start!207890 b!2140575))

(assert (= (and b!2140562 condMapEmpty!13092) mapIsEmpty!13090))

(assert (= (and b!2140562 (not condMapEmpty!13092)) mapNonEmpty!13091))

(assert (= b!2140584 b!2140562))

(assert (= b!2140565 b!2140584))

(assert (= b!2140556 b!2140565))

(assert (= (and b!2140587 ((_ is LongMap!2741) (v!28880 (underlying!5678 (cache!3036 cacheUp!979))))) b!2140556))

(assert (= b!2140555 b!2140587))

(assert (= (and b!2140585 ((_ is HashMap!2655) (cache!3036 cacheUp!979))) b!2140555))

(assert (= start!207890 b!2140585))

(assert (= (and start!207890 condSetEmpty!16354) setIsEmpty!16354))

(assert (= (and start!207890 (not condSetEmpty!16354)) setNonEmpty!16353))

(assert (= setNonEmpty!16353 b!2140560))

(assert (= start!207890 b!2140582))

(assert (= (and b!2140595 condSetEmpty!16353) setIsEmpty!16353))

(assert (= (and b!2140595 (not condSetEmpty!16353)) setNonEmpty!16354))

(assert (= setNonEmpty!16354 b!2140579))

(assert (= b!2140595 b!2140592))

(assert (= b!2140561 b!2140595))

(assert (= (and start!207890 ((_ is Cons!24301) stack!8)) b!2140561))

(declare-fun m!2586555 () Bool)

(assert (=> b!2140573 m!2586555))

(assert (=> b!2140573 m!2586555))

(declare-fun m!2586557 () Bool)

(assert (=> b!2140573 m!2586557))

(declare-fun m!2586559 () Bool)

(assert (=> b!2140573 m!2586559))

(declare-fun m!2586561 () Bool)

(assert (=> b!2140572 m!2586561))

(declare-fun m!2586563 () Bool)

(assert (=> b!2140561 m!2586563))

(declare-fun m!2586565 () Bool)

(assert (=> b!2140577 m!2586565))

(declare-fun m!2586567 () Bool)

(assert (=> b!2140582 m!2586567))

(declare-fun m!2586569 () Bool)

(assert (=> b!2140568 m!2586569))

(declare-fun m!2586571 () Bool)

(assert (=> b!2140588 m!2586571))

(declare-fun m!2586573 () Bool)

(assert (=> b!2140588 m!2586573))

(declare-fun m!2586575 () Bool)

(assert (=> start!207890 m!2586575))

(declare-fun m!2586577 () Bool)

(assert (=> start!207890 m!2586577))

(declare-fun m!2586579 () Bool)

(assert (=> start!207890 m!2586579))

(declare-fun m!2586581 () Bool)

(assert (=> start!207890 m!2586581))

(declare-fun m!2586583 () Bool)

(assert (=> setNonEmpty!16353 m!2586583))

(declare-fun m!2586585 () Bool)

(assert (=> b!2140594 m!2586585))

(declare-fun m!2586587 () Bool)

(assert (=> mapNonEmpty!13090 m!2586587))

(declare-fun m!2586589 () Bool)

(assert (=> b!2140595 m!2586589))

(declare-fun m!2586591 () Bool)

(assert (=> b!2140589 m!2586591))

(assert (=> b!2140598 m!2586559))

(declare-fun m!2586593 () Bool)

(assert (=> b!2140598 m!2586593))

(declare-fun m!2586595 () Bool)

(assert (=> b!2140576 m!2586595))

(declare-fun m!2586597 () Bool)

(assert (=> b!2140584 m!2586597))

(declare-fun m!2586599 () Bool)

(assert (=> b!2140584 m!2586599))

(declare-fun m!2586601 () Bool)

(assert (=> b!2140597 m!2586601))

(declare-fun m!2586603 () Bool)

(assert (=> mapNonEmpty!13092 m!2586603))

(declare-fun m!2586605 () Bool)

(assert (=> b!2140578 m!2586605))

(assert (=> b!2140578 m!2586559))

(declare-fun m!2586607 () Bool)

(assert (=> b!2140574 m!2586607))

(declare-fun m!2586609 () Bool)

(assert (=> b!2140574 m!2586609))

(declare-fun m!2586611 () Bool)

(assert (=> b!2140592 m!2586611))

(declare-fun m!2586613 () Bool)

(assert (=> mapNonEmpty!13091 m!2586613))

(declare-fun m!2586615 () Bool)

(assert (=> setNonEmpty!16354 m!2586615))

(declare-fun m!2586617 () Bool)

(assert (=> b!2140570 m!2586617))

(declare-fun m!2586619 () Bool)

(assert (=> b!2140596 m!2586619))

(declare-fun m!2586621 () Bool)

(assert (=> b!2140567 m!2586621))

(declare-fun m!2586623 () Bool)

(assert (=> b!2140567 m!2586623))

(declare-fun m!2586625 () Bool)

(assert (=> b!2140567 m!2586625))

(assert (=> b!2140567 m!2586625))

(declare-fun m!2586627 () Bool)

(assert (=> b!2140567 m!2586627))

(check-sat (not b!2140592) (not b!2140596) (not b!2140598) (not setNonEmpty!16354) (not b!2140582) (not b!2140562) (not mapNonEmpty!13090) (not b!2140576) b_and!172499 (not b!2140584) (not b!2140570) (not b!2140560) (not b!2140577) (not b_next!63621) (not b!2140569) (not setNonEmpty!16353) (not b_next!63617) b_and!172489 (not b!2140572) (not start!207890) (not mapNonEmpty!13092) (not b!2140579) b_and!172497 (not b!2140578) b_and!172491 (not b!2140574) (not b!2140561) (not b_next!63615) (not b_next!63623) (not b_next!63613) (not b!2140594) b_and!172495 (not b!2140568) (not b!2140567) (not b!2140573) (not b!2140597) (not b!2140595) (not mapNonEmpty!13091) (not b!2140588) (not b!2140586) (not b!2140589) (not b_next!63619) b_and!172493)
(check-sat (not b_next!63621) b_and!172497 b_and!172499 b_and!172491 (not b_next!63617) b_and!172489 (not b_next!63615) (not b_next!63623) (not b_next!63613) b_and!172495 (not b_next!63619) b_and!172493)
