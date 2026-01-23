; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270478 () Bool)

(assert start!270478)

(declare-fun b!2797847 () Bool)

(declare-fun b_free!79301 () Bool)

(declare-fun b_next!80005 () Bool)

(assert (=> b!2797847 (= b_free!79301 (not b_next!80005))))

(declare-fun tp!890863 () Bool)

(declare-fun b_and!204039 () Bool)

(assert (=> b!2797847 (= tp!890863 b_and!204039)))

(declare-fun b!2797839 () Bool)

(declare-fun b_free!79303 () Bool)

(declare-fun b_next!80007 () Bool)

(assert (=> b!2797839 (= b_free!79303 (not b_next!80007))))

(declare-fun tp!890875 () Bool)

(declare-fun b_and!204041 () Bool)

(assert (=> b!2797839 (= tp!890875 b_and!204041)))

(declare-fun b!2797853 () Bool)

(declare-fun b_free!79305 () Bool)

(declare-fun b_next!80009 () Bool)

(assert (=> b!2797853 (= b_free!79305 (not b_next!80009))))

(declare-fun tp!890872 () Bool)

(declare-fun b_and!204043 () Bool)

(assert (=> b!2797853 (= tp!890872 b_and!204043)))

(declare-fun b!2797845 () Bool)

(declare-fun b_free!79307 () Bool)

(declare-fun b_next!80011 () Bool)

(assert (=> b!2797845 (= b_free!79307 (not b_next!80011))))

(declare-fun tp!890859 () Bool)

(declare-fun b_and!204045 () Bool)

(assert (=> b!2797845 (= tp!890859 b_and!204045)))

(declare-fun mapIsEmpty!18231 () Bool)

(declare-fun mapRes!18231 () Bool)

(assert (=> mapIsEmpty!18231 mapRes!18231))

(declare-fun b!2797833 () Bool)

(declare-fun e!1767405 () Bool)

(declare-fun e!1767410 () Bool)

(assert (=> b!2797833 (= e!1767405 e!1767410)))

(declare-fun b!2797834 () Bool)

(declare-datatypes ((Unit!46626 0))(
  ( (Unit!46627) )
))
(declare-fun e!1767398 () Unit!46626)

(declare-fun Unit!46628 () Unit!46626)

(assert (=> b!2797834 (= e!1767398 Unit!46628)))

(declare-fun lt!999732 () Unit!46626)

(declare-datatypes ((C!16576 0))(
  ( (C!16577 (val!10222 Int)) )
))
(declare-datatypes ((List!32601 0))(
  ( (Nil!32501) (Cons!32501 (h!37921 C!16576) (t!228761 List!32601)) )
))
(declare-fun lt!999721 () List!32601)

(declare-fun lemmaIsPrefixRefl!1713 (List!32601 List!32601) Unit!46626)

(assert (=> b!2797834 (= lt!999732 (lemmaIsPrefixRefl!1713 lt!999721 lt!999721))))

(declare-fun isPrefix!2629 (List!32601 List!32601) Bool)

(assert (=> b!2797834 (isPrefix!2629 lt!999721 lt!999721)))

(declare-fun lt!999731 () Unit!46626)

(declare-fun testedP!183 () List!32601)

(declare-fun lemmaIsPrefixSameLengthThenSameList!489 (List!32601 List!32601 List!32601) Unit!46626)

(assert (=> b!2797834 (= lt!999731 (lemmaIsPrefixSameLengthThenSameList!489 lt!999721 testedP!183 lt!999721))))

(assert (=> b!2797834 false))

(declare-fun b!2797835 () Bool)

(declare-fun e!1767396 () Bool)

(declare-datatypes ((IArray!20143 0))(
  ( (IArray!20144 (innerList!10129 List!32601)) )
))
(declare-datatypes ((Conc!10069 0))(
  ( (Node!10069 (left!24571 Conc!10069) (right!24901 Conc!10069) (csize!20368 Int) (cheight!10280 Int)) (Leaf!15342 (xs!13181 IArray!20143) (csize!20369 Int)) (Empty!10069) )
))
(declare-datatypes ((BalanceConc!19752 0))(
  ( (BalanceConc!19753 (c!453745 Conc!10069)) )
))
(declare-fun totalInput!758 () BalanceConc!19752)

(declare-fun tp!890867 () Bool)

(declare-fun inv!44142 (Conc!10069) Bool)

(assert (=> b!2797835 (= e!1767396 (and (inv!44142 (c!453745 totalInput!758)) tp!890867))))

(declare-fun b!2797836 () Bool)

(declare-fun e!1767413 () Bool)

(declare-fun e!1767418 () Bool)

(assert (=> b!2797836 (= e!1767413 e!1767418)))

(declare-fun res!1166216 () Bool)

(assert (=> b!2797836 (=> (not res!1166216) (not e!1767418))))

(declare-fun totalInputSize!205 () Int)

(declare-fun lt!999723 () Int)

(assert (=> b!2797836 (= res!1166216 (= totalInputSize!205 lt!999723))))

(declare-fun size!25352 (BalanceConc!19752) Int)

(assert (=> b!2797836 (= lt!999723 (size!25352 totalInput!758))))

(declare-fun b!2797837 () Bool)

(declare-fun e!1767393 () Bool)

(declare-fun e!1767414 () Bool)

(assert (=> b!2797837 (= e!1767393 e!1767414)))

(declare-fun res!1166213 () Bool)

(assert (=> b!2797837 (=> res!1166213 e!1767414)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8209 0))(
  ( (ElementMatch!8209 (c!453746 C!16576)) (Concat!13297 (regOne!16930 Regex!8209) (regTwo!16930 Regex!8209)) (EmptyExpr!8209) (Star!8209 (reg!8538 Regex!8209)) (EmptyLang!8209) (Union!8209 (regOne!16931 Regex!8209) (regTwo!16931 Regex!8209)) )
))
(declare-datatypes ((List!32602 0))(
  ( (Nil!32502) (Cons!32502 (h!37922 Regex!8209) (t!228762 List!32602)) )
))
(declare-datatypes ((Context!4854 0))(
  ( (Context!4855 (exprs!2927 List!32602)) )
))
(declare-fun z!3684 () (InoxSet Context!4854))

(declare-fun lostCauseZipper!501 ((InoxSet Context!4854)) Bool)

(assert (=> b!2797837 (= res!1166213 (lostCauseZipper!501 z!3684))))

(declare-fun testedSuffix!143 () List!32601)

(declare-fun lt!999717 () List!32601)

(assert (=> b!2797837 (and (= testedSuffix!143 lt!999717) (= lt!999717 testedSuffix!143))))

(declare-fun lt!999726 () Unit!46626)

(declare-fun lemmaSamePrefixThenSameSuffix!1204 (List!32601 List!32601 List!32601 List!32601 List!32601) Unit!46626)

(assert (=> b!2797837 (= lt!999726 (lemmaSamePrefixThenSameSuffix!1204 testedP!183 testedSuffix!143 testedP!183 lt!999717 lt!999721))))

(declare-fun getSuffix!1306 (List!32601 List!32601) List!32601)

(assert (=> b!2797837 (= lt!999717 (getSuffix!1306 lt!999721 testedP!183))))

(declare-fun b!2797838 () Bool)

(declare-fun e!1767408 () Bool)

(declare-fun tp!890873 () Bool)

(declare-fun mapRes!18232 () Bool)

(assert (=> b!2797838 (= e!1767408 (and tp!890873 mapRes!18232))))

(declare-fun condMapEmpty!18232 () Bool)

(declare-datatypes ((Hashable!3926 0))(
  ( (HashableExt!3925 (__x!21680 Int)) )
))
(declare-datatypes ((tuple2!33074 0))(
  ( (tuple2!33075 (_1!19583 Context!4854) (_2!19583 C!16576)) )
))
(declare-datatypes ((tuple2!33076 0))(
  ( (tuple2!33077 (_1!19584 tuple2!33074) (_2!19584 (InoxSet Context!4854))) )
))
(declare-datatypes ((List!32603 0))(
  ( (Nil!32503) (Cons!32503 (h!37923 tuple2!33076) (t!228763 List!32603)) )
))
(declare-datatypes ((array!14255 0))(
  ( (array!14256 (arr!6352 (Array (_ BitVec 32) List!32603)) (size!25353 (_ BitVec 32))) )
))
(declare-datatypes ((array!14257 0))(
  ( (array!14258 (arr!6353 (Array (_ BitVec 32) (_ BitVec 64))) (size!25354 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8020 0))(
  ( (LongMapFixedSize!8021 (defaultEntry!4395 Int) (mask!9851 (_ BitVec 32)) (extraKeys!4259 (_ BitVec 32)) (zeroValue!4269 List!32603) (minValue!4269 List!32603) (_size!8063 (_ BitVec 32)) (_keys!4310 array!14257) (_values!4291 array!14255) (_vacant!4071 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15849 0))(
  ( (Cell!15850 (v!34102 LongMapFixedSize!8020)) )
))
(declare-datatypes ((MutLongMap!4010 0))(
  ( (LongMap!4010 (underlying!8223 Cell!15849)) (MutLongMapExt!4009 (__x!21681 Int)) )
))
(declare-datatypes ((Cell!15851 0))(
  ( (Cell!15852 (v!34103 MutLongMap!4010)) )
))
(declare-datatypes ((MutableMap!3916 0))(
  ( (MutableMapExt!3915 (__x!21682 Int)) (HashMap!3916 (underlying!8224 Cell!15851) (hashF!5958 Hashable!3926) (_size!8064 (_ BitVec 32)) (defaultValue!4087 Int)) )
))
(declare-datatypes ((CacheUp!2620 0))(
  ( (CacheUp!2621 (cache!4059 MutableMap!3916)) )
))
(declare-fun cacheUp!890 () CacheUp!2620)

(declare-fun mapDefault!18232 () List!32603)

(assert (=> b!2797838 (= condMapEmpty!18232 (= (arr!6352 (_values!4291 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32603)) mapDefault!18232)))))

(declare-fun tp!890866 () Bool)

(declare-fun e!1767401 () Bool)

(declare-fun tp!890858 () Bool)

(declare-fun array_inv!4547 (array!14257) Bool)

(declare-fun array_inv!4548 (array!14255) Bool)

(assert (=> b!2797839 (= e!1767401 (and tp!890875 tp!890866 tp!890858 (array_inv!4547 (_keys!4310 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890))))))) (array_inv!4548 (_values!4291 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890))))))) e!1767408))))

(declare-fun b!2797840 () Bool)

(assert (=> b!2797840 (= e!1767418 (not e!1767393))))

(declare-fun res!1166208 () Bool)

(assert (=> b!2797840 (=> res!1166208 e!1767393)))

(assert (=> b!2797840 (= res!1166208 (not (isPrefix!2629 testedP!183 lt!999721)))))

(declare-fun lt!999725 () List!32601)

(assert (=> b!2797840 (isPrefix!2629 testedP!183 lt!999725)))

(declare-fun lt!999718 () Unit!46626)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1737 (List!32601 List!32601) Unit!46626)

(assert (=> b!2797840 (= lt!999718 (lemmaConcatTwoListThenFirstIsPrefix!1737 testedP!183 testedSuffix!143))))

(declare-fun b!2797841 () Bool)

(declare-fun res!1166210 () Bool)

(declare-fun e!1767394 () Bool)

(assert (=> b!2797841 (=> res!1166210 e!1767394)))

(declare-datatypes ((tuple2!33078 0))(
  ( (tuple2!33079 (_1!19585 BalanceConc!19752) (_2!19585 BalanceConc!19752)) )
))
(declare-fun lt!999735 () tuple2!33078)

(declare-fun testedPSize!143 () Int)

(assert (=> b!2797841 (= res!1166210 (not (= (size!25352 (_1!19585 lt!999735)) testedPSize!143)))))

(declare-fun b!2797842 () Bool)

(declare-fun e!1767407 () Bool)

(declare-fun tp!890868 () Bool)

(assert (=> b!2797842 (= e!1767407 tp!890868)))

(declare-fun b!2797843 () Bool)

(declare-fun res!1166218 () Bool)

(assert (=> b!2797843 (=> (not res!1166218) (not e!1767418))))

(declare-datatypes ((tuple3!5152 0))(
  ( (tuple3!5153 (_1!19586 Regex!8209) (_2!19586 Context!4854) (_3!3046 C!16576)) )
))
(declare-datatypes ((tuple2!33080 0))(
  ( (tuple2!33081 (_1!19587 tuple3!5152) (_2!19587 (InoxSet Context!4854))) )
))
(declare-datatypes ((List!32604 0))(
  ( (Nil!32504) (Cons!32504 (h!37924 tuple2!33080) (t!228764 List!32604)) )
))
(declare-datatypes ((array!14259 0))(
  ( (array!14260 (arr!6354 (Array (_ BitVec 32) List!32604)) (size!25355 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8022 0))(
  ( (LongMapFixedSize!8023 (defaultEntry!4396 Int) (mask!9852 (_ BitVec 32)) (extraKeys!4260 (_ BitVec 32)) (zeroValue!4270 List!32604) (minValue!4270 List!32604) (_size!8065 (_ BitVec 32)) (_keys!4311 array!14257) (_values!4292 array!14259) (_vacant!4072 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15853 0))(
  ( (Cell!15854 (v!34104 LongMapFixedSize!8022)) )
))
(declare-datatypes ((MutLongMap!4011 0))(
  ( (LongMap!4011 (underlying!8225 Cell!15853)) (MutLongMapExt!4010 (__x!21683 Int)) )
))
(declare-datatypes ((Cell!15855 0))(
  ( (Cell!15856 (v!34105 MutLongMap!4011)) )
))
(declare-datatypes ((Hashable!3927 0))(
  ( (HashableExt!3926 (__x!21684 Int)) )
))
(declare-datatypes ((MutableMap!3917 0))(
  ( (MutableMapExt!3916 (__x!21685 Int)) (HashMap!3917 (underlying!8226 Cell!15855) (hashF!5959 Hashable!3927) (_size!8066 (_ BitVec 32)) (defaultValue!4088 Int)) )
))
(declare-datatypes ((CacheDown!2744 0))(
  ( (CacheDown!2745 (cache!4060 MutableMap!3917)) )
))
(declare-fun cacheDown!1009 () CacheDown!2744)

(declare-fun valid!3139 (CacheDown!2744) Bool)

(assert (=> b!2797843 (= res!1166218 (valid!3139 cacheDown!1009))))

(declare-fun b!2797844 () Bool)

(declare-fun e!1767417 () Bool)

(declare-fun e!1767390 () Bool)

(assert (=> b!2797844 (= e!1767417 e!1767390)))

(declare-fun setNonEmpty!24335 () Bool)

(declare-fun setElem!24335 () Context!4854)

(declare-fun tp!890871 () Bool)

(declare-fun setRes!24335 () Bool)

(declare-fun inv!44143 (Context!4854) Bool)

(assert (=> setNonEmpty!24335 (= setRes!24335 (and tp!890871 (inv!44143 setElem!24335) e!1767407))))

(declare-fun setRest!24335 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24335 (= z!3684 ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24335 true) setRest!24335))))

(declare-fun res!1166211 () Bool)

(declare-fun e!1767406 () Bool)

(assert (=> start!270478 (=> (not res!1166211) (not e!1767406))))

(assert (=> start!270478 (= res!1166211 (= lt!999725 lt!999721))))

(declare-fun list!12205 (BalanceConc!19752) List!32601)

(assert (=> start!270478 (= lt!999721 (list!12205 totalInput!758))))

(declare-fun ++!8015 (List!32601 List!32601) List!32601)

(assert (=> start!270478 (= lt!999725 (++!8015 testedP!183 testedSuffix!143))))

(assert (=> start!270478 e!1767406))

(declare-fun inv!44144 (BalanceConc!19752) Bool)

(assert (=> start!270478 (and (inv!44144 totalInput!758) e!1767396)))

(declare-fun condSetEmpty!24335 () Bool)

(assert (=> start!270478 (= condSetEmpty!24335 (= z!3684 ((as const (Array Context!4854 Bool)) false)))))

(assert (=> start!270478 setRes!24335))

(assert (=> start!270478 true))

(declare-fun e!1767412 () Bool)

(assert (=> start!270478 e!1767412))

(declare-fun e!1767415 () Bool)

(assert (=> start!270478 e!1767415))

(declare-fun inv!44145 (CacheDown!2744) Bool)

(assert (=> start!270478 (and (inv!44145 cacheDown!1009) e!1767405)))

(declare-fun e!1767395 () Bool)

(declare-fun inv!44146 (CacheUp!2620) Bool)

(assert (=> start!270478 (and (inv!44146 cacheUp!890) e!1767395)))

(declare-fun e!1767411 () Bool)

(assert (=> b!2797845 (= e!1767410 (and e!1767411 tp!890859))))

(declare-fun b!2797846 () Bool)

(declare-fun e!1767404 () Bool)

(declare-fun lt!999736 () C!16576)

(declare-fun tail!4423 (List!32601) List!32601)

(assert (=> b!2797846 (= e!1767404 (= (++!8015 testedP!183 (Cons!32501 lt!999736 (tail!4423 testedSuffix!143))) lt!999721))))

(declare-fun head!6195 (List!32601) C!16576)

(assert (=> b!2797846 (isPrefix!2629 (++!8015 testedP!183 (Cons!32501 (head!6195 lt!999717) Nil!32501)) lt!999721)))

(declare-fun lt!999727 () Unit!46626)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!479 (List!32601 List!32601) Unit!46626)

