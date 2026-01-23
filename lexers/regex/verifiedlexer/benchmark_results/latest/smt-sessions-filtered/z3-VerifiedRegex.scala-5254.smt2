; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269838 () Bool)

(assert start!269838)

(declare-fun b!2791145 () Bool)

(declare-fun b_free!79013 () Bool)

(declare-fun b_next!79717 () Bool)

(assert (=> b!2791145 (= b_free!79013 (not b_next!79717))))

(declare-fun tp!886361 () Bool)

(declare-fun b_and!203751 () Bool)

(assert (=> b!2791145 (= tp!886361 b_and!203751)))

(declare-fun b!2791137 () Bool)

(declare-fun b_free!79015 () Bool)

(declare-fun b_next!79719 () Bool)

(assert (=> b!2791137 (= b_free!79015 (not b_next!79719))))

(declare-fun tp!886358 () Bool)

(declare-fun b_and!203753 () Bool)

(assert (=> b!2791137 (= tp!886358 b_and!203753)))

(declare-fun b!2791136 () Bool)

(declare-fun b_free!79017 () Bool)

(declare-fun b_next!79721 () Bool)

(assert (=> b!2791136 (= b_free!79017 (not b_next!79721))))

(declare-fun tp!886362 () Bool)

(declare-fun b_and!203755 () Bool)

(assert (=> b!2791136 (= tp!886362 b_and!203755)))

(declare-fun b!2791147 () Bool)

(declare-fun b_free!79019 () Bool)

(declare-fun b_next!79723 () Bool)

(assert (=> b!2791147 (= b_free!79019 (not b_next!79723))))

(declare-fun tp!886364 () Bool)

(declare-fun b_and!203757 () Bool)

(assert (=> b!2791147 (= tp!886364 b_and!203757)))

(declare-fun b!2791126 () Bool)

(declare-fun e!1762255 () Bool)

(declare-fun e!1762250 () Bool)

(assert (=> b!2791126 (= e!1762255 e!1762250)))

(declare-fun b!2791127 () Bool)

(declare-fun e!1762248 () Bool)

(declare-fun tp_is_empty!14159 () Bool)

(declare-fun tp!886355 () Bool)

(assert (=> b!2791127 (= e!1762248 (and tp_is_empty!14159 tp!886355))))

(declare-fun b!2791128 () Bool)

(declare-fun e!1762242 () Bool)

(declare-fun e!1762239 () Bool)

(assert (=> b!2791128 (= e!1762242 e!1762239)))

(declare-fun res!1164327 () Bool)

(assert (=> b!2791128 (=> res!1164327 e!1762239)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!16504 0))(
  ( (C!16505 (val!10186 Int)) )
))
(declare-datatypes ((Regex!8173 0))(
  ( (ElementMatch!8173 (c!453059 C!16504)) (Concat!13261 (regOne!16858 Regex!8173) (regTwo!16858 Regex!8173)) (EmptyExpr!8173) (Star!8173 (reg!8502 Regex!8173)) (EmptyLang!8173) (Union!8173 (regOne!16859 Regex!8173) (regTwo!16859 Regex!8173)) )
))
(declare-datatypes ((List!32452 0))(
  ( (Nil!32352) (Cons!32352 (h!37772 Regex!8173) (t!228598 List!32452)) )
))
(declare-datatypes ((Context!4782 0))(
  ( (Context!4783 (exprs!2891 List!32452)) )
))
(declare-fun z!3684 () (InoxSet Context!4782))

(declare-fun lostCauseZipper!479 ((InoxSet Context!4782)) Bool)

(assert (=> b!2791128 (= res!1164327 (lostCauseZipper!479 z!3684))))

(declare-datatypes ((List!32453 0))(
  ( (Nil!32353) (Cons!32353 (h!37773 C!16504) (t!228599 List!32453)) )
))
(declare-fun testedSuffix!143 () List!32453)

(declare-fun lt!997720 () List!32453)

(assert (=> b!2791128 (and (= testedSuffix!143 lt!997720) (= lt!997720 testedSuffix!143))))

