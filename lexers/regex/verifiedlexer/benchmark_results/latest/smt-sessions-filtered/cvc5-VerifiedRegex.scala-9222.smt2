; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489504 () Bool)

(assert start!489504)

(declare-fun bs!1150555 () Bool)

(declare-fun b!4775629 () Bool)

(assert (= bs!1150555 (and b!4775629 start!489504)))

(declare-fun lambda!226615 () Int)

(declare-fun lambda!226614 () Int)

(assert (=> bs!1150555 (not (= lambda!226615 lambda!226614))))

(assert (=> b!4775629 true))

(declare-fun res!2026524 () Bool)

(declare-fun e!2981358 () Bool)

(assert (=> start!489504 (=> (not res!2026524) (not e!2981358))))

(declare-datatypes ((K!15397 0))(
  ( (K!15398 (val!20623 Int)) )
))
(declare-datatypes ((V!15643 0))(
  ( (V!15644 (val!20624 Int)) )
))
(declare-datatypes ((tuple2!56220 0))(
  ( (tuple2!56221 (_1!31404 K!15397) (_2!31404 V!15643)) )
))
(declare-datatypes ((List!53973 0))(
  ( (Nil!53849) (Cons!53849 (h!60263 tuple2!56220) (t!361423 List!53973)) )
))
(declare-datatypes ((tuple2!56222 0))(
  ( (tuple2!56223 (_1!31405 (_ BitVec 64)) (_2!31405 List!53973)) )
))
(declare-datatypes ((List!53974 0))(
  ( (Nil!53850) (Cons!53850 (h!60264 tuple2!56222) (t!361424 List!53974)) )
))
(declare-datatypes ((ListLongMap!5027 0))(
  ( (ListLongMap!5028 (toList!6609 List!53974)) )
))
(declare-fun lm!2709 () ListLongMap!5027)

(declare-fun forall!12031 (List!53974 Int) Bool)

(assert (=> start!489504 (= res!2026524 (forall!12031 (toList!6609 lm!2709) lambda!226614))))

(assert (=> start!489504 e!2981358))

(declare-fun e!2981357 () Bool)

(declare-fun inv!69424 (ListLongMap!5027) Bool)

(assert (=> start!489504 (and (inv!69424 lm!2709) e!2981357)))

(assert (=> start!489504 true))

(declare-fun tp_is_empty!32981 () Bool)

(assert (=> start!489504 tp_is_empty!32981))

(declare-fun tp_is_empty!32983 () Bool)

(assert (=> start!489504 tp_is_empty!32983))

(declare-fun e!2981359 () Bool)

(assert (=> b!4775629 (= e!2981359 true)))

(declare-fun lt!1938681 () Bool)

(declare-fun key!6641 () K!15397)

(declare-fun containsKey!3738 (List!53973 K!15397) Bool)

(assert (=> b!4775629 (= lt!1938681 (containsKey!3738 (_2!31405 (h!60264 (toList!6609 lm!2709))) key!6641))))

(declare-datatypes ((Unit!138844 0))(
  ( (Unit!138845) )
))
(declare-fun lt!1938682 () Unit!138844)

(declare-fun forallContained!3988 (List!53974 Int tuple2!56222) Unit!138844)

(assert (=> b!4775629 (= lt!1938682 (forallContained!3988 (toList!6609 lm!2709) lambda!226615 (h!60264 (toList!6609 lm!2709))))))

(declare-fun b!4775630 () Bool)

(assert (=> b!4775630 (= e!2981358 (not e!2981359))))

(declare-fun res!2026521 () Bool)

(assert (=> b!4775630 (=> res!2026521 e!2981359)))

(declare-datatypes ((Option!12852 0))(
  ( (None!12851) (Some!12851 (v!48012 tuple2!56220)) )
))
(declare-fun lt!1938684 () Option!12852)

(declare-fun v!11584 () V!15643)

