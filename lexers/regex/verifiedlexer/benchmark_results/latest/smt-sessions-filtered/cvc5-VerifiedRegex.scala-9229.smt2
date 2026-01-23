; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489744 () Bool)

(assert start!489744)

(declare-fun b!4776635 () Bool)

(declare-fun res!2027208 () Bool)

(declare-fun e!2981974 () Bool)

(assert (=> b!4776635 (=> (not res!2027208) (not e!2981974))))

(declare-datatypes ((K!15432 0))(
  ( (K!15433 (val!20651 Int)) )
))
(declare-datatypes ((V!15678 0))(
  ( (V!15679 (val!20652 Int)) )
))
(declare-datatypes ((tuple2!56276 0))(
  ( (tuple2!56277 (_1!31432 K!15432) (_2!31432 V!15678)) )
))
(declare-datatypes ((List!54003 0))(
  ( (Nil!53879) (Cons!53879 (h!60293 tuple2!56276) (t!361453 List!54003)) )
))
(declare-datatypes ((tuple2!56278 0))(
  ( (tuple2!56279 (_1!31433 (_ BitVec 64)) (_2!31433 List!54003)) )
))
(declare-datatypes ((List!54004 0))(
  ( (Nil!53880) (Cons!53880 (h!60294 tuple2!56278) (t!361454 List!54004)) )
))
(declare-datatypes ((ListLongMap!5055 0))(
  ( (ListLongMap!5056 (toList!6637 List!54004)) )
))
(declare-fun lm!2709 () ListLongMap!5055)

(declare-fun key!6641 () K!15432)

(declare-fun containsKeyBiggerList!433 (List!54004 K!15432) Bool)

(assert (=> b!4776635 (= res!2027208 (containsKeyBiggerList!433 (toList!6637 lm!2709) key!6641))))

(declare-fun b!4776636 () Bool)

(declare-fun e!2981973 () Bool)

(declare-fun e!2981976 () Bool)

(assert (=> b!4776636 (= e!2981973 e!2981976)))

(declare-fun res!2027199 () Bool)

(assert (=> b!4776636 (=> res!2027199 e!2981976)))

(declare-fun containsKey!3752 (List!54003 K!15432) Bool)

(assert (=> b!4776636 (= res!2027199 (containsKey!3752 (_2!31433 (h!60294 (toList!6637 lm!2709))) key!6641))))

(declare-fun apply!12840 (ListLongMap!5055 (_ BitVec 64)) List!54003)

(assert (=> b!4776636 (not (containsKey!3752 (apply!12840 lm!2709 (_1!31433 (h!60294 (toList!6637 lm!2709)))) key!6641))))

(declare-datatypes ((Unit!138912 0))(
  ( (Unit!138913) )
))
(declare-fun lt!1939632 () Unit!138912)

(declare-datatypes ((Hashable!6777 0))(
  ( (HashableExt!6776 (__x!32800 Int)) )
))
(declare-fun hashF!1687 () Hashable!6777)

(declare-fun lemmaNotSameHashThenCannotContainKey!169 (ListLongMap!5055 K!15432 (_ BitVec 64) Hashable!6777) Unit!138912)

(assert (=> b!4776636 (= lt!1939632 (lemmaNotSameHashThenCannotContainKey!169 lm!2709 key!6641 (_1!31433 (h!60294 (toList!6637 lm!2709))) hashF!1687))))

(declare-fun b!4776637 () Bool)

(declare-fun res!2027202 () Bool)

(assert (=> b!4776637 (=> (not res!2027202) (not e!2981974))))

(declare-fun allKeysSameHashInMap!2182 (ListLongMap!5055 Hashable!6777) Bool)

(assert (=> b!4776637 (= res!2027202 (allKeysSameHashInMap!2182 lm!2709 hashF!1687))))

(declare-fun b!4776638 () Bool)

(declare-fun res!2027206 () Bool)

