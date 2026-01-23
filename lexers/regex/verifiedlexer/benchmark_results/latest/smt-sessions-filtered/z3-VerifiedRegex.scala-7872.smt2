; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411898 () Bool)

(assert start!411898)

(declare-fun b!4289042 () Bool)

(declare-fun b_free!127303 () Bool)

(declare-fun b_next!128007 () Bool)

(assert (=> b!4289042 (= b_free!127303 (not b_next!128007))))

(declare-fun tp!1314580 () Bool)

(declare-fun b_and!338519 () Bool)

(assert (=> b!4289042 (= tp!1314580 b_and!338519)))

(declare-fun b!4289037 () Bool)

(declare-fun b_free!127305 () Bool)

(declare-fun b_next!128009 () Bool)

(assert (=> b!4289037 (= b_free!127305 (not b_next!128009))))

(declare-fun tp!1314591 () Bool)

(declare-fun b_and!338521 () Bool)

(assert (=> b!4289037 (= tp!1314591 b_and!338521)))

(declare-fun b!4289038 () Bool)

(declare-fun b_free!127307 () Bool)

(declare-fun b_next!128011 () Bool)

(assert (=> b!4289038 (= b_free!127307 (not b_next!128011))))

(declare-fun tp!1314586 () Bool)

(declare-fun b_and!338523 () Bool)

(assert (=> b!4289038 (= tp!1314586 b_and!338523)))

(declare-fun b!4289026 () Bool)

(declare-fun b_free!127309 () Bool)

(declare-fun b_next!128013 () Bool)

(assert (=> b!4289026 (= b_free!127309 (not b_next!128013))))

(declare-fun tp!1314596 () Bool)

(declare-fun b_and!338525 () Bool)

(assert (=> b!4289026 (= tp!1314596 b_and!338525)))

(declare-fun b!4289053 () Bool)

(declare-fun b_free!127311 () Bool)

(declare-fun b_next!128015 () Bool)

(assert (=> b!4289053 (= b_free!127311 (not b_next!128015))))

(declare-fun tp!1314588 () Bool)

(declare-fun b_and!338527 () Bool)

(assert (=> b!4289053 (= tp!1314588 b_and!338527)))

(declare-fun b!4289050 () Bool)

(declare-fun b_free!127313 () Bool)

(declare-fun b_next!128017 () Bool)

(assert (=> b!4289050 (= b_free!127313 (not b_next!128017))))

(declare-fun tp!1314598 () Bool)

(declare-fun b_and!338529 () Bool)

(assert (=> b!4289050 (= tp!1314598 b_and!338529)))

(declare-fun e!2663993 () Bool)

(declare-fun e!2663994 () Bool)

(assert (=> b!4289026 (= e!2663993 (and e!2663994 tp!1314596))))

(declare-fun b!4289027 () Bool)

(declare-fun e!2663986 () Bool)

(declare-fun tp!1314597 () Bool)

(declare-fun mapRes!19693 () Bool)

(assert (=> b!4289027 (= e!2663986 (and tp!1314597 mapRes!19693))))

(declare-fun condMapEmpty!19692 () Bool)

(declare-datatypes ((C!26084 0))(
  ( (C!26085 (val!15368 Int)) )
))
(declare-datatypes ((Regex!12943 0))(
  ( (ElementMatch!12943 (c!730206 C!26084)) (Concat!21262 (regOne!26398 Regex!12943) (regTwo!26398 Regex!12943)) (EmptyExpr!12943) (Star!12943 (reg!13272 Regex!12943)) (EmptyLang!12943) (Union!12943 (regOne!26399 Regex!12943) (regTwo!26399 Regex!12943)) )
))
(declare-datatypes ((List!47759 0))(
  ( (Nil!47635) (Cons!47635 (h!53055 Regex!12943) (t!354358 List!47759)) )
))
(declare-datatypes ((Context!5666 0))(
  ( (Context!5667 (exprs!3333 List!47759)) )
))
(declare-datatypes ((array!15624 0))(
  ( (array!15625 (arr!6980 (Array (_ BitVec 32) (_ BitVec 64))) (size!34941 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!45230 0))(
  ( (tuple2!45231 (_1!25816 Context!5666) (_2!25816 C!26084)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45232 0))(
  ( (tuple2!45233 (_1!25817 tuple2!45230) (_2!25817 (InoxSet Context!5666))) )
))
(declare-datatypes ((List!47760 0))(
  ( (Nil!47636) (Cons!47636 (h!53056 tuple2!45232) (t!354359 List!47760)) )
))
(declare-datatypes ((array!15626 0))(
  ( (array!15627 (arr!6981 (Array (_ BitVec 32) List!47760)) (size!34942 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8740 0))(
  ( (LongMapFixedSize!8741 (defaultEntry!4755 Int) (mask!12811 (_ BitVec 32)) (extraKeys!4619 (_ BitVec 32)) (zeroValue!4629 List!47760) (minValue!4629 List!47760) (_size!8783 (_ BitVec 32)) (_keys!4670 array!15624) (_values!4651 array!15626) (_vacant!4431 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17289 0))(
  ( (Cell!17290 (v!41550 LongMapFixedSize!8740)) )
))
(declare-datatypes ((MutLongMap!4370 0))(
  ( (LongMap!4370 (underlying!8969 Cell!17289)) (MutLongMapExt!4369 (__x!29135 Int)) )
))
(declare-datatypes ((Hashable!4286 0))(
  ( (HashableExt!4285 (__x!29136 Int)) )
))
(declare-datatypes ((Cell!17291 0))(
  ( (Cell!17292 (v!41551 MutLongMap!4370)) )
))
(declare-datatypes ((MutableMap!4276 0))(
  ( (MutableMapExt!4275 (__x!29137 Int)) (HashMap!4276 (underlying!8970 Cell!17291) (hashF!6318 Hashable!4286) (_size!8784 (_ BitVec 32)) (defaultValue!4447 Int)) )
))
(declare-datatypes ((CacheUp!2792 0))(
  ( (CacheUp!2793 (cache!4416 MutableMap!4276)) )
))
(declare-fun cacheUp!925 () CacheUp!2792)

(declare-fun mapDefault!19692 () List!47760)

(assert (=> b!4289027 (= condMapEmpty!19692 (= (arr!6981 (_values!4651 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925))))))) ((as const (Array (_ BitVec 32) List!47760)) mapDefault!19692)))))

(declare-fun b!4289028 () Bool)

(declare-fun e!2663995 () Bool)

(declare-fun e!2663992 () Bool)

(declare-fun lt!1516616 () MutLongMap!4370)

(get-info :version)

(assert (=> b!4289028 (= e!2663995 (and e!2663992 ((_ is LongMap!4370) lt!1516616)))))

(assert (=> b!4289028 (= lt!1516616 (v!41551 (underlying!8970 (cache!4416 cacheUp!925))))))

(declare-fun b!4289029 () Bool)

(declare-fun res!1759285 () Bool)

(declare-fun e!2663975 () Bool)

(assert (=> b!4289029 (=> (not res!1759285) (not e!2663975))))

(declare-datatypes ((List!47761 0))(
  ( (Nil!47637) (Cons!47637 (h!53057 C!26084) (t!354360 List!47761)) )
))
(declare-datatypes ((IArray!28831 0))(
  ( (IArray!28832 (innerList!14473 List!47761)) )
))
(declare-datatypes ((Conc!14385 0))(
  ( (Node!14385 (left!35389 Conc!14385) (right!35719 Conc!14385) (csize!29000 Int) (cheight!14596 Int)) (Leaf!22258 (xs!17691 IArray!28831) (csize!29001 Int)) (Empty!14385) )
))
(declare-datatypes ((BalanceConc!28260 0))(
  ( (BalanceConc!28261 (c!730207 Conc!14385)) )
))
(declare-datatypes ((tuple2!45234 0))(
  ( (tuple2!45235 (_1!25818 (InoxSet Context!5666)) (_2!25818 Int)) )
))
(declare-datatypes ((Hashable!4287 0))(
  ( (HashableExt!4286 (__x!29138 Int)) )
))
(declare-datatypes ((tuple2!45236 0))(
  ( (tuple2!45237 (_1!25819 tuple2!45234) (_2!25819 Int)) )
))
(declare-datatypes ((List!47762 0))(
  ( (Nil!47638) (Cons!47638 (h!53058 tuple2!45236) (t!354361 List!47762)) )
))
(declare-datatypes ((array!15628 0))(
  ( (array!15629 (arr!6982 (Array (_ BitVec 32) List!47762)) (size!34943 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8742 0))(
  ( (LongMapFixedSize!8743 (defaultEntry!4756 Int) (mask!12812 (_ BitVec 32)) (extraKeys!4620 (_ BitVec 32)) (zeroValue!4630 List!47762) (minValue!4630 List!47762) (_size!8785 (_ BitVec 32)) (_keys!4671 array!15624) (_values!4652 array!15628) (_vacant!4432 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17293 0))(
  ( (Cell!17294 (v!41552 LongMapFixedSize!8742)) )
))
(declare-datatypes ((MutLongMap!4371 0))(
  ( (LongMap!4371 (underlying!8971 Cell!17293)) (MutLongMapExt!4370 (__x!29139 Int)) )
))
(declare-datatypes ((Cell!17295 0))(
  ( (Cell!17296 (v!41553 MutLongMap!4371)) )
))
(declare-datatypes ((MutableMap!4277 0))(
  ( (MutableMapExt!4276 (__x!29140 Int)) (HashMap!4277 (underlying!8972 Cell!17295) (hashF!6319 Hashable!4287) (_size!8786 (_ BitVec 32)) (defaultValue!4448 Int)) )
))
(declare-datatypes ((tuple3!5402 0))(
  ( (tuple3!5403 (_1!25820 Regex!12943) (_2!25820 Context!5666) (_3!3201 C!26084)) )
))
(declare-datatypes ((tuple2!45238 0))(
  ( (tuple2!45239 (_1!25821 tuple3!5402) (_2!25821 (InoxSet Context!5666))) )
))
(declare-datatypes ((List!47763 0))(
  ( (Nil!47639) (Cons!47639 (h!53059 tuple2!45238) (t!354362 List!47763)) )
))
(declare-datatypes ((array!15630 0))(
  ( (array!15631 (arr!6983 (Array (_ BitVec 32) List!47763)) (size!34944 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8744 0))(
  ( (LongMapFixedSize!8745 (defaultEntry!4757 Int) (mask!12813 (_ BitVec 32)) (extraKeys!4621 (_ BitVec 32)) (zeroValue!4631 List!47763) (minValue!4631 List!47763) (_size!8787 (_ BitVec 32)) (_keys!4672 array!15624) (_values!4653 array!15630) (_vacant!4433 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17297 0))(
  ( (Cell!17298 (v!41554 LongMapFixedSize!8744)) )
))
(declare-datatypes ((MutLongMap!4372 0))(
  ( (LongMap!4372 (underlying!8973 Cell!17297)) (MutLongMapExt!4371 (__x!29141 Int)) )
))
(declare-datatypes ((Cell!17299 0))(
  ( (Cell!17300 (v!41555 MutLongMap!4372)) )
))
(declare-datatypes ((Hashable!4288 0))(
  ( (HashableExt!4287 (__x!29142 Int)) )
))
(declare-datatypes ((MutableMap!4278 0))(
  ( (MutableMapExt!4277 (__x!29143 Int)) (HashMap!4278 (underlying!8974 Cell!17299) (hashF!6320 Hashable!4288) (_size!8788 (_ BitVec 32)) (defaultValue!4449 Int)) )
))
(declare-datatypes ((CacheDown!2910 0))(
  ( (CacheDown!2911 (cache!4417 MutableMap!4278)) )
))
(declare-datatypes ((CacheFindLongestMatch!458 0))(
  ( (CacheFindLongestMatch!459 (cache!4418 MutableMap!4277) (totalInput!4339 BalanceConc!28260)) )
))
(declare-datatypes ((tuple4!1000 0))(
  ( (tuple4!1001 (_1!25822 Int) (_2!25822 CacheUp!2792) (_3!3202 CacheDown!2910) (_4!500 CacheFindLongestMatch!458)) )
))
(declare-fun lt!1516611 () tuple4!1000)

(declare-fun valid!3396 (CacheFindLongestMatch!458) Bool)

(assert (=> b!4289029 (= res!1759285 (valid!3396 (_4!500 lt!1516611)))))

(declare-fun e!2663976 () Bool)

(declare-fun b!4289030 () Bool)

(declare-fun cacheFindLongestMatch!171 () CacheFindLongestMatch!458)

(declare-fun e!2663979 () Bool)

(declare-fun inv!63112 (BalanceConc!28260) Bool)

(assert (=> b!4289030 (= e!2663979 (and e!2663993 (inv!63112 (totalInput!4339 cacheFindLongestMatch!171)) e!2663976))))

(declare-fun b!4289031 () Bool)

(declare-fun e!2663985 () Bool)

(declare-fun e!2663972 () Bool)

(assert (=> b!4289031 (= e!2663985 e!2663972)))

(declare-fun mapIsEmpty!19692 () Bool)

(declare-fun mapRes!19692 () Bool)

(assert (=> mapIsEmpty!19692 mapRes!19692))

(declare-fun b!4289032 () Bool)

(declare-fun lt!1516615 () MutLongMap!4371)

(assert (=> b!4289032 (= e!2663994 (and e!2663985 ((_ is LongMap!4371) lt!1516615)))))

(assert (=> b!4289032 (= lt!1516615 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))

(declare-fun b!4289033 () Bool)

(declare-fun e!2663967 () Bool)

(declare-fun e!2663989 () Bool)

(assert (=> b!4289033 (= e!2663967 e!2663989)))

(declare-fun b!4289034 () Bool)

(declare-fun e!2663991 () Bool)

(assert (=> b!4289034 (= e!2663972 e!2663991)))

(declare-fun b!4289035 () Bool)

(declare-fun e!2663974 () Bool)

(declare-fun e!2663978 () Bool)

(declare-fun lt!1516612 () MutLongMap!4372)

(assert (=> b!4289035 (= e!2663974 (and e!2663978 ((_ is LongMap!4372) lt!1516612)))))

(declare-fun cacheDown!1044 () CacheDown!2910)

(assert (=> b!4289035 (= lt!1516612 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044))))))

(declare-fun setIsEmpty!26267 () Bool)

(declare-fun setRes!26267 () Bool)

(assert (=> setIsEmpty!26267 setRes!26267))

(declare-fun mapNonEmpty!19692 () Bool)

(declare-fun tp!1314594 () Bool)

(declare-fun tp!1314579 () Bool)

(assert (=> mapNonEmpty!19692 (= mapRes!19692 (and tp!1314594 tp!1314579))))

(declare-fun mapValue!19693 () List!47763)

(declare-fun mapKey!19692 () (_ BitVec 32))

(declare-fun mapRest!19692 () (Array (_ BitVec 32) List!47763))

(assert (=> mapNonEmpty!19692 (= (arr!6983 (_values!4653 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044))))))) (store mapRest!19692 mapKey!19692 mapValue!19693))))

(declare-fun b!4289036 () Bool)

(declare-fun e!2663973 () Bool)

(declare-fun tp!1314602 () Bool)

(assert (=> b!4289036 (= e!2663973 (and tp!1314602 mapRes!19692))))

(declare-fun condMapEmpty!19694 () Bool)

(declare-fun mapDefault!19693 () List!47763)

(assert (=> b!4289036 (= condMapEmpty!19694 (= (arr!6983 (_values!4653 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044))))))) ((as const (Array (_ BitVec 32) List!47763)) mapDefault!19693)))))

