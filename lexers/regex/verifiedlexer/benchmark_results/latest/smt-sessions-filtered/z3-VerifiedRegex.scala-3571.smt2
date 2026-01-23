; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206448 () Bool)

(assert start!206448)

(declare-fun b!2111556 () Bool)

(declare-fun b_free!61017 () Bool)

(declare-fun b_next!61721 () Bool)

(assert (=> b!2111556 (= b_free!61017 (not b_next!61721))))

(declare-fun tp!642931 () Bool)

(declare-fun b_and!170597 () Bool)

(assert (=> b!2111556 (= tp!642931 b_and!170597)))

(declare-fun b!2111554 () Bool)

(declare-fun b_free!61019 () Bool)

(declare-fun b_next!61723 () Bool)

(assert (=> b!2111554 (= b_free!61019 (not b_next!61723))))

(declare-fun tp!642930 () Bool)

(declare-fun b_and!170599 () Bool)

(assert (=> b!2111554 (= tp!642930 b_and!170599)))

(declare-fun b!2111561 () Bool)

(declare-fun b_free!61021 () Bool)

(declare-fun b_next!61725 () Bool)

(assert (=> b!2111561 (= b_free!61021 (not b_next!61725))))

(declare-fun tp!642934 () Bool)

(declare-fun b_and!170601 () Bool)

(assert (=> b!2111561 (= tp!642934 b_and!170601)))

(declare-fun b!2111558 () Bool)

(declare-fun b_free!61023 () Bool)

(declare-fun b_next!61727 () Bool)

(assert (=> b!2111558 (= b_free!61023 (not b_next!61727))))

(declare-fun tp!642929 () Bool)

(declare-fun b_and!170603 () Bool)

(assert (=> b!2111558 (= tp!642929 b_and!170603)))

(declare-fun b!2111539 () Bool)

(declare-fun e!1343154 () Bool)

(declare-fun e!1343167 () Bool)

(assert (=> b!2111539 (= e!1343154 e!1343167)))

(declare-fun mapIsEmpty!11174 () Bool)

(declare-fun mapRes!11175 () Bool)

(assert (=> mapIsEmpty!11174 mapRes!11175))

(declare-fun b!2111540 () Bool)

(declare-fun res!916976 () Bool)

(declare-fun e!1343162 () Bool)

(assert (=> b!2111540 (=> (not res!916976) (not e!1343162))))

