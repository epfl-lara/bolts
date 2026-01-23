; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270762 () Bool)

(assert start!270762)

(declare-fun b!2800175 () Bool)

(declare-fun b_free!79389 () Bool)

(declare-fun b_next!80093 () Bool)

(assert (=> b!2800175 (= b_free!79389 (not b_next!80093))))

(declare-fun tp!892116 () Bool)

(declare-fun b_and!204127 () Bool)

(assert (=> b!2800175 (= tp!892116 b_and!204127)))

(declare-fun b!2800179 () Bool)

(declare-fun b_free!79391 () Bool)

(declare-fun b_next!80095 () Bool)

(assert (=> b!2800179 (= b_free!79391 (not b_next!80095))))

(declare-fun tp!892108 () Bool)

(declare-fun b_and!204129 () Bool)

(assert (=> b!2800179 (= tp!892108 b_and!204129)))

(declare-fun b!2800153 () Bool)

(declare-fun b_free!79393 () Bool)

(declare-fun b_next!80097 () Bool)

(assert (=> b!2800153 (= b_free!79393 (not b_next!80097))))

(declare-fun tp!892113 () Bool)

(declare-fun b_and!204131 () Bool)

(assert (=> b!2800153 (= tp!892113 b_and!204131)))

(declare-fun b!2800166 () Bool)

(declare-fun b_free!79395 () Bool)

(declare-fun b_next!80099 () Bool)

(assert (=> b!2800166 (= b_free!79395 (not b_next!80099))))

(declare-fun tp!892117 () Bool)

(declare-fun b_and!204133 () Bool)

(assert (=> b!2800166 (= tp!892117 b_and!204133)))

(declare-fun mapNonEmpty!18317 () Bool)

(declare-fun mapRes!18318 () Bool)

(declare-fun tp!892100 () Bool)

(declare-fun tp!892115 () Bool)

(assert (=> mapNonEmpty!18317 (= mapRes!18318 (and tp!892100 tp!892115))))

(declare-datatypes ((C!16596 0))(
  ( (C!16597 (val!10232 Int)) )
))
(declare-datatypes ((Regex!8219 0))(
  ( (ElementMatch!8219 (c!454050 C!16596)) (Concat!13307 (regOne!16950 Regex!8219) (regTwo!16950 Regex!8219)) (EmptyExpr!8219) (Star!8219 (reg!8548 Regex!8219)) (EmptyLang!8219) (Union!8219 (regOne!16951 Regex!8219) (regTwo!16951 Regex!8219)) )
))
(declare-datatypes ((List!32642 0))(
  ( (Nil!32542) (Cons!32542 (h!37962 Regex!8219) (t!228807 List!32642)) )
))
(declare-datatypes ((Context!4874 0))(
  ( (Context!4875 (exprs!2937 List!32642)) )
))
(declare-datatypes ((tuple3!5182 0))(
  ( (tuple3!5183 (_1!19638 Regex!8219) (_2!19638 Context!4874) (_3!3061 C!16596)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33154 0))(
  ( (tuple2!33155 (_1!19639 tuple3!5182) (_2!19639 (InoxSet Context!4874))) )
))
(declare-datatypes ((List!32643 0))(
  ( (Nil!32543) (Cons!32543 (h!37963 tuple2!33154) (t!228808 List!32643)) )
))
(declare-fun mapValue!18318 () List!32643)

(declare-fun mapRest!18317 () (Array (_ BitVec 32) List!32643))

(declare-fun mapKey!18318 () (_ BitVec 32))

(declare-datatypes ((array!14322 0))(
  ( (array!14323 (arr!6381 (Array (_ BitVec 32) (_ BitVec 64))) (size!25398 (_ BitVec 32))) )
))
(declare-datatypes ((array!14324 0))(
  ( (array!14325 (arr!6382 (Array (_ BitVec 32) List!32643)) (size!25399 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8058 0))(
  ( (LongMapFixedSize!8059 (defaultEntry!4414 Int) (mask!9875 (_ BitVec 32)) (extraKeys!4278 (_ BitVec 32)) (zeroValue!4288 List!32643) (minValue!4288 List!32643) (_size!8101 (_ BitVec 32)) (_keys!4329 array!14322) (_values!4310 array!14324) (_vacant!4090 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15925 0))(
  ( (Cell!15926 (v!34144 LongMapFixedSize!8058)) )
))
(declare-datatypes ((MutLongMap!4029 0))(
  ( (LongMap!4029 (underlying!8261 Cell!15925)) (MutLongMapExt!4028 (__x!21737 Int)) )
))
(declare-datatypes ((Cell!15927 0))(
  ( (Cell!15928 (v!34145 MutLongMap!4029)) )
))
(declare-datatypes ((Hashable!3945 0))(
  ( (HashableExt!3944 (__x!21738 Int)) )
))
(declare-datatypes ((MutableMap!3935 0))(
  ( (MutableMapExt!3934 (__x!21739 Int)) (HashMap!3935 (underlying!8262 Cell!15927) (hashF!5977 Hashable!3945) (_size!8102 (_ BitVec 32)) (defaultValue!4106 Int)) )
))
(declare-datatypes ((CacheDown!2764 0))(
  ( (CacheDown!2765 (cache!4078 MutableMap!3935)) )
))
(declare-fun cacheDown!1009 () CacheDown!2764)

(assert (=> mapNonEmpty!18317 (= (arr!6382 (_values!4310 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009))))))) (store mapRest!18317 mapKey!18318 mapValue!18318))))

(declare-fun res!1166965 () Bool)

(declare-fun e!1769232 () Bool)

(assert (=> start!270762 (=> (not res!1166965) (not e!1769232))))

(declare-datatypes ((List!32644 0))(
  ( (Nil!32544) (Cons!32544 (h!37964 C!16596) (t!228809 List!32644)) )
))
(declare-fun lt!1000853 () List!32644)

(declare-fun lt!1000835 () List!32644)

(assert (=> start!270762 (= res!1166965 (= lt!1000853 lt!1000835))))

(declare-datatypes ((IArray!20159 0))(
  ( (IArray!20160 (innerList!10137 List!32644)) )
))
(declare-datatypes ((Conc!10077 0))(
  ( (Node!10077 (left!24586 Conc!10077) (right!24916 Conc!10077) (csize!20384 Int) (cheight!10288 Int)) (Leaf!15355 (xs!13189 IArray!20159) (csize!20385 Int)) (Empty!10077) )
))
(declare-datatypes ((BalanceConc!19768 0))(
  ( (BalanceConc!19769 (c!454051 Conc!10077)) )
))
(declare-fun totalInput!758 () BalanceConc!19768)

(declare-fun list!12215 (BalanceConc!19768) List!32644)

(assert (=> start!270762 (= lt!1000835 (list!12215 totalInput!758))))

(declare-fun testedP!183 () List!32644)

(declare-fun testedSuffix!143 () List!32644)

(declare-fun ++!8023 (List!32644 List!32644) List!32644)

(assert (=> start!270762 (= lt!1000853 (++!8023 testedP!183 testedSuffix!143))))

(assert (=> start!270762 e!1769232))

(declare-fun e!1769216 () Bool)

(declare-fun inv!44196 (BalanceConc!19768) Bool)

(assert (=> start!270762 (and (inv!44196 totalInput!758) e!1769216)))

(declare-fun condSetEmpty!24478 () Bool)

(declare-fun z!3684 () (InoxSet Context!4874))

(assert (=> start!270762 (= condSetEmpty!24478 (= z!3684 ((as const (Array Context!4874 Bool)) false)))))

(declare-fun setRes!24478 () Bool)

(assert (=> start!270762 setRes!24478))

(assert (=> start!270762 true))

(declare-fun e!1769211 () Bool)

(assert (=> start!270762 e!1769211))

(declare-fun e!1769237 () Bool)

(assert (=> start!270762 e!1769237))

(declare-fun e!1769219 () Bool)

(declare-fun inv!44197 (CacheDown!2764) Bool)

(assert (=> start!270762 (and (inv!44197 cacheDown!1009) e!1769219)))

(declare-datatypes ((Hashable!3946 0))(
  ( (HashableExt!3945 (__x!21740 Int)) )
))
(declare-datatypes ((tuple2!33156 0))(
  ( (tuple2!33157 (_1!19640 Context!4874) (_2!19640 C!16596)) )
))
(declare-datatypes ((tuple2!33158 0))(
  ( (tuple2!33159 (_1!19641 tuple2!33156) (_2!19641 (InoxSet Context!4874))) )
))
(declare-datatypes ((List!32645 0))(
  ( (Nil!32545) (Cons!32545 (h!37965 tuple2!33158) (t!228810 List!32645)) )
))
(declare-datatypes ((array!14326 0))(
  ( (array!14327 (arr!6383 (Array (_ BitVec 32) List!32645)) (size!25400 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8060 0))(
  ( (LongMapFixedSize!8061 (defaultEntry!4415 Int) (mask!9876 (_ BitVec 32)) (extraKeys!4279 (_ BitVec 32)) (zeroValue!4289 List!32645) (minValue!4289 List!32645) (_size!8103 (_ BitVec 32)) (_keys!4330 array!14322) (_values!4311 array!14326) (_vacant!4091 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15929 0))(
  ( (Cell!15930 (v!34146 LongMapFixedSize!8060)) )
))
(declare-datatypes ((MutLongMap!4030 0))(
  ( (LongMap!4030 (underlying!8263 Cell!15929)) (MutLongMapExt!4029 (__x!21741 Int)) )
))
(declare-datatypes ((Cell!15931 0))(
  ( (Cell!15932 (v!34147 MutLongMap!4030)) )
))
(declare-datatypes ((MutableMap!3936 0))(
  ( (MutableMapExt!3935 (__x!21742 Int)) (HashMap!3936 (underlying!8264 Cell!15931) (hashF!5978 Hashable!3946) (_size!8104 (_ BitVec 32)) (defaultValue!4107 Int)) )
))
(declare-datatypes ((CacheUp!2638 0))(
  ( (CacheUp!2639 (cache!4079 MutableMap!3936)) )
))
(declare-fun cacheUp!890 () CacheUp!2638)

(declare-fun e!1769222 () Bool)

(declare-fun inv!44198 (CacheUp!2638) Bool)

(assert (=> start!270762 (and (inv!44198 cacheUp!890) e!1769222)))

(declare-fun b!2800151 () Bool)

(declare-fun e!1769217 () Bool)

(declare-fun e!1769236 () Bool)

(assert (=> b!2800151 (= e!1769217 e!1769236)))

(declare-fun res!1166967 () Bool)

(assert (=> b!2800151 (=> res!1166967 e!1769236)))

(declare-fun lt!1000855 () List!32644)

(declare-fun lt!1000854 () List!32644)

(assert (=> b!2800151 (= res!1166967 (not (= (++!8023 lt!1000855 lt!1000854) lt!1000835)))))

(declare-datatypes ((tuple2!33160 0))(
  ( (tuple2!33161 (_1!19642 BalanceConc!19768) (_2!19642 BalanceConc!19768)) )
))
(declare-fun lt!1000850 () tuple2!33160)

(assert (=> b!2800151 (= lt!1000854 (list!12215 (_2!19642 lt!1000850)))))

(assert (=> b!2800151 (= lt!1000855 (list!12215 (_1!19642 lt!1000850)))))

(declare-fun testedPSize!143 () Int)

(declare-fun splitAt!196 (BalanceConc!19768 Int) tuple2!33160)

(assert (=> b!2800151 (= lt!1000850 (splitAt!196 totalInput!758 testedPSize!143))))

(declare-fun b!2800152 () Bool)

(declare-fun e!1769215 () Bool)

(assert (=> b!2800152 (= e!1769222 e!1769215)))

(declare-fun e!1769235 () Bool)

(declare-fun e!1769213 () Bool)

(assert (=> b!2800153 (= e!1769235 (and e!1769213 tp!892113))))

(declare-fun b!2800154 () Bool)

(declare-fun tp!892114 () Bool)

(declare-fun inv!44199 (Conc!10077) Bool)

(assert (=> b!2800154 (= e!1769216 (and (inv!44199 (c!454051 totalInput!758)) tp!892114))))

(declare-fun b!2800155 () Bool)

(declare-fun e!1769223 () Bool)

(assert (=> b!2800155 (= e!1769232 e!1769223)))

(declare-fun res!1166963 () Bool)

(assert (=> b!2800155 (=> (not res!1166963) (not e!1769223))))

(declare-fun lt!1000849 () Int)

(assert (=> b!2800155 (= res!1166963 (= testedPSize!143 lt!1000849))))

(declare-fun size!25401 (List!32644) Int)

(assert (=> b!2800155 (= lt!1000849 (size!25401 testedP!183))))

(declare-fun b!2800156 () Bool)

(declare-fun e!1769209 () Bool)

(declare-fun lt!1000844 () MutLongMap!4029)

(get-info :version)

(assert (=> b!2800156 (= e!1769213 (and e!1769209 ((_ is LongMap!4029) lt!1000844)))))

(assert (=> b!2800156 (= lt!1000844 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009))))))

(declare-fun setIsEmpty!24478 () Bool)

(assert (=> setIsEmpty!24478 setRes!24478))

(declare-fun b!2800157 () Bool)

(declare-fun res!1166975 () Bool)

(declare-fun e!1769234 () Bool)

(assert (=> b!2800157 (=> (not res!1166975) (not e!1769234))))

(declare-fun valid!3154 (CacheDown!2764) Bool)

(assert (=> b!2800157 (= res!1166975 (valid!3154 cacheDown!1009))))

(declare-fun b!2800158 () Bool)

(declare-fun e!1769229 () Bool)

(declare-fun e!1769226 () Bool)

(assert (=> b!2800158 (= e!1769229 e!1769226)))

(declare-fun res!1166971 () Bool)

(assert (=> b!2800158 (=> res!1166971 e!1769226)))

(declare-fun lt!1000836 () List!32644)

(assert (=> b!2800158 (= res!1166971 (not (= (+ 1 testedPSize!143) (size!25401 lt!1000836))))))

(declare-fun lt!1000837 () C!16596)

(declare-datatypes ((tuple3!5184 0))(
  ( (tuple3!5185 (_1!19643 (InoxSet Context!4874)) (_2!19643 CacheUp!2638) (_3!3062 CacheDown!2764)) )
))
(declare-fun lt!1000841 () tuple3!5184)

(declare-fun derivationStepZipperMem!114 ((InoxSet Context!4874) C!16596 CacheUp!2638 CacheDown!2764) tuple3!5184)

(assert (=> b!2800158 (= lt!1000841 (derivationStepZipperMem!114 z!3684 lt!1000837 cacheUp!890 cacheDown!1009))))

(declare-fun b!2800159 () Bool)

(declare-fun e!1769233 () Bool)

(declare-fun tp!892112 () Bool)

(assert (=> b!2800159 (= e!1769233 tp!892112)))

(declare-fun b!2800160 () Bool)

(declare-fun e!1769238 () Bool)

(declare-fun e!1769227 () Bool)

(declare-fun lt!1000840 () MutLongMap!4030)

(assert (=> b!2800160 (= e!1769238 (and e!1769227 ((_ is LongMap!4030) lt!1000840)))))

(assert (=> b!2800160 (= lt!1000840 (v!34147 (underlying!8264 (cache!4079 cacheUp!890))))))

(declare-fun b!2800161 () Bool)

(declare-fun e!1769220 () Bool)

(assert (=> b!2800161 (= e!1769220 e!1769217)))

(declare-fun res!1166976 () Bool)

(assert (=> b!2800161 (=> res!1166976 e!1769217)))

(declare-fun lostCauseZipper!507 ((InoxSet Context!4874)) Bool)

(assert (=> b!2800161 (= res!1166976 (lostCauseZipper!507 z!3684))))

(declare-fun lt!1000847 () List!32644)

(assert (=> b!2800161 (and (= testedSuffix!143 lt!1000847) (= lt!1000847 testedSuffix!143))))

(declare-datatypes ((Unit!46659 0))(
  ( (Unit!46660) )
))
(declare-fun lt!1000848 () Unit!46659)

(declare-fun lemmaSamePrefixThenSameSuffix!1210 (List!32644 List!32644 List!32644 List!32644 List!32644) Unit!46659)

(assert (=> b!2800161 (= lt!1000848 (lemmaSamePrefixThenSameSuffix!1210 testedP!183 testedSuffix!143 testedP!183 lt!1000847 lt!1000835))))

(declare-fun getSuffix!1312 (List!32644 List!32644) List!32644)

(assert (=> b!2800161 (= lt!1000847 (getSuffix!1312 lt!1000835 testedP!183))))

(declare-fun b!2800162 () Bool)

(declare-fun e!1769228 () Bool)

(declare-fun e!1769230 () Bool)

(assert (=> b!2800162 (= e!1769228 e!1769230)))

(declare-fun tp!892111 () Bool)

(declare-fun setNonEmpty!24478 () Bool)

(declare-fun setElem!24478 () Context!4874)

(declare-fun inv!44200 (Context!4874) Bool)

(assert (=> setNonEmpty!24478 (= setRes!24478 (and tp!892111 (inv!44200 setElem!24478) e!1769233))))

(declare-fun setRest!24478 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24478 (= z!3684 ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24478 true) setRest!24478))))

(declare-fun mapNonEmpty!18318 () Bool)

(declare-fun mapRes!18317 () Bool)

(declare-fun tp!892099 () Bool)

(declare-fun tp!892105 () Bool)

(assert (=> mapNonEmpty!18318 (= mapRes!18317 (and tp!892099 tp!892105))))

(declare-fun mapKey!18317 () (_ BitVec 32))

(declare-fun mapRest!18318 () (Array (_ BitVec 32) List!32645))

(declare-fun mapValue!18317 () List!32645)

(assert (=> mapNonEmpty!18318 (= (arr!6383 (_values!4311 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890))))))) (store mapRest!18318 mapKey!18317 mapValue!18317))))

