; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270690 () Bool)

(assert start!270690)

(declare-fun b!2799722 () Bool)

(declare-fun b_free!79373 () Bool)

(declare-fun b_next!80077 () Bool)

(assert (=> b!2799722 (= b_free!79373 (not b_next!80077))))

(declare-fun tp!891846 () Bool)

(declare-fun b_and!204111 () Bool)

(assert (=> b!2799722 (= tp!891846 b_and!204111)))

(declare-fun b!2799704 () Bool)

(declare-fun b_free!79375 () Bool)

(declare-fun b_next!80079 () Bool)

(assert (=> b!2799704 (= b_free!79375 (not b_next!80079))))

(declare-fun tp!891847 () Bool)

(declare-fun b_and!204113 () Bool)

(assert (=> b!2799704 (= tp!891847 b_and!204113)))

(declare-fun b!2799717 () Bool)

(declare-fun b_free!79377 () Bool)

(declare-fun b_next!80081 () Bool)

(assert (=> b!2799717 (= b_free!79377 (not b_next!80081))))

(declare-fun tp!891859 () Bool)

(declare-fun b_and!204115 () Bool)

(assert (=> b!2799717 (= tp!891859 b_and!204115)))

(declare-fun b!2799702 () Bool)

(declare-fun b_free!79379 () Bool)

(declare-fun b_next!80083 () Bool)

(assert (=> b!2799702 (= b_free!79379 (not b_next!80083))))

(declare-fun tp!891855 () Bool)

(declare-fun b_and!204117 () Bool)

(assert (=> b!2799702 (= tp!891855 b_and!204117)))

(declare-fun b!2799692 () Bool)

(declare-fun res!1166809 () Bool)

(declare-fun e!1768842 () Bool)

(assert (=> b!2799692 (=> res!1166809 e!1768842)))

(declare-datatypes ((C!16592 0))(
  ( (C!16593 (val!10230 Int)) )
))
(declare-datatypes ((List!32633 0))(
  ( (Nil!32533) (Cons!32533 (h!37953 C!16592) (t!228798 List!32633)) )
))
(declare-datatypes ((IArray!20155 0))(
  ( (IArray!20156 (innerList!10135 List!32633)) )
))
(declare-datatypes ((Conc!10075 0))(
  ( (Node!10075 (left!24583 Conc!10075) (right!24913 Conc!10075) (csize!20380 Int) (cheight!10286 Int)) (Leaf!15352 (xs!13187 IArray!20155) (csize!20381 Int)) (Empty!10075) )
))
(declare-datatypes ((BalanceConc!19764 0))(
  ( (BalanceConc!19765 (c!453994 Conc!10075)) )
))
(declare-datatypes ((tuple2!33134 0))(
  ( (tuple2!33135 (_1!19624 BalanceConc!19764) (_2!19624 BalanceConc!19764)) )
))
(declare-fun lt!1000600 () tuple2!33134)

(declare-fun testedPSize!143 () Int)

(declare-fun size!25387 (BalanceConc!19764) Int)

(assert (=> b!2799692 (= res!1166809 (not (= (size!25387 (_1!19624 lt!1000600)) testedPSize!143)))))

(declare-fun b!2799693 () Bool)

(declare-datatypes ((Unit!46651 0))(
  ( (Unit!46652) )
))
(declare-fun e!1768865 () Unit!46651)

(declare-fun Unit!46653 () Unit!46651)

(assert (=> b!2799693 (= e!1768865 Unit!46653)))

(declare-fun lt!1000595 () Unit!46651)

(declare-fun lt!1000607 () List!32633)

(declare-fun lemmaIsPrefixRefl!1717 (List!32633 List!32633) Unit!46651)

(assert (=> b!2799693 (= lt!1000595 (lemmaIsPrefixRefl!1717 lt!1000607 lt!1000607))))

(declare-fun isPrefix!2634 (List!32633 List!32633) Bool)

(assert (=> b!2799693 (isPrefix!2634 lt!1000607 lt!1000607)))

(declare-fun lt!1000602 () Unit!46651)

(declare-fun testedP!183 () List!32633)

(declare-fun lemmaIsPrefixSameLengthThenSameList!493 (List!32633 List!32633 List!32633) Unit!46651)

(assert (=> b!2799693 (= lt!1000602 (lemmaIsPrefixSameLengthThenSameList!493 lt!1000607 testedP!183 lt!1000607))))

(assert (=> b!2799693 false))

(declare-fun res!1166806 () Bool)

(declare-fun e!1768853 () Bool)

(assert (=> start!270690 (=> (not res!1166806) (not e!1768853))))

(declare-fun lt!1000618 () List!32633)

(assert (=> start!270690 (= res!1166806 (= lt!1000618 lt!1000607))))

(declare-fun totalInput!758 () BalanceConc!19764)

(declare-fun list!12212 (BalanceConc!19764) List!32633)

(assert (=> start!270690 (= lt!1000607 (list!12212 totalInput!758))))

(declare-fun testedSuffix!143 () List!32633)

(declare-fun ++!8021 (List!32633 List!32633) List!32633)

(assert (=> start!270690 (= lt!1000618 (++!8021 testedP!183 testedSuffix!143))))

(assert (=> start!270690 e!1768853))

(declare-fun e!1768864 () Bool)

(declare-fun inv!44184 (BalanceConc!19764) Bool)

(assert (=> start!270690 (and (inv!44184 totalInput!758) e!1768864)))

(declare-fun condSetEmpty!24445 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8217 0))(
  ( (ElementMatch!8217 (c!453995 C!16592)) (Concat!13305 (regOne!16946 Regex!8217) (regTwo!16946 Regex!8217)) (EmptyExpr!8217) (Star!8217 (reg!8546 Regex!8217)) (EmptyLang!8217) (Union!8217 (regOne!16947 Regex!8217) (regTwo!16947 Regex!8217)) )
))
(declare-datatypes ((List!32634 0))(
  ( (Nil!32534) (Cons!32534 (h!37954 Regex!8217) (t!228799 List!32634)) )
))
(declare-datatypes ((Context!4870 0))(
  ( (Context!4871 (exprs!2935 List!32634)) )
))
(declare-fun z!3684 () (InoxSet Context!4870))

(assert (=> start!270690 (= condSetEmpty!24445 (= z!3684 ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setRes!24445 () Bool)

(assert (=> start!270690 setRes!24445))

(assert (=> start!270690 true))

(declare-fun e!1768863 () Bool)

(assert (=> start!270690 e!1768863))

(declare-fun e!1768843 () Bool)

(assert (=> start!270690 e!1768843))

(declare-datatypes ((array!14307 0))(
  ( (array!14308 (arr!6375 (Array (_ BitVec 32) (_ BitVec 64))) (size!25388 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!5174 0))(
  ( (tuple3!5175 (_1!19625 Regex!8217) (_2!19625 Context!4870) (_3!3057 C!16592)) )
))
(declare-datatypes ((tuple2!33136 0))(
  ( (tuple2!33137 (_1!19626 tuple3!5174) (_2!19626 (InoxSet Context!4870))) )
))
(declare-datatypes ((List!32635 0))(
  ( (Nil!32535) (Cons!32535 (h!37955 tuple2!33136) (t!228800 List!32635)) )
))
(declare-datatypes ((array!14309 0))(
  ( (array!14310 (arr!6376 (Array (_ BitVec 32) List!32635)) (size!25389 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8050 0))(
  ( (LongMapFixedSize!8051 (defaultEntry!4410 Int) (mask!9870 (_ BitVec 32)) (extraKeys!4274 (_ BitVec 32)) (zeroValue!4284 List!32635) (minValue!4284 List!32635) (_size!8093 (_ BitVec 32)) (_keys!4325 array!14307) (_values!4306 array!14309) (_vacant!4086 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15909 0))(
  ( (Cell!15910 (v!34135 LongMapFixedSize!8050)) )
))
(declare-datatypes ((MutLongMap!4025 0))(
  ( (LongMap!4025 (underlying!8253 Cell!15909)) (MutLongMapExt!4024 (__x!21725 Int)) )
))
(declare-datatypes ((Cell!15911 0))(
  ( (Cell!15912 (v!34136 MutLongMap!4025)) )
))
(declare-datatypes ((Hashable!3941 0))(
  ( (HashableExt!3940 (__x!21726 Int)) )
))
(declare-datatypes ((MutableMap!3931 0))(
  ( (MutableMapExt!3930 (__x!21727 Int)) (HashMap!3931 (underlying!8254 Cell!15911) (hashF!5973 Hashable!3941) (_size!8094 (_ BitVec 32)) (defaultValue!4102 Int)) )
))
(declare-datatypes ((CacheDown!2760 0))(
  ( (CacheDown!2761 (cache!4074 MutableMap!3931)) )
))
(declare-fun cacheDown!1009 () CacheDown!2760)

(declare-fun e!1768867 () Bool)

(declare-fun inv!44185 (CacheDown!2760) Bool)

(assert (=> start!270690 (and (inv!44185 cacheDown!1009) e!1768867)))

(declare-datatypes ((Hashable!3942 0))(
  ( (HashableExt!3941 (__x!21728 Int)) )
))
(declare-datatypes ((tuple2!33138 0))(
  ( (tuple2!33139 (_1!19627 Context!4870) (_2!19627 C!16592)) )
))
(declare-datatypes ((tuple2!33140 0))(
  ( (tuple2!33141 (_1!19628 tuple2!33138) (_2!19628 (InoxSet Context!4870))) )
))
(declare-datatypes ((List!32636 0))(
  ( (Nil!32536) (Cons!32536 (h!37956 tuple2!33140) (t!228801 List!32636)) )
))
(declare-datatypes ((array!14311 0))(
  ( (array!14312 (arr!6377 (Array (_ BitVec 32) List!32636)) (size!25390 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8052 0))(
  ( (LongMapFixedSize!8053 (defaultEntry!4411 Int) (mask!9871 (_ BitVec 32)) (extraKeys!4275 (_ BitVec 32)) (zeroValue!4285 List!32636) (minValue!4285 List!32636) (_size!8095 (_ BitVec 32)) (_keys!4326 array!14307) (_values!4307 array!14311) (_vacant!4087 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15913 0))(
  ( (Cell!15914 (v!34137 LongMapFixedSize!8052)) )
))
(declare-datatypes ((MutLongMap!4026 0))(
  ( (LongMap!4026 (underlying!8255 Cell!15913)) (MutLongMapExt!4025 (__x!21729 Int)) )
))
(declare-datatypes ((Cell!15915 0))(
  ( (Cell!15916 (v!34138 MutLongMap!4026)) )
))
(declare-datatypes ((MutableMap!3932 0))(
  ( (MutableMapExt!3931 (__x!21730 Int)) (HashMap!3932 (underlying!8256 Cell!15915) (hashF!5974 Hashable!3942) (_size!8096 (_ BitVec 32)) (defaultValue!4103 Int)) )
))
(declare-datatypes ((CacheUp!2634 0))(
  ( (CacheUp!2635 (cache!4075 MutableMap!3932)) )
))
(declare-fun cacheUp!890 () CacheUp!2634)

(declare-fun e!1768854 () Bool)

(declare-fun inv!44186 (CacheUp!2634) Bool)

(assert (=> start!270690 (and (inv!44186 cacheUp!890) e!1768854)))

(declare-fun mapIsEmpty!18299 () Bool)

(declare-fun mapRes!18299 () Bool)

(assert (=> mapIsEmpty!18299 mapRes!18299))

(declare-fun b!2799694 () Bool)

(declare-fun e!1768858 () Bool)

(declare-fun e!1768846 () Bool)

(assert (=> b!2799694 (= e!1768858 e!1768846)))

(declare-fun res!1166805 () Bool)

(assert (=> b!2799694 (=> res!1166805 e!1768846)))

(declare-fun nullableZipper!656 ((InoxSet Context!4870)) Bool)

(assert (=> b!2799694 (= res!1166805 (not (nullableZipper!656 z!3684)))))

(declare-fun lt!1000617 () List!32633)

(declare-fun lt!1000603 () List!32633)

(assert (=> b!2799694 (= (++!8021 lt!1000617 lt!1000603) lt!1000607)))

(declare-fun lt!1000606 () C!16592)

(assert (=> b!2799694 (= lt!1000617 (++!8021 testedP!183 (Cons!32533 lt!1000606 Nil!32533)))))

(declare-fun lt!1000613 () Unit!46651)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!892 (List!32633 C!16592 List!32633 List!32633) Unit!46651)

(assert (=> b!2799694 (= lt!1000613 (lemmaMoveElementToOtherListKeepsConcatEq!892 testedP!183 lt!1000606 lt!1000603 lt!1000607))))

(declare-fun tail!4428 (List!32633) List!32633)

(assert (=> b!2799694 (= lt!1000603 (tail!4428 testedSuffix!143))))

(declare-fun lt!1000604 () List!32633)

(declare-fun head!6200 (List!32633) C!16592)

(assert (=> b!2799694 (isPrefix!2634 (++!8021 testedP!183 (Cons!32533 (head!6200 lt!1000604) Nil!32533)) lt!1000607)))

(declare-fun lt!1000598 () Unit!46651)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!484 (List!32633 List!32633) Unit!46651)

(assert (=> b!2799694 (= lt!1000598 (lemmaAddHeadSuffixToPrefixStillPrefix!484 testedP!183 lt!1000607))))

(declare-fun b!2799695 () Bool)

(declare-fun e!1768857 () Bool)

(declare-fun tp!891849 () Bool)

(declare-fun mapRes!18300 () Bool)

(assert (=> b!2799695 (= e!1768857 (and tp!891849 mapRes!18300))))

(declare-fun condMapEmpty!18300 () Bool)

(declare-fun mapDefault!18300 () List!32636)

(assert (=> b!2799695 (= condMapEmpty!18300 (= (arr!6377 (_values!4307 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32636)) mapDefault!18300)))))

(declare-fun b!2799696 () Bool)

(declare-fun e!1768861 () Bool)

(declare-fun e!1768848 () Bool)

(declare-fun lt!1000614 () MutLongMap!4026)

(get-info :version)

(assert (=> b!2799696 (= e!1768861 (and e!1768848 ((_ is LongMap!4026) lt!1000614)))))

(assert (=> b!2799696 (= lt!1000614 (v!34138 (underlying!8256 (cache!4075 cacheUp!890))))))

(declare-fun mapNonEmpty!18299 () Bool)

(declare-fun tp!891851 () Bool)

(declare-fun tp!891856 () Bool)

(assert (=> mapNonEmpty!18299 (= mapRes!18300 (and tp!891851 tp!891856))))

(declare-fun mapRest!18300 () (Array (_ BitVec 32) List!32636))

(declare-fun mapKey!18299 () (_ BitVec 32))

(declare-fun mapValue!18299 () List!32636)

(assert (=> mapNonEmpty!18299 (= (arr!6377 (_values!4307 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890))))))) (store mapRest!18300 mapKey!18299 mapValue!18299))))

(declare-fun b!2799697 () Bool)

(declare-fun e!1768859 () Bool)

(assert (=> b!2799697 (= e!1768859 e!1768858)))

(declare-fun res!1166802 () Bool)

(assert (=> b!2799697 (=> res!1166802 e!1768858)))

(declare-fun lt!1000615 () Int)

(declare-fun lt!1000605 () Int)

(assert (=> b!2799697 (= res!1166802 (>= lt!1000615 lt!1000605))))

(declare-fun lt!1000609 () Unit!46651)

(assert (=> b!2799697 (= lt!1000609 e!1768865)))

(declare-fun c!453993 () Bool)

(assert (=> b!2799697 (= c!453993 (= lt!1000615 lt!1000605))))

(declare-fun size!25391 (List!32633) Int)

(assert (=> b!2799697 (<= lt!1000615 (size!25391 lt!1000607))))

(declare-fun lt!1000597 () Unit!46651)

(declare-fun lemmaIsPrefixThenSmallerEqSize!294 (List!32633 List!32633) Unit!46651)

(assert (=> b!2799697 (= lt!1000597 (lemmaIsPrefixThenSmallerEqSize!294 testedP!183 lt!1000607))))

(declare-fun b!2799698 () Bool)

(declare-fun e!1768850 () Bool)

(assert (=> b!2799698 (= e!1768850 e!1768842)))

(declare-fun res!1166814 () Bool)

(assert (=> b!2799698 (=> res!1166814 e!1768842)))

(declare-fun lt!1000599 () List!32633)

(declare-fun lt!1000611 () List!32633)

(assert (=> b!2799698 (= res!1166814 (not (= (++!8021 lt!1000599 lt!1000611) lt!1000607)))))

(assert (=> b!2799698 (= lt!1000611 (list!12212 (_2!19624 lt!1000600)))))

(assert (=> b!2799698 (= lt!1000599 (list!12212 (_1!19624 lt!1000600)))))

(declare-fun splitAt!193 (BalanceConc!19764 Int) tuple2!33134)

(assert (=> b!2799698 (= lt!1000600 (splitAt!193 totalInput!758 testedPSize!143))))

(declare-fun b!2799699 () Bool)

(declare-fun res!1166812 () Bool)

(assert (=> b!2799699 (=> res!1166812 e!1768850)))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2799699 (= res!1166812 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2799700 () Bool)

(declare-fun res!1166813 () Bool)

(declare-fun e!1768849 () Bool)

(assert (=> b!2799700 (=> (not res!1166813) (not e!1768849))))

(declare-fun valid!3151 (CacheUp!2634) Bool)

(assert (=> b!2799700 (= res!1166813 (valid!3151 cacheUp!890))))

(declare-fun mapIsEmpty!18300 () Bool)

(assert (=> mapIsEmpty!18300 mapRes!18300))

(declare-fun b!2799701 () Bool)

(declare-fun e!1768871 () Bool)

(declare-fun tp!891854 () Bool)

(assert (=> b!2799701 (= e!1768871 tp!891854)))

(declare-fun mapNonEmpty!18300 () Bool)

(declare-fun tp!891863 () Bool)

(declare-fun tp!891852 () Bool)

(assert (=> mapNonEmpty!18300 (= mapRes!18299 (and tp!891863 tp!891852))))

(declare-fun mapKey!18300 () (_ BitVec 32))

(declare-fun mapValue!18300 () List!32635)

(declare-fun mapRest!18299 () (Array (_ BitVec 32) List!32635))

(assert (=> mapNonEmpty!18300 (= (arr!6376 (_values!4306 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009))))))) (store mapRest!18299 mapKey!18300 mapValue!18300))))