(assert (=> b!2797846 (= lt!999727 (lemmaAddHeadSuffixToPrefixStillPrefix!479 testedP!183 lt!999721))))

(declare-fun e!1767402 () Bool)

(declare-fun e!1767399 () Bool)

(assert (=> b!2797847 (= e!1767402 (and e!1767399 tp!890863))))

(declare-fun b!2797848 () Bool)

(declare-fun e!1767397 () Bool)

(assert (=> b!2797848 (= e!1767397 e!1767401)))

(declare-fun mapNonEmpty!18231 () Bool)

(declare-fun tp!890860 () Bool)

(declare-fun tp!890876 () Bool)

(assert (=> mapNonEmpty!18231 (= mapRes!18232 (and tp!890860 tp!890876))))

(declare-fun mapRest!18231 () (Array (_ BitVec 32) List!32603))

(declare-fun mapKey!18232 () (_ BitVec 32))

(declare-fun mapValue!18232 () List!32603)

(assert (=> mapNonEmpty!18231 (= (arr!6352 (_values!4291 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890))))))) (store mapRest!18231 mapKey!18232 mapValue!18232))))

(declare-fun b!2797849 () Bool)

(declare-fun Unit!46629 () Unit!46626)

(assert (=> b!2797849 (= e!1767398 Unit!46629)))

(declare-fun b!2797850 () Bool)

(declare-fun tp_is_empty!14231 () Bool)

(declare-fun tp!890874 () Bool)

(assert (=> b!2797850 (= e!1767412 (and tp_is_empty!14231 tp!890874))))

(declare-fun b!2797851 () Bool)

(declare-fun e!1767392 () Bool)

(declare-fun tp!890864 () Bool)

(assert (=> b!2797851 (= e!1767392 (and tp!890864 mapRes!18231))))

(declare-fun condMapEmpty!18231 () Bool)

(declare-fun mapDefault!18231 () List!32604)

(assert (=> b!2797851 (= condMapEmpty!18231 (= (arr!6354 (_values!4292 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32604)) mapDefault!18231)))))

(declare-fun mapNonEmpty!18232 () Bool)

(declare-fun tp!890865 () Bool)

(declare-fun tp!890869 () Bool)

(assert (=> mapNonEmpty!18232 (= mapRes!18231 (and tp!890865 tp!890869))))

(declare-fun mapValue!18231 () List!32604)

(declare-fun mapRest!18232 () (Array (_ BitVec 32) List!32604))

(declare-fun mapKey!18231 () (_ BitVec 32))

(assert (=> mapNonEmpty!18232 (= (arr!6354 (_values!4292 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009))))))) (store mapRest!18232 mapKey!18231 mapValue!18231))))

(declare-fun b!2797852 () Bool)

(declare-fun res!1166215 () Bool)

(assert (=> b!2797852 (=> (not res!1166215) (not e!1767418))))

(declare-fun valid!3140 (CacheUp!2620) Bool)

(assert (=> b!2797852 (= res!1166215 (valid!3140 cacheUp!890))))

(declare-fun tp!890862 () Bool)

(declare-fun tp!890870 () Bool)

(declare-fun array_inv!4549 (array!14259) Bool)

(assert (=> b!2797853 (= e!1767390 (and tp!890872 tp!890862 tp!890870 (array_inv!4547 (_keys!4311 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009))))))) (array_inv!4549 (_values!4292 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009))))))) e!1767392))))

(declare-fun b!2797854 () Bool)

(declare-fun e!1767403 () Bool)

(assert (=> b!2797854 (= e!1767403 e!1767404)))

(declare-fun res!1166212 () Bool)

(assert (=> b!2797854 (=> res!1166212 e!1767404)))

(declare-fun lt!999728 () Int)

(assert (=> b!2797854 (= res!1166212 (>= lt!999728 lt!999723))))

(declare-fun lt!999719 () Unit!46626)

(assert (=> b!2797854 (= lt!999719 e!1767398)))

(declare-fun c!453744 () Bool)

(assert (=> b!2797854 (= c!453744 (= lt!999728 lt!999723))))

(declare-fun size!25356 (List!32601) Int)

(assert (=> b!2797854 (<= lt!999728 (size!25356 lt!999721))))

(declare-fun lt!999722 () Unit!46626)

(declare-fun lemmaIsPrefixThenSmallerEqSize!289 (List!32601 List!32601) Unit!46626)

(assert (=> b!2797854 (= lt!999722 (lemmaIsPrefixThenSmallerEqSize!289 testedP!183 lt!999721))))

(declare-fun b!2797855 () Bool)

(declare-fun res!1166217 () Bool)

(assert (=> b!2797855 (=> res!1166217 e!1767414)))

(assert (=> b!2797855 (= res!1166217 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2797856 () Bool)

(assert (=> b!2797856 (= e!1767406 e!1767413)))

(declare-fun res!1166214 () Bool)

(assert (=> b!2797856 (=> (not res!1166214) (not e!1767413))))

(assert (=> b!2797856 (= res!1166214 (= testedPSize!143 lt!999728))))

(assert (=> b!2797856 (= lt!999728 (size!25356 testedP!183))))

(declare-fun b!2797857 () Bool)

(declare-fun e!1767391 () Bool)

(assert (=> b!2797857 (= e!1767391 e!1767417)))

(declare-fun b!2797858 () Bool)

(declare-fun tp!890861 () Bool)

(assert (=> b!2797858 (= e!1767415 (and tp_is_empty!14231 tp!890861))))

(declare-fun b!2797859 () Bool)

(declare-fun e!1767400 () Bool)

(declare-fun lt!999729 () MutLongMap!4010)

(get-info :version)

(assert (=> b!2797859 (= e!1767399 (and e!1767400 ((_ is LongMap!4010) lt!999729)))))

(assert (=> b!2797859 (= lt!999729 (v!34103 (underlying!8224 (cache!4059 cacheUp!890))))))

(declare-fun setIsEmpty!24335 () Bool)

(assert (=> setIsEmpty!24335 setRes!24335))

(declare-fun b!2797860 () Bool)

(declare-fun lt!999720 () MutLongMap!4011)

(assert (=> b!2797860 (= e!1767411 (and e!1767391 ((_ is LongMap!4011) lt!999720)))))

(assert (=> b!2797860 (= lt!999720 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009))))))

(declare-fun b!2797861 () Bool)

(assert (=> b!2797861 (= e!1767395 e!1767402)))

(declare-fun b!2797862 () Bool)

(assert (=> b!2797862 (= e!1767400 e!1767397)))

(declare-fun b!2797863 () Bool)

(assert (=> b!2797863 (= e!1767414 e!1767394)))

(declare-fun res!1166209 () Bool)

(assert (=> b!2797863 (=> res!1166209 e!1767394)))

(declare-fun lt!999734 () List!32601)

(declare-fun lt!999724 () List!32601)

(assert (=> b!2797863 (= res!1166209 (not (= (++!8015 lt!999734 lt!999724) lt!999721)))))

(assert (=> b!2797863 (= lt!999724 (list!12205 (_2!19585 lt!999735)))))

(assert (=> b!2797863 (= lt!999734 (list!12205 (_1!19585 lt!999735)))))

(declare-fun splitAt!187 (BalanceConc!19752 Int) tuple2!33078)

(assert (=> b!2797863 (= lt!999735 (splitAt!187 totalInput!758 testedPSize!143))))

(declare-fun b!2797864 () Bool)

(assert (=> b!2797864 (= e!1767394 e!1767403)))

(declare-fun res!1166207 () Bool)

(assert (=> b!2797864 (=> res!1166207 e!1767403)))

(assert (=> b!2797864 (= res!1166207 (not (= lt!999736 (head!6195 testedSuffix!143))))))

(declare-fun apply!7588 (BalanceConc!19752 Int) C!16576)

(assert (=> b!2797864 (= lt!999736 (apply!7588 totalInput!758 testedPSize!143))))

(declare-fun drop!1743 (List!32601 Int) List!32601)

(declare-fun apply!7589 (List!32601 Int) C!16576)

(assert (=> b!2797864 (= (head!6195 (drop!1743 lt!999721 testedPSize!143)) (apply!7589 lt!999721 testedPSize!143))))

(declare-fun lt!999733 () Unit!46626)

(declare-fun lemmaDropApply!947 (List!32601 Int) Unit!46626)

(assert (=> b!2797864 (= lt!999733 (lemmaDropApply!947 lt!999721 testedPSize!143))))

(assert (=> b!2797864 (not (or (not (= lt!999734 testedP!183)) (not (= lt!999724 testedSuffix!143))))))

(declare-fun lt!999730 () Unit!46626)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!377 (List!32601 List!32601 List!32601 List!32601) Unit!46626)

(assert (=> b!2797864 (= lt!999730 (lemmaConcatSameAndSameSizesThenSameLists!377 lt!999734 lt!999724 testedP!183 testedSuffix!143))))

(declare-fun mapIsEmpty!18232 () Bool)

(assert (=> mapIsEmpty!18232 mapRes!18232))

(assert (= (and start!270478 res!1166211) b!2797856))

(assert (= (and b!2797856 res!1166214) b!2797836))

(assert (= (and b!2797836 res!1166216) b!2797852))

(assert (= (and b!2797852 res!1166215) b!2797843))

(assert (= (and b!2797843 res!1166218) b!2797840))

(assert (= (and b!2797840 (not res!1166208)) b!2797837))

(assert (= (and b!2797837 (not res!1166213)) b!2797855))

(assert (= (and b!2797855 (not res!1166217)) b!2797863))

(assert (= (and b!2797863 (not res!1166209)) b!2797841))

(assert (= (and b!2797841 (not res!1166210)) b!2797864))

(assert (= (and b!2797864 (not res!1166207)) b!2797854))

(assert (= (and b!2797854 c!453744) b!2797834))

(assert (= (and b!2797854 (not c!453744)) b!2797849))

(assert (= (and b!2797854 (not res!1166212)) b!2797846))

(assert (= start!270478 b!2797835))

(assert (= (and start!270478 condSetEmpty!24335) setIsEmpty!24335))

(assert (= (and start!270478 (not condSetEmpty!24335)) setNonEmpty!24335))

(assert (= setNonEmpty!24335 b!2797842))

(assert (= (and start!270478 ((_ is Cons!32501) testedP!183)) b!2797850))

(assert (= (and start!270478 ((_ is Cons!32501) testedSuffix!143)) b!2797858))

(assert (= (and b!2797851 condMapEmpty!18231) mapIsEmpty!18231))

(assert (= (and b!2797851 (not condMapEmpty!18231)) mapNonEmpty!18232))

(assert (= b!2797853 b!2797851))

(assert (= b!2797844 b!2797853))

(assert (= b!2797857 b!2797844))

(assert (= (and b!2797860 ((_ is LongMap!4011) (v!34105 (underlying!8226 (cache!4060 cacheDown!1009))))) b!2797857))

(assert (= b!2797845 b!2797860))

(assert (= (and b!2797833 ((_ is HashMap!3917) (cache!4060 cacheDown!1009))) b!2797845))

(assert (= start!270478 b!2797833))

(assert (= (and b!2797838 condMapEmpty!18232) mapIsEmpty!18232))

(assert (= (and b!2797838 (not condMapEmpty!18232)) mapNonEmpty!18231))

(assert (= b!2797839 b!2797838))

(assert (= b!2797848 b!2797839))

(assert (= b!2797862 b!2797848))

(assert (= (and b!2797859 ((_ is LongMap!4010) (v!34103 (underlying!8224 (cache!4059 cacheUp!890))))) b!2797862))

(assert (= b!2797847 b!2797859))

(assert (= (and b!2797861 ((_ is HashMap!3916) (cache!4059 cacheUp!890))) b!2797847))

(assert (= start!270478 b!2797861))

(declare-fun m!3227279 () Bool)

(assert (=> b!2797835 m!3227279))

(declare-fun m!3227281 () Bool)

(assert (=> start!270478 m!3227281))

(declare-fun m!3227283 () Bool)

(assert (=> start!270478 m!3227283))

(declare-fun m!3227285 () Bool)

(assert (=> start!270478 m!3227285))

(declare-fun m!3227287 () Bool)

(assert (=> start!270478 m!3227287))

(declare-fun m!3227289 () Bool)

(assert (=> start!270478 m!3227289))

(declare-fun m!3227291 () Bool)

(assert (=> b!2797863 m!3227291))

(declare-fun m!3227293 () Bool)

(assert (=> b!2797863 m!3227293))

(declare-fun m!3227295 () Bool)

(assert (=> b!2797863 m!3227295))

(declare-fun m!3227297 () Bool)

(assert (=> b!2797863 m!3227297))

(declare-fun m!3227299 () Bool)

(assert (=> b!2797853 m!3227299))

(declare-fun m!3227301 () Bool)

(assert (=> b!2797853 m!3227301))

(declare-fun m!3227303 () Bool)

(assert (=> b!2797839 m!3227303))

(declare-fun m!3227305 () Bool)

(assert (=> b!2797839 m!3227305))

(declare-fun m!3227307 () Bool)

(assert (=> b!2797852 m!3227307))

(declare-fun m!3227309 () Bool)

(assert (=> b!2797836 m!3227309))

(declare-fun m!3227311 () Bool)

(assert (=> b!2797841 m!3227311))

(declare-fun m!3227313 () Bool)

(assert (=> mapNonEmpty!18231 m!3227313))

(declare-fun m!3227315 () Bool)

(assert (=> mapNonEmpty!18232 m!3227315))

(declare-fun m!3227317 () Bool)

(assert (=> b!2797856 m!3227317))

(declare-fun m!3227319 () Bool)

(assert (=> setNonEmpty!24335 m!3227319))

(declare-fun m!3227321 () Bool)

(assert (=> b!2797864 m!3227321))

(declare-fun m!3227323 () Bool)

(assert (=> b!2797864 m!3227323))

(declare-fun m!3227325 () Bool)

(assert (=> b!2797864 m!3227325))

(declare-fun m!3227327 () Bool)

(assert (=> b!2797864 m!3227327))

(declare-fun m!3227329 () Bool)

(assert (=> b!2797864 m!3227329))

(declare-fun m!3227331 () Bool)

(assert (=> b!2797864 m!3227331))

(declare-fun m!3227333 () Bool)

(assert (=> b!2797864 m!3227333))

(assert (=> b!2797864 m!3227331))

(declare-fun m!3227335 () Bool)

(assert (=> b!2797846 m!3227335))

(declare-fun m!3227337 () Bool)

(assert (=> b!2797846 m!3227337))

(declare-fun m!3227339 () Bool)

(assert (=> b!2797846 m!3227339))

(declare-fun m!3227341 () Bool)

(assert (=> b!2797846 m!3227341))

(declare-fun m!3227343 () Bool)

(assert (=> b!2797846 m!3227343))

(declare-fun m!3227345 () Bool)

(assert (=> b!2797846 m!3227345))

(assert (=> b!2797846 m!3227337))

(declare-fun m!3227347 () Bool)

(assert (=> b!2797837 m!3227347))

(declare-fun m!3227349 () Bool)

(assert (=> b!2797837 m!3227349))

