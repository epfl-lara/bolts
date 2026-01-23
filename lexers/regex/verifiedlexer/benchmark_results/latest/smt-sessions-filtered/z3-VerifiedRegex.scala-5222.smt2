; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268856 () Bool)

(assert start!268856)

(declare-fun b!2781940 () Bool)

(declare-fun b_free!78501 () Bool)

(declare-fun b_next!79205 () Bool)

(assert (=> b!2781940 (= b_free!78501 (not b_next!79205))))

(declare-fun tp!880505 () Bool)

(declare-fun b_and!203239 () Bool)

(assert (=> b!2781940 (= tp!880505 b_and!203239)))

(declare-fun b!2781941 () Bool)

(declare-fun b_free!78503 () Bool)

(declare-fun b_next!79207 () Bool)

(assert (=> b!2781941 (= b_free!78503 (not b_next!79207))))

(declare-fun tp!880499 () Bool)

(declare-fun b_and!203241 () Bool)

(assert (=> b!2781941 (= tp!880499 b_and!203241)))

(declare-fun b!2781953 () Bool)

(declare-fun b_free!78505 () Bool)

(declare-fun b_next!79209 () Bool)

(assert (=> b!2781953 (= b_free!78505 (not b_next!79209))))

(declare-fun tp!880506 () Bool)

(declare-fun b_and!203243 () Bool)

(assert (=> b!2781953 (= tp!880506 b_and!203243)))

(declare-fun b!2781950 () Bool)

(declare-fun b_free!78507 () Bool)

(declare-fun b_next!79211 () Bool)

(assert (=> b!2781950 (= b_free!78507 (not b_next!79211))))

(declare-fun tp!880504 () Bool)

(declare-fun b_and!203245 () Bool)

(assert (=> b!2781950 (= tp!880504 b_and!203245)))

(declare-fun b!2781933 () Bool)

(declare-fun e!1754653 () Bool)

(declare-fun e!1754638 () Bool)

(assert (=> b!2781933 (= e!1754653 e!1754638)))

(declare-fun b!2781934 () Bool)

(declare-fun e!1754642 () Bool)

(assert (=> b!2781934 (= e!1754642 e!1754653)))

(declare-fun res!1161446 () Bool)

(declare-fun e!1754651 () Bool)

(assert (=> start!268856 (=> (not res!1161446) (not e!1754651))))

(declare-datatypes ((C!16376 0))(
  ( (C!16377 (val!10122 Int)) )
))
(declare-datatypes ((List!32201 0))(
  ( (Nil!32101) (Cons!32101 (h!37521 C!16376) (t!228341 List!32201)) )
))
(declare-fun lt!993751 () List!32201)

(declare-fun lt!993748 () List!32201)

(assert (=> start!268856 (= res!1161446 (= lt!993751 lt!993748))))

(declare-datatypes ((IArray!19977 0))(
  ( (IArray!19978 (innerList!10046 List!32201)) )
))
(declare-datatypes ((Conc!9986 0))(
  ( (Node!9986 (left!24432 Conc!9986) (right!24762 Conc!9986) (csize!20202 Int) (cheight!10197 Int)) (Leaf!15209 (xs!13097 IArray!19977) (csize!20203 Int)) (Empty!9986) )
))
(declare-datatypes ((BalanceConc!19586 0))(
  ( (BalanceConc!19587 (c!452237 Conc!9986)) )
))
(declare-fun totalInput!758 () BalanceConc!19586)

(declare-fun list!12106 (BalanceConc!19586) List!32201)

(assert (=> start!268856 (= lt!993748 (list!12106 totalInput!758))))

(declare-fun testedP!183 () List!32201)

(declare-fun testedSuffix!143 () List!32201)

(declare-fun ++!7939 (List!32201 List!32201) List!32201)

(assert (=> start!268856 (= lt!993751 (++!7939 testedP!183 testedSuffix!143))))

(assert (=> start!268856 e!1754651))

(declare-fun e!1754640 () Bool)

(declare-fun inv!43601 (BalanceConc!19586) Bool)

(assert (=> start!268856 (and (inv!43601 totalInput!758) e!1754640)))

(assert (=> start!268856 true))

(declare-fun e!1754636 () Bool)

(assert (=> start!268856 e!1754636))

(declare-fun e!1754656 () Bool)

(assert (=> start!268856 e!1754656))

(declare-datatypes ((array!13613 0))(
  ( (array!13614 (arr!6067 (Array (_ BitVec 32) (_ BitVec 64))) (size!24895 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8109 0))(
  ( (ElementMatch!8109 (c!452238 C!16376)) (Concat!13197 (regOne!16730 Regex!8109) (regTwo!16730 Regex!8109)) (EmptyExpr!8109) (Star!8109 (reg!8438 Regex!8109)) (EmptyLang!8109) (Union!8109 (regOne!16731 Regex!8109) (regTwo!16731 Regex!8109)) )
))
(declare-datatypes ((List!32202 0))(
  ( (Nil!32102) (Cons!32102 (h!37522 Regex!8109) (t!228342 List!32202)) )
))
(declare-datatypes ((Context!4654 0))(
  ( (Context!4655 (exprs!2827 List!32202)) )
))
(declare-datatypes ((tuple3!4942 0))(
  ( (tuple3!4943 (_1!19117 Regex!8109) (_2!19117 Context!4654) (_3!2941 C!16376)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32352 0))(
  ( (tuple2!32353 (_1!19118 tuple3!4942) (_2!19118 (InoxSet Context!4654))) )
))
(declare-datatypes ((List!32203 0))(
  ( (Nil!32103) (Cons!32103 (h!37523 tuple2!32352) (t!228343 List!32203)) )
))
(declare-datatypes ((array!13615 0))(
  ( (array!13616 (arr!6068 (Array (_ BitVec 32) List!32203)) (size!24896 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7650 0))(
  ( (LongMapFixedSize!7651 (defaultEntry!4210 Int) (mask!9616 (_ BitVec 32)) (extraKeys!4074 (_ BitVec 32)) (zeroValue!4084 List!32203) (minValue!4084 List!32203) (_size!7693 (_ BitVec 32)) (_keys!4125 array!13613) (_values!4106 array!13615) (_vacant!3886 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15109 0))(
  ( (Cell!15110 (v!33711 LongMapFixedSize!7650)) )
))
(declare-datatypes ((MutLongMap!3825 0))(
  ( (LongMap!3825 (underlying!7853 Cell!15109)) (MutLongMapExt!3824 (__x!21125 Int)) )
))
(declare-datatypes ((Cell!15111 0))(
  ( (Cell!15112 (v!33712 MutLongMap!3825)) )
))
(declare-datatypes ((Hashable!3741 0))(
  ( (HashableExt!3740 (__x!21126 Int)) )
))
(declare-datatypes ((MutableMap!3731 0))(
  ( (MutableMapExt!3730 (__x!21127 Int)) (HashMap!3731 (underlying!7854 Cell!15111) (hashF!5773 Hashable!3741) (_size!7694 (_ BitVec 32)) (defaultValue!3902 Int)) )
))
(declare-datatypes ((CacheDown!2558 0))(
  ( (CacheDown!2559 (cache!3874 MutableMap!3731)) )
))
(declare-fun cacheDown!1009 () CacheDown!2558)

(declare-fun e!1754649 () Bool)

(declare-fun inv!43602 (CacheDown!2558) Bool)

(assert (=> start!268856 (and (inv!43602 cacheDown!1009) e!1754649)))

(declare-datatypes ((Hashable!3742 0))(
  ( (HashableExt!3741 (__x!21128 Int)) )
))
(declare-datatypes ((tuple2!32354 0))(
  ( (tuple2!32355 (_1!19119 Context!4654) (_2!19119 C!16376)) )
))
(declare-datatypes ((tuple2!32356 0))(
  ( (tuple2!32357 (_1!19120 tuple2!32354) (_2!19120 (InoxSet Context!4654))) )
))
(declare-datatypes ((List!32204 0))(
  ( (Nil!32104) (Cons!32104 (h!37524 tuple2!32356) (t!228344 List!32204)) )
))
(declare-datatypes ((array!13617 0))(
  ( (array!13618 (arr!6069 (Array (_ BitVec 32) List!32204)) (size!24897 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7652 0))(
  ( (LongMapFixedSize!7653 (defaultEntry!4211 Int) (mask!9617 (_ BitVec 32)) (extraKeys!4075 (_ BitVec 32)) (zeroValue!4085 List!32204) (minValue!4085 List!32204) (_size!7695 (_ BitVec 32)) (_keys!4126 array!13613) (_values!4107 array!13617) (_vacant!3887 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15113 0))(
  ( (Cell!15114 (v!33713 LongMapFixedSize!7652)) )
))
(declare-datatypes ((MutLongMap!3826 0))(
  ( (LongMap!3826 (underlying!7855 Cell!15113)) (MutLongMapExt!3825 (__x!21129 Int)) )
))
(declare-datatypes ((Cell!15115 0))(
  ( (Cell!15116 (v!33714 MutLongMap!3826)) )
))
(declare-datatypes ((MutableMap!3732 0))(
  ( (MutableMapExt!3731 (__x!21130 Int)) (HashMap!3732 (underlying!7856 Cell!15115) (hashF!5774 Hashable!3742) (_size!7696 (_ BitVec 32)) (defaultValue!3903 Int)) )
))
(declare-datatypes ((CacheUp!2436 0))(
  ( (CacheUp!2437 (cache!3875 MutableMap!3732)) )
))
(declare-fun cacheUp!890 () CacheUp!2436)

(declare-fun e!1754643 () Bool)

(declare-fun inv!43603 (CacheUp!2436) Bool)

(assert (=> start!268856 (and (inv!43603 cacheUp!890) e!1754643)))

(declare-fun b!2781935 () Bool)

(declare-fun res!1161443 () Bool)

(declare-fun e!1754655 () Bool)

(assert (=> b!2781935 (=> (not res!1161443) (not e!1754655))))

(declare-fun valid!2992 (CacheDown!2558) Bool)

(assert (=> b!2781935 (= res!1161443 (valid!2992 cacheDown!1009))))

(declare-fun b!2781936 () Bool)

(declare-fun res!1161442 () Bool)

(assert (=> b!2781936 (=> (not res!1161442) (not e!1754655))))

(declare-fun valid!2993 (CacheUp!2436) Bool)

(assert (=> b!2781936 (= res!1161442 (valid!2993 cacheUp!890))))

(declare-fun mapIsEmpty!17477 () Bool)

(declare-fun mapRes!17477 () Bool)

(assert (=> mapIsEmpty!17477 mapRes!17477))

(declare-fun b!2781937 () Bool)

(declare-fun e!1754639 () Bool)

(declare-fun tp!880501 () Bool)

(assert (=> b!2781937 (= e!1754639 (and tp!880501 mapRes!17477))))

(declare-fun condMapEmpty!17477 () Bool)

(declare-fun mapDefault!17477 () List!32203)

(assert (=> b!2781937 (= condMapEmpty!17477 (= (arr!6068 (_values!4106 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32203)) mapDefault!17477)))))

(declare-fun b!2781938 () Bool)

(declare-fun e!1754644 () Bool)

(declare-fun lt!993750 () Int)

(declare-fun size!24898 (List!32201) Int)

(assert (=> b!2781938 (= e!1754644 (>= (size!24898 lt!993748) lt!993750))))

(declare-fun mapNonEmpty!17477 () Bool)

(declare-fun mapRes!17478 () Bool)

(declare-fun tp!880508 () Bool)

(declare-fun tp!880511 () Bool)

(assert (=> mapNonEmpty!17477 (= mapRes!17478 (and tp!880508 tp!880511))))

(declare-fun mapKey!17477 () (_ BitVec 32))

(declare-fun mapValue!17477 () List!32204)

(declare-fun mapRest!17478 () (Array (_ BitVec 32) List!32204))

(assert (=> mapNonEmpty!17477 (= (arr!6069 (_values!4107 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890))))))) (store mapRest!17478 mapKey!17477 mapValue!17477))))

(declare-fun b!2781939 () Bool)

(declare-fun tp_is_empty!14031 () Bool)

(declare-fun tp!880514 () Bool)

(assert (=> b!2781939 (= e!1754636 (and tp_is_empty!14031 tp!880514))))

(declare-fun tp!880503 () Bool)

(declare-fun tp!880502 () Bool)

(declare-fun e!1754648 () Bool)

(declare-fun array_inv!4339 (array!13613) Bool)

(declare-fun array_inv!4340 (array!13615) Bool)

(assert (=> b!2781940 (= e!1754648 (and tp!880505 tp!880502 tp!880503 (array_inv!4339 (_keys!4125 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009))))))) (array_inv!4340 (_values!4106 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009))))))) e!1754639))))

