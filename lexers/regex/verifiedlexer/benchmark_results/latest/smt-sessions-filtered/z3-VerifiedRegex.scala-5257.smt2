; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269998 () Bool)

(assert start!269998)

(declare-fun b!2793244 () Bool)

(declare-fun b_free!79061 () Bool)

(declare-fun b_next!79765 () Bool)

(assert (=> b!2793244 (= b_free!79061 (not b_next!79765))))

(declare-fun tp!887709 () Bool)

(declare-fun b_and!203799 () Bool)

(assert (=> b!2793244 (= tp!887709 b_and!203799)))

(declare-fun b!2793225 () Bool)

(declare-fun b_free!79063 () Bool)

(declare-fun b_next!79767 () Bool)

(assert (=> b!2793225 (= b_free!79063 (not b_next!79767))))

(declare-fun tp!887713 () Bool)

(declare-fun b_and!203801 () Bool)

(assert (=> b!2793225 (= tp!887713 b_and!203801)))

(declare-fun b!2793228 () Bool)

(declare-fun b_free!79065 () Bool)

(declare-fun b_next!79769 () Bool)

(assert (=> b!2793228 (= b_free!79065 (not b_next!79769))))

(declare-fun tp!887700 () Bool)

(declare-fun b_and!203803 () Bool)

(assert (=> b!2793228 (= tp!887700 b_and!203803)))

(declare-fun b!2793243 () Bool)

(declare-fun b_free!79067 () Bool)

(declare-fun b_next!79771 () Bool)

(assert (=> b!2793243 (= b_free!79067 (not b_next!79771))))

(declare-fun tp!887717 () Bool)

(declare-fun b_and!203805 () Bool)

(assert (=> b!2793243 (= tp!887717 b_and!203805)))

(declare-fun b!2793221 () Bool)

(declare-fun e!1763631 () Bool)

(declare-fun e!1763652 () Bool)

(assert (=> b!2793221 (= e!1763631 e!1763652)))

(declare-datatypes ((C!16516 0))(
  ( (C!16517 (val!10192 Int)) )
))
(declare-datatypes ((Regex!8179 0))(
  ( (ElementMatch!8179 (c!453339 C!16516)) (Concat!13267 (regOne!16870 Regex!8179) (regTwo!16870 Regex!8179)) (EmptyExpr!8179) (Star!8179 (reg!8508 Regex!8179)) (EmptyLang!8179) (Union!8179 (regOne!16871 Regex!8179) (regTwo!16871 Regex!8179)) )
))
(declare-datatypes ((List!32479 0))(
  ( (Nil!32379) (Cons!32379 (h!37799 Regex!8179) (t!228631 List!32479)) )
))
(declare-datatypes ((Context!4794 0))(
  ( (Context!4795 (exprs!2897 List!32479)) )
))
(declare-fun setElem!24000 () Context!4794)

(declare-fun e!1763636 () Bool)

(declare-fun setRes!24000 () Bool)

(declare-fun setNonEmpty!24000 () Bool)

(declare-fun tp!887712 () Bool)

(declare-fun inv!43985 (Context!4794) Bool)