(declare-fun b!2800163 () Bool)

(declare-fun tp_is_empty!14251 () Bool)

(declare-fun tp!892110 () Bool)

(assert (=> b!2800163 (= e!1769211 (and tp_is_empty!14251 tp!892110))))

(declare-fun b!2800164 () Bool)

(declare-fun res!1166970 () Bool)

(assert (=> b!2800164 (=> (not res!1166970) (not e!1769234))))

(declare-fun valid!3155 (CacheUp!2638) Bool)

(assert (=> b!2800164 (= res!1166970 (valid!3155 cacheUp!890))))

(declare-fun b!2800165 () Bool)

(declare-fun e!1769210 () Bool)

(assert (=> b!2800165 (= e!1769227 e!1769210)))

(declare-fun mapIsEmpty!18317 () Bool)

(assert (=> mapIsEmpty!18317 mapRes!18318))

(declare-fun tp!892106 () Bool)

(declare-fun e!1769214 () Bool)

(declare-fun e!1769208 () Bool)

(declare-fun tp!892101 () Bool)

(declare-fun array_inv!4567 (array!14322) Bool)

(declare-fun array_inv!4568 (array!14326) Bool)

(assert (=> b!2800166 (= e!1769214 (and tp!892117 tp!892106 tp!892101 (array_inv!4567 (_keys!4330 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890))))))) (array_inv!4568 (_values!4311 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890))))))) e!1769208))))

(declare-fun b!2800167 () Bool)

(declare-fun e!1769218 () Bool)

(declare-fun e!1769225 () Bool)

(assert (=> b!2800167 (= e!1769218 e!1769225)))

(declare-fun res!1166972 () Bool)

(assert (=> b!2800167 (=> res!1166972 e!1769225)))

(declare-fun lt!1000845 () Int)

(assert (=> b!2800167 (= res!1166972 (>= lt!1000849 lt!1000845))))

(declare-fun lt!1000851 () Unit!46659)

(declare-fun e!1769231 () Unit!46659)

(assert (=> b!2800167 (= lt!1000851 e!1769231)))

(declare-fun c!454049 () Bool)

(assert (=> b!2800167 (= c!454049 (= lt!1000849 lt!1000845))))

(assert (=> b!2800167 (<= lt!1000849 (size!25401 lt!1000835))))

(declare-fun lt!1000842 () Unit!46659)

(declare-fun lemmaIsPrefixThenSmallerEqSize!295 (List!32644 List!32644) Unit!46659)

(assert (=> b!2800167 (= lt!1000842 (lemmaIsPrefixThenSmallerEqSize!295 testedP!183 lt!1000835))))

(declare-fun b!2800168 () Bool)

(assert (=> b!2800168 (= e!1769219 e!1769235)))

(declare-fun b!2800169 () Bool)

(assert (=> b!2800169 (= e!1769225 e!1769229)))

(declare-fun res!1166966 () Bool)

(assert (=> b!2800169 (=> res!1166966 e!1769229)))

(declare-fun nullableZipper!657 ((InoxSet Context!4874)) Bool)

(assert (=> b!2800169 (= res!1166966 (not (nullableZipper!657 z!3684)))))

(declare-fun lt!1000843 () List!32644)

(assert (=> b!2800169 (= (++!8023 lt!1000836 lt!1000843) lt!1000835)))

(assert (=> b!2800169 (= lt!1000836 (++!8023 testedP!183 (Cons!32544 lt!1000837 Nil!32544)))))

(declare-fun lt!1000856 () Unit!46659)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!893 (List!32644 C!16596 List!32644 List!32644) Unit!46659)

(assert (=> b!2800169 (= lt!1000856 (lemmaMoveElementToOtherListKeepsConcatEq!893 testedP!183 lt!1000837 lt!1000843 lt!1000835))))

(declare-fun tail!4429 (List!32644) List!32644)

(assert (=> b!2800169 (= lt!1000843 (tail!4429 testedSuffix!143))))

(declare-fun isPrefix!2635 (List!32644 List!32644) Bool)

(declare-fun head!6202 (List!32644) C!16596)

(assert (=> b!2800169 (isPrefix!2635 (++!8023 testedP!183 (Cons!32544 (head!6202 lt!1000847) Nil!32544)) lt!1000835)))

(declare-fun lt!1000833 () Unit!46659)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!485 (List!32644 List!32644) Unit!46659)

(assert (=> b!2800169 (= lt!1000833 (lemmaAddHeadSuffixToPrefixStillPrefix!485 testedP!183 lt!1000835))))

(declare-fun b!2800170 () Bool)

(assert (=> b!2800170 (= e!1769234 (not e!1769220))))

(declare-fun res!1166968 () Bool)

(assert (=> b!2800170 (=> res!1166968 e!1769220)))

(assert (=> b!2800170 (= res!1166968 (not (isPrefix!2635 testedP!183 lt!1000835)))))

(assert (=> b!2800170 (isPrefix!2635 testedP!183 lt!1000853)))

(declare-fun lt!1000839 () Unit!46659)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1742 (List!32644 List!32644) Unit!46659)

(assert (=> b!2800170 (= lt!1000839 (lemmaConcatTwoListThenFirstIsPrefix!1742 testedP!183 testedSuffix!143))))

(declare-fun b!2800171 () Bool)

(declare-fun e!1769212 () Bool)

(declare-fun tp!892109 () Bool)

(assert (=> b!2800171 (= e!1769212 (and tp!892109 mapRes!18318))))

(declare-fun condMapEmpty!18317 () Bool)

(declare-fun mapDefault!18317 () List!32643)

(assert (=> b!2800171 (= condMapEmpty!18317 (= (arr!6382 (_values!4310 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32643)) mapDefault!18317)))))

(declare-fun b!2800172 () Bool)

(assert (=> b!2800172 (= e!1769210 e!1769214)))

(declare-fun b!2800173 () Bool)

(declare-fun tp!892102 () Bool)

(assert (=> b!2800173 (= e!1769237 (and tp_is_empty!14251 tp!892102))))

(declare-fun b!2800174 () Bool)

(declare-fun Unit!46661 () Unit!46659)

(assert (=> b!2800174 (= e!1769231 Unit!46661)))

(declare-fun lt!1000852 () Unit!46659)

(declare-fun lemmaIsPrefixRefl!1718 (List!32644 List!32644) Unit!46659)

(assert (=> b!2800174 (= lt!1000852 (lemmaIsPrefixRefl!1718 lt!1000835 lt!1000835))))

(assert (=> b!2800174 (isPrefix!2635 lt!1000835 lt!1000835)))

(declare-fun lt!1000838 () Unit!46659)

(declare-fun lemmaIsPrefixSameLengthThenSameList!494 (List!32644 List!32644 List!32644) Unit!46659)

(assert (=> b!2800174 (= lt!1000838 (lemmaIsPrefixSameLengthThenSameList!494 lt!1000835 testedP!183 lt!1000835))))

(assert (=> b!2800174 false))

(declare-fun tp!892103 () Bool)

(declare-fun tp!892107 () Bool)

(declare-fun array_inv!4569 (array!14324) Bool)

(assert (=> b!2800175 (= e!1769230 (and tp!892116 tp!892107 tp!892103 (array_inv!4567 (_keys!4329 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009))))))) (array_inv!4569 (_values!4310 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009))))))) e!1769212))))

(declare-fun mapIsEmpty!18318 () Bool)

(assert (=> mapIsEmpty!18318 mapRes!18317))

(declare-fun b!2800176 () Bool)

(declare-fun tp!892104 () Bool)

(assert (=> b!2800176 (= e!1769208 (and tp!892104 mapRes!18317))))

(declare-fun condMapEmpty!18318 () Bool)

(declare-fun mapDefault!18318 () List!32645)

(assert (=> b!2800176 (= condMapEmpty!18318 (= (arr!6383 (_values!4311 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32645)) mapDefault!18318)))))

(declare-fun b!2800177 () Bool)

(assert (=> b!2800177 (= e!1769236 e!1769218)))

(declare-fun res!1166973 () Bool)

(assert (=> b!2800177 (=> res!1166973 e!1769218)))

(assert (=> b!2800177 (= res!1166973 (not (= lt!1000837 (head!6202 testedSuffix!143))))))

(declare-fun apply!7604 (BalanceConc!19768 Int) C!16596)

(assert (=> b!2800177 (= lt!1000837 (apply!7604 totalInput!758 testedPSize!143))))

(declare-fun drop!1749 (List!32644 Int) List!32644)

(declare-fun apply!7605 (List!32644 Int) C!16596)

(assert (=> b!2800177 (= (head!6202 (drop!1749 lt!1000835 testedPSize!143)) (apply!7605 lt!1000835 testedPSize!143))))

(declare-fun lt!1000846 () Unit!46659)

(declare-fun lemmaDropApply!953 (List!32644 Int) Unit!46659)

(assert (=> b!2800177 (= lt!1000846 (lemmaDropApply!953 lt!1000835 testedPSize!143))))

(assert (=> b!2800177 (not (or (not (= lt!1000855 testedP!183)) (not (= lt!1000854 testedSuffix!143))))))

(declare-fun lt!1000834 () Unit!46659)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!383 (List!32644 List!32644 List!32644 List!32644) Unit!46659)

(assert (=> b!2800177 (= lt!1000834 (lemmaConcatSameAndSameSizesThenSameLists!383 lt!1000855 lt!1000854 testedP!183 testedSuffix!143))))

(declare-fun b!2800178 () Bool)

(assert (=> b!2800178 (= e!1769223 e!1769234)))

(declare-fun res!1166964 () Bool)

(assert (=> b!2800178 (=> (not res!1166964) (not e!1769234))))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2800178 (= res!1166964 (= totalInputSize!205 lt!1000845))))

(declare-fun size!25402 (BalanceConc!19768) Int)

(assert (=> b!2800178 (= lt!1000845 (size!25402 totalInput!758))))

(assert (=> b!2800179 (= e!1769215 (and e!1769238 tp!892108))))

(declare-fun b!2800180 () Bool)

(assert (=> b!2800180 (= e!1769209 e!1769228)))

(declare-fun b!2800181 () Bool)

(declare-fun res!1166969 () Bool)

(assert (=> b!2800181 (=> res!1166969 e!1769217)))

