; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206964 () Bool)

(assert start!206964)

(declare-fun b!2120310 () Bool)

(declare-fun b_free!61541 () Bool)

(declare-fun b_next!62245 () Bool)

(assert (=> b!2120310 (= b_free!61541 (not b_next!62245))))

(declare-fun tp!648711 () Bool)

(declare-fun b_and!171121 () Bool)

(assert (=> b!2120310 (= tp!648711 b_and!171121)))

(declare-fun b!2120320 () Bool)

(declare-fun b_free!61543 () Bool)

(declare-fun b_next!62247 () Bool)

(assert (=> b!2120320 (= b_free!61543 (not b_next!62247))))

(declare-fun tp!648714 () Bool)

(declare-fun b_and!171123 () Bool)

(assert (=> b!2120320 (= tp!648714 b_and!171123)))

(declare-fun b!2120319 () Bool)

(declare-fun b_free!61545 () Bool)

(declare-fun b_next!62249 () Bool)

(assert (=> b!2120319 (= b_free!61545 (not b_next!62249))))

(declare-fun tp!648696 () Bool)

(declare-fun b_and!171125 () Bool)

(assert (=> b!2120319 (= tp!648696 b_and!171125)))

(declare-fun b!2120328 () Bool)

(declare-fun b_free!61547 () Bool)

(declare-fun b_next!62251 () Bool)

(assert (=> b!2120328 (= b_free!61547 (not b_next!62251))))

(declare-fun tp!648693 () Bool)

(declare-fun b_and!171127 () Bool)

(assert (=> b!2120328 (= tp!648693 b_and!171127)))

(declare-fun b!2120325 () Bool)

(declare-fun b_free!61549 () Bool)

(declare-fun b_next!62253 () Bool)

(assert (=> b!2120325 (= b_free!61549 (not b_next!62253))))

(declare-fun tp!648713 () Bool)

(declare-fun b_and!171129 () Bool)

(assert (=> b!2120325 (= tp!648713 b_and!171129)))

(declare-fun b!2120329 () Bool)

(declare-fun b_free!61551 () Bool)

(declare-fun b_next!62255 () Bool)

(assert (=> b!2120329 (= b_free!61551 (not b_next!62255))))

(declare-fun tp!648709 () Bool)

(declare-fun b_and!171131 () Bool)

(assert (=> b!2120329 (= tp!648709 b_and!171131)))

(declare-fun b!2120317 () Bool)

(assert (=> b!2120317 true))

(declare-fun bs!442662 () Bool)

(declare-fun b!2120309 () Bool)

(assert (= bs!442662 (and b!2120309 b!2120317)))

(declare-fun lambda!78474 () Int)

(declare-fun lambda!78473 () Int)

(assert (=> bs!442662 (not (= lambda!78474 lambda!78473))))

(assert (=> b!2120309 true))

(declare-fun b!2120298 () Bool)

(declare-fun e!1350173 () Bool)

(declare-fun tp!648715 () Bool)

(assert (=> b!2120298 (= e!1350173 tp!648715)))

(declare-fun b!2120299 () Bool)

(declare-fun e!1350178 () Bool)

(declare-fun tp!648699 () Bool)

(declare-fun mapRes!11741 () Bool)

(assert (=> b!2120299 (= e!1350178 (and tp!648699 mapRes!11741))))

(declare-fun condMapEmpty!11742 () Bool)

(declare-datatypes ((C!11460 0))(
  ( (C!11461 (val!6716 Int)) )
))
(declare-datatypes ((Regex!5657 0))(
  ( (ElementMatch!5657 (c!339673 C!11460)) (Concat!9959 (regOne!11826 Regex!5657) (regTwo!11826 Regex!5657)) (EmptyExpr!5657) (Star!5657 (reg!5986 Regex!5657)) (EmptyLang!5657) (Union!5657 (regOne!11827 Regex!5657) (regTwo!11827 Regex!5657)) )
))
(declare-datatypes ((List!23741 0))(
  ( (Nil!23657) (Cons!23657 (h!29058 Regex!5657) (t!196257 List!23741)) )
))
(declare-datatypes ((Context!2454 0))(
  ( (Context!2455 (exprs!1727 List!23741)) )
))
(declare-datatypes ((tuple2!23232 0))(
  ( (tuple2!23233 (_1!13516 Context!2454) (_2!13516 C!11460)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23234 0))(
  ( (tuple2!23235 (_1!13517 tuple2!23232) (_2!13517 (InoxSet Context!2454))) )
))
(declare-datatypes ((List!23742 0))(
  ( (Nil!23658) (Cons!23658 (h!29059 tuple2!23234) (t!196258 List!23742)) )
))
(declare-datatypes ((array!8357 0))(
  ( (array!8358 (arr!3708 (Array (_ BitVec 32) (_ BitVec 64))) (size!18488 (_ BitVec 32))) )
))
(declare-datatypes ((array!8359 0))(
  ( (array!8360 (arr!3709 (Array (_ BitVec 32) List!23742)) (size!18489 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4860 0))(
  ( (LongMapFixedSize!4861 (defaultEntry!2795 Int) (mask!6574 (_ BitVec 32)) (extraKeys!2678 (_ BitVec 32)) (zeroValue!2688 List!23742) (minValue!2688 List!23742) (_size!4911 (_ BitVec 32)) (_keys!2727 array!8357) (_values!2710 array!8359) (_vacant!2491 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9545 0))(
  ( (Cell!9546 (v!28191 LongMapFixedSize!4860)) )
))
(declare-datatypes ((Hashable!2344 0))(
  ( (HashableExt!2343 (__x!15466 Int)) )
))
(declare-datatypes ((MutLongMap!2430 0))(
  ( (LongMap!2430 (underlying!5055 Cell!9545)) (MutLongMapExt!2429 (__x!15467 Int)) )
))
(declare-datatypes ((Cell!9547 0))(
  ( (Cell!9548 (v!28192 MutLongMap!2430)) )
))
(declare-datatypes ((MutableMap!2344 0))(
  ( (MutableMapExt!2343 (__x!15468 Int)) (HashMap!2344 (underlying!5056 Cell!9547) (hashF!4267 Hashable!2344) (_size!4912 (_ BitVec 32)) (defaultValue!2506 Int)) )
))
(declare-datatypes ((CacheUp!1622 0))(
  ( (CacheUp!1623 (cache!2725 MutableMap!2344)) )
))
(declare-fun cacheUp!991 () CacheUp!1622)

(declare-fun mapDefault!11741 () List!23742)

(assert (=> b!2120299 (= condMapEmpty!11742 (= (arr!3709 (_values!2710 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23742)) mapDefault!11741)))))

(declare-fun b!2120300 () Bool)

(declare-fun e!1350189 () Bool)

(declare-fun e!1350193 () Bool)

(assert (=> b!2120300 (= e!1350189 e!1350193)))

(declare-fun b!2120301 () Bool)

(declare-fun e!1350176 () Bool)

(declare-fun e!1350188 () Bool)

(assert (=> b!2120301 (= e!1350176 e!1350188)))

(declare-fun b!2120302 () Bool)

(declare-fun e!1350180 () Bool)

(declare-fun e!1350175 () Bool)

(declare-fun lt!794673 () MutLongMap!2430)

(get-info :version)

(assert (=> b!2120302 (= e!1350180 (and e!1350175 ((_ is LongMap!2430) lt!794673)))))

(assert (=> b!2120302 (= lt!794673 (v!28192 (underlying!5056 (cache!2725 cacheUp!991))))))

(declare-fun b!2120303 () Bool)

(declare-fun res!918868 () Bool)

(declare-fun e!1350191 () Bool)

(assert (=> b!2120303 (=> (not res!918868) (not e!1350191))))

(declare-datatypes ((Hashable!2345 0))(
  ( (HashableExt!2344 (__x!15469 Int)) )
))
(declare-datatypes ((tuple3!2860 0))(
  ( (tuple3!2861 (_1!13518 (InoxSet Context!2454)) (_2!13518 Int) (_3!1900 Int)) )
))
(declare-datatypes ((tuple2!23236 0))(
  ( (tuple2!23237 (_1!13519 tuple3!2860) (_2!13519 Int)) )
))
(declare-datatypes ((List!23743 0))(
  ( (Nil!23659) (Cons!23659 (h!29060 tuple2!23236) (t!196259 List!23743)) )
))
(declare-datatypes ((array!8361 0))(
  ( (array!8362 (arr!3710 (Array (_ BitVec 32) List!23743)) (size!18490 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4862 0))(
  ( (LongMapFixedSize!4863 (defaultEntry!2796 Int) (mask!6575 (_ BitVec 32)) (extraKeys!2679 (_ BitVec 32)) (zeroValue!2689 List!23743) (minValue!2689 List!23743) (_size!4913 (_ BitVec 32)) (_keys!2728 array!8357) (_values!2711 array!8361) (_vacant!2492 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9549 0))(
  ( (Cell!9550 (v!28193 LongMapFixedSize!4862)) )
))
(declare-datatypes ((List!23744 0))(
  ( (Nil!23660) (Cons!23660 (h!29061 C!11460) (t!196260 List!23744)) )
))
(declare-datatypes ((IArray!15595 0))(
  ( (IArray!15596 (innerList!7855 List!23744)) )
))
(declare-datatypes ((MutLongMap!2431 0))(
  ( (LongMap!2431 (underlying!5057 Cell!9549)) (MutLongMapExt!2430 (__x!15470 Int)) )
))
(declare-datatypes ((Cell!9551 0))(
  ( (Cell!9552 (v!28194 MutLongMap!2431)) )
))
(declare-datatypes ((Conc!7795 0))(
  ( (Node!7795 (left!18308 Conc!7795) (right!18638 Conc!7795) (csize!15820 Int) (cheight!8006 Int)) (Leaf!11391 (xs!10737 IArray!15595) (csize!15821 Int)) (Empty!7795) )
))
(declare-datatypes ((BalanceConc!15352 0))(
  ( (BalanceConc!15353 (c!339674 Conc!7795)) )
))
(declare-datatypes ((MutableMap!2345 0))(
  ( (MutableMapExt!2344 (__x!15471 Int)) (HashMap!2345 (underlying!5058 Cell!9551) (hashF!4268 Hashable!2345) (_size!4914 (_ BitVec 32)) (defaultValue!2507 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!582 0))(
  ( (CacheFurthestNullable!583 (cache!2726 MutableMap!2345) (totalInput!2892 BalanceConc!15352)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!582)

(declare-fun valid!1916 (CacheFurthestNullable!582) Bool)

(assert (=> b!2120303 (= res!918868 (valid!1916 cacheFurthestNullable!130))))

(declare-fun b!2120304 () Bool)

(declare-fun e!1350192 () Bool)

(assert (=> b!2120304 (= e!1350193 e!1350192)))

(declare-fun b!2120305 () Bool)

(declare-fun res!918869 () Bool)

(assert (=> b!2120305 (=> (not res!918869) (not e!1350191))))

(declare-datatypes ((tuple3!2862 0))(
  ( (tuple3!2863 (_1!13520 Regex!5657) (_2!13520 Context!2454) (_3!1901 C!11460)) )
))
(declare-datatypes ((tuple2!23238 0))(
  ( (tuple2!23239 (_1!13521 tuple3!2862) (_2!13521 (InoxSet Context!2454))) )
))
(declare-datatypes ((List!23745 0))(
  ( (Nil!23661) (Cons!23661 (h!29062 tuple2!23238) (t!196261 List!23745)) )
))
(declare-datatypes ((array!8363 0))(
  ( (array!8364 (arr!3711 (Array (_ BitVec 32) List!23745)) (size!18491 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4864 0))(
  ( (LongMapFixedSize!4865 (defaultEntry!2797 Int) (mask!6576 (_ BitVec 32)) (extraKeys!2680 (_ BitVec 32)) (zeroValue!2690 List!23745) (minValue!2690 List!23745) (_size!4915 (_ BitVec 32)) (_keys!2729 array!8357) (_values!2712 array!8363) (_vacant!2493 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9553 0))(
  ( (Cell!9554 (v!28195 LongMapFixedSize!4864)) )
))
(declare-datatypes ((MutLongMap!2432 0))(
  ( (LongMap!2432 (underlying!5059 Cell!9553)) (MutLongMapExt!2431 (__x!15472 Int)) )
))
(declare-datatypes ((Cell!9555 0))(
  ( (Cell!9556 (v!28196 MutLongMap!2432)) )
))
(declare-datatypes ((Hashable!2346 0))(
  ( (HashableExt!2345 (__x!15473 Int)) )
))
(declare-datatypes ((MutableMap!2346 0))(
  ( (MutableMapExt!2345 (__x!15474 Int)) (HashMap!2346 (underlying!5060 Cell!9555) (hashF!4269 Hashable!2346) (_size!4916 (_ BitVec 32)) (defaultValue!2508 Int)) )
))
(declare-datatypes ((CacheDown!1608 0))(
  ( (CacheDown!1609 (cache!2727 MutableMap!2346)) )
))
(declare-fun cacheDown!1110 () CacheDown!1608)

(declare-fun valid!1917 (CacheDown!1608) Bool)

(assert (=> b!2120305 (= res!918869 (valid!1917 cacheDown!1110))))

(declare-fun b!2120306 () Bool)

(declare-fun e!1350174 () Bool)

(declare-fun totalInput!886 () BalanceConc!15352)

(declare-fun tp!648691 () Bool)

(declare-fun inv!31254 (Conc!7795) Bool)

(assert (=> b!2120306 (= e!1350174 (and (inv!31254 (c!339674 totalInput!886)) tp!648691))))

(declare-fun setRes!14677 () Bool)

(declare-fun tp!648705 () Bool)

(declare-fun setNonEmpty!14677 () Bool)

(declare-fun setElem!14677 () Context!2454)

(declare-fun inv!31255 (Context!2454) Bool)

(assert (=> setNonEmpty!14677 (= setRes!14677 (and tp!648705 (inv!31255 setElem!14677) e!1350173))))

(declare-fun z!3883 () (InoxSet Context!2454))

(declare-fun setRest!14677 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14677 (= z!3883 ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14677 true) setRest!14677))))

(declare-fun b!2120307 () Bool)

(declare-fun e!1350187 () Bool)

(declare-fun e!1350190 () Bool)

(assert (=> b!2120307 (= e!1350187 e!1350190)))

(declare-fun mapIsEmpty!11741 () Bool)

(declare-fun mapRes!11742 () Bool)

(assert (=> mapIsEmpty!11741 mapRes!11742))

(declare-fun b!2120308 () Bool)

(declare-fun e!1350170 () Bool)

(declare-fun e!1350166 () Bool)

(assert (=> b!2120308 (= e!1350170 e!1350166)))

(declare-fun e!1350177 () Bool)

(declare-datatypes ((StackFrame!26 0))(
  ( (StackFrame!27 (z!5713 (InoxSet Context!2454)) (from!2612 Int) (lastNullablePos!299 Int) (res!918871 Int) (totalInput!2893 BalanceConc!15352)) )
))
(declare-datatypes ((List!23746 0))(
  ( (Nil!23662) (Cons!23662 (h!29063 StackFrame!26) (t!196262 List!23746)) )
))
(declare-fun lt!794672 () List!23746)

(declare-fun forall!4857 (List!23746 Int) Bool)

(assert (=> b!2120309 (= e!1350177 (not (forall!4857 lt!794672 lambda!78474)))))

(declare-fun tp!648697 () Bool)

(declare-fun tp!648708 () Bool)

(declare-fun e!1350171 () Bool)

(declare-fun array_inv!2660 (array!8357) Bool)

(declare-fun array_inv!2661 (array!8361) Bool)

(assert (=> b!2120310 (= e!1350192 (and tp!648711 tp!648708 tp!648697 (array_inv!2660 (_keys!2728 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))) (array_inv!2661 (_values!2711 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))) e!1350171))))

(declare-fun b!2120311 () Bool)

(declare-fun res!918870 () Bool)

(assert (=> b!2120311 (=> (not res!918870) (not e!1350191))))

(declare-fun valid!1918 (CacheUp!1622) Bool)

(assert (=> b!2120311 (= res!918870 (valid!1918 cacheUp!991))))

(declare-fun b!2120312 () Bool)

(declare-fun e!1350184 () Bool)

(declare-fun lt!794674 () MutLongMap!2431)

(assert (=> b!2120312 (= e!1350184 (and e!1350189 ((_ is LongMap!2431) lt!794674)))))

(assert (=> b!2120312 (= lt!794674 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))

(declare-fun e!1350196 () Bool)

(declare-fun b!2120313 () Bool)

(declare-fun e!1350172 () Bool)

(declare-fun e!1350169 () Bool)

(declare-fun inv!31256 (BalanceConc!15352) Bool)

(assert (=> b!2120313 (= e!1350172 (and e!1350169 (inv!31256 (totalInput!2892 cacheFurthestNullable!130)) e!1350196))))

(declare-fun setIsEmpty!14677 () Bool)

(assert (=> setIsEmpty!14677 setRes!14677))

(declare-fun b!2120314 () Bool)

(declare-fun res!918864 () Bool)

(assert (=> b!2120314 (=> (not res!918864) (not e!1350191))))

(assert (=> b!2120314 (= res!918864 (= (totalInput!2892 cacheFurthestNullable!130) totalInput!886))))

(declare-fun b!2120315 () Bool)

(declare-fun e!1350168 () Bool)

(declare-fun e!1350167 () Bool)

(assert (=> b!2120315 (= e!1350168 e!1350167)))

(declare-fun mapIsEmpty!11742 () Bool)

(declare-fun mapRes!11743 () Bool)

(assert (=> mapIsEmpty!11742 mapRes!11743))

(declare-fun b!2120316 () Bool)

(declare-fun e!1350179 () Bool)

(declare-fun tp!648716 () Bool)

(assert (=> b!2120316 (= e!1350179 (and tp!648716 mapRes!11743))))

(declare-fun condMapEmpty!11743 () Bool)

(declare-fun mapDefault!11743 () List!23745)

(assert (=> b!2120316 (= condMapEmpty!11743 (= (arr!3711 (_values!2712 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23745)) mapDefault!11743)))))

(declare-fun mapNonEmpty!11741 () Bool)

(declare-fun tp!648692 () Bool)

(declare-fun tp!648702 () Bool)

(assert (=> mapNonEmpty!11741 (= mapRes!11741 (and tp!648692 tp!648702))))

(declare-fun mapValue!11743 () List!23742)

(declare-fun mapKey!11741 () (_ BitVec 32))

(declare-fun mapRest!11743 () (Array (_ BitVec 32) List!23742))

(assert (=> mapNonEmpty!11741 (= (arr!3709 (_values!2710 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991))))))) (store mapRest!11743 mapKey!11741 mapValue!11743))))

(declare-fun e!1350182 () Bool)

(assert (=> b!2120317 (= e!1350182 e!1350177)))

(declare-fun res!918867 () Bool)

(assert (=> b!2120317 (=> (not res!918867) (not e!1350177))))

(assert (=> b!2120317 (= res!918867 (forall!4857 lt!794672 lambda!78473))))

(declare-fun lt!794666 () Int)

(declare-fun lt!794669 () Int)

(declare-fun lt!794670 () Int)

(declare-fun lt!794668 () Int)

(declare-fun furthestNullablePosition!7 ((InoxSet Context!2454) Int BalanceConc!15352 Int Int) Int)

(assert (=> b!2120317 (= lt!794668 (furthestNullablePosition!7 z!3883 lt!794669 totalInput!886 lt!794666 lt!794670))))

(declare-fun b!2120318 () Bool)

(declare-fun tp!648694 () Bool)

(assert (=> b!2120318 (= e!1350196 (and (inv!31254 (c!339674 (totalInput!2892 cacheFurthestNullable!130))) tp!648694))))

(assert (=> b!2120319 (= e!1350169 (and e!1350184 tp!648696))))

(declare-fun res!918866 () Bool)

(assert (=> start!206964 (=> (not res!918866) (not e!1350191))))

(declare-fun input!5507 () BalanceConc!15352)

(declare-fun isSuffix!614 (List!23744 List!23744) Bool)

(declare-fun list!9521 (BalanceConc!15352) List!23744)

(assert (=> start!206964 (= res!918866 (isSuffix!614 (list!9521 input!5507) (list!9521 totalInput!886)))))

(assert (=> start!206964 e!1350191))

(declare-fun inv!31257 (CacheFurthestNullable!582) Bool)

(assert (=> start!206964 (and (inv!31257 cacheFurthestNullable!130) e!1350172)))

(declare-fun condSetEmpty!14677 () Bool)

(assert (=> start!206964 (= condSetEmpty!14677 (= z!3883 ((as const (Array Context!2454 Bool)) false)))))

(assert (=> start!206964 setRes!14677))

(declare-fun e!1350194 () Bool)

(assert (=> start!206964 (and (inv!31256 input!5507) e!1350194)))

(declare-fun inv!31258 (CacheDown!1608) Bool)

(assert (=> start!206964 (and (inv!31258 cacheDown!1110) e!1350187)))

(declare-fun inv!31259 (CacheUp!1622) Bool)

(assert (=> start!206964 (and (inv!31259 cacheUp!991) e!1350176)))

(assert (=> start!206964 (and (inv!31256 totalInput!886) e!1350174)))

(declare-fun tp!648700 () Bool)

(declare-fun tp!648712 () Bool)

(declare-fun array_inv!2662 (array!8363) Bool)

(assert (=> b!2120320 (= e!1350166 (and tp!648714 tp!648712 tp!648700 (array_inv!2660 (_keys!2729 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110))))))) (array_inv!2662 (_values!2712 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110))))))) e!1350179))))

