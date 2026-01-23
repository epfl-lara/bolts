; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208292 () Bool)

(assert start!208292)

(declare-fun b!2147503 () Bool)

(declare-fun b_free!63365 () Bool)

(declare-fun b_next!64069 () Bool)

(assert (=> b!2147503 (= b_free!63365 (not b_next!64069))))

(declare-fun tp!666246 () Bool)

(declare-fun b_and!172957 () Bool)

(assert (=> b!2147503 (= tp!666246 b_and!172957)))

(declare-fun b!2147508 () Bool)

(declare-fun b_free!63367 () Bool)

(declare-fun b_next!64071 () Bool)

(assert (=> b!2147508 (= b_free!63367 (not b_next!64071))))

(declare-fun tp!666248 () Bool)

(declare-fun b_and!172959 () Bool)

(assert (=> b!2147508 (= tp!666248 b_and!172959)))

(declare-fun b!2147500 () Bool)

(declare-fun e!1372825 () Bool)

(assert (=> b!2147500 (= e!1372825 false)))

(declare-fun b!2147501 () Bool)

(declare-fun res!926454 () Bool)

(assert (=> b!2147501 (=> (not res!926454) (not e!1372825))))

(declare-fun e!1372827 () Bool)

(assert (=> b!2147501 (= res!926454 e!1372827)))

(declare-fun res!926451 () Bool)

(assert (=> b!2147501 (=> res!926451 e!1372827)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!11784 0))(
  ( (C!11785 (val!6878 Int)) )
))
(declare-datatypes ((Regex!5819 0))(
  ( (ElementMatch!5819 (c!340908 C!11784)) (Concat!10121 (regOne!12150 Regex!5819) (regTwo!12150 Regex!5819)) (EmptyExpr!5819) (Star!5819 (reg!6148 Regex!5819)) (EmptyLang!5819) (Union!5819 (regOne!12151 Regex!5819) (regTwo!12151 Regex!5819)) )
))
(declare-datatypes ((List!24614 0))(
  ( (Nil!24530) (Cons!24530 (h!29931 Regex!5819) (t!197150 List!24614)) )
))
(declare-datatypes ((Context!2778 0))(
  ( (Context!2779 (exprs!1889 List!24614)) )
))
(declare-fun z!526 () (InoxSet Context!2778))

(declare-fun nullableZipper!167 ((InoxSet Context!2778)) Bool)

(assert (=> b!2147501 (= res!926451 (not (nullableZipper!167 z!526)))))

(declare-fun b!2147502 () Bool)

(declare-fun e!1372826 () Bool)

