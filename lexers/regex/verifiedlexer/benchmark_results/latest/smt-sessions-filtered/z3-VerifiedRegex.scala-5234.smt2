; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269098 () Bool)

(assert start!269098)

(declare-fun b!2784684 () Bool)

(declare-fun b_free!78693 () Bool)

(declare-fun b_next!79397 () Bool)

(assert (=> b!2784684 (= b_free!78693 (not b_next!79397))))

(declare-fun tp!882501 () Bool)

(declare-fun b_and!203431 () Bool)

(assert (=> b!2784684 (= tp!882501 b_and!203431)))

(declare-fun b!2784699 () Bool)

(declare-fun b_free!78695 () Bool)

(declare-fun b_next!79399 () Bool)

(assert (=> b!2784699 (= b_free!78695 (not b_next!79399))))

(declare-fun tp!882495 () Bool)

(declare-fun b_and!203433 () Bool)

(assert (=> b!2784699 (= tp!882495 b_and!203433)))

(declare-fun b!2784689 () Bool)

(declare-fun b_free!78697 () Bool)

(declare-fun b_next!79401 () Bool)

(assert (=> b!2784689 (= b_free!78697 (not b_next!79401))))

(declare-fun tp!882500 () Bool)

(declare-fun b_and!203435 () Bool)

(assert (=> b!2784689 (= tp!882500 b_and!203435)))

(declare-fun b!2784687 () Bool)

(declare-fun b_free!78699 () Bool)

(declare-fun b_next!79403 () Bool)

(assert (=> b!2784687 (= b_free!78699 (not b_next!79403))))

(declare-fun tp!882494 () Bool)

(declare-fun b_and!203437 () Bool)

(assert (=> b!2784687 (= tp!882494 b_and!203437)))

(declare-fun b!2784673 () Bool)

(declare-fun res!1162233 () Bool)

(declare-fun e!1756962 () Bool)

(assert (=> b!2784673 (=> (not res!1162233) (not e!1756962))))

(declare-datatypes ((C!16424 0))(
  ( (C!16425 (val!10146 Int)) )
))
(declare-datatypes ((array!13766 0))(
  ( (array!13767 (arr!6136 (Array (_ BitVec 32) (_ BitVec 64))) (size!25009 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8133 0))(
  ( (ElementMatch!8133 (c!452390 C!16424)) (Concat!13221 (regOne!16778 Regex!8133) (regTwo!16778 Regex!8133)) (EmptyExpr!8133) (Star!8133 (reg!8462 Regex!8133)) (EmptyLang!8133) (Union!8133 (regOne!16779 Regex!8133) (regTwo!16779 Regex!8133)) )
))
(declare-datatypes ((List!32296 0))(
  ( (Nil!32196) (Cons!32196 (h!37616 Regex!8133) (t!228438 List!32296)) )
))
(declare-datatypes ((Context!4702 0))(
  ( (Context!4703 (exprs!2851 List!32296)) )
))
(declare-datatypes ((tuple3!4988 0))(
  ( (tuple3!4989 (_1!19214 Regex!8133) (_2!19214 Context!4702) (_3!2964 C!16424)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32500 0))(
  ( (tuple2!32501 (_1!19215 tuple3!4988) (_2!19215 (InoxSet Context!4702))) )
))
(declare-datatypes ((List!32297 0))(
  ( (Nil!32197) (Cons!32197 (h!37617 tuple2!32500) (t!228439 List!32297)) )
))
(declare-datatypes ((array!13768 0))(
  ( (array!13769 (arr!6137 (Array (_ BitVec 32) List!32297)) (size!25010 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7740 0))(
  ( (LongMapFixedSize!7741 (defaultEntry!4255 Int) (mask!9673 (_ BitVec 32)) (extraKeys!4119 (_ BitVec 32)) (zeroValue!4129 List!32297) (minValue!4129 List!32297) (_size!7783 (_ BitVec 32)) (_keys!4170 array!13766) (_values!4151 array!13768) (_vacant!3931 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15289 0))(
  ( (Cell!15290 (v!33804 LongMapFixedSize!7740)) )
))
(declare-datatypes ((MutLongMap!3870 0))(
  ( (LongMap!3870 (underlying!7943 Cell!15289)) (MutLongMapExt!3869 (__x!21260 Int)) )
))
(declare-datatypes ((Cell!15291 0))(
  ( (Cell!15292 (v!33805 MutLongMap!3870)) )
))
(declare-datatypes ((Hashable!3786 0))(
  ( (HashableExt!3785 (__x!21261 Int)) )
))
(declare-datatypes ((MutableMap!3776 0))(
  ( (MutableMapExt!3775 (__x!21262 Int)) (HashMap!3776 (underlying!7944 Cell!15291) (hashF!5818 Hashable!3786) (_size!7784 (_ BitVec 32)) (defaultValue!3947 Int)) )
))
(declare-datatypes ((CacheDown!2604 0))(
  ( (CacheDown!2605 (cache!3919 MutableMap!3776)) )
))
(declare-fun cacheDown!1009 () CacheDown!2604)

(declare-fun valid!3028 (CacheDown!2604) Bool)

(assert (=> b!2784673 (= res!1162233 (valid!3028 cacheDown!1009))))

(declare-fun b!2784674 () Bool)

(declare-fun e!1756967 () Bool)

(assert (=> b!2784674 (= e!1756962 (not e!1756967))))

(declare-fun res!1162230 () Bool)

(assert (=> b!2784674 (=> res!1162230 e!1756967)))

(declare-datatypes ((List!32298 0))(
  ( (Nil!32198) (Cons!32198 (h!37618 C!16424) (t!228440 List!32298)) )
))
(declare-fun testedP!183 () List!32298)

(declare-fun lt!994592 () List!32298)

(declare-fun isPrefix!2580 (List!32298 List!32298) Bool)

(assert (=> b!2784674 (= res!1162230 (not (isPrefix!2580 testedP!183 lt!994592)))))

(declare-fun lt!994591 () List!32298)

(assert (=> b!2784674 (isPrefix!2580 testedP!183 lt!994591)))

(declare-datatypes ((Unit!46438 0))(
  ( (Unit!46439) )
))
(declare-fun lt!994593 () Unit!46438)

(declare-fun testedSuffix!143 () List!32298)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1690 (List!32298 List!32298) Unit!46438)

(assert (=> b!2784674 (= lt!994593 (lemmaConcatTwoListThenFirstIsPrefix!1690 testedP!183 testedSuffix!143))))

(declare-fun b!2784675 () Bool)

(declare-fun e!1756972 () Bool)

(assert (=> b!2784675 (= e!1756972 (not (= testedSuffix!143 Nil!32198)))))

(declare-fun testedPSize!143 () Int)

(declare-fun head!6162 (List!32298) C!16424)

(declare-fun drop!1716 (List!32298 Int) List!32298)

(declare-fun apply!7527 (List!32298 Int) C!16424)

(assert (=> b!2784675 (= (head!6162 (drop!1716 lt!994592 testedPSize!143)) (apply!7527 lt!994592 testedPSize!143))))

(declare-fun lt!994586 () Unit!46438)

(declare-fun lemmaDropApply!922 (List!32298 Int) Unit!46438)

(assert (=> b!2784675 (= lt!994586 (lemmaDropApply!922 lt!994592 testedPSize!143))))

(declare-fun lt!994588 () List!32298)

(declare-fun lt!994595 () List!32298)

(assert (=> b!2784675 (not (or (not (= lt!994595 testedP!183)) (not (= lt!994588 testedSuffix!143))))))

(declare-fun lt!994596 () Unit!46438)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!349 (List!32298 List!32298 List!32298 List!32298) Unit!46438)

(assert (=> b!2784675 (= lt!994596 (lemmaConcatSameAndSameSizesThenSameLists!349 lt!994595 lt!994588 testedP!183 testedSuffix!143))))

(declare-fun mapIsEmpty!17651 () Bool)

(declare-fun mapRes!17651 () Bool)

(assert (=> mapIsEmpty!17651 mapRes!17651))

(declare-fun tp!882506 () Bool)

(declare-fun e!1756966 () Bool)

(declare-fun setRes!23464 () Bool)

(declare-fun setNonEmpty!23464 () Bool)

(declare-fun setElem!23464 () Context!4702)

(declare-fun inv!43739 (Context!4702) Bool)

(assert (=> setNonEmpty!23464 (= setRes!23464 (and tp!882506 (inv!43739 setElem!23464) e!1756966))))

(declare-fun z!3684 () (InoxSet Context!4702))

(declare-fun setRest!23464 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23464 (= z!3684 ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23464 true) setRest!23464))))

(declare-fun b!2784676 () Bool)

(declare-fun e!1756954 () Bool)

(declare-datatypes ((IArray!20019 0))(
  ( (IArray!20020 (innerList!10067 List!32298)) )
))
(declare-datatypes ((Conc!10007 0))(
  ( (Node!10007 (left!24465 Conc!10007) (right!24795 Conc!10007) (csize!20244 Int) (cheight!10218 Int)) (Leaf!15242 (xs!13118 IArray!20019) (csize!20245 Int)) (Empty!10007) )
))
(declare-datatypes ((BalanceConc!19628 0))(
  ( (BalanceConc!19629 (c!452391 Conc!10007)) )
))
(declare-fun totalInput!758 () BalanceConc!19628)

(declare-fun tp!882493 () Bool)

(declare-fun inv!43740 (Conc!10007) Bool)

(assert (=> b!2784676 (= e!1756954 (and (inv!43740 (c!452391 totalInput!758)) tp!882493))))

(declare-fun b!2784677 () Bool)

(declare-fun e!1756964 () Bool)

(declare-fun e!1756965 () Bool)

(assert (=> b!2784677 (= e!1756964 e!1756965)))

(declare-fun setIsEmpty!23464 () Bool)

(assert (=> setIsEmpty!23464 setRes!23464))

(declare-fun b!2784678 () Bool)

(declare-fun e!1756973 () Bool)

(declare-fun e!1756961 () Bool)

(assert (=> b!2784678 (= e!1756973 e!1756961)))

(declare-fun b!2784679 () Bool)

(declare-fun e!1756971 () Bool)

(assert (=> b!2784679 (= e!1756961 e!1756971)))

(declare-fun b!2784680 () Bool)

(declare-fun e!1756963 () Bool)

(declare-fun tp!882504 () Bool)

(assert (=> b!2784680 (= e!1756963 (and tp!882504 mapRes!17651))))

(declare-fun condMapEmpty!17652 () Bool)

(declare-datatypes ((Hashable!3787 0))(
  ( (HashableExt!3786 (__x!21263 Int)) )
))
(declare-datatypes ((tuple2!32502 0))(
  ( (tuple2!32503 (_1!19216 Context!4702) (_2!19216 C!16424)) )
))
(declare-datatypes ((tuple2!32504 0))(
  ( (tuple2!32505 (_1!19217 tuple2!32502) (_2!19217 (InoxSet Context!4702))) )
))
(declare-datatypes ((List!32299 0))(
  ( (Nil!32199) (Cons!32199 (h!37619 tuple2!32504) (t!228441 List!32299)) )
))
(declare-datatypes ((array!13770 0))(
  ( (array!13771 (arr!6138 (Array (_ BitVec 32) List!32299)) (size!25011 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7742 0))(
  ( (LongMapFixedSize!7743 (defaultEntry!4256 Int) (mask!9674 (_ BitVec 32)) (extraKeys!4120 (_ BitVec 32)) (zeroValue!4130 List!32299) (minValue!4130 List!32299) (_size!7785 (_ BitVec 32)) (_keys!4171 array!13766) (_values!4152 array!13770) (_vacant!3932 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15293 0))(
  ( (Cell!15294 (v!33806 LongMapFixedSize!7742)) )
))
(declare-datatypes ((MutLongMap!3871 0))(
  ( (LongMap!3871 (underlying!7945 Cell!15293)) (MutLongMapExt!3870 (__x!21264 Int)) )
))
(declare-datatypes ((Cell!15295 0))(
  ( (Cell!15296 (v!33807 MutLongMap!3871)) )
))
(declare-datatypes ((MutableMap!3777 0))(
  ( (MutableMapExt!3776 (__x!21265 Int)) (HashMap!3777 (underlying!7946 Cell!15295) (hashF!5819 Hashable!3787) (_size!7786 (_ BitVec 32)) (defaultValue!3948 Int)) )
))
(declare-datatypes ((CacheUp!2480 0))(
  ( (CacheUp!2481 (cache!3920 MutableMap!3777)) )
))
(declare-fun cacheUp!890 () CacheUp!2480)

(declare-fun mapDefault!17651 () List!32299)

(assert (=> b!2784680 (= condMapEmpty!17652 (= (arr!6138 (_values!4152 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32299)) mapDefault!17651)))))

(declare-fun b!2784681 () Bool)

(declare-fun res!1162235 () Bool)

(assert (=> b!2784681 (=> res!1162235 e!1756972)))

(declare-datatypes ((tuple2!32506 0))(
  ( (tuple2!32507 (_1!19218 BalanceConc!19628) (_2!19218 BalanceConc!19628)) )
))
(declare-fun lt!994590 () tuple2!32506)

(declare-fun size!25012 (BalanceConc!19628) Int)

(assert (=> b!2784681 (= res!1162235 (not (= (size!25012 (_1!19218 lt!994590)) testedPSize!143)))))

(declare-fun b!2784682 () Bool)

(declare-fun res!1162229 () Bool)

(assert (=> b!2784682 (=> (not res!1162229) (not e!1756962))))

(declare-fun valid!3029 (CacheUp!2480) Bool)

(assert (=> b!2784682 (= res!1162229 (valid!3029 cacheUp!890))))

(declare-fun b!2784683 () Bool)

(declare-fun e!1756968 () Bool)

(assert (=> b!2784683 (= e!1756967 e!1756968)))

(declare-fun res!1162236 () Bool)

(assert (=> b!2784683 (=> res!1162236 e!1756968)))

(declare-fun lostCauseZipper!457 ((InoxSet Context!4702)) Bool)

(assert (=> b!2784683 (= res!1162236 (lostCauseZipper!457 z!3684))))

(declare-fun lt!994597 () List!32298)

(assert (=> b!2784683 (and (= testedSuffix!143 lt!994597) (= lt!994597 testedSuffix!143))))

(declare-fun lt!994589 () Unit!46438)

(declare-fun lemmaSamePrefixThenSameSuffix!1158 (List!32298 List!32298 List!32298 List!32298 List!32298) Unit!46438)

(assert (=> b!2784683 (= lt!994589 (lemmaSamePrefixThenSameSuffix!1158 testedP!183 testedSuffix!143 testedP!183 lt!994597 lt!994592))))

(declare-fun getSuffix!1257 (List!32298 List!32298) List!32298)

(assert (=> b!2784683 (= lt!994597 (getSuffix!1257 lt!994592 testedP!183))))

(declare-fun tp!882491 () Bool)

(declare-fun tp!882488 () Bool)

(declare-fun e!1756974 () Bool)

(declare-fun array_inv!4397 (array!13766) Bool)

(declare-fun array_inv!4398 (array!13770) Bool)

(assert (=> b!2784684 (= e!1756974 (and tp!882501 tp!882491 tp!882488 (array_inv!4397 (_keys!4171 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890))))))) (array_inv!4398 (_values!4152 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890))))))) e!1756963))))

