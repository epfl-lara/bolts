; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206502 () Bool)

(assert start!206502)

(declare-fun b!2112777 () Bool)

(declare-fun b_free!61113 () Bool)

(declare-fun b_next!61817 () Bool)

(assert (=> b!2112777 (= b_free!61113 (not b_next!61817))))

(declare-fun tp!643864 () Bool)

(declare-fun b_and!170693 () Bool)

(assert (=> b!2112777 (= tp!643864 b_and!170693)))

(declare-fun b!2112780 () Bool)

(declare-fun b_free!61115 () Bool)

(declare-fun b_next!61819 () Bool)

(assert (=> b!2112780 (= b_free!61115 (not b_next!61819))))

(declare-fun tp!643863 () Bool)

(declare-fun b_and!170695 () Bool)

(assert (=> b!2112780 (= tp!643863 b_and!170695)))

(declare-fun b!2112757 () Bool)

(declare-fun b_free!61117 () Bool)

(declare-fun b_next!61821 () Bool)

(assert (=> b!2112757 (= b_free!61117 (not b_next!61821))))

(declare-fun tp!643849 () Bool)

(declare-fun b_and!170697 () Bool)

(assert (=> b!2112757 (= tp!643849 b_and!170697)))

(declare-fun b!2112783 () Bool)

(declare-fun b_free!61119 () Bool)

(declare-fun b_next!61823 () Bool)

(assert (=> b!2112783 (= b_free!61119 (not b_next!61823))))

(declare-fun tp!643846 () Bool)

(declare-fun b_and!170699 () Bool)

(assert (=> b!2112783 (= tp!643846 b_and!170699)))

(declare-fun b!2112753 () Bool)

(declare-fun e!1344140 () Bool)

(declare-datatypes ((C!11388 0))(
  ( (C!11389 (val!6680 Int)) )
))
(declare-datatypes ((List!23565 0))(
  ( (Nil!23481) (Cons!23481 (h!28882 C!11388) (t!196074 List!23565)) )
))
(declare-datatypes ((IArray!15531 0))(
  ( (IArray!15532 (innerList!7823 List!23565)) )
))
(declare-datatypes ((Conc!7763 0))(
  ( (Node!7763 (left!18228 Conc!7763) (right!18558 Conc!7763) (csize!15756 Int) (cheight!7974 Int)) (Leaf!11341 (xs!10705 IArray!15531) (csize!15757 Int)) (Empty!7763) )
))
(declare-datatypes ((BalanceConc!15288 0))(
  ( (BalanceConc!15289 (c!339178 Conc!7763)) )
))
(declare-fun input!6603 () BalanceConc!15288)

(declare-fun tp!643845 () Bool)

(declare-fun inv!31065 (Conc!7763) Bool)

(assert (=> b!2112753 (= e!1344140 (and (inv!31065 (c!339178 input!6603)) tp!643845))))

(declare-fun b!2112754 () Bool)

(declare-fun e!1344149 () Bool)

(declare-fun e!1344144 () Bool)

(assert (=> b!2112754 (= e!1344149 e!1344144)))

(declare-fun b!2112755 () Bool)

(declare-fun e!1344152 () Bool)

(declare-fun totalInput!1248 () BalanceConc!15288)

(declare-fun tp!643852 () Bool)

(assert (=> b!2112755 (= e!1344152 (and (inv!31065 (c!339178 totalInput!1248)) tp!643852))))

(declare-fun b!2112756 () Bool)

(declare-fun e!1344135 () Bool)

(declare-fun e!1344142 () Bool)

