; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497790 () Bool)

(assert start!497790)

(declare-fun res!2047542 () Bool)

(declare-fun e!3007577 () Bool)

(assert (=> start!497790 (=> (not res!2047542) (not e!3007577))))

(declare-datatypes ((K!16302 0))(
  ( (K!16303 (val!21347 Int)) )
))
(declare-datatypes ((V!16548 0))(
  ( (V!16549 (val!21348 Int)) )
))
(declare-datatypes ((tuple2!57630 0))(
  ( (tuple2!57631 (_1!32109 K!16302) (_2!32109 V!16548)) )
))
(declare-datatypes ((List!54782 0))(
  ( (Nil!54658) (Cons!54658 (h!61090 tuple2!57630) (t!362278 List!54782)) )
))
(declare-datatypes ((tuple2!57632 0))(
  ( (tuple2!57633 (_1!32110 (_ BitVec 64)) (_2!32110 List!54782)) )
))
(declare-datatypes ((List!54783 0))(
  ( (Nil!54659) (Cons!54659 (h!61091 tuple2!57632) (t!362279 List!54783)) )
))
(declare-datatypes ((ListLongMap!5713 0))(
  ( (ListLongMap!5714 (toList!7233 List!54783)) )
))
(declare-fun lm!1254 () ListLongMap!5713)

(declare-fun lambda!234050 () Int)

(declare-fun forall!12429 (List!54783 Int) Bool)

(assert (=> start!497790 (= res!2047542 (forall!12429 (toList!7233 lm!1254) lambda!234050))))

(assert (=> start!497790 e!3007577))

(declare-fun e!3007576 () Bool)

(declare-fun inv!70203 (ListLongMap!5713) Bool)

(assert (=> start!497790 (and (inv!70203 lm!1254) e!3007576)))

(assert (=> start!497790 true))

(declare-fun tp_is_empty!34119 () Bool)

(assert (=> start!497790 tp_is_empty!34119))

(declare-fun b!4813885 () Bool)

(declare-fun res!2047541 () Bool)

(assert (=> b!4813885 (=> (not res!2047541) (not e!3007577))))

(declare-fun key!2670 () K!16302)

(declare-datatypes ((ListMap!6647 0))(
  ( (ListMap!6648 (toList!7234 List!54782)) )
))
(declare-fun contains!18429 (ListMap!6647 K!16302) Bool)

(declare-fun extractMap!2575 (List!54783) ListMap!6647)

(assert (=> b!4813885 (= res!2047541 (contains!18429 (extractMap!2575 (toList!7233 lm!1254)) key!2670))))

(declare-fun b!4813886 () Bool)

(declare-fun res!2047543 () Bool)

(assert (=> b!4813886 (=> (not res!2047543) (not e!3007577))))

(declare-datatypes ((Hashable!7125 0))(
  ( (HashableExt!7124 (__x!33400 Int)) )
))
(declare-fun hashF!938 () Hashable!7125)

(declare-fun allKeysSameHashInMap!2441 (ListLongMap!5713 Hashable!7125) Bool)

(assert (=> b!4813886 (= res!2047543 (allKeysSameHashInMap!2441 lm!1254 hashF!938))))

(declare-fun b!4813887 () Bool)

(declare-datatypes ((Unit!141781 0))(
  ( (Unit!141782) )
))
(declare-fun e!3007575 () Unit!141781)

(declare-fun Unit!141783 () Unit!141781)

(assert (=> b!4813887 (= e!3007575 Unit!141783)))

(declare-fun lt!1964922 () Unit!141781)

(declare-fun lt!1964921 () (_ BitVec 64))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!316 (List!54783 (_ BitVec 64)) Unit!141781)

(assert (=> b!4813887 (= lt!1964922 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!316 (toList!7233 lm!1254) lt!1964921))))

(declare-fun containsKey!4204 (List!54783 (_ BitVec 64)) Bool)

(assert (=> b!4813887 (containsKey!4204 (toList!7233 lm!1254) lt!1964921)))

