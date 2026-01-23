; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269152 () Bool)

(assert start!269152)

(declare-fun b!2785078 () Bool)

(declare-fun b_free!78709 () Bool)

(declare-fun b_next!79413 () Bool)

(assert (=> b!2785078 (= b_free!78709 (not b_next!79413))))

(declare-fun tp!882752 () Bool)

(declare-fun b_and!203447 () Bool)

(assert (=> b!2785078 (= tp!882752 b_and!203447)))

(declare-fun b!2785065 () Bool)

(declare-fun b_free!78711 () Bool)

(declare-fun b_next!79415 () Bool)

(assert (=> b!2785065 (= b_free!78711 (not b_next!79415))))

(declare-fun tp!882756 () Bool)

(declare-fun b_and!203449 () Bool)

(assert (=> b!2785065 (= tp!882756 b_and!203449)))

(declare-fun b!2785066 () Bool)

(declare-fun b_free!78713 () Bool)

(declare-fun b_next!79417 () Bool)

(assert (=> b!2785066 (= b_free!78713 (not b_next!79417))))

(declare-fun tp!882746 () Bool)

(declare-fun b_and!203451 () Bool)

(assert (=> b!2785066 (= tp!882746 b_and!203451)))

(declare-fun b!2785061 () Bool)

(declare-fun b_free!78715 () Bool)

(declare-fun b_next!79419 () Bool)

(assert (=> b!2785061 (= b_free!78715 (not b_next!79419))))

(declare-fun tp!882754 () Bool)

(declare-fun b_and!203453 () Bool)

(assert (=> b!2785061 (= tp!882754 b_and!203453)))

(declare-fun b!2785058 () Bool)

(declare-fun e!1757257 () Bool)

(declare-fun e!1757269 () Bool)

(assert (=> b!2785058 (= e!1757257 e!1757269)))

(declare-fun b!2785059 () Bool)

(declare-fun e!1757268 () Bool)

(assert (=> b!2785059 (= e!1757268 true)))

(declare-datatypes ((C!16428 0))(
  ( (C!16429 (val!10148 Int)) )
))
(declare-fun lt!994733 () C!16428)

(declare-datatypes ((List!32305 0))(
  ( (Nil!32205) (Cons!32205 (h!37625 C!16428) (t!228447 List!32305)) )
))
(declare-datatypes ((IArray!20023 0))(
  ( (IArray!20024 (innerList!10069 List!32305)) )
))
(declare-datatypes ((Conc!10009 0))(
  ( (Node!10009 (left!24468 Conc!10009) (right!24798 Conc!10009) (csize!20248 Int) (cheight!10220 Int)) (Leaf!15245 (xs!13120 IArray!20023) (csize!20249 Int)) (Empty!10009) )
))
(declare-datatypes ((BalanceConc!19632 0))(
  ( (BalanceConc!19633 (c!452433 Conc!10009)) )
))
(declare-fun totalInput!758 () BalanceConc!19632)

(declare-fun testedPSize!143 () Int)

(declare-fun apply!7530 (BalanceConc!19632 Int) C!16428)

(assert (=> b!2785059 (= lt!994733 (apply!7530 totalInput!758 testedPSize!143))))

(declare-fun lt!994729 () List!32305)

(declare-fun head!6164 (List!32305) C!16428)

(declare-fun drop!1718 (List!32305 Int) List!32305)

(declare-fun apply!7531 (List!32305 Int) C!16428)

(assert (=> b!2785059 (= (head!6164 (drop!1718 lt!994729 testedPSize!143)) (apply!7531 lt!994729 testedPSize!143))))

(declare-datatypes ((Unit!46444 0))(
  ( (Unit!46445) )
))
(declare-fun lt!994735 () Unit!46444)

(declare-fun lemmaDropApply!924 (List!32305 Int) Unit!46444)

(assert (=> b!2785059 (= lt!994735 (lemmaDropApply!924 lt!994729 testedPSize!143))))

