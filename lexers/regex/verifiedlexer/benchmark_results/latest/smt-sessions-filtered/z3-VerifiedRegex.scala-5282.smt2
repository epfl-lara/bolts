; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270984 () Bool)

(assert start!270984)

(declare-fun b!2802270 () Bool)

(declare-fun b_free!79477 () Bool)

(declare-fun b_next!80181 () Bool)

(assert (=> b!2802270 (= b_free!79477 (not b_next!80181))))

(declare-fun tp!893211 () Bool)

(declare-fun b_and!204215 () Bool)

(assert (=> b!2802270 (= tp!893211 b_and!204215)))

(declare-fun b!2802265 () Bool)

(declare-fun b_free!79479 () Bool)

(declare-fun b_next!80183 () Bool)

(assert (=> b!2802265 (= b_free!79479 (not b_next!80183))))

(declare-fun tp!893216 () Bool)

(declare-fun b_and!204217 () Bool)

(assert (=> b!2802265 (= tp!893216 b_and!204217)))

(declare-fun b!2802257 () Bool)

(declare-fun b_free!79481 () Bool)

(declare-fun b_next!80185 () Bool)

(assert (=> b!2802257 (= b_free!79481 (not b_next!80185))))

(declare-fun tp!893204 () Bool)

(declare-fun b_and!204219 () Bool)

(assert (=> b!2802257 (= tp!893204 b_and!204219)))

(declare-fun b!2802273 () Bool)

(declare-fun b_free!79483 () Bool)

(declare-fun b_next!80187 () Bool)

(assert (=> b!2802273 (= b_free!79483 (not b_next!80187))))

(declare-fun tp!893213 () Bool)

(declare-fun b_and!204221 () Bool)

(assert (=> b!2802273 (= tp!893213 b_and!204221)))

(declare-fun b!2802241 () Bool)

(declare-fun e!1770867 () Bool)

(declare-datatypes ((Hashable!3964 0))(
  ( (HashableExt!3963 (__x!21794 Int)) )
))
(declare-datatypes ((C!16616 0))(
  ( (C!16617 (val!10242 Int)) )
))
(declare-datatypes ((Regex!8229 0))(
  ( (ElementMatch!8229 (c!454314 C!16616)) (Concat!13317 (regOne!16970 Regex!8229) (regTwo!16970 Regex!8229)) (EmptyExpr!8229) (Star!8229 (reg!8558 Regex!8229)) (EmptyLang!8229) (Union!8229 (regOne!16971 Regex!8229) (regTwo!16971 Regex!8229)) )
))
(declare-datatypes ((List!32682 0))(
  ( (Nil!32582) (Cons!32582 (h!38002 Regex!8229) (t!228852 List!32682)) )
))
(declare-datatypes ((Context!4894 0))(
  ( (Context!4895 (exprs!2947 List!32682)) )
))
(declare-datatypes ((tuple2!33232 0))(
  ( (tuple2!33233 (_1!19694 Context!4894) (_2!19694 C!16616)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33234 0))(
  ( (tuple2!33235 (_1!19695 tuple2!33232) (_2!19695 (InoxSet Context!4894))) )
))
(declare-datatypes ((List!32683 0))(
  ( (Nil!32583) (Cons!32583 (h!38003 tuple2!33234) (t!228853 List!32683)) )
))
(declare-datatypes ((array!14386 0))(
  ( (array!14387 (arr!6410 (Array (_ BitVec 32) List!32683)) (size!25444 (_ BitVec 32))) )
))
(declare-datatypes ((array!14388 0))(
  ( (array!14389 (arr!6411 (Array (_ BitVec 32) (_ BitVec 64))) (size!25445 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8096 0))(
  ( (LongMapFixedSize!8097 (defaultEntry!4433 Int) (mask!9899 (_ BitVec 32)) (extraKeys!4297 (_ BitVec 32)) (zeroValue!4307 List!32683) (minValue!4307 List!32683) (_size!8139 (_ BitVec 32)) (_keys!4348 array!14388) (_values!4329 array!14386) (_vacant!4109 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16001 0))(
  ( (Cell!16002 (v!34185 LongMapFixedSize!8096)) )
))
(declare-datatypes ((MutLongMap!4048 0))(
  ( (LongMap!4048 (underlying!8299 Cell!16001)) (MutLongMapExt!4047 (__x!21795 Int)) )
))
(declare-datatypes ((Cell!16003 0))(
  ( (Cell!16004 (v!34186 MutLongMap!4048)) )
))
(declare-datatypes ((MutableMap!3954 0))(
  ( (MutableMapExt!3953 (__x!21796 Int)) (HashMap!3954 (underlying!8300 Cell!16003) (hashF!5996 Hashable!3964) (_size!8140 (_ BitVec 32)) (defaultValue!4125 Int)) )
))
(declare-datatypes ((CacheUp!2656 0))(
  ( (CacheUp!2657 (cache!4097 MutableMap!3954)) )
))
(declare-datatypes ((tuple3!5216 0))(
  ( (tuple3!5217 (_1!19696 Regex!8229) (_2!19696 Context!4894) (_3!3078 C!16616)) )
))
(declare-datatypes ((tuple2!33236 0))(
  ( (tuple2!33237 (_1!19697 tuple3!5216) (_2!19697 (InoxSet Context!4894))) )
))
(declare-datatypes ((List!32684 0))(
  ( (Nil!32584) (Cons!32584 (h!38004 tuple2!33236) (t!228854 List!32684)) )
))
(declare-datatypes ((array!14390 0))(
  ( (array!14391 (arr!6412 (Array (_ BitVec 32) List!32684)) (size!25446 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8098 0))(
  ( (LongMapFixedSize!8099 (defaultEntry!4434 Int) (mask!9900 (_ BitVec 32)) (extraKeys!4298 (_ BitVec 32)) (zeroValue!4308 List!32684) (minValue!4308 List!32684) (_size!8141 (_ BitVec 32)) (_keys!4349 array!14388) (_values!4330 array!14390) (_vacant!4110 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16005 0))(
  ( (Cell!16006 (v!34187 LongMapFixedSize!8098)) )
))
(declare-datatypes ((MutLongMap!4049 0))(
  ( (LongMap!4049 (underlying!8301 Cell!16005)) (MutLongMapExt!4048 (__x!21797 Int)) )
))
(declare-datatypes ((Cell!16007 0))(
  ( (Cell!16008 (v!34188 MutLongMap!4049)) )
))
(declare-datatypes ((Hashable!3965 0))(
  ( (HashableExt!3964 (__x!21798 Int)) )
))
(declare-datatypes ((MutableMap!3955 0))(
  ( (MutableMapExt!3954 (__x!21799 Int)) (HashMap!3955 (underlying!8302 Cell!16007) (hashF!5997 Hashable!3965) (_size!8142 (_ BitVec 32)) (defaultValue!4126 Int)) )
))
(declare-datatypes ((CacheDown!2784 0))(
  ( (CacheDown!2785 (cache!4098 MutableMap!3955)) )
))
(declare-datatypes ((tuple3!5218 0))(
  ( (tuple3!5219 (_1!19698 (InoxSet Context!4894)) (_2!19698 CacheUp!2656) (_3!3079 CacheDown!2784)) )
))
(declare-fun lt!1001890 () tuple3!5218)

(declare-fun valid!3169 (CacheUp!2656) Bool)

(assert (=> b!2802241 (= e!1770867 (valid!3169 (_2!19698 lt!1001890)))))

(declare-fun b!2802243 () Bool)

(declare-fun e!1770855 () Bool)

(declare-fun tp!893219 () Bool)

(assert (=> b!2802243 (= e!1770855 tp!893219)))

(declare-fun b!2802244 () Bool)

(declare-fun e!1770883 () Bool)

(declare-fun e!1770854 () Bool)

(assert (=> b!2802244 (= e!1770883 e!1770854)))

(declare-fun res!1167672 () Bool)

(assert (=> b!2802244 (=> res!1167672 e!1770854)))

(declare-fun lt!1001879 () C!16616)

(declare-datatypes ((List!32685 0))(
  ( (Nil!32585) (Cons!32585 (h!38005 C!16616) (t!228855 List!32685)) )
))
(declare-fun testedSuffix!143 () List!32685)

(declare-fun head!6210 (List!32685) C!16616)

(assert (=> b!2802244 (= res!1167672 (not (= lt!1001879 (head!6210 testedSuffix!143))))))

(declare-datatypes ((IArray!20177 0))(
  ( (IArray!20178 (innerList!10146 List!32685)) )
))
(declare-datatypes ((Conc!10086 0))(
  ( (Node!10086 (left!24602 Conc!10086) (right!24932 Conc!10086) (csize!20402 Int) (cheight!10297 Int)) (Leaf!15369 (xs!13198 IArray!20177) (csize!20403 Int)) (Empty!10086) )
))
(declare-datatypes ((BalanceConc!19786 0))(
  ( (BalanceConc!19787 (c!454315 Conc!10086)) )
))
(declare-fun totalInput!758 () BalanceConc!19786)

(declare-fun testedPSize!143 () Int)

(declare-fun apply!7623 (BalanceConc!19786 Int) C!16616)

(assert (=> b!2802244 (= lt!1001879 (apply!7623 totalInput!758 testedPSize!143))))

(declare-fun lt!1001896 () List!32685)

(declare-fun drop!1757 (List!32685 Int) List!32685)

(declare-fun apply!7624 (List!32685 Int) C!16616)

(assert (=> b!2802244 (= (head!6210 (drop!1757 lt!1001896 testedPSize!143)) (apply!7624 lt!1001896 testedPSize!143))))

(declare-datatypes ((Unit!46693 0))(
  ( (Unit!46694) )
))
(declare-fun lt!1001887 () Unit!46693)

(declare-fun lemmaDropApply!961 (List!32685 Int) Unit!46693)

(assert (=> b!2802244 (= lt!1001887 (lemmaDropApply!961 lt!1001896 testedPSize!143))))

(declare-fun lt!1001881 () List!32685)

(declare-fun testedP!183 () List!32685)

(declare-fun lt!1001886 () List!32685)

(assert (=> b!2802244 (not (or (not (= lt!1001881 testedP!183)) (not (= lt!1001886 testedSuffix!143))))))

(declare-fun lt!1001888 () Unit!46693)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!391 (List!32685 List!32685 List!32685 List!32685) Unit!46693)

(assert (=> b!2802244 (= lt!1001888 (lemmaConcatSameAndSameSizesThenSameLists!391 lt!1001881 lt!1001886 testedP!183 testedSuffix!143))))

(declare-fun b!2802245 () Bool)

(declare-fun res!1167675 () Bool)

(assert (=> b!2802245 (=> res!1167675 e!1770883)))

(declare-datatypes ((tuple2!33238 0))(
  ( (tuple2!33239 (_1!19699 BalanceConc!19786) (_2!19699 BalanceConc!19786)) )
))
(declare-fun lt!1001889 () tuple2!33238)

(declare-fun size!25447 (BalanceConc!19786) Int)

(assert (=> b!2802245 (= res!1167675 (not (= (size!25447 (_1!19699 lt!1001889)) testedPSize!143)))))

(declare-fun b!2802246 () Bool)

(declare-fun e!1770859 () Bool)

(declare-fun e!1770863 () Bool)

(assert (=> b!2802246 (= e!1770859 e!1770863)))

(declare-fun b!2802247 () Bool)

(declare-fun e!1770878 () Bool)

(declare-fun e!1770858 () Bool)

(assert (=> b!2802247 (= e!1770878 e!1770858)))

(declare-fun b!2802248 () Bool)

(declare-fun e!1770857 () Bool)

(declare-fun e!1770884 () Bool)

(assert (=> b!2802248 (= e!1770857 e!1770884)))

(declare-fun res!1167676 () Bool)

(assert (=> b!2802248 (=> res!1167676 e!1770884)))

(declare-fun z!3684 () (InoxSet Context!4894))

(declare-fun nullableZipper!665 ((InoxSet Context!4894)) Bool)

(assert (=> b!2802248 (= res!1167676 (nullableZipper!665 z!3684))))

(declare-fun lt!1001893 () List!32685)

(declare-fun lt!1001875 () List!32685)

(declare-fun ++!8033 (List!32685 List!32685) List!32685)

(assert (=> b!2802248 (= (++!8033 lt!1001893 lt!1001875) lt!1001896)))

(assert (=> b!2802248 (= lt!1001893 (++!8033 testedP!183 (Cons!32585 lt!1001879 Nil!32585)))))

(declare-fun lt!1001880 () Unit!46693)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!901 (List!32685 C!16616 List!32685 List!32685) Unit!46693)

(assert (=> b!2802248 (= lt!1001880 (lemmaMoveElementToOtherListKeepsConcatEq!901 testedP!183 lt!1001879 lt!1001875 lt!1001896))))

(declare-fun tail!4437 (List!32685) List!32685)

(assert (=> b!2802248 (= lt!1001875 (tail!4437 testedSuffix!143))))

(declare-fun lt!1001894 () List!32685)

(declare-fun isPrefix!2644 (List!32685 List!32685) Bool)

(assert (=> b!2802248 (isPrefix!2644 (++!8033 testedP!183 (Cons!32585 (head!6210 lt!1001894) Nil!32585)) lt!1001896)))

(declare-fun lt!1001878 () Unit!46693)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!493 (List!32685 List!32685) Unit!46693)

(assert (=> b!2802248 (= lt!1001878 (lemmaAddHeadSuffixToPrefixStillPrefix!493 testedP!183 lt!1001896))))

(declare-fun b!2802249 () Bool)

(assert (=> b!2802249 (= e!1770854 e!1770857)))

(declare-fun res!1167668 () Bool)

(assert (=> b!2802249 (=> res!1167668 e!1770857)))

(declare-fun lt!1001891 () Int)

(declare-fun lt!1001885 () Int)

(assert (=> b!2802249 (= res!1167668 (>= lt!1001891 lt!1001885))))

(declare-fun lt!1001876 () Unit!46693)

(declare-fun e!1770880 () Unit!46693)

(assert (=> b!2802249 (= lt!1001876 e!1770880)))

(declare-fun c!454313 () Bool)

(assert (=> b!2802249 (= c!454313 (= lt!1001891 lt!1001885))))

(declare-fun size!25448 (List!32685) Int)

(assert (=> b!2802249 (<= lt!1001891 (size!25448 lt!1001896))))

(declare-fun lt!1001892 () Unit!46693)

(declare-fun lemmaIsPrefixThenSmallerEqSize!301 (List!32685 List!32685) Unit!46693)

(assert (=> b!2802249 (= lt!1001892 (lemmaIsPrefixThenSmallerEqSize!301 testedP!183 lt!1001896))))

(declare-fun mapIsEmpty!18397 () Bool)

(declare-fun mapRes!18397 () Bool)

(assert (=> mapIsEmpty!18397 mapRes!18397))

(declare-fun b!2802250 () Bool)

(declare-fun e!1770872 () Bool)

(declare-fun e!1770866 () Bool)

(assert (=> b!2802250 (= e!1770872 e!1770866)))

(declare-fun b!2802251 () Bool)

(declare-fun res!1167669 () Bool)

(declare-fun e!1770862 () Bool)

(assert (=> b!2802251 (=> (not res!1167669) (not e!1770862))))

(declare-fun cacheUp!890 () CacheUp!2656)

(assert (=> b!2802251 (= res!1167669 (valid!3169 cacheUp!890))))

(declare-fun b!2802252 () Bool)

(assert (=> b!2802252 (= e!1770884 e!1770867)))

(declare-fun res!1167674 () Bool)

(assert (=> b!2802252 (=> res!1167674 e!1770867)))

(assert (=> b!2802252 (= res!1167674 (not (= (+ 1 testedPSize!143) (size!25448 lt!1001893))))))

(declare-fun cacheDown!1009 () CacheDown!2784)

(declare-fun derivationStepZipperMem!119 ((InoxSet Context!4894) C!16616 CacheUp!2656 CacheDown!2784) tuple3!5218)

(assert (=> b!2802252 (= lt!1001890 (derivationStepZipperMem!119 z!3684 lt!1001879 cacheUp!890 cacheDown!1009))))

(declare-fun res!1167667 () Bool)

(declare-fun e!1770875 () Bool)

(assert (=> start!270984 (=> (not res!1167667) (not e!1770875))))

(declare-fun lt!1001874 () List!32685)

(assert (=> start!270984 (= res!1167667 (= lt!1001874 lt!1001896))))

(declare-fun list!12225 (BalanceConc!19786) List!32685)

(assert (=> start!270984 (= lt!1001896 (list!12225 totalInput!758))))

(assert (=> start!270984 (= lt!1001874 (++!8033 testedP!183 testedSuffix!143))))

(assert (=> start!270984 e!1770875))

(declare-fun e!1770879 () Bool)

(declare-fun inv!44253 (BalanceConc!19786) Bool)

(assert (=> start!270984 (and (inv!44253 totalInput!758) e!1770879)))

(declare-fun condSetEmpty!24594 () Bool)

(assert (=> start!270984 (= condSetEmpty!24594 (= z!3684 ((as const (Array Context!4894 Bool)) false)))))

(declare-fun setRes!24594 () Bool)

(assert (=> start!270984 setRes!24594))

(assert (=> start!270984 true))

(declare-fun e!1770856 () Bool)

(assert (=> start!270984 e!1770856))

(declare-fun e!1770861 () Bool)

(assert (=> start!270984 e!1770861))

(declare-fun inv!44254 (CacheDown!2784) Bool)

(assert (=> start!270984 (and (inv!44254 cacheDown!1009) e!1770878)))

(declare-fun inv!44255 (CacheUp!2656) Bool)

(assert (=> start!270984 (and (inv!44255 cacheUp!890) e!1770872)))

(declare-fun b!2802242 () Bool)

(declare-fun e!1770869 () Bool)

(declare-fun tp!893208 () Bool)

(assert (=> b!2802242 (= e!1770869 (and tp!893208 mapRes!18397))))

(declare-fun condMapEmpty!18398 () Bool)

(declare-fun mapDefault!18398 () List!32683)

(assert (=> b!2802242 (= condMapEmpty!18398 (= (arr!6410 (_values!4329 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32683)) mapDefault!18398)))))

(declare-fun b!2802253 () Bool)

(declare-fun e!1770874 () Bool)

(declare-fun lt!1001895 () MutLongMap!4049)

(get-info :version)

(assert (=> b!2802253 (= e!1770874 (and e!1770859 ((_ is LongMap!4049) lt!1001895)))))

(assert (=> b!2802253 (= lt!1001895 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009))))))

(declare-fun b!2802254 () Bool)

(declare-fun res!1167670 () Bool)

(declare-fun e!1770881 () Bool)

(assert (=> b!2802254 (=> res!1167670 e!1770881)))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2802254 (= res!1167670 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2802255 () Bool)

(assert (=> b!2802255 (= e!1770881 e!1770883)))

(declare-fun res!1167664 () Bool)

(assert (=> b!2802255 (=> res!1167664 e!1770883)))

(assert (=> b!2802255 (= res!1167664 (not (= (++!8033 lt!1001881 lt!1001886) lt!1001896)))))

(assert (=> b!2802255 (= lt!1001886 (list!12225 (_2!19699 lt!1001889)))))

(assert (=> b!2802255 (= lt!1001881 (list!12225 (_1!19699 lt!1001889)))))

(declare-fun splitAt!204 (BalanceConc!19786 Int) tuple2!33238)

(assert (=> b!2802255 (= lt!1001889 (splitAt!204 totalInput!758 testedPSize!143))))

(declare-fun b!2802256 () Bool)

(declare-fun e!1770871 () Bool)

(assert (=> b!2802256 (= e!1770875 e!1770871)))

(declare-fun res!1167665 () Bool)

(assert (=> b!2802256 (=> (not res!1167665) (not e!1770871))))

(assert (=> b!2802256 (= res!1167665 (= testedPSize!143 lt!1001891))))

(assert (=> b!2802256 (= lt!1001891 (size!25448 testedP!183))))

(declare-fun tp!893206 () Bool)

(declare-fun tp!893209 () Bool)

(declare-fun e!1770882 () Bool)

(declare-fun array_inv!4590 (array!14388) Bool)

(declare-fun array_inv!4591 (array!14386) Bool)

(assert (=> b!2802257 (= e!1770882 (and tp!893204 tp!893209 tp!893206 (array_inv!4590 (_keys!4348 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890))))))) (array_inv!4591 (_values!4329 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890))))))) e!1770869))))