(declare-fun e!1768862 () Bool)

(declare-fun e!1768847 () Bool)

(assert (=> b!2799702 (= e!1768862 (and e!1768847 tp!891855))))

(declare-fun setElem!24445 () Context!4870)

(declare-fun tp!891858 () Bool)

(declare-fun setNonEmpty!24445 () Bool)

(declare-fun inv!44187 (Context!4870) Bool)

(assert (=> setNonEmpty!24445 (= setRes!24445 (and tp!891858 (inv!44187 setElem!24445) e!1768871))))

(declare-fun setRest!24445 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24445 (= z!3684 ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24445 true) setRest!24445))))

(declare-fun b!2799703 () Bool)

(declare-fun e!1768845 () Bool)

(declare-fun lt!1000616 () MutLongMap!4025)

(assert (=> b!2799703 (= e!1768847 (and e!1768845 ((_ is LongMap!4025) lt!1000616)))))

(assert (=> b!2799703 (= lt!1000616 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009))))))

(declare-fun e!1768870 () Bool)

(assert (=> b!2799704 (= e!1768870 (and e!1768861 tp!891847))))

(declare-fun setIsEmpty!24445 () Bool)

(assert (=> setIsEmpty!24445 setRes!24445))

(declare-fun b!2799705 () Bool)

(declare-fun e!1768856 () Bool)

(assert (=> b!2799705 (= e!1768849 (not e!1768856))))

(declare-fun res!1166815 () Bool)

(assert (=> b!2799705 (=> res!1166815 e!1768856)))

(assert (=> b!2799705 (= res!1166815 (not (isPrefix!2634 testedP!183 lt!1000607)))))

(assert (=> b!2799705 (isPrefix!2634 testedP!183 lt!1000618)))

(declare-fun lt!1000610 () Unit!46651)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1741 (List!32633 List!32633) Unit!46651)

(assert (=> b!2799705 (= lt!1000610 (lemmaConcatTwoListThenFirstIsPrefix!1741 testedP!183 testedSuffix!143))))

(declare-fun b!2799706 () Bool)

(declare-fun e!1768869 () Bool)

(declare-fun e!1768868 () Bool)

(assert (=> b!2799706 (= e!1768869 e!1768868)))

(declare-fun b!2799707 () Bool)

(declare-fun e!1768852 () Bool)

(declare-datatypes ((tuple3!5176 0))(
  ( (tuple3!5177 (_1!19629 (InoxSet Context!4870)) (_2!19629 CacheUp!2634) (_3!3058 CacheDown!2760)) )
))
(declare-fun lt!1000596 () tuple3!5176)

(assert (=> b!2799707 (= e!1768852 (valid!3151 (_2!19629 lt!1000596)))))

(declare-fun b!2799708 () Bool)

(declare-fun e!1768860 () Bool)

(declare-fun tp!891864 () Bool)

(assert (=> b!2799708 (= e!1768860 (and tp!891864 mapRes!18299))))

(declare-fun condMapEmpty!18299 () Bool)

(declare-fun mapDefault!18299 () List!32635)

(assert (=> b!2799708 (= condMapEmpty!18299 (= (arr!6376 (_values!4306 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32635)) mapDefault!18299)))))

(declare-fun b!2799709 () Bool)

(assert (=> b!2799709 (= e!1768867 e!1768862)))

(declare-fun b!2799710 () Bool)

(assert (=> b!2799710 (= e!1768842 e!1768859)))

(declare-fun res!1166804 () Bool)

(assert (=> b!2799710 (=> res!1166804 e!1768859)))

(assert (=> b!2799710 (= res!1166804 (not (= lt!1000606 (head!6200 testedSuffix!143))))))

(declare-fun apply!7599 (BalanceConc!19764 Int) C!16592)

(assert (=> b!2799710 (= lt!1000606 (apply!7599 totalInput!758 testedPSize!143))))

(declare-fun drop!1747 (List!32633 Int) List!32633)

(declare-fun apply!7600 (List!32633 Int) C!16592)

(assert (=> b!2799710 (= (head!6200 (drop!1747 lt!1000607 testedPSize!143)) (apply!7600 lt!1000607 testedPSize!143))))

(declare-fun lt!1000612 () Unit!46651)

(declare-fun lemmaDropApply!951 (List!32633 Int) Unit!46651)

(assert (=> b!2799710 (= lt!1000612 (lemmaDropApply!951 lt!1000607 testedPSize!143))))

(assert (=> b!2799710 (not (or (not (= lt!1000599 testedP!183)) (not (= lt!1000611 testedSuffix!143))))))

(declare-fun lt!1000601 () Unit!46651)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!381 (List!32633 List!32633 List!32633 List!32633) Unit!46651)

(assert (=> b!2799710 (= lt!1000601 (lemmaConcatSameAndSameSizesThenSameLists!381 lt!1000599 lt!1000611 testedP!183 testedSuffix!143))))

(declare-fun b!2799711 () Bool)

(declare-fun tp!891861 () Bool)

(declare-fun inv!44188 (Conc!10075) Bool)

(assert (=> b!2799711 (= e!1768864 (and (inv!44188 (c!453994 totalInput!758)) tp!891861))))

(declare-fun b!2799712 () Bool)

(declare-fun e!1768844 () Bool)

(assert (=> b!2799712 (= e!1768853 e!1768844)))

(declare-fun res!1166803 () Bool)

(assert (=> b!2799712 (=> (not res!1166803) (not e!1768844))))

(assert (=> b!2799712 (= res!1166803 (= testedPSize!143 lt!1000615))))

(assert (=> b!2799712 (= lt!1000615 (size!25391 testedP!183))))

(declare-fun b!2799713 () Bool)

(assert (=> b!2799713 (= e!1768854 e!1768870)))

(declare-fun b!2799714 () Bool)

(declare-fun tp_is_empty!14247 () Bool)

(declare-fun tp!891848 () Bool)

(assert (=> b!2799714 (= e!1768843 (and tp_is_empty!14247 tp!891848))))

(declare-fun b!2799715 () Bool)

(declare-fun e!1768872 () Bool)

(assert (=> b!2799715 (= e!1768848 e!1768872)))

(declare-fun b!2799716 () Bool)

(declare-fun e!1768855 () Bool)

(assert (=> b!2799716 (= e!1768872 e!1768855)))

(declare-fun tp!891862 () Bool)

(declare-fun tp!891850 () Bool)

(declare-fun array_inv!4564 (array!14307) Bool)

(declare-fun array_inv!4565 (array!14311) Bool)

(assert (=> b!2799717 (= e!1768855 (and tp!891859 tp!891850 tp!891862 (array_inv!4564 (_keys!4326 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890))))))) (array_inv!4565 (_values!4307 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890))))))) e!1768857))))

(declare-fun b!2799718 () Bool)

(declare-fun tp!891860 () Bool)

(assert (=> b!2799718 (= e!1768863 (and tp_is_empty!14247 tp!891860))))

(declare-fun b!2799719 () Bool)

(declare-fun Unit!46654 () Unit!46651)

(assert (=> b!2799719 (= e!1768865 Unit!46654)))

(declare-fun b!2799720 () Bool)

(declare-fun res!1166807 () Bool)

(assert (=> b!2799720 (=> (not res!1166807) (not e!1768849))))

(declare-fun valid!3152 (CacheDown!2760) Bool)

(assert (=> b!2799720 (= res!1166807 (valid!3152 cacheDown!1009))))

(declare-fun b!2799721 () Bool)

(assert (=> b!2799721 (= e!1768845 e!1768869)))

(declare-fun tp!891857 () Bool)

(declare-fun tp!891853 () Bool)

(declare-fun array_inv!4566 (array!14309) Bool)

(assert (=> b!2799722 (= e!1768868 (and tp!891846 tp!891853 tp!891857 (array_inv!4564 (_keys!4325 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009))))))) (array_inv!4566 (_values!4306 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009))))))) e!1768860))))

(declare-fun b!2799723 () Bool)

(assert (=> b!2799723 (= e!1768846 e!1768852)))

(declare-fun res!1166811 () Bool)

(assert (=> b!2799723 (=> res!1166811 e!1768852)))

(assert (=> b!2799723 (= res!1166811 (not (= (+ 1 testedPSize!143) (size!25391 lt!1000617))))))

(declare-fun derivationStepZipperMem!112 ((InoxSet Context!4870) C!16592 CacheUp!2634 CacheDown!2760) tuple3!5176)

(assert (=> b!2799723 (= lt!1000596 (derivationStepZipperMem!112 z!3684 lt!1000606 cacheUp!890 cacheDown!1009))))

(declare-fun b!2799724 () Bool)

(assert (=> b!2799724 (= e!1768844 e!1768849)))

(declare-fun res!1166810 () Bool)

(assert (=> b!2799724 (=> (not res!1166810) (not e!1768849))))

(assert (=> b!2799724 (= res!1166810 (= totalInputSize!205 lt!1000605))))

(assert (=> b!2799724 (= lt!1000605 (size!25387 totalInput!758))))

(declare-fun b!2799725 () Bool)

(assert (=> b!2799725 (= e!1768856 e!1768850)))

(declare-fun res!1166808 () Bool)

(assert (=> b!2799725 (=> res!1166808 e!1768850)))

(declare-fun lostCauseZipper!506 ((InoxSet Context!4870)) Bool)

(assert (=> b!2799725 (= res!1166808 (lostCauseZipper!506 z!3684))))

(assert (=> b!2799725 (and (= testedSuffix!143 lt!1000604) (= lt!1000604 testedSuffix!143))))

(declare-fun lt!1000608 () Unit!46651)

(declare-fun lemmaSamePrefixThenSameSuffix!1209 (List!32633 List!32633 List!32633 List!32633 List!32633) Unit!46651)

(assert (=> b!2799725 (= lt!1000608 (lemmaSamePrefixThenSameSuffix!1209 testedP!183 testedSuffix!143 testedP!183 lt!1000604 lt!1000607))))

(declare-fun getSuffix!1311 (List!32633 List!32633) List!32633)

(assert (=> b!2799725 (= lt!1000604 (getSuffix!1311 lt!1000607 testedP!183))))

(assert (= (and start!270690 res!1166806) b!2799712))

(assert (= (and b!2799712 res!1166803) b!2799724))

(assert (= (and b!2799724 res!1166810) b!2799700))

(assert (= (and b!2799700 res!1166813) b!2799720))

(assert (= (and b!2799720 res!1166807) b!2799705))

(assert (= (and b!2799705 (not res!1166815)) b!2799725))

(assert (= (and b!2799725 (not res!1166808)) b!2799699))

(assert (= (and b!2799699 (not res!1166812)) b!2799698))

(assert (= (and b!2799698 (not res!1166814)) b!2799692))

(assert (= (and b!2799692 (not res!1166809)) b!2799710))

(assert (= (and b!2799710 (not res!1166804)) b!2799697))

(assert (= (and b!2799697 c!453993) b!2799693))

(assert (= (and b!2799697 (not c!453993)) b!2799719))

(assert (= (and b!2799697 (not res!1166802)) b!2799694))

(assert (= (and b!2799694 (not res!1166805)) b!2799723))

(assert (= (and b!2799723 (not res!1166811)) b!2799707))

(assert (= start!270690 b!2799711))

(assert (= (and start!270690 condSetEmpty!24445) setIsEmpty!24445))

(assert (= (and start!270690 (not condSetEmpty!24445)) setNonEmpty!24445))

(assert (= setNonEmpty!24445 b!2799701))

(assert (= (and start!270690 ((_ is Cons!32533) testedP!183)) b!2799718))

(assert (= (and start!270690 ((_ is Cons!32533) testedSuffix!143)) b!2799714))

(assert (= (and b!2799708 condMapEmpty!18299) mapIsEmpty!18299))

(assert (= (and b!2799708 (not condMapEmpty!18299)) mapNonEmpty!18300))

(assert (= b!2799722 b!2799708))

(assert (= b!2799706 b!2799722))

(assert (= b!2799721 b!2799706))

(assert (= (and b!2799703 ((_ is LongMap!4025) (v!34136 (underlying!8254 (cache!4074 cacheDown!1009))))) b!2799721))

(assert (= b!2799702 b!2799703))

(assert (= (and b!2799709 ((_ is HashMap!3931) (cache!4074 cacheDown!1009))) b!2799702))

(assert (= start!270690 b!2799709))

(assert (= (and b!2799695 condMapEmpty!18300) mapIsEmpty!18300))

(assert (= (and b!2799695 (not condMapEmpty!18300)) mapNonEmpty!18299))

(assert (= b!2799717 b!2799695))

(assert (= b!2799716 b!2799717))

(assert (= b!2799715 b!2799716))

(assert (= (and b!2799696 ((_ is LongMap!4026) (v!34138 (underlying!8256 (cache!4075 cacheUp!890))))) b!2799715))

(assert (= b!2799704 b!2799696))

(assert (= (and b!2799713 ((_ is HashMap!3932) (cache!4075 cacheUp!890))) b!2799704))

(assert (= start!270690 b!2799713))

(declare-fun m!3229205 () Bool)

(assert (=> b!2799725 m!3229205))

(declare-fun m!3229207 () Bool)

(assert (=> b!2799725 m!3229207))

(declare-fun m!3229209 () Bool)

(assert (=> b!2799725 m!3229209))

(declare-fun m!3229211 () Bool)

(assert (=> setNonEmpty!24445 m!3229211))

(declare-fun m!3229213 () Bool)

(assert (=> b!2799697 m!3229213))

(declare-fun m!3229215 () Bool)

(assert (=> b!2799697 m!3229215))

(declare-fun m!3229217 () Bool)

(assert (=> b!2799694 m!3229217))

(declare-fun m!3229219 () Bool)

(assert (=> b!2799694 m!3229219))

(declare-fun m!3229221 () Bool)

(assert (=> b!2799694 m!3229221))

(declare-fun m!3229223 () Bool)

(assert (=> b!2799694 m!3229223))

(declare-fun m!3229225 () Bool)

(assert (=> b!2799694 m!3229225))

(declare-fun m!3229227 () Bool)

(assert (=> b!2799694 m!3229227))

(declare-fun m!3229229 () Bool)

(assert (=> b!2799694 m!3229229))

(assert (=> b!2799694 m!3229227))

(declare-fun m!3229231 () Bool)

(assert (=> b!2799694 m!3229231))

(declare-fun m!3229233 () Bool)

(assert (=> b!2799694 m!3229233))

(declare-fun m!3229235 () Bool)

(assert (=> b!2799723 m!3229235))

(declare-fun m!3229237 () Bool)

(assert (=> b!2799723 m!3229237))

(declare-fun m!3229239 () Bool)

(assert (=> b!2799712 m!3229239))

(declare-fun m!3229241 () Bool)

(assert (=> b!2799705 m!3229241))

(declare-fun m!3229243 () Bool)

(assert (=> b!2799705 m!3229243))

(declare-fun m!3229245 () Bool)

(assert (=> b!2799705 m!3229245))

(declare-fun m!3229247 () Bool)

(assert (=> b!2799692 m!3229247))

(declare-fun m!3229249 () Bool)

(assert (=> b!2799717 m!3229249))

(declare-fun m!3229251 () Bool)

(assert (=> b!2799717 m!3229251))

(declare-fun m!3229253 () Bool)

(assert (=> b!2799711 m!3229253))

(declare-fun m!3229255 () Bool)

(assert (=> b!2799710 m!3229255))

(declare-fun m!3229257 () Bool)

(assert (=> b!2799710 m!3229257))

(declare-fun m!3229259 () Bool)

(assert (=> b!2799710 m!3229259))

(assert (=> b!2799710 m!3229257))

(declare-fun m!3229261 () Bool)

(assert (=> b!2799710 m!3229261))

(declare-fun m!3229263 () Bool)

(assert (=> b!2799710 m!3229263))

(declare-fun m!3229265 () Bool)

(assert (=> b!2799710 m!3229265))

(declare-fun m!3229267 () Bool)

(assert (=> b!2799710 m!3229267))

(declare-fun m!3229269 () Bool)

(assert (=> b!2799693 m!3229269))

(declare-fun m!3229271 () Bool)

(assert (=> b!2799693 m!3229271))

(declare-fun m!3229273 () Bool)

(assert (=> b!2799693 m!3229273))

(declare-fun m!3229275 () Bool)

(assert (=> b!2799722 m!3229275))

(declare-fun m!3229277 () Bool)

(assert (=> b!2799722 m!3229277))

(declare-fun m!3229279 () Bool)

(assert (=> mapNonEmpty!18299 m!3229279))

(declare-fun m!3229281 () Bool)

(assert (=> start!270690 m!3229281))

(declare-fun m!3229283 () Bool)

(assert (=> start!270690 m!3229283))

(declare-fun m!3229285 () Bool)

(assert (=> start!270690 m!3229285))

(declare-fun m!3229287 () Bool)

(assert (=> start!270690 m!3229287))

