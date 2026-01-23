; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497786 () Bool)

(assert start!497786)

(declare-fun b!4813849 () Bool)

(declare-fun res!2047524 () Bool)

(declare-fun e!3007559 () Bool)

(assert (=> b!4813849 (=> (not res!2047524) (not e!3007559))))

(declare-datatypes ((K!16297 0))(
  ( (K!16298 (val!21343 Int)) )
))
(declare-datatypes ((V!16543 0))(
  ( (V!16544 (val!21344 Int)) )
))
(declare-datatypes ((tuple2!57622 0))(
  ( (tuple2!57623 (_1!32105 K!16297) (_2!32105 V!16543)) )
))
(declare-datatypes ((List!54778 0))(
  ( (Nil!54654) (Cons!54654 (h!61086 tuple2!57622) (t!362274 List!54778)) )
))
(declare-datatypes ((tuple2!57624 0))(
  ( (tuple2!57625 (_1!32106 (_ BitVec 64)) (_2!32106 List!54778)) )
))
(declare-datatypes ((List!54779 0))(
  ( (Nil!54655) (Cons!54655 (h!61087 tuple2!57624) (t!362275 List!54779)) )
))
(declare-datatypes ((ListLongMap!5709 0))(
  ( (ListLongMap!5710 (toList!7229 List!54779)) )
))
(declare-fun lm!1254 () ListLongMap!5709)

(declare-fun key!2670 () K!16297)

(declare-datatypes ((ListMap!6643 0))(
  ( (ListMap!6644 (toList!7230 List!54778)) )
))
(declare-fun contains!18423 (ListMap!6643 K!16297) Bool)

(declare-fun extractMap!2573 (List!54779) ListMap!6643)

(assert (=> b!4813849 (= res!2047524 (contains!18423 (extractMap!2573 (toList!7229 lm!1254)) key!2670))))

(declare-fun b!4813850 () Bool)

(declare-datatypes ((Unit!141773 0))(
  ( (Unit!141774) )
))
(declare-fun e!3007558 () Unit!141773)

(declare-fun Unit!141775 () Unit!141773)

(assert (=> b!4813850 (= e!3007558 Unit!141775)))

(declare-fun lt!1964853 () Unit!141773)

(declare-fun lt!1964845 () (_ BitVec 64))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!314 (List!54779 (_ BitVec 64)) Unit!141773)

(assert (=> b!4813850 (= lt!1964853 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!314 (toList!7229 lm!1254) lt!1964845))))

(declare-fun containsKey!4202 (List!54779 (_ BitVec 64)) Bool)

(assert (=> b!4813850 (containsKey!4202 (toList!7229 lm!1254) lt!1964845)))

(declare-fun lt!1964852 () Unit!141773)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2320 (List!54779 (_ BitVec 64)) Unit!141773)

(assert (=> b!4813850 (= lt!1964852 (lemmaContainsKeyImpliesGetValueByKeyDefined!2320 (toList!7229 lm!1254) lt!1964845))))

(declare-datatypes ((Option!13366 0))(
  ( (None!13365) (Some!13365 (v!48998 List!54778)) )
))
(declare-fun isDefined!10503 (Option!13366) Bool)

(declare-fun getValueByKey!2533 (List!54779 (_ BitVec 64)) Option!13366)

(assert (=> b!4813850 (isDefined!10503 (getValueByKey!2533 (toList!7229 lm!1254) lt!1964845))))

(declare-fun lt!1964848 () Unit!141773)

(declare-fun lt!1964847 () List!54778)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1031 (List!54779 (_ BitVec 64) List!54778) Unit!141773)

(assert (=> b!4813850 (= lt!1964848 (lemmaGetValueByKeyImpliesContainsTuple!1031 (toList!7229 lm!1254) lt!1964845 lt!1964847))))

(assert (=> b!4813850 false))

(declare-fun b!4813851 () Bool)

(declare-fun Unit!141776 () Unit!141773)

(assert (=> b!4813851 (= e!3007558 Unit!141776)))

(declare-fun b!4813852 () Bool)

(declare-fun res!2047523 () Bool)

(assert (=> b!4813852 (=> (not res!2047523) (not e!3007559))))

(declare-datatypes ((Hashable!7123 0))(
  ( (HashableExt!7122 (__x!33398 Int)) )
))
(declare-fun hashF!938 () Hashable!7123)

(declare-fun allKeysSameHashInMap!2439 (ListLongMap!5709 Hashable!7123) Bool)

(assert (=> b!4813852 (= res!2047523 (allKeysSameHashInMap!2439 lm!1254 hashF!938))))

(declare-fun b!4813853 () Bool)

(declare-fun e!3007557 () Bool)

(declare-fun tp!1361668 () Bool)

(assert (=> b!4813853 (= e!3007557 tp!1361668)))

(declare-fun res!2047525 () Bool)

(assert (=> start!497786 (=> (not res!2047525) (not e!3007559))))