(declare-fun e!1754650 () Bool)

(declare-fun e!1754647 () Bool)

(assert (=> b!2781941 (= e!1754650 (and e!1754647 tp!880499))))

(declare-fun b!2781942 () Bool)

(assert (=> b!2781942 (= e!1754655 (not e!1754644))))

(declare-fun res!1161445 () Bool)

(assert (=> b!2781942 (=> res!1161445 e!1754644)))

(declare-fun isPrefix!2561 (List!32201 List!32201) Bool)

(assert (=> b!2781942 (= res!1161445 (not (isPrefix!2561 testedP!183 lt!993748)))))

(assert (=> b!2781942 (isPrefix!2561 testedP!183 lt!993751)))

(declare-datatypes ((Unit!46392 0))(
  ( (Unit!46393) )
))
(declare-fun lt!993749 () Unit!46392)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1671 (List!32201 List!32201) Unit!46392)

(assert (=> b!2781942 (= lt!993749 (lemmaConcatTwoListThenFirstIsPrefix!1671 testedP!183 testedSuffix!143))))

(declare-fun b!2781943 () Bool)

(declare-fun tp!880500 () Bool)

(assert (=> b!2781943 (= e!1754656 (and tp_is_empty!14031 tp!880500))))

(declare-fun mapIsEmpty!17478 () Bool)

(assert (=> mapIsEmpty!17478 mapRes!17478))

(declare-fun b!2781944 () Bool)

(declare-fun e!1754652 () Bool)

(declare-fun tp!880512 () Bool)

(assert (=> b!2781944 (= e!1754652 (and tp!880512 mapRes!17478))))

(declare-fun condMapEmpty!17478 () Bool)

(declare-fun mapDefault!17478 () List!32204)

(assert (=> b!2781944 (= condMapEmpty!17478 (= (arr!6069 (_values!4107 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32204)) mapDefault!17478)))))

(declare-fun b!2781945 () Bool)

(declare-fun e!1754654 () Bool)

(assert (=> b!2781945 (= e!1754654 e!1754648)))

(declare-fun b!2781946 () Bool)

(assert (=> b!2781946 (= e!1754649 e!1754650)))

(declare-fun b!2781947 () Bool)

(declare-fun e!1754646 () Bool)

(assert (=> b!2781947 (= e!1754643 e!1754646)))

(declare-fun b!2781948 () Bool)

(declare-fun e!1754637 () Bool)

(declare-fun lt!993747 () MutLongMap!3826)

(get-info :version)

(assert (=> b!2781948 (= e!1754637 (and e!1754642 ((_ is LongMap!3826) lt!993747)))))

(assert (=> b!2781948 (= lt!993747 (v!33714 (underlying!7856 (cache!3875 cacheUp!890))))))

(declare-fun b!2781949 () Bool)

(declare-fun res!1161447 () Bool)

(assert (=> b!2781949 (=> (not res!1161447) (not e!1754655))))

(declare-fun totalInputSize!205 () Int)

(declare-fun size!24899 (BalanceConc!19586) Int)

(assert (=> b!2781949 (= res!1161447 (= totalInputSize!205 (size!24899 totalInput!758)))))

(assert (=> b!2781950 (= e!1754646 (and e!1754637 tp!880504))))

(declare-fun b!2781951 () Bool)

(declare-fun tp!880509 () Bool)

(declare-fun inv!43604 (Conc!9986) Bool)

(assert (=> b!2781951 (= e!1754640 (and (inv!43604 (c!452237 totalInput!758)) tp!880509))))

(declare-fun b!2781952 () Bool)

(declare-fun e!1754641 () Bool)

(declare-fun lt!993746 () MutLongMap!3825)

(assert (=> b!2781952 (= e!1754647 (and e!1754641 ((_ is LongMap!3825) lt!993746)))))

(assert (=> b!2781952 (= lt!993746 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009))))))

(declare-fun tp!880513 () Bool)

(declare-fun tp!880515 () Bool)

(declare-fun array_inv!4341 (array!13617) Bool)

(assert (=> b!2781953 (= e!1754638 (and tp!880506 tp!880515 tp!880513 (array_inv!4339 (_keys!4126 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890))))))) (array_inv!4341 (_values!4107 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890))))))) e!1754652))))

(declare-fun b!2781954 () Bool)

(assert (=> b!2781954 (= e!1754651 e!1754655)))

(declare-fun res!1161444 () Bool)

(assert (=> b!2781954 (=> (not res!1161444) (not e!1754655))))

(declare-fun testedPSize!143 () Int)

(assert (=> b!2781954 (= res!1161444 (= testedPSize!143 lt!993750))))

(assert (=> b!2781954 (= lt!993750 (size!24898 testedP!183))))

(declare-fun b!2781955 () Bool)

(assert (=> b!2781955 (= e!1754641 e!1754654)))

(declare-fun mapNonEmpty!17478 () Bool)

(declare-fun tp!880510 () Bool)

(declare-fun tp!880507 () Bool)

(assert (=> mapNonEmpty!17478 (= mapRes!17477 (and tp!880510 tp!880507))))

(declare-fun mapRest!17477 () (Array (_ BitVec 32) List!32203))

(declare-fun mapValue!17478 () List!32203)

(declare-fun mapKey!17478 () (_ BitVec 32))

(assert (=> mapNonEmpty!17478 (= (arr!6068 (_values!4106 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009))))))) (store mapRest!17477 mapKey!17478 mapValue!17478))))

(assert (= (and start!268856 res!1161446) b!2781954))

(assert (= (and b!2781954 res!1161444) b!2781949))

(assert (= (and b!2781949 res!1161447) b!2781936))

(assert (= (and b!2781936 res!1161442) b!2781935))

(assert (= (and b!2781935 res!1161443) b!2781942))

(assert (= (and b!2781942 (not res!1161445)) b!2781938))

(assert (= start!268856 b!2781951))

(assert (= (and start!268856 ((_ is Cons!32101) testedP!183)) b!2781939))

(assert (= (and start!268856 ((_ is Cons!32101) testedSuffix!143)) b!2781943))

(assert (= (and b!2781937 condMapEmpty!17477) mapIsEmpty!17477))

(assert (= (and b!2781937 (not condMapEmpty!17477)) mapNonEmpty!17478))

(assert (= b!2781940 b!2781937))

(assert (= b!2781945 b!2781940))

(assert (= b!2781955 b!2781945))

(assert (= (and b!2781952 ((_ is LongMap!3825) (v!33712 (underlying!7854 (cache!3874 cacheDown!1009))))) b!2781955))

