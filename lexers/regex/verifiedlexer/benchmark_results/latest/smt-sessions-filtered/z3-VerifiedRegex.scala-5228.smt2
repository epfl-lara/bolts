; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268944 () Bool)

(assert start!268944)

(declare-fun b!2783103 () Bool)

(declare-fun b_free!78597 () Bool)

(declare-fun b_next!79301 () Bool)

(assert (=> b!2783103 (= b_free!78597 (not b_next!79301))))

(declare-fun tp!881389 () Bool)

(declare-fun b_and!203335 () Bool)

(assert (=> b!2783103 (= tp!881389 b_and!203335)))

(declare-fun b!2783091 () Bool)

(declare-fun b_free!78599 () Bool)

(declare-fun b_next!79303 () Bool)

(assert (=> b!2783091 (= b_free!78599 (not b_next!79303))))

(declare-fun tp!881390 () Bool)

(declare-fun b_and!203337 () Bool)

(assert (=> b!2783091 (= tp!881390 b_and!203337)))

(declare-fun b!2783084 () Bool)

(declare-fun b_free!78601 () Bool)

(declare-fun b_next!79305 () Bool)

(assert (=> b!2783084 (= b_free!78601 (not b_next!79305))))

(declare-fun tp!881397 () Bool)

(declare-fun b_and!203339 () Bool)

(assert (=> b!2783084 (= tp!881397 b_and!203339)))

(declare-fun b!2783087 () Bool)

(declare-fun b_free!78603 () Bool)

(declare-fun b_next!79307 () Bool)

(assert (=> b!2783087 (= b_free!78603 (not b_next!79307))))

(declare-fun tp!881403 () Bool)

(declare-fun b_and!203341 () Bool)

(assert (=> b!2783087 (= tp!881403 b_and!203341)))

(declare-fun e!1755666 () Bool)