(declare-fun lambda!234034 () Int)

(declare-fun forall!12427 (List!54779 Int) Bool)

(assert (=> start!497786 (= res!2047525 (forall!12427 (toList!7229 lm!1254) lambda!234034))))

(assert (=> start!497786 e!3007559))

(declare-fun inv!70198 (ListLongMap!5709) Bool)

(assert (=> start!497786 (and (inv!70198 lm!1254) e!3007557)))

(assert (=> start!497786 true))

(declare-fun tp_is_empty!34115 () Bool)

(assert (=> start!497786 tp_is_empty!34115))

(declare-fun b!4813854 () Bool)

(assert (=> b!4813854 (= e!3007559 (not true))))

(declare-fun lt!1964851 () Unit!141773)

(declare-fun lt!1964849 () tuple2!57624)

(declare-fun forallContained!4297 (List!54779 Int tuple2!57624) Unit!141773)

(assert (=> b!4813854 (= lt!1964851 (forallContained!4297 (toList!7229 lm!1254) lambda!234034 lt!1964849))))

(declare-fun lt!1964846 () Unit!141773)

(assert (=> b!4813854 (= lt!1964846 (forallContained!4297 (toList!7229 lm!1254) lambda!234034 lt!1964849))))

(declare-fun lt!1964844 () Unit!141773)

(assert (=> b!4813854 (= lt!1964844 e!3007558)))

(declare-fun c!820439 () Bool)

(declare-fun contains!18424 (List!54779 tuple2!57624) Bool)

(assert (=> b!4813854 (= c!820439 (not (contains!18424 (toList!7229 lm!1254) lt!1964849)))))

(assert (=> b!4813854 (= lt!1964849 (tuple2!57625 lt!1964845 lt!1964847))))

(declare-fun apply!13228 (ListLongMap!5709 (_ BitVec 64)) List!54778)

(assert (=> b!4813854 (= lt!1964847 (apply!13228 lm!1254 lt!1964845))))

(declare-fun contains!18425 (ListLongMap!5709 (_ BitVec 64)) Bool)

(assert (=> b!4813854 (contains!18425 lm!1254 lt!1964845)))

(declare-fun hash!5186 (Hashable!7123 K!16297) (_ BitVec 64))

(assert (=> b!4813854 (= lt!1964845 (hash!5186 hashF!938 key!2670))))

(declare-fun lt!1964850 () Unit!141773)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1061 (ListLongMap!5709 K!16297 Hashable!7123) Unit!141773)

(assert (=> b!4813854 (= lt!1964850 (lemmaInGenMapThenLongMapContainsHash!1061 lm!1254 key!2670 hashF!938))))

(assert (= (and start!497786 res!2047525) b!4813852))

(assert (= (and b!4813852 res!2047523) b!4813849))

(assert (= (and b!4813849 res!2047524) b!4813854))

(assert (= (and b!4813854 c!820439) b!4813850))

(assert (= (and b!4813854 (not c!820439)) b!4813851))

(assert (= start!497786 b!4813853))

(declare-fun m!5799646 () Bool)

(assert (=> b!4813854 m!5799646))

(declare-fun m!5799648 () Bool)

(assert (=> b!4813854 m!5799648))

(declare-fun m!5799650 () Bool)

(assert (=> b!4813854 m!5799650))

(declare-fun m!5799652 () Bool)

(assert (=> b!4813854 m!5799652))

(declare-fun m!5799654 () Bool)

(assert (=> b!4813854 m!5799654))

(declare-fun m!5799656 () Bool)

(assert (=> b!4813854 m!5799656))

(assert (=> b!4813854 m!5799656))

(declare-fun m!5799658 () Bool)

(assert (=> b!4813849 m!5799658))

(assert (=> b!4813849 m!5799658))

(declare-fun m!5799660 () Bool)

(assert (=> b!4813849 m!5799660))

(declare-fun m!5799662 () Bool)

(assert (=> b!4813852 m!5799662))

(declare-fun m!5799664 () Bool)

(assert (=> b!4813850 m!5799664))

(declare-fun m!5799666 () Bool)

(assert (=> b!4813850 m!5799666))

(declare-fun m!5799668 () Bool)

(assert (=> b!4813850 m!5799668))

(declare-fun m!5799670 () Bool)

(assert (=> b!4813850 m!5799670))

(assert (=> b!4813850 m!5799668))

(declare-fun m!5799672 () Bool)

(assert (=> b!4813850 m!5799672))

(declare-fun m!5799674 () Bool)

(assert (=> b!4813850 m!5799674))

(declare-fun m!5799676 () Bool)

(assert (=> start!497786 m!5799676))

(declare-fun m!5799678 () Bool)

(assert (=> start!497786 m!5799678))

(push 1)

(assert (not b!4813853))

(assert tp_is_empty!34115)

(assert (not start!497786))

(assert (not b!4813854))

(assert (not b!4813850))

(assert (not b!4813849))

(assert (not b!4813852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