(declare-fun mapNonEmpty!17651 () Bool)

(declare-fun mapRes!17652 () Bool)

(declare-fun tp!882503 () Bool)

(declare-fun tp!882496 () Bool)

(assert (=> mapNonEmpty!17651 (= mapRes!17652 (and tp!882503 tp!882496))))

(declare-fun mapKey!17652 () (_ BitVec 32))

(declare-fun mapValue!17652 () List!32297)

(declare-fun mapRest!17652 () (Array (_ BitVec 32) List!32297))

(assert (=> mapNonEmpty!17651 (= (arr!6137 (_values!4151 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009))))))) (store mapRest!17652 mapKey!17652 mapValue!17652))))

(declare-fun b!2784685 () Bool)

(declare-fun e!1756956 () Bool)

(declare-fun e!1756958 () Bool)

(assert (=> b!2784685 (= e!1756956 e!1756958)))

(declare-fun b!2784686 () Bool)

(declare-fun res!1162231 () Bool)

(assert (=> b!2784686 (=> (not res!1162231) (not e!1756962))))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2784686 (= res!1162231 (= totalInputSize!205 (size!25012 totalInput!758)))))

(declare-fun mapNonEmpty!17652 () Bool)

(declare-fun tp!882489 () Bool)

(declare-fun tp!882497 () Bool)

(assert (=> mapNonEmpty!17652 (= mapRes!17651 (and tp!882489 tp!882497))))

(declare-fun mapRest!17651 () (Array (_ BitVec 32) List!32299))

(declare-fun mapKey!17651 () (_ BitVec 32))

(declare-fun mapValue!17651 () List!32299)

(assert (=> mapNonEmpty!17652 (= (arr!6138 (_values!4152 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890))))))) (store mapRest!17651 mapKey!17651 mapValue!17651))))

(declare-fun tp!882498 () Bool)

(declare-fun e!1756957 () Bool)

(declare-fun tp!882505 () Bool)

(declare-fun array_inv!4399 (array!13768) Bool)

(assert (=> b!2784687 (= e!1756971 (and tp!882494 tp!882505 tp!882498 (array_inv!4397 (_keys!4170 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009))))))) (array_inv!4399 (_values!4151 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009))))))) e!1756957))))

(declare-fun b!2784688 () Bool)

(assert (=> b!2784688 (= e!1756965 e!1756974)))

(declare-fun mapIsEmpty!17652 () Bool)

(assert (=> mapIsEmpty!17652 mapRes!17652))

(declare-fun res!1162232 () Bool)

(assert (=> start!269098 (=> (not res!1162232) (not e!1756962))))

(assert (=> start!269098 (= res!1162232 (= lt!994591 lt!994592))))

(declare-fun list!12129 (BalanceConc!19628) List!32298)

(assert (=> start!269098 (= lt!994592 (list!12129 totalInput!758))))

(declare-fun ++!7957 (List!32298 List!32298) List!32298)

(assert (=> start!269098 (= lt!994591 (++!7957 testedP!183 testedSuffix!143))))

(assert (=> start!269098 e!1756962))

(declare-fun inv!43741 (BalanceConc!19628) Bool)

(assert (=> start!269098 (and (inv!43741 totalInput!758) e!1756954)))

(declare-fun condSetEmpty!23464 () Bool)

(assert (=> start!269098 (= condSetEmpty!23464 (= z!3684 ((as const (Array Context!4702 Bool)) false)))))

(assert (=> start!269098 setRes!23464))

(assert (=> start!269098 true))

(declare-fun e!1756955 () Bool)

(assert (=> start!269098 e!1756955))

(declare-fun e!1756953 () Bool)

(assert (=> start!269098 e!1756953))

(declare-fun e!1756975 () Bool)

(declare-fun inv!43742 (CacheDown!2604) Bool)

(assert (=> start!269098 (and (inv!43742 cacheDown!1009) e!1756975)))

(declare-fun inv!43743 (CacheUp!2480) Bool)

(assert (=> start!269098 (and (inv!43743 cacheUp!890) e!1756956)))

(declare-fun e!1756976 () Bool)

(declare-fun e!1756959 () Bool)

(assert (=> b!2784689 (= e!1756976 (and e!1756959 tp!882500))))

(declare-fun b!2784690 () Bool)

(declare-fun e!1756970 () Bool)

(declare-fun lt!994594 () MutLongMap!3871)

(get-info :version)

(assert (=> b!2784690 (= e!1756970 (and e!1756964 ((_ is LongMap!3871) lt!994594)))))

(assert (=> b!2784690 (= lt!994594 (v!33807 (underlying!7946 (cache!3920 cacheUp!890))))))

(declare-fun b!2784691 () Bool)

(declare-fun tp!882502 () Bool)

(assert (=> b!2784691 (= e!1756966 tp!882502)))

(declare-fun b!2784692 () Bool)

(declare-fun lt!994587 () MutLongMap!3870)

(assert (=> b!2784692 (= e!1756959 (and e!1756973 ((_ is LongMap!3870) lt!994587)))))

(assert (=> b!2784692 (= lt!994587 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009))))))

(declare-fun b!2784693 () Bool)

(declare-fun tp_is_empty!14079 () Bool)

(declare-fun tp!882490 () Bool)

(assert (=> b!2784693 (= e!1756953 (and tp_is_empty!14079 tp!882490))))

(declare-fun b!2784694 () Bool)

(declare-fun tp!882499 () Bool)

(assert (=> b!2784694 (= e!1756955 (and tp_is_empty!14079 tp!882499))))

(declare-fun b!2784695 () Bool)

(declare-fun res!1162234 () Bool)

(assert (=> b!2784695 (=> res!1162234 e!1756968)))

