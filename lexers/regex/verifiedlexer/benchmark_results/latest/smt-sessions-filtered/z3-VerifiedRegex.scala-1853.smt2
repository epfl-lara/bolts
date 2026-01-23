; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92144 () Bool)

(assert start!92144)

(declare-fun b!1083876 () Bool)

(declare-fun b_free!26737 () Bool)

(declare-fun b_next!26801 () Bool)

(assert (=> b!1083876 (= b_free!26737 (not b_next!26801))))

(declare-fun tp!324058 () Bool)

(declare-fun b_and!79057 () Bool)

(assert (=> b!1083876 (= tp!324058 b_and!79057)))

(declare-fun b!1083881 () Bool)

(declare-fun b_free!26739 () Bool)

(declare-fun b_next!26803 () Bool)

(assert (=> b!1083881 (= b_free!26739 (not b_next!26803))))

(declare-fun tp!324062 () Bool)

(declare-fun b_and!79059 () Bool)

(assert (=> b!1083881 (= tp!324062 b_and!79059)))

(declare-fun mapIsEmpty!6081 () Bool)

(declare-fun mapRes!6081 () Bool)

(assert (=> mapIsEmpty!6081 mapRes!6081))

(declare-fun b!1083873 () Bool)

(declare-fun e!685362 () Bool)

(declare-fun e!685365 () Bool)

(assert (=> b!1083873 (= e!685362 e!685365)))

(declare-fun b!1083874 () Bool)

(declare-fun e!685366 () Bool)

(declare-fun tp!324060 () Bool)

(assert (=> b!1083874 (= e!685366 (and tp!324060 mapRes!6081))))

(declare-fun condMapEmpty!6081 () Bool)

