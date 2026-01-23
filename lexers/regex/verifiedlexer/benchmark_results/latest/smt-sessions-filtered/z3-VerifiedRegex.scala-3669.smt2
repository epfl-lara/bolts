; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208180 () Bool)

(assert start!208180)

(declare-fun b!2146376 () Bool)

(declare-fun b_free!63309 () Bool)

(declare-fun b_next!64013 () Bool)

(assert (=> b!2146376 (= b_free!63309 (not b_next!64013))))

(declare-fun tp!665645 () Bool)

(declare-fun b_and!172889 () Bool)

(assert (=> b!2146376 (= tp!665645 b_and!172889)))

(declare-fun b!2146381 () Bool)

(declare-fun b_free!63311 () Bool)

(declare-fun b_next!64015 () Bool)

(assert (=> b!2146381 (= b_free!63311 (not b_next!64015))))

(declare-fun tp!665648 () Bool)

(declare-fun b_and!172891 () Bool)

(assert (=> b!2146381 (= tp!665648 b_and!172891)))

(declare-fun mapIsEmpty!13451 () Bool)

(declare-fun mapRes!13451 () Bool)

(assert (=> mapIsEmpty!13451 mapRes!13451))

(declare-fun b!2146373 () Bool)

(declare-fun e!1371890 () Bool)

(declare-fun lastNullablePos!99 () Int)

(declare-fun from!960 () Int)

(assert (=> b!2146373 (= e!1371890 (= lastNullablePos!99 (- from!960 1)))))

(declare-fun b!2146374 () Bool)

(declare-fun e!1371889 () Bool)

(declare-fun e!1371887 () Bool)