(declare-datatypes ((Unit!46548 0))(
  ( (Unit!46549) )
))
(declare-fun lt!997719 () Unit!46548)

(declare-fun lt!997725 () List!32453)

(declare-fun testedP!183 () List!32453)

(declare-fun lemmaSamePrefixThenSameSuffix!1180 (List!32453 List!32453 List!32453 List!32453 List!32453) Unit!46548)

(assert (=> b!2791128 (= lt!997719 (lemmaSamePrefixThenSameSuffix!1180 testedP!183 testedSuffix!143 testedP!183 lt!997720 lt!997725))))

(declare-fun getSuffix!1279 (List!32453 List!32453) List!32453)

(assert (=> b!2791128 (= lt!997720 (getSuffix!1279 lt!997725 testedP!183))))

(declare-fun b!2791129 () Bool)

(declare-fun e!1762252 () Bool)

(declare-fun tp!886365 () Bool)

(assert (=> b!2791129 (= e!1762252 tp!886365)))

(declare-fun b!2791130 () Bool)

(assert (=> b!2791130 (= e!1762239 true)))

(declare-fun lt!997723 () List!32453)

(declare-datatypes ((IArray!20081 0))(
  ( (IArray!20082 (innerList!10098 List!32453)) )
))
(declare-datatypes ((Conc!10038 0))(
  ( (Node!10038 (left!24518 Conc!10038) (right!24848 Conc!10038) (csize!20306 Int) (cheight!10249 Int)) (Leaf!15293 (xs!13149 IArray!20081) (csize!20307 Int)) (Empty!10038) )
))
(declare-datatypes ((BalanceConc!19690 0))(
  ( (BalanceConc!19691 (c!453060 Conc!10038)) )
))
(declare-datatypes ((tuple2!32804 0))(
  ( (tuple2!32805 (_1!19413 BalanceConc!19690) (_2!19413 BalanceConc!19690)) )
))
(declare-fun lt!997718 () tuple2!32804)

(declare-fun ++!7986 (List!32453 List!32453) List!32453)

(declare-fun list!12167 (BalanceConc!19690) List!32453)

(assert (=> b!2791130 (= lt!997723 (++!7986 (list!12167 (_1!19413 lt!997718)) (list!12167 (_2!19413 lt!997718))))))

(declare-fun totalInput!758 () BalanceConc!19690)

(declare-fun testedPSize!143 () Int)

(declare-fun splitAt!163 (BalanceConc!19690 Int) tuple2!32804)

(assert (=> b!2791130 (= lt!997718 (splitAt!163 totalInput!758 testedPSize!143))))

(declare-fun b!2791131 () Bool)

(declare-fun res!1164326 () Bool)

(declare-fun e!1762254 () Bool)

(assert (=> b!2791131 (=> (not res!1164326) (not e!1762254))))

(declare-fun size!25185 (List!32453) Int)

(assert (=> b!2791131 (= res!1164326 (= testedPSize!143 (size!25185 testedP!183)))))

(declare-fun b!2791132 () Bool)

(declare-fun e!1762233 () Bool)

(declare-fun tp!886356 () Bool)

(declare-fun mapRes!17953 () Bool)

(assert (=> b!2791132 (= e!1762233 (and tp!886356 mapRes!17953))))

(declare-fun condMapEmpty!17953 () Bool)

