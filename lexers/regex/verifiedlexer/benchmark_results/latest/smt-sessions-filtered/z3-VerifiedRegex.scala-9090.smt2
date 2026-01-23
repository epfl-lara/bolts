; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486662 () Bool)

(assert start!486662)

(declare-fun b!4758898 () Bool)

(declare-fun b_free!129271 () Bool)

(declare-fun b_next!129975 () Bool)

(assert (=> b!4758898 (= b_free!129271 (not b_next!129975))))

(declare-fun tp!1352439 () Bool)

(declare-fun b_and!340879 () Bool)

(assert (=> b!4758898 (= tp!1352439 b_and!340879)))

(declare-fun b!4758909 () Bool)

(declare-fun b_free!129273 () Bool)

(declare-fun b_next!129977 () Bool)

(assert (=> b!4758909 (= b_free!129273 (not b_next!129977))))

(declare-fun tp!1352438 () Bool)

(declare-fun b_and!340881 () Bool)

(assert (=> b!4758909 (= tp!1352438 b_and!340881)))

(declare-fun b!4758903 () Bool)

(assert (=> b!4758903 true))

(declare-fun b!4758897 () Bool)

(declare-fun res!2018701 () Bool)

(declare-fun e!2969352 () Bool)

(assert (=> b!4758897 (=> (not res!2018701) (not e!2969352))))

