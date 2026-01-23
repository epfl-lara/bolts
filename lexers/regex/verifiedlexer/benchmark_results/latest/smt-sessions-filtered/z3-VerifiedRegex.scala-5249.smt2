; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269732 () Bool)

(assert start!269732)

(declare-fun b!2789726 () Bool)

(declare-fun b_free!78933 () Bool)

(declare-fun b_next!79637 () Bool)

(assert (=> b!2789726 (= b_free!78933 (not b_next!79637))))

(declare-fun tp!885466 () Bool)

(declare-fun b_and!203671 () Bool)

(assert (=> b!2789726 (= tp!885466 b_and!203671)))

(declare-fun b!2789719 () Bool)

(declare-fun b_free!78935 () Bool)

(declare-fun b_next!79639 () Bool)

(assert (=> b!2789719 (= b_free!78935 (not b_next!79639))))

(declare-fun tp!885458 () Bool)

(declare-fun b_and!203673 () Bool)

(assert (=> b!2789719 (= tp!885458 b_and!203673)))

(declare-fun b!2789727 () Bool)

(declare-fun b_free!78937 () Bool)

(declare-fun b_next!79641 () Bool)

(assert (=> b!2789727 (= b_free!78937 (not b_next!79641))))

(declare-fun tp!885454 () Bool)

(declare-fun b_and!203675 () Bool)

(assert (=> b!2789727 (= tp!885454 b_and!203675)))

(declare-fun b!2789730 () Bool)

(declare-fun b_free!78939 () Bool)

(declare-fun b_next!79643 () Bool)

(assert (=> b!2789730 (= b_free!78939 (not b_next!79643))))

(declare-fun tp!885449 () Bool)

(declare-fun b_and!203677 () Bool)

(assert (=> b!2789730 (= tp!885449 b_and!203677)))

(declare-fun e!1761137 () Bool)

(declare-fun e!1761151 () Bool)

(assert (=> b!2789719 (= e!1761137 (and e!1761151 tp!885458))))

(declare-fun res!1163946 () Bool)

(declare-fun e!1761140 () Bool)

(assert (=> start!269732 (=> (not res!1163946) (not e!1761140))))

(declare-datatypes ((C!16484 0))(
  ( (C!16485 (val!10176 Int)) )
))
(declare-datatypes ((List!32413 0))(
  ( (Nil!32313) (Cons!32313 (h!37733 C!16484) (t!228555 List!32413)) )
))
(declare-fun lt!997214 () List!32413)

(declare-fun lt!997204 () List!32413)

(assert (=> start!269732 (= res!1163946 (= lt!997214 lt!997204))))

(declare-datatypes ((IArray!20065 0))(
  ( (IArray!20066 (innerList!10090 List!32413)) )
))
(declare-datatypes ((Conc!10030 0))(
  ( (Node!10030 (left!24503 Conc!10030) (right!24833 Conc!10030) (csize!20290 Int) (cheight!10241 Int)) (Leaf!15280 (xs!13141 IArray!20065) (csize!20291 Int)) (Empty!10030) )
))
(declare-datatypes ((BalanceConc!19674 0))(
  ( (BalanceConc!19675 (c!452906 Conc!10030)) )
))
(declare-fun totalInput!758 () BalanceConc!19674)

(declare-fun list!12159 (BalanceConc!19674) List!32413)

(assert (=> start!269732 (= lt!997204 (list!12159 totalInput!758))))

(declare-fun testedP!183 () List!32413)

(declare-fun testedSuffix!143 () List!32413)

(declare-fun ++!7979 (List!32413 List!32413) List!32413)

(assert (=> start!269732 (= lt!997214 (++!7979 testedP!183 testedSuffix!143))))

(assert (=> start!269732 e!1761140))

(declare-fun e!1761136 () Bool)

(declare-fun inv!43906 (BalanceConc!19674) Bool)

(assert (=> start!269732 (and (inv!43906 totalInput!758) e!1761136)))

(declare-fun condSetEmpty!23797 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8163 0))(
  ( (ElementMatch!8163 (c!452907 C!16484)) (Concat!13251 (regOne!16838 Regex!8163) (regTwo!16838 Regex!8163)) (EmptyExpr!8163) (Star!8163 (reg!8492 Regex!8163)) (EmptyLang!8163) (Union!8163 (regOne!16839 Regex!8163) (regTwo!16839 Regex!8163)) )
))
(declare-datatypes ((List!32414 0))(
  ( (Nil!32314) (Cons!32314 (h!37734 Regex!8163) (t!228556 List!32414)) )
))
(declare-datatypes ((Context!4762 0))(
  ( (Context!4763 (exprs!2881 List!32414)) )
))
(declare-fun z!3684 () (InoxSet Context!4762))

(assert (=> start!269732 (= condSetEmpty!23797 (= z!3684 ((as const (Array Context!4762 Bool)) false)))))

(declare-fun setRes!23797 () Bool)

(assert (=> start!269732 setRes!23797))