(declare-fun e!2663980 () Bool)

(assert (=> b!4289037 (= e!2663980 (and e!2663974 tp!1314591))))

(declare-fun tp!1314604 () Bool)

(declare-fun e!2663987 () Bool)

(declare-fun tp!1314590 () Bool)

(declare-fun array_inv!5007 (array!15624) Bool)

(declare-fun array_inv!5008 (array!15628) Bool)

(assert (=> b!4289038 (= e!2663991 (and tp!1314586 tp!1314604 tp!1314590 (array_inv!5007 (_keys!4671 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))) (array_inv!5008 (_values!4652 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))) e!2663987))))

(declare-fun res!1759287 () Bool)

(declare-fun e!2663982 () Bool)

(assert (=> start!411898 (=> (not res!1759287) (not e!2663982))))

(declare-fun input!5500 () BalanceConc!28260)

(declare-fun totalInput!793 () BalanceConc!28260)

(declare-fun isSuffix!1031 (List!47761 List!47761) Bool)

(declare-fun list!17348 (BalanceConc!28260) List!47761)

(assert (=> start!411898 (= res!1759287 (isSuffix!1031 (list!17348 input!5500) (list!17348 totalInput!793)))))

(assert (=> start!411898 e!2663982))

(declare-fun e!2663971 () Bool)

(assert (=> start!411898 (and (inv!63112 totalInput!793) e!2663971)))

(declare-fun e!2663984 () Bool)

(assert (=> start!411898 (and (inv!63112 input!5500) e!2663984)))

(declare-fun inv!63113 (CacheFindLongestMatch!458) Bool)

(assert (=> start!411898 (and (inv!63113 cacheFindLongestMatch!171) e!2663979)))

(declare-fun e!2663970 () Bool)

(declare-fun inv!63114 (CacheUp!2792) Bool)

(assert (=> start!411898 (and (inv!63114 cacheUp!925) e!2663970)))

(declare-fun e!2663988 () Bool)

(declare-fun inv!63115 (CacheDown!2910) Bool)

(assert (=> start!411898 (and (inv!63115 cacheDown!1044) e!2663988)))

(declare-fun condSetEmpty!26267 () Bool)

(declare-fun z!3746 () (InoxSet Context!5666))

(assert (=> start!411898 (= condSetEmpty!26267 (= z!3746 ((as const (Array Context!5666 Bool)) false)))))

(assert (=> start!411898 setRes!26267))

(declare-fun b!4289039 () Bool)

(declare-fun tp!1314583 () Bool)

(declare-fun inv!63116 (Conc!14385) Bool)

(assert (=> b!4289039 (= e!2663976 (and (inv!63116 (c!730207 (totalInput!4339 cacheFindLongestMatch!171))) tp!1314583))))

(declare-fun b!4289040 () Bool)

(assert (=> b!4289040 (= e!2663988 e!2663980)))

(declare-fun b!4289041 () Bool)

(declare-fun tp!1314585 () Bool)

(declare-fun mapRes!19694 () Bool)

(assert (=> b!4289041 (= e!2663987 (and tp!1314585 mapRes!19694))))

(declare-fun condMapEmpty!19693 () Bool)

(declare-fun mapDefault!19694 () List!47762)

(assert (=> b!4289041 (= condMapEmpty!19693 (= (arr!6982 (_values!4652 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))) ((as const (Array (_ BitVec 32) List!47762)) mapDefault!19694)))))

(declare-fun mapNonEmpty!19693 () Bool)

(declare-fun tp!1314603 () Bool)

(declare-fun tp!1314581 () Bool)

(assert (=> mapNonEmpty!19693 (= mapRes!19693 (and tp!1314603 tp!1314581))))

(declare-fun mapKey!19694 () (_ BitVec 32))

(declare-fun mapValue!19692 () List!47760)

(declare-fun mapRest!19693 () (Array (_ BitVec 32) List!47760))

(assert (=> mapNonEmpty!19693 (= (arr!6981 (_values!4651 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925))))))) (store mapRest!19693 mapKey!19694 mapValue!19692))))

(declare-fun tp!1314599 () Bool)

(declare-fun tp!1314593 () Bool)

(declare-fun e!2663983 () Bool)

(declare-fun array_inv!5009 (array!15626) Bool)

(assert (=> b!4289042 (= e!2663983 (and tp!1314580 tp!1314593 tp!1314599 (array_inv!5007 (_keys!4670 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925))))))) (array_inv!5009 (_values!4651 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925))))))) e!2663986))))

(declare-fun b!4289043 () Bool)

(assert (=> b!4289043 (= e!2663978 e!2663967)))

(declare-fun b!4289044 () Bool)

(declare-fun e!2663990 () Bool)

(assert (=> b!4289044 (= e!2663992 e!2663990)))

(declare-fun mapNonEmpty!19694 () Bool)

(declare-fun tp!1314592 () Bool)

(declare-fun tp!1314601 () Bool)

(assert (=> mapNonEmpty!19694 (= mapRes!19694 (and tp!1314592 tp!1314601))))

(declare-fun mapRest!19694 () (Array (_ BitVec 32) List!47762))

(declare-fun mapValue!19694 () List!47762)

(declare-fun mapKey!19693 () (_ BitVec 32))

(assert (=> mapNonEmpty!19694 (= (arr!6982 (_values!4652 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))) (store mapRest!19694 mapKey!19693 mapValue!19694))))

(declare-fun b!4289045 () Bool)

(declare-fun res!1759282 () Bool)

(assert (=> b!4289045 (=> (not res!1759282) (not e!2663975))))

(declare-fun valid!3397 (CacheUp!2792) Bool)

(assert (=> b!4289045 (= res!1759282 (valid!3397 (_2!25822 lt!1516611)))))

(declare-fun b!4289046 () Bool)

(declare-fun e!2663981 () Bool)

(assert (=> b!4289046 (= e!2663970 e!2663981)))

(declare-fun b!4289047 () Bool)

(assert (=> b!4289047 (= e!2663990 e!2663983)))

(declare-fun b!4289048 () Bool)

(declare-fun res!1759283 () Bool)

(assert (=> b!4289048 (=> (not res!1759283) (not e!2663982))))

(assert (=> b!4289048 (= res!1759283 (= (totalInput!4339 cacheFindLongestMatch!171) totalInput!793))))

(declare-fun b!4289049 () Bool)

(declare-fun res!1759286 () Bool)

(assert (=> b!4289049 (=> (not res!1759286) (not e!2663975))))

(declare-fun valid!3398 (CacheDown!2910) Bool)

(assert (=> b!4289049 (= res!1759286 (valid!3398 (_3!3202 lt!1516611)))))

(declare-fun mapIsEmpty!19693 () Bool)

(assert (=> mapIsEmpty!19693 mapRes!19694))

(declare-fun tp!1314600 () Bool)

(declare-fun tp!1314582 () Bool)

(declare-fun array_inv!5010 (array!15630) Bool)

(assert (=> b!4289050 (= e!2663989 (and tp!1314598 tp!1314582 tp!1314600 (array_inv!5007 (_keys!4672 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044))))))) (array_inv!5010 (_values!4653 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044))))))) e!2663973))))

(declare-fun b!4289051 () Bool)

(declare-fun tp!1314587 () Bool)

(assert (=> b!4289051 (= e!2663984 (and (inv!63116 (c!730207 input!5500)) tp!1314587))))

(declare-fun b!4289052 () Bool)

(declare-fun isBalanced!3880 (Conc!14385) Bool)

(assert (=> b!4289052 (= e!2663982 (not (isBalanced!3880 (c!730207 input!5500))))))

(assert (=> b!4289052 e!2663975))

(declare-fun res!1759284 () Bool)

(assert (=> b!4289052 (=> (not res!1759284) (not e!2663975))))

(declare-fun lt!1516614 () Int)

(declare-fun lt!1516613 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!25 ((InoxSet Context!5666) Int BalanceConc!28260 Int) Int)

(assert (=> b!4289052 (= res!1759284 (= (_1!25822 lt!1516611) (findLongestMatchInnerZipperFastV2!25 z!3746 lt!1516613 totalInput!793 lt!1516614)))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!7 ((InoxSet Context!5666) Int BalanceConc!28260 Int CacheUp!2792 CacheDown!2910 CacheFindLongestMatch!458) tuple4!1000)

(assert (=> b!4289052 (= lt!1516611 (findLongestMatchInnerZipperFastV2Mem!7 z!3746 lt!1516613 totalInput!793 lt!1516614 cacheUp!925 cacheDown!1044 cacheFindLongestMatch!171))))

(declare-fun size!34945 (BalanceConc!28260) Int)

(assert (=> b!4289052 (= lt!1516613 (- lt!1516614 (size!34945 input!5500)))))

(assert (=> b!4289052 (= lt!1516614 (size!34945 totalInput!793))))

(assert (=> b!4289053 (= e!2663981 (and e!2663995 tp!1314588))))

(declare-fun b!4289054 () Bool)

(declare-fun e!2663977 () Bool)

(declare-fun tp!1314589 () Bool)

(assert (=> b!4289054 (= e!2663977 tp!1314589)))

(declare-fun b!4289055 () Bool)

(declare-fun tp!1314584 () Bool)

(assert (=> b!4289055 (= e!2663971 (and (inv!63116 (c!730207 totalInput!793)) tp!1314584))))

(declare-fun b!4289056 () Bool)

(assert (=> b!4289056 (= e!2663975 (= (totalInput!4339 (_4!500 lt!1516611)) totalInput!793))))

(declare-fun mapIsEmpty!19694 () Bool)

(assert (=> mapIsEmpty!19694 mapRes!19693))

(declare-fun setElem!26267 () Context!5666)

(declare-fun tp!1314595 () Bool)

(declare-fun setNonEmpty!26267 () Bool)

(declare-fun inv!63117 (Context!5666) Bool)

(assert (=> setNonEmpty!26267 (= setRes!26267 (and tp!1314595 (inv!63117 setElem!26267) e!2663977))))

(declare-fun setRest!26267 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26267 (= z!3746 ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26267 true) setRest!26267))))

(assert (= (and start!411898 res!1759287) b!4289048))

(assert (= (and b!4289048 res!1759283) b!4289052))

(assert (= (and b!4289052 res!1759284) b!4289045))

(assert (= (and b!4289045 res!1759282) b!4289049))

(assert (= (and b!4289049 res!1759286) b!4289029))

(assert (= (and b!4289029 res!1759285) b!4289056))

(assert (= start!411898 b!4289055))

(assert (= start!411898 b!4289051))

(assert (= (and b!4289041 condMapEmpty!19693) mapIsEmpty!19693))

(assert (= (and b!4289041 (not condMapEmpty!19693)) mapNonEmpty!19694))

(assert (= b!4289038 b!4289041))

(assert (= b!4289034 b!4289038))

(assert (= b!4289031 b!4289034))

(assert (= (and b!4289032 ((_ is LongMap!4371) (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))) b!4289031))

(assert (= b!4289026 b!4289032))

(assert (= (and b!4289030 ((_ is HashMap!4277) (cache!4418 cacheFindLongestMatch!171))) b!4289026))

(assert (= b!4289030 b!4289039))

(assert (= start!411898 b!4289030))

(assert (= (and b!4289027 condMapEmpty!19692) mapIsEmpty!19694))

(assert (= (and b!4289027 (not condMapEmpty!19692)) mapNonEmpty!19693))

(assert (= b!4289042 b!4289027))

(assert (= b!4289047 b!4289042))

(assert (= b!4289044 b!4289047))

(assert (= (and b!4289028 ((_ is LongMap!4370) (v!41551 (underlying!8970 (cache!4416 cacheUp!925))))) b!4289044))

(assert (= b!4289053 b!4289028))

(assert (= (and b!4289046 ((_ is HashMap!4276) (cache!4416 cacheUp!925))) b!4289053))

(assert (= start!411898 b!4289046))

(assert (= (and b!4289036 condMapEmpty!19694) mapIsEmpty!19692))

(assert (= (and b!4289036 (not condMapEmpty!19694)) mapNonEmpty!19692))

(assert (= b!4289050 b!4289036))

(assert (= b!4289033 b!4289050))

(assert (= b!4289043 b!4289033))

(assert (= (and b!4289035 ((_ is LongMap!4372) (v!41555 (underlying!8974 (cache!4417 cacheDown!1044))))) b!4289043))

(assert (= b!4289037 b!4289035))