(declare-datatypes ((C!26272 0))(
  ( (C!26273 (val!20124 Int)) )
))
(declare-datatypes ((Regex!13037 0))(
  ( (ElementMatch!13037 (c!811951 C!26272)) (Concat!21356 (regOne!26586 Regex!13037) (regTwo!26586 Regex!13037)) (EmptyExpr!13037) (Star!13037 (reg!13366 Regex!13037)) (EmptyLang!13037) (Union!13037 (regOne!26587 Regex!13037) (regTwo!26587 Regex!13037)) )
))
(declare-datatypes ((List!53419 0))(
  ( (Nil!53295) (Cons!53295 (h!59706 Regex!13037) (t!360771 List!53419)) )
))
(declare-datatypes ((Context!5854 0))(
  ( (Context!5855 (exprs!3427 List!53419)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55208 0))(
  ( (tuple2!55209 (_1!30898 (InoxSet Context!5854)) (_2!30898 Int)) )
))
(declare-datatypes ((tuple2!55210 0))(
  ( (tuple2!55211 (_1!30899 tuple2!55208) (_2!30899 Int)) )
))
(declare-datatypes ((List!53420 0))(
  ( (Nil!53296) (Cons!53296 (h!59707 tuple2!55210) (t!360772 List!53420)) )
))
(declare-datatypes ((List!53421 0))(
  ( (Nil!53297) (Cons!53297 (h!59708 C!26272) (t!360773 List!53421)) )
))
(declare-datatypes ((IArray!29017 0))(
  ( (IArray!29018 (innerList!14566 List!53421)) )
))
(declare-datatypes ((Conc!14478 0))(
  ( (Node!14478 (left!39086 Conc!14478) (right!39416 Conc!14478) (csize!29186 Int) (cheight!14689 Int)) (Leaf!23569 (xs!17784 IArray!29017) (csize!29187 Int)) (Empty!14478) )
))
(declare-datatypes ((Hashable!6500 0))(
  ( (HashableExt!6499 (__x!32265 Int)) )
))
(declare-datatypes ((array!17624 0))(
  ( (array!17625 (arr!7863 (Array (_ BitVec 32) (_ BitVec 64))) (size!36074 (_ BitVec 32))) )
))
(declare-datatypes ((array!17626 0))(
  ( (array!17627 (arr!7864 (Array (_ BitVec 32) List!53420)) (size!36075 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9678 0))(
  ( (LongMapFixedSize!9679 (defaultEntry!5253 Int) (mask!14544 (_ BitVec 32)) (extraKeys!5109 (_ BitVec 32)) (zeroValue!5122 List!53420) (minValue!5122 List!53420) (_size!9703 (_ BitVec 32)) (_keys!5174 array!17624) (_values!5147 array!17626) (_vacant!4904 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19121 0))(
  ( (Cell!19122 (v!47352 LongMapFixedSize!9678)) )
))
(declare-datatypes ((MutLongMap!4839 0))(
  ( (LongMap!4839 (underlying!9885 Cell!19121)) (MutLongMapExt!4838 (__x!32266 Int)) )
))
(declare-datatypes ((Cell!19123 0))(
  ( (Cell!19124 (v!47353 MutLongMap!4839)) )
))
(declare-datatypes ((MutableMap!4723 0))(
  ( (MutableMapExt!4722 (__x!32267 Int)) (HashMap!4723 (underlying!9886 Cell!19123) (hashF!12310 Hashable!6500) (_size!9704 (_ BitVec 32)) (defaultValue!4894 Int)) )
))
(declare-datatypes ((BalanceConc!28446 0))(
  ( (BalanceConc!28447 (c!811952 Conc!14478)) )
))
(declare-datatypes ((CacheFindLongestMatch!644 0))(
  ( (CacheFindLongestMatch!645 (cache!4565 MutableMap!4723) (totalInput!4478 BalanceConc!28446)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!644)

(declare-fun validCacheMapFindLongestMatch!122 (MutableMap!4723 BalanceConc!28446) Bool)

(assert (=> b!4758897 (= res!2018701 (validCacheMapFindLongestMatch!122 (cache!4565 thiss!28909) (totalInput!4478 thiss!28909)))))

(declare-fun e!2969345 () Bool)

(declare-fun e!2969341 () Bool)

(assert (=> b!4758898 (= e!2969345 (and e!2969341 tp!1352439))))

(declare-fun setIsEmpty!27049 () Bool)

(declare-fun setRes!27049 () Bool)

(assert (=> setIsEmpty!27049 setRes!27049))

(declare-fun b!4758899 () Bool)

(declare-fun e!2969340 () Bool)

(declare-fun tp!1352440 () Bool)

(declare-fun inv!68774 (Conc!14478) Bool)

(assert (=> b!4758899 (= e!2969340 (and (inv!68774 (c!811952 (totalInput!4478 thiss!28909))) tp!1352440))))

(declare-fun b!4758900 () Bool)

(declare-fun e!2969348 () Bool)

(declare-fun tp!1352447 () Bool)

(assert (=> b!4758900 (= e!2969348 tp!1352447)))

(declare-fun b!4758901 () Bool)

(declare-fun e!2969350 () Bool)

(declare-fun e!2969344 () Bool)

(assert (=> b!4758901 (= e!2969350 e!2969344)))

(declare-fun mapIsEmpty!21521 () Bool)

(declare-fun mapRes!21521 () Bool)

(assert (=> mapIsEmpty!21521 mapRes!21521))

(declare-fun b!4758902 () Bool)

(declare-fun e!2969343 () Bool)

(assert (=> b!4758902 (= e!2969352 (not e!2969343))))

(declare-fun res!2018700 () Bool)

(assert (=> b!4758902 (=> res!2018700 e!2969343)))

(declare-fun lt!1923967 () tuple2!55208)

(declare-fun contains!16628 (MutableMap!4723 tuple2!55208) Bool)

(assert (=> b!4758902 (= res!2018700 (not (contains!16628 (cache!4565 thiss!28909) lt!1923967)))))

(declare-fun z!482 () (InoxSet Context!5854))

(declare-fun from!922 () Int)

(assert (=> b!4758902 (= lt!1923967 (tuple2!55209 z!482 from!922))))

(declare-fun localTotalInput!8 () BalanceConc!28446)

(assert (=> b!4758902 (validCacheMapFindLongestMatch!122 (cache!4565 thiss!28909) localTotalInput!8)))

(declare-fun res!2018702 () Bool)

(assert (=> start!486662 (=> (not res!2018702) (not e!2969352))))

(assert (=> start!486662 (= res!2018702 (= localTotalInput!8 (totalInput!4478 thiss!28909)))))

(assert (=> start!486662 e!2969352))

(declare-fun e!2969342 () Bool)

(declare-fun inv!68775 (BalanceConc!28446) Bool)

(assert (=> start!486662 (and (inv!68775 localTotalInput!8) e!2969342)))

(declare-fun e!2969349 () Bool)

(declare-fun inv!68776 (CacheFindLongestMatch!644) Bool)

(assert (=> start!486662 (and (inv!68776 thiss!28909) e!2969349)))

(assert (=> start!486662 true))

(declare-fun condSetEmpty!27049 () Bool)

(assert (=> start!486662 (= condSetEmpty!27049 (= z!482 ((as const (Array Context!5854 Bool)) false)))))

(assert (=> start!486662 setRes!27049))

(get-info :version)

(assert (=> b!4758903 (= e!2969343 ((_ is HashMap!4723) (cache!4565 thiss!28909)))))

(declare-fun validCacheMapFindLongestMatchBody!15 (tuple2!55210 BalanceConc!28446) Bool)

(declare-fun apply!12517 (MutableMap!4723 tuple2!55208) Int)

(assert (=> b!4758903 (validCacheMapFindLongestMatchBody!15 (tuple2!55211 lt!1923967 (apply!12517 (cache!4565 thiss!28909) lt!1923967)) localTotalInput!8)))

(declare-datatypes ((Unit!137760 0))(
  ( (Unit!137761) )
))
(declare-fun lt!1923968 () Unit!137760)

(declare-fun lambda!223630 () Int)

(declare-fun lemmaForallPairsThenForLookup!62 (MutableMap!4723 tuple2!55208 Int) Unit!137760)

(assert (=> b!4758903 (= lt!1923968 (lemmaForallPairsThenForLookup!62 (cache!4565 thiss!28909) lt!1923967 lambda!223630))))

(declare-fun b!4758904 () Bool)

(declare-fun e!2969351 () Bool)

(assert (=> b!4758904 (= e!2969344 e!2969351)))

(declare-fun b!4758905 () Bool)

(declare-fun e!2969346 () Bool)

(declare-fun tp!1352443 () Bool)

(assert (=> b!4758905 (= e!2969346 (and tp!1352443 mapRes!21521))))

(declare-fun condMapEmpty!21521 () Bool)

(declare-fun mapDefault!21521 () List!53420)

(assert (=> b!4758905 (= condMapEmpty!21521 (= (arr!7864 (_values!5147 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53420)) mapDefault!21521)))))

(declare-fun b!4758906 () Bool)

(declare-fun lt!1923966 () MutLongMap!4839)

(assert (=> b!4758906 (= e!2969341 (and e!2969350 ((_ is LongMap!4839) lt!1923966)))))

(assert (=> b!4758906 (= lt!1923966 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))

(declare-fun b!4758907 () Bool)

(assert (=> b!4758907 (= e!2969349 (and e!2969345 (inv!68775 (totalInput!4478 thiss!28909)) e!2969340))))

(declare-fun b!4758908 () Bool)

(declare-fun tp!1352446 () Bool)

(assert (=> b!4758908 (= e!2969342 (and (inv!68774 (c!811952 localTotalInput!8)) tp!1352446))))

(declare-fun tp!1352441 () Bool)

(declare-fun tp!1352444 () Bool)

(declare-fun array_inv!5657 (array!17624) Bool)

(declare-fun array_inv!5658 (array!17626) Bool)

(assert (=> b!4758909 (= e!2969351 (and tp!1352438 tp!1352444 tp!1352441 (array_inv!5657 (_keys!5174 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))) (array_inv!5658 (_values!5147 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))) e!2969346))))

(declare-fun tp!1352437 () Bool)

(declare-fun setElem!27049 () Context!5854)

(declare-fun setNonEmpty!27049 () Bool)

(declare-fun inv!68777 (Context!5854) Bool)

(assert (=> setNonEmpty!27049 (= setRes!27049 (and tp!1352437 (inv!68777 setElem!27049) e!2969348))))

(declare-fun setRest!27049 () (InoxSet Context!5854))

(assert (=> setNonEmpty!27049 (= z!482 ((_ map or) (store ((as const (Array Context!5854 Bool)) false) setElem!27049 true) setRest!27049))))

(declare-fun mapNonEmpty!21521 () Bool)

(declare-fun tp!1352445 () Bool)

(declare-fun tp!1352442 () Bool)

(assert (=> mapNonEmpty!21521 (= mapRes!21521 (and tp!1352445 tp!1352442))))

(declare-fun mapValue!21521 () List!53420)

(declare-fun mapRest!21521 () (Array (_ BitVec 32) List!53420))

(declare-fun mapKey!21521 () (_ BitVec 32))

(assert (=> mapNonEmpty!21521 (= (arr!7864 (_values!5147 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))) (store mapRest!21521 mapKey!21521 mapValue!21521))))

(assert (= (and start!486662 res!2018702) b!4758897))

(assert (= (and b!4758897 res!2018701) b!4758902))

(assert (= (and b!4758902 (not res!2018700)) b!4758903))

(assert (= start!486662 b!4758908))

(assert (= (and b!4758905 condMapEmpty!21521) mapIsEmpty!21521))

(assert (= (and b!4758905 (not condMapEmpty!21521)) mapNonEmpty!21521))

(assert (= b!4758909 b!4758905))

(assert (= b!4758904 b!4758909))

(assert (= b!4758901 b!4758904))

(assert (= (and b!4758906 ((_ is LongMap!4839) (v!47353 (underlying!9886 (cache!4565 thiss!28909))))) b!4758901))

(assert (= b!4758898 b!4758906))

(assert (= (and b!4758907 ((_ is HashMap!4723) (cache!4565 thiss!28909))) b!4758898))

(assert (= b!4758907 b!4758899))

(assert (= start!486662 b!4758907))

(assert (= (and start!486662 condSetEmpty!27049) setIsEmpty!27049))

(assert (= (and start!486662 (not condSetEmpty!27049)) setNonEmpty!27049))

(assert (= setNonEmpty!27049 b!4758900))

(declare-fun m!5728260 () Bool)

(assert (=> b!4758907 m!5728260))

(declare-fun m!5728262 () Bool)

(assert (=> b!4758903 m!5728262))

(declare-fun m!5728264 () Bool)

(assert (=> b!4758903 m!5728264))

(declare-fun m!5728266 () Bool)

(assert (=> b!4758903 m!5728266))

(declare-fun m!5728268 () Bool)

(assert (=> b!4758902 m!5728268))

(declare-fun m!5728270 () Bool)

(assert (=> b!4758902 m!5728270))

(declare-fun m!5728272 () Bool)

(assert (=> mapNonEmpty!21521 m!5728272))

(declare-fun m!5728274 () Bool)

(assert (=> setNonEmpty!27049 m!5728274))

(declare-fun m!5728276 () Bool)

(assert (=> b!4758908 m!5728276))

(declare-fun m!5728278 () Bool)

(assert (=> b!4758899 m!5728278))

(declare-fun m!5728280 () Bool)

(assert (=> b!4758909 m!5728280))

(declare-fun m!5728282 () Bool)

(assert (=> b!4758909 m!5728282))

(declare-fun m!5728284 () Bool)

(assert (=> start!486662 m!5728284))

(declare-fun m!5728286 () Bool)

(assert (=> start!486662 m!5728286))

(declare-fun m!5728288 () Bool)

(assert (=> b!4758897 m!5728288))

(check-sat (not b!4758900) b_and!340881 (not b!4758905) (not b!4758899) (not b!4758902) (not b!4758897) (not b!4758909) (not b!4758908) b_and!340879 (not setNonEmpty!27049) (not b!4758907) (not mapNonEmpty!21521) (not b_next!129975) (not b_next!129977) (not b!4758903) (not start!486662))
(check-sat b_and!340879 b_and!340881 (not b_next!129977) (not b_next!129975))
(get-model)

(declare-fun d!1521169 () Bool)

(declare-fun isBalanced!3904 (Conc!14478) Bool)

(assert (=> d!1521169 (= (inv!68775 (totalInput!4478 thiss!28909)) (isBalanced!3904 (c!811952 (totalInput!4478 thiss!28909))))))

(declare-fun bs!1147011 () Bool)

(assert (= bs!1147011 d!1521169))

(declare-fun m!5728290 () Bool)

(assert (=> bs!1147011 m!5728290))

(assert (=> b!4758907 d!1521169))

(declare-fun b!4758934 () Bool)

(declare-fun e!2969371 () Bool)

(declare-fun call!333634 () Bool)

(assert (=> b!4758934 (= e!2969371 call!333634)))

(declare-fun b!4758935 () Bool)

(declare-fun e!2969367 () Unit!137760)

(declare-fun e!2969369 () Unit!137760)

(assert (=> b!4758935 (= e!2969367 e!2969369)))

(declare-fun res!2018711 () Bool)

(declare-fun call!333637 () Bool)

(assert (=> b!4758935 (= res!2018711 call!333637)))

(declare-fun e!2969372 () Bool)

(assert (=> b!4758935 (=> (not res!2018711) (not e!2969372))))

(declare-fun c!811962 () Bool)

(assert (=> b!4758935 (= c!811962 e!2969372)))

(declare-fun b!4758936 () Bool)

(declare-fun lt!1924026 () Unit!137760)

(assert (=> b!4758936 (= e!2969367 lt!1924026)))

(declare-datatypes ((tuple2!55212 0))(
  ( (tuple2!55213 (_1!30900 (_ BitVec 64)) (_2!30900 List!53420)) )
))
(declare-datatypes ((List!53422 0))(
  ( (Nil!53298) (Cons!53298 (h!59709 tuple2!55212) (t!360776 List!53422)) )
))
(declare-datatypes ((ListLongMap!4595 0))(
  ( (ListLongMap!4596 (toList!6202 List!53422)) )
))
(declare-fun lt!1924021 () ListLongMap!4595)

(declare-fun call!333635 () ListLongMap!4595)

(assert (=> b!4758936 (= lt!1924021 call!333635)))

(declare-fun lemmaInGenericMapThenInLongMap!177 (ListLongMap!4595 tuple2!55208 Hashable!6500) Unit!137760)

(assert (=> b!4758936 (= lt!1924026 (lemmaInGenericMapThenInLongMap!177 lt!1924021 lt!1923967 (hashF!12310 (cache!4565 thiss!28909))))))

(declare-fun res!2018710 () Bool)

(assert (=> b!4758936 (= res!2018710 call!333637)))

(assert (=> b!4758936 (=> (not res!2018710) (not e!2969371))))

(assert (=> b!4758936 e!2969371))

(declare-fun lambda!223633 () Int)

(declare-fun lt!1924017 () (_ BitVec 64))

(declare-fun e!2969370 () Unit!137760)

(declare-fun b!4758937 () Bool)

(declare-fun forallContained!3823 (List!53422 Int tuple2!55212) Unit!137760)

(declare-fun map!11851 (MutLongMap!4839) ListLongMap!4595)

(declare-fun apply!12518 (MutLongMap!4839 (_ BitVec 64)) List!53420)

(assert (=> b!4758937 (= e!2969370 (forallContained!3823 (toList!6202 (map!11851 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))) lambda!223633 (tuple2!55213 lt!1924017 (apply!12518 (v!47353 (underlying!9886 (cache!4565 thiss!28909))) lt!1924017))))))

(declare-fun c!811964 () Bool)

(declare-fun contains!16629 (List!53422 tuple2!55212) Bool)

(assert (=> b!4758937 (= c!811964 (not (contains!16629 (toList!6202 (map!11851 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))) (tuple2!55213 lt!1924017 (apply!12518 (v!47353 (underlying!9886 (cache!4565 thiss!28909))) lt!1924017)))))))

(declare-fun lt!1924012 () Unit!137760)

(declare-fun e!2969368 () Unit!137760)

(assert (=> b!4758937 (= lt!1924012 e!2969368)))

(declare-fun bm!333629 () Bool)

(declare-datatypes ((Option!12586 0))(
  ( (None!12585) (Some!12585 (v!47354 tuple2!55210)) )
))
(declare-fun call!333638 () Option!12586)

(declare-fun isDefined!9768 (Option!12586) Bool)

(assert (=> bm!333629 (= call!333634 (isDefined!9768 call!333638))))

(declare-fun b!4758938 () Bool)

(assert (=> b!4758938 (= e!2969372 call!333634)))

(declare-fun b!4758939 () Bool)

(declare-fun Unit!137762 () Unit!137760)

(assert (=> b!4758939 (= e!2969368 Unit!137762)))

(declare-fun call!333636 () (_ BitVec 64))

(declare-fun bm!333630 () Bool)

(declare-fun c!811963 () Bool)

(declare-fun contains!16630 (ListLongMap!4595 (_ BitVec 64)) Bool)

(assert (=> bm!333630 (= call!333637 (contains!16630 (ite c!811963 lt!1924021 call!333635) call!333636))))

(declare-fun bm!333631 () Bool)

(declare-fun call!333639 () List!53420)

(declare-fun getPair!613 (List!53420 tuple2!55208) Option!12586)

(assert (=> bm!333631 (= call!333638 (getPair!613 call!333639 lt!1923967))))

(declare-fun b!4758940 () Bool)

(assert (=> b!4758940 false))

(declare-fun lt!1924014 () Unit!137760)

(declare-fun lt!1924019 () Unit!137760)

(assert (=> b!4758940 (= lt!1924014 lt!1924019)))

(declare-fun lt!1924010 () List!53422)

(declare-fun lt!1924025 () List!53420)

(assert (=> b!4758940 (contains!16629 lt!1924010 (tuple2!55213 lt!1924017 lt!1924025))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!891 (List!53422 (_ BitVec 64) List!53420) Unit!137760)

(assert (=> b!4758940 (= lt!1924019 (lemmaGetValueByKeyImpliesContainsTuple!891 lt!1924010 lt!1924017 lt!1924025))))

(assert (=> b!4758940 (= lt!1924025 (apply!12518 (v!47353 (underlying!9886 (cache!4565 thiss!28909))) lt!1924017))))

(assert (=> b!4758940 (= lt!1924010 (toList!6202 (map!11851 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))))

(declare-fun lt!1924028 () Unit!137760)

(declare-fun lt!1924022 () Unit!137760)

(assert (=> b!4758940 (= lt!1924028 lt!1924022)))

(declare-fun lt!1924013 () List!53422)

(declare-datatypes ((Option!12587 0))(
  ( (None!12586) (Some!12586 (v!47355 List!53420)) )
))
(declare-fun isDefined!9769 (Option!12587) Bool)

(declare-fun getValueByKey!2126 (List!53422 (_ BitVec 64)) Option!12587)

(assert (=> b!4758940 (isDefined!9769 (getValueByKey!2126 lt!1924013 lt!1924017))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1949 (List!53422 (_ BitVec 64)) Unit!137760)

(assert (=> b!4758940 (= lt!1924022 (lemmaContainsKeyImpliesGetValueByKeyDefined!1949 lt!1924013 lt!1924017))))

(assert (=> b!4758940 (= lt!1924013 (toList!6202 (map!11851 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))))

(declare-fun lt!1924009 () Unit!137760)

(declare-fun lt!1924020 () Unit!137760)

(assert (=> b!4758940 (= lt!1924009 lt!1924020)))

(declare-fun lt!1924023 () List!53422)

(declare-fun containsKey!3632 (List!53422 (_ BitVec 64)) Bool)

(assert (=> b!4758940 (containsKey!3632 lt!1924023 lt!1924017)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!178 (List!53422 (_ BitVec 64)) Unit!137760)

(assert (=> b!4758940 (= lt!1924020 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!178 lt!1924023 lt!1924017))))

(assert (=> b!4758940 (= lt!1924023 (toList!6202 (map!11851 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))))

(declare-fun Unit!137763 () Unit!137760)

(assert (=> b!4758940 (= e!2969368 Unit!137763)))

(declare-fun b!4758941 () Bool)

(declare-fun Unit!137764 () Unit!137760)

(assert (=> b!4758941 (= e!2969370 Unit!137764)))

(declare-fun bm!333632 () Bool)

(declare-fun apply!12519 (ListLongMap!4595 (_ BitVec 64)) List!53420)

(assert (=> bm!333632 (= call!333639 (apply!12519 (ite c!811963 lt!1924021 call!333635) call!333636))))

(declare-fun bm!333633 () Bool)

(declare-fun hash!4514 (Hashable!6500 tuple2!55208) (_ BitVec 64))

(assert (=> bm!333633 (= call!333636 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967))))

(declare-fun bm!333634 () Bool)

(assert (=> bm!333634 (= call!333635 (map!11851 (v!47353 (underlying!9886 (cache!4565 thiss!28909)))))))

(declare-fun b!4758942 () Bool)

(assert (=> b!4758942 false))

(declare-fun lt!1924027 () Unit!137760)

(declare-fun lt!1924011 () Unit!137760)

(assert (=> b!4758942 (= lt!1924027 lt!1924011)))

(declare-fun lt!1924024 () ListLongMap!4595)

(declare-datatypes ((ListMap!5703 0))(
  ( (ListMap!5704 (toList!6203 List!53420)) )
))
(declare-fun contains!16631 (ListMap!5703 tuple2!55208) Bool)

(declare-fun extractMap!2113 (List!53422) ListMap!5703)

(assert (=> b!4758942 (contains!16631 (extractMap!2113 (toList!6202 lt!1924024)) lt!1923967)))

(declare-fun lemmaInLongMapThenInGenericMap!177 (ListLongMap!4595 tuple2!55208 Hashable!6500) Unit!137760)

(assert (=> b!4758942 (= lt!1924011 (lemmaInLongMapThenInGenericMap!177 lt!1924024 lt!1923967 (hashF!12310 (cache!4565 thiss!28909))))))

(assert (=> b!4758942 (= lt!1924024 call!333635)))

(declare-fun Unit!137765 () Unit!137760)

(assert (=> b!4758942 (= e!2969369 Unit!137765)))

(declare-fun d!1521171 () Bool)

(declare-fun lt!1924016 () Bool)

(declare-fun map!11852 (MutableMap!4723) ListMap!5703)

(assert (=> d!1521171 (= lt!1924016 (contains!16631 (map!11852 (cache!4565 thiss!28909)) lt!1923967))))

(declare-fun e!2969373 () Bool)

(assert (=> d!1521171 (= lt!1924016 e!2969373)))

(declare-fun res!2018709 () Bool)

(assert (=> d!1521171 (=> (not res!2018709) (not e!2969373))))

(declare-fun contains!16632 (MutLongMap!4839 (_ BitVec 64)) Bool)

(assert (=> d!1521171 (= res!2018709 (contains!16632 (v!47353 (underlying!9886 (cache!4565 thiss!28909))) lt!1924017))))

(declare-fun lt!1924018 () Unit!137760)

(assert (=> d!1521171 (= lt!1924018 e!2969367)))

(assert (=> d!1521171 (= c!811963 (contains!16631 (extractMap!2113 (toList!6202 (map!11851 (v!47353 (underlying!9886 (cache!4565 thiss!28909)))))) lt!1923967))))

(declare-fun lt!1924015 () Unit!137760)

(assert (=> d!1521171 (= lt!1924015 e!2969370)))

(declare-fun c!811961 () Bool)

(assert (=> d!1521171 (= c!811961 (contains!16632 (v!47353 (underlying!9886 (cache!4565 thiss!28909))) lt!1924017))))

(assert (=> d!1521171 (= lt!1924017 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967))))

(declare-fun valid!3843 (MutableMap!4723) Bool)

(assert (=> d!1521171 (valid!3843 (cache!4565 thiss!28909))))

(assert (=> d!1521171 (= (contains!16628 (cache!4565 thiss!28909) lt!1923967) lt!1924016)))

(declare-fun b!4758943 () Bool)

(assert (=> b!4758943 (= e!2969373 (isDefined!9768 (getPair!613 (apply!12518 (v!47353 (underlying!9886 (cache!4565 thiss!28909))) lt!1924017) lt!1923967)))))

(declare-fun b!4758944 () Bool)

(declare-fun Unit!137766 () Unit!137760)

(assert (=> b!4758944 (= e!2969369 Unit!137766)))

(assert (= (and d!1521171 c!811961) b!4758937))

(assert (= (and d!1521171 (not c!811961)) b!4758941))

(assert (= (and b!4758937 c!811964) b!4758940))

(assert (= (and b!4758937 (not c!811964)) b!4758939))

(assert (= (and d!1521171 c!811963) b!4758936))

(assert (= (and d!1521171 (not c!811963)) b!4758935))

(assert (= (and b!4758936 res!2018710) b!4758934))

(assert (= (and b!4758935 res!2018711) b!4758938))

(assert (= (and b!4758935 c!811962) b!4758942))

(assert (= (and b!4758935 (not c!811962)) b!4758944))

(assert (= (or b!4758936 b!4758934 b!4758935 b!4758938) bm!333633))

(assert (= (or b!4758936 b!4758935 b!4758938 b!4758942) bm!333634))

(assert (= (or b!4758936 b!4758935) bm!333630))

(assert (= (or b!4758934 b!4758938) bm!333632))

(assert (= (or b!4758934 b!4758938) bm!333631))

(assert (= (or b!4758934 b!4758938) bm!333629))

(assert (= (and d!1521171 res!2018709) b!4758943))

(declare-fun m!5728292 () Bool)

(assert (=> b!4758943 m!5728292))

(assert (=> b!4758943 m!5728292))

(declare-fun m!5728294 () Bool)

(assert (=> b!4758943 m!5728294))

(assert (=> b!4758943 m!5728294))

(declare-fun m!5728296 () Bool)

(assert (=> b!4758943 m!5728296))

(declare-fun m!5728298 () Bool)

(assert (=> bm!333629 m!5728298))

(declare-fun m!5728300 () Bool)

(assert (=> b!4758937 m!5728300))

(assert (=> b!4758937 m!5728292))

(declare-fun m!5728302 () Bool)

(assert (=> b!4758937 m!5728302))

(declare-fun m!5728304 () Bool)

(assert (=> b!4758937 m!5728304))

(declare-fun m!5728306 () Bool)

(assert (=> b!4758936 m!5728306))

(declare-fun m!5728308 () Bool)

(assert (=> bm!333633 m!5728308))

(declare-fun m!5728310 () Bool)

(assert (=> b!4758940 m!5728310))

(declare-fun m!5728312 () Bool)

(assert (=> b!4758940 m!5728312))

(assert (=> b!4758940 m!5728292))

(declare-fun m!5728314 () Bool)

(assert (=> b!4758940 m!5728314))

(assert (=> b!4758940 m!5728300))

(declare-fun m!5728316 () Bool)

(assert (=> b!4758940 m!5728316))

(assert (=> b!4758940 m!5728312))

(declare-fun m!5728318 () Bool)

(assert (=> b!4758940 m!5728318))

(declare-fun m!5728320 () Bool)

(assert (=> b!4758940 m!5728320))

(declare-fun m!5728322 () Bool)

(assert (=> b!4758940 m!5728322))

(declare-fun m!5728324 () Bool)

(assert (=> bm!333631 m!5728324))

(declare-fun m!5728326 () Bool)

(assert (=> d!1521171 m!5728326))

(declare-fun m!5728328 () Bool)

(assert (=> d!1521171 m!5728328))

(declare-fun m!5728330 () Bool)

(assert (=> d!1521171 m!5728330))

(declare-fun m!5728332 () Bool)

(assert (=> d!1521171 m!5728332))

(declare-fun m!5728334 () Bool)

(assert (=> d!1521171 m!5728334))

(declare-fun m!5728336 () Bool)

(assert (=> d!1521171 m!5728336))

(assert (=> d!1521171 m!5728308))

(assert (=> d!1521171 m!5728300))

(assert (=> d!1521171 m!5728328))

(assert (=> d!1521171 m!5728332))

(declare-fun m!5728338 () Bool)

(assert (=> bm!333632 m!5728338))

(assert (=> bm!333634 m!5728300))

(declare-fun m!5728340 () Bool)

(assert (=> bm!333630 m!5728340))

(declare-fun m!5728342 () Bool)

(assert (=> b!4758942 m!5728342))

(assert (=> b!4758942 m!5728342))

(declare-fun m!5728344 () Bool)

(assert (=> b!4758942 m!5728344))

(declare-fun m!5728346 () Bool)

(assert (=> b!4758942 m!5728346))

(assert (=> b!4758902 d!1521171))

(declare-fun bs!1147012 () Bool)

(declare-fun b!4758950 () Bool)

(assert (= bs!1147012 (and b!4758950 b!4758903)))

(declare-fun lambda!223636 () Int)

(assert (=> bs!1147012 (= lambda!223636 lambda!223630)))

(assert (=> b!4758950 true))

(declare-fun d!1521173 () Bool)

(declare-fun res!2018716 () Bool)

(declare-fun e!2969376 () Bool)

(assert (=> d!1521173 (=> (not res!2018716) (not e!2969376))))

(assert (=> d!1521173 (= res!2018716 (valid!3843 (cache!4565 thiss!28909)))))

(assert (=> d!1521173 (= (validCacheMapFindLongestMatch!122 (cache!4565 thiss!28909) localTotalInput!8) e!2969376)))

(declare-fun b!4758949 () Bool)

(declare-fun res!2018717 () Bool)

(assert (=> b!4758949 (=> (not res!2018717) (not e!2969376))))

(declare-fun invariantList!1641 (List!53420) Bool)

(assert (=> b!4758949 (= res!2018717 (invariantList!1641 (toList!6203 (map!11852 (cache!4565 thiss!28909)))))))

(declare-fun forall!11819 (List!53420 Int) Bool)

(assert (=> b!4758950 (= e!2969376 (forall!11819 (toList!6203 (map!11852 (cache!4565 thiss!28909))) lambda!223636))))

(assert (= (and d!1521173 res!2018716) b!4758949))

(assert (= (and b!4758949 res!2018717) b!4758950))

(assert (=> d!1521173 m!5728326))

(assert (=> b!4758949 m!5728328))

(declare-fun m!5728349 () Bool)

(assert (=> b!4758949 m!5728349))

(assert (=> b!4758950 m!5728328))

(declare-fun m!5728351 () Bool)

(assert (=> b!4758950 m!5728351))

(assert (=> b!4758902 d!1521173))

(declare-fun d!1521175 () Bool)

(assert (=> d!1521175 (= (inv!68775 localTotalInput!8) (isBalanced!3904 (c!811952 localTotalInput!8)))))

(declare-fun bs!1147013 () Bool)

(assert (= bs!1147013 d!1521175))

(declare-fun m!5728353 () Bool)

(assert (=> bs!1147013 m!5728353))

(assert (=> start!486662 d!1521175))

(declare-fun d!1521177 () Bool)

(declare-fun res!2018720 () Bool)

(declare-fun e!2969379 () Bool)

(assert (=> d!1521177 (=> (not res!2018720) (not e!2969379))))

(assert (=> d!1521177 (= res!2018720 ((_ is HashMap!4723) (cache!4565 thiss!28909)))))

(assert (=> d!1521177 (= (inv!68776 thiss!28909) e!2969379)))

(declare-fun b!4758953 () Bool)

(assert (=> b!4758953 (= e!2969379 (validCacheMapFindLongestMatch!122 (cache!4565 thiss!28909) (totalInput!4478 thiss!28909)))))

(assert (= (and d!1521177 res!2018720) b!4758953))

(assert (=> b!4758953 m!5728288))

(assert (=> start!486662 d!1521177))

(declare-fun bs!1147014 () Bool)

(declare-fun b!4758955 () Bool)

(assert (= bs!1147014 (and b!4758955 b!4758903)))

(declare-fun lambda!223637 () Int)

(assert (=> bs!1147014 (= (= (totalInput!4478 thiss!28909) localTotalInput!8) (= lambda!223637 lambda!223630))))

(declare-fun bs!1147015 () Bool)

(assert (= bs!1147015 (and b!4758955 b!4758950)))

(assert (=> bs!1147015 (= (= (totalInput!4478 thiss!28909) localTotalInput!8) (= lambda!223637 lambda!223636))))

(assert (=> b!4758955 true))

(declare-fun d!1521179 () Bool)

(declare-fun res!2018721 () Bool)

(declare-fun e!2969380 () Bool)

(assert (=> d!1521179 (=> (not res!2018721) (not e!2969380))))

(assert (=> d!1521179 (= res!2018721 (valid!3843 (cache!4565 thiss!28909)))))

(assert (=> d!1521179 (= (validCacheMapFindLongestMatch!122 (cache!4565 thiss!28909) (totalInput!4478 thiss!28909)) e!2969380)))

(declare-fun b!4758954 () Bool)

(declare-fun res!2018722 () Bool)

(assert (=> b!4758954 (=> (not res!2018722) (not e!2969380))))

(assert (=> b!4758954 (= res!2018722 (invariantList!1641 (toList!6203 (map!11852 (cache!4565 thiss!28909)))))))

(assert (=> b!4758955 (= e!2969380 (forall!11819 (toList!6203 (map!11852 (cache!4565 thiss!28909))) lambda!223637))))

(assert (= (and d!1521179 res!2018721) b!4758954))

(assert (= (and b!4758954 res!2018722) b!4758955))

(assert (=> d!1521179 m!5728326))

(assert (=> b!4758954 m!5728328))

(assert (=> b!4758954 m!5728349))

(assert (=> b!4758955 m!5728328))

(declare-fun m!5728355 () Bool)

(assert (=> b!4758955 m!5728355))

(assert (=> b!4758897 d!1521179))

(declare-fun d!1521181 () Bool)

(assert (=> d!1521181 (= (array_inv!5657 (_keys!5174 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))) (bvsge (size!36074 (_keys!5174 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4758909 d!1521181))

(declare-fun d!1521183 () Bool)

(assert (=> d!1521183 (= (array_inv!5658 (_values!5147 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))) (bvsge (size!36075 (_values!5147 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4758909 d!1521183))

(declare-fun d!1521185 () Bool)

(declare-fun lambda!223640 () Int)

(declare-fun forall!11820 (List!53419 Int) Bool)

(assert (=> d!1521185 (= (inv!68777 setElem!27049) (forall!11820 (exprs!3427 setElem!27049) lambda!223640))))

(declare-fun bs!1147016 () Bool)

(assert (= bs!1147016 d!1521185))

(declare-fun m!5728357 () Bool)

(assert (=> bs!1147016 m!5728357))

(assert (=> setNonEmpty!27049 d!1521185))

(declare-fun d!1521187 () Bool)

(declare-fun c!811967 () Bool)

(assert (=> d!1521187 (= c!811967 ((_ is Node!14478) (c!811952 localTotalInput!8)))))

(declare-fun e!2969385 () Bool)

(assert (=> d!1521187 (= (inv!68774 (c!811952 localTotalInput!8)) e!2969385)))

(declare-fun b!4758962 () Bool)

(declare-fun inv!68778 (Conc!14478) Bool)

(assert (=> b!4758962 (= e!2969385 (inv!68778 (c!811952 localTotalInput!8)))))

(declare-fun b!4758963 () Bool)

(declare-fun e!2969386 () Bool)

(assert (=> b!4758963 (= e!2969385 e!2969386)))

(declare-fun res!2018725 () Bool)

(assert (=> b!4758963 (= res!2018725 (not ((_ is Leaf!23569) (c!811952 localTotalInput!8))))))

(assert (=> b!4758963 (=> res!2018725 e!2969386)))

(declare-fun b!4758964 () Bool)

(declare-fun inv!68779 (Conc!14478) Bool)

(assert (=> b!4758964 (= e!2969386 (inv!68779 (c!811952 localTotalInput!8)))))

(assert (= (and d!1521187 c!811967) b!4758962))

(assert (= (and d!1521187 (not c!811967)) b!4758963))

(assert (= (and b!4758963 (not res!2018725)) b!4758964))

(declare-fun m!5728359 () Bool)

(assert (=> b!4758962 m!5728359))

(declare-fun m!5728361 () Bool)

(assert (=> b!4758964 m!5728361))

(assert (=> b!4758908 d!1521187))

(declare-fun d!1521189 () Bool)

(declare-fun res!2018730 () Bool)

(declare-fun e!2969389 () Bool)

(assert (=> d!1521189 (=> (not res!2018730) (not e!2969389))))

(assert (=> d!1521189 (= res!2018730 (>= (_2!30898 (_1!30899 (tuple2!55211 lt!1923967 (apply!12517 (cache!4565 thiss!28909) lt!1923967)))) 0))))

(assert (=> d!1521189 (= (validCacheMapFindLongestMatchBody!15 (tuple2!55211 lt!1923967 (apply!12517 (cache!4565 thiss!28909) lt!1923967)) localTotalInput!8) e!2969389)))

(declare-fun b!4758969 () Bool)

(declare-fun res!2018731 () Bool)

(assert (=> b!4758969 (=> (not res!2018731) (not e!2969389))))

(declare-fun size!36076 (BalanceConc!28446) Int)

(assert (=> b!4758969 (= res!2018731 (<= (_2!30898 (_1!30899 (tuple2!55211 lt!1923967 (apply!12517 (cache!4565 thiss!28909) lt!1923967)))) (size!36076 localTotalInput!8)))))

(declare-fun b!4758970 () Bool)

(declare-fun findLongestMatchInnerZipperFastV2!69 ((InoxSet Context!5854) Int BalanceConc!28446 Int) Int)

(assert (=> b!4758970 (= e!2969389 (= (_2!30899 (tuple2!55211 lt!1923967 (apply!12517 (cache!4565 thiss!28909) lt!1923967))) (findLongestMatchInnerZipperFastV2!69 (_1!30898 (_1!30899 (tuple2!55211 lt!1923967 (apply!12517 (cache!4565 thiss!28909) lt!1923967)))) (_2!30898 (_1!30899 (tuple2!55211 lt!1923967 (apply!12517 (cache!4565 thiss!28909) lt!1923967)))) localTotalInput!8 (size!36076 localTotalInput!8))))))

(assert (= (and d!1521189 res!2018730) b!4758969))

(assert (= (and b!4758969 res!2018731) b!4758970))

(declare-fun m!5728363 () Bool)

(assert (=> b!4758969 m!5728363))

(assert (=> b!4758970 m!5728363))

(assert (=> b!4758970 m!5728363))

(declare-fun m!5728365 () Bool)

(assert (=> b!4758970 m!5728365))

(assert (=> b!4758903 d!1521189))

(declare-fun bs!1147017 () Bool)

(declare-fun b!4758986 () Bool)

(assert (= bs!1147017 (and b!4758986 b!4758937)))

(declare-fun lambda!223647 () Int)

(assert (=> bs!1147017 (= lambda!223647 lambda!223633)))

(declare-fun b!4758983 () Bool)

(declare-fun e!2969396 () Unit!137760)

(declare-fun Unit!137767 () Unit!137760)

(assert (=> b!4758983 (= e!2969396 Unit!137767)))

(declare-fun e!2969398 () Bool)

(declare-fun b!4758984 () Bool)

(declare-fun lt!1924098 () Int)

(declare-datatypes ((Option!12588 0))(
  ( (None!12587) (Some!12587 (v!47356 Int)) )
))
(declare-fun get!17943 (Option!12588) Int)

(declare-fun getValueByKey!2127 (List!53420 tuple2!55208) Option!12588)

(assert (=> b!4758984 (= e!2969398 (= lt!1924098 (get!17943 (getValueByKey!2127 (toList!6203 (map!11852 (cache!4565 thiss!28909))) lt!1923967))))))

(declare-fun b!4758985 () Bool)

(assert (=> b!4758985 false))

(declare-fun lt!1924095 () Unit!137760)

(declare-fun lt!1924115 () Unit!137760)

(assert (=> b!4758985 (= lt!1924095 lt!1924115)))

(declare-fun lt!1924093 () List!53422)

(declare-fun lt!1924101 () (_ BitVec 64))

(declare-fun lt!1924090 () List!53420)

(assert (=> b!4758985 (contains!16629 lt!1924093 (tuple2!55213 lt!1924101 lt!1924090))))

(assert (=> b!4758985 (= lt!1924115 (lemmaGetValueByKeyImpliesContainsTuple!891 lt!1924093 lt!1924101 lt!1924090))))

(assert (=> b!4758985 (= lt!1924090 (apply!12518 (v!47353 (underlying!9886 (cache!4565 thiss!28909))) lt!1924101))))

(assert (=> b!4758985 (= lt!1924093 (toList!6202 (map!11851 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))))

(declare-fun lt!1924103 () Unit!137760)

(declare-fun lt!1924110 () Unit!137760)

(assert (=> b!4758985 (= lt!1924103 lt!1924110)))

(declare-fun lt!1924091 () List!53422)

(assert (=> b!4758985 (isDefined!9769 (getValueByKey!2126 lt!1924091 lt!1924101))))

(assert (=> b!4758985 (= lt!1924110 (lemmaContainsKeyImpliesGetValueByKeyDefined!1949 lt!1924091 lt!1924101))))

(assert (=> b!4758985 (= lt!1924091 (toList!6202 (map!11851 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))))

(declare-fun Unit!137768 () Unit!137760)

(assert (=> b!4758985 (= e!2969396 Unit!137768)))

(declare-fun d!1521191 () Bool)

(assert (=> d!1521191 e!2969398))

(declare-fun c!811975 () Bool)

(assert (=> d!1521191 (= c!811975 (contains!16628 (cache!4565 thiss!28909) lt!1923967))))

(declare-fun e!2969397 () Int)

(assert (=> d!1521191 (= lt!1924098 e!2969397)))

(declare-fun c!811974 () Bool)

(assert (=> d!1521191 (= c!811974 (not (contains!16628 (cache!4565 thiss!28909) lt!1923967)))))

(assert (=> d!1521191 (valid!3843 (cache!4565 thiss!28909))))

(assert (=> d!1521191 (= (apply!12517 (cache!4565 thiss!28909) lt!1923967) lt!1924098)))

(declare-fun get!17944 (Option!12586) tuple2!55210)

(assert (=> b!4758986 (= e!2969397 (_2!30899 (get!17944 (getPair!613 (apply!12518 (v!47353 (underlying!9886 (cache!4565 thiss!28909))) lt!1924101) lt!1923967))))))

(assert (=> b!4758986 (= lt!1924101 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967))))

(declare-fun c!811976 () Bool)

(assert (=> b!4758986 (= c!811976 (not (contains!16629 (toList!6202 (map!11851 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))) (tuple2!55213 lt!1924101 (apply!12518 (v!47353 (underlying!9886 (cache!4565 thiss!28909))) lt!1924101)))))))

(declare-fun lt!1924106 () Unit!137760)

(assert (=> b!4758986 (= lt!1924106 e!2969396)))

(declare-fun lt!1924097 () Unit!137760)

(assert (=> b!4758986 (= lt!1924097 (forallContained!3823 (toList!6202 (map!11851 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))) lambda!223647 (tuple2!55213 lt!1924101 (apply!12518 (v!47353 (underlying!9886 (cache!4565 thiss!28909))) lt!1924101))))))

(declare-fun lt!1924118 () ListLongMap!4595)

(assert (=> b!4758986 (= lt!1924118 (map!11851 (v!47353 (underlying!9886 (cache!4565 thiss!28909)))))))

(declare-fun lt!1924089 () Unit!137760)

(declare-fun lemmaGetPairGetSameValueAsMap!45 (ListLongMap!4595 tuple2!55208 Int Hashable!6500) Unit!137760)

(assert (=> b!4758986 (= lt!1924089 (lemmaGetPairGetSameValueAsMap!45 lt!1924118 lt!1923967 (_2!30899 (get!17944 (getPair!613 (apply!12518 (v!47353 (underlying!9886 (cache!4565 thiss!28909))) lt!1924101) lt!1923967))) (hashF!12310 (cache!4565 thiss!28909))))))

(declare-fun lt!1924114 () Unit!137760)

(declare-fun lemmaInGenMapThenLongMapContainsHash!819 (ListLongMap!4595 tuple2!55208 Hashable!6500) Unit!137760)

(assert (=> b!4758986 (= lt!1924114 (lemmaInGenMapThenLongMapContainsHash!819 lt!1924118 lt!1923967 (hashF!12310 (cache!4565 thiss!28909))))))

(assert (=> b!4758986 (contains!16630 lt!1924118 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967))))

(declare-fun lt!1924117 () Unit!137760)

(assert (=> b!4758986 (= lt!1924117 lt!1924114)))

(declare-fun lt!1924109 () (_ BitVec 64))

(assert (=> b!4758986 (= lt!1924109 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967))))

(declare-fun lt!1924105 () List!53420)

(assert (=> b!4758986 (= lt!1924105 (apply!12519 lt!1924118 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967)))))

(declare-fun lt!1924108 () Unit!137760)

(declare-fun lemmaGetValueImpliesTupleContained!418 (ListLongMap!4595 (_ BitVec 64) List!53420) Unit!137760)

(assert (=> b!4758986 (= lt!1924108 (lemmaGetValueImpliesTupleContained!418 lt!1924118 lt!1924109 lt!1924105))))

(assert (=> b!4758986 (contains!16629 (toList!6202 lt!1924118) (tuple2!55213 lt!1924109 lt!1924105))))

(declare-fun lt!1924094 () Unit!137760)

(assert (=> b!4758986 (= lt!1924094 lt!1924108)))

(declare-fun lt!1924092 () Unit!137760)

(assert (=> b!4758986 (= lt!1924092 (forallContained!3823 (toList!6202 lt!1924118) lambda!223647 (tuple2!55213 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967) (apply!12519 lt!1924118 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967)))))))

(declare-fun lt!1924099 () Unit!137760)

(declare-fun lemmaInGenMapThenGetPairDefined!409 (ListLongMap!4595 tuple2!55208 Hashable!6500) Unit!137760)

(assert (=> b!4758986 (= lt!1924099 (lemmaInGenMapThenGetPairDefined!409 lt!1924118 lt!1923967 (hashF!12310 (cache!4565 thiss!28909))))))

(declare-fun lt!1924102 () Unit!137760)

(assert (=> b!4758986 (= lt!1924102 (lemmaInGenMapThenLongMapContainsHash!819 lt!1924118 lt!1923967 (hashF!12310 (cache!4565 thiss!28909))))))

(declare-fun lt!1924096 () Unit!137760)

(assert (=> b!4758986 (= lt!1924096 lt!1924102)))

(declare-fun lt!1924111 () (_ BitVec 64))

(assert (=> b!4758986 (= lt!1924111 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967))))

(declare-fun lt!1924116 () List!53420)

(assert (=> b!4758986 (= lt!1924116 (apply!12519 lt!1924118 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967)))))

(declare-fun lt!1924113 () Unit!137760)

(assert (=> b!4758986 (= lt!1924113 (lemmaGetValueImpliesTupleContained!418 lt!1924118 lt!1924111 lt!1924116))))

(assert (=> b!4758986 (contains!16629 (toList!6202 lt!1924118) (tuple2!55213 lt!1924111 lt!1924116))))

(declare-fun lt!1924100 () Unit!137760)

(assert (=> b!4758986 (= lt!1924100 lt!1924113)))

(declare-fun lt!1924104 () Unit!137760)

(assert (=> b!4758986 (= lt!1924104 (forallContained!3823 (toList!6202 lt!1924118) lambda!223647 (tuple2!55213 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967) (apply!12519 lt!1924118 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967)))))))

(assert (=> b!4758986 (isDefined!9768 (getPair!613 (apply!12519 lt!1924118 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967)) lt!1923967))))

(declare-fun lt!1924107 () Unit!137760)

(assert (=> b!4758986 (= lt!1924107 lt!1924099)))

(assert (=> b!4758986 (= (_2!30899 (get!17944 (getPair!613 (apply!12519 lt!1924118 (hash!4514 (hashF!12310 (cache!4565 thiss!28909)) lt!1923967)) lt!1923967))) (get!17943 (getValueByKey!2127 (toList!6203 (extractMap!2113 (toList!6202 lt!1924118))) lt!1923967)))))

(declare-fun lt!1924112 () Unit!137760)

(assert (=> b!4758986 (= lt!1924112 lt!1924089)))

(declare-fun b!4758987 () Bool)

(declare-fun dynLambda!21912 (Int tuple2!55208) Int)

(assert (=> b!4758987 (= e!2969397 (dynLambda!21912 (defaultValue!4894 (cache!4565 thiss!28909)) lt!1923967))))

(declare-fun b!4758988 () Bool)

(assert (=> b!4758988 (= e!2969398 (= lt!1924098 (dynLambda!21912 (defaultValue!4894 (cache!4565 thiss!28909)) lt!1923967)))))

(assert (= (and d!1521191 c!811974) b!4758987))

(assert (= (and d!1521191 (not c!811974)) b!4758986))

(assert (= (and b!4758986 c!811976) b!4758985))

(assert (= (and b!4758986 (not c!811976)) b!4758983))

(assert (= (and d!1521191 c!811975) b!4758984))

(assert (= (and d!1521191 (not c!811975)) b!4758988))

(declare-fun b_lambda!183765 () Bool)

(assert (=> (not b_lambda!183765) (not b!4758987)))

(declare-fun t!360775 () Bool)

(declare-fun tb!257405 () Bool)

(assert (=> (and b!4758898 (= (defaultValue!4894 (cache!4565 thiss!28909)) (defaultValue!4894 (cache!4565 thiss!28909))) t!360775) tb!257405))

(declare-fun result!318878 () Bool)

(assert (=> tb!257405 (= result!318878 true)))

(assert (=> b!4758987 t!360775))

(declare-fun b_and!340883 () Bool)

(assert (= b_and!340879 (and (=> t!360775 result!318878) b_and!340883)))

(declare-fun b_lambda!183767 () Bool)

(assert (=> (not b_lambda!183767) (not b!4758988)))

(assert (=> b!4758988 t!360775))

(declare-fun b_and!340885 () Bool)

(assert (= b_and!340883 (and (=> t!360775 result!318878) b_and!340885)))

(declare-fun m!5728367 () Bool)

(assert (=> b!4758985 m!5728367))

(assert (=> b!4758985 m!5728300))

(declare-fun m!5728369 () Bool)

(assert (=> b!4758985 m!5728369))

(declare-fun m!5728371 () Bool)

(assert (=> b!4758985 m!5728371))

(declare-fun m!5728373 () Bool)

(assert (=> b!4758985 m!5728373))

(declare-fun m!5728375 () Bool)

(assert (=> b!4758985 m!5728375))

(assert (=> b!4758985 m!5728369))

(declare-fun m!5728377 () Bool)

(assert (=> b!4758985 m!5728377))

(declare-fun m!5728379 () Bool)

(assert (=> b!4758986 m!5728379))

(declare-fun m!5728381 () Bool)

(assert (=> b!4758986 m!5728381))

(declare-fun m!5728383 () Bool)

(assert (=> b!4758986 m!5728383))

(declare-fun m!5728385 () Bool)

(assert (=> b!4758986 m!5728385))

(assert (=> b!4758986 m!5728300))

(assert (=> b!4758986 m!5728379))

(assert (=> b!4758986 m!5728308))

(assert (=> b!4758986 m!5728371))

(declare-fun m!5728387 () Bool)

(assert (=> b!4758986 m!5728387))

(assert (=> b!4758986 m!5728383))

(declare-fun m!5728389 () Bool)

(assert (=> b!4758986 m!5728389))

(assert (=> b!4758986 m!5728308))

(declare-fun m!5728391 () Bool)

(assert (=> b!4758986 m!5728391))

(declare-fun m!5728393 () Bool)

(assert (=> b!4758986 m!5728393))

(declare-fun m!5728395 () Bool)

(assert (=> b!4758986 m!5728395))

(assert (=> b!4758986 m!5728391))

(assert (=> b!4758986 m!5728383))

(declare-fun m!5728397 () Bool)

(assert (=> b!4758986 m!5728397))

(assert (=> b!4758986 m!5728308))

(declare-fun m!5728399 () Bool)

(assert (=> b!4758986 m!5728399))

(declare-fun m!5728401 () Bool)

(assert (=> b!4758986 m!5728401))

(assert (=> b!4758986 m!5728387))

(declare-fun m!5728403 () Bool)

(assert (=> b!4758986 m!5728403))

(declare-fun m!5728405 () Bool)

(assert (=> b!4758986 m!5728405))

(declare-fun m!5728407 () Bool)

(assert (=> b!4758986 m!5728407))

(declare-fun m!5728409 () Bool)

(assert (=> b!4758986 m!5728409))

(assert (=> b!4758986 m!5728371))

(declare-fun m!5728411 () Bool)

(assert (=> b!4758986 m!5728411))

(declare-fun m!5728413 () Bool)

(assert (=> b!4758986 m!5728413))

(declare-fun m!5728415 () Bool)

(assert (=> b!4758986 m!5728415))

(declare-fun m!5728417 () Bool)

(assert (=> b!4758986 m!5728417))

(assert (=> b!4758986 m!5728397))

(declare-fun m!5728419 () Bool)

(assert (=> b!4758987 m!5728419))

(assert (=> d!1521191 m!5728268))

(assert (=> d!1521191 m!5728326))

(assert (=> b!4758984 m!5728328))

(declare-fun m!5728421 () Bool)

(assert (=> b!4758984 m!5728421))

(assert (=> b!4758984 m!5728421))

(declare-fun m!5728423 () Bool)

(assert (=> b!4758984 m!5728423))

(assert (=> b!4758988 m!5728419))

(assert (=> b!4758903 d!1521191))

(declare-fun d!1521193 () Bool)

(declare-fun dynLambda!21913 (Int tuple2!55210) Bool)

(assert (=> d!1521193 (dynLambda!21913 lambda!223630 (tuple2!55211 lt!1923967 (apply!12517 (cache!4565 thiss!28909) lt!1923967)))))

(declare-fun lt!1924121 () Unit!137760)

(declare-fun choose!33899 (MutableMap!4723 tuple2!55208 Int) Unit!137760)

(assert (=> d!1521193 (= lt!1924121 (choose!33899 (cache!4565 thiss!28909) lt!1923967 lambda!223630))))

(assert (=> d!1521193 (valid!3843 (cache!4565 thiss!28909))))

(assert (=> d!1521193 (= (lemmaForallPairsThenForLookup!62 (cache!4565 thiss!28909) lt!1923967 lambda!223630) lt!1924121)))

(declare-fun b_lambda!183769 () Bool)

(assert (=> (not b_lambda!183769) (not d!1521193)))

(declare-fun bs!1147018 () Bool)

(assert (= bs!1147018 d!1521193))

(assert (=> bs!1147018 m!5728262))

(declare-fun m!5728425 () Bool)

(assert (=> bs!1147018 m!5728425))

(declare-fun m!5728427 () Bool)

(assert (=> bs!1147018 m!5728427))

(assert (=> bs!1147018 m!5728326))

(assert (=> b!4758903 d!1521193))

(declare-fun d!1521195 () Bool)

(declare-fun c!811977 () Bool)

(assert (=> d!1521195 (= c!811977 ((_ is Node!14478) (c!811952 (totalInput!4478 thiss!28909))))))

(declare-fun e!2969399 () Bool)

(assert (=> d!1521195 (= (inv!68774 (c!811952 (totalInput!4478 thiss!28909))) e!2969399)))

(declare-fun b!4758989 () Bool)

(assert (=> b!4758989 (= e!2969399 (inv!68778 (c!811952 (totalInput!4478 thiss!28909))))))

(declare-fun b!4758990 () Bool)

(declare-fun e!2969400 () Bool)

(assert (=> b!4758990 (= e!2969399 e!2969400)))

(declare-fun res!2018732 () Bool)

(assert (=> b!4758990 (= res!2018732 (not ((_ is Leaf!23569) (c!811952 (totalInput!4478 thiss!28909)))))))

(assert (=> b!4758990 (=> res!2018732 e!2969400)))

(declare-fun b!4758991 () Bool)

(assert (=> b!4758991 (= e!2969400 (inv!68779 (c!811952 (totalInput!4478 thiss!28909))))))

(assert (= (and d!1521195 c!811977) b!4758989))

(assert (= (and d!1521195 (not c!811977)) b!4758990))

(assert (= (and b!4758990 (not res!2018732)) b!4758991))

(declare-fun m!5728429 () Bool)

(assert (=> b!4758989 m!5728429))

(declare-fun m!5728431 () Bool)

(assert (=> b!4758991 m!5728431))

(assert (=> b!4758899 d!1521195))

(declare-fun b!4758999 () Bool)

(declare-fun e!2969406 () Bool)

(declare-fun tp!1352456 () Bool)

(assert (=> b!4758999 (= e!2969406 tp!1352456)))

(declare-fun e!2969405 () Bool)

(assert (=> b!4758905 (= tp!1352443 e!2969405)))

(declare-fun setElem!27052 () Context!5854)

(declare-fun setNonEmpty!27052 () Bool)

(declare-fun setRes!27052 () Bool)

(declare-fun tp!1352455 () Bool)

(assert (=> setNonEmpty!27052 (= setRes!27052 (and tp!1352455 (inv!68777 setElem!27052) e!2969406))))

(declare-fun setRest!27052 () (InoxSet Context!5854))

(assert (=> setNonEmpty!27052 (= (_1!30898 (_1!30899 (h!59707 mapDefault!21521))) ((_ map or) (store ((as const (Array Context!5854 Bool)) false) setElem!27052 true) setRest!27052))))

(declare-fun b!4758998 () Bool)

(declare-fun tp!1352454 () Bool)

(assert (=> b!4758998 (= e!2969405 (and setRes!27052 tp!1352454))))

(declare-fun condSetEmpty!27052 () Bool)

(assert (=> b!4758998 (= condSetEmpty!27052 (= (_1!30898 (_1!30899 (h!59707 mapDefault!21521))) ((as const (Array Context!5854 Bool)) false)))))

(declare-fun setIsEmpty!27052 () Bool)

(assert (=> setIsEmpty!27052 setRes!27052))

(assert (= (and b!4758998 condSetEmpty!27052) setIsEmpty!27052))

(assert (= (and b!4758998 (not condSetEmpty!27052)) setNonEmpty!27052))

(assert (= setNonEmpty!27052 b!4758999))

(assert (= (and b!4758905 ((_ is Cons!53296) mapDefault!21521)) b!4758998))

(declare-fun m!5728433 () Bool)

(assert (=> setNonEmpty!27052 m!5728433))

(declare-fun condMapEmpty!21524 () Bool)

(declare-fun mapDefault!21524 () List!53420)

(assert (=> mapNonEmpty!21521 (= condMapEmpty!21524 (= mapRest!21521 ((as const (Array (_ BitVec 32) List!53420)) mapDefault!21524)))))

(declare-fun e!2969418 () Bool)

(declare-fun mapRes!21524 () Bool)

(assert (=> mapNonEmpty!21521 (= tp!1352445 (and e!2969418 mapRes!21524))))

(declare-fun b!4759010 () Bool)

(declare-fun e!2969416 () Bool)

(declare-fun setRes!27057 () Bool)

(declare-fun tp!1352472 () Bool)

(assert (=> b!4759010 (= e!2969416 (and setRes!27057 tp!1352472))))

(declare-fun condSetEmpty!27057 () Bool)

(declare-fun mapValue!21524 () List!53420)

(assert (=> b!4759010 (= condSetEmpty!27057 (= (_1!30898 (_1!30899 (h!59707 mapValue!21524))) ((as const (Array Context!5854 Bool)) false)))))

(declare-fun b!4759011 () Bool)

(declare-fun e!2969415 () Bool)

(declare-fun tp!1352473 () Bool)

(assert (=> b!4759011 (= e!2969415 tp!1352473)))

(declare-fun mapNonEmpty!21524 () Bool)

(declare-fun tp!1352474 () Bool)

(assert (=> mapNonEmpty!21524 (= mapRes!21524 (and tp!1352474 e!2969416))))

(declare-fun mapKey!21524 () (_ BitVec 32))

(declare-fun mapRest!21524 () (Array (_ BitVec 32) List!53420))

(assert (=> mapNonEmpty!21524 (= mapRest!21521 (store mapRest!21524 mapKey!21524 mapValue!21524))))

(declare-fun mapIsEmpty!21524 () Bool)

(assert (=> mapIsEmpty!21524 mapRes!21524))

(declare-fun b!4759012 () Bool)

(declare-fun e!2969417 () Bool)

(declare-fun tp!1352477 () Bool)

(assert (=> b!4759012 (= e!2969417 tp!1352477)))

(declare-fun setIsEmpty!27057 () Bool)

(assert (=> setIsEmpty!27057 setRes!27057))

(declare-fun b!4759013 () Bool)

(declare-fun setRes!27058 () Bool)

(declare-fun tp!1352471 () Bool)

(assert (=> b!4759013 (= e!2969418 (and setRes!27058 tp!1352471))))

(declare-fun condSetEmpty!27058 () Bool)

(assert (=> b!4759013 (= condSetEmpty!27058 (= (_1!30898 (_1!30899 (h!59707 mapDefault!21524))) ((as const (Array Context!5854 Bool)) false)))))

(declare-fun setIsEmpty!27058 () Bool)

(assert (=> setIsEmpty!27058 setRes!27058))

(declare-fun setNonEmpty!27057 () Bool)

(declare-fun tp!1352475 () Bool)

(declare-fun setElem!27057 () Context!5854)

(assert (=> setNonEmpty!27057 (= setRes!27058 (and tp!1352475 (inv!68777 setElem!27057) e!2969417))))

(declare-fun setRest!27058 () (InoxSet Context!5854))

(assert (=> setNonEmpty!27057 (= (_1!30898 (_1!30899 (h!59707 mapDefault!21524))) ((_ map or) (store ((as const (Array Context!5854 Bool)) false) setElem!27057 true) setRest!27058))))

(declare-fun setNonEmpty!27058 () Bool)

(declare-fun tp!1352476 () Bool)

(declare-fun setElem!27058 () Context!5854)

(assert (=> setNonEmpty!27058 (= setRes!27057 (and tp!1352476 (inv!68777 setElem!27058) e!2969415))))

(declare-fun setRest!27057 () (InoxSet Context!5854))

(assert (=> setNonEmpty!27058 (= (_1!30898 (_1!30899 (h!59707 mapValue!21524))) ((_ map or) (store ((as const (Array Context!5854 Bool)) false) setElem!27058 true) setRest!27057))))

(assert (= (and mapNonEmpty!21521 condMapEmpty!21524) mapIsEmpty!21524))

(assert (= (and mapNonEmpty!21521 (not condMapEmpty!21524)) mapNonEmpty!21524))

(assert (= (and b!4759010 condSetEmpty!27057) setIsEmpty!27057))

(assert (= (and b!4759010 (not condSetEmpty!27057)) setNonEmpty!27058))

(assert (= setNonEmpty!27058 b!4759011))

(assert (= (and mapNonEmpty!21524 ((_ is Cons!53296) mapValue!21524)) b!4759010))

(assert (= (and b!4759013 condSetEmpty!27058) setIsEmpty!27058))

(assert (= (and b!4759013 (not condSetEmpty!27058)) setNonEmpty!27057))

(assert (= setNonEmpty!27057 b!4759012))

(assert (= (and mapNonEmpty!21521 ((_ is Cons!53296) mapDefault!21524)) b!4759013))

(declare-fun m!5728435 () Bool)

(assert (=> mapNonEmpty!21524 m!5728435))

(declare-fun m!5728437 () Bool)

(assert (=> setNonEmpty!27057 m!5728437))

(declare-fun m!5728439 () Bool)

(assert (=> setNonEmpty!27058 m!5728439))

(declare-fun b!4759015 () Bool)

(declare-fun e!2969420 () Bool)

(declare-fun tp!1352480 () Bool)

(assert (=> b!4759015 (= e!2969420 tp!1352480)))

(declare-fun e!2969419 () Bool)

(assert (=> mapNonEmpty!21521 (= tp!1352442 e!2969419)))

(declare-fun tp!1352479 () Bool)

(declare-fun setRes!27059 () Bool)

(declare-fun setNonEmpty!27059 () Bool)

(declare-fun setElem!27059 () Context!5854)

(assert (=> setNonEmpty!27059 (= setRes!27059 (and tp!1352479 (inv!68777 setElem!27059) e!2969420))))

(declare-fun setRest!27059 () (InoxSet Context!5854))

(assert (=> setNonEmpty!27059 (= (_1!30898 (_1!30899 (h!59707 mapValue!21521))) ((_ map or) (store ((as const (Array Context!5854 Bool)) false) setElem!27059 true) setRest!27059))))

(declare-fun b!4759014 () Bool)

(declare-fun tp!1352478 () Bool)

(assert (=> b!4759014 (= e!2969419 (and setRes!27059 tp!1352478))))

(declare-fun condSetEmpty!27059 () Bool)

(assert (=> b!4759014 (= condSetEmpty!27059 (= (_1!30898 (_1!30899 (h!59707 mapValue!21521))) ((as const (Array Context!5854 Bool)) false)))))

(declare-fun setIsEmpty!27059 () Bool)

(assert (=> setIsEmpty!27059 setRes!27059))

(assert (= (and b!4759014 condSetEmpty!27059) setIsEmpty!27059))

(assert (= (and b!4759014 (not condSetEmpty!27059)) setNonEmpty!27059))

(assert (= setNonEmpty!27059 b!4759015))

(assert (= (and mapNonEmpty!21521 ((_ is Cons!53296) mapValue!21521)) b!4759014))

(declare-fun m!5728441 () Bool)

(assert (=> setNonEmpty!27059 m!5728441))

(declare-fun b!4759017 () Bool)

(declare-fun e!2969422 () Bool)

(declare-fun tp!1352483 () Bool)

(assert (=> b!4759017 (= e!2969422 tp!1352483)))

(declare-fun e!2969421 () Bool)

(assert (=> b!4758909 (= tp!1352444 e!2969421)))

(declare-fun setElem!27060 () Context!5854)

(declare-fun setNonEmpty!27060 () Bool)

(declare-fun tp!1352482 () Bool)

(declare-fun setRes!27060 () Bool)

(assert (=> setNonEmpty!27060 (= setRes!27060 (and tp!1352482 (inv!68777 setElem!27060) e!2969422))))

(declare-fun setRest!27060 () (InoxSet Context!5854))

(assert (=> setNonEmpty!27060 (= (_1!30898 (_1!30899 (h!59707 (zeroValue!5122 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5854 Bool)) false) setElem!27060 true) setRest!27060))))