(assert (= b!2781941 b!2781952))

(assert (= (and b!2781946 ((_ is HashMap!3731) (cache!3874 cacheDown!1009))) b!2781941))

(assert (= start!268856 b!2781946))

(assert (= (and b!2781944 condMapEmpty!17478) mapIsEmpty!17478))

(assert (= (and b!2781944 (not condMapEmpty!17478)) mapNonEmpty!17477))

(assert (= b!2781953 b!2781944))

(assert (= b!2781933 b!2781953))

(assert (= b!2781934 b!2781933))

(assert (= (and b!2781948 ((_ is LongMap!3826) (v!33714 (underlying!7856 (cache!3875 cacheUp!890))))) b!2781934))

(assert (= b!2781950 b!2781948))

(assert (= (and b!2781947 ((_ is HashMap!3732) (cache!3875 cacheUp!890))) b!2781950))

(assert (= start!268856 b!2781947))

(declare-fun m!3213313 () Bool)

(assert (=> b!2781949 m!3213313))

(declare-fun m!3213315 () Bool)

(assert (=> mapNonEmpty!17478 m!3213315))

(declare-fun m!3213317 () Bool)

(assert (=> b!2781954 m!3213317))

(declare-fun m!3213319 () Bool)

(assert (=> b!2781935 m!3213319))

(declare-fun m!3213321 () Bool)

(assert (=> b!2781938 m!3213321))

(declare-fun m!3213323 () Bool)

(assert (=> b!2781940 m!3213323))

(declare-fun m!3213325 () Bool)

(assert (=> b!2781940 m!3213325))

(declare-fun m!3213327 () Bool)

(assert (=> b!2781951 m!3213327))

(declare-fun m!3213329 () Bool)

(assert (=> start!268856 m!3213329))

(declare-fun m!3213331 () Bool)

(assert (=> start!268856 m!3213331))

(declare-fun m!3213333 () Bool)

(assert (=> start!268856 m!3213333))

(declare-fun m!3213335 () Bool)

(assert (=> start!268856 m!3213335))

(declare-fun m!3213337 () Bool)

(assert (=> start!268856 m!3213337))

(declare-fun m!3213339 () Bool)

(assert (=> b!2781936 m!3213339))

(declare-fun m!3213341 () Bool)

(assert (=> b!2781942 m!3213341))

(declare-fun m!3213343 () Bool)

(assert (=> b!2781942 m!3213343))

(declare-fun m!3213345 () Bool)

(assert (=> b!2781942 m!3213345))

(declare-fun m!3213347 () Bool)

(assert (=> b!2781953 m!3213347))

(declare-fun m!3213349 () Bool)

(assert (=> b!2781953 m!3213349))

(declare-fun m!3213351 () Bool)

(assert (=> mapNonEmpty!17477 m!3213351))

(check-sat (not mapNonEmpty!17477) (not b_next!79211) b_and!203241 b_and!203243 (not b!2781938) (not b!2781953) (not b!2781951) (not start!268856) (not b!2781954) (not b_next!79207) (not mapNonEmpty!17478) (not b!2781944) (not b!2781940) (not b!2781936) (not b!2781942) (not b_next!79209) tp_is_empty!14031 (not b!2781949) (not b_next!79205) b_and!203245 (not b!2781935) (not b!2781939) (not b!2781943) b_and!203239 (not b!2781937))
(check-sat (not b_next!79207) (not b_next!79211) (not b_next!79209) b_and!203241 b_and!203243 b_and!203239 (not b_next!79205) b_and!203245)
(get-model)

(declare-fun d!810233 () Bool)

