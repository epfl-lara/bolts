; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270412 () Bool)

(assert start!270412)

(declare-fun b!2797243 () Bool)

(declare-fun b_free!79269 () Bool)

(declare-fun b_next!79973 () Bool)

(assert (=> b!2797243 (= b_free!79269 (not b_next!79973))))

(declare-fun tp!890502 () Bool)

(declare-fun b_and!204007 () Bool)

(assert (=> b!2797243 (= tp!890502 b_and!204007)))

(declare-fun b!2797257 () Bool)

(declare-fun b_free!79271 () Bool)

(declare-fun b_next!79975 () Bool)

(assert (=> b!2797257 (= b_free!79271 (not b_next!79975))))

(declare-fun tp!890497 () Bool)

(declare-fun b_and!204009 () Bool)

(assert (=> b!2797257 (= tp!890497 b_and!204009)))

(declare-fun b!2797245 () Bool)

(declare-fun b_free!79273 () Bool)

(declare-fun b_next!79977 () Bool)

(assert (=> b!2797245 (= b_free!79273 (not b_next!79977))))

(declare-fun tp!890492 () Bool)

(declare-fun b_and!204011 () Bool)

(assert (=> b!2797245 (= tp!890492 b_and!204011)))

(declare-fun b!2797232 () Bool)

(declare-fun b_free!79275 () Bool)

(declare-fun b_next!79979 () Bool)

(assert (=> b!2797232 (= b_free!79275 (not b_next!79979))))

(declare-fun tp!890507 () Bool)

(declare-fun b_and!204013 () Bool)

(assert (=> b!2797232 (= tp!890507 b_and!204013)))

(declare-fun b!2797231 () Bool)

(declare-fun e!1766891 () Bool)

(assert (=> b!2797231 (= e!1766891 false)))

(declare-datatypes ((C!16568 0))(
  ( (C!16569 (val!10218 Int)) )
))
(declare-datatypes ((List!32585 0))(
  ( (Nil!32485) (Cons!32485 (h!37905 C!16568) (t!228745 List!32585)) )
))
(declare-fun lt!999415 () List!32585)

(declare-fun testedP!183 () List!32585)

(assert (=> b!2797231 (= lt!999415 testedP!183)))

(declare-datatypes ((Unit!46614 0))(
  ( (Unit!46615) )
))
(declare-fun lt!999412 () Unit!46614)

(declare-fun lemmaIsPrefixSameLengthThenSameList!487 (List!32585 List!32585 List!32585) Unit!46614)

(assert (=> b!2797231 (= lt!999412 (lemmaIsPrefixSameLengthThenSameList!487 lt!999415 testedP!183 lt!999415))))

(declare-fun isPrefix!2627 (List!32585 List!32585) Bool)

(assert (=> b!2797231 (isPrefix!2627 lt!999415 lt!999415)))

(declare-fun lt!999421 () Unit!46614)

(declare-fun lemmaIsPrefixRefl!1711 (List!32585 List!32585) Unit!46614)

(assert (=> b!2797231 (= lt!999421 (lemmaIsPrefixRefl!1711 lt!999415 lt!999415))))

(declare-fun e!1766902 () Bool)

(declare-fun e!1766900 () Bool)

(declare-fun tp!890496 () Bool)

