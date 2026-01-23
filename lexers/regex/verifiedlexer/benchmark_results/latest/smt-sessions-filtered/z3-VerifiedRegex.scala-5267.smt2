; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270318 () Bool)

(assert start!270318)

(declare-fun b!2796361 () Bool)

(declare-fun b_free!79221 () Bool)

(declare-fun b_next!79925 () Bool)

(assert (=> b!2796361 (= b_free!79221 (not b_next!79925))))

(declare-fun tp!889880 () Bool)

(declare-fun b_and!203959 () Bool)

(assert (=> b!2796361 (= tp!889880 b_and!203959)))

(declare-fun b!2796339 () Bool)

(declare-fun b_free!79223 () Bool)

(declare-fun b_next!79927 () Bool)

(assert (=> b!2796339 (= b_free!79223 (not b_next!79927))))

(declare-fun tp!889882 () Bool)

(declare-fun b_and!203961 () Bool)

(assert (=> b!2796339 (= tp!889882 b_and!203961)))

(declare-fun b!2796349 () Bool)

(declare-fun b_free!79225 () Bool)

(declare-fun b_next!79929 () Bool)

(assert (=> b!2796349 (= b_free!79225 (not b_next!79929))))

(declare-fun tp!889876 () Bool)

(declare-fun b_and!203963 () Bool)

(assert (=> b!2796349 (= tp!889876 b_and!203963)))

(declare-fun b!2796344 () Bool)

(declare-fun b_free!79227 () Bool)

(declare-fun b_next!79931 () Bool)

(assert (=> b!2796344 (= b_free!79227 (not b_next!79931))))

(declare-fun tp!889885 () Bool)

(declare-fun b_and!203965 () Bool)

(assert (=> b!2796344 (= tp!889885 b_and!203965)))

(declare-fun mapIsEmpty!18153 () Bool)

(declare-fun mapRes!18154 () Bool)

(assert (=> mapIsEmpty!18153 mapRes!18154))

(declare-fun setRes!24224 () Bool)

(declare-fun e!1766149 () Bool)

(declare-fun setNonEmpty!24224 () Bool)

(declare-fun tp!889887 () Bool)

(declare-datatypes ((C!16556 0))(
  ( (C!16557 (val!10212 Int)) )
))
(declare-datatypes ((Regex!8199 0))(
  ( (ElementMatch!8199 (c!453625 C!16556)) (Concat!13287 (regOne!16910 Regex!8199) (regTwo!16910 Regex!8199)) (EmptyExpr!8199) (Star!8199 (reg!8528 Regex!8199)) (EmptyLang!8199) (Union!8199 (regOne!16911 Regex!8199) (regTwo!16911 Regex!8199)) )
))
(declare-datatypes ((List!32559 0))(
  ( (Nil!32459) (Cons!32459 (h!37879 Regex!8199) (t!228719 List!32559)) )
))
(declare-datatypes ((Context!4834 0))(
  ( (Context!4835 (exprs!2917 List!32559)) )
))
(declare-fun setElem!24224 () Context!4834)

(declare-fun inv!44090 (Context!4834) Bool)

(assert (=> setNonEmpty!24224 (= setRes!24224 (and tp!889887 (inv!44090 setElem!24224) e!1766149))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3684 () (InoxSet Context!4834))

(declare-fun setRest!24224 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24224 (= z!3684 ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24224 true) setRest!24224))))

(declare-fun b!2796338 () Bool)

(declare-fun e!1766141 () Bool)

(declare-fun e!1766146 () Bool)

(assert (=> b!2796338 (= e!1766141 e!1766146)))

(declare-fun e!1766130 () Bool)

(declare-fun e!1766138 () Bool)

(assert (=> b!2796339 (= e!1766130 (and e!1766138 tp!889882))))

(declare-fun mapIsEmpty!18154 () Bool)

(declare-fun mapRes!18153 () Bool)

(assert (=> mapIsEmpty!18154 mapRes!18153))

(declare-fun b!2796340 () Bool)

(declare-fun e!1766134 () Bool)

(declare-fun tp!889874 () Bool)

(assert (=> b!2796340 (= e!1766134 (and tp!889874 mapRes!18154))))

(declare-fun condMapEmpty!18153 () Bool)

(declare-datatypes ((array!14188 0))(
  ( (array!14189 (arr!6323 (Array (_ BitVec 32) (_ BitVec 64))) (size!25308 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!5132 0))(
  ( (tuple3!5133 (_1!19532 Regex!8199) (_2!19532 Context!4834) (_3!3036 C!16556)) )
))
(declare-datatypes ((tuple2!32992 0))(
  ( (tuple2!32993 (_1!19533 tuple3!5132) (_2!19533 (InoxSet Context!4834))) )
))
(declare-datatypes ((List!32560 0))(
  ( (Nil!32460) (Cons!32460 (h!37880 tuple2!32992) (t!228720 List!32560)) )
))
(declare-datatypes ((array!14190 0))(
  ( (array!14191 (arr!6324 (Array (_ BitVec 32) List!32560)) (size!25309 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7982 0))(
  ( (LongMapFixedSize!7983 (defaultEntry!4376 Int) (mask!9827 (_ BitVec 32)) (extraKeys!4240 (_ BitVec 32)) (zeroValue!4250 List!32560) (minValue!4250 List!32560) (_size!8025 (_ BitVec 32)) (_keys!4291 array!14188) (_values!4272 array!14190) (_vacant!4052 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15773 0))(
  ( (Cell!15774 (v!34061 LongMapFixedSize!7982)) )
))
(declare-datatypes ((MutLongMap!3991 0))(
  ( (LongMap!3991 (underlying!8185 Cell!15773)) (MutLongMapExt!3990 (__x!21623 Int)) )
))
(declare-datatypes ((Cell!15775 0))(
  ( (Cell!15776 (v!34062 MutLongMap!3991)) )
))
(declare-datatypes ((Hashable!3907 0))(
  ( (HashableExt!3906 (__x!21624 Int)) )
))
(declare-datatypes ((MutableMap!3897 0))(
  ( (MutableMapExt!3896 (__x!21625 Int)) (HashMap!3897 (underlying!8186 Cell!15775) (hashF!5939 Hashable!3907) (_size!8026 (_ BitVec 32)) (defaultValue!4068 Int)) )
))
(declare-datatypes ((CacheDown!2724 0))(
  ( (CacheDown!2725 (cache!4040 MutableMap!3897)) )
))
(declare-fun cacheDown!1009 () CacheDown!2724)

(declare-fun mapDefault!18154 () List!32560)

(assert (=> b!2796340 (= condMapEmpty!18153 (= (arr!6324 (_values!4272 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32560)) mapDefault!18154)))))

(declare-fun mapNonEmpty!18153 () Bool)

(declare-fun tp!889878 () Bool)

(declare-fun tp!889877 () Bool)

(assert (=> mapNonEmpty!18153 (= mapRes!18154 (and tp!889878 tp!889877))))

(declare-fun mapRest!18153 () (Array (_ BitVec 32) List!32560))

(declare-fun mapValue!18153 () List!32560)

(declare-fun mapKey!18153 () (_ BitVec 32))

(assert (=> mapNonEmpty!18153 (= (arr!6324 (_values!4272 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009))))))) (store mapRest!18153 mapKey!18153 mapValue!18153))))

(declare-fun b!2796341 () Bool)

(declare-fun res!1165729 () Bool)

(declare-fun e!1766145 () Bool)

(assert (=> b!2796341 (=> (not res!1165729) (not e!1766145))))

(declare-fun valid!3128 (CacheDown!2724) Bool)

(assert (=> b!2796341 (= res!1165729 (valid!3128 cacheDown!1009))))

(declare-fun b!2796342 () Bool)

(declare-fun e!1766139 () Bool)

(declare-fun tp_is_empty!14211 () Bool)

(declare-fun tp!889875 () Bool)

(assert (=> b!2796342 (= e!1766139 (and tp_is_empty!14211 tp!889875))))

(declare-fun b!2796343 () Bool)

(declare-fun tp!889872 () Bool)

(assert (=> b!2796343 (= e!1766149 tp!889872)))

(declare-fun e!1766143 () Bool)

(declare-fun tp!889881 () Bool)

(declare-fun tp!889879 () Bool)

(declare-fun array_inv!4528 (array!14188) Bool)

(declare-fun array_inv!4529 (array!14190) Bool)

(assert (=> b!2796344 (= e!1766143 (and tp!889885 tp!889881 tp!889879 (array_inv!4528 (_keys!4291 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009))))))) (array_inv!4529 (_values!4272 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009))))))) e!1766134))))

(declare-fun b!2796345 () Bool)

(declare-fun res!1165736 () Bool)

(assert (=> b!2796345 (=> (not res!1165736) (not e!1766145))))

(declare-fun totalInputSize!205 () Int)

(declare-datatypes ((List!32561 0))(
  ( (Nil!32461) (Cons!32461 (h!37881 C!16556) (t!228721 List!32561)) )
))
(declare-datatypes ((IArray!20127 0))(
  ( (IArray!20128 (innerList!10121 List!32561)) )
))
(declare-datatypes ((Conc!10061 0))(
  ( (Node!10061 (left!24558 Conc!10061) (right!24888 Conc!10061) (csize!20352 Int) (cheight!10272 Int)) (Leaf!15329 (xs!13173 IArray!20127) (csize!20353 Int)) (Empty!10061) )
))
(declare-datatypes ((BalanceConc!19736 0))(
  ( (BalanceConc!19737 (c!453626 Conc!10061)) )
))
(declare-fun totalInput!758 () BalanceConc!19736)

(declare-fun size!25310 (BalanceConc!19736) Int)

(assert (=> b!2796345 (= res!1165736 (= totalInputSize!205 (size!25310 totalInput!758)))))

(declare-fun b!2796346 () Bool)

(declare-fun e!1766147 () Bool)

(declare-fun lt!999035 () List!32561)

(declare-fun lt!999033 () Int)

(declare-fun size!25311 (List!32561) Int)

(assert (=> b!2796346 (= e!1766147 (= (size!25311 lt!999035) lt!999033))))

(declare-fun b!2796347 () Bool)

(declare-fun e!1766137 () Bool)

(assert (=> b!2796347 (= e!1766137 e!1766143)))

(declare-fun b!2796348 () Bool)

(declare-fun res!1165737 () Bool)

(assert (=> b!2796348 (=> res!1165737 e!1766147)))

(declare-fun lt!999034 () List!32561)

(declare-fun lt!999039 () List!32561)

(assert (=> b!2796348 (= res!1165737 (not (= lt!999034 lt!999039)))))

(declare-fun e!1766144 () Bool)

(assert (=> b!2796349 (= e!1766146 (and e!1766144 tp!889876))))

(declare-fun b!2796350 () Bool)

(declare-fun e!1766128 () Bool)

(declare-fun e!1766126 () Bool)

(assert (=> b!2796350 (= e!1766128 e!1766126)))

(declare-fun b!2796351 () Bool)

(declare-fun res!1165730 () Bool)

(declare-fun e!1766129 () Bool)

(assert (=> b!2796351 (=> res!1165730 e!1766129)))

(declare-fun testedPSize!143 () Int)

