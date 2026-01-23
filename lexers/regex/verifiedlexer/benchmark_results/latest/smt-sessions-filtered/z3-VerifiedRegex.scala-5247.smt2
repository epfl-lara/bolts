; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269588 () Bool)

(assert start!269588)

(declare-fun b!2788818 () Bool)

(declare-fun b_free!78901 () Bool)

(declare-fun b_next!79605 () Bool)

(assert (=> b!2788818 (= b_free!78901 (not b_next!79605))))

(declare-fun tp!884945 () Bool)

(declare-fun b_and!203639 () Bool)

(assert (=> b!2788818 (= tp!884945 b_and!203639)))

(declare-fun b!2788830 () Bool)

(declare-fun b_free!78903 () Bool)

(declare-fun b_next!79607 () Bool)

(assert (=> b!2788830 (= b_free!78903 (not b_next!79607))))

(declare-fun tp!884947 () Bool)

(declare-fun b_and!203641 () Bool)

(assert (=> b!2788830 (= tp!884947 b_and!203641)))

(declare-fun b!2788842 () Bool)

(declare-fun b_free!78905 () Bool)

(declare-fun b_next!79609 () Bool)

(assert (=> b!2788842 (= b_free!78905 (not b_next!79609))))

(declare-fun tp!884952 () Bool)

(declare-fun b_and!203643 () Bool)

(assert (=> b!2788842 (= tp!884952 b_and!203643)))

(declare-fun b!2788827 () Bool)

(declare-fun b_free!78907 () Bool)

(declare-fun b_next!79611 () Bool)

(assert (=> b!2788827 (= b_free!78907 (not b_next!79611))))

(declare-fun tp!884955 () Bool)

(declare-fun b_and!203645 () Bool)

(assert (=> b!2788827 (= tp!884955 b_and!203645)))

(declare-fun b!2788817 () Bool)

(declare-fun e!1760414 () Bool)

(declare-fun e!1760418 () Bool)

(assert (=> b!2788817 (= e!1760414 (not e!1760418))))

(declare-fun res!1163630 () Bool)

(assert (=> b!2788817 (=> res!1163630 e!1760418)))

(declare-datatypes ((C!16476 0))(
  ( (C!16477 (val!10172 Int)) )
))
(declare-datatypes ((List!32395 0))(
  ( (Nil!32295) (Cons!32295 (h!37715 C!16476) (t!228537 List!32395)) )
))
(declare-fun testedP!183 () List!32395)

(declare-fun lt!996735 () List!32395)

(declare-fun isPrefix!2594 (List!32395 List!32395) Bool)

(assert (=> b!2788817 (= res!1163630 (not (isPrefix!2594 testedP!183 lt!996735)))))

(declare-fun lt!996736 () List!32395)

(assert (=> b!2788817 (isPrefix!2594 testedP!183 lt!996736)))

(declare-datatypes ((Unit!46513 0))(
  ( (Unit!46514) )
))
(declare-fun lt!996741 () Unit!46513)

(declare-fun testedSuffix!143 () List!32395)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1704 (List!32395 List!32395) Unit!46513)

(assert (=> b!2788817 (= lt!996741 (lemmaConcatTwoListThenFirstIsPrefix!1704 testedP!183 testedSuffix!143))))

(declare-fun e!1760413 () Bool)

(declare-fun e!1760434 () Bool)

(assert (=> b!2788818 (= e!1760413 (and e!1760434 tp!884945))))

(declare-fun setIsEmpty!23731 () Bool)

(declare-fun setRes!23731 () Bool)

(assert (=> setIsEmpty!23731 setRes!23731))

(declare-fun b!2788819 () Bool)

(declare-fun e!1760430 () Bool)

(declare-fun e!1760406 () Bool)

(assert (=> b!2788819 (= e!1760430 e!1760406)))

(declare-fun setNonEmpty!23731 () Bool)

(declare-fun tp!884946 () Bool)

(declare-fun e!1760415 () Bool)

(declare-datatypes ((Regex!8159 0))(
  ( (ElementMatch!8159 (c!452797 C!16476)) (Concat!13247 (regOne!16830 Regex!8159) (regTwo!16830 Regex!8159)) (EmptyExpr!8159) (Star!8159 (reg!8488 Regex!8159)) (EmptyLang!8159) (Union!8159 (regOne!16831 Regex!8159) (regTwo!16831 Regex!8159)) )
))
(declare-datatypes ((List!32396 0))(
  ( (Nil!32296) (Cons!32296 (h!37716 Regex!8159) (t!228538 List!32396)) )
))
(declare-datatypes ((Context!4754 0))(
  ( (Context!4755 (exprs!2877 List!32396)) )
))
(declare-fun setElem!23731 () Context!4754)

(declare-fun inv!43881 (Context!4754) Bool)

(assert (=> setNonEmpty!23731 (= setRes!23731 (and tp!884946 (inv!43881 setElem!23731) e!1760415))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3684 () (InoxSet Context!4754))

(declare-fun setRest!23731 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23731 (= z!3684 ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23731 true) setRest!23731))))

(declare-fun b!2788820 () Bool)

(declare-fun res!1163629 () Bool)

(declare-fun e!1760425 () Bool)

(assert (=> b!2788820 (=> res!1163629 e!1760425)))

(declare-datatypes ((IArray!20059 0))(
  ( (IArray!20060 (innerList!10087 List!32395)) )
))
(declare-datatypes ((Conc!10027 0))(
  ( (Node!10027 (left!24498 Conc!10027) (right!24828 Conc!10027) (csize!20284 Int) (cheight!10238 Int)) (Leaf!15275 (xs!13138 IArray!20059) (csize!20285 Int)) (Empty!10027) )
))
(declare-datatypes ((BalanceConc!19668 0))(
  ( (BalanceConc!19669 (c!452798 Conc!10027)) )
))
(declare-datatypes ((tuple2!32702 0))(
  ( (tuple2!32703 (_1!19341 BalanceConc!19668) (_2!19341 BalanceConc!19668)) )
))
(declare-fun lt!996730 () tuple2!32702)

(declare-fun testedPSize!143 () Int)

(declare-fun size!25123 (BalanceConc!19668) Int)

(assert (=> b!2788820 (= res!1163629 (not (= (size!25123 (_1!19341 lt!996730)) testedPSize!143)))))

(declare-fun b!2788821 () Bool)

(declare-fun e!1760419 () Bool)

(declare-fun e!1760405 () Bool)

(assert (=> b!2788821 (= e!1760419 e!1760405)))

(declare-fun mapIsEmpty!17849 () Bool)

(declare-fun mapRes!17849 () Bool)

(assert (=> mapIsEmpty!17849 mapRes!17849))

(declare-fun res!1163632 () Bool)

(declare-fun e!1760410 () Bool)

(assert (=> start!269588 (=> (not res!1163632) (not e!1760410))))

(assert (=> start!269588 (= res!1163632 (= lt!996736 lt!996735))))

(declare-fun totalInput!758 () BalanceConc!19668)

(declare-fun list!12154 (BalanceConc!19668) List!32395)

(assert (=> start!269588 (= lt!996735 (list!12154 totalInput!758))))

(declare-fun ++!7975 (List!32395 List!32395) List!32395)

(assert (=> start!269588 (= lt!996736 (++!7975 testedP!183 testedSuffix!143))))

(assert (=> start!269588 e!1760410))

(declare-fun e!1760432 () Bool)

(declare-fun inv!43882 (BalanceConc!19668) Bool)

(assert (=> start!269588 (and (inv!43882 totalInput!758) e!1760432)))

(declare-fun condSetEmpty!23731 () Bool)

(assert (=> start!269588 (= condSetEmpty!23731 (= z!3684 ((as const (Array Context!4754 Bool)) false)))))

(assert (=> start!269588 setRes!23731))

(assert (=> start!269588 true))

(declare-fun e!1760416 () Bool)

(assert (=> start!269588 e!1760416))

(declare-fun e!1760429 () Bool)

(assert (=> start!269588 e!1760429))

(declare-datatypes ((array!13929 0))(
  ( (array!13930 (arr!6207 (Array (_ BitVec 32) (_ BitVec 64))) (size!25124 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!5040 0))(
  ( (tuple3!5041 (_1!19342 Regex!8159) (_2!19342 Context!4754) (_3!2990 C!16476)) )
))
(declare-datatypes ((tuple2!32704 0))(
  ( (tuple2!32705 (_1!19343 tuple3!5040) (_2!19343 (InoxSet Context!4754))) )
))
(declare-datatypes ((List!32397 0))(
  ( (Nil!32297) (Cons!32297 (h!37717 tuple2!32704) (t!228539 List!32397)) )
))
(declare-datatypes ((array!13931 0))(
  ( (array!13932 (arr!6208 (Array (_ BitVec 32) List!32397)) (size!25125 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7830 0))(
  ( (LongMapFixedSize!7831 (defaultEntry!4300 Int) (mask!9731 (_ BitVec 32)) (extraKeys!4164 (_ BitVec 32)) (zeroValue!4174 List!32397) (minValue!4174 List!32397) (_size!7873 (_ BitVec 32)) (_keys!4215 array!13929) (_values!4196 array!13931) (_vacant!3976 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15469 0))(
  ( (Cell!15470 (v!33901 LongMapFixedSize!7830)) )
))
(declare-datatypes ((MutLongMap!3915 0))(
  ( (LongMap!3915 (underlying!8033 Cell!15469)) (MutLongMapExt!3914 (__x!21395 Int)) )
))
(declare-datatypes ((Cell!15471 0))(
  ( (Cell!15472 (v!33902 MutLongMap!3915)) )
))
(declare-datatypes ((Hashable!3831 0))(
  ( (HashableExt!3830 (__x!21396 Int)) )
))
(declare-datatypes ((MutableMap!3821 0))(
  ( (MutableMapExt!3820 (__x!21397 Int)) (HashMap!3821 (underlying!8034 Cell!15471) (hashF!5863 Hashable!3831) (_size!7874 (_ BitVec 32)) (defaultValue!3992 Int)) )
))
(declare-datatypes ((CacheDown!2646 0))(
  ( (CacheDown!2647 (cache!3964 MutableMap!3821)) )
))
(declare-fun cacheDown!1009 () CacheDown!2646)

(declare-fun inv!43883 (CacheDown!2646) Bool)

(assert (=> start!269588 (and (inv!43883 cacheDown!1009) e!1760419)))

(declare-datatypes ((Hashable!3832 0))(
  ( (HashableExt!3831 (__x!21398 Int)) )
))
(declare-datatypes ((tuple2!32706 0))(
  ( (tuple2!32707 (_1!19344 Context!4754) (_2!19344 C!16476)) )
))
(declare-datatypes ((tuple2!32708 0))(
  ( (tuple2!32709 (_1!19345 tuple2!32706) (_2!19345 (InoxSet Context!4754))) )
))
(declare-datatypes ((List!32398 0))(
  ( (Nil!32298) (Cons!32298 (h!37718 tuple2!32708) (t!228540 List!32398)) )
))
(declare-datatypes ((array!13933 0))(
  ( (array!13934 (arr!6209 (Array (_ BitVec 32) List!32398)) (size!25126 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7832 0))(
  ( (LongMapFixedSize!7833 (defaultEntry!4301 Int) (mask!9732 (_ BitVec 32)) (extraKeys!4165 (_ BitVec 32)) (zeroValue!4175 List!32398) (minValue!4175 List!32398) (_size!7875 (_ BitVec 32)) (_keys!4216 array!13929) (_values!4197 array!13933) (_vacant!3977 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15473 0))(
  ( (Cell!15474 (v!33903 LongMapFixedSize!7832)) )
))
(declare-datatypes ((MutLongMap!3916 0))(
  ( (LongMap!3916 (underlying!8035 Cell!15473)) (MutLongMapExt!3915 (__x!21399 Int)) )
))
(declare-datatypes ((Cell!15475 0))(
  ( (Cell!15476 (v!33904 MutLongMap!3916)) )
))
(declare-datatypes ((MutableMap!3822 0))(
  ( (MutableMapExt!3821 (__x!21400 Int)) (HashMap!3822 (underlying!8036 Cell!15475) (hashF!5864 Hashable!3832) (_size!7876 (_ BitVec 32)) (defaultValue!3993 Int)) )
))
(declare-datatypes ((CacheUp!2528 0))(
  ( (CacheUp!2529 (cache!3965 MutableMap!3822)) )
))
(declare-fun cacheUp!890 () CacheUp!2528)

(declare-fun e!1760422 () Bool)

(declare-fun inv!43884 (CacheUp!2528) Bool)

(assert (=> start!269588 (and (inv!43884 cacheUp!890) e!1760422)))

(declare-fun mapNonEmpty!17849 () Bool)

(declare-fun mapRes!17850 () Bool)

(declare-fun tp!884958 () Bool)

(declare-fun tp!884943 () Bool)

(assert (=> mapNonEmpty!17849 (= mapRes!17850 (and tp!884958 tp!884943))))

(declare-fun mapKey!17849 () (_ BitVec 32))

(declare-fun mapRest!17850 () (Array (_ BitVec 32) List!32397))

(declare-fun mapValue!17849 () List!32397)

(assert (=> mapNonEmpty!17849 (= (arr!6208 (_values!4196 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009))))))) (store mapRest!17850 mapKey!17849 mapValue!17849))))

(declare-fun b!2788822 () Bool)

(declare-fun e!1760424 () Bool)

(declare-fun e!1760427 () Bool)

(assert (=> b!2788822 (= e!1760424 e!1760427)))

(declare-fun b!2788823 () Bool)

(declare-fun res!1163628 () Bool)

(assert (=> b!2788823 (=> (not res!1163628) (not e!1760414))))

(declare-fun valid!3058 (CacheDown!2646) Bool)

(assert (=> b!2788823 (= res!1163628 (valid!3058 cacheDown!1009))))

(declare-fun b!2788824 () Bool)

(declare-fun e!1760411 () Bool)

(declare-fun e!1760408 () Bool)

(assert (=> b!2788824 (= e!1760411 e!1760408)))

(declare-fun res!1163637 () Bool)

(assert (=> b!2788824 (=> res!1163637 e!1760408)))

(declare-fun lt!996744 () Int)

(declare-fun lt!996737 () Int)

(assert (=> b!2788824 (= res!1163637 (>= lt!996744 lt!996737))))

(declare-fun lt!996731 () Unit!46513)

(declare-fun e!1760407 () Unit!46513)

(assert (=> b!2788824 (= lt!996731 e!1760407)))

(declare-fun c!452796 () Bool)

(assert (=> b!2788824 (= c!452796 (= lt!996744 lt!996737))))

(declare-fun size!25127 (List!32395) Int)

(assert (=> b!2788824 (<= lt!996744 (size!25127 lt!996735))))

(declare-fun lt!996747 () Unit!46513)

(declare-fun lemmaIsPrefixThenSmallerEqSize!280 (List!32395 List!32395) Unit!46513)

(assert (=> b!2788824 (= lt!996747 (lemmaIsPrefixThenSmallerEqSize!280 testedP!183 lt!996735))))

(declare-fun b!2788825 () Bool)

(assert (=> b!2788825 (= e!1760425 e!1760411)))

(declare-fun res!1163635 () Bool)

(assert (=> b!2788825 (=> res!1163635 e!1760411)))

(declare-fun lt!996732 () C!16476)

(declare-fun head!6176 (List!32395) C!16476)

(assert (=> b!2788825 (= res!1163635 (not (= lt!996732 (head!6176 testedSuffix!143))))))

(declare-fun apply!7560 (BalanceConc!19668 Int) C!16476)

(assert (=> b!2788825 (= lt!996732 (apply!7560 totalInput!758 testedPSize!143))))

(declare-fun drop!1730 (List!32395 Int) List!32395)

(declare-fun apply!7561 (List!32395 Int) C!16476)

(assert (=> b!2788825 (= (head!6176 (drop!1730 lt!996735 testedPSize!143)) (apply!7561 lt!996735 testedPSize!143))))

(declare-fun lt!996746 () Unit!46513)

(declare-fun lemmaDropApply!936 (List!32395 Int) Unit!46513)

(assert (=> b!2788825 (= lt!996746 (lemmaDropApply!936 lt!996735 testedPSize!143))))

(declare-fun lt!996725 () List!32395)

(declare-fun lt!996739 () List!32395)

(assert (=> b!2788825 (not (or (not (= lt!996725 testedP!183)) (not (= lt!996739 testedSuffix!143))))))

(declare-fun lt!996729 () Unit!46513)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!363 (List!32395 List!32395 List!32395 List!32395) Unit!46513)

(assert (=> b!2788825 (= lt!996729 (lemmaConcatSameAndSameSizesThenSameLists!363 lt!996725 lt!996739 testedP!183 testedSuffix!143))))

(declare-fun b!2788826 () Bool)

(declare-fun e!1760431 () Bool)

(assert (=> b!2788826 (= e!1760431 e!1760424)))

(declare-fun e!1760421 () Bool)

(assert (=> b!2788827 (= e!1760405 (and e!1760421 tp!884955))))

(declare-fun b!2788828 () Bool)

(declare-fun lt!996738 () MutLongMap!3915)

(get-info :version)

(assert (=> b!2788828 (= e!1760421 (and e!1760431 ((_ is LongMap!3915) lt!996738)))))

(assert (=> b!2788828 (= lt!996738 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009))))))

(declare-fun b!2788829 () Bool)

(declare-fun e!1760428 () Bool)

(assert (=> b!2788829 (= e!1760418 e!1760428)))

(declare-fun res!1163636 () Bool)

(assert (=> b!2788829 (=> res!1163636 e!1760428)))

(declare-fun lostCauseZipper!472 ((InoxSet Context!4754)) Bool)

(assert (=> b!2788829 (= res!1163636 (lostCauseZipper!472 z!3684))))

(declare-fun lt!996743 () List!32395)

(assert (=> b!2788829 (and (= testedSuffix!143 lt!996743) (= lt!996743 testedSuffix!143))))

(declare-fun lt!996745 () Unit!46513)

(declare-fun lemmaSamePrefixThenSameSuffix!1173 (List!32395 List!32395 List!32395 List!32395 List!32395) Unit!46513)

(assert (=> b!2788829 (= lt!996745 (lemmaSamePrefixThenSameSuffix!1173 testedP!183 testedSuffix!143 testedP!183 lt!996743 lt!996735))))

(declare-fun getSuffix!1272 (List!32395 List!32395) List!32395)

(assert (=> b!2788829 (= lt!996743 (getSuffix!1272 lt!996735 testedP!183))))

(declare-fun tp!884948 () Bool)

(declare-fun tp!884944 () Bool)

(declare-fun e!1760423 () Bool)

(declare-fun array_inv!4442 (array!13929) Bool)

(declare-fun array_inv!4443 (array!13933) Bool)

(assert (=> b!2788830 (= e!1760406 (and tp!884947 tp!884944 tp!884948 (array_inv!4442 (_keys!4216 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890))))))) (array_inv!4443 (_values!4197 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890))))))) e!1760423))))