(declare-fun testedP!183 () List!32305)

(declare-fun testedSuffix!143 () List!32305)

(declare-fun lt!994731 () List!32305)

(declare-fun lt!994737 () List!32305)

(assert (=> b!2785059 (not (or (not (= lt!994731 testedP!183)) (not (= lt!994737 testedSuffix!143))))))

(declare-fun lt!994736 () Unit!46444)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!351 (List!32305 List!32305 List!32305 List!32305) Unit!46444)

(assert (=> b!2785059 (= lt!994736 (lemmaConcatSameAndSameSizesThenSameLists!351 lt!994731 lt!994737 testedP!183 testedSuffix!143))))

(declare-fun res!1162339 () Bool)

(declare-fun e!1757277 () Bool)

(assert (=> start!269152 (=> (not res!1162339) (not e!1757277))))

(declare-fun lt!994739 () List!32305)

(assert (=> start!269152 (= res!1162339 (= lt!994739 lt!994729))))

(declare-fun list!12132 (BalanceConc!19632) List!32305)

(assert (=> start!269152 (= lt!994729 (list!12132 totalInput!758))))

(declare-fun ++!7959 (List!32305 List!32305) List!32305)

(assert (=> start!269152 (= lt!994739 (++!7959 testedP!183 testedSuffix!143))))

(assert (=> start!269152 e!1757277))

(declare-fun e!1757262 () Bool)

(declare-fun inv!43754 (BalanceConc!19632) Bool)

(assert (=> start!269152 (and (inv!43754 totalInput!758) e!1757262)))

(declare-fun condSetEmpty!23497 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8135 0))(
  ( (ElementMatch!8135 (c!452434 C!16428)) (Concat!13223 (regOne!16782 Regex!8135) (regTwo!16782 Regex!8135)) (EmptyExpr!8135) (Star!8135 (reg!8464 Regex!8135)) (EmptyLang!8135) (Union!8135 (regOne!16783 Regex!8135) (regTwo!16783 Regex!8135)) )
))
(declare-datatypes ((List!32306 0))(
  ( (Nil!32206) (Cons!32206 (h!37626 Regex!8135) (t!228448 List!32306)) )
))
(declare-datatypes ((Context!4706 0))(
  ( (Context!4707 (exprs!2853 List!32306)) )
))
(declare-fun z!3684 () (InoxSet Context!4706))

(assert (=> start!269152 (= condSetEmpty!23497 (= z!3684 ((as const (Array Context!4706 Bool)) false)))))

(declare-fun setRes!23497 () Bool)

(assert (=> start!269152 setRes!23497))

(assert (=> start!269152 true))

(declare-fun e!1757267 () Bool)

(assert (=> start!269152 e!1757267))

(declare-fun e!1757272 () Bool)

(assert (=> start!269152 e!1757272))

