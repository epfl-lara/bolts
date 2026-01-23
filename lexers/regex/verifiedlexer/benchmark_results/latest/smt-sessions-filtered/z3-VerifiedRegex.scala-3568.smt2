; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206436 () Bool)

(assert start!206436)

(declare-fun b!2111094 () Bool)

(declare-fun b_free!60969 () Bool)

(declare-fun b_next!61673 () Bool)

(assert (=> b!2111094 (= b_free!60969 (not b_next!61673))))

(declare-fun tp!642552 () Bool)

(declare-fun b_and!170549 () Bool)

(assert (=> b!2111094 (= tp!642552 b_and!170549)))

(declare-fun b!2111104 () Bool)

(declare-fun b_free!60971 () Bool)

(declare-fun b_next!61675 () Bool)

(assert (=> b!2111104 (= b_free!60971 (not b_next!61675))))

(declare-fun tp!642554 () Bool)

(declare-fun b_and!170551 () Bool)

(assert (=> b!2111104 (= tp!642554 b_and!170551)))

(declare-fun b!2111103 () Bool)

(declare-fun b_free!60973 () Bool)

(declare-fun b_next!61677 () Bool)

(assert (=> b!2111103 (= b_free!60973 (not b_next!61677))))

(declare-fun tp!642566 () Bool)

(declare-fun b_and!170553 () Bool)

(assert (=> b!2111103 (= tp!642566 b_and!170553)))

(declare-fun b!2111093 () Bool)

(declare-fun b_free!60975 () Bool)

(declare-fun b_next!61679 () Bool)

(assert (=> b!2111093 (= b_free!60975 (not b_next!61679))))

(declare-fun tp!642562 () Bool)

(declare-fun b_and!170555 () Bool)

(assert (=> b!2111093 (= tp!642562 b_and!170555)))

(declare-fun b!2111092 () Bool)

(declare-fun e!1342774 () Bool)

(declare-datatypes ((C!11352 0))(
  ( (C!11353 (val!6662 Int)) )
))
(declare-datatypes ((List!23495 0))(
  ( (Nil!23411) (Cons!23411 (h!28812 C!11352) (t!196004 List!23495)) )
))
(declare-datatypes ((IArray!15499 0))(
  ( (IArray!15500 (innerList!7807 List!23495)) )
))
(declare-datatypes ((Conc!7747 0))(
  ( (Node!7747 (left!18203 Conc!7747) (right!18533 Conc!7747) (csize!15724 Int) (cheight!7958 Int)) (Leaf!11316 (xs!10689 IArray!15499) (csize!15725 Int)) (Empty!7747) )
))
(declare-datatypes ((BalanceConc!15256 0))(
  ( (BalanceConc!15257 (c!339134 Conc!7747)) )
))
(declare-fun input!6603 () BalanceConc!15256)

(declare-fun tp!642553 () Bool)

(declare-fun inv!30984 (Conc!7747) Bool)

(assert (=> b!2111092 (= e!1342774 (and (inv!30984 (c!339134 input!6603)) tp!642553))))

(declare-fun tp!642564 () Bool)

(declare-fun tp!642563 () Bool)

(declare-fun e!1342783 () Bool)