(declare-fun b!4759016 () Bool)

(declare-fun tp!1352481 () Bool)

(assert (=> b!4759016 (= e!2969421 (and setRes!27060 tp!1352481))))

(declare-fun condSetEmpty!27060 () Bool)

(assert (=> b!4759016 (= condSetEmpty!27060 (= (_1!30898 (_1!30899 (h!59707 (zeroValue!5122 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))))) ((as const (Array Context!5854 Bool)) false)))))

(declare-fun setIsEmpty!27060 () Bool)

(assert (=> setIsEmpty!27060 setRes!27060))

(assert (= (and b!4759016 condSetEmpty!27060) setIsEmpty!27060))

(assert (= (and b!4759016 (not condSetEmpty!27060)) setNonEmpty!27060))

(assert (= setNonEmpty!27060 b!4759017))

(assert (= (and b!4758909 ((_ is Cons!53296) (zeroValue!5122 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909)))))))) b!4759016))

(declare-fun m!5728443 () Bool)

(assert (=> setNonEmpty!27060 m!5728443))

(declare-fun b!4759019 () Bool)

(declare-fun e!2969424 () Bool)

(declare-fun tp!1352486 () Bool)

(assert (=> b!4759019 (= e!2969424 tp!1352486)))

(declare-fun e!2969423 () Bool)

