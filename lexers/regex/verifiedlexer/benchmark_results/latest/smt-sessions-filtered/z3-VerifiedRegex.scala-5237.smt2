; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269160 () Bool)

(assert start!269160)

(declare-fun b!2785439 () Bool)

(declare-fun b_free!78741 () Bool)

(declare-fun b_next!79445 () Bool)

(assert (=> b!2785439 (= b_free!78741 (not b_next!79445))))

(declare-fun tp!882976 () Bool)

(declare-fun b_and!203479 () Bool)

(assert (=> b!2785439 (= tp!882976 b_and!203479)))

(declare-fun b!2785431 () Bool)

(declare-fun b_free!78743 () Bool)

(declare-fun b_next!79447 () Bool)

(assert (=> b!2785431 (= b_free!78743 (not b_next!79447))))

(declare-fun tp!882979 () Bool)

(declare-fun b_and!203481 () Bool)

(assert (=> b!2785431 (= tp!882979 b_and!203481)))

(declare-fun b!2785426 () Bool)

(declare-fun b_free!78745 () Bool)

(declare-fun b_next!79449 () Bool)

(assert (=> b!2785426 (= b_free!78745 (not b_next!79449))))

(declare-fun tp!882986 () Bool)

(declare-fun b_and!203483 () Bool)

(assert (=> b!2785426 (= tp!882986 b_and!203483)))

(declare-fun b!2785428 () Bool)

(declare-fun b_free!78747 () Bool)

(declare-fun b_next!79451 () Bool)

(assert (=> b!2785428 (= b_free!78747 (not b_next!79451))))

(declare-fun tp!882985 () Bool)

(declare-fun b_and!203485 () Bool)

(assert (=> b!2785428 (= tp!882985 b_and!203485)))

(declare-fun mapIsEmpty!17693 () Bool)

(declare-fun mapRes!17694 () Bool)

(assert (=> mapIsEmpty!17693 mapRes!17694))

(declare-fun b!2785410 () Bool)

(declare-fun e!1757592 () Bool)

(declare-fun e!1757600 () Bool)

(assert (=> b!2785410 (= e!1757592 e!1757600)))

(declare-fun res!1162482 () Bool)

(assert (=> b!2785410 (=> res!1162482 e!1757600)))

(declare-datatypes ((C!16436 0))(
  ( (C!16437 (val!10152 Int)) )
))
(declare-datatypes ((List!32319 0))(
  ( (Nil!32219) (Cons!32219 (h!37639 C!16436) (t!228461 List!32319)) )
))
(declare-datatypes ((IArray!20029 0))(
  ( (IArray!20030 (innerList!10072 List!32319)) )
))
(declare-datatypes ((Conc!10012 0))(
  ( (Node!10012 (left!24473 Conc!10012) (right!24803 Conc!10012) (csize!20254 Int) (cheight!10223 Int)) (Leaf!15250 (xs!13123 IArray!20029) (csize!20255 Int)) (Empty!10012) )
))
(declare-datatypes ((BalanceConc!19638 0))(
  ( (BalanceConc!19639 (c!452440 Conc!10012)) )
))
(declare-fun totalInput!758 () BalanceConc!19638)

(declare-fun testedPSize!143 () Int)

(declare-fun testedSuffix!143 () List!32319)

(declare-fun apply!7534 (BalanceConc!19638 Int) C!16436)

(declare-fun head!6166 (List!32319) C!16436)

(assert (=> b!2785410 (= res!1162482 (not (= (apply!7534 totalInput!758 testedPSize!143) (head!6166 testedSuffix!143))))))

(declare-fun lt!994921 () List!32319)

(declare-fun drop!1720 (List!32319 Int) List!32319)

(declare-fun apply!7535 (List!32319 Int) C!16436)

(assert (=> b!2785410 (= (head!6166 (drop!1720 lt!994921 testedPSize!143)) (apply!7535 lt!994921 testedPSize!143))))

(declare-datatypes ((Unit!46448 0))(
  ( (Unit!46449) )
))
(declare-fun lt!994910 () Unit!46448)

(declare-fun lemmaDropApply!926 (List!32319 Int) Unit!46448)

(assert (=> b!2785410 (= lt!994910 (lemmaDropApply!926 lt!994921 testedPSize!143))))