(declare-fun tp!893210 () Bool)

(declare-fun setNonEmpty!24594 () Bool)

(declare-fun setElem!24594 () Context!4894)

(declare-fun inv!44256 (Context!4894) Bool)

(assert (=> setNonEmpty!24594 (= setRes!24594 (and tp!893210 (inv!44256 setElem!24594) e!1770855))))

(declare-fun setRest!24594 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24594 (= z!3684 ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24594 true) setRest!24594))))

(declare-fun b!2802258 () Bool)

(declare-fun e!1770870 () Bool)

(declare-fun e!1770864 () Bool)

(declare-fun lt!1001883 () MutLongMap!4048)

(assert (=> b!2802258 (= e!1770870 (and e!1770864 ((_ is LongMap!4048) lt!1001883)))))

(assert (=> b!2802258 (= lt!1001883 (v!34186 (underlying!8300 (cache!4097 cacheUp!890))))))

(declare-fun b!2802259 () Bool)

(declare-fun e!1770868 () Bool)

(assert (=> b!2802259 (= e!1770868 e!1770882)))

(declare-fun b!2802260 () Bool)

(assert (=> b!2802260 (= e!1770864 e!1770868)))

(declare-fun b!2802261 () Bool)

(declare-fun e!1770877 () Bool)

(assert (=> b!2802261 (= e!1770862 (not e!1770877))))

(declare-fun res!1167666 () Bool)

(assert (=> b!2802261 (=> res!1167666 e!1770877)))

(assert (=> b!2802261 (= res!1167666 (not (isPrefix!2644 testedP!183 lt!1001896)))))

(assert (=> b!2802261 (isPrefix!2644 testedP!183 lt!1001874)))

(declare-fun lt!1001884 () Unit!46693)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1749 (List!32685 List!32685) Unit!46693)

(assert (=> b!2802261 (= lt!1001884 (lemmaConcatTwoListThenFirstIsPrefix!1749 testedP!183 testedSuffix!143))))

(declare-fun b!2802262 () Bool)

(declare-fun tp_is_empty!14271 () Bool)

(declare-fun tp!893218 () Bool)

(assert (=> b!2802262 (= e!1770856 (and tp_is_empty!14271 tp!893218))))

(declare-fun mapNonEmpty!18397 () Bool)

(declare-fun tp!893215 () Bool)

(declare-fun tp!893202 () Bool)

(assert (=> mapNonEmpty!18397 (= mapRes!18397 (and tp!893215 tp!893202))))

(declare-fun mapValue!18397 () List!32683)

(declare-fun mapRest!18398 () (Array (_ BitVec 32) List!32683))

(declare-fun mapKey!18398 () (_ BitVec 32))

(assert (=> mapNonEmpty!18397 (= (arr!6410 (_values!4329 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890))))))) (store mapRest!18398 mapKey!18398 mapValue!18397))))

(declare-fun b!2802263 () Bool)

(declare-fun tp!893214 () Bool)

(declare-fun inv!44257 (Conc!10086) Bool)

(assert (=> b!2802263 (= e!1770879 (and (inv!44257 (c!454315 totalInput!758)) tp!893214))))

(declare-fun b!2802264 () Bool)

(declare-fun Unit!46695 () Unit!46693)

(assert (=> b!2802264 (= e!1770880 Unit!46695)))

(declare-fun lt!1001877 () Unit!46693)

(declare-fun lemmaIsPrefixRefl!1724 (List!32685 List!32685) Unit!46693)

(assert (=> b!2802264 (= lt!1001877 (lemmaIsPrefixRefl!1724 lt!1001896 lt!1001896))))

(assert (=> b!2802264 (isPrefix!2644 lt!1001896 lt!1001896)))

(declare-fun lt!1001873 () Unit!46693)

(declare-fun lemmaIsPrefixSameLengthThenSameList!500 (List!32685 List!32685 List!32685) Unit!46693)

(assert (=> b!2802264 (= lt!1001873 (lemmaIsPrefixSameLengthThenSameList!500 lt!1001896 testedP!183 lt!1001896))))

(assert (=> b!2802264 false))

(declare-fun tp!893217 () Bool)

(declare-fun e!1770860 () Bool)

(declare-fun tp!893201 () Bool)

(declare-fun e!1770876 () Bool)

(declare-fun array_inv!4592 (array!14390) Bool)

(assert (=> b!2802265 (= e!1770876 (and tp!893216 tp!893201 tp!893217 (array_inv!4590 (_keys!4349 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009))))))) (array_inv!4592 (_values!4330 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009))))))) e!1770860))))

(declare-fun mapIsEmpty!18398 () Bool)

(declare-fun mapRes!18398 () Bool)

(assert (=> mapIsEmpty!18398 mapRes!18398))

(declare-fun b!2802266 () Bool)

(assert (=> b!2802266 (= e!1770871 e!1770862)))

(declare-fun res!1167671 () Bool)

(assert (=> b!2802266 (=> (not res!1167671) (not e!1770862))))

(assert (=> b!2802266 (= res!1167671 (= totalInputSize!205 lt!1001885))))

(assert (=> b!2802266 (= lt!1001885 (size!25447 totalInput!758))))

(declare-fun b!2802267 () Bool)

(declare-fun tp!893203 () Bool)

(assert (=> b!2802267 (= e!1770861 (and tp_is_empty!14271 tp!893203))))

(declare-fun setIsEmpty!24594 () Bool)

(assert (=> setIsEmpty!24594 setRes!24594))

(declare-fun b!2802268 () Bool)

(assert (=> b!2802268 (= e!1770863 e!1770876)))

(declare-fun mapNonEmpty!18398 () Bool)

(declare-fun tp!893207 () Bool)

(declare-fun tp!893212 () Bool)

(assert (=> mapNonEmpty!18398 (= mapRes!18398 (and tp!893207 tp!893212))))

(declare-fun mapValue!18398 () List!32684)

(declare-fun mapRest!18397 () (Array (_ BitVec 32) List!32684))

(declare-fun mapKey!18397 () (_ BitVec 32))

(assert (=> mapNonEmpty!18398 (= (arr!6412 (_values!4330 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009))))))) (store mapRest!18397 mapKey!18397 mapValue!18398))))

(declare-fun b!2802269 () Bool)

(declare-fun Unit!46696 () Unit!46693)

(assert (=> b!2802269 (= e!1770880 Unit!46696)))

(assert (=> b!2802270 (= e!1770866 (and e!1770870 tp!893211))))

(declare-fun b!2802271 () Bool)

(declare-fun tp!893205 () Bool)

(assert (=> b!2802271 (= e!1770860 (and tp!893205 mapRes!18398))))

(declare-fun condMapEmpty!18397 () Bool)

(declare-fun mapDefault!18397 () List!32684)

(assert (=> b!2802271 (= condMapEmpty!18397 (= (arr!6412 (_values!4330 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32684)) mapDefault!18397)))))

(declare-fun b!2802272 () Bool)

(declare-fun res!1167677 () Bool)

(assert (=> b!2802272 (=> (not res!1167677) (not e!1770862))))

(declare-fun valid!3170 (CacheDown!2784) Bool)

(assert (=> b!2802272 (= res!1167677 (valid!3170 cacheDown!1009))))

(assert (=> b!2802273 (= e!1770858 (and e!1770874 tp!893213))))

(declare-fun b!2802274 () Bool)

(assert (=> b!2802274 (= e!1770877 e!1770881)))

(declare-fun res!1167673 () Bool)

(assert (=> b!2802274 (=> res!1167673 e!1770881)))

(declare-fun lostCauseZipper!514 ((InoxSet Context!4894)) Bool)

(assert (=> b!2802274 (= res!1167673 (lostCauseZipper!514 z!3684))))

(assert (=> b!2802274 (and (= testedSuffix!143 lt!1001894) (= lt!1001894 testedSuffix!143))))

(declare-fun lt!1001882 () Unit!46693)

(declare-fun lemmaSamePrefixThenSameSuffix!1217 (List!32685 List!32685 List!32685 List!32685 List!32685) Unit!46693)

(assert (=> b!2802274 (= lt!1001882 (lemmaSamePrefixThenSameSuffix!1217 testedP!183 testedSuffix!143 testedP!183 lt!1001894 lt!1001896))))

(declare-fun getSuffix!1319 (List!32685 List!32685) List!32685)

(assert (=> b!2802274 (= lt!1001894 (getSuffix!1319 lt!1001896 testedP!183))))

(assert (= (and start!270984 res!1167667) b!2802256))

(assert (= (and b!2802256 res!1167665) b!2802266))

(assert (= (and b!2802266 res!1167671) b!2802251))

(assert (= (and b!2802251 res!1167669) b!2802272))

(assert (= (and b!2802272 res!1167677) b!2802261))

(assert (= (and b!2802261 (not res!1167666)) b!2802274))

(assert (= (and b!2802274 (not res!1167673)) b!2802254))

(assert (= (and b!2802254 (not res!1167670)) b!2802255))

(assert (= (and b!2802255 (not res!1167664)) b!2802245))

(assert (= (and b!2802245 (not res!1167675)) b!2802244))

(assert (= (and b!2802244 (not res!1167672)) b!2802249))

(assert (= (and b!2802249 c!454313) b!2802264))

(assert (= (and b!2802249 (not c!454313)) b!2802269))

(assert (= (and b!2802249 (not res!1167668)) b!2802248))

(assert (= (and b!2802248 (not res!1167676)) b!2802252))

(assert (= (and b!2802252 (not res!1167674)) b!2802241))

(assert (= start!270984 b!2802263))

(assert (= (and start!270984 condSetEmpty!24594) setIsEmpty!24594))

(assert (= (and start!270984 (not condSetEmpty!24594)) setNonEmpty!24594))

(assert (= setNonEmpty!24594 b!2802243))

(assert (= (and start!270984 ((_ is Cons!32585) testedP!183)) b!2802262))

(assert (= (and start!270984 ((_ is Cons!32585) testedSuffix!143)) b!2802267))

(assert (= (and b!2802271 condMapEmpty!18397) mapIsEmpty!18398))

(assert (= (and b!2802271 (not condMapEmpty!18397)) mapNonEmpty!18398))

(assert (= b!2802265 b!2802271))

(assert (= b!2802268 b!2802265))

(assert (= b!2802246 b!2802268))

(assert (= (and b!2802253 ((_ is LongMap!4049) (v!34188 (underlying!8302 (cache!4098 cacheDown!1009))))) b!2802246))

(assert (= b!2802273 b!2802253))

(assert (= (and b!2802247 ((_ is HashMap!3955) (cache!4098 cacheDown!1009))) b!2802273))

(assert (= start!270984 b!2802247))

(assert (= (and b!2802242 condMapEmpty!18398) mapIsEmpty!18397))

(assert (= (and b!2802242 (not condMapEmpty!18398)) mapNonEmpty!18397))

(assert (= b!2802257 b!2802242))

(assert (= b!2802259 b!2802257))

(assert (= b!2802260 b!2802259))

(assert (= (and b!2802258 ((_ is LongMap!4048) (v!34186 (underlying!8300 (cache!4097 cacheUp!890))))) b!2802260))

(assert (= b!2802270 b!2802258))

(assert (= (and b!2802250 ((_ is HashMap!3954) (cache!4097 cacheUp!890))) b!2802270))

(assert (= start!270984 b!2802250))

(declare-fun m!3231867 () Bool)

(assert (=> b!2802248 m!3231867))

(declare-fun m!3231869 () Bool)

(assert (=> b!2802248 m!3231869))

(declare-fun m!3231871 () Bool)

(assert (=> b!2802248 m!3231871))

(declare-fun m!3231873 () Bool)

(assert (=> b!2802248 m!3231873))

(declare-fun m!3231875 () Bool)

(assert (=> b!2802248 m!3231875))

(declare-fun m!3231877 () Bool)

(assert (=> b!2802248 m!3231877))

(declare-fun m!3231879 () Bool)

(assert (=> b!2802248 m!3231879))

(assert (=> b!2802248 m!3231879))

(declare-fun m!3231881 () Bool)

(assert (=> b!2802248 m!3231881))

(declare-fun m!3231883 () Bool)

(assert (=> b!2802248 m!3231883))

(declare-fun m!3231885 () Bool)

(assert (=> b!2802274 m!3231885))

(declare-fun m!3231887 () Bool)

(assert (=> b!2802274 m!3231887))

(declare-fun m!3231889 () Bool)

(assert (=> b!2802274 m!3231889))

(declare-fun m!3231891 () Bool)

(assert (=> b!2802244 m!3231891))

(declare-fun m!3231893 () Bool)

(assert (=> b!2802244 m!3231893))

(declare-fun m!3231895 () Bool)

(assert (=> b!2802244 m!3231895))

(declare-fun m!3231897 () Bool)

(assert (=> b!2802244 m!3231897))

(assert (=> b!2802244 m!3231891))

(declare-fun m!3231899 () Bool)

(assert (=> b!2802244 m!3231899))

(declare-fun m!3231901 () Bool)

(assert (=> b!2802244 m!3231901))

(declare-fun m!3231903 () Bool)

(assert (=> b!2802244 m!3231903))

(declare-fun m!3231905 () Bool)

(assert (=> b!2802265 m!3231905))

(declare-fun m!3231907 () Bool)

(assert (=> b!2802265 m!3231907))

(declare-fun m!3231909 () Bool)

(assert (=> b!2802251 m!3231909))

(declare-fun m!3231911 () Bool)

(assert (=> mapNonEmpty!18398 m!3231911))

(declare-fun m!3231913 () Bool)

(assert (=> b!2802272 m!3231913))

(declare-fun m!3231915 () Bool)

(assert (=> b!2802245 m!3231915))

(declare-fun m!3231917 () Bool)

(assert (=> setNonEmpty!24594 m!3231917))

(declare-fun m!3231919 () Bool)

(assert (=> mapNonEmpty!18397 m!3231919))

(declare-fun m!3231921 () Bool)

(assert (=> b!2802255 m!3231921))

(declare-fun m!3231923 () Bool)

(assert (=> b!2802255 m!3231923))

(declare-fun m!3231925 () Bool)

(assert (=> b!2802255 m!3231925))

(declare-fun m!3231927 () Bool)

(assert (=> b!2802255 m!3231927))

(declare-fun m!3231929 () Bool)

(assert (=> start!270984 m!3231929))

(declare-fun m!3231931 () Bool)

(assert (=> start!270984 m!3231931))

(declare-fun m!3231933 () Bool)

(assert (=> start!270984 m!3231933))

(declare-fun m!3231935 () Bool)

(assert (=> start!270984 m!3231935))

(declare-fun m!3231937 () Bool)

(assert (=> start!270984 m!3231937))

(declare-fun m!3231939 () Bool)

(assert (=> b!2802261 m!3231939))

(declare-fun m!3231941 () Bool)

(assert (=> b!2802261 m!3231941))

(declare-fun m!3231943 () Bool)

(assert (=> b!2802261 m!3231943))

(declare-fun m!3231945 () Bool)

(assert (=> b!2802257 m!3231945))

(declare-fun m!3231947 () Bool)

(assert (=> b!2802257 m!3231947))

(declare-fun m!3231949 () Bool)

