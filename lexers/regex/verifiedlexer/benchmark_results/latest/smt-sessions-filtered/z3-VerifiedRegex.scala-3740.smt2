; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209422 () Bool)

(assert start!209422)

(declare-fun b!2158553 () Bool)

(declare-fun b_free!63781 () Bool)

(declare-fun b_next!64485 () Bool)

(assert (=> b!2158553 (= b_free!63781 (not b_next!64485))))

(declare-fun tp!672780 () Bool)

(declare-fun b_and!173397 () Bool)

(assert (=> b!2158553 (= tp!672780 b_and!173397)))

(declare-fun b!2158554 () Bool)

(declare-fun b_free!63783 () Bool)

(declare-fun b_next!64487 () Bool)

(assert (=> b!2158554 (= b_free!63783 (not b_next!64487))))

(declare-fun tp!672778 () Bool)

(declare-fun b_and!173399 () Bool)

(assert (=> b!2158554 (= tp!672778 b_and!173399)))

(declare-fun e!1381009 () Bool)

(declare-fun e!1381007 () Bool)

(assert (=> b!2158553 (= e!1381009 (and e!1381007 tp!672780))))

(declare-fun res!930198 () Bool)

(declare-fun e!1381011 () Bool)

(assert (=> start!209422 (=> (not res!930198) (not e!1381011))))

(declare-datatypes ((C!12040 0))(
  ( (C!12041 (val!7006 Int)) )
))
(declare-datatypes ((List!25050 0))(
  ( (Nil!24966) (Cons!24966 (h!30367 C!12040) (t!197598 List!25050)) )
))
(declare-datatypes ((IArray!16171 0))(
  ( (IArray!16172 (innerList!8143 List!25050)) )
))
(declare-datatypes ((Conc!8083 0))(
  ( (Node!8083 (left!19219 Conc!8083) (right!19549 Conc!8083) (csize!16396 Int) (cheight!8294 Int)) (Leaf!11824 (xs!11025 IArray!16171) (csize!16397 Int)) (Empty!8083) )
))
(declare-datatypes ((BalanceConc!15928 0))(
  ( (BalanceConc!15929 (c!341746 Conc!8083)) )
))
(declare-fun localTotalInput!17 () BalanceConc!15928)