(assert (=> b!2784695 (= res!1162234 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2784696 () Bool)

(declare-fun res!1162237 () Bool)

(assert (=> b!2784696 (=> (not res!1162237) (not e!1756962))))

(declare-fun size!25013 (List!32298) Int)

(assert (=> b!2784696 (= res!1162237 (= testedPSize!143 (size!25013 testedP!183)))))

(declare-fun b!2784697 () Bool)

(assert (=> b!2784697 (= e!1756975 e!1756976)))

(declare-fun b!2784698 () Bool)

(declare-fun tp!882492 () Bool)

(assert (=> b!2784698 (= e!1756957 (and tp!882492 mapRes!17652))))

(declare-fun condMapEmpty!17651 () Bool)

(declare-fun mapDefault!17652 () List!32297)

(assert (=> b!2784698 (= condMapEmpty!17651 (= (arr!6137 (_values!4151 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32297)) mapDefault!17652)))))

(assert (=> b!2784699 (= e!1756958 (and e!1756970 tp!882495))))

(declare-fun b!2784700 () Bool)

(assert (=> b!2784700 (= e!1756968 e!1756972)))

(declare-fun res!1162228 () Bool)

(assert (=> b!2784700 (=> res!1162228 e!1756972)))

(assert (=> b!2784700 (= res!1162228 (not (= (++!7957 lt!994595 lt!994588) lt!994592)))))

(assert (=> b!2784700 (= lt!994588 (list!12129 (_2!19218 lt!994590)))))

(assert (=> b!2784700 (= lt!994595 (list!12129 (_1!19218 lt!994590)))))

(declare-fun splitAt!132 (BalanceConc!19628 Int) tuple2!32506)

(assert (=> b!2784700 (= lt!994590 (splitAt!132 totalInput!758 testedPSize!143))))

(assert (= (and start!269098 res!1162232) b!2784696))

(assert (= (and b!2784696 res!1162237) b!2784686))

(assert (= (and b!2784686 res!1162231) b!2784682))

(assert (= (and b!2784682 res!1162229) b!2784673))

(assert (= (and b!2784673 res!1162233) b!2784674))

(assert (= (and b!2784674 (not res!1162230)) b!2784683))

(assert (= (and b!2784683 (not res!1162236)) b!2784695))

(assert (= (and b!2784695 (not res!1162234)) b!2784700))

(assert (= (and b!2784700 (not res!1162228)) b!2784681))

(assert (= (and b!2784681 (not res!1162235)) b!2784675))

(assert (= start!269098 b!2784676))

(assert (= (and start!269098 condSetEmpty!23464) setIsEmpty!23464))

(assert (= (and start!269098 (not condSetEmpty!23464)) setNonEmpty!23464))

(assert (= setNonEmpty!23464 b!2784691))

(assert (= (and start!269098 ((_ is Cons!32198) testedP!183)) b!2784694))

(assert (= (and start!269098 ((_ is Cons!32198) testedSuffix!143)) b!2784693))

(assert (= (and b!2784698 condMapEmpty!17651) mapIsEmpty!17652))

(assert (= (and b!2784698 (not condMapEmpty!17651)) mapNonEmpty!17651))

(assert (= b!2784687 b!2784698))

(assert (= b!2784679 b!2784687))

(assert (= b!2784678 b!2784679))

(assert (= (and b!2784692 ((_ is LongMap!3870) (v!33805 (underlying!7944 (cache!3919 cacheDown!1009))))) b!2784678))

(assert (= b!2784689 b!2784692))

(assert (= (and b!2784697 ((_ is HashMap!3776) (cache!3919 cacheDown!1009))) b!2784689))

(assert (= start!269098 b!2784697))

(assert (= (and b!2784680 condMapEmpty!17652) mapIsEmpty!17651))

(assert (= (and b!2784680 (not condMapEmpty!17652)) mapNonEmpty!17652))

(assert (= b!2784684 b!2784680))

(assert (= b!2784688 b!2784684))

(assert (= b!2784677 b!2784688))

(assert (= (and b!2784690 ((_ is LongMap!3871) (v!33807 (underlying!7946 (cache!3920 cacheUp!890))))) b!2784677))

(assert (= b!2784699 b!2784690))

(assert (= (and b!2784685 ((_ is HashMap!3777) (cache!3920 cacheUp!890))) b!2784699))

(assert (= start!269098 b!2784685))

(declare-fun m!3215223 () Bool)

(assert (=> b!2784686 m!3215223))

(declare-fun m!3215225 () Bool)

(assert (=> b!2784684 m!3215225))

(declare-fun m!3215227 () Bool)

(assert (=> b!2784684 m!3215227))

(declare-fun m!3215229 () Bool)

(assert (=> mapNonEmpty!17651 m!3215229))

(declare-fun m!3215231 () Bool)

(assert (=> b!2784687 m!3215231))

(declare-fun m!3215233 () Bool)

(assert (=> b!2784687 m!3215233))

(declare-fun m!3215235 () Bool)

(assert (=> b!2784682 m!3215235))

(declare-fun m!3215237 () Bool)

(assert (=> setNonEmpty!23464 m!3215237))

(declare-fun m!3215239 () Bool)

(assert (=> b!2784674 m!3215239))

(declare-fun m!3215241 () Bool)

(assert (=> b!2784674 m!3215241))

(declare-fun m!3215243 () Bool)

(assert (=> b!2784674 m!3215243))

(declare-fun m!3215245 () Bool)

(assert (=> start!269098 m!3215245))

(declare-fun m!3215247 () Bool)

(assert (=> start!269098 m!3215247))

(declare-fun m!3215249 () Bool)

(assert (=> start!269098 m!3215249))

(declare-fun m!3215251 () Bool)

(assert (=> start!269098 m!3215251))

(declare-fun m!3215253 () Bool)

(assert (=> start!269098 m!3215253))

(declare-fun m!3215255 () Bool)

(assert (=> b!2784696 m!3215255))

(declare-fun m!3215257 () Bool)

(assert (=> mapNonEmpty!17652 m!3215257))

(declare-fun m!3215259 () Bool)

(assert (=> b!2784683 m!3215259))

(declare-fun m!3215261 () Bool)

(assert (=> b!2784683 m!3215261))

(declare-fun m!3215263 () Bool)

(assert (=> b!2784683 m!3215263))

(declare-fun m!3215265 () Bool)

(assert (=> b!2784673 m!3215265))

(declare-fun m!3215267 () Bool)

(assert (=> b!2784676 m!3215267))

(declare-fun m!3215269 () Bool)

(assert (=> b!2784700 m!3215269))

(declare-fun m!3215271 () Bool)

(assert (=> b!2784700 m!3215271))

(declare-fun m!3215273 () Bool)

(assert (=> b!2784700 m!3215273))

(declare-fun m!3215275 () Bool)

(assert (=> b!2784700 m!3215275))

(declare-fun m!3215277 () Bool)

(assert (=> b!2784681 m!3215277))

(declare-fun m!3215279 () Bool)

(assert (=> b!2784675 m!3215279))

(declare-fun m!3215281 () Bool)

(assert (=> b!2784675 m!3215281))

(declare-fun m!3215283 () Bool)

(assert (=> b!2784675 m!3215283))

(declare-fun m!3215285 () Bool)

(assert (=> b!2784675 m!3215285))

(declare-fun m!3215287 () Bool)

(assert (=> b!2784675 m!3215287))

(assert (=> b!2784675 m!3215285))

(check-sat b_and!203437 (not start!269098) b_and!203435 (not b!2784698) (not b!2784684) b_and!203431 (not setNonEmpty!23464) (not b!2784693) (not b!2784687) (not b!2784691) (not mapNonEmpty!17651) (not b_next!79399) b_and!203433 (not b_next!79401) (not b!2784696) (not b!2784682) (not b!2784680) (not b!2784694) (not b!2784676) (not b!2784683) (not b_next!79397) (not mapNonEmpty!17652) (not b!2784675) (not b!2784673) tp_is_empty!14079 (not b!2784681) (not b!2784674) (not b!2784700) (not b!2784686) (not b_next!79403))
(check-sat b_and!203437 (not b_next!79397) b_and!203435 b_and!203431 (not b_next!79399) b_and!203433 (not b_next!79403) (not b_next!79401))
(get-model)

(declare-fun d!810471 () Bool)

(declare-fun lt!994600 () Int)

(assert (=> d!810471 (= lt!994600 (size!25013 (list!12129 (_1!19218 lt!994590))))))

(declare-fun size!25014 (Conc!10007) Int)

(assert (=> d!810471 (= lt!994600 (size!25014 (c!452391 (_1!19218 lt!994590))))))

(assert (=> d!810471 (= (size!25012 (_1!19218 lt!994590)) lt!994600)))

(declare-fun bs!510871 () Bool)

(assert (= bs!510871 d!810471))

(assert (=> bs!510871 m!3215273))

(assert (=> bs!510871 m!3215273))

(declare-fun m!3215289 () Bool)

(assert (=> bs!510871 m!3215289))

(declare-fun m!3215291 () Bool)

(assert (=> bs!510871 m!3215291))

(assert (=> b!2784681 d!810471))

(declare-fun d!810473 () Bool)

(declare-fun validCacheMapDown!408 (MutableMap!3776) Bool)

(assert (=> d!810473 (= (valid!3028 cacheDown!1009) (validCacheMapDown!408 (cache!3919 cacheDown!1009)))))

(declare-fun bs!510872 () Bool)

(assert (= bs!510872 d!810473))

(declare-fun m!3215293 () Bool)

(assert (=> bs!510872 m!3215293))

(assert (=> b!2784673 d!810473))

(declare-fun b!2784711 () Bool)

(declare-fun e!1756985 () Bool)

(declare-fun tail!4399 (List!32298) List!32298)

(assert (=> b!2784711 (= e!1756985 (isPrefix!2580 (tail!4399 testedP!183) (tail!4399 lt!994592)))))

(declare-fun b!2784710 () Bool)

(declare-fun res!1162249 () Bool)

(assert (=> b!2784710 (=> (not res!1162249) (not e!1756985))))

(assert (=> b!2784710 (= res!1162249 (= (head!6162 testedP!183) (head!6162 lt!994592)))))

(declare-fun b!2784712 () Bool)

(declare-fun e!1756984 () Bool)

(assert (=> b!2784712 (= e!1756984 (>= (size!25013 lt!994592) (size!25013 testedP!183)))))

(declare-fun b!2784709 () Bool)

(declare-fun e!1756983 () Bool)

(assert (=> b!2784709 (= e!1756983 e!1756985)))

(declare-fun res!1162248 () Bool)

(assert (=> b!2784709 (=> (not res!1162248) (not e!1756985))))

(assert (=> b!2784709 (= res!1162248 (not ((_ is Nil!32198) lt!994592)))))

(declare-fun d!810475 () Bool)

(assert (=> d!810475 e!1756984))

(declare-fun res!1162247 () Bool)

(assert (=> d!810475 (=> res!1162247 e!1756984)))

(declare-fun lt!994603 () Bool)

(assert (=> d!810475 (= res!1162247 (not lt!994603))))

(assert (=> d!810475 (= lt!994603 e!1756983)))

(declare-fun res!1162246 () Bool)

(assert (=> d!810475 (=> res!1162246 e!1756983)))

(assert (=> d!810475 (= res!1162246 ((_ is Nil!32198) testedP!183))))

(assert (=> d!810475 (= (isPrefix!2580 testedP!183 lt!994592) lt!994603)))

(assert (= (and d!810475 (not res!1162246)) b!2784709))

(assert (= (and b!2784709 res!1162248) b!2784710))

(assert (= (and b!2784710 res!1162249) b!2784711))

(assert (= (and d!810475 (not res!1162247)) b!2784712))

(declare-fun m!3215295 () Bool)

(assert (=> b!2784711 m!3215295))

(declare-fun m!3215297 () Bool)

(assert (=> b!2784711 m!3215297))

(assert (=> b!2784711 m!3215295))

(assert (=> b!2784711 m!3215297))

(declare-fun m!3215299 () Bool)

(assert (=> b!2784711 m!3215299))

(declare-fun m!3215301 () Bool)

(assert (=> b!2784710 m!3215301))

(declare-fun m!3215303 () Bool)

(assert (=> b!2784710 m!3215303))

(declare-fun m!3215305 () Bool)

(assert (=> b!2784712 m!3215305))

(assert (=> b!2784712 m!3215255))

(assert (=> b!2784674 d!810475))

(declare-fun b!2784715 () Bool)

(declare-fun e!1756988 () Bool)

(assert (=> b!2784715 (= e!1756988 (isPrefix!2580 (tail!4399 testedP!183) (tail!4399 lt!994591)))))

(declare-fun b!2784714 () Bool)

(declare-fun res!1162253 () Bool)

(assert (=> b!2784714 (=> (not res!1162253) (not e!1756988))))

(assert (=> b!2784714 (= res!1162253 (= (head!6162 testedP!183) (head!6162 lt!994591)))))

(declare-fun b!2784716 () Bool)

(declare-fun e!1756987 () Bool)

(assert (=> b!2784716 (= e!1756987 (>= (size!25013 lt!994591) (size!25013 testedP!183)))))

(declare-fun b!2784713 () Bool)

(declare-fun e!1756986 () Bool)

(assert (=> b!2784713 (= e!1756986 e!1756988)))

(declare-fun res!1162252 () Bool)

(assert (=> b!2784713 (=> (not res!1162252) (not e!1756988))))

(assert (=> b!2784713 (= res!1162252 (not ((_ is Nil!32198) lt!994591)))))

(declare-fun d!810477 () Bool)

(assert (=> d!810477 e!1756987))

(declare-fun res!1162251 () Bool)

(assert (=> d!810477 (=> res!1162251 e!1756987)))

(declare-fun lt!994604 () Bool)

(assert (=> d!810477 (= res!1162251 (not lt!994604))))

(assert (=> d!810477 (= lt!994604 e!1756986)))

(declare-fun res!1162250 () Bool)

(assert (=> d!810477 (=> res!1162250 e!1756986)))

(assert (=> d!810477 (= res!1162250 ((_ is Nil!32198) testedP!183))))

(assert (=> d!810477 (= (isPrefix!2580 testedP!183 lt!994591) lt!994604)))

(assert (= (and d!810477 (not res!1162250)) b!2784713))

(assert (= (and b!2784713 res!1162252) b!2784714))

(assert (= (and b!2784714 res!1162253) b!2784715))

(assert (= (and d!810477 (not res!1162251)) b!2784716))

(assert (=> b!2784715 m!3215295))

(declare-fun m!3215307 () Bool)

(assert (=> b!2784715 m!3215307))

(assert (=> b!2784715 m!3215295))

(assert (=> b!2784715 m!3215307))

(declare-fun m!3215309 () Bool)

(assert (=> b!2784715 m!3215309))

(assert (=> b!2784714 m!3215301))

(declare-fun m!3215311 () Bool)

(assert (=> b!2784714 m!3215311))

(declare-fun m!3215313 () Bool)

(assert (=> b!2784716 m!3215313))

(assert (=> b!2784716 m!3215255))

(assert (=> b!2784674 d!810477))

(declare-fun d!810479 () Bool)

(assert (=> d!810479 (isPrefix!2580 testedP!183 (++!7957 testedP!183 testedSuffix!143))))

(declare-fun lt!994607 () Unit!46438)

(declare-fun choose!16331 (List!32298 List!32298) Unit!46438)

(assert (=> d!810479 (= lt!994607 (choose!16331 testedP!183 testedSuffix!143))))

(assert (=> d!810479 (= (lemmaConcatTwoListThenFirstIsPrefix!1690 testedP!183 testedSuffix!143) lt!994607)))

(declare-fun bs!510873 () Bool)

(assert (= bs!510873 d!810479))

(assert (=> bs!510873 m!3215253))

(assert (=> bs!510873 m!3215253))

(declare-fun m!3215315 () Bool)

(assert (=> bs!510873 m!3215315))

(declare-fun m!3215317 () Bool)

(assert (=> bs!510873 m!3215317))

(assert (=> b!2784674 d!810479))

(declare-fun b!2784725 () Bool)

(declare-fun e!1756993 () List!32298)

(assert (=> b!2784725 (= e!1756993 lt!994588)))

(declare-fun b!2784727 () Bool)

(declare-fun res!1162258 () Bool)

(declare-fun e!1756994 () Bool)

(assert (=> b!2784727 (=> (not res!1162258) (not e!1756994))))

(declare-fun lt!994610 () List!32298)

(assert (=> b!2784727 (= res!1162258 (= (size!25013 lt!994610) (+ (size!25013 lt!994595) (size!25013 lt!994588))))))

(declare-fun b!2784726 () Bool)

(assert (=> b!2784726 (= e!1756993 (Cons!32198 (h!37618 lt!994595) (++!7957 (t!228440 lt!994595) lt!994588)))))

(declare-fun d!810481 () Bool)

(assert (=> d!810481 e!1756994))

(declare-fun res!1162259 () Bool)

(assert (=> d!810481 (=> (not res!1162259) (not e!1756994))))

(declare-fun content!4518 (List!32298) (InoxSet C!16424))

(assert (=> d!810481 (= res!1162259 (= (content!4518 lt!994610) ((_ map or) (content!4518 lt!994595) (content!4518 lt!994588))))))

(assert (=> d!810481 (= lt!994610 e!1756993)))

(declare-fun c!452394 () Bool)

(assert (=> d!810481 (= c!452394 ((_ is Nil!32198) lt!994595))))

(assert (=> d!810481 (= (++!7957 lt!994595 lt!994588) lt!994610)))

(declare-fun b!2784728 () Bool)

(assert (=> b!2784728 (= e!1756994 (or (not (= lt!994588 Nil!32198)) (= lt!994610 lt!994595)))))

(assert (= (and d!810481 c!452394) b!2784725))

(assert (= (and d!810481 (not c!452394)) b!2784726))

(assert (= (and d!810481 res!1162259) b!2784727))

(assert (= (and b!2784727 res!1162258) b!2784728))

(declare-fun m!3215319 () Bool)

(assert (=> b!2784727 m!3215319))

(declare-fun m!3215321 () Bool)

(assert (=> b!2784727 m!3215321))

(declare-fun m!3215323 () Bool)

(assert (=> b!2784727 m!3215323))

(declare-fun m!3215325 () Bool)

(assert (=> b!2784726 m!3215325))

(declare-fun m!3215327 () Bool)

(assert (=> d!810481 m!3215327))

(declare-fun m!3215329 () Bool)

(assert (=> d!810481 m!3215329))

(declare-fun m!3215331 () Bool)

(assert (=> d!810481 m!3215331))

(assert (=> b!2784700 d!810481))

(declare-fun d!810483 () Bool)

(declare-fun list!12130 (Conc!10007) List!32298)

(assert (=> d!810483 (= (list!12129 (_2!19218 lt!994590)) (list!12130 (c!452391 (_2!19218 lt!994590))))))

(declare-fun bs!510874 () Bool)

(assert (= bs!510874 d!810483))

(declare-fun m!3215333 () Bool)

(assert (=> bs!510874 m!3215333))

(assert (=> b!2784700 d!810483))

(declare-fun d!810485 () Bool)

(assert (=> d!810485 (= (list!12129 (_1!19218 lt!994590)) (list!12130 (c!452391 (_1!19218 lt!994590))))))

(declare-fun bs!510875 () Bool)

(assert (= bs!510875 d!810485))

(declare-fun m!3215335 () Bool)

(assert (=> bs!510875 m!3215335))

(assert (=> b!2784700 d!810485))

(declare-fun d!810487 () Bool)

(declare-fun e!1756997 () Bool)

(assert (=> d!810487 e!1756997))

(declare-fun res!1162265 () Bool)

(assert (=> d!810487 (=> (not res!1162265) (not e!1756997))))

(declare-fun lt!994615 () tuple2!32506)

(declare-fun isBalanced!3053 (Conc!10007) Bool)

(assert (=> d!810487 (= res!1162265 (isBalanced!3053 (c!452391 (_1!19218 lt!994615))))))

(declare-datatypes ((tuple2!32508 0))(
  ( (tuple2!32509 (_1!19219 Conc!10007) (_2!19219 Conc!10007)) )
))
(declare-fun lt!994616 () tuple2!32508)

(assert (=> d!810487 (= lt!994615 (tuple2!32507 (BalanceConc!19629 (_1!19219 lt!994616)) (BalanceConc!19629 (_2!19219 lt!994616))))))

(declare-fun splitAt!133 (Conc!10007 Int) tuple2!32508)

(assert (=> d!810487 (= lt!994616 (splitAt!133 (c!452391 totalInput!758) testedPSize!143))))

(assert (=> d!810487 (isBalanced!3053 (c!452391 totalInput!758))))

(assert (=> d!810487 (= (splitAt!132 totalInput!758 testedPSize!143) lt!994615)))

(declare-fun b!2784733 () Bool)

(declare-fun res!1162264 () Bool)

(assert (=> b!2784733 (=> (not res!1162264) (not e!1756997))))

(assert (=> b!2784733 (= res!1162264 (isBalanced!3053 (c!452391 (_2!19218 lt!994615))))))

(declare-fun b!2784734 () Bool)

(declare-datatypes ((tuple2!32510 0))(
  ( (tuple2!32511 (_1!19220 List!32298) (_2!19220 List!32298)) )
))
(declare-fun splitAtIndex!56 (List!32298 Int) tuple2!32510)

(assert (=> b!2784734 (= e!1756997 (= (tuple2!32511 (list!12129 (_1!19218 lt!994615)) (list!12129 (_2!19218 lt!994615))) (splitAtIndex!56 (list!12129 totalInput!758) testedPSize!143)))))

(assert (= (and d!810487 res!1162265) b!2784733))

(assert (= (and b!2784733 res!1162264) b!2784734))

(declare-fun m!3215337 () Bool)

(assert (=> d!810487 m!3215337))

(declare-fun m!3215339 () Bool)

(assert (=> d!810487 m!3215339))

(declare-fun m!3215341 () Bool)

(assert (=> d!810487 m!3215341))

(declare-fun m!3215343 () Bool)

(assert (=> b!2784733 m!3215343))

(declare-fun m!3215345 () Bool)

(assert (=> b!2784734 m!3215345))

(declare-fun m!3215347 () Bool)

(assert (=> b!2784734 m!3215347))

(assert (=> b!2784734 m!3215245))

(assert (=> b!2784734 m!3215245))

(declare-fun m!3215349 () Bool)

(assert (=> b!2784734 m!3215349))

(assert (=> b!2784700 d!810487))

(declare-fun d!810489 () Bool)

(declare-fun validCacheMapUp!377 (MutableMap!3777) Bool)

(assert (=> d!810489 (= (valid!3029 cacheUp!890) (validCacheMapUp!377 (cache!3920 cacheUp!890)))))

(declare-fun bs!510876 () Bool)

(assert (= bs!510876 d!810489))

(declare-fun m!3215351 () Bool)

(assert (=> bs!510876 m!3215351))

(assert (=> b!2784682 d!810489))

(declare-fun bs!510877 () Bool)

(declare-fun b!2784739 () Bool)

(declare-fun d!810491 () Bool)

(assert (= bs!510877 (and b!2784739 d!810491)))

(declare-fun lambda!102199 () Int)

(declare-fun lambda!102198 () Int)

(assert (=> bs!510877 (not (= lambda!102199 lambda!102198))))

(declare-fun bs!510878 () Bool)

(declare-fun b!2784740 () Bool)

(assert (= bs!510878 (and b!2784740 d!810491)))

(declare-fun lambda!102200 () Int)

(assert (=> bs!510878 (not (= lambda!102200 lambda!102198))))

(declare-fun bs!510879 () Bool)

(assert (= bs!510879 (and b!2784740 b!2784739)))

(assert (=> bs!510879 (= lambda!102200 lambda!102199)))

(declare-fun e!1757004 () Unit!46438)

(declare-fun Unit!46440 () Unit!46438)

(assert (=> b!2784740 (= e!1757004 Unit!46440)))

(declare-datatypes ((List!32300 0))(
  ( (Nil!32200) (Cons!32200 (h!37620 Context!4702) (t!228442 List!32300)) )
))
(declare-fun lt!994634 () List!32300)

(declare-fun call!182476 () List!32300)

(assert (=> b!2784740 (= lt!994634 call!182476)))

(declare-fun lt!994639 () Unit!46438)

(declare-fun lemmaForallThenNotExists!90 (List!32300 Int) Unit!46438)

(assert (=> b!2784740 (= lt!994639 (lemmaForallThenNotExists!90 lt!994634 lambda!102198))))

(declare-fun call!182477 () Bool)

(assert (=> b!2784740 (not call!182477)))

(declare-fun lt!994637 () Unit!46438)

(assert (=> b!2784740 (= lt!994637 lt!994639)))

(declare-fun c!452405 () Bool)

(declare-fun lt!994640 () List!32300)

(declare-fun bm!182472 () Bool)

(declare-fun exists!986 (List!32300 Int) Bool)

(assert (=> bm!182472 (= call!182477 (exists!986 (ite c!452405 lt!994640 lt!994634) (ite c!452405 lambda!102199 lambda!102200)))))

(declare-fun Unit!46441 () Unit!46438)

(assert (=> b!2784739 (= e!1757004 Unit!46441)))

(assert (=> b!2784739 (= lt!994640 call!182476)))

(declare-fun lt!994638 () Unit!46438)

(declare-fun lemmaNotForallThenExists!90 (List!32300 Int) Unit!46438)

(assert (=> b!2784739 (= lt!994638 (lemmaNotForallThenExists!90 lt!994640 lambda!102198))))

(assert (=> b!2784739 call!182477))

(declare-fun lt!994636 () Unit!46438)

(assert (=> b!2784739 (= lt!994636 lt!994638)))

(declare-fun bm!182471 () Bool)

(declare-fun toList!1853 ((InoxSet Context!4702)) List!32300)

(assert (=> bm!182471 (= call!182476 (toList!1853 z!3684))))

(declare-fun lt!994635 () Bool)

(declare-datatypes ((Option!6268 0))(
  ( (None!6267) (Some!6267 (v!33808 List!32298)) )
))
(declare-fun isEmpty!18112 (Option!6268) Bool)

(declare-fun getLanguageWitness!198 ((InoxSet Context!4702)) Option!6268)

(assert (=> d!810491 (= lt!994635 (isEmpty!18112 (getLanguageWitness!198 z!3684)))))

(declare-fun forall!6651 ((InoxSet Context!4702) Int) Bool)

(assert (=> d!810491 (= lt!994635 (forall!6651 z!3684 lambda!102198))))

(declare-fun lt!994633 () Unit!46438)

(assert (=> d!810491 (= lt!994633 e!1757004)))

(assert (=> d!810491 (= c!452405 (not (forall!6651 z!3684 lambda!102198)))))

(assert (=> d!810491 (= (lostCauseZipper!457 z!3684) lt!994635)))

(assert (= (and d!810491 c!452405) b!2784739))

(assert (= (and d!810491 (not c!452405)) b!2784740))

(assert (= (or b!2784739 b!2784740) bm!182471))

(assert (= (or b!2784739 b!2784740) bm!182472))

(declare-fun m!3215353 () Bool)

(assert (=> d!810491 m!3215353))

(assert (=> d!810491 m!3215353))

(declare-fun m!3215355 () Bool)

(assert (=> d!810491 m!3215355))

(declare-fun m!3215357 () Bool)

(assert (=> d!810491 m!3215357))

(assert (=> d!810491 m!3215357))

(declare-fun m!3215359 () Bool)

(assert (=> bm!182472 m!3215359))

(declare-fun m!3215361 () Bool)

(assert (=> bm!182471 m!3215361))

(declare-fun m!3215363 () Bool)

(assert (=> b!2784739 m!3215363))

(declare-fun m!3215365 () Bool)

(assert (=> b!2784740 m!3215365))

(assert (=> b!2784683 d!810491))

(declare-fun d!810493 () Bool)

(assert (=> d!810493 (= testedSuffix!143 lt!994597)))

(declare-fun lt!994643 () Unit!46438)

(declare-fun choose!16332 (List!32298 List!32298 List!32298 List!32298 List!32298) Unit!46438)

(assert (=> d!810493 (= lt!994643 (choose!16332 testedP!183 testedSuffix!143 testedP!183 lt!994597 lt!994592))))

(assert (=> d!810493 (isPrefix!2580 testedP!183 lt!994592)))

(assert (=> d!810493 (= (lemmaSamePrefixThenSameSuffix!1158 testedP!183 testedSuffix!143 testedP!183 lt!994597 lt!994592) lt!994643)))

(declare-fun bs!510880 () Bool)

(assert (= bs!510880 d!810493))

(declare-fun m!3215367 () Bool)

(assert (=> bs!510880 m!3215367))

(assert (=> bs!510880 m!3215239))

(assert (=> b!2784683 d!810493))

(declare-fun d!810495 () Bool)

(declare-fun lt!994646 () List!32298)

(assert (=> d!810495 (= (++!7957 testedP!183 lt!994646) lt!994592)))

(declare-fun e!1757007 () List!32298)

(assert (=> d!810495 (= lt!994646 e!1757007)))

(declare-fun c!452408 () Bool)

(assert (=> d!810495 (= c!452408 ((_ is Cons!32198) testedP!183))))

(assert (=> d!810495 (>= (size!25013 lt!994592) (size!25013 testedP!183))))

(assert (=> d!810495 (= (getSuffix!1257 lt!994592 testedP!183) lt!994646)))

(declare-fun b!2784745 () Bool)

(assert (=> b!2784745 (= e!1757007 (getSuffix!1257 (tail!4399 lt!994592) (t!228440 testedP!183)))))

(declare-fun b!2784746 () Bool)

(assert (=> b!2784746 (= e!1757007 lt!994592)))

(assert (= (and d!810495 c!452408) b!2784745))

(assert (= (and d!810495 (not c!452408)) b!2784746))

(declare-fun m!3215369 () Bool)

(assert (=> d!810495 m!3215369))

(assert (=> d!810495 m!3215305))

(assert (=> d!810495 m!3215255))

(assert (=> b!2784745 m!3215297))

(assert (=> b!2784745 m!3215297))

(declare-fun m!3215371 () Bool)

(assert (=> b!2784745 m!3215371))

(assert (=> b!2784683 d!810495))

(declare-fun b!2784765 () Bool)

(declare-fun e!1757019 () Int)

(declare-fun e!1757020 () Int)

(assert (=> b!2784765 (= e!1757019 e!1757020)))

(declare-fun c!452420 () Bool)

(declare-fun call!182480 () Int)

(assert (=> b!2784765 (= c!452420 (>= testedPSize!143 call!182480))))

(declare-fun b!2784766 () Bool)

(declare-fun e!1757021 () Bool)

(declare-fun lt!994649 () List!32298)

(assert (=> b!2784766 (= e!1757021 (= (size!25013 lt!994649) e!1757019))))

(declare-fun c!452418 () Bool)

(assert (=> b!2784766 (= c!452418 (<= testedPSize!143 0))))

(declare-fun b!2784767 () Bool)

(declare-fun e!1757022 () List!32298)

(assert (=> b!2784767 (= e!1757022 (drop!1716 (t!228440 lt!994592) (- testedPSize!143 1)))))

(declare-fun b!2784768 () Bool)

(assert (=> b!2784768 (= e!1757019 call!182480)))

(declare-fun b!2784769 () Bool)

(declare-fun e!1757018 () List!32298)

(assert (=> b!2784769 (= e!1757018 e!1757022)))

(declare-fun c!452419 () Bool)

(assert (=> b!2784769 (= c!452419 (<= testedPSize!143 0))))

(declare-fun b!2784770 () Bool)

(assert (=> b!2784770 (= e!1757022 lt!994592)))

(declare-fun bm!182475 () Bool)

(assert (=> bm!182475 (= call!182480 (size!25013 lt!994592))))

(declare-fun b!2784772 () Bool)

(assert (=> b!2784772 (= e!1757020 (- call!182480 testedPSize!143))))

(declare-fun b!2784773 () Bool)

(assert (=> b!2784773 (= e!1757020 0)))

(declare-fun b!2784771 () Bool)

(assert (=> b!2784771 (= e!1757018 Nil!32198)))

(declare-fun d!810497 () Bool)

(assert (=> d!810497 e!1757021))

(declare-fun res!1162268 () Bool)

(assert (=> d!810497 (=> (not res!1162268) (not e!1757021))))

(assert (=> d!810497 (= res!1162268 (= ((_ map implies) (content!4518 lt!994649) (content!4518 lt!994592)) ((as const (InoxSet C!16424)) true)))))

(assert (=> d!810497 (= lt!994649 e!1757018)))

(declare-fun c!452417 () Bool)

(assert (=> d!810497 (= c!452417 ((_ is Nil!32198) lt!994592))))

(assert (=> d!810497 (= (drop!1716 lt!994592 testedPSize!143) lt!994649)))

(assert (= (and d!810497 c!452417) b!2784771))

(assert (= (and d!810497 (not c!452417)) b!2784769))

(assert (= (and b!2784769 c!452419) b!2784770))

(assert (= (and b!2784769 (not c!452419)) b!2784767))

(assert (= (and d!810497 res!1162268) b!2784766))

(assert (= (and b!2784766 c!452418) b!2784768))

(assert (= (and b!2784766 (not c!452418)) b!2784765))

(assert (= (and b!2784765 c!452420) b!2784773))

(assert (= (and b!2784765 (not c!452420)) b!2784772))

(assert (= (or b!2784768 b!2784765 b!2784772) bm!182475))

(declare-fun m!3215373 () Bool)

(assert (=> b!2784766 m!3215373))

(declare-fun m!3215375 () Bool)

(assert (=> b!2784767 m!3215375))

(assert (=> bm!182475 m!3215305))

(declare-fun m!3215377 () Bool)

(assert (=> d!810497 m!3215377))

(declare-fun m!3215379 () Bool)

(assert (=> d!810497 m!3215379))

(assert (=> b!2784675 d!810497))

(declare-fun d!810499 () Bool)

(assert (=> d!810499 (= (head!6162 (drop!1716 lt!994592 testedPSize!143)) (h!37618 (drop!1716 lt!994592 testedPSize!143)))))

(assert (=> b!2784675 d!810499))

(declare-fun d!810501 () Bool)

(assert (=> d!810501 (and (= lt!994595 testedP!183) (= lt!994588 testedSuffix!143))))

(declare-fun lt!994652 () Unit!46438)

(declare-fun choose!16333 (List!32298 List!32298 List!32298 List!32298) Unit!46438)

(assert (=> d!810501 (= lt!994652 (choose!16333 lt!994595 lt!994588 testedP!183 testedSuffix!143))))

(assert (=> d!810501 (= (++!7957 lt!994595 lt!994588) (++!7957 testedP!183 testedSuffix!143))))

(assert (=> d!810501 (= (lemmaConcatSameAndSameSizesThenSameLists!349 lt!994595 lt!994588 testedP!183 testedSuffix!143) lt!994652)))

(declare-fun bs!510881 () Bool)

(assert (= bs!510881 d!810501))

(declare-fun m!3215381 () Bool)

(assert (=> bs!510881 m!3215381))

(assert (=> bs!510881 m!3215269))

(assert (=> bs!510881 m!3215253))

(assert (=> b!2784675 d!810501))

(declare-fun d!810503 () Bool)

(declare-fun lt!994655 () C!16424)

(declare-fun contains!6001 (List!32298 C!16424) Bool)

(assert (=> d!810503 (contains!6001 lt!994592 lt!994655)))

(declare-fun e!1757028 () C!16424)

(assert (=> d!810503 (= lt!994655 e!1757028)))

(declare-fun c!452423 () Bool)

(assert (=> d!810503 (= c!452423 (= testedPSize!143 0))))

(declare-fun e!1757027 () Bool)

(assert (=> d!810503 e!1757027))

(declare-fun res!1162271 () Bool)

(assert (=> d!810503 (=> (not res!1162271) (not e!1757027))))

(assert (=> d!810503 (= res!1162271 (<= 0 testedPSize!143))))

(assert (=> d!810503 (= (apply!7527 lt!994592 testedPSize!143) lt!994655)))

(declare-fun b!2784780 () Bool)

(assert (=> b!2784780 (= e!1757027 (< testedPSize!143 (size!25013 lt!994592)))))

(declare-fun b!2784781 () Bool)

(assert (=> b!2784781 (= e!1757028 (head!6162 lt!994592))))

(declare-fun b!2784782 () Bool)

(assert (=> b!2784782 (= e!1757028 (apply!7527 (tail!4399 lt!994592) (- testedPSize!143 1)))))

(assert (= (and d!810503 res!1162271) b!2784780))

(assert (= (and d!810503 c!452423) b!2784781))

(assert (= (and d!810503 (not c!452423)) b!2784782))

(declare-fun m!3215383 () Bool)

(assert (=> d!810503 m!3215383))

(assert (=> b!2784780 m!3215305))

(assert (=> b!2784781 m!3215303))

(assert (=> b!2784782 m!3215297))

(assert (=> b!2784782 m!3215297))

(declare-fun m!3215385 () Bool)

(assert (=> b!2784782 m!3215385))

(assert (=> b!2784675 d!810503))

(declare-fun d!810505 () Bool)

(assert (=> d!810505 (= (head!6162 (drop!1716 lt!994592 testedPSize!143)) (apply!7527 lt!994592 testedPSize!143))))

(declare-fun lt!994658 () Unit!46438)

(declare-fun choose!16334 (List!32298 Int) Unit!46438)

(assert (=> d!810505 (= lt!994658 (choose!16334 lt!994592 testedPSize!143))))

(declare-fun e!1757031 () Bool)

(assert (=> d!810505 e!1757031))

(declare-fun res!1162274 () Bool)

(assert (=> d!810505 (=> (not res!1162274) (not e!1757031))))

(assert (=> d!810505 (= res!1162274 (>= testedPSize!143 0))))

(assert (=> d!810505 (= (lemmaDropApply!922 lt!994592 testedPSize!143) lt!994658)))

(declare-fun b!2784785 () Bool)

(assert (=> b!2784785 (= e!1757031 (< testedPSize!143 (size!25013 lt!994592)))))

(assert (= (and d!810505 res!1162274) b!2784785))

(assert (=> d!810505 m!3215285))

(assert (=> d!810505 m!3215285))

(assert (=> d!810505 m!3215287))

(assert (=> d!810505 m!3215281))

(declare-fun m!3215387 () Bool)

(assert (=> d!810505 m!3215387))

(assert (=> b!2784785 m!3215305))

(assert (=> b!2784675 d!810505))

(declare-fun d!810507 () Bool)

(assert (=> d!810507 (= (array_inv!4397 (_keys!4171 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890))))))) (bvsge (size!25009 (_keys!4171 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2784684 d!810507))

(declare-fun d!810509 () Bool)

(assert (=> d!810509 (= (array_inv!4398 (_values!4152 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890))))))) (bvsge (size!25011 (_values!4152 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2784684 d!810509))

(declare-fun d!810511 () Bool)

(declare-fun lambda!102203 () Int)

(declare-fun forall!6652 (List!32296 Int) Bool)

(assert (=> d!810511 (= (inv!43739 setElem!23464) (forall!6652 (exprs!2851 setElem!23464) lambda!102203))))

(declare-fun bs!510882 () Bool)

(assert (= bs!510882 d!810511))

(declare-fun m!3215389 () Bool)

(assert (=> bs!510882 m!3215389))

(assert (=> setNonEmpty!23464 d!810511))

(declare-fun d!810513 () Bool)

(declare-fun c!452426 () Bool)

(assert (=> d!810513 (= c!452426 ((_ is Node!10007) (c!452391 totalInput!758)))))

(declare-fun e!1757036 () Bool)

(assert (=> d!810513 (= (inv!43740 (c!452391 totalInput!758)) e!1757036)))

(declare-fun b!2784792 () Bool)

(declare-fun inv!43744 (Conc!10007) Bool)

(assert (=> b!2784792 (= e!1757036 (inv!43744 (c!452391 totalInput!758)))))

(declare-fun b!2784793 () Bool)

(declare-fun e!1757037 () Bool)

(assert (=> b!2784793 (= e!1757036 e!1757037)))

(declare-fun res!1162277 () Bool)

(assert (=> b!2784793 (= res!1162277 (not ((_ is Leaf!15242) (c!452391 totalInput!758))))))

(assert (=> b!2784793 (=> res!1162277 e!1757037)))

(declare-fun b!2784794 () Bool)

(declare-fun inv!43745 (Conc!10007) Bool)

(assert (=> b!2784794 (= e!1757037 (inv!43745 (c!452391 totalInput!758)))))

(assert (= (and d!810513 c!452426) b!2784792))

(assert (= (and d!810513 (not c!452426)) b!2784793))

(assert (= (and b!2784793 (not res!1162277)) b!2784794))

(declare-fun m!3215391 () Bool)

(assert (=> b!2784792 m!3215391))

(declare-fun m!3215393 () Bool)

(assert (=> b!2784794 m!3215393))

(assert (=> b!2784676 d!810513))

(declare-fun d!810515 () Bool)

(declare-fun lt!994659 () Int)

(assert (=> d!810515 (= lt!994659 (size!25013 (list!12129 totalInput!758)))))

(assert (=> d!810515 (= lt!994659 (size!25014 (c!452391 totalInput!758)))))

(assert (=> d!810515 (= (size!25012 totalInput!758) lt!994659)))

(declare-fun bs!510883 () Bool)

(assert (= bs!510883 d!810515))

(assert (=> bs!510883 m!3215245))

(assert (=> bs!510883 m!3215245))

(declare-fun m!3215395 () Bool)

(assert (=> bs!510883 m!3215395))

(declare-fun m!3215397 () Bool)

(assert (=> bs!510883 m!3215397))

(assert (=> b!2784686 d!810515))

(declare-fun d!810517 () Bool)

(declare-fun res!1162280 () Bool)

(declare-fun e!1757040 () Bool)

(assert (=> d!810517 (=> (not res!1162280) (not e!1757040))))

(assert (=> d!810517 (= res!1162280 ((_ is HashMap!3777) (cache!3920 cacheUp!890)))))

(assert (=> d!810517 (= (inv!43743 cacheUp!890) e!1757040)))

(declare-fun b!2784797 () Bool)

(assert (=> b!2784797 (= e!1757040 (validCacheMapUp!377 (cache!3920 cacheUp!890)))))

(assert (= (and d!810517 res!1162280) b!2784797))

(assert (=> b!2784797 m!3215351))

(assert (=> start!269098 d!810517))

(declare-fun d!810519 () Bool)

(assert (=> d!810519 (= (inv!43741 totalInput!758) (isBalanced!3053 (c!452391 totalInput!758)))))

(declare-fun bs!510884 () Bool)

(assert (= bs!510884 d!810519))

(assert (=> bs!510884 m!3215341))

(assert (=> start!269098 d!810519))

(declare-fun d!810521 () Bool)

(declare-fun res!1162283 () Bool)

(declare-fun e!1757043 () Bool)

(assert (=> d!810521 (=> (not res!1162283) (not e!1757043))))

(assert (=> d!810521 (= res!1162283 ((_ is HashMap!3776) (cache!3919 cacheDown!1009)))))

(assert (=> d!810521 (= (inv!43742 cacheDown!1009) e!1757043)))

(declare-fun b!2784800 () Bool)

(assert (=> b!2784800 (= e!1757043 (validCacheMapDown!408 (cache!3919 cacheDown!1009)))))

(assert (= (and d!810521 res!1162283) b!2784800))

(assert (=> b!2784800 m!3215293))

(assert (=> start!269098 d!810521))

(declare-fun d!810523 () Bool)

(assert (=> d!810523 (= (list!12129 totalInput!758) (list!12130 (c!452391 totalInput!758)))))

(declare-fun bs!510885 () Bool)

(assert (= bs!510885 d!810523))

(declare-fun m!3215399 () Bool)

(assert (=> bs!510885 m!3215399))

(assert (=> start!269098 d!810523))

(declare-fun b!2784801 () Bool)

(declare-fun e!1757044 () List!32298)

(assert (=> b!2784801 (= e!1757044 testedSuffix!143)))

(declare-fun b!2784803 () Bool)

(declare-fun res!1162284 () Bool)

(declare-fun e!1757045 () Bool)

(assert (=> b!2784803 (=> (not res!1162284) (not e!1757045))))

(declare-fun lt!994660 () List!32298)

(assert (=> b!2784803 (= res!1162284 (= (size!25013 lt!994660) (+ (size!25013 testedP!183) (size!25013 testedSuffix!143))))))

(declare-fun b!2784802 () Bool)

(assert (=> b!2784802 (= e!1757044 (Cons!32198 (h!37618 testedP!183) (++!7957 (t!228440 testedP!183) testedSuffix!143)))))

(declare-fun d!810525 () Bool)

(assert (=> d!810525 e!1757045))

(declare-fun res!1162285 () Bool)

(assert (=> d!810525 (=> (not res!1162285) (not e!1757045))))

(assert (=> d!810525 (= res!1162285 (= (content!4518 lt!994660) ((_ map or) (content!4518 testedP!183) (content!4518 testedSuffix!143))))))

(assert (=> d!810525 (= lt!994660 e!1757044)))

(declare-fun c!452427 () Bool)

(assert (=> d!810525 (= c!452427 ((_ is Nil!32198) testedP!183))))

(assert (=> d!810525 (= (++!7957 testedP!183 testedSuffix!143) lt!994660)))

(declare-fun b!2784804 () Bool)

(assert (=> b!2784804 (= e!1757045 (or (not (= testedSuffix!143 Nil!32198)) (= lt!994660 testedP!183)))))

(assert (= (and d!810525 c!452427) b!2784801))

(assert (= (and d!810525 (not c!452427)) b!2784802))

(assert (= (and d!810525 res!1162285) b!2784803))

(assert (= (and b!2784803 res!1162284) b!2784804))

(declare-fun m!3215401 () Bool)

(assert (=> b!2784803 m!3215401))

(assert (=> b!2784803 m!3215255))

(declare-fun m!3215403 () Bool)

(assert (=> b!2784803 m!3215403))

(declare-fun m!3215405 () Bool)

(assert (=> b!2784802 m!3215405))

(declare-fun m!3215407 () Bool)

(assert (=> d!810525 m!3215407))

(declare-fun m!3215409 () Bool)

(assert (=> d!810525 m!3215409))

(declare-fun m!3215411 () Bool)

(assert (=> d!810525 m!3215411))

(assert (=> start!269098 d!810525))

(declare-fun d!810527 () Bool)

(declare-fun lt!994663 () Int)

(assert (=> d!810527 (>= lt!994663 0)))

(declare-fun e!1757048 () Int)

(assert (=> d!810527 (= lt!994663 e!1757048)))

(declare-fun c!452430 () Bool)

(assert (=> d!810527 (= c!452430 ((_ is Nil!32198) testedP!183))))

(assert (=> d!810527 (= (size!25013 testedP!183) lt!994663)))

(declare-fun b!2784809 () Bool)

(assert (=> b!2784809 (= e!1757048 0)))

(declare-fun b!2784810 () Bool)

(assert (=> b!2784810 (= e!1757048 (+ 1 (size!25013 (t!228440 testedP!183))))))

(assert (= (and d!810527 c!452430) b!2784809))

(assert (= (and d!810527 (not c!452430)) b!2784810))

(declare-fun m!3215413 () Bool)

(assert (=> b!2784810 m!3215413))

(assert (=> b!2784696 d!810527))

(declare-fun d!810529 () Bool)

(assert (=> d!810529 (= (array_inv!4397 (_keys!4170 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009))))))) (bvsge (size!25009 (_keys!4170 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2784687 d!810529))

(declare-fun d!810531 () Bool)

(assert (=> d!810531 (= (array_inv!4399 (_values!4151 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009))))))) (bvsge (size!25010 (_values!4151 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2784687 d!810531))

(declare-fun e!1757057 () Bool)

(assert (=> b!2784684 (= tp!882491 e!1757057)))

(declare-fun b!2784819 () Bool)

(declare-fun e!1757056 () Bool)

(declare-fun tp!882517 () Bool)

(assert (=> b!2784819 (= e!1757056 tp!882517)))

(declare-fun b!2784820 () Bool)

(declare-fun setRes!23467 () Bool)

(declare-fun tp!882516 () Bool)

(assert (=> b!2784820 (= e!1757057 (and (inv!43739 (_1!19216 (_1!19217 (h!37619 (zeroValue!4130 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890)))))))))) e!1757056 tp_is_empty!14079 setRes!23467 tp!882516))))

