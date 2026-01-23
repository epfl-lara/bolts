; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478796 () Bool)

(assert start!478796)

(declare-fun e!2938694 () Bool)

(declare-fun b!4711664 () Bool)

(declare-fun tp!1347569 () Bool)

(declare-fun tp_is_empty!31141 () Bool)

(declare-fun tp_is_empty!31143 () Bool)

(assert (=> b!4711664 (= e!2938694 (and tp_is_empty!31141 tp_is_empty!31143 tp!1347569))))

(declare-fun b!4711665 () Bool)

(declare-fun e!2938696 () Bool)

(declare-fun e!2938692 () Bool)

(assert (=> b!4711665 (= e!2938696 (not e!2938692))))

(declare-fun res!1991509 () Bool)

(assert (=> b!4711665 (=> res!1991509 e!2938692)))

(declare-datatypes ((K!14055 0))(
  ( (K!14056 (val!19515 Int)) )
))
(declare-datatypes ((V!14301 0))(
  ( (V!14302 (val!19516 Int)) )
))
(declare-datatypes ((tuple2!54242 0))(
  ( (tuple2!54243 (_1!30415 K!14055) (_2!30415 V!14301)) )
))
(declare-datatypes ((List!52817 0))(
  ( (Nil!52693) (Cons!52693 (h!59006 tuple2!54242) (t!360059 List!52817)) )
))
(declare-fun oldBucket!34 () List!52817)

(declare-fun key!4653 () K!14055)

(get-info :version)

(assert (=> b!4711665 (= res!1991509 (or (and ((_ is Cons!52693) oldBucket!34) (= (_1!30415 (h!59006 oldBucket!34)) key!4653)) (not ((_ is Cons!52693) oldBucket!34)) (= (_1!30415 (h!59006 oldBucket!34)) key!4653)))))

(declare-fun e!2938690 () Bool)

(assert (=> b!4711665 e!2938690))

(declare-fun res!1991510 () Bool)

(assert (=> b!4711665 (=> (not res!1991510) (not e!2938690))))

(declare-datatypes ((tuple2!54244 0))(
  ( (tuple2!54245 (_1!30416 (_ BitVec 64)) (_2!30416 List!52817)) )
))
(declare-datatypes ((List!52818 0))(
  ( (Nil!52694) (Cons!52694 (h!59007 tuple2!54244) (t!360060 List!52818)) )
))
(declare-datatypes ((ListLongMap!4343 0))(
  ( (ListLongMap!4344 (toList!5813 List!52818)) )
))
(declare-fun lm!2023 () ListLongMap!4343)

(declare-fun tail!8870 (ListLongMap!4343) ListLongMap!4343)

(assert (=> b!4711665 (= res!1991510 (= (t!360060 (toList!5813 lm!2023)) (toList!5813 (tail!8870 lm!2023))))))

(declare-fun b!4711666 () Bool)

(declare-fun e!2938691 () Bool)

(declare-fun e!2938693 () Bool)

(assert (=> b!4711666 (= e!2938691 e!2938693)))

(declare-fun res!1991514 () Bool)

(assert (=> b!4711666 (=> (not res!1991514) (not e!2938693))))

(declare-datatypes ((ListMap!5177 0))(
  ( (ListMap!5178 (toList!5814 List!52817)) )
))
(declare-fun lt!1876227 () ListMap!5177)

(declare-fun contains!15994 (ListMap!5177 K!14055) Bool)

(assert (=> b!4711666 (= res!1991514 (contains!15994 lt!1876227 key!4653))))

(declare-fun extractMap!1988 (List!52818) ListMap!5177)

(assert (=> b!4711666 (= lt!1876227 (extractMap!1988 (toList!5813 lm!2023)))))

(declare-fun b!4711667 () Bool)

(declare-fun res!1991515 () Bool)