(assert (=> d!810233 (= (array_inv!4339 (_keys!4125 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009))))))) (bvsge (size!24895 (_keys!4125 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2781940 d!810233))

(declare-fun d!810235 () Bool)

(assert (=> d!810235 (= (array_inv!4340 (_values!4106 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009))))))) (bvsge (size!24896 (_values!4106 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2781940 d!810235))

(declare-fun d!810237 () Bool)

(declare-fun res!1161450 () Bool)

(declare-fun e!1754660 () Bool)

(assert (=> d!810237 (=> (not res!1161450) (not e!1754660))))

(assert (=> d!810237 (= res!1161450 ((_ is HashMap!3732) (cache!3875 cacheUp!890)))))

(assert (=> d!810237 (= (inv!43603 cacheUp!890) e!1754660)))

(declare-fun b!2781958 () Bool)

(declare-fun validCacheMapUp!372 (MutableMap!3732) Bool)

(assert (=> b!2781958 (= e!1754660 (validCacheMapUp!372 (cache!3875 cacheUp!890)))))

(assert (= (and d!810237 res!1161450) b!2781958))

(declare-fun m!3213353 () Bool)

(assert (=> b!2781958 m!3213353))

(assert (=> start!268856 d!810237))

(declare-fun d!810239 () Bool)

(declare-fun isBalanced!3047 (Conc!9986) Bool)

(assert (=> d!810239 (= (inv!43601 totalInput!758) (isBalanced!3047 (c!452237 totalInput!758)))))

(declare-fun bs!510797 () Bool)

(assert (= bs!510797 d!810239))

(declare-fun m!3213355 () Bool)

(assert (=> bs!510797 m!3213355))

(assert (=> start!268856 d!810239))

(declare-fun d!810241 () Bool)

(declare-fun res!1161453 () Bool)

(declare-fun e!1754663 () Bool)

(assert (=> d!810241 (=> (not res!1161453) (not e!1754663))))

(assert (=> d!810241 (= res!1161453 ((_ is HashMap!3731) (cache!3874 cacheDown!1009)))))

(assert (=> d!810241 (= (inv!43602 cacheDown!1009) e!1754663)))

(declare-fun b!2781961 () Bool)

(declare-fun validCacheMapDown!403 (MutableMap!3731) Bool)

(assert (=> b!2781961 (= e!1754663 (validCacheMapDown!403 (cache!3874 cacheDown!1009)))))

(assert (= (and d!810241 res!1161453) b!2781961))

(declare-fun m!3213357 () Bool)

(assert (=> b!2781961 m!3213357))

(assert (=> start!268856 d!810241))

(declare-fun d!810243 () Bool)

(declare-fun list!12107 (Conc!9986) List!32201)

(assert (=> d!810243 (= (list!12106 totalInput!758) (list!12107 (c!452237 totalInput!758)))))

(declare-fun bs!510798 () Bool)

(assert (= bs!510798 d!810243))

(declare-fun m!3213359 () Bool)

(assert (=> bs!510798 m!3213359))

(assert (=> start!268856 d!810243))

(declare-fun b!2781972 () Bool)

(declare-fun res!1161458 () Bool)

(declare-fun e!1754669 () Bool)

(assert (=> b!2781972 (=> (not res!1161458) (not e!1754669))))

(declare-fun lt!993754 () List!32201)

(assert (=> b!2781972 (= res!1161458 (= (size!24898 lt!993754) (+ (size!24898 testedP!183) (size!24898 testedSuffix!143))))))

(declare-fun b!2781970 () Bool)

(declare-fun e!1754668 () List!32201)

(assert (=> b!2781970 (= e!1754668 testedSuffix!143)))

(declare-fun b!2781971 () Bool)

(assert (=> b!2781971 (= e!1754668 (Cons!32101 (h!37521 testedP!183) (++!7939 (t!228341 testedP!183) testedSuffix!143)))))

(declare-fun b!2781973 () Bool)

(assert (=> b!2781973 (= e!1754669 (or (not (= testedSuffix!143 Nil!32101)) (= lt!993754 testedP!183)))))

(declare-fun d!810245 () Bool)

(assert (=> d!810245 e!1754669))

(declare-fun res!1161459 () Bool)

(assert (=> d!810245 (=> (not res!1161459) (not e!1754669))))

(declare-fun content!4513 (List!32201) (InoxSet C!16376))

(assert (=> d!810245 (= res!1161459 (= (content!4513 lt!993754) ((_ map or) (content!4513 testedP!183) (content!4513 testedSuffix!143))))))

(assert (=> d!810245 (= lt!993754 e!1754668)))

(declare-fun c!452241 () Bool)

(assert (=> d!810245 (= c!452241 ((_ is Nil!32101) testedP!183))))

(assert (=> d!810245 (= (++!7939 testedP!183 testedSuffix!143) lt!993754)))

(assert (= (and d!810245 c!452241) b!2781970))

(assert (= (and d!810245 (not c!452241)) b!2781971))

(assert (= (and d!810245 res!1161459) b!2781972))

(assert (= (and b!2781972 res!1161458) b!2781973))

(declare-fun m!3213361 () Bool)

(assert (=> b!2781972 m!3213361))

(assert (=> b!2781972 m!3213317))

(declare-fun m!3213363 () Bool)

(assert (=> b!2781972 m!3213363))

(declare-fun m!3213365 () Bool)

(assert (=> b!2781971 m!3213365))

(declare-fun m!3213367 () Bool)

(assert (=> d!810245 m!3213367))

(declare-fun m!3213369 () Bool)

(assert (=> d!810245 m!3213369))

(declare-fun m!3213371 () Bool)

(assert (=> d!810245 m!3213371))

(assert (=> start!268856 d!810245))

(declare-fun d!810247 () Bool)

(declare-fun lt!993757 () Int)

(assert (=> d!810247 (>= lt!993757 0)))

(declare-fun e!1754672 () Int)

(assert (=> d!810247 (= lt!993757 e!1754672)))

(declare-fun c!452244 () Bool)

(assert (=> d!810247 (= c!452244 ((_ is Nil!32101) testedP!183))))

(assert (=> d!810247 (= (size!24898 testedP!183) lt!993757)))

(declare-fun b!2781978 () Bool)

(assert (=> b!2781978 (= e!1754672 0)))

(declare-fun b!2781979 () Bool)

(assert (=> b!2781979 (= e!1754672 (+ 1 (size!24898 (t!228341 testedP!183))))))

(assert (= (and d!810247 c!452244) b!2781978))

(assert (= (and d!810247 (not c!452244)) b!2781979))

(declare-fun m!3213373 () Bool)

(assert (=> b!2781979 m!3213373))

(assert (=> b!2781954 d!810247))

(declare-fun d!810249 () Bool)

(declare-fun lt!993760 () Int)

(assert (=> d!810249 (= lt!993760 (size!24898 (list!12106 totalInput!758)))))

(declare-fun size!24900 (Conc!9986) Int)

(assert (=> d!810249 (= lt!993760 (size!24900 (c!452237 totalInput!758)))))

(assert (=> d!810249 (= (size!24899 totalInput!758) lt!993760)))

(declare-fun bs!510799 () Bool)

(assert (= bs!510799 d!810249))

(assert (=> bs!510799 m!3213329))

(assert (=> bs!510799 m!3213329))

(declare-fun m!3213375 () Bool)

(assert (=> bs!510799 m!3213375))

(declare-fun m!3213377 () Bool)

(assert (=> bs!510799 m!3213377))

(assert (=> b!2781949 d!810249))

(declare-fun d!810251 () Bool)

(assert (=> d!810251 (= (valid!2993 cacheUp!890) (validCacheMapUp!372 (cache!3875 cacheUp!890)))))

(declare-fun bs!510800 () Bool)

(assert (= bs!510800 d!810251))

(assert (=> bs!510800 m!3213353))

(assert (=> b!2781936 d!810251))

(declare-fun d!810253 () Bool)

(assert (=> d!810253 (= (array_inv!4339 (_keys!4126 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890))))))) (bvsge (size!24895 (_keys!4126 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2781953 d!810253))

(declare-fun d!810255 () Bool)

(assert (=> d!810255 (= (array_inv!4341 (_values!4107 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890))))))) (bvsge (size!24897 (_values!4107 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2781953 d!810255))

(declare-fun d!810257 () Bool)

(assert (=> d!810257 (= (valid!2992 cacheDown!1009) (validCacheMapDown!403 (cache!3874 cacheDown!1009)))))

(declare-fun bs!510801 () Bool)

(assert (= bs!510801 d!810257))

(assert (=> bs!510801 m!3213357))

(assert (=> b!2781935 d!810257))

(declare-fun d!810259 () Bool)

(declare-fun c!452247 () Bool)

(assert (=> d!810259 (= c!452247 ((_ is Node!9986) (c!452237 totalInput!758)))))

(declare-fun e!1754677 () Bool)

(assert (=> d!810259 (= (inv!43604 (c!452237 totalInput!758)) e!1754677)))

(declare-fun b!2781986 () Bool)

(declare-fun inv!43605 (Conc!9986) Bool)

(assert (=> b!2781986 (= e!1754677 (inv!43605 (c!452237 totalInput!758)))))

(declare-fun b!2781987 () Bool)

(declare-fun e!1754678 () Bool)

(assert (=> b!2781987 (= e!1754677 e!1754678)))

(declare-fun res!1161462 () Bool)

(assert (=> b!2781987 (= res!1161462 (not ((_ is Leaf!15209) (c!452237 totalInput!758))))))

(assert (=> b!2781987 (=> res!1161462 e!1754678)))

(declare-fun b!2781988 () Bool)

(declare-fun inv!43606 (Conc!9986) Bool)

(assert (=> b!2781988 (= e!1754678 (inv!43606 (c!452237 totalInput!758)))))

(assert (= (and d!810259 c!452247) b!2781986))

(assert (= (and d!810259 (not c!452247)) b!2781987))

(assert (= (and b!2781987 (not res!1161462)) b!2781988))

(declare-fun m!3213379 () Bool)

(assert (=> b!2781986 m!3213379))

(declare-fun m!3213381 () Bool)

(assert (=> b!2781988 m!3213381))

(assert (=> b!2781951 d!810259))

(declare-fun d!810261 () Bool)

(declare-fun e!1754685 () Bool)

(assert (=> d!810261 e!1754685))

(declare-fun res!1161474 () Bool)

(assert (=> d!810261 (=> res!1161474 e!1754685)))

(declare-fun lt!993763 () Bool)

(assert (=> d!810261 (= res!1161474 (not lt!993763))))

(declare-fun e!1754686 () Bool)

(assert (=> d!810261 (= lt!993763 e!1754686)))

(declare-fun res!1161471 () Bool)

(assert (=> d!810261 (=> res!1161471 e!1754686)))

(assert (=> d!810261 (= res!1161471 ((_ is Nil!32101) testedP!183))))

(assert (=> d!810261 (= (isPrefix!2561 testedP!183 lt!993748) lt!993763)))

(declare-fun b!2781999 () Bool)

(declare-fun e!1754687 () Bool)

(declare-fun tail!4394 (List!32201) List!32201)

(assert (=> b!2781999 (= e!1754687 (isPrefix!2561 (tail!4394 testedP!183) (tail!4394 lt!993748)))))

(declare-fun b!2781997 () Bool)

(assert (=> b!2781997 (= e!1754686 e!1754687)))

(declare-fun res!1161472 () Bool)

(assert (=> b!2781997 (=> (not res!1161472) (not e!1754687))))

(assert (=> b!2781997 (= res!1161472 (not ((_ is Nil!32101) lt!993748)))))

(declare-fun b!2781998 () Bool)

(declare-fun res!1161473 () Bool)

(assert (=> b!2781998 (=> (not res!1161473) (not e!1754687))))

(declare-fun head!6156 (List!32201) C!16376)

(assert (=> b!2781998 (= res!1161473 (= (head!6156 testedP!183) (head!6156 lt!993748)))))

(declare-fun b!2782000 () Bool)

(assert (=> b!2782000 (= e!1754685 (>= (size!24898 lt!993748) (size!24898 testedP!183)))))

(assert (= (and d!810261 (not res!1161471)) b!2781997))

(assert (= (and b!2781997 res!1161472) b!2781998))

(assert (= (and b!2781998 res!1161473) b!2781999))

(assert (= (and d!810261 (not res!1161474)) b!2782000))

(declare-fun m!3213383 () Bool)

(assert (=> b!2781999 m!3213383))

(declare-fun m!3213385 () Bool)

(assert (=> b!2781999 m!3213385))

(assert (=> b!2781999 m!3213383))

(assert (=> b!2781999 m!3213385))

(declare-fun m!3213387 () Bool)

(assert (=> b!2781999 m!3213387))

(declare-fun m!3213389 () Bool)

(assert (=> b!2781998 m!3213389))

(declare-fun m!3213391 () Bool)

(assert (=> b!2781998 m!3213391))

(assert (=> b!2782000 m!3213321))

(assert (=> b!2782000 m!3213317))

(assert (=> b!2781942 d!810261))

(declare-fun d!810263 () Bool)

(declare-fun e!1754688 () Bool)

(assert (=> d!810263 e!1754688))

(declare-fun res!1161478 () Bool)

(assert (=> d!810263 (=> res!1161478 e!1754688)))

(declare-fun lt!993764 () Bool)

(assert (=> d!810263 (= res!1161478 (not lt!993764))))

(declare-fun e!1754689 () Bool)

(assert (=> d!810263 (= lt!993764 e!1754689)))

(declare-fun res!1161475 () Bool)

(assert (=> d!810263 (=> res!1161475 e!1754689)))

(assert (=> d!810263 (= res!1161475 ((_ is Nil!32101) testedP!183))))

(assert (=> d!810263 (= (isPrefix!2561 testedP!183 lt!993751) lt!993764)))

(declare-fun b!2782003 () Bool)

(declare-fun e!1754690 () Bool)

(assert (=> b!2782003 (= e!1754690 (isPrefix!2561 (tail!4394 testedP!183) (tail!4394 lt!993751)))))

(declare-fun b!2782001 () Bool)

(assert (=> b!2782001 (= e!1754689 e!1754690)))

(declare-fun res!1161476 () Bool)

(assert (=> b!2782001 (=> (not res!1161476) (not e!1754690))))

(assert (=> b!2782001 (= res!1161476 (not ((_ is Nil!32101) lt!993751)))))

(declare-fun b!2782002 () Bool)

(declare-fun res!1161477 () Bool)

(assert (=> b!2782002 (=> (not res!1161477) (not e!1754690))))

(assert (=> b!2782002 (= res!1161477 (= (head!6156 testedP!183) (head!6156 lt!993751)))))

(declare-fun b!2782004 () Bool)

(assert (=> b!2782004 (= e!1754688 (>= (size!24898 lt!993751) (size!24898 testedP!183)))))

(assert (= (and d!810263 (not res!1161475)) b!2782001))

(assert (= (and b!2782001 res!1161476) b!2782002))

(assert (= (and b!2782002 res!1161477) b!2782003))

(assert (= (and d!810263 (not res!1161478)) b!2782004))

(assert (=> b!2782003 m!3213383))

(declare-fun m!3213393 () Bool)

(assert (=> b!2782003 m!3213393))

(assert (=> b!2782003 m!3213383))

(assert (=> b!2782003 m!3213393))

(declare-fun m!3213395 () Bool)

(assert (=> b!2782003 m!3213395))

(assert (=> b!2782002 m!3213389))

(declare-fun m!3213397 () Bool)

(assert (=> b!2782002 m!3213397))

(declare-fun m!3213399 () Bool)

(assert (=> b!2782004 m!3213399))

(assert (=> b!2782004 m!3213317))

(assert (=> b!2781942 d!810263))

(declare-fun d!810265 () Bool)

(assert (=> d!810265 (isPrefix!2561 testedP!183 (++!7939 testedP!183 testedSuffix!143))))

(declare-fun lt!993767 () Unit!46392)

(declare-fun choose!16320 (List!32201 List!32201) Unit!46392)

(assert (=> d!810265 (= lt!993767 (choose!16320 testedP!183 testedSuffix!143))))

(assert (=> d!810265 (= (lemmaConcatTwoListThenFirstIsPrefix!1671 testedP!183 testedSuffix!143) lt!993767)))

(declare-fun bs!510802 () Bool)

(assert (= bs!510802 d!810265))

(assert (=> bs!510802 m!3213337))

(assert (=> bs!510802 m!3213337))

(declare-fun m!3213401 () Bool)

(assert (=> bs!510802 m!3213401))

(declare-fun m!3213403 () Bool)

(assert (=> bs!510802 m!3213403))

(assert (=> b!2781942 d!810265))

(declare-fun d!810267 () Bool)

(declare-fun lt!993768 () Int)

(assert (=> d!810267 (>= lt!993768 0)))

(declare-fun e!1754691 () Int)

(assert (=> d!810267 (= lt!993768 e!1754691)))

(declare-fun c!452248 () Bool)

(assert (=> d!810267 (= c!452248 ((_ is Nil!32101) lt!993748))))

(assert (=> d!810267 (= (size!24898 lt!993748) lt!993768)))

(declare-fun b!2782005 () Bool)

(assert (=> b!2782005 (= e!1754691 0)))

(declare-fun b!2782006 () Bool)

(assert (=> b!2782006 (= e!1754691 (+ 1 (size!24898 (t!228341 lt!993748))))))

(assert (= (and d!810267 c!452248) b!2782005))

(assert (= (and d!810267 (not c!452248)) b!2782006))

(declare-fun m!3213405 () Bool)

(assert (=> b!2782006 m!3213405))

(assert (=> b!2781938 d!810267))

(declare-fun setElem!23290 () Context!4654)

(declare-fun e!1754698 () Bool)

(declare-fun setRes!23290 () Bool)

(declare-fun setNonEmpty!23290 () Bool)

(declare-fun tp!880526 () Bool)

(declare-fun inv!43607 (Context!4654) Bool)

(assert (=> setNonEmpty!23290 (= setRes!23290 (and tp!880526 (inv!43607 setElem!23290) e!1754698))))

(declare-fun setRest!23290 () (InoxSet Context!4654))

(assert (=> setNonEmpty!23290 (= (_2!19118 (h!37523 (zeroValue!4084 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4654 Bool)) false) setElem!23290 true) setRest!23290))))