(assert (=> b!2796351 (= res!1165730 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2796352 () Bool)

(declare-fun e!1766127 () Bool)

(declare-fun tp!889883 () Bool)

(assert (=> b!2796352 (= e!1766127 (and tp_is_empty!14211 tp!889883))))

(declare-fun b!2796353 () Bool)

(declare-fun e!1766136 () Bool)

(declare-fun tp!889884 () Bool)

(assert (=> b!2796353 (= e!1766136 (and tp!889884 mapRes!18153))))

(declare-fun condMapEmpty!18154 () Bool)

(declare-datatypes ((Hashable!3908 0))(
  ( (HashableExt!3907 (__x!21626 Int)) )
))
(declare-datatypes ((tuple2!32994 0))(
  ( (tuple2!32995 (_1!19534 Context!4834) (_2!19534 C!16556)) )
))
(declare-datatypes ((tuple2!32996 0))(
  ( (tuple2!32997 (_1!19535 tuple2!32994) (_2!19535 (InoxSet Context!4834))) )
))
(declare-datatypes ((List!32562 0))(
  ( (Nil!32462) (Cons!32462 (h!37882 tuple2!32996) (t!228722 List!32562)) )
))
(declare-datatypes ((array!14192 0))(
  ( (array!14193 (arr!6325 (Array (_ BitVec 32) List!32562)) (size!25312 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7984 0))(
  ( (LongMapFixedSize!7985 (defaultEntry!4377 Int) (mask!9828 (_ BitVec 32)) (extraKeys!4241 (_ BitVec 32)) (zeroValue!4251 List!32562) (minValue!4251 List!32562) (_size!8027 (_ BitVec 32)) (_keys!4292 array!14188) (_values!4273 array!14192) (_vacant!4053 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15777 0))(
  ( (Cell!15778 (v!34063 LongMapFixedSize!7984)) )
))
(declare-datatypes ((MutLongMap!3992 0))(
  ( (LongMap!3992 (underlying!8187 Cell!15777)) (MutLongMapExt!3991 (__x!21627 Int)) )
))
(declare-datatypes ((Cell!15779 0))(
  ( (Cell!15780 (v!34064 MutLongMap!3992)) )
))
(declare-datatypes ((MutableMap!3898 0))(
  ( (MutableMapExt!3897 (__x!21628 Int)) (HashMap!3898 (underlying!8188 Cell!15779) (hashF!5940 Hashable!3908) (_size!8028 (_ BitVec 32)) (defaultValue!4069 Int)) )
))
(declare-datatypes ((CacheUp!2602 0))(
  ( (CacheUp!2603 (cache!4041 MutableMap!3898)) )
))
(declare-fun cacheUp!890 () CacheUp!2602)

(declare-fun mapDefault!18153 () List!32562)

(assert (=> b!2796353 (= condMapEmpty!18154 (= (arr!6325 (_values!4273 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32562)) mapDefault!18153)))))

(declare-fun b!2796354 () Bool)

(declare-fun e!1766135 () Bool)

(declare-fun lt!999030 () MutLongMap!3991)

(get-info :version)

(assert (=> b!2796354 (= e!1766144 (and e!1766135 ((_ is LongMap!3991) lt!999030)))))

(assert (=> b!2796354 (= lt!999030 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009))))))

(declare-fun b!2796355 () Bool)

(declare-fun e!1766148 () Bool)

(assert (=> b!2796355 (= e!1766148 e!1766130)))

(declare-fun mapNonEmpty!18154 () Bool)

(declare-fun tp!889886 () Bool)

(declare-fun tp!889889 () Bool)

(assert (=> mapNonEmpty!18154 (= mapRes!18153 (and tp!889886 tp!889889))))

(declare-fun mapRest!18154 () (Array (_ BitVec 32) List!32562))

(declare-fun mapKey!18154 () (_ BitVec 32))

(declare-fun mapValue!18154 () List!32562)

(assert (=> mapNonEmpty!18154 (= (arr!6325 (_values!4273 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890))))))) (store mapRest!18154 mapKey!18154 mapValue!18154))))

(declare-fun b!2796356 () Bool)

(declare-fun res!1165734 () Bool)

(assert (=> b!2796356 (=> (not res!1165734) (not e!1766145))))

(declare-fun valid!3129 (CacheUp!2602) Bool)

(assert (=> b!2796356 (= res!1165734 (valid!3129 cacheUp!890))))

(declare-fun b!2796357 () Bool)

(assert (=> b!2796357 (= e!1766129 e!1766147)))

(declare-fun res!1165735 () Bool)

(assert (=> b!2796357 (=> res!1165735 e!1766147)))

(declare-fun lt!999036 () List!32561)

(assert (=> b!2796357 (= res!1165735 (not (= lt!999034 lt!999036)))))

(declare-datatypes ((tuple2!32998 0))(
  ( (tuple2!32999 (_1!19536 BalanceConc!19736) (_2!19536 BalanceConc!19736)) )
))
(declare-fun lt!999029 () tuple2!32998)

(declare-fun ++!8009 (List!32561 List!32561) List!32561)

(declare-fun list!12196 (BalanceConc!19736) List!32561)

(assert (=> b!2796357 (= lt!999034 (++!8009 lt!999035 (list!12196 (_2!19536 lt!999029))))))

(assert (=> b!2796357 (= lt!999035 (list!12196 (_1!19536 lt!999029)))))

(declare-fun splitAt!178 (BalanceConc!19736 Int) tuple2!32998)

(assert (=> b!2796357 (= lt!999029 (splitAt!178 totalInput!758 testedPSize!143))))

(declare-fun b!2796358 () Bool)

(declare-fun e!1766132 () Bool)

(assert (=> b!2796358 (= e!1766132 e!1766129)))

(declare-fun res!1165731 () Bool)

(assert (=> b!2796358 (=> res!1165731 e!1766129)))

(declare-fun lostCauseZipper!494 ((InoxSet Context!4834)) Bool)

(assert (=> b!2796358 (= res!1165731 (lostCauseZipper!494 z!3684))))

(declare-fun testedSuffix!143 () List!32561)

(declare-fun lt!999032 () List!32561)

(assert (=> b!2796358 (and (= testedSuffix!143 lt!999032) (= lt!999032 testedSuffix!143))))

(declare-datatypes ((Unit!46602 0))(
  ( (Unit!46603) )
))
(declare-fun lt!999031 () Unit!46602)

(declare-fun testedP!183 () List!32561)

(declare-fun lemmaSamePrefixThenSameSuffix!1197 (List!32561 List!32561 List!32561 List!32561 List!32561) Unit!46602)

(assert (=> b!2796358 (= lt!999031 (lemmaSamePrefixThenSameSuffix!1197 testedP!183 testedSuffix!143 testedP!183 lt!999032 lt!999036))))

(declare-fun getSuffix!1299 (List!32561 List!32561) List!32561)

(assert (=> b!2796358 (= lt!999032 (getSuffix!1299 lt!999036 testedP!183))))

(declare-fun res!1165733 () Bool)

(declare-fun e!1766142 () Bool)

(assert (=> start!270318 (=> (not res!1165733) (not e!1766142))))

(assert (=> start!270318 (= res!1165733 (= lt!999039 lt!999036))))

(assert (=> start!270318 (= lt!999036 (list!12196 totalInput!758))))

(assert (=> start!270318 (= lt!999039 (++!8009 testedP!183 testedSuffix!143))))

(assert (=> start!270318 e!1766142))

(declare-fun e!1766131 () Bool)

(declare-fun inv!44091 (BalanceConc!19736) Bool)

(assert (=> start!270318 (and (inv!44091 totalInput!758) e!1766131)))

(declare-fun condSetEmpty!24224 () Bool)

(assert (=> start!270318 (= condSetEmpty!24224 (= z!3684 ((as const (Array Context!4834 Bool)) false)))))

(assert (=> start!270318 setRes!24224))

(assert (=> start!270318 true))

(assert (=> start!270318 e!1766127))

(assert (=> start!270318 e!1766139))

(declare-fun inv!44092 (CacheDown!2724) Bool)

(assert (=> start!270318 (and (inv!44092 cacheDown!1009) e!1766141)))

(declare-fun inv!44093 (CacheUp!2602) Bool)

(assert (=> start!270318 (and (inv!44093 cacheUp!890) e!1766148)))

(declare-fun b!2796359 () Bool)

(declare-fun lt!999037 () MutLongMap!3992)

(assert (=> b!2796359 (= e!1766138 (and e!1766128 ((_ is LongMap!3992) lt!999037)))))

(assert (=> b!2796359 (= lt!999037 (v!34064 (underlying!8188 (cache!4041 cacheUp!890))))))

(declare-fun b!2796360 () Bool)

(assert (=> b!2796360 (= e!1766142 e!1766145)))

(declare-fun res!1165728 () Bool)

(assert (=> b!2796360 (=> (not res!1165728) (not e!1766145))))

(assert (=> b!2796360 (= res!1165728 (= testedPSize!143 lt!999033))))

(assert (=> b!2796360 (= lt!999033 (size!25311 testedP!183))))

(declare-fun tp!889871 () Bool)

(declare-fun e!1766125 () Bool)

(declare-fun tp!889888 () Bool)

(declare-fun array_inv!4530 (array!14192) Bool)

(assert (=> b!2796361 (= e!1766125 (and tp!889880 tp!889871 tp!889888 (array_inv!4528 (_keys!4292 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890))))))) (array_inv!4530 (_values!4273 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890))))))) e!1766136))))

(declare-fun b!2796362 () Bool)

(declare-fun res!1165732 () Bool)

(assert (=> b!2796362 (=> res!1165732 e!1766147)))

(assert (=> b!2796362 (= res!1165732 (not (= (size!25310 (_1!19536 lt!999029)) testedPSize!143)))))

(declare-fun setIsEmpty!24224 () Bool)

(assert (=> setIsEmpty!24224 setRes!24224))

(declare-fun b!2796363 () Bool)

(assert (=> b!2796363 (= e!1766145 (not e!1766132))))

(declare-fun res!1165727 () Bool)

(assert (=> b!2796363 (=> res!1165727 e!1766132)))

(declare-fun isPrefix!2623 (List!32561 List!32561) Bool)

(assert (=> b!2796363 (= res!1165727 (not (isPrefix!2623 testedP!183 lt!999036)))))

(assert (=> b!2796363 (isPrefix!2623 testedP!183 lt!999039)))

(declare-fun lt!999038 () Unit!46602)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1731 (List!32561 List!32561) Unit!46602)

(assert (=> b!2796363 (= lt!999038 (lemmaConcatTwoListThenFirstIsPrefix!1731 testedP!183 testedSuffix!143))))

(declare-fun b!2796364 () Bool)

(assert (=> b!2796364 (= e!1766135 e!1766137)))

(declare-fun b!2796365 () Bool)

(declare-fun tp!889873 () Bool)

(declare-fun inv!44094 (Conc!10061) Bool)

(assert (=> b!2796365 (= e!1766131 (and (inv!44094 (c!453626 totalInput!758)) tp!889873))))

(declare-fun b!2796366 () Bool)

(assert (=> b!2796366 (= e!1766126 e!1766125)))

(assert (= (and start!270318 res!1165733) b!2796360))

(assert (= (and b!2796360 res!1165728) b!2796345))

(assert (= (and b!2796345 res!1165736) b!2796356))

(assert (= (and b!2796356 res!1165734) b!2796341))

(assert (= (and b!2796341 res!1165729) b!2796363))

(assert (= (and b!2796363 (not res!1165727)) b!2796358))

(assert (= (and b!2796358 (not res!1165731)) b!2796351))

(assert (= (and b!2796351 (not res!1165730)) b!2796357))

(assert (= (and b!2796357 (not res!1165735)) b!2796362))

(assert (= (and b!2796362 (not res!1165732)) b!2796348))

(assert (= (and b!2796348 (not res!1165737)) b!2796346))

(assert (= start!270318 b!2796365))

(assert (= (and start!270318 condSetEmpty!24224) setIsEmpty!24224))

(assert (= (and start!270318 (not condSetEmpty!24224)) setNonEmpty!24224))

(assert (= setNonEmpty!24224 b!2796343))

(assert (= (and start!270318 ((_ is Cons!32461) testedP!183)) b!2796352))

(assert (= (and start!270318 ((_ is Cons!32461) testedSuffix!143)) b!2796342))

(assert (= (and b!2796340 condMapEmpty!18153) mapIsEmpty!18153))

(assert (= (and b!2796340 (not condMapEmpty!18153)) mapNonEmpty!18153))

(assert (= b!2796344 b!2796340))

(assert (= b!2796347 b!2796344))

(assert (= b!2796364 b!2796347))

(assert (= (and b!2796354 ((_ is LongMap!3991) (v!34062 (underlying!8186 (cache!4040 cacheDown!1009))))) b!2796364))

(assert (= b!2796349 b!2796354))

(assert (= (and b!2796338 ((_ is HashMap!3897) (cache!4040 cacheDown!1009))) b!2796349))

(assert (= start!270318 b!2796338))

(assert (= (and b!2796353 condMapEmpty!18154) mapIsEmpty!18154))

(assert (= (and b!2796353 (not condMapEmpty!18154)) mapNonEmpty!18154))

(assert (= b!2796361 b!2796353))

(assert (= b!2796366 b!2796361))

(assert (= b!2796350 b!2796366))

(assert (= (and b!2796359 ((_ is LongMap!3992) (v!34064 (underlying!8188 (cache!4041 cacheUp!890))))) b!2796350))

(assert (= b!2796339 b!2796359))

