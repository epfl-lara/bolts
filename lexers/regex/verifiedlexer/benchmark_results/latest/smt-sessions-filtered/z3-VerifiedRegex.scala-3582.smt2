; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206522 () Bool)

(assert start!206522)

(declare-fun b!2113828 () Bool)

(declare-fun b_free!61229 () Bool)

(declare-fun b_next!61933 () Bool)

(assert (=> b!2113828 (= b_free!61229 (not b_next!61933))))

(declare-fun tp!644726 () Bool)

(declare-fun b_and!170809 () Bool)

(assert (=> b!2113828 (= tp!644726 b_and!170809)))

(declare-fun b!2113839 () Bool)

(declare-fun b_free!61231 () Bool)

(declare-fun b_next!61935 () Bool)

(assert (=> b!2113839 (= b_free!61231 (not b_next!61935))))

(declare-fun tp!644730 () Bool)

(declare-fun b_and!170811 () Bool)

(assert (=> b!2113839 (= tp!644730 b_and!170811)))

(declare-fun b!2113812 () Bool)

(declare-fun b_free!61233 () Bool)

(declare-fun b_next!61937 () Bool)

(assert (=> b!2113812 (= b_free!61233 (not b_next!61937))))

(declare-fun tp!644717 () Bool)

(declare-fun b_and!170813 () Bool)

(assert (=> b!2113812 (= tp!644717 b_and!170813)))

(declare-fun b!2113831 () Bool)

(declare-fun b_free!61235 () Bool)

(declare-fun b_next!61939 () Bool)

(assert (=> b!2113831 (= b_free!61235 (not b_next!61939))))

(declare-fun tp!644734 () Bool)

(declare-fun b_and!170815 () Bool)

(assert (=> b!2113831 (= tp!644734 b_and!170815)))

(declare-fun b!2113835 () Bool)

(declare-fun b_free!61237 () Bool)

(declare-fun b_next!61941 () Bool)

(assert (=> b!2113835 (= b_free!61237 (not b_next!61941))))

(declare-fun tp!644733 () Bool)

(declare-fun b_and!170817 () Bool)

(assert (=> b!2113835 (= tp!644733 b_and!170817)))

(declare-fun b!2113833 () Bool)

(declare-fun b_free!61239 () Bool)

(declare-fun b_next!61943 () Bool)

(assert (=> b!2113833 (= b_free!61239 (not b_next!61943))))

(declare-fun tp!644725 () Bool)

(declare-fun b_and!170819 () Bool)

(assert (=> b!2113833 (= tp!644725 b_and!170819)))

(declare-fun b!2113806 () Bool)

(declare-fun e!1345060 () Bool)

(declare-fun tp!644721 () Bool)

(assert (=> b!2113806 (= e!1345060 tp!644721)))

(declare-fun b!2113807 () Bool)

(declare-fun res!917550 () Bool)

(declare-fun e!1345039 () Bool)

(assert (=> b!2113807 (=> (not res!917550) (not e!1345039))))