(declare-datatypes ((Regex!5947 0))(
  ( (ElementMatch!5947 (c!341747 C!12040)) (Concat!10249 (regOne!12406 Regex!5947) (regTwo!12406 Regex!5947)) (EmptyExpr!5947) (Star!5947 (reg!6276 Regex!5947)) (EmptyLang!5947) (Union!5947 (regOne!12407 Regex!5947) (regTwo!12407 Regex!5947)) )
))
(declare-datatypes ((List!25051 0))(
  ( (Nil!24967) (Cons!24967 (h!30368 Regex!5947) (t!197599 List!25051)) )
))
(declare-datatypes ((Context!3034 0))(
  ( (Context!3035 (exprs!2017 List!25051)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3778 0))(
  ( (tuple3!3779 (_1!14695 (InoxSet Context!3034)) (_2!14695 Int) (_3!2359 Int)) )
))
(declare-datatypes ((array!10075 0))(
  ( (array!10076 (arr!4492 (Array (_ BitVec 32) (_ BitVec 64))) (size!19514 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!24672 0))(
  ( (tuple2!24673 (_1!14696 tuple3!3778) (_2!14696 Int)) )
))
(declare-datatypes ((List!25052 0))(
  ( (Nil!24968) (Cons!24968 (h!30369 tuple2!24672) (t!197600 List!25052)) )
))
(declare-datatypes ((array!10077 0))(
  ( (array!10078 (arr!4493 (Array (_ BitVec 32) List!25052)) (size!19515 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5896 0))(
  ( (LongMapFixedSize!5897 (defaultEntry!3313 Int) (mask!7237 (_ BitVec 32)) (extraKeys!3196 (_ BitVec 32)) (zeroValue!3206 List!25052) (minValue!3206 List!25052) (_size!5947 (_ BitVec 32)) (_keys!3245 array!10075) (_values!3228 array!10077) (_vacant!3009 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11617 0))(
  ( (Cell!11618 (v!29365 LongMapFixedSize!5896)) )
))
(declare-datatypes ((MutLongMap!2948 0))(
  ( (LongMap!2948 (underlying!6091 Cell!11617)) (MutLongMapExt!2947 (__x!17020 Int)) )
))
(declare-datatypes ((Cell!11619 0))(
  ( (Cell!11620 (v!29366 MutLongMap!2948)) )
))
(declare-datatypes ((Hashable!2862 0))(
  ( (HashableExt!2861 (__x!17021 Int)) )
))
(declare-datatypes ((MutableMap!2862 0))(
  ( (MutableMapExt!2861 (__x!17022 Int)) (HashMap!2862 (underlying!6092 Cell!11619) (hashF!4785 Hashable!2862) (_size!5948 (_ BitVec 32)) (defaultValue!3024 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1082 0))(
  ( (CacheFurthestNullable!1083 (cache!3243 MutableMap!2862) (totalInput!3399 BalanceConc!15928)) )
))
(declare-fun thiss!29220 () CacheFurthestNullable!1082)

(assert (=> start!209422 (= res!930198 (= localTotalInput!17 (totalInput!3399 thiss!29220)))))

(assert (=> start!209422 e!1381011))

(declare-fun e!1381004 () Bool)

(declare-fun inv!33040 (BalanceConc!15928) Bool)

(assert (=> start!209422 (and (inv!33040 localTotalInput!17) e!1381004)))

(assert (=> start!209422 true))

(declare-fun condSetEmpty!17869 () Bool)

(declare-fun z!540 () (InoxSet Context!3034))

(assert (=> start!209422 (= condSetEmpty!17869 (= z!540 ((as const (Array Context!3034 Bool)) false)))))

(declare-fun setRes!17869 () Bool)

(assert (=> start!209422 setRes!17869))

(declare-fun e!1381006 () Bool)

(declare-fun inv!33041 (CacheFurthestNullable!1082) Bool)

(assert (=> start!209422 (and (inv!33041 thiss!29220) e!1381006)))

(declare-fun setIsEmpty!17869 () Bool)

(assert (=> setIsEmpty!17869 setRes!17869))

(declare-fun tp!672785 () Bool)

(declare-fun e!1381010 () Bool)

(declare-fun tp!672781 () Bool)

(declare-fun e!1381012 () Bool)

(declare-fun array_inv!3220 (array!10075) Bool)

(declare-fun array_inv!3221 (array!10077) Bool)

(assert (=> b!2158554 (= e!1381010 (and tp!672778 tp!672785 tp!672781 (array_inv!3220 (_keys!3245 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))) (array_inv!3221 (_values!3228 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))) e!1381012))))

(declare-fun b!2158555 () Bool)

(declare-fun e!1381008 () Bool)

(declare-fun lt!802402 () MutLongMap!2948)

(get-info :version)

(assert (=> b!2158555 (= e!1381007 (and e!1381008 ((_ is LongMap!2948) lt!802402)))))

(assert (=> b!2158555 (= lt!802402 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))

(declare-fun b!2158556 () Bool)

(declare-fun e!1381017 () Bool)

(declare-fun tp!672783 () Bool)

(declare-fun inv!33042 (Conc!8083) Bool)

(assert (=> b!2158556 (= e!1381017 (and (inv!33042 (c!341746 (totalInput!3399 thiss!29220))) tp!672783))))

(declare-fun b!2158557 () Bool)

(declare-fun tp!672777 () Bool)

(assert (=> b!2158557 (= e!1381004 (and (inv!33042 (c!341746 localTotalInput!17)) tp!672777))))

(declare-fun mapNonEmpty!13916 () Bool)

(declare-fun mapRes!13916 () Bool)

(declare-fun tp!672776 () Bool)

(declare-fun tp!672782 () Bool)

(assert (=> mapNonEmpty!13916 (= mapRes!13916 (and tp!672776 tp!672782))))

(declare-fun mapKey!13916 () (_ BitVec 32))

(declare-fun mapRest!13916 () (Array (_ BitVec 32) List!25052))

(declare-fun mapValue!13916 () List!25052)

(assert (=> mapNonEmpty!13916 (= (arr!4493 (_values!3228 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))) (store mapRest!13916 mapKey!13916 mapValue!13916))))

(declare-fun b!2158558 () Bool)

(declare-fun e!1381016 () Bool)

(assert (=> b!2158558 (= e!1381016 (not ((_ is HashMap!2862) (cache!3243 thiss!29220))))))

(declare-fun b!2158559 () Bool)

(declare-fun res!930192 () Bool)

(assert (=> b!2158559 (=> (not res!930192) (not e!1381011))))

(declare-fun validCacheMapFurthestNullable!185 (MutableMap!2862 BalanceConc!15928) Bool)

(assert (=> b!2158559 (= res!930192 (validCacheMapFurthestNullable!185 (cache!3243 thiss!29220) (totalInput!3399 thiss!29220)))))

(declare-fun b!2158560 () Bool)

(declare-fun e!1381013 () Bool)

(assert (=> b!2158560 (= e!1381008 e!1381013)))

(declare-fun tp!672779 () Bool)

(declare-fun setNonEmpty!17869 () Bool)

(declare-fun e!1381014 () Bool)

(declare-fun setElem!17869 () Context!3034)

(declare-fun inv!33043 (Context!3034) Bool)

(assert (=> setNonEmpty!17869 (= setRes!17869 (and tp!672779 (inv!33043 setElem!17869) e!1381014))))

(declare-fun setRest!17869 () (InoxSet Context!3034))

(assert (=> setNonEmpty!17869 (= z!540 ((_ map or) (store ((as const (Array Context!3034 Bool)) false) setElem!17869 true) setRest!17869))))

(declare-fun b!2158561 () Bool)

(assert (=> b!2158561 (= e!1381006 (and e!1381009 (inv!33040 (totalInput!3399 thiss!29220)) e!1381017))))

(declare-fun b!2158562 () Bool)

(declare-fun e!1381005 () Bool)

(declare-fun lastNullablePos!109 () Int)

(declare-fun from!970 () Int)

(assert (=> b!2158562 (= e!1381005 (= lastNullablePos!109 (- from!970 1)))))

(declare-fun mapIsEmpty!13916 () Bool)

(assert (=> mapIsEmpty!13916 mapRes!13916))

(declare-fun b!2158563 () Bool)

(assert (=> b!2158563 (= e!1381011 e!1381016)))

(declare-fun res!930196 () Bool)

(assert (=> b!2158563 (=> (not res!930196) (not e!1381016))))

(declare-fun lt!802403 () Int)

(assert (=> b!2158563 (= res!930196 (and (<= from!970 lt!802403) (>= lastNullablePos!109 (- 1)) (< lastNullablePos!109 from!970)))))

(declare-fun size!19516 (BalanceConc!15928) Int)

(assert (=> b!2158563 (= lt!802403 (size!19516 (totalInput!3399 thiss!29220)))))

(declare-fun b!2158564 () Bool)

(declare-fun res!930195 () Bool)

(assert (=> b!2158564 (=> (not res!930195) (not e!1381016))))

(assert (=> b!2158564 (= res!930195 e!1381005)))

(declare-fun res!930193 () Bool)

(assert (=> b!2158564 (=> res!930193 e!1381005)))

(declare-fun nullableZipper!236 ((InoxSet Context!3034)) Bool)

(assert (=> b!2158564 (= res!930193 (not (nullableZipper!236 z!540)))))

(declare-fun b!2158565 () Bool)

(declare-fun tp!672784 () Bool)

(assert (=> b!2158565 (= e!1381014 tp!672784)))

(declare-fun b!2158566 () Bool)

(declare-fun tp!672775 () Bool)

(assert (=> b!2158566 (= e!1381012 (and tp!672775 mapRes!13916))))

(declare-fun condMapEmpty!13916 () Bool)

(declare-fun mapDefault!13916 () List!25052)

(assert (=> b!2158566 (= condMapEmpty!13916 (= (arr!4493 (_values!3228 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))) ((as const (Array (_ BitVec 32) List!25052)) mapDefault!13916)))))

(declare-fun b!2158567 () Bool)

(declare-fun res!930194 () Bool)

(assert (=> b!2158567 (=> (not res!930194) (not e!1381011))))

(assert (=> b!2158567 (= res!930194 (>= from!970 0))))

(declare-fun b!2158568 () Bool)

(assert (=> b!2158568 (= e!1381013 e!1381010)))

(declare-fun b!2158569 () Bool)

(declare-fun res!930197 () Bool)

(assert (=> b!2158569 (=> (not res!930197) (not e!1381016))))

(declare-fun res!14508 () Int)

(declare-fun furthestNullablePosition!146 ((InoxSet Context!3034) Int BalanceConc!15928 Int Int) Int)

(assert (=> b!2158569 (= res!930197 (= res!14508 (furthestNullablePosition!146 z!540 from!970 (totalInput!3399 thiss!29220) lt!802403 lastNullablePos!109)))))

(assert (= (and start!209422 res!930198) b!2158559))

(assert (= (and b!2158559 res!930192) b!2158567))

(assert (= (and b!2158567 res!930194) b!2158563))

(assert (= (and b!2158563 res!930196) b!2158564))

(assert (= (and b!2158564 (not res!930193)) b!2158562))

(assert (= (and b!2158564 res!930195) b!2158569))

(assert (= (and b!2158569 res!930197) b!2158558))

(assert (= start!209422 b!2158557))

(assert (= (and start!209422 condSetEmpty!17869) setIsEmpty!17869))

(assert (= (and start!209422 (not condSetEmpty!17869)) setNonEmpty!17869))

(assert (= setNonEmpty!17869 b!2158565))

(assert (= (and b!2158566 condMapEmpty!13916) mapIsEmpty!13916))

(assert (= (and b!2158566 (not condMapEmpty!13916)) mapNonEmpty!13916))

(assert (= b!2158554 b!2158566))

(assert (= b!2158568 b!2158554))

(assert (= b!2158560 b!2158568))

(assert (= (and b!2158555 ((_ is LongMap!2948) (v!29366 (underlying!6092 (cache!3243 thiss!29220))))) b!2158560))

(assert (= b!2158553 b!2158555))

(assert (= (and b!2158561 ((_ is HashMap!2862) (cache!3243 thiss!29220))) b!2158553))

(assert (= b!2158561 b!2158556))

(assert (= start!209422 b!2158561))

(declare-fun m!2598608 () Bool)

(assert (=> mapNonEmpty!13916 m!2598608))

(declare-fun m!2598610 () Bool)

(assert (=> b!2158554 m!2598610))

(declare-fun m!2598612 () Bool)

(assert (=> b!2158554 m!2598612))

(declare-fun m!2598614 () Bool)

(assert (=> b!2158559 m!2598614))

(declare-fun m!2598616 () Bool)

(assert (=> b!2158563 m!2598616))

(declare-fun m!2598618 () Bool)

(assert (=> setNonEmpty!17869 m!2598618))

(declare-fun m!2598620 () Bool)

(assert (=> b!2158556 m!2598620))

(declare-fun m!2598622 () Bool)

(assert (=> b!2158561 m!2598622))

(declare-fun m!2598624 () Bool)

(assert (=> start!209422 m!2598624))

(declare-fun m!2598626 () Bool)

(assert (=> start!209422 m!2598626))

(declare-fun m!2598628 () Bool)

(assert (=> b!2158564 m!2598628))

(declare-fun m!2598630 () Bool)

(assert (=> b!2158557 m!2598630))

(declare-fun m!2598632 () Bool)

(assert (=> b!2158569 m!2598632))

(check-sat (not setNonEmpty!17869) (not b!2158566) (not b!2158557) (not b!2158563) (not b!2158565) (not b!2158554) (not b!2158564) (not b_next!64485) (not b!2158559) (not mapNonEmpty!13916) (not b!2158569) (not b!2158561) (not b!2158556) (not start!209422) b_and!173397 b_and!173399 (not b_next!64487))
(check-sat b_and!173399 b_and!173397 (not b_next!64487) (not b_next!64485))
(get-model)

(declare-fun d!646687 () Bool)

(declare-fun isBalanced!2510 (Conc!8083) Bool)

(assert (=> d!646687 (= (inv!33040 localTotalInput!17) (isBalanced!2510 (c!341746 localTotalInput!17)))))

(declare-fun bs!445968 () Bool)

(assert (= bs!445968 d!646687))

(declare-fun m!2598634 () Bool)

(assert (=> bs!445968 m!2598634))

(assert (=> start!209422 d!646687))

(declare-fun d!646689 () Bool)

(declare-fun res!930201 () Bool)

(declare-fun e!1381020 () Bool)

(assert (=> d!646689 (=> (not res!930201) (not e!1381020))))

(assert (=> d!646689 (= res!930201 ((_ is HashMap!2862) (cache!3243 thiss!29220)))))

(assert (=> d!646689 (= (inv!33041 thiss!29220) e!1381020)))

(declare-fun b!2158572 () Bool)

(assert (=> b!2158572 (= e!1381020 (validCacheMapFurthestNullable!185 (cache!3243 thiss!29220) (totalInput!3399 thiss!29220)))))

(assert (= (and d!646689 res!930201) b!2158572))

(assert (=> b!2158572 m!2598614))

(assert (=> start!209422 d!646689))

(declare-fun d!646691 () Bool)

(assert (=> d!646691 (= (inv!33040 (totalInput!3399 thiss!29220)) (isBalanced!2510 (c!341746 (totalInput!3399 thiss!29220))))))

(declare-fun bs!445969 () Bool)

(assert (= bs!445969 d!646691))

(declare-fun m!2598636 () Bool)

(assert (=> bs!445969 m!2598636))

(assert (=> b!2158561 d!646691))

(declare-fun d!646693 () Bool)

(declare-fun c!341750 () Bool)

(assert (=> d!646693 (= c!341750 ((_ is Node!8083) (c!341746 localTotalInput!17)))))

(declare-fun e!1381025 () Bool)

(assert (=> d!646693 (= (inv!33042 (c!341746 localTotalInput!17)) e!1381025)))

(declare-fun b!2158579 () Bool)

(declare-fun inv!33044 (Conc!8083) Bool)

(assert (=> b!2158579 (= e!1381025 (inv!33044 (c!341746 localTotalInput!17)))))

(declare-fun b!2158580 () Bool)

(declare-fun e!1381026 () Bool)

(assert (=> b!2158580 (= e!1381025 e!1381026)))

(declare-fun res!930204 () Bool)

(assert (=> b!2158580 (= res!930204 (not ((_ is Leaf!11824) (c!341746 localTotalInput!17))))))

(assert (=> b!2158580 (=> res!930204 e!1381026)))

(declare-fun b!2158581 () Bool)

(declare-fun inv!33045 (Conc!8083) Bool)

(assert (=> b!2158581 (= e!1381026 (inv!33045 (c!341746 localTotalInput!17)))))

(assert (= (and d!646693 c!341750) b!2158579))

(assert (= (and d!646693 (not c!341750)) b!2158580))

(assert (= (and b!2158580 (not res!930204)) b!2158581))

(declare-fun m!2598638 () Bool)

(assert (=> b!2158579 m!2598638))

(declare-fun m!2598640 () Bool)

(assert (=> b!2158581 m!2598640))

(assert (=> b!2158557 d!646693))

(declare-fun d!646695 () Bool)

(declare-fun lambda!81509 () Int)

(declare-fun forall!5135 (List!25051 Int) Bool)

(assert (=> d!646695 (= (inv!33043 setElem!17869) (forall!5135 (exprs!2017 setElem!17869) lambda!81509))))

(declare-fun bs!445970 () Bool)

(assert (= bs!445970 d!646695))

(declare-fun m!2598642 () Bool)

(assert (=> bs!445970 m!2598642))

(assert (=> setNonEmpty!17869 d!646695))

(declare-fun d!646697 () Bool)

(declare-fun lambda!81512 () Int)

(declare-fun exists!742 ((InoxSet Context!3034) Int) Bool)

(assert (=> d!646697 (= (nullableZipper!236 z!540) (exists!742 z!540 lambda!81512))))

(declare-fun bs!445971 () Bool)

(assert (= bs!445971 d!646697))

(declare-fun m!2598644 () Bool)

(assert (=> bs!445971 m!2598644))

(assert (=> b!2158564 d!646697))

(declare-fun b!2158592 () Bool)

(declare-fun e!1381035 () Bool)

(declare-fun lostCauseZipper!145 ((InoxSet Context!3034)) Bool)

(assert (=> b!2158592 (= e!1381035 (lostCauseZipper!145 z!540))))

(declare-fun lt!802408 () (InoxSet Context!3034))

(declare-fun e!1381034 () Int)

(declare-fun e!1381033 () Int)

(declare-fun b!2158593 () Bool)

(assert (=> b!2158593 (= e!1381033 (furthestNullablePosition!146 lt!802408 (+ from!970 1) (totalInput!3399 thiss!29220) lt!802403 e!1381034))))

(declare-fun derivationStepZipper!112 ((InoxSet Context!3034) C!12040) (InoxSet Context!3034))

(declare-fun apply!6047 (BalanceConc!15928 Int) C!12040)

(assert (=> b!2158593 (= lt!802408 (derivationStepZipper!112 z!540 (apply!6047 (totalInput!3399 thiss!29220) from!970)))))

(declare-fun c!341758 () Bool)

(assert (=> b!2158593 (= c!341758 (nullableZipper!236 lt!802408))))

(declare-fun d!646699 () Bool)

(declare-fun lt!802409 () Int)

(assert (=> d!646699 (and (>= lt!802409 (- 1)) (< lt!802409 lt!802403) (>= lt!802409 lastNullablePos!109) (or (= lt!802409 lastNullablePos!109) (>= lt!802409 from!970)))))

(assert (=> d!646699 (= lt!802409 e!1381033)))

(declare-fun c!341757 () Bool)

(assert (=> d!646699 (= c!341757 e!1381035)))

(declare-fun res!930207 () Bool)

(assert (=> d!646699 (=> res!930207 e!1381035)))

(assert (=> d!646699 (= res!930207 (= from!970 lt!802403))))

(assert (=> d!646699 (and (>= from!970 0) (<= from!970 lt!802403))))

(assert (=> d!646699 (= (furthestNullablePosition!146 z!540 from!970 (totalInput!3399 thiss!29220) lt!802403 lastNullablePos!109) lt!802409)))

(declare-fun b!2158594 () Bool)

(assert (=> b!2158594 (= e!1381034 lastNullablePos!109)))

(declare-fun b!2158595 () Bool)

(assert (=> b!2158595 (= e!1381033 lastNullablePos!109)))

(declare-fun b!2158596 () Bool)

(assert (=> b!2158596 (= e!1381034 from!970)))

(assert (= (and d!646699 (not res!930207)) b!2158592))

(assert (= (and d!646699 c!341757) b!2158595))

(assert (= (and d!646699 (not c!341757)) b!2158593))

(assert (= (and b!2158593 c!341758) b!2158596))

(assert (= (and b!2158593 (not c!341758)) b!2158594))

(declare-fun m!2598646 () Bool)

(assert (=> b!2158592 m!2598646))

(declare-fun m!2598648 () Bool)

(assert (=> b!2158593 m!2598648))

(declare-fun m!2598650 () Bool)

(assert (=> b!2158593 m!2598650))

(assert (=> b!2158593 m!2598650))

(declare-fun m!2598652 () Bool)

(assert (=> b!2158593 m!2598652))

(declare-fun m!2598654 () Bool)

(assert (=> b!2158593 m!2598654))

(assert (=> b!2158569 d!646699))

(declare-fun d!646701 () Bool)

(declare-fun c!341759 () Bool)

(assert (=> d!646701 (= c!341759 ((_ is Node!8083) (c!341746 (totalInput!3399 thiss!29220))))))

(declare-fun e!1381036 () Bool)

(assert (=> d!646701 (= (inv!33042 (c!341746 (totalInput!3399 thiss!29220))) e!1381036)))

(declare-fun b!2158597 () Bool)

(assert (=> b!2158597 (= e!1381036 (inv!33044 (c!341746 (totalInput!3399 thiss!29220))))))

(declare-fun b!2158598 () Bool)

(declare-fun e!1381037 () Bool)

(assert (=> b!2158598 (= e!1381036 e!1381037)))

(declare-fun res!930208 () Bool)

(assert (=> b!2158598 (= res!930208 (not ((_ is Leaf!11824) (c!341746 (totalInput!3399 thiss!29220)))))))

(assert (=> b!2158598 (=> res!930208 e!1381037)))

(declare-fun b!2158599 () Bool)

(assert (=> b!2158599 (= e!1381037 (inv!33045 (c!341746 (totalInput!3399 thiss!29220))))))

(assert (= (and d!646701 c!341759) b!2158597))

(assert (= (and d!646701 (not c!341759)) b!2158598))

(assert (= (and b!2158598 (not res!930208)) b!2158599))

(declare-fun m!2598656 () Bool)

(assert (=> b!2158597 m!2598656))

(declare-fun m!2598658 () Bool)

(assert (=> b!2158599 m!2598658))

(assert (=> b!2158556 d!646701))

(declare-fun d!646703 () Bool)

(declare-fun lt!802412 () Int)

(declare-fun size!19517 (List!25050) Int)

(declare-fun list!9572 (BalanceConc!15928) List!25050)

(assert (=> d!646703 (= lt!802412 (size!19517 (list!9572 (totalInput!3399 thiss!29220))))))

(declare-fun size!19518 (Conc!8083) Int)

(assert (=> d!646703 (= lt!802412 (size!19518 (c!341746 (totalInput!3399 thiss!29220))))))

(assert (=> d!646703 (= (size!19516 (totalInput!3399 thiss!29220)) lt!802412)))

(declare-fun bs!445972 () Bool)

(assert (= bs!445972 d!646703))

(declare-fun m!2598660 () Bool)

(assert (=> bs!445972 m!2598660))

(assert (=> bs!445972 m!2598660))

(declare-fun m!2598662 () Bool)

(assert (=> bs!445972 m!2598662))

(declare-fun m!2598664 () Bool)

(assert (=> bs!445972 m!2598664))

(assert (=> b!2158563 d!646703))

(declare-fun b!2158605 () Bool)

(assert (=> b!2158605 true))

(declare-fun d!646705 () Bool)

(declare-fun res!930213 () Bool)

(declare-fun e!1381040 () Bool)

(assert (=> d!646705 (=> (not res!930213) (not e!1381040))))

(declare-fun valid!2272 (MutableMap!2862) Bool)

(assert (=> d!646705 (= res!930213 (valid!2272 (cache!3243 thiss!29220)))))

(assert (=> d!646705 (= (validCacheMapFurthestNullable!185 (cache!3243 thiss!29220) (totalInput!3399 thiss!29220)) e!1381040)))

(declare-fun b!2158604 () Bool)

(declare-fun res!930214 () Bool)

(assert (=> b!2158604 (=> (not res!930214) (not e!1381040))))

(declare-fun invariantList!334 (List!25052) Bool)

(declare-datatypes ((ListMap!727 0))(
  ( (ListMap!728 (toList!1130 List!25052)) )
))
(declare-fun map!5030 (MutableMap!2862) ListMap!727)

(assert (=> b!2158604 (= res!930214 (invariantList!334 (toList!1130 (map!5030 (cache!3243 thiss!29220)))))))

(declare-fun lambda!81515 () Int)

(declare-fun forall!5136 (List!25052 Int) Bool)

(assert (=> b!2158605 (= e!1381040 (forall!5136 (toList!1130 (map!5030 (cache!3243 thiss!29220))) lambda!81515))))

(assert (= (and d!646705 res!930213) b!2158604))

(assert (= (and b!2158604 res!930214) b!2158605))

(declare-fun m!2598667 () Bool)

(assert (=> d!646705 m!2598667))

(declare-fun m!2598669 () Bool)

(assert (=> b!2158604 m!2598669))

(declare-fun m!2598671 () Bool)

(assert (=> b!2158604 m!2598671))

(assert (=> b!2158605 m!2598669))

(declare-fun m!2598673 () Bool)

(assert (=> b!2158605 m!2598673))

(assert (=> b!2158559 d!646705))

(declare-fun d!646707 () Bool)

(assert (=> d!646707 (= (array_inv!3220 (_keys!3245 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))) (bvsge (size!19514 (_keys!3245 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2158554 d!646707))

(declare-fun d!646709 () Bool)

(assert (=> d!646709 (= (array_inv!3221 (_values!3228 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))) (bvsge (size!19515 (_values!3228 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2158554 d!646709))

(declare-fun e!1381046 () Bool)

(assert (=> b!2158566 (= tp!672775 e!1381046)))

(declare-fun e!1381045 () Bool)

(declare-fun setNonEmpty!17872 () Bool)

(declare-fun setElem!17872 () Context!3034)

(declare-fun tp!672793 () Bool)

(declare-fun setRes!17872 () Bool)

(assert (=> setNonEmpty!17872 (= setRes!17872 (and tp!672793 (inv!33043 setElem!17872) e!1381045))))

(declare-fun setRest!17872 () (InoxSet Context!3034))

(assert (=> setNonEmpty!17872 (= (_1!14695 (_1!14696 (h!30369 mapDefault!13916))) ((_ map or) (store ((as const (Array Context!3034 Bool)) false) setElem!17872 true) setRest!17872))))

(declare-fun b!2158614 () Bool)

(declare-fun tp!672792 () Bool)

(assert (=> b!2158614 (= e!1381046 (and setRes!17872 tp!672792))))

(declare-fun condSetEmpty!17872 () Bool)

(assert (=> b!2158614 (= condSetEmpty!17872 (= (_1!14695 (_1!14696 (h!30369 mapDefault!13916))) ((as const (Array Context!3034 Bool)) false)))))

(declare-fun setIsEmpty!17872 () Bool)

(assert (=> setIsEmpty!17872 setRes!17872))

(declare-fun b!2158615 () Bool)

(declare-fun tp!672794 () Bool)

(assert (=> b!2158615 (= e!1381045 tp!672794)))

(assert (= (and b!2158614 condSetEmpty!17872) setIsEmpty!17872))

(assert (= (and b!2158614 (not condSetEmpty!17872)) setNonEmpty!17872))

(assert (= setNonEmpty!17872 b!2158615))

(assert (= (and b!2158566 ((_ is Cons!24968) mapDefault!13916)) b!2158614))

(declare-fun m!2598675 () Bool)

(assert (=> setNonEmpty!17872 m!2598675))

(declare-fun mapIsEmpty!13919 () Bool)

(declare-fun mapRes!13919 () Bool)

(assert (=> mapIsEmpty!13919 mapRes!13919))

(declare-fun e!1381055 () Bool)

(declare-fun setRes!17877 () Bool)

(declare-fun setElem!17878 () Context!3034)

(declare-fun setNonEmpty!17877 () Bool)

(declare-fun tp!672809 () Bool)

(assert (=> setNonEmpty!17877 (= setRes!17877 (and tp!672809 (inv!33043 setElem!17878) e!1381055))))

(declare-fun mapValue!13919 () List!25052)

(declare-fun setRest!17878 () (InoxSet Context!3034))

(assert (=> setNonEmpty!17877 (= (_1!14695 (_1!14696 (h!30369 mapValue!13919))) ((_ map or) (store ((as const (Array Context!3034 Bool)) false) setElem!17878 true) setRest!17878))))

(declare-fun b!2158626 () Bool)

(declare-fun e!1381057 () Bool)

(declare-fun tp!672811 () Bool)

(assert (=> b!2158626 (= e!1381057 (and setRes!17877 tp!672811))))

(declare-fun condSetEmpty!17878 () Bool)

(assert (=> b!2158626 (= condSetEmpty!17878 (= (_1!14695 (_1!14696 (h!30369 mapValue!13919))) ((as const (Array Context!3034 Bool)) false)))))

(declare-fun condMapEmpty!13919 () Bool)

(declare-fun mapDefault!13919 () List!25052)

(assert (=> mapNonEmpty!13916 (= condMapEmpty!13919 (= mapRest!13916 ((as const (Array (_ BitVec 32) List!25052)) mapDefault!13919)))))

(declare-fun e!1381058 () Bool)

(assert (=> mapNonEmpty!13916 (= tp!672776 (and e!1381058 mapRes!13919))))

(declare-fun mapNonEmpty!13919 () Bool)

(declare-fun tp!672810 () Bool)

(assert (=> mapNonEmpty!13919 (= mapRes!13919 (and tp!672810 e!1381057))))

(declare-fun mapKey!13919 () (_ BitVec 32))

(declare-fun mapRest!13919 () (Array (_ BitVec 32) List!25052))

(assert (=> mapNonEmpty!13919 (= mapRest!13916 (store mapRest!13919 mapKey!13919 mapValue!13919))))

(declare-fun setIsEmpty!17877 () Bool)

(assert (=> setIsEmpty!17877 setRes!17877))

(declare-fun setIsEmpty!17878 () Bool)

(declare-fun setRes!17878 () Bool)

(assert (=> setIsEmpty!17878 setRes!17878))

(declare-fun setElem!17877 () Context!3034)

(declare-fun e!1381056 () Bool)

(declare-fun tp!672812 () Bool)

(declare-fun setNonEmpty!17878 () Bool)

(assert (=> setNonEmpty!17878 (= setRes!17878 (and tp!672812 (inv!33043 setElem!17877) e!1381056))))

(declare-fun setRest!17877 () (InoxSet Context!3034))

(assert (=> setNonEmpty!17878 (= (_1!14695 (_1!14696 (h!30369 mapDefault!13919))) ((_ map or) (store ((as const (Array Context!3034 Bool)) false) setElem!17877 true) setRest!17877))))

(declare-fun b!2158627 () Bool)

(declare-fun tp!672814 () Bool)

(assert (=> b!2158627 (= e!1381058 (and setRes!17878 tp!672814))))

(declare-fun condSetEmpty!17877 () Bool)

(assert (=> b!2158627 (= condSetEmpty!17877 (= (_1!14695 (_1!14696 (h!30369 mapDefault!13919))) ((as const (Array Context!3034 Bool)) false)))))

(declare-fun b!2158628 () Bool)

(declare-fun tp!672813 () Bool)

(assert (=> b!2158628 (= e!1381055 tp!672813)))

(declare-fun b!2158629 () Bool)

(declare-fun tp!672815 () Bool)

(assert (=> b!2158629 (= e!1381056 tp!672815)))

(assert (= (and mapNonEmpty!13916 condMapEmpty!13919) mapIsEmpty!13919))

(assert (= (and mapNonEmpty!13916 (not condMapEmpty!13919)) mapNonEmpty!13919))

(assert (= (and b!2158626 condSetEmpty!17878) setIsEmpty!17877))

(assert (= (and b!2158626 (not condSetEmpty!17878)) setNonEmpty!17877))

(assert (= setNonEmpty!17877 b!2158628))

(assert (= (and mapNonEmpty!13919 ((_ is Cons!24968) mapValue!13919)) b!2158626))

(assert (= (and b!2158627 condSetEmpty!17877) setIsEmpty!17878))

(assert (= (and b!2158627 (not condSetEmpty!17877)) setNonEmpty!17878))

(assert (= setNonEmpty!17878 b!2158629))

(assert (= (and mapNonEmpty!13916 ((_ is Cons!24968) mapDefault!13919)) b!2158627))

(declare-fun m!2598677 () Bool)

(assert (=> setNonEmpty!17877 m!2598677))

(declare-fun m!2598679 () Bool)

(assert (=> mapNonEmpty!13919 m!2598679))

(declare-fun m!2598681 () Bool)

(assert (=> setNonEmpty!17878 m!2598681))

(declare-fun e!1381060 () Bool)

(assert (=> mapNonEmpty!13916 (= tp!672782 e!1381060)))

(declare-fun setNonEmpty!17879 () Bool)

(declare-fun tp!672817 () Bool)

(declare-fun setElem!17879 () Context!3034)

(declare-fun setRes!17879 () Bool)

(declare-fun e!1381059 () Bool)

(assert (=> setNonEmpty!17879 (= setRes!17879 (and tp!672817 (inv!33043 setElem!17879) e!1381059))))

(declare-fun setRest!17879 () (InoxSet Context!3034))

(assert (=> setNonEmpty!17879 (= (_1!14695 (_1!14696 (h!30369 mapValue!13916))) ((_ map or) (store ((as const (Array Context!3034 Bool)) false) setElem!17879 true) setRest!17879))))

(declare-fun b!2158630 () Bool)

(declare-fun tp!672816 () Bool)

(assert (=> b!2158630 (= e!1381060 (and setRes!17879 tp!672816))))

(declare-fun condSetEmpty!17879 () Bool)

(assert (=> b!2158630 (= condSetEmpty!17879 (= (_1!14695 (_1!14696 (h!30369 mapValue!13916))) ((as const (Array Context!3034 Bool)) false)))))

(declare-fun setIsEmpty!17879 () Bool)

(assert (=> setIsEmpty!17879 setRes!17879))

(declare-fun b!2158631 () Bool)

(declare-fun tp!672818 () Bool)

(assert (=> b!2158631 (= e!1381059 tp!672818)))

(assert (= (and b!2158630 condSetEmpty!17879) setIsEmpty!17879))

(assert (= (and b!2158630 (not condSetEmpty!17879)) setNonEmpty!17879))

(assert (= setNonEmpty!17879 b!2158631))

(assert (= (and mapNonEmpty!13916 ((_ is Cons!24968) mapValue!13916)) b!2158630))

(declare-fun m!2598683 () Bool)

(assert (=> setNonEmpty!17879 m!2598683))

(declare-fun b!2158636 () Bool)

(declare-fun e!1381063 () Bool)

(declare-fun tp!672823 () Bool)

(declare-fun tp!672824 () Bool)

(assert (=> b!2158636 (= e!1381063 (and tp!672823 tp!672824))))

(assert (=> b!2158565 (= tp!672784 e!1381063)))

(assert (= (and b!2158565 ((_ is Cons!24967) (exprs!2017 setElem!17869))) b!2158636))

(declare-fun e!1381068 () Bool)

(declare-fun tp!672832 () Bool)

(declare-fun tp!672831 () Bool)

(declare-fun b!2158645 () Bool)

(assert (=> b!2158645 (= e!1381068 (and (inv!33042 (left!19219 (c!341746 localTotalInput!17))) tp!672831 (inv!33042 (right!19549 (c!341746 localTotalInput!17))) tp!672832))))

(declare-fun b!2158647 () Bool)

(declare-fun e!1381069 () Bool)

(declare-fun tp!672833 () Bool)

(assert (=> b!2158647 (= e!1381069 tp!672833)))

(declare-fun b!2158646 () Bool)

(declare-fun inv!33046 (IArray!16171) Bool)

(assert (=> b!2158646 (= e!1381068 (and (inv!33046 (xs!11025 (c!341746 localTotalInput!17))) e!1381069))))

(assert (=> b!2158557 (= tp!672777 (and (inv!33042 (c!341746 localTotalInput!17)) e!1381068))))

(assert (= (and b!2158557 ((_ is Node!8083) (c!341746 localTotalInput!17))) b!2158645))

(assert (= b!2158646 b!2158647))

(assert (= (and b!2158557 ((_ is Leaf!11824) (c!341746 localTotalInput!17))) b!2158646))

(declare-fun m!2598685 () Bool)

(assert (=> b!2158645 m!2598685))

(declare-fun m!2598687 () Bool)

(assert (=> b!2158645 m!2598687))

(declare-fun m!2598689 () Bool)

(assert (=> b!2158646 m!2598689))

(assert (=> b!2158557 m!2598630))

(declare-fun condSetEmpty!17882 () Bool)

(assert (=> setNonEmpty!17869 (= condSetEmpty!17882 (= setRest!17869 ((as const (Array Context!3034 Bool)) false)))))

(declare-fun setRes!17882 () Bool)

(assert (=> setNonEmpty!17869 (= tp!672779 setRes!17882)))

(declare-fun setIsEmpty!17882 () Bool)

(assert (=> setIsEmpty!17882 setRes!17882))

(declare-fun setElem!17882 () Context!3034)

(declare-fun e!1381072 () Bool)

(declare-fun setNonEmpty!17882 () Bool)

(declare-fun tp!672838 () Bool)

(assert (=> setNonEmpty!17882 (= setRes!17882 (and tp!672838 (inv!33043 setElem!17882) e!1381072))))

(declare-fun setRest!17882 () (InoxSet Context!3034))

(assert (=> setNonEmpty!17882 (= setRest!17869 ((_ map or) (store ((as const (Array Context!3034 Bool)) false) setElem!17882 true) setRest!17882))))

(declare-fun b!2158652 () Bool)

(declare-fun tp!672839 () Bool)

(assert (=> b!2158652 (= e!1381072 tp!672839)))

(assert (= (and setNonEmpty!17869 condSetEmpty!17882) setIsEmpty!17882))

(assert (= (and setNonEmpty!17869 (not condSetEmpty!17882)) setNonEmpty!17882))

(assert (= setNonEmpty!17882 b!2158652))

(declare-fun m!2598691 () Bool)

(assert (=> setNonEmpty!17882 m!2598691))

(declare-fun b!2158653 () Bool)

(declare-fun tp!672841 () Bool)

(declare-fun tp!672840 () Bool)

(declare-fun e!1381073 () Bool)

(assert (=> b!2158653 (= e!1381073 (and (inv!33042 (left!19219 (c!341746 (totalInput!3399 thiss!29220)))) tp!672840 (inv!33042 (right!19549 (c!341746 (totalInput!3399 thiss!29220)))) tp!672841))))

(declare-fun b!2158655 () Bool)

(declare-fun e!1381074 () Bool)

(declare-fun tp!672842 () Bool)

(assert (=> b!2158655 (= e!1381074 tp!672842)))

(declare-fun b!2158654 () Bool)

(assert (=> b!2158654 (= e!1381073 (and (inv!33046 (xs!11025 (c!341746 (totalInput!3399 thiss!29220)))) e!1381074))))

(assert (=> b!2158556 (= tp!672783 (and (inv!33042 (c!341746 (totalInput!3399 thiss!29220))) e!1381073))))

(assert (= (and b!2158556 ((_ is Node!8083) (c!341746 (totalInput!3399 thiss!29220)))) b!2158653))

(assert (= b!2158654 b!2158655))

(assert (= (and b!2158556 ((_ is Leaf!11824) (c!341746 (totalInput!3399 thiss!29220)))) b!2158654))

(declare-fun m!2598693 () Bool)

(assert (=> b!2158653 m!2598693))

(declare-fun m!2598695 () Bool)

(assert (=> b!2158653 m!2598695))

(declare-fun m!2598697 () Bool)

(assert (=> b!2158654 m!2598697))

(assert (=> b!2158556 m!2598620))

(declare-fun e!1381076 () Bool)

(assert (=> b!2158554 (= tp!672785 e!1381076)))

(declare-fun tp!672844 () Bool)

(declare-fun setRes!17883 () Bool)

(declare-fun e!1381075 () Bool)

(declare-fun setNonEmpty!17883 () Bool)

(declare-fun setElem!17883 () Context!3034)

(assert (=> setNonEmpty!17883 (= setRes!17883 (and tp!672844 (inv!33043 setElem!17883) e!1381075))))

(declare-fun setRest!17883 () (InoxSet Context!3034))

(assert (=> setNonEmpty!17883 (= (_1!14695 (_1!14696 (h!30369 (zeroValue!3206 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3034 Bool)) false) setElem!17883 true) setRest!17883))))

(declare-fun b!2158656 () Bool)

(declare-fun tp!672843 () Bool)

(assert (=> b!2158656 (= e!1381076 (and setRes!17883 tp!672843))))

(declare-fun condSetEmpty!17883 () Bool)

(assert (=> b!2158656 (= condSetEmpty!17883 (= (_1!14695 (_1!14696 (h!30369 (zeroValue!3206 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))))) ((as const (Array Context!3034 Bool)) false)))))

(declare-fun setIsEmpty!17883 () Bool)

(assert (=> setIsEmpty!17883 setRes!17883))

(declare-fun b!2158657 () Bool)

(declare-fun tp!672845 () Bool)

(assert (=> b!2158657 (= e!1381075 tp!672845)))

(assert (= (and b!2158656 condSetEmpty!17883) setIsEmpty!17883))

(assert (= (and b!2158656 (not condSetEmpty!17883)) setNonEmpty!17883))

(assert (= setNonEmpty!17883 b!2158657))

(assert (= (and b!2158554 ((_ is Cons!24968) (zeroValue!3206 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220)))))))) b!2158656))

(declare-fun m!2598699 () Bool)

(assert (=> setNonEmpty!17883 m!2598699))

(declare-fun e!1381078 () Bool)

(assert (=> b!2158554 (= tp!672781 e!1381078)))

(declare-fun setElem!17884 () Context!3034)

(declare-fun setRes!17884 () Bool)

(declare-fun e!1381077 () Bool)

(declare-fun setNonEmpty!17884 () Bool)

(declare-fun tp!672847 () Bool)

(assert (=> setNonEmpty!17884 (= setRes!17884 (and tp!672847 (inv!33043 setElem!17884) e!1381077))))

(declare-fun setRest!17884 () (InoxSet Context!3034))

(assert (=> setNonEmpty!17884 (= (_1!14695 (_1!14696 (h!30369 (minValue!3206 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3034 Bool)) false) setElem!17884 true) setRest!17884))))

(declare-fun b!2158658 () Bool)

(declare-fun tp!672846 () Bool)

(assert (=> b!2158658 (= e!1381078 (and setRes!17884 tp!672846))))

(declare-fun condSetEmpty!17884 () Bool)

(assert (=> b!2158658 (= condSetEmpty!17884 (= (_1!14695 (_1!14696 (h!30369 (minValue!3206 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220))))))))) ((as const (Array Context!3034 Bool)) false)))))

