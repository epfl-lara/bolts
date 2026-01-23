; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228282 () Bool)

(assert start!228282)

(declare-fun b!2313892 () Bool)

(declare-fun b_free!70077 () Bool)

(declare-fun b_next!70781 () Bool)

(assert (=> b!2313892 (= b_free!70077 (not b_next!70781))))

(declare-fun tp!734596 () Bool)

(declare-fun b_and!184977 () Bool)

(assert (=> b!2313892 (= tp!734596 b_and!184977)))

(declare-fun b!2313889 () Bool)

(declare-fun b_free!70079 () Bool)

(declare-fun b_next!70783 () Bool)

(assert (=> b!2313889 (= b_free!70079 (not b_next!70783))))

(declare-fun tp!734594 () Bool)

(declare-fun b_and!184979 () Bool)

(assert (=> b!2313889 (= tp!734594 b_and!184979)))

(declare-fun b!2313900 () Bool)

(declare-fun b_free!70081 () Bool)

(declare-fun b_next!70785 () Bool)

(assert (=> b!2313900 (= b_free!70081 (not b_next!70785))))

(declare-fun tp!734604 () Bool)

(declare-fun b_and!184981 () Bool)

(assert (=> b!2313900 (= tp!734604 b_and!184981)))

(declare-fun b!2313891 () Bool)

(declare-fun b_free!70083 () Bool)

(declare-fun b_next!70787 () Bool)

(assert (=> b!2313891 (= b_free!70083 (not b_next!70787))))

(declare-fun tp!734598 () Bool)

(declare-fun b_and!184983 () Bool)

(assert (=> b!2313891 (= tp!734598 b_and!184983)))

(declare-fun res!988898 () Bool)

(declare-fun e!1483247 () Bool)

(assert (=> start!228282 (=> (not res!988898) (not e!1483247))))

(declare-fun from!1022 () Int)

(assert (=> start!228282 (= res!988898 (>= from!1022 0))))

(assert (=> start!228282 e!1483247))

(declare-datatypes ((C!13708 0))(
  ( (C!13709 (val!7910 Int)) )
))
(declare-datatypes ((List!27666 0))(
  ( (Nil!27568) (Cons!27568 (h!32969 C!13708) (t!207266 List!27666)) )
))
(declare-datatypes ((IArray!18017 0))(
  ( (IArray!18018 (innerList!9066 List!27666)) )
))
(declare-datatypes ((Conc!9006 0))(
  ( (Node!9006 (left!20904 Conc!9006) (right!21234 Conc!9006) (csize!18242 Int) (cheight!9217 Int)) (Leaf!13217 (xs!11948 IArray!18017) (csize!18243 Int)) (Empty!9006) )
))
(declare-datatypes ((BalanceConc!17744 0))(
  ( (BalanceConc!17745 (c!366796 Conc!9006)) )
))
(declare-fun totalInput!830 () BalanceConc!17744)

(declare-fun e!1483245 () Bool)

(declare-fun inv!37330 (BalanceConc!17744) Bool)

(assert (=> start!228282 (and (inv!37330 totalInput!830) e!1483245)))

(assert (=> start!228282 true))

