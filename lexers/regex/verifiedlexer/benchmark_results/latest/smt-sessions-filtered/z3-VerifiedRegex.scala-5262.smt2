; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270226 () Bool)

(assert start!270226)

(declare-fun b!2795236 () Bool)

(declare-fun b_free!79141 () Bool)

(declare-fun b_next!79845 () Bool)

(assert (=> b!2795236 (= b_free!79141 (not b_next!79845))))

(declare-fun tp!889063 () Bool)

(declare-fun b_and!203879 () Bool)

(assert (=> b!2795236 (= tp!889063 b_and!203879)))

(declare-fun b!2795243 () Bool)

(declare-fun b_free!79143 () Bool)

(declare-fun b_next!79847 () Bool)

(assert (=> b!2795243 (= b_free!79143 (not b_next!79847))))

(declare-fun tp!889065 () Bool)

(declare-fun b_and!203881 () Bool)

(assert (=> b!2795243 (= tp!889065 b_and!203881)))

(declare-fun b!2795227 () Bool)

(declare-fun b_free!79145 () Bool)

(declare-fun b_next!79849 () Bool)

(assert (=> b!2795227 (= b_free!79145 (not b_next!79849))))

(declare-fun tp!889059 () Bool)

(declare-fun b_and!203883 () Bool)

(assert (=> b!2795227 (= tp!889059 b_and!203883)))

(declare-fun b!2795238 () Bool)

(declare-fun b_free!79147 () Bool)

(declare-fun b_next!79851 () Bool)

(assert (=> b!2795238 (= b_free!79147 (not b_next!79851))))

(declare-fun tp!889053 () Bool)

(declare-fun b_and!203885 () Bool)

(assert (=> b!2795238 (= tp!889053 b_and!203885)))

(declare-fun b!2795222 () Bool)

(declare-fun res!1165410 () Bool)

(declare-fun e!1765185 () Bool)

(assert (=> b!2795222 (=> (not res!1165410) (not e!1765185))))

(declare-datatypes ((C!16536 0))(
  ( (C!16537 (val!10202 Int)) )
))
(declare-datatypes ((array!14128 0))(
  ( (array!14129 (arr!6296 (Array (_ BitVec 32) (_ BitVec 64))) (size!25263 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8189 0))(
  ( (ElementMatch!8189 (c!453570 C!16536)) (Concat!13277 (regOne!16890 Regex!8189) (regTwo!16890 Regex!8189)) (EmptyExpr!8189) (Star!8189 (reg!8518 Regex!8189)) (EmptyLang!8189) (Union!8189 (regOne!16891 Regex!8189) (regTwo!16891 Regex!8189)) )
))
(declare-datatypes ((List!32521 0))(
  ( (Nil!32421) (Cons!32421 (h!37841 Regex!8189) (t!228681 List!32521)) )
))
(declare-datatypes ((Context!4814 0))(
  ( (Context!4815 (exprs!2907 List!32521)) )
))
(declare-datatypes ((tuple3!5114 0))(
  ( (tuple3!5115 (_1!19496 Regex!8189) (_2!19496 Context!4814) (_3!3027 C!16536)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32938 0))(
  ( (tuple2!32939 (_1!19497 tuple3!5114) (_2!19497 (InoxSet Context!4814))) )
))
(declare-datatypes ((List!32522 0))(
  ( (Nil!32422) (Cons!32422 (h!37842 tuple2!32938) (t!228682 List!32522)) )
))
(declare-datatypes ((array!14130 0))(
  ( (array!14131 (arr!6297 (Array (_ BitVec 32) List!32522)) (size!25264 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7948 0))(
  ( (LongMapFixedSize!7949 (defaultEntry!4359 Int) (mask!9805 (_ BitVec 32)) (extraKeys!4223 (_ BitVec 32)) (zeroValue!4233 List!32522) (minValue!4233 List!32522) (_size!7991 (_ BitVec 32)) (_keys!4274 array!14128) (_values!4255 array!14130) (_vacant!4035 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15705 0))(
  ( (Cell!15706 (v!34026 LongMapFixedSize!7948)) )
))
(declare-datatypes ((MutLongMap!3974 0))(
  ( (LongMap!3974 (underlying!8151 Cell!15705)) (MutLongMapExt!3973 (__x!21572 Int)) )
))
(declare-datatypes ((Cell!15707 0))(
  ( (Cell!15708 (v!34027 MutLongMap!3974)) )
))
(declare-datatypes ((Hashable!3890 0))(
  ( (HashableExt!3889 (__x!21573 Int)) )
))
(declare-datatypes ((MutableMap!3880 0))(
  ( (MutableMapExt!3879 (__x!21574 Int)) (HashMap!3880 (underlying!8152 Cell!15707) (hashF!5922 Hashable!3890) (_size!7992 (_ BitVec 32)) (defaultValue!4051 Int)) )
))
(declare-datatypes ((CacheDown!2706 0))(
  ( (CacheDown!2707 (cache!4023 MutableMap!3880)) )
))
(declare-fun cacheDown!1009 () CacheDown!2706)

(declare-fun valid!3116 (CacheDown!2706) Bool)

(assert (=> b!2795222 (= res!1165410 (valid!3116 cacheDown!1009))))

(declare-fun b!2795223 () Bool)

(declare-fun e!1765184 () Bool)

(declare-fun e!1765174 () Bool)

(assert (=> b!2795223 (= e!1765184 e!1765174)))

(declare-fun mapNonEmpty!18081 () Bool)

(declare-fun mapRes!18082 () Bool)

(declare-fun tp!889051 () Bool)

(declare-fun tp!889058 () Bool)

(assert (=> mapNonEmpty!18081 (= mapRes!18082 (and tp!889051 tp!889058))))

(declare-fun mapKey!18082 () (_ BitVec 32))

(declare-fun mapValue!18081 () List!32522)

(declare-fun mapRest!18081 () (Array (_ BitVec 32) List!32522))

(assert (=> mapNonEmpty!18081 (= (arr!6297 (_values!4255 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009))))))) (store mapRest!18081 mapKey!18082 mapValue!18081))))

(declare-fun b!2795224 () Bool)

(declare-fun e!1765177 () Bool)

(declare-fun e!1765191 () Bool)

(assert (=> b!2795224 (= e!1765177 e!1765191)))

(declare-fun mapIsEmpty!18081 () Bool)

(declare-fun mapRes!18081 () Bool)

(assert (=> mapIsEmpty!18081 mapRes!18081))

(declare-fun b!2795225 () Bool)

(declare-fun e!1765175 () Bool)

(assert (=> b!2795225 (= e!1765185 (not e!1765175))))

(declare-fun res!1165406 () Bool)

(assert (=> b!2795225 (=> res!1165406 e!1765175)))

(declare-datatypes ((List!32523 0))(
  ( (Nil!32423) (Cons!32423 (h!37843 C!16536) (t!228683 List!32523)) )
))
(declare-fun testedP!183 () List!32523)

(declare-fun lt!998702 () List!32523)

(declare-fun isPrefix!2614 (List!32523 List!32523) Bool)

(assert (=> b!2795225 (= res!1165406 (not (isPrefix!2614 testedP!183 lt!998702)))))

(declare-fun lt!998703 () List!32523)

(assert (=> b!2795225 (isPrefix!2614 testedP!183 lt!998703)))

(declare-datatypes ((Unit!46580 0))(
  ( (Unit!46581) )
))
(declare-fun lt!998704 () Unit!46580)

(declare-fun testedSuffix!143 () List!32523)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1723 (List!32523 List!32523) Unit!46580)

(assert (=> b!2795225 (= lt!998704 (lemmaConcatTwoListThenFirstIsPrefix!1723 testedP!183 testedSuffix!143))))

(declare-fun b!2795226 () Bool)

(declare-fun e!1765187 () Bool)

(declare-datatypes ((IArray!20111 0))(
  ( (IArray!20112 (innerList!10113 List!32523)) )
))
(declare-datatypes ((Conc!10053 0))(
  ( (Node!10053 (left!24545 Conc!10053) (right!24875 Conc!10053) (csize!20336 Int) (cheight!10264 Int)) (Leaf!15316 (xs!13165 IArray!20111) (csize!20337 Int)) (Empty!10053) )
))
(declare-datatypes ((BalanceConc!19720 0))(
  ( (BalanceConc!19721 (c!453571 Conc!10053)) )
))
(declare-fun totalInput!758 () BalanceConc!19720)

(declare-fun tp!889060 () Bool)

(declare-fun inv!44044 (Conc!10053) Bool)

(assert (=> b!2795226 (= e!1765187 (and (inv!44044 (c!453571 totalInput!758)) tp!889060))))

(declare-fun mapNonEmpty!18082 () Bool)

(declare-fun tp!889057 () Bool)

(declare-fun tp!889061 () Bool)

(assert (=> mapNonEmpty!18082 (= mapRes!18081 (and tp!889057 tp!889061))))

(declare-datatypes ((Hashable!3891 0))(
  ( (HashableExt!3890 (__x!21575 Int)) )
))
(declare-datatypes ((tuple2!32940 0))(
  ( (tuple2!32941 (_1!19498 Context!4814) (_2!19498 C!16536)) )
))
(declare-datatypes ((tuple2!32942 0))(
  ( (tuple2!32943 (_1!19499 tuple2!32940) (_2!19499 (InoxSet Context!4814))) )
))
(declare-datatypes ((List!32524 0))(
  ( (Nil!32424) (Cons!32424 (h!37844 tuple2!32942) (t!228684 List!32524)) )
))
(declare-datatypes ((array!14132 0))(
  ( (array!14133 (arr!6298 (Array (_ BitVec 32) List!32524)) (size!25265 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7950 0))(
  ( (LongMapFixedSize!7951 (defaultEntry!4360 Int) (mask!9806 (_ BitVec 32)) (extraKeys!4224 (_ BitVec 32)) (zeroValue!4234 List!32524) (minValue!4234 List!32524) (_size!7993 (_ BitVec 32)) (_keys!4275 array!14128) (_values!4256 array!14132) (_vacant!4036 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15709 0))(
  ( (Cell!15710 (v!34028 LongMapFixedSize!7950)) )
))
(declare-datatypes ((MutLongMap!3975 0))(
  ( (LongMap!3975 (underlying!8153 Cell!15709)) (MutLongMapExt!3974 (__x!21576 Int)) )
))
(declare-datatypes ((Cell!15711 0))(
  ( (Cell!15712 (v!34029 MutLongMap!3975)) )
))
(declare-datatypes ((MutableMap!3881 0))(
  ( (MutableMapExt!3880 (__x!21577 Int)) (HashMap!3881 (underlying!8154 Cell!15711) (hashF!5923 Hashable!3891) (_size!7994 (_ BitVec 32)) (defaultValue!4052 Int)) )
))
(declare-datatypes ((CacheUp!2586 0))(
  ( (CacheUp!2587 (cache!4024 MutableMap!3881)) )
))
(declare-fun cacheUp!890 () CacheUp!2586)

(declare-fun mapRest!18082 () (Array (_ BitVec 32) List!32524))

(declare-fun mapValue!18082 () List!32524)

(declare-fun mapKey!18081 () (_ BitVec 32))

(assert (=> mapNonEmpty!18082 (= (arr!6298 (_values!4256 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890))))))) (store mapRest!18082 mapKey!18081 mapValue!18082))))

