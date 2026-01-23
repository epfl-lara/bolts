; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269036 () Bool)

(assert start!269036)

(declare-fun b!2783970 () Bool)

(declare-fun b_free!78645 () Bool)

(declare-fun b_next!79349 () Bool)

(assert (=> b!2783970 (= b_free!78645 (not b_next!79349))))

(declare-fun tp!882013 () Bool)

(declare-fun b_and!203383 () Bool)

(assert (=> b!2783970 (= tp!882013 b_and!203383)))

(declare-fun b!2783955 () Bool)

(declare-fun b_free!78647 () Bool)

(declare-fun b_next!79351 () Bool)

(assert (=> b!2783955 (= b_free!78647 (not b_next!79351))))

(declare-fun tp!882017 () Bool)

(declare-fun b_and!203385 () Bool)

(assert (=> b!2783955 (= tp!882017 b_and!203385)))

(declare-fun b!2783957 () Bool)

(declare-fun b_free!78649 () Bool)

(declare-fun b_next!79353 () Bool)

(assert (=> b!2783957 (= b_free!78649 (not b_next!79353))))

(declare-fun tp!882025 () Bool)

(declare-fun b_and!203387 () Bool)

(assert (=> b!2783957 (= tp!882025 b_and!203387)))

(declare-fun b!2783951 () Bool)

(declare-fun b_free!78651 () Bool)

(declare-fun b_next!79355 () Bool)

(assert (=> b!2783951 (= b_free!78651 (not b_next!79355))))

(declare-fun tp!882022 () Bool)

(declare-fun b_and!203389 () Bool)

(assert (=> b!2783951 (= tp!882022 b_and!203389)))

(declare-fun b!2783945 () Bool)

(declare-fun e!1756360 () Bool)

(declare-fun tp!882012 () Bool)

(declare-fun mapRes!17609 () Bool)

(assert (=> b!2783945 (= e!1756360 (and tp!882012 mapRes!17609))))

(declare-fun condMapEmpty!17610 () Bool)