(assert (= (and b!4289040 ((_ is HashMap!4278) (cache!4417 cacheDown!1044))) b!4289037))

(assert (= start!411898 b!4289040))

(assert (= (and start!411898 condSetEmpty!26267) setIsEmpty!26267))

(assert (= (and start!411898 (not condSetEmpty!26267)) setNonEmpty!26267))

(assert (= setNonEmpty!26267 b!4289054))

(declare-fun m!4883751 () Bool)

(assert (=> mapNonEmpty!19692 m!4883751))

(declare-fun m!4883753 () Bool)

(assert (=> b!4289052 m!4883753))

(declare-fun m!4883755 () Bool)

(assert (=> b!4289052 m!4883755))

(declare-fun m!4883757 () Bool)

(assert (=> b!4289052 m!4883757))

(declare-fun m!4883759 () Bool)

(assert (=> b!4289052 m!4883759))

(declare-fun m!4883761 () Bool)

(assert (=> b!4289052 m!4883761))

(declare-fun m!4883763 () Bool)

(assert (=> b!4289055 m!4883763))

(declare-fun m!4883765 () Bool)

(assert (=> b!4289045 m!4883765))

(declare-fun m!4883767 () Bool)

(assert (=> b!4289038 m!4883767))

(declare-fun m!4883769 () Bool)

(assert (=> b!4289038 m!4883769))

(declare-fun m!4883771 () Bool)

(assert (=> b!4289051 m!4883771))

(declare-fun m!4883773 () Bool)

(assert (=> b!4289050 m!4883773))

(declare-fun m!4883775 () Bool)

(assert (=> b!4289050 m!4883775))

(declare-fun m!4883777 () Bool)

(assert (=> b!4289030 m!4883777))

(declare-fun m!4883779 () Bool)

(assert (=> b!4289029 m!4883779))

(declare-fun m!4883781 () Bool)

(assert (=> b!4289042 m!4883781))

(declare-fun m!4883783 () Bool)

(assert (=> b!4289042 m!4883783))

(declare-fun m!4883785 () Bool)

(assert (=> mapNonEmpty!19694 m!4883785))

(declare-fun m!4883787 () Bool)

(assert (=> mapNonEmpty!19693 m!4883787))

(declare-fun m!4883789 () Bool)

(assert (=> setNonEmpty!26267 m!4883789))

(declare-fun m!4883791 () Bool)

(assert (=> b!4289039 m!4883791))

(declare-fun m!4883793 () Bool)

(assert (=> start!411898 m!4883793))

(declare-fun m!4883795 () Bool)

(assert (=> start!411898 m!4883795))

(declare-fun m!4883797 () Bool)

(assert (=> start!411898 m!4883797))

(assert (=> start!411898 m!4883793))

(declare-fun m!4883799 () Bool)

(assert (=> start!411898 m!4883799))

(declare-fun m!4883801 () Bool)

(assert (=> start!411898 m!4883801))

(declare-fun m!4883803 () Bool)

(assert (=> start!411898 m!4883803))

(declare-fun m!4883805 () Bool)

(assert (=> start!411898 m!4883805))

(assert (=> start!411898 m!4883795))

(declare-fun m!4883807 () Bool)

(assert (=> start!411898 m!4883807))

(declare-fun m!4883809 () Bool)

(assert (=> b!4289049 m!4883809))

(check-sat (not b!4289042) (not b_next!128009) (not b!4289054) (not mapNonEmpty!19693) (not b!4289027) b_and!338521 (not b!4289039) b_and!338523 b_and!338519 (not b!4289038) (not mapNonEmpty!19694) (not b!4289055) (not b_next!128007) (not b!4289045) b_and!338527 (not b!4289029) (not b_next!128013) b_and!338525 b_and!338529 (not b!4289049) (not b!4289041) (not b_next!128017) (not b!4289052) (not b!4289050) (not b!4289036) (not mapNonEmpty!19692) (not b_next!128015) (not start!411898) (not b_next!128011) (not b!4289030) (not b!4289051) (not setNonEmpty!26267))
(check-sat b_and!338519 (not b_next!128009) (not b_next!128013) (not b_next!128017) b_and!338521 (not b_next!128015) (not b_next!128011) b_and!338523 (not b_next!128007) b_and!338527 b_and!338525 b_and!338529)
(get-model)

(declare-fun b!4289069 () Bool)

(declare-fun res!1759300 () Bool)

(declare-fun e!2664002 () Bool)

(assert (=> b!4289069 (=> (not res!1759300) (not e!2664002))))

(declare-fun height!1890 (Conc!14385) Int)

(assert (=> b!4289069 (= res!1759300 (<= (- (height!1890 (left!35389 (c!730207 input!5500))) (height!1890 (right!35719 (c!730207 input!5500)))) 1))))

(declare-fun d!1265383 () Bool)

(declare-fun res!1759303 () Bool)

(declare-fun e!2664001 () Bool)

(assert (=> d!1265383 (=> res!1759303 e!2664001)))

(assert (=> d!1265383 (= res!1759303 (not ((_ is Node!14385) (c!730207 input!5500))))))

(assert (=> d!1265383 (= (isBalanced!3880 (c!730207 input!5500)) e!2664001)))

(declare-fun b!4289070 () Bool)

(declare-fun res!1759301 () Bool)

(assert (=> b!4289070 (=> (not res!1759301) (not e!2664002))))

(declare-fun isEmpty!28021 (Conc!14385) Bool)

(assert (=> b!4289070 (= res!1759301 (not (isEmpty!28021 (left!35389 (c!730207 input!5500)))))))

(declare-fun b!4289071 () Bool)

(assert (=> b!4289071 (= e!2664001 e!2664002)))

(declare-fun res!1759302 () Bool)

(assert (=> b!4289071 (=> (not res!1759302) (not e!2664002))))

(assert (=> b!4289071 (= res!1759302 (<= (- 1) (- (height!1890 (left!35389 (c!730207 input!5500))) (height!1890 (right!35719 (c!730207 input!5500))))))))

(declare-fun b!4289072 () Bool)

(assert (=> b!4289072 (= e!2664002 (not (isEmpty!28021 (right!35719 (c!730207 input!5500)))))))

(declare-fun b!4289073 () Bool)

(declare-fun res!1759304 () Bool)

(assert (=> b!4289073 (=> (not res!1759304) (not e!2664002))))

(assert (=> b!4289073 (= res!1759304 (isBalanced!3880 (left!35389 (c!730207 input!5500))))))

(declare-fun b!4289074 () Bool)

(declare-fun res!1759305 () Bool)

(assert (=> b!4289074 (=> (not res!1759305) (not e!2664002))))

(assert (=> b!4289074 (= res!1759305 (isBalanced!3880 (right!35719 (c!730207 input!5500))))))

(assert (= (and d!1265383 (not res!1759303)) b!4289071))

(assert (= (and b!4289071 res!1759302) b!4289069))

(assert (= (and b!4289069 res!1759300) b!4289073))

(assert (= (and b!4289073 res!1759304) b!4289074))

(assert (= (and b!4289074 res!1759305) b!4289070))

(assert (= (and b!4289070 res!1759301) b!4289072))

(declare-fun m!4883811 () Bool)

(assert (=> b!4289073 m!4883811))

(declare-fun m!4883813 () Bool)

(assert (=> b!4289072 m!4883813))

(declare-fun m!4883815 () Bool)

(assert (=> b!4289070 m!4883815))

(declare-fun m!4883817 () Bool)

(assert (=> b!4289071 m!4883817))

(declare-fun m!4883819 () Bool)

(assert (=> b!4289071 m!4883819))

(declare-fun m!4883821 () Bool)

(assert (=> b!4289074 m!4883821))

(assert (=> b!4289069 m!4883817))

(assert (=> b!4289069 m!4883819))

(assert (=> b!4289052 d!1265383))

(declare-fun d!1265385 () Bool)

(declare-fun lt!1516619 () Int)

(declare-fun size!34946 (List!47761) Int)

(assert (=> d!1265385 (= lt!1516619 (size!34946 (list!17348 totalInput!793)))))

(declare-fun size!34947 (Conc!14385) Int)

(assert (=> d!1265385 (= lt!1516619 (size!34947 (c!730207 totalInput!793)))))

(assert (=> d!1265385 (= (size!34945 totalInput!793) lt!1516619)))

(declare-fun bs!602883 () Bool)

(assert (= bs!602883 d!1265385))

(assert (=> bs!602883 m!4883795))

(assert (=> bs!602883 m!4883795))

(declare-fun m!4883823 () Bool)

(assert (=> bs!602883 m!4883823))

(declare-fun m!4883825 () Bool)

(assert (=> bs!602883 m!4883825))

(assert (=> b!4289052 d!1265385))

(declare-fun d!1265387 () Bool)

(declare-fun e!2664007 () Bool)

(assert (=> d!1265387 e!2664007))

(declare-fun res!1759317 () Bool)

(assert (=> d!1265387 (=> (not res!1759317) (not e!2664007))))

(declare-fun lt!1516622 () tuple4!1000)

(assert (=> d!1265387 (= res!1759317 (= (_1!25822 lt!1516622) (findLongestMatchInnerZipperFastV2!25 z!3746 lt!1516613 totalInput!793 lt!1516614)))))

(declare-fun choose!26139 ((InoxSet Context!5666) Int BalanceConc!28260 Int CacheUp!2792 CacheDown!2910 CacheFindLongestMatch!458) tuple4!1000)

(assert (=> d!1265387 (= lt!1516622 (choose!26139 z!3746 lt!1516613 totalInput!793 lt!1516614 cacheUp!925 cacheDown!1044 cacheFindLongestMatch!171))))

(declare-fun e!2664008 () Bool)

(assert (=> d!1265387 e!2664008))

(declare-fun res!1759319 () Bool)

(assert (=> d!1265387 (=> (not res!1759319) (not e!2664008))))

(assert (=> d!1265387 (= res!1759319 (>= lt!1516613 0))))

(assert (=> d!1265387 (= (findLongestMatchInnerZipperFastV2Mem!7 z!3746 lt!1516613 totalInput!793 lt!1516614 cacheUp!925 cacheDown!1044 cacheFindLongestMatch!171) lt!1516622)))

(declare-fun b!4289085 () Bool)

(assert (=> b!4289085 (= e!2664007 (= (totalInput!4339 (_4!500 lt!1516622)) totalInput!793))))

(declare-fun b!4289086 () Bool)

(assert (=> b!4289086 (= e!2664008 (<= lt!1516613 (size!34945 totalInput!793)))))

(declare-fun b!4289087 () Bool)

(declare-fun res!1759316 () Bool)

(assert (=> b!4289087 (=> (not res!1759316) (not e!2664007))))

(assert (=> b!4289087 (= res!1759316 (valid!3396 (_4!500 lt!1516622)))))

(declare-fun b!4289088 () Bool)

(declare-fun res!1759320 () Bool)

(assert (=> b!4289088 (=> (not res!1759320) (not e!2664007))))

(assert (=> b!4289088 (= res!1759320 (valid!3397 (_2!25822 lt!1516622)))))

(declare-fun b!4289089 () Bool)

(declare-fun res!1759318 () Bool)

(assert (=> b!4289089 (=> (not res!1759318) (not e!2664007))))

(assert (=> b!4289089 (= res!1759318 (valid!3398 (_3!3202 lt!1516622)))))

(assert (= (and d!1265387 res!1759319) b!4289086))

(assert (= (and d!1265387 res!1759317) b!4289088))

(assert (= (and b!4289088 res!1759320) b!4289089))

(assert (= (and b!4289089 res!1759318) b!4289087))

(assert (= (and b!4289087 res!1759316) b!4289085))

(assert (=> b!4289086 m!4883753))

(declare-fun m!4883827 () Bool)

(assert (=> b!4289089 m!4883827))

(declare-fun m!4883829 () Bool)

(assert (=> b!4289088 m!4883829))

(assert (=> d!1265387 m!4883761))

(declare-fun m!4883831 () Bool)

(assert (=> d!1265387 m!4883831))

(declare-fun m!4883833 () Bool)

(assert (=> b!4289087 m!4883833))

(assert (=> b!4289052 d!1265387))

(declare-fun b!4289106 () Bool)

(declare-fun e!2664023 () Bool)

(declare-fun lostCauseZipper!636 ((InoxSet Context!5666)) Bool)

(assert (=> b!4289106 (= e!2664023 (lostCauseZipper!636 z!3746))))

(declare-fun b!4289107 () Bool)

(declare-fun e!2664021 () Int)

(assert (=> b!4289107 (= e!2664021 1)))

(declare-fun d!1265389 () Bool)

(declare-fun lt!1516629 () Int)

(assert (=> d!1265389 (and (>= lt!1516629 0) (<= lt!1516629 (- lt!1516614 lt!1516613)))))

(declare-fun e!2664019 () Int)

(assert (=> d!1265389 (= lt!1516629 e!2664019)))

(declare-fun c!730215 () Bool)

(assert (=> d!1265389 (= c!730215 e!2664023)))

(declare-fun res!1759325 () Bool)

(assert (=> d!1265389 (=> res!1759325 e!2664023)))

(assert (=> d!1265389 (= res!1759325 (= lt!1516613 lt!1516614))))

(declare-fun e!2664020 () Bool)

(assert (=> d!1265389 e!2664020))

(declare-fun res!1759326 () Bool)

(assert (=> d!1265389 (=> (not res!1759326) (not e!2664020))))

(assert (=> d!1265389 (= res!1759326 (>= lt!1516613 0))))

(assert (=> d!1265389 (= (findLongestMatchInnerZipperFastV2!25 z!3746 lt!1516613 totalInput!793 lt!1516614) lt!1516629)))

(declare-fun b!4289108 () Bool)

(assert (=> b!4289108 (= e!2664021 0)))

(declare-fun b!4289109 () Bool)

(declare-fun c!730214 () Bool)

(declare-fun lt!1516631 () (InoxSet Context!5666))

(declare-fun nullableZipper!759 ((InoxSet Context!5666)) Bool)