(assert (=> b!4758909 (= tp!1352441 e!2969423)))

(declare-fun setElem!27061 () Context!5854)

(declare-fun setNonEmpty!27061 () Bool)

(declare-fun tp!1352485 () Bool)

(declare-fun setRes!27061 () Bool)

(assert (=> setNonEmpty!27061 (= setRes!27061 (and tp!1352485 (inv!68777 setElem!27061) e!2969424))))

(declare-fun setRest!27061 () (InoxSet Context!5854))

(assert (=> setNonEmpty!27061 (= (_1!30898 (_1!30899 (h!59707 (minValue!5122 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5854 Bool)) false) setElem!27061 true) setRest!27061))))

(declare-fun b!4759018 () Bool)

(declare-fun tp!1352484 () Bool)

(assert (=> b!4759018 (= e!2969423 (and setRes!27061 tp!1352484))))

(declare-fun condSetEmpty!27061 () Bool)

(assert (=> b!4759018 (= condSetEmpty!27061 (= (_1!30898 (_1!30899 (h!59707 (minValue!5122 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909))))))))) ((as const (Array Context!5854 Bool)) false)))))

(declare-fun setIsEmpty!27061 () Bool)

(assert (=> setIsEmpty!27061 setRes!27061))

(assert (= (and b!4759018 condSetEmpty!27061) setIsEmpty!27061))