(declare-fun m!3227351 () Bool)

(assert (=> b!2797837 m!3227351))

(declare-fun m!3227353 () Bool)

(assert (=> b!2797843 m!3227353))

(declare-fun m!3227355 () Bool)

(assert (=> b!2797854 m!3227355))

(declare-fun m!3227357 () Bool)

(assert (=> b!2797854 m!3227357))

(declare-fun m!3227359 () Bool)

(assert (=> b!2797840 m!3227359))

(declare-fun m!3227361 () Bool)

(assert (=> b!2797840 m!3227361))

(declare-fun m!3227363 () Bool)

(assert (=> b!2797840 m!3227363))

(declare-fun m!3227365 () Bool)

(assert (=> b!2797834 m!3227365))

(declare-fun m!3227367 () Bool)

(assert (=> b!2797834 m!3227367))

(declare-fun m!3227369 () Bool)

(assert (=> b!2797834 m!3227369))

(check-sat (not b!2797853) (not b_next!80007) (not b_next!80009) b_and!204041 (not start!270478) (not b!2797837) (not b!2797841) b_and!204045 (not setNonEmpty!24335) tp_is_empty!14231 (not b!2797850) (not b!2797852) (not mapNonEmpty!18232) b_and!204039 (not b!2797863) (not b!2797843) (not b!2797836) (not b!2797864) (not b!2797842) (not mapNonEmpty!18231) (not b!2797839) (not b!2797854) b_and!204043 (not b!2797851) (not b!2797840) (not b!2797834) (not b_next!80011) (not b!2797838) (not b!2797846) (not b!2797858) (not b!2797856) (not b!2797835) (not b_next!80005))
(check-sat b_and!204039 (not b_next!80007) (not b_next!80009) b_and!204041 b_and!204043 (not b_next!80011) b_and!204045 (not b_next!80005))
(get-model)

(declare-fun d!812943 () Bool)

(declare-fun validCacheMapDown!427 (MutableMap!3917) Bool)

(assert (=> d!812943 (= (valid!3139 cacheDown!1009) (validCacheMapDown!427 (cache!4060 cacheDown!1009)))))

(declare-fun bs!515078 () Bool)

(assert (= bs!515078 d!812943))

(declare-fun m!3227371 () Bool)

(assert (=> bs!515078 m!3227371))

(assert (=> b!2797843 d!812943))

(declare-fun d!812945 () Bool)

(declare-fun validCacheMapUp!396 (MutableMap!3916) Bool)

(assert (=> d!812945 (= (valid!3140 cacheUp!890) (validCacheMapUp!396 (cache!4059 cacheUp!890)))))

(declare-fun bs!515079 () Bool)

(assert (= bs!515079 d!812945))

(declare-fun m!3227373 () Bool)

(assert (=> bs!515079 m!3227373))

(assert (=> b!2797852 d!812945))

(declare-fun b!2797875 () Bool)

(declare-fun e!1767427 () Bool)

(assert (=> b!2797875 (= e!1767427 (isPrefix!2629 (tail!4423 testedP!183) (tail!4423 lt!999721)))))

(declare-fun b!2797874 () Bool)

(declare-fun res!1166227 () Bool)

(assert (=> b!2797874 (=> (not res!1166227) (not e!1767427))))

(assert (=> b!2797874 (= res!1166227 (= (head!6195 testedP!183) (head!6195 lt!999721)))))

(declare-fun b!2797873 () Bool)

(declare-fun e!1767426 () Bool)

(assert (=> b!2797873 (= e!1767426 e!1767427)))

(declare-fun res!1166230 () Bool)

(assert (=> b!2797873 (=> (not res!1166230) (not e!1767427))))

(assert (=> b!2797873 (= res!1166230 (not ((_ is Nil!32501) lt!999721)))))

(declare-fun b!2797876 () Bool)

(declare-fun e!1767425 () Bool)

(assert (=> b!2797876 (= e!1767425 (>= (size!25356 lt!999721) (size!25356 testedP!183)))))

(declare-fun d!812947 () Bool)

(assert (=> d!812947 e!1767425))

(declare-fun res!1166228 () Bool)

(assert (=> d!812947 (=> res!1166228 e!1767425)))

(declare-fun lt!999739 () Bool)

(assert (=> d!812947 (= res!1166228 (not lt!999739))))

(assert (=> d!812947 (= lt!999739 e!1767426)))

(declare-fun res!1166229 () Bool)

(assert (=> d!812947 (=> res!1166229 e!1767426)))

(assert (=> d!812947 (= res!1166229 ((_ is Nil!32501) testedP!183))))

(assert (=> d!812947 (= (isPrefix!2629 testedP!183 lt!999721) lt!999739)))

(assert (= (and d!812947 (not res!1166229)) b!2797873))

(assert (= (and b!2797873 res!1166230) b!2797874))

(assert (= (and b!2797874 res!1166227) b!2797875))

(assert (= (and d!812947 (not res!1166228)) b!2797876))

(declare-fun m!3227375 () Bool)

(assert (=> b!2797875 m!3227375))

(declare-fun m!3227377 () Bool)

(assert (=> b!2797875 m!3227377))

(assert (=> b!2797875 m!3227375))

(assert (=> b!2797875 m!3227377))

(declare-fun m!3227379 () Bool)

(assert (=> b!2797875 m!3227379))

(declare-fun m!3227381 () Bool)

(assert (=> b!2797874 m!3227381))

(declare-fun m!3227383 () Bool)

(assert (=> b!2797874 m!3227383))

(assert (=> b!2797876 m!3227355))

(assert (=> b!2797876 m!3227317))

(assert (=> b!2797840 d!812947))

(declare-fun b!2797879 () Bool)

(declare-fun e!1767430 () Bool)

(assert (=> b!2797879 (= e!1767430 (isPrefix!2629 (tail!4423 testedP!183) (tail!4423 lt!999725)))))

(declare-fun b!2797878 () Bool)

(declare-fun res!1166231 () Bool)

(assert (=> b!2797878 (=> (not res!1166231) (not e!1767430))))

(assert (=> b!2797878 (= res!1166231 (= (head!6195 testedP!183) (head!6195 lt!999725)))))

(declare-fun b!2797877 () Bool)

(declare-fun e!1767429 () Bool)

(assert (=> b!2797877 (= e!1767429 e!1767430)))

(declare-fun res!1166234 () Bool)

(assert (=> b!2797877 (=> (not res!1166234) (not e!1767430))))

(assert (=> b!2797877 (= res!1166234 (not ((_ is Nil!32501) lt!999725)))))

(declare-fun b!2797880 () Bool)

(declare-fun e!1767428 () Bool)

(assert (=> b!2797880 (= e!1767428 (>= (size!25356 lt!999725) (size!25356 testedP!183)))))

(declare-fun d!812949 () Bool)

(assert (=> d!812949 e!1767428))

(declare-fun res!1166232 () Bool)

(assert (=> d!812949 (=> res!1166232 e!1767428)))

(declare-fun lt!999740 () Bool)

(assert (=> d!812949 (= res!1166232 (not lt!999740))))

(assert (=> d!812949 (= lt!999740 e!1767429)))

(declare-fun res!1166233 () Bool)

(assert (=> d!812949 (=> res!1166233 e!1767429)))

(assert (=> d!812949 (= res!1166233 ((_ is Nil!32501) testedP!183))))

(assert (=> d!812949 (= (isPrefix!2629 testedP!183 lt!999725) lt!999740)))

(assert (= (and d!812949 (not res!1166233)) b!2797877))

(assert (= (and b!2797877 res!1166234) b!2797878))

(assert (= (and b!2797878 res!1166231) b!2797879))

(assert (= (and d!812949 (not res!1166232)) b!2797880))

(assert (=> b!2797879 m!3227375))

(declare-fun m!3227385 () Bool)

(assert (=> b!2797879 m!3227385))

(assert (=> b!2797879 m!3227375))

(assert (=> b!2797879 m!3227385))

(declare-fun m!3227387 () Bool)

(assert (=> b!2797879 m!3227387))

(assert (=> b!2797878 m!3227381))

(declare-fun m!3227389 () Bool)

(assert (=> b!2797878 m!3227389))

(declare-fun m!3227391 () Bool)

(assert (=> b!2797880 m!3227391))

(assert (=> b!2797880 m!3227317))

(assert (=> b!2797840 d!812949))

(declare-fun d!812951 () Bool)

(assert (=> d!812951 (isPrefix!2629 testedP!183 (++!8015 testedP!183 testedSuffix!143))))

(declare-fun lt!999743 () Unit!46626)

(declare-fun choose!16456 (List!32601 List!32601) Unit!46626)

(assert (=> d!812951 (= lt!999743 (choose!16456 testedP!183 testedSuffix!143))))

(assert (=> d!812951 (= (lemmaConcatTwoListThenFirstIsPrefix!1737 testedP!183 testedSuffix!143) lt!999743)))

(declare-fun bs!515080 () Bool)

(assert (= bs!515080 d!812951))

(assert (=> bs!515080 m!3227289))

(assert (=> bs!515080 m!3227289))

(declare-fun m!3227393 () Bool)

(assert (=> bs!515080 m!3227393))

(declare-fun m!3227395 () Bool)

(assert (=> bs!515080 m!3227395))

(assert (=> b!2797840 d!812951))

(declare-fun d!812953 () Bool)

(declare-fun lt!999746 () Int)

(assert (=> d!812953 (= lt!999746 (size!25356 (list!12205 (_1!19585 lt!999735))))))

(declare-fun size!25357 (Conc!10069) Int)

(assert (=> d!812953 (= lt!999746 (size!25357 (c!453745 (_1!19585 lt!999735))))))

(assert (=> d!812953 (= (size!25352 (_1!19585 lt!999735)) lt!999746)))

(declare-fun bs!515081 () Bool)

(assert (= bs!515081 d!812953))

(assert (=> bs!515081 m!3227295))

(assert (=> bs!515081 m!3227295))

(declare-fun m!3227397 () Bool)

(assert (=> bs!515081 m!3227397))

(declare-fun m!3227399 () Bool)

(assert (=> bs!515081 m!3227399))

(assert (=> b!2797841 d!812953))

(declare-fun bs!515082 () Bool)

(declare-fun b!2797885 () Bool)

(declare-fun d!812955 () Bool)

(assert (= bs!515082 (and b!2797885 d!812955)))

(declare-fun lambda!102758 () Int)

(declare-fun lambda!102757 () Int)

(assert (=> bs!515082 (not (= lambda!102758 lambda!102757))))

(declare-fun bs!515083 () Bool)

(declare-fun b!2797886 () Bool)

(assert (= bs!515083 (and b!2797886 d!812955)))

(declare-fun lambda!102759 () Int)

(assert (=> bs!515083 (not (= lambda!102759 lambda!102757))))

(declare-fun bs!515084 () Bool)

(assert (= bs!515084 (and b!2797886 b!2797885)))

(assert (=> bs!515084 (= lambda!102759 lambda!102758)))

(declare-fun bm!182794 () Bool)

(declare-datatypes ((List!32605 0))(
  ( (Nil!32505) (Cons!32505 (h!37925 Context!4854) (t!228765 List!32605)) )
))
(declare-fun call!182799 () List!32605)

(declare-fun toList!1880 ((InoxSet Context!4854)) List!32605)

(assert (=> bm!182794 (= call!182799 (toList!1880 z!3684))))

(declare-fun lt!999769 () Bool)

(declare-datatypes ((Option!6285 0))(
  ( (None!6284) (Some!6284 (v!34106 List!32601)) )
))
(declare-fun isEmpty!18134 (Option!6285) Bool)

(declare-fun getLanguageWitness!219 ((InoxSet Context!4854)) Option!6285)

(assert (=> d!812955 (= lt!999769 (isEmpty!18134 (getLanguageWitness!219 z!3684)))))

(declare-fun forall!6699 ((InoxSet Context!4854) Int) Bool)

(assert (=> d!812955 (= lt!999769 (forall!6699 z!3684 lambda!102757))))

(declare-fun lt!999768 () Unit!46626)

(declare-fun e!1767437 () Unit!46626)

(assert (=> d!812955 (= lt!999768 e!1767437)))

(declare-fun c!453757 () Bool)

(assert (=> d!812955 (= c!453757 (not (forall!6699 z!3684 lambda!102757)))))

(assert (=> d!812955 (= (lostCauseZipper!501 z!3684) lt!999769)))

(declare-fun call!182800 () Bool)

(declare-fun bm!182795 () Bool)

(declare-fun lt!999767 () List!32605)

(declare-fun lt!999763 () List!32605)

(declare-fun exists!1013 (List!32605 Int) Bool)

(assert (=> bm!182795 (= call!182800 (exists!1013 (ite c!453757 lt!999763 lt!999767) (ite c!453757 lambda!102758 lambda!102759)))))

(declare-fun Unit!46630 () Unit!46626)

(assert (=> b!2797886 (= e!1767437 Unit!46630)))

(assert (=> b!2797886 (= lt!999767 call!182799)))

(declare-fun lt!999766 () Unit!46626)

(declare-fun lemmaForallThenNotExists!107 (List!32605 Int) Unit!46626)

(assert (=> b!2797886 (= lt!999766 (lemmaForallThenNotExists!107 lt!999767 lambda!102757))))

(assert (=> b!2797886 (not call!182800)))

(declare-fun lt!999765 () Unit!46626)

(assert (=> b!2797886 (= lt!999765 lt!999766)))

(declare-fun Unit!46631 () Unit!46626)

(assert (=> b!2797885 (= e!1767437 Unit!46631)))

(assert (=> b!2797885 (= lt!999763 call!182799)))

(declare-fun lt!999770 () Unit!46626)

(declare-fun lemmaNotForallThenExists!107 (List!32605 Int) Unit!46626)

(assert (=> b!2797885 (= lt!999770 (lemmaNotForallThenExists!107 lt!999763 lambda!102757))))

(assert (=> b!2797885 call!182800))

(declare-fun lt!999764 () Unit!46626)

(assert (=> b!2797885 (= lt!999764 lt!999770)))

(assert (= (and d!812955 c!453757) b!2797885))

(assert (= (and d!812955 (not c!453757)) b!2797886))

(assert (= (or b!2797885 b!2797886) bm!182794))

(assert (= (or b!2797885 b!2797886) bm!182795))

(declare-fun m!3227401 () Bool)

(assert (=> bm!182794 m!3227401))

(declare-fun m!3227403 () Bool)

(assert (=> b!2797885 m!3227403))

(declare-fun m!3227405 () Bool)

(assert (=> d!812955 m!3227405))

(assert (=> d!812955 m!3227405))

(declare-fun m!3227407 () Bool)

(assert (=> d!812955 m!3227407))

(declare-fun m!3227409 () Bool)

(assert (=> d!812955 m!3227409))

(assert (=> d!812955 m!3227409))

(declare-fun m!3227411 () Bool)

(assert (=> b!2797886 m!3227411))

(declare-fun m!3227413 () Bool)

(assert (=> bm!182795 m!3227413))

(assert (=> b!2797837 d!812955))

(declare-fun d!812957 () Bool)

(assert (=> d!812957 (= testedSuffix!143 lt!999717)))

(declare-fun lt!999773 () Unit!46626)

(declare-fun choose!16457 (List!32601 List!32601 List!32601 List!32601 List!32601) Unit!46626)

(assert (=> d!812957 (= lt!999773 (choose!16457 testedP!183 testedSuffix!143 testedP!183 lt!999717 lt!999721))))

(assert (=> d!812957 (isPrefix!2629 testedP!183 lt!999721)))

(assert (=> d!812957 (= (lemmaSamePrefixThenSameSuffix!1204 testedP!183 testedSuffix!143 testedP!183 lt!999717 lt!999721) lt!999773)))

(declare-fun bs!515085 () Bool)

(assert (= bs!515085 d!812957))

(declare-fun m!3227415 () Bool)

(assert (=> bs!515085 m!3227415))

(assert (=> bs!515085 m!3227359))

(assert (=> b!2797837 d!812957))

(declare-fun d!812959 () Bool)

(declare-fun lt!999776 () List!32601)

(assert (=> d!812959 (= (++!8015 testedP!183 lt!999776) lt!999721)))

(declare-fun e!1767440 () List!32601)

(assert (=> d!812959 (= lt!999776 e!1767440)))

