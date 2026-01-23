; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269296 () Bool)

(assert start!269296)

(declare-fun b!2786654 () Bool)

(declare-fun b_free!78805 () Bool)

(declare-fun b_next!79509 () Bool)

(assert (=> b!2786654 (= b_free!78805 (not b_next!79509))))

(declare-fun tp!883706 () Bool)

(declare-fun b_and!203543 () Bool)

(assert (=> b!2786654 (= tp!883706 b_and!203543)))

(declare-fun b!2786639 () Bool)

(declare-fun b_free!78807 () Bool)

(declare-fun b_next!79511 () Bool)

(assert (=> b!2786639 (= b_free!78807 (not b_next!79511))))

(declare-fun tp!883721 () Bool)

(declare-fun b_and!203545 () Bool)

(assert (=> b!2786639 (= tp!883721 b_and!203545)))

(declare-fun b!2786663 () Bool)

(declare-fun b_free!78809 () Bool)

(declare-fun b_next!79513 () Bool)

(assert (=> b!2786663 (= b_free!78809 (not b_next!79513))))

(declare-fun tp!883712 () Bool)

(declare-fun b_and!203547 () Bool)

(assert (=> b!2786663 (= tp!883712 b_and!203547)))

(declare-fun b!2786666 () Bool)

(declare-fun b_free!78811 () Bool)

(declare-fun b_next!79515 () Bool)

(assert (=> b!2786666 (= b_free!78811 (not b_next!79515))))

(declare-fun tp!883715 () Bool)

(declare-fun b_and!203549 () Bool)

(assert (=> b!2786666 (= tp!883715 b_and!203549)))

(declare-fun mapIsEmpty!17753 () Bool)

(declare-fun mapRes!17753 () Bool)

(assert (=> mapIsEmpty!17753 mapRes!17753))

(declare-fun b!2786638 () Bool)

(declare-fun e!1758615 () Bool)

(declare-fun e!1758613 () Bool)

(assert (=> b!2786638 (= e!1758615 e!1758613)))

(declare-fun res!1162883 () Bool)

(assert (=> b!2786638 (=> res!1162883 e!1758613)))

(declare-datatypes ((C!16452 0))(
  ( (C!16453 (val!10160 Int)) )
))
(declare-datatypes ((List!32347 0))(
  ( (Nil!32247) (Cons!32247 (h!37667 C!16452) (t!228489 List!32347)) )
))
(declare-fun lt!995534 () List!32347)

(declare-fun lt!995538 () List!32347)

(declare-fun lt!995539 () List!32347)

(declare-fun ++!7967 (List!32347 List!32347) List!32347)

(assert (=> b!2786638 (= res!1162883 (not (= (++!7967 lt!995534 lt!995538) lt!995539)))))

(declare-datatypes ((IArray!20039 0))(
  ( (IArray!20040 (innerList!10077 List!32347)) )
))
(declare-datatypes ((Conc!10017 0))(
  ( (Node!10017 (left!24482 Conc!10017) (right!24812 Conc!10017) (csize!20264 Int) (cheight!10228 Int)) (Leaf!15259 (xs!13128 IArray!20039) (csize!20265 Int)) (Empty!10017) )
))
(declare-datatypes ((BalanceConc!19648 0))(
  ( (BalanceConc!19649 (c!452559 Conc!10017)) )
))
(declare-datatypes ((tuple2!32602 0))(
  ( (tuple2!32603 (_1!19276 BalanceConc!19648) (_2!19276 BalanceConc!19648)) )
))
(declare-fun lt!995549 () tuple2!32602)

(declare-fun list!12142 (BalanceConc!19648) List!32347)

(assert (=> b!2786638 (= lt!995538 (list!12142 (_2!19276 lt!995549)))))

(assert (=> b!2786638 (= lt!995534 (list!12142 (_1!19276 lt!995549)))))

(declare-fun totalInput!758 () BalanceConc!19648)

(declare-fun testedPSize!143 () Int)

(declare-fun splitAt!145 (BalanceConc!19648 Int) tuple2!32602)

(assert (=> b!2786638 (= lt!995549 (splitAt!145 totalInput!758 testedPSize!143))))

(declare-fun mapIsEmpty!17754 () Bool)

(declare-fun mapRes!17754 () Bool)

(assert (=> mapIsEmpty!17754 mapRes!17754))

(declare-fun setIsEmpty!23587 () Bool)

(declare-fun setRes!23587 () Bool)

(assert (=> setIsEmpty!23587 setRes!23587))

(declare-fun e!1758638 () Bool)