(declare-fun e!1754699 () Bool)

(declare-fun tp!880528 () Bool)

(declare-fun b!2782015 () Bool)

(declare-fun tp!880527 () Bool)

(declare-fun e!1754700 () Bool)

(assert (=> b!2782015 (= e!1754699 (and tp!880528 (inv!43607 (_2!19117 (_1!19118 (h!37523 (zeroValue!4084 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009)))))))))) e!1754700 tp_is_empty!14031 setRes!23290 tp!880527))))

(declare-fun condSetEmpty!23290 () Bool)

(assert (=> b!2782015 (= condSetEmpty!23290 (= (_2!19118 (h!37523 (zeroValue!4084 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009)))))))) ((as const (Array Context!4654 Bool)) false)))))

(declare-fun setIsEmpty!23290 () Bool)

(assert (=> setIsEmpty!23290 setRes!23290))

(declare-fun b!2782016 () Bool)

(declare-fun tp!880529 () Bool)

(assert (=> b!2782016 (= e!1754698 tp!880529)))

(declare-fun b!2782017 () Bool)

(declare-fun tp!880530 () Bool)

(assert (=> b!2782017 (= e!1754700 tp!880530)))

(assert (=> b!2781940 (= tp!880502 e!1754699)))

(assert (= b!2782015 b!2782017))

(assert (= (and b!2782015 condSetEmpty!23290) setIsEmpty!23290))

(assert (= (and b!2782015 (not condSetEmpty!23290)) setNonEmpty!23290))

(assert (= setNonEmpty!23290 b!2782016))

(assert (= (and b!2781940 ((_ is Cons!32103) (zeroValue!4084 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009)))))))) b!2782015))

(declare-fun m!3213407 () Bool)

(assert (=> setNonEmpty!23290 m!3213407))

(declare-fun m!3213409 () Bool)

(assert (=> b!2782015 m!3213409))

(declare-fun setRes!23291 () Bool)

(declare-fun tp!880531 () Bool)

(declare-fun setNonEmpty!23291 () Bool)

(declare-fun setElem!23291 () Context!4654)

(declare-fun e!1754701 () Bool)

(assert (=> setNonEmpty!23291 (= setRes!23291 (and tp!880531 (inv!43607 setElem!23291) e!1754701))))

(declare-fun setRest!23291 () (InoxSet Context!4654))

(assert (=> setNonEmpty!23291 (= (_2!19118 (h!37523 (minValue!4084 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4654 Bool)) false) setElem!23291 true) setRest!23291))))

(declare-fun tp!880532 () Bool)

(declare-fun e!1754702 () Bool)

(declare-fun e!1754703 () Bool)

(declare-fun b!2782018 () Bool)

(declare-fun tp!880533 () Bool)

(assert (=> b!2782018 (= e!1754702 (and tp!880533 (inv!43607 (_2!19117 (_1!19118 (h!37523 (minValue!4084 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009)))))))))) e!1754703 tp_is_empty!14031 setRes!23291 tp!880532))))

(declare-fun condSetEmpty!23291 () Bool)

(assert (=> b!2782018 (= condSetEmpty!23291 (= (_2!19118 (h!37523 (minValue!4084 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009)))))))) ((as const (Array Context!4654 Bool)) false)))))

(declare-fun setIsEmpty!23291 () Bool)

(assert (=> setIsEmpty!23291 setRes!23291))

(declare-fun b!2782019 () Bool)

(declare-fun tp!880534 () Bool)

(assert (=> b!2782019 (= e!1754701 tp!880534)))

(declare-fun b!2782020 () Bool)

(declare-fun tp!880535 () Bool)

(assert (=> b!2782020 (= e!1754703 tp!880535)))

(assert (=> b!2781940 (= tp!880503 e!1754702)))

(assert (= b!2782018 b!2782020))

(assert (= (and b!2782018 condSetEmpty!23291) setIsEmpty!23291))

(assert (= (and b!2782018 (not condSetEmpty!23291)) setNonEmpty!23291))

(assert (= setNonEmpty!23291 b!2782019))

(assert (= (and b!2781940 ((_ is Cons!32103) (minValue!4084 (v!33711 (underlying!7853 (v!33712 (underlying!7854 (cache!3874 cacheDown!1009)))))))) b!2782018))

(declare-fun m!3213411 () Bool)

(assert (=> setNonEmpty!23291 m!3213411))

(declare-fun m!3213413 () Bool)

(assert (=> b!2782018 m!3213413))

(declare-fun b!2782035 () Bool)

(declare-fun e!1754719 () Bool)

(declare-fun tp!880566 () Bool)

(assert (=> b!2782035 (= e!1754719 tp!880566)))

(declare-fun mapIsEmpty!17481 () Bool)

(declare-fun mapRes!17481 () Bool)

(assert (=> mapIsEmpty!17481 mapRes!17481))

(declare-fun b!2782036 () Bool)

(declare-fun e!1754721 () Bool)

(declare-fun tp!880562 () Bool)

(assert (=> b!2782036 (= e!1754721 tp!880562)))

(declare-fun condMapEmpty!17481 () Bool)

(declare-fun mapDefault!17481 () List!32203)

(assert (=> mapNonEmpty!17478 (= condMapEmpty!17481 (= mapRest!17477 ((as const (Array (_ BitVec 32) List!32203)) mapDefault!17481)))))

(declare-fun e!1754720 () Bool)

(assert (=> mapNonEmpty!17478 (= tp!880510 (and e!1754720 mapRes!17481))))

(declare-fun e!1754717 () Bool)

(declare-fun setRes!23297 () Bool)

(declare-fun tp!880563 () Bool)

(declare-fun tp!880560 () Bool)

(declare-fun b!2782037 () Bool)

(assert (=> b!2782037 (= e!1754720 (and tp!880563 (inv!43607 (_2!19117 (_1!19118 (h!37523 mapDefault!17481)))) e!1754717 tp_is_empty!14031 setRes!23297 tp!880560))))

(declare-fun condSetEmpty!23296 () Bool)

(assert (=> b!2782037 (= condSetEmpty!23296 (= (_2!19118 (h!37523 mapDefault!17481)) ((as const (Array Context!4654 Bool)) false)))))

(declare-fun setNonEmpty!23296 () Bool)

(declare-fun tp!880565 () Bool)

(declare-fun setElem!23297 () Context!4654)

(declare-fun setRes!23296 () Bool)

(declare-fun e!1754718 () Bool)

(assert (=> setNonEmpty!23296 (= setRes!23296 (and tp!880565 (inv!43607 setElem!23297) e!1754718))))

(declare-fun mapValue!17481 () List!32203)

(declare-fun setRest!23297 () (InoxSet Context!4654))

(assert (=> setNonEmpty!23296 (= (_2!19118 (h!37523 mapValue!17481)) ((_ map or) (store ((as const (Array Context!4654 Bool)) false) setElem!23297 true) setRest!23297))))

(declare-fun b!2782038 () Bool)

(declare-fun tp!880559 () Bool)