(assert (=> b!4289109 (= c!730214 (nullableZipper!759 lt!1516631))))

(declare-fun e!2664022 () Int)

(assert (=> b!4289109 (= e!2664022 e!2664021)))

(declare-fun b!4289110 () Bool)

(assert (=> b!4289110 (= e!2664019 0)))

(declare-fun b!4289111 () Bool)

(declare-fun lt!1516630 () Int)

(assert (=> b!4289111 (= e!2664022 (+ 1 lt!1516630))))

(declare-fun b!4289112 () Bool)

(assert (=> b!4289112 (= e!2664019 e!2664022)))

(declare-fun derivationStepZipper!540 ((InoxSet Context!5666) C!26084) (InoxSet Context!5666))

(declare-fun apply!10827 (BalanceConc!28260 Int) C!26084)

(assert (=> b!4289112 (= lt!1516631 (derivationStepZipper!540 z!3746 (apply!10827 totalInput!793 lt!1516613)))))

(assert (=> b!4289112 (= lt!1516630 (findLongestMatchInnerZipperFastV2!25 lt!1516631 (+ lt!1516613 1) totalInput!793 lt!1516614))))

(declare-fun c!730216 () Bool)

(assert (=> b!4289112 (= c!730216 (> lt!1516630 0))))

(declare-fun b!4289113 () Bool)

(assert (=> b!4289113 (= e!2664020 (<= lt!1516613 (size!34945 totalInput!793)))))

(assert (= (and d!1265389 res!1759326) b!4289113))

(assert (= (and d!1265389 (not res!1759325)) b!4289106))

(assert (= (and d!1265389 c!730215) b!4289110))

(assert (= (and d!1265389 (not c!730215)) b!4289112))

(assert (= (and b!4289112 c!730216) b!4289111))

(assert (= (and b!4289112 (not c!730216)) b!4289109))

(assert (= (and b!4289109 c!730214) b!4289107))

(assert (= (and b!4289109 (not c!730214)) b!4289108))

(declare-fun m!4883835 () Bool)

(assert (=> b!4289106 m!4883835))

(declare-fun m!4883837 () Bool)

(assert (=> b!4289109 m!4883837))

(declare-fun m!4883839 () Bool)

(assert (=> b!4289112 m!4883839))

(assert (=> b!4289112 m!4883839))

(declare-fun m!4883841 () Bool)

(assert (=> b!4289112 m!4883841))

(declare-fun m!4883843 () Bool)

(assert (=> b!4289112 m!4883843))

(assert (=> b!4289113 m!4883753))

(assert (=> b!4289052 d!1265389))

(declare-fun d!1265391 () Bool)

(declare-fun lt!1516632 () Int)

(assert (=> d!1265391 (= lt!1516632 (size!34946 (list!17348 input!5500)))))

(assert (=> d!1265391 (= lt!1516632 (size!34947 (c!730207 input!5500)))))

(assert (=> d!1265391 (= (size!34945 input!5500) lt!1516632)))

(declare-fun bs!602884 () Bool)

(assert (= bs!602884 d!1265391))

(assert (=> bs!602884 m!4883793))

(assert (=> bs!602884 m!4883793))

(declare-fun m!4883845 () Bool)

(assert (=> bs!602884 m!4883845))

(declare-fun m!4883847 () Bool)

(assert (=> bs!602884 m!4883847))

(assert (=> b!4289052 d!1265391))

(declare-fun d!1265393 () Bool)