(declare-fun b!2120321 () Bool)

(declare-fun tp!648704 () Bool)

(assert (=> b!2120321 (= e!1350194 (and (inv!31254 (c!339674 input!5507)) tp!648704))))

(declare-fun mapNonEmpty!11742 () Bool)

(declare-fun tp!648695 () Bool)

(declare-fun tp!648706 () Bool)

(assert (=> mapNonEmpty!11742 (= mapRes!11742 (and tp!648695 tp!648706))))

(declare-fun mapKey!11742 () (_ BitVec 32))

(declare-fun mapRest!11741 () (Array (_ BitVec 32) List!23743))

(declare-fun mapValue!11742 () List!23743)

(assert (=> mapNonEmpty!11742 (= (arr!3710 (_values!2711 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))) (store mapRest!11741 mapKey!11742 mapValue!11742))))

(declare-fun b!2120322 () Bool)

(assert (=> b!2120322 (= e!1350191 e!1350182)))

(declare-fun res!918865 () Bool)

(assert (=> b!2120322 (=> (not res!918865) (not e!1350182))))

(declare-fun lt!794671 () Bool)

(assert (=> b!2120322 (= res!918865 (and (>= lt!794669 0) (<= lt!794669 lt!794666) (>= lt!794670 (- 1)) (< lt!794670 lt!794669) (or (not lt!794671) (= lt!794670 (- lt!794669 1)))))))

(assert (=> b!2120322 (= lt!794672 Nil!23662)))

(assert (=> b!2120322 (= lt!794670 (ite lt!794671 (- lt!794669 1) (- 1)))))

(declare-fun nullableZipper!60 ((InoxSet Context!2454)) Bool)

(assert (=> b!2120322 (= lt!794671 (nullableZipper!60 z!3883))))

(declare-fun size!18492 (BalanceConc!15352) Int)

(assert (=> b!2120322 (= lt!794669 (- lt!794666 (size!18492 input!5507)))))

(assert (=> b!2120322 (= lt!794666 (size!18492 totalInput!886))))

(declare-fun b!2120323 () Bool)

(declare-fun e!1350195 () Bool)

(assert (=> b!2120323 (= e!1350195 e!1350170)))

(declare-fun b!2120324 () Bool)

(declare-fun e!1350181 () Bool)

(declare-fun lt!794667 () MutLongMap!2432)

(assert (=> b!2120324 (= e!1350181 (and e!1350195 ((_ is LongMap!2432) lt!794667)))))

(assert (=> b!2120324 (= lt!794667 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110))))))

(assert (=> b!2120325 (= e!1350190 (and e!1350181 tp!648713))))

(declare-fun b!2120326 () Bool)

(declare-fun tp!648703 () Bool)

(assert (=> b!2120326 (= e!1350171 (and tp!648703 mapRes!11742))))

(declare-fun condMapEmpty!11741 () Bool)

(declare-fun mapDefault!11742 () List!23743)

(assert (=> b!2120326 (= condMapEmpty!11741 (= (arr!3710 (_values!2711 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23743)) mapDefault!11742)))))

(declare-fun mapNonEmpty!11743 () Bool)

(declare-fun tp!648707 () Bool)

(declare-fun tp!648710 () Bool)

(assert (=> mapNonEmpty!11743 (= mapRes!11743 (and tp!648707 tp!648710))))

(declare-fun mapKey!11743 () (_ BitVec 32))

(declare-fun mapRest!11742 () (Array (_ BitVec 32) List!23745))

(declare-fun mapValue!11741 () List!23745)

(assert (=> mapNonEmpty!11743 (= (arr!3711 (_values!2712 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110))))))) (store mapRest!11742 mapKey!11743 mapValue!11741))))

(declare-fun mapIsEmpty!11743 () Bool)

(assert (=> mapIsEmpty!11743 mapRes!11741))

(declare-fun b!2120327 () Bool)

(assert (=> b!2120327 (= e!1350175 e!1350168)))

(assert (=> b!2120328 (= e!1350188 (and e!1350180 tp!648693))))

(declare-fun tp!648701 () Bool)

(declare-fun tp!648698 () Bool)

(declare-fun array_inv!2663 (array!8359) Bool)

(assert (=> b!2120329 (= e!1350167 (and tp!648709 tp!648698 tp!648701 (array_inv!2660 (_keys!2727 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991))))))) (array_inv!2663 (_values!2710 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991))))))) e!1350178))))

(assert (= (and start!206964 res!918866) b!2120311))

(assert (= (and b!2120311 res!918870) b!2120305))

(assert (= (and b!2120305 res!918869) b!2120303))

(assert (= (and b!2120303 res!918868) b!2120314))

(assert (= (and b!2120314 res!918864) b!2120322))

(assert (= (and b!2120322 res!918865) b!2120317))

(assert (= (and b!2120317 res!918867) b!2120309))

(assert (= (and b!2120326 condMapEmpty!11741) mapIsEmpty!11741))

(assert (= (and b!2120326 (not condMapEmpty!11741)) mapNonEmpty!11742))

(assert (= b!2120310 b!2120326))

(assert (= b!2120304 b!2120310))

(assert (= b!2120300 b!2120304))