(declare-datatypes ((C!16412 0))(
  ( (C!16413 (val!10140 Int)) )
))
(declare-datatypes ((array!13729 0))(
  ( (array!13730 (arr!6119 (Array (_ BitVec 32) (_ BitVec 64))) (size!24980 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8127 0))(
  ( (ElementMatch!8127 (c!452340 C!16412)) (Concat!13215 (regOne!16766 Regex!8127) (regTwo!16766 Regex!8127)) (EmptyExpr!8127) (Star!8127 (reg!8456 Regex!8127)) (EmptyLang!8127) (Union!8127 (regOne!16767 Regex!8127) (regTwo!16767 Regex!8127)) )
))
(declare-datatypes ((List!32272 0))(
  ( (Nil!32172) (Cons!32172 (h!37592 Regex!8127) (t!228414 List!32272)) )
))
(declare-datatypes ((Context!4690 0))(
  ( (Context!4691 (exprs!2845 List!32272)) )
))
(declare-datatypes ((tuple3!4978 0))(
  ( (tuple3!4979 (_1!19185 Regex!8127) (_2!19185 Context!4690) (_3!2959 C!16412)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32452 0))(
  ( (tuple2!32453 (_1!19186 tuple3!4978) (_2!19186 (InoxSet Context!4690))) )
))
(declare-datatypes ((List!32273 0))(
  ( (Nil!32173) (Cons!32173 (h!37593 tuple2!32452) (t!228415 List!32273)) )
))
(declare-datatypes ((array!13731 0))(
  ( (array!13732 (arr!6120 (Array (_ BitVec 32) List!32273)) (size!24981 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7718 0))(
  ( (LongMapFixedSize!7719 (defaultEntry!4244 Int) (mask!9659 (_ BitVec 32)) (extraKeys!4108 (_ BitVec 32)) (zeroValue!4118 List!32273) (minValue!4118 List!32273) (_size!7761 (_ BitVec 32)) (_keys!4159 array!13729) (_values!4140 array!13731) (_vacant!3920 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15245 0))(
  ( (Cell!15246 (v!33781 LongMapFixedSize!7718)) )
))
(declare-datatypes ((MutLongMap!3859 0))(
  ( (LongMap!3859 (underlying!7921 Cell!15245)) (MutLongMapExt!3858 (__x!21227 Int)) )
))
(declare-datatypes ((Cell!15247 0))(
  ( (Cell!15248 (v!33782 MutLongMap!3859)) )
))
(declare-datatypes ((Hashable!3775 0))(
  ( (HashableExt!3774 (__x!21228 Int)) )
))
(declare-datatypes ((MutableMap!3765 0))(
  ( (MutableMapExt!3764 (__x!21229 Int)) (HashMap!3765 (underlying!7922 Cell!15247) (hashF!5807 Hashable!3775) (_size!7762 (_ BitVec 32)) (defaultValue!3936 Int)) )
))
(declare-datatypes ((CacheDown!2594 0))(
  ( (CacheDown!2595 (cache!3908 MutableMap!3765)) )
))
(declare-fun cacheDown!1009 () CacheDown!2594)

(declare-fun mapDefault!17609 () List!32273)

(assert (=> b!2783945 (= condMapEmpty!17610 (= (arr!6120 (_values!4140 (v!33781 (underlying!7921 (v!33782 (underlying!7922 (cache!3908 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32273)) mapDefault!17609)))))

(declare-fun b!2783946 () Bool)

(declare-fun e!1756361 () Bool)

(declare-fun e!1756364 () Bool)

(assert (=> b!2783946 (= e!1756361 e!1756364)))

(declare-fun b!2783947 () Bool)

(declare-fun e!1756352 () Bool)

(declare-fun tp!882010 () Bool)

(declare-fun mapRes!17610 () Bool)

(assert (=> b!2783947 (= e!1756352 (and tp!882010 mapRes!17610))))

(declare-fun condMapEmpty!17609 () Bool)

(declare-datatypes ((Hashable!3776 0))(
  ( (HashableExt!3775 (__x!21230 Int)) )
))
(declare-datatypes ((tuple2!32454 0))(
  ( (tuple2!32455 (_1!19187 Context!4690) (_2!19187 C!16412)) )
))
(declare-datatypes ((tuple2!32456 0))(
  ( (tuple2!32457 (_1!19188 tuple2!32454) (_2!19188 (InoxSet Context!4690))) )
))
(declare-datatypes ((List!32274 0))(
  ( (Nil!32174) (Cons!32174 (h!37594 tuple2!32456) (t!228416 List!32274)) )
))
(declare-datatypes ((array!13733 0))(
  ( (array!13734 (arr!6121 (Array (_ BitVec 32) List!32274)) (size!24982 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7720 0))(
  ( (LongMapFixedSize!7721 (defaultEntry!4245 Int) (mask!9660 (_ BitVec 32)) (extraKeys!4109 (_ BitVec 32)) (zeroValue!4119 List!32274) (minValue!4119 List!32274) (_size!7763 (_ BitVec 32)) (_keys!4160 array!13729) (_values!4141 array!13733) (_vacant!3921 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15249 0))(
  ( (Cell!15250 (v!33783 LongMapFixedSize!7720)) )
))
(declare-datatypes ((MutLongMap!3860 0))(
  ( (LongMap!3860 (underlying!7923 Cell!15249)) (MutLongMapExt!3859 (__x!21231 Int)) )
))
(declare-datatypes ((Cell!15251 0))(
  ( (Cell!15252 (v!33784 MutLongMap!3860)) )
))
(declare-datatypes ((MutableMap!3766 0))(
  ( (MutableMapExt!3765 (__x!21232 Int)) (HashMap!3766 (underlying!7924 Cell!15251) (hashF!5808 Hashable!3776) (_size!7764 (_ BitVec 32)) (defaultValue!3937 Int)) )
))
(declare-datatypes ((CacheUp!2468 0))(
  ( (CacheUp!2469 (cache!3909 MutableMap!3766)) )
))
(declare-fun cacheUp!890 () CacheUp!2468)

(declare-fun mapDefault!17610 () List!32274)

(assert (=> b!2783947 (= condMapEmpty!17609 (= (arr!6121 (_values!4141 (v!33783 (underlying!7923 (v!33784 (underlying!7924 (cache!3909 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32274)) mapDefault!17610)))))

(declare-fun b!2783948 () Bool)

(declare-fun res!1162001 () Bool)

(declare-fun e!1756351 () Bool)

(assert (=> b!2783948 (=> res!1162001 e!1756351)))

(declare-fun testedPSize!143 () Int)

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2783948 (= res!1162001 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2783950 () Bool)

(declare-fun res!1161994 () Bool)

(declare-fun e!1756359 () Bool)

(assert (=> b!2783950 (=> (not res!1161994) (not e!1756359))))

(declare-datatypes ((List!32275 0))(
  ( (Nil!32175) (Cons!32175 (h!37595 C!16412) (t!228417 List!32275)) )
))
(declare-fun testedP!183 () List!32275)

(declare-fun size!24983 (List!32275) Int)

(assert (=> b!2783950 (= res!1161994 (= testedPSize!143 (size!24983 testedP!183)))))

(declare-fun tp!882009 () Bool)

(declare-fun tp!882018 () Bool)

(declare-fun array_inv!4382 (array!13729) Bool)

(declare-fun array_inv!4383 (array!13733) Bool)

(assert (=> b!2783951 (= e!1756364 (and tp!882022 tp!882018 tp!882009 (array_inv!4382 (_keys!4160 (v!33783 (underlying!7923 (v!33784 (underlying!7924 (cache!3909 cacheUp!890))))))) (array_inv!4383 (_values!4141 (v!33783 (underlying!7923 (v!33784 (underlying!7924 (cache!3909 cacheUp!890))))))) e!1756352))))

(declare-fun b!2783952 () Bool)

(declare-fun e!1756365 () Bool)

(assert (=> b!2783952 (= e!1756359 (not e!1756365))))

(declare-fun res!1161998 () Bool)

(assert (=> b!2783952 (=> res!1161998 e!1756365)))

(declare-fun lt!994303 () List!32275)

(declare-fun isPrefix!2575 (List!32275 List!32275) Bool)

(assert (=> b!2783952 (= res!1161998 (not (isPrefix!2575 testedP!183 lt!994303)))))

(declare-fun lt!994309 () List!32275)

(assert (=> b!2783952 (isPrefix!2575 testedP!183 lt!994309)))

(declare-datatypes ((Unit!46426 0))(
  ( (Unit!46427) )
))
(declare-fun lt!994300 () Unit!46426)

(declare-fun testedSuffix!143 () List!32275)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1685 (List!32275 List!32275) Unit!46426)

(assert (=> b!2783952 (= lt!994300 (lemmaConcatTwoListThenFirstIsPrefix!1685 testedP!183 testedSuffix!143))))

(declare-fun mapIsEmpty!17609 () Bool)

(assert (=> mapIsEmpty!17609 mapRes!17610))

(declare-fun b!2783953 () Bool)

(declare-fun e!1756354 () Bool)

(declare-fun tp_is_empty!14067 () Bool)

(declare-fun tp!882024 () Bool)

(assert (=> b!2783953 (= e!1756354 (and tp_is_empty!14067 tp!882024))))

(declare-fun b!2783954 () Bool)

(declare-fun e!1756353 () Bool)

(declare-fun e!1756372 () Bool)

(assert (=> b!2783954 (= e!1756353 e!1756372)))

(declare-fun e!1756349 () Bool)

(declare-fun e!1756367 () Bool)

(assert (=> b!2783955 (= e!1756349 (and e!1756367 tp!882017))))

(declare-fun b!2783956 () Bool)

(declare-fun e!1756357 () Bool)

(assert (=> b!2783956 (= e!1756351 e!1756357)))

(declare-fun res!1161999 () Bool)

(assert (=> b!2783956 (=> res!1161999 e!1756357)))

(declare-fun lt!994304 () List!32275)

(assert (=> b!2783956 (= res!1161999 (not (= lt!994304 lt!994303)))))

(declare-fun lt!994301 () List!32275)

(declare-datatypes ((IArray!20009 0))(
  ( (IArray!20010 (innerList!10062 List!32275)) )
))
(declare-datatypes ((Conc!10002 0))(
  ( (Node!10002 (left!24457 Conc!10002) (right!24787 Conc!10002) (csize!20234 Int) (cheight!10213 Int)) (Leaf!15234 (xs!13113 IArray!20009) (csize!20235 Int)) (Empty!10002) )
))
(declare-datatypes ((BalanceConc!19618 0))(
  ( (BalanceConc!19619 (c!452341 Conc!10002)) )
))
(declare-datatypes ((tuple2!32458 0))(
  ( (tuple2!32459 (_1!19189 BalanceConc!19618) (_2!19189 BalanceConc!19618)) )
))
(declare-fun lt!994306 () tuple2!32458)

(declare-fun ++!7952 (List!32275 List!32275) List!32275)

(declare-fun list!12123 (BalanceConc!19618) List!32275)

(assert (=> b!2783956 (= lt!994304 (++!7952 lt!994301 (list!12123 (_2!19189 lt!994306))))))

(assert (=> b!2783956 (= lt!994301 (list!12123 (_1!19189 lt!994306)))))

(declare-fun totalInput!758 () BalanceConc!19618)

(declare-fun splitAt!126 (BalanceConc!19618 Int) tuple2!32458)

(assert (=> b!2783956 (= lt!994306 (splitAt!126 totalInput!758 testedPSize!143))))

(declare-fun tp!882014 () Bool)

(declare-fun tp!882016 () Bool)

(declare-fun array_inv!4384 (array!13731) Bool)

(assert (=> b!2783957 (= e!1756372 (and tp!882025 tp!882016 tp!882014 (array_inv!4382 (_keys!4159 (v!33781 (underlying!7921 (v!33782 (underlying!7922 (cache!3908 cacheDown!1009))))))) (array_inv!4384 (_values!4140 (v!33781 (underlying!7921 (v!33782 (underlying!7922 (cache!3908 cacheDown!1009))))))) e!1756360))))

(declare-fun mapNonEmpty!17609 () Bool)

(declare-fun tp!882021 () Bool)

(declare-fun tp!882011 () Bool)

(assert (=> mapNonEmpty!17609 (= mapRes!17610 (and tp!882021 tp!882011))))

(declare-fun mapKey!17610 () (_ BitVec 32))

(declare-fun mapRest!17610 () (Array (_ BitVec 32) List!32274))

(declare-fun mapValue!17610 () List!32274)

(assert (=> mapNonEmpty!17609 (= (arr!6121 (_values!4141 (v!33783 (underlying!7923 (v!33784 (underlying!7924 (cache!3909 cacheUp!890))))))) (store mapRest!17610 mapKey!17610 mapValue!17610))))

(declare-fun b!2783958 () Bool)

(declare-fun res!1161996 () Bool)

(assert (=> b!2783958 (=> (not res!1161996) (not e!1756359))))

(declare-fun valid!3018 (CacheDown!2594) Bool)

(assert (=> b!2783958 (= res!1161996 (valid!3018 cacheDown!1009))))

(declare-fun b!2783959 () Bool)

(declare-fun e!1756358 () Bool)

(declare-fun lt!994307 () MutLongMap!3860)

(get-info :version)

(assert (=> b!2783959 (= e!1756367 (and e!1756358 ((_ is LongMap!3860) lt!994307)))))

(assert (=> b!2783959 (= lt!994307 (v!33784 (underlying!7924 (cache!3909 cacheUp!890))))))

(declare-fun b!2783960 () Bool)

(declare-fun e!1756363 () Bool)

(assert (=> b!2783960 (= e!1756363 e!1756353)))

(declare-fun b!2783961 () Bool)

(declare-fun e!1756355 () Bool)

(declare-fun lt!994305 () MutLongMap!3859)

(assert (=> b!2783961 (= e!1756355 (and e!1756363 ((_ is LongMap!3859) lt!994305)))))

(assert (=> b!2783961 (= lt!994305 (v!33782 (underlying!7922 (cache!3908 cacheDown!1009))))))

(declare-fun b!2783962 () Bool)

(declare-fun res!1161997 () Bool)

(assert (=> b!2783962 (=> res!1161997 e!1756357)))

(declare-fun size!24984 (BalanceConc!19618) Int)

(assert (=> b!2783962 (= res!1161997 (not (= (size!24984 (_1!19189 lt!994306)) testedPSize!143)))))

(declare-fun res!1162002 () Bool)

(assert (=> start!269036 (=> (not res!1162002) (not e!1756359))))

(assert (=> start!269036 (= res!1162002 (= lt!994309 lt!994303))))

(assert (=> start!269036 (= lt!994303 (list!12123 totalInput!758))))

(assert (=> start!269036 (= lt!994309 (++!7952 testedP!183 testedSuffix!143))))

(assert (=> start!269036 e!1756359))

(declare-fun e!1756356 () Bool)

(declare-fun inv!43702 (BalanceConc!19618) Bool)

(assert (=> start!269036 (and (inv!43702 totalInput!758) e!1756356)))

(declare-fun condSetEmpty!23419 () Bool)

(declare-fun z!3684 () (InoxSet Context!4690))

(assert (=> start!269036 (= condSetEmpty!23419 (= z!3684 ((as const (Array Context!4690 Bool)) false)))))

(declare-fun setRes!23419 () Bool)

(assert (=> start!269036 setRes!23419))

(assert (=> start!269036 true))

(assert (=> start!269036 e!1756354))

(declare-fun e!1756371 () Bool)

(assert (=> start!269036 e!1756371))

(declare-fun e!1756368 () Bool)

(declare-fun inv!43703 (CacheDown!2594) Bool)

(assert (=> start!269036 (and (inv!43703 cacheDown!1009) e!1756368)))

(declare-fun e!1756350 () Bool)

(declare-fun inv!43704 (CacheUp!2468) Bool)

(assert (=> start!269036 (and (inv!43704 cacheUp!890) e!1756350)))

(declare-fun b!2783949 () Bool)

(declare-fun e!1756369 () Bool)

(assert (=> b!2783949 (= e!1756368 e!1756369)))

(declare-fun b!2783963 () Bool)

(assert (=> b!2783963 (= e!1756365 e!1756351)))

(declare-fun res!1162000 () Bool)

(assert (=> b!2783963 (=> res!1162000 e!1756351)))

(declare-fun lostCauseZipper!453 ((InoxSet Context!4690)) Bool)

(assert (=> b!2783963 (= res!1162000 (lostCauseZipper!453 z!3684))))

(declare-fun lt!994302 () List!32275)

(assert (=> b!2783963 (and (= testedSuffix!143 lt!994302) (= lt!994302 testedSuffix!143))))

(declare-fun lt!994308 () Unit!46426)

(declare-fun lemmaSamePrefixThenSameSuffix!1154 (List!32275 List!32275 List!32275 List!32275 List!32275) Unit!46426)

(assert (=> b!2783963 (= lt!994308 (lemmaSamePrefixThenSameSuffix!1154 testedP!183 testedSuffix!143 testedP!183 lt!994302 lt!994303))))

(declare-fun getSuffix!1253 (List!32275 List!32275) List!32275)

(assert (=> b!2783963 (= lt!994302 (getSuffix!1253 lt!994303 testedP!183))))

(declare-fun b!2783964 () Bool)

(assert (=> b!2783964 (= e!1756358 e!1756361)))

(declare-fun b!2783965 () Bool)

(assert (=> b!2783965 (= e!1756357 true)))

(declare-fun lt!994299 () Int)

(assert (=> b!2783965 (= lt!994299 (size!24983 lt!994301))))

(declare-fun b!2783966 () Bool)

(declare-fun tp!882008 () Bool)

(declare-fun inv!43705 (Conc!10002) Bool)

(assert (=> b!2783966 (= e!1756356 (and (inv!43705 (c!452341 totalInput!758)) tp!882008))))

(declare-fun b!2783967 () Bool)

(declare-fun res!1161995 () Bool)

(assert (=> b!2783967 (=> res!1161995 e!1756357)))

(assert (=> b!2783967 (= res!1161995 (not (= lt!994304 lt!994309)))))

(declare-fun b!2783968 () Bool)

(declare-fun e!1756362 () Bool)

(declare-fun tp!882023 () Bool)

(assert (=> b!2783968 (= e!1756362 tp!882023)))

(declare-fun b!2783969 () Bool)

(declare-fun res!1161993 () Bool)

(assert (=> b!2783969 (=> (not res!1161993) (not e!1756359))))

(declare-fun valid!3019 (CacheUp!2468) Bool)

(assert (=> b!2783969 (= res!1161993 (valid!3019 cacheUp!890))))

(declare-fun mapNonEmpty!17610 () Bool)

(declare-fun tp!882015 () Bool)

(declare-fun tp!882019 () Bool)

(assert (=> mapNonEmpty!17610 (= mapRes!17609 (and tp!882015 tp!882019))))

(declare-fun mapKey!17609 () (_ BitVec 32))

(declare-fun mapValue!17609 () List!32273)

(declare-fun mapRest!17609 () (Array (_ BitVec 32) List!32273))

(assert (=> mapNonEmpty!17610 (= (arr!6120 (_values!4140 (v!33781 (underlying!7921 (v!33782 (underlying!7922 (cache!3908 cacheDown!1009))))))) (store mapRest!17609 mapKey!17609 mapValue!17609))))

(declare-fun tp!882007 () Bool)

(declare-fun setElem!23419 () Context!4690)

(declare-fun setNonEmpty!23419 () Bool)

(declare-fun inv!43706 (Context!4690) Bool)

(assert (=> setNonEmpty!23419 (= setRes!23419 (and tp!882007 (inv!43706 setElem!23419) e!1756362))))

(declare-fun setRest!23419 () (InoxSet Context!4690))

(assert (=> setNonEmpty!23419 (= z!3684 ((_ map or) (store ((as const (Array Context!4690 Bool)) false) setElem!23419 true) setRest!23419))))

(assert (=> b!2783970 (= e!1756369 (and e!1756355 tp!882013))))

(declare-fun b!2783971 () Bool)

(declare-fun res!1162003 () Bool)

(assert (=> b!2783971 (=> (not res!1162003) (not e!1756359))))

(assert (=> b!2783971 (= res!1162003 (= totalInputSize!205 (size!24984 totalInput!758)))))

(declare-fun setIsEmpty!23419 () Bool)

(assert (=> setIsEmpty!23419 setRes!23419))

(declare-fun mapIsEmpty!17610 () Bool)

(assert (=> mapIsEmpty!17610 mapRes!17609))

(declare-fun b!2783972 () Bool)

(declare-fun tp!882020 () Bool)

(assert (=> b!2783972 (= e!1756371 (and tp_is_empty!14067 tp!882020))))

(declare-fun b!2783973 () Bool)

(assert (=> b!2783973 (= e!1756350 e!1756349)))

(assert (= (and start!269036 res!1162002) b!2783950))

(assert (= (and b!2783950 res!1161994) b!2783971))

(assert (= (and b!2783971 res!1162003) b!2783969))

(assert (= (and b!2783969 res!1161993) b!2783958))

(assert (= (and b!2783958 res!1161996) b!2783952))

(assert (= (and b!2783952 (not res!1161998)) b!2783963))

(assert (= (and b!2783963 (not res!1162000)) b!2783948))

(assert (= (and b!2783948 (not res!1162001)) b!2783956))

(assert (= (and b!2783956 (not res!1161999)) b!2783962))

(assert (= (and b!2783962 (not res!1161997)) b!2783967))

(assert (= (and b!2783967 (not res!1161995)) b!2783965))

(assert (= start!269036 b!2783966))

(assert (= (and start!269036 condSetEmpty!23419) setIsEmpty!23419))

(assert (= (and start!269036 (not condSetEmpty!23419)) setNonEmpty!23419))

(assert (= setNonEmpty!23419 b!2783968))

(assert (= (and start!269036 ((_ is Cons!32175) testedP!183)) b!2783953))

(assert (= (and start!269036 ((_ is Cons!32175) testedSuffix!143)) b!2783972))

(assert (= (and b!2783945 condMapEmpty!17610) mapIsEmpty!17610))

(assert (= (and b!2783945 (not condMapEmpty!17610)) mapNonEmpty!17610))

(assert (= b!2783957 b!2783945))

(assert (= b!2783954 b!2783957))

(assert (= b!2783960 b!2783954))

(assert (= (and b!2783961 ((_ is LongMap!3859) (v!33782 (underlying!7922 (cache!3908 cacheDown!1009))))) b!2783960))

(assert (= b!2783970 b!2783961))

(assert (= (and b!2783949 ((_ is HashMap!3765) (cache!3908 cacheDown!1009))) b!2783970))

(assert (= start!269036 b!2783949))

(assert (= (and b!2783947 condMapEmpty!17609) mapIsEmpty!17609))

(assert (= (and b!2783947 (not condMapEmpty!17609)) mapNonEmpty!17609))

(assert (= b!2783951 b!2783947))

(assert (= b!2783946 b!2783951))

(assert (= b!2783964 b!2783946))

(assert (= (and b!2783959 ((_ is LongMap!3860) (v!33784 (underlying!7924 (cache!3909 cacheUp!890))))) b!2783964))

(assert (= b!2783955 b!2783959))

(assert (= (and b!2783973 ((_ is HashMap!3766) (cache!3909 cacheUp!890))) b!2783955))

(assert (= start!269036 b!2783973))

(declare-fun m!3214661 () Bool)

(assert (=> b!2783971 m!3214661))

(declare-fun m!3214663 () Bool)

(assert (=> b!2783957 m!3214663))

(declare-fun m!3214665 () Bool)

(assert (=> b!2783957 m!3214665))

(declare-fun m!3214667 () Bool)

(assert (=> mapNonEmpty!17610 m!3214667))

(declare-fun m!3214669 () Bool)

(assert (=> b!2783962 m!3214669))

(declare-fun m!3214671 () Bool)

(assert (=> b!2783951 m!3214671))

(declare-fun m!3214673 () Bool)

(assert (=> b!2783951 m!3214673))

(declare-fun m!3214675 () Bool)

(assert (=> mapNonEmpty!17609 m!3214675))

(declare-fun m!3214677 () Bool)

(assert (=> b!2783958 m!3214677))

(declare-fun m!3214679 () Bool)

(assert (=> b!2783950 m!3214679))

(declare-fun m!3214681 () Bool)

(assert (=> start!269036 m!3214681))

(declare-fun m!3214683 () Bool)

(assert (=> start!269036 m!3214683))

(declare-fun m!3214685 () Bool)

(assert (=> start!269036 m!3214685))

(declare-fun m!3214687 () Bool)

(assert (=> start!269036 m!3214687))

(declare-fun m!3214689 () Bool)

(assert (=> start!269036 m!3214689))

(declare-fun m!3214691 () Bool)

(assert (=> b!2783952 m!3214691))

(declare-fun m!3214693 () Bool)

(assert (=> b!2783952 m!3214693))

(declare-fun m!3214695 () Bool)

(assert (=> b!2783952 m!3214695))

(declare-fun m!3214697 () Bool)

(assert (=> b!2783963 m!3214697))

(declare-fun m!3214699 () Bool)

(assert (=> b!2783963 m!3214699))

(declare-fun m!3214701 () Bool)

(assert (=> b!2783963 m!3214701))

(declare-fun m!3214703 () Bool)

(assert (=> b!2783956 m!3214703))

(assert (=> b!2783956 m!3214703))

(declare-fun m!3214705 () Bool)

(assert (=> b!2783956 m!3214705))

(declare-fun m!3214707 () Bool)

(assert (=> b!2783956 m!3214707))

(declare-fun m!3214709 () Bool)

(assert (=> b!2783956 m!3214709))

(declare-fun m!3214711 () Bool)

(assert (=> b!2783965 m!3214711))

(declare-fun m!3214713 () Bool)

(assert (=> b!2783966 m!3214713))

(declare-fun m!3214715 () Bool)

(assert (=> b!2783969 m!3214715))

(declare-fun m!3214717 () Bool)

(assert (=> setNonEmpty!23419 m!3214717))

(check-sat b_and!203385 (not b!2783972) (not b!2783951) b_and!203387 (not setNonEmpty!23419) (not b_next!79351) b_and!203383 (not b!2783953) (not mapNonEmpty!17609) (not b_next!79353) (not b!2783965) (not b_next!79355) (not b!2783952) (not b!2783963) (not b!2783958) (not b!2783947) (not b!2783957) (not b!2783969) (not start!269036) (not mapNonEmpty!17610) (not b_next!79349) b_and!203389 (not b!2783966) tp_is_empty!14067 (not b!2783945) (not b!2783950) (not b!2783962) (not b!2783956) (not b!2783968) (not b!2783971))
(check-sat b_and!203385 b_and!203387 (not b_next!79351) b_and!203383 (not b_next!79353) (not b_next!79355) (not b_next!79349) b_and!203389)
