; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411842 () Bool)

(assert start!411842)

(declare-fun b!4287779 () Bool)

(declare-fun b_free!127199 () Bool)

(declare-fun b_next!127903 () Bool)

(assert (=> b!4287779 (= b_free!127199 (not b_next!127903))))

(declare-fun tp!1313650 () Bool)

(declare-fun b_and!338415 () Bool)

(assert (=> b!4287779 (= tp!1313650 b_and!338415)))

(declare-fun b!4287778 () Bool)

(declare-fun b_free!127201 () Bool)

(declare-fun b_next!127905 () Bool)

(assert (=> b!4287778 (= b_free!127201 (not b_next!127905))))

(declare-fun tp!1313639 () Bool)

(declare-fun b_and!338417 () Bool)

(assert (=> b!4287778 (= tp!1313639 b_and!338417)))

(declare-fun b!4287776 () Bool)

(declare-fun b_free!127203 () Bool)

(declare-fun b_next!127907 () Bool)

(assert (=> b!4287776 (= b_free!127203 (not b_next!127907))))

(declare-fun tp!1313648 () Bool)

(declare-fun b_and!338419 () Bool)

(assert (=> b!4287776 (= tp!1313648 b_and!338419)))

(declare-fun b!4287772 () Bool)

(declare-fun b_free!127205 () Bool)

(declare-fun b_next!127909 () Bool)

(assert (=> b!4287772 (= b_free!127205 (not b_next!127909))))

(declare-fun tp!1313649 () Bool)

(declare-fun b_and!338421 () Bool)

(assert (=> b!4287772 (= tp!1313649 b_and!338421)))

(declare-fun b!4287784 () Bool)

(declare-fun b_free!127207 () Bool)

(declare-fun b_next!127911 () Bool)

(assert (=> b!4287784 (= b_free!127207 (not b_next!127911))))

(declare-fun tp!1313642 () Bool)

(declare-fun b_and!338423 () Bool)

(assert (=> b!4287784 (= tp!1313642 b_and!338423)))

(declare-fun b!4287795 () Bool)

(declare-fun b_free!127209 () Bool)

(declare-fun b_next!127913 () Bool)

(assert (=> b!4287795 (= b_free!127209 (not b_next!127913))))

(declare-fun tp!1313661 () Bool)

(declare-fun b_and!338425 () Bool)

(assert (=> b!4287795 (= tp!1313661 b_and!338425)))

(declare-fun b!4287764 () Bool)

(declare-fun e!2662974 () Bool)

(assert (=> b!4287764 (= e!2662974 false)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!26064 0))(
  ( (C!26065 (val!15358 Int)) )
))
(declare-datatypes ((Regex!12933 0))(
  ( (ElementMatch!12933 (c!730175 C!26064)) (Concat!21252 (regOne!26378 Regex!12933) (regTwo!26378 Regex!12933)) (EmptyExpr!12933) (Star!12933 (reg!13262 Regex!12933)) (EmptyLang!12933) (Union!12933 (regOne!26379 Regex!12933) (regTwo!26379 Regex!12933)) )
))
(declare-datatypes ((List!47711 0))(
  ( (Nil!47587) (Cons!47587 (h!53007 Regex!12933) (t!354310 List!47711)) )
))
(declare-datatypes ((Context!5646 0))(
  ( (Context!5647 (exprs!3323 List!47711)) )
))
(declare-fun lt!1516365 () (InoxSet Context!5646))

(declare-fun r!15285 () Regex!12933)

(declare-fun focus!324 (Regex!12933) (InoxSet Context!5646))

(assert (=> b!4287764 (= lt!1516365 (focus!324 r!15285))))

(declare-fun b!4287765 () Bool)

(declare-fun e!2662992 () Bool)

(declare-fun e!2662988 () Bool)

(assert (=> b!4287765 (= e!2662992 e!2662988)))

(declare-fun b!4287766 () Bool)

(declare-fun e!2662969 () Bool)

(assert (=> b!4287766 (= e!2662988 e!2662969)))

(declare-fun b!4287767 () Bool)

(declare-fun res!1758916 () Bool)