(declare-fun condSetEmpty!23467 () Bool)

(assert (=> b!2784820 (= condSetEmpty!23467 (= (_2!19217 (h!37619 (zeroValue!4130 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890)))))))) ((as const (Array Context!4702 Bool)) false)))))

(declare-fun setIsEmpty!23467 () Bool)

(assert (=> setIsEmpty!23467 setRes!23467))

(declare-fun setNonEmpty!23467 () Bool)

(declare-fun tp!882518 () Bool)

(declare-fun e!1757055 () Bool)

(declare-fun setElem!23467 () Context!4702)

(assert (=> setNonEmpty!23467 (= setRes!23467 (and tp!882518 (inv!43739 setElem!23467) e!1757055))))

(declare-fun setRest!23467 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23467 (= (_2!19217 (h!37619 (zeroValue!4130 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23467 true) setRest!23467))))

(declare-fun b!2784821 () Bool)

(declare-fun tp!882515 () Bool)

(assert (=> b!2784821 (= e!1757055 tp!882515)))

(assert (= b!2784820 b!2784819))

(assert (= (and b!2784820 condSetEmpty!23467) setIsEmpty!23467))

(assert (= (and b!2784820 (not condSetEmpty!23467)) setNonEmpty!23467))

(assert (= setNonEmpty!23467 b!2784821))

