; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207592 () Bool)

(assert start!207592)

(declare-fun b!2135205 () Bool)

(declare-fun b_free!62573 () Bool)

(declare-fun b_next!63277 () Bool)

(assert (=> b!2135205 (= b_free!62573 (not b_next!63277))))

(declare-fun tp!658108 () Bool)

(declare-fun b_and!172153 () Bool)

(assert (=> b!2135205 (= tp!658108 b_and!172153)))

(declare-fun b!2135206 () Bool)

(declare-fun b_free!62575 () Bool)

(declare-fun b_next!63279 () Bool)

(assert (=> b!2135206 (= b_free!62575 (not b_next!63279))))

(declare-fun tp!658099 () Bool)

(declare-fun b_and!172155 () Bool)

(assert (=> b!2135206 (= tp!658099 b_and!172155)))

(declare-fun b!2135230 () Bool)

(declare-fun b_free!62577 () Bool)

(declare-fun b_next!63281 () Bool)

(assert (=> b!2135230 (= b_free!62577 (not b_next!63281))))

(declare-fun tp!658102 () Bool)

(declare-fun b_and!172157 () Bool)

(assert (=> b!2135230 (= tp!658102 b_and!172157)))

(declare-fun b!2135199 () Bool)

(declare-fun b_free!62579 () Bool)

(declare-fun b_next!63283 () Bool)

(assert (=> b!2135199 (= b_free!62579 (not b_next!63283))))

(declare-fun tp!658093 () Bool)

(declare-fun b_and!172159 () Bool)

(assert (=> b!2135199 (= tp!658093 b_and!172159)))

(declare-fun b!2135217 () Bool)

(declare-fun b_free!62581 () Bool)

(declare-fun b_next!63285 () Bool)

(assert (=> b!2135217 (= b_free!62581 (not b_next!63285))))

(declare-fun tp!658096 () Bool)

(declare-fun b_and!172161 () Bool)

(assert (=> b!2135217 (= tp!658096 b_and!172161)))

(declare-fun b!2135194 () Bool)

(declare-fun b_free!62583 () Bool)

(declare-fun b_next!63287 () Bool)

(assert (=> b!2135194 (= b_free!62583 (not b_next!63287))))

(declare-fun tp!658106 () Bool)

(declare-fun b_and!172163 () Bool)

(assert (=> b!2135194 (= tp!658106 b_and!172163)))

(declare-fun b!2135222 () Bool)

(assert (=> b!2135222 true))

(declare-fun bs!444312 () Bool)

(declare-fun b!2135202 () Bool)

(assert (= bs!444312 (and b!2135202 b!2135222)))

(declare-fun lambda!79451 () Int)

(declare-fun lambda!79450 () Int)

(assert (=> bs!444312 (not (= lambda!79451 lambda!79450))))

(assert (=> b!2135202 true))

(declare-fun b!2135193 () Bool)

(declare-fun e!1362792 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2135193 (= e!1362792 from!1043)))

(declare-fun e!1362780 () Bool)

(declare-fun tp!658105 () Bool)