(assert (=> b!2802249 m!3231949))

(declare-fun m!3231951 () Bool)

(assert (=> b!2802249 m!3231951))

(declare-fun m!3231953 () Bool)

(assert (=> b!2802266 m!3231953))

(declare-fun m!3231955 () Bool)

(assert (=> b!2802241 m!3231955))

(declare-fun m!3231957 () Bool)

(assert (=> b!2802256 m!3231957))

(declare-fun m!3231959 () Bool)

(assert (=> b!2802252 m!3231959))

(declare-fun m!3231961 () Bool)

(assert (=> b!2802252 m!3231961))

(declare-fun m!3231963 () Bool)

(assert (=> b!2802263 m!3231963))

(declare-fun m!3231965 () Bool)

(assert (=> b!2802264 m!3231965))

(declare-fun m!3231967 () Bool)

(assert (=> b!2802264 m!3231967))

(declare-fun m!3231969 () Bool)

(assert (=> b!2802264 m!3231969))

(check-sat (not b_next!80185) b_and!204217 (not b!2802262) (not b!2802272) (not b!2802251) (not b!2802263) (not mapNonEmpty!18398) (not b_next!80181) (not b!2802244) (not b!2802249) (not b!2802245) (not b!2802248) (not b!2802267) b_and!204219 (not b!2802266) (not b!2802241) (not b!2802271) (not b!2802256) (not setNonEmpty!24594) b_and!204221 (not b_next!80183) (not b!2802252) (not b!2802255) (not b!2802265) (not b!2802243) (not b_next!80187) b_and!204215 (not start!270984) tp_is_empty!14271 (not mapNonEmpty!18397) (not b!2802274) (not b!2802264) (not b!2802261) (not b!2802242) (not b!2802257))
(check-sat (not b_next!80185) b_and!204217 b_and!204221 (not b_next!80183) (not b_next!80181) b_and!204219 (not b_next!80187) b_and!204215)
(get-model)

(declare-fun d!813963 () Bool)

(declare-fun validCacheMapUp!401 (MutableMap!3954) Bool)

(assert (=> d!813963 (= (valid!3169 (_2!19698 lt!1001890)) (validCacheMapUp!401 (cache!4097 (_2!19698 lt!1001890))))))

(declare-fun bs!516000 () Bool)

(assert (= bs!516000 d!813963))

(declare-fun m!3231971 () Bool)

(assert (=> bs!516000 m!3231971))

(assert (=> b!2802241 d!813963))

(declare-fun d!813965 () Bool)

(assert (=> d!813965 (= (valid!3169 cacheUp!890) (validCacheMapUp!401 (cache!4097 cacheUp!890)))))

(declare-fun bs!516001 () Bool)

(assert (= bs!516001 d!813965))

(declare-fun m!3231973 () Bool)

(assert (=> bs!516001 m!3231973))

(assert (=> b!2802251 d!813965))

(declare-fun d!813967 () Bool)

(declare-fun e!1770891 () Bool)

(assert (=> d!813967 e!1770891))

(declare-fun res!1167688 () Bool)

(assert (=> d!813967 (=> res!1167688 e!1770891)))

(declare-fun lt!1001899 () Bool)

(assert (=> d!813967 (= res!1167688 (not lt!1001899))))

(declare-fun e!1770892 () Bool)

(assert (=> d!813967 (= lt!1001899 e!1770892)))

(declare-fun res!1167687 () Bool)

(assert (=> d!813967 (=> res!1167687 e!1770892)))

(assert (=> d!813967 (= res!1167687 ((_ is Nil!32585) testedP!183))))

(assert (=> d!813967 (= (isPrefix!2644 testedP!183 lt!1001896) lt!1001899)))

(declare-fun b!2802285 () Bool)

(declare-fun e!1770893 () Bool)

(assert (=> b!2802285 (= e!1770893 (isPrefix!2644 (tail!4437 testedP!183) (tail!4437 lt!1001896)))))

(declare-fun b!2802284 () Bool)

(declare-fun res!1167689 () Bool)

(assert (=> b!2802284 (=> (not res!1167689) (not e!1770893))))

(assert (=> b!2802284 (= res!1167689 (= (head!6210 testedP!183) (head!6210 lt!1001896)))))

(declare-fun b!2802286 () Bool)

(assert (=> b!2802286 (= e!1770891 (>= (size!25448 lt!1001896) (size!25448 testedP!183)))))

(declare-fun b!2802283 () Bool)

(assert (=> b!2802283 (= e!1770892 e!1770893)))

(declare-fun res!1167686 () Bool)

(assert (=> b!2802283 (=> (not res!1167686) (not e!1770893))))

(assert (=> b!2802283 (= res!1167686 (not ((_ is Nil!32585) lt!1001896)))))

(assert (= (and d!813967 (not res!1167687)) b!2802283))

(assert (= (and b!2802283 res!1167686) b!2802284))

(assert (= (and b!2802284 res!1167689) b!2802285))

(assert (= (and d!813967 (not res!1167688)) b!2802286))

(declare-fun m!3231975 () Bool)

(assert (=> b!2802285 m!3231975))

(declare-fun m!3231977 () Bool)

(assert (=> b!2802285 m!3231977))

(assert (=> b!2802285 m!3231975))

(assert (=> b!2802285 m!3231977))

(declare-fun m!3231979 () Bool)

(assert (=> b!2802285 m!3231979))

(declare-fun m!3231981 () Bool)

(assert (=> b!2802284 m!3231981))

(declare-fun m!3231983 () Bool)

(assert (=> b!2802284 m!3231983))

(assert (=> b!2802286 m!3231949))

(assert (=> b!2802286 m!3231957))

(assert (=> b!2802261 d!813967))

(declare-fun d!813969 () Bool)

(declare-fun e!1770894 () Bool)

(assert (=> d!813969 e!1770894))

(declare-fun res!1167692 () Bool)

(assert (=> d!813969 (=> res!1167692 e!1770894)))

(declare-fun lt!1001900 () Bool)

(assert (=> d!813969 (= res!1167692 (not lt!1001900))))

(declare-fun e!1770895 () Bool)

(assert (=> d!813969 (= lt!1001900 e!1770895)))

(declare-fun res!1167691 () Bool)

(assert (=> d!813969 (=> res!1167691 e!1770895)))

(assert (=> d!813969 (= res!1167691 ((_ is Nil!32585) testedP!183))))

(assert (=> d!813969 (= (isPrefix!2644 testedP!183 lt!1001874) lt!1001900)))

(declare-fun b!2802289 () Bool)

(declare-fun e!1770896 () Bool)

(assert (=> b!2802289 (= e!1770896 (isPrefix!2644 (tail!4437 testedP!183) (tail!4437 lt!1001874)))))

(declare-fun b!2802288 () Bool)

(declare-fun res!1167693 () Bool)

(assert (=> b!2802288 (=> (not res!1167693) (not e!1770896))))

(assert (=> b!2802288 (= res!1167693 (= (head!6210 testedP!183) (head!6210 lt!1001874)))))

(declare-fun b!2802290 () Bool)

(assert (=> b!2802290 (= e!1770894 (>= (size!25448 lt!1001874) (size!25448 testedP!183)))))

(declare-fun b!2802287 () Bool)

(assert (=> b!2802287 (= e!1770895 e!1770896)))

(declare-fun res!1167690 () Bool)

(assert (=> b!2802287 (=> (not res!1167690) (not e!1770896))))

(assert (=> b!2802287 (= res!1167690 (not ((_ is Nil!32585) lt!1001874)))))

(assert (= (and d!813969 (not res!1167691)) b!2802287))

(assert (= (and b!2802287 res!1167690) b!2802288))

(assert (= (and b!2802288 res!1167693) b!2802289))

(assert (= (and d!813969 (not res!1167692)) b!2802290))

(assert (=> b!2802289 m!3231975))

(declare-fun m!3231985 () Bool)

(assert (=> b!2802289 m!3231985))

(assert (=> b!2802289 m!3231975))

(assert (=> b!2802289 m!3231985))

(declare-fun m!3231987 () Bool)

(assert (=> b!2802289 m!3231987))

(assert (=> b!2802288 m!3231981))

(declare-fun m!3231989 () Bool)

(assert (=> b!2802288 m!3231989))

(declare-fun m!3231991 () Bool)

(assert (=> b!2802290 m!3231991))

(assert (=> b!2802290 m!3231957))

(assert (=> b!2802261 d!813969))

(declare-fun d!813971 () Bool)

(assert (=> d!813971 (isPrefix!2644 testedP!183 (++!8033 testedP!183 testedSuffix!143))))

(declare-fun lt!1001903 () Unit!46693)

(declare-fun choose!16514 (List!32685 List!32685) Unit!46693)

(assert (=> d!813971 (= lt!1001903 (choose!16514 testedP!183 testedSuffix!143))))

(assert (=> d!813971 (= (lemmaConcatTwoListThenFirstIsPrefix!1749 testedP!183 testedSuffix!143) lt!1001903)))

(declare-fun bs!516002 () Bool)

(assert (= bs!516002 d!813971))

(assert (=> bs!516002 m!3231937))

(assert (=> bs!516002 m!3231937))

(declare-fun m!3231993 () Bool)

(assert (=> bs!516002 m!3231993))

(declare-fun m!3231995 () Bool)

(assert (=> bs!516002 m!3231995))

(assert (=> b!2802261 d!813971))

(declare-fun d!813973 () Bool)

(declare-fun lt!1001906 () Int)

(assert (=> d!813973 (>= lt!1001906 0)))

(declare-fun e!1770899 () Int)

(assert (=> d!813973 (= lt!1001906 e!1770899)))

(declare-fun c!454318 () Bool)

(assert (=> d!813973 (= c!454318 ((_ is Nil!32585) lt!1001896))))

(assert (=> d!813973 (= (size!25448 lt!1001896) lt!1001906)))

(declare-fun b!2802295 () Bool)

(assert (=> b!2802295 (= e!1770899 0)))

(declare-fun b!2802296 () Bool)

(assert (=> b!2802296 (= e!1770899 (+ 1 (size!25448 (t!228855 lt!1001896))))))

(assert (= (and d!813973 c!454318) b!2802295))

(assert (= (and d!813973 (not c!454318)) b!2802296))

(declare-fun m!3231997 () Bool)

(assert (=> b!2802296 m!3231997))

(assert (=> b!2802249 d!813973))

(declare-fun d!813975 () Bool)

(assert (=> d!813975 (<= (size!25448 testedP!183) (size!25448 lt!1001896))))

(declare-fun lt!1001909 () Unit!46693)

(declare-fun choose!16515 (List!32685 List!32685) Unit!46693)

(assert (=> d!813975 (= lt!1001909 (choose!16515 testedP!183 lt!1001896))))

(assert (=> d!813975 (isPrefix!2644 testedP!183 lt!1001896)))

(assert (=> d!813975 (= (lemmaIsPrefixThenSmallerEqSize!301 testedP!183 lt!1001896) lt!1001909)))

(declare-fun bs!516003 () Bool)

(assert (= bs!516003 d!813975))

(assert (=> bs!516003 m!3231957))

(assert (=> bs!516003 m!3231949))

(declare-fun m!3231999 () Bool)

(assert (=> bs!516003 m!3231999))

(assert (=> bs!516003 m!3231939))

(assert (=> b!2802249 d!813975))

(declare-fun d!813977 () Bool)

(assert (=> d!813977 (= (head!6210 lt!1001894) (h!38005 lt!1001894))))

(assert (=> b!2802248 d!813977))

(declare-fun lt!1001912 () List!32685)

(declare-fun e!1770904 () Bool)

(declare-fun b!2802308 () Bool)

(assert (=> b!2802308 (= e!1770904 (or (not (= (Cons!32585 lt!1001879 Nil!32585) Nil!32585)) (= lt!1001912 testedP!183)))))

(declare-fun b!2802306 () Bool)

(declare-fun e!1770905 () List!32685)

(assert (=> b!2802306 (= e!1770905 (Cons!32585 (h!38005 testedP!183) (++!8033 (t!228855 testedP!183) (Cons!32585 lt!1001879 Nil!32585))))))

(declare-fun b!2802307 () Bool)

(declare-fun res!1167698 () Bool)

(assert (=> b!2802307 (=> (not res!1167698) (not e!1770904))))

(assert (=> b!2802307 (= res!1167698 (= (size!25448 lt!1001912) (+ (size!25448 testedP!183) (size!25448 (Cons!32585 lt!1001879 Nil!32585)))))))

(declare-fun b!2802305 () Bool)

(assert (=> b!2802305 (= e!1770905 (Cons!32585 lt!1001879 Nil!32585))))

(declare-fun d!813979 () Bool)

(assert (=> d!813979 e!1770904))

(declare-fun res!1167699 () Bool)

(assert (=> d!813979 (=> (not res!1167699) (not e!1770904))))

(declare-fun content!4547 (List!32685) (InoxSet C!16616))

(assert (=> d!813979 (= res!1167699 (= (content!4547 lt!1001912) ((_ map or) (content!4547 testedP!183) (content!4547 (Cons!32585 lt!1001879 Nil!32585)))))))

(assert (=> d!813979 (= lt!1001912 e!1770905)))

(declare-fun c!454321 () Bool)

(assert (=> d!813979 (= c!454321 ((_ is Nil!32585) testedP!183))))

(assert (=> d!813979 (= (++!8033 testedP!183 (Cons!32585 lt!1001879 Nil!32585)) lt!1001912)))

(assert (= (and d!813979 c!454321) b!2802305))

(assert (= (and d!813979 (not c!454321)) b!2802306))

(assert (= (and d!813979 res!1167699) b!2802307))

(assert (= (and b!2802307 res!1167698) b!2802308))

(declare-fun m!3232001 () Bool)

(assert (=> b!2802306 m!3232001))

(declare-fun m!3232003 () Bool)

(assert (=> b!2802307 m!3232003))

(assert (=> b!2802307 m!3231957))

(declare-fun m!3232005 () Bool)

(assert (=> b!2802307 m!3232005))

(declare-fun m!3232007 () Bool)

(assert (=> d!813979 m!3232007))

(declare-fun m!3232009 () Bool)

(assert (=> d!813979 m!3232009))

(declare-fun m!3232011 () Bool)

(assert (=> d!813979 m!3232011))

(assert (=> b!2802248 d!813979))

(declare-fun d!813981 () Bool)

(assert (=> d!813981 (= (tail!4437 testedSuffix!143) (t!228855 testedSuffix!143))))

(assert (=> b!2802248 d!813981))

(declare-fun d!813983 () Bool)

(assert (=> d!813983 (isPrefix!2644 (++!8033 testedP!183 (Cons!32585 (head!6210 (getSuffix!1319 lt!1001896 testedP!183)) Nil!32585)) lt!1001896)))

(declare-fun lt!1001915 () Unit!46693)

(declare-fun choose!16516 (List!32685 List!32685) Unit!46693)

(assert (=> d!813983 (= lt!1001915 (choose!16516 testedP!183 lt!1001896))))

(assert (=> d!813983 (isPrefix!2644 testedP!183 lt!1001896)))

(assert (=> d!813983 (= (lemmaAddHeadSuffixToPrefixStillPrefix!493 testedP!183 lt!1001896) lt!1001915)))

(declare-fun bs!516004 () Bool)

(assert (= bs!516004 d!813983))

(assert (=> bs!516004 m!3231889))

(assert (=> bs!516004 m!3231939))

(declare-fun m!3232013 () Bool)

(assert (=> bs!516004 m!3232013))

(declare-fun m!3232015 () Bool)

(assert (=> bs!516004 m!3232015))

(assert (=> bs!516004 m!3231889))

(declare-fun m!3232017 () Bool)

(assert (=> bs!516004 m!3232017))

(declare-fun m!3232019 () Bool)

(assert (=> bs!516004 m!3232019))

(assert (=> bs!516004 m!3232013))

(assert (=> b!2802248 d!813983))

(declare-fun d!813985 () Bool)

(declare-fun e!1770906 () Bool)

(assert (=> d!813985 e!1770906))

(declare-fun res!1167702 () Bool)

(assert (=> d!813985 (=> res!1167702 e!1770906)))

(declare-fun lt!1001916 () Bool)

(assert (=> d!813985 (= res!1167702 (not lt!1001916))))

(declare-fun e!1770907 () Bool)

(assert (=> d!813985 (= lt!1001916 e!1770907)))

(declare-fun res!1167701 () Bool)

(assert (=> d!813985 (=> res!1167701 e!1770907)))

(assert (=> d!813985 (= res!1167701 ((_ is Nil!32585) (++!8033 testedP!183 (Cons!32585 (head!6210 lt!1001894) Nil!32585))))))

(assert (=> d!813985 (= (isPrefix!2644 (++!8033 testedP!183 (Cons!32585 (head!6210 lt!1001894) Nil!32585)) lt!1001896) lt!1001916)))

(declare-fun e!1770908 () Bool)

(declare-fun b!2802311 () Bool)

(assert (=> b!2802311 (= e!1770908 (isPrefix!2644 (tail!4437 (++!8033 testedP!183 (Cons!32585 (head!6210 lt!1001894) Nil!32585))) (tail!4437 lt!1001896)))))

(declare-fun b!2802310 () Bool)

(declare-fun res!1167703 () Bool)

(assert (=> b!2802310 (=> (not res!1167703) (not e!1770908))))

(assert (=> b!2802310 (= res!1167703 (= (head!6210 (++!8033 testedP!183 (Cons!32585 (head!6210 lt!1001894) Nil!32585))) (head!6210 lt!1001896)))))

(declare-fun b!2802312 () Bool)

(assert (=> b!2802312 (= e!1770906 (>= (size!25448 lt!1001896) (size!25448 (++!8033 testedP!183 (Cons!32585 (head!6210 lt!1001894) Nil!32585)))))))

