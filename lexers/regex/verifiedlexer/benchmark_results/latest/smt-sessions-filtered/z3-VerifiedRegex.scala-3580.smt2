; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206514 () Bool)

(assert start!206514)

(declare-fun b!2113367 () Bool)

(declare-fun b_free!61181 () Bool)

(declare-fun b_next!61885 () Bool)

(assert (=> b!2113367 (= b_free!61181 (not b_next!61885))))

(declare-fun tp!644381 () Bool)

(declare-fun b_and!170761 () Bool)

(assert (=> b!2113367 (= tp!644381 b_and!170761)))

(declare-fun b!2113385 () Bool)

(declare-fun b_free!61183 () Bool)

(declare-fun b_next!61887 () Bool)

(assert (=> b!2113385 (= b_free!61183 (not b_next!61887))))

(declare-fun tp!644383 () Bool)

(declare-fun b_and!170763 () Bool)

(assert (=> b!2113385 (= tp!644383 b_and!170763)))

(declare-fun b!2113388 () Bool)

(declare-fun b_free!61185 () Bool)

(declare-fun b_next!61889 () Bool)

(assert (=> b!2113388 (= b_free!61185 (not b_next!61889))))

(declare-fun tp!644362 () Bool)

(declare-fun b_and!170765 () Bool)

(assert (=> b!2113388 (= tp!644362 b_and!170765)))

(declare-fun b!2113394 () Bool)

(declare-fun b_free!61187 () Bool)

(declare-fun b_next!61891 () Bool)

(assert (=> b!2113394 (= b_free!61187 (not b_next!61891))))

(declare-fun tp!644360 () Bool)

(declare-fun b_and!170767 () Bool)

(assert (=> b!2113394 (= tp!644360 b_and!170767)))

(declare-fun b!2113397 () Bool)

(declare-fun b_free!61189 () Bool)

(declare-fun b_next!61893 () Bool)

(assert (=> b!2113397 (= b_free!61189 (not b_next!61893))))

(declare-fun tp!644361 () Bool)

(declare-fun b_and!170769 () Bool)

(assert (=> b!2113397 (= tp!644361 b_and!170769)))

(declare-fun b!2113383 () Bool)

(declare-fun b_free!61191 () Bool)

(declare-fun b_next!61895 () Bool)

(assert (=> b!2113383 (= b_free!61191 (not b_next!61895))))

(declare-fun tp!644375 () Bool)

(declare-fun b_and!170771 () Bool)

(assert (=> b!2113383 (= tp!644375 b_and!170771)))

(declare-fun b!2113364 () Bool)

(declare-fun e!1344665 () Bool)

(declare-fun e!1344683 () Bool)