(declare-fun m!3229289 () Bool)

(assert (=> start!270690 m!3229289))

(declare-fun m!3229291 () Bool)

(assert (=> b!2799700 m!3229291))

(declare-fun m!3229293 () Bool)

(assert (=> b!2799720 m!3229293))

(declare-fun m!3229295 () Bool)

(assert (=> b!2799724 m!3229295))

(declare-fun m!3229297 () Bool)

(assert (=> b!2799698 m!3229297))

(declare-fun m!3229299 () Bool)

(assert (=> b!2799698 m!3229299))

(declare-fun m!3229301 () Bool)

(assert (=> b!2799698 m!3229301))

(declare-fun m!3229303 () Bool)

(assert (=> b!2799698 m!3229303))

(declare-fun m!3229305 () Bool)

(assert (=> b!2799707 m!3229305))

(declare-fun m!3229307 () Bool)

(assert (=> mapNonEmpty!18300 m!3229307))

(check-sat (not b!2799723) (not b!2799718) (not b!2799720) b_and!204115 (not b!2799710) (not b_next!80077) b_and!204111 (not b!2799705) (not b!2799693) b_and!204113 (not b_next!80083) (not b!2799692) (not mapNonEmpty!18299) (not setNonEmpty!24445) (not b!2799700) (not b!2799711) tp_is_empty!14247 (not b!2799694) (not b!2799698) (not b!2799707) (not b!2799708) (not mapNonEmpty!18300) (not b_next!80079) (not b!2799724) (not b!2799722) (not b_next!80081) (not b!2799695) (not b!2799712) (not b!2799717) (not b!2799697) (not b!2799725) (not start!270690) b_and!204117 (not b!2799714) (not b!2799701))
(check-sat b_and!204115 (not b_next!80079) (not b_next!80077) (not b_next!80081) b_and!204111 b_and!204113 b_and!204117 (not b_next!80083))
(get-model)

(declare-fun d!813395 () Bool)

(declare-fun lt!1000621 () Int)

(assert (=> d!813395 (= lt!1000621 (size!25391 (list!12212 totalInput!758)))))

(declare-fun size!25392 (Conc!10075) Int)

(assert (=> d!813395 (= lt!1000621 (size!25392 (c!453994 totalInput!758)))))

(assert (=> d!813395 (= (size!25387 totalInput!758) lt!1000621)))

(declare-fun bs!515521 () Bool)

(assert (= bs!515521 d!813395))

(assert (=> bs!515521 m!3229281))

(assert (=> bs!515521 m!3229281))

(declare-fun m!3229309 () Bool)

(assert (=> bs!515521 m!3229309))

(declare-fun m!3229311 () Bool)

(assert (=> bs!515521 m!3229311))

(assert (=> b!2799724 d!813395))

(declare-fun bs!515522 () Bool)

(declare-fun b!2799730 () Bool)

(declare-fun d!813397 () Bool)

(assert (= bs!515522 (and b!2799730 d!813397)))

(declare-fun lambda!102847 () Int)

(declare-fun lambda!102846 () Int)

(assert (=> bs!515522 (not (= lambda!102847 lambda!102846))))

(declare-fun bs!515523 () Bool)

(declare-fun b!2799731 () Bool)

(assert (= bs!515523 (and b!2799731 d!813397)))

(declare-fun lambda!102848 () Int)

(assert (=> bs!515523 (not (= lambda!102848 lambda!102846))))

(declare-fun bs!515524 () Bool)

(assert (= bs!515524 (and b!2799731 b!2799730)))

(assert (=> bs!515524 (= lambda!102848 lambda!102847)))

(declare-fun c!454006 () Bool)

(declare-fun call!182840 () Bool)

(declare-datatypes ((List!32637 0))(
  ( (Nil!32537) (Cons!32537 (h!37957 Context!4870) (t!228802 List!32637)) )
))
(declare-fun lt!1000644 () List!32637)

(declare-fun bm!182835 () Bool)

(declare-fun lt!1000639 () List!32637)

(declare-fun exists!1016 (List!32637 Int) Bool)

(assert (=> bm!182835 (= call!182840 (exists!1016 (ite c!454006 lt!1000644 lt!1000639) (ite c!454006 lambda!102847 lambda!102848)))))

(declare-fun lt!1000638 () Bool)

(declare-datatypes ((Option!6287 0))(
  ( (None!6286) (Some!6286 (v!34139 List!32633)) )
))
(declare-fun isEmpty!18137 (Option!6287) Bool)

(declare-fun getLanguageWitness!222 ((InoxSet Context!4870)) Option!6287)

(assert (=> d!813397 (= lt!1000638 (isEmpty!18137 (getLanguageWitness!222 z!3684)))))

(declare-fun forall!6706 ((InoxSet Context!4870) Int) Bool)

(assert (=> d!813397 (= lt!1000638 (forall!6706 z!3684 lambda!102846))))

(declare-fun lt!1000640 () Unit!46651)

(declare-fun e!1768879 () Unit!46651)

(assert (=> d!813397 (= lt!1000640 e!1768879)))

(assert (=> d!813397 (= c!454006 (not (forall!6706 z!3684 lambda!102846)))))

(assert (=> d!813397 (= (lostCauseZipper!506 z!3684) lt!1000638)))

(declare-fun bm!182834 () Bool)

(declare-fun call!182839 () List!32637)

(declare-fun toList!1884 ((InoxSet Context!4870)) List!32637)

(assert (=> bm!182834 (= call!182839 (toList!1884 z!3684))))

(declare-fun Unit!46655 () Unit!46651)

(assert (=> b!2799730 (= e!1768879 Unit!46655)))

(assert (=> b!2799730 (= lt!1000644 call!182839)))

(declare-fun lt!1000643 () Unit!46651)

(declare-fun lemmaNotForallThenExists!109 (List!32637 Int) Unit!46651)

(assert (=> b!2799730 (= lt!1000643 (lemmaNotForallThenExists!109 lt!1000644 lambda!102846))))

(assert (=> b!2799730 call!182840))

(declare-fun lt!1000645 () Unit!46651)

(assert (=> b!2799730 (= lt!1000645 lt!1000643)))

(declare-fun Unit!46656 () Unit!46651)

(assert (=> b!2799731 (= e!1768879 Unit!46656)))

(assert (=> b!2799731 (= lt!1000639 call!182839)))

(declare-fun lt!1000641 () Unit!46651)

(declare-fun lemmaForallThenNotExists!109 (List!32637 Int) Unit!46651)

(assert (=> b!2799731 (= lt!1000641 (lemmaForallThenNotExists!109 lt!1000639 lambda!102846))))

(assert (=> b!2799731 (not call!182840)))

(declare-fun lt!1000642 () Unit!46651)

(assert (=> b!2799731 (= lt!1000642 lt!1000641)))

(assert (= (and d!813397 c!454006) b!2799730))

(assert (= (and d!813397 (not c!454006)) b!2799731))

(assert (= (or b!2799730 b!2799731) bm!182834))

(assert (= (or b!2799730 b!2799731) bm!182835))

(declare-fun m!3229313 () Bool)

(assert (=> d!813397 m!3229313))

(assert (=> d!813397 m!3229313))

(declare-fun m!3229315 () Bool)

(assert (=> d!813397 m!3229315))

(declare-fun m!3229317 () Bool)

(assert (=> d!813397 m!3229317))

(assert (=> d!813397 m!3229317))

(declare-fun m!3229319 () Bool)

(assert (=> b!2799731 m!3229319))

(declare-fun m!3229321 () Bool)

(assert (=> bm!182835 m!3229321))

(declare-fun m!3229323 () Bool)

(assert (=> b!2799730 m!3229323))

(declare-fun m!3229325 () Bool)

(assert (=> bm!182834 m!3229325))

(assert (=> b!2799725 d!813397))

(declare-fun d!813399 () Bool)

(assert (=> d!813399 (= testedSuffix!143 lt!1000604)))

(declare-fun lt!1000648 () Unit!46651)

(declare-fun choose!16479 (List!32633 List!32633 List!32633 List!32633 List!32633) Unit!46651)

(assert (=> d!813399 (= lt!1000648 (choose!16479 testedP!183 testedSuffix!143 testedP!183 lt!1000604 lt!1000607))))

(assert (=> d!813399 (isPrefix!2634 testedP!183 lt!1000607)))

(assert (=> d!813399 (= (lemmaSamePrefixThenSameSuffix!1209 testedP!183 testedSuffix!143 testedP!183 lt!1000604 lt!1000607) lt!1000648)))

(declare-fun bs!515525 () Bool)

(assert (= bs!515525 d!813399))

(declare-fun m!3229327 () Bool)

(assert (=> bs!515525 m!3229327))

(assert (=> bs!515525 m!3229241))

(assert (=> b!2799725 d!813399))

(declare-fun d!813401 () Bool)

(declare-fun lt!1000651 () List!32633)

(assert (=> d!813401 (= (++!8021 testedP!183 lt!1000651) lt!1000607)))

(declare-fun e!1768882 () List!32633)

(assert (=> d!813401 (= lt!1000651 e!1768882)))

(declare-fun c!454009 () Bool)

(assert (=> d!813401 (= c!454009 ((_ is Cons!32533) testedP!183))))

(assert (=> d!813401 (>= (size!25391 lt!1000607) (size!25391 testedP!183))))

(assert (=> d!813401 (= (getSuffix!1311 lt!1000607 testedP!183) lt!1000651)))

(declare-fun b!2799736 () Bool)

(assert (=> b!2799736 (= e!1768882 (getSuffix!1311 (tail!4428 lt!1000607) (t!228798 testedP!183)))))

(declare-fun b!2799737 () Bool)

(assert (=> b!2799737 (= e!1768882 lt!1000607)))

(assert (= (and d!813401 c!454009) b!2799736))

(assert (= (and d!813401 (not c!454009)) b!2799737))

(declare-fun m!3229329 () Bool)

(assert (=> d!813401 m!3229329))

(assert (=> d!813401 m!3229213))

(assert (=> d!813401 m!3229239))

(declare-fun m!3229331 () Bool)

(assert (=> b!2799736 m!3229331))

(assert (=> b!2799736 m!3229331))

(declare-fun m!3229333 () Bool)

(assert (=> b!2799736 m!3229333))

(assert (=> b!2799725 d!813401))

(declare-fun d!813403 () Bool)

(declare-fun lt!1000654 () Int)

(assert (=> d!813403 (>= lt!1000654 0)))

(declare-fun e!1768885 () Int)

(assert (=> d!813403 (= lt!1000654 e!1768885)))

(declare-fun c!454012 () Bool)

(assert (=> d!813403 (= c!454012 ((_ is Nil!32533) lt!1000607))))

(assert (=> d!813403 (= (size!25391 lt!1000607) lt!1000654)))

(declare-fun b!2799742 () Bool)

(assert (=> b!2799742 (= e!1768885 0)))

(declare-fun b!2799743 () Bool)

(assert (=> b!2799743 (= e!1768885 (+ 1 (size!25391 (t!228798 lt!1000607))))))

(assert (= (and d!813403 c!454012) b!2799742))

(assert (= (and d!813403 (not c!454012)) b!2799743))

(declare-fun m!3229335 () Bool)

(assert (=> b!2799743 m!3229335))

(assert (=> b!2799697 d!813403))

(declare-fun d!813405 () Bool)

(assert (=> d!813405 (<= (size!25391 testedP!183) (size!25391 lt!1000607))))

(declare-fun lt!1000657 () Unit!46651)

(declare-fun choose!16480 (List!32633 List!32633) Unit!46651)

(assert (=> d!813405 (= lt!1000657 (choose!16480 testedP!183 lt!1000607))))

(assert (=> d!813405 (isPrefix!2634 testedP!183 lt!1000607)))

(assert (=> d!813405 (= (lemmaIsPrefixThenSmallerEqSize!294 testedP!183 lt!1000607) lt!1000657)))

(declare-fun bs!515526 () Bool)

(assert (= bs!515526 d!813405))

(assert (=> bs!515526 m!3229239))

(assert (=> bs!515526 m!3229213))

(declare-fun m!3229337 () Bool)

(assert (=> bs!515526 m!3229337))

(assert (=> bs!515526 m!3229241))

(assert (=> b!2799697 d!813405))

(declare-fun d!813407 () Bool)

(declare-fun lt!1000658 () Int)

(assert (=> d!813407 (>= lt!1000658 0)))

(declare-fun e!1768886 () Int)

(assert (=> d!813407 (= lt!1000658 e!1768886)))

(declare-fun c!454013 () Bool)

(assert (=> d!813407 (= c!454013 ((_ is Nil!32533) lt!1000617))))

(assert (=> d!813407 (= (size!25391 lt!1000617) lt!1000658)))

(declare-fun b!2799744 () Bool)

(assert (=> b!2799744 (= e!1768886 0)))

(declare-fun b!2799745 () Bool)

(assert (=> b!2799745 (= e!1768886 (+ 1 (size!25391 (t!228798 lt!1000617))))))

(assert (= (and d!813407 c!454013) b!2799744))

(assert (= (and d!813407 (not c!454013)) b!2799745))

(declare-fun m!3229339 () Bool)

(assert (=> b!2799745 m!3229339))

(assert (=> b!2799723 d!813407))

(declare-fun d!813409 () Bool)

(declare-fun e!1768889 () Bool)

(assert (=> d!813409 e!1768889))

(declare-fun res!1166820 () Bool)

(assert (=> d!813409 (=> (not res!1166820) (not e!1768889))))

(declare-fun lt!1000661 () tuple3!5176)

(declare-fun derivationStepZipper!378 ((InoxSet Context!4870) C!16592) (InoxSet Context!4870))

(assert (=> d!813409 (= res!1166820 (= (_1!19629 lt!1000661) (derivationStepZipper!378 z!3684 lt!1000606)))))

(declare-fun choose!16481 ((InoxSet Context!4870) C!16592 CacheUp!2634 CacheDown!2760) tuple3!5176)

(assert (=> d!813409 (= lt!1000661 (choose!16481 z!3684 lt!1000606 cacheUp!890 cacheDown!1009))))

(assert (=> d!813409 (= (derivationStepZipperMem!112 z!3684 lt!1000606 cacheUp!890 cacheDown!1009) lt!1000661)))

(declare-fun b!2799750 () Bool)

(declare-fun res!1166821 () Bool)

(assert (=> b!2799750 (=> (not res!1166821) (not e!1768889))))

(assert (=> b!2799750 (= res!1166821 (valid!3151 (_2!19629 lt!1000661)))))

(declare-fun b!2799751 () Bool)

(assert (=> b!2799751 (= e!1768889 (valid!3152 (_3!3058 lt!1000661)))))

(assert (= (and d!813409 res!1166820) b!2799750))

(assert (= (and b!2799750 res!1166821) b!2799751))

(declare-fun m!3229341 () Bool)

(assert (=> d!813409 m!3229341))

(declare-fun m!3229343 () Bool)

(assert (=> d!813409 m!3229343))

(declare-fun m!3229345 () Bool)

(assert (=> b!2799750 m!3229345))

(declare-fun m!3229347 () Bool)

(assert (=> b!2799751 m!3229347))

(assert (=> b!2799723 d!813409))

(declare-fun d!813411 () Bool)

(declare-fun lt!1000662 () Int)

(assert (=> d!813411 (>= lt!1000662 0)))

(declare-fun e!1768890 () Int)

(assert (=> d!813411 (= lt!1000662 e!1768890)))

(declare-fun c!454014 () Bool)

(assert (=> d!813411 (= c!454014 ((_ is Nil!32533) testedP!183))))

(assert (=> d!813411 (= (size!25391 testedP!183) lt!1000662)))

(declare-fun b!2799752 () Bool)

(assert (=> b!2799752 (= e!1768890 0)))

(declare-fun b!2799753 () Bool)

(assert (=> b!2799753 (= e!1768890 (+ 1 (size!25391 (t!228798 testedP!183))))))

(assert (= (and d!813411 c!454014) b!2799752))

(assert (= (and d!813411 (not c!454014)) b!2799753))

(declare-fun m!3229349 () Bool)

(assert (=> b!2799753 m!3229349))

(assert (=> b!2799712 d!813411))

(declare-fun d!813413 () Bool)

(declare-fun c!454017 () Bool)

(assert (=> d!813413 (= c!454017 ((_ is Node!10075) (c!453994 totalInput!758)))))

(declare-fun e!1768895 () Bool)

(assert (=> d!813413 (= (inv!44188 (c!453994 totalInput!758)) e!1768895)))

(declare-fun b!2799760 () Bool)

(declare-fun inv!44189 (Conc!10075) Bool)

(assert (=> b!2799760 (= e!1768895 (inv!44189 (c!453994 totalInput!758)))))

(declare-fun b!2799761 () Bool)

(declare-fun e!1768896 () Bool)

(assert (=> b!2799761 (= e!1768895 e!1768896)))

(declare-fun res!1166824 () Bool)

(assert (=> b!2799761 (= res!1166824 (not ((_ is Leaf!15352) (c!453994 totalInput!758))))))

(assert (=> b!2799761 (=> res!1166824 e!1768896)))

(declare-fun b!2799762 () Bool)

(declare-fun inv!44190 (Conc!10075) Bool)

(assert (=> b!2799762 (= e!1768896 (inv!44190 (c!453994 totalInput!758)))))

(assert (= (and d!813413 c!454017) b!2799760))

(assert (= (and d!813413 (not c!454017)) b!2799761))

(assert (= (and b!2799761 (not res!1166824)) b!2799762))

(declare-fun m!3229351 () Bool)

(assert (=> b!2799760 m!3229351))

(declare-fun m!3229353 () Bool)

(assert (=> b!2799762 m!3229353))