(declare-datatypes ((Regex!5621 0))(
  ( (ElementMatch!5621 (c!339179 C!11388)) (Concat!9923 (regOne!11754 Regex!5621) (regTwo!11754 Regex!5621)) (EmptyExpr!5621) (Star!5621 (reg!5950 Regex!5621)) (EmptyLang!5621) (Union!5621 (regOne!11755 Regex!5621) (regTwo!11755 Regex!5621)) )
))
(declare-datatypes ((List!23566 0))(
  ( (Nil!23482) (Cons!23482 (h!28883 Regex!5621) (t!196075 List!23566)) )
))
(declare-datatypes ((Context!2382 0))(
  ( (Context!2383 (exprs!1691 List!23566)) )
))
(declare-datatypes ((tuple2!22902 0))(
  ( (tuple2!22903 (_1!13275 Context!2382) (_2!13275 C!11388)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22904 0))(
  ( (tuple2!22905 (_1!13276 tuple2!22902) (_2!13276 (InoxSet Context!2382))) )
))
(declare-datatypes ((List!23567 0))(
  ( (Nil!23483) (Cons!23483 (h!28884 tuple2!22904) (t!196076 List!23567)) )
))
(declare-datatypes ((array!8079 0))(
  ( (array!8080 (arr!3581 (Array (_ BitVec 32) (_ BitVec 64))) (size!18331 (_ BitVec 32))) )
))
(declare-datatypes ((array!8081 0))(
  ( (array!8082 (arr!3582 (Array (_ BitVec 32) List!23567)) (size!18332 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4678 0))(
  ( (LongMapFixedSize!4679 (defaultEntry!2704 Int) (mask!6465 (_ BitVec 32)) (extraKeys!2587 (_ BitVec 32)) (zeroValue!2597 List!23567) (minValue!2597 List!23567) (_size!4729 (_ BitVec 32)) (_keys!2636 array!8079) (_values!2619 array!8081) (_vacant!2400 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9181 0))(
  ( (Cell!9182 (v!28005 LongMapFixedSize!4678)) )
))
(declare-datatypes ((MutLongMap!2339 0))(
  ( (LongMap!2339 (underlying!4873 Cell!9181)) (MutLongMapExt!2338 (__x!15193 Int)) )
))
(declare-fun lt!792762 () MutLongMap!2339)

(get-info :version)

(assert (=> b!2112756 (= e!1344135 (and e!1344142 ((_ is LongMap!2339) lt!792762)))))

(declare-datatypes ((Hashable!2253 0))(
  ( (HashableExt!2252 (__x!15194 Int)) )
))
(declare-datatypes ((Cell!9183 0))(
  ( (Cell!9184 (v!28006 MutLongMap!2339)) )
))
(declare-datatypes ((MutableMap!2253 0))(
  ( (MutableMapExt!2252 (__x!15195 Int)) (HashMap!2253 (underlying!4874 Cell!9183) (hashF!4176 Hashable!2253) (_size!4730 (_ BitVec 32)) (defaultValue!2415 Int)) )
))
(declare-datatypes ((CacheUp!1550 0))(
  ( (CacheUp!1551 (cache!2634 MutableMap!2253)) )
))
(declare-fun cacheUp!1078 () CacheUp!1550)

(assert (=> b!2112756 (= lt!792762 (v!28006 (underlying!4874 (cache!2634 cacheUp!1078))))))

(declare-fun e!1344137 () Bool)

(declare-fun tp!643851 () Bool)

(declare-fun tp!643853 () Bool)

(declare-fun array_inv!2578 (array!8079) Bool)

(declare-fun array_inv!2579 (array!8081) Bool)

(assert (=> b!2112757 (= e!1344144 (and tp!643849 tp!643851 tp!643853 (array_inv!2578 (_keys!2636 (v!28005 (underlying!4873 (v!28006 (underlying!4874 (cache!2634 cacheUp!1078))))))) (array_inv!2579 (_values!2619 (v!28005 (underlying!4873 (v!28006 (underlying!4874 (cache!2634 cacheUp!1078))))))) e!1344137))))

(declare-fun b!2112758 () Bool)

(declare-fun res!917332 () Bool)

(declare-fun e!1344130 () Bool)

(assert (=> b!2112758 (=> (not res!917332) (not e!1344130))))

(declare-datatypes ((tuple3!2720 0))(
  ( (tuple3!2721 (_1!13277 Regex!5621) (_2!13277 Context!2382) (_3!1824 C!11388)) )
))
(declare-datatypes ((tuple2!22906 0))(
  ( (tuple2!22907 (_1!13278 tuple3!2720) (_2!13278 (InoxSet Context!2382))) )
))
(declare-datatypes ((List!23568 0))(
  ( (Nil!23484) (Cons!23484 (h!28885 tuple2!22906) (t!196077 List!23568)) )
))
(declare-datatypes ((array!8083 0))(
  ( (array!8084 (arr!3583 (Array (_ BitVec 32) List!23568)) (size!18333 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4680 0))(
  ( (LongMapFixedSize!4681 (defaultEntry!2705 Int) (mask!6466 (_ BitVec 32)) (extraKeys!2588 (_ BitVec 32)) (zeroValue!2598 List!23568) (minValue!2598 List!23568) (_size!4731 (_ BitVec 32)) (_keys!2637 array!8079) (_values!2620 array!8083) (_vacant!2401 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9185 0))(
  ( (Cell!9186 (v!28007 LongMapFixedSize!4680)) )
))
(declare-datatypes ((MutLongMap!2340 0))(
  ( (LongMap!2340 (underlying!4875 Cell!9185)) (MutLongMapExt!2339 (__x!15196 Int)) )
))
(declare-datatypes ((Cell!9187 0))(
  ( (Cell!9188 (v!28008 MutLongMap!2340)) )
))
(declare-datatypes ((Hashable!2254 0))(
  ( (HashableExt!2253 (__x!15197 Int)) )
))
(declare-datatypes ((MutableMap!2254 0))(
  ( (MutableMapExt!2253 (__x!15198 Int)) (HashMap!2254 (underlying!4876 Cell!9187) (hashF!4177 Hashable!2254) (_size!4732 (_ BitVec 32)) (defaultValue!2416 Int)) )
))
(declare-datatypes ((CacheDown!1550 0))(
  ( (CacheDown!1551 (cache!2635 MutableMap!2254)) )
))
(declare-datatypes ((tuple2!22908 0))(
  ( (tuple2!22909 (_1!13279 BalanceConc!15288) (_2!13279 BalanceConc!15288)) )
))
(declare-datatypes ((tuple3!2722 0))(
  ( (tuple3!2723 (_1!13280 tuple2!22908) (_2!13280 CacheUp!1550) (_3!1825 CacheDown!1550)) )
))
(declare-fun lt!792768 () tuple3!2722)

(declare-fun valid!1847 (CacheDown!1550) Bool)

(assert (=> b!2112758 (= res!917332 (valid!1847 (_3!1825 lt!792768)))))

(declare-fun b!2112759 () Bool)

(declare-fun e!1344134 () Bool)

(declare-fun tp!643859 () Bool)

(assert (=> b!2112759 (= e!1344134 tp!643859)))

(declare-fun b!2112760 () Bool)

(assert (=> b!2112760 (= e!1344142 e!1344149)))

(declare-fun res!917322 () Bool)

(declare-fun e!1344139 () Bool)

(assert (=> start!206502 (=> (not res!917322) (not e!1344139))))

(declare-fun r!15329 () Regex!5621)

(declare-fun validRegex!2217 (Regex!5621) Bool)

(assert (=> start!206502 (= res!917322 (validRegex!2217 r!15329))))

(assert (=> start!206502 e!1344139))

(declare-fun inv!31066 (BalanceConc!15288) Bool)

(assert (=> start!206502 (and (inv!31066 input!6603) e!1344140)))

(declare-fun cacheDown!1197 () CacheDown!1550)

(declare-fun e!1344131 () Bool)

(declare-fun inv!31067 (CacheDown!1550) Bool)

(assert (=> start!206502 (and (inv!31067 cacheDown!1197) e!1344131)))

(assert (=> start!206502 e!1344134))

(assert (=> start!206502 (and (inv!31066 totalInput!1248) e!1344152)))

(declare-fun e!1344129 () Bool)

(declare-fun inv!31068 (CacheUp!1550) Bool)

(assert (=> start!206502 (and (inv!31068 cacheUp!1078) e!1344129)))

(declare-fun b!2112761 () Bool)

(declare-fun e!1344138 () Bool)

(declare-fun lt!792760 () tuple3!2722)

(assert (=> b!2112761 (= e!1344138 (valid!1847 (_3!1825 lt!792760)))))

(declare-fun b!2112762 () Bool)

(declare-fun e!1344141 () Bool)

(declare-fun e!1344132 () Bool)

(declare-fun lt!792772 () MutLongMap!2340)

(assert (=> b!2112762 (= e!1344141 (and e!1344132 ((_ is LongMap!2340) lt!792772)))))

(assert (=> b!2112762 (= lt!792772 (v!28008 (underlying!4876 (cache!2635 cacheDown!1197))))))

(declare-fun b!2112763 () Bool)

(declare-fun e!1344145 () Bool)

(declare-fun tp!643856 () Bool)

(declare-fun mapRes!11252 () Bool)

(assert (=> b!2112763 (= e!1344145 (and tp!643856 mapRes!11252))))

(declare-fun condMapEmpty!11253 () Bool)

(declare-fun mapDefault!11252 () List!23568)

(assert (=> b!2112763 (= condMapEmpty!11253 (= (arr!3583 (_values!2620 (v!28007 (underlying!4875 (v!28008 (underlying!4876 (cache!2635 cacheDown!1197))))))) ((as const (Array (_ BitVec 32) List!23568)) mapDefault!11252)))))

(declare-fun b!2112764 () Bool)

(declare-fun res!917329 () Bool)

(declare-fun e!1344127 () Bool)

(assert (=> b!2112764 (=> (not res!917329) (not e!1344127))))

(declare-datatypes ((tuple3!2724 0))(
  ( (tuple3!2725 (_1!13281 Int) (_2!13281 CacheUp!1550) (_3!1826 CacheDown!1550)) )
))
(declare-fun lt!792761 () tuple3!2724)

(declare-fun valid!1848 (CacheUp!1550) Bool)

(assert (=> b!2112764 (= res!917329 (valid!1848 (_2!13281 lt!792761)))))

(declare-fun b!2112765 () Bool)

(declare-fun e!1344143 () Bool)

(assert (=> b!2112765 (= e!1344143 (not e!1344130))))

(declare-fun res!917328 () Bool)

(assert (=> b!2112765 (=> (not res!917328) (not e!1344130))))

(declare-fun lt!792766 () tuple2!22908)

(assert (=> b!2112765 (= res!917328 (= (_1!13280 lt!792768) lt!792766))))

(declare-fun e!1344151 () Bool)

(assert (=> b!2112765 e!1344151))

(declare-fun res!917326 () Bool)

(assert (=> b!2112765 (=> (not res!917326) (not e!1344151))))

(declare-fun lt!792771 () tuple2!22908)

(assert (=> b!2112765 (= res!917326 (= (_1!13280 lt!792768) lt!792771))))

(declare-fun lt!792773 () (InoxSet Context!2382))

(declare-fun findLongestMatchZipperFastV2MemOnlyDeriv!4 ((InoxSet Context!2382) BalanceConc!15288 BalanceConc!15288 CacheUp!1550 CacheDown!1550) tuple3!2722)

(assert (=> b!2112765 (= lt!792768 (findLongestMatchZipperFastV2MemOnlyDeriv!4 lt!792773 input!6603 totalInput!1248 (_2!13280 lt!792760) (_3!1825 lt!792760)))))

(assert (=> b!2112765 e!1344127))

(declare-fun res!917323 () Bool)

(assert (=> b!2112765 (=> (not res!917323) (not e!1344127))))

(declare-fun lt!792767 () Int)

(declare-fun lt!792770 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!3 ((InoxSet Context!2382) Int BalanceConc!15288 Int) Int)

(assert (=> b!2112765 (= res!917323 (= (_1!13281 lt!792761) (findLongestMatchInnerZipperFastV2!3 lt!792773 lt!792770 totalInput!1248 lt!792767)))))

(declare-fun findLongestMatchInnerZipperFastV2MemOnlyDeriv!3 ((InoxSet Context!2382) Int BalanceConc!15288 Int CacheUp!1550 CacheDown!1550) tuple3!2724)

(assert (=> b!2112765 (= lt!792761 (findLongestMatchInnerZipperFastV2MemOnlyDeriv!3 lt!792773 lt!792770 totalInput!1248 lt!792767 cacheUp!1078 cacheDown!1197))))

(declare-fun size!18334 (BalanceConc!15288) Int)

(assert (=> b!2112765 (= lt!792770 (- lt!792767 (size!18334 input!6603)))))

(assert (=> b!2112765 (= lt!792767 (size!18334 totalInput!1248))))

(assert (=> b!2112765 e!1344138))

(declare-fun res!917324 () Bool)

(assert (=> b!2112765 (=> (not res!917324) (not e!1344138))))

(assert (=> b!2112765 (= res!917324 (= (_1!13280 lt!792760) lt!792771))))

(assert (=> b!2112765 (= lt!792760 (findLongestMatchZipperFastV2MemOnlyDeriv!4 lt!792773 input!6603 totalInput!1248 cacheUp!1078 cacheDown!1197))))

(assert (=> b!2112765 (= lt!792766 lt!792771)))

(declare-fun findLongestMatchWithZipperSequenceV2!75 (Regex!5621 BalanceConc!15288 BalanceConc!15288) tuple2!22908)

(assert (=> b!2112765 (= lt!792766 (findLongestMatchWithZipperSequenceV2!75 r!15329 input!6603 totalInput!1248))))

(declare-fun lt!792763 () List!23565)

(declare-fun sizeTr!90 (List!23565 Int) Int)

(declare-fun size!18335 (List!23565) Int)

(assert (=> b!2112765 (= (sizeTr!90 lt!792763 0) (size!18335 lt!792763))))

(declare-datatypes ((Unit!37526 0))(
  ( (Unit!37527) )
))
(declare-fun lt!792769 () Unit!37526)

(declare-fun lemmaSizeTrEqualsSize!90 (List!23565 Int) Unit!37526)

(assert (=> b!2112765 (= lt!792769 (lemmaSizeTrEqualsSize!90 lt!792763 0))))

(declare-fun e!1344148 () Bool)

(assert (=> b!2112765 e!1344148))

(declare-fun res!917327 () Bool)

(assert (=> b!2112765 (=> (not res!917327) (not e!1344148))))

(declare-datatypes ((tuple2!22910 0))(
  ( (tuple2!22911 (_1!13282 List!23565) (_2!13282 List!23565)) )
))
(declare-fun lt!792764 () tuple2!22910)

(declare-fun list!9490 (BalanceConc!15288) List!23565)

(assert (=> b!2112765 (= res!917327 (= (list!9490 (_1!13279 lt!792771)) (_1!13282 lt!792764)))))

(declare-fun findLongestMatch!507 (Regex!5621 List!23565) tuple2!22910)

(assert (=> b!2112765 (= lt!792764 (findLongestMatch!507 r!15329 lt!792763))))

(declare-fun findLongestMatchZipperFastV2!6 ((InoxSet Context!2382) BalanceConc!15288 BalanceConc!15288) tuple2!22908)

(assert (=> b!2112765 (= lt!792771 (findLongestMatchZipperFastV2!6 lt!792773 input!6603 totalInput!1248))))

(declare-fun lt!792765 () Unit!37526)

(declare-fun longestMatchV2SameAsRegex!6 (Regex!5621 (InoxSet Context!2382) BalanceConc!15288 BalanceConc!15288) Unit!37526)

(assert (=> b!2112765 (= lt!792765 (longestMatchV2SameAsRegex!6 r!15329 lt!792773 input!6603 totalInput!1248))))

(declare-fun focus!266 (Regex!5621) (InoxSet Context!2382))

(assert (=> b!2112765 (= lt!792773 (focus!266 r!15329))))

(declare-fun b!2112766 () Bool)

(declare-fun tp!643857 () Bool)

(declare-fun mapRes!11253 () Bool)

(assert (=> b!2112766 (= e!1344137 (and tp!643857 mapRes!11253))))

(declare-fun condMapEmpty!11252 () Bool)

(declare-fun mapDefault!11253 () List!23567)

(assert (=> b!2112766 (= condMapEmpty!11252 (= (arr!3582 (_values!2619 (v!28005 (underlying!4873 (v!28006 (underlying!4874 (cache!2634 cacheUp!1078))))))) ((as const (Array (_ BitVec 32) List!23567)) mapDefault!11253)))))

(declare-fun b!2112767 () Bool)

(declare-fun res!917334 () Bool)

(assert (=> b!2112767 (=> (not res!917334) (not e!1344139))))

(assert (=> b!2112767 (= res!917334 (valid!1847 cacheDown!1197))))

(declare-fun b!2112768 () Bool)

(assert (=> b!2112768 (= e!1344151 (valid!1847 (_3!1825 lt!792768)))))

(declare-fun b!2112769 () Bool)

(declare-fun e!1344146 () Bool)

(assert (=> b!2112769 (= e!1344132 e!1344146)))

(declare-fun mapNonEmpty!11252 () Bool)

(declare-fun tp!643848 () Bool)

(declare-fun tp!643860 () Bool)

(assert (=> mapNonEmpty!11252 (= mapRes!11252 (and tp!643848 tp!643860))))

(declare-fun mapValue!11252 () List!23568)

(declare-fun mapKey!11253 () (_ BitVec 32))

(declare-fun mapRest!11252 () (Array (_ BitVec 32) List!23568))

(assert (=> mapNonEmpty!11252 (= (arr!3583 (_values!2620 (v!28007 (underlying!4875 (v!28008 (underlying!4876 (cache!2635 cacheDown!1197))))))) (store mapRest!11252 mapKey!11253 mapValue!11252))))

(declare-fun b!2112770 () Bool)

(declare-fun e!1344128 () Bool)

(assert (=> b!2112770 (= e!1344129 e!1344128)))

(declare-fun mapIsEmpty!11252 () Bool)

(assert (=> mapIsEmpty!11252 mapRes!11252))

(declare-fun b!2112771 () Bool)

(declare-fun tp_is_empty!9431 () Bool)

(assert (=> b!2112771 (= e!1344134 tp_is_empty!9431)))

(declare-fun b!2112772 () Bool)

(declare-fun tp!643862 () Bool)

(declare-fun tp!643850 () Bool)

(assert (=> b!2112772 (= e!1344134 (and tp!643862 tp!643850))))

(declare-fun mapNonEmpty!11253 () Bool)

(declare-fun tp!643861 () Bool)

(declare-fun tp!643854 () Bool)

(assert (=> mapNonEmpty!11253 (= mapRes!11253 (and tp!643861 tp!643854))))

(declare-fun mapRest!11253 () (Array (_ BitVec 32) List!23567))

(declare-fun mapValue!11253 () List!23567)

(declare-fun mapKey!11252 () (_ BitVec 32))

(assert (=> mapNonEmpty!11253 (= (arr!3582 (_values!2619 (v!28005 (underlying!4873 (v!28006 (underlying!4874 (cache!2634 cacheUp!1078))))))) (store mapRest!11253 mapKey!11252 mapValue!11253))))

(declare-fun b!2112773 () Bool)

(assert (=> b!2112773 (= e!1344139 e!1344143)))

(declare-fun res!917330 () Bool)

(assert (=> b!2112773 (=> (not res!917330) (not e!1344143))))

(declare-fun isSuffix!592 (List!23565 List!23565) Bool)

(assert (=> b!2112773 (= res!917330 (isSuffix!592 lt!792763 (list!9490 totalInput!1248)))))

(assert (=> b!2112773 (= lt!792763 (list!9490 input!6603))))

(declare-fun b!2112774 () Bool)

(declare-fun splitAt!8 (BalanceConc!15288 Int) tuple2!22908)

(assert (=> b!2112774 (= e!1344127 (= lt!792760 (tuple3!2723 (splitAt!8 input!6603 (_1!13281 lt!792761)) (_2!13281 lt!792761) (_3!1826 lt!792761))))))

(declare-fun b!2112775 () Bool)

(declare-fun res!917333 () Bool)

(assert (=> b!2112775 (=> (not res!917333) (not e!1344151))))

(assert (=> b!2112775 (= res!917333 (valid!1848 (_2!13280 lt!792768)))))

(declare-fun b!2112776 () Bool)

(declare-fun e!1344150 () Bool)

(assert (=> b!2112776 (= e!1344131 e!1344150)))

(declare-fun e!1344133 () Bool)

(declare-fun tp!643855 () Bool)

(declare-fun tp!643847 () Bool)

(declare-fun array_inv!2580 (array!8083) Bool)

(assert (=> b!2112777 (= e!1344133 (and tp!643864 tp!643855 tp!643847 (array_inv!2578 (_keys!2637 (v!28007 (underlying!4875 (v!28008 (underlying!4876 (cache!2635 cacheDown!1197))))))) (array_inv!2580 (_values!2620 (v!28007 (underlying!4875 (v!28008 (underlying!4876 (cache!2635 cacheDown!1197))))))) e!1344145))))

(declare-fun b!2112778 () Bool)

(declare-fun res!917335 () Bool)

(assert (=> b!2112778 (=> (not res!917335) (not e!1344139))))

(assert (=> b!2112778 (= res!917335 (valid!1848 cacheUp!1078))))

(declare-fun b!2112779 () Bool)

(declare-fun res!917331 () Bool)

(assert (=> b!2112779 (=> (not res!917331) (not e!1344138))))

(assert (=> b!2112779 (= res!917331 (valid!1848 (_2!13280 lt!792760)))))

(assert (=> b!2112780 (= e!1344128 (and e!1344135 tp!643863))))

(declare-fun b!2112781 () Bool)

(declare-fun tp!643844 () Bool)

(declare-fun tp!643858 () Bool)

(assert (=> b!2112781 (= e!1344134 (and tp!643844 tp!643858))))

(declare-fun b!2112782 () Bool)

(assert (=> b!2112782 (= e!1344148 (= (list!9490 (_2!13279 lt!792771)) (_2!13282 lt!792764)))))

(assert (=> b!2112783 (= e!1344150 (and e!1344141 tp!643846))))

(declare-fun b!2112784 () Bool)

(declare-fun res!917325 () Bool)

(assert (=> b!2112784 (=> (not res!917325) (not e!1344127))))

(assert (=> b!2112784 (= res!917325 (valid!1847 (_3!1826 lt!792761)))))

(declare-fun b!2112785 () Bool)

(assert (=> b!2112785 (= e!1344146 e!1344133)))

(declare-fun b!2112786 () Bool)

(assert (=> b!2112786 (= e!1344130 (valid!1848 (_2!13280 lt!792768)))))

(declare-fun mapIsEmpty!11253 () Bool)

(assert (=> mapIsEmpty!11253 mapRes!11253))

(assert (= (and start!206502 res!917322) b!2112778))

(assert (= (and b!2112778 res!917335) b!2112767))

(assert (= (and b!2112767 res!917334) b!2112773))

(assert (= (and b!2112773 res!917330) b!2112765))

(assert (= (and b!2112765 res!917327) b!2112782))

(assert (= (and b!2112765 res!917324) b!2112779))

(assert (= (and b!2112779 res!917331) b!2112761))

(assert (= (and b!2112765 res!917323) b!2112764))

(assert (= (and b!2112764 res!917329) b!2112784))

(assert (= (and b!2112784 res!917325) b!2112774))

(assert (= (and b!2112765 res!917326) b!2112775))

(assert (= (and b!2112775 res!917333) b!2112768))

(assert (= (and b!2112765 res!917328) b!2112758))

(assert (= (and b!2112758 res!917332) b!2112786))

(assert (= start!206502 b!2112753))

(assert (= (and b!2112763 condMapEmpty!11253) mapIsEmpty!11252))

(assert (= (and b!2112763 (not condMapEmpty!11253)) mapNonEmpty!11252))

(assert (= b!2112777 b!2112763))

(assert (= b!2112785 b!2112777))

(assert (= b!2112769 b!2112785))

(assert (= (and b!2112762 ((_ is LongMap!2340) (v!28008 (underlying!4876 (cache!2635 cacheDown!1197))))) b!2112769))

(assert (= b!2112783 b!2112762))

(assert (= (and b!2112776 ((_ is HashMap!2254) (cache!2635 cacheDown!1197))) b!2112783))

(assert (= start!206502 b!2112776))

(assert (= (and start!206502 ((_ is ElementMatch!5621) r!15329)) b!2112771))

(assert (= (and start!206502 ((_ is Concat!9923) r!15329)) b!2112781))

(assert (= (and start!206502 ((_ is Star!5621) r!15329)) b!2112759))

(assert (= (and start!206502 ((_ is Union!5621) r!15329)) b!2112772))

(assert (= start!206502 b!2112755))

(assert (= (and b!2112766 condMapEmpty!11252) mapIsEmpty!11253))

(assert (= (and b!2112766 (not condMapEmpty!11252)) mapNonEmpty!11253))

(assert (= b!2112757 b!2112766))

(assert (= b!2112754 b!2112757))

(assert (= b!2112760 b!2112754))

(assert (= (and b!2112756 ((_ is LongMap!2339) (v!28006 (underlying!4874 (cache!2634 cacheUp!1078))))) b!2112760))

(assert (= b!2112780 b!2112756))

(assert (= (and b!2112770 ((_ is HashMap!2253) (cache!2634 cacheUp!1078))) b!2112780))

(assert (= start!206502 b!2112770))

(declare-fun m!2569177 () Bool)

(assert (=> b!2112753 m!2569177))

(declare-fun m!2569179 () Bool)

(assert (=> b!2112777 m!2569179))

(declare-fun m!2569181 () Bool)

(assert (=> b!2112777 m!2569181))

(declare-fun m!2569183 () Bool)

(assert (=> b!2112764 m!2569183))

(declare-fun m!2569185 () Bool)

(assert (=> b!2112761 m!2569185))

(declare-fun m!2569187 () Bool)

(assert (=> b!2112786 m!2569187))

(declare-fun m!2569189 () Bool)

(assert (=> b!2112765 m!2569189))

(declare-fun m!2569191 () Bool)

(assert (=> b!2112765 m!2569191))

(declare-fun m!2569193 () Bool)

(assert (=> b!2112765 m!2569193))

(declare-fun m!2569195 () Bool)

(assert (=> b!2112765 m!2569195))

(declare-fun m!2569197 () Bool)

(assert (=> b!2112765 m!2569197))

(declare-fun m!2569199 () Bool)

(assert (=> b!2112765 m!2569199))

(declare-fun m!2569201 () Bool)

(assert (=> b!2112765 m!2569201))

(declare-fun m!2569203 () Bool)

(assert (=> b!2112765 m!2569203))

(declare-fun m!2569205 () Bool)

(assert (=> b!2112765 m!2569205))

(declare-fun m!2569207 () Bool)

(assert (=> b!2112765 m!2569207))

(declare-fun m!2569209 () Bool)

(assert (=> b!2112765 m!2569209))

(declare-fun m!2569211 () Bool)

(assert (=> b!2112765 m!2569211))

(declare-fun m!2569213 () Bool)

(assert (=> b!2112765 m!2569213))

(declare-fun m!2569215 () Bool)

(assert (=> b!2112765 m!2569215))

(declare-fun m!2569217 () Bool)

(assert (=> b!2112765 m!2569217))

(assert (=> b!2112775 m!2569187))

(declare-fun m!2569219 () Bool)

(assert (=> b!2112767 m!2569219))

(declare-fun m!2569221 () Bool)

(assert (=> b!2112755 m!2569221))

(declare-fun m!2569223 () Bool)

(assert (=> start!206502 m!2569223))

(declare-fun m!2569225 () Bool)

(assert (=> start!206502 m!2569225))

(declare-fun m!2569227 () Bool)

(assert (=> start!206502 m!2569227))

(declare-fun m!2569229 () Bool)

(assert (=> start!206502 m!2569229))

(declare-fun m!2569231 () Bool)

(assert (=> start!206502 m!2569231))

(declare-fun m!2569233 () Bool)

(assert (=> b!2112778 m!2569233))

(declare-fun m!2569235 () Bool)

(assert (=> b!2112784 m!2569235))

(declare-fun m!2569237 () Bool)

(assert (=> b!2112774 m!2569237))

(declare-fun m!2569239 () Bool)

(assert (=> b!2112773 m!2569239))

(assert (=> b!2112773 m!2569239))

(declare-fun m!2569241 () Bool)

(assert (=> b!2112773 m!2569241))

(declare-fun m!2569243 () Bool)

(assert (=> b!2112773 m!2569243))

(declare-fun m!2569245 () Bool)

(assert (=> mapNonEmpty!11252 m!2569245))

(declare-fun m!2569247 () Bool)

(assert (=> mapNonEmpty!11253 m!2569247))

(declare-fun m!2569249 () Bool)

(assert (=> b!2112779 m!2569249))

(declare-fun m!2569251 () Bool)

(assert (=> b!2112782 m!2569251))

(declare-fun m!2569253 () Bool)

(assert (=> b!2112758 m!2569253))

(assert (=> b!2112768 m!2569253))

(declare-fun m!2569255 () Bool)

(assert (=> b!2112757 m!2569255))

(declare-fun m!2569257 () Bool)

(assert (=> b!2112757 m!2569257))

(check-sat (not b!2112766) (not mapNonEmpty!11253) (not b_next!61817) b_and!170693 (not b!2112753) (not b!2112779) (not b!2112778) (not b!2112774) (not b!2112784) tp_is_empty!9431 (not b!2112767) (not b!2112763) (not b!2112759) (not b_next!61819) b_and!170695 (not start!206502) (not b!2112781) (not b!2112757) b_and!170697 (not b!2112782) (not b!2112755) (not b!2112765) (not b!2112773) (not b!2112777) (not b!2112772) (not b_next!61821) (not b!2112761) (not b!2112786) b_and!170699 (not mapNonEmpty!11252) (not b!2112768) (not b_next!61823) (not b!2112775) (not b!2112764) (not b!2112758))
(check-sat b_and!170695 (not b_next!61817) b_and!170693 b_and!170697 (not b_next!61821) b_and!170699 (not b_next!61823) (not b_next!61819))