(declare-datatypes ((array!9591 0))(
  ( (array!9592 (arr!4284 (Array (_ BitVec 32) (_ BitVec 64))) (size!19210 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3570 0))(
  ( (tuple3!3571 (_1!14451 (InoxSet Context!2778)) (_2!14451 Int) (_3!2255 Int)) )
))
(declare-datatypes ((tuple2!24392 0))(
  ( (tuple2!24393 (_1!14452 tuple3!3570) (_2!14452 Int)) )
))
(declare-datatypes ((List!24615 0))(
  ( (Nil!24531) (Cons!24531 (h!29932 tuple2!24392) (t!197151 List!24615)) )
))
(declare-datatypes ((array!9593 0))(
  ( (array!9594 (arr!4285 (Array (_ BitVec 32) List!24615)) (size!19211 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5688 0))(
  ( (LongMapFixedSize!5689 (defaultEntry!3209 Int) (mask!7069 (_ BitVec 32)) (extraKeys!3092 (_ BitVec 32)) (zeroValue!3102 List!24615) (minValue!3102 List!24615) (_size!5739 (_ BitVec 32)) (_keys!3141 array!9591) (_values!3124 array!9593) (_vacant!2905 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11201 0))(
  ( (Cell!11202 (v!29121 LongMapFixedSize!5688)) )
))
(declare-datatypes ((MutLongMap!2844 0))(
  ( (LongMap!2844 (underlying!5883 Cell!11201)) (MutLongMapExt!2843 (__x!16708 Int)) )
))
(declare-datatypes ((Cell!11203 0))(
  ( (Cell!11204 (v!29122 MutLongMap!2844)) )
))
(declare-datatypes ((List!24616 0))(
  ( (Nil!24532) (Cons!24532 (h!29933 C!11784) (t!197152 List!24616)) )
))
(declare-datatypes ((IArray!15915 0))(
  ( (IArray!15916 (innerList!8015 List!24616)) )
))
(declare-datatypes ((Conc!7955 0))(
  ( (Node!7955 (left!18835 Conc!7955) (right!19165 Conc!7955) (csize!16140 Int) (cheight!8166 Int)) (Leaf!11632 (xs!10897 IArray!15915) (csize!16141 Int)) (Empty!7955) )
))
(declare-datatypes ((Hashable!2758 0))(
  ( (HashableExt!2757 (__x!16709 Int)) )
))
(declare-datatypes ((MutableMap!2758 0))(
  ( (MutableMapExt!2757 (__x!16710 Int)) (HashMap!2758 (underlying!5884 Cell!11203) (hashF!4681 Hashable!2758) (_size!5740 (_ BitVec 32)) (defaultValue!2920 Int)) )
))
(declare-datatypes ((BalanceConc!15672 0))(
  ( (BalanceConc!15673 (c!340909 Conc!7955)) )
))
(declare-datatypes ((CacheFurthestNullable!874 0))(
  ( (CacheFurthestNullable!875 (cache!3139 MutableMap!2758) (totalInput!3199 BalanceConc!15672)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!874)

(declare-fun tp!666244 () Bool)

(declare-fun inv!32277 (Conc!7955) Bool)

(assert (=> b!2147502 (= e!1372826 (and (inv!32277 (c!340909 (totalInput!3199 thiss!29173))) tp!666244))))

(declare-fun e!1372821 () Bool)

(declare-fun e!1372818 () Bool)

(declare-fun tp!666249 () Bool)

(declare-fun tp!666243 () Bool)

(declare-fun array_inv!3068 (array!9591) Bool)

(declare-fun array_inv!3069 (array!9593) Bool)

(assert (=> b!2147503 (= e!1372818 (and tp!666246 tp!666243 tp!666249 (array_inv!3068 (_keys!3141 (v!29121 (underlying!5883 (v!29122 (underlying!5884 (cache!3139 thiss!29173))))))) (array_inv!3069 (_values!3124 (v!29121 (underlying!5883 (v!29122 (underlying!5884 (cache!3139 thiss!29173))))))) e!1372821))))

(declare-fun b!2147504 () Bool)

(declare-fun e!1372816 () Bool)

(assert (=> b!2147504 (= e!1372816 e!1372818)))

(declare-fun b!2147505 () Bool)

(declare-fun e!1372823 () Bool)

(declare-fun tp!666247 () Bool)

(assert (=> b!2147505 (= e!1372823 tp!666247)))

(declare-fun b!2147506 () Bool)

(declare-fun lastNullablePos!99 () Int)

(declare-fun from!960 () Int)

(assert (=> b!2147506 (= e!1372827 (= lastNullablePos!99 (- from!960 1)))))

(declare-fun mapIsEmpty!13502 () Bool)

(declare-fun mapRes!13502 () Bool)

(assert (=> mapIsEmpty!13502 mapRes!13502))

(declare-fun b!2147507 () Bool)

(declare-fun e!1372822 () Bool)

(declare-fun e!1372820 () Bool)

(declare-fun lt!799626 () MutLongMap!2844)

(get-info :version)

(assert (=> b!2147507 (= e!1372822 (and e!1372820 ((_ is LongMap!2844) lt!799626)))))

(assert (=> b!2147507 (= lt!799626 (v!29122 (underlying!5884 (cache!3139 thiss!29173))))))

(declare-fun e!1372817 () Bool)

(assert (=> b!2147508 (= e!1372817 (and e!1372822 tp!666248))))

(declare-fun setIsEmpty!16891 () Bool)

(declare-fun setRes!16891 () Bool)

(assert (=> setIsEmpty!16891 setRes!16891))

(declare-fun b!2147509 () Bool)

(assert (=> b!2147509 (= e!1372820 e!1372816)))

(declare-fun b!2147510 () Bool)

(declare-fun tp!666250 () Bool)

(assert (=> b!2147510 (= e!1372821 (and tp!666250 mapRes!13502))))

(declare-fun condMapEmpty!13502 () Bool)

(declare-fun mapDefault!13502 () List!24615)

(assert (=> b!2147510 (= condMapEmpty!13502 (= (arr!4285 (_values!3124 (v!29121 (underlying!5883 (v!29122 (underlying!5884 (cache!3139 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24615)) mapDefault!13502)))))

(declare-fun setNonEmpty!16891 () Bool)

(declare-fun setElem!16891 () Context!2778)

(declare-fun tp!666242 () Bool)

(declare-fun inv!32278 (Context!2778) Bool)

(assert (=> setNonEmpty!16891 (= setRes!16891 (and tp!666242 (inv!32278 setElem!16891) e!1372823))))

(declare-fun setRest!16891 () (InoxSet Context!2778))

(assert (=> setNonEmpty!16891 (= z!526 ((_ map or) (store ((as const (Array Context!2778 Bool)) false) setElem!16891 true) setRest!16891))))

(declare-fun res!926453 () Bool)

(assert (=> start!208292 (=> (not res!926453) (not e!1372825))))

(assert (=> start!208292 (= res!926453 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208292 e!1372825))

(assert (=> start!208292 true))

(declare-fun condSetEmpty!16891 () Bool)

(assert (=> start!208292 (= condSetEmpty!16891 (= z!526 ((as const (Array Context!2778 Bool)) false)))))

(assert (=> start!208292 setRes!16891))

(declare-fun e!1372824 () Bool)

(declare-fun inv!32279 (CacheFurthestNullable!874) Bool)

(assert (=> start!208292 (and (inv!32279 thiss!29173) e!1372824)))

(declare-fun b!2147511 () Bool)

(declare-fun inv!32280 (BalanceConc!15672) Bool)

(assert (=> b!2147511 (= e!1372824 (and e!1372817 (inv!32280 (totalInput!3199 thiss!29173)) e!1372826))))

(declare-fun b!2147512 () Bool)

(declare-fun res!926450 () Bool)

(assert (=> b!2147512 (=> (not res!926450) (not e!1372825))))

(declare-fun validCacheMapFurthestNullable!121 (MutableMap!2758 BalanceConc!15672) Bool)

(assert (=> b!2147512 (= res!926450 (validCacheMapFurthestNullable!121 (cache!3139 thiss!29173) (totalInput!3199 thiss!29173)))))

(declare-fun b!2147513 () Bool)

(declare-fun res!926452 () Bool)

(assert (=> b!2147513 (=> (not res!926452) (not e!1372825))))

(declare-fun contains!4176 (MutableMap!2758 tuple3!3570) Bool)

(assert (=> b!2147513 (= res!926452 (not (contains!4176 (cache!3139 thiss!29173) (tuple3!3571 z!526 from!960 lastNullablePos!99))))))

(declare-fun mapNonEmpty!13502 () Bool)

(declare-fun tp!666245 () Bool)

(declare-fun tp!666251 () Bool)

(assert (=> mapNonEmpty!13502 (= mapRes!13502 (and tp!666245 tp!666251))))

(declare-fun mapKey!13502 () (_ BitVec 32))

(declare-fun mapValue!13502 () List!24615)

(declare-fun mapRest!13502 () (Array (_ BitVec 32) List!24615))

(assert (=> mapNonEmpty!13502 (= (arr!4285 (_values!3124 (v!29121 (underlying!5883 (v!29122 (underlying!5884 (cache!3139 thiss!29173))))))) (store mapRest!13502 mapKey!13502 mapValue!13502))))

(assert (= (and start!208292 res!926453) b!2147501))

(assert (= (and b!2147501 (not res!926451)) b!2147506))

(assert (= (and b!2147501 res!926454) b!2147512))

(assert (= (and b!2147512 res!926450) b!2147513))

(assert (= (and b!2147513 res!926452) b!2147500))

(assert (= (and start!208292 condSetEmpty!16891) setIsEmpty!16891))

(assert (= (and start!208292 (not condSetEmpty!16891)) setNonEmpty!16891))

(assert (= setNonEmpty!16891 b!2147505))

(assert (= (and b!2147510 condMapEmpty!13502) mapIsEmpty!13502))

(assert (= (and b!2147510 (not condMapEmpty!13502)) mapNonEmpty!13502))

(assert (= b!2147503 b!2147510))

(assert (= b!2147504 b!2147503))

(assert (= b!2147509 b!2147504))

(assert (= (and b!2147507 ((_ is LongMap!2844) (v!29122 (underlying!5884 (cache!3139 thiss!29173))))) b!2147509))

(assert (= b!2147508 b!2147507))

(assert (= (and b!2147511 ((_ is HashMap!2758) (cache!3139 thiss!29173))) b!2147508))

(assert (= b!2147511 b!2147502))

(assert (= start!208292 b!2147511))

(declare-fun m!2590888 () Bool)

(assert (=> mapNonEmpty!13502 m!2590888))

(declare-fun m!2590890 () Bool)

(assert (=> setNonEmpty!16891 m!2590890))

(declare-fun m!2590892 () Bool)

(assert (=> b!2147512 m!2590892))

(declare-fun m!2590894 () Bool)

(assert (=> b!2147502 m!2590894))

(declare-fun m!2590896 () Bool)

(assert (=> b!2147511 m!2590896))

(declare-fun m!2590898 () Bool)

(assert (=> b!2147503 m!2590898))

(declare-fun m!2590900 () Bool)

(assert (=> b!2147503 m!2590900))

(declare-fun m!2590902 () Bool)

(assert (=> start!208292 m!2590902))

(declare-fun m!2590904 () Bool)

(assert (=> b!2147501 m!2590904))

(declare-fun m!2590906 () Bool)

(assert (=> b!2147513 m!2590906))

(check-sat (not b!2147513) (not b!2147501) (not b!2147511) (not b_next!64071) (not b!2147503) (not b_next!64069) b_and!172959 b_and!172957 (not start!208292) (not mapNonEmpty!13502) (not b!2147502) (not b!2147505) (not b!2147510) (not b!2147512) (not setNonEmpty!16891))
(check-sat b_and!172959 b_and!172957 (not b_next!64071) (not b_next!64069))
