; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208342 () Bool)

(assert start!208342)

(declare-fun b!2148122 () Bool)

(declare-fun b_free!63405 () Bool)

(declare-fun b_next!64109 () Bool)

(assert (=> b!2148122 (= b_free!63405 (not b_next!64109))))

(declare-fun tp!666604 () Bool)

(declare-fun b_and!173001 () Bool)

(assert (=> b!2148122 (= tp!666604 b_and!173001)))

(declare-fun b!2148118 () Bool)

(declare-fun b_free!63407 () Bool)

(declare-fun b_next!64111 () Bool)

(assert (=> b!2148118 (= b_free!63407 (not b_next!64111))))

(declare-fun tp!666602 () Bool)

(declare-fun b_and!173003 () Bool)

(assert (=> b!2148118 (= tp!666602 b_and!173003)))

(declare-fun b!2148110 () Bool)

(declare-fun e!1373302 () Bool)

(declare-fun e!1373313 () Bool)

(assert (=> b!2148110 (= e!1373302 e!1373313)))

(declare-fun b!2148111 () Bool)

(declare-fun e!1373307 () Bool)

(declare-fun tp!666608 () Bool)

(declare-fun mapRes!13535 () Bool)

(assert (=> b!2148111 (= e!1373307 (and tp!666608 mapRes!13535))))

(declare-fun condMapEmpty!13535 () Bool)