(assert (=> b!4287767 (=> (not res!1758916) (not e!2662974))))

(declare-datatypes ((tuple2!45128 0))(
  ( (tuple2!45129 (_1!25748 (InoxSet Context!5646)) (_2!25748 Int)) )
))
(declare-datatypes ((tuple2!45130 0))(
  ( (tuple2!45131 (_1!25749 tuple2!45128) (_2!25749 Int)) )
))
(declare-datatypes ((List!47712 0))(
  ( (Nil!47588) (Cons!47588 (h!53008 tuple2!45130) (t!354311 List!47712)) )
))
(declare-datatypes ((array!15548 0))(
  ( (array!15549 (arr!6944 (Array (_ BitVec 32) (_ BitVec 64))) (size!34897 (_ BitVec 32))) )
))
(declare-datatypes ((array!15550 0))(
  ( (array!15551 (arr!6945 (Array (_ BitVec 32) List!47712)) (size!34898 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8688 0))(
  ( (LongMapFixedSize!8689 (defaultEntry!4729 Int) (mask!12780 (_ BitVec 32)) (extraKeys!4593 (_ BitVec 32)) (zeroValue!4603 List!47712) (minValue!4603 List!47712) (_size!8731 (_ BitVec 32)) (_keys!4644 array!15548) (_values!4625 array!15550) (_vacant!4405 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17185 0))(
  ( (Cell!17186 (v!41498 LongMapFixedSize!8688)) )
))
(declare-datatypes ((MutLongMap!4344 0))(
  ( (LongMap!4344 (underlying!8917 Cell!17185)) (MutLongMapExt!4343 (__x!29057 Int)) )
))
(declare-datatypes ((Cell!17187 0))(
  ( (Cell!17188 (v!41499 MutLongMap!4344)) )
))
(declare-datatypes ((Hashable!4260 0))(
  ( (HashableExt!4259 (__x!29058 Int)) )
))
(declare-datatypes ((MutableMap!4250 0))(
  ( (MutableMapExt!4249 (__x!29059 Int)) (HashMap!4250 (underlying!8918 Cell!17187) (hashF!6292 Hashable!4260) (_size!8732 (_ BitVec 32)) (defaultValue!4421 Int)) )
))
(declare-datatypes ((List!47713 0))(
  ( (Nil!47589) (Cons!47589 (h!53009 C!26064) (t!354312 List!47713)) )
))
(declare-datatypes ((IArray!28811 0))(
  ( (IArray!28812 (innerList!14463 List!47713)) )
))
(declare-datatypes ((Conc!14375 0))(
  ( (Node!14375 (left!35374 Conc!14375) (right!35704 Conc!14375) (csize!28980 Int) (cheight!14586 Int)) (Leaf!22243 (xs!17681 IArray!28811) (csize!28981 Int)) (Empty!14375) )
))
(declare-datatypes ((BalanceConc!28240 0))(
  ( (BalanceConc!28241 (c!730176 Conc!14375)) )
))
(declare-datatypes ((CacheFindLongestMatch!438 0))(
  ( (CacheFindLongestMatch!439 (cache!4390 MutableMap!4250) (totalInput!4329 BalanceConc!28240)) )
))
(declare-fun cacheFindLongestMatch!199 () CacheFindLongestMatch!438)

(declare-fun totalInput!1189 () BalanceConc!28240)

(assert (=> b!4287767 (= res!1758916 (= (totalInput!4329 cacheFindLongestMatch!199) totalInput!1189))))

(declare-fun e!2662986 () Bool)

(declare-fun e!2662991 () Bool)

(declare-fun e!2662976 () Bool)

(declare-fun b!4287768 () Bool)

(declare-fun inv!63057 (BalanceConc!28240) Bool)

(assert (=> b!4287768 (= e!2662986 (and e!2662976 (inv!63057 (totalInput!4329 cacheFindLongestMatch!199)) e!2662991))))

(declare-fun b!4287769 () Bool)

(declare-fun e!2662980 () Bool)

(declare-fun tp!1313652 () Bool)

(assert (=> b!4287769 (= e!2662980 tp!1313652)))

(declare-fun mapNonEmpty!19605 () Bool)

(declare-fun mapRes!19605 () Bool)

(declare-fun tp!1313638 () Bool)

(declare-fun tp!1313655 () Bool)

(assert (=> mapNonEmpty!19605 (= mapRes!19605 (and tp!1313638 tp!1313655))))

(declare-datatypes ((tuple3!5386 0))(
  ( (tuple3!5387 (_1!25750 Regex!12933) (_2!25750 Context!5646) (_3!3184 C!26064)) )
))
(declare-datatypes ((tuple2!45132 0))(
  ( (tuple2!45133 (_1!25751 tuple3!5386) (_2!25751 (InoxSet Context!5646))) )
))
(declare-datatypes ((List!47714 0))(
  ( (Nil!47590) (Cons!47590 (h!53010 tuple2!45132) (t!354313 List!47714)) )
))
(declare-datatypes ((array!15552 0))(
  ( (array!15553 (arr!6946 (Array (_ BitVec 32) List!47714)) (size!34899 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8690 0))(
  ( (LongMapFixedSize!8691 (defaultEntry!4730 Int) (mask!12781 (_ BitVec 32)) (extraKeys!4594 (_ BitVec 32)) (zeroValue!4604 List!47714) (minValue!4604 List!47714) (_size!8733 (_ BitVec 32)) (_keys!4645 array!15548) (_values!4626 array!15552) (_vacant!4406 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17189 0))(
  ( (Cell!17190 (v!41500 LongMapFixedSize!8690)) )
))
(declare-datatypes ((MutLongMap!4345 0))(
  ( (LongMap!4345 (underlying!8919 Cell!17189)) (MutLongMapExt!4344 (__x!29060 Int)) )
))
(declare-datatypes ((Cell!17191 0))(
  ( (Cell!17192 (v!41501 MutLongMap!4345)) )
))
(declare-datatypes ((Hashable!4261 0))(
  ( (HashableExt!4260 (__x!29061 Int)) )
))
(declare-datatypes ((MutableMap!4251 0))(
  ( (MutableMapExt!4250 (__x!29062 Int)) (HashMap!4251 (underlying!8920 Cell!17191) (hashF!6293 Hashable!4261) (_size!8734 (_ BitVec 32)) (defaultValue!4422 Int)) )
))
(declare-datatypes ((CacheDown!2894 0))(
  ( (CacheDown!2895 (cache!4391 MutableMap!4251)) )
))
(declare-fun cacheDown!1163 () CacheDown!2894)

(declare-fun mapValue!19607 () List!47714)

(declare-fun mapRest!19606 () (Array (_ BitVec 32) List!47714))

(declare-fun mapKey!19607 () (_ BitVec 32))

(assert (=> mapNonEmpty!19605 (= (arr!6946 (_values!4626 (v!41500 (underlying!8919 (v!41501 (underlying!8920 (cache!4391 cacheDown!1163))))))) (store mapRest!19606 mapKey!19607 mapValue!19607))))

(declare-fun b!4287770 () Bool)

(declare-fun e!2662989 () Bool)

(declare-fun e!2662981 () Bool)

(assert (=> b!4287770 (= e!2662989 e!2662981)))

(declare-fun mapIsEmpty!19605 () Bool)

(declare-fun mapRes!19607 () Bool)

(assert (=> mapIsEmpty!19605 mapRes!19607))

(declare-fun b!4287771 () Bool)

(declare-fun e!2662977 () Bool)

(declare-fun tp!1313644 () Bool)

(assert (=> b!4287771 (= e!2662977 (and tp!1313644 mapRes!19607))))

(declare-fun condMapEmpty!19605 () Bool)

(declare-fun mapDefault!19606 () List!47712)

(assert (=> b!4287771 (= condMapEmpty!19605 (= (arr!6945 (_values!4625 (v!41498 (underlying!8917 (v!41499 (underlying!8918 (cache!4390 cacheFindLongestMatch!199))))))) ((as const (Array (_ BitVec 32) List!47712)) mapDefault!19606)))))

(declare-fun tp!1313660 () Bool)

(declare-fun e!2662990 () Bool)

(declare-fun tp!1313635 () Bool)

(declare-fun array_inv!4978 (array!15548) Bool)

(declare-fun array_inv!4979 (array!15550) Bool)

(assert (=> b!4287772 (= e!2662990 (and tp!1313649 tp!1313635 tp!1313660 (array_inv!4978 (_keys!4644 (v!41498 (underlying!8917 (v!41499 (underlying!8918 (cache!4390 cacheFindLongestMatch!199))))))) (array_inv!4979 (_values!4625 (v!41498 (underlying!8917 (v!41499 (underlying!8918 (cache!4390 cacheFindLongestMatch!199))))))) e!2662977))))

(declare-fun b!4287773 () Bool)

(declare-fun res!1758917 () Bool)

(assert (=> b!4287773 (=> (not res!1758917) (not e!2662974))))

(declare-datatypes ((tuple2!45134 0))(
  ( (tuple2!45135 (_1!25752 Context!5646) (_2!25752 C!26064)) )
))
(declare-datatypes ((tuple2!45136 0))(
  ( (tuple2!45137 (_1!25753 tuple2!45134) (_2!25753 (InoxSet Context!5646))) )
))
(declare-datatypes ((List!47715 0))(
  ( (Nil!47591) (Cons!47591 (h!53011 tuple2!45136) (t!354314 List!47715)) )
))
(declare-datatypes ((array!15554 0))(
  ( (array!15555 (arr!6947 (Array (_ BitVec 32) List!47715)) (size!34900 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8692 0))(
  ( (LongMapFixedSize!8693 (defaultEntry!4731 Int) (mask!12782 (_ BitVec 32)) (extraKeys!4595 (_ BitVec 32)) (zeroValue!4605 List!47715) (minValue!4605 List!47715) (_size!8735 (_ BitVec 32)) (_keys!4646 array!15548) (_values!4627 array!15554) (_vacant!4407 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17193 0))(
  ( (Cell!17194 (v!41502 LongMapFixedSize!8692)) )
))
(declare-datatypes ((MutLongMap!4346 0))(
  ( (LongMap!4346 (underlying!8921 Cell!17193)) (MutLongMapExt!4345 (__x!29063 Int)) )
))
(declare-datatypes ((Cell!17195 0))(
  ( (Cell!17196 (v!41503 MutLongMap!4346)) )
))
(declare-datatypes ((Hashable!4262 0))(
  ( (HashableExt!4261 (__x!29064 Int)) )
))
(declare-datatypes ((MutableMap!4252 0))(
  ( (MutableMapExt!4251 (__x!29065 Int)) (HashMap!4252 (underlying!8922 Cell!17195) (hashF!6294 Hashable!4262) (_size!8736 (_ BitVec 32)) (defaultValue!4423 Int)) )
))
(declare-datatypes ((CacheUp!2776 0))(
  ( (CacheUp!2777 (cache!4392 MutableMap!4252)) )
))
(declare-fun cacheUp!1044 () CacheUp!2776)

(declare-fun valid!3376 (CacheUp!2776) Bool)

(assert (=> b!4287773 (= res!1758917 (valid!3376 cacheUp!1044))))

(declare-fun res!1758915 () Bool)

(assert (=> start!411842 (=> (not res!1758915) (not e!2662974))))

(declare-fun validRegex!5854 (Regex!12933) Bool)

(assert (=> start!411842 (= res!1758915 (validRegex!5854 r!15285))))

(assert (=> start!411842 e!2662974))

(declare-fun e!2662972 () Bool)

(assert (=> start!411842 (and (inv!63057 totalInput!1189) e!2662972)))

(assert (=> start!411842 e!2662980))

(declare-fun input!6546 () BalanceConc!28240)

(declare-fun e!2662973 () Bool)

(assert (=> start!411842 (and (inv!63057 input!6546) e!2662973)))

(declare-fun inv!63058 (CacheFindLongestMatch!438) Bool)

(assert (=> start!411842 (and (inv!63058 cacheFindLongestMatch!199) e!2662986)))

(declare-fun e!2662984 () Bool)

(declare-fun inv!63059 (CacheDown!2894) Bool)

(assert (=> start!411842 (and (inv!63059 cacheDown!1163) e!2662984)))

(declare-fun e!2662979 () Bool)

(declare-fun inv!63060 (CacheUp!2776) Bool)

(assert (=> start!411842 (and (inv!63060 cacheUp!1044) e!2662979)))

(declare-fun b!4287774 () Bool)

(declare-fun tp!1313645 () Bool)

(declare-fun inv!63061 (Conc!14375) Bool)

(assert (=> b!4287774 (= e!2662991 (and (inv!63061 (c!730176 (totalInput!4329 cacheFindLongestMatch!199))) tp!1313645))))

(declare-fun b!4287775 () Bool)

(declare-fun e!2662994 () Bool)

(assert (=> b!4287775 (= e!2662981 e!2662994)))

(declare-fun e!2662983 () Bool)

(assert (=> b!4287776 (= e!2662976 (and e!2662983 tp!1313648))))

(declare-fun b!4287777 () Bool)

(declare-fun res!1758918 () Bool)

(assert (=> b!4287777 (=> (not res!1758918) (not e!2662974))))

(declare-fun isSuffix!1024 (List!47713 List!47713) Bool)

(declare-fun list!17340 (BalanceConc!28240) List!47713)

(assert (=> b!4287777 (= res!1758918 (isSuffix!1024 (list!17340 input!6546) (list!17340 totalInput!1189)))))

(declare-fun e!2662968 () Bool)

(declare-fun e!2662993 () Bool)

(assert (=> b!4287778 (= e!2662968 (and e!2662993 tp!1313639))))

(declare-fun e!2662985 () Bool)

(declare-fun tp!1313663 () Bool)

(declare-fun tp!1313636 () Bool)

(declare-fun array_inv!4980 (array!15554) Bool)

(assert (=> b!4287779 (= e!2662994 (and tp!1313650 tp!1313636 tp!1313663 (array_inv!4978 (_keys!4646 (v!41502 (underlying!8921 (v!41503 (underlying!8922 (cache!4392 cacheUp!1044))))))) (array_inv!4980 (_values!4627 (v!41502 (underlying!8921 (v!41503 (underlying!8922 (cache!4392 cacheUp!1044))))))) e!2662985))))

(declare-fun b!4287780 () Bool)

(declare-fun tp!1313657 () Bool)

(declare-fun mapRes!19606 () Bool)

(assert (=> b!4287780 (= e!2662985 (and tp!1313657 mapRes!19606))))

(declare-fun condMapEmpty!19606 () Bool)

(declare-fun mapDefault!19607 () List!47715)

(assert (=> b!4287780 (= condMapEmpty!19606 (= (arr!6947 (_values!4627 (v!41502 (underlying!8921 (v!41503 (underlying!8922 (cache!4392 cacheUp!1044))))))) ((as const (Array (_ BitVec 32) List!47715)) mapDefault!19607)))))

(declare-fun b!4287781 () Bool)

(assert (=> b!4287781 (= e!2662979 e!2662968)))

(declare-fun b!4287782 () Bool)

(declare-fun tp!1313640 () Bool)

(assert (=> b!4287782 (= e!2662972 (and (inv!63061 (c!730176 totalInput!1189)) tp!1313640))))

(declare-fun b!4287783 () Bool)

(declare-fun res!1758913 () Bool)

(assert (=> b!4287783 (=> (not res!1758913) (not e!2662974))))

(declare-fun valid!3377 (CacheDown!2894) Bool)

(assert (=> b!4287783 (= res!1758913 (valid!3377 cacheDown!1163))))

(declare-fun tp!1313658 () Bool)

(declare-fun tp!1313646 () Bool)

(declare-fun e!2662971 () Bool)

(declare-fun array_inv!4981 (array!15552) Bool)

(assert (=> b!4287784 (= e!2662969 (and tp!1313642 tp!1313658 tp!1313646 (array_inv!4978 (_keys!4645 (v!41500 (underlying!8919 (v!41501 (underlying!8920 (cache!4391 cacheDown!1163))))))) (array_inv!4981 (_values!4626 (v!41500 (underlying!8919 (v!41501 (underlying!8920 (cache!4391 cacheDown!1163))))))) e!2662971))))

(declare-fun mapNonEmpty!19606 () Bool)

(declare-fun tp!1313653 () Bool)

(declare-fun tp!1313641 () Bool)

(assert (=> mapNonEmpty!19606 (= mapRes!19606 (and tp!1313653 tp!1313641))))

(declare-fun mapRest!19605 () (Array (_ BitVec 32) List!47715))

(declare-fun mapKey!19605 () (_ BitVec 32))

(declare-fun mapValue!19605 () List!47715)

(assert (=> mapNonEmpty!19606 (= (arr!6947 (_values!4627 (v!41502 (underlying!8921 (v!41503 (underlying!8922 (cache!4392 cacheUp!1044))))))) (store mapRest!19605 mapKey!19605 mapValue!19605))))

(declare-fun b!4287785 () Bool)

(declare-fun tp!1313643 () Bool)

(assert (=> b!4287785 (= e!2662973 (and (inv!63061 (c!730176 input!6546)) tp!1313643))))

(declare-fun b!4287786 () Bool)

(declare-fun tp!1313656 () Bool)

(declare-fun tp!1313651 () Bool)

(assert (=> b!4287786 (= e!2662980 (and tp!1313656 tp!1313651))))

(declare-fun b!4287787 () Bool)

(declare-fun e!2662987 () Bool)

(declare-fun lt!1516364 () MutLongMap!4344)

(get-info :version)

(assert (=> b!4287787 (= e!2662983 (and e!2662987 ((_ is LongMap!4344) lt!1516364)))))

(assert (=> b!4287787 (= lt!1516364 (v!41499 (underlying!8918 (cache!4390 cacheFindLongestMatch!199))))))

(declare-fun b!4287788 () Bool)

(declare-fun e!2662967 () Bool)

(assert (=> b!4287788 (= e!2662987 e!2662967)))

(declare-fun b!4287789 () Bool)

(declare-fun tp!1313647 () Bool)

(declare-fun tp!1313654 () Bool)

(assert (=> b!4287789 (= e!2662980 (and tp!1313647 tp!1313654))))

(declare-fun b!4287790 () Bool)

(declare-fun lt!1516367 () MutLongMap!4346)

(assert (=> b!4287790 (= e!2662993 (and e!2662989 ((_ is LongMap!4346) lt!1516367)))))

(assert (=> b!4287790 (= lt!1516367 (v!41503 (underlying!8922 (cache!4392 cacheUp!1044))))))

(declare-fun b!4287791 () Bool)

(assert (=> b!4287791 (= e!2662967 e!2662990)))

(declare-fun b!4287792 () Bool)

(declare-fun e!2662970 () Bool)

(declare-fun lt!1516366 () MutLongMap!4345)

(assert (=> b!4287792 (= e!2662970 (and e!2662992 ((_ is LongMap!4345) lt!1516366)))))

(assert (=> b!4287792 (= lt!1516366 (v!41501 (underlying!8920 (cache!4391 cacheDown!1163))))))

(declare-fun b!4287793 () Bool)

(declare-fun e!2662982 () Bool)

(assert (=> b!4287793 (= e!2662984 e!2662982)))

(declare-fun b!4287794 () Bool)

(declare-fun tp!1313659 () Bool)

(assert (=> b!4287794 (= e!2662971 (and tp!1313659 mapRes!19605))))

(declare-fun condMapEmpty!19607 () Bool)

(declare-fun mapDefault!19605 () List!47714)

(assert (=> b!4287794 (= condMapEmpty!19607 (= (arr!6946 (_values!4626 (v!41500 (underlying!8919 (v!41501 (underlying!8920 (cache!4391 cacheDown!1163))))))) ((as const (Array (_ BitVec 32) List!47714)) mapDefault!19605)))))

(declare-fun mapIsEmpty!19606 () Bool)

(assert (=> mapIsEmpty!19606 mapRes!19605))

(assert (=> b!4287795 (= e!2662982 (and e!2662970 tp!1313661))))

(declare-fun mapNonEmpty!19607 () Bool)

(declare-fun tp!1313662 () Bool)

(declare-fun tp!1313637 () Bool)

(assert (=> mapNonEmpty!19607 (= mapRes!19607 (and tp!1313662 tp!1313637))))

(declare-fun mapRest!19607 () (Array (_ BitVec 32) List!47712))

(declare-fun mapKey!19606 () (_ BitVec 32))

(declare-fun mapValue!19606 () List!47712)

(assert (=> mapNonEmpty!19607 (= (arr!6945 (_values!4625 (v!41498 (underlying!8917 (v!41499 (underlying!8918 (cache!4390 cacheFindLongestMatch!199))))))) (store mapRest!19607 mapKey!19606 mapValue!19606))))

(declare-fun b!4287796 () Bool)

(declare-fun res!1758914 () Bool)

(assert (=> b!4287796 (=> (not res!1758914) (not e!2662974))))

(declare-fun valid!3378 (CacheFindLongestMatch!438) Bool)

(assert (=> b!4287796 (= res!1758914 (valid!3378 cacheFindLongestMatch!199))))

(declare-fun b!4287797 () Bool)

(declare-fun tp_is_empty!23097 () Bool)

(assert (=> b!4287797 (= e!2662980 tp_is_empty!23097)))

(declare-fun mapIsEmpty!19607 () Bool)

(assert (=> mapIsEmpty!19607 mapRes!19606))

(assert (= (and start!411842 res!1758915) b!4287773))

(assert (= (and b!4287773 res!1758917) b!4287783))

(assert (= (and b!4287783 res!1758913) b!4287796))

(assert (= (and b!4287796 res!1758914) b!4287767))

(assert (= (and b!4287767 res!1758916) b!4287777))

(assert (= (and b!4287777 res!1758918) b!4287764))

(assert (= start!411842 b!4287782))

(assert (= (and start!411842 ((_ is ElementMatch!12933) r!15285)) b!4287797))

(assert (= (and start!411842 ((_ is Concat!21252) r!15285)) b!4287786))

(assert (= (and start!411842 ((_ is Star!12933) r!15285)) b!4287769))

(assert (= (and start!411842 ((_ is Union!12933) r!15285)) b!4287789))

(assert (= start!411842 b!4287785))

(assert (= (and b!4287771 condMapEmpty!19605) mapIsEmpty!19605))

(assert (= (and b!4287771 (not condMapEmpty!19605)) mapNonEmpty!19607))

(assert (= b!4287772 b!4287771))

(assert (= b!4287791 b!4287772))

(assert (= b!4287788 b!4287791))

(assert (= (and b!4287787 ((_ is LongMap!4344) (v!41499 (underlying!8918 (cache!4390 cacheFindLongestMatch!199))))) b!4287788))

(assert (= b!4287776 b!4287787))

(assert (= (and b!4287768 ((_ is HashMap!4250) (cache!4390 cacheFindLongestMatch!199))) b!4287776))

(assert (= b!4287768 b!4287774))

(assert (= start!411842 b!4287768))

(assert (= (and b!4287794 condMapEmpty!19607) mapIsEmpty!19606))

(assert (= (and b!4287794 (not condMapEmpty!19607)) mapNonEmpty!19605))

(assert (= b!4287784 b!4287794))

(assert (= b!4287766 b!4287784))

(assert (= b!4287765 b!4287766))

(assert (= (and b!4287792 ((_ is LongMap!4345) (v!41501 (underlying!8920 (cache!4391 cacheDown!1163))))) b!4287765))

(assert (= b!4287795 b!4287792))

(assert (= (and b!4287793 ((_ is HashMap!4251) (cache!4391 cacheDown!1163))) b!4287795))

(assert (= start!411842 b!4287793))

(assert (= (and b!4287780 condMapEmpty!19606) mapIsEmpty!19607))

(assert (= (and b!4287780 (not condMapEmpty!19606)) mapNonEmpty!19606))

(assert (= b!4287779 b!4287780))

(assert (= b!4287775 b!4287779))

(assert (= b!4287770 b!4287775))

(assert (= (and b!4287790 ((_ is LongMap!4346) (v!41503 (underlying!8922 (cache!4392 cacheUp!1044))))) b!4287770))

(assert (= b!4287778 b!4287790))

(assert (= (and b!4287781 ((_ is HashMap!4252) (cache!4392 cacheUp!1044))) b!4287778))

(assert (= start!411842 b!4287781))

(declare-fun m!4882933 () Bool)

(assert (=> b!4287784 m!4882933))

(declare-fun m!4882935 () Bool)

(assert (=> b!4287784 m!4882935))

(declare-fun m!4882937 () Bool)

(assert (=> b!4287764 m!4882937))

(declare-fun m!4882939 () Bool)

(assert (=> b!4287777 m!4882939))

(declare-fun m!4882941 () Bool)

(assert (=> b!4287777 m!4882941))

(assert (=> b!4287777 m!4882939))

(assert (=> b!4287777 m!4882941))

(declare-fun m!4882943 () Bool)

(assert (=> b!4287777 m!4882943))

(declare-fun m!4882945 () Bool)

(assert (=> b!4287785 m!4882945))

(declare-fun m!4882947 () Bool)

(assert (=> b!4287774 m!4882947))

(declare-fun m!4882949 () Bool)

(assert (=> b!4287782 m!4882949))

(declare-fun m!4882951 () Bool)

(assert (=> mapNonEmpty!19606 m!4882951))

(declare-fun m!4882953 () Bool)

(assert (=> b!4287783 m!4882953))

(declare-fun m!4882955 () Bool)

(assert (=> b!4287773 m!4882955))

(declare-fun m!4882957 () Bool)

(assert (=> start!411842 m!4882957))

(declare-fun m!4882959 () Bool)

(assert (=> start!411842 m!4882959))

(declare-fun m!4882961 () Bool)

(assert (=> start!411842 m!4882961))

(declare-fun m!4882963 () Bool)

(assert (=> start!411842 m!4882963))

(declare-fun m!4882965 () Bool)

(assert (=> start!411842 m!4882965))

(declare-fun m!4882967 () Bool)

(assert (=> start!411842 m!4882967))

(declare-fun m!4882969 () Bool)

(assert (=> b!4287772 m!4882969))

(declare-fun m!4882971 () Bool)

(assert (=> b!4287772 m!4882971))

(declare-fun m!4882973 () Bool)

(assert (=> b!4287768 m!4882973))

(declare-fun m!4882975 () Bool)

(assert (=> mapNonEmpty!19605 m!4882975))

(declare-fun m!4882977 () Bool)

(assert (=> b!4287779 m!4882977))

(declare-fun m!4882979 () Bool)

(assert (=> b!4287779 m!4882979))

(declare-fun m!4882981 () Bool)

(assert (=> mapNonEmpty!19607 m!4882981))

(declare-fun m!4882983 () Bool)

(assert (=> b!4287796 m!4882983))

(check-sat (not b_next!127905) (not b_next!127903) tp_is_empty!23097 (not b!4287789) (not b!4287774) (not b!4287794) (not b!4287782) (not b!4287773) (not b!4287779) b_and!338417 (not b!4287783) (not start!411842) (not b_next!127911) (not b!4287780) b_and!338419 (not b!4287785) (not b!4287777) b_and!338415 (not b_next!127909) b_and!338425 (not b!4287784) (not mapNonEmpty!19605) (not mapNonEmpty!19606) (not b_next!127907) (not b!4287796) b_and!338423 (not b!4287786) (not b!4287772) (not b_next!127913) b_and!338421 (not b!4287764) (not mapNonEmpty!19607) (not b!4287768) (not b!4287771) (not b!4287769))
(check-sat (not b_next!127905) (not b_next!127903) b_and!338415 b_and!338417 (not b_next!127911) b_and!338419 (not b_next!127909) b_and!338425 (not b_next!127907) b_and!338423 (not b_next!127913) b_and!338421)