(assert (= (and b!2784684 ((_ is Cons!32199) (zeroValue!4130 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890)))))))) b!2784820))

(declare-fun m!3215415 () Bool)

(assert (=> b!2784820 m!3215415))

(declare-fun m!3215417 () Bool)

(assert (=> setNonEmpty!23467 m!3215417))

(declare-fun e!1757060 () Bool)

(assert (=> b!2784684 (= tp!882488 e!1757060)))

(declare-fun b!2784822 () Bool)

(declare-fun e!1757059 () Bool)

(declare-fun tp!882521 () Bool)

(assert (=> b!2784822 (= e!1757059 tp!882521)))

(declare-fun tp!882520 () Bool)

(declare-fun setRes!23468 () Bool)

(declare-fun b!2784823 () Bool)

(assert (=> b!2784823 (= e!1757060 (and (inv!43739 (_1!19216 (_1!19217 (h!37619 (minValue!4130 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890)))))))))) e!1757059 tp_is_empty!14079 setRes!23468 tp!882520))))

(declare-fun condSetEmpty!23468 () Bool)

(assert (=> b!2784823 (= condSetEmpty!23468 (= (_2!19217 (h!37619 (minValue!4130 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890)))))))) ((as const (Array Context!4702 Bool)) false)))))

(declare-fun setIsEmpty!23468 () Bool)