(declare-fun b!2788831 () Bool)

(declare-fun res!1163631 () Bool)

(assert (=> b!2788831 (=> res!1163631 e!1760428)))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2788831 (= res!1163631 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2788832 () Bool)

(declare-fun tp!884961 () Bool)

(assert (=> b!2788832 (= e!1760415 tp!884961)))

(declare-fun b!2788833 () Bool)

(declare-fun e!1760417 () Bool)

(assert (=> b!2788833 (= e!1760417 (and (<= 0 testedPSize!143) (< testedPSize!143 lt!996737)))))

(declare-datatypes ((tuple3!5042 0))(
  ( (tuple3!5043 (_1!19346 (InoxSet Context!4754)) (_2!19346 CacheUp!2528) (_3!2991 CacheDown!2646)) )
))
(declare-fun lt!996734 () tuple3!5042)

(declare-fun derivationStepZipperMem!105 ((InoxSet Context!4754) C!16476 CacheUp!2528 CacheDown!2646) tuple3!5042)

(assert (=> b!2788833 (= lt!996734 (derivationStepZipperMem!105 z!3684 lt!996732 cacheUp!890 cacheDown!1009))))

(declare-fun b!2788834 () Bool)

(declare-fun e!1760409 () Bool)

(assert (=> b!2788834 (= e!1760409 e!1760414)))

(declare-fun res!1163634 () Bool)

(assert (=> b!2788834 (=> (not res!1163634) (not e!1760414))))

(assert (=> b!2788834 (= res!1163634 (= totalInputSize!205 lt!996737))))

(assert (=> b!2788834 (= lt!996737 (size!25123 totalInput!758))))

(declare-fun b!2788835 () Bool)

(declare-fun res!1163639 () Bool)

(assert (=> b!2788835 (=> (not res!1163639) (not e!1760414))))

(declare-fun valid!3059 (CacheUp!2528) Bool)

(assert (=> b!2788835 (= res!1163639 (valid!3059 cacheUp!890))))

(declare-fun mapNonEmpty!17850 () Bool)

(declare-fun tp!884956 () Bool)

(declare-fun tp!884959 () Bool)

(assert (=> mapNonEmpty!17850 (= mapRes!17849 (and tp!884956 tp!884959))))

(declare-fun mapValue!17850 () List!32398)

(declare-fun mapKey!17850 () (_ BitVec 32))

(declare-fun mapRest!17849 () (Array (_ BitVec 32) List!32398))

(assert (=> mapNonEmpty!17850 (= (arr!6209 (_values!4197 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890))))))) (store mapRest!17849 mapKey!17850 mapValue!17850))))

(declare-fun b!2788836 () Bool)

(assert (=> b!2788836 (= e!1760428 e!1760425)))

(declare-fun res!1163638 () Bool)

(assert (=> b!2788836 (=> res!1163638 e!1760425)))

(assert (=> b!2788836 (= res!1163638 (not (= (++!7975 lt!996725 lt!996739) lt!996735)))))

(assert (=> b!2788836 (= lt!996739 (list!12154 (_2!19341 lt!996730)))))

(assert (=> b!2788836 (= lt!996725 (list!12154 (_1!19341 lt!996730)))))

(declare-fun splitAt!155 (BalanceConc!19668 Int) tuple2!32702)

(assert (=> b!2788836 (= lt!996730 (splitAt!155 totalInput!758 testedPSize!143))))

(declare-fun b!2788837 () Bool)

(assert (=> b!2788837 (= e!1760410 e!1760409)))

(declare-fun res!1163627 () Bool)

(assert (=> b!2788837 (=> (not res!1163627) (not e!1760409))))

(assert (=> b!2788837 (= res!1163627 (= testedPSize!143 lt!996744))))

(assert (=> b!2788837 (= lt!996744 (size!25127 testedP!183))))

(declare-fun b!2788838 () Bool)

(assert (=> b!2788838 (= e!1760408 e!1760417)))

(declare-fun res!1163633 () Bool)

(assert (=> b!2788838 (=> res!1163633 e!1760417)))

(declare-fun nullableZipper!646 ((InoxSet Context!4754)) Bool)

(assert (=> b!2788838 (= res!1163633 (nullableZipper!646 z!3684))))

(declare-fun lt!996740 () List!32395)

(assert (=> b!2788838 (= (++!7975 (++!7975 testedP!183 (Cons!32295 lt!996732 Nil!32295)) lt!996740) lt!996735)))

(declare-fun lt!996728 () Unit!46513)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!882 (List!32395 C!16476 List!32395 List!32395) Unit!46513)

(assert (=> b!2788838 (= lt!996728 (lemmaMoveElementToOtherListKeepsConcatEq!882 testedP!183 lt!996732 lt!996740 lt!996735))))

(declare-fun tail!4408 (List!32395) List!32395)

(assert (=> b!2788838 (= lt!996740 (tail!4408 testedSuffix!143))))

(assert (=> b!2788838 (isPrefix!2594 (++!7975 testedP!183 (Cons!32295 (head!6176 lt!996743) Nil!32295)) lt!996735)))

(declare-fun lt!996733 () Unit!46513)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!473 (List!32395 List!32395) Unit!46513)

(assert (=> b!2788838 (= lt!996733 (lemmaAddHeadSuffixToPrefixStillPrefix!473 testedP!183 lt!996735))))

(declare-fun b!2788839 () Bool)

(declare-fun e!1760426 () Bool)

(declare-fun lt!996742 () MutLongMap!3916)

(assert (=> b!2788839 (= e!1760434 (and e!1760426 ((_ is LongMap!3916) lt!996742)))))

(assert (=> b!2788839 (= lt!996742 (v!33904 (underlying!8036 (cache!3965 cacheUp!890))))))

(declare-fun b!2788840 () Bool)

(declare-fun tp!884951 () Bool)

(declare-fun inv!43885 (Conc!10027) Bool)

(assert (=> b!2788840 (= e!1760432 (and (inv!43885 (c!452798 totalInput!758)) tp!884951))))

(declare-fun b!2788841 () Bool)

(assert (=> b!2788841 (= e!1760426 e!1760430)))

(declare-fun tp!884953 () Bool)

(declare-fun e!1760433 () Bool)

(declare-fun tp!884960 () Bool)

(declare-fun array_inv!4444 (array!13931) Bool)

(assert (=> b!2788842 (= e!1760427 (and tp!884952 tp!884953 tp!884960 (array_inv!4442 (_keys!4215 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009))))))) (array_inv!4444 (_values!4196 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009))))))) e!1760433))))

(declare-fun b!2788843 () Bool)

(declare-fun Unit!46515 () Unit!46513)

(assert (=> b!2788843 (= e!1760407 Unit!46515)))

(declare-fun lt!996727 () Unit!46513)

(declare-fun lemmaIsPrefixRefl!1698 (List!32395 List!32395) Unit!46513)

(assert (=> b!2788843 (= lt!996727 (lemmaIsPrefixRefl!1698 lt!996735 lt!996735))))

(assert (=> b!2788843 (isPrefix!2594 lt!996735 lt!996735)))

(declare-fun lt!996726 () Unit!46513)

(declare-fun lemmaIsPrefixSameLengthThenSameList!478 (List!32395 List!32395 List!32395) Unit!46513)

(assert (=> b!2788843 (= lt!996726 (lemmaIsPrefixSameLengthThenSameList!478 lt!996735 testedP!183 lt!996735))))

(assert (=> b!2788843 false))

(declare-fun b!2788844 () Bool)

(declare-fun tp_is_empty!14131 () Bool)

(declare-fun tp!884954 () Bool)

(assert (=> b!2788844 (= e!1760429 (and tp_is_empty!14131 tp!884954))))

(declare-fun b!2788845 () Bool)

(declare-fun tp!884950 () Bool)

(assert (=> b!2788845 (= e!1760416 (and tp_is_empty!14131 tp!884950))))

(declare-fun mapIsEmpty!17850 () Bool)

(assert (=> mapIsEmpty!17850 mapRes!17850))

(declare-fun b!2788846 () Bool)

(assert (=> b!2788846 (= e!1760422 e!1760413)))

(declare-fun b!2788847 () Bool)

(declare-fun Unit!46516 () Unit!46513)

(assert (=> b!2788847 (= e!1760407 Unit!46516)))

(declare-fun b!2788848 () Bool)

(declare-fun tp!884949 () Bool)

(assert (=> b!2788848 (= e!1760433 (and tp!884949 mapRes!17850))))

(declare-fun condMapEmpty!17850 () Bool)

(declare-fun mapDefault!17849 () List!32397)

(assert (=> b!2788848 (= condMapEmpty!17850 (= (arr!6208 (_values!4196 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32397)) mapDefault!17849)))))

(declare-fun b!2788849 () Bool)

(declare-fun tp!884957 () Bool)

(assert (=> b!2788849 (= e!1760423 (and tp!884957 mapRes!17849))))

(declare-fun condMapEmpty!17849 () Bool)

(declare-fun mapDefault!17850 () List!32398)

(assert (=> b!2788849 (= condMapEmpty!17849 (= (arr!6209 (_values!4197 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32398)) mapDefault!17850)))))

(assert (= (and start!269588 res!1163632) b!2788837))

(assert (= (and b!2788837 res!1163627) b!2788834))

(assert (= (and b!2788834 res!1163634) b!2788835))

(assert (= (and b!2788835 res!1163639) b!2788823))

(assert (= (and b!2788823 res!1163628) b!2788817))

(assert (= (and b!2788817 (not res!1163630)) b!2788829))

(assert (= (and b!2788829 (not res!1163636)) b!2788831))

(assert (= (and b!2788831 (not res!1163631)) b!2788836))

(assert (= (and b!2788836 (not res!1163638)) b!2788820))

(assert (= (and b!2788820 (not res!1163629)) b!2788825))

(assert (= (and b!2788825 (not res!1163635)) b!2788824))

(assert (= (and b!2788824 c!452796) b!2788843))

(assert (= (and b!2788824 (not c!452796)) b!2788847))

(assert (= (and b!2788824 (not res!1163637)) b!2788838))

(assert (= (and b!2788838 (not res!1163633)) b!2788833))

(assert (= start!269588 b!2788840))

(assert (= (and start!269588 condSetEmpty!23731) setIsEmpty!23731))

(assert (= (and start!269588 (not condSetEmpty!23731)) setNonEmpty!23731))

(assert (= setNonEmpty!23731 b!2788832))

(assert (= (and start!269588 ((_ is Cons!32295) testedP!183)) b!2788845))

(assert (= (and start!269588 ((_ is Cons!32295) testedSuffix!143)) b!2788844))

(assert (= (and b!2788848 condMapEmpty!17850) mapIsEmpty!17850))

(assert (= (and b!2788848 (not condMapEmpty!17850)) mapNonEmpty!17849))

(assert (= b!2788842 b!2788848))

(assert (= b!2788822 b!2788842))

(assert (= b!2788826 b!2788822))

(assert (= (and b!2788828 ((_ is LongMap!3915) (v!33902 (underlying!8034 (cache!3964 cacheDown!1009))))) b!2788826))

(assert (= b!2788827 b!2788828))

(assert (= (and b!2788821 ((_ is HashMap!3821) (cache!3964 cacheDown!1009))) b!2788827))

(assert (= start!269588 b!2788821))

(assert (= (and b!2788849 condMapEmpty!17849) mapIsEmpty!17849))

(assert (= (and b!2788849 (not condMapEmpty!17849)) mapNonEmpty!17850))

(assert (= b!2788830 b!2788849))

(assert (= b!2788819 b!2788830))

(assert (= b!2788841 b!2788819))

(assert (= (and b!2788839 ((_ is LongMap!3916) (v!33904 (underlying!8036 (cache!3965 cacheUp!890))))) b!2788841))

(assert (= b!2788818 b!2788839))

(assert (= (and b!2788846 ((_ is HashMap!3822) (cache!3965 cacheUp!890))) b!2788818))

(assert (= start!269588 b!2788846))

(declare-fun m!3219195 () Bool)

(assert (=> b!2788836 m!3219195))

(declare-fun m!3219197 () Bool)

(assert (=> b!2788836 m!3219197))

(declare-fun m!3219199 () Bool)

(assert (=> b!2788836 m!3219199))

(declare-fun m!3219201 () Bool)

(assert (=> b!2788836 m!3219201))

(declare-fun m!3219203 () Bool)

(assert (=> setNonEmpty!23731 m!3219203))

(declare-fun m!3219205 () Bool)

(assert (=> mapNonEmpty!17849 m!3219205))

(declare-fun m!3219207 () Bool)

(assert (=> b!2788835 m!3219207))

(declare-fun m!3219209 () Bool)

(assert (=> b!2788843 m!3219209))

(declare-fun m!3219211 () Bool)

(assert (=> b!2788843 m!3219211))

(declare-fun m!3219213 () Bool)

(assert (=> b!2788843 m!3219213))

(declare-fun m!3219215 () Bool)

(assert (=> b!2788820 m!3219215))

(declare-fun m!3219217 () Bool)

(assert (=> b!2788840 m!3219217))

(declare-fun m!3219219 () Bool)

(assert (=> start!269588 m!3219219))

(declare-fun m!3219221 () Bool)

(assert (=> start!269588 m!3219221))

(declare-fun m!3219223 () Bool)

(assert (=> start!269588 m!3219223))

(declare-fun m!3219225 () Bool)

(assert (=> start!269588 m!3219225))

(declare-fun m!3219227 () Bool)

(assert (=> start!269588 m!3219227))

(declare-fun m!3219229 () Bool)

(assert (=> b!2788823 m!3219229))

(declare-fun m!3219231 () Bool)

(assert (=> b!2788834 m!3219231))

(declare-fun m!3219233 () Bool)

(assert (=> b!2788829 m!3219233))

(declare-fun m!3219235 () Bool)

(assert (=> b!2788829 m!3219235))

(declare-fun m!3219237 () Bool)

(assert (=> b!2788829 m!3219237))

(declare-fun m!3219239 () Bool)

(assert (=> mapNonEmpty!17850 m!3219239))

(declare-fun m!3219241 () Bool)

(assert (=> b!2788830 m!3219241))

(declare-fun m!3219243 () Bool)

(assert (=> b!2788830 m!3219243))

(declare-fun m!3219245 () Bool)

(assert (=> b!2788825 m!3219245))

(declare-fun m!3219247 () Bool)

(assert (=> b!2788825 m!3219247))

(declare-fun m!3219249 () Bool)

(assert (=> b!2788825 m!3219249))

(declare-fun m!3219251 () Bool)

(assert (=> b!2788825 m!3219251))

(declare-fun m!3219253 () Bool)

(assert (=> b!2788825 m!3219253))

(assert (=> b!2788825 m!3219245))

(declare-fun m!3219255 () Bool)

(assert (=> b!2788825 m!3219255))

(declare-fun m!3219257 () Bool)

(assert (=> b!2788825 m!3219257))

(declare-fun m!3219259 () Bool)

(assert (=> b!2788838 m!3219259))

(declare-fun m!3219261 () Bool)

(assert (=> b!2788838 m!3219261))

(declare-fun m!3219263 () Bool)

(assert (=> b!2788838 m!3219263))

(declare-fun m!3219265 () Bool)

(assert (=> b!2788838 m!3219265))

(declare-fun m!3219267 () Bool)

(assert (=> b!2788838 m!3219267))

(declare-fun m!3219269 () Bool)

(assert (=> b!2788838 m!3219269))

(declare-fun m!3219271 () Bool)

(assert (=> b!2788838 m!3219271))

(declare-fun m!3219273 () Bool)

(assert (=> b!2788838 m!3219273))

(assert (=> b!2788838 m!3219269))

(declare-fun m!3219275 () Bool)

(assert (=> b!2788838 m!3219275))

(assert (=> b!2788838 m!3219261))

(declare-fun m!3219277 () Bool)

(assert (=> b!2788824 m!3219277))

(declare-fun m!3219279 () Bool)

