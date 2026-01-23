; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208296 () Bool)

(assert start!208296)

(declare-fun b!2147596 () Bool)

(declare-fun b_free!63373 () Bool)

(declare-fun b_next!64077 () Bool)

(assert (=> b!2147596 (= b_free!63373 (not b_next!64077))))

(declare-fun tp!666303 () Bool)

(declare-fun b_and!172965 () Bool)

(assert (=> b!2147596 (= tp!666303 b_and!172965)))

(declare-fun b!2147590 () Bool)

(declare-fun b_free!63375 () Bool)

(declare-fun b_next!64079 () Bool)

(assert (=> b!2147590 (= b_free!63375 (not b_next!64079))))

(declare-fun tp!666304 () Bool)

(declare-fun b_and!172967 () Bool)

(assert (=> b!2147590 (= tp!666304 b_and!172967)))

(declare-fun b!2147589 () Bool)

(declare-fun e!1372894 () Bool)

(declare-datatypes ((array!9599 0))(
  ( (array!9600 (arr!4288 (Array (_ BitVec 32) (_ BitVec 64))) (size!19215 (_ BitVec 32))) )
))
(declare-datatypes ((C!11788 0))(
  ( (C!11789 (val!6880 Int)) )
))
(declare-datatypes ((Regex!5821 0))(
  ( (ElementMatch!5821 (c!340912 C!11788)) (Concat!10123 (regOne!12154 Regex!5821) (regTwo!12154 Regex!5821)) (EmptyExpr!5821) (Star!5821 (reg!6150 Regex!5821)) (EmptyLang!5821) (Union!5821 (regOne!12155 Regex!5821) (regTwo!12155 Regex!5821)) )
))
(declare-datatypes ((List!24620 0))(
  ( (Nil!24536) (Cons!24536 (h!29937 Regex!5821) (t!197156 List!24620)) )
))
(declare-datatypes ((Context!2782 0))(
  ( (Context!2783 (exprs!1891 List!24620)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3574 0))(
  ( (tuple3!3575 (_1!14455 (InoxSet Context!2782)) (_2!14455 Int) (_3!2257 Int)) )
))
(declare-datatypes ((tuple2!24396 0))(
  ( (tuple2!24397 (_1!14456 tuple3!3574) (_2!14456 Int)) )
))
(declare-datatypes ((List!24621 0))(
  ( (Nil!24537) (Cons!24537 (h!29938 tuple2!24396) (t!197157 List!24621)) )
))
(declare-datatypes ((array!9601 0))(
  ( (array!9602 (arr!4289 (Array (_ BitVec 32) List!24621)) (size!19216 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5692 0))(
  ( (LongMapFixedSize!5693 (defaultEntry!3211 Int) (mask!7072 (_ BitVec 32)) (extraKeys!3094 (_ BitVec 32)) (zeroValue!3104 List!24621) (minValue!3104 List!24621) (_size!5743 (_ BitVec 32)) (_keys!3143 array!9599) (_values!3126 array!9601) (_vacant!2907 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11209 0))(
  ( (Cell!11210 (v!29125 LongMapFixedSize!5692)) )
))
(declare-datatypes ((MutLongMap!2846 0))(
  ( (LongMap!2846 (underlying!5887 Cell!11209)) (MutLongMapExt!2845 (__x!16714 Int)) )
))
(declare-datatypes ((Cell!11211 0))(
  ( (Cell!11212 (v!29126 MutLongMap!2846)) )
))
(declare-datatypes ((List!24622 0))(
  ( (Nil!24538) (Cons!24538 (h!29939 C!11788) (t!197158 List!24622)) )
))
(declare-datatypes ((IArray!15919 0))(
  ( (IArray!15920 (innerList!8017 List!24622)) )
))
(declare-datatypes ((Conc!7957 0))(
  ( (Node!7957 (left!18838 Conc!7957) (right!19168 Conc!7957) (csize!16144 Int) (cheight!8168 Int)) (Leaf!11635 (xs!10899 IArray!15919) (csize!16145 Int)) (Empty!7957) )
))
(declare-datatypes ((Hashable!2760 0))(
  ( (HashableExt!2759 (__x!16715 Int)) )
))
(declare-datatypes ((MutableMap!2760 0))(
  ( (MutableMapExt!2759 (__x!16716 Int)) (HashMap!2760 (underlying!5888 Cell!11211) (hashF!4683 Hashable!2760) (_size!5744 (_ BitVec 32)) (defaultValue!2922 Int)) )
))
(declare-datatypes ((BalanceConc!15676 0))(
  ( (BalanceConc!15677 (c!340913 Conc!7957)) )
))
(declare-datatypes ((CacheFurthestNullable!878 0))(
  ( (CacheFurthestNullable!879 (cache!3141 MutableMap!2760) (totalInput!3201 BalanceConc!15676)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!878)

(declare-fun tp!666309 () Bool)

(declare-fun inv!32287 (Conc!7957) Bool)

(assert (=> b!2147589 (= e!1372894 (and (inv!32287 (c!340913 (totalInput!3201 thiss!29173))) tp!666309))))

(declare-fun e!1372899 () Bool)

(declare-fun e!1372895 () Bool)

(assert (=> b!2147590 (= e!1372899 (and e!1372895 tp!666304))))

(declare-fun b!2147591 () Bool)

(declare-fun e!1372893 () Bool)

(declare-fun lastNullablePos!99 () Int)

(declare-fun from!960 () Int)

(assert (=> b!2147591 (= e!1372893 (= lastNullablePos!99 (- from!960 1)))))

(declare-fun b!2147592 () Bool)

(declare-fun e!1372898 () Bool)

(declare-fun tp!666311 () Bool)

(assert (=> b!2147592 (= e!1372898 tp!666311)))

(declare-fun b!2147593 () Bool)

(declare-fun res!926489 () Bool)

(declare-fun e!1372888 () Bool)

(assert (=> b!2147593 (=> (not res!926489) (not e!1372888))))

(assert (=> b!2147593 (= res!926489 e!1372893)))

(declare-fun res!926488 () Bool)

(assert (=> b!2147593 (=> res!926488 e!1372893)))

(declare-fun z!526 () (InoxSet Context!2782))

(declare-fun nullableZipper!169 ((InoxSet Context!2782)) Bool)

(assert (=> b!2147593 (= res!926488 (not (nullableZipper!169 z!526)))))

(declare-fun e!1372889 () Bool)

(declare-fun b!2147594 () Bool)

(declare-fun inv!32288 (BalanceConc!15676) Bool)

(assert (=> b!2147594 (= e!1372889 (and e!1372899 (inv!32288 (totalInput!3201 thiss!29173)) e!1372894))))

(declare-fun mapIsEmpty!13508 () Bool)

(declare-fun mapRes!13508 () Bool)

(assert (=> mapIsEmpty!13508 mapRes!13508))

(declare-fun res!926490 () Bool)

(assert (=> start!208296 (=> (not res!926490) (not e!1372888))))

(assert (=> start!208296 (= res!926490 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208296 e!1372888))

(assert (=> start!208296 true))

(declare-fun condSetEmpty!16897 () Bool)

(assert (=> start!208296 (= condSetEmpty!16897 (= z!526 ((as const (Array Context!2782 Bool)) false)))))

(declare-fun setRes!16897 () Bool)

(assert (=> start!208296 setRes!16897))

(declare-fun inv!32289 (CacheFurthestNullable!878) Bool)

(assert (=> start!208296 (and (inv!32289 thiss!29173) e!1372889)))

(declare-fun mapNonEmpty!13508 () Bool)

(declare-fun tp!666307 () Bool)

(declare-fun tp!666302 () Bool)

(assert (=> mapNonEmpty!13508 (= mapRes!13508 (and tp!666307 tp!666302))))

(declare-fun mapRest!13508 () (Array (_ BitVec 32) List!24621))

(declare-fun mapValue!13508 () List!24621)

(declare-fun mapKey!13508 () (_ BitVec 32))

(assert (=> mapNonEmpty!13508 (= (arr!4289 (_values!3126 (v!29125 (underlying!5887 (v!29126 (underlying!5888 (cache!3141 thiss!29173))))))) (store mapRest!13508 mapKey!13508 mapValue!13508))))

(declare-fun b!2147595 () Bool)

(declare-fun e!1372896 () Bool)

(declare-fun tp!666306 () Bool)

(assert (=> b!2147595 (= e!1372896 (and tp!666306 mapRes!13508))))

(declare-fun condMapEmpty!13508 () Bool)

(declare-fun mapDefault!13508 () List!24621)

(assert (=> b!2147595 (= condMapEmpty!13508 (= (arr!4289 (_values!3126 (v!29125 (underlying!5887 (v!29126 (underlying!5888 (cache!3141 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24621)) mapDefault!13508)))))

(declare-fun e!1372890 () Bool)

(declare-fun tp!666308 () Bool)

(declare-fun tp!666310 () Bool)

(declare-fun array_inv!3070 (array!9599) Bool)

(declare-fun array_inv!3071 (array!9601) Bool)

(assert (=> b!2147596 (= e!1372890 (and tp!666303 tp!666308 tp!666310 (array_inv!3070 (_keys!3143 (v!29125 (underlying!5887 (v!29126 (underlying!5888 (cache!3141 thiss!29173))))))) (array_inv!3071 (_values!3126 (v!29125 (underlying!5887 (v!29126 (underlying!5888 (cache!3141 thiss!29173))))))) e!1372896))))

(declare-fun tp!666305 () Bool)

(declare-fun setElem!16897 () Context!2782)

(declare-fun setNonEmpty!16897 () Bool)

(declare-fun inv!32290 (Context!2782) Bool)

(assert (=> setNonEmpty!16897 (= setRes!16897 (and tp!666305 (inv!32290 setElem!16897) e!1372898))))

(declare-fun setRest!16897 () (InoxSet Context!2782))

(assert (=> setNonEmpty!16897 (= z!526 ((_ map or) (store ((as const (Array Context!2782 Bool)) false) setElem!16897 true) setRest!16897))))

(declare-fun b!2147597 () Bool)

(declare-fun res!926486 () Bool)

(assert (=> b!2147597 (=> (not res!926486) (not e!1372888))))

(declare-fun contains!4178 (MutableMap!2760 tuple3!3574) Bool)

(assert (=> b!2147597 (= res!926486 (not (contains!4178 (cache!3141 thiss!29173) (tuple3!3575 z!526 from!960 lastNullablePos!99))))))

(declare-fun b!2147598 () Bool)

(declare-fun e!1372897 () Bool)

(assert (=> b!2147598 (= e!1372897 e!1372890)))

(declare-fun b!2147599 () Bool)

(declare-fun res!926485 () Bool)

(assert (=> b!2147599 (=> (not res!926485) (not e!1372888))))

(assert (=> b!2147599 (= res!926485 false)))

(declare-fun b!2147600 () Bool)

(declare-fun res!926487 () Bool)

(assert (=> b!2147600 (=> (not res!926487) (not e!1372888))))

(declare-fun validCacheMapFurthestNullable!123 (MutableMap!2760 BalanceConc!15676) Bool)

(assert (=> b!2147600 (= res!926487 (validCacheMapFurthestNullable!123 (cache!3141 thiss!29173) (totalInput!3201 thiss!29173)))))

(declare-fun b!2147601 () Bool)

(declare-fun e!1372891 () Bool)

(declare-fun lt!799637 () MutLongMap!2846)

(get-info :version)

(assert (=> b!2147601 (= e!1372895 (and e!1372891 ((_ is LongMap!2846) lt!799637)))))

(assert (=> b!2147601 (= lt!799637 (v!29126 (underlying!5888 (cache!3141 thiss!29173))))))

(declare-fun b!2147602 () Bool)

(assert (=> b!2147602 (= e!1372891 e!1372897)))

(declare-fun setIsEmpty!16897 () Bool)

(assert (=> setIsEmpty!16897 setRes!16897))

(declare-fun b!2147603 () Bool)

(declare-fun lt!799638 () Int)

(assert (=> b!2147603 (= e!1372888 (or (< from!960 0) (> from!960 lt!799638)))))

(declare-fun size!19217 (BalanceConc!15676) Int)

(assert (=> b!2147603 (= lt!799638 (size!19217 (totalInput!3201 thiss!29173)))))

(assert (= (and start!208296 res!926490) b!2147593))

(assert (= (and b!2147593 (not res!926488)) b!2147591))

(assert (= (and b!2147593 res!926489) b!2147600))

(assert (= (and b!2147600 res!926487) b!2147597))

(assert (= (and b!2147597 res!926486) b!2147599))

(assert (= (and b!2147599 res!926485) b!2147603))

(assert (= (and start!208296 condSetEmpty!16897) setIsEmpty!16897))

(assert (= (and start!208296 (not condSetEmpty!16897)) setNonEmpty!16897))

(assert (= setNonEmpty!16897 b!2147592))

(assert (= (and b!2147595 condMapEmpty!13508) mapIsEmpty!13508))

(assert (= (and b!2147595 (not condMapEmpty!13508)) mapNonEmpty!13508))

(assert (= b!2147596 b!2147595))

(assert (= b!2147598 b!2147596))

(assert (= b!2147602 b!2147598))

(assert (= (and b!2147601 ((_ is LongMap!2846) (v!29126 (underlying!5888 (cache!3141 thiss!29173))))) b!2147602))

(assert (= b!2147590 b!2147601))

(assert (= (and b!2147594 ((_ is HashMap!2760) (cache!3141 thiss!29173))) b!2147590))

(assert (= b!2147594 b!2147589))

(assert (= start!208296 b!2147594))

(declare-fun m!2590930 () Bool)

(assert (=> b!2147600 m!2590930))

(declare-fun m!2590932 () Bool)

(assert (=> b!2147589 m!2590932))

(declare-fun m!2590934 () Bool)

(assert (=> setNonEmpty!16897 m!2590934))

(declare-fun m!2590936 () Bool)

(assert (=> b!2147596 m!2590936))

(declare-fun m!2590938 () Bool)

(assert (=> b!2147596 m!2590938))

(declare-fun m!2590940 () Bool)

(assert (=> mapNonEmpty!13508 m!2590940))

(declare-fun m!2590942 () Bool)

(assert (=> b!2147597 m!2590942))

(declare-fun m!2590944 () Bool)

(assert (=> b!2147594 m!2590944))

(declare-fun m!2590946 () Bool)

(assert (=> b!2147593 m!2590946))

(declare-fun m!2590948 () Bool)

(assert (=> start!208296 m!2590948))

(declare-fun m!2590950 () Bool)

(assert (=> b!2147603 m!2590950))

(check-sat (not mapNonEmpty!13508) (not b!2147600) (not b!2147596) (not b_next!64077) (not b!2147594) (not start!208296) (not b!2147589) b_and!172965 (not b!2147603) (not b!2147595) (not b!2147593) b_and!172967 (not b!2147597) (not b!2147592) (not b_next!64079) (not setNonEmpty!16897))
(check-sat b_and!172967 b_and!172965 (not b_next!64079) (not b_next!64077))