(declare-datatypes ((array!14230 0))(
  ( (array!14231 (arr!6341 (Array (_ BitVec 32) (_ BitVec 64))) (size!25335 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8205 0))(
  ( (ElementMatch!8205 (c!453687 C!16568)) (Concat!13293 (regOne!16922 Regex!8205) (regTwo!16922 Regex!8205)) (EmptyExpr!8205) (Star!8205 (reg!8534 Regex!8205)) (EmptyLang!8205) (Union!8205 (regOne!16923 Regex!8205) (regTwo!16923 Regex!8205)) )
))
(declare-datatypes ((List!32586 0))(
  ( (Nil!32486) (Cons!32486 (h!37906 Regex!8205) (t!228746 List!32586)) )
))
(declare-datatypes ((Context!4846 0))(
  ( (Context!4847 (exprs!2923 List!32586)) )
))
(declare-datatypes ((tuple3!5144 0))(
  ( (tuple3!5145 (_1!19565 Regex!8205) (_2!19565 Context!4846) (_3!3042 C!16568)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33046 0))(
  ( (tuple2!33047 (_1!19566 tuple3!5144) (_2!19566 (InoxSet Context!4846))) )
))
(declare-datatypes ((List!32587 0))(
  ( (Nil!32487) (Cons!32487 (h!37907 tuple2!33046) (t!228747 List!32587)) )
))
(declare-datatypes ((array!14232 0))(
  ( (array!14233 (arr!6342 (Array (_ BitVec 32) List!32587)) (size!25336 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8006 0))(
  ( (LongMapFixedSize!8007 (defaultEntry!4388 Int) (mask!9842 (_ BitVec 32)) (extraKeys!4252 (_ BitVec 32)) (zeroValue!4262 List!32587) (minValue!4262 List!32587) (_size!8049 (_ BitVec 32)) (_keys!4303 array!14230) (_values!4284 array!14232) (_vacant!4064 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15821 0))(
  ( (Cell!15822 (v!34087 LongMapFixedSize!8006)) )
))
(declare-datatypes ((MutLongMap!4003 0))(
  ( (LongMap!4003 (underlying!8209 Cell!15821)) (MutLongMapExt!4002 (__x!21659 Int)) )
))
(declare-datatypes ((Cell!15823 0))(
  ( (Cell!15824 (v!34088 MutLongMap!4003)) )
))
(declare-datatypes ((Hashable!3919 0))(
  ( (HashableExt!3918 (__x!21660 Int)) )
))
(declare-datatypes ((MutableMap!3909 0))(
  ( (MutableMapExt!3908 (__x!21661 Int)) (HashMap!3909 (underlying!8210 Cell!15823) (hashF!5951 Hashable!3919) (_size!8050 (_ BitVec 32)) (defaultValue!4080 Int)) )
))
(declare-datatypes ((CacheDown!2736 0))(
  ( (CacheDown!2737 (cache!4052 MutableMap!3909)) )
))
(declare-fun cacheDown!1009 () CacheDown!2736)

(declare-fun tp!890505 () Bool)

(declare-fun array_inv!4539 (array!14230) Bool)

(declare-fun array_inv!4540 (array!14232) Bool)

(assert (=> b!2797232 (= e!1766902 (and tp!890507 tp!890496 tp!890505 (array_inv!4539 (_keys!4303 (v!34087 (underlying!8209 (v!34088 (underlying!8210 (cache!4052 cacheDown!1009))))))) (array_inv!4540 (_values!4284 (v!34087 (underlying!8209 (v!34088 (underlying!8210 (cache!4052 cacheDown!1009))))))) e!1766900))))

(declare-fun b!2797233 () Bool)

(declare-fun e!1766905 () Bool)

(declare-fun e!1766898 () Bool)

(assert (=> b!2797233 (= e!1766905 e!1766898)))

(declare-fun res!1166021 () Bool)

(assert (=> b!2797233 (=> res!1166021 e!1766898)))

(declare-fun lt!999413 () List!32585)

(declare-fun lt!999422 () List!32585)

(declare-fun ++!8013 (List!32585 List!32585) List!32585)

(assert (=> b!2797233 (= res!1166021 (not (= (++!8013 lt!999422 lt!999413) lt!999415)))))

(declare-datatypes ((IArray!20139 0))(
  ( (IArray!20140 (innerList!10127 List!32585)) )
))
(declare-datatypes ((Conc!10067 0))(
  ( (Node!10067 (left!24567 Conc!10067) (right!24897 Conc!10067) (csize!20364 Int) (cheight!10278 Int)) (Leaf!15338 (xs!13179 IArray!20139) (csize!20365 Int)) (Empty!10067) )
))
(declare-datatypes ((BalanceConc!19748 0))(
  ( (BalanceConc!19749 (c!453688 Conc!10067)) )
))
(declare-datatypes ((tuple2!33048 0))(
  ( (tuple2!33049 (_1!19567 BalanceConc!19748) (_2!19567 BalanceConc!19748)) )
))
(declare-fun lt!999411 () tuple2!33048)

(declare-fun list!12202 (BalanceConc!19748) List!32585)

(assert (=> b!2797233 (= lt!999413 (list!12202 (_2!19567 lt!999411)))))

(assert (=> b!2797233 (= lt!999422 (list!12202 (_1!19567 lt!999411)))))

(declare-fun totalInput!758 () BalanceConc!19748)

(declare-fun testedPSize!143 () Int)

(declare-fun splitAt!184 (BalanceConc!19748 Int) tuple2!33048)

(assert (=> b!2797233 (= lt!999411 (splitAt!184 totalInput!758 testedPSize!143))))

(declare-fun setIsEmpty!24296 () Bool)

(declare-fun setRes!24296 () Bool)

(assert (=> setIsEmpty!24296 setRes!24296))

(declare-fun b!2797235 () Bool)

(declare-fun e!1766895 () Bool)

(assert (=> b!2797235 (= e!1766898 e!1766895)))

(declare-fun res!1166025 () Bool)

(assert (=> b!2797235 (=> res!1166025 e!1766895)))

(declare-fun testedSuffix!143 () List!32585)

(declare-fun apply!7583 (BalanceConc!19748 Int) C!16568)

(declare-fun head!6193 (List!32585) C!16568)

(assert (=> b!2797235 (= res!1166025 (not (= (apply!7583 totalInput!758 testedPSize!143) (head!6193 testedSuffix!143))))))

(declare-fun drop!1741 (List!32585 Int) List!32585)

(declare-fun apply!7584 (List!32585 Int) C!16568)

(assert (=> b!2797235 (= (head!6193 (drop!1741 lt!999415 testedPSize!143)) (apply!7584 lt!999415 testedPSize!143))))

(declare-fun lt!999417 () Unit!46614)

(declare-fun lemmaDropApply!945 (List!32585 Int) Unit!46614)

(assert (=> b!2797235 (= lt!999417 (lemmaDropApply!945 lt!999415 testedPSize!143))))

(assert (=> b!2797235 (not (or (not (= lt!999422 testedP!183)) (not (= lt!999413 testedSuffix!143))))))

(declare-fun lt!999406 () Unit!46614)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!375 (List!32585 List!32585 List!32585 List!32585) Unit!46614)

(assert (=> b!2797235 (= lt!999406 (lemmaConcatSameAndSameSizesThenSameLists!375 lt!999422 lt!999413 testedP!183 testedSuffix!143))))

(declare-fun b!2797236 () Bool)

(declare-fun e!1766886 () Bool)

(declare-fun e!1766901 () Bool)

(assert (=> b!2797236 (= e!1766886 e!1766901)))

(declare-fun b!2797237 () Bool)

(declare-fun e!1766906 () Bool)

(declare-fun tp!890501 () Bool)

(declare-fun mapRes!18202 () Bool)

(assert (=> b!2797237 (= e!1766906 (and tp!890501 mapRes!18202))))

(declare-fun condMapEmpty!18202 () Bool)

(declare-datatypes ((Hashable!3920 0))(
  ( (HashableExt!3919 (__x!21662 Int)) )
))
(declare-datatypes ((tuple2!33050 0))(
  ( (tuple2!33051 (_1!19568 Context!4846) (_2!19568 C!16568)) )
))
(declare-datatypes ((tuple2!33052 0))(
  ( (tuple2!33053 (_1!19569 tuple2!33050) (_2!19569 (InoxSet Context!4846))) )
))
(declare-datatypes ((List!32588 0))(
  ( (Nil!32488) (Cons!32488 (h!37908 tuple2!33052) (t!228748 List!32588)) )
))
(declare-datatypes ((array!14234 0))(
  ( (array!14235 (arr!6343 (Array (_ BitVec 32) List!32588)) (size!25337 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8008 0))(
  ( (LongMapFixedSize!8009 (defaultEntry!4389 Int) (mask!9843 (_ BitVec 32)) (extraKeys!4253 (_ BitVec 32)) (zeroValue!4263 List!32588) (minValue!4263 List!32588) (_size!8051 (_ BitVec 32)) (_keys!4304 array!14230) (_values!4285 array!14234) (_vacant!4065 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15825 0))(
  ( (Cell!15826 (v!34089 LongMapFixedSize!8008)) )
))
(declare-datatypes ((MutLongMap!4004 0))(
  ( (LongMap!4004 (underlying!8211 Cell!15825)) (MutLongMapExt!4003 (__x!21663 Int)) )
))
(declare-datatypes ((Cell!15827 0))(
  ( (Cell!15828 (v!34090 MutLongMap!4004)) )
))
(declare-datatypes ((MutableMap!3910 0))(
  ( (MutableMapExt!3909 (__x!21664 Int)) (HashMap!3910 (underlying!8212 Cell!15827) (hashF!5952 Hashable!3920) (_size!8052 (_ BitVec 32)) (defaultValue!4081 Int)) )
))
(declare-datatypes ((CacheUp!2614 0))(
  ( (CacheUp!2615 (cache!4053 MutableMap!3910)) )
))
(declare-fun cacheUp!890 () CacheUp!2614)

(declare-fun mapDefault!18201 () List!32588)

(assert (=> b!2797237 (= condMapEmpty!18202 (= (arr!6343 (_values!4285 (v!34089 (underlying!8211 (v!34090 (underlying!8212 (cache!4053 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32588)) mapDefault!18201)))))

(declare-fun b!2797238 () Bool)

(declare-fun res!1166014 () Bool)

(declare-fun e!1766890 () Bool)

(assert (=> b!2797238 (=> (not res!1166014) (not e!1766890))))

(declare-fun valid!3135 (CacheDown!2736) Bool)

(assert (=> b!2797238 (= res!1166014 (valid!3135 cacheDown!1009))))

(declare-fun b!2797239 () Bool)

(declare-fun e!1766883 () Bool)

(declare-fun tp_is_empty!14223 () Bool)

(declare-fun tp!890494 () Bool)

(assert (=> b!2797239 (= e!1766883 (and tp_is_empty!14223 tp!890494))))

(declare-fun b!2797240 () Bool)

(declare-fun e!1766894 () Bool)

(assert (=> b!2797240 (= e!1766894 e!1766905)))

(declare-fun res!1166023 () Bool)

(assert (=> b!2797240 (=> res!1166023 e!1766905)))

(declare-fun z!3684 () (InoxSet Context!4846))

(declare-fun lostCauseZipper!498 ((InoxSet Context!4846)) Bool)

(assert (=> b!2797240 (= res!1166023 (lostCauseZipper!498 z!3684))))

(declare-fun lt!999408 () List!32585)

(assert (=> b!2797240 (and (= testedSuffix!143 lt!999408) (= lt!999408 testedSuffix!143))))

(declare-fun lt!999407 () Unit!46614)

(declare-fun lemmaSamePrefixThenSameSuffix!1201 (List!32585 List!32585 List!32585 List!32585 List!32585) Unit!46614)

(assert (=> b!2797240 (= lt!999407 (lemmaSamePrefixThenSameSuffix!1201 testedP!183 testedSuffix!143 testedP!183 lt!999408 lt!999415))))

(declare-fun getSuffix!1303 (List!32585 List!32585) List!32585)

(assert (=> b!2797240 (= lt!999408 (getSuffix!1303 lt!999415 testedP!183))))

(declare-fun mapIsEmpty!18201 () Bool)

(assert (=> mapIsEmpty!18201 mapRes!18202))

(declare-fun b!2797241 () Bool)

(declare-fun e!1766884 () Bool)

(declare-fun e!1766896 () Bool)

(declare-fun lt!999410 () MutLongMap!4004)

(get-info :version)

(assert (=> b!2797241 (= e!1766884 (and e!1766896 ((_ is LongMap!4004) lt!999410)))))

(assert (=> b!2797241 (= lt!999410 (v!34090 (underlying!8212 (cache!4053 cacheUp!890))))))

(declare-fun b!2797242 () Bool)

(declare-fun e!1766899 () Bool)

(declare-fun e!1766907 () Bool)

(assert (=> b!2797242 (= e!1766899 e!1766907)))

(declare-fun res!1166020 () Bool)

(assert (=> b!2797242 (=> (not res!1166020) (not e!1766907))))

(declare-fun lt!999414 () Int)

(assert (=> b!2797242 (= res!1166020 (= testedPSize!143 lt!999414))))

(declare-fun size!25338 (List!32585) Int)

(assert (=> b!2797242 (= lt!999414 (size!25338 testedP!183))))

(declare-fun e!1766897 () Bool)

(declare-fun e!1766888 () Bool)

(assert (=> b!2797243 (= e!1766897 (and e!1766888 tp!890502))))

(declare-fun b!2797244 () Bool)

(declare-fun e!1766892 () Bool)

(declare-fun tp!890498 () Bool)

(declare-fun inv!44122 (Conc!10067) Bool)

(assert (=> b!2797244 (= e!1766892 (and (inv!44122 (c!453688 totalInput!758)) tp!890498))))

(declare-fun e!1766909 () Bool)

(assert (=> b!2797245 (= e!1766909 (and e!1766884 tp!890492))))

(declare-fun b!2797246 () Bool)

(declare-fun e!1766882 () Bool)

(declare-fun tp!890500 () Bool)

(assert (=> b!2797246 (= e!1766882 tp!890500)))

(declare-fun mapNonEmpty!18201 () Bool)

(declare-fun tp!890499 () Bool)

(declare-fun tp!890506 () Bool)

(assert (=> mapNonEmpty!18201 (= mapRes!18202 (and tp!890499 tp!890506))))

(declare-fun mapValue!18201 () List!32588)

(declare-fun mapKey!18201 () (_ BitVec 32))

(declare-fun mapRest!18202 () (Array (_ BitVec 32) List!32588))

(assert (=> mapNonEmpty!18201 (= (arr!6343 (_values!4285 (v!34089 (underlying!8211 (v!34090 (underlying!8212 (cache!4053 cacheUp!890))))))) (store mapRest!18202 mapKey!18201 mapValue!18201))))

(declare-fun b!2797247 () Bool)

(assert (=> b!2797247 (= e!1766895 e!1766891)))

(declare-fun res!1166016 () Bool)

(assert (=> b!2797247 (=> res!1166016 e!1766891)))

(declare-fun lt!999418 () Int)

(assert (=> b!2797247 (= res!1166016 (not (= lt!999414 lt!999418)))))

(assert (=> b!2797247 (<= lt!999414 (size!25338 lt!999415))))

(declare-fun lt!999416 () Unit!46614)

(declare-fun lemmaIsPrefixThenSmallerEqSize!286 (List!32585 List!32585) Unit!46614)

(assert (=> b!2797247 (= lt!999416 (lemmaIsPrefixThenSmallerEqSize!286 testedP!183 lt!999415))))

(declare-fun mapIsEmpty!18202 () Bool)

(declare-fun mapRes!18201 () Bool)

(assert (=> mapIsEmpty!18202 mapRes!18201))

(declare-fun setElem!24296 () Context!4846)

(declare-fun setNonEmpty!24296 () Bool)

(declare-fun tp!890491 () Bool)

(declare-fun inv!44123 (Context!4846) Bool)

(assert (=> setNonEmpty!24296 (= setRes!24296 (and tp!890491 (inv!44123 setElem!24296) e!1766882))))

(declare-fun setRest!24296 () (InoxSet Context!4846))

(assert (=> setNonEmpty!24296 (= z!3684 ((_ map or) (store ((as const (Array Context!4846 Bool)) false) setElem!24296 true) setRest!24296))))

(declare-fun b!2797248 () Bool)

(declare-fun e!1766904 () Bool)

(declare-fun tp!890508 () Bool)

(assert (=> b!2797248 (= e!1766904 (and tp_is_empty!14223 tp!890508))))

(declare-fun res!1166017 () Bool)

(assert (=> start!270412 (=> (not res!1166017) (not e!1766899))))

(declare-fun lt!999409 () List!32585)

(assert (=> start!270412 (= res!1166017 (= lt!999409 lt!999415))))

(assert (=> start!270412 (= lt!999415 (list!12202 totalInput!758))))

(assert (=> start!270412 (= lt!999409 (++!8013 testedP!183 testedSuffix!143))))

(assert (=> start!270412 e!1766899))

(declare-fun inv!44124 (BalanceConc!19748) Bool)

(assert (=> start!270412 (and (inv!44124 totalInput!758) e!1766892)))

(declare-fun condSetEmpty!24296 () Bool)

(assert (=> start!270412 (= condSetEmpty!24296 (= z!3684 ((as const (Array Context!4846 Bool)) false)))))

(assert (=> start!270412 setRes!24296))

(assert (=> start!270412 true))

(assert (=> start!270412 e!1766883))

(assert (=> start!270412 e!1766904))

(declare-fun e!1766893 () Bool)

(declare-fun inv!44125 (CacheDown!2736) Bool)

(assert (=> start!270412 (and (inv!44125 cacheDown!1009) e!1766893)))

(declare-fun e!1766908 () Bool)

(declare-fun inv!44126 (CacheUp!2614) Bool)

(assert (=> start!270412 (and (inv!44126 cacheUp!890) e!1766908)))

(declare-fun b!2797234 () Bool)

(declare-fun e!1766885 () Bool)

(declare-fun e!1766889 () Bool)

(assert (=> b!2797234 (= e!1766885 e!1766889)))

(declare-fun b!2797249 () Bool)

(assert (=> b!2797249 (= e!1766893 e!1766897)))

(declare-fun b!2797250 () Bool)

(declare-fun tp!890503 () Bool)

(assert (=> b!2797250 (= e!1766900 (and tp!890503 mapRes!18201))))

(declare-fun condMapEmpty!18201 () Bool)

(declare-fun mapDefault!18202 () List!32587)

(assert (=> b!2797250 (= condMapEmpty!18201 (= (arr!6342 (_values!4284 (v!34087 (underlying!8209 (v!34088 (underlying!8210 (cache!4052 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32587)) mapDefault!18202)))))

(declare-fun b!2797251 () Bool)

(assert (=> b!2797251 (= e!1766890 (not e!1766894))))

(declare-fun res!1166018 () Bool)

(assert (=> b!2797251 (=> res!1166018 e!1766894)))

(assert (=> b!2797251 (= res!1166018 (not (isPrefix!2627 testedP!183 lt!999415)))))

(assert (=> b!2797251 (isPrefix!2627 testedP!183 lt!999409)))

(declare-fun lt!999419 () Unit!46614)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1735 (List!32585 List!32585) Unit!46614)

(assert (=> b!2797251 (= lt!999419 (lemmaConcatTwoListThenFirstIsPrefix!1735 testedP!183 testedSuffix!143))))

(declare-fun b!2797252 () Bool)

(declare-fun res!1166015 () Bool)

(assert (=> b!2797252 (=> res!1166015 e!1766898)))

(declare-fun size!25339 (BalanceConc!19748) Int)

(assert (=> b!2797252 (= res!1166015 (not (= (size!25339 (_1!19567 lt!999411)) testedPSize!143)))))

(declare-fun b!2797253 () Bool)

(assert (=> b!2797253 (= e!1766907 e!1766890)))

(declare-fun res!1166019 () Bool)

(assert (=> b!2797253 (=> (not res!1166019) (not e!1766890))))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2797253 (= res!1166019 (= totalInputSize!205 lt!999418))))

(assert (=> b!2797253 (= lt!999418 (size!25339 totalInput!758))))

(declare-fun b!2797254 () Bool)

(declare-fun res!1166024 () Bool)

(assert (=> b!2797254 (=> (not res!1166024) (not e!1766890))))

(declare-fun valid!3136 (CacheUp!2614) Bool)

(assert (=> b!2797254 (= res!1166024 (valid!3136 cacheUp!890))))

(declare-fun b!2797255 () Bool)

(assert (=> b!2797255 (= e!1766901 e!1766902)))

(declare-fun b!2797256 () Bool)

(assert (=> b!2797256 (= e!1766896 e!1766885)))

(declare-fun mapNonEmpty!18202 () Bool)

(declare-fun tp!890493 () Bool)

(declare-fun tp!890495 () Bool)

(assert (=> mapNonEmpty!18202 (= mapRes!18201 (and tp!890493 tp!890495))))

(declare-fun mapValue!18202 () List!32587)

(declare-fun mapKey!18202 () (_ BitVec 32))

(declare-fun mapRest!18201 () (Array (_ BitVec 32) List!32587))

(assert (=> mapNonEmpty!18202 (= (arr!6342 (_values!4284 (v!34087 (underlying!8209 (v!34088 (underlying!8210 (cache!4052 cacheDown!1009))))))) (store mapRest!18201 mapKey!18202 mapValue!18202))))

(declare-fun tp!890509 () Bool)

(declare-fun tp!890504 () Bool)

(declare-fun array_inv!4541 (array!14234) Bool)

(assert (=> b!2797257 (= e!1766889 (and tp!890497 tp!890504 tp!890509 (array_inv!4539 (_keys!4304 (v!34089 (underlying!8211 (v!34090 (underlying!8212 (cache!4053 cacheUp!890))))))) (array_inv!4541 (_values!4285 (v!34089 (underlying!8211 (v!34090 (underlying!8212 (cache!4053 cacheUp!890))))))) e!1766906))))

(declare-fun b!2797258 () Bool)

(declare-fun lt!999420 () MutLongMap!4003)

(assert (=> b!2797258 (= e!1766888 (and e!1766886 ((_ is LongMap!4003) lt!999420)))))

(assert (=> b!2797258 (= lt!999420 (v!34088 (underlying!8210 (cache!4052 cacheDown!1009))))))

(declare-fun b!2797259 () Bool)

(declare-fun res!1166022 () Bool)

(assert (=> b!2797259 (=> res!1166022 e!1766905)))

(assert (=> b!2797259 (= res!1166022 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2797260 () Bool)

(assert (=> b!2797260 (= e!1766908 e!1766909)))

(assert (= (and start!270412 res!1166017) b!2797242))

(assert (= (and b!2797242 res!1166020) b!2797253))

(assert (= (and b!2797253 res!1166019) b!2797254))

(assert (= (and b!2797254 res!1166024) b!2797238))

(assert (= (and b!2797238 res!1166014) b!2797251))

(assert (= (and b!2797251 (not res!1166018)) b!2797240))

(assert (= (and b!2797240 (not res!1166023)) b!2797259))

(assert (= (and b!2797259 (not res!1166022)) b!2797233))

(assert (= (and b!2797233 (not res!1166021)) b!2797252))

(assert (= (and b!2797252 (not res!1166015)) b!2797235))

(assert (= (and b!2797235 (not res!1166025)) b!2797247))

(assert (= (and b!2797247 (not res!1166016)) b!2797231))

(assert (= start!270412 b!2797244))

(assert (= (and start!270412 condSetEmpty!24296) setIsEmpty!24296))

(assert (= (and start!270412 (not condSetEmpty!24296)) setNonEmpty!24296))

(assert (= setNonEmpty!24296 b!2797246))

(assert (= (and start!270412 ((_ is Cons!32485) testedP!183)) b!2797239))

(assert (= (and start!270412 ((_ is Cons!32485) testedSuffix!143)) b!2797248))

(assert (= (and b!2797250 condMapEmpty!18201) mapIsEmpty!18202))

(assert (= (and b!2797250 (not condMapEmpty!18201)) mapNonEmpty!18202))

(assert (= b!2797232 b!2797250))

(assert (= b!2797255 b!2797232))

(assert (= b!2797236 b!2797255))

(assert (= (and b!2797258 ((_ is LongMap!4003) (v!34088 (underlying!8210 (cache!4052 cacheDown!1009))))) b!2797236))

(assert (= b!2797243 b!2797258))

(assert (= (and b!2797249 ((_ is HashMap!3909) (cache!4052 cacheDown!1009))) b!2797243))

(assert (= start!270412 b!2797249))

(assert (= (and b!2797237 condMapEmpty!18202) mapIsEmpty!18201))

(assert (= (and b!2797237 (not condMapEmpty!18202)) mapNonEmpty!18201))

(assert (= b!2797257 b!2797237))

(assert (= b!2797234 b!2797257))

(assert (= b!2797256 b!2797234))

(assert (= (and b!2797241 ((_ is LongMap!4004) (v!34090 (underlying!8212 (cache!4053 cacheUp!890))))) b!2797256))

(assert (= b!2797245 b!2797241))

(assert (= (and b!2797260 ((_ is HashMap!3910) (cache!4053 cacheUp!890))) b!2797245))

(assert (= start!270412 b!2797260))

(declare-fun m!3226749 () Bool)

(assert (=> b!2797238 m!3226749))

(declare-fun m!3226751 () Bool)

(assert (=> b!2797231 m!3226751))

(declare-fun m!3226753 () Bool)

(assert (=> b!2797231 m!3226753))

(declare-fun m!3226755 () Bool)

(assert (=> b!2797231 m!3226755))

(declare-fun m!3226757 () Bool)

(assert (=> b!2797233 m!3226757))

(declare-fun m!3226759 () Bool)

(assert (=> b!2797233 m!3226759))

(declare-fun m!3226761 () Bool)

(assert (=> b!2797233 m!3226761))

(declare-fun m!3226763 () Bool)

(assert (=> b!2797233 m!3226763))

(declare-fun m!3226765 () Bool)

(assert (=> b!2797247 m!3226765))

(declare-fun m!3226767 () Bool)

(assert (=> b!2797247 m!3226767))

(declare-fun m!3226769 () Bool)

(assert (=> b!2797240 m!3226769))

(declare-fun m!3226771 () Bool)

(assert (=> b!2797240 m!3226771))

(declare-fun m!3226773 () Bool)

(assert (=> b!2797240 m!3226773))

(declare-fun m!3226775 () Bool)

(assert (=> mapNonEmpty!18201 m!3226775))

(declare-fun m!3226777 () Bool)

(assert (=> b!2797244 m!3226777))

(declare-fun m!3226779 () Bool)

(assert (=> b!2797253 m!3226779))

(declare-fun m!3226781 () Bool)

(assert (=> mapNonEmpty!18202 m!3226781))

(declare-fun m!3226783 () Bool)

(assert (=> b!2797257 m!3226783))

(declare-fun m!3226785 () Bool)

(assert (=> b!2797257 m!3226785))

(declare-fun m!3226787 () Bool)

(assert (=> b!2797252 m!3226787))

(declare-fun m!3226789 () Bool)

(assert (=> setNonEmpty!24296 m!3226789))

(declare-fun m!3226791 () Bool)

(assert (=> b!2797251 m!3226791))

(declare-fun m!3226793 () Bool)

(assert (=> b!2797251 m!3226793))

(declare-fun m!3226795 () Bool)

(assert (=> b!2797251 m!3226795))

(declare-fun m!3226797 () Bool)

(assert (=> b!2797254 m!3226797))

(declare-fun m!3226799 () Bool)

(assert (=> b!2797242 m!3226799))

(declare-fun m!3226801 () Bool)

(assert (=> start!270412 m!3226801))

(declare-fun m!3226803 () Bool)

(assert (=> start!270412 m!3226803))

(declare-fun m!3226805 () Bool)

(assert (=> start!270412 m!3226805))

(declare-fun m!3226807 () Bool)

(assert (=> start!270412 m!3226807))

(declare-fun m!3226809 () Bool)

(assert (=> start!270412 m!3226809))

(declare-fun m!3226811 () Bool)

(assert (=> b!2797235 m!3226811))

(declare-fun m!3226813 () Bool)

(assert (=> b!2797235 m!3226813))

(declare-fun m!3226815 () Bool)

(assert (=> b!2797235 m!3226815))

(declare-fun m!3226817 () Bool)

(assert (=> b!2797235 m!3226817))

(declare-fun m!3226819 () Bool)

(assert (=> b!2797235 m!3226819))

(declare-fun m!3226821 () Bool)

(assert (=> b!2797235 m!3226821))

(assert (=> b!2797235 m!3226821))

(declare-fun m!3226823 () Bool)

(assert (=> b!2797235 m!3226823))

(declare-fun m!3226825 () Bool)

(assert (=> b!2797232 m!3226825))

(declare-fun m!3226827 () Bool)

(assert (=> b!2797232 m!3226827))

(check-sat (not b!2797250) (not b_next!79973) (not b_next!79979) (not start!270412) (not b!2797232) (not b!2797242) b_and!204011 (not setNonEmpty!24296) (not b!2797239) (not b!2797254) (not b!2797244) (not b!2797246) (not b!2797240) (not b!2797238) (not b!2797235) b_and!204013 (not b!2797257) (not b!2797253) b_and!204007 (not b!2797252) (not b_next!79977) (not mapNonEmpty!18201) (not b_next!79975) (not b!2797231) (not b!2797247) tp_is_empty!14223 b_and!204009 (not mapNonEmpty!18202) (not b!2797233) (not b!2797237) (not b!2797248) (not b!2797251))
(check-sat b_and!204013 (not b_next!79973) (not b_next!79979) b_and!204007 b_and!204011 b_and!204009 (not b_next!79977) (not b_next!79975))