(assert (=> b!4711667 (=> (not res!1991515) (not e!2938696))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!10162 (List!52818) tuple2!54244)

(assert (=> b!4711667 (= res!1991515 (= (head!10162 (toList!5813 lm!2023)) (tuple2!54245 hash!405 oldBucket!34)))))

(declare-fun b!4711668 () Bool)

(declare-fun res!1991517 () Bool)

(assert (=> b!4711668 (=> (not res!1991517) (not e!2938691))))

(declare-fun newBucket!218 () List!52817)

(declare-fun removePairForKey!1557 (List!52817 K!14055) List!52817)

(assert (=> b!4711668 (= res!1991517 (= (removePairForKey!1557 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4711669 () Bool)

(declare-fun res!1991508 () Bool)

(assert (=> b!4711669 (=> (not res!1991508) (not e!2938696))))

(declare-datatypes ((Hashable!6331 0))(
  ( (HashableExt!6330 (__x!32034 Int)) )
))
(declare-fun hashF!1323 () Hashable!6331)

(declare-fun allKeysSameHash!1788 (List!52817 (_ BitVec 64) Hashable!6331) Bool)

(assert (=> b!4711669 (= res!1991508 (allKeysSameHash!1788 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4711671 () Bool)

(assert (=> b!4711671 (= e!2938693 e!2938696)))

(declare-fun res!1991511 () Bool)

(assert (=> b!4711671 (=> (not res!1991511) (not e!2938696))))

(declare-fun lt!1876222 () (_ BitVec 64))

(assert (=> b!4711671 (= res!1991511 (= lt!1876222 hash!405))))

(declare-fun hash!4290 (Hashable!6331 K!14055) (_ BitVec 64))

(assert (=> b!4711671 (= lt!1876222 (hash!4290 hashF!1323 key!4653))))

(declare-fun b!4711672 () Bool)

(declare-fun res!1991507 () Bool)

(assert (=> b!4711672 (=> (not res!1991507) (not e!2938691))))

(declare-fun noDuplicateKeys!1962 (List!52817) Bool)

(assert (=> b!4711672 (= res!1991507 (noDuplicateKeys!1962 newBucket!218))))

(declare-fun b!4711673 () Bool)

(assert (=> b!4711673 (= e!2938692 true)))

(declare-fun containsKey!3269 (List!52817 K!14055) Bool)

(assert (=> b!4711673 (containsKey!3269 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!128134 0))(
  ( (Unit!128135) )
))
(declare-fun lt!1876223 () Unit!128134)

(declare-fun lemmaGetPairDefinedThenContainsKey!276 (List!52817 K!14055 Hashable!6331) Unit!128134)

(assert (=> b!4711673 (= lt!1876223 (lemmaGetPairDefinedThenContainsKey!276 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1876224 () List!52817)

(declare-datatypes ((Option!12271 0))(
  ( (None!12270) (Some!12270 (v!46797 tuple2!54242)) )
))
(declare-fun isDefined!9526 (Option!12271) Bool)

(declare-fun getPair!528 (List!52817 K!14055) Option!12271)

(assert (=> b!4711673 (isDefined!9526 (getPair!528 lt!1876224 key!4653))))

(declare-fun lambda!212905 () Int)

(declare-fun lt!1876229 () Unit!128134)

(declare-fun lt!1876230 () tuple2!54244)

(declare-fun forallContained!3566 (List!52818 Int tuple2!54244) Unit!128134)

(assert (=> b!4711673 (= lt!1876229 (forallContained!3566 (toList!5813 lm!2023) lambda!212905 lt!1876230))))

(declare-fun contains!15995 (List!52818 tuple2!54244) Bool)

(assert (=> b!4711673 (contains!15995 (toList!5813 lm!2023) lt!1876230)))

(assert (=> b!4711673 (= lt!1876230 (tuple2!54245 lt!1876222 lt!1876224))))

(declare-fun lt!1876228 () Unit!128134)

(declare-fun lemmaGetValueImpliesTupleContained!333 (ListLongMap!4343 (_ BitVec 64) List!52817) Unit!128134)

(assert (=> b!4711673 (= lt!1876228 (lemmaGetValueImpliesTupleContained!333 lm!2023 lt!1876222 lt!1876224))))

(declare-fun apply!12411 (ListLongMap!4343 (_ BitVec 64)) List!52817)

(assert (=> b!4711673 (= lt!1876224 (apply!12411 lm!2023 lt!1876222))))

(declare-fun contains!15996 (ListLongMap!4343 (_ BitVec 64)) Bool)

(assert (=> b!4711673 (contains!15996 lm!2023 lt!1876222)))

(declare-fun lt!1876225 () Unit!128134)

(declare-fun lemmaInGenMapThenLongMapContainsHash!734 (ListLongMap!4343 K!14055 Hashable!6331) Unit!128134)

(assert (=> b!4711673 (= lt!1876225 (lemmaInGenMapThenLongMapContainsHash!734 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1876226 () Unit!128134)

(declare-fun lemmaInGenMapThenGetPairDefined!324 (ListLongMap!4343 K!14055 Hashable!6331) Unit!128134)

(assert (=> b!4711673 (= lt!1876226 (lemmaInGenMapThenGetPairDefined!324 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4711674 () Bool)

(declare-fun res!1991513 () Bool)

(assert (=> b!4711674 (=> (not res!1991513) (not e!2938696))))

(declare-fun allKeysSameHashInMap!1876 (ListLongMap!4343 Hashable!6331) Bool)

(assert (=> b!4711674 (= res!1991513 (allKeysSameHashInMap!1876 lm!2023 hashF!1323))))

(declare-fun tp!1347568 () Bool)

(declare-fun b!4711675 () Bool)

(declare-fun e!2938695 () Bool)

(assert (=> b!4711675 (= e!2938695 (and tp_is_empty!31141 tp_is_empty!31143 tp!1347568))))

(declare-fun res!1991512 () Bool)

(assert (=> start!478796 (=> (not res!1991512) (not e!2938691))))

(declare-fun forall!11497 (List!52818 Int) Bool)

(assert (=> start!478796 (= res!1991512 (forall!11497 (toList!5813 lm!2023) lambda!212905))))

(assert (=> start!478796 e!2938691))

(declare-fun e!2938689 () Bool)

(declare-fun inv!67929 (ListLongMap!4343) Bool)

(assert (=> start!478796 (and (inv!67929 lm!2023) e!2938689)))

(assert (=> start!478796 tp_is_empty!31141))

(assert (=> start!478796 e!2938694))

(assert (=> start!478796 true))

(assert (=> start!478796 e!2938695))

(declare-fun b!4711670 () Bool)

(declare-fun res!1991506 () Bool)

(assert (=> b!4711670 (=> (not res!1991506) (not e!2938691))))

(assert (=> b!4711670 (= res!1991506 (noDuplicateKeys!1962 oldBucket!34))))

(declare-fun b!4711676 () Bool)

(declare-fun res!1991505 () Bool)

(assert (=> b!4711676 (=> (not res!1991505) (not e!2938691))))

(assert (=> b!4711676 (= res!1991505 (allKeysSameHash!1788 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4711677 () Bool)

(declare-fun addToMapMapFromBucket!1392 (List!52817 ListMap!5177) ListMap!5177)

(assert (=> b!4711677 (= e!2938690 (= lt!1876227 (addToMapMapFromBucket!1392 (_2!30416 (h!59007 (toList!5813 lm!2023))) (extractMap!1988 (t!360060 (toList!5813 lm!2023))))))))

(declare-fun b!4711678 () Bool)

(declare-fun res!1991516 () Bool)

(assert (=> b!4711678 (=> (not res!1991516) (not e!2938696))))

(assert (=> b!4711678 (= res!1991516 ((_ is Cons!52694) (toList!5813 lm!2023)))))

(declare-fun b!4711679 () Bool)

(declare-fun tp!1347567 () Bool)

(assert (=> b!4711679 (= e!2938689 tp!1347567)))

(assert (= (and start!478796 res!1991512) b!4711670))

(assert (= (and b!4711670 res!1991506) b!4711672))

(assert (= (and b!4711672 res!1991507) b!4711668))

(assert (= (and b!4711668 res!1991517) b!4711676))

(assert (= (and b!4711676 res!1991505) b!4711666))

(assert (= (and b!4711666 res!1991514) b!4711671))

(assert (= (and b!4711671 res!1991511) b!4711669))

(assert (= (and b!4711669 res!1991508) b!4711674))

(assert (= (and b!4711674 res!1991513) b!4711667))

(assert (= (and b!4711667 res!1991515) b!4711678))

(assert (= (and b!4711678 res!1991516) b!4711665))

(assert (= (and b!4711665 res!1991510) b!4711677))

(assert (= (and b!4711665 (not res!1991509)) b!4711673))

(assert (= start!478796 b!4711679))

(assert (= (and start!478796 ((_ is Cons!52693) oldBucket!34)) b!4711664))

(assert (= (and start!478796 ((_ is Cons!52693) newBucket!218)) b!4711675))

(declare-fun m!5637829 () Bool)

(assert (=> b!4711669 m!5637829))

(declare-fun m!5637831 () Bool)

(assert (=> b!4711676 m!5637831))

(declare-fun m!5637833 () Bool)

(assert (=> b!4711665 m!5637833))

(declare-fun m!5637835 () Bool)

(assert (=> b!4711670 m!5637835))

(declare-fun m!5637837 () Bool)

(assert (=> b!4711671 m!5637837))

(declare-fun m!5637839 () Bool)

(assert (=> b!4711677 m!5637839))

(assert (=> b!4711677 m!5637839))

(declare-fun m!5637841 () Bool)

(assert (=> b!4711677 m!5637841))

(declare-fun m!5637843 () Bool)

(assert (=> b!4711667 m!5637843))

(declare-fun m!5637845 () Bool)

(assert (=> b!4711666 m!5637845))

(declare-fun m!5637847 () Bool)

(assert (=> b!4711666 m!5637847))

(declare-fun m!5637849 () Bool)

(assert (=> b!4711672 m!5637849))

(declare-fun m!5637851 () Bool)

(assert (=> b!4711674 m!5637851))

(declare-fun m!5637853 () Bool)

(assert (=> start!478796 m!5637853))

(declare-fun m!5637855 () Bool)

(assert (=> start!478796 m!5637855))

(declare-fun m!5637857 () Bool)

(assert (=> b!4711668 m!5637857))

(declare-fun m!5637859 () Bool)

(assert (=> b!4711673 m!5637859))

(declare-fun m!5637861 () Bool)

(assert (=> b!4711673 m!5637861))

(declare-fun m!5637863 () Bool)

(assert (=> b!4711673 m!5637863))

(declare-fun m!5637865 () Bool)

(assert (=> b!4711673 m!5637865))

(assert (=> b!4711673 m!5637859))

(declare-fun m!5637867 () Bool)

(assert (=> b!4711673 m!5637867))

(declare-fun m!5637869 () Bool)

(assert (=> b!4711673 m!5637869))

(declare-fun m!5637871 () Bool)

(assert (=> b!4711673 m!5637871))

(declare-fun m!5637873 () Bool)

(assert (=> b!4711673 m!5637873))

(declare-fun m!5637875 () Bool)

(assert (=> b!4711673 m!5637875))

(declare-fun m!5637877 () Bool)

(assert (=> b!4711673 m!5637877))

(declare-fun m!5637879 () Bool)

(assert (=> b!4711673 m!5637879))

(check-sat (not b!4711667) (not b!4711664) (not b!4711672) (not start!478796) (not b!4711665) (not b!4711676) (not b!4711670) (not b!4711669) (not b!4711671) (not b!4711666) tp_is_empty!31141 (not b!4711677) (not b!4711668) (not b!4711673) (not b!4711675) (not b!4711674) tp_is_empty!31143 (not b!4711679))
(check-sat)