(declare-fun e!1765173 () Bool)

(declare-fun e!1765181 () Bool)

(assert (=> b!2795227 (= e!1765173 (and e!1765181 tp!889059))))

(declare-fun b!2795228 () Bool)

(declare-fun e!1765178 () Bool)

(assert (=> b!2795228 (= e!1765178 e!1765173)))

(declare-fun b!2795229 () Bool)

(declare-fun e!1765190 () Bool)

(assert (=> b!2795229 (= e!1765191 e!1765190)))

(declare-fun b!2795230 () Bool)

(declare-fun res!1165407 () Bool)

(assert (=> b!2795230 (=> (not res!1165407) (not e!1765185))))

(declare-fun valid!3117 (CacheUp!2586) Bool)

(assert (=> b!2795230 (= res!1165407 (valid!3117 cacheUp!890))))

(declare-fun b!2795231 () Bool)

(declare-fun e!1765192 () Bool)

(declare-fun tp_is_empty!14191 () Bool)

(declare-fun tp!889049 () Bool)

(assert (=> b!2795231 (= e!1765192 (and tp_is_empty!14191 tp!889049))))

(declare-fun b!2795232 () Bool)

(declare-fun e!1765176 () Bool)

(declare-fun e!1765183 () Bool)

(assert (=> b!2795232 (= e!1765176 e!1765183)))

(declare-fun b!2795233 () Bool)

(declare-fun e!1765186 () Bool)

(declare-fun tp!889064 () Bool)

(assert (=> b!2795233 (= e!1765186 (and tp_is_empty!14191 tp!889064))))

(declare-fun mapIsEmpty!18082 () Bool)

(assert (=> mapIsEmpty!18082 mapRes!18082))

(declare-fun b!2795234 () Bool)

(declare-fun ++!8003 (List!32523 List!32523) List!32523)

(declare-fun getSuffix!1291 (List!32523 List!32523) List!32523)

(assert (=> b!2795234 (= e!1765175 (= (++!8003 testedP!183 (getSuffix!1291 lt!998702 testedP!183)) lt!998702))))

(declare-fun b!2795235 () Bool)

(declare-fun e!1765188 () Bool)

(declare-fun e!1765180 () Bool)

(declare-fun lt!998700 () MutLongMap!3975)

(get-info :version)

(assert (=> b!2795235 (= e!1765188 (and e!1765180 ((_ is LongMap!3975) lt!998700)))))

(assert (=> b!2795235 (= lt!998700 (v!34029 (underlying!8154 (cache!4024 cacheUp!890))))))

(declare-fun res!1165411 () Bool)

(assert (=> start!270226 (=> (not res!1165411) (not e!1765185))))

(assert (=> start!270226 (= res!1165411 (= lt!998703 lt!998702))))

(declare-fun list!12188 (BalanceConc!19720) List!32523)

(assert (=> start!270226 (= lt!998702 (list!12188 totalInput!758))))

(assert (=> start!270226 (= lt!998703 (++!8003 testedP!183 testedSuffix!143))))

(assert (=> start!270226 e!1765185))

(declare-fun inv!44045 (BalanceConc!19720) Bool)

(assert (=> start!270226 (and (inv!44045 totalInput!758) e!1765187)))

(assert (=> start!270226 true))

(assert (=> start!270226 e!1765186))

(assert (=> start!270226 e!1765192))

(declare-fun inv!44046 (CacheDown!2706) Bool)

(assert (=> start!270226 (and (inv!44046 cacheDown!1009) e!1765178)))

(declare-fun inv!44047 (CacheUp!2586) Bool)

(assert (=> start!270226 (and (inv!44047 cacheUp!890) e!1765184)))

(assert (=> b!2795236 (= e!1765174 (and e!1765188 tp!889063))))

(declare-fun b!2795237 () Bool)

(assert (=> b!2795237 (= e!1765180 e!1765176)))

(declare-fun e!1765189 () Bool)

(declare-fun tp!889056 () Bool)

(declare-fun tp!889055 () Bool)

(declare-fun array_inv!4507 (array!14128) Bool)

(declare-fun array_inv!4508 (array!14130) Bool)

(assert (=> b!2795238 (= e!1765190 (and tp!889053 tp!889055 tp!889056 (array_inv!4507 (_keys!4274 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009))))))) (array_inv!4508 (_values!4255 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009))))))) e!1765189))))

(declare-fun b!2795239 () Bool)

(declare-fun res!1165409 () Bool)

(assert (=> b!2795239 (=> (not res!1165409) (not e!1765185))))

(declare-fun testedPSize!143 () Int)

(declare-fun size!25266 (List!32523) Int)

(assert (=> b!2795239 (= res!1165409 (= testedPSize!143 (size!25266 testedP!183)))))

(declare-fun b!2795240 () Bool)

(declare-fun tp!889050 () Bool)

(assert (=> b!2795240 (= e!1765189 (and tp!889050 mapRes!18082))))

(declare-fun condMapEmpty!18082 () Bool)

(declare-fun mapDefault!18081 () List!32522)

(assert (=> b!2795240 (= condMapEmpty!18082 (= (arr!6297 (_values!4255 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32522)) mapDefault!18081)))))

(declare-fun b!2795241 () Bool)

(declare-fun res!1165408 () Bool)

(assert (=> b!2795241 (=> (not res!1165408) (not e!1765185))))

(declare-fun totalInputSize!205 () Int)

(declare-fun size!25267 (BalanceConc!19720) Int)

(assert (=> b!2795241 (= res!1165408 (= totalInputSize!205 (size!25267 totalInput!758)))))

(declare-fun b!2795242 () Bool)

(declare-fun e!1765172 () Bool)

(declare-fun tp!889054 () Bool)

(assert (=> b!2795242 (= e!1765172 (and tp!889054 mapRes!18081))))

(declare-fun condMapEmpty!18081 () Bool)

(declare-fun mapDefault!18082 () List!32524)

(assert (=> b!2795242 (= condMapEmpty!18081 (= (arr!6298 (_values!4256 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32524)) mapDefault!18082)))))

(declare-fun tp!889052 () Bool)

(declare-fun tp!889062 () Bool)

(declare-fun array_inv!4509 (array!14132) Bool)

(assert (=> b!2795243 (= e!1765183 (and tp!889065 tp!889062 tp!889052 (array_inv!4507 (_keys!4275 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890))))))) (array_inv!4509 (_values!4256 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890))))))) e!1765172))))

(declare-fun b!2795244 () Bool)

(declare-fun lt!998701 () MutLongMap!3974)

(assert (=> b!2795244 (= e!1765181 (and e!1765177 ((_ is LongMap!3974) lt!998701)))))

(assert (=> b!2795244 (= lt!998701 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009))))))

(assert (= (and start!270226 res!1165411) b!2795239))

(assert (= (and b!2795239 res!1165409) b!2795241))

(assert (= (and b!2795241 res!1165408) b!2795230))

(assert (= (and b!2795230 res!1165407) b!2795222))

(assert (= (and b!2795222 res!1165410) b!2795225))

(assert (= (and b!2795225 (not res!1165406)) b!2795234))

(assert (= start!270226 b!2795226))

(assert (= (and start!270226 ((_ is Cons!32423) testedP!183)) b!2795233))

(assert (= (and start!270226 ((_ is Cons!32423) testedSuffix!143)) b!2795231))

(assert (= (and b!2795240 condMapEmpty!18082) mapIsEmpty!18082))

(assert (= (and b!2795240 (not condMapEmpty!18082)) mapNonEmpty!18081))

(assert (= b!2795238 b!2795240))

(assert (= b!2795229 b!2795238))

(assert (= b!2795224 b!2795229))

(assert (= (and b!2795244 ((_ is LongMap!3974) (v!34027 (underlying!8152 (cache!4023 cacheDown!1009))))) b!2795224))

(assert (= b!2795227 b!2795244))

(assert (= (and b!2795228 ((_ is HashMap!3880) (cache!4023 cacheDown!1009))) b!2795227))

(assert (= start!270226 b!2795228))

(assert (= (and b!2795242 condMapEmpty!18081) mapIsEmpty!18081))

(assert (= (and b!2795242 (not condMapEmpty!18081)) mapNonEmpty!18082))

(assert (= b!2795243 b!2795242))

(assert (= b!2795232 b!2795243))

(assert (= b!2795237 b!2795232))

(assert (= (and b!2795235 ((_ is LongMap!3975) (v!34029 (underlying!8154 (cache!4024 cacheUp!890))))) b!2795237))

(assert (= b!2795236 b!2795235))

(assert (= (and b!2795223 ((_ is HashMap!3881) (cache!4024 cacheUp!890))) b!2795236))

(assert (= start!270226 b!2795223))

(declare-fun m!3225227 () Bool)

(assert (=> b!2795222 m!3225227))

(declare-fun m!3225229 () Bool)