(assert (=> b!2799711 d!813413))

(declare-fun d!813415 () Bool)

(declare-fun lambda!102851 () Int)

(declare-fun forall!6707 (List!32634 Int) Bool)

(assert (=> d!813415 (= (inv!44187 setElem!24445) (forall!6707 (exprs!2935 setElem!24445) lambda!102851))))

(declare-fun bs!515527 () Bool)

(assert (= bs!515527 d!813415))

(declare-fun m!3229355 () Bool)

(assert (=> bs!515527 m!3229355))

(assert (=> setNonEmpty!24445 d!813415))

(declare-fun d!813417 () Bool)

(assert (=> d!813417 (= (array_inv!4564 (_keys!4325 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009))))))) (bvsge (size!25388 (_keys!4325 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2799722 d!813417))

(declare-fun d!813419 () Bool)

(assert (=> d!813419 (= (array_inv!4566 (_values!4306 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009))))))) (bvsge (size!25389 (_values!4306 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2799722 d!813419))

(declare-fun d!813421 () Bool)

(declare-fun validCacheMapDown!429 (MutableMap!3931) Bool)

(assert (=> d!813421 (= (valid!3152 cacheDown!1009) (validCacheMapDown!429 (cache!4074 cacheDown!1009)))))

(declare-fun bs!515528 () Bool)

(assert (= bs!515528 d!813421))

(declare-fun m!3229357 () Bool)

(assert (=> bs!515528 m!3229357))

(assert (=> b!2799720 d!813421))

(declare-fun d!813423 () Bool)

(assert (=> d!813423 (= (++!8021 (++!8021 testedP!183 (Cons!32533 lt!1000606 Nil!32533)) lt!1000603) lt!1000607)))

(declare-fun lt!1000665 () Unit!46651)

(declare-fun choose!16482 (List!32633 C!16592 List!32633 List!32633) Unit!46651)

(assert (=> d!813423 (= lt!1000665 (choose!16482 testedP!183 lt!1000606 lt!1000603 lt!1000607))))

(assert (=> d!813423 (= (++!8021 testedP!183 (Cons!32533 lt!1000606 lt!1000603)) lt!1000607)))

(assert (=> d!813423 (= (lemmaMoveElementToOtherListKeepsConcatEq!892 testedP!183 lt!1000606 lt!1000603 lt!1000607) lt!1000665)))

(declare-fun bs!515529 () Bool)

(assert (= bs!515529 d!813423))

(assert (=> bs!515529 m!3229225))

(assert (=> bs!515529 m!3229225))

(declare-fun m!3229359 () Bool)

(assert (=> bs!515529 m!3229359))

(declare-fun m!3229361 () Bool)

(assert (=> bs!515529 m!3229361))

(declare-fun m!3229363 () Bool)

(assert (=> bs!515529 m!3229363))

(assert (=> b!2799694 d!813423))

(declare-fun b!2799771 () Bool)

(declare-fun e!1768902 () List!32633)

(assert (=> b!2799771 (= e!1768902 (Cons!32533 lt!1000606 Nil!32533))))

(declare-fun b!2799773 () Bool)

(declare-fun res!1166829 () Bool)

(declare-fun e!1768901 () Bool)

(assert (=> b!2799773 (=> (not res!1166829) (not e!1768901))))

(declare-fun lt!1000668 () List!32633)

(assert (=> b!2799773 (= res!1166829 (= (size!25391 lt!1000668) (+ (size!25391 testedP!183) (size!25391 (Cons!32533 lt!1000606 Nil!32533)))))))

(declare-fun d!813425 () Bool)

(assert (=> d!813425 e!1768901))

(declare-fun res!1166830 () Bool)

(assert (=> d!813425 (=> (not res!1166830) (not e!1768901))))

(declare-fun content!4543 (List!32633) (InoxSet C!16592))

(assert (=> d!813425 (= res!1166830 (= (content!4543 lt!1000668) ((_ map or) (content!4543 testedP!183) (content!4543 (Cons!32533 lt!1000606 Nil!32533)))))))

(assert (=> d!813425 (= lt!1000668 e!1768902)))

(declare-fun c!454020 () Bool)

(assert (=> d!813425 (= c!454020 ((_ is Nil!32533) testedP!183))))

(assert (=> d!813425 (= (++!8021 testedP!183 (Cons!32533 lt!1000606 Nil!32533)) lt!1000668)))

(declare-fun b!2799774 () Bool)

(assert (=> b!2799774 (= e!1768901 (or (not (= (Cons!32533 lt!1000606 Nil!32533) Nil!32533)) (= lt!1000668 testedP!183)))))

(declare-fun b!2799772 () Bool)

(assert (=> b!2799772 (= e!1768902 (Cons!32533 (h!37953 testedP!183) (++!8021 (t!228798 testedP!183) (Cons!32533 lt!1000606 Nil!32533))))))

(assert (= (and d!813425 c!454020) b!2799771))

(assert (= (and d!813425 (not c!454020)) b!2799772))

(assert (= (and d!813425 res!1166830) b!2799773))

(assert (= (and b!2799773 res!1166829) b!2799774))

(declare-fun m!3229365 () Bool)

(assert (=> b!2799773 m!3229365))

(assert (=> b!2799773 m!3229239))

(declare-fun m!3229367 () Bool)

(assert (=> b!2799773 m!3229367))

(declare-fun m!3229369 () Bool)

(assert (=> d!813425 m!3229369))

(declare-fun m!3229371 () Bool)

(assert (=> d!813425 m!3229371))

(declare-fun m!3229373 () Bool)

(assert (=> d!813425 m!3229373))

(declare-fun m!3229375 () Bool)

(assert (=> b!2799772 m!3229375))

(assert (=> b!2799694 d!813425))

(declare-fun d!813427 () Bool)

(assert (=> d!813427 (= (head!6200 lt!1000604) (h!37953 lt!1000604))))

(assert (=> b!2799694 d!813427))

(declare-fun b!2799786 () Bool)

(declare-fun e!1768910 () Bool)

(assert (=> b!2799786 (= e!1768910 (>= (size!25391 lt!1000607) (size!25391 (++!8021 testedP!183 (Cons!32533 (head!6200 lt!1000604) Nil!32533)))))))

(declare-fun b!2799783 () Bool)

(declare-fun e!1768909 () Bool)

(declare-fun e!1768911 () Bool)

(assert (=> b!2799783 (= e!1768909 e!1768911)))

(declare-fun res!1166842 () Bool)

(assert (=> b!2799783 (=> (not res!1166842) (not e!1768911))))

(assert (=> b!2799783 (= res!1166842 (not ((_ is Nil!32533) lt!1000607)))))

(declare-fun d!813429 () Bool)

(assert (=> d!813429 e!1768910))

(declare-fun res!1166840 () Bool)

(assert (=> d!813429 (=> res!1166840 e!1768910)))

(declare-fun lt!1000671 () Bool)

(assert (=> d!813429 (= res!1166840 (not lt!1000671))))

(assert (=> d!813429 (= lt!1000671 e!1768909)))

(declare-fun res!1166839 () Bool)

(assert (=> d!813429 (=> res!1166839 e!1768909)))

(assert (=> d!813429 (= res!1166839 ((_ is Nil!32533) (++!8021 testedP!183 (Cons!32533 (head!6200 lt!1000604) Nil!32533))))))

(assert (=> d!813429 (= (isPrefix!2634 (++!8021 testedP!183 (Cons!32533 (head!6200 lt!1000604) Nil!32533)) lt!1000607) lt!1000671)))

(declare-fun b!2799785 () Bool)

(assert (=> b!2799785 (= e!1768911 (isPrefix!2634 (tail!4428 (++!8021 testedP!183 (Cons!32533 (head!6200 lt!1000604) Nil!32533))) (tail!4428 lt!1000607)))))

(declare-fun b!2799784 () Bool)

(declare-fun res!1166841 () Bool)

(assert (=> b!2799784 (=> (not res!1166841) (not e!1768911))))

(assert (=> b!2799784 (= res!1166841 (= (head!6200 (++!8021 testedP!183 (Cons!32533 (head!6200 lt!1000604) Nil!32533))) (head!6200 lt!1000607)))))

(assert (= (and d!813429 (not res!1166839)) b!2799783))

(assert (= (and b!2799783 res!1166842) b!2799784))

(assert (= (and b!2799784 res!1166841) b!2799785))

(assert (= (and d!813429 (not res!1166840)) b!2799786))

(assert (=> b!2799786 m!3229213))

(assert (=> b!2799786 m!3229227))

(declare-fun m!3229377 () Bool)

(assert (=> b!2799786 m!3229377))

(assert (=> b!2799785 m!3229227))

(declare-fun m!3229379 () Bool)

(assert (=> b!2799785 m!3229379))

(assert (=> b!2799785 m!3229331))

(assert (=> b!2799785 m!3229379))

(assert (=> b!2799785 m!3229331))

(declare-fun m!3229381 () Bool)

(assert (=> b!2799785 m!3229381))

(assert (=> b!2799784 m!3229227))

(declare-fun m!3229383 () Bool)

(assert (=> b!2799784 m!3229383))

(declare-fun m!3229385 () Bool)

(assert (=> b!2799784 m!3229385))

(assert (=> b!2799694 d!813429))

(declare-fun d!813431 () Bool)

(assert (=> d!813431 (isPrefix!2634 (++!8021 testedP!183 (Cons!32533 (head!6200 (getSuffix!1311 lt!1000607 testedP!183)) Nil!32533)) lt!1000607)))

(declare-fun lt!1000674 () Unit!46651)

(declare-fun choose!16483 (List!32633 List!32633) Unit!46651)

(assert (=> d!813431 (= lt!1000674 (choose!16483 testedP!183 lt!1000607))))

(assert (=> d!813431 (isPrefix!2634 testedP!183 lt!1000607)))

(assert (=> d!813431 (= (lemmaAddHeadSuffixToPrefixStillPrefix!484 testedP!183 lt!1000607) lt!1000674)))

(declare-fun bs!515530 () Bool)

(assert (= bs!515530 d!813431))

(assert (=> bs!515530 m!3229209))

(declare-fun m!3229387 () Bool)

(assert (=> bs!515530 m!3229387))

(assert (=> bs!515530 m!3229241))

(assert (=> bs!515530 m!3229209))

(declare-fun m!3229389 () Bool)

(assert (=> bs!515530 m!3229389))

(declare-fun m!3229391 () Bool)

(assert (=> bs!515530 m!3229391))

(declare-fun m!3229393 () Bool)

(assert (=> bs!515530 m!3229393))

(assert (=> bs!515530 m!3229391))

(assert (=> b!2799694 d!813431))

(declare-fun b!2799787 () Bool)

(declare-fun e!1768913 () List!32633)

(assert (=> b!2799787 (= e!1768913 (Cons!32533 (head!6200 lt!1000604) Nil!32533))))

(declare-fun b!2799789 () Bool)

(declare-fun res!1166843 () Bool)

(declare-fun e!1768912 () Bool)

(assert (=> b!2799789 (=> (not res!1166843) (not e!1768912))))

(declare-fun lt!1000675 () List!32633)

(assert (=> b!2799789 (= res!1166843 (= (size!25391 lt!1000675) (+ (size!25391 testedP!183) (size!25391 (Cons!32533 (head!6200 lt!1000604) Nil!32533)))))))

(declare-fun d!813433 () Bool)

(assert (=> d!813433 e!1768912))

(declare-fun res!1166844 () Bool)

(assert (=> d!813433 (=> (not res!1166844) (not e!1768912))))

(assert (=> d!813433 (= res!1166844 (= (content!4543 lt!1000675) ((_ map or) (content!4543 testedP!183) (content!4543 (Cons!32533 (head!6200 lt!1000604) Nil!32533)))))))

(assert (=> d!813433 (= lt!1000675 e!1768913)))

(declare-fun c!454021 () Bool)

(assert (=> d!813433 (= c!454021 ((_ is Nil!32533) testedP!183))))

(assert (=> d!813433 (= (++!8021 testedP!183 (Cons!32533 (head!6200 lt!1000604) Nil!32533)) lt!1000675)))

(declare-fun b!2799790 () Bool)

(assert (=> b!2799790 (= e!1768912 (or (not (= (Cons!32533 (head!6200 lt!1000604) Nil!32533) Nil!32533)) (= lt!1000675 testedP!183)))))

(declare-fun b!2799788 () Bool)

(assert (=> b!2799788 (= e!1768913 (Cons!32533 (h!37953 testedP!183) (++!8021 (t!228798 testedP!183) (Cons!32533 (head!6200 lt!1000604) Nil!32533))))))

(assert (= (and d!813433 c!454021) b!2799787))

(assert (= (and d!813433 (not c!454021)) b!2799788))

(assert (= (and d!813433 res!1166844) b!2799789))

(assert (= (and b!2799789 res!1166843) b!2799790))

(declare-fun m!3229395 () Bool)

(assert (=> b!2799789 m!3229395))

(assert (=> b!2799789 m!3229239))

(declare-fun m!3229397 () Bool)

(assert (=> b!2799789 m!3229397))

(declare-fun m!3229399 () Bool)

(assert (=> d!813433 m!3229399))

(assert (=> d!813433 m!3229371))

(declare-fun m!3229401 () Bool)

(assert (=> d!813433 m!3229401))

(declare-fun m!3229403 () Bool)

(assert (=> b!2799788 m!3229403))

(assert (=> b!2799694 d!813433))

(declare-fun bs!515531 () Bool)

(declare-fun d!813435 () Bool)

(assert (= bs!515531 (and d!813435 d!813397)))

(declare-fun lambda!102854 () Int)

(assert (=> bs!515531 (not (= lambda!102854 lambda!102846))))

(declare-fun bs!515532 () Bool)

(assert (= bs!515532 (and d!813435 b!2799730)))

(assert (=> bs!515532 (not (= lambda!102854 lambda!102847))))

(declare-fun bs!515533 () Bool)

(assert (= bs!515533 (and d!813435 b!2799731)))

(assert (=> bs!515533 (not (= lambda!102854 lambda!102848))))

(declare-fun exists!1017 ((InoxSet Context!4870) Int) Bool)

(assert (=> d!813435 (= (nullableZipper!656 z!3684) (exists!1017 z!3684 lambda!102854))))

(declare-fun bs!515534 () Bool)

(assert (= bs!515534 d!813435))

(declare-fun m!3229405 () Bool)

(assert (=> bs!515534 m!3229405))

(assert (=> b!2799694 d!813435))

(declare-fun d!813437 () Bool)

(assert (=> d!813437 (= (tail!4428 testedSuffix!143) (t!228798 testedSuffix!143))))

(assert (=> b!2799694 d!813437))

(declare-fun b!2799791 () Bool)

(declare-fun e!1768915 () List!32633)

(assert (=> b!2799791 (= e!1768915 lt!1000603)))

(declare-fun b!2799793 () Bool)

(declare-fun res!1166845 () Bool)

(declare-fun e!1768914 () Bool)

(assert (=> b!2799793 (=> (not res!1166845) (not e!1768914))))

(declare-fun lt!1000676 () List!32633)

(assert (=> b!2799793 (= res!1166845 (= (size!25391 lt!1000676) (+ (size!25391 lt!1000617) (size!25391 lt!1000603))))))

(declare-fun d!813439 () Bool)

(assert (=> d!813439 e!1768914))

(declare-fun res!1166846 () Bool)

(assert (=> d!813439 (=> (not res!1166846) (not e!1768914))))

(assert (=> d!813439 (= res!1166846 (= (content!4543 lt!1000676) ((_ map or) (content!4543 lt!1000617) (content!4543 lt!1000603))))))

(assert (=> d!813439 (= lt!1000676 e!1768915)))

(declare-fun c!454024 () Bool)

(assert (=> d!813439 (= c!454024 ((_ is Nil!32533) lt!1000617))))

(assert (=> d!813439 (= (++!8021 lt!1000617 lt!1000603) lt!1000676)))

(declare-fun b!2799794 () Bool)

(assert (=> b!2799794 (= e!1768914 (or (not (= lt!1000603 Nil!32533)) (= lt!1000676 lt!1000617)))))

(declare-fun b!2799792 () Bool)

(assert (=> b!2799792 (= e!1768915 (Cons!32533 (h!37953 lt!1000617) (++!8021 (t!228798 lt!1000617) lt!1000603)))))

(assert (= (and d!813439 c!454024) b!2799791))

(assert (= (and d!813439 (not c!454024)) b!2799792))

(assert (= (and d!813439 res!1166846) b!2799793))

(assert (= (and b!2799793 res!1166845) b!2799794))

(declare-fun m!3229407 () Bool)

(assert (=> b!2799793 m!3229407))

(assert (=> b!2799793 m!3229235))

(declare-fun m!3229409 () Bool)

(assert (=> b!2799793 m!3229409))

(declare-fun m!3229411 () Bool)

(assert (=> d!813439 m!3229411))

(declare-fun m!3229413 () Bool)

(assert (=> d!813439 m!3229413))

(declare-fun m!3229415 () Bool)

(assert (=> d!813439 m!3229415))

(declare-fun m!3229417 () Bool)

(assert (=> b!2799792 m!3229417))

(assert (=> b!2799694 d!813439))

(declare-fun d!813441 () Bool)

(declare-fun lt!1000679 () C!16592)

(assert (=> d!813441 (= lt!1000679 (apply!7600 (list!12212 totalInput!758) testedPSize!143))))

(declare-fun apply!7601 (Conc!10075 Int) C!16592)

(assert (=> d!813441 (= lt!1000679 (apply!7601 (c!453994 totalInput!758) testedPSize!143))))

(declare-fun e!1768918 () Bool)

(assert (=> d!813441 e!1768918))

(declare-fun res!1166849 () Bool)

(assert (=> d!813441 (=> (not res!1166849) (not e!1768918))))

(assert (=> d!813441 (= res!1166849 (<= 0 testedPSize!143))))

(assert (=> d!813441 (= (apply!7599 totalInput!758 testedPSize!143) lt!1000679)))

(declare-fun b!2799797 () Bool)

(assert (=> b!2799797 (= e!1768918 (< testedPSize!143 (size!25387 totalInput!758)))))

(assert (= (and d!813441 res!1166849) b!2799797))

(assert (=> d!813441 m!3229281))

(assert (=> d!813441 m!3229281))

(declare-fun m!3229419 () Bool)

(assert (=> d!813441 m!3229419))

(declare-fun m!3229421 () Bool)

(assert (=> d!813441 m!3229421))

(assert (=> b!2799797 m!3229295))

(assert (=> b!2799710 d!813441))

(declare-fun d!813443 () Bool)

(declare-fun lt!1000682 () C!16592)

(declare-fun contains!6016 (List!32633 C!16592) Bool)

(assert (=> d!813443 (contains!6016 lt!1000607 lt!1000682)))

(declare-fun e!1768924 () C!16592)

(assert (=> d!813443 (= lt!1000682 e!1768924)))

(declare-fun c!454027 () Bool)

(assert (=> d!813443 (= c!454027 (= testedPSize!143 0))))

(declare-fun e!1768923 () Bool)

(assert (=> d!813443 e!1768923))

(declare-fun res!1166852 () Bool)

(assert (=> d!813443 (=> (not res!1166852) (not e!1768923))))

(assert (=> d!813443 (= res!1166852 (<= 0 testedPSize!143))))

(assert (=> d!813443 (= (apply!7600 lt!1000607 testedPSize!143) lt!1000682)))

(declare-fun b!2799804 () Bool)

(assert (=> b!2799804 (= e!1768923 (< testedPSize!143 (size!25391 lt!1000607)))))

(declare-fun b!2799805 () Bool)

(assert (=> b!2799805 (= e!1768924 (head!6200 lt!1000607))))

(declare-fun b!2799806 () Bool)

(assert (=> b!2799806 (= e!1768924 (apply!7600 (tail!4428 lt!1000607) (- testedPSize!143 1)))))

(assert (= (and d!813443 res!1166852) b!2799804))

(assert (= (and d!813443 c!454027) b!2799805))

(assert (= (and d!813443 (not c!454027)) b!2799806))

(declare-fun m!3229423 () Bool)

(assert (=> d!813443 m!3229423))

(assert (=> b!2799804 m!3229213))

(assert (=> b!2799805 m!3229385))

(assert (=> b!2799806 m!3229331))

(assert (=> b!2799806 m!3229331))

(declare-fun m!3229425 () Bool)

(assert (=> b!2799806 m!3229425))

(assert (=> b!2799710 d!813443))

(declare-fun d!813445 () Bool)

(assert (=> d!813445 (= (head!6200 (drop!1747 lt!1000607 testedPSize!143)) (h!37953 (drop!1747 lt!1000607 testedPSize!143)))))

(assert (=> b!2799710 d!813445))

(declare-fun b!2799825 () Bool)

(declare-fun e!1768937 () Int)

(assert (=> b!2799825 (= e!1768937 0)))

(declare-fun b!2799826 () Bool)

(declare-fun e!1768939 () List!32633)

(declare-fun e!1768938 () List!32633)

(assert (=> b!2799826 (= e!1768939 e!1768938)))

(declare-fun c!454037 () Bool)

(assert (=> b!2799826 (= c!454037 (<= testedPSize!143 0))))

(declare-fun d!813447 () Bool)

(declare-fun e!1768936 () Bool)

(assert (=> d!813447 e!1768936))

(declare-fun res!1166855 () Bool)

(assert (=> d!813447 (=> (not res!1166855) (not e!1768936))))

(declare-fun lt!1000685 () List!32633)

(assert (=> d!813447 (= res!1166855 (= ((_ map implies) (content!4543 lt!1000685) (content!4543 lt!1000607)) ((as const (InoxSet C!16592)) true)))))

(assert (=> d!813447 (= lt!1000685 e!1768939)))

(declare-fun c!454036 () Bool)

(assert (=> d!813447 (= c!454036 ((_ is Nil!32533) lt!1000607))))

(assert (=> d!813447 (= (drop!1747 lt!1000607 testedPSize!143) lt!1000685)))

(declare-fun b!2799827 () Bool)

(declare-fun call!182843 () Int)

(assert (=> b!2799827 (= e!1768937 (- call!182843 testedPSize!143))))

(declare-fun b!2799828 () Bool)

(assert (=> b!2799828 (= e!1768939 Nil!32533)))

(declare-fun b!2799829 () Bool)

(declare-fun e!1768935 () Int)

(assert (=> b!2799829 (= e!1768935 call!182843)))

(declare-fun bm!182838 () Bool)

(assert (=> bm!182838 (= call!182843 (size!25391 lt!1000607))))

(declare-fun b!2799830 () Bool)

(assert (=> b!2799830 (= e!1768938 lt!1000607)))

(declare-fun b!2799831 () Bool)

(assert (=> b!2799831 (= e!1768938 (drop!1747 (t!228798 lt!1000607) (- testedPSize!143 1)))))

(declare-fun b!2799832 () Bool)

(assert (=> b!2799832 (= e!1768935 e!1768937)))

(declare-fun c!454039 () Bool)

(assert (=> b!2799832 (= c!454039 (>= testedPSize!143 call!182843))))

(declare-fun b!2799833 () Bool)

(assert (=> b!2799833 (= e!1768936 (= (size!25391 lt!1000685) e!1768935))))

(declare-fun c!454038 () Bool)

(assert (=> b!2799833 (= c!454038 (<= testedPSize!143 0))))

(assert (= (and d!813447 c!454036) b!2799828))

(assert (= (and d!813447 (not c!454036)) b!2799826))

(assert (= (and b!2799826 c!454037) b!2799830))

(assert (= (and b!2799826 (not c!454037)) b!2799831))

(assert (= (and d!813447 res!1166855) b!2799833))

(assert (= (and b!2799833 c!454038) b!2799829))

(assert (= (and b!2799833 (not c!454038)) b!2799832))

(assert (= (and b!2799832 c!454039) b!2799825))

(assert (= (and b!2799832 (not c!454039)) b!2799827))

(assert (= (or b!2799829 b!2799832 b!2799827) bm!182838))

(declare-fun m!3229427 () Bool)

(assert (=> d!813447 m!3229427))

(declare-fun m!3229429 () Bool)

(assert (=> d!813447 m!3229429))

(assert (=> bm!182838 m!3229213))

(declare-fun m!3229431 () Bool)

(assert (=> b!2799831 m!3229431))

(declare-fun m!3229433 () Bool)

(assert (=> b!2799833 m!3229433))

(assert (=> b!2799710 d!813447))

(declare-fun d!813449 () Bool)

(assert (=> d!813449 (and (= lt!1000599 testedP!183) (= lt!1000611 testedSuffix!143))))

(declare-fun lt!1000688 () Unit!46651)

(declare-fun choose!16484 (List!32633 List!32633 List!32633 List!32633) Unit!46651)

(assert (=> d!813449 (= lt!1000688 (choose!16484 lt!1000599 lt!1000611 testedP!183 testedSuffix!143))))

(assert (=> d!813449 (= (++!8021 lt!1000599 lt!1000611) (++!8021 testedP!183 testedSuffix!143))))

(assert (=> d!813449 (= (lemmaConcatSameAndSameSizesThenSameLists!381 lt!1000599 lt!1000611 testedP!183 testedSuffix!143) lt!1000688)))

(declare-fun bs!515535 () Bool)

(assert (= bs!515535 d!813449))

(declare-fun m!3229435 () Bool)

(assert (=> bs!515535 m!3229435))

(assert (=> bs!515535 m!3229297))

(assert (=> bs!515535 m!3229289))

(assert (=> b!2799710 d!813449))

(declare-fun d!813451 () Bool)

(assert (=> d!813451 (= (head!6200 (drop!1747 lt!1000607 testedPSize!143)) (apply!7600 lt!1000607 testedPSize!143))))

(declare-fun lt!1000691 () Unit!46651)

(declare-fun choose!16485 (List!32633 Int) Unit!46651)

(assert (=> d!813451 (= lt!1000691 (choose!16485 lt!1000607 testedPSize!143))))

(declare-fun e!1768942 () Bool)

(assert (=> d!813451 e!1768942))

(declare-fun res!1166858 () Bool)

(assert (=> d!813451 (=> (not res!1166858) (not e!1768942))))

(assert (=> d!813451 (= res!1166858 (>= testedPSize!143 0))))

(assert (=> d!813451 (= (lemmaDropApply!951 lt!1000607 testedPSize!143) lt!1000691)))

(declare-fun b!2799836 () Bool)

(assert (=> b!2799836 (= e!1768942 (< testedPSize!143 (size!25391 lt!1000607)))))

(assert (= (and d!813451 res!1166858) b!2799836))

(assert (=> d!813451 m!3229257))

(assert (=> d!813451 m!3229257))

(assert (=> d!813451 m!3229261))

(assert (=> d!813451 m!3229265))

(declare-fun m!3229437 () Bool)

(assert (=> d!813451 m!3229437))

(assert (=> b!2799836 m!3229213))

(assert (=> b!2799710 d!813451))

(declare-fun d!813453 () Bool)

(assert (=> d!813453 (= (head!6200 testedSuffix!143) (h!37953 testedSuffix!143))))

(assert (=> b!2799710 d!813453))

(declare-fun d!813455 () Bool)

(assert (=> d!813455 (isPrefix!2634 lt!1000607 lt!1000607)))

(declare-fun lt!1000694 () Unit!46651)

(declare-fun choose!16486 (List!32633 List!32633) Unit!46651)

(assert (=> d!813455 (= lt!1000694 (choose!16486 lt!1000607 lt!1000607))))

(assert (=> d!813455 (= (lemmaIsPrefixRefl!1717 lt!1000607 lt!1000607) lt!1000694)))

(declare-fun bs!515536 () Bool)

(assert (= bs!515536 d!813455))

(assert (=> bs!515536 m!3229271))

(declare-fun m!3229439 () Bool)

(assert (=> bs!515536 m!3229439))

(assert (=> b!2799693 d!813455))

(declare-fun b!2799840 () Bool)

(declare-fun e!1768944 () Bool)

(assert (=> b!2799840 (= e!1768944 (>= (size!25391 lt!1000607) (size!25391 lt!1000607)))))

(declare-fun b!2799837 () Bool)

(declare-fun e!1768943 () Bool)

(declare-fun e!1768945 () Bool)

(assert (=> b!2799837 (= e!1768943 e!1768945)))

(declare-fun res!1166862 () Bool)

(assert (=> b!2799837 (=> (not res!1166862) (not e!1768945))))

(assert (=> b!2799837 (= res!1166862 (not ((_ is Nil!32533) lt!1000607)))))

(declare-fun d!813457 () Bool)

(assert (=> d!813457 e!1768944))

(declare-fun res!1166860 () Bool)

(assert (=> d!813457 (=> res!1166860 e!1768944)))

(declare-fun lt!1000695 () Bool)

(assert (=> d!813457 (= res!1166860 (not lt!1000695))))

(assert (=> d!813457 (= lt!1000695 e!1768943)))

(declare-fun res!1166859 () Bool)

(assert (=> d!813457 (=> res!1166859 e!1768943)))

(assert (=> d!813457 (= res!1166859 ((_ is Nil!32533) lt!1000607))))

(assert (=> d!813457 (= (isPrefix!2634 lt!1000607 lt!1000607) lt!1000695)))

(declare-fun b!2799839 () Bool)

(assert (=> b!2799839 (= e!1768945 (isPrefix!2634 (tail!4428 lt!1000607) (tail!4428 lt!1000607)))))

(declare-fun b!2799838 () Bool)

(declare-fun res!1166861 () Bool)

(assert (=> b!2799838 (=> (not res!1166861) (not e!1768945))))

(assert (=> b!2799838 (= res!1166861 (= (head!6200 lt!1000607) (head!6200 lt!1000607)))))

(assert (= (and d!813457 (not res!1166859)) b!2799837))

(assert (= (and b!2799837 res!1166862) b!2799838))

(assert (= (and b!2799838 res!1166861) b!2799839))

(assert (= (and d!813457 (not res!1166860)) b!2799840))

(assert (=> b!2799840 m!3229213))

(assert (=> b!2799840 m!3229213))

(assert (=> b!2799839 m!3229331))

(assert (=> b!2799839 m!3229331))

(assert (=> b!2799839 m!3229331))

(assert (=> b!2799839 m!3229331))

(declare-fun m!3229441 () Bool)

(assert (=> b!2799839 m!3229441))

(assert (=> b!2799838 m!3229385))

(assert (=> b!2799838 m!3229385))

(assert (=> b!2799693 d!813457))

(declare-fun d!813459 () Bool)

(assert (=> d!813459 (= lt!1000607 testedP!183)))

(declare-fun lt!1000698 () Unit!46651)

(declare-fun choose!16487 (List!32633 List!32633 List!32633) Unit!46651)

(assert (=> d!813459 (= lt!1000698 (choose!16487 lt!1000607 testedP!183 lt!1000607))))

(assert (=> d!813459 (isPrefix!2634 lt!1000607 lt!1000607)))

(assert (=> d!813459 (= (lemmaIsPrefixSameLengthThenSameList!493 lt!1000607 testedP!183 lt!1000607) lt!1000698)))

(declare-fun bs!515537 () Bool)

(assert (= bs!515537 d!813459))

(declare-fun m!3229443 () Bool)

(assert (=> bs!515537 m!3229443))

(assert (=> bs!515537 m!3229271))

(assert (=> b!2799693 d!813459))

(declare-fun d!813461 () Bool)

(declare-fun validCacheMapUp!398 (MutableMap!3932) Bool)

(assert (=> d!813461 (= (valid!3151 (_2!19629 lt!1000596)) (validCacheMapUp!398 (cache!4075 (_2!19629 lt!1000596))))))

(declare-fun bs!515538 () Bool)

(assert (= bs!515538 d!813461))

(declare-fun m!3229445 () Bool)

(assert (=> bs!515538 m!3229445))

(assert (=> b!2799707 d!813461))

(declare-fun d!813463 () Bool)

(assert (=> d!813463 (= (valid!3151 cacheUp!890) (validCacheMapUp!398 (cache!4075 cacheUp!890)))))

(declare-fun bs!515539 () Bool)

(assert (= bs!515539 d!813463))

(declare-fun m!3229447 () Bool)

(assert (=> bs!515539 m!3229447))

(assert (=> b!2799700 d!813463))

(declare-fun d!813465 () Bool)

(declare-fun lt!1000699 () Int)

(assert (=> d!813465 (= lt!1000699 (size!25391 (list!12212 (_1!19624 lt!1000600))))))

(assert (=> d!813465 (= lt!1000699 (size!25392 (c!453994 (_1!19624 lt!1000600))))))

(assert (=> d!813465 (= (size!25387 (_1!19624 lt!1000600)) lt!1000699)))

(declare-fun bs!515540 () Bool)

(assert (= bs!515540 d!813465))

(assert (=> bs!515540 m!3229301))

(assert (=> bs!515540 m!3229301))

(declare-fun m!3229449 () Bool)

(assert (=> bs!515540 m!3229449))

(declare-fun m!3229451 () Bool)

(assert (=> bs!515540 m!3229451))

(assert (=> b!2799692 d!813465))

(declare-fun d!813467 () Bool)

(assert (=> d!813467 (= (array_inv!4564 (_keys!4326 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890))))))) (bvsge (size!25388 (_keys!4326 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2799717 d!813467))

(declare-fun d!813469 () Bool)

(assert (=> d!813469 (= (array_inv!4565 (_values!4307 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890))))))) (bvsge (size!25390 (_values!4307 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2799717 d!813469))

(declare-fun d!813471 () Bool)

(declare-fun res!1166865 () Bool)

(declare-fun e!1768948 () Bool)

(assert (=> d!813471 (=> (not res!1166865) (not e!1768948))))

(assert (=> d!813471 (= res!1166865 ((_ is HashMap!3932) (cache!4075 cacheUp!890)))))

(assert (=> d!813471 (= (inv!44186 cacheUp!890) e!1768948)))

(declare-fun b!2799843 () Bool)

(assert (=> b!2799843 (= e!1768948 (validCacheMapUp!398 (cache!4075 cacheUp!890)))))

(assert (= (and d!813471 res!1166865) b!2799843))

(assert (=> b!2799843 m!3229447))

(assert (=> start!270690 d!813471))

(declare-fun d!813473 () Bool)

(declare-fun isBalanced!3074 (Conc!10075) Bool)

(assert (=> d!813473 (= (inv!44184 totalInput!758) (isBalanced!3074 (c!453994 totalInput!758)))))

(declare-fun bs!515541 () Bool)

(assert (= bs!515541 d!813473))

(declare-fun m!3229453 () Bool)

(assert (=> bs!515541 m!3229453))

(assert (=> start!270690 d!813473))

(declare-fun d!813475 () Bool)

(declare-fun res!1166868 () Bool)

(declare-fun e!1768951 () Bool)

(assert (=> d!813475 (=> (not res!1166868) (not e!1768951))))

(assert (=> d!813475 (= res!1166868 ((_ is HashMap!3931) (cache!4074 cacheDown!1009)))))

(assert (=> d!813475 (= (inv!44185 cacheDown!1009) e!1768951)))

(declare-fun b!2799846 () Bool)

(assert (=> b!2799846 (= e!1768951 (validCacheMapDown!429 (cache!4074 cacheDown!1009)))))

(assert (= (and d!813475 res!1166868) b!2799846))

(assert (=> b!2799846 m!3229357))

(assert (=> start!270690 d!813475))

(declare-fun d!813477 () Bool)

(declare-fun list!12213 (Conc!10075) List!32633)

(assert (=> d!813477 (= (list!12212 totalInput!758) (list!12213 (c!453994 totalInput!758)))))

(declare-fun bs!515542 () Bool)

(assert (= bs!515542 d!813477))

(declare-fun m!3229455 () Bool)

(assert (=> bs!515542 m!3229455))

(assert (=> start!270690 d!813477))

(declare-fun b!2799847 () Bool)

(declare-fun e!1768953 () List!32633)

(assert (=> b!2799847 (= e!1768953 testedSuffix!143)))

(declare-fun b!2799849 () Bool)

(declare-fun res!1166869 () Bool)

(declare-fun e!1768952 () Bool)

(assert (=> b!2799849 (=> (not res!1166869) (not e!1768952))))

(declare-fun lt!1000700 () List!32633)

(assert (=> b!2799849 (= res!1166869 (= (size!25391 lt!1000700) (+ (size!25391 testedP!183) (size!25391 testedSuffix!143))))))

(declare-fun d!813479 () Bool)

(assert (=> d!813479 e!1768952))

(declare-fun res!1166870 () Bool)

(assert (=> d!813479 (=> (not res!1166870) (not e!1768952))))

(assert (=> d!813479 (= res!1166870 (= (content!4543 lt!1000700) ((_ map or) (content!4543 testedP!183) (content!4543 testedSuffix!143))))))

(assert (=> d!813479 (= lt!1000700 e!1768953)))

(declare-fun c!454040 () Bool)

(assert (=> d!813479 (= c!454040 ((_ is Nil!32533) testedP!183))))

(assert (=> d!813479 (= (++!8021 testedP!183 testedSuffix!143) lt!1000700)))

(declare-fun b!2799850 () Bool)

(assert (=> b!2799850 (= e!1768952 (or (not (= testedSuffix!143 Nil!32533)) (= lt!1000700 testedP!183)))))

(declare-fun b!2799848 () Bool)

(assert (=> b!2799848 (= e!1768953 (Cons!32533 (h!37953 testedP!183) (++!8021 (t!228798 testedP!183) testedSuffix!143)))))

(assert (= (and d!813479 c!454040) b!2799847))

(assert (= (and d!813479 (not c!454040)) b!2799848))

(assert (= (and d!813479 res!1166870) b!2799849))

(assert (= (and b!2799849 res!1166869) b!2799850))

(declare-fun m!3229457 () Bool)

(assert (=> b!2799849 m!3229457))

(assert (=> b!2799849 m!3229239))

(declare-fun m!3229459 () Bool)

(assert (=> b!2799849 m!3229459))

(declare-fun m!3229461 () Bool)

(assert (=> d!813479 m!3229461))

(assert (=> d!813479 m!3229371))

(declare-fun m!3229463 () Bool)

(assert (=> d!813479 m!3229463))

(declare-fun m!3229465 () Bool)

(assert (=> b!2799848 m!3229465))

(assert (=> start!270690 d!813479))

(declare-fun b!2799854 () Bool)

(declare-fun e!1768955 () Bool)

(assert (=> b!2799854 (= e!1768955 (>= (size!25391 lt!1000607) (size!25391 testedP!183)))))

(declare-fun b!2799851 () Bool)

(declare-fun e!1768954 () Bool)

(declare-fun e!1768956 () Bool)

(assert (=> b!2799851 (= e!1768954 e!1768956)))

(declare-fun res!1166874 () Bool)

(assert (=> b!2799851 (=> (not res!1166874) (not e!1768956))))

(assert (=> b!2799851 (= res!1166874 (not ((_ is Nil!32533) lt!1000607)))))

(declare-fun d!813481 () Bool)

(assert (=> d!813481 e!1768955))

(declare-fun res!1166872 () Bool)

(assert (=> d!813481 (=> res!1166872 e!1768955)))

(declare-fun lt!1000701 () Bool)

(assert (=> d!813481 (= res!1166872 (not lt!1000701))))

(assert (=> d!813481 (= lt!1000701 e!1768954)))

(declare-fun res!1166871 () Bool)

(assert (=> d!813481 (=> res!1166871 e!1768954)))

(assert (=> d!813481 (= res!1166871 ((_ is Nil!32533) testedP!183))))

(assert (=> d!813481 (= (isPrefix!2634 testedP!183 lt!1000607) lt!1000701)))

(declare-fun b!2799853 () Bool)

(assert (=> b!2799853 (= e!1768956 (isPrefix!2634 (tail!4428 testedP!183) (tail!4428 lt!1000607)))))

(declare-fun b!2799852 () Bool)

(declare-fun res!1166873 () Bool)

(assert (=> b!2799852 (=> (not res!1166873) (not e!1768956))))

(assert (=> b!2799852 (= res!1166873 (= (head!6200 testedP!183) (head!6200 lt!1000607)))))

(assert (= (and d!813481 (not res!1166871)) b!2799851))

(assert (= (and b!2799851 res!1166874) b!2799852))

(assert (= (and b!2799852 res!1166873) b!2799853))

(assert (= (and d!813481 (not res!1166872)) b!2799854))

(assert (=> b!2799854 m!3229213))

(assert (=> b!2799854 m!3229239))

(declare-fun m!3229467 () Bool)

(assert (=> b!2799853 m!3229467))

(assert (=> b!2799853 m!3229331))

(assert (=> b!2799853 m!3229467))

(assert (=> b!2799853 m!3229331))

(declare-fun m!3229469 () Bool)

(assert (=> b!2799853 m!3229469))

(declare-fun m!3229471 () Bool)

(assert (=> b!2799852 m!3229471))

(assert (=> b!2799852 m!3229385))

(assert (=> b!2799705 d!813481))

(declare-fun b!2799858 () Bool)

(declare-fun e!1768958 () Bool)

(assert (=> b!2799858 (= e!1768958 (>= (size!25391 lt!1000618) (size!25391 testedP!183)))))

(declare-fun b!2799855 () Bool)

(declare-fun e!1768957 () Bool)

(declare-fun e!1768959 () Bool)

(assert (=> b!2799855 (= e!1768957 e!1768959)))

(declare-fun res!1166878 () Bool)

(assert (=> b!2799855 (=> (not res!1166878) (not e!1768959))))

(assert (=> b!2799855 (= res!1166878 (not ((_ is Nil!32533) lt!1000618)))))

(declare-fun d!813483 () Bool)

(assert (=> d!813483 e!1768958))

(declare-fun res!1166876 () Bool)

(assert (=> d!813483 (=> res!1166876 e!1768958)))

(declare-fun lt!1000702 () Bool)

(assert (=> d!813483 (= res!1166876 (not lt!1000702))))

(assert (=> d!813483 (= lt!1000702 e!1768957)))

(declare-fun res!1166875 () Bool)

(assert (=> d!813483 (=> res!1166875 e!1768957)))

(assert (=> d!813483 (= res!1166875 ((_ is Nil!32533) testedP!183))))

(assert (=> d!813483 (= (isPrefix!2634 testedP!183 lt!1000618) lt!1000702)))

(declare-fun b!2799857 () Bool)

(assert (=> b!2799857 (= e!1768959 (isPrefix!2634 (tail!4428 testedP!183) (tail!4428 lt!1000618)))))

(declare-fun b!2799856 () Bool)

(declare-fun res!1166877 () Bool)

(assert (=> b!2799856 (=> (not res!1166877) (not e!1768959))))

(assert (=> b!2799856 (= res!1166877 (= (head!6200 testedP!183) (head!6200 lt!1000618)))))

(assert (= (and d!813483 (not res!1166875)) b!2799855))

(assert (= (and b!2799855 res!1166878) b!2799856))

(assert (= (and b!2799856 res!1166877) b!2799857))

(assert (= (and d!813483 (not res!1166876)) b!2799858))

(declare-fun m!3229473 () Bool)

(assert (=> b!2799858 m!3229473))

(assert (=> b!2799858 m!3229239))

(assert (=> b!2799857 m!3229467))

(declare-fun m!3229475 () Bool)

(assert (=> b!2799857 m!3229475))

(assert (=> b!2799857 m!3229467))

(assert (=> b!2799857 m!3229475))

(declare-fun m!3229477 () Bool)

(assert (=> b!2799857 m!3229477))

(assert (=> b!2799856 m!3229471))

(declare-fun m!3229479 () Bool)

(assert (=> b!2799856 m!3229479))

(assert (=> b!2799705 d!813483))

(declare-fun d!813485 () Bool)

(assert (=> d!813485 (isPrefix!2634 testedP!183 (++!8021 testedP!183 testedSuffix!143))))

(declare-fun lt!1000705 () Unit!46651)

(declare-fun choose!16488 (List!32633 List!32633) Unit!46651)

(assert (=> d!813485 (= lt!1000705 (choose!16488 testedP!183 testedSuffix!143))))

(assert (=> d!813485 (= (lemmaConcatTwoListThenFirstIsPrefix!1741 testedP!183 testedSuffix!143) lt!1000705)))

(declare-fun bs!515543 () Bool)

(assert (= bs!515543 d!813485))

(assert (=> bs!515543 m!3229289))

(assert (=> bs!515543 m!3229289))

(declare-fun m!3229481 () Bool)

(assert (=> bs!515543 m!3229481))

(declare-fun m!3229483 () Bool)

(assert (=> bs!515543 m!3229483))

(assert (=> b!2799705 d!813485))

(declare-fun b!2799859 () Bool)

(declare-fun e!1768961 () List!32633)

(assert (=> b!2799859 (= e!1768961 lt!1000611)))

(declare-fun b!2799861 () Bool)

(declare-fun res!1166879 () Bool)

(declare-fun e!1768960 () Bool)

(assert (=> b!2799861 (=> (not res!1166879) (not e!1768960))))

(declare-fun lt!1000706 () List!32633)

(assert (=> b!2799861 (= res!1166879 (= (size!25391 lt!1000706) (+ (size!25391 lt!1000599) (size!25391 lt!1000611))))))

(declare-fun d!813487 () Bool)

(assert (=> d!813487 e!1768960))

(declare-fun res!1166880 () Bool)

(assert (=> d!813487 (=> (not res!1166880) (not e!1768960))))

(assert (=> d!813487 (= res!1166880 (= (content!4543 lt!1000706) ((_ map or) (content!4543 lt!1000599) (content!4543 lt!1000611))))))

(assert (=> d!813487 (= lt!1000706 e!1768961)))

(declare-fun c!454041 () Bool)

(assert (=> d!813487 (= c!454041 ((_ is Nil!32533) lt!1000599))))

(assert (=> d!813487 (= (++!8021 lt!1000599 lt!1000611) lt!1000706)))

(declare-fun b!2799862 () Bool)

(assert (=> b!2799862 (= e!1768960 (or (not (= lt!1000611 Nil!32533)) (= lt!1000706 lt!1000599)))))

(declare-fun b!2799860 () Bool)

(assert (=> b!2799860 (= e!1768961 (Cons!32533 (h!37953 lt!1000599) (++!8021 (t!228798 lt!1000599) lt!1000611)))))

(assert (= (and d!813487 c!454041) b!2799859))

(assert (= (and d!813487 (not c!454041)) b!2799860))

(assert (= (and d!813487 res!1166880) b!2799861))

(assert (= (and b!2799861 res!1166879) b!2799862))

(declare-fun m!3229485 () Bool)

(assert (=> b!2799861 m!3229485))

(declare-fun m!3229487 () Bool)

(assert (=> b!2799861 m!3229487))

(declare-fun m!3229489 () Bool)

(assert (=> b!2799861 m!3229489))

(declare-fun m!3229491 () Bool)

(assert (=> d!813487 m!3229491))

(declare-fun m!3229493 () Bool)

(assert (=> d!813487 m!3229493))

(declare-fun m!3229495 () Bool)

(assert (=> d!813487 m!3229495))

(declare-fun m!3229497 () Bool)

(assert (=> b!2799860 m!3229497))

(assert (=> b!2799698 d!813487))

(declare-fun d!813489 () Bool)

(assert (=> d!813489 (= (list!12212 (_2!19624 lt!1000600)) (list!12213 (c!453994 (_2!19624 lt!1000600))))))

(declare-fun bs!515544 () Bool)

(assert (= bs!515544 d!813489))

(declare-fun m!3229499 () Bool)

(assert (=> bs!515544 m!3229499))

(assert (=> b!2799698 d!813489))

(declare-fun d!813491 () Bool)

(assert (=> d!813491 (= (list!12212 (_1!19624 lt!1000600)) (list!12213 (c!453994 (_1!19624 lt!1000600))))))

(declare-fun bs!515545 () Bool)

(assert (= bs!515545 d!813491))

(declare-fun m!3229501 () Bool)

(assert (=> bs!515545 m!3229501))

(assert (=> b!2799698 d!813491))

(declare-fun d!813493 () Bool)

(declare-fun e!1768964 () Bool)

(assert (=> d!813493 e!1768964))

(declare-fun res!1166885 () Bool)

(assert (=> d!813493 (=> (not res!1166885) (not e!1768964))))

(declare-fun lt!1000711 () tuple2!33134)

(assert (=> d!813493 (= res!1166885 (isBalanced!3074 (c!453994 (_1!19624 lt!1000711))))))

(declare-datatypes ((tuple2!33142 0))(
  ( (tuple2!33143 (_1!19630 Conc!10075) (_2!19630 Conc!10075)) )
))
(declare-fun lt!1000712 () tuple2!33142)

(assert (=> d!813493 (= lt!1000711 (tuple2!33135 (BalanceConc!19765 (_1!19630 lt!1000712)) (BalanceConc!19765 (_2!19630 lt!1000712))))))

(declare-fun splitAt!194 (Conc!10075 Int) tuple2!33142)

(assert (=> d!813493 (= lt!1000712 (splitAt!194 (c!453994 totalInput!758) testedPSize!143))))

(assert (=> d!813493 (isBalanced!3074 (c!453994 totalInput!758))))

(assert (=> d!813493 (= (splitAt!193 totalInput!758 testedPSize!143) lt!1000711)))

(declare-fun b!2799867 () Bool)

(declare-fun res!1166886 () Bool)

(assert (=> b!2799867 (=> (not res!1166886) (not e!1768964))))

(assert (=> b!2799867 (= res!1166886 (isBalanced!3074 (c!453994 (_2!19624 lt!1000711))))))

(declare-fun b!2799868 () Bool)

(declare-datatypes ((tuple2!33144 0))(
  ( (tuple2!33145 (_1!19631 List!32633) (_2!19631 List!32633)) )
))
(declare-fun splitAtIndex!74 (List!32633 Int) tuple2!33144)

(assert (=> b!2799868 (= e!1768964 (= (tuple2!33145 (list!12212 (_1!19624 lt!1000711)) (list!12212 (_2!19624 lt!1000711))) (splitAtIndex!74 (list!12212 totalInput!758) testedPSize!143)))))

(assert (= (and d!813493 res!1166885) b!2799867))

(assert (= (and b!2799867 res!1166886) b!2799868))

(declare-fun m!3229503 () Bool)

(assert (=> d!813493 m!3229503))

(declare-fun m!3229505 () Bool)

(assert (=> d!813493 m!3229505))

(assert (=> d!813493 m!3229453))

(declare-fun m!3229507 () Bool)

(assert (=> b!2799867 m!3229507))

(declare-fun m!3229509 () Bool)

(assert (=> b!2799868 m!3229509))

(declare-fun m!3229511 () Bool)

(assert (=> b!2799868 m!3229511))

(assert (=> b!2799868 m!3229281))

(assert (=> b!2799868 m!3229281))

(declare-fun m!3229513 () Bool)

(assert (=> b!2799868 m!3229513))

(assert (=> b!2799698 d!813493))

(declare-fun b!2799883 () Bool)

(declare-fun e!1768979 () Bool)

(declare-fun tp!891885 () Bool)

(assert (=> b!2799883 (= e!1768979 tp!891885)))

(declare-fun e!1768978 () Bool)

(declare-fun e!1768982 () Bool)

(declare-fun tp!891886 () Bool)

(declare-fun b!2799884 () Bool)

(declare-fun setRes!24450 () Bool)

(declare-fun mapDefault!18303 () List!32636)

(assert (=> b!2799884 (= e!1768982 (and (inv!44187 (_1!19627 (_1!19628 (h!37956 mapDefault!18303)))) e!1768978 tp_is_empty!14247 setRes!24450 tp!891886))))

(declare-fun condSetEmpty!24450 () Bool)

(assert (=> b!2799884 (= condSetEmpty!24450 (= (_2!19628 (h!37956 mapDefault!18303)) ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setNonEmpty!24450 () Bool)

(declare-fun setElem!24451 () Context!4870)

(declare-fun e!1768980 () Bool)

(declare-fun tp!891883 () Bool)

(declare-fun setRes!24451 () Bool)

(assert (=> setNonEmpty!24450 (= setRes!24451 (and tp!891883 (inv!44187 setElem!24451) e!1768980))))

(declare-fun mapValue!18303 () List!32636)

(declare-fun setRest!24451 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24450 (= (_2!19628 (h!37956 mapValue!18303)) ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24451 true) setRest!24451))))

(declare-fun b!2799885 () Bool)

(declare-fun tp!891890 () Bool)

(assert (=> b!2799885 (= e!1768980 tp!891890)))

(declare-fun setElem!24450 () Context!4870)

(declare-fun setNonEmpty!24451 () Bool)

(declare-fun tp!891888 () Bool)

(assert (=> setNonEmpty!24451 (= setRes!24450 (and tp!891888 (inv!44187 setElem!24450) e!1768979))))

(declare-fun setRest!24450 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24451 (= (_2!19628 (h!37956 mapDefault!18303)) ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24450 true) setRest!24450))))

