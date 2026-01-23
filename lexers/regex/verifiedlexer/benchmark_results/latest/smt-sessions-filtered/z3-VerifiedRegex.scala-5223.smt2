; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268890 () Bool)

(assert start!268890)

(declare-fun b!2782239 () Bool)

(declare-fun b_free!78517 () Bool)

(declare-fun b_next!79221 () Bool)

(assert (=> b!2782239 (= b_free!78517 (not b_next!79221))))

(declare-fun tp!880735 () Bool)

(declare-fun b_and!203255 () Bool)

(assert (=> b!2782239 (= tp!880735 b_and!203255)))

(declare-fun b!2782240 () Bool)

(declare-fun b_free!78519 () Bool)

(declare-fun b_next!79223 () Bool)

(assert (=> b!2782240 (= b_free!78519 (not b_next!79223))))

(declare-fun tp!880737 () Bool)

(declare-fun b_and!203257 () Bool)

(assert (=> b!2782240 (= tp!880737 b_and!203257)))

(declare-fun b!2782232 () Bool)

(declare-fun b_free!78521 () Bool)

(declare-fun b_next!79225 () Bool)

(assert (=> b!2782232 (= b_free!78521 (not b_next!79225))))

(declare-fun tp!880739 () Bool)

(declare-fun b_and!203259 () Bool)

(assert (=> b!2782232 (= tp!880739 b_and!203259)))

(declare-fun b!2782230 () Bool)

(declare-fun b_free!78523 () Bool)

(declare-fun b_next!79227 () Bool)

(assert (=> b!2782230 (= b_free!78523 (not b_next!79227))))

(declare-fun tp!880730 () Bool)

(declare-fun b_and!203261 () Bool)

(assert (=> b!2782230 (= tp!880730 b_and!203261)))

(declare-fun b!2782219 () Bool)

(declare-fun res!1161509 () Bool)

(declare-fun e!1754890 () Bool)

(assert (=> b!2782219 (=> (not res!1161509) (not e!1754890))))