(assert (=> start!270226 m!3225229))

(declare-fun m!3225231 () Bool)

(assert (=> start!270226 m!3225231))

(declare-fun m!3225233 () Bool)

(assert (=> start!270226 m!3225233))

(declare-fun m!3225235 () Bool)

(assert (=> start!270226 m!3225235))

(declare-fun m!3225237 () Bool)

(assert (=> start!270226 m!3225237))

(declare-fun m!3225239 () Bool)

(assert (=> b!2795243 m!3225239))

(declare-fun m!3225241 () Bool)

(assert (=> b!2795243 m!3225241))

(declare-fun m!3225243 () Bool)

(assert (=> b!2795226 m!3225243))

(declare-fun m!3225245 () Bool)

(assert (=> b!2795238 m!3225245))

(declare-fun m!3225247 () Bool)

(assert (=> b!2795238 m!3225247))

(declare-fun m!3225249 () Bool)

(assert (=> b!2795241 m!3225249))

(declare-fun m!3225251 () Bool)

(assert (=> b!2795239 m!3225251))

(declare-fun m!3225253 () Bool)

(assert (=> b!2795234 m!3225253))

(assert (=> b!2795234 m!3225253))

(declare-fun m!3225255 () Bool)

(assert (=> b!2795234 m!3225255))

(declare-fun m!3225257 () Bool)

(assert (=> b!2795225 m!3225257))

(declare-fun m!3225259 () Bool)

(assert (=> b!2795225 m!3225259))

(declare-fun m!3225261 () Bool)

(assert (=> b!2795225 m!3225261))

(declare-fun m!3225263 () Bool)

(assert (=> b!2795230 m!3225263))

(declare-fun m!3225265 () Bool)

(assert (=> mapNonEmpty!18082 m!3225265))

(declare-fun m!3225267 () Bool)

(assert (=> mapNonEmpty!18081 m!3225267))

(check-sat (not b!2795241) (not b!2795225) (not b!2795238) b_and!203885 (not start!270226) b_and!203879 (not mapNonEmpty!18082) (not b!2795242) (not b!2795240) (not b!2795226) (not b!2795230) (not b_next!79845) tp_is_empty!14191 (not b!2795233) (not b!2795222) (not b_next!79847) b_and!203883 (not b!2795243) (not b_next!79851) (not b_next!79849) (not b!2795231) (not mapNonEmpty!18081) (not b!2795239) (not b!2795234) b_and!203881)
(check-sat (not b_next!79845) (not b_next!79847) b_and!203885 (not b_next!79849) b_and!203879 b_and!203881 b_and!203883 (not b_next!79851))
(get-model)

(declare-fun d!812661 () Bool)

(declare-fun res!1165414 () Bool)

(declare-fun e!1765195 () Bool)

(assert (=> d!812661 (=> (not res!1165414) (not e!1765195))))

(assert (=> d!812661 (= res!1165414 ((_ is HashMap!3881) (cache!4024 cacheUp!890)))))

(assert (=> d!812661 (= (inv!44047 cacheUp!890) e!1765195)))

(declare-fun b!2795247 () Bool)

(declare-fun validCacheMapUp!391 (MutableMap!3881) Bool)

(assert (=> b!2795247 (= e!1765195 (validCacheMapUp!391 (cache!4024 cacheUp!890)))))

(assert (= (and d!812661 res!1165414) b!2795247))

(declare-fun m!3225269 () Bool)

(assert (=> b!2795247 m!3225269))

(assert (=> start!270226 d!812661))

(declare-fun d!812663 () Bool)

(declare-fun isBalanced!3067 (Conc!10053) Bool)

(assert (=> d!812663 (= (inv!44045 totalInput!758) (isBalanced!3067 (c!453571 totalInput!758)))))

(declare-fun bs!514993 () Bool)

(assert (= bs!514993 d!812663))

(declare-fun m!3225271 () Bool)

(assert (=> bs!514993 m!3225271))

(assert (=> start!270226 d!812663))

(declare-fun d!812665 () Bool)

(declare-fun res!1165417 () Bool)

(declare-fun e!1765198 () Bool)

(assert (=> d!812665 (=> (not res!1165417) (not e!1765198))))

(assert (=> d!812665 (= res!1165417 ((_ is HashMap!3880) (cache!4023 cacheDown!1009)))))

(assert (=> d!812665 (= (inv!44046 cacheDown!1009) e!1765198)))

(declare-fun b!2795250 () Bool)

(declare-fun validCacheMapDown!422 (MutableMap!3880) Bool)

(assert (=> b!2795250 (= e!1765198 (validCacheMapDown!422 (cache!4023 cacheDown!1009)))))

(assert (= (and d!812665 res!1165417) b!2795250))

(declare-fun m!3225273 () Bool)

(assert (=> b!2795250 m!3225273))

(assert (=> start!270226 d!812665))

(declare-fun d!812667 () Bool)

(declare-fun list!12189 (Conc!10053) List!32523)

(assert (=> d!812667 (= (list!12188 totalInput!758) (list!12189 (c!453571 totalInput!758)))))

(declare-fun bs!514994 () Bool)

(assert (= bs!514994 d!812667))

(declare-fun m!3225275 () Bool)

(assert (=> bs!514994 m!3225275))

(assert (=> start!270226 d!812667))

(declare-fun b!2795260 () Bool)

(declare-fun e!1765204 () List!32523)

(assert (=> b!2795260 (= e!1765204 (Cons!32423 (h!37843 testedP!183) (++!8003 (t!228683 testedP!183) testedSuffix!143)))))

(declare-fun b!2795262 () Bool)

(declare-fun e!1765203 () Bool)

(declare-fun lt!998707 () List!32523)

(assert (=> b!2795262 (= e!1765203 (or (not (= testedSuffix!143 Nil!32423)) (= lt!998707 testedP!183)))))

(declare-fun b!2795259 () Bool)

(assert (=> b!2795259 (= e!1765204 testedSuffix!143)))

(declare-fun b!2795261 () Bool)

(declare-fun res!1165422 () Bool)

(assert (=> b!2795261 (=> (not res!1165422) (not e!1765203))))

(assert (=> b!2795261 (= res!1165422 (= (size!25266 lt!998707) (+ (size!25266 testedP!183) (size!25266 testedSuffix!143))))))

(declare-fun d!812669 () Bool)

(assert (=> d!812669 e!1765203))

(declare-fun res!1165423 () Bool)

(assert (=> d!812669 (=> (not res!1165423) (not e!1765203))))

(declare-fun content!4535 (List!32523) (InoxSet C!16536))

(assert (=> d!812669 (= res!1165423 (= (content!4535 lt!998707) ((_ map or) (content!4535 testedP!183) (content!4535 testedSuffix!143))))))

(assert (=> d!812669 (= lt!998707 e!1765204)))

(declare-fun c!453574 () Bool)

(assert (=> d!812669 (= c!453574 ((_ is Nil!32423) testedP!183))))

(assert (=> d!812669 (= (++!8003 testedP!183 testedSuffix!143) lt!998707)))

(assert (= (and d!812669 c!453574) b!2795259))

(assert (= (and d!812669 (not c!453574)) b!2795260))

(assert (= (and d!812669 res!1165423) b!2795261))

(assert (= (and b!2795261 res!1165422) b!2795262))

(declare-fun m!3225277 () Bool)

(assert (=> b!2795260 m!3225277))

(declare-fun m!3225279 () Bool)

(assert (=> b!2795261 m!3225279))

(assert (=> b!2795261 m!3225251))

(declare-fun m!3225281 () Bool)

(assert (=> b!2795261 m!3225281))

(declare-fun m!3225283 () Bool)

(assert (=> d!812669 m!3225283))

(declare-fun m!3225285 () Bool)

(assert (=> d!812669 m!3225285))

(declare-fun m!3225287 () Bool)

(assert (=> d!812669 m!3225287))

(assert (=> start!270226 d!812669))

(declare-fun b!2795264 () Bool)

(declare-fun e!1765206 () List!32523)

(assert (=> b!2795264 (= e!1765206 (Cons!32423 (h!37843 testedP!183) (++!8003 (t!228683 testedP!183) (getSuffix!1291 lt!998702 testedP!183))))))

(declare-fun b!2795266 () Bool)

(declare-fun lt!998708 () List!32523)

(declare-fun e!1765205 () Bool)

(assert (=> b!2795266 (= e!1765205 (or (not (= (getSuffix!1291 lt!998702 testedP!183) Nil!32423)) (= lt!998708 testedP!183)))))

(declare-fun b!2795263 () Bool)

(assert (=> b!2795263 (= e!1765206 (getSuffix!1291 lt!998702 testedP!183))))

(declare-fun b!2795265 () Bool)

(declare-fun res!1165424 () Bool)

(assert (=> b!2795265 (=> (not res!1165424) (not e!1765205))))

(assert (=> b!2795265 (= res!1165424 (= (size!25266 lt!998708) (+ (size!25266 testedP!183) (size!25266 (getSuffix!1291 lt!998702 testedP!183)))))))

(declare-fun d!812671 () Bool)

(assert (=> d!812671 e!1765205))

(declare-fun res!1165425 () Bool)

(assert (=> d!812671 (=> (not res!1165425) (not e!1765205))))

(assert (=> d!812671 (= res!1165425 (= (content!4535 lt!998708) ((_ map or) (content!4535 testedP!183) (content!4535 (getSuffix!1291 lt!998702 testedP!183)))))))

(assert (=> d!812671 (= lt!998708 e!1765206)))

(declare-fun c!453575 () Bool)

(assert (=> d!812671 (= c!453575 ((_ is Nil!32423) testedP!183))))

(assert (=> d!812671 (= (++!8003 testedP!183 (getSuffix!1291 lt!998702 testedP!183)) lt!998708)))

(assert (= (and d!812671 c!453575) b!2795263))

(assert (= (and d!812671 (not c!453575)) b!2795264))

(assert (= (and d!812671 res!1165425) b!2795265))

(assert (= (and b!2795265 res!1165424) b!2795266))

(assert (=> b!2795264 m!3225253))