(assert (=> d!1265393 (= (array_inv!5007 (_keys!4670 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925))))))) (bvsge (size!34941 (_keys!4670 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289042 d!1265393))

(declare-fun d!1265395 () Bool)

(assert (=> d!1265395 (= (array_inv!5009 (_values!4651 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925))))))) (bvsge (size!34942 (_values!4651 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289042 d!1265395))

(declare-fun d!1265397 () Bool)

(declare-fun c!730219 () Bool)

(assert (=> d!1265397 (= c!730219 ((_ is Node!14385) (c!730207 input!5500)))))

(declare-fun e!2664028 () Bool)

(assert (=> d!1265397 (= (inv!63116 (c!730207 input!5500)) e!2664028)))

(declare-fun b!4289120 () Bool)

(declare-fun inv!63118 (Conc!14385) Bool)

(assert (=> b!4289120 (= e!2664028 (inv!63118 (c!730207 input!5500)))))

(declare-fun b!4289121 () Bool)

(declare-fun e!2664029 () Bool)

(assert (=> b!4289121 (= e!2664028 e!2664029)))

(declare-fun res!1759329 () Bool)

(assert (=> b!4289121 (= res!1759329 (not ((_ is Leaf!22258) (c!730207 input!5500))))))

(assert (=> b!4289121 (=> res!1759329 e!2664029)))

(declare-fun b!4289122 () Bool)

(declare-fun inv!63119 (Conc!14385) Bool)

(assert (=> b!4289122 (= e!2664029 (inv!63119 (c!730207 input!5500)))))

(assert (= (and d!1265397 c!730219) b!4289120))

(assert (= (and d!1265397 (not c!730219)) b!4289121))

(assert (= (and b!4289121 (not res!1759329)) b!4289122))

(declare-fun m!4883849 () Bool)

(assert (=> b!4289120 m!4883849))

(declare-fun m!4883851 () Bool)

(assert (=> b!4289122 m!4883851))

(assert (=> b!4289051 d!1265397))

(declare-fun d!1265399 () Bool)

(assert (=> d!1265399 (= (array_inv!5007 (_keys!4672 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044))))))) (bvsge (size!34941 (_keys!4672 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289050 d!1265399))

(declare-fun d!1265401 () Bool)

(assert (=> d!1265401 (= (array_inv!5010 (_values!4653 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044))))))) (bvsge (size!34944 (_values!4653 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289050 d!1265401))

(declare-fun d!1265403 () Bool)

(declare-fun c!730220 () Bool)

(assert (=> d!1265403 (= c!730220 ((_ is Node!14385) (c!730207 (totalInput!4339 cacheFindLongestMatch!171))))))

(declare-fun e!2664030 () Bool)

(assert (=> d!1265403 (= (inv!63116 (c!730207 (totalInput!4339 cacheFindLongestMatch!171))) e!2664030)))

(declare-fun b!4289123 () Bool)

(assert (=> b!4289123 (= e!2664030 (inv!63118 (c!730207 (totalInput!4339 cacheFindLongestMatch!171))))))

(declare-fun b!4289124 () Bool)

(declare-fun e!2664031 () Bool)

(assert (=> b!4289124 (= e!2664030 e!2664031)))

(declare-fun res!1759330 () Bool)

(assert (=> b!4289124 (= res!1759330 (not ((_ is Leaf!22258) (c!730207 (totalInput!4339 cacheFindLongestMatch!171)))))))

(assert (=> b!4289124 (=> res!1759330 e!2664031)))

(declare-fun b!4289125 () Bool)

(assert (=> b!4289125 (= e!2664031 (inv!63119 (c!730207 (totalInput!4339 cacheFindLongestMatch!171))))))

(assert (= (and d!1265403 c!730220) b!4289123))

(assert (= (and d!1265403 (not c!730220)) b!4289124))

(assert (= (and b!4289124 (not res!1759330)) b!4289125))

(declare-fun m!4883853 () Bool)

(assert (=> b!4289123 m!4883853))

(declare-fun m!4883855 () Bool)

(assert (=> b!4289125 m!4883855))

(assert (=> b!4289039 d!1265403))

(declare-fun d!1265405 () Bool)

(declare-fun validCacheMapDown!447 (MutableMap!4278) Bool)

(assert (=> d!1265405 (= (valid!3398 (_3!3202 lt!1516611)) (validCacheMapDown!447 (cache!4417 (_3!3202 lt!1516611))))))

(declare-fun bs!602885 () Bool)

(assert (= bs!602885 d!1265405))

(declare-fun m!4883857 () Bool)

(assert (=> bs!602885 m!4883857))

(assert (=> b!4289049 d!1265405))

(declare-fun d!1265407 () Bool)

(declare-fun lambda!131488 () Int)

(declare-fun forall!8547 (List!47759 Int) Bool)

(assert (=> d!1265407 (= (inv!63117 setElem!26267) (forall!8547 (exprs!3333 setElem!26267) lambda!131488))))

(declare-fun bs!602886 () Bool)

(assert (= bs!602886 d!1265407))

(declare-fun m!4883859 () Bool)

(assert (=> bs!602886 m!4883859))

(assert (=> setNonEmpty!26267 d!1265407))

(declare-fun d!1265409 () Bool)

(declare-fun validCacheMapUp!416 (MutableMap!4276) Bool)

(assert (=> d!1265409 (= (valid!3397 (_2!25822 lt!1516611)) (validCacheMapUp!416 (cache!4416 (_2!25822 lt!1516611))))))

(declare-fun bs!602887 () Bool)

(assert (= bs!602887 d!1265409))

(declare-fun m!4883861 () Bool)

(assert (=> bs!602887 m!4883861))

(assert (=> b!4289045 d!1265409))

(declare-fun d!1265411 () Bool)

(declare-fun validCacheMapFindLongestMatch!73 (MutableMap!4277 BalanceConc!28260) Bool)

(assert (=> d!1265411 (= (valid!3396 (_4!500 lt!1516611)) (validCacheMapFindLongestMatch!73 (cache!4418 (_4!500 lt!1516611)) (totalInput!4339 (_4!500 lt!1516611))))))

(declare-fun bs!602888 () Bool)

(assert (= bs!602888 d!1265411))

(declare-fun m!4883863 () Bool)

(assert (=> bs!602888 m!4883863))

(assert (=> b!4289029 d!1265411))

(declare-fun d!1265413 () Bool)

(declare-fun c!730221 () Bool)

(assert (=> d!1265413 (= c!730221 ((_ is Node!14385) (c!730207 totalInput!793)))))

(declare-fun e!2664032 () Bool)

(assert (=> d!1265413 (= (inv!63116 (c!730207 totalInput!793)) e!2664032)))

(declare-fun b!4289126 () Bool)

(assert (=> b!4289126 (= e!2664032 (inv!63118 (c!730207 totalInput!793)))))

(declare-fun b!4289127 () Bool)

(declare-fun e!2664033 () Bool)

(assert (=> b!4289127 (= e!2664032 e!2664033)))

(declare-fun res!1759331 () Bool)

(assert (=> b!4289127 (= res!1759331 (not ((_ is Leaf!22258) (c!730207 totalInput!793))))))

(assert (=> b!4289127 (=> res!1759331 e!2664033)))

(declare-fun b!4289128 () Bool)

(assert (=> b!4289128 (= e!2664033 (inv!63119 (c!730207 totalInput!793)))))

(assert (= (and d!1265413 c!730221) b!4289126))

(assert (= (and d!1265413 (not c!730221)) b!4289127))

(assert (= (and b!4289127 (not res!1759331)) b!4289128))

(declare-fun m!4883865 () Bool)

(assert (=> b!4289126 m!4883865))

(declare-fun m!4883867 () Bool)

(assert (=> b!4289128 m!4883867))

(assert (=> b!4289055 d!1265413))

(declare-fun d!1265415 () Bool)

(declare-fun res!1759334 () Bool)

(declare-fun e!2664036 () Bool)

(assert (=> d!1265415 (=> (not res!1759334) (not e!2664036))))

(assert (=> d!1265415 (= res!1759334 ((_ is HashMap!4277) (cache!4418 cacheFindLongestMatch!171)))))

(assert (=> d!1265415 (= (inv!63113 cacheFindLongestMatch!171) e!2664036)))

(declare-fun b!4289131 () Bool)

(assert (=> b!4289131 (= e!2664036 (validCacheMapFindLongestMatch!73 (cache!4418 cacheFindLongestMatch!171) (totalInput!4339 cacheFindLongestMatch!171)))))

(assert (= (and d!1265415 res!1759334) b!4289131))

(declare-fun m!4883869 () Bool)

(assert (=> b!4289131 m!4883869))

(assert (=> start!411898 d!1265415))

(declare-fun d!1265417 () Bool)

(declare-fun list!17349 (Conc!14385) List!47761)

(assert (=> d!1265417 (= (list!17348 input!5500) (list!17349 (c!730207 input!5500)))))

(declare-fun bs!602889 () Bool)

(assert (= bs!602889 d!1265417))

(declare-fun m!4883871 () Bool)

(assert (=> bs!602889 m!4883871))

(assert (=> start!411898 d!1265417))

(declare-fun d!1265419 () Bool)

(assert (=> d!1265419 (= (inv!63112 totalInput!793) (isBalanced!3880 (c!730207 totalInput!793)))))

(declare-fun bs!602890 () Bool)

(assert (= bs!602890 d!1265419))

(declare-fun m!4883873 () Bool)

(assert (=> bs!602890 m!4883873))

(assert (=> start!411898 d!1265419))

(declare-fun d!1265421 () Bool)

(declare-fun res!1759337 () Bool)

(declare-fun e!2664039 () Bool)

(assert (=> d!1265421 (=> (not res!1759337) (not e!2664039))))

(assert (=> d!1265421 (= res!1759337 ((_ is HashMap!4278) (cache!4417 cacheDown!1044)))))

(assert (=> d!1265421 (= (inv!63115 cacheDown!1044) e!2664039)))

(declare-fun b!4289134 () Bool)

(assert (=> b!4289134 (= e!2664039 (validCacheMapDown!447 (cache!4417 cacheDown!1044)))))

(assert (= (and d!1265421 res!1759337) b!4289134))

(declare-fun m!4883875 () Bool)

(assert (=> b!4289134 m!4883875))

(assert (=> start!411898 d!1265421))

(declare-fun d!1265423 () Bool)

(assert (=> d!1265423 (= (list!17348 totalInput!793) (list!17349 (c!730207 totalInput!793)))))

(declare-fun bs!602891 () Bool)

(assert (= bs!602891 d!1265423))

(declare-fun m!4883877 () Bool)

(assert (=> bs!602891 m!4883877))

(assert (=> start!411898 d!1265423))

(declare-fun d!1265425 () Bool)

(declare-fun e!2664042 () Bool)

(assert (=> d!1265425 e!2664042))

(declare-fun res!1759340 () Bool)

(assert (=> d!1265425 (=> res!1759340 e!2664042)))

(declare-fun lt!1516635 () Bool)

(assert (=> d!1265425 (= res!1759340 (not lt!1516635))))

(declare-fun drop!2189 (List!47761 Int) List!47761)

(assert (=> d!1265425 (= lt!1516635 (= (list!17348 input!5500) (drop!2189 (list!17348 totalInput!793) (- (size!34946 (list!17348 totalInput!793)) (size!34946 (list!17348 input!5500))))))))

(assert (=> d!1265425 (= (isSuffix!1031 (list!17348 input!5500) (list!17348 totalInput!793)) lt!1516635)))

(declare-fun b!4289137 () Bool)

(assert (=> b!4289137 (= e!2664042 (>= (size!34946 (list!17348 totalInput!793)) (size!34946 (list!17348 input!5500))))))

(assert (= (and d!1265425 (not res!1759340)) b!4289137))

(assert (=> d!1265425 m!4883795))

(assert (=> d!1265425 m!4883823))

(assert (=> d!1265425 m!4883793))

(assert (=> d!1265425 m!4883845))

(assert (=> d!1265425 m!4883795))

(declare-fun m!4883879 () Bool)

(assert (=> d!1265425 m!4883879))

(assert (=> b!4289137 m!4883795))

(assert (=> b!4289137 m!4883823))

(assert (=> b!4289137 m!4883793))

(assert (=> b!4289137 m!4883845))

(assert (=> start!411898 d!1265425))

(declare-fun d!1265427 () Bool)

(assert (=> d!1265427 (= (inv!63112 input!5500) (isBalanced!3880 (c!730207 input!5500)))))

(declare-fun bs!602892 () Bool)

(assert (= bs!602892 d!1265427))

(assert (=> bs!602892 m!4883755))

(assert (=> start!411898 d!1265427))

(declare-fun d!1265429 () Bool)

(declare-fun res!1759343 () Bool)

(declare-fun e!2664045 () Bool)

(assert (=> d!1265429 (=> (not res!1759343) (not e!2664045))))

(assert (=> d!1265429 (= res!1759343 ((_ is HashMap!4276) (cache!4416 cacheUp!925)))))

(assert (=> d!1265429 (= (inv!63114 cacheUp!925) e!2664045)))

(declare-fun b!4289140 () Bool)

(assert (=> b!4289140 (= e!2664045 (validCacheMapUp!416 (cache!4416 cacheUp!925)))))

(assert (= (and d!1265429 res!1759343) b!4289140))

(declare-fun m!4883881 () Bool)

(assert (=> b!4289140 m!4883881))

(assert (=> start!411898 d!1265429))

(declare-fun d!1265431 () Bool)

(assert (=> d!1265431 (= (inv!63112 (totalInput!4339 cacheFindLongestMatch!171)) (isBalanced!3880 (c!730207 (totalInput!4339 cacheFindLongestMatch!171))))))

(declare-fun bs!602893 () Bool)

(assert (= bs!602893 d!1265431))

(declare-fun m!4883883 () Bool)

(assert (=> bs!602893 m!4883883))

(assert (=> b!4289030 d!1265431))

(declare-fun d!1265433 () Bool)

(assert (=> d!1265433 (= (array_inv!5007 (_keys!4671 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))) (bvsge (size!34941 (_keys!4671 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289038 d!1265433))

(declare-fun d!1265435 () Bool)

(assert (=> d!1265435 (= (array_inv!5008 (_values!4652 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))) (bvsge (size!34943 (_values!4652 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289038 d!1265435))

(declare-fun b!4289155 () Bool)

(declare-fun e!2664060 () Bool)

(declare-fun tp!1314634 () Bool)

(assert (=> b!4289155 (= e!2664060 tp!1314634)))

(declare-fun e!2664058 () Bool)

(declare-fun setElem!26272 () Context!5666)

(declare-fun setNonEmpty!26272 () Bool)

(declare-fun tp!1314627 () Bool)

(declare-fun setRes!26272 () Bool)

(assert (=> setNonEmpty!26272 (= setRes!26272 (and tp!1314627 (inv!63117 setElem!26272) e!2664058))))

(declare-fun mapValue!19697 () List!47763)

(declare-fun setRest!26272 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26272 (= (_2!25821 (h!53059 mapValue!19697)) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26272 true) setRest!26272))))

(declare-fun setIsEmpty!26272 () Bool)

(assert (=> setIsEmpty!26272 setRes!26272))

(declare-fun b!4289156 () Bool)

(declare-fun tp!1314630 () Bool)

(assert (=> b!4289156 (= e!2664058 tp!1314630)))

(declare-fun condMapEmpty!19697 () Bool)

(declare-fun mapDefault!19697 () List!47763)

(assert (=> mapNonEmpty!19692 (= condMapEmpty!19697 (= mapRest!19692 ((as const (Array (_ BitVec 32) List!47763)) mapDefault!19697)))))

(declare-fun e!2664061 () Bool)

(declare-fun mapRes!19697 () Bool)

(assert (=> mapNonEmpty!19692 (= tp!1314594 (and e!2664061 mapRes!19697))))

(declare-fun b!4289157 () Bool)

(declare-fun e!2664059 () Bool)

(declare-fun tp!1314628 () Bool)

(assert (=> b!4289157 (= e!2664059 tp!1314628)))

(declare-fun mapIsEmpty!19697 () Bool)

(assert (=> mapIsEmpty!19697 mapRes!19697))

(declare-fun b!4289158 () Bool)

(declare-fun e!2664062 () Bool)

(declare-fun tp!1314632 () Bool)

(assert (=> b!4289158 (= e!2664062 tp!1314632)))

(declare-fun setIsEmpty!26273 () Bool)

(declare-fun setRes!26273 () Bool)

(assert (=> setIsEmpty!26273 setRes!26273))

(declare-fun mapNonEmpty!19697 () Bool)

(declare-fun tp!1314629 () Bool)

(declare-fun e!2664063 () Bool)

(assert (=> mapNonEmpty!19697 (= mapRes!19697 (and tp!1314629 e!2664063))))

(declare-fun mapKey!19697 () (_ BitVec 32))

(declare-fun mapRest!19697 () (Array (_ BitVec 32) List!47763))

(assert (=> mapNonEmpty!19697 (= mapRest!19692 (store mapRest!19697 mapKey!19697 mapValue!19697))))

(declare-fun tp!1314636 () Bool)

(declare-fun tp_is_empty!23111 () Bool)

(declare-fun tp!1314633 () Bool)

(declare-fun b!4289159 () Bool)

(assert (=> b!4289159 (= e!2664063 (and tp!1314636 (inv!63117 (_2!25820 (_1!25821 (h!53059 mapValue!19697)))) e!2664059 tp_is_empty!23111 setRes!26272 tp!1314633))))

(declare-fun condSetEmpty!26272 () Bool)

(assert (=> b!4289159 (= condSetEmpty!26272 (= (_2!25821 (h!53059 mapValue!19697)) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun b!4289160 () Bool)

(declare-fun tp!1314635 () Bool)

(declare-fun tp!1314637 () Bool)

(assert (=> b!4289160 (= e!2664061 (and tp!1314635 (inv!63117 (_2!25820 (_1!25821 (h!53059 mapDefault!19697)))) e!2664062 tp_is_empty!23111 setRes!26273 tp!1314637))))

(declare-fun condSetEmpty!26273 () Bool)

(assert (=> b!4289160 (= condSetEmpty!26273 (= (_2!25821 (h!53059 mapDefault!19697)) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun tp!1314631 () Bool)

(declare-fun setNonEmpty!26273 () Bool)

(declare-fun setElem!26273 () Context!5666)

(assert (=> setNonEmpty!26273 (= setRes!26273 (and tp!1314631 (inv!63117 setElem!26273) e!2664060))))

(declare-fun setRest!26273 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26273 (= (_2!25821 (h!53059 mapDefault!19697)) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26273 true) setRest!26273))))

(assert (= (and mapNonEmpty!19692 condMapEmpty!19697) mapIsEmpty!19697))

(assert (= (and mapNonEmpty!19692 (not condMapEmpty!19697)) mapNonEmpty!19697))

(assert (= b!4289159 b!4289157))

(assert (= (and b!4289159 condSetEmpty!26272) setIsEmpty!26272))

(assert (= (and b!4289159 (not condSetEmpty!26272)) setNonEmpty!26272))

(assert (= setNonEmpty!26272 b!4289156))

(assert (= (and mapNonEmpty!19697 ((_ is Cons!47639) mapValue!19697)) b!4289159))

(assert (= b!4289160 b!4289158))

(assert (= (and b!4289160 condSetEmpty!26273) setIsEmpty!26273))

(assert (= (and b!4289160 (not condSetEmpty!26273)) setNonEmpty!26273))

(assert (= setNonEmpty!26273 b!4289155))

(assert (= (and mapNonEmpty!19692 ((_ is Cons!47639) mapDefault!19697)) b!4289160))

(declare-fun m!4883885 () Bool)

(assert (=> setNonEmpty!26272 m!4883885))

(declare-fun m!4883887 () Bool)

(assert (=> setNonEmpty!26273 m!4883887))

(declare-fun m!4883889 () Bool)

(assert (=> mapNonEmpty!19697 m!4883889))

(declare-fun m!4883891 () Bool)

(assert (=> b!4289159 m!4883891))

(declare-fun m!4883893 () Bool)

(assert (=> b!4289160 m!4883893))

(declare-fun e!2664071 () Bool)

(assert (=> mapNonEmpty!19692 (= tp!1314579 e!2664071)))

(declare-fun setRes!26276 () Bool)

(declare-fun e!2664070 () Bool)

(declare-fun tp!1314649 () Bool)

(declare-fun tp!1314648 () Bool)

(declare-fun b!4289169 () Bool)

(assert (=> b!4289169 (= e!2664071 (and tp!1314649 (inv!63117 (_2!25820 (_1!25821 (h!53059 mapValue!19693)))) e!2664070 tp_is_empty!23111 setRes!26276 tp!1314648))))

(declare-fun condSetEmpty!26276 () Bool)

(assert (=> b!4289169 (= condSetEmpty!26276 (= (_2!25821 (h!53059 mapValue!19693)) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun setIsEmpty!26276 () Bool)

(assert (=> setIsEmpty!26276 setRes!26276))

(declare-fun b!4289170 () Bool)

(declare-fun e!2664072 () Bool)

(declare-fun tp!1314652 () Bool)

(assert (=> b!4289170 (= e!2664072 tp!1314652)))

(declare-fun b!4289171 () Bool)

(declare-fun tp!1314651 () Bool)

(assert (=> b!4289171 (= e!2664070 tp!1314651)))

(declare-fun tp!1314650 () Bool)

(declare-fun setElem!26276 () Context!5666)

(declare-fun setNonEmpty!26276 () Bool)

(assert (=> setNonEmpty!26276 (= setRes!26276 (and tp!1314650 (inv!63117 setElem!26276) e!2664072))))

(declare-fun setRest!26276 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26276 (= (_2!25821 (h!53059 mapValue!19693)) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26276 true) setRest!26276))))

(assert (= b!4289169 b!4289171))

(assert (= (and b!4289169 condSetEmpty!26276) setIsEmpty!26276))

(assert (= (and b!4289169 (not condSetEmpty!26276)) setNonEmpty!26276))

(assert (= setNonEmpty!26276 b!4289170))

(assert (= (and mapNonEmpty!19692 ((_ is Cons!47639) mapValue!19693)) b!4289169))

(declare-fun m!4883895 () Bool)

(assert (=> b!4289169 m!4883895))

(declare-fun m!4883897 () Bool)

(assert (=> setNonEmpty!26276 m!4883897))

(declare-fun mapNonEmpty!19700 () Bool)

(declare-fun mapRes!19700 () Bool)

(declare-fun tp!1314670 () Bool)

(declare-fun e!2664083 () Bool)

(assert (=> mapNonEmpty!19700 (= mapRes!19700 (and tp!1314670 e!2664083))))

(declare-fun mapKey!19700 () (_ BitVec 32))

(declare-fun mapRest!19700 () (Array (_ BitVec 32) List!47762))

(declare-fun mapValue!19700 () List!47762)

(assert (=> mapNonEmpty!19700 (= mapRest!19694 (store mapRest!19700 mapKey!19700 mapValue!19700))))

(declare-fun b!4289182 () Bool)

(declare-fun e!2664084 () Bool)

(declare-fun tp!1314668 () Bool)

(assert (=> b!4289182 (= e!2664084 tp!1314668)))

(declare-fun b!4289183 () Bool)

(declare-fun e!2664082 () Bool)

(declare-fun setRes!26281 () Bool)

(declare-fun tp!1314667 () Bool)

(assert (=> b!4289183 (= e!2664082 (and setRes!26281 tp!1314667))))

(declare-fun condSetEmpty!26282 () Bool)

(declare-fun mapDefault!19700 () List!47762)

(assert (=> b!4289183 (= condSetEmpty!26282 (= (_1!25818 (_1!25819 (h!53058 mapDefault!19700))) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun setIsEmpty!26281 () Bool)

(assert (=> setIsEmpty!26281 setRes!26281))

(declare-fun setNonEmpty!26282 () Bool)

(declare-fun setElem!26282 () Context!5666)

(declare-fun e!2664081 () Bool)

(declare-fun tp!1314669 () Bool)

(declare-fun setRes!26282 () Bool)

(assert (=> setNonEmpty!26282 (= setRes!26282 (and tp!1314669 (inv!63117 setElem!26282) e!2664081))))

(declare-fun setRest!26282 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26282 (= (_1!25818 (_1!25819 (h!53058 mapValue!19700))) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26282 true) setRest!26282))))

(declare-fun b!4289184 () Bool)

(declare-fun tp!1314673 () Bool)

(assert (=> b!4289184 (= e!2664081 tp!1314673)))

(declare-fun b!4289185 () Bool)

(declare-fun tp!1314671 () Bool)

(assert (=> b!4289185 (= e!2664083 (and setRes!26282 tp!1314671))))

(declare-fun condSetEmpty!26281 () Bool)

(assert (=> b!4289185 (= condSetEmpty!26281 (= (_1!25818 (_1!25819 (h!53058 mapValue!19700))) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun setElem!26281 () Context!5666)

(declare-fun tp!1314672 () Bool)

(declare-fun setNonEmpty!26281 () Bool)

(assert (=> setNonEmpty!26281 (= setRes!26281 (and tp!1314672 (inv!63117 setElem!26281) e!2664084))))

(declare-fun setRest!26281 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26281 (= (_1!25818 (_1!25819 (h!53058 mapDefault!19700))) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26281 true) setRest!26281))))

(declare-fun condMapEmpty!19700 () Bool)

(assert (=> mapNonEmpty!19694 (= condMapEmpty!19700 (= mapRest!19694 ((as const (Array (_ BitVec 32) List!47762)) mapDefault!19700)))))

(assert (=> mapNonEmpty!19694 (= tp!1314592 (and e!2664082 mapRes!19700))))

(declare-fun setIsEmpty!26282 () Bool)

(assert (=> setIsEmpty!26282 setRes!26282))

(declare-fun mapIsEmpty!19700 () Bool)

(assert (=> mapIsEmpty!19700 mapRes!19700))

(assert (= (and mapNonEmpty!19694 condMapEmpty!19700) mapIsEmpty!19700))

(assert (= (and mapNonEmpty!19694 (not condMapEmpty!19700)) mapNonEmpty!19700))

(assert (= (and b!4289185 condSetEmpty!26281) setIsEmpty!26282))

(assert (= (and b!4289185 (not condSetEmpty!26281)) setNonEmpty!26282))

(assert (= setNonEmpty!26282 b!4289184))

(assert (= (and mapNonEmpty!19700 ((_ is Cons!47638) mapValue!19700)) b!4289185))

(assert (= (and b!4289183 condSetEmpty!26282) setIsEmpty!26281))

(assert (= (and b!4289183 (not condSetEmpty!26282)) setNonEmpty!26281))

(assert (= setNonEmpty!26281 b!4289182))

(assert (= (and mapNonEmpty!19694 ((_ is Cons!47638) mapDefault!19700)) b!4289183))

(declare-fun m!4883899 () Bool)

(assert (=> mapNonEmpty!19700 m!4883899))

(declare-fun m!4883901 () Bool)

(assert (=> setNonEmpty!26282 m!4883901))

(declare-fun m!4883903 () Bool)

(assert (=> setNonEmpty!26281 m!4883903))

(declare-fun b!4289192 () Bool)

(declare-fun e!2664090 () Bool)

(declare-fun setRes!26285 () Bool)

(declare-fun tp!1314682 () Bool)

(assert (=> b!4289192 (= e!2664090 (and setRes!26285 tp!1314682))))

(declare-fun condSetEmpty!26285 () Bool)

(assert (=> b!4289192 (= condSetEmpty!26285 (= (_1!25818 (_1!25819 (h!53058 mapValue!19694))) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun e!2664089 () Bool)

(declare-fun setNonEmpty!26285 () Bool)

(declare-fun tp!1314681 () Bool)

(declare-fun setElem!26285 () Context!5666)

(assert (=> setNonEmpty!26285 (= setRes!26285 (and tp!1314681 (inv!63117 setElem!26285) e!2664089))))

(declare-fun setRest!26285 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26285 (= (_1!25818 (_1!25819 (h!53058 mapValue!19694))) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26285 true) setRest!26285))))

(declare-fun setIsEmpty!26285 () Bool)

(assert (=> setIsEmpty!26285 setRes!26285))

(declare-fun b!4289193 () Bool)

(declare-fun tp!1314680 () Bool)

(assert (=> b!4289193 (= e!2664089 tp!1314680)))

(assert (=> mapNonEmpty!19694 (= tp!1314601 e!2664090)))

(assert (= (and b!4289192 condSetEmpty!26285) setIsEmpty!26285))

(assert (= (and b!4289192 (not condSetEmpty!26285)) setNonEmpty!26285))

(assert (= setNonEmpty!26285 b!4289193))

(assert (= (and mapNonEmpty!19694 ((_ is Cons!47638) mapValue!19694)) b!4289192))

(declare-fun m!4883905 () Bool)

(assert (=> setNonEmpty!26285 m!4883905))

(declare-fun setIsEmpty!26288 () Bool)

(declare-fun setRes!26288 () Bool)

(assert (=> setIsEmpty!26288 setRes!26288))

(declare-fun e!2664098 () Bool)

(assert (=> b!4289027 (= tp!1314597 e!2664098)))

(declare-fun b!4289202 () Bool)

(declare-fun e!2664097 () Bool)

(declare-fun tp!1314692 () Bool)

(assert (=> b!4289202 (= e!2664097 tp!1314692)))

(declare-fun tp!1314693 () Bool)

(declare-fun setElem!26288 () Context!5666)

(declare-fun setNonEmpty!26288 () Bool)

(assert (=> setNonEmpty!26288 (= setRes!26288 (and tp!1314693 (inv!63117 setElem!26288) e!2664097))))

(declare-fun setRest!26288 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26288 (= (_2!25817 (h!53056 mapDefault!19692)) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26288 true) setRest!26288))))

(declare-fun b!4289203 () Bool)

(declare-fun e!2664099 () Bool)

(declare-fun tp!1314691 () Bool)

(assert (=> b!4289203 (= e!2664099 tp!1314691)))

(declare-fun b!4289204 () Bool)

(declare-fun tp!1314694 () Bool)

(assert (=> b!4289204 (= e!2664098 (and (inv!63117 (_1!25816 (_1!25817 (h!53056 mapDefault!19692)))) e!2664099 tp_is_empty!23111 setRes!26288 tp!1314694))))

(declare-fun condSetEmpty!26288 () Bool)

(assert (=> b!4289204 (= condSetEmpty!26288 (= (_2!25817 (h!53056 mapDefault!19692)) ((as const (Array Context!5666 Bool)) false)))))

(assert (= b!4289204 b!4289203))

(assert (= (and b!4289204 condSetEmpty!26288) setIsEmpty!26288))

(assert (= (and b!4289204 (not condSetEmpty!26288)) setNonEmpty!26288))

(assert (= setNonEmpty!26288 b!4289202))

(assert (= (and b!4289027 ((_ is Cons!47636) mapDefault!19692)) b!4289204))

(declare-fun m!4883907 () Bool)

(assert (=> setNonEmpty!26288 m!4883907))

(declare-fun m!4883909 () Bool)

(assert (=> b!4289204 m!4883909))

(declare-fun condMapEmpty!19703 () Bool)

(declare-fun mapDefault!19703 () List!47760)

(assert (=> mapNonEmpty!19693 (= condMapEmpty!19703 (= mapRest!19693 ((as const (Array (_ BitVec 32) List!47760)) mapDefault!19703)))))

(declare-fun e!2664112 () Bool)

(declare-fun mapRes!19703 () Bool)

(assert (=> mapNonEmpty!19693 (= tp!1314603 (and e!2664112 mapRes!19703))))

(declare-fun setRes!26293 () Bool)

(declare-fun b!4289219 () Bool)

(declare-fun tp!1314719 () Bool)

(declare-fun e!2664117 () Bool)

(assert (=> b!4289219 (= e!2664112 (and (inv!63117 (_1!25816 (_1!25817 (h!53056 mapDefault!19703)))) e!2664117 tp_is_empty!23111 setRes!26293 tp!1314719))))

(declare-fun condSetEmpty!26293 () Bool)

(assert (=> b!4289219 (= condSetEmpty!26293 (= (_2!25817 (h!53056 mapDefault!19703)) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun setRes!26294 () Bool)

(declare-fun e!2664115 () Bool)

(declare-fun mapValue!19703 () List!47760)

(declare-fun e!2664114 () Bool)

(declare-fun b!4289220 () Bool)

(declare-fun tp!1314720 () Bool)

(assert (=> b!4289220 (= e!2664115 (and (inv!63117 (_1!25816 (_1!25817 (h!53056 mapValue!19703)))) e!2664114 tp_is_empty!23111 setRes!26294 tp!1314720))))

(declare-fun condSetEmpty!26294 () Bool)

(assert (=> b!4289220 (= condSetEmpty!26294 (= (_2!25817 (h!53056 mapValue!19703)) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun b!4289221 () Bool)

(declare-fun e!2664116 () Bool)

(declare-fun tp!1314715 () Bool)

(assert (=> b!4289221 (= e!2664116 tp!1314715)))

(declare-fun mapIsEmpty!19703 () Bool)

(assert (=> mapIsEmpty!19703 mapRes!19703))

(declare-fun setElem!26294 () Context!5666)

(declare-fun tp!1314718 () Bool)

(declare-fun setNonEmpty!26293 () Bool)

(declare-fun e!2664113 () Bool)

(assert (=> setNonEmpty!26293 (= setRes!26294 (and tp!1314718 (inv!63117 setElem!26294) e!2664113))))

(declare-fun setRest!26294 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26293 (= (_2!25817 (h!53056 mapValue!19703)) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26294 true) setRest!26294))))

(declare-fun b!4289222 () Bool)

(declare-fun tp!1314721 () Bool)

(assert (=> b!4289222 (= e!2664114 tp!1314721)))

(declare-fun b!4289223 () Bool)

(declare-fun tp!1314716 () Bool)

(assert (=> b!4289223 (= e!2664113 tp!1314716)))

(declare-fun b!4289224 () Bool)

(declare-fun tp!1314714 () Bool)

(assert (=> b!4289224 (= e!2664117 tp!1314714)))

(declare-fun setIsEmpty!26293 () Bool)

(assert (=> setIsEmpty!26293 setRes!26294))

(declare-fun setIsEmpty!26294 () Bool)

(assert (=> setIsEmpty!26294 setRes!26293))

(declare-fun tp!1314717 () Bool)

(declare-fun setNonEmpty!26294 () Bool)

(declare-fun setElem!26293 () Context!5666)

(assert (=> setNonEmpty!26294 (= setRes!26293 (and tp!1314717 (inv!63117 setElem!26293) e!2664116))))

(declare-fun setRest!26293 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26294 (= (_2!25817 (h!53056 mapDefault!19703)) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26293 true) setRest!26293))))

(declare-fun mapNonEmpty!19703 () Bool)

(declare-fun tp!1314713 () Bool)

(assert (=> mapNonEmpty!19703 (= mapRes!19703 (and tp!1314713 e!2664115))))

(declare-fun mapKey!19703 () (_ BitVec 32))

(declare-fun mapRest!19703 () (Array (_ BitVec 32) List!47760))

(assert (=> mapNonEmpty!19703 (= mapRest!19693 (store mapRest!19703 mapKey!19703 mapValue!19703))))

(assert (= (and mapNonEmpty!19693 condMapEmpty!19703) mapIsEmpty!19703))

(assert (= (and mapNonEmpty!19693 (not condMapEmpty!19703)) mapNonEmpty!19703))

(assert (= b!4289220 b!4289222))

(assert (= (and b!4289220 condSetEmpty!26294) setIsEmpty!26293))

(assert (= (and b!4289220 (not condSetEmpty!26294)) setNonEmpty!26293))

(assert (= setNonEmpty!26293 b!4289223))

(assert (= (and mapNonEmpty!19703 ((_ is Cons!47636) mapValue!19703)) b!4289220))

(assert (= b!4289219 b!4289224))

(assert (= (and b!4289219 condSetEmpty!26293) setIsEmpty!26294))

(assert (= (and b!4289219 (not condSetEmpty!26293)) setNonEmpty!26294))

(assert (= setNonEmpty!26294 b!4289221))

(assert (= (and mapNonEmpty!19693 ((_ is Cons!47636) mapDefault!19703)) b!4289219))

(declare-fun m!4883911 () Bool)

(assert (=> setNonEmpty!26293 m!4883911))

(declare-fun m!4883913 () Bool)

(assert (=> b!4289219 m!4883913))

(declare-fun m!4883915 () Bool)

(assert (=> mapNonEmpty!19703 m!4883915))

(declare-fun m!4883917 () Bool)

(assert (=> setNonEmpty!26294 m!4883917))

(declare-fun m!4883919 () Bool)

(assert (=> b!4289220 m!4883919))

(declare-fun setIsEmpty!26295 () Bool)

(declare-fun setRes!26295 () Bool)

(assert (=> setIsEmpty!26295 setRes!26295))

(declare-fun e!2664119 () Bool)

(assert (=> mapNonEmpty!19693 (= tp!1314581 e!2664119)))

(declare-fun b!4289225 () Bool)

(declare-fun e!2664118 () Bool)

(declare-fun tp!1314723 () Bool)

(assert (=> b!4289225 (= e!2664118 tp!1314723)))

(declare-fun setNonEmpty!26295 () Bool)

(declare-fun tp!1314724 () Bool)

(declare-fun setElem!26295 () Context!5666)

(assert (=> setNonEmpty!26295 (= setRes!26295 (and tp!1314724 (inv!63117 setElem!26295) e!2664118))))

(declare-fun setRest!26295 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26295 (= (_2!25817 (h!53056 mapValue!19692)) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26295 true) setRest!26295))))

(declare-fun b!4289226 () Bool)

(declare-fun e!2664120 () Bool)

(declare-fun tp!1314722 () Bool)

(assert (=> b!4289226 (= e!2664120 tp!1314722)))

(declare-fun b!4289227 () Bool)

(declare-fun tp!1314725 () Bool)

(assert (=> b!4289227 (= e!2664119 (and (inv!63117 (_1!25816 (_1!25817 (h!53056 mapValue!19692)))) e!2664120 tp_is_empty!23111 setRes!26295 tp!1314725))))

(declare-fun condSetEmpty!26295 () Bool)

(assert (=> b!4289227 (= condSetEmpty!26295 (= (_2!25817 (h!53056 mapValue!19692)) ((as const (Array Context!5666 Bool)) false)))))

(assert (= b!4289227 b!4289226))

(assert (= (and b!4289227 condSetEmpty!26295) setIsEmpty!26295))

(assert (= (and b!4289227 (not condSetEmpty!26295)) setNonEmpty!26295))

(assert (= setNonEmpty!26295 b!4289225))

(assert (= (and mapNonEmpty!19693 ((_ is Cons!47636) mapValue!19692)) b!4289227))

(declare-fun m!4883921 () Bool)

(assert (=> setNonEmpty!26295 m!4883921))

(declare-fun m!4883923 () Bool)

(assert (=> b!4289227 m!4883923))

(declare-fun b!4289228 () Bool)

(declare-fun e!2664122 () Bool)

(declare-fun setRes!26296 () Bool)

(declare-fun tp!1314728 () Bool)

(assert (=> b!4289228 (= e!2664122 (and setRes!26296 tp!1314728))))

(declare-fun condSetEmpty!26296 () Bool)

(assert (=> b!4289228 (= condSetEmpty!26296 (= (_1!25818 (_1!25819 (h!53058 mapDefault!19694))) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun e!2664121 () Bool)

(declare-fun setNonEmpty!26296 () Bool)

(declare-fun tp!1314727 () Bool)

(declare-fun setElem!26296 () Context!5666)

(assert (=> setNonEmpty!26296 (= setRes!26296 (and tp!1314727 (inv!63117 setElem!26296) e!2664121))))

(declare-fun setRest!26296 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26296 (= (_1!25818 (_1!25819 (h!53058 mapDefault!19694))) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26296 true) setRest!26296))))

(declare-fun setIsEmpty!26296 () Bool)

(assert (=> setIsEmpty!26296 setRes!26296))

(declare-fun b!4289229 () Bool)

(declare-fun tp!1314726 () Bool)

(assert (=> b!4289229 (= e!2664121 tp!1314726)))

(assert (=> b!4289041 (= tp!1314585 e!2664122)))

(assert (= (and b!4289228 condSetEmpty!26296) setIsEmpty!26296))

(assert (= (and b!4289228 (not condSetEmpty!26296)) setNonEmpty!26296))

(assert (= setNonEmpty!26296 b!4289229))

(assert (= (and b!4289041 ((_ is Cons!47638) mapDefault!19694)) b!4289228))

(declare-fun m!4883925 () Bool)

(assert (=> setNonEmpty!26296 m!4883925))

(declare-fun setIsEmpty!26297 () Bool)

(declare-fun setRes!26297 () Bool)

(assert (=> setIsEmpty!26297 setRes!26297))

(declare-fun e!2664124 () Bool)

(assert (=> b!4289042 (= tp!1314593 e!2664124)))

(declare-fun b!4289230 () Bool)

(declare-fun e!2664123 () Bool)

(declare-fun tp!1314730 () Bool)

(assert (=> b!4289230 (= e!2664123 tp!1314730)))

(declare-fun tp!1314731 () Bool)

(declare-fun setElem!26297 () Context!5666)

(declare-fun setNonEmpty!26297 () Bool)

(assert (=> setNonEmpty!26297 (= setRes!26297 (and tp!1314731 (inv!63117 setElem!26297) e!2664123))))

(declare-fun setRest!26297 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26297 (= (_2!25817 (h!53056 (zeroValue!4629 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925)))))))) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26297 true) setRest!26297))))