(declare-datatypes ((C!6500 0))(
  ( (C!6501 (val!3498 Int)) )
))
(declare-datatypes ((List!10201 0))(
  ( (Nil!10185) (Cons!10185 (h!15586 C!6500) (t!101247 List!10201)) )
))
(declare-datatypes ((IArray!6255 0))(
  ( (IArray!6256 (innerList!3185 List!10201)) )
))
(declare-datatypes ((Conc!3125 0))(
  ( (Node!3125 (left!8720 Conc!3125) (right!9050 Conc!3125) (csize!6480 Int) (cheight!3336 Int)) (Leaf!4979 (xs!5818 IArray!6255) (csize!6481 Int)) (Empty!3125) )
))
(declare-datatypes ((Hashable!1231 0))(
  ( (HashableExt!1230 (__x!7406 Int)) )
))
(declare-datatypes ((Regex!2965 0))(
  ( (ElementMatch!2965 (c!182981 C!6500)) (Concat!4798 (regOne!6442 Regex!2965) (regTwo!6442 Regex!2965)) (EmptyExpr!2965) (Star!2965 (reg!3294 Regex!2965)) (EmptyLang!2965) (Union!2965 (regOne!6443 Regex!2965) (regTwo!6443 Regex!2965)) )
))
(declare-datatypes ((List!10202 0))(
  ( (Nil!10186) (Cons!10186 (h!15587 Regex!2965) (t!101248 List!10202)) )
))
(declare-datatypes ((Context!894 0))(
  ( (Context!895 (exprs!947 List!10202)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!11646 0))(
  ( (tuple2!11647 (_1!6649 (InoxSet Context!894)) (_2!6649 Int)) )
))
(declare-datatypes ((tuple2!11648 0))(
  ( (tuple2!11649 (_1!6650 tuple2!11646) (_2!6650 Int)) )
))
(declare-datatypes ((List!10203 0))(
  ( (Nil!10187) (Cons!10187 (h!15588 tuple2!11648) (t!101249 List!10203)) )
))
(declare-datatypes ((array!4439 0))(
  ( (array!4440 (arr!1982 (Array (_ BitVec 32) List!10203)) (size!8023 (_ BitVec 32))) )
))
(declare-datatypes ((array!4441 0))(
  ( (array!4442 (arr!1983 (Array (_ BitVec 32) (_ BitVec 64))) (size!8024 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2518 0))(
  ( (LongMapFixedSize!2519 (defaultEntry!1619 Int) (mask!3656 (_ BitVec 32)) (extraKeys!1506 (_ BitVec 32)) (zeroValue!1516 List!10203) (minValue!1516 List!10203) (_size!2627 (_ BitVec 32)) (_keys!1553 array!4441) (_values!1538 array!4439) (_vacant!1320 (_ BitVec 32))) )
))
(declare-datatypes ((BalanceConc!6264 0))(
  ( (BalanceConc!6265 (c!182982 Conc!3125)) )
))
(declare-datatypes ((Cell!4977 0))(
  ( (Cell!4978 (v!19881 LongMapFixedSize!2518)) )
))
(declare-datatypes ((MutLongMap!1259 0))(
  ( (LongMap!1259 (underlying!2703 Cell!4977)) (MutLongMapExt!1258 (__x!7407 Int)) )
))
(declare-datatypes ((Cell!4979 0))(
  ( (Cell!4980 (v!19882 MutLongMap!1259)) )
))
(declare-datatypes ((MutableMap!1231 0))(
  ( (MutableMapExt!1230 (__x!7408 Int)) (HashMap!1231 (underlying!2704 Cell!4979) (hashF!3150 Hashable!1231) (_size!2628 (_ BitVec 32)) (defaultValue!1391 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!358 0))(
  ( (CacheFindLongestMatch!359 (cache!1612 MutableMap!1231) (totalInput!2166 BalanceConc!6264)) )
))
(declare-fun thiss!28967 () CacheFindLongestMatch!358)

(declare-fun mapDefault!6081 () List!10203)

(assert (=> b!1083874 (= condMapEmpty!6081 (= (arr!1982 (_values!1538 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))) ((as const (Array (_ BitVec 32) List!10203)) mapDefault!6081)))))

(declare-fun b!1083875 () Bool)

(declare-fun e!685364 () Bool)

(declare-fun e!685360 () Bool)

(declare-fun lt!362639 () MutLongMap!1259)

(get-info :version)

(assert (=> b!1083875 (= e!685364 (and e!685360 ((_ is LongMap!1259) lt!362639)))))

(assert (=> b!1083875 (= lt!362639 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))

(declare-fun res!482213 () Bool)

(declare-fun e!685359 () Bool)

(assert (=> start!92144 (=> (not res!482213) (not e!685359))))

(declare-fun validCacheMapFindLongestMatch!56 (MutableMap!1231 BalanceConc!6264) Bool)

(assert (=> start!92144 (= res!482213 (validCacheMapFindLongestMatch!56 (cache!1612 thiss!28967) (totalInput!2166 thiss!28967)))))

(assert (=> start!92144 e!685359))

(declare-fun e!685361 () Bool)

(declare-fun inv!13115 (CacheFindLongestMatch!358) Bool)

(assert (=> start!92144 (and (inv!13115 thiss!28967) e!685361)))

(declare-fun tp!324061 () Bool)

(declare-fun tp!324063 () Bool)

(declare-fun array_inv!1427 (array!4441) Bool)

(declare-fun array_inv!1428 (array!4439) Bool)

(assert (=> b!1083876 (= e!685365 (and tp!324058 tp!324061 tp!324063 (array_inv!1427 (_keys!1553 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))) (array_inv!1428 (_values!1538 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))) e!685366))))

(declare-fun b!1083877 () Bool)

(assert (=> b!1083877 (= e!685360 e!685362)))

(declare-fun b!1083878 () Bool)

(declare-fun e!685363 () Bool)

(declare-fun e!685358 () Bool)

(declare-fun inv!13116 (BalanceConc!6264) Bool)

(assert (=> b!1083878 (= e!685361 (and e!685363 (inv!13116 (totalInput!2166 thiss!28967)) e!685358))))

(declare-fun mapNonEmpty!6081 () Bool)

(declare-fun tp!324057 () Bool)

(declare-fun tp!324059 () Bool)

(assert (=> mapNonEmpty!6081 (= mapRes!6081 (and tp!324057 tp!324059))))

(declare-fun mapValue!6081 () List!10203)

(declare-fun mapKey!6081 () (_ BitVec 32))

(declare-fun mapRest!6081 () (Array (_ BitVec 32) List!10203))

(assert (=> mapNonEmpty!6081 (= (arr!1982 (_values!1538 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))) (store mapRest!6081 mapKey!6081 mapValue!6081))))

(declare-fun b!1083879 () Bool)

(assert (=> b!1083879 (= e!685359 (not ((_ is HashMap!1231) (cache!1612 thiss!28967))))))

(declare-fun b!1083880 () Bool)

(declare-fun tp!324064 () Bool)

(declare-fun inv!13117 (Conc!3125) Bool)

(assert (=> b!1083880 (= e!685358 (and (inv!13117 (c!182982 (totalInput!2166 thiss!28967))) tp!324064))))

(assert (=> b!1083881 (= e!685363 (and e!685364 tp!324062))))

(assert (= (and start!92144 res!482213) b!1083879))

(assert (= (and b!1083874 condMapEmpty!6081) mapIsEmpty!6081))

(assert (= (and b!1083874 (not condMapEmpty!6081)) mapNonEmpty!6081))

(assert (= b!1083876 b!1083874))

(assert (= b!1083873 b!1083876))

(assert (= b!1083877 b!1083873))

(assert (= (and b!1083875 ((_ is LongMap!1259) (v!19882 (underlying!2704 (cache!1612 thiss!28967))))) b!1083877))

(assert (= b!1083881 b!1083875))

(assert (= (and b!1083878 ((_ is HashMap!1231) (cache!1612 thiss!28967))) b!1083881))

(assert (= b!1083878 b!1083880))

(assert (= start!92144 b!1083878))

(declare-fun m!1233879 () Bool)

(assert (=> start!92144 m!1233879))

(declare-fun m!1233881 () Bool)

(assert (=> start!92144 m!1233881))

(declare-fun m!1233883 () Bool)

(assert (=> b!1083880 m!1233883))

(declare-fun m!1233885 () Bool)

(assert (=> b!1083876 m!1233885))

(declare-fun m!1233887 () Bool)

(assert (=> b!1083876 m!1233887))

(declare-fun m!1233889 () Bool)

(assert (=> mapNonEmpty!6081 m!1233889))

(declare-fun m!1233891 () Bool)

(assert (=> b!1083878 m!1233891))

(check-sat (not b_next!26801) b_and!79059 (not b!1083876) (not b!1083878) (not mapNonEmpty!6081) (not b!1083880) b_and!79057 (not b_next!26803) (not start!92144) (not b!1083874))
(check-sat b_and!79059 b_and!79057 (not b_next!26801) (not b_next!26803))
(get-model)

(declare-fun d!304716 () Bool)

(declare-fun c!182985 () Bool)

(assert (=> d!304716 (= c!182985 ((_ is Node!3125) (c!182982 (totalInput!2166 thiss!28967))))))

(declare-fun e!685371 () Bool)

(assert (=> d!304716 (= (inv!13117 (c!182982 (totalInput!2166 thiss!28967))) e!685371)))

(declare-fun b!1083888 () Bool)

(declare-fun inv!13118 (Conc!3125) Bool)

(assert (=> b!1083888 (= e!685371 (inv!13118 (c!182982 (totalInput!2166 thiss!28967))))))

(declare-fun b!1083889 () Bool)

(declare-fun e!685372 () Bool)

(assert (=> b!1083889 (= e!685371 e!685372)))

(declare-fun res!482216 () Bool)

(assert (=> b!1083889 (= res!482216 (not ((_ is Leaf!4979) (c!182982 (totalInput!2166 thiss!28967)))))))

(assert (=> b!1083889 (=> res!482216 e!685372)))

(declare-fun b!1083890 () Bool)

(declare-fun inv!13119 (Conc!3125) Bool)

(assert (=> b!1083890 (= e!685372 (inv!13119 (c!182982 (totalInput!2166 thiss!28967))))))

(assert (= (and d!304716 c!182985) b!1083888))

(assert (= (and d!304716 (not c!182985)) b!1083889))

(assert (= (and b!1083889 (not res!482216)) b!1083890))

(declare-fun m!1233893 () Bool)

(assert (=> b!1083888 m!1233893))

(declare-fun m!1233895 () Bool)

(assert (=> b!1083890 m!1233895))

(assert (=> b!1083880 d!304716))

(declare-fun d!304718 () Bool)

(assert (=> d!304718 (= (array_inv!1427 (_keys!1553 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))) (bvsge (size!8024 (_keys!1553 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))) #b00000000000000000000000000000000))))

(assert (=> b!1083876 d!304718))

(declare-fun d!304720 () Bool)

(assert (=> d!304720 (= (array_inv!1428 (_values!1538 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))) (bvsge (size!8023 (_values!1538 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))) #b00000000000000000000000000000000))))

(assert (=> b!1083876 d!304720))

(declare-fun b!1083896 () Bool)

(assert (=> b!1083896 true))

(declare-fun d!304722 () Bool)

(declare-fun res!482221 () Bool)

(declare-fun e!685375 () Bool)

(assert (=> d!304722 (=> (not res!482221) (not e!685375))))

(declare-fun valid!1012 (MutableMap!1231) Bool)

(assert (=> d!304722 (= res!482221 (valid!1012 (cache!1612 thiss!28967)))))

(assert (=> d!304722 (= (validCacheMapFindLongestMatch!56 (cache!1612 thiss!28967) (totalInput!2166 thiss!28967)) e!685375)))

(declare-fun b!1083895 () Bool)

(declare-fun res!482222 () Bool)

(assert (=> b!1083895 (=> (not res!482222) (not e!685375))))

(declare-fun invariantList!197 (List!10203) Bool)

(declare-datatypes ((ListMap!443 0))(
  ( (ListMap!444 (toList!585 List!10203)) )
))
(declare-fun map!2319 (MutableMap!1231) ListMap!443)

(assert (=> b!1083895 (= res!482222 (invariantList!197 (toList!585 (map!2319 (cache!1612 thiss!28967)))))))

(declare-fun lambda!39399 () Int)

(declare-fun forall!2242 (List!10203 Int) Bool)

(assert (=> b!1083896 (= e!685375 (forall!2242 (toList!585 (map!2319 (cache!1612 thiss!28967))) lambda!39399))))

(assert (= (and d!304722 res!482221) b!1083895))

(assert (= (and b!1083895 res!482222) b!1083896))

(declare-fun m!1233898 () Bool)

(assert (=> d!304722 m!1233898))

(declare-fun m!1233900 () Bool)

(assert (=> b!1083895 m!1233900))

(declare-fun m!1233902 () Bool)

(assert (=> b!1083895 m!1233902))

(assert (=> b!1083896 m!1233900))

(declare-fun m!1233904 () Bool)

(assert (=> b!1083896 m!1233904))

(assert (=> start!92144 d!304722))

(declare-fun d!304724 () Bool)

(declare-fun res!482225 () Bool)

(declare-fun e!685378 () Bool)

(assert (=> d!304724 (=> (not res!482225) (not e!685378))))

(assert (=> d!304724 (= res!482225 ((_ is HashMap!1231) (cache!1612 thiss!28967)))))

(assert (=> d!304724 (= (inv!13115 thiss!28967) e!685378)))

(declare-fun b!1083901 () Bool)

(assert (=> b!1083901 (= e!685378 (validCacheMapFindLongestMatch!56 (cache!1612 thiss!28967) (totalInput!2166 thiss!28967)))))

(assert (= (and d!304724 res!482225) b!1083901))

(assert (=> b!1083901 m!1233879))

(assert (=> start!92144 d!304724))

(declare-fun d!304726 () Bool)

(declare-fun isBalanced!871 (Conc!3125) Bool)

(assert (=> d!304726 (= (inv!13116 (totalInput!2166 thiss!28967)) (isBalanced!871 (c!182982 (totalInput!2166 thiss!28967))))))

(declare-fun bs!256426 () Bool)

(assert (= bs!256426 d!304726))

(declare-fun m!1233906 () Bool)

(assert (=> bs!256426 m!1233906))

(assert (=> b!1083878 d!304726))

(declare-fun b!1083912 () Bool)

(declare-fun e!685388 () Bool)

(declare-fun tp!324080 () Bool)

(assert (=> b!1083912 (= e!685388 tp!324080)))

(declare-fun b!1083913 () Bool)

(declare-fun e!685387 () Bool)

(declare-fun tp!324081 () Bool)

(assert (=> b!1083913 (= e!685387 tp!324081)))

(declare-fun mapNonEmpty!6084 () Bool)

(declare-fun mapRes!6084 () Bool)

(declare-fun tp!324085 () Bool)

(declare-fun e!685390 () Bool)

(assert (=> mapNonEmpty!6084 (= mapRes!6084 (and tp!324085 e!685390))))

(declare-fun mapKey!6084 () (_ BitVec 32))

(declare-fun mapValue!6084 () List!10203)

(declare-fun mapRest!6084 () (Array (_ BitVec 32) List!10203))

(assert (=> mapNonEmpty!6084 (= mapRest!6081 (store mapRest!6084 mapKey!6084 mapValue!6084))))

(declare-fun setIsEmpty!7403 () Bool)

(declare-fun setRes!7404 () Bool)

(assert (=> setIsEmpty!7403 setRes!7404))

(declare-fun setNonEmpty!7403 () Bool)

(declare-fun setElem!7404 () Context!894)

(declare-fun setRes!7403 () Bool)

(declare-fun tp!324084 () Bool)

(declare-fun inv!13120 (Context!894) Bool)

(assert (=> setNonEmpty!7403 (= setRes!7403 (and tp!324084 (inv!13120 setElem!7404) e!685388))))

(declare-fun setRest!7403 () (InoxSet Context!894))

(assert (=> setNonEmpty!7403 (= (_1!6649 (_1!6650 (h!15588 mapValue!6084))) ((_ map or) (store ((as const (Array Context!894 Bool)) false) setElem!7404 true) setRest!7403))))

(declare-fun setIsEmpty!7404 () Bool)

(assert (=> setIsEmpty!7404 setRes!7403))

(declare-fun condMapEmpty!6084 () Bool)

(declare-fun mapDefault!6084 () List!10203)

(assert (=> mapNonEmpty!6081 (= condMapEmpty!6084 (= mapRest!6081 ((as const (Array (_ BitVec 32) List!10203)) mapDefault!6084)))))

(declare-fun e!685389 () Bool)

(assert (=> mapNonEmpty!6081 (= tp!324057 (and e!685389 mapRes!6084))))

(declare-fun b!1083914 () Bool)

(declare-fun tp!324083 () Bool)

(assert (=> b!1083914 (= e!685389 (and setRes!7404 tp!324083))))

(declare-fun condSetEmpty!7404 () Bool)

(assert (=> b!1083914 (= condSetEmpty!7404 (= (_1!6649 (_1!6650 (h!15588 mapDefault!6084))) ((as const (Array Context!894 Bool)) false)))))

(declare-fun mapIsEmpty!6084 () Bool)

(assert (=> mapIsEmpty!6084 mapRes!6084))

(declare-fun setNonEmpty!7404 () Bool)

(declare-fun tp!324079 () Bool)

(declare-fun setElem!7403 () Context!894)

(assert (=> setNonEmpty!7404 (= setRes!7404 (and tp!324079 (inv!13120 setElem!7403) e!685387))))

(declare-fun setRest!7404 () (InoxSet Context!894))

(assert (=> setNonEmpty!7404 (= (_1!6649 (_1!6650 (h!15588 mapDefault!6084))) ((_ map or) (store ((as const (Array Context!894 Bool)) false) setElem!7403 true) setRest!7404))))

(declare-fun b!1083915 () Bool)

(declare-fun tp!324082 () Bool)

(assert (=> b!1083915 (= e!685390 (and setRes!7403 tp!324082))))

(declare-fun condSetEmpty!7403 () Bool)

(assert (=> b!1083915 (= condSetEmpty!7403 (= (_1!6649 (_1!6650 (h!15588 mapValue!6084))) ((as const (Array Context!894 Bool)) false)))))

(assert (= (and mapNonEmpty!6081 condMapEmpty!6084) mapIsEmpty!6084))

(assert (= (and mapNonEmpty!6081 (not condMapEmpty!6084)) mapNonEmpty!6084))

(assert (= (and b!1083915 condSetEmpty!7403) setIsEmpty!7404))

(assert (= (and b!1083915 (not condSetEmpty!7403)) setNonEmpty!7403))

(assert (= setNonEmpty!7403 b!1083912))

(assert (= (and mapNonEmpty!6084 ((_ is Cons!10187) mapValue!6084)) b!1083915))

(assert (= (and b!1083914 condSetEmpty!7404) setIsEmpty!7403))

(assert (= (and b!1083914 (not condSetEmpty!7404)) setNonEmpty!7404))

(assert (= setNonEmpty!7404 b!1083913))

(assert (= (and mapNonEmpty!6081 ((_ is Cons!10187) mapDefault!6084)) b!1083914))

(declare-fun m!1233908 () Bool)

(assert (=> mapNonEmpty!6084 m!1233908))

(declare-fun m!1233910 () Bool)

(assert (=> setNonEmpty!7403 m!1233910))

(declare-fun m!1233912 () Bool)

(assert (=> setNonEmpty!7404 m!1233912))

(declare-fun e!685396 () Bool)

(assert (=> mapNonEmpty!6081 (= tp!324059 e!685396)))

(declare-fun setIsEmpty!7407 () Bool)

(declare-fun setRes!7407 () Bool)

(assert (=> setIsEmpty!7407 setRes!7407))

(declare-fun tp!324093 () Bool)

(declare-fun setNonEmpty!7407 () Bool)

(declare-fun setElem!7407 () Context!894)

(declare-fun e!685395 () Bool)

(assert (=> setNonEmpty!7407 (= setRes!7407 (and tp!324093 (inv!13120 setElem!7407) e!685395))))

(declare-fun setRest!7407 () (InoxSet Context!894))

(assert (=> setNonEmpty!7407 (= (_1!6649 (_1!6650 (h!15588 mapValue!6081))) ((_ map or) (store ((as const (Array Context!894 Bool)) false) setElem!7407 true) setRest!7407))))

(declare-fun b!1083923 () Bool)

(declare-fun tp!324092 () Bool)

(assert (=> b!1083923 (= e!685395 tp!324092)))

(declare-fun b!1083922 () Bool)

(declare-fun tp!324094 () Bool)

(assert (=> b!1083922 (= e!685396 (and setRes!7407 tp!324094))))

(declare-fun condSetEmpty!7407 () Bool)

(assert (=> b!1083922 (= condSetEmpty!7407 (= (_1!6649 (_1!6650 (h!15588 mapValue!6081))) ((as const (Array Context!894 Bool)) false)))))

(assert (= (and b!1083922 condSetEmpty!7407) setIsEmpty!7407))

(assert (= (and b!1083922 (not condSetEmpty!7407)) setNonEmpty!7407))

(assert (= setNonEmpty!7407 b!1083923))

(assert (= (and mapNonEmpty!6081 ((_ is Cons!10187) mapValue!6081)) b!1083922))

(declare-fun m!1233914 () Bool)

(assert (=> setNonEmpty!7407 m!1233914))

(declare-fun e!685398 () Bool)

(assert (=> b!1083874 (= tp!324060 e!685398)))

(declare-fun setIsEmpty!7408 () Bool)

(declare-fun setRes!7408 () Bool)

(assert (=> setIsEmpty!7408 setRes!7408))

(declare-fun setNonEmpty!7408 () Bool)

(declare-fun e!685397 () Bool)

(declare-fun setElem!7408 () Context!894)

(declare-fun tp!324096 () Bool)

(assert (=> setNonEmpty!7408 (= setRes!7408 (and tp!324096 (inv!13120 setElem!7408) e!685397))))

(declare-fun setRest!7408 () (InoxSet Context!894))

(assert (=> setNonEmpty!7408 (= (_1!6649 (_1!6650 (h!15588 mapDefault!6081))) ((_ map or) (store ((as const (Array Context!894 Bool)) false) setElem!7408 true) setRest!7408))))

(declare-fun b!1083925 () Bool)

(declare-fun tp!324095 () Bool)

(assert (=> b!1083925 (= e!685397 tp!324095)))

(declare-fun b!1083924 () Bool)

(declare-fun tp!324097 () Bool)

(assert (=> b!1083924 (= e!685398 (and setRes!7408 tp!324097))))

(declare-fun condSetEmpty!7408 () Bool)

(assert (=> b!1083924 (= condSetEmpty!7408 (= (_1!6649 (_1!6650 (h!15588 mapDefault!6081))) ((as const (Array Context!894 Bool)) false)))))

(assert (= (and b!1083924 condSetEmpty!7408) setIsEmpty!7408))

(assert (= (and b!1083924 (not condSetEmpty!7408)) setNonEmpty!7408))

(assert (= setNonEmpty!7408 b!1083925))

(assert (= (and b!1083874 ((_ is Cons!10187) mapDefault!6081)) b!1083924))

(declare-fun m!1233916 () Bool)

(assert (=> setNonEmpty!7408 m!1233916))

(declare-fun tp!324106 () Bool)

(declare-fun tp!324105 () Bool)

(declare-fun e!685403 () Bool)

(declare-fun b!1083934 () Bool)

(assert (=> b!1083934 (= e!685403 (and (inv!13117 (left!8720 (c!182982 (totalInput!2166 thiss!28967)))) tp!324105 (inv!13117 (right!9050 (c!182982 (totalInput!2166 thiss!28967)))) tp!324106))))

(declare-fun b!1083936 () Bool)

(declare-fun e!685404 () Bool)

(declare-fun tp!324104 () Bool)

(assert (=> b!1083936 (= e!685404 tp!324104)))

(declare-fun b!1083935 () Bool)

(declare-fun inv!13121 (IArray!6255) Bool)

(assert (=> b!1083935 (= e!685403 (and (inv!13121 (xs!5818 (c!182982 (totalInput!2166 thiss!28967)))) e!685404))))

(assert (=> b!1083880 (= tp!324064 (and (inv!13117 (c!182982 (totalInput!2166 thiss!28967))) e!685403))))

(assert (= (and b!1083880 ((_ is Node!3125) (c!182982 (totalInput!2166 thiss!28967)))) b!1083934))

(assert (= b!1083935 b!1083936))

(assert (= (and b!1083880 ((_ is Leaf!4979) (c!182982 (totalInput!2166 thiss!28967)))) b!1083935))

(declare-fun m!1233918 () Bool)

(assert (=> b!1083934 m!1233918))

(declare-fun m!1233920 () Bool)

(assert (=> b!1083934 m!1233920))

(declare-fun m!1233922 () Bool)

(assert (=> b!1083935 m!1233922))

(assert (=> b!1083880 m!1233883))

(declare-fun e!685406 () Bool)

(assert (=> b!1083876 (= tp!324061 e!685406)))

(declare-fun setIsEmpty!7409 () Bool)

(declare-fun setRes!7409 () Bool)

(assert (=> setIsEmpty!7409 setRes!7409))

(declare-fun setElem!7409 () Context!894)

(declare-fun tp!324108 () Bool)

(declare-fun e!685405 () Bool)

(declare-fun setNonEmpty!7409 () Bool)

(assert (=> setNonEmpty!7409 (= setRes!7409 (and tp!324108 (inv!13120 setElem!7409) e!685405))))

(declare-fun setRest!7409 () (InoxSet Context!894))

(assert (=> setNonEmpty!7409 (= (_1!6649 (_1!6650 (h!15588 (zeroValue!1516 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))))) ((_ map or) (store ((as const (Array Context!894 Bool)) false) setElem!7409 true) setRest!7409))))

(declare-fun b!1083938 () Bool)

(declare-fun tp!324107 () Bool)

(assert (=> b!1083938 (= e!685405 tp!324107)))

(declare-fun b!1083937 () Bool)

(declare-fun tp!324109 () Bool)

(assert (=> b!1083937 (= e!685406 (and setRes!7409 tp!324109))))

(declare-fun condSetEmpty!7409 () Bool)

(assert (=> b!1083937 (= condSetEmpty!7409 (= (_1!6649 (_1!6650 (h!15588 (zeroValue!1516 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))))) ((as const (Array Context!894 Bool)) false)))))

(assert (= (and b!1083937 condSetEmpty!7409) setIsEmpty!7409))

(assert (= (and b!1083937 (not condSetEmpty!7409)) setNonEmpty!7409))

(assert (= setNonEmpty!7409 b!1083938))

(assert (= (and b!1083876 ((_ is Cons!10187) (zeroValue!1516 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967)))))))) b!1083937))

