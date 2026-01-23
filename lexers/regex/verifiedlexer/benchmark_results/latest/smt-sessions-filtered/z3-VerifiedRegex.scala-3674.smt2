; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208284 () Bool)

(assert start!208284)

(declare-fun b!2147314 () Bool)

(declare-fun b_free!63349 () Bool)

(declare-fun b_next!64053 () Bool)

(assert (=> b!2147314 (= b_free!63349 (not b_next!64053))))

(declare-fun tp!666131 () Bool)

(declare-fun b_and!172941 () Bool)

(assert (=> b!2147314 (= tp!666131 b_and!172941)))

(declare-fun b!2147327 () Bool)

(declare-fun b_free!63351 () Bool)

(declare-fun b_next!64055 () Bool)

(assert (=> b!2147327 (= b_free!63351 (not b_next!64055))))

(declare-fun tp!666130 () Bool)

(declare-fun b_and!172943 () Bool)

(assert (=> b!2147327 (= tp!666130 b_and!172943)))

(declare-fun b!2147311 () Bool)

(declare-fun e!1372650 () Bool)

(assert (=> b!2147311 (= e!1372650 true)))

(declare-fun lt!799584 () Int)

(declare-datatypes ((array!9575 0))(
  ( (array!9576 (arr!4276 (Array (_ BitVec 32) (_ BitVec 64))) (size!19199 (_ BitVec 32))) )
))
(declare-datatypes ((C!11776 0))(
  ( (C!11777 (val!6874 Int)) )
))
(declare-datatypes ((Regex!5815 0))(
  ( (ElementMatch!5815 (c!340900 C!11776)) (Concat!10117 (regOne!12142 Regex!5815) (regTwo!12142 Regex!5815)) (EmptyExpr!5815) (Star!5815 (reg!6144 Regex!5815)) (EmptyLang!5815) (Union!5815 (regOne!12143 Regex!5815) (regTwo!12143 Regex!5815)) )
))
(declare-datatypes ((List!24602 0))(
  ( (Nil!24518) (Cons!24518 (h!29919 Regex!5815) (t!197138 List!24602)) )
))
(declare-datatypes ((Context!2770 0))(
  ( (Context!2771 (exprs!1885 List!24602)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3562 0))(
  ( (tuple3!3563 (_1!14443 (InoxSet Context!2770)) (_2!14443 Int) (_3!2251 Int)) )
))
(declare-datatypes ((tuple2!24384 0))(
  ( (tuple2!24385 (_1!14444 tuple3!3562) (_2!14444 Int)) )
))
(declare-datatypes ((List!24603 0))(
  ( (Nil!24519) (Cons!24519 (h!29920 tuple2!24384) (t!197139 List!24603)) )
))
(declare-datatypes ((array!9577 0))(
  ( (array!9578 (arr!4277 (Array (_ BitVec 32) List!24603)) (size!19200 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5680 0))(
  ( (LongMapFixedSize!5681 (defaultEntry!3205 Int) (mask!7063 (_ BitVec 32)) (extraKeys!3088 (_ BitVec 32)) (zeroValue!3098 List!24603) (minValue!3098 List!24603) (_size!5731 (_ BitVec 32)) (_keys!3137 array!9575) (_values!3120 array!9577) (_vacant!2901 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11185 0))(
  ( (Cell!11186 (v!29110 LongMapFixedSize!5680)) )
))
(declare-datatypes ((MutLongMap!2840 0))(
  ( (LongMap!2840 (underlying!5875 Cell!11185)) (MutLongMapExt!2839 (__x!16696 Int)) )
))
(declare-datatypes ((Cell!11187 0))(
  ( (Cell!11188 (v!29111 MutLongMap!2840)) )
))
(declare-datatypes ((List!24604 0))(
  ( (Nil!24520) (Cons!24520 (h!29921 C!11776) (t!197140 List!24604)) )
))
(declare-datatypes ((IArray!15907 0))(
  ( (IArray!15908 (innerList!8011 List!24604)) )
))
(declare-datatypes ((Conc!7951 0))(
  ( (Node!7951 (left!18829 Conc!7951) (right!19159 Conc!7951) (csize!16132 Int) (cheight!8162 Int)) (Leaf!11626 (xs!10893 IArray!15907) (csize!16133 Int)) (Empty!7951) )
))
(declare-datatypes ((Hashable!2754 0))(
  ( (HashableExt!2753 (__x!16697 Int)) )
))
(declare-datatypes ((MutableMap!2754 0))(
  ( (MutableMapExt!2753 (__x!16698 Int)) (HashMap!2754 (underlying!5876 Cell!11187) (hashF!4677 Hashable!2754) (_size!5732 (_ BitVec 32)) (defaultValue!2916 Int)) )
))
(declare-datatypes ((BalanceConc!15664 0))(
  ( (BalanceConc!15665 (c!340901 Conc!7951)) )
))
(declare-datatypes ((CacheFurthestNullable!866 0))(
  ( (CacheFurthestNullable!867 (cache!3135 MutableMap!2754) (totalInput!3195 BalanceConc!15664)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!866)

(declare-fun size!19201 (BalanceConc!15664) Int)

(assert (=> b!2147311 (= lt!799584 (size!19201 (totalInput!3195 thiss!29173)))))

(declare-fun b!2147312 () Bool)

(declare-fun e!1372647 () Bool)

(declare-fun e!1372642 () Bool)

(assert (=> b!2147312 (= e!1372647 e!1372642)))

(declare-fun e!1372653 () Bool)

(declare-fun e!1372644 () Bool)

(declare-fun b!2147313 () Bool)

(declare-fun e!1372646 () Bool)

(declare-fun inv!32260 (BalanceConc!15664) Bool)

(assert (=> b!2147313 (= e!1372646 (and e!1372653 (inv!32260 (totalInput!3195 thiss!29173)) e!1372644))))

(declare-fun tp!666124 () Bool)

(declare-fun tp!666126 () Bool)

(declare-fun e!1372648 () Bool)

(declare-fun e!1372652 () Bool)

(declare-fun array_inv!3060 (array!9575) Bool)

(declare-fun array_inv!3061 (array!9577) Bool)

(assert (=> b!2147314 (= e!1372652 (and tp!666131 tp!666124 tp!666126 (array_inv!3060 (_keys!3137 (v!29110 (underlying!5875 (v!29111 (underlying!5876 (cache!3135 thiss!29173))))))) (array_inv!3061 (_values!3120 (v!29110 (underlying!5875 (v!29111 (underlying!5876 (cache!3135 thiss!29173))))))) e!1372648))))

(declare-fun mapNonEmpty!13490 () Bool)

(declare-fun mapRes!13490 () Bool)

(declare-fun tp!666128 () Bool)

(declare-fun tp!666127 () Bool)

(assert (=> mapNonEmpty!13490 (= mapRes!13490 (and tp!666128 tp!666127))))

(declare-fun mapValue!13490 () List!24603)

(declare-fun mapKey!13490 () (_ BitVec 32))

(declare-fun mapRest!13490 () (Array (_ BitVec 32) List!24603))

(assert (=> mapNonEmpty!13490 (= (arr!4277 (_values!3120 (v!29110 (underlying!5875 (v!29111 (underlying!5876 (cache!3135 thiss!29173))))))) (store mapRest!13490 mapKey!13490 mapValue!13490))))

(declare-fun b!2147315 () Bool)

(declare-fun e!1372638 () Bool)

(declare-fun lt!799580 () MutLongMap!2840)

(get-info :version)

(assert (=> b!2147315 (= e!1372638 (and e!1372647 ((_ is LongMap!2840) lt!799580)))))

(assert (=> b!2147315 (= lt!799580 (v!29111 (underlying!5876 (cache!3135 thiss!29173))))))

(declare-fun mapIsEmpty!13490 () Bool)

(assert (=> mapIsEmpty!13490 mapRes!13490))

(declare-fun b!2147316 () Bool)

(declare-fun tp!666129 () Bool)

(declare-fun inv!32261 (Conc!7951) Bool)

(assert (=> b!2147316 (= e!1372644 (and (inv!32261 (c!340901 (totalInput!3195 thiss!29173))) tp!666129))))

(declare-fun b!2147317 () Bool)

(declare-fun e!1372641 () Bool)

(declare-fun lastNullablePos!99 () Int)

(declare-fun from!960 () Int)

(assert (=> b!2147317 (= e!1372641 (= lastNullablePos!99 (- from!960 1)))))

(declare-fun setNonEmpty!16879 () Bool)

(declare-fun setElem!16879 () Context!2770)

(declare-fun setRes!16879 () Bool)

(declare-fun e!1372649 () Bool)

(declare-fun tp!666122 () Bool)

(declare-fun inv!32262 (Context!2770) Bool)

(assert (=> setNonEmpty!16879 (= setRes!16879 (and tp!666122 (inv!32262 setElem!16879) e!1372649))))

(declare-fun z!526 () (InoxSet Context!2770))

(declare-fun setRest!16879 () (InoxSet Context!2770))

(assert (=> setNonEmpty!16879 (= z!526 ((_ map or) (store ((as const (Array Context!2770 Bool)) false) setElem!16879 true) setRest!16879))))

(declare-fun b!2147319 () Bool)

(assert (=> b!2147319 (= e!1372642 e!1372652)))

(declare-fun b!2147320 () Bool)

(declare-fun res!926370 () Bool)

(declare-fun e!1372645 () Bool)

(assert (=> b!2147320 (=> (not res!926370) (not e!1372645))))

(declare-fun validCacheMapFurthestNullable!118 (MutableMap!2754 BalanceConc!15664) Bool)

(assert (=> b!2147320 (= res!926370 (validCacheMapFurthestNullable!118 (cache!3135 thiss!29173) (totalInput!3195 thiss!29173)))))

(declare-fun b!2147321 () Bool)

(declare-fun tp!666123 () Bool)

(assert (=> b!2147321 (= e!1372648 (and tp!666123 mapRes!13490))))

(declare-fun condMapEmpty!13490 () Bool)

(declare-fun mapDefault!13490 () List!24603)

(assert (=> b!2147321 (= condMapEmpty!13490 (= (arr!4277 (_values!3120 (v!29110 (underlying!5875 (v!29111 (underlying!5876 (cache!3135 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24603)) mapDefault!13490)))))

(declare-fun b!2147322 () Bool)

(declare-fun e!1372651 () Bool)

(assert (=> b!2147322 (= e!1372651 (not e!1372650))))

(declare-fun res!926375 () Bool)

(assert (=> b!2147322 (=> res!926375 e!1372650)))

(declare-fun lt!799581 () tuple3!3562)

(declare-datatypes ((Option!4966 0))(
  ( (None!4965) (Some!4965 (v!29112 Int)) )
))
(declare-fun isEmpty!14342 (Option!4966) Bool)

(declare-fun apply!5997 (MutableMap!2754 tuple3!3562) Int)

(assert (=> b!2147322 (= res!926375 (isEmpty!14342 (Some!4965 (apply!5997 (cache!3135 thiss!29173) lt!799581))))))

(declare-fun e!1372639 () Bool)

(assert (=> b!2147322 e!1372639))

(declare-fun res!926369 () Bool)

(assert (=> b!2147322 (=> (not res!926369) (not e!1372639))))

(assert (=> b!2147322 (= res!926369 (>= from!960 0))))

(declare-datatypes ((Unit!37753 0))(
  ( (Unit!37754) )
))
(declare-fun lt!799583 () Unit!37753)

(declare-fun lemmaIfInCacheThenValid!12 (CacheFurthestNullable!866 (InoxSet Context!2770) Int Int BalanceConc!15664) Unit!37753)

(assert (=> b!2147322 (= lt!799583 (lemmaIfInCacheThenValid!12 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3195 thiss!29173)))))

(declare-fun b!2147323 () Bool)

(declare-fun e!1372640 () Bool)

(assert (=> b!2147323 (= e!1372639 e!1372640)))

(declare-fun res!926373 () Bool)

(assert (=> b!2147323 (=> (not res!926373) (not e!1372640))))

(declare-fun lt!799582 () Int)

(assert (=> b!2147323 (= res!926373 (<= from!960 lt!799582))))

(assert (=> b!2147323 (= lt!799582 (size!19201 (totalInput!3195 thiss!29173)))))

(declare-fun b!2147324 () Bool)

(declare-fun furthestNullablePosition!100 ((InoxSet Context!2770) Int BalanceConc!15664 Int Int) Int)

(assert (=> b!2147324 (= e!1372640 (= (furthestNullablePosition!100 z!526 from!960 (totalInput!3195 thiss!29173) lt!799582 lastNullablePos!99) (apply!5997 (cache!3135 thiss!29173) lt!799581)))))

(declare-fun b!2147325 () Bool)

(assert (=> b!2147325 (= e!1372645 e!1372651)))

(declare-fun res!926371 () Bool)

(assert (=> b!2147325 (=> (not res!926371) (not e!1372651))))

(declare-fun contains!4173 (MutableMap!2754 tuple3!3562) Bool)

(assert (=> b!2147325 (= res!926371 (contains!4173 (cache!3135 thiss!29173) lt!799581))))

(assert (=> b!2147325 (= lt!799581 (tuple3!3563 z!526 from!960 lastNullablePos!99))))

(declare-fun setIsEmpty!16879 () Bool)

(assert (=> setIsEmpty!16879 setRes!16879))

(declare-fun b!2147326 () Bool)

(declare-fun res!926374 () Bool)

(assert (=> b!2147326 (=> (not res!926374) (not e!1372645))))

(assert (=> b!2147326 (= res!926374 e!1372641)))

(declare-fun res!926376 () Bool)

(assert (=> b!2147326 (=> res!926376 e!1372641)))

(declare-fun nullableZipper!164 ((InoxSet Context!2770)) Bool)

(assert (=> b!2147326 (= res!926376 (not (nullableZipper!164 z!526)))))

(assert (=> b!2147327 (= e!1372653 (and e!1372638 tp!666130))))

(declare-fun b!2147318 () Bool)

(declare-fun tp!666125 () Bool)

(assert (=> b!2147318 (= e!1372649 tp!666125)))

(declare-fun res!926372 () Bool)

(assert (=> start!208284 (=> (not res!926372) (not e!1372645))))

(assert (=> start!208284 (= res!926372 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208284 e!1372645))

(assert (=> start!208284 true))

(declare-fun condSetEmpty!16879 () Bool)

(assert (=> start!208284 (= condSetEmpty!16879 (= z!526 ((as const (Array Context!2770 Bool)) false)))))

(assert (=> start!208284 setRes!16879))

(declare-fun inv!32263 (CacheFurthestNullable!866) Bool)

(assert (=> start!208284 (and (inv!32263 thiss!29173) e!1372646)))

(assert (= (and start!208284 res!926372) b!2147326))

(assert (= (and b!2147326 (not res!926376)) b!2147317))

(assert (= (and b!2147326 res!926374) b!2147320))

(assert (= (and b!2147320 res!926370) b!2147325))

(assert (= (and b!2147325 res!926371) b!2147322))

(assert (= (and b!2147322 res!926369) b!2147323))

(assert (= (and b!2147323 res!926373) b!2147324))

(assert (= (and b!2147322 (not res!926375)) b!2147311))

(assert (= (and start!208284 condSetEmpty!16879) setIsEmpty!16879))

(assert (= (and start!208284 (not condSetEmpty!16879)) setNonEmpty!16879))

(assert (= setNonEmpty!16879 b!2147318))

(assert (= (and b!2147321 condMapEmpty!13490) mapIsEmpty!13490))

(assert (= (and b!2147321 (not condMapEmpty!13490)) mapNonEmpty!13490))

(assert (= b!2147314 b!2147321))

(assert (= b!2147319 b!2147314))

(assert (= b!2147312 b!2147319))

(assert (= (and b!2147315 ((_ is LongMap!2840) (v!29111 (underlying!5876 (cache!3135 thiss!29173))))) b!2147312))

(assert (= b!2147327 b!2147315))

(assert (= (and b!2147313 ((_ is HashMap!2754) (cache!3135 thiss!29173))) b!2147327))

(assert (= b!2147313 b!2147316))

(assert (= start!208284 b!2147313))

(declare-fun m!2590778 () Bool)

(assert (=> b!2147323 m!2590778))

(declare-fun m!2590780 () Bool)

(assert (=> mapNonEmpty!13490 m!2590780))

(declare-fun m!2590782 () Bool)

(assert (=> b!2147326 m!2590782))

(declare-fun m!2590784 () Bool)

(assert (=> b!2147320 m!2590784))

(declare-fun m!2590786 () Bool)

(assert (=> start!208284 m!2590786))

(declare-fun m!2590788 () Bool)

(assert (=> b!2147325 m!2590788))

(declare-fun m!2590790 () Bool)

(assert (=> setNonEmpty!16879 m!2590790))

(declare-fun m!2590792 () Bool)

(assert (=> b!2147314 m!2590792))

(declare-fun m!2590794 () Bool)

(assert (=> b!2147314 m!2590794))

(assert (=> b!2147311 m!2590778))

(declare-fun m!2590796 () Bool)

(assert (=> b!2147313 m!2590796))

(declare-fun m!2590798 () Bool)

(assert (=> b!2147316 m!2590798))

(declare-fun m!2590800 () Bool)

(assert (=> b!2147322 m!2590800))

(declare-fun m!2590802 () Bool)

(assert (=> b!2147322 m!2590802))

(declare-fun m!2590804 () Bool)

(assert (=> b!2147322 m!2590804))

(declare-fun m!2590806 () Bool)

(assert (=> b!2147324 m!2590806))

(assert (=> b!2147324 m!2590800))

(check-sat (not mapNonEmpty!13490) (not setNonEmpty!16879) (not b!2147320) (not b!2147314) (not b_next!64053) (not b!2147326) (not b!2147325) b_and!172943 (not b!2147313) b_and!172941 (not b!2147324) (not b!2147316) (not b!2147323) (not b!2147321) (not b_next!64055) (not b!2147318) (not b!2147322) (not b!2147311) (not start!208284))
(check-sat b_and!172943 b_and!172941 (not b_next!64055) (not b_next!64053))
