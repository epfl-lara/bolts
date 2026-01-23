; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206460 () Bool)

(assert start!206460)

(declare-fun b!2112116 () Bool)

(declare-fun b_free!61065 () Bool)

(declare-fun b_next!61769 () Bool)

(assert (=> b!2112116 (= b_free!61065 (not b_next!61769))))

(declare-fun tp!643308 () Bool)

(declare-fun b_and!170645 () Bool)

(assert (=> b!2112116 (= tp!643308 b_and!170645)))

(declare-fun b!2112088 () Bool)

(declare-fun b_free!61067 () Bool)

(declare-fun b_next!61771 () Bool)

(assert (=> b!2112088 (= b_free!61067 (not b_next!61771))))

(declare-fun tp!643307 () Bool)

(declare-fun b_and!170647 () Bool)

(assert (=> b!2112088 (= tp!643307 b_and!170647)))

(declare-fun b!2112113 () Bool)

(declare-fun b_free!61069 () Bool)

(declare-fun b_next!61773 () Bool)

(assert (=> b!2112113 (= b_free!61069 (not b_next!61773))))

(declare-fun tp!643306 () Bool)

(declare-fun b_and!170649 () Bool)

(assert (=> b!2112113 (= tp!643306 b_and!170649)))

(declare-fun b!2112106 () Bool)

(declare-fun b_free!61071 () Bool)

(declare-fun b_next!61775 () Bool)

(assert (=> b!2112106 (= b_free!61071 (not b_next!61775))))

(declare-fun tp!643309 () Bool)

(declare-fun b_and!170651 () Bool)

(assert (=> b!2112106 (= tp!643309 b_and!170651)))

(declare-datatypes ((C!11376 0))(
  ( (C!11377 (val!6674 Int)) )
))
(declare-datatypes ((List!23541 0))(
  ( (Nil!23457) (Cons!23457 (h!28858 C!11376) (t!196050 List!23541)) )
))
(declare-datatypes ((IArray!15521 0))(
  ( (IArray!15522 (innerList!7818 List!23541)) )
))
(declare-datatypes ((Conc!7758 0))(
  ( (Node!7758 (left!18220 Conc!7758) (right!18550 Conc!7758) (csize!15746 Int) (cheight!7969 Int)) (Leaf!11333 (xs!10700 IArray!15521) (csize!15747 Int)) (Empty!7758) )
))
(declare-datatypes ((BalanceConc!15278 0))(
  ( (BalanceConc!15279 (c!339157 Conc!7758)) )
))
(declare-fun input!6603 () BalanceConc!15278)