(declare-fun m!3225289 () Bool)

(assert (=> b!2795264 m!3225289))

(declare-fun m!3225291 () Bool)

(assert (=> b!2795265 m!3225291))

(assert (=> b!2795265 m!3225251))

(assert (=> b!2795265 m!3225253))

(declare-fun m!3225293 () Bool)

(assert (=> b!2795265 m!3225293))

(declare-fun m!3225295 () Bool)

(assert (=> d!812671 m!3225295))

(assert (=> d!812671 m!3225285))

(assert (=> d!812671 m!3225253))

(declare-fun m!3225297 () Bool)

(assert (=> d!812671 m!3225297))

(assert (=> b!2795234 d!812671))

(declare-fun d!812673 () Bool)

(declare-fun lt!998711 () List!32523)

(assert (=> d!812673 (= (++!8003 testedP!183 lt!998711) lt!998702)))

(declare-fun e!1765209 () List!32523)

(assert (=> d!812673 (= lt!998711 e!1765209)))

(declare-fun c!453578 () Bool)

(assert (=> d!812673 (= c!453578 ((_ is Cons!32423) testedP!183))))

(assert (=> d!812673 (>= (size!25266 lt!998702) (size!25266 testedP!183))))

(assert (=> d!812673 (= (getSuffix!1291 lt!998702 testedP!183) lt!998711)))

(declare-fun b!2795271 () Bool)

(declare-fun tail!4418 (List!32523) List!32523)

(assert (=> b!2795271 (= e!1765209 (getSuffix!1291 (tail!4418 lt!998702) (t!228683 testedP!183)))))

(declare-fun b!2795272 () Bool)

(assert (=> b!2795272 (= e!1765209 lt!998702)))

(assert (= (and d!812673 c!453578) b!2795271))

(assert (= (and d!812673 (not c!453578)) b!2795272))

(declare-fun m!3225299 () Bool)

(assert (=> d!812673 m!3225299))

(declare-fun m!3225301 () Bool)

(assert (=> d!812673 m!3225301))

(assert (=> d!812673 m!3225251))

(declare-fun m!3225303 () Bool)

(assert (=> b!2795271 m!3225303))

(assert (=> b!2795271 m!3225303))

(declare-fun m!3225305 () Bool)

(assert (=> b!2795271 m!3225305))

(assert (=> b!2795234 d!812673))

(declare-fun d!812675 () Bool)

(assert (=> d!812675 (= (valid!3116 cacheDown!1009) (validCacheMapDown!422 (cache!4023 cacheDown!1009)))))

(declare-fun bs!514995 () Bool)

(assert (= bs!514995 d!812675))

(assert (=> bs!514995 m!3225273))

(assert (=> b!2795222 d!812675))

(declare-fun d!812677 () Bool)

(assert (=> d!812677 (= (valid!3117 cacheUp!890) (validCacheMapUp!391 (cache!4024 cacheUp!890)))))

(declare-fun bs!514996 () Bool)

(assert (= bs!514996 d!812677))

(assert (=> bs!514996 m!3225269))

(assert (=> b!2795230 d!812677))

(declare-fun d!812679 () Bool)

(declare-fun lt!998714 () Int)

(assert (=> d!812679 (>= lt!998714 0)))

(declare-fun e!1765212 () Int)

(assert (=> d!812679 (= lt!998714 e!1765212)))

(declare-fun c!453581 () Bool)

(assert (=> d!812679 (= c!453581 ((_ is Nil!32423) testedP!183))))

(assert (=> d!812679 (= (size!25266 testedP!183) lt!998714)))

(declare-fun b!2795277 () Bool)

(assert (=> b!2795277 (= e!1765212 0)))

(declare-fun b!2795278 () Bool)

(assert (=> b!2795278 (= e!1765212 (+ 1 (size!25266 (t!228683 testedP!183))))))

(assert (= (and d!812679 c!453581) b!2795277))

(assert (= (and d!812679 (not c!453581)) b!2795278))

(declare-fun m!3225307 () Bool)

(assert (=> b!2795278 m!3225307))

(assert (=> b!2795239 d!812679))

(declare-fun b!2795288 () Bool)

(declare-fun res!1165437 () Bool)

(declare-fun e!1765219 () Bool)

(assert (=> b!2795288 (=> (not res!1165437) (not e!1765219))))

(declare-fun head!6187 (List!32523) C!16536)

(assert (=> b!2795288 (= res!1165437 (= (head!6187 testedP!183) (head!6187 lt!998702)))))

(declare-fun b!2795290 () Bool)

(declare-fun e!1765220 () Bool)

(assert (=> b!2795290 (= e!1765220 (>= (size!25266 lt!998702) (size!25266 testedP!183)))))

(declare-fun b!2795287 () Bool)

(declare-fun e!1765221 () Bool)

(assert (=> b!2795287 (= e!1765221 e!1765219)))

(declare-fun res!1165435 () Bool)

(assert (=> b!2795287 (=> (not res!1165435) (not e!1765219))))

(assert (=> b!2795287 (= res!1165435 (not ((_ is Nil!32423) lt!998702)))))

(declare-fun b!2795289 () Bool)

(assert (=> b!2795289 (= e!1765219 (isPrefix!2614 (tail!4418 testedP!183) (tail!4418 lt!998702)))))

(declare-fun d!812681 () Bool)

(assert (=> d!812681 e!1765220))

(declare-fun res!1165436 () Bool)

(assert (=> d!812681 (=> res!1165436 e!1765220)))

(declare-fun lt!998717 () Bool)

(assert (=> d!812681 (= res!1165436 (not lt!998717))))

(assert (=> d!812681 (= lt!998717 e!1765221)))

(declare-fun res!1165434 () Bool)

(assert (=> d!812681 (=> res!1165434 e!1765221)))

(assert (=> d!812681 (= res!1165434 ((_ is Nil!32423) testedP!183))))

(assert (=> d!812681 (= (isPrefix!2614 testedP!183 lt!998702) lt!998717)))

(assert (= (and d!812681 (not res!1165434)) b!2795287))

(assert (= (and b!2795287 res!1165435) b!2795288))

(assert (= (and b!2795288 res!1165437) b!2795289))

(assert (= (and d!812681 (not res!1165436)) b!2795290))

(declare-fun m!3225309 () Bool)

(assert (=> b!2795288 m!3225309))

(declare-fun m!3225311 () Bool)

(assert (=> b!2795288 m!3225311))

(assert (=> b!2795290 m!3225301))

(assert (=> b!2795290 m!3225251))

(declare-fun m!3225313 () Bool)

(assert (=> b!2795289 m!3225313))

(assert (=> b!2795289 m!3225303))

(assert (=> b!2795289 m!3225313))

(assert (=> b!2795289 m!3225303))

(declare-fun m!3225315 () Bool)

(assert (=> b!2795289 m!3225315))

(assert (=> b!2795225 d!812681))

(declare-fun b!2795292 () Bool)

(declare-fun res!1165441 () Bool)

(declare-fun e!1765222 () Bool)

(assert (=> b!2795292 (=> (not res!1165441) (not e!1765222))))

(assert (=> b!2795292 (= res!1165441 (= (head!6187 testedP!183) (head!6187 lt!998703)))))

(declare-fun b!2795294 () Bool)

(declare-fun e!1765223 () Bool)

(assert (=> b!2795294 (= e!1765223 (>= (size!25266 lt!998703) (size!25266 testedP!183)))))

(declare-fun b!2795291 () Bool)

(declare-fun e!1765224 () Bool)

(assert (=> b!2795291 (= e!1765224 e!1765222)))

(declare-fun res!1165439 () Bool)

(assert (=> b!2795291 (=> (not res!1165439) (not e!1765222))))

(assert (=> b!2795291 (= res!1165439 (not ((_ is Nil!32423) lt!998703)))))

(declare-fun b!2795293 () Bool)

(assert (=> b!2795293 (= e!1765222 (isPrefix!2614 (tail!4418 testedP!183) (tail!4418 lt!998703)))))

(declare-fun d!812683 () Bool)

(assert (=> d!812683 e!1765223))

(declare-fun res!1165440 () Bool)

(assert (=> d!812683 (=> res!1165440 e!1765223)))

(declare-fun lt!998718 () Bool)

(assert (=> d!812683 (= res!1165440 (not lt!998718))))

(assert (=> d!812683 (= lt!998718 e!1765224)))

(declare-fun res!1165438 () Bool)

(assert (=> d!812683 (=> res!1165438 e!1765224)))

(assert (=> d!812683 (= res!1165438 ((_ is Nil!32423) testedP!183))))

(assert (=> d!812683 (= (isPrefix!2614 testedP!183 lt!998703) lt!998718)))

(assert (= (and d!812683 (not res!1165438)) b!2795291))

(assert (= (and b!2795291 res!1165439) b!2795292))

(assert (= (and b!2795292 res!1165441) b!2795293))

(assert (= (and d!812683 (not res!1165440)) b!2795294))

(assert (=> b!2795292 m!3225309))

(declare-fun m!3225317 () Bool)

(assert (=> b!2795292 m!3225317))

(declare-fun m!3225319 () Bool)

(assert (=> b!2795294 m!3225319))

(assert (=> b!2795294 m!3225251))

(assert (=> b!2795293 m!3225313))

(declare-fun m!3225321 () Bool)

(assert (=> b!2795293 m!3225321))

(assert (=> b!2795293 m!3225313))

(assert (=> b!2795293 m!3225321))

(declare-fun m!3225323 () Bool)

(assert (=> b!2795293 m!3225323))

(assert (=> b!2795225 d!812683))

(declare-fun d!812685 () Bool)

(assert (=> d!812685 (isPrefix!2614 testedP!183 (++!8003 testedP!183 testedSuffix!143))))

(declare-fun lt!998721 () Unit!46580)

(declare-fun choose!16440 (List!32523 List!32523) Unit!46580)

(assert (=> d!812685 (= lt!998721 (choose!16440 testedP!183 testedSuffix!143))))

(assert (=> d!812685 (= (lemmaConcatTwoListThenFirstIsPrefix!1723 testedP!183 testedSuffix!143) lt!998721)))