(assert (= (and b!2120312 ((_ is LongMap!2431) (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))) b!2120300))

(assert (= b!2120319 b!2120312))

(assert (= (and b!2120313 ((_ is HashMap!2345) (cache!2726 cacheFurthestNullable!130))) b!2120319))

(assert (= b!2120313 b!2120318))

(assert (= start!206964 b!2120313))

(assert (= (and start!206964 condSetEmpty!14677) setIsEmpty!14677))

(assert (= (and start!206964 (not condSetEmpty!14677)) setNonEmpty!14677))

(assert (= setNonEmpty!14677 b!2120298))

(assert (= start!206964 b!2120321))

(assert (= (and b!2120316 condMapEmpty!11743) mapIsEmpty!11742))

(assert (= (and b!2120316 (not condMapEmpty!11743)) mapNonEmpty!11743))

(assert (= b!2120320 b!2120316))

(assert (= b!2120308 b!2120320))

(assert (= b!2120323 b!2120308))

(assert (= (and b!2120324 ((_ is LongMap!2432) (v!28196 (underlying!5060 (cache!2727 cacheDown!1110))))) b!2120323))

(assert (= b!2120325 b!2120324))

(assert (= (and b!2120307 ((_ is HashMap!2346) (cache!2727 cacheDown!1110))) b!2120325))

(assert (= start!206964 b!2120307))

(assert (= (and b!2120299 condMapEmpty!11742) mapIsEmpty!11743))

(assert (= (and b!2120299 (not condMapEmpty!11742)) mapNonEmpty!11741))

(assert (= b!2120329 b!2120299))

(assert (= b!2120315 b!2120329))

(assert (= b!2120327 b!2120315))

(assert (= (and b!2120302 ((_ is LongMap!2430) (v!28192 (underlying!5056 (cache!2725 cacheUp!991))))) b!2120327))

(assert (= b!2120328 b!2120302))

(assert (= (and b!2120301 ((_ is HashMap!2344) (cache!2725 cacheUp!991))) b!2120328))

(assert (= start!206964 b!2120301))

(assert (= start!206964 b!2120306))

(declare-fun m!2574615 () Bool)

(assert (=> b!2120322 m!2574615))

(declare-fun m!2574617 () Bool)

(assert (=> b!2120322 m!2574617))

(declare-fun m!2574619 () Bool)

(assert (=> b!2120322 m!2574619))

(declare-fun m!2574621 () Bool)

(assert (=> mapNonEmpty!11741 m!2574621))

(declare-fun m!2574623 () Bool)

(assert (=> b!2120303 m!2574623))

(declare-fun m!2574625 () Bool)

(assert (=> b!2120309 m!2574625))

(declare-fun m!2574627 () Bool)

(assert (=> b!2120320 m!2574627))

(declare-fun m!2574629 () Bool)

(assert (=> b!2120320 m!2574629))

(declare-fun m!2574631 () Bool)

(assert (=> b!2120318 m!2574631))

(declare-fun m!2574633 () Bool)

(assert (=> b!2120317 m!2574633))

(declare-fun m!2574635 () Bool)

(assert (=> b!2120317 m!2574635))

(declare-fun m!2574637 () Bool)

(assert (=> b!2120313 m!2574637))

(declare-fun m!2574639 () Bool)

(assert (=> b!2120310 m!2574639))

(declare-fun m!2574641 () Bool)

(assert (=> b!2120310 m!2574641))

(declare-fun m!2574643 () Bool)

(assert (=> b!2120305 m!2574643))

(declare-fun m!2574645 () Bool)

(assert (=> b!2120306 m!2574645))

(declare-fun m!2574647 () Bool)

(assert (=> mapNonEmpty!11742 m!2574647))

(declare-fun m!2574649 () Bool)

(assert (=> setNonEmpty!14677 m!2574649))

(declare-fun m!2574651 () Bool)

(assert (=> mapNonEmpty!11743 m!2574651))

(declare-fun m!2574653 () Bool)

(assert (=> start!206964 m!2574653))

(declare-fun m!2574655 () Bool)

(assert (=> start!206964 m!2574655))

(declare-fun m!2574657 () Bool)

(assert (=> start!206964 m!2574657))

(declare-fun m!2574659 () Bool)

(assert (=> start!206964 m!2574659))

(declare-fun m!2574661 () Bool)

(assert (=> start!206964 m!2574661))

(declare-fun m!2574663 () Bool)

(assert (=> start!206964 m!2574663))

(assert (=> start!206964 m!2574659))

(assert (=> start!206964 m!2574653))

(declare-fun m!2574665 () Bool)

(assert (=> start!206964 m!2574665))

(declare-fun m!2574667 () Bool)

(assert (=> start!206964 m!2574667))

(declare-fun m!2574669 () Bool)

(assert (=> b!2120329 m!2574669))

(declare-fun m!2574671 () Bool)

(assert (=> b!2120329 m!2574671))

(declare-fun m!2574673 () Bool)

(assert (=> b!2120311 m!2574673))

(declare-fun m!2574675 () Bool)

(assert (=> b!2120321 m!2574675))

(check-sat (not b!2120322) (not b_next!62245) (not b!2120299) (not b!2120313) (not b_next!62247) b_and!171131 (not b!2120318) (not b_next!62255) (not mapNonEmpty!11742) (not mapNonEmpty!11741) (not b!2120317) (not b!2120298) (not b_next!62251) (not b!2120316) b_and!171121 (not b!2120326) (not b_next!62253) (not b!2120329) (not b!2120309) b_and!171127 (not b!2120310) (not b!2120303) (not b!2120320) b_and!171129 (not setNonEmpty!14677) b_and!171125 (not b!2120311) (not b!2120306) (not b!2120321) (not start!206964) (not b_next!62249) (not b!2120305) b_and!171123 (not mapNonEmpty!11743))
(check-sat (not b_next!62253) (not b_next!62245) b_and!171127 (not b_next!62247) b_and!171131 (not b_next!62255) b_and!171129 b_and!171125 (not b_next!62249) b_and!171123 (not b_next!62251) b_and!171121)
(get-model)

(declare-fun d!643326 () Bool)

