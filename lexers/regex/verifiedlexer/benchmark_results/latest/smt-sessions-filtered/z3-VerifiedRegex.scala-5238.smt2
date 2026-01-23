; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269164 () Bool)

(assert start!269164)

(declare-fun b!2785609 () Bool)

(declare-fun b_free!78757 () Bool)

(declare-fun b_next!79461 () Bool)

(assert (=> b!2785609 (= b_free!78757 (not b_next!79461))))

(declare-fun tp!883087 () Bool)

(declare-fun b_and!203495 () Bool)

(assert (=> b!2785609 (= tp!883087 b_and!203495)))

(declare-fun b!2785617 () Bool)

(declare-fun b_free!78759 () Bool)

(declare-fun b_next!79463 () Bool)

(assert (=> b!2785617 (= b_free!78759 (not b_next!79463))))

(declare-fun tp!883083 () Bool)

(declare-fun b_and!203497 () Bool)

(assert (=> b!2785617 (= tp!883083 b_and!203497)))

(declare-fun b!2785605 () Bool)

(declare-fun b_free!78761 () Bool)

(declare-fun b_next!79465 () Bool)

(assert (=> b!2785605 (= b_free!78761 (not b_next!79465))))

(declare-fun tp!883096 () Bool)

(declare-fun b_and!203499 () Bool)

(assert (=> b!2785605 (= tp!883096 b_and!203499)))

(declare-fun b!2785622 () Bool)

(declare-fun b_free!78763 () Bool)

(declare-fun b_next!79467 () Bool)

(assert (=> b!2785622 (= b_free!78763 (not b_next!79467))))

(declare-fun tp!883086 () Bool)

(declare-fun b_and!203501 () Bool)

(assert (=> b!2785622 (= tp!883086 b_and!203501)))

(declare-fun b!2785595 () Bool)

(declare-datatypes ((Unit!46450 0))(
  ( (Unit!46451) )
))
(declare-fun e!1757749 () Unit!46450)

(declare-fun Unit!46452 () Unit!46450)

(assert (=> b!2785595 (= e!1757749 Unit!46452)))

(declare-fun lt!995022 () Unit!46450)

(declare-datatypes ((C!16440 0))(
  ( (C!16441 (val!10154 Int)) )
))
(declare-datatypes ((List!32325 0))(
  ( (Nil!32225) (Cons!32225 (h!37645 C!16440) (t!228467 List!32325)) )
))
(declare-fun lt!995026 () List!32325)

(declare-fun lemmaIsPrefixRefl!1688 (List!32325 List!32325) Unit!46450)

(assert (=> b!2785595 (= lt!995022 (lemmaIsPrefixRefl!1688 lt!995026 lt!995026))))

(declare-fun isPrefix!2584 (List!32325 List!32325) Bool)

(assert (=> b!2785595 (isPrefix!2584 lt!995026 lt!995026)))

(declare-fun lt!995013 () Unit!46450)

(declare-fun testedP!183 () List!32325)

(declare-fun lemmaIsPrefixSameLengthThenSameList!468 (List!32325 List!32325 List!32325) Unit!46450)

(assert (=> b!2785595 (= lt!995013 (lemmaIsPrefixSameLengthThenSameList!468 lt!995026 testedP!183 lt!995026))))

(assert (=> b!2785595 false))

(declare-fun b!2785596 () Bool)

(declare-fun e!1757757 () Bool)

(declare-fun e!1757752 () Bool)

(assert (=> b!2785596 (= e!1757757 e!1757752)))

(declare-fun e!1757750 () Bool)

(declare-fun tp!883100 () Bool)

(declare-datatypes ((Regex!8141 0))(
  ( (ElementMatch!8141 (c!452449 C!16440)) (Concat!13229 (regOne!16794 Regex!8141) (regTwo!16794 Regex!8141)) (EmptyExpr!8141) (Star!8141 (reg!8470 Regex!8141)) (EmptyLang!8141) (Union!8141 (regOne!16795 Regex!8141) (regTwo!16795 Regex!8141)) )
))
(declare-datatypes ((List!32326 0))(
  ( (Nil!32226) (Cons!32226 (h!37646 Regex!8141) (t!228468 List!32326)) )
))
(declare-datatypes ((Context!4718 0))(
  ( (Context!4719 (exprs!2859 List!32326)) )
))
(declare-fun setElem!23515 () Context!4718)