(assert (=> b!2788824 m!3219279))

(declare-fun m!3219281 () Bool)

(assert (=> b!2788817 m!3219281))

(declare-fun m!3219283 () Bool)

(assert (=> b!2788817 m!3219283))

(declare-fun m!3219285 () Bool)

(assert (=> b!2788817 m!3219285))

(declare-fun m!3219287 () Bool)

(assert (=> b!2788833 m!3219287))

(declare-fun m!3219289 () Bool)

(assert (=> b!2788842 m!3219289))

(declare-fun m!3219291 () Bool)

(assert (=> b!2788842 m!3219291))

(declare-fun m!3219293 () Bool)

(assert (=> b!2788837 m!3219293))

(check-sat (not b!2788840) (not b!2788844) (not b!2788833) (not start!269588) (not b!2788830) tp_is_empty!14131 (not b!2788848) (not mapNonEmpty!17849) b_and!203639 (not b!2788837) (not b_next!79607) b_and!203643 (not b!2788838) (not b!2788843) (not b!2788817) (not b!2788825) b_and!203641 (not b!2788824) (not b!2788835) (not setNonEmpty!23731) (not b!2788829) (not b!2788823) (not b!2788832) (not b_next!79611) (not b!2788849) (not mapNonEmpty!17850) (not b_next!79605) (not b!2788842) b_and!203645 (not b!2788834) (not b_next!79609) (not b!2788845) (not b!2788836) (not b!2788820))
(check-sat b_and!203643 b_and!203641 (not b_next!79611) (not b_next!79605) b_and!203639 (not b_next!79607) b_and!203645 (not b_next!79609))
(get-model)

(declare-fun d!811094 () Bool)

(declare-fun lt!996750 () Int)

(assert (=> d!811094 (>= lt!996750 0)))

(declare-fun e!1760437 () Int)

(assert (=> d!811094 (= lt!996750 e!1760437)))

(declare-fun c!452801 () Bool)

(assert (=> d!811094 (= c!452801 ((_ is Nil!32295) lt!996735))))

(assert (=> d!811094 (= (size!25127 lt!996735) lt!996750)))

(declare-fun b!2788854 () Bool)

(assert (=> b!2788854 (= e!1760437 0)))

(declare-fun b!2788855 () Bool)

(assert (=> b!2788855 (= e!1760437 (+ 1 (size!25127 (t!228537 lt!996735))))))

(assert (= (and d!811094 c!452801) b!2788854))

(assert (= (and d!811094 (not c!452801)) b!2788855))

(declare-fun m!3219295 () Bool)

(assert (=> b!2788855 m!3219295))

(assert (=> b!2788824 d!811094))

(declare-fun d!811096 () Bool)

(assert (=> d!811096 (<= (size!25127 testedP!183) (size!25127 lt!996735))))

(declare-fun lt!996753 () Unit!46513)

(declare-fun choose!16389 (List!32395 List!32395) Unit!46513)

(assert (=> d!811096 (= lt!996753 (choose!16389 testedP!183 lt!996735))))

(assert (=> d!811096 (isPrefix!2594 testedP!183 lt!996735)))

(assert (=> d!811096 (= (lemmaIsPrefixThenSmallerEqSize!280 testedP!183 lt!996735) lt!996753)))

(declare-fun bs!511046 () Bool)

(assert (= bs!511046 d!811096))

(assert (=> bs!511046 m!3219293))

(assert (=> bs!511046 m!3219277))

(declare-fun m!3219297 () Bool)

(assert (=> bs!511046 m!3219297))

(assert (=> bs!511046 m!3219281))

(assert (=> b!2788824 d!811096))

(declare-fun d!811098 () Bool)

(declare-fun lt!996756 () Int)

(assert (=> d!811098 (= lt!996756 (size!25127 (list!12154 totalInput!758)))))

(declare-fun size!25128 (Conc!10027) Int)

(assert (=> d!811098 (= lt!996756 (size!25128 (c!452798 totalInput!758)))))

(assert (=> d!811098 (= (size!25123 totalInput!758) lt!996756)))

(declare-fun bs!511047 () Bool)

(assert (= bs!511047 d!811098))

(assert (=> bs!511047 m!3219219))

(assert (=> bs!511047 m!3219219))

(declare-fun m!3219299 () Bool)

(assert (=> bs!511047 m!3219299))

(declare-fun m!3219301 () Bool)

(assert (=> bs!511047 m!3219301))

(assert (=> b!2788834 d!811098))

(declare-fun d!811100 () Bool)

(declare-fun validCacheMapUp!384 (MutableMap!3822) Bool)

(assert (=> d!811100 (= (valid!3059 cacheUp!890) (validCacheMapUp!384 (cache!3965 cacheUp!890)))))

(declare-fun bs!511048 () Bool)

(assert (= bs!511048 d!811100))

(declare-fun m!3219303 () Bool)

(assert (=> bs!511048 m!3219303))

(assert (=> b!2788835 d!811100))

(declare-fun b!2788864 () Bool)

(declare-fun e!1760446 () Bool)

(declare-fun e!1760445 () Bool)

(assert (=> b!2788864 (= e!1760446 e!1760445)))

(declare-fun res!1163648 () Bool)

(assert (=> b!2788864 (=> (not res!1163648) (not e!1760445))))

(assert (=> b!2788864 (= res!1163648 (not ((_ is Nil!32295) lt!996735)))))

(declare-fun d!811102 () Bool)

(declare-fun e!1760444 () Bool)

(assert (=> d!811102 e!1760444))

(declare-fun res!1163650 () Bool)

(assert (=> d!811102 (=> res!1163650 e!1760444)))

(declare-fun lt!996759 () Bool)

(assert (=> d!811102 (= res!1163650 (not lt!996759))))

(assert (=> d!811102 (= lt!996759 e!1760446)))

(declare-fun res!1163651 () Bool)

(assert (=> d!811102 (=> res!1163651 e!1760446)))

(assert (=> d!811102 (= res!1163651 ((_ is Nil!32295) testedP!183))))

(assert (=> d!811102 (= (isPrefix!2594 testedP!183 lt!996735) lt!996759)))

(declare-fun b!2788867 () Bool)

(assert (=> b!2788867 (= e!1760444 (>= (size!25127 lt!996735) (size!25127 testedP!183)))))

(declare-fun b!2788865 () Bool)

(declare-fun res!1163649 () Bool)

(assert (=> b!2788865 (=> (not res!1163649) (not e!1760445))))

(assert (=> b!2788865 (= res!1163649 (= (head!6176 testedP!183) (head!6176 lt!996735)))))

(declare-fun b!2788866 () Bool)

(assert (=> b!2788866 (= e!1760445 (isPrefix!2594 (tail!4408 testedP!183) (tail!4408 lt!996735)))))

(assert (= (and d!811102 (not res!1163651)) b!2788864))

(assert (= (and b!2788864 res!1163648) b!2788865))

(assert (= (and b!2788865 res!1163649) b!2788866))

(assert (= (and d!811102 (not res!1163650)) b!2788867))

(assert (=> b!2788867 m!3219277))

(assert (=> b!2788867 m!3219293))

(declare-fun m!3219305 () Bool)

(assert (=> b!2788865 m!3219305))

(declare-fun m!3219307 () Bool)

(assert (=> b!2788865 m!3219307))

(declare-fun m!3219309 () Bool)

(assert (=> b!2788866 m!3219309))

(declare-fun m!3219311 () Bool)

(assert (=> b!2788866 m!3219311))

(assert (=> b!2788866 m!3219309))

(assert (=> b!2788866 m!3219311))

(declare-fun m!3219313 () Bool)

(assert (=> b!2788866 m!3219313))

(assert (=> b!2788817 d!811102))

(declare-fun b!2788868 () Bool)

(declare-fun e!1760449 () Bool)

(declare-fun e!1760448 () Bool)

(assert (=> b!2788868 (= e!1760449 e!1760448)))

(declare-fun res!1163652 () Bool)

(assert (=> b!2788868 (=> (not res!1163652) (not e!1760448))))

(assert (=> b!2788868 (= res!1163652 (not ((_ is Nil!32295) lt!996736)))))

(declare-fun d!811104 () Bool)

(declare-fun e!1760447 () Bool)

(assert (=> d!811104 e!1760447))

(declare-fun res!1163654 () Bool)

(assert (=> d!811104 (=> res!1163654 e!1760447)))

(declare-fun lt!996760 () Bool)

(assert (=> d!811104 (= res!1163654 (not lt!996760))))

(assert (=> d!811104 (= lt!996760 e!1760449)))

(declare-fun res!1163655 () Bool)

(assert (=> d!811104 (=> res!1163655 e!1760449)))

(assert (=> d!811104 (= res!1163655 ((_ is Nil!32295) testedP!183))))

(assert (=> d!811104 (= (isPrefix!2594 testedP!183 lt!996736) lt!996760)))

(declare-fun b!2788871 () Bool)

(assert (=> b!2788871 (= e!1760447 (>= (size!25127 lt!996736) (size!25127 testedP!183)))))

(declare-fun b!2788869 () Bool)

(declare-fun res!1163653 () Bool)

(assert (=> b!2788869 (=> (not res!1163653) (not e!1760448))))

(assert (=> b!2788869 (= res!1163653 (= (head!6176 testedP!183) (head!6176 lt!996736)))))

(declare-fun b!2788870 () Bool)

(assert (=> b!2788870 (= e!1760448 (isPrefix!2594 (tail!4408 testedP!183) (tail!4408 lt!996736)))))

(assert (= (and d!811104 (not res!1163655)) b!2788868))

(assert (= (and b!2788868 res!1163652) b!2788869))

(assert (= (and b!2788869 res!1163653) b!2788870))

(assert (= (and d!811104 (not res!1163654)) b!2788871))

(declare-fun m!3219315 () Bool)

(assert (=> b!2788871 m!3219315))

(assert (=> b!2788871 m!3219293))

(assert (=> b!2788869 m!3219305))

(declare-fun m!3219317 () Bool)

(assert (=> b!2788869 m!3219317))

(assert (=> b!2788870 m!3219309))

(declare-fun m!3219319 () Bool)

(assert (=> b!2788870 m!3219319))

(assert (=> b!2788870 m!3219309))

(assert (=> b!2788870 m!3219319))

(declare-fun m!3219321 () Bool)

(assert (=> b!2788870 m!3219321))

(assert (=> b!2788817 d!811104))

(declare-fun d!811106 () Bool)

(assert (=> d!811106 (isPrefix!2594 testedP!183 (++!7975 testedP!183 testedSuffix!143))))

(declare-fun lt!996763 () Unit!46513)

(declare-fun choose!16390 (List!32395 List!32395) Unit!46513)

(assert (=> d!811106 (= lt!996763 (choose!16390 testedP!183 testedSuffix!143))))

(assert (=> d!811106 (= (lemmaConcatTwoListThenFirstIsPrefix!1704 testedP!183 testedSuffix!143) lt!996763)))

(declare-fun bs!511049 () Bool)

(assert (= bs!511049 d!811106))

(assert (=> bs!511049 m!3219227))

(assert (=> bs!511049 m!3219227))

(declare-fun m!3219323 () Bool)

(assert (=> bs!511049 m!3219323))

(declare-fun m!3219325 () Bool)

(assert (=> bs!511049 m!3219325))

(assert (=> b!2788817 d!811106))

(declare-fun d!811108 () Bool)

(declare-fun e!1760452 () Bool)

(assert (=> d!811108 e!1760452))

(declare-fun res!1163660 () Bool)

(assert (=> d!811108 (=> (not res!1163660) (not e!1760452))))

(declare-fun lt!996766 () tuple3!5042)

(declare-fun derivationStepZipper!375 ((InoxSet Context!4754) C!16476) (InoxSet Context!4754))

(assert (=> d!811108 (= res!1163660 (= (_1!19346 lt!996766) (derivationStepZipper!375 z!3684 lt!996732)))))

(declare-fun choose!16391 ((InoxSet Context!4754) C!16476 CacheUp!2528 CacheDown!2646) tuple3!5042)

(assert (=> d!811108 (= lt!996766 (choose!16391 z!3684 lt!996732 cacheUp!890 cacheDown!1009))))

(assert (=> d!811108 (= (derivationStepZipperMem!105 z!3684 lt!996732 cacheUp!890 cacheDown!1009) lt!996766)))

(declare-fun b!2788876 () Bool)

(declare-fun res!1163661 () Bool)

(assert (=> b!2788876 (=> (not res!1163661) (not e!1760452))))

(assert (=> b!2788876 (= res!1163661 (valid!3059 (_2!19346 lt!996766)))))

(declare-fun b!2788877 () Bool)

(assert (=> b!2788877 (= e!1760452 (valid!3058 (_3!2991 lt!996766)))))

(assert (= (and d!811108 res!1163660) b!2788876))

(assert (= (and b!2788876 res!1163661) b!2788877))

(declare-fun m!3219327 () Bool)

(assert (=> d!811108 m!3219327))

(declare-fun m!3219329 () Bool)

(assert (=> d!811108 m!3219329))

(declare-fun m!3219331 () Bool)

(assert (=> b!2788876 m!3219331))

(declare-fun m!3219333 () Bool)

(assert (=> b!2788877 m!3219333))

(assert (=> b!2788833 d!811108))

(declare-fun d!811110 () Bool)

(declare-fun validCacheMapDown!415 (MutableMap!3821) Bool)

(assert (=> d!811110 (= (valid!3058 cacheDown!1009) (validCacheMapDown!415 (cache!3964 cacheDown!1009)))))

(declare-fun bs!511050 () Bool)

(assert (= bs!511050 d!811110))

(declare-fun m!3219335 () Bool)

(assert (=> bs!511050 m!3219335))

(assert (=> b!2788823 d!811110))

(declare-fun d!811112 () Bool)

(assert (=> d!811112 (isPrefix!2594 lt!996735 lt!996735)))

(declare-fun lt!996769 () Unit!46513)

(declare-fun choose!16392 (List!32395 List!32395) Unit!46513)

(assert (=> d!811112 (= lt!996769 (choose!16392 lt!996735 lt!996735))))

(assert (=> d!811112 (= (lemmaIsPrefixRefl!1698 lt!996735 lt!996735) lt!996769)))

(declare-fun bs!511051 () Bool)

(assert (= bs!511051 d!811112))

(assert (=> bs!511051 m!3219211))

(declare-fun m!3219337 () Bool)

(assert (=> bs!511051 m!3219337))

(assert (=> b!2788843 d!811112))

(declare-fun b!2788878 () Bool)

(declare-fun e!1760455 () Bool)

(declare-fun e!1760454 () Bool)

(assert (=> b!2788878 (= e!1760455 e!1760454)))

(declare-fun res!1163662 () Bool)

(assert (=> b!2788878 (=> (not res!1163662) (not e!1760454))))

(assert (=> b!2788878 (= res!1163662 (not ((_ is Nil!32295) lt!996735)))))

(declare-fun d!811114 () Bool)

(declare-fun e!1760453 () Bool)

(assert (=> d!811114 e!1760453))

(declare-fun res!1163664 () Bool)

(assert (=> d!811114 (=> res!1163664 e!1760453)))

(declare-fun lt!996770 () Bool)

(assert (=> d!811114 (= res!1163664 (not lt!996770))))

(assert (=> d!811114 (= lt!996770 e!1760455)))

(declare-fun res!1163665 () Bool)

(assert (=> d!811114 (=> res!1163665 e!1760455)))

(assert (=> d!811114 (= res!1163665 ((_ is Nil!32295) lt!996735))))

(assert (=> d!811114 (= (isPrefix!2594 lt!996735 lt!996735) lt!996770)))

(declare-fun b!2788881 () Bool)

(assert (=> b!2788881 (= e!1760453 (>= (size!25127 lt!996735) (size!25127 lt!996735)))))

(declare-fun b!2788879 () Bool)

(declare-fun res!1163663 () Bool)

(assert (=> b!2788879 (=> (not res!1163663) (not e!1760454))))

(assert (=> b!2788879 (= res!1163663 (= (head!6176 lt!996735) (head!6176 lt!996735)))))

(declare-fun b!2788880 () Bool)

(assert (=> b!2788880 (= e!1760454 (isPrefix!2594 (tail!4408 lt!996735) (tail!4408 lt!996735)))))

(assert (= (and d!811114 (not res!1163665)) b!2788878))

(assert (= (and b!2788878 res!1163662) b!2788879))

(assert (= (and b!2788879 res!1163663) b!2788880))

(assert (= (and d!811114 (not res!1163664)) b!2788881))

(assert (=> b!2788881 m!3219277))

(assert (=> b!2788881 m!3219277))

(assert (=> b!2788879 m!3219307))

(assert (=> b!2788879 m!3219307))

(assert (=> b!2788880 m!3219311))

(assert (=> b!2788880 m!3219311))

(assert (=> b!2788880 m!3219311))

(assert (=> b!2788880 m!3219311))

(declare-fun m!3219339 () Bool)

(assert (=> b!2788880 m!3219339))

(assert (=> b!2788843 d!811114))

(declare-fun d!811116 () Bool)

(assert (=> d!811116 (= lt!996735 testedP!183)))

(declare-fun lt!996773 () Unit!46513)

(declare-fun choose!16393 (List!32395 List!32395 List!32395) Unit!46513)

(assert (=> d!811116 (= lt!996773 (choose!16393 lt!996735 testedP!183 lt!996735))))

(assert (=> d!811116 (isPrefix!2594 lt!996735 lt!996735)))