(declare-fun b!4289231 () Bool)

(declare-fun e!2664125 () Bool)

(declare-fun tp!1314729 () Bool)

(assert (=> b!4289231 (= e!2664125 tp!1314729)))

(declare-fun tp!1314732 () Bool)

(declare-fun b!4289232 () Bool)

(assert (=> b!4289232 (= e!2664124 (and (inv!63117 (_1!25816 (_1!25817 (h!53056 (zeroValue!4629 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925)))))))))) e!2664125 tp_is_empty!23111 setRes!26297 tp!1314732))))

(declare-fun condSetEmpty!26297 () Bool)

(assert (=> b!4289232 (= condSetEmpty!26297 (= (_2!25817 (h!53056 (zeroValue!4629 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925)))))))) ((as const (Array Context!5666 Bool)) false)))))

(assert (= b!4289232 b!4289231))

(assert (= (and b!4289232 condSetEmpty!26297) setIsEmpty!26297))

(assert (= (and b!4289232 (not condSetEmpty!26297)) setNonEmpty!26297))

(assert (= setNonEmpty!26297 b!4289230))

(assert (= (and b!4289042 ((_ is Cons!47636) (zeroValue!4629 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925)))))))) b!4289232))

(declare-fun m!4883927 () Bool)

(assert (=> setNonEmpty!26297 m!4883927))