(declare-fun b!2799886 () Bool)

(declare-fun tp!891889 () Bool)

(assert (=> b!2799886 (= e!1768978 tp!891889)))

(declare-fun e!1768981 () Bool)

(declare-fun tp!891887 () Bool)

(declare-fun e!1768977 () Bool)

(declare-fun b!2799887 () Bool)

(assert (=> b!2799887 (= e!1768981 (and (inv!44187 (_1!19627 (_1!19628 (h!37956 mapValue!18303)))) e!1768977 tp_is_empty!14247 setRes!24451 tp!891887))))

(declare-fun condSetEmpty!24451 () Bool)

(assert (=> b!2799887 (= condSetEmpty!24451 (= (_2!19628 (h!37956 mapValue!18303)) ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setIsEmpty!24450 () Bool)

(assert (=> setIsEmpty!24450 setRes!24451))

(declare-fun mapNonEmpty!18303 () Bool)

(declare-fun mapRes!18303 () Bool)

(declare-fun tp!891891 () Bool)

(assert (=> mapNonEmpty!18303 (= mapRes!18303 (and tp!891891 e!1768981))))

(declare-fun mapKey!18303 () (_ BitVec 32))

(declare-fun mapRest!18303 () (Array (_ BitVec 32) List!32636))

(assert (=> mapNonEmpty!18303 (= mapRest!18300 (store mapRest!18303 mapKey!18303 mapValue!18303))))

(declare-fun mapIsEmpty!18303 () Bool)

(assert (=> mapIsEmpty!18303 mapRes!18303))

(declare-fun b!2799888 () Bool)

(declare-fun tp!891884 () Bool)

(assert (=> b!2799888 (= e!1768977 tp!891884)))

(declare-fun condMapEmpty!18303 () Bool)

(assert (=> mapNonEmpty!18299 (= condMapEmpty!18303 (= mapRest!18300 ((as const (Array (_ BitVec 32) List!32636)) mapDefault!18303)))))

(assert (=> mapNonEmpty!18299 (= tp!891851 (and e!1768982 mapRes!18303))))

(declare-fun setIsEmpty!24451 () Bool)

(assert (=> setIsEmpty!24451 setRes!24450))

(assert (= (and mapNonEmpty!18299 condMapEmpty!18303) mapIsEmpty!18303))

(assert (= (and mapNonEmpty!18299 (not condMapEmpty!18303)) mapNonEmpty!18303))

(assert (= b!2799887 b!2799888))

(assert (= (and b!2799887 condSetEmpty!24451) setIsEmpty!24450))

(assert (= (and b!2799887 (not condSetEmpty!24451)) setNonEmpty!24450))

(assert (= setNonEmpty!24450 b!2799885))

(assert (= (and mapNonEmpty!18303 ((_ is Cons!32536) mapValue!18303)) b!2799887))

(assert (= b!2799884 b!2799886))

(assert (= (and b!2799884 condSetEmpty!24450) setIsEmpty!24451))

(assert (= (and b!2799884 (not condSetEmpty!24450)) setNonEmpty!24451))

(assert (= setNonEmpty!24451 b!2799883))

(assert (= (and mapNonEmpty!18299 ((_ is Cons!32536) mapDefault!18303)) b!2799884))

(declare-fun m!3229515 () Bool)

(assert (=> mapNonEmpty!18303 m!3229515))

(declare-fun m!3229517 () Bool)

(assert (=> b!2799887 m!3229517))

(declare-fun m!3229519 () Bool)

(assert (=> setNonEmpty!24450 m!3229519))

(declare-fun m!3229521 () Bool)

(assert (=> setNonEmpty!24451 m!3229521))

(declare-fun m!3229523 () Bool)

(assert (=> b!2799884 m!3229523))

(declare-fun setRes!24454 () Bool)

(declare-fun tp!891900 () Bool)

(declare-fun setElem!24454 () Context!4870)

(declare-fun e!1768990 () Bool)

(declare-fun setNonEmpty!24454 () Bool)

(assert (=> setNonEmpty!24454 (= setRes!24454 (and tp!891900 (inv!44187 setElem!24454) e!1768990))))

(declare-fun setRest!24454 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24454 (= (_2!19628 (h!37956 mapValue!18299)) ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24454 true) setRest!24454))))

