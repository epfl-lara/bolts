; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!494844 () Bool)

(assert start!494844)

(declare-fun b!4798041 () Bool)

(declare-fun res!2040275 () Bool)

(declare-fun e!2996094 () Bool)

(assert (=> b!4798041 (=> res!2040275 e!2996094)))

(declare-datatypes ((K!15867 0))(
  ( (K!15868 (val!20999 Int)) )
))
(declare-datatypes ((V!16113 0))(
  ( (V!16114 (val!21000 Int)) )
))
(declare-datatypes ((tuple2!56972 0))(
  ( (tuple2!56973 (_1!31780 K!15867) (_2!31780 V!16113)) )
))
(declare-datatypes ((List!54416 0))(
  ( (Nil!54292) (Cons!54292 (h!60724 tuple2!56972) (t!361866 List!54416)) )
))
(declare-datatypes ((tuple2!56974 0))(
  ( (tuple2!56975 (_1!31781 (_ BitVec 64)) (_2!31781 List!54416)) )
))
(declare-datatypes ((List!54417 0))(
  ( (Nil!54293) (Cons!54293 (h!60725 tuple2!56974) (t!361867 List!54417)) )
))
(declare-datatypes ((ListLongMap!5403 0))(
  ( (ListLongMap!5404 (toList!6981 List!54417)) )
))
(declare-fun lm!2473 () ListLongMap!5403)

(assert (=> b!4798041 (= res!2040275 (not (is-Cons!54293 (toList!6981 lm!2473))))))

(declare-fun b!4798042 () Bool)

(declare-fun e!2996092 () Bool)

(declare-fun lt!1954753 () List!54416)

(declare-fun key!5896 () K!15867)

(declare-datatypes ((Option!13155 0))(
  ( (None!13154) (Some!13154 (v!48467 tuple2!56972)) )
))
(declare-fun isDefined!10296 (Option!13155) Bool)

(declare-fun getPair!923 (List!54416 K!15867) Option!13155)

(assert (=> b!4798042 (= e!2996092 (isDefined!10296 (getPair!923 lt!1954753 key!5896)))))

(declare-fun lt!1954751 () tuple2!56974)

(declare-datatypes ((Unit!140426 0))(
  ( (Unit!140427) )
))
(declare-fun lt!1954758 () Unit!140426)

(declare-fun lambda!231790 () Int)

(declare-fun forallContained!4198 (List!54417 Int tuple2!56974) Unit!140426)

(assert (=> b!4798042 (= lt!1954758 (forallContained!4198 (toList!6981 lm!2473) lambda!231790 lt!1954751))))

(declare-fun contains!17935 (List!54417 tuple2!56974) Bool)

(assert (=> b!4798042 (contains!17935 (toList!6981 lm!2473) lt!1954751)))

(declare-fun lt!1954749 () (_ BitVec 64))

(assert (=> b!4798042 (= lt!1954751 (tuple2!56975 lt!1954749 lt!1954753))))

(declare-fun lt!1954754 () Unit!140426)

(declare-fun lemmaGetValueImpliesTupleContained!640 (ListLongMap!5403 (_ BitVec 64) List!54416) Unit!140426)

(assert (=> b!4798042 (= lt!1954754 (lemmaGetValueImpliesTupleContained!640 lm!2473 lt!1954749 lt!1954753))))

(declare-fun apply!13024 (ListLongMap!5403 (_ BitVec 64)) List!54416)

(assert (=> b!4798042 (= lt!1954753 (apply!13024 lm!2473 lt!1954749))))

(declare-fun e!2996095 () Bool)

(declare-fun b!4798043 () Bool)

(assert (=> b!4798043 (= e!2996095 (isDefined!10296 (getPair!923 (apply!13024 lm!2473 lt!1954749) key!5896)))))

(declare-fun b!4798044 () Bool)

(declare-fun e!2996091 () Bool)

(assert (=> b!4798044 (= e!2996091 (not e!2996094))))

(declare-fun res!2040283 () Bool)

(assert (=> b!4798044 (=> res!2040283 e!2996094)))

(declare-fun value!3111 () V!16113)

(declare-fun getValue!139 (List!54417 K!15867) V!16113)