(assert (=> b!2800181 (= res!1166969 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2800182 () Bool)

(assert (=> b!2800182 (= e!1769226 (valid!3154 (_3!3062 lt!1000841)))))

(declare-fun b!2800183 () Bool)

(declare-fun res!1166974 () Bool)

(assert (=> b!2800183 (=> res!1166974 e!1769236)))

(assert (=> b!2800183 (= res!1166974 (not (= (size!25402 (_1!19642 lt!1000850)) testedPSize!143)))))

(declare-fun b!2800184 () Bool)

(declare-fun res!1166962 () Bool)

(assert (=> b!2800184 (=> res!1166962 e!1769226)))

(assert (=> b!2800184 (= res!1166962 (not (valid!3155 (_2!19643 lt!1000841))))))

(declare-fun b!2800185 () Bool)

(declare-fun Unit!46662 () Unit!46659)

(assert (=> b!2800185 (= e!1769231 Unit!46662)))

(assert (= (and start!270762 res!1166965) b!2800155))

(assert (= (and b!2800155 res!1166963) b!2800178))

(assert (= (and b!2800178 res!1166964) b!2800164))

(assert (= (and b!2800164 res!1166970) b!2800157))

(assert (= (and b!2800157 res!1166975) b!2800170))

(assert (= (and b!2800170 (not res!1166968)) b!2800161))

(assert (= (and b!2800161 (not res!1166976)) b!2800181))

(assert (= (and b!2800181 (not res!1166969)) b!2800151))

(assert (= (and b!2800151 (not res!1166967)) b!2800183))

(assert (= (and b!2800183 (not res!1166974)) b!2800177))

(assert (= (and b!2800177 (not res!1166973)) b!2800167))

(assert (= (and b!2800167 c!454049) b!2800174))

(assert (= (and b!2800167 (not c!454049)) b!2800185))

(assert (= (and b!2800167 (not res!1166972)) b!2800169))

(assert (= (and b!2800169 (not res!1166966)) b!2800158))

(assert (= (and b!2800158 (not res!1166971)) b!2800184))

(assert (= (and b!2800184 (not res!1166962)) b!2800182))

(assert (= start!270762 b!2800154))

(assert (= (and start!270762 condSetEmpty!24478) setIsEmpty!24478))

(assert (= (and start!270762 (not condSetEmpty!24478)) setNonEmpty!24478))

(assert (= setNonEmpty!24478 b!2800159))

(assert (= (and start!270762 ((_ is Cons!32544) testedP!183)) b!2800163))

(assert (= (and start!270762 ((_ is Cons!32544) testedSuffix!143)) b!2800173))

(assert (= (and b!2800171 condMapEmpty!18317) mapIsEmpty!18317))

(assert (= (and b!2800171 (not condMapEmpty!18317)) mapNonEmpty!18317))

(assert (= b!2800175 b!2800171))

(assert (= b!2800162 b!2800175))

(assert (= b!2800180 b!2800162))

(assert (= (and b!2800156 ((_ is LongMap!4029) (v!34145 (underlying!8262 (cache!4078 cacheDown!1009))))) b!2800180))

(assert (= b!2800153 b!2800156))

(assert (= (and b!2800168 ((_ is HashMap!3935) (cache!4078 cacheDown!1009))) b!2800153))

(assert (= start!270762 b!2800168))

(assert (= (and b!2800176 condMapEmpty!18318) mapIsEmpty!18318))

(assert (= (and b!2800176 (not condMapEmpty!18318)) mapNonEmpty!18318))

(assert (= b!2800166 b!2800176))

(assert (= b!2800172 b!2800166))

(assert (= b!2800165 b!2800172))

(assert (= (and b!2800160 ((_ is LongMap!4030) (v!34147 (underlying!8264 (cache!4079 cacheUp!890))))) b!2800165))

(assert (= b!2800179 b!2800160))

(assert (= (and b!2800152 ((_ is HashMap!3936) (cache!4079 cacheUp!890))) b!2800179))

(assert (= start!270762 b!2800152))

(declare-fun m!3229681 () Bool)

(assert (=> setNonEmpty!24478 m!3229681))

(declare-fun m!3229683 () Bool)

(assert (=> b!2800174 m!3229683))

(declare-fun m!3229685 () Bool)

(assert (=> b!2800174 m!3229685))

(declare-fun m!3229687 () Bool)

(assert (=> b!2800174 m!3229687))

(declare-fun m!3229689 () Bool)

(assert (=> mapNonEmpty!18318 m!3229689))

(declare-fun m!3229691 () Bool)

(assert (=> b!2800164 m!3229691))

(declare-fun m!3229693 () Bool)

(assert (=> b!2800183 m!3229693))

(declare-fun m!3229695 () Bool)

(assert (=> b!2800157 m!3229695))

(declare-fun m!3229697 () Bool)

(assert (=> start!270762 m!3229697))

(declare-fun m!3229699 () Bool)

(assert (=> start!270762 m!3229699))

(declare-fun m!3229701 () Bool)

(assert (=> start!270762 m!3229701))

(declare-fun m!3229703 () Bool)

(assert (=> start!270762 m!3229703))

(declare-fun m!3229705 () Bool)

(assert (=> start!270762 m!3229705))

(declare-fun m!3229707 () Bool)

(assert (=> b!2800154 m!3229707))

(declare-fun m!3229709 () Bool)

(assert (=> b!2800151 m!3229709))

(declare-fun m!3229711 () Bool)

(assert (=> b!2800151 m!3229711))

(declare-fun m!3229713 () Bool)

(assert (=> b!2800151 m!3229713))

(declare-fun m!3229715 () Bool)

(assert (=> b!2800151 m!3229715))

(declare-fun m!3229717 () Bool)

(assert (=> b!2800170 m!3229717))

(declare-fun m!3229719 () Bool)

(assert (=> b!2800170 m!3229719))

(declare-fun m!3229721 () Bool)

(assert (=> b!2800170 m!3229721))

(declare-fun m!3229723 () Bool)

(assert (=> b!2800175 m!3229723))

(declare-fun m!3229725 () Bool)

(assert (=> b!2800175 m!3229725))

(declare-fun m!3229727 () Bool)

(assert (=> b!2800182 m!3229727))

(declare-fun m!3229729 () Bool)

(assert (=> b!2800177 m!3229729))

(declare-fun m!3229731 () Bool)

(assert (=> b!2800177 m!3229731))

(declare-fun m!3229733 () Bool)

(assert (=> b!2800177 m!3229733))

(declare-fun m!3229735 () Bool)

(assert (=> b!2800177 m!3229735))

(declare-fun m!3229737 () Bool)

(assert (=> b!2800177 m!3229737))

(declare-fun m!3229739 () Bool)

(assert (=> b!2800177 m!3229739))

(declare-fun m!3229741 () Bool)

(assert (=> b!2800177 m!3229741))

(assert (=> b!2800177 m!3229729))

(declare-fun m!3229743 () Bool)

(assert (=> b!2800169 m!3229743))

(declare-fun m!3229745 () Bool)

(assert (=> b!2800169 m!3229745))

(declare-fun m!3229747 () Bool)

(assert (=> b!2800169 m!3229747))

(declare-fun m!3229749 () Bool)

(assert (=> b!2800169 m!3229749))

(assert (=> b!2800169 m!3229747))

(declare-fun m!3229751 () Bool)

(assert (=> b!2800169 m!3229751))

(declare-fun m!3229753 () Bool)

(assert (=> b!2800169 m!3229753))

(declare-fun m!3229755 () Bool)

(assert (=> b!2800169 m!3229755))

(declare-fun m!3229757 () Bool)

(assert (=> b!2800169 m!3229757))

(declare-fun m!3229759 () Bool)

(assert (=> b!2800169 m!3229759))

(declare-fun m!3229761 () Bool)

(assert (=> b!2800155 m!3229761))

(declare-fun m!3229763 () Bool)

(assert (=> b!2800158 m!3229763))

(declare-fun m!3229765 () Bool)

(assert (=> b!2800158 m!3229765))

(declare-fun m!3229767 () Bool)

(assert (=> b!2800161 m!3229767))

(declare-fun m!3229769 () Bool)

(assert (=> b!2800161 m!3229769))

(declare-fun m!3229771 () Bool)

(assert (=> b!2800161 m!3229771))

(declare-fun m!3229773 () Bool)

(assert (=> mapNonEmpty!18317 m!3229773))

(declare-fun m!3229775 () Bool)

(assert (=> b!2800184 m!3229775))

(declare-fun m!3229777 () Bool)

(assert (=> b!2800167 m!3229777))

(declare-fun m!3229779 () Bool)

(assert (=> b!2800167 m!3229779))

(declare-fun m!3229781 () Bool)

(assert (=> b!2800166 m!3229781))

(declare-fun m!3229783 () Bool)

(assert (=> b!2800166 m!3229783))

(declare-fun m!3229785 () Bool)

(assert (=> b!2800178 m!3229785))

(check-sat (not b!2800151) (not b!2800161) (not b!2800154) (not b_next!80093) (not b_next!80099) (not b!2800171) (not b_next!80095) (not b!2800170) (not b!2800166) tp_is_empty!14251 (not b!2800175) b_and!204129 (not b!2800184) (not setNonEmpty!24478) (not b!2800173) (not b!2800177) b_and!204131 (not b!2800183) (not b!2800157) (not mapNonEmpty!18318) b_and!204133 (not b!2800182) (not b!2800158) (not start!270762) (not b!2800159) (not b_next!80097) (not b!2800178) (not b!2800167) (not b!2800164) b_and!204127 (not b!2800169) (not b!2800155) (not b!2800176) (not b!2800174) (not mapNonEmpty!18317) (not b!2800163))
(check-sat (not b_next!80093) (not b_next!80099) b_and!204131 (not b_next!80095) b_and!204133 (not b_next!80097) b_and!204129 b_and!204127)
(get-model)

(declare-fun d!813496 () Bool)

(declare-fun lambda!102857 () Int)

(declare-fun forall!6708 (List!32642 Int) Bool)

(assert (=> d!813496 (= (inv!44200 setElem!24478) (forall!6708 (exprs!2937 setElem!24478) lambda!102857))))

(declare-fun bs!515548 () Bool)

(assert (= bs!515548 d!813496))

(declare-fun m!3229787 () Bool)

(assert (=> bs!515548 m!3229787))

(assert (=> setNonEmpty!24478 d!813496))

(declare-fun d!813498 () Bool)

(declare-fun res!1166979 () Bool)

(declare-fun e!1769241 () Bool)

(assert (=> d!813498 (=> (not res!1166979) (not e!1769241))))

(assert (=> d!813498 (= res!1166979 ((_ is HashMap!3936) (cache!4079 cacheUp!890)))))

(assert (=> d!813498 (= (inv!44198 cacheUp!890) e!1769241)))

(declare-fun b!2800188 () Bool)

(declare-fun validCacheMapUp!399 (MutableMap!3936) Bool)

(assert (=> b!2800188 (= e!1769241 (validCacheMapUp!399 (cache!4079 cacheUp!890)))))

(assert (= (and d!813498 res!1166979) b!2800188))

(declare-fun m!3229789 () Bool)

(assert (=> b!2800188 m!3229789))

(assert (=> start!270762 d!813498))

(declare-fun d!813500 () Bool)

(declare-fun isBalanced!3075 (Conc!10077) Bool)

(assert (=> d!813500 (= (inv!44196 totalInput!758) (isBalanced!3075 (c!454051 totalInput!758)))))

(declare-fun bs!515549 () Bool)

(assert (= bs!515549 d!813500))

(declare-fun m!3229791 () Bool)

(assert (=> bs!515549 m!3229791))

(assert (=> start!270762 d!813500))

(declare-fun d!813502 () Bool)

(declare-fun res!1166982 () Bool)

(declare-fun e!1769244 () Bool)

(assert (=> d!813502 (=> (not res!1166982) (not e!1769244))))

(assert (=> d!813502 (= res!1166982 ((_ is HashMap!3935) (cache!4078 cacheDown!1009)))))

(assert (=> d!813502 (= (inv!44197 cacheDown!1009) e!1769244)))

(declare-fun b!2800191 () Bool)

(declare-fun validCacheMapDown!430 (MutableMap!3935) Bool)

(assert (=> b!2800191 (= e!1769244 (validCacheMapDown!430 (cache!4078 cacheDown!1009)))))

(assert (= (and d!813502 res!1166982) b!2800191))

(declare-fun m!3229793 () Bool)

(assert (=> b!2800191 m!3229793))

(assert (=> start!270762 d!813502))

(declare-fun d!813504 () Bool)

(declare-fun list!12216 (Conc!10077) List!32644)

(assert (=> d!813504 (= (list!12215 totalInput!758) (list!12216 (c!454051 totalInput!758)))))

(declare-fun bs!515550 () Bool)

(assert (= bs!515550 d!813504))

(declare-fun m!3229795 () Bool)

(assert (=> bs!515550 m!3229795))

(assert (=> start!270762 d!813504))

(declare-fun b!2800203 () Bool)

(declare-fun lt!1000859 () List!32644)

(declare-fun e!1769249 () Bool)

(assert (=> b!2800203 (= e!1769249 (or (not (= testedSuffix!143 Nil!32544)) (= lt!1000859 testedP!183)))))

(declare-fun b!2800200 () Bool)

(declare-fun e!1769250 () List!32644)

(assert (=> b!2800200 (= e!1769250 testedSuffix!143)))

(declare-fun b!2800201 () Bool)

(assert (=> b!2800201 (= e!1769250 (Cons!32544 (h!37964 testedP!183) (++!8023 (t!228809 testedP!183) testedSuffix!143)))))

(declare-fun b!2800202 () Bool)

(declare-fun res!1166987 () Bool)

(assert (=> b!2800202 (=> (not res!1166987) (not e!1769249))))

(assert (=> b!2800202 (= res!1166987 (= (size!25401 lt!1000859) (+ (size!25401 testedP!183) (size!25401 testedSuffix!143))))))

(declare-fun d!813506 () Bool)

(assert (=> d!813506 e!1769249))

(declare-fun res!1166988 () Bool)

(assert (=> d!813506 (=> (not res!1166988) (not e!1769249))))

(declare-fun content!4544 (List!32644) (InoxSet C!16596))

(assert (=> d!813506 (= res!1166988 (= (content!4544 lt!1000859) ((_ map or) (content!4544 testedP!183) (content!4544 testedSuffix!143))))))

(assert (=> d!813506 (= lt!1000859 e!1769250)))

(declare-fun c!454054 () Bool)

(assert (=> d!813506 (= c!454054 ((_ is Nil!32544) testedP!183))))

(assert (=> d!813506 (= (++!8023 testedP!183 testedSuffix!143) lt!1000859)))

(assert (= (and d!813506 c!454054) b!2800200))

(assert (= (and d!813506 (not c!454054)) b!2800201))

(assert (= (and d!813506 res!1166988) b!2800202))

(assert (= (and b!2800202 res!1166987) b!2800203))

(declare-fun m!3229797 () Bool)

(assert (=> b!2800201 m!3229797))

(declare-fun m!3229799 () Bool)

(assert (=> b!2800202 m!3229799))

(assert (=> b!2800202 m!3229761))

(declare-fun m!3229801 () Bool)

(assert (=> b!2800202 m!3229801))

(declare-fun m!3229803 () Bool)

(assert (=> d!813506 m!3229803))

(declare-fun m!3229805 () Bool)

(assert (=> d!813506 m!3229805))

(declare-fun m!3229807 () Bool)

(assert (=> d!813506 m!3229807))

(assert (=> start!270762 d!813506))

(declare-fun b!2800215 () Bool)

(declare-fun e!1769258 () Bool)

(assert (=> b!2800215 (= e!1769258 (>= (size!25401 lt!1000835) (size!25401 testedP!183)))))

(declare-fun b!2800212 () Bool)

(declare-fun e!1769259 () Bool)

(declare-fun e!1769257 () Bool)

(assert (=> b!2800212 (= e!1769259 e!1769257)))

(declare-fun res!1166999 () Bool)

(assert (=> b!2800212 (=> (not res!1166999) (not e!1769257))))

(assert (=> b!2800212 (= res!1166999 (not ((_ is Nil!32544) lt!1000835)))))

(declare-fun d!813508 () Bool)

(assert (=> d!813508 e!1769258))

(declare-fun res!1166997 () Bool)

(assert (=> d!813508 (=> res!1166997 e!1769258)))

(declare-fun lt!1000862 () Bool)

(assert (=> d!813508 (= res!1166997 (not lt!1000862))))

(assert (=> d!813508 (= lt!1000862 e!1769259)))

(declare-fun res!1166998 () Bool)

(assert (=> d!813508 (=> res!1166998 e!1769259)))

(assert (=> d!813508 (= res!1166998 ((_ is Nil!32544) testedP!183))))

(assert (=> d!813508 (= (isPrefix!2635 testedP!183 lt!1000835) lt!1000862)))

(declare-fun b!2800213 () Bool)

(declare-fun res!1167000 () Bool)

(assert (=> b!2800213 (=> (not res!1167000) (not e!1769257))))

(assert (=> b!2800213 (= res!1167000 (= (head!6202 testedP!183) (head!6202 lt!1000835)))))

(declare-fun b!2800214 () Bool)

(assert (=> b!2800214 (= e!1769257 (isPrefix!2635 (tail!4429 testedP!183) (tail!4429 lt!1000835)))))

(assert (= (and d!813508 (not res!1166998)) b!2800212))

(assert (= (and b!2800212 res!1166999) b!2800213))

(assert (= (and b!2800213 res!1167000) b!2800214))

(assert (= (and d!813508 (not res!1166997)) b!2800215))

(assert (=> b!2800215 m!3229777))

(assert (=> b!2800215 m!3229761))

(declare-fun m!3229809 () Bool)

(assert (=> b!2800213 m!3229809))

(declare-fun m!3229811 () Bool)

(assert (=> b!2800213 m!3229811))

(declare-fun m!3229813 () Bool)

(assert (=> b!2800214 m!3229813))

(declare-fun m!3229815 () Bool)

(assert (=> b!2800214 m!3229815))

(assert (=> b!2800214 m!3229813))

(assert (=> b!2800214 m!3229815))

(declare-fun m!3229817 () Bool)

(assert (=> b!2800214 m!3229817))

(assert (=> b!2800170 d!813508))

(declare-fun b!2800219 () Bool)

(declare-fun e!1769261 () Bool)

(assert (=> b!2800219 (= e!1769261 (>= (size!25401 lt!1000853) (size!25401 testedP!183)))))

(declare-fun b!2800216 () Bool)

(declare-fun e!1769262 () Bool)

(declare-fun e!1769260 () Bool)

(assert (=> b!2800216 (= e!1769262 e!1769260)))

(declare-fun res!1167003 () Bool)

(assert (=> b!2800216 (=> (not res!1167003) (not e!1769260))))

(assert (=> b!2800216 (= res!1167003 (not ((_ is Nil!32544) lt!1000853)))))

(declare-fun d!813510 () Bool)

(assert (=> d!813510 e!1769261))

(declare-fun res!1167001 () Bool)

(assert (=> d!813510 (=> res!1167001 e!1769261)))

(declare-fun lt!1000863 () Bool)

(assert (=> d!813510 (= res!1167001 (not lt!1000863))))

(assert (=> d!813510 (= lt!1000863 e!1769262)))

(declare-fun res!1167002 () Bool)

(assert (=> d!813510 (=> res!1167002 e!1769262)))

(assert (=> d!813510 (= res!1167002 ((_ is Nil!32544) testedP!183))))

(assert (=> d!813510 (= (isPrefix!2635 testedP!183 lt!1000853) lt!1000863)))

(declare-fun b!2800217 () Bool)

(declare-fun res!1167004 () Bool)

(assert (=> b!2800217 (=> (not res!1167004) (not e!1769260))))

(assert (=> b!2800217 (= res!1167004 (= (head!6202 testedP!183) (head!6202 lt!1000853)))))

(declare-fun b!2800218 () Bool)

(assert (=> b!2800218 (= e!1769260 (isPrefix!2635 (tail!4429 testedP!183) (tail!4429 lt!1000853)))))

(assert (= (and d!813510 (not res!1167002)) b!2800216))

(assert (= (and b!2800216 res!1167003) b!2800217))

(assert (= (and b!2800217 res!1167004) b!2800218))

(assert (= (and d!813510 (not res!1167001)) b!2800219))

(declare-fun m!3229819 () Bool)

(assert (=> b!2800219 m!3229819))

(assert (=> b!2800219 m!3229761))

(assert (=> b!2800217 m!3229809))

(declare-fun m!3229821 () Bool)

(assert (=> b!2800217 m!3229821))

(assert (=> b!2800218 m!3229813))

(declare-fun m!3229823 () Bool)

(assert (=> b!2800218 m!3229823))

(assert (=> b!2800218 m!3229813))

(assert (=> b!2800218 m!3229823))

(declare-fun m!3229825 () Bool)

(assert (=> b!2800218 m!3229825))

(assert (=> b!2800170 d!813510))

(declare-fun d!813512 () Bool)

(assert (=> d!813512 (isPrefix!2635 testedP!183 (++!8023 testedP!183 testedSuffix!143))))

(declare-fun lt!1000866 () Unit!46659)

(declare-fun choose!16489 (List!32644 List!32644) Unit!46659)

(assert (=> d!813512 (= lt!1000866 (choose!16489 testedP!183 testedSuffix!143))))

(assert (=> d!813512 (= (lemmaConcatTwoListThenFirstIsPrefix!1742 testedP!183 testedSuffix!143) lt!1000866)))

(declare-fun bs!515551 () Bool)

(assert (= bs!515551 d!813512))

(assert (=> bs!515551 m!3229705))

(assert (=> bs!515551 m!3229705))

(declare-fun m!3229827 () Bool)

(assert (=> bs!515551 m!3229827))

(declare-fun m!3229829 () Bool)

(assert (=> bs!515551 m!3229829))

(assert (=> b!2800170 d!813512))

(declare-fun d!813514 () Bool)

(declare-fun c!454057 () Bool)

(assert (=> d!813514 (= c!454057 ((_ is Node!10077) (c!454051 totalInput!758)))))

(declare-fun e!1769267 () Bool)

(assert (=> d!813514 (= (inv!44199 (c!454051 totalInput!758)) e!1769267)))

(declare-fun b!2800226 () Bool)

(declare-fun inv!44201 (Conc!10077) Bool)

(assert (=> b!2800226 (= e!1769267 (inv!44201 (c!454051 totalInput!758)))))

(declare-fun b!2800227 () Bool)

(declare-fun e!1769268 () Bool)

(assert (=> b!2800227 (= e!1769267 e!1769268)))

(declare-fun res!1167007 () Bool)

(assert (=> b!2800227 (= res!1167007 (not ((_ is Leaf!15355) (c!454051 totalInput!758))))))

(assert (=> b!2800227 (=> res!1167007 e!1769268)))

(declare-fun b!2800228 () Bool)

(declare-fun inv!44202 (Conc!10077) Bool)

(assert (=> b!2800228 (= e!1769268 (inv!44202 (c!454051 totalInput!758)))))

(assert (= (and d!813514 c!454057) b!2800226))

(assert (= (and d!813514 (not c!454057)) b!2800227))

(assert (= (and b!2800227 (not res!1167007)) b!2800228))

(declare-fun m!3229831 () Bool)

(assert (=> b!2800226 m!3229831))

(declare-fun m!3229833 () Bool)

(assert (=> b!2800228 m!3229833))

(assert (=> b!2800154 d!813514))

(declare-fun d!813516 () Bool)

(declare-fun lt!1000869 () Int)

(assert (=> d!813516 (>= lt!1000869 0)))

(declare-fun e!1769271 () Int)

(assert (=> d!813516 (= lt!1000869 e!1769271)))

(declare-fun c!454060 () Bool)

(assert (=> d!813516 (= c!454060 ((_ is Nil!32544) lt!1000835))))

(assert (=> d!813516 (= (size!25401 lt!1000835) lt!1000869)))

(declare-fun b!2800233 () Bool)

(assert (=> b!2800233 (= e!1769271 0)))

(declare-fun b!2800234 () Bool)

(assert (=> b!2800234 (= e!1769271 (+ 1 (size!25401 (t!228809 lt!1000835))))))

(assert (= (and d!813516 c!454060) b!2800233))

(assert (= (and d!813516 (not c!454060)) b!2800234))

(declare-fun m!3229835 () Bool)

(assert (=> b!2800234 m!3229835))

(assert (=> b!2800167 d!813516))

(declare-fun d!813518 () Bool)

(assert (=> d!813518 (<= (size!25401 testedP!183) (size!25401 lt!1000835))))

(declare-fun lt!1000872 () Unit!46659)

(declare-fun choose!16490 (List!32644 List!32644) Unit!46659)

(assert (=> d!813518 (= lt!1000872 (choose!16490 testedP!183 lt!1000835))))

(assert (=> d!813518 (isPrefix!2635 testedP!183 lt!1000835)))

(assert (=> d!813518 (= (lemmaIsPrefixThenSmallerEqSize!295 testedP!183 lt!1000835) lt!1000872)))

(declare-fun bs!515552 () Bool)

(assert (= bs!515552 d!813518))

(assert (=> bs!515552 m!3229761))

(assert (=> bs!515552 m!3229777))

(declare-fun m!3229837 () Bool)

(assert (=> bs!515552 m!3229837))

(assert (=> bs!515552 m!3229717))

(assert (=> b!2800167 d!813518))

(declare-fun b!2800253 () Bool)

(declare-fun e!1769285 () Int)

(declare-fun e!1769283 () Int)

(assert (=> b!2800253 (= e!1769285 e!1769283)))

(declare-fun c!454070 () Bool)

(declare-fun call!182846 () Int)

(assert (=> b!2800253 (= c!454070 (>= testedPSize!143 call!182846))))

(declare-fun b!2800254 () Bool)

(assert (=> b!2800254 (= e!1769285 call!182846)))

(declare-fun b!2800255 () Bool)

(declare-fun e!1769282 () List!32644)

(declare-fun e!1769284 () List!32644)

(assert (=> b!2800255 (= e!1769282 e!1769284)))

(declare-fun c!454071 () Bool)

(assert (=> b!2800255 (= c!454071 (<= testedPSize!143 0))))

(declare-fun b!2800256 () Bool)

(assert (=> b!2800256 (= e!1769284 lt!1000835)))

(declare-fun b!2800257 () Bool)

(assert (=> b!2800257 (= e!1769283 0)))

(declare-fun b!2800259 () Bool)

(assert (=> b!2800259 (= e!1769283 (- call!182846 testedPSize!143))))

(declare-fun bm!182841 () Bool)

(assert (=> bm!182841 (= call!182846 (size!25401 lt!1000835))))

(declare-fun b!2800260 () Bool)

(assert (=> b!2800260 (= e!1769282 Nil!32544)))

(declare-fun b!2800261 () Bool)

(declare-fun e!1769286 () Bool)

(declare-fun lt!1000875 () List!32644)

(assert (=> b!2800261 (= e!1769286 (= (size!25401 lt!1000875) e!1769285))))

(declare-fun c!454069 () Bool)

(assert (=> b!2800261 (= c!454069 (<= testedPSize!143 0))))

(declare-fun b!2800258 () Bool)

(assert (=> b!2800258 (= e!1769284 (drop!1749 (t!228809 lt!1000835) (- testedPSize!143 1)))))

(declare-fun d!813520 () Bool)

(assert (=> d!813520 e!1769286))

(declare-fun res!1167010 () Bool)

(assert (=> d!813520 (=> (not res!1167010) (not e!1769286))))

(assert (=> d!813520 (= res!1167010 (= ((_ map implies) (content!4544 lt!1000875) (content!4544 lt!1000835)) ((as const (InoxSet C!16596)) true)))))

(assert (=> d!813520 (= lt!1000875 e!1769282)))

(declare-fun c!454072 () Bool)

(assert (=> d!813520 (= c!454072 ((_ is Nil!32544) lt!1000835))))

(assert (=> d!813520 (= (drop!1749 lt!1000835 testedPSize!143) lt!1000875)))

(assert (= (and d!813520 c!454072) b!2800260))

(assert (= (and d!813520 (not c!454072)) b!2800255))

(assert (= (and b!2800255 c!454071) b!2800256))

(assert (= (and b!2800255 (not c!454071)) b!2800258))

(assert (= (and d!813520 res!1167010) b!2800261))

(assert (= (and b!2800261 c!454069) b!2800254))

(assert (= (and b!2800261 (not c!454069)) b!2800253))

(assert (= (and b!2800253 c!454070) b!2800257))

(assert (= (and b!2800253 (not c!454070)) b!2800259))

(assert (= (or b!2800254 b!2800253 b!2800259) bm!182841))

(assert (=> bm!182841 m!3229777))

(declare-fun m!3229839 () Bool)

(assert (=> b!2800261 m!3229839))

(declare-fun m!3229841 () Bool)

(assert (=> b!2800258 m!3229841))

(declare-fun m!3229843 () Bool)

(assert (=> d!813520 m!3229843))

(declare-fun m!3229845 () Bool)

(assert (=> d!813520 m!3229845))

(assert (=> b!2800177 d!813520))

(declare-fun d!813522 () Bool)

(declare-fun lt!1000878 () C!16596)

(assert (=> d!813522 (= lt!1000878 (apply!7605 (list!12215 totalInput!758) testedPSize!143))))

(declare-fun apply!7606 (Conc!10077 Int) C!16596)

(assert (=> d!813522 (= lt!1000878 (apply!7606 (c!454051 totalInput!758) testedPSize!143))))

(declare-fun e!1769289 () Bool)

(assert (=> d!813522 e!1769289))

(declare-fun res!1167013 () Bool)

(assert (=> d!813522 (=> (not res!1167013) (not e!1769289))))

(assert (=> d!813522 (= res!1167013 (<= 0 testedPSize!143))))

(assert (=> d!813522 (= (apply!7604 totalInput!758 testedPSize!143) lt!1000878)))

(declare-fun b!2800264 () Bool)

(assert (=> b!2800264 (= e!1769289 (< testedPSize!143 (size!25402 totalInput!758)))))

(assert (= (and d!813522 res!1167013) b!2800264))

(assert (=> d!813522 m!3229697))

(assert (=> d!813522 m!3229697))

(declare-fun m!3229847 () Bool)

(assert (=> d!813522 m!3229847))

(declare-fun m!3229849 () Bool)

(assert (=> d!813522 m!3229849))

(assert (=> b!2800264 m!3229785))

(assert (=> b!2800177 d!813522))

(declare-fun d!813524 () Bool)

(assert (=> d!813524 (and (= lt!1000855 testedP!183) (= lt!1000854 testedSuffix!143))))

(declare-fun lt!1000881 () Unit!46659)

(declare-fun choose!16491 (List!32644 List!32644 List!32644 List!32644) Unit!46659)

(assert (=> d!813524 (= lt!1000881 (choose!16491 lt!1000855 lt!1000854 testedP!183 testedSuffix!143))))

(assert (=> d!813524 (= (++!8023 lt!1000855 lt!1000854) (++!8023 testedP!183 testedSuffix!143))))

(assert (=> d!813524 (= (lemmaConcatSameAndSameSizesThenSameLists!383 lt!1000855 lt!1000854 testedP!183 testedSuffix!143) lt!1000881)))

(declare-fun bs!515553 () Bool)

(assert (= bs!515553 d!813524))

(declare-fun m!3229851 () Bool)

(assert (=> bs!515553 m!3229851))

(assert (=> bs!515553 m!3229709))

(assert (=> bs!515553 m!3229705))

(assert (=> b!2800177 d!813524))

(declare-fun d!813526 () Bool)

(assert (=> d!813526 (= (head!6202 testedSuffix!143) (h!37964 testedSuffix!143))))

(assert (=> b!2800177 d!813526))

(declare-fun d!813528 () Bool)

(assert (=> d!813528 (= (head!6202 (drop!1749 lt!1000835 testedPSize!143)) (h!37964 (drop!1749 lt!1000835 testedPSize!143)))))

(assert (=> b!2800177 d!813528))

(declare-fun d!813530 () Bool)

(declare-fun lt!1000884 () C!16596)

(declare-fun contains!6017 (List!32644 C!16596) Bool)

(assert (=> d!813530 (contains!6017 lt!1000835 lt!1000884)))

(declare-fun e!1769295 () C!16596)

(assert (=> d!813530 (= lt!1000884 e!1769295)))

(declare-fun c!454075 () Bool)

(assert (=> d!813530 (= c!454075 (= testedPSize!143 0))))

(declare-fun e!1769294 () Bool)

(assert (=> d!813530 e!1769294))

(declare-fun res!1167016 () Bool)

(assert (=> d!813530 (=> (not res!1167016) (not e!1769294))))

(assert (=> d!813530 (= res!1167016 (<= 0 testedPSize!143))))

(assert (=> d!813530 (= (apply!7605 lt!1000835 testedPSize!143) lt!1000884)))

(declare-fun b!2800271 () Bool)

(assert (=> b!2800271 (= e!1769294 (< testedPSize!143 (size!25401 lt!1000835)))))

(declare-fun b!2800272 () Bool)

(assert (=> b!2800272 (= e!1769295 (head!6202 lt!1000835))))

(declare-fun b!2800273 () Bool)

(assert (=> b!2800273 (= e!1769295 (apply!7605 (tail!4429 lt!1000835) (- testedPSize!143 1)))))

(assert (= (and d!813530 res!1167016) b!2800271))

(assert (= (and d!813530 c!454075) b!2800272))

(assert (= (and d!813530 (not c!454075)) b!2800273))

(declare-fun m!3229853 () Bool)

(assert (=> d!813530 m!3229853))

(assert (=> b!2800271 m!3229777))

(assert (=> b!2800272 m!3229811))

(assert (=> b!2800273 m!3229815))

(assert (=> b!2800273 m!3229815))

(declare-fun m!3229855 () Bool)

(assert (=> b!2800273 m!3229855))

(assert (=> b!2800177 d!813530))

(declare-fun d!813532 () Bool)

(assert (=> d!813532 (= (head!6202 (drop!1749 lt!1000835 testedPSize!143)) (apply!7605 lt!1000835 testedPSize!143))))

(declare-fun lt!1000887 () Unit!46659)

(declare-fun choose!16492 (List!32644 Int) Unit!46659)

(assert (=> d!813532 (= lt!1000887 (choose!16492 lt!1000835 testedPSize!143))))

(declare-fun e!1769298 () Bool)

(assert (=> d!813532 e!1769298))

(declare-fun res!1167019 () Bool)

(assert (=> d!813532 (=> (not res!1167019) (not e!1769298))))

(assert (=> d!813532 (= res!1167019 (>= testedPSize!143 0))))

(assert (=> d!813532 (= (lemmaDropApply!953 lt!1000835 testedPSize!143) lt!1000887)))

(declare-fun b!2800276 () Bool)

(assert (=> b!2800276 (= e!1769298 (< testedPSize!143 (size!25401 lt!1000835)))))

(assert (= (and d!813532 res!1167019) b!2800276))

(assert (=> d!813532 m!3229729))

(assert (=> d!813532 m!3229729))

(assert (=> d!813532 m!3229731))

(assert (=> d!813532 m!3229741))

(declare-fun m!3229857 () Bool)

(assert (=> d!813532 m!3229857))

(assert (=> b!2800276 m!3229777))

(assert (=> b!2800177 d!813532))

(declare-fun d!813534 () Bool)

(assert (=> d!813534 (isPrefix!2635 (++!8023 testedP!183 (Cons!32544 (head!6202 (getSuffix!1312 lt!1000835 testedP!183)) Nil!32544)) lt!1000835)))

(declare-fun lt!1000890 () Unit!46659)

(declare-fun choose!16493 (List!32644 List!32644) Unit!46659)

(assert (=> d!813534 (= lt!1000890 (choose!16493 testedP!183 lt!1000835))))

(assert (=> d!813534 (isPrefix!2635 testedP!183 lt!1000835)))

(assert (=> d!813534 (= (lemmaAddHeadSuffixToPrefixStillPrefix!485 testedP!183 lt!1000835) lt!1000890)))

(declare-fun bs!515554 () Bool)

(assert (= bs!515554 d!813534))

(assert (=> bs!515554 m!3229771))

(declare-fun m!3229859 () Bool)

(assert (=> bs!515554 m!3229859))

(declare-fun m!3229861 () Bool)

(assert (=> bs!515554 m!3229861))

(assert (=> bs!515554 m!3229771))

(assert (=> bs!515554 m!3229717))

(declare-fun m!3229863 () Bool)

(assert (=> bs!515554 m!3229863))

(assert (=> bs!515554 m!3229861))

(declare-fun m!3229865 () Bool)

(assert (=> bs!515554 m!3229865))

(assert (=> b!2800169 d!813534))

(declare-fun d!813536 () Bool)

(assert (=> d!813536 (= (head!6202 lt!1000847) (h!37964 lt!1000847))))

(assert (=> b!2800169 d!813536))

(declare-fun e!1769299 () Bool)

(declare-fun b!2800280 () Bool)

(declare-fun lt!1000891 () List!32644)

(assert (=> b!2800280 (= e!1769299 (or (not (= (Cons!32544 (head!6202 lt!1000847) Nil!32544) Nil!32544)) (= lt!1000891 testedP!183)))))

(declare-fun b!2800277 () Bool)

(declare-fun e!1769300 () List!32644)

(assert (=> b!2800277 (= e!1769300 (Cons!32544 (head!6202 lt!1000847) Nil!32544))))

(declare-fun b!2800278 () Bool)

(assert (=> b!2800278 (= e!1769300 (Cons!32544 (h!37964 testedP!183) (++!8023 (t!228809 testedP!183) (Cons!32544 (head!6202 lt!1000847) Nil!32544))))))

(declare-fun b!2800279 () Bool)

(declare-fun res!1167020 () Bool)

(assert (=> b!2800279 (=> (not res!1167020) (not e!1769299))))

(assert (=> b!2800279 (= res!1167020 (= (size!25401 lt!1000891) (+ (size!25401 testedP!183) (size!25401 (Cons!32544 (head!6202 lt!1000847) Nil!32544)))))))

(declare-fun d!813538 () Bool)

(assert (=> d!813538 e!1769299))

(declare-fun res!1167021 () Bool)

(assert (=> d!813538 (=> (not res!1167021) (not e!1769299))))

(assert (=> d!813538 (= res!1167021 (= (content!4544 lt!1000891) ((_ map or) (content!4544 testedP!183) (content!4544 (Cons!32544 (head!6202 lt!1000847) Nil!32544)))))))

(assert (=> d!813538 (= lt!1000891 e!1769300)))

(declare-fun c!454076 () Bool)

(assert (=> d!813538 (= c!454076 ((_ is Nil!32544) testedP!183))))

(assert (=> d!813538 (= (++!8023 testedP!183 (Cons!32544 (head!6202 lt!1000847) Nil!32544)) lt!1000891)))

(assert (= (and d!813538 c!454076) b!2800277))

(assert (= (and d!813538 (not c!454076)) b!2800278))

(assert (= (and d!813538 res!1167021) b!2800279))

(assert (= (and b!2800279 res!1167020) b!2800280))

(declare-fun m!3229867 () Bool)

(assert (=> b!2800278 m!3229867))

(declare-fun m!3229869 () Bool)

(assert (=> b!2800279 m!3229869))

(assert (=> b!2800279 m!3229761))

(declare-fun m!3229871 () Bool)

(assert (=> b!2800279 m!3229871))

(declare-fun m!3229873 () Bool)

(assert (=> d!813538 m!3229873))

(assert (=> d!813538 m!3229805))

(declare-fun m!3229875 () Bool)

(assert (=> d!813538 m!3229875))

(assert (=> b!2800169 d!813538))

(declare-fun d!813540 () Bool)

(assert (=> d!813540 (= (++!8023 (++!8023 testedP!183 (Cons!32544 lt!1000837 Nil!32544)) lt!1000843) lt!1000835)))

(declare-fun lt!1000894 () Unit!46659)

(declare-fun choose!16494 (List!32644 C!16596 List!32644 List!32644) Unit!46659)

(assert (=> d!813540 (= lt!1000894 (choose!16494 testedP!183 lt!1000837 lt!1000843 lt!1000835))))

(assert (=> d!813540 (= (++!8023 testedP!183 (Cons!32544 lt!1000837 lt!1000843)) lt!1000835)))

(assert (=> d!813540 (= (lemmaMoveElementToOtherListKeepsConcatEq!893 testedP!183 lt!1000837 lt!1000843 lt!1000835) lt!1000894)))

(declare-fun bs!515555 () Bool)

(assert (= bs!515555 d!813540))

(assert (=> bs!515555 m!3229753))

(assert (=> bs!515555 m!3229753))

(declare-fun m!3229877 () Bool)

(assert (=> bs!515555 m!3229877))

(declare-fun m!3229879 () Bool)

(assert (=> bs!515555 m!3229879))

(declare-fun m!3229881 () Bool)

(assert (=> bs!515555 m!3229881))

(assert (=> b!2800169 d!813540))

(declare-fun e!1769302 () Bool)

(declare-fun b!2800284 () Bool)

(assert (=> b!2800284 (= e!1769302 (>= (size!25401 lt!1000835) (size!25401 (++!8023 testedP!183 (Cons!32544 (head!6202 lt!1000847) Nil!32544)))))))

(declare-fun b!2800281 () Bool)

(declare-fun e!1769303 () Bool)

(declare-fun e!1769301 () Bool)

(assert (=> b!2800281 (= e!1769303 e!1769301)))

(declare-fun res!1167024 () Bool)

(assert (=> b!2800281 (=> (not res!1167024) (not e!1769301))))

(assert (=> b!2800281 (= res!1167024 (not ((_ is Nil!32544) lt!1000835)))))

(declare-fun d!813542 () Bool)

(assert (=> d!813542 e!1769302))

(declare-fun res!1167022 () Bool)

(assert (=> d!813542 (=> res!1167022 e!1769302)))

(declare-fun lt!1000895 () Bool)

(assert (=> d!813542 (= res!1167022 (not lt!1000895))))

(assert (=> d!813542 (= lt!1000895 e!1769303)))

(declare-fun res!1167023 () Bool)

(assert (=> d!813542 (=> res!1167023 e!1769303)))

(assert (=> d!813542 (= res!1167023 ((_ is Nil!32544) (++!8023 testedP!183 (Cons!32544 (head!6202 lt!1000847) Nil!32544))))))

(assert (=> d!813542 (= (isPrefix!2635 (++!8023 testedP!183 (Cons!32544 (head!6202 lt!1000847) Nil!32544)) lt!1000835) lt!1000895)))

(declare-fun b!2800282 () Bool)

(declare-fun res!1167025 () Bool)

(assert (=> b!2800282 (=> (not res!1167025) (not e!1769301))))

(assert (=> b!2800282 (= res!1167025 (= (head!6202 (++!8023 testedP!183 (Cons!32544 (head!6202 lt!1000847) Nil!32544))) (head!6202 lt!1000835)))))

(declare-fun b!2800283 () Bool)

(assert (=> b!2800283 (= e!1769301 (isPrefix!2635 (tail!4429 (++!8023 testedP!183 (Cons!32544 (head!6202 lt!1000847) Nil!32544))) (tail!4429 lt!1000835)))))

(assert (= (and d!813542 (not res!1167023)) b!2800281))

(assert (= (and b!2800281 res!1167024) b!2800282))

(assert (= (and b!2800282 res!1167025) b!2800283))

(assert (= (and d!813542 (not res!1167022)) b!2800284))

(assert (=> b!2800284 m!3229777))

(assert (=> b!2800284 m!3229747))

(declare-fun m!3229883 () Bool)

(assert (=> b!2800284 m!3229883))

(assert (=> b!2800282 m!3229747))

(declare-fun m!3229885 () Bool)

(assert (=> b!2800282 m!3229885))

(assert (=> b!2800282 m!3229811))

(assert (=> b!2800283 m!3229747))

(declare-fun m!3229887 () Bool)

(assert (=> b!2800283 m!3229887))

(assert (=> b!2800283 m!3229815))

(assert (=> b!2800283 m!3229887))

(assert (=> b!2800283 m!3229815))

(declare-fun m!3229889 () Bool)

(assert (=> b!2800283 m!3229889))

(assert (=> b!2800169 d!813542))

(declare-fun d!813544 () Bool)

(assert (=> d!813544 (= (tail!4429 testedSuffix!143) (t!228809 testedSuffix!143))))

(assert (=> b!2800169 d!813544))

(declare-fun e!1769304 () Bool)

(declare-fun b!2800288 () Bool)

(declare-fun lt!1000896 () List!32644)

(assert (=> b!2800288 (= e!1769304 (or (not (= (Cons!32544 lt!1000837 Nil!32544) Nil!32544)) (= lt!1000896 testedP!183)))))

(declare-fun b!2800285 () Bool)

(declare-fun e!1769305 () List!32644)

(assert (=> b!2800285 (= e!1769305 (Cons!32544 lt!1000837 Nil!32544))))

(declare-fun b!2800286 () Bool)

(assert (=> b!2800286 (= e!1769305 (Cons!32544 (h!37964 testedP!183) (++!8023 (t!228809 testedP!183) (Cons!32544 lt!1000837 Nil!32544))))))

(declare-fun b!2800287 () Bool)

(declare-fun res!1167026 () Bool)

(assert (=> b!2800287 (=> (not res!1167026) (not e!1769304))))

(assert (=> b!2800287 (= res!1167026 (= (size!25401 lt!1000896) (+ (size!25401 testedP!183) (size!25401 (Cons!32544 lt!1000837 Nil!32544)))))))

(declare-fun d!813546 () Bool)

(assert (=> d!813546 e!1769304))

(declare-fun res!1167027 () Bool)

(assert (=> d!813546 (=> (not res!1167027) (not e!1769304))))

(assert (=> d!813546 (= res!1167027 (= (content!4544 lt!1000896) ((_ map or) (content!4544 testedP!183) (content!4544 (Cons!32544 lt!1000837 Nil!32544)))))))

(assert (=> d!813546 (= lt!1000896 e!1769305)))

(declare-fun c!454077 () Bool)

(assert (=> d!813546 (= c!454077 ((_ is Nil!32544) testedP!183))))

(assert (=> d!813546 (= (++!8023 testedP!183 (Cons!32544 lt!1000837 Nil!32544)) lt!1000896)))

(assert (= (and d!813546 c!454077) b!2800285))

(assert (= (and d!813546 (not c!454077)) b!2800286))

(assert (= (and d!813546 res!1167027) b!2800287))

(assert (= (and b!2800287 res!1167026) b!2800288))

(declare-fun m!3229891 () Bool)

(assert (=> b!2800286 m!3229891))

(declare-fun m!3229893 () Bool)

(assert (=> b!2800287 m!3229893))

(assert (=> b!2800287 m!3229761))

(declare-fun m!3229895 () Bool)

(assert (=> b!2800287 m!3229895))

(declare-fun m!3229897 () Bool)

(assert (=> d!813546 m!3229897))

(assert (=> d!813546 m!3229805))

(declare-fun m!3229899 () Bool)

(assert (=> d!813546 m!3229899))

(assert (=> b!2800169 d!813546))

(declare-fun d!813548 () Bool)

(declare-fun lambda!102860 () Int)

(declare-fun exists!1018 ((InoxSet Context!4874) Int) Bool)

(assert (=> d!813548 (= (nullableZipper!657 z!3684) (exists!1018 z!3684 lambda!102860))))

(declare-fun bs!515556 () Bool)

(assert (= bs!515556 d!813548))

(declare-fun m!3229901 () Bool)

(assert (=> bs!515556 m!3229901))

(assert (=> b!2800169 d!813548))

(declare-fun lt!1000897 () List!32644)

(declare-fun e!1769306 () Bool)

(declare-fun b!2800292 () Bool)

(assert (=> b!2800292 (= e!1769306 (or (not (= lt!1000843 Nil!32544)) (= lt!1000897 lt!1000836)))))

(declare-fun b!2800289 () Bool)

(declare-fun e!1769307 () List!32644)

(assert (=> b!2800289 (= e!1769307 lt!1000843)))

(declare-fun b!2800290 () Bool)

(assert (=> b!2800290 (= e!1769307 (Cons!32544 (h!37964 lt!1000836) (++!8023 (t!228809 lt!1000836) lt!1000843)))))

(declare-fun b!2800291 () Bool)

(declare-fun res!1167028 () Bool)

(assert (=> b!2800291 (=> (not res!1167028) (not e!1769306))))

(assert (=> b!2800291 (= res!1167028 (= (size!25401 lt!1000897) (+ (size!25401 lt!1000836) (size!25401 lt!1000843))))))

(declare-fun d!813550 () Bool)

(assert (=> d!813550 e!1769306))

(declare-fun res!1167029 () Bool)

(assert (=> d!813550 (=> (not res!1167029) (not e!1769306))))

(assert (=> d!813550 (= res!1167029 (= (content!4544 lt!1000897) ((_ map or) (content!4544 lt!1000836) (content!4544 lt!1000843))))))

(assert (=> d!813550 (= lt!1000897 e!1769307)))

(declare-fun c!454080 () Bool)

(assert (=> d!813550 (= c!454080 ((_ is Nil!32544) lt!1000836))))

(assert (=> d!813550 (= (++!8023 lt!1000836 lt!1000843) lt!1000897)))

(assert (= (and d!813550 c!454080) b!2800289))

(assert (= (and d!813550 (not c!454080)) b!2800290))

(assert (= (and d!813550 res!1167029) b!2800291))

(assert (= (and b!2800291 res!1167028) b!2800292))

(declare-fun m!3229903 () Bool)

(assert (=> b!2800290 m!3229903))

(declare-fun m!3229905 () Bool)

(assert (=> b!2800291 m!3229905))

(assert (=> b!2800291 m!3229763))

(declare-fun m!3229907 () Bool)

(assert (=> b!2800291 m!3229907))

(declare-fun m!3229909 () Bool)

(assert (=> d!813550 m!3229909))

(declare-fun m!3229911 () Bool)

(assert (=> d!813550 m!3229911))

(declare-fun m!3229913 () Bool)

(assert (=> d!813550 m!3229913))

(assert (=> b!2800169 d!813550))

(declare-fun d!813552 () Bool)

(declare-fun lt!1000900 () Int)

(assert (=> d!813552 (= lt!1000900 (size!25401 (list!12215 totalInput!758)))))

(declare-fun size!25403 (Conc!10077) Int)

(assert (=> d!813552 (= lt!1000900 (size!25403 (c!454051 totalInput!758)))))

(assert (=> d!813552 (= (size!25402 totalInput!758) lt!1000900)))

(declare-fun bs!515557 () Bool)

(assert (= bs!515557 d!813552))

(assert (=> bs!515557 m!3229697))

(assert (=> bs!515557 m!3229697))

(declare-fun m!3229915 () Bool)

(assert (=> bs!515557 m!3229915))

(declare-fun m!3229917 () Bool)

(assert (=> bs!515557 m!3229917))

(assert (=> b!2800178 d!813552))

(declare-fun b!2800296 () Bool)

(declare-fun e!1769308 () Bool)

(declare-fun lt!1000901 () List!32644)

(assert (=> b!2800296 (= e!1769308 (or (not (= lt!1000854 Nil!32544)) (= lt!1000901 lt!1000855)))))

(declare-fun b!2800293 () Bool)

(declare-fun e!1769309 () List!32644)

(assert (=> b!2800293 (= e!1769309 lt!1000854)))

(declare-fun b!2800294 () Bool)

(assert (=> b!2800294 (= e!1769309 (Cons!32544 (h!37964 lt!1000855) (++!8023 (t!228809 lt!1000855) lt!1000854)))))

(declare-fun b!2800295 () Bool)

(declare-fun res!1167030 () Bool)

(assert (=> b!2800295 (=> (not res!1167030) (not e!1769308))))

(assert (=> b!2800295 (= res!1167030 (= (size!25401 lt!1000901) (+ (size!25401 lt!1000855) (size!25401 lt!1000854))))))

(declare-fun d!813554 () Bool)

(assert (=> d!813554 e!1769308))

(declare-fun res!1167031 () Bool)

(assert (=> d!813554 (=> (not res!1167031) (not e!1769308))))

(assert (=> d!813554 (= res!1167031 (= (content!4544 lt!1000901) ((_ map or) (content!4544 lt!1000855) (content!4544 lt!1000854))))))

(assert (=> d!813554 (= lt!1000901 e!1769309)))

(declare-fun c!454081 () Bool)

(assert (=> d!813554 (= c!454081 ((_ is Nil!32544) lt!1000855))))

(assert (=> d!813554 (= (++!8023 lt!1000855 lt!1000854) lt!1000901)))

(assert (= (and d!813554 c!454081) b!2800293))

(assert (= (and d!813554 (not c!454081)) b!2800294))

(assert (= (and d!813554 res!1167031) b!2800295))

(assert (= (and b!2800295 res!1167030) b!2800296))

(declare-fun m!3229919 () Bool)

(assert (=> b!2800294 m!3229919))

(declare-fun m!3229921 () Bool)

(assert (=> b!2800295 m!3229921))

(declare-fun m!3229923 () Bool)

(assert (=> b!2800295 m!3229923))

(declare-fun m!3229925 () Bool)

(assert (=> b!2800295 m!3229925))

(declare-fun m!3229927 () Bool)

(assert (=> d!813554 m!3229927))

(declare-fun m!3229929 () Bool)

(assert (=> d!813554 m!3229929))

(declare-fun m!3229931 () Bool)

(assert (=> d!813554 m!3229931))

(assert (=> b!2800151 d!813554))

(declare-fun d!813556 () Bool)

(assert (=> d!813556 (= (list!12215 (_2!19642 lt!1000850)) (list!12216 (c!454051 (_2!19642 lt!1000850))))))

(declare-fun bs!515558 () Bool)

(assert (= bs!515558 d!813556))

(declare-fun m!3229933 () Bool)

(assert (=> bs!515558 m!3229933))

(assert (=> b!2800151 d!813556))

(declare-fun d!813558 () Bool)

(assert (=> d!813558 (= (list!12215 (_1!19642 lt!1000850)) (list!12216 (c!454051 (_1!19642 lt!1000850))))))

(declare-fun bs!515559 () Bool)

(assert (= bs!515559 d!813558))

(declare-fun m!3229935 () Bool)

(assert (=> bs!515559 m!3229935))

(assert (=> b!2800151 d!813558))

(declare-fun d!813560 () Bool)

(declare-fun e!1769312 () Bool)

(assert (=> d!813560 e!1769312))

(declare-fun res!1167037 () Bool)

(assert (=> d!813560 (=> (not res!1167037) (not e!1769312))))

(declare-fun lt!1000907 () tuple2!33160)

(assert (=> d!813560 (= res!1167037 (isBalanced!3075 (c!454051 (_1!19642 lt!1000907))))))

(declare-datatypes ((tuple2!33162 0))(
  ( (tuple2!33163 (_1!19644 Conc!10077) (_2!19644 Conc!10077)) )
))
(declare-fun lt!1000906 () tuple2!33162)

(assert (=> d!813560 (= lt!1000907 (tuple2!33161 (BalanceConc!19769 (_1!19644 lt!1000906)) (BalanceConc!19769 (_2!19644 lt!1000906))))))

(declare-fun splitAt!197 (Conc!10077 Int) tuple2!33162)

(assert (=> d!813560 (= lt!1000906 (splitAt!197 (c!454051 totalInput!758) testedPSize!143))))

(assert (=> d!813560 (isBalanced!3075 (c!454051 totalInput!758))))

(assert (=> d!813560 (= (splitAt!196 totalInput!758 testedPSize!143) lt!1000907)))

(declare-fun b!2800301 () Bool)

(declare-fun res!1167036 () Bool)

(assert (=> b!2800301 (=> (not res!1167036) (not e!1769312))))

(assert (=> b!2800301 (= res!1167036 (isBalanced!3075 (c!454051 (_2!19642 lt!1000907))))))

(declare-fun b!2800302 () Bool)

(declare-datatypes ((tuple2!33164 0))(
  ( (tuple2!33165 (_1!19645 List!32644) (_2!19645 List!32644)) )
))
(declare-fun splitAtIndex!75 (List!32644 Int) tuple2!33164)

(assert (=> b!2800302 (= e!1769312 (= (tuple2!33165 (list!12215 (_1!19642 lt!1000907)) (list!12215 (_2!19642 lt!1000907))) (splitAtIndex!75 (list!12215 totalInput!758) testedPSize!143)))))

(assert (= (and d!813560 res!1167037) b!2800301))

(assert (= (and b!2800301 res!1167036) b!2800302))

(declare-fun m!3229937 () Bool)

(assert (=> d!813560 m!3229937))

(declare-fun m!3229939 () Bool)

(assert (=> d!813560 m!3229939))

(assert (=> d!813560 m!3229791))

(declare-fun m!3229941 () Bool)

(assert (=> b!2800301 m!3229941))

(declare-fun m!3229943 () Bool)

(assert (=> b!2800302 m!3229943))

(declare-fun m!3229945 () Bool)

(assert (=> b!2800302 m!3229945))

(assert (=> b!2800302 m!3229697))

(assert (=> b!2800302 m!3229697))

(declare-fun m!3229947 () Bool)

(assert (=> b!2800302 m!3229947))

(assert (=> b!2800151 d!813560))

(declare-fun bs!515560 () Bool)

(declare-fun d!813562 () Bool)

(assert (= bs!515560 (and d!813562 d!813548)))

(declare-fun lambda!102873 () Int)

(assert (=> bs!515560 (not (= lambda!102873 lambda!102860))))

(declare-fun bs!515561 () Bool)

(declare-fun b!2800307 () Bool)

(assert (= bs!515561 (and b!2800307 d!813548)))

(declare-fun lambda!102874 () Int)

(assert (=> bs!515561 (not (= lambda!102874 lambda!102860))))

(declare-fun bs!515562 () Bool)

(assert (= bs!515562 (and b!2800307 d!813562)))

(assert (=> bs!515562 (not (= lambda!102874 lambda!102873))))

(declare-fun bs!515563 () Bool)

(declare-fun b!2800308 () Bool)

(assert (= bs!515563 (and b!2800308 d!813548)))

(declare-fun lambda!102875 () Int)

(assert (=> bs!515563 (not (= lambda!102875 lambda!102860))))

(declare-fun bs!515564 () Bool)

(assert (= bs!515564 (and b!2800308 d!813562)))

(assert (=> bs!515564 (not (= lambda!102875 lambda!102873))))

(declare-fun bs!515565 () Bool)

(assert (= bs!515565 (and b!2800308 b!2800307)))

(assert (=> bs!515565 (= lambda!102875 lambda!102874)))

(declare-fun e!1769319 () Unit!46659)

(declare-fun Unit!46663 () Unit!46659)

(assert (=> b!2800308 (= e!1769319 Unit!46663)))

(declare-datatypes ((List!32646 0))(
  ( (Nil!32546) (Cons!32546 (h!37966 Context!4874) (t!228811 List!32646)) )
))
(declare-fun lt!1000926 () List!32646)

(declare-fun call!182852 () List!32646)

(assert (=> b!2800308 (= lt!1000926 call!182852)))

(declare-fun lt!1000924 () Unit!46659)

(declare-fun lemmaForallThenNotExists!110 (List!32646 Int) Unit!46659)

(assert (=> b!2800308 (= lt!1000924 (lemmaForallThenNotExists!110 lt!1000926 lambda!102873))))

(declare-fun call!182851 () Bool)

(assert (=> b!2800308 (not call!182851)))

(declare-fun lt!1000928 () Unit!46659)

(assert (=> b!2800308 (= lt!1000928 lt!1000924)))

(declare-fun bm!182847 () Bool)

(declare-fun c!454092 () Bool)

(declare-fun lt!1000931 () List!32646)

(declare-fun exists!1019 (List!32646 Int) Bool)

(assert (=> bm!182847 (= call!182851 (exists!1019 (ite c!454092 lt!1000931 lt!1000926) (ite c!454092 lambda!102874 lambda!102875)))))

(declare-fun lt!1000925 () Bool)

(declare-datatypes ((Option!6288 0))(
  ( (None!6287) (Some!6287 (v!34148 List!32644)) )
))
(declare-fun isEmpty!18138 (Option!6288) Bool)

(declare-fun getLanguageWitness!223 ((InoxSet Context!4874)) Option!6288)

(assert (=> d!813562 (= lt!1000925 (isEmpty!18138 (getLanguageWitness!223 z!3684)))))

(declare-fun forall!6709 ((InoxSet Context!4874) Int) Bool)

(assert (=> d!813562 (= lt!1000925 (forall!6709 z!3684 lambda!102873))))

(declare-fun lt!1000927 () Unit!46659)

(assert (=> d!813562 (= lt!1000927 e!1769319)))

(assert (=> d!813562 (= c!454092 (not (forall!6709 z!3684 lambda!102873)))))

(assert (=> d!813562 (= (lostCauseZipper!507 z!3684) lt!1000925)))

(declare-fun bm!182846 () Bool)

(declare-fun toList!1885 ((InoxSet Context!4874)) List!32646)

(assert (=> bm!182846 (= call!182852 (toList!1885 z!3684))))

(declare-fun Unit!46664 () Unit!46659)

(assert (=> b!2800307 (= e!1769319 Unit!46664)))

(assert (=> b!2800307 (= lt!1000931 call!182852)))

(declare-fun lt!1000929 () Unit!46659)

(declare-fun lemmaNotForallThenExists!110 (List!32646 Int) Unit!46659)

(assert (=> b!2800307 (= lt!1000929 (lemmaNotForallThenExists!110 lt!1000931 lambda!102873))))

(assert (=> b!2800307 call!182851))

(declare-fun lt!1000930 () Unit!46659)

(assert (=> b!2800307 (= lt!1000930 lt!1000929)))

(assert (= (and d!813562 c!454092) b!2800307))

(assert (= (and d!813562 (not c!454092)) b!2800308))

(assert (= (or b!2800307 b!2800308) bm!182846))

(assert (= (or b!2800307 b!2800308) bm!182847))

(declare-fun m!3229949 () Bool)

(assert (=> bm!182846 m!3229949))

(declare-fun m!3229951 () Bool)

(assert (=> b!2800308 m!3229951))

(declare-fun m!3229953 () Bool)

(assert (=> d!813562 m!3229953))

(assert (=> d!813562 m!3229953))

(declare-fun m!3229955 () Bool)

(assert (=> d!813562 m!3229955))

(declare-fun m!3229957 () Bool)

(assert (=> d!813562 m!3229957))

(assert (=> d!813562 m!3229957))

(declare-fun m!3229959 () Bool)

(assert (=> b!2800307 m!3229959))

(declare-fun m!3229961 () Bool)

(assert (=> bm!182847 m!3229961))

(assert (=> b!2800161 d!813562))

(declare-fun d!813564 () Bool)

(assert (=> d!813564 (= testedSuffix!143 lt!1000847)))

(declare-fun lt!1000934 () Unit!46659)

(declare-fun choose!16495 (List!32644 List!32644 List!32644 List!32644 List!32644) Unit!46659)

(assert (=> d!813564 (= lt!1000934 (choose!16495 testedP!183 testedSuffix!143 testedP!183 lt!1000847 lt!1000835))))

(assert (=> d!813564 (isPrefix!2635 testedP!183 lt!1000835)))

(assert (=> d!813564 (= (lemmaSamePrefixThenSameSuffix!1210 testedP!183 testedSuffix!143 testedP!183 lt!1000847 lt!1000835) lt!1000934)))

(declare-fun bs!515566 () Bool)

(assert (= bs!515566 d!813564))

(declare-fun m!3229963 () Bool)

(assert (=> bs!515566 m!3229963))

(assert (=> bs!515566 m!3229717))

(assert (=> b!2800161 d!813564))

(declare-fun d!813566 () Bool)

(declare-fun lt!1000937 () List!32644)

(assert (=> d!813566 (= (++!8023 testedP!183 lt!1000937) lt!1000835)))

(declare-fun e!1769322 () List!32644)

(assert (=> d!813566 (= lt!1000937 e!1769322)))

(declare-fun c!454095 () Bool)

(assert (=> d!813566 (= c!454095 ((_ is Cons!32544) testedP!183))))

(assert (=> d!813566 (>= (size!25401 lt!1000835) (size!25401 testedP!183))))

(assert (=> d!813566 (= (getSuffix!1312 lt!1000835 testedP!183) lt!1000937)))

(declare-fun b!2800313 () Bool)

(assert (=> b!2800313 (= e!1769322 (getSuffix!1312 (tail!4429 lt!1000835) (t!228809 testedP!183)))))

(declare-fun b!2800314 () Bool)

(assert (=> b!2800314 (= e!1769322 lt!1000835)))

(assert (= (and d!813566 c!454095) b!2800313))

(assert (= (and d!813566 (not c!454095)) b!2800314))

(declare-fun m!3229965 () Bool)

(assert (=> d!813566 m!3229965))

(assert (=> d!813566 m!3229777))

(assert (=> d!813566 m!3229761))

(assert (=> b!2800313 m!3229815))

(assert (=> b!2800313 m!3229815))

(declare-fun m!3229967 () Bool)

(assert (=> b!2800313 m!3229967))

(assert (=> b!2800161 d!813566))

(declare-fun d!813568 () Bool)

(assert (=> d!813568 (= (array_inv!4567 (_keys!4329 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009))))))) (bvsge (size!25398 (_keys!4329 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2800175 d!813568))

(declare-fun d!813570 () Bool)

(assert (=> d!813570 (= (array_inv!4569 (_values!4310 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009))))))) (bvsge (size!25399 (_values!4310 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2800175 d!813570))

(declare-fun d!813572 () Bool)

(assert (=> d!813572 (= (valid!3154 cacheDown!1009) (validCacheMapDown!430 (cache!4078 cacheDown!1009)))))

(declare-fun bs!515567 () Bool)

(assert (= bs!515567 d!813572))

(assert (=> bs!515567 m!3229793))

(assert (=> b!2800157 d!813572))

(declare-fun d!813574 () Bool)

(declare-fun lt!1000938 () Int)

(assert (=> d!813574 (>= lt!1000938 0)))

(declare-fun e!1769323 () Int)

(assert (=> d!813574 (= lt!1000938 e!1769323)))

(declare-fun c!454096 () Bool)

(assert (=> d!813574 (= c!454096 ((_ is Nil!32544) lt!1000836))))

(assert (=> d!813574 (= (size!25401 lt!1000836) lt!1000938)))

(declare-fun b!2800315 () Bool)

(assert (=> b!2800315 (= e!1769323 0)))

(declare-fun b!2800316 () Bool)

(assert (=> b!2800316 (= e!1769323 (+ 1 (size!25401 (t!228809 lt!1000836))))))

(assert (= (and d!813574 c!454096) b!2800315))

(assert (= (and d!813574 (not c!454096)) b!2800316))

(declare-fun m!3229969 () Bool)

(assert (=> b!2800316 m!3229969))

(assert (=> b!2800158 d!813574))

(declare-fun d!813576 () Bool)

(declare-fun e!1769326 () Bool)

(assert (=> d!813576 e!1769326))

(declare-fun res!1167042 () Bool)

(assert (=> d!813576 (=> (not res!1167042) (not e!1769326))))

(declare-fun lt!1000941 () tuple3!5184)

(declare-fun derivationStepZipper!379 ((InoxSet Context!4874) C!16596) (InoxSet Context!4874))

(assert (=> d!813576 (= res!1167042 (= (_1!19643 lt!1000941) (derivationStepZipper!379 z!3684 lt!1000837)))))

(declare-fun choose!16496 ((InoxSet Context!4874) C!16596 CacheUp!2638 CacheDown!2764) tuple3!5184)

(assert (=> d!813576 (= lt!1000941 (choose!16496 z!3684 lt!1000837 cacheUp!890 cacheDown!1009))))

(assert (=> d!813576 (= (derivationStepZipperMem!114 z!3684 lt!1000837 cacheUp!890 cacheDown!1009) lt!1000941)))

(declare-fun b!2800321 () Bool)

(declare-fun res!1167043 () Bool)

(assert (=> b!2800321 (=> (not res!1167043) (not e!1769326))))

(assert (=> b!2800321 (= res!1167043 (valid!3155 (_2!19643 lt!1000941)))))

(declare-fun b!2800322 () Bool)

(assert (=> b!2800322 (= e!1769326 (valid!3154 (_3!3062 lt!1000941)))))

(assert (= (and d!813576 res!1167042) b!2800321))

(assert (= (and b!2800321 res!1167043) b!2800322))

(declare-fun m!3229971 () Bool)

(assert (=> d!813576 m!3229971))

(declare-fun m!3229973 () Bool)

(assert (=> d!813576 m!3229973))

(declare-fun m!3229975 () Bool)

(assert (=> b!2800321 m!3229975))

(declare-fun m!3229977 () Bool)

(assert (=> b!2800322 m!3229977))

(assert (=> b!2800158 d!813576))

(declare-fun d!813578 () Bool)

(assert (=> d!813578 (= (array_inv!4567 (_keys!4330 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890))))))) (bvsge (size!25398 (_keys!4330 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2800166 d!813578))

(declare-fun d!813580 () Bool)

(assert (=> d!813580 (= (array_inv!4568 (_values!4311 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890))))))) (bvsge (size!25400 (_values!4311 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2800166 d!813580))

(declare-fun d!813582 () Bool)

(declare-fun lt!1000942 () Int)

(assert (=> d!813582 (= lt!1000942 (size!25401 (list!12215 (_1!19642 lt!1000850))))))

(assert (=> d!813582 (= lt!1000942 (size!25403 (c!454051 (_1!19642 lt!1000850))))))

(assert (=> d!813582 (= (size!25402 (_1!19642 lt!1000850)) lt!1000942)))

(declare-fun bs!515568 () Bool)

(assert (= bs!515568 d!813582))

(assert (=> bs!515568 m!3229713))

(assert (=> bs!515568 m!3229713))

(declare-fun m!3229979 () Bool)

(assert (=> bs!515568 m!3229979))

(declare-fun m!3229981 () Bool)

(assert (=> bs!515568 m!3229981))

(assert (=> b!2800183 d!813582))

(declare-fun d!813584 () Bool)

(assert (=> d!813584 (= (valid!3154 (_3!3062 lt!1000841)) (validCacheMapDown!430 (cache!4078 (_3!3062 lt!1000841))))))

(declare-fun bs!515569 () Bool)

(assert (= bs!515569 d!813584))

(declare-fun m!3229983 () Bool)

(assert (=> bs!515569 m!3229983))

(assert (=> b!2800182 d!813584))

(declare-fun d!813586 () Bool)

(declare-fun lt!1000943 () Int)

(assert (=> d!813586 (>= lt!1000943 0)))

(declare-fun e!1769327 () Int)

(assert (=> d!813586 (= lt!1000943 e!1769327)))

(declare-fun c!454097 () Bool)

(assert (=> d!813586 (= c!454097 ((_ is Nil!32544) testedP!183))))

(assert (=> d!813586 (= (size!25401 testedP!183) lt!1000943)))

(declare-fun b!2800323 () Bool)

(assert (=> b!2800323 (= e!1769327 0)))

(declare-fun b!2800324 () Bool)

(assert (=> b!2800324 (= e!1769327 (+ 1 (size!25401 (t!228809 testedP!183))))))

(assert (= (and d!813586 c!454097) b!2800323))

(assert (= (and d!813586 (not c!454097)) b!2800324))

(declare-fun m!3229985 () Bool)

(assert (=> b!2800324 m!3229985))

(assert (=> b!2800155 d!813586))

(declare-fun d!813588 () Bool)

(assert (=> d!813588 (= (valid!3155 (_2!19643 lt!1000841)) (validCacheMapUp!399 (cache!4079 (_2!19643 lt!1000841))))))

(declare-fun bs!515570 () Bool)

(assert (= bs!515570 d!813588))

(declare-fun m!3229987 () Bool)

(assert (=> bs!515570 m!3229987))

(assert (=> b!2800184 d!813588))

(declare-fun d!813590 () Bool)

(assert (=> d!813590 (= (valid!3155 cacheUp!890) (validCacheMapUp!399 (cache!4079 cacheUp!890)))))

(declare-fun bs!515571 () Bool)

(assert (= bs!515571 d!813590))

(assert (=> bs!515571 m!3229789))

(assert (=> b!2800164 d!813590))

(declare-fun d!813592 () Bool)

(assert (=> d!813592 (isPrefix!2635 lt!1000835 lt!1000835)))

(declare-fun lt!1000946 () Unit!46659)

(declare-fun choose!16497 (List!32644 List!32644) Unit!46659)

(assert (=> d!813592 (= lt!1000946 (choose!16497 lt!1000835 lt!1000835))))

(assert (=> d!813592 (= (lemmaIsPrefixRefl!1718 lt!1000835 lt!1000835) lt!1000946)))

(declare-fun bs!515572 () Bool)

(assert (= bs!515572 d!813592))

(assert (=> bs!515572 m!3229685))

(declare-fun m!3229989 () Bool)

(assert (=> bs!515572 m!3229989))

(assert (=> b!2800174 d!813592))

(declare-fun b!2800328 () Bool)

(declare-fun e!1769329 () Bool)

(assert (=> b!2800328 (= e!1769329 (>= (size!25401 lt!1000835) (size!25401 lt!1000835)))))

(declare-fun b!2800325 () Bool)

(declare-fun e!1769330 () Bool)

(declare-fun e!1769328 () Bool)

(assert (=> b!2800325 (= e!1769330 e!1769328)))

(declare-fun res!1167046 () Bool)

(assert (=> b!2800325 (=> (not res!1167046) (not e!1769328))))

(assert (=> b!2800325 (= res!1167046 (not ((_ is Nil!32544) lt!1000835)))))

(declare-fun d!813594 () Bool)

(assert (=> d!813594 e!1769329))

(declare-fun res!1167044 () Bool)

(assert (=> d!813594 (=> res!1167044 e!1769329)))

(declare-fun lt!1000947 () Bool)

(assert (=> d!813594 (= res!1167044 (not lt!1000947))))

(assert (=> d!813594 (= lt!1000947 e!1769330)))

(declare-fun res!1167045 () Bool)

(assert (=> d!813594 (=> res!1167045 e!1769330)))

(assert (=> d!813594 (= res!1167045 ((_ is Nil!32544) lt!1000835))))

(assert (=> d!813594 (= (isPrefix!2635 lt!1000835 lt!1000835) lt!1000947)))

(declare-fun b!2800326 () Bool)

(declare-fun res!1167047 () Bool)

(assert (=> b!2800326 (=> (not res!1167047) (not e!1769328))))

(assert (=> b!2800326 (= res!1167047 (= (head!6202 lt!1000835) (head!6202 lt!1000835)))))

(declare-fun b!2800327 () Bool)

(assert (=> b!2800327 (= e!1769328 (isPrefix!2635 (tail!4429 lt!1000835) (tail!4429 lt!1000835)))))

(assert (= (and d!813594 (not res!1167045)) b!2800325))

(assert (= (and b!2800325 res!1167046) b!2800326))

(assert (= (and b!2800326 res!1167047) b!2800327))

(assert (= (and d!813594 (not res!1167044)) b!2800328))

(assert (=> b!2800328 m!3229777))

(assert (=> b!2800328 m!3229777))

(assert (=> b!2800326 m!3229811))

(assert (=> b!2800326 m!3229811))

(assert (=> b!2800327 m!3229815))

(assert (=> b!2800327 m!3229815))

(assert (=> b!2800327 m!3229815))

(assert (=> b!2800327 m!3229815))

(declare-fun m!3229991 () Bool)

(assert (=> b!2800327 m!3229991))

(assert (=> b!2800174 d!813594))

(declare-fun d!813596 () Bool)

(assert (=> d!813596 (= lt!1000835 testedP!183)))

(declare-fun lt!1000950 () Unit!46659)

(declare-fun choose!16498 (List!32644 List!32644 List!32644) Unit!46659)

(assert (=> d!813596 (= lt!1000950 (choose!16498 lt!1000835 testedP!183 lt!1000835))))

(assert (=> d!813596 (isPrefix!2635 lt!1000835 lt!1000835)))

(assert (=> d!813596 (= (lemmaIsPrefixSameLengthThenSameList!494 lt!1000835 testedP!183 lt!1000835) lt!1000950)))

(declare-fun bs!515573 () Bool)

(assert (= bs!515573 d!813596))

(declare-fun m!3229993 () Bool)

(assert (=> bs!515573 m!3229993))

(assert (=> bs!515573 m!3229685))

(assert (=> b!2800174 d!813596))

(declare-fun condSetEmpty!24481 () Bool)

(assert (=> setNonEmpty!24478 (= condSetEmpty!24481 (= setRest!24478 ((as const (Array Context!4874 Bool)) false)))))

(declare-fun setRes!24481 () Bool)

(assert (=> setNonEmpty!24478 (= tp!892111 setRes!24481)))

(declare-fun setIsEmpty!24481 () Bool)

(assert (=> setIsEmpty!24481 setRes!24481))

(declare-fun e!1769333 () Bool)

(declare-fun setElem!24481 () Context!4874)

(declare-fun tp!892122 () Bool)

(declare-fun setNonEmpty!24481 () Bool)

(assert (=> setNonEmpty!24481 (= setRes!24481 (and tp!892122 (inv!44200 setElem!24481) e!1769333))))

(declare-fun setRest!24481 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24481 (= setRest!24478 ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24481 true) setRest!24481))))