(assert (= (and b!2796355 ((_ is HashMap!3898) (cache!4041 cacheUp!890))) b!2796339))

(assert (= start!270318 b!2796355))

(declare-fun m!3225993 () Bool)

(assert (=> mapNonEmpty!18153 m!3225993))

(declare-fun m!3225995 () Bool)

(assert (=> mapNonEmpty!18154 m!3225995))

(declare-fun m!3225997 () Bool)

(assert (=> b!2796341 m!3225997))

(declare-fun m!3225999 () Bool)

(assert (=> b!2796346 m!3225999))

(declare-fun m!3226001 () Bool)

(assert (=> b!2796360 m!3226001))

(declare-fun m!3226003 () Bool)

(assert (=> b!2796357 m!3226003))

(assert (=> b!2796357 m!3226003))

(declare-fun m!3226005 () Bool)

(assert (=> b!2796357 m!3226005))

(declare-fun m!3226007 () Bool)

(assert (=> b!2796357 m!3226007))

(declare-fun m!3226009 () Bool)

(assert (=> b!2796357 m!3226009))

(declare-fun m!3226011 () Bool)

(assert (=> b!2796356 m!3226011))

(declare-fun m!3226013 () Bool)

(assert (=> b!2796361 m!3226013))

(declare-fun m!3226015 () Bool)

(assert (=> b!2796361 m!3226015))

(declare-fun m!3226017 () Bool)

(assert (=> start!270318 m!3226017))

(declare-fun m!3226019 () Bool)

(assert (=> start!270318 m!3226019))

(declare-fun m!3226021 () Bool)

(assert (=> start!270318 m!3226021))

(declare-fun m!3226023 () Bool)

(assert (=> start!270318 m!3226023))

(declare-fun m!3226025 () Bool)

(assert (=> start!270318 m!3226025))

(declare-fun m!3226027 () Bool)

(assert (=> setNonEmpty!24224 m!3226027))

(declare-fun m!3226029 () Bool)

(assert (=> b!2796344 m!3226029))

(declare-fun m!3226031 () Bool)

(assert (=> b!2796344 m!3226031))

(declare-fun m!3226033 () Bool)

(assert (=> b!2796345 m!3226033))

(declare-fun m!3226035 () Bool)

(assert (=> b!2796365 m!3226035))

(declare-fun m!3226037 () Bool)

(assert (=> b!2796363 m!3226037))

(declare-fun m!3226039 () Bool)

(assert (=> b!2796363 m!3226039))

(declare-fun m!3226041 () Bool)

(assert (=> b!2796363 m!3226041))

(declare-fun m!3226043 () Bool)

(assert (=> b!2796362 m!3226043))

(declare-fun m!3226045 () Bool)

(assert (=> b!2796358 m!3226045))

(declare-fun m!3226047 () Bool)

(assert (=> b!2796358 m!3226047))

(declare-fun m!3226049 () Bool)

(assert (=> b!2796358 m!3226049))

(check-sat (not b!2796342) (not setNonEmpty!24224) (not b_next!79927) (not b!2796353) (not b!2796345) (not start!270318) (not b!2796358) (not b!2796346) (not b!2796365) (not b_next!79931) (not b!2796360) (not b!2796357) (not b!2796361) (not b_next!79925) (not b!2796352) (not b!2796341) tp_is_empty!14211 (not mapNonEmpty!18154) (not b!2796356) b_and!203965 (not b!2796363) (not b_next!79929) b_and!203959 (not mapNonEmpty!18153) (not b!2796343) (not b!2796362) (not b!2796344) b_and!203963 b_and!203961 (not b!2796340))
(check-sat (not b_next!79925) b_and!203965 b_and!203963 (not b_next!79927) (not b_next!79931) b_and!203961 (not b_next!79929) b_and!203959)
(get-model)

(declare-fun d!812752 () Bool)

(declare-fun lt!999042 () Int)

(assert (=> d!812752 (>= lt!999042 0)))

(declare-fun e!1766152 () Int)

(assert (=> d!812752 (= lt!999042 e!1766152)))

(declare-fun c!453629 () Bool)

(assert (=> d!812752 (= c!453629 ((_ is Nil!32461) testedP!183))))

(assert (=> d!812752 (= (size!25311 testedP!183) lt!999042)))

(declare-fun b!2796371 () Bool)

(assert (=> b!2796371 (= e!1766152 0)))

(declare-fun b!2796372 () Bool)

(assert (=> b!2796372 (= e!1766152 (+ 1 (size!25311 (t!228721 testedP!183))))))

(assert (= (and d!812752 c!453629) b!2796371))

(assert (= (and d!812752 (not c!453629)) b!2796372))

(declare-fun m!3226051 () Bool)

(assert (=> b!2796372 m!3226051))

(assert (=> b!2796360 d!812752))

(declare-fun d!812754 () Bool)

(declare-fun validCacheMapDown!424 (MutableMap!3897) Bool)

(assert (=> d!812754 (= (valid!3128 cacheDown!1009) (validCacheMapDown!424 (cache!4040 cacheDown!1009)))))

(declare-fun bs!515021 () Bool)

(assert (= bs!515021 d!812754))

(declare-fun m!3226053 () Bool)

(assert (=> bs!515021 m!3226053))

(assert (=> b!2796341 d!812754))

(declare-fun d!812756 () Bool)

