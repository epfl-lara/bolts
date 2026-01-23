; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206464 () Bool)

(assert start!206464)

(declare-fun b!2112252 () Bool)

(declare-fun b_free!61081 () Bool)

(declare-fun b_next!61785 () Bool)

(assert (=> b!2112252 (= b_free!61081 (not b_next!61785))))

(declare-fun tp!643443 () Bool)

(declare-fun b_and!170661 () Bool)

(assert (=> b!2112252 (= tp!643443 b_and!170661)))

(declare-fun b!2112242 () Bool)

(declare-fun b_free!61083 () Bool)

(declare-fun b_next!61787 () Bool)

(assert (=> b!2112242 (= b_free!61083 (not b_next!61787))))

(declare-fun tp!643433 () Bool)

(declare-fun b_and!170663 () Bool)

(assert (=> b!2112242 (= tp!643433 b_and!170663)))

(declare-fun b!2112243 () Bool)

(declare-fun b_free!61085 () Bool)

(declare-fun b_next!61789 () Bool)

(assert (=> b!2112243 (= b_free!61085 (not b_next!61789))))

(declare-fun tp!643435 () Bool)

(declare-fun b_and!170665 () Bool)

(assert (=> b!2112243 (= tp!643435 b_and!170665)))

(declare-fun b!2112256 () Bool)

(declare-fun b_free!61087 () Bool)

(declare-fun b_next!61791 () Bool)

(assert (=> b!2112256 (= b_free!61087 (not b_next!61791))))

(declare-fun tp!643444 () Bool)

(declare-fun b_and!170667 () Bool)

(assert (=> b!2112256 (= tp!643444 b_and!170667)))

(declare-fun b!2112238 () Bool)

(declare-fun e!1343745 () Bool)

(declare-fun e!1343735 () Bool)

(assert (=> b!2112238 (= e!1343745 e!1343735)))

(declare-fun b!2112239 () Bool)

(declare-fun e!1343730 () Bool)

(assert (=> b!2112239 (= e!1343730 false)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!11380 0))(
  ( (C!11381 (val!6676 Int)) )
))
(declare-datatypes ((Regex!5617 0))(
  ( (ElementMatch!5617 (c!339161 C!11380)) (Concat!9919 (regOne!11746 Regex!5617) (regTwo!11746 Regex!5617)) (EmptyExpr!5617) (Star!5617 (reg!5946 Regex!5617)) (EmptyLang!5617) (Union!5617 (regOne!11747 Regex!5617) (regTwo!11747 Regex!5617)) )
))
(declare-datatypes ((List!23549 0))(
  ( (Nil!23465) (Cons!23465 (h!28866 Regex!5617) (t!196058 List!23549)) )
))
(declare-datatypes ((Context!2374 0))(
  ( (Context!2375 (exprs!1687 List!23549)) )
))
(declare-fun lt!792668 () (InoxSet Context!2374))

(declare-fun r!15329 () Regex!5617)

(declare-fun focus!263 (Regex!5617) (InoxSet Context!2374))

(assert (=> b!2112239 (= lt!792668 (focus!263 r!15329))))

(declare-fun b!2112240 () Bool)

(declare-fun e!1343737 () Bool)

(assert (=> b!2112240 (= e!1343737 e!1343745)))

(declare-fun b!2112241 () Bool)

(declare-fun e!1343732 () Bool)

(declare-fun e!1343744 () Bool)

(assert (=> b!2112241 (= e!1343732 e!1343744)))

