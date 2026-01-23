; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270838 () Bool)

(assert start!270838)

(declare-fun b!2800833 () Bool)

(declare-fun b_free!79421 () Bool)

(declare-fun b_next!80125 () Bool)

(assert (=> b!2800833 (= b_free!79421 (not b_next!80125))))

(declare-fun tp!892474 () Bool)

(declare-fun b_and!204159 () Bool)

(assert (=> b!2800833 (= tp!892474 b_and!204159)))

(declare-fun b!2800823 () Bool)

(declare-fun b_free!79423 () Bool)

(declare-fun b_next!80127 () Bool)

(assert (=> b!2800823 (= b_free!79423 (not b_next!80127))))

(declare-fun tp!892469 () Bool)

(declare-fun b_and!204161 () Bool)

(assert (=> b!2800823 (= tp!892469 b_and!204161)))

(declare-fun b!2800845 () Bool)

(declare-fun b_free!79425 () Bool)

(declare-fun b_next!80129 () Bool)

(assert (=> b!2800845 (= b_free!79425 (not b_next!80129))))

(declare-fun tp!892476 () Bool)

(declare-fun b_and!204163 () Bool)

(assert (=> b!2800845 (= tp!892476 b_and!204163)))

(declare-fun b!2800831 () Bool)

(declare-fun b_free!79427 () Bool)

(declare-fun b_next!80131 () Bool)

(assert (=> b!2800831 (= b_free!79427 (not b_next!80131))))

(declare-fun tp!892477 () Bool)

(declare-fun b_and!204165 () Bool)

(assert (=> b!2800831 (= tp!892477 b_and!204165)))

(declare-fun b!2800817 () Bool)

(declare-datatypes ((Unit!46674 0))(
  ( (Unit!46675) )
))
(declare-fun e!1769773 () Unit!46674)

(declare-fun Unit!46676 () Unit!46674)

(assert (=> b!2800817 (= e!1769773 Unit!46676)))

(declare-fun b!2800818 () Bool)

(declare-fun e!1769772 () Bool)

(declare-fun e!1769784 () Bool)

(assert (=> b!2800818 (= e!1769772 e!1769784)))

(declare-fun res!1167220 () Bool)

(assert (=> b!2800818 (=> res!1167220 e!1769784)))

(declare-fun lt!1001228 () Int)

(declare-fun lt!1001219 () Int)

(assert (=> b!2800818 (= res!1167220 (>= lt!1001228 lt!1001219))))

(declare-fun lt!1001229 () Unit!46674)

(assert (=> b!2800818 (= lt!1001229 e!1769773)))

(declare-fun c!454115 () Bool)

(assert (=> b!2800818 (= c!454115 (= lt!1001228 lt!1001219))))

(declare-datatypes ((C!16604 0))(
  ( (C!16605 (val!10236 Int)) )
))
(declare-datatypes ((List!32659 0))(
  ( (Nil!32559) (Cons!32559 (h!37979 C!16604) (t!228824 List!32659)) )
))
(declare-fun lt!1001220 () List!32659)

(declare-fun size!25416 (List!32659) Int)

(assert (=> b!2800818 (<= lt!1001228 (size!25416 lt!1001220))))

(declare-fun lt!1001235 () Unit!46674)

(declare-fun testedP!183 () List!32659)

(declare-fun lemmaIsPrefixThenSmallerEqSize!297 (List!32659 List!32659) Unit!46674)

(assert (=> b!2800818 (= lt!1001235 (lemmaIsPrefixThenSmallerEqSize!297 testedP!183 lt!1001220))))

(declare-fun b!2800819 () Bool)

(declare-fun Unit!46677 () Unit!46674)

(assert (=> b!2800819 (= e!1769773 Unit!46677)))

(declare-fun lt!1001218 () Unit!46674)

(declare-fun lemmaIsPrefixRefl!1721 (List!32659 List!32659) Unit!46674)

(assert (=> b!2800819 (= lt!1001218 (lemmaIsPrefixRefl!1721 lt!1001220 lt!1001220))))

(declare-fun isPrefix!2639 (List!32659 List!32659) Bool)

(assert (=> b!2800819 (isPrefix!2639 lt!1001220 lt!1001220)))

(declare-fun lt!1001216 () Unit!46674)

(declare-fun lemmaIsPrefixSameLengthThenSameList!497 (List!32659 List!32659 List!32659) Unit!46674)

(assert (=> b!2800819 (= lt!1001216 (lemmaIsPrefixSameLengthThenSameList!497 lt!1001220 testedP!183 lt!1001220))))

(assert (=> b!2800819 false))

(declare-fun mapNonEmpty!18347 () Bool)

(declare-fun mapRes!18347 () Bool)

(declare-fun tp!892468 () Bool)

(declare-fun tp!892470 () Bool)