(declare-fun c!453760 () Bool)

(assert (=> d!812959 (= c!453760 ((_ is Cons!32501) testedP!183))))

(assert (=> d!812959 (>= (size!25356 lt!999721) (size!25356 testedP!183))))

(assert (=> d!812959 (= (getSuffix!1306 lt!999721 testedP!183) lt!999776)))

(declare-fun b!2797891 () Bool)

(assert (=> b!2797891 (= e!1767440 (getSuffix!1306 (tail!4423 lt!999721) (t!228761 testedP!183)))))

(declare-fun b!2797892 () Bool)

(assert (=> b!2797892 (= e!1767440 lt!999721)))

(assert (= (and d!812959 c!453760) b!2797891))

(assert (= (and d!812959 (not c!453760)) b!2797892))

(declare-fun m!3227417 () Bool)

(assert (=> d!812959 m!3227417))

(assert (=> d!812959 m!3227355))

(assert (=> d!812959 m!3227317))

(assert (=> b!2797891 m!3227377))

(assert (=> b!2797891 m!3227377))

(declare-fun m!3227419 () Bool)

(assert (=> b!2797891 m!3227419))

(assert (=> b!2797837 d!812959))

(declare-fun d!812961 () Bool)

(declare-fun lt!999779 () Int)

(assert (=> d!812961 (>= lt!999779 0)))

(declare-fun e!1767443 () Int)

(assert (=> d!812961 (= lt!999779 e!1767443)))

(declare-fun c!453763 () Bool)

(assert (=> d!812961 (= c!453763 ((_ is Nil!32501) testedP!183))))

(assert (=> d!812961 (= (size!25356 testedP!183) lt!999779)))

(declare-fun b!2797897 () Bool)

(assert (=> b!2797897 (= e!1767443 0)))

(declare-fun b!2797898 () Bool)

(assert (=> b!2797898 (= e!1767443 (+ 1 (size!25356 (t!228761 testedP!183))))))

(assert (= (and d!812961 c!453763) b!2797897))

(assert (= (and d!812961 (not c!453763)) b!2797898))

(declare-fun m!3227421 () Bool)

(assert (=> b!2797898 m!3227421))

(assert (=> b!2797856 d!812961))

(declare-fun d!812963 () Bool)