(declare-datatypes ((Hashable!3764 0))(
  ( (HashableExt!3763 (__x!21194 Int)) )
))
(declare-datatypes ((C!16400 0))(
  ( (C!16401 (val!10134 Int)) )
))
(declare-datatypes ((Regex!8121 0))(
  ( (ElementMatch!8121 (c!452283 C!16400)) (Concat!13209 (regOne!16754 Regex!8121) (regTwo!16754 Regex!8121)) (EmptyExpr!8121) (Star!8121 (reg!8450 Regex!8121)) (EmptyLang!8121) (Union!8121 (regOne!16755 Regex!8121) (regTwo!16755 Regex!8121)) )
))
(declare-datatypes ((List!32247 0))(
  ( (Nil!32147) (Cons!32147 (h!37567 Regex!8121) (t!228387 List!32247)) )
))
(declare-datatypes ((Context!4678 0))(
  ( (Context!4679 (exprs!2839 List!32247)) )
))
(declare-datatypes ((tuple2!32420 0))(
  ( (tuple2!32421 (_1!19163 Context!4678) (_2!19163 C!16400)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32422 0))(
  ( (tuple2!32423 (_1!19164 tuple2!32420) (_2!19164 (InoxSet Context!4678))) )
))
(declare-datatypes ((List!32248 0))(
  ( (Nil!32148) (Cons!32148 (h!37568 tuple2!32422) (t!228388 List!32248)) )
))
(declare-datatypes ((array!13689 0))(
  ( (array!13690 (arr!6102 (Array (_ BitVec 32) List!32248)) (size!24951 (_ BitVec 32))) )
))
(declare-datatypes ((array!13691 0))(
  ( (array!13692 (arr!6103 (Array (_ BitVec 32) (_ BitVec 64))) (size!24952 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7696 0))(
  ( (LongMapFixedSize!7697 (defaultEntry!4233 Int) (mask!9645 (_ BitVec 32)) (extraKeys!4097 (_ BitVec 32)) (zeroValue!4107 List!32248) (minValue!4107 List!32248) (_size!7739 (_ BitVec 32)) (_keys!4148 array!13691) (_values!4129 array!13689) (_vacant!3909 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15201 0))(
  ( (Cell!15202 (v!33757 LongMapFixedSize!7696)) )
))
(declare-datatypes ((MutLongMap!3848 0))(
  ( (LongMap!3848 (underlying!7899 Cell!15201)) (MutLongMapExt!3847 (__x!21195 Int)) )
))
(declare-datatypes ((Cell!15203 0))(
  ( (Cell!15204 (v!33758 MutLongMap!3848)) )
))
(declare-datatypes ((MutableMap!3754 0))(
  ( (MutableMapExt!3753 (__x!21196 Int)) (HashMap!3754 (underlying!7900 Cell!15203) (hashF!5796 Hashable!3764) (_size!7740 (_ BitVec 32)) (defaultValue!3925 Int)) )
))
(declare-datatypes ((CacheUp!2458 0))(
  ( (CacheUp!2459 (cache!3897 MutableMap!3754)) )
))
(declare-fun cacheUp!890 () CacheUp!2458)

(declare-fun tp!881402 () Bool)

(declare-fun e!1755662 () Bool)

(declare-fun tp!881392 () Bool)

(declare-fun array_inv!4367 (array!13691) Bool)

(declare-fun array_inv!4368 (array!13689) Bool)

(assert (=> b!2783084 (= e!1755666 (and tp!881397 tp!881392 tp!881402 (array_inv!4367 (_keys!4148 (v!33757 (underlying!7899 (v!33758 (underlying!7900 (cache!3897 cacheUp!890))))))) (array_inv!4368 (_values!4129 (v!33757 (underlying!7899 (v!33758 (underlying!7900 (cache!3897 cacheUp!890))))))) e!1755662))))

(declare-fun b!2783085 () Bool)

(declare-fun e!1755670 () Bool)

(declare-fun tp_is_empty!14055 () Bool)

(declare-fun tp!881388 () Bool)

(assert (=> b!2783085 (= e!1755670 (and tp_is_empty!14055 tp!881388))))

(declare-fun b!2783086 () Bool)

(declare-fun e!1755671 () Bool)

(declare-fun e!1755660 () Bool)

(assert (=> b!2783086 (= e!1755671 e!1755660)))

(declare-fun res!1161735 () Bool)

(declare-fun e!1755658 () Bool)

(assert (=> start!268944 (=> (not res!1161735) (not e!1755658))))

(declare-datatypes ((List!32249 0))(
  ( (Nil!32149) (Cons!32149 (h!37569 C!16400) (t!228389 List!32249)) )
))
(declare-fun lt!994058 () List!32249)

(declare-fun lt!994061 () List!32249)

(assert (=> start!268944 (= res!1161735 (= lt!994058 lt!994061))))

(declare-datatypes ((IArray!19999 0))(
  ( (IArray!20000 (innerList!10057 List!32249)) )
))
(declare-datatypes ((Conc!9997 0))(
  ( (Node!9997 (left!24449 Conc!9997) (right!24779 Conc!9997) (csize!20224 Int) (cheight!10208 Int)) (Leaf!15226 (xs!13108 IArray!19999) (csize!20225 Int)) (Empty!9997) )
))
(declare-datatypes ((BalanceConc!19608 0))(
  ( (BalanceConc!19609 (c!452284 Conc!9997)) )
))
(declare-fun totalInput!758 () BalanceConc!19608)

(declare-fun list!12117 (BalanceConc!19608) List!32249)

(assert (=> start!268944 (= lt!994061 (list!12117 totalInput!758))))

(declare-fun testedP!183 () List!32249)

(declare-fun testedSuffix!143 () List!32249)

(declare-fun ++!7948 (List!32249 List!32249) List!32249)

(assert (=> start!268944 (= lt!994058 (++!7948 testedP!183 testedSuffix!143))))

(assert (=> start!268944 e!1755658))

(declare-fun e!1755664 () Bool)

(declare-fun inv!43666 (BalanceConc!19608) Bool)

(assert (=> start!268944 (and (inv!43666 totalInput!758) e!1755664)))

(declare-fun condSetEmpty!23347 () Bool)

(declare-fun z!3684 () (InoxSet Context!4678))

(assert (=> start!268944 (= condSetEmpty!23347 (= z!3684 ((as const (Array Context!4678 Bool)) false)))))

(declare-fun setRes!23347 () Bool)

(assert (=> start!268944 setRes!23347))

(assert (=> start!268944 true))

(declare-fun e!1755652 () Bool)

(assert (=> start!268944 e!1755652))

(assert (=> start!268944 e!1755670))

(declare-datatypes ((tuple3!4966 0))(
  ( (tuple3!4967 (_1!19165 Regex!8121) (_2!19165 Context!4678) (_3!2953 C!16400)) )
))
(declare-datatypes ((tuple2!32424 0))(
  ( (tuple2!32425 (_1!19166 tuple3!4966) (_2!19166 (InoxSet Context!4678))) )
))
(declare-datatypes ((List!32250 0))(
  ( (Nil!32150) (Cons!32150 (h!37570 tuple2!32424) (t!228390 List!32250)) )
))
(declare-datatypes ((array!13693 0))(
  ( (array!13694 (arr!6104 (Array (_ BitVec 32) List!32250)) (size!24953 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7698 0))(
  ( (LongMapFixedSize!7699 (defaultEntry!4234 Int) (mask!9646 (_ BitVec 32)) (extraKeys!4098 (_ BitVec 32)) (zeroValue!4108 List!32250) (minValue!4108 List!32250) (_size!7741 (_ BitVec 32)) (_keys!4149 array!13691) (_values!4130 array!13693) (_vacant!3910 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15205 0))(
  ( (Cell!15206 (v!33759 LongMapFixedSize!7698)) )
))
(declare-datatypes ((MutLongMap!3849 0))(
  ( (LongMap!3849 (underlying!7901 Cell!15205)) (MutLongMapExt!3848 (__x!21197 Int)) )
))
(declare-datatypes ((Cell!15207 0))(
  ( (Cell!15208 (v!33760 MutLongMap!3849)) )
))
(declare-datatypes ((Hashable!3765 0))(
  ( (HashableExt!3764 (__x!21198 Int)) )
))
(declare-datatypes ((MutableMap!3755 0))(
  ( (MutableMapExt!3754 (__x!21199 Int)) (HashMap!3755 (underlying!7902 Cell!15207) (hashF!5797 Hashable!3765) (_size!7742 (_ BitVec 32)) (defaultValue!3926 Int)) )
))
(declare-datatypes ((CacheDown!2582 0))(
  ( (CacheDown!2583 (cache!3898 MutableMap!3755)) )
))
(declare-fun cacheDown!1009 () CacheDown!2582)

(declare-fun e!1755653 () Bool)

(declare-fun inv!43667 (CacheDown!2582) Bool)

(assert (=> start!268944 (and (inv!43667 cacheDown!1009) e!1755653)))

(declare-fun inv!43668 (CacheUp!2458) Bool)

(assert (=> start!268944 (and (inv!43668 cacheUp!890) e!1755671)))

(declare-fun e!1755668 () Bool)

(declare-fun tp!881404 () Bool)

(declare-fun tp!881391 () Bool)

(declare-fun e!1755667 () Bool)

(declare-fun array_inv!4369 (array!13693) Bool)

(assert (=> b!2783087 (= e!1755668 (and tp!881403 tp!881404 tp!881391 (array_inv!4367 (_keys!4149 (v!33759 (underlying!7901 (v!33760 (underlying!7902 (cache!3898 cacheDown!1009))))))) (array_inv!4369 (_values!4130 (v!33759 (underlying!7901 (v!33760 (underlying!7902 (cache!3898 cacheDown!1009))))))) e!1755667))))

(declare-fun mapIsEmpty!17561 () Bool)

(declare-fun mapRes!17561 () Bool)

(assert (=> mapIsEmpty!17561 mapRes!17561))

(declare-fun b!2783088 () Bool)

(declare-fun e!1755665 () Bool)

(assert (=> b!2783088 (= e!1755653 e!1755665)))

(declare-fun b!2783089 () Bool)

(declare-fun res!1161736 () Bool)

(assert (=> b!2783089 (=> (not res!1161736) (not e!1755658))))

(declare-fun valid!3011 (CacheUp!2458) Bool)

(assert (=> b!2783089 (= res!1161736 (valid!3011 cacheUp!890))))

(declare-fun b!2783090 () Bool)

(declare-fun tp!881393 () Bool)

(assert (=> b!2783090 (= e!1755652 (and tp_is_empty!14055 tp!881393))))

(declare-fun e!1755650 () Bool)

(assert (=> b!2783091 (= e!1755665 (and e!1755650 tp!881390))))

(declare-fun b!2783092 () Bool)

(declare-fun tp!881405 () Bool)

(declare-fun mapRes!17562 () Bool)

(assert (=> b!2783092 (= e!1755662 (and tp!881405 mapRes!17562))))

(declare-fun condMapEmpty!17561 () Bool)

(declare-fun mapDefault!17562 () List!32248)

(assert (=> b!2783092 (= condMapEmpty!17561 (= (arr!6102 (_values!4129 (v!33757 (underlying!7899 (v!33758 (underlying!7900 (cache!3897 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32248)) mapDefault!17562)))))

(declare-fun b!2783093 () Bool)

(declare-fun e!1755651 () Bool)

(declare-fun e!1755672 () Bool)

(declare-fun lt!994060 () MutLongMap!3848)

(get-info :version)

(assert (=> b!2783093 (= e!1755651 (and e!1755672 ((_ is LongMap!3848) lt!994060)))))

(assert (=> b!2783093 (= lt!994060 (v!33758 (underlying!7900 (cache!3897 cacheUp!890))))))

(declare-fun b!2783094 () Bool)

(declare-fun e!1755656 () Bool)

(assert (=> b!2783094 (= e!1755656 e!1755666)))

(declare-fun b!2783095 () Bool)

(declare-fun e!1755657 () Bool)

(assert (=> b!2783095 (= e!1755657 true)))

(declare-fun lt!994054 () Int)

(declare-fun size!24954 (List!32249) Int)

(assert (=> b!2783095 (= lt!994054 (size!24954 lt!994061))))

(declare-fun isPrefix!2570 (List!32249 List!32249) Bool)

(assert (=> b!2783095 (isPrefix!2570 lt!994061 lt!994061)))

(declare-datatypes ((Unit!46410 0))(
  ( (Unit!46411) )
))
(declare-fun lt!994059 () Unit!46410)

(declare-fun lemmaIsPrefixRefl!1686 (List!32249 List!32249) Unit!46410)

(assert (=> b!2783095 (= lt!994059 (lemmaIsPrefixRefl!1686 lt!994061 lt!994061))))

(declare-fun b!2783096 () Bool)

(declare-fun res!1161737 () Bool)

(assert (=> b!2783096 (=> (not res!1161737) (not e!1755658))))

(declare-fun valid!3012 (CacheDown!2582) Bool)

(assert (=> b!2783096 (= res!1161737 (valid!3012 cacheDown!1009))))

(declare-fun setIsEmpty!23347 () Bool)

(assert (=> setIsEmpty!23347 setRes!23347))

(declare-fun mapIsEmpty!17562 () Bool)

(assert (=> mapIsEmpty!17562 mapRes!17562))

(declare-fun b!2783097 () Bool)

(declare-fun e!1755659 () Bool)

(declare-fun lt!994056 () MutLongMap!3849)

(assert (=> b!2783097 (= e!1755650 (and e!1755659 ((_ is LongMap!3849) lt!994056)))))

(assert (=> b!2783097 (= lt!994056 (v!33760 (underlying!7902 (cache!3898 cacheDown!1009))))))

(declare-fun setNonEmpty!23347 () Bool)

(declare-fun setElem!23347 () Context!4678)

(declare-fun e!1755663 () Bool)

(declare-fun tp!881387 () Bool)

(declare-fun inv!43669 (Context!4678) Bool)

(assert (=> setNonEmpty!23347 (= setRes!23347 (and tp!881387 (inv!43669 setElem!23347) e!1755663))))

(declare-fun setRest!23347 () (InoxSet Context!4678))

(assert (=> setNonEmpty!23347 (= z!3684 ((_ map or) (store ((as const (Array Context!4678 Bool)) false) setElem!23347 true) setRest!23347))))

(declare-fun b!2783098 () Bool)

(assert (=> b!2783098 (= e!1755672 e!1755656)))

(declare-fun b!2783099 () Bool)

(declare-fun tp!881400 () Bool)

(assert (=> b!2783099 (= e!1755667 (and tp!881400 mapRes!17561))))

(declare-fun condMapEmpty!17562 () Bool)

(declare-fun mapDefault!17561 () List!32250)

(assert (=> b!2783099 (= condMapEmpty!17562 (= (arr!6104 (_values!4130 (v!33759 (underlying!7901 (v!33760 (underlying!7902 (cache!3898 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32250)) mapDefault!17561)))))

(declare-fun b!2783100 () Bool)

(declare-fun tp!881394 () Bool)

(assert (=> b!2783100 (= e!1755663 tp!881394)))

(declare-fun mapNonEmpty!17561 () Bool)

(declare-fun tp!881401 () Bool)

(declare-fun tp!881398 () Bool)

(assert (=> mapNonEmpty!17561 (= mapRes!17561 (and tp!881401 tp!881398))))

(declare-fun mapValue!17562 () List!32250)

(declare-fun mapRest!17562 () (Array (_ BitVec 32) List!32250))

(declare-fun mapKey!17562 () (_ BitVec 32))

(assert (=> mapNonEmpty!17561 (= (arr!6104 (_values!4130 (v!33759 (underlying!7901 (v!33760 (underlying!7902 (cache!3898 cacheDown!1009))))))) (store mapRest!17562 mapKey!17562 mapValue!17562))))

(declare-fun b!2783101 () Bool)

(declare-fun res!1161734 () Bool)

(assert (=> b!2783101 (=> res!1161734 e!1755657)))

(declare-fun testedPSize!143 () Int)

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2783101 (= res!1161734 (not (= testedPSize!143 totalInputSize!205)))))

(declare-fun b!2783102 () Bool)

(declare-fun e!1755655 () Bool)

(assert (=> b!2783102 (= e!1755659 e!1755655)))

(assert (=> b!2783103 (= e!1755660 (and e!1755651 tp!881389))))

(declare-fun b!2783104 () Bool)

(declare-fun e!1755661 () Bool)

(assert (=> b!2783104 (= e!1755661 e!1755657)))

(declare-fun res!1161730 () Bool)

(assert (=> b!2783104 (=> res!1161730 e!1755657)))

(declare-fun lostCauseZipper!449 ((InoxSet Context!4678)) Bool)

(assert (=> b!2783104 (= res!1161730 (lostCauseZipper!449 z!3684))))

(declare-fun lt!994057 () List!32249)

(assert (=> b!2783104 (and (= testedSuffix!143 lt!994057) (= lt!994057 testedSuffix!143))))

(declare-fun lt!994053 () Unit!46410)

(declare-fun lemmaSamePrefixThenSameSuffix!1150 (List!32249 List!32249 List!32249 List!32249 List!32249) Unit!46410)

(assert (=> b!2783104 (= lt!994053 (lemmaSamePrefixThenSameSuffix!1150 testedP!183 testedSuffix!143 testedP!183 lt!994057 lt!994061))))

(declare-fun getSuffix!1249 (List!32249 List!32249) List!32249)

(assert (=> b!2783104 (= lt!994057 (getSuffix!1249 lt!994061 testedP!183))))

(declare-fun b!2783105 () Bool)

(assert (=> b!2783105 (= e!1755658 (not e!1755661))))

(declare-fun res!1161733 () Bool)

(assert (=> b!2783105 (=> res!1161733 e!1755661)))

(assert (=> b!2783105 (= res!1161733 (not (isPrefix!2570 testedP!183 lt!994061)))))

(assert (=> b!2783105 (isPrefix!2570 testedP!183 lt!994058)))

(declare-fun lt!994055 () Unit!46410)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1680 (List!32249 List!32249) Unit!46410)

(assert (=> b!2783105 (= lt!994055 (lemmaConcatTwoListThenFirstIsPrefix!1680 testedP!183 testedSuffix!143))))

(declare-fun b!2783106 () Bool)

(declare-fun tp!881399 () Bool)

(declare-fun inv!43670 (Conc!9997) Bool)

(assert (=> b!2783106 (= e!1755664 (and (inv!43670 (c!452284 totalInput!758)) tp!881399))))

(declare-fun b!2783107 () Bool)

(assert (=> b!2783107 (= e!1755655 e!1755668)))

(declare-fun mapNonEmpty!17562 () Bool)

(declare-fun tp!881395 () Bool)

(declare-fun tp!881396 () Bool)

(assert (=> mapNonEmpty!17562 (= mapRes!17562 (and tp!881395 tp!881396))))

(declare-fun mapKey!17561 () (_ BitVec 32))

(declare-fun mapRest!17561 () (Array (_ BitVec 32) List!32248))

(declare-fun mapValue!17561 () List!32248)

(assert (=> mapNonEmpty!17562 (= (arr!6102 (_values!4129 (v!33757 (underlying!7899 (v!33758 (underlying!7900 (cache!3897 cacheUp!890))))))) (store mapRest!17561 mapKey!17561 mapValue!17561))))

(declare-fun b!2783108 () Bool)

(declare-fun res!1161732 () Bool)

(assert (=> b!2783108 (=> (not res!1161732) (not e!1755658))))

(assert (=> b!2783108 (= res!1161732 (= testedPSize!143 (size!24954 testedP!183)))))

(declare-fun b!2783109 () Bool)

(declare-fun res!1161731 () Bool)

(assert (=> b!2783109 (=> (not res!1161731) (not e!1755658))))

(declare-fun size!24955 (BalanceConc!19608) Int)

(assert (=> b!2783109 (= res!1161731 (= totalInputSize!205 (size!24955 totalInput!758)))))

(assert (= (and start!268944 res!1161735) b!2783108))

(assert (= (and b!2783108 res!1161732) b!2783109))

(assert (= (and b!2783109 res!1161731) b!2783089))

(assert (= (and b!2783089 res!1161736) b!2783096))

(assert (= (and b!2783096 res!1161737) b!2783105))

(assert (= (and b!2783105 (not res!1161733)) b!2783104))

(assert (= (and b!2783104 (not res!1161730)) b!2783101))

(assert (= (and b!2783101 (not res!1161734)) b!2783095))

(assert (= start!268944 b!2783106))

(assert (= (and start!268944 condSetEmpty!23347) setIsEmpty!23347))

(assert (= (and start!268944 (not condSetEmpty!23347)) setNonEmpty!23347))

(assert (= setNonEmpty!23347 b!2783100))

(assert (= (and start!268944 ((_ is Cons!32149) testedP!183)) b!2783090))

(assert (= (and start!268944 ((_ is Cons!32149) testedSuffix!143)) b!2783085))

(assert (= (and b!2783099 condMapEmpty!17562) mapIsEmpty!17561))

(assert (= (and b!2783099 (not condMapEmpty!17562)) mapNonEmpty!17561))

(assert (= b!2783087 b!2783099))

(assert (= b!2783107 b!2783087))

(assert (= b!2783102 b!2783107))

(assert (= (and b!2783097 ((_ is LongMap!3849) (v!33760 (underlying!7902 (cache!3898 cacheDown!1009))))) b!2783102))

(assert (= b!2783091 b!2783097))

(assert (= (and b!2783088 ((_ is HashMap!3755) (cache!3898 cacheDown!1009))) b!2783091))

(assert (= start!268944 b!2783088))

(assert (= (and b!2783092 condMapEmpty!17561) mapIsEmpty!17562))

(assert (= (and b!2783092 (not condMapEmpty!17561)) mapNonEmpty!17562))

(assert (= b!2783084 b!2783092))

(assert (= b!2783094 b!2783084))

(assert (= b!2783098 b!2783094))

(assert (= (and b!2783093 ((_ is LongMap!3848) (v!33758 (underlying!7900 (cache!3897 cacheUp!890))))) b!2783098))

(assert (= b!2783103 b!2783093))

(assert (= (and b!2783086 ((_ is HashMap!3754) (cache!3897 cacheUp!890))) b!2783103))

(assert (= start!268944 b!2783086))

(declare-fun m!3214067 () Bool)

(assert (=> b!2783106 m!3214067))

(declare-fun m!3214069 () Bool)

(assert (=> setNonEmpty!23347 m!3214069))

(declare-fun m!3214071 () Bool)

(assert (=> b!2783089 m!3214071))

(declare-fun m!3214073 () Bool)

(assert (=> b!2783096 m!3214073))

(declare-fun m!3214075 () Bool)

(assert (=> b!2783105 m!3214075))

(declare-fun m!3214077 () Bool)

(assert (=> b!2783105 m!3214077))

(declare-fun m!3214079 () Bool)

(assert (=> b!2783105 m!3214079))

(declare-fun m!3214081 () Bool)

(assert (=> b!2783108 m!3214081))

(declare-fun m!3214083 () Bool)

(assert (=> b!2783084 m!3214083))

(declare-fun m!3214085 () Bool)

(assert (=> b!2783084 m!3214085))

(declare-fun m!3214087 () Bool)

(assert (=> start!268944 m!3214087))

(declare-fun m!3214089 () Bool)

(assert (=> start!268944 m!3214089))

(declare-fun m!3214091 () Bool)

(assert (=> start!268944 m!3214091))

(declare-fun m!3214093 () Bool)

(assert (=> start!268944 m!3214093))

(declare-fun m!3214095 () Bool)

(assert (=> start!268944 m!3214095))

(declare-fun m!3214097 () Bool)

(assert (=> b!2783095 m!3214097))

(declare-fun m!3214099 () Bool)

(assert (=> b!2783095 m!3214099))

(declare-fun m!3214101 () Bool)

(assert (=> b!2783095 m!3214101))

(declare-fun m!3214103 () Bool)

(assert (=> b!2783104 m!3214103))

(declare-fun m!3214105 () Bool)

(assert (=> b!2783104 m!3214105))

(declare-fun m!3214107 () Bool)

(assert (=> b!2783104 m!3214107))

(declare-fun m!3214109 () Bool)

(assert (=> b!2783087 m!3214109))

(declare-fun m!3214111 () Bool)

(assert (=> b!2783087 m!3214111))

(declare-fun m!3214113 () Bool)

(assert (=> mapNonEmpty!17561 m!3214113))

(declare-fun m!3214115 () Bool)

(assert (=> mapNonEmpty!17562 m!3214115))

(declare-fun m!3214117 () Bool)

(assert (=> b!2783109 m!3214117))

(check-sat (not b!2783084) (not setNonEmpty!23347) (not b_next!79303) (not b!2783095) (not b_next!79301) b_and!203337 (not mapNonEmpty!17562) b_and!203339 (not b_next!79305) b_and!203335 (not b!2783105) (not b!2783089) b_and!203341 (not start!268944) (not b!2783099) (not b!2783106) (not b!2783109) tp_is_empty!14055 (not mapNonEmpty!17561) (not b!2783087) (not b!2783085) (not b_next!79307) (not b!2783096) (not b!2783100) (not b!2783104) (not b!2783092) (not b!2783090) (not b!2783108))
(check-sat (not b_next!79307) (not b_next!79303) (not b_next!79301) b_and!203337 b_and!203339 (not b_next!79305) b_and!203335 b_and!203341)