(assert (=> d!811116 (= (lemmaIsPrefixSameLengthThenSameList!478 lt!996735 testedP!183 lt!996735) lt!996773)))

(declare-fun bs!511052 () Bool)

(assert (= bs!511052 d!811116))

(declare-fun m!3219341 () Bool)

(assert (=> bs!511052 m!3219341))

(assert (=> bs!511052 m!3219211))

(assert (=> b!2788843 d!811116))

(declare-fun b!2788890 () Bool)

(declare-fun e!1760461 () List!32395)

(assert (=> b!2788890 (= e!1760461 lt!996739)))

(declare-fun b!2788891 () Bool)

(assert (=> b!2788891 (= e!1760461 (Cons!32295 (h!37715 lt!996725) (++!7975 (t!228537 lt!996725) lt!996739)))))

(declare-fun d!811118 () Bool)

(declare-fun e!1760460 () Bool)

(assert (=> d!811118 e!1760460))

(declare-fun res!1163670 () Bool)

(assert (=> d!811118 (=> (not res!1163670) (not e!1760460))))

(declare-fun lt!996776 () List!32395)

(declare-fun content!4525 (List!32395) (InoxSet C!16476))

(assert (=> d!811118 (= res!1163670 (= (content!4525 lt!996776) ((_ map or) (content!4525 lt!996725) (content!4525 lt!996739))))))

(assert (=> d!811118 (= lt!996776 e!1760461)))

(declare-fun c!452804 () Bool)

(assert (=> d!811118 (= c!452804 ((_ is Nil!32295) lt!996725))))

(assert (=> d!811118 (= (++!7975 lt!996725 lt!996739) lt!996776)))

(declare-fun b!2788893 () Bool)

(assert (=> b!2788893 (= e!1760460 (or (not (= lt!996739 Nil!32295)) (= lt!996776 lt!996725)))))

(declare-fun b!2788892 () Bool)

(declare-fun res!1163671 () Bool)

(assert (=> b!2788892 (=> (not res!1163671) (not e!1760460))))

(assert (=> b!2788892 (= res!1163671 (= (size!25127 lt!996776) (+ (size!25127 lt!996725) (size!25127 lt!996739))))))

(assert (= (and d!811118 c!452804) b!2788890))

(assert (= (and d!811118 (not c!452804)) b!2788891))

(assert (= (and d!811118 res!1163670) b!2788892))

(assert (= (and b!2788892 res!1163671) b!2788893))

(declare-fun m!3219343 () Bool)

(assert (=> b!2788891 m!3219343))

(declare-fun m!3219345 () Bool)

(assert (=> d!811118 m!3219345))

(declare-fun m!3219347 () Bool)

(assert (=> d!811118 m!3219347))

(declare-fun m!3219349 () Bool)

(assert (=> d!811118 m!3219349))

(declare-fun m!3219351 () Bool)

(assert (=> b!2788892 m!3219351))

(declare-fun m!3219353 () Bool)

(assert (=> b!2788892 m!3219353))

(declare-fun m!3219355 () Bool)

(assert (=> b!2788892 m!3219355))

(assert (=> b!2788836 d!811118))

(declare-fun d!811120 () Bool)

(declare-fun list!12155 (Conc!10027) List!32395)

(assert (=> d!811120 (= (list!12154 (_2!19341 lt!996730)) (list!12155 (c!452798 (_2!19341 lt!996730))))))

(declare-fun bs!511053 () Bool)

(assert (= bs!511053 d!811120))

(declare-fun m!3219357 () Bool)

(assert (=> bs!511053 m!3219357))

(assert (=> b!2788836 d!811120))

(declare-fun d!811122 () Bool)

(assert (=> d!811122 (= (list!12154 (_1!19341 lt!996730)) (list!12155 (c!452798 (_1!19341 lt!996730))))))

(declare-fun bs!511054 () Bool)

(assert (= bs!511054 d!811122))

(declare-fun m!3219359 () Bool)

(assert (=> bs!511054 m!3219359))

(assert (=> b!2788836 d!811122))

(declare-fun d!811124 () Bool)

(declare-fun e!1760464 () Bool)

(assert (=> d!811124 e!1760464))

(declare-fun res!1163676 () Bool)

(assert (=> d!811124 (=> (not res!1163676) (not e!1760464))))

(declare-fun lt!996782 () tuple2!32702)

(declare-fun isBalanced!3060 (Conc!10027) Bool)

(assert (=> d!811124 (= res!1163676 (isBalanced!3060 (c!452798 (_1!19341 lt!996782))))))

(declare-datatypes ((tuple2!32710 0))(
  ( (tuple2!32711 (_1!19347 Conc!10027) (_2!19347 Conc!10027)) )
))
(declare-fun lt!996781 () tuple2!32710)

(assert (=> d!811124 (= lt!996782 (tuple2!32703 (BalanceConc!19669 (_1!19347 lt!996781)) (BalanceConc!19669 (_2!19347 lt!996781))))))

(declare-fun splitAt!156 (Conc!10027 Int) tuple2!32710)

(assert (=> d!811124 (= lt!996781 (splitAt!156 (c!452798 totalInput!758) testedPSize!143))))

(assert (=> d!811124 (isBalanced!3060 (c!452798 totalInput!758))))

(assert (=> d!811124 (= (splitAt!155 totalInput!758 testedPSize!143) lt!996782)))

(declare-fun b!2788898 () Bool)

(declare-fun res!1163677 () Bool)

(assert (=> b!2788898 (=> (not res!1163677) (not e!1760464))))

(assert (=> b!2788898 (= res!1163677 (isBalanced!3060 (c!452798 (_2!19341 lt!996782))))))

(declare-fun b!2788899 () Bool)

(declare-datatypes ((tuple2!32712 0))(
  ( (tuple2!32713 (_1!19348 List!32395) (_2!19348 List!32395)) )
))
(declare-fun splitAtIndex!63 (List!32395 Int) tuple2!32712)

(assert (=> b!2788899 (= e!1760464 (= (tuple2!32713 (list!12154 (_1!19341 lt!996782)) (list!12154 (_2!19341 lt!996782))) (splitAtIndex!63 (list!12154 totalInput!758) testedPSize!143)))))

(assert (= (and d!811124 res!1163676) b!2788898))

(assert (= (and b!2788898 res!1163677) b!2788899))

(declare-fun m!3219361 () Bool)

(assert (=> d!811124 m!3219361))

(declare-fun m!3219363 () Bool)

(assert (=> d!811124 m!3219363))

(declare-fun m!3219365 () Bool)

(assert (=> d!811124 m!3219365))

(declare-fun m!3219367 () Bool)

(assert (=> b!2788898 m!3219367))

(declare-fun m!3219369 () Bool)

(assert (=> b!2788899 m!3219369))

(declare-fun m!3219371 () Bool)

(assert (=> b!2788899 m!3219371))

(assert (=> b!2788899 m!3219219))

(assert (=> b!2788899 m!3219219))

(declare-fun m!3219373 () Bool)

(assert (=> b!2788899 m!3219373))

(assert (=> b!2788836 d!811124))

(declare-fun d!811126 () Bool)

(assert (=> d!811126 (= (head!6176 (drop!1730 lt!996735 testedPSize!143)) (h!37715 (drop!1730 lt!996735 testedPSize!143)))))

(assert (=> b!2788825 d!811126))

(declare-fun d!811128 () Bool)

(assert (=> d!811128 (and (= lt!996725 testedP!183) (= lt!996739 testedSuffix!143))))

(declare-fun lt!996785 () Unit!46513)

(declare-fun choose!16394 (List!32395 List!32395 List!32395 List!32395) Unit!46513)

(assert (=> d!811128 (= lt!996785 (choose!16394 lt!996725 lt!996739 testedP!183 testedSuffix!143))))

(assert (=> d!811128 (= (++!7975 lt!996725 lt!996739) (++!7975 testedP!183 testedSuffix!143))))

(assert (=> d!811128 (= (lemmaConcatSameAndSameSizesThenSameLists!363 lt!996725 lt!996739 testedP!183 testedSuffix!143) lt!996785)))

(declare-fun bs!511055 () Bool)

(assert (= bs!511055 d!811128))

(declare-fun m!3219375 () Bool)

(assert (=> bs!511055 m!3219375))

(assert (=> bs!511055 m!3219195))

(assert (=> bs!511055 m!3219227))

(assert (=> b!2788825 d!811128))

(declare-fun d!811130 () Bool)

(assert (=> d!811130 (= (head!6176 testedSuffix!143) (h!37715 testedSuffix!143))))

(assert (=> b!2788825 d!811130))

(declare-fun bm!182532 () Bool)

(declare-fun call!182537 () Int)

(assert (=> bm!182532 (= call!182537 (size!25127 lt!996735))))

(declare-fun b!2788918 () Bool)

(declare-fun e!1760475 () Int)

(assert (=> b!2788918 (= e!1760475 0)))

(declare-fun b!2788919 () Bool)

(declare-fun e!1760478 () List!32395)

(assert (=> b!2788919 (= e!1760478 lt!996735)))

(declare-fun b!2788920 () Bool)

(assert (=> b!2788920 (= e!1760478 (drop!1730 (t!228537 lt!996735) (- testedPSize!143 1)))))

(declare-fun b!2788921 () Bool)

(assert (=> b!2788921 (= e!1760475 (- call!182537 testedPSize!143))))

(declare-fun b!2788922 () Bool)

(declare-fun e!1760476 () List!32395)

(assert (=> b!2788922 (= e!1760476 e!1760478)))

(declare-fun c!452815 () Bool)

(assert (=> b!2788922 (= c!452815 (<= testedPSize!143 0))))

(declare-fun b!2788923 () Bool)

(declare-fun e!1760479 () Int)

(assert (=> b!2788923 (= e!1760479 e!1760475)))

(declare-fun c!452814 () Bool)

(assert (=> b!2788923 (= c!452814 (>= testedPSize!143 call!182537))))

(declare-fun b!2788925 () Bool)

(assert (=> b!2788925 (= e!1760476 Nil!32295)))

(declare-fun b!2788926 () Bool)

(assert (=> b!2788926 (= e!1760479 call!182537)))

(declare-fun b!2788924 () Bool)

(declare-fun e!1760477 () Bool)

(declare-fun lt!996788 () List!32395)

(assert (=> b!2788924 (= e!1760477 (= (size!25127 lt!996788) e!1760479))))

(declare-fun c!452813 () Bool)

(assert (=> b!2788924 (= c!452813 (<= testedPSize!143 0))))

(declare-fun d!811132 () Bool)

(assert (=> d!811132 e!1760477))

(declare-fun res!1163680 () Bool)

(assert (=> d!811132 (=> (not res!1163680) (not e!1760477))))

(assert (=> d!811132 (= res!1163680 (= ((_ map implies) (content!4525 lt!996788) (content!4525 lt!996735)) ((as const (InoxSet C!16476)) true)))))

(assert (=> d!811132 (= lt!996788 e!1760476)))

(declare-fun c!452816 () Bool)

(assert (=> d!811132 (= c!452816 ((_ is Nil!32295) lt!996735))))

(assert (=> d!811132 (= (drop!1730 lt!996735 testedPSize!143) lt!996788)))

(assert (= (and d!811132 c!452816) b!2788925))

(assert (= (and d!811132 (not c!452816)) b!2788922))

(assert (= (and b!2788922 c!452815) b!2788919))

(assert (= (and b!2788922 (not c!452815)) b!2788920))

(assert (= (and d!811132 res!1163680) b!2788924))

(assert (= (and b!2788924 c!452813) b!2788926))

(assert (= (and b!2788924 (not c!452813)) b!2788923))

(assert (= (and b!2788923 c!452814) b!2788918))

(assert (= (and b!2788923 (not c!452814)) b!2788921))

(assert (= (or b!2788926 b!2788923 b!2788921) bm!182532))

(assert (=> bm!182532 m!3219277))

(declare-fun m!3219377 () Bool)

(assert (=> b!2788920 m!3219377))

(declare-fun m!3219379 () Bool)

(assert (=> b!2788924 m!3219379))

(declare-fun m!3219381 () Bool)

(assert (=> d!811132 m!3219381))

(declare-fun m!3219383 () Bool)

(assert (=> d!811132 m!3219383))

(assert (=> b!2788825 d!811132))

(declare-fun d!811134 () Bool)

(assert (=> d!811134 (= (head!6176 (drop!1730 lt!996735 testedPSize!143)) (apply!7561 lt!996735 testedPSize!143))))

(declare-fun lt!996791 () Unit!46513)

(declare-fun choose!16395 (List!32395 Int) Unit!46513)

(assert (=> d!811134 (= lt!996791 (choose!16395 lt!996735 testedPSize!143))))

(declare-fun e!1760482 () Bool)

(assert (=> d!811134 e!1760482))

(declare-fun res!1163683 () Bool)

(assert (=> d!811134 (=> (not res!1163683) (not e!1760482))))

(assert (=> d!811134 (= res!1163683 (>= testedPSize!143 0))))

(assert (=> d!811134 (= (lemmaDropApply!936 lt!996735 testedPSize!143) lt!996791)))

(declare-fun b!2788929 () Bool)

(assert (=> b!2788929 (= e!1760482 (< testedPSize!143 (size!25127 lt!996735)))))

(assert (= (and d!811134 res!1163683) b!2788929))

(assert (=> d!811134 m!3219245))

(assert (=> d!811134 m!3219245))

(assert (=> d!811134 m!3219247))

(assert (=> d!811134 m!3219255))

(declare-fun m!3219385 () Bool)

(assert (=> d!811134 m!3219385))

(assert (=> b!2788929 m!3219277))

(assert (=> b!2788825 d!811134))

(declare-fun d!811136 () Bool)

(declare-fun lt!996794 () C!16476)

(declare-fun contains!6008 (List!32395 C!16476) Bool)

(assert (=> d!811136 (contains!6008 lt!996735 lt!996794)))

(declare-fun e!1760488 () C!16476)

(assert (=> d!811136 (= lt!996794 e!1760488)))

(declare-fun c!452819 () Bool)

(assert (=> d!811136 (= c!452819 (= testedPSize!143 0))))

(declare-fun e!1760487 () Bool)

(assert (=> d!811136 e!1760487))

(declare-fun res!1163686 () Bool)

(assert (=> d!811136 (=> (not res!1163686) (not e!1760487))))

(assert (=> d!811136 (= res!1163686 (<= 0 testedPSize!143))))

(assert (=> d!811136 (= (apply!7561 lt!996735 testedPSize!143) lt!996794)))

(declare-fun b!2788936 () Bool)

(assert (=> b!2788936 (= e!1760487 (< testedPSize!143 (size!25127 lt!996735)))))

(declare-fun b!2788937 () Bool)

(assert (=> b!2788937 (= e!1760488 (head!6176 lt!996735))))

(declare-fun b!2788938 () Bool)

(assert (=> b!2788938 (= e!1760488 (apply!7561 (tail!4408 lt!996735) (- testedPSize!143 1)))))

(assert (= (and d!811136 res!1163686) b!2788936))

(assert (= (and d!811136 c!452819) b!2788937))

(assert (= (and d!811136 (not c!452819)) b!2788938))

(declare-fun m!3219387 () Bool)

(assert (=> d!811136 m!3219387))

(assert (=> b!2788936 m!3219277))

(assert (=> b!2788937 m!3219307))

(assert (=> b!2788938 m!3219311))

(assert (=> b!2788938 m!3219311))

(declare-fun m!3219389 () Bool)

(assert (=> b!2788938 m!3219389))

(assert (=> b!2788825 d!811136))

(declare-fun d!811138 () Bool)

(declare-fun lt!996797 () C!16476)

(assert (=> d!811138 (= lt!996797 (apply!7561 (list!12154 totalInput!758) testedPSize!143))))

(declare-fun apply!7562 (Conc!10027 Int) C!16476)

(assert (=> d!811138 (= lt!996797 (apply!7562 (c!452798 totalInput!758) testedPSize!143))))

(declare-fun e!1760491 () Bool)

(assert (=> d!811138 e!1760491))

(declare-fun res!1163689 () Bool)

(assert (=> d!811138 (=> (not res!1163689) (not e!1760491))))

(assert (=> d!811138 (= res!1163689 (<= 0 testedPSize!143))))

(assert (=> d!811138 (= (apply!7560 totalInput!758 testedPSize!143) lt!996797)))

(declare-fun b!2788941 () Bool)

(assert (=> b!2788941 (= e!1760491 (< testedPSize!143 (size!25123 totalInput!758)))))

(assert (= (and d!811138 res!1163689) b!2788941))

(assert (=> d!811138 m!3219219))

(assert (=> d!811138 m!3219219))

(declare-fun m!3219391 () Bool)

(assert (=> d!811138 m!3219391))

(declare-fun m!3219393 () Bool)

(assert (=> d!811138 m!3219393))

(assert (=> b!2788941 m!3219231))

(assert (=> b!2788825 d!811138))

(declare-fun d!811140 () Bool)

(declare-fun lt!996798 () Int)

(assert (=> d!811140 (= lt!996798 (size!25127 (list!12154 (_1!19341 lt!996730))))))

(assert (=> d!811140 (= lt!996798 (size!25128 (c!452798 (_1!19341 lt!996730))))))

(assert (=> d!811140 (= (size!25123 (_1!19341 lt!996730)) lt!996798)))

(declare-fun bs!511056 () Bool)

(assert (= bs!511056 d!811140))

(assert (=> bs!511056 m!3219199))

(assert (=> bs!511056 m!3219199))

