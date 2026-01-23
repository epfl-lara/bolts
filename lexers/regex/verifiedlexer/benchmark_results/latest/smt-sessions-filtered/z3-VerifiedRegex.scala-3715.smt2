; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208878 () Bool)

(assert start!208878)

(declare-fun b!2153093 () Bool)

(declare-fun b_free!63581 () Bool)

(declare-fun b_next!64285 () Bool)

(assert (=> b!2153093 (= b_free!63581 (not b_next!64285))))

(declare-fun tp!669511 () Bool)

(declare-fun b_and!173197 () Bool)

(assert (=> b!2153093 (= tp!669511 b_and!173197)))

(declare-fun b!2153087 () Bool)

(declare-fun b_free!63583 () Bool)

(declare-fun b_next!64287 () Bool)

(assert (=> b!2153087 (= b_free!63583 (not b_next!64287))))

(declare-fun tp!669520 () Bool)

(declare-fun b_and!173199 () Bool)

(assert (=> b!2153087 (= tp!669520 b_and!173199)))

(declare-fun b!2153090 () Bool)

(assert (=> b!2153090 true))

(declare-fun bs!445714 () Bool)

(declare-fun b!2153097 () Bool)

(assert (= bs!445714 (and b!2153097 b!2153090)))

(declare-fun lambda!81146 () Int)

(declare-fun lambda!81145 () Int)

(assert (=> bs!445714 (not (= lambda!81146 lambda!81145))))

(assert (=> b!2153097 true))