(declare-datatypes ((array!13781 0))(
  ( (array!13782 (arr!6142 (Array (_ BitVec 32) (_ BitVec 64))) (size!25020 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!4992 0))(
  ( (tuple3!4993 (_1!19226 Regex!8135) (_2!19226 Context!4706) (_3!2966 C!16428)) )
))
(declare-datatypes ((tuple2!32520 0))(
  ( (tuple2!32521 (_1!19227 tuple3!4992) (_2!19227 (InoxSet Context!4706))) )
))
(declare-datatypes ((List!32307 0))(
  ( (Nil!32207) (Cons!32207 (h!37627 tuple2!32520) (t!228449 List!32307)) )
))
(declare-datatypes ((array!13783 0))(
  ( (array!13784 (arr!6143 (Array (_ BitVec 32) List!32307)) (size!25021 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7748 0))(
  ( (LongMapFixedSize!7749 (defaultEntry!4259 Int) (mask!9678 (_ BitVec 32)) (extraKeys!4123 (_ BitVec 32)) (zeroValue!4133 List!32307) (minValue!4133 List!32307) (_size!7791 (_ BitVec 32)) (_keys!4174 array!13781) (_values!4155 array!13783) (_vacant!3935 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15305 0))(
  ( (Cell!15306 (v!33813 LongMapFixedSize!7748)) )
))
(declare-datatypes ((MutLongMap!3874 0))(
  ( (LongMap!3874 (underlying!7951 Cell!15305)) (MutLongMapExt!3873 (__x!21272 Int)) )
))
(declare-datatypes ((Cell!15307 0))(
  ( (Cell!15308 (v!33814 MutLongMap!3874)) )
))
(declare-datatypes ((Hashable!3790 0))(
  ( (HashableExt!3789 (__x!21273 Int)) )
))
(declare-datatypes ((MutableMap!3780 0))(
  ( (MutableMapExt!3779 (__x!21274 Int)) (HashMap!3780 (underlying!7952 Cell!15307) (hashF!5822 Hashable!3790) (_size!7792 (_ BitVec 32)) (defaultValue!3951 Int)) )
))
(declare-datatypes ((CacheDown!2608 0))(
  ( (CacheDown!2609 (cache!3923 MutableMap!3780)) )
))
(declare-fun cacheDown!1009 () CacheDown!2608)

(declare-fun e!1757279 () Bool)

(declare-fun inv!43755 (CacheDown!2608) Bool)

(assert (=> start!269152 (and (inv!43755 cacheDown!1009) e!1757279)))

(declare-datatypes ((Hashable!3791 0))(
  ( (HashableExt!3790 (__x!21275 Int)) )
))
(declare-datatypes ((tuple2!32522 0))(
  ( (tuple2!32523 (_1!19228 Context!4706) (_2!19228 C!16428)) )
))
(declare-datatypes ((tuple2!32524 0))(
  ( (tuple2!32525 (_1!19229 tuple2!32522) (_2!19229 (InoxSet Context!4706))) )
))
(declare-datatypes ((List!32308 0))(
  ( (Nil!32208) (Cons!32208 (h!37628 tuple2!32524) (t!228450 List!32308)) )
))
(declare-datatypes ((array!13785 0))(
  ( (array!13786 (arr!6144 (Array (_ BitVec 32) List!32308)) (size!25022 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7750 0))(
  ( (LongMapFixedSize!7751 (defaultEntry!4260 Int) (mask!9679 (_ BitVec 32)) (extraKeys!4124 (_ BitVec 32)) (zeroValue!4134 List!32308) (minValue!4134 List!32308) (_size!7793 (_ BitVec 32)) (_keys!4175 array!13781) (_values!4156 array!13785) (_vacant!3936 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15309 0))(
  ( (Cell!15310 (v!33815 LongMapFixedSize!7750)) )
))
(declare-datatypes ((MutLongMap!3875 0))(
  ( (LongMap!3875 (underlying!7953 Cell!15309)) (MutLongMapExt!3874 (__x!21276 Int)) )
))
(declare-datatypes ((Cell!15311 0))(
  ( (Cell!15312 (v!33816 MutLongMap!3875)) )
))
(declare-datatypes ((MutableMap!3781 0))(
  ( (MutableMapExt!3780 (__x!21277 Int)) (HashMap!3781 (underlying!7954 Cell!15311) (hashF!5823 Hashable!3791) (_size!7794 (_ BitVec 32)) (defaultValue!3952 Int)) )
))
(declare-datatypes ((CacheUp!2484 0))(
  ( (CacheUp!2485 (cache!3924 MutableMap!3781)) )
))
(declare-fun cacheUp!890 () CacheUp!2484)

(declare-fun e!1757264 () Bool)

(declare-fun inv!43756 (CacheUp!2484) Bool)

(assert (=> start!269152 (and (inv!43756 cacheUp!890) e!1757264)))

(declare-fun mapNonEmpty!17669 () Bool)

(declare-fun mapRes!17669 () Bool)

(declare-fun tp!882747 () Bool)

(declare-fun tp!882753 () Bool)

(assert (=> mapNonEmpty!17669 (= mapRes!17669 (and tp!882747 tp!882753))))

(declare-fun mapValue!17670 () List!32308)

(declare-fun mapRest!17670 () (Array (_ BitVec 32) List!32308))

(declare-fun mapKey!17669 () (_ BitVec 32))

(assert (=> mapNonEmpty!17669 (= (arr!6144 (_values!4156 (v!33815 (underlying!7953 (v!33816 (underlying!7954 (cache!3924 cacheUp!890))))))) (store mapRest!17670 mapKey!17669 mapValue!17670))))

(declare-fun b!2785060 () Bool)

(declare-fun e!1757275 () Bool)

(declare-fun tp!882759 () Bool)

(assert (=> b!2785060 (= e!1757275 (and tp!882759 mapRes!17669))))

(declare-fun condMapEmpty!17669 () Bool)

(declare-fun mapDefault!17669 () List!32308)

(assert (=> b!2785060 (= condMapEmpty!17669 (= (arr!6144 (_values!4156 (v!33815 (underlying!7953 (v!33816 (underlying!7954 (cache!3924 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32308)) mapDefault!17669)))))

(declare-fun setIsEmpty!23497 () Bool)

(assert (=> setIsEmpty!23497 setRes!23497))

(declare-fun e!1757266 () Bool)

(declare-fun e!1757280 () Bool)

(assert (=> b!2785061 (= e!1757266 (and e!1757280 tp!882754))))

(declare-fun b!2785062 () Bool)

(declare-fun tp!882755 () Bool)

(declare-fun inv!43757 (Conc!10009) Bool)

(assert (=> b!2785062 (= e!1757262 (and (inv!43757 (c!452433 totalInput!758)) tp!882755))))

(declare-fun b!2785063 () Bool)

(declare-fun e!1757274 () Bool)

(declare-fun tp!882749 () Bool)

(assert (=> b!2785063 (= e!1757274 tp!882749)))

(declare-fun b!2785064 () Bool)

(declare-fun e!1757261 () Bool)

(declare-fun tp!882758 () Bool)

(declare-fun mapRes!17670 () Bool)

(assert (=> b!2785064 (= e!1757261 (and tp!882758 mapRes!17670))))

(declare-fun condMapEmpty!17670 () Bool)

(declare-fun mapDefault!17670 () List!32307)

(assert (=> b!2785064 (= condMapEmpty!17670 (= (arr!6143 (_values!4155 (v!33813 (underlying!7951 (v!33814 (underlying!7952 (cache!3923 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32307)) mapDefault!17670)))))

(declare-fun tp!882744 () Bool)

(declare-fun tp!882742 () Bool)

(declare-fun e!1757276 () Bool)

(declare-fun array_inv!4402 (array!13781) Bool)

(declare-fun array_inv!4403 (array!13785) Bool)

(assert (=> b!2785065 (= e!1757276 (and tp!882756 tp!882742 tp!882744 (array_inv!4402 (_keys!4175 (v!33815 (underlying!7953 (v!33816 (underlying!7954 (cache!3924 cacheUp!890))))))) (array_inv!4403 (_values!4156 (v!33815 (underlying!7953 (v!33816 (underlying!7954 (cache!3924 cacheUp!890))))))) e!1757275))))

(declare-fun tp!882745 () Bool)

(declare-fun setNonEmpty!23497 () Bool)

(declare-fun setElem!23497 () Context!4706)

(declare-fun inv!43758 (Context!4706) Bool)

(assert (=> setNonEmpty!23497 (= setRes!23497 (and tp!882745 (inv!43758 setElem!23497) e!1757274))))

(declare-fun setRest!23497 () (InoxSet Context!4706))

(assert (=> setNonEmpty!23497 (= z!3684 ((_ map or) (store ((as const (Array Context!4706 Bool)) false) setElem!23497 true) setRest!23497))))

(declare-fun tp!882751 () Bool)

(declare-fun e!1757271 () Bool)

(declare-fun tp!882743 () Bool)

(declare-fun array_inv!4404 (array!13783) Bool)

(assert (=> b!2785066 (= e!1757271 (and tp!882746 tp!882743 tp!882751 (array_inv!4402 (_keys!4174 (v!33813 (underlying!7951 (v!33814 (underlying!7952 (cache!3923 cacheDown!1009))))))) (array_inv!4404 (_values!4155 (v!33813 (underlying!7951 (v!33814 (underlying!7952 (cache!3923 cacheDown!1009))))))) e!1757261))))

(declare-fun b!2785067 () Bool)

(declare-fun e!1757260 () Bool)

(assert (=> b!2785067 (= e!1757264 e!1757260)))

(declare-fun b!2785068 () Bool)

(declare-fun e!1757258 () Bool)

(assert (=> b!2785068 (= e!1757258 e!1757268)))

(declare-fun res!1162341 () Bool)

(assert (=> b!2785068 (=> res!1162341 e!1757268)))

(assert (=> b!2785068 (= res!1162341 (not (= (++!7959 lt!994731 lt!994737) lt!994729)))))

(declare-datatypes ((tuple2!32526 0))(
  ( (tuple2!32527 (_1!19230 BalanceConc!19632) (_2!19230 BalanceConc!19632)) )
))
(declare-fun lt!994738 () tuple2!32526)

(assert (=> b!2785068 (= lt!994737 (list!12132 (_2!19230 lt!994738)))))

(assert (=> b!2785068 (= lt!994731 (list!12132 (_1!19230 lt!994738)))))

(declare-fun splitAt!135 (BalanceConc!19632 Int) tuple2!32526)

(assert (=> b!2785068 (= lt!994738 (splitAt!135 totalInput!758 testedPSize!143))))

(declare-fun b!2785069 () Bool)

(declare-fun tp_is_empty!14083 () Bool)

(declare-fun tp!882748 () Bool)

(assert (=> b!2785069 (= e!1757267 (and tp_is_empty!14083 tp!882748))))

(declare-fun b!2785070 () Bool)

(declare-fun res!1162345 () Bool)

(assert (=> b!2785070 (=> (not res!1162345) (not e!1757277))))

(declare-fun size!25023 (List!32305) Int)

(assert (=> b!2785070 (= res!1162345 (= testedPSize!143 (size!25023 testedP!183)))))

(declare-fun b!2785071 () Bool)

(declare-fun res!1162336 () Bool)

(assert (=> b!2785071 (=> (not res!1162336) (not e!1757277))))

(declare-fun valid!3030 (CacheDown!2608) Bool)

(assert (=> b!2785071 (= res!1162336 (valid!3030 cacheDown!1009))))

(declare-fun b!2785072 () Bool)

(declare-fun res!1162343 () Bool)

(assert (=> b!2785072 (=> (not res!1162343) (not e!1757277))))

(declare-fun totalInputSize!205 () Int)

(declare-fun size!25024 (BalanceConc!19632) Int)

(assert (=> b!2785072 (= res!1162343 (= totalInputSize!205 (size!25024 totalInput!758)))))

(declare-fun b!2785073 () Bool)

(declare-fun e!1757273 () Bool)

(assert (=> b!2785073 (= e!1757273 e!1757276)))

(declare-fun mapNonEmpty!17670 () Bool)

(declare-fun tp!882741 () Bool)

(declare-fun tp!882757 () Bool)

(assert (=> mapNonEmpty!17670 (= mapRes!17670 (and tp!882741 tp!882757))))

(declare-fun mapKey!17670 () (_ BitVec 32))

(declare-fun mapValue!17669 () List!32307)

(declare-fun mapRest!17669 () (Array (_ BitVec 32) List!32307))

(assert (=> mapNonEmpty!17670 (= (arr!6143 (_values!4155 (v!33813 (underlying!7951 (v!33814 (underlying!7952 (cache!3923 cacheDown!1009))))))) (store mapRest!17669 mapKey!17670 mapValue!17669))))

(declare-fun b!2785074 () Bool)

(declare-fun e!1757263 () Bool)

(assert (=> b!2785074 (= e!1757263 e!1757273)))

(declare-fun b!2785075 () Bool)

(declare-fun res!1162340 () Bool)

(assert (=> b!2785075 (=> res!1162340 e!1757258)))

(assert (=> b!2785075 (= res!1162340 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2785076 () Bool)

(declare-fun e!1757265 () Bool)

(assert (=> b!2785076 (= e!1757277 (not e!1757265))))

(declare-fun res!1162338 () Bool)

(assert (=> b!2785076 (=> res!1162338 e!1757265)))

(declare-fun isPrefix!2581 (List!32305 List!32305) Bool)

(assert (=> b!2785076 (= res!1162338 (not (isPrefix!2581 testedP!183 lt!994729)))))

(assert (=> b!2785076 (isPrefix!2581 testedP!183 lt!994739)))

(declare-fun lt!994730 () Unit!46444)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1691 (List!32305 List!32305) Unit!46444)

(assert (=> b!2785076 (= lt!994730 (lemmaConcatTwoListThenFirstIsPrefix!1691 testedP!183 testedSuffix!143))))

(declare-fun b!2785077 () Bool)

(declare-fun lt!994732 () MutLongMap!3874)

(get-info :version)

(assert (=> b!2785077 (= e!1757280 (and e!1757257 ((_ is LongMap!3874) lt!994732)))))

(assert (=> b!2785077 (= lt!994732 (v!33814 (underlying!7952 (cache!3923 cacheDown!1009))))))

(declare-fun e!1757259 () Bool)

(assert (=> b!2785078 (= e!1757260 (and e!1757259 tp!882752))))

(declare-fun b!2785079 () Bool)

(declare-fun lt!994734 () MutLongMap!3875)

(assert (=> b!2785079 (= e!1757259 (and e!1757263 ((_ is LongMap!3875) lt!994734)))))

(assert (=> b!2785079 (= lt!994734 (v!33816 (underlying!7954 (cache!3924 cacheUp!890))))))

(declare-fun b!2785080 () Bool)

(assert (=> b!2785080 (= e!1757269 e!1757271)))

(declare-fun b!2785081 () Bool)

(declare-fun tp!882750 () Bool)

(assert (=> b!2785081 (= e!1757272 (and tp_is_empty!14083 tp!882750))))

(declare-fun b!2785082 () Bool)

(declare-fun res!1162342 () Bool)

(assert (=> b!2785082 (=> (not res!1162342) (not e!1757277))))

(declare-fun valid!3031 (CacheUp!2484) Bool)

(assert (=> b!2785082 (= res!1162342 (valid!3031 cacheUp!890))))

(declare-fun b!2785083 () Bool)

(assert (=> b!2785083 (= e!1757279 e!1757266)))

(declare-fun b!2785084 () Bool)

(assert (=> b!2785084 (= e!1757265 e!1757258)))

(declare-fun res!1162337 () Bool)

(assert (=> b!2785084 (=> res!1162337 e!1757258)))

(declare-fun lostCauseZipper!458 ((InoxSet Context!4706)) Bool)

(assert (=> b!2785084 (= res!1162337 (lostCauseZipper!458 z!3684))))

(declare-fun lt!994741 () List!32305)

(assert (=> b!2785084 (and (= testedSuffix!143 lt!994741) (= lt!994741 testedSuffix!143))))

(declare-fun lt!994740 () Unit!46444)

(declare-fun lemmaSamePrefixThenSameSuffix!1159 (List!32305 List!32305 List!32305 List!32305 List!32305) Unit!46444)

(assert (=> b!2785084 (= lt!994740 (lemmaSamePrefixThenSameSuffix!1159 testedP!183 testedSuffix!143 testedP!183 lt!994741 lt!994729))))

(declare-fun getSuffix!1258 (List!32305 List!32305) List!32305)

(assert (=> b!2785084 (= lt!994741 (getSuffix!1258 lt!994729 testedP!183))))

(declare-fun mapIsEmpty!17669 () Bool)

(assert (=> mapIsEmpty!17669 mapRes!17669))

(declare-fun mapIsEmpty!17670 () Bool)

(assert (=> mapIsEmpty!17670 mapRes!17670))

(declare-fun b!2785085 () Bool)

(declare-fun res!1162344 () Bool)

(assert (=> b!2785085 (=> res!1162344 e!1757268)))

(assert (=> b!2785085 (= res!1162344 (not (= (size!25024 (_1!19230 lt!994738)) testedPSize!143)))))

(assert (= (and start!269152 res!1162339) b!2785070))

(assert (= (and b!2785070 res!1162345) b!2785072))

(assert (= (and b!2785072 res!1162343) b!2785082))

(assert (= (and b!2785082 res!1162342) b!2785071))

(assert (= (and b!2785071 res!1162336) b!2785076))

(assert (= (and b!2785076 (not res!1162338)) b!2785084))

(assert (= (and b!2785084 (not res!1162337)) b!2785075))

(assert (= (and b!2785075 (not res!1162340)) b!2785068))

(assert (= (and b!2785068 (not res!1162341)) b!2785085))

(assert (= (and b!2785085 (not res!1162344)) b!2785059))

(assert (= start!269152 b!2785062))

(assert (= (and start!269152 condSetEmpty!23497) setIsEmpty!23497))

(assert (= (and start!269152 (not condSetEmpty!23497)) setNonEmpty!23497))

(assert (= setNonEmpty!23497 b!2785063))

(assert (= (and start!269152 ((_ is Cons!32205) testedP!183)) b!2785069))

(assert (= (and start!269152 ((_ is Cons!32205) testedSuffix!143)) b!2785081))

(assert (= (and b!2785064 condMapEmpty!17670) mapIsEmpty!17670))

(assert (= (and b!2785064 (not condMapEmpty!17670)) mapNonEmpty!17670))

(assert (= b!2785066 b!2785064))

(assert (= b!2785080 b!2785066))

(assert (= b!2785058 b!2785080))

(assert (= (and b!2785077 ((_ is LongMap!3874) (v!33814 (underlying!7952 (cache!3923 cacheDown!1009))))) b!2785058))

(assert (= b!2785061 b!2785077))

(assert (= (and b!2785083 ((_ is HashMap!3780) (cache!3923 cacheDown!1009))) b!2785061))

(assert (= start!269152 b!2785083))

(assert (= (and b!2785060 condMapEmpty!17669) mapIsEmpty!17669))

(assert (= (and b!2785060 (not condMapEmpty!17669)) mapNonEmpty!17669))

(assert (= b!2785065 b!2785060))

(assert (= b!2785073 b!2785065))

(assert (= b!2785074 b!2785073))

(assert (= (and b!2785079 ((_ is LongMap!3875) (v!33816 (underlying!7954 (cache!3924 cacheUp!890))))) b!2785074))

(assert (= b!2785078 b!2785079))

(assert (= (and b!2785067 ((_ is HashMap!3781) (cache!3924 cacheUp!890))) b!2785078))

(assert (= start!269152 b!2785067))

(declare-fun m!3215543 () Bool)

(assert (=> setNonEmpty!23497 m!3215543))

(declare-fun m!3215545 () Bool)

(assert (=> b!2785071 m!3215545))

(declare-fun m!3215547 () Bool)

(assert (=> mapNonEmpty!17670 m!3215547))

(declare-fun m!3215549 () Bool)

(assert (=> b!2785072 m!3215549))

(declare-fun m!3215551 () Bool)

(assert (=> b!2785062 m!3215551))

(declare-fun m!3215553 () Bool)

(assert (=> b!2785065 m!3215553))

(declare-fun m!3215555 () Bool)

(assert (=> b!2785065 m!3215555))

(declare-fun m!3215557 () Bool)

(assert (=> b!2785085 m!3215557))

(declare-fun m!3215559 () Bool)

(assert (=> b!2785082 m!3215559))

(declare-fun m!3215561 () Bool)

(assert (=> b!2785068 m!3215561))

(declare-fun m!3215563 () Bool)

(assert (=> b!2785068 m!3215563))

(declare-fun m!3215565 () Bool)

(assert (=> b!2785068 m!3215565))

(declare-fun m!3215567 () Bool)

(assert (=> b!2785068 m!3215567))

(declare-fun m!3215569 () Bool)

(assert (=> b!2785066 m!3215569))

(declare-fun m!3215571 () Bool)

(assert (=> b!2785066 m!3215571))

(declare-fun m!3215573 () Bool)

(assert (=> b!2785059 m!3215573))

(declare-fun m!3215575 () Bool)

(assert (=> b!2785059 m!3215575))

(declare-fun m!3215577 () Bool)

(assert (=> b!2785059 m!3215577))

(declare-fun m!3215579 () Bool)

(assert (=> b!2785059 m!3215579))

(declare-fun m!3215581 () Bool)

(assert (=> b!2785059 m!3215581))

(declare-fun m!3215583 () Bool)

(assert (=> b!2785059 m!3215583))

(assert (=> b!2785059 m!3215577))

(declare-fun m!3215585 () Bool)

(assert (=> b!2785084 m!3215585))

(declare-fun m!3215587 () Bool)

(assert (=> b!2785084 m!3215587))

(declare-fun m!3215589 () Bool)

(assert (=> b!2785084 m!3215589))

(declare-fun m!3215591 () Bool)

(assert (=> b!2785070 m!3215591))

(declare-fun m!3215593 () Bool)

(assert (=> b!2785076 m!3215593))

(declare-fun m!3215595 () Bool)

(assert (=> b!2785076 m!3215595))

(declare-fun m!3215597 () Bool)

(assert (=> b!2785076 m!3215597))

(declare-fun m!3215599 () Bool)

(assert (=> start!269152 m!3215599))

(declare-fun m!3215601 () Bool)

(assert (=> start!269152 m!3215601))

(declare-fun m!3215603 () Bool)

(assert (=> start!269152 m!3215603))

(declare-fun m!3215605 () Bool)

(assert (=> start!269152 m!3215605))

(declare-fun m!3215607 () Bool)

(assert (=> start!269152 m!3215607))

(declare-fun m!3215609 () Bool)

(assert (=> mapNonEmpty!17669 m!3215609))

(check-sat (not b!2785071) (not b!2785060) (not b!2785068) (not b!2785066) (not b!2785065) (not start!269152) tp_is_empty!14083 (not mapNonEmpty!17670) (not b!2785063) (not b_next!79415) (not b!2785062) (not b!2785059) b_and!203447 (not b!2785069) (not b!2785064) (not setNonEmpty!23497) (not b!2785076) (not b_next!79413) (not b_next!79417) (not mapNonEmpty!17669) (not b_next!79419) (not b!2785072) (not b!2785084) (not b!2785085) b_and!203449 (not b!2785081) b_and!203453 b_and!203451 (not b!2785070) (not b!2785082))
(check-sat b_and!203447 (not b_next!79415) (not b_next!79419) b_and!203449 (not b_next!79413) (not b_next!79417) b_and!203453 b_and!203451)