(assert (= (and b!4759018 (not condSetEmpty!27061)) setNonEmpty!27061))

(assert (= setNonEmpty!27061 b!4759019))

(assert (= (and b!4758909 ((_ is Cons!53296) (minValue!5122 (v!47352 (underlying!9885 (v!47353 (underlying!9886 (cache!4565 thiss!28909)))))))) b!4759018))

(declare-fun m!5728445 () Bool)

(assert (=> setNonEmpty!27061 m!5728445))

(declare-fun b!4759024 () Bool)

(declare-fun e!2969427 () Bool)

(declare-fun tp!1352491 () Bool)

(declare-fun tp!1352492 () Bool)

(assert (=> b!4759024 (= e!2969427 (and tp!1352491 tp!1352492))))

(assert (=> b!4758900 (= tp!1352447 e!2969427)))

(assert (= (and b!4758900 ((_ is Cons!53295) (exprs!3427 setElem!27049))) b!4759024))

(declare-fun condSetEmpty!27064 () Bool)

(assert (=> setNonEmpty!27049 (= condSetEmpty!27064 (= setRest!27049 ((as const (Array Context!5854 Bool)) false)))))

(declare-fun setRes!27064 () Bool)

(assert (=> setNonEmpty!27049 (= tp!1352437 setRes!27064)))