(assert (=> setNonEmpty!24000 (= setRes!24000 (and tp!887712 (inv!43985 setElem!24000) e!1763636))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3684 () (InoxSet Context!4794))

(declare-fun setRest!24000 () (InoxSet Context!4794))

(assert (=> setNonEmpty!24000 (= z!3684 ((_ map or) (store ((as const (Array Context!4794 Bool)) false) setElem!24000 true) setRest!24000))))

(declare-fun b!2793222 () Bool)

(declare-fun e!1763640 () Bool)

(declare-fun e!1763644 () Bool)

(assert (=> b!2793222 (= e!1763640 e!1763644)))

(declare-fun b!2793223 () Bool)

(declare-fun res!1164899 () Bool)

(declare-fun e!1763649 () Bool)

(assert (=> b!2793223 (=> (not res!1164899) (not e!1763649))))

(declare-datatypes ((Hashable!3870 0))(
  ( (HashableExt!3869 (__x!21512 Int)) )
))
(declare-datatypes ((tuple2!32860 0))(
  ( (tuple2!32861 (_1!19447 Context!4794) (_2!19447 C!16516)) )
))
(declare-datatypes ((tuple2!32862 0))(
  ( (tuple2!32863 (_1!19448 tuple2!32860) (_2!19448 (InoxSet Context!4794))) )
))
(declare-datatypes ((List!32480 0))(
  ( (Nil!32380) (Cons!32380 (h!37800 tuple2!32862) (t!228632 List!32480)) )
))
(declare-datatypes ((array!14059 0))(
  ( (array!14060 (arr!6266 (Array (_ BitVec 32) List!32480)) (size!25215 (_ BitVec 32))) )
))
(declare-datatypes ((array!14061 0))(
  ( (array!14062 (arr!6267 (Array (_ BitVec 32) (_ BitVec 64))) (size!25216 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7908 0))(
  ( (LongMapFixedSize!7909 (defaultEntry!4339 Int) (mask!9780 (_ BitVec 32)) (extraKeys!4203 (_ BitVec 32)) (zeroValue!4213 List!32480) (minValue!4213 List!32480) (_size!7951 (_ BitVec 32)) (_keys!4254 array!14061) (_values!4235 array!14059) (_vacant!4015 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15625 0))(
  ( (Cell!15626 (v!33983 LongMapFixedSize!7908)) )
))
(declare-datatypes ((MutLongMap!3954 0))(
  ( (LongMap!3954 (underlying!8111 Cell!15625)) (MutLongMapExt!3953 (__x!21513 Int)) )
))
(declare-datatypes ((Cell!15627 0))(
  ( (Cell!15628 (v!33984 MutLongMap!3954)) )
))
(declare-datatypes ((MutableMap!3860 0))(
  ( (MutableMapExt!3859 (__x!21514 Int)) (HashMap!3860 (underlying!8112 Cell!15627) (hashF!5902 Hashable!3870) (_size!7952 (_ BitVec 32)) (defaultValue!4031 Int)) )
))
(declare-datatypes ((CacheUp!2566 0))(
  ( (CacheUp!2567 (cache!4003 MutableMap!3860)) )
))
(declare-fun cacheUp!890 () CacheUp!2566)

(declare-fun valid!3094 (CacheUp!2566) Bool)

(assert (=> b!2793223 (= res!1164899 (valid!3094 cacheUp!890))))

(declare-fun b!2793224 () Bool)

(declare-fun e!1763648 () Bool)

(declare-fun tp!887710 () Bool)

(declare-fun mapRes!17999 () Bool)

(assert (=> b!2793224 (= e!1763648 (and tp!887710 mapRes!17999))))

(declare-fun condMapEmpty!17999 () Bool)

(declare-datatypes ((tuple3!5094 0))(
  ( (tuple3!5095 (_1!19449 Regex!8179) (_2!19449 Context!4794) (_3!3017 C!16516)) )
))
(declare-datatypes ((tuple2!32864 0))(
  ( (tuple2!32865 (_1!19450 tuple3!5094) (_2!19450 (InoxSet Context!4794))) )
))
(declare-datatypes ((List!32481 0))(
  ( (Nil!32381) (Cons!32381 (h!37801 tuple2!32864) (t!228633 List!32481)) )
))
(declare-datatypes ((array!14063 0))(
  ( (array!14064 (arr!6268 (Array (_ BitVec 32) List!32481)) (size!25217 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7910 0))(
  ( (LongMapFixedSize!7911 (defaultEntry!4340 Int) (mask!9781 (_ BitVec 32)) (extraKeys!4204 (_ BitVec 32)) (zeroValue!4214 List!32481) (minValue!4214 List!32481) (_size!7953 (_ BitVec 32)) (_keys!4255 array!14061) (_values!4236 array!14063) (_vacant!4016 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15629 0))(
  ( (Cell!15630 (v!33985 LongMapFixedSize!7910)) )
))
(declare-datatypes ((MutLongMap!3955 0))(
  ( (LongMap!3955 (underlying!8113 Cell!15629)) (MutLongMapExt!3954 (__x!21515 Int)) )
))
(declare-datatypes ((Cell!15631 0))(
  ( (Cell!15632 (v!33986 MutLongMap!3955)) )
))
(declare-datatypes ((Hashable!3871 0))(
  ( (HashableExt!3870 (__x!21516 Int)) )
))
(declare-datatypes ((MutableMap!3861 0))(
  ( (MutableMapExt!3860 (__x!21517 Int)) (HashMap!3861 (underlying!8114 Cell!15631) (hashF!5903 Hashable!3871) (_size!7954 (_ BitVec 32)) (defaultValue!4032 Int)) )
))
(declare-datatypes ((CacheDown!2686 0))(
  ( (CacheDown!2687 (cache!4004 MutableMap!3861)) )
))
(declare-fun cacheDown!1009 () CacheDown!2686)

(declare-fun mapDefault!17999 () List!32481)

(assert (=> b!2793224 (= condMapEmpty!17999 (= (arr!6268 (_values!4236 (v!33985 (underlying!8113 (v!33986 (underlying!8114 (cache!4004 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32481)) mapDefault!17999)))))

(declare-fun e!1763637 () Bool)

(declare-fun e!1763653 () Bool)

(assert (=> b!2793225 (= e!1763637 (and e!1763653 tp!887713))))

(declare-fun mapIsEmpty!17999 () Bool)

(assert (=> mapIsEmpty!17999 mapRes!17999))

(declare-fun b!2793226 () Bool)

(declare-fun e!1763650 () Bool)

(declare-fun tp!887701 () Bool)

(declare-fun mapRes!18000 () Bool)

(assert (=> b!2793226 (= e!1763650 (and tp!887701 mapRes!18000))))

(declare-fun condMapEmpty!18000 () Bool)

(declare-fun mapDefault!18000 () List!32480)

(assert (=> b!2793226 (= condMapEmpty!18000 (= (arr!6266 (_values!4235 (v!33983 (underlying!8111 (v!33984 (underlying!8112 (cache!4003 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32480)) mapDefault!18000)))))

(declare-fun b!2793227 () Bool)

(declare-fun res!1164895 () Bool)

(declare-fun e!1763651 () Bool)

(assert (=> b!2793227 (=> res!1164895 e!1763651)))

(declare-fun testedPSize!143 () Int)

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2793227 (= res!1164895 (= testedPSize!143 totalInputSize!205))))

(declare-fun tp!887714 () Bool)

(declare-fun e!1763630 () Bool)

(declare-fun tp!887715 () Bool)

(declare-fun array_inv!4484 (array!14061) Bool)

(declare-fun array_inv!4485 (array!14059) Bool)

(assert (=> b!2793228 (= e!1763630 (and tp!887700 tp!887715 tp!887714 (array_inv!4484 (_keys!4254 (v!33983 (underlying!8111 (v!33984 (underlying!8112 (cache!4003 cacheUp!890))))))) (array_inv!4485 (_values!4235 (v!33983 (underlying!8111 (v!33984 (underlying!8112 (cache!4003 cacheUp!890))))))) e!1763650))))

(declare-fun e!1763642 () Bool)

(declare-datatypes ((List!32482 0))(
  ( (Nil!32382) (Cons!32382 (h!37802 C!16516) (t!228634 List!32482)) )
))
(declare-fun testedSuffix!143 () List!32482)

(declare-fun b!2793229 () Bool)

(declare-fun lt!998172 () List!32482)

(declare-fun lt!998164 () Bool)

(assert (=> b!2793229 (= e!1763642 (or lt!998164 (= lt!998172 testedSuffix!143)))))

(assert (=> b!2793229 (and (not lt!998164) (= lt!998172 testedSuffix!143))))

(declare-fun lt!998169 () List!32482)

(declare-fun testedP!183 () List!32482)

(assert (=> b!2793229 (= lt!998164 (not (= lt!998169 testedP!183)))))

(declare-datatypes ((Unit!46562 0))(
  ( (Unit!46563) )
))
(declare-fun lt!998173 () Unit!46562)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!368 (List!32482 List!32482 List!32482 List!32482) Unit!46562)

(assert (=> b!2793229 (= lt!998173 (lemmaConcatSameAndSameSizesThenSameLists!368 lt!998169 lt!998172 testedP!183 testedSuffix!143))))

(declare-fun b!2793230 () Bool)

(declare-fun res!1164898 () Bool)

(assert (=> b!2793230 (=> (not res!1164898) (not e!1763649))))

(declare-fun size!25218 (List!32482) Int)

(assert (=> b!2793230 (= res!1164898 (= testedPSize!143 (size!25218 testedP!183)))))

(declare-fun b!2793231 () Bool)

(declare-fun e!1763634 () Bool)

(declare-datatypes ((IArray!20093 0))(
  ( (IArray!20094 (innerList!10104 List!32482)) )
))
(declare-datatypes ((Conc!10044 0))(
  ( (Node!10044 (left!24529 Conc!10044) (right!24859 Conc!10044) (csize!20318 Int) (cheight!10255 Int)) (Leaf!15302 (xs!13156 IArray!20093) (csize!20319 Int)) (Empty!10044) )
))
(declare-datatypes ((BalanceConc!19702 0))(
  ( (BalanceConc!19703 (c!453340 Conc!10044)) )
))
(declare-fun totalInput!758 () BalanceConc!19702)

(declare-fun tp!887704 () Bool)

(declare-fun inv!43986 (Conc!10044) Bool)

(assert (=> b!2793231 (= e!1763634 (and (inv!43986 (c!453340 totalInput!758)) tp!887704))))

(declare-fun b!2793232 () Bool)

(declare-fun e!1763632 () Bool)

(assert (=> b!2793232 (= e!1763632 e!1763637)))

(declare-fun mapIsEmpty!18000 () Bool)

(assert (=> mapIsEmpty!18000 mapRes!18000))

(declare-fun b!2793233 () Bool)

(declare-fun res!1164896 () Bool)

(assert (=> b!2793233 (=> (not res!1164896) (not e!1763649))))

(declare-fun size!25219 (BalanceConc!19702) Int)

(assert (=> b!2793233 (= res!1164896 (= totalInputSize!205 (size!25219 totalInput!758)))))

(declare-fun b!2793234 () Bool)

(declare-fun e!1763633 () Bool)

(assert (=> b!2793234 (= e!1763652 e!1763633)))

(declare-fun setIsEmpty!24000 () Bool)

(assert (=> setIsEmpty!24000 setRes!24000))

(declare-fun b!2793235 () Bool)

(declare-fun e!1763638 () Bool)

(assert (=> b!2793235 (= e!1763638 e!1763630)))

(declare-fun b!2793236 () Bool)

(declare-fun res!1164890 () Bool)

(assert (=> b!2793236 (=> (not res!1164890) (not e!1763649))))

(declare-fun valid!3095 (CacheDown!2686) Bool)

(assert (=> b!2793236 (= res!1164890 (valid!3095 cacheDown!1009))))

(declare-fun b!2793237 () Bool)

(declare-fun e!1763646 () Bool)

(declare-fun tp_is_empty!14171 () Bool)

(declare-fun tp!887702 () Bool)

(assert (=> b!2793237 (= e!1763646 (and tp_is_empty!14171 tp!887702))))

(declare-fun res!1164893 () Bool)

(assert (=> start!269998 (=> (not res!1164893) (not e!1763649))))

(declare-fun lt!998171 () List!32482)

(declare-fun lt!998165 () List!32482)

(assert (=> start!269998 (= res!1164893 (= lt!998171 lt!998165))))

(declare-fun list!12174 (BalanceConc!19702) List!32482)

(assert (=> start!269998 (= lt!998165 (list!12174 totalInput!758))))

(declare-fun ++!7992 (List!32482 List!32482) List!32482)

(assert (=> start!269998 (= lt!998171 (++!7992 testedP!183 testedSuffix!143))))

(assert (=> start!269998 e!1763649))

(declare-fun inv!43987 (BalanceConc!19702) Bool)

(assert (=> start!269998 (and (inv!43987 totalInput!758) e!1763634)))

(declare-fun condSetEmpty!24000 () Bool)

(assert (=> start!269998 (= condSetEmpty!24000 (= z!3684 ((as const (Array Context!4794 Bool)) false)))))

(assert (=> start!269998 setRes!24000))

(assert (=> start!269998 true))

(assert (=> start!269998 e!1763646))

(declare-fun e!1763639 () Bool)

(assert (=> start!269998 e!1763639))

(declare-fun inv!43988 (CacheDown!2686) Bool)

(assert (=> start!269998 (and (inv!43988 cacheDown!1009) e!1763640)))

(declare-fun inv!43989 (CacheUp!2566) Bool)

(assert (=> start!269998 (and (inv!43989 cacheUp!890) e!1763632)))

(declare-fun b!2793238 () Bool)

(declare-fun e!1763635 () Bool)

(assert (=> b!2793238 (= e!1763635 e!1763638)))

(declare-fun b!2793239 () Bool)

(assert (=> b!2793239 (= e!1763651 e!1763642)))

(declare-fun res!1164891 () Bool)

(assert (=> b!2793239 (=> res!1164891 e!1763642)))

(assert (=> b!2793239 (= res!1164891 (not (= (++!7992 lt!998169 lt!998172) lt!998165)))))

(declare-datatypes ((tuple2!32866 0))(
  ( (tuple2!32867 (_1!19451 BalanceConc!19702) (_2!19451 BalanceConc!19702)) )
))
(declare-fun lt!998166 () tuple2!32866)

(assert (=> b!2793239 (= lt!998172 (list!12174 (_2!19451 lt!998166)))))

(assert (=> b!2793239 (= lt!998169 (list!12174 (_1!19451 lt!998166)))))

(declare-fun splitAt!169 (BalanceConc!19702 Int) tuple2!32866)

(assert (=> b!2793239 (= lt!998166 (splitAt!169 totalInput!758 testedPSize!143))))

(declare-fun b!2793240 () Bool)

(declare-fun e!1763645 () Bool)

(assert (=> b!2793240 (= e!1763649 (not e!1763645))))

(declare-fun res!1164897 () Bool)

(assert (=> b!2793240 (=> res!1164897 e!1763645)))

(declare-fun isPrefix!2608 (List!32482 List!32482) Bool)

(assert (=> b!2793240 (= res!1164897 (not (isPrefix!2608 testedP!183 lt!998165)))))

(assert (=> b!2793240 (isPrefix!2608 testedP!183 lt!998171)))

(declare-fun lt!998163 () Unit!46562)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1717 (List!32482 List!32482) Unit!46562)

(assert (=> b!2793240 (= lt!998163 (lemmaConcatTwoListThenFirstIsPrefix!1717 testedP!183 testedSuffix!143))))

(declare-fun b!2793241 () Bool)

(declare-fun lt!998174 () MutLongMap!3954)

(get-info :version)

(assert (=> b!2793241 (= e!1763653 (and e!1763635 ((_ is LongMap!3954) lt!998174)))))

(assert (=> b!2793241 (= lt!998174 (v!33984 (underlying!8112 (cache!4003 cacheUp!890))))))

(declare-fun b!2793242 () Bool)

(declare-fun res!1164894 () Bool)

(assert (=> b!2793242 (=> res!1164894 e!1763642)))

(assert (=> b!2793242 (= res!1164894 (not (= (size!25219 (_1!19451 lt!998166)) testedPSize!143)))))

(declare-fun tp!887706 () Bool)

(declare-fun tp!887703 () Bool)

(declare-fun array_inv!4486 (array!14063) Bool)

(assert (=> b!2793243 (= e!1763633 (and tp!887717 tp!887703 tp!887706 (array_inv!4484 (_keys!4255 (v!33985 (underlying!8113 (v!33986 (underlying!8114 (cache!4004 cacheDown!1009))))))) (array_inv!4486 (_values!4236 (v!33985 (underlying!8113 (v!33986 (underlying!8114 (cache!4004 cacheDown!1009))))))) e!1763648))))

(declare-fun e!1763643 () Bool)

(assert (=> b!2793244 (= e!1763644 (and e!1763643 tp!887709))))

(declare-fun b!2793245 () Bool)

(declare-fun tp!887708 () Bool)

(assert (=> b!2793245 (= e!1763636 tp!887708)))

(declare-fun b!2793246 () Bool)

(declare-fun tp!887705 () Bool)

(assert (=> b!2793246 (= e!1763639 (and tp_is_empty!14171 tp!887705))))

(declare-fun b!2793247 () Bool)

(declare-fun lt!998168 () MutLongMap!3955)

(assert (=> b!2793247 (= e!1763643 (and e!1763631 ((_ is LongMap!3955) lt!998168)))))

(assert (=> b!2793247 (= lt!998168 (v!33986 (underlying!8114 (cache!4004 cacheDown!1009))))))

(declare-fun mapNonEmpty!17999 () Bool)

(declare-fun tp!887716 () Bool)

(declare-fun tp!887711 () Bool)

(assert (=> mapNonEmpty!17999 (= mapRes!18000 (and tp!887716 tp!887711))))

(declare-fun mapRest!18000 () (Array (_ BitVec 32) List!32480))

(declare-fun mapKey!18000 () (_ BitVec 32))

(declare-fun mapValue!18000 () List!32480)

(assert (=> mapNonEmpty!17999 (= (arr!6266 (_values!4235 (v!33983 (underlying!8111 (v!33984 (underlying!8112 (cache!4003 cacheUp!890))))))) (store mapRest!18000 mapKey!18000 mapValue!18000))))

(declare-fun b!2793248 () Bool)

(assert (=> b!2793248 (= e!1763645 e!1763651)))

(declare-fun res!1164892 () Bool)

(assert (=> b!2793248 (=> res!1164892 e!1763651)))

(declare-fun lostCauseZipper!485 ((InoxSet Context!4794)) Bool)

(assert (=> b!2793248 (= res!1164892 (lostCauseZipper!485 z!3684))))

(declare-fun lt!998170 () List!32482)

(assert (=> b!2793248 (and (= testedSuffix!143 lt!998170) (= lt!998170 testedSuffix!143))))

(declare-fun lt!998167 () Unit!46562)

(declare-fun lemmaSamePrefixThenSameSuffix!1186 (List!32482 List!32482 List!32482 List!32482 List!32482) Unit!46562)

(assert (=> b!2793248 (= lt!998167 (lemmaSamePrefixThenSameSuffix!1186 testedP!183 testedSuffix!143 testedP!183 lt!998170 lt!998165))))

(declare-fun getSuffix!1285 (List!32482 List!32482) List!32482)

(assert (=> b!2793248 (= lt!998170 (getSuffix!1285 lt!998165 testedP!183))))

(declare-fun mapNonEmpty!18000 () Bool)

(declare-fun tp!887699 () Bool)

(declare-fun tp!887707 () Bool)

(assert (=> mapNonEmpty!18000 (= mapRes!17999 (and tp!887699 tp!887707))))

(declare-fun mapValue!17999 () List!32481)

(declare-fun mapRest!17999 () (Array (_ BitVec 32) List!32481))

(declare-fun mapKey!17999 () (_ BitVec 32))

(assert (=> mapNonEmpty!18000 (= (arr!6268 (_values!4236 (v!33985 (underlying!8113 (v!33986 (underlying!8114 (cache!4004 cacheDown!1009))))))) (store mapRest!17999 mapKey!17999 mapValue!17999))))

(assert (= (and start!269998 res!1164893) b!2793230))

(assert (= (and b!2793230 res!1164898) b!2793233))

(assert (= (and b!2793233 res!1164896) b!2793223))

(assert (= (and b!2793223 res!1164899) b!2793236))

(assert (= (and b!2793236 res!1164890) b!2793240))

(assert (= (and b!2793240 (not res!1164897)) b!2793248))

(assert (= (and b!2793248 (not res!1164892)) b!2793227))

(assert (= (and b!2793227 (not res!1164895)) b!2793239))

(assert (= (and b!2793239 (not res!1164891)) b!2793242))

(assert (= (and b!2793242 (not res!1164894)) b!2793229))

(assert (= start!269998 b!2793231))

(assert (= (and start!269998 condSetEmpty!24000) setIsEmpty!24000))

(assert (= (and start!269998 (not condSetEmpty!24000)) setNonEmpty!24000))

(assert (= setNonEmpty!24000 b!2793245))

(assert (= (and start!269998 ((_ is Cons!32382) testedP!183)) b!2793237))

(assert (= (and start!269998 ((_ is Cons!32382) testedSuffix!143)) b!2793246))

(assert (= (and b!2793224 condMapEmpty!17999) mapIsEmpty!17999))

(assert (= (and b!2793224 (not condMapEmpty!17999)) mapNonEmpty!18000))

(assert (= b!2793243 b!2793224))

(assert (= b!2793234 b!2793243))

(assert (= b!2793221 b!2793234))

(assert (= (and b!2793247 ((_ is LongMap!3955) (v!33986 (underlying!8114 (cache!4004 cacheDown!1009))))) b!2793221))

(assert (= b!2793244 b!2793247))

(assert (= (and b!2793222 ((_ is HashMap!3861) (cache!4004 cacheDown!1009))) b!2793244))

(assert (= start!269998 b!2793222))

(assert (= (and b!2793226 condMapEmpty!18000) mapIsEmpty!18000))

(assert (= (and b!2793226 (not condMapEmpty!18000)) mapNonEmpty!17999))

(assert (= b!2793228 b!2793226))

(assert (= b!2793235 b!2793228))

(assert (= b!2793238 b!2793235))

(assert (= (and b!2793241 ((_ is LongMap!3954) (v!33984 (underlying!8112 (cache!4003 cacheUp!890))))) b!2793238))

(assert (= b!2793225 b!2793241))

(assert (= (and b!2793232 ((_ is HashMap!3860) (cache!4003 cacheUp!890))) b!2793225))

(assert (= start!269998 b!2793232))

(declare-fun m!3223489 () Bool)

(assert (=> b!2793242 m!3223489))

(declare-fun m!3223491 () Bool)

(assert (=> b!2793223 m!3223491))

(declare-fun m!3223493 () Bool)

(assert (=> setNonEmpty!24000 m!3223493))

(declare-fun m!3223495 () Bool)

(assert (=> mapNonEmpty!18000 m!3223495))

(declare-fun m!3223497 () Bool)

(assert (=> b!2793233 m!3223497))

(declare-fun m!3223499 () Bool)

(assert (=> b!2793243 m!3223499))

(declare-fun m!3223501 () Bool)

(assert (=> b!2793243 m!3223501))

(declare-fun m!3223503 () Bool)

(assert (=> b!2793229 m!3223503))

(declare-fun m!3223505 () Bool)

(assert (=> b!2793239 m!3223505))

(declare-fun m!3223507 () Bool)

(assert (=> b!2793239 m!3223507))

(declare-fun m!3223509 () Bool)

(assert (=> b!2793239 m!3223509))

(declare-fun m!3223511 () Bool)

(assert (=> b!2793239 m!3223511))

(declare-fun m!3223513 () Bool)

(assert (=> b!2793230 m!3223513))

(declare-fun m!3223515 () Bool)

(assert (=> b!2793240 m!3223515))

(declare-fun m!3223517 () Bool)

(assert (=> b!2793240 m!3223517))

(declare-fun m!3223519 () Bool)

(assert (=> b!2793240 m!3223519))

(declare-fun m!3223521 () Bool)

(assert (=> b!2793236 m!3223521))

(declare-fun m!3223523 () Bool)

(assert (=> b!2793248 m!3223523))

(declare-fun m!3223525 () Bool)

(assert (=> b!2793248 m!3223525))

(declare-fun m!3223527 () Bool)

(assert (=> b!2793248 m!3223527))

(declare-fun m!3223529 () Bool)

(assert (=> b!2793231 m!3223529))

(declare-fun m!3223531 () Bool)

(assert (=> start!269998 m!3223531))

(declare-fun m!3223533 () Bool)

(assert (=> start!269998 m!3223533))

(declare-fun m!3223535 () Bool)

(assert (=> start!269998 m!3223535))

(declare-fun m!3223537 () Bool)

(assert (=> start!269998 m!3223537))

(declare-fun m!3223539 () Bool)

(assert (=> start!269998 m!3223539))

(declare-fun m!3223541 () Bool)

(assert (=> b!2793228 m!3223541))

(declare-fun m!3223543 () Bool)

(assert (=> b!2793228 m!3223543))

(declare-fun m!3223545 () Bool)

(assert (=> mapNonEmpty!17999 m!3223545))

(check-sat (not mapNonEmpty!18000) (not b_next!79769) (not b!2793226) b_and!203799 (not b!2793246) (not b!2793230) (not b!2793237) b_and!203805 (not b!2793228) tp_is_empty!14171 (not b!2793242) (not b!2793243) (not b_next!79767) (not b!2793248) (not b!2793245) (not start!269998) b_and!203801 (not b!2793229) (not b!2793223) b_and!203803 (not mapNonEmpty!17999) (not b!2793236) (not b!2793224) (not b!2793233) (not b!2793231) (not b_next!79771) (not b!2793240) (not b_next!79765) (not b!2793239) (not setNonEmpty!24000))
(check-sat (not b_next!79769) b_and!203801 b_and!203799 b_and!203803 b_and!203805 (not b_next!79767) (not b_next!79765) (not b_next!79771))
