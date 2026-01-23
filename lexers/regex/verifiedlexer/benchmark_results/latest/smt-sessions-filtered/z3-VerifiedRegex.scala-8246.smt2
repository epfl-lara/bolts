; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!427704 () Bool)

(assert start!427704)

(declare-fun b!4400155 () Bool)

(declare-fun e!2739787 () Bool)

(declare-fun e!2739785 () Bool)

(assert (=> b!4400155 (= e!2739787 (not e!2739785))))

(declare-fun res!1814837 () Bool)

(assert (=> b!4400155 (=> res!1814837 e!2739785)))

(declare-datatypes ((K!10635 0))(
  ( (K!10636 (val!16779 Int)) )
))
(declare-datatypes ((V!10881 0))(
  ( (V!10882 (val!16780 Int)) )
))
(declare-datatypes ((tuple2!48878 0))(
  ( (tuple2!48879 (_1!27733 K!10635) (_2!27733 V!10881)) )
))
(declare-datatypes ((List!49402 0))(
  ( (Nil!49278) (Cons!49278 (h!54903 tuple2!48878) (t!356336 List!49402)) )
))
(declare-fun newBucket!200 () List!49402)

(declare-fun lt!1605455 () List!49402)

(declare-fun key!3918 () K!10635)

(declare-fun lt!1605453 () tuple2!48878)

(declare-fun removePairForKey!595 (List!49402 K!10635) List!49402)

(assert (=> b!4400155 (= res!1814837 (not (= newBucket!200 (Cons!49278 lt!1605453 (removePairForKey!595 lt!1605455 key!3918)))))))

(declare-fun newValue!99 () V!10881)

(assert (=> b!4400155 (= lt!1605453 (tuple2!48879 key!3918 newValue!99))))

(declare-datatypes ((tuple2!48880 0))(
  ( (tuple2!48881 (_1!27734 (_ BitVec 64)) (_2!27734 List!49402)) )
))
(declare-fun lt!1605461 () tuple2!48880)

(declare-datatypes ((List!49403 0))(
  ( (Nil!49279) (Cons!49279 (h!54904 tuple2!48880) (t!356337 List!49403)) )
))
(declare-datatypes ((ListLongMap!1887 0))(
  ( (ListLongMap!1888 (toList!3237 List!49403)) )
))
(declare-fun lm!1707 () ListLongMap!1887)

(declare-fun lambda!148789 () Int)

(declare-datatypes ((Unit!78751 0))(
  ( (Unit!78752) )
))
(declare-fun lt!1605459 () Unit!78751)

(declare-fun forallContained!1999 (List!49403 Int tuple2!48880) Unit!78751)

(assert (=> b!4400155 (= lt!1605459 (forallContained!1999 (toList!3237 lm!1707) lambda!148789 lt!1605461))))

(declare-fun contains!11667 (List!49403 tuple2!48880) Bool)

(assert (=> b!4400155 (contains!11667 (toList!3237 lm!1707) lt!1605461)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4400155 (= lt!1605461 (tuple2!48881 hash!377 lt!1605455))))

(declare-fun lt!1605463 () Unit!78751)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!472 (List!49403 (_ BitVec 64) List!49402) Unit!78751)

(assert (=> b!4400155 (= lt!1605463 (lemmaGetValueByKeyImpliesContainsTuple!472 (toList!3237 lm!1707) hash!377 lt!1605455))))

(declare-fun apply!11479 (ListLongMap!1887 (_ BitVec 64)) List!49402)

(assert (=> b!4400155 (= lt!1605455 (apply!11479 lm!1707 hash!377))))

(declare-fun b!4400156 () Bool)

(declare-fun res!1814833 () Bool)

(declare-fun e!2739784 () Bool)

(assert (=> b!4400156 (=> res!1814833 e!2739784)))

(declare-fun lt!1605458 () ListLongMap!1887)

(declare-fun contains!11668 (ListLongMap!1887 (_ BitVec 64)) Bool)

(assert (=> b!4400156 (= res!1814833 (not (contains!11668 lt!1605458 hash!377)))))

(declare-fun b!4400157 () Bool)

(declare-fun e!2739786 () Bool)

(declare-fun tp!1331811 () Bool)

(assert (=> b!4400157 (= e!2739786 tp!1331811)))

(declare-fun b!4400158 () Bool)

(declare-fun res!1814834 () Bool)

(assert (=> b!4400158 (=> (not res!1814834) (not e!2739787))))

(declare-datatypes ((ListMap!2481 0))(
  ( (ListMap!2482 (toList!3238 List!49402)) )
))
(declare-fun contains!11669 (ListMap!2481 K!10635) Bool)

(declare-fun extractMap!686 (List!49403) ListMap!2481)

(assert (=> b!4400158 (= res!1814834 (contains!11669 (extractMap!686 (toList!3237 lm!1707)) key!3918))))

(declare-fun b!4400159 () Bool)

(declare-fun e!2739781 () Bool)

(declare-fun size!35872 (List!49403) Int)

(assert (=> b!4400159 (= e!2739781 (< (size!35872 (toList!3237 lt!1605458)) (size!35872 (toList!3237 lm!1707))))))

(declare-fun b!4400160 () Bool)

(declare-fun res!1814835 () Bool)

(assert (=> b!4400160 (=> res!1814835 e!2739784)))

(declare-datatypes ((Hashable!5019 0))(
  ( (HashableExt!5018 (__x!30722 Int)) )
))
(declare-fun hashF!1247 () Hashable!5019)

(declare-fun allKeysSameHashInMap!731 (ListLongMap!1887 Hashable!5019) Bool)

(assert (=> b!4400160 (= res!1814835 (not (allKeysSameHashInMap!731 lt!1605458 hashF!1247)))))

(declare-fun b!4400161 () Bool)

(declare-fun res!1814838 () Bool)

(assert (=> b!4400161 (=> (not res!1814838) (not e!2739787))))

(assert (=> b!4400161 (= res!1814838 (allKeysSameHashInMap!731 lm!1707 hashF!1247))))

(declare-fun b!4400162 () Bool)

(declare-fun e!2739782 () Bool)

(assert (=> b!4400162 (= e!2739782 e!2739784)))

(declare-fun res!1814839 () Bool)

(assert (=> b!4400162 (=> res!1814839 e!2739784)))

(declare-fun forall!9364 (List!49403 Int) Bool)

(assert (=> b!4400162 (= res!1814839 (not (forall!9364 (toList!3237 lt!1605458) lambda!148789)))))

(assert (=> b!4400162 (contains!11669 (extractMap!686 (toList!3237 lt!1605458)) key!3918)))

(declare-fun tail!7113 (ListLongMap!1887) ListLongMap!1887)

(assert (=> b!4400162 (= lt!1605458 (tail!7113 lm!1707))))

(declare-fun lt!1605466 () ListMap!2481)

(assert (=> b!4400162 (contains!11669 lt!1605466 key!3918)))

(declare-fun lt!1605454 () Unit!78751)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!86 (List!49402 K!10635 V!10881 ListMap!2481) Unit!78751)

(assert (=> b!4400162 (= lt!1605454 (lemmaAddToMapContainsAndNotInListThenInAcc!86 (_2!27734 (h!54904 (toList!3237 lm!1707))) key!3918 newValue!99 lt!1605466))))

(assert (=> b!4400162 (= lt!1605466 (extractMap!686 (t!356337 (toList!3237 lm!1707))))))

(declare-fun e!2739783 () Bool)

(assert (=> b!4400162 e!2739783))

(declare-fun res!1814831 () Bool)

(assert (=> b!4400162 (=> (not res!1814831) (not e!2739783))))

(declare-fun containsKey!933 (List!49402 K!10635) Bool)

(assert (=> b!4400162 (= res!1814831 (not (containsKey!933 (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707)))) key!3918)))))

(declare-fun lt!1605456 () Unit!78751)

(declare-fun lemmaNotSameHashThenCannotContainKey!98 (ListLongMap!1887 K!10635 (_ BitVec 64) Hashable!5019) Unit!78751)

(assert (=> b!4400162 (= lt!1605456 (lemmaNotSameHashThenCannotContainKey!98 lm!1707 key!3918 (_1!27734 (h!54904 (toList!3237 lm!1707))) hashF!1247))))

(declare-fun b!4400163 () Bool)

(declare-fun res!1814830 () Bool)

(assert (=> b!4400163 (=> (not res!1814830) (not e!2739787))))

(assert (=> b!4400163 (= res!1814830 (contains!11668 lm!1707 hash!377))))

(declare-fun b!4400164 () Bool)

(assert (=> b!4400164 (= e!2739783 (not (containsKey!933 (_2!27734 (h!54904 (toList!3237 lm!1707))) key!3918)))))

(declare-fun b!4400165 () Bool)

(assert (=> b!4400165 (= e!2739785 e!2739782)))

(declare-fun res!1814841 () Bool)

(assert (=> b!4400165 (=> res!1814841 e!2739782)))

(get-info :version)

(assert (=> b!4400165 (= res!1814841 (or (and ((_ is Cons!49279) (toList!3237 lm!1707)) (= (_1!27734 (h!54904 (toList!3237 lm!1707))) hash!377)) (not ((_ is Cons!49279) (toList!3237 lm!1707))) (= (_1!27734 (h!54904 (toList!3237 lm!1707))) hash!377)))))

(declare-fun e!2739788 () Bool)

(assert (=> b!4400165 e!2739788))

(declare-fun res!1814840 () Bool)

(assert (=> b!4400165 (=> (not res!1814840) (not e!2739788))))

(declare-fun lt!1605452 () ListLongMap!1887)

(assert (=> b!4400165 (= res!1814840 (forall!9364 (toList!3237 lt!1605452) lambda!148789))))

(declare-fun +!868 (ListLongMap!1887 tuple2!48880) ListLongMap!1887)

(assert (=> b!4400165 (= lt!1605452 (+!868 lm!1707 (tuple2!48881 hash!377 newBucket!200)))))

(declare-fun lt!1605457 () Unit!78751)

(declare-fun addValidProp!273 (ListLongMap!1887 Int (_ BitVec 64) List!49402) Unit!78751)

(assert (=> b!4400165 (= lt!1605457 (addValidProp!273 lm!1707 lambda!148789 hash!377 newBucket!200))))

(assert (=> b!4400165 (forall!9364 (toList!3237 lm!1707) lambda!148789)))

(declare-fun b!4400166 () Bool)

(assert (=> b!4400166 (= e!2739788 (forall!9364 (toList!3237 lt!1605452) lambda!148789))))

(declare-fun b!4400154 () Bool)

(declare-fun res!1814829 () Bool)

(assert (=> b!4400154 (=> res!1814829 e!2739785)))

(declare-fun noDuplicateKeys!627 (List!49402) Bool)

(assert (=> b!4400154 (= res!1814829 (not (noDuplicateKeys!627 newBucket!200)))))

(declare-fun res!1814842 () Bool)

(assert (=> start!427704 (=> (not res!1814842) (not e!2739787))))

(assert (=> start!427704 (= res!1814842 (forall!9364 (toList!3237 lm!1707) lambda!148789))))

(assert (=> start!427704 e!2739787))

(declare-fun e!2739780 () Bool)

(assert (=> start!427704 e!2739780))

(assert (=> start!427704 true))

(declare-fun inv!64821 (ListLongMap!1887) Bool)

(assert (=> start!427704 (and (inv!64821 lm!1707) e!2739786)))

(declare-fun tp_is_empty!25745 () Bool)

(assert (=> start!427704 tp_is_empty!25745))

(declare-fun tp_is_empty!25747 () Bool)

(assert (=> start!427704 tp_is_empty!25747))

(declare-fun b!4400167 () Bool)

(assert (=> b!4400167 (= e!2739784 e!2739781)))

(declare-fun res!1814836 () Bool)

(assert (=> b!4400167 (=> res!1814836 e!2739781)))

(declare-fun lt!1605465 () List!49402)

(assert (=> b!4400167 (= res!1814836 (not (= newBucket!200 (Cons!49278 lt!1605453 (removePairForKey!595 lt!1605465 key!3918)))))))

(declare-fun lt!1605462 () tuple2!48880)

(declare-fun lt!1605464 () Unit!78751)

(assert (=> b!4400167 (= lt!1605464 (forallContained!1999 (toList!3237 lt!1605458) lambda!148789 lt!1605462))))

(assert (=> b!4400167 (contains!11667 (toList!3237 lt!1605458) lt!1605462)))

(assert (=> b!4400167 (= lt!1605462 (tuple2!48881 hash!377 lt!1605465))))

(declare-fun lt!1605460 () Unit!78751)

(assert (=> b!4400167 (= lt!1605460 (lemmaGetValueByKeyImpliesContainsTuple!472 (toList!3237 lt!1605458) hash!377 lt!1605465))))

(assert (=> b!4400167 (= lt!1605465 (apply!11479 lt!1605458 hash!377))))

(declare-fun b!4400168 () Bool)

(declare-fun res!1814843 () Bool)

(assert (=> b!4400168 (=> (not res!1814843) (not e!2739787))))

(declare-fun allKeysSameHash!585 (List!49402 (_ BitVec 64) Hashable!5019) Bool)

(assert (=> b!4400168 (= res!1814843 (allKeysSameHash!585 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4400169 () Bool)

(declare-fun tp!1331812 () Bool)

(assert (=> b!4400169 (= e!2739780 (and tp_is_empty!25745 tp_is_empty!25747 tp!1331812))))

(declare-fun b!4400170 () Bool)

(declare-fun res!1814832 () Bool)

(assert (=> b!4400170 (=> (not res!1814832) (not e!2739787))))

(declare-fun hash!1867 (Hashable!5019 K!10635) (_ BitVec 64))

(assert (=> b!4400170 (= res!1814832 (= (hash!1867 hashF!1247 key!3918) hash!377))))

(assert (= (and start!427704 res!1814842) b!4400161))

(assert (= (and b!4400161 res!1814838) b!4400170))

(assert (= (and b!4400170 res!1814832) b!4400168))

(assert (= (and b!4400168 res!1814843) b!4400158))

(assert (= (and b!4400158 res!1814834) b!4400163))

(assert (= (and b!4400163 res!1814830) b!4400155))

(assert (= (and b!4400155 (not res!1814837)) b!4400154))

(assert (= (and b!4400154 (not res!1814829)) b!4400165))

(assert (= (and b!4400165 res!1814840) b!4400166))

(assert (= (and b!4400165 (not res!1814841)) b!4400162))

(assert (= (and b!4400162 res!1814831) b!4400164))

(assert (= (and b!4400162 (not res!1814839)) b!4400160))

(assert (= (and b!4400160 (not res!1814835)) b!4400156))

(assert (= (and b!4400156 (not res!1814833)) b!4400167))

(assert (= (and b!4400167 (not res!1814836)) b!4400159))

(assert (= (and start!427704 ((_ is Cons!49278) newBucket!200)) b!4400169))

(assert (= start!427704 b!4400157))

(declare-fun m!5062685 () Bool)

(assert (=> b!4400155 m!5062685))

(declare-fun m!5062687 () Bool)

(assert (=> b!4400155 m!5062687))

(declare-fun m!5062689 () Bool)

(assert (=> b!4400155 m!5062689))

(declare-fun m!5062691 () Bool)

(assert (=> b!4400155 m!5062691))

(declare-fun m!5062693 () Bool)

(assert (=> b!4400155 m!5062693))

(declare-fun m!5062695 () Bool)

(assert (=> b!4400156 m!5062695))

(declare-fun m!5062697 () Bool)

(assert (=> b!4400160 m!5062697))

(declare-fun m!5062699 () Bool)

(assert (=> b!4400170 m!5062699))

(declare-fun m!5062701 () Bool)

(assert (=> b!4400168 m!5062701))

(declare-fun m!5062703 () Bool)

(assert (=> b!4400163 m!5062703))

(declare-fun m!5062705 () Bool)

(assert (=> b!4400164 m!5062705))

(declare-fun m!5062707 () Bool)

(assert (=> b!4400166 m!5062707))

(declare-fun m!5062709 () Bool)

(assert (=> b!4400167 m!5062709))

(declare-fun m!5062711 () Bool)

(assert (=> b!4400167 m!5062711))

(declare-fun m!5062713 () Bool)

(assert (=> b!4400167 m!5062713))

(declare-fun m!5062715 () Bool)

(assert (=> b!4400167 m!5062715))

(declare-fun m!5062717 () Bool)

(assert (=> b!4400167 m!5062717))

(declare-fun m!5062719 () Bool)

(assert (=> b!4400158 m!5062719))

(assert (=> b!4400158 m!5062719))

(declare-fun m!5062721 () Bool)

(assert (=> b!4400158 m!5062721))

(declare-fun m!5062723 () Bool)

(assert (=> b!4400161 m!5062723))

(assert (=> b!4400165 m!5062707))

(declare-fun m!5062725 () Bool)

(assert (=> b!4400165 m!5062725))

(declare-fun m!5062727 () Bool)

(assert (=> b!4400165 m!5062727))

(declare-fun m!5062729 () Bool)

(assert (=> b!4400165 m!5062729))

(declare-fun m!5062731 () Bool)

(assert (=> b!4400154 m!5062731))

(assert (=> start!427704 m!5062729))

(declare-fun m!5062733 () Bool)

(assert (=> start!427704 m!5062733))

(declare-fun m!5062735 () Bool)

(assert (=> b!4400159 m!5062735))

(declare-fun m!5062737 () Bool)

(assert (=> b!4400159 m!5062737))

(declare-fun m!5062739 () Bool)

(assert (=> b!4400162 m!5062739))

(declare-fun m!5062741 () Bool)

(assert (=> b!4400162 m!5062741))

(declare-fun m!5062743 () Bool)

(assert (=> b!4400162 m!5062743))

(declare-fun m!5062745 () Bool)

(assert (=> b!4400162 m!5062745))

(declare-fun m!5062747 () Bool)

(assert (=> b!4400162 m!5062747))

(declare-fun m!5062749 () Bool)

(assert (=> b!4400162 m!5062749))

(declare-fun m!5062751 () Bool)

(assert (=> b!4400162 m!5062751))

(declare-fun m!5062753 () Bool)

(assert (=> b!4400162 m!5062753))

(assert (=> b!4400162 m!5062753))

(declare-fun m!5062755 () Bool)

(assert (=> b!4400162 m!5062755))

(assert (=> b!4400162 m!5062749))

(declare-fun m!5062757 () Bool)

(assert (=> b!4400162 m!5062757))

(check-sat (not b!4400170) (not b!4400164) (not b!4400167) (not b!4400162) (not start!427704) (not b!4400163) tp_is_empty!25747 (not b!4400154) (not b!4400157) (not b!4400166) (not b!4400161) (not b!4400158) tp_is_empty!25745 (not b!4400159) (not b!4400169) (not b!4400155) (not b!4400165) (not b!4400156) (not b!4400168) (not b!4400160))
(check-sat)
(get-model)

(declare-fun d!1326641 () Bool)

(declare-datatypes ((Option!10612 0))(
  ( (None!10611) (Some!10611 (v!43713 List!49402)) )
))
(declare-fun get!16042 (Option!10612) List!49402)

(declare-fun getValueByKey!598 (List!49403 (_ BitVec 64)) Option!10612)

(assert (=> d!1326641 (= (apply!11479 lt!1605458 hash!377) (get!16042 (getValueByKey!598 (toList!3237 lt!1605458) hash!377)))))

(declare-fun bs!728187 () Bool)

(assert (= bs!728187 d!1326641))

(declare-fun m!5062759 () Bool)

(assert (=> bs!728187 m!5062759))

(assert (=> bs!728187 m!5062759))

(declare-fun m!5062761 () Bool)

(assert (=> bs!728187 m!5062761))

(assert (=> b!4400167 d!1326641))

(declare-fun d!1326645 () Bool)

(declare-fun lt!1605473 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7868 (List!49403) (InoxSet tuple2!48880))

(assert (=> d!1326645 (= lt!1605473 (select (content!7868 (toList!3237 lt!1605458)) lt!1605462))))

(declare-fun e!2739803 () Bool)

(assert (=> d!1326645 (= lt!1605473 e!2739803)))

(declare-fun res!1814854 () Bool)

(assert (=> d!1326645 (=> (not res!1814854) (not e!2739803))))

(assert (=> d!1326645 (= res!1814854 ((_ is Cons!49279) (toList!3237 lt!1605458)))))

(assert (=> d!1326645 (= (contains!11667 (toList!3237 lt!1605458) lt!1605462) lt!1605473)))

(declare-fun b!4400189 () Bool)

(declare-fun e!2739804 () Bool)

(assert (=> b!4400189 (= e!2739803 e!2739804)))

(declare-fun res!1814855 () Bool)

(assert (=> b!4400189 (=> res!1814855 e!2739804)))

(assert (=> b!4400189 (= res!1814855 (= (h!54904 (toList!3237 lt!1605458)) lt!1605462))))

(declare-fun b!4400190 () Bool)

(assert (=> b!4400190 (= e!2739804 (contains!11667 (t!356337 (toList!3237 lt!1605458)) lt!1605462))))

(assert (= (and d!1326645 res!1814854) b!4400189))

(assert (= (and b!4400189 (not res!1814855)) b!4400190))

(declare-fun m!5062775 () Bool)

(assert (=> d!1326645 m!5062775))

(declare-fun m!5062777 () Bool)

(assert (=> d!1326645 m!5062777))

(declare-fun m!5062779 () Bool)

(assert (=> b!4400190 m!5062779))

(assert (=> b!4400167 d!1326645))

(declare-fun d!1326655 () Bool)

(assert (=> d!1326655 (contains!11667 (toList!3237 lt!1605458) (tuple2!48881 hash!377 lt!1605465))))

(declare-fun lt!1605484 () Unit!78751)

(declare-fun choose!27580 (List!49403 (_ BitVec 64) List!49402) Unit!78751)

(assert (=> d!1326655 (= lt!1605484 (choose!27580 (toList!3237 lt!1605458) hash!377 lt!1605465))))

(declare-fun e!2739818 () Bool)

(assert (=> d!1326655 e!2739818))

(declare-fun res!1814869 () Bool)

(assert (=> d!1326655 (=> (not res!1814869) (not e!2739818))))

(declare-fun isStrictlySorted!176 (List!49403) Bool)

(assert (=> d!1326655 (= res!1814869 (isStrictlySorted!176 (toList!3237 lt!1605458)))))

(assert (=> d!1326655 (= (lemmaGetValueByKeyImpliesContainsTuple!472 (toList!3237 lt!1605458) hash!377 lt!1605465) lt!1605484)))

(declare-fun b!4400204 () Bool)

(assert (=> b!4400204 (= e!2739818 (= (getValueByKey!598 (toList!3237 lt!1605458) hash!377) (Some!10611 lt!1605465)))))

(assert (= (and d!1326655 res!1814869) b!4400204))

(declare-fun m!5062797 () Bool)

(assert (=> d!1326655 m!5062797))

(declare-fun m!5062799 () Bool)

(assert (=> d!1326655 m!5062799))

(declare-fun m!5062801 () Bool)

(assert (=> d!1326655 m!5062801))

(assert (=> b!4400204 m!5062759))

(assert (=> b!4400167 d!1326655))

(declare-fun b!4400229 () Bool)

(declare-fun e!2739830 () List!49402)

(declare-fun e!2739831 () List!49402)

(assert (=> b!4400229 (= e!2739830 e!2739831)))

(declare-fun c!749104 () Bool)

(assert (=> b!4400229 (= c!749104 ((_ is Cons!49278) lt!1605465))))

(declare-fun d!1326663 () Bool)

(declare-fun lt!1605491 () List!49402)

(assert (=> d!1326663 (not (containsKey!933 lt!1605491 key!3918))))

(assert (=> d!1326663 (= lt!1605491 e!2739830)))

(declare-fun c!749103 () Bool)

(assert (=> d!1326663 (= c!749103 (and ((_ is Cons!49278) lt!1605465) (= (_1!27733 (h!54903 lt!1605465)) key!3918)))))

(assert (=> d!1326663 (noDuplicateKeys!627 lt!1605465)))

(assert (=> d!1326663 (= (removePairForKey!595 lt!1605465 key!3918) lt!1605491)))

(declare-fun b!4400230 () Bool)

(assert (=> b!4400230 (= e!2739831 (Cons!49278 (h!54903 lt!1605465) (removePairForKey!595 (t!356336 lt!1605465) key!3918)))))

(declare-fun b!4400231 () Bool)

(assert (=> b!4400231 (= e!2739831 Nil!49278)))

(declare-fun b!4400228 () Bool)

(assert (=> b!4400228 (= e!2739830 (t!356336 lt!1605465))))

(assert (= (and d!1326663 c!749103) b!4400228))

(assert (= (and d!1326663 (not c!749103)) b!4400229))

(assert (= (and b!4400229 c!749104) b!4400230))

(assert (= (and b!4400229 (not c!749104)) b!4400231))

(declare-fun m!5062815 () Bool)

(assert (=> d!1326663 m!5062815))

(declare-fun m!5062817 () Bool)

(assert (=> d!1326663 m!5062817))

(declare-fun m!5062819 () Bool)

(assert (=> b!4400230 m!5062819))

(assert (=> b!4400167 d!1326663))

(declare-fun d!1326673 () Bool)

(declare-fun dynLambda!20762 (Int tuple2!48880) Bool)

(assert (=> d!1326673 (dynLambda!20762 lambda!148789 lt!1605462)))

(declare-fun lt!1605506 () Unit!78751)

(declare-fun choose!27582 (List!49403 Int tuple2!48880) Unit!78751)

(assert (=> d!1326673 (= lt!1605506 (choose!27582 (toList!3237 lt!1605458) lambda!148789 lt!1605462))))

(declare-fun e!2739837 () Bool)

(assert (=> d!1326673 e!2739837))

(declare-fun res!1814879 () Bool)

(assert (=> d!1326673 (=> (not res!1814879) (not e!2739837))))

(assert (=> d!1326673 (= res!1814879 (forall!9364 (toList!3237 lt!1605458) lambda!148789))))

(assert (=> d!1326673 (= (forallContained!1999 (toList!3237 lt!1605458) lambda!148789 lt!1605462) lt!1605506)))

(declare-fun b!4400240 () Bool)

(assert (=> b!4400240 (= e!2739837 (contains!11667 (toList!3237 lt!1605458) lt!1605462))))

(assert (= (and d!1326673 res!1814879) b!4400240))

(declare-fun b_lambda!139709 () Bool)

(assert (=> (not b_lambda!139709) (not d!1326673)))

(declare-fun m!5062833 () Bool)

(assert (=> d!1326673 m!5062833))

(declare-fun m!5062835 () Bool)

(assert (=> d!1326673 m!5062835))

(assert (=> d!1326673 m!5062739))

(assert (=> b!4400240 m!5062713))

(assert (=> b!4400167 d!1326673))

(declare-fun d!1326677 () Bool)

(declare-fun e!2739859 () Bool)

(assert (=> d!1326677 e!2739859))

(declare-fun res!1814896 () Bool)

(assert (=> d!1326677 (=> res!1814896 e!2739859)))

(declare-fun lt!1605533 () Bool)

(assert (=> d!1326677 (= res!1814896 (not lt!1605533))))

(declare-fun lt!1605530 () Bool)

(assert (=> d!1326677 (= lt!1605533 lt!1605530)))

(declare-fun lt!1605532 () Unit!78751)

(declare-fun e!2739860 () Unit!78751)

(assert (=> d!1326677 (= lt!1605532 e!2739860)))

(declare-fun c!749110 () Bool)

(assert (=> d!1326677 (= c!749110 lt!1605530)))

(declare-fun containsKey!936 (List!49403 (_ BitVec 64)) Bool)

(assert (=> d!1326677 (= lt!1605530 (containsKey!936 (toList!3237 lt!1605458) hash!377))))

(assert (=> d!1326677 (= (contains!11668 lt!1605458 hash!377) lt!1605533)))

(declare-fun b!4400268 () Bool)

(declare-fun lt!1605531 () Unit!78751)

(assert (=> b!4400268 (= e!2739860 lt!1605531)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!508 (List!49403 (_ BitVec 64)) Unit!78751)

(assert (=> b!4400268 (= lt!1605531 (lemmaContainsKeyImpliesGetValueByKeyDefined!508 (toList!3237 lt!1605458) hash!377))))

(declare-fun isDefined!7905 (Option!10612) Bool)

(assert (=> b!4400268 (isDefined!7905 (getValueByKey!598 (toList!3237 lt!1605458) hash!377))))

(declare-fun b!4400269 () Bool)

(declare-fun Unit!78761 () Unit!78751)

(assert (=> b!4400269 (= e!2739860 Unit!78761)))

(declare-fun b!4400270 () Bool)

(assert (=> b!4400270 (= e!2739859 (isDefined!7905 (getValueByKey!598 (toList!3237 lt!1605458) hash!377)))))

(assert (= (and d!1326677 c!749110) b!4400268))

(assert (= (and d!1326677 (not c!749110)) b!4400269))

(assert (= (and d!1326677 (not res!1814896)) b!4400270))

(declare-fun m!5062855 () Bool)

(assert (=> d!1326677 m!5062855))

(declare-fun m!5062857 () Bool)

(assert (=> b!4400268 m!5062857))

(assert (=> b!4400268 m!5062759))

(assert (=> b!4400268 m!5062759))

(declare-fun m!5062859 () Bool)

(assert (=> b!4400268 m!5062859))

(assert (=> b!4400270 m!5062759))

(assert (=> b!4400270 m!5062759))

(assert (=> b!4400270 m!5062859))

(assert (=> b!4400156 d!1326677))

(declare-fun d!1326687 () Bool)

(assert (=> d!1326687 (= (apply!11479 lm!1707 hash!377) (get!16042 (getValueByKey!598 (toList!3237 lm!1707) hash!377)))))

(declare-fun bs!728195 () Bool)

(assert (= bs!728195 d!1326687))

(declare-fun m!5062861 () Bool)

(assert (=> bs!728195 m!5062861))

(assert (=> bs!728195 m!5062861))

(declare-fun m!5062863 () Bool)

(assert (=> bs!728195 m!5062863))

(assert (=> b!4400155 d!1326687))

(declare-fun d!1326689 () Bool)

(declare-fun lt!1605534 () Bool)

(assert (=> d!1326689 (= lt!1605534 (select (content!7868 (toList!3237 lm!1707)) lt!1605461))))

(declare-fun e!2739865 () Bool)

(assert (=> d!1326689 (= lt!1605534 e!2739865)))

(declare-fun res!1814901 () Bool)

(assert (=> d!1326689 (=> (not res!1814901) (not e!2739865))))

(assert (=> d!1326689 (= res!1814901 ((_ is Cons!49279) (toList!3237 lm!1707)))))

(assert (=> d!1326689 (= (contains!11667 (toList!3237 lm!1707) lt!1605461) lt!1605534)))

(declare-fun b!4400275 () Bool)

(declare-fun e!2739866 () Bool)

(assert (=> b!4400275 (= e!2739865 e!2739866)))

(declare-fun res!1814902 () Bool)

(assert (=> b!4400275 (=> res!1814902 e!2739866)))

(assert (=> b!4400275 (= res!1814902 (= (h!54904 (toList!3237 lm!1707)) lt!1605461))))

(declare-fun b!4400276 () Bool)

(assert (=> b!4400276 (= e!2739866 (contains!11667 (t!356337 (toList!3237 lm!1707)) lt!1605461))))

(assert (= (and d!1326689 res!1814901) b!4400275))

(assert (= (and b!4400275 (not res!1814902)) b!4400276))

(declare-fun m!5062869 () Bool)

(assert (=> d!1326689 m!5062869))

(declare-fun m!5062871 () Bool)

(assert (=> d!1326689 m!5062871))

(declare-fun m!5062873 () Bool)

(assert (=> b!4400276 m!5062873))

(assert (=> b!4400155 d!1326689))

(declare-fun b!4400280 () Bool)

(declare-fun e!2739869 () List!49402)

(declare-fun e!2739870 () List!49402)

(assert (=> b!4400280 (= e!2739869 e!2739870)))

(declare-fun c!749112 () Bool)

(assert (=> b!4400280 (= c!749112 ((_ is Cons!49278) lt!1605455))))

(declare-fun d!1326693 () Bool)

(declare-fun lt!1605535 () List!49402)

(assert (=> d!1326693 (not (containsKey!933 lt!1605535 key!3918))))

(assert (=> d!1326693 (= lt!1605535 e!2739869)))

(declare-fun c!749111 () Bool)

(assert (=> d!1326693 (= c!749111 (and ((_ is Cons!49278) lt!1605455) (= (_1!27733 (h!54903 lt!1605455)) key!3918)))))

(assert (=> d!1326693 (noDuplicateKeys!627 lt!1605455)))

(assert (=> d!1326693 (= (removePairForKey!595 lt!1605455 key!3918) lt!1605535)))

(declare-fun b!4400281 () Bool)

(assert (=> b!4400281 (= e!2739870 (Cons!49278 (h!54903 lt!1605455) (removePairForKey!595 (t!356336 lt!1605455) key!3918)))))

(declare-fun b!4400282 () Bool)

(assert (=> b!4400282 (= e!2739870 Nil!49278)))

(declare-fun b!4400279 () Bool)

(assert (=> b!4400279 (= e!2739869 (t!356336 lt!1605455))))

(assert (= (and d!1326693 c!749111) b!4400279))

(assert (= (and d!1326693 (not c!749111)) b!4400280))

(assert (= (and b!4400280 c!749112) b!4400281))

(assert (= (and b!4400280 (not c!749112)) b!4400282))

(declare-fun m!5062875 () Bool)

(assert (=> d!1326693 m!5062875))

(declare-fun m!5062877 () Bool)

(assert (=> d!1326693 m!5062877))

(declare-fun m!5062879 () Bool)

(assert (=> b!4400281 m!5062879))

(assert (=> b!4400155 d!1326693))

(declare-fun d!1326695 () Bool)

(assert (=> d!1326695 (dynLambda!20762 lambda!148789 lt!1605461)))

(declare-fun lt!1605536 () Unit!78751)

(assert (=> d!1326695 (= lt!1605536 (choose!27582 (toList!3237 lm!1707) lambda!148789 lt!1605461))))

(declare-fun e!2739871 () Bool)

(assert (=> d!1326695 e!2739871))

(declare-fun res!1814905 () Bool)

(assert (=> d!1326695 (=> (not res!1814905) (not e!2739871))))

(assert (=> d!1326695 (= res!1814905 (forall!9364 (toList!3237 lm!1707) lambda!148789))))

(assert (=> d!1326695 (= (forallContained!1999 (toList!3237 lm!1707) lambda!148789 lt!1605461) lt!1605536)))

(declare-fun b!4400283 () Bool)

(assert (=> b!4400283 (= e!2739871 (contains!11667 (toList!3237 lm!1707) lt!1605461))))

(assert (= (and d!1326695 res!1814905) b!4400283))

(declare-fun b_lambda!139715 () Bool)

(assert (=> (not b_lambda!139715) (not d!1326695)))

(declare-fun m!5062881 () Bool)

(assert (=> d!1326695 m!5062881))

(declare-fun m!5062883 () Bool)

(assert (=> d!1326695 m!5062883))

(assert (=> d!1326695 m!5062729))

(assert (=> b!4400283 m!5062691))

(assert (=> b!4400155 d!1326695))

(declare-fun d!1326697 () Bool)

(assert (=> d!1326697 (contains!11667 (toList!3237 lm!1707) (tuple2!48881 hash!377 lt!1605455))))

(declare-fun lt!1605537 () Unit!78751)

(assert (=> d!1326697 (= lt!1605537 (choose!27580 (toList!3237 lm!1707) hash!377 lt!1605455))))

(declare-fun e!2739872 () Bool)

(assert (=> d!1326697 e!2739872))

(declare-fun res!1814906 () Bool)

(assert (=> d!1326697 (=> (not res!1814906) (not e!2739872))))

(assert (=> d!1326697 (= res!1814906 (isStrictlySorted!176 (toList!3237 lm!1707)))))

(assert (=> d!1326697 (= (lemmaGetValueByKeyImpliesContainsTuple!472 (toList!3237 lm!1707) hash!377 lt!1605455) lt!1605537)))

(declare-fun b!4400284 () Bool)

(assert (=> b!4400284 (= e!2739872 (= (getValueByKey!598 (toList!3237 lm!1707) hash!377) (Some!10611 lt!1605455)))))

(assert (= (and d!1326697 res!1814906) b!4400284))

(declare-fun m!5062885 () Bool)

(assert (=> d!1326697 m!5062885))

(declare-fun m!5062887 () Bool)

(assert (=> d!1326697 m!5062887))

(declare-fun m!5062889 () Bool)

(assert (=> d!1326697 m!5062889))

(assert (=> b!4400284 m!5062861))

(assert (=> b!4400155 d!1326697))

(declare-fun d!1326699 () Bool)

(declare-fun res!1814911 () Bool)

(declare-fun e!2739877 () Bool)

(assert (=> d!1326699 (=> res!1814911 e!2739877)))

(assert (=> d!1326699 (= res!1814911 ((_ is Nil!49279) (toList!3237 lt!1605452)))))

(assert (=> d!1326699 (= (forall!9364 (toList!3237 lt!1605452) lambda!148789) e!2739877)))

(declare-fun b!4400289 () Bool)

(declare-fun e!2739878 () Bool)

(assert (=> b!4400289 (= e!2739877 e!2739878)))

(declare-fun res!1814912 () Bool)

(assert (=> b!4400289 (=> (not res!1814912) (not e!2739878))))

(assert (=> b!4400289 (= res!1814912 (dynLambda!20762 lambda!148789 (h!54904 (toList!3237 lt!1605452))))))

(declare-fun b!4400290 () Bool)

(assert (=> b!4400290 (= e!2739878 (forall!9364 (t!356337 (toList!3237 lt!1605452)) lambda!148789))))

(assert (= (and d!1326699 (not res!1814911)) b!4400289))

(assert (= (and b!4400289 res!1814912) b!4400290))

(declare-fun b_lambda!139717 () Bool)

(assert (=> (not b_lambda!139717) (not b!4400289)))

(declare-fun m!5062891 () Bool)

(assert (=> b!4400289 m!5062891))

(declare-fun m!5062893 () Bool)

(assert (=> b!4400290 m!5062893))

(assert (=> b!4400166 d!1326699))

(declare-fun d!1326701 () Bool)

(declare-fun res!1814917 () Bool)

(declare-fun e!2739883 () Bool)

(assert (=> d!1326701 (=> res!1814917 e!2739883)))

(assert (=> d!1326701 (= res!1814917 (and ((_ is Cons!49278) (_2!27734 (h!54904 (toList!3237 lm!1707)))) (= (_1!27733 (h!54903 (_2!27734 (h!54904 (toList!3237 lm!1707))))) key!3918)))))

(assert (=> d!1326701 (= (containsKey!933 (_2!27734 (h!54904 (toList!3237 lm!1707))) key!3918) e!2739883)))

(declare-fun b!4400297 () Bool)

(declare-fun e!2739884 () Bool)

(assert (=> b!4400297 (= e!2739883 e!2739884)))

(declare-fun res!1814918 () Bool)

(assert (=> b!4400297 (=> (not res!1814918) (not e!2739884))))

(assert (=> b!4400297 (= res!1814918 ((_ is Cons!49278) (_2!27734 (h!54904 (toList!3237 lm!1707)))))))

(declare-fun b!4400298 () Bool)

(assert (=> b!4400298 (= e!2739884 (containsKey!933 (t!356336 (_2!27734 (h!54904 (toList!3237 lm!1707)))) key!3918))))

(assert (= (and d!1326701 (not res!1814917)) b!4400297))

(assert (= (and b!4400297 res!1814918) b!4400298))

(declare-fun m!5062895 () Bool)

(assert (=> b!4400298 m!5062895))

(assert (=> b!4400164 d!1326701))

(assert (=> b!4400165 d!1326699))

(declare-fun d!1326703 () Bool)

(declare-fun e!2739913 () Bool)

(assert (=> d!1326703 e!2739913))

(declare-fun res!1814938 () Bool)

(assert (=> d!1326703 (=> (not res!1814938) (not e!2739913))))

(declare-fun lt!1605579 () ListLongMap!1887)

(assert (=> d!1326703 (= res!1814938 (contains!11668 lt!1605579 (_1!27734 (tuple2!48881 hash!377 newBucket!200))))))

(declare-fun lt!1605581 () List!49403)

(assert (=> d!1326703 (= lt!1605579 (ListLongMap!1888 lt!1605581))))

(declare-fun lt!1605580 () Unit!78751)

(declare-fun lt!1605578 () Unit!78751)

(assert (=> d!1326703 (= lt!1605580 lt!1605578)))

(assert (=> d!1326703 (= (getValueByKey!598 lt!1605581 (_1!27734 (tuple2!48881 hash!377 newBucket!200))) (Some!10611 (_2!27734 (tuple2!48881 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!345 (List!49403 (_ BitVec 64) List!49402) Unit!78751)

(assert (=> d!1326703 (= lt!1605578 (lemmaContainsTupThenGetReturnValue!345 lt!1605581 (_1!27734 (tuple2!48881 hash!377 newBucket!200)) (_2!27734 (tuple2!48881 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!204 (List!49403 (_ BitVec 64) List!49402) List!49403)

(assert (=> d!1326703 (= lt!1605581 (insertStrictlySorted!204 (toList!3237 lm!1707) (_1!27734 (tuple2!48881 hash!377 newBucket!200)) (_2!27734 (tuple2!48881 hash!377 newBucket!200))))))

(assert (=> d!1326703 (= (+!868 lm!1707 (tuple2!48881 hash!377 newBucket!200)) lt!1605579)))

(declare-fun b!4400339 () Bool)

(declare-fun res!1814937 () Bool)

(assert (=> b!4400339 (=> (not res!1814937) (not e!2739913))))

(assert (=> b!4400339 (= res!1814937 (= (getValueByKey!598 (toList!3237 lt!1605579) (_1!27734 (tuple2!48881 hash!377 newBucket!200))) (Some!10611 (_2!27734 (tuple2!48881 hash!377 newBucket!200)))))))

(declare-fun b!4400340 () Bool)

(assert (=> b!4400340 (= e!2739913 (contains!11667 (toList!3237 lt!1605579) (tuple2!48881 hash!377 newBucket!200)))))

(assert (= (and d!1326703 res!1814938) b!4400339))

(assert (= (and b!4400339 res!1814937) b!4400340))

(declare-fun m!5062943 () Bool)

(assert (=> d!1326703 m!5062943))

(declare-fun m!5062945 () Bool)

(assert (=> d!1326703 m!5062945))

(declare-fun m!5062947 () Bool)

(assert (=> d!1326703 m!5062947))

(declare-fun m!5062949 () Bool)

(assert (=> d!1326703 m!5062949))

(declare-fun m!5062951 () Bool)

(assert (=> b!4400339 m!5062951))

(declare-fun m!5062953 () Bool)

(assert (=> b!4400340 m!5062953))

(assert (=> b!4400165 d!1326703))

(declare-fun d!1326713 () Bool)

(assert (=> d!1326713 (forall!9364 (toList!3237 (+!868 lm!1707 (tuple2!48881 hash!377 newBucket!200))) lambda!148789)))

(declare-fun lt!1605593 () Unit!78751)

(declare-fun choose!27583 (ListLongMap!1887 Int (_ BitVec 64) List!49402) Unit!78751)

(assert (=> d!1326713 (= lt!1605593 (choose!27583 lm!1707 lambda!148789 hash!377 newBucket!200))))

(declare-fun e!2739922 () Bool)

(assert (=> d!1326713 e!2739922))

(declare-fun res!1814943 () Bool)

(assert (=> d!1326713 (=> (not res!1814943) (not e!2739922))))

(assert (=> d!1326713 (= res!1814943 (forall!9364 (toList!3237 lm!1707) lambda!148789))))

(assert (=> d!1326713 (= (addValidProp!273 lm!1707 lambda!148789 hash!377 newBucket!200) lt!1605593)))

(declare-fun b!4400354 () Bool)

(assert (=> b!4400354 (= e!2739922 (dynLambda!20762 lambda!148789 (tuple2!48881 hash!377 newBucket!200)))))

(assert (= (and d!1326713 res!1814943) b!4400354))

(declare-fun b_lambda!139721 () Bool)

(assert (=> (not b_lambda!139721) (not b!4400354)))

(assert (=> d!1326713 m!5062725))

(declare-fun m!5062981 () Bool)

(assert (=> d!1326713 m!5062981))

(declare-fun m!5062983 () Bool)

(assert (=> d!1326713 m!5062983))

(assert (=> d!1326713 m!5062729))

(declare-fun m!5062989 () Bool)

(assert (=> b!4400354 m!5062989))

(assert (=> b!4400165 d!1326713))

(declare-fun d!1326727 () Bool)

(declare-fun res!1814945 () Bool)

(declare-fun e!2739925 () Bool)

(assert (=> d!1326727 (=> res!1814945 e!2739925)))

(assert (=> d!1326727 (= res!1814945 ((_ is Nil!49279) (toList!3237 lm!1707)))))

(assert (=> d!1326727 (= (forall!9364 (toList!3237 lm!1707) lambda!148789) e!2739925)))

(declare-fun b!4400358 () Bool)

(declare-fun e!2739926 () Bool)

(assert (=> b!4400358 (= e!2739925 e!2739926)))

(declare-fun res!1814946 () Bool)

(assert (=> b!4400358 (=> (not res!1814946) (not e!2739926))))

(assert (=> b!4400358 (= res!1814946 (dynLambda!20762 lambda!148789 (h!54904 (toList!3237 lm!1707))))))

(declare-fun b!4400359 () Bool)

(assert (=> b!4400359 (= e!2739926 (forall!9364 (t!356337 (toList!3237 lm!1707)) lambda!148789))))

(assert (= (and d!1326727 (not res!1814945)) b!4400358))

(assert (= (and b!4400358 res!1814946) b!4400359))

(declare-fun b_lambda!139723 () Bool)

(assert (=> (not b_lambda!139723) (not b!4400358)))

(declare-fun m!5062999 () Bool)

(assert (=> b!4400358 m!5062999))

(declare-fun m!5063001 () Bool)

(assert (=> b!4400359 m!5063001))

(assert (=> b!4400165 d!1326727))

(declare-fun d!1326731 () Bool)

(declare-fun res!1814954 () Bool)

(declare-fun e!2739938 () Bool)

(assert (=> d!1326731 (=> res!1814954 e!2739938)))

(assert (=> d!1326731 (= res!1814954 (not ((_ is Cons!49278) newBucket!200)))))

(assert (=> d!1326731 (= (noDuplicateKeys!627 newBucket!200) e!2739938)))

(declare-fun b!4400379 () Bool)

(declare-fun e!2739939 () Bool)

(assert (=> b!4400379 (= e!2739938 e!2739939)))

(declare-fun res!1814955 () Bool)

(assert (=> b!4400379 (=> (not res!1814955) (not e!2739939))))

(assert (=> b!4400379 (= res!1814955 (not (containsKey!933 (t!356336 newBucket!200) (_1!27733 (h!54903 newBucket!200)))))))

(declare-fun b!4400380 () Bool)

(assert (=> b!4400380 (= e!2739939 (noDuplicateKeys!627 (t!356336 newBucket!200)))))

(assert (= (and d!1326731 (not res!1814954)) b!4400379))

(assert (= (and b!4400379 res!1814955) b!4400380))

(declare-fun m!5063031 () Bool)

(assert (=> b!4400379 m!5063031))

(declare-fun m!5063033 () Bool)

(assert (=> b!4400380 m!5063033))

(assert (=> b!4400154 d!1326731))

(declare-fun d!1326741 () Bool)

(declare-fun e!2739941 () Bool)

(assert (=> d!1326741 e!2739941))

(declare-fun res!1814957 () Bool)

(assert (=> d!1326741 (=> res!1814957 e!2739941)))

(declare-fun lt!1605612 () Bool)

(assert (=> d!1326741 (= res!1814957 (not lt!1605612))))

(declare-fun lt!1605609 () Bool)

(assert (=> d!1326741 (= lt!1605612 lt!1605609)))

(declare-fun lt!1605611 () Unit!78751)

(declare-fun e!2739942 () Unit!78751)

(assert (=> d!1326741 (= lt!1605611 e!2739942)))

(declare-fun c!749134 () Bool)

(assert (=> d!1326741 (= c!749134 lt!1605609)))

(assert (=> d!1326741 (= lt!1605609 (containsKey!936 (toList!3237 lm!1707) hash!377))))

(assert (=> d!1326741 (= (contains!11668 lm!1707 hash!377) lt!1605612)))

(declare-fun b!4400382 () Bool)

(declare-fun lt!1605610 () Unit!78751)

(assert (=> b!4400382 (= e!2739942 lt!1605610)))

(assert (=> b!4400382 (= lt!1605610 (lemmaContainsKeyImpliesGetValueByKeyDefined!508 (toList!3237 lm!1707) hash!377))))

(assert (=> b!4400382 (isDefined!7905 (getValueByKey!598 (toList!3237 lm!1707) hash!377))))

(declare-fun b!4400383 () Bool)

(declare-fun Unit!78762 () Unit!78751)

(assert (=> b!4400383 (= e!2739942 Unit!78762)))

(declare-fun b!4400384 () Bool)

(assert (=> b!4400384 (= e!2739941 (isDefined!7905 (getValueByKey!598 (toList!3237 lm!1707) hash!377)))))

(assert (= (and d!1326741 c!749134) b!4400382))

(assert (= (and d!1326741 (not c!749134)) b!4400383))

(assert (= (and d!1326741 (not res!1814957)) b!4400384))

(declare-fun m!5063045 () Bool)

(assert (=> d!1326741 m!5063045))

(declare-fun m!5063047 () Bool)

(assert (=> b!4400382 m!5063047))

(assert (=> b!4400382 m!5062861))

(assert (=> b!4400382 m!5062861))

(declare-fun m!5063053 () Bool)

(assert (=> b!4400382 m!5063053))

(assert (=> b!4400384 m!5062861))

(assert (=> b!4400384 m!5062861))

(assert (=> b!4400384 m!5063053))

(assert (=> b!4400163 d!1326741))

(assert (=> start!427704 d!1326727))

(declare-fun d!1326749 () Bool)

(assert (=> d!1326749 (= (inv!64821 lm!1707) (isStrictlySorted!176 (toList!3237 lm!1707)))))

(declare-fun bs!728221 () Bool)

(assert (= bs!728221 d!1326749))

(assert (=> bs!728221 m!5062889))

(assert (=> start!427704 d!1326749))

(declare-fun d!1326753 () Bool)

(assert (=> d!1326753 (= (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707)))) (get!16042 (getValueByKey!598 (toList!3237 lm!1707) (_1!27734 (h!54904 (toList!3237 lm!1707))))))))

(declare-fun bs!728222 () Bool)

(assert (= bs!728222 d!1326753))

(declare-fun m!5063065 () Bool)

(assert (=> bs!728222 m!5063065))

(assert (=> bs!728222 m!5063065))

(declare-fun m!5063067 () Bool)

(assert (=> bs!728222 m!5063067))

(assert (=> b!4400162 d!1326753))

(declare-fun bs!728229 () Bool)

(declare-fun d!1326757 () Bool)

(assert (= bs!728229 (and d!1326757 start!427704)))

(declare-fun lambda!148807 () Int)

(assert (=> bs!728229 (= lambda!148807 lambda!148789)))

(declare-fun lt!1605618 () ListMap!2481)

(declare-fun invariantList!750 (List!49402) Bool)

(assert (=> d!1326757 (invariantList!750 (toList!3238 lt!1605618))))

(declare-fun e!2739956 () ListMap!2481)

(assert (=> d!1326757 (= lt!1605618 e!2739956)))

(declare-fun c!749139 () Bool)

(assert (=> d!1326757 (= c!749139 ((_ is Cons!49279) (toList!3237 lt!1605458)))))

(assert (=> d!1326757 (forall!9364 (toList!3237 lt!1605458) lambda!148807)))

(assert (=> d!1326757 (= (extractMap!686 (toList!3237 lt!1605458)) lt!1605618)))

(declare-fun b!4400406 () Bool)

(declare-fun addToMapMapFromBucket!295 (List!49402 ListMap!2481) ListMap!2481)

(assert (=> b!4400406 (= e!2739956 (addToMapMapFromBucket!295 (_2!27734 (h!54904 (toList!3237 lt!1605458))) (extractMap!686 (t!356337 (toList!3237 lt!1605458)))))))

(declare-fun b!4400407 () Bool)

(assert (=> b!4400407 (= e!2739956 (ListMap!2482 Nil!49278))))

(assert (= (and d!1326757 c!749139) b!4400406))

(assert (= (and d!1326757 (not c!749139)) b!4400407))

(declare-fun m!5063079 () Bool)

(assert (=> d!1326757 m!5063079))

(declare-fun m!5063081 () Bool)

(assert (=> d!1326757 m!5063081))

(declare-fun m!5063083 () Bool)

(assert (=> b!4400406 m!5063083))

(assert (=> b!4400406 m!5063083))

(declare-fun m!5063085 () Bool)

(assert (=> b!4400406 m!5063085))

(assert (=> b!4400162 d!1326757))

(declare-fun d!1326769 () Bool)

(assert (=> d!1326769 (contains!11669 lt!1605466 key!3918)))

(declare-fun lt!1605621 () Unit!78751)

(declare-fun choose!27584 (List!49402 K!10635 V!10881 ListMap!2481) Unit!78751)

(assert (=> d!1326769 (= lt!1605621 (choose!27584 (_2!27734 (h!54904 (toList!3237 lm!1707))) key!3918 newValue!99 lt!1605466))))

(assert (=> d!1326769 (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 lm!1707))))))

(assert (=> d!1326769 (= (lemmaAddToMapContainsAndNotInListThenInAcc!86 (_2!27734 (h!54904 (toList!3237 lm!1707))) key!3918 newValue!99 lt!1605466) lt!1605621)))

(declare-fun bs!728230 () Bool)

(assert (= bs!728230 d!1326769))

(assert (=> bs!728230 m!5062745))

(declare-fun m!5063087 () Bool)

(assert (=> bs!728230 m!5063087))

(declare-fun m!5063089 () Bool)

(assert (=> bs!728230 m!5063089))

(assert (=> b!4400162 d!1326769))

(declare-fun d!1326771 () Bool)

(declare-fun tail!7115 (List!49403) List!49403)

(assert (=> d!1326771 (= (tail!7113 lm!1707) (ListLongMap!1888 (tail!7115 (toList!3237 lm!1707))))))

(declare-fun bs!728231 () Bool)

(assert (= bs!728231 d!1326771))

(declare-fun m!5063091 () Bool)

(assert (=> bs!728231 m!5063091))

(assert (=> b!4400162 d!1326771))

(declare-fun bs!728232 () Bool)

(declare-fun d!1326773 () Bool)

(assert (= bs!728232 (and d!1326773 start!427704)))

(declare-fun lambda!148808 () Int)

(assert (=> bs!728232 (= lambda!148808 lambda!148789)))

(declare-fun bs!728233 () Bool)

(assert (= bs!728233 (and d!1326773 d!1326757)))

(assert (=> bs!728233 (= lambda!148808 lambda!148807)))

(declare-fun lt!1605622 () ListMap!2481)

(assert (=> d!1326773 (invariantList!750 (toList!3238 lt!1605622))))

(declare-fun e!2739957 () ListMap!2481)

(assert (=> d!1326773 (= lt!1605622 e!2739957)))

(declare-fun c!749140 () Bool)

(assert (=> d!1326773 (= c!749140 ((_ is Cons!49279) (t!356337 (toList!3237 lm!1707))))))

(assert (=> d!1326773 (forall!9364 (t!356337 (toList!3237 lm!1707)) lambda!148808)))

(assert (=> d!1326773 (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) lt!1605622)))

(declare-fun b!4400408 () Bool)

(assert (=> b!4400408 (= e!2739957 (addToMapMapFromBucket!295 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707)))) (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))))))

(declare-fun b!4400409 () Bool)

(assert (=> b!4400409 (= e!2739957 (ListMap!2482 Nil!49278))))

(assert (= (and d!1326773 c!749140) b!4400408))

(assert (= (and d!1326773 (not c!749140)) b!4400409))

(declare-fun m!5063093 () Bool)

(assert (=> d!1326773 m!5063093))

(declare-fun m!5063095 () Bool)

(assert (=> d!1326773 m!5063095))

(declare-fun m!5063097 () Bool)

(assert (=> b!4400408 m!5063097))

(assert (=> b!4400408 m!5063097))

(declare-fun m!5063099 () Bool)

(assert (=> b!4400408 m!5063099))

(assert (=> b!4400162 d!1326773))

(declare-fun bs!728234 () Bool)

(declare-fun d!1326775 () Bool)

(assert (= bs!728234 (and d!1326775 start!427704)))

(declare-fun lambda!148811 () Int)

(assert (=> bs!728234 (= lambda!148811 lambda!148789)))

(declare-fun bs!728235 () Bool)

(assert (= bs!728235 (and d!1326775 d!1326757)))

(assert (=> bs!728235 (= lambda!148811 lambda!148807)))

(declare-fun bs!728236 () Bool)

(assert (= bs!728236 (and d!1326775 d!1326773)))

(assert (=> bs!728236 (= lambda!148811 lambda!148808)))

(assert (=> d!1326775 (not (containsKey!933 (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707)))) key!3918))))

(declare-fun lt!1605625 () Unit!78751)

(declare-fun choose!27585 (ListLongMap!1887 K!10635 (_ BitVec 64) Hashable!5019) Unit!78751)

(assert (=> d!1326775 (= lt!1605625 (choose!27585 lm!1707 key!3918 (_1!27734 (h!54904 (toList!3237 lm!1707))) hashF!1247))))

(assert (=> d!1326775 (forall!9364 (toList!3237 lm!1707) lambda!148811)))

(assert (=> d!1326775 (= (lemmaNotSameHashThenCannotContainKey!98 lm!1707 key!3918 (_1!27734 (h!54904 (toList!3237 lm!1707))) hashF!1247) lt!1605625)))

(declare-fun bs!728237 () Bool)

(assert (= bs!728237 d!1326775))

(assert (=> bs!728237 m!5062753))

(assert (=> bs!728237 m!5062753))

(assert (=> bs!728237 m!5062755))

(declare-fun m!5063101 () Bool)

(assert (=> bs!728237 m!5063101))

(declare-fun m!5063103 () Bool)

(assert (=> bs!728237 m!5063103))

(assert (=> b!4400162 d!1326775))

(declare-fun b!4400428 () Bool)

(declare-fun e!2739974 () Bool)

(declare-datatypes ((List!49405 0))(
  ( (Nil!49281) (Cons!49281 (h!54908 K!10635) (t!356339 List!49405)) )
))
(declare-fun contains!11671 (List!49405 K!10635) Bool)

(declare-fun keys!16747 (ListMap!2481) List!49405)

(assert (=> b!4400428 (= e!2739974 (not (contains!11671 (keys!16747 lt!1605466) key!3918)))))

(declare-fun b!4400429 () Bool)

(declare-fun e!2739972 () List!49405)

(declare-fun getKeysList!197 (List!49402) List!49405)

(assert (=> b!4400429 (= e!2739972 (getKeysList!197 (toList!3238 lt!1605466)))))

(declare-fun b!4400430 () Bool)

(declare-fun e!2739973 () Bool)

(assert (=> b!4400430 (= e!2739973 (contains!11671 (keys!16747 lt!1605466) key!3918))))

(declare-fun b!4400431 () Bool)

(declare-fun e!2739971 () Unit!78751)

(declare-fun lt!1605642 () Unit!78751)

(assert (=> b!4400431 (= e!2739971 lt!1605642)))

(declare-fun lt!1605645 () Unit!78751)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!509 (List!49402 K!10635) Unit!78751)

(assert (=> b!4400431 (= lt!1605645 (lemmaContainsKeyImpliesGetValueByKeyDefined!509 (toList!3238 lt!1605466) key!3918))))

(declare-datatypes ((Option!10613 0))(
  ( (None!10612) (Some!10612 (v!43714 V!10881)) )
))
(declare-fun isDefined!7906 (Option!10613) Bool)

(declare-fun getValueByKey!599 (List!49402 K!10635) Option!10613)

(assert (=> b!4400431 (isDefined!7906 (getValueByKey!599 (toList!3238 lt!1605466) key!3918))))

(declare-fun lt!1605647 () Unit!78751)

(assert (=> b!4400431 (= lt!1605647 lt!1605645)))

(declare-fun lemmaInListThenGetKeysListContains!194 (List!49402 K!10635) Unit!78751)

(assert (=> b!4400431 (= lt!1605642 (lemmaInListThenGetKeysListContains!194 (toList!3238 lt!1605466) key!3918))))

(declare-fun call!306219 () Bool)

(assert (=> b!4400431 call!306219))

(declare-fun b!4400432 () Bool)

(declare-fun e!2739970 () Bool)

(assert (=> b!4400432 (= e!2739970 e!2739973)))

(declare-fun res!1814967 () Bool)

(assert (=> b!4400432 (=> (not res!1814967) (not e!2739973))))

(assert (=> b!4400432 (= res!1814967 (isDefined!7906 (getValueByKey!599 (toList!3238 lt!1605466) key!3918)))))

(declare-fun d!1326777 () Bool)

(assert (=> d!1326777 e!2739970))

(declare-fun res!1814968 () Bool)

(assert (=> d!1326777 (=> res!1814968 e!2739970)))

(assert (=> d!1326777 (= res!1814968 e!2739974)))

(declare-fun res!1814969 () Bool)

(assert (=> d!1326777 (=> (not res!1814969) (not e!2739974))))

(declare-fun lt!1605643 () Bool)

(assert (=> d!1326777 (= res!1814969 (not lt!1605643))))

(declare-fun lt!1605649 () Bool)

(assert (=> d!1326777 (= lt!1605643 lt!1605649)))

(declare-fun lt!1605644 () Unit!78751)

(assert (=> d!1326777 (= lt!1605644 e!2739971)))

(declare-fun c!749149 () Bool)

(assert (=> d!1326777 (= c!749149 lt!1605649)))

(declare-fun containsKey!937 (List!49402 K!10635) Bool)

(assert (=> d!1326777 (= lt!1605649 (containsKey!937 (toList!3238 lt!1605466) key!3918))))

(assert (=> d!1326777 (= (contains!11669 lt!1605466 key!3918) lt!1605643)))

(declare-fun b!4400433 () Bool)

(assert (=> b!4400433 (= e!2739972 (keys!16747 lt!1605466))))

(declare-fun bm!306214 () Bool)

(assert (=> bm!306214 (= call!306219 (contains!11671 e!2739972 key!3918))))

(declare-fun c!749147 () Bool)

(assert (=> bm!306214 (= c!749147 c!749149)))

(declare-fun b!4400434 () Bool)

(declare-fun e!2739975 () Unit!78751)

(assert (=> b!4400434 (= e!2739971 e!2739975)))

(declare-fun c!749148 () Bool)

(assert (=> b!4400434 (= c!749148 call!306219)))

(declare-fun b!4400435 () Bool)

(assert (=> b!4400435 false))

(declare-fun lt!1605648 () Unit!78751)

(declare-fun lt!1605646 () Unit!78751)

(assert (=> b!4400435 (= lt!1605648 lt!1605646)))

(assert (=> b!4400435 (containsKey!937 (toList!3238 lt!1605466) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!195 (List!49402 K!10635) Unit!78751)

(assert (=> b!4400435 (= lt!1605646 (lemmaInGetKeysListThenContainsKey!195 (toList!3238 lt!1605466) key!3918))))

(declare-fun Unit!78763 () Unit!78751)

(assert (=> b!4400435 (= e!2739975 Unit!78763)))

(declare-fun b!4400436 () Bool)

(declare-fun Unit!78764 () Unit!78751)

(assert (=> b!4400436 (= e!2739975 Unit!78764)))

(assert (= (and d!1326777 c!749149) b!4400431))

(assert (= (and d!1326777 (not c!749149)) b!4400434))

(assert (= (and b!4400434 c!749148) b!4400435))

(assert (= (and b!4400434 (not c!749148)) b!4400436))

(assert (= (or b!4400431 b!4400434) bm!306214))

(assert (= (and bm!306214 c!749147) b!4400429))

(assert (= (and bm!306214 (not c!749147)) b!4400433))

(assert (= (and d!1326777 res!1814969) b!4400428))

(assert (= (and d!1326777 (not res!1814968)) b!4400432))

(assert (= (and b!4400432 res!1814967) b!4400430))

(declare-fun m!5063105 () Bool)

(assert (=> b!4400431 m!5063105))

(declare-fun m!5063107 () Bool)

(assert (=> b!4400431 m!5063107))

(assert (=> b!4400431 m!5063107))

(declare-fun m!5063109 () Bool)

(assert (=> b!4400431 m!5063109))

(declare-fun m!5063111 () Bool)

(assert (=> b!4400431 m!5063111))

(declare-fun m!5063113 () Bool)

(assert (=> bm!306214 m!5063113))

(declare-fun m!5063115 () Bool)

(assert (=> b!4400433 m!5063115))

(assert (=> b!4400432 m!5063107))

(assert (=> b!4400432 m!5063107))

(assert (=> b!4400432 m!5063109))

(declare-fun m!5063117 () Bool)

(assert (=> b!4400435 m!5063117))

(declare-fun m!5063119 () Bool)

(assert (=> b!4400435 m!5063119))

(assert (=> b!4400430 m!5063115))

(assert (=> b!4400430 m!5063115))

(declare-fun m!5063121 () Bool)

(assert (=> b!4400430 m!5063121))

(assert (=> b!4400428 m!5063115))

(assert (=> b!4400428 m!5063115))

(assert (=> b!4400428 m!5063121))

(declare-fun m!5063123 () Bool)

(assert (=> b!4400429 m!5063123))

(assert (=> d!1326777 m!5063117))

(assert (=> b!4400162 d!1326777))

(declare-fun b!4400437 () Bool)

(declare-fun e!2739980 () Bool)

(assert (=> b!4400437 (= e!2739980 (not (contains!11671 (keys!16747 (extractMap!686 (toList!3237 lt!1605458))) key!3918)))))

(declare-fun b!4400438 () Bool)

(declare-fun e!2739978 () List!49405)

(assert (=> b!4400438 (= e!2739978 (getKeysList!197 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))))

(declare-fun b!4400439 () Bool)

(declare-fun e!2739979 () Bool)

(assert (=> b!4400439 (= e!2739979 (contains!11671 (keys!16747 (extractMap!686 (toList!3237 lt!1605458))) key!3918))))

(declare-fun b!4400440 () Bool)

(declare-fun e!2739977 () Unit!78751)

(declare-fun lt!1605650 () Unit!78751)

(assert (=> b!4400440 (= e!2739977 lt!1605650)))

(declare-fun lt!1605653 () Unit!78751)

(assert (=> b!4400440 (= lt!1605653 (lemmaContainsKeyImpliesGetValueByKeyDefined!509 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918))))

(assert (=> b!4400440 (isDefined!7906 (getValueByKey!599 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918))))

(declare-fun lt!1605655 () Unit!78751)

(assert (=> b!4400440 (= lt!1605655 lt!1605653)))

(assert (=> b!4400440 (= lt!1605650 (lemmaInListThenGetKeysListContains!194 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918))))

(declare-fun call!306220 () Bool)

(assert (=> b!4400440 call!306220))

(declare-fun b!4400441 () Bool)

(declare-fun e!2739976 () Bool)

(assert (=> b!4400441 (= e!2739976 e!2739979)))

(declare-fun res!1814970 () Bool)

(assert (=> b!4400441 (=> (not res!1814970) (not e!2739979))))

(assert (=> b!4400441 (= res!1814970 (isDefined!7906 (getValueByKey!599 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918)))))

(declare-fun d!1326779 () Bool)

(assert (=> d!1326779 e!2739976))

(declare-fun res!1814971 () Bool)

(assert (=> d!1326779 (=> res!1814971 e!2739976)))

(assert (=> d!1326779 (= res!1814971 e!2739980)))

(declare-fun res!1814972 () Bool)

(assert (=> d!1326779 (=> (not res!1814972) (not e!2739980))))

(declare-fun lt!1605651 () Bool)

(assert (=> d!1326779 (= res!1814972 (not lt!1605651))))

(declare-fun lt!1605657 () Bool)

(assert (=> d!1326779 (= lt!1605651 lt!1605657)))

(declare-fun lt!1605652 () Unit!78751)

(assert (=> d!1326779 (= lt!1605652 e!2739977)))

(declare-fun c!749152 () Bool)

(assert (=> d!1326779 (= c!749152 lt!1605657)))

(assert (=> d!1326779 (= lt!1605657 (containsKey!937 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918))))

(assert (=> d!1326779 (= (contains!11669 (extractMap!686 (toList!3237 lt!1605458)) key!3918) lt!1605651)))

(declare-fun b!4400442 () Bool)

(assert (=> b!4400442 (= e!2739978 (keys!16747 (extractMap!686 (toList!3237 lt!1605458))))))

(declare-fun bm!306215 () Bool)

(assert (=> bm!306215 (= call!306220 (contains!11671 e!2739978 key!3918))))

(declare-fun c!749150 () Bool)

(assert (=> bm!306215 (= c!749150 c!749152)))

(declare-fun b!4400443 () Bool)

(declare-fun e!2739981 () Unit!78751)

(assert (=> b!4400443 (= e!2739977 e!2739981)))

(declare-fun c!749151 () Bool)

(assert (=> b!4400443 (= c!749151 call!306220)))

(declare-fun b!4400444 () Bool)

(assert (=> b!4400444 false))

(declare-fun lt!1605656 () Unit!78751)

(declare-fun lt!1605654 () Unit!78751)

(assert (=> b!4400444 (= lt!1605656 lt!1605654)))

(assert (=> b!4400444 (containsKey!937 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918)))

(assert (=> b!4400444 (= lt!1605654 (lemmaInGetKeysListThenContainsKey!195 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918))))

(declare-fun Unit!78765 () Unit!78751)

(assert (=> b!4400444 (= e!2739981 Unit!78765)))

(declare-fun b!4400445 () Bool)

(declare-fun Unit!78766 () Unit!78751)

(assert (=> b!4400445 (= e!2739981 Unit!78766)))

(assert (= (and d!1326779 c!749152) b!4400440))

(assert (= (and d!1326779 (not c!749152)) b!4400443))

(assert (= (and b!4400443 c!749151) b!4400444))

(assert (= (and b!4400443 (not c!749151)) b!4400445))

(assert (= (or b!4400440 b!4400443) bm!306215))

(assert (= (and bm!306215 c!749150) b!4400438))

(assert (= (and bm!306215 (not c!749150)) b!4400442))

(assert (= (and d!1326779 res!1814972) b!4400437))

(assert (= (and d!1326779 (not res!1814971)) b!4400441))

(assert (= (and b!4400441 res!1814970) b!4400439))

(declare-fun m!5063125 () Bool)

(assert (=> b!4400440 m!5063125))

(declare-fun m!5063127 () Bool)

(assert (=> b!4400440 m!5063127))

(assert (=> b!4400440 m!5063127))

(declare-fun m!5063129 () Bool)

(assert (=> b!4400440 m!5063129))

(declare-fun m!5063131 () Bool)

(assert (=> b!4400440 m!5063131))

(declare-fun m!5063133 () Bool)

(assert (=> bm!306215 m!5063133))

(assert (=> b!4400442 m!5062749))

(declare-fun m!5063135 () Bool)

(assert (=> b!4400442 m!5063135))

(assert (=> b!4400441 m!5063127))

(assert (=> b!4400441 m!5063127))

(assert (=> b!4400441 m!5063129))

(declare-fun m!5063137 () Bool)

(assert (=> b!4400444 m!5063137))

(declare-fun m!5063139 () Bool)

(assert (=> b!4400444 m!5063139))

(assert (=> b!4400439 m!5062749))

(assert (=> b!4400439 m!5063135))

(assert (=> b!4400439 m!5063135))

(declare-fun m!5063141 () Bool)

(assert (=> b!4400439 m!5063141))

(assert (=> b!4400437 m!5062749))

(assert (=> b!4400437 m!5063135))

(assert (=> b!4400437 m!5063135))

(assert (=> b!4400437 m!5063141))

(declare-fun m!5063143 () Bool)

(assert (=> b!4400438 m!5063143))

(assert (=> d!1326779 m!5063137))

(assert (=> b!4400162 d!1326779))

(declare-fun d!1326781 () Bool)

(declare-fun res!1814973 () Bool)

(declare-fun e!2739982 () Bool)

(assert (=> d!1326781 (=> res!1814973 e!2739982)))

(assert (=> d!1326781 (= res!1814973 ((_ is Nil!49279) (toList!3237 lt!1605458)))))

(assert (=> d!1326781 (= (forall!9364 (toList!3237 lt!1605458) lambda!148789) e!2739982)))

(declare-fun b!4400446 () Bool)

(declare-fun e!2739983 () Bool)

(assert (=> b!4400446 (= e!2739982 e!2739983)))

(declare-fun res!1814974 () Bool)

(assert (=> b!4400446 (=> (not res!1814974) (not e!2739983))))

(assert (=> b!4400446 (= res!1814974 (dynLambda!20762 lambda!148789 (h!54904 (toList!3237 lt!1605458))))))

(declare-fun b!4400447 () Bool)

(assert (=> b!4400447 (= e!2739983 (forall!9364 (t!356337 (toList!3237 lt!1605458)) lambda!148789))))

(assert (= (and d!1326781 (not res!1814973)) b!4400446))

(assert (= (and b!4400446 res!1814974) b!4400447))

(declare-fun b_lambda!139739 () Bool)

(assert (=> (not b_lambda!139739) (not b!4400446)))

(declare-fun m!5063145 () Bool)

(assert (=> b!4400446 m!5063145))

(declare-fun m!5063147 () Bool)

(assert (=> b!4400447 m!5063147))

(assert (=> b!4400162 d!1326781))

(declare-fun d!1326783 () Bool)

(declare-fun res!1814975 () Bool)

(declare-fun e!2739984 () Bool)

(assert (=> d!1326783 (=> res!1814975 e!2739984)))

(assert (=> d!1326783 (= res!1814975 (and ((_ is Cons!49278) (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707))))) (= (_1!27733 (h!54903 (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707)))))) key!3918)))))

(assert (=> d!1326783 (= (containsKey!933 (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707)))) key!3918) e!2739984)))

(declare-fun b!4400448 () Bool)

(declare-fun e!2739985 () Bool)

(assert (=> b!4400448 (= e!2739984 e!2739985)))

(declare-fun res!1814976 () Bool)

(assert (=> b!4400448 (=> (not res!1814976) (not e!2739985))))

(assert (=> b!4400448 (= res!1814976 ((_ is Cons!49278) (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707))))))))

(declare-fun b!4400449 () Bool)

(assert (=> b!4400449 (= e!2739985 (containsKey!933 (t!356336 (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707))))) key!3918))))

(assert (= (and d!1326783 (not res!1814975)) b!4400448))

(assert (= (and b!4400448 res!1814976) b!4400449))

(declare-fun m!5063149 () Bool)

(assert (=> b!4400449 m!5063149))

(assert (=> b!4400162 d!1326783))

(declare-fun bs!728238 () Bool)

(declare-fun d!1326785 () Bool)

(assert (= bs!728238 (and d!1326785 start!427704)))

(declare-fun lambda!148814 () Int)

(assert (=> bs!728238 (not (= lambda!148814 lambda!148789))))

(declare-fun bs!728239 () Bool)

(assert (= bs!728239 (and d!1326785 d!1326757)))

(assert (=> bs!728239 (not (= lambda!148814 lambda!148807))))

(declare-fun bs!728240 () Bool)

(assert (= bs!728240 (and d!1326785 d!1326773)))

(assert (=> bs!728240 (not (= lambda!148814 lambda!148808))))

(declare-fun bs!728241 () Bool)

(assert (= bs!728241 (and d!1326785 d!1326775)))

(assert (=> bs!728241 (not (= lambda!148814 lambda!148811))))

(assert (=> d!1326785 true))

(assert (=> d!1326785 (= (allKeysSameHashInMap!731 lt!1605458 hashF!1247) (forall!9364 (toList!3237 lt!1605458) lambda!148814))))

(declare-fun bs!728242 () Bool)

(assert (= bs!728242 d!1326785))

(declare-fun m!5063151 () Bool)

(assert (=> bs!728242 m!5063151))

(assert (=> b!4400160 d!1326785))

(declare-fun bs!728243 () Bool)

(declare-fun d!1326787 () Bool)

(assert (= bs!728243 (and d!1326787 d!1326785)))

(declare-fun lambda!148815 () Int)

(assert (=> bs!728243 (= lambda!148815 lambda!148814)))

(declare-fun bs!728244 () Bool)

(assert (= bs!728244 (and d!1326787 d!1326775)))

(assert (=> bs!728244 (not (= lambda!148815 lambda!148811))))

(declare-fun bs!728245 () Bool)

(assert (= bs!728245 (and d!1326787 start!427704)))

(assert (=> bs!728245 (not (= lambda!148815 lambda!148789))))

(declare-fun bs!728246 () Bool)

(assert (= bs!728246 (and d!1326787 d!1326757)))

(assert (=> bs!728246 (not (= lambda!148815 lambda!148807))))

(declare-fun bs!728247 () Bool)

(assert (= bs!728247 (and d!1326787 d!1326773)))

(assert (=> bs!728247 (not (= lambda!148815 lambda!148808))))

(assert (=> d!1326787 true))

(assert (=> d!1326787 (= (allKeysSameHashInMap!731 lm!1707 hashF!1247) (forall!9364 (toList!3237 lm!1707) lambda!148815))))

(declare-fun bs!728248 () Bool)

(assert (= bs!728248 d!1326787))

(declare-fun m!5063153 () Bool)

(assert (=> bs!728248 m!5063153))

(assert (=> b!4400161 d!1326787))

(declare-fun d!1326789 () Bool)

(declare-fun lt!1605660 () Int)

(assert (=> d!1326789 (>= lt!1605660 0)))

(declare-fun e!2739988 () Int)

(assert (=> d!1326789 (= lt!1605660 e!2739988)))

(declare-fun c!749155 () Bool)

(assert (=> d!1326789 (= c!749155 ((_ is Nil!49279) (toList!3237 lt!1605458)))))

(assert (=> d!1326789 (= (size!35872 (toList!3237 lt!1605458)) lt!1605660)))

(declare-fun b!4400456 () Bool)

(assert (=> b!4400456 (= e!2739988 0)))

(declare-fun b!4400457 () Bool)

(assert (=> b!4400457 (= e!2739988 (+ 1 (size!35872 (t!356337 (toList!3237 lt!1605458)))))))

(assert (= (and d!1326789 c!749155) b!4400456))

(assert (= (and d!1326789 (not c!749155)) b!4400457))

(declare-fun m!5063155 () Bool)

(assert (=> b!4400457 m!5063155))

(assert (=> b!4400159 d!1326789))

(declare-fun d!1326791 () Bool)

(declare-fun lt!1605661 () Int)

(assert (=> d!1326791 (>= lt!1605661 0)))

(declare-fun e!2739989 () Int)

(assert (=> d!1326791 (= lt!1605661 e!2739989)))

(declare-fun c!749156 () Bool)

(assert (=> d!1326791 (= c!749156 ((_ is Nil!49279) (toList!3237 lm!1707)))))

(assert (=> d!1326791 (= (size!35872 (toList!3237 lm!1707)) lt!1605661)))

(declare-fun b!4400458 () Bool)

(assert (=> b!4400458 (= e!2739989 0)))

(declare-fun b!4400459 () Bool)

(assert (=> b!4400459 (= e!2739989 (+ 1 (size!35872 (t!356337 (toList!3237 lm!1707)))))))

(assert (= (and d!1326791 c!749156) b!4400458))

(assert (= (and d!1326791 (not c!749156)) b!4400459))

(declare-fun m!5063157 () Bool)

(assert (=> b!4400459 m!5063157))

(assert (=> b!4400159 d!1326791))

(declare-fun d!1326793 () Bool)

(declare-fun hash!1871 (Hashable!5019 K!10635) (_ BitVec 64))

(assert (=> d!1326793 (= (hash!1867 hashF!1247 key!3918) (hash!1871 hashF!1247 key!3918))))

(declare-fun bs!728249 () Bool)

(assert (= bs!728249 d!1326793))

(declare-fun m!5063159 () Bool)

(assert (=> bs!728249 m!5063159))

(assert (=> b!4400170 d!1326793))

(declare-fun d!1326795 () Bool)

(assert (=> d!1326795 true))

(assert (=> d!1326795 true))

(declare-fun lambda!148818 () Int)

(declare-fun forall!9366 (List!49402 Int) Bool)

(assert (=> d!1326795 (= (allKeysSameHash!585 newBucket!200 hash!377 hashF!1247) (forall!9366 newBucket!200 lambda!148818))))

(declare-fun bs!728250 () Bool)

(assert (= bs!728250 d!1326795))

(declare-fun m!5063161 () Bool)

(assert (=> bs!728250 m!5063161))

(assert (=> b!4400168 d!1326795))

(declare-fun b!4400464 () Bool)

(declare-fun e!2739994 () Bool)

(assert (=> b!4400464 (= e!2739994 (not (contains!11671 (keys!16747 (extractMap!686 (toList!3237 lm!1707))) key!3918)))))

(declare-fun b!4400465 () Bool)

(declare-fun e!2739992 () List!49405)

(assert (=> b!4400465 (= e!2739992 (getKeysList!197 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))))))

(declare-fun b!4400466 () Bool)

(declare-fun e!2739993 () Bool)

(assert (=> b!4400466 (= e!2739993 (contains!11671 (keys!16747 (extractMap!686 (toList!3237 lm!1707))) key!3918))))

(declare-fun b!4400467 () Bool)

(declare-fun e!2739991 () Unit!78751)

(declare-fun lt!1605662 () Unit!78751)

(assert (=> b!4400467 (= e!2739991 lt!1605662)))

(declare-fun lt!1605665 () Unit!78751)

(assert (=> b!4400467 (= lt!1605665 (lemmaContainsKeyImpliesGetValueByKeyDefined!509 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918))))

(assert (=> b!4400467 (isDefined!7906 (getValueByKey!599 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918))))

(declare-fun lt!1605667 () Unit!78751)

(assert (=> b!4400467 (= lt!1605667 lt!1605665)))

(assert (=> b!4400467 (= lt!1605662 (lemmaInListThenGetKeysListContains!194 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918))))

(declare-fun call!306221 () Bool)

(assert (=> b!4400467 call!306221))

(declare-fun b!4400468 () Bool)

(declare-fun e!2739990 () Bool)

(assert (=> b!4400468 (= e!2739990 e!2739993)))

(declare-fun res!1814977 () Bool)

(assert (=> b!4400468 (=> (not res!1814977) (not e!2739993))))

(assert (=> b!4400468 (= res!1814977 (isDefined!7906 (getValueByKey!599 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918)))))

(declare-fun d!1326797 () Bool)

(assert (=> d!1326797 e!2739990))

(declare-fun res!1814978 () Bool)

(assert (=> d!1326797 (=> res!1814978 e!2739990)))

(assert (=> d!1326797 (= res!1814978 e!2739994)))

(declare-fun res!1814979 () Bool)

(assert (=> d!1326797 (=> (not res!1814979) (not e!2739994))))

(declare-fun lt!1605663 () Bool)

(assert (=> d!1326797 (= res!1814979 (not lt!1605663))))

(declare-fun lt!1605669 () Bool)

(assert (=> d!1326797 (= lt!1605663 lt!1605669)))

(declare-fun lt!1605664 () Unit!78751)

(assert (=> d!1326797 (= lt!1605664 e!2739991)))

(declare-fun c!749159 () Bool)

(assert (=> d!1326797 (= c!749159 lt!1605669)))

(assert (=> d!1326797 (= lt!1605669 (containsKey!937 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918))))

(assert (=> d!1326797 (= (contains!11669 (extractMap!686 (toList!3237 lm!1707)) key!3918) lt!1605663)))

(declare-fun b!4400469 () Bool)

(assert (=> b!4400469 (= e!2739992 (keys!16747 (extractMap!686 (toList!3237 lm!1707))))))

(declare-fun bm!306216 () Bool)

(assert (=> bm!306216 (= call!306221 (contains!11671 e!2739992 key!3918))))

(declare-fun c!749157 () Bool)

(assert (=> bm!306216 (= c!749157 c!749159)))

(declare-fun b!4400470 () Bool)

(declare-fun e!2739995 () Unit!78751)

(assert (=> b!4400470 (= e!2739991 e!2739995)))

(declare-fun c!749158 () Bool)

(assert (=> b!4400470 (= c!749158 call!306221)))

(declare-fun b!4400471 () Bool)

(assert (=> b!4400471 false))

(declare-fun lt!1605668 () Unit!78751)

(declare-fun lt!1605666 () Unit!78751)

(assert (=> b!4400471 (= lt!1605668 lt!1605666)))

(assert (=> b!4400471 (containsKey!937 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918)))

(assert (=> b!4400471 (= lt!1605666 (lemmaInGetKeysListThenContainsKey!195 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918))))

(declare-fun Unit!78767 () Unit!78751)

(assert (=> b!4400471 (= e!2739995 Unit!78767)))

(declare-fun b!4400472 () Bool)

(declare-fun Unit!78768 () Unit!78751)

(assert (=> b!4400472 (= e!2739995 Unit!78768)))

(assert (= (and d!1326797 c!749159) b!4400467))

(assert (= (and d!1326797 (not c!749159)) b!4400470))

(assert (= (and b!4400470 c!749158) b!4400471))

(assert (= (and b!4400470 (not c!749158)) b!4400472))

(assert (= (or b!4400467 b!4400470) bm!306216))

(assert (= (and bm!306216 c!749157) b!4400465))

(assert (= (and bm!306216 (not c!749157)) b!4400469))

(assert (= (and d!1326797 res!1814979) b!4400464))

(assert (= (and d!1326797 (not res!1814978)) b!4400468))

(assert (= (and b!4400468 res!1814977) b!4400466))

(declare-fun m!5063163 () Bool)

(assert (=> b!4400467 m!5063163))

(declare-fun m!5063165 () Bool)

(assert (=> b!4400467 m!5063165))

(assert (=> b!4400467 m!5063165))

(declare-fun m!5063167 () Bool)

(assert (=> b!4400467 m!5063167))

(declare-fun m!5063169 () Bool)

(assert (=> b!4400467 m!5063169))

(declare-fun m!5063171 () Bool)

(assert (=> bm!306216 m!5063171))

(assert (=> b!4400469 m!5062719))

(declare-fun m!5063173 () Bool)

(assert (=> b!4400469 m!5063173))

(assert (=> b!4400468 m!5063165))

(assert (=> b!4400468 m!5063165))

(assert (=> b!4400468 m!5063167))

(declare-fun m!5063175 () Bool)

(assert (=> b!4400471 m!5063175))

(declare-fun m!5063177 () Bool)

(assert (=> b!4400471 m!5063177))

(assert (=> b!4400466 m!5062719))

(assert (=> b!4400466 m!5063173))

(assert (=> b!4400466 m!5063173))

(declare-fun m!5063179 () Bool)

(assert (=> b!4400466 m!5063179))

(assert (=> b!4400464 m!5062719))

(assert (=> b!4400464 m!5063173))

(assert (=> b!4400464 m!5063173))

(assert (=> b!4400464 m!5063179))

(declare-fun m!5063181 () Bool)

(assert (=> b!4400465 m!5063181))

(assert (=> d!1326797 m!5063175))

(assert (=> b!4400158 d!1326797))

(declare-fun bs!728251 () Bool)

(declare-fun d!1326799 () Bool)

(assert (= bs!728251 (and d!1326799 d!1326785)))

(declare-fun lambda!148819 () Int)

(assert (=> bs!728251 (not (= lambda!148819 lambda!148814))))

(declare-fun bs!728252 () Bool)

(assert (= bs!728252 (and d!1326799 d!1326787)))

(assert (=> bs!728252 (not (= lambda!148819 lambda!148815))))

(declare-fun bs!728253 () Bool)

(assert (= bs!728253 (and d!1326799 d!1326775)))

(assert (=> bs!728253 (= lambda!148819 lambda!148811)))

(declare-fun bs!728254 () Bool)

(assert (= bs!728254 (and d!1326799 start!427704)))

(assert (=> bs!728254 (= lambda!148819 lambda!148789)))

(declare-fun bs!728255 () Bool)

(assert (= bs!728255 (and d!1326799 d!1326757)))

(assert (=> bs!728255 (= lambda!148819 lambda!148807)))

(declare-fun bs!728256 () Bool)

(assert (= bs!728256 (and d!1326799 d!1326773)))

(assert (=> bs!728256 (= lambda!148819 lambda!148808)))

(declare-fun lt!1605670 () ListMap!2481)

(assert (=> d!1326799 (invariantList!750 (toList!3238 lt!1605670))))

(declare-fun e!2739996 () ListMap!2481)

(assert (=> d!1326799 (= lt!1605670 e!2739996)))

(declare-fun c!749160 () Bool)

(assert (=> d!1326799 (= c!749160 ((_ is Cons!49279) (toList!3237 lm!1707)))))

(assert (=> d!1326799 (forall!9364 (toList!3237 lm!1707) lambda!148819)))

(assert (=> d!1326799 (= (extractMap!686 (toList!3237 lm!1707)) lt!1605670)))

(declare-fun b!4400473 () Bool)

(assert (=> b!4400473 (= e!2739996 (addToMapMapFromBucket!295 (_2!27734 (h!54904 (toList!3237 lm!1707))) (extractMap!686 (t!356337 (toList!3237 lm!1707)))))))

(declare-fun b!4400474 () Bool)

(assert (=> b!4400474 (= e!2739996 (ListMap!2482 Nil!49278))))

(assert (= (and d!1326799 c!749160) b!4400473))

(assert (= (and d!1326799 (not c!749160)) b!4400474))

(declare-fun m!5063183 () Bool)

(assert (=> d!1326799 m!5063183))

(declare-fun m!5063185 () Bool)

(assert (=> d!1326799 m!5063185))

(assert (=> b!4400473 m!5062741))

(assert (=> b!4400473 m!5062741))

(declare-fun m!5063187 () Bool)

(assert (=> b!4400473 m!5063187))

(assert (=> b!4400158 d!1326799))

(declare-fun b!4400479 () Bool)

(declare-fun e!2739999 () Bool)

(declare-fun tp!1331826 () Bool)

(declare-fun tp!1331827 () Bool)

(assert (=> b!4400479 (= e!2739999 (and tp!1331826 tp!1331827))))

(assert (=> b!4400157 (= tp!1331811 e!2739999)))

(assert (= (and b!4400157 ((_ is Cons!49279) (toList!3237 lm!1707))) b!4400479))

(declare-fun e!2740002 () Bool)

(declare-fun b!4400484 () Bool)

(declare-fun tp!1331830 () Bool)

(assert (=> b!4400484 (= e!2740002 (and tp_is_empty!25745 tp_is_empty!25747 tp!1331830))))

(assert (=> b!4400169 (= tp!1331812 e!2740002)))

(assert (= (and b!4400169 ((_ is Cons!49278) (t!356336 newBucket!200))) b!4400484))

(declare-fun b_lambda!139741 () Bool)

(assert (= b_lambda!139721 (or start!427704 b_lambda!139741)))

(declare-fun bs!728257 () Bool)

(declare-fun d!1326801 () Bool)

(assert (= bs!728257 (and d!1326801 start!427704)))

(assert (=> bs!728257 (= (dynLambda!20762 lambda!148789 (tuple2!48881 hash!377 newBucket!200)) (noDuplicateKeys!627 (_2!27734 (tuple2!48881 hash!377 newBucket!200))))))

(declare-fun m!5063189 () Bool)

(assert (=> bs!728257 m!5063189))

(assert (=> b!4400354 d!1326801))

(declare-fun b_lambda!139743 () Bool)

(assert (= b_lambda!139709 (or start!427704 b_lambda!139743)))

(declare-fun bs!728258 () Bool)

(declare-fun d!1326803 () Bool)

(assert (= bs!728258 (and d!1326803 start!427704)))

(assert (=> bs!728258 (= (dynLambda!20762 lambda!148789 lt!1605462) (noDuplicateKeys!627 (_2!27734 lt!1605462)))))

(declare-fun m!5063191 () Bool)

(assert (=> bs!728258 m!5063191))

(assert (=> d!1326673 d!1326803))

(declare-fun b_lambda!139745 () Bool)

(assert (= b_lambda!139715 (or start!427704 b_lambda!139745)))

(declare-fun bs!728259 () Bool)

(declare-fun d!1326805 () Bool)

(assert (= bs!728259 (and d!1326805 start!427704)))

(assert (=> bs!728259 (= (dynLambda!20762 lambda!148789 lt!1605461) (noDuplicateKeys!627 (_2!27734 lt!1605461)))))

(declare-fun m!5063193 () Bool)

(assert (=> bs!728259 m!5063193))

(assert (=> d!1326695 d!1326805))

(declare-fun b_lambda!139747 () Bool)

(assert (= b_lambda!139717 (or start!427704 b_lambda!139747)))

(declare-fun bs!728260 () Bool)

(declare-fun d!1326807 () Bool)

(assert (= bs!728260 (and d!1326807 start!427704)))

(assert (=> bs!728260 (= (dynLambda!20762 lambda!148789 (h!54904 (toList!3237 lt!1605452))) (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 lt!1605452)))))))

(declare-fun m!5063195 () Bool)

(assert (=> bs!728260 m!5063195))

(assert (=> b!4400289 d!1326807))

(declare-fun b_lambda!139749 () Bool)

(assert (= b_lambda!139739 (or start!427704 b_lambda!139749)))

(declare-fun bs!728261 () Bool)

(declare-fun d!1326809 () Bool)

(assert (= bs!728261 (and d!1326809 start!427704)))

(assert (=> bs!728261 (= (dynLambda!20762 lambda!148789 (h!54904 (toList!3237 lt!1605458))) (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 lt!1605458)))))))

(declare-fun m!5063197 () Bool)

(assert (=> bs!728261 m!5063197))

(assert (=> b!4400446 d!1326809))

(declare-fun b_lambda!139751 () Bool)

(assert (= b_lambda!139723 (or start!427704 b_lambda!139751)))

(declare-fun bs!728262 () Bool)

(declare-fun d!1326811 () Bool)

(assert (= bs!728262 (and d!1326811 start!427704)))

(assert (=> bs!728262 (= (dynLambda!20762 lambda!148789 (h!54904 (toList!3237 lm!1707))) (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 lm!1707)))))))

(assert (=> bs!728262 m!5063089))

(assert (=> b!4400358 d!1326811))

(check-sat (not d!1326785) (not d!1326787) (not b!4400467) (not d!1326757) (not d!1326697) (not b!4400437) (not d!1326695) (not b!4400429) (not bs!728257) (not b!4400340) (not d!1326641) (not d!1326749) (not b!4400459) (not b!4400440) (not d!1326753) (not b!4400270) (not bs!728261) (not b!4400283) (not b!4400384) (not b!4400339) (not b!4400442) (not b!4400471) (not d!1326673) (not b_lambda!139741) (not b!4400447) (not d!1326663) (not b!4400359) (not d!1326713) (not b!4400441) (not b!4400449) (not d!1326703) (not d!1326655) (not d!1326775) (not b!4400230) (not b!4400382) (not b!4400438) (not b!4400457) (not d!1326771) (not b!4400473) (not b_lambda!139743) tp_is_empty!25747 (not b!4400406) (not d!1326793) (not d!1326769) (not d!1326795) (not b!4400298) (not bm!306216) (not b!4400379) (not b_lambda!139751) (not b!4400380) (not b!4400204) (not d!1326741) (not b!4400433) (not b!4400408) (not bs!728262) (not b_lambda!139745) (not b!4400240) (not b!4400468) (not b!4400469) (not b!4400276) tp_is_empty!25745 (not bs!728259) (not b!4400284) (not d!1326797) (not b!4400290) (not b!4400444) (not d!1326777) (not b!4400439) (not d!1326799) (not b!4400465) (not b!4400431) (not b!4400432) (not d!1326693) (not d!1326687) (not d!1326645) (not d!1326677) (not b!4400464) (not b!4400435) (not bm!306214) (not d!1326779) (not b!4400479) (not bm!306215) (not b!4400281) (not b!4400466) (not bs!728260) (not d!1326689) (not b_lambda!139747) (not bs!728258) (not b!4400484) (not b_lambda!139749) (not b!4400430) (not b!4400190) (not b!4400268) (not d!1326773) (not b!4400428))
(check-sat)
(get-model)

(declare-fun d!1326875 () Bool)

(assert (=> d!1326875 (dynLambda!20762 lambda!148789 lt!1605461)))

(assert (=> d!1326875 true))

(declare-fun _$7!1608 () Unit!78751)

(assert (=> d!1326875 (= (choose!27582 (toList!3237 lm!1707) lambda!148789 lt!1605461) _$7!1608)))

(declare-fun b_lambda!139755 () Bool)

(assert (=> (not b_lambda!139755) (not d!1326875)))

(declare-fun bs!728290 () Bool)

(assert (= bs!728290 d!1326875))

(assert (=> bs!728290 m!5062881))

(assert (=> d!1326695 d!1326875))

(assert (=> d!1326695 d!1326727))

(declare-fun d!1326877 () Bool)

(declare-fun res!1815051 () Bool)

(declare-fun e!2740083 () Bool)

(assert (=> d!1326877 (=> res!1815051 e!2740083)))

(assert (=> d!1326877 (= res!1815051 (and ((_ is Cons!49278) (toList!3238 lt!1605466)) (= (_1!27733 (h!54903 (toList!3238 lt!1605466))) key!3918)))))

(assert (=> d!1326877 (= (containsKey!937 (toList!3238 lt!1605466) key!3918) e!2740083)))

(declare-fun b!4400610 () Bool)

(declare-fun e!2740084 () Bool)

(assert (=> b!4400610 (= e!2740083 e!2740084)))

(declare-fun res!1815052 () Bool)

(assert (=> b!4400610 (=> (not res!1815052) (not e!2740084))))

(assert (=> b!4400610 (= res!1815052 ((_ is Cons!49278) (toList!3238 lt!1605466)))))

(declare-fun b!4400611 () Bool)

(assert (=> b!4400611 (= e!2740084 (containsKey!937 (t!356336 (toList!3238 lt!1605466)) key!3918))))

(assert (= (and d!1326877 (not res!1815051)) b!4400610))

(assert (= (and b!4400610 res!1815052) b!4400611))

(declare-fun m!5063345 () Bool)

(assert (=> b!4400611 m!5063345))

(assert (=> d!1326777 d!1326877))

(declare-fun d!1326879 () Bool)

(declare-fun isEmpty!28282 (Option!10613) Bool)

(assert (=> d!1326879 (= (isDefined!7906 (getValueByKey!599 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918)) (not (isEmpty!28282 (getValueByKey!599 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918))))))

(declare-fun bs!728291 () Bool)

(assert (= bs!728291 d!1326879))

(assert (=> bs!728291 m!5063127))

(declare-fun m!5063347 () Bool)

(assert (=> bs!728291 m!5063347))

(assert (=> b!4400441 d!1326879))

(declare-fun d!1326881 () Bool)

(declare-fun c!749190 () Bool)

(assert (=> d!1326881 (= c!749190 (and ((_ is Cons!49278) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) key!3918)))))

(declare-fun e!2740089 () Option!10613)

(assert (=> d!1326881 (= (getValueByKey!599 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918) e!2740089)))

(declare-fun b!4400622 () Bool)

(declare-fun e!2740090 () Option!10613)

(assert (=> b!4400622 (= e!2740090 (getValueByKey!599 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) key!3918))))

(declare-fun b!4400620 () Bool)

(assert (=> b!4400620 (= e!2740089 (Some!10612 (_2!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))))))

(declare-fun b!4400621 () Bool)

(assert (=> b!4400621 (= e!2740089 e!2740090)))

(declare-fun c!749191 () Bool)

(assert (=> b!4400621 (= c!749191 (and ((_ is Cons!49278) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (not (= (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) key!3918))))))

(declare-fun b!4400623 () Bool)

(assert (=> b!4400623 (= e!2740090 None!10612)))

(assert (= (and d!1326881 c!749190) b!4400620))

(assert (= (and d!1326881 (not c!749190)) b!4400621))

(assert (= (and b!4400621 c!749191) b!4400622))

(assert (= (and b!4400621 (not c!749191)) b!4400623))

(declare-fun m!5063349 () Bool)

(assert (=> b!4400622 m!5063349))

(assert (=> b!4400441 d!1326881))

(declare-fun d!1326883 () Bool)

(declare-fun c!749194 () Bool)

(assert (=> d!1326883 (= c!749194 ((_ is Nil!49279) (toList!3237 lm!1707)))))

(declare-fun e!2740093 () (InoxSet tuple2!48880))

(assert (=> d!1326883 (= (content!7868 (toList!3237 lm!1707)) e!2740093)))

(declare-fun b!4400628 () Bool)

(assert (=> b!4400628 (= e!2740093 ((as const (Array tuple2!48880 Bool)) false))))

(declare-fun b!4400629 () Bool)

(assert (=> b!4400629 (= e!2740093 ((_ map or) (store ((as const (Array tuple2!48880 Bool)) false) (h!54904 (toList!3237 lm!1707)) true) (content!7868 (t!356337 (toList!3237 lm!1707)))))))

(assert (= (and d!1326883 c!749194) b!4400628))

(assert (= (and d!1326883 (not c!749194)) b!4400629))

(declare-fun m!5063351 () Bool)

(assert (=> b!4400629 m!5063351))

(declare-fun m!5063353 () Bool)

(assert (=> b!4400629 m!5063353))

(assert (=> d!1326689 d!1326883))

(declare-fun d!1326885 () Bool)

(declare-fun lt!1605717 () Bool)

(declare-fun content!7870 (List!49405) (InoxSet K!10635))

(assert (=> d!1326885 (= lt!1605717 (select (content!7870 e!2739978) key!3918))))

(declare-fun e!2740098 () Bool)

(assert (=> d!1326885 (= lt!1605717 e!2740098)))

(declare-fun res!1815058 () Bool)

(assert (=> d!1326885 (=> (not res!1815058) (not e!2740098))))

(assert (=> d!1326885 (= res!1815058 ((_ is Cons!49281) e!2739978))))

(assert (=> d!1326885 (= (contains!11671 e!2739978 key!3918) lt!1605717)))

(declare-fun b!4400634 () Bool)

(declare-fun e!2740099 () Bool)

(assert (=> b!4400634 (= e!2740098 e!2740099)))

(declare-fun res!1815057 () Bool)

(assert (=> b!4400634 (=> res!1815057 e!2740099)))

(assert (=> b!4400634 (= res!1815057 (= (h!54908 e!2739978) key!3918))))

(declare-fun b!4400635 () Bool)

(assert (=> b!4400635 (= e!2740099 (contains!11671 (t!356339 e!2739978) key!3918))))

(assert (= (and d!1326885 res!1815058) b!4400634))

(assert (= (and b!4400634 (not res!1815057)) b!4400635))

(declare-fun m!5063355 () Bool)

(assert (=> d!1326885 m!5063355))

(declare-fun m!5063357 () Bool)

(assert (=> d!1326885 m!5063357))

(declare-fun m!5063359 () Bool)

(assert (=> b!4400635 m!5063359))

(assert (=> bm!306215 d!1326885))

(declare-fun d!1326887 () Bool)

(declare-fun lt!1605718 () Bool)

(assert (=> d!1326887 (= lt!1605718 (select (content!7870 e!2739992) key!3918))))

(declare-fun e!2740100 () Bool)

(assert (=> d!1326887 (= lt!1605718 e!2740100)))

(declare-fun res!1815060 () Bool)

(assert (=> d!1326887 (=> (not res!1815060) (not e!2740100))))

(assert (=> d!1326887 (= res!1815060 ((_ is Cons!49281) e!2739992))))

(assert (=> d!1326887 (= (contains!11671 e!2739992 key!3918) lt!1605718)))

(declare-fun b!4400636 () Bool)

(declare-fun e!2740101 () Bool)

(assert (=> b!4400636 (= e!2740100 e!2740101)))

(declare-fun res!1815059 () Bool)

(assert (=> b!4400636 (=> res!1815059 e!2740101)))

(assert (=> b!4400636 (= res!1815059 (= (h!54908 e!2739992) key!3918))))

(declare-fun b!4400637 () Bool)

(assert (=> b!4400637 (= e!2740101 (contains!11671 (t!356339 e!2739992) key!3918))))

(assert (= (and d!1326887 res!1815060) b!4400636))

(assert (= (and b!4400636 (not res!1815059)) b!4400637))

(declare-fun m!5063361 () Bool)

(assert (=> d!1326887 m!5063361))

(declare-fun m!5063363 () Bool)

(assert (=> d!1326887 m!5063363))

(declare-fun m!5063365 () Bool)

(assert (=> b!4400637 m!5063365))

(assert (=> bm!306216 d!1326887))

(declare-fun d!1326889 () Bool)

(declare-fun lt!1605719 () Bool)

(assert (=> d!1326889 (= lt!1605719 (select (content!7870 (keys!16747 (extractMap!686 (toList!3237 lt!1605458)))) key!3918))))

(declare-fun e!2740102 () Bool)

(assert (=> d!1326889 (= lt!1605719 e!2740102)))

(declare-fun res!1815062 () Bool)

(assert (=> d!1326889 (=> (not res!1815062) (not e!2740102))))

(assert (=> d!1326889 (= res!1815062 ((_ is Cons!49281) (keys!16747 (extractMap!686 (toList!3237 lt!1605458)))))))

(assert (=> d!1326889 (= (contains!11671 (keys!16747 (extractMap!686 (toList!3237 lt!1605458))) key!3918) lt!1605719)))

(declare-fun b!4400638 () Bool)

(declare-fun e!2740103 () Bool)

(assert (=> b!4400638 (= e!2740102 e!2740103)))

(declare-fun res!1815061 () Bool)

(assert (=> b!4400638 (=> res!1815061 e!2740103)))

(assert (=> b!4400638 (= res!1815061 (= (h!54908 (keys!16747 (extractMap!686 (toList!3237 lt!1605458)))) key!3918))))

(declare-fun b!4400639 () Bool)

(assert (=> b!4400639 (= e!2740103 (contains!11671 (t!356339 (keys!16747 (extractMap!686 (toList!3237 lt!1605458)))) key!3918))))

(assert (= (and d!1326889 res!1815062) b!4400638))

(assert (= (and b!4400638 (not res!1815061)) b!4400639))

(assert (=> d!1326889 m!5063135))

(declare-fun m!5063367 () Bool)

(assert (=> d!1326889 m!5063367))

(declare-fun m!5063369 () Bool)

(assert (=> d!1326889 m!5063369))

(declare-fun m!5063371 () Bool)

(assert (=> b!4400639 m!5063371))

(assert (=> b!4400439 d!1326889))

(declare-fun b!4400647 () Bool)

(assert (=> b!4400647 true))

(declare-fun d!1326891 () Bool)

(declare-fun e!2740106 () Bool)

(assert (=> d!1326891 e!2740106))

(declare-fun res!1815069 () Bool)

(assert (=> d!1326891 (=> (not res!1815069) (not e!2740106))))

(declare-fun lt!1605722 () List!49405)

(declare-fun noDuplicate!638 (List!49405) Bool)

(assert (=> d!1326891 (= res!1815069 (noDuplicate!638 lt!1605722))))

(assert (=> d!1326891 (= lt!1605722 (getKeysList!197 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))))

(assert (=> d!1326891 (= (keys!16747 (extractMap!686 (toList!3237 lt!1605458))) lt!1605722)))

(declare-fun b!4400646 () Bool)

(declare-fun res!1815070 () Bool)

(assert (=> b!4400646 (=> (not res!1815070) (not e!2740106))))

(declare-fun length!132 (List!49405) Int)

(declare-fun length!133 (List!49402) Int)

(assert (=> b!4400646 (= res!1815070 (= (length!132 lt!1605722) (length!133 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))))))

(declare-fun res!1815071 () Bool)

(assert (=> b!4400647 (=> (not res!1815071) (not e!2740106))))

(declare-fun lambda!148846 () Int)

(declare-fun forall!9368 (List!49405 Int) Bool)

(assert (=> b!4400647 (= res!1815071 (forall!9368 lt!1605722 lambda!148846))))

(declare-fun lambda!148847 () Int)

(declare-fun b!4400648 () Bool)

(declare-fun map!10748 (List!49402 Int) List!49405)

(assert (=> b!4400648 (= e!2740106 (= (content!7870 lt!1605722) (content!7870 (map!10748 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) lambda!148847))))))

(assert (= (and d!1326891 res!1815069) b!4400646))

(assert (= (and b!4400646 res!1815070) b!4400647))

(assert (= (and b!4400647 res!1815071) b!4400648))

(declare-fun m!5063373 () Bool)

(assert (=> d!1326891 m!5063373))

(assert (=> d!1326891 m!5063143))

(declare-fun m!5063375 () Bool)

(assert (=> b!4400646 m!5063375))

(declare-fun m!5063377 () Bool)

(assert (=> b!4400646 m!5063377))

(declare-fun m!5063379 () Bool)

(assert (=> b!4400647 m!5063379))

(declare-fun m!5063381 () Bool)

(assert (=> b!4400648 m!5063381))

(declare-fun m!5063383 () Bool)

(assert (=> b!4400648 m!5063383))

(assert (=> b!4400648 m!5063383))

(declare-fun m!5063385 () Bool)

(assert (=> b!4400648 m!5063385))

(assert (=> b!4400439 d!1326891))

(declare-fun d!1326893 () Bool)

(declare-fun res!1815072 () Bool)

(declare-fun e!2740107 () Bool)

(assert (=> d!1326893 (=> res!1815072 e!2740107)))

(assert (=> d!1326893 (= res!1815072 (not ((_ is Cons!49278) (_2!27734 lt!1605461))))))

(assert (=> d!1326893 (= (noDuplicateKeys!627 (_2!27734 lt!1605461)) e!2740107)))

(declare-fun b!4400651 () Bool)

(declare-fun e!2740108 () Bool)

(assert (=> b!4400651 (= e!2740107 e!2740108)))

(declare-fun res!1815073 () Bool)

(assert (=> b!4400651 (=> (not res!1815073) (not e!2740108))))

(assert (=> b!4400651 (= res!1815073 (not (containsKey!933 (t!356336 (_2!27734 lt!1605461)) (_1!27733 (h!54903 (_2!27734 lt!1605461))))))))

(declare-fun b!4400652 () Bool)

(assert (=> b!4400652 (= e!2740108 (noDuplicateKeys!627 (t!356336 (_2!27734 lt!1605461))))))

(assert (= (and d!1326893 (not res!1815072)) b!4400651))

(assert (= (and b!4400651 res!1815073) b!4400652))

(declare-fun m!5063387 () Bool)

(assert (=> b!4400651 m!5063387))

(declare-fun m!5063389 () Bool)

(assert (=> b!4400652 m!5063389))

(assert (=> bs!728259 d!1326893))

(assert (=> d!1326775 d!1326783))

(assert (=> d!1326775 d!1326753))

(declare-fun d!1326895 () Bool)

(assert (=> d!1326895 (not (containsKey!933 (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707)))) key!3918))))

(assert (=> d!1326895 true))

(declare-fun _$39!325 () Unit!78751)

(assert (=> d!1326895 (= (choose!27585 lm!1707 key!3918 (_1!27734 (h!54904 (toList!3237 lm!1707))) hashF!1247) _$39!325)))

(declare-fun bs!728292 () Bool)

(assert (= bs!728292 d!1326895))

(assert (=> bs!728292 m!5062753))

(assert (=> bs!728292 m!5062753))

(assert (=> bs!728292 m!5062755))

(assert (=> d!1326775 d!1326895))

(declare-fun d!1326897 () Bool)

(declare-fun res!1815074 () Bool)

(declare-fun e!2740109 () Bool)

(assert (=> d!1326897 (=> res!1815074 e!2740109)))

(assert (=> d!1326897 (= res!1815074 ((_ is Nil!49279) (toList!3237 lm!1707)))))

(assert (=> d!1326897 (= (forall!9364 (toList!3237 lm!1707) lambda!148811) e!2740109)))

(declare-fun b!4400653 () Bool)

(declare-fun e!2740110 () Bool)

(assert (=> b!4400653 (= e!2740109 e!2740110)))

(declare-fun res!1815075 () Bool)

(assert (=> b!4400653 (=> (not res!1815075) (not e!2740110))))

(assert (=> b!4400653 (= res!1815075 (dynLambda!20762 lambda!148811 (h!54904 (toList!3237 lm!1707))))))

(declare-fun b!4400654 () Bool)

(assert (=> b!4400654 (= e!2740110 (forall!9364 (t!356337 (toList!3237 lm!1707)) lambda!148811))))

(assert (= (and d!1326897 (not res!1815074)) b!4400653))

(assert (= (and b!4400653 res!1815075) b!4400654))

(declare-fun b_lambda!139757 () Bool)

(assert (=> (not b_lambda!139757) (not b!4400653)))

(declare-fun m!5063391 () Bool)

(assert (=> b!4400653 m!5063391))

(declare-fun m!5063393 () Bool)

(assert (=> b!4400654 m!5063393))

(assert (=> d!1326775 d!1326897))

(declare-fun d!1326899 () Bool)

(declare-fun lt!1605723 () Bool)

(assert (=> d!1326899 (= lt!1605723 (select (content!7870 (keys!16747 (extractMap!686 (toList!3237 lm!1707)))) key!3918))))

(declare-fun e!2740111 () Bool)

(assert (=> d!1326899 (= lt!1605723 e!2740111)))

(declare-fun res!1815077 () Bool)

(assert (=> d!1326899 (=> (not res!1815077) (not e!2740111))))

(assert (=> d!1326899 (= res!1815077 ((_ is Cons!49281) (keys!16747 (extractMap!686 (toList!3237 lm!1707)))))))

(assert (=> d!1326899 (= (contains!11671 (keys!16747 (extractMap!686 (toList!3237 lm!1707))) key!3918) lt!1605723)))

(declare-fun b!4400655 () Bool)

(declare-fun e!2740112 () Bool)

(assert (=> b!4400655 (= e!2740111 e!2740112)))

(declare-fun res!1815076 () Bool)

(assert (=> b!4400655 (=> res!1815076 e!2740112)))

(assert (=> b!4400655 (= res!1815076 (= (h!54908 (keys!16747 (extractMap!686 (toList!3237 lm!1707)))) key!3918))))

(declare-fun b!4400656 () Bool)

(assert (=> b!4400656 (= e!2740112 (contains!11671 (t!356339 (keys!16747 (extractMap!686 (toList!3237 lm!1707)))) key!3918))))

(assert (= (and d!1326899 res!1815077) b!4400655))

(assert (= (and b!4400655 (not res!1815076)) b!4400656))

(assert (=> d!1326899 m!5063173))

(declare-fun m!5063395 () Bool)

(assert (=> d!1326899 m!5063395))

(declare-fun m!5063397 () Bool)

(assert (=> d!1326899 m!5063397))

(declare-fun m!5063399 () Bool)

(assert (=> b!4400656 m!5063399))

(assert (=> b!4400466 d!1326899))

(declare-fun bs!728293 () Bool)

(declare-fun b!4400658 () Bool)

(assert (= bs!728293 (and b!4400658 b!4400647)))

(declare-fun lambda!148848 () Int)

(assert (=> bs!728293 (= (= (toList!3238 (extractMap!686 (toList!3237 lm!1707))) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148848 lambda!148846))))

(assert (=> b!4400658 true))

(declare-fun bs!728294 () Bool)

(declare-fun b!4400659 () Bool)

(assert (= bs!728294 (and b!4400659 b!4400648)))

(declare-fun lambda!148849 () Int)

(assert (=> bs!728294 (= lambda!148849 lambda!148847)))

(declare-fun d!1326901 () Bool)

(declare-fun e!2740113 () Bool)

(assert (=> d!1326901 e!2740113))

(declare-fun res!1815078 () Bool)

(assert (=> d!1326901 (=> (not res!1815078) (not e!2740113))))

(declare-fun lt!1605724 () List!49405)

(assert (=> d!1326901 (= res!1815078 (noDuplicate!638 lt!1605724))))

(assert (=> d!1326901 (= lt!1605724 (getKeysList!197 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))))))

(assert (=> d!1326901 (= (keys!16747 (extractMap!686 (toList!3237 lm!1707))) lt!1605724)))

(declare-fun b!4400657 () Bool)

(declare-fun res!1815079 () Bool)

(assert (=> b!4400657 (=> (not res!1815079) (not e!2740113))))

(assert (=> b!4400657 (= res!1815079 (= (length!132 lt!1605724) (length!133 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))))))

(declare-fun res!1815080 () Bool)

(assert (=> b!4400658 (=> (not res!1815080) (not e!2740113))))

(assert (=> b!4400658 (= res!1815080 (forall!9368 lt!1605724 lambda!148848))))

(assert (=> b!4400659 (= e!2740113 (= (content!7870 lt!1605724) (content!7870 (map!10748 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) lambda!148849))))))

(assert (= (and d!1326901 res!1815078) b!4400657))

(assert (= (and b!4400657 res!1815079) b!4400658))

(assert (= (and b!4400658 res!1815080) b!4400659))

(declare-fun m!5063401 () Bool)

(assert (=> d!1326901 m!5063401))

(assert (=> d!1326901 m!5063181))

(declare-fun m!5063403 () Bool)

(assert (=> b!4400657 m!5063403))

(declare-fun m!5063405 () Bool)

(assert (=> b!4400657 m!5063405))

(declare-fun m!5063407 () Bool)

(assert (=> b!4400658 m!5063407))

(declare-fun m!5063409 () Bool)

(assert (=> b!4400659 m!5063409))

(declare-fun m!5063411 () Bool)

(assert (=> b!4400659 m!5063411))

(assert (=> b!4400659 m!5063411))

(declare-fun m!5063413 () Bool)

(assert (=> b!4400659 m!5063413))

(assert (=> b!4400466 d!1326901))

(declare-fun d!1326903 () Bool)

(assert (=> d!1326903 (= (isDefined!7906 (getValueByKey!599 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918)) (not (isEmpty!28282 (getValueByKey!599 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918))))))

(declare-fun bs!728295 () Bool)

(assert (= bs!728295 d!1326903))

(assert (=> bs!728295 m!5063165))

(declare-fun m!5063415 () Bool)

(assert (=> bs!728295 m!5063415))

(assert (=> b!4400468 d!1326903))

(declare-fun d!1326905 () Bool)

(declare-fun c!749195 () Bool)

(assert (=> d!1326905 (= c!749195 (and ((_ is Cons!49278) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (= (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) key!3918)))))

(declare-fun e!2740114 () Option!10613)

(assert (=> d!1326905 (= (getValueByKey!599 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918) e!2740114)))

(declare-fun b!4400662 () Bool)

(declare-fun e!2740115 () Option!10613)

(assert (=> b!4400662 (= e!2740115 (getValueByKey!599 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) key!3918))))

(declare-fun b!4400660 () Bool)

(assert (=> b!4400660 (= e!2740114 (Some!10612 (_2!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))))))))

(declare-fun b!4400661 () Bool)

(assert (=> b!4400661 (= e!2740114 e!2740115)))

(declare-fun c!749196 () Bool)

(assert (=> b!4400661 (= c!749196 (and ((_ is Cons!49278) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (not (= (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) key!3918))))))

(declare-fun b!4400663 () Bool)

(assert (=> b!4400663 (= e!2740115 None!10612)))

(assert (= (and d!1326905 c!749195) b!4400660))

(assert (= (and d!1326905 (not c!749195)) b!4400661))

(assert (= (and b!4400661 c!749196) b!4400662))

(assert (= (and b!4400661 (not c!749196)) b!4400663))

(declare-fun m!5063417 () Bool)

(assert (=> b!4400662 m!5063417))

(assert (=> b!4400468 d!1326905))

(declare-fun d!1326907 () Bool)

(declare-fun res!1815081 () Bool)

(declare-fun e!2740116 () Bool)

(assert (=> d!1326907 (=> res!1815081 e!2740116)))

(assert (=> d!1326907 (= res!1815081 (not ((_ is Cons!49278) (t!356336 newBucket!200))))))

(assert (=> d!1326907 (= (noDuplicateKeys!627 (t!356336 newBucket!200)) e!2740116)))

(declare-fun b!4400664 () Bool)

(declare-fun e!2740117 () Bool)

(assert (=> b!4400664 (= e!2740116 e!2740117)))

(declare-fun res!1815082 () Bool)

(assert (=> b!4400664 (=> (not res!1815082) (not e!2740117))))

(assert (=> b!4400664 (= res!1815082 (not (containsKey!933 (t!356336 (t!356336 newBucket!200)) (_1!27733 (h!54903 (t!356336 newBucket!200))))))))

(declare-fun b!4400665 () Bool)

(assert (=> b!4400665 (= e!2740117 (noDuplicateKeys!627 (t!356336 (t!356336 newBucket!200))))))

(assert (= (and d!1326907 (not res!1815081)) b!4400664))

(assert (= (and b!4400664 res!1815082) b!4400665))

(declare-fun m!5063419 () Bool)

(assert (=> b!4400664 m!5063419))

(declare-fun m!5063421 () Bool)

(assert (=> b!4400665 m!5063421))

(assert (=> b!4400380 d!1326907))

(declare-fun d!1326909 () Bool)

(declare-fun res!1815083 () Bool)

(declare-fun e!2740118 () Bool)

(assert (=> d!1326909 (=> res!1815083 e!2740118)))

(assert (=> d!1326909 (= res!1815083 (and ((_ is Cons!49278) (t!356336 (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707)))))) (= (_1!27733 (h!54903 (t!356336 (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707))))))) key!3918)))))

(assert (=> d!1326909 (= (containsKey!933 (t!356336 (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707))))) key!3918) e!2740118)))

(declare-fun b!4400666 () Bool)

(declare-fun e!2740119 () Bool)

(assert (=> b!4400666 (= e!2740118 e!2740119)))

(declare-fun res!1815084 () Bool)

(assert (=> b!4400666 (=> (not res!1815084) (not e!2740119))))

(assert (=> b!4400666 (= res!1815084 ((_ is Cons!49278) (t!356336 (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707)))))))))

(declare-fun b!4400667 () Bool)

(assert (=> b!4400667 (= e!2740119 (containsKey!933 (t!356336 (t!356336 (apply!11479 lm!1707 (_1!27734 (h!54904 (toList!3237 lm!1707)))))) key!3918))))

(assert (= (and d!1326909 (not res!1815083)) b!4400666))

(assert (= (and b!4400666 res!1815084) b!4400667))

(declare-fun m!5063423 () Bool)

(assert (=> b!4400667 m!5063423))

(assert (=> b!4400449 d!1326909))

(assert (=> b!4400283 d!1326689))

(declare-fun d!1326911 () Bool)

(declare-fun res!1815085 () Bool)

(declare-fun e!2740120 () Bool)

(assert (=> d!1326911 (=> res!1815085 e!2740120)))

(assert (=> d!1326911 (= res!1815085 (not ((_ is Cons!49278) (_2!27734 (h!54904 (toList!3237 lt!1605458))))))))

(assert (=> d!1326911 (= (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 lt!1605458)))) e!2740120)))

(declare-fun b!4400668 () Bool)

(declare-fun e!2740121 () Bool)

(assert (=> b!4400668 (= e!2740120 e!2740121)))

(declare-fun res!1815086 () Bool)

(assert (=> b!4400668 (=> (not res!1815086) (not e!2740121))))

(assert (=> b!4400668 (= res!1815086 (not (containsKey!933 (t!356336 (_2!27734 (h!54904 (toList!3237 lt!1605458)))) (_1!27733 (h!54903 (_2!27734 (h!54904 (toList!3237 lt!1605458))))))))))

(declare-fun b!4400669 () Bool)

(assert (=> b!4400669 (= e!2740121 (noDuplicateKeys!627 (t!356336 (_2!27734 (h!54904 (toList!3237 lt!1605458))))))))

(assert (= (and d!1326911 (not res!1815085)) b!4400668))

(assert (= (and b!4400668 res!1815086) b!4400669))

(declare-fun m!5063425 () Bool)

(assert (=> b!4400668 m!5063425))

(declare-fun m!5063427 () Bool)

(assert (=> b!4400669 m!5063427))

(assert (=> bs!728261 d!1326911))

(declare-fun d!1326913 () Bool)

(declare-fun res!1815087 () Bool)

(declare-fun e!2740122 () Bool)

(assert (=> d!1326913 (=> res!1815087 e!2740122)))

(assert (=> d!1326913 (= res!1815087 (and ((_ is Cons!49278) lt!1605535) (= (_1!27733 (h!54903 lt!1605535)) key!3918)))))

(assert (=> d!1326913 (= (containsKey!933 lt!1605535 key!3918) e!2740122)))

(declare-fun b!4400670 () Bool)

(declare-fun e!2740123 () Bool)

(assert (=> b!4400670 (= e!2740122 e!2740123)))

(declare-fun res!1815088 () Bool)

(assert (=> b!4400670 (=> (not res!1815088) (not e!2740123))))

(assert (=> b!4400670 (= res!1815088 ((_ is Cons!49278) lt!1605535))))

(declare-fun b!4400671 () Bool)

(assert (=> b!4400671 (= e!2740123 (containsKey!933 (t!356336 lt!1605535) key!3918))))

(assert (= (and d!1326913 (not res!1815087)) b!4400670))

(assert (= (and b!4400670 res!1815088) b!4400671))

(declare-fun m!5063429 () Bool)

(assert (=> b!4400671 m!5063429))

(assert (=> d!1326693 d!1326913))

(declare-fun d!1326915 () Bool)

(declare-fun res!1815089 () Bool)

(declare-fun e!2740124 () Bool)

(assert (=> d!1326915 (=> res!1815089 e!2740124)))

(assert (=> d!1326915 (= res!1815089 (not ((_ is Cons!49278) lt!1605455)))))

(assert (=> d!1326915 (= (noDuplicateKeys!627 lt!1605455) e!2740124)))

(declare-fun b!4400672 () Bool)

(declare-fun e!2740125 () Bool)

(assert (=> b!4400672 (= e!2740124 e!2740125)))

(declare-fun res!1815090 () Bool)

(assert (=> b!4400672 (=> (not res!1815090) (not e!2740125))))

(assert (=> b!4400672 (= res!1815090 (not (containsKey!933 (t!356336 lt!1605455) (_1!27733 (h!54903 lt!1605455)))))))

(declare-fun b!4400673 () Bool)

(assert (=> b!4400673 (= e!2740125 (noDuplicateKeys!627 (t!356336 lt!1605455)))))

(assert (= (and d!1326915 (not res!1815089)) b!4400672))

(assert (= (and b!4400672 res!1815090) b!4400673))

(declare-fun m!5063431 () Bool)

(assert (=> b!4400672 m!5063431))

(declare-fun m!5063433 () Bool)

(assert (=> b!4400673 m!5063433))

(assert (=> d!1326693 d!1326915))

(declare-fun bs!728296 () Bool)

(declare-fun b!4400698 () Bool)

(assert (= bs!728296 (and b!4400698 b!4400647)))

(declare-fun lambda!148858 () Int)

(assert (=> bs!728296 (= (= (t!356336 (toList!3238 lt!1605466)) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148858 lambda!148846))))

(declare-fun bs!728297 () Bool)

(assert (= bs!728297 (and b!4400698 b!4400658)))

(assert (=> bs!728297 (= (= (t!356336 (toList!3238 lt!1605466)) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (= lambda!148858 lambda!148848))))

(assert (=> b!4400698 true))

(declare-fun bs!728298 () Bool)

(declare-fun b!4400700 () Bool)

(assert (= bs!728298 (and b!4400700 b!4400647)))

(declare-fun lambda!148859 () Int)

(assert (=> bs!728298 (= (= (Cons!49278 (h!54903 (toList!3238 lt!1605466)) (t!356336 (toList!3238 lt!1605466))) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148859 lambda!148846))))

(declare-fun bs!728299 () Bool)

(assert (= bs!728299 (and b!4400700 b!4400658)))

(assert (=> bs!728299 (= (= (Cons!49278 (h!54903 (toList!3238 lt!1605466)) (t!356336 (toList!3238 lt!1605466))) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (= lambda!148859 lambda!148848))))

(declare-fun bs!728300 () Bool)

(assert (= bs!728300 (and b!4400700 b!4400698)))

(assert (=> bs!728300 (= (= (Cons!49278 (h!54903 (toList!3238 lt!1605466)) (t!356336 (toList!3238 lt!1605466))) (t!356336 (toList!3238 lt!1605466))) (= lambda!148859 lambda!148858))))

(assert (=> b!4400700 true))

(declare-fun bs!728301 () Bool)

(declare-fun b!4400697 () Bool)

(assert (= bs!728301 (and b!4400697 b!4400647)))

(declare-fun lambda!148860 () Int)

(assert (=> bs!728301 (= (= (toList!3238 lt!1605466) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148860 lambda!148846))))

(declare-fun bs!728302 () Bool)

(assert (= bs!728302 (and b!4400697 b!4400658)))

(assert (=> bs!728302 (= (= (toList!3238 lt!1605466) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (= lambda!148860 lambda!148848))))

(declare-fun bs!728303 () Bool)

(assert (= bs!728303 (and b!4400697 b!4400698)))

(assert (=> bs!728303 (= (= (toList!3238 lt!1605466) (t!356336 (toList!3238 lt!1605466))) (= lambda!148860 lambda!148858))))

(declare-fun bs!728304 () Bool)

(assert (= bs!728304 (and b!4400697 b!4400700)))

(assert (=> bs!728304 (= (= (toList!3238 lt!1605466) (Cons!49278 (h!54903 (toList!3238 lt!1605466)) (t!356336 (toList!3238 lt!1605466)))) (= lambda!148860 lambda!148859))))

(assert (=> b!4400697 true))

(declare-fun bs!728305 () Bool)

(declare-fun b!4400692 () Bool)

(assert (= bs!728305 (and b!4400692 b!4400648)))

(declare-fun lambda!148861 () Int)

(assert (=> bs!728305 (= lambda!148861 lambda!148847)))

(declare-fun bs!728306 () Bool)

(assert (= bs!728306 (and b!4400692 b!4400659)))

(assert (=> bs!728306 (= lambda!148861 lambda!148849)))

(declare-fun e!2740137 () Bool)

(declare-fun lt!1605743 () List!49405)

(assert (=> b!4400692 (= e!2740137 (= (content!7870 lt!1605743) (content!7870 (map!10748 (toList!3238 lt!1605466) lambda!148861))))))

(declare-fun b!4400693 () Bool)

(declare-fun e!2740136 () Unit!78751)

(declare-fun Unit!78784 () Unit!78751)

(assert (=> b!4400693 (= e!2740136 Unit!78784)))

(declare-fun b!4400694 () Bool)

(declare-fun e!2740134 () Unit!78751)

(declare-fun Unit!78785 () Unit!78751)

(assert (=> b!4400694 (= e!2740134 Unit!78785)))

(declare-fun b!4400695 () Bool)

(assert (=> b!4400695 false))

(declare-fun Unit!78786 () Unit!78751)

(assert (=> b!4400695 (= e!2740134 Unit!78786)))

(declare-fun d!1326917 () Bool)

(assert (=> d!1326917 e!2740137))

(declare-fun res!1815097 () Bool)

(assert (=> d!1326917 (=> (not res!1815097) (not e!2740137))))

(assert (=> d!1326917 (= res!1815097 (noDuplicate!638 lt!1605743))))

(declare-fun e!2740135 () List!49405)

(assert (=> d!1326917 (= lt!1605743 e!2740135)))

(declare-fun c!749203 () Bool)

(assert (=> d!1326917 (= c!749203 ((_ is Cons!49278) (toList!3238 lt!1605466)))))

(assert (=> d!1326917 (invariantList!750 (toList!3238 lt!1605466))))

(assert (=> d!1326917 (= (getKeysList!197 (toList!3238 lt!1605466)) lt!1605743)))

(declare-fun b!4400696 () Bool)

(assert (=> b!4400696 (= e!2740135 Nil!49281)))

(declare-fun res!1815098 () Bool)

(assert (=> b!4400697 (=> (not res!1815098) (not e!2740137))))

(assert (=> b!4400697 (= res!1815098 (forall!9368 lt!1605743 lambda!148860))))

(assert (=> b!4400698 false))

(declare-fun lt!1605740 () Unit!78751)

(declare-fun forallContained!2002 (List!49405 Int K!10635) Unit!78751)

(assert (=> b!4400698 (= lt!1605740 (forallContained!2002 (getKeysList!197 (t!356336 (toList!3238 lt!1605466))) lambda!148858 (_1!27733 (h!54903 (toList!3238 lt!1605466)))))))

(declare-fun Unit!78787 () Unit!78751)

(assert (=> b!4400698 (= e!2740136 Unit!78787)))

(declare-fun b!4400699 () Bool)

(declare-fun res!1815099 () Bool)

(assert (=> b!4400699 (=> (not res!1815099) (not e!2740137))))

(assert (=> b!4400699 (= res!1815099 (= (length!132 lt!1605743) (length!133 (toList!3238 lt!1605466))))))

(assert (=> b!4400700 (= e!2740135 (Cons!49281 (_1!27733 (h!54903 (toList!3238 lt!1605466))) (getKeysList!197 (t!356336 (toList!3238 lt!1605466)))))))

(declare-fun c!749205 () Bool)

(assert (=> b!4400700 (= c!749205 (containsKey!937 (t!356336 (toList!3238 lt!1605466)) (_1!27733 (h!54903 (toList!3238 lt!1605466)))))))

(declare-fun lt!1605744 () Unit!78751)

(assert (=> b!4400700 (= lt!1605744 e!2740134)))

(declare-fun c!749204 () Bool)

(assert (=> b!4400700 (= c!749204 (contains!11671 (getKeysList!197 (t!356336 (toList!3238 lt!1605466))) (_1!27733 (h!54903 (toList!3238 lt!1605466)))))))

(declare-fun lt!1605741 () Unit!78751)

(assert (=> b!4400700 (= lt!1605741 e!2740136)))

(declare-fun lt!1605739 () List!49405)

(assert (=> b!4400700 (= lt!1605739 (getKeysList!197 (t!356336 (toList!3238 lt!1605466))))))

(declare-fun lt!1605742 () Unit!78751)

(declare-fun lemmaForallContainsAddHeadPreserves!60 (List!49402 List!49405 tuple2!48878) Unit!78751)

(assert (=> b!4400700 (= lt!1605742 (lemmaForallContainsAddHeadPreserves!60 (t!356336 (toList!3238 lt!1605466)) lt!1605739 (h!54903 (toList!3238 lt!1605466))))))

(assert (=> b!4400700 (forall!9368 lt!1605739 lambda!148859)))

(declare-fun lt!1605745 () Unit!78751)

(assert (=> b!4400700 (= lt!1605745 lt!1605742)))

(assert (= (and d!1326917 c!749203) b!4400700))

(assert (= (and d!1326917 (not c!749203)) b!4400696))

(assert (= (and b!4400700 c!749205) b!4400695))

(assert (= (and b!4400700 (not c!749205)) b!4400694))

(assert (= (and b!4400700 c!749204) b!4400698))

(assert (= (and b!4400700 (not c!749204)) b!4400693))

(assert (= (and d!1326917 res!1815097) b!4400699))

(assert (= (and b!4400699 res!1815099) b!4400697))

(assert (= (and b!4400697 res!1815098) b!4400692))

(declare-fun m!5063435 () Bool)

(assert (=> b!4400697 m!5063435))

(declare-fun m!5063437 () Bool)

(assert (=> b!4400692 m!5063437))

(declare-fun m!5063439 () Bool)

(assert (=> b!4400692 m!5063439))

(assert (=> b!4400692 m!5063439))

(declare-fun m!5063441 () Bool)

(assert (=> b!4400692 m!5063441))

(declare-fun m!5063443 () Bool)

(assert (=> b!4400698 m!5063443))

(assert (=> b!4400698 m!5063443))

(declare-fun m!5063445 () Bool)

(assert (=> b!4400698 m!5063445))

(declare-fun m!5063447 () Bool)

(assert (=> d!1326917 m!5063447))

(declare-fun m!5063449 () Bool)

(assert (=> d!1326917 m!5063449))

(declare-fun m!5063451 () Bool)

(assert (=> b!4400699 m!5063451))

(declare-fun m!5063453 () Bool)

(assert (=> b!4400699 m!5063453))

(declare-fun m!5063455 () Bool)

(assert (=> b!4400700 m!5063455))

(declare-fun m!5063457 () Bool)

(assert (=> b!4400700 m!5063457))

(assert (=> b!4400700 m!5063443))

(declare-fun m!5063459 () Bool)

(assert (=> b!4400700 m!5063459))

(declare-fun m!5063461 () Bool)

(assert (=> b!4400700 m!5063461))

(assert (=> b!4400700 m!5063443))

(assert (=> b!4400429 d!1326917))

(declare-fun d!1326919 () Bool)

(assert (=> d!1326919 (dynLambda!20762 lambda!148789 lt!1605462)))

(assert (=> d!1326919 true))

(declare-fun _$7!1609 () Unit!78751)

(assert (=> d!1326919 (= (choose!27582 (toList!3237 lt!1605458) lambda!148789 lt!1605462) _$7!1609)))

(declare-fun b_lambda!139759 () Bool)

(assert (=> (not b_lambda!139759) (not d!1326919)))

(declare-fun bs!728307 () Bool)

(assert (= bs!728307 d!1326919))

(assert (=> bs!728307 m!5062833))

(assert (=> d!1326673 d!1326919))

(assert (=> d!1326673 d!1326781))

(declare-fun d!1326921 () Bool)

(declare-fun res!1815100 () Bool)

(declare-fun e!2740138 () Bool)

(assert (=> d!1326921 (=> res!1815100 e!2740138)))

(assert (=> d!1326921 (= res!1815100 (and ((_ is Cons!49278) (t!356336 (_2!27734 (h!54904 (toList!3237 lm!1707))))) (= (_1!27733 (h!54903 (t!356336 (_2!27734 (h!54904 (toList!3237 lm!1707)))))) key!3918)))))

(assert (=> d!1326921 (= (containsKey!933 (t!356336 (_2!27734 (h!54904 (toList!3237 lm!1707)))) key!3918) e!2740138)))

(declare-fun b!4400703 () Bool)

(declare-fun e!2740139 () Bool)

(assert (=> b!4400703 (= e!2740138 e!2740139)))

(declare-fun res!1815101 () Bool)

(assert (=> b!4400703 (=> (not res!1815101) (not e!2740139))))

(assert (=> b!4400703 (= res!1815101 ((_ is Cons!49278) (t!356336 (_2!27734 (h!54904 (toList!3237 lm!1707))))))))

(declare-fun b!4400704 () Bool)

(assert (=> b!4400704 (= e!2740139 (containsKey!933 (t!356336 (t!356336 (_2!27734 (h!54904 (toList!3237 lm!1707))))) key!3918))))

(assert (= (and d!1326921 (not res!1815100)) b!4400703))

(assert (= (and b!4400703 res!1815101) b!4400704))

(declare-fun m!5063463 () Bool)

(assert (=> b!4400704 m!5063463))

(assert (=> b!4400298 d!1326921))

(declare-fun d!1326923 () Bool)

(declare-fun res!1815102 () Bool)

(declare-fun e!2740140 () Bool)

(assert (=> d!1326923 (=> res!1815102 e!2740140)))

(assert (=> d!1326923 (= res!1815102 (and ((_ is Cons!49278) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (= (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) key!3918)))))

(assert (=> d!1326923 (= (containsKey!937 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918) e!2740140)))

(declare-fun b!4400705 () Bool)

(declare-fun e!2740141 () Bool)

(assert (=> b!4400705 (= e!2740140 e!2740141)))

(declare-fun res!1815103 () Bool)

(assert (=> b!4400705 (=> (not res!1815103) (not e!2740141))))

(assert (=> b!4400705 (= res!1815103 ((_ is Cons!49278) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))))))

(declare-fun b!4400706 () Bool)

(assert (=> b!4400706 (= e!2740141 (containsKey!937 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) key!3918))))

(assert (= (and d!1326923 (not res!1815102)) b!4400705))

(assert (= (and b!4400705 res!1815103) b!4400706))

(declare-fun m!5063465 () Bool)

(assert (=> b!4400706 m!5063465))

(assert (=> b!4400471 d!1326923))

(declare-fun d!1326925 () Bool)

(assert (=> d!1326925 (containsKey!937 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918)))

(declare-fun lt!1605748 () Unit!78751)

(declare-fun choose!27590 (List!49402 K!10635) Unit!78751)

(assert (=> d!1326925 (= lt!1605748 (choose!27590 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918))))

(assert (=> d!1326925 (invariantList!750 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))))

(assert (=> d!1326925 (= (lemmaInGetKeysListThenContainsKey!195 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918) lt!1605748)))

(declare-fun bs!728308 () Bool)

(assert (= bs!728308 d!1326925))

(assert (=> bs!728308 m!5063175))

(declare-fun m!5063467 () Bool)

(assert (=> bs!728308 m!5063467))

(declare-fun m!5063469 () Bool)

(assert (=> bs!728308 m!5063469))

(assert (=> b!4400471 d!1326925))

(declare-fun d!1326927 () Bool)

(declare-fun isEmpty!28283 (Option!10612) Bool)

(assert (=> d!1326927 (= (isDefined!7905 (getValueByKey!598 (toList!3237 lt!1605458) hash!377)) (not (isEmpty!28283 (getValueByKey!598 (toList!3237 lt!1605458) hash!377))))))

(declare-fun bs!728309 () Bool)

(assert (= bs!728309 d!1326927))

(assert (=> bs!728309 m!5062759))

(declare-fun m!5063471 () Bool)

(assert (=> bs!728309 m!5063471))

(assert (=> b!4400270 d!1326927))

(declare-fun b!4400716 () Bool)

(declare-fun e!2740146 () Option!10612)

(declare-fun e!2740147 () Option!10612)

(assert (=> b!4400716 (= e!2740146 e!2740147)))

(declare-fun c!749211 () Bool)

(assert (=> b!4400716 (= c!749211 (and ((_ is Cons!49279) (toList!3237 lt!1605458)) (not (= (_1!27734 (h!54904 (toList!3237 lt!1605458))) hash!377))))))

(declare-fun b!4400715 () Bool)

(assert (=> b!4400715 (= e!2740146 (Some!10611 (_2!27734 (h!54904 (toList!3237 lt!1605458)))))))

(declare-fun d!1326929 () Bool)

(declare-fun c!749210 () Bool)

(assert (=> d!1326929 (= c!749210 (and ((_ is Cons!49279) (toList!3237 lt!1605458)) (= (_1!27734 (h!54904 (toList!3237 lt!1605458))) hash!377)))))

(assert (=> d!1326929 (= (getValueByKey!598 (toList!3237 lt!1605458) hash!377) e!2740146)))

(declare-fun b!4400718 () Bool)

(assert (=> b!4400718 (= e!2740147 None!10611)))

(declare-fun b!4400717 () Bool)

(assert (=> b!4400717 (= e!2740147 (getValueByKey!598 (t!356337 (toList!3237 lt!1605458)) hash!377))))

(assert (= (and d!1326929 c!749210) b!4400715))

(assert (= (and d!1326929 (not c!749210)) b!4400716))

(assert (= (and b!4400716 c!749211) b!4400717))

(assert (= (and b!4400716 (not c!749211)) b!4400718))

(declare-fun m!5063473 () Bool)

(assert (=> b!4400717 m!5063473))

(assert (=> b!4400270 d!1326929))

(declare-fun d!1326931 () Bool)

(declare-fun res!1815104 () Bool)

(declare-fun e!2740148 () Bool)

(assert (=> d!1326931 (=> res!1815104 e!2740148)))

(assert (=> d!1326931 (= res!1815104 ((_ is Nil!49279) (t!356337 (toList!3237 lt!1605452))))))

(assert (=> d!1326931 (= (forall!9364 (t!356337 (toList!3237 lt!1605452)) lambda!148789) e!2740148)))

(declare-fun b!4400719 () Bool)

(declare-fun e!2740149 () Bool)

(assert (=> b!4400719 (= e!2740148 e!2740149)))

(declare-fun res!1815105 () Bool)

(assert (=> b!4400719 (=> (not res!1815105) (not e!2740149))))

(assert (=> b!4400719 (= res!1815105 (dynLambda!20762 lambda!148789 (h!54904 (t!356337 (toList!3237 lt!1605452)))))))

(declare-fun b!4400720 () Bool)

(assert (=> b!4400720 (= e!2740149 (forall!9364 (t!356337 (t!356337 (toList!3237 lt!1605452))) lambda!148789))))

(assert (= (and d!1326931 (not res!1815104)) b!4400719))

(assert (= (and b!4400719 res!1815105) b!4400720))

(declare-fun b_lambda!139761 () Bool)

(assert (=> (not b_lambda!139761) (not b!4400719)))

(declare-fun m!5063475 () Bool)

(assert (=> b!4400719 m!5063475))

(declare-fun m!5063477 () Bool)

(assert (=> b!4400720 m!5063477))

(assert (=> b!4400290 d!1326931))

(declare-fun d!1326933 () Bool)

(assert (=> d!1326933 (isDefined!7905 (getValueByKey!598 (toList!3237 lt!1605458) hash!377))))

(declare-fun lt!1605751 () Unit!78751)

(declare-fun choose!27591 (List!49403 (_ BitVec 64)) Unit!78751)

(assert (=> d!1326933 (= lt!1605751 (choose!27591 (toList!3237 lt!1605458) hash!377))))

(declare-fun e!2740152 () Bool)

(assert (=> d!1326933 e!2740152))

(declare-fun res!1815108 () Bool)

(assert (=> d!1326933 (=> (not res!1815108) (not e!2740152))))

(assert (=> d!1326933 (= res!1815108 (isStrictlySorted!176 (toList!3237 lt!1605458)))))

(assert (=> d!1326933 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!508 (toList!3237 lt!1605458) hash!377) lt!1605751)))

(declare-fun b!4400723 () Bool)

(assert (=> b!4400723 (= e!2740152 (containsKey!936 (toList!3237 lt!1605458) hash!377))))

(assert (= (and d!1326933 res!1815108) b!4400723))

(assert (=> d!1326933 m!5062759))

(assert (=> d!1326933 m!5062759))

(assert (=> d!1326933 m!5062859))

(declare-fun m!5063479 () Bool)

(assert (=> d!1326933 m!5063479))

(assert (=> d!1326933 m!5062801))

(assert (=> b!4400723 m!5062855))

(assert (=> b!4400268 d!1326933))

(assert (=> b!4400268 d!1326927))

(assert (=> b!4400268 d!1326929))

(declare-fun lt!1605752 () Bool)

(declare-fun d!1326935 () Bool)

(assert (=> d!1326935 (= lt!1605752 (select (content!7868 (toList!3237 lt!1605579)) (tuple2!48881 hash!377 newBucket!200)))))

(declare-fun e!2740153 () Bool)

(assert (=> d!1326935 (= lt!1605752 e!2740153)))

(declare-fun res!1815109 () Bool)

(assert (=> d!1326935 (=> (not res!1815109) (not e!2740153))))

(assert (=> d!1326935 (= res!1815109 ((_ is Cons!49279) (toList!3237 lt!1605579)))))

(assert (=> d!1326935 (= (contains!11667 (toList!3237 lt!1605579) (tuple2!48881 hash!377 newBucket!200)) lt!1605752)))

(declare-fun b!4400724 () Bool)

(declare-fun e!2740154 () Bool)

(assert (=> b!4400724 (= e!2740153 e!2740154)))

(declare-fun res!1815110 () Bool)

(assert (=> b!4400724 (=> res!1815110 e!2740154)))

(assert (=> b!4400724 (= res!1815110 (= (h!54904 (toList!3237 lt!1605579)) (tuple2!48881 hash!377 newBucket!200)))))

(declare-fun b!4400725 () Bool)

(assert (=> b!4400725 (= e!2740154 (contains!11667 (t!356337 (toList!3237 lt!1605579)) (tuple2!48881 hash!377 newBucket!200)))))

(assert (= (and d!1326935 res!1815109) b!4400724))

(assert (= (and b!4400724 (not res!1815110)) b!4400725))

(declare-fun m!5063481 () Bool)

(assert (=> d!1326935 m!5063481))

(declare-fun m!5063483 () Bool)

(assert (=> d!1326935 m!5063483))

(declare-fun m!5063485 () Bool)

(assert (=> b!4400725 m!5063485))

(assert (=> b!4400340 d!1326935))

(declare-fun d!1326937 () Bool)

(declare-fun noDuplicatedKeys!154 (List!49402) Bool)

(assert (=> d!1326937 (= (invariantList!750 (toList!3238 lt!1605670)) (noDuplicatedKeys!154 (toList!3238 lt!1605670)))))

(declare-fun bs!728310 () Bool)

(assert (= bs!728310 d!1326937))

(declare-fun m!5063487 () Bool)

(assert (=> bs!728310 m!5063487))

(assert (=> d!1326799 d!1326937))

(declare-fun d!1326939 () Bool)

(declare-fun res!1815111 () Bool)

(declare-fun e!2740155 () Bool)

(assert (=> d!1326939 (=> res!1815111 e!2740155)))

(assert (=> d!1326939 (= res!1815111 ((_ is Nil!49279) (toList!3237 lm!1707)))))

(assert (=> d!1326939 (= (forall!9364 (toList!3237 lm!1707) lambda!148819) e!2740155)))

(declare-fun b!4400726 () Bool)

(declare-fun e!2740156 () Bool)

(assert (=> b!4400726 (= e!2740155 e!2740156)))

(declare-fun res!1815112 () Bool)

(assert (=> b!4400726 (=> (not res!1815112) (not e!2740156))))

(assert (=> b!4400726 (= res!1815112 (dynLambda!20762 lambda!148819 (h!54904 (toList!3237 lm!1707))))))

(declare-fun b!4400727 () Bool)

(assert (=> b!4400727 (= e!2740156 (forall!9364 (t!356337 (toList!3237 lm!1707)) lambda!148819))))

(assert (= (and d!1326939 (not res!1815111)) b!4400726))

(assert (= (and b!4400726 res!1815112) b!4400727))

(declare-fun b_lambda!139763 () Bool)

(assert (=> (not b_lambda!139763) (not b!4400726)))

(declare-fun m!5063489 () Bool)

(assert (=> b!4400726 m!5063489))

(declare-fun m!5063491 () Bool)

(assert (=> b!4400727 m!5063491))

(assert (=> d!1326799 d!1326939))

(declare-fun d!1326941 () Bool)

(declare-fun res!1815113 () Bool)

(declare-fun e!2740157 () Bool)

(assert (=> d!1326941 (=> res!1815113 e!2740157)))

(assert (=> d!1326941 (= res!1815113 (and ((_ is Cons!49278) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) key!3918)))))

(assert (=> d!1326941 (= (containsKey!937 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918) e!2740157)))

(declare-fun b!4400728 () Bool)

(declare-fun e!2740158 () Bool)

(assert (=> b!4400728 (= e!2740157 e!2740158)))

(declare-fun res!1815114 () Bool)

(assert (=> b!4400728 (=> (not res!1815114) (not e!2740158))))

(assert (=> b!4400728 (= res!1815114 ((_ is Cons!49278) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))))

(declare-fun b!4400729 () Bool)

(assert (=> b!4400729 (= e!2740158 (containsKey!937 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) key!3918))))

(assert (= (and d!1326941 (not res!1815113)) b!4400728))

(assert (= (and b!4400728 res!1815114) b!4400729))

(declare-fun m!5063493 () Bool)

(assert (=> b!4400729 m!5063493))

(assert (=> b!4400444 d!1326941))

(declare-fun d!1326943 () Bool)

(assert (=> d!1326943 (containsKey!937 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918)))

(declare-fun lt!1605753 () Unit!78751)

(assert (=> d!1326943 (= lt!1605753 (choose!27590 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918))))

(assert (=> d!1326943 (invariantList!750 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))))

(assert (=> d!1326943 (= (lemmaInGetKeysListThenContainsKey!195 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918) lt!1605753)))

(declare-fun bs!728311 () Bool)

(assert (= bs!728311 d!1326943))

(assert (=> bs!728311 m!5063137))

(declare-fun m!5063495 () Bool)

(assert (=> bs!728311 m!5063495))

(declare-fun m!5063497 () Bool)

(assert (=> bs!728311 m!5063497))

(assert (=> b!4400444 d!1326943))

(declare-fun d!1326945 () Bool)

(declare-fun res!1815119 () Bool)

(declare-fun e!2740163 () Bool)

(assert (=> d!1326945 (=> res!1815119 e!2740163)))

(assert (=> d!1326945 (= res!1815119 ((_ is Nil!49278) newBucket!200))))

(assert (=> d!1326945 (= (forall!9366 newBucket!200 lambda!148818) e!2740163)))

(declare-fun b!4400734 () Bool)

(declare-fun e!2740164 () Bool)

(assert (=> b!4400734 (= e!2740163 e!2740164)))

(declare-fun res!1815120 () Bool)

(assert (=> b!4400734 (=> (not res!1815120) (not e!2740164))))

(declare-fun dynLambda!20763 (Int tuple2!48878) Bool)

(assert (=> b!4400734 (= res!1815120 (dynLambda!20763 lambda!148818 (h!54903 newBucket!200)))))

(declare-fun b!4400735 () Bool)

(assert (=> b!4400735 (= e!2740164 (forall!9366 (t!356336 newBucket!200) lambda!148818))))

(assert (= (and d!1326945 (not res!1815119)) b!4400734))

(assert (= (and b!4400734 res!1815120) b!4400735))

(declare-fun b_lambda!139765 () Bool)

(assert (=> (not b_lambda!139765) (not b!4400734)))

(declare-fun m!5063499 () Bool)

(assert (=> b!4400734 m!5063499))

(declare-fun m!5063501 () Bool)

(assert (=> b!4400735 m!5063501))

(assert (=> d!1326795 d!1326945))

(declare-fun d!1326947 () Bool)

(declare-fun lt!1605754 () Bool)

(assert (=> d!1326947 (= lt!1605754 (select (content!7868 (t!356337 (toList!3237 lt!1605458))) lt!1605462))))

(declare-fun e!2740165 () Bool)

(assert (=> d!1326947 (= lt!1605754 e!2740165)))

(declare-fun res!1815121 () Bool)

(assert (=> d!1326947 (=> (not res!1815121) (not e!2740165))))

(assert (=> d!1326947 (= res!1815121 ((_ is Cons!49279) (t!356337 (toList!3237 lt!1605458))))))

(assert (=> d!1326947 (= (contains!11667 (t!356337 (toList!3237 lt!1605458)) lt!1605462) lt!1605754)))

(declare-fun b!4400736 () Bool)

(declare-fun e!2740166 () Bool)

(assert (=> b!4400736 (= e!2740165 e!2740166)))

(declare-fun res!1815122 () Bool)

(assert (=> b!4400736 (=> res!1815122 e!2740166)))

(assert (=> b!4400736 (= res!1815122 (= (h!54904 (t!356337 (toList!3237 lt!1605458))) lt!1605462))))

(declare-fun b!4400737 () Bool)

(assert (=> b!4400737 (= e!2740166 (contains!11667 (t!356337 (t!356337 (toList!3237 lt!1605458))) lt!1605462))))

(assert (= (and d!1326947 res!1815121) b!4400736))

(assert (= (and b!4400736 (not res!1815122)) b!4400737))

(declare-fun m!5063503 () Bool)

(assert (=> d!1326947 m!5063503))

(declare-fun m!5063505 () Bool)

(assert (=> d!1326947 m!5063505))

(declare-fun m!5063507 () Bool)

(assert (=> b!4400737 m!5063507))

(assert (=> b!4400190 d!1326947))

(declare-fun d!1326949 () Bool)

(declare-fun res!1815127 () Bool)

(declare-fun e!2740171 () Bool)

(assert (=> d!1326949 (=> res!1815127 e!2740171)))

(assert (=> d!1326949 (= res!1815127 (and ((_ is Cons!49279) (toList!3237 lt!1605458)) (= (_1!27734 (h!54904 (toList!3237 lt!1605458))) hash!377)))))

(assert (=> d!1326949 (= (containsKey!936 (toList!3237 lt!1605458) hash!377) e!2740171)))

(declare-fun b!4400742 () Bool)

(declare-fun e!2740172 () Bool)

(assert (=> b!4400742 (= e!2740171 e!2740172)))

(declare-fun res!1815128 () Bool)

(assert (=> b!4400742 (=> (not res!1815128) (not e!2740172))))

(assert (=> b!4400742 (= res!1815128 (and (or (not ((_ is Cons!49279) (toList!3237 lt!1605458))) (bvsle (_1!27734 (h!54904 (toList!3237 lt!1605458))) hash!377)) ((_ is Cons!49279) (toList!3237 lt!1605458)) (bvslt (_1!27734 (h!54904 (toList!3237 lt!1605458))) hash!377)))))

(declare-fun b!4400743 () Bool)

(assert (=> b!4400743 (= e!2740172 (containsKey!936 (t!356337 (toList!3237 lt!1605458)) hash!377))))

(assert (= (and d!1326949 (not res!1815127)) b!4400742))

(assert (= (and b!4400742 res!1815128) b!4400743))

(declare-fun m!5063509 () Bool)

(assert (=> b!4400743 m!5063509))

(assert (=> d!1326677 d!1326949))

(declare-fun d!1326951 () Bool)

(declare-fun res!1815129 () Bool)

(declare-fun e!2740173 () Bool)

(assert (=> d!1326951 (=> res!1815129 e!2740173)))

(assert (=> d!1326951 (= res!1815129 (and ((_ is Cons!49278) lt!1605491) (= (_1!27733 (h!54903 lt!1605491)) key!3918)))))

(assert (=> d!1326951 (= (containsKey!933 lt!1605491 key!3918) e!2740173)))

(declare-fun b!4400744 () Bool)

(declare-fun e!2740174 () Bool)

(assert (=> b!4400744 (= e!2740173 e!2740174)))

(declare-fun res!1815130 () Bool)

(assert (=> b!4400744 (=> (not res!1815130) (not e!2740174))))

(assert (=> b!4400744 (= res!1815130 ((_ is Cons!49278) lt!1605491))))

(declare-fun b!4400745 () Bool)

(assert (=> b!4400745 (= e!2740174 (containsKey!933 (t!356336 lt!1605491) key!3918))))

(assert (= (and d!1326951 (not res!1815129)) b!4400744))

(assert (= (and b!4400744 res!1815130) b!4400745))

(declare-fun m!5063511 () Bool)

(assert (=> b!4400745 m!5063511))

(assert (=> d!1326663 d!1326951))

(declare-fun d!1326953 () Bool)

(declare-fun res!1815131 () Bool)

(declare-fun e!2740175 () Bool)

(assert (=> d!1326953 (=> res!1815131 e!2740175)))

(assert (=> d!1326953 (= res!1815131 (not ((_ is Cons!49278) lt!1605465)))))

(assert (=> d!1326953 (= (noDuplicateKeys!627 lt!1605465) e!2740175)))

(declare-fun b!4400746 () Bool)

(declare-fun e!2740176 () Bool)

(assert (=> b!4400746 (= e!2740175 e!2740176)))

(declare-fun res!1815132 () Bool)

(assert (=> b!4400746 (=> (not res!1815132) (not e!2740176))))

(assert (=> b!4400746 (= res!1815132 (not (containsKey!933 (t!356336 lt!1605465) (_1!27733 (h!54903 lt!1605465)))))))

(declare-fun b!4400747 () Bool)

(assert (=> b!4400747 (= e!2740176 (noDuplicateKeys!627 (t!356336 lt!1605465)))))

(assert (= (and d!1326953 (not res!1815131)) b!4400746))

(assert (= (and b!4400746 res!1815132) b!4400747))

(declare-fun m!5063513 () Bool)

(assert (=> b!4400746 m!5063513))

(declare-fun m!5063515 () Bool)

(assert (=> b!4400747 m!5063515))

(assert (=> d!1326663 d!1326953))

(declare-fun d!1326955 () Bool)

(declare-fun e!2740177 () Bool)

(assert (=> d!1326955 e!2740177))

(declare-fun res!1815133 () Bool)

(assert (=> d!1326955 (=> res!1815133 e!2740177)))

(declare-fun lt!1605758 () Bool)

(assert (=> d!1326955 (= res!1815133 (not lt!1605758))))

(declare-fun lt!1605755 () Bool)

(assert (=> d!1326955 (= lt!1605758 lt!1605755)))

(declare-fun lt!1605757 () Unit!78751)

(declare-fun e!2740178 () Unit!78751)

(assert (=> d!1326955 (= lt!1605757 e!2740178)))

(declare-fun c!749212 () Bool)

(assert (=> d!1326955 (= c!749212 lt!1605755)))

(assert (=> d!1326955 (= lt!1605755 (containsKey!936 (toList!3237 lt!1605579) (_1!27734 (tuple2!48881 hash!377 newBucket!200))))))

(assert (=> d!1326955 (= (contains!11668 lt!1605579 (_1!27734 (tuple2!48881 hash!377 newBucket!200))) lt!1605758)))

(declare-fun b!4400748 () Bool)

(declare-fun lt!1605756 () Unit!78751)

(assert (=> b!4400748 (= e!2740178 lt!1605756)))

(assert (=> b!4400748 (= lt!1605756 (lemmaContainsKeyImpliesGetValueByKeyDefined!508 (toList!3237 lt!1605579) (_1!27734 (tuple2!48881 hash!377 newBucket!200))))))

(assert (=> b!4400748 (isDefined!7905 (getValueByKey!598 (toList!3237 lt!1605579) (_1!27734 (tuple2!48881 hash!377 newBucket!200))))))

(declare-fun b!4400749 () Bool)

(declare-fun Unit!78799 () Unit!78751)

(assert (=> b!4400749 (= e!2740178 Unit!78799)))

(declare-fun b!4400750 () Bool)

(assert (=> b!4400750 (= e!2740177 (isDefined!7905 (getValueByKey!598 (toList!3237 lt!1605579) (_1!27734 (tuple2!48881 hash!377 newBucket!200)))))))

(assert (= (and d!1326955 c!749212) b!4400748))

(assert (= (and d!1326955 (not c!749212)) b!4400749))

(assert (= (and d!1326955 (not res!1815133)) b!4400750))

(declare-fun m!5063517 () Bool)

(assert (=> d!1326955 m!5063517))

(declare-fun m!5063519 () Bool)

(assert (=> b!4400748 m!5063519))

(assert (=> b!4400748 m!5062951))

(assert (=> b!4400748 m!5062951))

(declare-fun m!5063521 () Bool)

(assert (=> b!4400748 m!5063521))

(assert (=> b!4400750 m!5062951))

(assert (=> b!4400750 m!5062951))

(assert (=> b!4400750 m!5063521))

(assert (=> d!1326703 d!1326955))

(declare-fun b!4400754 () Bool)

(declare-fun e!2740179 () Option!10612)

(declare-fun e!2740180 () Option!10612)

(assert (=> b!4400754 (= e!2740179 e!2740180)))

(declare-fun c!749214 () Bool)

(assert (=> b!4400754 (= c!749214 (and ((_ is Cons!49279) lt!1605581) (not (= (_1!27734 (h!54904 lt!1605581)) (_1!27734 (tuple2!48881 hash!377 newBucket!200))))))))

(declare-fun b!4400753 () Bool)

(assert (=> b!4400753 (= e!2740179 (Some!10611 (_2!27734 (h!54904 lt!1605581))))))

(declare-fun c!749213 () Bool)

(declare-fun d!1326957 () Bool)

(assert (=> d!1326957 (= c!749213 (and ((_ is Cons!49279) lt!1605581) (= (_1!27734 (h!54904 lt!1605581)) (_1!27734 (tuple2!48881 hash!377 newBucket!200)))))))

(assert (=> d!1326957 (= (getValueByKey!598 lt!1605581 (_1!27734 (tuple2!48881 hash!377 newBucket!200))) e!2740179)))

(declare-fun b!4400756 () Bool)

(assert (=> b!4400756 (= e!2740180 None!10611)))

(declare-fun b!4400755 () Bool)

(assert (=> b!4400755 (= e!2740180 (getValueByKey!598 (t!356337 lt!1605581) (_1!27734 (tuple2!48881 hash!377 newBucket!200))))))

(assert (= (and d!1326957 c!749213) b!4400753))

(assert (= (and d!1326957 (not c!749213)) b!4400754))

(assert (= (and b!4400754 c!749214) b!4400755))

(assert (= (and b!4400754 (not c!749214)) b!4400756))

(declare-fun m!5063523 () Bool)

(assert (=> b!4400755 m!5063523))

(assert (=> d!1326703 d!1326957))

(declare-fun d!1326959 () Bool)

(assert (=> d!1326959 (= (getValueByKey!598 lt!1605581 (_1!27734 (tuple2!48881 hash!377 newBucket!200))) (Some!10611 (_2!27734 (tuple2!48881 hash!377 newBucket!200))))))

(declare-fun lt!1605779 () Unit!78751)

(declare-fun choose!27592 (List!49403 (_ BitVec 64) List!49402) Unit!78751)

(assert (=> d!1326959 (= lt!1605779 (choose!27592 lt!1605581 (_1!27734 (tuple2!48881 hash!377 newBucket!200)) (_2!27734 (tuple2!48881 hash!377 newBucket!200))))))

(declare-fun e!2740185 () Bool)

(assert (=> d!1326959 e!2740185))

(declare-fun res!1815138 () Bool)

(assert (=> d!1326959 (=> (not res!1815138) (not e!2740185))))

(assert (=> d!1326959 (= res!1815138 (isStrictlySorted!176 lt!1605581))))

(assert (=> d!1326959 (= (lemmaContainsTupThenGetReturnValue!345 lt!1605581 (_1!27734 (tuple2!48881 hash!377 newBucket!200)) (_2!27734 (tuple2!48881 hash!377 newBucket!200))) lt!1605779)))

(declare-fun b!4400763 () Bool)

(declare-fun res!1815139 () Bool)

(assert (=> b!4400763 (=> (not res!1815139) (not e!2740185))))

(assert (=> b!4400763 (= res!1815139 (containsKey!936 lt!1605581 (_1!27734 (tuple2!48881 hash!377 newBucket!200))))))

(declare-fun b!4400764 () Bool)

(assert (=> b!4400764 (= e!2740185 (contains!11667 lt!1605581 (tuple2!48881 (_1!27734 (tuple2!48881 hash!377 newBucket!200)) (_2!27734 (tuple2!48881 hash!377 newBucket!200)))))))

(assert (= (and d!1326959 res!1815138) b!4400763))

(assert (= (and b!4400763 res!1815139) b!4400764))

(assert (=> d!1326959 m!5062945))

(declare-fun m!5063525 () Bool)

(assert (=> d!1326959 m!5063525))

(declare-fun m!5063527 () Bool)

(assert (=> d!1326959 m!5063527))

(declare-fun m!5063529 () Bool)

(assert (=> b!4400763 m!5063529))

(declare-fun m!5063531 () Bool)

(assert (=> b!4400764 m!5063531))

(assert (=> d!1326703 d!1326959))

(declare-fun b!4400789 () Bool)

(declare-fun e!2740203 () List!49403)

(declare-fun e!2740201 () List!49403)

(assert (=> b!4400789 (= e!2740203 e!2740201)))

(declare-fun c!749228 () Bool)

(assert (=> b!4400789 (= c!749228 (and ((_ is Cons!49279) (toList!3237 lm!1707)) (= (_1!27734 (h!54904 (toList!3237 lm!1707))) (_1!27734 (tuple2!48881 hash!377 newBucket!200)))))))

(declare-fun bm!306229 () Bool)

(declare-fun call!306235 () List!49403)

(declare-fun call!306234 () List!49403)

(assert (=> bm!306229 (= call!306235 call!306234)))

(declare-fun b!4400790 () Bool)

(declare-fun e!2740204 () List!49403)

(declare-fun call!306236 () List!49403)

(assert (=> b!4400790 (= e!2740204 call!306236)))

(declare-fun c!749227 () Bool)

(declare-fun b!4400791 () Bool)

(declare-fun e!2740202 () List!49403)

(assert (=> b!4400791 (= e!2740202 (ite c!749228 (t!356337 (toList!3237 lm!1707)) (ite c!749227 (Cons!49279 (h!54904 (toList!3237 lm!1707)) (t!356337 (toList!3237 lm!1707))) Nil!49279)))))

(declare-fun e!2740200 () Bool)

(declare-fun lt!1605806 () List!49403)

(declare-fun b!4400792 () Bool)

(assert (=> b!4400792 (= e!2740200 (contains!11667 lt!1605806 (tuple2!48881 (_1!27734 (tuple2!48881 hash!377 newBucket!200)) (_2!27734 (tuple2!48881 hash!377 newBucket!200)))))))

(declare-fun b!4400793 () Bool)

(assert (=> b!4400793 (= e!2740203 call!306234)))

(declare-fun b!4400794 () Bool)

(assert (=> b!4400794 (= e!2740201 call!306235)))

(declare-fun d!1326961 () Bool)

(assert (=> d!1326961 e!2740200))

(declare-fun res!1815151 () Bool)

(assert (=> d!1326961 (=> (not res!1815151) (not e!2740200))))

(assert (=> d!1326961 (= res!1815151 (isStrictlySorted!176 lt!1605806))))

(assert (=> d!1326961 (= lt!1605806 e!2740203)))

(declare-fun c!749225 () Bool)

(assert (=> d!1326961 (= c!749225 (and ((_ is Cons!49279) (toList!3237 lm!1707)) (bvslt (_1!27734 (h!54904 (toList!3237 lm!1707))) (_1!27734 (tuple2!48881 hash!377 newBucket!200)))))))

(assert (=> d!1326961 (isStrictlySorted!176 (toList!3237 lm!1707))))

(assert (=> d!1326961 (= (insertStrictlySorted!204 (toList!3237 lm!1707) (_1!27734 (tuple2!48881 hash!377 newBucket!200)) (_2!27734 (tuple2!48881 hash!377 newBucket!200))) lt!1605806)))

(declare-fun b!4400795 () Bool)

(assert (=> b!4400795 (= e!2740202 (insertStrictlySorted!204 (t!356337 (toList!3237 lm!1707)) (_1!27734 (tuple2!48881 hash!377 newBucket!200)) (_2!27734 (tuple2!48881 hash!377 newBucket!200))))))

(declare-fun b!4400796 () Bool)

(assert (=> b!4400796 (= e!2740204 call!306236)))

(declare-fun bm!306230 () Bool)

(assert (=> bm!306230 (= call!306236 call!306235)))

(declare-fun b!4400797 () Bool)

(assert (=> b!4400797 (= c!749227 (and ((_ is Cons!49279) (toList!3237 lm!1707)) (bvsgt (_1!27734 (h!54904 (toList!3237 lm!1707))) (_1!27734 (tuple2!48881 hash!377 newBucket!200)))))))

(assert (=> b!4400797 (= e!2740201 e!2740204)))

(declare-fun bm!306231 () Bool)

(declare-fun $colon$colon!750 (List!49403 tuple2!48880) List!49403)

(assert (=> bm!306231 (= call!306234 ($colon$colon!750 e!2740202 (ite c!749225 (h!54904 (toList!3237 lm!1707)) (tuple2!48881 (_1!27734 (tuple2!48881 hash!377 newBucket!200)) (_2!27734 (tuple2!48881 hash!377 newBucket!200))))))))

(declare-fun c!749226 () Bool)

(assert (=> bm!306231 (= c!749226 c!749225)))

(declare-fun b!4400798 () Bool)

(declare-fun res!1815150 () Bool)

(assert (=> b!4400798 (=> (not res!1815150) (not e!2740200))))

(assert (=> b!4400798 (= res!1815150 (containsKey!936 lt!1605806 (_1!27734 (tuple2!48881 hash!377 newBucket!200))))))

(assert (= (and d!1326961 c!749225) b!4400793))

(assert (= (and d!1326961 (not c!749225)) b!4400789))

(assert (= (and b!4400789 c!749228) b!4400794))

(assert (= (and b!4400789 (not c!749228)) b!4400797))

(assert (= (and b!4400797 c!749227) b!4400796))

(assert (= (and b!4400797 (not c!749227)) b!4400790))

(assert (= (or b!4400796 b!4400790) bm!306230))

(assert (= (or b!4400794 bm!306230) bm!306229))

(assert (= (or b!4400793 bm!306229) bm!306231))

(assert (= (and bm!306231 c!749226) b!4400795))

(assert (= (and bm!306231 (not c!749226)) b!4400791))

(assert (= (and d!1326961 res!1815151) b!4400798))

(assert (= (and b!4400798 res!1815150) b!4400792))

(declare-fun m!5063533 () Bool)

(assert (=> b!4400792 m!5063533))

(declare-fun m!5063535 () Bool)

(assert (=> d!1326961 m!5063535))

(assert (=> d!1326961 m!5062889))

(declare-fun m!5063537 () Bool)

(assert (=> b!4400798 m!5063537))

(declare-fun m!5063539 () Bool)

(assert (=> b!4400795 m!5063539))

(declare-fun m!5063541 () Bool)

(assert (=> bm!306231 m!5063541))

(assert (=> d!1326703 d!1326961))

(declare-fun d!1326963 () Bool)

(declare-fun res!1815152 () Bool)

(declare-fun e!2740205 () Bool)

(assert (=> d!1326963 (=> res!1815152 e!2740205)))

(assert (=> d!1326963 (= res!1815152 ((_ is Nil!49279) (t!356337 (toList!3237 lt!1605458))))))

(assert (=> d!1326963 (= (forall!9364 (t!356337 (toList!3237 lt!1605458)) lambda!148789) e!2740205)))

(declare-fun b!4400801 () Bool)

(declare-fun e!2740206 () Bool)

(assert (=> b!4400801 (= e!2740205 e!2740206)))

(declare-fun res!1815153 () Bool)

(assert (=> b!4400801 (=> (not res!1815153) (not e!2740206))))

(assert (=> b!4400801 (= res!1815153 (dynLambda!20762 lambda!148789 (h!54904 (t!356337 (toList!3237 lt!1605458)))))))

(declare-fun b!4400802 () Bool)

(assert (=> b!4400802 (= e!2740206 (forall!9364 (t!356337 (t!356337 (toList!3237 lt!1605458))) lambda!148789))))

(assert (= (and d!1326963 (not res!1815152)) b!4400801))

(assert (= (and b!4400801 res!1815153) b!4400802))

(declare-fun b_lambda!139767 () Bool)

(assert (=> (not b_lambda!139767) (not b!4400801)))

(declare-fun m!5063543 () Bool)

(assert (=> b!4400801 m!5063543))

(declare-fun m!5063545 () Bool)

(assert (=> b!4400802 m!5063545))

(assert (=> b!4400447 d!1326963))

(declare-fun d!1326965 () Bool)

(declare-fun res!1815154 () Bool)

(declare-fun e!2740207 () Bool)

(assert (=> d!1326965 (=> res!1815154 e!2740207)))

(assert (=> d!1326965 (= res!1815154 (not ((_ is Cons!49278) (_2!27734 (h!54904 (toList!3237 lm!1707))))))))

(assert (=> d!1326965 (= (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 lm!1707)))) e!2740207)))

(declare-fun b!4400803 () Bool)

(declare-fun e!2740208 () Bool)

(assert (=> b!4400803 (= e!2740207 e!2740208)))

(declare-fun res!1815155 () Bool)

(assert (=> b!4400803 (=> (not res!1815155) (not e!2740208))))

(assert (=> b!4400803 (= res!1815155 (not (containsKey!933 (t!356336 (_2!27734 (h!54904 (toList!3237 lm!1707)))) (_1!27733 (h!54903 (_2!27734 (h!54904 (toList!3237 lm!1707))))))))))

(declare-fun b!4400804 () Bool)

(assert (=> b!4400804 (= e!2740208 (noDuplicateKeys!627 (t!356336 (_2!27734 (h!54904 (toList!3237 lm!1707))))))))

(assert (= (and d!1326965 (not res!1815154)) b!4400803))

(assert (= (and b!4400803 res!1815155) b!4400804))

(declare-fun m!5063547 () Bool)

(assert (=> b!4400803 m!5063547))

(declare-fun m!5063549 () Bool)

(assert (=> b!4400804 m!5063549))

(assert (=> bs!728262 d!1326965))

(declare-fun d!1326967 () Bool)

(declare-fun lt!1605807 () Bool)

(assert (=> d!1326967 (= lt!1605807 (select (content!7870 e!2739972) key!3918))))

(declare-fun e!2740209 () Bool)

(assert (=> d!1326967 (= lt!1605807 e!2740209)))

(declare-fun res!1815157 () Bool)

(assert (=> d!1326967 (=> (not res!1815157) (not e!2740209))))

(assert (=> d!1326967 (= res!1815157 ((_ is Cons!49281) e!2739972))))

(assert (=> d!1326967 (= (contains!11671 e!2739972 key!3918) lt!1605807)))

(declare-fun b!4400805 () Bool)

(declare-fun e!2740210 () Bool)

(assert (=> b!4400805 (= e!2740209 e!2740210)))

(declare-fun res!1815156 () Bool)

(assert (=> b!4400805 (=> res!1815156 e!2740210)))

(assert (=> b!4400805 (= res!1815156 (= (h!54908 e!2739972) key!3918))))

(declare-fun b!4400806 () Bool)

(assert (=> b!4400806 (= e!2740210 (contains!11671 (t!356339 e!2739972) key!3918))))

(assert (= (and d!1326967 res!1815157) b!4400805))

(assert (= (and b!4400805 (not res!1815156)) b!4400806))

(declare-fun m!5063551 () Bool)

(assert (=> d!1326967 m!5063551))

(declare-fun m!5063553 () Bool)

(assert (=> d!1326967 m!5063553))

(declare-fun m!5063555 () Bool)

(assert (=> b!4400806 m!5063555))

(assert (=> bm!306214 d!1326967))

(declare-fun d!1326969 () Bool)

(declare-fun res!1815158 () Bool)

(declare-fun e!2740211 () Bool)

(assert (=> d!1326969 (=> res!1815158 e!2740211)))

(assert (=> d!1326969 (= res!1815158 (not ((_ is Cons!49278) (_2!27734 (tuple2!48881 hash!377 newBucket!200)))))))

(assert (=> d!1326969 (= (noDuplicateKeys!627 (_2!27734 (tuple2!48881 hash!377 newBucket!200))) e!2740211)))

(declare-fun b!4400807 () Bool)

(declare-fun e!2740212 () Bool)

(assert (=> b!4400807 (= e!2740211 e!2740212)))

(declare-fun res!1815159 () Bool)

(assert (=> b!4400807 (=> (not res!1815159) (not e!2740212))))

(assert (=> b!4400807 (= res!1815159 (not (containsKey!933 (t!356336 (_2!27734 (tuple2!48881 hash!377 newBucket!200))) (_1!27733 (h!54903 (_2!27734 (tuple2!48881 hash!377 newBucket!200)))))))))

(declare-fun b!4400808 () Bool)

(assert (=> b!4400808 (= e!2740212 (noDuplicateKeys!627 (t!356336 (_2!27734 (tuple2!48881 hash!377 newBucket!200)))))))

(assert (= (and d!1326969 (not res!1815158)) b!4400807))

(assert (= (and b!4400807 res!1815159) b!4400808))

(declare-fun m!5063557 () Bool)

(assert (=> b!4400807 m!5063557))

(declare-fun m!5063559 () Bool)

(assert (=> b!4400808 m!5063559))

(assert (=> bs!728257 d!1326969))

(declare-fun d!1326971 () Bool)

(assert (=> d!1326971 (= (get!16042 (getValueByKey!598 (toList!3237 lm!1707) (_1!27734 (h!54904 (toList!3237 lm!1707))))) (v!43713 (getValueByKey!598 (toList!3237 lm!1707) (_1!27734 (h!54904 (toList!3237 lm!1707))))))))

(assert (=> d!1326753 d!1326971))

(declare-fun b!4400810 () Bool)

(declare-fun e!2740213 () Option!10612)

(declare-fun e!2740214 () Option!10612)

(assert (=> b!4400810 (= e!2740213 e!2740214)))

(declare-fun c!749230 () Bool)

(assert (=> b!4400810 (= c!749230 (and ((_ is Cons!49279) (toList!3237 lm!1707)) (not (= (_1!27734 (h!54904 (toList!3237 lm!1707))) (_1!27734 (h!54904 (toList!3237 lm!1707)))))))))

(declare-fun b!4400809 () Bool)

(assert (=> b!4400809 (= e!2740213 (Some!10611 (_2!27734 (h!54904 (toList!3237 lm!1707)))))))

(declare-fun d!1326973 () Bool)

(declare-fun c!749229 () Bool)

(assert (=> d!1326973 (= c!749229 (and ((_ is Cons!49279) (toList!3237 lm!1707)) (= (_1!27734 (h!54904 (toList!3237 lm!1707))) (_1!27734 (h!54904 (toList!3237 lm!1707))))))))

(assert (=> d!1326973 (= (getValueByKey!598 (toList!3237 lm!1707) (_1!27734 (h!54904 (toList!3237 lm!1707)))) e!2740213)))

(declare-fun b!4400812 () Bool)

(assert (=> b!4400812 (= e!2740214 None!10611)))

(declare-fun b!4400811 () Bool)

(assert (=> b!4400811 (= e!2740214 (getValueByKey!598 (t!356337 (toList!3237 lm!1707)) (_1!27734 (h!54904 (toList!3237 lm!1707)))))))

(assert (= (and d!1326973 c!749229) b!4400809))

(assert (= (and d!1326973 (not c!749229)) b!4400810))

(assert (= (and b!4400810 c!749230) b!4400811))

(assert (= (and b!4400810 (not c!749230)) b!4400812))

(declare-fun m!5063561 () Bool)

(assert (=> b!4400811 m!5063561))

(assert (=> d!1326753 d!1326973))

(declare-fun d!1326975 () Bool)

(declare-fun lt!1605808 () Bool)

(assert (=> d!1326975 (= lt!1605808 (select (content!7870 (keys!16747 lt!1605466)) key!3918))))

(declare-fun e!2740215 () Bool)

(assert (=> d!1326975 (= lt!1605808 e!2740215)))

(declare-fun res!1815161 () Bool)

(assert (=> d!1326975 (=> (not res!1815161) (not e!2740215))))

(assert (=> d!1326975 (= res!1815161 ((_ is Cons!49281) (keys!16747 lt!1605466)))))

(assert (=> d!1326975 (= (contains!11671 (keys!16747 lt!1605466) key!3918) lt!1605808)))

(declare-fun b!4400813 () Bool)

(declare-fun e!2740216 () Bool)

(assert (=> b!4400813 (= e!2740215 e!2740216)))

(declare-fun res!1815160 () Bool)

(assert (=> b!4400813 (=> res!1815160 e!2740216)))

(assert (=> b!4400813 (= res!1815160 (= (h!54908 (keys!16747 lt!1605466)) key!3918))))

(declare-fun b!4400814 () Bool)

(assert (=> b!4400814 (= e!2740216 (contains!11671 (t!356339 (keys!16747 lt!1605466)) key!3918))))

(assert (= (and d!1326975 res!1815161) b!4400813))

(assert (= (and b!4400813 (not res!1815160)) b!4400814))

(assert (=> d!1326975 m!5063115))

(declare-fun m!5063563 () Bool)

(assert (=> d!1326975 m!5063563))

(declare-fun m!5063565 () Bool)

(assert (=> d!1326975 m!5063565))

(declare-fun m!5063567 () Bool)

(assert (=> b!4400814 m!5063567))

(assert (=> b!4400430 d!1326975))

(declare-fun bs!728312 () Bool)

(declare-fun b!4400816 () Bool)

(assert (= bs!728312 (and b!4400816 b!4400658)))

(declare-fun lambda!148890 () Int)

(assert (=> bs!728312 (= (= (toList!3238 lt!1605466) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (= lambda!148890 lambda!148848))))

(declare-fun bs!728313 () Bool)

(assert (= bs!728313 (and b!4400816 b!4400700)))

(assert (=> bs!728313 (= (= (toList!3238 lt!1605466) (Cons!49278 (h!54903 (toList!3238 lt!1605466)) (t!356336 (toList!3238 lt!1605466)))) (= lambda!148890 lambda!148859))))

(declare-fun bs!728314 () Bool)

(assert (= bs!728314 (and b!4400816 b!4400698)))

(assert (=> bs!728314 (= (= (toList!3238 lt!1605466) (t!356336 (toList!3238 lt!1605466))) (= lambda!148890 lambda!148858))))

(declare-fun bs!728315 () Bool)

(assert (= bs!728315 (and b!4400816 b!4400697)))

(assert (=> bs!728315 (= lambda!148890 lambda!148860)))

(declare-fun bs!728316 () Bool)

(assert (= bs!728316 (and b!4400816 b!4400647)))

(assert (=> bs!728316 (= (= (toList!3238 lt!1605466) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148890 lambda!148846))))

(assert (=> b!4400816 true))

(declare-fun bs!728317 () Bool)

(declare-fun b!4400817 () Bool)

(assert (= bs!728317 (and b!4400817 b!4400648)))

(declare-fun lambda!148891 () Int)

(assert (=> bs!728317 (= lambda!148891 lambda!148847)))

(declare-fun bs!728318 () Bool)

(assert (= bs!728318 (and b!4400817 b!4400659)))

(assert (=> bs!728318 (= lambda!148891 lambda!148849)))

(declare-fun bs!728319 () Bool)

(assert (= bs!728319 (and b!4400817 b!4400692)))

(assert (=> bs!728319 (= lambda!148891 lambda!148861)))

(declare-fun d!1326977 () Bool)

(declare-fun e!2740217 () Bool)

(assert (=> d!1326977 e!2740217))

(declare-fun res!1815162 () Bool)

(assert (=> d!1326977 (=> (not res!1815162) (not e!2740217))))

(declare-fun lt!1605809 () List!49405)

(assert (=> d!1326977 (= res!1815162 (noDuplicate!638 lt!1605809))))

(assert (=> d!1326977 (= lt!1605809 (getKeysList!197 (toList!3238 lt!1605466)))))

(assert (=> d!1326977 (= (keys!16747 lt!1605466) lt!1605809)))

(declare-fun b!4400815 () Bool)

(declare-fun res!1815163 () Bool)

(assert (=> b!4400815 (=> (not res!1815163) (not e!2740217))))

(assert (=> b!4400815 (= res!1815163 (= (length!132 lt!1605809) (length!133 (toList!3238 lt!1605466))))))

(declare-fun res!1815164 () Bool)

(assert (=> b!4400816 (=> (not res!1815164) (not e!2740217))))

(assert (=> b!4400816 (= res!1815164 (forall!9368 lt!1605809 lambda!148890))))

(assert (=> b!4400817 (= e!2740217 (= (content!7870 lt!1605809) (content!7870 (map!10748 (toList!3238 lt!1605466) lambda!148891))))))

(assert (= (and d!1326977 res!1815162) b!4400815))

(assert (= (and b!4400815 res!1815163) b!4400816))

(assert (= (and b!4400816 res!1815164) b!4400817))

(declare-fun m!5063569 () Bool)

(assert (=> d!1326977 m!5063569))

(assert (=> d!1326977 m!5063123))

(declare-fun m!5063571 () Bool)

(assert (=> b!4400815 m!5063571))

(assert (=> b!4400815 m!5063453))

(declare-fun m!5063573 () Bool)

(assert (=> b!4400816 m!5063573))

(declare-fun m!5063575 () Bool)

(assert (=> b!4400817 m!5063575))

(declare-fun m!5063577 () Bool)

(assert (=> b!4400817 m!5063577))

(assert (=> b!4400817 m!5063577))

(declare-fun m!5063579 () Bool)

(assert (=> b!4400817 m!5063579))

(assert (=> b!4400430 d!1326977))

(declare-fun d!1326979 () Bool)

(assert (=> d!1326979 (= (isDefined!7906 (getValueByKey!599 (toList!3238 lt!1605466) key!3918)) (not (isEmpty!28282 (getValueByKey!599 (toList!3238 lt!1605466) key!3918))))))

(declare-fun bs!728320 () Bool)

(assert (= bs!728320 d!1326979))

(assert (=> bs!728320 m!5063107))

(declare-fun m!5063581 () Bool)

(assert (=> bs!728320 m!5063581))

(assert (=> b!4400432 d!1326979))

(declare-fun d!1326981 () Bool)

(declare-fun c!749231 () Bool)

(assert (=> d!1326981 (= c!749231 (and ((_ is Cons!49278) (toList!3238 lt!1605466)) (= (_1!27733 (h!54903 (toList!3238 lt!1605466))) key!3918)))))

(declare-fun e!2740218 () Option!10613)

(assert (=> d!1326981 (= (getValueByKey!599 (toList!3238 lt!1605466) key!3918) e!2740218)))

(declare-fun b!4400820 () Bool)

(declare-fun e!2740219 () Option!10613)

(assert (=> b!4400820 (= e!2740219 (getValueByKey!599 (t!356336 (toList!3238 lt!1605466)) key!3918))))

(declare-fun b!4400818 () Bool)

(assert (=> b!4400818 (= e!2740218 (Some!10612 (_2!27733 (h!54903 (toList!3238 lt!1605466)))))))

(declare-fun b!4400819 () Bool)

(assert (=> b!4400819 (= e!2740218 e!2740219)))

(declare-fun c!749232 () Bool)

(assert (=> b!4400819 (= c!749232 (and ((_ is Cons!49278) (toList!3238 lt!1605466)) (not (= (_1!27733 (h!54903 (toList!3238 lt!1605466))) key!3918))))))

(declare-fun b!4400821 () Bool)

(assert (=> b!4400821 (= e!2740219 None!10612)))

(assert (= (and d!1326981 c!749231) b!4400818))

(assert (= (and d!1326981 (not c!749231)) b!4400819))

(assert (= (and b!4400819 c!749232) b!4400820))

(assert (= (and b!4400819 (not c!749232)) b!4400821))

(declare-fun m!5063583 () Bool)

(assert (=> b!4400820 m!5063583))

(assert (=> b!4400432 d!1326981))

(assert (=> b!4400464 d!1326899))

(assert (=> b!4400464 d!1326901))

(assert (=> b!4400437 d!1326889))

(assert (=> b!4400437 d!1326891))

(assert (=> b!4400435 d!1326877))

(declare-fun d!1326983 () Bool)

(assert (=> d!1326983 (containsKey!937 (toList!3238 lt!1605466) key!3918)))

(declare-fun lt!1605831 () Unit!78751)

(assert (=> d!1326983 (= lt!1605831 (choose!27590 (toList!3238 lt!1605466) key!3918))))

(assert (=> d!1326983 (invariantList!750 (toList!3238 lt!1605466))))

(assert (=> d!1326983 (= (lemmaInGetKeysListThenContainsKey!195 (toList!3238 lt!1605466) key!3918) lt!1605831)))

(declare-fun bs!728321 () Bool)

(assert (= bs!728321 d!1326983))

(assert (=> bs!728321 m!5063117))

(declare-fun m!5063585 () Bool)

(assert (=> bs!728321 m!5063585))

(assert (=> bs!728321 m!5063449))

(assert (=> b!4400435 d!1326983))

(declare-fun d!1326985 () Bool)

(declare-fun res!1815168 () Bool)

(declare-fun e!2740223 () Bool)

(assert (=> d!1326985 (=> res!1815168 e!2740223)))

(assert (=> d!1326985 (= res!1815168 ((_ is Nil!49279) (toList!3237 (+!868 lm!1707 (tuple2!48881 hash!377 newBucket!200)))))))

(assert (=> d!1326985 (= (forall!9364 (toList!3237 (+!868 lm!1707 (tuple2!48881 hash!377 newBucket!200))) lambda!148789) e!2740223)))

(declare-fun b!4400827 () Bool)

(declare-fun e!2740224 () Bool)

(assert (=> b!4400827 (= e!2740223 e!2740224)))

(declare-fun res!1815169 () Bool)

(assert (=> b!4400827 (=> (not res!1815169) (not e!2740224))))

(assert (=> b!4400827 (= res!1815169 (dynLambda!20762 lambda!148789 (h!54904 (toList!3237 (+!868 lm!1707 (tuple2!48881 hash!377 newBucket!200))))))))

(declare-fun b!4400828 () Bool)

(assert (=> b!4400828 (= e!2740224 (forall!9364 (t!356337 (toList!3237 (+!868 lm!1707 (tuple2!48881 hash!377 newBucket!200)))) lambda!148789))))

(assert (= (and d!1326985 (not res!1815168)) b!4400827))

(assert (= (and b!4400827 res!1815169) b!4400828))

(declare-fun b_lambda!139769 () Bool)

(assert (=> (not b_lambda!139769) (not b!4400827)))

(declare-fun m!5063587 () Bool)

(assert (=> b!4400827 m!5063587))

(declare-fun m!5063589 () Bool)

(assert (=> b!4400828 m!5063589))

(assert (=> d!1326713 d!1326985))

(assert (=> d!1326713 d!1326703))

(declare-fun d!1326987 () Bool)

(assert (=> d!1326987 (forall!9364 (toList!3237 (+!868 lm!1707 (tuple2!48881 hash!377 newBucket!200))) lambda!148789)))

(assert (=> d!1326987 true))

(declare-fun _$31!325 () Unit!78751)

(assert (=> d!1326987 (= (choose!27583 lm!1707 lambda!148789 hash!377 newBucket!200) _$31!325)))

(declare-fun bs!728328 () Bool)

(assert (= bs!728328 d!1326987))

(assert (=> bs!728328 m!5062725))

(assert (=> bs!728328 m!5062981))

(assert (=> d!1326713 d!1326987))

(assert (=> d!1326713 d!1326727))

(declare-fun b!4400833 () Bool)

(declare-fun e!2740225 () Option!10612)

(declare-fun e!2740226 () Option!10612)

(assert (=> b!4400833 (= e!2740225 e!2740226)))

(declare-fun c!749235 () Bool)

(assert (=> b!4400833 (= c!749235 (and ((_ is Cons!49279) (toList!3237 lt!1605579)) (not (= (_1!27734 (h!54904 (toList!3237 lt!1605579))) (_1!27734 (tuple2!48881 hash!377 newBucket!200))))))))

(declare-fun b!4400832 () Bool)

(assert (=> b!4400832 (= e!2740225 (Some!10611 (_2!27734 (h!54904 (toList!3237 lt!1605579)))))))

(declare-fun c!749234 () Bool)

(declare-fun d!1326989 () Bool)

(assert (=> d!1326989 (= c!749234 (and ((_ is Cons!49279) (toList!3237 lt!1605579)) (= (_1!27734 (h!54904 (toList!3237 lt!1605579))) (_1!27734 (tuple2!48881 hash!377 newBucket!200)))))))

(assert (=> d!1326989 (= (getValueByKey!598 (toList!3237 lt!1605579) (_1!27734 (tuple2!48881 hash!377 newBucket!200))) e!2740225)))

(declare-fun b!4400835 () Bool)

(assert (=> b!4400835 (= e!2740226 None!10611)))

(declare-fun b!4400834 () Bool)

(assert (=> b!4400834 (= e!2740226 (getValueByKey!598 (t!356337 (toList!3237 lt!1605579)) (_1!27734 (tuple2!48881 hash!377 newBucket!200))))))

(assert (= (and d!1326989 c!749234) b!4400832))

(assert (= (and d!1326989 (not c!749234)) b!4400833))

(assert (= (and b!4400833 c!749235) b!4400834))

(assert (= (and b!4400833 (not c!749235)) b!4400835))

(declare-fun m!5063591 () Bool)

(assert (=> b!4400834 m!5063591))

(assert (=> b!4400339 d!1326989))

(declare-fun d!1326991 () Bool)

(assert (=> d!1326991 (= (invariantList!750 (toList!3238 lt!1605622)) (noDuplicatedKeys!154 (toList!3238 lt!1605622)))))

(declare-fun bs!728329 () Bool)

(assert (= bs!728329 d!1326991))

(declare-fun m!5063593 () Bool)

(assert (=> bs!728329 m!5063593))

(assert (=> d!1326773 d!1326991))

(declare-fun d!1326993 () Bool)

(declare-fun res!1815170 () Bool)

(declare-fun e!2740227 () Bool)

(assert (=> d!1326993 (=> res!1815170 e!2740227)))

(assert (=> d!1326993 (= res!1815170 ((_ is Nil!49279) (t!356337 (toList!3237 lm!1707))))))

(assert (=> d!1326993 (= (forall!9364 (t!356337 (toList!3237 lm!1707)) lambda!148808) e!2740227)))

(declare-fun b!4400836 () Bool)

(declare-fun e!2740228 () Bool)

(assert (=> b!4400836 (= e!2740227 e!2740228)))

(declare-fun res!1815171 () Bool)

(assert (=> b!4400836 (=> (not res!1815171) (not e!2740228))))

(assert (=> b!4400836 (= res!1815171 (dynLambda!20762 lambda!148808 (h!54904 (t!356337 (toList!3237 lm!1707)))))))

(declare-fun b!4400837 () Bool)

(assert (=> b!4400837 (= e!2740228 (forall!9364 (t!356337 (t!356337 (toList!3237 lm!1707))) lambda!148808))))

(assert (= (and d!1326993 (not res!1815170)) b!4400836))

(assert (= (and b!4400836 res!1815171) b!4400837))

(declare-fun b_lambda!139771 () Bool)

(assert (=> (not b_lambda!139771) (not b!4400836)))

(declare-fun m!5063601 () Bool)

(assert (=> b!4400836 m!5063601))

(declare-fun m!5063603 () Bool)

(assert (=> b!4400837 m!5063603))

(assert (=> d!1326773 d!1326993))

(assert (=> b!4400469 d!1326901))

(declare-fun d!1326995 () Bool)

(assert (=> d!1326995 (= (get!16042 (getValueByKey!598 (toList!3237 lt!1605458) hash!377)) (v!43713 (getValueByKey!598 (toList!3237 lt!1605458) hash!377)))))

(assert (=> d!1326641 d!1326995))

(assert (=> d!1326641 d!1326929))

(declare-fun d!1326997 () Bool)

(declare-fun res!1815172 () Bool)

(declare-fun e!2740229 () Bool)

(assert (=> d!1326997 (=> res!1815172 e!2740229)))

(assert (=> d!1326997 (= res!1815172 (and ((_ is Cons!49279) (toList!3237 lm!1707)) (= (_1!27734 (h!54904 (toList!3237 lm!1707))) hash!377)))))

(assert (=> d!1326997 (= (containsKey!936 (toList!3237 lm!1707) hash!377) e!2740229)))

(declare-fun b!4400838 () Bool)

(declare-fun e!2740230 () Bool)

(assert (=> b!4400838 (= e!2740229 e!2740230)))

(declare-fun res!1815173 () Bool)

(assert (=> b!4400838 (=> (not res!1815173) (not e!2740230))))

(assert (=> b!4400838 (= res!1815173 (and (or (not ((_ is Cons!49279) (toList!3237 lm!1707))) (bvsle (_1!27734 (h!54904 (toList!3237 lm!1707))) hash!377)) ((_ is Cons!49279) (toList!3237 lm!1707)) (bvslt (_1!27734 (h!54904 (toList!3237 lm!1707))) hash!377)))))

(declare-fun b!4400839 () Bool)

(assert (=> b!4400839 (= e!2740230 (containsKey!936 (t!356337 (toList!3237 lm!1707)) hash!377))))

(assert (= (and d!1326997 (not res!1815172)) b!4400838))

(assert (= (and b!4400838 res!1815173) b!4400839))

(declare-fun m!5063619 () Bool)

(assert (=> b!4400839 m!5063619))

(assert (=> d!1326741 d!1326997))

(declare-fun d!1326999 () Bool)

(declare-fun res!1815178 () Bool)

(declare-fun e!2740235 () Bool)

(assert (=> d!1326999 (=> res!1815178 e!2740235)))

(assert (=> d!1326999 (= res!1815178 (or ((_ is Nil!49279) (toList!3237 lm!1707)) ((_ is Nil!49279) (t!356337 (toList!3237 lm!1707)))))))

(assert (=> d!1326999 (= (isStrictlySorted!176 (toList!3237 lm!1707)) e!2740235)))

(declare-fun b!4400844 () Bool)

(declare-fun e!2740236 () Bool)

(assert (=> b!4400844 (= e!2740235 e!2740236)))

(declare-fun res!1815179 () Bool)

(assert (=> b!4400844 (=> (not res!1815179) (not e!2740236))))

(assert (=> b!4400844 (= res!1815179 (bvslt (_1!27734 (h!54904 (toList!3237 lm!1707))) (_1!27734 (h!54904 (t!356337 (toList!3237 lm!1707))))))))

(declare-fun b!4400845 () Bool)

(assert (=> b!4400845 (= e!2740236 (isStrictlySorted!176 (t!356337 (toList!3237 lm!1707))))))

(assert (= (and d!1326999 (not res!1815178)) b!4400844))

(assert (= (and b!4400844 res!1815179) b!4400845))

(declare-fun m!5063631 () Bool)

(assert (=> b!4400845 m!5063631))

(assert (=> d!1326749 d!1326999))

(assert (=> b!4400442 d!1326891))

(declare-fun d!1327003 () Bool)

(assert (=> d!1327003 (isDefined!7906 (getValueByKey!599 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918))))

(declare-fun lt!1605834 () Unit!78751)

(declare-fun choose!27593 (List!49402 K!10635) Unit!78751)

(assert (=> d!1327003 (= lt!1605834 (choose!27593 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918))))

(assert (=> d!1327003 (invariantList!750 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))))

(assert (=> d!1327003 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!509 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918) lt!1605834)))

(declare-fun bs!728331 () Bool)

(assert (= bs!728331 d!1327003))

(assert (=> bs!728331 m!5063165))

(assert (=> bs!728331 m!5063165))

(assert (=> bs!728331 m!5063167))

(declare-fun m!5063637 () Bool)

(assert (=> bs!728331 m!5063637))

(assert (=> bs!728331 m!5063469))

(assert (=> b!4400467 d!1327003))

(assert (=> b!4400467 d!1326903))

(assert (=> b!4400467 d!1326905))

(declare-fun d!1327009 () Bool)

(assert (=> d!1327009 (contains!11671 (getKeysList!197 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) key!3918)))

(declare-fun lt!1605837 () Unit!78751)

(declare-fun choose!27594 (List!49402 K!10635) Unit!78751)

(assert (=> d!1327009 (= lt!1605837 (choose!27594 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918))))

(assert (=> d!1327009 (invariantList!750 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))))

(assert (=> d!1327009 (= (lemmaInListThenGetKeysListContains!194 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) key!3918) lt!1605837)))

(declare-fun bs!728333 () Bool)

(assert (= bs!728333 d!1327009))

(assert (=> bs!728333 m!5063181))

(assert (=> bs!728333 m!5063181))

(declare-fun m!5063647 () Bool)

(assert (=> bs!728333 m!5063647))

(declare-fun m!5063651 () Bool)

(assert (=> bs!728333 m!5063651))

(assert (=> bs!728333 m!5063469))

(assert (=> b!4400467 d!1327009))

(declare-fun bs!728334 () Bool)

(declare-fun b!4400864 () Bool)

(assert (= bs!728334 (and b!4400864 b!4400658)))

(declare-fun lambda!148896 () Int)

(assert (=> bs!728334 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (= lambda!148896 lambda!148848))))

(declare-fun bs!728335 () Bool)

(assert (= bs!728335 (and b!4400864 b!4400700)))

(assert (=> bs!728335 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (Cons!49278 (h!54903 (toList!3238 lt!1605466)) (t!356336 (toList!3238 lt!1605466)))) (= lambda!148896 lambda!148859))))

(declare-fun bs!728336 () Bool)

(assert (= bs!728336 (and b!4400864 b!4400698)))

(assert (=> bs!728336 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (t!356336 (toList!3238 lt!1605466))) (= lambda!148896 lambda!148858))))

(declare-fun bs!728337 () Bool)

(assert (= bs!728337 (and b!4400864 b!4400816)))

(assert (=> bs!728337 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (toList!3238 lt!1605466)) (= lambda!148896 lambda!148890))))

(declare-fun bs!728338 () Bool)

(assert (= bs!728338 (and b!4400864 b!4400697)))

(assert (=> bs!728338 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (toList!3238 lt!1605466)) (= lambda!148896 lambda!148860))))

(declare-fun bs!728340 () Bool)

(assert (= bs!728340 (and b!4400864 b!4400647)))

(assert (=> bs!728340 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148896 lambda!148846))))

(assert (=> b!4400864 true))

(declare-fun bs!728344 () Bool)

(declare-fun b!4400866 () Bool)

(assert (= bs!728344 (and b!4400866 b!4400658)))

(declare-fun lambda!148898 () Int)

(assert (=> bs!728344 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (= lambda!148898 lambda!148848))))

(declare-fun bs!728345 () Bool)

(assert (= bs!728345 (and b!4400866 b!4400698)))

(assert (=> bs!728345 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (t!356336 (toList!3238 lt!1605466))) (= lambda!148898 lambda!148858))))

(declare-fun bs!728346 () Bool)

(assert (= bs!728346 (and b!4400866 b!4400816)))

(assert (=> bs!728346 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (toList!3238 lt!1605466)) (= lambda!148898 lambda!148890))))

(declare-fun bs!728347 () Bool)

(assert (= bs!728347 (and b!4400866 b!4400697)))

(assert (=> bs!728347 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (toList!3238 lt!1605466)) (= lambda!148898 lambda!148860))))

(declare-fun bs!728348 () Bool)

(assert (= bs!728348 (and b!4400866 b!4400647)))

(assert (=> bs!728348 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148898 lambda!148846))))

(declare-fun bs!728350 () Bool)

(assert (= bs!728350 (and b!4400866 b!4400864)))

(assert (=> bs!728350 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (= lambda!148898 lambda!148896))))

(declare-fun bs!728352 () Bool)

(assert (= bs!728352 (and b!4400866 b!4400700)))

(assert (=> bs!728352 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (Cons!49278 (h!54903 (toList!3238 lt!1605466)) (t!356336 (toList!3238 lt!1605466)))) (= lambda!148898 lambda!148859))))

(assert (=> b!4400866 true))

(declare-fun bs!728356 () Bool)

(declare-fun b!4400863 () Bool)

(assert (= bs!728356 (and b!4400863 b!4400658)))

(declare-fun lambda!148900 () Int)

(assert (=> bs!728356 (= (= (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (= lambda!148900 lambda!148848))))

(declare-fun bs!728357 () Bool)

(assert (= bs!728357 (and b!4400863 b!4400866)))

(assert (=> bs!728357 (= (= (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))) (= lambda!148900 lambda!148898))))

(declare-fun bs!728358 () Bool)

(assert (= bs!728358 (and b!4400863 b!4400698)))

(assert (=> bs!728358 (= (= (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) (t!356336 (toList!3238 lt!1605466))) (= lambda!148900 lambda!148858))))

(declare-fun bs!728359 () Bool)

(assert (= bs!728359 (and b!4400863 b!4400816)))

(assert (=> bs!728359 (= (= (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) (toList!3238 lt!1605466)) (= lambda!148900 lambda!148890))))

(declare-fun bs!728360 () Bool)

(assert (= bs!728360 (and b!4400863 b!4400697)))

(assert (=> bs!728360 (= (= (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) (toList!3238 lt!1605466)) (= lambda!148900 lambda!148860))))

(declare-fun bs!728361 () Bool)

(assert (= bs!728361 (and b!4400863 b!4400647)))

(assert (=> bs!728361 (= lambda!148900 lambda!148846)))

(declare-fun bs!728362 () Bool)

(assert (= bs!728362 (and b!4400863 b!4400864)))

(assert (=> bs!728362 (= (= (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (= lambda!148900 lambda!148896))))

(declare-fun bs!728363 () Bool)

(assert (= bs!728363 (and b!4400863 b!4400700)))

(assert (=> bs!728363 (= (= (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) (Cons!49278 (h!54903 (toList!3238 lt!1605466)) (t!356336 (toList!3238 lt!1605466)))) (= lambda!148900 lambda!148859))))

(assert (=> b!4400863 true))

(declare-fun bs!728364 () Bool)

(declare-fun b!4400858 () Bool)

(assert (= bs!728364 (and b!4400858 b!4400648)))

(declare-fun lambda!148902 () Int)

(assert (=> bs!728364 (= lambda!148902 lambda!148847)))

(declare-fun bs!728365 () Bool)

(assert (= bs!728365 (and b!4400858 b!4400659)))

(assert (=> bs!728365 (= lambda!148902 lambda!148849)))

(declare-fun bs!728366 () Bool)

(assert (= bs!728366 (and b!4400858 b!4400692)))

(assert (=> bs!728366 (= lambda!148902 lambda!148861)))

(declare-fun bs!728367 () Bool)

(assert (= bs!728367 (and b!4400858 b!4400817)))

(assert (=> bs!728367 (= lambda!148902 lambda!148891)))

(declare-fun lt!1605843 () List!49405)

(declare-fun e!2740248 () Bool)

(assert (=> b!4400858 (= e!2740248 (= (content!7870 lt!1605843) (content!7870 (map!10748 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) lambda!148902))))))

(declare-fun b!4400859 () Bool)

(declare-fun e!2740247 () Unit!78751)

(declare-fun Unit!78811 () Unit!78751)

(assert (=> b!4400859 (= e!2740247 Unit!78811)))

(declare-fun b!4400860 () Bool)

(declare-fun e!2740245 () Unit!78751)

(declare-fun Unit!78812 () Unit!78751)

(assert (=> b!4400860 (= e!2740245 Unit!78812)))

(declare-fun b!4400861 () Bool)

(assert (=> b!4400861 false))

(declare-fun Unit!78813 () Unit!78751)

(assert (=> b!4400861 (= e!2740245 Unit!78813)))

(declare-fun d!1327017 () Bool)

(assert (=> d!1327017 e!2740248))

(declare-fun res!1815184 () Bool)

(assert (=> d!1327017 (=> (not res!1815184) (not e!2740248))))

(assert (=> d!1327017 (= res!1815184 (noDuplicate!638 lt!1605843))))

(declare-fun e!2740246 () List!49405)

(assert (=> d!1327017 (= lt!1605843 e!2740246)))

(declare-fun c!749240 () Bool)

(assert (=> d!1327017 (= c!749240 ((_ is Cons!49278) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))))

(assert (=> d!1327017 (invariantList!750 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))))

(assert (=> d!1327017 (= (getKeysList!197 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) lt!1605843)))

(declare-fun b!4400862 () Bool)

(assert (=> b!4400862 (= e!2740246 Nil!49281)))

(declare-fun res!1815185 () Bool)

(assert (=> b!4400863 (=> (not res!1815185) (not e!2740248))))

(assert (=> b!4400863 (= res!1815185 (forall!9368 lt!1605843 lambda!148900))))

(assert (=> b!4400864 false))

(declare-fun lt!1605840 () Unit!78751)

(assert (=> b!4400864 (= lt!1605840 (forallContained!2002 (getKeysList!197 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) lambda!148896 (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))))))

(declare-fun Unit!78814 () Unit!78751)

(assert (=> b!4400864 (= e!2740247 Unit!78814)))

(declare-fun b!4400865 () Bool)

(declare-fun res!1815186 () Bool)

(assert (=> b!4400865 (=> (not res!1815186) (not e!2740248))))

(assert (=> b!4400865 (= res!1815186 (= (length!132 lt!1605843) (length!133 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))))))

(assert (=> b!4400866 (= e!2740246 (Cons!49281 (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (getKeysList!197 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))))))

(declare-fun c!749242 () Bool)

(assert (=> b!4400866 (= c!749242 (containsKey!937 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))))))

(declare-fun lt!1605844 () Unit!78751)

(assert (=> b!4400866 (= lt!1605844 e!2740245)))

(declare-fun c!749241 () Bool)

(assert (=> b!4400866 (= c!749241 (contains!11671 (getKeysList!197 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))))))

(declare-fun lt!1605841 () Unit!78751)

(assert (=> b!4400866 (= lt!1605841 e!2740247)))

(declare-fun lt!1605839 () List!49405)

(assert (=> b!4400866 (= lt!1605839 (getKeysList!197 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))))))

(declare-fun lt!1605842 () Unit!78751)

(assert (=> b!4400866 (= lt!1605842 (lemmaForallContainsAddHeadPreserves!60 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) lt!1605839 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))))))

(assert (=> b!4400866 (forall!9368 lt!1605839 lambda!148898)))

(declare-fun lt!1605845 () Unit!78751)

(assert (=> b!4400866 (= lt!1605845 lt!1605842)))

(assert (= (and d!1327017 c!749240) b!4400866))

(assert (= (and d!1327017 (not c!749240)) b!4400862))

(assert (= (and b!4400866 c!749242) b!4400861))

(assert (= (and b!4400866 (not c!749242)) b!4400860))

(assert (= (and b!4400866 c!749241) b!4400864))

(assert (= (and b!4400866 (not c!749241)) b!4400859))

(assert (= (and d!1327017 res!1815184) b!4400865))

(assert (= (and b!4400865 res!1815186) b!4400863))

(assert (= (and b!4400863 res!1815185) b!4400858))

(declare-fun m!5063655 () Bool)

(assert (=> b!4400863 m!5063655))

(declare-fun m!5063657 () Bool)

(assert (=> b!4400858 m!5063657))

(declare-fun m!5063659 () Bool)

(assert (=> b!4400858 m!5063659))

(assert (=> b!4400858 m!5063659))

(declare-fun m!5063661 () Bool)

(assert (=> b!4400858 m!5063661))

(declare-fun m!5063663 () Bool)

(assert (=> b!4400864 m!5063663))

(assert (=> b!4400864 m!5063663))

(declare-fun m!5063665 () Bool)

(assert (=> b!4400864 m!5063665))

(declare-fun m!5063667 () Bool)

(assert (=> d!1327017 m!5063667))

(assert (=> d!1327017 m!5063497))

(declare-fun m!5063669 () Bool)

(assert (=> b!4400865 m!5063669))

(assert (=> b!4400865 m!5063377))

(declare-fun m!5063671 () Bool)

(assert (=> b!4400866 m!5063671))

(declare-fun m!5063673 () Bool)

(assert (=> b!4400866 m!5063673))

(assert (=> b!4400866 m!5063663))

(declare-fun m!5063675 () Bool)

(assert (=> b!4400866 m!5063675))

(declare-fun m!5063677 () Bool)

(assert (=> b!4400866 m!5063677))

(assert (=> b!4400866 m!5063663))

(assert (=> b!4400438 d!1327017))

(declare-fun d!1327021 () Bool)

(assert (=> d!1327021 (isDefined!7906 (getValueByKey!599 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918))))

(declare-fun lt!1605867 () Unit!78751)

(assert (=> d!1327021 (= lt!1605867 (choose!27593 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918))))

(assert (=> d!1327021 (invariantList!750 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))))

(assert (=> d!1327021 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!509 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918) lt!1605867)))

(declare-fun bs!728374 () Bool)

(assert (= bs!728374 d!1327021))

(assert (=> bs!728374 m!5063127))

(assert (=> bs!728374 m!5063127))

(assert (=> bs!728374 m!5063129))

(declare-fun m!5063679 () Bool)

(assert (=> bs!728374 m!5063679))

(assert (=> bs!728374 m!5063497))

(assert (=> b!4400440 d!1327021))

(assert (=> b!4400440 d!1326879))

(assert (=> b!4400440 d!1326881))

(declare-fun d!1327023 () Bool)

(assert (=> d!1327023 (contains!11671 (getKeysList!197 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) key!3918)))

(declare-fun lt!1605868 () Unit!78751)

(assert (=> d!1327023 (= lt!1605868 (choose!27594 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918))))

(assert (=> d!1327023 (invariantList!750 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))))

(assert (=> d!1327023 (= (lemmaInListThenGetKeysListContains!194 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))) key!3918) lt!1605868)))

(declare-fun bs!728375 () Bool)

(assert (= bs!728375 d!1327023))

(assert (=> bs!728375 m!5063143))

(assert (=> bs!728375 m!5063143))

(declare-fun m!5063681 () Bool)

(assert (=> bs!728375 m!5063681))

(declare-fun m!5063683 () Bool)

(assert (=> bs!728375 m!5063683))

(assert (=> bs!728375 m!5063497))

(assert (=> b!4400440 d!1327023))

(assert (=> b!4400428 d!1326975))

(assert (=> b!4400428 d!1326977))

(declare-fun d!1327025 () Bool)

(declare-fun lt!1605869 () Bool)

(assert (=> d!1327025 (= lt!1605869 (select (content!7868 (t!356337 (toList!3237 lm!1707))) lt!1605461))))

(declare-fun e!2740252 () Bool)

(assert (=> d!1327025 (= lt!1605869 e!2740252)))

(declare-fun res!1815190 () Bool)

(assert (=> d!1327025 (=> (not res!1815190) (not e!2740252))))

(assert (=> d!1327025 (= res!1815190 ((_ is Cons!49279) (t!356337 (toList!3237 lm!1707))))))

(assert (=> d!1327025 (= (contains!11667 (t!356337 (toList!3237 lm!1707)) lt!1605461) lt!1605869)))

(declare-fun b!4400872 () Bool)

(declare-fun e!2740253 () Bool)

(assert (=> b!4400872 (= e!2740252 e!2740253)))

(declare-fun res!1815191 () Bool)

(assert (=> b!4400872 (=> res!1815191 e!2740253)))

(assert (=> b!4400872 (= res!1815191 (= (h!54904 (t!356337 (toList!3237 lm!1707))) lt!1605461))))

(declare-fun b!4400873 () Bool)

(assert (=> b!4400873 (= e!2740253 (contains!11667 (t!356337 (t!356337 (toList!3237 lm!1707))) lt!1605461))))

(assert (= (and d!1327025 res!1815190) b!4400872))

(assert (= (and b!4400872 (not res!1815191)) b!4400873))

(assert (=> d!1327025 m!5063353))

(declare-fun m!5063685 () Bool)

(assert (=> d!1327025 m!5063685))

(declare-fun m!5063687 () Bool)

(assert (=> b!4400873 m!5063687))

(assert (=> b!4400276 d!1327025))

(assert (=> b!4400240 d!1326645))

(declare-fun d!1327027 () Bool)

(declare-fun lt!1605870 () Int)

(assert (=> d!1327027 (>= lt!1605870 0)))

(declare-fun e!2740254 () Int)

(assert (=> d!1327027 (= lt!1605870 e!2740254)))

(declare-fun c!749244 () Bool)

(assert (=> d!1327027 (= c!749244 ((_ is Nil!49279) (t!356337 (toList!3237 lt!1605458))))))

(assert (=> d!1327027 (= (size!35872 (t!356337 (toList!3237 lt!1605458))) lt!1605870)))

(declare-fun b!4400874 () Bool)

(assert (=> b!4400874 (= e!2740254 0)))

(declare-fun b!4400875 () Bool)

(assert (=> b!4400875 (= e!2740254 (+ 1 (size!35872 (t!356337 (t!356337 (toList!3237 lt!1605458))))))))

(assert (= (and d!1327027 c!749244) b!4400874))

(assert (= (and d!1327027 (not c!749244)) b!4400875))

(declare-fun m!5063689 () Bool)

(assert (=> b!4400875 m!5063689))

(assert (=> b!4400457 d!1327027))

(declare-fun bs!728503 () Bool)

(declare-fun b!4401047 () Bool)

(assert (= bs!728503 (and b!4401047 d!1326795)))

(declare-fun lambda!148946 () Int)

(assert (=> bs!728503 (not (= lambda!148946 lambda!148818))))

(assert (=> b!4401047 true))

(declare-fun bs!728504 () Bool)

(declare-fun b!4401050 () Bool)

(assert (= bs!728504 (and b!4401050 d!1326795)))

(declare-fun lambda!148947 () Int)

(assert (=> bs!728504 (not (= lambda!148947 lambda!148818))))

(declare-fun bs!728505 () Bool)

(assert (= bs!728505 (and b!4401050 b!4401047)))

(assert (=> bs!728505 (= lambda!148947 lambda!148946)))

(assert (=> b!4401050 true))

(declare-fun lambda!148948 () Int)

(assert (=> bs!728504 (not (= lambda!148948 lambda!148818))))

(declare-fun lt!1605992 () ListMap!2481)

(assert (=> bs!728505 (= (= lt!1605992 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148948 lambda!148946))))

(assert (=> b!4401050 (= (= lt!1605992 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148948 lambda!148947))))

(assert (=> b!4401050 true))

(declare-fun bs!728506 () Bool)

(declare-fun d!1327029 () Bool)

(assert (= bs!728506 (and d!1327029 d!1326795)))

(declare-fun lambda!148949 () Int)

(assert (=> bs!728506 (not (= lambda!148949 lambda!148818))))

(declare-fun bs!728507 () Bool)

(assert (= bs!728507 (and d!1327029 b!4401047)))

(declare-fun lt!1605997 () ListMap!2481)

(assert (=> bs!728507 (= (= lt!1605997 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148949 lambda!148946))))

(declare-fun bs!728508 () Bool)

(assert (= bs!728508 (and d!1327029 b!4401050)))

(assert (=> bs!728508 (= (= lt!1605997 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148949 lambda!148947))))

(assert (=> bs!728508 (= (= lt!1605997 lt!1605992) (= lambda!148949 lambda!148948))))

(assert (=> d!1327029 true))

(declare-fun e!2740375 () ListMap!2481)

(assert (=> b!4401047 (= e!2740375 (extractMap!686 (t!356337 (toList!3237 lt!1605458))))))

(declare-fun lt!1605995 () Unit!78751)

(declare-fun call!306261 () Unit!78751)

(assert (=> b!4401047 (= lt!1605995 call!306261)))

(declare-fun call!306263 () Bool)

(assert (=> b!4401047 call!306263))

(declare-fun lt!1605986 () Unit!78751)

(assert (=> b!4401047 (= lt!1605986 lt!1605995)))

(declare-fun call!306262 () Bool)

(assert (=> b!4401047 call!306262))

(declare-fun lt!1605983 () Unit!78751)

(declare-fun Unit!78815 () Unit!78751)

(assert (=> b!4401047 (= lt!1605983 Unit!78815)))

(declare-fun bm!306256 () Bool)

(declare-fun c!749283 () Bool)

(assert (=> bm!306256 (= call!306263 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (ite c!749283 lambda!148946 lambda!148947)))))

(declare-fun e!2740374 () Bool)

(assert (=> d!1327029 e!2740374))

(declare-fun res!1815284 () Bool)

(assert (=> d!1327029 (=> (not res!1815284) (not e!2740374))))

(assert (=> d!1327029 (= res!1815284 (forall!9366 (_2!27734 (h!54904 (toList!3237 lt!1605458))) lambda!148949))))

(assert (=> d!1327029 (= lt!1605997 e!2740375)))

(assert (=> d!1327029 (= c!749283 ((_ is Nil!49278) (_2!27734 (h!54904 (toList!3237 lt!1605458)))))))

(assert (=> d!1327029 (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 lt!1605458))))))

(assert (=> d!1327029 (= (addToMapMapFromBucket!295 (_2!27734 (h!54904 (toList!3237 lt!1605458))) (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) lt!1605997)))

(declare-fun bm!306257 () Bool)

(assert (=> bm!306257 (= call!306262 (forall!9366 (ite c!749283 (toList!3238 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (_2!27734 (h!54904 (toList!3237 lt!1605458)))) (ite c!749283 lambda!148946 lambda!148948)))))

(declare-fun b!4401048 () Bool)

(declare-fun res!1815283 () Bool)

(assert (=> b!4401048 (=> (not res!1815283) (not e!2740374))))

(assert (=> b!4401048 (= res!1815283 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) lambda!148949))))

(declare-fun b!4401049 () Bool)

(declare-fun e!2740376 () Bool)

(assert (=> b!4401049 (= e!2740376 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) lambda!148948))))

(assert (=> b!4401050 (= e!2740375 lt!1605992)))

(declare-fun lt!1605994 () ListMap!2481)

(declare-fun +!870 (ListMap!2481 tuple2!48878) ListMap!2481)

(assert (=> b!4401050 (= lt!1605994 (+!870 (extractMap!686 (t!356337 (toList!3237 lt!1605458))) (h!54903 (_2!27734 (h!54904 (toList!3237 lt!1605458))))))))

(assert (=> b!4401050 (= lt!1605992 (addToMapMapFromBucket!295 (t!356336 (_2!27734 (h!54904 (toList!3237 lt!1605458)))) (+!870 (extractMap!686 (t!356337 (toList!3237 lt!1605458))) (h!54903 (_2!27734 (h!54904 (toList!3237 lt!1605458)))))))))

(declare-fun lt!1605989 () Unit!78751)

(assert (=> b!4401050 (= lt!1605989 call!306261)))

(assert (=> b!4401050 call!306263))

(declare-fun lt!1605988 () Unit!78751)

(assert (=> b!4401050 (= lt!1605988 lt!1605989)))

(assert (=> b!4401050 (forall!9366 (toList!3238 lt!1605994) lambda!148948)))

(declare-fun lt!1605987 () Unit!78751)

(declare-fun Unit!78818 () Unit!78751)

(assert (=> b!4401050 (= lt!1605987 Unit!78818)))

(assert (=> b!4401050 (forall!9366 (t!356336 (_2!27734 (h!54904 (toList!3237 lt!1605458)))) lambda!148948)))

(declare-fun lt!1605996 () Unit!78751)

(declare-fun Unit!78819 () Unit!78751)

(assert (=> b!4401050 (= lt!1605996 Unit!78819)))

(declare-fun lt!1605980 () Unit!78751)

(declare-fun Unit!78820 () Unit!78751)

(assert (=> b!4401050 (= lt!1605980 Unit!78820)))

(declare-fun lt!1605977 () Unit!78751)

(declare-fun forallContained!2003 (List!49402 Int tuple2!48878) Unit!78751)

(assert (=> b!4401050 (= lt!1605977 (forallContained!2003 (toList!3238 lt!1605994) lambda!148948 (h!54903 (_2!27734 (h!54904 (toList!3237 lt!1605458))))))))

(assert (=> b!4401050 (contains!11669 lt!1605994 (_1!27733 (h!54903 (_2!27734 (h!54904 (toList!3237 lt!1605458))))))))

(declare-fun lt!1605979 () Unit!78751)

(declare-fun Unit!78822 () Unit!78751)

(assert (=> b!4401050 (= lt!1605979 Unit!78822)))

(assert (=> b!4401050 (contains!11669 lt!1605992 (_1!27733 (h!54903 (_2!27734 (h!54904 (toList!3237 lt!1605458))))))))

(declare-fun lt!1605978 () Unit!78751)

(declare-fun Unit!78824 () Unit!78751)

(assert (=> b!4401050 (= lt!1605978 Unit!78824)))

(assert (=> b!4401050 call!306262))

(declare-fun lt!1605982 () Unit!78751)

(declare-fun Unit!78825 () Unit!78751)

(assert (=> b!4401050 (= lt!1605982 Unit!78825)))

(assert (=> b!4401050 (forall!9366 (toList!3238 lt!1605994) lambda!148948)))

(declare-fun lt!1605981 () Unit!78751)

(declare-fun Unit!78826 () Unit!78751)

(assert (=> b!4401050 (= lt!1605981 Unit!78826)))

(declare-fun lt!1605991 () Unit!78751)

(declare-fun Unit!78827 () Unit!78751)

(assert (=> b!4401050 (= lt!1605991 Unit!78827)))

(declare-fun lt!1605984 () Unit!78751)

(declare-fun addForallContainsKeyThenBeforeAdding!129 (ListMap!2481 ListMap!2481 K!10635 V!10881) Unit!78751)

(assert (=> b!4401050 (= lt!1605984 (addForallContainsKeyThenBeforeAdding!129 (extractMap!686 (t!356337 (toList!3237 lt!1605458))) lt!1605992 (_1!27733 (h!54903 (_2!27734 (h!54904 (toList!3237 lt!1605458))))) (_2!27733 (h!54903 (_2!27734 (h!54904 (toList!3237 lt!1605458)))))))))

(assert (=> b!4401050 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) lambda!148948)))

(declare-fun lt!1605993 () Unit!78751)

(assert (=> b!4401050 (= lt!1605993 lt!1605984)))

(assert (=> b!4401050 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) lambda!148948)))

(declare-fun lt!1605990 () Unit!78751)

(declare-fun Unit!78828 () Unit!78751)

(assert (=> b!4401050 (= lt!1605990 Unit!78828)))

(declare-fun res!1815285 () Bool)

(assert (=> b!4401050 (= res!1815285 (forall!9366 (_2!27734 (h!54904 (toList!3237 lt!1605458))) lambda!148948))))

(assert (=> b!4401050 (=> (not res!1815285) (not e!2740376))))

(assert (=> b!4401050 e!2740376))

(declare-fun lt!1605985 () Unit!78751)

(declare-fun Unit!78829 () Unit!78751)

(assert (=> b!4401050 (= lt!1605985 Unit!78829)))

(declare-fun b!4401051 () Bool)

(assert (=> b!4401051 (= e!2740374 (invariantList!750 (toList!3238 lt!1605997)))))

(declare-fun bm!306258 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!129 (ListMap!2481) Unit!78751)

(assert (=> bm!306258 (= call!306261 (lemmaContainsAllItsOwnKeys!129 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))))))

(assert (= (and d!1327029 c!749283) b!4401047))

(assert (= (and d!1327029 (not c!749283)) b!4401050))

(assert (= (and b!4401050 res!1815285) b!4401049))

(assert (= (or b!4401047 b!4401050) bm!306258))

(assert (= (or b!4401047 b!4401050) bm!306256))

(assert (= (or b!4401047 b!4401050) bm!306257))

(assert (= (and d!1327029 res!1815284) b!4401048))

(assert (= (and b!4401048 res!1815283) b!4401051))

(assert (=> b!4401050 m!5063083))

(declare-fun m!5064007 () Bool)

(assert (=> b!4401050 m!5064007))

(declare-fun m!5064009 () Bool)

(assert (=> b!4401050 m!5064009))

(declare-fun m!5064011 () Bool)

(assert (=> b!4401050 m!5064011))

(declare-fun m!5064013 () Bool)

(assert (=> b!4401050 m!5064013))

(declare-fun m!5064015 () Bool)

(assert (=> b!4401050 m!5064015))

(assert (=> b!4401050 m!5064013))

(declare-fun m!5064017 () Bool)

(assert (=> b!4401050 m!5064017))

(declare-fun m!5064019 () Bool)

(assert (=> b!4401050 m!5064019))

(assert (=> b!4401050 m!5063083))

(declare-fun m!5064021 () Bool)

(assert (=> b!4401050 m!5064021))

(declare-fun m!5064023 () Bool)

(assert (=> b!4401050 m!5064023))

(assert (=> b!4401050 m!5064011))

(assert (=> b!4401050 m!5064021))

(declare-fun m!5064025 () Bool)

(assert (=> b!4401050 m!5064025))

(assert (=> bm!306258 m!5063083))

(declare-fun m!5064027 () Bool)

(assert (=> bm!306258 m!5064027))

(declare-fun m!5064029 () Bool)

(assert (=> b!4401048 m!5064029))

(declare-fun m!5064031 () Bool)

(assert (=> bm!306256 m!5064031))

(assert (=> b!4401049 m!5064011))

(declare-fun m!5064033 () Bool)

(assert (=> d!1327029 m!5064033))

(assert (=> d!1327029 m!5063197))

(declare-fun m!5064035 () Bool)

(assert (=> bm!306257 m!5064035))

(declare-fun m!5064037 () Bool)

(assert (=> b!4401051 m!5064037))

(assert (=> b!4400406 d!1327029))

(declare-fun bs!728509 () Bool)

(declare-fun d!1327181 () Bool)

(assert (= bs!728509 (and d!1327181 d!1326785)))

(declare-fun lambda!148950 () Int)

(assert (=> bs!728509 (not (= lambda!148950 lambda!148814))))

(declare-fun bs!728510 () Bool)

(assert (= bs!728510 (and d!1327181 d!1326787)))

(assert (=> bs!728510 (not (= lambda!148950 lambda!148815))))

(declare-fun bs!728511 () Bool)

(assert (= bs!728511 (and d!1327181 d!1326775)))

(assert (=> bs!728511 (= lambda!148950 lambda!148811)))

(declare-fun bs!728512 () Bool)

(assert (= bs!728512 (and d!1327181 start!427704)))

(assert (=> bs!728512 (= lambda!148950 lambda!148789)))

(declare-fun bs!728513 () Bool)

(assert (= bs!728513 (and d!1327181 d!1326757)))

(assert (=> bs!728513 (= lambda!148950 lambda!148807)))

(declare-fun bs!728514 () Bool)

(assert (= bs!728514 (and d!1327181 d!1326799)))

(assert (=> bs!728514 (= lambda!148950 lambda!148819)))

(declare-fun bs!728515 () Bool)

(assert (= bs!728515 (and d!1327181 d!1326773)))

(assert (=> bs!728515 (= lambda!148950 lambda!148808)))

(declare-fun lt!1605998 () ListMap!2481)

(assert (=> d!1327181 (invariantList!750 (toList!3238 lt!1605998))))

(declare-fun e!2740377 () ListMap!2481)

(assert (=> d!1327181 (= lt!1605998 e!2740377)))

(declare-fun c!749284 () Bool)

(assert (=> d!1327181 (= c!749284 ((_ is Cons!49279) (t!356337 (toList!3237 lt!1605458))))))

(assert (=> d!1327181 (forall!9364 (t!356337 (toList!3237 lt!1605458)) lambda!148950)))

(assert (=> d!1327181 (= (extractMap!686 (t!356337 (toList!3237 lt!1605458))) lt!1605998)))

(declare-fun b!4401054 () Bool)

(assert (=> b!4401054 (= e!2740377 (addToMapMapFromBucket!295 (_2!27734 (h!54904 (t!356337 (toList!3237 lt!1605458)))) (extractMap!686 (t!356337 (t!356337 (toList!3237 lt!1605458))))))))

(declare-fun b!4401055 () Bool)

(assert (=> b!4401055 (= e!2740377 (ListMap!2482 Nil!49278))))

(assert (= (and d!1327181 c!749284) b!4401054))

(assert (= (and d!1327181 (not c!749284)) b!4401055))

(declare-fun m!5064039 () Bool)

(assert (=> d!1327181 m!5064039))

(declare-fun m!5064041 () Bool)

(assert (=> d!1327181 m!5064041))

(declare-fun m!5064043 () Bool)

(assert (=> b!4401054 m!5064043))

(assert (=> b!4401054 m!5064043))

(declare-fun m!5064045 () Bool)

(assert (=> b!4401054 m!5064045))

(assert (=> b!4400406 d!1327181))

(declare-fun d!1327183 () Bool)

(declare-fun res!1815286 () Bool)

(declare-fun e!2740378 () Bool)

(assert (=> d!1327183 (=> res!1815286 e!2740378)))

(assert (=> d!1327183 (= res!1815286 (not ((_ is Cons!49278) (_2!27734 (h!54904 (toList!3237 lt!1605452))))))))

(assert (=> d!1327183 (= (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 lt!1605452)))) e!2740378)))

(declare-fun b!4401056 () Bool)

(declare-fun e!2740379 () Bool)

(assert (=> b!4401056 (= e!2740378 e!2740379)))

(declare-fun res!1815287 () Bool)

(assert (=> b!4401056 (=> (not res!1815287) (not e!2740379))))

(assert (=> b!4401056 (= res!1815287 (not (containsKey!933 (t!356336 (_2!27734 (h!54904 (toList!3237 lt!1605452)))) (_1!27733 (h!54903 (_2!27734 (h!54904 (toList!3237 lt!1605452))))))))))

(declare-fun b!4401057 () Bool)

(assert (=> b!4401057 (= e!2740379 (noDuplicateKeys!627 (t!356336 (_2!27734 (h!54904 (toList!3237 lt!1605452))))))))

(assert (= (and d!1327183 (not res!1815286)) b!4401056))

(assert (= (and b!4401056 res!1815287) b!4401057))

(declare-fun m!5064047 () Bool)

(assert (=> b!4401056 m!5064047))

(declare-fun m!5064049 () Bool)

(assert (=> b!4401057 m!5064049))

(assert (=> bs!728260 d!1327183))

(declare-fun bs!728516 () Bool)

(declare-fun b!4401058 () Bool)

(assert (= bs!728516 (and b!4401058 d!1326795)))

(declare-fun lambda!148951 () Int)

(assert (=> bs!728516 (not (= lambda!148951 lambda!148818))))

(declare-fun bs!728517 () Bool)

(assert (= bs!728517 (and b!4401058 d!1327029)))

(assert (=> bs!728517 (= (= (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))) lt!1605997) (= lambda!148951 lambda!148949))))

(declare-fun bs!728518 () Bool)

(assert (= bs!728518 (and b!4401058 b!4401047)))

(assert (=> bs!728518 (= (= (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))) (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148951 lambda!148946))))

(declare-fun bs!728519 () Bool)

(assert (= bs!728519 (and b!4401058 b!4401050)))

(assert (=> bs!728519 (= (= (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))) (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148951 lambda!148947))))

(assert (=> bs!728519 (= (= (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))) lt!1605992) (= lambda!148951 lambda!148948))))

(assert (=> b!4401058 true))

(declare-fun bs!728520 () Bool)

(declare-fun b!4401061 () Bool)

(assert (= bs!728520 (and b!4401061 d!1326795)))

(declare-fun lambda!148952 () Int)

(assert (=> bs!728520 (not (= lambda!148952 lambda!148818))))

(declare-fun bs!728521 () Bool)

(assert (= bs!728521 (and b!4401061 d!1327029)))

(assert (=> bs!728521 (= (= (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))) lt!1605997) (= lambda!148952 lambda!148949))))

(declare-fun bs!728522 () Bool)

(assert (= bs!728522 (and b!4401061 b!4401047)))

(assert (=> bs!728522 (= (= (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))) (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148952 lambda!148946))))

(declare-fun bs!728523 () Bool)

(assert (= bs!728523 (and b!4401061 b!4401058)))

(assert (=> bs!728523 (= lambda!148952 lambda!148951)))

(declare-fun bs!728524 () Bool)

(assert (= bs!728524 (and b!4401061 b!4401050)))

(assert (=> bs!728524 (= (= (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))) (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148952 lambda!148947))))

(assert (=> bs!728524 (= (= (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))) lt!1605992) (= lambda!148952 lambda!148948))))

(assert (=> b!4401061 true))

(declare-fun lambda!148953 () Int)

(assert (=> bs!728520 (not (= lambda!148953 lambda!148818))))

(declare-fun lt!1606014 () ListMap!2481)

(assert (=> bs!728521 (= (= lt!1606014 lt!1605997) (= lambda!148953 lambda!148949))))

(assert (=> bs!728522 (= (= lt!1606014 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148953 lambda!148946))))

(assert (=> bs!728523 (= (= lt!1606014 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (= lambda!148953 lambda!148951))))

(assert (=> bs!728524 (= (= lt!1606014 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148953 lambda!148947))))

(assert (=> bs!728524 (= (= lt!1606014 lt!1605992) (= lambda!148953 lambda!148948))))

(assert (=> b!4401061 (= (= lt!1606014 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (= lambda!148953 lambda!148952))))

(assert (=> b!4401061 true))

(declare-fun bs!728525 () Bool)

(declare-fun d!1327185 () Bool)

(assert (= bs!728525 (and d!1327185 d!1326795)))

(declare-fun lambda!148954 () Int)

(assert (=> bs!728525 (not (= lambda!148954 lambda!148818))))

(declare-fun bs!728526 () Bool)

(assert (= bs!728526 (and d!1327185 d!1327029)))

(declare-fun lt!1606019 () ListMap!2481)

(assert (=> bs!728526 (= (= lt!1606019 lt!1605997) (= lambda!148954 lambda!148949))))

(declare-fun bs!728527 () Bool)

(assert (= bs!728527 (and d!1327185 b!4401047)))

(assert (=> bs!728527 (= (= lt!1606019 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148954 lambda!148946))))

(declare-fun bs!728528 () Bool)

(assert (= bs!728528 (and d!1327185 b!4401058)))

(assert (=> bs!728528 (= (= lt!1606019 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (= lambda!148954 lambda!148951))))

(declare-fun bs!728529 () Bool)

(assert (= bs!728529 (and d!1327185 b!4401061)))

(assert (=> bs!728529 (= (= lt!1606019 lt!1606014) (= lambda!148954 lambda!148953))))

(declare-fun bs!728530 () Bool)

(assert (= bs!728530 (and d!1327185 b!4401050)))

(assert (=> bs!728530 (= (= lt!1606019 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148954 lambda!148947))))

(assert (=> bs!728530 (= (= lt!1606019 lt!1605992) (= lambda!148954 lambda!148948))))

(assert (=> bs!728529 (= (= lt!1606019 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (= lambda!148954 lambda!148952))))

(assert (=> d!1327185 true))

(declare-fun e!2740381 () ListMap!2481)

(assert (=> b!4401058 (= e!2740381 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))))))

(declare-fun lt!1606017 () Unit!78751)

(declare-fun call!306264 () Unit!78751)

(assert (=> b!4401058 (= lt!1606017 call!306264)))

(declare-fun call!306266 () Bool)

(assert (=> b!4401058 call!306266))

(declare-fun lt!1606008 () Unit!78751)

(assert (=> b!4401058 (= lt!1606008 lt!1606017)))

(declare-fun call!306265 () Bool)

(assert (=> b!4401058 call!306265))

(declare-fun lt!1606005 () Unit!78751)

(declare-fun Unit!78830 () Unit!78751)

(assert (=> b!4401058 (= lt!1606005 Unit!78830)))

(declare-fun c!749285 () Bool)

(declare-fun bm!306259 () Bool)

(assert (=> bm!306259 (= call!306266 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (ite c!749285 lambda!148951 lambda!148952)))))

(declare-fun e!2740380 () Bool)

(assert (=> d!1327185 e!2740380))

(declare-fun res!1815289 () Bool)

(assert (=> d!1327185 (=> (not res!1815289) (not e!2740380))))

(assert (=> d!1327185 (= res!1815289 (forall!9366 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707)))) lambda!148954))))

(assert (=> d!1327185 (= lt!1606019 e!2740381)))

(assert (=> d!1327185 (= c!749285 ((_ is Nil!49278) (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707))))))))

(assert (=> d!1327185 (noDuplicateKeys!627 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707)))))))

(assert (=> d!1327185 (= (addToMapMapFromBucket!295 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707)))) (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) lt!1606019)))

(declare-fun bm!306260 () Bool)

(assert (=> bm!306260 (= call!306265 (forall!9366 (ite c!749285 (toList!3238 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707))))) (ite c!749285 lambda!148951 lambda!148953)))))

(declare-fun b!4401059 () Bool)

(declare-fun res!1815288 () Bool)

(assert (=> b!4401059 (=> (not res!1815288) (not e!2740380))))

(assert (=> b!4401059 (= res!1815288 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) lambda!148954))))

(declare-fun b!4401060 () Bool)

(declare-fun e!2740382 () Bool)

(assert (=> b!4401060 (= e!2740382 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) lambda!148953))))

(assert (=> b!4401061 (= e!2740381 lt!1606014)))

(declare-fun lt!1606016 () ListMap!2481)

(assert (=> b!4401061 (= lt!1606016 (+!870 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))) (h!54903 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707)))))))))

(assert (=> b!4401061 (= lt!1606014 (addToMapMapFromBucket!295 (t!356336 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707))))) (+!870 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))) (h!54903 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707))))))))))

(declare-fun lt!1606011 () Unit!78751)

(assert (=> b!4401061 (= lt!1606011 call!306264)))

(assert (=> b!4401061 call!306266))

(declare-fun lt!1606010 () Unit!78751)

(assert (=> b!4401061 (= lt!1606010 lt!1606011)))

(assert (=> b!4401061 (forall!9366 (toList!3238 lt!1606016) lambda!148953)))

(declare-fun lt!1606009 () Unit!78751)

(declare-fun Unit!78831 () Unit!78751)

(assert (=> b!4401061 (= lt!1606009 Unit!78831)))

(assert (=> b!4401061 (forall!9366 (t!356336 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707))))) lambda!148953)))

(declare-fun lt!1606018 () Unit!78751)

(declare-fun Unit!78832 () Unit!78751)

(assert (=> b!4401061 (= lt!1606018 Unit!78832)))

(declare-fun lt!1606002 () Unit!78751)

(declare-fun Unit!78833 () Unit!78751)

(assert (=> b!4401061 (= lt!1606002 Unit!78833)))

(declare-fun lt!1605999 () Unit!78751)

(assert (=> b!4401061 (= lt!1605999 (forallContained!2003 (toList!3238 lt!1606016) lambda!148953 (h!54903 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707)))))))))

(assert (=> b!4401061 (contains!11669 lt!1606016 (_1!27733 (h!54903 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707)))))))))

(declare-fun lt!1606001 () Unit!78751)

(declare-fun Unit!78834 () Unit!78751)

(assert (=> b!4401061 (= lt!1606001 Unit!78834)))

(assert (=> b!4401061 (contains!11669 lt!1606014 (_1!27733 (h!54903 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707)))))))))

(declare-fun lt!1606000 () Unit!78751)

(declare-fun Unit!78835 () Unit!78751)

(assert (=> b!4401061 (= lt!1606000 Unit!78835)))

(assert (=> b!4401061 call!306265))

(declare-fun lt!1606004 () Unit!78751)

(declare-fun Unit!78836 () Unit!78751)

(assert (=> b!4401061 (= lt!1606004 Unit!78836)))

(assert (=> b!4401061 (forall!9366 (toList!3238 lt!1606016) lambda!148953)))

(declare-fun lt!1606003 () Unit!78751)

(declare-fun Unit!78837 () Unit!78751)

(assert (=> b!4401061 (= lt!1606003 Unit!78837)))

(declare-fun lt!1606013 () Unit!78751)

(declare-fun Unit!78838 () Unit!78751)

(assert (=> b!4401061 (= lt!1606013 Unit!78838)))

(declare-fun lt!1606006 () Unit!78751)

(assert (=> b!4401061 (= lt!1606006 (addForallContainsKeyThenBeforeAdding!129 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))) lt!1606014 (_1!27733 (h!54903 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707)))))) (_2!27733 (h!54903 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707))))))))))

(assert (=> b!4401061 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) lambda!148953)))

(declare-fun lt!1606015 () Unit!78751)

(assert (=> b!4401061 (= lt!1606015 lt!1606006)))

(assert (=> b!4401061 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) lambda!148953)))

(declare-fun lt!1606012 () Unit!78751)

(declare-fun Unit!78839 () Unit!78751)

(assert (=> b!4401061 (= lt!1606012 Unit!78839)))

(declare-fun res!1815290 () Bool)

(assert (=> b!4401061 (= res!1815290 (forall!9366 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707)))) lambda!148953))))

(assert (=> b!4401061 (=> (not res!1815290) (not e!2740382))))

(assert (=> b!4401061 e!2740382))

(declare-fun lt!1606007 () Unit!78751)

(declare-fun Unit!78840 () Unit!78751)

(assert (=> b!4401061 (= lt!1606007 Unit!78840)))

(declare-fun b!4401062 () Bool)

(assert (=> b!4401062 (= e!2740380 (invariantList!750 (toList!3238 lt!1606019)))))

(declare-fun bm!306261 () Bool)

(assert (=> bm!306261 (= call!306264 (lemmaContainsAllItsOwnKeys!129 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))))))

(assert (= (and d!1327185 c!749285) b!4401058))

(assert (= (and d!1327185 (not c!749285)) b!4401061))

(assert (= (and b!4401061 res!1815290) b!4401060))

(assert (= (or b!4401058 b!4401061) bm!306261))

(assert (= (or b!4401058 b!4401061) bm!306259))

(assert (= (or b!4401058 b!4401061) bm!306260))

(assert (= (and d!1327185 res!1815289) b!4401059))

(assert (= (and b!4401059 res!1815288) b!4401062))

(assert (=> b!4401061 m!5063097))

(declare-fun m!5064051 () Bool)

(assert (=> b!4401061 m!5064051))

(declare-fun m!5064053 () Bool)

(assert (=> b!4401061 m!5064053))

(declare-fun m!5064055 () Bool)

(assert (=> b!4401061 m!5064055))

(declare-fun m!5064057 () Bool)

(assert (=> b!4401061 m!5064057))

(declare-fun m!5064059 () Bool)

(assert (=> b!4401061 m!5064059))

(assert (=> b!4401061 m!5064057))

(declare-fun m!5064061 () Bool)

(assert (=> b!4401061 m!5064061))

(declare-fun m!5064063 () Bool)

(assert (=> b!4401061 m!5064063))

(assert (=> b!4401061 m!5063097))

(declare-fun m!5064065 () Bool)

(assert (=> b!4401061 m!5064065))

(declare-fun m!5064067 () Bool)

(assert (=> b!4401061 m!5064067))

(assert (=> b!4401061 m!5064055))

(assert (=> b!4401061 m!5064065))

(declare-fun m!5064069 () Bool)

(assert (=> b!4401061 m!5064069))

(assert (=> bm!306261 m!5063097))

(declare-fun m!5064071 () Bool)

(assert (=> bm!306261 m!5064071))

(declare-fun m!5064073 () Bool)

(assert (=> b!4401059 m!5064073))

(declare-fun m!5064075 () Bool)

(assert (=> bm!306259 m!5064075))

(assert (=> b!4401060 m!5064055))

(declare-fun m!5064077 () Bool)

(assert (=> d!1327185 m!5064077))

(declare-fun m!5064079 () Bool)

(assert (=> d!1327185 m!5064079))

(declare-fun m!5064081 () Bool)

(assert (=> bm!306260 m!5064081))

(declare-fun m!5064083 () Bool)

(assert (=> b!4401062 m!5064083))

(assert (=> b!4400408 d!1327185))

(declare-fun bs!728531 () Bool)

(declare-fun d!1327187 () Bool)

(assert (= bs!728531 (and d!1327187 d!1326785)))

(declare-fun lambda!148955 () Int)

(assert (=> bs!728531 (not (= lambda!148955 lambda!148814))))

(declare-fun bs!728532 () Bool)

(assert (= bs!728532 (and d!1327187 d!1326787)))

(assert (=> bs!728532 (not (= lambda!148955 lambda!148815))))

(declare-fun bs!728533 () Bool)

(assert (= bs!728533 (and d!1327187 d!1326775)))

(assert (=> bs!728533 (= lambda!148955 lambda!148811)))

(declare-fun bs!728534 () Bool)

(assert (= bs!728534 (and d!1327187 start!427704)))

(assert (=> bs!728534 (= lambda!148955 lambda!148789)))

(declare-fun bs!728535 () Bool)

(assert (= bs!728535 (and d!1327187 d!1326757)))

(assert (=> bs!728535 (= lambda!148955 lambda!148807)))

(declare-fun bs!728536 () Bool)

(assert (= bs!728536 (and d!1327187 d!1326799)))

(assert (=> bs!728536 (= lambda!148955 lambda!148819)))

(declare-fun bs!728537 () Bool)

(assert (= bs!728537 (and d!1327187 d!1326773)))

(assert (=> bs!728537 (= lambda!148955 lambda!148808)))

(declare-fun bs!728538 () Bool)

(assert (= bs!728538 (and d!1327187 d!1327181)))

(assert (=> bs!728538 (= lambda!148955 lambda!148950)))

(declare-fun lt!1606020 () ListMap!2481)

(assert (=> d!1327187 (invariantList!750 (toList!3238 lt!1606020))))

(declare-fun e!2740383 () ListMap!2481)

(assert (=> d!1327187 (= lt!1606020 e!2740383)))

(declare-fun c!749286 () Bool)

(assert (=> d!1327187 (= c!749286 ((_ is Cons!49279) (t!356337 (t!356337 (toList!3237 lm!1707)))))))

(assert (=> d!1327187 (forall!9364 (t!356337 (t!356337 (toList!3237 lm!1707))) lambda!148955)))

(assert (=> d!1327187 (= (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707)))) lt!1606020)))

(declare-fun b!4401063 () Bool)

(assert (=> b!4401063 (= e!2740383 (addToMapMapFromBucket!295 (_2!27734 (h!54904 (t!356337 (t!356337 (toList!3237 lm!1707))))) (extractMap!686 (t!356337 (t!356337 (t!356337 (toList!3237 lm!1707)))))))))

(declare-fun b!4401064 () Bool)

(assert (=> b!4401064 (= e!2740383 (ListMap!2482 Nil!49278))))

(assert (= (and d!1327187 c!749286) b!4401063))

(assert (= (and d!1327187 (not c!749286)) b!4401064))

(declare-fun m!5064085 () Bool)

(assert (=> d!1327187 m!5064085))

(declare-fun m!5064087 () Bool)

(assert (=> d!1327187 m!5064087))

(declare-fun m!5064089 () Bool)

(assert (=> b!4401063 m!5064089))

(assert (=> b!4401063 m!5064089))

(declare-fun m!5064091 () Bool)

(assert (=> b!4401063 m!5064091))

(assert (=> b!4400408 d!1327187))

(declare-fun d!1327189 () Bool)

(declare-fun res!1815291 () Bool)

(declare-fun e!2740384 () Bool)

(assert (=> d!1327189 (=> res!1815291 e!2740384)))

(assert (=> d!1327189 (= res!1815291 (and ((_ is Cons!49278) (t!356336 newBucket!200)) (= (_1!27733 (h!54903 (t!356336 newBucket!200))) (_1!27733 (h!54903 newBucket!200)))))))

(assert (=> d!1327189 (= (containsKey!933 (t!356336 newBucket!200) (_1!27733 (h!54903 newBucket!200))) e!2740384)))

(declare-fun b!4401065 () Bool)

(declare-fun e!2740385 () Bool)

(assert (=> b!4401065 (= e!2740384 e!2740385)))

(declare-fun res!1815292 () Bool)

(assert (=> b!4401065 (=> (not res!1815292) (not e!2740385))))

(assert (=> b!4401065 (= res!1815292 ((_ is Cons!49278) (t!356336 newBucket!200)))))

(declare-fun b!4401066 () Bool)

(assert (=> b!4401066 (= e!2740385 (containsKey!933 (t!356336 (t!356336 newBucket!200)) (_1!27733 (h!54903 newBucket!200))))))

(assert (= (and d!1327189 (not res!1815291)) b!4401065))

(assert (= (and b!4401065 res!1815292) b!4401066))

(declare-fun m!5064093 () Bool)

(assert (=> b!4401066 m!5064093))

(assert (=> b!4400379 d!1327189))

(declare-fun d!1327191 () Bool)

(declare-fun res!1815293 () Bool)

(declare-fun e!2740386 () Bool)

(assert (=> d!1327191 (=> res!1815293 e!2740386)))

(assert (=> d!1327191 (= res!1815293 ((_ is Nil!49279) (t!356337 (toList!3237 lm!1707))))))

(assert (=> d!1327191 (= (forall!9364 (t!356337 (toList!3237 lm!1707)) lambda!148789) e!2740386)))

(declare-fun b!4401067 () Bool)

(declare-fun e!2740387 () Bool)

(assert (=> b!4401067 (= e!2740386 e!2740387)))

(declare-fun res!1815294 () Bool)

(assert (=> b!4401067 (=> (not res!1815294) (not e!2740387))))

(assert (=> b!4401067 (= res!1815294 (dynLambda!20762 lambda!148789 (h!54904 (t!356337 (toList!3237 lm!1707)))))))

(declare-fun b!4401068 () Bool)

(assert (=> b!4401068 (= e!2740387 (forall!9364 (t!356337 (t!356337 (toList!3237 lm!1707))) lambda!148789))))

(assert (= (and d!1327191 (not res!1815293)) b!4401067))

(assert (= (and b!4401067 res!1815294) b!4401068))

(declare-fun b_lambda!139823 () Bool)

(assert (=> (not b_lambda!139823) (not b!4401067)))

(declare-fun m!5064095 () Bool)

(assert (=> b!4401067 m!5064095))

(declare-fun m!5064097 () Bool)

(assert (=> b!4401068 m!5064097))

(assert (=> b!4400359 d!1327191))

(declare-fun d!1327193 () Bool)

(assert (=> d!1327193 (isDefined!7905 (getValueByKey!598 (toList!3237 lm!1707) hash!377))))

(declare-fun lt!1606021 () Unit!78751)

(assert (=> d!1327193 (= lt!1606021 (choose!27591 (toList!3237 lm!1707) hash!377))))

(declare-fun e!2740388 () Bool)

(assert (=> d!1327193 e!2740388))

(declare-fun res!1815295 () Bool)

(assert (=> d!1327193 (=> (not res!1815295) (not e!2740388))))

(assert (=> d!1327193 (= res!1815295 (isStrictlySorted!176 (toList!3237 lm!1707)))))

(assert (=> d!1327193 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!508 (toList!3237 lm!1707) hash!377) lt!1606021)))

(declare-fun b!4401069 () Bool)

(assert (=> b!4401069 (= e!2740388 (containsKey!936 (toList!3237 lm!1707) hash!377))))

(assert (= (and d!1327193 res!1815295) b!4401069))

(assert (=> d!1327193 m!5062861))

(assert (=> d!1327193 m!5062861))

(assert (=> d!1327193 m!5063053))

(declare-fun m!5064099 () Bool)

(assert (=> d!1327193 m!5064099))

(assert (=> d!1327193 m!5062889))

(assert (=> b!4401069 m!5063045))

(assert (=> b!4400382 d!1327193))

(declare-fun d!1327195 () Bool)

(assert (=> d!1327195 (= (isDefined!7905 (getValueByKey!598 (toList!3237 lm!1707) hash!377)) (not (isEmpty!28283 (getValueByKey!598 (toList!3237 lm!1707) hash!377))))))

(declare-fun bs!728539 () Bool)

(assert (= bs!728539 d!1327195))

(assert (=> bs!728539 m!5062861))

(declare-fun m!5064101 () Bool)

(assert (=> bs!728539 m!5064101))

(assert (=> b!4400382 d!1327195))

(declare-fun b!4401071 () Bool)

(declare-fun e!2740389 () Option!10612)

(declare-fun e!2740390 () Option!10612)

(assert (=> b!4401071 (= e!2740389 e!2740390)))

(declare-fun c!749288 () Bool)

(assert (=> b!4401071 (= c!749288 (and ((_ is Cons!49279) (toList!3237 lm!1707)) (not (= (_1!27734 (h!54904 (toList!3237 lm!1707))) hash!377))))))

(declare-fun b!4401070 () Bool)

(assert (=> b!4401070 (= e!2740389 (Some!10611 (_2!27734 (h!54904 (toList!3237 lm!1707)))))))

(declare-fun d!1327197 () Bool)

(declare-fun c!749287 () Bool)

(assert (=> d!1327197 (= c!749287 (and ((_ is Cons!49279) (toList!3237 lm!1707)) (= (_1!27734 (h!54904 (toList!3237 lm!1707))) hash!377)))))

(assert (=> d!1327197 (= (getValueByKey!598 (toList!3237 lm!1707) hash!377) e!2740389)))

(declare-fun b!4401073 () Bool)

(assert (=> b!4401073 (= e!2740390 None!10611)))

(declare-fun b!4401072 () Bool)

(assert (=> b!4401072 (= e!2740390 (getValueByKey!598 (t!356337 (toList!3237 lm!1707)) hash!377))))

(assert (= (and d!1327197 c!749287) b!4401070))

(assert (= (and d!1327197 (not c!749287)) b!4401071))

(assert (= (and b!4401071 c!749288) b!4401072))

(assert (= (and b!4401071 (not c!749288)) b!4401073))

(declare-fun m!5064103 () Bool)

(assert (=> b!4401072 m!5064103))

(assert (=> b!4400382 d!1327197))

(assert (=> b!4400433 d!1326977))

(declare-fun d!1327199 () Bool)

(declare-fun lt!1606022 () Int)

(assert (=> d!1327199 (>= lt!1606022 0)))

(declare-fun e!2740391 () Int)

(assert (=> d!1327199 (= lt!1606022 e!2740391)))

(declare-fun c!749289 () Bool)

(assert (=> d!1327199 (= c!749289 ((_ is Nil!49279) (t!356337 (toList!3237 lm!1707))))))

(assert (=> d!1327199 (= (size!35872 (t!356337 (toList!3237 lm!1707))) lt!1606022)))

(declare-fun b!4401074 () Bool)

(assert (=> b!4401074 (= e!2740391 0)))

(declare-fun b!4401075 () Bool)

(assert (=> b!4401075 (= e!2740391 (+ 1 (size!35872 (t!356337 (t!356337 (toList!3237 lm!1707))))))))

(assert (= (and d!1327199 c!749289) b!4401074))

(assert (= (and d!1327199 (not c!749289)) b!4401075))

(declare-fun m!5064105 () Bool)

(assert (=> b!4401075 m!5064105))

(assert (=> b!4400459 d!1327199))

(declare-fun lt!1606023 () Bool)

(declare-fun d!1327201 () Bool)

(assert (=> d!1327201 (= lt!1606023 (select (content!7868 (toList!3237 lt!1605458)) (tuple2!48881 hash!377 lt!1605465)))))

(declare-fun e!2740392 () Bool)

(assert (=> d!1327201 (= lt!1606023 e!2740392)))

(declare-fun res!1815296 () Bool)

(assert (=> d!1327201 (=> (not res!1815296) (not e!2740392))))

(assert (=> d!1327201 (= res!1815296 ((_ is Cons!49279) (toList!3237 lt!1605458)))))

(assert (=> d!1327201 (= (contains!11667 (toList!3237 lt!1605458) (tuple2!48881 hash!377 lt!1605465)) lt!1606023)))

(declare-fun b!4401076 () Bool)

(declare-fun e!2740393 () Bool)

(assert (=> b!4401076 (= e!2740392 e!2740393)))

(declare-fun res!1815297 () Bool)

(assert (=> b!4401076 (=> res!1815297 e!2740393)))

(assert (=> b!4401076 (= res!1815297 (= (h!54904 (toList!3237 lt!1605458)) (tuple2!48881 hash!377 lt!1605465)))))

(declare-fun b!4401077 () Bool)

(assert (=> b!4401077 (= e!2740393 (contains!11667 (t!356337 (toList!3237 lt!1605458)) (tuple2!48881 hash!377 lt!1605465)))))

(assert (= (and d!1327201 res!1815296) b!4401076))

(assert (= (and b!4401076 (not res!1815297)) b!4401077))

(assert (=> d!1327201 m!5062775))

(declare-fun m!5064107 () Bool)

(assert (=> d!1327201 m!5064107))

(declare-fun m!5064109 () Bool)

(assert (=> b!4401077 m!5064109))

(assert (=> d!1326655 d!1327201))

(declare-fun d!1327203 () Bool)

(assert (=> d!1327203 (contains!11667 (toList!3237 lt!1605458) (tuple2!48881 hash!377 lt!1605465))))

(assert (=> d!1327203 true))

(declare-fun _$14!899 () Unit!78751)

(assert (=> d!1327203 (= (choose!27580 (toList!3237 lt!1605458) hash!377 lt!1605465) _$14!899)))

(declare-fun bs!728540 () Bool)

(assert (= bs!728540 d!1327203))

(assert (=> bs!728540 m!5062797))

(assert (=> d!1326655 d!1327203))

(declare-fun d!1327205 () Bool)

(declare-fun res!1815298 () Bool)

(declare-fun e!2740394 () Bool)

(assert (=> d!1327205 (=> res!1815298 e!2740394)))

(assert (=> d!1327205 (= res!1815298 (or ((_ is Nil!49279) (toList!3237 lt!1605458)) ((_ is Nil!49279) (t!356337 (toList!3237 lt!1605458)))))))

(assert (=> d!1327205 (= (isStrictlySorted!176 (toList!3237 lt!1605458)) e!2740394)))

(declare-fun b!4401078 () Bool)

(declare-fun e!2740395 () Bool)

(assert (=> b!4401078 (= e!2740394 e!2740395)))

(declare-fun res!1815299 () Bool)

(assert (=> b!4401078 (=> (not res!1815299) (not e!2740395))))

(assert (=> b!4401078 (= res!1815299 (bvslt (_1!27734 (h!54904 (toList!3237 lt!1605458))) (_1!27734 (h!54904 (t!356337 (toList!3237 lt!1605458))))))))

(declare-fun b!4401079 () Bool)

(assert (=> b!4401079 (= e!2740395 (isStrictlySorted!176 (t!356337 (toList!3237 lt!1605458))))))

(assert (= (and d!1327205 (not res!1815298)) b!4401078))

(assert (= (and b!4401078 res!1815299) b!4401079))

(declare-fun m!5064111 () Bool)

(assert (=> b!4401079 m!5064111))

(assert (=> d!1326655 d!1327205))

(declare-fun bs!728541 () Bool)

(declare-fun b!4401080 () Bool)

(assert (= bs!728541 (and b!4401080 d!1326795)))

(declare-fun lambda!148956 () Int)

(assert (=> bs!728541 (not (= lambda!148956 lambda!148818))))

(declare-fun bs!728542 () Bool)

(assert (= bs!728542 (and b!4401080 d!1327029)))

(assert (=> bs!728542 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) lt!1605997) (= lambda!148956 lambda!148949))))

(declare-fun bs!728543 () Bool)

(assert (= bs!728543 (and b!4401080 d!1327185)))

(assert (=> bs!728543 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) lt!1606019) (= lambda!148956 lambda!148954))))

(declare-fun bs!728544 () Bool)

(assert (= bs!728544 (and b!4401080 b!4401047)))

(assert (=> bs!728544 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148956 lambda!148946))))

(declare-fun bs!728545 () Bool)

(assert (= bs!728545 (and b!4401080 b!4401058)))

(assert (=> bs!728545 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (= lambda!148956 lambda!148951))))

(declare-fun bs!728546 () Bool)

(assert (= bs!728546 (and b!4401080 b!4401061)))

(assert (=> bs!728546 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) lt!1606014) (= lambda!148956 lambda!148953))))

(declare-fun bs!728547 () Bool)

(assert (= bs!728547 (and b!4401080 b!4401050)))

(assert (=> bs!728547 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148956 lambda!148947))))

(assert (=> bs!728547 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) lt!1605992) (= lambda!148956 lambda!148948))))

(assert (=> bs!728546 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (= lambda!148956 lambda!148952))))

(assert (=> b!4401080 true))

(declare-fun bs!728548 () Bool)

(declare-fun b!4401083 () Bool)

(assert (= bs!728548 (and b!4401083 b!4401080)))

(declare-fun lambda!148957 () Int)

(assert (=> bs!728548 (= lambda!148957 lambda!148956)))

(declare-fun bs!728549 () Bool)

(assert (= bs!728549 (and b!4401083 d!1326795)))

(assert (=> bs!728549 (not (= lambda!148957 lambda!148818))))

(declare-fun bs!728550 () Bool)

(assert (= bs!728550 (and b!4401083 d!1327029)))

(assert (=> bs!728550 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) lt!1605997) (= lambda!148957 lambda!148949))))

(declare-fun bs!728551 () Bool)

(assert (= bs!728551 (and b!4401083 d!1327185)))

(assert (=> bs!728551 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) lt!1606019) (= lambda!148957 lambda!148954))))

(declare-fun bs!728552 () Bool)

(assert (= bs!728552 (and b!4401083 b!4401047)))

(assert (=> bs!728552 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148957 lambda!148946))))

(declare-fun bs!728553 () Bool)

(assert (= bs!728553 (and b!4401083 b!4401058)))

(assert (=> bs!728553 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (= lambda!148957 lambda!148951))))

(declare-fun bs!728554 () Bool)

(assert (= bs!728554 (and b!4401083 b!4401061)))

(assert (=> bs!728554 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) lt!1606014) (= lambda!148957 lambda!148953))))

(declare-fun bs!728555 () Bool)

(assert (= bs!728555 (and b!4401083 b!4401050)))

(assert (=> bs!728555 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148957 lambda!148947))))

(assert (=> bs!728555 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) lt!1605992) (= lambda!148957 lambda!148948))))

(assert (=> bs!728554 (= (= (extractMap!686 (t!356337 (toList!3237 lm!1707))) (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (= lambda!148957 lambda!148952))))

(assert (=> b!4401083 true))

(declare-fun lambda!148958 () Int)

(declare-fun lt!1606039 () ListMap!2481)

(assert (=> bs!728548 (= (= lt!1606039 (extractMap!686 (t!356337 (toList!3237 lm!1707)))) (= lambda!148958 lambda!148956))))

(assert (=> b!4401083 (= (= lt!1606039 (extractMap!686 (t!356337 (toList!3237 lm!1707)))) (= lambda!148958 lambda!148957))))

(assert (=> bs!728549 (not (= lambda!148958 lambda!148818))))

(assert (=> bs!728550 (= (= lt!1606039 lt!1605997) (= lambda!148958 lambda!148949))))

(assert (=> bs!728551 (= (= lt!1606039 lt!1606019) (= lambda!148958 lambda!148954))))

(assert (=> bs!728552 (= (= lt!1606039 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148958 lambda!148946))))

(assert (=> bs!728553 (= (= lt!1606039 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (= lambda!148958 lambda!148951))))

(assert (=> bs!728554 (= (= lt!1606039 lt!1606014) (= lambda!148958 lambda!148953))))

(assert (=> bs!728555 (= (= lt!1606039 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148958 lambda!148947))))

(assert (=> bs!728555 (= (= lt!1606039 lt!1605992) (= lambda!148958 lambda!148948))))

(assert (=> bs!728554 (= (= lt!1606039 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (= lambda!148958 lambda!148952))))

(assert (=> b!4401083 true))

(declare-fun bs!728556 () Bool)

(declare-fun d!1327207 () Bool)

(assert (= bs!728556 (and d!1327207 b!4401080)))

(declare-fun lt!1606044 () ListMap!2481)

(declare-fun lambda!148959 () Int)

(assert (=> bs!728556 (= (= lt!1606044 (extractMap!686 (t!356337 (toList!3237 lm!1707)))) (= lambda!148959 lambda!148956))))

(declare-fun bs!728557 () Bool)

(assert (= bs!728557 (and d!1327207 b!4401083)))

(assert (=> bs!728557 (= (= lt!1606044 lt!1606039) (= lambda!148959 lambda!148958))))

(assert (=> bs!728557 (= (= lt!1606044 (extractMap!686 (t!356337 (toList!3237 lm!1707)))) (= lambda!148959 lambda!148957))))

(declare-fun bs!728558 () Bool)

(assert (= bs!728558 (and d!1327207 d!1326795)))

(assert (=> bs!728558 (not (= lambda!148959 lambda!148818))))

(declare-fun bs!728559 () Bool)

(assert (= bs!728559 (and d!1327207 d!1327029)))

(assert (=> bs!728559 (= (= lt!1606044 lt!1605997) (= lambda!148959 lambda!148949))))

(declare-fun bs!728560 () Bool)

(assert (= bs!728560 (and d!1327207 d!1327185)))

(assert (=> bs!728560 (= (= lt!1606044 lt!1606019) (= lambda!148959 lambda!148954))))

(declare-fun bs!728561 () Bool)

(assert (= bs!728561 (and d!1327207 b!4401047)))

(assert (=> bs!728561 (= (= lt!1606044 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148959 lambda!148946))))

(declare-fun bs!728562 () Bool)

(assert (= bs!728562 (and d!1327207 b!4401058)))

(assert (=> bs!728562 (= (= lt!1606044 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (= lambda!148959 lambda!148951))))

(declare-fun bs!728563 () Bool)

(assert (= bs!728563 (and d!1327207 b!4401061)))

(assert (=> bs!728563 (= (= lt!1606044 lt!1606014) (= lambda!148959 lambda!148953))))

(declare-fun bs!728564 () Bool)

(assert (= bs!728564 (and d!1327207 b!4401050)))

(assert (=> bs!728564 (= (= lt!1606044 (extractMap!686 (t!356337 (toList!3237 lt!1605458)))) (= lambda!148959 lambda!148947))))

(assert (=> bs!728564 (= (= lt!1606044 lt!1605992) (= lambda!148959 lambda!148948))))

(assert (=> bs!728563 (= (= lt!1606044 (extractMap!686 (t!356337 (t!356337 (toList!3237 lm!1707))))) (= lambda!148959 lambda!148952))))

(assert (=> d!1327207 true))

(declare-fun e!2740397 () ListMap!2481)

(assert (=> b!4401080 (= e!2740397 (extractMap!686 (t!356337 (toList!3237 lm!1707))))))

(declare-fun lt!1606042 () Unit!78751)

(declare-fun call!306267 () Unit!78751)

(assert (=> b!4401080 (= lt!1606042 call!306267)))

(declare-fun call!306269 () Bool)

(assert (=> b!4401080 call!306269))

(declare-fun lt!1606033 () Unit!78751)

(assert (=> b!4401080 (= lt!1606033 lt!1606042)))

(declare-fun call!306268 () Bool)

(assert (=> b!4401080 call!306268))

(declare-fun lt!1606030 () Unit!78751)

(declare-fun Unit!78845 () Unit!78751)

(assert (=> b!4401080 (= lt!1606030 Unit!78845)))

(declare-fun c!749290 () Bool)

(declare-fun bm!306262 () Bool)

(assert (=> bm!306262 (= call!306269 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (toList!3237 lm!1707)))) (ite c!749290 lambda!148956 lambda!148957)))))

(declare-fun e!2740396 () Bool)

(assert (=> d!1327207 e!2740396))

(declare-fun res!1815301 () Bool)

(assert (=> d!1327207 (=> (not res!1815301) (not e!2740396))))

(assert (=> d!1327207 (= res!1815301 (forall!9366 (_2!27734 (h!54904 (toList!3237 lm!1707))) lambda!148959))))

(assert (=> d!1327207 (= lt!1606044 e!2740397)))

(assert (=> d!1327207 (= c!749290 ((_ is Nil!49278) (_2!27734 (h!54904 (toList!3237 lm!1707)))))))

(assert (=> d!1327207 (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 lm!1707))))))

(assert (=> d!1327207 (= (addToMapMapFromBucket!295 (_2!27734 (h!54904 (toList!3237 lm!1707))) (extractMap!686 (t!356337 (toList!3237 lm!1707)))) lt!1606044)))

(declare-fun bm!306263 () Bool)

(assert (=> bm!306263 (= call!306268 (forall!9366 (ite c!749290 (toList!3238 (extractMap!686 (t!356337 (toList!3237 lm!1707)))) (_2!27734 (h!54904 (toList!3237 lm!1707)))) (ite c!749290 lambda!148956 lambda!148958)))))

(declare-fun b!4401081 () Bool)

(declare-fun res!1815300 () Bool)

(assert (=> b!4401081 (=> (not res!1815300) (not e!2740396))))

(assert (=> b!4401081 (= res!1815300 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (toList!3237 lm!1707)))) lambda!148959))))

(declare-fun b!4401082 () Bool)

(declare-fun e!2740398 () Bool)

(assert (=> b!4401082 (= e!2740398 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (toList!3237 lm!1707)))) lambda!148958))))

(assert (=> b!4401083 (= e!2740397 lt!1606039)))

(declare-fun lt!1606041 () ListMap!2481)

(assert (=> b!4401083 (= lt!1606041 (+!870 (extractMap!686 (t!356337 (toList!3237 lm!1707))) (h!54903 (_2!27734 (h!54904 (toList!3237 lm!1707))))))))

(assert (=> b!4401083 (= lt!1606039 (addToMapMapFromBucket!295 (t!356336 (_2!27734 (h!54904 (toList!3237 lm!1707)))) (+!870 (extractMap!686 (t!356337 (toList!3237 lm!1707))) (h!54903 (_2!27734 (h!54904 (toList!3237 lm!1707)))))))))

(declare-fun lt!1606036 () Unit!78751)

(assert (=> b!4401083 (= lt!1606036 call!306267)))

(assert (=> b!4401083 call!306269))

(declare-fun lt!1606035 () Unit!78751)

(assert (=> b!4401083 (= lt!1606035 lt!1606036)))

(assert (=> b!4401083 (forall!9366 (toList!3238 lt!1606041) lambda!148958)))

(declare-fun lt!1606034 () Unit!78751)

(declare-fun Unit!78847 () Unit!78751)

(assert (=> b!4401083 (= lt!1606034 Unit!78847)))

(assert (=> b!4401083 (forall!9366 (t!356336 (_2!27734 (h!54904 (toList!3237 lm!1707)))) lambda!148958)))

(declare-fun lt!1606043 () Unit!78751)

(declare-fun Unit!78848 () Unit!78751)

(assert (=> b!4401083 (= lt!1606043 Unit!78848)))

(declare-fun lt!1606027 () Unit!78751)

(declare-fun Unit!78849 () Unit!78751)

(assert (=> b!4401083 (= lt!1606027 Unit!78849)))

(declare-fun lt!1606024 () Unit!78751)

(assert (=> b!4401083 (= lt!1606024 (forallContained!2003 (toList!3238 lt!1606041) lambda!148958 (h!54903 (_2!27734 (h!54904 (toList!3237 lm!1707))))))))

(assert (=> b!4401083 (contains!11669 lt!1606041 (_1!27733 (h!54903 (_2!27734 (h!54904 (toList!3237 lm!1707))))))))

(declare-fun lt!1606026 () Unit!78751)

(declare-fun Unit!78850 () Unit!78751)

(assert (=> b!4401083 (= lt!1606026 Unit!78850)))

(assert (=> b!4401083 (contains!11669 lt!1606039 (_1!27733 (h!54903 (_2!27734 (h!54904 (toList!3237 lm!1707))))))))

(declare-fun lt!1606025 () Unit!78751)

(declare-fun Unit!78851 () Unit!78751)

(assert (=> b!4401083 (= lt!1606025 Unit!78851)))

(assert (=> b!4401083 call!306268))

(declare-fun lt!1606029 () Unit!78751)

(declare-fun Unit!78852 () Unit!78751)

(assert (=> b!4401083 (= lt!1606029 Unit!78852)))

(assert (=> b!4401083 (forall!9366 (toList!3238 lt!1606041) lambda!148958)))

(declare-fun lt!1606028 () Unit!78751)

(declare-fun Unit!78853 () Unit!78751)

(assert (=> b!4401083 (= lt!1606028 Unit!78853)))

(declare-fun lt!1606038 () Unit!78751)

(declare-fun Unit!78854 () Unit!78751)

(assert (=> b!4401083 (= lt!1606038 Unit!78854)))

(declare-fun lt!1606031 () Unit!78751)

(assert (=> b!4401083 (= lt!1606031 (addForallContainsKeyThenBeforeAdding!129 (extractMap!686 (t!356337 (toList!3237 lm!1707))) lt!1606039 (_1!27733 (h!54903 (_2!27734 (h!54904 (toList!3237 lm!1707))))) (_2!27733 (h!54903 (_2!27734 (h!54904 (toList!3237 lm!1707)))))))))

(assert (=> b!4401083 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (toList!3237 lm!1707)))) lambda!148958)))

(declare-fun lt!1606040 () Unit!78751)

(assert (=> b!4401083 (= lt!1606040 lt!1606031)))

(assert (=> b!4401083 (forall!9366 (toList!3238 (extractMap!686 (t!356337 (toList!3237 lm!1707)))) lambda!148958)))

(declare-fun lt!1606037 () Unit!78751)

(declare-fun Unit!78855 () Unit!78751)

(assert (=> b!4401083 (= lt!1606037 Unit!78855)))

(declare-fun res!1815302 () Bool)

(assert (=> b!4401083 (= res!1815302 (forall!9366 (_2!27734 (h!54904 (toList!3237 lm!1707))) lambda!148958))))

(assert (=> b!4401083 (=> (not res!1815302) (not e!2740398))))

(assert (=> b!4401083 e!2740398))

(declare-fun lt!1606032 () Unit!78751)

(declare-fun Unit!78856 () Unit!78751)

(assert (=> b!4401083 (= lt!1606032 Unit!78856)))

(declare-fun b!4401084 () Bool)

(assert (=> b!4401084 (= e!2740396 (invariantList!750 (toList!3238 lt!1606044)))))

(declare-fun bm!306264 () Bool)

(assert (=> bm!306264 (= call!306267 (lemmaContainsAllItsOwnKeys!129 (extractMap!686 (t!356337 (toList!3237 lm!1707)))))))

(assert (= (and d!1327207 c!749290) b!4401080))

(assert (= (and d!1327207 (not c!749290)) b!4401083))

(assert (= (and b!4401083 res!1815302) b!4401082))

(assert (= (or b!4401080 b!4401083) bm!306264))

(assert (= (or b!4401080 b!4401083) bm!306262))

(assert (= (or b!4401080 b!4401083) bm!306263))

(assert (= (and d!1327207 res!1815301) b!4401081))

(assert (= (and b!4401081 res!1815300) b!4401084))

(assert (=> b!4401083 m!5062741))

(declare-fun m!5064113 () Bool)

(assert (=> b!4401083 m!5064113))

(declare-fun m!5064115 () Bool)

(assert (=> b!4401083 m!5064115))

(declare-fun m!5064117 () Bool)

(assert (=> b!4401083 m!5064117))

(declare-fun m!5064119 () Bool)

(assert (=> b!4401083 m!5064119))

(declare-fun m!5064121 () Bool)

(assert (=> b!4401083 m!5064121))

(assert (=> b!4401083 m!5064119))

(declare-fun m!5064123 () Bool)

(assert (=> b!4401083 m!5064123))

(declare-fun m!5064125 () Bool)

(assert (=> b!4401083 m!5064125))

(assert (=> b!4401083 m!5062741))

(declare-fun m!5064127 () Bool)

(assert (=> b!4401083 m!5064127))

(declare-fun m!5064129 () Bool)

(assert (=> b!4401083 m!5064129))

(assert (=> b!4401083 m!5064117))

(assert (=> b!4401083 m!5064127))

(declare-fun m!5064131 () Bool)

(assert (=> b!4401083 m!5064131))

(assert (=> bm!306264 m!5062741))

(declare-fun m!5064133 () Bool)

(assert (=> bm!306264 m!5064133))

(declare-fun m!5064135 () Bool)

(assert (=> b!4401081 m!5064135))

(declare-fun m!5064137 () Bool)

(assert (=> bm!306262 m!5064137))

(assert (=> b!4401082 m!5064117))

(declare-fun m!5064139 () Bool)

(assert (=> d!1327207 m!5064139))

(assert (=> d!1327207 m!5063089))

(declare-fun m!5064141 () Bool)

(assert (=> bm!306263 m!5064141))

(declare-fun m!5064143 () Bool)

(assert (=> b!4401084 m!5064143))

(assert (=> b!4400473 d!1327207))

(assert (=> b!4400473 d!1326773))

(declare-fun d!1327209 () Bool)

(declare-fun res!1815303 () Bool)

(declare-fun e!2740399 () Bool)

(assert (=> d!1327209 (=> res!1815303 e!2740399)))

(assert (=> d!1327209 (= res!1815303 ((_ is Nil!49279) (toList!3237 lt!1605458)))))

(assert (=> d!1327209 (= (forall!9364 (toList!3237 lt!1605458) lambda!148814) e!2740399)))

(declare-fun b!4401085 () Bool)

(declare-fun e!2740400 () Bool)

(assert (=> b!4401085 (= e!2740399 e!2740400)))

(declare-fun res!1815304 () Bool)

(assert (=> b!4401085 (=> (not res!1815304) (not e!2740400))))

(assert (=> b!4401085 (= res!1815304 (dynLambda!20762 lambda!148814 (h!54904 (toList!3237 lt!1605458))))))

(declare-fun b!4401086 () Bool)

(assert (=> b!4401086 (= e!2740400 (forall!9364 (t!356337 (toList!3237 lt!1605458)) lambda!148814))))

(assert (= (and d!1327209 (not res!1815303)) b!4401085))

(assert (= (and b!4401085 res!1815304) b!4401086))

(declare-fun b_lambda!139825 () Bool)

(assert (=> (not b_lambda!139825) (not b!4401085)))

(declare-fun m!5064145 () Bool)

(assert (=> b!4401085 m!5064145))

(declare-fun m!5064147 () Bool)

(assert (=> b!4401086 m!5064147))

(assert (=> d!1326785 d!1327209))

(declare-fun d!1327211 () Bool)

(assert (=> d!1327211 (= (invariantList!750 (toList!3238 lt!1605618)) (noDuplicatedKeys!154 (toList!3238 lt!1605618)))))

(declare-fun bs!728565 () Bool)

(assert (= bs!728565 d!1327211))

(declare-fun m!5064149 () Bool)

(assert (=> bs!728565 m!5064149))

(assert (=> d!1326757 d!1327211))

(declare-fun d!1327213 () Bool)

(declare-fun res!1815305 () Bool)

(declare-fun e!2740401 () Bool)

(assert (=> d!1327213 (=> res!1815305 e!2740401)))

(assert (=> d!1327213 (= res!1815305 ((_ is Nil!49279) (toList!3237 lt!1605458)))))

(assert (=> d!1327213 (= (forall!9364 (toList!3237 lt!1605458) lambda!148807) e!2740401)))

(declare-fun b!4401087 () Bool)

(declare-fun e!2740402 () Bool)

(assert (=> b!4401087 (= e!2740401 e!2740402)))

(declare-fun res!1815306 () Bool)

(assert (=> b!4401087 (=> (not res!1815306) (not e!2740402))))

(assert (=> b!4401087 (= res!1815306 (dynLambda!20762 lambda!148807 (h!54904 (toList!3237 lt!1605458))))))

(declare-fun b!4401088 () Bool)

(assert (=> b!4401088 (= e!2740402 (forall!9364 (t!356337 (toList!3237 lt!1605458)) lambda!148807))))

(assert (= (and d!1327213 (not res!1815305)) b!4401087))

(assert (= (and b!4401087 res!1815306) b!4401088))

(declare-fun b_lambda!139827 () Bool)

(assert (=> (not b_lambda!139827) (not b!4401087)))

(declare-fun m!5064151 () Bool)

(assert (=> b!4401087 m!5064151))

(declare-fun m!5064153 () Bool)

(assert (=> b!4401088 m!5064153))

(assert (=> d!1326757 d!1327213))

(declare-fun d!1327215 () Bool)

(assert (=> d!1327215 (isDefined!7906 (getValueByKey!599 (toList!3238 lt!1605466) key!3918))))

(declare-fun lt!1606045 () Unit!78751)

(assert (=> d!1327215 (= lt!1606045 (choose!27593 (toList!3238 lt!1605466) key!3918))))

(assert (=> d!1327215 (invariantList!750 (toList!3238 lt!1605466))))

(assert (=> d!1327215 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!509 (toList!3238 lt!1605466) key!3918) lt!1606045)))

(declare-fun bs!728566 () Bool)

(assert (= bs!728566 d!1327215))

(assert (=> bs!728566 m!5063107))

(assert (=> bs!728566 m!5063107))

(assert (=> bs!728566 m!5063109))

(declare-fun m!5064155 () Bool)

(assert (=> bs!728566 m!5064155))

(assert (=> bs!728566 m!5063449))

(assert (=> b!4400431 d!1327215))

(assert (=> b!4400431 d!1326979))

(assert (=> b!4400431 d!1326981))

(declare-fun d!1327217 () Bool)

(assert (=> d!1327217 (contains!11671 (getKeysList!197 (toList!3238 lt!1605466)) key!3918)))

(declare-fun lt!1606046 () Unit!78751)

(assert (=> d!1327217 (= lt!1606046 (choose!27594 (toList!3238 lt!1605466) key!3918))))

(assert (=> d!1327217 (invariantList!750 (toList!3238 lt!1605466))))

(assert (=> d!1327217 (= (lemmaInListThenGetKeysListContains!194 (toList!3238 lt!1605466) key!3918) lt!1606046)))

(declare-fun bs!728567 () Bool)

(assert (= bs!728567 d!1327217))

(assert (=> bs!728567 m!5063123))

(assert (=> bs!728567 m!5063123))

(declare-fun m!5064157 () Bool)

(assert (=> bs!728567 m!5064157))

(declare-fun m!5064159 () Bool)

(assert (=> bs!728567 m!5064159))

(assert (=> bs!728567 m!5063449))

(assert (=> b!4400431 d!1327217))

(assert (=> b!4400284 d!1327197))

(assert (=> d!1326779 d!1326941))

(declare-fun d!1327219 () Bool)

(declare-fun choose!27596 (Hashable!5019 K!10635) (_ BitVec 64))

(assert (=> d!1327219 (= (hash!1871 hashF!1247 key!3918) (choose!27596 hashF!1247 key!3918))))

(declare-fun bs!728568 () Bool)

(assert (= bs!728568 d!1327219))

(declare-fun m!5064161 () Bool)

(assert (=> bs!728568 m!5064161))

(assert (=> d!1326793 d!1327219))

(assert (=> d!1326769 d!1326777))

(declare-fun d!1327221 () Bool)

(assert (=> d!1327221 (contains!11669 lt!1605466 key!3918)))

(assert (=> d!1327221 true))

(declare-fun _$11!1203 () Unit!78751)

(assert (=> d!1327221 (= (choose!27584 (_2!27734 (h!54904 (toList!3237 lm!1707))) key!3918 newValue!99 lt!1605466) _$11!1203)))

(declare-fun bs!728569 () Bool)

(assert (= bs!728569 d!1327221))

(assert (=> bs!728569 m!5062745))

(assert (=> d!1326769 d!1327221))

(assert (=> d!1326769 d!1326965))

(declare-fun b!4401090 () Bool)

(declare-fun e!2740403 () List!49402)

(declare-fun e!2740404 () List!49402)

(assert (=> b!4401090 (= e!2740403 e!2740404)))

(declare-fun c!749292 () Bool)

(assert (=> b!4401090 (= c!749292 ((_ is Cons!49278) (t!356336 lt!1605465)))))

(declare-fun d!1327223 () Bool)

(declare-fun lt!1606047 () List!49402)

(assert (=> d!1327223 (not (containsKey!933 lt!1606047 key!3918))))

(assert (=> d!1327223 (= lt!1606047 e!2740403)))

(declare-fun c!749291 () Bool)

(assert (=> d!1327223 (= c!749291 (and ((_ is Cons!49278) (t!356336 lt!1605465)) (= (_1!27733 (h!54903 (t!356336 lt!1605465))) key!3918)))))

(assert (=> d!1327223 (noDuplicateKeys!627 (t!356336 lt!1605465))))

(assert (=> d!1327223 (= (removePairForKey!595 (t!356336 lt!1605465) key!3918) lt!1606047)))

(declare-fun b!4401091 () Bool)

(assert (=> b!4401091 (= e!2740404 (Cons!49278 (h!54903 (t!356336 lt!1605465)) (removePairForKey!595 (t!356336 (t!356336 lt!1605465)) key!3918)))))

(declare-fun b!4401092 () Bool)

(assert (=> b!4401092 (= e!2740404 Nil!49278)))

(declare-fun b!4401089 () Bool)

(assert (=> b!4401089 (= e!2740403 (t!356336 (t!356336 lt!1605465)))))

(assert (= (and d!1327223 c!749291) b!4401089))

(assert (= (and d!1327223 (not c!749291)) b!4401090))

(assert (= (and b!4401090 c!749292) b!4401091))

(assert (= (and b!4401090 (not c!749292)) b!4401092))

(declare-fun m!5064163 () Bool)

(assert (=> d!1327223 m!5064163))

(assert (=> d!1327223 m!5063515))

(declare-fun m!5064165 () Bool)

(assert (=> b!4401091 m!5064165))

(assert (=> b!4400230 d!1327223))

(assert (=> d!1326797 d!1326923))

(declare-fun bs!728570 () Bool)

(declare-fun b!4401099 () Bool)

(assert (= bs!728570 (and b!4401099 b!4400658)))

(declare-fun lambda!148960 () Int)

(assert (=> bs!728570 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (= lambda!148960 lambda!148848))))

(declare-fun bs!728571 () Bool)

(assert (= bs!728571 (and b!4401099 b!4400866)))

(assert (=> bs!728571 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))) (= lambda!148960 lambda!148898))))

(declare-fun bs!728572 () Bool)

(assert (= bs!728572 (and b!4401099 b!4400863)))

(assert (=> bs!728572 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148960 lambda!148900))))

(declare-fun bs!728573 () Bool)

(assert (= bs!728573 (and b!4401099 b!4400698)))

(assert (=> bs!728573 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 lt!1605466))) (= lambda!148960 lambda!148858))))

(declare-fun bs!728574 () Bool)

(assert (= bs!728574 (and b!4401099 b!4400816)))

(assert (=> bs!728574 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (toList!3238 lt!1605466)) (= lambda!148960 lambda!148890))))

(declare-fun bs!728575 () Bool)

(assert (= bs!728575 (and b!4401099 b!4400697)))

(assert (=> bs!728575 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (toList!3238 lt!1605466)) (= lambda!148960 lambda!148860))))

(declare-fun bs!728576 () Bool)

(assert (= bs!728576 (and b!4401099 b!4400647)))

(assert (=> bs!728576 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148960 lambda!148846))))

(declare-fun bs!728577 () Bool)

(assert (= bs!728577 (and b!4401099 b!4400864)))

(assert (=> bs!728577 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (= lambda!148960 lambda!148896))))

(declare-fun bs!728578 () Bool)

(assert (= bs!728578 (and b!4401099 b!4400700)))

(assert (=> bs!728578 (= (= (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (Cons!49278 (h!54903 (toList!3238 lt!1605466)) (t!356336 (toList!3238 lt!1605466)))) (= lambda!148960 lambda!148859))))

(assert (=> b!4401099 true))

(declare-fun bs!728579 () Bool)

(declare-fun b!4401101 () Bool)

(assert (= bs!728579 (and b!4401101 b!4400658)))

(declare-fun lambda!148961 () Int)

(assert (=> bs!728579 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (= lambda!148961 lambda!148848))))

(declare-fun bs!728580 () Bool)

(assert (= bs!728580 (and b!4401101 b!4401099)))

(assert (=> bs!728580 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (= lambda!148961 lambda!148960))))

(declare-fun bs!728581 () Bool)

(assert (= bs!728581 (and b!4401101 b!4400866)))

(assert (=> bs!728581 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))) (= lambda!148961 lambda!148898))))

(declare-fun bs!728582 () Bool)

(assert (= bs!728582 (and b!4401101 b!4400863)))

(assert (=> bs!728582 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148961 lambda!148900))))

(declare-fun bs!728583 () Bool)

(assert (= bs!728583 (and b!4401101 b!4400698)))

(assert (=> bs!728583 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (t!356336 (toList!3238 lt!1605466))) (= lambda!148961 lambda!148858))))

(declare-fun bs!728584 () Bool)

(assert (= bs!728584 (and b!4401101 b!4400816)))

(assert (=> bs!728584 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (toList!3238 lt!1605466)) (= lambda!148961 lambda!148890))))

(declare-fun bs!728585 () Bool)

(assert (= bs!728585 (and b!4401101 b!4400697)))

(assert (=> bs!728585 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (toList!3238 lt!1605466)) (= lambda!148961 lambda!148860))))

(declare-fun bs!728586 () Bool)

(assert (= bs!728586 (and b!4401101 b!4400647)))

(assert (=> bs!728586 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148961 lambda!148846))))

(declare-fun bs!728587 () Bool)

(assert (= bs!728587 (and b!4401101 b!4400864)))

(assert (=> bs!728587 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (= lambda!148961 lambda!148896))))

(declare-fun bs!728588 () Bool)

(assert (= bs!728588 (and b!4401101 b!4400700)))

(assert (=> bs!728588 (= (= (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (Cons!49278 (h!54903 (toList!3238 lt!1605466)) (t!356336 (toList!3238 lt!1605466)))) (= lambda!148961 lambda!148859))))

(assert (=> b!4401101 true))

(declare-fun bs!728589 () Bool)

(declare-fun b!4401098 () Bool)

(assert (= bs!728589 (and b!4401098 b!4401099)))

(declare-fun lambda!148962 () Int)

(assert (=> bs!728589 (= (= (toList!3238 (extractMap!686 (toList!3237 lm!1707))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (= lambda!148962 lambda!148960))))

(declare-fun bs!728590 () Bool)

(assert (= bs!728590 (and b!4401098 b!4400866)))

(assert (=> bs!728590 (= (= (toList!3238 (extractMap!686 (toList!3237 lm!1707))) (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))))) (= lambda!148962 lambda!148898))))

(declare-fun bs!728591 () Bool)

(assert (= bs!728591 (and b!4401098 b!4400863)))

(assert (=> bs!728591 (= (= (toList!3238 (extractMap!686 (toList!3237 lm!1707))) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148962 lambda!148900))))

(declare-fun bs!728592 () Bool)

(assert (= bs!728592 (and b!4401098 b!4400698)))

(assert (=> bs!728592 (= (= (toList!3238 (extractMap!686 (toList!3237 lm!1707))) (t!356336 (toList!3238 lt!1605466))) (= lambda!148962 lambda!148858))))

(declare-fun bs!728593 () Bool)

(assert (= bs!728593 (and b!4401098 b!4400816)))

(assert (=> bs!728593 (= (= (toList!3238 (extractMap!686 (toList!3237 lm!1707))) (toList!3238 lt!1605466)) (= lambda!148962 lambda!148890))))

(declare-fun bs!728594 () Bool)

(assert (= bs!728594 (and b!4401098 b!4401101)))

(assert (=> bs!728594 (= (= (toList!3238 (extractMap!686 (toList!3237 lm!1707))) (Cons!49278 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))))) (= lambda!148962 lambda!148961))))

(declare-fun bs!728595 () Bool)

(assert (= bs!728595 (and b!4401098 b!4400658)))

(assert (=> bs!728595 (= lambda!148962 lambda!148848)))

(declare-fun bs!728596 () Bool)

(assert (= bs!728596 (and b!4401098 b!4400697)))

(assert (=> bs!728596 (= (= (toList!3238 (extractMap!686 (toList!3237 lm!1707))) (toList!3238 lt!1605466)) (= lambda!148962 lambda!148860))))

(declare-fun bs!728597 () Bool)

(assert (= bs!728597 (and b!4401098 b!4400647)))

(assert (=> bs!728597 (= (= (toList!3238 (extractMap!686 (toList!3237 lm!1707))) (toList!3238 (extractMap!686 (toList!3237 lt!1605458)))) (= lambda!148962 lambda!148846))))

(declare-fun bs!728598 () Bool)

(assert (= bs!728598 (and b!4401098 b!4400864)))

(assert (=> bs!728598 (= (= (toList!3238 (extractMap!686 (toList!3237 lm!1707))) (t!356336 (toList!3238 (extractMap!686 (toList!3237 lt!1605458))))) (= lambda!148962 lambda!148896))))

(declare-fun bs!728599 () Bool)

(assert (= bs!728599 (and b!4401098 b!4400700)))

(assert (=> bs!728599 (= (= (toList!3238 (extractMap!686 (toList!3237 lm!1707))) (Cons!49278 (h!54903 (toList!3238 lt!1605466)) (t!356336 (toList!3238 lt!1605466)))) (= lambda!148962 lambda!148859))))

(assert (=> b!4401098 true))

(declare-fun bs!728600 () Bool)

(declare-fun b!4401093 () Bool)

(assert (= bs!728600 (and b!4401093 b!4400659)))

(declare-fun lambda!148963 () Int)

(assert (=> bs!728600 (= lambda!148963 lambda!148849)))

(declare-fun bs!728601 () Bool)

(assert (= bs!728601 (and b!4401093 b!4400817)))

(assert (=> bs!728601 (= lambda!148963 lambda!148891)))

(declare-fun bs!728602 () Bool)

(assert (= bs!728602 (and b!4401093 b!4400648)))

(assert (=> bs!728602 (= lambda!148963 lambda!148847)))

(declare-fun bs!728603 () Bool)

(assert (= bs!728603 (and b!4401093 b!4400692)))

(assert (=> bs!728603 (= lambda!148963 lambda!148861)))

(declare-fun bs!728604 () Bool)

(assert (= bs!728604 (and b!4401093 b!4400858)))

(assert (=> bs!728604 (= lambda!148963 lambda!148902)))

(declare-fun lt!1606052 () List!49405)

(declare-fun e!2740408 () Bool)

(assert (=> b!4401093 (= e!2740408 (= (content!7870 lt!1606052) (content!7870 (map!10748 (toList!3238 (extractMap!686 (toList!3237 lm!1707))) lambda!148963))))))

(declare-fun b!4401094 () Bool)

(declare-fun e!2740407 () Unit!78751)

(declare-fun Unit!78857 () Unit!78751)

(assert (=> b!4401094 (= e!2740407 Unit!78857)))

(declare-fun b!4401095 () Bool)

(declare-fun e!2740405 () Unit!78751)

(declare-fun Unit!78858 () Unit!78751)

(assert (=> b!4401095 (= e!2740405 Unit!78858)))

(declare-fun b!4401096 () Bool)

(assert (=> b!4401096 false))

(declare-fun Unit!78859 () Unit!78751)

(assert (=> b!4401096 (= e!2740405 Unit!78859)))

(declare-fun d!1327225 () Bool)

(assert (=> d!1327225 e!2740408))

(declare-fun res!1815307 () Bool)

(assert (=> d!1327225 (=> (not res!1815307) (not e!2740408))))

(assert (=> d!1327225 (= res!1815307 (noDuplicate!638 lt!1606052))))

(declare-fun e!2740406 () List!49405)

(assert (=> d!1327225 (= lt!1606052 e!2740406)))

(declare-fun c!749293 () Bool)

(assert (=> d!1327225 (= c!749293 ((_ is Cons!49278) (toList!3238 (extractMap!686 (toList!3237 lm!1707)))))))

(assert (=> d!1327225 (invariantList!750 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))))

(assert (=> d!1327225 (= (getKeysList!197 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) lt!1606052)))

(declare-fun b!4401097 () Bool)

(assert (=> b!4401097 (= e!2740406 Nil!49281)))

(declare-fun res!1815308 () Bool)

(assert (=> b!4401098 (=> (not res!1815308) (not e!2740408))))

(assert (=> b!4401098 (= res!1815308 (forall!9368 lt!1606052 lambda!148962))))

(assert (=> b!4401099 false))

(declare-fun lt!1606049 () Unit!78751)

(assert (=> b!4401099 (= lt!1606049 (forallContained!2002 (getKeysList!197 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) lambda!148960 (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))))))))

(declare-fun Unit!78860 () Unit!78751)

(assert (=> b!4401099 (= e!2740407 Unit!78860)))

(declare-fun b!4401100 () Bool)

(declare-fun res!1815309 () Bool)

(assert (=> b!4401100 (=> (not res!1815309) (not e!2740408))))

(assert (=> b!4401100 (= res!1815309 (= (length!132 lt!1606052) (length!133 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))))))

(assert (=> b!4401101 (= e!2740406 (Cons!49281 (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (getKeysList!197 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))))))))

(declare-fun c!749295 () Bool)

(assert (=> b!4401101 (= c!749295 (containsKey!937 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))))))))

(declare-fun lt!1606053 () Unit!78751)

(assert (=> b!4401101 (= lt!1606053 e!2740405)))

(declare-fun c!749294 () Bool)

(assert (=> b!4401101 (= c!749294 (contains!11671 (getKeysList!197 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))) (_1!27733 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))))))))

(declare-fun lt!1606050 () Unit!78751)

(assert (=> b!4401101 (= lt!1606050 e!2740407)))

(declare-fun lt!1606048 () List!49405)

(assert (=> b!4401101 (= lt!1606048 (getKeysList!197 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))))))

(declare-fun lt!1606051 () Unit!78751)

(assert (=> b!4401101 (= lt!1606051 (lemmaForallContainsAddHeadPreserves!60 (t!356336 (toList!3238 (extractMap!686 (toList!3237 lm!1707)))) lt!1606048 (h!54903 (toList!3238 (extractMap!686 (toList!3237 lm!1707))))))))

(assert (=> b!4401101 (forall!9368 lt!1606048 lambda!148961)))

(declare-fun lt!1606054 () Unit!78751)

(assert (=> b!4401101 (= lt!1606054 lt!1606051)))

(assert (= (and d!1327225 c!749293) b!4401101))

(assert (= (and d!1327225 (not c!749293)) b!4401097))

(assert (= (and b!4401101 c!749295) b!4401096))

(assert (= (and b!4401101 (not c!749295)) b!4401095))

(assert (= (and b!4401101 c!749294) b!4401099))

(assert (= (and b!4401101 (not c!749294)) b!4401094))

(assert (= (and d!1327225 res!1815307) b!4401100))

(assert (= (and b!4401100 res!1815309) b!4401098))

(assert (= (and b!4401098 res!1815308) b!4401093))

(declare-fun m!5064167 () Bool)

(assert (=> b!4401098 m!5064167))

(declare-fun m!5064169 () Bool)

(assert (=> b!4401093 m!5064169))

(declare-fun m!5064171 () Bool)

(assert (=> b!4401093 m!5064171))

(assert (=> b!4401093 m!5064171))

(declare-fun m!5064173 () Bool)

(assert (=> b!4401093 m!5064173))

(declare-fun m!5064175 () Bool)

(assert (=> b!4401099 m!5064175))

(assert (=> b!4401099 m!5064175))

(declare-fun m!5064177 () Bool)

(assert (=> b!4401099 m!5064177))

(declare-fun m!5064179 () Bool)

(assert (=> d!1327225 m!5064179))

(assert (=> d!1327225 m!5063469))

(declare-fun m!5064181 () Bool)

(assert (=> b!4401100 m!5064181))

(assert (=> b!4401100 m!5063405))

(declare-fun m!5064183 () Bool)

(assert (=> b!4401101 m!5064183))

(declare-fun m!5064185 () Bool)

(assert (=> b!4401101 m!5064185))

(assert (=> b!4401101 m!5064175))

(declare-fun m!5064187 () Bool)

(assert (=> b!4401101 m!5064187))

(declare-fun m!5064189 () Bool)

(assert (=> b!4401101 m!5064189))

(assert (=> b!4401101 m!5064175))

(assert (=> b!4400465 d!1327225))

(declare-fun d!1327227 () Bool)

(declare-fun res!1815310 () Bool)

(declare-fun e!2740409 () Bool)

(assert (=> d!1327227 (=> res!1815310 e!2740409)))

(assert (=> d!1327227 (= res!1815310 ((_ is Nil!49279) (toList!3237 lm!1707)))))

(assert (=> d!1327227 (= (forall!9364 (toList!3237 lm!1707) lambda!148815) e!2740409)))

(declare-fun b!4401102 () Bool)

(declare-fun e!2740410 () Bool)

(assert (=> b!4401102 (= e!2740409 e!2740410)))

(declare-fun res!1815311 () Bool)

(assert (=> b!4401102 (=> (not res!1815311) (not e!2740410))))

(assert (=> b!4401102 (= res!1815311 (dynLambda!20762 lambda!148815 (h!54904 (toList!3237 lm!1707))))))

(declare-fun b!4401103 () Bool)

(assert (=> b!4401103 (= e!2740410 (forall!9364 (t!356337 (toList!3237 lm!1707)) lambda!148815))))

(assert (= (and d!1327227 (not res!1815310)) b!4401102))

(assert (= (and b!4401102 res!1815311) b!4401103))

(declare-fun b_lambda!139829 () Bool)

(assert (=> (not b_lambda!139829) (not b!4401102)))

(declare-fun m!5064191 () Bool)

(assert (=> b!4401102 m!5064191))

(declare-fun m!5064193 () Bool)

(assert (=> b!4401103 m!5064193))

(assert (=> d!1326787 d!1327227))

(declare-fun d!1327229 () Bool)

(assert (=> d!1327229 (= (tail!7115 (toList!3237 lm!1707)) (t!356337 (toList!3237 lm!1707)))))

(assert (=> d!1326771 d!1327229))

(declare-fun d!1327231 () Bool)

(declare-fun res!1815312 () Bool)

(declare-fun e!2740411 () Bool)

(assert (=> d!1327231 (=> res!1815312 e!2740411)))

(assert (=> d!1327231 (= res!1815312 (not ((_ is Cons!49278) (_2!27734 lt!1605462))))))

(assert (=> d!1327231 (= (noDuplicateKeys!627 (_2!27734 lt!1605462)) e!2740411)))

(declare-fun b!4401104 () Bool)

(declare-fun e!2740412 () Bool)

(assert (=> b!4401104 (= e!2740411 e!2740412)))

(declare-fun res!1815313 () Bool)

(assert (=> b!4401104 (=> (not res!1815313) (not e!2740412))))

(assert (=> b!4401104 (= res!1815313 (not (containsKey!933 (t!356336 (_2!27734 lt!1605462)) (_1!27733 (h!54903 (_2!27734 lt!1605462))))))))

(declare-fun b!4401105 () Bool)

(assert (=> b!4401105 (= e!2740412 (noDuplicateKeys!627 (t!356336 (_2!27734 lt!1605462))))))

(assert (= (and d!1327231 (not res!1815312)) b!4401104))

(assert (= (and b!4401104 res!1815313) b!4401105))

(declare-fun m!5064195 () Bool)

(assert (=> b!4401104 m!5064195))

(declare-fun m!5064197 () Bool)

(assert (=> b!4401105 m!5064197))

(assert (=> bs!728258 d!1327231))

(assert (=> b!4400384 d!1327195))

(assert (=> b!4400384 d!1327197))

(declare-fun lt!1606055 () Bool)

(declare-fun d!1327233 () Bool)

(assert (=> d!1327233 (= lt!1606055 (select (content!7868 (toList!3237 lm!1707)) (tuple2!48881 hash!377 lt!1605455)))))

(declare-fun e!2740413 () Bool)

(assert (=> d!1327233 (= lt!1606055 e!2740413)))

(declare-fun res!1815314 () Bool)

(assert (=> d!1327233 (=> (not res!1815314) (not e!2740413))))

(assert (=> d!1327233 (= res!1815314 ((_ is Cons!49279) (toList!3237 lm!1707)))))

(assert (=> d!1327233 (= (contains!11667 (toList!3237 lm!1707) (tuple2!48881 hash!377 lt!1605455)) lt!1606055)))

(declare-fun b!4401106 () Bool)

(declare-fun e!2740414 () Bool)

(assert (=> b!4401106 (= e!2740413 e!2740414)))

(declare-fun res!1815315 () Bool)

(assert (=> b!4401106 (=> res!1815315 e!2740414)))

(assert (=> b!4401106 (= res!1815315 (= (h!54904 (toList!3237 lm!1707)) (tuple2!48881 hash!377 lt!1605455)))))

(declare-fun b!4401107 () Bool)

(assert (=> b!4401107 (= e!2740414 (contains!11667 (t!356337 (toList!3237 lm!1707)) (tuple2!48881 hash!377 lt!1605455)))))

(assert (= (and d!1327233 res!1815314) b!4401106))

(assert (= (and b!4401106 (not res!1815315)) b!4401107))

(assert (=> d!1327233 m!5062869))

(declare-fun m!5064199 () Bool)

(assert (=> d!1327233 m!5064199))

(declare-fun m!5064201 () Bool)

(assert (=> b!4401107 m!5064201))

(assert (=> d!1326697 d!1327233))

(declare-fun d!1327235 () Bool)

(assert (=> d!1327235 (contains!11667 (toList!3237 lm!1707) (tuple2!48881 hash!377 lt!1605455))))

(assert (=> d!1327235 true))

(declare-fun _$14!900 () Unit!78751)

(assert (=> d!1327235 (= (choose!27580 (toList!3237 lm!1707) hash!377 lt!1605455) _$14!900)))

(declare-fun bs!728605 () Bool)

(assert (= bs!728605 d!1327235))

(assert (=> bs!728605 m!5062885))

(assert (=> d!1326697 d!1327235))

(assert (=> d!1326697 d!1326999))

(declare-fun d!1327237 () Bool)

(declare-fun c!749296 () Bool)

(assert (=> d!1327237 (= c!749296 ((_ is Nil!49279) (toList!3237 lt!1605458)))))

(declare-fun e!2740415 () (InoxSet tuple2!48880))

(assert (=> d!1327237 (= (content!7868 (toList!3237 lt!1605458)) e!2740415)))

(declare-fun b!4401108 () Bool)

(assert (=> b!4401108 (= e!2740415 ((as const (Array tuple2!48880 Bool)) false))))

(declare-fun b!4401109 () Bool)

(assert (=> b!4401109 (= e!2740415 ((_ map or) (store ((as const (Array tuple2!48880 Bool)) false) (h!54904 (toList!3237 lt!1605458)) true) (content!7868 (t!356337 (toList!3237 lt!1605458)))))))

(assert (= (and d!1327237 c!749296) b!4401108))

(assert (= (and d!1327237 (not c!749296)) b!4401109))

(declare-fun m!5064203 () Bool)

(assert (=> b!4401109 m!5064203))

(assert (=> b!4401109 m!5063503))

(assert (=> d!1326645 d!1327237))

(declare-fun b!4401111 () Bool)

(declare-fun e!2740416 () List!49402)

(declare-fun e!2740417 () List!49402)

(assert (=> b!4401111 (= e!2740416 e!2740417)))

(declare-fun c!749298 () Bool)

(assert (=> b!4401111 (= c!749298 ((_ is Cons!49278) (t!356336 lt!1605455)))))

(declare-fun d!1327239 () Bool)

(declare-fun lt!1606056 () List!49402)

(assert (=> d!1327239 (not (containsKey!933 lt!1606056 key!3918))))

(assert (=> d!1327239 (= lt!1606056 e!2740416)))

(declare-fun c!749297 () Bool)

(assert (=> d!1327239 (= c!749297 (and ((_ is Cons!49278) (t!356336 lt!1605455)) (= (_1!27733 (h!54903 (t!356336 lt!1605455))) key!3918)))))

(assert (=> d!1327239 (noDuplicateKeys!627 (t!356336 lt!1605455))))

(assert (=> d!1327239 (= (removePairForKey!595 (t!356336 lt!1605455) key!3918) lt!1606056)))

(declare-fun b!4401112 () Bool)

(assert (=> b!4401112 (= e!2740417 (Cons!49278 (h!54903 (t!356336 lt!1605455)) (removePairForKey!595 (t!356336 (t!356336 lt!1605455)) key!3918)))))

(declare-fun b!4401113 () Bool)

(assert (=> b!4401113 (= e!2740417 Nil!49278)))

(declare-fun b!4401110 () Bool)

(assert (=> b!4401110 (= e!2740416 (t!356336 (t!356336 lt!1605455)))))

(assert (= (and d!1327239 c!749297) b!4401110))

(assert (= (and d!1327239 (not c!749297)) b!4401111))

(assert (= (and b!4401111 c!749298) b!4401112))

(assert (= (and b!4401111 (not c!749298)) b!4401113))

(declare-fun m!5064205 () Bool)

(assert (=> d!1327239 m!5064205))

(assert (=> d!1327239 m!5063433))

(declare-fun m!5064207 () Bool)

(assert (=> b!4401112 m!5064207))

(assert (=> b!4400281 d!1327239))

(declare-fun d!1327241 () Bool)

(assert (=> d!1327241 (= (get!16042 (getValueByKey!598 (toList!3237 lm!1707) hash!377)) (v!43713 (getValueByKey!598 (toList!3237 lm!1707) hash!377)))))

(assert (=> d!1326687 d!1327241))

(assert (=> d!1326687 d!1327197))

(assert (=> b!4400204 d!1326929))

(declare-fun tp!1331835 () Bool)

(declare-fun b!4401114 () Bool)

(declare-fun e!2740418 () Bool)

(assert (=> b!4401114 (= e!2740418 (and tp_is_empty!25745 tp_is_empty!25747 tp!1331835))))

(assert (=> b!4400484 (= tp!1331830 e!2740418)))

(assert (= (and b!4400484 ((_ is Cons!49278) (t!356336 (t!356336 newBucket!200)))) b!4401114))

(declare-fun e!2740419 () Bool)

(declare-fun tp!1331836 () Bool)

(declare-fun b!4401115 () Bool)

(assert (=> b!4401115 (= e!2740419 (and tp_is_empty!25745 tp_is_empty!25747 tp!1331836))))

(assert (=> b!4400479 (= tp!1331826 e!2740419)))

(assert (= (and b!4400479 ((_ is Cons!49278) (_2!27734 (h!54904 (toList!3237 lm!1707))))) b!4401115))

(declare-fun b!4401116 () Bool)

(declare-fun e!2740420 () Bool)

(declare-fun tp!1331837 () Bool)

(declare-fun tp!1331838 () Bool)

(assert (=> b!4401116 (= e!2740420 (and tp!1331837 tp!1331838))))

(assert (=> b!4400479 (= tp!1331827 e!2740420)))

(assert (= (and b!4400479 ((_ is Cons!49279) (t!356337 (toList!3237 lm!1707)))) b!4401116))

(declare-fun b_lambda!139831 () Bool)

(assert (= b_lambda!139757 (or d!1326775 b_lambda!139831)))

(declare-fun bs!728606 () Bool)

(declare-fun d!1327243 () Bool)

(assert (= bs!728606 (and d!1327243 d!1326775)))

(assert (=> bs!728606 (= (dynLambda!20762 lambda!148811 (h!54904 (toList!3237 lm!1707))) (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 lm!1707)))))))

(assert (=> bs!728606 m!5063089))

(assert (=> b!4400653 d!1327243))

(declare-fun b_lambda!139833 () Bool)

(assert (= b_lambda!139767 (or start!427704 b_lambda!139833)))

(declare-fun bs!728607 () Bool)

(declare-fun d!1327245 () Bool)

(assert (= bs!728607 (and d!1327245 start!427704)))

(assert (=> bs!728607 (= (dynLambda!20762 lambda!148789 (h!54904 (t!356337 (toList!3237 lt!1605458)))) (noDuplicateKeys!627 (_2!27734 (h!54904 (t!356337 (toList!3237 lt!1605458))))))))

(declare-fun m!5064209 () Bool)

(assert (=> bs!728607 m!5064209))

(assert (=> b!4400801 d!1327245))

(declare-fun b_lambda!139835 () Bool)

(assert (= b_lambda!139765 (or d!1326795 b_lambda!139835)))

(declare-fun bs!728608 () Bool)

(declare-fun d!1327247 () Bool)

(assert (= bs!728608 (and d!1327247 d!1326795)))

(assert (=> bs!728608 (= (dynLambda!20763 lambda!148818 (h!54903 newBucket!200)) (= (hash!1867 hashF!1247 (_1!27733 (h!54903 newBucket!200))) hash!377))))

(declare-fun m!5064211 () Bool)

(assert (=> bs!728608 m!5064211))

(assert (=> b!4400734 d!1327247))

(declare-fun b_lambda!139837 () Bool)

(assert (= b_lambda!139769 (or start!427704 b_lambda!139837)))

(declare-fun bs!728609 () Bool)

(declare-fun d!1327249 () Bool)

(assert (= bs!728609 (and d!1327249 start!427704)))

(assert (=> bs!728609 (= (dynLambda!20762 lambda!148789 (h!54904 (toList!3237 (+!868 lm!1707 (tuple2!48881 hash!377 newBucket!200))))) (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 (+!868 lm!1707 (tuple2!48881 hash!377 newBucket!200)))))))))

(declare-fun m!5064213 () Bool)

(assert (=> bs!728609 m!5064213))

(assert (=> b!4400827 d!1327249))

(declare-fun b_lambda!139839 () Bool)

(assert (= b_lambda!139761 (or start!427704 b_lambda!139839)))

(declare-fun bs!728610 () Bool)

(declare-fun d!1327251 () Bool)

(assert (= bs!728610 (and d!1327251 start!427704)))

(assert (=> bs!728610 (= (dynLambda!20762 lambda!148789 (h!54904 (t!356337 (toList!3237 lt!1605452)))) (noDuplicateKeys!627 (_2!27734 (h!54904 (t!356337 (toList!3237 lt!1605452))))))))

(declare-fun m!5064215 () Bool)

(assert (=> bs!728610 m!5064215))

(assert (=> b!4400719 d!1327251))

(declare-fun b_lambda!139841 () Bool)

(assert (= b_lambda!139771 (or d!1326773 b_lambda!139841)))

(declare-fun bs!728611 () Bool)

(declare-fun d!1327253 () Bool)

(assert (= bs!728611 (and d!1327253 d!1326773)))

(assert (=> bs!728611 (= (dynLambda!20762 lambda!148808 (h!54904 (t!356337 (toList!3237 lm!1707)))) (noDuplicateKeys!627 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707))))))))

(assert (=> bs!728611 m!5064079))

(assert (=> b!4400836 d!1327253))

(declare-fun b_lambda!139843 () Bool)

(assert (= b_lambda!139825 (or d!1326785 b_lambda!139843)))

(declare-fun bs!728612 () Bool)

(declare-fun d!1327255 () Bool)

(assert (= bs!728612 (and d!1327255 d!1326785)))

(assert (=> bs!728612 (= (dynLambda!20762 lambda!148814 (h!54904 (toList!3237 lt!1605458))) (allKeysSameHash!585 (_2!27734 (h!54904 (toList!3237 lt!1605458))) (_1!27734 (h!54904 (toList!3237 lt!1605458))) hashF!1247))))

(declare-fun m!5064217 () Bool)

(assert (=> bs!728612 m!5064217))

(assert (=> b!4401085 d!1327255))

(declare-fun b_lambda!139845 () Bool)

(assert (= b_lambda!139827 (or d!1326757 b_lambda!139845)))

(declare-fun bs!728613 () Bool)

(declare-fun d!1327257 () Bool)

(assert (= bs!728613 (and d!1327257 d!1326757)))

(assert (=> bs!728613 (= (dynLambda!20762 lambda!148807 (h!54904 (toList!3237 lt!1605458))) (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 lt!1605458)))))))

(assert (=> bs!728613 m!5063197))

(assert (=> b!4401087 d!1327257))

(declare-fun b_lambda!139847 () Bool)

(assert (= b_lambda!139755 (or start!427704 b_lambda!139847)))

(assert (=> d!1326875 d!1326805))

(declare-fun b_lambda!139849 () Bool)

(assert (= b_lambda!139759 (or start!427704 b_lambda!139849)))

(assert (=> d!1326919 d!1326803))

(declare-fun b_lambda!139851 () Bool)

(assert (= b_lambda!139829 (or d!1326787 b_lambda!139851)))

(declare-fun bs!728614 () Bool)

(declare-fun d!1327259 () Bool)

(assert (= bs!728614 (and d!1327259 d!1326787)))

(assert (=> bs!728614 (= (dynLambda!20762 lambda!148815 (h!54904 (toList!3237 lm!1707))) (allKeysSameHash!585 (_2!27734 (h!54904 (toList!3237 lm!1707))) (_1!27734 (h!54904 (toList!3237 lm!1707))) hashF!1247))))

(declare-fun m!5064219 () Bool)

(assert (=> bs!728614 m!5064219))

(assert (=> b!4401102 d!1327259))

(declare-fun b_lambda!139853 () Bool)

(assert (= b_lambda!139763 (or d!1326799 b_lambda!139853)))

(declare-fun bs!728615 () Bool)

(declare-fun d!1327261 () Bool)

(assert (= bs!728615 (and d!1327261 d!1326799)))

(assert (=> bs!728615 (= (dynLambda!20762 lambda!148819 (h!54904 (toList!3237 lm!1707))) (noDuplicateKeys!627 (_2!27734 (h!54904 (toList!3237 lm!1707)))))))

(assert (=> bs!728615 m!5063089))

(assert (=> b!4400726 d!1327261))

(declare-fun b_lambda!139855 () Bool)

(assert (= b_lambda!139823 (or start!427704 b_lambda!139855)))

(declare-fun bs!728616 () Bool)

(declare-fun d!1327263 () Bool)

(assert (= bs!728616 (and d!1327263 start!427704)))

(assert (=> bs!728616 (= (dynLambda!20762 lambda!148789 (h!54904 (t!356337 (toList!3237 lm!1707)))) (noDuplicateKeys!627 (_2!27734 (h!54904 (t!356337 (toList!3237 lm!1707))))))))

(assert (=> bs!728616 m!5064079))

(assert (=> b!4401067 d!1327263))

(check-sat (not b!4400720) (not bm!306261) (not b!4401104) (not b!4400647) (not b!4400750) (not bm!306231) (not b!4401114) (not b!4400816) (not b!4401059) (not b!4401083) (not b!4400763) (not d!1326967) (not d!1326933) (not b!4400717) (not b!4401072) (not b!4401086) (not b!4400704) (not bm!306259) (not b!4400828) (not b!4400863) (not b_lambda!139831) (not d!1326937) (not b!4401098) (not d!1326895) (not b!4401069) (not b_lambda!139843) (not b!4400668) (not b!4401075) (not bs!728610) (not b!4400808) (not b!4400804) (not b!4401107) (not b_lambda!139741) (not d!1326903) (not b!4400845) (not b!4401079) (not d!1327225) (not d!1327211) (not b!4401062) (not d!1327185) (not b!4400698) (not bs!728608) (not d!1326927) (not b!4400858) (not d!1327009) (not bm!306262) (not bs!728607) (not b_lambda!139835) (not b!4401063) (not b!4401099) (not b!4400755) (not b!4400820) (not d!1327215) (not b!4401091) (not b_lambda!139839) (not b!4401101) (not b!4401082) (not b!4400727) (not bs!728611) (not b!4401081) (not b!4400806) (not b!4400875) (not b!4401056) (not b!4401088) (not d!1327187) (not b!4401057) (not b!4400706) (not b_lambda!139743) (not bs!728615) (not d!1326955) (not b!4400748) (not b!4400811) (not bm!306258) (not b!4401048) tp_is_empty!25747 (not b!4400864) (not d!1327029) (not d!1327235) (not b!4400802) (not b!4401077) (not d!1326879) (not b!4400667) (not bs!728612) (not d!1326961) (not d!1327207) (not d!1327223) (not b!4400648) (not b!4401068) (not b!4401103) (not d!1327233) (not b!4400814) (not b!4401084) (not d!1327219) (not b!4400699) (not b!4400697) (not b!4401105) (not b!4400646) (not b!4400611) (not b!4400764) (not b_lambda!139751) (not b_lambda!139849) (not b_lambda!139847) (not d!1327201) (not bm!306264) (not d!1327239) (not b!4401049) (not b!4400664) (not d!1326943) (not b!4400803) (not b!4401109) (not b_lambda!139845) (not bm!306256) (not b!4400665) (not d!1326947) (not d!1326917) (not b!4401066) (not b_lambda!139745) (not d!1326975) (not bm!306263) (not b!4400672) tp_is_empty!25745 (not d!1326991) (not b!4400723) (not b!4400873) (not b!4401115) (not b!4400637) (not b!4400656) (not b!4400658) (not b!4400795) (not b!4401051) (not b!4400671) (not b_lambda!139853) (not d!1326899) (not b!4400737) (not b!4400747) (not b!4401112) (not b!4400839) (not d!1327023) (not d!1326959) (not b!4400654) (not d!1326987) (not b!4400700) (not b!4400798) (not b!4401054) (not b!4400669) (not d!1327025) (not d!1327193) (not b!4400692) (not d!1326979) (not b_lambda!139855) (not d!1327021) (not b!4400725) (not b!4400817) (not b!4400807) (not b!4400651) (not bs!728614) (not bs!728609) (not d!1326925) (not b!4400834) (not b!4400866) (not b_lambda!139841) (not bs!728616) (not b!4401050) (not d!1327003) (not b!4401060) (not bs!728606) (not b!4400735) (not d!1326935) (not d!1326889) (not b!4400629) (not b!4400815) (not d!1326901) (not b!4400639) (not d!1326891) (not d!1326983) (not d!1327017) (not b!4400865) (not d!1327203) (not b_lambda!139747) (not b!4400745) (not d!1326977) (not d!1327217) (not b!4400657) (not b!4400792) (not b_lambda!139851) (not b!4400746) (not d!1326885) (not d!1327195) (not b_lambda!139837) (not b!4400837) (not b!4400729) (not d!1327181) (not bm!306257) (not b_lambda!139749) (not b!4400743) (not b_lambda!139833) (not b!4400659) (not d!1326887) (not b!4401061) (not bs!728613) (not b!4401093) (not b!4400652) (not b!4401116) (not b!4400622) (not d!1327221) (not bm!306260) (not b!4400673) (not b!4400662) (not b!4401100) (not b!4400635))
(check-sat)