(assert (=> d!643326 (= (array_inv!2660 (_keys!2727 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991))))))) (bvsge (size!18488 (_keys!2727 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2120329 d!643326))

(declare-fun d!643328 () Bool)

(assert (=> d!643328 (= (array_inv!2663 (_values!2710 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991))))))) (bvsge (size!18489 (_values!2710 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2120329 d!643328))

(declare-fun d!643330 () Bool)

(declare-fun validCacheMapDown!240 (MutableMap!2346) Bool)

(assert (=> d!643330 (= (valid!1917 cacheDown!1110) (validCacheMapDown!240 (cache!2727 cacheDown!1110)))))

(declare-fun bs!442663 () Bool)

(assert (= bs!442663 d!643330))

(declare-fun m!2574677 () Bool)

(assert (=> bs!442663 m!2574677))

(assert (=> b!2120305 d!643330))

(declare-fun d!643332 () Bool)

(declare-fun isBalanced!2446 (Conc!7795) Bool)

(assert (=> d!643332 (= (inv!31256 (totalInput!2892 cacheFurthestNullable!130)) (isBalanced!2446 (c!339674 (totalInput!2892 cacheFurthestNullable!130))))))

(declare-fun bs!442664 () Bool)

(assert (= bs!442664 d!643332))

(declare-fun m!2574679 () Bool)

(assert (=> bs!442664 m!2574679))

(assert (=> b!2120313 d!643332))

(declare-fun d!643334 () Bool)

(declare-fun c!339677 () Bool)

(assert (=> d!643334 (= c!339677 ((_ is Node!7795) (c!339674 input!5507)))))

(declare-fun e!1350201 () Bool)

(assert (=> d!643334 (= (inv!31254 (c!339674 input!5507)) e!1350201)))

(declare-fun b!2120340 () Bool)

(declare-fun inv!31260 (Conc!7795) Bool)

(assert (=> b!2120340 (= e!1350201 (inv!31260 (c!339674 input!5507)))))

(declare-fun b!2120341 () Bool)

(declare-fun e!1350202 () Bool)

(assert (=> b!2120341 (= e!1350201 e!1350202)))

(declare-fun res!918874 () Bool)

(assert (=> b!2120341 (= res!918874 (not ((_ is Leaf!11391) (c!339674 input!5507))))))

(assert (=> b!2120341 (=> res!918874 e!1350202)))

(declare-fun b!2120342 () Bool)

(declare-fun inv!31261 (Conc!7795) Bool)

(assert (=> b!2120342 (= e!1350202 (inv!31261 (c!339674 input!5507)))))

(assert (= (and d!643334 c!339677) b!2120340))

(assert (= (and d!643334 (not c!339677)) b!2120341))

(assert (= (and b!2120341 (not res!918874)) b!2120342))

(declare-fun m!2574681 () Bool)

(assert (=> b!2120340 m!2574681))

(declare-fun m!2574683 () Bool)

(assert (=> b!2120342 m!2574683))

(assert (=> b!2120321 d!643334))

(declare-fun d!643336 () Bool)

(declare-fun lambda!78477 () Int)

(declare-fun exists!690 ((InoxSet Context!2454) Int) Bool)

(assert (=> d!643336 (= (nullableZipper!60 z!3883) (exists!690 z!3883 lambda!78477))))

(declare-fun bs!442665 () Bool)

(assert (= bs!442665 d!643336))

(declare-fun m!2574685 () Bool)

(assert (=> bs!442665 m!2574685))

(assert (=> b!2120322 d!643336))

(declare-fun d!643338 () Bool)

(declare-fun lt!794677 () Int)

(declare-fun size!18493 (List!23744) Int)

(assert (=> d!643338 (= lt!794677 (size!18493 (list!9521 input!5507)))))

(declare-fun size!18494 (Conc!7795) Int)

(assert (=> d!643338 (= lt!794677 (size!18494 (c!339674 input!5507)))))

(assert (=> d!643338 (= (size!18492 input!5507) lt!794677)))

(declare-fun bs!442666 () Bool)

(assert (= bs!442666 d!643338))

(assert (=> bs!442666 m!2574659))

(assert (=> bs!442666 m!2574659))

(declare-fun m!2574687 () Bool)

(assert (=> bs!442666 m!2574687))

(declare-fun m!2574689 () Bool)

(assert (=> bs!442666 m!2574689))

(assert (=> b!2120322 d!643338))

(declare-fun d!643340 () Bool)

(declare-fun lt!794678 () Int)

(assert (=> d!643340 (= lt!794678 (size!18493 (list!9521 totalInput!886)))))

(assert (=> d!643340 (= lt!794678 (size!18494 (c!339674 totalInput!886)))))

(assert (=> d!643340 (= (size!18492 totalInput!886) lt!794678)))

(declare-fun bs!442667 () Bool)

(assert (= bs!442667 d!643340))

(assert (=> bs!442667 m!2574653))

(assert (=> bs!442667 m!2574653))

(declare-fun m!2574691 () Bool)

(assert (=> bs!442667 m!2574691))

(declare-fun m!2574693 () Bool)

(assert (=> bs!442667 m!2574693))

(assert (=> b!2120322 d!643340))

(declare-fun d!643342 () Bool)

(declare-fun c!339680 () Bool)

(assert (=> d!643342 (= c!339680 ((_ is Node!7795) (c!339674 totalInput!886)))))

(declare-fun e!1350203 () Bool)

(assert (=> d!643342 (= (inv!31254 (c!339674 totalInput!886)) e!1350203)))

(declare-fun b!2120343 () Bool)

(assert (=> b!2120343 (= e!1350203 (inv!31260 (c!339674 totalInput!886)))))

(declare-fun b!2120344 () Bool)

(declare-fun e!1350204 () Bool)

(assert (=> b!2120344 (= e!1350203 e!1350204)))

(declare-fun res!918875 () Bool)

(assert (=> b!2120344 (= res!918875 (not ((_ is Leaf!11391) (c!339674 totalInput!886))))))

(assert (=> b!2120344 (=> res!918875 e!1350204)))

(declare-fun b!2120345 () Bool)

(assert (=> b!2120345 (= e!1350204 (inv!31261 (c!339674 totalInput!886)))))

(assert (= (and d!643342 c!339680) b!2120343))

(assert (= (and d!643342 (not c!339680)) b!2120344))

(assert (= (and b!2120344 (not res!918875)) b!2120345))

(declare-fun m!2574695 () Bool)

(assert (=> b!2120343 m!2574695))

(declare-fun m!2574697 () Bool)

(assert (=> b!2120345 m!2574697))

(assert (=> b!2120306 d!643342))

(declare-fun d!643344 () Bool)

(declare-fun validCacheMapUp!242 (MutableMap!2344) Bool)

(assert (=> d!643344 (= (valid!1918 cacheUp!991) (validCacheMapUp!242 (cache!2725 cacheUp!991)))))

(declare-fun bs!442668 () Bool)

(assert (= bs!442668 d!643344))

(declare-fun m!2574699 () Bool)

(assert (=> bs!442668 m!2574699))

(assert (=> b!2120311 d!643344))

(declare-fun d!643346 () Bool)

(declare-fun c!339681 () Bool)

(assert (=> d!643346 (= c!339681 ((_ is Node!7795) (c!339674 (totalInput!2892 cacheFurthestNullable!130))))))

(declare-fun e!1350205 () Bool)

(assert (=> d!643346 (= (inv!31254 (c!339674 (totalInput!2892 cacheFurthestNullable!130))) e!1350205)))

(declare-fun b!2120346 () Bool)

(assert (=> b!2120346 (= e!1350205 (inv!31260 (c!339674 (totalInput!2892 cacheFurthestNullable!130))))))

(declare-fun b!2120347 () Bool)

(declare-fun e!1350206 () Bool)

(assert (=> b!2120347 (= e!1350205 e!1350206)))

(declare-fun res!918876 () Bool)

(assert (=> b!2120347 (= res!918876 (not ((_ is Leaf!11391) (c!339674 (totalInput!2892 cacheFurthestNullable!130)))))))

(assert (=> b!2120347 (=> res!918876 e!1350206)))

(declare-fun b!2120348 () Bool)

(assert (=> b!2120348 (= e!1350206 (inv!31261 (c!339674 (totalInput!2892 cacheFurthestNullable!130))))))

(assert (= (and d!643346 c!339681) b!2120346))

(assert (= (and d!643346 (not c!339681)) b!2120347))

(assert (= (and b!2120347 (not res!918876)) b!2120348))

(declare-fun m!2574701 () Bool)

(assert (=> b!2120346 m!2574701))

(declare-fun m!2574703 () Bool)

(assert (=> b!2120348 m!2574703))

(assert (=> b!2120318 d!643346))

(declare-fun d!643348 () Bool)

(declare-fun list!9522 (Conc!7795) List!23744)

(assert (=> d!643348 (= (list!9521 input!5507) (list!9522 (c!339674 input!5507)))))

(declare-fun bs!442669 () Bool)

(assert (= bs!442669 d!643348))

(declare-fun m!2574705 () Bool)

(assert (=> bs!442669 m!2574705))

(assert (=> start!206964 d!643348))

(declare-fun d!643350 () Bool)

(assert (=> d!643350 (= (inv!31256 totalInput!886) (isBalanced!2446 (c!339674 totalInput!886)))))

(declare-fun bs!442670 () Bool)

(assert (= bs!442670 d!643350))

(declare-fun m!2574707 () Bool)

(assert (=> bs!442670 m!2574707))

(assert (=> start!206964 d!643350))

(declare-fun d!643352 () Bool)

(assert (=> d!643352 (= (inv!31256 input!5507) (isBalanced!2446 (c!339674 input!5507)))))

(declare-fun bs!442671 () Bool)

(assert (= bs!442671 d!643352))

(declare-fun m!2574709 () Bool)

(assert (=> bs!442671 m!2574709))

(assert (=> start!206964 d!643352))

(declare-fun d!643354 () Bool)

(assert (=> d!643354 (= (list!9521 totalInput!886) (list!9522 (c!339674 totalInput!886)))))

(declare-fun bs!442672 () Bool)

(assert (= bs!442672 d!643354))

(declare-fun m!2574711 () Bool)

(assert (=> bs!442672 m!2574711))

(assert (=> start!206964 d!643354))

(declare-fun d!643356 () Bool)

(declare-fun res!918879 () Bool)

(declare-fun e!1350209 () Bool)

(assert (=> d!643356 (=> (not res!918879) (not e!1350209))))

(assert (=> d!643356 (= res!918879 ((_ is HashMap!2344) (cache!2725 cacheUp!991)))))

(assert (=> d!643356 (= (inv!31259 cacheUp!991) e!1350209)))

(declare-fun b!2120351 () Bool)

(assert (=> b!2120351 (= e!1350209 (validCacheMapUp!242 (cache!2725 cacheUp!991)))))

(assert (= (and d!643356 res!918879) b!2120351))

(assert (=> b!2120351 m!2574699))

(assert (=> start!206964 d!643356))

(declare-fun d!643358 () Bool)

(declare-fun res!918882 () Bool)

(declare-fun e!1350212 () Bool)

(assert (=> d!643358 (=> (not res!918882) (not e!1350212))))

(assert (=> d!643358 (= res!918882 ((_ is HashMap!2346) (cache!2727 cacheDown!1110)))))

(assert (=> d!643358 (= (inv!31258 cacheDown!1110) e!1350212)))

(declare-fun b!2120354 () Bool)

(assert (=> b!2120354 (= e!1350212 (validCacheMapDown!240 (cache!2727 cacheDown!1110)))))

(assert (= (and d!643358 res!918882) b!2120354))

(assert (=> b!2120354 m!2574677))

(assert (=> start!206964 d!643358))

(declare-fun d!643360 () Bool)

(declare-fun res!918885 () Bool)

(declare-fun e!1350215 () Bool)

(assert (=> d!643360 (=> (not res!918885) (not e!1350215))))

(assert (=> d!643360 (= res!918885 ((_ is HashMap!2345) (cache!2726 cacheFurthestNullable!130)))))

(assert (=> d!643360 (= (inv!31257 cacheFurthestNullable!130) e!1350215)))

(declare-fun b!2120357 () Bool)

(declare-fun validCacheMapFurthestNullable!92 (MutableMap!2345 BalanceConc!15352) Bool)

(assert (=> b!2120357 (= e!1350215 (validCacheMapFurthestNullable!92 (cache!2726 cacheFurthestNullable!130) (totalInput!2892 cacheFurthestNullable!130)))))

(assert (= (and d!643360 res!918885) b!2120357))

(declare-fun m!2574713 () Bool)

(assert (=> b!2120357 m!2574713))

(assert (=> start!206964 d!643360))

(declare-fun d!643362 () Bool)

(declare-fun e!1350218 () Bool)

(assert (=> d!643362 e!1350218))

(declare-fun res!918888 () Bool)

(assert (=> d!643362 (=> res!918888 e!1350218)))

(declare-fun lt!794681 () Bool)

(assert (=> d!643362 (= res!918888 (not lt!794681))))

(declare-fun drop!1181 (List!23744 Int) List!23744)

(assert (=> d!643362 (= lt!794681 (= (list!9521 input!5507) (drop!1181 (list!9521 totalInput!886) (- (size!18493 (list!9521 totalInput!886)) (size!18493 (list!9521 input!5507))))))))

(assert (=> d!643362 (= (isSuffix!614 (list!9521 input!5507) (list!9521 totalInput!886)) lt!794681)))

(declare-fun b!2120360 () Bool)

(assert (=> b!2120360 (= e!1350218 (>= (size!18493 (list!9521 totalInput!886)) (size!18493 (list!9521 input!5507))))))

(assert (= (and d!643362 (not res!918888)) b!2120360))

(assert (=> d!643362 m!2574653))

(assert (=> d!643362 m!2574691))

(assert (=> d!643362 m!2574659))

(assert (=> d!643362 m!2574687))

(assert (=> d!643362 m!2574653))

(declare-fun m!2574715 () Bool)

(assert (=> d!643362 m!2574715))

(assert (=> b!2120360 m!2574653))

(assert (=> b!2120360 m!2574691))

(assert (=> b!2120360 m!2574659))

(assert (=> b!2120360 m!2574687))

(assert (=> start!206964 d!643362))

(declare-fun d!643364 () Bool)

(assert (=> d!643364 (= (array_inv!2660 (_keys!2729 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110))))))) (bvsge (size!18488 (_keys!2729 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2120320 d!643364))

(declare-fun d!643366 () Bool)

(assert (=> d!643366 (= (array_inv!2662 (_values!2712 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110))))))) (bvsge (size!18491 (_values!2712 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2120320 d!643366))

(declare-fun d!643368 () Bool)

(assert (=> d!643368 (= (valid!1916 cacheFurthestNullable!130) (validCacheMapFurthestNullable!92 (cache!2726 cacheFurthestNullable!130) (totalInput!2892 cacheFurthestNullable!130)))))

(declare-fun bs!442673 () Bool)

(assert (= bs!442673 d!643368))

(assert (=> bs!442673 m!2574713))

(assert (=> b!2120303 d!643368))

(declare-fun d!643370 () Bool)

(assert (=> d!643370 (= (array_inv!2660 (_keys!2728 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))) (bvsge (size!18488 (_keys!2728 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2120310 d!643370))

(declare-fun d!643372 () Bool)

(assert (=> d!643372 (= (array_inv!2661 (_values!2711 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))) (bvsge (size!18490 (_values!2711 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2120310 d!643372))

(declare-fun d!643374 () Bool)

(declare-fun res!918893 () Bool)

(declare-fun e!1350223 () Bool)

(assert (=> d!643374 (=> res!918893 e!1350223)))

(assert (=> d!643374 (= res!918893 ((_ is Nil!23662) lt!794672))))

(assert (=> d!643374 (= (forall!4857 lt!794672 lambda!78474) e!1350223)))

(declare-fun b!2120365 () Bool)

(declare-fun e!1350224 () Bool)

(assert (=> b!2120365 (= e!1350223 e!1350224)))

(declare-fun res!918894 () Bool)

(assert (=> b!2120365 (=> (not res!918894) (not e!1350224))))

(declare-fun dynLambda!11305 (Int StackFrame!26) Bool)

(assert (=> b!2120365 (= res!918894 (dynLambda!11305 lambda!78474 (h!29063 lt!794672)))))

(declare-fun b!2120366 () Bool)

(assert (=> b!2120366 (= e!1350224 (forall!4857 (t!196262 lt!794672) lambda!78474))))

(assert (= (and d!643374 (not res!918893)) b!2120365))

(assert (= (and b!2120365 res!918894) b!2120366))

(declare-fun b_lambda!70449 () Bool)

(assert (=> (not b_lambda!70449) (not b!2120365)))

(declare-fun m!2574717 () Bool)

(assert (=> b!2120365 m!2574717))

(declare-fun m!2574719 () Bool)

(assert (=> b!2120366 m!2574719))

(assert (=> b!2120309 d!643374))

(declare-fun d!643376 () Bool)

(declare-fun res!918895 () Bool)

(declare-fun e!1350225 () Bool)

(assert (=> d!643376 (=> res!918895 e!1350225)))

(assert (=> d!643376 (= res!918895 ((_ is Nil!23662) lt!794672))))

(assert (=> d!643376 (= (forall!4857 lt!794672 lambda!78473) e!1350225)))

(declare-fun b!2120367 () Bool)

(declare-fun e!1350226 () Bool)

(assert (=> b!2120367 (= e!1350225 e!1350226)))

(declare-fun res!918896 () Bool)

(assert (=> b!2120367 (=> (not res!918896) (not e!1350226))))

(assert (=> b!2120367 (= res!918896 (dynLambda!11305 lambda!78473 (h!29063 lt!794672)))))

(declare-fun b!2120368 () Bool)

(assert (=> b!2120368 (= e!1350226 (forall!4857 (t!196262 lt!794672) lambda!78473))))

(assert (= (and d!643376 (not res!918895)) b!2120367))

(assert (= (and b!2120367 res!918896) b!2120368))

(declare-fun b_lambda!70451 () Bool)

(assert (=> (not b_lambda!70451) (not b!2120367)))

(declare-fun m!2574721 () Bool)

(assert (=> b!2120367 m!2574721))

(declare-fun m!2574723 () Bool)

(assert (=> b!2120368 m!2574723))

(assert (=> b!2120317 d!643376))

(declare-fun b!2120379 () Bool)

(declare-fun e!1350235 () Int)

(assert (=> b!2120379 (= e!1350235 lt!794670)))

(declare-fun d!643378 () Bool)

(declare-fun lt!794687 () Int)

(assert (=> d!643378 (and (>= lt!794687 (- 1)) (< lt!794687 lt!794666) (>= lt!794687 lt!794670) (or (= lt!794687 lt!794670) (>= lt!794687 lt!794669)))))

(assert (=> d!643378 (= lt!794687 e!1350235)))

(declare-fun c!339687 () Bool)

(declare-fun e!1350233 () Bool)

(assert (=> d!643378 (= c!339687 e!1350233)))

(declare-fun res!918899 () Bool)

(assert (=> d!643378 (=> res!918899 e!1350233)))

(assert (=> d!643378 (= res!918899 (= lt!794669 lt!794666))))

(assert (=> d!643378 (and (>= lt!794669 0) (<= lt!794669 lt!794666))))

(assert (=> d!643378 (= (furthestNullablePosition!7 z!3883 lt!794669 totalInput!886 lt!794666 lt!794670) lt!794687)))

(declare-fun b!2120380 () Bool)

(declare-fun lostCauseZipper!54 ((InoxSet Context!2454)) Bool)

(assert (=> b!2120380 (= e!1350233 (lostCauseZipper!54 z!3883))))

(declare-fun b!2120381 () Bool)

(declare-fun e!1350234 () Int)

(assert (=> b!2120381 (= e!1350234 lt!794669)))

(declare-fun b!2120382 () Bool)

(assert (=> b!2120382 (= e!1350234 lt!794670)))

(declare-fun lt!794686 () (InoxSet Context!2454))

(declare-fun b!2120383 () Bool)

(assert (=> b!2120383 (= e!1350235 (furthestNullablePosition!7 lt!794686 (+ lt!794669 1) totalInput!886 lt!794666 e!1350234))))

(declare-fun derivationStepZipper!86 ((InoxSet Context!2454) C!11460) (InoxSet Context!2454))

(declare-fun apply!5908 (BalanceConc!15352 Int) C!11460)

(assert (=> b!2120383 (= lt!794686 (derivationStepZipper!86 z!3883 (apply!5908 totalInput!886 lt!794669)))))

(declare-fun c!339686 () Bool)

(assert (=> b!2120383 (= c!339686 (nullableZipper!60 lt!794686))))

(assert (= (and d!643378 (not res!918899)) b!2120380))

(assert (= (and d!643378 c!339687) b!2120379))

(assert (= (and d!643378 (not c!339687)) b!2120383))

(assert (= (and b!2120383 c!339686) b!2120381))

(assert (= (and b!2120383 (not c!339686)) b!2120382))

(declare-fun m!2574725 () Bool)

(assert (=> b!2120380 m!2574725))

(declare-fun m!2574727 () Bool)

(assert (=> b!2120383 m!2574727))

(declare-fun m!2574729 () Bool)

(assert (=> b!2120383 m!2574729))

(assert (=> b!2120383 m!2574729))

(declare-fun m!2574731 () Bool)

(assert (=> b!2120383 m!2574731))

(declare-fun m!2574733 () Bool)

(assert (=> b!2120383 m!2574733))

(assert (=> b!2120317 d!643378))

(declare-fun d!643380 () Bool)

(declare-fun lambda!78480 () Int)

(declare-fun forall!4858 (List!23741 Int) Bool)

(assert (=> d!643380 (= (inv!31255 setElem!14677) (forall!4858 (exprs!1727 setElem!14677) lambda!78480))))

(declare-fun bs!442674 () Bool)

(assert (= bs!442674 d!643380))

(declare-fun m!2574735 () Bool)

(assert (=> bs!442674 m!2574735))

(assert (=> setNonEmpty!14677 d!643380))

(declare-fun b!2120392 () Bool)

(declare-fun e!1350242 () Bool)

(declare-fun tp!648728 () Bool)

(assert (=> b!2120392 (= e!1350242 tp!648728)))

(declare-fun setRes!14680 () Bool)

(declare-fun b!2120393 () Bool)

(declare-fun e!1350244 () Bool)

(declare-fun tp_is_empty!9485 () Bool)

(declare-fun tp!648727 () Bool)

(assert (=> b!2120393 (= e!1350244 (and (inv!31255 (_1!13516 (_1!13517 (h!29059 (zeroValue!2688 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991)))))))))) e!1350242 tp_is_empty!9485 setRes!14680 tp!648727))))

(declare-fun condSetEmpty!14680 () Bool)

(assert (=> b!2120393 (= condSetEmpty!14680 (= (_2!13517 (h!29059 (zeroValue!2688 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991)))))))) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun b!2120394 () Bool)