(declare-fun b!2802309 () Bool)

(assert (=> b!2802309 (= e!1770907 e!1770908)))

(declare-fun res!1167700 () Bool)

(assert (=> b!2802309 (=> (not res!1167700) (not e!1770908))))

(assert (=> b!2802309 (= res!1167700 (not ((_ is Nil!32585) lt!1001896)))))

(assert (= (and d!813985 (not res!1167701)) b!2802309))

(assert (= (and b!2802309 res!1167700) b!2802310))

(assert (= (and b!2802310 res!1167703) b!2802311))

(assert (= (and d!813985 (not res!1167702)) b!2802312))

(assert (=> b!2802311 m!3231879))

(declare-fun m!3232021 () Bool)

(assert (=> b!2802311 m!3232021))

(assert (=> b!2802311 m!3231977))

(assert (=> b!2802311 m!3232021))

(assert (=> b!2802311 m!3231977))

(declare-fun m!3232023 () Bool)

(assert (=> b!2802311 m!3232023))

(assert (=> b!2802310 m!3231879))

(declare-fun m!3232025 () Bool)

(assert (=> b!2802310 m!3232025))

(assert (=> b!2802310 m!3231983))

(assert (=> b!2802312 m!3231949))

(assert (=> b!2802312 m!3231879))

(declare-fun m!3232027 () Bool)

(assert (=> b!2802312 m!3232027))

(assert (=> b!2802248 d!813985))

(declare-fun d!813987 () Bool)

(assert (=> d!813987 (= (++!8033 (++!8033 testedP!183 (Cons!32585 lt!1001879 Nil!32585)) lt!1001875) lt!1001896)))

(declare-fun lt!1001919 () Unit!46693)

(declare-fun choose!16517 (List!32685 C!16616 List!32685 List!32685) Unit!46693)

(assert (=> d!813987 (= lt!1001919 (choose!16517 testedP!183 lt!1001879 lt!1001875 lt!1001896))))

(assert (=> d!813987 (= (++!8033 testedP!183 (Cons!32585 lt!1001879 lt!1001875)) lt!1001896)))

(assert (=> d!813987 (= (lemmaMoveElementToOtherListKeepsConcatEq!901 testedP!183 lt!1001879 lt!1001875 lt!1001896) lt!1001919)))

(declare-fun bs!516005 () Bool)

(assert (= bs!516005 d!813987))

(assert (=> bs!516005 m!3231877))

(assert (=> bs!516005 m!3231877))

(declare-fun m!3232029 () Bool)

(assert (=> bs!516005 m!3232029))

(declare-fun m!3232031 () Bool)

(assert (=> bs!516005 m!3232031))

(declare-fun m!3232033 () Bool)

(assert (=> bs!516005 m!3232033))

(assert (=> b!2802248 d!813987))

(declare-fun lt!1001920 () List!32685)

(declare-fun b!2802316 () Bool)

(declare-fun e!1770909 () Bool)

(assert (=> b!2802316 (= e!1770909 (or (not (= lt!1001875 Nil!32585)) (= lt!1001920 lt!1001893)))))

(declare-fun b!2802314 () Bool)

(declare-fun e!1770910 () List!32685)

(assert (=> b!2802314 (= e!1770910 (Cons!32585 (h!38005 lt!1001893) (++!8033 (t!228855 lt!1001893) lt!1001875)))))

(declare-fun b!2802315 () Bool)

(declare-fun res!1167704 () Bool)

(assert (=> b!2802315 (=> (not res!1167704) (not e!1770909))))

(assert (=> b!2802315 (= res!1167704 (= (size!25448 lt!1001920) (+ (size!25448 lt!1001893) (size!25448 lt!1001875))))))

(declare-fun b!2802313 () Bool)

(assert (=> b!2802313 (= e!1770910 lt!1001875)))

(declare-fun d!813989 () Bool)

(assert (=> d!813989 e!1770909))

(declare-fun res!1167705 () Bool)

(assert (=> d!813989 (=> (not res!1167705) (not e!1770909))))

(assert (=> d!813989 (= res!1167705 (= (content!4547 lt!1001920) ((_ map or) (content!4547 lt!1001893) (content!4547 lt!1001875))))))

(assert (=> d!813989 (= lt!1001920 e!1770910)))

(declare-fun c!454322 () Bool)

(assert (=> d!813989 (= c!454322 ((_ is Nil!32585) lt!1001893))))

(assert (=> d!813989 (= (++!8033 lt!1001893 lt!1001875) lt!1001920)))

(assert (= (and d!813989 c!454322) b!2802313))

(assert (= (and d!813989 (not c!454322)) b!2802314))

(assert (= (and d!813989 res!1167705) b!2802315))

(assert (= (and b!2802315 res!1167704) b!2802316))

(declare-fun m!3232035 () Bool)

(assert (=> b!2802314 m!3232035))

(declare-fun m!3232037 () Bool)

(assert (=> b!2802315 m!3232037))

(assert (=> b!2802315 m!3231959))

(declare-fun m!3232039 () Bool)

(assert (=> b!2802315 m!3232039))

(declare-fun m!3232041 () Bool)

(assert (=> d!813989 m!3232041))

(declare-fun m!3232043 () Bool)

(assert (=> d!813989 m!3232043))

(declare-fun m!3232045 () Bool)

(assert (=> d!813989 m!3232045))

(assert (=> b!2802248 d!813989))

(declare-fun e!1770911 () Bool)

(declare-fun b!2802320 () Bool)

(declare-fun lt!1001921 () List!32685)

(assert (=> b!2802320 (= e!1770911 (or (not (= (Cons!32585 (head!6210 lt!1001894) Nil!32585) Nil!32585)) (= lt!1001921 testedP!183)))))

(declare-fun b!2802318 () Bool)

(declare-fun e!1770912 () List!32685)

(assert (=> b!2802318 (= e!1770912 (Cons!32585 (h!38005 testedP!183) (++!8033 (t!228855 testedP!183) (Cons!32585 (head!6210 lt!1001894) Nil!32585))))))

(declare-fun b!2802319 () Bool)

(declare-fun res!1167706 () Bool)

(assert (=> b!2802319 (=> (not res!1167706) (not e!1770911))))

(assert (=> b!2802319 (= res!1167706 (= (size!25448 lt!1001921) (+ (size!25448 testedP!183) (size!25448 (Cons!32585 (head!6210 lt!1001894) Nil!32585)))))))

(declare-fun b!2802317 () Bool)

(assert (=> b!2802317 (= e!1770912 (Cons!32585 (head!6210 lt!1001894) Nil!32585))))

(declare-fun d!813991 () Bool)

(assert (=> d!813991 e!1770911))

(declare-fun res!1167707 () Bool)

(assert (=> d!813991 (=> (not res!1167707) (not e!1770911))))

(assert (=> d!813991 (= res!1167707 (= (content!4547 lt!1001921) ((_ map or) (content!4547 testedP!183) (content!4547 (Cons!32585 (head!6210 lt!1001894) Nil!32585)))))))

(assert (=> d!813991 (= lt!1001921 e!1770912)))

(declare-fun c!454323 () Bool)

(assert (=> d!813991 (= c!454323 ((_ is Nil!32585) testedP!183))))

(assert (=> d!813991 (= (++!8033 testedP!183 (Cons!32585 (head!6210 lt!1001894) Nil!32585)) lt!1001921)))

(assert (= (and d!813991 c!454323) b!2802317))

(assert (= (and d!813991 (not c!454323)) b!2802318))

(assert (= (and d!813991 res!1167707) b!2802319))

(assert (= (and b!2802319 res!1167706) b!2802320))

(declare-fun m!3232047 () Bool)

(assert (=> b!2802318 m!3232047))

(declare-fun m!3232049 () Bool)

(assert (=> b!2802319 m!3232049))

(assert (=> b!2802319 m!3231957))

(declare-fun m!3232051 () Bool)

(assert (=> b!2802319 m!3232051))

(declare-fun m!3232053 () Bool)

(assert (=> d!813991 m!3232053))

(assert (=> d!813991 m!3232009))

(declare-fun m!3232055 () Bool)

(assert (=> d!813991 m!3232055))

(assert (=> b!2802248 d!813991))

(declare-fun d!813993 () Bool)

(declare-fun lambda!102949 () Int)

(declare-fun exists!1022 ((InoxSet Context!4894) Int) Bool)

(assert (=> d!813993 (= (nullableZipper!665 z!3684) (exists!1022 z!3684 lambda!102949))))

(declare-fun bs!516006 () Bool)

(assert (= bs!516006 d!813993))

(declare-fun m!3232057 () Bool)

(assert (=> bs!516006 m!3232057))

(assert (=> b!2802248 d!813993))

(declare-fun bs!516007 () Bool)

(declare-fun d!813995 () Bool)

(assert (= bs!516007 (and d!813995 d!813993)))

(declare-fun lambda!102962 () Int)

(assert (=> bs!516007 (not (= lambda!102962 lambda!102949))))

(declare-fun bs!516008 () Bool)

(declare-fun b!2802325 () Bool)

(assert (= bs!516008 (and b!2802325 d!813993)))

(declare-fun lambda!102963 () Int)

(assert (=> bs!516008 (not (= lambda!102963 lambda!102949))))

(declare-fun bs!516009 () Bool)

(assert (= bs!516009 (and b!2802325 d!813995)))

(assert (=> bs!516009 (not (= lambda!102963 lambda!102962))))

(declare-fun bs!516010 () Bool)

(declare-fun b!2802326 () Bool)

(assert (= bs!516010 (and b!2802326 d!813993)))

(declare-fun lambda!102964 () Int)

(assert (=> bs!516010 (not (= lambda!102964 lambda!102949))))

(declare-fun bs!516011 () Bool)

(assert (= bs!516011 (and b!2802326 d!813995)))

(assert (=> bs!516011 (not (= lambda!102964 lambda!102962))))

(declare-fun bs!516012 () Bool)

(assert (= bs!516012 (and b!2802326 b!2802325)))

(assert (=> bs!516012 (= lambda!102964 lambda!102963)))

(declare-fun bm!182883 () Bool)

(declare-datatypes ((List!32686 0))(
  ( (Nil!32586) (Cons!32586 (h!38006 Context!4894) (t!228856 List!32686)) )
))
(declare-fun call!182889 () List!32686)

(declare-fun toList!1889 ((InoxSet Context!4894)) List!32686)

(assert (=> bm!182883 (= call!182889 (toList!1889 z!3684))))

(declare-fun e!1770919 () Unit!46693)

(declare-fun Unit!46697 () Unit!46693)

(assert (=> b!2802326 (= e!1770919 Unit!46697)))

(declare-fun lt!1001945 () List!32686)

(assert (=> b!2802326 (= lt!1001945 call!182889)))

(declare-fun lt!1001944 () Unit!46693)

(declare-fun lemmaForallThenNotExists!112 (List!32686 Int) Unit!46693)

(assert (=> b!2802326 (= lt!1001944 (lemmaForallThenNotExists!112 lt!1001945 lambda!102962))))

(declare-fun call!182888 () Bool)

(assert (=> b!2802326 (not call!182888)))

(declare-fun lt!1001943 () Unit!46693)

(assert (=> b!2802326 (= lt!1001943 lt!1001944)))

(declare-fun Unit!46698 () Unit!46693)

(assert (=> b!2802325 (= e!1770919 Unit!46698)))

(declare-fun lt!1001941 () List!32686)

(assert (=> b!2802325 (= lt!1001941 call!182889)))

(declare-fun lt!1001942 () Unit!46693)

(declare-fun lemmaNotForallThenExists!112 (List!32686 Int) Unit!46693)

(assert (=> b!2802325 (= lt!1001942 (lemmaNotForallThenExists!112 lt!1001941 lambda!102962))))

(assert (=> b!2802325 call!182888))

(declare-fun lt!1001938 () Unit!46693)

(assert (=> b!2802325 (= lt!1001938 lt!1001942)))

(declare-fun c!454336 () Bool)

(declare-fun bm!182884 () Bool)

(declare-fun exists!1023 (List!32686 Int) Bool)

(assert (=> bm!182884 (= call!182888 (exists!1023 (ite c!454336 lt!1001941 lt!1001945) (ite c!454336 lambda!102963 lambda!102964)))))

(declare-fun lt!1001939 () Bool)

(declare-datatypes ((Option!6290 0))(
  ( (None!6289) (Some!6289 (v!34189 List!32685)) )
))
(declare-fun isEmpty!18141 (Option!6290) Bool)

(declare-fun getLanguageWitness!226 ((InoxSet Context!4894)) Option!6290)

(assert (=> d!813995 (= lt!1001939 (isEmpty!18141 (getLanguageWitness!226 z!3684)))))

(declare-fun forall!6715 ((InoxSet Context!4894) Int) Bool)

(assert (=> d!813995 (= lt!1001939 (forall!6715 z!3684 lambda!102962))))

(declare-fun lt!1001940 () Unit!46693)

(assert (=> d!813995 (= lt!1001940 e!1770919)))

(assert (=> d!813995 (= c!454336 (not (forall!6715 z!3684 lambda!102962)))))

(assert (=> d!813995 (= (lostCauseZipper!514 z!3684) lt!1001939)))

(assert (= (and d!813995 c!454336) b!2802325))

(assert (= (and d!813995 (not c!454336)) b!2802326))

(assert (= (or b!2802325 b!2802326) bm!182883))

(assert (= (or b!2802325 b!2802326) bm!182884))

(declare-fun m!3232059 () Bool)

(assert (=> b!2802326 m!3232059))

(declare-fun m!3232061 () Bool)

(assert (=> bm!182883 m!3232061))

(declare-fun m!3232063 () Bool)

(assert (=> bm!182884 m!3232063))

(declare-fun m!3232065 () Bool)

(assert (=> d!813995 m!3232065))

(assert (=> d!813995 m!3232065))

(declare-fun m!3232067 () Bool)

(assert (=> d!813995 m!3232067))

(declare-fun m!3232069 () Bool)

(assert (=> d!813995 m!3232069))

(assert (=> d!813995 m!3232069))

(declare-fun m!3232071 () Bool)

(assert (=> b!2802325 m!3232071))

(assert (=> b!2802274 d!813995))

(declare-fun d!813997 () Bool)

(assert (=> d!813997 (= testedSuffix!143 lt!1001894)))

(declare-fun lt!1001948 () Unit!46693)

(declare-fun choose!16518 (List!32685 List!32685 List!32685 List!32685 List!32685) Unit!46693)

(assert (=> d!813997 (= lt!1001948 (choose!16518 testedP!183 testedSuffix!143 testedP!183 lt!1001894 lt!1001896))))

(assert (=> d!813997 (isPrefix!2644 testedP!183 lt!1001896)))

(assert (=> d!813997 (= (lemmaSamePrefixThenSameSuffix!1217 testedP!183 testedSuffix!143 testedP!183 lt!1001894 lt!1001896) lt!1001948)))

(declare-fun bs!516013 () Bool)

(assert (= bs!516013 d!813997))

(declare-fun m!3232073 () Bool)

(assert (=> bs!516013 m!3232073))

(assert (=> bs!516013 m!3231939))

(assert (=> b!2802274 d!813997))

(declare-fun d!813999 () Bool)

(declare-fun lt!1001951 () List!32685)

(assert (=> d!813999 (= (++!8033 testedP!183 lt!1001951) lt!1001896)))

(declare-fun e!1770922 () List!32685)

(assert (=> d!813999 (= lt!1001951 e!1770922)))

(declare-fun c!454339 () Bool)

(assert (=> d!813999 (= c!454339 ((_ is Cons!32585) testedP!183))))

(assert (=> d!813999 (>= (size!25448 lt!1001896) (size!25448 testedP!183))))

(assert (=> d!813999 (= (getSuffix!1319 lt!1001896 testedP!183) lt!1001951)))

(declare-fun b!2802331 () Bool)

(assert (=> b!2802331 (= e!1770922 (getSuffix!1319 (tail!4437 lt!1001896) (t!228855 testedP!183)))))

(declare-fun b!2802332 () Bool)

(assert (=> b!2802332 (= e!1770922 lt!1001896)))

(assert (= (and d!813999 c!454339) b!2802331))

(assert (= (and d!813999 (not c!454339)) b!2802332))

(declare-fun m!3232075 () Bool)

(assert (=> d!813999 m!3232075))

(assert (=> d!813999 m!3231949))

(assert (=> d!813999 m!3231957))

(assert (=> b!2802331 m!3231977))

(assert (=> b!2802331 m!3231977))

(declare-fun m!3232077 () Bool)

(assert (=> b!2802331 m!3232077))

(assert (=> b!2802274 d!813999))

(declare-fun d!814001 () Bool)

(declare-fun res!1167710 () Bool)

(declare-fun e!1770925 () Bool)

(assert (=> d!814001 (=> (not res!1167710) (not e!1770925))))

(assert (=> d!814001 (= res!1167710 ((_ is HashMap!3954) (cache!4097 cacheUp!890)))))

(assert (=> d!814001 (= (inv!44255 cacheUp!890) e!1770925)))

(declare-fun b!2802335 () Bool)

(assert (=> b!2802335 (= e!1770925 (validCacheMapUp!401 (cache!4097 cacheUp!890)))))

(assert (= (and d!814001 res!1167710) b!2802335))

(assert (=> b!2802335 m!3231973))

(assert (=> start!270984 d!814001))

(declare-fun d!814003 () Bool)

(declare-fun isBalanced!3077 (Conc!10086) Bool)

(assert (=> d!814003 (= (inv!44253 totalInput!758) (isBalanced!3077 (c!454315 totalInput!758)))))

(declare-fun bs!516014 () Bool)

(assert (= bs!516014 d!814003))

(declare-fun m!3232079 () Bool)

(assert (=> bs!516014 m!3232079))

(assert (=> start!270984 d!814003))