(declare-datatypes ((Hashable!3745 0))(
  ( (HashableExt!3744 (__x!21137 Int)) )
))
(declare-datatypes ((C!16380 0))(
  ( (C!16381 (val!10124 Int)) )
))
(declare-datatypes ((Regex!8111 0))(
  ( (ElementMatch!8111 (c!452251 C!16380)) (Concat!13199 (regOne!16734 Regex!8111) (regTwo!16734 Regex!8111)) (EmptyExpr!8111) (Star!8111 (reg!8440 Regex!8111)) (EmptyLang!8111) (Union!8111 (regOne!16735 Regex!8111) (regTwo!16735 Regex!8111)) )
))
(declare-datatypes ((List!32209 0))(
  ( (Nil!32109) (Cons!32109 (h!37529 Regex!8111) (t!228349 List!32209)) )
))
(declare-datatypes ((Context!4658 0))(
  ( (Context!4659 (exprs!2829 List!32209)) )
))
(declare-datatypes ((tuple2!32364 0))(
  ( (tuple2!32365 (_1!19125 Context!4658) (_2!19125 C!16380)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32366 0))(
  ( (tuple2!32367 (_1!19126 tuple2!32364) (_2!19126 (InoxSet Context!4658))) )
))
(declare-datatypes ((List!32210 0))(
  ( (Nil!32110) (Cons!32110 (h!37530 tuple2!32366) (t!228350 List!32210)) )
))
(declare-datatypes ((array!13628 0))(
  ( (array!13629 (arr!6073 (Array (_ BitVec 32) List!32210)) (size!24906 (_ BitVec 32))) )
))
(declare-datatypes ((array!13630 0))(
  ( (array!13631 (arr!6074 (Array (_ BitVec 32) (_ BitVec 64))) (size!24907 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7658 0))(
  ( (LongMapFixedSize!7659 (defaultEntry!4214 Int) (mask!9621 (_ BitVec 32)) (extraKeys!4078 (_ BitVec 32)) (zeroValue!4088 List!32210) (minValue!4088 List!32210) (_size!7701 (_ BitVec 32)) (_keys!4129 array!13630) (_values!4110 array!13628) (_vacant!3890 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15125 0))(
  ( (Cell!15126 (v!33719 LongMapFixedSize!7658)) )
))
(declare-datatypes ((MutLongMap!3829 0))(
  ( (LongMap!3829 (underlying!7861 Cell!15125)) (MutLongMapExt!3828 (__x!21138 Int)) )
))
(declare-datatypes ((Cell!15127 0))(
  ( (Cell!15128 (v!33720 MutLongMap!3829)) )
))
(declare-datatypes ((MutableMap!3735 0))(
  ( (MutableMapExt!3734 (__x!21139 Int)) (HashMap!3735 (underlying!7862 Cell!15127) (hashF!5777 Hashable!3745) (_size!7702 (_ BitVec 32)) (defaultValue!3906 Int)) )
))
(declare-datatypes ((CacheUp!2440 0))(
  ( (CacheUp!2441 (cache!3878 MutableMap!3735)) )
))
(declare-fun cacheUp!890 () CacheUp!2440)

(declare-fun valid!2995 (CacheUp!2440) Bool)

(assert (=> b!2782219 (= res!1161509 (valid!2995 cacheUp!890))))

(declare-fun mapNonEmpty!17495 () Bool)

(declare-fun mapRes!17495 () Bool)

(declare-fun tp!880733 () Bool)

(declare-fun tp!880738 () Bool)

(assert (=> mapNonEmpty!17495 (= mapRes!17495 (and tp!880733 tp!880738))))

(declare-fun mapRest!17496 () (Array (_ BitVec 32) List!32210))

(declare-fun mapKey!17495 () (_ BitVec 32))

(declare-fun mapValue!17496 () List!32210)

(assert (=> mapNonEmpty!17495 (= (arr!6073 (_values!4110 (v!33719 (underlying!7861 (v!33720 (underlying!7862 (cache!3878 cacheUp!890))))))) (store mapRest!17496 mapKey!17495 mapValue!17496))))

(declare-fun b!2782220 () Bool)

(declare-fun e!1754897 () Bool)

(declare-datatypes ((List!32211 0))(
  ( (Nil!32111) (Cons!32111 (h!37531 C!16380) (t!228351 List!32211)) )
))
(declare-datatypes ((IArray!19981 0))(
  ( (IArray!19982 (innerList!10048 List!32211)) )
))
(declare-datatypes ((Conc!9988 0))(
  ( (Node!9988 (left!24435 Conc!9988) (right!24765 Conc!9988) (csize!20206 Int) (cheight!10199 Int)) (Leaf!15212 (xs!13099 IArray!19981) (csize!20207 Int)) (Empty!9988) )
))
(declare-datatypes ((BalanceConc!19590 0))(
  ( (BalanceConc!19591 (c!452252 Conc!9988)) )
))
(declare-fun totalInput!758 () BalanceConc!19590)

(declare-fun tp!880729 () Bool)

(declare-fun inv!43613 (Conc!9988) Bool)

(assert (=> b!2782220 (= e!1754897 (and (inv!43613 (c!452252 totalInput!758)) tp!880729))))

(declare-fun b!2782221 () Bool)

(declare-fun e!1754895 () Bool)

(declare-fun e!1754882 () Bool)

(declare-fun lt!993801 () MutLongMap!3829)

(get-info :version)

(assert (=> b!2782221 (= e!1754895 (and e!1754882 ((_ is LongMap!3829) lt!993801)))))

(assert (=> b!2782221 (= lt!993801 (v!33720 (underlying!7862 (cache!3878 cacheUp!890))))))

(declare-fun b!2782222 () Bool)

(declare-fun e!1754893 () Bool)

(assert (=> b!2782222 (= e!1754893 true)))

(declare-fun lt!993804 () Int)

(declare-fun lt!993799 () List!32211)

(declare-fun size!24908 (List!32211) Int)

(assert (=> b!2782222 (= lt!993804 (size!24908 lt!993799))))

(declare-fun b!2782223 () Bool)

(declare-fun res!1161514 () Bool)

(assert (=> b!2782223 (=> (not res!1161514) (not e!1754890))))

(declare-fun testedPSize!143 () Int)

(declare-fun testedP!183 () List!32211)

(assert (=> b!2782223 (= res!1161514 (= testedPSize!143 (size!24908 testedP!183)))))

(declare-fun b!2782224 () Bool)

(declare-fun e!1754889 () Bool)

(declare-fun tp_is_empty!14035 () Bool)

(declare-fun tp!880743 () Bool)

(assert (=> b!2782224 (= e!1754889 (and tp_is_empty!14035 tp!880743))))

(declare-fun b!2782225 () Bool)

(assert (=> b!2782225 (= e!1754890 (not e!1754893))))

(declare-fun res!1161513 () Bool)

(assert (=> b!2782225 (=> res!1161513 e!1754893)))

(declare-fun isPrefix!2562 (List!32211 List!32211) Bool)

(assert (=> b!2782225 (= res!1161513 (not (isPrefix!2562 testedP!183 lt!993799)))))

(declare-fun lt!993803 () List!32211)

(assert (=> b!2782225 (isPrefix!2562 testedP!183 lt!993803)))

(declare-datatypes ((Unit!46394 0))(
  ( (Unit!46395) )
))
(declare-fun lt!993802 () Unit!46394)

(declare-fun testedSuffix!143 () List!32211)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1672 (List!32211 List!32211) Unit!46394)

(assert (=> b!2782225 (= lt!993802 (lemmaConcatTwoListThenFirstIsPrefix!1672 testedP!183 testedSuffix!143))))

(declare-fun b!2782226 () Bool)

(declare-fun e!1754879 () Bool)

(assert (=> b!2782226 (= e!1754882 e!1754879)))

(declare-fun b!2782227 () Bool)

(declare-fun e!1754894 () Bool)

(declare-fun tp!880744 () Bool)

(declare-fun mapRes!17496 () Bool)

(assert (=> b!2782227 (= e!1754894 (and tp!880744 mapRes!17496))))

(declare-fun condMapEmpty!17495 () Bool)

(declare-datatypes ((tuple3!4946 0))(
  ( (tuple3!4947 (_1!19127 Regex!8111) (_2!19127 Context!4658) (_3!2943 C!16380)) )
))
(declare-datatypes ((tuple2!32368 0))(
  ( (tuple2!32369 (_1!19128 tuple3!4946) (_2!19128 (InoxSet Context!4658))) )
))
(declare-datatypes ((List!32212 0))(
  ( (Nil!32112) (Cons!32112 (h!37532 tuple2!32368) (t!228352 List!32212)) )
))
(declare-datatypes ((array!13632 0))(
  ( (array!13633 (arr!6075 (Array (_ BitVec 32) List!32212)) (size!24909 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7660 0))(
  ( (LongMapFixedSize!7661 (defaultEntry!4215 Int) (mask!9622 (_ BitVec 32)) (extraKeys!4079 (_ BitVec 32)) (zeroValue!4089 List!32212) (minValue!4089 List!32212) (_size!7703 (_ BitVec 32)) (_keys!4130 array!13630) (_values!4111 array!13632) (_vacant!3891 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15129 0))(
  ( (Cell!15130 (v!33721 LongMapFixedSize!7660)) )
))
(declare-datatypes ((MutLongMap!3830 0))(
  ( (LongMap!3830 (underlying!7863 Cell!15129)) (MutLongMapExt!3829 (__x!21140 Int)) )
))
(declare-datatypes ((Cell!15131 0))(
  ( (Cell!15132 (v!33722 MutLongMap!3830)) )
))
(declare-datatypes ((Hashable!3746 0))(
  ( (HashableExt!3745 (__x!21141 Int)) )
))
(declare-datatypes ((MutableMap!3736 0))(
  ( (MutableMapExt!3735 (__x!21142 Int)) (HashMap!3736 (underlying!7864 Cell!15131) (hashF!5778 Hashable!3746) (_size!7704 (_ BitVec 32)) (defaultValue!3907 Int)) )
))
(declare-datatypes ((CacheDown!2562 0))(
  ( (CacheDown!2563 (cache!3879 MutableMap!3736)) )
))
(declare-fun cacheDown!1009 () CacheDown!2562)

(declare-fun mapDefault!17495 () List!32212)

(assert (=> b!2782227 (= condMapEmpty!17495 (= (arr!6075 (_values!4111 (v!33721 (underlying!7863 (v!33722 (underlying!7864 (cache!3879 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32212)) mapDefault!17495)))))

(declare-fun b!2782228 () Bool)

(declare-fun e!1754892 () Bool)

(declare-fun e!1754887 () Bool)

(assert (=> b!2782228 (= e!1754892 e!1754887)))

(declare-fun res!1161512 () Bool)

(assert (=> start!268890 (=> (not res!1161512) (not e!1754890))))

(assert (=> start!268890 (= res!1161512 (= lt!993803 lt!993799))))

(declare-fun list!12108 (BalanceConc!19590) List!32211)

(assert (=> start!268890 (= lt!993799 (list!12108 totalInput!758))))

(declare-fun ++!7940 (List!32211 List!32211) List!32211)

(assert (=> start!268890 (= lt!993803 (++!7940 testedP!183 testedSuffix!143))))

(assert (=> start!268890 e!1754890))

(declare-fun inv!43614 (BalanceConc!19590) Bool)

(assert (=> start!268890 (and (inv!43614 totalInput!758) e!1754897)))

(assert (=> start!268890 true))

(declare-fun e!1754885 () Bool)

(assert (=> start!268890 e!1754885))

(assert (=> start!268890 e!1754889))

(declare-fun e!1754896 () Bool)

(declare-fun inv!43615 (CacheDown!2562) Bool)

(assert (=> start!268890 (and (inv!43615 cacheDown!1009) e!1754896)))

(declare-fun e!1754883 () Bool)

(declare-fun inv!43616 (CacheUp!2440) Bool)

(assert (=> start!268890 (and (inv!43616 cacheUp!890) e!1754883)))

(declare-fun b!2782229 () Bool)

(declare-fun e!1754888 () Bool)

(assert (=> b!2782229 (= e!1754883 e!1754888)))

(declare-fun e!1754881 () Bool)

(declare-fun e!1754880 () Bool)

(assert (=> b!2782230 (= e!1754881 (and e!1754880 tp!880730))))

(declare-fun b!2782231 () Bool)

(declare-fun res!1161510 () Bool)

(assert (=> b!2782231 (=> (not res!1161510) (not e!1754890))))

(declare-fun valid!2996 (CacheDown!2562) Bool)

(assert (=> b!2782231 (= res!1161510 (valid!2996 cacheDown!1009))))

(assert (=> b!2782232 (= e!1754888 (and e!1754895 tp!880739))))

(declare-fun b!2782233 () Bool)

(declare-fun lt!993800 () MutLongMap!3830)

(assert (=> b!2782233 (= e!1754880 (and e!1754892 ((_ is LongMap!3830) lt!993800)))))

(assert (=> b!2782233 (= lt!993800 (v!33722 (underlying!7864 (cache!3879 cacheDown!1009))))))

(declare-fun b!2782234 () Bool)

(declare-fun tp!880734 () Bool)

(assert (=> b!2782234 (= e!1754885 (and tp_is_empty!14035 tp!880734))))

(declare-fun b!2782235 () Bool)

(declare-fun e!1754884 () Bool)

(declare-fun tp!880736 () Bool)

(assert (=> b!2782235 (= e!1754884 (and tp!880736 mapRes!17495))))

(declare-fun condMapEmpty!17496 () Bool)

(declare-fun mapDefault!17496 () List!32210)

(assert (=> b!2782235 (= condMapEmpty!17496 (= (arr!6073 (_values!4110 (v!33719 (underlying!7861 (v!33720 (underlying!7862 (cache!3878 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32210)) mapDefault!17496)))))

(declare-fun b!2782236 () Bool)

(declare-fun e!1754886 () Bool)

(assert (=> b!2782236 (= e!1754887 e!1754886)))

(declare-fun b!2782237 () Bool)

(declare-fun res!1161511 () Bool)

(assert (=> b!2782237 (=> (not res!1161511) (not e!1754890))))

(declare-fun totalInputSize!205 () Int)

(declare-fun size!24910 (BalanceConc!19590) Int)

(assert (=> b!2782237 (= res!1161511 (= totalInputSize!205 (size!24910 totalInput!758)))))

(declare-fun b!2782238 () Bool)

(assert (=> b!2782238 (= e!1754896 e!1754881)))

(declare-fun mapIsEmpty!17495 () Bool)

(assert (=> mapIsEmpty!17495 mapRes!17495))

(declare-fun mapNonEmpty!17496 () Bool)

(declare-fun tp!880732 () Bool)

(declare-fun tp!880741 () Bool)

(assert (=> mapNonEmpty!17496 (= mapRes!17496 (and tp!880732 tp!880741))))

(declare-fun mapValue!17495 () List!32212)

(declare-fun mapRest!17495 () (Array (_ BitVec 32) List!32212))

(declare-fun mapKey!17496 () (_ BitVec 32))

(assert (=> mapNonEmpty!17496 (= (arr!6075 (_values!4111 (v!33721 (underlying!7863 (v!33722 (underlying!7864 (cache!3879 cacheDown!1009))))))) (store mapRest!17495 mapKey!17496 mapValue!17495))))

(declare-fun tp!880742 () Bool)

(declare-fun tp!880728 () Bool)

(declare-fun array_inv!4344 (array!13630) Bool)

(declare-fun array_inv!4345 (array!13632) Bool)

(assert (=> b!2782239 (= e!1754886 (and tp!880735 tp!880728 tp!880742 (array_inv!4344 (_keys!4130 (v!33721 (underlying!7863 (v!33722 (underlying!7864 (cache!3879 cacheDown!1009))))))) (array_inv!4345 (_values!4111 (v!33721 (underlying!7863 (v!33722 (underlying!7864 (cache!3879 cacheDown!1009))))))) e!1754894))))

(declare-fun tp!880731 () Bool)

(declare-fun tp!880740 () Bool)

(declare-fun e!1754891 () Bool)

(declare-fun array_inv!4346 (array!13628) Bool)

(assert (=> b!2782240 (= e!1754891 (and tp!880737 tp!880731 tp!880740 (array_inv!4344 (_keys!4129 (v!33719 (underlying!7861 (v!33720 (underlying!7862 (cache!3878 cacheUp!890))))))) (array_inv!4346 (_values!4110 (v!33719 (underlying!7861 (v!33720 (underlying!7862 (cache!3878 cacheUp!890))))))) e!1754884))))

(declare-fun b!2782241 () Bool)

(assert (=> b!2782241 (= e!1754879 e!1754891)))

(declare-fun mapIsEmpty!17496 () Bool)

(assert (=> mapIsEmpty!17496 mapRes!17496))

(assert (= (and start!268890 res!1161512) b!2782223))

(assert (= (and b!2782223 res!1161514) b!2782237))

(assert (= (and b!2782237 res!1161511) b!2782219))

(assert (= (and b!2782219 res!1161509) b!2782231))

(assert (= (and b!2782231 res!1161510) b!2782225))

(assert (= (and b!2782225 (not res!1161513)) b!2782222))

(assert (= start!268890 b!2782220))

(assert (= (and start!268890 ((_ is Cons!32111) testedP!183)) b!2782234))

(assert (= (and start!268890 ((_ is Cons!32111) testedSuffix!143)) b!2782224))

(assert (= (and b!2782227 condMapEmpty!17495) mapIsEmpty!17496))

(assert (= (and b!2782227 (not condMapEmpty!17495)) mapNonEmpty!17496))

(assert (= b!2782239 b!2782227))

(assert (= b!2782236 b!2782239))

(assert (= b!2782228 b!2782236))

(assert (= (and b!2782233 ((_ is LongMap!3830) (v!33722 (underlying!7864 (cache!3879 cacheDown!1009))))) b!2782228))

(assert (= b!2782230 b!2782233))

(assert (= (and b!2782238 ((_ is HashMap!3736) (cache!3879 cacheDown!1009))) b!2782230))

(assert (= start!268890 b!2782238))

(assert (= (and b!2782235 condMapEmpty!17496) mapIsEmpty!17495))

(assert (= (and b!2782235 (not condMapEmpty!17496)) mapNonEmpty!17495))

(assert (= b!2782240 b!2782235))

(assert (= b!2782241 b!2782240))

(assert (= b!2782226 b!2782241))

(assert (= (and b!2782221 ((_ is LongMap!3829) (v!33720 (underlying!7862 (cache!3878 cacheUp!890))))) b!2782226))

(assert (= b!2782232 b!2782221))

(assert (= (and b!2782229 ((_ is HashMap!3735) (cache!3878 cacheUp!890))) b!2782232))

(assert (= start!268890 b!2782229))

(declare-fun m!3213505 () Bool)

(assert (=> b!2782223 m!3213505))

(declare-fun m!3213507 () Bool)

(assert (=> mapNonEmpty!17495 m!3213507))

(declare-fun m!3213509 () Bool)

(assert (=> start!268890 m!3213509))

(declare-fun m!3213511 () Bool)

(assert (=> start!268890 m!3213511))

(declare-fun m!3213513 () Bool)

(assert (=> start!268890 m!3213513))

(declare-fun m!3213515 () Bool)

(assert (=> start!268890 m!3213515))

(declare-fun m!3213517 () Bool)

(assert (=> start!268890 m!3213517))

(declare-fun m!3213519 () Bool)

(assert (=> b!2782239 m!3213519))

(declare-fun m!3213521 () Bool)

(assert (=> b!2782239 m!3213521))

(declare-fun m!3213523 () Bool)

(assert (=> b!2782222 m!3213523))

(declare-fun m!3213525 () Bool)

(assert (=> b!2782220 m!3213525))

(declare-fun m!3213527 () Bool)

(assert (=> b!2782231 m!3213527))

(declare-fun m!3213529 () Bool)

(assert (=> mapNonEmpty!17496 m!3213529))

(declare-fun m!3213531 () Bool)

(assert (=> b!2782237 m!3213531))

(declare-fun m!3213533 () Bool)

(assert (=> b!2782219 m!3213533))

(declare-fun m!3213535 () Bool)

(assert (=> b!2782225 m!3213535))

(declare-fun m!3213537 () Bool)

(assert (=> b!2782225 m!3213537))

(declare-fun m!3213539 () Bool)

(assert (=> b!2782225 m!3213539))

(declare-fun m!3213541 () Bool)

(assert (=> b!2782240 m!3213541))

(declare-fun m!3213543 () Bool)

(assert (=> b!2782240 m!3213543))

(check-sat (not b!2782231) (not b_next!79225) (not b!2782223) (not b!2782235) (not b!2782240) (not b!2782219) (not b!2782234) (not mapNonEmpty!17496) b_and!203255 (not b!2782227) (not b_next!79223) (not b_next!79221) tp_is_empty!14035 b_and!203259 (not b!2782220) b_and!203257 (not b!2782222) (not b_next!79227) (not mapNonEmpty!17495) (not b!2782239) (not b!2782237) (not start!268890) (not b!2782224) (not b!2782225) b_and!203261)
(check-sat (not b_next!79225) b_and!203255 b_and!203259 b_and!203257 (not b_next!79227) b_and!203261 (not b_next!79223) (not b_next!79221))