(assert (=> d!812756 (= (array_inv!4528 (_keys!4292 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890))))))) (bvsge (size!25308 (_keys!4292 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2796361 d!812756))

(declare-fun d!812758 () Bool)

(assert (=> d!812758 (= (array_inv!4530 (_values!4273 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890))))))) (bvsge (size!25312 (_values!4273 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2796361 d!812758))

(declare-fun d!812760 () Bool)

(declare-fun lt!999045 () Int)

(assert (=> d!812760 (= lt!999045 (size!25311 (list!12196 (_1!19536 lt!999029))))))

(declare-fun size!25313 (Conc!10061) Int)

(assert (=> d!812760 (= lt!999045 (size!25313 (c!453626 (_1!19536 lt!999029))))))

(assert (=> d!812760 (= (size!25310 (_1!19536 lt!999029)) lt!999045)))

(declare-fun bs!515022 () Bool)

(assert (= bs!515022 d!812760))

(assert (=> bs!515022 m!3226007))

(assert (=> bs!515022 m!3226007))

(declare-fun m!3226055 () Bool)

(assert (=> bs!515022 m!3226055))

(declare-fun m!3226057 () Bool)

(assert (=> bs!515022 m!3226057))

(assert (=> b!2796362 d!812760))

(declare-fun d!812762 () Bool)

(assert (=> d!812762 (= (array_inv!4528 (_keys!4291 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009))))))) (bvsge (size!25308 (_keys!4291 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2796344 d!812762))

(declare-fun d!812764 () Bool)

(assert (=> d!812764 (= (array_inv!4529 (_values!4272 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009))))))) (bvsge (size!25309 (_values!4272 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2796344 d!812764))

(declare-fun b!2796382 () Bool)

(declare-fun res!1165748 () Bool)

(declare-fun e!1766159 () Bool)

(assert (=> b!2796382 (=> (not res!1165748) (not e!1766159))))

(declare-fun head!6189 (List!32561) C!16556)

(assert (=> b!2796382 (= res!1165748 (= (head!6189 testedP!183) (head!6189 lt!999036)))))

(declare-fun b!2796383 () Bool)

(declare-fun tail!4420 (List!32561) List!32561)

(assert (=> b!2796383 (= e!1766159 (isPrefix!2623 (tail!4420 testedP!183) (tail!4420 lt!999036)))))

(declare-fun b!2796384 () Bool)

(declare-fun e!1766160 () Bool)

(assert (=> b!2796384 (= e!1766160 (>= (size!25311 lt!999036) (size!25311 testedP!183)))))

(declare-fun b!2796381 () Bool)

(declare-fun e!1766161 () Bool)

(assert (=> b!2796381 (= e!1766161 e!1766159)))

(declare-fun res!1165747 () Bool)

(assert (=> b!2796381 (=> (not res!1165747) (not e!1766159))))

(assert (=> b!2796381 (= res!1165747 (not ((_ is Nil!32461) lt!999036)))))

(declare-fun d!812766 () Bool)

(assert (=> d!812766 e!1766160))

(declare-fun res!1165746 () Bool)

(assert (=> d!812766 (=> res!1165746 e!1766160)))

(declare-fun lt!999048 () Bool)

(assert (=> d!812766 (= res!1165746 (not lt!999048))))

(assert (=> d!812766 (= lt!999048 e!1766161)))

(declare-fun res!1165749 () Bool)

(assert (=> d!812766 (=> res!1165749 e!1766161)))

(assert (=> d!812766 (= res!1165749 ((_ is Nil!32461) testedP!183))))

(assert (=> d!812766 (= (isPrefix!2623 testedP!183 lt!999036) lt!999048)))

(assert (= (and d!812766 (not res!1165749)) b!2796381))

(assert (= (and b!2796381 res!1165747) b!2796382))

(assert (= (and b!2796382 res!1165748) b!2796383))

(assert (= (and d!812766 (not res!1165746)) b!2796384))

(declare-fun m!3226059 () Bool)

(assert (=> b!2796382 m!3226059))

(declare-fun m!3226061 () Bool)

(assert (=> b!2796382 m!3226061))

(declare-fun m!3226063 () Bool)

(assert (=> b!2796383 m!3226063))

(declare-fun m!3226065 () Bool)

(assert (=> b!2796383 m!3226065))

(assert (=> b!2796383 m!3226063))

(assert (=> b!2796383 m!3226065))

(declare-fun m!3226067 () Bool)

(assert (=> b!2796383 m!3226067))

(declare-fun m!3226069 () Bool)

(assert (=> b!2796384 m!3226069))

(assert (=> b!2796384 m!3226001))

(assert (=> b!2796363 d!812766))

(declare-fun b!2796386 () Bool)

(declare-fun res!1165752 () Bool)

(declare-fun e!1766162 () Bool)

(assert (=> b!2796386 (=> (not res!1165752) (not e!1766162))))

(assert (=> b!2796386 (= res!1165752 (= (head!6189 testedP!183) (head!6189 lt!999039)))))

(declare-fun b!2796387 () Bool)

(assert (=> b!2796387 (= e!1766162 (isPrefix!2623 (tail!4420 testedP!183) (tail!4420 lt!999039)))))

(declare-fun b!2796388 () Bool)

(declare-fun e!1766163 () Bool)

(assert (=> b!2796388 (= e!1766163 (>= (size!25311 lt!999039) (size!25311 testedP!183)))))

(declare-fun b!2796385 () Bool)

(declare-fun e!1766164 () Bool)

(assert (=> b!2796385 (= e!1766164 e!1766162)))

(declare-fun res!1165751 () Bool)

(assert (=> b!2796385 (=> (not res!1165751) (not e!1766162))))

(assert (=> b!2796385 (= res!1165751 (not ((_ is Nil!32461) lt!999039)))))

(declare-fun d!812768 () Bool)

(assert (=> d!812768 e!1766163))

(declare-fun res!1165750 () Bool)

(assert (=> d!812768 (=> res!1165750 e!1766163)))

(declare-fun lt!999049 () Bool)

(assert (=> d!812768 (= res!1165750 (not lt!999049))))

(assert (=> d!812768 (= lt!999049 e!1766164)))

(declare-fun res!1165753 () Bool)

(assert (=> d!812768 (=> res!1165753 e!1766164)))

(assert (=> d!812768 (= res!1165753 ((_ is Nil!32461) testedP!183))))

(assert (=> d!812768 (= (isPrefix!2623 testedP!183 lt!999039) lt!999049)))

(assert (= (and d!812768 (not res!1165753)) b!2796385))

(assert (= (and b!2796385 res!1165751) b!2796386))

(assert (= (and b!2796386 res!1165752) b!2796387))

(assert (= (and d!812768 (not res!1165750)) b!2796388))

(assert (=> b!2796386 m!3226059))

(declare-fun m!3226071 () Bool)

(assert (=> b!2796386 m!3226071))

(assert (=> b!2796387 m!3226063))

(declare-fun m!3226073 () Bool)

(assert (=> b!2796387 m!3226073))

(assert (=> b!2796387 m!3226063))

(assert (=> b!2796387 m!3226073))

(declare-fun m!3226075 () Bool)

(assert (=> b!2796387 m!3226075))

(declare-fun m!3226077 () Bool)

(assert (=> b!2796388 m!3226077))

(assert (=> b!2796388 m!3226001))

(assert (=> b!2796363 d!812768))

(declare-fun d!812770 () Bool)

(assert (=> d!812770 (isPrefix!2623 testedP!183 (++!8009 testedP!183 testedSuffix!143))))

(declare-fun lt!999052 () Unit!46602)

(declare-fun choose!16444 (List!32561 List!32561) Unit!46602)

(assert (=> d!812770 (= lt!999052 (choose!16444 testedP!183 testedSuffix!143))))

(assert (=> d!812770 (= (lemmaConcatTwoListThenFirstIsPrefix!1731 testedP!183 testedSuffix!143) lt!999052)))

(declare-fun bs!515023 () Bool)

(assert (= bs!515023 d!812770))

(assert (=> bs!515023 m!3226025))

(assert (=> bs!515023 m!3226025))

(declare-fun m!3226079 () Bool)

(assert (=> bs!515023 m!3226079))

(declare-fun m!3226081 () Bool)

(assert (=> bs!515023 m!3226081))

(assert (=> b!2796363 d!812770))

(declare-fun d!812772 () Bool)

(declare-fun lt!999053 () Int)

(assert (=> d!812772 (= lt!999053 (size!25311 (list!12196 totalInput!758)))))

(assert (=> d!812772 (= lt!999053 (size!25313 (c!453626 totalInput!758)))))

(assert (=> d!812772 (= (size!25310 totalInput!758) lt!999053)))

(declare-fun bs!515024 () Bool)

(assert (= bs!515024 d!812772))

(assert (=> bs!515024 m!3226017))

(assert (=> bs!515024 m!3226017))

(declare-fun m!3226083 () Bool)

(assert (=> bs!515024 m!3226083))

(declare-fun m!3226085 () Bool)

(assert (=> bs!515024 m!3226085))

(assert (=> b!2796345 d!812772))

(declare-fun d!812774 () Bool)

(declare-fun validCacheMapUp!393 (MutableMap!3898) Bool)

(assert (=> d!812774 (= (valid!3129 cacheUp!890) (validCacheMapUp!393 (cache!4041 cacheUp!890)))))

(declare-fun bs!515025 () Bool)

(assert (= bs!515025 d!812774))

(declare-fun m!3226087 () Bool)

(assert (=> bs!515025 m!3226087))

(assert (=> b!2796356 d!812774))

(declare-fun d!812776 () Bool)

(declare-fun lt!999054 () Int)

(assert (=> d!812776 (>= lt!999054 0)))

(declare-fun e!1766165 () Int)

(assert (=> d!812776 (= lt!999054 e!1766165)))

(declare-fun c!453630 () Bool)

(assert (=> d!812776 (= c!453630 ((_ is Nil!32461) lt!999035))))

(assert (=> d!812776 (= (size!25311 lt!999035) lt!999054)))

(declare-fun b!2796389 () Bool)

(assert (=> b!2796389 (= e!1766165 0)))

(declare-fun b!2796390 () Bool)

(assert (=> b!2796390 (= e!1766165 (+ 1 (size!25311 (t!228721 lt!999035))))))

(assert (= (and d!812776 c!453630) b!2796389))

(assert (= (and d!812776 (not c!453630)) b!2796390))

(declare-fun m!3226089 () Bool)

(assert (=> b!2796390 m!3226089))

(assert (=> b!2796346 d!812776))

(declare-fun d!812778 () Bool)

(declare-fun res!1165756 () Bool)

(declare-fun e!1766168 () Bool)

(assert (=> d!812778 (=> (not res!1165756) (not e!1766168))))

(assert (=> d!812778 (= res!1165756 ((_ is HashMap!3898) (cache!4041 cacheUp!890)))))

(assert (=> d!812778 (= (inv!44093 cacheUp!890) e!1766168)))

(declare-fun b!2796393 () Bool)

(assert (=> b!2796393 (= e!1766168 (validCacheMapUp!393 (cache!4041 cacheUp!890)))))

(assert (= (and d!812778 res!1165756) b!2796393))

(assert (=> b!2796393 m!3226087))

(assert (=> start!270318 d!812778))

(declare-fun d!812780 () Bool)

(declare-fun isBalanced!3069 (Conc!10061) Bool)

(assert (=> d!812780 (= (inv!44091 totalInput!758) (isBalanced!3069 (c!453626 totalInput!758)))))

(declare-fun bs!515026 () Bool)

(assert (= bs!515026 d!812780))

(declare-fun m!3226091 () Bool)

(assert (=> bs!515026 m!3226091))

(assert (=> start!270318 d!812780))

(declare-fun d!812782 () Bool)

(declare-fun res!1165759 () Bool)

(declare-fun e!1766171 () Bool)

(assert (=> d!812782 (=> (not res!1165759) (not e!1766171))))

(assert (=> d!812782 (= res!1165759 ((_ is HashMap!3897) (cache!4040 cacheDown!1009)))))

(assert (=> d!812782 (= (inv!44092 cacheDown!1009) e!1766171)))

(declare-fun b!2796396 () Bool)

(assert (=> b!2796396 (= e!1766171 (validCacheMapDown!424 (cache!4040 cacheDown!1009)))))

(assert (= (and d!812782 res!1165759) b!2796396))

(assert (=> b!2796396 m!3226053))

(assert (=> start!270318 d!812782))

(declare-fun d!812784 () Bool)

(declare-fun list!12197 (Conc!10061) List!32561)

(assert (=> d!812784 (= (list!12196 totalInput!758) (list!12197 (c!453626 totalInput!758)))))

(declare-fun bs!515027 () Bool)

(assert (= bs!515027 d!812784))

(declare-fun m!3226093 () Bool)

(assert (=> bs!515027 m!3226093))

(assert (=> start!270318 d!812784))

(declare-fun b!2796407 () Bool)

(declare-fun res!1165765 () Bool)

(declare-fun e!1766176 () Bool)

(assert (=> b!2796407 (=> (not res!1165765) (not e!1766176))))

(declare-fun lt!999057 () List!32561)

(assert (=> b!2796407 (= res!1165765 (= (size!25311 lt!999057) (+ (size!25311 testedP!183) (size!25311 testedSuffix!143))))))

(declare-fun b!2796406 () Bool)

(declare-fun e!1766177 () List!32561)

(assert (=> b!2796406 (= e!1766177 (Cons!32461 (h!37881 testedP!183) (++!8009 (t!228721 testedP!183) testedSuffix!143)))))

(declare-fun b!2796408 () Bool)

(assert (=> b!2796408 (= e!1766176 (or (not (= testedSuffix!143 Nil!32461)) (= lt!999057 testedP!183)))))

(declare-fun b!2796405 () Bool)

(assert (=> b!2796405 (= e!1766177 testedSuffix!143)))

(declare-fun d!812786 () Bool)

(assert (=> d!812786 e!1766176))

(declare-fun res!1165764 () Bool)

(assert (=> d!812786 (=> (not res!1165764) (not e!1766176))))

(declare-fun content!4537 (List!32561) (InoxSet C!16556))

(assert (=> d!812786 (= res!1165764 (= (content!4537 lt!999057) ((_ map or) (content!4537 testedP!183) (content!4537 testedSuffix!143))))))

(assert (=> d!812786 (= lt!999057 e!1766177)))

(declare-fun c!453633 () Bool)

(assert (=> d!812786 (= c!453633 ((_ is Nil!32461) testedP!183))))

(assert (=> d!812786 (= (++!8009 testedP!183 testedSuffix!143) lt!999057)))

(assert (= (and d!812786 c!453633) b!2796405))

(assert (= (and d!812786 (not c!453633)) b!2796406))

(assert (= (and d!812786 res!1165764) b!2796407))

(assert (= (and b!2796407 res!1165765) b!2796408))

(declare-fun m!3226095 () Bool)

(assert (=> b!2796407 m!3226095))

(assert (=> b!2796407 m!3226001))

(declare-fun m!3226097 () Bool)

(assert (=> b!2796407 m!3226097))

(declare-fun m!3226099 () Bool)

(assert (=> b!2796406 m!3226099))

(declare-fun m!3226101 () Bool)

(assert (=> d!812786 m!3226101))

(declare-fun m!3226103 () Bool)

(assert (=> d!812786 m!3226103))

(declare-fun m!3226105 () Bool)

(assert (=> d!812786 m!3226105))

(assert (=> start!270318 d!812786))

(declare-fun d!812788 () Bool)

(declare-fun lambda!102693 () Int)

(declare-fun forall!6693 (List!32559 Int) Bool)

(assert (=> d!812788 (= (inv!44090 setElem!24224) (forall!6693 (exprs!2917 setElem!24224) lambda!102693))))

(declare-fun bs!515028 () Bool)

(assert (= bs!515028 d!812788))

(declare-fun m!3226107 () Bool)

(assert (=> bs!515028 m!3226107))

(assert (=> setNonEmpty!24224 d!812788))

(declare-fun d!812790 () Bool)

(declare-fun c!453636 () Bool)

(assert (=> d!812790 (= c!453636 ((_ is Node!10061) (c!453626 totalInput!758)))))

(declare-fun e!1766182 () Bool)

(assert (=> d!812790 (= (inv!44094 (c!453626 totalInput!758)) e!1766182)))

(declare-fun b!2796415 () Bool)

(declare-fun inv!44095 (Conc!10061) Bool)

(assert (=> b!2796415 (= e!1766182 (inv!44095 (c!453626 totalInput!758)))))

(declare-fun b!2796416 () Bool)

(declare-fun e!1766183 () Bool)

(assert (=> b!2796416 (= e!1766182 e!1766183)))

(declare-fun res!1165768 () Bool)

(assert (=> b!2796416 (= res!1165768 (not ((_ is Leaf!15329) (c!453626 totalInput!758))))))

(assert (=> b!2796416 (=> res!1165768 e!1766183)))

(declare-fun b!2796417 () Bool)

(declare-fun inv!44096 (Conc!10061) Bool)

(assert (=> b!2796417 (= e!1766183 (inv!44096 (c!453626 totalInput!758)))))

(assert (= (and d!812790 c!453636) b!2796415))

(assert (= (and d!812790 (not c!453636)) b!2796416))

(assert (= (and b!2796416 (not res!1165768)) b!2796417))

(declare-fun m!3226109 () Bool)

(assert (=> b!2796415 m!3226109))

(declare-fun m!3226111 () Bool)

(assert (=> b!2796417 m!3226111))

(assert (=> b!2796365 d!812790))

(declare-fun b!2796420 () Bool)

(declare-fun res!1165770 () Bool)

(declare-fun e!1766184 () Bool)

(assert (=> b!2796420 (=> (not res!1165770) (not e!1766184))))

(declare-fun lt!999058 () List!32561)

(assert (=> b!2796420 (= res!1165770 (= (size!25311 lt!999058) (+ (size!25311 lt!999035) (size!25311 (list!12196 (_2!19536 lt!999029))))))))

(declare-fun b!2796419 () Bool)

(declare-fun e!1766185 () List!32561)

(assert (=> b!2796419 (= e!1766185 (Cons!32461 (h!37881 lt!999035) (++!8009 (t!228721 lt!999035) (list!12196 (_2!19536 lt!999029)))))))

(declare-fun b!2796421 () Bool)

(assert (=> b!2796421 (= e!1766184 (or (not (= (list!12196 (_2!19536 lt!999029)) Nil!32461)) (= lt!999058 lt!999035)))))

(declare-fun b!2796418 () Bool)

(assert (=> b!2796418 (= e!1766185 (list!12196 (_2!19536 lt!999029)))))

(declare-fun d!812792 () Bool)

(assert (=> d!812792 e!1766184))

(declare-fun res!1165769 () Bool)

(assert (=> d!812792 (=> (not res!1165769) (not e!1766184))))

(assert (=> d!812792 (= res!1165769 (= (content!4537 lt!999058) ((_ map or) (content!4537 lt!999035) (content!4537 (list!12196 (_2!19536 lt!999029))))))))

(assert (=> d!812792 (= lt!999058 e!1766185)))

(declare-fun c!453637 () Bool)

(assert (=> d!812792 (= c!453637 ((_ is Nil!32461) lt!999035))))

(assert (=> d!812792 (= (++!8009 lt!999035 (list!12196 (_2!19536 lt!999029))) lt!999058)))

(assert (= (and d!812792 c!453637) b!2796418))

(assert (= (and d!812792 (not c!453637)) b!2796419))

(assert (= (and d!812792 res!1165769) b!2796420))

(assert (= (and b!2796420 res!1165770) b!2796421))

(declare-fun m!3226113 () Bool)

(assert (=> b!2796420 m!3226113))

(assert (=> b!2796420 m!3225999))

(assert (=> b!2796420 m!3226003))

(declare-fun m!3226115 () Bool)

(assert (=> b!2796420 m!3226115))

(assert (=> b!2796419 m!3226003))

(declare-fun m!3226117 () Bool)

(assert (=> b!2796419 m!3226117))

(declare-fun m!3226119 () Bool)

(assert (=> d!812792 m!3226119))

(declare-fun m!3226121 () Bool)

(assert (=> d!812792 m!3226121))

(assert (=> d!812792 m!3226003))

(declare-fun m!3226123 () Bool)

(assert (=> d!812792 m!3226123))

(assert (=> b!2796357 d!812792))

(declare-fun d!812794 () Bool)

(assert (=> d!812794 (= (list!12196 (_2!19536 lt!999029)) (list!12197 (c!453626 (_2!19536 lt!999029))))))

(declare-fun bs!515029 () Bool)

(assert (= bs!515029 d!812794))

(declare-fun m!3226125 () Bool)

(assert (=> bs!515029 m!3226125))

(assert (=> b!2796357 d!812794))

(declare-fun d!812796 () Bool)

(assert (=> d!812796 (= (list!12196 (_1!19536 lt!999029)) (list!12197 (c!453626 (_1!19536 lt!999029))))))

(declare-fun bs!515030 () Bool)

(assert (= bs!515030 d!812796))

(declare-fun m!3226127 () Bool)

(assert (=> bs!515030 m!3226127))

(assert (=> b!2796357 d!812796))

(declare-fun d!812798 () Bool)

(declare-fun e!1766188 () Bool)

(assert (=> d!812798 e!1766188))

(declare-fun res!1165776 () Bool)

(assert (=> d!812798 (=> (not res!1165776) (not e!1766188))))

(declare-fun lt!999064 () tuple2!32998)

(assert (=> d!812798 (= res!1165776 (isBalanced!3069 (c!453626 (_1!19536 lt!999064))))))

(declare-datatypes ((tuple2!33000 0))(
  ( (tuple2!33001 (_1!19537 Conc!10061) (_2!19537 Conc!10061)) )
))
(declare-fun lt!999063 () tuple2!33000)

(assert (=> d!812798 (= lt!999064 (tuple2!32999 (BalanceConc!19737 (_1!19537 lt!999063)) (BalanceConc!19737 (_2!19537 lt!999063))))))

(declare-fun splitAt!179 (Conc!10061 Int) tuple2!33000)

(assert (=> d!812798 (= lt!999063 (splitAt!179 (c!453626 totalInput!758) testedPSize!143))))

(assert (=> d!812798 (isBalanced!3069 (c!453626 totalInput!758))))

(assert (=> d!812798 (= (splitAt!178 totalInput!758 testedPSize!143) lt!999064)))

(declare-fun b!2796426 () Bool)

(declare-fun res!1165775 () Bool)

(assert (=> b!2796426 (=> (not res!1165775) (not e!1766188))))

(assert (=> b!2796426 (= res!1165775 (isBalanced!3069 (c!453626 (_2!19536 lt!999064))))))

(declare-fun b!2796427 () Bool)

(declare-datatypes ((tuple2!33002 0))(
  ( (tuple2!33003 (_1!19538 List!32561) (_2!19538 List!32561)) )
))
(declare-fun splitAtIndex!69 (List!32561 Int) tuple2!33002)

(assert (=> b!2796427 (= e!1766188 (= (tuple2!33003 (list!12196 (_1!19536 lt!999064)) (list!12196 (_2!19536 lt!999064))) (splitAtIndex!69 (list!12196 totalInput!758) testedPSize!143)))))

(assert (= (and d!812798 res!1165776) b!2796426))

(assert (= (and b!2796426 res!1165775) b!2796427))

(declare-fun m!3226129 () Bool)

(assert (=> d!812798 m!3226129))

(declare-fun m!3226131 () Bool)

(assert (=> d!812798 m!3226131))

(assert (=> d!812798 m!3226091))

(declare-fun m!3226133 () Bool)

(assert (=> b!2796426 m!3226133))

(declare-fun m!3226135 () Bool)

(assert (=> b!2796427 m!3226135))

(declare-fun m!3226137 () Bool)

(assert (=> b!2796427 m!3226137))

(assert (=> b!2796427 m!3226017))

(assert (=> b!2796427 m!3226017))

(declare-fun m!3226139 () Bool)

(assert (=> b!2796427 m!3226139))

(assert (=> b!2796357 d!812798))

(declare-fun bs!515031 () Bool)

(declare-fun b!2796432 () Bool)

(declare-fun d!812800 () Bool)

(assert (= bs!515031 (and b!2796432 d!812800)))

(declare-fun lambda!102707 () Int)

(declare-fun lambda!102706 () Int)

(assert (=> bs!515031 (not (= lambda!102707 lambda!102706))))

(declare-fun bs!515032 () Bool)

(declare-fun b!2796433 () Bool)

(assert (= bs!515032 (and b!2796433 d!812800)))

(declare-fun lambda!102708 () Int)

(assert (=> bs!515032 (not (= lambda!102708 lambda!102706))))

(declare-fun bs!515033 () Bool)

(assert (= bs!515033 (and b!2796433 b!2796432)))

(assert (=> bs!515033 (= lambda!102708 lambda!102707)))

(declare-fun e!1766195 () Unit!46602)

(declare-fun Unit!46604 () Unit!46602)

(assert (=> b!2796432 (= e!1766195 Unit!46604)))

(declare-datatypes ((List!32563 0))(
  ( (Nil!32463) (Cons!32463 (h!37883 Context!4834) (t!228723 List!32563)) )
))
(declare-fun lt!999081 () List!32563)

(declare-fun call!182779 () List!32563)

(assert (=> b!2796432 (= lt!999081 call!182779)))

(declare-fun lt!999087 () Unit!46602)

(declare-fun lemmaNotForallThenExists!104 (List!32563 Int) Unit!46602)

(assert (=> b!2796432 (= lt!999087 (lemmaNotForallThenExists!104 lt!999081 lambda!102706))))

(declare-fun call!182778 () Bool)

(assert (=> b!2796432 call!182778))

(declare-fun lt!999084 () Unit!46602)

(assert (=> b!2796432 (= lt!999084 lt!999087)))

(declare-fun lt!999085 () Bool)

(declare-datatypes ((Option!6282 0))(
  ( (None!6281) (Some!6281 (v!34065 List!32561)) )
))
(declare-fun isEmpty!18131 (Option!6282) Bool)

(declare-fun getLanguageWitness!216 ((InoxSet Context!4834)) Option!6282)

(assert (=> d!812800 (= lt!999085 (isEmpty!18131 (getLanguageWitness!216 z!3684)))))

(declare-fun forall!6694 ((InoxSet Context!4834) Int) Bool)

(assert (=> d!812800 (= lt!999085 (forall!6694 z!3684 lambda!102706))))

(declare-fun lt!999086 () Unit!46602)

(assert (=> d!812800 (= lt!999086 e!1766195)))

(declare-fun c!453648 () Bool)

(assert (=> d!812800 (= c!453648 (not (forall!6694 z!3684 lambda!102706)))))

(assert (=> d!812800 (= (lostCauseZipper!494 z!3684) lt!999085)))

(declare-fun bm!182773 () Bool)

(declare-fun toList!1877 ((InoxSet Context!4834)) List!32563)

(assert (=> bm!182773 (= call!182779 (toList!1877 z!3684))))

(declare-fun Unit!46605 () Unit!46602)

(assert (=> b!2796433 (= e!1766195 Unit!46605)))

(declare-fun lt!999082 () List!32563)

(assert (=> b!2796433 (= lt!999082 call!182779)))

(declare-fun lt!999088 () Unit!46602)

(declare-fun lemmaForallThenNotExists!104 (List!32563 Int) Unit!46602)

(assert (=> b!2796433 (= lt!999088 (lemmaForallThenNotExists!104 lt!999082 lambda!102706))))

(assert (=> b!2796433 (not call!182778)))

(declare-fun lt!999083 () Unit!46602)

(assert (=> b!2796433 (= lt!999083 lt!999088)))

(declare-fun bm!182774 () Bool)

(declare-fun exists!1010 (List!32563 Int) Bool)

(assert (=> bm!182774 (= call!182778 (exists!1010 (ite c!453648 lt!999081 lt!999082) (ite c!453648 lambda!102707 lambda!102708)))))

(assert (= (and d!812800 c!453648) b!2796432))

(assert (= (and d!812800 (not c!453648)) b!2796433))

(assert (= (or b!2796432 b!2796433) bm!182773))

(assert (= (or b!2796432 b!2796433) bm!182774))

(declare-fun m!3226141 () Bool)

(assert (=> b!2796433 m!3226141))

(declare-fun m!3226143 () Bool)

(assert (=> bm!182773 m!3226143))

(declare-fun m!3226145 () Bool)

(assert (=> d!812800 m!3226145))

(assert (=> d!812800 m!3226145))

(declare-fun m!3226147 () Bool)

(assert (=> d!812800 m!3226147))

(declare-fun m!3226149 () Bool)

(assert (=> d!812800 m!3226149))

(assert (=> d!812800 m!3226149))

(declare-fun m!3226151 () Bool)

(assert (=> b!2796432 m!3226151))

(declare-fun m!3226153 () Bool)

(assert (=> bm!182774 m!3226153))

(assert (=> b!2796358 d!812800))

(declare-fun d!812802 () Bool)

(assert (=> d!812802 (= testedSuffix!143 lt!999032)))

(declare-fun lt!999091 () Unit!46602)

(declare-fun choose!16445 (List!32561 List!32561 List!32561 List!32561 List!32561) Unit!46602)

(assert (=> d!812802 (= lt!999091 (choose!16445 testedP!183 testedSuffix!143 testedP!183 lt!999032 lt!999036))))

(assert (=> d!812802 (isPrefix!2623 testedP!183 lt!999036)))

(assert (=> d!812802 (= (lemmaSamePrefixThenSameSuffix!1197 testedP!183 testedSuffix!143 testedP!183 lt!999032 lt!999036) lt!999091)))

(declare-fun bs!515034 () Bool)

(assert (= bs!515034 d!812802))

(declare-fun m!3226155 () Bool)

(assert (=> bs!515034 m!3226155))

(assert (=> bs!515034 m!3226037))

(assert (=> b!2796358 d!812802))

(declare-fun d!812804 () Bool)

(declare-fun lt!999094 () List!32561)

(assert (=> d!812804 (= (++!8009 testedP!183 lt!999094) lt!999036)))

(declare-fun e!1766198 () List!32561)

(assert (=> d!812804 (= lt!999094 e!1766198)))

(declare-fun c!453651 () Bool)

(assert (=> d!812804 (= c!453651 ((_ is Cons!32461) testedP!183))))

(assert (=> d!812804 (>= (size!25311 lt!999036) (size!25311 testedP!183))))

(assert (=> d!812804 (= (getSuffix!1299 lt!999036 testedP!183) lt!999094)))

(declare-fun b!2796438 () Bool)

(assert (=> b!2796438 (= e!1766198 (getSuffix!1299 (tail!4420 lt!999036) (t!228721 testedP!183)))))

(declare-fun b!2796439 () Bool)

(assert (=> b!2796439 (= e!1766198 lt!999036)))

(assert (= (and d!812804 c!453651) b!2796438))

(assert (= (and d!812804 (not c!453651)) b!2796439))

(declare-fun m!3226157 () Bool)

(assert (=> d!812804 m!3226157))

(assert (=> d!812804 m!3226069))

(assert (=> d!812804 m!3226001))

(assert (=> b!2796438 m!3226065))

(assert (=> b!2796438 m!3226065))

(declare-fun m!3226159 () Bool)

(assert (=> b!2796438 m!3226159))

(assert (=> b!2796358 d!812804))

(declare-fun b!2796454 () Bool)

(declare-fun e!1766215 () Bool)

(declare-fun tp!889920 () Bool)

(assert (=> b!2796454 (= e!1766215 tp!889920)))

(declare-fun b!2796455 () Bool)

(declare-fun e!1766213 () Bool)

(declare-fun tp!889912 () Bool)

(assert (=> b!2796455 (= e!1766213 tp!889912)))

(declare-fun setIsEmpty!24229 () Bool)

(declare-fun setRes!24229 () Bool)

(assert (=> setIsEmpty!24229 setRes!24229))

(declare-fun b!2796456 () Bool)

(declare-fun e!1766214 () Bool)

(declare-fun tp!889917 () Bool)

(assert (=> b!2796456 (= e!1766214 tp!889917)))

(declare-fun condMapEmpty!18157 () Bool)

(declare-fun mapDefault!18157 () List!32560)

(assert (=> mapNonEmpty!18153 (= condMapEmpty!18157 (= mapRest!18153 ((as const (Array (_ BitVec 32) List!32560)) mapDefault!18157)))))

(declare-fun e!1766212 () Bool)

(declare-fun mapRes!18157 () Bool)

(assert (=> mapNonEmpty!18153 (= tp!889878 (and e!1766212 mapRes!18157))))

(declare-fun tp!889918 () Bool)

(declare-fun b!2796457 () Bool)

(declare-fun e!1766216 () Bool)

(declare-fun tp!889915 () Bool)

(declare-fun e!1766211 () Bool)

(declare-fun mapValue!18157 () List!32560)

(assert (=> b!2796457 (= e!1766211 (and tp!889915 (inv!44090 (_2!19532 (_1!19533 (h!37880 mapValue!18157)))) e!1766216 tp_is_empty!14211 setRes!24229 tp!889918))))

(declare-fun condSetEmpty!24229 () Bool)

(assert (=> b!2796457 (= condSetEmpty!24229 (= (_2!19533 (h!37880 mapValue!18157)) ((as const (Array Context!4834 Bool)) false)))))

(declare-fun tp!889919 () Bool)

(declare-fun setRes!24230 () Bool)

(declare-fun setElem!24230 () Context!4834)

(declare-fun setNonEmpty!24229 () Bool)

(assert (=> setNonEmpty!24229 (= setRes!24230 (and tp!889919 (inv!44090 setElem!24230) e!1766213))))

(declare-fun setRest!24230 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24229 (= (_2!19533 (h!37880 mapDefault!18157)) ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24230 true) setRest!24230))))