(declare-fun e!1350243 () Bool)

(declare-fun tp!648726 () Bool)

(assert (=> b!2120394 (= e!1350243 tp!648726)))

(declare-fun setNonEmpty!14680 () Bool)

(declare-fun setElem!14680 () Context!2454)

(declare-fun tp!648725 () Bool)

(assert (=> setNonEmpty!14680 (= setRes!14680 (and tp!648725 (inv!31255 setElem!14680) e!1350243))))

(declare-fun setRest!14680 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14680 (= (_2!13517 (h!29059 (zeroValue!2688 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14680 true) setRest!14680))))

(declare-fun setIsEmpty!14680 () Bool)

(assert (=> setIsEmpty!14680 setRes!14680))

(assert (=> b!2120329 (= tp!648698 e!1350244)))

(assert (= b!2120393 b!2120392))

(assert (= (and b!2120393 condSetEmpty!14680) setIsEmpty!14680))

(assert (= (and b!2120393 (not condSetEmpty!14680)) setNonEmpty!14680))

(assert (= setNonEmpty!14680 b!2120394))

(assert (= (and b!2120329 ((_ is Cons!23658) (zeroValue!2688 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991)))))))) b!2120393))

(declare-fun m!2574737 () Bool)

(assert (=> b!2120393 m!2574737))

(declare-fun m!2574739 () Bool)

(assert (=> setNonEmpty!14680 m!2574739))

(declare-fun b!2120395 () Bool)

(declare-fun e!1350245 () Bool)

(declare-fun tp!648732 () Bool)

(assert (=> b!2120395 (= e!1350245 tp!648732)))

(declare-fun setRes!14681 () Bool)

(declare-fun b!2120396 () Bool)

(declare-fun tp!648731 () Bool)

(declare-fun e!1350247 () Bool)

(assert (=> b!2120396 (= e!1350247 (and (inv!31255 (_1!13516 (_1!13517 (h!29059 (minValue!2688 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991)))))))))) e!1350245 tp_is_empty!9485 setRes!14681 tp!648731))))

(declare-fun condSetEmpty!14681 () Bool)

(assert (=> b!2120396 (= condSetEmpty!14681 (= (_2!13517 (h!29059 (minValue!2688 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991)))))))) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun b!2120397 () Bool)

(declare-fun e!1350246 () Bool)

(declare-fun tp!648730 () Bool)

(assert (=> b!2120397 (= e!1350246 tp!648730)))

(declare-fun setNonEmpty!14681 () Bool)

(declare-fun tp!648729 () Bool)

(declare-fun setElem!14681 () Context!2454)

(assert (=> setNonEmpty!14681 (= setRes!14681 (and tp!648729 (inv!31255 setElem!14681) e!1350246))))

(declare-fun setRest!14681 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14681 (= (_2!13517 (h!29059 (minValue!2688 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14681 true) setRest!14681))))

(declare-fun setIsEmpty!14681 () Bool)

(assert (=> setIsEmpty!14681 setRes!14681))

(assert (=> b!2120329 (= tp!648701 e!1350247)))

(assert (= b!2120396 b!2120395))

(assert (= (and b!2120396 condSetEmpty!14681) setIsEmpty!14681))

(assert (= (and b!2120396 (not condSetEmpty!14681)) setNonEmpty!14681))

(assert (= setNonEmpty!14681 b!2120397))

(assert (= (and b!2120329 ((_ is Cons!23658) (minValue!2688 (v!28191 (underlying!5055 (v!28192 (underlying!5056 (cache!2725 cacheUp!991)))))))) b!2120396))

(declare-fun m!2574741 () Bool)

(assert (=> b!2120396 m!2574741))

(declare-fun m!2574743 () Bool)

(assert (=> setNonEmpty!14681 m!2574743))

(declare-fun tp!648740 () Bool)

(declare-fun e!1350253 () Bool)

(declare-fun b!2120406 () Bool)

(declare-fun tp!648741 () Bool)

(assert (=> b!2120406 (= e!1350253 (and (inv!31254 (left!18308 (c!339674 input!5507))) tp!648740 (inv!31254 (right!18638 (c!339674 input!5507))) tp!648741))))

(declare-fun b!2120408 () Bool)

(declare-fun e!1350252 () Bool)

(declare-fun tp!648739 () Bool)

(assert (=> b!2120408 (= e!1350252 tp!648739)))

(declare-fun b!2120407 () Bool)

(declare-fun inv!31262 (IArray!15595) Bool)

(assert (=> b!2120407 (= e!1350253 (and (inv!31262 (xs!10737 (c!339674 input!5507))) e!1350252))))

(assert (=> b!2120321 (= tp!648704 (and (inv!31254 (c!339674 input!5507)) e!1350253))))

(assert (= (and b!2120321 ((_ is Node!7795) (c!339674 input!5507))) b!2120406))

(assert (= b!2120407 b!2120408))

(assert (= (and b!2120321 ((_ is Leaf!11391) (c!339674 input!5507))) b!2120407))

(declare-fun m!2574745 () Bool)

(assert (=> b!2120406 m!2574745))

(declare-fun m!2574747 () Bool)

(assert (=> b!2120406 m!2574747))

(declare-fun m!2574749 () Bool)

(assert (=> b!2120407 m!2574749))

(assert (=> b!2120321 m!2574675))

(declare-fun mapNonEmpty!11746 () Bool)

(declare-fun mapRes!11746 () Bool)

(declare-fun tp!648759 () Bool)

(declare-fun e!1350265 () Bool)

(assert (=> mapNonEmpty!11746 (= mapRes!11746 (and tp!648759 e!1350265))))

(declare-fun mapRest!11746 () (Array (_ BitVec 32) List!23743))

(declare-fun mapValue!11746 () List!23743)

(declare-fun mapKey!11746 () (_ BitVec 32))

(assert (=> mapNonEmpty!11746 (= mapRest!11741 (store mapRest!11746 mapKey!11746 mapValue!11746))))

(declare-fun b!2120419 () Bool)

(declare-fun e!1350263 () Bool)

(declare-fun tp!648761 () Bool)

(assert (=> b!2120419 (= e!1350263 tp!648761)))

(declare-fun b!2120420 () Bool)

(declare-fun e!1350262 () Bool)

(declare-fun tp!648756 () Bool)

(assert (=> b!2120420 (= e!1350262 tp!648756)))

(declare-fun setIsEmpty!14686 () Bool)

(declare-fun setRes!14686 () Bool)

(assert (=> setIsEmpty!14686 setRes!14686))

(declare-fun b!2120421 () Bool)

(declare-fun e!1350264 () Bool)

(declare-fun setRes!14687 () Bool)

(declare-fun tp!648758 () Bool)

(assert (=> b!2120421 (= e!1350264 (and setRes!14687 tp!648758))))

(declare-fun condSetEmpty!14686 () Bool)

(declare-fun mapDefault!11746 () List!23743)

(assert (=> b!2120421 (= condSetEmpty!14686 (= (_1!13518 (_1!13519 (h!29060 mapDefault!11746))) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun b!2120422 () Bool)

(declare-fun tp!648757 () Bool)

(assert (=> b!2120422 (= e!1350265 (and setRes!14686 tp!648757))))

(declare-fun condSetEmpty!14687 () Bool)

(assert (=> b!2120422 (= condSetEmpty!14687 (= (_1!13518 (_1!13519 (h!29060 mapValue!11746))) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun tp!648762 () Bool)

(declare-fun setNonEmpty!14686 () Bool)

(declare-fun setElem!14686 () Context!2454)

(assert (=> setNonEmpty!14686 (= setRes!14687 (and tp!648762 (inv!31255 setElem!14686) e!1350262))))

(declare-fun setRest!14687 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14686 (= (_1!13518 (_1!13519 (h!29060 mapDefault!11746))) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14686 true) setRest!14687))))

(declare-fun setNonEmpty!14687 () Bool)

(declare-fun tp!648760 () Bool)

(declare-fun setElem!14687 () Context!2454)

(assert (=> setNonEmpty!14687 (= setRes!14686 (and tp!648760 (inv!31255 setElem!14687) e!1350263))))

(declare-fun setRest!14686 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14687 (= (_1!13518 (_1!13519 (h!29060 mapValue!11746))) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14687 true) setRest!14686))))

(declare-fun setIsEmpty!14687 () Bool)

(assert (=> setIsEmpty!14687 setRes!14687))

(declare-fun mapIsEmpty!11746 () Bool)

(assert (=> mapIsEmpty!11746 mapRes!11746))

(declare-fun condMapEmpty!11746 () Bool)

(assert (=> mapNonEmpty!11742 (= condMapEmpty!11746 (= mapRest!11741 ((as const (Array (_ BitVec 32) List!23743)) mapDefault!11746)))))

(assert (=> mapNonEmpty!11742 (= tp!648695 (and e!1350264 mapRes!11746))))

(assert (= (and mapNonEmpty!11742 condMapEmpty!11746) mapIsEmpty!11746))

(assert (= (and mapNonEmpty!11742 (not condMapEmpty!11746)) mapNonEmpty!11746))

(assert (= (and b!2120422 condSetEmpty!14687) setIsEmpty!14686))

(assert (= (and b!2120422 (not condSetEmpty!14687)) setNonEmpty!14687))

(assert (= setNonEmpty!14687 b!2120419))

(assert (= (and mapNonEmpty!11746 ((_ is Cons!23659) mapValue!11746)) b!2120422))

(assert (= (and b!2120421 condSetEmpty!14686) setIsEmpty!14687))

(assert (= (and b!2120421 (not condSetEmpty!14686)) setNonEmpty!14686))

(assert (= setNonEmpty!14686 b!2120420))

(assert (= (and mapNonEmpty!11742 ((_ is Cons!23659) mapDefault!11746)) b!2120421))

(declare-fun m!2574751 () Bool)

(assert (=> mapNonEmpty!11746 m!2574751))

(declare-fun m!2574753 () Bool)

(assert (=> setNonEmpty!14686 m!2574753))

(declare-fun m!2574755 () Bool)

(assert (=> setNonEmpty!14687 m!2574755))

(declare-fun e!1350271 () Bool)

(assert (=> mapNonEmpty!11742 (= tp!648706 e!1350271)))

(declare-fun b!2120429 () Bool)

(declare-fun setRes!14690 () Bool)

(declare-fun tp!648769 () Bool)

(assert (=> b!2120429 (= e!1350271 (and setRes!14690 tp!648769))))

(declare-fun condSetEmpty!14690 () Bool)

(assert (=> b!2120429 (= condSetEmpty!14690 (= (_1!13518 (_1!13519 (h!29060 mapValue!11742))) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun setIsEmpty!14690 () Bool)

(assert (=> setIsEmpty!14690 setRes!14690))

(declare-fun b!2120430 () Bool)

(declare-fun e!1350270 () Bool)

(declare-fun tp!648771 () Bool)

(assert (=> b!2120430 (= e!1350270 tp!648771)))

(declare-fun tp!648770 () Bool)

(declare-fun setElem!14690 () Context!2454)

(declare-fun setNonEmpty!14690 () Bool)

(assert (=> setNonEmpty!14690 (= setRes!14690 (and tp!648770 (inv!31255 setElem!14690) e!1350270))))

(declare-fun setRest!14690 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14690 (= (_1!13518 (_1!13519 (h!29060 mapValue!11742))) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14690 true) setRest!14690))))