(declare-fun m!4883929 () Bool)

(assert (=> b!4289232 m!4883929))

(declare-fun setIsEmpty!26298 () Bool)

(declare-fun setRes!26298 () Bool)

(assert (=> setIsEmpty!26298 setRes!26298))

(declare-fun e!2664127 () Bool)

(assert (=> b!4289042 (= tp!1314599 e!2664127)))

(declare-fun b!4289233 () Bool)

(declare-fun e!2664126 () Bool)

(declare-fun tp!1314734 () Bool)

(assert (=> b!4289233 (= e!2664126 tp!1314734)))

(declare-fun setNonEmpty!26298 () Bool)

(declare-fun setElem!26298 () Context!5666)

(declare-fun tp!1314735 () Bool)

(assert (=> setNonEmpty!26298 (= setRes!26298 (and tp!1314735 (inv!63117 setElem!26298) e!2664126))))

(declare-fun setRest!26298 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26298 (= (_2!25817 (h!53056 (minValue!4629 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925)))))))) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26298 true) setRest!26298))))

(declare-fun b!4289234 () Bool)

(declare-fun e!2664128 () Bool)

(declare-fun tp!1314733 () Bool)

(assert (=> b!4289234 (= e!2664128 tp!1314733)))

(declare-fun b!4289235 () Bool)

(declare-fun tp!1314736 () Bool)

(assert (=> b!4289235 (= e!2664127 (and (inv!63117 (_1!25816 (_1!25817 (h!53056 (minValue!4629 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925)))))))))) e!2664128 tp_is_empty!23111 setRes!26298 tp!1314736))))

(declare-fun condSetEmpty!26298 () Bool)

(assert (=> b!4289235 (= condSetEmpty!26298 (= (_2!25817 (h!53056 (minValue!4629 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925)))))))) ((as const (Array Context!5666 Bool)) false)))))

(assert (= b!4289235 b!4289234))

(assert (= (and b!4289235 condSetEmpty!26298) setIsEmpty!26298))

(assert (= (and b!4289235 (not condSetEmpty!26298)) setNonEmpty!26298))

(assert (= setNonEmpty!26298 b!4289233))

(assert (= (and b!4289042 ((_ is Cons!47636) (minValue!4629 (v!41550 (underlying!8969 (v!41551 (underlying!8970 (cache!4416 cacheUp!925)))))))) b!4289235))

(declare-fun m!4883931 () Bool)

(assert (=> setNonEmpty!26298 m!4883931))

(declare-fun m!4883933 () Bool)

(assert (=> b!4289235 m!4883933))

(declare-fun b!4289244 () Bool)

(declare-fun tp!1314743 () Bool)

(declare-fun e!2664133 () Bool)

(declare-fun tp!1314744 () Bool)

(assert (=> b!4289244 (= e!2664133 (and (inv!63116 (left!35389 (c!730207 input!5500))) tp!1314743 (inv!63116 (right!35719 (c!730207 input!5500))) tp!1314744))))

(declare-fun b!4289246 () Bool)

(declare-fun e!2664134 () Bool)

(declare-fun tp!1314745 () Bool)

(assert (=> b!4289246 (= e!2664134 tp!1314745)))

(declare-fun b!4289245 () Bool)

(declare-fun inv!63120 (IArray!28831) Bool)

(assert (=> b!4289245 (= e!2664133 (and (inv!63120 (xs!17691 (c!730207 input!5500))) e!2664134))))

(assert (=> b!4289051 (= tp!1314587 (and (inv!63116 (c!730207 input!5500)) e!2664133))))

(assert (= (and b!4289051 ((_ is Node!14385) (c!730207 input!5500))) b!4289244))

(assert (= b!4289245 b!4289246))

(assert (= (and b!4289051 ((_ is Leaf!22258) (c!730207 input!5500))) b!4289245))

(declare-fun m!4883935 () Bool)

(assert (=> b!4289244 m!4883935))

(declare-fun m!4883937 () Bool)

(assert (=> b!4289244 m!4883937))

(declare-fun m!4883939 () Bool)

(assert (=> b!4289245 m!4883939))

(assert (=> b!4289051 m!4883771))

(declare-fun e!2664136 () Bool)

(assert (=> b!4289050 (= tp!1314582 e!2664136)))

(declare-fun setRes!26299 () Bool)

(declare-fun e!2664135 () Bool)

(declare-fun tp!1314747 () Bool)

(declare-fun tp!1314746 () Bool)

(declare-fun b!4289247 () Bool)

(assert (=> b!4289247 (= e!2664136 (and tp!1314747 (inv!63117 (_2!25820 (_1!25821 (h!53059 (zeroValue!4631 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044)))))))))) e!2664135 tp_is_empty!23111 setRes!26299 tp!1314746))))

(declare-fun condSetEmpty!26299 () Bool)

(assert (=> b!4289247 (= condSetEmpty!26299 (= (_2!25821 (h!53059 (zeroValue!4631 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044)))))))) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun setIsEmpty!26299 () Bool)

(assert (=> setIsEmpty!26299 setRes!26299))

(declare-fun b!4289248 () Bool)

(declare-fun e!2664137 () Bool)

(declare-fun tp!1314750 () Bool)

(assert (=> b!4289248 (= e!2664137 tp!1314750)))

(declare-fun b!4289249 () Bool)

(declare-fun tp!1314749 () Bool)

(assert (=> b!4289249 (= e!2664135 tp!1314749)))

(declare-fun setElem!26299 () Context!5666)

(declare-fun setNonEmpty!26299 () Bool)

(declare-fun tp!1314748 () Bool)

(assert (=> setNonEmpty!26299 (= setRes!26299 (and tp!1314748 (inv!63117 setElem!26299) e!2664137))))

(declare-fun setRest!26299 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26299 (= (_2!25821 (h!53059 (zeroValue!4631 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044)))))))) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26299 true) setRest!26299))))

(assert (= b!4289247 b!4289249))

(assert (= (and b!4289247 condSetEmpty!26299) setIsEmpty!26299))

(assert (= (and b!4289247 (not condSetEmpty!26299)) setNonEmpty!26299))

(assert (= setNonEmpty!26299 b!4289248))

(assert (= (and b!4289050 ((_ is Cons!47639) (zeroValue!4631 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044)))))))) b!4289247))

(declare-fun m!4883941 () Bool)

(assert (=> b!4289247 m!4883941))

(declare-fun m!4883943 () Bool)

(assert (=> setNonEmpty!26299 m!4883943))

(declare-fun e!2664139 () Bool)

(assert (=> b!4289050 (= tp!1314600 e!2664139)))

(declare-fun e!2664138 () Bool)

(declare-fun tp!1314751 () Bool)

(declare-fun tp!1314752 () Bool)

(declare-fun b!4289250 () Bool)

(declare-fun setRes!26300 () Bool)

(assert (=> b!4289250 (= e!2664139 (and tp!1314752 (inv!63117 (_2!25820 (_1!25821 (h!53059 (minValue!4631 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044)))))))))) e!2664138 tp_is_empty!23111 setRes!26300 tp!1314751))))

(declare-fun condSetEmpty!26300 () Bool)

(assert (=> b!4289250 (= condSetEmpty!26300 (= (_2!25821 (h!53059 (minValue!4631 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044)))))))) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun setIsEmpty!26300 () Bool)

(assert (=> setIsEmpty!26300 setRes!26300))

(declare-fun b!4289251 () Bool)

(declare-fun e!2664140 () Bool)

(declare-fun tp!1314755 () Bool)

(assert (=> b!4289251 (= e!2664140 tp!1314755)))

(declare-fun b!4289252 () Bool)

(declare-fun tp!1314754 () Bool)

(assert (=> b!4289252 (= e!2664138 tp!1314754)))

(declare-fun setNonEmpty!26300 () Bool)

(declare-fun setElem!26300 () Context!5666)

(declare-fun tp!1314753 () Bool)

(assert (=> setNonEmpty!26300 (= setRes!26300 (and tp!1314753 (inv!63117 setElem!26300) e!2664140))))

(declare-fun setRest!26300 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26300 (= (_2!25821 (h!53059 (minValue!4631 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044)))))))) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26300 true) setRest!26300))))

(assert (= b!4289250 b!4289252))

(assert (= (and b!4289250 condSetEmpty!26300) setIsEmpty!26300))

(assert (= (and b!4289250 (not condSetEmpty!26300)) setNonEmpty!26300))

(assert (= setNonEmpty!26300 b!4289251))

(assert (= (and b!4289050 ((_ is Cons!47639) (minValue!4631 (v!41554 (underlying!8973 (v!41555 (underlying!8974 (cache!4417 cacheDown!1044)))))))) b!4289250))

(declare-fun m!4883945 () Bool)

(assert (=> b!4289250 m!4883945))

(declare-fun m!4883947 () Bool)

(assert (=> setNonEmpty!26300 m!4883947))

(declare-fun tp!1314757 () Bool)

(declare-fun b!4289253 () Bool)

(declare-fun e!2664141 () Bool)

(declare-fun tp!1314756 () Bool)

(assert (=> b!4289253 (= e!2664141 (and (inv!63116 (left!35389 (c!730207 (totalInput!4339 cacheFindLongestMatch!171)))) tp!1314756 (inv!63116 (right!35719 (c!730207 (totalInput!4339 cacheFindLongestMatch!171)))) tp!1314757))))