(declare-fun bs!514997 () Bool)

(assert (= bs!514997 d!812685))

(assert (=> bs!514997 m!3225237))

(assert (=> bs!514997 m!3225237))

(declare-fun m!3225325 () Bool)

(assert (=> bs!514997 m!3225325))

(declare-fun m!3225327 () Bool)

(assert (=> bs!514997 m!3225327))

(assert (=> b!2795225 d!812685))

(declare-fun d!812687 () Bool)

(declare-fun lt!998724 () Int)

(assert (=> d!812687 (= lt!998724 (size!25266 (list!12188 totalInput!758)))))

(declare-fun size!25268 (Conc!10053) Int)

(assert (=> d!812687 (= lt!998724 (size!25268 (c!453571 totalInput!758)))))

(assert (=> d!812687 (= (size!25267 totalInput!758) lt!998724)))

(declare-fun bs!514998 () Bool)

(assert (= bs!514998 d!812687))

(assert (=> bs!514998 m!3225229))

(assert (=> bs!514998 m!3225229))

(declare-fun m!3225329 () Bool)

(assert (=> bs!514998 m!3225329))

(declare-fun m!3225331 () Bool)

(assert (=> bs!514998 m!3225331))

(assert (=> b!2795241 d!812687))

(declare-fun d!812689 () Bool)

(declare-fun c!453584 () Bool)

(assert (=> d!812689 (= c!453584 ((_ is Node!10053) (c!453571 totalInput!758)))))

(declare-fun e!1765229 () Bool)

(assert (=> d!812689 (= (inv!44044 (c!453571 totalInput!758)) e!1765229)))

(declare-fun b!2795301 () Bool)

(declare-fun inv!44048 (Conc!10053) Bool)

(assert (=> b!2795301 (= e!1765229 (inv!44048 (c!453571 totalInput!758)))))

(declare-fun b!2795302 () Bool)

(declare-fun e!1765230 () Bool)

(assert (=> b!2795302 (= e!1765229 e!1765230)))

(declare-fun res!1165444 () Bool)

(assert (=> b!2795302 (= res!1165444 (not ((_ is Leaf!15316) (c!453571 totalInput!758))))))

(assert (=> b!2795302 (=> res!1165444 e!1765230)))

(declare-fun b!2795303 () Bool)

(declare-fun inv!44049 (Conc!10053) Bool)

(assert (=> b!2795303 (= e!1765230 (inv!44049 (c!453571 totalInput!758)))))

(assert (= (and d!812689 c!453584) b!2795301))

(assert (= (and d!812689 (not c!453584)) b!2795302))

(assert (= (and b!2795302 (not res!1165444)) b!2795303))

(declare-fun m!3225333 () Bool)

(assert (=> b!2795301 m!3225333))

(declare-fun m!3225335 () Bool)

(assert (=> b!2795303 m!3225335))

(assert (=> b!2795226 d!812689))

(declare-fun d!812691 () Bool)