(assert (= (and b!2120429 condSetEmpty!14690) setIsEmpty!14690))

(assert (= (and b!2120429 (not condSetEmpty!14690)) setNonEmpty!14690))

(assert (= setNonEmpty!14690 b!2120430))

(assert (= (and mapNonEmpty!11742 ((_ is Cons!23659) mapValue!11742)) b!2120429))

(declare-fun m!2574757 () Bool)

(assert (=> setNonEmpty!14690 m!2574757))

(declare-fun tp!648773 () Bool)

(declare-fun e!1350273 () Bool)

(declare-fun tp!648774 () Bool)

(declare-fun b!2120431 () Bool)

(assert (=> b!2120431 (= e!1350273 (and (inv!31254 (left!18308 (c!339674 totalInput!886))) tp!648773 (inv!31254 (right!18638 (c!339674 totalInput!886))) tp!648774))))

(declare-fun b!2120433 () Bool)

(declare-fun e!1350272 () Bool)

(declare-fun tp!648772 () Bool)

(assert (=> b!2120433 (= e!1350272 tp!648772)))

(declare-fun b!2120432 () Bool)

(assert (=> b!2120432 (= e!1350273 (and (inv!31262 (xs!10737 (c!339674 totalInput!886))) e!1350272))))

(assert (=> b!2120306 (= tp!648691 (and (inv!31254 (c!339674 totalInput!886)) e!1350273))))

(assert (= (and b!2120306 ((_ is Node!7795) (c!339674 totalInput!886))) b!2120431))

(assert (= b!2120432 b!2120433))

(assert (= (and b!2120306 ((_ is Leaf!11391) (c!339674 totalInput!886))) b!2120432))

(declare-fun m!2574759 () Bool)

(assert (=> b!2120431 m!2574759))

(declare-fun m!2574761 () Bool)

(assert (=> b!2120431 m!2574761))

(declare-fun m!2574763 () Bool)

(assert (=> b!2120432 m!2574763))

(assert (=> b!2120306 m!2574645))

(declare-fun e!1350275 () Bool)

(declare-fun tp!648776 () Bool)

(declare-fun tp!648777 () Bool)

(declare-fun b!2120434 () Bool)

(assert (=> b!2120434 (= e!1350275 (and (inv!31254 (left!18308 (c!339674 (totalInput!2892 cacheFurthestNullable!130)))) tp!648776 (inv!31254 (right!18638 (c!339674 (totalInput!2892 cacheFurthestNullable!130)))) tp!648777))))

(declare-fun b!2120436 () Bool)

(declare-fun e!1350274 () Bool)

(declare-fun tp!648775 () Bool)

(assert (=> b!2120436 (= e!1350274 tp!648775)))

(declare-fun b!2120435 () Bool)

(assert (=> b!2120435 (= e!1350275 (and (inv!31262 (xs!10737 (c!339674 (totalInput!2892 cacheFurthestNullable!130)))) e!1350274))))

(assert (=> b!2120318 (= tp!648694 (and (inv!31254 (c!339674 (totalInput!2892 cacheFurthestNullable!130))) e!1350275))))

(assert (= (and b!2120318 ((_ is Node!7795) (c!339674 (totalInput!2892 cacheFurthestNullable!130)))) b!2120434))

(assert (= b!2120435 b!2120436))

(assert (= (and b!2120318 ((_ is Leaf!11391) (c!339674 (totalInput!2892 cacheFurthestNullable!130)))) b!2120435))

(declare-fun m!2574765 () Bool)

(assert (=> b!2120434 m!2574765))

(declare-fun m!2574767 () Bool)

(assert (=> b!2120434 m!2574767))

(declare-fun m!2574769 () Bool)

(assert (=> b!2120435 m!2574769))

(assert (=> b!2120318 m!2574631))

(declare-fun e!1350284 () Bool)

(assert (=> b!2120320 (= tp!648712 e!1350284)))

(declare-fun setRes!14693 () Bool)

(declare-fun e!1350282 () Bool)

(declare-fun tp!648792 () Bool)

(declare-fun tp!648790 () Bool)

(declare-fun b!2120445 () Bool)

(assert (=> b!2120445 (= e!1350284 (and tp!648792 (inv!31255 (_2!13520 (_1!13521 (h!29062 (zeroValue!2690 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110)))))))))) e!1350282 tp_is_empty!9485 setRes!14693 tp!648790))))

(declare-fun condSetEmpty!14693 () Bool)

(assert (=> b!2120445 (= condSetEmpty!14693 (= (_2!13521 (h!29062 (zeroValue!2690 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110)))))))) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun b!2120446 () Bool)

(declare-fun tp!648788 () Bool)

(assert (=> b!2120446 (= e!1350282 tp!648788)))

(declare-fun setIsEmpty!14693 () Bool)

(assert (=> setIsEmpty!14693 setRes!14693))

(declare-fun e!1350283 () Bool)

(declare-fun setElem!14693 () Context!2454)

(declare-fun setNonEmpty!14693 () Bool)

(declare-fun tp!648791 () Bool)

(assert (=> setNonEmpty!14693 (= setRes!14693 (and tp!648791 (inv!31255 setElem!14693) e!1350283))))

(declare-fun setRest!14693 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14693 (= (_2!13521 (h!29062 (zeroValue!2690 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14693 true) setRest!14693))))

(declare-fun b!2120447 () Bool)

(declare-fun tp!648789 () Bool)

(assert (=> b!2120447 (= e!1350283 tp!648789)))

(assert (= b!2120445 b!2120446))

(assert (= (and b!2120445 condSetEmpty!14693) setIsEmpty!14693))

(assert (= (and b!2120445 (not condSetEmpty!14693)) setNonEmpty!14693))

(assert (= setNonEmpty!14693 b!2120447))

(assert (= (and b!2120320 ((_ is Cons!23661) (zeroValue!2690 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110)))))))) b!2120445))

(declare-fun m!2574771 () Bool)

(assert (=> b!2120445 m!2574771))

(declare-fun m!2574773 () Bool)

(assert (=> setNonEmpty!14693 m!2574773))

(declare-fun e!1350287 () Bool)

(assert (=> b!2120320 (= tp!648700 e!1350287)))

(declare-fun setRes!14694 () Bool)

(declare-fun b!2120448 () Bool)

(declare-fun e!1350285 () Bool)

(declare-fun tp!648797 () Bool)

(declare-fun tp!648795 () Bool)

(assert (=> b!2120448 (= e!1350287 (and tp!648797 (inv!31255 (_2!13520 (_1!13521 (h!29062 (minValue!2690 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110)))))))))) e!1350285 tp_is_empty!9485 setRes!14694 tp!648795))))

(declare-fun condSetEmpty!14694 () Bool)

(assert (=> b!2120448 (= condSetEmpty!14694 (= (_2!13521 (h!29062 (minValue!2690 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110)))))))) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun b!2120449 () Bool)

(declare-fun tp!648793 () Bool)

(assert (=> b!2120449 (= e!1350285 tp!648793)))

(declare-fun setIsEmpty!14694 () Bool)

(assert (=> setIsEmpty!14694 setRes!14694))

(declare-fun tp!648796 () Bool)

(declare-fun setNonEmpty!14694 () Bool)

(declare-fun setElem!14694 () Context!2454)

(declare-fun e!1350286 () Bool)

(assert (=> setNonEmpty!14694 (= setRes!14694 (and tp!648796 (inv!31255 setElem!14694) e!1350286))))

(declare-fun setRest!14694 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14694 (= (_2!13521 (h!29062 (minValue!2690 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14694 true) setRest!14694))))

(declare-fun b!2120450 () Bool)

(declare-fun tp!648794 () Bool)

(assert (=> b!2120450 (= e!1350286 tp!648794)))

(assert (= b!2120448 b!2120449))

(assert (= (and b!2120448 condSetEmpty!14694) setIsEmpty!14694))

(assert (= (and b!2120448 (not condSetEmpty!14694)) setNonEmpty!14694))

(assert (= setNonEmpty!14694 b!2120450))

(assert (= (and b!2120320 ((_ is Cons!23661) (minValue!2690 (v!28195 (underlying!5059 (v!28196 (underlying!5060 (cache!2727 cacheDown!1110)))))))) b!2120448))

(declare-fun m!2574775 () Bool)

(assert (=> b!2120448 m!2574775))

(declare-fun m!2574777 () Bool)

(assert (=> setNonEmpty!14694 m!2574777))

(declare-fun b!2120465 () Bool)

(declare-fun e!1350305 () Bool)

(declare-fun tp!648817 () Bool)

(assert (=> b!2120465 (= e!1350305 tp!648817)))

(declare-fun setRes!14699 () Bool)

(declare-fun tp!648824 () Bool)

(declare-fun e!1350302 () Bool)

(declare-fun mapDefault!11749 () List!23742)

(declare-fun b!2120466 () Bool)

(assert (=> b!2120466 (= e!1350302 (and (inv!31255 (_1!13516 (_1!13517 (h!29059 mapDefault!11749)))) e!1350305 tp_is_empty!9485 setRes!14699 tp!648824))))

(declare-fun condSetEmpty!14700 () Bool)

(assert (=> b!2120466 (= condSetEmpty!14700 (= (_2!13517 (h!29059 mapDefault!11749)) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun b!2120467 () Bool)

(declare-fun e!1350301 () Bool)

(declare-fun tp!648822 () Bool)

(assert (=> b!2120467 (= e!1350301 tp!648822)))

(declare-fun b!2120468 () Bool)

(declare-fun e!1350303 () Bool)

(declare-fun tp!648819 () Bool)

(assert (=> b!2120468 (= e!1350303 tp!648819)))

(declare-fun e!1350304 () Bool)

(declare-fun b!2120469 () Bool)

(declare-fun tp!648818 () Bool)

(declare-fun e!1350300 () Bool)

(declare-fun mapValue!11749 () List!23742)

(declare-fun setRes!14700 () Bool)

(assert (=> b!2120469 (= e!1350300 (and (inv!31255 (_1!13516 (_1!13517 (h!29059 mapValue!11749)))) e!1350304 tp_is_empty!9485 setRes!14700 tp!648818))))

(declare-fun condSetEmpty!14699 () Bool)

(assert (=> b!2120469 (= condSetEmpty!14699 (= (_2!13517 (h!29059 mapValue!11749)) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun setIsEmpty!14699 () Bool)

(assert (=> setIsEmpty!14699 setRes!14700))

(declare-fun tp!648820 () Bool)

(declare-fun setNonEmpty!14700 () Bool)

(declare-fun setElem!14700 () Context!2454)

(assert (=> setNonEmpty!14700 (= setRes!14699 (and tp!648820 (inv!31255 setElem!14700) e!1350303))))

(declare-fun setRest!14700 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14700 (= (_2!13517 (h!29059 mapDefault!11749)) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14700 true) setRest!14700))))

(declare-fun condMapEmpty!11749 () Bool)

(assert (=> mapNonEmpty!11741 (= condMapEmpty!11749 (= mapRest!11743 ((as const (Array (_ BitVec 32) List!23742)) mapDefault!11749)))))

(declare-fun mapRes!11749 () Bool)

(assert (=> mapNonEmpty!11741 (= tp!648692 (and e!1350302 mapRes!11749))))

(declare-fun setNonEmpty!14699 () Bool)

(declare-fun tp!648823 () Bool)

(declare-fun setElem!14699 () Context!2454)

(assert (=> setNonEmpty!14699 (= setRes!14700 (and tp!648823 (inv!31255 setElem!14699) e!1350301))))

(declare-fun setRest!14699 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14699 (= (_2!13517 (h!29059 mapValue!11749)) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14699 true) setRest!14699))))

(declare-fun mapIsEmpty!11749 () Bool)

(assert (=> mapIsEmpty!11749 mapRes!11749))

(declare-fun setIsEmpty!14700 () Bool)

(assert (=> setIsEmpty!14700 setRes!14699))

(declare-fun b!2120470 () Bool)

(declare-fun tp!648821 () Bool)

(assert (=> b!2120470 (= e!1350304 tp!648821)))

(declare-fun mapNonEmpty!11749 () Bool)

(declare-fun tp!648816 () Bool)

(assert (=> mapNonEmpty!11749 (= mapRes!11749 (and tp!648816 e!1350300))))

(declare-fun mapRest!11749 () (Array (_ BitVec 32) List!23742))

(declare-fun mapKey!11749 () (_ BitVec 32))

(assert (=> mapNonEmpty!11749 (= mapRest!11743 (store mapRest!11749 mapKey!11749 mapValue!11749))))

(assert (= (and mapNonEmpty!11741 condMapEmpty!11749) mapIsEmpty!11749))

(assert (= (and mapNonEmpty!11741 (not condMapEmpty!11749)) mapNonEmpty!11749))

(assert (= b!2120469 b!2120470))

(assert (= (and b!2120469 condSetEmpty!14699) setIsEmpty!14699))

(assert (= (and b!2120469 (not condSetEmpty!14699)) setNonEmpty!14699))

(assert (= setNonEmpty!14699 b!2120467))

(assert (= (and mapNonEmpty!11749 ((_ is Cons!23658) mapValue!11749)) b!2120469))

(assert (= b!2120466 b!2120465))

(assert (= (and b!2120466 condSetEmpty!14700) setIsEmpty!14700))