(declare-fun lt!994920 () List!32319)

(declare-fun testedP!183 () List!32319)

(declare-fun lt!994907 () List!32319)

(assert (=> b!2785410 (not (or (not (= lt!994907 testedP!183)) (not (= lt!994920 testedSuffix!143))))))

(declare-fun lt!994911 () Unit!46448)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!353 (List!32319 List!32319 List!32319 List!32319) Unit!46448)

(assert (=> b!2785410 (= lt!994911 (lemmaConcatSameAndSameSizesThenSameLists!353 lt!994907 lt!994920 testedP!183 testedSuffix!143))))

(declare-fun b!2785411 () Bool)

(declare-fun res!1162472 () Bool)

(declare-fun e!1757602 () Bool)

(assert (=> b!2785411 (=> (not res!1162472) (not e!1757602))))

(declare-datatypes ((Hashable!3797 0))(
  ( (HashableExt!3796 (__x!21293 Int)) )
))
(declare-datatypes ((Regex!8139 0))(
  ( (ElementMatch!8139 (c!452441 C!16436)) (Concat!13227 (regOne!16790 Regex!8139) (regTwo!16790 Regex!8139)) (EmptyExpr!8139) (Star!8139 (reg!8468 Regex!8139)) (EmptyLang!8139) (Union!8139 (regOne!16791 Regex!8139) (regTwo!16791 Regex!8139)) )
))
(declare-datatypes ((List!32320 0))(
  ( (Nil!32220) (Cons!32220 (h!37640 Regex!8139) (t!228462 List!32320)) )
))
(declare-datatypes ((Context!4714 0))(
  ( (Context!4715 (exprs!2857 List!32320)) )
))
(declare-datatypes ((tuple2!32546 0))(
  ( (tuple2!32547 (_1!19243 Context!4714) (_2!19243 C!16436)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32548 0))(
  ( (tuple2!32549 (_1!19244 tuple2!32546) (_2!19244 (InoxSet Context!4714))) )
))
(declare-datatypes ((List!32321 0))(
  ( (Nil!32221) (Cons!32221 (h!37641 tuple2!32548) (t!228463 List!32321)) )
))
(declare-datatypes ((array!13803 0))(
  ( (array!13804 (arr!6153 (Array (_ BitVec 32) List!32321)) (size!25036 (_ BitVec 32))) )
))
(declare-datatypes ((array!13805 0))(
  ( (array!13806 (arr!6154 (Array (_ BitVec 32) (_ BitVec 64))) (size!25037 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7762 0))(
  ( (LongMapFixedSize!7763 (defaultEntry!4266 Int) (mask!9687 (_ BitVec 32)) (extraKeys!4130 (_ BitVec 32)) (zeroValue!4140 List!32321) (minValue!4140 List!32321) (_size!7805 (_ BitVec 32)) (_keys!4181 array!13805) (_values!4162 array!13803) (_vacant!3942 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15333 0))(
  ( (Cell!15334 (v!33827 LongMapFixedSize!7762)) )
))
(declare-datatypes ((MutLongMap!3881 0))(
  ( (LongMap!3881 (underlying!7965 Cell!15333)) (MutLongMapExt!3880 (__x!21294 Int)) )
))
(declare-datatypes ((Cell!15335 0))(
  ( (Cell!15336 (v!33828 MutLongMap!3881)) )
))
(declare-datatypes ((MutableMap!3787 0))(
  ( (MutableMapExt!3786 (__x!21295 Int)) (HashMap!3787 (underlying!7966 Cell!15335) (hashF!5829 Hashable!3797) (_size!7806 (_ BitVec 32)) (defaultValue!3958 Int)) )
))
(declare-datatypes ((CacheUp!2490 0))(
  ( (CacheUp!2491 (cache!3930 MutableMap!3787)) )
))
(declare-fun cacheUp!890 () CacheUp!2490)

(declare-fun valid!3035 (CacheUp!2490) Bool)

(assert (=> b!2785411 (= res!1162472 (valid!3035 cacheUp!890))))

(declare-fun mapIsEmpty!17694 () Bool)

(declare-fun mapRes!17693 () Bool)

(assert (=> mapIsEmpty!17694 mapRes!17693))

(declare-fun b!2785412 () Bool)

(declare-fun e!1757577 () Bool)

(declare-fun e!1757586 () Bool)

(assert (=> b!2785412 (= e!1757577 e!1757586)))

(declare-fun mapNonEmpty!17693 () Bool)

(declare-fun tp!882973 () Bool)

(declare-fun tp!882981 () Bool)

(assert (=> mapNonEmpty!17693 (= mapRes!17694 (and tp!882973 tp!882981))))

(declare-datatypes ((tuple3!5000 0))(
  ( (tuple3!5001 (_1!19245 Regex!8139) (_2!19245 Context!4714) (_3!2970 C!16436)) )
))
(declare-datatypes ((tuple2!32550 0))(
  ( (tuple2!32551 (_1!19246 tuple3!5000) (_2!19246 (InoxSet Context!4714))) )
))
(declare-datatypes ((List!32322 0))(
  ( (Nil!32222) (Cons!32222 (h!37642 tuple2!32550) (t!228464 List!32322)) )
))
(declare-fun mapValue!17694 () List!32322)

(declare-fun mapRest!17693 () (Array (_ BitVec 32) List!32322))

(declare-fun mapKey!17694 () (_ BitVec 32))

(declare-datatypes ((array!13807 0))(
  ( (array!13808 (arr!6155 (Array (_ BitVec 32) List!32322)) (size!25038 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7764 0))(
  ( (LongMapFixedSize!7765 (defaultEntry!4267 Int) (mask!9688 (_ BitVec 32)) (extraKeys!4131 (_ BitVec 32)) (zeroValue!4141 List!32322) (minValue!4141 List!32322) (_size!7807 (_ BitVec 32)) (_keys!4182 array!13805) (_values!4163 array!13807) (_vacant!3943 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15337 0))(
  ( (Cell!15338 (v!33829 LongMapFixedSize!7764)) )
))
(declare-datatypes ((MutLongMap!3882 0))(
  ( (LongMap!3882 (underlying!7967 Cell!15337)) (MutLongMapExt!3881 (__x!21296 Int)) )
))
(declare-datatypes ((Cell!15339 0))(
  ( (Cell!15340 (v!33830 MutLongMap!3882)) )
))
(declare-datatypes ((Hashable!3798 0))(
  ( (HashableExt!3797 (__x!21297 Int)) )
))
(declare-datatypes ((MutableMap!3788 0))(
  ( (MutableMapExt!3787 (__x!21298 Int)) (HashMap!3788 (underlying!7968 Cell!15339) (hashF!5830 Hashable!3798) (_size!7808 (_ BitVec 32)) (defaultValue!3959 Int)) )
))
(declare-datatypes ((CacheDown!2616 0))(
  ( (CacheDown!2617 (cache!3931 MutableMap!3788)) )
))
(declare-fun cacheDown!1009 () CacheDown!2616)

(assert (=> mapNonEmpty!17693 (= (arr!6155 (_values!4163 (v!33829 (underlying!7967 (v!33830 (underlying!7968 (cache!3931 cacheDown!1009))))))) (store mapRest!17693 mapKey!17694 mapValue!17694))))

(declare-fun b!2785413 () Bool)

(declare-fun e!1757581 () Bool)

(declare-fun e!1757599 () Bool)

(assert (=> b!2785413 (= e!1757581 e!1757599)))

(declare-fun res!1162481 () Bool)

(assert (=> b!2785413 (=> res!1162481 e!1757599)))

(declare-fun z!3684 () (InoxSet Context!4714))

(declare-fun lostCauseZipper!460 ((InoxSet Context!4714)) Bool)

(assert (=> b!2785413 (= res!1162481 (lostCauseZipper!460 z!3684))))

(declare-fun lt!994919 () List!32319)

(assert (=> b!2785413 (and (= testedSuffix!143 lt!994919) (= lt!994919 testedSuffix!143))))

(declare-fun lt!994918 () Unit!46448)

(declare-fun lemmaSamePrefixThenSameSuffix!1161 (List!32319 List!32319 List!32319 List!32319 List!32319) Unit!46448)

(assert (=> b!2785413 (= lt!994918 (lemmaSamePrefixThenSameSuffix!1161 testedP!183 testedSuffix!143 testedP!183 lt!994919 lt!994921))))

(declare-fun getSuffix!1260 (List!32319 List!32319) List!32319)

(assert (=> b!2785413 (= lt!994919 (getSuffix!1260 lt!994921 testedP!183))))

(declare-fun b!2785414 () Bool)

(declare-fun e!1757588 () Bool)

(declare-fun tp_is_empty!14091 () Bool)

(declare-fun tp!882972 () Bool)

(assert (=> b!2785414 (= e!1757588 (and tp_is_empty!14091 tp!882972))))

(declare-fun setIsEmpty!23509 () Bool)

(declare-fun setRes!23509 () Bool)

(assert (=> setIsEmpty!23509 setRes!23509))

(declare-fun b!2785415 () Bool)

(declare-fun res!1162478 () Bool)

(assert (=> b!2785415 (=> (not res!1162478) (not e!1757602))))

(declare-fun valid!3036 (CacheDown!2616) Bool)

(assert (=> b!2785415 (= res!1162478 (valid!3036 cacheDown!1009))))

(declare-fun b!2785416 () Bool)

(declare-fun e!1757578 () Bool)

(declare-fun tp!882978 () Bool)

(assert (=> b!2785416 (= e!1757578 (and tp!882978 mapRes!17694))))

(declare-fun condMapEmpty!17693 () Bool)

(declare-fun mapDefault!17693 () List!32322)

(assert (=> b!2785416 (= condMapEmpty!17693 (= (arr!6155 (_values!4163 (v!33829 (underlying!7967 (v!33830 (underlying!7968 (cache!3931 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32322)) mapDefault!17693)))))

(declare-fun b!2785417 () Bool)

(declare-fun e!1757601 () Bool)

(declare-fun e!1757580 () Bool)

(assert (=> b!2785417 (= e!1757601 e!1757580)))

(declare-fun b!2785418 () Bool)

(declare-fun e!1757587 () Bool)

(assert (=> b!2785418 (= e!1757600 e!1757587)))

(declare-fun res!1162477 () Bool)

(assert (=> b!2785418 (=> res!1162477 e!1757587)))

(declare-fun lt!994909 () Int)

(declare-fun lt!994912 () Int)

(assert (=> b!2785418 (= res!1162477 (not (= lt!994909 lt!994912)))))

(declare-fun size!25039 (List!32319) Int)

(assert (=> b!2785418 (<= lt!994909 (size!25039 lt!994921))))

(declare-fun lt!994915 () Unit!46448)

(declare-fun lemmaIsPrefixThenSmallerEqSize!269 (List!32319 List!32319) Unit!46448)

(assert (=> b!2785418 (= lt!994915 (lemmaIsPrefixThenSmallerEqSize!269 testedP!183 lt!994921))))

(declare-fun b!2785420 () Bool)

(declare-fun e!1757596 () Bool)

(assert (=> b!2785420 (= e!1757596 e!1757577)))

(declare-fun b!2785421 () Bool)

(declare-fun e!1757584 () Bool)

(declare-fun e!1757604 () Bool)

(assert (=> b!2785421 (= e!1757584 e!1757604)))

(declare-fun res!1162483 () Bool)

(assert (=> b!2785421 (=> (not res!1162483) (not e!1757604))))

(assert (=> b!2785421 (= res!1162483 (= testedPSize!143 lt!994909))))

(assert (=> b!2785421 (= lt!994909 (size!25039 testedP!183))))

(declare-fun b!2785422 () Bool)

(assert (=> b!2785422 (= e!1757604 e!1757602)))

(declare-fun res!1162480 () Bool)

(assert (=> b!2785422 (=> (not res!1162480) (not e!1757602))))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2785422 (= res!1162480 (= totalInputSize!205 lt!994912))))

(declare-fun size!25040 (BalanceConc!19638) Int)

(assert (=> b!2785422 (= lt!994912 (size!25040 totalInput!758))))

(declare-fun b!2785423 () Bool)

(declare-fun res!1162475 () Bool)

(assert (=> b!2785423 (=> res!1162475 e!1757599)))

(assert (=> b!2785423 (= res!1162475 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2785424 () Bool)

(declare-fun e!1757583 () Bool)

(declare-fun lt!994917 () MutLongMap!3881)

(get-info :version)

(assert (=> b!2785424 (= e!1757583 (and e!1757596 ((_ is LongMap!3881) lt!994917)))))

(assert (=> b!2785424 (= lt!994917 (v!33828 (underlying!7966 (cache!3930 cacheUp!890))))))

(declare-fun b!2785425 () Bool)

(declare-fun e!1757585 () Bool)

(declare-fun e!1757582 () Bool)

(assert (=> b!2785425 (= e!1757585 e!1757582)))

(declare-fun e!1757598 () Bool)

(declare-fun e!1757597 () Bool)

(assert (=> b!2785426 (= e!1757598 (and e!1757597 tp!882986))))

(declare-fun b!2785427 () Bool)

(declare-fun e!1757579 () Bool)

(declare-fun tp!882984 () Bool)

(assert (=> b!2785427 (= e!1757579 (and tp!882984 mapRes!17693))))

(declare-fun condMapEmpty!17694 () Bool)

(declare-fun mapDefault!17694 () List!32321)

(assert (=> b!2785427 (= condMapEmpty!17694 (= (arr!6153 (_values!4162 (v!33827 (underlying!7965 (v!33828 (underlying!7966 (cache!3930 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32321)) mapDefault!17694)))))

(declare-fun tp!882983 () Bool)

(declare-fun tp!882980 () Bool)

(declare-fun array_inv!4408 (array!13805) Bool)

(declare-fun array_inv!4409 (array!13803) Bool)

(assert (=> b!2785428 (= e!1757586 (and tp!882985 tp!882983 tp!882980 (array_inv!4408 (_keys!4181 (v!33827 (underlying!7965 (v!33828 (underlying!7966 (cache!3930 cacheUp!890))))))) (array_inv!4409 (_values!4162 (v!33827 (underlying!7965 (v!33828 (underlying!7966 (cache!3930 cacheUp!890))))))) e!1757579))))

(declare-fun b!2785429 () Bool)

(declare-fun res!1162474 () Bool)

(assert (=> b!2785429 (=> res!1162474 e!1757592)))

(declare-datatypes ((tuple2!32552 0))(
  ( (tuple2!32553 (_1!19247 BalanceConc!19638) (_2!19247 BalanceConc!19638)) )
))
(declare-fun lt!994908 () tuple2!32552)

(assert (=> b!2785429 (= res!1162474 (not (= (size!25040 (_1!19247 lt!994908)) testedPSize!143)))))

(declare-fun mapNonEmpty!17694 () Bool)

(declare-fun tp!882971 () Bool)

(declare-fun tp!882987 () Bool)

(assert (=> mapNonEmpty!17694 (= mapRes!17693 (and tp!882971 tp!882987))))

(declare-fun mapKey!17693 () (_ BitVec 32))

(declare-fun mapValue!17693 () List!32321)

(declare-fun mapRest!17694 () (Array (_ BitVec 32) List!32321))

(assert (=> mapNonEmpty!17694 (= (arr!6153 (_values!4162 (v!33827 (underlying!7965 (v!33828 (underlying!7966 (cache!3930 cacheUp!890))))))) (store mapRest!17694 mapKey!17693 mapValue!17693))))

(declare-fun b!2785430 () Bool)

(assert (=> b!2785430 (= e!1757587 true)))

(declare-fun isPrefix!2583 (List!32319 List!32319) Bool)

(assert (=> b!2785430 (isPrefix!2583 lt!994921 lt!994921)))

(declare-fun lt!994916 () Unit!46448)

(declare-fun lemmaIsPrefixRefl!1687 (List!32319 List!32319) Unit!46448)

(assert (=> b!2785430 (= lt!994916 (lemmaIsPrefixRefl!1687 lt!994921 lt!994921))))

(assert (=> b!2785431 (= e!1757580 (and e!1757583 tp!882979))))

(declare-fun b!2785432 () Bool)

(declare-fun e!1757593 () Bool)

(declare-fun lt!994906 () MutLongMap!3882)

(assert (=> b!2785432 (= e!1757597 (and e!1757593 ((_ is LongMap!3882) lt!994906)))))

(assert (=> b!2785432 (= lt!994906 (v!33830 (underlying!7968 (cache!3931 cacheDown!1009))))))

(declare-fun b!2785433 () Bool)

(declare-fun e!1757594 () Bool)

(assert (=> b!2785433 (= e!1757594 e!1757598)))

(declare-fun b!2785434 () Bool)

(declare-fun e!1757603 () Bool)

(declare-fun tp!882982 () Bool)

(declare-fun inv!43774 (Conc!10012) Bool)

(assert (=> b!2785434 (= e!1757603 (and (inv!43774 (c!452440 totalInput!758)) tp!882982))))

(declare-fun setElem!23509 () Context!4714)

(declare-fun setNonEmpty!23509 () Bool)

(declare-fun e!1757589 () Bool)

(declare-fun tp!882975 () Bool)

(declare-fun inv!43775 (Context!4714) Bool)

(assert (=> setNonEmpty!23509 (= setRes!23509 (and tp!882975 (inv!43775 setElem!23509) e!1757589))))

(declare-fun setRest!23509 () (InoxSet Context!4714))

(assert (=> setNonEmpty!23509 (= z!3684 ((_ map or) (store ((as const (Array Context!4714 Bool)) false) setElem!23509 true) setRest!23509))))

(declare-fun b!2785435 () Bool)

(declare-fun tp!882969 () Bool)

(assert (=> b!2785435 (= e!1757589 tp!882969)))

(declare-fun b!2785436 () Bool)

(declare-fun e!1757595 () Bool)

(declare-fun tp!882970 () Bool)

(assert (=> b!2785436 (= e!1757595 (and tp_is_empty!14091 tp!882970))))

(declare-fun res!1162476 () Bool)

(assert (=> start!269160 (=> (not res!1162476) (not e!1757584))))

(declare-fun lt!994914 () List!32319)

(assert (=> start!269160 (= res!1162476 (= lt!994914 lt!994921))))

(declare-fun list!12135 (BalanceConc!19638) List!32319)

(assert (=> start!269160 (= lt!994921 (list!12135 totalInput!758))))

(declare-fun ++!7962 (List!32319 List!32319) List!32319)

(assert (=> start!269160 (= lt!994914 (++!7962 testedP!183 testedSuffix!143))))

(assert (=> start!269160 e!1757584))

(declare-fun inv!43776 (BalanceConc!19638) Bool)

(assert (=> start!269160 (and (inv!43776 totalInput!758) e!1757603)))

(declare-fun condSetEmpty!23509 () Bool)

(assert (=> start!269160 (= condSetEmpty!23509 (= z!3684 ((as const (Array Context!4714 Bool)) false)))))

(assert (=> start!269160 setRes!23509))

(assert (=> start!269160 true))

(assert (=> start!269160 e!1757595))

(assert (=> start!269160 e!1757588))

(declare-fun inv!43777 (CacheDown!2616) Bool)

(assert (=> start!269160 (and (inv!43777 cacheDown!1009) e!1757594)))

(declare-fun inv!43778 (CacheUp!2490) Bool)

(assert (=> start!269160 (and (inv!43778 cacheUp!890) e!1757601)))

(declare-fun b!2785419 () Bool)

(assert (=> b!2785419 (= e!1757599 e!1757592)))

(declare-fun res!1162473 () Bool)

(assert (=> b!2785419 (=> res!1162473 e!1757592)))

(assert (=> b!2785419 (= res!1162473 (not (= (++!7962 lt!994907 lt!994920) lt!994921)))))

(assert (=> b!2785419 (= lt!994920 (list!12135 (_2!19247 lt!994908)))))

(assert (=> b!2785419 (= lt!994907 (list!12135 (_1!19247 lt!994908)))))

(declare-fun splitAt!138 (BalanceConc!19638 Int) tuple2!32552)

(assert (=> b!2785419 (= lt!994908 (splitAt!138 totalInput!758 testedPSize!143))))

(declare-fun b!2785437 () Bool)

(assert (=> b!2785437 (= e!1757602 (not e!1757581))))

(declare-fun res!1162479 () Bool)

(assert (=> b!2785437 (=> res!1162479 e!1757581)))

(assert (=> b!2785437 (= res!1162479 (not (isPrefix!2583 testedP!183 lt!994921)))))

(assert (=> b!2785437 (isPrefix!2583 testedP!183 lt!994914)))

(declare-fun lt!994913 () Unit!46448)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1693 (List!32319 List!32319) Unit!46448)

(assert (=> b!2785437 (= lt!994913 (lemmaConcatTwoListThenFirstIsPrefix!1693 testedP!183 testedSuffix!143))))

(declare-fun b!2785438 () Bool)

(assert (=> b!2785438 (= e!1757593 e!1757585)))

(declare-fun tp!882977 () Bool)

(declare-fun tp!882974 () Bool)

(declare-fun array_inv!4410 (array!13807) Bool)

(assert (=> b!2785439 (= e!1757582 (and tp!882976 tp!882977 tp!882974 (array_inv!4408 (_keys!4182 (v!33829 (underlying!7967 (v!33830 (underlying!7968 (cache!3931 cacheDown!1009))))))) (array_inv!4410 (_values!4163 (v!33829 (underlying!7967 (v!33830 (underlying!7968 (cache!3931 cacheDown!1009))))))) e!1757578))))

(assert (= (and start!269160 res!1162476) b!2785421))

(assert (= (and b!2785421 res!1162483) b!2785422))

(assert (= (and b!2785422 res!1162480) b!2785411))

(assert (= (and b!2785411 res!1162472) b!2785415))

(assert (= (and b!2785415 res!1162478) b!2785437))

(assert (= (and b!2785437 (not res!1162479)) b!2785413))

(assert (= (and b!2785413 (not res!1162481)) b!2785423))

(assert (= (and b!2785423 (not res!1162475)) b!2785419))

(assert (= (and b!2785419 (not res!1162473)) b!2785429))

(assert (= (and b!2785429 (not res!1162474)) b!2785410))

(assert (= (and b!2785410 (not res!1162482)) b!2785418))

(assert (= (and b!2785418 (not res!1162477)) b!2785430))

(assert (= start!269160 b!2785434))

(assert (= (and start!269160 condSetEmpty!23509) setIsEmpty!23509))

(assert (= (and start!269160 (not condSetEmpty!23509)) setNonEmpty!23509))

(assert (= setNonEmpty!23509 b!2785435))

(assert (= (and start!269160 ((_ is Cons!32219) testedP!183)) b!2785436))

(assert (= (and start!269160 ((_ is Cons!32219) testedSuffix!143)) b!2785414))

(assert (= (and b!2785416 condMapEmpty!17693) mapIsEmpty!17693))

(assert (= (and b!2785416 (not condMapEmpty!17693)) mapNonEmpty!17693))

(assert (= b!2785439 b!2785416))

(assert (= b!2785425 b!2785439))

(assert (= b!2785438 b!2785425))

(assert (= (and b!2785432 ((_ is LongMap!3882) (v!33830 (underlying!7968 (cache!3931 cacheDown!1009))))) b!2785438))

(assert (= b!2785426 b!2785432))

(assert (= (and b!2785433 ((_ is HashMap!3788) (cache!3931 cacheDown!1009))) b!2785426))

(assert (= start!269160 b!2785433))

(assert (= (and b!2785427 condMapEmpty!17694) mapIsEmpty!17694))

(assert (= (and b!2785427 (not condMapEmpty!17694)) mapNonEmpty!17694))

(assert (= b!2785428 b!2785427))

(assert (= b!2785412 b!2785428))

(assert (= b!2785420 b!2785412))

(assert (= (and b!2785424 ((_ is LongMap!3881) (v!33828 (underlying!7966 (cache!3930 cacheUp!890))))) b!2785420))

(assert (= b!2785431 b!2785424))

(assert (= (and b!2785417 ((_ is HashMap!3787) (cache!3930 cacheUp!890))) b!2785431))

(assert (= start!269160 b!2785417))

(declare-fun m!3215837 () Bool)

(assert (=> mapNonEmpty!17693 m!3215837))

(declare-fun m!3215839 () Bool)

(assert (=> b!2785421 m!3215839))

(declare-fun m!3215841 () Bool)

(assert (=> mapNonEmpty!17694 m!3215841))

(declare-fun m!3215843 () Bool)

(assert (=> b!2785415 m!3215843))

(declare-fun m!3215845 () Bool)

(assert (=> b!2785439 m!3215845))

(declare-fun m!3215847 () Bool)

(assert (=> b!2785439 m!3215847))

(declare-fun m!3215849 () Bool)

(assert (=> start!269160 m!3215849))

(declare-fun m!3215851 () Bool)

(assert (=> start!269160 m!3215851))

(declare-fun m!3215853 () Bool)

(assert (=> start!269160 m!3215853))

(declare-fun m!3215855 () Bool)

(assert (=> start!269160 m!3215855))

(declare-fun m!3215857 () Bool)

(assert (=> start!269160 m!3215857))

(declare-fun m!3215859 () Bool)

(assert (=> b!2785411 m!3215859))

(declare-fun m!3215861 () Bool)

(assert (=> b!2785418 m!3215861))

(declare-fun m!3215863 () Bool)

(assert (=> b!2785418 m!3215863))

(declare-fun m!3215865 () Bool)

(assert (=> b!2785430 m!3215865))

(declare-fun m!3215867 () Bool)

(assert (=> b!2785430 m!3215867))

(declare-fun m!3215869 () Bool)

(assert (=> b!2785413 m!3215869))

(declare-fun m!3215871 () Bool)

(assert (=> b!2785413 m!3215871))

(declare-fun m!3215873 () Bool)

(assert (=> b!2785413 m!3215873))

(declare-fun m!3215875 () Bool)

(assert (=> b!2785419 m!3215875))

(declare-fun m!3215877 () Bool)

(assert (=> b!2785419 m!3215877))

(declare-fun m!3215879 () Bool)

(assert (=> b!2785419 m!3215879))

(declare-fun m!3215881 () Bool)

(assert (=> b!2785419 m!3215881))

(declare-fun m!3215883 () Bool)

(assert (=> b!2785428 m!3215883))

(declare-fun m!3215885 () Bool)

(assert (=> b!2785428 m!3215885))

(declare-fun m!3215887 () Bool)

(assert (=> b!2785429 m!3215887))

(declare-fun m!3215889 () Bool)

(assert (=> b!2785437 m!3215889))

(declare-fun m!3215891 () Bool)

(assert (=> b!2785437 m!3215891))

(declare-fun m!3215893 () Bool)

(assert (=> b!2785437 m!3215893))

(declare-fun m!3215895 () Bool)

(assert (=> b!2785422 m!3215895))

(declare-fun m!3215897 () Bool)

(assert (=> b!2785434 m!3215897))

(declare-fun m!3215899 () Bool)

(assert (=> b!2785410 m!3215899))

(declare-fun m!3215901 () Bool)

(assert (=> b!2785410 m!3215901))

(declare-fun m!3215903 () Bool)

(assert (=> b!2785410 m!3215903))

(declare-fun m!3215905 () Bool)

(assert (=> b!2785410 m!3215905))

(assert (=> b!2785410 m!3215905))

(declare-fun m!3215907 () Bool)

(assert (=> b!2785410 m!3215907))

(declare-fun m!3215909 () Bool)

(assert (=> b!2785410 m!3215909))

(declare-fun m!3215911 () Bool)

(assert (=> b!2785410 m!3215911))

(declare-fun m!3215913 () Bool)

(assert (=> setNonEmpty!23509 m!3215913))

(check-sat b_and!203483 (not b!2785421) b_and!203481 (not mapNonEmpty!17694) (not b_next!79445) (not b!2785427) (not b!2785415) (not b!2785413) (not b!2785435) (not mapNonEmpty!17693) (not b!2785437) (not b!2785410) (not setNonEmpty!23509) (not b!2785439) (not b!2785411) (not b!2785416) (not b!2785418) (not b_next!79451) (not b!2785436) (not b_next!79447) (not b_next!79449) (not b!2785428) (not b!2785434) (not b!2785429) b_and!203479 (not b!2785430) b_and!203485 (not b!2785422) (not b!2785414) (not b!2785419) (not start!269160) tp_is_empty!14091)
(check-sat b_and!203483 b_and!203481 (not b_next!79451) (not b_next!79445) b_and!203479 b_and!203485 (not b_next!79447) (not b_next!79449))