(declare-datatypes ((Hashable!3858 0))(
  ( (HashableExt!3857 (__x!21476 Int)) )
))
(declare-datatypes ((tuple2!32806 0))(
  ( (tuple2!32807 (_1!19414 Context!4782) (_2!19414 C!16504)) )
))
(declare-datatypes ((tuple2!32808 0))(
  ( (tuple2!32809 (_1!19415 tuple2!32806) (_2!19415 (InoxSet Context!4782))) )
))
(declare-datatypes ((List!32454 0))(
  ( (Nil!32354) (Cons!32354 (h!37774 tuple2!32808) (t!228600 List!32454)) )
))
(declare-datatypes ((array!14020 0))(
  ( (array!14021 (arr!6248 (Array (_ BitVec 32) List!32454)) (size!25186 (_ BitVec 32))) )
))
(declare-datatypes ((array!14022 0))(
  ( (array!14023 (arr!6249 (Array (_ BitVec 32) (_ BitVec 64))) (size!25187 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7884 0))(
  ( (LongMapFixedSize!7885 (defaultEntry!4327 Int) (mask!9765 (_ BitVec 32)) (extraKeys!4191 (_ BitVec 32)) (zeroValue!4201 List!32454) (minValue!4201 List!32454) (_size!7927 (_ BitVec 32)) (_keys!4242 array!14022) (_values!4223 array!14020) (_vacant!4003 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15577 0))(
  ( (Cell!15578 (v!33958 LongMapFixedSize!7884)) )
))
(declare-datatypes ((MutLongMap!3942 0))(
  ( (LongMap!3942 (underlying!8087 Cell!15577)) (MutLongMapExt!3941 (__x!21477 Int)) )
))
(declare-datatypes ((Cell!15579 0))(
  ( (Cell!15580 (v!33959 MutLongMap!3942)) )
))
(declare-datatypes ((MutableMap!3848 0))(
  ( (MutableMapExt!3847 (__x!21478 Int)) (HashMap!3848 (underlying!8088 Cell!15579) (hashF!5890 Hashable!3858) (_size!7928 (_ BitVec 32)) (defaultValue!4019 Int)) )
))
(declare-datatypes ((CacheUp!2554 0))(
  ( (CacheUp!2555 (cache!3991 MutableMap!3848)) )
))
(declare-fun cacheUp!890 () CacheUp!2554)

(declare-fun mapDefault!17953 () List!32454)

(assert (=> b!2791132 (= condMapEmpty!17953 (= (arr!6248 (_values!4223 (v!33958 (underlying!8087 (v!33959 (underlying!8088 (cache!3991 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32454)) mapDefault!17953)))))

(declare-fun b!2791133 () Bool)

(declare-fun res!1164322 () Bool)

(assert (=> b!2791133 (=> (not res!1164322) (not e!1762254))))

(declare-fun valid!3081 (CacheUp!2554) Bool)

(assert (=> b!2791133 (= res!1164322 (valid!3081 cacheUp!890))))

(declare-fun mapIsEmpty!17953 () Bool)

(declare-fun mapRes!17954 () Bool)

(assert (=> mapIsEmpty!17953 mapRes!17954))

(declare-fun b!2791134 () Bool)

(declare-fun e!1762247 () Bool)

(declare-fun e!1762241 () Bool)

(assert (=> b!2791134 (= e!1762247 e!1762241)))

(declare-fun b!2791135 () Bool)

(declare-fun e!1762253 () Bool)

(declare-fun e!1762243 () Bool)

(assert (=> b!2791135 (= e!1762253 e!1762243)))

(declare-fun e!1762245 () Bool)

(declare-fun tp!886357 () Bool)

(declare-fun tp!886366 () Bool)

(declare-fun array_inv!4471 (array!14022) Bool)

(declare-fun array_inv!4472 (array!14020) Bool)

(assert (=> b!2791136 (= e!1762245 (and tp!886362 tp!886366 tp!886357 (array_inv!4471 (_keys!4242 (v!33958 (underlying!8087 (v!33959 (underlying!8088 (cache!3991 cacheUp!890))))))) (array_inv!4472 (_values!4223 (v!33958 (underlying!8087 (v!33959 (underlying!8088 (cache!3991 cacheUp!890))))))) e!1762233))))

(declare-fun e!1762244 () Bool)

(assert (=> b!2791137 (= e!1762241 (and e!1762244 tp!886358))))

(declare-fun setIsEmpty!23877 () Bool)

(declare-fun setRes!23877 () Bool)

(assert (=> setIsEmpty!23877 setRes!23877))

(declare-fun mapNonEmpty!17953 () Bool)

(declare-fun tp!886370 () Bool)

(declare-fun tp!886352 () Bool)

(assert (=> mapNonEmpty!17953 (= mapRes!17953 (and tp!886370 tp!886352))))

(declare-fun mapRest!17954 () (Array (_ BitVec 32) List!32454))

(declare-fun mapKey!17953 () (_ BitVec 32))

(declare-fun mapValue!17953 () List!32454)

(assert (=> mapNonEmpty!17953 (= (arr!6248 (_values!4223 (v!33958 (underlying!8087 (v!33959 (underlying!8088 (cache!3991 cacheUp!890))))))) (store mapRest!17954 mapKey!17953 mapValue!17953))))

(declare-fun b!2791138 () Bool)

(declare-fun e!1762246 () Bool)

(declare-fun tp!886360 () Bool)

(assert (=> b!2791138 (= e!1762246 (and tp_is_empty!14159 tp!886360))))

(declare-fun b!2791139 () Bool)

(declare-fun res!1164324 () Bool)

(assert (=> b!2791139 (=> (not res!1164324) (not e!1762254))))

(declare-datatypes ((tuple3!5082 0))(
  ( (tuple3!5083 (_1!19416 Regex!8173) (_2!19416 Context!4782) (_3!3011 C!16504)) )
))
(declare-datatypes ((tuple2!32810 0))(
  ( (tuple2!32811 (_1!19417 tuple3!5082) (_2!19417 (InoxSet Context!4782))) )
))
(declare-datatypes ((List!32455 0))(
  ( (Nil!32355) (Cons!32355 (h!37775 tuple2!32810) (t!228601 List!32455)) )
))
(declare-datatypes ((array!14024 0))(
  ( (array!14025 (arr!6250 (Array (_ BitVec 32) List!32455)) (size!25188 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7886 0))(
  ( (LongMapFixedSize!7887 (defaultEntry!4328 Int) (mask!9766 (_ BitVec 32)) (extraKeys!4192 (_ BitVec 32)) (zeroValue!4202 List!32455) (minValue!4202 List!32455) (_size!7929 (_ BitVec 32)) (_keys!4243 array!14022) (_values!4224 array!14024) (_vacant!4004 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15581 0))(
  ( (Cell!15582 (v!33960 LongMapFixedSize!7886)) )
))
(declare-datatypes ((MutLongMap!3943 0))(
  ( (LongMap!3943 (underlying!8089 Cell!15581)) (MutLongMapExt!3942 (__x!21479 Int)) )
))
(declare-datatypes ((Cell!15583 0))(
  ( (Cell!15584 (v!33961 MutLongMap!3943)) )
))
(declare-datatypes ((Hashable!3859 0))(
  ( (HashableExt!3858 (__x!21480 Int)) )
))
(declare-datatypes ((MutableMap!3849 0))(
  ( (MutableMapExt!3848 (__x!21481 Int)) (HashMap!3849 (underlying!8090 Cell!15583) (hashF!5891 Hashable!3859) (_size!7930 (_ BitVec 32)) (defaultValue!4020 Int)) )
))
(declare-datatypes ((CacheDown!2674 0))(
  ( (CacheDown!2675 (cache!3992 MutableMap!3849)) )
))
(declare-fun cacheDown!1009 () CacheDown!2674)

(declare-fun valid!3082 (CacheDown!2674) Bool)

(assert (=> b!2791139 (= res!1164324 (valid!3082 cacheDown!1009))))

(declare-fun b!2791140 () Bool)

(declare-fun e!1762237 () Bool)

(declare-fun e!1762251 () Bool)

(declare-fun lt!997722 () MutLongMap!3943)

(get-info :version)

(assert (=> b!2791140 (= e!1762237 (and e!1762251 ((_ is LongMap!3943) lt!997722)))))

(assert (=> b!2791140 (= lt!997722 (v!33961 (underlying!8090 (cache!3992 cacheDown!1009))))))

(declare-fun setNonEmpty!23877 () Bool)

(declare-fun setElem!23877 () Context!4782)

(declare-fun tp!886368 () Bool)

(declare-fun inv!43951 (Context!4782) Bool)

(assert (=> setNonEmpty!23877 (= setRes!23877 (and tp!886368 (inv!43951 setElem!23877) e!1762252))))

(declare-fun setRest!23877 () (InoxSet Context!4782))

(assert (=> setNonEmpty!23877 (= z!3684 ((_ map or) (store ((as const (Array Context!4782 Bool)) false) setElem!23877 true) setRest!23877))))

(declare-fun b!2791141 () Bool)

(declare-fun res!1164328 () Bool)

(assert (=> b!2791141 (=> (not res!1164328) (not e!1762254))))

(declare-fun totalInputSize!205 () Int)

(declare-fun size!25189 (BalanceConc!19690) Int)

(assert (=> b!2791141 (= res!1164328 (= totalInputSize!205 (size!25189 totalInput!758)))))

(declare-fun b!2791142 () Bool)

(declare-fun e!1762234 () Bool)

(declare-fun tp!886354 () Bool)

(declare-fun inv!43952 (Conc!10038) Bool)

(assert (=> b!2791142 (= e!1762234 (and (inv!43952 (c!453060 totalInput!758)) tp!886354))))

(declare-fun b!2791143 () Bool)

(declare-fun e!1762238 () Bool)

(declare-fun e!1762235 () Bool)

(assert (=> b!2791143 (= e!1762238 e!1762235)))

(declare-fun b!2791144 () Bool)

(assert (=> b!2791144 (= e!1762254 (not e!1762242))))

(declare-fun res!1164325 () Bool)

(assert (=> b!2791144 (=> res!1164325 e!1762242)))

(declare-fun isPrefix!2603 (List!32453 List!32453) Bool)

(assert (=> b!2791144 (= res!1164325 (not (isPrefix!2603 testedP!183 lt!997725)))))

(declare-fun lt!997717 () List!32453)

(assert (=> b!2791144 (isPrefix!2603 testedP!183 lt!997717)))

(declare-fun lt!997724 () Unit!46548)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1712 (List!32453 List!32453) Unit!46548)

(assert (=> b!2791144 (= lt!997724 (lemmaConcatTwoListThenFirstIsPrefix!1712 testedP!183 testedSuffix!143))))

(declare-fun tp!886353 () Bool)

(declare-fun tp!886369 () Bool)

(declare-fun e!1762236 () Bool)

(declare-fun array_inv!4473 (array!14024) Bool)

(assert (=> b!2791145 (= e!1762243 (and tp!886361 tp!886369 tp!886353 (array_inv!4471 (_keys!4243 (v!33960 (underlying!8089 (v!33961 (underlying!8090 (cache!3992 cacheDown!1009))))))) (array_inv!4473 (_values!4224 (v!33960 (underlying!8089 (v!33961 (underlying!8090 (cache!3992 cacheDown!1009))))))) e!1762236))))

(declare-fun b!2791146 () Bool)

(declare-fun lt!997721 () MutLongMap!3942)

(assert (=> b!2791146 (= e!1762244 (and e!1762255 ((_ is LongMap!3942) lt!997721)))))

(assert (=> b!2791146 (= lt!997721 (v!33959 (underlying!8088 (cache!3991 cacheUp!890))))))

(assert (=> b!2791147 (= e!1762235 (and e!1762237 tp!886364))))

(declare-fun mapIsEmpty!17954 () Bool)

(assert (=> mapIsEmpty!17954 mapRes!17953))

(declare-fun b!2791148 () Bool)

(declare-fun tp!886367 () Bool)

(assert (=> b!2791148 (= e!1762236 (and tp!886367 mapRes!17954))))

(declare-fun condMapEmpty!17954 () Bool)

(declare-fun mapDefault!17954 () List!32455)

(assert (=> b!2791148 (= condMapEmpty!17954 (= (arr!6250 (_values!4224 (v!33960 (underlying!8089 (v!33961 (underlying!8090 (cache!3992 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32455)) mapDefault!17954)))))

(declare-fun b!2791149 () Bool)

(declare-fun res!1164323 () Bool)

(assert (=> b!2791149 (=> res!1164323 e!1762239)))

(assert (=> b!2791149 (= res!1164323 (= testedPSize!143 totalInputSize!205))))

(declare-fun mapNonEmpty!17954 () Bool)

(declare-fun tp!886359 () Bool)

(declare-fun tp!886363 () Bool)

(assert (=> mapNonEmpty!17954 (= mapRes!17954 (and tp!886359 tp!886363))))

(declare-fun mapValue!17954 () List!32455)

(declare-fun mapRest!17953 () (Array (_ BitVec 32) List!32455))

(declare-fun mapKey!17954 () (_ BitVec 32))

(assert (=> mapNonEmpty!17954 (= (arr!6250 (_values!4224 (v!33960 (underlying!8089 (v!33961 (underlying!8090 (cache!3992 cacheDown!1009))))))) (store mapRest!17953 mapKey!17954 mapValue!17954))))

(declare-fun res!1164321 () Bool)

(assert (=> start!269838 (=> (not res!1164321) (not e!1762254))))

(assert (=> start!269838 (= res!1164321 (= lt!997717 lt!997725))))

(assert (=> start!269838 (= lt!997725 (list!12167 totalInput!758))))

(assert (=> start!269838 (= lt!997717 (++!7986 testedP!183 testedSuffix!143))))

(assert (=> start!269838 e!1762254))

(declare-fun inv!43953 (BalanceConc!19690) Bool)

(assert (=> start!269838 (and (inv!43953 totalInput!758) e!1762234)))

(declare-fun condSetEmpty!23877 () Bool)

(assert (=> start!269838 (= condSetEmpty!23877 (= z!3684 ((as const (Array Context!4782 Bool)) false)))))

(assert (=> start!269838 setRes!23877))

(assert (=> start!269838 true))

(assert (=> start!269838 e!1762248))

(assert (=> start!269838 e!1762246))

(declare-fun inv!43954 (CacheDown!2674) Bool)

(assert (=> start!269838 (and (inv!43954 cacheDown!1009) e!1762238)))

(declare-fun inv!43955 (CacheUp!2554) Bool)

(assert (=> start!269838 (and (inv!43955 cacheUp!890) e!1762247)))

(declare-fun b!2791150 () Bool)

(assert (=> b!2791150 (= e!1762250 e!1762245)))

(declare-fun b!2791151 () Bool)

(assert (=> b!2791151 (= e!1762251 e!1762253)))

(assert (= (and start!269838 res!1164321) b!2791131))

(assert (= (and b!2791131 res!1164326) b!2791141))

(assert (= (and b!2791141 res!1164328) b!2791133))

(assert (= (and b!2791133 res!1164322) b!2791139))

(assert (= (and b!2791139 res!1164324) b!2791144))

(assert (= (and b!2791144 (not res!1164325)) b!2791128))

(assert (= (and b!2791128 (not res!1164327)) b!2791149))

(assert (= (and b!2791149 (not res!1164323)) b!2791130))

(assert (= start!269838 b!2791142))

(assert (= (and start!269838 condSetEmpty!23877) setIsEmpty!23877))

(assert (= (and start!269838 (not condSetEmpty!23877)) setNonEmpty!23877))

(assert (= setNonEmpty!23877 b!2791129))

(assert (= (and start!269838 ((_ is Cons!32353) testedP!183)) b!2791127))

(assert (= (and start!269838 ((_ is Cons!32353) testedSuffix!143)) b!2791138))

(assert (= (and b!2791148 condMapEmpty!17954) mapIsEmpty!17953))

(assert (= (and b!2791148 (not condMapEmpty!17954)) mapNonEmpty!17954))

(assert (= b!2791145 b!2791148))

(assert (= b!2791135 b!2791145))

(assert (= b!2791151 b!2791135))

(assert (= (and b!2791140 ((_ is LongMap!3943) (v!33961 (underlying!8090 (cache!3992 cacheDown!1009))))) b!2791151))

(assert (= b!2791147 b!2791140))

(assert (= (and b!2791143 ((_ is HashMap!3849) (cache!3992 cacheDown!1009))) b!2791147))

(assert (= start!269838 b!2791143))

(assert (= (and b!2791132 condMapEmpty!17953) mapIsEmpty!17954))

(assert (= (and b!2791132 (not condMapEmpty!17953)) mapNonEmpty!17953))

(assert (= b!2791136 b!2791132))

(assert (= b!2791150 b!2791136))

(assert (= b!2791126 b!2791150))

(assert (= (and b!2791146 ((_ is LongMap!3942) (v!33959 (underlying!8088 (cache!3991 cacheUp!890))))) b!2791126))

(assert (= b!2791137 b!2791146))

(assert (= (and b!2791134 ((_ is HashMap!3848) (cache!3991 cacheUp!890))) b!2791137))

(assert (= start!269838 b!2791134))

(declare-fun m!3221389 () Bool)

(assert (=> setNonEmpty!23877 m!3221389))

(declare-fun m!3221391 () Bool)

(assert (=> b!2791144 m!3221391))

(declare-fun m!3221393 () Bool)

(assert (=> b!2791144 m!3221393))

(declare-fun m!3221395 () Bool)

(assert (=> b!2791144 m!3221395))

(declare-fun m!3221397 () Bool)

(assert (=> b!2791145 m!3221397))

(declare-fun m!3221399 () Bool)

(assert (=> b!2791145 m!3221399))

(declare-fun m!3221401 () Bool)

(assert (=> b!2791139 m!3221401))

(declare-fun m!3221403 () Bool)

(assert (=> b!2791130 m!3221403))

(declare-fun m!3221405 () Bool)

(assert (=> b!2791130 m!3221405))

(assert (=> b!2791130 m!3221403))

(assert (=> b!2791130 m!3221405))

(declare-fun m!3221407 () Bool)

(assert (=> b!2791130 m!3221407))

(declare-fun m!3221409 () Bool)

(assert (=> b!2791130 m!3221409))

(declare-fun m!3221411 () Bool)

(assert (=> b!2791133 m!3221411))

(declare-fun m!3221413 () Bool)

(assert (=> b!2791141 m!3221413))

(declare-fun m!3221415 () Bool)

(assert (=> mapNonEmpty!17954 m!3221415))

(declare-fun m!3221417 () Bool)

(assert (=> b!2791131 m!3221417))

(declare-fun m!3221419 () Bool)

(assert (=> mapNonEmpty!17953 m!3221419))

(declare-fun m!3221421 () Bool)

(assert (=> b!2791142 m!3221421))

(declare-fun m!3221423 () Bool)

(assert (=> b!2791128 m!3221423))

(declare-fun m!3221425 () Bool)

(assert (=> b!2791128 m!3221425))

(declare-fun m!3221427 () Bool)

(assert (=> b!2791128 m!3221427))

(declare-fun m!3221429 () Bool)

(assert (=> start!269838 m!3221429))

(declare-fun m!3221431 () Bool)

(assert (=> start!269838 m!3221431))

(declare-fun m!3221433 () Bool)

(assert (=> start!269838 m!3221433))

(declare-fun m!3221435 () Bool)

(assert (=> start!269838 m!3221435))

(declare-fun m!3221437 () Bool)

(assert (=> start!269838 m!3221437))

(declare-fun m!3221439 () Bool)

(assert (=> b!2791136 m!3221439))

(declare-fun m!3221441 () Bool)

(assert (=> b!2791136 m!3221441))

(check-sat b_and!203751 tp_is_empty!14159 (not b!2791144) (not b!2791127) b_and!203757 (not b!2791136) (not mapNonEmpty!17954) (not b_next!79723) (not b!2791142) (not b!2791133) (not setNonEmpty!23877) (not b!2791131) (not b!2791138) (not start!269838) b_and!203753 (not b_next!79719) (not b!2791145) (not b!2791141) (not b!2791128) (not b_next!79721) (not mapNonEmpty!17953) (not b!2791148) b_and!203755 (not b!2791132) (not b!2791129) (not b_next!79717) (not b!2791139) (not b!2791130))
(check-sat b_and!203751 (not b_next!79721) b_and!203757 b_and!203755 (not b_next!79723) (not b_next!79717) b_and!203753 (not b_next!79719))