(assert (=> b!2782038 (= e!1754717 tp!880559)))

(declare-fun setIsEmpty!23296 () Bool)

(assert (=> setIsEmpty!23296 setRes!23296))

(declare-fun setIsEmpty!23297 () Bool)

(assert (=> setIsEmpty!23297 setRes!23297))

(declare-fun tp!880561 () Bool)

(declare-fun setNonEmpty!23297 () Bool)

(declare-fun setElem!23296 () Context!4654)

(assert (=> setNonEmpty!23297 (= setRes!23297 (and tp!880561 (inv!43607 setElem!23296) e!1754721))))

(declare-fun setRest!23296 () (InoxSet Context!4654))

(assert (=> setNonEmpty!23297 (= (_2!19118 (h!37523 mapDefault!17481)) ((_ map or) (store ((as const (Array Context!4654 Bool)) false) setElem!23296 true) setRest!23296))))

(declare-fun b!2782039 () Bool)

(declare-fun tp!880558 () Bool)

(assert (=> b!2782039 (= e!1754718 tp!880558)))

(declare-fun mapNonEmpty!17481 () Bool)

(declare-fun tp!880567 () Bool)

(declare-fun e!1754716 () Bool)

(assert (=> mapNonEmpty!17481 (= mapRes!17481 (and tp!880567 e!1754716))))

(declare-fun mapRest!17481 () (Array (_ BitVec 32) List!32203))

(declare-fun mapKey!17481 () (_ BitVec 32))

(assert (=> mapNonEmpty!17481 (= mapRest!17477 (store mapRest!17481 mapKey!17481 mapValue!17481))))

(declare-fun tp!880568 () Bool)

(declare-fun b!2782040 () Bool)

(declare-fun tp!880564 () Bool)

(assert (=> b!2782040 (= e!1754716 (and tp!880564 (inv!43607 (_2!19117 (_1!19118 (h!37523 mapValue!17481)))) e!1754719 tp_is_empty!14031 setRes!23296 tp!880568))))

(declare-fun condSetEmpty!23297 () Bool)

(assert (=> b!2782040 (= condSetEmpty!23297 (= (_2!19118 (h!37523 mapValue!17481)) ((as const (Array Context!4654 Bool)) false)))))

(assert (= (and mapNonEmpty!17478 condMapEmpty!17481) mapIsEmpty!17481))

(assert (= (and mapNonEmpty!17478 (not condMapEmpty!17481)) mapNonEmpty!17481))

(assert (= b!2782040 b!2782035))

(assert (= (and b!2782040 condSetEmpty!23297) setIsEmpty!23296))

(assert (= (and b!2782040 (not condSetEmpty!23297)) setNonEmpty!23296))

(assert (= setNonEmpty!23296 b!2782039))

(assert (= (and mapNonEmpty!17481 ((_ is Cons!32103) mapValue!17481)) b!2782040))

(assert (= b!2782037 b!2782038))

(assert (= (and b!2782037 condSetEmpty!23296) setIsEmpty!23297))

(assert (= (and b!2782037 (not condSetEmpty!23296)) setNonEmpty!23297))

(assert (= setNonEmpty!23297 b!2782036))

(assert (= (and mapNonEmpty!17478 ((_ is Cons!32103) mapDefault!17481)) b!2782037))

(declare-fun m!3213415 () Bool)

(assert (=> setNonEmpty!23296 m!3213415))

(declare-fun m!3213417 () Bool)

(assert (=> b!2782040 m!3213417))

(declare-fun m!3213419 () Bool)

(assert (=> mapNonEmpty!17481 m!3213419))

(declare-fun m!3213421 () Bool)

(assert (=> setNonEmpty!23297 m!3213421))

(declare-fun m!3213423 () Bool)

(assert (=> b!2782037 m!3213423))

(declare-fun e!1754722 () Bool)

(declare-fun tp!880569 () Bool)

(declare-fun setElem!23298 () Context!4654)

(declare-fun setNonEmpty!23298 () Bool)

(declare-fun setRes!23298 () Bool)

(assert (=> setNonEmpty!23298 (= setRes!23298 (and tp!880569 (inv!43607 setElem!23298) e!1754722))))

(declare-fun setRest!23298 () (InoxSet Context!4654))

(assert (=> setNonEmpty!23298 (= (_2!19118 (h!37523 mapValue!17478)) ((_ map or) (store ((as const (Array Context!4654 Bool)) false) setElem!23298 true) setRest!23298))))

(declare-fun b!2782041 () Bool)

(declare-fun tp!880571 () Bool)

(declare-fun e!1754724 () Bool)

(declare-fun e!1754723 () Bool)

(declare-fun tp!880570 () Bool)

(assert (=> b!2782041 (= e!1754723 (and tp!880571 (inv!43607 (_2!19117 (_1!19118 (h!37523 mapValue!17478)))) e!1754724 tp_is_empty!14031 setRes!23298 tp!880570))))

(declare-fun condSetEmpty!23298 () Bool)

(assert (=> b!2782041 (= condSetEmpty!23298 (= (_2!19118 (h!37523 mapValue!17478)) ((as const (Array Context!4654 Bool)) false)))))

(declare-fun setIsEmpty!23298 () Bool)

(assert (=> setIsEmpty!23298 setRes!23298))

(declare-fun b!2782042 () Bool)

(declare-fun tp!880572 () Bool)

(assert (=> b!2782042 (= e!1754722 tp!880572)))

(declare-fun b!2782043 () Bool)

(declare-fun tp!880573 () Bool)

(assert (=> b!2782043 (= e!1754724 tp!880573)))

(assert (=> mapNonEmpty!17478 (= tp!880507 e!1754723)))

(assert (= b!2782041 b!2782043))

(assert (= (and b!2782041 condSetEmpty!23298) setIsEmpty!23298))

(assert (= (and b!2782041 (not condSetEmpty!23298)) setNonEmpty!23298))

(assert (= setNonEmpty!23298 b!2782042))

(assert (= (and mapNonEmpty!17478 ((_ is Cons!32103) mapValue!17478)) b!2782041))

(declare-fun m!3213425 () Bool)

(assert (=> setNonEmpty!23298 m!3213425))

(declare-fun m!3213427 () Bool)

(assert (=> b!2782041 m!3213427))

(declare-fun b!2782048 () Bool)

(declare-fun e!1754727 () Bool)

(declare-fun tp!880576 () Bool)

(assert (=> b!2782048 (= e!1754727 (and tp_is_empty!14031 tp!880576))))

(assert (=> b!2781939 (= tp!880514 e!1754727)))

(assert (= (and b!2781939 ((_ is Cons!32101) (t!228341 testedP!183))) b!2782048))

(declare-fun e!1754736 () Bool)

(assert (=> b!2781944 (= tp!880512 e!1754736)))

(declare-fun b!2782057 () Bool)

(declare-fun e!1754734 () Bool)

(declare-fun tp!880585 () Bool)

(assert (=> b!2782057 (= e!1754734 tp!880585)))

(declare-fun b!2782058 () Bool)

(declare-fun e!1754735 () Bool)

(declare-fun tp!880587 () Bool)

(assert (=> b!2782058 (= e!1754735 tp!880587)))

(declare-fun setIsEmpty!23301 () Bool)

(declare-fun setRes!23301 () Bool)

(assert (=> setIsEmpty!23301 setRes!23301))

(declare-fun b!2782059 () Bool)

(declare-fun tp!880586 () Bool)

(assert (=> b!2782059 (= e!1754736 (and (inv!43607 (_1!19119 (_1!19120 (h!37524 mapDefault!17478)))) e!1754735 tp_is_empty!14031 setRes!23301 tp!880586))))

(declare-fun condSetEmpty!23301 () Bool)

(assert (=> b!2782059 (= condSetEmpty!23301 (= (_2!19120 (h!37524 mapDefault!17478)) ((as const (Array Context!4654 Bool)) false)))))

(declare-fun setElem!23301 () Context!4654)

(declare-fun tp!880588 () Bool)

(declare-fun setNonEmpty!23301 () Bool)

(assert (=> setNonEmpty!23301 (= setRes!23301 (and tp!880588 (inv!43607 setElem!23301) e!1754734))))

(declare-fun setRest!23301 () (InoxSet Context!4654))

(assert (=> setNonEmpty!23301 (= (_2!19120 (h!37524 mapDefault!17478)) ((_ map or) (store ((as const (Array Context!4654 Bool)) false) setElem!23301 true) setRest!23301))))

(assert (= b!2782059 b!2782058))

(assert (= (and b!2782059 condSetEmpty!23301) setIsEmpty!23301))

(assert (= (and b!2782059 (not condSetEmpty!23301)) setNonEmpty!23301))

(assert (= setNonEmpty!23301 b!2782057))

(assert (= (and b!2781944 ((_ is Cons!32104) mapDefault!17478)) b!2782059))

(declare-fun m!3213429 () Bool)

(assert (=> b!2782059 m!3213429))

(declare-fun m!3213431 () Bool)

(assert (=> setNonEmpty!23301 m!3213431))

(declare-fun b!2782060 () Bool)

(declare-fun e!1754737 () Bool)

(declare-fun tp!880589 () Bool)

(assert (=> b!2782060 (= e!1754737 (and tp_is_empty!14031 tp!880589))))

(assert (=> b!2781943 (= tp!880500 e!1754737)))

(assert (= (and b!2781943 ((_ is Cons!32101) (t!228341 testedSuffix!143))) b!2782060))

(declare-fun e!1754740 () Bool)

(assert (=> b!2781953 (= tp!880515 e!1754740)))

(declare-fun b!2782061 () Bool)

(declare-fun e!1754738 () Bool)

(declare-fun tp!880590 () Bool)