(declare-fun lt!1964918 () Unit!141781)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2322 (List!54783 (_ BitVec 64)) Unit!141781)

(assert (=> b!4813887 (= lt!1964918 (lemmaContainsKeyImpliesGetValueByKeyDefined!2322 (toList!7233 lm!1254) lt!1964921))))

(declare-datatypes ((Option!13368 0))(
  ( (None!13367) (Some!13367 (v!49000 List!54782)) )
))
(declare-fun isDefined!10505 (Option!13368) Bool)

(declare-fun getValueByKey!2535 (List!54783 (_ BitVec 64)) Option!13368)

(assert (=> b!4813887 (isDefined!10505 (getValueByKey!2535 (toList!7233 lm!1254) lt!1964921))))

(declare-fun lt!1964923 () List!54782)

(declare-fun lt!1964915 () Unit!141781)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1033 (List!54783 (_ BitVec 64) List!54782) Unit!141781)

(assert (=> b!4813887 (= lt!1964915 (lemmaGetValueByKeyImpliesContainsTuple!1033 (toList!7233 lm!1254) lt!1964921 lt!1964923))))

(assert (=> b!4813887 false))

(declare-fun b!4813888 () Bool)

(declare-fun Unit!141784 () Unit!141781)

(assert (=> b!4813888 (= e!3007575 Unit!141784)))

(declare-fun b!4813889 () Bool)

(declare-fun tp!1361674 () Bool)

(assert (=> b!4813889 (= e!3007576 tp!1361674)))

(declare-fun b!4813890 () Bool)

(assert (=> b!4813890 (= e!3007577 (not true))))

(declare-datatypes ((Option!13369 0))(
  ( (None!13368) (Some!13368 (v!49001 tuple2!57630)) )
))
(declare-fun isDefined!10506 (Option!13369) Bool)

(declare-fun getPair!981 (List!54782 K!16302) Option!13369)

(assert (=> b!4813890 (isDefined!10506 (getPair!981 lt!1964923 key!2670))))

(declare-fun lt!1964925 () Unit!141781)

(declare-fun lt!1964919 () tuple2!57632)

(declare-fun forallContained!4299 (List!54783 Int tuple2!57632) Unit!141781)

(assert (=> b!4813890 (= lt!1964925 (forallContained!4299 (toList!7233 lm!1254) lambda!234050 lt!1964919))))

(declare-fun lt!1964912 () Bool)

(assert (=> b!4813890 lt!1964912))

(declare-fun lt!1964916 () Unit!141781)

(declare-fun lemmaGetValueImpliesTupleContained!648 (ListLongMap!5713 (_ BitVec 64) List!54782) Unit!141781)

(assert (=> b!4813890 (= lt!1964916 (lemmaGetValueImpliesTupleContained!648 lm!1254 lt!1964921 lt!1964923))))

(declare-fun lt!1964920 () Unit!141781)

(declare-fun lemmaInGenMapThenGetPairDefined!593 (ListLongMap!5713 K!16302 Hashable!7125) Unit!141781)

(assert (=> b!4813890 (= lt!1964920 (lemmaInGenMapThenGetPairDefined!593 lm!1254 key!2670 hashF!938))))

(declare-fun lt!1964913 () Unit!141781)

(assert (=> b!4813890 (= lt!1964913 (forallContained!4299 (toList!7233 lm!1254) lambda!234050 lt!1964919))))

(declare-fun lt!1964914 () Unit!141781)

(assert (=> b!4813890 (= lt!1964914 (forallContained!4299 (toList!7233 lm!1254) lambda!234050 lt!1964919))))

(declare-fun lt!1964917 () Unit!141781)

(assert (=> b!4813890 (= lt!1964917 e!3007575)))

(declare-fun c!820445 () Bool)

(assert (=> b!4813890 (= c!820445 (not lt!1964912))))

(declare-fun contains!18430 (List!54783 tuple2!57632) Bool)

