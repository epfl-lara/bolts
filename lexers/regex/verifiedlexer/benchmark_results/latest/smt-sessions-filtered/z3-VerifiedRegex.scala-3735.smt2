; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209316 () Bool)

(assert start!209316)

(declare-fun b!2157540 () Bool)

(declare-fun b_free!63741 () Bool)

(declare-fun b_next!64445 () Bool)

(assert (=> b!2157540 (= b_free!63741 (not b_next!64445))))

(declare-fun tp!672260 () Bool)

(declare-fun b_and!173357 () Bool)

(assert (=> b!2157540 (= tp!672260 b_and!173357)))

(declare-fun b!2157541 () Bool)

(declare-fun b_free!63743 () Bool)

(declare-fun b_next!64447 () Bool)

(assert (=> b!2157541 (= b_free!63743 (not b_next!64447))))

(declare-fun tp!672264 () Bool)

(declare-fun b_and!173359 () Bool)

(assert (=> b!2157541 (= tp!672264 b_and!173359)))

(declare-fun b!2157537 () Bool)

(declare-fun e!1380269 () Bool)

(declare-fun e!1380273 () Bool)

(assert (=> b!2157537 (= e!1380269 e!1380273)))

(declare-fun b!2157538 () Bool)

(declare-fun e!1380276 () Bool)

(assert (=> b!2157538 (= e!1380276 e!1380269)))

(declare-fun mapNonEmpty!13877 () Bool)

(declare-fun mapRes!13877 () Bool)

(declare-fun tp!672266 () Bool)

(declare-fun tp!672263 () Bool)

(assert (=> mapNonEmpty!13877 (= mapRes!13877 (and tp!672266 tp!672263))))