(declare-fun m!3219395 () Bool)

(assert (=> bs!511056 m!3219395))

(declare-fun m!3219397 () Bool)

(assert (=> bs!511056 m!3219397))

(assert (=> b!2788820 d!811140))

(declare-fun bs!511057 () Bool)

(declare-fun b!2788946 () Bool)

(declare-fun d!811142 () Bool)

(assert (= bs!511057 (and b!2788946 d!811142)))

(declare-fun lambda!102337 () Int)

(declare-fun lambda!102336 () Int)

(assert (=> bs!511057 (not (= lambda!102337 lambda!102336))))

(declare-fun bs!511058 () Bool)

(declare-fun b!2788947 () Bool)

(assert (= bs!511058 (and b!2788947 d!811142)))

(declare-fun lambda!102338 () Int)

(assert (=> bs!511058 (not (= lambda!102338 lambda!102336))))

(declare-fun bs!511059 () Bool)

(assert (= bs!511059 (and b!2788947 b!2788946)))

(assert (=> bs!511059 (= lambda!102338 lambda!102337)))

(declare-datatypes ((List!32399 0))(
  ( (Nil!32299) (Cons!32299 (h!37719 Context!4754) (t!228541 List!32399)) )
))
(declare-fun lt!996822 () List!32399)

(declare-fun c!452830 () Bool)

(declare-fun bm!182538 () Bool)

(declare-fun lt!996816 () List!32399)

(declare-fun call!182542 () Bool)

(declare-fun exists!997 (List!32399 Int) Bool)

(assert (=> bm!182538 (= call!182542 (exists!997 (ite c!452830 lt!996816 lt!996822) (ite c!452830 lambda!102337 lambda!102338)))))

(declare-fun e!1760498 () Unit!46513)

(declare-fun Unit!46517 () Unit!46513)

(assert (=> b!2788946 (= e!1760498 Unit!46517)))

(declare-fun call!182543 () List!32399)

(assert (=> b!2788946 (= lt!996816 call!182543)))

(declare-fun lt!996818 () Unit!46513)

(declare-fun lemmaNotForallThenExists!97 (List!32399 Int) Unit!46513)

(assert (=> b!2788946 (= lt!996818 (lemmaNotForallThenExists!97 lt!996816 lambda!102336))))

(assert (=> b!2788946 call!182542))

(declare-fun lt!996817 () Unit!46513)

(assert (=> b!2788946 (= lt!996817 lt!996818)))

(declare-fun bm!182537 () Bool)

(declare-fun toList!1860 ((InoxSet Context!4754)) List!32399)

(assert (=> bm!182537 (= call!182543 (toList!1860 z!3684))))

(declare-fun Unit!46518 () Unit!46513)

(assert (=> b!2788947 (= e!1760498 Unit!46518)))

(assert (=> b!2788947 (= lt!996822 call!182543)))

(declare-fun lt!996819 () Unit!46513)

(declare-fun lemmaForallThenNotExists!97 (List!32399 Int) Unit!46513)

(assert (=> b!2788947 (= lt!996819 (lemmaForallThenNotExists!97 lt!996822 lambda!102336))))

(assert (=> b!2788947 (not call!182542)))

(declare-fun lt!996820 () Unit!46513)

(assert (=> b!2788947 (= lt!996820 lt!996819)))

(declare-fun lt!996821 () Bool)

(declare-datatypes ((Option!6275 0))(
  ( (None!6274) (Some!6274 (v!33905 List!32395)) )
))
(declare-fun isEmpty!18119 (Option!6275) Bool)

(declare-fun getLanguageWitness!205 ((InoxSet Context!4754)) Option!6275)

(assert (=> d!811142 (= lt!996821 (isEmpty!18119 (getLanguageWitness!205 z!3684)))))

(declare-fun forall!6665 ((InoxSet Context!4754) Int) Bool)

(assert (=> d!811142 (= lt!996821 (forall!6665 z!3684 lambda!102336))))

(declare-fun lt!996815 () Unit!46513)

(assert (=> d!811142 (= lt!996815 e!1760498)))

(assert (=> d!811142 (= c!452830 (not (forall!6665 z!3684 lambda!102336)))))

(assert (=> d!811142 (= (lostCauseZipper!472 z!3684) lt!996821)))

(assert (= (and d!811142 c!452830) b!2788946))

(assert (= (and d!811142 (not c!452830)) b!2788947))

(assert (= (or b!2788946 b!2788947) bm!182537))

(assert (= (or b!2788946 b!2788947) bm!182538))

(declare-fun m!3219399 () Bool)

(assert (=> bm!182538 m!3219399))

(declare-fun m!3219401 () Bool)

(assert (=> b!2788947 m!3219401))

(declare-fun m!3219403 () Bool)

(assert (=> bm!182537 m!3219403))

(declare-fun m!3219405 () Bool)

(assert (=> d!811142 m!3219405))

(assert (=> d!811142 m!3219405))

(declare-fun m!3219407 () Bool)

(assert (=> d!811142 m!3219407))

(declare-fun m!3219409 () Bool)

(assert (=> d!811142 m!3219409))

(assert (=> d!811142 m!3219409))

(declare-fun m!3219411 () Bool)

(assert (=> b!2788946 m!3219411))

(assert (=> b!2788829 d!811142))

(declare-fun d!811144 () Bool)

(assert (=> d!811144 (= testedSuffix!143 lt!996743)))

(declare-fun lt!996825 () Unit!46513)

(declare-fun choose!16396 (List!32395 List!32395 List!32395 List!32395 List!32395) Unit!46513)

(assert (=> d!811144 (= lt!996825 (choose!16396 testedP!183 testedSuffix!143 testedP!183 lt!996743 lt!996735))))

(assert (=> d!811144 (isPrefix!2594 testedP!183 lt!996735)))

(assert (=> d!811144 (= (lemmaSamePrefixThenSameSuffix!1173 testedP!183 testedSuffix!143 testedP!183 lt!996743 lt!996735) lt!996825)))

(declare-fun bs!511060 () Bool)

(assert (= bs!511060 d!811144))

(declare-fun m!3219413 () Bool)

(assert (=> bs!511060 m!3219413))

(assert (=> bs!511060 m!3219281))

(assert (=> b!2788829 d!811144))

(declare-fun d!811146 () Bool)

(declare-fun lt!996828 () List!32395)

(assert (=> d!811146 (= (++!7975 testedP!183 lt!996828) lt!996735)))

(declare-fun e!1760501 () List!32395)

(assert (=> d!811146 (= lt!996828 e!1760501)))

(declare-fun c!452833 () Bool)

(assert (=> d!811146 (= c!452833 ((_ is Cons!32295) testedP!183))))

(assert (=> d!811146 (>= (size!25127 lt!996735) (size!25127 testedP!183))))

(assert (=> d!811146 (= (getSuffix!1272 lt!996735 testedP!183) lt!996828)))

(declare-fun b!2788952 () Bool)

(assert (=> b!2788952 (= e!1760501 (getSuffix!1272 (tail!4408 lt!996735) (t!228537 testedP!183)))))

(declare-fun b!2788953 () Bool)

(assert (=> b!2788953 (= e!1760501 lt!996735)))

(assert (= (and d!811146 c!452833) b!2788952))

(assert (= (and d!811146 (not c!452833)) b!2788953))

(declare-fun m!3219415 () Bool)

(assert (=> d!811146 m!3219415))

(assert (=> d!811146 m!3219277))

(assert (=> d!811146 m!3219293))

(assert (=> b!2788952 m!3219311))

(assert (=> b!2788952 m!3219311))

(declare-fun m!3219417 () Bool)

(assert (=> b!2788952 m!3219417))

(assert (=> b!2788829 d!811146))

(declare-fun d!811148 () Bool)

(declare-fun lt!996829 () Int)

(assert (=> d!811148 (>= lt!996829 0)))

(declare-fun e!1760502 () Int)

(assert (=> d!811148 (= lt!996829 e!1760502)))

(declare-fun c!452834 () Bool)

(assert (=> d!811148 (= c!452834 ((_ is Nil!32295) testedP!183))))

(assert (=> d!811148 (= (size!25127 testedP!183) lt!996829)))

(declare-fun b!2788954 () Bool)

(assert (=> b!2788954 (= e!1760502 0)))

(declare-fun b!2788955 () Bool)

(assert (=> b!2788955 (= e!1760502 (+ 1 (size!25127 (t!228537 testedP!183))))))

(assert (= (and d!811148 c!452834) b!2788954))

(assert (= (and d!811148 (not c!452834)) b!2788955))

(declare-fun m!3219419 () Bool)

(assert (=> b!2788955 m!3219419))

(assert (=> b!2788837 d!811148))

(declare-fun b!2788956 () Bool)

(declare-fun e!1760504 () List!32395)

(assert (=> b!2788956 (= e!1760504 (Cons!32295 lt!996732 Nil!32295))))

(declare-fun b!2788957 () Bool)

(assert (=> b!2788957 (= e!1760504 (Cons!32295 (h!37715 testedP!183) (++!7975 (t!228537 testedP!183) (Cons!32295 lt!996732 Nil!32295))))))

(declare-fun d!811150 () Bool)

(declare-fun e!1760503 () Bool)

(assert (=> d!811150 e!1760503))

(declare-fun res!1163690 () Bool)

(assert (=> d!811150 (=> (not res!1163690) (not e!1760503))))

(declare-fun lt!996830 () List!32395)

(assert (=> d!811150 (= res!1163690 (= (content!4525 lt!996830) ((_ map or) (content!4525 testedP!183) (content!4525 (Cons!32295 lt!996732 Nil!32295)))))))

(assert (=> d!811150 (= lt!996830 e!1760504)))

(declare-fun c!452835 () Bool)

(assert (=> d!811150 (= c!452835 ((_ is Nil!32295) testedP!183))))

(assert (=> d!811150 (= (++!7975 testedP!183 (Cons!32295 lt!996732 Nil!32295)) lt!996830)))

(declare-fun b!2788959 () Bool)

(assert (=> b!2788959 (= e!1760503 (or (not (= (Cons!32295 lt!996732 Nil!32295) Nil!32295)) (= lt!996830 testedP!183)))))

(declare-fun b!2788958 () Bool)

(declare-fun res!1163691 () Bool)

(assert (=> b!2788958 (=> (not res!1163691) (not e!1760503))))

(assert (=> b!2788958 (= res!1163691 (= (size!25127 lt!996830) (+ (size!25127 testedP!183) (size!25127 (Cons!32295 lt!996732 Nil!32295)))))))

(assert (= (and d!811150 c!452835) b!2788956))

(assert (= (and d!811150 (not c!452835)) b!2788957))

(assert (= (and d!811150 res!1163690) b!2788958))

(assert (= (and b!2788958 res!1163691) b!2788959))

(declare-fun m!3219421 () Bool)

(assert (=> b!2788957 m!3219421))

(declare-fun m!3219423 () Bool)

(assert (=> d!811150 m!3219423))

(declare-fun m!3219425 () Bool)

(assert (=> d!811150 m!3219425))

(declare-fun m!3219427 () Bool)

(assert (=> d!811150 m!3219427))

(declare-fun m!3219429 () Bool)

(assert (=> b!2788958 m!3219429))

(assert (=> b!2788958 m!3219293))

(declare-fun m!3219431 () Bool)

(assert (=> b!2788958 m!3219431))

(assert (=> b!2788838 d!811150))

(declare-fun d!811152 () Bool)

(assert (=> d!811152 (= (++!7975 (++!7975 testedP!183 (Cons!32295 lt!996732 Nil!32295)) lt!996740) lt!996735)))

(declare-fun lt!996833 () Unit!46513)

(declare-fun choose!16397 (List!32395 C!16476 List!32395 List!32395) Unit!46513)

(assert (=> d!811152 (= lt!996833 (choose!16397 testedP!183 lt!996732 lt!996740 lt!996735))))

(assert (=> d!811152 (= (++!7975 testedP!183 (Cons!32295 lt!996732 lt!996740)) lt!996735)))

(assert (=> d!811152 (= (lemmaMoveElementToOtherListKeepsConcatEq!882 testedP!183 lt!996732 lt!996740 lt!996735) lt!996833)))

(declare-fun bs!511061 () Bool)

(assert (= bs!511061 d!811152))

(assert (=> bs!511061 m!3219261))

(assert (=> bs!511061 m!3219261))

(assert (=> bs!511061 m!3219263))

(declare-fun m!3219433 () Bool)

(assert (=> bs!511061 m!3219433))

(declare-fun m!3219435 () Bool)

(assert (=> bs!511061 m!3219435))

(assert (=> b!2788838 d!811152))

(declare-fun b!2788960 () Bool)

(declare-fun e!1760507 () Bool)

(declare-fun e!1760506 () Bool)

(assert (=> b!2788960 (= e!1760507 e!1760506)))

(declare-fun res!1163692 () Bool)

(assert (=> b!2788960 (=> (not res!1163692) (not e!1760506))))

(assert (=> b!2788960 (= res!1163692 (not ((_ is Nil!32295) lt!996735)))))

(declare-fun d!811154 () Bool)

(declare-fun e!1760505 () Bool)

(assert (=> d!811154 e!1760505))

(declare-fun res!1163694 () Bool)

(assert (=> d!811154 (=> res!1163694 e!1760505)))

(declare-fun lt!996834 () Bool)

(assert (=> d!811154 (= res!1163694 (not lt!996834))))

(assert (=> d!811154 (= lt!996834 e!1760507)))

(declare-fun res!1163695 () Bool)

(assert (=> d!811154 (=> res!1163695 e!1760507)))

(assert (=> d!811154 (= res!1163695 ((_ is Nil!32295) (++!7975 testedP!183 (Cons!32295 (head!6176 lt!996743) Nil!32295))))))

(assert (=> d!811154 (= (isPrefix!2594 (++!7975 testedP!183 (Cons!32295 (head!6176 lt!996743) Nil!32295)) lt!996735) lt!996834)))

(declare-fun b!2788963 () Bool)

(assert (=> b!2788963 (= e!1760505 (>= (size!25127 lt!996735) (size!25127 (++!7975 testedP!183 (Cons!32295 (head!6176 lt!996743) Nil!32295)))))))

(declare-fun b!2788961 () Bool)

(declare-fun res!1163693 () Bool)

(assert (=> b!2788961 (=> (not res!1163693) (not e!1760506))))

(assert (=> b!2788961 (= res!1163693 (= (head!6176 (++!7975 testedP!183 (Cons!32295 (head!6176 lt!996743) Nil!32295))) (head!6176 lt!996735)))))

(declare-fun b!2788962 () Bool)

(assert (=> b!2788962 (= e!1760506 (isPrefix!2594 (tail!4408 (++!7975 testedP!183 (Cons!32295 (head!6176 lt!996743) Nil!32295))) (tail!4408 lt!996735)))))

(assert (= (and d!811154 (not res!1163695)) b!2788960))

(assert (= (and b!2788960 res!1163692) b!2788961))

(assert (= (and b!2788961 res!1163693) b!2788962))

(assert (= (and d!811154 (not res!1163694)) b!2788963))

(assert (=> b!2788963 m!3219277))

(assert (=> b!2788963 m!3219269))

(declare-fun m!3219437 () Bool)

(assert (=> b!2788963 m!3219437))

(assert (=> b!2788961 m!3219269))

(declare-fun m!3219439 () Bool)

(assert (=> b!2788961 m!3219439))

(assert (=> b!2788961 m!3219307))

(assert (=> b!2788962 m!3219269))

(declare-fun m!3219441 () Bool)

(assert (=> b!2788962 m!3219441))

(assert (=> b!2788962 m!3219311))

(assert (=> b!2788962 m!3219441))

(assert (=> b!2788962 m!3219311))

(declare-fun m!3219443 () Bool)

(assert (=> b!2788962 m!3219443))

(assert (=> b!2788838 d!811154))

(declare-fun d!811156 () Bool)

(assert (=> d!811156 (= (head!6176 lt!996743) (h!37715 lt!996743))))

(assert (=> b!2788838 d!811156))

(declare-fun b!2788964 () Bool)

(declare-fun e!1760509 () List!32395)

(assert (=> b!2788964 (= e!1760509 lt!996740)))

(declare-fun b!2788965 () Bool)

(assert (=> b!2788965 (= e!1760509 (Cons!32295 (h!37715 (++!7975 testedP!183 (Cons!32295 lt!996732 Nil!32295))) (++!7975 (t!228537 (++!7975 testedP!183 (Cons!32295 lt!996732 Nil!32295))) lt!996740)))))

(declare-fun d!811158 () Bool)

(declare-fun e!1760508 () Bool)

(assert (=> d!811158 e!1760508))

(declare-fun res!1163696 () Bool)

(assert (=> d!811158 (=> (not res!1163696) (not e!1760508))))

(declare-fun lt!996835 () List!32395)

(assert (=> d!811158 (= res!1163696 (= (content!4525 lt!996835) ((_ map or) (content!4525 (++!7975 testedP!183 (Cons!32295 lt!996732 Nil!32295))) (content!4525 lt!996740))))))

(assert (=> d!811158 (= lt!996835 e!1760509)))

(declare-fun c!452836 () Bool)

(assert (=> d!811158 (= c!452836 ((_ is Nil!32295) (++!7975 testedP!183 (Cons!32295 lt!996732 Nil!32295))))))

(assert (=> d!811158 (= (++!7975 (++!7975 testedP!183 (Cons!32295 lt!996732 Nil!32295)) lt!996740) lt!996835)))