(declare-datatypes ((C!11940 0))(
  ( (C!11941 (val!6956 Int)) )
))
(declare-datatypes ((Regex!5897 0))(
  ( (ElementMatch!5897 (c!341391 C!11940)) (Concat!10199 (regOne!12306 Regex!5897) (regTwo!12306 Regex!5897)) (EmptyExpr!5897) (Star!5897 (reg!6226 Regex!5897)) (EmptyLang!5897) (Union!5897 (regOne!12307 Regex!5897) (regTwo!12307 Regex!5897)) )
))
(declare-datatypes ((List!24863 0))(
  ( (Nil!24779) (Cons!24779 (h!30180 Regex!5897) (t!197411 List!24863)) )
))
(declare-datatypes ((Context!2934 0))(
  ( (Context!2935 (exprs!1967 List!24863)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3678 0))(
  ( (tuple3!3679 (_1!14571 (InoxSet Context!2934)) (_2!14571 Int) (_3!2309 Int)) )
))
(declare-datatypes ((tuple2!24524 0))(
  ( (tuple2!24525 (_1!14572 tuple3!3678) (_2!14572 Int)) )
))
(declare-datatypes ((List!24864 0))(
  ( (Nil!24780) (Cons!24780 (h!30181 tuple2!24524) (t!197412 List!24864)) )
))
(declare-datatypes ((array!9837 0))(
  ( (array!9838 (arr!4392 (Array (_ BitVec 32) (_ BitVec 64))) (size!19361 (_ BitVec 32))) )
))
(declare-datatypes ((array!9839 0))(
  ( (array!9840 (arr!4393 (Array (_ BitVec 32) List!24864)) (size!19362 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5796 0))(
  ( (LongMapFixedSize!5797 (defaultEntry!3263 Int) (mask!7162 (_ BitVec 32)) (extraKeys!3146 (_ BitVec 32)) (zeroValue!3156 List!24864) (minValue!3156 List!24864) (_size!5847 (_ BitVec 32)) (_keys!3195 array!9837) (_values!3178 array!9839) (_vacant!2959 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11417 0))(
  ( (Cell!11418 (v!29259 LongMapFixedSize!5796)) )
))
(declare-datatypes ((Hashable!2812 0))(
  ( (HashableExt!2811 (__x!16870 Int)) )
))
(declare-datatypes ((MutLongMap!2898 0))(
  ( (LongMap!2898 (underlying!5991 Cell!11417)) (MutLongMapExt!2897 (__x!16871 Int)) )
))
(declare-datatypes ((Cell!11419 0))(
  ( (Cell!11420 (v!29260 MutLongMap!2898)) )
))
(declare-datatypes ((MutableMap!2812 0))(
  ( (MutableMapExt!2811 (__x!16872 Int)) (HashMap!2812 (underlying!5992 Cell!11419) (hashF!4735 Hashable!2812) (_size!5848 (_ BitVec 32)) (defaultValue!2974 Int)) )
))
(declare-datatypes ((List!24865 0))(
  ( (Nil!24781) (Cons!24781 (h!30182 C!11940) (t!197413 List!24865)) )
))
(declare-datatypes ((IArray!16071 0))(
  ( (IArray!16072 (innerList!8093 List!24865)) )
))
(declare-datatypes ((Conc!8033 0))(
  ( (Node!8033 (left!19060 Conc!8033) (right!19390 Conc!8033) (csize!16296 Int) (cheight!8244 Int)) (Leaf!11749 (xs!10975 IArray!16071) (csize!16297 Int)) (Empty!8033) )
))
(declare-datatypes ((BalanceConc!15828 0))(
  ( (BalanceConc!15829 (c!341392 Conc!8033)) )
))
(declare-datatypes ((CacheFurthestNullable!982 0))(
  ( (CacheFurthestNullable!983 (cache!3193 MutableMap!2812) (totalInput!3301 BalanceConc!15828)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!982)

(declare-fun e!1377033 () Bool)

(declare-fun e!1377030 () Bool)

(declare-fun e!1377038 () Bool)

(declare-fun b!2153079 () Bool)

(declare-fun inv!32723 (BalanceConc!15828) Bool)

(assert (=> b!2153079 (= e!1377038 (and e!1377030 (inv!32723 (totalInput!3301 cacheFurthestNullable!118)) e!1377033))))

(declare-fun e!1377031 () Bool)

(declare-fun tp!669521 () Bool)

(declare-fun e!1377029 () Bool)

(declare-datatypes ((StackFrame!328 0))(
  ( (StackFrame!329 (z!5966 (InoxSet Context!2934)) (from!2809 Int) (lastNullablePos!496 Int) (res!928390 Int) (totalInput!3302 BalanceConc!15828)) )
))
(declare-datatypes ((List!24866 0))(
  ( (Nil!24782) (Cons!24782 (h!30183 StackFrame!328) (t!197414 List!24866)) )
))
(declare-fun stack!12 () List!24866)

(declare-fun b!2153080 () Bool)

(declare-fun inv!32724 (StackFrame!328) Bool)

(assert (=> b!2153080 (= e!1377031 (and (inv!32724 (h!30183 stack!12)) e!1377029 tp!669521))))

(declare-fun setIsEmpty!17398 () Bool)

(declare-fun setRes!17398 () Bool)

(assert (=> setIsEmpty!17398 setRes!17398))

(declare-fun b!2153081 () Bool)

(declare-fun e!1377028 () Bool)

(declare-fun tp!669519 () Bool)

(assert (=> b!2153081 (= e!1377028 tp!669519)))

(declare-fun setNonEmpty!17398 () Bool)

(declare-fun tp!669510 () Bool)

(declare-fun setElem!17398 () Context!2934)

(declare-fun inv!32725 (Context!2934) Bool)

(assert (=> setNonEmpty!17398 (= setRes!17398 (and tp!669510 (inv!32725 setElem!17398) e!1377028))))

(declare-fun setRest!17398 () (InoxSet Context!2934))

(assert (=> setNonEmpty!17398 (= (z!5966 (h!30183 stack!12)) ((_ map or) (store ((as const (Array Context!2934 Bool)) false) setElem!17398 true) setRest!17398))))

(declare-fun b!2153082 () Bool)

(declare-fun e!1377037 () Bool)

(declare-fun tp!669515 () Bool)

(declare-fun inv!32726 (Conc!8033) Bool)

(assert (=> b!2153082 (= e!1377037 (and (inv!32726 (c!341392 (totalInput!3302 (h!30183 stack!12)))) tp!669515))))

(declare-fun b!2153083 () Bool)

(declare-fun res!928388 () Bool)

(declare-fun e!1377027 () Bool)

(assert (=> b!2153083 (=> (not res!928388) (not e!1377027))))

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(get-info :version)

(assert (=> b!2153083 (= res!928388 (and (not ((_ is Nil!24782) stack!12)) (or (<= totalInputSize!324 1048576) (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun b!2153084 () Bool)

(declare-fun e!1377026 () Bool)

(declare-fun e!1377032 () Bool)

(assert (=> b!2153084 (= e!1377026 e!1377032)))

(declare-fun b!2153085 () Bool)

(declare-fun e!1377039 () Bool)

(declare-fun tp!669517 () Bool)

(declare-fun mapRes!13709 () Bool)

(assert (=> b!2153085 (= e!1377039 (and tp!669517 mapRes!13709))))

(declare-fun condMapEmpty!13709 () Bool)

(declare-fun mapDefault!13709 () List!24864)

(assert (=> b!2153085 (= condMapEmpty!13709 (= (arr!4393 (_values!3178 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24864)) mapDefault!13709)))))

(declare-fun b!2153086 () Bool)

(declare-fun e!1377035 () Bool)

(assert (=> b!2153086 (= e!1377035 (or (< (lastNullablePos!496 (h!30183 stack!12)) (- 1)) (>= (lastNullablePos!496 (h!30183 stack!12)) (from!2809 (h!30183 stack!12)))))))

(declare-fun tp!669514 () Bool)

(declare-fun e!1377025 () Bool)

(declare-fun tp!669516 () Bool)

(declare-fun array_inv!3148 (array!9837) Bool)

(declare-fun array_inv!3149 (array!9839) Bool)

(assert (=> b!2153087 (= e!1377025 (and tp!669520 tp!669514 tp!669516 (array_inv!3148 (_keys!3195 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))) (array_inv!3149 (_values!3178 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))) e!1377039))))

(declare-fun res!928387 () Bool)

(assert (=> start!208878 (=> (not res!928387) (not e!1377027))))

(declare-fun valid!2235 (CacheFurthestNullable!982) Bool)

(assert (=> start!208878 (= res!928387 (valid!2235 cacheFurthestNullable!118))))

(assert (=> start!208878 e!1377027))

(declare-fun inv!32727 (CacheFurthestNullable!982) Bool)

(assert (=> start!208878 (and (inv!32727 cacheFurthestNullable!118) e!1377038)))

(assert (=> start!208878 true))

(declare-fun totalInput!880 () BalanceConc!15828)

(declare-fun e!1377034 () Bool)

(assert (=> start!208878 (and (inv!32723 totalInput!880) e!1377034)))

(assert (=> start!208878 e!1377031))

(declare-fun b!2153088 () Bool)

(declare-fun res!928383 () Bool)

(assert (=> b!2153088 (=> (not res!928383) (not e!1377027))))

(assert (=> b!2153088 (= res!928383 (= (totalInput!3301 cacheFurthestNullable!118) totalInput!880))))

(declare-fun b!2153089 () Bool)

(assert (=> b!2153089 (= e!1377027 e!1377035)))

(declare-fun res!928386 () Bool)

(assert (=> b!2153089 (=> (not res!928386) (not e!1377035))))

(declare-fun res!17610 () Int)

(assert (=> b!2153089 (= res!928386 (and (= (res!928390 (h!30183 stack!12)) res!17610) (>= (from!2809 (h!30183 stack!12)) 0)))))

(declare-datatypes ((Unit!37908 0))(
  ( (Unit!37909) )
))
(declare-fun lt!801325 () Unit!37908)

(declare-fun lemmaInvariant!386 (CacheFurthestNullable!982) Unit!37908)

(assert (=> b!2153089 (= lt!801325 (lemmaInvariant!386 cacheFurthestNullable!118))))

(declare-fun res!928384 () Bool)

(assert (=> b!2153090 (=> (not res!928384) (not e!1377027))))

(declare-fun forall!5075 (List!24866 Int) Bool)

(assert (=> b!2153090 (= res!928384 (forall!5075 stack!12 lambda!81145))))

(declare-fun b!2153091 () Bool)

(assert (=> b!2153091 (= e!1377032 e!1377025)))

(declare-fun b!2153092 () Bool)

(declare-fun res!928385 () Bool)

(assert (=> b!2153092 (=> (not res!928385) (not e!1377035))))

(declare-fun size!19363 (BalanceConc!15828) Int)

(assert (=> b!2153092 (= res!928385 (<= (from!2809 (h!30183 stack!12)) (size!19363 totalInput!880)))))

(declare-fun e!1377040 () Bool)

(assert (=> b!2153093 (= e!1377030 (and e!1377040 tp!669511))))

(declare-fun mapIsEmpty!13709 () Bool)

(assert (=> mapIsEmpty!13709 mapRes!13709))

(declare-fun b!2153094 () Bool)

(declare-fun tp!669512 () Bool)

(assert (=> b!2153094 (= e!1377034 (and (inv!32726 (c!341392 totalInput!880)) tp!669512))))

(declare-fun b!2153095 () Bool)

(declare-fun tp!669509 () Bool)

(assert (=> b!2153095 (= e!1377033 (and (inv!32726 (c!341392 (totalInput!3301 cacheFurthestNullable!118))) tp!669509))))

(declare-fun b!2153096 () Bool)

(assert (=> b!2153096 (= e!1377029 (and setRes!17398 (inv!32723 (totalInput!3302 (h!30183 stack!12))) e!1377037))))

(declare-fun condSetEmpty!17398 () Bool)

(assert (=> b!2153096 (= condSetEmpty!17398 (= (z!5966 (h!30183 stack!12)) ((as const (Array Context!2934 Bool)) false)))))

(declare-fun res!928389 () Bool)

(assert (=> b!2153097 (=> (not res!928389) (not e!1377027))))

(assert (=> b!2153097 (= res!928389 (forall!5075 stack!12 lambda!81146))))

(declare-fun mapNonEmpty!13709 () Bool)

(declare-fun tp!669518 () Bool)

(declare-fun tp!669513 () Bool)

(assert (=> mapNonEmpty!13709 (= mapRes!13709 (and tp!669518 tp!669513))))

(declare-fun mapValue!13709 () List!24864)

(declare-fun mapRest!13709 () (Array (_ BitVec 32) List!24864))

(declare-fun mapKey!13709 () (_ BitVec 32))

(assert (=> mapNonEmpty!13709 (= (arr!4393 (_values!3178 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))) (store mapRest!13709 mapKey!13709 mapValue!13709))))

(declare-fun b!2153098 () Bool)

(declare-fun lt!801326 () MutLongMap!2898)

(assert (=> b!2153098 (= e!1377040 (and e!1377026 ((_ is LongMap!2898) lt!801326)))))

(assert (=> b!2153098 (= lt!801326 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))

(assert (= (and start!208878 res!928387) b!2153088))

(assert (= (and b!2153088 res!928383) b!2153090))

(assert (= (and b!2153090 res!928384) b!2153097))

(assert (= (and b!2153097 res!928389) b!2153083))

(assert (= (and b!2153083 res!928388) b!2153089))

(assert (= (and b!2153089 res!928386) b!2153092))

(assert (= (and b!2153092 res!928385) b!2153086))

(assert (= (and b!2153085 condMapEmpty!13709) mapIsEmpty!13709))

(assert (= (and b!2153085 (not condMapEmpty!13709)) mapNonEmpty!13709))

(assert (= b!2153087 b!2153085))

(assert (= b!2153091 b!2153087))

(assert (= b!2153084 b!2153091))

(assert (= (and b!2153098 ((_ is LongMap!2898) (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))) b!2153084))

(assert (= b!2153093 b!2153098))

(assert (= (and b!2153079 ((_ is HashMap!2812) (cache!3193 cacheFurthestNullable!118))) b!2153093))

(assert (= b!2153079 b!2153095))

(assert (= start!208878 b!2153079))

(assert (= start!208878 b!2153094))

(assert (= (and b!2153096 condSetEmpty!17398) setIsEmpty!17398))

(assert (= (and b!2153096 (not condSetEmpty!17398)) setNonEmpty!17398))

(assert (= setNonEmpty!17398 b!2153081))

(assert (= b!2153096 b!2153082))

(assert (= b!2153080 b!2153096))

(assert (= (and start!208878 ((_ is Cons!24782) stack!12)) b!2153080))

(declare-fun m!2594956 () Bool)

(assert (=> b!2153095 m!2594956))

(declare-fun m!2594958 () Bool)

(assert (=> b!2153094 m!2594958))

(declare-fun m!2594960 () Bool)

(assert (=> b!2153087 m!2594960))

(declare-fun m!2594962 () Bool)

(assert (=> b!2153087 m!2594962))

(declare-fun m!2594964 () Bool)

(assert (=> mapNonEmpty!13709 m!2594964))

(declare-fun m!2594966 () Bool)

(assert (=> b!2153079 m!2594966))

(declare-fun m!2594968 () Bool)

(assert (=> b!2153090 m!2594968))

(declare-fun m!2594970 () Bool)

(assert (=> setNonEmpty!17398 m!2594970))

(declare-fun m!2594972 () Bool)

(assert (=> b!2153096 m!2594972))

(declare-fun m!2594974 () Bool)

(assert (=> b!2153097 m!2594974))

(declare-fun m!2594976 () Bool)

(assert (=> b!2153092 m!2594976))

(declare-fun m!2594978 () Bool)

(assert (=> start!208878 m!2594978))

(declare-fun m!2594980 () Bool)

(assert (=> start!208878 m!2594980))

(declare-fun m!2594982 () Bool)

(assert (=> start!208878 m!2594982))

(declare-fun m!2594984 () Bool)

(assert (=> b!2153080 m!2594984))

(declare-fun m!2594986 () Bool)

(assert (=> b!2153082 m!2594986))

(declare-fun m!2594988 () Bool)

(assert (=> b!2153089 m!2594988))

(check-sat (not b!2153095) (not b!2153097) (not setNonEmpty!17398) (not b!2153085) (not b!2153082) (not b!2153096) (not b!2153079) (not b_next!64285) b_and!173197 (not mapNonEmpty!13709) (not b!2153087) (not b!2153094) (not b!2153092) b_and!173199 (not b_next!64287) (not b!2153090) (not start!208878) (not b!2153089) (not b!2153081) (not b!2153080))
(check-sat b_and!173197 b_and!173199 (not b_next!64285) (not b_next!64287))
(get-model)

(declare-fun d!645958 () Bool)

(declare-fun res!928395 () Bool)

(declare-fun e!1377045 () Bool)

(assert (=> d!645958 (=> res!928395 e!1377045)))

(assert (=> d!645958 (= res!928395 ((_ is Nil!24782) stack!12))))

(assert (=> d!645958 (= (forall!5075 stack!12 lambda!81145) e!1377045)))

(declare-fun b!2153107 () Bool)

(declare-fun e!1377046 () Bool)

(assert (=> b!2153107 (= e!1377045 e!1377046)))

(declare-fun res!928396 () Bool)

(assert (=> b!2153107 (=> (not res!928396) (not e!1377046))))

(declare-fun dynLambda!11405 (Int StackFrame!328) Bool)

(assert (=> b!2153107 (= res!928396 (dynLambda!11405 lambda!81145 (h!30183 stack!12)))))

(declare-fun b!2153108 () Bool)

(assert (=> b!2153108 (= e!1377046 (forall!5075 (t!197414 stack!12) lambda!81145))))

(assert (= (and d!645958 (not res!928395)) b!2153107))

(assert (= (and b!2153107 res!928396) b!2153108))

(declare-fun b_lambda!70889 () Bool)

(assert (=> (not b_lambda!70889) (not b!2153107)))

(declare-fun m!2594990 () Bool)

(assert (=> b!2153107 m!2594990))

(declare-fun m!2594992 () Bool)

(assert (=> b!2153108 m!2594992))

(assert (=> b!2153090 d!645958))

(declare-fun d!645960 () Bool)

(declare-fun lt!801329 () Int)

(declare-fun size!19364 (List!24865) Int)

(declare-fun list!9562 (BalanceConc!15828) List!24865)

(assert (=> d!645960 (= lt!801329 (size!19364 (list!9562 totalInput!880)))))

(declare-fun size!19365 (Conc!8033) Int)

(assert (=> d!645960 (= lt!801329 (size!19365 (c!341392 totalInput!880)))))

(assert (=> d!645960 (= (size!19363 totalInput!880) lt!801329)))

(declare-fun bs!445715 () Bool)

(assert (= bs!445715 d!645960))

(declare-fun m!2594994 () Bool)

(assert (=> bs!445715 m!2594994))

(assert (=> bs!445715 m!2594994))

(declare-fun m!2594996 () Bool)

(assert (=> bs!445715 m!2594996))

(declare-fun m!2594998 () Bool)

(assert (=> bs!445715 m!2594998))

(assert (=> b!2153092 d!645960))

(declare-fun d!645962 () Bool)

(declare-fun lambda!81149 () Int)

(declare-fun forall!5076 (List!24863 Int) Bool)

(assert (=> d!645962 (= (inv!32725 setElem!17398) (forall!5076 (exprs!1967 setElem!17398) lambda!81149))))

(declare-fun bs!445716 () Bool)

(assert (= bs!445716 d!645962))

(declare-fun m!2595000 () Bool)

(assert (=> bs!445716 m!2595000))

(assert (=> setNonEmpty!17398 d!645962))

(declare-fun d!645964 () Bool)

(declare-fun c!341395 () Bool)

(assert (=> d!645964 (= c!341395 ((_ is Node!8033) (c!341392 (totalInput!3302 (h!30183 stack!12)))))))

(declare-fun e!1377051 () Bool)

(assert (=> d!645964 (= (inv!32726 (c!341392 (totalInput!3302 (h!30183 stack!12)))) e!1377051)))

(declare-fun b!2153115 () Bool)

(declare-fun inv!32728 (Conc!8033) Bool)

(assert (=> b!2153115 (= e!1377051 (inv!32728 (c!341392 (totalInput!3302 (h!30183 stack!12)))))))

(declare-fun b!2153116 () Bool)

(declare-fun e!1377052 () Bool)

(assert (=> b!2153116 (= e!1377051 e!1377052)))

(declare-fun res!928399 () Bool)

(assert (=> b!2153116 (= res!928399 (not ((_ is Leaf!11749) (c!341392 (totalInput!3302 (h!30183 stack!12))))))))

(assert (=> b!2153116 (=> res!928399 e!1377052)))

(declare-fun b!2153117 () Bool)

(declare-fun inv!32729 (Conc!8033) Bool)

(assert (=> b!2153117 (= e!1377052 (inv!32729 (c!341392 (totalInput!3302 (h!30183 stack!12)))))))

(assert (= (and d!645964 c!341395) b!2153115))

(assert (= (and d!645964 (not c!341395)) b!2153116))

(assert (= (and b!2153116 (not res!928399)) b!2153117))

(declare-fun m!2595002 () Bool)

(assert (=> b!2153115 m!2595002))

(declare-fun m!2595004 () Bool)

(assert (=> b!2153117 m!2595004))

(assert (=> b!2153082 d!645964))

(declare-fun d!645966 () Bool)

(declare-fun c!341396 () Bool)

(assert (=> d!645966 (= c!341396 ((_ is Node!8033) (c!341392 totalInput!880)))))

(declare-fun e!1377053 () Bool)

(assert (=> d!645966 (= (inv!32726 (c!341392 totalInput!880)) e!1377053)))

(declare-fun b!2153118 () Bool)

(assert (=> b!2153118 (= e!1377053 (inv!32728 (c!341392 totalInput!880)))))

(declare-fun b!2153119 () Bool)

(declare-fun e!1377054 () Bool)

(assert (=> b!2153119 (= e!1377053 e!1377054)))

(declare-fun res!928400 () Bool)

(assert (=> b!2153119 (= res!928400 (not ((_ is Leaf!11749) (c!341392 totalInput!880))))))

(assert (=> b!2153119 (=> res!928400 e!1377054)))

(declare-fun b!2153120 () Bool)

(assert (=> b!2153120 (= e!1377054 (inv!32729 (c!341392 totalInput!880)))))

(assert (= (and d!645966 c!341396) b!2153118))

(assert (= (and d!645966 (not c!341396)) b!2153119))

(assert (= (and b!2153119 (not res!928400)) b!2153120))

(declare-fun m!2595006 () Bool)

(assert (=> b!2153118 m!2595006))

(declare-fun m!2595008 () Bool)

(assert (=> b!2153120 m!2595008))

(assert (=> b!2153094 d!645966))

(declare-fun d!645968 () Bool)

(declare-fun validCacheMapFurthestNullable!159 (MutableMap!2812 BalanceConc!15828) Bool)

(assert (=> d!645968 (= (valid!2235 cacheFurthestNullable!118) (validCacheMapFurthestNullable!159 (cache!3193 cacheFurthestNullable!118) (totalInput!3301 cacheFurthestNullable!118)))))

(declare-fun bs!445717 () Bool)

(assert (= bs!445717 d!645968))

(declare-fun m!2595010 () Bool)

(assert (=> bs!445717 m!2595010))

(assert (=> start!208878 d!645968))

(declare-fun d!645970 () Bool)

(declare-fun res!928403 () Bool)

(declare-fun e!1377057 () Bool)

(assert (=> d!645970 (=> (not res!928403) (not e!1377057))))

(assert (=> d!645970 (= res!928403 ((_ is HashMap!2812) (cache!3193 cacheFurthestNullable!118)))))

(assert (=> d!645970 (= (inv!32727 cacheFurthestNullable!118) e!1377057)))

(declare-fun b!2153123 () Bool)

(assert (=> b!2153123 (= e!1377057 (validCacheMapFurthestNullable!159 (cache!3193 cacheFurthestNullable!118) (totalInput!3301 cacheFurthestNullable!118)))))

(assert (= (and d!645970 res!928403) b!2153123))

(assert (=> b!2153123 m!2595010))

(assert (=> start!208878 d!645970))

(declare-fun d!645972 () Bool)

(declare-fun isBalanced!2491 (Conc!8033) Bool)

(assert (=> d!645972 (= (inv!32723 totalInput!880) (isBalanced!2491 (c!341392 totalInput!880)))))

(declare-fun bs!445718 () Bool)

(assert (= bs!445718 d!645972))

(declare-fun m!2595012 () Bool)

(assert (=> bs!445718 m!2595012))

(assert (=> start!208878 d!645972))

(declare-fun d!645974 () Bool)

(declare-fun c!341397 () Bool)

(assert (=> d!645974 (= c!341397 ((_ is Node!8033) (c!341392 (totalInput!3301 cacheFurthestNullable!118))))))

(declare-fun e!1377058 () Bool)

(assert (=> d!645974 (= (inv!32726 (c!341392 (totalInput!3301 cacheFurthestNullable!118))) e!1377058)))

(declare-fun b!2153124 () Bool)

(assert (=> b!2153124 (= e!1377058 (inv!32728 (c!341392 (totalInput!3301 cacheFurthestNullable!118))))))

(declare-fun b!2153125 () Bool)

(declare-fun e!1377059 () Bool)

(assert (=> b!2153125 (= e!1377058 e!1377059)))

(declare-fun res!928404 () Bool)

(assert (=> b!2153125 (= res!928404 (not ((_ is Leaf!11749) (c!341392 (totalInput!3301 cacheFurthestNullable!118)))))))

(assert (=> b!2153125 (=> res!928404 e!1377059)))

(declare-fun b!2153126 () Bool)

(assert (=> b!2153126 (= e!1377059 (inv!32729 (c!341392 (totalInput!3301 cacheFurthestNullable!118))))))

(assert (= (and d!645974 c!341397) b!2153124))

(assert (= (and d!645974 (not c!341397)) b!2153125))

(assert (= (and b!2153125 (not res!928404)) b!2153126))

(declare-fun m!2595014 () Bool)

(assert (=> b!2153124 m!2595014))

(declare-fun m!2595016 () Bool)

(assert (=> b!2153126 m!2595016))

(assert (=> b!2153095 d!645974))

(declare-fun d!645976 () Bool)

(assert (=> d!645976 (= (array_inv!3148 (_keys!3195 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))) (bvsge (size!19361 (_keys!3195 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2153087 d!645976))

(declare-fun d!645978 () Bool)

(assert (=> d!645978 (= (array_inv!3149 (_values!3178 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))) (bvsge (size!19362 (_values!3178 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2153087 d!645978))

(declare-fun d!645980 () Bool)

(assert (=> d!645980 (= (inv!32723 (totalInput!3302 (h!30183 stack!12))) (isBalanced!2491 (c!341392 (totalInput!3302 (h!30183 stack!12)))))))

(declare-fun bs!445719 () Bool)

(assert (= bs!445719 d!645980))

(declare-fun m!2595018 () Bool)

(assert (=> bs!445719 m!2595018))

(assert (=> b!2153096 d!645980))

(declare-fun d!645982 () Bool)

(declare-fun res!928405 () Bool)

(declare-fun e!1377060 () Bool)

(assert (=> d!645982 (=> res!928405 e!1377060)))

(assert (=> d!645982 (= res!928405 ((_ is Nil!24782) stack!12))))

(assert (=> d!645982 (= (forall!5075 stack!12 lambda!81146) e!1377060)))

(declare-fun b!2153127 () Bool)

(declare-fun e!1377061 () Bool)

(assert (=> b!2153127 (= e!1377060 e!1377061)))

(declare-fun res!928406 () Bool)

(assert (=> b!2153127 (=> (not res!928406) (not e!1377061))))

(assert (=> b!2153127 (= res!928406 (dynLambda!11405 lambda!81146 (h!30183 stack!12)))))

(declare-fun b!2153128 () Bool)

(assert (=> b!2153128 (= e!1377061 (forall!5075 (t!197414 stack!12) lambda!81146))))

(assert (= (and d!645982 (not res!928405)) b!2153127))

(assert (= (and b!2153127 res!928406) b!2153128))

(declare-fun b_lambda!70891 () Bool)

(assert (=> (not b_lambda!70891) (not b!2153127)))

(declare-fun m!2595020 () Bool)

(assert (=> b!2153127 m!2595020))

(declare-fun m!2595022 () Bool)

(assert (=> b!2153128 m!2595022))

(assert (=> b!2153097 d!645982))

(declare-fun d!645984 () Bool)

(assert (=> d!645984 (= (inv!32723 (totalInput!3301 cacheFurthestNullable!118)) (isBalanced!2491 (c!341392 (totalInput!3301 cacheFurthestNullable!118))))))

(declare-fun bs!445720 () Bool)

(assert (= bs!445720 d!645984))

(declare-fun m!2595024 () Bool)

(assert (=> bs!445720 m!2595024))

(assert (=> b!2153079 d!645984))

(declare-fun b!2153141 () Bool)

(declare-fun res!928424 () Bool)

(declare-fun e!1377067 () Bool)

(assert (=> b!2153141 (=> (not res!928424) (not e!1377067))))

(assert (=> b!2153141 (= res!928424 (= (size!19363 (totalInput!3302 (h!30183 stack!12))) (size!19363 (totalInput!3302 (h!30183 stack!12)))))))

(declare-fun b!2153142 () Bool)

(declare-fun res!928421 () Bool)

(assert (=> b!2153142 (=> (not res!928421) (not e!1377067))))

(assert (=> b!2153142 (= res!928421 (<= (from!2809 (h!30183 stack!12)) (size!19363 (totalInput!3302 (h!30183 stack!12)))))))

(declare-fun b!2153143 () Bool)

(declare-fun furthestNullablePosition!119 ((InoxSet Context!2934) Int BalanceConc!15828 Int Int) Int)

(assert (=> b!2153143 (= e!1377067 (= (res!928390 (h!30183 stack!12)) (furthestNullablePosition!119 (z!5966 (h!30183 stack!12)) (from!2809 (h!30183 stack!12)) (totalInput!3302 (h!30183 stack!12)) (size!19363 (totalInput!3302 (h!30183 stack!12))) (lastNullablePos!496 (h!30183 stack!12)))))))

(declare-fun b!2153145 () Bool)

(declare-fun res!928419 () Bool)

(assert (=> b!2153145 (=> (not res!928419) (not e!1377067))))

(declare-fun e!1377066 () Bool)

(assert (=> b!2153145 (= res!928419 e!1377066)))

(declare-fun res!928422 () Bool)

(assert (=> b!2153145 (=> res!928422 e!1377066)))

(declare-fun nullableZipper!210 ((InoxSet Context!2934)) Bool)

(assert (=> b!2153145 (= res!928422 (not (nullableZipper!210 (z!5966 (h!30183 stack!12)))))))

(declare-fun b!2153146 () Bool)

(assert (=> b!2153146 (= e!1377066 (= (lastNullablePos!496 (h!30183 stack!12)) (- (from!2809 (h!30183 stack!12)) 1)))))

(declare-fun d!645986 () Bool)

(declare-fun res!928423 () Bool)

(assert (=> d!645986 (=> (not res!928423) (not e!1377067))))

(assert (=> d!645986 (= res!928423 (>= (from!2809 (h!30183 stack!12)) 0))))

(assert (=> d!645986 (= (inv!32724 (h!30183 stack!12)) e!1377067)))

(declare-fun b!2153144 () Bool)

(declare-fun res!928420 () Bool)

(assert (=> b!2153144 (=> (not res!928420) (not e!1377067))))

(assert (=> b!2153144 (= res!928420 (and (>= (lastNullablePos!496 (h!30183 stack!12)) (- 1)) (< (lastNullablePos!496 (h!30183 stack!12)) (from!2809 (h!30183 stack!12)))))))

(assert (= (and d!645986 res!928423) b!2153142))

(assert (= (and b!2153142 res!928421) b!2153141))

(assert (= (and b!2153141 res!928424) b!2153144))

(assert (= (and b!2153144 res!928420) b!2153145))

(assert (= (and b!2153145 (not res!928422)) b!2153146))

(assert (= (and b!2153145 res!928419) b!2153143))

(declare-fun m!2595026 () Bool)

(assert (=> b!2153141 m!2595026))

(assert (=> b!2153142 m!2595026))

(assert (=> b!2153143 m!2595026))

(assert (=> b!2153143 m!2595026))

(declare-fun m!2595028 () Bool)

(assert (=> b!2153143 m!2595028))

(declare-fun m!2595030 () Bool)

(assert (=> b!2153145 m!2595030))

(assert (=> b!2153080 d!645986))

(declare-fun d!645988 () Bool)

(assert (=> d!645988 (valid!2235 cacheFurthestNullable!118)))

(declare-fun Unit!37910 () Unit!37908)

(assert (=> d!645988 (= (lemmaInvariant!386 cacheFurthestNullable!118) Unit!37910)))

(declare-fun bs!445721 () Bool)

(assert (= bs!445721 d!645988))

(assert (=> bs!445721 m!2594978))

(assert (=> b!2153089 d!645988))

(declare-fun tp!669528 () Bool)

(declare-fun tp!669529 () Bool)

(declare-fun e!1377072 () Bool)

(declare-fun b!2153155 () Bool)

(assert (=> b!2153155 (= e!1377072 (and (inv!32726 (left!19060 (c!341392 (totalInput!3301 cacheFurthestNullable!118)))) tp!669528 (inv!32726 (right!19390 (c!341392 (totalInput!3301 cacheFurthestNullable!118)))) tp!669529))))

(declare-fun b!2153157 () Bool)

(declare-fun e!1377073 () Bool)

(declare-fun tp!669530 () Bool)

(assert (=> b!2153157 (= e!1377073 tp!669530)))

(declare-fun b!2153156 () Bool)

(declare-fun inv!32730 (IArray!16071) Bool)

(assert (=> b!2153156 (= e!1377072 (and (inv!32730 (xs!10975 (c!341392 (totalInput!3301 cacheFurthestNullable!118)))) e!1377073))))

(assert (=> b!2153095 (= tp!669509 (and (inv!32726 (c!341392 (totalInput!3301 cacheFurthestNullable!118))) e!1377072))))

(assert (= (and b!2153095 ((_ is Node!8033) (c!341392 (totalInput!3301 cacheFurthestNullable!118)))) b!2153155))

(assert (= b!2153156 b!2153157))

(assert (= (and b!2153095 ((_ is Leaf!11749) (c!341392 (totalInput!3301 cacheFurthestNullable!118)))) b!2153156))

(declare-fun m!2595032 () Bool)

(assert (=> b!2153155 m!2595032))

(declare-fun m!2595034 () Bool)

(assert (=> b!2153155 m!2595034))

(declare-fun m!2595036 () Bool)

(assert (=> b!2153156 m!2595036))

(assert (=> b!2153095 m!2594956))

(declare-fun b!2153162 () Bool)

(declare-fun e!1377076 () Bool)

(declare-fun tp!669535 () Bool)

(declare-fun tp!669536 () Bool)

(assert (=> b!2153162 (= e!1377076 (and tp!669535 tp!669536))))

(assert (=> b!2153081 (= tp!669519 e!1377076)))

(assert (= (and b!2153081 ((_ is Cons!24779) (exprs!1967 setElem!17398))) b!2153162))

(declare-fun b!2153169 () Bool)

(declare-fun e!1377082 () Bool)

(declare-fun setRes!17401 () Bool)

(declare-fun tp!669544 () Bool)

(assert (=> b!2153169 (= e!1377082 (and setRes!17401 tp!669544))))

(declare-fun condSetEmpty!17401 () Bool)

(assert (=> b!2153169 (= condSetEmpty!17401 (= (_1!14571 (_1!14572 (h!30181 mapDefault!13709))) ((as const (Array Context!2934 Bool)) false)))))

(declare-fun e!1377081 () Bool)

(declare-fun tp!669545 () Bool)

(declare-fun setElem!17401 () Context!2934)

(declare-fun setNonEmpty!17401 () Bool)

(assert (=> setNonEmpty!17401 (= setRes!17401 (and tp!669545 (inv!32725 setElem!17401) e!1377081))))

(declare-fun setRest!17401 () (InoxSet Context!2934))

(assert (=> setNonEmpty!17401 (= (_1!14571 (_1!14572 (h!30181 mapDefault!13709))) ((_ map or) (store ((as const (Array Context!2934 Bool)) false) setElem!17401 true) setRest!17401))))

(declare-fun b!2153170 () Bool)

(declare-fun tp!669543 () Bool)

(assert (=> b!2153170 (= e!1377081 tp!669543)))

(assert (=> b!2153085 (= tp!669517 e!1377082)))

(declare-fun setIsEmpty!17401 () Bool)

(assert (=> setIsEmpty!17401 setRes!17401))

(assert (= (and b!2153169 condSetEmpty!17401) setIsEmpty!17401))

(assert (= (and b!2153169 (not condSetEmpty!17401)) setNonEmpty!17401))

(assert (= setNonEmpty!17401 b!2153170))

(assert (= (and b!2153085 ((_ is Cons!24780) mapDefault!13709)) b!2153169))

(declare-fun m!2595038 () Bool)

(assert (=> setNonEmpty!17401 m!2595038))

(declare-fun b!2153171 () Bool)

(declare-fun e!1377084 () Bool)

(declare-fun setRes!17402 () Bool)

(declare-fun tp!669547 () Bool)

(assert (=> b!2153171 (= e!1377084 (and setRes!17402 tp!669547))))

(declare-fun condSetEmpty!17402 () Bool)

(assert (=> b!2153171 (= condSetEmpty!17402 (= (_1!14571 (_1!14572 (h!30181 (zeroValue!3156 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))))) ((as const (Array Context!2934 Bool)) false)))))

(declare-fun setElem!17402 () Context!2934)

(declare-fun tp!669548 () Bool)

(declare-fun setNonEmpty!17402 () Bool)

(declare-fun e!1377083 () Bool)

(assert (=> setNonEmpty!17402 (= setRes!17402 (and tp!669548 (inv!32725 setElem!17402) e!1377083))))

(declare-fun setRest!17402 () (InoxSet Context!2934))

(assert (=> setNonEmpty!17402 (= (_1!14571 (_1!14572 (h!30181 (zeroValue!3156 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2934 Bool)) false) setElem!17402 true) setRest!17402))))

(declare-fun b!2153172 () Bool)

(declare-fun tp!669546 () Bool)

(assert (=> b!2153172 (= e!1377083 tp!669546)))

(assert (=> b!2153087 (= tp!669514 e!1377084)))

(declare-fun setIsEmpty!17402 () Bool)

(assert (=> setIsEmpty!17402 setRes!17402))

(assert (= (and b!2153171 condSetEmpty!17402) setIsEmpty!17402))

(assert (= (and b!2153171 (not condSetEmpty!17402)) setNonEmpty!17402))

(assert (= setNonEmpty!17402 b!2153172))

(assert (= (and b!2153087 ((_ is Cons!24780) (zeroValue!3156 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118)))))))) b!2153171))

(declare-fun m!2595040 () Bool)

(assert (=> setNonEmpty!17402 m!2595040))

(declare-fun b!2153173 () Bool)

(declare-fun e!1377086 () Bool)

(declare-fun setRes!17403 () Bool)

(declare-fun tp!669550 () Bool)

(assert (=> b!2153173 (= e!1377086 (and setRes!17403 tp!669550))))

(declare-fun condSetEmpty!17403 () Bool)

(assert (=> b!2153173 (= condSetEmpty!17403 (= (_1!14571 (_1!14572 (h!30181 (minValue!3156 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))))) ((as const (Array Context!2934 Bool)) false)))))

(declare-fun setElem!17403 () Context!2934)

(declare-fun tp!669551 () Bool)

(declare-fun e!1377085 () Bool)

(declare-fun setNonEmpty!17403 () Bool)

(assert (=> setNonEmpty!17403 (= setRes!17403 (and tp!669551 (inv!32725 setElem!17403) e!1377085))))

(declare-fun setRest!17403 () (InoxSet Context!2934))

(assert (=> setNonEmpty!17403 (= (_1!14571 (_1!14572 (h!30181 (minValue!3156 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2934 Bool)) false) setElem!17403 true) setRest!17403))))

(declare-fun b!2153174 () Bool)

(declare-fun tp!669549 () Bool)

(assert (=> b!2153174 (= e!1377085 tp!669549)))

(assert (=> b!2153087 (= tp!669516 e!1377086)))

(declare-fun setIsEmpty!17403 () Bool)

(assert (=> setIsEmpty!17403 setRes!17403))

(assert (= (and b!2153173 condSetEmpty!17403) setIsEmpty!17403))

(assert (= (and b!2153173 (not condSetEmpty!17403)) setNonEmpty!17403))

(assert (= setNonEmpty!17403 b!2153174))

(assert (= (and b!2153087 ((_ is Cons!24780) (minValue!3156 (v!29259 (underlying!5991 (v!29260 (underlying!5992 (cache!3193 cacheFurthestNullable!118)))))))) b!2153173))

(declare-fun m!2595042 () Bool)

(assert (=> setNonEmpty!17403 m!2595042))

(declare-fun condSetEmpty!17406 () Bool)

(assert (=> setNonEmpty!17398 (= condSetEmpty!17406 (= setRest!17398 ((as const (Array Context!2934 Bool)) false)))))

(declare-fun setRes!17406 () Bool)

(assert (=> setNonEmpty!17398 (= tp!669510 setRes!17406)))

(declare-fun setIsEmpty!17406 () Bool)

(assert (=> setIsEmpty!17406 setRes!17406))

(declare-fun tp!669557 () Bool)

(declare-fun e!1377089 () Bool)

(declare-fun setNonEmpty!17406 () Bool)

(declare-fun setElem!17406 () Context!2934)

(assert (=> setNonEmpty!17406 (= setRes!17406 (and tp!669557 (inv!32725 setElem!17406) e!1377089))))

(declare-fun setRest!17406 () (InoxSet Context!2934))

(assert (=> setNonEmpty!17406 (= setRest!17398 ((_ map or) (store ((as const (Array Context!2934 Bool)) false) setElem!17406 true) setRest!17406))))

(declare-fun b!2153179 () Bool)

(declare-fun tp!669556 () Bool)

(assert (=> b!2153179 (= e!1377089 tp!669556)))

(assert (= (and setNonEmpty!17398 condSetEmpty!17406) setIsEmpty!17406))

(assert (= (and setNonEmpty!17398 (not condSetEmpty!17406)) setNonEmpty!17406))

(assert (= setNonEmpty!17406 b!2153179))

(declare-fun m!2595044 () Bool)

(assert (=> setNonEmpty!17406 m!2595044))

(declare-fun setIsEmpty!17411 () Bool)

(declare-fun setRes!17411 () Bool)

(assert (=> setIsEmpty!17411 setRes!17411))

(declare-fun b!2153190 () Bool)

(declare-fun e!1377100 () Bool)

(declare-fun tp!669576 () Bool)

(assert (=> b!2153190 (= e!1377100 tp!669576)))

(declare-fun b!2153191 () Bool)

(declare-fun e!1377099 () Bool)

(declare-fun tp!669577 () Bool)

(assert (=> b!2153191 (= e!1377099 tp!669577)))

(declare-fun mapIsEmpty!13712 () Bool)

(declare-fun mapRes!13712 () Bool)

(assert (=> mapIsEmpty!13712 mapRes!13712))

(declare-fun setNonEmpty!17411 () Bool)

(declare-fun tp!669572 () Bool)

(declare-fun setElem!17412 () Context!2934)

(assert (=> setNonEmpty!17411 (= setRes!17411 (and tp!669572 (inv!32725 setElem!17412) e!1377099))))

(declare-fun mapDefault!13712 () List!24864)

(declare-fun setRest!17412 () (InoxSet Context!2934))

(assert (=> setNonEmpty!17411 (= (_1!14571 (_1!14572 (h!30181 mapDefault!13712))) ((_ map or) (store ((as const (Array Context!2934 Bool)) false) setElem!17412 true) setRest!17412))))

(declare-fun b!2153192 () Bool)

(declare-fun e!1377098 () Bool)

(declare-fun tp!669573 () Bool)

(assert (=> b!2153192 (= e!1377098 (and setRes!17411 tp!669573))))

(declare-fun condSetEmpty!17412 () Bool)

(assert (=> b!2153192 (= condSetEmpty!17412 (= (_1!14571 (_1!14572 (h!30181 mapDefault!13712))) ((as const (Array Context!2934 Bool)) false)))))

(declare-fun condMapEmpty!13712 () Bool)

(assert (=> mapNonEmpty!13709 (= condMapEmpty!13712 (= mapRest!13709 ((as const (Array (_ BitVec 32) List!24864)) mapDefault!13712)))))

(assert (=> mapNonEmpty!13709 (= tp!669518 (and e!1377098 mapRes!13712))))

(declare-fun setIsEmpty!17412 () Bool)

(declare-fun setRes!17412 () Bool)

(assert (=> setIsEmpty!17412 setRes!17412))

(declare-fun b!2153193 () Bool)

(declare-fun e!1377101 () Bool)

(declare-fun tp!669574 () Bool)

(assert (=> b!2153193 (= e!1377101 (and setRes!17412 tp!669574))))

(declare-fun condSetEmpty!17411 () Bool)

(declare-fun mapValue!13712 () List!24864)

(assert (=> b!2153193 (= condSetEmpty!17411 (= (_1!14571 (_1!14572 (h!30181 mapValue!13712))) ((as const (Array Context!2934 Bool)) false)))))

(declare-fun mapNonEmpty!13712 () Bool)

(declare-fun tp!669578 () Bool)

(assert (=> mapNonEmpty!13712 (= mapRes!13712 (and tp!669578 e!1377101))))

(declare-fun mapKey!13712 () (_ BitVec 32))

(declare-fun mapRest!13712 () (Array (_ BitVec 32) List!24864))

(assert (=> mapNonEmpty!13712 (= mapRest!13709 (store mapRest!13712 mapKey!13712 mapValue!13712))))

(declare-fun setNonEmpty!17412 () Bool)

(declare-fun tp!669575 () Bool)

(declare-fun setElem!17411 () Context!2934)

(assert (=> setNonEmpty!17412 (= setRes!17412 (and tp!669575 (inv!32725 setElem!17411) e!1377100))))

(declare-fun setRest!17411 () (InoxSet Context!2934))

(assert (=> setNonEmpty!17412 (= (_1!14571 (_1!14572 (h!30181 mapValue!13712))) ((_ map or) (store ((as const (Array Context!2934 Bool)) false) setElem!17411 true) setRest!17411))))

(assert (= (and mapNonEmpty!13709 condMapEmpty!13712) mapIsEmpty!13712))

(assert (= (and mapNonEmpty!13709 (not condMapEmpty!13712)) mapNonEmpty!13712))

(assert (= (and b!2153193 condSetEmpty!17411) setIsEmpty!17412))

(assert (= (and b!2153193 (not condSetEmpty!17411)) setNonEmpty!17412))

(assert (= setNonEmpty!17412 b!2153190))

(assert (= (and mapNonEmpty!13712 ((_ is Cons!24780) mapValue!13712)) b!2153193))

(assert (= (and b!2153192 condSetEmpty!17412) setIsEmpty!17411))

(assert (= (and b!2153192 (not condSetEmpty!17412)) setNonEmpty!17411))

(assert (= setNonEmpty!17411 b!2153191))

(assert (= (and mapNonEmpty!13709 ((_ is Cons!24780) mapDefault!13712)) b!2153192))

(declare-fun m!2595046 () Bool)

(assert (=> setNonEmpty!17411 m!2595046))

(declare-fun m!2595048 () Bool)

(assert (=> mapNonEmpty!13712 m!2595048))

(declare-fun m!2595050 () Bool)

(assert (=> setNonEmpty!17412 m!2595050))

(declare-fun b!2153194 () Bool)

(declare-fun e!1377103 () Bool)

(declare-fun setRes!17413 () Bool)

(declare-fun tp!669580 () Bool)

(assert (=> b!2153194 (= e!1377103 (and setRes!17413 tp!669580))))

(declare-fun condSetEmpty!17413 () Bool)

(assert (=> b!2153194 (= condSetEmpty!17413 (= (_1!14571 (_1!14572 (h!30181 mapValue!13709))) ((as const (Array Context!2934 Bool)) false)))))

(declare-fun setNonEmpty!17413 () Bool)

(declare-fun tp!669581 () Bool)

(declare-fun setElem!17413 () Context!2934)

(declare-fun e!1377102 () Bool)

(assert (=> setNonEmpty!17413 (= setRes!17413 (and tp!669581 (inv!32725 setElem!17413) e!1377102))))

(declare-fun setRest!17413 () (InoxSet Context!2934))

(assert (=> setNonEmpty!17413 (= (_1!14571 (_1!14572 (h!30181 mapValue!13709))) ((_ map or) (store ((as const (Array Context!2934 Bool)) false) setElem!17413 true) setRest!17413))))

(declare-fun b!2153195 () Bool)

(declare-fun tp!669579 () Bool)

(assert (=> b!2153195 (= e!1377102 tp!669579)))

(assert (=> mapNonEmpty!13709 (= tp!669513 e!1377103)))

(declare-fun setIsEmpty!17413 () Bool)

(assert (=> setIsEmpty!17413 setRes!17413))

(assert (= (and b!2153194 condSetEmpty!17413) setIsEmpty!17413))

(assert (= (and b!2153194 (not condSetEmpty!17413)) setNonEmpty!17413))

(assert (= setNonEmpty!17413 b!2153195))

(assert (= (and mapNonEmpty!13709 ((_ is Cons!24780) mapValue!13709)) b!2153194))

(declare-fun m!2595052 () Bool)

(assert (=> setNonEmpty!17413 m!2595052))

(declare-fun tp!669583 () Bool)

(declare-fun b!2153196 () Bool)

(declare-fun tp!669582 () Bool)

(declare-fun e!1377104 () Bool)

(assert (=> b!2153196 (= e!1377104 (and (inv!32726 (left!19060 (c!341392 (totalInput!3302 (h!30183 stack!12))))) tp!669582 (inv!32726 (right!19390 (c!341392 (totalInput!3302 (h!30183 stack!12))))) tp!669583))))

(declare-fun b!2153198 () Bool)

(declare-fun e!1377105 () Bool)

(declare-fun tp!669584 () Bool)

(assert (=> b!2153198 (= e!1377105 tp!669584)))

(declare-fun b!2153197 () Bool)

(assert (=> b!2153197 (= e!1377104 (and (inv!32730 (xs!10975 (c!341392 (totalInput!3302 (h!30183 stack!12))))) e!1377105))))

(assert (=> b!2153082 (= tp!669515 (and (inv!32726 (c!341392 (totalInput!3302 (h!30183 stack!12)))) e!1377104))))

(assert (= (and b!2153082 ((_ is Node!8033) (c!341392 (totalInput!3302 (h!30183 stack!12))))) b!2153196))

(assert (= b!2153197 b!2153198))

(assert (= (and b!2153082 ((_ is Leaf!11749) (c!341392 (totalInput!3302 (h!30183 stack!12))))) b!2153197))

(declare-fun m!2595054 () Bool)

(assert (=> b!2153196 m!2595054))

(declare-fun m!2595056 () Bool)

(assert (=> b!2153196 m!2595056))

(declare-fun m!2595058 () Bool)

(assert (=> b!2153197 m!2595058))

(assert (=> b!2153082 m!2594986))

(declare-fun tp!669586 () Bool)

(declare-fun tp!669585 () Bool)

(declare-fun b!2153199 () Bool)

(declare-fun e!1377106 () Bool)

(assert (=> b!2153199 (= e!1377106 (and (inv!32726 (left!19060 (c!341392 totalInput!880))) tp!669585 (inv!32726 (right!19390 (c!341392 totalInput!880))) tp!669586))))

(declare-fun b!2153201 () Bool)

(declare-fun e!1377107 () Bool)

(declare-fun tp!669587 () Bool)

(assert (=> b!2153201 (= e!1377107 tp!669587)))

(declare-fun b!2153200 () Bool)

(assert (=> b!2153200 (= e!1377106 (and (inv!32730 (xs!10975 (c!341392 totalInput!880))) e!1377107))))

(assert (=> b!2153094 (= tp!669512 (and (inv!32726 (c!341392 totalInput!880)) e!1377106))))

(assert (= (and b!2153094 ((_ is Node!8033) (c!341392 totalInput!880))) b!2153199))

(assert (= b!2153200 b!2153201))

(assert (= (and b!2153094 ((_ is Leaf!11749) (c!341392 totalInput!880))) b!2153200))

(declare-fun m!2595060 () Bool)

(assert (=> b!2153199 m!2595060))

(declare-fun m!2595062 () Bool)

(assert (=> b!2153199 m!2595062))

(declare-fun m!2595064 () Bool)

(assert (=> b!2153200 m!2595064))

(assert (=> b!2153094 m!2594958))

(declare-fun b!2153212 () Bool)

(declare-fun e!1377117 () Bool)

(declare-fun tp!669597 () Bool)

(assert (=> b!2153212 (= e!1377117 (and (inv!32726 (c!341392 (totalInput!3302 (h!30183 (t!197414 stack!12))))) tp!669597))))

(declare-fun b!2153213 () Bool)

(declare-fun e!1377116 () Bool)

(declare-fun tp!669598 () Bool)

(assert (=> b!2153213 (= e!1377116 tp!669598)))

(declare-fun setIsEmpty!17416 () Bool)

(declare-fun setRes!17416 () Bool)

(assert (=> setIsEmpty!17416 setRes!17416))

(declare-fun b!2153214 () Bool)

(declare-fun e!1377118 () Bool)

(assert (=> b!2153214 (= e!1377118 (and setRes!17416 (inv!32723 (totalInput!3302 (h!30183 (t!197414 stack!12)))) e!1377117))))

(declare-fun condSetEmpty!17416 () Bool)

(assert (=> b!2153214 (= condSetEmpty!17416 (= (z!5966 (h!30183 (t!197414 stack!12))) ((as const (Array Context!2934 Bool)) false)))))

(declare-fun e!1377119 () Bool)

(declare-fun tp!669596 () Bool)

(declare-fun b!2153215 () Bool)

(assert (=> b!2153215 (= e!1377119 (and (inv!32724 (h!30183 (t!197414 stack!12))) e!1377118 tp!669596))))

(declare-fun tp!669599 () Bool)

(declare-fun setElem!17416 () Context!2934)

(declare-fun setNonEmpty!17416 () Bool)

(assert (=> setNonEmpty!17416 (= setRes!17416 (and tp!669599 (inv!32725 setElem!17416) e!1377116))))

(declare-fun setRest!17416 () (InoxSet Context!2934))

(assert (=> setNonEmpty!17416 (= (z!5966 (h!30183 (t!197414 stack!12))) ((_ map or) (store ((as const (Array Context!2934 Bool)) false) setElem!17416 true) setRest!17416))))

(assert (=> b!2153080 (= tp!669521 e!1377119)))

(assert (= (and b!2153214 condSetEmpty!17416) setIsEmpty!17416))

(assert (= (and b!2153214 (not condSetEmpty!17416)) setNonEmpty!17416))

(assert (= setNonEmpty!17416 b!2153213))

(assert (= b!2153214 b!2153212))

(assert (= b!2153215 b!2153214))

(assert (= (and b!2153080 ((_ is Cons!24782) (t!197414 stack!12))) b!2153215))

(declare-fun m!2595066 () Bool)

(assert (=> b!2153212 m!2595066))

(declare-fun m!2595068 () Bool)

(assert (=> b!2153214 m!2595068))

(declare-fun m!2595070 () Bool)

(assert (=> b!2153215 m!2595070))

(declare-fun m!2595072 () Bool)

(assert (=> setNonEmpty!17416 m!2595072))

(declare-fun b_lambda!70893 () Bool)

(assert (= b_lambda!70889 (or b!2153090 b_lambda!70893)))

(declare-fun bs!445722 () Bool)

(declare-fun d!645990 () Bool)

(assert (= bs!445722 (and d!645990 b!2153090)))

(assert (=> bs!445722 (= (dynLambda!11405 lambda!81145 (h!30183 stack!12)) (= (totalInput!3302 (h!30183 stack!12)) totalInput!880))))

(assert (=> b!2153107 d!645990))

(declare-fun b_lambda!70895 () Bool)

(assert (= b_lambda!70891 (or b!2153097 b_lambda!70895)))

(declare-fun bs!445723 () Bool)

(declare-fun d!645992 () Bool)

(assert (= bs!445723 (and d!645992 b!2153097)))

(assert (=> bs!445723 (= (dynLambda!11405 lambda!81146 (h!30183 stack!12)) (= (res!928390 (h!30183 stack!12)) res!17610))))

(assert (=> b!2153127 d!645992))

(check-sat (not b!2153190) (not setNonEmpty!17416) (not b!2153200) (not b!2153214) (not b_next!64285) (not d!645988) (not b!2153213) (not d!645984) (not b!2153195) (not setNonEmpty!17402) (not b!2153170) (not b!2153095) (not b!2153212) (not b!2153157) (not setNonEmpty!17406) (not b!2153142) (not b!2153108) (not b!2153194) (not b!2153173) (not d!645968) (not b!2153115) (not d!645972) (not b!2153172) (not b!2153124) (not b_lambda!70895) b_and!173199 (not b_next!64287) (not b!2153198) (not b!2153174) (not b!2153179) (not b!2153192) (not b!2153145) (not setNonEmpty!17413) (not b!2153117) (not b!2153082) (not setNonEmpty!17411) (not d!645980) (not d!645962) (not b!2153141) (not b!2153155) (not b!2153201) (not d!645960) (not b!2153156) (not b!2153191) (not b!2153196) (not b!2153118) (not b!2153128) (not b!2153126) (not b!2153193) (not b!2153199) b_and!173197 (not b!2153120) (not b!2153215) (not b!2153171) (not b!2153162) (not mapNonEmpty!13712) (not b!2153143) (not b_lambda!70893) (not b!2153123) (not b!2153094) (not setNonEmpty!17412) (not setNonEmpty!17401) (not b!2153169) (not setNonEmpty!17403) (not b!2153197))
(check-sat b_and!173197 b_and!173199 (not b_next!64285) (not b_next!64287))