(assert (=> b!4776638 (=> res!2027206 e!2981973)))

(declare-fun lt!1939638 () (_ BitVec 64))

(assert (=> b!4776638 (= res!2027206 (or (and (is-Cons!53880 (toList!6637 lm!2709)) (= (_1!31433 (h!60294 (toList!6637 lm!2709))) lt!1939638)) (not (is-Cons!53880 (toList!6637 lm!2709)))))))

(declare-fun res!2027207 () Bool)

(assert (=> start!489744 (=> (not res!2027207) (not e!2981974))))

(declare-fun lambda!226916 () Int)

(declare-fun forall!12049 (List!54004 Int) Bool)

(assert (=> start!489744 (= res!2027207 (forall!12049 (toList!6637 lm!2709) lambda!226916))))

(assert (=> start!489744 e!2981974))

(declare-fun e!2981977 () Bool)

(declare-fun inv!69459 (ListLongMap!5055) Bool)

(assert (=> start!489744 (and (inv!69459 lm!2709) e!2981977)))

(assert (=> start!489744 true))

(declare-fun tp_is_empty!33037 () Bool)

(assert (=> start!489744 tp_is_empty!33037))

(declare-fun tp_is_empty!33039 () Bool)

(assert (=> start!489744 tp_is_empty!33039))

(declare-fun b!4776639 () Bool)

(declare-fun e!2981975 () Bool)

(assert (=> b!4776639 (= e!2981976 e!2981975)))

(declare-fun res!2027201 () Bool)

(assert (=> b!4776639 (=> res!2027201 e!2981975)))

(declare-fun lt!1939624 () ListLongMap!5055)

(assert (=> b!4776639 (= res!2027201 (not (forall!12049 (toList!6637 lt!1939624) lambda!226916)))))

(declare-fun tail!9166 (ListLongMap!5055) ListLongMap!5055)

(assert (=> b!4776639 (= lt!1939624 (tail!9166 lm!2709))))

(declare-fun tail!9167 (List!54004) List!54004)

(assert (=> b!4776639 (containsKeyBiggerList!433 (tail!9167 (toList!6637 lm!2709)) key!6641)))

(declare-fun lt!1939633 () Unit!138912)

(declare-fun lemmaInBiggerListButNotHeadThenTail!3 (ListLongMap!5055 K!15432 Hashable!6777) Unit!138912)