(assert (=> mapNonEmpty!18347 (= mapRes!18347 (and tp!892468 tp!892470))))

(declare-datatypes ((Hashable!3953 0))(
  ( (HashableExt!3952 (__x!21761 Int)) )
))
(declare-datatypes ((Regex!8223 0))(
  ( (ElementMatch!8223 (c!454116 C!16604)) (Concat!13311 (regOne!16958 Regex!8223) (regTwo!16958 Regex!8223)) (EmptyExpr!8223) (Star!8223 (reg!8552 Regex!8223)) (EmptyLang!8223) (Union!8223 (regOne!16959 Regex!8223) (regTwo!16959 Regex!8223)) )
))
(declare-datatypes ((List!32660 0))(
  ( (Nil!32560) (Cons!32560 (h!37980 Regex!8223) (t!228825 List!32660)) )
))
(declare-datatypes ((Context!4882 0))(
  ( (Context!4883 (exprs!2941 List!32660)) )
))
(declare-datatypes ((tuple2!33186 0))(
  ( (tuple2!33187 (_1!19661 Context!4882) (_2!19661 C!16604)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33188 0))(
  ( (tuple2!33189 (_1!19662 tuple2!33186) (_2!19662 (InoxSet Context!4882))) )
))
(declare-datatypes ((List!32661 0))(
  ( (Nil!32561) (Cons!32561 (h!37981 tuple2!33188) (t!228826 List!32661)) )
))
(declare-datatypes ((array!14349 0))(
  ( (array!14350 (arr!6393 (Array (_ BitVec 32) List!32661)) (size!25417 (_ BitVec 32))) )
))
(declare-datatypes ((array!14351 0))(
  ( (array!14352 (arr!6394 (Array (_ BitVec 32) (_ BitVec 64))) (size!25418 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8074 0))(
  ( (LongMapFixedSize!8075 (defaultEntry!4422 Int) (mask!9885 (_ BitVec 32)) (extraKeys!4286 (_ BitVec 32)) (zeroValue!4296 List!32661) (minValue!4296 List!32661) (_size!8117 (_ BitVec 32)) (_keys!4337 array!14351) (_values!4318 array!14349) (_vacant!4098 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15957 0))(
  ( (Cell!15958 (v!34161 LongMapFixedSize!8074)) )
))
(declare-datatypes ((MutLongMap!4037 0))(
  ( (LongMap!4037 (underlying!8277 Cell!15957)) (MutLongMapExt!4036 (__x!21762 Int)) )
))
(declare-datatypes ((Cell!15959 0))(
  ( (Cell!15960 (v!34162 MutLongMap!4037)) )
))
(declare-datatypes ((MutableMap!3943 0))(
  ( (MutableMapExt!3942 (__x!21763 Int)) (HashMap!3943 (underlying!8278 Cell!15959) (hashF!5985 Hashable!3953) (_size!8118 (_ BitVec 32)) (defaultValue!4114 Int)) )
))
(declare-datatypes ((CacheUp!2646 0))(
  ( (CacheUp!2647 (cache!4086 MutableMap!3943)) )
))
(declare-fun cacheUp!890 () CacheUp!2646)

(declare-fun mapKey!18347 () (_ BitVec 32))

(declare-fun mapValue!18348 () List!32661)

(declare-fun mapRest!18348 () (Array (_ BitVec 32) List!32661))

(assert (=> mapNonEmpty!18347 (= (arr!6393 (_values!4318 (v!34161 (underlying!8277 (v!34162 (underlying!8278 (cache!4086 cacheUp!890))))))) (store mapRest!18348 mapKey!18347 mapValue!18348))))

(declare-fun b!2800821 () Bool)

(declare-fun e!1769761 () Bool)

(declare-fun e!1769756 () Bool)

(assert (=> b!2800821 (= e!1769761 e!1769756)))

(declare-fun res!1167221 () Bool)

(assert (=> b!2800821 (=> (not res!1167221) (not e!1769756))))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2800821 (= res!1167221 (= totalInputSize!205 lt!1001219))))

(declare-datatypes ((IArray!20167 0))(
  ( (IArray!20168 (innerList!10141 List!32659)) )
))
(declare-datatypes ((Conc!10081 0))(
  ( (Node!10081 (left!24592 Conc!10081) (right!24922 Conc!10081) (csize!20392 Int) (cheight!10292 Int)) (Leaf!15361 (xs!13193 IArray!20167) (csize!20393 Int)) (Empty!10081) )
))
(declare-datatypes ((BalanceConc!19776 0))(
  ( (BalanceConc!19777 (c!454117 Conc!10081)) )
))
(declare-fun totalInput!758 () BalanceConc!19776)

(declare-fun size!25419 (BalanceConc!19776) Int)

(assert (=> b!2800821 (= lt!1001219 (size!25419 totalInput!758))))

(declare-fun setElem!24517 () Context!4882)

(declare-fun setNonEmpty!24517 () Bool)

(declare-fun setRes!24517 () Bool)

(declare-fun e!1769774 () Bool)

(declare-fun tp!892483 () Bool)

(declare-fun inv!44219 (Context!4882) Bool)

(assert (=> setNonEmpty!24517 (= setRes!24517 (and tp!892483 (inv!44219 setElem!24517) e!1769774))))

(declare-fun z!3684 () (InoxSet Context!4882))

(declare-fun setRest!24517 () (InoxSet Context!4882))

(assert (=> setNonEmpty!24517 (= z!3684 ((_ map or) (store ((as const (Array Context!4882 Bool)) false) setElem!24517 true) setRest!24517))))

(declare-fun b!2800822 () Bool)

(declare-fun res!1167211 () Bool)

(declare-fun e!1769769 () Bool)

(assert (=> b!2800822 (=> res!1167211 e!1769769)))

(declare-fun testedPSize!143 () Int)

(assert (=> b!2800822 (= res!1167211 (= testedPSize!143 totalInputSize!205))))

(declare-fun e!1769770 () Bool)

(declare-fun e!1769778 () Bool)

(assert (=> b!2800823 (= e!1769770 (and e!1769778 tp!892469))))

(declare-fun b!2800824 () Bool)

(declare-fun e!1769762 () Bool)

(declare-fun tp_is_empty!14259 () Bool)

(declare-fun tp!892479 () Bool)

(assert (=> b!2800824 (= e!1769762 (and tp_is_empty!14259 tp!892479))))

(declare-fun b!2800825 () Bool)

(declare-fun e!1769782 () Bool)

(assert (=> b!2800825 (= e!1769756 (not e!1769782))))

(declare-fun res!1167217 () Bool)

(assert (=> b!2800825 (=> res!1167217 e!1769782)))

(assert (=> b!2800825 (= res!1167217 (not (isPrefix!2639 testedP!183 lt!1001220)))))

(declare-fun lt!1001227 () List!32659)

(assert (=> b!2800825 (isPrefix!2639 testedP!183 lt!1001227)))

(declare-fun lt!1001233 () Unit!46674)

(declare-fun testedSuffix!143 () List!32659)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1745 (List!32659 List!32659) Unit!46674)

(assert (=> b!2800825 (= lt!1001233 (lemmaConcatTwoListThenFirstIsPrefix!1745 testedP!183 testedSuffix!143))))

(declare-fun b!2800826 () Bool)

(declare-fun res!1167213 () Bool)

(assert (=> b!2800826 (=> (not res!1167213) (not e!1769756))))

(declare-datatypes ((tuple3!5196 0))(
  ( (tuple3!5197 (_1!19663 Regex!8223) (_2!19663 Context!4882) (_3!3068 C!16604)) )
))
(declare-datatypes ((tuple2!33190 0))(
  ( (tuple2!33191 (_1!19664 tuple3!5196) (_2!19664 (InoxSet Context!4882))) )
))
(declare-datatypes ((List!32662 0))(
  ( (Nil!32562) (Cons!32562 (h!37982 tuple2!33190) (t!228827 List!32662)) )
))
(declare-datatypes ((array!14353 0))(
  ( (array!14354 (arr!6395 (Array (_ BitVec 32) List!32662)) (size!25420 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8076 0))(
  ( (LongMapFixedSize!8077 (defaultEntry!4423 Int) (mask!9886 (_ BitVec 32)) (extraKeys!4287 (_ BitVec 32)) (zeroValue!4297 List!32662) (minValue!4297 List!32662) (_size!8119 (_ BitVec 32)) (_keys!4338 array!14351) (_values!4319 array!14353) (_vacant!4099 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15961 0))(
  ( (Cell!15962 (v!34163 LongMapFixedSize!8076)) )
))
(declare-datatypes ((MutLongMap!4038 0))(
  ( (LongMap!4038 (underlying!8279 Cell!15961)) (MutLongMapExt!4037 (__x!21764 Int)) )
))
(declare-datatypes ((Cell!15963 0))(
  ( (Cell!15964 (v!34164 MutLongMap!4038)) )
))
(declare-datatypes ((Hashable!3954 0))(
  ( (HashableExt!3953 (__x!21765 Int)) )
))
(declare-datatypes ((MutableMap!3944 0))(
  ( (MutableMapExt!3943 (__x!21766 Int)) (HashMap!3944 (underlying!8280 Cell!15963) (hashF!5986 Hashable!3954) (_size!8120 (_ BitVec 32)) (defaultValue!4115 Int)) )
))
(declare-datatypes ((CacheDown!2772 0))(
  ( (CacheDown!2773 (cache!4087 MutableMap!3944)) )
))
(declare-fun cacheDown!1009 () CacheDown!2772)

(declare-fun valid!3160 (CacheDown!2772) Bool)

(assert (=> b!2800826 (= res!1167213 (valid!3160 cacheDown!1009))))

(declare-fun b!2800827 () Bool)

(declare-fun e!1769767 () Bool)

(declare-fun e!1769755 () Bool)

(assert (=> b!2800827 (= e!1769767 e!1769755)))

(declare-fun b!2800828 () Bool)

(declare-fun e!1769776 () Bool)

(declare-fun tp!892466 () Bool)

(assert (=> b!2800828 (= e!1769776 (and tp_is_empty!14259 tp!892466))))

(declare-fun b!2800829 () Bool)

(declare-fun e!1769771 () Bool)

(declare-fun e!1769760 () Bool)

(assert (=> b!2800829 (= e!1769771 e!1769760)))

(declare-fun b!2800830 () Bool)

(declare-fun e!1769757 () Bool)

(assert (=> b!2800830 (= e!1769757 e!1769761)))

(declare-fun res!1167214 () Bool)

(assert (=> b!2800830 (=> (not res!1167214) (not e!1769761))))

(assert (=> b!2800830 (= res!1167214 (= testedPSize!143 lt!1001228))))

(assert (=> b!2800830 (= lt!1001228 (size!25416 testedP!183))))

(declare-fun b!2800820 () Bool)

(declare-fun e!1769781 () Bool)

(assert (=> b!2800820 (= e!1769781 e!1769771)))

(declare-fun res!1167219 () Bool)

(assert (=> start!270838 (=> (not res!1167219) (not e!1769757))))

(assert (=> start!270838 (= res!1167219 (= lt!1001227 lt!1001220))))

(declare-fun list!12219 (BalanceConc!19776) List!32659)

(assert (=> start!270838 (= lt!1001220 (list!12219 totalInput!758))))

(declare-fun ++!8027 (List!32659 List!32659) List!32659)

(assert (=> start!270838 (= lt!1001227 (++!8027 testedP!183 testedSuffix!143))))

(assert (=> start!270838 e!1769757))

(declare-fun e!1769777 () Bool)

(declare-fun inv!44220 (BalanceConc!19776) Bool)

(assert (=> start!270838 (and (inv!44220 totalInput!758) e!1769777)))

(declare-fun condSetEmpty!24517 () Bool)

(assert (=> start!270838 (= condSetEmpty!24517 (= z!3684 ((as const (Array Context!4882 Bool)) false)))))

(assert (=> start!270838 setRes!24517))

(assert (=> start!270838 true))

(assert (=> start!270838 e!1769776))

(assert (=> start!270838 e!1769762))

(declare-fun inv!44221 (CacheDown!2772) Bool)

(assert (=> start!270838 (and (inv!44221 cacheDown!1009) e!1769767)))

(declare-fun e!1769766 () Bool)

(declare-fun inv!44222 (CacheUp!2646) Bool)

(assert (=> start!270838 (and (inv!44222 cacheUp!890) e!1769766)))

(declare-fun e!1769783 () Bool)

(declare-fun tp!892475 () Bool)

(declare-fun tp!892481 () Bool)

(declare-fun array_inv!4577 (array!14351) Bool)

(declare-fun array_inv!4578 (array!14353) Bool)

(assert (=> b!2800831 (= e!1769760 (and tp!892477 tp!892475 tp!892481 (array_inv!4577 (_keys!4338 (v!34163 (underlying!8279 (v!34164 (underlying!8280 (cache!4087 cacheDown!1009))))))) (array_inv!4578 (_values!4319 (v!34163 (underlying!8279 (v!34164 (underlying!8280 (cache!4087 cacheDown!1009))))))) e!1769783))))

(declare-fun b!2800832 () Bool)

(declare-fun res!1167210 () Bool)

(assert (=> b!2800832 (=> (not res!1167210) (not e!1769756))))

(declare-fun valid!3161 (CacheUp!2646) Bool)

(assert (=> b!2800832 (= res!1167210 (valid!3161 cacheUp!890))))

(declare-fun mapNonEmpty!18348 () Bool)

(declare-fun mapRes!18348 () Bool)

(declare-fun tp!892484 () Bool)

(declare-fun tp!892473 () Bool)

(assert (=> mapNonEmpty!18348 (= mapRes!18348 (and tp!892484 tp!892473))))

(declare-fun mapRest!18347 () (Array (_ BitVec 32) List!32662))

(declare-fun mapKey!18348 () (_ BitVec 32))

(declare-fun mapValue!18347 () List!32662)

(assert (=> mapNonEmpty!18348 (= (arr!6395 (_values!4319 (v!34163 (underlying!8279 (v!34164 (underlying!8280 (cache!4087 cacheDown!1009))))))) (store mapRest!18347 mapKey!18348 mapValue!18347))))

(declare-fun e!1769775 () Bool)

(declare-fun tp!892467 () Bool)

(declare-fun tp!892471 () Bool)

(declare-fun e!1769764 () Bool)

(declare-fun array_inv!4579 (array!14349) Bool)

(assert (=> b!2800833 (= e!1769775 (and tp!892474 tp!892467 tp!892471 (array_inv!4577 (_keys!4337 (v!34161 (underlying!8277 (v!34162 (underlying!8278 (cache!4086 cacheUp!890))))))) (array_inv!4579 (_values!4318 (v!34161 (underlying!8277 (v!34162 (underlying!8278 (cache!4086 cacheUp!890))))))) e!1769764))))

(declare-fun b!2800834 () Bool)

(declare-fun e!1769780 () Bool)

(declare-fun lt!1001225 () MutLongMap!4038)

(get-info :version)

(assert (=> b!2800834 (= e!1769780 (and e!1769781 ((_ is LongMap!4038) lt!1001225)))))

(assert (=> b!2800834 (= lt!1001225 (v!34164 (underlying!8280 (cache!4087 cacheDown!1009))))))

(declare-fun setIsEmpty!24517 () Bool)

(assert (=> setIsEmpty!24517 setRes!24517))

(declare-fun b!2800835 () Bool)

(declare-fun e!1769768 () Bool)

(declare-fun lt!1001224 () MutLongMap!4037)

(assert (=> b!2800835 (= e!1769778 (and e!1769768 ((_ is LongMap!4037) lt!1001224)))))

(assert (=> b!2800835 (= lt!1001224 (v!34162 (underlying!8278 (cache!4086 cacheUp!890))))))

(declare-fun b!2800836 () Bool)

(declare-fun e!1769765 () Bool)

(assert (=> b!2800836 (= e!1769784 e!1769765)))

(declare-fun res!1167212 () Bool)

(assert (=> b!2800836 (=> res!1167212 e!1769765)))

(declare-fun nullableZipper!661 ((InoxSet Context!4882)) Bool)

(assert (=> b!2800836 (= res!1167212 (nullableZipper!661 z!3684))))

(declare-fun lt!1001232 () List!32659)

(declare-fun lt!1001236 () C!16604)

(assert (=> b!2800836 (= (++!8027 (++!8027 testedP!183 (Cons!32559 lt!1001236 Nil!32559)) lt!1001232) lt!1001220)))

(declare-fun lt!1001222 () Unit!46674)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!897 (List!32659 C!16604 List!32659 List!32659) Unit!46674)

(assert (=> b!2800836 (= lt!1001222 (lemmaMoveElementToOtherListKeepsConcatEq!897 testedP!183 lt!1001236 lt!1001232 lt!1001220))))

(declare-fun tail!4433 (List!32659) List!32659)

(assert (=> b!2800836 (= lt!1001232 (tail!4433 testedSuffix!143))))

(declare-fun lt!1001231 () List!32659)

(declare-fun head!6206 (List!32659) C!16604)

(assert (=> b!2800836 (isPrefix!2639 (++!8027 testedP!183 (Cons!32559 (head!6206 lt!1001231) Nil!32559)) lt!1001220)))

(declare-fun lt!1001217 () Unit!46674)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!489 (List!32659 List!32659) Unit!46674)

(assert (=> b!2800836 (= lt!1001217 (lemmaAddHeadSuffixToPrefixStillPrefix!489 testedP!183 lt!1001220))))

(declare-fun b!2800837 () Bool)

(declare-fun tp!892478 () Bool)

(assert (=> b!2800837 (= e!1769783 (and tp!892478 mapRes!18348))))

(declare-fun condMapEmpty!18348 () Bool)

(declare-fun mapDefault!18348 () List!32662)

(assert (=> b!2800837 (= condMapEmpty!18348 (= (arr!6395 (_values!4319 (v!34163 (underlying!8279 (v!34164 (underlying!8280 (cache!4087 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32662)) mapDefault!18348)))))

(declare-fun b!2800838 () Bool)

(declare-fun tp!892480 () Bool)

(assert (=> b!2800838 (= e!1769764 (and tp!892480 mapRes!18347))))

(declare-fun condMapEmpty!18347 () Bool)

(declare-fun mapDefault!18347 () List!32661)

(assert (=> b!2800838 (= condMapEmpty!18347 (= (arr!6393 (_values!4318 (v!34161 (underlying!8277 (v!34162 (underlying!8278 (cache!4086 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32661)) mapDefault!18347)))))

(declare-fun b!2800839 () Bool)

(assert (=> b!2800839 (= e!1769782 e!1769769)))

(declare-fun res!1167209 () Bool)

(assert (=> b!2800839 (=> res!1167209 e!1769769)))

(declare-fun lostCauseZipper!510 ((InoxSet Context!4882)) Bool)

(assert (=> b!2800839 (= res!1167209 (lostCauseZipper!510 z!3684))))

(assert (=> b!2800839 (and (= testedSuffix!143 lt!1001231) (= lt!1001231 testedSuffix!143))))

(declare-fun lt!1001230 () Unit!46674)

(declare-fun lemmaSamePrefixThenSameSuffix!1213 (List!32659 List!32659 List!32659 List!32659 List!32659) Unit!46674)

(assert (=> b!2800839 (= lt!1001230 (lemmaSamePrefixThenSameSuffix!1213 testedP!183 testedSuffix!143 testedP!183 lt!1001231 lt!1001220))))

(declare-fun getSuffix!1315 (List!32659 List!32659) List!32659)

(assert (=> b!2800839 (= lt!1001231 (getSuffix!1315 lt!1001220 testedP!183))))

(declare-fun b!2800840 () Bool)

(assert (=> b!2800840 (= e!1769766 e!1769770)))

(declare-fun b!2800841 () Bool)

(declare-fun tp!892472 () Bool)

(assert (=> b!2800841 (= e!1769774 tp!892472)))

(declare-fun b!2800842 () Bool)

(assert (=> b!2800842 (= e!1769765 true)))

(declare-datatypes ((tuple3!5198 0))(
  ( (tuple3!5199 (_1!19665 (InoxSet Context!4882)) (_2!19665 CacheUp!2646) (_3!3069 CacheDown!2772)) )
))
(declare-fun lt!1001238 () tuple3!5198)

(declare-fun derivationStepZipperMem!116 ((InoxSet Context!4882) C!16604 CacheUp!2646 CacheDown!2772) tuple3!5198)

(assert (=> b!2800842 (= lt!1001238 (derivationStepZipperMem!116 z!3684 lt!1001236 cacheUp!890 cacheDown!1009))))

(declare-fun mapIsEmpty!18347 () Bool)

(assert (=> mapIsEmpty!18347 mapRes!18347))

(declare-fun b!2800843 () Bool)

(declare-fun res!1167215 () Bool)

(declare-fun e!1769779 () Bool)

(assert (=> b!2800843 (=> res!1167215 e!1769779)))

(declare-datatypes ((tuple2!33192 0))(
  ( (tuple2!33193 (_1!19666 BalanceConc!19776) (_2!19666 BalanceConc!19776)) )
))
(declare-fun lt!1001237 () tuple2!33192)

(assert (=> b!2800843 (= res!1167215 (not (= (size!25419 (_1!19666 lt!1001237)) testedPSize!143)))))

(declare-fun b!2800844 () Bool)

(declare-fun tp!892482 () Bool)

(declare-fun inv!44223 (Conc!10081) Bool)

(assert (=> b!2800844 (= e!1769777 (and (inv!44223 (c!454117 totalInput!758)) tp!892482))))

(declare-fun mapIsEmpty!18348 () Bool)

(assert (=> mapIsEmpty!18348 mapRes!18348))

(assert (=> b!2800845 (= e!1769755 (and e!1769780 tp!892476))))

(declare-fun b!2800846 () Bool)

(declare-fun e!1769758 () Bool)

(assert (=> b!2800846 (= e!1769758 e!1769775)))

(declare-fun b!2800847 () Bool)

(assert (=> b!2800847 (= e!1769779 e!1769772)))

(declare-fun res!1167216 () Bool)

(assert (=> b!2800847 (=> res!1167216 e!1769772)))

(assert (=> b!2800847 (= res!1167216 (not (= lt!1001236 (head!6206 testedSuffix!143))))))

(declare-fun apply!7613 (BalanceConc!19776 Int) C!16604)

(assert (=> b!2800847 (= lt!1001236 (apply!7613 totalInput!758 testedPSize!143))))

(declare-fun drop!1753 (List!32659 Int) List!32659)

(declare-fun apply!7614 (List!32659 Int) C!16604)

(assert (=> b!2800847 (= (head!6206 (drop!1753 lt!1001220 testedPSize!143)) (apply!7614 lt!1001220 testedPSize!143))))

(declare-fun lt!1001226 () Unit!46674)

(declare-fun lemmaDropApply!957 (List!32659 Int) Unit!46674)

(assert (=> b!2800847 (= lt!1001226 (lemmaDropApply!957 lt!1001220 testedPSize!143))))

(declare-fun lt!1001223 () List!32659)

(declare-fun lt!1001221 () List!32659)

(assert (=> b!2800847 (not (or (not (= lt!1001223 testedP!183)) (not (= lt!1001221 testedSuffix!143))))))

(declare-fun lt!1001234 () Unit!46674)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!387 (List!32659 List!32659 List!32659 List!32659) Unit!46674)

(assert (=> b!2800847 (= lt!1001234 (lemmaConcatSameAndSameSizesThenSameLists!387 lt!1001223 lt!1001221 testedP!183 testedSuffix!143))))

(declare-fun b!2800848 () Bool)

(assert (=> b!2800848 (= e!1769768 e!1769758)))

(declare-fun b!2800849 () Bool)

(assert (=> b!2800849 (= e!1769769 e!1769779)))

(declare-fun res!1167218 () Bool)

(assert (=> b!2800849 (=> res!1167218 e!1769779)))

(assert (=> b!2800849 (= res!1167218 (not (= (++!8027 lt!1001223 lt!1001221) lt!1001220)))))

(assert (=> b!2800849 (= lt!1001221 (list!12219 (_2!19666 lt!1001237)))))

(assert (=> b!2800849 (= lt!1001223 (list!12219 (_1!19666 lt!1001237)))))

(declare-fun splitAt!199 (BalanceConc!19776 Int) tuple2!33192)

(assert (=> b!2800849 (= lt!1001237 (splitAt!199 totalInput!758 testedPSize!143))))

(assert (= (and start!270838 res!1167219) b!2800830))

(assert (= (and b!2800830 res!1167214) b!2800821))

(assert (= (and b!2800821 res!1167221) b!2800832))

(assert (= (and b!2800832 res!1167210) b!2800826))

(assert (= (and b!2800826 res!1167213) b!2800825))

(assert (= (and b!2800825 (not res!1167217)) b!2800839))

(assert (= (and b!2800839 (not res!1167209)) b!2800822))

(assert (= (and b!2800822 (not res!1167211)) b!2800849))

(assert (= (and b!2800849 (not res!1167218)) b!2800843))

(assert (= (and b!2800843 (not res!1167215)) b!2800847))

(assert (= (and b!2800847 (not res!1167216)) b!2800818))

(assert (= (and b!2800818 c!454115) b!2800819))

(assert (= (and b!2800818 (not c!454115)) b!2800817))

(assert (= (and b!2800818 (not res!1167220)) b!2800836))

(assert (= (and b!2800836 (not res!1167212)) b!2800842))

(assert (= start!270838 b!2800844))

(assert (= (and start!270838 condSetEmpty!24517) setIsEmpty!24517))

(assert (= (and start!270838 (not condSetEmpty!24517)) setNonEmpty!24517))

(assert (= setNonEmpty!24517 b!2800841))

(assert (= (and start!270838 ((_ is Cons!32559) testedP!183)) b!2800828))

(assert (= (and start!270838 ((_ is Cons!32559) testedSuffix!143)) b!2800824))

(assert (= (and b!2800837 condMapEmpty!18348) mapIsEmpty!18348))

(assert (= (and b!2800837 (not condMapEmpty!18348)) mapNonEmpty!18348))

(assert (= b!2800831 b!2800837))

(assert (= b!2800829 b!2800831))

(assert (= b!2800820 b!2800829))

(assert (= (and b!2800834 ((_ is LongMap!4038) (v!34164 (underlying!8280 (cache!4087 cacheDown!1009))))) b!2800820))

(assert (= b!2800845 b!2800834))

(assert (= (and b!2800827 ((_ is HashMap!3944) (cache!4087 cacheDown!1009))) b!2800845))

(assert (= start!270838 b!2800827))

(assert (= (and b!2800838 condMapEmpty!18347) mapIsEmpty!18347))

(assert (= (and b!2800838 (not condMapEmpty!18347)) mapNonEmpty!18347))

(assert (= b!2800833 b!2800838))

(assert (= b!2800846 b!2800833))

(assert (= b!2800848 b!2800846))

(assert (= (and b!2800835 ((_ is LongMap!4037) (v!34162 (underlying!8278 (cache!4086 cacheUp!890))))) b!2800848))

(assert (= b!2800823 b!2800835))

(assert (= (and b!2800840 ((_ is HashMap!3943) (cache!4086 cacheUp!890))) b!2800823))

(assert (= start!270838 b!2800840))

(declare-fun m!3230367 () Bool)

(assert (=> b!2800842 m!3230367))

(declare-fun m!3230369 () Bool)

(assert (=> b!2800821 m!3230369))

(declare-fun m!3230371 () Bool)

(assert (=> mapNonEmpty!18348 m!3230371))

(declare-fun m!3230373 () Bool)

(assert (=> setNonEmpty!24517 m!3230373))

(declare-fun m!3230375 () Bool)

(assert (=> b!2800819 m!3230375))

(declare-fun m!3230377 () Bool)

(assert (=> b!2800819 m!3230377))

(declare-fun m!3230379 () Bool)

(assert (=> b!2800819 m!3230379))

(declare-fun m!3230381 () Bool)

(assert (=> b!2800832 m!3230381))

(declare-fun m!3230383 () Bool)

(assert (=> b!2800836 m!3230383))

(declare-fun m!3230385 () Bool)

(assert (=> b!2800836 m!3230385))

(declare-fun m!3230387 () Bool)

(assert (=> b!2800836 m!3230387))

(declare-fun m!3230389 () Bool)

(assert (=> b!2800836 m!3230389))

(declare-fun m!3230391 () Bool)

(assert (=> b!2800836 m!3230391))

(assert (=> b!2800836 m!3230385))

(declare-fun m!3230393 () Bool)

(assert (=> b!2800836 m!3230393))

(assert (=> b!2800836 m!3230387))

(declare-fun m!3230395 () Bool)

(assert (=> b!2800836 m!3230395))

(declare-fun m!3230397 () Bool)

(assert (=> b!2800836 m!3230397))

(declare-fun m!3230399 () Bool)

(assert (=> b!2800836 m!3230399))

(declare-fun m!3230401 () Bool)

(assert (=> b!2800847 m!3230401))

(declare-fun m!3230403 () Bool)

(assert (=> b!2800847 m!3230403))

(declare-fun m!3230405 () Bool)

(assert (=> b!2800847 m!3230405))

(declare-fun m!3230407 () Bool)

(assert (=> b!2800847 m!3230407))

(assert (=> b!2800847 m!3230405))

(declare-fun m!3230409 () Bool)

(assert (=> b!2800847 m!3230409))

(declare-fun m!3230411 () Bool)

(assert (=> b!2800847 m!3230411))

(declare-fun m!3230413 () Bool)

(assert (=> b!2800847 m!3230413))

(declare-fun m!3230415 () Bool)

(assert (=> b!2800843 m!3230415))

(declare-fun m!3230417 () Bool)

(assert (=> b!2800849 m!3230417))

(declare-fun m!3230419 () Bool)

(assert (=> b!2800849 m!3230419))

(declare-fun m!3230421 () Bool)

(assert (=> b!2800849 m!3230421))

(declare-fun m!3230423 () Bool)

(assert (=> b!2800849 m!3230423))

(declare-fun m!3230425 () Bool)

(assert (=> b!2800831 m!3230425))

(declare-fun m!3230427 () Bool)

(assert (=> b!2800831 m!3230427))

(declare-fun m!3230429 () Bool)

(assert (=> b!2800839 m!3230429))

(declare-fun m!3230431 () Bool)

(assert (=> b!2800839 m!3230431))

(declare-fun m!3230433 () Bool)

(assert (=> b!2800839 m!3230433))

(declare-fun m!3230435 () Bool)

(assert (=> b!2800818 m!3230435))

(declare-fun m!3230437 () Bool)

(assert (=> b!2800818 m!3230437))

(declare-fun m!3230439 () Bool)

(assert (=> b!2800833 m!3230439))

(declare-fun m!3230441 () Bool)

(assert (=> b!2800833 m!3230441))

(declare-fun m!3230443 () Bool)

(assert (=> b!2800825 m!3230443))

(declare-fun m!3230445 () Bool)

(assert (=> b!2800825 m!3230445))

(declare-fun m!3230447 () Bool)

(assert (=> b!2800825 m!3230447))

(declare-fun m!3230449 () Bool)

(assert (=> mapNonEmpty!18347 m!3230449))

(declare-fun m!3230451 () Bool)

(assert (=> b!2800830 m!3230451))

(declare-fun m!3230453 () Bool)

(assert (=> b!2800826 m!3230453))

(declare-fun m!3230455 () Bool)

(assert (=> b!2800844 m!3230455))

(declare-fun m!3230457 () Bool)

(assert (=> start!270838 m!3230457))

(declare-fun m!3230459 () Bool)

(assert (=> start!270838 m!3230459))

(declare-fun m!3230461 () Bool)

(assert (=> start!270838 m!3230461))

(declare-fun m!3230463 () Bool)

(assert (=> start!270838 m!3230463))

(declare-fun m!3230465 () Bool)

(assert (=> start!270838 m!3230465))

(check-sat (not b!2800819) b_and!204159 (not b!2800838) b_and!204165 (not b!2800821) (not b!2800826) (not start!270838) (not b!2800849) tp_is_empty!14259 (not b!2800847) (not b!2800825) (not b!2800841) (not b_next!80127) b_and!204163 (not b!2800844) (not b!2800828) (not b_next!80131) (not b!2800836) (not b!2800833) (not b!2800839) (not b_next!80129) (not mapNonEmpty!18348) (not mapNonEmpty!18347) (not b!2800831) (not b!2800842) (not b_next!80125) b_and!204161 (not b!2800818) (not b!2800837) (not b!2800832) (not setNonEmpty!24517) (not b!2800843) (not b!2800830) (not b!2800824))
(check-sat (not b_next!80131) b_and!204159 (not b_next!80129) b_and!204165 (not b_next!80127) b_and!204163 (not b_next!80125) b_and!204161)