(declare-fun setIsEmpty!27064 () Bool)

(assert (=> setIsEmpty!27064 setRes!27064))

(declare-fun setNonEmpty!27064 () Bool)

(declare-fun tp!1352498 () Bool)

(declare-fun setElem!27064 () Context!5854)

(declare-fun e!2969430 () Bool)

(assert (=> setNonEmpty!27064 (= setRes!27064 (and tp!1352498 (inv!68777 setElem!27064) e!2969430))))

(declare-fun setRest!27064 () (InoxSet Context!5854))

(assert (=> setNonEmpty!27064 (= setRest!27049 ((_ map or) (store ((as const (Array Context!5854 Bool)) false) setElem!27064 true) setRest!27064))))

(declare-fun b!4759029 () Bool)

(declare-fun tp!1352497 () Bool)

(assert (=> b!4759029 (= e!2969430 tp!1352497)))

(assert (= (and setNonEmpty!27049 condSetEmpty!27064) setIsEmpty!27064))

(assert (= (and setNonEmpty!27049 (not condSetEmpty!27064)) setNonEmpty!27064))

(assert (= setNonEmpty!27064 b!4759029))

(declare-fun m!5728447 () Bool)

(assert (=> setNonEmpty!27064 m!5728447))

(declare-fun tp!1352505 () Bool)