(assert (=> d!812691 (= (array_inv!4507 (_keys!4274 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009))))))) (bvsge (size!25263 (_keys!4274 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2795238 d!812691))

(declare-fun d!812693 () Bool)

(assert (=> d!812693 (= (array_inv!4508 (_values!4255 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009))))))) (bvsge (size!25264 (_values!4255 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2795238 d!812693))

(declare-fun d!812695 () Bool)

(assert (=> d!812695 (= (array_inv!4507 (_keys!4275 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890))))))) (bvsge (size!25263 (_keys!4275 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2795243 d!812695))

(declare-fun d!812697 () Bool)

(assert (=> d!812697 (= (array_inv!4509 (_values!4256 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890))))))) (bvsge (size!25265 (_values!4256 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2795243 d!812697))

(declare-fun b!2795308 () Bool)

(declare-fun e!1765233 () Bool)

(declare-fun tp!889068 () Bool)

(assert (=> b!2795308 (= e!1765233 (and tp_is_empty!14191 tp!889068))))

(assert (=> b!2795231 (= tp!889049 e!1765233)))

(assert (= (and b!2795231 ((_ is Cons!32423) (t!228683 testedSuffix!143))) b!2795308))

(declare-fun b!2795323 () Bool)

(declare-fun e!1765246 () Bool)

(declare-fun tp!889091 () Bool)

(assert (=> b!2795323 (= e!1765246 tp!889091)))

(declare-fun b!2795324 () Bool)

(declare-fun e!1765250 () Bool)

(declare-fun tp!889093 () Bool)

(assert (=> b!2795324 (= e!1765250 tp!889093)))

(declare-fun b!2795325 () Bool)

(declare-fun e!1765251 () Bool)

(declare-fun tp!889088 () Bool)

(assert (=> b!2795325 (= e!1765251 tp!889088)))

(declare-fun condMapEmpty!18085 () Bool)

(declare-fun mapDefault!18085 () List!32524)

(assert (=> mapNonEmpty!18082 (= condMapEmpty!18085 (= mapRest!18082 ((as const (Array (_ BitVec 32) List!32524)) mapDefault!18085)))))

(declare-fun e!1765247 () Bool)

(declare-fun mapRes!18085 () Bool)

(assert (=> mapNonEmpty!18082 (= tp!889057 (and e!1765247 mapRes!18085))))

(declare-fun b!2795326 () Bool)

(declare-fun e!1765248 () Bool)

(declare-fun tp!889092 () Bool)

(assert (=> b!2795326 (= e!1765248 tp!889092)))

(declare-fun tp!889094 () Bool)

(declare-fun setRes!24155 () Bool)

(declare-fun b!2795327 () Bool)

(declare-fun e!1765249 () Bool)

(declare-fun mapValue!18085 () List!32524)

(declare-fun inv!44050 (Context!4814) Bool)

(assert (=> b!2795327 (= e!1765249 (and (inv!44050 (_1!19498 (_1!19499 (h!37844 mapValue!18085)))) e!1765251 tp_is_empty!14191 setRes!24155 tp!889094))))

(declare-fun condSetEmpty!24155 () Bool)

(assert (=> b!2795327 (= condSetEmpty!24155 (= (_2!19499 (h!37844 mapValue!18085)) ((as const (Array Context!4814 Bool)) false)))))

(declare-fun b!2795328 () Bool)

(declare-fun tp!889089 () Bool)

(declare-fun setRes!24154 () Bool)

(assert (=> b!2795328 (= e!1765247 (and (inv!44050 (_1!19498 (_1!19499 (h!37844 mapDefault!18085)))) e!1765250 tp_is_empty!14191 setRes!24154 tp!889089))))

(declare-fun condSetEmpty!24154 () Bool)

(assert (=> b!2795328 (= condSetEmpty!24154 (= (_2!19499 (h!37844 mapDefault!18085)) ((as const (Array Context!4814 Bool)) false)))))

(declare-fun setIsEmpty!24154 () Bool)

(assert (=> setIsEmpty!24154 setRes!24155))

(declare-fun tp!889090 () Bool)

(declare-fun setElem!24154 () Context!4814)

(declare-fun setNonEmpty!24154 () Bool)

(assert (=> setNonEmpty!24154 (= setRes!24154 (and tp!889090 (inv!44050 setElem!24154) e!1765246))))

(declare-fun setRest!24155 () (InoxSet Context!4814))

(assert (=> setNonEmpty!24154 (= (_2!19499 (h!37844 mapDefault!18085)) ((_ map or) (store ((as const (Array Context!4814 Bool)) false) setElem!24154 true) setRest!24155))))

(declare-fun setIsEmpty!24155 () Bool)

(assert (=> setIsEmpty!24155 setRes!24154))

(declare-fun mapIsEmpty!18085 () Bool)

(assert (=> mapIsEmpty!18085 mapRes!18085))

(declare-fun setNonEmpty!24155 () Bool)

(declare-fun setElem!24155 () Context!4814)

(declare-fun tp!889095 () Bool)

(assert (=> setNonEmpty!24155 (= setRes!24155 (and tp!889095 (inv!44050 setElem!24155) e!1765248))))

(declare-fun setRest!24154 () (InoxSet Context!4814))

(assert (=> setNonEmpty!24155 (= (_2!19499 (h!37844 mapValue!18085)) ((_ map or) (store ((as const (Array Context!4814 Bool)) false) setElem!24155 true) setRest!24154))))

(declare-fun mapNonEmpty!18085 () Bool)

(declare-fun tp!889087 () Bool)

(assert (=> mapNonEmpty!18085 (= mapRes!18085 (and tp!889087 e!1765249))))

(declare-fun mapRest!18085 () (Array (_ BitVec 32) List!32524))

(declare-fun mapKey!18085 () (_ BitVec 32))

(assert (=> mapNonEmpty!18085 (= mapRest!18082 (store mapRest!18085 mapKey!18085 mapValue!18085))))

(assert (= (and mapNonEmpty!18082 condMapEmpty!18085) mapIsEmpty!18085))

(assert (= (and mapNonEmpty!18082 (not condMapEmpty!18085)) mapNonEmpty!18085))

(assert (= b!2795327 b!2795325))

(assert (= (and b!2795327 condSetEmpty!24155) setIsEmpty!24154))

(assert (= (and b!2795327 (not condSetEmpty!24155)) setNonEmpty!24155))

(assert (= setNonEmpty!24155 b!2795326))

(assert (= (and mapNonEmpty!18085 ((_ is Cons!32424) mapValue!18085)) b!2795327))

(assert (= b!2795328 b!2795324))

(assert (= (and b!2795328 condSetEmpty!24154) setIsEmpty!24155))

(assert (= (and b!2795328 (not condSetEmpty!24154)) setNonEmpty!24154))

(assert (= setNonEmpty!24154 b!2795323))

(assert (= (and mapNonEmpty!18082 ((_ is Cons!32424) mapDefault!18085)) b!2795328))

(declare-fun m!3225337 () Bool)

(assert (=> setNonEmpty!24155 m!3225337))

(declare-fun m!3225339 () Bool)

(assert (=> b!2795327 m!3225339))

(declare-fun m!3225341 () Bool)

(assert (=> setNonEmpty!24154 m!3225341))

(declare-fun m!3225343 () Bool)

(assert (=> b!2795328 m!3225343))

(declare-fun m!3225345 () Bool)

(assert (=> mapNonEmpty!18085 m!3225345))

(declare-fun tp!889107 () Bool)

(declare-fun e!1765259 () Bool)

(declare-fun setRes!24158 () Bool)

(declare-fun e!1765260 () Bool)

(declare-fun b!2795337 () Bool)

(assert (=> b!2795337 (= e!1765260 (and (inv!44050 (_1!19498 (_1!19499 (h!37844 mapValue!18082)))) e!1765259 tp_is_empty!14191 setRes!24158 tp!889107))))

(declare-fun condSetEmpty!24158 () Bool)

(assert (=> b!2795337 (= condSetEmpty!24158 (= (_2!19499 (h!37844 mapValue!18082)) ((as const (Array Context!4814 Bool)) false)))))

(assert (=> mapNonEmpty!18082 (= tp!889061 e!1765260)))

(declare-fun setIsEmpty!24158 () Bool)

(assert (=> setIsEmpty!24158 setRes!24158))

(declare-fun b!2795338 () Bool)

(declare-fun tp!889104 () Bool)

(assert (=> b!2795338 (= e!1765259 tp!889104)))

(declare-fun setNonEmpty!24158 () Bool)

(declare-fun tp!889106 () Bool)

(declare-fun e!1765258 () Bool)

(declare-fun setElem!24158 () Context!4814)

(assert (=> setNonEmpty!24158 (= setRes!24158 (and tp!889106 (inv!44050 setElem!24158) e!1765258))))

(declare-fun setRest!24158 () (InoxSet Context!4814))

(assert (=> setNonEmpty!24158 (= (_2!19499 (h!37844 mapValue!18082)) ((_ map or) (store ((as const (Array Context!4814 Bool)) false) setElem!24158 true) setRest!24158))))

(declare-fun b!2795339 () Bool)

(declare-fun tp!889105 () Bool)

(assert (=> b!2795339 (= e!1765258 tp!889105)))

(assert (= b!2795337 b!2795338))

(assert (= (and b!2795337 condSetEmpty!24158) setIsEmpty!24158))

(assert (= (and b!2795337 (not condSetEmpty!24158)) setNonEmpty!24158))

(assert (= setNonEmpty!24158 b!2795339))

(assert (= (and mapNonEmpty!18082 ((_ is Cons!32424) mapValue!18082)) b!2795337))

(declare-fun m!3225347 () Bool)

(assert (=> b!2795337 m!3225347))

(declare-fun m!3225349 () Bool)

(assert (=> setNonEmpty!24158 m!3225349))

(declare-fun setIsEmpty!24161 () Bool)

(declare-fun setRes!24161 () Bool)

(assert (=> setIsEmpty!24161 setRes!24161))

(declare-fun b!2795348 () Bool)

(declare-fun e!1765267 () Bool)

(declare-fun tp!889120 () Bool)

(assert (=> b!2795348 (= e!1765267 tp!889120)))

(declare-fun b!2795349 () Bool)

(declare-fun e!1765268 () Bool)

(declare-fun tp!889122 () Bool)

(assert (=> b!2795349 (= e!1765268 tp!889122)))

(declare-fun tp!889119 () Bool)

(declare-fun b!2795350 () Bool)

(declare-fun tp!889118 () Bool)

(declare-fun e!1765269 () Bool)

(assert (=> b!2795350 (= e!1765269 (and tp!889118 (inv!44050 (_2!19496 (_1!19497 (h!37842 mapDefault!18081)))) e!1765267 tp_is_empty!14191 setRes!24161 tp!889119))))

(declare-fun condSetEmpty!24161 () Bool)

(assert (=> b!2795350 (= condSetEmpty!24161 (= (_2!19497 (h!37842 mapDefault!18081)) ((as const (Array Context!4814 Bool)) false)))))

(assert (=> b!2795240 (= tp!889050 e!1765269)))

(declare-fun tp!889121 () Bool)

(declare-fun setNonEmpty!24161 () Bool)

(declare-fun setElem!24161 () Context!4814)

(assert (=> setNonEmpty!24161 (= setRes!24161 (and tp!889121 (inv!44050 setElem!24161) e!1765268))))

(declare-fun setRest!24161 () (InoxSet Context!4814))

(assert (=> setNonEmpty!24161 (= (_2!19497 (h!37842 mapDefault!18081)) ((_ map or) (store ((as const (Array Context!4814 Bool)) false) setElem!24161 true) setRest!24161))))

(assert (= b!2795350 b!2795348))

(assert (= (and b!2795350 condSetEmpty!24161) setIsEmpty!24161))

(assert (= (and b!2795350 (not condSetEmpty!24161)) setNonEmpty!24161))

(assert (= setNonEmpty!24161 b!2795349))

(assert (= (and b!2795240 ((_ is Cons!32422) mapDefault!18081)) b!2795350))

(declare-fun m!3225351 () Bool)

(assert (=> b!2795350 m!3225351))

(declare-fun m!3225353 () Bool)

(assert (=> setNonEmpty!24161 m!3225353))

(declare-fun tp!889129 () Bool)

(declare-fun e!1765274 () Bool)

(declare-fun b!2795359 () Bool)

(declare-fun tp!889130 () Bool)

(assert (=> b!2795359 (= e!1765274 (and (inv!44044 (left!24545 (c!453571 totalInput!758))) tp!889129 (inv!44044 (right!24875 (c!453571 totalInput!758))) tp!889130))))

(declare-fun b!2795361 () Bool)

(declare-fun e!1765275 () Bool)

(declare-fun tp!889131 () Bool)

(assert (=> b!2795361 (= e!1765275 tp!889131)))

(declare-fun b!2795360 () Bool)

(declare-fun inv!44051 (IArray!20111) Bool)

(assert (=> b!2795360 (= e!1765274 (and (inv!44051 (xs!13165 (c!453571 totalInput!758))) e!1765275))))

(assert (=> b!2795226 (= tp!889060 (and (inv!44044 (c!453571 totalInput!758)) e!1765274))))

(assert (= (and b!2795226 ((_ is Node!10053) (c!453571 totalInput!758))) b!2795359))

(assert (= b!2795360 b!2795361))

(assert (= (and b!2795226 ((_ is Leaf!15316) (c!453571 totalInput!758))) b!2795360))

(declare-fun m!3225355 () Bool)

(assert (=> b!2795359 m!3225355))

(declare-fun m!3225357 () Bool)

(assert (=> b!2795359 m!3225357))

(declare-fun m!3225359 () Bool)

(assert (=> b!2795360 m!3225359))

(assert (=> b!2795226 m!3225243))

(declare-fun tp!889135 () Bool)

(declare-fun b!2795362 () Bool)

(declare-fun e!1765278 () Bool)

(declare-fun e!1765277 () Bool)

(declare-fun setRes!24162 () Bool)

(assert (=> b!2795362 (= e!1765278 (and (inv!44050 (_1!19498 (_1!19499 (h!37844 mapDefault!18082)))) e!1765277 tp_is_empty!14191 setRes!24162 tp!889135))))

(declare-fun condSetEmpty!24162 () Bool)

(assert (=> b!2795362 (= condSetEmpty!24162 (= (_2!19499 (h!37844 mapDefault!18082)) ((as const (Array Context!4814 Bool)) false)))))

(assert (=> b!2795242 (= tp!889054 e!1765278)))

(declare-fun setIsEmpty!24162 () Bool)

(assert (=> setIsEmpty!24162 setRes!24162))

(declare-fun b!2795363 () Bool)

(declare-fun tp!889132 () Bool)

(assert (=> b!2795363 (= e!1765277 tp!889132)))

(declare-fun setNonEmpty!24162 () Bool)

(declare-fun tp!889134 () Bool)

(declare-fun setElem!24162 () Context!4814)

(declare-fun e!1765276 () Bool)

(assert (=> setNonEmpty!24162 (= setRes!24162 (and tp!889134 (inv!44050 setElem!24162) e!1765276))))

(declare-fun setRest!24162 () (InoxSet Context!4814))

(assert (=> setNonEmpty!24162 (= (_2!19499 (h!37844 mapDefault!18082)) ((_ map or) (store ((as const (Array Context!4814 Bool)) false) setElem!24162 true) setRest!24162))))

(declare-fun b!2795364 () Bool)

(declare-fun tp!889133 () Bool)

(assert (=> b!2795364 (= e!1765276 tp!889133)))

(assert (= b!2795362 b!2795363))

(assert (= (and b!2795362 condSetEmpty!24162) setIsEmpty!24162))

(assert (= (and b!2795362 (not condSetEmpty!24162)) setNonEmpty!24162))

(assert (= setNonEmpty!24162 b!2795364))

(assert (= (and b!2795242 ((_ is Cons!32424) mapDefault!18082)) b!2795362))

(declare-fun m!3225361 () Bool)

(assert (=> b!2795362 m!3225361))

(declare-fun m!3225363 () Bool)

(assert (=> setNonEmpty!24162 m!3225363))

(declare-fun tp!889167 () Bool)

(declare-fun setRes!24168 () Bool)

(declare-fun setNonEmpty!24167 () Bool)

(declare-fun e!1765292 () Bool)

(declare-fun setElem!24167 () Context!4814)

(assert (=> setNonEmpty!24167 (= setRes!24168 (and tp!889167 (inv!44050 setElem!24167) e!1765292))))

(declare-fun mapValue!18088 () List!32522)

(declare-fun setRest!24168 () (InoxSet Context!4814))

(assert (=> setNonEmpty!24167 (= (_2!19497 (h!37842 mapValue!18088)) ((_ map or) (store ((as const (Array Context!4814 Bool)) false) setElem!24167 true) setRest!24168))))

(declare-fun b!2795379 () Bool)

(declare-fun tp!889163 () Bool)

(declare-fun e!1765296 () Bool)

(declare-fun tp!889161 () Bool)

(declare-fun e!1765293 () Bool)

(assert (=> b!2795379 (= e!1765296 (and tp!889161 (inv!44050 (_2!19496 (_1!19497 (h!37842 mapValue!18088)))) e!1765293 tp_is_empty!14191 setRes!24168 tp!889163))))

(declare-fun condSetEmpty!24167 () Bool)

(assert (=> b!2795379 (= condSetEmpty!24167 (= (_2!19497 (h!37842 mapValue!18088)) ((as const (Array Context!4814 Bool)) false)))))

(declare-fun setIsEmpty!24167 () Bool)

(assert (=> setIsEmpty!24167 setRes!24168))

(declare-fun mapNonEmpty!18088 () Bool)

(declare-fun mapRes!18088 () Bool)

(declare-fun tp!889159 () Bool)

(assert (=> mapNonEmpty!18088 (= mapRes!18088 (and tp!889159 e!1765296))))

(declare-fun mapRest!18088 () (Array (_ BitVec 32) List!32522))

(declare-fun mapKey!18088 () (_ BitVec 32))

(assert (=> mapNonEmpty!18088 (= mapRest!18081 (store mapRest!18088 mapKey!18088 mapValue!18088))))

(declare-fun b!2795380 () Bool)

(declare-fun tp!889158 () Bool)

(assert (=> b!2795380 (= e!1765292 tp!889158)))

(declare-fun setIsEmpty!24168 () Bool)

(declare-fun setRes!24167 () Bool)

(assert (=> setIsEmpty!24168 setRes!24167))

(declare-fun mapDefault!18088 () List!32522)

(declare-fun tp!889166 () Bool)

(declare-fun e!1765295 () Bool)

(declare-fun e!1765291 () Bool)

(declare-fun tp!889162 () Bool)

(declare-fun b!2795381 () Bool)

(assert (=> b!2795381 (= e!1765295 (and tp!889162 (inv!44050 (_2!19496 (_1!19497 (h!37842 mapDefault!18088)))) e!1765291 tp_is_empty!14191 setRes!24167 tp!889166))))

(declare-fun condSetEmpty!24168 () Bool)

(assert (=> b!2795381 (= condSetEmpty!24168 (= (_2!19497 (h!37842 mapDefault!18088)) ((as const (Array Context!4814 Bool)) false)))))

(declare-fun mapIsEmpty!18088 () Bool)

(assert (=> mapIsEmpty!18088 mapRes!18088))

(declare-fun condMapEmpty!18088 () Bool)

(assert (=> mapNonEmpty!18081 (= condMapEmpty!18088 (= mapRest!18081 ((as const (Array (_ BitVec 32) List!32522)) mapDefault!18088)))))

(assert (=> mapNonEmpty!18081 (= tp!889051 (and e!1765295 mapRes!18088))))

(declare-fun b!2795382 () Bool)

(declare-fun e!1765294 () Bool)

(declare-fun tp!889168 () Bool)

(assert (=> b!2795382 (= e!1765294 tp!889168)))

(declare-fun b!2795383 () Bool)

(declare-fun tp!889160 () Bool)

(assert (=> b!2795383 (= e!1765293 tp!889160)))

(declare-fun tp!889165 () Bool)

(declare-fun setElem!24168 () Context!4814)

(declare-fun setNonEmpty!24168 () Bool)

(assert (=> setNonEmpty!24168 (= setRes!24167 (and tp!889165 (inv!44050 setElem!24168) e!1765294))))

(declare-fun setRest!24167 () (InoxSet Context!4814))

(assert (=> setNonEmpty!24168 (= (_2!19497 (h!37842 mapDefault!18088)) ((_ map or) (store ((as const (Array Context!4814 Bool)) false) setElem!24168 true) setRest!24167))))

(declare-fun b!2795384 () Bool)

(declare-fun tp!889164 () Bool)

(assert (=> b!2795384 (= e!1765291 tp!889164)))

(assert (= (and mapNonEmpty!18081 condMapEmpty!18088) mapIsEmpty!18088))

(assert (= (and mapNonEmpty!18081 (not condMapEmpty!18088)) mapNonEmpty!18088))

(assert (= b!2795379 b!2795383))

(assert (= (and b!2795379 condSetEmpty!24167) setIsEmpty!24167))

(assert (= (and b!2795379 (not condSetEmpty!24167)) setNonEmpty!24167))

(assert (= setNonEmpty!24167 b!2795380))

(assert (= (and mapNonEmpty!18088 ((_ is Cons!32422) mapValue!18088)) b!2795379))

(assert (= b!2795381 b!2795384))

(assert (= (and b!2795381 condSetEmpty!24168) setIsEmpty!24168))

(assert (= (and b!2795381 (not condSetEmpty!24168)) setNonEmpty!24168))

(assert (= setNonEmpty!24168 b!2795382))

(assert (= (and mapNonEmpty!18081 ((_ is Cons!32422) mapDefault!18088)) b!2795381))

(declare-fun m!3225365 () Bool)

(assert (=> b!2795379 m!3225365))

(declare-fun m!3225367 () Bool)

(assert (=> b!2795381 m!3225367))

(declare-fun m!3225369 () Bool)

(assert (=> setNonEmpty!24168 m!3225369))

(declare-fun m!3225371 () Bool)

(assert (=> setNonEmpty!24167 m!3225371))

(declare-fun m!3225373 () Bool)

(assert (=> mapNonEmpty!18088 m!3225373))

(declare-fun setIsEmpty!24169 () Bool)

(declare-fun setRes!24169 () Bool)

(assert (=> setIsEmpty!24169 setRes!24169))

(declare-fun b!2795385 () Bool)

(declare-fun e!1765297 () Bool)

(declare-fun tp!889171 () Bool)

(assert (=> b!2795385 (= e!1765297 tp!889171)))

(declare-fun b!2795386 () Bool)

(declare-fun e!1765298 () Bool)

(declare-fun tp!889173 () Bool)

(assert (=> b!2795386 (= e!1765298 tp!889173)))

(declare-fun tp!889169 () Bool)

(declare-fun e!1765299 () Bool)

(declare-fun tp!889170 () Bool)

(declare-fun b!2795387 () Bool)

(assert (=> b!2795387 (= e!1765299 (and tp!889169 (inv!44050 (_2!19496 (_1!19497 (h!37842 mapValue!18081)))) e!1765297 tp_is_empty!14191 setRes!24169 tp!889170))))

(declare-fun condSetEmpty!24169 () Bool)

(assert (=> b!2795387 (= condSetEmpty!24169 (= (_2!19497 (h!37842 mapValue!18081)) ((as const (Array Context!4814 Bool)) false)))))

(assert (=> mapNonEmpty!18081 (= tp!889058 e!1765299)))

(declare-fun setElem!24169 () Context!4814)

(declare-fun tp!889172 () Bool)

(declare-fun setNonEmpty!24169 () Bool)

(assert (=> setNonEmpty!24169 (= setRes!24169 (and tp!889172 (inv!44050 setElem!24169) e!1765298))))

(declare-fun setRest!24169 () (InoxSet Context!4814))

(assert (=> setNonEmpty!24169 (= (_2!19497 (h!37842 mapValue!18081)) ((_ map or) (store ((as const (Array Context!4814 Bool)) false) setElem!24169 true) setRest!24169))))

(assert (= b!2795387 b!2795385))

(assert (= (and b!2795387 condSetEmpty!24169) setIsEmpty!24169))

(assert (= (and b!2795387 (not condSetEmpty!24169)) setNonEmpty!24169))

(assert (= setNonEmpty!24169 b!2795386))

(assert (= (and mapNonEmpty!18081 ((_ is Cons!32422) mapValue!18081)) b!2795387))

(declare-fun m!3225375 () Bool)

(assert (=> b!2795387 m!3225375))

(declare-fun m!3225377 () Bool)

(assert (=> setNonEmpty!24169 m!3225377))

(declare-fun setIsEmpty!24170 () Bool)

(declare-fun setRes!24170 () Bool)

(assert (=> setIsEmpty!24170 setRes!24170))

(declare-fun b!2795388 () Bool)

(declare-fun e!1765300 () Bool)

(declare-fun tp!889176 () Bool)

(assert (=> b!2795388 (= e!1765300 tp!889176)))

(declare-fun b!2795389 () Bool)

(declare-fun e!1765301 () Bool)

(declare-fun tp!889178 () Bool)

(assert (=> b!2795389 (= e!1765301 tp!889178)))

(declare-fun tp!889175 () Bool)

(declare-fun tp!889174 () Bool)

(declare-fun b!2795390 () Bool)

(declare-fun e!1765302 () Bool)

(assert (=> b!2795390 (= e!1765302 (and tp!889174 (inv!44050 (_2!19496 (_1!19497 (h!37842 (zeroValue!4233 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009)))))))))) e!1765300 tp_is_empty!14191 setRes!24170 tp!889175))))