(declare-fun d!814005 () Bool)

(declare-fun res!1167713 () Bool)

(declare-fun e!1770928 () Bool)

(assert (=> d!814005 (=> (not res!1167713) (not e!1770928))))

(assert (=> d!814005 (= res!1167713 ((_ is HashMap!3955) (cache!4098 cacheDown!1009)))))

(assert (=> d!814005 (= (inv!44254 cacheDown!1009) e!1770928)))

(declare-fun b!2802338 () Bool)

(declare-fun validCacheMapDown!432 (MutableMap!3955) Bool)

(assert (=> b!2802338 (= e!1770928 (validCacheMapDown!432 (cache!4098 cacheDown!1009)))))

(assert (= (and d!814005 res!1167713) b!2802338))

(declare-fun m!3232081 () Bool)

(assert (=> b!2802338 m!3232081))

(assert (=> start!270984 d!814005))

(declare-fun d!814007 () Bool)

(declare-fun list!12226 (Conc!10086) List!32685)

(assert (=> d!814007 (= (list!12225 totalInput!758) (list!12226 (c!454315 totalInput!758)))))

(declare-fun bs!516015 () Bool)

(assert (= bs!516015 d!814007))

(declare-fun m!3232083 () Bool)

(assert (=> bs!516015 m!3232083))

(assert (=> start!270984 d!814007))

(declare-fun b!2802342 () Bool)

(declare-fun e!1770929 () Bool)

(declare-fun lt!1001952 () List!32685)

(assert (=> b!2802342 (= e!1770929 (or (not (= testedSuffix!143 Nil!32585)) (= lt!1001952 testedP!183)))))

(declare-fun b!2802340 () Bool)

(declare-fun e!1770930 () List!32685)

(assert (=> b!2802340 (= e!1770930 (Cons!32585 (h!38005 testedP!183) (++!8033 (t!228855 testedP!183) testedSuffix!143)))))

(declare-fun b!2802341 () Bool)

(declare-fun res!1167714 () Bool)

(assert (=> b!2802341 (=> (not res!1167714) (not e!1770929))))

(assert (=> b!2802341 (= res!1167714 (= (size!25448 lt!1001952) (+ (size!25448 testedP!183) (size!25448 testedSuffix!143))))))

(declare-fun b!2802339 () Bool)

(assert (=> b!2802339 (= e!1770930 testedSuffix!143)))

(declare-fun d!814009 () Bool)

(assert (=> d!814009 e!1770929))

(declare-fun res!1167715 () Bool)

(assert (=> d!814009 (=> (not res!1167715) (not e!1770929))))

(assert (=> d!814009 (= res!1167715 (= (content!4547 lt!1001952) ((_ map or) (content!4547 testedP!183) (content!4547 testedSuffix!143))))))

(assert (=> d!814009 (= lt!1001952 e!1770930)))

(declare-fun c!454340 () Bool)

(assert (=> d!814009 (= c!454340 ((_ is Nil!32585) testedP!183))))

(assert (=> d!814009 (= (++!8033 testedP!183 testedSuffix!143) lt!1001952)))

(assert (= (and d!814009 c!454340) b!2802339))

(assert (= (and d!814009 (not c!454340)) b!2802340))

(assert (= (and d!814009 res!1167715) b!2802341))

(assert (= (and b!2802341 res!1167714) b!2802342))

(declare-fun m!3232085 () Bool)

(assert (=> b!2802340 m!3232085))

(declare-fun m!3232087 () Bool)

(assert (=> b!2802341 m!3232087))

(assert (=> b!2802341 m!3231957))

(declare-fun m!3232089 () Bool)

(assert (=> b!2802341 m!3232089))

(declare-fun m!3232091 () Bool)

(assert (=> d!814009 m!3232091))

(assert (=> d!814009 m!3232009))

(declare-fun m!3232093 () Bool)

(assert (=> d!814009 m!3232093))

(assert (=> start!270984 d!814009))

(declare-fun d!814011 () Bool)

(declare-fun lambda!102967 () Int)

(declare-fun forall!6716 (List!32682 Int) Bool)

(assert (=> d!814011 (= (inv!44256 setElem!24594) (forall!6716 (exprs!2947 setElem!24594) lambda!102967))))

(declare-fun bs!516016 () Bool)

(assert (= bs!516016 d!814011))

(declare-fun m!3232095 () Bool)

(assert (=> bs!516016 m!3232095))

(assert (=> setNonEmpty!24594 d!814011))

(declare-fun d!814013 () Bool)

(declare-fun lt!1001955 () Int)

(assert (=> d!814013 (= lt!1001955 (size!25448 (list!12225 totalInput!758)))))

(declare-fun size!25449 (Conc!10086) Int)

(assert (=> d!814013 (= lt!1001955 (size!25449 (c!454315 totalInput!758)))))

(assert (=> d!814013 (= (size!25447 totalInput!758) lt!1001955)))

(declare-fun bs!516017 () Bool)

(assert (= bs!516017 d!814013))

(assert (=> bs!516017 m!3231929))

(assert (=> bs!516017 m!3231929))

(declare-fun m!3232097 () Bool)

(assert (=> bs!516017 m!3232097))

(declare-fun m!3232099 () Bool)

(assert (=> bs!516017 m!3232099))

(assert (=> b!2802266 d!814013))

(declare-fun d!814015 () Bool)

(declare-fun lt!1001956 () Int)

(assert (=> d!814015 (>= lt!1001956 0)))

(declare-fun e!1770931 () Int)

(assert (=> d!814015 (= lt!1001956 e!1770931)))

(declare-fun c!454341 () Bool)

(assert (=> d!814015 (= c!454341 ((_ is Nil!32585) testedP!183))))

(assert (=> d!814015 (= (size!25448 testedP!183) lt!1001956)))

(declare-fun b!2802343 () Bool)

(assert (=> b!2802343 (= e!1770931 0)))

(declare-fun b!2802344 () Bool)

(assert (=> b!2802344 (= e!1770931 (+ 1 (size!25448 (t!228855 testedP!183))))))

(assert (= (and d!814015 c!454341) b!2802343))

(assert (= (and d!814015 (not c!454341)) b!2802344))

(declare-fun m!3232101 () Bool)

(assert (=> b!2802344 m!3232101))

(assert (=> b!2802256 d!814015))

(declare-fun d!814017 () Bool)