(assert (=> setIsEmpty!23468 setRes!23468))

(declare-fun e!1757058 () Bool)

(declare-fun setNonEmpty!23468 () Bool)

(declare-fun tp!882522 () Bool)

(declare-fun setElem!23468 () Context!4702)

(assert (=> setNonEmpty!23468 (= setRes!23468 (and tp!882522 (inv!43739 setElem!23468) e!1757058))))

(declare-fun setRest!23468 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23468 (= (_2!19217 (h!37619 (minValue!4130 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23468 true) setRest!23468))))

(declare-fun b!2784824 () Bool)

(declare-fun tp!882519 () Bool)

(assert (=> b!2784824 (= e!1757058 tp!882519)))

(assert (= b!2784823 b!2784822))

(assert (= (and b!2784823 condSetEmpty!23468) setIsEmpty!23468))

(assert (= (and b!2784823 (not condSetEmpty!23468)) setNonEmpty!23468))

(assert (= setNonEmpty!23468 b!2784824))

(assert (= (and b!2784684 ((_ is Cons!32199) (minValue!4130 (v!33806 (underlying!7945 (v!33807 (underlying!7946 (cache!3920 cacheUp!890)))))))) b!2784823))

(declare-fun m!3215419 () Bool)

(assert (=> b!2784823 m!3215419))

(declare-fun m!3215421 () Bool)

(assert (=> setNonEmpty!23468 m!3215421))

(declare-fun setIsEmpty!23473 () Bool)

(declare-fun setRes!23474 () Bool)

(assert (=> setIsEmpty!23473 setRes!23474))

(declare-fun b!2784839 () Bool)

(declare-fun e!1757078 () Bool)

(declare-fun tp!882553 () Bool)

(assert (=> b!2784839 (= e!1757078 tp!882553)))

(declare-fun b!2784840 () Bool)

(declare-fun e!1757074 () Bool)

(declare-fun tp!882547 () Bool)

(assert (=> b!2784840 (= e!1757074 tp!882547)))

(declare-fun condMapEmpty!17655 () Bool)

(declare-fun mapDefault!17655 () List!32297)

(assert (=> mapNonEmpty!17651 (= condMapEmpty!17655 (= mapRest!17652 ((as const (Array (_ BitVec 32) List!32297)) mapDefault!17655)))))

(declare-fun e!1757073 () Bool)

(declare-fun mapRes!17655 () Bool)

(assert (=> mapNonEmpty!17651 (= tp!882503 (and e!1757073 mapRes!17655))))

(declare-fun setIsEmpty!23474 () Bool)

(declare-fun setRes!23473 () Bool)

(assert (=> setIsEmpty!23474 setRes!23473))

(declare-fun b!2784841 () Bool)

(declare-fun e!1757076 () Bool)

(declare-fun tp!882552 () Bool)

(assert (=> b!2784841 (= e!1757076 tp!882552)))

(declare-fun b!2784842 () Bool)

(declare-fun e!1757075 () Bool)

(declare-fun tp!882545 () Bool)

(assert (=> b!2784842 (= e!1757075 tp!882545)))

(declare-fun tp!882555 () Bool)

(declare-fun tp!882548 () Bool)

(declare-fun b!2784843 () Bool)

(assert (=> b!2784843 (= e!1757073 (and tp!882548 (inv!43739 (_2!19214 (_1!19215 (h!37617 mapDefault!17655)))) e!1757075 tp_is_empty!14079 setRes!23474 tp!882555))))

(declare-fun condSetEmpty!23473 () Bool)

(assert (=> b!2784843 (= condSetEmpty!23473 (= (_2!19215 (h!37617 mapDefault!17655)) ((as const (Array Context!4702 Bool)) false)))))

(declare-fun setNonEmpty!23473 () Bool)

(declare-fun setElem!23473 () Context!4702)

(declare-fun tp!882546 () Bool)

(assert (=> setNonEmpty!23473 (= setRes!23474 (and tp!882546 (inv!43739 setElem!23473) e!1757074))))

(declare-fun setRest!23473 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23473 (= (_2!19215 (h!37617 mapDefault!17655)) ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23473 true) setRest!23473))))

(declare-fun setNonEmpty!23474 () Bool)

(declare-fun setElem!23474 () Context!4702)

(declare-fun tp!882550 () Bool)

(assert (=> setNonEmpty!23474 (= setRes!23473 (and tp!882550 (inv!43739 setElem!23474) e!1757076))))

(declare-fun mapValue!17655 () List!32297)

(declare-fun setRest!23474 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23474 (= (_2!19215 (h!37617 mapValue!17655)) ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23474 true) setRest!23474))))

(declare-fun mapIsEmpty!17655 () Bool)

(assert (=> mapIsEmpty!17655 mapRes!17655))

(declare-fun e!1757077 () Bool)

(declare-fun b!2784844 () Bool)

(declare-fun tp!882554 () Bool)

(declare-fun tp!882549 () Bool)

(assert (=> b!2784844 (= e!1757077 (and tp!882549 (inv!43739 (_2!19214 (_1!19215 (h!37617 mapValue!17655)))) e!1757078 tp_is_empty!14079 setRes!23473 tp!882554))))

(declare-fun condSetEmpty!23474 () Bool)

(assert (=> b!2784844 (= condSetEmpty!23474 (= (_2!19215 (h!37617 mapValue!17655)) ((as const (Array Context!4702 Bool)) false)))))

(declare-fun mapNonEmpty!17655 () Bool)

(declare-fun tp!882551 () Bool)

(assert (=> mapNonEmpty!17655 (= mapRes!17655 (and tp!882551 e!1757077))))

(declare-fun mapRest!17655 () (Array (_ BitVec 32) List!32297))

(declare-fun mapKey!17655 () (_ BitVec 32))

(assert (=> mapNonEmpty!17655 (= mapRest!17652 (store mapRest!17655 mapKey!17655 mapValue!17655))))

(assert (= (and mapNonEmpty!17651 condMapEmpty!17655) mapIsEmpty!17655))

(assert (= (and mapNonEmpty!17651 (not condMapEmpty!17655)) mapNonEmpty!17655))

(assert (= b!2784844 b!2784839))

(assert (= (and b!2784844 condSetEmpty!23474) setIsEmpty!23474))

(assert (= (and b!2784844 (not condSetEmpty!23474)) setNonEmpty!23474))

(assert (= setNonEmpty!23474 b!2784841))

(assert (= (and mapNonEmpty!17655 ((_ is Cons!32197) mapValue!17655)) b!2784844))

(assert (= b!2784843 b!2784842))

(assert (= (and b!2784843 condSetEmpty!23473) setIsEmpty!23473))

(assert (= (and b!2784843 (not condSetEmpty!23473)) setNonEmpty!23473))

(assert (= setNonEmpty!23473 b!2784840))

(assert (= (and mapNonEmpty!17651 ((_ is Cons!32197) mapDefault!17655)) b!2784843))

(declare-fun m!3215423 () Bool)

(assert (=> mapNonEmpty!17655 m!3215423))

(declare-fun m!3215425 () Bool)

(assert (=> setNonEmpty!23474 m!3215425))

(declare-fun m!3215427 () Bool)

(assert (=> setNonEmpty!23473 m!3215427))

(declare-fun m!3215429 () Bool)

(assert (=> b!2784843 m!3215429))

(declare-fun m!3215431 () Bool)

(assert (=> b!2784844 m!3215431))

(declare-fun b!2784853 () Bool)