(declare-datatypes ((C!12020 0))(
  ( (C!12021 (val!6996 Int)) )
))
(declare-datatypes ((Regex!5937 0))(
  ( (ElementMatch!5937 (c!341627 C!12020)) (Concat!10239 (regOne!12386 Regex!5937) (regTwo!12386 Regex!5937)) (EmptyExpr!5937) (Star!5937 (reg!6266 Regex!5937)) (EmptyLang!5937) (Union!5937 (regOne!12387 Regex!5937) (regTwo!12387 Regex!5937)) )
))
(declare-datatypes ((List!25017 0))(
  ( (Nil!24933) (Cons!24933 (h!30334 Regex!5937) (t!197565 List!25017)) )
))
(declare-datatypes ((Context!3014 0))(
  ( (Context!3015 (exprs!2007 List!25017)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3758 0))(
  ( (tuple3!3759 (_1!14661 (InoxSet Context!3014)) (_2!14661 Int) (_3!2349 Int)) )
))
(declare-datatypes ((tuple2!24624 0))(
  ( (tuple2!24625 (_1!14662 tuple3!3758) (_2!14662 Int)) )
))
(declare-datatypes ((List!25018 0))(
  ( (Nil!24934) (Cons!24934 (h!30335 tuple2!24624) (t!197566 List!25018)) )
))
(declare-fun mapValue!13877 () List!25018)

(declare-fun mapRest!13877 () (Array (_ BitVec 32) List!25018))

(declare-fun mapKey!13877 () (_ BitVec 32))

(declare-datatypes ((List!25019 0))(
  ( (Nil!24935) (Cons!24935 (h!30336 C!12020) (t!197567 List!25019)) )
))
(declare-datatypes ((array!10029 0))(
  ( (array!10030 (arr!4472 (Array (_ BitVec 32) (_ BitVec 64))) (size!19481 (_ BitVec 32))) )
))
(declare-datatypes ((array!10031 0))(
  ( (array!10032 (arr!4473 (Array (_ BitVec 32) List!25018)) (size!19482 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5876 0))(
  ( (LongMapFixedSize!5877 (defaultEntry!3303 Int) (mask!7222 (_ BitVec 32)) (extraKeys!3186 (_ BitVec 32)) (zeroValue!3196 List!25018) (minValue!3196 List!25018) (_size!5927 (_ BitVec 32)) (_keys!3235 array!10029) (_values!3218 array!10031) (_vacant!2999 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11577 0))(
  ( (Cell!11578 (v!29339 LongMapFixedSize!5876)) )
))
(declare-datatypes ((MutLongMap!2938 0))(
  ( (LongMap!2938 (underlying!6071 Cell!11577)) (MutLongMapExt!2937 (__x!16990 Int)) )
))
(declare-datatypes ((Cell!11579 0))(
  ( (Cell!11580 (v!29340 MutLongMap!2938)) )
))
(declare-datatypes ((Hashable!2852 0))(
  ( (HashableExt!2851 (__x!16991 Int)) )
))
(declare-datatypes ((MutableMap!2852 0))(
  ( (MutableMapExt!2851 (__x!16992 Int)) (HashMap!2852 (underlying!6072 Cell!11579) (hashF!4775 Hashable!2852) (_size!5928 (_ BitVec 32)) (defaultValue!3014 Int)) )
))
(declare-datatypes ((IArray!16151 0))(
  ( (IArray!16152 (innerList!8133 List!25019)) )
))
(declare-datatypes ((Conc!8073 0))(
  ( (Node!8073 (left!19188 Conc!8073) (right!19518 Conc!8073) (csize!16376 Int) (cheight!8284 Int)) (Leaf!11809 (xs!11015 IArray!16151) (csize!16377 Int)) (Empty!8073) )
))
(declare-datatypes ((BalanceConc!15908 0))(
  ( (BalanceConc!15909 (c!341628 Conc!8073)) )
))
(declare-datatypes ((CacheFurthestNullable!1062 0))(
  ( (CacheFurthestNullable!1063 (cache!3233 MutableMap!2852) (totalInput!3383 BalanceConc!15908)) )
))
(declare-fun thiss!29220 () CacheFurthestNullable!1062)

(assert (=> mapNonEmpty!13877 (= (arr!4473 (_values!3218 (v!29339 (underlying!6071 (v!29340 (underlying!6072 (cache!3233 thiss!29220))))))) (store mapRest!13877 mapKey!13877 mapValue!13877))))

(declare-fun b!2157539 () Bool)

(declare-fun e!1380279 () Bool)

(assert (=> b!2157539 (= e!1380279 false)))

(declare-fun lt!801709 () Bool)

(declare-fun z!540 () (InoxSet Context!3014))

(declare-fun nullableZipper!228 ((InoxSet Context!3014)) Bool)

(assert (=> b!2157539 (= lt!801709 (nullableZipper!228 z!540))))

(declare-fun e!1380268 () Bool)

(declare-fun e!1380277 () Bool)

(assert (=> b!2157540 (= e!1380268 (and e!1380277 tp!672260))))

(declare-fun e!1380272 () Bool)

(declare-fun tp!672262 () Bool)

(declare-fun tp!672257 () Bool)

(declare-fun array_inv!3206 (array!10029) Bool)

(declare-fun array_inv!3207 (array!10031) Bool)

(assert (=> b!2157541 (= e!1380273 (and tp!672264 tp!672262 tp!672257 (array_inv!3206 (_keys!3235 (v!29339 (underlying!6071 (v!29340 (underlying!6072 (cache!3233 thiss!29220))))))) (array_inv!3207 (_values!3218 (v!29339 (underlying!6071 (v!29340 (underlying!6072 (cache!3233 thiss!29220))))))) e!1380272))))

(declare-fun b!2157542 () Bool)

(declare-fun e!1380274 () Bool)

(declare-fun tp!672258 () Bool)

(declare-fun inv!32985 (Conc!8073) Bool)

(assert (=> b!2157542 (= e!1380274 (and (inv!32985 (c!341628 (totalInput!3383 thiss!29220))) tp!672258))))

(declare-fun b!2157543 () Bool)

(declare-fun e!1380271 () Bool)

(declare-fun tp!672265 () Bool)

(assert (=> b!2157543 (= e!1380271 tp!672265)))

(declare-fun b!2157544 () Bool)

(declare-fun res!929834 () Bool)

(assert (=> b!2157544 (=> (not res!929834) (not e!1380279))))

(declare-fun from!970 () Int)

(assert (=> b!2157544 (= res!929834 (>= from!970 0))))

(declare-fun b!2157545 () Bool)

(declare-fun res!929837 () Bool)

(assert (=> b!2157545 (=> (not res!929837) (not e!1380279))))

(declare-fun size!19483 (BalanceConc!15908) Int)

(assert (=> b!2157545 (= res!929837 (<= from!970 (size!19483 (totalInput!3383 thiss!29220))))))

(declare-fun res!929836 () Bool)

(assert (=> start!209316 (=> (not res!929836) (not e!1380279))))

(declare-fun localTotalInput!17 () BalanceConc!15908)

(assert (=> start!209316 (= res!929836 (= localTotalInput!17 (totalInput!3383 thiss!29220)))))

(assert (=> start!209316 e!1380279))

(declare-fun e!1380275 () Bool)

(declare-fun inv!32986 (BalanceConc!15908) Bool)

(assert (=> start!209316 (and (inv!32986 localTotalInput!17) e!1380275)))

(assert (=> start!209316 true))

(declare-fun condSetEmpty!17794 () Bool)

(assert (=> start!209316 (= condSetEmpty!17794 (= z!540 ((as const (Array Context!3014 Bool)) false)))))

(declare-fun setRes!17794 () Bool)

(assert (=> start!209316 setRes!17794))

(declare-fun e!1380278 () Bool)

(declare-fun inv!32987 (CacheFurthestNullable!1062) Bool)

(assert (=> start!209316 (and (inv!32987 thiss!29220) e!1380278)))

(declare-fun b!2157546 () Bool)

(declare-fun res!929838 () Bool)

(assert (=> b!2157546 (=> (not res!929838) (not e!1380279))))

(declare-fun validCacheMapFurthestNullable!178 (MutableMap!2852 BalanceConc!15908) Bool)

(assert (=> b!2157546 (= res!929838 (validCacheMapFurthestNullable!178 (cache!3233 thiss!29220) (totalInput!3383 thiss!29220)))))

(declare-fun b!2157547 () Bool)

(declare-fun res!929835 () Bool)

(assert (=> b!2157547 (=> (not res!929835) (not e!1380279))))

(declare-fun lastNullablePos!109 () Int)

(assert (=> b!2157547 (= res!929835 (and (>= lastNullablePos!109 (- 1)) (< lastNullablePos!109 from!970)))))

(declare-fun mapIsEmpty!13877 () Bool)

(assert (=> mapIsEmpty!13877 mapRes!13877))

(declare-fun b!2157548 () Bool)

(declare-fun tp!672259 () Bool)

(assert (=> b!2157548 (= e!1380275 (and (inv!32985 (c!341628 localTotalInput!17)) tp!672259))))

(declare-fun setIsEmpty!17794 () Bool)

(assert (=> setIsEmpty!17794 setRes!17794))

(declare-fun b!2157549 () Bool)

(assert (=> b!2157549 (= e!1380278 (and e!1380268 (inv!32986 (totalInput!3383 thiss!29220)) e!1380274))))

(declare-fun tp!672256 () Bool)

(declare-fun setNonEmpty!17794 () Bool)

(declare-fun setElem!17794 () Context!3014)

(declare-fun inv!32988 (Context!3014) Bool)

(assert (=> setNonEmpty!17794 (= setRes!17794 (and tp!672256 (inv!32988 setElem!17794) e!1380271))))

(declare-fun setRest!17794 () (InoxSet Context!3014))

(assert (=> setNonEmpty!17794 (= z!540 ((_ map or) (store ((as const (Array Context!3014 Bool)) false) setElem!17794 true) setRest!17794))))

(declare-fun b!2157550 () Bool)

(declare-fun lt!801710 () MutLongMap!2938)

(get-info :version)

(assert (=> b!2157550 (= e!1380277 (and e!1380276 ((_ is LongMap!2938) lt!801710)))))

(assert (=> b!2157550 (= lt!801710 (v!29340 (underlying!6072 (cache!3233 thiss!29220))))))

(declare-fun b!2157551 () Bool)

(declare-fun tp!672261 () Bool)

(assert (=> b!2157551 (= e!1380272 (and tp!672261 mapRes!13877))))

(declare-fun condMapEmpty!13877 () Bool)

(declare-fun mapDefault!13877 () List!25018)

(assert (=> b!2157551 (= condMapEmpty!13877 (= (arr!4473 (_values!3218 (v!29339 (underlying!6071 (v!29340 (underlying!6072 (cache!3233 thiss!29220))))))) ((as const (Array (_ BitVec 32) List!25018)) mapDefault!13877)))))

(assert (= (and start!209316 res!929836) b!2157546))

(assert (= (and b!2157546 res!929838) b!2157544))

(assert (= (and b!2157544 res!929834) b!2157545))

(assert (= (and b!2157545 res!929837) b!2157547))

(assert (= (and b!2157547 res!929835) b!2157539))

(assert (= start!209316 b!2157548))

(assert (= (and start!209316 condSetEmpty!17794) setIsEmpty!17794))

(assert (= (and start!209316 (not condSetEmpty!17794)) setNonEmpty!17794))

(assert (= setNonEmpty!17794 b!2157543))

(assert (= (and b!2157551 condMapEmpty!13877) mapIsEmpty!13877))

(assert (= (and b!2157551 (not condMapEmpty!13877)) mapNonEmpty!13877))

(assert (= b!2157541 b!2157551))

(assert (= b!2157537 b!2157541))

(assert (= b!2157538 b!2157537))

(assert (= (and b!2157550 ((_ is LongMap!2938) (v!29340 (underlying!6072 (cache!3233 thiss!29220))))) b!2157538))

(assert (= b!2157540 b!2157550))

(assert (= (and b!2157549 ((_ is HashMap!2852) (cache!3233 thiss!29220))) b!2157540))

(assert (= b!2157549 b!2157542))

(assert (= start!209316 b!2157549))

(declare-fun m!2597749 () Bool)

(assert (=> start!209316 m!2597749))

(declare-fun m!2597751 () Bool)

(assert (=> start!209316 m!2597751))

(declare-fun m!2597753 () Bool)

(assert (=> setNonEmpty!17794 m!2597753))

(declare-fun m!2597755 () Bool)

(assert (=> b!2157545 m!2597755))

(declare-fun m!2597757 () Bool)

(assert (=> b!2157541 m!2597757))

(declare-fun m!2597759 () Bool)

(assert (=> b!2157541 m!2597759))

(declare-fun m!2597761 () Bool)

(assert (=> b!2157549 m!2597761))

(declare-fun m!2597763 () Bool)

(assert (=> b!2157539 m!2597763))

(declare-fun m!2597765 () Bool)

(assert (=> b!2157546 m!2597765))

(declare-fun m!2597767 () Bool)

(assert (=> b!2157542 m!2597767))

(declare-fun m!2597769 () Bool)

(assert (=> b!2157548 m!2597769))

(declare-fun m!2597771 () Bool)

(assert (=> mapNonEmpty!13877 m!2597771))

(check-sat (not b!2157551) (not setNonEmpty!17794) (not start!209316) (not b!2157541) (not b!2157539) (not b!2157546) (not b_next!64447) (not b_next!64445) (not b!2157543) (not b!2157542) (not mapNonEmpty!13877) (not b!2157548) b_and!173357 (not b!2157549) b_and!173359 (not b!2157545))
(check-sat b_and!173359 b_and!173357 (not b_next!64447) (not b_next!64445))