(declare-fun b!2799897 () Bool)

(declare-fun e!1768991 () Bool)

(declare-fun tp!891901 () Bool)

(assert (=> b!2799897 (= e!1768991 tp!891901)))

(declare-fun b!2799898 () Bool)

(declare-fun tp!891902 () Bool)

(assert (=> b!2799898 (= e!1768990 tp!891902)))

(declare-fun e!1768989 () Bool)

(declare-fun b!2799899 () Bool)

(declare-fun tp!891903 () Bool)

(assert (=> b!2799899 (= e!1768989 (and (inv!44187 (_1!19627 (_1!19628 (h!37956 mapValue!18299)))) e!1768991 tp_is_empty!14247 setRes!24454 tp!891903))))

(declare-fun condSetEmpty!24454 () Bool)

(assert (=> b!2799899 (= condSetEmpty!24454 (= (_2!19628 (h!37956 mapValue!18299)) ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setIsEmpty!24454 () Bool)

(assert (=> setIsEmpty!24454 setRes!24454))

(assert (=> mapNonEmpty!18299 (= tp!891856 e!1768989)))

(assert (= b!2799899 b!2799897))

(assert (= (and b!2799899 condSetEmpty!24454) setIsEmpty!24454))

(assert (= (and b!2799899 (not condSetEmpty!24454)) setNonEmpty!24454))

(assert (= setNonEmpty!24454 b!2799898))

(assert (= (and mapNonEmpty!18299 ((_ is Cons!32536) mapValue!18299)) b!2799899))

(declare-fun m!3229525 () Bool)

(assert (=> setNonEmpty!24454 m!3229525))

(declare-fun m!3229527 () Bool)

(assert (=> b!2799899 m!3229527))

(declare-fun b!2799904 () Bool)

(declare-fun e!1768994 () Bool)

(declare-fun tp!891906 () Bool)

(assert (=> b!2799904 (= e!1768994 (and tp_is_empty!14247 tp!891906))))

(assert (=> b!2799714 (= tp!891848 e!1768994)))

(assert (= (and b!2799714 ((_ is Cons!32533) (t!228798 testedSuffix!143))) b!2799904))

(declare-fun e!1769000 () Bool)

(declare-fun tp!891913 () Bool)

(declare-fun b!2799913 () Bool)

(declare-fun tp!891914 () Bool)

(assert (=> b!2799913 (= e!1769000 (and (inv!44188 (left!24583 (c!453994 totalInput!758))) tp!891914 (inv!44188 (right!24913 (c!453994 totalInput!758))) tp!891913))))

(declare-fun b!2799915 () Bool)

(declare-fun e!1768999 () Bool)

(declare-fun tp!891915 () Bool)

(assert (=> b!2799915 (= e!1768999 tp!891915)))

(declare-fun b!2799914 () Bool)

(declare-fun inv!44191 (IArray!20155) Bool)

(assert (=> b!2799914 (= e!1769000 (and (inv!44191 (xs!13187 (c!453994 totalInput!758))) e!1768999))))

(assert (=> b!2799711 (= tp!891861 (and (inv!44188 (c!453994 totalInput!758)) e!1769000))))

(assert (= (and b!2799711 ((_ is Node!10075) (c!453994 totalInput!758))) b!2799913))

(assert (= b!2799914 b!2799915))

(assert (= (and b!2799711 ((_ is Leaf!15352) (c!453994 totalInput!758))) b!2799914))

(declare-fun m!3229529 () Bool)

(assert (=> b!2799913 m!3229529))

(declare-fun m!3229531 () Bool)

(assert (=> b!2799913 m!3229531))

(declare-fun m!3229533 () Bool)

(assert (=> b!2799914 m!3229533))

(assert (=> b!2799711 m!3229253))

(declare-fun condSetEmpty!24457 () Bool)

(assert (=> setNonEmpty!24445 (= condSetEmpty!24457 (= setRest!24445 ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setRes!24457 () Bool)

(assert (=> setNonEmpty!24445 (= tp!891858 setRes!24457)))

(declare-fun setIsEmpty!24457 () Bool)

(assert (=> setIsEmpty!24457 setRes!24457))

(declare-fun setElem!24457 () Context!4870)

(declare-fun e!1769003 () Bool)

(declare-fun tp!891920 () Bool)

(declare-fun setNonEmpty!24457 () Bool)

(assert (=> setNonEmpty!24457 (= setRes!24457 (and tp!891920 (inv!44187 setElem!24457) e!1769003))))

(declare-fun setRest!24457 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24457 (= setRest!24445 ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24457 true) setRest!24457))))

(declare-fun b!2799920 () Bool)

(declare-fun tp!891921 () Bool)

(assert (=> b!2799920 (= e!1769003 tp!891921)))

(assert (= (and setNonEmpty!24445 condSetEmpty!24457) setIsEmpty!24457))

(assert (= (and setNonEmpty!24445 (not condSetEmpty!24457)) setNonEmpty!24457))

(assert (= setNonEmpty!24457 b!2799920))

(declare-fun m!3229535 () Bool)

(assert (=> setNonEmpty!24457 m!3229535))

(declare-fun e!1769011 () Bool)

(declare-fun tp!891936 () Bool)

(declare-fun tp!891932 () Bool)

(declare-fun b!2799929 () Bool)

(declare-fun setRes!24460 () Bool)

(declare-fun e!1769010 () Bool)

(assert (=> b!2799929 (= e!1769011 (and tp!891932 (inv!44187 (_2!19625 (_1!19626 (h!37955 (zeroValue!4284 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009)))))))))) e!1769010 tp_is_empty!14247 setRes!24460 tp!891936))))