(declare-datatypes ((C!11400 0))(
  ( (C!11401 (val!6686 Int)) )
))
(declare-datatypes ((Regex!5627 0))(
  ( (ElementMatch!5627 (c!339189 C!11400)) (Concat!9929 (regOne!11766 Regex!5627) (regTwo!11766 Regex!5627)) (EmptyExpr!5627) (Star!5627 (reg!5956 Regex!5627)) (EmptyLang!5627) (Union!5627 (regOne!11767 Regex!5627) (regTwo!11767 Regex!5627)) )
))
(declare-datatypes ((List!23591 0))(
  ( (Nil!23507) (Cons!23507 (h!28908 Regex!5627) (t!196100 List!23591)) )
))
(declare-datatypes ((Context!2394 0))(
  ( (Context!2395 (exprs!1697 List!23591)) )
))
(declare-datatypes ((tuple2!22946 0))(
  ( (tuple2!22947 (_1!13307 Context!2394) (_2!13307 C!11400)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22948 0))(
  ( (tuple2!22949 (_1!13308 tuple2!22946) (_2!13308 (InoxSet Context!2394))) )
))
(declare-datatypes ((List!23592 0))(
  ( (Nil!23508) (Cons!23508 (h!28909 tuple2!22948) (t!196101 List!23592)) )
))
(declare-datatypes ((array!8119 0))(
  ( (array!8120 (arr!3601 (Array (_ BitVec 32) List!23592)) (size!18353 (_ BitVec 32))) )
))
(declare-datatypes ((array!8121 0))(
  ( (array!8122 (arr!3602 (Array (_ BitVec 32) (_ BitVec 64))) (size!18354 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4706 0))(
  ( (LongMapFixedSize!4707 (defaultEntry!2718 Int) (mask!6482 (_ BitVec 32)) (extraKeys!2601 (_ BitVec 32)) (zeroValue!2611 List!23592) (minValue!2611 List!23592) (_size!4757 (_ BitVec 32)) (_keys!2650 array!8121) (_values!2633 array!8119) (_vacant!2414 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9237 0))(
  ( (Cell!9238 (v!28033 LongMapFixedSize!4706)) )
))
(declare-datatypes ((MutLongMap!2353 0))(
  ( (LongMap!2353 (underlying!4901 Cell!9237)) (MutLongMapExt!2352 (__x!15235 Int)) )
))
(declare-fun lt!792871 () MutLongMap!2353)

(get-info :version)

(assert (=> b!2113364 (= e!1344665 (and e!1344683 ((_ is LongMap!2353) lt!792871)))))

(declare-datatypes ((Hashable!2267 0))(
  ( (HashableExt!2266 (__x!15236 Int)) )
))
(declare-datatypes ((Cell!9239 0))(
  ( (Cell!9240 (v!28034 MutLongMap!2353)) )
))
(declare-datatypes ((MutableMap!2267 0))(
  ( (MutableMapExt!2266 (__x!15237 Int)) (HashMap!2267 (underlying!4902 Cell!9239) (hashF!4190 Hashable!2267) (_size!4758 (_ BitVec 32)) (defaultValue!2429 Int)) )
))
(declare-datatypes ((CacheUp!1562 0))(
  ( (CacheUp!1563 (cache!2648 MutableMap!2267)) )
))
(declare-fun cacheUp!1110 () CacheUp!1562)

(assert (=> b!2113364 (= lt!792871 (v!28034 (underlying!4902 (cache!2648 cacheUp!1110))))))

(declare-fun mapIsEmpty!11305 () Bool)

(declare-fun mapRes!11305 () Bool)

(assert (=> mapIsEmpty!11305 mapRes!11305))

(declare-fun b!2113365 () Bool)

(declare-fun e!1344686 () Bool)

(declare-fun e!1344681 () Bool)

(declare-datatypes ((tuple3!2740 0))(
  ( (tuple3!2741 (_1!13309 (InoxSet Context!2394)) (_2!13309 Int) (_3!1834 Int)) )
))
(declare-datatypes ((tuple2!22950 0))(
  ( (tuple2!22951 (_1!13310 tuple3!2740) (_2!13310 Int)) )
))
(declare-datatypes ((List!23593 0))(
  ( (Nil!23509) (Cons!23509 (h!28910 tuple2!22950) (t!196102 List!23593)) )
))
(declare-datatypes ((array!8123 0))(
  ( (array!8124 (arr!3603 (Array (_ BitVec 32) List!23593)) (size!18355 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4708 0))(
  ( (LongMapFixedSize!4709 (defaultEntry!2719 Int) (mask!6483 (_ BitVec 32)) (extraKeys!2602 (_ BitVec 32)) (zeroValue!2612 List!23593) (minValue!2612 List!23593) (_size!4759 (_ BitVec 32)) (_keys!2651 array!8121) (_values!2634 array!8123) (_vacant!2415 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9241 0))(
  ( (Cell!9242 (v!28035 LongMapFixedSize!4708)) )
))
(declare-datatypes ((MutLongMap!2354 0))(
  ( (LongMap!2354 (underlying!4903 Cell!9241)) (MutLongMapExt!2353 (__x!15238 Int)) )
))
(declare-fun lt!792870 () MutLongMap!2354)

(assert (=> b!2113365 (= e!1344686 (and e!1344681 ((_ is LongMap!2354) lt!792870)))))

(declare-datatypes ((Hashable!2268 0))(
  ( (HashableExt!2267 (__x!15239 Int)) )
))
(declare-datatypes ((List!23594 0))(
  ( (Nil!23510) (Cons!23510 (h!28911 C!11400) (t!196103 List!23594)) )
))
(declare-datatypes ((IArray!15541 0))(
  ( (IArray!15542 (innerList!7828 List!23594)) )
))
(declare-datatypes ((Conc!7768 0))(
  ( (Node!7768 (left!18236 Conc!7768) (right!18566 Conc!7768) (csize!15766 Int) (cheight!7979 Int)) (Leaf!11349 (xs!10710 IArray!15541) (csize!15767 Int)) (Empty!7768) )
))
(declare-datatypes ((Cell!9243 0))(
  ( (Cell!9244 (v!28036 MutLongMap!2354)) )
))
(declare-datatypes ((MutableMap!2268 0))(
  ( (MutableMapExt!2267 (__x!15240 Int)) (HashMap!2268 (underlying!4904 Cell!9243) (hashF!4191 Hashable!2268) (_size!4760 (_ BitVec 32)) (defaultValue!2430 Int)) )
))
(declare-datatypes ((BalanceConc!15298 0))(
  ( (BalanceConc!15299 (c!339190 Conc!7768)) )
))
(declare-datatypes ((CacheFurthestNullable!538 0))(
  ( (CacheFurthestNullable!539 (cache!2649 MutableMap!2268) (totalInput!2826 BalanceConc!15298)) )
))
(declare-fun cacheFurthestNullable!141 () CacheFurthestNullable!538)

(assert (=> b!2113365 (= lt!792870 (v!28036 (underlying!4904 (cache!2649 cacheFurthestNullable!141))))))

(declare-fun b!2113366 () Bool)

(declare-fun e!1344680 () Bool)

(declare-fun input!6660 () BalanceConc!15298)

(declare-fun tp!644367 () Bool)

(declare-fun inv!31089 (Conc!7768) Bool)

(assert (=> b!2113366 (= e!1344680 (and (inv!31089 (c!339190 input!6660)) tp!644367))))

(declare-fun e!1344675 () Bool)

(declare-fun tp!644377 () Bool)

(declare-fun e!1344657 () Bool)

(declare-fun tp!644366 () Bool)

(declare-fun array_inv!2589 (array!8121) Bool)

(declare-fun array_inv!2590 (array!8119) Bool)

(assert (=> b!2113367 (= e!1344657 (and tp!644381 tp!644366 tp!644377 (array_inv!2589 (_keys!2650 (v!28033 (underlying!4901 (v!28034 (underlying!4902 (cache!2648 cacheUp!1110))))))) (array_inv!2590 (_values!2633 (v!28033 (underlying!4901 (v!28034 (underlying!4902 (cache!2648 cacheUp!1110))))))) e!1344675))))

(declare-fun b!2113368 () Bool)

(declare-fun e!1344678 () Bool)

(assert (=> b!2113368 (= e!1344681 e!1344678)))

(declare-fun b!2113369 () Bool)

(declare-fun e!1344660 () Bool)

(declare-fun tp!644380 () Bool)

(declare-fun mapRes!11307 () Bool)

(assert (=> b!2113369 (= e!1344660 (and tp!644380 mapRes!11307))))

(declare-fun condMapEmpty!11306 () Bool)

(declare-datatypes ((tuple3!2742 0))(
  ( (tuple3!2743 (_1!13311 Regex!5627) (_2!13311 Context!2394) (_3!1835 C!11400)) )
))
(declare-datatypes ((tuple2!22952 0))(
  ( (tuple2!22953 (_1!13312 tuple3!2742) (_2!13312 (InoxSet Context!2394))) )
))
(declare-datatypes ((List!23595 0))(
  ( (Nil!23511) (Cons!23511 (h!28912 tuple2!22952) (t!196104 List!23595)) )
))
(declare-datatypes ((array!8125 0))(
  ( (array!8126 (arr!3604 (Array (_ BitVec 32) List!23595)) (size!18356 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4710 0))(
  ( (LongMapFixedSize!4711 (defaultEntry!2720 Int) (mask!6484 (_ BitVec 32)) (extraKeys!2603 (_ BitVec 32)) (zeroValue!2613 List!23595) (minValue!2613 List!23595) (_size!4761 (_ BitVec 32)) (_keys!2652 array!8121) (_values!2635 array!8125) (_vacant!2416 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9245 0))(
  ( (Cell!9246 (v!28037 LongMapFixedSize!4710)) )
))
(declare-datatypes ((MutLongMap!2355 0))(
  ( (LongMap!2355 (underlying!4905 Cell!9245)) (MutLongMapExt!2354 (__x!15241 Int)) )
))
(declare-datatypes ((Hashable!2269 0))(
  ( (HashableExt!2268 (__x!15242 Int)) )
))
(declare-datatypes ((Cell!9247 0))(
  ( (Cell!9248 (v!28038 MutLongMap!2355)) )
))
(declare-datatypes ((MutableMap!2269 0))(
  ( (MutableMapExt!2268 (__x!15243 Int)) (HashMap!2269 (underlying!4906 Cell!9247) (hashF!4192 Hashable!2269) (_size!4762 (_ BitVec 32)) (defaultValue!2431 Int)) )
))
(declare-datatypes ((CacheDown!1558 0))(
  ( (CacheDown!1559 (cache!2650 MutableMap!2269)) )
))
(declare-fun cacheDown!1229 () CacheDown!1558)

(declare-fun mapDefault!11307 () List!23595)

(assert (=> b!2113369 (= condMapEmpty!11306 (= (arr!3604 (_values!2635 (v!28037 (underlying!4905 (v!28038 (underlying!4906 (cache!2650 cacheDown!1229))))))) ((as const (Array (_ BitVec 32) List!23595)) mapDefault!11307)))))

(declare-fun b!2113370 () Bool)

(declare-fun e!1344664 () Bool)

(assert (=> b!2113370 (= e!1344664 e!1344657)))

(declare-fun b!2113371 () Bool)

(declare-fun e!1344672 () Bool)

(declare-fun tp!644374 () Bool)

(assert (=> b!2113371 (= e!1344672 (and (inv!31089 (c!339190 (totalInput!2826 cacheFurthestNullable!141))) tp!644374))))

(declare-fun b!2113372 () Bool)

(declare-fun e!1344684 () Bool)

(declare-fun totalInput!1306 () BalanceConc!15298)

(declare-fun tp!644359 () Bool)

(assert (=> b!2113372 (= e!1344684 (and (inv!31089 (c!339190 totalInput!1306)) tp!644359))))

(declare-fun b!2113373 () Bool)

(declare-fun res!917441 () Bool)

(declare-fun e!1344658 () Bool)

(assert (=> b!2113373 (=> (not res!917441) (not e!1344658))))

(assert (=> b!2113373 (= res!917441 (= (totalInput!2826 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun b!2113374 () Bool)

(declare-fun e!1344661 () Bool)

(declare-fun tp!644363 () Bool)

(assert (=> b!2113374 (= e!1344661 tp!644363)))

(declare-fun b!2113375 () Bool)

(declare-fun res!917440 () Bool)

(assert (=> b!2113375 (=> (not res!917440) (not e!1344658))))

(declare-fun valid!1856 (CacheDown!1558) Bool)

(assert (=> b!2113375 (= res!917440 (valid!1856 cacheDown!1229))))

(declare-fun b!2113376 () Bool)

(declare-fun e!1344673 () Bool)

(declare-fun e!1344685 () Bool)

(assert (=> b!2113376 (= e!1344673 e!1344685)))

(declare-fun b!2113377 () Bool)

(declare-fun tp!644372 () Bool)

(declare-fun tp!644373 () Bool)

(assert (=> b!2113377 (= e!1344661 (and tp!644372 tp!644373))))

(declare-fun b!2113378 () Bool)

(declare-fun tp!644378 () Bool)

(declare-fun tp!644379 () Bool)

(assert (=> b!2113378 (= e!1344661 (and tp!644378 tp!644379))))

(declare-fun res!917438 () Bool)

(assert (=> start!206514 (=> (not res!917438) (not e!1344658))))

(declare-fun r!15373 () Regex!5627)

(declare-fun validRegex!2220 (Regex!5627) Bool)

(assert (=> start!206514 (= res!917438 (validRegex!2220 r!15373))))

(assert (=> start!206514 e!1344658))

(declare-fun e!1344666 () Bool)

(declare-fun inv!31090 (CacheDown!1558) Bool)

(assert (=> start!206514 (and (inv!31090 cacheDown!1229) e!1344666)))

(assert (=> start!206514 e!1344661))

(declare-fun e!1344668 () Bool)

(declare-fun inv!31091 (CacheUp!1562) Bool)

(assert (=> start!206514 (and (inv!31091 cacheUp!1110) e!1344668)))

(declare-fun inv!31092 (BalanceConc!15298) Bool)

(assert (=> start!206514 (and (inv!31092 input!6660) e!1344680)))

(assert (=> start!206514 (and (inv!31092 totalInput!1306) e!1344684)))

(declare-fun e!1344682 () Bool)

(declare-fun inv!31093 (CacheFurthestNullable!538) Bool)

(assert (=> start!206514 (and (inv!31093 cacheFurthestNullable!141) e!1344682)))

(declare-fun b!2113379 () Bool)

(declare-fun e!1344667 () Bool)

(assert (=> b!2113379 (= e!1344666 e!1344667)))

(declare-fun b!2113380 () Bool)

(declare-fun res!917437 () Bool)

(assert (=> b!2113380 (=> (not res!917437) (not e!1344658))))

(declare-fun valid!1857 (CacheUp!1562) Bool)

(assert (=> b!2113380 (= res!917437 (valid!1857 cacheUp!1110))))

(declare-fun b!2113381 () Bool)

(declare-fun e!1344670 () Bool)

(assert (=> b!2113381 (= e!1344670 (not true))))

(declare-fun lt!792869 () List!23594)

(declare-fun sizeTr!91 (List!23594 Int) Int)

(declare-fun size!18357 (List!23594) Int)

(assert (=> b!2113381 (= (sizeTr!91 lt!792869 0) (size!18357 lt!792869))))

(declare-datatypes ((Unit!37528 0))(
  ( (Unit!37529) )
))
(declare-fun lt!792867 () Unit!37528)

(declare-fun lemmaSizeTrEqualsSize!91 (List!23594 Int) Unit!37528)

(assert (=> b!2113381 (= lt!792867 (lemmaSizeTrEqualsSize!91 lt!792869 0))))

(declare-fun e!1344662 () Bool)

(assert (=> b!2113381 e!1344662))

(declare-fun res!917443 () Bool)

(assert (=> b!2113381 (=> (not res!917443) (not e!1344662))))

(declare-datatypes ((tuple2!22954 0))(
  ( (tuple2!22955 (_1!13313 BalanceConc!15298) (_2!13313 BalanceConc!15298)) )
))
(declare-fun lt!792874 () tuple2!22954)

(declare-datatypes ((tuple2!22956 0))(
  ( (tuple2!22957 (_1!13314 List!23594) (_2!13314 List!23594)) )
))
(declare-fun lt!792873 () tuple2!22956)

(declare-fun list!9494 (BalanceConc!15298) List!23594)

(assert (=> b!2113381 (= res!917443 (= (list!9494 (_1!13313 lt!792874)) (_1!13314 lt!792873)))))

(declare-fun findLongestMatch!508 (Regex!5627 List!23594) tuple2!22956)

(assert (=> b!2113381 (= lt!792873 (findLongestMatch!508 r!15373 lt!792869))))

(declare-fun lt!792872 () (InoxSet Context!2394))

(declare-fun findLongestMatchZipperSequenceV3!1 ((InoxSet Context!2394) BalanceConc!15298 BalanceConc!15298) tuple2!22954)

(assert (=> b!2113381 (= lt!792874 (findLongestMatchZipperSequenceV3!1 lt!792872 input!6660 totalInput!1306))))

(declare-fun lt!792868 () Unit!37528)

(declare-fun longestMatchV3SameAsRegex!1 (Regex!5627 (InoxSet Context!2394) BalanceConc!15298 BalanceConc!15298) Unit!37528)

(assert (=> b!2113381 (= lt!792868 (longestMatchV3SameAsRegex!1 r!15373 lt!792872 input!6660 totalInput!1306))))

(declare-fun focus!268 (Regex!5627) (InoxSet Context!2394))

(assert (=> b!2113381 (= lt!792872 (focus!268 r!15373))))

(declare-fun b!2113382 () Bool)

(declare-fun e!1344677 () Bool)

(assert (=> b!2113382 (= e!1344678 e!1344677)))

(declare-fun e!1344679 () Bool)

(assert (=> b!2113383 (= e!1344667 (and e!1344679 tp!644375))))

(declare-fun e!1344659 () Bool)

(declare-fun b!2113384 () Bool)

(assert (=> b!2113384 (= e!1344682 (and e!1344659 (inv!31092 (totalInput!2826 cacheFurthestNullable!141)) e!1344672))))

(declare-fun mapNonEmpty!11305 () Bool)

(declare-fun tp!644365 () Bool)

(declare-fun tp!644370 () Bool)

(assert (=> mapNonEmpty!11305 (= mapRes!11305 (and tp!644365 tp!644370))))

(declare-fun mapRest!11306 () (Array (_ BitVec 32) List!23592))

(declare-fun mapKey!11305 () (_ BitVec 32))

(declare-fun mapValue!11305 () List!23592)

(assert (=> mapNonEmpty!11305 (= (arr!3601 (_values!2633 (v!28033 (underlying!4901 (v!28034 (underlying!4902 (cache!2648 cacheUp!1110))))))) (store mapRest!11306 mapKey!11305 mapValue!11305))))

(assert (=> b!2113385 (= e!1344659 (and e!1344686 tp!644383))))

(declare-fun b!2113386 () Bool)

(declare-fun res!917442 () Bool)

(assert (=> b!2113386 (=> (not res!917442) (not e!1344658))))

(declare-fun valid!1858 (CacheFurthestNullable!538) Bool)

(assert (=> b!2113386 (= res!917442 (valid!1858 cacheFurthestNullable!141))))

(declare-fun mapIsEmpty!11306 () Bool)

(assert (=> mapIsEmpty!11306 mapRes!11307))

(declare-fun b!2113387 () Bool)

(declare-fun e!1344656 () Bool)

(declare-fun tp!644385 () Bool)

(declare-fun mapRes!11306 () Bool)

(assert (=> b!2113387 (= e!1344656 (and tp!644385 mapRes!11306))))

(declare-fun condMapEmpty!11307 () Bool)

(declare-fun mapDefault!11305 () List!23593)

(assert (=> b!2113387 (= condMapEmpty!11307 (= (arr!3603 (_values!2634 (v!28035 (underlying!4903 (v!28036 (underlying!4904 (cache!2649 cacheFurthestNullable!141))))))) ((as const (Array (_ BitVec 32) List!23593)) mapDefault!11305)))))

(declare-fun tp!644384 () Bool)

(declare-fun e!1344674 () Bool)

(declare-fun tp!644376 () Bool)

(declare-fun array_inv!2591 (array!8125) Bool)

(assert (=> b!2113388 (= e!1344674 (and tp!644362 tp!644384 tp!644376 (array_inv!2589 (_keys!2652 (v!28037 (underlying!4905 (v!28038 (underlying!4906 (cache!2650 cacheDown!1229))))))) (array_inv!2591 (_values!2635 (v!28037 (underlying!4905 (v!28038 (underlying!4906 (cache!2650 cacheDown!1229))))))) e!1344660))))

(declare-fun b!2113389 () Bool)

(declare-fun e!1344671 () Bool)

(assert (=> b!2113389 (= e!1344668 e!1344671)))

(declare-fun mapNonEmpty!11306 () Bool)

(declare-fun tp!644369 () Bool)

(declare-fun tp!644371 () Bool)

(assert (=> mapNonEmpty!11306 (= mapRes!11306 (and tp!644369 tp!644371))))

(declare-fun mapRest!11307 () (Array (_ BitVec 32) List!23593))

(declare-fun mapValue!11307 () List!23593)

(declare-fun mapKey!11306 () (_ BitVec 32))

(assert (=> mapNonEmpty!11306 (= (arr!3603 (_values!2634 (v!28035 (underlying!4903 (v!28036 (underlying!4904 (cache!2649 cacheFurthestNullable!141))))))) (store mapRest!11307 mapKey!11306 mapValue!11307))))

(declare-fun b!2113390 () Bool)

(assert (=> b!2113390 (= e!1344662 (= (list!9494 (_2!13313 lt!792874)) (_2!13314 lt!792873)))))

(declare-fun b!2113391 () Bool)

(declare-fun tp_is_empty!9443 () Bool)

(assert (=> b!2113391 (= e!1344661 tp_is_empty!9443)))

(declare-fun b!2113392 () Bool)

(assert (=> b!2113392 (= e!1344685 e!1344674)))

(declare-fun b!2113393 () Bool)

(assert (=> b!2113393 (= e!1344658 e!1344670)))

(declare-fun res!917439 () Bool)

(assert (=> b!2113393 (=> (not res!917439) (not e!1344670))))

(declare-fun isSuffix!596 (List!23594 List!23594) Bool)

(assert (=> b!2113393 (= res!917439 (isSuffix!596 lt!792869 (list!9494 totalInput!1306)))))

(assert (=> b!2113393 (= lt!792869 (list!9494 input!6660))))

(declare-fun tp!644368 () Bool)

(declare-fun tp!644386 () Bool)

(declare-fun array_inv!2592 (array!8123) Bool)

(assert (=> b!2113394 (= e!1344677 (and tp!644360 tp!644386 tp!644368 (array_inv!2589 (_keys!2651 (v!28035 (underlying!4903 (v!28036 (underlying!4904 (cache!2649 cacheFurthestNullable!141))))))) (array_inv!2592 (_values!2634 (v!28035 (underlying!4903 (v!28036 (underlying!4904 (cache!2649 cacheFurthestNullable!141))))))) e!1344656))))

(declare-fun b!2113395 () Bool)

(declare-fun tp!644382 () Bool)

(assert (=> b!2113395 (= e!1344675 (and tp!644382 mapRes!11305))))

(declare-fun condMapEmpty!11305 () Bool)

(declare-fun mapDefault!11306 () List!23592)

(assert (=> b!2113395 (= condMapEmpty!11305 (= (arr!3601 (_values!2633 (v!28033 (underlying!4901 (v!28034 (underlying!4902 (cache!2648 cacheUp!1110))))))) ((as const (Array (_ BitVec 32) List!23592)) mapDefault!11306)))))

(declare-fun mapIsEmpty!11307 () Bool)

(assert (=> mapIsEmpty!11307 mapRes!11306))

(declare-fun b!2113396 () Bool)

(declare-fun lt!792875 () MutLongMap!2355)

(assert (=> b!2113396 (= e!1344679 (and e!1344673 ((_ is LongMap!2355) lt!792875)))))

(assert (=> b!2113396 (= lt!792875 (v!28038 (underlying!4906 (cache!2650 cacheDown!1229))))))

(declare-fun mapNonEmpty!11307 () Bool)

(declare-fun tp!644364 () Bool)

(declare-fun tp!644358 () Bool)

(assert (=> mapNonEmpty!11307 (= mapRes!11307 (and tp!644364 tp!644358))))

(declare-fun mapValue!11306 () List!23595)

(declare-fun mapRest!11305 () (Array (_ BitVec 32) List!23595))

(declare-fun mapKey!11307 () (_ BitVec 32))

(assert (=> mapNonEmpty!11307 (= (arr!3604 (_values!2635 (v!28037 (underlying!4905 (v!28038 (underlying!4906 (cache!2650 cacheDown!1229))))))) (store mapRest!11305 mapKey!11307 mapValue!11306))))

(assert (=> b!2113397 (= e!1344671 (and e!1344665 tp!644361))))

(declare-fun b!2113398 () Bool)

(assert (=> b!2113398 (= e!1344683 e!1344664)))

(assert (= (and start!206514 res!917438) b!2113380))

(assert (= (and b!2113380 res!917437) b!2113375))

(assert (= (and b!2113375 res!917440) b!2113386))

(assert (= (and b!2113386 res!917442) b!2113373))

(assert (= (and b!2113373 res!917441) b!2113393))

(assert (= (and b!2113393 res!917439) b!2113381))

(assert (= (and b!2113381 res!917443) b!2113390))

(assert (= (and b!2113369 condMapEmpty!11306) mapIsEmpty!11306))

(assert (= (and b!2113369 (not condMapEmpty!11306)) mapNonEmpty!11307))

(assert (= b!2113388 b!2113369))

(assert (= b!2113392 b!2113388))

(assert (= b!2113376 b!2113392))

(assert (= (and b!2113396 ((_ is LongMap!2355) (v!28038 (underlying!4906 (cache!2650 cacheDown!1229))))) b!2113376))

(assert (= b!2113383 b!2113396))

(assert (= (and b!2113379 ((_ is HashMap!2269) (cache!2650 cacheDown!1229))) b!2113383))

(assert (= start!206514 b!2113379))

(assert (= (and start!206514 ((_ is ElementMatch!5627) r!15373)) b!2113391))

(assert (= (and start!206514 ((_ is Concat!9929) r!15373)) b!2113378))

(assert (= (and start!206514 ((_ is Star!5627) r!15373)) b!2113374))

(assert (= (and start!206514 ((_ is Union!5627) r!15373)) b!2113377))

(assert (= (and b!2113395 condMapEmpty!11305) mapIsEmpty!11305))

(assert (= (and b!2113395 (not condMapEmpty!11305)) mapNonEmpty!11305))

(assert (= b!2113367 b!2113395))

(assert (= b!2113370 b!2113367))

(assert (= b!2113398 b!2113370))

(assert (= (and b!2113364 ((_ is LongMap!2353) (v!28034 (underlying!4902 (cache!2648 cacheUp!1110))))) b!2113398))

(assert (= b!2113397 b!2113364))

(assert (= (and b!2113389 ((_ is HashMap!2267) (cache!2648 cacheUp!1110))) b!2113397))

(assert (= start!206514 b!2113389))

(assert (= start!206514 b!2113366))

(assert (= start!206514 b!2113372))

(assert (= (and b!2113387 condMapEmpty!11307) mapIsEmpty!11307))

(assert (= (and b!2113387 (not condMapEmpty!11307)) mapNonEmpty!11306))

(assert (= b!2113394 b!2113387))

(assert (= b!2113382 b!2113394))

(assert (= b!2113368 b!2113382))

(assert (= (and b!2113365 ((_ is LongMap!2354) (v!28036 (underlying!4904 (cache!2649 cacheFurthestNullable!141))))) b!2113368))

(assert (= b!2113385 b!2113365))

(assert (= (and b!2113384 ((_ is HashMap!2268) (cache!2649 cacheFurthestNullable!141))) b!2113385))

(assert (= b!2113384 b!2113371))

(assert (= start!206514 b!2113384))

(declare-fun m!2569539 () Bool)

(assert (=> b!2113381 m!2569539))

(declare-fun m!2569541 () Bool)

(assert (=> b!2113381 m!2569541))

(declare-fun m!2569543 () Bool)

(assert (=> b!2113381 m!2569543))

(declare-fun m!2569545 () Bool)

(assert (=> b!2113381 m!2569545))

(declare-fun m!2569547 () Bool)

(assert (=> b!2113381 m!2569547))

(declare-fun m!2569549 () Bool)

(assert (=> b!2113381 m!2569549))

(declare-fun m!2569551 () Bool)

(assert (=> b!2113381 m!2569551))

(declare-fun m!2569553 () Bool)

(assert (=> b!2113381 m!2569553))

(declare-fun m!2569555 () Bool)

(assert (=> b!2113380 m!2569555))

(declare-fun m!2569557 () Bool)

(assert (=> b!2113371 m!2569557))

(declare-fun m!2569559 () Bool)

(assert (=> b!2113394 m!2569559))

(declare-fun m!2569561 () Bool)

(assert (=> b!2113394 m!2569561))

(declare-fun m!2569563 () Bool)

(assert (=> b!2113367 m!2569563))

(declare-fun m!2569565 () Bool)

(assert (=> b!2113367 m!2569565))

(declare-fun m!2569567 () Bool)

(assert (=> b!2113386 m!2569567))

(declare-fun m!2569569 () Bool)

(assert (=> b!2113388 m!2569569))

(declare-fun m!2569571 () Bool)

(assert (=> b!2113388 m!2569571))

(declare-fun m!2569573 () Bool)

(assert (=> b!2113393 m!2569573))

(assert (=> b!2113393 m!2569573))

(declare-fun m!2569575 () Bool)

(assert (=> b!2113393 m!2569575))

(declare-fun m!2569577 () Bool)

(assert (=> b!2113393 m!2569577))

(declare-fun m!2569579 () Bool)

(assert (=> start!206514 m!2569579))

(declare-fun m!2569581 () Bool)

(assert (=> start!206514 m!2569581))

(declare-fun m!2569583 () Bool)

(assert (=> start!206514 m!2569583))

(declare-fun m!2569585 () Bool)

(assert (=> start!206514 m!2569585))

(declare-fun m!2569587 () Bool)

(assert (=> start!206514 m!2569587))

(declare-fun m!2569589 () Bool)

(assert (=> start!206514 m!2569589))

(declare-fun m!2569591 () Bool)

(assert (=> b!2113372 m!2569591))

(declare-fun m!2569593 () Bool)

(assert (=> b!2113390 m!2569593))

(declare-fun m!2569595 () Bool)

(assert (=> mapNonEmpty!11305 m!2569595))

(declare-fun m!2569597 () Bool)

(assert (=> mapNonEmpty!11307 m!2569597))

(declare-fun m!2569599 () Bool)

(assert (=> b!2113375 m!2569599))

(declare-fun m!2569601 () Bool)

(assert (=> b!2113384 m!2569601))

(declare-fun m!2569603 () Bool)

(assert (=> mapNonEmpty!11306 m!2569603))

(declare-fun m!2569605 () Bool)

(assert (=> b!2113366 m!2569605))

(check-sat (not b!2113395) (not b_next!61895) b_and!170771 (not mapNonEmpty!11305) (not b_next!61889) (not b!2113393) (not b_next!61891) b_and!170761 (not b!2113375) (not b_next!61885) tp_is_empty!9443 (not b!2113377) (not b!2113381) b_and!170763 (not b!2113388) b_and!170767 (not b_next!61887) (not b!2113384) (not b!2113374) (not b!2113371) (not mapNonEmpty!11306) (not b!2113369) (not b!2113378) (not mapNonEmpty!11307) (not b_next!61893) (not start!206514) (not b!2113367) b_and!170765 (not b!2113386) (not b!2113387) b_and!170769 (not b!2113366) (not b!2113372) (not b!2113390) (not b!2113394) (not b!2113380))
(check-sat b_and!170763 b_and!170767 (not b_next!61887) (not b_next!61895) b_and!170771 (not b_next!61889) (not b_next!61891) b_and!170761 b_and!170769 (not b_next!61885) (not b_next!61893) b_and!170765)