(assert (=> start!269732 true))

(declare-fun e!1761153 () Bool)

(assert (=> start!269732 e!1761153))

(declare-fun e!1761128 () Bool)

(assert (=> start!269732 e!1761128))

(declare-datatypes ((array!13959 0))(
  ( (array!13960 (arr!6219 (Array (_ BitVec 32) (_ BitVec 64))) (size!25142 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!5054 0))(
  ( (tuple3!5055 (_1!19366 Regex!8163) (_2!19366 Context!4762) (_3!2997 C!16484)) )
))
(declare-datatypes ((tuple2!32738 0))(
  ( (tuple2!32739 (_1!19367 tuple3!5054) (_2!19367 (InoxSet Context!4762))) )
))
(declare-datatypes ((List!32415 0))(
  ( (Nil!32315) (Cons!32315 (h!37735 tuple2!32738) (t!228557 List!32415)) )
))
(declare-datatypes ((array!13961 0))(
  ( (array!13962 (arr!6220 (Array (_ BitVec 32) List!32415)) (size!25143 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7846 0))(
  ( (LongMapFixedSize!7847 (defaultEntry!4308 Int) (mask!9741 (_ BitVec 32)) (extraKeys!4172 (_ BitVec 32)) (zeroValue!4182 List!32415) (minValue!4182 List!32415) (_size!7889 (_ BitVec 32)) (_keys!4223 array!13959) (_values!4204 array!13961) (_vacant!3984 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15501 0))(
  ( (Cell!15502 (v!33919 LongMapFixedSize!7846)) )
))
(declare-datatypes ((MutLongMap!3923 0))(
  ( (LongMap!3923 (underlying!8049 Cell!15501)) (MutLongMapExt!3922 (__x!21419 Int)) )
))
(declare-datatypes ((Cell!15503 0))(
  ( (Cell!15504 (v!33920 MutLongMap!3923)) )
))
(declare-datatypes ((Hashable!3839 0))(
  ( (HashableExt!3838 (__x!21420 Int)) )
))
(declare-datatypes ((MutableMap!3829 0))(
  ( (MutableMapExt!3828 (__x!21421 Int)) (HashMap!3829 (underlying!8050 Cell!15503) (hashF!5871 Hashable!3839) (_size!7890 (_ BitVec 32)) (defaultValue!4000 Int)) )
))
(declare-datatypes ((CacheDown!2654 0))(
  ( (CacheDown!2655 (cache!3972 MutableMap!3829)) )
))
(declare-fun cacheDown!1009 () CacheDown!2654)

(declare-fun e!1761147 () Bool)

(declare-fun inv!43907 (CacheDown!2654) Bool)

(assert (=> start!269732 (and (inv!43907 cacheDown!1009) e!1761147)))

(declare-datatypes ((Hashable!3840 0))(
  ( (HashableExt!3839 (__x!21422 Int)) )
))
(declare-datatypes ((tuple2!32740 0))(
  ( (tuple2!32741 (_1!19368 Context!4762) (_2!19368 C!16484)) )
))
(declare-datatypes ((tuple2!32742 0))(
  ( (tuple2!32743 (_1!19369 tuple2!32740) (_2!19369 (InoxSet Context!4762))) )
))
(declare-datatypes ((List!32416 0))(
  ( (Nil!32316) (Cons!32316 (h!37736 tuple2!32742) (t!228558 List!32416)) )
))
(declare-datatypes ((array!13963 0))(
  ( (array!13964 (arr!6221 (Array (_ BitVec 32) List!32416)) (size!25144 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7848 0))(
  ( (LongMapFixedSize!7849 (defaultEntry!4309 Int) (mask!9742 (_ BitVec 32)) (extraKeys!4173 (_ BitVec 32)) (zeroValue!4183 List!32416) (minValue!4183 List!32416) (_size!7891 (_ BitVec 32)) (_keys!4224 array!13959) (_values!4205 array!13963) (_vacant!3985 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15505 0))(
  ( (Cell!15506 (v!33921 LongMapFixedSize!7848)) )
))
(declare-datatypes ((MutLongMap!3924 0))(
  ( (LongMap!3924 (underlying!8051 Cell!15505)) (MutLongMapExt!3923 (__x!21423 Int)) )
))
(declare-datatypes ((Cell!15507 0))(
  ( (Cell!15508 (v!33922 MutLongMap!3924)) )
))
(declare-datatypes ((MutableMap!3830 0))(
  ( (MutableMapExt!3829 (__x!21424 Int)) (HashMap!3830 (underlying!8052 Cell!15507) (hashF!5872 Hashable!3840) (_size!7892 (_ BitVec 32)) (defaultValue!4001 Int)) )
))
(declare-datatypes ((CacheUp!2536 0))(
  ( (CacheUp!2537 (cache!3973 MutableMap!3830)) )
))
(declare-fun cacheUp!890 () CacheUp!2536)

(declare-fun e!1761155 () Bool)

(declare-fun inv!43908 (CacheUp!2536) Bool)

(assert (=> start!269732 (and (inv!43908 cacheUp!890) e!1761155)))

(declare-fun b!2789720 () Bool)

(declare-fun e!1761134 () Bool)

(declare-fun e!1761143 () Bool)

(assert (=> b!2789720 (= e!1761134 (not e!1761143))))

(declare-fun res!1163937 () Bool)

(assert (=> b!2789720 (=> res!1163937 e!1761143)))

(declare-fun isPrefix!2598 (List!32413 List!32413) Bool)

(assert (=> b!2789720 (= res!1163937 (not (isPrefix!2598 testedP!183 lt!997204)))))

(assert (=> b!2789720 (isPrefix!2598 testedP!183 lt!997214)))

(declare-datatypes ((Unit!46532 0))(
  ( (Unit!46533) )
))
(declare-fun lt!997219 () Unit!46532)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1707 (List!32413 List!32413) Unit!46532)

(assert (=> b!2789720 (= lt!997219 (lemmaConcatTwoListThenFirstIsPrefix!1707 testedP!183 testedSuffix!143))))

(declare-fun b!2789721 () Bool)

(declare-fun tp!885467 () Bool)

(declare-fun inv!43909 (Conc!10030) Bool)

(assert (=> b!2789721 (= e!1761136 (and (inv!43909 (c!452906 totalInput!758)) tp!885467))))

(declare-fun tp!885465 () Bool)

(declare-fun e!1761138 () Bool)

(declare-fun setNonEmpty!23797 () Bool)

(declare-fun setElem!23797 () Context!4762)

(declare-fun inv!43910 (Context!4762) Bool)

(assert (=> setNonEmpty!23797 (= setRes!23797 (and tp!885465 (inv!43910 setElem!23797) e!1761138))))

(declare-fun setRest!23797 () (InoxSet Context!4762))

(assert (=> setNonEmpty!23797 (= z!3684 ((_ map or) (store ((as const (Array Context!4762 Bool)) false) setElem!23797 true) setRest!23797))))

(declare-fun b!2789722 () Bool)

(declare-fun e!1761141 () Bool)

(declare-fun e!1761133 () Bool)

(assert (=> b!2789722 (= e!1761141 e!1761133)))

(declare-fun res!1163935 () Bool)

(assert (=> b!2789722 (=> res!1163935 e!1761133)))

(declare-fun nullableZipper!650 ((InoxSet Context!4762)) Bool)

(assert (=> b!2789722 (= res!1163935 (nullableZipper!650 z!3684))))

(declare-fun lt!997216 () List!32413)

(declare-fun lt!997217 () List!32413)

(assert (=> b!2789722 (= (++!7979 lt!997216 lt!997217) lt!997204)))

(declare-fun lt!997213 () C!16484)

(assert (=> b!2789722 (= lt!997216 (++!7979 testedP!183 (Cons!32313 lt!997213 Nil!32313)))))

(declare-fun lt!997208 () Unit!46532)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!886 (List!32413 C!16484 List!32413 List!32413) Unit!46532)

(assert (=> b!2789722 (= lt!997208 (lemmaMoveElementToOtherListKeepsConcatEq!886 testedP!183 lt!997213 lt!997217 lt!997204))))

(declare-fun tail!4412 (List!32413) List!32413)

(assert (=> b!2789722 (= lt!997217 (tail!4412 testedSuffix!143))))

(declare-fun lt!997200 () List!32413)

(declare-fun head!6180 (List!32413) C!16484)

(assert (=> b!2789722 (isPrefix!2598 (++!7979 testedP!183 (Cons!32313 (head!6180 lt!997200) Nil!32313)) lt!997204)))

(declare-fun lt!997212 () Unit!46532)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!477 (List!32413 List!32413) Unit!46532)

(assert (=> b!2789722 (= lt!997212 (lemmaAddHeadSuffixToPrefixStillPrefix!477 testedP!183 lt!997204))))

(declare-fun b!2789723 () Bool)

(declare-fun e!1761158 () Bool)

(declare-fun e!1761156 () Bool)

(assert (=> b!2789723 (= e!1761158 e!1761156)))

(declare-fun res!1163945 () Bool)

(assert (=> b!2789723 (=> res!1163945 e!1761156)))

(assert (=> b!2789723 (= res!1163945 (not (= lt!997213 (head!6180 testedSuffix!143))))))

(declare-fun testedPSize!143 () Int)

(declare-fun apply!7566 (BalanceConc!19674 Int) C!16484)

(assert (=> b!2789723 (= lt!997213 (apply!7566 totalInput!758 testedPSize!143))))

(declare-fun drop!1732 (List!32413 Int) List!32413)

(declare-fun apply!7567 (List!32413 Int) C!16484)

(assert (=> b!2789723 (= (head!6180 (drop!1732 lt!997204 testedPSize!143)) (apply!7567 lt!997204 testedPSize!143))))

(declare-fun lt!997202 () Unit!46532)

(declare-fun lemmaDropApply!938 (List!32413 Int) Unit!46532)

(assert (=> b!2789723 (= lt!997202 (lemmaDropApply!938 lt!997204 testedPSize!143))))

(declare-fun lt!997218 () List!32413)

(declare-fun lt!997211 () List!32413)

(assert (=> b!2789723 (not (or (not (= lt!997218 testedP!183)) (not (= lt!997211 testedSuffix!143))))))

(declare-fun lt!997198 () Unit!46532)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!365 (List!32413 List!32413 List!32413 List!32413) Unit!46532)

(assert (=> b!2789723 (= lt!997198 (lemmaConcatSameAndSameSizesThenSameLists!365 lt!997218 lt!997211 testedP!183 testedSuffix!143))))

(declare-fun b!2789724 () Bool)

(declare-fun e!1761152 () Unit!46532)

(declare-fun Unit!46534 () Unit!46532)

(assert (=> b!2789724 (= e!1761152 Unit!46534)))

(declare-fun b!2789725 () Bool)

(declare-fun res!1163938 () Bool)

(declare-fun e!1761145 () Bool)

(assert (=> b!2789725 (=> res!1163938 e!1761145)))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2789725 (= res!1163938 (= testedPSize!143 totalInputSize!205))))

(declare-fun tp!885450 () Bool)

(declare-fun tp!885452 () Bool)

(declare-fun e!1761154 () Bool)

(declare-fun e!1761144 () Bool)

(declare-fun array_inv!4452 (array!13959) Bool)

(declare-fun array_inv!4453 (array!13961) Bool)

(assert (=> b!2789726 (= e!1761154 (and tp!885466 tp!885450 tp!885452 (array_inv!4452 (_keys!4223 (v!33919 (underlying!8049 (v!33920 (underlying!8050 (cache!3972 cacheDown!1009))))))) (array_inv!4453 (_values!4204 (v!33919 (underlying!8049 (v!33920 (underlying!8050 (cache!3972 cacheDown!1009))))))) e!1761144))))

(declare-fun e!1761142 () Bool)

(declare-fun tp!885459 () Bool)

(declare-fun e!1761130 () Bool)

(declare-fun tp!885455 () Bool)

(declare-fun array_inv!4454 (array!13963) Bool)

(assert (=> b!2789727 (= e!1761130 (and tp!885454 tp!885459 tp!885455 (array_inv!4452 (_keys!4224 (v!33921 (underlying!8051 (v!33922 (underlying!8052 (cache!3973 cacheUp!890))))))) (array_inv!4454 (_values!4205 (v!33921 (underlying!8051 (v!33922 (underlying!8052 (cache!3973 cacheUp!890))))))) e!1761142))))

(declare-fun b!2789728 () Bool)

(declare-fun e!1761149 () Bool)

(declare-fun e!1761146 () Bool)

(assert (=> b!2789728 (= e!1761149 e!1761146)))

(declare-fun mapIsEmpty!17885 () Bool)

(declare-fun mapRes!17885 () Bool)

(assert (=> mapIsEmpty!17885 mapRes!17885))

(declare-fun mapIsEmpty!17886 () Bool)

(declare-fun mapRes!17886 () Bool)

(assert (=> mapIsEmpty!17886 mapRes!17886))

(declare-fun b!2789729 () Bool)

(declare-fun tp!885460 () Bool)

(assert (=> b!2789729 (= e!1761144 (and tp!885460 mapRes!17886))))

(declare-fun condMapEmpty!17886 () Bool)

(declare-fun mapDefault!17886 () List!32415)

(assert (=> b!2789729 (= condMapEmpty!17886 (= (arr!6220 (_values!4204 (v!33919 (underlying!8049 (v!33920 (underlying!8050 (cache!3972 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32415)) mapDefault!17886)))))

(declare-fun e!1761157 () Bool)

(declare-fun e!1761148 () Bool)

(assert (=> b!2789730 (= e!1761157 (and e!1761148 tp!885449))))

(declare-fun b!2789731 () Bool)

(declare-fun e!1761129 () Bool)

(assert (=> b!2789731 (= e!1761129 e!1761154)))

(declare-fun b!2789732 () Bool)

(declare-fun tp_is_empty!14139 () Bool)

(declare-fun tp!885457 () Bool)

(assert (=> b!2789732 (= e!1761128 (and tp_is_empty!14139 tp!885457))))

(declare-fun mapNonEmpty!17885 () Bool)

(declare-fun tp!885461 () Bool)

(declare-fun tp!885456 () Bool)

(assert (=> mapNonEmpty!17885 (= mapRes!17885 (and tp!885461 tp!885456))))

(declare-fun mapRest!17886 () (Array (_ BitVec 32) List!32416))

(declare-fun mapKey!17885 () (_ BitVec 32))

(declare-fun mapValue!17885 () List!32416)

(assert (=> mapNonEmpty!17885 (= (arr!6221 (_values!4205 (v!33921 (underlying!8051 (v!33922 (underlying!8052 (cache!3973 cacheUp!890))))))) (store mapRest!17886 mapKey!17885 mapValue!17885))))

(declare-fun b!2789733 () Bool)

(assert (=> b!2789733 (= e!1761143 e!1761145)))

(declare-fun res!1163944 () Bool)

(assert (=> b!2789733 (=> res!1163944 e!1761145)))

(declare-fun lostCauseZipper!475 ((InoxSet Context!4762)) Bool)

(assert (=> b!2789733 (= res!1163944 (lostCauseZipper!475 z!3684))))

(assert (=> b!2789733 (and (= testedSuffix!143 lt!997200) (= lt!997200 testedSuffix!143))))

(declare-fun lt!997209 () Unit!46532)

(declare-fun lemmaSamePrefixThenSameSuffix!1176 (List!32413 List!32413 List!32413 List!32413 List!32413) Unit!46532)

(assert (=> b!2789733 (= lt!997209 (lemmaSamePrefixThenSameSuffix!1176 testedP!183 testedSuffix!143 testedP!183 lt!997200 lt!997204))))

(declare-fun getSuffix!1275 (List!32413 List!32413) List!32413)

(assert (=> b!2789733 (= lt!997200 (getSuffix!1275 lt!997204 testedP!183))))

(declare-fun b!2789734 () Bool)

(declare-fun e!1761131 () Bool)

(assert (=> b!2789734 (= e!1761131 e!1761134)))

(declare-fun res!1163943 () Bool)

(assert (=> b!2789734 (=> (not res!1163943) (not e!1761134))))

(declare-fun lt!997203 () Int)

(assert (=> b!2789734 (= res!1163943 (= totalInputSize!205 lt!997203))))

(declare-fun size!25145 (BalanceConc!19674) Int)

(assert (=> b!2789734 (= lt!997203 (size!25145 totalInput!758))))

(declare-fun b!2789735 () Bool)

(declare-fun tp!885463 () Bool)

(assert (=> b!2789735 (= e!1761138 tp!885463)))

(declare-fun b!2789736 () Bool)

(declare-fun e!1761135 () Bool)

(assert (=> b!2789736 (= e!1761133 e!1761135)))

(declare-fun res!1163942 () Bool)

(assert (=> b!2789736 (=> res!1163942 e!1761135)))

(declare-fun size!25146 (List!32413) Int)

(assert (=> b!2789736 (= res!1163942 (not (= (+ 1 testedPSize!143) (size!25146 lt!997216))))))

(declare-datatypes ((tuple3!5056 0))(
  ( (tuple3!5057 (_1!19370 (InoxSet Context!4762)) (_2!19370 CacheUp!2536) (_3!2998 CacheDown!2654)) )
))
(declare-fun lt!997201 () tuple3!5056)

(declare-fun derivationStepZipperMem!107 ((InoxSet Context!4762) C!16484 CacheUp!2536 CacheDown!2654) tuple3!5056)

(assert (=> b!2789736 (= lt!997201 (derivationStepZipperMem!107 z!3684 lt!997213 cacheUp!890 cacheDown!1009))))

(declare-fun mapNonEmpty!17886 () Bool)

(declare-fun tp!885464 () Bool)

(declare-fun tp!885462 () Bool)

(assert (=> mapNonEmpty!17886 (= mapRes!17886 (and tp!885464 tp!885462))))

(declare-fun mapKey!17886 () (_ BitVec 32))

(declare-fun mapRest!17885 () (Array (_ BitVec 32) List!32415))

(declare-fun mapValue!17886 () List!32415)

(assert (=> mapNonEmpty!17886 (= (arr!6220 (_values!4204 (v!33919 (underlying!8049 (v!33920 (underlying!8050 (cache!3972 cacheDown!1009))))))) (store mapRest!17885 mapKey!17886 mapValue!17886))))

(declare-fun b!2789737 () Bool)

(declare-fun res!1163939 () Bool)

(assert (=> b!2789737 (=> res!1163939 e!1761158)))

(declare-datatypes ((tuple2!32744 0))(
  ( (tuple2!32745 (_1!19371 BalanceConc!19674) (_2!19371 BalanceConc!19674)) )
))
(declare-fun lt!997206 () tuple2!32744)

(assert (=> b!2789737 (= res!1163939 (not (= (size!25145 (_1!19371 lt!997206)) testedPSize!143)))))

(declare-fun b!2789738 () Bool)

(declare-fun tp!885453 () Bool)

(assert (=> b!2789738 (= e!1761142 (and tp!885453 mapRes!17885))))

(declare-fun condMapEmpty!17885 () Bool)

(declare-fun mapDefault!17885 () List!32416)

(assert (=> b!2789738 (= condMapEmpty!17885 (= (arr!6221 (_values!4205 (v!33921 (underlying!8051 (v!33922 (underlying!8052 (cache!3973 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32416)) mapDefault!17885)))))

(declare-fun b!2789739 () Bool)

(assert (=> b!2789739 (= e!1761147 e!1761137)))

(declare-fun b!2789740 () Bool)

(assert (=> b!2789740 (= e!1761145 e!1761158)))

(declare-fun res!1163940 () Bool)

(assert (=> b!2789740 (=> res!1163940 e!1761158)))

(assert (=> b!2789740 (= res!1163940 (not (= (++!7979 lt!997218 lt!997211) lt!997204)))))

(assert (=> b!2789740 (= lt!997211 (list!12159 (_2!19371 lt!997206)))))

(assert (=> b!2789740 (= lt!997218 (list!12159 (_1!19371 lt!997206)))))

(declare-fun splitAt!159 (BalanceConc!19674 Int) tuple2!32744)

(assert (=> b!2789740 (= lt!997206 (splitAt!159 totalInput!758 testedPSize!143))))

(declare-fun b!2789741 () Bool)

(assert (=> b!2789741 (= e!1761140 e!1761131)))

(declare-fun res!1163941 () Bool)

(assert (=> b!2789741 (=> (not res!1163941) (not e!1761131))))

(declare-fun lt!997220 () Int)

(assert (=> b!2789741 (= res!1163941 (= testedPSize!143 lt!997220))))

(assert (=> b!2789741 (= lt!997220 (size!25146 testedP!183))))

(declare-fun b!2789742 () Bool)

(assert (=> b!2789742 (= e!1761156 e!1761141)))

(declare-fun res!1163936 () Bool)

(assert (=> b!2789742 (=> res!1163936 e!1761141)))

(assert (=> b!2789742 (= res!1163936 (>= lt!997220 lt!997203))))

(declare-fun lt!997207 () Unit!46532)

(assert (=> b!2789742 (= lt!997207 e!1761152)))

(declare-fun c!452905 () Bool)

(assert (=> b!2789742 (= c!452905 (= lt!997220 lt!997203))))

(assert (=> b!2789742 (<= lt!997220 (size!25146 lt!997204))))

(declare-fun lt!997210 () Unit!46532)

(declare-fun lemmaIsPrefixThenSmallerEqSize!282 (List!32413 List!32413) Unit!46532)

(assert (=> b!2789742 (= lt!997210 (lemmaIsPrefixThenSmallerEqSize!282 testedP!183 lt!997204))))

(declare-fun b!2789743 () Bool)

(assert (=> b!2789743 (= e!1761155 e!1761157)))

(declare-fun b!2789744 () Bool)

(assert (=> b!2789744 (= e!1761146 e!1761130)))

(declare-fun b!2789745 () Bool)

(declare-fun lt!997197 () MutLongMap!3924)

(get-info :version)

(assert (=> b!2789745 (= e!1761148 (and e!1761149 ((_ is LongMap!3924) lt!997197)))))

(assert (=> b!2789745 (= lt!997197 (v!33922 (underlying!8052 (cache!3973 cacheUp!890))))))

(declare-fun b!2789746 () Bool)

(declare-fun res!1163947 () Bool)

(assert (=> b!2789746 (=> (not res!1163947) (not e!1761134))))

(declare-fun valid!3065 (CacheUp!2536) Bool)

(assert (=> b!2789746 (= res!1163947 (valid!3065 cacheUp!890))))

(declare-fun b!2789747 () Bool)

(declare-fun res!1163948 () Bool)

(assert (=> b!2789747 (=> res!1163948 e!1761135)))

(assert (=> b!2789747 (= res!1163948 (not (valid!3065 (_2!19370 lt!997201))))))

(declare-fun b!2789748 () Bool)

(assert (=> b!2789748 (= e!1761135 true)))

(declare-fun lt!997205 () Bool)

(declare-fun valid!3066 (CacheDown!2654) Bool)

(assert (=> b!2789748 (= lt!997205 (valid!3066 (_3!2998 lt!997201)))))

(declare-fun b!2789749 () Bool)

(declare-fun e!1761139 () Bool)

(declare-fun lt!997199 () MutLongMap!3923)

(assert (=> b!2789749 (= e!1761151 (and e!1761139 ((_ is LongMap!3923) lt!997199)))))

(assert (=> b!2789749 (= lt!997199 (v!33920 (underlying!8050 (cache!3972 cacheDown!1009))))))

(declare-fun b!2789750 () Bool)

(declare-fun tp!885451 () Bool)

(assert (=> b!2789750 (= e!1761153 (and tp_is_empty!14139 tp!885451))))

(declare-fun b!2789751 () Bool)

(declare-fun Unit!46535 () Unit!46532)

(assert (=> b!2789751 (= e!1761152 Unit!46535)))

(declare-fun lt!997221 () Unit!46532)

(declare-fun lemmaIsPrefixRefl!1702 (List!32413 List!32413) Unit!46532)

(assert (=> b!2789751 (= lt!997221 (lemmaIsPrefixRefl!1702 lt!997204 lt!997204))))

(assert (=> b!2789751 (isPrefix!2598 lt!997204 lt!997204)))

(declare-fun lt!997215 () Unit!46532)

(declare-fun lemmaIsPrefixSameLengthThenSameList!482 (List!32413 List!32413 List!32413) Unit!46532)

(assert (=> b!2789751 (= lt!997215 (lemmaIsPrefixSameLengthThenSameList!482 lt!997204 testedP!183 lt!997204))))

(assert (=> b!2789751 false))

(declare-fun b!2789752 () Bool)

(assert (=> b!2789752 (= e!1761139 e!1761129)))

(declare-fun setIsEmpty!23797 () Bool)

(assert (=> setIsEmpty!23797 setRes!23797))

(declare-fun b!2789753 () Bool)

(declare-fun res!1163949 () Bool)

(assert (=> b!2789753 (=> (not res!1163949) (not e!1761134))))

(assert (=> b!2789753 (= res!1163949 (valid!3066 cacheDown!1009))))

(assert (= (and start!269732 res!1163946) b!2789741))

(assert (= (and b!2789741 res!1163941) b!2789734))

(assert (= (and b!2789734 res!1163943) b!2789746))

(assert (= (and b!2789746 res!1163947) b!2789753))

(assert (= (and b!2789753 res!1163949) b!2789720))

(assert (= (and b!2789720 (not res!1163937)) b!2789733))

(assert (= (and b!2789733 (not res!1163944)) b!2789725))

(assert (= (and b!2789725 (not res!1163938)) b!2789740))

(assert (= (and b!2789740 (not res!1163940)) b!2789737))

(assert (= (and b!2789737 (not res!1163939)) b!2789723))

(assert (= (and b!2789723 (not res!1163945)) b!2789742))

(assert (= (and b!2789742 c!452905) b!2789751))

(assert (= (and b!2789742 (not c!452905)) b!2789724))

(assert (= (and b!2789742 (not res!1163936)) b!2789722))

(assert (= (and b!2789722 (not res!1163935)) b!2789736))

(assert (= (and b!2789736 (not res!1163942)) b!2789747))

(assert (= (and b!2789747 (not res!1163948)) b!2789748))

(assert (= start!269732 b!2789721))

(assert (= (and start!269732 condSetEmpty!23797) setIsEmpty!23797))

(assert (= (and start!269732 (not condSetEmpty!23797)) setNonEmpty!23797))

(assert (= setNonEmpty!23797 b!2789735))

(assert (= (and start!269732 ((_ is Cons!32313) testedP!183)) b!2789750))

(assert (= (and start!269732 ((_ is Cons!32313) testedSuffix!143)) b!2789732))

(assert (= (and b!2789729 condMapEmpty!17886) mapIsEmpty!17886))

(assert (= (and b!2789729 (not condMapEmpty!17886)) mapNonEmpty!17886))

(assert (= b!2789726 b!2789729))

(assert (= b!2789731 b!2789726))

(assert (= b!2789752 b!2789731))

(assert (= (and b!2789749 ((_ is LongMap!3923) (v!33920 (underlying!8050 (cache!3972 cacheDown!1009))))) b!2789752))

(assert (= b!2789719 b!2789749))

(assert (= (and b!2789739 ((_ is HashMap!3829) (cache!3972 cacheDown!1009))) b!2789719))

(assert (= start!269732 b!2789739))

(assert (= (and b!2789738 condMapEmpty!17885) mapIsEmpty!17885))

(assert (= (and b!2789738 (not condMapEmpty!17885)) mapNonEmpty!17885))

(assert (= b!2789727 b!2789738))

(assert (= b!2789744 b!2789727))

(assert (= b!2789728 b!2789744))

(assert (= (and b!2789745 ((_ is LongMap!3924) (v!33922 (underlying!8052 (cache!3973 cacheUp!890))))) b!2789728))

(assert (= b!2789730 b!2789745))

(assert (= (and b!2789743 ((_ is HashMap!3830) (cache!3973 cacheUp!890))) b!2789730))

(assert (= start!269732 b!2789743))

(declare-fun m!3220125 () Bool)

(assert (=> b!2789736 m!3220125))

(declare-fun m!3220127 () Bool)

(assert (=> b!2789736 m!3220127))

(declare-fun m!3220129 () Bool)

(assert (=> b!2789740 m!3220129))

(declare-fun m!3220131 () Bool)

(assert (=> b!2789740 m!3220131))

(declare-fun m!3220133 () Bool)

(assert (=> b!2789740 m!3220133))

(declare-fun m!3220135 () Bool)

(assert (=> b!2789740 m!3220135))

(declare-fun m!3220137 () Bool)

(assert (=> b!2789742 m!3220137))

(declare-fun m!3220139 () Bool)

(assert (=> b!2789742 m!3220139))

(declare-fun m!3220141 () Bool)

(assert (=> start!269732 m!3220141))

(declare-fun m!3220143 () Bool)

(assert (=> start!269732 m!3220143))

(declare-fun m!3220145 () Bool)

(assert (=> start!269732 m!3220145))

(declare-fun m!3220147 () Bool)

(assert (=> start!269732 m!3220147))

(declare-fun m!3220149 () Bool)

(assert (=> start!269732 m!3220149))

(declare-fun m!3220151 () Bool)

(assert (=> b!2789734 m!3220151))

(declare-fun m!3220153 () Bool)

(assert (=> b!2789726 m!3220153))

(declare-fun m!3220155 () Bool)

(assert (=> b!2789726 m!3220155))

(declare-fun m!3220157 () Bool)

(assert (=> b!2789747 m!3220157))

(declare-fun m!3220159 () Bool)

(assert (=> b!2789733 m!3220159))

(declare-fun m!3220161 () Bool)

(assert (=> b!2789733 m!3220161))

(declare-fun m!3220163 () Bool)

(assert (=> b!2789733 m!3220163))

(declare-fun m!3220165 () Bool)

(assert (=> b!2789746 m!3220165))

(declare-fun m!3220167 () Bool)

(assert (=> b!2789748 m!3220167))

(declare-fun m!3220169 () Bool)

(assert (=> b!2789737 m!3220169))

(declare-fun m!3220171 () Bool)

(assert (=> b!2789727 m!3220171))

(declare-fun m!3220173 () Bool)

(assert (=> b!2789727 m!3220173))

(declare-fun m!3220175 () Bool)

(assert (=> b!2789741 m!3220175))

(declare-fun m!3220177 () Bool)

(assert (=> b!2789722 m!3220177))

(declare-fun m!3220179 () Bool)

(assert (=> b!2789722 m!3220179))

(declare-fun m!3220181 () Bool)

(assert (=> b!2789722 m!3220181))

(declare-fun m!3220183 () Bool)

(assert (=> b!2789722 m!3220183))

(declare-fun m!3220185 () Bool)

(assert (=> b!2789722 m!3220185))

(assert (=> b!2789722 m!3220181))

(declare-fun m!3220187 () Bool)

(assert (=> b!2789722 m!3220187))

(declare-fun m!3220189 () Bool)

(assert (=> b!2789722 m!3220189))

(declare-fun m!3220191 () Bool)

(assert (=> b!2789722 m!3220191))

(declare-fun m!3220193 () Bool)

(assert (=> b!2789722 m!3220193))

(declare-fun m!3220195 () Bool)

(assert (=> setNonEmpty!23797 m!3220195))

(declare-fun m!3220197 () Bool)

(assert (=> b!2789751 m!3220197))

(declare-fun m!3220199 () Bool)

(assert (=> b!2789751 m!3220199))

(declare-fun m!3220201 () Bool)

(assert (=> b!2789751 m!3220201))

(declare-fun m!3220203 () Bool)

(assert (=> mapNonEmpty!17886 m!3220203))

(declare-fun m!3220205 () Bool)

(assert (=> mapNonEmpty!17885 m!3220205))

(declare-fun m!3220207 () Bool)

(assert (=> b!2789723 m!3220207))

(declare-fun m!3220209 () Bool)

(assert (=> b!2789723 m!3220209))

(declare-fun m!3220211 () Bool)

(assert (=> b!2789723 m!3220211))

(declare-fun m!3220213 () Bool)

(assert (=> b!2789723 m!3220213))

(declare-fun m!3220215 () Bool)

(assert (=> b!2789723 m!3220215))

(assert (=> b!2789723 m!3220209))

(declare-fun m!3220217 () Bool)

(assert (=> b!2789723 m!3220217))

(declare-fun m!3220219 () Bool)

(assert (=> b!2789723 m!3220219))

(declare-fun m!3220221 () Bool)

(assert (=> b!2789753 m!3220221))

(declare-fun m!3220223 () Bool)

(assert (=> b!2789720 m!3220223))

(declare-fun m!3220225 () Bool)

(assert (=> b!2789720 m!3220225))

(declare-fun m!3220227 () Bool)

(assert (=> b!2789720 m!3220227))

(declare-fun m!3220229 () Bool)

(assert (=> b!2789721 m!3220229))

(check-sat (not b!2789723) (not b!2789727) b_and!203677 (not b!2789736) (not b!2789748) (not b!2789746) (not b_next!79639) (not b!2789740) (not b!2789737) b_and!203675 (not b!2789741) (not mapNonEmpty!17886) (not b_next!79643) (not start!269732) (not b!2789726) (not b!2789734) (not b!2789742) (not b!2789729) (not b!2789750) (not b!2789733) (not b!2789747) (not b_next!79641) (not b!2789751) (not setNonEmpty!23797) b_and!203671 (not b!2789735) b_and!203673 (not b!2789720) tp_is_empty!14139 (not b!2789732) (not b!2789753) (not b!2789722) (not mapNonEmpty!17885) (not b_next!79637) (not b!2789721) (not b!2789738))
(check-sat (not b_next!79643) b_and!203677 (not b_next!79641) b_and!203671 b_and!203673 (not b_next!79637) (not b_next!79639) b_and!203675)