(assert (=> b!2782061 (= e!1754738 tp!880590)))

(declare-fun b!2782062 () Bool)

(declare-fun e!1754739 () Bool)

(declare-fun tp!880592 () Bool)

(assert (=> b!2782062 (= e!1754739 tp!880592)))

(declare-fun setIsEmpty!23302 () Bool)

(declare-fun setRes!23302 () Bool)

(assert (=> setIsEmpty!23302 setRes!23302))

(declare-fun b!2782063 () Bool)

(declare-fun tp!880591 () Bool)

(assert (=> b!2782063 (= e!1754740 (and (inv!43607 (_1!19119 (_1!19120 (h!37524 (zeroValue!4085 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890)))))))))) e!1754739 tp_is_empty!14031 setRes!23302 tp!880591))))

(declare-fun condSetEmpty!23302 () Bool)

(assert (=> b!2782063 (= condSetEmpty!23302 (= (_2!19120 (h!37524 (zeroValue!4085 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890)))))))) ((as const (Array Context!4654 Bool)) false)))))

(declare-fun tp!880593 () Bool)

(declare-fun setElem!23302 () Context!4654)

(declare-fun setNonEmpty!23302 () Bool)

(assert (=> setNonEmpty!23302 (= setRes!23302 (and tp!880593 (inv!43607 setElem!23302) e!1754738))))

(declare-fun setRest!23302 () (InoxSet Context!4654))

(assert (=> setNonEmpty!23302 (= (_2!19120 (h!37524 (zeroValue!4085 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4654 Bool)) false) setElem!23302 true) setRest!23302))))

(assert (= b!2782063 b!2782062))

(assert (= (and b!2782063 condSetEmpty!23302) setIsEmpty!23302))

(assert (= (and b!2782063 (not condSetEmpty!23302)) setNonEmpty!23302))

(assert (= setNonEmpty!23302 b!2782061))

(assert (= (and b!2781953 ((_ is Cons!32104) (zeroValue!4085 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890)))))))) b!2782063))

(declare-fun m!3213433 () Bool)

(assert (=> b!2782063 m!3213433))

(declare-fun m!3213435 () Bool)

(assert (=> setNonEmpty!23302 m!3213435))

(declare-fun e!1754743 () Bool)

(assert (=> b!2781953 (= tp!880513 e!1754743)))

(declare-fun b!2782064 () Bool)

(declare-fun e!1754741 () Bool)

(declare-fun tp!880594 () Bool)

(assert (=> b!2782064 (= e!1754741 tp!880594)))

(declare-fun b!2782065 () Bool)

(declare-fun e!1754742 () Bool)

(declare-fun tp!880596 () Bool)

(assert (=> b!2782065 (= e!1754742 tp!880596)))

(declare-fun setIsEmpty!23303 () Bool)

(declare-fun setRes!23303 () Bool)

(assert (=> setIsEmpty!23303 setRes!23303))

(declare-fun tp!880595 () Bool)

(declare-fun b!2782066 () Bool)

(assert (=> b!2782066 (= e!1754743 (and (inv!43607 (_1!19119 (_1!19120 (h!37524 (minValue!4085 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890)))))))))) e!1754742 tp_is_empty!14031 setRes!23303 tp!880595))))

(declare-fun condSetEmpty!23303 () Bool)

(assert (=> b!2782066 (= condSetEmpty!23303 (= (_2!19120 (h!37524 (minValue!4085 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890)))))))) ((as const (Array Context!4654 Bool)) false)))))

(declare-fun setElem!23303 () Context!4654)

(declare-fun tp!880597 () Bool)

(declare-fun setNonEmpty!23303 () Bool)

(assert (=> setNonEmpty!23303 (= setRes!23303 (and tp!880597 (inv!43607 setElem!23303) e!1754741))))

(declare-fun setRest!23303 () (InoxSet Context!4654))

(assert (=> setNonEmpty!23303 (= (_2!19120 (h!37524 (minValue!4085 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4654 Bool)) false) setElem!23303 true) setRest!23303))))

(assert (= b!2782066 b!2782065))

(assert (= (and b!2782066 condSetEmpty!23303) setIsEmpty!23303))

(assert (= (and b!2782066 (not condSetEmpty!23303)) setNonEmpty!23303))

(assert (= setNonEmpty!23303 b!2782064))

(assert (= (and b!2781953 ((_ is Cons!32104) (minValue!4085 (v!33713 (underlying!7855 (v!33714 (underlying!7856 (cache!3875 cacheUp!890)))))))) b!2782066))

(declare-fun m!3213437 () Bool)

(assert (=> b!2782066 m!3213437))

(declare-fun m!3213439 () Bool)

(assert (=> setNonEmpty!23303 m!3213439))

(declare-fun mapNonEmpty!17484 () Bool)

(declare-fun mapRes!17484 () Bool)

(declare-fun tp!880623 () Bool)

(declare-fun e!1754757 () Bool)

(assert (=> mapNonEmpty!17484 (= mapRes!17484 (and tp!880623 e!1754757))))

(declare-fun mapRest!17484 () (Array (_ BitVec 32) List!32204))

(declare-fun mapValue!17484 () List!32204)

(declare-fun mapKey!17484 () (_ BitVec 32))

(assert (=> mapNonEmpty!17484 (= mapRest!17478 (store mapRest!17484 mapKey!17484 mapValue!17484))))

(declare-fun b!2782081 () Bool)

(declare-fun e!1754760 () Bool)

(declare-fun tp!880616 () Bool)

(assert (=> b!2782081 (= e!1754760 tp!880616)))

(declare-fun mapIsEmpty!17484 () Bool)

(assert (=> mapIsEmpty!17484 mapRes!17484))

(declare-fun e!1754756 () Bool)

(declare-fun setNonEmpty!23308 () Bool)

(declare-fun tp!880620 () Bool)

(declare-fun setRes!23308 () Bool)

(declare-fun setElem!23309 () Context!4654)

(assert (=> setNonEmpty!23308 (= setRes!23308 (and tp!880620 (inv!43607 setElem!23309) e!1754756))))

(declare-fun mapDefault!17484 () List!32204)

(declare-fun setRest!23308 () (InoxSet Context!4654))

(assert (=> setNonEmpty!23308 (= (_2!19120 (h!37524 mapDefault!17484)) ((_ map or) (store ((as const (Array Context!4654 Bool)) false) setElem!23309 true) setRest!23308))))

(declare-fun setIsEmpty!23308 () Bool)

(assert (=> setIsEmpty!23308 setRes!23308))

(declare-fun b!2782082 () Bool)

(declare-fun tp!880621 () Bool)

(declare-fun setRes!23309 () Bool)

(assert (=> b!2782082 (= e!1754757 (and (inv!43607 (_1!19119 (_1!19120 (h!37524 mapValue!17484)))) e!1754760 tp_is_empty!14031 setRes!23309 tp!880621))))

(declare-fun condSetEmpty!23308 () Bool)

(assert (=> b!2782082 (= condSetEmpty!23308 (= (_2!19120 (h!37524 mapValue!17484)) ((as const (Array Context!4654 Bool)) false)))))

(declare-fun condMapEmpty!17484 () Bool)

(assert (=> mapNonEmpty!17477 (= condMapEmpty!17484 (= mapRest!17478 ((as const (Array (_ BitVec 32) List!32204)) mapDefault!17484)))))

(declare-fun e!1754761 () Bool)

(assert (=> mapNonEmpty!17477 (= tp!880508 (and e!1754761 mapRes!17484))))

(declare-fun setIsEmpty!23309 () Bool)

(assert (=> setIsEmpty!23309 setRes!23309))

(declare-fun e!1754758 () Bool)

(declare-fun tp!880619 () Bool)

(declare-fun setNonEmpty!23309 () Bool)

(declare-fun setElem!23308 () Context!4654)

(assert (=> setNonEmpty!23309 (= setRes!23309 (and tp!880619 (inv!43607 setElem!23308) e!1754758))))

(declare-fun setRest!23309 () (InoxSet Context!4654))

(assert (=> setNonEmpty!23309 (= (_2!19120 (h!37524 mapValue!17484)) ((_ map or) (store ((as const (Array Context!4654 Bool)) false) setElem!23308 true) setRest!23309))))

(declare-fun b!2782083 () Bool)

(declare-fun tp!880622 () Bool)

(assert (=> b!2782083 (= e!1754758 tp!880622)))

(declare-fun e!1754759 () Bool)

(declare-fun tp!880618 () Bool)

(declare-fun b!2782084 () Bool)

(assert (=> b!2782084 (= e!1754761 (and (inv!43607 (_1!19119 (_1!19120 (h!37524 mapDefault!17484)))) e!1754759 tp_is_empty!14031 setRes!23308 tp!880618))))

(declare-fun condSetEmpty!23309 () Bool)

(assert (=> b!2782084 (= condSetEmpty!23309 (= (_2!19120 (h!37524 mapDefault!17484)) ((as const (Array Context!4654 Bool)) false)))))

(declare-fun b!2782085 () Bool)

(declare-fun tp!880624 () Bool)

(assert (=> b!2782085 (= e!1754759 tp!880624)))

(declare-fun b!2782086 () Bool)

(declare-fun tp!880617 () Bool)

(assert (=> b!2782086 (= e!1754756 tp!880617)))

(assert (= (and mapNonEmpty!17477 condMapEmpty!17484) mapIsEmpty!17484))

(assert (= (and mapNonEmpty!17477 (not condMapEmpty!17484)) mapNonEmpty!17484))

(assert (= b!2782082 b!2782081))

(assert (= (and b!2782082 condSetEmpty!23308) setIsEmpty!23309))

