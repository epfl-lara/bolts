; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269994 () Bool)

(assert start!269994)

(declare-fun b!2793080 () Bool)

(declare-fun b_free!79045 () Bool)

(declare-fun b_next!79749 () Bool)

(assert (=> b!2793080 (= b_free!79045 (not b_next!79749))))

(declare-fun tp!887587 () Bool)

(declare-fun b_and!203783 () Bool)

(assert (=> b!2793080 (= tp!887587 b_and!203783)))

(declare-fun b!2793075 () Bool)

(declare-fun b_free!79047 () Bool)

(declare-fun b_next!79751 () Bool)

(assert (=> b!2793075 (= b_free!79047 (not b_next!79751))))

(declare-fun tp!887598 () Bool)

(declare-fun b_and!203785 () Bool)

(assert (=> b!2793075 (= tp!887598 b_and!203785)))

(declare-fun b!2793064 () Bool)

(declare-fun b_free!79049 () Bool)

(declare-fun b_next!79753 () Bool)

(assert (=> b!2793064 (= b_free!79049 (not b_next!79753))))

(declare-fun tp!887585 () Bool)

(declare-fun b_and!203787 () Bool)

(assert (=> b!2793064 (= tp!887585 b_and!203787)))

(declare-fun b!2793067 () Bool)

(declare-fun b_free!79051 () Bool)

(declare-fun b_next!79755 () Bool)

(assert (=> b!2793067 (= b_free!79051 (not b_next!79755))))

(declare-fun tp!887601 () Bool)

(declare-fun b_and!203789 () Bool)

(assert (=> b!2793067 (= tp!887601 b_and!203789)))

(declare-fun b!2793053 () Bool)

(declare-fun e!1763493 () Bool)

(declare-fun tp!887600 () Bool)

(declare-fun mapRes!17987 () Bool)

(assert (=> b!2793053 (= e!1763493 (and tp!887600 mapRes!17987))))

(declare-fun condMapEmpty!17987 () Bool)