(assert (= (and b!2120466 (not condSetEmpty!14700)) setNonEmpty!14700))

(assert (= setNonEmpty!14700 b!2120468))

(assert (= (and mapNonEmpty!11741 ((_ is Cons!23658) mapDefault!11749)) b!2120466))

(declare-fun m!2574779 () Bool)

(assert (=> mapNonEmpty!11749 m!2574779))

(declare-fun m!2574781 () Bool)

(assert (=> setNonEmpty!14699 m!2574781))

(declare-fun m!2574783 () Bool)

(assert (=> b!2120466 m!2574783))

(declare-fun m!2574785 () Bool)

(assert (=> b!2120469 m!2574785))

(declare-fun m!2574787 () Bool)

(assert (=> setNonEmpty!14700 m!2574787))

(declare-fun b!2120471 () Bool)

(declare-fun e!1350306 () Bool)

(declare-fun tp!648828 () Bool)

(assert (=> b!2120471 (= e!1350306 tp!648828)))

(declare-fun b!2120472 () Bool)

(declare-fun setRes!14701 () Bool)

(declare-fun e!1350308 () Bool)

(declare-fun tp!648827 () Bool)

(assert (=> b!2120472 (= e!1350308 (and (inv!31255 (_1!13516 (_1!13517 (h!29059 mapValue!11743)))) e!1350306 tp_is_empty!9485 setRes!14701 tp!648827))))

(declare-fun condSetEmpty!14701 () Bool)

(assert (=> b!2120472 (= condSetEmpty!14701 (= (_2!13517 (h!29059 mapValue!11743)) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun b!2120473 () Bool)

(declare-fun e!1350307 () Bool)

(declare-fun tp!648826 () Bool)

(assert (=> b!2120473 (= e!1350307 tp!648826)))

(declare-fun setElem!14701 () Context!2454)

(declare-fun setNonEmpty!14701 () Bool)

(declare-fun tp!648825 () Bool)

(assert (=> setNonEmpty!14701 (= setRes!14701 (and tp!648825 (inv!31255 setElem!14701) e!1350307))))

(declare-fun setRest!14701 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14701 (= (_2!13517 (h!29059 mapValue!11743)) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14701 true) setRest!14701))))

(declare-fun setIsEmpty!14701 () Bool)

(assert (=> setIsEmpty!14701 setRes!14701))

(assert (=> mapNonEmpty!11741 (= tp!648702 e!1350308)))

(assert (= b!2120472 b!2120471))

(assert (= (and b!2120472 condSetEmpty!14701) setIsEmpty!14701))

(assert (= (and b!2120472 (not condSetEmpty!14701)) setNonEmpty!14701))

(assert (= setNonEmpty!14701 b!2120473))

(assert (= (and mapNonEmpty!11741 ((_ is Cons!23658) mapValue!11743)) b!2120472))

(declare-fun m!2574789 () Bool)

(assert (=> b!2120472 m!2574789))

(declare-fun m!2574791 () Bool)

(assert (=> setNonEmpty!14701 m!2574791))

(declare-fun e!1350310 () Bool)

(assert (=> b!2120326 (= tp!648703 e!1350310)))

(declare-fun b!2120474 () Bool)

(declare-fun setRes!14702 () Bool)

(declare-fun tp!648829 () Bool)

(assert (=> b!2120474 (= e!1350310 (and setRes!14702 tp!648829))))

(declare-fun condSetEmpty!14702 () Bool)

(assert (=> b!2120474 (= condSetEmpty!14702 (= (_1!13518 (_1!13519 (h!29060 mapDefault!11742))) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun setIsEmpty!14702 () Bool)

(assert (=> setIsEmpty!14702 setRes!14702))

(declare-fun b!2120475 () Bool)

(declare-fun e!1350309 () Bool)

(declare-fun tp!648831 () Bool)

(assert (=> b!2120475 (= e!1350309 tp!648831)))

(declare-fun tp!648830 () Bool)

(declare-fun setNonEmpty!14702 () Bool)

(declare-fun setElem!14702 () Context!2454)

(assert (=> setNonEmpty!14702 (= setRes!14702 (and tp!648830 (inv!31255 setElem!14702) e!1350309))))

(declare-fun setRest!14702 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14702 (= (_1!13518 (_1!13519 (h!29060 mapDefault!11742))) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14702 true) setRest!14702))))

(assert (= (and b!2120474 condSetEmpty!14702) setIsEmpty!14702))

(assert (= (and b!2120474 (not condSetEmpty!14702)) setNonEmpty!14702))

(assert (= setNonEmpty!14702 b!2120475))

(assert (= (and b!2120326 ((_ is Cons!23659) mapDefault!11742)) b!2120474))

(declare-fun m!2574793 () Bool)

(assert (=> setNonEmpty!14702 m!2574793))

(declare-fun b!2120476 () Bool)

(declare-fun e!1350311 () Bool)

(declare-fun tp!648835 () Bool)

(assert (=> b!2120476 (= e!1350311 tp!648835)))

(declare-fun e!1350313 () Bool)

(declare-fun setRes!14703 () Bool)

(declare-fun tp!648834 () Bool)

(declare-fun b!2120477 () Bool)

(assert (=> b!2120477 (= e!1350313 (and (inv!31255 (_1!13516 (_1!13517 (h!29059 mapDefault!11741)))) e!1350311 tp_is_empty!9485 setRes!14703 tp!648834))))

(declare-fun condSetEmpty!14703 () Bool)

(assert (=> b!2120477 (= condSetEmpty!14703 (= (_2!13517 (h!29059 mapDefault!11741)) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun b!2120478 () Bool)

(declare-fun e!1350312 () Bool)

(declare-fun tp!648833 () Bool)

(assert (=> b!2120478 (= e!1350312 tp!648833)))

(declare-fun tp!648832 () Bool)

(declare-fun setNonEmpty!14703 () Bool)

(declare-fun setElem!14703 () Context!2454)

(assert (=> setNonEmpty!14703 (= setRes!14703 (and tp!648832 (inv!31255 setElem!14703) e!1350312))))

(declare-fun setRest!14703 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14703 (= (_2!13517 (h!29059 mapDefault!11741)) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14703 true) setRest!14703))))

(declare-fun setIsEmpty!14703 () Bool)

(assert (=> setIsEmpty!14703 setRes!14703))

(assert (=> b!2120299 (= tp!648699 e!1350313)))

(assert (= b!2120477 b!2120476))

(assert (= (and b!2120477 condSetEmpty!14703) setIsEmpty!14703))

(assert (= (and b!2120477 (not condSetEmpty!14703)) setNonEmpty!14703))

(assert (= setNonEmpty!14703 b!2120478))

(assert (= (and b!2120299 ((_ is Cons!23658) mapDefault!11741)) b!2120477))

(declare-fun m!2574795 () Bool)

(assert (=> b!2120477 m!2574795))

(declare-fun m!2574797 () Bool)

(assert (=> setNonEmpty!14703 m!2574797))

(declare-fun setIsEmpty!14708 () Bool)

(declare-fun setRes!14709 () Bool)

(assert (=> setIsEmpty!14708 setRes!14709))

(declare-fun setIsEmpty!14709 () Bool)

(declare-fun setRes!14708 () Bool)

(assert (=> setIsEmpty!14709 setRes!14708))

(declare-fun b!2120493 () Bool)

(declare-fun mapValue!11752 () List!23745)

(declare-fun e!1350328 () Bool)

(declare-fun tp!648866 () Bool)

(declare-fun e!1350329 () Bool)

(declare-fun tp!648868 () Bool)

(assert (=> b!2120493 (= e!1350328 (and tp!648868 (inv!31255 (_2!13520 (_1!13521 (h!29062 mapValue!11752)))) e!1350329 tp_is_empty!9485 setRes!14709 tp!648866))))

(declare-fun condSetEmpty!14708 () Bool)

(assert (=> b!2120493 (= condSetEmpty!14708 (= (_2!13521 (h!29062 mapValue!11752)) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun mapIsEmpty!11752 () Bool)

(declare-fun mapRes!11752 () Bool)

(assert (=> mapIsEmpty!11752 mapRes!11752))

(declare-fun b!2120494 () Bool)

(declare-fun e!1350327 () Bool)

(declare-fun tp!648863 () Bool)

(assert (=> b!2120494 (= e!1350327 tp!648863)))

(declare-fun b!2120495 () Bool)

(declare-fun tp!648864 () Bool)

(assert (=> b!2120495 (= e!1350329 tp!648864)))

(declare-fun b!2120496 () Bool)

(declare-fun e!1350326 () Bool)

(declare-fun tp!648865 () Bool)

(assert (=> b!2120496 (= e!1350326 tp!648865)))

(declare-fun tp!648867 () Bool)

(declare-fun setElem!14708 () Context!2454)

(declare-fun setNonEmpty!14708 () Bool)

(declare-fun e!1350331 () Bool)

(assert (=> setNonEmpty!14708 (= setRes!14708 (and tp!648867 (inv!31255 setElem!14708) e!1350331))))

(declare-fun mapDefault!11752 () List!23745)

(declare-fun setRest!14708 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14708 (= (_2!13521 (h!29062 mapDefault!11752)) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14708 true) setRest!14708))))

(declare-fun condMapEmpty!11752 () Bool)

(assert (=> mapNonEmpty!11743 (= condMapEmpty!11752 (= mapRest!11742 ((as const (Array (_ BitVec 32) List!23745)) mapDefault!11752)))))

(declare-fun e!1350330 () Bool)

(assert (=> mapNonEmpty!11743 (= tp!648707 (and e!1350330 mapRes!11752))))

(declare-fun tp!648859 () Bool)

(declare-fun tp!648858 () Bool)

(declare-fun b!2120497 () Bool)

(assert (=> b!2120497 (= e!1350330 (and tp!648858 (inv!31255 (_2!13520 (_1!13521 (h!29062 mapDefault!11752)))) e!1350326 tp_is_empty!9485 setRes!14708 tp!648859))))

(declare-fun condSetEmpty!14709 () Bool)

(assert (=> b!2120497 (= condSetEmpty!14709 (= (_2!13521 (h!29062 mapDefault!11752)) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun b!2120498 () Bool)

(declare-fun tp!648860 () Bool)

(assert (=> b!2120498 (= e!1350331 tp!648860)))

(declare-fun mapNonEmpty!11752 () Bool)

(declare-fun tp!648861 () Bool)

(assert (=> mapNonEmpty!11752 (= mapRes!11752 (and tp!648861 e!1350328))))

(declare-fun mapRest!11752 () (Array (_ BitVec 32) List!23745))

(declare-fun mapKey!11752 () (_ BitVec 32))

(assert (=> mapNonEmpty!11752 (= mapRest!11742 (store mapRest!11752 mapKey!11752 mapValue!11752))))

(declare-fun setElem!14709 () Context!2454)

(declare-fun setNonEmpty!14709 () Bool)

(declare-fun tp!648862 () Bool)

(assert (=> setNonEmpty!14709 (= setRes!14709 (and tp!648862 (inv!31255 setElem!14709) e!1350327))))

(declare-fun setRest!14709 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14709 (= (_2!13521 (h!29062 mapValue!11752)) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14709 true) setRest!14709))))

(assert (= (and mapNonEmpty!11743 condMapEmpty!11752) mapIsEmpty!11752))

(assert (= (and mapNonEmpty!11743 (not condMapEmpty!11752)) mapNonEmpty!11752))

(assert (= b!2120493 b!2120495))

(assert (= (and b!2120493 condSetEmpty!14708) setIsEmpty!14708))

(assert (= (and b!2120493 (not condSetEmpty!14708)) setNonEmpty!14709))

(assert (= setNonEmpty!14709 b!2120494))

(assert (= (and mapNonEmpty!11752 ((_ is Cons!23661) mapValue!11752)) b!2120493))

(assert (= b!2120497 b!2120496))

(assert (= (and b!2120497 condSetEmpty!14709) setIsEmpty!14709))

(assert (= (and b!2120497 (not condSetEmpty!14709)) setNonEmpty!14708))

(assert (= setNonEmpty!14708 b!2120498))

(assert (= (and mapNonEmpty!11743 ((_ is Cons!23661) mapDefault!11752)) b!2120497))

(declare-fun m!2574799 () Bool)

(assert (=> setNonEmpty!14709 m!2574799))

(declare-fun m!2574801 () Bool)

(assert (=> b!2120493 m!2574801))

(declare-fun m!2574803 () Bool)

(assert (=> setNonEmpty!14708 m!2574803))

(declare-fun m!2574805 () Bool)

(assert (=> mapNonEmpty!11752 m!2574805))

(declare-fun m!2574807 () Bool)

(assert (=> b!2120497 m!2574807))

(declare-fun e!1350334 () Bool)

(assert (=> mapNonEmpty!11743 (= tp!648710 e!1350334)))

(declare-fun tp!648871 () Bool)

(declare-fun b!2120499 () Bool)

(declare-fun setRes!14710 () Bool)

(declare-fun tp!648873 () Bool)

(declare-fun e!1350332 () Bool)

(assert (=> b!2120499 (= e!1350334 (and tp!648873 (inv!31255 (_2!13520 (_1!13521 (h!29062 mapValue!11741)))) e!1350332 tp_is_empty!9485 setRes!14710 tp!648871))))

(declare-fun condSetEmpty!14710 () Bool)