(declare-fun m!1233924 () Bool)

(assert (=> setNonEmpty!7409 m!1233924))

(declare-fun e!685408 () Bool)

(assert (=> b!1083876 (= tp!324063 e!685408)))

(declare-fun setIsEmpty!7410 () Bool)

(declare-fun setRes!7410 () Bool)

(assert (=> setIsEmpty!7410 setRes!7410))

(declare-fun setElem!7410 () Context!894)

(declare-fun tp!324111 () Bool)

(declare-fun e!685407 () Bool)

(declare-fun setNonEmpty!7410 () Bool)

(assert (=> setNonEmpty!7410 (= setRes!7410 (and tp!324111 (inv!13120 setElem!7410) e!685407))))

(declare-fun setRest!7410 () (InoxSet Context!894))

(assert (=> setNonEmpty!7410 (= (_1!6649 (_1!6650 (h!15588 (minValue!1516 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))))) ((_ map or) (store ((as const (Array Context!894 Bool)) false) setElem!7410 true) setRest!7410))))

(declare-fun b!1083940 () Bool)

(declare-fun tp!324110 () Bool)

(assert (=> b!1083940 (= e!685407 tp!324110)))

(declare-fun b!1083939 () Bool)

(declare-fun tp!324112 () Bool)

(assert (=> b!1083939 (= e!685408 (and setRes!7410 tp!324112))))