(declare-fun condSetEmpty!24460 () Bool)

(assert (=> b!2799929 (= condSetEmpty!24460 (= (_2!19626 (h!37955 (zeroValue!4284 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009)))))))) ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setIsEmpty!24460 () Bool)

(assert (=> setIsEmpty!24460 setRes!24460))

(declare-fun tp!891934 () Bool)

(declare-fun e!1769012 () Bool)

(declare-fun setNonEmpty!24460 () Bool)

(declare-fun setElem!24460 () Context!4870)

(assert (=> setNonEmpty!24460 (= setRes!24460 (and tp!891934 (inv!44187 setElem!24460) e!1769012))))

(declare-fun setRest!24460 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24460 (= (_2!19626 (h!37955 (zeroValue!4284 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24460 true) setRest!24460))))

(assert (=> b!2799722 (= tp!891853 e!1769011)))

(declare-fun b!2799930 () Bool)

(declare-fun tp!891935 () Bool)

(assert (=> b!2799930 (= e!1769010 tp!891935)))

(declare-fun b!2799931 () Bool)

(declare-fun tp!891933 () Bool)

(assert (=> b!2799931 (= e!1769012 tp!891933)))

(assert (= b!2799929 b!2799930))

(assert (= (and b!2799929 condSetEmpty!24460) setIsEmpty!24460))

(assert (= (and b!2799929 (not condSetEmpty!24460)) setNonEmpty!24460))

(assert (= setNonEmpty!24460 b!2799931))

(assert (= (and b!2799722 ((_ is Cons!32535) (zeroValue!4284 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009)))))))) b!2799929))

(declare-fun m!3229537 () Bool)

(assert (=> b!2799929 m!3229537))

(declare-fun m!3229539 () Bool)

(assert (=> setNonEmpty!24460 m!3229539))

(declare-fun e!1769014 () Bool)

(declare-fun tp!891941 () Bool)

(declare-fun tp!891937 () Bool)

(declare-fun b!2799932 () Bool)

(declare-fun e!1769013 () Bool)

(declare-fun setRes!24461 () Bool)

(assert (=> b!2799932 (= e!1769014 (and tp!891937 (inv!44187 (_2!19625 (_1!19626 (h!37955 (minValue!4284 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009)))))))))) e!1769013 tp_is_empty!14247 setRes!24461 tp!891941))))

(declare-fun condSetEmpty!24461 () Bool)

(assert (=> b!2799932 (= condSetEmpty!24461 (= (_2!19626 (h!37955 (minValue!4284 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009)))))))) ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setIsEmpty!24461 () Bool)

(assert (=> setIsEmpty!24461 setRes!24461))

(declare-fun setElem!24461 () Context!4870)

(declare-fun tp!891939 () Bool)

(declare-fun e!1769015 () Bool)

(declare-fun setNonEmpty!24461 () Bool)

(assert (=> setNonEmpty!24461 (= setRes!24461 (and tp!891939 (inv!44187 setElem!24461) e!1769015))))

(declare-fun setRest!24461 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24461 (= (_2!19626 (h!37955 (minValue!4284 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24461 true) setRest!24461))))

(assert (=> b!2799722 (= tp!891857 e!1769014)))

(declare-fun b!2799933 () Bool)

(declare-fun tp!891940 () Bool)

(assert (=> b!2799933 (= e!1769013 tp!891940)))

(declare-fun b!2799934 () Bool)

(declare-fun tp!891938 () Bool)

(assert (=> b!2799934 (= e!1769015 tp!891938)))

(assert (= b!2799932 b!2799933))

(assert (= (and b!2799932 condSetEmpty!24461) setIsEmpty!24461))

(assert (= (and b!2799932 (not condSetEmpty!24461)) setNonEmpty!24461))

(assert (= setNonEmpty!24461 b!2799934))

(assert (= (and b!2799722 ((_ is Cons!32535) (minValue!4284 (v!34135 (underlying!8253 (v!34136 (underlying!8254 (cache!4074 cacheDown!1009)))))))) b!2799932))

(declare-fun m!3229541 () Bool)

(assert (=> b!2799932 m!3229541))

(declare-fun m!3229543 () Bool)

(assert (=> setNonEmpty!24461 m!3229543))

(declare-fun setRes!24462 () Bool)

(declare-fun setElem!24462 () Context!4870)

(declare-fun tp!891942 () Bool)

(declare-fun e!1769017 () Bool)

(declare-fun setNonEmpty!24462 () Bool)

(assert (=> setNonEmpty!24462 (= setRes!24462 (and tp!891942 (inv!44187 setElem!24462) e!1769017))))

(declare-fun setRest!24462 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24462 (= (_2!19628 (h!37956 mapDefault!18300)) ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24462 true) setRest!24462))))

(declare-fun b!2799935 () Bool)

(declare-fun e!1769018 () Bool)

(declare-fun tp!891943 () Bool)

(assert (=> b!2799935 (= e!1769018 tp!891943)))

(declare-fun b!2799936 () Bool)

(declare-fun tp!891944 () Bool)

(assert (=> b!2799936 (= e!1769017 tp!891944)))

(declare-fun e!1769016 () Bool)

(declare-fun b!2799937 () Bool)

(declare-fun tp!891945 () Bool)

(assert (=> b!2799937 (= e!1769016 (and (inv!44187 (_1!19627 (_1!19628 (h!37956 mapDefault!18300)))) e!1769018 tp_is_empty!14247 setRes!24462 tp!891945))))

(declare-fun condSetEmpty!24462 () Bool)

(assert (=> b!2799937 (= condSetEmpty!24462 (= (_2!19628 (h!37956 mapDefault!18300)) ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setIsEmpty!24462 () Bool)

(assert (=> setIsEmpty!24462 setRes!24462))

(assert (=> b!2799695 (= tp!891849 e!1769016)))

(assert (= b!2799937 b!2799935))

(assert (= (and b!2799937 condSetEmpty!24462) setIsEmpty!24462))

(assert (= (and b!2799937 (not condSetEmpty!24462)) setNonEmpty!24462))

(assert (= setNonEmpty!24462 b!2799936))

(assert (= (and b!2799695 ((_ is Cons!32536) mapDefault!18300)) b!2799937))

(declare-fun m!3229545 () Bool)

(assert (=> setNonEmpty!24462 m!3229545))

(declare-fun m!3229547 () Bool)

(assert (=> b!2799937 m!3229547))

(declare-fun e!1769035 () Bool)

(declare-fun b!2799952 () Bool)

(declare-fun e!1769036 () Bool)

(declare-fun tp!891970 () Bool)

(declare-fun setRes!24467 () Bool)

(declare-fun tp!891974 () Bool)

(declare-fun mapDefault!18306 () List!32635)

(assert (=> b!2799952 (= e!1769036 (and tp!891970 (inv!44187 (_2!19625 (_1!19626 (h!37955 mapDefault!18306)))) e!1769035 tp_is_empty!14247 setRes!24467 tp!891974))))

(declare-fun condSetEmpty!24468 () Bool)

(assert (=> b!2799952 (= condSetEmpty!24468 (= (_2!19626 (h!37955 mapDefault!18306)) ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setNonEmpty!24467 () Bool)

(declare-fun setElem!24468 () Context!4870)

(declare-fun e!1769033 () Bool)

(declare-fun tp!891978 () Bool)

(declare-fun setRes!24468 () Bool)

(assert (=> setNonEmpty!24467 (= setRes!24468 (and tp!891978 (inv!44187 setElem!24468) e!1769033))))

(declare-fun mapValue!18306 () List!32635)

(declare-fun setRest!24468 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24467 (= (_2!19626 (h!37955 mapValue!18306)) ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24468 true) setRest!24468))))

(declare-fun condMapEmpty!18306 () Bool)

(assert (=> mapNonEmpty!18300 (= condMapEmpty!18306 (= mapRest!18299 ((as const (Array (_ BitVec 32) List!32635)) mapDefault!18306)))))

(declare-fun mapRes!18306 () Bool)

(assert (=> mapNonEmpty!18300 (= tp!891863 (and e!1769036 mapRes!18306))))

(declare-fun b!2799953 () Bool)

(declare-fun e!1769034 () Bool)

(declare-fun tp!891976 () Bool)

(assert (=> b!2799953 (= e!1769034 tp!891976)))

(declare-fun e!1769031 () Bool)

(declare-fun tp!891972 () Bool)

(declare-fun e!1769032 () Bool)

(declare-fun b!2799954 () Bool)

(declare-fun tp!891968 () Bool)

(assert (=> b!2799954 (= e!1769032 (and tp!891972 (inv!44187 (_2!19625 (_1!19626 (h!37955 mapValue!18306)))) e!1769031 tp_is_empty!14247 setRes!24468 tp!891968))))

(declare-fun condSetEmpty!24467 () Bool)

(assert (=> b!2799954 (= condSetEmpty!24467 (= (_2!19626 (h!37955 mapValue!18306)) ((as const (Array Context!4870 Bool)) false)))))

(declare-fun b!2799955 () Bool)

(declare-fun tp!891971 () Bool)

(assert (=> b!2799955 (= e!1769035 tp!891971)))

(declare-fun setElem!24467 () Context!4870)

(declare-fun tp!891975 () Bool)

(declare-fun setNonEmpty!24468 () Bool)

(assert (=> setNonEmpty!24468 (= setRes!24467 (and tp!891975 (inv!44187 setElem!24467) e!1769034))))

(declare-fun setRest!24467 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24468 (= (_2!19626 (h!37955 mapDefault!18306)) ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24467 true) setRest!24467))))