(declare-fun b!2796458 () Bool)

(declare-fun tp!889921 () Bool)

(declare-fun tp!889914 () Bool)

(assert (=> b!2796458 (= e!1766212 (and tp!889921 (inv!44090 (_2!19532 (_1!19533 (h!37880 mapDefault!18157)))) e!1766214 tp_is_empty!14211 setRes!24230 tp!889914))))

(declare-fun condSetEmpty!24230 () Bool)

(assert (=> b!2796458 (= condSetEmpty!24230 (= (_2!19533 (h!37880 mapDefault!18157)) ((as const (Array Context!4834 Bool)) false)))))

(declare-fun setElem!24229 () Context!4834)

(declare-fun setNonEmpty!24230 () Bool)

(declare-fun tp!889922 () Bool)

(assert (=> setNonEmpty!24230 (= setRes!24229 (and tp!889922 (inv!44090 setElem!24229) e!1766215))))

(declare-fun setRest!24229 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24230 (= (_2!19533 (h!37880 mapValue!18157)) ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24229 true) setRest!24229))))

(declare-fun mapIsEmpty!18157 () Bool)

(assert (=> mapIsEmpty!18157 mapRes!18157))

(declare-fun mapNonEmpty!18157 () Bool)

(declare-fun tp!889916 () Bool)