(declare-fun tp!1352507 () Bool)

(declare-fun e!2969435 () Bool)

(declare-fun b!4759038 () Bool)

(assert (=> b!4759038 (= e!2969435 (and (inv!68774 (left!39086 (c!811952 localTotalInput!8))) tp!1352507 (inv!68774 (right!39416 (c!811952 localTotalInput!8))) tp!1352505))))

(declare-fun b!4759040 () Bool)

(declare-fun e!2969436 () Bool)

(declare-fun tp!1352506 () Bool)

(assert (=> b!4759040 (= e!2969436 tp!1352506)))

(declare-fun b!4759039 () Bool)

(declare-fun inv!68780 (IArray!29017) Bool)

(assert (=> b!4759039 (= e!2969435 (and (inv!68780 (xs!17784 (c!811952 localTotalInput!8))) e!2969436))))

(assert (=> b!4758908 (= tp!1352446 (and (inv!68774 (c!811952 localTotalInput!8)) e!2969435))))

(assert (= (and b!4758908 ((_ is Node!14478) (c!811952 localTotalInput!8))) b!4759038))

(assert (= b!4759039 b!4759040))

(assert (= (and b!4758908 ((_ is Leaf!23569) (c!811952 localTotalInput!8))) b!4759039))

(declare-fun m!5728449 () Bool)