(assert (=> d!814017 (= (array_inv!4590 (_keys!4349 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009))))))) (bvsge (size!25445 (_keys!4349 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2802265 d!814017))

(declare-fun d!814019 () Bool)

(assert (=> d!814019 (= (array_inv!4592 (_values!4330 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009))))))) (bvsge (size!25446 (_values!4330 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2802265 d!814019))

(declare-fun d!814021 () Bool)

(assert (=> d!814021 (= (array_inv!4590 (_keys!4348 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890))))))) (bvsge (size!25445 (_keys!4348 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2802257 d!814021))

(declare-fun d!814023 () Bool)

(assert (=> d!814023 (= (array_inv!4591 (_values!4329 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890))))))) (bvsge (size!25444 (_values!4329 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2802257 d!814023))

(declare-fun d!814025 () Bool)

(declare-fun lt!1001957 () Int)

(assert (=> d!814025 (= lt!1001957 (size!25448 (list!12225 (_1!19699 lt!1001889))))))

(assert (=> d!814025 (= lt!1001957 (size!25449 (c!454315 (_1!19699 lt!1001889))))))

(assert (=> d!814025 (= (size!25447 (_1!19699 lt!1001889)) lt!1001957)))

(declare-fun bs!516018 () Bool)

(assert (= bs!516018 d!814025))

(assert (=> bs!516018 m!3231925))

(assert (=> bs!516018 m!3231925))

(declare-fun m!3232103 () Bool)

(assert (=> bs!516018 m!3232103))

(declare-fun m!3232105 () Bool)

(assert (=> bs!516018 m!3232105))

(assert (=> b!2802245 d!814025))

(declare-fun lt!1001958 () List!32685)

(declare-fun b!2802348 () Bool)

(declare-fun e!1770932 () Bool)

(assert (=> b!2802348 (= e!1770932 (or (not (= lt!1001886 Nil!32585)) (= lt!1001958 lt!1001881)))))

(declare-fun b!2802346 () Bool)

(declare-fun e!1770933 () List!32685)

(assert (=> b!2802346 (= e!1770933 (Cons!32585 (h!38005 lt!1001881) (++!8033 (t!228855 lt!1001881) lt!1001886)))))

(declare-fun b!2802347 () Bool)

(declare-fun res!1167716 () Bool)

(assert (=> b!2802347 (=> (not res!1167716) (not e!1770932))))

(assert (=> b!2802347 (= res!1167716 (= (size!25448 lt!1001958) (+ (size!25448 lt!1001881) (size!25448 lt!1001886))))))

(declare-fun b!2802345 () Bool)

(assert (=> b!2802345 (= e!1770933 lt!1001886)))

(declare-fun d!814027 () Bool)

(assert (=> d!814027 e!1770932))

(declare-fun res!1167717 () Bool)

(assert (=> d!814027 (=> (not res!1167717) (not e!1770932))))

(assert (=> d!814027 (= res!1167717 (= (content!4547 lt!1001958) ((_ map or) (content!4547 lt!1001881) (content!4547 lt!1001886))))))

(assert (=> d!814027 (= lt!1001958 e!1770933)))

(declare-fun c!454342 () Bool)

(assert (=> d!814027 (= c!454342 ((_ is Nil!32585) lt!1001881))))

(assert (=> d!814027 (= (++!8033 lt!1001881 lt!1001886) lt!1001958)))

(assert (= (and d!814027 c!454342) b!2802345))

(assert (= (and d!814027 (not c!454342)) b!2802346))

(assert (= (and d!814027 res!1167717) b!2802347))

(assert (= (and b!2802347 res!1167716) b!2802348))

(declare-fun m!3232107 () Bool)

(assert (=> b!2802346 m!3232107))

(declare-fun m!3232109 () Bool)

(assert (=> b!2802347 m!3232109))

(declare-fun m!3232111 () Bool)

(assert (=> b!2802347 m!3232111))

(declare-fun m!3232113 () Bool)

(assert (=> b!2802347 m!3232113))

(declare-fun m!3232115 () Bool)

(assert (=> d!814027 m!3232115))

(declare-fun m!3232117 () Bool)

(assert (=> d!814027 m!3232117))

(declare-fun m!3232119 () Bool)

(assert (=> d!814027 m!3232119))

(assert (=> b!2802255 d!814027))

(declare-fun d!814029 () Bool)

(assert (=> d!814029 (= (list!12225 (_2!19699 lt!1001889)) (list!12226 (c!454315 (_2!19699 lt!1001889))))))

(declare-fun bs!516019 () Bool)

(assert (= bs!516019 d!814029))

(declare-fun m!3232121 () Bool)

(assert (=> bs!516019 m!3232121))

(assert (=> b!2802255 d!814029))

(declare-fun d!814031 () Bool)

(assert (=> d!814031 (= (list!12225 (_1!19699 lt!1001889)) (list!12226 (c!454315 (_1!19699 lt!1001889))))))

(declare-fun bs!516020 () Bool)

(assert (= bs!516020 d!814031))

(declare-fun m!3232123 () Bool)

(assert (=> bs!516020 m!3232123))

(assert (=> b!2802255 d!814031))

(declare-fun d!814033 () Bool)

(declare-fun e!1770936 () Bool)

(assert (=> d!814033 e!1770936))

(declare-fun res!1167722 () Bool)

(assert (=> d!814033 (=> (not res!1167722) (not e!1770936))))

(declare-fun lt!1001964 () tuple2!33238)

(assert (=> d!814033 (= res!1167722 (isBalanced!3077 (c!454315 (_1!19699 lt!1001964))))))

(declare-datatypes ((tuple2!33240 0))(
  ( (tuple2!33241 (_1!19700 Conc!10086) (_2!19700 Conc!10086)) )
))
(declare-fun lt!1001963 () tuple2!33240)

(assert (=> d!814033 (= lt!1001964 (tuple2!33239 (BalanceConc!19787 (_1!19700 lt!1001963)) (BalanceConc!19787 (_2!19700 lt!1001963))))))

(declare-fun splitAt!205 (Conc!10086 Int) tuple2!33240)

(assert (=> d!814033 (= lt!1001963 (splitAt!205 (c!454315 totalInput!758) testedPSize!143))))

(assert (=> d!814033 (isBalanced!3077 (c!454315 totalInput!758))))

(assert (=> d!814033 (= (splitAt!204 totalInput!758 testedPSize!143) lt!1001964)))

(declare-fun b!2802353 () Bool)

(declare-fun res!1167723 () Bool)

(assert (=> b!2802353 (=> (not res!1167723) (not e!1770936))))

(assert (=> b!2802353 (= res!1167723 (isBalanced!3077 (c!454315 (_2!19699 lt!1001964))))))

(declare-fun b!2802354 () Bool)

(declare-datatypes ((tuple2!33242 0))(
  ( (tuple2!33243 (_1!19701 List!32685) (_2!19701 List!32685)) )
))
(declare-fun splitAtIndex!77 (List!32685 Int) tuple2!33242)

(assert (=> b!2802354 (= e!1770936 (= (tuple2!33243 (list!12225 (_1!19699 lt!1001964)) (list!12225 (_2!19699 lt!1001964))) (splitAtIndex!77 (list!12225 totalInput!758) testedPSize!143)))))

(assert (= (and d!814033 res!1167722) b!2802353))

(assert (= (and b!2802353 res!1167723) b!2802354))

(declare-fun m!3232125 () Bool)

(assert (=> d!814033 m!3232125))

(declare-fun m!3232127 () Bool)

(assert (=> d!814033 m!3232127))

(assert (=> d!814033 m!3232079))

(declare-fun m!3232129 () Bool)

(assert (=> b!2802353 m!3232129))

(declare-fun m!3232131 () Bool)

(assert (=> b!2802354 m!3232131))

(declare-fun m!3232133 () Bool)

(assert (=> b!2802354 m!3232133))

(assert (=> b!2802354 m!3231929))

(assert (=> b!2802354 m!3231929))

(declare-fun m!3232135 () Bool)

(assert (=> b!2802354 m!3232135))

(assert (=> b!2802255 d!814033))

(declare-fun d!814035 () Bool)

(assert (=> d!814035 (isPrefix!2644 lt!1001896 lt!1001896)))

(declare-fun lt!1001967 () Unit!46693)

(declare-fun choose!16519 (List!32685 List!32685) Unit!46693)

(assert (=> d!814035 (= lt!1001967 (choose!16519 lt!1001896 lt!1001896))))

(assert (=> d!814035 (= (lemmaIsPrefixRefl!1724 lt!1001896 lt!1001896) lt!1001967)))

(declare-fun bs!516021 () Bool)

(assert (= bs!516021 d!814035))

(assert (=> bs!516021 m!3231967))

(declare-fun m!3232137 () Bool)

(assert (=> bs!516021 m!3232137))

(assert (=> b!2802264 d!814035))

(declare-fun d!814037 () Bool)

(declare-fun e!1770937 () Bool)

(assert (=> d!814037 e!1770937))

(declare-fun res!1167726 () Bool)

(assert (=> d!814037 (=> res!1167726 e!1770937)))

(declare-fun lt!1001968 () Bool)

(assert (=> d!814037 (= res!1167726 (not lt!1001968))))

(declare-fun e!1770938 () Bool)

(assert (=> d!814037 (= lt!1001968 e!1770938)))

(declare-fun res!1167725 () Bool)

(assert (=> d!814037 (=> res!1167725 e!1770938)))

(assert (=> d!814037 (= res!1167725 ((_ is Nil!32585) lt!1001896))))

(assert (=> d!814037 (= (isPrefix!2644 lt!1001896 lt!1001896) lt!1001968)))

(declare-fun b!2802357 () Bool)

(declare-fun e!1770939 () Bool)

(assert (=> b!2802357 (= e!1770939 (isPrefix!2644 (tail!4437 lt!1001896) (tail!4437 lt!1001896)))))

(declare-fun b!2802356 () Bool)

(declare-fun res!1167727 () Bool)

(assert (=> b!2802356 (=> (not res!1167727) (not e!1770939))))

(assert (=> b!2802356 (= res!1167727 (= (head!6210 lt!1001896) (head!6210 lt!1001896)))))

(declare-fun b!2802358 () Bool)

(assert (=> b!2802358 (= e!1770937 (>= (size!25448 lt!1001896) (size!25448 lt!1001896)))))

(declare-fun b!2802355 () Bool)

(assert (=> b!2802355 (= e!1770938 e!1770939)))

(declare-fun res!1167724 () Bool)

(assert (=> b!2802355 (=> (not res!1167724) (not e!1770939))))

(assert (=> b!2802355 (= res!1167724 (not ((_ is Nil!32585) lt!1001896)))))

(assert (= (and d!814037 (not res!1167725)) b!2802355))

(assert (= (and b!2802355 res!1167724) b!2802356))

(assert (= (and b!2802356 res!1167727) b!2802357))

(assert (= (and d!814037 (not res!1167726)) b!2802358))

(assert (=> b!2802357 m!3231977))

(assert (=> b!2802357 m!3231977))

(assert (=> b!2802357 m!3231977))

(assert (=> b!2802357 m!3231977))

(declare-fun m!3232139 () Bool)

(assert (=> b!2802357 m!3232139))

(assert (=> b!2802356 m!3231983))

(assert (=> b!2802356 m!3231983))

(assert (=> b!2802358 m!3231949))

(assert (=> b!2802358 m!3231949))

(assert (=> b!2802264 d!814037))

(declare-fun d!814039 () Bool)

(assert (=> d!814039 (= lt!1001896 testedP!183)))

(declare-fun lt!1001971 () Unit!46693)

(declare-fun choose!16520 (List!32685 List!32685 List!32685) Unit!46693)

(assert (=> d!814039 (= lt!1001971 (choose!16520 lt!1001896 testedP!183 lt!1001896))))

(assert (=> d!814039 (isPrefix!2644 lt!1001896 lt!1001896)))

(assert (=> d!814039 (= (lemmaIsPrefixSameLengthThenSameList!500 lt!1001896 testedP!183 lt!1001896) lt!1001971)))

(declare-fun bs!516022 () Bool)

(assert (= bs!516022 d!814039))

(declare-fun m!3232141 () Bool)

(assert (=> bs!516022 m!3232141))

(assert (=> bs!516022 m!3231967))

(assert (=> b!2802264 d!814039))

(declare-fun d!814041 () Bool)

(assert (=> d!814041 (= (valid!3170 cacheDown!1009) (validCacheMapDown!432 (cache!4098 cacheDown!1009)))))

(declare-fun bs!516023 () Bool)

(assert (= bs!516023 d!814041))

(assert (=> bs!516023 m!3232081))

(assert (=> b!2802272 d!814041))

(declare-fun d!814043 () Bool)

(assert (=> d!814043 (and (= lt!1001881 testedP!183) (= lt!1001886 testedSuffix!143))))

(declare-fun lt!1001974 () Unit!46693)

(declare-fun choose!16521 (List!32685 List!32685 List!32685 List!32685) Unit!46693)

(assert (=> d!814043 (= lt!1001974 (choose!16521 lt!1001881 lt!1001886 testedP!183 testedSuffix!143))))

(assert (=> d!814043 (= (++!8033 lt!1001881 lt!1001886) (++!8033 testedP!183 testedSuffix!143))))

(assert (=> d!814043 (= (lemmaConcatSameAndSameSizesThenSameLists!391 lt!1001881 lt!1001886 testedP!183 testedSuffix!143) lt!1001974)))

(declare-fun bs!516024 () Bool)

(assert (= bs!516024 d!814043))

(declare-fun m!3232143 () Bool)

(assert (=> bs!516024 m!3232143))

(assert (=> bs!516024 m!3231921))

(assert (=> bs!516024 m!3231937))

(assert (=> b!2802244 d!814043))

(declare-fun d!814045 () Bool)

(declare-fun lt!1001977 () C!16616)

(assert (=> d!814045 (= lt!1001977 (apply!7624 (list!12225 totalInput!758) testedPSize!143))))

(declare-fun apply!7625 (Conc!10086 Int) C!16616)

(assert (=> d!814045 (= lt!1001977 (apply!7625 (c!454315 totalInput!758) testedPSize!143))))

(declare-fun e!1770942 () Bool)

(assert (=> d!814045 e!1770942))

(declare-fun res!1167730 () Bool)

(assert (=> d!814045 (=> (not res!1167730) (not e!1770942))))

(assert (=> d!814045 (= res!1167730 (<= 0 testedPSize!143))))

(assert (=> d!814045 (= (apply!7623 totalInput!758 testedPSize!143) lt!1001977)))

(declare-fun b!2802361 () Bool)

(assert (=> b!2802361 (= e!1770942 (< testedPSize!143 (size!25447 totalInput!758)))))

(assert (= (and d!814045 res!1167730) b!2802361))

(assert (=> d!814045 m!3231929))

(assert (=> d!814045 m!3231929))

(declare-fun m!3232145 () Bool)

(assert (=> d!814045 m!3232145))

(declare-fun m!3232147 () Bool)

(assert (=> d!814045 m!3232147))

(assert (=> b!2802361 m!3231953))

(assert (=> b!2802244 d!814045))

(declare-fun d!814047 () Bool)

(assert (=> d!814047 (= (head!6210 (drop!1757 lt!1001896 testedPSize!143)) (h!38005 (drop!1757 lt!1001896 testedPSize!143)))))

(assert (=> b!2802244 d!814047))

(declare-fun d!814049 () Bool)

(assert (=> d!814049 (= (head!6210 testedSuffix!143) (h!38005 testedSuffix!143))))

(assert (=> b!2802244 d!814049))

(declare-fun b!2802380 () Bool)

(declare-fun e!1770953 () List!32685)

(assert (=> b!2802380 (= e!1770953 Nil!32585)))

(declare-fun b!2802381 () Bool)

(declare-fun e!1770955 () Int)

(declare-fun e!1770957 () Int)

(assert (=> b!2802381 (= e!1770955 e!1770957)))

(declare-fun c!454353 () Bool)

(declare-fun call!182892 () Int)

(assert (=> b!2802381 (= c!454353 (>= testedPSize!143 call!182892))))

(declare-fun b!2802382 () Bool)

(declare-fun e!1770956 () List!32685)

(assert (=> b!2802382 (= e!1770956 (drop!1757 (t!228855 lt!1001896) (- testedPSize!143 1)))))

(declare-fun b!2802383 () Bool)

(assert (=> b!2802383 (= e!1770957 0)))

(declare-fun b!2802384 () Bool)

(assert (=> b!2802384 (= e!1770956 lt!1001896)))

(declare-fun d!814051 () Bool)

(declare-fun e!1770954 () Bool)

(assert (=> d!814051 e!1770954))

(declare-fun res!1167733 () Bool)

(assert (=> d!814051 (=> (not res!1167733) (not e!1770954))))

(declare-fun lt!1001980 () List!32685)

(assert (=> d!814051 (= res!1167733 (= ((_ map implies) (content!4547 lt!1001980) (content!4547 lt!1001896)) ((as const (InoxSet C!16616)) true)))))

(assert (=> d!814051 (= lt!1001980 e!1770953)))

(declare-fun c!454351 () Bool)

(assert (=> d!814051 (= c!454351 ((_ is Nil!32585) lt!1001896))))

(assert (=> d!814051 (= (drop!1757 lt!1001896 testedPSize!143) lt!1001980)))

(declare-fun b!2802385 () Bool)

(assert (=> b!2802385 (= e!1770955 call!182892)))

(declare-fun b!2802386 () Bool)

(assert (=> b!2802386 (= e!1770953 e!1770956)))

(declare-fun c!454352 () Bool)

(assert (=> b!2802386 (= c!454352 (<= testedPSize!143 0))))

(declare-fun b!2802387 () Bool)

(assert (=> b!2802387 (= e!1770957 (- call!182892 testedPSize!143))))

(declare-fun bm!182887 () Bool)

(assert (=> bm!182887 (= call!182892 (size!25448 lt!1001896))))

(declare-fun b!2802388 () Bool)

(assert (=> b!2802388 (= e!1770954 (= (size!25448 lt!1001980) e!1770955))))

(declare-fun c!454354 () Bool)

(assert (=> b!2802388 (= c!454354 (<= testedPSize!143 0))))

(assert (= (and d!814051 c!454351) b!2802380))

(assert (= (and d!814051 (not c!454351)) b!2802386))

(assert (= (and b!2802386 c!454352) b!2802384))

(assert (= (and b!2802386 (not c!454352)) b!2802382))

(assert (= (and d!814051 res!1167733) b!2802388))

(assert (= (and b!2802388 c!454354) b!2802385))

(assert (= (and b!2802388 (not c!454354)) b!2802381))

(assert (= (and b!2802381 c!454353) b!2802383))

(assert (= (and b!2802381 (not c!454353)) b!2802387))

(assert (= (or b!2802385 b!2802381 b!2802387) bm!182887))

(declare-fun m!3232149 () Bool)

(assert (=> b!2802382 m!3232149))

(declare-fun m!3232151 () Bool)

(assert (=> d!814051 m!3232151))

(declare-fun m!3232153 () Bool)

(assert (=> d!814051 m!3232153))

(assert (=> bm!182887 m!3231949))

(declare-fun m!3232155 () Bool)

(assert (=> b!2802388 m!3232155))

(assert (=> b!2802244 d!814051))

(declare-fun d!814053 () Bool)

(assert (=> d!814053 (= (head!6210 (drop!1757 lt!1001896 testedPSize!143)) (apply!7624 lt!1001896 testedPSize!143))))

(declare-fun lt!1001983 () Unit!46693)

(declare-fun choose!16522 (List!32685 Int) Unit!46693)

(assert (=> d!814053 (= lt!1001983 (choose!16522 lt!1001896 testedPSize!143))))

(declare-fun e!1770960 () Bool)

(assert (=> d!814053 e!1770960))

(declare-fun res!1167736 () Bool)

(assert (=> d!814053 (=> (not res!1167736) (not e!1770960))))

(assert (=> d!814053 (= res!1167736 (>= testedPSize!143 0))))

(assert (=> d!814053 (= (lemmaDropApply!961 lt!1001896 testedPSize!143) lt!1001983)))

(declare-fun b!2802391 () Bool)

(assert (=> b!2802391 (= e!1770960 (< testedPSize!143 (size!25448 lt!1001896)))))

(assert (= (and d!814053 res!1167736) b!2802391))

(assert (=> d!814053 m!3231891))

(assert (=> d!814053 m!3231891))

(assert (=> d!814053 m!3231899))

(assert (=> d!814053 m!3231893))

(declare-fun m!3232157 () Bool)

(assert (=> d!814053 m!3232157))

(assert (=> b!2802391 m!3231949))

(assert (=> b!2802244 d!814053))

(declare-fun d!814055 () Bool)

(declare-fun lt!1001986 () C!16616)

(declare-fun contains!6019 (List!32685 C!16616) Bool)

(assert (=> d!814055 (contains!6019 lt!1001896 lt!1001986)))

(declare-fun e!1770965 () C!16616)

(assert (=> d!814055 (= lt!1001986 e!1770965)))

(declare-fun c!454357 () Bool)

(assert (=> d!814055 (= c!454357 (= testedPSize!143 0))))

(declare-fun e!1770966 () Bool)

(assert (=> d!814055 e!1770966))

(declare-fun res!1167739 () Bool)

(assert (=> d!814055 (=> (not res!1167739) (not e!1770966))))

(assert (=> d!814055 (= res!1167739 (<= 0 testedPSize!143))))

(assert (=> d!814055 (= (apply!7624 lt!1001896 testedPSize!143) lt!1001986)))

(declare-fun b!2802398 () Bool)

(assert (=> b!2802398 (= e!1770966 (< testedPSize!143 (size!25448 lt!1001896)))))

(declare-fun b!2802399 () Bool)

(assert (=> b!2802399 (= e!1770965 (head!6210 lt!1001896))))

(declare-fun b!2802400 () Bool)

(assert (=> b!2802400 (= e!1770965 (apply!7624 (tail!4437 lt!1001896) (- testedPSize!143 1)))))

(assert (= (and d!814055 res!1167739) b!2802398))

(assert (= (and d!814055 c!454357) b!2802399))

(assert (= (and d!814055 (not c!454357)) b!2802400))

(declare-fun m!3232159 () Bool)

(assert (=> d!814055 m!3232159))

(assert (=> b!2802398 m!3231949))

(assert (=> b!2802399 m!3231983))

(assert (=> b!2802400 m!3231977))

(assert (=> b!2802400 m!3231977))

(declare-fun m!3232161 () Bool)

(assert (=> b!2802400 m!3232161))

(assert (=> b!2802244 d!814055))

(declare-fun d!814057 () Bool)

(declare-fun c!454360 () Bool)

(assert (=> d!814057 (= c!454360 ((_ is Node!10086) (c!454315 totalInput!758)))))

(declare-fun e!1770971 () Bool)

(assert (=> d!814057 (= (inv!44257 (c!454315 totalInput!758)) e!1770971)))

(declare-fun b!2802407 () Bool)

(declare-fun inv!44258 (Conc!10086) Bool)

(assert (=> b!2802407 (= e!1770971 (inv!44258 (c!454315 totalInput!758)))))

(declare-fun b!2802408 () Bool)

(declare-fun e!1770972 () Bool)

(assert (=> b!2802408 (= e!1770971 e!1770972)))

(declare-fun res!1167742 () Bool)

(assert (=> b!2802408 (= res!1167742 (not ((_ is Leaf!15369) (c!454315 totalInput!758))))))

(assert (=> b!2802408 (=> res!1167742 e!1770972)))

(declare-fun b!2802409 () Bool)

(declare-fun inv!44259 (Conc!10086) Bool)

(assert (=> b!2802409 (= e!1770972 (inv!44259 (c!454315 totalInput!758)))))

(assert (= (and d!814057 c!454360) b!2802407))

(assert (= (and d!814057 (not c!454360)) b!2802408))

(assert (= (and b!2802408 (not res!1167742)) b!2802409))

(declare-fun m!3232163 () Bool)

(assert (=> b!2802407 m!3232163))

(declare-fun m!3232165 () Bool)

(assert (=> b!2802409 m!3232165))

(assert (=> b!2802263 d!814057))

(declare-fun d!814059 () Bool)

(declare-fun lt!1001987 () Int)

(assert (=> d!814059 (>= lt!1001987 0)))

(declare-fun e!1770973 () Int)

(assert (=> d!814059 (= lt!1001987 e!1770973)))

(declare-fun c!454361 () Bool)

(assert (=> d!814059 (= c!454361 ((_ is Nil!32585) lt!1001893))))

(assert (=> d!814059 (= (size!25448 lt!1001893) lt!1001987)))

(declare-fun b!2802410 () Bool)

(assert (=> b!2802410 (= e!1770973 0)))

(declare-fun b!2802411 () Bool)

(assert (=> b!2802411 (= e!1770973 (+ 1 (size!25448 (t!228855 lt!1001893))))))

(assert (= (and d!814059 c!454361) b!2802410))

(assert (= (and d!814059 (not c!454361)) b!2802411))

(declare-fun m!3232167 () Bool)

(assert (=> b!2802411 m!3232167))

(assert (=> b!2802252 d!814059))

(declare-fun d!814061 () Bool)

(declare-fun e!1770976 () Bool)

(assert (=> d!814061 e!1770976))

(declare-fun res!1167747 () Bool)

(assert (=> d!814061 (=> (not res!1167747) (not e!1770976))))

(declare-fun lt!1001990 () tuple3!5218)

(declare-fun derivationStepZipper!381 ((InoxSet Context!4894) C!16616) (InoxSet Context!4894))

(assert (=> d!814061 (= res!1167747 (= (_1!19698 lt!1001990) (derivationStepZipper!381 z!3684 lt!1001879)))))

(declare-fun choose!16523 ((InoxSet Context!4894) C!16616 CacheUp!2656 CacheDown!2784) tuple3!5218)

(assert (=> d!814061 (= lt!1001990 (choose!16523 z!3684 lt!1001879 cacheUp!890 cacheDown!1009))))

(assert (=> d!814061 (= (derivationStepZipperMem!119 z!3684 lt!1001879 cacheUp!890 cacheDown!1009) lt!1001990)))

(declare-fun b!2802416 () Bool)

(declare-fun res!1167748 () Bool)

(assert (=> b!2802416 (=> (not res!1167748) (not e!1770976))))

(assert (=> b!2802416 (= res!1167748 (valid!3169 (_2!19698 lt!1001990)))))

(declare-fun b!2802417 () Bool)

(assert (=> b!2802417 (= e!1770976 (valid!3170 (_3!3079 lt!1001990)))))

(assert (= (and d!814061 res!1167747) b!2802416))

(assert (= (and b!2802416 res!1167748) b!2802417))

(declare-fun m!3232169 () Bool)

(assert (=> d!814061 m!3232169))

(declare-fun m!3232171 () Bool)

(assert (=> d!814061 m!3232171))

(declare-fun m!3232173 () Bool)

(assert (=> b!2802416 m!3232173))

(declare-fun m!3232175 () Bool)

(assert (=> b!2802417 m!3232175))

(assert (=> b!2802252 d!814061))

(declare-fun b!2802426 () Bool)

(declare-fun e!1770985 () Bool)

(declare-fun tp!893230 () Bool)

(assert (=> b!2802426 (= e!1770985 tp!893230)))

(declare-fun setIsEmpty!24597 () Bool)

(declare-fun setRes!24597 () Bool)

(assert (=> setIsEmpty!24597 setRes!24597))

(declare-fun b!2802427 () Bool)

(declare-fun e!1770983 () Bool)

(declare-fun e!1770984 () Bool)

(declare-fun tp!893229 () Bool)

(assert (=> b!2802427 (= e!1770984 (and (inv!44256 (_1!19694 (_1!19695 (h!38003 mapDefault!18398)))) e!1770983 tp_is_empty!14271 setRes!24597 tp!893229))))

(declare-fun condSetEmpty!24597 () Bool)

(assert (=> b!2802427 (= condSetEmpty!24597 (= (_2!19695 (h!38003 mapDefault!18398)) ((as const (Array Context!4894 Bool)) false)))))

(declare-fun b!2802428 () Bool)

(declare-fun tp!893231 () Bool)

(assert (=> b!2802428 (= e!1770983 tp!893231)))

(declare-fun setElem!24597 () Context!4894)

(declare-fun setNonEmpty!24597 () Bool)

(declare-fun tp!893228 () Bool)

(assert (=> setNonEmpty!24597 (= setRes!24597 (and tp!893228 (inv!44256 setElem!24597) e!1770985))))

(declare-fun setRest!24597 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24597 (= (_2!19695 (h!38003 mapDefault!18398)) ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24597 true) setRest!24597))))

(assert (=> b!2802242 (= tp!893208 e!1770984)))

(assert (= b!2802427 b!2802428))

(assert (= (and b!2802427 condSetEmpty!24597) setIsEmpty!24597))

(assert (= (and b!2802427 (not condSetEmpty!24597)) setNonEmpty!24597))

(assert (= setNonEmpty!24597 b!2802426))

(assert (= (and b!2802242 ((_ is Cons!32583) mapDefault!18398)) b!2802427))

(declare-fun m!3232177 () Bool)

(assert (=> b!2802427 m!3232177))

(declare-fun m!3232179 () Bool)