(declare-fun e!1757086 () Bool)

(declare-fun tp!882567 () Bool)

(assert (=> b!2784853 (= e!1757086 tp!882567)))

(declare-fun setRes!23477 () Bool)

(declare-fun tp!882568 () Bool)

(declare-fun setElem!23477 () Context!4702)

(declare-fun setNonEmpty!23477 () Bool)

(assert (=> setNonEmpty!23477 (= setRes!23477 (and tp!882568 (inv!43739 setElem!23477) e!1757086))))

(declare-fun setRest!23477 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23477 (= (_2!19215 (h!37617 mapValue!17652)) ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23477 true) setRest!23477))))

(declare-fun setIsEmpty!23477 () Bool)

(assert (=> setIsEmpty!23477 setRes!23477))

(declare-fun b!2784854 () Bool)

(declare-fun e!1757085 () Bool)

(declare-fun tp!882566 () Bool)

(assert (=> b!2784854 (= e!1757085 tp!882566)))

(declare-fun b!2784855 () Bool)

(declare-fun e!1757087 () Bool)

(declare-fun tp!882569 () Bool)

(declare-fun tp!882570 () Bool)

(assert (=> b!2784855 (= e!1757087 (and tp!882570 (inv!43739 (_2!19214 (_1!19215 (h!37617 mapValue!17652)))) e!1757085 tp_is_empty!14079 setRes!23477 tp!882569))))

(declare-fun condSetEmpty!23477 () Bool)

(assert (=> b!2784855 (= condSetEmpty!23477 (= (_2!19215 (h!37617 mapValue!17652)) ((as const (Array Context!4702 Bool)) false)))))

(assert (=> mapNonEmpty!17651 (= tp!882496 e!1757087)))

(assert (= b!2784855 b!2784854))

(assert (= (and b!2784855 condSetEmpty!23477) setIsEmpty!23477))

(assert (= (and b!2784855 (not condSetEmpty!23477)) setNonEmpty!23477))

(assert (= setNonEmpty!23477 b!2784853))

(assert (= (and mapNonEmpty!17651 ((_ is Cons!32197) mapValue!17652)) b!2784855))

(declare-fun m!3215433 () Bool)

(assert (=> setNonEmpty!23477 m!3215433))

(declare-fun m!3215435 () Bool)

(assert (=> b!2784855 m!3215435))

(declare-fun b!2784856 () Bool)

(declare-fun e!1757089 () Bool)

(declare-fun tp!882572 () Bool)

(assert (=> b!2784856 (= e!1757089 tp!882572)))

(declare-fun setRes!23478 () Bool)

(declare-fun setElem!23478 () Context!4702)

(declare-fun setNonEmpty!23478 () Bool)

(declare-fun tp!882573 () Bool)

(assert (=> setNonEmpty!23478 (= setRes!23478 (and tp!882573 (inv!43739 setElem!23478) e!1757089))))

(declare-fun setRest!23478 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23478 (= (_2!19215 (h!37617 mapDefault!17652)) ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23478 true) setRest!23478))))

(declare-fun setIsEmpty!23478 () Bool)

(assert (=> setIsEmpty!23478 setRes!23478))

(declare-fun b!2784857 () Bool)

(declare-fun e!1757088 () Bool)

(declare-fun tp!882571 () Bool)

(assert (=> b!2784857 (= e!1757088 tp!882571)))

(declare-fun e!1757090 () Bool)

(declare-fun tp!882575 () Bool)

(declare-fun tp!882574 () Bool)

(declare-fun b!2784858 () Bool)

(assert (=> b!2784858 (= e!1757090 (and tp!882575 (inv!43739 (_2!19214 (_1!19215 (h!37617 mapDefault!17652)))) e!1757088 tp_is_empty!14079 setRes!23478 tp!882574))))

(declare-fun condSetEmpty!23478 () Bool)

(assert (=> b!2784858 (= condSetEmpty!23478 (= (_2!19215 (h!37617 mapDefault!17652)) ((as const (Array Context!4702 Bool)) false)))))

(assert (=> b!2784698 (= tp!882492 e!1757090)))

(assert (= b!2784858 b!2784857))

(assert (= (and b!2784858 condSetEmpty!23478) setIsEmpty!23478))

(assert (= (and b!2784858 (not condSetEmpty!23478)) setNonEmpty!23478))

(assert (= setNonEmpty!23478 b!2784856))

(assert (= (and b!2784698 ((_ is Cons!32197) mapDefault!17652)) b!2784858))

(declare-fun m!3215437 () Bool)

(assert (=> setNonEmpty!23478 m!3215437))

(declare-fun m!3215439 () Bool)

(assert (=> b!2784858 m!3215439))

(declare-fun condSetEmpty!23481 () Bool)

(assert (=> setNonEmpty!23464 (= condSetEmpty!23481 (= setRest!23464 ((as const (Array Context!4702 Bool)) false)))))

(declare-fun setRes!23481 () Bool)

(assert (=> setNonEmpty!23464 (= tp!882506 setRes!23481)))

(declare-fun setIsEmpty!23481 () Bool)

(assert (=> setIsEmpty!23481 setRes!23481))

(declare-fun e!1757093 () Bool)

(declare-fun tp!882580 () Bool)

(declare-fun setNonEmpty!23481 () Bool)

(declare-fun setElem!23481 () Context!4702)

(assert (=> setNonEmpty!23481 (= setRes!23481 (and tp!882580 (inv!43739 setElem!23481) e!1757093))))

(declare-fun setRest!23481 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23481 (= setRest!23464 ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23481 true) setRest!23481))))

(declare-fun b!2784863 () Bool)

(declare-fun tp!882581 () Bool)

(assert (=> b!2784863 (= e!1757093 tp!882581)))

(assert (= (and setNonEmpty!23464 condSetEmpty!23481) setIsEmpty!23481))

(assert (= (and setNonEmpty!23464 (not condSetEmpty!23481)) setNonEmpty!23481))

(assert (= setNonEmpty!23481 b!2784863))

(declare-fun m!3215441 () Bool)

(assert (=> setNonEmpty!23481 m!3215441))

(declare-fun b!2784872 () Bool)

(declare-fun tp!882588 () Bool)

(declare-fun tp!882589 () Bool)

(declare-fun e!1757099 () Bool)

(assert (=> b!2784872 (= e!1757099 (and (inv!43740 (left!24465 (c!452391 totalInput!758))) tp!882588 (inv!43740 (right!24795 (c!452391 totalInput!758))) tp!882589))))

(declare-fun b!2784874 () Bool)

(declare-fun e!1757098 () Bool)

(declare-fun tp!882590 () Bool)

(assert (=> b!2784874 (= e!1757098 tp!882590)))

(declare-fun b!2784873 () Bool)

(declare-fun inv!43746 (IArray!20019) Bool)

(assert (=> b!2784873 (= e!1757099 (and (inv!43746 (xs!13118 (c!452391 totalInput!758))) e!1757098))))

(assert (=> b!2784676 (= tp!882493 (and (inv!43740 (c!452391 totalInput!758)) e!1757099))))

(assert (= (and b!2784676 ((_ is Node!10007) (c!452391 totalInput!758))) b!2784872))

(assert (= b!2784873 b!2784874))

(assert (= (and b!2784676 ((_ is Leaf!15242) (c!452391 totalInput!758))) b!2784873))

(declare-fun m!3215443 () Bool)

(assert (=> b!2784872 m!3215443))

(declare-fun m!3215445 () Bool)

(assert (=> b!2784872 m!3215445))

(declare-fun m!3215447 () Bool)

(assert (=> b!2784873 m!3215447))

(assert (=> b!2784676 m!3215267))

(declare-fun e!1757102 () Bool)

(assert (=> b!2784680 (= tp!882504 e!1757102)))

(declare-fun b!2784875 () Bool)

(declare-fun e!1757101 () Bool)

(declare-fun tp!882593 () Bool)

(assert (=> b!2784875 (= e!1757101 tp!882593)))

(declare-fun setRes!23482 () Bool)

(declare-fun b!2784876 () Bool)

(declare-fun tp!882592 () Bool)

(assert (=> b!2784876 (= e!1757102 (and (inv!43739 (_1!19216 (_1!19217 (h!37619 mapDefault!17651)))) e!1757101 tp_is_empty!14079 setRes!23482 tp!882592))))

(declare-fun condSetEmpty!23482 () Bool)

(assert (=> b!2784876 (= condSetEmpty!23482 (= (_2!19217 (h!37619 mapDefault!17651)) ((as const (Array Context!4702 Bool)) false)))))

(declare-fun setIsEmpty!23482 () Bool)

(assert (=> setIsEmpty!23482 setRes!23482))

(declare-fun setElem!23482 () Context!4702)

(declare-fun e!1757100 () Bool)

(declare-fun setNonEmpty!23482 () Bool)

(declare-fun tp!882594 () Bool)

(assert (=> setNonEmpty!23482 (= setRes!23482 (and tp!882594 (inv!43739 setElem!23482) e!1757100))))

(declare-fun setRest!23482 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23482 (= (_2!19217 (h!37619 mapDefault!17651)) ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23482 true) setRest!23482))))

(declare-fun b!2784877 () Bool)

(declare-fun tp!882591 () Bool)

(assert (=> b!2784877 (= e!1757100 tp!882591)))

(assert (= b!2784876 b!2784875))

(assert (= (and b!2784876 condSetEmpty!23482) setIsEmpty!23482))

(assert (= (and b!2784876 (not condSetEmpty!23482)) setNonEmpty!23482))

(assert (= setNonEmpty!23482 b!2784877))

(assert (= (and b!2784680 ((_ is Cons!32199) mapDefault!17651)) b!2784876))

(declare-fun m!3215449 () Bool)

(assert (=> b!2784876 m!3215449))

(declare-fun m!3215451 () Bool)

(assert (=> setNonEmpty!23482 m!3215451))

(declare-fun b!2784882 () Bool)

(declare-fun e!1757105 () Bool)

(declare-fun tp!882597 () Bool)

(assert (=> b!2784882 (= e!1757105 (and tp_is_empty!14079 tp!882597))))

(assert (=> b!2784693 (= tp!882490 e!1757105)))

(assert (= (and b!2784693 ((_ is Cons!32198) (t!228440 testedSuffix!143))) b!2784882))

(declare-fun b!2784883 () Bool)

(declare-fun e!1757106 () Bool)

(declare-fun tp!882598 () Bool)

(assert (=> b!2784883 (= e!1757106 (and tp_is_empty!14079 tp!882598))))

(assert (=> b!2784694 (= tp!882499 e!1757106)))

(assert (= (and b!2784694 ((_ is Cons!32198) (t!228440 testedP!183))) b!2784883))

(declare-fun mapNonEmpty!17658 () Bool)

(declare-fun mapRes!17658 () Bool)

(declare-fun tp!882621 () Bool)

(declare-fun e!1757119 () Bool)

(assert (=> mapNonEmpty!17658 (= mapRes!17658 (and tp!882621 e!1757119))))

(declare-fun mapValue!17658 () List!32299)

(declare-fun mapKey!17658 () (_ BitVec 32))

(declare-fun mapRest!17658 () (Array (_ BitVec 32) List!32299))

(assert (=> mapNonEmpty!17658 (= mapRest!17651 (store mapRest!17658 mapKey!17658 mapValue!17658))))

(declare-fun setElem!23488 () Context!4702)

(declare-fun setRes!23487 () Bool)

(declare-fun setNonEmpty!23487 () Bool)

(declare-fun tp!882625 () Bool)

(declare-fun e!1757124 () Bool)

(assert (=> setNonEmpty!23487 (= setRes!23487 (and tp!882625 (inv!43739 setElem!23488) e!1757124))))

(declare-fun mapDefault!17658 () List!32299)

(declare-fun setRest!23487 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23487 (= (_2!19217 (h!37619 mapDefault!17658)) ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23488 true) setRest!23487))))

(declare-fun tp!882623 () Bool)

(declare-fun b!2784898 () Bool)

(declare-fun e!1757121 () Bool)

(declare-fun setRes!23488 () Bool)

(assert (=> b!2784898 (= e!1757119 (and (inv!43739 (_1!19216 (_1!19217 (h!37619 mapValue!17658)))) e!1757121 tp_is_empty!14079 setRes!23488 tp!882623))))

(declare-fun condSetEmpty!23488 () Bool)

(assert (=> b!2784898 (= condSetEmpty!23488 (= (_2!19217 (h!37619 mapValue!17658)) ((as const (Array Context!4702 Bool)) false)))))

(declare-fun b!2784899 () Bool)

(declare-fun e!1757120 () Bool)

(declare-fun tp!882624 () Bool)

(assert (=> b!2784899 (= e!1757120 tp!882624)))

(declare-fun e!1757122 () Bool)

(declare-fun e!1757123 () Bool)

(declare-fun b!2784900 () Bool)

(declare-fun tp!882622 () Bool)

(assert (=> b!2784900 (= e!1757122 (and (inv!43739 (_1!19216 (_1!19217 (h!37619 mapDefault!17658)))) e!1757123 tp_is_empty!14079 setRes!23487 tp!882622))))

(declare-fun condSetEmpty!23487 () Bool)

(assert (=> b!2784900 (= condSetEmpty!23487 (= (_2!19217 (h!37619 mapDefault!17658)) ((as const (Array Context!4702 Bool)) false)))))