(declare-datatypes ((Regex!5615 0))(
  ( (ElementMatch!5615 (c!339158 C!11376)) (Concat!9917 (regOne!11742 Regex!5615) (regTwo!11742 Regex!5615)) (EmptyExpr!5615) (Star!5615 (reg!5944 Regex!5615)) (EmptyLang!5615) (Union!5615 (regOne!11743 Regex!5615) (regTwo!11743 Regex!5615)) )
))
(declare-datatypes ((List!23542 0))(
  ( (Nil!23458) (Cons!23458 (h!28859 Regex!5615) (t!196051 List!23542)) )
))
(declare-datatypes ((Context!2370 0))(
  ( (Context!2371 (exprs!1685 List!23542)) )
))
(declare-datatypes ((tuple3!2706 0))(
  ( (tuple3!2707 (_1!13249 Regex!5615) (_2!13249 Context!2370) (_3!1817 C!11376)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22864 0))(
  ( (tuple2!22865 (_1!13250 tuple3!2706) (_2!13250 (InoxSet Context!2370))) )
))
(declare-datatypes ((List!23543 0))(
  ( (Nil!23459) (Cons!23459 (h!28860 tuple2!22864) (t!196052 List!23543)) )
))
(declare-datatypes ((array!8042 0))(
  ( (array!8043 (arr!3564 (Array (_ BitVec 32) (_ BitVec 64))) (size!18311 (_ BitVec 32))) )
))
(declare-datatypes ((array!8044 0))(
  ( (array!8045 (arr!3565 (Array (_ BitVec 32) List!23543)) (size!18312 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4656 0))(
  ( (LongMapFixedSize!4657 (defaultEntry!2693 Int) (mask!6451 (_ BitVec 32)) (extraKeys!2576 (_ BitVec 32)) (zeroValue!2586 List!23543) (minValue!2586 List!23543) (_size!4707 (_ BitVec 32)) (_keys!2625 array!8042) (_values!2608 array!8044) (_vacant!2389 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9137 0))(
  ( (Cell!9138 (v!27983 LongMapFixedSize!4656)) )
))
(declare-datatypes ((MutLongMap!2328 0))(
  ( (LongMap!2328 (underlying!4851 Cell!9137)) (MutLongMapExt!2327 (__x!15160 Int)) )
))
(declare-datatypes ((Cell!9139 0))(
  ( (Cell!9140 (v!27984 MutLongMap!2328)) )
))
(declare-datatypes ((tuple2!22866 0))(
  ( (tuple2!22867 (_1!13251 Context!2370) (_2!13251 C!11376)) )
))
(declare-datatypes ((tuple2!22868 0))(
  ( (tuple2!22869 (_1!13252 tuple2!22866) (_2!13252 (InoxSet Context!2370))) )
))
(declare-datatypes ((List!23544 0))(
  ( (Nil!23460) (Cons!23460 (h!28861 tuple2!22868) (t!196053 List!23544)) )
))
(declare-datatypes ((array!8046 0))(
  ( (array!8047 (arr!3566 (Array (_ BitVec 32) List!23544)) (size!18313 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4658 0))(
  ( (LongMapFixedSize!4659 (defaultEntry!2694 Int) (mask!6452 (_ BitVec 32)) (extraKeys!2577 (_ BitVec 32)) (zeroValue!2587 List!23544) (minValue!2587 List!23544) (_size!4708 (_ BitVec 32)) (_keys!2626 array!8042) (_values!2609 array!8046) (_vacant!2390 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9141 0))(
  ( (Cell!9142 (v!27985 LongMapFixedSize!4658)) )
))
(declare-datatypes ((Hashable!2242 0))(
  ( (HashableExt!2241 (__x!15161 Int)) )
))
(declare-datatypes ((MutLongMap!2329 0))(
  ( (LongMap!2329 (underlying!4852 Cell!9141)) (MutLongMapExt!2328 (__x!15162 Int)) )
))
(declare-datatypes ((Cell!9143 0))(
  ( (Cell!9144 (v!27986 MutLongMap!2329)) )
))
(declare-datatypes ((MutableMap!2242 0))(
  ( (MutableMapExt!2241 (__x!15163 Int)) (HashMap!2242 (underlying!4853 Cell!9143) (hashF!4165 Hashable!2242) (_size!4709 (_ BitVec 32)) (defaultValue!2404 Int)) )
))
(declare-datatypes ((CacheUp!1538 0))(
  ( (CacheUp!1539 (cache!2623 MutableMap!2242)) )
))
(declare-datatypes ((Hashable!2243 0))(
  ( (HashableExt!2242 (__x!15164 Int)) )
))
(declare-datatypes ((MutableMap!2243 0))(
  ( (MutableMapExt!2242 (__x!15165 Int)) (HashMap!2243 (underlying!4854 Cell!9139) (hashF!4166 Hashable!2243) (_size!4710 (_ BitVec 32)) (defaultValue!2405 Int)) )
))
(declare-datatypes ((CacheDown!1540 0))(
  ( (CacheDown!1541 (cache!2624 MutableMap!2243)) )
))
(declare-datatypes ((tuple3!2708 0))(
  ( (tuple3!2709 (_1!13253 Int) (_2!13253 CacheUp!1538) (_3!1818 CacheDown!1540)) )
))
(declare-fun lt!792640 () tuple3!2708)

(declare-fun e!1343619 () Bool)

(declare-fun b!2112084 () Bool)

(declare-datatypes ((tuple2!22870 0))(
  ( (tuple2!22871 (_1!13254 BalanceConc!15278) (_2!13254 BalanceConc!15278)) )
))
(declare-datatypes ((tuple3!2710 0))(
  ( (tuple3!2711 (_1!13255 tuple2!22870) (_2!13255 CacheUp!1538) (_3!1819 CacheDown!1540)) )
))
(declare-fun lt!792642 () tuple3!2710)

(declare-fun splitAt!7 (BalanceConc!15278 Int) tuple2!22870)

(assert (=> b!2112084 (= e!1343619 (= lt!792642 (tuple3!2711 (splitAt!7 input!6603 (_1!13253 lt!792640)) (_2!13253 lt!792640) (_3!1818 lt!792640))))))

(declare-fun b!2112085 () Bool)

(declare-fun e!1343616 () Bool)

(declare-fun e!1343622 () Bool)

(declare-fun lt!792643 () MutLongMap!2328)

(get-info :version)

(assert (=> b!2112085 (= e!1343616 (and e!1343622 ((_ is LongMap!2328) lt!792643)))))

(declare-fun cacheDown!1197 () CacheDown!1540)

(assert (=> b!2112085 (= lt!792643 (v!27984 (underlying!4854 (cache!2624 cacheDown!1197))))))

(declare-fun b!2112086 () Bool)

(declare-fun e!1343620 () Bool)

(declare-fun e!1343607 () Bool)

(assert (=> b!2112086 (= e!1343620 e!1343607)))

(declare-fun b!2112087 () Bool)

(declare-fun res!917168 () Bool)

(declare-fun e!1343609 () Bool)

(assert (=> b!2112087 (=> (not res!917168) (not e!1343609))))

(declare-fun valid!1839 (CacheUp!1538) Bool)

(assert (=> b!2112087 (= res!917168 (valid!1839 (_2!13255 lt!792642)))))

(declare-fun e!1343606 () Bool)

(declare-fun e!1343603 () Bool)

(declare-fun cacheUp!1078 () CacheUp!1538)

(declare-fun tp!643315 () Bool)

(declare-fun tp!643310 () Bool)

(declare-fun array_inv!2564 (array!8042) Bool)

(declare-fun array_inv!2565 (array!8046) Bool)

(assert (=> b!2112088 (= e!1343606 (and tp!643307 tp!643315 tp!643310 (array_inv!2564 (_keys!2626 (v!27985 (underlying!4852 (v!27986 (underlying!4853 (cache!2623 cacheUp!1078))))))) (array_inv!2565 (_values!2609 (v!27985 (underlying!4852 (v!27986 (underlying!4853 (cache!2623 cacheUp!1078))))))) e!1343603))))

(declare-fun b!2112089 () Bool)

(declare-fun res!917164 () Bool)

(declare-fun e!1343611 () Bool)

(assert (=> b!2112089 (=> (not res!917164) (not e!1343611))))

(declare-fun lt!792638 () tuple3!2710)

(assert (=> b!2112089 (= res!917164 (valid!1839 (_2!13255 lt!792638)))))

(declare-fun e!1343621 () Bool)

(declare-fun r!15329 () Regex!5615)

(declare-fun totalInput!1248 () BalanceConc!15278)

(declare-fun b!2112090 () Bool)

(declare-fun lt!792639 () tuple2!22870)

(declare-fun findLongestMatchWithZipperSequenceV2!74 (Regex!5615 BalanceConc!15278 BalanceConc!15278) tuple2!22870)

(assert (=> b!2112090 (= e!1343621 (= (findLongestMatchWithZipperSequenceV2!74 r!15329 input!6603 totalInput!1248) lt!792639))))

(declare-fun b!2112091 () Bool)

(declare-fun e!1343623 () Bool)

(assert (=> b!2112091 (= e!1343623 e!1343606)))

(declare-fun b!2112092 () Bool)

(declare-fun valid!1840 (CacheDown!1540) Bool)

(assert (=> b!2112092 (= e!1343609 (valid!1840 (_3!1819 lt!792642)))))

(declare-fun b!2112093 () Bool)

(declare-fun e!1343604 () Bool)

(assert (=> b!2112093 (= e!1343622 e!1343604)))

(declare-fun mapNonEmpty!11210 () Bool)

(declare-fun mapRes!11211 () Bool)

(declare-fun tp!643321 () Bool)

(declare-fun tp!643316 () Bool)

(assert (=> mapNonEmpty!11210 (= mapRes!11211 (and tp!643321 tp!643316))))

(declare-fun mapRest!11211 () (Array (_ BitVec 32) List!23543))

(declare-fun mapKey!11211 () (_ BitVec 32))

(declare-fun mapValue!11211 () List!23543)

(assert (=> mapNonEmpty!11210 (= (arr!3565 (_values!2608 (v!27983 (underlying!4851 (v!27984 (underlying!4854 (cache!2624 cacheDown!1197))))))) (store mapRest!11211 mapKey!11211 mapValue!11211))))

(declare-fun b!2112094 () Bool)

(declare-fun e!1343605 () Bool)

(declare-fun tp!643311 () Bool)

(assert (=> b!2112094 (= e!1343605 (and tp!643311 mapRes!11211))))

(declare-fun condMapEmpty!11210 () Bool)

(declare-fun mapDefault!11210 () List!23543)

(assert (=> b!2112094 (= condMapEmpty!11210 (= (arr!3565 (_values!2608 (v!27983 (underlying!4851 (v!27984 (underlying!4854 (cache!2624 cacheDown!1197))))))) ((as const (Array (_ BitVec 32) List!23543)) mapDefault!11210)))))

(declare-fun b!2112095 () Bool)

(declare-fun e!1343601 () Bool)

(declare-fun tp!643324 () Bool)

(declare-fun tp!643313 () Bool)

(assert (=> b!2112095 (= e!1343601 (and tp!643324 tp!643313))))

(declare-fun mapIsEmpty!11210 () Bool)

(assert (=> mapIsEmpty!11210 mapRes!11211))

(declare-fun b!2112096 () Bool)

(declare-fun e!1343624 () Bool)

(assert (=> b!2112096 (= e!1343624 e!1343623)))

(declare-fun b!2112097 () Bool)

(declare-fun e!1343614 () Bool)

(declare-fun lt!792647 () MutLongMap!2329)

(assert (=> b!2112097 (= e!1343614 (and e!1343624 ((_ is LongMap!2329) lt!792647)))))

(assert (=> b!2112097 (= lt!792647 (v!27986 (underlying!4853 (cache!2623 cacheUp!1078))))))

(declare-fun b!2112098 () Bool)

(declare-fun e!1343602 () Bool)

(declare-fun tp!643322 () Bool)

(declare-fun inv!31035 (Conc!7758) Bool)

(assert (=> b!2112098 (= e!1343602 (and (inv!31035 (c!339157 totalInput!1248)) tp!643322))))

(declare-fun mapNonEmpty!11211 () Bool)

(declare-fun mapRes!11210 () Bool)

(declare-fun tp!643319 () Bool)

(declare-fun tp!643317 () Bool)

(assert (=> mapNonEmpty!11211 (= mapRes!11210 (and tp!643319 tp!643317))))

(declare-fun mapKey!11210 () (_ BitVec 32))

(declare-fun mapRest!11210 () (Array (_ BitVec 32) List!23544))

(declare-fun mapValue!11210 () List!23544)

(assert (=> mapNonEmpty!11211 (= (arr!3566 (_values!2609 (v!27985 (underlying!4852 (v!27986 (underlying!4853 (cache!2623 cacheUp!1078))))))) (store mapRest!11210 mapKey!11210 mapValue!11210))))

(declare-fun b!2112099 () Bool)

(assert (=> b!2112099 (= e!1343611 (valid!1840 (_3!1819 lt!792638)))))

(declare-fun b!2112100 () Bool)

(declare-fun e!1343608 () Bool)

(declare-fun e!1343610 () Bool)

(assert (=> b!2112100 (= e!1343608 e!1343610)))

(declare-fun b!2112101 () Bool)

(declare-fun tp!643314 () Bool)

(declare-fun tp!643323 () Bool)

(assert (=> b!2112101 (= e!1343601 (and tp!643314 tp!643323))))

(declare-fun b!2112102 () Bool)

(declare-fun e!1343613 () Bool)

(declare-datatypes ((tuple2!22872 0))(
  ( (tuple2!22873 (_1!13256 List!23541) (_2!13256 List!23541)) )
))
(declare-fun lt!792646 () tuple2!22872)

(declare-fun list!9484 (BalanceConc!15278) List!23541)

(assert (=> b!2112102 (= e!1343613 (= (list!9484 (_2!13254 lt!792639)) (_2!13256 lt!792646)))))

(declare-fun b!2112103 () Bool)

(declare-fun tp!643318 () Bool)

(assert (=> b!2112103 (= e!1343603 (and tp!643318 mapRes!11210))))

(declare-fun condMapEmpty!11211 () Bool)

(declare-fun mapDefault!11211 () List!23544)

(assert (=> b!2112103 (= condMapEmpty!11211 (= (arr!3566 (_values!2609 (v!27985 (underlying!4852 (v!27986 (underlying!4853 (cache!2623 cacheUp!1078))))))) ((as const (Array (_ BitVec 32) List!23544)) mapDefault!11211)))))

(declare-fun b!2112104 () Bool)

(declare-fun e!1343617 () Bool)

(assert (=> b!2112104 (= e!1343604 e!1343617)))

(declare-fun b!2112105 () Bool)

(declare-fun tp!643325 () Bool)

(assert (=> b!2112105 (= e!1343601 tp!643325)))

(declare-fun res!917158 () Bool)

(declare-fun e!1343600 () Bool)

(assert (=> start!206460 (=> (not res!917158) (not e!1343600))))

(declare-fun validRegex!2213 (Regex!5615) Bool)

(assert (=> start!206460 (= res!917158 (validRegex!2213 r!15329))))

(assert (=> start!206460 e!1343600))

(declare-fun e!1343618 () Bool)

(declare-fun inv!31036 (BalanceConc!15278) Bool)

(assert (=> start!206460 (and (inv!31036 input!6603) e!1343618)))

(declare-fun inv!31037 (CacheDown!1540) Bool)

(assert (=> start!206460 (and (inv!31037 cacheDown!1197) e!1343620)))

(assert (=> start!206460 e!1343601))

(assert (=> start!206460 (and (inv!31036 totalInput!1248) e!1343602)))

(declare-fun inv!31038 (CacheUp!1538) Bool)

(assert (=> start!206460 (and (inv!31038 cacheUp!1078) e!1343608)))

(assert (=> b!2112106 (= e!1343607 (and e!1343616 tp!643309))))

(declare-fun b!2112107 () Bool)

(declare-fun e!1343612 () Bool)

(assert (=> b!2112107 (= e!1343612 (not true))))

(assert (=> b!2112107 e!1343611))

(declare-fun res!917165 () Bool)

(assert (=> b!2112107 (=> (not res!917165) (not e!1343611))))

(assert (=> b!2112107 (= res!917165 (= (_1!13255 lt!792638) lt!792639))))

(declare-fun lt!792650 () (InoxSet Context!2370))

(declare-fun findLongestMatchZipperFastV2MemOnlyDeriv!3 ((InoxSet Context!2370) BalanceConc!15278 BalanceConc!15278 CacheUp!1538 CacheDown!1540) tuple3!2710)

(assert (=> b!2112107 (= lt!792638 (findLongestMatchZipperFastV2MemOnlyDeriv!3 lt!792650 input!6603 totalInput!1248 (_2!13255 lt!792642) (_3!1819 lt!792642)))))

(assert (=> b!2112107 e!1343619))

(declare-fun res!917159 () Bool)

(assert (=> b!2112107 (=> (not res!917159) (not e!1343619))))

(declare-fun lt!792645 () Int)

(declare-fun lt!792644 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!2 ((InoxSet Context!2370) Int BalanceConc!15278 Int) Int)

(assert (=> b!2112107 (= res!917159 (= (_1!13253 lt!792640) (findLongestMatchInnerZipperFastV2!2 lt!792650 lt!792645 totalInput!1248 lt!792644)))))

(declare-fun findLongestMatchInnerZipperFastV2MemOnlyDeriv!2 ((InoxSet Context!2370) Int BalanceConc!15278 Int CacheUp!1538 CacheDown!1540) tuple3!2708)

(assert (=> b!2112107 (= lt!792640 (findLongestMatchInnerZipperFastV2MemOnlyDeriv!2 lt!792650 lt!792645 totalInput!1248 lt!792644 cacheUp!1078 cacheDown!1197))))

(declare-fun size!18314 (BalanceConc!15278) Int)

(assert (=> b!2112107 (= lt!792645 (- lt!792644 (size!18314 input!6603)))))

(assert (=> b!2112107 (= lt!792644 (size!18314 totalInput!1248))))

(assert (=> b!2112107 e!1343609))

(declare-fun res!917156 () Bool)

(assert (=> b!2112107 (=> (not res!917156) (not e!1343609))))

(assert (=> b!2112107 (= res!917156 (= (_1!13255 lt!792642) lt!792639))))

(assert (=> b!2112107 (= lt!792642 (findLongestMatchZipperFastV2MemOnlyDeriv!3 lt!792650 input!6603 totalInput!1248 cacheUp!1078 cacheDown!1197))))

(assert (=> b!2112107 e!1343621))

(declare-fun res!917163 () Bool)

(assert (=> b!2112107 (=> (not res!917163) (not e!1343621))))

(declare-fun lt!792649 () List!23541)

(declare-fun sizeTr!89 (List!23541 Int) Int)

(declare-fun size!18315 (List!23541) Int)

(assert (=> b!2112107 (= res!917163 (= (sizeTr!89 lt!792649 0) (size!18315 lt!792649)))))

(declare-datatypes ((Unit!37524 0))(
  ( (Unit!37525) )
))
(declare-fun lt!792641 () Unit!37524)

(declare-fun lemmaSizeTrEqualsSize!89 (List!23541 Int) Unit!37524)

(assert (=> b!2112107 (= lt!792641 (lemmaSizeTrEqualsSize!89 lt!792649 0))))

(assert (=> b!2112107 e!1343613))

(declare-fun res!917157 () Bool)

(assert (=> b!2112107 (=> (not res!917157) (not e!1343613))))

(assert (=> b!2112107 (= res!917157 (= (list!9484 (_1!13254 lt!792639)) (_1!13256 lt!792646)))))

(declare-fun findLongestMatch!506 (Regex!5615 List!23541) tuple2!22872)

(assert (=> b!2112107 (= lt!792646 (findLongestMatch!506 r!15329 lt!792649))))

(declare-fun findLongestMatchZipperFastV2!5 ((InoxSet Context!2370) BalanceConc!15278 BalanceConc!15278) tuple2!22870)

(assert (=> b!2112107 (= lt!792639 (findLongestMatchZipperFastV2!5 lt!792650 input!6603 totalInput!1248))))

(declare-fun lt!792648 () Unit!37524)

(declare-fun longestMatchV2SameAsRegex!5 (Regex!5615 (InoxSet Context!2370) BalanceConc!15278 BalanceConc!15278) Unit!37524)

(assert (=> b!2112107 (= lt!792648 (longestMatchV2SameAsRegex!5 r!15329 lt!792650 input!6603 totalInput!1248))))

(declare-fun focus!261 (Regex!5615) (InoxSet Context!2370))

(assert (=> b!2112107 (= lt!792650 (focus!261 r!15329))))

(declare-fun b!2112108 () Bool)

(assert (=> b!2112108 (= e!1343600 e!1343612)))

(declare-fun res!917161 () Bool)

(assert (=> b!2112108 (=> (not res!917161) (not e!1343612))))

(declare-fun isSuffix!587 (List!23541 List!23541) Bool)

(assert (=> b!2112108 (= res!917161 (isSuffix!587 lt!792649 (list!9484 totalInput!1248)))))

(assert (=> b!2112108 (= lt!792649 (list!9484 input!6603))))

(declare-fun b!2112109 () Bool)

(declare-fun res!917167 () Bool)

(assert (=> b!2112109 (=> (not res!917167) (not e!1343619))))

(assert (=> b!2112109 (= res!917167 (valid!1839 (_2!13253 lt!792640)))))

(declare-fun b!2112110 () Bool)

(declare-fun res!917160 () Bool)

(assert (=> b!2112110 (=> (not res!917160) (not e!1343600))))

(assert (=> b!2112110 (= res!917160 (valid!1840 cacheDown!1197))))

(declare-fun b!2112111 () Bool)

(declare-fun res!917162 () Bool)

(assert (=> b!2112111 (=> (not res!917162) (not e!1343619))))

(assert (=> b!2112111 (= res!917162 (valid!1840 (_3!1818 lt!792640)))))

(declare-fun b!2112112 () Bool)

(declare-fun tp!643312 () Bool)

(assert (=> b!2112112 (= e!1343618 (and (inv!31035 (c!339157 input!6603)) tp!643312))))

(declare-fun tp!643305 () Bool)

(declare-fun tp!643320 () Bool)

(declare-fun array_inv!2566 (array!8044) Bool)

(assert (=> b!2112113 (= e!1343617 (and tp!643306 tp!643320 tp!643305 (array_inv!2564 (_keys!2625 (v!27983 (underlying!4851 (v!27984 (underlying!4854 (cache!2624 cacheDown!1197))))))) (array_inv!2566 (_values!2608 (v!27983 (underlying!4851 (v!27984 (underlying!4854 (cache!2624 cacheDown!1197))))))) e!1343605))))

(declare-fun b!2112114 () Bool)

(declare-fun tp_is_empty!9419 () Bool)

(assert (=> b!2112114 (= e!1343601 tp_is_empty!9419)))

(declare-fun mapIsEmpty!11211 () Bool)

(assert (=> mapIsEmpty!11211 mapRes!11210))

(declare-fun b!2112115 () Bool)

(declare-fun res!917166 () Bool)

(assert (=> b!2112115 (=> (not res!917166) (not e!1343600))))

(assert (=> b!2112115 (= res!917166 (valid!1839 cacheUp!1078))))

(assert (=> b!2112116 (= e!1343610 (and e!1343614 tp!643308))))

(assert (= (and start!206460 res!917158) b!2112115))

(assert (= (and b!2112115 res!917166) b!2112110))

(assert (= (and b!2112110 res!917160) b!2112108))

(assert (= (and b!2112108 res!917161) b!2112107))

(assert (= (and b!2112107 res!917157) b!2112102))

(assert (= (and b!2112107 res!917163) b!2112090))

(assert (= (and b!2112107 res!917156) b!2112087))

(assert (= (and b!2112087 res!917168) b!2112092))

(assert (= (and b!2112107 res!917159) b!2112109))

(assert (= (and b!2112109 res!917167) b!2112111))

(assert (= (and b!2112111 res!917162) b!2112084))

(assert (= (and b!2112107 res!917165) b!2112089))

(assert (= (and b!2112089 res!917164) b!2112099))

(assert (= start!206460 b!2112112))

(assert (= (and b!2112094 condMapEmpty!11210) mapIsEmpty!11210))

(assert (= (and b!2112094 (not condMapEmpty!11210)) mapNonEmpty!11210))

(assert (= b!2112113 b!2112094))

(assert (= b!2112104 b!2112113))

(assert (= b!2112093 b!2112104))

(assert (= (and b!2112085 ((_ is LongMap!2328) (v!27984 (underlying!4854 (cache!2624 cacheDown!1197))))) b!2112093))

(assert (= b!2112106 b!2112085))

(assert (= (and b!2112086 ((_ is HashMap!2243) (cache!2624 cacheDown!1197))) b!2112106))

(assert (= start!206460 b!2112086))

(assert (= (and start!206460 ((_ is ElementMatch!5615) r!15329)) b!2112114))

(assert (= (and start!206460 ((_ is Concat!9917) r!15329)) b!2112101))

(assert (= (and start!206460 ((_ is Star!5615) r!15329)) b!2112105))

(assert (= (and start!206460 ((_ is Union!5615) r!15329)) b!2112095))

(assert (= start!206460 b!2112098))

(assert (= (and b!2112103 condMapEmpty!11211) mapIsEmpty!11211))

(assert (= (and b!2112103 (not condMapEmpty!11211)) mapNonEmpty!11211))

(assert (= b!2112088 b!2112103))

(assert (= b!2112091 b!2112088))

(assert (= b!2112096 b!2112091))

(assert (= (and b!2112097 ((_ is LongMap!2329) (v!27986 (underlying!4853 (cache!2623 cacheUp!1078))))) b!2112096))

(assert (= b!2112116 b!2112097))

(assert (= (and b!2112100 ((_ is HashMap!2242) (cache!2623 cacheUp!1078))) b!2112116))

(assert (= start!206460 b!2112100))

(declare-fun m!2568739 () Bool)

(assert (=> b!2112092 m!2568739))

(declare-fun m!2568741 () Bool)

(assert (=> b!2112099 m!2568741))

(declare-fun m!2568743 () Bool)

(assert (=> b!2112102 m!2568743))

(declare-fun m!2568745 () Bool)

(assert (=> b!2112113 m!2568745))

(declare-fun m!2568747 () Bool)

(assert (=> b!2112113 m!2568747))

(declare-fun m!2568749 () Bool)

(assert (=> b!2112108 m!2568749))

(assert (=> b!2112108 m!2568749))

(declare-fun m!2568751 () Bool)

(assert (=> b!2112108 m!2568751))

(declare-fun m!2568753 () Bool)

(assert (=> b!2112108 m!2568753))

(declare-fun m!2568755 () Bool)

(assert (=> start!206460 m!2568755))

(declare-fun m!2568757 () Bool)

(assert (=> start!206460 m!2568757))

(declare-fun m!2568759 () Bool)

(assert (=> start!206460 m!2568759))

(declare-fun m!2568761 () Bool)

(assert (=> start!206460 m!2568761))

(declare-fun m!2568763 () Bool)

(assert (=> start!206460 m!2568763))

(declare-fun m!2568765 () Bool)

(assert (=> b!2112087 m!2568765))

(declare-fun m!2568767 () Bool)

(assert (=> b!2112111 m!2568767))

(declare-fun m!2568769 () Bool)

(assert (=> b!2112112 m!2568769))

(declare-fun m!2568771 () Bool)

(assert (=> b!2112098 m!2568771))

(declare-fun m!2568773 () Bool)

(assert (=> b!2112107 m!2568773))

(declare-fun m!2568775 () Bool)

(assert (=> b!2112107 m!2568775))

(declare-fun m!2568777 () Bool)

(assert (=> b!2112107 m!2568777))

(declare-fun m!2568779 () Bool)

(assert (=> b!2112107 m!2568779))

(declare-fun m!2568781 () Bool)

(assert (=> b!2112107 m!2568781))

(declare-fun m!2568783 () Bool)

(assert (=> b!2112107 m!2568783))

(declare-fun m!2568785 () Bool)

(assert (=> b!2112107 m!2568785))

(declare-fun m!2568787 () Bool)

(assert (=> b!2112107 m!2568787))

(declare-fun m!2568789 () Bool)

(assert (=> b!2112107 m!2568789))

(declare-fun m!2568791 () Bool)

(assert (=> b!2112107 m!2568791))

(declare-fun m!2568793 () Bool)

(assert (=> b!2112107 m!2568793))

(declare-fun m!2568795 () Bool)

(assert (=> b!2112107 m!2568795))

(declare-fun m!2568797 () Bool)

(assert (=> b!2112107 m!2568797))

(declare-fun m!2568799 () Bool)

(assert (=> b!2112107 m!2568799))

(declare-fun m!2568801 () Bool)

(assert (=> b!2112115 m!2568801))

(declare-fun m!2568803 () Bool)

(assert (=> b!2112084 m!2568803))

(declare-fun m!2568805 () Bool)

(assert (=> mapNonEmpty!11211 m!2568805))

(declare-fun m!2568807 () Bool)

(assert (=> b!2112110 m!2568807))

(declare-fun m!2568809 () Bool)

(assert (=> b!2112088 m!2568809))

(declare-fun m!2568811 () Bool)

(assert (=> b!2112088 m!2568811))

(declare-fun m!2568813 () Bool)

(assert (=> b!2112089 m!2568813))

(declare-fun m!2568815 () Bool)

(assert (=> b!2112109 m!2568815))

(declare-fun m!2568817 () Bool)

(assert (=> mapNonEmpty!11210 m!2568817))

(declare-fun m!2568819 () Bool)

(assert (=> b!2112090 m!2568819))

(check-sat tp_is_empty!9419 (not b!2112089) (not b!2112103) (not b!2112099) (not b!2112101) (not b!2112110) (not b!2112112) (not b!2112095) (not b!2112108) (not b!2112115) (not b_next!61769) (not b!2112113) b_and!170647 (not b!2112087) (not b!2112111) (not b_next!61771) (not b!2112102) (not b!2112105) (not b!2112092) (not b!2112090) (not b!2112088) (not start!206460) b_and!170651 (not mapNonEmpty!11210) (not b!2112098) (not b_next!61775) (not b!2112084) b_and!170645 (not b!2112094) (not b!2112107) b_and!170649 (not mapNonEmpty!11211) (not b_next!61773) (not b!2112109))
(check-sat (not b_next!61769) b_and!170647 (not b_next!61771) b_and!170651 b_and!170649 (not b_next!61773) (not b_next!61775) b_and!170645)