(declare-fun b!2800333 () Bool)

(declare-fun tp!892123 () Bool)

(assert (=> b!2800333 (= e!1769333 tp!892123)))

(assert (= (and setNonEmpty!24478 condSetEmpty!24481) setIsEmpty!24481))

(assert (= (and setNonEmpty!24478 (not condSetEmpty!24481)) setNonEmpty!24481))

(assert (= setNonEmpty!24481 b!2800333))

(declare-fun m!3229995 () Bool)

(assert (=> setNonEmpty!24481 m!3229995))

(declare-fun setIsEmpty!24486 () Bool)

(declare-fun setRes!24486 () Bool)

(assert (=> setIsEmpty!24486 setRes!24486))

(declare-fun b!2800348 () Bool)

(declare-fun e!1769348 () Bool)

(declare-fun tp!892150 () Bool)

(assert (=> b!2800348 (= e!1769348 tp!892150)))

(declare-fun setIsEmpty!24487 () Bool)

(declare-fun setRes!24487 () Bool)

(assert (=> setIsEmpty!24487 setRes!24487))

(declare-fun b!2800349 () Bool)

(declare-fun e!1769349 () Bool)

(declare-fun tp!892147 () Bool)

(assert (=> b!2800349 (= e!1769349 tp!892147)))