(assert (=> b!4798044 (= res!2040283 (not (= (getValue!139 (toList!6981 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!593 (List!54417 K!15867) Bool)

(assert (=> b!4798044 (containsKeyBiggerList!593 (toList!6981 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6951 0))(
  ( (HashableExt!6950 (__x!32974 Int)) )
))
(declare-fun hashF!1559 () Hashable!6951)

(declare-fun lt!1954748 () Unit!140426)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!333 (ListLongMap!5403 K!15867 Hashable!6951) Unit!140426)

(assert (=> b!4798044 (= lt!1954748 (lemmaInLongMapThenContainsKeyBiggerList!333 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4798044 e!2996095))

(declare-fun res!2040277 () Bool)

(assert (=> b!4798044 (=> (not res!2040277) (not e!2996095))))

(declare-fun lt!1954750 () Bool)

(assert (=> b!4798044 (= res!2040277 (not lt!1954750))))

(declare-fun contains!17936 (ListLongMap!5403 (_ BitVec 64)) Bool)

(assert (=> b!4798044 (= lt!1954750 (not (contains!17936 lm!2473 lt!1954749)))))

(declare-fun hash!5000 (Hashable!6951 K!15867) (_ BitVec 64))

(assert (=> b!4798044 (= lt!1954749 (hash!5000 hashF!1559 key!5896))))

(declare-fun lt!1954757 () Unit!140426)

(declare-fun lemmaInGenericMapThenInLongMap!355 (ListLongMap!5403 K!15867 Hashable!6951) Unit!140426)

(assert (=> b!4798044 (= lt!1954757 (lemmaInGenericMapThenInLongMap!355 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4798045 () Bool)

(declare-fun e!2996096 () Unit!140426)

(declare-fun Unit!140428 () Unit!140426)

(assert (=> b!4798045 (= e!2996096 Unit!140428)))

(declare-fun b!4798046 () Bool)

(declare-fun e!2996093 () Bool)

(declare-fun tp!1358263 () Bool)

(assert (=> b!4798046 (= e!2996093 tp!1358263)))

(declare-fun res!2040276 () Bool)

(assert (=> start!494844 (=> (not res!2040276) (not e!2996091))))

(declare-fun forall!12306 (List!54417 Int) Bool)

(assert (=> start!494844 (= res!2040276 (forall!12306 (toList!6981 lm!2473) lambda!231790))))

(assert (=> start!494844 e!2996091))

(declare-fun inv!69894 (ListLongMap!5403) Bool)

(assert (=> start!494844 (and (inv!69894 lm!2473) e!2996093)))

(assert (=> start!494844 true))

(declare-fun tp_is_empty!33665 () Bool)

(assert (=> start!494844 tp_is_empty!33665))

(declare-fun tp_is_empty!33667 () Bool)

(assert (=> start!494844 tp_is_empty!33667))

(declare-fun b!4798047 () Bool)

(declare-fun res!2040282 () Bool)

(assert (=> b!4798047 (=> res!2040282 e!2996092)))

(assert (=> b!4798047 (= res!2040282 lt!1954750)))

(declare-fun b!4798048 () Bool)

(declare-fun res!2040280 () Bool)

(assert (=> b!4798048 (=> (not res!2040280) (not e!2996091))))

(declare-fun allKeysSameHashInMap!2356 (ListLongMap!5403 Hashable!6951) Bool)

(assert (=> b!4798048 (= res!2040280 (allKeysSameHashInMap!2356 lm!2473 hashF!1559))))

(declare-fun b!4798049 () Bool)

(assert (=> b!4798049 (= e!2996094 e!2996092)))

(declare-fun res!2040281 () Bool)

(assert (=> b!4798049 (=> res!2040281 e!2996092)))

(assert (=> b!4798049 (= res!2040281 (not (forall!12306 (toList!6981 lm!2473) lambda!231790)))))

(declare-fun lt!1954755 () Unit!140426)

(assert (=> b!4798049 (= lt!1954755 e!2996096)))

(declare-fun c!817752 () Bool)

(declare-fun lt!1954756 () ListLongMap!5403)

(assert (=> b!4798049 (= c!817752 (not (contains!17936 lt!1954756 lt!1954749)))))

(declare-fun tail!9308 (ListLongMap!5403) ListLongMap!5403)

(assert (=> b!4798049 (= lt!1954756 (tail!9308 lm!2473))))

(declare-fun b!4798050 () Bool)

(declare-fun res!2040278 () Bool)

(assert (=> b!4798050 (=> res!2040278 e!2996094)))

(declare-fun containsKey!4005 (List!54416 K!15867) Bool)

(assert (=> b!4798050 (= res!2040278 (containsKey!4005 (_2!31781 (h!60725 (toList!6981 lm!2473))) key!5896))))

(declare-fun b!4798051 () Bool)

(declare-fun lt!1954752 () Unit!140426)

(assert (=> b!4798051 (= e!2996096 lt!1954752)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!49 (ListLongMap!5403 K!15867 Hashable!6951) Unit!140426)

(assert (=> b!4798051 (= lt!1954752 (lemmaHashNotInLongMapThenNotInGenerated!49 lt!1954756 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6453 0))(
  ( (ListMap!6454 (toList!6982 List!54416)) )
))
(declare-fun contains!17937 (ListMap!6453 K!15867) Bool)

(declare-fun extractMap!2478 (List!54417) ListMap!6453)

(assert (=> b!4798051 (not (contains!17937 (extractMap!2478 (toList!6981 lt!1954756)) key!5896))))

(declare-fun b!4798052 () Bool)

(declare-fun res!2040279 () Bool)

(assert (=> b!4798052 (=> (not res!2040279) (not e!2996091))))

(assert (=> b!4798052 (= res!2040279 (contains!17937 (extractMap!2478 (toList!6981 lm!2473)) key!5896))))

(assert (= (and start!494844 res!2040276) b!4798048))

(assert (= (and b!4798048 res!2040280) b!4798052))

(assert (= (and b!4798052 res!2040279) b!4798044))

(assert (= (and b!4798044 res!2040277) b!4798043))

(assert (= (and b!4798044 (not res!2040283)) b!4798041))

(assert (= (and b!4798041 (not res!2040275)) b!4798050))

(assert (= (and b!4798050 (not res!2040278)) b!4798049))

(assert (= (and b!4798049 c!817752) b!4798051))

(assert (= (and b!4798049 (not c!817752)) b!4798045))

(assert (= (and b!4798049 (not res!2040281)) b!4798047))

(assert (= (and b!4798047 (not res!2040282)) b!4798042))

(assert (= start!494844 b!4798046))

(declare-fun m!5780674 () Bool)

(assert (=> b!4798043 m!5780674))

(assert (=> b!4798043 m!5780674))

(declare-fun m!5780676 () Bool)

(assert (=> b!4798043 m!5780676))

(assert (=> b!4798043 m!5780676))

(declare-fun m!5780678 () Bool)

(assert (=> b!4798043 m!5780678))

(declare-fun m!5780680 () Bool)

(assert (=> b!4798049 m!5780680))

(declare-fun m!5780682 () Bool)

(assert (=> b!4798049 m!5780682))

(declare-fun m!5780684 () Bool)

(assert (=> b!4798049 m!5780684))

(declare-fun m!5780686 () Bool)

(assert (=> b!4798051 m!5780686))

(declare-fun m!5780688 () Bool)

(assert (=> b!4798051 m!5780688))

(assert (=> b!4798051 m!5780688))

(declare-fun m!5780690 () Bool)

(assert (=> b!4798051 m!5780690))

(declare-fun m!5780692 () Bool)

(assert (=> b!4798044 m!5780692))

(declare-fun m!5780694 () Bool)

(assert (=> b!4798044 m!5780694))

(declare-fun m!5780696 () Bool)

(assert (=> b!4798044 m!5780696))

(declare-fun m!5780698 () Bool)

(assert (=> b!4798044 m!5780698))

(declare-fun m!5780700 () Bool)

(assert (=> b!4798044 m!5780700))

(declare-fun m!5780702 () Bool)

(assert (=> b!4798044 m!5780702))

(assert (=> start!494844 m!5780680))

(declare-fun m!5780704 () Bool)

(assert (=> start!494844 m!5780704))

(declare-fun m!5780706 () Bool)

(assert (=> b!4798042 m!5780706))

(declare-fun m!5780708 () Bool)

(assert (=> b!4798042 m!5780708))

(assert (=> b!4798042 m!5780706))

(declare-fun m!5780710 () Bool)

(assert (=> b!4798042 m!5780710))

(declare-fun m!5780712 () Bool)

(assert (=> b!4798042 m!5780712))

(assert (=> b!4798042 m!5780674))

(declare-fun m!5780714 () Bool)

(assert (=> b!4798042 m!5780714))

(declare-fun m!5780716 () Bool)

(assert (=> b!4798052 m!5780716))

(assert (=> b!4798052 m!5780716))

(declare-fun m!5780718 () Bool)

(assert (=> b!4798052 m!5780718))

(declare-fun m!5780720 () Bool)

(assert (=> b!4798048 m!5780720))

(declare-fun m!5780722 () Bool)

(assert (=> b!4798050 m!5780722))

(push 1)

(assert (not b!4798043))

(assert (not b!4798050))

(assert (not start!494844))

(assert (not b!4798052))

(assert tp_is_empty!33665)

(assert tp_is_empty!33667)

(assert (not b!4798046))

(assert (not b!4798044))

(assert (not b!4798049))

(assert (not b!4798048))

(assert (not b!4798051))

(assert (not b!4798042))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