(declare-datatypes ((array!9633 0))(
  ( (array!9634 (arr!4304 (Array (_ BitVec 32) (_ BitVec 64))) (size!19239 (_ BitVec 32))) )
))
(declare-datatypes ((C!11804 0))(
  ( (C!11805 (val!6888 Int)) )
))
(declare-datatypes ((Regex!5829 0))(
  ( (ElementMatch!5829 (c!340962 C!11804)) (Concat!10131 (regOne!12170 Regex!5829) (regTwo!12170 Regex!5829)) (EmptyExpr!5829) (Star!5829 (reg!6158 Regex!5829)) (EmptyLang!5829) (Union!5829 (regOne!12171 Regex!5829) (regTwo!12171 Regex!5829)) )
))
(declare-datatypes ((List!24645 0))(
  ( (Nil!24561) (Cons!24561 (h!29962 Regex!5829) (t!197183 List!24645)) )
))
(declare-datatypes ((Context!2798 0))(
  ( (Context!2799 (exprs!1899 List!24645)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3590 0))(
  ( (tuple3!3591 (_1!14472 (InoxSet Context!2798)) (_2!14472 Int) (_3!2265 Int)) )
))
(declare-datatypes ((tuple2!24414 0))(
  ( (tuple2!24415 (_1!14473 tuple3!3590) (_2!14473 Int)) )
))
(declare-datatypes ((List!24646 0))(
  ( (Nil!24562) (Cons!24562 (h!29963 tuple2!24414) (t!197184 List!24646)) )
))
(declare-datatypes ((array!9635 0))(
  ( (array!9636 (arr!4305 (Array (_ BitVec 32) List!24646)) (size!19240 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5708 0))(
  ( (LongMapFixedSize!5709 (defaultEntry!3219 Int) (mask!7084 (_ BitVec 32)) (extraKeys!3102 (_ BitVec 32)) (zeroValue!3112 List!24646) (minValue!3112 List!24646) (_size!5759 (_ BitVec 32)) (_keys!3151 array!9633) (_values!3134 array!9635) (_vacant!2915 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11241 0))(
  ( (Cell!11242 (v!29145 LongMapFixedSize!5708)) )
))
(declare-datatypes ((MutLongMap!2854 0))(
  ( (LongMap!2854 (underlying!5903 Cell!11241)) (MutLongMapExt!2853 (__x!16738 Int)) )
))
(declare-datatypes ((Cell!11243 0))(
  ( (Cell!11244 (v!29146 MutLongMap!2854)) )
))
(declare-datatypes ((List!24647 0))(
  ( (Nil!24563) (Cons!24563 (h!29964 C!11804) (t!197185 List!24647)) )
))
(declare-datatypes ((IArray!15935 0))(
  ( (IArray!15936 (innerList!8025 List!24647)) )
))
(declare-datatypes ((Conc!7965 0))(
  ( (Node!7965 (left!18852 Conc!7965) (right!19182 Conc!7965) (csize!16160 Int) (cheight!8176 Int)) (Leaf!11647 (xs!10907 IArray!15935) (csize!16161 Int)) (Empty!7965) )
))
(declare-datatypes ((Hashable!2768 0))(
  ( (HashableExt!2767 (__x!16739 Int)) )
))
(declare-datatypes ((MutableMap!2768 0))(
  ( (MutableMapExt!2767 (__x!16740 Int)) (HashMap!2768 (underlying!5904 Cell!11243) (hashF!4691 Hashable!2768) (_size!5760 (_ BitVec 32)) (defaultValue!2930 Int)) )
))
(declare-datatypes ((BalanceConc!15692 0))(
  ( (BalanceConc!15693 (c!340963 Conc!7965)) )
))
(declare-datatypes ((CacheFurthestNullable!894 0))(
  ( (CacheFurthestNullable!895 (cache!3149 MutableMap!2768) (totalInput!3211 BalanceConc!15692)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!894)

(declare-fun mapDefault!13535 () List!24646)

(assert (=> b!2148111 (= condMapEmpty!13535 (= (arr!4305 (_values!3134 (v!29145 (underlying!5903 (v!29146 (underlying!5904 (cache!3149 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24646)) mapDefault!13535)))))

(declare-fun b!2148112 () Bool)

(declare-fun res!926679 () Bool)

(declare-fun e!1373303 () Bool)

(assert (=> b!2148112 (=> (not res!926679) (not e!1373303))))

(declare-fun lastNullablePos!99 () Int)

(declare-fun from!960 () Int)

(declare-fun z!526 () (InoxSet Context!2798))

(declare-fun contains!4189 (MutableMap!2768 tuple3!3590) Bool)

(assert (=> b!2148112 (= res!926679 (not (contains!4189 (cache!3149 thiss!29173) (tuple3!3591 z!526 from!960 lastNullablePos!99))))))

(declare-fun b!2148114 () Bool)

(declare-fun res!926675 () Bool)

(assert (=> b!2148114 (=> (not res!926675) (not e!1373303))))

(declare-fun validCacheMapFurthestNullable!129 (MutableMap!2768 BalanceConc!15692) Bool)

(assert (=> b!2148114 (= res!926675 (validCacheMapFurthestNullable!129 (cache!3149 thiss!29173) (totalInput!3211 thiss!29173)))))

(declare-fun setIsEmpty!16936 () Bool)

(declare-fun setRes!16936 () Bool)

(assert (=> setIsEmpty!16936 setRes!16936))

(declare-fun b!2148115 () Bool)

(declare-fun res!926676 () Bool)

(assert (=> b!2148115 (=> (not res!926676) (not e!1373303))))

(declare-fun e!1373306 () Bool)

(assert (=> b!2148115 (= res!926676 e!1373306)))

(declare-fun res!926677 () Bool)

(assert (=> b!2148115 (=> res!926677 e!1373306)))

(declare-fun nullableZipper!174 ((InoxSet Context!2798)) Bool)

(assert (=> b!2148115 (= res!926677 (not (nullableZipper!174 z!526)))))

(declare-fun e!1373309 () Bool)

(declare-fun e!1373304 () Bool)

(declare-fun b!2148116 () Bool)

(declare-fun e!1373310 () Bool)

(declare-fun inv!32325 (BalanceConc!15692) Bool)

(assert (=> b!2148116 (= e!1373304 (and e!1373310 (inv!32325 (totalInput!3211 thiss!29173)) e!1373309))))

(declare-fun b!2148117 () Bool)

(declare-fun e!1373305 () Bool)

(declare-fun lt!799868 () MutLongMap!2854)

(get-info :version)

(assert (=> b!2148117 (= e!1373305 (and e!1373302 ((_ is LongMap!2854) lt!799868)))))

(assert (=> b!2148117 (= lt!799868 (v!29146 (underlying!5904 (cache!3149 thiss!29173))))))

(assert (=> b!2148118 (= e!1373310 (and e!1373305 tp!666602))))

(declare-fun b!2148119 () Bool)

(declare-fun tp!666605 () Bool)

(declare-fun inv!32326 (Conc!7965) Bool)

(assert (=> b!2148119 (= e!1373309 (and (inv!32326 (c!340963 (totalInput!3211 thiss!29173))) tp!666605))))

(declare-fun b!2148120 () Bool)

(declare-fun e!1373308 () Bool)

(assert (=> b!2148120 (= e!1373313 e!1373308)))

(declare-fun setElem!16936 () Context!2798)

(declare-fun tp!666607 () Bool)

(declare-fun setNonEmpty!16936 () Bool)

(declare-fun e!1373312 () Bool)

(declare-fun inv!32327 (Context!2798) Bool)

(assert (=> setNonEmpty!16936 (= setRes!16936 (and tp!666607 (inv!32327 setElem!16936) e!1373312))))

(declare-fun setRest!16936 () (InoxSet Context!2798))

(assert (=> setNonEmpty!16936 (= z!526 ((_ map or) (store ((as const (Array Context!2798 Bool)) false) setElem!16936 true) setRest!16936))))

(declare-fun b!2148113 () Bool)

(assert (=> b!2148113 (= e!1373306 (= lastNullablePos!99 (- from!960 1)))))

(declare-fun res!926678 () Bool)

(assert (=> start!208342 (=> (not res!926678) (not e!1373303))))

(assert (=> start!208342 (= res!926678 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208342 e!1373303))

(assert (=> start!208342 true))

(declare-fun condSetEmpty!16936 () Bool)

(assert (=> start!208342 (= condSetEmpty!16936 (= z!526 ((as const (Array Context!2798 Bool)) false)))))

(assert (=> start!208342 setRes!16936))

(declare-fun inv!32328 (CacheFurthestNullable!894) Bool)

(assert (=> start!208342 (and (inv!32328 thiss!29173) e!1373304)))

(declare-fun b!2148121 () Bool)

(declare-fun res!926680 () Bool)

(assert (=> b!2148121 (=> (not res!926680) (not e!1373303))))

(assert (=> b!2148121 (= res!926680 false)))

(declare-fun tp!666603 () Bool)

(declare-fun tp!666611 () Bool)

(declare-fun array_inv!3082 (array!9633) Bool)

(declare-fun array_inv!3083 (array!9635) Bool)

(assert (=> b!2148122 (= e!1373308 (and tp!666604 tp!666611 tp!666603 (array_inv!3082 (_keys!3151 (v!29145 (underlying!5903 (v!29146 (underlying!5904 (cache!3149 thiss!29173))))))) (array_inv!3083 (_values!3134 (v!29145 (underlying!5903 (v!29146 (underlying!5904 (cache!3149 thiss!29173))))))) e!1373307))))

(declare-fun b!2148123 () Bool)

(declare-fun tp!666609 () Bool)

(assert (=> b!2148123 (= e!1373312 tp!666609)))

(declare-fun mapNonEmpty!13535 () Bool)

(declare-fun tp!666610 () Bool)

(declare-fun tp!666606 () Bool)

(assert (=> mapNonEmpty!13535 (= mapRes!13535 (and tp!666610 tp!666606))))

(declare-fun mapValue!13535 () List!24646)

(declare-fun mapKey!13535 () (_ BitVec 32))

(declare-fun mapRest!13535 () (Array (_ BitVec 32) List!24646))

(assert (=> mapNonEmpty!13535 (= (arr!4305 (_values!3134 (v!29145 (underlying!5903 (v!29146 (underlying!5904 (cache!3149 thiss!29173))))))) (store mapRest!13535 mapKey!13535 mapValue!13535))))

(declare-fun mapIsEmpty!13535 () Bool)

(assert (=> mapIsEmpty!13535 mapRes!13535))

(declare-fun b!2148124 () Bool)

(declare-datatypes ((Option!4973 0))(
  ( (None!4972) (Some!4972 (v!29147 Int)) )
))
(declare-fun get!7489 (Option!4973) Int)

(declare-fun furthestNullablePosition!105 ((InoxSet Context!2798) Int BalanceConc!15692 Int Int) Int)

(declare-fun size!19241 (BalanceConc!15692) Int)

(assert (=> b!2148124 (= e!1373303 (not (= (get!7489 None!4972) (furthestNullablePosition!105 z!526 from!960 (totalInput!3211 thiss!29173) (size!19241 (totalInput!3211 thiss!29173)) lastNullablePos!99))))))

(assert (= (and start!208342 res!926678) b!2148115))

(assert (= (and b!2148115 (not res!926677)) b!2148113))

(assert (= (and b!2148115 res!926676) b!2148114))

(assert (= (and b!2148114 res!926675) b!2148112))

(assert (= (and b!2148112 res!926679) b!2148121))

(assert (= (and b!2148121 res!926680) b!2148124))

(assert (= (and start!208342 condSetEmpty!16936) setIsEmpty!16936))

(assert (= (and start!208342 (not condSetEmpty!16936)) setNonEmpty!16936))

(assert (= setNonEmpty!16936 b!2148123))

(assert (= (and b!2148111 condMapEmpty!13535) mapIsEmpty!13535))

(assert (= (and b!2148111 (not condMapEmpty!13535)) mapNonEmpty!13535))

(assert (= b!2148122 b!2148111))

(assert (= b!2148120 b!2148122))

(assert (= b!2148110 b!2148120))

(assert (= (and b!2148117 ((_ is LongMap!2854) (v!29146 (underlying!5904 (cache!3149 thiss!29173))))) b!2148110))

(assert (= b!2148118 b!2148117))

(assert (= (and b!2148116 ((_ is HashMap!2768) (cache!3149 thiss!29173))) b!2148118))

(assert (= b!2148116 b!2148119))

(assert (= start!208342 b!2148116))

(declare-fun m!2591311 () Bool)

(assert (=> b!2148124 m!2591311))

(declare-fun m!2591313 () Bool)

(assert (=> b!2148124 m!2591313))

(assert (=> b!2148124 m!2591313))

(declare-fun m!2591315 () Bool)

(assert (=> b!2148124 m!2591315))

(declare-fun m!2591317 () Bool)

(assert (=> b!2148116 m!2591317))

(declare-fun m!2591319 () Bool)

(assert (=> b!2148122 m!2591319))

(declare-fun m!2591321 () Bool)

(assert (=> b!2148122 m!2591321))

(declare-fun m!2591323 () Bool)

(assert (=> setNonEmpty!16936 m!2591323))

(declare-fun m!2591325 () Bool)

(assert (=> b!2148115 m!2591325))

(declare-fun m!2591327 () Bool)

(assert (=> start!208342 m!2591327))

(declare-fun m!2591329 () Bool)

(assert (=> b!2148119 m!2591329))

(declare-fun m!2591331 () Bool)

(assert (=> b!2148114 m!2591331))

(declare-fun m!2591333 () Bool)

(assert (=> b!2148112 m!2591333))

(declare-fun m!2591335 () Bool)

(assert (=> mapNonEmpty!13535 m!2591335))

(check-sat (not setNonEmpty!16936) (not b!2148116) (not start!208342) (not b!2148115) b_and!173003 (not b!2148114) (not b_next!64111) (not b_next!64109) (not mapNonEmpty!13535) (not b!2148119) (not b!2148112) b_and!173001 (not b!2148124) (not b!2148111) (not b!2148122) (not b!2148123))
(check-sat b_and!173003 b_and!173001 (not b_next!64111) (not b_next!64109))