(assert (=> b!2120499 (= condSetEmpty!14710 (= (_2!13521 (h!29062 mapValue!11741)) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun b!2120500 () Bool)

(declare-fun tp!648869 () Bool)

(assert (=> b!2120500 (= e!1350332 tp!648869)))

(declare-fun setIsEmpty!14710 () Bool)

(assert (=> setIsEmpty!14710 setRes!14710))

(declare-fun setElem!14710 () Context!2454)

(declare-fun e!1350333 () Bool)

(declare-fun setNonEmpty!14710 () Bool)

(declare-fun tp!648872 () Bool)

(assert (=> setNonEmpty!14710 (= setRes!14710 (and tp!648872 (inv!31255 setElem!14710) e!1350333))))

(declare-fun setRest!14710 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14710 (= (_2!13521 (h!29062 mapValue!11741)) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14710 true) setRest!14710))))

(declare-fun b!2120501 () Bool)

(declare-fun tp!648870 () Bool)

(assert (=> b!2120501 (= e!1350333 tp!648870)))

(assert (= b!2120499 b!2120500))

(assert (= (and b!2120499 condSetEmpty!14710) setIsEmpty!14710))

(assert (= (and b!2120499 (not condSetEmpty!14710)) setNonEmpty!14710))

(assert (= setNonEmpty!14710 b!2120501))

(assert (= (and mapNonEmpty!11743 ((_ is Cons!23661) mapValue!11741)) b!2120499))

(declare-fun m!2574809 () Bool)

(assert (=> b!2120499 m!2574809))

(declare-fun m!2574811 () Bool)

(assert (=> setNonEmpty!14710 m!2574811))

(declare-fun e!1350336 () Bool)

(assert (=> b!2120310 (= tp!648708 e!1350336)))

(declare-fun b!2120502 () Bool)

(declare-fun setRes!14711 () Bool)

(declare-fun tp!648874 () Bool)

(assert (=> b!2120502 (= e!1350336 (and setRes!14711 tp!648874))))

(declare-fun condSetEmpty!14711 () Bool)

(assert (=> b!2120502 (= condSetEmpty!14711 (= (_1!13518 (_1!13519 (h!29060 (zeroValue!2689 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))))) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun setIsEmpty!14711 () Bool)

(assert (=> setIsEmpty!14711 setRes!14711))

(declare-fun b!2120503 () Bool)

(declare-fun e!1350335 () Bool)

(declare-fun tp!648876 () Bool)

(assert (=> b!2120503 (= e!1350335 tp!648876)))

(declare-fun setElem!14711 () Context!2454)

(declare-fun tp!648875 () Bool)

(declare-fun setNonEmpty!14711 () Bool)

(assert (=> setNonEmpty!14711 (= setRes!14711 (and tp!648875 (inv!31255 setElem!14711) e!1350335))))

(declare-fun setRest!14711 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14711 (= (_1!13518 (_1!13519 (h!29060 (zeroValue!2689 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14711 true) setRest!14711))))

(assert (= (and b!2120502 condSetEmpty!14711) setIsEmpty!14711))

(assert (= (and b!2120502 (not condSetEmpty!14711)) setNonEmpty!14711))

(assert (= setNonEmpty!14711 b!2120503))

(assert (= (and b!2120310 ((_ is Cons!23659) (zeroValue!2689 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130)))))))) b!2120502))

(declare-fun m!2574813 () Bool)

(assert (=> setNonEmpty!14711 m!2574813))

(declare-fun e!1350338 () Bool)

(assert (=> b!2120310 (= tp!648697 e!1350338)))

(declare-fun b!2120504 () Bool)

(declare-fun setRes!14712 () Bool)

(declare-fun tp!648877 () Bool)

(assert (=> b!2120504 (= e!1350338 (and setRes!14712 tp!648877))))

(declare-fun condSetEmpty!14712 () Bool)

(assert (=> b!2120504 (= condSetEmpty!14712 (= (_1!13518 (_1!13519 (h!29060 (minValue!2689 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))))) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun setIsEmpty!14712 () Bool)

(assert (=> setIsEmpty!14712 setRes!14712))

(declare-fun b!2120505 () Bool)

(declare-fun e!1350337 () Bool)

(declare-fun tp!648879 () Bool)

(assert (=> b!2120505 (= e!1350337 tp!648879)))

(declare-fun setNonEmpty!14712 () Bool)

(declare-fun tp!648878 () Bool)

(declare-fun setElem!14712 () Context!2454)

(assert (=> setNonEmpty!14712 (= setRes!14712 (and tp!648878 (inv!31255 setElem!14712) e!1350337))))

(declare-fun setRest!14712 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14712 (= (_1!13518 (_1!13519 (h!29060 (minValue!2689 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14712 true) setRest!14712))))

(assert (= (and b!2120504 condSetEmpty!14712) setIsEmpty!14712))

(assert (= (and b!2120504 (not condSetEmpty!14712)) setNonEmpty!14712))

(assert (= setNonEmpty!14712 b!2120505))

(assert (= (and b!2120310 ((_ is Cons!23659) (minValue!2689 (v!28193 (underlying!5057 (v!28194 (underlying!5058 (cache!2726 cacheFurthestNullable!130)))))))) b!2120504))

(declare-fun m!2574815 () Bool)

(assert (=> setNonEmpty!14712 m!2574815))

(declare-fun condSetEmpty!14715 () Bool)

(assert (=> setNonEmpty!14677 (= condSetEmpty!14715 (= setRest!14677 ((as const (Array Context!2454 Bool)) false)))))

(declare-fun setRes!14715 () Bool)

(assert (=> setNonEmpty!14677 (= tp!648705 setRes!14715)))

(declare-fun setIsEmpty!14715 () Bool)

(assert (=> setIsEmpty!14715 setRes!14715))

(declare-fun setElem!14715 () Context!2454)

(declare-fun e!1350341 () Bool)

(declare-fun tp!648884 () Bool)

(declare-fun setNonEmpty!14715 () Bool)

(assert (=> setNonEmpty!14715 (= setRes!14715 (and tp!648884 (inv!31255 setElem!14715) e!1350341))))

(declare-fun setRest!14715 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14715 (= setRest!14677 ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14715 true) setRest!14715))))

(declare-fun b!2120510 () Bool)

(declare-fun tp!648885 () Bool)

(assert (=> b!2120510 (= e!1350341 tp!648885)))

(assert (= (and setNonEmpty!14677 condSetEmpty!14715) setIsEmpty!14715))

(assert (= (and setNonEmpty!14677 (not condSetEmpty!14715)) setNonEmpty!14715))

(assert (= setNonEmpty!14715 b!2120510))

(declare-fun m!2574817 () Bool)

(assert (=> setNonEmpty!14715 m!2574817))

(declare-fun e!1350344 () Bool)

(assert (=> b!2120316 (= tp!648716 e!1350344)))

(declare-fun tp!648888 () Bool)

(declare-fun b!2120511 () Bool)

(declare-fun e!1350342 () Bool)

(declare-fun tp!648890 () Bool)

(declare-fun setRes!14716 () Bool)

(assert (=> b!2120511 (= e!1350344 (and tp!648890 (inv!31255 (_2!13520 (_1!13521 (h!29062 mapDefault!11743)))) e!1350342 tp_is_empty!9485 setRes!14716 tp!648888))))

(declare-fun condSetEmpty!14716 () Bool)

(assert (=> b!2120511 (= condSetEmpty!14716 (= (_2!13521 (h!29062 mapDefault!11743)) ((as const (Array Context!2454 Bool)) false)))))

(declare-fun b!2120512 () Bool)

(declare-fun tp!648886 () Bool)

(assert (=> b!2120512 (= e!1350342 tp!648886)))

(declare-fun setIsEmpty!14716 () Bool)

(assert (=> setIsEmpty!14716 setRes!14716))

(declare-fun tp!648889 () Bool)

(declare-fun setNonEmpty!14716 () Bool)

(declare-fun e!1350343 () Bool)

(declare-fun setElem!14716 () Context!2454)

(assert (=> setNonEmpty!14716 (= setRes!14716 (and tp!648889 (inv!31255 setElem!14716) e!1350343))))

(declare-fun setRest!14716 () (InoxSet Context!2454))

(assert (=> setNonEmpty!14716 (= (_2!13521 (h!29062 mapDefault!11743)) ((_ map or) (store ((as const (Array Context!2454 Bool)) false) setElem!14716 true) setRest!14716))))

(declare-fun b!2120513 () Bool)

(declare-fun tp!648887 () Bool)

(assert (=> b!2120513 (= e!1350343 tp!648887)))

(assert (= b!2120511 b!2120512))

(assert (= (and b!2120511 condSetEmpty!14716) setIsEmpty!14716))

(assert (= (and b!2120511 (not condSetEmpty!14716)) setNonEmpty!14716))

(assert (= setNonEmpty!14716 b!2120513))

(assert (= (and b!2120316 ((_ is Cons!23661) mapDefault!11743)) b!2120511))

(declare-fun m!2574819 () Bool)

(assert (=> b!2120511 m!2574819))

(declare-fun m!2574821 () Bool)

(assert (=> setNonEmpty!14716 m!2574821))

(declare-fun b!2120518 () Bool)

(declare-fun e!1350347 () Bool)

(declare-fun tp!648895 () Bool)

(declare-fun tp!648896 () Bool)

(assert (=> b!2120518 (= e!1350347 (and tp!648895 tp!648896))))

(assert (=> b!2120298 (= tp!648715 e!1350347)))

(assert (= (and b!2120298 ((_ is Cons!23657) (exprs!1727 setElem!14677))) b!2120518))

(declare-fun b_lambda!70453 () Bool)

(assert (= b_lambda!70449 (or b!2120309 b_lambda!70453)))

(declare-fun bs!442675 () Bool)

(declare-fun d!643382 () Bool)

(assert (= bs!442675 (and d!643382 b!2120309)))

(assert (=> bs!442675 (= (dynLambda!11305 lambda!78474 (h!29063 lt!794672)) (= (totalInput!2893 (h!29063 lt!794672)) totalInput!886))))

(assert (=> b!2120365 d!643382))

(declare-fun b_lambda!70455 () Bool)

(assert (= b_lambda!70451 (or b!2120317 b_lambda!70455)))

(declare-fun bs!442676 () Bool)

(declare-fun d!643384 () Bool)

(assert (= bs!442676 (and d!643384 b!2120317)))

(assert (=> bs!442676 (= (dynLambda!11305 lambda!78473 (h!29063 lt!794672)) (= (res!918871 (h!29063 lt!794672)) lt!794668))))

(assert (=> b!2120367 d!643384))

(check-sat (not b!2120408) (not d!643336) (not b!2120351) (not b!2120366) (not b!2120432) (not b!2120477) (not b_next!62251) b_and!171121 (not b!2120467) (not b!2120419) (not b!2120421) (not b!2120393) (not b!2120466) (not b!2120470) (not b_next!62253) (not b!2120476) (not b!2120395) (not setNonEmpty!14703) (not b!2120512) (not b!2120496) (not b!2120498) (not b_next!62245) (not b!2120502) (not b!2120499) (not d!643352) (not b!2120431) (not b!2120354) b_and!171127 (not setNonEmpty!14712) (not b!2120494) (not b!2120445) (not setNonEmpty!14710) (not d!643350) (not setNonEmpty!14693) (not b!2120511) (not d!643354) (not b!2120340) (not b!2120503) (not b!2120472) (not setNonEmpty!14711) (not b!2120474) (not setNonEmpty!14686) (not setNonEmpty!14681) (not b!2120392) (not b_next!62247) (not b!2120447) (not b!2120420) (not b!2120468) (not b!2120346) (not b_lambda!70455) (not b!2120448) (not b!2120446) (not b!2120429) (not setNonEmpty!14709) (not b!2120471) (not b!2120510) (not setNonEmpty!14708) (not b!2120433) (not b!2120513) (not b!2120465) (not setNonEmpty!14701) (not b!2120397) (not d!643340) (not b!2120495) (not b!2120342) (not b!2120360) b_and!171131 (not b!2120380) (not b!2120505) (not setNonEmpty!14702) (not b!2120450) (not mapNonEmpty!11752) (not b!2120343) (not d!643332) (not b!2120318) (not mapNonEmpty!11749) (not setNonEmpty!14715) (not b!2120345) (not setNonEmpty!14694) (not mapNonEmpty!11746) (not b!2120475) (not b!2120406) (not b_next!62255) (not b!2120518) b_and!171129 (not setNonEmpty!14680) (not b!2120434) (not b!2120435) (not b!2120478) b_and!171125 (not b!2120501) (not b!2120449) (not b!2120306) (not b!2120407) (not b!2120321) (not d!643368) (not b!2120430) (not b!2120368) (not b!2120500) (not setNonEmpty!14716) (not d!643338) (not b_next!62249) (not b!2120493) (not b!2120396) (not setNonEmpty!14700) (not d!643348) (not b!2120473) (not b_lambda!70453) b_and!171123 (not setNonEmpty!14687) (not setNonEmpty!14690) (not setNonEmpty!14699) tp_is_empty!9485 (not d!643344) (not b!2120436) (not d!643362) (not b!2120469) (not b!2120394) (not d!643380) (not b!2120504) (not b!2120357) (not b!2120497) (not b!2120348) (not b!2120422) (not d!643330) (not b!2120383))
(check-sat (not b_next!62253) (not b_next!62245) b_and!171127 (not b_next!62247) b_and!171131 (not b_next!62255) b_and!171129 b_and!171125 (not b_next!62249) b_and!171123 (not b_next!62251) b_and!171121)