(assert (=> b!4813890 (= lt!1964912 (contains!18430 (toList!7233 lm!1254) lt!1964919))))

(assert (=> b!4813890 (= lt!1964919 (tuple2!57633 lt!1964921 lt!1964923))))

(declare-fun apply!13230 (ListLongMap!5713 (_ BitVec 64)) List!54782)

(assert (=> b!4813890 (= lt!1964923 (apply!13230 lm!1254 lt!1964921))))

(declare-fun contains!18431 (ListLongMap!5713 (_ BitVec 64)) Bool)

(assert (=> b!4813890 (contains!18431 lm!1254 lt!1964921)))

(declare-fun hash!5188 (Hashable!7125 K!16302) (_ BitVec 64))

(assert (=> b!4813890 (= lt!1964921 (hash!5188 hashF!938 key!2670))))

(declare-fun lt!1964924 () Unit!141781)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1063 (ListLongMap!5713 K!16302 Hashable!7125) Unit!141781)

(assert (=> b!4813890 (= lt!1964924 (lemmaInGenMapThenLongMapContainsHash!1063 lm!1254 key!2670 hashF!938))))

(assert (= (and start!497790 res!2047542) b!4813886))

(assert (= (and b!4813886 res!2047543) b!4813885))

(assert (= (and b!4813885 res!2047541) b!4813890))

(assert (= (and b!4813890 c!820445) b!4813887))

(assert (= (and b!4813890 (not c!820445)) b!4813888))

(assert (= start!497790 b!4813889))

(declare-fun m!5799714 () Bool)

(assert (=> b!4813890 m!5799714))

(declare-fun m!5799716 () Bool)

(assert (=> b!4813890 m!5799716))

(declare-fun m!5799718 () Bool)

(assert (=> b!4813890 m!5799718))

(declare-fun m!5799720 () Bool)

(assert (=> b!4813890 m!5799720))

(declare-fun m!5799722 () Bool)

(assert (=> b!4813890 m!5799722))

(declare-fun m!5799724 () Bool)

(assert (=> b!4813890 m!5799724))

(declare-fun m!5799726 () Bool)

(assert (=> b!4813890 m!5799726))

(declare-fun m!5799728 () Bool)

(assert (=> b!4813890 m!5799728))

(declare-fun m!5799730 () Bool)

(assert (=> b!4813890 m!5799730))

(assert (=> b!4813890 m!5799720))

(assert (=> b!4813890 m!5799718))

(declare-fun m!5799732 () Bool)

(assert (=> b!4813890 m!5799732))

(assert (=> b!4813890 m!5799718))

(declare-fun m!5799734 () Bool)

(assert (=> b!4813887 m!5799734))

(declare-fun m!5799736 () Bool)

(assert (=> b!4813887 m!5799736))

(declare-fun m!5799738 () Bool)

(assert (=> b!4813887 m!5799738))

(declare-fun m!5799740 () Bool)

(assert (=> b!4813887 m!5799740))

(declare-fun m!5799742 () Bool)

(assert (=> b!4813887 m!5799742))

(declare-fun m!5799744 () Bool)

(assert (=> b!4813887 m!5799744))

(assert (=> b!4813887 m!5799740))

(declare-fun m!5799746 () Bool)

(assert (=> b!4813886 m!5799746))

(declare-fun m!5799748 () Bool)

(assert (=> start!497790 m!5799748))

(declare-fun m!5799750 () Bool)

(assert (=> start!497790 m!5799750))

(declare-fun m!5799752 () Bool)

(assert (=> b!4813885 m!5799752))

(assert (=> b!4813885 m!5799752))

(declare-fun m!5799754 () Bool)

(assert (=> b!4813885 m!5799754))

(push 1)

(assert tp_is_empty!34119)

(assert (not b!4813889))

(assert (not start!497790))

(assert (not b!4813886))

(assert (not b!4813890))

(assert (not b!4813885))

(assert (not b!4813887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