(assert (=> d!812963 (= (array_inv!4547 (_keys!4310 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890))))))) (bvsge (size!25354 (_keys!4310 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2797839 d!812963))

(declare-fun d!812965 () Bool)

(assert (=> d!812965 (= (array_inv!4548 (_values!4291 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890))))))) (bvsge (size!25353 (_values!4291 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2797839 d!812965))

(declare-fun d!812967 () Bool)

(declare-fun lambda!102762 () Int)

(declare-fun forall!6700 (List!32602 Int) Bool)

(assert (=> d!812967 (= (inv!44143 setElem!24335) (forall!6700 (exprs!2927 setElem!24335) lambda!102762))))

(declare-fun bs!515086 () Bool)

(assert (= bs!515086 d!812967))

(declare-fun m!3227423 () Bool)

(assert (=> bs!515086 m!3227423))

(assert (=> setNonEmpty!24335 d!812967))

(declare-fun d!812969 () Bool)

(assert (=> d!812969 (isPrefix!2629 lt!999721 lt!999721)))

(declare-fun lt!999782 () Unit!46626)

(declare-fun choose!16458 (List!32601 List!32601) Unit!46626)

(assert (=> d!812969 (= lt!999782 (choose!16458 lt!999721 lt!999721))))

(assert (=> d!812969 (= (lemmaIsPrefixRefl!1713 lt!999721 lt!999721) lt!999782)))

(declare-fun bs!515087 () Bool)

(assert (= bs!515087 d!812969))

(assert (=> bs!515087 m!3227367))

(declare-fun m!3227425 () Bool)

(assert (=> bs!515087 m!3227425))

(assert (=> b!2797834 d!812969))

(declare-fun b!2797901 () Bool)

(declare-fun e!1767446 () Bool)

(assert (=> b!2797901 (= e!1767446 (isPrefix!2629 (tail!4423 lt!999721) (tail!4423 lt!999721)))))

(declare-fun b!2797900 () Bool)

(declare-fun res!1166235 () Bool)

(assert (=> b!2797900 (=> (not res!1166235) (not e!1767446))))

(assert (=> b!2797900 (= res!1166235 (= (head!6195 lt!999721) (head!6195 lt!999721)))))

(declare-fun b!2797899 () Bool)

(declare-fun e!1767445 () Bool)

(assert (=> b!2797899 (= e!1767445 e!1767446)))

(declare-fun res!1166238 () Bool)

(assert (=> b!2797899 (=> (not res!1166238) (not e!1767446))))

(assert (=> b!2797899 (= res!1166238 (not ((_ is Nil!32501) lt!999721)))))

(declare-fun b!2797902 () Bool)

(declare-fun e!1767444 () Bool)

(assert (=> b!2797902 (= e!1767444 (>= (size!25356 lt!999721) (size!25356 lt!999721)))))

(declare-fun d!812971 () Bool)

(assert (=> d!812971 e!1767444))

(declare-fun res!1166236 () Bool)

(assert (=> d!812971 (=> res!1166236 e!1767444)))

(declare-fun lt!999783 () Bool)

(assert (=> d!812971 (= res!1166236 (not lt!999783))))

(assert (=> d!812971 (= lt!999783 e!1767445)))

(declare-fun res!1166237 () Bool)

(assert (=> d!812971 (=> res!1166237 e!1767445)))

(assert (=> d!812971 (= res!1166237 ((_ is Nil!32501) lt!999721))))

(assert (=> d!812971 (= (isPrefix!2629 lt!999721 lt!999721) lt!999783)))

(assert (= (and d!812971 (not res!1166237)) b!2797899))

(assert (= (and b!2797899 res!1166238) b!2797900))

(assert (= (and b!2797900 res!1166235) b!2797901))

(assert (= (and d!812971 (not res!1166236)) b!2797902))

(assert (=> b!2797901 m!3227377))

(assert (=> b!2797901 m!3227377))

(assert (=> b!2797901 m!3227377))

(assert (=> b!2797901 m!3227377))

(declare-fun m!3227427 () Bool)

(assert (=> b!2797901 m!3227427))

(assert (=> b!2797900 m!3227383))

(assert (=> b!2797900 m!3227383))

(assert (=> b!2797902 m!3227355))

(assert (=> b!2797902 m!3227355))

(assert (=> b!2797834 d!812971))

(declare-fun d!812973 () Bool)

(assert (=> d!812973 (= lt!999721 testedP!183)))

(declare-fun lt!999786 () Unit!46626)

(declare-fun choose!16459 (List!32601 List!32601 List!32601) Unit!46626)

(assert (=> d!812973 (= lt!999786 (choose!16459 lt!999721 testedP!183 lt!999721))))

(assert (=> d!812973 (isPrefix!2629 lt!999721 lt!999721)))

(assert (=> d!812973 (= (lemmaIsPrefixSameLengthThenSameList!489 lt!999721 testedP!183 lt!999721) lt!999786)))

(declare-fun bs!515088 () Bool)

(assert (= bs!515088 d!812973))

(declare-fun m!3227429 () Bool)

(assert (=> bs!515088 m!3227429))

(assert (=> bs!515088 m!3227367))

(assert (=> b!2797834 d!812973))

(declare-fun b!2797912 () Bool)

(declare-fun e!1767452 () List!32601)

(assert (=> b!2797912 (= e!1767452 (Cons!32501 (h!37921 lt!999734) (++!8015 (t!228761 lt!999734) lt!999724)))))

(declare-fun d!812975 () Bool)

(declare-fun e!1767451 () Bool)

(assert (=> d!812975 e!1767451))

(declare-fun res!1166243 () Bool)

(assert (=> d!812975 (=> (not res!1166243) (not e!1767451))))

(declare-fun lt!999789 () List!32601)

(declare-fun content!4540 (List!32601) (InoxSet C!16576))

(assert (=> d!812975 (= res!1166243 (= (content!4540 lt!999789) ((_ map or) (content!4540 lt!999734) (content!4540 lt!999724))))))

(assert (=> d!812975 (= lt!999789 e!1767452)))

(declare-fun c!453766 () Bool)

(assert (=> d!812975 (= c!453766 ((_ is Nil!32501) lt!999734))))

(assert (=> d!812975 (= (++!8015 lt!999734 lt!999724) lt!999789)))

(declare-fun b!2797913 () Bool)

(declare-fun res!1166244 () Bool)

(assert (=> b!2797913 (=> (not res!1166244) (not e!1767451))))

(assert (=> b!2797913 (= res!1166244 (= (size!25356 lt!999789) (+ (size!25356 lt!999734) (size!25356 lt!999724))))))

(declare-fun b!2797911 () Bool)

(assert (=> b!2797911 (= e!1767452 lt!999724)))

(declare-fun b!2797914 () Bool)

(assert (=> b!2797914 (= e!1767451 (or (not (= lt!999724 Nil!32501)) (= lt!999789 lt!999734)))))

(assert (= (and d!812975 c!453766) b!2797911))

(assert (= (and d!812975 (not c!453766)) b!2797912))

(assert (= (and d!812975 res!1166243) b!2797913))

(assert (= (and b!2797913 res!1166244) b!2797914))

(declare-fun m!3227431 () Bool)

(assert (=> b!2797912 m!3227431))

(declare-fun m!3227433 () Bool)

(assert (=> d!812975 m!3227433))

(declare-fun m!3227435 () Bool)

(assert (=> d!812975 m!3227435))

(declare-fun m!3227437 () Bool)

(assert (=> d!812975 m!3227437))

(declare-fun m!3227439 () Bool)

(assert (=> b!2797913 m!3227439))

(declare-fun m!3227441 () Bool)

(assert (=> b!2797913 m!3227441))

(declare-fun m!3227443 () Bool)

(assert (=> b!2797913 m!3227443))

(assert (=> b!2797863 d!812975))

(declare-fun d!812977 () Bool)

(declare-fun list!12206 (Conc!10069) List!32601)

(assert (=> d!812977 (= (list!12205 (_2!19585 lt!999735)) (list!12206 (c!453745 (_2!19585 lt!999735))))))

(declare-fun bs!515089 () Bool)

(assert (= bs!515089 d!812977))

(declare-fun m!3227445 () Bool)

(assert (=> bs!515089 m!3227445))

(assert (=> b!2797863 d!812977))

(declare-fun d!812979 () Bool)

(assert (=> d!812979 (= (list!12205 (_1!19585 lt!999735)) (list!12206 (c!453745 (_1!19585 lt!999735))))))

(declare-fun bs!515090 () Bool)

(assert (= bs!515090 d!812979))

(declare-fun m!3227447 () Bool)

(assert (=> bs!515090 m!3227447))

(assert (=> b!2797863 d!812979))

(declare-fun d!812981 () Bool)

(declare-fun e!1767455 () Bool)

(assert (=> d!812981 e!1767455))

(declare-fun res!1166249 () Bool)

(assert (=> d!812981 (=> (not res!1166249) (not e!1767455))))

(declare-fun lt!999794 () tuple2!33078)

(declare-fun isBalanced!3072 (Conc!10069) Bool)

(assert (=> d!812981 (= res!1166249 (isBalanced!3072 (c!453745 (_1!19585 lt!999794))))))

(declare-datatypes ((tuple2!33082 0))(
  ( (tuple2!33083 (_1!19588 Conc!10069) (_2!19588 Conc!10069)) )
))
(declare-fun lt!999795 () tuple2!33082)

(assert (=> d!812981 (= lt!999794 (tuple2!33079 (BalanceConc!19753 (_1!19588 lt!999795)) (BalanceConc!19753 (_2!19588 lt!999795))))))

(declare-fun splitAt!188 (Conc!10069 Int) tuple2!33082)

(assert (=> d!812981 (= lt!999795 (splitAt!188 (c!453745 totalInput!758) testedPSize!143))))

(assert (=> d!812981 (isBalanced!3072 (c!453745 totalInput!758))))

(assert (=> d!812981 (= (splitAt!187 totalInput!758 testedPSize!143) lt!999794)))

(declare-fun b!2797919 () Bool)

(declare-fun res!1166250 () Bool)

(assert (=> b!2797919 (=> (not res!1166250) (not e!1767455))))

(assert (=> b!2797919 (= res!1166250 (isBalanced!3072 (c!453745 (_2!19585 lt!999794))))))

(declare-fun b!2797920 () Bool)

(declare-datatypes ((tuple2!33084 0))(
  ( (tuple2!33085 (_1!19589 List!32601) (_2!19589 List!32601)) )
))
(declare-fun splitAtIndex!72 (List!32601 Int) tuple2!33084)

(assert (=> b!2797920 (= e!1767455 (= (tuple2!33085 (list!12205 (_1!19585 lt!999794)) (list!12205 (_2!19585 lt!999794))) (splitAtIndex!72 (list!12205 totalInput!758) testedPSize!143)))))

(assert (= (and d!812981 res!1166249) b!2797919))

(assert (= (and b!2797919 res!1166250) b!2797920))

(declare-fun m!3227449 () Bool)

(assert (=> d!812981 m!3227449))

(declare-fun m!3227451 () Bool)

(assert (=> d!812981 m!3227451))

(declare-fun m!3227453 () Bool)

(assert (=> d!812981 m!3227453))

(declare-fun m!3227455 () Bool)

(assert (=> b!2797919 m!3227455))

(declare-fun m!3227457 () Bool)

(assert (=> b!2797920 m!3227457))

(declare-fun m!3227459 () Bool)

(assert (=> b!2797920 m!3227459))

(assert (=> b!2797920 m!3227281))

(assert (=> b!2797920 m!3227281))

(declare-fun m!3227461 () Bool)

(assert (=> b!2797920 m!3227461))

(assert (=> b!2797863 d!812981))

(declare-fun d!812983 () Bool)

(declare-fun c!453769 () Bool)

(assert (=> d!812983 (= c!453769 ((_ is Node!10069) (c!453745 totalInput!758)))))

(declare-fun e!1767460 () Bool)

(assert (=> d!812983 (= (inv!44142 (c!453745 totalInput!758)) e!1767460)))

(declare-fun b!2797927 () Bool)

(declare-fun inv!44147 (Conc!10069) Bool)

(assert (=> b!2797927 (= e!1767460 (inv!44147 (c!453745 totalInput!758)))))

(declare-fun b!2797928 () Bool)

(declare-fun e!1767461 () Bool)

(assert (=> b!2797928 (= e!1767460 e!1767461)))

(declare-fun res!1166253 () Bool)

(assert (=> b!2797928 (= res!1166253 (not ((_ is Leaf!15342) (c!453745 totalInput!758))))))

(assert (=> b!2797928 (=> res!1166253 e!1767461)))

(declare-fun b!2797929 () Bool)

(declare-fun inv!44148 (Conc!10069) Bool)

(assert (=> b!2797929 (= e!1767461 (inv!44148 (c!453745 totalInput!758)))))

(assert (= (and d!812983 c!453769) b!2797927))

(assert (= (and d!812983 (not c!453769)) b!2797928))

(assert (= (and b!2797928 (not res!1166253)) b!2797929))

(declare-fun m!3227463 () Bool)

(assert (=> b!2797927 m!3227463))

(declare-fun m!3227465 () Bool)

(assert (=> b!2797929 m!3227465))

(assert (=> b!2797835 d!812983))

(declare-fun d!812985 () Bool)

(assert (=> d!812985 (= (array_inv!4547 (_keys!4311 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009))))))) (bvsge (size!25354 (_keys!4311 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2797853 d!812985))

(declare-fun d!812987 () Bool)

(assert (=> d!812987 (= (array_inv!4549 (_values!4292 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009))))))) (bvsge (size!25355 (_values!4292 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2797853 d!812987))

(declare-fun d!812989 () Bool)

(declare-fun lt!999796 () Int)

(assert (=> d!812989 (>= lt!999796 0)))

(declare-fun e!1767462 () Int)

(assert (=> d!812989 (= lt!999796 e!1767462)))

(declare-fun c!453770 () Bool)

(assert (=> d!812989 (= c!453770 ((_ is Nil!32501) lt!999721))))

(assert (=> d!812989 (= (size!25356 lt!999721) lt!999796)))

(declare-fun b!2797930 () Bool)

(assert (=> b!2797930 (= e!1767462 0)))

(declare-fun b!2797931 () Bool)

(assert (=> b!2797931 (= e!1767462 (+ 1 (size!25356 (t!228761 lt!999721))))))

(assert (= (and d!812989 c!453770) b!2797930))

(assert (= (and d!812989 (not c!453770)) b!2797931))

(declare-fun m!3227467 () Bool)

(assert (=> b!2797931 m!3227467))

(assert (=> b!2797854 d!812989))

(declare-fun d!812991 () Bool)

(assert (=> d!812991 (<= (size!25356 testedP!183) (size!25356 lt!999721))))

(declare-fun lt!999799 () Unit!46626)

(declare-fun choose!16460 (List!32601 List!32601) Unit!46626)

(assert (=> d!812991 (= lt!999799 (choose!16460 testedP!183 lt!999721))))

(assert (=> d!812991 (isPrefix!2629 testedP!183 lt!999721)))

(assert (=> d!812991 (= (lemmaIsPrefixThenSmallerEqSize!289 testedP!183 lt!999721) lt!999799)))

(declare-fun bs!515091 () Bool)

(assert (= bs!515091 d!812991))

(assert (=> bs!515091 m!3227317))

(assert (=> bs!515091 m!3227355))

(declare-fun m!3227469 () Bool)

(assert (=> bs!515091 m!3227469))

(assert (=> bs!515091 m!3227359))

(assert (=> b!2797854 d!812991))

(declare-fun d!812993 () Bool)

(declare-fun res!1166256 () Bool)

(declare-fun e!1767465 () Bool)

(assert (=> d!812993 (=> (not res!1166256) (not e!1767465))))

(assert (=> d!812993 (= res!1166256 ((_ is HashMap!3916) (cache!4059 cacheUp!890)))))

(assert (=> d!812993 (= (inv!44146 cacheUp!890) e!1767465)))

(declare-fun b!2797934 () Bool)

(assert (=> b!2797934 (= e!1767465 (validCacheMapUp!396 (cache!4059 cacheUp!890)))))

(assert (= (and d!812993 res!1166256) b!2797934))

(assert (=> b!2797934 m!3227373))

(assert (=> start!270478 d!812993))

(declare-fun d!812995 () Bool)

(assert (=> d!812995 (= (inv!44144 totalInput!758) (isBalanced!3072 (c!453745 totalInput!758)))))

(declare-fun bs!515092 () Bool)

(assert (= bs!515092 d!812995))

(assert (=> bs!515092 m!3227453))

(assert (=> start!270478 d!812995))

(declare-fun d!812997 () Bool)

(declare-fun res!1166259 () Bool)

(declare-fun e!1767468 () Bool)

(assert (=> d!812997 (=> (not res!1166259) (not e!1767468))))

(assert (=> d!812997 (= res!1166259 ((_ is HashMap!3917) (cache!4060 cacheDown!1009)))))

(assert (=> d!812997 (= (inv!44145 cacheDown!1009) e!1767468)))

(declare-fun b!2797937 () Bool)

(assert (=> b!2797937 (= e!1767468 (validCacheMapDown!427 (cache!4060 cacheDown!1009)))))

(assert (= (and d!812997 res!1166259) b!2797937))

(assert (=> b!2797937 m!3227371))

(assert (=> start!270478 d!812997))

(declare-fun d!812999 () Bool)

(assert (=> d!812999 (= (list!12205 totalInput!758) (list!12206 (c!453745 totalInput!758)))))

(declare-fun bs!515093 () Bool)

(assert (= bs!515093 d!812999))

(declare-fun m!3227471 () Bool)

(assert (=> bs!515093 m!3227471))

(assert (=> start!270478 d!812999))

(declare-fun b!2797939 () Bool)

(declare-fun e!1767470 () List!32601)

(assert (=> b!2797939 (= e!1767470 (Cons!32501 (h!37921 testedP!183) (++!8015 (t!228761 testedP!183) testedSuffix!143)))))

(declare-fun d!813001 () Bool)

(declare-fun e!1767469 () Bool)

(assert (=> d!813001 e!1767469))

(declare-fun res!1166260 () Bool)

(assert (=> d!813001 (=> (not res!1166260) (not e!1767469))))

(declare-fun lt!999800 () List!32601)

(assert (=> d!813001 (= res!1166260 (= (content!4540 lt!999800) ((_ map or) (content!4540 testedP!183) (content!4540 testedSuffix!143))))))

(assert (=> d!813001 (= lt!999800 e!1767470)))

(declare-fun c!453771 () Bool)

(assert (=> d!813001 (= c!453771 ((_ is Nil!32501) testedP!183))))

(assert (=> d!813001 (= (++!8015 testedP!183 testedSuffix!143) lt!999800)))

(declare-fun b!2797940 () Bool)

(declare-fun res!1166261 () Bool)

(assert (=> b!2797940 (=> (not res!1166261) (not e!1767469))))

(assert (=> b!2797940 (= res!1166261 (= (size!25356 lt!999800) (+ (size!25356 testedP!183) (size!25356 testedSuffix!143))))))

(declare-fun b!2797938 () Bool)

(assert (=> b!2797938 (= e!1767470 testedSuffix!143)))

(declare-fun b!2797941 () Bool)

(assert (=> b!2797941 (= e!1767469 (or (not (= testedSuffix!143 Nil!32501)) (= lt!999800 testedP!183)))))

(assert (= (and d!813001 c!453771) b!2797938))

(assert (= (and d!813001 (not c!453771)) b!2797939))

(assert (= (and d!813001 res!1166260) b!2797940))

(assert (= (and b!2797940 res!1166261) b!2797941))

(declare-fun m!3227473 () Bool)

(assert (=> b!2797939 m!3227473))

(declare-fun m!3227475 () Bool)

(assert (=> d!813001 m!3227475))

(declare-fun m!3227477 () Bool)

(assert (=> d!813001 m!3227477))

(declare-fun m!3227479 () Bool)

(assert (=> d!813001 m!3227479))

(declare-fun m!3227481 () Bool)

(assert (=> b!2797940 m!3227481))

(assert (=> b!2797940 m!3227317))

(declare-fun m!3227483 () Bool)

(assert (=> b!2797940 m!3227483))

(assert (=> start!270478 d!813001))

(declare-fun d!813003 () Bool)

(assert (=> d!813003 (isPrefix!2629 (++!8015 testedP!183 (Cons!32501 (head!6195 (getSuffix!1306 lt!999721 testedP!183)) Nil!32501)) lt!999721)))

(declare-fun lt!999803 () Unit!46626)

(declare-fun choose!16461 (List!32601 List!32601) Unit!46626)

(assert (=> d!813003 (= lt!999803 (choose!16461 testedP!183 lt!999721))))

(assert (=> d!813003 (isPrefix!2629 testedP!183 lt!999721)))

(assert (=> d!813003 (= (lemmaAddHeadSuffixToPrefixStillPrefix!479 testedP!183 lt!999721) lt!999803)))

(declare-fun bs!515094 () Bool)

(assert (= bs!515094 d!813003))

(declare-fun m!3227485 () Bool)

(assert (=> bs!515094 m!3227485))

(assert (=> bs!515094 m!3227485))

(declare-fun m!3227487 () Bool)

(assert (=> bs!515094 m!3227487))

(assert (=> bs!515094 m!3227351))

(declare-fun m!3227489 () Bool)

(assert (=> bs!515094 m!3227489))

(assert (=> bs!515094 m!3227359))

(assert (=> bs!515094 m!3227351))

(declare-fun m!3227491 () Bool)

(assert (=> bs!515094 m!3227491))

(assert (=> b!2797846 d!813003))

(declare-fun e!1767473 () Bool)

(declare-fun b!2797944 () Bool)

(assert (=> b!2797944 (= e!1767473 (isPrefix!2629 (tail!4423 (++!8015 testedP!183 (Cons!32501 (head!6195 lt!999717) Nil!32501))) (tail!4423 lt!999721)))))

(declare-fun b!2797943 () Bool)

(declare-fun res!1166262 () Bool)

(assert (=> b!2797943 (=> (not res!1166262) (not e!1767473))))

(assert (=> b!2797943 (= res!1166262 (= (head!6195 (++!8015 testedP!183 (Cons!32501 (head!6195 lt!999717) Nil!32501))) (head!6195 lt!999721)))))

(declare-fun b!2797942 () Bool)

(declare-fun e!1767472 () Bool)

(assert (=> b!2797942 (= e!1767472 e!1767473)))

(declare-fun res!1166265 () Bool)

(assert (=> b!2797942 (=> (not res!1166265) (not e!1767473))))

(assert (=> b!2797942 (= res!1166265 (not ((_ is Nil!32501) lt!999721)))))

(declare-fun e!1767471 () Bool)

(declare-fun b!2797945 () Bool)

(assert (=> b!2797945 (= e!1767471 (>= (size!25356 lt!999721) (size!25356 (++!8015 testedP!183 (Cons!32501 (head!6195 lt!999717) Nil!32501)))))))

(declare-fun d!813005 () Bool)

(assert (=> d!813005 e!1767471))

(declare-fun res!1166263 () Bool)

(assert (=> d!813005 (=> res!1166263 e!1767471)))

(declare-fun lt!999804 () Bool)

(assert (=> d!813005 (= res!1166263 (not lt!999804))))

(assert (=> d!813005 (= lt!999804 e!1767472)))

(declare-fun res!1166264 () Bool)

(assert (=> d!813005 (=> res!1166264 e!1767472)))

(assert (=> d!813005 (= res!1166264 ((_ is Nil!32501) (++!8015 testedP!183 (Cons!32501 (head!6195 lt!999717) Nil!32501))))))

(assert (=> d!813005 (= (isPrefix!2629 (++!8015 testedP!183 (Cons!32501 (head!6195 lt!999717) Nil!32501)) lt!999721) lt!999804)))

(assert (= (and d!813005 (not res!1166264)) b!2797942))

(assert (= (and b!2797942 res!1166265) b!2797943))

(assert (= (and b!2797943 res!1166262) b!2797944))

(assert (= (and d!813005 (not res!1166263)) b!2797945))

(assert (=> b!2797944 m!3227337))

(declare-fun m!3227493 () Bool)

(assert (=> b!2797944 m!3227493))

(assert (=> b!2797944 m!3227377))

(assert (=> b!2797944 m!3227493))

(assert (=> b!2797944 m!3227377))

(declare-fun m!3227495 () Bool)

(assert (=> b!2797944 m!3227495))

(assert (=> b!2797943 m!3227337))

(declare-fun m!3227497 () Bool)

(assert (=> b!2797943 m!3227497))

(assert (=> b!2797943 m!3227383))

(assert (=> b!2797945 m!3227355))

(assert (=> b!2797945 m!3227337))

(declare-fun m!3227499 () Bool)

(assert (=> b!2797945 m!3227499))

(assert (=> b!2797846 d!813005))

(declare-fun d!813007 () Bool)

(assert (=> d!813007 (= (head!6195 lt!999717) (h!37921 lt!999717))))

(assert (=> b!2797846 d!813007))

(declare-fun b!2797947 () Bool)

(declare-fun e!1767475 () List!32601)

(assert (=> b!2797947 (= e!1767475 (Cons!32501 (h!37921 testedP!183) (++!8015 (t!228761 testedP!183) (Cons!32501 (head!6195 lt!999717) Nil!32501))))))

(declare-fun d!813009 () Bool)

(declare-fun e!1767474 () Bool)

(assert (=> d!813009 e!1767474))

(declare-fun res!1166266 () Bool)

(assert (=> d!813009 (=> (not res!1166266) (not e!1767474))))

(declare-fun lt!999805 () List!32601)

(assert (=> d!813009 (= res!1166266 (= (content!4540 lt!999805) ((_ map or) (content!4540 testedP!183) (content!4540 (Cons!32501 (head!6195 lt!999717) Nil!32501)))))))

(assert (=> d!813009 (= lt!999805 e!1767475)))

(declare-fun c!453772 () Bool)

(assert (=> d!813009 (= c!453772 ((_ is Nil!32501) testedP!183))))

(assert (=> d!813009 (= (++!8015 testedP!183 (Cons!32501 (head!6195 lt!999717) Nil!32501)) lt!999805)))

(declare-fun b!2797948 () Bool)

(declare-fun res!1166267 () Bool)

(assert (=> b!2797948 (=> (not res!1166267) (not e!1767474))))

(assert (=> b!2797948 (= res!1166267 (= (size!25356 lt!999805) (+ (size!25356 testedP!183) (size!25356 (Cons!32501 (head!6195 lt!999717) Nil!32501)))))))

(declare-fun b!2797946 () Bool)

(assert (=> b!2797946 (= e!1767475 (Cons!32501 (head!6195 lt!999717) Nil!32501))))

(declare-fun b!2797949 () Bool)

(assert (=> b!2797949 (= e!1767474 (or (not (= (Cons!32501 (head!6195 lt!999717) Nil!32501) Nil!32501)) (= lt!999805 testedP!183)))))

(assert (= (and d!813009 c!453772) b!2797946))

(assert (= (and d!813009 (not c!453772)) b!2797947))

(assert (= (and d!813009 res!1166266) b!2797948))

(assert (= (and b!2797948 res!1166267) b!2797949))

(declare-fun m!3227501 () Bool)

(assert (=> b!2797947 m!3227501))

(declare-fun m!3227503 () Bool)

(assert (=> d!813009 m!3227503))

(assert (=> d!813009 m!3227477))

(declare-fun m!3227505 () Bool)

(assert (=> d!813009 m!3227505))

(declare-fun m!3227507 () Bool)

(assert (=> b!2797948 m!3227507))

(assert (=> b!2797948 m!3227317))

(declare-fun m!3227509 () Bool)

(assert (=> b!2797948 m!3227509))

(assert (=> b!2797846 d!813009))

(declare-fun d!813011 () Bool)

(assert (=> d!813011 (= (tail!4423 testedSuffix!143) (t!228761 testedSuffix!143))))

(assert (=> b!2797846 d!813011))

(declare-fun b!2797951 () Bool)

(declare-fun e!1767477 () List!32601)

(assert (=> b!2797951 (= e!1767477 (Cons!32501 (h!37921 testedP!183) (++!8015 (t!228761 testedP!183) (Cons!32501 lt!999736 (tail!4423 testedSuffix!143)))))))

(declare-fun d!813013 () Bool)

(declare-fun e!1767476 () Bool)

(assert (=> d!813013 e!1767476))

(declare-fun res!1166268 () Bool)

(assert (=> d!813013 (=> (not res!1166268) (not e!1767476))))

(declare-fun lt!999806 () List!32601)

(assert (=> d!813013 (= res!1166268 (= (content!4540 lt!999806) ((_ map or) (content!4540 testedP!183) (content!4540 (Cons!32501 lt!999736 (tail!4423 testedSuffix!143))))))))

(assert (=> d!813013 (= lt!999806 e!1767477)))

(declare-fun c!453773 () Bool)

(assert (=> d!813013 (= c!453773 ((_ is Nil!32501) testedP!183))))

(assert (=> d!813013 (= (++!8015 testedP!183 (Cons!32501 lt!999736 (tail!4423 testedSuffix!143))) lt!999806)))

(declare-fun b!2797952 () Bool)

(declare-fun res!1166269 () Bool)

(assert (=> b!2797952 (=> (not res!1166269) (not e!1767476))))

(assert (=> b!2797952 (= res!1166269 (= (size!25356 lt!999806) (+ (size!25356 testedP!183) (size!25356 (Cons!32501 lt!999736 (tail!4423 testedSuffix!143))))))))

(declare-fun b!2797950 () Bool)

(assert (=> b!2797950 (= e!1767477 (Cons!32501 lt!999736 (tail!4423 testedSuffix!143)))))

(declare-fun b!2797953 () Bool)

(assert (=> b!2797953 (= e!1767476 (or (not (= (Cons!32501 lt!999736 (tail!4423 testedSuffix!143)) Nil!32501)) (= lt!999806 testedP!183)))))

(assert (= (and d!813013 c!453773) b!2797950))

(assert (= (and d!813013 (not c!453773)) b!2797951))

(assert (= (and d!813013 res!1166268) b!2797952))

(assert (= (and b!2797952 res!1166269) b!2797953))

(declare-fun m!3227511 () Bool)

(assert (=> b!2797951 m!3227511))

(declare-fun m!3227513 () Bool)

(assert (=> d!813013 m!3227513))

(assert (=> d!813013 m!3227477))

(declare-fun m!3227515 () Bool)

(assert (=> d!813013 m!3227515))

(declare-fun m!3227517 () Bool)

(assert (=> b!2797952 m!3227517))

(assert (=> b!2797952 m!3227317))

(declare-fun m!3227519 () Bool)

(assert (=> b!2797952 m!3227519))

(assert (=> b!2797846 d!813013))

(declare-fun d!813015 () Bool)

(declare-fun lt!999809 () C!16576)

(assert (=> d!813015 (= lt!999809 (apply!7589 (list!12205 totalInput!758) testedPSize!143))))

(declare-fun apply!7590 (Conc!10069 Int) C!16576)

(assert (=> d!813015 (= lt!999809 (apply!7590 (c!453745 totalInput!758) testedPSize!143))))

(declare-fun e!1767480 () Bool)

(assert (=> d!813015 e!1767480))

(declare-fun res!1166272 () Bool)

(assert (=> d!813015 (=> (not res!1166272) (not e!1767480))))

(assert (=> d!813015 (= res!1166272 (<= 0 testedPSize!143))))

(assert (=> d!813015 (= (apply!7588 totalInput!758 testedPSize!143) lt!999809)))

(declare-fun b!2797956 () Bool)

(assert (=> b!2797956 (= e!1767480 (< testedPSize!143 (size!25352 totalInput!758)))))

(assert (= (and d!813015 res!1166272) b!2797956))

(assert (=> d!813015 m!3227281))

(assert (=> d!813015 m!3227281))

(declare-fun m!3227521 () Bool)

(assert (=> d!813015 m!3227521))

(declare-fun m!3227523 () Bool)

(assert (=> d!813015 m!3227523))

(assert (=> b!2797956 m!3227309))

(assert (=> b!2797864 d!813015))

(declare-fun d!813017 () Bool)

(assert (=> d!813017 (= (head!6195 testedSuffix!143) (h!37921 testedSuffix!143))))

(assert (=> b!2797864 d!813017))

(declare-fun d!813019 () Bool)

(assert (=> d!813019 (= (head!6195 (drop!1743 lt!999721 testedPSize!143)) (apply!7589 lt!999721 testedPSize!143))))

(declare-fun lt!999812 () Unit!46626)

(declare-fun choose!16462 (List!32601 Int) Unit!46626)

(assert (=> d!813019 (= lt!999812 (choose!16462 lt!999721 testedPSize!143))))

(declare-fun e!1767483 () Bool)

(assert (=> d!813019 e!1767483))

(declare-fun res!1166275 () Bool)

(assert (=> d!813019 (=> (not res!1166275) (not e!1767483))))

(assert (=> d!813019 (= res!1166275 (>= testedPSize!143 0))))

(assert (=> d!813019 (= (lemmaDropApply!947 lt!999721 testedPSize!143) lt!999812)))

(declare-fun b!2797959 () Bool)

(assert (=> b!2797959 (= e!1767483 (< testedPSize!143 (size!25356 lt!999721)))))

(assert (= (and d!813019 res!1166275) b!2797959))

(assert (=> d!813019 m!3227331))

(assert (=> d!813019 m!3227331))

(assert (=> d!813019 m!3227333))

(assert (=> d!813019 m!3227323))

(declare-fun m!3227525 () Bool)

(assert (=> d!813019 m!3227525))

(assert (=> b!2797959 m!3227355))

(assert (=> b!2797864 d!813019))

(declare-fun d!813021 () Bool)

(assert (=> d!813021 (= (head!6195 (drop!1743 lt!999721 testedPSize!143)) (h!37921 (drop!1743 lt!999721 testedPSize!143)))))

(assert (=> b!2797864 d!813021))

(declare-fun d!813023 () Bool)

(assert (=> d!813023 (and (= lt!999734 testedP!183) (= lt!999724 testedSuffix!143))))

(declare-fun lt!999815 () Unit!46626)

(declare-fun choose!16463 (List!32601 List!32601 List!32601 List!32601) Unit!46626)

(assert (=> d!813023 (= lt!999815 (choose!16463 lt!999734 lt!999724 testedP!183 testedSuffix!143))))

(assert (=> d!813023 (= (++!8015 lt!999734 lt!999724) (++!8015 testedP!183 testedSuffix!143))))

(assert (=> d!813023 (= (lemmaConcatSameAndSameSizesThenSameLists!377 lt!999734 lt!999724 testedP!183 testedSuffix!143) lt!999815)))

(declare-fun bs!515095 () Bool)

(assert (= bs!515095 d!813023))

(declare-fun m!3227527 () Bool)

(assert (=> bs!515095 m!3227527))

(assert (=> bs!515095 m!3227291))

(assert (=> bs!515095 m!3227289))

(assert (=> b!2797864 d!813023))

(declare-fun b!2797978 () Bool)

(declare-fun e!1767497 () Int)

(assert (=> b!2797978 (= e!1767497 0)))

(declare-fun b!2797979 () Bool)

(declare-fun e!1767496 () List!32601)

(assert (=> b!2797979 (= e!1767496 Nil!32501)))

(declare-fun b!2797980 () Bool)

(declare-fun e!1767495 () Int)

(declare-fun call!182803 () Int)

(assert (=> b!2797980 (= e!1767495 call!182803)))

(declare-fun b!2797981 () Bool)

(declare-fun e!1767494 () Bool)

(declare-fun lt!999818 () List!32601)

(assert (=> b!2797981 (= e!1767494 (= (size!25356 lt!999818) e!1767495))))

(declare-fun c!453782 () Bool)

(assert (=> b!2797981 (= c!453782 (<= testedPSize!143 0))))

(declare-fun b!2797982 () Bool)

(declare-fun e!1767498 () List!32601)

(assert (=> b!2797982 (= e!1767498 (drop!1743 (t!228761 lt!999721) (- testedPSize!143 1)))))

(declare-fun bm!182798 () Bool)

(assert (=> bm!182798 (= call!182803 (size!25356 lt!999721))))

(declare-fun d!813025 () Bool)

(assert (=> d!813025 e!1767494))

(declare-fun res!1166278 () Bool)

(assert (=> d!813025 (=> (not res!1166278) (not e!1767494))))

(assert (=> d!813025 (= res!1166278 (= ((_ map implies) (content!4540 lt!999818) (content!4540 lt!999721)) ((as const (InoxSet C!16576)) true)))))

(assert (=> d!813025 (= lt!999818 e!1767496)))

(declare-fun c!453783 () Bool)

(assert (=> d!813025 (= c!453783 ((_ is Nil!32501) lt!999721))))

(assert (=> d!813025 (= (drop!1743 lt!999721 testedPSize!143) lt!999818)))

(declare-fun b!2797983 () Bool)

(assert (=> b!2797983 (= e!1767495 e!1767497)))

(declare-fun c!453785 () Bool)

(assert (=> b!2797983 (= c!453785 (>= testedPSize!143 call!182803))))

(declare-fun b!2797984 () Bool)

(assert (=> b!2797984 (= e!1767497 (- call!182803 testedPSize!143))))

(declare-fun b!2797985 () Bool)

(assert (=> b!2797985 (= e!1767498 lt!999721)))

(declare-fun b!2797986 () Bool)

(assert (=> b!2797986 (= e!1767496 e!1767498)))

(declare-fun c!453784 () Bool)

(assert (=> b!2797986 (= c!453784 (<= testedPSize!143 0))))

(assert (= (and d!813025 c!453783) b!2797979))

(assert (= (and d!813025 (not c!453783)) b!2797986))

(assert (= (and b!2797986 c!453784) b!2797985))

(assert (= (and b!2797986 (not c!453784)) b!2797982))

(assert (= (and d!813025 res!1166278) b!2797981))

(assert (= (and b!2797981 c!453782) b!2797980))

(assert (= (and b!2797981 (not c!453782)) b!2797983))

(assert (= (and b!2797983 c!453785) b!2797978))

(assert (= (and b!2797983 (not c!453785)) b!2797984))

(assert (= (or b!2797980 b!2797983 b!2797984) bm!182798))

(declare-fun m!3227529 () Bool)

(assert (=> b!2797981 m!3227529))

(declare-fun m!3227531 () Bool)

(assert (=> b!2797982 m!3227531))

(assert (=> bm!182798 m!3227355))

(declare-fun m!3227533 () Bool)

(assert (=> d!813025 m!3227533))

(declare-fun m!3227535 () Bool)

(assert (=> d!813025 m!3227535))

(assert (=> b!2797864 d!813025))

(declare-fun d!813027 () Bool)

(declare-fun lt!999821 () C!16576)

(declare-fun contains!6014 (List!32601 C!16576) Bool)

(assert (=> d!813027 (contains!6014 lt!999721 lt!999821)))

(declare-fun e!1767504 () C!16576)

(assert (=> d!813027 (= lt!999821 e!1767504)))

(declare-fun c!453788 () Bool)

(assert (=> d!813027 (= c!453788 (= testedPSize!143 0))))

(declare-fun e!1767503 () Bool)

(assert (=> d!813027 e!1767503))

(declare-fun res!1166281 () Bool)

(assert (=> d!813027 (=> (not res!1166281) (not e!1767503))))

(assert (=> d!813027 (= res!1166281 (<= 0 testedPSize!143))))

(assert (=> d!813027 (= (apply!7589 lt!999721 testedPSize!143) lt!999821)))

(declare-fun b!2797993 () Bool)

(assert (=> b!2797993 (= e!1767503 (< testedPSize!143 (size!25356 lt!999721)))))

(declare-fun b!2797994 () Bool)

(assert (=> b!2797994 (= e!1767504 (head!6195 lt!999721))))

(declare-fun b!2797995 () Bool)

(assert (=> b!2797995 (= e!1767504 (apply!7589 (tail!4423 lt!999721) (- testedPSize!143 1)))))

(assert (= (and d!813027 res!1166281) b!2797993))

(assert (= (and d!813027 c!453788) b!2797994))

(assert (= (and d!813027 (not c!453788)) b!2797995))

(declare-fun m!3227537 () Bool)

(assert (=> d!813027 m!3227537))

(assert (=> b!2797993 m!3227355))

(assert (=> b!2797994 m!3227383))

(assert (=> b!2797995 m!3227377))

(assert (=> b!2797995 m!3227377))

(declare-fun m!3227539 () Bool)

(assert (=> b!2797995 m!3227539))

(assert (=> b!2797864 d!813027))

(declare-fun d!813029 () Bool)

(declare-fun lt!999822 () Int)

(assert (=> d!813029 (= lt!999822 (size!25356 (list!12205 totalInput!758)))))

(assert (=> d!813029 (= lt!999822 (size!25357 (c!453745 totalInput!758)))))

(assert (=> d!813029 (= (size!25352 totalInput!758) lt!999822)))

(declare-fun bs!515096 () Bool)

(assert (= bs!515096 d!813029))

(assert (=> bs!515096 m!3227281))

(assert (=> bs!515096 m!3227281))

(declare-fun m!3227541 () Bool)

(assert (=> bs!515096 m!3227541))

(declare-fun m!3227543 () Bool)

(assert (=> bs!515096 m!3227543))

(assert (=> b!2797836 d!813029))

(declare-fun setRes!24338 () Bool)

(declare-fun e!1767512 () Bool)

(declare-fun tp!890890 () Bool)

(declare-fun tp!890887 () Bool)

(declare-fun b!2798004 () Bool)

(declare-fun e!1767513 () Bool)

(assert (=> b!2798004 (= e!1767513 (and tp!890887 (inv!44143 (_2!19586 (_1!19587 (h!37924 mapDefault!18231)))) e!1767512 tp_is_empty!14231 setRes!24338 tp!890890))))

(declare-fun condSetEmpty!24338 () Bool)

(assert (=> b!2798004 (= condSetEmpty!24338 (= (_2!19587 (h!37924 mapDefault!18231)) ((as const (Array Context!4854 Bool)) false)))))

(declare-fun setIsEmpty!24338 () Bool)

(assert (=> setIsEmpty!24338 setRes!24338))

(assert (=> b!2797851 (= tp!890864 e!1767513)))

(declare-fun setElem!24338 () Context!4854)

(declare-fun e!1767511 () Bool)

(declare-fun setNonEmpty!24338 () Bool)

(declare-fun tp!890889 () Bool)

(assert (=> setNonEmpty!24338 (= setRes!24338 (and tp!890889 (inv!44143 setElem!24338) e!1767511))))

(declare-fun setRest!24338 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24338 (= (_2!19587 (h!37924 mapDefault!18231)) ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24338 true) setRest!24338))))