(declare-fun tp!892148 () Bool)

(declare-fun setNonEmpty!24486 () Bool)

(declare-fun setElem!24487 () Context!4874)

(assert (=> setNonEmpty!24486 (= setRes!24486 (and tp!892148 (inv!44200 setElem!24487) e!1769349))))

(declare-fun mapValue!18321 () List!32645)

(declare-fun setRest!24486 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24486 (= (_2!19641 (h!37965 mapValue!18321)) ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24487 true) setRest!24486))))

(declare-fun setElem!24486 () Context!4874)

(declare-fun setNonEmpty!24487 () Bool)

(declare-fun tp!892144 () Bool)

(assert (=> setNonEmpty!24487 (= setRes!24487 (and tp!892144 (inv!44200 setElem!24486) e!1769348))))

(declare-fun mapDefault!18321 () List!32645)

(declare-fun setRest!24487 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24487 (= (_2!19641 (h!37965 mapDefault!18321)) ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24486 true) setRest!24487))))

(declare-fun condMapEmpty!18321 () Bool)

(assert (=> mapNonEmpty!18318 (= condMapEmpty!18321 (= mapRest!18318 ((as const (Array (_ BitVec 32) List!32645)) mapDefault!18321)))))

(declare-fun e!1769347 () Bool)

(declare-fun mapRes!18321 () Bool)