(assert (=> setNonEmpty!24597 m!3232179))

(declare-fun setRes!24603 () Bool)

(declare-fun mapDefault!18401 () List!32684)

(declare-fun b!2802443 () Bool)

(declare-fun e!1771003 () Bool)

(declare-fun e!1771000 () Bool)

(declare-fun tp!893261 () Bool)

(declare-fun tp!893258 () Bool)

(assert (=> b!2802443 (= e!1771000 (and tp!893258 (inv!44256 (_2!19696 (_1!19697 (h!38004 mapDefault!18401)))) e!1771003 tp_is_empty!14271 setRes!24603 tp!893261))))

(declare-fun condSetEmpty!24602 () Bool)

(assert (=> b!2802443 (= condSetEmpty!24602 (= (_2!19697 (h!38004 mapDefault!18401)) ((as const (Array Context!4894 Bool)) false)))))

(declare-fun tp!893255 () Bool)

(declare-fun setRes!24602 () Bool)

(declare-fun e!1771002 () Bool)

(declare-fun setNonEmpty!24602 () Bool)

(declare-fun setElem!24602 () Context!4894)

(assert (=> setNonEmpty!24602 (= setRes!24602 (and tp!893255 (inv!44256 setElem!24602) e!1771002))))

(declare-fun mapValue!18401 () List!32684)

(declare-fun setRest!24603 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24602 (= (_2!19697 (h!38004 mapValue!18401)) ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24602 true) setRest!24603))))

(declare-fun setNonEmpty!24603 () Bool)

(declare-fun e!1770998 () Bool)

(declare-fun setElem!24603 () Context!4894)

(declare-fun tp!893257 () Bool)

(assert (=> setNonEmpty!24603 (= setRes!24603 (and tp!893257 (inv!44256 setElem!24603) e!1770998))))

(declare-fun setRest!24602 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24603 (= (_2!19697 (h!38004 mapDefault!18401)) ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24603 true) setRest!24602))))

(declare-fun setIsEmpty!24602 () Bool)

(assert (=> setIsEmpty!24602 setRes!24602))

(declare-fun mapNonEmpty!18401 () Bool)

(declare-fun mapRes!18401 () Bool)

(declare-fun tp!893260 () Bool)

(declare-fun e!1771001 () Bool)

(assert (=> mapNonEmpty!18401 (= mapRes!18401 (and tp!893260 e!1771001))))

(declare-fun mapRest!18401 () (Array (_ BitVec 32) List!32684))

(declare-fun mapKey!18401 () (_ BitVec 32))

(assert (=> mapNonEmpty!18401 (= mapRest!18397 (store mapRest!18401 mapKey!18401 mapValue!18401))))

(declare-fun setIsEmpty!24603 () Bool)

(assert (=> setIsEmpty!24603 setRes!24603))

(declare-fun mapIsEmpty!18401 () Bool)

(assert (=> mapIsEmpty!18401 mapRes!18401))

(declare-fun b!2802445 () Bool)

(declare-fun tp!893264 () Bool)

(assert (=> b!2802445 (= e!1771002 tp!893264)))

(declare-fun b!2802446 () Bool)

(declare-fun e!1770999 () Bool)

(declare-fun tp!893262 () Bool)

(assert (=> b!2802446 (= e!1770999 tp!893262)))

(declare-fun b!2802447 () Bool)

(declare-fun tp!893263 () Bool)

(assert (=> b!2802447 (= e!1770998 tp!893263)))

(declare-fun b!2802448 () Bool)

(declare-fun tp!893256 () Bool)

(assert (=> b!2802448 (= e!1771003 tp!893256)))

(declare-fun tp!893254 () Bool)

(declare-fun tp!893259 () Bool)

(declare-fun b!2802444 () Bool)

(assert (=> b!2802444 (= e!1771001 (and tp!893259 (inv!44256 (_2!19696 (_1!19697 (h!38004 mapValue!18401)))) e!1770999 tp_is_empty!14271 setRes!24602 tp!893254))))

(declare-fun condSetEmpty!24603 () Bool)

(assert (=> b!2802444 (= condSetEmpty!24603 (= (_2!19697 (h!38004 mapValue!18401)) ((as const (Array Context!4894 Bool)) false)))))

(declare-fun condMapEmpty!18401 () Bool)

(assert (=> mapNonEmpty!18398 (= condMapEmpty!18401 (= mapRest!18397 ((as const (Array (_ BitVec 32) List!32684)) mapDefault!18401)))))

(assert (=> mapNonEmpty!18398 (= tp!893207 (and e!1771000 mapRes!18401))))

(assert (= (and mapNonEmpty!18398 condMapEmpty!18401) mapIsEmpty!18401))

(assert (= (and mapNonEmpty!18398 (not condMapEmpty!18401)) mapNonEmpty!18401))

(assert (= b!2802444 b!2802446))

(assert (= (and b!2802444 condSetEmpty!24603) setIsEmpty!24602))

(assert (= (and b!2802444 (not condSetEmpty!24603)) setNonEmpty!24602))

(assert (= setNonEmpty!24602 b!2802445))

(assert (= (and mapNonEmpty!18401 ((_ is Cons!32584) mapValue!18401)) b!2802444))

(assert (= b!2802443 b!2802448))

(assert (= (and b!2802443 condSetEmpty!24602) setIsEmpty!24603))

(assert (= (and b!2802443 (not condSetEmpty!24602)) setNonEmpty!24603))

(assert (= setNonEmpty!24603 b!2802447))

(assert (= (and mapNonEmpty!18398 ((_ is Cons!32584) mapDefault!18401)) b!2802443))

(declare-fun m!3232181 () Bool)

(assert (=> setNonEmpty!24602 m!3232181))

(declare-fun m!3232183 () Bool)

(assert (=> setNonEmpty!24603 m!3232183))

(declare-fun m!3232185 () Bool)

(assert (=> b!2802443 m!3232185))

(declare-fun m!3232187 () Bool)

(assert (=> b!2802444 m!3232187))

(declare-fun m!3232189 () Bool)

(assert (=> mapNonEmpty!18401 m!3232189))

(declare-fun b!2802457 () Bool)

(declare-fun e!1771010 () Bool)

(declare-fun tp!893279 () Bool)

(assert (=> b!2802457 (= e!1771010 tp!893279)))

(declare-fun e!1771012 () Bool)

(declare-fun setElem!24606 () Context!4894)

(declare-fun setRes!24606 () Bool)

(declare-fun tp!893277 () Bool)

(declare-fun setNonEmpty!24606 () Bool)

(assert (=> setNonEmpty!24606 (= setRes!24606 (and tp!893277 (inv!44256 setElem!24606) e!1771012))))

(declare-fun setRest!24606 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24606 (= (_2!19697 (h!38004 mapValue!18398)) ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24606 true) setRest!24606))))

(declare-fun setIsEmpty!24606 () Bool)

(assert (=> setIsEmpty!24606 setRes!24606))

(declare-fun tp!893275 () Bool)

(declare-fun b!2802458 () Bool)

(declare-fun tp!893276 () Bool)

(declare-fun e!1771011 () Bool)

(assert (=> b!2802458 (= e!1771011 (and tp!893275 (inv!44256 (_2!19696 (_1!19697 (h!38004 mapValue!18398)))) e!1771010 tp_is_empty!14271 setRes!24606 tp!893276))))

(declare-fun condSetEmpty!24606 () Bool)

(assert (=> b!2802458 (= condSetEmpty!24606 (= (_2!19697 (h!38004 mapValue!18398)) ((as const (Array Context!4894 Bool)) false)))))

(declare-fun b!2802459 () Bool)

(declare-fun tp!893278 () Bool)

(assert (=> b!2802459 (= e!1771012 tp!893278)))

(assert (=> mapNonEmpty!18398 (= tp!893212 e!1771011)))

(assert (= b!2802458 b!2802457))

(assert (= (and b!2802458 condSetEmpty!24606) setIsEmpty!24606))

(assert (= (and b!2802458 (not condSetEmpty!24606)) setNonEmpty!24606))

(assert (= setNonEmpty!24606 b!2802459))

(assert (= (and mapNonEmpty!18398 ((_ is Cons!32584) mapValue!18398)) b!2802458))

(declare-fun m!3232191 () Bool)

(assert (=> setNonEmpty!24606 m!3232191))

(declare-fun m!3232193 () Bool)

(assert (=> b!2802458 m!3232193))

(declare-fun b!2802464 () Bool)

(declare-fun e!1771015 () Bool)

(declare-fun tp!893282 () Bool)

(assert (=> b!2802464 (= e!1771015 (and tp_is_empty!14271 tp!893282))))

(assert (=> b!2802267 (= tp!893203 e!1771015)))

(assert (= (and b!2802267 ((_ is Cons!32585) (t!228855 testedSuffix!143))) b!2802464))

(declare-fun condSetEmpty!24609 () Bool)

(assert (=> setNonEmpty!24594 (= condSetEmpty!24609 (= setRest!24594 ((as const (Array Context!4894 Bool)) false)))))

(declare-fun setRes!24609 () Bool)

(assert (=> setNonEmpty!24594 (= tp!893210 setRes!24609)))

(declare-fun setIsEmpty!24609 () Bool)

(assert (=> setIsEmpty!24609 setRes!24609))

(declare-fun setNonEmpty!24609 () Bool)

(declare-fun e!1771018 () Bool)

(declare-fun setElem!24609 () Context!4894)

(declare-fun tp!893287 () Bool)

(assert (=> setNonEmpty!24609 (= setRes!24609 (and tp!893287 (inv!44256 setElem!24609) e!1771018))))

(declare-fun setRest!24609 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24609 (= setRest!24594 ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24609 true) setRest!24609))))

(declare-fun b!2802469 () Bool)

(declare-fun tp!893288 () Bool)

(assert (=> b!2802469 (= e!1771018 tp!893288)))

(assert (= (and setNonEmpty!24594 condSetEmpty!24609) setIsEmpty!24609))

(assert (= (and setNonEmpty!24594 (not condSetEmpty!24609)) setNonEmpty!24609))

(assert (= setNonEmpty!24609 b!2802469))

(declare-fun m!3232195 () Bool)

(assert (=> setNonEmpty!24609 m!3232195))

(declare-fun b!2802470 () Bool)

(declare-fun e!1771019 () Bool)

(declare-fun tp!893293 () Bool)

(assert (=> b!2802470 (= e!1771019 tp!893293)))

(declare-fun setRes!24610 () Bool)

(declare-fun setNonEmpty!24610 () Bool)

(declare-fun setElem!24610 () Context!4894)

(declare-fun e!1771021 () Bool)

(declare-fun tp!893291 () Bool)

(assert (=> setNonEmpty!24610 (= setRes!24610 (and tp!893291 (inv!44256 setElem!24610) e!1771021))))

(declare-fun setRest!24610 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24610 (= (_2!19697 (h!38004 (zeroValue!4308 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24610 true) setRest!24610))))

(declare-fun setIsEmpty!24610 () Bool)

(assert (=> setIsEmpty!24610 setRes!24610))

(declare-fun tp!893290 () Bool)

(declare-fun tp!893289 () Bool)

(declare-fun e!1771020 () Bool)

(declare-fun b!2802471 () Bool)

(assert (=> b!2802471 (= e!1771020 (and tp!893289 (inv!44256 (_2!19696 (_1!19697 (h!38004 (zeroValue!4308 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009)))))))))) e!1771019 tp_is_empty!14271 setRes!24610 tp!893290))))

(declare-fun condSetEmpty!24610 () Bool)

(assert (=> b!2802471 (= condSetEmpty!24610 (= (_2!19697 (h!38004 (zeroValue!4308 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009)))))))) ((as const (Array Context!4894 Bool)) false)))))

(declare-fun b!2802472 () Bool)

(declare-fun tp!893292 () Bool)

(assert (=> b!2802472 (= e!1771021 tp!893292)))

(assert (=> b!2802265 (= tp!893201 e!1771020)))

(assert (= b!2802471 b!2802470))

(assert (= (and b!2802471 condSetEmpty!24610) setIsEmpty!24610))

(assert (= (and b!2802471 (not condSetEmpty!24610)) setNonEmpty!24610))

(assert (= setNonEmpty!24610 b!2802472))

(assert (= (and b!2802265 ((_ is Cons!32584) (zeroValue!4308 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009)))))))) b!2802471))

(declare-fun m!3232197 () Bool)

(assert (=> setNonEmpty!24610 m!3232197))

(declare-fun m!3232199 () Bool)

(assert (=> b!2802471 m!3232199))

(declare-fun b!2802473 () Bool)

(declare-fun e!1771022 () Bool)

(declare-fun tp!893298 () Bool)

(assert (=> b!2802473 (= e!1771022 tp!893298)))

(declare-fun setElem!24611 () Context!4894)

(declare-fun setNonEmpty!24611 () Bool)

(declare-fun tp!893296 () Bool)

(declare-fun setRes!24611 () Bool)

(declare-fun e!1771024 () Bool)

(assert (=> setNonEmpty!24611 (= setRes!24611 (and tp!893296 (inv!44256 setElem!24611) e!1771024))))

(declare-fun setRest!24611 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24611 (= (_2!19697 (h!38004 (minValue!4308 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24611 true) setRest!24611))))

(declare-fun setIsEmpty!24611 () Bool)

(assert (=> setIsEmpty!24611 setRes!24611))

(declare-fun tp!893294 () Bool)

(declare-fun e!1771023 () Bool)

(declare-fun b!2802474 () Bool)

(declare-fun tp!893295 () Bool)

(assert (=> b!2802474 (= e!1771023 (and tp!893294 (inv!44256 (_2!19696 (_1!19697 (h!38004 (minValue!4308 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009)))))))))) e!1771022 tp_is_empty!14271 setRes!24611 tp!893295))))

(declare-fun condSetEmpty!24611 () Bool)

(assert (=> b!2802474 (= condSetEmpty!24611 (= (_2!19697 (h!38004 (minValue!4308 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009)))))))) ((as const (Array Context!4894 Bool)) false)))))

(declare-fun b!2802475 () Bool)

(declare-fun tp!893297 () Bool)

(assert (=> b!2802475 (= e!1771024 tp!893297)))

(assert (=> b!2802265 (= tp!893217 e!1771023)))

(assert (= b!2802474 b!2802473))

(assert (= (and b!2802474 condSetEmpty!24611) setIsEmpty!24611))

(assert (= (and b!2802474 (not condSetEmpty!24611)) setNonEmpty!24611))

(assert (= setNonEmpty!24611 b!2802475))

(assert (= (and b!2802265 ((_ is Cons!32584) (minValue!4308 (v!34187 (underlying!8301 (v!34188 (underlying!8302 (cache!4098 cacheDown!1009)))))))) b!2802474))

(declare-fun m!3232201 () Bool)

(assert (=> setNonEmpty!24611 m!3232201))

(declare-fun m!3232203 () Bool)

(assert (=> b!2802474 m!3232203))

(declare-fun b!2802476 () Bool)

(declare-fun e!1771027 () Bool)

(declare-fun tp!893301 () Bool)

(assert (=> b!2802476 (= e!1771027 tp!893301)))

(declare-fun setIsEmpty!24612 () Bool)

(declare-fun setRes!24612 () Bool)

(assert (=> setIsEmpty!24612 setRes!24612))

(declare-fun tp!893300 () Bool)

(declare-fun b!2802477 () Bool)

(declare-fun e!1771025 () Bool)

(declare-fun e!1771026 () Bool)

(assert (=> b!2802477 (= e!1771026 (and (inv!44256 (_1!19694 (_1!19695 (h!38003 (zeroValue!4307 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890)))))))))) e!1771025 tp_is_empty!14271 setRes!24612 tp!893300))))

(declare-fun condSetEmpty!24612 () Bool)

(assert (=> b!2802477 (= condSetEmpty!24612 (= (_2!19695 (h!38003 (zeroValue!4307 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890)))))))) ((as const (Array Context!4894 Bool)) false)))))

(declare-fun b!2802478 () Bool)

(declare-fun tp!893302 () Bool)

(assert (=> b!2802478 (= e!1771025 tp!893302)))

(declare-fun setNonEmpty!24612 () Bool)

(declare-fun setElem!24612 () Context!4894)

(declare-fun tp!893299 () Bool)

(assert (=> setNonEmpty!24612 (= setRes!24612 (and tp!893299 (inv!44256 setElem!24612) e!1771027))))

(declare-fun setRest!24612 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24612 (= (_2!19695 (h!38003 (zeroValue!4307 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24612 true) setRest!24612))))

(assert (=> b!2802257 (= tp!893209 e!1771026)))

(assert (= b!2802477 b!2802478))

(assert (= (and b!2802477 condSetEmpty!24612) setIsEmpty!24612))

(assert (= (and b!2802477 (not condSetEmpty!24612)) setNonEmpty!24612))

(assert (= setNonEmpty!24612 b!2802476))

(assert (= (and b!2802257 ((_ is Cons!32583) (zeroValue!4307 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890)))))))) b!2802477))

(declare-fun m!3232205 () Bool)

(assert (=> b!2802477 m!3232205))

(declare-fun m!3232207 () Bool)

(assert (=> setNonEmpty!24612 m!3232207))

(declare-fun b!2802479 () Bool)

(declare-fun e!1771030 () Bool)

(declare-fun tp!893305 () Bool)

(assert (=> b!2802479 (= e!1771030 tp!893305)))

(declare-fun setIsEmpty!24613 () Bool)

(declare-fun setRes!24613 () Bool)

(assert (=> setIsEmpty!24613 setRes!24613))

(declare-fun tp!893304 () Bool)

(declare-fun e!1771028 () Bool)

(declare-fun e!1771029 () Bool)

(declare-fun b!2802480 () Bool)