(assert (=> b!4776639 (= lt!1939633 (lemmaInBiggerListButNotHeadThenTail!3 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4776640 () Bool)

(declare-fun res!2027204 () Bool)

(assert (=> b!4776640 (=> res!2027204 e!2981975)))

(assert (=> b!4776640 (= res!2027204 (not (containsKeyBiggerList!433 (toList!6637 lt!1939624) key!6641)))))

(declare-fun b!4776641 () Bool)

(declare-fun e!2981978 () Bool)

(assert (=> b!4776641 (= e!2981975 e!2981978)))

(declare-fun res!2027203 () Bool)

(assert (=> b!4776641 (=> res!2027203 e!2981978)))

(declare-datatypes ((Option!12870 0))(
  ( (None!12869) (Some!12869 (v!48038 tuple2!56276)) )
))
(declare-fun lt!1939640 () Option!12870)

(declare-fun v!11584 () V!15678)

(declare-fun get!18285 (Option!12870) tuple2!56276)

(assert (=> b!4776641 (= res!2027203 (not (= (_2!31432 (get!18285 lt!1939640)) v!11584)))))

(declare-fun isDefined!10014 (Option!12870) Bool)

(assert (=> b!4776641 (isDefined!10014 lt!1939640)))

(declare-fun lt!1939626 () List!54003)

(declare-fun getPair!765 (List!54003 K!15432) Option!12870)

(assert (=> b!4776641 (= lt!1939640 (getPair!765 lt!1939626 key!6641))))

(declare-fun lt!1939630 () Unit!138912)

(declare-fun lt!1939620 () tuple2!56278)

(declare-fun forallContained!4006 (List!54004 Int tuple2!56278) Unit!138912)

(assert (=> b!4776641 (= lt!1939630 (forallContained!4006 (toList!6637 lt!1939624) lambda!226916 lt!1939620))))

(declare-fun lt!1939639 () Unit!138912)

(declare-fun lemmaInGenMapThenGetPairDefined!539 (ListLongMap!5055 K!15432 Hashable!6777) Unit!138912)

(assert (=> b!4776641 (= lt!1939639 (lemmaInGenMapThenGetPairDefined!539 lt!1939624 key!6641 hashF!1687))))

(declare-fun lt!1939631 () Unit!138912)

(assert (=> b!4776641 (= lt!1939631 (forallContained!4006 (toList!6637 lt!1939624) lambda!226916 lt!1939620))))

(declare-fun contains!17371 (List!54004 tuple2!56278) Bool)

(assert (=> b!4776641 (contains!17371 (toList!6637 lt!1939624) lt!1939620)))

(assert (=> b!4776641 (= lt!1939620 (tuple2!56279 lt!1939638 lt!1939626))))

(declare-fun lt!1939621 () Unit!138912)

(declare-fun lemmaGetValueImpliesTupleContained!568 (ListLongMap!5055 (_ BitVec 64) List!54003) Unit!138912)

(assert (=> b!4776641 (= lt!1939621 (lemmaGetValueImpliesTupleContained!568 lt!1939624 lt!1939638 lt!1939626))))

(assert (=> b!4776641 (= lt!1939626 (apply!12840 lt!1939624 lt!1939638))))

(declare-fun contains!17372 (ListLongMap!5055 (_ BitVec 64)) Bool)

(assert (=> b!4776641 (contains!17372 lt!1939624 lt!1939638)))

(declare-fun lt!1939641 () Unit!138912)

(declare-fun lemmaInGenMapThenLongMapContainsHash!981 (ListLongMap!5055 K!15432 Hashable!6777) Unit!138912)

(assert (=> b!4776641 (= lt!1939641 (lemmaInGenMapThenLongMapContainsHash!981 lt!1939624 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6113 0))(
  ( (ListMap!6114 (toList!6638 List!54003)) )
))
(declare-fun contains!17373 (ListMap!6113 K!15432) Bool)

(declare-fun extractMap!2308 (List!54004) ListMap!6113)

(assert (=> b!4776641 (contains!17373 (extractMap!2308 (toList!6637 lt!1939624)) key!6641)))

(declare-fun lt!1939635 () Unit!138912)

(declare-fun lemmaListContainsThenExtractedMapContains!629 (ListLongMap!5055 K!15432 Hashable!6777) Unit!138912)

(assert (=> b!4776641 (= lt!1939635 (lemmaListContainsThenExtractedMapContains!629 lt!1939624 key!6641 hashF!1687))))

(declare-fun b!4776642 () Bool)

(assert (=> b!4776642 (= e!2981974 (not e!2981973))))

(declare-fun res!2027205 () Bool)

(assert (=> b!4776642 (=> res!2027205 e!2981973)))

(declare-fun lt!1939623 () Option!12870)

(assert (=> b!4776642 (= res!2027205 (not (= (_2!31432 (get!18285 lt!1939623)) v!11584)))))

(assert (=> b!4776642 (isDefined!10014 lt!1939623)))

(declare-fun lt!1939634 () List!54003)

(assert (=> b!4776642 (= lt!1939623 (getPair!765 lt!1939634 key!6641))))

(declare-fun lt!1939625 () Unit!138912)

(declare-fun lt!1939636 () tuple2!56278)

(assert (=> b!4776642 (= lt!1939625 (forallContained!4006 (toList!6637 lm!2709) lambda!226916 lt!1939636))))

(declare-fun lt!1939629 () Unit!138912)

(assert (=> b!4776642 (= lt!1939629 (lemmaInGenMapThenGetPairDefined!539 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1939622 () Unit!138912)

(assert (=> b!4776642 (= lt!1939622 (forallContained!4006 (toList!6637 lm!2709) lambda!226916 lt!1939636))))

(assert (=> b!4776642 (contains!17371 (toList!6637 lm!2709) lt!1939636)))

(assert (=> b!4776642 (= lt!1939636 (tuple2!56279 lt!1939638 lt!1939634))))

(declare-fun lt!1939637 () Unit!138912)

(assert (=> b!4776642 (= lt!1939637 (lemmaGetValueImpliesTupleContained!568 lm!2709 lt!1939638 lt!1939634))))

(assert (=> b!4776642 (= lt!1939634 (apply!12840 lm!2709 lt!1939638))))

(assert (=> b!4776642 (contains!17372 lm!2709 lt!1939638)))

(declare-fun hash!4755 (Hashable!6777 K!15432) (_ BitVec 64))

(assert (=> b!4776642 (= lt!1939638 (hash!4755 hashF!1687 key!6641))))

(declare-fun lt!1939628 () Unit!138912)

(assert (=> b!4776642 (= lt!1939628 (lemmaInGenMapThenLongMapContainsHash!981 lm!2709 key!6641 hashF!1687))))

(assert (=> b!4776642 (contains!17373 (extractMap!2308 (toList!6637 lm!2709)) key!6641)))

(declare-fun lt!1939627 () Unit!138912)

(assert (=> b!4776642 (= lt!1939627 (lemmaListContainsThenExtractedMapContains!629 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4776643 () Bool)

(assert (=> b!4776643 (= e!2981978 (forall!12049 (toList!6637 lt!1939624) lambda!226916))))

(declare-fun b!4776644 () Bool)

(declare-fun tp!1357147 () Bool)

(assert (=> b!4776644 (= e!2981977 tp!1357147)))

(declare-fun b!4776645 () Bool)

(declare-fun res!2027200 () Bool)

(assert (=> b!4776645 (=> res!2027200 e!2981975)))

(assert (=> b!4776645 (= res!2027200 (not (allKeysSameHashInMap!2182 lt!1939624 hashF!1687)))))

(assert (= (and start!489744 res!2027207) b!4776637))

(assert (= (and b!4776637 res!2027202) b!4776635))

(assert (= (and b!4776635 res!2027208) b!4776642))

(assert (= (and b!4776642 (not res!2027205)) b!4776638))

(assert (= (and b!4776638 (not res!2027206)) b!4776636))

(assert (= (and b!4776636 (not res!2027199)) b!4776639))

(assert (= (and b!4776639 (not res!2027201)) b!4776645))

(assert (= (and b!4776645 (not res!2027200)) b!4776640))

(assert (= (and b!4776640 (not res!2027204)) b!4776641))

(assert (= (and b!4776641 (not res!2027203)) b!4776643))

(assert (= start!489744 b!4776644))

(declare-fun m!5751576 () Bool)

(assert (=> b!4776645 m!5751576))

(declare-fun m!5751578 () Bool)

(assert (=> start!489744 m!5751578))

(declare-fun m!5751580 () Bool)

(assert (=> start!489744 m!5751580))

(declare-fun m!5751582 () Bool)

(assert (=> b!4776641 m!5751582))

(declare-fun m!5751584 () Bool)

(assert (=> b!4776641 m!5751584))

(declare-fun m!5751586 () Bool)

(assert (=> b!4776641 m!5751586))

(declare-fun m!5751588 () Bool)

(assert (=> b!4776641 m!5751588))

(declare-fun m!5751590 () Bool)

(assert (=> b!4776641 m!5751590))

(declare-fun m!5751592 () Bool)

(assert (=> b!4776641 m!5751592))

(declare-fun m!5751594 () Bool)

(assert (=> b!4776641 m!5751594))

(declare-fun m!5751596 () Bool)

(assert (=> b!4776641 m!5751596))

(declare-fun m!5751598 () Bool)

(assert (=> b!4776641 m!5751598))

(declare-fun m!5751600 () Bool)

(assert (=> b!4776641 m!5751600))

(assert (=> b!4776641 m!5751586))

(declare-fun m!5751602 () Bool)

(assert (=> b!4776641 m!5751602))

(declare-fun m!5751604 () Bool)

(assert (=> b!4776641 m!5751604))

(assert (=> b!4776641 m!5751582))

(declare-fun m!5751606 () Bool)

(assert (=> b!4776641 m!5751606))

(declare-fun m!5751608 () Bool)

(assert (=> b!4776642 m!5751608))

(declare-fun m!5751610 () Bool)

(assert (=> b!4776642 m!5751610))

(declare-fun m!5751612 () Bool)

(assert (=> b!4776642 m!5751612))

(declare-fun m!5751614 () Bool)

(assert (=> b!4776642 m!5751614))

(declare-fun m!5751616 () Bool)

(assert (=> b!4776642 m!5751616))

(declare-fun m!5751618 () Bool)

(assert (=> b!4776642 m!5751618))

(declare-fun m!5751620 () Bool)

(assert (=> b!4776642 m!5751620))

(declare-fun m!5751622 () Bool)

(assert (=> b!4776642 m!5751622))

(assert (=> b!4776642 m!5751616))

(declare-fun m!5751624 () Bool)

(assert (=> b!4776642 m!5751624))

(assert (=> b!4776642 m!5751620))

(declare-fun m!5751626 () Bool)

(assert (=> b!4776642 m!5751626))

(declare-fun m!5751628 () Bool)

(assert (=> b!4776642 m!5751628))

(declare-fun m!5751630 () Bool)

(assert (=> b!4776642 m!5751630))

(declare-fun m!5751632 () Bool)

(assert (=> b!4776642 m!5751632))

(declare-fun m!5751634 () Bool)

(assert (=> b!4776642 m!5751634))

(declare-fun m!5751636 () Bool)

(assert (=> b!4776637 m!5751636))

(declare-fun m!5751638 () Bool)

(assert (=> b!4776640 m!5751638))

(declare-fun m!5751640 () Bool)

(assert (=> b!4776636 m!5751640))

(declare-fun m!5751642 () Bool)

(assert (=> b!4776636 m!5751642))

(assert (=> b!4776636 m!5751642))

(declare-fun m!5751644 () Bool)

(assert (=> b!4776636 m!5751644))

(declare-fun m!5751646 () Bool)

(assert (=> b!4776636 m!5751646))

(declare-fun m!5751648 () Bool)

(assert (=> b!4776643 m!5751648))

(assert (=> b!4776639 m!5751648))

(declare-fun m!5751650 () Bool)

(assert (=> b!4776639 m!5751650))

(assert (=> b!4776639 m!5751650))

(declare-fun m!5751652 () Bool)

(assert (=> b!4776639 m!5751652))

(declare-fun m!5751654 () Bool)

(assert (=> b!4776639 m!5751654))

(declare-fun m!5751656 () Bool)

(assert (=> b!4776639 m!5751656))

(declare-fun m!5751658 () Bool)

(assert (=> b!4776635 m!5751658))

(push 1)

(assert (not b!4776641))

(assert (not b!4776636))

(assert (not b!4776643))

(assert (not b!4776637))

(assert (not start!489744))

(assert (not b!4776642))

(assert (not b!4776645))

(assert (not b!4776635))

(assert (not b!4776640))

(assert (not b!4776644))

(assert tp_is_empty!33037)

(assert tp_is_empty!33039)

(assert (not b!4776639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