(declare-fun setIsEmpty!17884 () Bool)

(assert (=> setIsEmpty!17884 setRes!17884))

(declare-fun b!2158659 () Bool)

(declare-fun tp!672848 () Bool)

(assert (=> b!2158659 (= e!1381077 tp!672848)))

(assert (= (and b!2158658 condSetEmpty!17884) setIsEmpty!17884))

(assert (= (and b!2158658 (not condSetEmpty!17884)) setNonEmpty!17884))

(assert (= setNonEmpty!17884 b!2158659))

(assert (= (and b!2158554 ((_ is Cons!24968) (minValue!3206 (v!29365 (underlying!6091 (v!29366 (underlying!6092 (cache!3243 thiss!29220)))))))) b!2158658))

(declare-fun m!2598701 () Bool)

(assert (=> setNonEmpty!17884 m!2598701))

(check-sat (not b!2158572) (not b!2158636) (not b!2158630) (not b!2158599) (not setNonEmpty!17872) (not b!2158658) (not d!646695) (not b!2158628) (not setNonEmpty!17882) (not b!2158604) (not b!2158581) (not b!2158631) b_and!173397 (not b!2158615) (not b!2158645) (not b!2158653) (not b!2158557) (not mapNonEmpty!13919) (not b!2158655) (not b!2158579) (not b!2158656) (not b!2158629) (not b!2158652) (not b!2158659) (not setNonEmpty!17878) (not d!646687) (not b!2158614) (not d!646705) (not setNonEmpty!17883) (not b!2158647) (not setNonEmpty!17879) (not b!2158654) (not d!646697) (not d!646703) (not b_next!64485) (not b!2158597) (not d!646691) (not b!2158593) (not b!2158605) (not b!2158627) (not b!2158626) (not b!2158592) (not b!2158646) (not setNonEmpty!17877) (not b!2158657) b_and!173399 (not b_next!64487) (not setNonEmpty!17884) (not b!2158556))
(check-sat b_and!173399 b_and!173397 (not b_next!64487) (not b_next!64485))