(assert (=> b!2802480 (= e!1771029 (and (inv!44256 (_1!19694 (_1!19695 (h!38003 (minValue!4307 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890)))))))))) e!1771028 tp_is_empty!14271 setRes!24613 tp!893304))))

(declare-fun condSetEmpty!24613 () Bool)

(assert (=> b!2802480 (= condSetEmpty!24613 (= (_2!19695 (h!38003 (minValue!4307 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890)))))))) ((as const (Array Context!4894 Bool)) false)))))

(declare-fun b!2802481 () Bool)

(declare-fun tp!893306 () Bool)

(assert (=> b!2802481 (= e!1771028 tp!893306)))

(declare-fun tp!893303 () Bool)

(declare-fun setNonEmpty!24613 () Bool)

(declare-fun setElem!24613 () Context!4894)

(assert (=> setNonEmpty!24613 (= setRes!24613 (and tp!893303 (inv!44256 setElem!24613) e!1771030))))

(declare-fun setRest!24613 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24613 (= (_2!19695 (h!38003 (minValue!4307 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24613 true) setRest!24613))))

(assert (=> b!2802257 (= tp!893206 e!1771029)))

(assert (= b!2802480 b!2802481))

(assert (= (and b!2802480 condSetEmpty!24613) setIsEmpty!24613))

(assert (= (and b!2802480 (not condSetEmpty!24613)) setNonEmpty!24613))

(assert (= setNonEmpty!24613 b!2802479))

(assert (= (and b!2802257 ((_ is Cons!32583) (minValue!4307 (v!34185 (underlying!8299 (v!34186 (underlying!8300 (cache!4097 cacheUp!890)))))))) b!2802480))

(declare-fun m!3232209 () Bool)

(assert (=> b!2802480 m!3232209))

(declare-fun m!3232211 () Bool)

(assert (=> setNonEmpty!24613 m!3232211))

(declare-fun b!2802482 () Bool)

(declare-fun e!1771031 () Bool)

(declare-fun tp!893311 () Bool)

(assert (=> b!2802482 (= e!1771031 tp!893311)))

(declare-fun tp!893309 () Bool)

(declare-fun setNonEmpty!24614 () Bool)

(declare-fun setElem!24614 () Context!4894)

(declare-fun e!1771033 () Bool)

(declare-fun setRes!24614 () Bool)

(assert (=> setNonEmpty!24614 (= setRes!24614 (and tp!893309 (inv!44256 setElem!24614) e!1771033))))

(declare-fun setRest!24614 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24614 (= (_2!19697 (h!38004 mapDefault!18397)) ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24614 true) setRest!24614))))

(declare-fun setIsEmpty!24614 () Bool)

(assert (=> setIsEmpty!24614 setRes!24614))

(declare-fun tp!893307 () Bool)

(declare-fun tp!893308 () Bool)

(declare-fun b!2802483 () Bool)

(declare-fun e!1771032 () Bool)

(assert (=> b!2802483 (= e!1771032 (and tp!893307 (inv!44256 (_2!19696 (_1!19697 (h!38004 mapDefault!18397)))) e!1771031 tp_is_empty!14271 setRes!24614 tp!893308))))

(declare-fun condSetEmpty!24614 () Bool)

(assert (=> b!2802483 (= condSetEmpty!24614 (= (_2!19697 (h!38004 mapDefault!18397)) ((as const (Array Context!4894 Bool)) false)))))

(declare-fun b!2802484 () Bool)

(declare-fun tp!893310 () Bool)

(assert (=> b!2802484 (= e!1771033 tp!893310)))

(assert (=> b!2802271 (= tp!893205 e!1771032)))

(assert (= b!2802483 b!2802482))

(assert (= (and b!2802483 condSetEmpty!24614) setIsEmpty!24614))

(assert (= (and b!2802483 (not condSetEmpty!24614)) setNonEmpty!24614))

(assert (= setNonEmpty!24614 b!2802484))

(assert (= (and b!2802271 ((_ is Cons!32584) mapDefault!18397)) b!2802483))

(declare-fun m!3232213 () Bool)

(assert (=> setNonEmpty!24614 m!3232213))

(declare-fun m!3232215 () Bool)

(assert (=> b!2802483 m!3232215))

(declare-fun b!2802499 () Bool)

(declare-fun e!1771050 () Bool)

(declare-fun tp!893333 () Bool)

(assert (=> b!2802499 (= e!1771050 tp!893333)))

(declare-fun mapIsEmpty!18404 () Bool)

(declare-fun mapRes!18404 () Bool)

(assert (=> mapIsEmpty!18404 mapRes!18404))

(declare-fun condMapEmpty!18404 () Bool)

(declare-fun mapDefault!18404 () List!32683)

(assert (=> mapNonEmpty!18397 (= condMapEmpty!18404 (= mapRest!18398 ((as const (Array (_ BitVec 32) List!32683)) mapDefault!18404)))))

(declare-fun e!1771046 () Bool)

(assert (=> mapNonEmpty!18397 (= tp!893215 (and e!1771046 mapRes!18404))))

(declare-fun b!2802500 () Bool)

(declare-fun e!1771047 () Bool)

(declare-fun tp!893331 () Bool)

(assert (=> b!2802500 (= e!1771047 tp!893331)))

(declare-fun setElem!24619 () Context!4894)

(declare-fun setRes!24619 () Bool)

(declare-fun tp!893337 () Bool)

(declare-fun setNonEmpty!24619 () Bool)

(declare-fun e!1771048 () Bool)

(assert (=> setNonEmpty!24619 (= setRes!24619 (and tp!893337 (inv!44256 setElem!24619) e!1771048))))

(declare-fun setRest!24619 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24619 (= (_2!19695 (h!38003 mapDefault!18404)) ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24619 true) setRest!24619))))

(declare-fun setRes!24620 () Bool)

(declare-fun setElem!24620 () Context!4894)

(declare-fun setNonEmpty!24620 () Bool)

(declare-fun tp!893336 () Bool)

(assert (=> setNonEmpty!24620 (= setRes!24620 (and tp!893336 (inv!44256 setElem!24620) e!1771047))))

(declare-fun mapValue!18404 () List!32683)

(declare-fun setRest!24620 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24620 (= (_2!19695 (h!38003 mapValue!18404)) ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24620 true) setRest!24620))))

(declare-fun b!2802501 () Bool)

(declare-fun tp!893335 () Bool)

(assert (=> b!2802501 (= e!1771048 tp!893335)))

(declare-fun tp!893332 () Bool)

(declare-fun b!2802502 () Bool)

(declare-fun e!1771051 () Bool)

(assert (=> b!2802502 (= e!1771051 (and (inv!44256 (_1!19694 (_1!19695 (h!38003 mapValue!18404)))) e!1771050 tp_is_empty!14271 setRes!24620 tp!893332))))

(declare-fun condSetEmpty!24620 () Bool)

(assert (=> b!2802502 (= condSetEmpty!24620 (= (_2!19695 (h!38003 mapValue!18404)) ((as const (Array Context!4894 Bool)) false)))))

(declare-fun b!2802503 () Bool)

(declare-fun e!1771049 () Bool)

(declare-fun tp!893338 () Bool)

(assert (=> b!2802503 (= e!1771049 tp!893338)))

(declare-fun b!2802504 () Bool)

(declare-fun tp!893330 () Bool)

(assert (=> b!2802504 (= e!1771046 (and (inv!44256 (_1!19694 (_1!19695 (h!38003 mapDefault!18404)))) e!1771049 tp_is_empty!14271 setRes!24619 tp!893330))))

(declare-fun condSetEmpty!24619 () Bool)

(assert (=> b!2802504 (= condSetEmpty!24619 (= (_2!19695 (h!38003 mapDefault!18404)) ((as const (Array Context!4894 Bool)) false)))))

(declare-fun setIsEmpty!24619 () Bool)

(assert (=> setIsEmpty!24619 setRes!24620))

(declare-fun mapNonEmpty!18404 () Bool)

(declare-fun tp!893334 () Bool)

(assert (=> mapNonEmpty!18404 (= mapRes!18404 (and tp!893334 e!1771051))))

(declare-fun mapKey!18404 () (_ BitVec 32))

(declare-fun mapRest!18404 () (Array (_ BitVec 32) List!32683))

(assert (=> mapNonEmpty!18404 (= mapRest!18398 (store mapRest!18404 mapKey!18404 mapValue!18404))))

(declare-fun setIsEmpty!24620 () Bool)

(assert (=> setIsEmpty!24620 setRes!24619))

(assert (= (and mapNonEmpty!18397 condMapEmpty!18404) mapIsEmpty!18404))

(assert (= (and mapNonEmpty!18397 (not condMapEmpty!18404)) mapNonEmpty!18404))

(assert (= b!2802502 b!2802499))

(assert (= (and b!2802502 condSetEmpty!24620) setIsEmpty!24619))

(assert (= (and b!2802502 (not condSetEmpty!24620)) setNonEmpty!24620))

(assert (= setNonEmpty!24620 b!2802500))

(assert (= (and mapNonEmpty!18404 ((_ is Cons!32583) mapValue!18404)) b!2802502))

(assert (= b!2802504 b!2802503))

(assert (= (and b!2802504 condSetEmpty!24619) setIsEmpty!24620))

(assert (= (and b!2802504 (not condSetEmpty!24619)) setNonEmpty!24619))

(assert (= setNonEmpty!24619 b!2802501))

(assert (= (and mapNonEmpty!18397 ((_ is Cons!32583) mapDefault!18404)) b!2802504))

(declare-fun m!3232217 () Bool)

(assert (=> setNonEmpty!24619 m!3232217))

(declare-fun m!3232219 () Bool)

(assert (=> b!2802504 m!3232219))

(declare-fun m!3232221 () Bool)

(assert (=> b!2802502 m!3232221))

(declare-fun m!3232223 () Bool)

(assert (=> setNonEmpty!24620 m!3232223))

(declare-fun m!3232225 () Bool)

(assert (=> mapNonEmpty!18404 m!3232225))

(declare-fun b!2802505 () Bool)

(declare-fun e!1771054 () Bool)

(declare-fun tp!893341 () Bool)

(assert (=> b!2802505 (= e!1771054 tp!893341)))

(declare-fun setIsEmpty!24621 () Bool)

(declare-fun setRes!24621 () Bool)

(assert (=> setIsEmpty!24621 setRes!24621))

(declare-fun b!2802506 () Bool)

(declare-fun tp!893340 () Bool)

(declare-fun e!1771052 () Bool)

(declare-fun e!1771053 () Bool)

(assert (=> b!2802506 (= e!1771053 (and (inv!44256 (_1!19694 (_1!19695 (h!38003 mapValue!18397)))) e!1771052 tp_is_empty!14271 setRes!24621 tp!893340))))

(declare-fun condSetEmpty!24621 () Bool)

(assert (=> b!2802506 (= condSetEmpty!24621 (= (_2!19695 (h!38003 mapValue!18397)) ((as const (Array Context!4894 Bool)) false)))))

(declare-fun b!2802507 () Bool)

(declare-fun tp!893342 () Bool)

(assert (=> b!2802507 (= e!1771052 tp!893342)))

(declare-fun setElem!24621 () Context!4894)

(declare-fun tp!893339 () Bool)

(declare-fun setNonEmpty!24621 () Bool)

(assert (=> setNonEmpty!24621 (= setRes!24621 (and tp!893339 (inv!44256 setElem!24621) e!1771054))))

(declare-fun setRest!24621 () (InoxSet Context!4894))

(assert (=> setNonEmpty!24621 (= (_2!19695 (h!38003 mapValue!18397)) ((_ map or) (store ((as const (Array Context!4894 Bool)) false) setElem!24621 true) setRest!24621))))

(assert (=> mapNonEmpty!18397 (= tp!893202 e!1771053)))

(assert (= b!2802506 b!2802507))

(assert (= (and b!2802506 condSetEmpty!24621) setIsEmpty!24621))

(assert (= (and b!2802506 (not condSetEmpty!24621)) setNonEmpty!24621))

(assert (= setNonEmpty!24621 b!2802505))

(assert (= (and mapNonEmpty!18397 ((_ is Cons!32583) mapValue!18397)) b!2802506))

(declare-fun m!3232227 () Bool)

(assert (=> b!2802506 m!3232227))

(declare-fun m!3232229 () Bool)

(assert (=> setNonEmpty!24621 m!3232229))

(declare-fun b!2802516 () Bool)

(declare-fun tp!893349 () Bool)

(declare-fun e!1771059 () Bool)

(declare-fun tp!893350 () Bool)

(assert (=> b!2802516 (= e!1771059 (and (inv!44257 (left!24602 (c!454315 totalInput!758))) tp!893349 (inv!44257 (right!24932 (c!454315 totalInput!758))) tp!893350))))

(declare-fun b!2802518 () Bool)

(declare-fun e!1771060 () Bool)

(declare-fun tp!893351 () Bool)

(assert (=> b!2802518 (= e!1771060 tp!893351)))

(declare-fun b!2802517 () Bool)

(declare-fun inv!44260 (IArray!20177) Bool)

(assert (=> b!2802517 (= e!1771059 (and (inv!44260 (xs!13198 (c!454315 totalInput!758))) e!1771060))))

(assert (=> b!2802263 (= tp!893214 (and (inv!44257 (c!454315 totalInput!758)) e!1771059))))

(assert (= (and b!2802263 ((_ is Node!10086) (c!454315 totalInput!758))) b!2802516))

(assert (= b!2802517 b!2802518))

(assert (= (and b!2802263 ((_ is Leaf!15369) (c!454315 totalInput!758))) b!2802517))

(declare-fun m!3232231 () Bool)

(assert (=> b!2802516 m!3232231))

(declare-fun m!3232233 () Bool)

(assert (=> b!2802516 m!3232233))

(declare-fun m!3232235 () Bool)

(assert (=> b!2802517 m!3232235))

(assert (=> b!2802263 m!3231963))

(declare-fun b!2802519 () Bool)

(declare-fun e!1771061 () Bool)

(declare-fun tp!893352 () Bool)

(assert (=> b!2802519 (= e!1771061 (and tp_is_empty!14271 tp!893352))))

(assert (=> b!2802262 (= tp!893218 e!1771061)))

(assert (= (and b!2802262 ((_ is Cons!32585) (t!228855 testedP!183))) b!2802519))

(declare-fun b!2802524 () Bool)

(declare-fun e!1771064 () Bool)

(declare-fun tp!893357 () Bool)

(declare-fun tp!893358 () Bool)

(assert (=> b!2802524 (= e!1771064 (and tp!893357 tp!893358))))

(assert (=> b!2802243 (= tp!893219 e!1771064)))

(assert (= (and b!2802243 ((_ is Cons!32582) (exprs!2947 setElem!24594))) b!2802524))

(check-sat b_and!204221 (not b!2802476) (not d!814045) (not b!2802464) (not b!2802426) (not b!2802477) (not bm!182887) (not b!2802445) (not b_next!80185) (not d!814003) (not d!814033) (not d!813987) b_and!204217 (not b!2802459) (not setNonEmpty!24602) (not b!2802503) (not setNonEmpty!24613) (not d!814051) (not b!2802501) (not b!2802500) (not d!814055) (not d!813983) (not b!2802472) (not b!2802474) (not b!2802398) (not b!2802356) (not b!2802341) (not mapNonEmpty!18401) (not b!2802331) (not b!2802288) (not b!2802502) (not b!2802499) (not setNonEmpty!24603) (not b!2802344) (not d!813975) (not d!813963) (not b!2802518) (not d!813999) (not b!2802400) (not b!2802507) (not b!2802444) (not setNonEmpty!24609) (not b!2802289) (not b_next!80183) (not d!814031) (not d!814025) (not d!814009) (not b!2802457) (not b!2802263) (not b!2802353) (not b!2802335) (not b!2802428) (not b!2802296) (not d!813995) (not b!2802427) (not bm!182884) (not b!2802340) (not setNonEmpty!24619) (not b!2802443) (not b_next!80181) (not b!2802357) (not b!2802478) (not d!813979) (not d!814053) (not b!2802325) (not setNonEmpty!24606) (not b!2802475) (not b!2802484) (not d!813971) (not b!2802506) (not setNonEmpty!24612) (not b!2802482) (not setNonEmpty!24610) (not d!814027) (not d!813989) (not b!2802517) (not b!2802446) (not setNonEmpty!24620) (not b!2802470) (not b!2802354) (not b!2802479) (not b!2802346) (not b!2802480) (not b!2802417) (not b_next!80187) b_and!204215 (not b!2802286) (not d!813965) tp_is_empty!14271 (not setNonEmpty!24597) (not d!814041) (not b!2802483) (not b!2802285) (not setNonEmpty!24621) (not b!2802458) (not d!813997) (not d!814011) (not b!2802481) (not b!2802307) (not b!2802473) (not bm!182883) (not b!2802504) (not b!2802314) (not setNonEmpty!24614) (not b!2802338) (not setNonEmpty!24611) (not mapNonEmpty!18404) (not d!814007) (not b!2802312) (not d!814061) (not b!2802399) (not b!2802516) (not b!2802524) (not b!2802358) (not b!2802391) (not b!2802319) (not d!814029) (not b!2802311) (not b!2802409) (not b!2802519) (not d!814039) (not b!2802290) (not b!2802448) (not b!2802505) b_and!204219 (not b!2802469) (not d!814013) (not b!2802326) (not d!813993) (not b!2802315) (not b!2802347) (not b!2802411) (not b!2802471) (not b!2802447) (not b!2802306) (not b!2802382) (not b!2802310) (not b!2802416) (not d!813991) (not d!814043) (not b!2802284) (not b!2802407) (not d!814035) (not b!2802388) (not b!2802361) (not b!2802318))
(check-sat (not b_next!80185) b_and!204217 b_and!204221 (not b_next!80183) (not b_next!80181) b_and!204219 (not b_next!80187) b_and!204215)
