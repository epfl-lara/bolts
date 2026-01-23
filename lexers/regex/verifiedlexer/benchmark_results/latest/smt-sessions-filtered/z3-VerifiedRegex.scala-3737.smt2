; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209324 () Bool)

(assert start!209324)

(declare-fun b!2157772 () Bool)

(declare-fun b_free!63757 () Bool)

(declare-fun b_next!64461 () Bool)

(assert (=> b!2157772 (= b_free!63757 (not b_next!64461))))

(declare-fun tp!672388 () Bool)

(declare-fun b_and!173373 () Bool)

(assert (=> b!2157772 (= tp!672388 b_and!173373)))

(declare-fun b!2157778 () Bool)

(declare-fun b_free!63759 () Bool)

(declare-fun b_next!64463 () Bool)

(assert (=> b!2157778 (= b_free!63759 (not b_next!64463))))

(declare-fun tp!672389 () Bool)

(declare-fun b_and!173375 () Bool)

(assert (=> b!2157778 (= tp!672389 b_and!173375)))

(declare-fun b!2157763 () Bool)

(assert (=> b!2157763 true))

(declare-fun e!1380439 () Bool)

(declare-datatypes ((C!12028 0))(
  ( (C!12029 (val!7000 Int)) )
))
(declare-datatypes ((List!25029 0))(
  ( (Nil!24945) (Cons!24945 (h!30346 C!12028) (t!197577 List!25029)) )
))
(declare-datatypes ((Regex!5941 0))(
  ( (ElementMatch!5941 (c!341635 C!12028)) (Concat!10243 (regOne!12394 Regex!5941) (regTwo!12394 Regex!5941)) (EmptyExpr!5941) (Star!5941 (reg!6270 Regex!5941)) (EmptyLang!5941) (Union!5941 (regOne!12395 Regex!5941) (regTwo!12395 Regex!5941)) )
))
(declare-datatypes ((List!25030 0))(
  ( (Nil!24946) (Cons!24946 (h!30347 Regex!5941) (t!197578 List!25030)) )
))
(declare-datatypes ((Context!3022 0))(
  ( (Context!3023 (exprs!2011 List!25030)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3766 0))(
  ( (tuple3!3767 (_1!14669 (InoxSet Context!3022)) (_2!14669 Int) (_3!2353 Int)) )
))
(declare-datatypes ((array!10045 0))(
  ( (array!10046 (arr!4480 (Array (_ BitVec 32) (_ BitVec 64))) (size!19491 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!24632 0))(
  ( (tuple2!24633 (_1!14670 tuple3!3766) (_2!14670 Int)) )
))
(declare-datatypes ((List!25031 0))(
  ( (Nil!24947) (Cons!24947 (h!30348 tuple2!24632) (t!197579 List!25031)) )
))
(declare-datatypes ((array!10047 0))(
  ( (array!10048 (arr!4481 (Array (_ BitVec 32) List!25031)) (size!19492 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5884 0))(
  ( (LongMapFixedSize!5885 (defaultEntry!3307 Int) (mask!7228 (_ BitVec 32)) (extraKeys!3190 (_ BitVec 32)) (zeroValue!3200 List!25031) (minValue!3200 List!25031) (_size!5935 (_ BitVec 32)) (_keys!3239 array!10045) (_values!3222 array!10047) (_vacant!3003 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11593 0))(
  ( (Cell!11594 (v!29347 LongMapFixedSize!5884)) )
))
(declare-datatypes ((MutLongMap!2942 0))(
  ( (LongMap!2942 (underlying!6079 Cell!11593)) (MutLongMapExt!2941 (__x!17002 Int)) )
))
(declare-datatypes ((Cell!11595 0))(
  ( (Cell!11596 (v!29348 MutLongMap!2942)) )
))
(declare-datatypes ((Hashable!2856 0))(
  ( (HashableExt!2855 (__x!17003 Int)) )
))
(declare-datatypes ((MutableMap!2856 0))(
  ( (MutableMapExt!2855 (__x!17004 Int)) (HashMap!2856 (underlying!6080 Cell!11595) (hashF!4779 Hashable!2856) (_size!5936 (_ BitVec 32)) (defaultValue!3018 Int)) )
))
(declare-datatypes ((IArray!16159 0))(
  ( (IArray!16160 (innerList!8137 List!25029)) )
))
(declare-datatypes ((Conc!8077 0))(
  ( (Node!8077 (left!19202 Conc!8077) (right!19532 Conc!8077) (csize!16384 Int) (cheight!8288 Int)) (Leaf!11815 (xs!11019 IArray!16159) (csize!16385 Int)) (Empty!8077) )
))
(declare-datatypes ((BalanceConc!15916 0))(
  ( (BalanceConc!15917 (c!341636 Conc!8077)) )
))
(declare-datatypes ((CacheFurthestNullable!1070 0))(
  ( (CacheFurthestNullable!1071 (cache!3237 MutableMap!2856) (totalInput!3387 BalanceConc!15916)) )
))
(declare-fun thiss!29220 () CacheFurthestNullable!1070)

(get-info :version)

(assert (=> b!2157763 (= e!1380439 (not ((_ is HashMap!2856) (cache!3237 thiss!29220))))))

(declare-fun lt!801749 () tuple3!3766)

(declare-fun res!14508 () Int)

(declare-fun lambda!81434 () Int)

(declare-fun forall!5124 (List!25031 Int) Bool)

(declare-datatypes ((ListMap!717 0))(
  ( (ListMap!718 (toList!1122 List!25031)) )
))
(declare-fun map!5019 (MutableMap!2856) ListMap!717)

(declare-datatypes ((tuple2!24634 0))(
  ( (tuple2!24635 (_1!14671 Bool) (_2!14671 MutableMap!2856)) )
))
(declare-fun update!99 (MutableMap!2856 tuple3!3766 Int) tuple2!24634)

(assert (=> b!2157763 (forall!5124 (toList!1122 (map!5019 (_2!14671 (update!99 (cache!3237 thiss!29220) lt!801749 res!14508)))) lambda!81434)))

(declare-datatypes ((Unit!37981 0))(
  ( (Unit!37982) )
))
(declare-fun lt!801751 () Unit!37981)

(declare-fun lemmaUpdatePreservesForallPairs!3 (MutableMap!2856 tuple3!3766 Int Int) Unit!37981)

(assert (=> b!2157763 (= lt!801751 (lemmaUpdatePreservesForallPairs!3 (cache!3237 thiss!29220) lt!801749 res!14508 lambda!81434))))

(declare-fun from!970 () Int)

(declare-fun z!540 () (InoxSet Context!3022))

(declare-fun lastNullablePos!109 () Int)

(assert (=> b!2157763 (= lt!801749 (tuple3!3767 z!540 from!970 lastNullablePos!109))))

(declare-fun mapIsEmpty!13889 () Bool)

(declare-fun mapRes!13889 () Bool)

(assert (=> mapIsEmpty!13889 mapRes!13889))

(declare-fun b!2157765 () Bool)

(declare-fun e!1380434 () Bool)

(assert (=> b!2157765 (= e!1380434 e!1380439)))

(declare-fun res!929939 () Bool)

(assert (=> b!2157765 (=> (not res!929939) (not e!1380439))))

(declare-fun lt!801752 () Int)

(assert (=> b!2157765 (= res!929939 (and (<= from!970 lt!801752) (>= lastNullablePos!109 (- 1)) (< lastNullablePos!109 from!970)))))

(declare-fun size!19493 (BalanceConc!15916) Int)

(assert (=> b!2157765 (= lt!801752 (size!19493 (totalInput!3387 thiss!29220)))))

(declare-fun b!2157766 () Bool)

(declare-fun e!1380443 () Bool)

(declare-fun localTotalInput!17 () BalanceConc!15916)

(declare-fun tp!672396 () Bool)

(declare-fun inv!32999 (Conc!8077) Bool)

(assert (=> b!2157766 (= e!1380443 (and (inv!32999 (c!341636 localTotalInput!17)) tp!672396))))

(declare-fun b!2157767 () Bool)

(declare-fun e!1380437 () Bool)

(declare-fun tp!672395 () Bool)

(assert (=> b!2157767 (= e!1380437 (and (inv!32999 (c!341636 (totalInput!3387 thiss!29220))) tp!672395))))

(declare-fun b!2157768 () Bool)

(declare-fun res!929935 () Bool)

(assert (=> b!2157768 (=> (not res!929935) (not e!1380439))))

(declare-fun furthestNullablePosition!141 ((InoxSet Context!3022) Int BalanceConc!15916 Int Int) Int)

(assert (=> b!2157768 (= res!929935 (= res!14508 (furthestNullablePosition!141 z!540 from!970 (totalInput!3387 thiss!29220) lt!801752 lastNullablePos!109)))))

(declare-fun b!2157769 () Bool)

(declare-fun e!1380442 () Bool)

(declare-fun tp!672392 () Bool)

(assert (=> b!2157769 (= e!1380442 tp!672392)))

(declare-fun b!2157770 () Bool)

(declare-fun e!1380444 () Bool)

(declare-fun e!1380436 () Bool)

(assert (=> b!2157770 (= e!1380444 e!1380436)))

(declare-fun mapNonEmpty!13889 () Bool)

(declare-fun tp!672398 () Bool)

(declare-fun tp!672391 () Bool)

(assert (=> mapNonEmpty!13889 (= mapRes!13889 (and tp!672398 tp!672391))))

(declare-fun mapValue!13889 () List!25031)

(declare-fun mapRest!13889 () (Array (_ BitVec 32) List!25031))

(declare-fun mapKey!13889 () (_ BitVec 32))

(assert (=> mapNonEmpty!13889 (= (arr!4481 (_values!3222 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))) (store mapRest!13889 mapKey!13889 mapValue!13889))))

(declare-fun b!2157771 () Bool)

(declare-fun e!1380438 () Bool)

(assert (=> b!2157771 (= e!1380438 e!1380444)))

(declare-fun setIsEmpty!17806 () Bool)

(declare-fun setRes!17806 () Bool)

(assert (=> setIsEmpty!17806 setRes!17806))

(declare-fun e!1380441 () Bool)

(declare-fun tp!672394 () Bool)

(declare-fun tp!672397 () Bool)

(declare-fun array_inv!3210 (array!10045) Bool)

(declare-fun array_inv!3211 (array!10047) Bool)

(assert (=> b!2157772 (= e!1380436 (and tp!672388 tp!672397 tp!672394 (array_inv!3210 (_keys!3239 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))) (array_inv!3211 (_values!3222 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))) e!1380441))))

(declare-fun b!2157773 () Bool)

(declare-fun res!929938 () Bool)

(assert (=> b!2157773 (=> (not res!929938) (not e!1380439))))

(declare-fun e!1380446 () Bool)

(assert (=> b!2157773 (= res!929938 e!1380446)))

(declare-fun res!929936 () Bool)

(assert (=> b!2157773 (=> res!929936 e!1380446)))

(declare-fun nullableZipper!230 ((InoxSet Context!3022)) Bool)

(assert (=> b!2157773 (= res!929936 (not (nullableZipper!230 z!540)))))

(declare-fun b!2157774 () Bool)

(declare-fun tp!672393 () Bool)

(assert (=> b!2157774 (= e!1380441 (and tp!672393 mapRes!13889))))

(declare-fun condMapEmpty!13889 () Bool)

(declare-fun mapDefault!13889 () List!25031)

(assert (=> b!2157774 (= condMapEmpty!13889 (= (arr!4481 (_values!3222 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))) ((as const (Array (_ BitVec 32) List!25031)) mapDefault!13889)))))

(declare-fun b!2157764 () Bool)

(declare-fun res!929940 () Bool)

(assert (=> b!2157764 (=> (not res!929940) (not e!1380434))))

(declare-fun validCacheMapFurthestNullable!180 (MutableMap!2856 BalanceConc!15916) Bool)

(assert (=> b!2157764 (= res!929940 (validCacheMapFurthestNullable!180 (cache!3237 thiss!29220) (totalInput!3387 thiss!29220)))))

(declare-fun res!929937 () Bool)

(assert (=> start!209324 (=> (not res!929937) (not e!1380434))))

(assert (=> start!209324 (= res!929937 (= localTotalInput!17 (totalInput!3387 thiss!29220)))))

(assert (=> start!209324 e!1380434))

(declare-fun inv!33000 (BalanceConc!15916) Bool)

(assert (=> start!209324 (and (inv!33000 localTotalInput!17) e!1380443)))

(assert (=> start!209324 true))

(declare-fun condSetEmpty!17806 () Bool)

(assert (=> start!209324 (= condSetEmpty!17806 (= z!540 ((as const (Array Context!3022 Bool)) false)))))

(assert (=> start!209324 setRes!17806))

(declare-fun e!1380447 () Bool)

(declare-fun inv!33001 (CacheFurthestNullable!1070) Bool)

(assert (=> start!209324 (and (inv!33001 thiss!29220) e!1380447)))

(declare-fun setElem!17806 () Context!3022)

(declare-fun tp!672390 () Bool)

(declare-fun setNonEmpty!17806 () Bool)

(declare-fun inv!33002 (Context!3022) Bool)

(assert (=> setNonEmpty!17806 (= setRes!17806 (and tp!672390 (inv!33002 setElem!17806) e!1380442))))

(declare-fun setRest!17806 () (InoxSet Context!3022))

(assert (=> setNonEmpty!17806 (= z!540 ((_ map or) (store ((as const (Array Context!3022 Bool)) false) setElem!17806 true) setRest!17806))))

(declare-fun b!2157775 () Bool)

(declare-fun res!929934 () Bool)

(assert (=> b!2157775 (=> (not res!929934) (not e!1380434))))

(assert (=> b!2157775 (= res!929934 (>= from!970 0))))

(declare-fun b!2157776 () Bool)

(declare-fun e!1380440 () Bool)

(declare-fun lt!801750 () MutLongMap!2942)

(assert (=> b!2157776 (= e!1380440 (and e!1380438 ((_ is LongMap!2942) lt!801750)))))

(assert (=> b!2157776 (= lt!801750 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))

(declare-fun e!1380435 () Bool)

(declare-fun b!2157777 () Bool)

(assert (=> b!2157777 (= e!1380447 (and e!1380435 (inv!33000 (totalInput!3387 thiss!29220)) e!1380437))))

(assert (=> b!2157778 (= e!1380435 (and e!1380440 tp!672389))))

(declare-fun b!2157779 () Bool)

(assert (=> b!2157779 (= e!1380446 (= lastNullablePos!109 (- from!970 1)))))

(assert (= (and start!209324 res!929937) b!2157764))

(assert (= (and b!2157764 res!929940) b!2157775))

(assert (= (and b!2157775 res!929934) b!2157765))

(assert (= (and b!2157765 res!929939) b!2157773))

(assert (= (and b!2157773 (not res!929936)) b!2157779))

(assert (= (and b!2157773 res!929938) b!2157768))

(assert (= (and b!2157768 res!929935) b!2157763))

(assert (= start!209324 b!2157766))

(assert (= (and start!209324 condSetEmpty!17806) setIsEmpty!17806))

(assert (= (and start!209324 (not condSetEmpty!17806)) setNonEmpty!17806))

(assert (= setNonEmpty!17806 b!2157769))

(assert (= (and b!2157774 condMapEmpty!13889) mapIsEmpty!13889))

(assert (= (and b!2157774 (not condMapEmpty!13889)) mapNonEmpty!13889))

(assert (= b!2157772 b!2157774))

(assert (= b!2157770 b!2157772))

(assert (= b!2157771 b!2157770))

(assert (= (and b!2157776 ((_ is LongMap!2942) (v!29348 (underlying!6080 (cache!3237 thiss!29220))))) b!2157771))

(assert (= b!2157778 b!2157776))

(assert (= (and b!2157777 ((_ is HashMap!2856) (cache!3237 thiss!29220))) b!2157778))

(assert (= b!2157777 b!2157767))

(assert (= start!209324 b!2157777))

(declare-fun m!2597875 () Bool)

(assert (=> mapNonEmpty!13889 m!2597875))

(declare-fun m!2597877 () Bool)

(assert (=> b!2157766 m!2597877))

(declare-fun m!2597879 () Bool)

(assert (=> b!2157767 m!2597879))

(declare-fun m!2597881 () Bool)

(assert (=> b!2157773 m!2597881))

(declare-fun m!2597883 () Bool)

(assert (=> b!2157763 m!2597883))

(declare-fun m!2597885 () Bool)

(assert (=> b!2157763 m!2597885))

(declare-fun m!2597887 () Bool)

(assert (=> b!2157763 m!2597887))

(declare-fun m!2597889 () Bool)

(assert (=> b!2157763 m!2597889))

(declare-fun m!2597891 () Bool)

(assert (=> b!2157764 m!2597891))

(declare-fun m!2597893 () Bool)

(assert (=> b!2157777 m!2597893))

(declare-fun m!2597895 () Bool)

(assert (=> b!2157765 m!2597895))

(declare-fun m!2597897 () Bool)

(assert (=> b!2157768 m!2597897))

(declare-fun m!2597899 () Bool)

(assert (=> b!2157772 m!2597899))

(declare-fun m!2597901 () Bool)

(assert (=> b!2157772 m!2597901))

(declare-fun m!2597903 () Bool)

(assert (=> start!209324 m!2597903))

(declare-fun m!2597905 () Bool)

(assert (=> start!209324 m!2597905))

(declare-fun m!2597907 () Bool)

(assert (=> setNonEmpty!17806 m!2597907))

(check-sat (not b!2157765) (not b!2157774) (not b!2157769) (not b!2157763) b_and!173373 (not b_next!64463) (not b!2157772) (not b_next!64461) (not b!2157767) (not b!2157773) (not mapNonEmpty!13889) b_and!173375 (not b!2157768) (not b!2157766) (not b!2157777) (not b!2157764) (not setNonEmpty!17806) (not start!209324))
(check-sat b_and!173373 b_and!173375 (not b_next!64461) (not b_next!64463))
(get-model)

(declare-fun b!2157792 () Bool)

(declare-fun e!1380456 () Bool)

(declare-fun lostCauseZipper!142 ((InoxSet Context!3022)) Bool)

(assert (=> b!2157792 (= e!1380456 (lostCauseZipper!142 z!540))))

(declare-fun lt!801758 () (InoxSet Context!3022))

(declare-fun b!2157793 () Bool)

(declare-fun e!1380455 () Int)

(declare-fun e!1380454 () Int)

(assert (=> b!2157793 (= e!1380455 (furthestNullablePosition!141 lt!801758 (+ from!970 1) (totalInput!3387 thiss!29220) lt!801752 e!1380454))))

(declare-fun derivationStepZipper!109 ((InoxSet Context!3022) C!12028) (InoxSet Context!3022))

(declare-fun apply!6041 (BalanceConc!15916 Int) C!12028)

(assert (=> b!2157793 (= lt!801758 (derivationStepZipper!109 z!540 (apply!6041 (totalInput!3387 thiss!29220) from!970)))))

(declare-fun c!341641 () Bool)

(assert (=> b!2157793 (= c!341641 (nullableZipper!230 lt!801758))))

(declare-fun d!646580 () Bool)

(declare-fun lt!801757 () Int)

(assert (=> d!646580 (and (>= lt!801757 (- 1)) (< lt!801757 lt!801752) (>= lt!801757 lastNullablePos!109) (or (= lt!801757 lastNullablePos!109) (>= lt!801757 from!970)))))

(assert (=> d!646580 (= lt!801757 e!1380455)))

(declare-fun c!341642 () Bool)

(assert (=> d!646580 (= c!341642 e!1380456)))

(declare-fun res!929943 () Bool)

(assert (=> d!646580 (=> res!929943 e!1380456)))

(assert (=> d!646580 (= res!929943 (= from!970 lt!801752))))

(assert (=> d!646580 (and (>= from!970 0) (<= from!970 lt!801752))))

(assert (=> d!646580 (= (furthestNullablePosition!141 z!540 from!970 (totalInput!3387 thiss!29220) lt!801752 lastNullablePos!109) lt!801757)))

(declare-fun b!2157794 () Bool)

(assert (=> b!2157794 (= e!1380454 from!970)))

(declare-fun b!2157795 () Bool)

(assert (=> b!2157795 (= e!1380454 lastNullablePos!109)))

(declare-fun b!2157796 () Bool)

(assert (=> b!2157796 (= e!1380455 lastNullablePos!109)))

(assert (= (and d!646580 (not res!929943)) b!2157792))

(assert (= (and d!646580 c!341642) b!2157796))

(assert (= (and d!646580 (not c!341642)) b!2157793))

(assert (= (and b!2157793 c!341641) b!2157794))

(assert (= (and b!2157793 (not c!341641)) b!2157795))

(declare-fun m!2597909 () Bool)

(assert (=> b!2157792 m!2597909))

(declare-fun m!2597911 () Bool)

(assert (=> b!2157793 m!2597911))

(declare-fun m!2597913 () Bool)

(assert (=> b!2157793 m!2597913))

(assert (=> b!2157793 m!2597913))

(declare-fun m!2597915 () Bool)

(assert (=> b!2157793 m!2597915))

(declare-fun m!2597917 () Bool)

(assert (=> b!2157793 m!2597917))

(assert (=> b!2157768 d!646580))

(declare-fun d!646582 () Bool)

(assert (=> d!646582 (= (array_inv!3210 (_keys!3239 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))) (bvsge (size!19491 (_keys!3239 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2157772 d!646582))

(declare-fun d!646584 () Bool)

(assert (=> d!646584 (= (array_inv!3211 (_values!3222 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))) (bvsge (size!19492 (_values!3222 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2157772 d!646584))

(declare-fun d!646586 () Bool)

(declare-fun c!341645 () Bool)

(assert (=> d!646586 (= c!341645 ((_ is Node!8077) (c!341636 (totalInput!3387 thiss!29220))))))

(declare-fun e!1380461 () Bool)

(assert (=> d!646586 (= (inv!32999 (c!341636 (totalInput!3387 thiss!29220))) e!1380461)))

(declare-fun b!2157803 () Bool)

(declare-fun inv!33003 (Conc!8077) Bool)

(assert (=> b!2157803 (= e!1380461 (inv!33003 (c!341636 (totalInput!3387 thiss!29220))))))

(declare-fun b!2157804 () Bool)

(declare-fun e!1380462 () Bool)

(assert (=> b!2157804 (= e!1380461 e!1380462)))

(declare-fun res!929946 () Bool)

(assert (=> b!2157804 (= res!929946 (not ((_ is Leaf!11815) (c!341636 (totalInput!3387 thiss!29220)))))))

(assert (=> b!2157804 (=> res!929946 e!1380462)))

(declare-fun b!2157805 () Bool)

(declare-fun inv!33004 (Conc!8077) Bool)

(assert (=> b!2157805 (= e!1380462 (inv!33004 (c!341636 (totalInput!3387 thiss!29220))))))

(assert (= (and d!646586 c!341645) b!2157803))

(assert (= (and d!646586 (not c!341645)) b!2157804))

(assert (= (and b!2157804 (not res!929946)) b!2157805))

(declare-fun m!2597919 () Bool)

(assert (=> b!2157803 m!2597919))

(declare-fun m!2597921 () Bool)

(assert (=> b!2157805 m!2597921))

(assert (=> b!2157767 d!646586))

(declare-fun d!646588 () Bool)

(declare-fun res!929951 () Bool)

(declare-fun e!1380467 () Bool)

(assert (=> d!646588 (=> res!929951 e!1380467)))

(assert (=> d!646588 (= res!929951 ((_ is Nil!24947) (toList!1122 (map!5019 (_2!14671 (update!99 (cache!3237 thiss!29220) lt!801749 res!14508))))))))

(assert (=> d!646588 (= (forall!5124 (toList!1122 (map!5019 (_2!14671 (update!99 (cache!3237 thiss!29220) lt!801749 res!14508)))) lambda!81434) e!1380467)))

(declare-fun b!2157810 () Bool)

(declare-fun e!1380468 () Bool)

(assert (=> b!2157810 (= e!1380467 e!1380468)))

(declare-fun res!929952 () Bool)

(assert (=> b!2157810 (=> (not res!929952) (not e!1380468))))

(declare-fun dynLambda!11420 (Int tuple2!24632) Bool)

(assert (=> b!2157810 (= res!929952 (dynLambda!11420 lambda!81434 (h!30348 (toList!1122 (map!5019 (_2!14671 (update!99 (cache!3237 thiss!29220) lt!801749 res!14508)))))))))

(declare-fun b!2157811 () Bool)

(assert (=> b!2157811 (= e!1380468 (forall!5124 (t!197579 (toList!1122 (map!5019 (_2!14671 (update!99 (cache!3237 thiss!29220) lt!801749 res!14508))))) lambda!81434))))

(assert (= (and d!646588 (not res!929951)) b!2157810))

(assert (= (and b!2157810 res!929952) b!2157811))

(declare-fun b_lambda!71021 () Bool)

(assert (=> (not b_lambda!71021) (not b!2157810)))

(declare-fun m!2597923 () Bool)

(assert (=> b!2157810 m!2597923))

(declare-fun m!2597925 () Bool)

(assert (=> b!2157811 m!2597925))

(assert (=> b!2157763 d!646588))

(declare-fun d!646590 () Bool)

(declare-fun lt!801761 () ListMap!717)

(declare-fun invariantList!331 (List!25031) Bool)

(assert (=> d!646590 (invariantList!331 (toList!1122 lt!801761))))

(declare-datatypes ((tuple2!24636 0))(
  ( (tuple2!24637 (_1!14672 (_ BitVec 64)) (_2!14672 List!25031)) )
))
(declare-datatypes ((List!25032 0))(
  ( (Nil!24948) (Cons!24948 (h!30349 tuple2!24636) (t!197580 List!25032)) )
))
(declare-fun extractMap!83 (List!25032) ListMap!717)

(declare-datatypes ((ListLongMap!265 0))(
  ( (ListLongMap!266 (toList!1123 List!25032)) )
))
(declare-fun map!5020 (MutLongMap!2942) ListLongMap!265)

(assert (=> d!646590 (= lt!801761 (extractMap!83 (toList!1123 (map!5020 (v!29348 (underlying!6080 (_2!14671 (update!99 (cache!3237 thiss!29220) lt!801749 res!14508))))))))))

(declare-fun valid!2267 (MutableMap!2856) Bool)

(assert (=> d!646590 (valid!2267 (_2!14671 (update!99 (cache!3237 thiss!29220) lt!801749 res!14508)))))

(assert (=> d!646590 (= (map!5019 (_2!14671 (update!99 (cache!3237 thiss!29220) lt!801749 res!14508))) lt!801761)))

(declare-fun bs!445933 () Bool)

(assert (= bs!445933 d!646590))

(declare-fun m!2597927 () Bool)

(assert (=> bs!445933 m!2597927))

(declare-fun m!2597929 () Bool)

(assert (=> bs!445933 m!2597929))

(declare-fun m!2597931 () Bool)

(assert (=> bs!445933 m!2597931))

(declare-fun m!2597933 () Bool)

(assert (=> bs!445933 m!2597933))

(assert (=> b!2157763 d!646590))

(declare-fun bs!445934 () Bool)

(declare-fun b!2157853 () Bool)

(declare-fun b!2157867 () Bool)

(assert (= bs!445934 (and b!2157853 b!2157867)))

(declare-fun lambda!81444 () Int)

(declare-fun lambda!81443 () Int)

(assert (=> bs!445934 (= lambda!81444 lambda!81443)))

(declare-fun bm!129150 () Bool)

(declare-fun call!129180 () ListMap!717)

(declare-fun lt!801875 () tuple2!24634)

(assert (=> bm!129150 (= call!129180 (map!5019 (_2!14671 lt!801875)))))

(declare-fun b!2157850 () Bool)

(declare-fun e!1380494 () List!25031)

(declare-fun call!129175 () List!25031)

(assert (=> b!2157850 (= e!1380494 call!129175)))

(declare-fun b!2157851 () Bool)

(declare-fun call!129177 () ListMap!717)

(declare-fun lt!801925 () ListMap!717)

(assert (=> b!2157851 (= call!129177 lt!801925)))

(declare-fun lt!801920 () Unit!37981)

(declare-fun Unit!37983 () Unit!37981)

(assert (=> b!2157851 (= lt!801920 Unit!37983)))

(declare-fun call!129170 () Bool)

(assert (=> b!2157851 call!129170))

(declare-fun e!1380496 () Unit!37981)

(declare-fun Unit!37984 () Unit!37981)

(assert (=> b!2157851 (= e!1380496 Unit!37984)))

(declare-fun b!2157852 () Bool)

(declare-fun e!1380501 () Unit!37981)

(declare-fun lt!801915 () Unit!37981)

(assert (=> b!2157852 (= e!1380501 lt!801915)))

(declare-fun lt!801896 () Unit!37981)

(declare-fun call!129161 () Unit!37981)

(assert (=> b!2157852 (= lt!801896 call!129161)))

(declare-fun call!129157 () Bool)

(assert (=> b!2157852 call!129157))

(declare-fun lt!801926 () Unit!37981)

(assert (=> b!2157852 (= lt!801926 lt!801896)))

(declare-fun call!129184 () Unit!37981)

(assert (=> b!2157852 (= lt!801915 call!129184)))

(declare-fun call!129160 () Bool)

(assert (=> b!2157852 call!129160))

(declare-fun contains!4250 (ListMap!717 tuple3!3766) Bool)

(assert (=> b!2157853 (contains!4250 call!129177 lt!801749)))

(declare-fun lt!801909 () Unit!37981)

(declare-fun Unit!37985 () Unit!37981)

(assert (=> b!2157853 (= lt!801909 Unit!37985)))

(declare-fun call!129179 () ListMap!717)

(assert (=> b!2157853 (contains!4250 call!129179 lt!801749)))

(declare-fun lt!801910 () Unit!37981)

(declare-fun lt!801911 () Unit!37981)

(assert (=> b!2157853 (= lt!801910 lt!801911)))

(declare-fun call!129164 () Bool)

(declare-fun call!129167 () Bool)

(assert (=> b!2157853 (= call!129164 call!129167)))

(declare-fun call!129174 () Unit!37981)

(assert (=> b!2157853 (= lt!801911 call!129174)))

(declare-fun lt!801901 () ListMap!717)

(assert (=> b!2157853 (= lt!801901 call!129179)))

(declare-fun lt!801872 () ListMap!717)

(assert (=> b!2157853 (= lt!801872 call!129177)))

(declare-fun lt!801916 () Unit!37981)

(declare-fun Unit!37986 () Unit!37981)

(assert (=> b!2157853 (= lt!801916 Unit!37986)))

(declare-fun call!129158 () Bool)

(assert (=> b!2157853 call!129158))

(declare-fun lt!801914 () Unit!37981)

(declare-fun Unit!37987 () Unit!37981)

(assert (=> b!2157853 (= lt!801914 Unit!37987)))

(declare-fun call!129171 () Bool)

(assert (=> b!2157853 call!129171))

(declare-fun lt!801924 () Unit!37981)

(declare-fun Unit!37988 () Unit!37981)

(assert (=> b!2157853 (= lt!801924 Unit!37988)))

(declare-fun call!129156 () Bool)

(assert (=> b!2157853 call!129156))

(declare-fun lt!801906 () Unit!37981)

(declare-fun lt!801905 () Unit!37981)

(assert (=> b!2157853 (= lt!801906 lt!801905)))

(declare-fun call!129183 () Bool)

(assert (=> b!2157853 call!129183))

(declare-fun lt!801877 () List!25031)

(declare-fun lt!801889 () ListLongMap!265)

(declare-fun lt!801923 () (_ BitVec 64))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!3 (ListLongMap!265 (_ BitVec 64) List!25031 tuple3!3766 Int Hashable!2856) Unit!37981)

(assert (=> b!2157853 (= lt!801905 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!3 lt!801889 lt!801923 lt!801877 lt!801749 res!14508 (hashF!4779 (cache!3237 thiss!29220))))))

(declare-fun lt!801886 () Unit!37981)

(declare-fun lt!801918 () Unit!37981)

(assert (=> b!2157853 (= lt!801886 lt!801918)))

(declare-fun e!1380491 () Bool)

(assert (=> b!2157853 e!1380491))

(declare-fun res!929964 () Bool)

(assert (=> b!2157853 (=> (not res!929964) (not e!1380491))))

(declare-fun call!129173 () Bool)

(assert (=> b!2157853 (= res!929964 call!129173)))

(declare-fun lt!801874 () ListLongMap!265)

(declare-fun call!129182 () ListLongMap!265)

(assert (=> b!2157853 (= lt!801874 call!129182)))

(declare-fun call!129155 () Unit!37981)

(assert (=> b!2157853 (= lt!801918 call!129155)))

(declare-fun lt!801876 () Unit!37981)

(assert (=> b!2157853 (= lt!801876 e!1380501)))

(declare-fun c!341665 () Bool)

(declare-fun lt!801922 () List!25031)

(declare-fun isEmpty!14347 (List!25031) Bool)

(assert (=> b!2157853 (= c!341665 (not (isEmpty!14347 lt!801922)))))

(declare-fun Unit!37989 () Unit!37981)

(assert (=> b!2157853 (= e!1380496 Unit!37989)))

(declare-fun b!2157854 () Bool)

(declare-fun e!1380495 () Bool)

(declare-fun e!1380492 () Bool)

(assert (=> b!2157854 (= e!1380495 e!1380492)))

(declare-fun res!929963 () Bool)

(assert (=> b!2157854 (= res!929963 (contains!4250 call!129180 lt!801749))))

(assert (=> b!2157854 (=> (not res!929963) (not e!1380492))))

(declare-fun bm!129151 () Bool)

(declare-fun c!341664 () Bool)

(declare-fun lt!801882 () ListLongMap!265)

(declare-fun forall!5125 (List!25032 Int) Bool)

(assert (=> bm!129151 (= call!129173 (forall!5125 (ite c!341664 (toList!1123 lt!801882) (toList!1123 lt!801874)) (ite c!341664 lambda!81443 lambda!81444)))))

(declare-fun lt!801883 () (_ BitVec 64))

(declare-fun lt!801898 () List!25031)

(declare-fun bm!129152 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!22 (List!25032 (_ BitVec 64) List!25031 Hashable!2856) Unit!37981)

(assert (=> bm!129152 (= call!129161 (lemmaInLongMapAllKeySameHashThenForTuple!22 (toList!1123 lt!801889) (ite c!341664 lt!801883 lt!801923) (ite c!341664 lt!801898 lt!801922) (hashF!4779 (cache!3237 thiss!29220))))))

(declare-fun call!129178 () ListMap!717)

(declare-fun bm!129153 () Bool)

(declare-fun call!129163 () ListMap!717)

(declare-fun +!39 (ListMap!717 tuple2!24632) ListMap!717)

(assert (=> bm!129153 (= call!129163 (+!39 call!129178 (tuple2!24633 lt!801749 res!14508)))))

(declare-fun b!2157855 () Bool)

(declare-fun call!129168 () ListMap!717)

(assert (=> b!2157855 (= call!129168 lt!801925)))

(declare-fun lt!801890 () Unit!37981)

(declare-fun Unit!37990 () Unit!37981)

(assert (=> b!2157855 (= lt!801890 Unit!37990)))

(assert (=> b!2157855 call!129170))

(declare-fun e!1380498 () Unit!37981)

(declare-fun Unit!37991 () Unit!37981)

(assert (=> b!2157855 (= e!1380498 Unit!37991)))

(declare-fun lt!801904 () List!25031)

(declare-fun bm!129154 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!22 (ListLongMap!265 (_ BitVec 64) List!25031 Hashable!2856) Unit!37981)

(assert (=> bm!129154 (= call!129155 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!22 lt!801889 (ite c!341664 lt!801883 lt!801923) (ite c!341664 lt!801904 lt!801877) (hashF!4779 (cache!3237 thiss!29220))))))

(declare-fun b!2157856 () Bool)

(declare-fun call!129181 () Bool)

(assert (=> b!2157856 (= e!1380495 call!129181)))

(declare-fun bm!129155 () Bool)

(declare-fun call!129176 () ListMap!717)

(declare-fun eq!43 (ListMap!717 ListMap!717) Bool)

(assert (=> bm!129155 (= call!129183 (eq!43 call!129176 call!129163))))

(declare-fun bm!129156 () Bool)

(declare-fun call!129169 () ListLongMap!265)

(declare-fun allKeysSameHashInMap!87 (ListLongMap!265 Hashable!2856) Bool)

(assert (=> bm!129156 (= call!129171 (allKeysSameHashInMap!87 call!129169 (hashF!4779 (cache!3237 thiss!29220))))))

(declare-fun bm!129157 () Bool)

(declare-fun call!129185 () Bool)

(assert (=> bm!129157 (= call!129185 (allKeysSameHashInMap!87 (ite c!341664 lt!801882 lt!801874) (hashF!4779 (cache!3237 thiss!29220))))))

(declare-fun b!2157857 () Bool)

(assert (=> b!2157857 (= e!1380492 call!129181)))

(declare-fun lt!801894 () ListMap!717)

(declare-fun bm!129158 () Bool)

(assert (=> bm!129158 (= call!129164 (contains!4250 (ite c!341664 lt!801894 lt!801872) lt!801749))))

(declare-fun bm!129159 () Bool)

(assert (=> bm!129159 (= call!129178 (extractMap!83 (toList!1123 lt!801889)))))

(declare-fun e!1380493 () tuple2!24634)

(declare-datatypes ((tuple2!24638 0))(
  ( (tuple2!24639 (_1!14673 Bool) (_2!14673 MutLongMap!2942)) )
))
(declare-fun lt!801873 () tuple2!24638)

(declare-fun b!2157858 () Bool)

(declare-fun lt!801903 () MutableMap!2856)

(declare-datatypes ((tuple2!24640 0))(
  ( (tuple2!24641 (_1!14674 Unit!37981) (_2!14674 MutableMap!2856)) )
))
(declare-fun Unit!37992 () Unit!37981)

(declare-fun Unit!37993 () Unit!37981)

(assert (=> b!2157858 (= e!1380493 (tuple2!24635 (_1!14673 lt!801873) (_2!14674 (ite false (tuple2!24641 Unit!37992 (HashMap!2856 (Cell!11596 (_2!14673 lt!801873)) (hashF!4779 (cache!3237 thiss!29220)) (bvadd (_size!5936 (cache!3237 thiss!29220)) #b00000000000000000000000000000001) (defaultValue!3018 (cache!3237 thiss!29220)))) (tuple2!24641 Unit!37993 lt!801903)))))))

(declare-fun call!129165 () (_ BitVec 64))

(assert (=> b!2157858 (= lt!801883 call!129165)))

(assert (=> b!2157858 (= lt!801898 call!129175)))

(declare-fun call!129172 () List!25031)

(assert (=> b!2157858 (= lt!801904 (Cons!24947 (tuple2!24633 lt!801749 res!14508) call!129172))))

(declare-fun call!129166 () tuple2!24638)

(assert (=> b!2157858 (= lt!801873 call!129166)))

(assert (=> b!2157858 (= lt!801903 (HashMap!2856 (Cell!11596 (_2!14673 lt!801873)) (hashF!4779 (cache!3237 thiss!29220)) (_size!5936 (cache!3237 thiss!29220)) (defaultValue!3018 (cache!3237 thiss!29220))))))

(declare-fun c!341661 () Bool)

(assert (=> b!2157858 (= c!341661 (_1!14673 lt!801873))))

(declare-fun lt!801913 () Unit!37981)

(assert (=> b!2157858 (= lt!801913 e!1380498)))

(declare-fun b!2157859 () Bool)

(assert (=> b!2157859 (= e!1380491 call!129185)))

(declare-fun bm!129160 () Bool)

(declare-fun call!129162 () ListMap!717)

(assert (=> bm!129160 (= call!129177 call!129162)))

(declare-fun lt!801921 () MutableMap!2856)

(declare-fun bm!129161 () Bool)

(assert (=> bm!129161 (= call!129162 (map!5019 (ite c!341664 lt!801903 lt!801921)))))

(declare-fun bm!129162 () Bool)

(assert (=> bm!129162 (= call!129156 (forall!5125 (toList!1123 call!129169) (ite c!341664 lambda!81443 lambda!81444)))))

(declare-fun b!2157860 () Bool)

(assert (=> b!2157860 (= e!1380494 Nil!24947)))

(declare-fun bm!129163 () Bool)

(assert (=> bm!129163 (= call!129170 (valid!2267 (ite c!341664 lt!801903 lt!801921)))))

(declare-fun bm!129164 () Bool)

(declare-fun allKeysSameHash!26 (List!25031 (_ BitVec 64) Hashable!2856) Bool)

(assert (=> bm!129164 (= call!129160 (allKeysSameHash!26 call!129172 (ite c!341664 lt!801883 lt!801923) (hashF!4779 (cache!3237 thiss!29220))))))

(declare-fun bm!129165 () Bool)

(declare-fun +!40 (ListLongMap!265 tuple2!24636) ListLongMap!265)

(assert (=> bm!129165 (= call!129182 (+!40 lt!801889 (ite c!341664 (tuple2!24637 lt!801883 lt!801904) (tuple2!24637 lt!801923 lt!801877))))))

(declare-fun b!2157861 () Bool)

(declare-fun e!1380500 () Bool)

(assert (=> b!2157861 (= e!1380500 e!1380495)))

(declare-fun c!341663 () Bool)

(assert (=> b!2157861 (= c!341663 (_1!14671 lt!801875))))

(declare-fun bm!129166 () Bool)

(declare-fun e!1380499 () ListMap!717)

(assert (=> bm!129166 (= call!129181 (eq!43 call!129180 e!1380499))))

(declare-fun c!341666 () Bool)

(assert (=> bm!129166 (= c!341666 c!341663)))

(declare-fun lt!801908 () tuple2!24638)

(declare-fun b!2157862 () Bool)

(declare-fun Unit!37994 () Unit!37981)

(declare-fun Unit!37995 () Unit!37981)

(assert (=> b!2157862 (= e!1380493 (tuple2!24635 (_1!14673 lt!801908) (_2!14674 (ite (_1!14673 lt!801908) (tuple2!24641 Unit!37994 (HashMap!2856 (Cell!11596 (_2!14673 lt!801908)) (hashF!4779 (cache!3237 thiss!29220)) (bvadd (_size!5936 (cache!3237 thiss!29220)) #b00000000000000000000000000000001) (defaultValue!3018 (cache!3237 thiss!29220)))) (tuple2!24641 Unit!37995 lt!801921)))))))

(assert (=> b!2157862 (= lt!801923 call!129165)))

(declare-fun c!341660 () Bool)

(declare-fun contains!4251 (MutLongMap!2942 (_ BitVec 64)) Bool)

(assert (=> b!2157862 (= c!341660 (contains!4251 (v!29348 (underlying!6080 (cache!3237 thiss!29220))) lt!801923))))

(assert (=> b!2157862 (= lt!801922 e!1380494)))

(assert (=> b!2157862 (= lt!801877 (Cons!24947 (tuple2!24633 lt!801749 res!14508) lt!801922))))

(assert (=> b!2157862 (= lt!801908 call!129166)))

(assert (=> b!2157862 (= lt!801921 (HashMap!2856 (Cell!11596 (_2!14673 lt!801908)) (hashF!4779 (cache!3237 thiss!29220)) (_size!5936 (cache!3237 thiss!29220)) (defaultValue!3018 (cache!3237 thiss!29220))))))

(declare-fun c!341662 () Bool)

(assert (=> b!2157862 (= c!341662 (_1!14673 lt!801908))))

(declare-fun lt!801892 () Unit!37981)

(assert (=> b!2157862 (= lt!801892 e!1380496)))

(declare-fun bm!129167 () Bool)

(declare-fun call!129159 () ListMap!717)

(assert (=> bm!129167 (= call!129159 (map!5019 (cache!3237 thiss!29220)))))

(declare-fun bm!129168 () Bool)

(assert (=> bm!129168 (= call!129176 (extractMap!83 (toList!1123 call!129182)))))

(declare-fun b!2157863 () Bool)

(declare-fun res!929966 () Bool)

(assert (=> b!2157863 (=> (not res!929966) (not e!1380500))))

(assert (=> b!2157863 (= res!929966 (valid!2267 (_2!14671 lt!801875)))))

(declare-fun d!646592 () Bool)

(assert (=> d!646592 e!1380500))

(declare-fun res!929967 () Bool)

(assert (=> d!646592 (=> (not res!929967) (not e!1380500))))

(assert (=> d!646592 (= res!929967 ((_ is HashMap!2856) (_2!14671 lt!801875)))))

(declare-fun lt!801900 () tuple2!24634)

(assert (=> d!646592 (= lt!801875 (tuple2!24635 (_1!14671 lt!801900) (_2!14671 lt!801900)))))

(assert (=> d!646592 (= lt!801900 e!1380493)))

(declare-fun contains!4252 (MutableMap!2856 tuple3!3766) Bool)

(assert (=> d!646592 (= c!341664 (contains!4252 (cache!3237 thiss!29220) lt!801749))))

(assert (=> d!646592 (= lt!801889 (map!5020 (v!29348 (underlying!6080 (cache!3237 thiss!29220)))))))

(assert (=> d!646592 (= lt!801925 (map!5019 (cache!3237 thiss!29220)))))

(assert (=> d!646592 (valid!2267 (cache!3237 thiss!29220))))

(assert (=> d!646592 (= (update!99 (cache!3237 thiss!29220) lt!801749 res!14508) lt!801875)))

(declare-fun bm!129169 () Bool)

(declare-fun removePairForKey!22 (List!25031 tuple3!3766) List!25031)

(assert (=> bm!129169 (= call!129172 (removePairForKey!22 (ite c!341664 lt!801898 lt!801922) lt!801749))))

(declare-fun bm!129170 () Bool)

(assert (=> bm!129170 (= call!129157 (allKeysSameHash!26 (ite c!341664 lt!801898 lt!801922) (ite c!341664 lt!801883 lt!801923) (hashF!4779 (cache!3237 thiss!29220))))))

(declare-fun b!2157864 () Bool)

(assert (=> b!2157864 (= e!1380499 (+!39 call!129159 (tuple2!24633 lt!801749 res!14508)))))

(declare-fun bm!129171 () Bool)

(declare-fun lt!801884 () ListMap!717)

(assert (=> bm!129171 (= call!129167 (contains!4250 (ite c!341664 lt!801884 lt!801901) lt!801749))))

(declare-fun bm!129172 () Bool)

(assert (=> bm!129172 (= call!129158 (eq!43 (ite c!341664 call!129168 call!129177) call!129179))))

(declare-fun bm!129173 () Bool)

(assert (=> bm!129173 (= call!129179 (+!39 lt!801925 (tuple2!24633 lt!801749 res!14508)))))

(declare-fun bm!129174 () Bool)

(assert (=> bm!129174 (= call!129169 (map!5020 (ite c!341664 (_2!14673 lt!801873) (_2!14673 lt!801908))))))

(declare-fun bm!129175 () Bool)

(declare-fun update!100 (MutLongMap!2942 (_ BitVec 64) List!25031) tuple2!24638)

(assert (=> bm!129175 (= call!129166 (update!100 (v!29348 (underlying!6080 (cache!3237 thiss!29220))) (ite c!341664 lt!801883 lt!801923) (ite c!341664 lt!801904 lt!801877)))))

(declare-fun bm!129176 () Bool)

(declare-fun lemmaEquivalentThenSameContains!3 (ListMap!717 ListMap!717 tuple3!3766) Unit!37981)

(assert (=> bm!129176 (= call!129174 (lemmaEquivalentThenSameContains!3 (ite c!341664 lt!801884 lt!801872) (ite c!341664 lt!801894 lt!801901) lt!801749))))

(declare-fun b!2157865 () Bool)

(declare-fun e!1380497 () Bool)

(assert (=> b!2157865 (= e!1380497 call!129185)))

(declare-fun bm!129177 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!22 (List!25031 tuple3!3766 (_ BitVec 64) Hashable!2856) Unit!37981)

(assert (=> bm!129177 (= call!129184 (lemmaRemovePairForKeyPreservesHash!22 (ite c!341664 lt!801898 lt!801922) lt!801749 (ite c!341664 lt!801883 lt!801923) (hashF!4779 (cache!3237 thiss!29220))))))

(declare-fun b!2157866 () Bool)

(assert (=> b!2157866 (= e!1380499 call!129159)))

(declare-fun bm!129178 () Bool)

(assert (=> bm!129178 (= call!129168 call!129162)))

(assert (=> b!2157867 call!129158))

(declare-fun lt!801919 () Unit!37981)

(declare-fun Unit!37996 () Unit!37981)

(assert (=> b!2157867 (= lt!801919 Unit!37996)))

(assert (=> b!2157867 call!129171))

(declare-fun lt!801881 () Unit!37981)

(declare-fun Unit!37997 () Unit!37981)

(assert (=> b!2157867 (= lt!801881 Unit!37997)))

(assert (=> b!2157867 call!129156))

(declare-fun lt!801897 () Unit!37981)

(declare-fun lt!801912 () Unit!37981)

(assert (=> b!2157867 (= lt!801897 lt!801912)))

(assert (=> b!2157867 (= call!129167 call!129164)))

(assert (=> b!2157867 (= lt!801912 call!129174)))

(assert (=> b!2157867 (= lt!801894 call!129179)))

(assert (=> b!2157867 (= lt!801884 call!129168)))

(declare-fun lt!801907 () Unit!37981)

(declare-fun lt!801893 () Unit!37981)

(assert (=> b!2157867 (= lt!801907 lt!801893)))

(assert (=> b!2157867 call!129183))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!3 (ListLongMap!265 (_ BitVec 64) List!25031 tuple3!3766 Int Hashable!2856) Unit!37981)

(assert (=> b!2157867 (= lt!801893 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!3 lt!801889 lt!801883 lt!801904 lt!801749 res!14508 (hashF!4779 (cache!3237 thiss!29220))))))

(declare-fun lt!801891 () Unit!37981)

(declare-fun lt!801880 () Unit!37981)

(assert (=> b!2157867 (= lt!801891 lt!801880)))

(assert (=> b!2157867 e!1380497))

(declare-fun res!929965 () Bool)

(assert (=> b!2157867 (=> (not res!929965) (not e!1380497))))

(assert (=> b!2157867 (= res!929965 call!129173)))

(assert (=> b!2157867 (= lt!801882 call!129182)))

(assert (=> b!2157867 (= lt!801880 call!129155)))

(declare-fun lt!801879 () Unit!37981)

(declare-fun Unit!37998 () Unit!37981)

(assert (=> b!2157867 (= lt!801879 Unit!37998)))

(declare-fun noDuplicateKeys!28 (List!25031) Bool)

(assert (=> b!2157867 (noDuplicateKeys!28 lt!801904)))

(declare-fun lt!801878 () Unit!37981)

(declare-fun Unit!37999 () Unit!37981)

(assert (=> b!2157867 (= lt!801878 Unit!37999)))

(declare-fun containsKey!56 (List!25031 tuple3!3766) Bool)

(assert (=> b!2157867 (not (containsKey!56 call!129172 lt!801749))))

(declare-fun lt!801902 () Unit!37981)

(declare-fun Unit!38000 () Unit!37981)

(assert (=> b!2157867 (= lt!801902 Unit!38000)))

(declare-fun lt!801899 () Unit!37981)

(declare-fun lt!801885 () Unit!37981)

(assert (=> b!2157867 (= lt!801899 lt!801885)))

(assert (=> b!2157867 (noDuplicateKeys!28 call!129172)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!22 (List!25031 tuple3!3766) Unit!37981)

(assert (=> b!2157867 (= lt!801885 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!22 lt!801898 lt!801749))))

(declare-fun lt!801888 () Unit!37981)

(declare-fun lt!801895 () Unit!37981)

(assert (=> b!2157867 (= lt!801888 lt!801895)))

(assert (=> b!2157867 call!129160))

(assert (=> b!2157867 (= lt!801895 call!129184)))

(declare-fun lt!801887 () Unit!37981)

(declare-fun lt!801917 () Unit!37981)

(assert (=> b!2157867 (= lt!801887 lt!801917)))

(assert (=> b!2157867 call!129157))

(assert (=> b!2157867 (= lt!801917 call!129161)))

(declare-fun Unit!38001 () Unit!37981)

(assert (=> b!2157867 (= e!1380498 Unit!38001)))

(declare-fun bm!129179 () Bool)

(declare-fun apply!6042 (MutLongMap!2942 (_ BitVec 64)) List!25031)

(assert (=> bm!129179 (= call!129175 (apply!6042 (v!29348 (underlying!6080 (cache!3237 thiss!29220))) (ite c!341664 lt!801883 lt!801923)))))

(declare-fun b!2157868 () Bool)

(declare-fun Unit!38002 () Unit!37981)

(assert (=> b!2157868 (= e!1380501 Unit!38002)))

(declare-fun bm!129180 () Bool)

(declare-fun hash!555 (Hashable!2856 tuple3!3766) (_ BitVec 64))

(assert (=> bm!129180 (= call!129165 (hash!555 (hashF!4779 (cache!3237 thiss!29220)) lt!801749))))

(assert (= (and d!646592 c!341664) b!2157858))

(assert (= (and d!646592 (not c!341664)) b!2157862))

(assert (= (and b!2157858 c!341661) b!2157867))

(assert (= (and b!2157858 (not c!341661)) b!2157855))

(assert (= (and b!2157867 res!929965) b!2157865))

(assert (= (or b!2157867 b!2157855) bm!129178))

(assert (= (and b!2157862 c!341660) b!2157850))

(assert (= (and b!2157862 (not c!341660)) b!2157860))

(assert (= (and b!2157862 c!341662) b!2157853))

(assert (= (and b!2157862 (not c!341662)) b!2157851))

(assert (= (and b!2157853 c!341665) b!2157852))

(assert (= (and b!2157853 (not c!341665)) b!2157868))

(assert (= (and b!2157853 res!929964) b!2157859))

(assert (= (or b!2157853 b!2157851) bm!129160))

(assert (= (or b!2157867 b!2157852) bm!129177))

(assert (= (or b!2157867 b!2157853) bm!129174))

(assert (= (or b!2157867 b!2157853) bm!129176))

(assert (= (or b!2157855 b!2157851) bm!129163))

(assert (= (or b!2157867 b!2157853) bm!129158))

(assert (= (or b!2157865 b!2157859) bm!129157))

(assert (= (or b!2157867 b!2157852) bm!129152))

(assert (= (or b!2157858 b!2157850) bm!129179))

(assert (= (or b!2157867 b!2157853) bm!129151))

(assert (= (or b!2157867 b!2157853) bm!129165))

(assert (= (or b!2157867 b!2157853) bm!129154))

(assert (= (or b!2157867 b!2157853) bm!129171))

(assert (= (or b!2157858 b!2157862) bm!129175))

(assert (= (or bm!129178 bm!129160) bm!129161))

(assert (= (or b!2157867 b!2157853) bm!129173))

(assert (= (or b!2157867 b!2157853) bm!129159))

(assert (= (or b!2157867 b!2157852) bm!129170))

(assert (= (or b!2157858 b!2157867 b!2157852) bm!129169))

(assert (= (or b!2157858 b!2157862) bm!129180))

(assert (= (or b!2157867 b!2157853) bm!129162))

(assert (= (or b!2157867 b!2157852) bm!129164))

(assert (= (or b!2157867 b!2157853) bm!129153))

(assert (= (or b!2157867 b!2157853) bm!129172))

(assert (= (or b!2157867 b!2157853) bm!129156))

(assert (= (or b!2157867 b!2157853) bm!129168))

(assert (= (or b!2157867 b!2157853) bm!129155))

(assert (= (and d!646592 res!929967) b!2157863))

(assert (= (and b!2157863 res!929966) b!2157861))

(assert (= (and b!2157861 c!341663) b!2157854))

(assert (= (and b!2157861 (not c!341663)) b!2157856))

(assert (= (and b!2157854 res!929963) b!2157857))

(assert (= (or b!2157857 b!2157856) bm!129167))

(assert (= (or b!2157854 b!2157857 b!2157856) bm!129150))

(assert (= (or b!2157857 b!2157856) bm!129166))

(assert (= (and bm!129166 c!341666) b!2157864))

(assert (= (and bm!129166 (not c!341666)) b!2157866))

(declare-fun m!2597935 () Bool)

(assert (=> b!2157854 m!2597935))

(declare-fun m!2597937 () Bool)

(assert (=> bm!129169 m!2597937))

(declare-fun m!2597939 () Bool)

(assert (=> bm!129162 m!2597939))

(declare-fun m!2597941 () Bool)

(assert (=> bm!129179 m!2597941))

(declare-fun m!2597943 () Bool)

(assert (=> bm!129172 m!2597943))

(declare-fun m!2597945 () Bool)

(assert (=> b!2157862 m!2597945))

(declare-fun m!2597947 () Bool)

(assert (=> bm!129168 m!2597947))

(declare-fun m!2597949 () Bool)

(assert (=> bm!129157 m!2597949))

(declare-fun m!2597951 () Bool)

(assert (=> bm!129165 m!2597951))

(declare-fun m!2597953 () Bool)

(assert (=> bm!129159 m!2597953))

(declare-fun m!2597955 () Bool)

(assert (=> bm!129174 m!2597955))

(declare-fun m!2597957 () Bool)

(assert (=> bm!129176 m!2597957))

(declare-fun m!2597959 () Bool)

(assert (=> bm!129166 m!2597959))

(declare-fun m!2597961 () Bool)

(assert (=> bm!129173 m!2597961))

(declare-fun m!2597963 () Bool)

(assert (=> bm!129158 m!2597963))

(declare-fun m!2597965 () Bool)

(assert (=> bm!129163 m!2597965))

(declare-fun m!2597967 () Bool)

(assert (=> bm!129152 m!2597967))

(declare-fun m!2597969 () Bool)

(assert (=> b!2157864 m!2597969))

(declare-fun m!2597971 () Bool)

(assert (=> bm!129171 m!2597971))

(declare-fun m!2597973 () Bool)

(assert (=> b!2157853 m!2597973))

(declare-fun m!2597975 () Bool)

(assert (=> b!2157853 m!2597975))

(declare-fun m!2597977 () Bool)

(assert (=> b!2157853 m!2597977))

(declare-fun m!2597979 () Bool)

(assert (=> b!2157853 m!2597979))

(declare-fun m!2597981 () Bool)

(assert (=> bm!129177 m!2597981))

(declare-fun m!2597983 () Bool)

(assert (=> bm!129150 m!2597983))

(declare-fun m!2597985 () Bool)

(assert (=> bm!129153 m!2597985))

(declare-fun m!2597987 () Bool)

(assert (=> bm!129175 m!2597987))

(declare-fun m!2597989 () Bool)

(assert (=> b!2157867 m!2597989))

(declare-fun m!2597991 () Bool)

(assert (=> b!2157867 m!2597991))

(declare-fun m!2597993 () Bool)

(assert (=> b!2157867 m!2597993))

(declare-fun m!2597995 () Bool)

(assert (=> b!2157867 m!2597995))

(declare-fun m!2597997 () Bool)

(assert (=> b!2157867 m!2597997))

(declare-fun m!2597999 () Bool)

(assert (=> bm!129154 m!2597999))

(declare-fun m!2598001 () Bool)

(assert (=> bm!129170 m!2598001))

(declare-fun m!2598003 () Bool)

(assert (=> bm!129156 m!2598003))

(declare-fun m!2598005 () Bool)

(assert (=> b!2157863 m!2598005))

(declare-fun m!2598007 () Bool)

(assert (=> bm!129151 m!2598007))

(declare-fun m!2598009 () Bool)

(assert (=> bm!129161 m!2598009))

(declare-fun m!2598011 () Bool)

(assert (=> bm!129155 m!2598011))

(declare-fun m!2598013 () Bool)

(assert (=> d!646592 m!2598013))

(declare-fun m!2598015 () Bool)

(assert (=> d!646592 m!2598015))

(declare-fun m!2598017 () Bool)

(assert (=> d!646592 m!2598017))

(declare-fun m!2598019 () Bool)

(assert (=> d!646592 m!2598019))

(declare-fun m!2598021 () Bool)

(assert (=> bm!129164 m!2598021))

(assert (=> bm!129167 m!2598017))

(declare-fun m!2598023 () Bool)

(assert (=> bm!129180 m!2598023))

(assert (=> b!2157763 d!646592))

(declare-fun d!646594 () Bool)

(declare-fun e!1380504 () Bool)

(assert (=> d!646594 e!1380504))

(declare-fun res!929970 () Bool)

(assert (=> d!646594 (=> (not res!929970) (not e!1380504))))

(assert (=> d!646594 (= res!929970 (and (or (not ((_ is HashMap!2856) (cache!3237 thiss!29220))) ((_ is HashMap!2856) (cache!3237 thiss!29220))) ((_ is HashMap!2856) (cache!3237 thiss!29220))))))

(declare-fun lt!801944 () Unit!37981)

(declare-fun choose!12714 (MutableMap!2856 tuple3!3766 Int Int) Unit!37981)

(assert (=> d!646594 (= lt!801944 (choose!12714 (cache!3237 thiss!29220) lt!801749 res!14508 lambda!81434))))

(assert (=> d!646594 (valid!2267 (cache!3237 thiss!29220))))

(assert (=> d!646594 (= (lemmaUpdatePreservesForallPairs!3 (cache!3237 thiss!29220) lt!801749 res!14508 lambda!81434) lt!801944)))

(declare-fun b!2157871 () Bool)

(declare-fun lt!801941 () MutableMap!2856)

(assert (=> b!2157871 (= e!1380504 (forall!5124 (toList!1122 (map!5019 lt!801941)) lambda!81434))))

(assert (=> b!2157871 ((_ is HashMap!2856) lt!801941)))

(declare-fun lt!801943 () MutableMap!2856)

(assert (=> b!2157871 (= lt!801941 lt!801943)))

(assert (=> b!2157871 ((_ is HashMap!2856) lt!801943)))

(declare-fun lt!801939 () MutableMap!2856)

(assert (=> b!2157871 (= lt!801943 lt!801939)))

(assert (=> b!2157871 ((_ is HashMap!2856) lt!801939)))

(declare-fun lt!801942 () tuple2!24634)

(assert (=> b!2157871 (= lt!801939 (_2!14671 lt!801942))))

(assert (=> b!2157871 ((_ is HashMap!2856) (_2!14671 lt!801942))))

(declare-fun lt!801940 () tuple2!24634)

(assert (=> b!2157871 (= lt!801942 lt!801940)))

(assert (=> b!2157871 ((_ is HashMap!2856) (_2!14671 lt!801940))))

(assert (=> b!2157871 (= lt!801940 (update!99 (cache!3237 thiss!29220) lt!801749 res!14508))))

(assert (= (and d!646594 res!929970) b!2157871))

(declare-fun m!2598025 () Bool)

(assert (=> d!646594 m!2598025))

(assert (=> d!646594 m!2598019))

(declare-fun m!2598027 () Bool)

(assert (=> b!2157871 m!2598027))

(declare-fun m!2598029 () Bool)

(assert (=> b!2157871 m!2598029))

(assert (=> b!2157871 m!2597883))

(assert (=> b!2157763 d!646594))

(declare-fun d!646596 () Bool)

(declare-fun lambda!81447 () Int)

(declare-fun forall!5126 (List!25030 Int) Bool)

(assert (=> d!646596 (= (inv!33002 setElem!17806) (forall!5126 (exprs!2011 setElem!17806) lambda!81447))))

(declare-fun bs!445935 () Bool)

(assert (= bs!445935 d!646596))

(declare-fun m!2598031 () Bool)

(assert (=> bs!445935 m!2598031))

(assert (=> setNonEmpty!17806 d!646596))

(declare-fun d!646598 () Bool)

(declare-fun c!341667 () Bool)

(assert (=> d!646598 (= c!341667 ((_ is Node!8077) (c!341636 localTotalInput!17)))))

(declare-fun e!1380505 () Bool)

(assert (=> d!646598 (= (inv!32999 (c!341636 localTotalInput!17)) e!1380505)))

(declare-fun b!2157872 () Bool)

(assert (=> b!2157872 (= e!1380505 (inv!33003 (c!341636 localTotalInput!17)))))

(declare-fun b!2157873 () Bool)

(declare-fun e!1380506 () Bool)

(assert (=> b!2157873 (= e!1380505 e!1380506)))

(declare-fun res!929971 () Bool)

(assert (=> b!2157873 (= res!929971 (not ((_ is Leaf!11815) (c!341636 localTotalInput!17))))))

(assert (=> b!2157873 (=> res!929971 e!1380506)))

(declare-fun b!2157874 () Bool)

(assert (=> b!2157874 (= e!1380506 (inv!33004 (c!341636 localTotalInput!17)))))

(assert (= (and d!646598 c!341667) b!2157872))

(assert (= (and d!646598 (not c!341667)) b!2157873))

(assert (= (and b!2157873 (not res!929971)) b!2157874))

(declare-fun m!2598033 () Bool)

(assert (=> b!2157872 m!2598033))

(declare-fun m!2598035 () Bool)

(assert (=> b!2157874 m!2598035))

(assert (=> b!2157766 d!646598))

(declare-fun d!646600 () Bool)

(declare-fun lambda!81450 () Int)

(declare-fun exists!739 ((InoxSet Context!3022) Int) Bool)

(assert (=> d!646600 (= (nullableZipper!230 z!540) (exists!739 z!540 lambda!81450))))

(declare-fun bs!445936 () Bool)

(assert (= bs!445936 d!646600))

(declare-fun m!2598037 () Bool)

(assert (=> bs!445936 m!2598037))

(assert (=> b!2157773 d!646600))

(declare-fun d!646602 () Bool)

(declare-fun isBalanced!2507 (Conc!8077) Bool)

(assert (=> d!646602 (= (inv!33000 localTotalInput!17) (isBalanced!2507 (c!341636 localTotalInput!17)))))

(declare-fun bs!445937 () Bool)

(assert (= bs!445937 d!646602))

(declare-fun m!2598039 () Bool)

(assert (=> bs!445937 m!2598039))

(assert (=> start!209324 d!646602))

(declare-fun d!646604 () Bool)

(declare-fun res!929974 () Bool)

(declare-fun e!1380509 () Bool)

(assert (=> d!646604 (=> (not res!929974) (not e!1380509))))

(assert (=> d!646604 (= res!929974 ((_ is HashMap!2856) (cache!3237 thiss!29220)))))

(assert (=> d!646604 (= (inv!33001 thiss!29220) e!1380509)))

(declare-fun b!2157877 () Bool)

(assert (=> b!2157877 (= e!1380509 (validCacheMapFurthestNullable!180 (cache!3237 thiss!29220) (totalInput!3387 thiss!29220)))))

(assert (= (and d!646604 res!929974) b!2157877))

(assert (=> b!2157877 m!2597891))

(assert (=> start!209324 d!646604))

(declare-fun bs!445938 () Bool)

(declare-fun b!2157883 () Bool)

(assert (= bs!445938 (and b!2157883 b!2157763)))

(declare-fun lambda!81453 () Int)

(assert (=> bs!445938 (= (= (totalInput!3387 thiss!29220) localTotalInput!17) (= lambda!81453 lambda!81434))))

(assert (=> b!2157883 true))

(declare-fun d!646606 () Bool)

(declare-fun res!929979 () Bool)

(declare-fun e!1380512 () Bool)

(assert (=> d!646606 (=> (not res!929979) (not e!1380512))))

(assert (=> d!646606 (= res!929979 (valid!2267 (cache!3237 thiss!29220)))))

(assert (=> d!646606 (= (validCacheMapFurthestNullable!180 (cache!3237 thiss!29220) (totalInput!3387 thiss!29220)) e!1380512)))

(declare-fun b!2157882 () Bool)

(declare-fun res!929980 () Bool)

(assert (=> b!2157882 (=> (not res!929980) (not e!1380512))))

(assert (=> b!2157882 (= res!929980 (invariantList!331 (toList!1122 (map!5019 (cache!3237 thiss!29220)))))))

(assert (=> b!2157883 (= e!1380512 (forall!5124 (toList!1122 (map!5019 (cache!3237 thiss!29220))) lambda!81453))))

(assert (= (and d!646606 res!929979) b!2157882))

(assert (= (and b!2157882 res!929980) b!2157883))

(assert (=> d!646606 m!2598019))

(assert (=> b!2157882 m!2598017))

(declare-fun m!2598042 () Bool)

(assert (=> b!2157882 m!2598042))

(assert (=> b!2157883 m!2598017))

(declare-fun m!2598044 () Bool)

(assert (=> b!2157883 m!2598044))

(assert (=> b!2157764 d!646606))

(declare-fun d!646608 () Bool)

(assert (=> d!646608 (= (inv!33000 (totalInput!3387 thiss!29220)) (isBalanced!2507 (c!341636 (totalInput!3387 thiss!29220))))))

(declare-fun bs!445939 () Bool)

(assert (= bs!445939 d!646608))

(declare-fun m!2598046 () Bool)

(assert (=> bs!445939 m!2598046))

(assert (=> b!2157777 d!646608))

(declare-fun d!646610 () Bool)

(declare-fun lt!801947 () Int)

(declare-fun size!19494 (List!25029) Int)

(declare-fun list!9569 (BalanceConc!15916) List!25029)

(assert (=> d!646610 (= lt!801947 (size!19494 (list!9569 (totalInput!3387 thiss!29220))))))

(declare-fun size!19495 (Conc!8077) Int)

(assert (=> d!646610 (= lt!801947 (size!19495 (c!341636 (totalInput!3387 thiss!29220))))))

(assert (=> d!646610 (= (size!19493 (totalInput!3387 thiss!29220)) lt!801947)))

(declare-fun bs!445940 () Bool)

(assert (= bs!445940 d!646610))

(declare-fun m!2598048 () Bool)

(assert (=> bs!445940 m!2598048))

(assert (=> bs!445940 m!2598048))

(declare-fun m!2598050 () Bool)

(assert (=> bs!445940 m!2598050))

(declare-fun m!2598052 () Bool)

(assert (=> bs!445940 m!2598052))

(assert (=> b!2157765 d!646610))

(declare-fun b!2157888 () Bool)

(declare-fun e!1380515 () Bool)

(declare-fun tp!672403 () Bool)

(declare-fun tp!672404 () Bool)

(assert (=> b!2157888 (= e!1380515 (and tp!672403 tp!672404))))

(assert (=> b!2157769 (= tp!672392 e!1380515)))

(assert (= (and b!2157769 ((_ is Cons!24946) (exprs!2011 setElem!17806))) b!2157888))

(declare-fun b!2157895 () Bool)

(declare-fun e!1380521 () Bool)

(declare-fun setRes!17809 () Bool)

(declare-fun tp!672412 () Bool)

(assert (=> b!2157895 (= e!1380521 (and setRes!17809 tp!672412))))

(declare-fun condSetEmpty!17809 () Bool)

(assert (=> b!2157895 (= condSetEmpty!17809 (= (_1!14669 (_1!14670 (h!30348 (zeroValue!3200 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))))) ((as const (Array Context!3022 Bool)) false)))))

(declare-fun b!2157896 () Bool)

(declare-fun e!1380520 () Bool)

(declare-fun tp!672413 () Bool)

(assert (=> b!2157896 (= e!1380520 tp!672413)))

(assert (=> b!2157772 (= tp!672397 e!1380521)))

(declare-fun setElem!17809 () Context!3022)

(declare-fun tp!672411 () Bool)

(declare-fun setNonEmpty!17809 () Bool)

(assert (=> setNonEmpty!17809 (= setRes!17809 (and tp!672411 (inv!33002 setElem!17809) e!1380520))))

(declare-fun setRest!17809 () (InoxSet Context!3022))

(assert (=> setNonEmpty!17809 (= (_1!14669 (_1!14670 (h!30348 (zeroValue!3200 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3022 Bool)) false) setElem!17809 true) setRest!17809))))

(declare-fun setIsEmpty!17809 () Bool)

(assert (=> setIsEmpty!17809 setRes!17809))

(assert (= (and b!2157895 condSetEmpty!17809) setIsEmpty!17809))

(assert (= (and b!2157895 (not condSetEmpty!17809)) setNonEmpty!17809))

(assert (= setNonEmpty!17809 b!2157896))

(assert (= (and b!2157772 ((_ is Cons!24947) (zeroValue!3200 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220)))))))) b!2157895))

(declare-fun m!2598054 () Bool)

(assert (=> setNonEmpty!17809 m!2598054))

(declare-fun b!2157897 () Bool)

(declare-fun e!1380523 () Bool)

(declare-fun setRes!17810 () Bool)

(declare-fun tp!672415 () Bool)

(assert (=> b!2157897 (= e!1380523 (and setRes!17810 tp!672415))))

(declare-fun condSetEmpty!17810 () Bool)

(assert (=> b!2157897 (= condSetEmpty!17810 (= (_1!14669 (_1!14670 (h!30348 (minValue!3200 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))))) ((as const (Array Context!3022 Bool)) false)))))

(declare-fun b!2157898 () Bool)

(declare-fun e!1380522 () Bool)

(declare-fun tp!672416 () Bool)

(assert (=> b!2157898 (= e!1380522 tp!672416)))

(assert (=> b!2157772 (= tp!672394 e!1380523)))

(declare-fun tp!672414 () Bool)

(declare-fun setElem!17810 () Context!3022)

(declare-fun setNonEmpty!17810 () Bool)

(assert (=> setNonEmpty!17810 (= setRes!17810 (and tp!672414 (inv!33002 setElem!17810) e!1380522))))

(declare-fun setRest!17810 () (InoxSet Context!3022))

(assert (=> setNonEmpty!17810 (= (_1!14669 (_1!14670 (h!30348 (minValue!3200 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3022 Bool)) false) setElem!17810 true) setRest!17810))))

(declare-fun setIsEmpty!17810 () Bool)

(assert (=> setIsEmpty!17810 setRes!17810))

(assert (= (and b!2157897 condSetEmpty!17810) setIsEmpty!17810))

(assert (= (and b!2157897 (not condSetEmpty!17810)) setNonEmpty!17810))

(assert (= setNonEmpty!17810 b!2157898))

(assert (= (and b!2157772 ((_ is Cons!24947) (minValue!3200 (v!29347 (underlying!6079 (v!29348 (underlying!6080 (cache!3237 thiss!29220)))))))) b!2157897))

(declare-fun m!2598056 () Bool)

(assert (=> setNonEmpty!17810 m!2598056))

(declare-fun b!2157907 () Bool)

(declare-fun tp!672424 () Bool)

(declare-fun e!1380529 () Bool)

(declare-fun tp!672423 () Bool)

(assert (=> b!2157907 (= e!1380529 (and (inv!32999 (left!19202 (c!341636 (totalInput!3387 thiss!29220)))) tp!672424 (inv!32999 (right!19532 (c!341636 (totalInput!3387 thiss!29220)))) tp!672423))))

(declare-fun b!2157909 () Bool)

(declare-fun e!1380528 () Bool)

(declare-fun tp!672425 () Bool)

(assert (=> b!2157909 (= e!1380528 tp!672425)))

(declare-fun b!2157908 () Bool)

(declare-fun inv!33005 (IArray!16159) Bool)

(assert (=> b!2157908 (= e!1380529 (and (inv!33005 (xs!11019 (c!341636 (totalInput!3387 thiss!29220)))) e!1380528))))

(assert (=> b!2157767 (= tp!672395 (and (inv!32999 (c!341636 (totalInput!3387 thiss!29220))) e!1380529))))

(assert (= (and b!2157767 ((_ is Node!8077) (c!341636 (totalInput!3387 thiss!29220)))) b!2157907))

(assert (= b!2157908 b!2157909))

(assert (= (and b!2157767 ((_ is Leaf!11815) (c!341636 (totalInput!3387 thiss!29220)))) b!2157908))

(declare-fun m!2598058 () Bool)

(assert (=> b!2157907 m!2598058))

(declare-fun m!2598060 () Bool)

(assert (=> b!2157907 m!2598060))

(declare-fun m!2598062 () Bool)

(assert (=> b!2157908 m!2598062))

(assert (=> b!2157767 m!2597879))

(declare-fun b!2157920 () Bool)

(declare-fun e!1380539 () Bool)

(declare-fun setRes!17816 () Bool)

(declare-fun tp!672446 () Bool)

(assert (=> b!2157920 (= e!1380539 (and setRes!17816 tp!672446))))

(declare-fun condSetEmpty!17815 () Bool)

(declare-fun mapValue!13892 () List!25031)

(assert (=> b!2157920 (= condSetEmpty!17815 (= (_1!14669 (_1!14670 (h!30348 mapValue!13892))) ((as const (Array Context!3022 Bool)) false)))))

(declare-fun b!2157921 () Bool)

(declare-fun e!1380541 () Bool)

(declare-fun tp!672441 () Bool)

(assert (=> b!2157921 (= e!1380541 tp!672441)))

(declare-fun setRes!17815 () Bool)

(declare-fun tp!672443 () Bool)

(declare-fun e!1380538 () Bool)

(declare-fun setNonEmpty!17815 () Bool)

(declare-fun setElem!17815 () Context!3022)

(assert (=> setNonEmpty!17815 (= setRes!17815 (and tp!672443 (inv!33002 setElem!17815) e!1380538))))

(declare-fun mapDefault!13892 () List!25031)

(declare-fun setRest!17815 () (InoxSet Context!3022))

(assert (=> setNonEmpty!17815 (= (_1!14669 (_1!14670 (h!30348 mapDefault!13892))) ((_ map or) (store ((as const (Array Context!3022 Bool)) false) setElem!17815 true) setRest!17815))))

(declare-fun setIsEmpty!17815 () Bool)

(assert (=> setIsEmpty!17815 setRes!17816))

(declare-fun setElem!17816 () Context!3022)

(declare-fun setNonEmpty!17816 () Bool)

(declare-fun tp!672442 () Bool)

(assert (=> setNonEmpty!17816 (= setRes!17816 (and tp!672442 (inv!33002 setElem!17816) e!1380541))))

(declare-fun setRest!17816 () (InoxSet Context!3022))

(assert (=> setNonEmpty!17816 (= (_1!14669 (_1!14670 (h!30348 mapValue!13892))) ((_ map or) (store ((as const (Array Context!3022 Bool)) false) setElem!17816 true) setRest!17816))))

(declare-fun mapIsEmpty!13892 () Bool)

(declare-fun mapRes!13892 () Bool)

(assert (=> mapIsEmpty!13892 mapRes!13892))

(declare-fun b!2157922 () Bool)

(declare-fun tp!672440 () Bool)

(assert (=> b!2157922 (= e!1380538 tp!672440)))

(declare-fun condMapEmpty!13892 () Bool)

(assert (=> mapNonEmpty!13889 (= condMapEmpty!13892 (= mapRest!13889 ((as const (Array (_ BitVec 32) List!25031)) mapDefault!13892)))))

(declare-fun e!1380540 () Bool)

(assert (=> mapNonEmpty!13889 (= tp!672398 (and e!1380540 mapRes!13892))))

(declare-fun mapNonEmpty!13892 () Bool)

(declare-fun tp!672445 () Bool)

(assert (=> mapNonEmpty!13892 (= mapRes!13892 (and tp!672445 e!1380539))))

(declare-fun mapRest!13892 () (Array (_ BitVec 32) List!25031))

(declare-fun mapKey!13892 () (_ BitVec 32))

(assert (=> mapNonEmpty!13892 (= mapRest!13889 (store mapRest!13892 mapKey!13892 mapValue!13892))))

(declare-fun setIsEmpty!17816 () Bool)

(assert (=> setIsEmpty!17816 setRes!17815))

(declare-fun b!2157923 () Bool)

(declare-fun tp!672444 () Bool)

(assert (=> b!2157923 (= e!1380540 (and setRes!17815 tp!672444))))

(declare-fun condSetEmpty!17816 () Bool)

(assert (=> b!2157923 (= condSetEmpty!17816 (= (_1!14669 (_1!14670 (h!30348 mapDefault!13892))) ((as const (Array Context!3022 Bool)) false)))))

(assert (= (and mapNonEmpty!13889 condMapEmpty!13892) mapIsEmpty!13892))

(assert (= (and mapNonEmpty!13889 (not condMapEmpty!13892)) mapNonEmpty!13892))

(assert (= (and b!2157920 condSetEmpty!17815) setIsEmpty!17815))

(assert (= (and b!2157920 (not condSetEmpty!17815)) setNonEmpty!17816))

(assert (= setNonEmpty!17816 b!2157921))

(assert (= (and mapNonEmpty!13892 ((_ is Cons!24947) mapValue!13892)) b!2157920))

(assert (= (and b!2157923 condSetEmpty!17816) setIsEmpty!17816))

(assert (= (and b!2157923 (not condSetEmpty!17816)) setNonEmpty!17815))

(assert (= setNonEmpty!17815 b!2157922))

(assert (= (and mapNonEmpty!13889 ((_ is Cons!24947) mapDefault!13892)) b!2157923))

(declare-fun m!2598064 () Bool)

(assert (=> setNonEmpty!17815 m!2598064))

(declare-fun m!2598066 () Bool)

(assert (=> setNonEmpty!17816 m!2598066))

(declare-fun m!2598068 () Bool)

(assert (=> mapNonEmpty!13892 m!2598068))

(declare-fun b!2157924 () Bool)

(declare-fun e!1380543 () Bool)

(declare-fun setRes!17817 () Bool)

(declare-fun tp!672448 () Bool)

(assert (=> b!2157924 (= e!1380543 (and setRes!17817 tp!672448))))

(declare-fun condSetEmpty!17817 () Bool)

(assert (=> b!2157924 (= condSetEmpty!17817 (= (_1!14669 (_1!14670 (h!30348 mapValue!13889))) ((as const (Array Context!3022 Bool)) false)))))

(declare-fun b!2157925 () Bool)

(declare-fun e!1380542 () Bool)

(declare-fun tp!672449 () Bool)

(assert (=> b!2157925 (= e!1380542 tp!672449)))

(assert (=> mapNonEmpty!13889 (= tp!672391 e!1380543)))

(declare-fun tp!672447 () Bool)

(declare-fun setElem!17817 () Context!3022)

(declare-fun setNonEmpty!17817 () Bool)

(assert (=> setNonEmpty!17817 (= setRes!17817 (and tp!672447 (inv!33002 setElem!17817) e!1380542))))

(declare-fun setRest!17817 () (InoxSet Context!3022))

(assert (=> setNonEmpty!17817 (= (_1!14669 (_1!14670 (h!30348 mapValue!13889))) ((_ map or) (store ((as const (Array Context!3022 Bool)) false) setElem!17817 true) setRest!17817))))

(declare-fun setIsEmpty!17817 () Bool)

(assert (=> setIsEmpty!17817 setRes!17817))

(assert (= (and b!2157924 condSetEmpty!17817) setIsEmpty!17817))

(assert (= (and b!2157924 (not condSetEmpty!17817)) setNonEmpty!17817))

(assert (= setNonEmpty!17817 b!2157925))

(assert (= (and mapNonEmpty!13889 ((_ is Cons!24947) mapValue!13889)) b!2157924))

(declare-fun m!2598070 () Bool)

(assert (=> setNonEmpty!17817 m!2598070))

(declare-fun b!2157926 () Bool)

(declare-fun e!1380545 () Bool)

(declare-fun setRes!17818 () Bool)

(declare-fun tp!672451 () Bool)

(assert (=> b!2157926 (= e!1380545 (and setRes!17818 tp!672451))))

(declare-fun condSetEmpty!17818 () Bool)

(assert (=> b!2157926 (= condSetEmpty!17818 (= (_1!14669 (_1!14670 (h!30348 mapDefault!13889))) ((as const (Array Context!3022 Bool)) false)))))

(declare-fun b!2157927 () Bool)

(declare-fun e!1380544 () Bool)

(declare-fun tp!672452 () Bool)

(assert (=> b!2157927 (= e!1380544 tp!672452)))

(assert (=> b!2157774 (= tp!672393 e!1380545)))

(declare-fun tp!672450 () Bool)

(declare-fun setNonEmpty!17818 () Bool)

(declare-fun setElem!17818 () Context!3022)

(assert (=> setNonEmpty!17818 (= setRes!17818 (and tp!672450 (inv!33002 setElem!17818) e!1380544))))

(declare-fun setRest!17818 () (InoxSet Context!3022))

(assert (=> setNonEmpty!17818 (= (_1!14669 (_1!14670 (h!30348 mapDefault!13889))) ((_ map or) (store ((as const (Array Context!3022 Bool)) false) setElem!17818 true) setRest!17818))))

(declare-fun setIsEmpty!17818 () Bool)

(assert (=> setIsEmpty!17818 setRes!17818))

(assert (= (and b!2157926 condSetEmpty!17818) setIsEmpty!17818))

(assert (= (and b!2157926 (not condSetEmpty!17818)) setNonEmpty!17818))

(assert (= setNonEmpty!17818 b!2157927))

(assert (= (and b!2157774 ((_ is Cons!24947) mapDefault!13889)) b!2157926))

(declare-fun m!2598072 () Bool)

(assert (=> setNonEmpty!17818 m!2598072))

(declare-fun condSetEmpty!17821 () Bool)

(assert (=> setNonEmpty!17806 (= condSetEmpty!17821 (= setRest!17806 ((as const (Array Context!3022 Bool)) false)))))

(declare-fun setRes!17821 () Bool)

(assert (=> setNonEmpty!17806 (= tp!672390 setRes!17821)))

(declare-fun setIsEmpty!17821 () Bool)

(assert (=> setIsEmpty!17821 setRes!17821))

(declare-fun tp!672458 () Bool)

(declare-fun setNonEmpty!17821 () Bool)

(declare-fun setElem!17821 () Context!3022)

(declare-fun e!1380548 () Bool)

(assert (=> setNonEmpty!17821 (= setRes!17821 (and tp!672458 (inv!33002 setElem!17821) e!1380548))))

(declare-fun setRest!17821 () (InoxSet Context!3022))

(assert (=> setNonEmpty!17821 (= setRest!17806 ((_ map or) (store ((as const (Array Context!3022 Bool)) false) setElem!17821 true) setRest!17821))))

(declare-fun b!2157932 () Bool)

(declare-fun tp!672457 () Bool)

(assert (=> b!2157932 (= e!1380548 tp!672457)))

(assert (= (and setNonEmpty!17806 condSetEmpty!17821) setIsEmpty!17821))

(assert (= (and setNonEmpty!17806 (not condSetEmpty!17821)) setNonEmpty!17821))

(assert (= setNonEmpty!17821 b!2157932))

(declare-fun m!2598074 () Bool)

(assert (=> setNonEmpty!17821 m!2598074))

(declare-fun tp!672460 () Bool)

(declare-fun b!2157933 () Bool)

(declare-fun e!1380550 () Bool)

(declare-fun tp!672459 () Bool)

(assert (=> b!2157933 (= e!1380550 (and (inv!32999 (left!19202 (c!341636 localTotalInput!17))) tp!672460 (inv!32999 (right!19532 (c!341636 localTotalInput!17))) tp!672459))))

(declare-fun b!2157935 () Bool)

(declare-fun e!1380549 () Bool)

(declare-fun tp!672461 () Bool)

(assert (=> b!2157935 (= e!1380549 tp!672461)))

(declare-fun b!2157934 () Bool)

(assert (=> b!2157934 (= e!1380550 (and (inv!33005 (xs!11019 (c!341636 localTotalInput!17))) e!1380549))))

(assert (=> b!2157766 (= tp!672396 (and (inv!32999 (c!341636 localTotalInput!17)) e!1380550))))

(assert (= (and b!2157766 ((_ is Node!8077) (c!341636 localTotalInput!17))) b!2157933))

(assert (= b!2157934 b!2157935))

(assert (= (and b!2157766 ((_ is Leaf!11815) (c!341636 localTotalInput!17))) b!2157934))

(declare-fun m!2598076 () Bool)

(assert (=> b!2157933 m!2598076))

(declare-fun m!2598078 () Bool)

(assert (=> b!2157933 m!2598078))

(declare-fun m!2598080 () Bool)

(assert (=> b!2157934 m!2598080))

(assert (=> b!2157766 m!2597877))

(declare-fun b_lambda!71023 () Bool)

(assert (= b_lambda!71021 (or b!2157763 b_lambda!71023)))

(declare-fun bs!445941 () Bool)

(declare-fun d!646612 () Bool)

(assert (= bs!445941 (and d!646612 b!2157763)))

(declare-fun validCacheMapFurthestNullableBody!31 (tuple2!24632 BalanceConc!15916) Bool)

(assert (=> bs!445941 (= (dynLambda!11420 lambda!81434 (h!30348 (toList!1122 (map!5019 (_2!14671 (update!99 (cache!3237 thiss!29220) lt!801749 res!14508)))))) (validCacheMapFurthestNullableBody!31 (h!30348 (toList!1122 (map!5019 (_2!14671 (update!99 (cache!3237 thiss!29220) lt!801749 res!14508))))) localTotalInput!17))))

(declare-fun m!2598082 () Bool)

(assert (=> bs!445941 m!2598082))

(assert (=> b!2157810 d!646612))

(check-sat (not b!2157854) (not d!646602) (not bm!129166) (not bm!129150) (not b!2157935) (not setNonEmpty!17809) (not b!2157793) (not bm!129159) (not b!2157921) (not b!2157882) (not setNonEmpty!17817) (not b!2157923) (not d!646606) (not b!2157922) (not d!646594) (not b!2157924) (not bm!129174) (not bm!129173) (not b!2157895) (not b!2157934) (not bm!129151) (not bm!129154) (not b!2157920) (not bm!129161) (not b!2157767) (not bs!445941) (not bm!129169) (not setNonEmpty!17816) (not bm!129168) (not b!2157927) b_and!173375 (not b!2157897) (not bm!129163) (not b!2157888) (not b!2157871) (not bm!129172) (not bm!129162) (not b!2157766) (not bm!129179) (not d!646610) (not bm!129157) (not b!2157863) (not bm!129167) (not bm!129177) (not bm!129176) (not d!646600) (not setNonEmpty!17815) (not bm!129156) (not b!2157867) (not b!2157909) (not b!2157926) (not b!2157874) (not b!2157908) b_and!173373 (not b!2157864) (not bm!129153) (not b!2157907) (not b!2157853) (not b!2157898) (not b!2157805) (not b_next!64463) (not b!2157792) (not d!646596) (not mapNonEmpty!13892) (not b!2157896) (not bm!129152) (not bm!129175) (not bm!129165) (not setNonEmpty!17821) (not d!646608) (not d!646592) (not b!2157803) (not bm!129171) (not b!2157872) (not d!646590) (not b_next!64461) (not b!2157877) (not bm!129158) (not b!2157811) (not bm!129164) (not b!2157932) (not bm!129180) (not bm!129170) (not b!2157862) (not b_lambda!71023) (not b!2157933) (not b!2157925) (not b!2157883) (not setNonEmpty!17810) (not setNonEmpty!17818) (not bm!129155))
(check-sat b_and!173373 b_and!173375 (not b_next!64461) (not b_next!64463))