(assert (=> mapNonEmpty!18157 (= mapRes!18157 (and tp!889916 e!1766211))))

(declare-fun mapKey!18157 () (_ BitVec 32))

(declare-fun mapRest!18157 () (Array (_ BitVec 32) List!32560))

(assert (=> mapNonEmpty!18157 (= mapRest!18153 (store mapRest!18157 mapKey!18157 mapValue!18157))))

(declare-fun b!2796459 () Bool)

(declare-fun tp!889913 () Bool)

(assert (=> b!2796459 (= e!1766216 tp!889913)))

(declare-fun setIsEmpty!24230 () Bool)

(assert (=> setIsEmpty!24230 setRes!24230))

(assert (= (and mapNonEmpty!18153 condMapEmpty!18157) mapIsEmpty!18157))

(assert (= (and mapNonEmpty!18153 (not condMapEmpty!18157)) mapNonEmpty!18157))

(assert (= b!2796457 b!2796459))

(assert (= (and b!2796457 condSetEmpty!24229) setIsEmpty!24229))

(assert (= (and b!2796457 (not condSetEmpty!24229)) setNonEmpty!24230))

(assert (= setNonEmpty!24230 b!2796454))

(assert (= (and mapNonEmpty!18157 ((_ is Cons!32460) mapValue!18157)) b!2796457))

(assert (= b!2796458 b!2796456))

(assert (= (and b!2796458 condSetEmpty!24230) setIsEmpty!24230))

(assert (= (and b!2796458 (not condSetEmpty!24230)) setNonEmpty!24229))

(assert (= setNonEmpty!24229 b!2796455))

(assert (= (and mapNonEmpty!18153 ((_ is Cons!32460) mapDefault!18157)) b!2796458))

(declare-fun m!3226161 () Bool)

(assert (=> setNonEmpty!24229 m!3226161))

(declare-fun m!3226163 () Bool)

(assert (=> mapNonEmpty!18157 m!3226163))

(declare-fun m!3226165 () Bool)

(assert (=> b!2796458 m!3226165))

(declare-fun m!3226167 () Bool)

(assert (=> b!2796457 m!3226167))

(declare-fun m!3226169 () Bool)

(assert (=> setNonEmpty!24230 m!3226169))

(declare-fun setIsEmpty!24233 () Bool)

(declare-fun setRes!24233 () Bool)

(assert (=> setIsEmpty!24233 setRes!24233))

(declare-fun e!1766224 () Bool)

(assert (=> mapNonEmpty!18153 (= tp!889877 e!1766224)))

(declare-fun b!2796468 () Bool)

(declare-fun e!1766225 () Bool)

(declare-fun tp!889934 () Bool)

(assert (=> b!2796468 (= e!1766225 tp!889934)))

(declare-fun b!2796469 () Bool)

(declare-fun e!1766223 () Bool)

(declare-fun tp!889935 () Bool)

(assert (=> b!2796469 (= e!1766223 tp!889935)))

(declare-fun tp!889936 () Bool)

(declare-fun b!2796470 () Bool)

(declare-fun tp!889937 () Bool)

(assert (=> b!2796470 (= e!1766224 (and tp!889936 (inv!44090 (_2!19532 (_1!19533 (h!37880 mapValue!18153)))) e!1766225 tp_is_empty!14211 setRes!24233 tp!889937))))

(declare-fun condSetEmpty!24233 () Bool)

(assert (=> b!2796470 (= condSetEmpty!24233 (= (_2!19533 (h!37880 mapValue!18153)) ((as const (Array Context!4834 Bool)) false)))))

(declare-fun setElem!24233 () Context!4834)

(declare-fun setNonEmpty!24233 () Bool)

(declare-fun tp!889933 () Bool)

(assert (=> setNonEmpty!24233 (= setRes!24233 (and tp!889933 (inv!44090 setElem!24233) e!1766223))))

(declare-fun setRest!24233 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24233 (= (_2!19533 (h!37880 mapValue!18153)) ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24233 true) setRest!24233))))

(assert (= b!2796470 b!2796468))

(assert (= (and b!2796470 condSetEmpty!24233) setIsEmpty!24233))

(assert (= (and b!2796470 (not condSetEmpty!24233)) setNonEmpty!24233))

(assert (= setNonEmpty!24233 b!2796469))

(assert (= (and mapNonEmpty!18153 ((_ is Cons!32460) mapValue!18153)) b!2796470))

(declare-fun m!3226171 () Bool)

(assert (=> b!2796470 m!3226171))

(declare-fun m!3226173 () Bool)

(assert (=> setNonEmpty!24233 m!3226173))

(declare-fun setIsEmpty!24234 () Bool)

(declare-fun setRes!24234 () Bool)

(assert (=> setIsEmpty!24234 setRes!24234))

(declare-fun e!1766227 () Bool)

(assert (=> b!2796340 (= tp!889874 e!1766227)))

(declare-fun b!2796471 () Bool)

(declare-fun e!1766228 () Bool)

(declare-fun tp!889939 () Bool)

(assert (=> b!2796471 (= e!1766228 tp!889939)))

(declare-fun b!2796472 () Bool)

(declare-fun e!1766226 () Bool)

(declare-fun tp!889940 () Bool)

(assert (=> b!2796472 (= e!1766226 tp!889940)))

(declare-fun tp!889942 () Bool)

(declare-fun tp!889941 () Bool)

(declare-fun b!2796473 () Bool)

(assert (=> b!2796473 (= e!1766227 (and tp!889941 (inv!44090 (_2!19532 (_1!19533 (h!37880 mapDefault!18154)))) e!1766228 tp_is_empty!14211 setRes!24234 tp!889942))))

(declare-fun condSetEmpty!24234 () Bool)

(assert (=> b!2796473 (= condSetEmpty!24234 (= (_2!19533 (h!37880 mapDefault!18154)) ((as const (Array Context!4834 Bool)) false)))))

(declare-fun tp!889938 () Bool)

(declare-fun setElem!24234 () Context!4834)

(declare-fun setNonEmpty!24234 () Bool)

(assert (=> setNonEmpty!24234 (= setRes!24234 (and tp!889938 (inv!44090 setElem!24234) e!1766226))))

(declare-fun setRest!24234 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24234 (= (_2!19533 (h!37880 mapDefault!18154)) ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24234 true) setRest!24234))))

(assert (= b!2796473 b!2796471))

(assert (= (and b!2796473 condSetEmpty!24234) setIsEmpty!24234))

(assert (= (and b!2796473 (not condSetEmpty!24234)) setNonEmpty!24234))

(assert (= setNonEmpty!24234 b!2796472))

(assert (= (and b!2796340 ((_ is Cons!32460) mapDefault!18154)) b!2796473))

(declare-fun m!3226175 () Bool)

(assert (=> b!2796473 m!3226175))

(declare-fun m!3226177 () Bool)

(assert (=> setNonEmpty!24234 m!3226177))

(declare-fun b!2796478 () Bool)

(declare-fun e!1766231 () Bool)

(declare-fun tp!889945 () Bool)

(assert (=> b!2796478 (= e!1766231 (and tp_is_empty!14211 tp!889945))))

(assert (=> b!2796352 (= tp!889883 e!1766231)))

(assert (= (and b!2796352 ((_ is Cons!32461) (t!228721 testedP!183))) b!2796478))

(declare-fun e!1766238 () Bool)

(declare-fun setElem!24237 () Context!4834)

(declare-fun setNonEmpty!24237 () Bool)

(declare-fun tp!889955 () Bool)

(declare-fun setRes!24237 () Bool)

(assert (=> setNonEmpty!24237 (= setRes!24237 (and tp!889955 (inv!44090 setElem!24237) e!1766238))))

(declare-fun setRest!24237 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24237 (= (_2!19535 (h!37882 (zeroValue!4251 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24237 true) setRest!24237))))

(declare-fun setIsEmpty!24237 () Bool)

(assert (=> setIsEmpty!24237 setRes!24237))

(declare-fun b!2796488 () Bool)

(declare-fun e!1766240 () Bool)

(declare-fun tp!889956 () Bool)

(assert (=> b!2796488 (= e!1766240 tp!889956)))

(declare-fun e!1766239 () Bool)

(declare-fun tp!889957 () Bool)

(declare-fun b!2796489 () Bool)

(assert (=> b!2796489 (= e!1766239 (and (inv!44090 (_1!19534 (_1!19535 (h!37882 (zeroValue!4251 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890)))))))))) e!1766240 tp_is_empty!14211 setRes!24237 tp!889957))))

(declare-fun condSetEmpty!24237 () Bool)

(assert (=> b!2796489 (= condSetEmpty!24237 (= (_2!19535 (h!37882 (zeroValue!4251 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890)))))))) ((as const (Array Context!4834 Bool)) false)))))

(assert (=> b!2796361 (= tp!889871 e!1766239)))