(declare-fun condSetEmpty!7410 () Bool)

(assert (=> b!1083939 (= condSetEmpty!7410 (= (_1!6649 (_1!6650 (h!15588 (minValue!1516 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967))))))))) ((as const (Array Context!894 Bool)) false)))))

(assert (= (and b!1083939 condSetEmpty!7410) setIsEmpty!7410))

(assert (= (and b!1083939 (not condSetEmpty!7410)) setNonEmpty!7410))

(assert (= setNonEmpty!7410 b!1083940))

(assert (= (and b!1083876 ((_ is Cons!10187) (minValue!1516 (v!19881 (underlying!2703 (v!19882 (underlying!2704 (cache!1612 thiss!28967)))))))) b!1083939))

(declare-fun m!1233926 () Bool)

(assert (=> setNonEmpty!7410 m!1233926))

(check-sat (not b_next!26801) (not setNonEmpty!7410) (not b!1083937) (not setNonEmpty!7408) (not d!304726) (not b!1083896) (not setNonEmpty!7409) (not b!1083940) (not b!1083913) (not b!1083934) (not d!304722) (not b!1083936) (not b!1083890) b_and!79059 (not setNonEmpty!7403) (not b!1083923) (not b!1083895) (not b!1083901) (not b!1083888) (not b!1083912) (not b!1083938) (not setNonEmpty!7407) (not b!1083914) (not b!1083924) (not mapNonEmpty!6084) (not b!1083939) b_and!79057 (not b_next!26803) (not b!1083915) (not b!1083925) (not b!1083922) (not b!1083935) (not b!1083880) (not setNonEmpty!7404))
(check-sat b_and!79059 b_and!79057 (not b_next!26801) (not b_next!26803))