(declare-fun b!2788967 () Bool)

(assert (=> b!2788967 (= e!1760508 (or (not (= lt!996740 Nil!32295)) (= lt!996835 (++!7975 testedP!183 (Cons!32295 lt!996732 Nil!32295)))))))

(declare-fun b!2788966 () Bool)

(declare-fun res!1163697 () Bool)

(assert (=> b!2788966 (=> (not res!1163697) (not e!1760508))))

(assert (=> b!2788966 (= res!1163697 (= (size!25127 lt!996835) (+ (size!25127 (++!7975 testedP!183 (Cons!32295 lt!996732 Nil!32295))) (size!25127 lt!996740))))))

(assert (= (and d!811158 c!452836) b!2788964))

(assert (= (and d!811158 (not c!452836)) b!2788965))

(assert (= (and d!811158 res!1163696) b!2788966))

(assert (= (and b!2788966 res!1163697) b!2788967))

(declare-fun m!3219445 () Bool)

(assert (=> b!2788965 m!3219445))

(declare-fun m!3219447 () Bool)

(assert (=> d!811158 m!3219447))

(assert (=> d!811158 m!3219261))

(declare-fun m!3219449 () Bool)

(assert (=> d!811158 m!3219449))

(declare-fun m!3219451 () Bool)

(assert (=> d!811158 m!3219451))

(declare-fun m!3219453 () Bool)

(assert (=> b!2788966 m!3219453))

(assert (=> b!2788966 m!3219261))

(declare-fun m!3219455 () Bool)

(assert (=> b!2788966 m!3219455))

(declare-fun m!3219457 () Bool)

(assert (=> b!2788966 m!3219457))

(assert (=> b!2788838 d!811158))

(declare-fun d!811160 () Bool)

(assert (=> d!811160 (= (tail!4408 testedSuffix!143) (t!228537 testedSuffix!143))))

(assert (=> b!2788838 d!811160))

(declare-fun bs!511062 () Bool)

(declare-fun d!811162 () Bool)

(assert (= bs!511062 (and d!811162 d!811142)))

(declare-fun lambda!102341 () Int)

(assert (=> bs!511062 (not (= lambda!102341 lambda!102336))))

(declare-fun bs!511063 () Bool)

(assert (= bs!511063 (and d!811162 b!2788946)))

(assert (=> bs!511063 (not (= lambda!102341 lambda!102337))))

(declare-fun bs!511064 () Bool)

(assert (= bs!511064 (and d!811162 b!2788947)))

(assert (=> bs!511064 (not (= lambda!102341 lambda!102338))))

(declare-fun exists!998 ((InoxSet Context!4754) Int) Bool)

(assert (=> d!811162 (= (nullableZipper!646 z!3684) (exists!998 z!3684 lambda!102341))))

(declare-fun bs!511065 () Bool)

(assert (= bs!511065 d!811162))

(declare-fun m!3219459 () Bool)

(assert (=> bs!511065 m!3219459))

(assert (=> b!2788838 d!811162))

(declare-fun b!2788968 () Bool)

(declare-fun e!1760511 () List!32395)

(assert (=> b!2788968 (= e!1760511 (Cons!32295 (head!6176 lt!996743) Nil!32295))))

(declare-fun b!2788969 () Bool)

(assert (=> b!2788969 (= e!1760511 (Cons!32295 (h!37715 testedP!183) (++!7975 (t!228537 testedP!183) (Cons!32295 (head!6176 lt!996743) Nil!32295))))))

(declare-fun d!811164 () Bool)

(declare-fun e!1760510 () Bool)

(assert (=> d!811164 e!1760510))

(declare-fun res!1163698 () Bool)

(assert (=> d!811164 (=> (not res!1163698) (not e!1760510))))

(declare-fun lt!996836 () List!32395)

(assert (=> d!811164 (= res!1163698 (= (content!4525 lt!996836) ((_ map or) (content!4525 testedP!183) (content!4525 (Cons!32295 (head!6176 lt!996743) Nil!32295)))))))

(assert (=> d!811164 (= lt!996836 e!1760511)))

(declare-fun c!452839 () Bool)

(assert (=> d!811164 (= c!452839 ((_ is Nil!32295) testedP!183))))

(assert (=> d!811164 (= (++!7975 testedP!183 (Cons!32295 (head!6176 lt!996743) Nil!32295)) lt!996836)))

(declare-fun b!2788971 () Bool)

(assert (=> b!2788971 (= e!1760510 (or (not (= (Cons!32295 (head!6176 lt!996743) Nil!32295) Nil!32295)) (= lt!996836 testedP!183)))))

(declare-fun b!2788970 () Bool)

(declare-fun res!1163699 () Bool)

(assert (=> b!2788970 (=> (not res!1163699) (not e!1760510))))

(assert (=> b!2788970 (= res!1163699 (= (size!25127 lt!996836) (+ (size!25127 testedP!183) (size!25127 (Cons!32295 (head!6176 lt!996743) Nil!32295)))))))

(assert (= (and d!811164 c!452839) b!2788968))

(assert (= (and d!811164 (not c!452839)) b!2788969))

(assert (= (and d!811164 res!1163698) b!2788970))

(assert (= (and b!2788970 res!1163699) b!2788971))

(declare-fun m!3219461 () Bool)

(assert (=> b!2788969 m!3219461))

(declare-fun m!3219463 () Bool)

(assert (=> d!811164 m!3219463))

(assert (=> d!811164 m!3219425))

(declare-fun m!3219465 () Bool)

(assert (=> d!811164 m!3219465))

(declare-fun m!3219467 () Bool)

(assert (=> b!2788970 m!3219467))

(assert (=> b!2788970 m!3219293))

(declare-fun m!3219469 () Bool)

(assert (=> b!2788970 m!3219469))

(assert (=> b!2788838 d!811164))

(declare-fun d!811166 () Bool)

(assert (=> d!811166 (isPrefix!2594 (++!7975 testedP!183 (Cons!32295 (head!6176 (getSuffix!1272 lt!996735 testedP!183)) Nil!32295)) lt!996735)))

(declare-fun lt!996839 () Unit!46513)

(declare-fun choose!16398 (List!32395 List!32395) Unit!46513)

(assert (=> d!811166 (= lt!996839 (choose!16398 testedP!183 lt!996735))))

(assert (=> d!811166 (isPrefix!2594 testedP!183 lt!996735)))

(assert (=> d!811166 (= (lemmaAddHeadSuffixToPrefixStillPrefix!473 testedP!183 lt!996735) lt!996839)))

(declare-fun bs!511066 () Bool)

(assert (= bs!511066 d!811166))

(declare-fun m!3219471 () Bool)

(assert (=> bs!511066 m!3219471))

(declare-fun m!3219473 () Bool)

(assert (=> bs!511066 m!3219473))

(assert (=> bs!511066 m!3219473))

(declare-fun m!3219475 () Bool)

(assert (=> bs!511066 m!3219475))

(assert (=> bs!511066 m!3219237))

(declare-fun m!3219477 () Bool)

(assert (=> bs!511066 m!3219477))

(assert (=> bs!511066 m!3219281))

(assert (=> bs!511066 m!3219237))

(assert (=> b!2788838 d!811166))

(declare-fun d!811168 () Bool)

(declare-fun lambda!102344 () Int)

(declare-fun forall!6666 (List!32396 Int) Bool)

(assert (=> d!811168 (= (inv!43881 setElem!23731) (forall!6666 (exprs!2877 setElem!23731) lambda!102344))))

(declare-fun bs!511067 () Bool)

(assert (= bs!511067 d!811168))

(declare-fun m!3219479 () Bool)

(assert (=> bs!511067 m!3219479))

(assert (=> setNonEmpty!23731 d!811168))

(declare-fun d!811170 () Bool)

(declare-fun res!1163702 () Bool)

(declare-fun e!1760514 () Bool)

(assert (=> d!811170 (=> (not res!1163702) (not e!1760514))))

(assert (=> d!811170 (= res!1163702 ((_ is HashMap!3822) (cache!3965 cacheUp!890)))))

(assert (=> d!811170 (= (inv!43884 cacheUp!890) e!1760514)))

(declare-fun b!2788974 () Bool)

(assert (=> b!2788974 (= e!1760514 (validCacheMapUp!384 (cache!3965 cacheUp!890)))))

(assert (= (and d!811170 res!1163702) b!2788974))

(assert (=> b!2788974 m!3219303))

(assert (=> start!269588 d!811170))

(declare-fun d!811172 () Bool)

(assert (=> d!811172 (= (inv!43882 totalInput!758) (isBalanced!3060 (c!452798 totalInput!758)))))

(declare-fun bs!511068 () Bool)

(assert (= bs!511068 d!811172))

(assert (=> bs!511068 m!3219365))

(assert (=> start!269588 d!811172))

(declare-fun d!811174 () Bool)

(declare-fun res!1163705 () Bool)

(declare-fun e!1760517 () Bool)

(assert (=> d!811174 (=> (not res!1163705) (not e!1760517))))

(assert (=> d!811174 (= res!1163705 ((_ is HashMap!3821) (cache!3964 cacheDown!1009)))))

(assert (=> d!811174 (= (inv!43883 cacheDown!1009) e!1760517)))

(declare-fun b!2788977 () Bool)

(assert (=> b!2788977 (= e!1760517 (validCacheMapDown!415 (cache!3964 cacheDown!1009)))))

(assert (= (and d!811174 res!1163705) b!2788977))

(assert (=> b!2788977 m!3219335))

(assert (=> start!269588 d!811174))

(declare-fun d!811176 () Bool)

(assert (=> d!811176 (= (list!12154 totalInput!758) (list!12155 (c!452798 totalInput!758)))))

(declare-fun bs!511069 () Bool)

(assert (= bs!511069 d!811176))

(declare-fun m!3219481 () Bool)

(assert (=> bs!511069 m!3219481))

(assert (=> start!269588 d!811176))

(declare-fun b!2788978 () Bool)

(declare-fun e!1760519 () List!32395)

(assert (=> b!2788978 (= e!1760519 testedSuffix!143)))

(declare-fun b!2788979 () Bool)

(assert (=> b!2788979 (= e!1760519 (Cons!32295 (h!37715 testedP!183) (++!7975 (t!228537 testedP!183) testedSuffix!143)))))

(declare-fun d!811178 () Bool)

(declare-fun e!1760518 () Bool)

(assert (=> d!811178 e!1760518))

(declare-fun res!1163706 () Bool)

(assert (=> d!811178 (=> (not res!1163706) (not e!1760518))))

(declare-fun lt!996840 () List!32395)

(assert (=> d!811178 (= res!1163706 (= (content!4525 lt!996840) ((_ map or) (content!4525 testedP!183) (content!4525 testedSuffix!143))))))

(assert (=> d!811178 (= lt!996840 e!1760519)))

(declare-fun c!452840 () Bool)

(assert (=> d!811178 (= c!452840 ((_ is Nil!32295) testedP!183))))

(assert (=> d!811178 (= (++!7975 testedP!183 testedSuffix!143) lt!996840)))

(declare-fun b!2788981 () Bool)

(assert (=> b!2788981 (= e!1760518 (or (not (= testedSuffix!143 Nil!32295)) (= lt!996840 testedP!183)))))

(declare-fun b!2788980 () Bool)

(declare-fun res!1163707 () Bool)

(assert (=> b!2788980 (=> (not res!1163707) (not e!1760518))))

(assert (=> b!2788980 (= res!1163707 (= (size!25127 lt!996840) (+ (size!25127 testedP!183) (size!25127 testedSuffix!143))))))

(assert (= (and d!811178 c!452840) b!2788978))

(assert (= (and d!811178 (not c!452840)) b!2788979))

(assert (= (and d!811178 res!1163706) b!2788980))

(assert (= (and b!2788980 res!1163707) b!2788981))

(declare-fun m!3219483 () Bool)

(assert (=> b!2788979 m!3219483))

(declare-fun m!3219485 () Bool)

(assert (=> d!811178 m!3219485))

(assert (=> d!811178 m!3219425))

(declare-fun m!3219487 () Bool)

(assert (=> d!811178 m!3219487))

(declare-fun m!3219489 () Bool)

(assert (=> b!2788980 m!3219489))

(assert (=> b!2788980 m!3219293))

(declare-fun m!3219491 () Bool)

(assert (=> b!2788980 m!3219491))

(assert (=> start!269588 d!811178))

(declare-fun d!811180 () Bool)

(assert (=> d!811180 (= (array_inv!4442 (_keys!4215 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009))))))) (bvsge (size!25124 (_keys!4215 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2788842 d!811180))

(declare-fun d!811182 () Bool)

(assert (=> d!811182 (= (array_inv!4444 (_values!4196 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009))))))) (bvsge (size!25125 (_values!4196 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2788842 d!811182))

(declare-fun d!811184 () Bool)

(declare-fun c!452843 () Bool)

(assert (=> d!811184 (= c!452843 ((_ is Node!10027) (c!452798 totalInput!758)))))

(declare-fun e!1760524 () Bool)

(assert (=> d!811184 (= (inv!43885 (c!452798 totalInput!758)) e!1760524)))

(declare-fun b!2788988 () Bool)

(declare-fun inv!43886 (Conc!10027) Bool)

(assert (=> b!2788988 (= e!1760524 (inv!43886 (c!452798 totalInput!758)))))

(declare-fun b!2788989 () Bool)

(declare-fun e!1760525 () Bool)

(assert (=> b!2788989 (= e!1760524 e!1760525)))

(declare-fun res!1163710 () Bool)

(assert (=> b!2788989 (= res!1163710 (not ((_ is Leaf!15275) (c!452798 totalInput!758))))))

(assert (=> b!2788989 (=> res!1163710 e!1760525)))

(declare-fun b!2788990 () Bool)

(declare-fun inv!43887 (Conc!10027) Bool)

(assert (=> b!2788990 (= e!1760525 (inv!43887 (c!452798 totalInput!758)))))

(assert (= (and d!811184 c!452843) b!2788988))

(assert (= (and d!811184 (not c!452843)) b!2788989))

(assert (= (and b!2788989 (not res!1163710)) b!2788990))

(declare-fun m!3219493 () Bool)

(assert (=> b!2788988 m!3219493))

(declare-fun m!3219495 () Bool)

(assert (=> b!2788990 m!3219495))

(assert (=> b!2788840 d!811184))

(declare-fun d!811186 () Bool)

(assert (=> d!811186 (= (array_inv!4442 (_keys!4216 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890))))))) (bvsge (size!25124 (_keys!4216 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2788830 d!811186))

(declare-fun d!811188 () Bool)

(assert (=> d!811188 (= (array_inv!4443 (_values!4197 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890))))))) (bvsge (size!25126 (_values!4197 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2788830 d!811188))

(declare-fun b!2788995 () Bool)

(declare-fun e!1760528 () Bool)

(declare-fun tp!884964 () Bool)

(assert (=> b!2788995 (= e!1760528 (and tp_is_empty!14131 tp!884964))))

(assert (=> b!2788844 (= tp!884954 e!1760528)))

(assert (= (and b!2788844 ((_ is Cons!32295) (t!228537 testedSuffix!143))) b!2788995))

(declare-fun b!2788996 () Bool)

(declare-fun e!1760529 () Bool)

(declare-fun tp!884965 () Bool)

(assert (=> b!2788996 (= e!1760529 (and tp_is_empty!14131 tp!884965))))

(assert (=> b!2788845 (= tp!884950 e!1760529)))

(assert (= (and b!2788845 ((_ is Cons!32295) (t!228537 testedP!183))) b!2788996))

(declare-fun tp!884985 () Bool)

(declare-fun setRes!23736 () Bool)

(declare-fun setElem!23737 () Context!4754)

(declare-fun setNonEmpty!23736 () Bool)

(declare-fun e!1760545 () Bool)

(assert (=> setNonEmpty!23736 (= setRes!23736 (and tp!884985 (inv!43881 setElem!23737) e!1760545))))

(declare-fun mapValue!17853 () List!32398)

(declare-fun setRest!23736 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23736 (= (_2!19345 (h!37718 mapValue!17853)) ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23737 true) setRest!23736))))

(declare-fun mapNonEmpty!17853 () Bool)

(declare-fun mapRes!17853 () Bool)

(declare-fun tp!884984 () Bool)

(declare-fun e!1760546 () Bool)

(assert (=> mapNonEmpty!17853 (= mapRes!17853 (and tp!884984 e!1760546))))

(declare-fun mapKey!17853 () (_ BitVec 32))

(declare-fun mapRest!17853 () (Array (_ BitVec 32) List!32398))

(assert (=> mapNonEmpty!17853 (= mapRest!17849 (store mapRest!17853 mapKey!17853 mapValue!17853))))

(declare-fun b!2789011 () Bool)

(declare-fun tp!884990 () Bool)

(assert (=> b!2789011 (= e!1760545 tp!884990)))

(declare-fun condMapEmpty!17853 () Bool)

(declare-fun mapDefault!17853 () List!32398)

(assert (=> mapNonEmpty!17850 (= condMapEmpty!17853 (= mapRest!17849 ((as const (Array (_ BitVec 32) List!32398)) mapDefault!17853)))))

(declare-fun e!1760542 () Bool)

(assert (=> mapNonEmpty!17850 (= tp!884956 (and e!1760542 mapRes!17853))))

(declare-fun mapIsEmpty!17853 () Bool)

(assert (=> mapIsEmpty!17853 mapRes!17853))

(declare-fun b!2789012 () Bool)