(declare-fun b!2798005 () Bool)

(declare-fun tp!890891 () Bool)

(assert (=> b!2798005 (= e!1767511 tp!890891)))

(declare-fun b!2798006 () Bool)

(declare-fun tp!890888 () Bool)

(assert (=> b!2798006 (= e!1767512 tp!890888)))

(assert (= b!2798004 b!2798006))

(assert (= (and b!2798004 condSetEmpty!24338) setIsEmpty!24338))

(assert (= (and b!2798004 (not condSetEmpty!24338)) setNonEmpty!24338))

(assert (= setNonEmpty!24338 b!2798005))

(assert (= (and b!2797851 ((_ is Cons!32504) mapDefault!18231)) b!2798004))

(declare-fun m!3227545 () Bool)

(assert (=> b!2798004 m!3227545))

(declare-fun m!3227547 () Bool)

(assert (=> setNonEmpty!24338 m!3227547))

(declare-fun b!2798011 () Bool)

(declare-fun e!1767516 () Bool)

(declare-fun tp!890896 () Bool)

(declare-fun tp!890897 () Bool)

(assert (=> b!2798011 (= e!1767516 (and tp!890896 tp!890897))))

(assert (=> b!2797842 (= tp!890868 e!1767516)))

(assert (= (and b!2797842 ((_ is Cons!32502) (exprs!2927 setElem!24335))) b!2798011))

(declare-fun mapNonEmpty!18235 () Bool)

(declare-fun mapRes!18235 () Bool)

(declare-fun tp!890926 () Bool)

(declare-fun e!1767534 () Bool)

(assert (=> mapNonEmpty!18235 (= mapRes!18235 (and tp!890926 e!1767534))))

(declare-fun mapRest!18235 () (Array (_ BitVec 32) List!32604))

(declare-fun mapKey!18235 () (_ BitVec 32))

(declare-fun mapValue!18235 () List!32604)

(assert (=> mapNonEmpty!18235 (= mapRest!18232 (store mapRest!18235 mapKey!18235 mapValue!18235))))

(declare-fun tp!890925 () Bool)

(declare-fun setRes!24344 () Bool)

(declare-fun setNonEmpty!24343 () Bool)

(declare-fun setElem!24344 () Context!4854)

(declare-fun e!1767532 () Bool)

(assert (=> setNonEmpty!24343 (= setRes!24344 (and tp!890925 (inv!44143 setElem!24344) e!1767532))))

(declare-fun setRest!24344 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24343 (= (_2!19587 (h!37924 mapValue!18235)) ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24344 true) setRest!24344))))

(declare-fun condMapEmpty!18235 () Bool)

(declare-fun mapDefault!18235 () List!32604)

(assert (=> mapNonEmpty!18232 (= condMapEmpty!18235 (= mapRest!18232 ((as const (Array (_ BitVec 32) List!32604)) mapDefault!18235)))))

(declare-fun e!1767531 () Bool)

(assert (=> mapNonEmpty!18232 (= tp!890865 (and e!1767531 mapRes!18235))))

(declare-fun setIsEmpty!24343 () Bool)

(assert (=> setIsEmpty!24343 setRes!24344))

(declare-fun mapIsEmpty!18235 () Bool)

(assert (=> mapIsEmpty!18235 mapRes!18235))

(declare-fun b!2798026 () Bool)

(declare-fun e!1767530 () Bool)

(declare-fun tp!890920 () Bool)

(assert (=> b!2798026 (= e!1767530 tp!890920)))

(declare-fun e!1767529 () Bool)

(declare-fun tp!890924 () Bool)

(declare-fun setNonEmpty!24344 () Bool)

(declare-fun setRes!24343 () Bool)