(assert (=> mapNonEmpty!18318 (= tp!892099 (and e!1769347 mapRes!18321))))

(declare-fun mapIsEmpty!18321 () Bool)

(assert (=> mapIsEmpty!18321 mapRes!18321))

(declare-fun e!1769350 () Bool)

(declare-fun tp!892149 () Bool)

(declare-fun b!2800350 () Bool)

(assert (=> b!2800350 (= e!1769347 (and (inv!44200 (_1!19640 (_1!19641 (h!37965 mapDefault!18321)))) e!1769350 tp_is_empty!14251 setRes!24487 tp!892149))))

(declare-fun condSetEmpty!24486 () Bool)

(assert (=> b!2800350 (= condSetEmpty!24486 (= (_2!19641 (h!37965 mapDefault!18321)) ((as const (Array Context!4874 Bool)) false)))))

(declare-fun mapNonEmpty!18321 () Bool)

(declare-fun tp!892146 () Bool)

(declare-fun e!1769346 () Bool)

(assert (=> mapNonEmpty!18321 (= mapRes!18321 (and tp!892146 e!1769346))))

(declare-fun mapRest!18321 () (Array (_ BitVec 32) List!32645))

(declare-fun mapKey!18321 () (_ BitVec 32))

(assert (=> mapNonEmpty!18321 (= mapRest!18318 (store mapRest!18321 mapKey!18321 mapValue!18321))))

