; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206456 () Bool)

(assert start!206456)

(declare-fun b!2111917 () Bool)

(declare-fun b_free!61049 () Bool)

(declare-fun b_next!61753 () Bool)

(assert (=> b!2111917 (= b_free!61049 (not b_next!61753))))

(declare-fun tp!643188 () Bool)

(declare-fun b_and!170629 () Bool)

(assert (=> b!2111917 (= tp!643188 b_and!170629)))

(declare-fun b!2111891 () Bool)

(declare-fun b_free!61051 () Bool)

(declare-fun b_next!61755 () Bool)

(assert (=> b!2111891 (= b_free!61051 (not b_next!61755))))

(declare-fun tp!643197 () Bool)

(declare-fun b_and!170631 () Bool)

(assert (=> b!2111891 (= tp!643197 b_and!170631)))

(declare-fun b!2111909 () Bool)

(declare-fun b_free!61053 () Bool)

(declare-fun b_next!61757 () Bool)

(assert (=> b!2111909 (= b_free!61053 (not b_next!61757))))

(declare-fun tp!643180 () Bool)

(declare-fun b_and!170633 () Bool)

(assert (=> b!2111909 (= tp!643180 b_and!170633)))

(declare-fun b!2111894 () Bool)

(declare-fun b_free!61055 () Bool)

(declare-fun b_next!61759 () Bool)

(assert (=> b!2111894 (= b_free!61055 (not b_next!61759))))

(declare-fun tp!643190 () Bool)

(declare-fun b_and!170635 () Bool)

(assert (=> b!2111894 (= tp!643190 b_and!170635)))

(declare-fun b!2111888 () Bool)

(declare-fun res!917090 () Bool)

(declare-fun e!1343464 () Bool)

(assert (=> b!2111888 (=> (not res!917090) (not e!1343464))))