(declare-datatypes ((C!11756 0))(
  ( (C!11757 (val!6864 Int)) )
))
(declare-datatypes ((Regex!5805 0))(
  ( (ElementMatch!5805 (c!340784 C!11756)) (Concat!10107 (regOne!12122 Regex!5805) (regTwo!12122 Regex!5805)) (EmptyExpr!5805) (Star!5805 (reg!6134 Regex!5805)) (EmptyLang!5805) (Union!5805 (regOne!12123 Regex!5805) (regTwo!12123 Regex!5805)) )
))
(declare-datatypes ((List!24569 0))(
  ( (Nil!24485) (Cons!24485 (h!29886 Regex!5805) (t!197099 List!24569)) )
))
(declare-datatypes ((Context!2750 0))(
  ( (Context!2751 (exprs!1875 List!24569)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3542 0))(
  ( (tuple3!3543 (_1!14420 (InoxSet Context!2750)) (_2!14420 Int) (_3!2241 Int)) )
))
(declare-datatypes ((tuple2!24358 0))(
  ( (tuple2!24359 (_1!14421 tuple3!3542) (_2!14421 Int)) )
))
(declare-datatypes ((List!24570 0))(
  ( (Nil!24486) (Cons!24486 (h!29887 tuple2!24358) (t!197100 List!24570)) )
))
(declare-datatypes ((array!9529 0))(
  ( (array!9530 (arr!4256 (Array (_ BitVec 32) (_ BitVec 64))) (size!19167 (_ BitVec 32))) )
))
(declare-datatypes ((array!9531 0))(
  ( (array!9532 (arr!4257 (Array (_ BitVec 32) List!24570)) (size!19168 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5660 0))(
  ( (LongMapFixedSize!5661 (defaultEntry!3195 Int) (mask!7048 (_ BitVec 32)) (extraKeys!3078 (_ BitVec 32)) (zeroValue!3088 List!24570) (minValue!3088 List!24570) (_size!5711 (_ BitVec 32)) (_keys!3127 array!9529) (_values!3110 array!9531) (_vacant!2891 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11145 0))(
  ( (Cell!11146 (v!29079 LongMapFixedSize!5660)) )
))
(declare-datatypes ((MutLongMap!2830 0))(
  ( (LongMap!2830 (underlying!5855 Cell!11145)) (MutLongMapExt!2829 (__x!16666 Int)) )
))
(declare-fun lt!798959 () MutLongMap!2830)

(get-info :version)

(assert (=> b!2146374 (= e!1371889 (and e!1371887 ((_ is LongMap!2830) lt!798959)))))

(declare-datatypes ((Cell!11147 0))(
  ( (Cell!11148 (v!29080 MutLongMap!2830)) )
))
(declare-datatypes ((List!24571 0))(
  ( (Nil!24487) (Cons!24487 (h!29888 C!11756) (t!197101 List!24571)) )
))
(declare-datatypes ((IArray!15887 0))(
  ( (IArray!15888 (innerList!8001 List!24571)) )
))
(declare-datatypes ((Conc!7941 0))(
  ( (Node!7941 (left!18808 Conc!7941) (right!19138 Conc!7941) (csize!16112 Int) (cheight!8152 Int)) (Leaf!11611 (xs!10883 IArray!15887) (csize!16113 Int)) (Empty!7941) )
))
(declare-datatypes ((Hashable!2744 0))(
  ( (HashableExt!2743 (__x!16667 Int)) )
))
(declare-datatypes ((MutableMap!2744 0))(
  ( (MutableMapExt!2743 (__x!16668 Int)) (HashMap!2744 (underlying!5856 Cell!11147) (hashF!4667 Hashable!2744) (_size!5712 (_ BitVec 32)) (defaultValue!2906 Int)) )
))
(declare-datatypes ((BalanceConc!15644 0))(
  ( (BalanceConc!15645 (c!340785 Conc!7941)) )
))
(declare-datatypes ((CacheFurthestNullable!846 0))(
  ( (CacheFurthestNullable!847 (cache!3125 MutableMap!2744) (totalInput!3179 BalanceConc!15644)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!846)

(assert (=> b!2146374 (= lt!798959 (v!29080 (underlying!5856 (cache!3125 thiss!29173))))))

(declare-fun res!926034 () Bool)

(declare-fun e!1371896 () Bool)

(assert (=> start!208180 (=> (not res!926034) (not e!1371896))))

(assert (=> start!208180 (= res!926034 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208180 e!1371896))

(assert (=> start!208180 true))

(declare-fun condSetEmpty!16804 () Bool)

(declare-fun z!526 () (InoxSet Context!2750))

(assert (=> start!208180 (= condSetEmpty!16804 (= z!526 ((as const (Array Context!2750 Bool)) false)))))

(declare-fun setRes!16804 () Bool)

(assert (=> start!208180 setRes!16804))

(declare-fun e!1371891 () Bool)

(declare-fun inv!32206 (CacheFurthestNullable!846) Bool)

(assert (=> start!208180 (and (inv!32206 thiss!29173) e!1371891)))

(declare-fun b!2146375 () Bool)

(declare-fun e!1371886 () Bool)

(declare-fun tp!665651 () Bool)

(declare-fun inv!32207 (Conc!7941) Bool)

(assert (=> b!2146375 (= e!1371886 (and (inv!32207 (c!340785 (totalInput!3179 thiss!29173))) tp!665651))))

(declare-fun e!1371894 () Bool)

(assert (=> b!2146376 (= e!1371894 (and e!1371889 tp!665645))))

(declare-fun setIsEmpty!16804 () Bool)

(assert (=> setIsEmpty!16804 setRes!16804))

(declare-fun b!2146377 () Bool)

(declare-fun res!926035 () Bool)

(assert (=> b!2146377 (=> (not res!926035) (not e!1371896))))

(declare-fun validCacheMapFurthestNullable!112 (MutableMap!2744 BalanceConc!15644) Bool)

(assert (=> b!2146377 (= res!926035 (validCacheMapFurthestNullable!112 (cache!3125 thiss!29173) (totalInput!3179 thiss!29173)))))

(declare-fun b!2146378 () Bool)

(declare-fun e!1371892 () Bool)

(declare-fun e!1371897 () Bool)

(assert (=> b!2146378 (= e!1371892 e!1371897)))

(declare-fun b!2146379 () Bool)

(declare-fun e!1371893 () Bool)

(declare-fun tp!665643 () Bool)

(assert (=> b!2146379 (= e!1371893 (and tp!665643 mapRes!13451))))

(declare-fun condMapEmpty!13451 () Bool)

(declare-fun mapDefault!13451 () List!24570)

(assert (=> b!2146379 (= condMapEmpty!13451 (= (arr!4257 (_values!3110 (v!29079 (underlying!5855 (v!29080 (underlying!5856 (cache!3125 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24570)) mapDefault!13451)))))

(declare-fun mapNonEmpty!13451 () Bool)

(declare-fun tp!665642 () Bool)

(declare-fun tp!665644 () Bool)

(assert (=> mapNonEmpty!13451 (= mapRes!13451 (and tp!665642 tp!665644))))

(declare-fun mapRest!13451 () (Array (_ BitVec 32) List!24570))

(declare-fun mapValue!13451 () List!24570)

(declare-fun mapKey!13451 () (_ BitVec 32))

(assert (=> mapNonEmpty!13451 (= (arr!4257 (_values!3110 (v!29079 (underlying!5855 (v!29080 (underlying!5856 (cache!3125 thiss!29173))))))) (store mapRest!13451 mapKey!13451 mapValue!13451))))

(declare-fun b!2146380 () Bool)

(declare-fun res!926037 () Bool)

(assert (=> b!2146380 (=> (not res!926037) (not e!1371896))))

(assert (=> b!2146380 (= res!926037 e!1371890)))

(declare-fun res!926036 () Bool)

(assert (=> b!2146380 (=> res!926036 e!1371890)))

(declare-fun nullableZipper!156 ((InoxSet Context!2750)) Bool)

(assert (=> b!2146380 (= res!926036 (not (nullableZipper!156 z!526)))))

(declare-fun tp!665646 () Bool)

(declare-fun tp!665649 () Bool)

(declare-fun array_inv!3046 (array!9529) Bool)

(declare-fun array_inv!3047 (array!9531) Bool)

(assert (=> b!2146381 (= e!1371897 (and tp!665648 tp!665649 tp!665646 (array_inv!3046 (_keys!3127 (v!29079 (underlying!5855 (v!29080 (underlying!5856 (cache!3125 thiss!29173))))))) (array_inv!3047 (_values!3110 (v!29079 (underlying!5855 (v!29080 (underlying!5856 (cache!3125 thiss!29173))))))) e!1371893))))

(declare-fun b!2146382 () Bool)

(declare-fun e!1371895 () Bool)

(declare-fun tp!665647 () Bool)

(assert (=> b!2146382 (= e!1371895 tp!665647)))

(declare-fun b!2146383 () Bool)

(assert (=> b!2146383 (= e!1371887 e!1371892)))

(declare-fun tp!665650 () Bool)

(declare-fun setNonEmpty!16804 () Bool)

(declare-fun setElem!16804 () Context!2750)

(declare-fun inv!32208 (Context!2750) Bool)

(assert (=> setNonEmpty!16804 (= setRes!16804 (and tp!665650 (inv!32208 setElem!16804) e!1371895))))

(declare-fun setRest!16804 () (InoxSet Context!2750))

(assert (=> setNonEmpty!16804 (= z!526 ((_ map or) (store ((as const (Array Context!2750 Bool)) false) setElem!16804 true) setRest!16804))))

(declare-fun b!2146384 () Bool)

(declare-fun inv!32209 (BalanceConc!15644) Bool)

(assert (=> b!2146384 (= e!1371891 (and e!1371894 (inv!32209 (totalInput!3179 thiss!29173)) e!1371886))))

(declare-fun b!2146385 () Bool)

(assert (=> b!2146385 (= e!1371896 false)))

(declare-fun lt!798960 () Bool)

(declare-fun contains!4153 (MutableMap!2744 tuple3!3542) Bool)

(assert (=> b!2146385 (= lt!798960 (contains!4153 (cache!3125 thiss!29173) (tuple3!3543 z!526 from!960 lastNullablePos!99)))))

(assert (= (and start!208180 res!926034) b!2146380))

(assert (= (and b!2146380 (not res!926036)) b!2146373))

(assert (= (and b!2146380 res!926037) b!2146377))

(assert (= (and b!2146377 res!926035) b!2146385))

(assert (= (and start!208180 condSetEmpty!16804) setIsEmpty!16804))

(assert (= (and start!208180 (not condSetEmpty!16804)) setNonEmpty!16804))

(assert (= setNonEmpty!16804 b!2146382))

(assert (= (and b!2146379 condMapEmpty!13451) mapIsEmpty!13451))

(assert (= (and b!2146379 (not condMapEmpty!13451)) mapNonEmpty!13451))

(assert (= b!2146381 b!2146379))

(assert (= b!2146378 b!2146381))

(assert (= b!2146383 b!2146378))

(assert (= (and b!2146374 ((_ is LongMap!2830) (v!29080 (underlying!5856 (cache!3125 thiss!29173))))) b!2146383))

(assert (= b!2146376 b!2146374))

(assert (= (and b!2146384 ((_ is HashMap!2744) (cache!3125 thiss!29173))) b!2146376))

(assert (= b!2146384 b!2146375))

(assert (= start!208180 b!2146384))

(declare-fun m!2589959 () Bool)

(assert (=> b!2146380 m!2589959))

(declare-fun m!2589961 () Bool)

(assert (=> b!2146381 m!2589961))

(declare-fun m!2589963 () Bool)

(assert (=> b!2146381 m!2589963))

(declare-fun m!2589965 () Bool)

(assert (=> mapNonEmpty!13451 m!2589965))

(declare-fun m!2589967 () Bool)

(assert (=> setNonEmpty!16804 m!2589967))

(declare-fun m!2589969 () Bool)

(assert (=> b!2146385 m!2589969))

(declare-fun m!2589971 () Bool)

(assert (=> b!2146375 m!2589971))

(declare-fun m!2589973 () Bool)

(assert (=> start!208180 m!2589973))

(declare-fun m!2589975 () Bool)

(assert (=> b!2146384 m!2589975))

(declare-fun m!2589977 () Bool)

(assert (=> b!2146377 m!2589977))

(check-sat (not b!2146384) (not b!2146380) b_and!172889 (not b!2146377) (not b!2146379) (not b_next!64015) (not b!2146381) (not b!2146382) (not setNonEmpty!16804) b_and!172891 (not b!2146375) (not b_next!64013) (not mapNonEmpty!13451) (not start!208180) (not b!2146385))
(check-sat b_and!172889 b_and!172891 (not b_next!64013) (not b_next!64015))
