; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208608 () Bool)

(assert start!208608)

(declare-fun b!2150666 () Bool)

(declare-fun b_free!63525 () Bool)

(declare-fun b_next!64229 () Bool)

(assert (=> b!2150666 (= b_free!63525 (not b_next!64229))))

(declare-fun tp!668227 () Bool)

(declare-fun b_and!173137 () Bool)

(assert (=> b!2150666 (= tp!668227 b_and!173137)))

(declare-fun b!2150673 () Bool)

(declare-fun b_free!63527 () Bool)

(declare-fun b_next!64231 () Bool)

(assert (=> b!2150673 (= b_free!63527 (not b_next!64231))))

(declare-fun tp!668228 () Bool)

(declare-fun b_and!173139 () Bool)

(assert (=> b!2150673 (= tp!668228 b_and!173139)))

(declare-fun b!2150663 () Bool)

(declare-fun e!1375302 () Bool)

(declare-fun e!1375312 () Bool)

(assert (=> b!2150663 (= e!1375302 e!1375312)))

(declare-fun b!2150664 () Bool)

(declare-fun res!927472 () Bool)

(declare-fun e!1375309 () Bool)

(assert (=> b!2150664 (=> (not res!927472) (not e!1375309))))

(declare-datatypes ((C!11864 0))(
  ( (C!11865 (val!6918 Int)) )
))
(declare-datatypes ((List!24742 0))(
  ( (Nil!24658) (Cons!24658 (h!30059 C!11864) (t!197288 List!24742)) )
))
(declare-datatypes ((Regex!5859 0))(
  ( (ElementMatch!5859 (c!341190 C!11864)) (Concat!10161 (regOne!12230 Regex!5859) (regTwo!12230 Regex!5859)) (EmptyExpr!5859) (Star!5859 (reg!6188 Regex!5859)) (EmptyLang!5859) (Union!5859 (regOne!12231 Regex!5859) (regTwo!12231 Regex!5859)) )
))
(declare-datatypes ((List!24743 0))(
  ( (Nil!24659) (Cons!24659 (h!30060 Regex!5859) (t!197289 List!24743)) )
))
(declare-datatypes ((Context!2858 0))(
  ( (Context!2859 (exprs!1929 List!24743)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3650 0))(
  ( (tuple3!3651 (_1!14539 (InoxSet Context!2858)) (_2!14539 Int) (_3!2295 Int)) )
))
(declare-datatypes ((tuple2!24488 0))(
  ( (tuple2!24489 (_1!14540 tuple3!3650) (_2!14540 Int)) )
))
(declare-datatypes ((List!24744 0))(
  ( (Nil!24660) (Cons!24660 (h!30061 tuple2!24488) (t!197290 List!24744)) )
))
(declare-datatypes ((array!9773 0))(
  ( (array!9774 (arr!4364 (Array (_ BitVec 32) (_ BitVec 64))) (size!19316 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2798 0))(
  ( (HashableExt!2797 (__x!16828 Int)) )
))
(declare-datatypes ((array!9775 0))(
  ( (array!9776 (arr!4365 (Array (_ BitVec 32) List!24744)) (size!19317 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5768 0))(
  ( (LongMapFixedSize!5769 (defaultEntry!3249 Int) (mask!7129 (_ BitVec 32)) (extraKeys!3132 (_ BitVec 32)) (zeroValue!3142 List!24744) (minValue!3142 List!24744) (_size!5819 (_ BitVec 32)) (_keys!3181 array!9773) (_values!3164 array!9775) (_vacant!2945 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11361 0))(
  ( (Cell!11362 (v!29222 LongMapFixedSize!5768)) )
))
(declare-datatypes ((MutLongMap!2884 0))(
  ( (LongMap!2884 (underlying!5963 Cell!11361)) (MutLongMapExt!2883 (__x!16829 Int)) )
))
(declare-datatypes ((Cell!11363 0))(
  ( (Cell!11364 (v!29223 MutLongMap!2884)) )
))
(declare-datatypes ((MutableMap!2798 0))(
  ( (MutableMapExt!2797 (__x!16830 Int)) (HashMap!2798 (underlying!5964 Cell!11363) (hashF!4721 Hashable!2798) (_size!5820 (_ BitVec 32)) (defaultValue!2960 Int)) )
))
(declare-datatypes ((IArray!15995 0))(
  ( (IArray!15996 (innerList!8055 List!24742)) )
))
(declare-datatypes ((Conc!7995 0))(
  ( (Node!7995 (left!18939 Conc!7995) (right!19269 Conc!7995) (csize!16220 Int) (cheight!8206 Int)) (Leaf!11692 (xs!10937 IArray!15995) (csize!16221 Int)) (Empty!7995) )
))
(declare-datatypes ((BalanceConc!15752 0))(
  ( (BalanceConc!15753 (c!341191 Conc!7995)) )
))
(declare-datatypes ((CacheFurthestNullable!954 0))(
  ( (CacheFurthestNullable!955 (cache!3179 MutableMap!2798) (totalInput!3254 BalanceConc!15752)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!954)

(declare-fun validCacheMapFurthestNullable!151 (MutableMap!2798 BalanceConc!15752) Bool)

(assert (=> b!2150664 (= res!927472 (validCacheMapFurthestNullable!151 (cache!3179 thiss!29110) (totalInput!3254 thiss!29110)))))

(declare-fun b!2150665 () Bool)

(declare-fun e!1375307 () Bool)

(declare-fun tp!668223 () Bool)

(assert (=> b!2150665 (= e!1375307 tp!668223)))

(declare-fun e!1375305 () Bool)

(declare-fun tp!668225 () Bool)

(declare-fun tp!668224 () Bool)

(declare-fun e!1375303 () Bool)

(declare-fun array_inv!3128 (array!9773) Bool)

(declare-fun array_inv!3129 (array!9775) Bool)

(assert (=> b!2150666 (= e!1375305 (and tp!668227 tp!668225 tp!668224 (array_inv!3128 (_keys!3181 (v!29222 (underlying!5963 (v!29223 (underlying!5964 (cache!3179 thiss!29110))))))) (array_inv!3129 (_values!3164 (v!29222 (underlying!5963 (v!29223 (underlying!5964 (cache!3179 thiss!29110))))))) e!1375303))))

(declare-fun mapNonEmpty!13655 () Bool)

(declare-fun mapRes!13655 () Bool)

(declare-fun tp!668221 () Bool)

(declare-fun tp!668230 () Bool)

(assert (=> mapNonEmpty!13655 (= mapRes!13655 (and tp!668221 tp!668230))))

(declare-fun mapValue!13655 () List!24744)

(declare-fun mapKey!13655 () (_ BitVec 32))

(declare-fun mapRest!13655 () (Array (_ BitVec 32) List!24744))

(assert (=> mapNonEmpty!13655 (= (arr!4365 (_values!3164 (v!29222 (underlying!5963 (v!29223 (underlying!5964 (cache!3179 thiss!29110))))))) (store mapRest!13655 mapKey!13655 mapValue!13655))))

(declare-fun res!927474 () Bool)

(assert (=> start!208608 (=> (not res!927474) (not e!1375309))))

(declare-fun lastNullablePos!91 () Int)

(declare-fun localTotalInput!13 () BalanceConc!15752)

(declare-fun from!952 () Int)

(assert (=> start!208608 (= res!927474 (and (= localTotalInput!13 (totalInput!3254 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208608 e!1375309))

(declare-fun condSetEmpty!17176 () Bool)

(declare-fun z!514 () (InoxSet Context!2858))

(assert (=> start!208608 (= condSetEmpty!17176 (= z!514 ((as const (Array Context!2858 Bool)) false)))))

(declare-fun setRes!17176 () Bool)

(assert (=> start!208608 setRes!17176))

(assert (=> start!208608 true))

(declare-fun e!1375308 () Bool)

(declare-fun inv!32488 (CacheFurthestNullable!954) Bool)

(assert (=> start!208608 (and (inv!32488 thiss!29110) e!1375308)))

(declare-fun e!1375306 () Bool)

(declare-fun inv!32489 (BalanceConc!15752) Bool)

(assert (=> start!208608 (and (inv!32489 localTotalInput!13) e!1375306)))

(declare-fun b!2150667 () Bool)

(declare-fun e!1375304 () Bool)

(assert (=> b!2150667 (= e!1375304 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun b!2150668 () Bool)

(declare-fun e!1375311 () Bool)

(declare-fun e!1375314 () Bool)

(assert (=> b!2150668 (= e!1375308 (and e!1375314 (inv!32489 (totalInput!3254 thiss!29110)) e!1375311))))

(declare-fun b!2150669 () Bool)

(declare-fun e!1375310 () Bool)

(declare-fun lt!800804 () MutLongMap!2884)

(get-info :version)

(assert (=> b!2150669 (= e!1375310 (and e!1375302 ((_ is LongMap!2884) lt!800804)))))

(assert (=> b!2150669 (= lt!800804 (v!29223 (underlying!5964 (cache!3179 thiss!29110))))))

(declare-fun b!2150670 () Bool)

(assert (=> b!2150670 (= e!1375309 (not true))))

(declare-fun lt!800803 () Bool)

(declare-fun contains!4228 (MutableMap!2798 tuple3!3650) Bool)

(assert (=> b!2150670 (= lt!800803 (contains!4228 (cache!3179 thiss!29110) (tuple3!3651 z!514 from!952 lastNullablePos!91)))))

(assert (=> b!2150670 (validCacheMapFurthestNullable!151 (cache!3179 thiss!29110) localTotalInput!13)))

(declare-fun setIsEmpty!17176 () Bool)

(assert (=> setIsEmpty!17176 setRes!17176))

(declare-fun b!2150671 () Bool)

(declare-fun tp!668222 () Bool)

(assert (=> b!2150671 (= e!1375303 (and tp!668222 mapRes!13655))))

(declare-fun condMapEmpty!13655 () Bool)

(declare-fun mapDefault!13655 () List!24744)

(assert (=> b!2150671 (= condMapEmpty!13655 (= (arr!4365 (_values!3164 (v!29222 (underlying!5963 (v!29223 (underlying!5964 (cache!3179 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24744)) mapDefault!13655)))))

(declare-fun mapIsEmpty!13655 () Bool)

(assert (=> mapIsEmpty!13655 mapRes!13655))

(declare-fun setElem!17176 () Context!2858)

(declare-fun tp!668231 () Bool)

(declare-fun setNonEmpty!17176 () Bool)

(declare-fun inv!32490 (Context!2858) Bool)

(assert (=> setNonEmpty!17176 (= setRes!17176 (and tp!668231 (inv!32490 setElem!17176) e!1375307))))

(declare-fun setRest!17176 () (InoxSet Context!2858))

(assert (=> setNonEmpty!17176 (= z!514 ((_ map or) (store ((as const (Array Context!2858 Bool)) false) setElem!17176 true) setRest!17176))))

(declare-fun b!2150672 () Bool)

(declare-fun tp!668226 () Bool)

(declare-fun inv!32491 (Conc!7995) Bool)

(assert (=> b!2150672 (= e!1375311 (and (inv!32491 (c!341191 (totalInput!3254 thiss!29110))) tp!668226))))

(assert (=> b!2150673 (= e!1375314 (and e!1375310 tp!668228))))

(declare-fun b!2150674 () Bool)

(assert (=> b!2150674 (= e!1375312 e!1375305)))

(declare-fun b!2150675 () Bool)

(declare-fun tp!668229 () Bool)

(assert (=> b!2150675 (= e!1375306 (and (inv!32491 (c!341191 localTotalInput!13)) tp!668229))))

(declare-fun b!2150676 () Bool)

(declare-fun res!927473 () Bool)

(assert (=> b!2150676 (=> (not res!927473) (not e!1375309))))

(assert (=> b!2150676 (= res!927473 e!1375304)))

(declare-fun res!927471 () Bool)

(assert (=> b!2150676 (=> res!927471 e!1375304)))

(declare-fun nullableZipper!194 ((InoxSet Context!2858)) Bool)

(assert (=> b!2150676 (= res!927471 (not (nullableZipper!194 z!514)))))

(assert (= (and start!208608 res!927474) b!2150676))

(assert (= (and b!2150676 (not res!927471)) b!2150667))

(assert (= (and b!2150676 res!927473) b!2150664))

(assert (= (and b!2150664 res!927472) b!2150670))

(assert (= (and start!208608 condSetEmpty!17176) setIsEmpty!17176))

(assert (= (and start!208608 (not condSetEmpty!17176)) setNonEmpty!17176))

(assert (= setNonEmpty!17176 b!2150665))

(assert (= (and b!2150671 condMapEmpty!13655) mapIsEmpty!13655))

(assert (= (and b!2150671 (not condMapEmpty!13655)) mapNonEmpty!13655))

(assert (= b!2150666 b!2150671))

(assert (= b!2150674 b!2150666))

(assert (= b!2150663 b!2150674))

(assert (= (and b!2150669 ((_ is LongMap!2884) (v!29223 (underlying!5964 (cache!3179 thiss!29110))))) b!2150663))

(assert (= b!2150673 b!2150669))

(assert (= (and b!2150668 ((_ is HashMap!2798) (cache!3179 thiss!29110))) b!2150673))

(assert (= b!2150668 b!2150672))

(assert (= start!208608 b!2150668))

(assert (= start!208608 b!2150675))

(declare-fun m!2593356 () Bool)

(assert (=> b!2150675 m!2593356))

(declare-fun m!2593358 () Bool)

(assert (=> mapNonEmpty!13655 m!2593358))

(declare-fun m!2593360 () Bool)

(assert (=> b!2150668 m!2593360))

(declare-fun m!2593362 () Bool)

(assert (=> b!2150666 m!2593362))

(declare-fun m!2593364 () Bool)

(assert (=> b!2150666 m!2593364))

(declare-fun m!2593366 () Bool)

(assert (=> setNonEmpty!17176 m!2593366))

(declare-fun m!2593368 () Bool)

(assert (=> b!2150670 m!2593368))

(declare-fun m!2593370 () Bool)

(assert (=> b!2150670 m!2593370))

(declare-fun m!2593372 () Bool)

(assert (=> b!2150672 m!2593372))

(declare-fun m!2593374 () Bool)

(assert (=> b!2150664 m!2593374))

(declare-fun m!2593376 () Bool)

(assert (=> b!2150676 m!2593376))

(declare-fun m!2593378 () Bool)

(assert (=> start!208608 m!2593378))

(declare-fun m!2593380 () Bool)

(assert (=> start!208608 m!2593380))

(check-sat (not b!2150665) (not b_next!64229) b_and!173139 (not b!2150671) (not b_next!64231) (not b!2150666) (not setNonEmpty!17176) (not start!208608) (not b!2150670) (not b!2150676) (not b!2150664) (not mapNonEmpty!13655) (not b!2150668) (not b!2150675) b_and!173137 (not b!2150672))
(check-sat b_and!173139 b_and!173137 (not b_next!64229) (not b_next!64231))