(declare-fun e!1760547 () Bool)

(declare-fun tp!884992 () Bool)

(assert (=> b!2789012 (= e!1760547 tp!884992)))

(declare-fun b!2789013 () Bool)

(declare-fun setRes!23737 () Bool)

(declare-fun tp!884991 () Bool)

(assert (=> b!2789013 (= e!1760542 (and (inv!43881 (_1!19344 (_1!19345 (h!37718 mapDefault!17853)))) e!1760547 tp_is_empty!14131 setRes!23737 tp!884991))))

(declare-fun condSetEmpty!23737 () Bool)

(assert (=> b!2789013 (= condSetEmpty!23737 (= (_2!19345 (h!37718 mapDefault!17853)) ((as const (Array Context!4754 Bool)) false)))))

(declare-fun e!1760544 () Bool)

(declare-fun b!2789014 () Bool)

(declare-fun tp!884988 () Bool)

(assert (=> b!2789014 (= e!1760546 (and (inv!43881 (_1!19344 (_1!19345 (h!37718 mapValue!17853)))) e!1760544 tp_is_empty!14131 setRes!23736 tp!884988))))

(declare-fun condSetEmpty!23736 () Bool)

(assert (=> b!2789014 (= condSetEmpty!23736 (= (_2!19345 (h!37718 mapValue!17853)) ((as const (Array Context!4754 Bool)) false)))))

(declare-fun b!2789015 () Bool)

(declare-fun tp!884986 () Bool)

(assert (=> b!2789015 (= e!1760544 tp!884986)))

(declare-fun setElem!23736 () Context!4754)

(declare-fun setNonEmpty!23737 () Bool)

(declare-fun e!1760543 () Bool)

(declare-fun tp!884987 () Bool)

(assert (=> setNonEmpty!23737 (= setRes!23737 (and tp!884987 (inv!43881 setElem!23736) e!1760543))))

(declare-fun setRest!23737 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23737 (= (_2!19345 (h!37718 mapDefault!17853)) ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23736 true) setRest!23737))))

(declare-fun setIsEmpty!23736 () Bool)

(assert (=> setIsEmpty!23736 setRes!23737))

(declare-fun setIsEmpty!23737 () Bool)

(assert (=> setIsEmpty!23737 setRes!23736))

(declare-fun b!2789016 () Bool)

(declare-fun tp!884989 () Bool)

(assert (=> b!2789016 (= e!1760543 tp!884989)))

(assert (= (and mapNonEmpty!17850 condMapEmpty!17853) mapIsEmpty!17853))

(assert (= (and mapNonEmpty!17850 (not condMapEmpty!17853)) mapNonEmpty!17853))

(assert (= b!2789014 b!2789015))

(assert (= (and b!2789014 condSetEmpty!23736) setIsEmpty!23737))

(assert (= (and b!2789014 (not condSetEmpty!23736)) setNonEmpty!23736))

(assert (= setNonEmpty!23736 b!2789011))

(assert (= (and mapNonEmpty!17853 ((_ is Cons!32298) mapValue!17853)) b!2789014))

(assert (= b!2789013 b!2789012))

(assert (= (and b!2789013 condSetEmpty!23737) setIsEmpty!23736))

(assert (= (and b!2789013 (not condSetEmpty!23737)) setNonEmpty!23737))

(assert (= setNonEmpty!23737 b!2789016))

(assert (= (and mapNonEmpty!17850 ((_ is Cons!32298) mapDefault!17853)) b!2789013))

(declare-fun m!3219497 () Bool)

(assert (=> setNonEmpty!23737 m!3219497))

(declare-fun m!3219499 () Bool)

(assert (=> setNonEmpty!23736 m!3219499))

(declare-fun m!3219501 () Bool)

(assert (=> b!2789014 m!3219501))

(declare-fun m!3219503 () Bool)

(assert (=> mapNonEmpty!17853 m!3219503))

(declare-fun m!3219505 () Bool)

(assert (=> b!2789013 m!3219505))

(declare-fun setIsEmpty!23740 () Bool)

(declare-fun setRes!23740 () Bool)

(assert (=> setIsEmpty!23740 setRes!23740))

(declare-fun b!2789025 () Bool)

(declare-fun e!1760556 () Bool)

(declare-fun tp!885001 () Bool)

(assert (=> b!2789025 (= e!1760556 tp!885001)))

(declare-fun e!1760555 () Bool)

(assert (=> mapNonEmpty!17850 (= tp!884959 e!1760555)))

(declare-fun tp!885002 () Bool)

(declare-fun setElem!23740 () Context!4754)

(declare-fun setNonEmpty!23740 () Bool)

(assert (=> setNonEmpty!23740 (= setRes!23740 (and tp!885002 (inv!43881 setElem!23740) e!1760556))))

(declare-fun setRest!23740 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23740 (= (_2!19345 (h!37718 mapValue!17850)) ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23740 true) setRest!23740))))

(declare-fun b!2789026 () Bool)

(declare-fun e!1760554 () Bool)

(declare-fun tp!885004 () Bool)

(assert (=> b!2789026 (= e!1760554 tp!885004)))

(declare-fun b!2789027 () Bool)

(declare-fun tp!885003 () Bool)

(assert (=> b!2789027 (= e!1760555 (and (inv!43881 (_1!19344 (_1!19345 (h!37718 mapValue!17850)))) e!1760554 tp_is_empty!14131 setRes!23740 tp!885003))))

(declare-fun condSetEmpty!23740 () Bool)

(assert (=> b!2789027 (= condSetEmpty!23740 (= (_2!19345 (h!37718 mapValue!17850)) ((as const (Array Context!4754 Bool)) false)))))

(assert (= b!2789027 b!2789026))

(assert (= (and b!2789027 condSetEmpty!23740) setIsEmpty!23740))

(assert (= (and b!2789027 (not condSetEmpty!23740)) setNonEmpty!23740))

(assert (= setNonEmpty!23740 b!2789025))

(assert (= (and mapNonEmpty!17850 ((_ is Cons!32298) mapValue!17850)) b!2789027))

(declare-fun m!3219507 () Bool)

(assert (=> setNonEmpty!23740 m!3219507))

(declare-fun m!3219509 () Bool)

(assert (=> b!2789027 m!3219509))

(declare-fun b!2789036 () Bool)

(declare-fun e!1760565 () Bool)

(declare-fun tp!885016 () Bool)

(assert (=> b!2789036 (= e!1760565 tp!885016)))

(declare-fun tp!885015 () Bool)

(declare-fun setNonEmpty!23743 () Bool)

(declare-fun setRes!23743 () Bool)

(declare-fun setElem!23743 () Context!4754)

(assert (=> setNonEmpty!23743 (= setRes!23743 (and tp!885015 (inv!43881 setElem!23743) e!1760565))))

(declare-fun setRest!23743 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23743 (= (_2!19343 (h!37717 mapDefault!17849)) ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23743 true) setRest!23743))))

(declare-fun b!2789038 () Bool)

(declare-fun e!1760563 () Bool)

(declare-fun tp!885019 () Bool)

(assert (=> b!2789038 (= e!1760563 tp!885019)))

(declare-fun setIsEmpty!23743 () Bool)

(assert (=> setIsEmpty!23743 setRes!23743))

(declare-fun tp!885018 () Bool)

(declare-fun e!1760564 () Bool)

(declare-fun tp!885017 () Bool)

(declare-fun b!2789037 () Bool)

(assert (=> b!2789037 (= e!1760564 (and tp!885018 (inv!43881 (_2!19342 (_1!19343 (h!37717 mapDefault!17849)))) e!1760563 tp_is_empty!14131 setRes!23743 tp!885017))))

(declare-fun condSetEmpty!23743 () Bool)

(assert (=> b!2789037 (= condSetEmpty!23743 (= (_2!19343 (h!37717 mapDefault!17849)) ((as const (Array Context!4754 Bool)) false)))))

(assert (=> b!2788848 (= tp!884949 e!1760564)))

(assert (= b!2789037 b!2789038))

(assert (= (and b!2789037 condSetEmpty!23743) setIsEmpty!23743))

(assert (= (and b!2789037 (not condSetEmpty!23743)) setNonEmpty!23743))

(assert (= setNonEmpty!23743 b!2789036))

(assert (= (and b!2788848 ((_ is Cons!32297) mapDefault!17849)) b!2789037))

(declare-fun m!3219511 () Bool)

(assert (=> setNonEmpty!23743 m!3219511))

(declare-fun m!3219513 () Bool)

(assert (=> b!2789037 m!3219513))

(declare-fun setIsEmpty!23744 () Bool)

(declare-fun setRes!23744 () Bool)

(assert (=> setIsEmpty!23744 setRes!23744))

(declare-fun b!2789039 () Bool)

(declare-fun e!1760568 () Bool)

(declare-fun tp!885020 () Bool)

(assert (=> b!2789039 (= e!1760568 tp!885020)))

(declare-fun e!1760567 () Bool)

(assert (=> b!2788849 (= tp!884957 e!1760567)))

(declare-fun tp!885021 () Bool)

(declare-fun setNonEmpty!23744 () Bool)

(declare-fun setElem!23744 () Context!4754)

(assert (=> setNonEmpty!23744 (= setRes!23744 (and tp!885021 (inv!43881 setElem!23744) e!1760568))))

(declare-fun setRest!23744 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23744 (= (_2!19345 (h!37718 mapDefault!17850)) ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23744 true) setRest!23744))))

(declare-fun b!2789040 () Bool)

(declare-fun e!1760566 () Bool)

(declare-fun tp!885023 () Bool)

(assert (=> b!2789040 (= e!1760566 tp!885023)))

(declare-fun b!2789041 () Bool)

(declare-fun tp!885022 () Bool)

(assert (=> b!2789041 (= e!1760567 (and (inv!43881 (_1!19344 (_1!19345 (h!37718 mapDefault!17850)))) e!1760566 tp_is_empty!14131 setRes!23744 tp!885022))))

(declare-fun condSetEmpty!23744 () Bool)

(assert (=> b!2789041 (= condSetEmpty!23744 (= (_2!19345 (h!37718 mapDefault!17850)) ((as const (Array Context!4754 Bool)) false)))))

(assert (= b!2789041 b!2789040))

(assert (= (and b!2789041 condSetEmpty!23744) setIsEmpty!23744))

(assert (= (and b!2789041 (not condSetEmpty!23744)) setNonEmpty!23744))

(assert (= setNonEmpty!23744 b!2789039))

(assert (= (and b!2788849 ((_ is Cons!32298) mapDefault!17850)) b!2789041))

(declare-fun m!3219515 () Bool)

(assert (=> setNonEmpty!23744 m!3219515))

(declare-fun m!3219517 () Bool)

(assert (=> b!2789041 m!3219517))

(declare-fun condSetEmpty!23747 () Bool)

(assert (=> setNonEmpty!23731 (= condSetEmpty!23747 (= setRest!23731 ((as const (Array Context!4754 Bool)) false)))))

(declare-fun setRes!23747 () Bool)

(assert (=> setNonEmpty!23731 (= tp!884946 setRes!23747)))

(declare-fun setIsEmpty!23747 () Bool)

(assert (=> setIsEmpty!23747 setRes!23747))

(declare-fun e!1760571 () Bool)

(declare-fun tp!885029 () Bool)

(declare-fun setNonEmpty!23747 () Bool)

(declare-fun setElem!23747 () Context!4754)

(assert (=> setNonEmpty!23747 (= setRes!23747 (and tp!885029 (inv!43881 setElem!23747) e!1760571))))

(declare-fun setRest!23747 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23747 (= setRest!23731 ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23747 true) setRest!23747))))

(declare-fun b!2789046 () Bool)

(declare-fun tp!885028 () Bool)

(assert (=> b!2789046 (= e!1760571 tp!885028)))

(assert (= (and setNonEmpty!23731 condSetEmpty!23747) setIsEmpty!23747))

(assert (= (and setNonEmpty!23731 (not condSetEmpty!23747)) setNonEmpty!23747))

(assert (= setNonEmpty!23747 b!2789046))

(declare-fun m!3219519 () Bool)

(assert (=> setNonEmpty!23747 m!3219519))

(declare-fun b!2789051 () Bool)

(declare-fun e!1760574 () Bool)

(declare-fun tp!885034 () Bool)

(declare-fun tp!885035 () Bool)

(assert (=> b!2789051 (= e!1760574 (and tp!885034 tp!885035))))

(assert (=> b!2788832 (= tp!884961 e!1760574)))

(assert (= (and b!2788832 ((_ is Cons!32296) (exprs!2877 setElem!23731))) b!2789051))

(declare-fun b!2789052 () Bool)

(declare-fun e!1760577 () Bool)

(declare-fun tp!885037 () Bool)

(assert (=> b!2789052 (= e!1760577 tp!885037)))

(declare-fun setElem!23748 () Context!4754)

(declare-fun setNonEmpty!23748 () Bool)

(declare-fun setRes!23748 () Bool)

(declare-fun tp!885036 () Bool)

(assert (=> setNonEmpty!23748 (= setRes!23748 (and tp!885036 (inv!43881 setElem!23748) e!1760577))))

(declare-fun setRest!23748 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23748 (= (_2!19343 (h!37717 (zeroValue!4174 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23748 true) setRest!23748))))

(declare-fun b!2789054 () Bool)

(declare-fun e!1760575 () Bool)

(declare-fun tp!885040 () Bool)

(assert (=> b!2789054 (= e!1760575 tp!885040)))

(declare-fun setIsEmpty!23748 () Bool)

(assert (=> setIsEmpty!23748 setRes!23748))

(declare-fun tp!885039 () Bool)

(declare-fun e!1760576 () Bool)

(declare-fun tp!885038 () Bool)

(declare-fun b!2789053 () Bool)

(assert (=> b!2789053 (= e!1760576 (and tp!885039 (inv!43881 (_2!19342 (_1!19343 (h!37717 (zeroValue!4174 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009)))))))))) e!1760575 tp_is_empty!14131 setRes!23748 tp!885038))))

(declare-fun condSetEmpty!23748 () Bool)

(assert (=> b!2789053 (= condSetEmpty!23748 (= (_2!19343 (h!37717 (zeroValue!4174 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009)))))))) ((as const (Array Context!4754 Bool)) false)))))

(assert (=> b!2788842 (= tp!884953 e!1760576)))

(assert (= b!2789053 b!2789054))

(assert (= (and b!2789053 condSetEmpty!23748) setIsEmpty!23748))

(assert (= (and b!2789053 (not condSetEmpty!23748)) setNonEmpty!23748))

(assert (= setNonEmpty!23748 b!2789052))

(assert (= (and b!2788842 ((_ is Cons!32297) (zeroValue!4174 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009)))))))) b!2789053))

(declare-fun m!3219521 () Bool)

(assert (=> setNonEmpty!23748 m!3219521))

(declare-fun m!3219523 () Bool)

(assert (=> b!2789053 m!3219523))

(declare-fun b!2789055 () Bool)

(declare-fun e!1760580 () Bool)

(declare-fun tp!885042 () Bool)

(assert (=> b!2789055 (= e!1760580 tp!885042)))

(declare-fun setElem!23749 () Context!4754)

(declare-fun tp!885041 () Bool)

(declare-fun setNonEmpty!23749 () Bool)

(declare-fun setRes!23749 () Bool)

(assert (=> setNonEmpty!23749 (= setRes!23749 (and tp!885041 (inv!43881 setElem!23749) e!1760580))))

(declare-fun setRest!23749 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23749 (= (_2!19343 (h!37717 (minValue!4174 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23749 true) setRest!23749))))

(declare-fun b!2789057 () Bool)

(declare-fun e!1760578 () Bool)

(declare-fun tp!885045 () Bool)

(assert (=> b!2789057 (= e!1760578 tp!885045)))

(declare-fun setIsEmpty!23749 () Bool)

(assert (=> setIsEmpty!23749 setRes!23749))

(declare-fun tp!885043 () Bool)

(declare-fun e!1760579 () Bool)

(declare-fun b!2789056 () Bool)

(declare-fun tp!885044 () Bool)

(assert (=> b!2789056 (= e!1760579 (and tp!885044 (inv!43881 (_2!19342 (_1!19343 (h!37717 (minValue!4174 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009)))))))))) e!1760578 tp_is_empty!14131 setRes!23749 tp!885043))))

(declare-fun condSetEmpty!23749 () Bool)

(assert (=> b!2789056 (= condSetEmpty!23749 (= (_2!19343 (h!37717 (minValue!4174 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009)))))))) ((as const (Array Context!4754 Bool)) false)))))

(assert (=> b!2788842 (= tp!884960 e!1760579)))

(assert (= b!2789056 b!2789057))

(assert (= (and b!2789056 condSetEmpty!23749) setIsEmpty!23749))

(assert (= (and b!2789056 (not condSetEmpty!23749)) setNonEmpty!23749))

(assert (= setNonEmpty!23749 b!2789055))

(assert (= (and b!2788842 ((_ is Cons!32297) (minValue!4174 (v!33901 (underlying!8033 (v!33902 (underlying!8034 (cache!3964 cacheDown!1009)))))))) b!2789056))

(declare-fun m!3219525 () Bool)

(assert (=> setNonEmpty!23749 m!3219525))

(declare-fun m!3219527 () Bool)

(assert (=> b!2789056 m!3219527))

(declare-fun mapNonEmpty!17856 () Bool)

(declare-fun mapRes!17856 () Bool)

(declare-fun tp!885077 () Bool)

(declare-fun e!1760595 () Bool)