(declare-datatypes ((C!11364 0))(
  ( (C!11365 (val!6668 Int)) )
))
(declare-datatypes ((Regex!5609 0))(
  ( (ElementMatch!5609 (c!339146 C!11364)) (Concat!9911 (regOne!11730 Regex!5609) (regTwo!11730 Regex!5609)) (EmptyExpr!5609) (Star!5609 (reg!5938 Regex!5609)) (EmptyLang!5609) (Union!5609 (regOne!11731 Regex!5609) (regTwo!11731 Regex!5609)) )
))
(declare-datatypes ((List!23520 0))(
  ( (Nil!23436) (Cons!23436 (h!28837 Regex!5609) (t!196029 List!23520)) )
))
(declare-datatypes ((Context!2358 0))(
  ( (Context!2359 (exprs!1679 List!23520)) )
))
(declare-datatypes ((tuple3!2688 0))(
  ( (tuple3!2689 (_1!13217 Regex!5609) (_2!13217 Context!2358) (_3!1808 C!11364)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22818 0))(
  ( (tuple2!22819 (_1!13218 tuple3!2688) (_2!13218 (InoxSet Context!2358))) )
))
(declare-datatypes ((List!23521 0))(
  ( (Nil!23437) (Cons!23437 (h!28838 tuple2!22818) (t!196030 List!23521)) )
))
(declare-datatypes ((array!8010 0))(
  ( (array!8011 (arr!3548 (Array (_ BitVec 32) (_ BitVec 64))) (size!18291 (_ BitVec 32))) )
))
(declare-datatypes ((array!8012 0))(
  ( (array!8013 (arr!3549 (Array (_ BitVec 32) List!23521)) (size!18292 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4636 0))(
  ( (LongMapFixedSize!4637 (defaultEntry!2683 Int) (mask!6438 (_ BitVec 32)) (extraKeys!2566 (_ BitVec 32)) (zeroValue!2576 List!23521) (minValue!2576 List!23521) (_size!4687 (_ BitVec 32)) (_keys!2615 array!8010) (_values!2598 array!8012) (_vacant!2379 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9097 0))(
  ( (Cell!9098 (v!27963 LongMapFixedSize!4636)) )
))
(declare-datatypes ((MutLongMap!2318 0))(
  ( (LongMap!2318 (underlying!4831 Cell!9097)) (MutLongMapExt!2317 (__x!15130 Int)) )
))
(declare-datatypes ((Cell!9099 0))(
  ( (Cell!9100 (v!27964 MutLongMap!2318)) )
))
(declare-datatypes ((Hashable!2232 0))(
  ( (HashableExt!2231 (__x!15131 Int)) )
))
(declare-datatypes ((MutableMap!2232 0))(
  ( (MutableMapExt!2231 (__x!15132 Int)) (HashMap!2232 (underlying!4832 Cell!9099) (hashF!4155 Hashable!2232) (_size!4688 (_ BitVec 32)) (defaultValue!2394 Int)) )
))
(declare-datatypes ((CacheDown!1532 0))(
  ( (CacheDown!1533 (cache!2613 MutableMap!2232)) )
))
(declare-fun cacheDown!1197 () CacheDown!1532)

(declare-fun valid!1831 (CacheDown!1532) Bool)

(assert (=> b!2111540 (= res!916976 (valid!1831 cacheDown!1197))))

(declare-fun b!2111541 () Bool)

(declare-fun e!1343175 () Bool)

(declare-fun e!1343170 () Bool)

(assert (=> b!2111541 (= e!1343175 e!1343170)))

(declare-fun b!2111542 () Bool)

(declare-fun e!1343169 () Bool)

(assert (=> b!2111542 (= e!1343169 e!1343154)))

(declare-fun mapNonEmpty!11174 () Bool)

(declare-fun tp!642941 () Bool)

(declare-fun tp!642946 () Bool)

(assert (=> mapNonEmpty!11174 (= mapRes!11175 (and tp!642941 tp!642946))))

(declare-fun mapRest!11175 () (Array (_ BitVec 32) List!23521))

(declare-fun mapKey!11175 () (_ BitVec 32))

(declare-fun mapValue!11175 () List!23521)

(assert (=> mapNonEmpty!11174 (= (arr!3549 (_values!2598 (v!27963 (underlying!4831 (v!27964 (underlying!4832 (cache!2613 cacheDown!1197))))))) (store mapRest!11175 mapKey!11175 mapValue!11175))))

(declare-fun b!2111543 () Bool)

(declare-fun e!1343163 () Bool)

(declare-fun e!1343157 () Bool)

(assert (=> b!2111543 (= e!1343163 e!1343157)))

(declare-fun b!2111544 () Bool)

(declare-fun e!1343158 () Bool)

(declare-datatypes ((List!23522 0))(
  ( (Nil!23438) (Cons!23438 (h!28839 C!11364) (t!196031 List!23522)) )
))
(declare-datatypes ((IArray!15511 0))(
  ( (IArray!15512 (innerList!7813 List!23522)) )
))
(declare-datatypes ((Conc!7753 0))(
  ( (Node!7753 (left!18212 Conc!7753) (right!18542 Conc!7753) (csize!15736 Int) (cheight!7964 Int)) (Leaf!11325 (xs!10695 IArray!15511) (csize!15737 Int)) (Empty!7753) )
))
(declare-datatypes ((BalanceConc!15268 0))(
  ( (BalanceConc!15269 (c!339147 Conc!7753)) )
))
(declare-fun input!6603 () BalanceConc!15268)

(declare-fun tp!642935 () Bool)

(declare-fun inv!31013 (Conc!7753) Bool)

(assert (=> b!2111544 (= e!1343158 (and (inv!31013 (c!339147 input!6603)) tp!642935))))

(declare-fun b!2111545 () Bool)

(declare-fun e!1343173 () Bool)

(declare-datatypes ((tuple2!22820 0))(
  ( (tuple2!22821 (_1!13219 BalanceConc!15268) (_2!13219 BalanceConc!15268)) )
))
(declare-fun lt!792441 () tuple2!22820)

(declare-datatypes ((tuple2!22822 0))(
  ( (tuple2!22823 (_1!13220 List!23522) (_2!13220 List!23522)) )
))
(declare-fun lt!792439 () tuple2!22822)

(declare-fun list!9480 (BalanceConc!15268) List!23522)

(assert (=> b!2111545 (= e!1343173 (= (list!9480 (_2!13219 lt!792441)) (_2!13220 lt!792439)))))

(declare-fun b!2111546 () Bool)

(declare-fun e!1343172 () Bool)

(declare-fun lt!792445 () MutLongMap!2318)

(get-info :version)

(assert (=> b!2111546 (= e!1343172 (and e!1343169 ((_ is LongMap!2318) lt!792445)))))

(assert (=> b!2111546 (= lt!792445 (v!27964 (underlying!4832 (cache!2613 cacheDown!1197))))))

(declare-fun b!2111547 () Bool)

(declare-fun e!1343166 () Bool)

(declare-fun tp!642937 () Bool)

(declare-fun tp!642936 () Bool)

(assert (=> b!2111547 (= e!1343166 (and tp!642937 tp!642936))))

(declare-fun e!1343153 () Bool)

(declare-fun b!2111548 () Bool)

(declare-fun r!15329 () Regex!5609)

(declare-fun totalInput!1248 () BalanceConc!15268)

(declare-fun findLongestMatchWithZipperSequenceV2!71 (Regex!5609 BalanceConc!15268 BalanceConc!15268) tuple2!22820)

(assert (=> b!2111548 (= e!1343153 (= (findLongestMatchWithZipperSequenceV2!71 r!15329 input!6603 totalInput!1248) lt!792441))))

(declare-fun res!916975 () Bool)

(assert (=> start!206448 (=> (not res!916975) (not e!1343162))))

(declare-fun validRegex!2210 (Regex!5609) Bool)

(assert (=> start!206448 (= res!916975 (validRegex!2210 r!15329))))

(assert (=> start!206448 e!1343162))

(declare-fun inv!31014 (BalanceConc!15268) Bool)

(assert (=> start!206448 (and (inv!31014 input!6603) e!1343158)))

(declare-fun e!1343171 () Bool)

(declare-fun inv!31015 (CacheDown!1532) Bool)

(assert (=> start!206448 (and (inv!31015 cacheDown!1197) e!1343171)))

(assert (=> start!206448 e!1343166))

(declare-fun e!1343160 () Bool)

(assert (=> start!206448 (and (inv!31014 totalInput!1248) e!1343160)))

(declare-datatypes ((tuple2!22824 0))(
  ( (tuple2!22825 (_1!13221 Context!2358) (_2!13221 C!11364)) )
))
(declare-datatypes ((tuple2!22826 0))(
  ( (tuple2!22827 (_1!13222 tuple2!22824) (_2!13222 (InoxSet Context!2358))) )
))
(declare-datatypes ((List!23523 0))(
  ( (Nil!23439) (Cons!23439 (h!28840 tuple2!22826) (t!196032 List!23523)) )
))
(declare-datatypes ((array!8014 0))(
  ( (array!8015 (arr!3550 (Array (_ BitVec 32) List!23523)) (size!18293 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4638 0))(
  ( (LongMapFixedSize!4639 (defaultEntry!2684 Int) (mask!6439 (_ BitVec 32)) (extraKeys!2567 (_ BitVec 32)) (zeroValue!2577 List!23523) (minValue!2577 List!23523) (_size!4689 (_ BitVec 32)) (_keys!2616 array!8010) (_values!2599 array!8014) (_vacant!2380 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9101 0))(
  ( (Cell!9102 (v!27965 LongMapFixedSize!4638)) )
))
(declare-datatypes ((Hashable!2233 0))(
  ( (HashableExt!2232 (__x!15133 Int)) )
))
(declare-datatypes ((MutLongMap!2319 0))(
  ( (LongMap!2319 (underlying!4833 Cell!9101)) (MutLongMapExt!2318 (__x!15134 Int)) )
))
(declare-datatypes ((Cell!9103 0))(
  ( (Cell!9104 (v!27966 MutLongMap!2319)) )
))
(declare-datatypes ((MutableMap!2233 0))(
  ( (MutableMapExt!2232 (__x!15135 Int)) (HashMap!2233 (underlying!4834 Cell!9103) (hashF!4156 Hashable!2233) (_size!4690 (_ BitVec 32)) (defaultValue!2395 Int)) )
))
(declare-datatypes ((CacheUp!1526 0))(
  ( (CacheUp!1527 (cache!2614 MutableMap!2233)) )
))
(declare-fun cacheUp!1078 () CacheUp!1526)

(declare-fun inv!31016 (CacheUp!1526) Bool)

(assert (=> start!206448 (and (inv!31016 cacheUp!1078) e!1343175)))

(declare-fun b!2111549 () Bool)

(declare-fun e!1343155 () Bool)

(declare-fun e!1343165 () Bool)

(declare-fun lt!792442 () MutLongMap!2319)

(assert (=> b!2111549 (= e!1343155 (and e!1343165 ((_ is LongMap!2319) lt!792442)))))

(assert (=> b!2111549 (= lt!792442 (v!27966 (underlying!4834 (cache!2614 cacheUp!1078))))))

(declare-fun mapIsEmpty!11175 () Bool)

(declare-fun mapRes!11174 () Bool)

(assert (=> mapIsEmpty!11175 mapRes!11174))

(declare-fun b!2111550 () Bool)

(declare-fun tp!642938 () Bool)

(assert (=> b!2111550 (= e!1343166 tp!642938)))

(declare-fun b!2111551 () Bool)

(declare-fun e!1343174 () Bool)

(assert (=> b!2111551 (= e!1343174 (not true))))

(assert (=> b!2111551 e!1343153))

(declare-fun res!916973 () Bool)

(assert (=> b!2111551 (=> (not res!916973) (not e!1343153))))

(declare-fun lt!792446 () List!23522)

(declare-fun sizeTr!86 (List!23522 Int) Int)

(declare-fun size!18294 (List!23522) Int)

(assert (=> b!2111551 (= res!916973 (= (sizeTr!86 lt!792446 0) (size!18294 lt!792446)))))

(declare-datatypes ((Unit!37518 0))(
  ( (Unit!37519) )
))
(declare-fun lt!792440 () Unit!37518)

(declare-fun lemmaSizeTrEqualsSize!86 (List!23522 Int) Unit!37518)

(assert (=> b!2111551 (= lt!792440 (lemmaSizeTrEqualsSize!86 lt!792446 0))))

(assert (=> b!2111551 e!1343173))

(declare-fun res!916972 () Bool)

(assert (=> b!2111551 (=> (not res!916972) (not e!1343173))))

(assert (=> b!2111551 (= res!916972 (= (list!9480 (_1!13219 lt!792441)) (_1!13220 lt!792439)))))

(declare-fun findLongestMatch!503 (Regex!5609 List!23522) tuple2!22822)

(assert (=> b!2111551 (= lt!792439 (findLongestMatch!503 r!15329 lt!792446))))

(declare-fun lt!792444 () (InoxSet Context!2358))

(declare-fun findLongestMatchZipperFastV2!2 ((InoxSet Context!2358) BalanceConc!15268 BalanceConc!15268) tuple2!22820)

(assert (=> b!2111551 (= lt!792441 (findLongestMatchZipperFastV2!2 lt!792444 input!6603 totalInput!1248))))

(declare-fun lt!792443 () Unit!37518)

(declare-fun longestMatchV2SameAsRegex!2 (Regex!5609 (InoxSet Context!2358) BalanceConc!15268 BalanceConc!15268) Unit!37518)

(assert (=> b!2111551 (= lt!792443 (longestMatchV2SameAsRegex!2 r!15329 lt!792444 input!6603 totalInput!1248))))

(declare-fun focus!258 (Regex!5609) (InoxSet Context!2358))

(assert (=> b!2111551 (= lt!792444 (focus!258 r!15329))))

(declare-fun b!2111552 () Bool)

(declare-fun tp_is_empty!9407 () Bool)

(assert (=> b!2111552 (= e!1343166 tp_is_empty!9407)))

(declare-fun b!2111553 () Bool)

(declare-fun e!1343168 () Bool)

(declare-fun tp!642944 () Bool)

(assert (=> b!2111553 (= e!1343168 (and tp!642944 mapRes!11174))))

(declare-fun condMapEmpty!11174 () Bool)

(declare-fun mapDefault!11175 () List!23523)

(assert (=> b!2111553 (= condMapEmpty!11174 (= (arr!3550 (_values!2599 (v!27965 (underlying!4833 (v!27966 (underlying!4834 (cache!2614 cacheUp!1078))))))) ((as const (Array (_ BitVec 32) List!23523)) mapDefault!11175)))))

(declare-fun e!1343164 () Bool)

(assert (=> b!2111554 (= e!1343164 (and e!1343172 tp!642930))))

(declare-fun b!2111555 () Bool)

(declare-fun tp!642932 () Bool)

(declare-fun tp!642945 () Bool)

(assert (=> b!2111555 (= e!1343166 (and tp!642932 tp!642945))))

(declare-fun tp!642947 () Bool)

(declare-fun tp!642927 () Bool)

(declare-fun array_inv!2553 (array!8010) Bool)

(declare-fun array_inv!2554 (array!8014) Bool)

(assert (=> b!2111556 (= e!1343157 (and tp!642931 tp!642947 tp!642927 (array_inv!2553 (_keys!2616 (v!27965 (underlying!4833 (v!27966 (underlying!4834 (cache!2614 cacheUp!1078))))))) (array_inv!2554 (_values!2599 (v!27965 (underlying!4833 (v!27966 (underlying!4834 (cache!2614 cacheUp!1078))))))) e!1343168))))

(declare-fun b!2111557 () Bool)

(assert (=> b!2111557 (= e!1343171 e!1343164)))

(declare-fun tp!642942 () Bool)

(declare-fun tp!642933 () Bool)

(declare-fun e!1343161 () Bool)

(declare-fun array_inv!2555 (array!8012) Bool)

(assert (=> b!2111558 (= e!1343167 (and tp!642929 tp!642942 tp!642933 (array_inv!2553 (_keys!2615 (v!27963 (underlying!4831 (v!27964 (underlying!4832 (cache!2613 cacheDown!1197))))))) (array_inv!2555 (_values!2598 (v!27963 (underlying!4831 (v!27964 (underlying!4832 (cache!2613 cacheDown!1197))))))) e!1343161))))

(declare-fun b!2111559 () Bool)

(declare-fun tp!642940 () Bool)

(assert (=> b!2111559 (= e!1343161 (and tp!642940 mapRes!11175))))

(declare-fun condMapEmpty!11175 () Bool)

(declare-fun mapDefault!11174 () List!23521)

(assert (=> b!2111559 (= condMapEmpty!11175 (= (arr!3549 (_values!2598 (v!27963 (underlying!4831 (v!27964 (underlying!4832 (cache!2613 cacheDown!1197))))))) ((as const (Array (_ BitVec 32) List!23521)) mapDefault!11174)))))

(declare-fun mapNonEmpty!11175 () Bool)

(declare-fun tp!642928 () Bool)

(declare-fun tp!642939 () Bool)

(assert (=> mapNonEmpty!11175 (= mapRes!11174 (and tp!642928 tp!642939))))

(declare-fun mapKey!11174 () (_ BitVec 32))

(declare-fun mapRest!11174 () (Array (_ BitVec 32) List!23523))

(declare-fun mapValue!11174 () List!23523)

(assert (=> mapNonEmpty!11175 (= (arr!3550 (_values!2599 (v!27965 (underlying!4833 (v!27966 (underlying!4834 (cache!2614 cacheUp!1078))))))) (store mapRest!11174 mapKey!11174 mapValue!11174))))

(declare-fun b!2111560 () Bool)

(assert (=> b!2111560 (= e!1343162 e!1343174)))

(declare-fun res!916974 () Bool)

(assert (=> b!2111560 (=> (not res!916974) (not e!1343174))))

(declare-fun isSuffix!583 (List!23522 List!23522) Bool)

(assert (=> b!2111560 (= res!916974 (isSuffix!583 lt!792446 (list!9480 totalInput!1248)))))

(assert (=> b!2111560 (= lt!792446 (list!9480 input!6603))))

(assert (=> b!2111561 (= e!1343170 (and e!1343155 tp!642934))))

(declare-fun b!2111562 () Bool)

(declare-fun res!916971 () Bool)

(assert (=> b!2111562 (=> (not res!916971) (not e!1343162))))

(declare-fun valid!1832 (CacheUp!1526) Bool)

(assert (=> b!2111562 (= res!916971 (valid!1832 cacheUp!1078))))

(declare-fun b!2111563 () Bool)

(assert (=> b!2111563 (= e!1343165 e!1343163)))

(declare-fun b!2111564 () Bool)

(declare-fun tp!642943 () Bool)

(assert (=> b!2111564 (= e!1343160 (and (inv!31013 (c!339147 totalInput!1248)) tp!642943))))

(assert (= (and start!206448 res!916975) b!2111562))

(assert (= (and b!2111562 res!916971) b!2111540))

(assert (= (and b!2111540 res!916976) b!2111560))

(assert (= (and b!2111560 res!916974) b!2111551))

(assert (= (and b!2111551 res!916972) b!2111545))

(assert (= (and b!2111551 res!916973) b!2111548))

(assert (= start!206448 b!2111544))

(assert (= (and b!2111559 condMapEmpty!11175) mapIsEmpty!11174))

(assert (= (and b!2111559 (not condMapEmpty!11175)) mapNonEmpty!11174))

(assert (= b!2111558 b!2111559))

(assert (= b!2111539 b!2111558))

(assert (= b!2111542 b!2111539))

(assert (= (and b!2111546 ((_ is LongMap!2318) (v!27964 (underlying!4832 (cache!2613 cacheDown!1197))))) b!2111542))

(assert (= b!2111554 b!2111546))

(assert (= (and b!2111557 ((_ is HashMap!2232) (cache!2613 cacheDown!1197))) b!2111554))

(assert (= start!206448 b!2111557))

(assert (= (and start!206448 ((_ is ElementMatch!5609) r!15329)) b!2111552))

(assert (= (and start!206448 ((_ is Concat!9911) r!15329)) b!2111547))

(assert (= (and start!206448 ((_ is Star!5609) r!15329)) b!2111550))

(assert (= (and start!206448 ((_ is Union!5609) r!15329)) b!2111555))

(assert (= start!206448 b!2111564))

(assert (= (and b!2111553 condMapEmpty!11174) mapIsEmpty!11175))

(assert (= (and b!2111553 (not condMapEmpty!11174)) mapNonEmpty!11175))

(assert (= b!2111556 b!2111553))

(assert (= b!2111543 b!2111556))

(assert (= b!2111563 b!2111543))

(assert (= (and b!2111549 ((_ is LongMap!2319) (v!27966 (underlying!4834 (cache!2614 cacheUp!1078))))) b!2111563))

(assert (= b!2111561 b!2111549))

(assert (= (and b!2111541 ((_ is HashMap!2233) (cache!2614 cacheUp!1078))) b!2111561))

(assert (= start!206448 b!2111541))

(declare-fun m!2568325 () Bool)

(assert (=> b!2111564 m!2568325))

(declare-fun m!2568327 () Bool)

(assert (=> b!2111556 m!2568327))

(declare-fun m!2568329 () Bool)

(assert (=> b!2111556 m!2568329))

(declare-fun m!2568331 () Bool)

(assert (=> b!2111544 m!2568331))

(declare-fun m!2568333 () Bool)

(assert (=> mapNonEmpty!11174 m!2568333))

(declare-fun m!2568335 () Bool)

(assert (=> b!2111548 m!2568335))

(declare-fun m!2568337 () Bool)

(assert (=> mapNonEmpty!11175 m!2568337))

(declare-fun m!2568339 () Bool)

(assert (=> start!206448 m!2568339))

(declare-fun m!2568341 () Bool)

(assert (=> start!206448 m!2568341))

(declare-fun m!2568343 () Bool)

(assert (=> start!206448 m!2568343))

(declare-fun m!2568345 () Bool)

(assert (=> start!206448 m!2568345))

(declare-fun m!2568347 () Bool)

(assert (=> start!206448 m!2568347))

(declare-fun m!2568349 () Bool)

(assert (=> b!2111551 m!2568349))

(declare-fun m!2568351 () Bool)

(assert (=> b!2111551 m!2568351))

(declare-fun m!2568353 () Bool)

(assert (=> b!2111551 m!2568353))

(declare-fun m!2568355 () Bool)

(assert (=> b!2111551 m!2568355))

(declare-fun m!2568357 () Bool)

(assert (=> b!2111551 m!2568357))

(declare-fun m!2568359 () Bool)

(assert (=> b!2111551 m!2568359))

(declare-fun m!2568361 () Bool)

(assert (=> b!2111551 m!2568361))

(declare-fun m!2568363 () Bool)

(assert (=> b!2111551 m!2568363))

(declare-fun m!2568365 () Bool)

(assert (=> b!2111540 m!2568365))

(declare-fun m!2568367 () Bool)

(assert (=> b!2111545 m!2568367))

(declare-fun m!2568369 () Bool)

(assert (=> b!2111558 m!2568369))

(declare-fun m!2568371 () Bool)

(assert (=> b!2111558 m!2568371))

(declare-fun m!2568373 () Bool)

(assert (=> b!2111560 m!2568373))

(assert (=> b!2111560 m!2568373))

(declare-fun m!2568375 () Bool)

(assert (=> b!2111560 m!2568375))

(declare-fun m!2568377 () Bool)

(assert (=> b!2111560 m!2568377))

(declare-fun m!2568379 () Bool)

(assert (=> b!2111562 m!2568379))

(check-sat (not b!2111544) tp_is_empty!9407 (not b!2111556) (not b_next!61721) (not b_next!61723) (not b!2111559) (not b!2111555) b_and!170603 (not b_next!61727) (not b!2111562) (not b!2111560) (not b!2111547) (not mapNonEmpty!11174) (not b!2111553) (not b!2111548) (not b_next!61725) (not start!206448) (not b!2111551) (not b!2111564) (not b!2111545) (not mapNonEmpty!11175) b_and!170601 b_and!170597 b_and!170599 (not b!2111558) (not b!2111540) (not b!2111550))
(check-sat (not b_next!61721) (not b_next!61725) (not b_next!61723) b_and!170603 (not b_next!61727) b_and!170601 b_and!170597 b_and!170599)