(declare-fun setNonEmpty!23515 () Bool)

(declare-fun setRes!23515 () Bool)

(declare-fun inv!43782 (Context!4718) Bool)

(assert (=> setNonEmpty!23515 (= setRes!23515 (and tp!883100 (inv!43782 setElem!23515) e!1757750))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3684 () (InoxSet Context!4718))

(declare-fun setRest!23515 () (InoxSet Context!4718))

(assert (=> setNonEmpty!23515 (= z!3684 ((_ map or) (store ((as const (Array Context!4718 Bool)) false) setElem!23515 true) setRest!23515))))

(declare-fun b!2785597 () Bool)

(declare-fun e!1757759 () Bool)

(declare-fun e!1757767 () Bool)

(declare-datatypes ((tuple2!32556 0))(
  ( (tuple2!32557 (_1!19250 Context!4718) (_2!19250 C!16440)) )
))
(declare-datatypes ((tuple2!32558 0))(
  ( (tuple2!32559 (_1!19251 tuple2!32556) (_2!19251 (InoxSet Context!4718))) )
))
(declare-datatypes ((List!32327 0))(
  ( (Nil!32227) (Cons!32227 (h!37647 tuple2!32558) (t!228469 List!32327)) )
))
(declare-datatypes ((array!13813 0))(
  ( (array!13814 (arr!6158 (Array (_ BitVec 32) (_ BitVec 64))) (size!25043 (_ BitVec 32))) )
))
(declare-datatypes ((array!13815 0))(
  ( (array!13816 (arr!6159 (Array (_ BitVec 32) List!32327)) (size!25044 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7768 0))(
  ( (LongMapFixedSize!7769 (defaultEntry!4269 Int) (mask!9691 (_ BitVec 32)) (extraKeys!4133 (_ BitVec 32)) (zeroValue!4143 List!32327) (minValue!4143 List!32327) (_size!7811 (_ BitVec 32)) (_keys!4184 array!13813) (_values!4165 array!13815) (_vacant!3945 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15345 0))(
  ( (Cell!15346 (v!33833 LongMapFixedSize!7768)) )
))
(declare-datatypes ((MutLongMap!3884 0))(
  ( (LongMap!3884 (underlying!7971 Cell!15345)) (MutLongMapExt!3883 (__x!21302 Int)) )
))
(declare-fun lt!995025 () MutLongMap!3884)

(get-info :version)

(assert (=> b!2785597 (= e!1757759 (and e!1757767 ((_ is LongMap!3884) lt!995025)))))

(declare-datatypes ((Hashable!3800 0))(
  ( (HashableExt!3799 (__x!21303 Int)) )
))
(declare-datatypes ((Cell!15347 0))(
  ( (Cell!15348 (v!33834 MutLongMap!3884)) )
))
(declare-datatypes ((MutableMap!3790 0))(
  ( (MutableMapExt!3789 (__x!21304 Int)) (HashMap!3790 (underlying!7972 Cell!15347) (hashF!5832 Hashable!3800) (_size!7812 (_ BitVec 32)) (defaultValue!3961 Int)) )
))
(declare-datatypes ((CacheUp!2492 0))(
  ( (CacheUp!2493 (cache!3933 MutableMap!3790)) )
))
(declare-fun cacheUp!890 () CacheUp!2492)

(assert (=> b!2785597 (= lt!995025 (v!33834 (underlying!7972 (cache!3933 cacheUp!890))))))

(declare-fun b!2785598 () Bool)

(declare-fun Unit!46453 () Unit!46450)

(assert (=> b!2785598 (= e!1757749 Unit!46453)))

(declare-fun mapIsEmpty!17705 () Bool)

(declare-fun mapRes!17705 () Bool)

(assert (=> mapIsEmpty!17705 mapRes!17705))

(declare-fun b!2785599 () Bool)

(declare-fun e!1757751 () Bool)

(declare-fun e!1757765 () Bool)

(assert (=> b!2785599 (= e!1757751 e!1757765)))

(declare-fun b!2785601 () Bool)

(declare-fun e!1757769 () Bool)

(declare-fun e!1757746 () Bool)

(assert (=> b!2785601 (= e!1757769 e!1757746)))

(declare-fun b!2785602 () Bool)

(declare-fun e!1757748 () Bool)

(declare-fun e!1757763 () Bool)

(assert (=> b!2785602 (= e!1757748 e!1757763)))

(declare-fun res!1162539 () Bool)

(assert (=> b!2785602 (=> res!1162539 e!1757763)))

(declare-fun lostCauseZipper!461 ((InoxSet Context!4718)) Bool)

(assert (=> b!2785602 (= res!1162539 (lostCauseZipper!461 z!3684))))

(declare-fun testedSuffix!143 () List!32325)

(declare-fun lt!995012 () List!32325)

(assert (=> b!2785602 (and (= testedSuffix!143 lt!995012) (= lt!995012 testedSuffix!143))))

(declare-fun lt!995029 () Unit!46450)

(declare-fun lemmaSamePrefixThenSameSuffix!1162 (List!32325 List!32325 List!32325 List!32325 List!32325) Unit!46450)

(assert (=> b!2785602 (= lt!995029 (lemmaSamePrefixThenSameSuffix!1162 testedP!183 testedSuffix!143 testedP!183 lt!995012 lt!995026))))

(declare-fun getSuffix!1261 (List!32325 List!32325) List!32325)

(assert (=> b!2785602 (= lt!995012 (getSuffix!1261 lt!995026 testedP!183))))

(declare-fun b!2785603 () Bool)

(declare-fun e!1757764 () Bool)

(declare-fun e!1757755 () Bool)

(assert (=> b!2785603 (= e!1757764 e!1757755)))

(declare-fun res!1162546 () Bool)

(assert (=> b!2785603 (=> res!1162546 e!1757755)))

(declare-datatypes ((IArray!20031 0))(
  ( (IArray!20032 (innerList!10073 List!32325)) )
))
(declare-datatypes ((Conc!10013 0))(
  ( (Node!10013 (left!24475 Conc!10013) (right!24805 Conc!10013) (csize!20256 Int) (cheight!10224 Int)) (Leaf!15252 (xs!13124 IArray!20031) (csize!20257 Int)) (Empty!10013) )
))
(declare-datatypes ((BalanceConc!19640 0))(
  ( (BalanceConc!19641 (c!452450 Conc!10013)) )
))
(declare-fun totalInput!758 () BalanceConc!19640)

(declare-fun testedPSize!143 () Int)

(declare-fun apply!7536 (BalanceConc!19640 Int) C!16440)

(declare-fun head!6167 (List!32325) C!16440)

(assert (=> b!2785603 (= res!1162546 (not (= (apply!7536 totalInput!758 testedPSize!143) (head!6167 testedSuffix!143))))))

(declare-fun drop!1721 (List!32325 Int) List!32325)

(declare-fun apply!7537 (List!32325 Int) C!16440)

(assert (=> b!2785603 (= (head!6167 (drop!1721 lt!995026 testedPSize!143)) (apply!7537 lt!995026 testedPSize!143))))

(declare-fun lt!995027 () Unit!46450)

(declare-fun lemmaDropApply!927 (List!32325 Int) Unit!46450)

(assert (=> b!2785603 (= lt!995027 (lemmaDropApply!927 lt!995026 testedPSize!143))))

(declare-fun lt!995015 () List!32325)

(declare-fun lt!995021 () List!32325)

(assert (=> b!2785603 (not (or (not (= lt!995021 testedP!183)) (not (= lt!995015 testedSuffix!143))))))

(declare-fun lt!995023 () Unit!46450)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!354 (List!32325 List!32325 List!32325 List!32325) Unit!46450)

(assert (=> b!2785603 (= lt!995023 (lemmaConcatSameAndSameSizesThenSameLists!354 lt!995021 lt!995015 testedP!183 testedSuffix!143))))

(declare-fun b!2785604 () Bool)

(declare-fun e!1757771 () Bool)

(declare-fun e!1757753 () Bool)

(assert (=> b!2785604 (= e!1757771 e!1757753)))

(declare-fun res!1162547 () Bool)

(assert (=> b!2785604 (=> (not res!1162547) (not e!1757753))))

(declare-fun lt!995014 () Int)

(assert (=> b!2785604 (= res!1162547 (= testedPSize!143 lt!995014))))

(declare-fun size!25045 (List!32325) Int)

(assert (=> b!2785604 (= lt!995014 (size!25045 testedP!183))))

(declare-fun tp!883089 () Bool)

(declare-fun e!1757754 () Bool)

(declare-fun tp!883101 () Bool)

(declare-fun array_inv!4411 (array!13813) Bool)

(declare-fun array_inv!4412 (array!13815) Bool)

(assert (=> b!2785605 (= e!1757752 (and tp!883096 tp!883101 tp!883089 (array_inv!4411 (_keys!4184 (v!33833 (underlying!7971 (v!33834 (underlying!7972 (cache!3933 cacheUp!890))))))) (array_inv!4412 (_values!4165 (v!33833 (underlying!7971 (v!33834 (underlying!7972 (cache!3933 cacheUp!890))))))) e!1757754))))

(declare-fun b!2785606 () Bool)

(assert (=> b!2785606 (= e!1757755 true)))

(declare-fun lt!995016 () Unit!46450)

(assert (=> b!2785606 (= lt!995016 e!1757749)))

(declare-fun c!452448 () Bool)

(declare-fun lt!995028 () Int)

(assert (=> b!2785606 (= c!452448 (= lt!995014 lt!995028))))

(assert (=> b!2785606 (<= lt!995014 (size!25045 lt!995026))))

(declare-fun lt!995019 () Unit!46450)

(declare-fun lemmaIsPrefixThenSmallerEqSize!270 (List!32325 List!32325) Unit!46450)

(assert (=> b!2785606 (= lt!995019 (lemmaIsPrefixThenSmallerEqSize!270 testedP!183 lt!995026))))

(declare-fun b!2785607 () Bool)

(declare-fun e!1757747 () Bool)

(assert (=> b!2785607 (= e!1757765 e!1757747)))

(declare-fun b!2785608 () Bool)

(declare-fun res!1162543 () Bool)

(declare-fun e!1757756 () Bool)

(assert (=> b!2785608 (=> (not res!1162543) (not e!1757756))))

(declare-fun valid!3037 (CacheUp!2492) Bool)

(assert (=> b!2785608 (= res!1162543 (valid!3037 cacheUp!890))))

(declare-fun mapIsEmpty!17706 () Bool)

(declare-fun mapRes!17706 () Bool)

(assert (=> mapIsEmpty!17706 mapRes!17706))

(declare-fun e!1757761 () Bool)

(declare-fun e!1757768 () Bool)

(assert (=> b!2785609 (= e!1757761 (and e!1757768 tp!883087))))

(declare-fun b!2785610 () Bool)

(declare-fun tp!883091 () Bool)

(assert (=> b!2785610 (= e!1757754 (and tp!883091 mapRes!17706))))

(declare-fun condMapEmpty!17705 () Bool)

(declare-fun mapDefault!17705 () List!32327)

(assert (=> b!2785610 (= condMapEmpty!17705 (= (arr!6159 (_values!4165 (v!33833 (underlying!7971 (v!33834 (underlying!7972 (cache!3933 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32327)) mapDefault!17705)))))

(declare-fun b!2785611 () Bool)

(declare-fun res!1162548 () Bool)

(assert (=> b!2785611 (=> (not res!1162548) (not e!1757756))))

(declare-datatypes ((tuple3!5004 0))(
  ( (tuple3!5005 (_1!19252 Regex!8141) (_2!19252 Context!4718) (_3!2972 C!16440)) )
))
(declare-datatypes ((tuple2!32560 0))(
  ( (tuple2!32561 (_1!19253 tuple3!5004) (_2!19253 (InoxSet Context!4718))) )
))
(declare-datatypes ((List!32328 0))(
  ( (Nil!32228) (Cons!32228 (h!37648 tuple2!32560) (t!228470 List!32328)) )
))
(declare-datatypes ((array!13817 0))(
  ( (array!13818 (arr!6160 (Array (_ BitVec 32) List!32328)) (size!25046 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7770 0))(
  ( (LongMapFixedSize!7771 (defaultEntry!4270 Int) (mask!9692 (_ BitVec 32)) (extraKeys!4134 (_ BitVec 32)) (zeroValue!4144 List!32328) (minValue!4144 List!32328) (_size!7813 (_ BitVec 32)) (_keys!4185 array!13813) (_values!4166 array!13817) (_vacant!3946 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15349 0))(
  ( (Cell!15350 (v!33835 LongMapFixedSize!7770)) )
))
(declare-datatypes ((MutLongMap!3885 0))(
  ( (LongMap!3885 (underlying!7973 Cell!15349)) (MutLongMapExt!3884 (__x!21305 Int)) )
))
(declare-datatypes ((Cell!15351 0))(
  ( (Cell!15352 (v!33836 MutLongMap!3885)) )
))
(declare-datatypes ((Hashable!3801 0))(
  ( (HashableExt!3800 (__x!21306 Int)) )
))
(declare-datatypes ((MutableMap!3791 0))(
  ( (MutableMapExt!3790 (__x!21307 Int)) (HashMap!3791 (underlying!7974 Cell!15351) (hashF!5833 Hashable!3801) (_size!7814 (_ BitVec 32)) (defaultValue!3962 Int)) )
))
(declare-datatypes ((CacheDown!2620 0))(
  ( (CacheDown!2621 (cache!3934 MutableMap!3791)) )
))
(declare-fun cacheDown!1009 () CacheDown!2620)

(declare-fun valid!3038 (CacheDown!2620) Bool)

(assert (=> b!2785611 (= res!1162548 (valid!3038 cacheDown!1009))))

(declare-fun b!2785612 () Bool)

(assert (=> b!2785612 (= e!1757756 (not e!1757748))))

(declare-fun res!1162545 () Bool)

(assert (=> b!2785612 (=> res!1162545 e!1757748)))

(assert (=> b!2785612 (= res!1162545 (not (isPrefix!2584 testedP!183 lt!995026)))))

(declare-fun lt!995018 () List!32325)

(assert (=> b!2785612 (isPrefix!2584 testedP!183 lt!995018)))

(declare-fun lt!995017 () Unit!46450)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1694 (List!32325 List!32325) Unit!46450)

(assert (=> b!2785612 (= lt!995017 (lemmaConcatTwoListThenFirstIsPrefix!1694 testedP!183 testedSuffix!143))))

(declare-fun mapNonEmpty!17705 () Bool)

(declare-fun tp!883094 () Bool)

(declare-fun tp!883092 () Bool)

(assert (=> mapNonEmpty!17705 (= mapRes!17705 (and tp!883094 tp!883092))))

(declare-fun mapValue!17706 () List!32328)

(declare-fun mapRest!17705 () (Array (_ BitVec 32) List!32328))

(declare-fun mapKey!17705 () (_ BitVec 32))

(assert (=> mapNonEmpty!17705 (= (arr!6160 (_values!4166 (v!33835 (underlying!7973 (v!33836 (underlying!7974 (cache!3934 cacheDown!1009))))))) (store mapRest!17705 mapKey!17705 mapValue!17706))))

(declare-fun b!2785613 () Bool)

(assert (=> b!2785613 (= e!1757753 e!1757756)))

(declare-fun res!1162544 () Bool)

(assert (=> b!2785613 (=> (not res!1162544) (not e!1757756))))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2785613 (= res!1162544 (= totalInputSize!205 lt!995028))))

(declare-fun size!25047 (BalanceConc!19640) Int)

(assert (=> b!2785613 (= lt!995028 (size!25047 totalInput!758))))

(declare-fun b!2785614 () Bool)

(declare-fun res!1162549 () Bool)

(assert (=> b!2785614 (=> res!1162549 e!1757764)))

(declare-datatypes ((tuple2!32562 0))(
  ( (tuple2!32563 (_1!19254 BalanceConc!19640) (_2!19254 BalanceConc!19640)) )
))
(declare-fun lt!995024 () tuple2!32562)

(assert (=> b!2785614 (= res!1162549 (not (= (size!25047 (_1!19254 lt!995024)) testedPSize!143)))))

(declare-fun b!2785615 () Bool)

(assert (=> b!2785615 (= e!1757767 e!1757757)))

(declare-fun setIsEmpty!23515 () Bool)

(assert (=> setIsEmpty!23515 setRes!23515))

(declare-fun mapNonEmpty!17706 () Bool)

(declare-fun tp!883098 () Bool)

(declare-fun tp!883093 () Bool)

(assert (=> mapNonEmpty!17706 (= mapRes!17706 (and tp!883098 tp!883093))))

(declare-fun mapRest!17706 () (Array (_ BitVec 32) List!32327))

(declare-fun mapValue!17705 () List!32327)

(declare-fun mapKey!17706 () (_ BitVec 32))

(assert (=> mapNonEmpty!17706 (= (arr!6159 (_values!4165 (v!33833 (underlying!7971 (v!33834 (underlying!7972 (cache!3933 cacheUp!890))))))) (store mapRest!17706 mapKey!17706 mapValue!17705))))

(declare-fun b!2785600 () Bool)

(declare-fun e!1757758 () Bool)

(declare-fun tp_is_empty!14095 () Bool)

(declare-fun tp!883084 () Bool)

(assert (=> b!2785600 (= e!1757758 (and tp_is_empty!14095 tp!883084))))

(declare-fun res!1162541 () Bool)

(assert (=> start!269164 (=> (not res!1162541) (not e!1757771))))

(assert (=> start!269164 (= res!1162541 (= lt!995018 lt!995026))))

(declare-fun list!12136 (BalanceConc!19640) List!32325)

(assert (=> start!269164 (= lt!995026 (list!12136 totalInput!758))))

(declare-fun ++!7963 (List!32325 List!32325) List!32325)

(assert (=> start!269164 (= lt!995018 (++!7963 testedP!183 testedSuffix!143))))

(assert (=> start!269164 e!1757771))

(declare-fun e!1757766 () Bool)

(declare-fun inv!43783 (BalanceConc!19640) Bool)

(assert (=> start!269164 (and (inv!43783 totalInput!758) e!1757766)))

(declare-fun condSetEmpty!23515 () Bool)

(assert (=> start!269164 (= condSetEmpty!23515 (= z!3684 ((as const (Array Context!4718 Bool)) false)))))

(assert (=> start!269164 setRes!23515))

(assert (=> start!269164 true))

(declare-fun e!1757770 () Bool)

(assert (=> start!269164 e!1757770))

(assert (=> start!269164 e!1757758))

(declare-fun e!1757745 () Bool)

(declare-fun inv!43784 (CacheDown!2620) Bool)

(assert (=> start!269164 (and (inv!43784 cacheDown!1009) e!1757745)))

(declare-fun inv!43785 (CacheUp!2492) Bool)

(assert (=> start!269164 (and (inv!43785 cacheUp!890) e!1757769)))

(declare-fun b!2785616 () Bool)

(declare-fun tp!883088 () Bool)

(assert (=> b!2785616 (= e!1757750 tp!883088)))

(assert (=> b!2785617 (= e!1757746 (and e!1757759 tp!883083))))

(declare-fun b!2785618 () Bool)

(declare-fun e!1757772 () Bool)

(declare-fun tp!883095 () Bool)

(assert (=> b!2785618 (= e!1757772 (and tp!883095 mapRes!17705))))

(declare-fun condMapEmpty!17706 () Bool)

(declare-fun mapDefault!17706 () List!32328)

(assert (=> b!2785618 (= condMapEmpty!17706 (= (arr!6160 (_values!4166 (v!33835 (underlying!7973 (v!33836 (underlying!7974 (cache!3934 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32328)) mapDefault!17706)))))

(declare-fun b!2785619 () Bool)

(declare-fun lt!995020 () MutLongMap!3885)

(assert (=> b!2785619 (= e!1757768 (and e!1757751 ((_ is LongMap!3885) lt!995020)))))

(assert (=> b!2785619 (= lt!995020 (v!33836 (underlying!7974 (cache!3934 cacheDown!1009))))))

(declare-fun b!2785620 () Bool)

(assert (=> b!2785620 (= e!1757745 e!1757761)))

(declare-fun b!2785621 () Bool)

(declare-fun tp!883099 () Bool)

(declare-fun inv!43786 (Conc!10013) Bool)

(assert (=> b!2785621 (= e!1757766 (and (inv!43786 (c!452450 totalInput!758)) tp!883099))))

(declare-fun tp!883097 () Bool)

(declare-fun tp!883090 () Bool)

(declare-fun array_inv!4413 (array!13817) Bool)

(assert (=> b!2785622 (= e!1757747 (and tp!883086 tp!883097 tp!883090 (array_inv!4411 (_keys!4185 (v!33835 (underlying!7973 (v!33836 (underlying!7974 (cache!3934 cacheDown!1009))))))) (array_inv!4413 (_values!4166 (v!33835 (underlying!7973 (v!33836 (underlying!7974 (cache!3934 cacheDown!1009))))))) e!1757772))))

(declare-fun b!2785623 () Bool)

(declare-fun res!1162542 () Bool)

(assert (=> b!2785623 (=> res!1162542 e!1757763)))

(assert (=> b!2785623 (= res!1162542 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2785624 () Bool)

(declare-fun tp!883085 () Bool)

(assert (=> b!2785624 (= e!1757770 (and tp_is_empty!14095 tp!883085))))

(declare-fun b!2785625 () Bool)

(assert (=> b!2785625 (= e!1757763 e!1757764)))

(declare-fun res!1162540 () Bool)

(assert (=> b!2785625 (=> res!1162540 e!1757764)))

(assert (=> b!2785625 (= res!1162540 (not (= (++!7963 lt!995021 lt!995015) lt!995026)))))

(assert (=> b!2785625 (= lt!995015 (list!12136 (_2!19254 lt!995024)))))

(assert (=> b!2785625 (= lt!995021 (list!12136 (_1!19254 lt!995024)))))

(declare-fun splitAt!139 (BalanceConc!19640 Int) tuple2!32562)

(assert (=> b!2785625 (= lt!995024 (splitAt!139 totalInput!758 testedPSize!143))))

(assert (= (and start!269164 res!1162541) b!2785604))

(assert (= (and b!2785604 res!1162547) b!2785613))

(assert (= (and b!2785613 res!1162544) b!2785608))

(assert (= (and b!2785608 res!1162543) b!2785611))

(assert (= (and b!2785611 res!1162548) b!2785612))

(assert (= (and b!2785612 (not res!1162545)) b!2785602))

(assert (= (and b!2785602 (not res!1162539)) b!2785623))

(assert (= (and b!2785623 (not res!1162542)) b!2785625))

(assert (= (and b!2785625 (not res!1162540)) b!2785614))

(assert (= (and b!2785614 (not res!1162549)) b!2785603))

(assert (= (and b!2785603 (not res!1162546)) b!2785606))

(assert (= (and b!2785606 c!452448) b!2785595))

(assert (= (and b!2785606 (not c!452448)) b!2785598))

(assert (= start!269164 b!2785621))

(assert (= (and start!269164 condSetEmpty!23515) setIsEmpty!23515))

(assert (= (and start!269164 (not condSetEmpty!23515)) setNonEmpty!23515))

(assert (= setNonEmpty!23515 b!2785616))

(assert (= (and start!269164 ((_ is Cons!32225) testedP!183)) b!2785624))

(assert (= (and start!269164 ((_ is Cons!32225) testedSuffix!143)) b!2785600))

(assert (= (and b!2785618 condMapEmpty!17706) mapIsEmpty!17705))

(assert (= (and b!2785618 (not condMapEmpty!17706)) mapNonEmpty!17705))

(assert (= b!2785622 b!2785618))

(assert (= b!2785607 b!2785622))

(assert (= b!2785599 b!2785607))

(assert (= (and b!2785619 ((_ is LongMap!3885) (v!33836 (underlying!7974 (cache!3934 cacheDown!1009))))) b!2785599))

(assert (= b!2785609 b!2785619))

(assert (= (and b!2785620 ((_ is HashMap!3791) (cache!3934 cacheDown!1009))) b!2785609))

(assert (= start!269164 b!2785620))

(assert (= (and b!2785610 condMapEmpty!17705) mapIsEmpty!17706))

(assert (= (and b!2785610 (not condMapEmpty!17705)) mapNonEmpty!17706))

(assert (= b!2785605 b!2785610))

(assert (= b!2785596 b!2785605))

(assert (= b!2785615 b!2785596))

(assert (= (and b!2785597 ((_ is LongMap!3884) (v!33834 (underlying!7972 (cache!3933 cacheUp!890))))) b!2785615))

(assert (= b!2785617 b!2785597))

(assert (= (and b!2785601 ((_ is HashMap!3790) (cache!3933 cacheUp!890))) b!2785617))

(assert (= start!269164 b!2785601))

(declare-fun m!3215995 () Bool)

(assert (=> b!2785595 m!3215995))

(declare-fun m!3215997 () Bool)

(assert (=> b!2785595 m!3215997))

(declare-fun m!3215999 () Bool)

(assert (=> b!2785595 m!3215999))

(declare-fun m!3216001 () Bool)

(assert (=> b!2785608 m!3216001))

(declare-fun m!3216003 () Bool)

(assert (=> b!2785621 m!3216003))

(declare-fun m!3216005 () Bool)

(assert (=> b!2785611 m!3216005))

(declare-fun m!3216007 () Bool)

(assert (=> b!2785602 m!3216007))

(declare-fun m!3216009 () Bool)

(assert (=> b!2785602 m!3216009))

(declare-fun m!3216011 () Bool)

(assert (=> b!2785602 m!3216011))

(declare-fun m!3216013 () Bool)

(assert (=> b!2785622 m!3216013))

(declare-fun m!3216015 () Bool)

(assert (=> b!2785622 m!3216015))

(declare-fun m!3216017 () Bool)

(assert (=> mapNonEmpty!17706 m!3216017))

(declare-fun m!3216019 () Bool)

(assert (=> setNonEmpty!23515 m!3216019))

(declare-fun m!3216021 () Bool)

(assert (=> start!269164 m!3216021))

(declare-fun m!3216023 () Bool)

(assert (=> start!269164 m!3216023))

(declare-fun m!3216025 () Bool)

(assert (=> start!269164 m!3216025))

(declare-fun m!3216027 () Bool)

(assert (=> start!269164 m!3216027))

(declare-fun m!3216029 () Bool)

(assert (=> start!269164 m!3216029))

(declare-fun m!3216031 () Bool)

(assert (=> b!2785625 m!3216031))

(declare-fun m!3216033 () Bool)

(assert (=> b!2785625 m!3216033))

(declare-fun m!3216035 () Bool)

(assert (=> b!2785625 m!3216035))

(declare-fun m!3216037 () Bool)

(assert (=> b!2785625 m!3216037))

(declare-fun m!3216039 () Bool)

(assert (=> b!2785606 m!3216039))

(declare-fun m!3216041 () Bool)

(assert (=> b!2785606 m!3216041))

(declare-fun m!3216043 () Bool)

(assert (=> b!2785614 m!3216043))

(declare-fun m!3216045 () Bool)

(assert (=> b!2785613 m!3216045))

(declare-fun m!3216047 () Bool)

(assert (=> b!2785612 m!3216047))

(declare-fun m!3216049 () Bool)

(assert (=> b!2785612 m!3216049))

(declare-fun m!3216051 () Bool)

(assert (=> b!2785612 m!3216051))

(declare-fun m!3216053 () Bool)

(assert (=> b!2785604 m!3216053))

(declare-fun m!3216055 () Bool)

(assert (=> b!2785605 m!3216055))

(declare-fun m!3216057 () Bool)

(assert (=> b!2785605 m!3216057))

(declare-fun m!3216059 () Bool)

(assert (=> b!2785603 m!3216059))

(declare-fun m!3216061 () Bool)

(assert (=> b!2785603 m!3216061))

(declare-fun m!3216063 () Bool)

(assert (=> b!2785603 m!3216063))

(declare-fun m!3216065 () Bool)

(assert (=> b!2785603 m!3216065))

(assert (=> b!2785603 m!3216059))

(declare-fun m!3216067 () Bool)

(assert (=> b!2785603 m!3216067))

(declare-fun m!3216069 () Bool)

(assert (=> b!2785603 m!3216069))

(declare-fun m!3216071 () Bool)

(assert (=> b!2785603 m!3216071))

(declare-fun m!3216073 () Bool)

(assert (=> mapNonEmpty!17705 m!3216073))

(check-sat (not b!2785600) (not b!2785610) tp_is_empty!14095 (not b!2785603) (not b!2785624) (not b!2785611) (not b!2785612) b_and!203495 (not mapNonEmpty!17705) (not b!2785625) (not b!2785613) (not b_next!79461) (not setNonEmpty!23515) (not b!2785595) b_and!203497 (not b!2785608) (not b_next!79463) (not b!2785618) (not b!2785605) (not b_next!79465) (not b!2785616) (not b!2785606) (not mapNonEmpty!17706) b_and!203499 (not b!2785602) (not b!2785604) (not b!2785614) (not b!2785622) (not b_next!79467) (not b!2785621) b_and!203501 (not start!269164))
(check-sat (not b_next!79461) b_and!203497 (not b_next!79463) (not b_next!79465) b_and!203499 b_and!203495 (not b_next!79467) b_and!203501)
