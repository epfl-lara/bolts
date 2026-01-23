; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!481210 () Bool)

(assert start!481210)

(declare-fun b!4726174 () Bool)

(declare-fun res!2000098 () Bool)

(declare-fun e!2947665 () Bool)

(assert (=> b!4726174 (=> (not res!2000098) (not e!2947665))))

(declare-datatypes ((K!14208 0))(
  ( (K!14209 (val!19637 Int)) )
))
(declare-fun key!4653 () K!14208)

(declare-datatypes ((V!14454 0))(
  ( (V!14455 (val!19638 Int)) )
))
(declare-datatypes ((tuple2!54486 0))(
  ( (tuple2!54487 (_1!30537 K!14208) (_2!30537 V!14454)) )
))
(declare-datatypes ((List!52978 0))(
  ( (Nil!52854) (Cons!52854 (h!59207 tuple2!54486) (t!360254 List!52978)) )
))
(declare-fun newBucket!218 () List!52978)

(declare-fun oldBucket!34 () List!52978)

(declare-fun removePairForKey!1618 (List!52978 K!14208) List!52978)

(assert (=> b!4726174 (= res!2000098 (= (removePairForKey!1618 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4726175 () Bool)

(declare-fun res!2000094 () Bool)

(declare-fun e!2947664 () Bool)

(assert (=> b!4726175 (=> (not res!2000094) (not e!2947664))))

(declare-datatypes ((tuple2!54488 0))(
  ( (tuple2!54489 (_1!30538 (_ BitVec 64)) (_2!30538 List!52978)) )
))
(declare-datatypes ((List!52979 0))(
  ( (Nil!52855) (Cons!52855 (h!59208 tuple2!54488) (t!360255 List!52979)) )
))
(declare-datatypes ((ListLongMap!4465 0))(
  ( (ListLongMap!4466 (toList!5935 List!52979)) )
))
(declare-fun lm!2023 () ListLongMap!4465)

(assert (=> b!4726175 (= res!2000094 (is-Cons!52855 (toList!5935 lm!2023)))))

(declare-fun b!4726176 () Bool)

(declare-fun res!2000095 () Bool)

(assert (=> b!4726176 (=> (not res!2000095) (not e!2947664))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6392 0))(
  ( (HashableExt!6391 (__x!32095 Int)) )
))
(declare-fun hashF!1323 () Hashable!6392)

(declare-fun allKeysSameHash!1849 (List!52978 (_ BitVec 64) Hashable!6392) Bool)

(assert (=> b!4726176 (= res!2000095 (allKeysSameHash!1849 newBucket!218 hash!405 hashF!1323))))

(declare-fun e!2947660 () Bool)

(declare-fun b!4726177 () Bool)

(declare-fun tp_is_empty!31385 () Bool)

(declare-fun tp_is_empty!31387 () Bool)

(declare-fun tp!1348568 () Bool)

(assert (=> b!4726177 (= e!2947660 (and tp_is_empty!31385 tp_is_empty!31387 tp!1348568))))

(declare-fun b!4726178 () Bool)

(declare-fun e!2947659 () Bool)

(assert (=> b!4726178 (= e!2947659 e!2947664)))

(declare-fun res!2000102 () Bool)

(assert (=> b!4726178 (=> (not res!2000102) (not e!2947664))))

(declare-fun lt!1890936 () (_ BitVec 64))

(assert (=> b!4726178 (= res!2000102 (= lt!1890936 hash!405))))

(declare-fun hash!4399 (Hashable!6392 K!14208) (_ BitVec 64))

(assert (=> b!4726178 (= lt!1890936 (hash!4399 hashF!1323 key!4653))))

(declare-fun b!4726179 () Bool)

(declare-fun e!2947662 () Bool)

(declare-datatypes ((ListMap!5299 0))(
  ( (ListMap!5300 (toList!5936 List!52978)) )
))
(declare-fun lt!1890941 () ListMap!5299)

(declare-fun addToMapMapFromBucket!1453 (List!52978 ListMap!5299) ListMap!5299)

(declare-fun extractMap!2049 (List!52979) ListMap!5299)

(assert (=> b!4726179 (= e!2947662 (= lt!1890941 (addToMapMapFromBucket!1453 (_2!30538 (h!59208 (toList!5935 lm!2023))) (extractMap!2049 (t!360255 (toList!5935 lm!2023))))))))

(declare-fun b!4726180 () Bool)

(assert (=> b!4726180 (= e!2947665 e!2947659)))

(declare-fun res!2000105 () Bool)

(assert (=> b!4726180 (=> (not res!2000105) (not e!2947659))))

(declare-fun contains!16199 (ListMap!5299 K!14208) Bool)

(assert (=> b!4726180 (= res!2000105 (contains!16199 lt!1890941 key!4653))))

(assert (=> b!4726180 (= lt!1890941 (extractMap!2049 (toList!5935 lm!2023)))))

(declare-fun e!2947661 () Bool)

(declare-fun tp!1348566 () Bool)

(declare-fun b!4726181 () Bool)

(assert (=> b!4726181 (= e!2947661 (and tp_is_empty!31385 tp_is_empty!31387 tp!1348566))))

(declare-fun b!4726182 () Bool)

(declare-fun res!2000096 () Bool)

(assert (=> b!4726182 (=> (not res!2000096) (not e!2947665))))

(declare-fun noDuplicateKeys!2023 (List!52978) Bool)

(assert (=> b!4726182 (= res!2000096 (noDuplicateKeys!2023 oldBucket!34))))

(declare-fun b!4726183 () Bool)

(declare-fun e!2947666 () Bool)

(assert (=> b!4726183 (= e!2947664 (not e!2947666))))

(declare-fun res!2000099 () Bool)

(assert (=> b!4726183 (=> res!2000099 e!2947666)))

(assert (=> b!4726183 (= res!2000099 (or (and (is-Cons!52854 oldBucket!34) (= (_1!30537 (h!59207 oldBucket!34)) key!4653)) (not (is-Cons!52854 oldBucket!34)) (= (_1!30537 (h!59207 oldBucket!34)) key!4653)))))

(assert (=> b!4726183 e!2947662))

(declare-fun res!2000097 () Bool)

(assert (=> b!4726183 (=> (not res!2000097) (not e!2947662))))

(declare-fun tail!9022 (ListLongMap!4465) ListLongMap!4465)

(assert (=> b!4726183 (= res!2000097 (= (t!360255 (toList!5935 lm!2023)) (toList!5935 (tail!9022 lm!2023))))))

(declare-fun b!4726184 () Bool)

(declare-fun res!2000103 () Bool)

(assert (=> b!4726184 (=> (not res!2000103) (not e!2947664))))

(declare-fun allKeysSameHashInMap!1937 (ListLongMap!4465 Hashable!6392) Bool)

(assert (=> b!4726184 (= res!2000103 (allKeysSameHashInMap!1937 lm!2023 hashF!1323))))

(declare-fun b!4726185 () Bool)

(declare-fun res!2000106 () Bool)

(assert (=> b!4726185 (=> (not res!2000106) (not e!2947665))))

(assert (=> b!4726185 (= res!2000106 (noDuplicateKeys!2023 newBucket!218))))

(declare-fun res!2000100 () Bool)

(assert (=> start!481210 (=> (not res!2000100) (not e!2947665))))

(declare-fun lambda!216245 () Int)

(declare-fun forall!11607 (List!52979 Int) Bool)

(assert (=> start!481210 (= res!2000100 (forall!11607 (toList!5935 lm!2023) lambda!216245))))

(assert (=> start!481210 e!2947665))

(declare-fun e!2947663 () Bool)

(declare-fun inv!68083 (ListLongMap!4465) Bool)

(assert (=> start!481210 (and (inv!68083 lm!2023) e!2947663)))

(assert (=> start!481210 tp_is_empty!31385))

(assert (=> start!481210 e!2947661))

(assert (=> start!481210 true))

(assert (=> start!481210 e!2947660))

(declare-fun b!4726186 () Bool)

(declare-fun res!2000101 () Bool)

(assert (=> b!4726186 (=> (not res!2000101) (not e!2947664))))

(declare-fun head!10263 (List!52979) tuple2!54488)

(assert (=> b!4726186 (= res!2000101 (= (head!10263 (toList!5935 lm!2023)) (tuple2!54489 hash!405 oldBucket!34)))))

(declare-fun b!4726187 () Bool)

(declare-fun res!2000104 () Bool)

(assert (=> b!4726187 (=> (not res!2000104) (not e!2947665))))

(assert (=> b!4726187 (= res!2000104 (allKeysSameHash!1849 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4726188 () Bool)

(assert (=> b!4726188 (= e!2947666 true)))

(declare-fun lt!1890938 () List!52978)

(declare-datatypes ((Option!12368 0))(
  ( (None!12367) (Some!12367 (v!46952 tuple2!54486)) )
))
(declare-fun isDefined!9622 (Option!12368) Bool)

(declare-fun getPair!563 (List!52978 K!14208) Option!12368)

(assert (=> b!4726188 (isDefined!9622 (getPair!563 lt!1890938 key!4653))))

(declare-datatypes ((Unit!131007 0))(
  ( (Unit!131008) )
))
(declare-fun lt!1890943 () Unit!131007)

(declare-fun lt!1890939 () tuple2!54488)

(declare-fun forallContained!3648 (List!52979 Int tuple2!54488) Unit!131007)

(assert (=> b!4726188 (= lt!1890943 (forallContained!3648 (toList!5935 lm!2023) lambda!216245 lt!1890939))))

(declare-fun contains!16200 (List!52979 tuple2!54488) Bool)

(assert (=> b!4726188 (contains!16200 (toList!5935 lm!2023) lt!1890939)))

(assert (=> b!4726188 (= lt!1890939 (tuple2!54489 lt!1890936 lt!1890938))))

(declare-fun lt!1890937 () Unit!131007)

(declare-fun lemmaGetValueImpliesTupleContained!368 (ListLongMap!4465 (_ BitVec 64) List!52978) Unit!131007)

(assert (=> b!4726188 (= lt!1890937 (lemmaGetValueImpliesTupleContained!368 lm!2023 lt!1890936 lt!1890938))))

(declare-fun apply!12448 (ListLongMap!4465 (_ BitVec 64)) List!52978)

(assert (=> b!4726188 (= lt!1890938 (apply!12448 lm!2023 lt!1890936))))

(declare-fun contains!16201 (ListLongMap!4465 (_ BitVec 64)) Bool)

(assert (=> b!4726188 (contains!16201 lm!2023 lt!1890936)))

(declare-fun lt!1890942 () Unit!131007)

(declare-fun lemmaInGenMapThenLongMapContainsHash!769 (ListLongMap!4465 K!14208 Hashable!6392) Unit!131007)

(assert (=> b!4726188 (= lt!1890942 (lemmaInGenMapThenLongMapContainsHash!769 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1890940 () Unit!131007)

(declare-fun lemmaInGenMapThenGetPairDefined!359 (ListLongMap!4465 K!14208 Hashable!6392) Unit!131007)

(assert (=> b!4726188 (= lt!1890940 (lemmaInGenMapThenGetPairDefined!359 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4726189 () Bool)

(declare-fun tp!1348567 () Bool)

(assert (=> b!4726189 (= e!2947663 tp!1348567)))

(assert (= (and start!481210 res!2000100) b!4726182))

(assert (= (and b!4726182 res!2000096) b!4726185))

(assert (= (and b!4726185 res!2000106) b!4726174))

(assert (= (and b!4726174 res!2000098) b!4726187))

(assert (= (and b!4726187 res!2000104) b!4726180))

(assert (= (and b!4726180 res!2000105) b!4726178))

(assert (= (and b!4726178 res!2000102) b!4726176))

(assert (= (and b!4726176 res!2000095) b!4726184))

(assert (= (and b!4726184 res!2000103) b!4726186))

(assert (= (and b!4726186 res!2000101) b!4726175))

(assert (= (and b!4726175 res!2000094) b!4726183))

(assert (= (and b!4726183 res!2000097) b!4726179))

(assert (= (and b!4726183 (not res!2000099)) b!4726188))

(assert (= start!481210 b!4726189))

(assert (= (and start!481210 (is-Cons!52854 oldBucket!34)) b!4726181))

(assert (= (and start!481210 (is-Cons!52854 newBucket!218)) b!4726177))

(declare-fun m!5665881 () Bool)

(assert (=> b!4726186 m!5665881))

(declare-fun m!5665883 () Bool)

(assert (=> b!4726182 m!5665883))

(declare-fun m!5665885 () Bool)

(assert (=> b!4726183 m!5665885))

(declare-fun m!5665887 () Bool)

(assert (=> b!4726188 m!5665887))

(declare-fun m!5665889 () Bool)

(assert (=> b!4726188 m!5665889))

(declare-fun m!5665891 () Bool)

(assert (=> b!4726188 m!5665891))

(declare-fun m!5665893 () Bool)

(assert (=> b!4726188 m!5665893))

(declare-fun m!5665895 () Bool)

(assert (=> b!4726188 m!5665895))

(declare-fun m!5665897 () Bool)

(assert (=> b!4726188 m!5665897))

(assert (=> b!4726188 m!5665895))

(declare-fun m!5665899 () Bool)

(assert (=> b!4726188 m!5665899))

(declare-fun m!5665901 () Bool)

(assert (=> b!4726188 m!5665901))

(declare-fun m!5665903 () Bool)

(assert (=> b!4726188 m!5665903))

(declare-fun m!5665905 () Bool)

(assert (=> b!4726178 m!5665905))

(declare-fun m!5665907 () Bool)

(assert (=> b!4726180 m!5665907))

(declare-fun m!5665909 () Bool)

(assert (=> b!4726180 m!5665909))

(declare-fun m!5665911 () Bool)

(assert (=> b!4726187 m!5665911))

(declare-fun m!5665913 () Bool)

(assert (=> b!4726184 m!5665913))

(declare-fun m!5665915 () Bool)

(assert (=> b!4726185 m!5665915))

(declare-fun m!5665917 () Bool)

(assert (=> b!4726179 m!5665917))

(assert (=> b!4726179 m!5665917))

(declare-fun m!5665919 () Bool)

(assert (=> b!4726179 m!5665919))

(declare-fun m!5665921 () Bool)

(assert (=> start!481210 m!5665921))

(declare-fun m!5665923 () Bool)

(assert (=> start!481210 m!5665923))

(declare-fun m!5665925 () Bool)

(assert (=> b!4726176 m!5665925))

(declare-fun m!5665927 () Bool)

(assert (=> b!4726174 m!5665927))

(push 1)

(assert (not b!4726176))

(assert (not start!481210))

(assert (not b!4726183))

(assert (not b!4726184))

(assert (not b!4726178))

(assert tp_is_empty!31385)

(assert (not b!4726189))

(assert (not b!4726181))

(assert (not b!4726187))

(assert (not b!4726174))

(assert (not b!4726186))

(assert (not b!4726179))

(assert (not b!4726185))

(assert (not b!4726180))

(assert tp_is_empty!31387)

(assert (not b!4726182))

(assert (not b!4726188))

(assert (not b!4726177))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

