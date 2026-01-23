; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502758 () Bool)

(assert start!502758)

(declare-fun b!4835607 () Bool)

(declare-fun e!3022004 () Bool)

(declare-fun e!3022003 () Bool)

(assert (=> b!4835607 (= e!3022004 e!3022003)))

(declare-fun res!2060257 () Bool)

(assert (=> b!4835607 (=> (not res!2060257) (not e!3022003))))

(declare-datatypes ((K!16912 0))(
  ( (K!16913 (val!21835 Int)) )
))
(declare-datatypes ((V!17158 0))(
  ( (V!17159 (val!21836 Int)) )
))
(declare-datatypes ((tuple2!58542 0))(
  ( (tuple2!58543 (_1!32565 K!16912) (_2!32565 V!17158)) )
))
(declare-datatypes ((List!55304 0))(
  ( (Nil!55180) (Cons!55180 (h!61615 tuple2!58542) (t!362800 List!55304)) )
))
(declare-datatypes ((tuple2!58544 0))(
  ( (tuple2!58545 (_1!32566 (_ BitVec 64)) (_2!32566 List!55304)) )
))
(declare-datatypes ((List!55305 0))(
  ( (Nil!55181) (Cons!55181 (h!61616 tuple2!58544) (t!362801 List!55305)) )
))
(declare-datatypes ((ListLongMap!6137 0))(
  ( (ListLongMap!6138 (toList!7623 List!55305)) )
))
(declare-fun lm!1282 () ListLongMap!6137)

(declare-fun lt!1981410 () (_ BitVec 64))

(declare-fun contains!19002 (ListLongMap!6137 (_ BitVec 64)) Bool)

(assert (=> b!4835607 (= res!2060257 (contains!19002 lm!1282 lt!1981410))))

(declare-datatypes ((Hashable!7337 0))(
  ( (HashableExt!7336 (__x!33612 Int)) )
))
(declare-fun hashF!961 () Hashable!7337)

(declare-fun key!2791 () K!16912)

(declare-fun hash!5525 (Hashable!7337 K!16912) (_ BitVec 64))

(assert (=> b!4835607 (= lt!1981410 (hash!5525 hashF!961 key!2791))))

(declare-fun res!2060258 () Bool)

(assert (=> start!502758 (=> (not res!2060258) (not e!3022004))))

(declare-fun lambda!239324 () Int)

(declare-fun forall!12737 (List!55305 Int) Bool)

(assert (=> start!502758 (= res!2060258 (forall!12737 (toList!7623 lm!1282) lambda!239324))))

(assert (=> start!502758 e!3022004))

(declare-fun e!3022005 () Bool)

(declare-fun inv!70813 (ListLongMap!6137) Bool)

(assert (=> start!502758 (and (inv!70813 lm!1282) e!3022005)))

(assert (=> start!502758 true))

(declare-fun tp_is_empty!34773 () Bool)

(assert (=> start!502758 tp_is_empty!34773))

(declare-fun b!4835608 () Bool)

(declare-fun e!3022006 () Bool)

(assert (=> b!4835608 (= e!3022003 (not e!3022006))))

(declare-fun res!2060255 () Bool)

(assert (=> b!4835608 (=> res!2060255 e!3022006)))

(declare-fun lt!1981413 () List!55304)

(declare-datatypes ((Option!13571 0))(
  ( (None!13570) (Some!13570 (v!49273 tuple2!58542)) )
))
(declare-fun isDefined!10681 (Option!13571) Bool)

(declare-fun getPair!1033 (List!55304 K!16912) Option!13571)

(assert (=> b!4835608 (= res!2060255 (not (isDefined!10681 (getPair!1033 lt!1981413 key!2791))))))

(declare-fun lt!1981412 () tuple2!58544)

(declare-datatypes ((Unit!144564 0))(
  ( (Unit!144565) )
))
(declare-fun lt!1981414 () Unit!144564)

(declare-fun forallContained!4456 (List!55305 Int tuple2!58544) Unit!144564)

(assert (=> b!4835608 (= lt!1981414 (forallContained!4456 (toList!7623 lm!1282) lambda!239324 lt!1981412))))

(declare-fun contains!19003 (List!55305 tuple2!58544) Bool)

(assert (=> b!4835608 (contains!19003 (toList!7623 lm!1282) lt!1981412)))

(assert (=> b!4835608 (= lt!1981412 (tuple2!58545 lt!1981410 lt!1981413))))

(declare-fun lt!1981411 () Unit!144564)

(declare-fun lemmaGetValueImpliesTupleContained!712 (ListLongMap!6137 (_ BitVec 64) List!55304) Unit!144564)

(assert (=> b!4835608 (= lt!1981411 (lemmaGetValueImpliesTupleContained!712 lm!1282 lt!1981410 lt!1981413))))

(declare-fun apply!13400 (ListLongMap!6137 (_ BitVec 64)) List!55304)

(assert (=> b!4835608 (= lt!1981413 (apply!13400 lm!1282 lt!1981410))))

(declare-fun b!4835609 () Bool)

(declare-fun res!2060256 () Bool)

(assert (=> b!4835609 (=> (not res!2060256) (not e!3022004))))

(declare-fun allKeysSameHashInMap!2653 (ListLongMap!6137 Hashable!7337) Bool)

(assert (=> b!4835609 (= res!2060256 (allKeysSameHashInMap!2653 lm!1282 hashF!961))))

(declare-fun b!4835610 () Bool)

(assert (=> b!4835610 (= e!3022006 (forall!12737 (toList!7623 lm!1282) lambda!239324))))

(declare-fun b!4835611 () Bool)

(declare-fun tp!1363365 () Bool)

(assert (=> b!4835611 (= e!3022005 tp!1363365)))

(assert (= (and start!502758 res!2060258) b!4835609))

(assert (= (and b!4835609 res!2060256) b!4835607))

(assert (= (and b!4835607 res!2060257) b!4835608))

(assert (= (and b!4835608 (not res!2060255)) b!4835610))

(assert (= start!502758 b!4835611))

(declare-fun m!5830810 () Bool)

(assert (=> start!502758 m!5830810))

(declare-fun m!5830812 () Bool)

(assert (=> start!502758 m!5830812))

(declare-fun m!5830814 () Bool)

(assert (=> b!4835607 m!5830814))

(declare-fun m!5830816 () Bool)

(assert (=> b!4835607 m!5830816))

(declare-fun m!5830818 () Bool)

(assert (=> b!4835608 m!5830818))

(declare-fun m!5830820 () Bool)

(assert (=> b!4835608 m!5830820))

(declare-fun m!5830822 () Bool)

(assert (=> b!4835608 m!5830822))

(declare-fun m!5830824 () Bool)

(assert (=> b!4835608 m!5830824))

(declare-fun m!5830826 () Bool)

(assert (=> b!4835608 m!5830826))

(declare-fun m!5830828 () Bool)

(assert (=> b!4835608 m!5830828))

(assert (=> b!4835608 m!5830824))

(declare-fun m!5830830 () Bool)

(assert (=> b!4835609 m!5830830))

(assert (=> b!4835610 m!5830810))

(push 1)

(assert (not b!4835611))

(assert (not b!4835608))

(assert (not b!4835607))

(assert (not b!4835610))

(assert tp_is_empty!34773)

(assert (not b!4835609))

(assert (not start!502758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