(declare-fun b!2796487 () Bool)

(declare-fun tp!889954 () Bool)

(assert (=> b!2796487 (= e!1766238 tp!889954)))

(assert (= b!2796489 b!2796488))

(assert (= (and b!2796489 condSetEmpty!24237) setIsEmpty!24237))

(assert (= (and b!2796489 (not condSetEmpty!24237)) setNonEmpty!24237))

(assert (= setNonEmpty!24237 b!2796487))

(assert (= (and b!2796361 ((_ is Cons!32462) (zeroValue!4251 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890)))))))) b!2796489))

(declare-fun m!3226179 () Bool)

(assert (=> setNonEmpty!24237 m!3226179))

(declare-fun m!3226181 () Bool)

(assert (=> b!2796489 m!3226181))

(declare-fun setRes!24238 () Bool)

(declare-fun setElem!24238 () Context!4834)

(declare-fun setNonEmpty!24238 () Bool)

(declare-fun tp!889959 () Bool)

(declare-fun e!1766241 () Bool)

(assert (=> setNonEmpty!24238 (= setRes!24238 (and tp!889959 (inv!44090 setElem!24238) e!1766241))))

(declare-fun setRest!24238 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24238 (= (_2!19535 (h!37882 (minValue!4251 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24238 true) setRest!24238))))

(declare-fun setIsEmpty!24238 () Bool)

(assert (=> setIsEmpty!24238 setRes!24238))

(declare-fun b!2796491 () Bool)

(declare-fun e!1766243 () Bool)

(declare-fun tp!889960 () Bool)

(assert (=> b!2796491 (= e!1766243 tp!889960)))

(declare-fun tp!889961 () Bool)

(declare-fun e!1766242 () Bool)

(declare-fun b!2796492 () Bool)

(assert (=> b!2796492 (= e!1766242 (and (inv!44090 (_1!19534 (_1!19535 (h!37882 (minValue!4251 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890)))))))))) e!1766243 tp_is_empty!14211 setRes!24238 tp!889961))))

(declare-fun condSetEmpty!24238 () Bool)

(assert (=> b!2796492 (= condSetEmpty!24238 (= (_2!19535 (h!37882 (minValue!4251 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890)))))))) ((as const (Array Context!4834 Bool)) false)))))

(assert (=> b!2796361 (= tp!889888 e!1766242)))

(declare-fun b!2796490 () Bool)

(declare-fun tp!889958 () Bool)

(assert (=> b!2796490 (= e!1766241 tp!889958)))

(assert (= b!2796492 b!2796491))

(assert (= (and b!2796492 condSetEmpty!24238) setIsEmpty!24238))

(assert (= (and b!2796492 (not condSetEmpty!24238)) setNonEmpty!24238))

(assert (= setNonEmpty!24238 b!2796490))

(assert (= (and b!2796361 ((_ is Cons!32462) (minValue!4251 (v!34063 (underlying!8187 (v!34064 (underlying!8188 (cache!4041 cacheUp!890)))))))) b!2796492))

(declare-fun m!3226183 () Bool)

(assert (=> setNonEmpty!24238 m!3226183))

(declare-fun m!3226185 () Bool)

(assert (=> b!2796492 m!3226185))

(declare-fun setElem!24239 () Context!4834)

(declare-fun setRes!24239 () Bool)

(declare-fun setNonEmpty!24239 () Bool)

(declare-fun e!1766244 () Bool)

(declare-fun tp!889963 () Bool)

(assert (=> setNonEmpty!24239 (= setRes!24239 (and tp!889963 (inv!44090 setElem!24239) e!1766244))))

(declare-fun setRest!24239 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24239 (= (_2!19535 (h!37882 mapDefault!18153)) ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24239 true) setRest!24239))))

(declare-fun setIsEmpty!24239 () Bool)

(assert (=> setIsEmpty!24239 setRes!24239))

(declare-fun b!2796494 () Bool)

(declare-fun e!1766246 () Bool)

(declare-fun tp!889964 () Bool)

(assert (=> b!2796494 (= e!1766246 tp!889964)))

(declare-fun e!1766245 () Bool)

(declare-fun b!2796495 () Bool)

(declare-fun tp!889965 () Bool)

(assert (=> b!2796495 (= e!1766245 (and (inv!44090 (_1!19534 (_1!19535 (h!37882 mapDefault!18153)))) e!1766246 tp_is_empty!14211 setRes!24239 tp!889965))))

(declare-fun condSetEmpty!24239 () Bool)

(assert (=> b!2796495 (= condSetEmpty!24239 (= (_2!19535 (h!37882 mapDefault!18153)) ((as const (Array Context!4834 Bool)) false)))))

(assert (=> b!2796353 (= tp!889884 e!1766245)))

(declare-fun b!2796493 () Bool)

(declare-fun tp!889962 () Bool)

(assert (=> b!2796493 (= e!1766244 tp!889962)))

(assert (= b!2796495 b!2796494))

(assert (= (and b!2796495 condSetEmpty!24239) setIsEmpty!24239))

(assert (= (and b!2796495 (not condSetEmpty!24239)) setNonEmpty!24239))

(assert (= setNonEmpty!24239 b!2796493))

(assert (= (and b!2796353 ((_ is Cons!32462) mapDefault!18153)) b!2796495))

(declare-fun m!3226187 () Bool)

(assert (=> setNonEmpty!24239 m!3226187))

(declare-fun m!3226189 () Bool)

(assert (=> b!2796495 m!3226189))

(declare-fun b!2796496 () Bool)

(declare-fun e!1766247 () Bool)

(declare-fun tp!889966 () Bool)

(assert (=> b!2796496 (= e!1766247 (and tp_is_empty!14211 tp!889966))))

(assert (=> b!2796342 (= tp!889875 e!1766247)))

(assert (= (and b!2796342 ((_ is Cons!32461) (t!228721 testedSuffix!143))) b!2796496))

(declare-fun setIsEmpty!24240 () Bool)

(declare-fun setRes!24240 () Bool)

(assert (=> setIsEmpty!24240 setRes!24240))

(declare-fun e!1766249 () Bool)

(assert (=> b!2796344 (= tp!889881 e!1766249)))

(declare-fun b!2796497 () Bool)

(declare-fun e!1766250 () Bool)

(declare-fun tp!889968 () Bool)

(assert (=> b!2796497 (= e!1766250 tp!889968)))

(declare-fun b!2796498 () Bool)

(declare-fun e!1766248 () Bool)

(declare-fun tp!889969 () Bool)

(assert (=> b!2796498 (= e!1766248 tp!889969)))

(declare-fun tp!889971 () Bool)

(declare-fun tp!889970 () Bool)

(declare-fun b!2796499 () Bool)

(assert (=> b!2796499 (= e!1766249 (and tp!889970 (inv!44090 (_2!19532 (_1!19533 (h!37880 (zeroValue!4250 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009)))))))))) e!1766250 tp_is_empty!14211 setRes!24240 tp!889971))))

(declare-fun condSetEmpty!24240 () Bool)

(assert (=> b!2796499 (= condSetEmpty!24240 (= (_2!19533 (h!37880 (zeroValue!4250 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009)))))))) ((as const (Array Context!4834 Bool)) false)))))

(declare-fun setNonEmpty!24240 () Bool)

(declare-fun setElem!24240 () Context!4834)

(declare-fun tp!889967 () Bool)

(assert (=> setNonEmpty!24240 (= setRes!24240 (and tp!889967 (inv!44090 setElem!24240) e!1766248))))

(declare-fun setRest!24240 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24240 (= (_2!19533 (h!37880 (zeroValue!4250 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24240 true) setRest!24240))))

(assert (= b!2796499 b!2796497))

(assert (= (and b!2796499 condSetEmpty!24240) setIsEmpty!24240))

(assert (= (and b!2796499 (not condSetEmpty!24240)) setNonEmpty!24240))

(assert (= setNonEmpty!24240 b!2796498))

(assert (= (and b!2796344 ((_ is Cons!32460) (zeroValue!4250 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009)))))))) b!2796499))

(declare-fun m!3226191 () Bool)

(assert (=> b!2796499 m!3226191))

(declare-fun m!3226193 () Bool)

(assert (=> setNonEmpty!24240 m!3226193))

(declare-fun setIsEmpty!24241 () Bool)

(declare-fun setRes!24241 () Bool)

(assert (=> setIsEmpty!24241 setRes!24241))

(declare-fun e!1766252 () Bool)

(assert (=> b!2796344 (= tp!889879 e!1766252)))

(declare-fun b!2796500 () Bool)

(declare-fun e!1766253 () Bool)

(declare-fun tp!889973 () Bool)

(assert (=> b!2796500 (= e!1766253 tp!889973)))

(declare-fun b!2796501 () Bool)

(declare-fun e!1766251 () Bool)

(declare-fun tp!889974 () Bool)

(assert (=> b!2796501 (= e!1766251 tp!889974)))

(declare-fun b!2796502 () Bool)

(declare-fun tp!889976 () Bool)

(declare-fun tp!889975 () Bool)

(assert (=> b!2796502 (= e!1766252 (and tp!889975 (inv!44090 (_2!19532 (_1!19533 (h!37880 (minValue!4250 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009)))))))))) e!1766253 tp_is_empty!14211 setRes!24241 tp!889976))))

(declare-fun condSetEmpty!24241 () Bool)

(assert (=> b!2796502 (= condSetEmpty!24241 (= (_2!19533 (h!37880 (minValue!4250 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009)))))))) ((as const (Array Context!4834 Bool)) false)))))

(declare-fun setElem!24241 () Context!4834)

(declare-fun tp!889972 () Bool)

(declare-fun setNonEmpty!24241 () Bool)

(assert (=> setNonEmpty!24241 (= setRes!24241 (and tp!889972 (inv!44090 setElem!24241) e!1766251))))

(declare-fun setRest!24241 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24241 (= (_2!19533 (h!37880 (minValue!4250 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24241 true) setRest!24241))))

(assert (= b!2796502 b!2796500))

(assert (= (and b!2796502 condSetEmpty!24241) setIsEmpty!24241))

(assert (= (and b!2796502 (not condSetEmpty!24241)) setNonEmpty!24241))

(assert (= setNonEmpty!24241 b!2796501))

(assert (= (and b!2796344 ((_ is Cons!32460) (minValue!4250 (v!34061 (underlying!8185 (v!34062 (underlying!8186 (cache!4040 cacheDown!1009)))))))) b!2796502))

(declare-fun m!3226195 () Bool)

(assert (=> b!2796502 m!3226195))

(declare-fun m!3226197 () Bool)

(assert (=> setNonEmpty!24241 m!3226197))

(declare-fun b!2796507 () Bool)

(declare-fun e!1766256 () Bool)

(declare-fun tp!889981 () Bool)

(declare-fun tp!889982 () Bool)

(assert (=> b!2796507 (= e!1766256 (and tp!889981 tp!889982))))

(assert (=> b!2796343 (= tp!889872 e!1766256)))

(assert (= (and b!2796343 ((_ is Cons!32459) (exprs!2917 setElem!24224))) b!2796507))

(declare-fun b!2796522 () Bool)

(declare-fun e!1766270 () Bool)

(declare-fun tp!890005 () Bool)

(assert (=> b!2796522 (= e!1766270 tp!890005)))

(declare-fun mapNonEmpty!18160 () Bool)

(declare-fun mapRes!18160 () Bool)

(declare-fun tp!890006 () Bool)

(declare-fun e!1766272 () Bool)

(assert (=> mapNonEmpty!18160 (= mapRes!18160 (and tp!890006 e!1766272))))

(declare-fun mapRest!18160 () (Array (_ BitVec 32) List!32562))

(declare-fun mapKey!18160 () (_ BitVec 32))

(declare-fun mapValue!18160 () List!32562)

(assert (=> mapNonEmpty!18160 (= mapRest!18154 (store mapRest!18160 mapKey!18160 mapValue!18160))))

(declare-fun setNonEmpty!24246 () Bool)

(declare-fun setElem!24246 () Context!4834)

(declare-fun setRes!24247 () Bool)

(declare-fun tp!890009 () Bool)

(declare-fun e!1766269 () Bool)

(assert (=> setNonEmpty!24246 (= setRes!24247 (and tp!890009 (inv!44090 setElem!24246) e!1766269))))

(declare-fun setRest!24246 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24246 (= (_2!19535 (h!37882 mapValue!18160)) ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24246 true) setRest!24246))))