(declare-datatypes ((array!11189 0))(
  ( (array!11190 (arr!4963 (Array (_ BitVec 32) (_ BitVec 64))) (size!21783 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!6777 0))(
  ( (ElementMatch!6777 (c!366797 C!13708)) (Concat!11365 (regOne!14066 Regex!6777) (regTwo!14066 Regex!6777)) (EmptyExpr!6777) (Star!6777 (reg!7106 Regex!6777)) (EmptyLang!6777) (Union!6777 (regOne!14067 Regex!6777) (regTwo!14067 Regex!6777)) )
))
(declare-datatypes ((List!27667 0))(
  ( (Nil!27569) (Cons!27569 (h!32970 Regex!6777) (t!207267 List!27667)) )
))
(declare-datatypes ((Context!4198 0))(
  ( (Context!4199 (exprs!2599 List!27667)) )
))
(declare-datatypes ((tuple3!4104 0))(
  ( (tuple3!4105 (_1!16277 Regex!6777) (_2!16277 Context!4198) (_3!2522 C!13708)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!27510 0))(
  ( (tuple2!27511 (_1!16278 tuple3!4104) (_2!16278 (InoxSet Context!4198))) )
))
(declare-datatypes ((List!27668 0))(
  ( (Nil!27570) (Cons!27570 (h!32971 tuple2!27510) (t!207268 List!27668)) )
))
(declare-datatypes ((array!11191 0))(
  ( (array!11192 (arr!4964 (Array (_ BitVec 32) List!27668)) (size!21784 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6382 0))(
  ( (LongMapFixedSize!6383 (defaultEntry!3556 Int) (mask!7950 (_ BitVec 32)) (extraKeys!3439 (_ BitVec 32)) (zeroValue!3449 List!27668) (minValue!3449 List!27668) (_size!6429 (_ BitVec 32)) (_keys!3488 array!11189) (_values!3471 array!11191) (_vacant!3252 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12581 0))(
  ( (Cell!12582 (v!30621 LongMapFixedSize!6382)) )
))
(declare-datatypes ((Hashable!3101 0))(
  ( (HashableExt!3100 (__x!18275 Int)) )
))
(declare-datatypes ((MutLongMap!3191 0))(
  ( (LongMap!3191 (underlying!6587 Cell!12581)) (MutLongMapExt!3190 (__x!18276 Int)) )
))
(declare-datatypes ((Cell!12583 0))(
  ( (Cell!12584 (v!30622 MutLongMap!3191)) )
))
(declare-datatypes ((MutableMap!3101 0))(
  ( (MutableMapExt!3100 (__x!18277 Int)) (HashMap!3101 (underlying!6588 Cell!12583) (hashF!5024 Hashable!3101) (_size!6430 (_ BitVec 32)) (defaultValue!3263 Int)) )
))
(declare-datatypes ((CacheDown!2162 0))(
  ( (CacheDown!2163 (cache!3480 MutableMap!3101)) )
))
(declare-fun cacheDown!1084 () CacheDown!2162)

(declare-fun e!1483236 () Bool)

(declare-fun inv!37331 (CacheDown!2162) Bool)

(assert (=> start!228282 (and (inv!37331 cacheDown!1084) e!1483236)))

(declare-datatypes ((tuple2!27512 0))(
  ( (tuple2!27513 (_1!16279 Context!4198) (_2!16279 C!13708)) )
))
(declare-datatypes ((tuple2!27514 0))(
  ( (tuple2!27515 (_1!16280 tuple2!27512) (_2!16280 (InoxSet Context!4198))) )
))
(declare-datatypes ((List!27669 0))(
  ( (Nil!27571) (Cons!27571 (h!32972 tuple2!27514) (t!207269 List!27669)) )
))
(declare-datatypes ((array!11193 0))(
  ( (array!11194 (arr!4965 (Array (_ BitVec 32) List!27669)) (size!21785 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6384 0))(
  ( (LongMapFixedSize!6385 (defaultEntry!3557 Int) (mask!7951 (_ BitVec 32)) (extraKeys!3440 (_ BitVec 32)) (zeroValue!3450 List!27669) (minValue!3450 List!27669) (_size!6431 (_ BitVec 32)) (_keys!3489 array!11189) (_values!3472 array!11193) (_vacant!3253 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12585 0))(
  ( (Cell!12586 (v!30623 LongMapFixedSize!6384)) )
))
(declare-datatypes ((Hashable!3102 0))(
  ( (HashableExt!3101 (__x!18278 Int)) )
))
(declare-datatypes ((MutLongMap!3192 0))(
  ( (LongMap!3192 (underlying!6589 Cell!12585)) (MutLongMapExt!3191 (__x!18279 Int)) )
))
(declare-datatypes ((Cell!12587 0))(
  ( (Cell!12588 (v!30624 MutLongMap!3192)) )
))
(declare-datatypes ((MutableMap!3102 0))(
  ( (MutableMapExt!3101 (__x!18280 Int)) (HashMap!3102 (underlying!6590 Cell!12587) (hashF!5025 Hashable!3102) (_size!6432 (_ BitVec 32)) (defaultValue!3264 Int)) )
))
(declare-datatypes ((CacheUp!2056 0))(
  ( (CacheUp!2057 (cache!3481 MutableMap!3102)) )
))
(declare-fun cacheUp!965 () CacheUp!2056)

(declare-fun e!1483237 () Bool)

(declare-fun inv!37332 (CacheUp!2056) Bool)

(assert (=> start!228282 (and (inv!37332 cacheUp!965) e!1483237)))

(declare-fun condSetEmpty!20806 () Bool)

(declare-fun z!3800 () (InoxSet Context!4198))

(assert (=> start!228282 (= condSetEmpty!20806 (= z!3800 ((as const (Array Context!4198 Bool)) false)))))

(declare-fun setRes!20806 () Bool)

(assert (=> start!228282 setRes!20806))

(declare-fun mapIsEmpty!14944 () Bool)

(declare-fun mapRes!14944 () Bool)

(assert (=> mapIsEmpty!14944 mapRes!14944))

(declare-fun b!2313887 () Bool)

(declare-fun e!1483239 () Bool)

(declare-fun e!1483244 () Bool)

(assert (=> b!2313887 (= e!1483239 e!1483244)))

(declare-fun mapIsEmpty!14945 () Bool)

(declare-fun mapRes!14945 () Bool)

(assert (=> mapIsEmpty!14945 mapRes!14945))

(declare-fun b!2313888 () Bool)

(declare-fun e!1483248 () Bool)

(assert (=> b!2313888 (= e!1483248 false)))

(declare-datatypes ((tuple3!4106 0))(
  ( (tuple3!4107 (_1!16281 (InoxSet Context!4198)) (_2!16281 CacheUp!2056) (_3!2523 CacheDown!2162)) )
))
(declare-fun lt!857949 () tuple3!4106)

(declare-fun derivationStepZipperMem!65 ((InoxSet Context!4198) C!13708 CacheUp!2056 CacheDown!2162) tuple3!4106)

(declare-fun apply!6679 (BalanceConc!17744 Int) C!13708)

(assert (=> b!2313888 (= lt!857949 (derivationStepZipperMem!65 z!3800 (apply!6679 totalInput!830 from!1022) cacheUp!965 cacheDown!1084))))

(declare-fun tp!734603 () Bool)

(declare-fun e!1483229 () Bool)

(declare-fun tp!734599 () Bool)

(declare-fun e!1483243 () Bool)

(declare-fun array_inv!3566 (array!11189) Bool)

(declare-fun array_inv!3567 (array!11193) Bool)

(assert (=> b!2313889 (= e!1483229 (and tp!734594 tp!734599 tp!734603 (array_inv!3566 (_keys!3489 (v!30623 (underlying!6589 (v!30624 (underlying!6590 (cache!3481 cacheUp!965))))))) (array_inv!3567 (_values!3472 (v!30623 (underlying!6589 (v!30624 (underlying!6590 (cache!3481 cacheUp!965))))))) e!1483243))))

(declare-fun b!2313890 () Bool)

(declare-fun e!1483230 () Bool)

(assert (=> b!2313890 (= e!1483236 e!1483230)))

(declare-fun e!1483246 () Bool)

(assert (=> b!2313891 (= e!1483230 (and e!1483246 tp!734598))))

(declare-fun e!1483232 () Bool)

(declare-fun e!1483240 () Bool)

(assert (=> b!2313892 (= e!1483232 (and e!1483240 tp!734596))))

(declare-fun b!2313893 () Bool)

(assert (=> b!2313893 (= e!1483244 e!1483229)))

(declare-fun b!2313894 () Bool)

(declare-fun e!1483242 () Bool)

(declare-fun tp!734595 () Bool)

(assert (=> b!2313894 (= e!1483242 (and tp!734595 mapRes!14944))))

(declare-fun condMapEmpty!14945 () Bool)

(declare-fun mapDefault!14945 () List!27668)

(assert (=> b!2313894 (= condMapEmpty!14945 (= (arr!4964 (_values!3471 (v!30621 (underlying!6587 (v!30622 (underlying!6588 (cache!3480 cacheDown!1084))))))) ((as const (Array (_ BitVec 32) List!27668)) mapDefault!14945)))))

(declare-fun b!2313895 () Bool)

(assert (=> b!2313895 (= e!1483237 e!1483232)))

(declare-fun mapNonEmpty!14944 () Bool)

(declare-fun tp!734607 () Bool)

(declare-fun tp!734606 () Bool)

(assert (=> mapNonEmpty!14944 (= mapRes!14944 (and tp!734607 tp!734606))))

(declare-fun mapValue!14945 () List!27668)

(declare-fun mapRest!14945 () (Array (_ BitVec 32) List!27668))

(declare-fun mapKey!14944 () (_ BitVec 32))

(assert (=> mapNonEmpty!14944 (= (arr!4964 (_values!3471 (v!30621 (underlying!6587 (v!30622 (underlying!6588 (cache!3480 cacheDown!1084))))))) (store mapRest!14945 mapKey!14944 mapValue!14945))))

(declare-fun mapNonEmpty!14945 () Bool)

(declare-fun tp!734592 () Bool)

(declare-fun tp!734593 () Bool)

(assert (=> mapNonEmpty!14945 (= mapRes!14945 (and tp!734592 tp!734593))))

(declare-fun mapRest!14944 () (Array (_ BitVec 32) List!27669))

(declare-fun mapValue!14944 () List!27669)

(declare-fun mapKey!14945 () (_ BitVec 32))

(assert (=> mapNonEmpty!14945 (= (arr!4965 (_values!3472 (v!30623 (underlying!6589 (v!30624 (underlying!6590 (cache!3481 cacheUp!965))))))) (store mapRest!14944 mapKey!14945 mapValue!14944))))

(declare-fun b!2313896 () Bool)

(declare-fun lt!857951 () MutLongMap!3192)

(get-info :version)

(assert (=> b!2313896 (= e!1483240 (and e!1483239 ((_ is LongMap!3192) lt!857951)))))

(assert (=> b!2313896 (= lt!857951 (v!30624 (underlying!6590 (cache!3481 cacheUp!965))))))

(declare-fun e!1483235 () Bool)

(declare-fun setNonEmpty!20806 () Bool)

(declare-fun tp!734597 () Bool)

(declare-fun setElem!20806 () Context!4198)

(declare-fun inv!37333 (Context!4198) Bool)

(assert (=> setNonEmpty!20806 (= setRes!20806 (and tp!734597 (inv!37333 setElem!20806) e!1483235))))

(declare-fun setRest!20806 () (InoxSet Context!4198))

(assert (=> setNonEmpty!20806 (= z!3800 ((_ map or) (store ((as const (Array Context!4198 Bool)) false) setElem!20806 true) setRest!20806))))

(declare-fun b!2313897 () Bool)

(declare-fun tp!734601 () Bool)

(declare-fun inv!37334 (Conc!9006) Bool)

(assert (=> b!2313897 (= e!1483245 (and (inv!37334 (c!366796 totalInput!830)) tp!734601))))

(declare-fun b!2313898 () Bool)

(declare-fun res!988900 () Bool)

(assert (=> b!2313898 (=> (not res!988900) (not e!1483248))))

(declare-fun lostCauseZipper!403 ((InoxSet Context!4198)) Bool)

(assert (=> b!2313898 (= res!988900 (not (lostCauseZipper!403 z!3800)))))

(declare-fun b!2313899 () Bool)

(declare-fun tp!734605 () Bool)

(assert (=> b!2313899 (= e!1483243 (and tp!734605 mapRes!14945))))

(declare-fun condMapEmpty!14944 () Bool)

(declare-fun mapDefault!14944 () List!27669)

(assert (=> b!2313899 (= condMapEmpty!14944 (= (arr!4965 (_values!3472 (v!30623 (underlying!6589 (v!30624 (underlying!6590 (cache!3481 cacheUp!965))))))) ((as const (Array (_ BitVec 32) List!27669)) mapDefault!14944)))))

(declare-fun tp!734600 () Bool)

(declare-fun tp!734591 () Bool)

(declare-fun e!1483234 () Bool)

(declare-fun array_inv!3568 (array!11191) Bool)

(assert (=> b!2313900 (= e!1483234 (and tp!734604 tp!734591 tp!734600 (array_inv!3566 (_keys!3488 (v!30621 (underlying!6587 (v!30622 (underlying!6588 (cache!3480 cacheDown!1084))))))) (array_inv!3568 (_values!3471 (v!30621 (underlying!6587 (v!30622 (underlying!6588 (cache!3480 cacheDown!1084))))))) e!1483242))))

(declare-fun b!2313901 () Bool)

(declare-fun e!1483238 () Bool)

(declare-fun e!1483241 () Bool)

(assert (=> b!2313901 (= e!1483238 e!1483241)))

(declare-fun b!2313902 () Bool)

(declare-fun lt!857948 () MutLongMap!3191)

(assert (=> b!2313902 (= e!1483246 (and e!1483238 ((_ is LongMap!3191) lt!857948)))))

(assert (=> b!2313902 (= lt!857948 (v!30622 (underlying!6588 (cache!3480 cacheDown!1084))))))

(declare-fun setIsEmpty!20806 () Bool)

(assert (=> setIsEmpty!20806 setRes!20806))

(declare-fun b!2313903 () Bool)

(assert (=> b!2313903 (= e!1483241 e!1483234)))

(declare-fun b!2313904 () Bool)

(declare-fun tp!734602 () Bool)

(assert (=> b!2313904 (= e!1483235 tp!734602)))

(declare-fun b!2313905 () Bool)

(assert (=> b!2313905 (= e!1483247 e!1483248)))

(declare-fun res!988899 () Bool)

(assert (=> b!2313905 (=> (not res!988899) (not e!1483248))))

(declare-fun lt!857950 () Int)

(declare-fun totalInputSize!275 () Int)

(assert (=> b!2313905 (= res!988899 (and (<= from!1022 lt!857950) (= totalInputSize!275 lt!857950) (not (= from!1022 totalInputSize!275))))))

(declare-fun size!21786 (BalanceConc!17744) Int)

(assert (=> b!2313905 (= lt!857950 (size!21786 totalInput!830))))

(assert (= (and start!228282 res!988898) b!2313905))

(assert (= (and b!2313905 res!988899) b!2313898))

(assert (= (and b!2313898 res!988900) b!2313888))

(assert (= start!228282 b!2313897))

(assert (= (and b!2313894 condMapEmpty!14945) mapIsEmpty!14944))

(assert (= (and b!2313894 (not condMapEmpty!14945)) mapNonEmpty!14944))

(assert (= b!2313900 b!2313894))

(assert (= b!2313903 b!2313900))

(assert (= b!2313901 b!2313903))

(assert (= (and b!2313902 ((_ is LongMap!3191) (v!30622 (underlying!6588 (cache!3480 cacheDown!1084))))) b!2313901))

(assert (= b!2313891 b!2313902))

(assert (= (and b!2313890 ((_ is HashMap!3101) (cache!3480 cacheDown!1084))) b!2313891))

(assert (= start!228282 b!2313890))

(assert (= (and b!2313899 condMapEmpty!14944) mapIsEmpty!14945))

(assert (= (and b!2313899 (not condMapEmpty!14944)) mapNonEmpty!14945))

(assert (= b!2313889 b!2313899))

(assert (= b!2313893 b!2313889))

(assert (= b!2313887 b!2313893))

(assert (= (and b!2313896 ((_ is LongMap!3192) (v!30624 (underlying!6590 (cache!3481 cacheUp!965))))) b!2313887))

(assert (= b!2313892 b!2313896))

(assert (= (and b!2313895 ((_ is HashMap!3102) (cache!3481 cacheUp!965))) b!2313892))

(assert (= start!228282 b!2313895))

(assert (= (and start!228282 condSetEmpty!20806) setIsEmpty!20806))

(assert (= (and start!228282 (not condSetEmpty!20806)) setNonEmpty!20806))

(assert (= setNonEmpty!20806 b!2313904))

(declare-fun m!2741075 () Bool)

(assert (=> b!2313898 m!2741075))

(declare-fun m!2741077 () Bool)

(assert (=> b!2313905 m!2741077))

(declare-fun m!2741079 () Bool)

(assert (=> b!2313897 m!2741079))

(declare-fun m!2741081 () Bool)

(assert (=> b!2313900 m!2741081))

(declare-fun m!2741083 () Bool)

(assert (=> b!2313900 m!2741083))

(declare-fun m!2741085 () Bool)

(assert (=> mapNonEmpty!14945 m!2741085))

(declare-fun m!2741087 () Bool)

(assert (=> b!2313889 m!2741087))

(declare-fun m!2741089 () Bool)

(assert (=> b!2313889 m!2741089))

(declare-fun m!2741091 () Bool)

(assert (=> setNonEmpty!20806 m!2741091))

(declare-fun m!2741093 () Bool)

(assert (=> b!2313888 m!2741093))

(assert (=> b!2313888 m!2741093))

(declare-fun m!2741095 () Bool)

(assert (=> b!2313888 m!2741095))

(declare-fun m!2741097 () Bool)

(assert (=> start!228282 m!2741097))

(declare-fun m!2741099 () Bool)

(assert (=> start!228282 m!2741099))

(declare-fun m!2741101 () Bool)

(assert (=> start!228282 m!2741101))

(declare-fun m!2741103 () Bool)

(assert (=> mapNonEmpty!14944 m!2741103))

(check-sat b_and!184977 (not b!2313898) (not b!2313889) b_and!184979 (not b!2313905) (not setNonEmpty!20806) (not b!2313900) b_and!184981 (not b!2313899) (not mapNonEmpty!14945) (not b_next!70783) (not start!228282) (not b_next!70781) (not b!2313888) (not b!2313894) (not b!2313904) (not b_next!70785) b_and!184983 (not b_next!70787) (not mapNonEmpty!14944) (not b!2313897))
(check-sat b_and!184977 b_and!184979 (not b_next!70783) (not b_next!70781) (not b_next!70785) b_and!184981 b_and!184983 (not b_next!70787))