(declare-fun setElem!24343 () Context!4854)

(assert (=> setNonEmpty!24344 (= setRes!24343 (and tp!890924 (inv!44143 setElem!24343) e!1767529))))

(declare-fun setRest!24343 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24344 (= (_2!19587 (h!37924 mapDefault!18235)) ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24343 true) setRest!24343))))

(declare-fun tp!890928 () Bool)

(declare-fun tp!890930 () Bool)

(declare-fun e!1767533 () Bool)

(declare-fun b!2798027 () Bool)

(assert (=> b!2798027 (= e!1767531 (and tp!890928 (inv!44143 (_2!19586 (_1!19587 (h!37924 mapDefault!18235)))) e!1767533 tp_is_empty!14231 setRes!24343 tp!890930))))

(declare-fun condSetEmpty!24343 () Bool)

(assert (=> b!2798027 (= condSetEmpty!24343 (= (_2!19587 (h!37924 mapDefault!18235)) ((as const (Array Context!4854 Bool)) false)))))

(declare-fun setIsEmpty!24344 () Bool)

(assert (=> setIsEmpty!24344 setRes!24343))

(declare-fun tp!890922 () Bool)

(declare-fun tp!890923 () Bool)

(declare-fun b!2798028 () Bool)

(assert (=> b!2798028 (= e!1767534 (and tp!890923 (inv!44143 (_2!19586 (_1!19587 (h!37924 mapValue!18235)))) e!1767530 tp_is_empty!14231 setRes!24344 tp!890922))))

(declare-fun condSetEmpty!24344 () Bool)

(assert (=> b!2798028 (= condSetEmpty!24344 (= (_2!19587 (h!37924 mapValue!18235)) ((as const (Array Context!4854 Bool)) false)))))

(declare-fun b!2798029 () Bool)

(declare-fun tp!890921 () Bool)

(assert (=> b!2798029 (= e!1767532 tp!890921)))

(declare-fun b!2798030 () Bool)

(declare-fun tp!890929 () Bool)

(assert (=> b!2798030 (= e!1767529 tp!890929)))

(declare-fun b!2798031 () Bool)

(declare-fun tp!890927 () Bool)

(assert (=> b!2798031 (= e!1767533 tp!890927)))

(assert (= (and mapNonEmpty!18232 condMapEmpty!18235) mapIsEmpty!18235))

(assert (= (and mapNonEmpty!18232 (not condMapEmpty!18235)) mapNonEmpty!18235))

(assert (= b!2798028 b!2798026))

(assert (= (and b!2798028 condSetEmpty!24344) setIsEmpty!24343))

(assert (= (and b!2798028 (not condSetEmpty!24344)) setNonEmpty!24343))

(assert (= setNonEmpty!24343 b!2798029))

(assert (= (and mapNonEmpty!18235 ((_ is Cons!32504) mapValue!18235)) b!2798028))

(assert (= b!2798027 b!2798031))

(assert (= (and b!2798027 condSetEmpty!24343) setIsEmpty!24344))

(assert (= (and b!2798027 (not condSetEmpty!24343)) setNonEmpty!24344))

(assert (= setNonEmpty!24344 b!2798030))

(assert (= (and mapNonEmpty!18232 ((_ is Cons!32504) mapDefault!18235)) b!2798027))

(declare-fun m!3227549 () Bool)

(assert (=> b!2798027 m!3227549))

(declare-fun m!3227551 () Bool)

(assert (=> setNonEmpty!24343 m!3227551))

(declare-fun m!3227553 () Bool)

(assert (=> setNonEmpty!24344 m!3227553))

(declare-fun m!3227555 () Bool)

(assert (=> mapNonEmpty!18235 m!3227555))

(declare-fun m!3227557 () Bool)

(assert (=> b!2798028 m!3227557))

(declare-fun tp!890931 () Bool)

(declare-fun tp!890934 () Bool)

(declare-fun setRes!24345 () Bool)

(declare-fun b!2798032 () Bool)

(declare-fun e!1767537 () Bool)

(declare-fun e!1767536 () Bool)

(assert (=> b!2798032 (= e!1767537 (and tp!890931 (inv!44143 (_2!19586 (_1!19587 (h!37924 mapValue!18231)))) e!1767536 tp_is_empty!14231 setRes!24345 tp!890934))))

(declare-fun condSetEmpty!24345 () Bool)

(assert (=> b!2798032 (= condSetEmpty!24345 (= (_2!19587 (h!37924 mapValue!18231)) ((as const (Array Context!4854 Bool)) false)))))

(declare-fun setIsEmpty!24345 () Bool)

(assert (=> setIsEmpty!24345 setRes!24345))

(assert (=> mapNonEmpty!18232 (= tp!890869 e!1767537)))

(declare-fun setNonEmpty!24345 () Bool)

(declare-fun e!1767535 () Bool)

(declare-fun setElem!24345 () Context!4854)

(declare-fun tp!890933 () Bool)

(assert (=> setNonEmpty!24345 (= setRes!24345 (and tp!890933 (inv!44143 setElem!24345) e!1767535))))

(declare-fun setRest!24345 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24345 (= (_2!19587 (h!37924 mapValue!18231)) ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24345 true) setRest!24345))))

(declare-fun b!2798033 () Bool)

(declare-fun tp!890935 () Bool)

(assert (=> b!2798033 (= e!1767535 tp!890935)))

(declare-fun b!2798034 () Bool)

(declare-fun tp!890932 () Bool)

(assert (=> b!2798034 (= e!1767536 tp!890932)))

(assert (= b!2798032 b!2798034))

(assert (= (and b!2798032 condSetEmpty!24345) setIsEmpty!24345))

(assert (= (and b!2798032 (not condSetEmpty!24345)) setNonEmpty!24345))

(assert (= setNonEmpty!24345 b!2798033))

(assert (= (and mapNonEmpty!18232 ((_ is Cons!32504) mapValue!18231)) b!2798032))

(declare-fun m!3227559 () Bool)

(assert (=> b!2798032 m!3227559))

(declare-fun m!3227561 () Bool)

(assert (=> setNonEmpty!24345 m!3227561))

(declare-fun setIsEmpty!24348 () Bool)

(declare-fun setRes!24348 () Bool)

(assert (=> setIsEmpty!24348 setRes!24348))

(declare-fun e!1767544 () Bool)

(assert (=> b!2797838 (= tp!890873 e!1767544)))

(declare-fun b!2798043 () Bool)

(declare-fun e!1767545 () Bool)

(declare-fun tp!890945 () Bool)

(assert (=> b!2798043 (= e!1767545 tp!890945)))

(declare-fun setElem!24348 () Context!4854)

(declare-fun tp!890946 () Bool)

(declare-fun setNonEmpty!24348 () Bool)

(assert (=> setNonEmpty!24348 (= setRes!24348 (and tp!890946 (inv!44143 setElem!24348) e!1767545))))

(declare-fun setRest!24348 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24348 (= (_2!19584 (h!37923 mapDefault!18232)) ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24348 true) setRest!24348))))

(declare-fun e!1767546 () Bool)

(declare-fun tp!890947 () Bool)

(declare-fun b!2798044 () Bool)

(assert (=> b!2798044 (= e!1767544 (and (inv!44143 (_1!19583 (_1!19584 (h!37923 mapDefault!18232)))) e!1767546 tp_is_empty!14231 setRes!24348 tp!890947))))

(declare-fun condSetEmpty!24348 () Bool)

(assert (=> b!2798044 (= condSetEmpty!24348 (= (_2!19584 (h!37923 mapDefault!18232)) ((as const (Array Context!4854 Bool)) false)))))

(declare-fun b!2798045 () Bool)

(declare-fun tp!890944 () Bool)

(assert (=> b!2798045 (= e!1767546 tp!890944)))

(assert (= b!2798044 b!2798045))

(assert (= (and b!2798044 condSetEmpty!24348) setIsEmpty!24348))

(assert (= (and b!2798044 (not condSetEmpty!24348)) setNonEmpty!24348))

(assert (= setNonEmpty!24348 b!2798043))

(assert (= (and b!2797838 ((_ is Cons!32503) mapDefault!18232)) b!2798044))

(declare-fun m!3227563 () Bool)

(assert (=> setNonEmpty!24348 m!3227563))

(declare-fun m!3227565 () Bool)

(assert (=> b!2798044 m!3227565))

(declare-fun setIsEmpty!24349 () Bool)

(declare-fun setRes!24349 () Bool)

(assert (=> setIsEmpty!24349 setRes!24349))

(declare-fun e!1767547 () Bool)

(assert (=> b!2797839 (= tp!890866 e!1767547)))

(declare-fun b!2798046 () Bool)

(declare-fun e!1767548 () Bool)

(declare-fun tp!890949 () Bool)

(assert (=> b!2798046 (= e!1767548 tp!890949)))

(declare-fun setNonEmpty!24349 () Bool)

(declare-fun tp!890950 () Bool)

(declare-fun setElem!24349 () Context!4854)

(assert (=> setNonEmpty!24349 (= setRes!24349 (and tp!890950 (inv!44143 setElem!24349) e!1767548))))

(declare-fun setRest!24349 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24349 (= (_2!19584 (h!37923 (zeroValue!4269 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24349 true) setRest!24349))))

(declare-fun b!2798047 () Bool)

(declare-fun e!1767549 () Bool)

(declare-fun tp!890951 () Bool)

(assert (=> b!2798047 (= e!1767547 (and (inv!44143 (_1!19583 (_1!19584 (h!37923 (zeroValue!4269 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890)))))))))) e!1767549 tp_is_empty!14231 setRes!24349 tp!890951))))

(declare-fun condSetEmpty!24349 () Bool)

(assert (=> b!2798047 (= condSetEmpty!24349 (= (_2!19584 (h!37923 (zeroValue!4269 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890)))))))) ((as const (Array Context!4854 Bool)) false)))))

(declare-fun b!2798048 () Bool)

(declare-fun tp!890948 () Bool)

(assert (=> b!2798048 (= e!1767549 tp!890948)))

(assert (= b!2798047 b!2798048))

(assert (= (and b!2798047 condSetEmpty!24349) setIsEmpty!24349))

(assert (= (and b!2798047 (not condSetEmpty!24349)) setNonEmpty!24349))

(assert (= setNonEmpty!24349 b!2798046))

(assert (= (and b!2797839 ((_ is Cons!32503) (zeroValue!4269 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890)))))))) b!2798047))

(declare-fun m!3227567 () Bool)

(assert (=> setNonEmpty!24349 m!3227567))

(declare-fun m!3227569 () Bool)

(assert (=> b!2798047 m!3227569))

(declare-fun setIsEmpty!24350 () Bool)

(declare-fun setRes!24350 () Bool)

(assert (=> setIsEmpty!24350 setRes!24350))

(declare-fun e!1767550 () Bool)

(assert (=> b!2797839 (= tp!890858 e!1767550)))

(declare-fun b!2798049 () Bool)

(declare-fun e!1767551 () Bool)

(declare-fun tp!890953 () Bool)

(assert (=> b!2798049 (= e!1767551 tp!890953)))

(declare-fun setNonEmpty!24350 () Bool)

(declare-fun setElem!24350 () Context!4854)

(declare-fun tp!890954 () Bool)

(assert (=> setNonEmpty!24350 (= setRes!24350 (and tp!890954 (inv!44143 setElem!24350) e!1767551))))

(declare-fun setRest!24350 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24350 (= (_2!19584 (h!37923 (minValue!4269 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24350 true) setRest!24350))))

(declare-fun tp!890955 () Bool)

(declare-fun b!2798050 () Bool)

(declare-fun e!1767552 () Bool)

(assert (=> b!2798050 (= e!1767550 (and (inv!44143 (_1!19583 (_1!19584 (h!37923 (minValue!4269 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890)))))))))) e!1767552 tp_is_empty!14231 setRes!24350 tp!890955))))

(declare-fun condSetEmpty!24350 () Bool)

(assert (=> b!2798050 (= condSetEmpty!24350 (= (_2!19584 (h!37923 (minValue!4269 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890)))))))) ((as const (Array Context!4854 Bool)) false)))))

(declare-fun b!2798051 () Bool)

(declare-fun tp!890952 () Bool)

(assert (=> b!2798051 (= e!1767552 tp!890952)))

(assert (= b!2798050 b!2798051))

(assert (= (and b!2798050 condSetEmpty!24350) setIsEmpty!24350))

(assert (= (and b!2798050 (not condSetEmpty!24350)) setNonEmpty!24350))

(assert (= setNonEmpty!24350 b!2798049))

(assert (= (and b!2797839 ((_ is Cons!32503) (minValue!4269 (v!34102 (underlying!8223 (v!34103 (underlying!8224 (cache!4059 cacheUp!890)))))))) b!2798050))

(declare-fun m!3227571 () Bool)

(assert (=> setNonEmpty!24350 m!3227571))

(declare-fun m!3227573 () Bool)

(assert (=> b!2798050 m!3227573))

(declare-fun b!2798056 () Bool)

(declare-fun e!1767555 () Bool)

(declare-fun tp!890958 () Bool)

(assert (=> b!2798056 (= e!1767555 (and tp_is_empty!14231 tp!890958))))

(assert (=> b!2797858 (= tp!890861 e!1767555)))

(assert (= (and b!2797858 ((_ is Cons!32501) (t!228761 testedSuffix!143))) b!2798056))

(declare-fun condSetEmpty!24353 () Bool)

(assert (=> setNonEmpty!24335 (= condSetEmpty!24353 (= setRest!24335 ((as const (Array Context!4854 Bool)) false)))))

(declare-fun setRes!24353 () Bool)

(assert (=> setNonEmpty!24335 (= tp!890871 setRes!24353)))

(declare-fun setIsEmpty!24353 () Bool)

(assert (=> setIsEmpty!24353 setRes!24353))

(declare-fun setElem!24353 () Context!4854)

(declare-fun e!1767558 () Bool)

(declare-fun setNonEmpty!24353 () Bool)

(declare-fun tp!890963 () Bool)

(assert (=> setNonEmpty!24353 (= setRes!24353 (and tp!890963 (inv!44143 setElem!24353) e!1767558))))

(declare-fun setRest!24353 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24353 (= setRest!24335 ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24353 true) setRest!24353))))

(declare-fun b!2798061 () Bool)

(declare-fun tp!890964 () Bool)

(assert (=> b!2798061 (= e!1767558 tp!890964)))

(assert (= (and setNonEmpty!24335 condSetEmpty!24353) setIsEmpty!24353))

(assert (= (and setNonEmpty!24335 (not condSetEmpty!24353)) setNonEmpty!24353))

(assert (= setNonEmpty!24353 b!2798061))

(declare-fun m!3227575 () Bool)

(assert (=> setNonEmpty!24353 m!3227575))

(declare-fun condMapEmpty!18238 () Bool)

(declare-fun mapDefault!18238 () List!32603)

(assert (=> mapNonEmpty!18231 (= condMapEmpty!18238 (= mapRest!18231 ((as const (Array (_ BitVec 32) List!32603)) mapDefault!18238)))))

(declare-fun e!1767576 () Bool)

(declare-fun mapRes!18238 () Bool)

(assert (=> mapNonEmpty!18231 (= tp!890860 (and e!1767576 mapRes!18238))))

(declare-fun tp!890991 () Bool)

(declare-fun b!2798076 () Bool)

(declare-fun setRes!24358 () Bool)

(declare-fun e!1767571 () Bool)

(assert (=> b!2798076 (= e!1767576 (and (inv!44143 (_1!19583 (_1!19584 (h!37923 mapDefault!18238)))) e!1767571 tp_is_empty!14231 setRes!24358 tp!890991))))

(declare-fun condSetEmpty!24359 () Bool)

(assert (=> b!2798076 (= condSetEmpty!24359 (= (_2!19584 (h!37923 mapDefault!18238)) ((as const (Array Context!4854 Bool)) false)))))

(declare-fun setRes!24359 () Bool)

(declare-fun mapValue!18238 () List!32603)

(declare-fun e!1767572 () Bool)

(declare-fun b!2798077 () Bool)

(declare-fun tp!890990 () Bool)

(declare-fun e!1767575 () Bool)

(assert (=> b!2798077 (= e!1767572 (and (inv!44143 (_1!19583 (_1!19584 (h!37923 mapValue!18238)))) e!1767575 tp_is_empty!14231 setRes!24359 tp!890990))))