(declare-datatypes ((Hashable!2277 0))(
  ( (HashableExt!2276 (__x!15265 Int)) )
))
(declare-datatypes ((C!11408 0))(
  ( (C!11409 (val!6690 Int)) )
))
(declare-datatypes ((Regex!5631 0))(
  ( (ElementMatch!5631 (c!339197 C!11408)) (Concat!9933 (regOne!11774 Regex!5631) (regTwo!11774 Regex!5631)) (EmptyExpr!5631) (Star!5631 (reg!5960 Regex!5631)) (EmptyLang!5631) (Union!5631 (regOne!11775 Regex!5631) (regTwo!11775 Regex!5631)) )
))
(declare-datatypes ((List!23609 0))(
  ( (Nil!23525) (Cons!23525 (h!28926 Regex!5631) (t!196118 List!23609)) )
))
(declare-datatypes ((Context!2402 0))(
  ( (Context!2403 (exprs!1701 List!23609)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!2752 0))(
  ( (tuple3!2753 (_1!13333 (InoxSet Context!2402)) (_2!13333 Int) (_3!1840 Int)) )
))
(declare-datatypes ((tuple2!22986 0))(
  ( (tuple2!22987 (_1!13334 tuple3!2752) (_2!13334 Int)) )
))
(declare-datatypes ((List!23610 0))(
  ( (Nil!23526) (Cons!23526 (h!28927 tuple2!22986) (t!196119 List!23610)) )
))
(declare-datatypes ((array!8147 0))(
  ( (array!8148 (arr!3615 (Array (_ BitVec 32) List!23610)) (size!18369 (_ BitVec 32))) )
))
(declare-datatypes ((array!8149 0))(
  ( (array!8150 (arr!3616 (Array (_ BitVec 32) (_ BitVec 64))) (size!18370 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4726 0))(
  ( (LongMapFixedSize!4727 (defaultEntry!2728 Int) (mask!6494 (_ BitVec 32)) (extraKeys!2611 (_ BitVec 32)) (zeroValue!2621 List!23610) (minValue!2621 List!23610) (_size!4777 (_ BitVec 32)) (_keys!2660 array!8149) (_values!2643 array!8147) (_vacant!2424 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9277 0))(
  ( (Cell!9278 (v!28053 LongMapFixedSize!4726)) )
))
(declare-datatypes ((MutLongMap!2363 0))(
  ( (LongMap!2363 (underlying!4921 Cell!9277)) (MutLongMapExt!2362 (__x!15266 Int)) )
))
(declare-datatypes ((List!23611 0))(
  ( (Nil!23527) (Cons!23527 (h!28928 C!11408) (t!196120 List!23611)) )
))
(declare-datatypes ((IArray!15549 0))(
  ( (IArray!15550 (innerList!7832 List!23611)) )
))
(declare-datatypes ((Conc!7772 0))(
  ( (Node!7772 (left!18242 Conc!7772) (right!18572 Conc!7772) (csize!15774 Int) (cheight!7983 Int)) (Leaf!11355 (xs!10714 IArray!15549) (csize!15775 Int)) (Empty!7772) )
))
(declare-datatypes ((Cell!9279 0))(
  ( (Cell!9280 (v!28054 MutLongMap!2363)) )
))
(declare-datatypes ((MutableMap!2277 0))(
  ( (MutableMapExt!2276 (__x!15267 Int)) (HashMap!2277 (underlying!4922 Cell!9279) (hashF!4200 Hashable!2277) (_size!4778 (_ BitVec 32)) (defaultValue!2439 Int)) )
))
(declare-datatypes ((BalanceConc!15306 0))(
  ( (BalanceConc!15307 (c!339198 Conc!7772)) )
))
(declare-datatypes ((CacheFurthestNullable!546 0))(
  ( (CacheFurthestNullable!547 (cache!2658 MutableMap!2277) (totalInput!2830 BalanceConc!15306)) )
))
(declare-fun cacheFurthestNullable!141 () CacheFurthestNullable!546)

(declare-fun valid!1864 (CacheFurthestNullable!546) Bool)

(assert (=> b!2113807 (= res!917550 (valid!1864 cacheFurthestNullable!141))))

(declare-fun b!2113808 () Bool)

(declare-fun e!1345054 () Bool)

(declare-fun tp!644719 () Bool)

(declare-fun mapRes!11343 () Bool)

(assert (=> b!2113808 (= e!1345054 (and tp!644719 mapRes!11343))))

(declare-fun condMapEmpty!11341 () Bool)

(declare-datatypes ((tuple3!2754 0))(
  ( (tuple3!2755 (_1!13335 Regex!5631) (_2!13335 Context!2402) (_3!1841 C!11408)) )
))
(declare-datatypes ((tuple2!22988 0))(
  ( (tuple2!22989 (_1!13336 tuple3!2754) (_2!13336 (InoxSet Context!2402))) )
))
(declare-datatypes ((List!23612 0))(
  ( (Nil!23528) (Cons!23528 (h!28929 tuple2!22988) (t!196121 List!23612)) )
))
(declare-datatypes ((array!8151 0))(
  ( (array!8152 (arr!3617 (Array (_ BitVec 32) List!23612)) (size!18371 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4728 0))(
  ( (LongMapFixedSize!4729 (defaultEntry!2729 Int) (mask!6495 (_ BitVec 32)) (extraKeys!2612 (_ BitVec 32)) (zeroValue!2622 List!23612) (minValue!2622 List!23612) (_size!4779 (_ BitVec 32)) (_keys!2661 array!8149) (_values!2644 array!8151) (_vacant!2425 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9281 0))(
  ( (Cell!9282 (v!28055 LongMapFixedSize!4728)) )
))
(declare-datatypes ((MutLongMap!2364 0))(
  ( (LongMap!2364 (underlying!4923 Cell!9281)) (MutLongMapExt!2363 (__x!15268 Int)) )
))
(declare-datatypes ((Hashable!2278 0))(
  ( (HashableExt!2277 (__x!15269 Int)) )
))
(declare-datatypes ((Cell!9283 0))(
  ( (Cell!9284 (v!28056 MutLongMap!2364)) )
))
(declare-datatypes ((MutableMap!2278 0))(
  ( (MutableMapExt!2277 (__x!15270 Int)) (HashMap!2278 (underlying!4924 Cell!9283) (hashF!4201 Hashable!2278) (_size!4780 (_ BitVec 32)) (defaultValue!2440 Int)) )
))
(declare-datatypes ((CacheDown!1562 0))(
  ( (CacheDown!1563 (cache!2659 MutableMap!2278)) )
))
(declare-fun cacheDown!1229 () CacheDown!1562)

(declare-fun mapDefault!11341 () List!23612)

(assert (=> b!2113808 (= condMapEmpty!11341 (= (arr!3617 (_values!2644 (v!28055 (underlying!4923 (v!28056 (underlying!4924 (cache!2659 cacheDown!1229))))))) ((as const (Array (_ BitVec 32) List!23612)) mapDefault!11341)))))

(declare-fun b!2113809 () Bool)

(declare-fun e!1345065 () Bool)

(declare-fun input!6660 () BalanceConc!15306)

(declare-fun tp!644707 () Bool)

(declare-fun inv!31107 (Conc!7772) Bool)

(assert (=> b!2113809 (= e!1345065 (and (inv!31107 (c!339198 input!6660)) tp!644707))))

(declare-fun mapNonEmpty!11341 () Bool)

(declare-fun mapRes!11341 () Bool)

(declare-fun tp!644713 () Bool)

(declare-fun tp!644727 () Bool)

(assert (=> mapNonEmpty!11341 (= mapRes!11341 (and tp!644713 tp!644727))))

(declare-fun mapKey!11343 () (_ BitVec 32))

(declare-fun mapRest!11341 () (Array (_ BitVec 32) List!23610))

(declare-fun mapValue!11341 () List!23610)

(assert (=> mapNonEmpty!11341 (= (arr!3615 (_values!2643 (v!28053 (underlying!4921 (v!28054 (underlying!4922 (cache!2658 cacheFurthestNullable!141))))))) (store mapRest!11341 mapKey!11343 mapValue!11341))))

(declare-fun b!2113810 () Bool)

(declare-fun e!1345062 () Bool)

(declare-fun totalInput!1306 () BalanceConc!15306)

(declare-fun tp!644708 () Bool)

(assert (=> b!2113810 (= e!1345062 (and (inv!31107 (c!339198 totalInput!1306)) tp!644708))))

(declare-fun b!2113811 () Bool)

(declare-fun e!1345067 () Bool)

(declare-fun e!1345051 () Bool)

(assert (=> b!2113811 (= e!1345067 e!1345051)))

(declare-fun tp!644728 () Bool)

(declare-fun e!1345053 () Bool)

(declare-fun tp!644706 () Bool)

(declare-fun array_inv!2599 (array!8149) Bool)

(declare-fun array_inv!2600 (array!8151) Bool)

(assert (=> b!2113812 (= e!1345053 (and tp!644717 tp!644706 tp!644728 (array_inv!2599 (_keys!2661 (v!28055 (underlying!4923 (v!28056 (underlying!4924 (cache!2659 cacheDown!1229))))))) (array_inv!2600 (_values!2644 (v!28055 (underlying!4923 (v!28056 (underlying!4924 (cache!2659 cacheDown!1229))))))) e!1345054))))

(declare-fun b!2113813 () Bool)

(declare-fun e!1345066 () Bool)

(declare-datatypes ((tuple2!22990 0))(
  ( (tuple2!22991 (_1!13337 BalanceConc!15306) (_2!13337 BalanceConc!15306)) )
))
(declare-fun lt!793009 () tuple2!22990)

(declare-datatypes ((tuple2!22992 0))(
  ( (tuple2!22993 (_1!13338 List!23611) (_2!13338 List!23611)) )
))
(declare-fun lt!793005 () tuple2!22992)

(declare-fun list!9497 (BalanceConc!15306) List!23611)

(assert (=> b!2113813 (= e!1345066 (= (list!9497 (_2!13337 lt!793009)) (_2!13338 lt!793005)))))

(declare-fun res!917544 () Bool)

(assert (=> start!206522 (=> (not res!917544) (not e!1345039))))

(declare-fun r!15373 () Regex!5631)

(declare-fun validRegex!2222 (Regex!5631) Bool)

(assert (=> start!206522 (= res!917544 (validRegex!2222 r!15373))))

(assert (=> start!206522 e!1345039))

(declare-fun e!1345061 () Bool)

(declare-fun inv!31108 (CacheDown!1562) Bool)

(assert (=> start!206522 (and (inv!31108 cacheDown!1229) e!1345061)))

(assert (=> start!206522 e!1345060))

(declare-datatypes ((tuple2!22994 0))(
  ( (tuple2!22995 (_1!13339 Context!2402) (_2!13339 C!11408)) )
))
(declare-datatypes ((tuple2!22996 0))(
  ( (tuple2!22997 (_1!13340 tuple2!22994) (_2!13340 (InoxSet Context!2402))) )
))
(declare-datatypes ((List!23613 0))(
  ( (Nil!23529) (Cons!23529 (h!28930 tuple2!22996) (t!196122 List!23613)) )
))
(declare-datatypes ((array!8153 0))(
  ( (array!8154 (arr!3618 (Array (_ BitVec 32) List!23613)) (size!18372 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2279 0))(
  ( (HashableExt!2278 (__x!15271 Int)) )
))
(declare-datatypes ((LongMapFixedSize!4730 0))(
  ( (LongMapFixedSize!4731 (defaultEntry!2730 Int) (mask!6496 (_ BitVec 32)) (extraKeys!2613 (_ BitVec 32)) (zeroValue!2623 List!23613) (minValue!2623 List!23613) (_size!4781 (_ BitVec 32)) (_keys!2662 array!8149) (_values!2645 array!8153) (_vacant!2426 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9285 0))(
  ( (Cell!9286 (v!28057 LongMapFixedSize!4730)) )
))
(declare-datatypes ((MutLongMap!2365 0))(
  ( (LongMap!2365 (underlying!4925 Cell!9285)) (MutLongMapExt!2364 (__x!15272 Int)) )
))
(declare-datatypes ((Cell!9287 0))(
  ( (Cell!9288 (v!28058 MutLongMap!2365)) )
))
(declare-datatypes ((MutableMap!2279 0))(
  ( (MutableMapExt!2278 (__x!15273 Int)) (HashMap!2279 (underlying!4926 Cell!9287) (hashF!4202 Hashable!2279) (_size!4782 (_ BitVec 32)) (defaultValue!2441 Int)) )
))
(declare-datatypes ((CacheUp!1570 0))(
  ( (CacheUp!1571 (cache!2660 MutableMap!2279)) )
))
(declare-fun cacheUp!1110 () CacheUp!1570)

(declare-fun inv!31109 (CacheUp!1570) Bool)

(assert (=> start!206522 (and (inv!31109 cacheUp!1110) e!1345067)))

(declare-fun inv!31110 (BalanceConc!15306) Bool)

(assert (=> start!206522 (and (inv!31110 input!6660) e!1345065)))

(assert (=> start!206522 (and (inv!31110 totalInput!1306) e!1345062)))

(declare-fun e!1345052 () Bool)

(declare-fun inv!31111 (CacheFurthestNullable!546) Bool)

(assert (=> start!206522 (and (inv!31111 cacheFurthestNullable!141) e!1345052)))

(declare-fun b!2113814 () Bool)

(declare-fun tp_is_empty!9451 () Bool)

(assert (=> b!2113814 (= e!1345060 tp_is_empty!9451)))

(declare-fun b!2113815 () Bool)

(declare-fun e!1345047 () Bool)

(declare-fun e!1345068 () Bool)

(assert (=> b!2113815 (= e!1345047 e!1345068)))

(declare-fun b!2113816 () Bool)

(declare-fun e!1345050 () Bool)

(declare-fun e!1345045 () Bool)

(assert (=> b!2113816 (= e!1345050 e!1345045)))

(declare-fun b!2113817 () Bool)

(declare-fun e!1345070 () Bool)

(declare-fun tp!644720 () Bool)

(assert (=> b!2113817 (= e!1345070 (and (inv!31107 (c!339198 (totalInput!2830 cacheFurthestNullable!141))) tp!644720))))

(declare-fun b!2113818 () Bool)

(declare-fun e!1345041 () Bool)

(declare-fun e!1345057 () Bool)

(declare-fun lt!793002 () MutLongMap!2364)

(get-info :version)

(assert (=> b!2113818 (= e!1345041 (and e!1345057 ((_ is LongMap!2364) lt!793002)))))

(assert (=> b!2113818 (= lt!793002 (v!28056 (underlying!4924 (cache!2659 cacheDown!1229))))))

(declare-fun b!2113819 () Bool)

(declare-fun res!917548 () Bool)

(assert (=> b!2113819 (=> (not res!917548) (not e!1345039))))

(declare-fun valid!1865 (CacheDown!1562) Bool)

(assert (=> b!2113819 (= res!917548 (valid!1865 cacheDown!1229))))

(declare-fun b!2113820 () Bool)

(declare-fun tp!644724 () Bool)

(declare-fun tp!644711 () Bool)

(assert (=> b!2113820 (= e!1345060 (and tp!644724 tp!644711))))

(declare-fun b!2113821 () Bool)

(declare-fun e!1345046 () Bool)

(assert (=> b!2113821 (= e!1345061 e!1345046)))

(declare-fun b!2113822 () Bool)

(declare-fun e!1345069 () Bool)

(declare-fun tp!644712 () Bool)

(assert (=> b!2113822 (= e!1345069 (and tp!644712 mapRes!11341))))

(declare-fun condMapEmpty!11343 () Bool)

(declare-fun mapDefault!11342 () List!23610)

(assert (=> b!2113822 (= condMapEmpty!11343 (= (arr!3615 (_values!2643 (v!28053 (underlying!4921 (v!28054 (underlying!4922 (cache!2658 cacheFurthestNullable!141))))))) ((as const (Array (_ BitVec 32) List!23610)) mapDefault!11342)))))

(declare-fun b!2113823 () Bool)

(declare-fun e!1345042 () Bool)

(declare-fun e!1345056 () Bool)

(declare-fun lt!793004 () MutLongMap!2363)

(assert (=> b!2113823 (= e!1345042 (and e!1345056 ((_ is LongMap!2363) lt!793004)))))

(assert (=> b!2113823 (= lt!793004 (v!28054 (underlying!4922 (cache!2658 cacheFurthestNullable!141))))))

(declare-fun mapNonEmpty!11342 () Bool)

(declare-fun tp!644723 () Bool)

(declare-fun tp!644715 () Bool)

(assert (=> mapNonEmpty!11342 (= mapRes!11343 (and tp!644723 tp!644715))))

(declare-fun mapKey!11341 () (_ BitVec 32))

(declare-fun mapValue!11343 () List!23612)

(declare-fun mapRest!11343 () (Array (_ BitVec 32) List!23612))

(assert (=> mapNonEmpty!11342 (= (arr!3617 (_values!2644 (v!28055 (underlying!4923 (v!28056 (underlying!4924 (cache!2659 cacheDown!1229))))))) (store mapRest!11343 mapKey!11341 mapValue!11343))))

(declare-fun b!2113824 () Bool)

(declare-fun res!917547 () Bool)

(assert (=> b!2113824 (=> (not res!917547) (not e!1345039))))

(assert (=> b!2113824 (= res!917547 (= (totalInput!2830 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun mapIsEmpty!11341 () Bool)

(declare-fun mapRes!11342 () Bool)

(assert (=> mapIsEmpty!11341 mapRes!11342))

(declare-fun b!2113825 () Bool)

(declare-fun res!917546 () Bool)

(assert (=> b!2113825 (=> (not res!917546) (not e!1345039))))

(declare-fun valid!1866 (CacheUp!1570) Bool)

(assert (=> b!2113825 (= res!917546 (valid!1866 cacheUp!1110))))

(declare-fun b!2113826 () Bool)

(declare-fun e!1345058 () Bool)

(assert (=> b!2113826 (= e!1345058 (not true))))

(declare-fun lt!793003 () (InoxSet Context!2402))

(declare-datatypes ((tuple4!928 0))(
  ( (tuple4!929 (_1!13341 tuple2!22990) (_2!13341 CacheUp!1570) (_3!1842 CacheDown!1562) (_4!464 CacheFurthestNullable!546)) )
))
(declare-fun lt!793008 () tuple4!928)

(declare-fun findLongestMatchZipperSequenceV3Mem!1 ((InoxSet Context!2402) BalanceConc!15306 BalanceConc!15306 CacheUp!1570 CacheDown!1562 CacheFurthestNullable!546) tuple4!928)

(assert (=> b!2113826 (= lt!793008 (findLongestMatchZipperSequenceV3Mem!1 lt!793003 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(declare-fun e!1345059 () Bool)

(assert (=> b!2113826 e!1345059))

(declare-fun res!917549 () Bool)

(assert (=> b!2113826 (=> (not res!917549) (not e!1345059))))

(declare-fun lt!793013 () tuple2!22990)

(assert (=> b!2113826 (= res!917549 (= (list!9497 (_1!13337 lt!793013)) (_1!13338 lt!793005)))))

(declare-fun findLongestMatchZipperFastV2!8 ((InoxSet Context!2402) BalanceConc!15306 BalanceConc!15306) tuple2!22990)

(assert (=> b!2113826 (= lt!793013 (findLongestMatchZipperFastV2!8 lt!793003 input!6660 totalInput!1306))))

(declare-datatypes ((Unit!37532 0))(
  ( (Unit!37533) )
))
(declare-fun lt!793006 () Unit!37532)

(declare-fun longestMatchV2SameAsRegex!8 (Regex!5631 (InoxSet Context!2402) BalanceConc!15306 BalanceConc!15306) Unit!37532)

(assert (=> b!2113826 (= lt!793006 (longestMatchV2SameAsRegex!8 r!15373 lt!793003 input!6660 totalInput!1306))))

(declare-fun lt!793007 () List!23611)

(declare-fun sizeTr!93 (List!23611 Int) Int)

(declare-fun size!18373 (List!23611) Int)

(assert (=> b!2113826 (= (sizeTr!93 lt!793007 0) (size!18373 lt!793007))))

(declare-fun lt!793011 () Unit!37532)

(declare-fun lemmaSizeTrEqualsSize!93 (List!23611 Int) Unit!37532)

(assert (=> b!2113826 (= lt!793011 (lemmaSizeTrEqualsSize!93 lt!793007 0))))

(assert (=> b!2113826 e!1345066))

(declare-fun res!917545 () Bool)

(assert (=> b!2113826 (=> (not res!917545) (not e!1345066))))

(assert (=> b!2113826 (= res!917545 (= (list!9497 (_1!13337 lt!793009)) (_1!13338 lt!793005)))))

(declare-fun findLongestMatch!510 (Regex!5631 List!23611) tuple2!22992)

(assert (=> b!2113826 (= lt!793005 (findLongestMatch!510 r!15373 lt!793007))))

(declare-fun findLongestMatchZipperSequenceV3!3 ((InoxSet Context!2402) BalanceConc!15306 BalanceConc!15306) tuple2!22990)

(assert (=> b!2113826 (= lt!793009 (findLongestMatchZipperSequenceV3!3 lt!793003 input!6660 totalInput!1306))))

(declare-fun lt!793012 () Unit!37532)

(declare-fun longestMatchV3SameAsRegex!3 (Regex!5631 (InoxSet Context!2402) BalanceConc!15306 BalanceConc!15306) Unit!37532)

(assert (=> b!2113826 (= lt!793012 (longestMatchV3SameAsRegex!3 r!15373 lt!793003 input!6660 totalInput!1306))))

(declare-fun focus!270 (Regex!5631) (InoxSet Context!2402))

(assert (=> b!2113826 (= lt!793003 (focus!270 r!15373))))

(declare-fun b!2113827 () Bool)

(declare-fun e!1345049 () Bool)

(assert (=> b!2113827 (= e!1345049 e!1345053)))

(declare-fun e!1345063 () Bool)

(assert (=> b!2113828 (= e!1345051 (and e!1345063 tp!644726))))

(declare-fun b!2113829 () Bool)

(declare-fun e!1345064 () Bool)

(declare-fun tp!644710 () Bool)

(assert (=> b!2113829 (= e!1345064 (and tp!644710 mapRes!11342))))

(declare-fun condMapEmpty!11342 () Bool)

(declare-fun mapDefault!11343 () List!23613)

(assert (=> b!2113829 (= condMapEmpty!11342 (= (arr!3618 (_values!2645 (v!28057 (underlying!4925 (v!28058 (underlying!4926 (cache!2660 cacheUp!1110))))))) ((as const (Array (_ BitVec 32) List!23613)) mapDefault!11343)))))

(declare-fun b!2113830 () Bool)

(declare-fun res!917551 () Bool)

(assert (=> b!2113830 (=> (not res!917551) (not e!1345059))))

(assert (=> b!2113830 (= res!917551 (= (list!9497 (_2!13337 lt!793013)) (_2!13338 lt!793005)))))

(declare-fun mapIsEmpty!11342 () Bool)

(assert (=> mapIsEmpty!11342 mapRes!11341))

(declare-fun e!1345044 () Bool)

(assert (=> b!2113831 (= e!1345044 (and e!1345042 tp!644734))))

(declare-fun b!2113832 () Bool)

(assert (=> b!2113832 (= e!1345057 e!1345049)))

(declare-fun mapIsEmpty!11343 () Bool)

(assert (=> mapIsEmpty!11343 mapRes!11343))

(declare-fun tp!644729 () Bool)

(declare-fun tp!644722 () Bool)

(declare-fun array_inv!2601 (array!8147) Bool)

(assert (=> b!2113833 (= e!1345045 (and tp!644725 tp!644729 tp!644722 (array_inv!2599 (_keys!2660 (v!28053 (underlying!4921 (v!28054 (underlying!4922 (cache!2658 cacheFurthestNullable!141))))))) (array_inv!2601 (_values!2643 (v!28053 (underlying!4921 (v!28054 (underlying!4922 (cache!2658 cacheFurthestNullable!141))))))) e!1345069))))

(declare-fun b!2113834 () Bool)

(declare-fun lt!793010 () MutLongMap!2365)

(assert (=> b!2113834 (= e!1345063 (and e!1345047 ((_ is LongMap!2365) lt!793010)))))

(assert (=> b!2113834 (= lt!793010 (v!28058 (underlying!4926 (cache!2660 cacheUp!1110))))))

(assert (=> b!2113835 (= e!1345046 (and e!1345041 tp!644733))))

(declare-fun mapNonEmpty!11343 () Bool)

(declare-fun tp!644718 () Bool)

(declare-fun tp!644716 () Bool)

(assert (=> mapNonEmpty!11343 (= mapRes!11342 (and tp!644718 tp!644716))))

(declare-fun mapValue!11342 () List!23613)

(declare-fun mapKey!11342 () (_ BitVec 32))

(declare-fun mapRest!11342 () (Array (_ BitVec 32) List!23613))

(assert (=> mapNonEmpty!11343 (= (arr!3618 (_values!2645 (v!28057 (underlying!4925 (v!28058 (underlying!4926 (cache!2660 cacheUp!1110))))))) (store mapRest!11342 mapKey!11342 mapValue!11342))))

(declare-fun b!2113836 () Bool)

(assert (=> b!2113836 (= e!1345052 (and e!1345044 (inv!31110 (totalInput!2830 cacheFurthestNullable!141)) e!1345070))))

(declare-fun b!2113837 () Bool)

(declare-fun tp!644732 () Bool)

(declare-fun tp!644714 () Bool)

(assert (=> b!2113837 (= e!1345060 (and tp!644732 tp!644714))))

(declare-fun b!2113838 () Bool)

(assert (=> b!2113838 (= e!1345039 e!1345058)))

(declare-fun res!917543 () Bool)

(assert (=> b!2113838 (=> (not res!917543) (not e!1345058))))

(declare-fun isSuffix!598 (List!23611 List!23611) Bool)

(assert (=> b!2113838 (= res!917543 (isSuffix!598 lt!793007 (list!9497 totalInput!1306)))))

(assert (=> b!2113838 (= lt!793007 (list!9497 input!6660))))

(declare-fun e!1345048 () Bool)

(declare-fun tp!644709 () Bool)

(declare-fun tp!644731 () Bool)

(declare-fun array_inv!2602 (array!8153) Bool)

(assert (=> b!2113839 (= e!1345048 (and tp!644730 tp!644709 tp!644731 (array_inv!2599 (_keys!2662 (v!28057 (underlying!4925 (v!28058 (underlying!4926 (cache!2660 cacheUp!1110))))))) (array_inv!2602 (_values!2645 (v!28057 (underlying!4925 (v!28058 (underlying!4926 (cache!2660 cacheUp!1110))))))) e!1345064))))

(declare-fun b!2113840 () Bool)

(assert (=> b!2113840 (= e!1345068 e!1345048)))

(declare-fun b!2113841 () Bool)

(declare-fun findLongestMatchWithZipperSequenceV2!77 (Regex!5631 BalanceConc!15306 BalanceConc!15306) tuple2!22990)

(assert (=> b!2113841 (= e!1345059 (= (findLongestMatchWithZipperSequenceV2!77 r!15373 input!6660 totalInput!1306) lt!793013))))

(declare-fun b!2113842 () Bool)

(assert (=> b!2113842 (= e!1345056 e!1345050)))

(assert (= (and start!206522 res!917544) b!2113825))

(assert (= (and b!2113825 res!917546) b!2113819))

(assert (= (and b!2113819 res!917548) b!2113807))

(assert (= (and b!2113807 res!917550) b!2113824))

(assert (= (and b!2113824 res!917547) b!2113838))

(assert (= (and b!2113838 res!917543) b!2113826))

(assert (= (and b!2113826 res!917545) b!2113813))

(assert (= (and b!2113826 res!917549) b!2113830))

(assert (= (and b!2113830 res!917551) b!2113841))

(assert (= (and b!2113808 condMapEmpty!11341) mapIsEmpty!11343))

(assert (= (and b!2113808 (not condMapEmpty!11341)) mapNonEmpty!11342))

(assert (= b!2113812 b!2113808))

(assert (= b!2113827 b!2113812))

(assert (= b!2113832 b!2113827))

(assert (= (and b!2113818 ((_ is LongMap!2364) (v!28056 (underlying!4924 (cache!2659 cacheDown!1229))))) b!2113832))

(assert (= b!2113835 b!2113818))

(assert (= (and b!2113821 ((_ is HashMap!2278) (cache!2659 cacheDown!1229))) b!2113835))

(assert (= start!206522 b!2113821))

(assert (= (and start!206522 ((_ is ElementMatch!5631) r!15373)) b!2113814))

(assert (= (and start!206522 ((_ is Concat!9933) r!15373)) b!2113820))

(assert (= (and start!206522 ((_ is Star!5631) r!15373)) b!2113806))

(assert (= (and start!206522 ((_ is Union!5631) r!15373)) b!2113837))

(assert (= (and b!2113829 condMapEmpty!11342) mapIsEmpty!11341))

(assert (= (and b!2113829 (not condMapEmpty!11342)) mapNonEmpty!11343))

(assert (= b!2113839 b!2113829))

(assert (= b!2113840 b!2113839))

(assert (= b!2113815 b!2113840))

(assert (= (and b!2113834 ((_ is LongMap!2365) (v!28058 (underlying!4926 (cache!2660 cacheUp!1110))))) b!2113815))

(assert (= b!2113828 b!2113834))

(assert (= (and b!2113811 ((_ is HashMap!2279) (cache!2660 cacheUp!1110))) b!2113828))

(assert (= start!206522 b!2113811))

(assert (= start!206522 b!2113809))

(assert (= start!206522 b!2113810))

(assert (= (and b!2113822 condMapEmpty!11343) mapIsEmpty!11342))

(assert (= (and b!2113822 (not condMapEmpty!11343)) mapNonEmpty!11341))

(assert (= b!2113833 b!2113822))

(assert (= b!2113816 b!2113833))

(assert (= b!2113842 b!2113816))

(assert (= (and b!2113823 ((_ is LongMap!2363) (v!28054 (underlying!4922 (cache!2658 cacheFurthestNullable!141))))) b!2113842))

(assert (= b!2113831 b!2113823))

(assert (= (and b!2113836 ((_ is HashMap!2277) (cache!2658 cacheFurthestNullable!141))) b!2113831))

(assert (= b!2113836 b!2113817))

(assert (= start!206522 b!2113836))

(declare-fun m!2569843 () Bool)

(assert (=> start!206522 m!2569843))

(declare-fun m!2569845 () Bool)

(assert (=> start!206522 m!2569845))

(declare-fun m!2569847 () Bool)

(assert (=> start!206522 m!2569847))

(declare-fun m!2569849 () Bool)

(assert (=> start!206522 m!2569849))

(declare-fun m!2569851 () Bool)

(assert (=> start!206522 m!2569851))

(declare-fun m!2569853 () Bool)

(assert (=> start!206522 m!2569853))

(declare-fun m!2569855 () Bool)

(assert (=> b!2113825 m!2569855))

(declare-fun m!2569857 () Bool)

(assert (=> b!2113813 m!2569857))

(declare-fun m!2569859 () Bool)

(assert (=> b!2113809 m!2569859))

(declare-fun m!2569861 () Bool)

(assert (=> mapNonEmpty!11342 m!2569861))

(declare-fun m!2569863 () Bool)

(assert (=> b!2113833 m!2569863))

(declare-fun m!2569865 () Bool)

(assert (=> b!2113833 m!2569865))

(declare-fun m!2569867 () Bool)

(assert (=> mapNonEmpty!11341 m!2569867))

(declare-fun m!2569869 () Bool)

(assert (=> b!2113817 m!2569869))

(declare-fun m!2569871 () Bool)

(assert (=> b!2113839 m!2569871))

(declare-fun m!2569873 () Bool)

(assert (=> b!2113839 m!2569873))

(declare-fun m!2569875 () Bool)

(assert (=> b!2113830 m!2569875))

(declare-fun m!2569877 () Bool)

(assert (=> b!2113836 m!2569877))

(declare-fun m!2569879 () Bool)

(assert (=> b!2113812 m!2569879))

(declare-fun m!2569881 () Bool)

(assert (=> b!2113812 m!2569881))

(declare-fun m!2569883 () Bool)

(assert (=> mapNonEmpty!11343 m!2569883))

(declare-fun m!2569885 () Bool)

(assert (=> b!2113807 m!2569885))

(declare-fun m!2569887 () Bool)

(assert (=> b!2113810 m!2569887))

(declare-fun m!2569889 () Bool)

(assert (=> b!2113826 m!2569889))

(declare-fun m!2569891 () Bool)

(assert (=> b!2113826 m!2569891))

(declare-fun m!2569893 () Bool)

(assert (=> b!2113826 m!2569893))

(declare-fun m!2569895 () Bool)

(assert (=> b!2113826 m!2569895))

(declare-fun m!2569897 () Bool)

(assert (=> b!2113826 m!2569897))

(declare-fun m!2569899 () Bool)

(assert (=> b!2113826 m!2569899))

(declare-fun m!2569901 () Bool)

(assert (=> b!2113826 m!2569901))

(declare-fun m!2569903 () Bool)

(assert (=> b!2113826 m!2569903))

(declare-fun m!2569905 () Bool)

(assert (=> b!2113826 m!2569905))

(declare-fun m!2569907 () Bool)

(assert (=> b!2113826 m!2569907))

(declare-fun m!2569909 () Bool)

(assert (=> b!2113826 m!2569909))

(declare-fun m!2569911 () Bool)

(assert (=> b!2113826 m!2569911))

(declare-fun m!2569913 () Bool)

(assert (=> b!2113841 m!2569913))

(declare-fun m!2569915 () Bool)

(assert (=> b!2113838 m!2569915))

(assert (=> b!2113838 m!2569915))

(declare-fun m!2569917 () Bool)

(assert (=> b!2113838 m!2569917))

(declare-fun m!2569919 () Bool)

(assert (=> b!2113838 m!2569919))

(declare-fun m!2569921 () Bool)

(assert (=> b!2113819 m!2569921))

(check-sat (not b!2113830) (not b!2113807) (not b_next!61935) (not b!2113813) (not b!2113806) b_and!170811 b_and!170809 (not mapNonEmpty!11341) (not b_next!61933) (not mapNonEmpty!11342) (not b_next!61937) (not b!2113809) b_and!170813 (not b!2113839) tp_is_empty!9451 (not b!2113819) (not b!2113826) b_and!170815 (not start!206522) (not b_next!61943) (not b!2113812) (not b!2113822) b_and!170819 (not b!2113838) (not b_next!61939) (not b_next!61941) (not b!2113810) (not b!2113820) (not b!2113808) b_and!170817 (not b!2113837) (not b!2113841) (not mapNonEmpty!11343) (not b!2113825) (not b!2113836) (not b!2113829) (not b!2113833) (not b!2113817))
(check-sat (not b_next!61937) b_and!170813 b_and!170815 (not b_next!61943) b_and!170819 (not b_next!61939) (not b_next!61941) (not b_next!61935) b_and!170817 b_and!170811 b_and!170809 (not b_next!61933))