(declare-fun condSetEmpty!24170 () Bool)

(assert (=> b!2795390 (= condSetEmpty!24170 (= (_2!19497 (h!37842 (zeroValue!4233 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009)))))))) ((as const (Array Context!4814 Bool)) false)))))

(assert (=> b!2795238 (= tp!889055 e!1765302)))

(declare-fun setElem!24170 () Context!4814)

(declare-fun tp!889177 () Bool)

(declare-fun setNonEmpty!24170 () Bool)

(assert (=> setNonEmpty!24170 (= setRes!24170 (and tp!889177 (inv!44050 setElem!24170) e!1765301))))

(declare-fun setRest!24170 () (InoxSet Context!4814))

(assert (=> setNonEmpty!24170 (= (_2!19497 (h!37842 (zeroValue!4233 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4814 Bool)) false) setElem!24170 true) setRest!24170))))

(assert (= b!2795390 b!2795388))

(assert (= (and b!2795390 condSetEmpty!24170) setIsEmpty!24170))

(assert (= (and b!2795390 (not condSetEmpty!24170)) setNonEmpty!24170))

(assert (= setNonEmpty!24170 b!2795389))

(assert (= (and b!2795238 ((_ is Cons!32422) (zeroValue!4233 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009)))))))) b!2795390))

(declare-fun m!3225379 () Bool)

(assert (=> b!2795390 m!3225379))