(declare-datatypes ((Regex!5603 0))(
  ( (ElementMatch!5603 (c!339135 C!11352)) (Concat!9905 (regOne!11718 Regex!5603) (regTwo!11718 Regex!5603)) (EmptyExpr!5603) (Star!5603 (reg!5932 Regex!5603)) (EmptyLang!5603) (Union!5603 (regOne!11719 Regex!5603) (regTwo!11719 Regex!5603)) )
))
(declare-datatypes ((List!23496 0))(
  ( (Nil!23412) (Cons!23412 (h!28813 Regex!5603) (t!196005 List!23496)) )
))
(declare-datatypes ((Context!2346 0))(
  ( (Context!2347 (exprs!1673 List!23496)) )
))
(declare-datatypes ((tuple2!22776 0))(
  ( (tuple2!22777 (_1!13190 Context!2346) (_2!13190 C!11352)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22778 0))(
  ( (tuple2!22779 (_1!13191 tuple2!22776) (_2!13191 (InoxSet Context!2346))) )
))
(declare-datatypes ((List!23497 0))(
  ( (Nil!23413) (Cons!23413 (h!28814 tuple2!22778) (t!196006 List!23497)) )
))
(declare-datatypes ((array!7976 0))(
  ( (array!7977 (arr!3531 (Array (_ BitVec 32) (_ BitVec 64))) (size!18273 (_ BitVec 32))) )
))
(declare-datatypes ((array!7978 0))(
  ( (array!7979 (arr!3532 (Array (_ BitVec 32) List!23497)) (size!18274 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4614 0))(
  ( (LongMapFixedSize!4615 (defaultEntry!2672 Int) (mask!6424 (_ BitVec 32)) (extraKeys!2555 (_ BitVec 32)) (zeroValue!2565 List!23497) (minValue!2565 List!23497) (_size!4665 (_ BitVec 32)) (_keys!2604 array!7976) (_values!2587 array!7978) (_vacant!2368 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9053 0))(
  ( (Cell!9054 (v!27941 LongMapFixedSize!4614)) )
))
(declare-datatypes ((Hashable!2221 0))(
  ( (HashableExt!2220 (__x!15097 Int)) )
))
(declare-datatypes ((MutLongMap!2307 0))(
  ( (LongMap!2307 (underlying!4809 Cell!9053)) (MutLongMapExt!2306 (__x!15098 Int)) )
))
(declare-datatypes ((Cell!9055 0))(
  ( (Cell!9056 (v!27942 MutLongMap!2307)) )
))
(declare-datatypes ((MutableMap!2221 0))(
  ( (MutableMapExt!2220 (__x!15099 Int)) (HashMap!2221 (underlying!4810 Cell!9055) (hashF!4144 Hashable!2221) (_size!4666 (_ BitVec 32)) (defaultValue!2383 Int)) )
))
(declare-datatypes ((CacheUp!1516 0))(
  ( (CacheUp!1517 (cache!2602 MutableMap!2221)) )
))
(declare-fun cacheUp!1078 () CacheUp!1516)

(declare-fun e!1342771 () Bool)

(declare-fun array_inv!2541 (array!7976) Bool)

(declare-fun array_inv!2542 (array!7978) Bool)

(assert (=> b!2111093 (= e!1342783 (and tp!642562 tp!642564 tp!642563 (array_inv!2541 (_keys!2604 (v!27941 (underlying!4809 (v!27942 (underlying!4810 (cache!2602 cacheUp!1078))))))) (array_inv!2542 (_values!2587 (v!27941 (underlying!4809 (v!27942 (underlying!4810 (cache!2602 cacheUp!1078))))))) e!1342771))))

(declare-datatypes ((tuple3!2676 0))(
  ( (tuple3!2677 (_1!13192 Regex!5603) (_2!13192 Context!2346) (_3!1802 C!11352)) )
))
(declare-datatypes ((tuple2!22780 0))(
  ( (tuple2!22781 (_1!13193 tuple3!2676) (_2!13193 (InoxSet Context!2346))) )
))
(declare-datatypes ((List!23498 0))(
  ( (Nil!23414) (Cons!23414 (h!28815 tuple2!22780) (t!196007 List!23498)) )
))
(declare-datatypes ((array!7980 0))(
  ( (array!7981 (arr!3533 (Array (_ BitVec 32) List!23498)) (size!18275 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4616 0))(
  ( (LongMapFixedSize!4617 (defaultEntry!2673 Int) (mask!6425 (_ BitVec 32)) (extraKeys!2556 (_ BitVec 32)) (zeroValue!2566 List!23498) (minValue!2566 List!23498) (_size!4667 (_ BitVec 32)) (_keys!2605 array!7976) (_values!2588 array!7980) (_vacant!2369 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9057 0))(
  ( (Cell!9058 (v!27943 LongMapFixedSize!4616)) )
))
(declare-datatypes ((MutLongMap!2308 0))(
  ( (LongMap!2308 (underlying!4811 Cell!9057)) (MutLongMapExt!2307 (__x!15100 Int)) )
))
(declare-datatypes ((Cell!9059 0))(
  ( (Cell!9060 (v!27944 MutLongMap!2308)) )
))
(declare-datatypes ((Hashable!2222 0))(
  ( (HashableExt!2221 (__x!15101 Int)) )
))
(declare-datatypes ((MutableMap!2222 0))(
  ( (MutableMapExt!2221 (__x!15102 Int)) (HashMap!2222 (underlying!4812 Cell!9059) (hashF!4145 Hashable!2222) (_size!4668 (_ BitVec 32)) (defaultValue!2384 Int)) )
))
(declare-datatypes ((CacheDown!1520 0))(
  ( (CacheDown!1521 (cache!2603 MutableMap!2222)) )
))
(declare-fun cacheDown!1197 () CacheDown!1520)

(declare-fun tp!642549 () Bool)

(declare-fun tp!642560 () Bool)

(declare-fun e!1342777 () Bool)

(declare-fun e!1342781 () Bool)

(declare-fun array_inv!2543 (array!7980) Bool)

(assert (=> b!2111094 (= e!1342777 (and tp!642552 tp!642549 tp!642560 (array_inv!2541 (_keys!2605 (v!27943 (underlying!4811 (v!27944 (underlying!4812 (cache!2603 cacheDown!1197))))))) (array_inv!2543 (_values!2588 (v!27943 (underlying!4811 (v!27944 (underlying!4812 (cache!2603 cacheDown!1197))))))) e!1342781))))

(declare-fun mapNonEmpty!11138 () Bool)

(declare-fun mapRes!11138 () Bool)

(declare-fun tp!642555 () Bool)

(declare-fun tp!642567 () Bool)

(assert (=> mapNonEmpty!11138 (= mapRes!11138 (and tp!642555 tp!642567))))

(declare-fun mapRest!11138 () (Array (_ BitVec 32) List!23497))

(declare-fun mapValue!11139 () List!23497)

(declare-fun mapKey!11138 () (_ BitVec 32))

(assert (=> mapNonEmpty!11138 (= (arr!3532 (_values!2587 (v!27941 (underlying!4809 (v!27942 (underlying!4810 (cache!2602 cacheUp!1078))))))) (store mapRest!11138 mapKey!11138 mapValue!11139))))

(declare-fun b!2111095 () Bool)

(declare-fun e!1342766 () Bool)

(declare-fun e!1342785 () Bool)

(assert (=> b!2111095 (= e!1342766 e!1342785)))

(declare-fun b!2111096 () Bool)

(declare-fun res!916885 () Bool)

(declare-fun e!1342782 () Bool)

(assert (=> b!2111096 (=> (not res!916885) (not e!1342782))))

(declare-fun valid!1821 (CacheDown!1520) Bool)

(assert (=> b!2111096 (= res!916885 (valid!1821 cacheDown!1197))))

(declare-fun b!2111097 () Bool)

(declare-fun tp!642557 () Bool)

(assert (=> b!2111097 (= e!1342771 (and tp!642557 mapRes!11138))))

(declare-fun condMapEmpty!11139 () Bool)

(declare-fun mapDefault!11139 () List!23497)

(assert (=> b!2111097 (= condMapEmpty!11139 (= (arr!3532 (_values!2587 (v!27941 (underlying!4809 (v!27942 (underlying!4810 (cache!2602 cacheUp!1078))))))) ((as const (Array (_ BitVec 32) List!23497)) mapDefault!11139)))))

(declare-fun b!2111098 () Bool)

(declare-fun e!1342776 () Bool)

(declare-fun tp_is_empty!9395 () Bool)

(assert (=> b!2111098 (= e!1342776 tp_is_empty!9395)))

(declare-fun b!2111099 () Bool)

(declare-fun e!1342778 () Bool)

(assert (=> b!2111099 (= e!1342778 e!1342777)))

(declare-fun res!916884 () Bool)

(assert (=> start!206436 (=> (not res!916884) (not e!1342782))))

(declare-fun r!15329 () Regex!5603)

(declare-fun validRegex!2205 (Regex!5603) Bool)

(assert (=> start!206436 (= res!916884 (validRegex!2205 r!15329))))

(assert (=> start!206436 e!1342782))

(declare-fun inv!30985 (BalanceConc!15256) Bool)

(assert (=> start!206436 (and (inv!30985 input!6603) e!1342774)))

(declare-fun e!1342773 () Bool)

(declare-fun inv!30986 (CacheDown!1520) Bool)

(assert (=> start!206436 (and (inv!30986 cacheDown!1197) e!1342773)))

(assert (=> start!206436 e!1342776))

(declare-fun totalInput!1248 () BalanceConc!15256)

(declare-fun e!1342784 () Bool)

(assert (=> start!206436 (and (inv!30985 totalInput!1248) e!1342784)))

(declare-fun e!1342770 () Bool)

(declare-fun inv!30987 (CacheUp!1516) Bool)

(assert (=> start!206436 (and (inv!30987 cacheUp!1078) e!1342770)))

(declare-fun b!2111100 () Bool)

(declare-fun tp!642550 () Bool)

(assert (=> b!2111100 (= e!1342784 (and (inv!30984 (c!339134 totalInput!1248)) tp!642550))))

(declare-fun b!2111101 () Bool)

(declare-fun tp!642558 () Bool)

(declare-fun mapRes!11139 () Bool)

(assert (=> b!2111101 (= e!1342781 (and tp!642558 mapRes!11139))))

(declare-fun condMapEmpty!11138 () Bool)

(declare-fun mapDefault!11138 () List!23498)

(assert (=> b!2111101 (= condMapEmpty!11138 (= (arr!3533 (_values!2588 (v!27943 (underlying!4811 (v!27944 (underlying!4812 (cache!2603 cacheDown!1197))))))) ((as const (Array (_ BitVec 32) List!23498)) mapDefault!11138)))))

(declare-fun b!2111102 () Bool)

(assert (=> b!2111102 (= e!1342785 e!1342783)))

(declare-fun e!1342772 () Bool)

(declare-fun e!1342767 () Bool)

(assert (=> b!2111103 (= e!1342772 (and e!1342767 tp!642566))))

(declare-fun e!1342768 () Bool)

(declare-fun e!1342769 () Bool)

(assert (=> b!2111104 (= e!1342768 (and e!1342769 tp!642554))))

(declare-fun b!2111105 () Bool)

(assert (=> b!2111105 (= e!1342773 e!1342768)))

(declare-fun mapIsEmpty!11138 () Bool)

(assert (=> mapIsEmpty!11138 mapRes!11139))

(declare-fun b!2111106 () Bool)

(declare-fun e!1342779 () Bool)

(declare-fun lt!792332 () MutLongMap!2308)

(get-info :version)

(assert (=> b!2111106 (= e!1342769 (and e!1342779 ((_ is LongMap!2308) lt!792332)))))

(assert (=> b!2111106 (= lt!792332 (v!27944 (underlying!4812 (cache!2603 cacheDown!1197))))))

(declare-fun b!2111107 () Bool)

(declare-fun lt!792330 () MutLongMap!2307)

(assert (=> b!2111107 (= e!1342767 (and e!1342766 ((_ is LongMap!2307) lt!792330)))))

(assert (=> b!2111107 (= lt!792330 (v!27942 (underlying!4810 (cache!2602 cacheUp!1078))))))

(declare-fun mapIsEmpty!11139 () Bool)

(assert (=> mapIsEmpty!11139 mapRes!11138))

(declare-fun b!2111108 () Bool)

(assert (=> b!2111108 (= e!1342770 e!1342772)))

(declare-fun b!2111109 () Bool)

(declare-fun res!916886 () Bool)

(assert (=> b!2111109 (=> (not res!916886) (not e!1342782))))

(declare-fun valid!1822 (CacheUp!1516) Bool)

(assert (=> b!2111109 (= res!916886 (valid!1822 cacheUp!1078))))

(declare-fun b!2111110 () Bool)

(declare-fun tp!642556 () Bool)

(declare-fun tp!642569 () Bool)

(assert (=> b!2111110 (= e!1342776 (and tp!642556 tp!642569))))

(declare-fun mapNonEmpty!11139 () Bool)

(declare-fun tp!642561 () Bool)

(declare-fun tp!642565 () Bool)

(assert (=> mapNonEmpty!11139 (= mapRes!11139 (and tp!642561 tp!642565))))

(declare-fun mapValue!11138 () List!23498)

(declare-fun mapKey!11139 () (_ BitVec 32))

(declare-fun mapRest!11139 () (Array (_ BitVec 32) List!23498))

(assert (=> mapNonEmpty!11139 (= (arr!3533 (_values!2588 (v!27943 (underlying!4811 (v!27944 (underlying!4812 (cache!2603 cacheDown!1197))))))) (store mapRest!11139 mapKey!11139 mapValue!11138))))

(declare-fun b!2111111 () Bool)

(assert (=> b!2111111 (= e!1342782 false)))

(declare-fun lt!792331 () Bool)

(declare-fun isSuffix!578 (List!23495 List!23495) Bool)

(declare-fun list!9475 (BalanceConc!15256) List!23495)

(assert (=> b!2111111 (= lt!792331 (isSuffix!578 (list!9475 input!6603) (list!9475 totalInput!1248)))))

(declare-fun b!2111112 () Bool)

(declare-fun tp!642568 () Bool)

(assert (=> b!2111112 (= e!1342776 tp!642568)))

(declare-fun b!2111113 () Bool)

(declare-fun tp!642559 () Bool)

(declare-fun tp!642551 () Bool)

(assert (=> b!2111113 (= e!1342776 (and tp!642559 tp!642551))))

(declare-fun b!2111114 () Bool)

(assert (=> b!2111114 (= e!1342779 e!1342778)))

(assert (= (and start!206436 res!916884) b!2111109))

(assert (= (and b!2111109 res!916886) b!2111096))

(assert (= (and b!2111096 res!916885) b!2111111))

(assert (= start!206436 b!2111092))

(assert (= (and b!2111101 condMapEmpty!11138) mapIsEmpty!11138))

(assert (= (and b!2111101 (not condMapEmpty!11138)) mapNonEmpty!11139))

(assert (= b!2111094 b!2111101))

(assert (= b!2111099 b!2111094))

(assert (= b!2111114 b!2111099))

(assert (= (and b!2111106 ((_ is LongMap!2308) (v!27944 (underlying!4812 (cache!2603 cacheDown!1197))))) b!2111114))

(assert (= b!2111104 b!2111106))

(assert (= (and b!2111105 ((_ is HashMap!2222) (cache!2603 cacheDown!1197))) b!2111104))

(assert (= start!206436 b!2111105))

(assert (= (and start!206436 ((_ is ElementMatch!5603) r!15329)) b!2111098))

(assert (= (and start!206436 ((_ is Concat!9905) r!15329)) b!2111110))

(assert (= (and start!206436 ((_ is Star!5603) r!15329)) b!2111112))

(assert (= (and start!206436 ((_ is Union!5603) r!15329)) b!2111113))

(assert (= start!206436 b!2111100))

(assert (= (and b!2111097 condMapEmpty!11139) mapIsEmpty!11139))

(assert (= (and b!2111097 (not condMapEmpty!11139)) mapNonEmpty!11138))

(assert (= b!2111093 b!2111097))

(assert (= b!2111102 b!2111093))

(assert (= b!2111095 b!2111102))

(assert (= (and b!2111107 ((_ is LongMap!2307) (v!27942 (underlying!4810 (cache!2602 cacheUp!1078))))) b!2111095))

(assert (= b!2111103 b!2111107))

(assert (= (and b!2111108 ((_ is HashMap!2221) (cache!2602 cacheUp!1078))) b!2111103))

(assert (= start!206436 b!2111108))

(declare-fun m!2568041 () Bool)

(assert (=> mapNonEmpty!11138 m!2568041))

(declare-fun m!2568043 () Bool)

(assert (=> mapNonEmpty!11139 m!2568043))

(declare-fun m!2568045 () Bool)

(assert (=> b!2111096 m!2568045))

(declare-fun m!2568047 () Bool)

(assert (=> b!2111092 m!2568047))

(declare-fun m!2568049 () Bool)

(assert (=> b!2111109 m!2568049))

(declare-fun m!2568051 () Bool)

(assert (=> start!206436 m!2568051))

(declare-fun m!2568053 () Bool)

(assert (=> start!206436 m!2568053))

(declare-fun m!2568055 () Bool)

(assert (=> start!206436 m!2568055))

(declare-fun m!2568057 () Bool)

(assert (=> start!206436 m!2568057))

(declare-fun m!2568059 () Bool)

(assert (=> start!206436 m!2568059))

(declare-fun m!2568061 () Bool)

(assert (=> b!2111100 m!2568061))

(declare-fun m!2568063 () Bool)

(assert (=> b!2111094 m!2568063))

(declare-fun m!2568065 () Bool)

(assert (=> b!2111094 m!2568065))

(declare-fun m!2568067 () Bool)

(assert (=> b!2111111 m!2568067))

(declare-fun m!2568069 () Bool)

(assert (=> b!2111111 m!2568069))

(assert (=> b!2111111 m!2568067))

(assert (=> b!2111111 m!2568069))

(declare-fun m!2568071 () Bool)

(assert (=> b!2111111 m!2568071))

(declare-fun m!2568073 () Bool)

(assert (=> b!2111093 m!2568073))

(declare-fun m!2568075 () Bool)

(assert (=> b!2111093 m!2568075))

(check-sat (not b!2111112) (not b_next!61673) (not b!2111113) tp_is_empty!9395 b_and!170551 (not b!2111096) (not b!2111110) (not b!2111092) (not mapNonEmpty!11139) (not b_next!61675) b_and!170555 (not b!2111094) b_and!170553 (not b!2111097) (not start!206436) (not b!2111111) b_and!170549 (not b!2111093) (not b!2111101) (not b_next!61677) (not b!2111109) (not b!2111100) (not b_next!61679) (not mapNonEmpty!11138))
(check-sat b_and!170553 (not b_next!61673) b_and!170549 b_and!170551 (not b_next!61677) (not b_next!61675) (not b_next!61679) b_and!170555)