(declare-fun condSetEmpty!24358 () Bool)

(assert (=> b!2798077 (= condSetEmpty!24358 (= (_2!19584 (h!37923 mapValue!18238)) ((as const (Array Context!4854 Bool)) false)))))

(declare-fun setElem!24358 () Context!4854)

(declare-fun e!1767574 () Bool)

(declare-fun setNonEmpty!24358 () Bool)

(declare-fun tp!890986 () Bool)

(assert (=> setNonEmpty!24358 (= setRes!24358 (and tp!890986 (inv!44143 setElem!24358) e!1767574))))

(declare-fun setRest!24359 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24358 (= (_2!19584 (h!37923 mapDefault!18238)) ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24358 true) setRest!24359))))

(declare-fun setElem!24359 () Context!4854)

(declare-fun e!1767573 () Bool)

(declare-fun setNonEmpty!24359 () Bool)

(declare-fun tp!890989 () Bool)

(assert (=> setNonEmpty!24359 (= setRes!24359 (and tp!890989 (inv!44143 setElem!24359) e!1767573))))

(declare-fun setRest!24358 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24359 (= (_2!19584 (h!37923 mapValue!18238)) ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24359 true) setRest!24358))))

(declare-fun setIsEmpty!24358 () Bool)

(assert (=> setIsEmpty!24358 setRes!24358))

(declare-fun setIsEmpty!24359 () Bool)

(assert (=> setIsEmpty!24359 setRes!24359))

(declare-fun b!2798078 () Bool)

(declare-fun tp!890985 () Bool)

(assert (=> b!2798078 (= e!1767573 tp!890985)))

(declare-fun mapIsEmpty!18238 () Bool)

(assert (=> mapIsEmpty!18238 mapRes!18238))

(declare-fun b!2798079 () Bool)

(declare-fun tp!890983 () Bool)

(assert (=> b!2798079 (= e!1767574 tp!890983)))

(declare-fun b!2798080 () Bool)

(declare-fun tp!890984 () Bool)

(assert (=> b!2798080 (= e!1767571 tp!890984)))

(declare-fun b!2798081 () Bool)

(declare-fun tp!890987 () Bool)

(assert (=> b!2798081 (= e!1767575 tp!890987)))

(declare-fun mapNonEmpty!18238 () Bool)

(declare-fun tp!890988 () Bool)

(assert (=> mapNonEmpty!18238 (= mapRes!18238 (and tp!890988 e!1767572))))

(declare-fun mapKey!18238 () (_ BitVec 32))

(declare-fun mapRest!18238 () (Array (_ BitVec 32) List!32603))

(assert (=> mapNonEmpty!18238 (= mapRest!18231 (store mapRest!18238 mapKey!18238 mapValue!18238))))

(assert (= (and mapNonEmpty!18231 condMapEmpty!18238) mapIsEmpty!18238))

(assert (= (and mapNonEmpty!18231 (not condMapEmpty!18238)) mapNonEmpty!18238))

(assert (= b!2798077 b!2798081))

(assert (= (and b!2798077 condSetEmpty!24358) setIsEmpty!24359))

(assert (= (and b!2798077 (not condSetEmpty!24358)) setNonEmpty!24359))

(assert (= setNonEmpty!24359 b!2798078))

(assert (= (and mapNonEmpty!18238 ((_ is Cons!32503) mapValue!18238)) b!2798077))

(assert (= b!2798076 b!2798080))

(assert (= (and b!2798076 condSetEmpty!24359) setIsEmpty!24358))

(assert (= (and b!2798076 (not condSetEmpty!24359)) setNonEmpty!24358))

(assert (= setNonEmpty!24358 b!2798079))

(assert (= (and mapNonEmpty!18231 ((_ is Cons!32503) mapDefault!18238)) b!2798076))

(declare-fun m!3227577 () Bool)

(assert (=> setNonEmpty!24359 m!3227577))

(declare-fun m!3227579 () Bool)

(assert (=> b!2798076 m!3227579))

(declare-fun m!3227581 () Bool)

(assert (=> setNonEmpty!24358 m!3227581))

(declare-fun m!3227583 () Bool)

(assert (=> b!2798077 m!3227583))

(declare-fun m!3227585 () Bool)

(assert (=> mapNonEmpty!18238 m!3227585))

(declare-fun setIsEmpty!24360 () Bool)

(declare-fun setRes!24360 () Bool)

(assert (=> setIsEmpty!24360 setRes!24360))

(declare-fun e!1767577 () Bool)

(assert (=> mapNonEmpty!18231 (= tp!890876 e!1767577)))

(declare-fun b!2798082 () Bool)

(declare-fun e!1767578 () Bool)

(declare-fun tp!890993 () Bool)

(assert (=> b!2798082 (= e!1767578 tp!890993)))

(declare-fun setElem!24360 () Context!4854)

(declare-fun setNonEmpty!24360 () Bool)

(declare-fun tp!890994 () Bool)

(assert (=> setNonEmpty!24360 (= setRes!24360 (and tp!890994 (inv!44143 setElem!24360) e!1767578))))

(declare-fun setRest!24360 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24360 (= (_2!19584 (h!37923 mapValue!18232)) ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24360 true) setRest!24360))))

(declare-fun b!2798083 () Bool)

(declare-fun tp!890995 () Bool)

(declare-fun e!1767579 () Bool)

(assert (=> b!2798083 (= e!1767577 (and (inv!44143 (_1!19583 (_1!19584 (h!37923 mapValue!18232)))) e!1767579 tp_is_empty!14231 setRes!24360 tp!890995))))

(declare-fun condSetEmpty!24360 () Bool)

(assert (=> b!2798083 (= condSetEmpty!24360 (= (_2!19584 (h!37923 mapValue!18232)) ((as const (Array Context!4854 Bool)) false)))))

(declare-fun b!2798084 () Bool)

(declare-fun tp!890992 () Bool)

(assert (=> b!2798084 (= e!1767579 tp!890992)))

(assert (= b!2798083 b!2798084))

(assert (= (and b!2798083 condSetEmpty!24360) setIsEmpty!24360))

(assert (= (and b!2798083 (not condSetEmpty!24360)) setNonEmpty!24360))

(assert (= setNonEmpty!24360 b!2798082))

(assert (= (and mapNonEmpty!18231 ((_ is Cons!32503) mapValue!18232)) b!2798083))

(declare-fun m!3227587 () Bool)

(assert (=> setNonEmpty!24360 m!3227587))

(declare-fun m!3227589 () Bool)

(assert (=> b!2798083 m!3227589))

(declare-fun b!2798093 () Bool)

(declare-fun tp!891004 () Bool)

(declare-fun e!1767584 () Bool)

(declare-fun tp!891003 () Bool)

(assert (=> b!2798093 (= e!1767584 (and (inv!44142 (left!24571 (c!453745 totalInput!758))) tp!891003 (inv!44142 (right!24901 (c!453745 totalInput!758))) tp!891004))))

(declare-fun b!2798095 () Bool)

(declare-fun e!1767585 () Bool)

(declare-fun tp!891002 () Bool)

(assert (=> b!2798095 (= e!1767585 tp!891002)))

(declare-fun b!2798094 () Bool)

(declare-fun inv!44149 (IArray!20143) Bool)

(assert (=> b!2798094 (= e!1767584 (and (inv!44149 (xs!13181 (c!453745 totalInput!758))) e!1767585))))

(assert (=> b!2797835 (= tp!890867 (and (inv!44142 (c!453745 totalInput!758)) e!1767584))))

(assert (= (and b!2797835 ((_ is Node!10069) (c!453745 totalInput!758))) b!2798093))

(assert (= b!2798094 b!2798095))

(assert (= (and b!2797835 ((_ is Leaf!15342) (c!453745 totalInput!758))) b!2798094))

(declare-fun m!3227591 () Bool)

(assert (=> b!2798093 m!3227591))

(declare-fun m!3227593 () Bool)

(assert (=> b!2798093 m!3227593))

(declare-fun m!3227595 () Bool)

(assert (=> b!2798094 m!3227595))

(assert (=> b!2797835 m!3227279))

(declare-fun tp!891008 () Bool)

(declare-fun e!1767588 () Bool)

(declare-fun tp!891005 () Bool)

(declare-fun setRes!24361 () Bool)

(declare-fun e!1767587 () Bool)

(declare-fun b!2798096 () Bool)

(assert (=> b!2798096 (= e!1767588 (and tp!891005 (inv!44143 (_2!19586 (_1!19587 (h!37924 (zeroValue!4270 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009)))))))))) e!1767587 tp_is_empty!14231 setRes!24361 tp!891008))))

(declare-fun condSetEmpty!24361 () Bool)

(assert (=> b!2798096 (= condSetEmpty!24361 (= (_2!19587 (h!37924 (zeroValue!4270 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009)))))))) ((as const (Array Context!4854 Bool)) false)))))

(declare-fun setIsEmpty!24361 () Bool)

(assert (=> setIsEmpty!24361 setRes!24361))

(assert (=> b!2797853 (= tp!890862 e!1767588)))

(declare-fun tp!891007 () Bool)

(declare-fun setNonEmpty!24361 () Bool)

(declare-fun setElem!24361 () Context!4854)

(declare-fun e!1767586 () Bool)

(assert (=> setNonEmpty!24361 (= setRes!24361 (and tp!891007 (inv!44143 setElem!24361) e!1767586))))

(declare-fun setRest!24361 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24361 (= (_2!19587 (h!37924 (zeroValue!4270 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24361 true) setRest!24361))))

(declare-fun b!2798097 () Bool)

(declare-fun tp!891009 () Bool)

(assert (=> b!2798097 (= e!1767586 tp!891009)))

(declare-fun b!2798098 () Bool)

(declare-fun tp!891006 () Bool)

(assert (=> b!2798098 (= e!1767587 tp!891006)))

(assert (= b!2798096 b!2798098))

(assert (= (and b!2798096 condSetEmpty!24361) setIsEmpty!24361))

(assert (= (and b!2798096 (not condSetEmpty!24361)) setNonEmpty!24361))

(assert (= setNonEmpty!24361 b!2798097))

(assert (= (and b!2797853 ((_ is Cons!32504) (zeroValue!4270 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009)))))))) b!2798096))

(declare-fun m!3227597 () Bool)

(assert (=> b!2798096 m!3227597))

(declare-fun m!3227599 () Bool)

(assert (=> setNonEmpty!24361 m!3227599))

(declare-fun b!2798099 () Bool)

(declare-fun setRes!24362 () Bool)

(declare-fun tp!891010 () Bool)

(declare-fun e!1767590 () Bool)

(declare-fun e!1767591 () Bool)

(declare-fun tp!891013 () Bool)

(assert (=> b!2798099 (= e!1767591 (and tp!891010 (inv!44143 (_2!19586 (_1!19587 (h!37924 (minValue!4270 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009)))))))))) e!1767590 tp_is_empty!14231 setRes!24362 tp!891013))))

(declare-fun condSetEmpty!24362 () Bool)

(assert (=> b!2798099 (= condSetEmpty!24362 (= (_2!19587 (h!37924 (minValue!4270 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009)))))))) ((as const (Array Context!4854 Bool)) false)))))

(declare-fun setIsEmpty!24362 () Bool)

(assert (=> setIsEmpty!24362 setRes!24362))

(assert (=> b!2797853 (= tp!890870 e!1767591)))

(declare-fun e!1767589 () Bool)

(declare-fun setNonEmpty!24362 () Bool)

(declare-fun tp!891012 () Bool)

(declare-fun setElem!24362 () Context!4854)

(assert (=> setNonEmpty!24362 (= setRes!24362 (and tp!891012 (inv!44143 setElem!24362) e!1767589))))

(declare-fun setRest!24362 () (InoxSet Context!4854))

(assert (=> setNonEmpty!24362 (= (_2!19587 (h!37924 (minValue!4270 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4854 Bool)) false) setElem!24362 true) setRest!24362))))

(declare-fun b!2798100 () Bool)

(declare-fun tp!891014 () Bool)

(assert (=> b!2798100 (= e!1767589 tp!891014)))

(declare-fun b!2798101 () Bool)

(declare-fun tp!891011 () Bool)

(assert (=> b!2798101 (= e!1767590 tp!891011)))

(assert (= b!2798099 b!2798101))

(assert (= (and b!2798099 condSetEmpty!24362) setIsEmpty!24362))

(assert (= (and b!2798099 (not condSetEmpty!24362)) setNonEmpty!24362))

(assert (= setNonEmpty!24362 b!2798100))

(assert (= (and b!2797853 ((_ is Cons!32504) (minValue!4270 (v!34104 (underlying!8225 (v!34105 (underlying!8226 (cache!4060 cacheDown!1009)))))))) b!2798099))

(declare-fun m!3227601 () Bool)

(assert (=> b!2798099 m!3227601))

(declare-fun m!3227603 () Bool)

(assert (=> setNonEmpty!24362 m!3227603))

(declare-fun b!2798102 () Bool)

(declare-fun e!1767592 () Bool)

(declare-fun tp!891015 () Bool)

(assert (=> b!2798102 (= e!1767592 (and tp_is_empty!14231 tp!891015))))

(assert (=> b!2797850 (= tp!890874 e!1767592)))

(assert (= (and b!2797850 ((_ is Cons!32501) (t!228761 testedP!183))) b!2798102))

(check-sat (not b!2797981) (not b!2797931) (not setNonEmpty!24358) (not b!2797912) (not b!2798005) (not setNonEmpty!24350) b_and!204039 (not b!2798099) (not b!2798004) (not b!2797947) (not setNonEmpty!24345) (not b!2798027) (not b!2797927) (not b!2798045) (not b!2798084) (not b!2797901) (not b!2798056) (not d!812957) (not d!813019) (not d!812969) (not b!2797885) (not b!2798043) (not b!2797880) (not b!2798031) (not bm!182794) (not d!812959) (not b_next!80007) (not d!812999) (not b!2798061) (not b!2798097) (not b!2798028) (not b!2798100) (not d!812953) (not b!2797920) (not b!2797956) (not b!2798026) (not b!2798044) (not b!2798030) (not b_next!80009) (not bm!182798) (not b!2797995) (not d!812979) (not b!2798049) (not b!2798029) (not d!812995) (not b!2798076) (not b!2797913) b_and!204041 (not b!2797898) (not d!812991) (not b!2798078) (not b!2797945) (not b!2797948) (not b!2797886) (not d!812975) (not b!2797875) (not d!812981) (not d!813015) b_and!204043 (not d!812967) (not b!2798048) (not b!2798006) (not b!2797940) (not b!2797929) (not b!2798047) (not b!2798080) (not setNonEmpty!24360) (not b!2798082) (not d!812943) (not b!2797937) (not mapNonEmpty!18235) (not b!2798051) (not b!2798033) (not b!2798032) (not b!2797900) (not setNonEmpty!24344) (not setNonEmpty!24359) (not b_next!80011) (not d!813029) (not b!2797879) (not b!2797994) (not d!813001) (not b!2797878) (not setNonEmpty!24362) (not setNonEmpty!24349) (not b!2798094) (not b!2797943) (not setNonEmpty!24348) (not d!812951) (not b!2797982) (not d!812973) b_and!204045 (not bm!182795) (not b!2797944) (not b!2798081) (not b!2798093) (not b!2797939) (not b!2797934) (not d!812945) (not b!2797959) (not b!2797874) (not b!2798034) (not b!2797876) (not b!2798102) (not b!2798079) (not mapNonEmpty!18238) tp_is_empty!14231 (not b!2798095) (not d!813009) (not d!813025) (not b!2798101) (not b!2797835) (not b_next!80005) (not d!813003) (not b!2798011) (not b!2797951) (not b!2797993) (not b!2797919) (not setNonEmpty!24343) (not d!812955) (not b!2798077) (not setNonEmpty!24338) (not setNonEmpty!24361) (not setNonEmpty!24353) (not d!813013) (not b!2797902) (not b!2798083) (not b!2797891) (not d!812977) (not b!2798050) (not b!2798098) (not d!813027) (not b!2797952) (not d!813023) (not b!2798046) (not b!2798096))
(check-sat b_and!204039 (not b_next!80007) (not b_next!80009) b_and!204041 b_and!204043 (not b_next!80011) b_and!204045 (not b_next!80005))