(declare-fun e!1769351 () Bool)

(declare-fun tp!892143 () Bool)

(declare-fun b!2800351 () Bool)

(assert (=> b!2800351 (= e!1769346 (and (inv!44200 (_1!19640 (_1!19641 (h!37965 mapValue!18321)))) e!1769351 tp_is_empty!14251 setRes!24486 tp!892143))))

(declare-fun condSetEmpty!24487 () Bool)

(assert (=> b!2800351 (= condSetEmpty!24487 (= (_2!19641 (h!37965 mapValue!18321)) ((as const (Array Context!4874 Bool)) false)))))

(declare-fun b!2800352 () Bool)

(declare-fun tp!892142 () Bool)

(assert (=> b!2800352 (= e!1769350 tp!892142)))

(declare-fun b!2800353 () Bool)

(declare-fun tp!892145 () Bool)

(assert (=> b!2800353 (= e!1769351 tp!892145)))

(assert (= (and mapNonEmpty!18318 condMapEmpty!18321) mapIsEmpty!18321))

(assert (= (and mapNonEmpty!18318 (not condMapEmpty!18321)) mapNonEmpty!18321))

(assert (= b!2800351 b!2800353))

(assert (= (and b!2800351 condSetEmpty!24487) setIsEmpty!24486))

(assert (= (and b!2800351 (not condSetEmpty!24487)) setNonEmpty!24486))

(assert (= setNonEmpty!24486 b!2800349))

(assert (= (and mapNonEmpty!18321 ((_ is Cons!32545) mapValue!18321)) b!2800351))

(assert (= b!2800350 b!2800352))

(assert (= (and b!2800350 condSetEmpty!24486) setIsEmpty!24487))

(assert (= (and b!2800350 (not condSetEmpty!24486)) setNonEmpty!24487))

(assert (= setNonEmpty!24487 b!2800348))

(assert (= (and mapNonEmpty!18318 ((_ is Cons!32545) mapDefault!18321)) b!2800350))

(declare-fun m!3229997 () Bool)

(assert (=> b!2800351 m!3229997))

(declare-fun m!3229999 () Bool)

(assert (=> setNonEmpty!24486 m!3229999))

(declare-fun m!3230001 () Bool)

(assert (=> mapNonEmpty!18321 m!3230001))

(declare-fun m!3230003 () Bool)

(assert (=> setNonEmpty!24487 m!3230003))

(declare-fun m!3230005 () Bool)

(assert (=> b!2800350 m!3230005))

(declare-fun setNonEmpty!24490 () Bool)

(declare-fun setRes!24490 () Bool)

(declare-fun e!1769360 () Bool)

(declare-fun tp!892162 () Bool)

(declare-fun setElem!24490 () Context!4874)

(assert (=> setNonEmpty!24490 (= setRes!24490 (and tp!892162 (inv!44200 setElem!24490) e!1769360))))

(declare-fun setRest!24490 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24490 (= (_2!19641 (h!37965 mapValue!18317)) ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24490 true) setRest!24490))))

(declare-fun e!1769359 () Bool)

(assert (=> mapNonEmpty!18318 (= tp!892105 e!1769359)))

(declare-fun b!2800362 () Bool)

(declare-fun e!1769358 () Bool)

(declare-fun tp!892160 () Bool)

(assert (=> b!2800362 (= e!1769358 tp!892160)))

(declare-fun b!2800363 () Bool)

(declare-fun tp!892161 () Bool)

(assert (=> b!2800363 (= e!1769360 tp!892161)))

(declare-fun b!2800364 () Bool)

(declare-fun tp!892159 () Bool)

(assert (=> b!2800364 (= e!1769359 (and (inv!44200 (_1!19640 (_1!19641 (h!37965 mapValue!18317)))) e!1769358 tp_is_empty!14251 setRes!24490 tp!892159))))

(declare-fun condSetEmpty!24490 () Bool)

(assert (=> b!2800364 (= condSetEmpty!24490 (= (_2!19641 (h!37965 mapValue!18317)) ((as const (Array Context!4874 Bool)) false)))))

(declare-fun setIsEmpty!24490 () Bool)

(assert (=> setIsEmpty!24490 setRes!24490))

(assert (= b!2800364 b!2800362))

(assert (= (and b!2800364 condSetEmpty!24490) setIsEmpty!24490))

(assert (= (and b!2800364 (not condSetEmpty!24490)) setNonEmpty!24490))

(assert (= setNonEmpty!24490 b!2800363))

(assert (= (and mapNonEmpty!18318 ((_ is Cons!32545) mapValue!18317)) b!2800364))

(declare-fun m!3230007 () Bool)

(assert (=> setNonEmpty!24490 m!3230007))

(declare-fun m!3230009 () Bool)

(assert (=> b!2800364 m!3230009))

(declare-fun setIsEmpty!24493 () Bool)

(declare-fun setRes!24493 () Bool)

(assert (=> setIsEmpty!24493 setRes!24493))

(declare-fun tp!892177 () Bool)

(declare-fun tp!892175 () Bool)

(declare-fun e!1769368 () Bool)

(declare-fun e!1769367 () Bool)

(declare-fun b!2800373 () Bool)

(assert (=> b!2800373 (= e!1769367 (and tp!892175 (inv!44200 (_2!19638 (_1!19639 (h!37963 mapDefault!18317)))) e!1769368 tp_is_empty!14251 setRes!24493 tp!892177))))

(declare-fun condSetEmpty!24493 () Bool)

(assert (=> b!2800373 (= condSetEmpty!24493 (= (_2!19639 (h!37963 mapDefault!18317)) ((as const (Array Context!4874 Bool)) false)))))

(declare-fun b!2800374 () Bool)

(declare-fun e!1769369 () Bool)

(declare-fun tp!892174 () Bool)

(assert (=> b!2800374 (= e!1769369 tp!892174)))

(declare-fun b!2800375 () Bool)

(declare-fun tp!892173 () Bool)

(assert (=> b!2800375 (= e!1769368 tp!892173)))

(assert (=> b!2800171 (= tp!892109 e!1769367)))

(declare-fun tp!892176 () Bool)

(declare-fun setElem!24493 () Context!4874)

(declare-fun setNonEmpty!24493 () Bool)

(assert (=> setNonEmpty!24493 (= setRes!24493 (and tp!892176 (inv!44200 setElem!24493) e!1769369))))

(declare-fun setRest!24493 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24493 (= (_2!19639 (h!37963 mapDefault!18317)) ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24493 true) setRest!24493))))

(assert (= b!2800373 b!2800375))

(assert (= (and b!2800373 condSetEmpty!24493) setIsEmpty!24493))

(assert (= (and b!2800373 (not condSetEmpty!24493)) setNonEmpty!24493))

(assert (= setNonEmpty!24493 b!2800374))

(assert (= (and b!2800171 ((_ is Cons!32543) mapDefault!18317)) b!2800373))

(declare-fun m!3230011 () Bool)

(assert (=> b!2800373 m!3230011))

(declare-fun m!3230013 () Bool)

(assert (=> setNonEmpty!24493 m!3230013))

(declare-fun b!2800384 () Bool)

(declare-fun e!1769374 () Bool)

(declare-fun tp!892185 () Bool)

(declare-fun tp!892186 () Bool)

(assert (=> b!2800384 (= e!1769374 (and (inv!44199 (left!24586 (c!454051 totalInput!758))) tp!892185 (inv!44199 (right!24916 (c!454051 totalInput!758))) tp!892186))))

(declare-fun b!2800386 () Bool)

(declare-fun e!1769375 () Bool)

(declare-fun tp!892184 () Bool)

(assert (=> b!2800386 (= e!1769375 tp!892184)))

(declare-fun b!2800385 () Bool)

(declare-fun inv!44203 (IArray!20159) Bool)

(assert (=> b!2800385 (= e!1769374 (and (inv!44203 (xs!13189 (c!454051 totalInput!758))) e!1769375))))

(assert (=> b!2800154 (= tp!892114 (and (inv!44199 (c!454051 totalInput!758)) e!1769374))))

(assert (= (and b!2800154 ((_ is Node!10077) (c!454051 totalInput!758))) b!2800384))

(assert (= b!2800385 b!2800386))

(assert (= (and b!2800154 ((_ is Leaf!15355) (c!454051 totalInput!758))) b!2800385))

(declare-fun m!3230015 () Bool)

(assert (=> b!2800384 m!3230015))

(declare-fun m!3230017 () Bool)

(assert (=> b!2800384 m!3230017))

(declare-fun m!3230019 () Bool)

(assert (=> b!2800385 m!3230019))

(assert (=> b!2800154 m!3229707))

(declare-fun b!2800401 () Bool)

(declare-fun e!1769392 () Bool)

(declare-fun tp!892217 () Bool)

(assert (=> b!2800401 (= e!1769392 tp!892217)))

(declare-fun tp!892210 () Bool)

(declare-fun e!1769391 () Bool)

(declare-fun b!2800402 () Bool)

(declare-fun setRes!24499 () Bool)

(declare-fun tp!892215 () Bool)

(declare-fun mapDefault!18324 () List!32643)

(declare-fun e!1769390 () Bool)

(assert (=> b!2800402 (= e!1769391 (and tp!892215 (inv!44200 (_2!19638 (_1!19639 (h!37963 mapDefault!18324)))) e!1769390 tp_is_empty!14251 setRes!24499 tp!892210))))

(declare-fun condSetEmpty!24498 () Bool)

(assert (=> b!2800402 (= condSetEmpty!24498 (= (_2!19639 (h!37963 mapDefault!18324)) ((as const (Array Context!4874 Bool)) false)))))

(declare-fun condMapEmpty!18324 () Bool)

(assert (=> mapNonEmpty!18317 (= condMapEmpty!18324 (= mapRest!18317 ((as const (Array (_ BitVec 32) List!32643)) mapDefault!18324)))))

(declare-fun mapRes!18324 () Bool)

(assert (=> mapNonEmpty!18317 (= tp!892100 (and e!1769391 mapRes!18324))))

(declare-fun setElem!24499 () Context!4874)

(declare-fun setNonEmpty!24498 () Bool)

(declare-fun tp!892211 () Bool)

(assert (=> setNonEmpty!24498 (= setRes!24499 (and tp!892211 (inv!44200 setElem!24499) e!1769392))))

(declare-fun setRest!24499 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24498 (= (_2!19639 (h!37963 mapDefault!18324)) ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24499 true) setRest!24499))))

(declare-fun setIsEmpty!24498 () Bool)

(declare-fun setRes!24498 () Bool)

(assert (=> setIsEmpty!24498 setRes!24498))

(declare-fun b!2800403 () Bool)

(declare-fun e!1769388 () Bool)

(declare-fun tp!892213 () Bool)

(assert (=> b!2800403 (= e!1769388 tp!892213)))

(declare-fun mapNonEmpty!18324 () Bool)

(declare-fun tp!892214 () Bool)

(declare-fun e!1769393 () Bool)

(assert (=> mapNonEmpty!18324 (= mapRes!18324 (and tp!892214 e!1769393))))

(declare-fun mapRest!18324 () (Array (_ BitVec 32) List!32643))

(declare-fun mapKey!18324 () (_ BitVec 32))

(declare-fun mapValue!18324 () List!32643)

(assert (=> mapNonEmpty!18324 (= mapRest!18317 (store mapRest!18324 mapKey!18324 mapValue!18324))))

(declare-fun mapIsEmpty!18324 () Bool)

(assert (=> mapIsEmpty!18324 mapRes!18324))

(declare-fun setElem!24498 () Context!4874)

(declare-fun setNonEmpty!24499 () Bool)

(declare-fun tp!892219 () Bool)

(assert (=> setNonEmpty!24499 (= setRes!24498 (and tp!892219 (inv!44200 setElem!24498) e!1769388))))

(declare-fun setRest!24498 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24499 (= (_2!19639 (h!37963 mapValue!18324)) ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24498 true) setRest!24498))))

(declare-fun tp!892209 () Bool)

(declare-fun b!2800404 () Bool)

(declare-fun tp!892218 () Bool)

(declare-fun e!1769389 () Bool)

(assert (=> b!2800404 (= e!1769393 (and tp!892209 (inv!44200 (_2!19638 (_1!19639 (h!37963 mapValue!18324)))) e!1769389 tp_is_empty!14251 setRes!24498 tp!892218))))

(declare-fun condSetEmpty!24499 () Bool)

(assert (=> b!2800404 (= condSetEmpty!24499 (= (_2!19639 (h!37963 mapValue!18324)) ((as const (Array Context!4874 Bool)) false)))))

(declare-fun b!2800405 () Bool)

(declare-fun tp!892212 () Bool)

(assert (=> b!2800405 (= e!1769389 tp!892212)))

(declare-fun b!2800406 () Bool)

(declare-fun tp!892216 () Bool)

(assert (=> b!2800406 (= e!1769390 tp!892216)))

(declare-fun setIsEmpty!24499 () Bool)

(assert (=> setIsEmpty!24499 setRes!24499))

(assert (= (and mapNonEmpty!18317 condMapEmpty!18324) mapIsEmpty!18324))

(assert (= (and mapNonEmpty!18317 (not condMapEmpty!18324)) mapNonEmpty!18324))

(assert (= b!2800404 b!2800405))

(assert (= (and b!2800404 condSetEmpty!24499) setIsEmpty!24498))

(assert (= (and b!2800404 (not condSetEmpty!24499)) setNonEmpty!24499))

(assert (= setNonEmpty!24499 b!2800403))

(assert (= (and mapNonEmpty!18324 ((_ is Cons!32543) mapValue!18324)) b!2800404))

(assert (= b!2800402 b!2800406))

(assert (= (and b!2800402 condSetEmpty!24498) setIsEmpty!24499))

(assert (= (and b!2800402 (not condSetEmpty!24498)) setNonEmpty!24498))

(assert (= setNonEmpty!24498 b!2800401))

(assert (= (and mapNonEmpty!18317 ((_ is Cons!32543) mapDefault!18324)) b!2800402))

(declare-fun m!3230021 () Bool)

(assert (=> mapNonEmpty!18324 m!3230021))

(declare-fun m!3230023 () Bool)

(assert (=> setNonEmpty!24498 m!3230023))

(declare-fun m!3230025 () Bool)

(assert (=> b!2800402 m!3230025))

(declare-fun m!3230027 () Bool)

(assert (=> setNonEmpty!24499 m!3230027))

(declare-fun m!3230029 () Bool)

(assert (=> b!2800404 m!3230029))

(declare-fun setIsEmpty!24500 () Bool)

(declare-fun setRes!24500 () Bool)

(assert (=> setIsEmpty!24500 setRes!24500))

(declare-fun e!1769394 () Bool)

(declare-fun tp!892224 () Bool)

(declare-fun b!2800407 () Bool)

(declare-fun e!1769395 () Bool)

(declare-fun tp!892222 () Bool)

(assert (=> b!2800407 (= e!1769394 (and tp!892222 (inv!44200 (_2!19638 (_1!19639 (h!37963 mapValue!18318)))) e!1769395 tp_is_empty!14251 setRes!24500 tp!892224))))