(declare-fun e!1758610 () Bool)

(declare-fun tp!883708 () Bool)

(declare-datatypes ((array!13849 0))(
  ( (array!13850 (arr!6173 (Array (_ BitVec 32) (_ BitVec 64))) (size!25067 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8147 0))(
  ( (ElementMatch!8147 (c!452560 C!16452)) (Concat!13235 (regOne!16806 Regex!8147) (regTwo!16806 Regex!8147)) (EmptyExpr!8147) (Star!8147 (reg!8476 Regex!8147)) (EmptyLang!8147) (Union!8147 (regOne!16807 Regex!8147) (regTwo!16807 Regex!8147)) )
))
(declare-datatypes ((List!32348 0))(
  ( (Nil!32248) (Cons!32248 (h!37668 Regex!8147) (t!228490 List!32348)) )
))
(declare-datatypes ((Context!4730 0))(
  ( (Context!4731 (exprs!2865 List!32348)) )
))
(declare-datatypes ((tuple3!5010 0))(
  ( (tuple3!5011 (_1!19277 Regex!8147) (_2!19277 Context!4730) (_3!2975 C!16452)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32604 0))(
  ( (tuple2!32605 (_1!19278 tuple3!5010) (_2!19278 (InoxSet Context!4730))) )
))
(declare-datatypes ((List!32349 0))(
  ( (Nil!32249) (Cons!32249 (h!37669 tuple2!32604) (t!228491 List!32349)) )
))
(declare-datatypes ((array!13851 0))(
  ( (array!13852 (arr!6174 (Array (_ BitVec 32) List!32349)) (size!25068 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7786 0))(
  ( (LongMapFixedSize!7787 (defaultEntry!4278 Int) (mask!9703 (_ BitVec 32)) (extraKeys!4142 (_ BitVec 32)) (zeroValue!4152 List!32349) (minValue!4152 List!32349) (_size!7829 (_ BitVec 32)) (_keys!4193 array!13849) (_values!4174 array!13851) (_vacant!3954 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15381 0))(
  ( (Cell!15382 (v!33853 LongMapFixedSize!7786)) )
))
(declare-datatypes ((MutLongMap!3893 0))(
  ( (LongMap!3893 (underlying!7989 Cell!15381)) (MutLongMapExt!3892 (__x!21329 Int)) )
))
(declare-datatypes ((Cell!15383 0))(
  ( (Cell!15384 (v!33854 MutLongMap!3893)) )
))
(declare-datatypes ((Hashable!3809 0))(
  ( (HashableExt!3808 (__x!21330 Int)) )
))
(declare-datatypes ((MutableMap!3799 0))(
  ( (MutableMapExt!3798 (__x!21331 Int)) (HashMap!3799 (underlying!7990 Cell!15383) (hashF!5841 Hashable!3809) (_size!7830 (_ BitVec 32)) (defaultValue!3970 Int)) )
))
(declare-datatypes ((CacheDown!2626 0))(
  ( (CacheDown!2627 (cache!3942 MutableMap!3799)) )
))
(declare-fun cacheDown!1009 () CacheDown!2626)

(declare-fun tp!883720 () Bool)

(declare-fun array_inv!4420 (array!13849) Bool)

(declare-fun array_inv!4421 (array!13851) Bool)

(assert (=> b!2786639 (= e!1758610 (and tp!883721 tp!883720 tp!883708 (array_inv!4420 (_keys!4193 (v!33853 (underlying!7989 (v!33854 (underlying!7990 (cache!3942 cacheDown!1009))))))) (array_inv!4421 (_values!4174 (v!33853 (underlying!7989 (v!33854 (underlying!7990 (cache!3942 cacheDown!1009))))))) e!1758638))))

(declare-fun b!2786640 () Bool)

(declare-datatypes ((Unit!46471 0))(
  ( (Unit!46472) )
))
(declare-fun e!1758626 () Unit!46471)

(declare-fun Unit!46473 () Unit!46471)

(assert (=> b!2786640 (= e!1758626 Unit!46473)))

(declare-fun b!2786641 () Bool)

(declare-fun e!1758637 () Bool)

(declare-fun e!1758612 () Bool)

(assert (=> b!2786641 (= e!1758637 e!1758612)))

(declare-fun res!1162877 () Bool)

(assert (=> b!2786641 (=> (not res!1162877) (not e!1758612))))

(declare-fun lt!995540 () Int)

(assert (=> b!2786641 (= res!1162877 (= testedPSize!143 lt!995540))))

(declare-fun testedP!183 () List!32347)

(declare-fun size!25069 (List!32347) Int)

(assert (=> b!2786641 (= lt!995540 (size!25069 testedP!183))))

(declare-fun b!2786642 () Bool)

(declare-fun e!1758632 () Bool)

(assert (=> b!2786642 (= e!1758632 e!1758610)))

(declare-fun b!2786643 () Bool)

(declare-fun e!1758633 () Bool)

(declare-fun tp!883719 () Bool)

(assert (=> b!2786643 (= e!1758633 tp!883719)))

(declare-fun b!2786644 () Bool)

(declare-fun e!1758622 () Bool)

(assert (=> b!2786644 (= e!1758612 e!1758622)))

(declare-fun res!1162886 () Bool)

(assert (=> b!2786644 (=> (not res!1162886) (not e!1758622))))

(declare-fun totalInputSize!205 () Int)

(declare-fun lt!995537 () Int)

(assert (=> b!2786644 (= res!1162886 (= totalInputSize!205 lt!995537))))

(declare-fun size!25070 (BalanceConc!19648) Int)

(assert (=> b!2786644 (= lt!995537 (size!25070 totalInput!758))))

(declare-fun b!2786645 () Bool)

(declare-fun e!1758636 () Bool)

(assert (=> b!2786645 (= e!1758636 e!1758632)))

(declare-fun b!2786646 () Bool)

(declare-fun res!1162884 () Bool)

(assert (=> b!2786646 (=> (not res!1162884) (not e!1758622))))

(declare-fun valid!3043 (CacheDown!2626) Bool)

(assert (=> b!2786646 (= res!1162884 (valid!3043 cacheDown!1009))))

(declare-fun b!2786647 () Bool)

(declare-fun e!1758621 () Bool)

(declare-fun e!1758623 () Bool)

(assert (=> b!2786647 (= e!1758621 e!1758623)))

(declare-fun b!2786648 () Bool)

(declare-fun e!1758624 () Bool)

(declare-fun e!1758620 () Bool)

(assert (=> b!2786648 (= e!1758624 e!1758620)))

(declare-fun b!2786649 () Bool)

(declare-fun e!1758628 () Bool)

(assert (=> b!2786649 (= e!1758622 (not e!1758628))))

(declare-fun res!1162878 () Bool)

(assert (=> b!2786649 (=> res!1162878 e!1758628)))

(declare-fun isPrefix!2587 (List!32347 List!32347) Bool)

(assert (=> b!2786649 (= res!1162878 (not (isPrefix!2587 testedP!183 lt!995539)))))

(declare-fun lt!995547 () List!32347)

(assert (=> b!2786649 (isPrefix!2587 testedP!183 lt!995547)))

(declare-fun lt!995535 () Unit!46471)

(declare-fun testedSuffix!143 () List!32347)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1697 (List!32347 List!32347) Unit!46471)

(assert (=> b!2786649 (= lt!995535 (lemmaConcatTwoListThenFirstIsPrefix!1697 testedP!183 testedSuffix!143))))

(declare-fun b!2786650 () Bool)

(declare-fun e!1758634 () Bool)

(declare-fun tp!883714 () Bool)

(assert (=> b!2786650 (= e!1758634 (and tp!883714 mapRes!17753))))

(declare-fun condMapEmpty!17753 () Bool)

(declare-datatypes ((Hashable!3810 0))(
  ( (HashableExt!3809 (__x!21332 Int)) )
))
(declare-datatypes ((tuple2!32606 0))(
  ( (tuple2!32607 (_1!19279 Context!4730) (_2!19279 C!16452)) )
))
(declare-datatypes ((tuple2!32608 0))(
  ( (tuple2!32609 (_1!19280 tuple2!32606) (_2!19280 (InoxSet Context!4730))) )
))
(declare-datatypes ((List!32350 0))(
  ( (Nil!32250) (Cons!32250 (h!37670 tuple2!32608) (t!228492 List!32350)) )
))
(declare-datatypes ((array!13853 0))(
  ( (array!13854 (arr!6175 (Array (_ BitVec 32) List!32350)) (size!25071 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7788 0))(
  ( (LongMapFixedSize!7789 (defaultEntry!4279 Int) (mask!9704 (_ BitVec 32)) (extraKeys!4143 (_ BitVec 32)) (zeroValue!4153 List!32350) (minValue!4153 List!32350) (_size!7831 (_ BitVec 32)) (_keys!4194 array!13849) (_values!4175 array!13853) (_vacant!3955 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15385 0))(
  ( (Cell!15386 (v!33855 LongMapFixedSize!7788)) )
))
(declare-datatypes ((MutLongMap!3894 0))(
  ( (LongMap!3894 (underlying!7991 Cell!15385)) (MutLongMapExt!3893 (__x!21333 Int)) )
))
(declare-datatypes ((Cell!15387 0))(
  ( (Cell!15388 (v!33856 MutLongMap!3894)) )
))
(declare-datatypes ((MutableMap!3800 0))(
  ( (MutableMapExt!3799 (__x!21334 Int)) (HashMap!3800 (underlying!7992 Cell!15387) (hashF!5842 Hashable!3810) (_size!7832 (_ BitVec 32)) (defaultValue!3971 Int)) )
))
(declare-datatypes ((CacheUp!2504 0))(
  ( (CacheUp!2505 (cache!3943 MutableMap!3800)) )
))
(declare-fun cacheUp!890 () CacheUp!2504)

(declare-fun mapDefault!17753 () List!32350)

(assert (=> b!2786650 (= condMapEmpty!17753 (= (arr!6175 (_values!4175 (v!33855 (underlying!7991 (v!33856 (underlying!7992 (cache!3943 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32350)) mapDefault!17753)))))

(declare-fun b!2786651 () Bool)

(declare-fun res!1162885 () Bool)

(assert (=> b!2786651 (=> res!1162885 e!1758615)))

(assert (=> b!2786651 (= res!1162885 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2786652 () Bool)

(declare-fun e!1758616 () Bool)

(assert (=> b!2786652 (= e!1758616 e!1758624)))

(declare-fun b!2786653 () Bool)

(declare-fun res!1162879 () Bool)

(assert (=> b!2786653 (=> res!1162879 e!1758613)))

(assert (=> b!2786653 (= res!1162879 (not (= (size!25070 (_1!19276 lt!995549)) testedPSize!143)))))

(declare-fun e!1758631 () Bool)

(declare-fun e!1758614 () Bool)

(assert (=> b!2786654 (= e!1758631 (and e!1758614 tp!883706))))

(declare-fun b!2786655 () Bool)

(declare-fun e!1758619 () Bool)

(declare-fun lt!995552 () MutLongMap!3894)

(get-info :version)

(assert (=> b!2786655 (= e!1758619 (and e!1758616 ((_ is LongMap!3894) lt!995552)))))

(assert (=> b!2786655 (= lt!995552 (v!33856 (underlying!7992 (cache!3943 cacheUp!890))))))

(declare-fun b!2786656 () Bool)

(declare-fun tp!883713 () Bool)

(assert (=> b!2786656 (= e!1758638 (and tp!883713 mapRes!17754))))

(declare-fun condMapEmpty!17754 () Bool)

(declare-fun mapDefault!17754 () List!32349)

(assert (=> b!2786656 (= condMapEmpty!17754 (= (arr!6174 (_values!4174 (v!33853 (underlying!7989 (v!33854 (underlying!7990 (cache!3942 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32349)) mapDefault!17754)))))

(declare-fun b!2786657 () Bool)

(declare-fun e!1758618 () Bool)

(declare-fun tp_is_empty!14107 () Bool)

(declare-fun tp!883704 () Bool)

(assert (=> b!2786657 (= e!1758618 (and tp_is_empty!14107 tp!883704))))

(declare-fun mapNonEmpty!17753 () Bool)

(declare-fun tp!883707 () Bool)

(declare-fun tp!883718 () Bool)

(assert (=> mapNonEmpty!17753 (= mapRes!17753 (and tp!883707 tp!883718))))

(declare-fun mapValue!17754 () List!32350)

(declare-fun mapRest!17753 () (Array (_ BitVec 32) List!32350))

(declare-fun mapKey!17753 () (_ BitVec 32))

(assert (=> mapNonEmpty!17753 (= (arr!6175 (_values!4175 (v!33855 (underlying!7991 (v!33856 (underlying!7992 (cache!3943 cacheUp!890))))))) (store mapRest!17753 mapKey!17753 mapValue!17754))))

(declare-fun res!1162880 () Bool)

(assert (=> start!269296 (=> (not res!1162880) (not e!1758637))))

(assert (=> start!269296 (= res!1162880 (= lt!995547 lt!995539))))

(assert (=> start!269296 (= lt!995539 (list!12142 totalInput!758))))

(assert (=> start!269296 (= lt!995547 (++!7967 testedP!183 testedSuffix!143))))

(assert (=> start!269296 e!1758637))

(declare-fun e!1758617 () Bool)

(declare-fun inv!43813 (BalanceConc!19648) Bool)

(assert (=> start!269296 (and (inv!43813 totalInput!758) e!1758617)))

(declare-fun condSetEmpty!23587 () Bool)

(declare-fun z!3684 () (InoxSet Context!4730))

(assert (=> start!269296 (= condSetEmpty!23587 (= z!3684 ((as const (Array Context!4730 Bool)) false)))))

(assert (=> start!269296 setRes!23587))

(assert (=> start!269296 true))

(declare-fun e!1758625 () Bool)

(assert (=> start!269296 e!1758625))

(assert (=> start!269296 e!1758618))

(declare-fun e!1758611 () Bool)

(declare-fun inv!43814 (CacheDown!2626) Bool)

(assert (=> start!269296 (and (inv!43814 cacheDown!1009) e!1758611)))

(declare-fun inv!43815 (CacheUp!2504) Bool)

(assert (=> start!269296 (and (inv!43815 cacheUp!890) e!1758621)))

(declare-fun b!2786658 () Bool)

(assert (=> b!2786658 (= e!1758628 e!1758615)))

(declare-fun res!1162881 () Bool)

(assert (=> b!2786658 (=> res!1162881 e!1758615)))

(declare-fun lostCauseZipper!465 ((InoxSet Context!4730)) Bool)

(assert (=> b!2786658 (= res!1162881 (lostCauseZipper!465 z!3684))))

(declare-fun lt!995551 () List!32347)

(assert (=> b!2786658 (and (= testedSuffix!143 lt!995551) (= lt!995551 testedSuffix!143))))

(declare-fun lt!995533 () Unit!46471)

(declare-fun lemmaSamePrefixThenSameSuffix!1166 (List!32347 List!32347 List!32347 List!32347 List!32347) Unit!46471)

(assert (=> b!2786658 (= lt!995533 (lemmaSamePrefixThenSameSuffix!1166 testedP!183 testedSuffix!143 testedP!183 lt!995551 lt!995539))))

(declare-fun getSuffix!1265 (List!32347 List!32347) List!32347)

(assert (=> b!2786658 (= lt!995551 (getSuffix!1265 lt!995539 testedP!183))))

(declare-fun setNonEmpty!23587 () Bool)

(declare-fun setElem!23587 () Context!4730)

(declare-fun tp!883717 () Bool)

(declare-fun inv!43816 (Context!4730) Bool)

(assert (=> setNonEmpty!23587 (= setRes!23587 (and tp!883717 (inv!43816 setElem!23587) e!1758633))))

(declare-fun setRest!23587 () (InoxSet Context!4730))

(assert (=> setNonEmpty!23587 (= z!3684 ((_ map or) (store ((as const (Array Context!4730 Bool)) false) setElem!23587 true) setRest!23587))))

(declare-fun b!2786659 () Bool)

(declare-fun e!1758635 () Bool)

(assert (=> b!2786659 (= e!1758613 e!1758635)))

(declare-fun res!1162876 () Bool)

(assert (=> b!2786659 (=> res!1162876 e!1758635)))

(declare-fun lt!995543 () C!16452)

(declare-fun head!6170 (List!32347) C!16452)

(assert (=> b!2786659 (= res!1162876 (not (= lt!995543 (head!6170 testedSuffix!143))))))

(declare-fun apply!7544 (BalanceConc!19648 Int) C!16452)

(assert (=> b!2786659 (= lt!995543 (apply!7544 totalInput!758 testedPSize!143))))

(declare-fun drop!1724 (List!32347 Int) List!32347)

(declare-fun apply!7545 (List!32347 Int) C!16452)

(assert (=> b!2786659 (= (head!6170 (drop!1724 lt!995539 testedPSize!143)) (apply!7545 lt!995539 testedPSize!143))))

(declare-fun lt!995546 () Unit!46471)

(declare-fun lemmaDropApply!930 (List!32347 Int) Unit!46471)

(assert (=> b!2786659 (= lt!995546 (lemmaDropApply!930 lt!995539 testedPSize!143))))

(assert (=> b!2786659 (not (or (not (= lt!995534 testedP!183)) (not (= lt!995538 testedSuffix!143))))))

(declare-fun lt!995548 () Unit!46471)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!357 (List!32347 List!32347 List!32347 List!32347) Unit!46471)

(assert (=> b!2786659 (= lt!995548 (lemmaConcatSameAndSameSizesThenSameLists!357 lt!995534 lt!995538 testedP!183 testedSuffix!143))))

(declare-fun b!2786660 () Bool)

(declare-fun e!1758629 () Bool)

(assert (=> b!2786660 (= e!1758629 true)))

(declare-fun lt!995541 () List!32347)

(declare-fun tail!4402 (List!32347) List!32347)

(assert (=> b!2786660 (= lt!995541 (++!7967 testedP!183 (Cons!32247 lt!995543 (tail!4402 testedSuffix!143))))))

(assert (=> b!2786660 (isPrefix!2587 (++!7967 testedP!183 (Cons!32247 (head!6170 lt!995551) Nil!32247)) lt!995539)))

(declare-fun lt!995545 () Unit!46471)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!467 (List!32347 List!32347) Unit!46471)

(assert (=> b!2786660 (= lt!995545 (lemmaAddHeadSuffixToPrefixStillPrefix!467 testedP!183 lt!995539))))

(declare-fun b!2786661 () Bool)

(declare-fun Unit!46474 () Unit!46471)

(assert (=> b!2786661 (= e!1758626 Unit!46474)))

(declare-fun lt!995553 () Unit!46471)

(declare-fun lemmaIsPrefixRefl!1691 (List!32347 List!32347) Unit!46471)

(assert (=> b!2786661 (= lt!995553 (lemmaIsPrefixRefl!1691 lt!995539 lt!995539))))

(assert (=> b!2786661 (isPrefix!2587 lt!995539 lt!995539)))

(declare-fun lt!995550 () Unit!46471)

(declare-fun lemmaIsPrefixSameLengthThenSameList!471 (List!32347 List!32347 List!32347) Unit!46471)

(assert (=> b!2786661 (= lt!995550 (lemmaIsPrefixSameLengthThenSameList!471 lt!995539 testedP!183 lt!995539))))

(assert (=> b!2786661 false))

(declare-fun b!2786662 () Bool)

(declare-fun tp!883703 () Bool)

(declare-fun inv!43817 (Conc!10017) Bool)

(assert (=> b!2786662 (= e!1758617 (and (inv!43817 (c!452559 totalInput!758)) tp!883703))))

(declare-fun mapNonEmpty!17754 () Bool)

(declare-fun tp!883711 () Bool)

(declare-fun tp!883709 () Bool)

(assert (=> mapNonEmpty!17754 (= mapRes!17754 (and tp!883711 tp!883709))))

(declare-fun mapKey!17754 () (_ BitVec 32))

(declare-fun mapRest!17754 () (Array (_ BitVec 32) List!32349))

(declare-fun mapValue!17753 () List!32349)

(assert (=> mapNonEmpty!17754 (= (arr!6174 (_values!4174 (v!33853 (underlying!7989 (v!33854 (underlying!7990 (cache!3942 cacheDown!1009))))))) (store mapRest!17754 mapKey!17754 mapValue!17753))))

(declare-fun tp!883705 () Bool)

(declare-fun tp!883716 () Bool)

(declare-fun array_inv!4422 (array!13853) Bool)

(assert (=> b!2786663 (= e!1758620 (and tp!883712 tp!883716 tp!883705 (array_inv!4420 (_keys!4194 (v!33855 (underlying!7991 (v!33856 (underlying!7992 (cache!3943 cacheUp!890))))))) (array_inv!4422 (_values!4175 (v!33855 (underlying!7991 (v!33856 (underlying!7992 (cache!3943 cacheUp!890))))))) e!1758634))))

(declare-fun b!2786664 () Bool)

(declare-fun res!1162887 () Bool)

(assert (=> b!2786664 (=> (not res!1162887) (not e!1758622))))

(declare-fun valid!3044 (CacheUp!2504) Bool)

(assert (=> b!2786664 (= res!1162887 (valid!3044 cacheUp!890))))

(declare-fun b!2786665 () Bool)

(declare-fun lt!995542 () MutLongMap!3893)

(assert (=> b!2786665 (= e!1758614 (and e!1758636 ((_ is LongMap!3893) lt!995542)))))

(assert (=> b!2786665 (= lt!995542 (v!33854 (underlying!7990 (cache!3942 cacheDown!1009))))))

(assert (=> b!2786666 (= e!1758623 (and e!1758619 tp!883715))))

(declare-fun b!2786667 () Bool)

(declare-fun tp!883710 () Bool)

(assert (=> b!2786667 (= e!1758625 (and tp_is_empty!14107 tp!883710))))

(declare-fun b!2786668 () Bool)

(assert (=> b!2786668 (= e!1758611 e!1758631)))

(declare-fun b!2786669 () Bool)

(assert (=> b!2786669 (= e!1758635 e!1758629)))

(declare-fun res!1162882 () Bool)

(assert (=> b!2786669 (=> res!1162882 e!1758629)))

(assert (=> b!2786669 (= res!1162882 (>= lt!995540 lt!995537))))

(declare-fun lt!995544 () Unit!46471)

(assert (=> b!2786669 (= lt!995544 e!1758626)))

(declare-fun c!452558 () Bool)

(assert (=> b!2786669 (= c!452558 (= lt!995540 lt!995537))))

(assert (=> b!2786669 (<= lt!995540 (size!25069 lt!995539))))

(declare-fun lt!995536 () Unit!46471)

(declare-fun lemmaIsPrefixThenSmallerEqSize!274 (List!32347 List!32347) Unit!46471)

(assert (=> b!2786669 (= lt!995536 (lemmaIsPrefixThenSmallerEqSize!274 testedP!183 lt!995539))))

(assert (= (and start!269296 res!1162880) b!2786641))

(assert (= (and b!2786641 res!1162877) b!2786644))

(assert (= (and b!2786644 res!1162886) b!2786664))

(assert (= (and b!2786664 res!1162887) b!2786646))

(assert (= (and b!2786646 res!1162884) b!2786649))

(assert (= (and b!2786649 (not res!1162878)) b!2786658))

(assert (= (and b!2786658 (not res!1162881)) b!2786651))

(assert (= (and b!2786651 (not res!1162885)) b!2786638))

(assert (= (and b!2786638 (not res!1162883)) b!2786653))

(assert (= (and b!2786653 (not res!1162879)) b!2786659))

(assert (= (and b!2786659 (not res!1162876)) b!2786669))

(assert (= (and b!2786669 c!452558) b!2786661))

(assert (= (and b!2786669 (not c!452558)) b!2786640))

(assert (= (and b!2786669 (not res!1162882)) b!2786660))

(assert (= start!269296 b!2786662))

(assert (= (and start!269296 condSetEmpty!23587) setIsEmpty!23587))

(assert (= (and start!269296 (not condSetEmpty!23587)) setNonEmpty!23587))

(assert (= setNonEmpty!23587 b!2786643))

(assert (= (and start!269296 ((_ is Cons!32247) testedP!183)) b!2786667))

(assert (= (and start!269296 ((_ is Cons!32247) testedSuffix!143)) b!2786657))

(assert (= (and b!2786656 condMapEmpty!17754) mapIsEmpty!17754))

(assert (= (and b!2786656 (not condMapEmpty!17754)) mapNonEmpty!17754))

(assert (= b!2786639 b!2786656))

(assert (= b!2786642 b!2786639))

(assert (= b!2786645 b!2786642))

(assert (= (and b!2786665 ((_ is LongMap!3893) (v!33854 (underlying!7990 (cache!3942 cacheDown!1009))))) b!2786645))

(assert (= b!2786654 b!2786665))

(assert (= (and b!2786668 ((_ is HashMap!3799) (cache!3942 cacheDown!1009))) b!2786654))

(assert (= start!269296 b!2786668))

(assert (= (and b!2786650 condMapEmpty!17753) mapIsEmpty!17753))

(assert (= (and b!2786650 (not condMapEmpty!17753)) mapNonEmpty!17753))

(assert (= b!2786663 b!2786650))

(assert (= b!2786648 b!2786663))

(assert (= b!2786652 b!2786648))

(assert (= (and b!2786655 ((_ is LongMap!3894) (v!33856 (underlying!7992 (cache!3943 cacheUp!890))))) b!2786652))

(assert (= b!2786666 b!2786655))

(assert (= (and b!2786647 ((_ is HashMap!3800) (cache!3943 cacheUp!890))) b!2786666))

(assert (= start!269296 b!2786647))

(declare-fun m!3216967 () Bool)

(assert (=> b!2786659 m!3216967))

(declare-fun m!3216969 () Bool)

(assert (=> b!2786659 m!3216969))

(assert (=> b!2786659 m!3216967))

(declare-fun m!3216971 () Bool)

(assert (=> b!2786659 m!3216971))

(declare-fun m!3216973 () Bool)

(assert (=> b!2786659 m!3216973))

(declare-fun m!3216975 () Bool)

(assert (=> b!2786659 m!3216975))

(declare-fun m!3216977 () Bool)

(assert (=> b!2786659 m!3216977))

(declare-fun m!3216979 () Bool)

(assert (=> b!2786659 m!3216979))

(declare-fun m!3216981 () Bool)

(assert (=> b!2786662 m!3216981))

(declare-fun m!3216983 () Bool)

(assert (=> b!2786658 m!3216983))

(declare-fun m!3216985 () Bool)

(assert (=> b!2786658 m!3216985))

(declare-fun m!3216987 () Bool)

(assert (=> b!2786658 m!3216987))

(declare-fun m!3216989 () Bool)

(assert (=> mapNonEmpty!17753 m!3216989))

(declare-fun m!3216991 () Bool)

(assert (=> b!2786661 m!3216991))

(declare-fun m!3216993 () Bool)

(assert (=> b!2786661 m!3216993))

(declare-fun m!3216995 () Bool)

(assert (=> b!2786661 m!3216995))

(declare-fun m!3216997 () Bool)

(assert (=> b!2786649 m!3216997))

(declare-fun m!3216999 () Bool)

(assert (=> b!2786649 m!3216999))

(declare-fun m!3217001 () Bool)

(assert (=> b!2786649 m!3217001))

(declare-fun m!3217003 () Bool)

(assert (=> b!2786638 m!3217003))

(declare-fun m!3217005 () Bool)

(assert (=> b!2786638 m!3217005))

(declare-fun m!3217007 () Bool)

(assert (=> b!2786638 m!3217007))

(declare-fun m!3217009 () Bool)

(assert (=> b!2786638 m!3217009))

(declare-fun m!3217011 () Bool)

(assert (=> b!2786664 m!3217011))

(declare-fun m!3217013 () Bool)

(assert (=> b!2786641 m!3217013))

(declare-fun m!3217015 () Bool)

(assert (=> b!2786663 m!3217015))

(declare-fun m!3217017 () Bool)

(assert (=> b!2786663 m!3217017))

(declare-fun m!3217019 () Bool)

(assert (=> setNonEmpty!23587 m!3217019))

(declare-fun m!3217021 () Bool)

(assert (=> mapNonEmpty!17754 m!3217021))

(declare-fun m!3217023 () Bool)

(assert (=> b!2786653 m!3217023))

(declare-fun m!3217025 () Bool)

(assert (=> b!2786646 m!3217025))

(declare-fun m!3217027 () Bool)

(assert (=> start!269296 m!3217027))

(declare-fun m!3217029 () Bool)

(assert (=> start!269296 m!3217029))

(declare-fun m!3217031 () Bool)

(assert (=> start!269296 m!3217031))

(declare-fun m!3217033 () Bool)

(assert (=> start!269296 m!3217033))

(declare-fun m!3217035 () Bool)

(assert (=> start!269296 m!3217035))

(declare-fun m!3217037 () Bool)

(assert (=> b!2786669 m!3217037))

(declare-fun m!3217039 () Bool)

(assert (=> b!2786669 m!3217039))

(declare-fun m!3217041 () Bool)

(assert (=> b!2786639 m!3217041))

(declare-fun m!3217043 () Bool)

(assert (=> b!2786639 m!3217043))

(declare-fun m!3217045 () Bool)

(assert (=> b!2786660 m!3217045))

(declare-fun m!3217047 () Bool)

(assert (=> b!2786660 m!3217047))

(declare-fun m!3217049 () Bool)

(assert (=> b!2786660 m!3217049))

(declare-fun m!3217051 () Bool)

(assert (=> b!2786660 m!3217051))

(assert (=> b!2786660 m!3217047))

(declare-fun m!3217053 () Bool)

(assert (=> b!2786660 m!3217053))

(declare-fun m!3217055 () Bool)

(assert (=> b!2786660 m!3217055))

(declare-fun m!3217057 () Bool)

(assert (=> b!2786644 m!3217057))

(check-sat (not b!2786661) (not b!2786646) (not b_next!79515) (not mapNonEmpty!17754) (not b!2786667) (not b!2786664) (not b!2786659) b_and!203547 (not b!2786650) (not start!269296) (not b_next!79509) (not b!2786639) (not b!2786660) (not b!2786658) (not mapNonEmpty!17753) (not b!2786663) (not b!2786653) (not b!2786643) b_and!203549 (not b!2786644) (not b!2786641) (not b!2786649) (not b_next!79511) (not b!2786657) (not b!2786638) tp_is_empty!14107 b_and!203543 (not b!2786656) (not b!2786662) (not b!2786669) (not setNonEmpty!23587) (not b_next!79513) b_and!203545)
(check-sat (not b_next!79509) (not b_next!79515) b_and!203549 (not b_next!79511) b_and!203543 b_and!203547 (not b_next!79513) b_and!203545)