(assert (=> mapNonEmpty!17856 (= mapRes!17856 (and tp!885077 e!1760595))))

(declare-fun mapKey!17856 () (_ BitVec 32))

(declare-fun mapValue!17856 () List!32397)

(declare-fun mapRest!17856 () (Array (_ BitVec 32) List!32397))

(assert (=> mapNonEmpty!17856 (= mapRest!17850 (store mapRest!17856 mapKey!17856 mapValue!17856))))

(declare-fun setIsEmpty!23754 () Bool)

(declare-fun setRes!23755 () Bool)

(assert (=> setIsEmpty!23754 setRes!23755))

(declare-fun e!1760596 () Bool)

(declare-fun b!2789072 () Bool)

(declare-fun tp!885075 () Bool)

(declare-fun tp!885073 () Bool)

(assert (=> b!2789072 (= e!1760595 (and tp!885073 (inv!43881 (_2!19342 (_1!19343 (h!37717 mapValue!17856)))) e!1760596 tp_is_empty!14131 setRes!23755 tp!885075))))

(declare-fun condSetEmpty!23755 () Bool)

(assert (=> b!2789072 (= condSetEmpty!23755 (= (_2!19343 (h!37717 mapValue!17856)) ((as const (Array Context!4754 Bool)) false)))))

(declare-fun setNonEmpty!23754 () Bool)

(declare-fun tp!885071 () Bool)

(declare-fun e!1760598 () Bool)

(declare-fun setElem!23754 () Context!4754)

(assert (=> setNonEmpty!23754 (= setRes!23755 (and tp!885071 (inv!43881 setElem!23754) e!1760598))))

(declare-fun setRest!23755 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23754 (= (_2!19343 (h!37717 mapValue!17856)) ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23754 true) setRest!23755))))

(declare-fun e!1760594 () Bool)

(declare-fun tp!885078 () Bool)

(declare-fun setElem!23755 () Context!4754)

(declare-fun setNonEmpty!23755 () Bool)

(declare-fun setRes!23754 () Bool)

(assert (=> setNonEmpty!23755 (= setRes!23754 (and tp!885078 (inv!43881 setElem!23755) e!1760594))))

(declare-fun mapDefault!17856 () List!32397)

(declare-fun setRest!23754 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23755 (= (_2!19343 (h!37717 mapDefault!17856)) ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23755 true) setRest!23754))))

(declare-fun setIsEmpty!23755 () Bool)

(assert (=> setIsEmpty!23755 setRes!23754))

(declare-fun b!2789073 () Bool)

(declare-fun e!1760597 () Bool)

(declare-fun tp!885070 () Bool)

(assert (=> b!2789073 (= e!1760597 tp!885070)))

(declare-fun e!1760593 () Bool)

(declare-fun tp!885068 () Bool)

(declare-fun tp!885072 () Bool)

(declare-fun b!2789074 () Bool)

(assert (=> b!2789074 (= e!1760593 (and tp!885072 (inv!43881 (_2!19342 (_1!19343 (h!37717 mapDefault!17856)))) e!1760597 tp_is_empty!14131 setRes!23754 tp!885068))))

(declare-fun condSetEmpty!23754 () Bool)

(assert (=> b!2789074 (= condSetEmpty!23754 (= (_2!19343 (h!37717 mapDefault!17856)) ((as const (Array Context!4754 Bool)) false)))))

(declare-fun condMapEmpty!17856 () Bool)

(assert (=> mapNonEmpty!17849 (= condMapEmpty!17856 (= mapRest!17850 ((as const (Array (_ BitVec 32) List!32397)) mapDefault!17856)))))

(assert (=> mapNonEmpty!17849 (= tp!884958 (and e!1760593 mapRes!17856))))

(declare-fun mapIsEmpty!17856 () Bool)

(assert (=> mapIsEmpty!17856 mapRes!17856))

(declare-fun b!2789075 () Bool)

(declare-fun tp!885074 () Bool)

(assert (=> b!2789075 (= e!1760598 tp!885074)))

(declare-fun b!2789076 () Bool)

(declare-fun tp!885069 () Bool)

(assert (=> b!2789076 (= e!1760594 tp!885069)))

(declare-fun b!2789077 () Bool)

(declare-fun tp!885076 () Bool)

(assert (=> b!2789077 (= e!1760596 tp!885076)))

(assert (= (and mapNonEmpty!17849 condMapEmpty!17856) mapIsEmpty!17856))

(assert (= (and mapNonEmpty!17849 (not condMapEmpty!17856)) mapNonEmpty!17856))

(assert (= b!2789072 b!2789077))

(assert (= (and b!2789072 condSetEmpty!23755) setIsEmpty!23754))

(assert (= (and b!2789072 (not condSetEmpty!23755)) setNonEmpty!23754))

(assert (= setNonEmpty!23754 b!2789075))

(assert (= (and mapNonEmpty!17856 ((_ is Cons!32297) mapValue!17856)) b!2789072))

(assert (= b!2789074 b!2789073))

(assert (= (and b!2789074 condSetEmpty!23754) setIsEmpty!23755))

(assert (= (and b!2789074 (not condSetEmpty!23754)) setNonEmpty!23755))

(assert (= setNonEmpty!23755 b!2789076))

(assert (= (and mapNonEmpty!17849 ((_ is Cons!32297) mapDefault!17856)) b!2789074))

(declare-fun m!3219529 () Bool)

(assert (=> b!2789072 m!3219529))

(declare-fun m!3219531 () Bool)

(assert (=> setNonEmpty!23755 m!3219531))

(declare-fun m!3219533 () Bool)

(assert (=> b!2789074 m!3219533))

(declare-fun m!3219535 () Bool)

(assert (=> setNonEmpty!23754 m!3219535))

(declare-fun m!3219537 () Bool)

(assert (=> mapNonEmpty!17856 m!3219537))

(declare-fun b!2789078 () Bool)

(declare-fun e!1760601 () Bool)

(declare-fun tp!885080 () Bool)

(assert (=> b!2789078 (= e!1760601 tp!885080)))

(declare-fun setElem!23756 () Context!4754)

(declare-fun tp!885079 () Bool)

(declare-fun setNonEmpty!23756 () Bool)

(declare-fun setRes!23756 () Bool)

(assert (=> setNonEmpty!23756 (= setRes!23756 (and tp!885079 (inv!43881 setElem!23756) e!1760601))))

(declare-fun setRest!23756 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23756 (= (_2!19343 (h!37717 mapValue!17849)) ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23756 true) setRest!23756))))

(declare-fun b!2789080 () Bool)

(declare-fun e!1760599 () Bool)

(declare-fun tp!885083 () Bool)

(assert (=> b!2789080 (= e!1760599 tp!885083)))

(declare-fun setIsEmpty!23756 () Bool)

(assert (=> setIsEmpty!23756 setRes!23756))

(declare-fun e!1760600 () Bool)

(declare-fun tp!885081 () Bool)

(declare-fun b!2789079 () Bool)

(declare-fun tp!885082 () Bool)

(assert (=> b!2789079 (= e!1760600 (and tp!885082 (inv!43881 (_2!19342 (_1!19343 (h!37717 mapValue!17849)))) e!1760599 tp_is_empty!14131 setRes!23756 tp!885081))))

(declare-fun condSetEmpty!23756 () Bool)

(assert (=> b!2789079 (= condSetEmpty!23756 (= (_2!19343 (h!37717 mapValue!17849)) ((as const (Array Context!4754 Bool)) false)))))

(assert (=> mapNonEmpty!17849 (= tp!884943 e!1760600)))

(assert (= b!2789079 b!2789080))

(assert (= (and b!2789079 condSetEmpty!23756) setIsEmpty!23756))

(assert (= (and b!2789079 (not condSetEmpty!23756)) setNonEmpty!23756))

(assert (= setNonEmpty!23756 b!2789078))

(assert (= (and mapNonEmpty!17849 ((_ is Cons!32297) mapValue!17849)) b!2789079))

(declare-fun m!3219539 () Bool)

(assert (=> setNonEmpty!23756 m!3219539))

(declare-fun m!3219541 () Bool)

(assert (=> b!2789079 m!3219541))

(declare-fun tp!885091 () Bool)

(declare-fun tp!885092 () Bool)

(declare-fun e!1760606 () Bool)

(declare-fun b!2789089 () Bool)

(assert (=> b!2789089 (= e!1760606 (and (inv!43885 (left!24498 (c!452798 totalInput!758))) tp!885092 (inv!43885 (right!24828 (c!452798 totalInput!758))) tp!885091))))

(declare-fun b!2789091 () Bool)

(declare-fun e!1760607 () Bool)

(declare-fun tp!885090 () Bool)

(assert (=> b!2789091 (= e!1760607 tp!885090)))

(declare-fun b!2789090 () Bool)

(declare-fun inv!43888 (IArray!20059) Bool)

(assert (=> b!2789090 (= e!1760606 (and (inv!43888 (xs!13138 (c!452798 totalInput!758))) e!1760607))))

(assert (=> b!2788840 (= tp!884951 (and (inv!43885 (c!452798 totalInput!758)) e!1760606))))

(assert (= (and b!2788840 ((_ is Node!10027) (c!452798 totalInput!758))) b!2789089))

(assert (= b!2789090 b!2789091))

(assert (= (and b!2788840 ((_ is Leaf!15275) (c!452798 totalInput!758))) b!2789090))

(declare-fun m!3219543 () Bool)

(assert (=> b!2789089 m!3219543))

(declare-fun m!3219545 () Bool)

(assert (=> b!2789089 m!3219545))

(declare-fun m!3219547 () Bool)

(assert (=> b!2789090 m!3219547))

(assert (=> b!2788840 m!3219217))

(declare-fun setIsEmpty!23757 () Bool)

(declare-fun setRes!23757 () Bool)

(assert (=> setIsEmpty!23757 setRes!23757))

(declare-fun b!2789092 () Bool)

(declare-fun e!1760610 () Bool)

(declare-fun tp!885093 () Bool)

(assert (=> b!2789092 (= e!1760610 tp!885093)))

(declare-fun e!1760609 () Bool)

(assert (=> b!2788830 (= tp!884944 e!1760609)))

(declare-fun setElem!23757 () Context!4754)

(declare-fun setNonEmpty!23757 () Bool)

(declare-fun tp!885094 () Bool)

(assert (=> setNonEmpty!23757 (= setRes!23757 (and tp!885094 (inv!43881 setElem!23757) e!1760610))))

(declare-fun setRest!23757 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23757 (= (_2!19345 (h!37718 (zeroValue!4175 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23757 true) setRest!23757))))

(declare-fun b!2789093 () Bool)

(declare-fun e!1760608 () Bool)

(declare-fun tp!885096 () Bool)

(assert (=> b!2789093 (= e!1760608 tp!885096)))

(declare-fun tp!885095 () Bool)

(declare-fun b!2789094 () Bool)

(assert (=> b!2789094 (= e!1760609 (and (inv!43881 (_1!19344 (_1!19345 (h!37718 (zeroValue!4175 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890)))))))))) e!1760608 tp_is_empty!14131 setRes!23757 tp!885095))))

(declare-fun condSetEmpty!23757 () Bool)

(assert (=> b!2789094 (= condSetEmpty!23757 (= (_2!19345 (h!37718 (zeroValue!4175 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890)))))))) ((as const (Array Context!4754 Bool)) false)))))

(assert (= b!2789094 b!2789093))

(assert (= (and b!2789094 condSetEmpty!23757) setIsEmpty!23757))

(assert (= (and b!2789094 (not condSetEmpty!23757)) setNonEmpty!23757))

(assert (= setNonEmpty!23757 b!2789092))

(assert (= (and b!2788830 ((_ is Cons!32298) (zeroValue!4175 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890)))))))) b!2789094))

(declare-fun m!3219549 () Bool)

(assert (=> setNonEmpty!23757 m!3219549))

(declare-fun m!3219551 () Bool)

(assert (=> b!2789094 m!3219551))

(declare-fun setIsEmpty!23758 () Bool)

(declare-fun setRes!23758 () Bool)

(assert (=> setIsEmpty!23758 setRes!23758))

(declare-fun b!2789095 () Bool)

(declare-fun e!1760613 () Bool)

(declare-fun tp!885097 () Bool)

(assert (=> b!2789095 (= e!1760613 tp!885097)))

(declare-fun e!1760612 () Bool)

(assert (=> b!2788830 (= tp!884948 e!1760612)))

(declare-fun setElem!23758 () Context!4754)

(declare-fun tp!885098 () Bool)

(declare-fun setNonEmpty!23758 () Bool)

(assert (=> setNonEmpty!23758 (= setRes!23758 (and tp!885098 (inv!43881 setElem!23758) e!1760613))))

(declare-fun setRest!23758 () (InoxSet Context!4754))

(assert (=> setNonEmpty!23758 (= (_2!19345 (h!37718 (minValue!4175 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4754 Bool)) false) setElem!23758 true) setRest!23758))))

(declare-fun b!2789096 () Bool)

(declare-fun e!1760611 () Bool)

(declare-fun tp!885100 () Bool)

(assert (=> b!2789096 (= e!1760611 tp!885100)))

(declare-fun tp!885099 () Bool)

(declare-fun b!2789097 () Bool)

(assert (=> b!2789097 (= e!1760612 (and (inv!43881 (_1!19344 (_1!19345 (h!37718 (minValue!4175 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890)))))))))) e!1760611 tp_is_empty!14131 setRes!23758 tp!885099))))

(declare-fun condSetEmpty!23758 () Bool)

(assert (=> b!2789097 (= condSetEmpty!23758 (= (_2!19345 (h!37718 (minValue!4175 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890)))))))) ((as const (Array Context!4754 Bool)) false)))))

(assert (= b!2789097 b!2789096))

(assert (= (and b!2789097 condSetEmpty!23758) setIsEmpty!23758))

(assert (= (and b!2789097 (not condSetEmpty!23758)) setNonEmpty!23758))

(assert (= setNonEmpty!23758 b!2789095))

(assert (= (and b!2788830 ((_ is Cons!32298) (minValue!4175 (v!33903 (underlying!8035 (v!33904 (underlying!8036 (cache!3965 cacheUp!890)))))))) b!2789097))

(declare-fun m!3219553 () Bool)

(assert (=> setNonEmpty!23758 m!3219553))

(declare-fun m!3219555 () Bool)

(assert (=> b!2789097 m!3219555))

(check-sat (not b!2788966) (not b!2789078) (not b!2789051) (not b!2788865) (not b!2788962) (not b!2789053) (not setNonEmpty!23758) (not b!2789025) (not b!2789054) (not b!2788840) (not b!2788970) (not b!2788958) b_and!203643 (not setNonEmpty!23740) (not setNonEmpty!23748) (not setNonEmpty!23749) (not b!2788965) (not bm!182538) (not setNonEmpty!23736) (not setNonEmpty!23747) (not b!2788866) (not b!2788990) (not b!2788871) (not b!2788937) (not setNonEmpty!23744) (not d!811096) (not b!2789080) (not b!2788898) (not b!2789090) (not b!2788995) (not b!2789041) (not b!2788891) (not b!2788941) (not bm!182537) (not b!2789015) (not b!2789079) (not b!2788938) (not b!2789052) b_and!203641 (not b!2788988) (not d!811144) (not b!2789096) (not b!2788947) tp_is_empty!14131 (not b!2789089) (not b!2788869) (not b!2788977) (not b!2789013) (not b!2789026) (not d!811118) (not b!2789039) (not b!2788952) (not b!2789074) (not b!2788980) (not b!2789094) (not b!2788961) (not b!2789091) (not d!811142) (not b!2788879) (not b!2789076) (not b!2789012) (not d!811132) (not bm!182532) (not b_next!79611) (not b!2789027) (not d!811172) (not b!2788855) (not b!2788969) (not b!2789014) (not d!811106) (not b!2788957) (not d!811112) (not d!811140) (not d!811152) (not b_next!79605) (not setNonEmpty!23755) (not d!811134) (not b!2788996) (not d!811178) (not d!811166) (not b!2788924) (not d!811122) (not b!2788899) (not d!811168) (not setNonEmpty!23743) (not b!2788979) (not b!2788963) (not d!811128) (not b!2789097) (not setNonEmpty!23754) (not setNonEmpty!23757) (not b!2789011) (not b!2788974) (not b!2789055) (not d!811124) (not b!2789057) (not b!2789072) (not b!2789056) (not b!2789046) (not b!2789092) (not b!2788946) (not b!2789038) (not b!2789040) b_and!203639 (not d!811138) (not d!811162) (not b!2788892) (not d!811136) (not b!2789077) (not b!2788867) (not b!2789016) (not b!2789036) (not b!2789073) (not b!2788880) (not d!811150) (not b_next!79607) (not mapNonEmpty!17856) (not b!2789095) (not setNonEmpty!23737) (not d!811146) (not d!811164) (not d!811108) b_and!203645 (not b!2788877) (not mapNonEmpty!17853) (not d!811116) (not d!811158) (not b!2788920) (not d!811098) (not b!2788881) (not b_next!79609) (not setNonEmpty!23756) (not b!2788936) (not d!811100) (not d!811120) (not b!2789075) (not b!2788876) (not b!2789037) (not b!2788870) (not d!811110) (not d!811176) (not b!2788955) (not b!2788929) (not b!2789093))
(check-sat b_and!203643 b_and!203641 (not b_next!79611) (not b_next!79605) b_and!203639 (not b_next!79607) b_and!203645 (not b_next!79609))