(declare-datatypes ((C!11372 0))(
  ( (C!11373 (val!6672 Int)) )
))
(declare-datatypes ((Regex!5613 0))(
  ( (ElementMatch!5613 (c!339153 C!11372)) (Concat!9915 (regOne!11738 Regex!5613) (regTwo!11738 Regex!5613)) (EmptyExpr!5613) (Star!5613 (reg!5942 Regex!5613)) (EmptyLang!5613) (Union!5613 (regOne!11739 Regex!5613) (regTwo!11739 Regex!5613)) )
))
(declare-datatypes ((List!23533 0))(
  ( (Nil!23449) (Cons!23449 (h!28850 Regex!5613) (t!196042 List!23533)) )
))
(declare-datatypes ((Context!2366 0))(
  ( (Context!2367 (exprs!1683 List!23533)) )
))
(declare-datatypes ((tuple3!2694 0))(
  ( (tuple3!2695 (_1!13234 Regex!5613) (_2!13234 Context!2366) (_3!1811 C!11372)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22846 0))(
  ( (tuple2!22847 (_1!13235 tuple3!2694) (_2!13235 (InoxSet Context!2366))) )
))
(declare-datatypes ((List!23534 0))(
  ( (Nil!23450) (Cons!23450 (h!28851 tuple2!22846) (t!196043 List!23534)) )
))
(declare-datatypes ((array!8030 0))(
  ( (array!8031 (arr!3558 (Array (_ BitVec 32) (_ BitVec 64))) (size!18303 (_ BitVec 32))) )
))
(declare-datatypes ((array!8032 0))(
  ( (array!8033 (arr!3559 (Array (_ BitVec 32) List!23534)) (size!18304 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4648 0))(
  ( (LongMapFixedSize!4649 (defaultEntry!2689 Int) (mask!6446 (_ BitVec 32)) (extraKeys!2572 (_ BitVec 32)) (zeroValue!2582 List!23534) (minValue!2582 List!23534) (_size!4699 (_ BitVec 32)) (_keys!2621 array!8030) (_values!2604 array!8032) (_vacant!2385 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9121 0))(
  ( (Cell!9122 (v!27975 LongMapFixedSize!4648)) )
))
(declare-datatypes ((MutLongMap!2324 0))(
  ( (LongMap!2324 (underlying!4843 Cell!9121)) (MutLongMapExt!2323 (__x!15148 Int)) )
))
(declare-datatypes ((Cell!9123 0))(
  ( (Cell!9124 (v!27976 MutLongMap!2324)) )
))
(declare-datatypes ((Hashable!2238 0))(
  ( (HashableExt!2237 (__x!15149 Int)) )
))
(declare-datatypes ((MutableMap!2238 0))(
  ( (MutableMapExt!2237 (__x!15150 Int)) (HashMap!2238 (underlying!4844 Cell!9123) (hashF!4161 Hashable!2238) (_size!4700 (_ BitVec 32)) (defaultValue!2400 Int)) )
))
(declare-datatypes ((CacheDown!1536 0))(
  ( (CacheDown!1537 (cache!2619 MutableMap!2238)) )
))
(declare-fun cacheDown!1197 () CacheDown!1536)

(declare-fun valid!1835 (CacheDown!1536) Bool)

(assert (=> b!2111888 (= res!917090 (valid!1835 cacheDown!1197))))

(declare-fun mapNonEmpty!11198 () Bool)

(declare-fun mapRes!11198 () Bool)

(declare-fun tp!643187 () Bool)

(declare-fun tp!643179 () Bool)

(assert (=> mapNonEmpty!11198 (= mapRes!11198 (and tp!643187 tp!643179))))

(declare-fun mapValue!11199 () List!23534)

(declare-fun mapRest!11198 () (Array (_ BitVec 32) List!23534))

(declare-fun mapKey!11199 () (_ BitVec 32))

(assert (=> mapNonEmpty!11198 (= (arr!3559 (_values!2604 (v!27975 (underlying!4843 (v!27976 (underlying!4844 (cache!2619 cacheDown!1197))))))) (store mapRest!11198 mapKey!11199 mapValue!11199))))

(declare-fun b!2111889 () Bool)

(declare-fun e!1343462 () Bool)

(declare-fun e!1343458 () Bool)

(assert (=> b!2111889 (= e!1343462 e!1343458)))

(declare-datatypes ((List!23535 0))(
  ( (Nil!23451) (Cons!23451 (h!28852 C!11372) (t!196044 List!23535)) )
))
(declare-datatypes ((IArray!15517 0))(
  ( (IArray!15518 (innerList!7816 List!23535)) )
))
(declare-datatypes ((Conc!7756 0))(
  ( (Node!7756 (left!18217 Conc!7756) (right!18547 Conc!7756) (csize!15742 Int) (cheight!7967 Int)) (Leaf!11330 (xs!10698 IArray!15517) (csize!15743 Int)) (Empty!7756) )
))
(declare-datatypes ((BalanceConc!15274 0))(
  ( (BalanceConc!15275 (c!339154 Conc!7756)) )
))
(declare-fun input!6603 () BalanceConc!15274)

(declare-datatypes ((tuple2!22848 0))(
  ( (tuple2!22849 (_1!13236 BalanceConc!15274) (_2!13236 BalanceConc!15274)) )
))
(declare-fun lt!792570 () tuple2!22848)

(declare-fun b!2111890 () Bool)

(declare-fun totalInput!1248 () BalanceConc!15274)

(declare-fun r!15329 () Regex!5613)

(declare-fun e!1343447 () Bool)

(declare-fun findLongestMatchWithZipperSequenceV2!73 (Regex!5613 BalanceConc!15274 BalanceConc!15274) tuple2!22848)

(assert (=> b!2111890 (= e!1343447 (= (findLongestMatchWithZipperSequenceV2!73 r!15329 input!6603 totalInput!1248) lt!792570))))

(declare-fun e!1343468 () Bool)

(declare-fun e!1343463 () Bool)

(assert (=> b!2111891 (= e!1343468 (and e!1343463 tp!643197))))

(declare-fun res!917083 () Bool)

(assert (=> start!206456 (=> (not res!917083) (not e!1343464))))

(declare-fun validRegex!2212 (Regex!5613) Bool)

(assert (=> start!206456 (= res!917083 (validRegex!2212 r!15329))))

(assert (=> start!206456 e!1343464))

(declare-fun e!1343469 () Bool)

(declare-fun inv!31027 (BalanceConc!15274) Bool)

(assert (=> start!206456 (and (inv!31027 input!6603) e!1343469)))

(declare-fun e!1343467 () Bool)

(declare-fun inv!31028 (CacheDown!1536) Bool)

(assert (=> start!206456 (and (inv!31028 cacheDown!1197) e!1343467)))

(declare-fun e!1343455 () Bool)

(assert (=> start!206456 e!1343455))

(declare-fun e!1343451 () Bool)

(assert (=> start!206456 (and (inv!31027 totalInput!1248) e!1343451)))

(declare-datatypes ((tuple2!22850 0))(
  ( (tuple2!22851 (_1!13237 Context!2366) (_2!13237 C!11372)) )
))
(declare-datatypes ((tuple2!22852 0))(
  ( (tuple2!22853 (_1!13238 tuple2!22850) (_2!13238 (InoxSet Context!2366))) )
))
(declare-datatypes ((List!23536 0))(
  ( (Nil!23452) (Cons!23452 (h!28853 tuple2!22852) (t!196045 List!23536)) )
))
(declare-datatypes ((array!8034 0))(
  ( (array!8035 (arr!3560 (Array (_ BitVec 32) List!23536)) (size!18305 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4650 0))(
  ( (LongMapFixedSize!4651 (defaultEntry!2690 Int) (mask!6447 (_ BitVec 32)) (extraKeys!2573 (_ BitVec 32)) (zeroValue!2583 List!23536) (minValue!2583 List!23536) (_size!4701 (_ BitVec 32)) (_keys!2622 array!8030) (_values!2605 array!8034) (_vacant!2386 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9125 0))(
  ( (Cell!9126 (v!27977 LongMapFixedSize!4650)) )
))
(declare-datatypes ((Hashable!2239 0))(
  ( (HashableExt!2238 (__x!15151 Int)) )
))
(declare-datatypes ((MutLongMap!2325 0))(
  ( (LongMap!2325 (underlying!4845 Cell!9125)) (MutLongMapExt!2324 (__x!15152 Int)) )
))
(declare-datatypes ((Cell!9127 0))(
  ( (Cell!9128 (v!27978 MutLongMap!2325)) )
))
(declare-datatypes ((MutableMap!2239 0))(
  ( (MutableMapExt!2238 (__x!15153 Int)) (HashMap!2239 (underlying!4846 Cell!9127) (hashF!4162 Hashable!2239) (_size!4702 (_ BitVec 32)) (defaultValue!2401 Int)) )
))
(declare-datatypes ((CacheUp!1534 0))(
  ( (CacheUp!1535 (cache!2620 MutableMap!2239)) )
))
(declare-fun cacheUp!1078 () CacheUp!1534)

(declare-fun e!1343446 () Bool)

(declare-fun inv!31029 (CacheUp!1534) Bool)

(assert (=> start!206456 (and (inv!31029 cacheUp!1078) e!1343446)))

(declare-fun b!2111892 () Bool)

(declare-fun e!1343456 () Bool)

(declare-fun tp!643182 () Bool)

(declare-fun mapRes!11199 () Bool)

(assert (=> b!2111892 (= e!1343456 (and tp!643182 mapRes!11199))))

(declare-fun condMapEmpty!11198 () Bool)

(declare-fun mapDefault!11199 () List!23536)

(assert (=> b!2111892 (= condMapEmpty!11198 (= (arr!3560 (_values!2605 (v!27977 (underlying!4845 (v!27978 (underlying!4846 (cache!2620 cacheUp!1078))))))) ((as const (Array (_ BitVec 32) List!23536)) mapDefault!11199)))))

(declare-fun b!2111893 () Bool)

(declare-fun tp_is_empty!9415 () Bool)

(assert (=> b!2111893 (= e!1343455 tp_is_empty!9415)))

(declare-fun e!1343459 () Bool)

(declare-fun tp!643195 () Bool)

(declare-fun tp!643186 () Bool)

(declare-fun array_inv!2559 (array!8030) Bool)

(declare-fun array_inv!2560 (array!8034) Bool)

(assert (=> b!2111894 (= e!1343459 (and tp!643190 tp!643186 tp!643195 (array_inv!2559 (_keys!2622 (v!27977 (underlying!4845 (v!27978 (underlying!4846 (cache!2620 cacheUp!1078))))))) (array_inv!2560 (_values!2605 (v!27977 (underlying!4845 (v!27978 (underlying!4846 (cache!2620 cacheUp!1078))))))) e!1343456))))

(declare-fun b!2111895 () Bool)

(declare-fun e!1343466 () Bool)

(declare-datatypes ((tuple2!22854 0))(
  ( (tuple2!22855 (_1!13239 List!23535) (_2!13239 List!23535)) )
))
(declare-fun lt!792566 () tuple2!22854)

(declare-fun list!9483 (BalanceConc!15274) List!23535)

(assert (=> b!2111895 (= e!1343466 (= (list!9483 (_2!13236 lt!792570)) (_2!13239 lt!792566)))))

(declare-fun b!2111896 () Bool)

(declare-fun tp!643192 () Bool)

(declare-fun inv!31030 (Conc!7756) Bool)

(assert (=> b!2111896 (= e!1343451 (and (inv!31030 (c!339154 totalInput!1248)) tp!643192))))

(declare-fun b!2111897 () Bool)

(declare-fun e!1343449 () Bool)

(assert (=> b!2111897 (= e!1343449 e!1343462)))

(declare-fun b!2111898 () Bool)

(declare-fun e!1343461 () Bool)

(declare-fun tp!643194 () Bool)

(assert (=> b!2111898 (= e!1343461 (and tp!643194 mapRes!11198))))

(declare-fun condMapEmpty!11199 () Bool)

(declare-fun mapDefault!11198 () List!23534)

(assert (=> b!2111898 (= condMapEmpty!11199 (= (arr!3559 (_values!2604 (v!27975 (underlying!4843 (v!27976 (underlying!4844 (cache!2619 cacheDown!1197))))))) ((as const (Array (_ BitVec 32) List!23534)) mapDefault!11198)))))

(declare-fun b!2111899 () Bool)

(declare-fun e!1343448 () Bool)

(declare-fun e!1343450 () Bool)

(assert (=> b!2111899 (= e!1343448 e!1343450)))

(declare-fun b!2111900 () Bool)

(declare-fun e!1343453 () Bool)

(assert (=> b!2111900 (= e!1343464 e!1343453)))

(declare-fun res!917082 () Bool)

(assert (=> b!2111900 (=> (not res!917082) (not e!1343453))))

(declare-fun lt!792565 () List!23535)

(declare-fun isSuffix!586 (List!23535 List!23535) Bool)

(assert (=> b!2111900 (= res!917082 (isSuffix!586 lt!792565 (list!9483 totalInput!1248)))))

(assert (=> b!2111900 (= lt!792565 (list!9483 input!6603))))

(declare-fun b!2111901 () Bool)

(declare-fun tp!643189 () Bool)

(declare-fun tp!643181 () Bool)

(assert (=> b!2111901 (= e!1343455 (and tp!643189 tp!643181))))

(declare-fun b!2111902 () Bool)

(declare-fun tp!643184 () Bool)

(declare-fun tp!643193 () Bool)

(assert (=> b!2111902 (= e!1343455 (and tp!643184 tp!643193))))

(declare-fun b!2111903 () Bool)

(declare-fun tp!643196 () Bool)

(assert (=> b!2111903 (= e!1343455 tp!643196)))

(declare-fun b!2111904 () Bool)

(assert (=> b!2111904 (= e!1343450 e!1343459)))

(declare-fun b!2111905 () Bool)

(declare-fun res!917086 () Bool)

(declare-fun e!1343460 () Bool)

(assert (=> b!2111905 (=> (not res!917086) (not e!1343460))))

(declare-datatypes ((tuple3!2696 0))(
  ( (tuple3!2697 (_1!13240 Int) (_2!13240 CacheUp!1534) (_3!1812 CacheDown!1536)) )
))
(declare-fun lt!792571 () tuple3!2696)

(assert (=> b!2111905 (= res!917086 (valid!1835 (_3!1812 lt!792571)))))

(declare-fun b!2111906 () Bool)

(assert (=> b!2111906 (= e!1343453 (not true))))

(assert (=> b!2111906 e!1343460))

(declare-fun res!917089 () Bool)

(assert (=> b!2111906 (=> (not res!917089) (not e!1343460))))

(declare-fun lt!792567 () Int)

(declare-fun lt!792568 () Int)

(declare-fun lt!792564 () (InoxSet Context!2366))

(declare-fun findLongestMatchInnerZipperFastV2!1 ((InoxSet Context!2366) Int BalanceConc!15274 Int) Int)

(assert (=> b!2111906 (= res!917089 (= (_1!13240 lt!792571) (findLongestMatchInnerZipperFastV2!1 lt!792564 lt!792567 totalInput!1248 lt!792568)))))

(declare-fun findLongestMatchInnerZipperFastV2MemOnlyDeriv!1 ((InoxSet Context!2366) Int BalanceConc!15274 Int CacheUp!1534 CacheDown!1536) tuple3!2696)

(assert (=> b!2111906 (= lt!792571 (findLongestMatchInnerZipperFastV2MemOnlyDeriv!1 lt!792564 lt!792567 totalInput!1248 lt!792568 cacheUp!1078 cacheDown!1197))))

(declare-fun size!18306 (BalanceConc!15274) Int)

(assert (=> b!2111906 (= lt!792567 (- lt!792568 (size!18306 input!6603)))))

(assert (=> b!2111906 (= lt!792568 (size!18306 totalInput!1248))))

(declare-fun e!1343457 () Bool)

(assert (=> b!2111906 e!1343457))

(declare-fun res!917080 () Bool)

(assert (=> b!2111906 (=> (not res!917080) (not e!1343457))))

(declare-datatypes ((tuple3!2698 0))(
  ( (tuple3!2699 (_1!13241 tuple2!22848) (_2!13241 CacheUp!1534) (_3!1813 CacheDown!1536)) )
))
(declare-fun lt!792569 () tuple3!2698)

(assert (=> b!2111906 (= res!917080 (= (_1!13241 lt!792569) lt!792570))))

(declare-fun findLongestMatchZipperFastV2MemOnlyDeriv!2 ((InoxSet Context!2366) BalanceConc!15274 BalanceConc!15274 CacheUp!1534 CacheDown!1536) tuple3!2698)

(assert (=> b!2111906 (= lt!792569 (findLongestMatchZipperFastV2MemOnlyDeriv!2 lt!792564 input!6603 totalInput!1248 cacheUp!1078 cacheDown!1197))))

(assert (=> b!2111906 e!1343447))

(declare-fun res!917081 () Bool)

(assert (=> b!2111906 (=> (not res!917081) (not e!1343447))))

(declare-fun sizeTr!88 (List!23535 Int) Int)

(declare-fun size!18307 (List!23535) Int)

(assert (=> b!2111906 (= res!917081 (= (sizeTr!88 lt!792565 0) (size!18307 lt!792565)))))

(declare-datatypes ((Unit!37522 0))(
  ( (Unit!37523) )
))
(declare-fun lt!792562 () Unit!37522)

(declare-fun lemmaSizeTrEqualsSize!88 (List!23535 Int) Unit!37522)

(assert (=> b!2111906 (= lt!792562 (lemmaSizeTrEqualsSize!88 lt!792565 0))))

(assert (=> b!2111906 e!1343466))

(declare-fun res!917084 () Bool)

(assert (=> b!2111906 (=> (not res!917084) (not e!1343466))))

(assert (=> b!2111906 (= res!917084 (= (list!9483 (_1!13236 lt!792570)) (_1!13239 lt!792566)))))

(declare-fun findLongestMatch!505 (Regex!5613 List!23535) tuple2!22854)

(assert (=> b!2111906 (= lt!792566 (findLongestMatch!505 r!15329 lt!792565))))

(declare-fun findLongestMatchZipperFastV2!4 ((InoxSet Context!2366) BalanceConc!15274 BalanceConc!15274) tuple2!22848)

(assert (=> b!2111906 (= lt!792570 (findLongestMatchZipperFastV2!4 lt!792564 input!6603 totalInput!1248))))

(declare-fun lt!792563 () Unit!37522)

(declare-fun longestMatchV2SameAsRegex!4 (Regex!5613 (InoxSet Context!2366) BalanceConc!15274 BalanceConc!15274) Unit!37522)

(assert (=> b!2111906 (= lt!792563 (longestMatchV2SameAsRegex!4 r!15329 lt!792564 input!6603 totalInput!1248))))

(declare-fun focus!260 (Regex!5613) (InoxSet Context!2366))

(assert (=> b!2111906 (= lt!792564 (focus!260 r!15329))))

(declare-fun b!2111907 () Bool)

(declare-fun res!917085 () Bool)

(assert (=> b!2111907 (=> (not res!917085) (not e!1343464))))

(declare-fun valid!1836 (CacheUp!1534) Bool)

(assert (=> b!2111907 (= res!917085 (valid!1836 cacheUp!1078))))

(declare-fun mapIsEmpty!11198 () Bool)

(assert (=> mapIsEmpty!11198 mapRes!11198))

(declare-fun b!2111908 () Bool)

(declare-fun splitAt!6 (BalanceConc!15274 Int) tuple2!22848)

(assert (=> b!2111908 (= e!1343460 (= lt!792569 (tuple3!2699 (splitAt!6 input!6603 (_1!13240 lt!792571)) (_2!13240 lt!792571) (_3!1812 lt!792571))))))

(declare-fun e!1343452 () Bool)

(declare-fun e!1343454 () Bool)

(assert (=> b!2111909 (= e!1343452 (and e!1343454 tp!643180))))

(declare-fun b!2111910 () Bool)

(assert (=> b!2111910 (= e!1343467 e!1343468)))

(declare-fun b!2111911 () Bool)

(declare-fun lt!792561 () MutLongMap!2325)

(get-info :version)

(assert (=> b!2111911 (= e!1343454 (and e!1343448 ((_ is LongMap!2325) lt!792561)))))

(assert (=> b!2111911 (= lt!792561 (v!27978 (underlying!4846 (cache!2620 cacheUp!1078))))))

(declare-fun mapIsEmpty!11199 () Bool)

(assert (=> mapIsEmpty!11199 mapRes!11199))

(declare-fun b!2111912 () Bool)

(declare-fun tp!643191 () Bool)

(assert (=> b!2111912 (= e!1343469 (and (inv!31030 (c!339154 input!6603)) tp!643191))))

(declare-fun b!2111913 () Bool)

(declare-fun lt!792572 () MutLongMap!2324)

(assert (=> b!2111913 (= e!1343463 (and e!1343449 ((_ is LongMap!2324) lt!792572)))))

(assert (=> b!2111913 (= lt!792572 (v!27976 (underlying!4844 (cache!2619 cacheDown!1197))))))

(declare-fun b!2111914 () Bool)

(assert (=> b!2111914 (= e!1343446 e!1343452)))

(declare-fun b!2111915 () Bool)

(assert (=> b!2111915 (= e!1343457 (valid!1835 (_3!1813 lt!792569)))))

(declare-fun b!2111916 () Bool)

(declare-fun res!917088 () Bool)

(assert (=> b!2111916 (=> (not res!917088) (not e!1343460))))

(assert (=> b!2111916 (= res!917088 (valid!1836 (_2!13240 lt!792571)))))

(declare-fun tp!643183 () Bool)

(declare-fun tp!643185 () Bool)

(declare-fun array_inv!2561 (array!8032) Bool)

(assert (=> b!2111917 (= e!1343458 (and tp!643188 tp!643183 tp!643185 (array_inv!2559 (_keys!2621 (v!27975 (underlying!4843 (v!27976 (underlying!4844 (cache!2619 cacheDown!1197))))))) (array_inv!2561 (_values!2604 (v!27975 (underlying!4843 (v!27976 (underlying!4844 (cache!2619 cacheDown!1197))))))) e!1343461))))

(declare-fun b!2111918 () Bool)

(declare-fun res!917087 () Bool)

(assert (=> b!2111918 (=> (not res!917087) (not e!1343457))))

(assert (=> b!2111918 (= res!917087 (valid!1836 (_2!13241 lt!792569)))))

(declare-fun mapNonEmpty!11199 () Bool)

(declare-fun tp!643199 () Bool)

(declare-fun tp!643198 () Bool)

(assert (=> mapNonEmpty!11199 (= mapRes!11199 (and tp!643199 tp!643198))))

(declare-fun mapKey!11198 () (_ BitVec 32))

(declare-fun mapRest!11199 () (Array (_ BitVec 32) List!23536))

(declare-fun mapValue!11198 () List!23536)

(assert (=> mapNonEmpty!11199 (= (arr!3560 (_values!2605 (v!27977 (underlying!4845 (v!27978 (underlying!4846 (cache!2620 cacheUp!1078))))))) (store mapRest!11199 mapKey!11198 mapValue!11198))))

(assert (= (and start!206456 res!917083) b!2111907))

(assert (= (and b!2111907 res!917085) b!2111888))

(assert (= (and b!2111888 res!917090) b!2111900))

(assert (= (and b!2111900 res!917082) b!2111906))

(assert (= (and b!2111906 res!917084) b!2111895))

(assert (= (and b!2111906 res!917081) b!2111890))

(assert (= (and b!2111906 res!917080) b!2111918))

(assert (= (and b!2111918 res!917087) b!2111915))

(assert (= (and b!2111906 res!917089) b!2111916))

(assert (= (and b!2111916 res!917088) b!2111905))

(assert (= (and b!2111905 res!917086) b!2111908))

(assert (= start!206456 b!2111912))

(assert (= (and b!2111898 condMapEmpty!11199) mapIsEmpty!11198))

(assert (= (and b!2111898 (not condMapEmpty!11199)) mapNonEmpty!11198))

(assert (= b!2111917 b!2111898))

(assert (= b!2111889 b!2111917))

(assert (= b!2111897 b!2111889))

(assert (= (and b!2111913 ((_ is LongMap!2324) (v!27976 (underlying!4844 (cache!2619 cacheDown!1197))))) b!2111897))

(assert (= b!2111891 b!2111913))

(assert (= (and b!2111910 ((_ is HashMap!2238) (cache!2619 cacheDown!1197))) b!2111891))

(assert (= start!206456 b!2111910))

(assert (= (and start!206456 ((_ is ElementMatch!5613) r!15329)) b!2111893))

(assert (= (and start!206456 ((_ is Concat!9915) r!15329)) b!2111901))

(assert (= (and start!206456 ((_ is Star!5613) r!15329)) b!2111903))

(assert (= (and start!206456 ((_ is Union!5613) r!15329)) b!2111902))

(assert (= start!206456 b!2111896))

(assert (= (and b!2111892 condMapEmpty!11198) mapIsEmpty!11199))

(assert (= (and b!2111892 (not condMapEmpty!11198)) mapNonEmpty!11199))

(assert (= b!2111894 b!2111892))

(assert (= b!2111904 b!2111894))

(assert (= b!2111899 b!2111904))

(assert (= (and b!2111911 ((_ is LongMap!2325) (v!27978 (underlying!4846 (cache!2620 cacheUp!1078))))) b!2111899))

(assert (= b!2111909 b!2111911))

(assert (= (and b!2111914 ((_ is HashMap!2239) (cache!2620 cacheUp!1078))) b!2111909))

(assert (= start!206456 b!2111914))

(declare-fun m!2568581 () Bool)

(assert (=> b!2111896 m!2568581))

(declare-fun m!2568583 () Bool)

(assert (=> b!2111915 m!2568583))

(declare-fun m!2568585 () Bool)

(assert (=> b!2111894 m!2568585))

(declare-fun m!2568587 () Bool)

(assert (=> b!2111894 m!2568587))

(declare-fun m!2568589 () Bool)

(assert (=> b!2111907 m!2568589))

(declare-fun m!2568591 () Bool)

(assert (=> b!2111905 m!2568591))

(declare-fun m!2568593 () Bool)

(assert (=> b!2111908 m!2568593))

(declare-fun m!2568595 () Bool)

(assert (=> start!206456 m!2568595))

(declare-fun m!2568597 () Bool)

(assert (=> start!206456 m!2568597))

(declare-fun m!2568599 () Bool)

(assert (=> start!206456 m!2568599))

(declare-fun m!2568601 () Bool)

(assert (=> start!206456 m!2568601))

(declare-fun m!2568603 () Bool)

(assert (=> start!206456 m!2568603))

(declare-fun m!2568605 () Bool)

(assert (=> b!2111900 m!2568605))

(assert (=> b!2111900 m!2568605))

(declare-fun m!2568607 () Bool)

(assert (=> b!2111900 m!2568607))

(declare-fun m!2568609 () Bool)

(assert (=> b!2111900 m!2568609))

(declare-fun m!2568611 () Bool)

(assert (=> b!2111918 m!2568611))

(declare-fun m!2568613 () Bool)

(assert (=> b!2111888 m!2568613))

(declare-fun m!2568615 () Bool)

(assert (=> b!2111912 m!2568615))

(declare-fun m!2568617 () Bool)

(assert (=> b!2111890 m!2568617))

(declare-fun m!2568619 () Bool)

(assert (=> mapNonEmpty!11198 m!2568619))

(declare-fun m!2568621 () Bool)

(assert (=> b!2111895 m!2568621))

(declare-fun m!2568623 () Bool)

(assert (=> b!2111906 m!2568623))

(declare-fun m!2568625 () Bool)

(assert (=> b!2111906 m!2568625))

(declare-fun m!2568627 () Bool)

(assert (=> b!2111906 m!2568627))

(declare-fun m!2568629 () Bool)

(assert (=> b!2111906 m!2568629))

(declare-fun m!2568631 () Bool)

(assert (=> b!2111906 m!2568631))

(declare-fun m!2568633 () Bool)

(assert (=> b!2111906 m!2568633))

(declare-fun m!2568635 () Bool)

(assert (=> b!2111906 m!2568635))

(declare-fun m!2568637 () Bool)

(assert (=> b!2111906 m!2568637))

(declare-fun m!2568639 () Bool)

(assert (=> b!2111906 m!2568639))

(declare-fun m!2568641 () Bool)

(assert (=> b!2111906 m!2568641))

(declare-fun m!2568643 () Bool)

(assert (=> b!2111906 m!2568643))

(declare-fun m!2568645 () Bool)

(assert (=> b!2111906 m!2568645))

(declare-fun m!2568647 () Bool)

(assert (=> b!2111906 m!2568647))

(declare-fun m!2568649 () Bool)

(assert (=> b!2111916 m!2568649))

(declare-fun m!2568651 () Bool)

(assert (=> mapNonEmpty!11199 m!2568651))

(declare-fun m!2568653 () Bool)

(assert (=> b!2111917 m!2568653))

(declare-fun m!2568655 () Bool)

(assert (=> b!2111917 m!2568655))

(check-sat (not b!2111892) (not b!2111890) (not b_next!61755) (not b!2111908) (not start!206456) b_and!170635 (not b!2111894) b_and!170629 (not b!2111906) (not b!2111902) (not b!2111895) (not b!2111900) (not b!2111907) (not b!2111918) b_and!170633 (not b!2111903) tp_is_empty!9415 (not b!2111916) (not mapNonEmpty!11199) (not b!2111917) (not mapNonEmpty!11198) (not b!2111896) (not b!2111888) (not b!2111905) (not b!2111898) (not b!2111901) b_and!170631 (not b_next!61753) (not b_next!61757) (not b_next!61759) (not b!2111915) (not b!2111912))
(check-sat b_and!170633 (not b_next!61755) b_and!170635 b_and!170629 b_and!170631 (not b_next!61753) (not b_next!61757) (not b_next!61759))