(declare-fun get!18262 (Option!12852) tuple2!56220)

(assert (=> b!4775630 (= res!2026521 (not (= (_2!31404 (get!18262 lt!1938684)) v!11584)))))

(declare-fun isDefined!9996 (Option!12852) Bool)

(assert (=> b!4775630 (isDefined!9996 lt!1938684)))

(declare-fun lt!1938689 () List!53973)

(declare-fun getPair!751 (List!53973 K!15397) Option!12852)

(assert (=> b!4775630 (= lt!1938684 (getPair!751 lt!1938689 key!6641))))

(declare-fun lt!1938678 () tuple2!56222)

(declare-fun lt!1938685 () Unit!138844)

(assert (=> b!4775630 (= lt!1938685 (forallContained!3988 (toList!6609 lm!2709) lambda!226614 lt!1938678))))

(declare-fun lt!1938687 () Unit!138844)

(declare-datatypes ((Hashable!6763 0))(
  ( (HashableExt!6762 (__x!32786 Int)) )
))
(declare-fun hashF!1687 () Hashable!6763)

(declare-fun lemmaInGenMapThenGetPairDefined!525 (ListLongMap!5027 K!15397 Hashable!6763) Unit!138844)

(assert (=> b!4775630 (= lt!1938687 (lemmaInGenMapThenGetPairDefined!525 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1938686 () Unit!138844)

(assert (=> b!4775630 (= lt!1938686 (forallContained!3988 (toList!6609 lm!2709) lambda!226614 lt!1938678))))

(declare-fun contains!17325 (List!53974 tuple2!56222) Bool)

(assert (=> b!4775630 (contains!17325 (toList!6609 lm!2709) lt!1938678)))

(declare-fun lt!1938680 () (_ BitVec 64))

(assert (=> b!4775630 (= lt!1938678 (tuple2!56223 lt!1938680 lt!1938689))))

(declare-fun lt!1938688 () Unit!138844)

(declare-fun lemmaGetValueImpliesTupleContained!554 (ListLongMap!5027 (_ BitVec 64) List!53973) Unit!138844)

(assert (=> b!4775630 (= lt!1938688 (lemmaGetValueImpliesTupleContained!554 lm!2709 lt!1938680 lt!1938689))))

(declare-fun apply!12826 (ListLongMap!5027 (_ BitVec 64)) List!53973)

(assert (=> b!4775630 (= lt!1938689 (apply!12826 lm!2709 lt!1938680))))

(declare-fun contains!17326 (ListLongMap!5027 (_ BitVec 64)) Bool)

(assert (=> b!4775630 (contains!17326 lm!2709 lt!1938680)))

(declare-fun hash!4735 (Hashable!6763 K!15397) (_ BitVec 64))

(assert (=> b!4775630 (= lt!1938680 (hash!4735 hashF!1687 key!6641))))

(declare-fun lt!1938683 () Unit!138844)

(declare-fun lemmaInGenMapThenLongMapContainsHash!967 (ListLongMap!5027 K!15397 Hashable!6763) Unit!138844)

(assert (=> b!4775630 (= lt!1938683 (lemmaInGenMapThenLongMapContainsHash!967 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6085 0))(
  ( (ListMap!6086 (toList!6610 List!53973)) )
))
(declare-fun contains!17327 (ListMap!6085 K!15397) Bool)

(declare-fun extractMap!2294 (List!53974) ListMap!6085)

(assert (=> b!4775630 (contains!17327 (extractMap!2294 (toList!6609 lm!2709)) key!6641)))

(declare-fun lt!1938679 () Unit!138844)

(declare-fun lemmaListContainsThenExtractedMapContains!615 (ListLongMap!5027 K!15397 Hashable!6763) Unit!138844)

(assert (=> b!4775630 (= lt!1938679 (lemmaListContainsThenExtractedMapContains!615 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4775631 () Bool)

(declare-fun res!2026525 () Bool)

(assert (=> b!4775631 (=> (not res!2026525) (not e!2981358))))

(declare-fun allKeysSameHashInMap!2168 (ListLongMap!5027 Hashable!6763) Bool)

(assert (=> b!4775631 (= res!2026525 (allKeysSameHashInMap!2168 lm!2709 hashF!1687))))

(declare-fun b!4775632 () Bool)

(declare-fun tp!1357083 () Bool)

(assert (=> b!4775632 (= e!2981357 tp!1357083)))

(declare-fun b!4775633 () Bool)

(declare-fun res!2026522 () Bool)

(assert (=> b!4775633 (=> (not res!2026522) (not e!2981358))))

(declare-fun containsKeyBiggerList!419 (List!53974 K!15397) Bool)

(assert (=> b!4775633 (= res!2026522 (containsKeyBiggerList!419 (toList!6609 lm!2709) key!6641))))

(declare-fun b!4775634 () Bool)

(declare-fun res!2026523 () Bool)

(assert (=> b!4775634 (=> res!2026523 e!2981359)))

(assert (=> b!4775634 (= res!2026523 (or (not (is-Cons!53850 (toList!6609 lm!2709))) (not (= (_1!31405 (h!60264 (toList!6609 lm!2709))) lt!1938680))))))

(assert (= (and start!489504 res!2026524) b!4775631))

(assert (= (and b!4775631 res!2026525) b!4775633))

(assert (= (and b!4775633 res!2026522) b!4775630))

(assert (= (and b!4775630 (not res!2026521)) b!4775634))

(assert (= (and b!4775634 (not res!2026523)) b!4775629))

(assert (= start!489504 b!4775632))

(declare-fun m!5750160 () Bool)

(assert (=> b!4775629 m!5750160))

(declare-fun m!5750162 () Bool)

(assert (=> b!4775629 m!5750162))

(declare-fun m!5750164 () Bool)

(assert (=> b!4775630 m!5750164))

(declare-fun m!5750166 () Bool)

(assert (=> b!4775630 m!5750166))

(declare-fun m!5750168 () Bool)

(assert (=> b!4775630 m!5750168))

(declare-fun m!5750170 () Bool)

(assert (=> b!4775630 m!5750170))

(declare-fun m!5750172 () Bool)

(assert (=> b!4775630 m!5750172))

(declare-fun m!5750174 () Bool)

(assert (=> b!4775630 m!5750174))

(declare-fun m!5750176 () Bool)

(assert (=> b!4775630 m!5750176))

(declare-fun m!5750178 () Bool)

(assert (=> b!4775630 m!5750178))

(assert (=> b!4775630 m!5750172))

(declare-fun m!5750180 () Bool)

(assert (=> b!4775630 m!5750180))

(assert (=> b!4775630 m!5750170))

(declare-fun m!5750182 () Bool)

(assert (=> b!4775630 m!5750182))

(declare-fun m!5750184 () Bool)

(assert (=> b!4775630 m!5750184))

(declare-fun m!5750186 () Bool)

(assert (=> b!4775630 m!5750186))

(declare-fun m!5750188 () Bool)

(assert (=> b!4775630 m!5750188))

(declare-fun m!5750190 () Bool)

(assert (=> b!4775630 m!5750190))

(declare-fun m!5750192 () Bool)

(assert (=> b!4775631 m!5750192))

(declare-fun m!5750194 () Bool)

(assert (=> b!4775633 m!5750194))

(declare-fun m!5750196 () Bool)

(assert (=> start!489504 m!5750196))

(declare-fun m!5750198 () Bool)

(assert (=> start!489504 m!5750198))

(push 1)

(assert (not b!4775633))

(assert (not b!4775632))

(assert (not b!4775630))

(assert (not b!4775629))

(assert tp_is_empty!32983)

(assert (not b!4775631))

(assert (not start!489504))

(assert tp_is_empty!32981)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