(declare-datatypes ((C!11632 0))(
  ( (C!11633 (val!6802 Int)) )
))
(declare-datatypes ((Regex!5743 0))(
  ( (ElementMatch!5743 (c!340319 C!11632)) (Concat!10045 (regOne!11998 Regex!5743) (regTwo!11998 Regex!5743)) (EmptyExpr!5743) (Star!5743 (reg!6072 Regex!5743)) (EmptyLang!5743) (Union!5743 (regOne!11999 Regex!5743) (regTwo!11999 Regex!5743)) )
))
(declare-datatypes ((List!24225 0))(
  ( (Nil!24141) (Cons!24141 (h!29542 Regex!5743) (t!196753 List!24225)) )
))
(declare-datatypes ((Context!2626 0))(
  ( (Context!2627 (exprs!1813 List!24225)) )
))
(declare-datatypes ((tuple3!3258 0))(
  ( (tuple3!3259 (_1!14061 Regex!5743) (_2!14061 Context!2626) (_3!2099 C!11632)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23924 0))(
  ( (tuple2!23925 (_1!14062 tuple3!3258) (_2!14062 (InoxSet Context!2626))) )
))
(declare-datatypes ((List!24226 0))(
  ( (Nil!24142) (Cons!24142 (h!29543 tuple2!23924) (t!196754 List!24226)) )
))
(declare-datatypes ((Hashable!2580 0))(
  ( (HashableExt!2579 (__x!16174 Int)) )
))
(declare-datatypes ((array!9037 0))(
  ( (array!9038 (arr!4030 (Array (_ BitVec 32) (_ BitVec 64))) (size!18882 (_ BitVec 32))) )
))
(declare-datatypes ((array!9039 0))(
  ( (array!9040 (arr!4031 (Array (_ BitVec 32) List!24226)) (size!18883 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5332 0))(
  ( (LongMapFixedSize!5333 (defaultEntry!3031 Int) (mask!6853 (_ BitVec 32)) (extraKeys!2914 (_ BitVec 32)) (zeroValue!2924 List!24226) (minValue!2924 List!24226) (_size!5383 (_ BitVec 32)) (_keys!2963 array!9037) (_values!2946 array!9039) (_vacant!2727 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10489 0))(
  ( (Cell!10490 (v!28706 LongMapFixedSize!5332)) )
))
(declare-datatypes ((MutLongMap!2666 0))(
  ( (LongMap!2666 (underlying!5527 Cell!10489)) (MutLongMapExt!2665 (__x!16175 Int)) )
))
(declare-datatypes ((Cell!10491 0))(
  ( (Cell!10492 (v!28707 MutLongMap!2666)) )
))
(declare-datatypes ((MutableMap!2580 0))(
  ( (MutableMapExt!2579 (__x!16176 Int)) (HashMap!2580 (underlying!5528 Cell!10491) (hashF!4503 Hashable!2580) (_size!5384 (_ BitVec 32)) (defaultValue!2742 Int)) )
))
(declare-datatypes ((CacheDown!1766 0))(
  ( (CacheDown!1767 (cache!2961 MutableMap!2580)) )
))
(declare-fun cacheDown!1098 () CacheDown!1766)

(declare-fun tp!658094 () Bool)

(declare-fun e!1362790 () Bool)

(declare-fun array_inv!2882 (array!9037) Bool)

(declare-fun array_inv!2883 (array!9039) Bool)

(assert (=> b!2135194 (= e!1362780 (and tp!658106 tp!658094 tp!658105 (array_inv!2882 (_keys!2963 (v!28706 (underlying!5527 (v!28707 (underlying!5528 (cache!2961 cacheDown!1098))))))) (array_inv!2883 (_values!2946 (v!28706 (underlying!5527 (v!28707 (underlying!5528 (cache!2961 cacheDown!1098))))))) e!1362790))))

(declare-fun b!2135195 () Bool)

(declare-fun e!1362787 () Bool)

(declare-fun tp!658103 () Bool)

(assert (=> b!2135195 (= e!1362787 tp!658103)))

(declare-fun b!2135196 () Bool)

(declare-fun e!1362788 () Bool)

(declare-fun e!1362769 () Bool)

(declare-fun lt!797107 () MutLongMap!2666)

(get-info :version)

(assert (=> b!2135196 (= e!1362788 (and e!1362769 ((_ is LongMap!2666) lt!797107)))))

(assert (=> b!2135196 (= lt!797107 (v!28707 (underlying!5528 (cache!2961 cacheDown!1098))))))

(declare-fun b!2135197 () Bool)

(declare-fun e!1362766 () Bool)

(declare-fun e!1362797 () Bool)

(assert (=> b!2135197 (= e!1362766 e!1362797)))

(declare-fun res!922546 () Bool)

(assert (=> b!2135197 (=> res!922546 e!1362797)))

(declare-fun lt!797112 () Int)

(declare-datatypes ((List!24227 0))(
  ( (Nil!24143) (Cons!24143 (h!29544 C!11632) (t!196755 List!24227)) )
))
(declare-datatypes ((IArray!15767 0))(
  ( (IArray!15768 (innerList!7941 List!24227)) )
))
(declare-datatypes ((Conc!7881 0))(
  ( (Node!7881 (left!18597 Conc!7881) (right!18927 Conc!7881) (csize!15992 Int) (cheight!8092 Int)) (Leaf!11520 (xs!10823 IArray!15767) (csize!15993 Int)) (Empty!7881) )
))
(declare-datatypes ((BalanceConc!15524 0))(
  ( (BalanceConc!15525 (c!340320 Conc!7881)) )
))
(declare-fun totalInput!851 () BalanceConc!15524)

(declare-fun lt!797110 () Int)

(declare-datatypes ((tuple2!23926 0))(
  ( (tuple2!23927 (_1!14063 Context!2626) (_2!14063 C!11632)) )
))
(declare-datatypes ((tuple2!23928 0))(
  ( (tuple2!23929 (_1!14064 tuple2!23926) (_2!14064 (InoxSet Context!2626))) )
))
(declare-datatypes ((List!24228 0))(
  ( (Nil!24144) (Cons!24144 (h!29545 tuple2!23928) (t!196756 List!24228)) )
))
(declare-datatypes ((Hashable!2581 0))(
  ( (HashableExt!2580 (__x!16177 Int)) )
))
(declare-datatypes ((array!9041 0))(
  ( (array!9042 (arr!4032 (Array (_ BitVec 32) List!24228)) (size!18884 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5334 0))(
  ( (LongMapFixedSize!5335 (defaultEntry!3032 Int) (mask!6854 (_ BitVec 32)) (extraKeys!2915 (_ BitVec 32)) (zeroValue!2925 List!24228) (minValue!2925 List!24228) (_size!5385 (_ BitVec 32)) (_keys!2964 array!9037) (_values!2947 array!9041) (_vacant!2728 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10493 0))(
  ( (Cell!10494 (v!28708 LongMapFixedSize!5334)) )
))
(declare-datatypes ((MutLongMap!2667 0))(
  ( (LongMap!2667 (underlying!5529 Cell!10493)) (MutLongMapExt!2666 (__x!16178 Int)) )
))
(declare-datatypes ((Cell!10495 0))(
  ( (Cell!10496 (v!28709 MutLongMap!2667)) )
))
(declare-datatypes ((MutableMap!2581 0))(
  ( (MutableMapExt!2580 (__x!16179 Int)) (HashMap!2581 (underlying!5530 Cell!10495) (hashF!4504 Hashable!2581) (_size!5386 (_ BitVec 32)) (defaultValue!2743 Int)) )
))
(declare-datatypes ((CacheUp!1786 0))(
  ( (CacheUp!1787 (cache!2962 MutableMap!2581)) )
))
(declare-datatypes ((tuple3!3260 0))(
  ( (tuple3!3261 (_1!14065 (InoxSet Context!2626)) (_2!14065 CacheUp!1786) (_3!2100 CacheDown!1766)) )
))
(declare-fun lt!797108 () tuple3!3260)

(declare-fun furthestNullablePosition!53 ((InoxSet Context!2626) Int BalanceConc!15524 Int Int) Int)

(assert (=> b!2135197 (= res!922546 (not (= lt!797110 (furthestNullablePosition!53 (_1!14065 lt!797108) (+ 1 from!1043) totalInput!851 lt!797112 e!1362792))))))

(declare-fun c!340318 () Bool)

(declare-fun nullableZipper!118 ((InoxSet Context!2626)) Bool)

(assert (=> b!2135197 (= c!340318 (nullableZipper!118 (_1!14065 lt!797108)))))

(declare-fun cacheUp!979 () CacheUp!1786)

(declare-fun z!3839 () (InoxSet Context!2626))

(declare-fun derivationStepZipperMem!40 ((InoxSet Context!2626) C!11632 CacheUp!1786 CacheDown!1766) tuple3!3260)

(declare-fun apply!5939 (BalanceConc!15524 Int) C!11632)

(assert (=> b!2135197 (= lt!797108 (derivationStepZipperMem!40 z!3839 (apply!5939 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2135198 () Bool)

(declare-fun res!922548 () Bool)

(declare-fun e!1362776 () Bool)

(assert (=> b!2135198 (=> (not res!922548) (not e!1362776))))

(declare-fun valid!2086 (CacheDown!1766) Bool)

(assert (=> b!2135198 (= res!922548 (valid!2086 cacheDown!1098))))

(declare-fun e!1362775 () Bool)

(declare-fun e!1362781 () Bool)

(assert (=> b!2135199 (= e!1362775 (and e!1362781 tp!658093))))

(declare-fun b!2135200 () Bool)

(assert (=> b!2135200 (= e!1362797 true)))

(declare-datatypes ((StackFrame!174 0))(
  ( (StackFrame!175 (z!5815 (InoxSet Context!2626)) (from!2701 Int) (lastNullablePos!388 Int) (res!922558 Int) (totalInput!3060 BalanceConc!15524)) )
))
(declare-datatypes ((List!24229 0))(
  ( (Nil!24145) (Cons!24145 (h!29546 StackFrame!174) (t!196757 List!24229)) )
))
(declare-fun stack!8 () List!24229)

(declare-fun forall!4930 (List!24229 Int) Bool)

(assert (=> b!2135200 (forall!4930 stack!8 lambda!79450)))

(declare-fun b!2135201 () Bool)

(declare-fun e!1362768 () Bool)

(declare-fun e!1362783 () Bool)

(assert (=> b!2135201 (= e!1362768 e!1362783)))

(declare-fun res!922556 () Bool)

(declare-fun e!1362779 () Bool)

(assert (=> b!2135202 (=> (not res!922556) (not e!1362779))))

(assert (=> b!2135202 (= res!922556 (forall!4930 stack!8 lambda!79451))))

(declare-fun tp!658113 () Bool)

(declare-fun setRes!15925 () Bool)

(declare-fun setElem!15925 () Context!2626)

(declare-fun setNonEmpty!15924 () Bool)

(declare-fun inv!31800 (Context!2626) Bool)

(assert (=> setNonEmpty!15924 (= setRes!15925 (and tp!658113 (inv!31800 setElem!15925) e!1362787))))

(declare-fun setRest!15924 () (InoxSet Context!2626))

(assert (=> setNonEmpty!15924 (= z!3839 ((_ map or) (store ((as const (Array Context!2626 Bool)) false) setElem!15925 true) setRest!15924))))

(declare-fun b!2135203 () Bool)

(declare-fun res!922557 () Bool)

(assert (=> b!2135203 (=> (not res!922557) (not e!1362776))))

(declare-datatypes ((tuple3!3262 0))(
  ( (tuple3!3263 (_1!14066 (InoxSet Context!2626)) (_2!14066 Int) (_3!2101 Int)) )
))
(declare-datatypes ((tuple2!23930 0))(
  ( (tuple2!23931 (_1!14067 tuple3!3262) (_2!14067 Int)) )
))
(declare-datatypes ((List!24230 0))(
  ( (Nil!24146) (Cons!24146 (h!29547 tuple2!23930) (t!196758 List!24230)) )
))
(declare-datatypes ((array!9043 0))(
  ( (array!9044 (arr!4033 (Array (_ BitVec 32) List!24230)) (size!18885 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5336 0))(
  ( (LongMapFixedSize!5337 (defaultEntry!3033 Int) (mask!6855 (_ BitVec 32)) (extraKeys!2916 (_ BitVec 32)) (zeroValue!2926 List!24230) (minValue!2926 List!24230) (_size!5387 (_ BitVec 32)) (_keys!2965 array!9037) (_values!2948 array!9043) (_vacant!2729 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10497 0))(
  ( (Cell!10498 (v!28710 LongMapFixedSize!5336)) )
))
(declare-datatypes ((MutLongMap!2668 0))(
  ( (LongMap!2668 (underlying!5531 Cell!10497)) (MutLongMapExt!2667 (__x!16180 Int)) )
))
(declare-datatypes ((Cell!10499 0))(
  ( (Cell!10500 (v!28711 MutLongMap!2668)) )
))
(declare-datatypes ((Hashable!2582 0))(
  ( (HashableExt!2581 (__x!16181 Int)) )
))
(declare-datatypes ((MutableMap!2582 0))(
  ( (MutableMapExt!2581 (__x!16182 Int)) (HashMap!2582 (underlying!5532 Cell!10499) (hashF!4505 Hashable!2582) (_size!5388 (_ BitVec 32)) (defaultValue!2744 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!732 0))(
  ( (CacheFurthestNullable!733 (cache!2963 MutableMap!2582) (totalInput!3061 BalanceConc!15524)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!732)

(assert (=> b!2135203 (= res!922557 (= (totalInput!3061 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2135204 () Bool)

(declare-fun e!1362762 () Bool)

(declare-fun tp!658092 () Bool)

(declare-fun inv!31801 (Conc!7881) Bool)

(assert (=> b!2135204 (= e!1362762 (and (inv!31801 (c!340320 (totalInput!3060 (h!29546 stack!8)))) tp!658092))))

(declare-fun e!1362771 () Bool)

(declare-fun e!1362784 () Bool)

(declare-fun tp!658115 () Bool)

(declare-fun tp!658120 () Bool)

(declare-fun array_inv!2884 (array!9041) Bool)

(assert (=> b!2135205 (= e!1362771 (and tp!658108 tp!658120 tp!658115 (array_inv!2882 (_keys!2964 (v!28708 (underlying!5529 (v!28709 (underlying!5530 (cache!2962 cacheUp!979))))))) (array_inv!2884 (_values!2947 (v!28708 (underlying!5529 (v!28709 (underlying!5530 (cache!2962 cacheUp!979))))))) e!1362784))))

(declare-fun mapIsEmpty!12790 () Bool)

(declare-fun mapRes!12791 () Bool)

(assert (=> mapIsEmpty!12790 mapRes!12791))

(declare-fun tp!658117 () Bool)

(declare-fun e!1362772 () Bool)

(declare-fun e!1362764 () Bool)

(declare-fun tp!658111 () Bool)

(declare-fun array_inv!2885 (array!9043) Bool)

(assert (=> b!2135206 (= e!1362764 (and tp!658099 tp!658117 tp!658111 (array_inv!2882 (_keys!2965 (v!28710 (underlying!5531 (v!28711 (underlying!5532 (cache!2963 cacheFurthestNullable!114))))))) (array_inv!2885 (_values!2948 (v!28710 (underlying!5531 (v!28711 (underlying!5532 (cache!2963 cacheFurthestNullable!114))))))) e!1362772))))

(declare-fun b!2135207 () Bool)

(declare-fun e!1362773 () Bool)

(declare-fun tp!658101 () Bool)

(assert (=> b!2135207 (= e!1362773 (and (inv!31801 (c!340320 (totalInput!3061 cacheFurthestNullable!114))) tp!658101))))

(declare-fun b!2135208 () Bool)

(declare-fun res!922552 () Bool)

(assert (=> b!2135208 (=> (not res!922552) (not e!1362776))))

(declare-fun valid!2087 (CacheUp!1786) Bool)

(assert (=> b!2135208 (= res!922552 (valid!2087 cacheUp!979))))

(declare-fun mapNonEmpty!12790 () Bool)

(declare-fun mapRes!12792 () Bool)

(declare-fun tp!658097 () Bool)

(declare-fun tp!658095 () Bool)

(assert (=> mapNonEmpty!12790 (= mapRes!12792 (and tp!658097 tp!658095))))

(declare-fun mapRest!12791 () (Array (_ BitVec 32) List!24226))

(declare-fun mapValue!12790 () List!24226)

(declare-fun mapKey!12791 () (_ BitVec 32))

(assert (=> mapNonEmpty!12790 (= (arr!4031 (_values!2946 (v!28706 (underlying!5527 (v!28707 (underlying!5528 (cache!2961 cacheDown!1098))))))) (store mapRest!12791 mapKey!12791 mapValue!12790))))

(declare-fun b!2135209 () Bool)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2135209 (= e!1362792 lastNullablePos!123)))

(declare-fun b!2135210 () Bool)

(declare-fun res!922554 () Bool)

(assert (=> b!2135210 (=> res!922554 e!1362766)))

(declare-fun lostCauseZipper!93 ((InoxSet Context!2626)) Bool)

(assert (=> b!2135210 (= res!922554 (lostCauseZipper!93 z!3839))))

(declare-fun setIsEmpty!15924 () Bool)

(declare-fun setRes!15924 () Bool)

(assert (=> setIsEmpty!15924 setRes!15924))

(declare-fun mapNonEmpty!12791 () Bool)

(declare-fun tp!658100 () Bool)

(declare-fun tp!658104 () Bool)

(assert (=> mapNonEmpty!12791 (= mapRes!12791 (and tp!658100 tp!658104))))

(declare-fun mapKey!12790 () (_ BitVec 32))

(declare-fun mapValue!12792 () List!24228)

(declare-fun mapRest!12792 () (Array (_ BitVec 32) List!24228))

(assert (=> mapNonEmpty!12791 (= (arr!4032 (_values!2947 (v!28708 (underlying!5529 (v!28709 (underlying!5530 (cache!2962 cacheUp!979))))))) (store mapRest!12792 mapKey!12790 mapValue!12792))))

(declare-fun b!2135211 () Bool)

(declare-fun res!922545 () Bool)

(assert (=> b!2135211 (=> res!922545 e!1362766)))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2135211 (= res!922545 (= from!1043 totalInputSize!296))))

(declare-fun b!2135212 () Bool)

(declare-fun e!1362778 () Bool)

(assert (=> b!2135212 (= e!1362778 e!1362764)))

(declare-fun b!2135213 () Bool)

(declare-fun e!1362774 () Bool)

(assert (=> b!2135213 (= e!1362774 e!1362780)))

(declare-fun e!1362767 () Bool)

(declare-fun e!1362789 () Bool)

(declare-fun tp!658114 () Bool)

(declare-fun b!2135214 () Bool)

(declare-fun inv!31802 (StackFrame!174) Bool)

(assert (=> b!2135214 (= e!1362789 (and (inv!31802 (h!29546 stack!8)) e!1362767 tp!658114))))

(declare-fun b!2135215 () Bool)

(declare-fun e!1362798 () Bool)

(declare-fun tp!658116 () Bool)

(assert (=> b!2135215 (= e!1362798 (and (inv!31801 (c!340320 totalInput!851)) tp!658116))))

(declare-fun b!2135216 () Bool)

(declare-fun tp!658118 () Bool)

(assert (=> b!2135216 (= e!1362790 (and tp!658118 mapRes!12792))))

(declare-fun condMapEmpty!12790 () Bool)

(declare-fun mapDefault!12792 () List!24226)

(assert (=> b!2135216 (= condMapEmpty!12790 (= (arr!4031 (_values!2946 (v!28706 (underlying!5527 (v!28707 (underlying!5528 (cache!2961 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24226)) mapDefault!12792)))))

(declare-fun e!1362782 () Bool)

(declare-fun e!1362795 () Bool)

(assert (=> b!2135217 (= e!1362782 (and e!1362795 tp!658096))))

(declare-fun e!1362793 () Bool)

(declare-fun b!2135218 () Bool)

(declare-fun inv!31803 (BalanceConc!15524) Bool)

(assert (=> b!2135218 (= e!1362793 (and e!1362782 (inv!31803 (totalInput!3061 cacheFurthestNullable!114)) e!1362773))))

(declare-fun b!2135219 () Bool)

(declare-fun res!922547 () Bool)

(assert (=> b!2135219 (=> (not res!922547) (not e!1362776))))

(declare-fun e!1362796 () Bool)

(assert (=> b!2135219 (= res!922547 e!1362796)))

(declare-fun res!922553 () Bool)

(assert (=> b!2135219 (=> res!922553 e!1362796)))

(assert (=> b!2135219 (= res!922553 (not (nullableZipper!118 z!3839)))))

(declare-fun b!2135220 () Bool)

(assert (=> b!2135220 (= e!1362769 e!1362774)))

(declare-fun b!2135221 () Bool)

(declare-fun e!1362785 () Bool)

(declare-fun tp!658112 () Bool)

(assert (=> b!2135221 (= e!1362785 tp!658112)))

(declare-fun setNonEmpty!15925 () Bool)

(declare-fun setElem!15924 () Context!2626)

(declare-fun tp!658119 () Bool)

(assert (=> setNonEmpty!15925 (= setRes!15924 (and tp!658119 (inv!31800 setElem!15924) e!1362785))))

(declare-fun setRest!15925 () (InoxSet Context!2626))

(assert (=> setNonEmpty!15925 (= (z!5815 (h!29546 stack!8)) ((_ map or) (store ((as const (Array Context!2626 Bool)) false) setElem!15924 true) setRest!15925))))

(assert (=> b!2135222 (= e!1362776 e!1362779)))

(declare-fun res!922550 () Bool)

(assert (=> b!2135222 (=> (not res!922550) (not e!1362779))))

(assert (=> b!2135222 (= res!922550 (forall!4930 stack!8 lambda!79450))))

(assert (=> b!2135222 (= lt!797110 (furthestNullablePosition!53 z!3839 from!1043 totalInput!851 lt!797112 lastNullablePos!123))))

(declare-fun b!2135223 () Bool)

(declare-fun tp!658109 () Bool)

(assert (=> b!2135223 (= e!1362784 (and tp!658109 mapRes!12791))))

(declare-fun condMapEmpty!12792 () Bool)

(declare-fun mapDefault!12791 () List!24228)

(assert (=> b!2135223 (= condMapEmpty!12792 (= (arr!4032 (_values!2947 (v!28708 (underlying!5529 (v!28709 (underlying!5530 (cache!2962 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24228)) mapDefault!12791)))))

(declare-fun b!2135224 () Bool)

(declare-fun e!1362799 () Bool)

(declare-fun lt!797109 () MutLongMap!2667)

(assert (=> b!2135224 (= e!1362781 (and e!1362799 ((_ is LongMap!2667) lt!797109)))))

(assert (=> b!2135224 (= lt!797109 (v!28709 (underlying!5530 (cache!2962 cacheUp!979))))))

(declare-fun b!2135225 () Bool)

(declare-fun tp!658110 () Bool)

(declare-fun mapRes!12790 () Bool)

(assert (=> b!2135225 (= e!1362772 (and tp!658110 mapRes!12790))))

(declare-fun condMapEmpty!12791 () Bool)

(declare-fun mapDefault!12790 () List!24230)

(assert (=> b!2135225 (= condMapEmpty!12791 (= (arr!4033 (_values!2948 (v!28710 (underlying!5531 (v!28711 (underlying!5532 (cache!2963 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24230)) mapDefault!12790)))))

(declare-fun b!2135226 () Bool)

(assert (=> b!2135226 (= e!1362796 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2135227 () Bool)

(declare-fun e!1362791 () Bool)

(assert (=> b!2135227 (= e!1362791 e!1362775)))

(declare-fun b!2135228 () Bool)

(declare-fun e!1362765 () Bool)

(assert (=> b!2135228 (= e!1362765 e!1362771)))

(declare-fun b!2135229 () Bool)

(declare-fun e!1362770 () Bool)

(assert (=> b!2135229 (= e!1362770 e!1362778)))

(declare-fun mapIsEmpty!12791 () Bool)

(assert (=> mapIsEmpty!12791 mapRes!12790))

(assert (=> b!2135230 (= e!1362783 (and e!1362788 tp!658102))))

(declare-fun mapNonEmpty!12792 () Bool)

(declare-fun tp!658107 () Bool)

(declare-fun tp!658098 () Bool)

(assert (=> mapNonEmpty!12792 (= mapRes!12790 (and tp!658107 tp!658098))))

(declare-fun mapValue!12791 () List!24230)

(declare-fun mapKey!12792 () (_ BitVec 32))

(declare-fun mapRest!12790 () (Array (_ BitVec 32) List!24230))

(assert (=> mapNonEmpty!12792 (= (arr!4033 (_values!2948 (v!28710 (underlying!5531 (v!28711 (underlying!5532 (cache!2963 cacheFurthestNullable!114))))))) (store mapRest!12790 mapKey!12792 mapValue!12791))))

(declare-fun setIsEmpty!15925 () Bool)

(assert (=> setIsEmpty!15925 setRes!15925))

(declare-fun mapIsEmpty!12792 () Bool)

(assert (=> mapIsEmpty!12792 mapRes!12792))

(declare-fun b!2135231 () Bool)

(assert (=> b!2135231 (= e!1362779 (not e!1362766))))

(declare-fun res!922551 () Bool)

(assert (=> b!2135231 (=> res!922551 e!1362766)))

(declare-datatypes ((Option!4910 0))(
  ( (None!4909) (Some!4909 (v!28712 Int)) )
))
(declare-fun get!7391 (CacheFurthestNullable!732 (InoxSet Context!2626) Int Int) Option!4910)

(assert (=> b!2135231 (= res!922551 ((_ is Some!4909) (get!7391 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2135231 (forall!4930 stack!8 lambda!79450)))

(declare-fun b!2135232 () Bool)

(assert (=> b!2135232 (= e!1362767 (and setRes!15924 (inv!31803 (totalInput!3060 (h!29546 stack!8))) e!1362762))))

(declare-fun condSetEmpty!15924 () Bool)

(assert (=> b!2135232 (= condSetEmpty!15924 (= (z!5815 (h!29546 stack!8)) ((as const (Array Context!2626 Bool)) false)))))

(declare-fun b!2135233 () Bool)

(declare-fun res!922549 () Bool)

(assert (=> b!2135233 (=> (not res!922549) (not e!1362776))))

(declare-fun valid!2088 (CacheFurthestNullable!732) Bool)

(assert (=> b!2135233 (= res!922549 (valid!2088 cacheFurthestNullable!114))))

(declare-fun res!922555 () Bool)

(declare-fun e!1362786 () Bool)

(assert (=> start!207592 (=> (not res!922555) (not e!1362786))))

(assert (=> start!207592 (= res!922555 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207592 e!1362786))

(declare-fun inv!31804 (CacheFurthestNullable!732) Bool)

(assert (=> start!207592 (and (inv!31804 cacheFurthestNullable!114) e!1362793)))

(assert (=> start!207592 true))

(declare-fun inv!31805 (CacheDown!1766) Bool)

(assert (=> start!207592 (and (inv!31805 cacheDown!1098) e!1362768)))

(declare-fun inv!31806 (CacheUp!1786) Bool)

(assert (=> start!207592 (and (inv!31806 cacheUp!979) e!1362791)))

(declare-fun condSetEmpty!15925 () Bool)

(assert (=> start!207592 (= condSetEmpty!15925 (= z!3839 ((as const (Array Context!2626 Bool)) false)))))

(assert (=> start!207592 setRes!15925))

(assert (=> start!207592 (and (inv!31803 totalInput!851) e!1362798)))

(assert (=> start!207592 e!1362789))

(declare-fun b!2135234 () Bool)

(assert (=> b!2135234 (= e!1362786 e!1362776)))

(declare-fun res!922544 () Bool)

(assert (=> b!2135234 (=> (not res!922544) (not e!1362776))))

(assert (=> b!2135234 (= res!922544 (and (= totalInputSize!296 lt!797112) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18886 (BalanceConc!15524) Int)

(assert (=> b!2135234 (= lt!797112 (size!18886 totalInput!851))))

(declare-fun b!2135235 () Bool)

(assert (=> b!2135235 (= e!1362799 e!1362765)))

(declare-fun b!2135236 () Bool)

(declare-fun lt!797111 () MutLongMap!2668)

(assert (=> b!2135236 (= e!1362795 (and e!1362770 ((_ is LongMap!2668) lt!797111)))))

(assert (=> b!2135236 (= lt!797111 (v!28711 (underlying!5532 (cache!2963 cacheFurthestNullable!114))))))

(assert (= (and start!207592 res!922555) b!2135234))

(assert (= (and b!2135234 res!922544) b!2135219))

(assert (= (and b!2135219 (not res!922553)) b!2135226))

(assert (= (and b!2135219 res!922547) b!2135208))

(assert (= (and b!2135208 res!922552) b!2135198))

(assert (= (and b!2135198 res!922548) b!2135233))

(assert (= (and b!2135233 res!922549) b!2135203))

(assert (= (and b!2135203 res!922557) b!2135222))

(assert (= (and b!2135222 res!922550) b!2135202))

(assert (= (and b!2135202 res!922556) b!2135231))

(assert (= (and b!2135231 (not res!922551)) b!2135211))

(assert (= (and b!2135211 (not res!922545)) b!2135210))

(assert (= (and b!2135210 (not res!922554)) b!2135197))

(assert (= (and b!2135197 c!340318) b!2135193))

(assert (= (and b!2135197 (not c!340318)) b!2135209))

(assert (= (and b!2135197 (not res!922546)) b!2135200))

(assert (= (and b!2135225 condMapEmpty!12791) mapIsEmpty!12791))

(assert (= (and b!2135225 (not condMapEmpty!12791)) mapNonEmpty!12792))

(assert (= b!2135206 b!2135225))

(assert (= b!2135212 b!2135206))

(assert (= b!2135229 b!2135212))

(assert (= (and b!2135236 ((_ is LongMap!2668) (v!28711 (underlying!5532 (cache!2963 cacheFurthestNullable!114))))) b!2135229))

(assert (= b!2135217 b!2135236))

(assert (= (and b!2135218 ((_ is HashMap!2582) (cache!2963 cacheFurthestNullable!114))) b!2135217))

(assert (= b!2135218 b!2135207))

(assert (= start!207592 b!2135218))

(assert (= (and b!2135216 condMapEmpty!12790) mapIsEmpty!12792))

(assert (= (and b!2135216 (not condMapEmpty!12790)) mapNonEmpty!12790))

(assert (= b!2135194 b!2135216))

(assert (= b!2135213 b!2135194))

(assert (= b!2135220 b!2135213))

(assert (= (and b!2135196 ((_ is LongMap!2666) (v!28707 (underlying!5528 (cache!2961 cacheDown!1098))))) b!2135220))

(assert (= b!2135230 b!2135196))

(assert (= (and b!2135201 ((_ is HashMap!2580) (cache!2961 cacheDown!1098))) b!2135230))

(assert (= start!207592 b!2135201))

(assert (= (and b!2135223 condMapEmpty!12792) mapIsEmpty!12790))

(assert (= (and b!2135223 (not condMapEmpty!12792)) mapNonEmpty!12791))

(assert (= b!2135205 b!2135223))

(assert (= b!2135228 b!2135205))

(assert (= b!2135235 b!2135228))

(assert (= (and b!2135224 ((_ is LongMap!2667) (v!28709 (underlying!5530 (cache!2962 cacheUp!979))))) b!2135235))

(assert (= b!2135199 b!2135224))

(assert (= (and b!2135227 ((_ is HashMap!2581) (cache!2962 cacheUp!979))) b!2135199))

(assert (= start!207592 b!2135227))

(assert (= (and start!207592 condSetEmpty!15925) setIsEmpty!15925))

(assert (= (and start!207592 (not condSetEmpty!15925)) setNonEmpty!15924))

(assert (= setNonEmpty!15924 b!2135195))

(assert (= start!207592 b!2135215))

(assert (= (and b!2135232 condSetEmpty!15924) setIsEmpty!15924))

(assert (= (and b!2135232 (not condSetEmpty!15924)) setNonEmpty!15925))

(assert (= setNonEmpty!15925 b!2135221))

(assert (= b!2135232 b!2135204))

(assert (= b!2135214 b!2135232))

(assert (= (and start!207592 ((_ is Cons!24145) stack!8)) b!2135214))

(declare-fun m!2583062 () Bool)

(assert (=> b!2135204 m!2583062))

(declare-fun m!2583064 () Bool)

(assert (=> b!2135218 m!2583064))

(declare-fun m!2583066 () Bool)

(assert (=> b!2135219 m!2583066))

(declare-fun m!2583068 () Bool)

(assert (=> setNonEmpty!15924 m!2583068))

(declare-fun m!2583070 () Bool)

(assert (=> b!2135232 m!2583070))

(declare-fun m!2583072 () Bool)

(assert (=> b!2135222 m!2583072))

(declare-fun m!2583074 () Bool)

(assert (=> b!2135222 m!2583074))

(declare-fun m!2583076 () Bool)

(assert (=> b!2135194 m!2583076))

(declare-fun m!2583078 () Bool)

(assert (=> b!2135194 m!2583078))

(declare-fun m!2583080 () Bool)

(assert (=> start!207592 m!2583080))

(declare-fun m!2583082 () Bool)

(assert (=> start!207592 m!2583082))

(declare-fun m!2583084 () Bool)

(assert (=> start!207592 m!2583084))

(declare-fun m!2583086 () Bool)

(assert (=> start!207592 m!2583086))

(declare-fun m!2583088 () Bool)

(assert (=> mapNonEmpty!12790 m!2583088))

(declare-fun m!2583090 () Bool)

(assert (=> b!2135208 m!2583090))

(declare-fun m!2583092 () Bool)

(assert (=> b!2135197 m!2583092))

(declare-fun m!2583094 () Bool)

(assert (=> b!2135197 m!2583094))

(declare-fun m!2583096 () Bool)

(assert (=> b!2135197 m!2583096))

(assert (=> b!2135197 m!2583096))

(declare-fun m!2583098 () Bool)

(assert (=> b!2135197 m!2583098))

(declare-fun m!2583100 () Bool)

(assert (=> b!2135207 m!2583100))

(assert (=> b!2135200 m!2583072))

(declare-fun m!2583102 () Bool)

(assert (=> b!2135205 m!2583102))

(declare-fun m!2583104 () Bool)

(assert (=> b!2135205 m!2583104))

(declare-fun m!2583106 () Bool)

(assert (=> b!2135210 m!2583106))

(declare-fun m!2583108 () Bool)

(assert (=> b!2135231 m!2583108))

(assert (=> b!2135231 m!2583072))

(declare-fun m!2583110 () Bool)

(assert (=> b!2135214 m!2583110))

(declare-fun m!2583112 () Bool)

(assert (=> b!2135198 m!2583112))

(declare-fun m!2583114 () Bool)

(assert (=> b!2135215 m!2583114))

(declare-fun m!2583116 () Bool)

(assert (=> b!2135233 m!2583116))

(declare-fun m!2583118 () Bool)

(assert (=> b!2135206 m!2583118))

(declare-fun m!2583120 () Bool)

(assert (=> b!2135206 m!2583120))

(declare-fun m!2583122 () Bool)

(assert (=> b!2135202 m!2583122))

(declare-fun m!2583124 () Bool)

(assert (=> mapNonEmpty!12792 m!2583124))

(declare-fun m!2583126 () Bool)

(assert (=> b!2135234 m!2583126))

(declare-fun m!2583128 () Bool)

(assert (=> setNonEmpty!15925 m!2583128))

(declare-fun m!2583130 () Bool)

(assert (=> mapNonEmpty!12791 m!2583130))

(check-sat (not b!2135194) (not b!2135214) (not b!2135204) b_and!172157 (not b!2135223) (not b!2135215) (not b!2135207) (not b!2135222) (not b!2135210) (not b!2135219) (not b!2135218) (not b!2135200) (not b_next!63279) (not b!2135197) (not b!2135208) (not b!2135231) (not b!2135225) (not mapNonEmpty!12792) (not setNonEmpty!15925) b_and!172153 (not b_next!63283) (not start!207592) (not b!2135233) b_and!172155 (not b!2135195) (not mapNonEmpty!12791) b_and!172163 (not b_next!63287) (not b!2135216) (not b!2135202) (not b_next!63277) (not b_next!63285) (not b!2135234) (not b!2135221) (not b!2135232) b_and!172159 (not mapNonEmpty!12790) (not b!2135205) (not b_next!63281) (not b!2135198) (not setNonEmpty!15924) b_and!172161 (not b!2135206))
(check-sat b_and!172157 b_and!172155 b_and!172163 (not b_next!63287) (not b_next!63277) (not b_next!63285) (not b_next!63279) b_and!172161 (not b_next!63283) b_and!172153 b_and!172159 (not b_next!63281))