(declare-fun m!3225381 () Bool)

(assert (=> setNonEmpty!24170 m!3225381))

(declare-fun setIsEmpty!24171 () Bool)

(declare-fun setRes!24171 () Bool)

(assert (=> setIsEmpty!24171 setRes!24171))

(declare-fun b!2795391 () Bool)

(declare-fun e!1765303 () Bool)

(declare-fun tp!889181 () Bool)

(assert (=> b!2795391 (= e!1765303 tp!889181)))

(declare-fun b!2795392 () Bool)

(declare-fun e!1765304 () Bool)

(declare-fun tp!889183 () Bool)

(assert (=> b!2795392 (= e!1765304 tp!889183)))

(declare-fun e!1765305 () Bool)

(declare-fun tp!889179 () Bool)

(declare-fun tp!889180 () Bool)

(declare-fun b!2795393 () Bool)

(assert (=> b!2795393 (= e!1765305 (and tp!889179 (inv!44050 (_2!19496 (_1!19497 (h!37842 (minValue!4233 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009)))))))))) e!1765303 tp_is_empty!14191 setRes!24171 tp!889180))))

(declare-fun condSetEmpty!24171 () Bool)

(assert (=> b!2795393 (= condSetEmpty!24171 (= (_2!19497 (h!37842 (minValue!4233 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009)))))))) ((as const (Array Context!4814 Bool)) false)))))

(assert (=> b!2795238 (= tp!889056 e!1765305)))

(declare-fun setElem!24171 () Context!4814)

(declare-fun tp!889182 () Bool)

(declare-fun setNonEmpty!24171 () Bool)

(assert (=> setNonEmpty!24171 (= setRes!24171 (and tp!889182 (inv!44050 setElem!24171) e!1765304))))

(declare-fun setRest!24171 () (InoxSet Context!4814))

(assert (=> setNonEmpty!24171 (= (_2!19497 (h!37842 (minValue!4233 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4814 Bool)) false) setElem!24171 true) setRest!24171))))

(assert (= b!2795393 b!2795391))

(assert (= (and b!2795393 condSetEmpty!24171) setIsEmpty!24171))

(assert (= (and b!2795393 (not condSetEmpty!24171)) setNonEmpty!24171))

(assert (= setNonEmpty!24171 b!2795392))

(assert (= (and b!2795238 ((_ is Cons!32422) (minValue!4233 (v!34026 (underlying!8151 (v!34027 (underlying!8152 (cache!4023 cacheDown!1009)))))))) b!2795393))

(declare-fun m!3225383 () Bool)

(assert (=> b!2795393 m!3225383))

(declare-fun m!3225385 () Bool)

(assert (=> setNonEmpty!24171 m!3225385))

(declare-fun b!2795394 () Bool)

(declare-fun e!1765306 () Bool)

(declare-fun tp!889184 () Bool)

(assert (=> b!2795394 (= e!1765306 (and tp_is_empty!14191 tp!889184))))

(assert (=> b!2795233 (= tp!889064 e!1765306)))

(assert (= (and b!2795233 ((_ is Cons!32423) (t!228683 testedP!183))) b!2795394))

(declare-fun tp!889188 () Bool)

(declare-fun e!1765308 () Bool)

(declare-fun b!2795395 () Bool)

(declare-fun e!1765309 () Bool)

(declare-fun setRes!24172 () Bool)

(assert (=> b!2795395 (= e!1765309 (and (inv!44050 (_1!19498 (_1!19499 (h!37844 (zeroValue!4234 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890)))))))))) e!1765308 tp_is_empty!14191 setRes!24172 tp!889188))))

(declare-fun condSetEmpty!24172 () Bool)

(assert (=> b!2795395 (= condSetEmpty!24172 (= (_2!19499 (h!37844 (zeroValue!4234 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890)))))))) ((as const (Array Context!4814 Bool)) false)))))

(assert (=> b!2795243 (= tp!889062 e!1765309)))

(declare-fun setIsEmpty!24172 () Bool)

(assert (=> setIsEmpty!24172 setRes!24172))

(declare-fun b!2795396 () Bool)

(declare-fun tp!889185 () Bool)

(assert (=> b!2795396 (= e!1765308 tp!889185)))

(declare-fun e!1765307 () Bool)

(declare-fun tp!889187 () Bool)

(declare-fun setElem!24172 () Context!4814)

(declare-fun setNonEmpty!24172 () Bool)

(assert (=> setNonEmpty!24172 (= setRes!24172 (and tp!889187 (inv!44050 setElem!24172) e!1765307))))

(declare-fun setRest!24172 () (InoxSet Context!4814))

(assert (=> setNonEmpty!24172 (= (_2!19499 (h!37844 (zeroValue!4234 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4814 Bool)) false) setElem!24172 true) setRest!24172))))

(declare-fun b!2795397 () Bool)

(declare-fun tp!889186 () Bool)

(assert (=> b!2795397 (= e!1765307 tp!889186)))

(assert (= b!2795395 b!2795396))

(assert (= (and b!2795395 condSetEmpty!24172) setIsEmpty!24172))

(assert (= (and b!2795395 (not condSetEmpty!24172)) setNonEmpty!24172))

(assert (= setNonEmpty!24172 b!2795397))

(assert (= (and b!2795243 ((_ is Cons!32424) (zeroValue!4234 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890)))))))) b!2795395))

(declare-fun m!3225387 () Bool)

(assert (=> b!2795395 m!3225387))

(declare-fun m!3225389 () Bool)

(assert (=> setNonEmpty!24172 m!3225389))

(declare-fun e!1765311 () Bool)

(declare-fun e!1765312 () Bool)

(declare-fun tp!889192 () Bool)

(declare-fun b!2795398 () Bool)

(declare-fun setRes!24173 () Bool)

(assert (=> b!2795398 (= e!1765312 (and (inv!44050 (_1!19498 (_1!19499 (h!37844 (minValue!4234 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890)))))))))) e!1765311 tp_is_empty!14191 setRes!24173 tp!889192))))

(declare-fun condSetEmpty!24173 () Bool)

(assert (=> b!2795398 (= condSetEmpty!24173 (= (_2!19499 (h!37844 (minValue!4234 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890)))))))) ((as const (Array Context!4814 Bool)) false)))))

(assert (=> b!2795243 (= tp!889052 e!1765312)))

(declare-fun setIsEmpty!24173 () Bool)

(assert (=> setIsEmpty!24173 setRes!24173))

(declare-fun b!2795399 () Bool)

(declare-fun tp!889189 () Bool)

(assert (=> b!2795399 (= e!1765311 tp!889189)))

(declare-fun e!1765310 () Bool)

(declare-fun setElem!24173 () Context!4814)

(declare-fun tp!889191 () Bool)

(declare-fun setNonEmpty!24173 () Bool)

(assert (=> setNonEmpty!24173 (= setRes!24173 (and tp!889191 (inv!44050 setElem!24173) e!1765310))))

(declare-fun setRest!24173 () (InoxSet Context!4814))

(assert (=> setNonEmpty!24173 (= (_2!19499 (h!37844 (minValue!4234 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4814 Bool)) false) setElem!24173 true) setRest!24173))))

(declare-fun b!2795400 () Bool)

(declare-fun tp!889190 () Bool)

(assert (=> b!2795400 (= e!1765310 tp!889190)))

(assert (= b!2795398 b!2795399))

(assert (= (and b!2795398 condSetEmpty!24173) setIsEmpty!24173))

(assert (= (and b!2795398 (not condSetEmpty!24173)) setNonEmpty!24173))

(assert (= setNonEmpty!24173 b!2795400))

(assert (= (and b!2795243 ((_ is Cons!32424) (minValue!4234 (v!34028 (underlying!8153 (v!34029 (underlying!8154 (cache!4024 cacheUp!890)))))))) b!2795398))

(declare-fun m!3225391 () Bool)

(assert (=> b!2795398 m!3225391))

(declare-fun m!3225393 () Bool)

(assert (=> setNonEmpty!24173 m!3225393))

(check-sat (not b!2795288) (not b!2795301) (not setNonEmpty!24155) (not b!2795362) (not b!2795387) b_and!203879 (not b!2795396) (not b!2795323) (not b!2795394) (not b!2795399) (not b!2795303) (not b_next!79845) tp_is_empty!14191 (not setNonEmpty!24161) (not b!2795247) (not b!2795349) (not b!2795364) (not d!812687) (not d!812685) (not b!2795382) (not b!2795327) (not b!2795381) (not b!2795385) (not b!2795350) (not b_next!79847) (not d!812677) b_and!203883 (not b_next!79851) (not b!2795386) (not d!812675) (not b!2795393) (not setNonEmpty!24171) (not b!2795391) (not d!812667) (not b!2795260) b_and!203885 (not b!2795339) (not setNonEmpty!24154) (not b!2795326) (not b!2795363) (not b!2795398) (not b!2795278) (not b!2795290) (not b!2795383) (not b!2795265) (not b!2795359) (not b!2795294) (not b!2795380) (not b!2795250) (not b_next!79849) (not b!2795328) (not b!2795293) (not setNonEmpty!24167) (not b!2795395) (not d!812663) (not b!2795292) (not setNonEmpty!24170) (not b!2795397) (not setNonEmpty!24172) (not b!2795392) (not b!2795308) (not b!2795390) (not d!812673) (not mapNonEmpty!18088) (not b!2795261) (not b!2795348) (not setNonEmpty!24173) (not b!2795379) (not b!2795289) (not b!2795388) (not b!2795264) (not mapNonEmpty!18085) (not b!2795271) (not b!2795361) b_and!203881 (not d!812669) (not b!2795325) (not b!2795360) (not b!2795324) (not setNonEmpty!24168) (not b!2795226) (not setNonEmpty!24158) (not setNonEmpty!24169) (not b!2795389) (not d!812671) (not b!2795384) (not setNonEmpty!24162) (not b!2795337) (not b!2795338) (not b!2795400))
(check-sat (not b_next!79845) (not b_next!79847) b_and!203885 (not b_next!79849) b_and!203879 b_and!203881 b_and!203883 (not b_next!79851))