(declare-fun b!2796523 () Bool)

(declare-fun e!1766273 () Bool)

(declare-fun tp!890004 () Bool)

(assert (=> b!2796523 (= e!1766273 tp!890004)))

(declare-fun mapIsEmpty!18160 () Bool)

(assert (=> mapIsEmpty!18160 mapRes!18160))

(declare-fun b!2796524 () Bool)

(declare-fun e!1766274 () Bool)

(declare-fun tp!890002 () Bool)

(assert (=> b!2796524 (= e!1766274 tp!890002)))

(declare-fun condMapEmpty!18160 () Bool)

(declare-fun mapDefault!18160 () List!32562)

(assert (=> mapNonEmpty!18154 (= condMapEmpty!18160 (= mapRest!18154 ((as const (Array (_ BitVec 32) List!32562)) mapDefault!18160)))))

(declare-fun e!1766271 () Bool)

(assert (=> mapNonEmpty!18154 (= tp!889886 (and e!1766271 mapRes!18160))))

(declare-fun b!2796525 () Bool)

(declare-fun tp!890008 () Bool)

(assert (=> b!2796525 (= e!1766269 tp!890008)))

(declare-fun setRes!24246 () Bool)

(declare-fun b!2796526 () Bool)

(declare-fun tp!890001 () Bool)

(assert (=> b!2796526 (= e!1766271 (and (inv!44090 (_1!19534 (_1!19535 (h!37882 mapDefault!18160)))) e!1766273 tp_is_empty!14211 setRes!24246 tp!890001))))

(declare-fun condSetEmpty!24247 () Bool)

(assert (=> b!2796526 (= condSetEmpty!24247 (= (_2!19535 (h!37882 mapDefault!18160)) ((as const (Array Context!4834 Bool)) false)))))

(declare-fun setIsEmpty!24246 () Bool)

(assert (=> setIsEmpty!24246 setRes!24247))

(declare-fun tp!890007 () Bool)

(declare-fun b!2796527 () Bool)

(assert (=> b!2796527 (= e!1766272 (and (inv!44090 (_1!19534 (_1!19535 (h!37882 mapValue!18160)))) e!1766274 tp_is_empty!14211 setRes!24247 tp!890007))))

(declare-fun condSetEmpty!24246 () Bool)

(assert (=> b!2796527 (= condSetEmpty!24246 (= (_2!19535 (h!37882 mapValue!18160)) ((as const (Array Context!4834 Bool)) false)))))

(declare-fun setNonEmpty!24247 () Bool)

(declare-fun setElem!24247 () Context!4834)

(declare-fun tp!890003 () Bool)

(assert (=> setNonEmpty!24247 (= setRes!24246 (and tp!890003 (inv!44090 setElem!24247) e!1766270))))

(declare-fun setRest!24247 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24247 (= (_2!19535 (h!37882 mapDefault!18160)) ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24247 true) setRest!24247))))

(declare-fun setIsEmpty!24247 () Bool)

(assert (=> setIsEmpty!24247 setRes!24246))

(assert (= (and mapNonEmpty!18154 condMapEmpty!18160) mapIsEmpty!18160))

(assert (= (and mapNonEmpty!18154 (not condMapEmpty!18160)) mapNonEmpty!18160))

(assert (= b!2796527 b!2796524))

(assert (= (and b!2796527 condSetEmpty!24246) setIsEmpty!24246))

(assert (= (and b!2796527 (not condSetEmpty!24246)) setNonEmpty!24246))

(assert (= setNonEmpty!24246 b!2796525))

(assert (= (and mapNonEmpty!18160 ((_ is Cons!32462) mapValue!18160)) b!2796527))

(assert (= b!2796526 b!2796523))

(assert (= (and b!2796526 condSetEmpty!24247) setIsEmpty!24247))

(assert (= (and b!2796526 (not condSetEmpty!24247)) setNonEmpty!24247))

(assert (= setNonEmpty!24247 b!2796522))

(assert (= (and mapNonEmpty!18154 ((_ is Cons!32462) mapDefault!18160)) b!2796526))

(declare-fun m!3226199 () Bool)

(assert (=> setNonEmpty!24246 m!3226199))

(declare-fun m!3226201 () Bool)

(assert (=> b!2796526 m!3226201))

(declare-fun m!3226203 () Bool)

(assert (=> b!2796527 m!3226203))

(declare-fun m!3226205 () Bool)

(assert (=> setNonEmpty!24247 m!3226205))

(declare-fun m!3226207 () Bool)

(assert (=> mapNonEmpty!18160 m!3226207))

(declare-fun tp!890011 () Bool)

(declare-fun setElem!24248 () Context!4834)

(declare-fun setRes!24248 () Bool)

(declare-fun e!1766275 () Bool)

(declare-fun setNonEmpty!24248 () Bool)

(assert (=> setNonEmpty!24248 (= setRes!24248 (and tp!890011 (inv!44090 setElem!24248) e!1766275))))

(declare-fun setRest!24248 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24248 (= (_2!19535 (h!37882 mapValue!18154)) ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24248 true) setRest!24248))))

(declare-fun setIsEmpty!24248 () Bool)

(assert (=> setIsEmpty!24248 setRes!24248))

(declare-fun b!2796529 () Bool)

(declare-fun e!1766277 () Bool)

(declare-fun tp!890012 () Bool)

(assert (=> b!2796529 (= e!1766277 tp!890012)))

(declare-fun b!2796530 () Bool)

(declare-fun tp!890013 () Bool)

(declare-fun e!1766276 () Bool)

(assert (=> b!2796530 (= e!1766276 (and (inv!44090 (_1!19534 (_1!19535 (h!37882 mapValue!18154)))) e!1766277 tp_is_empty!14211 setRes!24248 tp!890013))))

(declare-fun condSetEmpty!24248 () Bool)

(assert (=> b!2796530 (= condSetEmpty!24248 (= (_2!19535 (h!37882 mapValue!18154)) ((as const (Array Context!4834 Bool)) false)))))

(assert (=> mapNonEmpty!18154 (= tp!889889 e!1766276)))

(declare-fun b!2796528 () Bool)

(declare-fun tp!890010 () Bool)

(assert (=> b!2796528 (= e!1766275 tp!890010)))

(assert (= b!2796530 b!2796529))

(assert (= (and b!2796530 condSetEmpty!24248) setIsEmpty!24248))

(assert (= (and b!2796530 (not condSetEmpty!24248)) setNonEmpty!24248))

(assert (= setNonEmpty!24248 b!2796528))

(assert (= (and mapNonEmpty!18154 ((_ is Cons!32462) mapValue!18154)) b!2796530))

(declare-fun m!3226209 () Bool)

(assert (=> setNonEmpty!24248 m!3226209))

(declare-fun m!3226211 () Bool)

(assert (=> b!2796530 m!3226211))

(declare-fun condSetEmpty!24251 () Bool)

(assert (=> setNonEmpty!24224 (= condSetEmpty!24251 (= setRest!24224 ((as const (Array Context!4834 Bool)) false)))))

(declare-fun setRes!24251 () Bool)

(assert (=> setNonEmpty!24224 (= tp!889887 setRes!24251)))

(declare-fun setIsEmpty!24251 () Bool)

(assert (=> setIsEmpty!24251 setRes!24251))

(declare-fun tp!890019 () Bool)

(declare-fun e!1766280 () Bool)

(declare-fun setNonEmpty!24251 () Bool)

(declare-fun setElem!24251 () Context!4834)

(assert (=> setNonEmpty!24251 (= setRes!24251 (and tp!890019 (inv!44090 setElem!24251) e!1766280))))

(declare-fun setRest!24251 () (InoxSet Context!4834))

(assert (=> setNonEmpty!24251 (= setRest!24224 ((_ map or) (store ((as const (Array Context!4834 Bool)) false) setElem!24251 true) setRest!24251))))

(declare-fun b!2796535 () Bool)

(declare-fun tp!890018 () Bool)

(assert (=> b!2796535 (= e!1766280 tp!890018)))

(assert (= (and setNonEmpty!24224 condSetEmpty!24251) setIsEmpty!24251))

(assert (= (and setNonEmpty!24224 (not condSetEmpty!24251)) setNonEmpty!24251))

(assert (= setNonEmpty!24251 b!2796535))

(declare-fun m!3226213 () Bool)

(assert (=> setNonEmpty!24251 m!3226213))

(declare-fun tp!890028 () Bool)

(declare-fun b!2796544 () Bool)

(declare-fun tp!890027 () Bool)

(declare-fun e!1766286 () Bool)

(assert (=> b!2796544 (= e!1766286 (and (inv!44094 (left!24558 (c!453626 totalInput!758))) tp!890028 (inv!44094 (right!24888 (c!453626 totalInput!758))) tp!890027))))

(declare-fun b!2796546 () Bool)

(declare-fun e!1766285 () Bool)

(declare-fun tp!890026 () Bool)

(assert (=> b!2796546 (= e!1766285 tp!890026)))

(declare-fun b!2796545 () Bool)

(declare-fun inv!44097 (IArray!20127) Bool)

(assert (=> b!2796545 (= e!1766286 (and (inv!44097 (xs!13173 (c!453626 totalInput!758))) e!1766285))))

(assert (=> b!2796365 (= tp!889873 (and (inv!44094 (c!453626 totalInput!758)) e!1766286))))

(assert (= (and b!2796365 ((_ is Node!10061) (c!453626 totalInput!758))) b!2796544))

(assert (= b!2796545 b!2796546))

(assert (= (and b!2796365 ((_ is Leaf!15329) (c!453626 totalInput!758))) b!2796545))

(declare-fun m!3226215 () Bool)

(assert (=> b!2796544 m!3226215))

(declare-fun m!3226217 () Bool)

(assert (=> b!2796544 m!3226217))

(declare-fun m!3226219 () Bool)

(assert (=> b!2796545 m!3226219))

(assert (=> b!2796365 m!3226035))

(check-sat (not d!812804) (not b!2796499) (not bm!182773) (not b!2796527) (not b!2796535) (not setNonEmpty!24247) (not b!2796522) (not b!2796372) (not b!2796438) (not b!2796419) (not b!2796455) (not b!2796470) (not d!812760) (not b!2796454) (not b!2796468) (not b!2796427) (not b!2796433) (not b!2796382) (not b!2796497) (not d!812780) (not d!812798) (not b!2796456) (not b!2796387) (not setNonEmpty!24233) (not d!812796) (not b!2796487) (not b_next!79925) (not d!812788) (not setNonEmpty!24237) (not b!2796526) (not b!2796490) (not b!2796406) (not setNonEmpty!24251) (not setNonEmpty!24238) (not b!2796491) (not d!812802) (not d!812772) tp_is_empty!14211 (not b!2796502) (not b!2796500) (not b!2796501) (not b!2796415) b_and!203965 (not b!2796457) (not setNonEmpty!24234) (not b!2796459) (not b!2796528) (not b!2796420) (not d!812774) (not b!2796383) (not b!2796496) (not b_next!79929) (not b!2796524) (not b!2796488) (not b!2796458) b_and!203959 (not b!2796473) (not b!2796525) (not b!2796384) (not d!812800) (not setNonEmpty!24246) (not b!2796545) (not d!812770) (not setNonEmpty!24229) (not b!2796386) (not setNonEmpty!24240) (not b!2796530) (not b!2796494) (not b!2796390) b_and!203963 (not setNonEmpty!24248) (not b_next!79927) (not setNonEmpty!24239) (not b!2796544) (not b!2796478) (not b!2796507) (not b!2796471) (not b!2796432) (not b!2796529) (not bm!182774) (not b!2796492) (not d!812792) (not b!2796417) (not b!2796498) (not d!812794) (not setNonEmpty!24241) (not b!2796546) (not b!2796523) (not mapNonEmpty!18160) (not d!812784) (not b!2796393) (not b!2796489) (not setNonEmpty!24230) (not b!2796365) (not b!2796407) (not b!2796396) (not b!2796469) (not b!2796426) (not b!2796388) (not b_next!79931) (not b!2796495) (not mapNonEmpty!18157) (not b!2796493) b_and!203961 (not d!812786) (not b!2796472) (not d!812754))
(check-sat (not b_next!79925) b_and!203965 b_and!203963 (not b_next!79927) (not b_next!79931) b_and!203961 (not b_next!79929) b_and!203959)