(declare-datatypes ((Hashable!3866 0))(
  ( (HashableExt!3865 (__x!21500 Int)) )
))
(declare-datatypes ((C!16512 0))(
  ( (C!16513 (val!10190 Int)) )
))
(declare-datatypes ((Regex!8177 0))(
  ( (ElementMatch!8177 (c!453335 C!16512)) (Concat!13265 (regOne!16866 Regex!8177) (regTwo!16866 Regex!8177)) (EmptyExpr!8177) (Star!8177 (reg!8506 Regex!8177)) (EmptyLang!8177) (Union!8177 (regOne!16867 Regex!8177) (regTwo!16867 Regex!8177)) )
))
(declare-datatypes ((List!32471 0))(
  ( (Nil!32371) (Cons!32371 (h!37791 Regex!8177) (t!228623 List!32471)) )
))
(declare-datatypes ((Context!4790 0))(
  ( (Context!4791 (exprs!2895 List!32471)) )
))
(declare-datatypes ((tuple2!32844 0))(
  ( (tuple2!32845 (_1!19437 Context!4790) (_2!19437 C!16512)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32846 0))(
  ( (tuple2!32847 (_1!19438 tuple2!32844) (_2!19438 (InoxSet Context!4790))) )
))
(declare-datatypes ((List!32472 0))(
  ( (Nil!32372) (Cons!32372 (h!37792 tuple2!32846) (t!228624 List!32472)) )
))
(declare-datatypes ((array!14047 0))(
  ( (array!14048 (arr!6260 (Array (_ BitVec 32) List!32472)) (size!25205 (_ BitVec 32))) )
))
(declare-datatypes ((array!14049 0))(
  ( (array!14050 (arr!6261 (Array (_ BitVec 32) (_ BitVec 64))) (size!25206 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7900 0))(
  ( (LongMapFixedSize!7901 (defaultEntry!4335 Int) (mask!9775 (_ BitVec 32)) (extraKeys!4199 (_ BitVec 32)) (zeroValue!4209 List!32472) (minValue!4209 List!32472) (_size!7943 (_ BitVec 32)) (_keys!4250 array!14049) (_values!4231 array!14047) (_vacant!4011 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15609 0))(
  ( (Cell!15610 (v!33975 LongMapFixedSize!7900)) )
))
(declare-datatypes ((MutLongMap!3950 0))(
  ( (LongMap!3950 (underlying!8103 Cell!15609)) (MutLongMapExt!3949 (__x!21501 Int)) )
))
(declare-datatypes ((Cell!15611 0))(
  ( (Cell!15612 (v!33976 MutLongMap!3950)) )
))
(declare-datatypes ((MutableMap!3856 0))(
  ( (MutableMapExt!3855 (__x!21502 Int)) (HashMap!3856 (underlying!8104 Cell!15611) (hashF!5898 Hashable!3866) (_size!7944 (_ BitVec 32)) (defaultValue!4027 Int)) )
))
(declare-datatypes ((CacheUp!2562 0))(
  ( (CacheUp!2563 (cache!3999 MutableMap!3856)) )
))
(declare-fun cacheUp!890 () CacheUp!2562)

(declare-fun mapDefault!17988 () List!32472)

(assert (=> b!2793053 (= condMapEmpty!17987 (= (arr!6260 (_values!4231 (v!33975 (underlying!8103 (v!33976 (underlying!8104 (cache!3999 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32472)) mapDefault!17988)))))

(declare-fun b!2793055 () Bool)

(declare-fun e!1763486 () Bool)

(declare-fun tp!887593 () Bool)

(declare-fun mapRes!17988 () Bool)

(assert (=> b!2793055 (= e!1763486 (and tp!887593 mapRes!17988))))

(declare-fun condMapEmpty!17988 () Bool)

(declare-datatypes ((tuple3!5090 0))(
  ( (tuple3!5091 (_1!19439 Regex!8177) (_2!19439 Context!4790) (_3!3015 C!16512)) )
))
(declare-datatypes ((tuple2!32848 0))(
  ( (tuple2!32849 (_1!19440 tuple3!5090) (_2!19440 (InoxSet Context!4790))) )
))
(declare-datatypes ((List!32473 0))(
  ( (Nil!32373) (Cons!32373 (h!37793 tuple2!32848) (t!228625 List!32473)) )
))
(declare-datatypes ((array!14051 0))(
  ( (array!14052 (arr!6262 (Array (_ BitVec 32) List!32473)) (size!25207 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7902 0))(
  ( (LongMapFixedSize!7903 (defaultEntry!4336 Int) (mask!9776 (_ BitVec 32)) (extraKeys!4200 (_ BitVec 32)) (zeroValue!4210 List!32473) (minValue!4210 List!32473) (_size!7945 (_ BitVec 32)) (_keys!4251 array!14049) (_values!4232 array!14051) (_vacant!4012 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15613 0))(
  ( (Cell!15614 (v!33977 LongMapFixedSize!7902)) )
))
(declare-datatypes ((MutLongMap!3951 0))(
  ( (LongMap!3951 (underlying!8105 Cell!15613)) (MutLongMapExt!3950 (__x!21503 Int)) )
))
(declare-datatypes ((Cell!15615 0))(
  ( (Cell!15616 (v!33978 MutLongMap!3951)) )
))
(declare-datatypes ((Hashable!3867 0))(
  ( (HashableExt!3866 (__x!21504 Int)) )
))
(declare-datatypes ((MutableMap!3857 0))(
  ( (MutableMapExt!3856 (__x!21505 Int)) (HashMap!3857 (underlying!8106 Cell!15615) (hashF!5899 Hashable!3867) (_size!7946 (_ BitVec 32)) (defaultValue!4028 Int)) )
))
(declare-datatypes ((CacheDown!2682 0))(
  ( (CacheDown!2683 (cache!4000 MutableMap!3857)) )
))
(declare-fun cacheDown!1009 () CacheDown!2682)

(declare-fun mapDefault!17987 () List!32473)

(assert (=> b!2793055 (= condMapEmpty!17988 (= (arr!6262 (_values!4232 (v!33977 (underlying!8105 (v!33978 (underlying!8106 (cache!4000 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32473)) mapDefault!17987)))))

(declare-fun tp!887590 () Bool)

(declare-fun setElem!23994 () Context!4790)

(declare-fun e!1763489 () Bool)

(declare-fun setNonEmpty!23994 () Bool)

(declare-fun setRes!23994 () Bool)

(declare-fun inv!43977 (Context!4790) Bool)

(assert (=> setNonEmpty!23994 (= setRes!23994 (and tp!887590 (inv!43977 setElem!23994) e!1763489))))

(declare-fun z!3684 () (InoxSet Context!4790))

(declare-fun setRest!23994 () (InoxSet Context!4790))

(assert (=> setNonEmpty!23994 (= z!3684 ((_ map or) (store ((as const (Array Context!4790 Bool)) false) setElem!23994 true) setRest!23994))))

(declare-fun b!2793056 () Bool)

(declare-fun e!1763501 () Bool)

(declare-fun e!1763488 () Bool)

(assert (=> b!2793056 (= e!1763501 e!1763488)))

(declare-fun res!1164830 () Bool)

(assert (=> b!2793056 (=> res!1164830 e!1763488)))

(declare-fun lostCauseZipper!483 ((InoxSet Context!4790)) Bool)

(assert (=> b!2793056 (= res!1164830 (lostCauseZipper!483 z!3684))))

(declare-datatypes ((List!32474 0))(
  ( (Nil!32374) (Cons!32374 (h!37794 C!16512) (t!228626 List!32474)) )
))
(declare-fun testedSuffix!143 () List!32474)

(declare-fun lt!998091 () List!32474)

(assert (=> b!2793056 (and (= testedSuffix!143 lt!998091) (= lt!998091 testedSuffix!143))))

(declare-datatypes ((Unit!46558 0))(
  ( (Unit!46559) )
))
(declare-fun lt!998095 () Unit!46558)

(declare-fun testedP!183 () List!32474)

(declare-fun lt!998094 () List!32474)

(declare-fun lemmaSamePrefixThenSameSuffix!1184 (List!32474 List!32474 List!32474 List!32474 List!32474) Unit!46558)

(assert (=> b!2793056 (= lt!998095 (lemmaSamePrefixThenSameSuffix!1184 testedP!183 testedSuffix!143 testedP!183 lt!998091 lt!998094))))

(declare-fun getSuffix!1283 (List!32474 List!32474) List!32474)

(assert (=> b!2793056 (= lt!998091 (getSuffix!1283 lt!998094 testedP!183))))

(declare-fun b!2793057 () Bool)

(declare-fun e!1763492 () Bool)

(declare-fun e!1763498 () Bool)

(assert (=> b!2793057 (= e!1763492 e!1763498)))

(declare-fun mapIsEmpty!17987 () Bool)

(assert (=> mapIsEmpty!17987 mapRes!17988))

(declare-fun b!2793058 () Bool)

(declare-fun res!1164832 () Bool)

(declare-fun e!1763499 () Bool)

(assert (=> b!2793058 (=> (not res!1164832) (not e!1763499))))

(declare-fun testedPSize!143 () Int)

(declare-fun size!25208 (List!32474) Int)

(assert (=> b!2793058 (= res!1164832 (= testedPSize!143 (size!25208 testedP!183)))))

(declare-fun setIsEmpty!23994 () Bool)

(assert (=> setIsEmpty!23994 setRes!23994))

(declare-fun b!2793059 () Bool)

(declare-fun res!1164831 () Bool)

(assert (=> b!2793059 (=> (not res!1164831) (not e!1763499))))

(declare-fun totalInputSize!205 () Int)

(declare-datatypes ((IArray!20089 0))(
  ( (IArray!20090 (innerList!10102 List!32474)) )
))
(declare-datatypes ((Conc!10042 0))(
  ( (Node!10042 (left!24526 Conc!10042) (right!24856 Conc!10042) (csize!20314 Int) (cheight!10253 Int)) (Leaf!15299 (xs!13154 IArray!20089) (csize!20315 Int)) (Empty!10042) )
))
(declare-datatypes ((BalanceConc!19698 0))(
  ( (BalanceConc!19699 (c!453336 Conc!10042)) )
))
(declare-fun totalInput!758 () BalanceConc!19698)

(declare-fun size!25209 (BalanceConc!19698) Int)

(assert (=> b!2793059 (= res!1164831 (= totalInputSize!205 (size!25209 totalInput!758)))))

(declare-fun b!2793060 () Bool)

(declare-fun res!1164833 () Bool)

(declare-fun e!1763503 () Bool)

(assert (=> b!2793060 (=> res!1164833 e!1763503)))

(declare-datatypes ((tuple2!32850 0))(
  ( (tuple2!32851 (_1!19441 BalanceConc!19698) (_2!19441 BalanceConc!19698)) )
))
(declare-fun lt!998097 () tuple2!32850)

(assert (=> b!2793060 (= res!1164833 (not (= (size!25209 (_1!19441 lt!998097)) testedPSize!143)))))

(declare-fun b!2793061 () Bool)

(declare-fun e!1763490 () Bool)

(declare-fun tp!887603 () Bool)

(declare-fun inv!43978 (Conc!10042) Bool)

(assert (=> b!2793061 (= e!1763490 (and (inv!43978 (c!453336 totalInput!758)) tp!887603))))

(declare-fun b!2793062 () Bool)

(declare-fun e!1763495 () Bool)

(declare-fun e!1763496 () Bool)

(assert (=> b!2793062 (= e!1763495 e!1763496)))

(declare-fun b!2793063 () Bool)

(declare-fun e!1763491 () Bool)

(declare-fun e!1763509 () Bool)

(declare-fun lt!998098 () MutLongMap!3950)

(get-info :version)

(assert (=> b!2793063 (= e!1763491 (and e!1763509 ((_ is LongMap!3950) lt!998098)))))

(assert (=> b!2793063 (= lt!998098 (v!33976 (underlying!8104 (cache!3999 cacheUp!890))))))

(declare-fun tp!887588 () Bool)

(declare-fun tp!887592 () Bool)

(declare-fun array_inv!4479 (array!14049) Bool)

(declare-fun array_inv!4480 (array!14047) Bool)

(assert (=> b!2793064 (= e!1763496 (and tp!887585 tp!887588 tp!887592 (array_inv!4479 (_keys!4250 (v!33975 (underlying!8103 (v!33976 (underlying!8104 (cache!3999 cacheUp!890))))))) (array_inv!4480 (_values!4231 (v!33975 (underlying!8103 (v!33976 (underlying!8104 (cache!3999 cacheUp!890))))))) e!1763493))))

(declare-fun res!1164836 () Bool)

(assert (=> start!269994 (=> (not res!1164836) (not e!1763499))))

(declare-fun lt!998102 () List!32474)

(assert (=> start!269994 (= res!1164836 (= lt!998102 lt!998094))))

(declare-fun list!12173 (BalanceConc!19698) List!32474)

(assert (=> start!269994 (= lt!998094 (list!12173 totalInput!758))))

(declare-fun ++!7991 (List!32474 List!32474) List!32474)

(assert (=> start!269994 (= lt!998102 (++!7991 testedP!183 testedSuffix!143))))

(assert (=> start!269994 e!1763499))

(declare-fun inv!43979 (BalanceConc!19698) Bool)

(assert (=> start!269994 (and (inv!43979 totalInput!758) e!1763490)))

(declare-fun condSetEmpty!23994 () Bool)

(assert (=> start!269994 (= condSetEmpty!23994 (= z!3684 ((as const (Array Context!4790 Bool)) false)))))

(assert (=> start!269994 setRes!23994))

(assert (=> start!269994 true))

(declare-fun e!1763504 () Bool)

(assert (=> start!269994 e!1763504))

(declare-fun e!1763507 () Bool)

(assert (=> start!269994 e!1763507))

(declare-fun e!1763502 () Bool)

(declare-fun inv!43980 (CacheDown!2682) Bool)

(assert (=> start!269994 (and (inv!43980 cacheDown!1009) e!1763502)))

(declare-fun e!1763505 () Bool)

(declare-fun inv!43981 (CacheUp!2562) Bool)

(assert (=> start!269994 (and (inv!43981 cacheUp!890) e!1763505)))

(declare-fun b!2793054 () Bool)

(declare-fun e!1763508 () Bool)

(assert (=> b!2793054 (= e!1763505 e!1763508)))

(declare-fun b!2793065 () Bool)

(declare-fun res!1164839 () Bool)

(assert (=> b!2793065 (=> res!1164839 e!1763488)))

(assert (=> b!2793065 (= res!1164839 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2793066 () Bool)

(declare-fun res!1164835 () Bool)

(assert (=> b!2793066 (=> (not res!1164835) (not e!1763499))))

(declare-fun valid!3091 (CacheUp!2562) Bool)

(assert (=> b!2793066 (= res!1164835 (valid!3091 cacheUp!890))))

(declare-fun e!1763487 () Bool)

(declare-fun e!1763506 () Bool)

(assert (=> b!2793067 (= e!1763487 (and e!1763506 tp!887601))))

(declare-fun mapNonEmpty!17987 () Bool)

(declare-fun tp!887595 () Bool)

(declare-fun tp!887596 () Bool)

(assert (=> mapNonEmpty!17987 (= mapRes!17987 (and tp!887595 tp!887596))))

(declare-fun mapValue!17988 () List!32472)

(declare-fun mapKey!17988 () (_ BitVec 32))

(declare-fun mapRest!17987 () (Array (_ BitVec 32) List!32472))

(assert (=> mapNonEmpty!17987 (= (arr!6260 (_values!4231 (v!33975 (underlying!8103 (v!33976 (underlying!8104 (cache!3999 cacheUp!890))))))) (store mapRest!17987 mapKey!17988 mapValue!17988))))

(declare-fun b!2793068 () Bool)

(declare-fun res!1164838 () Bool)

(assert (=> b!2793068 (=> (not res!1164838) (not e!1763499))))

(declare-fun valid!3092 (CacheDown!2682) Bool)

(assert (=> b!2793068 (= res!1164838 (valid!3092 cacheDown!1009))))

(declare-fun b!2793069 () Bool)

(declare-fun tp_is_empty!14167 () Bool)

(declare-fun tp!887602 () Bool)

(assert (=> b!2793069 (= e!1763504 (and tp_is_empty!14167 tp!887602))))

(declare-fun b!2793070 () Bool)

(assert (=> b!2793070 (= e!1763509 e!1763495)))

(declare-fun b!2793071 () Bool)

(declare-fun e!1763500 () Bool)

(assert (=> b!2793071 (= e!1763500 e!1763492)))

(declare-fun b!2793072 () Bool)

(declare-fun tp!887594 () Bool)

(assert (=> b!2793072 (= e!1763489 tp!887594)))

(declare-fun b!2793073 () Bool)

(assert (=> b!2793073 (= e!1763502 e!1763487)))

(declare-fun b!2793074 () Bool)

(declare-fun lt!998096 () Bool)

(assert (=> b!2793074 (= e!1763503 lt!998096)))

(declare-fun lt!998092 () List!32474)

(assert (=> b!2793074 (and lt!998096 (= lt!998092 testedSuffix!143))))

(declare-fun lt!998093 () List!32474)

(assert (=> b!2793074 (= lt!998096 (= lt!998093 testedP!183))))

(declare-fun lt!998100 () Unit!46558)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!367 (List!32474 List!32474 List!32474 List!32474) Unit!46558)

(assert (=> b!2793074 (= lt!998100 (lemmaConcatSameAndSameSizesThenSameLists!367 lt!998093 lt!998092 testedP!183 testedSuffix!143))))

(declare-fun mapNonEmpty!17988 () Bool)

(declare-fun tp!887586 () Bool)

(declare-fun tp!887597 () Bool)

(assert (=> mapNonEmpty!17988 (= mapRes!17988 (and tp!887586 tp!887597))))

(declare-fun mapKey!17987 () (_ BitVec 32))

(declare-fun mapRest!17988 () (Array (_ BitVec 32) List!32473))

(declare-fun mapValue!17987 () List!32473)

(assert (=> mapNonEmpty!17988 (= (arr!6262 (_values!4232 (v!33977 (underlying!8105 (v!33978 (underlying!8106 (cache!4000 cacheDown!1009))))))) (store mapRest!17988 mapKey!17987 mapValue!17987))))

(declare-fun tp!887599 () Bool)

(declare-fun tp!887591 () Bool)

(declare-fun array_inv!4481 (array!14051) Bool)

(assert (=> b!2793075 (= e!1763498 (and tp!887598 tp!887591 tp!887599 (array_inv!4479 (_keys!4251 (v!33977 (underlying!8105 (v!33978 (underlying!8106 (cache!4000 cacheDown!1009))))))) (array_inv!4481 (_values!4232 (v!33977 (underlying!8105 (v!33978 (underlying!8106 (cache!4000 cacheDown!1009))))))) e!1763486))))

(declare-fun b!2793076 () Bool)

(declare-fun tp!887589 () Bool)

(assert (=> b!2793076 (= e!1763507 (and tp_is_empty!14167 tp!887589))))

(declare-fun b!2793077 () Bool)

(assert (=> b!2793077 (= e!1763499 (not e!1763501))))

(declare-fun res!1164837 () Bool)

(assert (=> b!2793077 (=> res!1164837 e!1763501)))

(declare-fun isPrefix!2606 (List!32474 List!32474) Bool)

(assert (=> b!2793077 (= res!1164837 (not (isPrefix!2606 testedP!183 lt!998094)))))

(assert (=> b!2793077 (isPrefix!2606 testedP!183 lt!998102)))

(declare-fun lt!998101 () Unit!46558)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1715 (List!32474 List!32474) Unit!46558)

(assert (=> b!2793077 (= lt!998101 (lemmaConcatTwoListThenFirstIsPrefix!1715 testedP!183 testedSuffix!143))))

(declare-fun b!2793078 () Bool)

(declare-fun lt!998099 () MutLongMap!3951)

(assert (=> b!2793078 (= e!1763506 (and e!1763500 ((_ is LongMap!3951) lt!998099)))))

(assert (=> b!2793078 (= lt!998099 (v!33978 (underlying!8106 (cache!4000 cacheDown!1009))))))

(declare-fun mapIsEmpty!17988 () Bool)

(assert (=> mapIsEmpty!17988 mapRes!17987))

(declare-fun b!2793079 () Bool)

(assert (=> b!2793079 (= e!1763488 e!1763503)))

(declare-fun res!1164834 () Bool)

(assert (=> b!2793079 (=> res!1164834 e!1763503)))

(assert (=> b!2793079 (= res!1164834 (not (= (++!7991 lt!998093 lt!998092) lt!998094)))))

(assert (=> b!2793079 (= lt!998092 (list!12173 (_2!19441 lt!998097)))))

(assert (=> b!2793079 (= lt!998093 (list!12173 (_1!19441 lt!998097)))))

(declare-fun splitAt!168 (BalanceConc!19698 Int) tuple2!32850)

(assert (=> b!2793079 (= lt!998097 (splitAt!168 totalInput!758 testedPSize!143))))

(assert (=> b!2793080 (= e!1763508 (and e!1763491 tp!887587))))

(assert (= (and start!269994 res!1164836) b!2793058))

(assert (= (and b!2793058 res!1164832) b!2793059))

(assert (= (and b!2793059 res!1164831) b!2793066))

(assert (= (and b!2793066 res!1164835) b!2793068))

(assert (= (and b!2793068 res!1164838) b!2793077))

(assert (= (and b!2793077 (not res!1164837)) b!2793056))

(assert (= (and b!2793056 (not res!1164830)) b!2793065))

(assert (= (and b!2793065 (not res!1164839)) b!2793079))

(assert (= (and b!2793079 (not res!1164834)) b!2793060))

(assert (= (and b!2793060 (not res!1164833)) b!2793074))

(assert (= start!269994 b!2793061))

(assert (= (and start!269994 condSetEmpty!23994) setIsEmpty!23994))

(assert (= (and start!269994 (not condSetEmpty!23994)) setNonEmpty!23994))

(assert (= setNonEmpty!23994 b!2793072))

(assert (= (and start!269994 ((_ is Cons!32374) testedP!183)) b!2793069))

(assert (= (and start!269994 ((_ is Cons!32374) testedSuffix!143)) b!2793076))

(assert (= (and b!2793055 condMapEmpty!17988) mapIsEmpty!17987))

(assert (= (and b!2793055 (not condMapEmpty!17988)) mapNonEmpty!17988))

(assert (= b!2793075 b!2793055))

(assert (= b!2793057 b!2793075))

(assert (= b!2793071 b!2793057))

(assert (= (and b!2793078 ((_ is LongMap!3951) (v!33978 (underlying!8106 (cache!4000 cacheDown!1009))))) b!2793071))

(assert (= b!2793067 b!2793078))

(assert (= (and b!2793073 ((_ is HashMap!3857) (cache!4000 cacheDown!1009))) b!2793067))

(assert (= start!269994 b!2793073))

(assert (= (and b!2793053 condMapEmpty!17987) mapIsEmpty!17988))

(assert (= (and b!2793053 (not condMapEmpty!17987)) mapNonEmpty!17987))

(assert (= b!2793064 b!2793053))

(assert (= b!2793062 b!2793064))

(assert (= b!2793070 b!2793062))

(assert (= (and b!2793063 ((_ is LongMap!3950) (v!33976 (underlying!8104 (cache!3999 cacheUp!890))))) b!2793070))

(assert (= b!2793080 b!2793063))

(assert (= (and b!2793054 ((_ is HashMap!3856) (cache!3999 cacheUp!890))) b!2793080))

(assert (= start!269994 b!2793054))

(declare-fun m!3223373 () Bool)

(assert (=> b!2793056 m!3223373))

(declare-fun m!3223375 () Bool)

(assert (=> b!2793056 m!3223375))

(declare-fun m!3223377 () Bool)

(assert (=> b!2793056 m!3223377))

(declare-fun m!3223379 () Bool)

(assert (=> start!269994 m!3223379))

(declare-fun m!3223381 () Bool)

(assert (=> start!269994 m!3223381))

(declare-fun m!3223383 () Bool)

(assert (=> start!269994 m!3223383))

(declare-fun m!3223385 () Bool)

(assert (=> start!269994 m!3223385))

(declare-fun m!3223387 () Bool)

(assert (=> start!269994 m!3223387))

(declare-fun m!3223389 () Bool)

(assert (=> setNonEmpty!23994 m!3223389))

(declare-fun m!3223391 () Bool)

(assert (=> b!2793075 m!3223391))

(declare-fun m!3223393 () Bool)

(assert (=> b!2793075 m!3223393))

(declare-fun m!3223395 () Bool)

(assert (=> b!2793068 m!3223395))

(declare-fun m!3223397 () Bool)

(assert (=> mapNonEmpty!17987 m!3223397))

(declare-fun m!3223399 () Bool)

(assert (=> b!2793066 m!3223399))

(declare-fun m!3223401 () Bool)

(assert (=> b!2793060 m!3223401))

(declare-fun m!3223403 () Bool)

(assert (=> b!2793074 m!3223403))

(declare-fun m!3223405 () Bool)

(assert (=> mapNonEmpty!17988 m!3223405))

(declare-fun m!3223407 () Bool)

(assert (=> b!2793058 m!3223407))

(declare-fun m!3223409 () Bool)

(assert (=> b!2793079 m!3223409))

(declare-fun m!3223411 () Bool)

(assert (=> b!2793079 m!3223411))

(declare-fun m!3223413 () Bool)

(assert (=> b!2793079 m!3223413))

(declare-fun m!3223415 () Bool)

(assert (=> b!2793079 m!3223415))

(declare-fun m!3223417 () Bool)

(assert (=> b!2793077 m!3223417))

(declare-fun m!3223419 () Bool)

(assert (=> b!2793077 m!3223419))

(declare-fun m!3223421 () Bool)

(assert (=> b!2793077 m!3223421))

(declare-fun m!3223423 () Bool)

(assert (=> b!2793064 m!3223423))

(declare-fun m!3223425 () Bool)

(assert (=> b!2793064 m!3223425))

(declare-fun m!3223427 () Bool)

(assert (=> b!2793059 m!3223427))

(declare-fun m!3223429 () Bool)

(assert (=> b!2793061 m!3223429))

(check-sat (not mapNonEmpty!17988) (not b!2793060) (not b!2793055) (not b!2793069) (not b_next!79751) (not b!2793059) (not mapNonEmpty!17987) b_and!203783 (not b!2793066) (not b!2793068) b_and!203789 (not b!2793077) (not b!2793076) (not b!2793053) (not b!2793064) (not b!2793072) (not b_next!79749) (not start!269994) (not setNonEmpty!23994) (not b!2793075) b_and!203787 (not b!2793074) (not b_next!79755) (not b!2793056) (not b_next!79753) (not b!2793061) (not b!2793058) b_and!203785 (not b!2793079) tp_is_empty!14167)
(check-sat (not b_next!79749) (not b_next!79751) b_and!203783 b_and!203787 (not b_next!79755) (not b_next!79753) b_and!203785 b_and!203789)
