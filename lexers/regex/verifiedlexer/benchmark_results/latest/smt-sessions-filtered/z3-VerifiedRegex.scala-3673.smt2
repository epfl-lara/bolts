; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208280 () Bool)

(assert start!208280)

(declare-fun b!2147223 () Bool)

(declare-fun b_free!63341 () Bool)

(declare-fun b_next!64045 () Bool)

(assert (=> b!2147223 (= b_free!63341 (not b_next!64045))))

(declare-fun tp!666062 () Bool)

(declare-fun b_and!172933 () Bool)

(assert (=> b!2147223 (= tp!666062 b_and!172933)))

(declare-fun b!2147215 () Bool)

(declare-fun b_free!63343 () Bool)

(declare-fun b_next!64047 () Bool)

(assert (=> b!2147215 (= b_free!63343 (not b_next!64047))))

(declare-fun tp!666070 () Bool)

(declare-fun b_and!172935 () Bool)

(assert (=> b!2147215 (= tp!666070 b_and!172935)))

(declare-fun e!1372557 () Bool)

(declare-fun e!1372552 () Bool)

(declare-fun b!2147209 () Bool)

(declare-datatypes ((array!9567 0))(
  ( (array!9568 (arr!4272 (Array (_ BitVec 32) (_ BitVec 64))) (size!19193 (_ BitVec 32))) )
))
(declare-datatypes ((C!11772 0))(
  ( (C!11773 (val!6872 Int)) )
))
(declare-datatypes ((Regex!5813 0))(
  ( (ElementMatch!5813 (c!340896 C!11772)) (Concat!10115 (regOne!12138 Regex!5813) (regTwo!12138 Regex!5813)) (EmptyExpr!5813) (Star!5813 (reg!6142 Regex!5813)) (EmptyLang!5813) (Union!5813 (regOne!12139 Regex!5813) (regTwo!12139 Regex!5813)) )
))
(declare-datatypes ((List!24596 0))(
  ( (Nil!24512) (Cons!24512 (h!29913 Regex!5813) (t!197132 List!24596)) )
))
(declare-datatypes ((Context!2766 0))(
  ( (Context!2767 (exprs!1883 List!24596)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3558 0))(
  ( (tuple3!3559 (_1!14439 (InoxSet Context!2766)) (_2!14439 Int) (_3!2249 Int)) )
))
(declare-datatypes ((tuple2!24380 0))(
  ( (tuple2!24381 (_1!14440 tuple3!3558) (_2!14440 Int)) )
))
(declare-datatypes ((List!24597 0))(
  ( (Nil!24513) (Cons!24513 (h!29914 tuple2!24380) (t!197133 List!24597)) )
))
(declare-datatypes ((array!9569 0))(
  ( (array!9570 (arr!4273 (Array (_ BitVec 32) List!24597)) (size!19194 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5676 0))(
  ( (LongMapFixedSize!5677 (defaultEntry!3203 Int) (mask!7060 (_ BitVec 32)) (extraKeys!3086 (_ BitVec 32)) (zeroValue!3096 List!24597) (minValue!3096 List!24597) (_size!5727 (_ BitVec 32)) (_keys!3135 array!9567) (_values!3118 array!9569) (_vacant!2899 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11177 0))(
  ( (Cell!11178 (v!29105 LongMapFixedSize!5676)) )
))
(declare-datatypes ((MutLongMap!2838 0))(
  ( (LongMap!2838 (underlying!5871 Cell!11177)) (MutLongMapExt!2837 (__x!16690 Int)) )
))
(declare-datatypes ((Cell!11179 0))(
  ( (Cell!11180 (v!29106 MutLongMap!2838)) )
))
(declare-datatypes ((List!24598 0))(
  ( (Nil!24514) (Cons!24514 (h!29915 C!11772) (t!197134 List!24598)) )
))
(declare-datatypes ((IArray!15903 0))(
  ( (IArray!15904 (innerList!8009 List!24598)) )
))
(declare-datatypes ((Conc!7949 0))(
  ( (Node!7949 (left!18826 Conc!7949) (right!19156 Conc!7949) (csize!16128 Int) (cheight!8160 Int)) (Leaf!11623 (xs!10891 IArray!15903) (csize!16129 Int)) (Empty!7949) )
))
(declare-datatypes ((Hashable!2752 0))(
  ( (HashableExt!2751 (__x!16691 Int)) )
))
(declare-datatypes ((MutableMap!2752 0))(
  ( (MutableMapExt!2751 (__x!16692 Int)) (HashMap!2752 (underlying!5872 Cell!11179) (hashF!4675 Hashable!2752) (_size!5728 (_ BitVec 32)) (defaultValue!2914 Int)) )
))
(declare-datatypes ((BalanceConc!15660 0))(
  ( (BalanceConc!15661 (c!340897 Conc!7949)) )
))
(declare-datatypes ((CacheFurthestNullable!862 0))(
  ( (CacheFurthestNullable!863 (cache!3133 MutableMap!2752) (totalInput!3193 BalanceConc!15660)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!862)

(declare-fun e!1372554 () Bool)

(declare-fun inv!32251 (BalanceConc!15660) Bool)

(assert (=> b!2147209 (= e!1372552 (and e!1372557 (inv!32251 (totalInput!3193 thiss!29173)) e!1372554))))

(declare-fun b!2147210 () Bool)

(declare-fun e!1372545 () Bool)

(declare-fun e!1372551 () Bool)

(assert (=> b!2147210 (= e!1372545 (not e!1372551))))

(declare-fun res!926328 () Bool)

(assert (=> b!2147210 (=> res!926328 e!1372551)))

(declare-fun lt!799554 () tuple3!3558)

(declare-datatypes ((Option!4965 0))(
  ( (None!4964) (Some!4964 (v!29107 Int)) )
))
(declare-fun isEmpty!14341 (Option!4965) Bool)

(declare-fun apply!5995 (MutableMap!2752 tuple3!3558) Int)

(assert (=> b!2147210 (= res!926328 (isEmpty!14341 (Some!4964 (apply!5995 (cache!3133 thiss!29173) lt!799554))))))

(declare-fun e!1372555 () Bool)

(assert (=> b!2147210 e!1372555))

(declare-fun res!926321 () Bool)

(assert (=> b!2147210 (=> (not res!926321) (not e!1372555))))

(declare-fun from!960 () Int)

(assert (=> b!2147210 (= res!926321 (>= from!960 0))))

(declare-fun lastNullablePos!99 () Int)

(declare-fun z!526 () (InoxSet Context!2766))

(declare-datatypes ((Unit!37751 0))(
  ( (Unit!37752) )
))
(declare-fun lt!799553 () Unit!37751)

(declare-fun lemmaIfInCacheThenValid!11 (CacheFurthestNullable!862 (InoxSet Context!2766) Int Int BalanceConc!15660) Unit!37751)

(assert (=> b!2147210 (= lt!799553 (lemmaIfInCacheThenValid!11 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3193 thiss!29173)))))

(declare-fun b!2147211 () Bool)

(declare-fun e!1372544 () Bool)

(declare-fun e!1372549 () Bool)

(assert (=> b!2147211 (= e!1372544 e!1372549)))

(declare-fun b!2147212 () Bool)

(declare-fun res!926326 () Bool)

(declare-fun e!1372556 () Bool)

(assert (=> b!2147212 (=> (not res!926326) (not e!1372556))))

(declare-fun e!1372543 () Bool)

(assert (=> b!2147212 (= res!926326 e!1372543)))

(declare-fun res!926327 () Bool)

(assert (=> b!2147212 (=> res!926327 e!1372543)))

(declare-fun nullableZipper!163 ((InoxSet Context!2766)) Bool)

(assert (=> b!2147212 (= res!926327 (not (nullableZipper!163 z!526)))))

(declare-fun setIsEmpty!16873 () Bool)

(declare-fun setRes!16873 () Bool)

(assert (=> setIsEmpty!16873 setRes!16873))

(declare-fun b!2147213 () Bool)

(declare-fun e!1372553 () Bool)

(declare-fun tp!666071 () Bool)

(assert (=> b!2147213 (= e!1372553 tp!666071)))

(declare-fun b!2147214 () Bool)

(declare-fun tp!666069 () Bool)

(declare-fun inv!32252 (Conc!7949) Bool)

(assert (=> b!2147214 (= e!1372554 (and (inv!32252 (c!340897 (totalInput!3193 thiss!29173))) tp!666069))))

(declare-fun e!1372547 () Bool)

(declare-fun tp!666064 () Bool)

(declare-fun tp!666066 () Bool)

(declare-fun array_inv!3056 (array!9567) Bool)

(declare-fun array_inv!3057 (array!9569) Bool)

(assert (=> b!2147215 (= e!1372549 (and tp!666070 tp!666064 tp!666066 (array_inv!3056 (_keys!3135 (v!29105 (underlying!5871 (v!29106 (underlying!5872 (cache!3133 thiss!29173))))))) (array_inv!3057 (_values!3118 (v!29105 (underlying!5871 (v!29106 (underlying!5872 (cache!3133 thiss!29173))))))) e!1372547))))

(declare-fun b!2147216 () Bool)

(declare-fun res!926324 () Bool)

(assert (=> b!2147216 (=> (not res!926324) (not e!1372556))))

(declare-fun validCacheMapFurthestNullable!116 (MutableMap!2752 BalanceConc!15660) Bool)

(assert (=> b!2147216 (= res!926324 (validCacheMapFurthestNullable!116 (cache!3133 thiss!29173) (totalInput!3193 thiss!29173)))))

(declare-fun res!926323 () Bool)

(assert (=> start!208280 (=> (not res!926323) (not e!1372556))))

(assert (=> start!208280 (= res!926323 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208280 e!1372556))

(assert (=> start!208280 true))

(declare-fun condSetEmpty!16873 () Bool)

(assert (=> start!208280 (= condSetEmpty!16873 (= z!526 ((as const (Array Context!2766 Bool)) false)))))

(assert (=> start!208280 setRes!16873))

(declare-fun inv!32253 (CacheFurthestNullable!862) Bool)

(assert (=> start!208280 (and (inv!32253 thiss!29173) e!1372552)))

(declare-fun b!2147217 () Bool)

(declare-fun e!1372546 () Bool)

(assert (=> b!2147217 (= e!1372546 e!1372544)))

(declare-fun b!2147218 () Bool)

(declare-fun e!1372542 () Bool)

(declare-fun lt!799551 () MutLongMap!2838)

(get-info :version)

(assert (=> b!2147218 (= e!1372542 (and e!1372546 ((_ is LongMap!2838) lt!799551)))))

(assert (=> b!2147218 (= lt!799551 (v!29106 (underlying!5872 (cache!3133 thiss!29173))))))

(declare-fun b!2147219 () Bool)

(declare-fun lt!799550 () Int)

(assert (=> b!2147219 (= e!1372551 (and (>= from!960 0) (<= from!960 lt!799550)))))

(declare-fun size!19195 (BalanceConc!15660) Int)

(assert (=> b!2147219 (= lt!799550 (size!19195 (totalInput!3193 thiss!29173)))))

(declare-fun mapIsEmpty!13484 () Bool)

(declare-fun mapRes!13484 () Bool)

(assert (=> mapIsEmpty!13484 mapRes!13484))

(declare-fun e!1372550 () Bool)

(declare-fun b!2147220 () Bool)

(declare-fun lt!799552 () Int)

(declare-fun furthestNullablePosition!98 ((InoxSet Context!2766) Int BalanceConc!15660 Int Int) Int)

(assert (=> b!2147220 (= e!1372550 (= (furthestNullablePosition!98 z!526 from!960 (totalInput!3193 thiss!29173) lt!799552 lastNullablePos!99) (apply!5995 (cache!3133 thiss!29173) lt!799554)))))

(declare-fun b!2147221 () Bool)

(assert (=> b!2147221 (= e!1372556 e!1372545)))

(declare-fun res!926325 () Bool)

(assert (=> b!2147221 (=> (not res!926325) (not e!1372545))))

(declare-fun contains!4171 (MutableMap!2752 tuple3!3558) Bool)

(assert (=> b!2147221 (= res!926325 (contains!4171 (cache!3133 thiss!29173) lt!799554))))

(assert (=> b!2147221 (= lt!799554 (tuple3!3559 z!526 from!960 lastNullablePos!99))))

(declare-fun mapNonEmpty!13484 () Bool)

(declare-fun tp!666068 () Bool)

(declare-fun tp!666063 () Bool)

(assert (=> mapNonEmpty!13484 (= mapRes!13484 (and tp!666068 tp!666063))))

(declare-fun mapValue!13484 () List!24597)

(declare-fun mapRest!13484 () (Array (_ BitVec 32) List!24597))

(declare-fun mapKey!13484 () (_ BitVec 32))

(assert (=> mapNonEmpty!13484 (= (arr!4273 (_values!3118 (v!29105 (underlying!5871 (v!29106 (underlying!5872 (cache!3133 thiss!29173))))))) (store mapRest!13484 mapKey!13484 mapValue!13484))))

(declare-fun setElem!16873 () Context!2766)

(declare-fun tp!666067 () Bool)

(declare-fun setNonEmpty!16873 () Bool)

(declare-fun inv!32254 (Context!2766) Bool)

(assert (=> setNonEmpty!16873 (= setRes!16873 (and tp!666067 (inv!32254 setElem!16873) e!1372553))))

(declare-fun setRest!16873 () (InoxSet Context!2766))

(assert (=> setNonEmpty!16873 (= z!526 ((_ map or) (store ((as const (Array Context!2766 Bool)) false) setElem!16873 true) setRest!16873))))

(declare-fun b!2147222 () Bool)

(declare-fun tp!666065 () Bool)

(assert (=> b!2147222 (= e!1372547 (and tp!666065 mapRes!13484))))

(declare-fun condMapEmpty!13484 () Bool)

(declare-fun mapDefault!13484 () List!24597)

(assert (=> b!2147222 (= condMapEmpty!13484 (= (arr!4273 (_values!3118 (v!29105 (underlying!5871 (v!29106 (underlying!5872 (cache!3133 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24597)) mapDefault!13484)))))

(assert (=> b!2147223 (= e!1372557 (and e!1372542 tp!666062))))

(declare-fun b!2147224 () Bool)

(assert (=> b!2147224 (= e!1372543 (= lastNullablePos!99 (- from!960 1)))))

(declare-fun b!2147225 () Bool)

(assert (=> b!2147225 (= e!1372555 e!1372550)))

(declare-fun res!926322 () Bool)

(assert (=> b!2147225 (=> (not res!926322) (not e!1372550))))

(assert (=> b!2147225 (= res!926322 (<= from!960 lt!799552))))

(assert (=> b!2147225 (= lt!799552 (size!19195 (totalInput!3193 thiss!29173)))))

(assert (= (and start!208280 res!926323) b!2147212))

(assert (= (and b!2147212 (not res!926327)) b!2147224))

(assert (= (and b!2147212 res!926326) b!2147216))

(assert (= (and b!2147216 res!926324) b!2147221))

(assert (= (and b!2147221 res!926325) b!2147210))

(assert (= (and b!2147210 res!926321) b!2147225))

(assert (= (and b!2147225 res!926322) b!2147220))

(assert (= (and b!2147210 (not res!926328)) b!2147219))

(assert (= (and start!208280 condSetEmpty!16873) setIsEmpty!16873))

(assert (= (and start!208280 (not condSetEmpty!16873)) setNonEmpty!16873))

(assert (= setNonEmpty!16873 b!2147213))

(assert (= (and b!2147222 condMapEmpty!13484) mapIsEmpty!13484))

(assert (= (and b!2147222 (not condMapEmpty!13484)) mapNonEmpty!13484))

(assert (= b!2147215 b!2147222))

(assert (= b!2147211 b!2147215))

(assert (= b!2147217 b!2147211))

(assert (= (and b!2147218 ((_ is LongMap!2838) (v!29106 (underlying!5872 (cache!3133 thiss!29173))))) b!2147217))

(assert (= b!2147223 b!2147218))

(assert (= (and b!2147209 ((_ is HashMap!2752) (cache!3133 thiss!29173))) b!2147223))

(assert (= b!2147209 b!2147214))

(assert (= start!208280 b!2147209))

(declare-fun m!2590718 () Bool)

(assert (=> setNonEmpty!16873 m!2590718))

(declare-fun m!2590720 () Bool)

(assert (=> start!208280 m!2590720))

(declare-fun m!2590722 () Bool)

(assert (=> b!2147225 m!2590722))

(declare-fun m!2590724 () Bool)

(assert (=> b!2147216 m!2590724))

(declare-fun m!2590726 () Bool)

(assert (=> b!2147221 m!2590726))

(declare-fun m!2590728 () Bool)

(assert (=> b!2147210 m!2590728))

(declare-fun m!2590730 () Bool)

(assert (=> b!2147210 m!2590730))

(declare-fun m!2590732 () Bool)

(assert (=> b!2147210 m!2590732))

(declare-fun m!2590734 () Bool)

(assert (=> b!2147220 m!2590734))

(assert (=> b!2147220 m!2590728))

(declare-fun m!2590736 () Bool)

(assert (=> b!2147209 m!2590736))

(declare-fun m!2590738 () Bool)

(assert (=> b!2147215 m!2590738))

(declare-fun m!2590740 () Bool)

(assert (=> b!2147215 m!2590740))

(declare-fun m!2590742 () Bool)

(assert (=> mapNonEmpty!13484 m!2590742))

(declare-fun m!2590744 () Bool)

(assert (=> b!2147212 m!2590744))

(declare-fun m!2590746 () Bool)

(assert (=> b!2147214 m!2590746))

(assert (=> b!2147219 m!2590722))

(check-sat (not setNonEmpty!16873) (not b!2147222) (not b!2147220) (not b!2147216) (not b_next!64045) (not start!208280) (not mapNonEmpty!13484) (not b!2147215) (not b!2147214) (not b!2147212) b_and!172933 (not b!2147225) (not b!2147210) b_and!172935 (not b!2147221) (not b_next!64047) (not b!2147209) (not b!2147213) (not b!2147219))
(check-sat b_and!172933 b_and!172935 (not b_next!64045) (not b_next!64047))