(assert (= (and b!2782082 (not condSetEmpty!23308)) setNonEmpty!23309))

(assert (= setNonEmpty!23309 b!2782083))

(assert (= (and mapNonEmpty!17484 ((_ is Cons!32104) mapValue!17484)) b!2782082))

(assert (= b!2782084 b!2782085))

(assert (= (and b!2782084 condSetEmpty!23309) setIsEmpty!23308))

(assert (= (and b!2782084 (not condSetEmpty!23309)) setNonEmpty!23308))

(assert (= setNonEmpty!23308 b!2782086))

(assert (= (and mapNonEmpty!17477 ((_ is Cons!32104) mapDefault!17484)) b!2782084))

(declare-fun m!3213441 () Bool)

(assert (=> setNonEmpty!23309 m!3213441))

(declare-fun m!3213443 () Bool)

(assert (=> mapNonEmpty!17484 m!3213443))

(declare-fun m!3213445 () Bool)

(assert (=> b!2782082 m!3213445))

(declare-fun m!3213447 () Bool)

(assert (=> b!2782084 m!3213447))

(declare-fun m!3213449 () Bool)

(assert (=> setNonEmpty!23308 m!3213449))

(declare-fun e!1754764 () Bool)

(assert (=> mapNonEmpty!17477 (= tp!880511 e!1754764)))

(declare-fun b!2782087 () Bool)

(declare-fun e!1754762 () Bool)

(declare-fun tp!880625 () Bool)

(assert (=> b!2782087 (= e!1754762 tp!880625)))

(declare-fun b!2782088 () Bool)

(declare-fun e!1754763 () Bool)

(declare-fun tp!880627 () Bool)

(assert (=> b!2782088 (= e!1754763 tp!880627)))

(declare-fun setIsEmpty!23310 () Bool)

(declare-fun setRes!23310 () Bool)

(assert (=> setIsEmpty!23310 setRes!23310))

(declare-fun tp!880626 () Bool)

(declare-fun b!2782089 () Bool)

(assert (=> b!2782089 (= e!1754764 (and (inv!43607 (_1!19119 (_1!19120 (h!37524 mapValue!17477)))) e!1754763 tp_is_empty!14031 setRes!23310 tp!880626))))

(declare-fun condSetEmpty!23310 () Bool)

(assert (=> b!2782089 (= condSetEmpty!23310 (= (_2!19120 (h!37524 mapValue!17477)) ((as const (Array Context!4654 Bool)) false)))))

(declare-fun setNonEmpty!23310 () Bool)

(declare-fun setElem!23310 () Context!4654)

(declare-fun tp!880628 () Bool)

(assert (=> setNonEmpty!23310 (= setRes!23310 (and tp!880628 (inv!43607 setElem!23310) e!1754762))))

(declare-fun setRest!23310 () (InoxSet Context!4654))

(assert (=> setNonEmpty!23310 (= (_2!19120 (h!37524 mapValue!17477)) ((_ map or) (store ((as const (Array Context!4654 Bool)) false) setElem!23310 true) setRest!23310))))

(assert (= b!2782089 b!2782088))

(assert (= (and b!2782089 condSetEmpty!23310) setIsEmpty!23310))

(assert (= (and b!2782089 (not condSetEmpty!23310)) setNonEmpty!23310))

(assert (= setNonEmpty!23310 b!2782087))

(assert (= (and mapNonEmpty!17477 ((_ is Cons!32104) mapValue!17477)) b!2782089))

(declare-fun m!3213451 () Bool)

(assert (=> b!2782089 m!3213451))

(declare-fun m!3213453 () Bool)

(assert (=> setNonEmpty!23310 m!3213453))

(declare-fun tp!880637 () Bool)

(declare-fun e!1754769 () Bool)

(declare-fun tp!880636 () Bool)

(declare-fun b!2782098 () Bool)

(assert (=> b!2782098 (= e!1754769 (and (inv!43604 (left!24432 (c!452237 totalInput!758))) tp!880636 (inv!43604 (right!24762 (c!452237 totalInput!758))) tp!880637))))

(declare-fun b!2782100 () Bool)

(declare-fun e!1754770 () Bool)

(declare-fun tp!880635 () Bool)

(assert (=> b!2782100 (= e!1754770 tp!880635)))

(declare-fun b!2782099 () Bool)

(declare-fun inv!43608 (IArray!19977) Bool)

(assert (=> b!2782099 (= e!1754769 (and (inv!43608 (xs!13097 (c!452237 totalInput!758))) e!1754770))))

(assert (=> b!2781951 (= tp!880509 (and (inv!43604 (c!452237 totalInput!758)) e!1754769))))

(assert (= (and b!2781951 ((_ is Node!9986) (c!452237 totalInput!758))) b!2782098))

(assert (= b!2782099 b!2782100))

(assert (= (and b!2781951 ((_ is Leaf!15209) (c!452237 totalInput!758))) b!2782099))

(declare-fun m!3213455 () Bool)

(assert (=> b!2782098 m!3213455))

(declare-fun m!3213457 () Bool)

(assert (=> b!2782098 m!3213457))

(declare-fun m!3213459 () Bool)

(assert (=> b!2782099 m!3213459))

(assert (=> b!2781951 m!3213327))

(declare-fun setRes!23311 () Bool)

(declare-fun setNonEmpty!23311 () Bool)

(declare-fun tp!880638 () Bool)

(declare-fun e!1754771 () Bool)

(declare-fun setElem!23311 () Context!4654)

(assert (=> setNonEmpty!23311 (= setRes!23311 (and tp!880638 (inv!43607 setElem!23311) e!1754771))))

(declare-fun setRest!23311 () (InoxSet Context!4654))

(assert (=> setNonEmpty!23311 (= (_2!19118 (h!37523 mapDefault!17477)) ((_ map or) (store ((as const (Array Context!4654 Bool)) false) setElem!23311 true) setRest!23311))))

(declare-fun tp!880640 () Bool)

(declare-fun b!2782101 () Bool)

(declare-fun e!1754772 () Bool)

(declare-fun e!1754773 () Bool)

(declare-fun tp!880639 () Bool)

(assert (=> b!2782101 (= e!1754772 (and tp!880640 (inv!43607 (_2!19117 (_1!19118 (h!37523 mapDefault!17477)))) e!1754773 tp_is_empty!14031 setRes!23311 tp!880639))))

(declare-fun condSetEmpty!23311 () Bool)

(assert (=> b!2782101 (= condSetEmpty!23311 (= (_2!19118 (h!37523 mapDefault!17477)) ((as const (Array Context!4654 Bool)) false)))))

(declare-fun setIsEmpty!23311 () Bool)

(assert (=> setIsEmpty!23311 setRes!23311))

(declare-fun b!2782102 () Bool)

(declare-fun tp!880641 () Bool)

(assert (=> b!2782102 (= e!1754771 tp!880641)))

(declare-fun b!2782103 () Bool)

(declare-fun tp!880642 () Bool)

(assert (=> b!2782103 (= e!1754773 tp!880642)))

(assert (=> b!2781937 (= tp!880501 e!1754772)))

(assert (= b!2782101 b!2782103))

(assert (= (and b!2782101 condSetEmpty!23311) setIsEmpty!23311))

(assert (= (and b!2782101 (not condSetEmpty!23311)) setNonEmpty!23311))

(assert (= setNonEmpty!23311 b!2782102))

(assert (= (and b!2781937 ((_ is Cons!32103) mapDefault!17477)) b!2782101))

(declare-fun m!3213461 () Bool)

(assert (=> setNonEmpty!23311 m!3213461))

(declare-fun m!3213463 () Bool)

(assert (=> b!2782101 m!3213463))

(check-sat (not b!2781998) (not b!2782036) (not b!2782003) (not b!2781979) (not setNonEmpty!23296) (not b!2781951) (not b!2782063) (not b!2782088) (not b!2781958) (not b!2782100) (not b_next!79207) (not b!2782082) (not b!2782085) (not d!810243) (not b!2782059) (not d!810265) (not b!2782064) (not setNonEmpty!23302) (not d!810239) (not d!810257) (not b!2782066) (not b_next!79211) (not d!810249) (not b!2782017) (not b!2781986) (not b!2781971) (not b!2782089) (not b!2782000) (not b!2782004) (not b!2782102) (not b!2782087) (not b!2782018) (not mapNonEmpty!17481) (not setNonEmpty!23308) (not b_next!79209) tp_is_empty!14031 (not b!2782083) (not b!2782101) (not b!2782058) (not setNonEmpty!23303) (not setNonEmpty!23291) (not b!2781972) (not b!2782015) (not setNonEmpty!23310) (not b!2782043) (not b!2782081) (not b!2782084) (not d!810245) (not b!2782060) (not b!2782065) (not b!2782002) b_and!203241 (not b!2782041) (not b!2782039) b_and!203243 (not b!2782038) (not b!2782006) (not b!2782035) (not b!2782037) (not b!2782040) (not setNonEmpty!23297) (not b_next!79205) b_and!203245 (not setNonEmpty!23311) (not b!2782061) (not b!2782016) (not b!2781988) (not b!2782103) (not b!2781999) (not mapNonEmpty!17484) (not b!2782020) (not b!2782019) (not setNonEmpty!23290) (not setNonEmpty!23298) (not d!810251) (not b!2781961) (not b!2782048) (not b!2782086) (not b!2782042) (not setNonEmpty!23301) b_and!203239 (not b!2782057) (not setNonEmpty!23309) (not b!2782098) (not b!2782099) (not b!2782062))
(check-sat (not b_next!79207) (not b_next!79211) (not b_next!79209) b_and!203241 b_and!203243 b_and!203239 (not b_next!79205) b_and!203245)