(assert (=> b!4759038 m!5728449))

(declare-fun m!5728451 () Bool)

(assert (=> b!4759038 m!5728451))

(declare-fun m!5728453 () Bool)

(assert (=> b!4759039 m!5728453))

(assert (=> b!4758908 m!5728276))

(declare-fun b!4759041 () Bool)

(declare-fun tp!1352508 () Bool)

(declare-fun e!2969437 () Bool)

(declare-fun tp!1352510 () Bool)

(assert (=> b!4759041 (= e!2969437 (and (inv!68774 (left!39086 (c!811952 (totalInput!4478 thiss!28909)))) tp!1352510 (inv!68774 (right!39416 (c!811952 (totalInput!4478 thiss!28909)))) tp!1352508))))

(declare-fun b!4759043 () Bool)

(declare-fun e!2969438 () Bool)

(declare-fun tp!1352509 () Bool)

(assert (=> b!4759043 (= e!2969438 tp!1352509)))

(declare-fun b!4759042 () Bool)

(assert (=> b!4759042 (= e!2969437 (and (inv!68780 (xs!17784 (c!811952 (totalInput!4478 thiss!28909)))) e!2969438))))

(assert (=> b!4758899 (= tp!1352440 (and (inv!68774 (c!811952 (totalInput!4478 thiss!28909))) e!2969437))))

(assert (= (and b!4758899 ((_ is Node!14478) (c!811952 (totalInput!4478 thiss!28909)))) b!4759041))

(assert (= b!4759042 b!4759043))

(assert (= (and b!4758899 ((_ is Leaf!23569) (c!811952 (totalInput!4478 thiss!28909)))) b!4759042))

(declare-fun m!5728455 () Bool)

(assert (=> b!4759041 m!5728455))

(declare-fun m!5728457 () Bool)

(assert (=> b!4759041 m!5728457))

(declare-fun m!5728459 () Bool)

(assert (=> b!4759042 m!5728459))

(assert (=> b!4758899 m!5728278))

(declare-fun b_lambda!183771 () Bool)

(assert (= b_lambda!183769 (or b!4758903 b_lambda!183771)))

(declare-fun bs!1147019 () Bool)

(declare-fun d!1521197 () Bool)

(assert (= bs!1147019 (and d!1521197 b!4758903)))

(assert (=> bs!1147019 (= (dynLambda!21913 lambda!223630 (tuple2!55211 lt!1923967 (apply!12517 (cache!4565 thiss!28909) lt!1923967))) (validCacheMapFindLongestMatchBody!15 (tuple2!55211 lt!1923967 (apply!12517 (cache!4565 thiss!28909) lt!1923967)) localTotalInput!8))))

(assert (=> bs!1147019 m!5728264))

(assert (=> d!1521193 d!1521197))

(declare-fun b_lambda!183773 () Bool)

(assert (= b_lambda!183765 (or (and b!4758898 b_free!129271) b_lambda!183773)))

(declare-fun b_lambda!183775 () Bool)

(assert (= b_lambda!183767 (or (and b!4758898 b_free!129271) b_lambda!183775)))

(check-sat (not setNonEmpty!27064) (not b!4759041) (not b!4759011) (not b!4758908) (not setNonEmpty!27057) (not b!4758964) (not b!4758970) (not d!1521191) (not d!1521173) (not b!4759042) (not b!4758950) (not bm!333629) (not b!4758953) (not bs!1147019) (not d!1521193) (not bm!333633) (not setNonEmpty!27061) (not setNonEmpty!27059) (not setNonEmpty!27060) b_and!340881 (not b_lambda!183771) (not b!4758969) (not b!4758954) (not b!4758986) (not b!4759016) (not b!4758942) b_and!340885 (not b!4758998) (not bm!333630) (not b!4759014) (not b!4758899) (not b!4759010) (not d!1521169) (not b!4759017) (not b!4758937) (not b!4759013) (not b!4759039) (not b!4758940) (not b!4758984) (not b!4758991) (not b!4759043) (not b!4759018) (not b_next!129975) (not b_next!129977) (not setNonEmpty!27052) (not b!4758985) (not b!4759015) (not b!4758989) (not b!4758962) (not b!4758949) (not d!1521185) (not mapNonEmpty!21524) (not b!4759019) (not b!4759040) (not b!4758936) (not d!1521175) (not b!4758955) (not b!4758999) (not b!4759029) (not d!1521179) (not b!4759012) (not b!4759024) (not setNonEmpty!27058) (not b!4759038) (not bm!333634) (not b!4758943) (not b_lambda!183773) (not d!1521171) (not b_lambda!183775) (not bm!333631) (not bm!333632))
(check-sat b_and!340885 b_and!340881 (not b_next!129977) (not b_next!129975))