(declare-fun b!2799956 () Bool)

(declare-fun tp!891973 () Bool)

(assert (=> b!2799956 (= e!1769031 tp!891973)))

(declare-fun mapIsEmpty!18306 () Bool)

(assert (=> mapIsEmpty!18306 mapRes!18306))

(declare-fun mapNonEmpty!18306 () Bool)

(declare-fun tp!891977 () Bool)

(assert (=> mapNonEmpty!18306 (= mapRes!18306 (and tp!891977 e!1769032))))

(declare-fun mapKey!18306 () (_ BitVec 32))

(declare-fun mapRest!18306 () (Array (_ BitVec 32) List!32635))

(assert (=> mapNonEmpty!18306 (= mapRest!18299 (store mapRest!18306 mapKey!18306 mapValue!18306))))

(declare-fun b!2799957 () Bool)

(declare-fun tp!891969 () Bool)

(assert (=> b!2799957 (= e!1769033 tp!891969)))

(declare-fun setIsEmpty!24467 () Bool)

(assert (=> setIsEmpty!24467 setRes!24468))

(declare-fun setIsEmpty!24468 () Bool)

(assert (=> setIsEmpty!24468 setRes!24467))

(assert (= (and mapNonEmpty!18300 condMapEmpty!18306) mapIsEmpty!18306))

(assert (= (and mapNonEmpty!18300 (not condMapEmpty!18306)) mapNonEmpty!18306))

(assert (= b!2799954 b!2799956))

(assert (= (and b!2799954 condSetEmpty!24467) setIsEmpty!24467))

(assert (= (and b!2799954 (not condSetEmpty!24467)) setNonEmpty!24467))

(assert (= setNonEmpty!24467 b!2799957))

(assert (= (and mapNonEmpty!18306 ((_ is Cons!32535) mapValue!18306)) b!2799954))

(assert (= b!2799952 b!2799955))

(assert (= (and b!2799952 condSetEmpty!24468) setIsEmpty!24468))

(assert (= (and b!2799952 (not condSetEmpty!24468)) setNonEmpty!24468))

(assert (= setNonEmpty!24468 b!2799953))

(assert (= (and mapNonEmpty!18300 ((_ is Cons!32535) mapDefault!18306)) b!2799952))

(declare-fun m!3229549 () Bool)

(assert (=> setNonEmpty!24467 m!3229549))

(declare-fun m!3229551 () Bool)

(assert (=> b!2799952 m!3229551))

(declare-fun m!3229553 () Bool)

(assert (=> setNonEmpty!24468 m!3229553))

(declare-fun m!3229555 () Bool)

(assert (=> b!2799954 m!3229555))

(declare-fun m!3229557 () Bool)

(assert (=> mapNonEmpty!18306 m!3229557))

(declare-fun tp!891983 () Bool)

(declare-fun e!1769037 () Bool)

(declare-fun e!1769038 () Bool)

(declare-fun tp!891979 () Bool)

(declare-fun setRes!24469 () Bool)

(declare-fun b!2799958 () Bool)

(assert (=> b!2799958 (= e!1769038 (and tp!891979 (inv!44187 (_2!19625 (_1!19626 (h!37955 mapValue!18300)))) e!1769037 tp_is_empty!14247 setRes!24469 tp!891983))))

(declare-fun condSetEmpty!24469 () Bool)

(assert (=> b!2799958 (= condSetEmpty!24469 (= (_2!19626 (h!37955 mapValue!18300)) ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setIsEmpty!24469 () Bool)

(assert (=> setIsEmpty!24469 setRes!24469))

(declare-fun setNonEmpty!24469 () Bool)

(declare-fun tp!891981 () Bool)

(declare-fun setElem!24469 () Context!4870)

(declare-fun e!1769039 () Bool)

(assert (=> setNonEmpty!24469 (= setRes!24469 (and tp!891981 (inv!44187 setElem!24469) e!1769039))))

(declare-fun setRest!24469 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24469 (= (_2!19626 (h!37955 mapValue!18300)) ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24469 true) setRest!24469))))

(assert (=> mapNonEmpty!18300 (= tp!891852 e!1769038)))

(declare-fun b!2799959 () Bool)

(declare-fun tp!891982 () Bool)

(assert (=> b!2799959 (= e!1769037 tp!891982)))

(declare-fun b!2799960 () Bool)

(declare-fun tp!891980 () Bool)

(assert (=> b!2799960 (= e!1769039 tp!891980)))

(assert (= b!2799958 b!2799959))

(assert (= (and b!2799958 condSetEmpty!24469) setIsEmpty!24469))

(assert (= (and b!2799958 (not condSetEmpty!24469)) setNonEmpty!24469))

(assert (= setNonEmpty!24469 b!2799960))

(assert (= (and mapNonEmpty!18300 ((_ is Cons!32535) mapValue!18300)) b!2799958))

(declare-fun m!3229559 () Bool)

(assert (=> b!2799958 m!3229559))

(declare-fun m!3229561 () Bool)

(assert (=> setNonEmpty!24469 m!3229561))

(declare-fun e!1769041 () Bool)

(declare-fun b!2799961 () Bool)

(declare-fun tp!891988 () Bool)

(declare-fun tp!891984 () Bool)

(declare-fun e!1769040 () Bool)

(declare-fun setRes!24470 () Bool)

(assert (=> b!2799961 (= e!1769041 (and tp!891984 (inv!44187 (_2!19625 (_1!19626 (h!37955 mapDefault!18299)))) e!1769040 tp_is_empty!14247 setRes!24470 tp!891988))))

(declare-fun condSetEmpty!24470 () Bool)

(assert (=> b!2799961 (= condSetEmpty!24470 (= (_2!19626 (h!37955 mapDefault!18299)) ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setIsEmpty!24470 () Bool)

(assert (=> setIsEmpty!24470 setRes!24470))

(declare-fun tp!891986 () Bool)

(declare-fun e!1769042 () Bool)

(declare-fun setNonEmpty!24470 () Bool)

(declare-fun setElem!24470 () Context!4870)

(assert (=> setNonEmpty!24470 (= setRes!24470 (and tp!891986 (inv!44187 setElem!24470) e!1769042))))

(declare-fun setRest!24470 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24470 (= (_2!19626 (h!37955 mapDefault!18299)) ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24470 true) setRest!24470))))

(assert (=> b!2799708 (= tp!891864 e!1769041)))

(declare-fun b!2799962 () Bool)

(declare-fun tp!891987 () Bool)

(assert (=> b!2799962 (= e!1769040 tp!891987)))

(declare-fun b!2799963 () Bool)

(declare-fun tp!891985 () Bool)

(assert (=> b!2799963 (= e!1769042 tp!891985)))

(assert (= b!2799961 b!2799962))

(assert (= (and b!2799961 condSetEmpty!24470) setIsEmpty!24470))

(assert (= (and b!2799961 (not condSetEmpty!24470)) setNonEmpty!24470))

(assert (= setNonEmpty!24470 b!2799963))

(assert (= (and b!2799708 ((_ is Cons!32535) mapDefault!18299)) b!2799961))

(declare-fun m!3229563 () Bool)

(assert (=> b!2799961 m!3229563))

(declare-fun m!3229565 () Bool)

(assert (=> setNonEmpty!24470 m!3229565))

(declare-fun b!2799968 () Bool)

(declare-fun e!1769045 () Bool)

(declare-fun tp!891993 () Bool)

(declare-fun tp!891994 () Bool)

(assert (=> b!2799968 (= e!1769045 (and tp!891993 tp!891994))))

(assert (=> b!2799701 (= tp!891854 e!1769045)))

(assert (= (and b!2799701 ((_ is Cons!32534) (exprs!2935 setElem!24445))) b!2799968))

(declare-fun b!2799969 () Bool)

(declare-fun e!1769046 () Bool)

(declare-fun tp!891995 () Bool)

(assert (=> b!2799969 (= e!1769046 (and tp_is_empty!14247 tp!891995))))

(assert (=> b!2799718 (= tp!891860 e!1769046)))

(assert (= (and b!2799718 ((_ is Cons!32533) (t!228798 testedP!183))) b!2799969))

(declare-fun setElem!24471 () Context!4870)

(declare-fun setNonEmpty!24471 () Bool)

(declare-fun tp!891996 () Bool)

(declare-fun e!1769048 () Bool)

(declare-fun setRes!24471 () Bool)

(assert (=> setNonEmpty!24471 (= setRes!24471 (and tp!891996 (inv!44187 setElem!24471) e!1769048))))

(declare-fun setRest!24471 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24471 (= (_2!19628 (h!37956 (zeroValue!4285 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24471 true) setRest!24471))))

(declare-fun b!2799970 () Bool)

(declare-fun e!1769049 () Bool)

(declare-fun tp!891997 () Bool)

(assert (=> b!2799970 (= e!1769049 tp!891997)))

(declare-fun b!2799971 () Bool)

(declare-fun tp!891998 () Bool)

(assert (=> b!2799971 (= e!1769048 tp!891998)))

(declare-fun b!2799972 () Bool)

(declare-fun tp!891999 () Bool)

(declare-fun e!1769047 () Bool)

(assert (=> b!2799972 (= e!1769047 (and (inv!44187 (_1!19627 (_1!19628 (h!37956 (zeroValue!4285 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890)))))))))) e!1769049 tp_is_empty!14247 setRes!24471 tp!891999))))

(declare-fun condSetEmpty!24471 () Bool)

(assert (=> b!2799972 (= condSetEmpty!24471 (= (_2!19628 (h!37956 (zeroValue!4285 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890)))))))) ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setIsEmpty!24471 () Bool)

(assert (=> setIsEmpty!24471 setRes!24471))

(assert (=> b!2799717 (= tp!891850 e!1769047)))

(assert (= b!2799972 b!2799970))

(assert (= (and b!2799972 condSetEmpty!24471) setIsEmpty!24471))

(assert (= (and b!2799972 (not condSetEmpty!24471)) setNonEmpty!24471))

(assert (= setNonEmpty!24471 b!2799971))

(assert (= (and b!2799717 ((_ is Cons!32536) (zeroValue!4285 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890)))))))) b!2799972))

(declare-fun m!3229567 () Bool)

(assert (=> setNonEmpty!24471 m!3229567))

(declare-fun m!3229569 () Bool)

(assert (=> b!2799972 m!3229569))

(declare-fun e!1769051 () Bool)

(declare-fun setNonEmpty!24472 () Bool)

(declare-fun setElem!24472 () Context!4870)

(declare-fun setRes!24472 () Bool)

(declare-fun tp!892000 () Bool)

(assert (=> setNonEmpty!24472 (= setRes!24472 (and tp!892000 (inv!44187 setElem!24472) e!1769051))))

(declare-fun setRest!24472 () (InoxSet Context!4870))

(assert (=> setNonEmpty!24472 (= (_2!19628 (h!37956 (minValue!4285 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4870 Bool)) false) setElem!24472 true) setRest!24472))))

(declare-fun b!2799973 () Bool)

(declare-fun e!1769052 () Bool)

(declare-fun tp!892001 () Bool)

(assert (=> b!2799973 (= e!1769052 tp!892001)))

(declare-fun b!2799974 () Bool)

(declare-fun tp!892002 () Bool)

(assert (=> b!2799974 (= e!1769051 tp!892002)))

(declare-fun b!2799975 () Bool)

(declare-fun e!1769050 () Bool)

(declare-fun tp!892003 () Bool)

(assert (=> b!2799975 (= e!1769050 (and (inv!44187 (_1!19627 (_1!19628 (h!37956 (minValue!4285 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890)))))))))) e!1769052 tp_is_empty!14247 setRes!24472 tp!892003))))

(declare-fun condSetEmpty!24472 () Bool)

(assert (=> b!2799975 (= condSetEmpty!24472 (= (_2!19628 (h!37956 (minValue!4285 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890)))))))) ((as const (Array Context!4870 Bool)) false)))))

(declare-fun setIsEmpty!24472 () Bool)

(assert (=> setIsEmpty!24472 setRes!24472))

(assert (=> b!2799717 (= tp!891862 e!1769050)))

(assert (= b!2799975 b!2799973))

(assert (= (and b!2799975 condSetEmpty!24472) setIsEmpty!24472))

(assert (= (and b!2799975 (not condSetEmpty!24472)) setNonEmpty!24472))

(assert (= setNonEmpty!24472 b!2799974))

(assert (= (and b!2799717 ((_ is Cons!32536) (minValue!4285 (v!34137 (underlying!8255 (v!34138 (underlying!8256 (cache!4075 cacheUp!890)))))))) b!2799975))

(declare-fun m!3229571 () Bool)

(assert (=> setNonEmpty!24472 m!3229571))

(declare-fun m!3229573 () Bool)

(assert (=> b!2799975 m!3229573))

(check-sat (not b!2799915) (not setNonEmpty!24470) (not b!2799730) (not b!2799852) (not d!813487) (not b!2799934) (not b!2799975) (not b!2799753) (not b!2799836) (not b!2799883) (not d!813401) (not d!813489) (not d!813493) (not b!2799884) (not b!2799962) (not b!2799904) (not b!2799846) (not d!813423) (not b!2799861) (not b!2799857) (not d!813421) (not b!2799936) (not b!2799711) (not b!2799797) (not d!813441) (not b!2799956) (not mapNonEmpty!18303) (not b!2799930) (not d!813415) b_and!204115 (not d!813451) (not d!813439) (not setNonEmpty!24457) (not d!813447) (not b!2799786) (not setNonEmpty!24469) (not b!2799789) tp_is_empty!14247 (not setNonEmpty!24461) (not b!2799785) (not d!813397) (not d!813461) (not d!813455) (not d!813477) (not b!2799762) (not b!2799886) (not b!2799772) (not b!2799969) (not b!2799957) (not b_next!80079) (not b!2799885) (not d!813405) (not d!813465) (not setNonEmpty!24467) (not b_next!80077) (not b!2799760) (not b!2799840) (not b!2799898) (not setNonEmpty!24451) (not b!2799868) (not setNonEmpty!24462) (not b!2799970) (not b!2799932) (not d!813443) (not b!2799961) (not b!2799963) (not setNonEmpty!24468) (not b!2799843) (not d!813485) (not b!2799968) (not b!2799914) (not b_next!80081) (not b!2799793) (not b!2799958) (not b!2799955) (not b!2799751) (not b!2799929) (not d!813479) b_and!204111 (not b!2799736) (not b!2799974) (not b!2799831) (not b!2799960) (not b!2799887) (not d!813433) (not b!2799897) (not b!2799933) (not b!2799953) (not b!2799937) (not b!2799806) (not d!813449) (not b!2799931) (not b!2799792) (not d!813459) (not d!813409) (not d!813473) (not b!2799959) (not d!813431) (not bm!182838) (not b!2799952) (not setNonEmpty!24472) (not setNonEmpty!24454) (not d!813425) (not setNonEmpty!24471) (not setNonEmpty!24450) (not b!2799773) (not b!2799731) (not b!2799856) (not b!2799867) (not d!813395) (not mapNonEmpty!18306) (not bm!182834) (not b!2799839) b_and!204113 (not d!813435) (not b!2799805) (not b!2799971) b_and!204117 (not b!2799860) (not b!2799854) (not b!2799804) (not b!2799954) (not b!2799913) (not b!2799973) (not b!2799853) (not setNonEmpty!24460) (not b!2799858) (not b_next!80083) (not b!2799745) (not b!2799920) (not b!2799750) (not b!2799743) (not d!813463) (not b!2799899) (not bm!182835) (not b!2799849) (not b!2799848) (not b!2799935) (not b!2799784) (not d!813491) (not b!2799888) (not d!813399) (not b!2799838) (not b!2799972) (not b!2799833) (not b!2799788))
(check-sat b_and!204115 (not b_next!80079) (not b_next!80077) (not b_next!80081) b_and!204111 b_and!204113 b_and!204117 (not b_next!80083))