(declare-fun condSetEmpty!24500 () Bool)

(assert (=> b!2800407 (= condSetEmpty!24500 (= (_2!19639 (h!37963 mapValue!18318)) ((as const (Array Context!4874 Bool)) false)))))

(declare-fun b!2800408 () Bool)

(declare-fun e!1769396 () Bool)

(declare-fun tp!892221 () Bool)

(assert (=> b!2800408 (= e!1769396 tp!892221)))

(declare-fun b!2800409 () Bool)

(declare-fun tp!892220 () Bool)

(assert (=> b!2800409 (= e!1769395 tp!892220)))

(assert (=> mapNonEmpty!18317 (= tp!892115 e!1769394)))

(declare-fun setNonEmpty!24500 () Bool)

(declare-fun tp!892223 () Bool)

(declare-fun setElem!24500 () Context!4874)

(assert (=> setNonEmpty!24500 (= setRes!24500 (and tp!892223 (inv!44200 setElem!24500) e!1769396))))

(declare-fun setRest!24500 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24500 (= (_2!19639 (h!37963 mapValue!18318)) ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24500 true) setRest!24500))))

(assert (= b!2800407 b!2800409))

(assert (= (and b!2800407 condSetEmpty!24500) setIsEmpty!24500))

(assert (= (and b!2800407 (not condSetEmpty!24500)) setNonEmpty!24500))

(assert (= setNonEmpty!24500 b!2800408))

(assert (= (and mapNonEmpty!18317 ((_ is Cons!32543) mapValue!18318)) b!2800407))

(declare-fun m!3230031 () Bool)

(assert (=> b!2800407 m!3230031))

(declare-fun m!3230033 () Bool)

(assert (=> setNonEmpty!24500 m!3230033))

(declare-fun setIsEmpty!24501 () Bool)

(declare-fun setRes!24501 () Bool)

(assert (=> setIsEmpty!24501 setRes!24501))

(declare-fun e!1769398 () Bool)

(declare-fun e!1769397 () Bool)

(declare-fun tp!892227 () Bool)

(declare-fun tp!892229 () Bool)

(declare-fun b!2800410 () Bool)

(assert (=> b!2800410 (= e!1769397 (and tp!892227 (inv!44200 (_2!19638 (_1!19639 (h!37963 (zeroValue!4288 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009)))))))))) e!1769398 tp_is_empty!14251 setRes!24501 tp!892229))))

(declare-fun condSetEmpty!24501 () Bool)

(assert (=> b!2800410 (= condSetEmpty!24501 (= (_2!19639 (h!37963 (zeroValue!4288 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009)))))))) ((as const (Array Context!4874 Bool)) false)))))

(declare-fun b!2800411 () Bool)

(declare-fun e!1769399 () Bool)

(declare-fun tp!892226 () Bool)

(assert (=> b!2800411 (= e!1769399 tp!892226)))

(declare-fun b!2800412 () Bool)

(declare-fun tp!892225 () Bool)

(assert (=> b!2800412 (= e!1769398 tp!892225)))

(assert (=> b!2800175 (= tp!892107 e!1769397)))

(declare-fun setNonEmpty!24501 () Bool)

(declare-fun tp!892228 () Bool)

(declare-fun setElem!24501 () Context!4874)

(assert (=> setNonEmpty!24501 (= setRes!24501 (and tp!892228 (inv!44200 setElem!24501) e!1769399))))

(declare-fun setRest!24501 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24501 (= (_2!19639 (h!37963 (zeroValue!4288 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24501 true) setRest!24501))))

(assert (= b!2800410 b!2800412))

(assert (= (and b!2800410 condSetEmpty!24501) setIsEmpty!24501))

(assert (= (and b!2800410 (not condSetEmpty!24501)) setNonEmpty!24501))

(assert (= setNonEmpty!24501 b!2800411))

(assert (= (and b!2800175 ((_ is Cons!32543) (zeroValue!4288 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009)))))))) b!2800410))

(declare-fun m!3230035 () Bool)

(assert (=> b!2800410 m!3230035))

(declare-fun m!3230037 () Bool)

(assert (=> setNonEmpty!24501 m!3230037))

(declare-fun setIsEmpty!24502 () Bool)

(declare-fun setRes!24502 () Bool)

(assert (=> setIsEmpty!24502 setRes!24502))

(declare-fun e!1769400 () Bool)

(declare-fun b!2800413 () Bool)

(declare-fun e!1769401 () Bool)

(declare-fun tp!892234 () Bool)

(declare-fun tp!892232 () Bool)

(assert (=> b!2800413 (= e!1769400 (and tp!892232 (inv!44200 (_2!19638 (_1!19639 (h!37963 (minValue!4288 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009)))))))))) e!1769401 tp_is_empty!14251 setRes!24502 tp!892234))))

(declare-fun condSetEmpty!24502 () Bool)

(assert (=> b!2800413 (= condSetEmpty!24502 (= (_2!19639 (h!37963 (minValue!4288 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009)))))))) ((as const (Array Context!4874 Bool)) false)))))

(declare-fun b!2800414 () Bool)

(declare-fun e!1769402 () Bool)

(declare-fun tp!892231 () Bool)

(assert (=> b!2800414 (= e!1769402 tp!892231)))

(declare-fun b!2800415 () Bool)

(declare-fun tp!892230 () Bool)

(assert (=> b!2800415 (= e!1769401 tp!892230)))

(assert (=> b!2800175 (= tp!892103 e!1769400)))

(declare-fun setNonEmpty!24502 () Bool)

(declare-fun tp!892233 () Bool)

(declare-fun setElem!24502 () Context!4874)

(assert (=> setNonEmpty!24502 (= setRes!24502 (and tp!892233 (inv!44200 setElem!24502) e!1769402))))

(declare-fun setRest!24502 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24502 (= (_2!19639 (h!37963 (minValue!4288 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24502 true) setRest!24502))))

(assert (= b!2800413 b!2800415))

(assert (= (and b!2800413 condSetEmpty!24502) setIsEmpty!24502))

(assert (= (and b!2800413 (not condSetEmpty!24502)) setNonEmpty!24502))

(assert (= setNonEmpty!24502 b!2800414))

(assert (= (and b!2800175 ((_ is Cons!32543) (minValue!4288 (v!34144 (underlying!8261 (v!34145 (underlying!8262 (cache!4078 cacheDown!1009)))))))) b!2800413))

(declare-fun m!3230039 () Bool)

(assert (=> b!2800413 m!3230039))

(declare-fun m!3230041 () Bool)

(assert (=> setNonEmpty!24502 m!3230041))

(declare-fun setRes!24503 () Bool)

(declare-fun setElem!24503 () Context!4874)

(declare-fun tp!892238 () Bool)

(declare-fun e!1769405 () Bool)

(declare-fun setNonEmpty!24503 () Bool)

(assert (=> setNonEmpty!24503 (= setRes!24503 (and tp!892238 (inv!44200 setElem!24503) e!1769405))))

(declare-fun setRest!24503 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24503 (= (_2!19641 (h!37965 mapDefault!18318)) ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24503 true) setRest!24503))))

(declare-fun e!1769404 () Bool)

(assert (=> b!2800176 (= tp!892104 e!1769404)))

(declare-fun b!2800416 () Bool)

(declare-fun e!1769403 () Bool)

(declare-fun tp!892236 () Bool)

(assert (=> b!2800416 (= e!1769403 tp!892236)))

(declare-fun b!2800417 () Bool)

(declare-fun tp!892237 () Bool)

(assert (=> b!2800417 (= e!1769405 tp!892237)))

(declare-fun b!2800418 () Bool)

(declare-fun tp!892235 () Bool)

(assert (=> b!2800418 (= e!1769404 (and (inv!44200 (_1!19640 (_1!19641 (h!37965 mapDefault!18318)))) e!1769403 tp_is_empty!14251 setRes!24503 tp!892235))))

(declare-fun condSetEmpty!24503 () Bool)

(assert (=> b!2800418 (= condSetEmpty!24503 (= (_2!19641 (h!37965 mapDefault!18318)) ((as const (Array Context!4874 Bool)) false)))))

(declare-fun setIsEmpty!24503 () Bool)

(assert (=> setIsEmpty!24503 setRes!24503))

(assert (= b!2800418 b!2800416))

(assert (= (and b!2800418 condSetEmpty!24503) setIsEmpty!24503))

(assert (= (and b!2800418 (not condSetEmpty!24503)) setNonEmpty!24503))

(assert (= setNonEmpty!24503 b!2800417))

(assert (= (and b!2800176 ((_ is Cons!32545) mapDefault!18318)) b!2800418))

(declare-fun m!3230043 () Bool)

(assert (=> setNonEmpty!24503 m!3230043))

(declare-fun m!3230045 () Bool)

(assert (=> b!2800418 m!3230045))

(declare-fun b!2800423 () Bool)

(declare-fun e!1769408 () Bool)

(declare-fun tp!892243 () Bool)

(declare-fun tp!892244 () Bool)

(assert (=> b!2800423 (= e!1769408 (and tp!892243 tp!892244))))

(assert (=> b!2800159 (= tp!892112 e!1769408)))

(assert (= (and b!2800159 ((_ is Cons!32542) (exprs!2937 setElem!24478))) b!2800423))

(declare-fun setElem!24504 () Context!4874)

(declare-fun tp!892248 () Bool)

(declare-fun e!1769411 () Bool)

(declare-fun setRes!24504 () Bool)

(declare-fun setNonEmpty!24504 () Bool)

(assert (=> setNonEmpty!24504 (= setRes!24504 (and tp!892248 (inv!44200 setElem!24504) e!1769411))))

(declare-fun setRest!24504 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24504 (= (_2!19641 (h!37965 (zeroValue!4289 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24504 true) setRest!24504))))

(declare-fun e!1769410 () Bool)

(assert (=> b!2800166 (= tp!892106 e!1769410)))

(declare-fun b!2800424 () Bool)

(declare-fun e!1769409 () Bool)

(declare-fun tp!892246 () Bool)

(assert (=> b!2800424 (= e!1769409 tp!892246)))

(declare-fun b!2800425 () Bool)

(declare-fun tp!892247 () Bool)

(assert (=> b!2800425 (= e!1769411 tp!892247)))

(declare-fun tp!892245 () Bool)

(declare-fun b!2800426 () Bool)

(assert (=> b!2800426 (= e!1769410 (and (inv!44200 (_1!19640 (_1!19641 (h!37965 (zeroValue!4289 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890)))))))))) e!1769409 tp_is_empty!14251 setRes!24504 tp!892245))))

(declare-fun condSetEmpty!24504 () Bool)

(assert (=> b!2800426 (= condSetEmpty!24504 (= (_2!19641 (h!37965 (zeroValue!4289 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890)))))))) ((as const (Array Context!4874 Bool)) false)))))

(declare-fun setIsEmpty!24504 () Bool)

(assert (=> setIsEmpty!24504 setRes!24504))

(assert (= b!2800426 b!2800424))

(assert (= (and b!2800426 condSetEmpty!24504) setIsEmpty!24504))

(assert (= (and b!2800426 (not condSetEmpty!24504)) setNonEmpty!24504))

(assert (= setNonEmpty!24504 b!2800425))

(assert (= (and b!2800166 ((_ is Cons!32545) (zeroValue!4289 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890)))))))) b!2800426))

(declare-fun m!3230047 () Bool)

(assert (=> setNonEmpty!24504 m!3230047))

(declare-fun m!3230049 () Bool)

(assert (=> b!2800426 m!3230049))

(declare-fun setNonEmpty!24505 () Bool)

(declare-fun setElem!24505 () Context!4874)

(declare-fun tp!892252 () Bool)

(declare-fun e!1769414 () Bool)

(declare-fun setRes!24505 () Bool)

(assert (=> setNonEmpty!24505 (= setRes!24505 (and tp!892252 (inv!44200 setElem!24505) e!1769414))))

(declare-fun setRest!24505 () (InoxSet Context!4874))

(assert (=> setNonEmpty!24505 (= (_2!19641 (h!37965 (minValue!4289 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4874 Bool)) false) setElem!24505 true) setRest!24505))))

(declare-fun e!1769413 () Bool)

(assert (=> b!2800166 (= tp!892101 e!1769413)))

(declare-fun b!2800427 () Bool)

(declare-fun e!1769412 () Bool)

(declare-fun tp!892250 () Bool)

(assert (=> b!2800427 (= e!1769412 tp!892250)))

(declare-fun b!2800428 () Bool)

(declare-fun tp!892251 () Bool)

(assert (=> b!2800428 (= e!1769414 tp!892251)))

(declare-fun b!2800429 () Bool)

(declare-fun tp!892249 () Bool)

(assert (=> b!2800429 (= e!1769413 (and (inv!44200 (_1!19640 (_1!19641 (h!37965 (minValue!4289 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890)))))))))) e!1769412 tp_is_empty!14251 setRes!24505 tp!892249))))

(declare-fun condSetEmpty!24505 () Bool)

(assert (=> b!2800429 (= condSetEmpty!24505 (= (_2!19641 (h!37965 (minValue!4289 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890)))))))) ((as const (Array Context!4874 Bool)) false)))))

(declare-fun setIsEmpty!24505 () Bool)

(assert (=> setIsEmpty!24505 setRes!24505))

(assert (= b!2800429 b!2800427))

(assert (= (and b!2800429 condSetEmpty!24505) setIsEmpty!24505))

(assert (= (and b!2800429 (not condSetEmpty!24505)) setNonEmpty!24505))

(assert (= setNonEmpty!24505 b!2800428))

(assert (= (and b!2800166 ((_ is Cons!32545) (minValue!4289 (v!34146 (underlying!8263 (v!34147 (underlying!8264 (cache!4079 cacheUp!890)))))))) b!2800429))

(declare-fun m!3230051 () Bool)

(assert (=> setNonEmpty!24505 m!3230051))

(declare-fun m!3230053 () Bool)

(assert (=> b!2800429 m!3230053))

(declare-fun b!2800434 () Bool)

(declare-fun e!1769417 () Bool)

(declare-fun tp!892255 () Bool)

(assert (=> b!2800434 (= e!1769417 (and tp_is_empty!14251 tp!892255))))

(assert (=> b!2800173 (= tp!892102 e!1769417)))

(assert (= (and b!2800173 ((_ is Cons!32544) (t!228809 testedSuffix!143))) b!2800434))

(declare-fun b!2800435 () Bool)

(declare-fun e!1769418 () Bool)

(declare-fun tp!892256 () Bool)

(assert (=> b!2800435 (= e!1769418 (and tp_is_empty!14251 tp!892256))))

(assert (=> b!2800163 (= tp!892110 e!1769418)))

(assert (= (and b!2800163 ((_ is Cons!32544) (t!228809 testedP!183))) b!2800435))

(check-sat (not bm!182846) (not b!2800282) (not b!2800351) (not b!2800226) (not b!2800217) (not setNonEmpty!24504) (not b!2800213) (not setNonEmpty!24502) (not d!813576) (not b!2800428) (not d!813546) (not b!2800406) (not b!2800418) (not d!813556) (not b!2800403) (not b!2800405) (not setNonEmpty!24498) (not mapNonEmpty!18324) (not b!2800384) (not d!813512) (not d!813518) (not b!2800228) (not b!2800202) (not b!2800284) (not b!2800333) (not d!813534) (not b!2800401) (not b!2800374) (not b!2800154) (not b!2800416) (not b!2800327) (not setNonEmpty!24493) (not d!813538) (not d!813504) (not d!813524) (not b_next!80093) (not d!813562) (not d!813592) (not setNonEmpty!24503) (not b!2800435) (not d!813552) (not b!2800385) (not b!2800201) (not d!813522) (not b_next!80099) (not b!2800264) (not b!2800413) (not d!813550) (not mapNonEmpty!18321) (not b!2800301) b_and!204131 (not b!2800434) (not setNonEmpty!24486) (not setNonEmpty!24481) (not b!2800215) (not d!813584) (not b!2800402) (not d!813496) (not b!2800407) (not b!2800322) (not b_next!80095) (not b!2800364) (not b!2800424) (not b!2800290) (not b!2800415) (not b!2800386) (not b!2800313) (not d!813560) (not b!2800291) (not b!2800273) (not b!2800417) (not b!2800414) (not d!813520) (not b!2800283) b_and!204133 (not b!2800324) (not b!2800294) (not b!2800426) (not d!813572) (not b!2800412) (not b!2800348) (not b!2800429) (not b!2800272) (not b!2800362) (not setNonEmpty!24501) (not b!2800350) (not b!2800219) (not b!2800409) (not d!813558) (not b!2800307) (not b!2800234) (not b!2800410) (not bm!182847) (not b!2800316) (not d!813532) (not d!813588) tp_is_empty!14251 (not d!813506) (not b!2800188) (not b!2800425) (not b!2800286) (not b!2800218) (not b!2800261) (not b!2800295) (not b!2800373) (not b!2800349) (not d!813564) (not bm!182841) (not b!2800302) (not d!813540) (not b!2800328) (not b!2800411) (not setNonEmpty!24500) (not b!2800214) (not b!2800321) (not b_next!80097) (not b!2800276) (not b!2800353) (not b!2800423) (not b!2800308) (not b!2800191) (not b!2800404) (not d!813582) (not b!2800427) (not b!2800408) (not b!2800326) (not d!813530) (not b!2800287) (not b!2800271) b_and!204129 (not d!813548) (not setNonEmpty!24505) (not d!813590) (not setNonEmpty!24490) (not d!813566) (not b!2800375) (not b!2800279) (not setNonEmpty!24487) (not d!813500) (not b!2800278) b_and!204127 (not d!813596) (not setNonEmpty!24499) (not b!2800352) (not d!813554) (not b!2800363) (not b!2800258))
(check-sat (not b_next!80093) (not b_next!80099) b_and!204131 (not b_next!80095) b_and!204133 (not b_next!80097) b_and!204129 b_and!204127)