(declare-datatypes ((tuple3!2714 0))(
  ( (tuple3!2715 (_1!13261 Regex!5617) (_2!13261 Context!2374) (_3!1821 C!11380)) )
))
(declare-datatypes ((tuple2!22880 0))(
  ( (tuple2!22881 (_1!13262 tuple3!2714) (_2!13262 (InoxSet Context!2374))) )
))
(declare-datatypes ((List!23550 0))(
  ( (Nil!23466) (Cons!23466 (h!28867 tuple2!22880) (t!196059 List!23550)) )
))
(declare-datatypes ((array!8054 0))(
  ( (array!8055 (arr!3570 (Array (_ BitVec 32) (_ BitVec 64))) (size!18319 (_ BitVec 32))) )
))
(declare-datatypes ((array!8056 0))(
  ( (array!8057 (arr!3571 (Array (_ BitVec 32) List!23550)) (size!18320 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4664 0))(
  ( (LongMapFixedSize!4665 (defaultEntry!2697 Int) (mask!6456 (_ BitVec 32)) (extraKeys!2580 (_ BitVec 32)) (zeroValue!2590 List!23550) (minValue!2590 List!23550) (_size!4715 (_ BitVec 32)) (_keys!2629 array!8054) (_values!2612 array!8056) (_vacant!2393 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9153 0))(
  ( (Cell!9154 (v!27991 LongMapFixedSize!4664)) )
))
(declare-datatypes ((MutLongMap!2332 0))(
  ( (LongMap!2332 (underlying!4859 Cell!9153)) (MutLongMapExt!2331 (__x!15172 Int)) )
))
(declare-datatypes ((Cell!9155 0))(
  ( (Cell!9156 (v!27992 MutLongMap!2332)) )
))
(declare-datatypes ((Hashable!2246 0))(
  ( (HashableExt!2245 (__x!15173 Int)) )
))
(declare-datatypes ((MutableMap!2246 0))(
  ( (MutableMapExt!2245 (__x!15174 Int)) (HashMap!2246 (underlying!4860 Cell!9155) (hashF!4169 Hashable!2246) (_size!4716 (_ BitVec 32)) (defaultValue!2408 Int)) )
))
(declare-datatypes ((CacheDown!1544 0))(
  ( (CacheDown!1545 (cache!2627 MutableMap!2246)) )
))
(declare-fun cacheDown!1197 () CacheDown!1544)

(declare-fun e!1343729 () Bool)

(declare-fun tp!643437 () Bool)

(declare-fun tp!643434 () Bool)

(declare-fun array_inv!2569 (array!8054) Bool)

(declare-fun array_inv!2570 (array!8056) Bool)

(assert (=> b!2112242 (= e!1343735 (and tp!643433 tp!643434 tp!643437 (array_inv!2569 (_keys!2629 (v!27991 (underlying!4859 (v!27992 (underlying!4860 (cache!2627 cacheDown!1197))))))) (array_inv!2570 (_values!2612 (v!27991 (underlying!4859 (v!27992 (underlying!4860 (cache!2627 cacheDown!1197))))))) e!1343729))))

(declare-fun e!1343739 () Bool)

(declare-fun e!1343738 () Bool)

(assert (=> b!2112243 (= e!1343739 (and e!1343738 tp!643435))))

(declare-fun b!2112244 () Bool)

(declare-fun e!1343741 () Bool)

(declare-fun tp!643451 () Bool)

(assert (=> b!2112244 (= e!1343741 tp!643451)))

(declare-fun b!2112245 () Bool)

(declare-fun e!1343733 () Bool)

(declare-datatypes ((List!23551 0))(
  ( (Nil!23467) (Cons!23467 (h!28868 C!11380) (t!196060 List!23551)) )
))
(declare-datatypes ((IArray!15525 0))(
  ( (IArray!15526 (innerList!7820 List!23551)) )
))
(declare-datatypes ((Conc!7760 0))(
  ( (Node!7760 (left!18223 Conc!7760) (right!18553 Conc!7760) (csize!15750 Int) (cheight!7971 Int)) (Leaf!11336 (xs!10702 IArray!15525) (csize!15751 Int)) (Empty!7760) )
))
(declare-datatypes ((BalanceConc!15282 0))(
  ( (BalanceConc!15283 (c!339162 Conc!7760)) )
))
(declare-fun totalInput!1248 () BalanceConc!15282)

(declare-fun tp!643440 () Bool)

(declare-fun inv!31043 (Conc!7760) Bool)

(assert (=> b!2112245 (= e!1343733 (and (inv!31043 (c!339162 totalInput!1248)) tp!643440))))

(declare-fun mapIsEmpty!11222 () Bool)

(declare-fun mapRes!11223 () Bool)

(assert (=> mapIsEmpty!11222 mapRes!11223))

(declare-fun b!2112246 () Bool)

(declare-fun tp_is_empty!9423 () Bool)

(assert (=> b!2112246 (= e!1343741 tp_is_empty!9423)))

(declare-fun b!2112247 () Bool)

(declare-fun e!1343736 () Bool)

(declare-fun e!1343726 () Bool)

(declare-datatypes ((tuple2!22882 0))(
  ( (tuple2!22883 (_1!13263 Context!2374) (_2!13263 C!11380)) )
))
(declare-datatypes ((tuple2!22884 0))(
  ( (tuple2!22885 (_1!13264 tuple2!22882) (_2!13264 (InoxSet Context!2374))) )
))
(declare-datatypes ((List!23552 0))(
  ( (Nil!23468) (Cons!23468 (h!28869 tuple2!22884) (t!196061 List!23552)) )
))
(declare-datatypes ((array!8058 0))(
  ( (array!8059 (arr!3572 (Array (_ BitVec 32) List!23552)) (size!18321 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4666 0))(
  ( (LongMapFixedSize!4667 (defaultEntry!2698 Int) (mask!6457 (_ BitVec 32)) (extraKeys!2581 (_ BitVec 32)) (zeroValue!2591 List!23552) (minValue!2591 List!23552) (_size!4717 (_ BitVec 32)) (_keys!2630 array!8054) (_values!2613 array!8058) (_vacant!2394 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9157 0))(
  ( (Cell!9158 (v!27993 LongMapFixedSize!4666)) )
))
(declare-datatypes ((MutLongMap!2333 0))(
  ( (LongMap!2333 (underlying!4861 Cell!9157)) (MutLongMapExt!2332 (__x!15175 Int)) )
))
(declare-fun lt!792667 () MutLongMap!2333)

(get-info :version)

(assert (=> b!2112247 (= e!1343736 (and e!1343726 ((_ is LongMap!2333) lt!792667)))))

(declare-datatypes ((Hashable!2247 0))(
  ( (HashableExt!2246 (__x!15176 Int)) )
))
(declare-datatypes ((Cell!9159 0))(
  ( (Cell!9160 (v!27994 MutLongMap!2333)) )
))
(declare-datatypes ((MutableMap!2247 0))(
  ( (MutableMapExt!2246 (__x!15177 Int)) (HashMap!2247 (underlying!4862 Cell!9159) (hashF!4170 Hashable!2247) (_size!4718 (_ BitVec 32)) (defaultValue!2409 Int)) )
))
(declare-datatypes ((CacheUp!1542 0))(
  ( (CacheUp!1543 (cache!2628 MutableMap!2247)) )
))
(declare-fun cacheUp!1078 () CacheUp!1542)

(assert (=> b!2112247 (= lt!792667 (v!27994 (underlying!4862 (cache!2628 cacheUp!1078))))))

(declare-fun res!917190 () Bool)

(assert (=> start!206464 (=> (not res!917190) (not e!1343730))))

(declare-fun validRegex!2214 (Regex!5617) Bool)

(assert (=> start!206464 (= res!917190 (validRegex!2214 r!15329))))

(assert (=> start!206464 e!1343730))

(declare-fun input!6603 () BalanceConc!15282)

(declare-fun e!1343727 () Bool)

(declare-fun inv!31044 (BalanceConc!15282) Bool)

(assert (=> start!206464 (and (inv!31044 input!6603) e!1343727)))

(declare-fun e!1343740 () Bool)

(declare-fun inv!31045 (CacheDown!1544) Bool)

(assert (=> start!206464 (and (inv!31045 cacheDown!1197) e!1343740)))

(assert (=> start!206464 e!1343741))

(assert (=> start!206464 (and (inv!31044 totalInput!1248) e!1343733)))

(declare-fun inv!31046 (CacheUp!1542) Bool)

(assert (=> start!206464 (and (inv!31046 cacheUp!1078) e!1343732)))

(declare-fun b!2112237 () Bool)

(declare-fun res!917189 () Bool)

(assert (=> b!2112237 (=> (not res!917189) (not e!1343730))))

(declare-fun valid!1842 (CacheUp!1542) Bool)

(assert (=> b!2112237 (= res!917189 (valid!1842 cacheUp!1078))))

(declare-fun mapNonEmpty!11222 () Bool)

(declare-fun mapRes!11222 () Bool)

(declare-fun tp!643450 () Bool)

(declare-fun tp!643449 () Bool)

(assert (=> mapNonEmpty!11222 (= mapRes!11222 (and tp!643450 tp!643449))))

(declare-fun mapKey!11222 () (_ BitVec 32))

(declare-fun mapRest!11223 () (Array (_ BitVec 32) List!23550))

(declare-fun mapValue!11223 () List!23550)

(assert (=> mapNonEmpty!11222 (= (arr!3571 (_values!2612 (v!27991 (underlying!4859 (v!27992 (underlying!4860 (cache!2627 cacheDown!1197))))))) (store mapRest!11223 mapKey!11222 mapValue!11223))))

(declare-fun b!2112248 () Bool)

(declare-fun tp!643432 () Bool)

(declare-fun tp!643442 () Bool)

(assert (=> b!2112248 (= e!1343741 (and tp!643432 tp!643442))))

(declare-fun b!2112249 () Bool)

(assert (=> b!2112249 (= e!1343740 e!1343739)))

(declare-fun b!2112250 () Bool)

(declare-fun e!1343742 () Bool)

(declare-fun tp!643441 () Bool)

(assert (=> b!2112250 (= e!1343742 (and tp!643441 mapRes!11223))))

(declare-fun condMapEmpty!11222 () Bool)

(declare-fun mapDefault!11222 () List!23552)

(assert (=> b!2112250 (= condMapEmpty!11222 (= (arr!3572 (_values!2613 (v!27993 (underlying!4861 (v!27994 (underlying!4862 (cache!2628 cacheUp!1078))))))) ((as const (Array (_ BitVec 32) List!23552)) mapDefault!11222)))))

(declare-fun b!2112251 () Bool)

(declare-fun tp!643448 () Bool)

(assert (=> b!2112251 (= e!1343727 (and (inv!31043 (c!339162 input!6603)) tp!643448))))

(declare-fun e!1343728 () Bool)

(declare-fun tp!643445 () Bool)

(declare-fun tp!643446 () Bool)

(declare-fun array_inv!2571 (array!8058) Bool)

(assert (=> b!2112252 (= e!1343728 (and tp!643443 tp!643446 tp!643445 (array_inv!2569 (_keys!2630 (v!27993 (underlying!4861 (v!27994 (underlying!4862 (cache!2628 cacheUp!1078))))))) (array_inv!2571 (_values!2613 (v!27993 (underlying!4861 (v!27994 (underlying!4862 (cache!2628 cacheUp!1078))))))) e!1343742))))

(declare-fun mapIsEmpty!11223 () Bool)

(assert (=> mapIsEmpty!11223 mapRes!11222))

(declare-fun b!2112253 () Bool)

(declare-fun e!1343743 () Bool)

(assert (=> b!2112253 (= e!1343726 e!1343743)))

(declare-fun b!2112254 () Bool)

(declare-fun lt!792666 () MutLongMap!2332)

(assert (=> b!2112254 (= e!1343738 (and e!1343737 ((_ is LongMap!2332) lt!792666)))))

(assert (=> b!2112254 (= lt!792666 (v!27992 (underlying!4860 (cache!2627 cacheDown!1197))))))

(declare-fun b!2112255 () Bool)

(declare-fun tp!643439 () Bool)

(declare-fun tp!643447 () Bool)

(assert (=> b!2112255 (= e!1343741 (and tp!643439 tp!643447))))

(assert (=> b!2112256 (= e!1343744 (and e!1343736 tp!643444))))

(declare-fun b!2112257 () Bool)

(declare-fun res!917192 () Bool)

(assert (=> b!2112257 (=> (not res!917192) (not e!1343730))))

(declare-fun isSuffix!589 (List!23551 List!23551) Bool)

(declare-fun list!9486 (BalanceConc!15282) List!23551)

(assert (=> b!2112257 (= res!917192 (isSuffix!589 (list!9486 input!6603) (list!9486 totalInput!1248)))))

(declare-fun b!2112258 () Bool)

(declare-fun tp!643431 () Bool)

(assert (=> b!2112258 (= e!1343729 (and tp!643431 mapRes!11222))))

(declare-fun condMapEmpty!11223 () Bool)

(declare-fun mapDefault!11223 () List!23550)

(assert (=> b!2112258 (= condMapEmpty!11223 (= (arr!3571 (_values!2612 (v!27991 (underlying!4859 (v!27992 (underlying!4860 (cache!2627 cacheDown!1197))))))) ((as const (Array (_ BitVec 32) List!23550)) mapDefault!11223)))))

(declare-fun b!2112259 () Bool)

(declare-fun res!917191 () Bool)

(assert (=> b!2112259 (=> (not res!917191) (not e!1343730))))

(declare-fun valid!1843 (CacheDown!1544) Bool)

(assert (=> b!2112259 (= res!917191 (valid!1843 cacheDown!1197))))

(declare-fun b!2112260 () Bool)

(assert (=> b!2112260 (= e!1343743 e!1343728)))

(declare-fun mapNonEmpty!11223 () Bool)

(declare-fun tp!643436 () Bool)

(declare-fun tp!643438 () Bool)

(assert (=> mapNonEmpty!11223 (= mapRes!11223 (and tp!643436 tp!643438))))

(declare-fun mapRest!11222 () (Array (_ BitVec 32) List!23552))

(declare-fun mapKey!11223 () (_ BitVec 32))

(declare-fun mapValue!11222 () List!23552)

(assert (=> mapNonEmpty!11223 (= (arr!3572 (_values!2613 (v!27993 (underlying!4861 (v!27994 (underlying!4862 (cache!2628 cacheUp!1078))))))) (store mapRest!11222 mapKey!11223 mapValue!11222))))

(assert (= (and start!206464 res!917190) b!2112237))

(assert (= (and b!2112237 res!917189) b!2112259))

(assert (= (and b!2112259 res!917191) b!2112257))

(assert (= (and b!2112257 res!917192) b!2112239))

(assert (= start!206464 b!2112251))

(assert (= (and b!2112258 condMapEmpty!11223) mapIsEmpty!11223))

(assert (= (and b!2112258 (not condMapEmpty!11223)) mapNonEmpty!11222))

(assert (= b!2112242 b!2112258))

(assert (= b!2112238 b!2112242))

(assert (= b!2112240 b!2112238))

(assert (= (and b!2112254 ((_ is LongMap!2332) (v!27992 (underlying!4860 (cache!2627 cacheDown!1197))))) b!2112240))

(assert (= b!2112243 b!2112254))

(assert (= (and b!2112249 ((_ is HashMap!2246) (cache!2627 cacheDown!1197))) b!2112243))

(assert (= start!206464 b!2112249))

(assert (= (and start!206464 ((_ is ElementMatch!5617) r!15329)) b!2112246))

(assert (= (and start!206464 ((_ is Concat!9919) r!15329)) b!2112248))

(assert (= (and start!206464 ((_ is Star!5617) r!15329)) b!2112244))

(assert (= (and start!206464 ((_ is Union!5617) r!15329)) b!2112255))

(assert (= start!206464 b!2112245))

(assert (= (and b!2112250 condMapEmpty!11222) mapIsEmpty!11222))

(assert (= (and b!2112250 (not condMapEmpty!11222)) mapNonEmpty!11223))

(assert (= b!2112252 b!2112250))

(assert (= b!2112260 b!2112252))

(assert (= b!2112253 b!2112260))

(assert (= (and b!2112247 ((_ is LongMap!2333) (v!27994 (underlying!4862 (cache!2628 cacheUp!1078))))) b!2112253))

(assert (= b!2112256 b!2112247))

(assert (= (and b!2112241 ((_ is HashMap!2247) (cache!2628 cacheUp!1078))) b!2112256))

(assert (= start!206464 b!2112241))

(declare-fun m!2568859 () Bool)

(assert (=> b!2112251 m!2568859))

(declare-fun m!2568861 () Bool)

(assert (=> b!2112259 m!2568861))

(declare-fun m!2568863 () Bool)

(assert (=> b!2112237 m!2568863))

(declare-fun m!2568865 () Bool)

(assert (=> b!2112252 m!2568865))

(declare-fun m!2568867 () Bool)

(assert (=> b!2112252 m!2568867))

(declare-fun m!2568869 () Bool)

(assert (=> mapNonEmpty!11223 m!2568869))

(declare-fun m!2568871 () Bool)

(assert (=> b!2112245 m!2568871))

(declare-fun m!2568873 () Bool)

(assert (=> b!2112257 m!2568873))

(declare-fun m!2568875 () Bool)

(assert (=> b!2112257 m!2568875))

(assert (=> b!2112257 m!2568873))

(assert (=> b!2112257 m!2568875))

(declare-fun m!2568877 () Bool)

(assert (=> b!2112257 m!2568877))

(declare-fun m!2568879 () Bool)

(assert (=> b!2112242 m!2568879))

(declare-fun m!2568881 () Bool)

(assert (=> b!2112242 m!2568881))

(declare-fun m!2568883 () Bool)

(assert (=> mapNonEmpty!11222 m!2568883))

(declare-fun m!2568885 () Bool)

(assert (=> start!206464 m!2568885))

(declare-fun m!2568887 () Bool)

(assert (=> start!206464 m!2568887))

(declare-fun m!2568889 () Bool)

(assert (=> start!206464 m!2568889))

(declare-fun m!2568891 () Bool)

(assert (=> start!206464 m!2568891))

(declare-fun m!2568893 () Bool)

(assert (=> start!206464 m!2568893))

(declare-fun m!2568895 () Bool)

(assert (=> b!2112239 m!2568895))

(check-sat (not b!2112259) b_and!170663 (not b_next!61789) (not b!2112245) b_and!170661 b_and!170667 (not start!206464) (not b!2112242) (not mapNonEmpty!11223) (not b!2112252) (not b!2112250) (not b!2112237) (not b!2112257) (not b_next!61785) (not b!2112251) (not b_next!61791) tp_is_empty!9423 (not b!2112255) (not b_next!61787) (not mapNonEmpty!11222) (not b!2112239) b_and!170665 (not b!2112244) (not b!2112248) (not b!2112258))
(check-sat (not b_next!61785) b_and!170663 (not b_next!61789) (not b_next!61791) b_and!170661 b_and!170667 (not b_next!61787) b_and!170665)