(declare-fun setIsEmpty!23487 () Bool)

(assert (=> setIsEmpty!23487 setRes!23487))

(declare-fun mapIsEmpty!17658 () Bool)

(assert (=> mapIsEmpty!17658 mapRes!17658))

(declare-fun setIsEmpty!23488 () Bool)

(assert (=> setIsEmpty!23488 setRes!23488))

(declare-fun b!2784902 () Bool)

(declare-fun tp!882619 () Bool)

(assert (=> b!2784902 (= e!1757123 tp!882619)))

(declare-fun b!2784903 () Bool)

(declare-fun tp!882617 () Bool)

(assert (=> b!2784903 (= e!1757121 tp!882617)))

(declare-fun setNonEmpty!23488 () Bool)

(declare-fun tp!882620 () Bool)

(declare-fun setElem!23487 () Context!4702)

(assert (=> setNonEmpty!23488 (= setRes!23488 (and tp!882620 (inv!43739 setElem!23487) e!1757120))))

(declare-fun setRest!23488 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23488 (= (_2!19217 (h!37619 mapValue!17658)) ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23487 true) setRest!23488))))

(declare-fun b!2784901 () Bool)

(declare-fun tp!882618 () Bool)

(assert (=> b!2784901 (= e!1757124 tp!882618)))

(declare-fun condMapEmpty!17658 () Bool)

(assert (=> mapNonEmpty!17652 (= condMapEmpty!17658 (= mapRest!17651 ((as const (Array (_ BitVec 32) List!32299)) mapDefault!17658)))))

(assert (=> mapNonEmpty!17652 (= tp!882489 (and e!1757122 mapRes!17658))))

(assert (= (and mapNonEmpty!17652 condMapEmpty!17658) mapIsEmpty!17658))

(assert (= (and mapNonEmpty!17652 (not condMapEmpty!17658)) mapNonEmpty!17658))

(assert (= b!2784898 b!2784903))

(assert (= (and b!2784898 condSetEmpty!23488) setIsEmpty!23488))

(assert (= (and b!2784898 (not condSetEmpty!23488)) setNonEmpty!23488))

(assert (= setNonEmpty!23488 b!2784899))

(assert (= (and mapNonEmpty!17658 ((_ is Cons!32199) mapValue!17658)) b!2784898))

(assert (= b!2784900 b!2784902))

(assert (= (and b!2784900 condSetEmpty!23487) setIsEmpty!23487))

(assert (= (and b!2784900 (not condSetEmpty!23487)) setNonEmpty!23487))

(assert (= setNonEmpty!23487 b!2784901))

(assert (= (and mapNonEmpty!17652 ((_ is Cons!32199) mapDefault!17658)) b!2784900))

(declare-fun m!3215453 () Bool)

(assert (=> setNonEmpty!23487 m!3215453))

(declare-fun m!3215455 () Bool)

(assert (=> b!2784900 m!3215455))

(declare-fun m!3215457 () Bool)

(assert (=> b!2784898 m!3215457))

(declare-fun m!3215459 () Bool)

(assert (=> mapNonEmpty!17658 m!3215459))

(declare-fun m!3215461 () Bool)

(assert (=> setNonEmpty!23488 m!3215461))

(declare-fun e!1757127 () Bool)

(assert (=> mapNonEmpty!17652 (= tp!882497 e!1757127)))

(declare-fun b!2784904 () Bool)

(declare-fun e!1757126 () Bool)

(declare-fun tp!882628 () Bool)

(assert (=> b!2784904 (= e!1757126 tp!882628)))

(declare-fun setRes!23489 () Bool)

(declare-fun b!2784905 () Bool)

(declare-fun tp!882627 () Bool)

(assert (=> b!2784905 (= e!1757127 (and (inv!43739 (_1!19216 (_1!19217 (h!37619 mapValue!17651)))) e!1757126 tp_is_empty!14079 setRes!23489 tp!882627))))

(declare-fun condSetEmpty!23489 () Bool)

(assert (=> b!2784905 (= condSetEmpty!23489 (= (_2!19217 (h!37619 mapValue!17651)) ((as const (Array Context!4702 Bool)) false)))))

(declare-fun setIsEmpty!23489 () Bool)

(assert (=> setIsEmpty!23489 setRes!23489))

(declare-fun setNonEmpty!23489 () Bool)

(declare-fun setElem!23489 () Context!4702)

(declare-fun tp!882629 () Bool)

(declare-fun e!1757125 () Bool)

(assert (=> setNonEmpty!23489 (= setRes!23489 (and tp!882629 (inv!43739 setElem!23489) e!1757125))))

(declare-fun setRest!23489 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23489 (= (_2!19217 (h!37619 mapValue!17651)) ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23489 true) setRest!23489))))

(declare-fun b!2784906 () Bool)

(declare-fun tp!882626 () Bool)

(assert (=> b!2784906 (= e!1757125 tp!882626)))

(assert (= b!2784905 b!2784904))

(assert (= (and b!2784905 condSetEmpty!23489) setIsEmpty!23489))

(assert (= (and b!2784905 (not condSetEmpty!23489)) setNonEmpty!23489))

(assert (= setNonEmpty!23489 b!2784906))

(assert (= (and mapNonEmpty!17652 ((_ is Cons!32199) mapValue!17651)) b!2784905))

(declare-fun m!3215463 () Bool)

(assert (=> b!2784905 m!3215463))

(declare-fun m!3215465 () Bool)

(assert (=> setNonEmpty!23489 m!3215465))

(declare-fun b!2784907 () Bool)

(declare-fun e!1757129 () Bool)

(declare-fun tp!882631 () Bool)

(assert (=> b!2784907 (= e!1757129 tp!882631)))

(declare-fun setElem!23490 () Context!4702)

(declare-fun setRes!23490 () Bool)

(declare-fun tp!882632 () Bool)

(declare-fun setNonEmpty!23490 () Bool)

(assert (=> setNonEmpty!23490 (= setRes!23490 (and tp!882632 (inv!43739 setElem!23490) e!1757129))))

(declare-fun setRest!23490 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23490 (= (_2!19215 (h!37617 (zeroValue!4129 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23490 true) setRest!23490))))

(declare-fun setIsEmpty!23490 () Bool)

(assert (=> setIsEmpty!23490 setRes!23490))

(declare-fun b!2784908 () Bool)

(declare-fun e!1757128 () Bool)

(declare-fun tp!882630 () Bool)

(assert (=> b!2784908 (= e!1757128 tp!882630)))

(declare-fun b!2784909 () Bool)

(declare-fun tp!882634 () Bool)

(declare-fun tp!882633 () Bool)

(declare-fun e!1757130 () Bool)

(assert (=> b!2784909 (= e!1757130 (and tp!882634 (inv!43739 (_2!19214 (_1!19215 (h!37617 (zeroValue!4129 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009)))))))))) e!1757128 tp_is_empty!14079 setRes!23490 tp!882633))))

(declare-fun condSetEmpty!23490 () Bool)

(assert (=> b!2784909 (= condSetEmpty!23490 (= (_2!19215 (h!37617 (zeroValue!4129 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009)))))))) ((as const (Array Context!4702 Bool)) false)))))

(assert (=> b!2784687 (= tp!882505 e!1757130)))

(assert (= b!2784909 b!2784908))

(assert (= (and b!2784909 condSetEmpty!23490) setIsEmpty!23490))

(assert (= (and b!2784909 (not condSetEmpty!23490)) setNonEmpty!23490))

(assert (= setNonEmpty!23490 b!2784907))

(assert (= (and b!2784687 ((_ is Cons!32197) (zeroValue!4129 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009)))))))) b!2784909))

(declare-fun m!3215467 () Bool)

(assert (=> setNonEmpty!23490 m!3215467))

(declare-fun m!3215469 () Bool)

(assert (=> b!2784909 m!3215469))

(declare-fun b!2784910 () Bool)

(declare-fun e!1757132 () Bool)

(declare-fun tp!882636 () Bool)

(assert (=> b!2784910 (= e!1757132 tp!882636)))

(declare-fun setRes!23491 () Bool)

(declare-fun tp!882637 () Bool)

(declare-fun setElem!23491 () Context!4702)

(declare-fun setNonEmpty!23491 () Bool)

(assert (=> setNonEmpty!23491 (= setRes!23491 (and tp!882637 (inv!43739 setElem!23491) e!1757132))))

(declare-fun setRest!23491 () (InoxSet Context!4702))

(assert (=> setNonEmpty!23491 (= (_2!19215 (h!37617 (minValue!4129 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4702 Bool)) false) setElem!23491 true) setRest!23491))))

(declare-fun setIsEmpty!23491 () Bool)

(assert (=> setIsEmpty!23491 setRes!23491))

(declare-fun b!2784911 () Bool)

(declare-fun e!1757131 () Bool)

(declare-fun tp!882635 () Bool)

(assert (=> b!2784911 (= e!1757131 tp!882635)))

(declare-fun b!2784912 () Bool)

(declare-fun tp!882639 () Bool)

(declare-fun e!1757133 () Bool)

(declare-fun tp!882638 () Bool)

(assert (=> b!2784912 (= e!1757133 (and tp!882639 (inv!43739 (_2!19214 (_1!19215 (h!37617 (minValue!4129 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009)))))))))) e!1757131 tp_is_empty!14079 setRes!23491 tp!882638))))

(declare-fun condSetEmpty!23491 () Bool)

(assert (=> b!2784912 (= condSetEmpty!23491 (= (_2!19215 (h!37617 (minValue!4129 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009)))))))) ((as const (Array Context!4702 Bool)) false)))))

(assert (=> b!2784687 (= tp!882498 e!1757133)))

(assert (= b!2784912 b!2784911))

(assert (= (and b!2784912 condSetEmpty!23491) setIsEmpty!23491))

(assert (= (and b!2784912 (not condSetEmpty!23491)) setNonEmpty!23491))

(assert (= setNonEmpty!23491 b!2784910))

(assert (= (and b!2784687 ((_ is Cons!32197) (minValue!4129 (v!33804 (underlying!7943 (v!33805 (underlying!7944 (cache!3919 cacheDown!1009)))))))) b!2784912))

(declare-fun m!3215471 () Bool)

(assert (=> setNonEmpty!23491 m!3215471))

(declare-fun m!3215473 () Bool)

(assert (=> b!2784912 m!3215473))

(declare-fun b!2784917 () Bool)

(declare-fun e!1757136 () Bool)

(declare-fun tp!882644 () Bool)

(declare-fun tp!882645 () Bool)

(assert (=> b!2784917 (= e!1757136 (and tp!882644 tp!882645))))

(assert (=> b!2784691 (= tp!882502 e!1757136)))

(assert (= (and b!2784691 ((_ is Cons!32196) (exprs!2851 setElem!23464))) b!2784917))

(check-sat b_and!203437 (not b!2784734) (not b!2784906) (not d!810489) (not setNonEmpty!23488) (not b!2784780) (not d!810501) (not b!2784740) (not b!2784710) (not b!2784911) (not setNonEmpty!23481) (not b!2784872) (not b!2784883) (not b!2784843) (not b!2784854) (not b!2784824) (not b!2784904) (not b!2784715) (not setNonEmpty!23468) (not mapNonEmpty!17655) (not b!2784767) (not b!2784676) (not b!2784853) (not b_next!79397) (not b!2784842) (not b!2784875) (not b!2784905) (not b!2784877) (not b!2784907) (not setNonEmpty!23490) (not b!2784716) (not d!810511) b_and!203435 (not b!2784821) (not b!2784855) (not d!810491) (not b!2784727) (not b!2784810) (not bm!182472) (not d!810479) (not b!2784839) (not b!2784856) (not setNonEmpty!23491) tp_is_empty!14079 (not d!810515) (not b!2784785) (not d!810523) (not b!2784714) (not d!810503) (not b!2784917) b_and!203431 (not b!2784711) (not setNonEmpty!23478) (not d!810485) (not b!2784794) (not b!2784820) (not b!2784840) (not b!2784733) (not setNonEmpty!23467) (not b!2784912) (not d!810505) (not b!2784726) (not setNonEmpty!23489) (not b!2784781) (not mapNonEmpty!17658) (not b!2784739) (not d!810519) (not b!2784874) (not b!2784898) (not d!810493) (not b!2784900) (not b!2784802) (not b!2784745) (not b!2784857) (not d!810483) (not b!2784873) (not setNonEmpty!23482) (not b!2784823) (not b!2784882) (not b!2784858) (not b!2784909) (not b!2784910) (not b!2784876) (not b!2784901) (not d!810487) (not b_next!79399) (not b!2784903) (not d!810525) (not b!2784797) (not bm!182471) (not d!810471) (not d!810473) (not b!2784841) (not b!2784863) (not setNonEmpty!23487) (not b!2784899) (not d!810495) (not b!2784902) (not b!2784908) (not setNonEmpty!23473) (not setNonEmpty!23474) (not b!2784844) b_and!203433 (not b!2784822) (not b!2784766) (not b!2784792) (not d!810497) (not b_next!79403) (not bm!182475) (not b_next!79401) (not b!2784782) (not b!2784819) (not b!2784803) (not b!2784800) (not b!2784712) (not setNonEmpty!23477) (not d!810481))
(check-sat b_and!203437 (not b_next!79397) b_and!203435 b_and!203431 (not b_next!79399) b_and!203433 (not b_next!79403) (not b_next!79401))