(declare-fun b!4289255 () Bool)

(declare-fun e!2664142 () Bool)

(declare-fun tp!1314758 () Bool)

(assert (=> b!4289255 (= e!2664142 tp!1314758)))

(declare-fun b!4289254 () Bool)

(assert (=> b!4289254 (= e!2664141 (and (inv!63120 (xs!17691 (c!730207 (totalInput!4339 cacheFindLongestMatch!171)))) e!2664142))))

(assert (=> b!4289039 (= tp!1314583 (and (inv!63116 (c!730207 (totalInput!4339 cacheFindLongestMatch!171))) e!2664141))))

(assert (= (and b!4289039 ((_ is Node!14385) (c!730207 (totalInput!4339 cacheFindLongestMatch!171)))) b!4289253))

(assert (= b!4289254 b!4289255))

(assert (= (and b!4289039 ((_ is Leaf!22258) (c!730207 (totalInput!4339 cacheFindLongestMatch!171)))) b!4289254))

(declare-fun m!4883949 () Bool)

(assert (=> b!4289253 m!4883949))

(declare-fun m!4883951 () Bool)

(assert (=> b!4289253 m!4883951))

(declare-fun m!4883953 () Bool)

(assert (=> b!4289254 m!4883953))

(assert (=> b!4289039 m!4883791))

(declare-fun condSetEmpty!26303 () Bool)

(assert (=> setNonEmpty!26267 (= condSetEmpty!26303 (= setRest!26267 ((as const (Array Context!5666 Bool)) false)))))

(declare-fun setRes!26303 () Bool)

(assert (=> setNonEmpty!26267 (= tp!1314595 setRes!26303)))

(declare-fun setIsEmpty!26303 () Bool)

(assert (=> setIsEmpty!26303 setRes!26303))

(declare-fun setNonEmpty!26303 () Bool)

(declare-fun setElem!26303 () Context!5666)

(declare-fun tp!1314764 () Bool)

(declare-fun e!2664145 () Bool)

(assert (=> setNonEmpty!26303 (= setRes!26303 (and tp!1314764 (inv!63117 setElem!26303) e!2664145))))

(declare-fun setRest!26303 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26303 (= setRest!26267 ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26303 true) setRest!26303))))

(declare-fun b!4289260 () Bool)

(declare-fun tp!1314763 () Bool)

(assert (=> b!4289260 (= e!2664145 tp!1314763)))

(assert (= (and setNonEmpty!26267 condSetEmpty!26303) setIsEmpty!26303))

(assert (= (and setNonEmpty!26267 (not condSetEmpty!26303)) setNonEmpty!26303))

(assert (= setNonEmpty!26303 b!4289260))

(declare-fun m!4883955 () Bool)

(assert (=> setNonEmpty!26303 m!4883955))

(declare-fun b!4289261 () Bool)

(declare-fun e!2664146 () Bool)

(declare-fun tp!1314765 () Bool)

(declare-fun tp!1314766 () Bool)

(assert (=> b!4289261 (= e!2664146 (and (inv!63116 (left!35389 (c!730207 totalInput!793))) tp!1314765 (inv!63116 (right!35719 (c!730207 totalInput!793))) tp!1314766))))

(declare-fun b!4289263 () Bool)

(declare-fun e!2664147 () Bool)

(declare-fun tp!1314767 () Bool)

(assert (=> b!4289263 (= e!2664147 tp!1314767)))

(declare-fun b!4289262 () Bool)

(assert (=> b!4289262 (= e!2664146 (and (inv!63120 (xs!17691 (c!730207 totalInput!793))) e!2664147))))

(assert (=> b!4289055 (= tp!1314584 (and (inv!63116 (c!730207 totalInput!793)) e!2664146))))

(assert (= (and b!4289055 ((_ is Node!14385) (c!730207 totalInput!793))) b!4289261))

(assert (= b!4289262 b!4289263))

(assert (= (and b!4289055 ((_ is Leaf!22258) (c!730207 totalInput!793))) b!4289262))

(declare-fun m!4883957 () Bool)

(assert (=> b!4289261 m!4883957))

(declare-fun m!4883959 () Bool)

(assert (=> b!4289261 m!4883959))

(declare-fun m!4883961 () Bool)

(assert (=> b!4289262 m!4883961))

(assert (=> b!4289055 m!4883763))

(declare-fun b!4289268 () Bool)

(declare-fun e!2664150 () Bool)

(declare-fun tp!1314772 () Bool)

(declare-fun tp!1314773 () Bool)

(assert (=> b!4289268 (= e!2664150 (and tp!1314772 tp!1314773))))

(assert (=> b!4289054 (= tp!1314589 e!2664150)))

(assert (= (and b!4289054 ((_ is Cons!47635) (exprs!3333 setElem!26267))) b!4289268))

(declare-fun e!2664152 () Bool)

(assert (=> b!4289036 (= tp!1314602 e!2664152)))

(declare-fun tp!1314775 () Bool)

(declare-fun e!2664151 () Bool)

(declare-fun b!4289269 () Bool)

(declare-fun tp!1314774 () Bool)

(declare-fun setRes!26304 () Bool)

(assert (=> b!4289269 (= e!2664152 (and tp!1314775 (inv!63117 (_2!25820 (_1!25821 (h!53059 mapDefault!19693)))) e!2664151 tp_is_empty!23111 setRes!26304 tp!1314774))))

(declare-fun condSetEmpty!26304 () Bool)

(assert (=> b!4289269 (= condSetEmpty!26304 (= (_2!25821 (h!53059 mapDefault!19693)) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun setIsEmpty!26304 () Bool)

(assert (=> setIsEmpty!26304 setRes!26304))

(declare-fun b!4289270 () Bool)

(declare-fun e!2664153 () Bool)

(declare-fun tp!1314778 () Bool)

(assert (=> b!4289270 (= e!2664153 tp!1314778)))

(declare-fun b!4289271 () Bool)

(declare-fun tp!1314777 () Bool)

(assert (=> b!4289271 (= e!2664151 tp!1314777)))

(declare-fun setNonEmpty!26304 () Bool)

(declare-fun tp!1314776 () Bool)

(declare-fun setElem!26304 () Context!5666)

(assert (=> setNonEmpty!26304 (= setRes!26304 (and tp!1314776 (inv!63117 setElem!26304) e!2664153))))

(declare-fun setRest!26304 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26304 (= (_2!25821 (h!53059 mapDefault!19693)) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26304 true) setRest!26304))))

(assert (= b!4289269 b!4289271))

(assert (= (and b!4289269 condSetEmpty!26304) setIsEmpty!26304))

(assert (= (and b!4289269 (not condSetEmpty!26304)) setNonEmpty!26304))

(assert (= setNonEmpty!26304 b!4289270))

(assert (= (and b!4289036 ((_ is Cons!47639) mapDefault!19693)) b!4289269))

(declare-fun m!4883963 () Bool)

(assert (=> b!4289269 m!4883963))

(declare-fun m!4883965 () Bool)

(assert (=> setNonEmpty!26304 m!4883965))

(declare-fun b!4289272 () Bool)

(declare-fun e!2664155 () Bool)

(declare-fun setRes!26305 () Bool)

(declare-fun tp!1314781 () Bool)

(assert (=> b!4289272 (= e!2664155 (and setRes!26305 tp!1314781))))

(declare-fun condSetEmpty!26305 () Bool)

(assert (=> b!4289272 (= condSetEmpty!26305 (= (_1!25818 (_1!25819 (h!53058 (zeroValue!4630 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))))) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun tp!1314780 () Bool)

(declare-fun setNonEmpty!26305 () Bool)

(declare-fun setElem!26305 () Context!5666)

(declare-fun e!2664154 () Bool)

(assert (=> setNonEmpty!26305 (= setRes!26305 (and tp!1314780 (inv!63117 setElem!26305) e!2664154))))

(declare-fun setRest!26305 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26305 (= (_1!25818 (_1!25819 (h!53058 (zeroValue!4630 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))))) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26305 true) setRest!26305))))

(declare-fun setIsEmpty!26305 () Bool)

(assert (=> setIsEmpty!26305 setRes!26305))

(declare-fun b!4289273 () Bool)

(declare-fun tp!1314779 () Bool)

(assert (=> b!4289273 (= e!2664154 tp!1314779)))

(assert (=> b!4289038 (= tp!1314604 e!2664155)))

(assert (= (and b!4289272 condSetEmpty!26305) setIsEmpty!26305))

(assert (= (and b!4289272 (not condSetEmpty!26305)) setNonEmpty!26305))

(assert (= setNonEmpty!26305 b!4289273))

(assert (= (and b!4289038 ((_ is Cons!47638) (zeroValue!4630 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171)))))))) b!4289272))

(declare-fun m!4883967 () Bool)

(assert (=> setNonEmpty!26305 m!4883967))

(declare-fun b!4289274 () Bool)

(declare-fun e!2664157 () Bool)

(declare-fun setRes!26306 () Bool)

(declare-fun tp!1314784 () Bool)

(assert (=> b!4289274 (= e!2664157 (and setRes!26306 tp!1314784))))

(declare-fun condSetEmpty!26306 () Bool)

(assert (=> b!4289274 (= condSetEmpty!26306 (= (_1!25818 (_1!25819 (h!53058 (minValue!4630 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))))) ((as const (Array Context!5666 Bool)) false)))))

(declare-fun e!2664156 () Bool)

(declare-fun setNonEmpty!26306 () Bool)

(declare-fun tp!1314783 () Bool)

(declare-fun setElem!26306 () Context!5666)

(assert (=> setNonEmpty!26306 (= setRes!26306 (and tp!1314783 (inv!63117 setElem!26306) e!2664156))))

(declare-fun setRest!26306 () (InoxSet Context!5666))

(assert (=> setNonEmpty!26306 (= (_1!25818 (_1!25819 (h!53058 (minValue!4630 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171))))))))) ((_ map or) (store ((as const (Array Context!5666 Bool)) false) setElem!26306 true) setRest!26306))))

(declare-fun setIsEmpty!26306 () Bool)

(assert (=> setIsEmpty!26306 setRes!26306))

(declare-fun b!4289275 () Bool)

(declare-fun tp!1314782 () Bool)

(assert (=> b!4289275 (= e!2664156 tp!1314782)))

(assert (=> b!4289038 (= tp!1314590 e!2664157)))

(assert (= (and b!4289274 condSetEmpty!26306) setIsEmpty!26306))

(assert (= (and b!4289274 (not condSetEmpty!26306)) setNonEmpty!26306))

(assert (= setNonEmpty!26306 b!4289275))

(assert (= (and b!4289038 ((_ is Cons!47638) (minValue!4630 (v!41552 (underlying!8971 (v!41553 (underlying!8972 (cache!4418 cacheFindLongestMatch!171)))))))) b!4289274))

(declare-fun m!4883969 () Bool)

(assert (=> setNonEmpty!26306 m!4883969))

(check-sat (not b_next!128009) (not d!1265387) (not b!4289072) (not setNonEmpty!26273) (not b!4289250) (not d!1265417) b_and!338519 (not b!4289160) (not setNonEmpty!26303) (not b!4289137) (not b!4289128) (not b!4289270) (not b!4289204) (not b!4289274) (not b!4289055) (not setNonEmpty!26288) (not setNonEmpty!26272) (not b!4289234) (not b!4289125) (not b!4289131) (not b!4289220) (not b!4289123) (not b!4289224) (not b!4289260) (not d!1265407) (not setNonEmpty!26306) (not d!1265419) (not b!4289268) (not b!4289159) (not setNonEmpty!26297) (not b!4289225) (not b!4289262) (not b!4289169) (not d!1265405) (not d!1265423) (not b!4289221) (not b!4289155) (not b!4289193) (not b!4289171) tp_is_empty!23111 (not b!4289088) (not setNonEmpty!26305) (not b!4289249) (not b!4289261) (not b!4289269) (not b_next!128007) b_and!338527 (not b_next!128013) (not b!4289272) (not b!4289228) (not b!4289244) b_and!338525 (not b!4289074) b_and!338529 (not setNonEmpty!26300) (not b!4289086) (not b!4289247) (not b!4289235) (not setNonEmpty!26281) (not b!4289219) (not b!4289232) (not d!1265425) (not b!4289227) (not d!1265427) (not b!4289158) (not b!4289069) (not b!4289073) (not b!4289185) (not b!4289245) (not mapNonEmpty!19703) (not b!4289113) (not b_next!128017) (not d!1265409) (not b!4289112) (not b!4289229) (not d!1265411) (not mapNonEmpty!19700) (not setNonEmpty!26296) (not b!4289170) (not b!4289156) (not setNonEmpty!26294) (not b!4289183) (not setNonEmpty!26276) (not b!4289231) (not b!4289126) (not b!4289223) (not b!4289254) (not setNonEmpty!26293) (not setNonEmpty!26295) (not b!4289122) (not b!4289087) (not b!4289182) (not mapNonEmpty!19697) (not b!4289271) (not b!4289252) (not d!1265385) (not d!1265431) (not b!4289106) (not setNonEmpty!26298) (not b!4289251) b_and!338521 (not b!4289134) (not b!4289070) (not setNonEmpty!26285) (not b!4289202) (not setNonEmpty!26299) (not b!4289233) (not b!4289071) (not setNonEmpty!26282) (not b!4289039) (not b!4289263) (not b!4289273) (not d!1265391) (not b_next!128015) (not b!4289120) (not b!4289255) (not b!4289246) (not b_next!128011) (not b!4289089) (not b!4289226) (not b!4289203) (not b!4289275) (not b!4289230) (not b!4289248) (not b!4289157) (not setNonEmpty!26304) (not b!4289253) b_and!338523 (not b!4289051) (not b!4289192) (not b!4289109) (not b!4289140) (not b!4289184) (not b!4289222))
(check-sat b_and!338519 (not b_next!128009) (not b_next!128013) (not b_next!128017) b_and!338521 (not b_next!128015) (not b_next!128011) b_and!338523 (not b_next!128007) b_and!338527 b_and!338525 b_and!338529)
