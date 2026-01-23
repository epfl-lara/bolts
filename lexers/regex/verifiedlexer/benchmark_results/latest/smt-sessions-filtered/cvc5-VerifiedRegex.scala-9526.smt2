; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502762 () Bool)

(assert start!502762)

(declare-fun b!4835637 () Bool)

(declare-fun e!3022028 () Bool)

(assert (=> b!4835637 (= e!3022028 true)))

(declare-fun b!4835638 () Bool)

(declare-fun e!3022030 () Bool)

(declare-fun tp!1363371 () Bool)

(assert (=> b!4835638 (= e!3022030 tp!1363371)))

(declare-fun b!4835639 () Bool)

(declare-fun e!3022027 () Bool)

(declare-fun e!3022029 () Bool)

(assert (=> b!4835639 (= e!3022027 e!3022029)))

(declare-fun res!2060280 () Bool)

(assert (=> b!4835639 (=> (not res!2060280) (not e!3022029))))

(declare-datatypes ((K!16917 0))(
  ( (K!16918 (val!21839 Int)) )
))
(declare-datatypes ((V!17163 0))(
  ( (V!17164 (val!21840 Int)) )
))
(declare-datatypes ((tuple2!58550 0))(
  ( (tuple2!58551 (_1!32569 K!16917) (_2!32569 V!17163)) )
))
(declare-datatypes ((List!55308 0))(
  ( (Nil!55184) (Cons!55184 (h!61619 tuple2!58550) (t!362804 List!55308)) )
))
(declare-datatypes ((tuple2!58552 0))(
  ( (tuple2!58553 (_1!32570 (_ BitVec 64)) (_2!32570 List!55308)) )
))
(declare-datatypes ((List!55309 0))(
  ( (Nil!55185) (Cons!55185 (h!61620 tuple2!58552) (t!362805 List!55309)) )
))
(declare-datatypes ((ListLongMap!6141 0))(
  ( (ListLongMap!6142 (toList!7625 List!55309)) )
))
(declare-fun lm!1282 () ListLongMap!6141)

(declare-fun lt!1981441 () (_ BitVec 64))

(declare-fun contains!19006 (ListLongMap!6141 (_ BitVec 64)) Bool)

(assert (=> b!4835639 (= res!2060280 (contains!19006 lm!1282 lt!1981441))))

(declare-datatypes ((Hashable!7339 0))(
  ( (HashableExt!7338 (__x!33614 Int)) )
))
(declare-fun hashF!961 () Hashable!7339)

(declare-fun key!2791 () K!16917)

(declare-fun hash!5527 (Hashable!7339 K!16917) (_ BitVec 64))

(assert (=> b!4835639 (= lt!1981441 (hash!5527 hashF!961 key!2791))))

(declare-fun res!2060279 () Bool)

(assert (=> start!502762 (=> (not res!2060279) (not e!3022027))))

(declare-fun lambda!239336 () Int)

(declare-fun forall!12739 (List!55309 Int) Bool)

(assert (=> start!502762 (= res!2060279 (forall!12739 (toList!7625 lm!1282) lambda!239336))))

(assert (=> start!502762 e!3022027))

(declare-fun inv!70818 (ListLongMap!6141) Bool)

(assert (=> start!502762 (and (inv!70818 lm!1282) e!3022030)))

(assert (=> start!502762 true))

(declare-fun tp_is_empty!34777 () Bool)

(assert (=> start!502762 tp_is_empty!34777))

(declare-fun b!4835640 () Bool)

(assert (=> b!4835640 (= e!3022029 (not e!3022028))))

(declare-fun res!2060282 () Bool)

(assert (=> b!4835640 (=> res!2060282 e!3022028)))

(declare-fun lt!1981444 () List!55308)

(declare-datatypes ((Option!13573 0))(
  ( (None!13572) (Some!13572 (v!49275 tuple2!58550)) )
))
(declare-fun isDefined!10683 (Option!13573) Bool)

(declare-fun getPair!1035 (List!55308 K!16917) Option!13573)

(assert (=> b!4835640 (= res!2060282 (not (isDefined!10683 (getPair!1035 lt!1981444 key!2791))))))

(declare-fun lt!1981440 () tuple2!58552)

(declare-datatypes ((Unit!144568 0))(
  ( (Unit!144569) )
))
(declare-fun lt!1981442 () Unit!144568)

(declare-fun forallContained!4458 (List!55309 Int tuple2!58552) Unit!144568)

(assert (=> b!4835640 (= lt!1981442 (forallContained!4458 (toList!7625 lm!1282) lambda!239336 lt!1981440))))

(declare-fun contains!19007 (List!55309 tuple2!58552) Bool)

(assert (=> b!4835640 (contains!19007 (toList!7625 lm!1282) lt!1981440)))

(assert (=> b!4835640 (= lt!1981440 (tuple2!58553 lt!1981441 lt!1981444))))

(declare-fun lt!1981443 () Unit!144568)

(declare-fun lemmaGetValueImpliesTupleContained!714 (ListLongMap!6141 (_ BitVec 64) List!55308) Unit!144568)

(assert (=> b!4835640 (= lt!1981443 (lemmaGetValueImpliesTupleContained!714 lm!1282 lt!1981441 lt!1981444))))

(declare-fun apply!13402 (ListLongMap!6141 (_ BitVec 64)) List!55308)

(assert (=> b!4835640 (= lt!1981444 (apply!13402 lm!1282 lt!1981441))))

(declare-fun b!4835641 () Bool)

(declare-fun res!2060281 () Bool)

(assert (=> b!4835641 (=> (not res!2060281) (not e!3022027))))

(declare-fun allKeysSameHashInMap!2655 (ListLongMap!6141 Hashable!7339) Bool)

(assert (=> b!4835641 (= res!2060281 (allKeysSameHashInMap!2655 lm!1282 hashF!961))))

(assert (= (and start!502762 res!2060279) b!4835641))

(assert (= (and b!4835641 res!2060281) b!4835639))

(assert (= (and b!4835639 res!2060280) b!4835640))

(assert (= (and b!4835640 (not res!2060282)) b!4835637))

(assert (= start!502762 b!4835638))

(declare-fun m!5830854 () Bool)

(assert (=> b!4835639 m!5830854))

(declare-fun m!5830856 () Bool)

(assert (=> b!4835639 m!5830856))

(declare-fun m!5830858 () Bool)

(assert (=> start!502762 m!5830858))

(declare-fun m!5830860 () Bool)

(assert (=> start!502762 m!5830860))

(declare-fun m!5830862 () Bool)

(assert (=> b!4835640 m!5830862))

(declare-fun m!5830864 () Bool)

(assert (=> b!4835640 m!5830864))

(declare-fun m!5830866 () Bool)

(assert (=> b!4835640 m!5830866))

(declare-fun m!5830868 () Bool)

(assert (=> b!4835640 m!5830868))

(declare-fun m!5830870 () Bool)

(assert (=> b!4835640 m!5830870))

(declare-fun m!5830872 () Bool)

(assert (=> b!4835640 m!5830872))

(assert (=> b!4835640 m!5830868))

(declare-fun m!5830874 () Bool)

(assert (=> b!4835641 m!5830874))

(push 1)

(assert (not start!502762))

(assert (not b!4835641))

(assert tp_is_empty!34777)

(assert (not b!4835639))

(assert (not b!4835640))

(assert (not b!4835638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

