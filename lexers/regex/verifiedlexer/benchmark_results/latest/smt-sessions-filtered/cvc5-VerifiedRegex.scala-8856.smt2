; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!472946 () Bool)

(assert start!472946)

(declare-fun b!4682682 () Bool)

(declare-fun res!1973828 () Bool)

(declare-fun e!2921494 () Bool)

(assert (=> b!4682682 (=> (not res!1973828) (not e!2921494))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6182 0))(
  ( (HashableExt!6181 (__x!31885 Int)) )
))
(declare-fun hashF!1323 () Hashable!6182)

(declare-datatypes ((K!13683 0))(
  ( (K!13684 (val!19217 Int)) )
))
(declare-datatypes ((V!13929 0))(
  ( (V!13930 (val!19218 Int)) )
))
(declare-datatypes ((tuple2!53646 0))(
  ( (tuple2!53647 (_1!30117 K!13683) (_2!30117 V!13929)) )
))
(declare-datatypes ((List!52425 0))(
  ( (Nil!52301) (Cons!52301 (h!58520 tuple2!53646) (t!359587 List!52425)) )
))
(declare-fun newBucket!218 () List!52425)

(declare-fun allKeysSameHash!1639 (List!52425 (_ BitVec 64) Hashable!6182) Bool)

(assert (=> b!4682682 (= res!1973828 (allKeysSameHash!1639 newBucket!218 hash!405 hashF!1323))))

(declare-fun tp!1345286 () Bool)

(declare-fun b!4682683 () Bool)

(declare-fun e!2921492 () Bool)

(declare-fun tp_is_empty!30545 () Bool)

(declare-fun tp_is_empty!30547 () Bool)

(assert (=> b!4682683 (= e!2921492 (and tp_is_empty!30545 tp_is_empty!30547 tp!1345286))))

(declare-fun b!4682684 () Bool)

(declare-fun e!2921491 () Bool)

(declare-fun e!2921495 () Bool)

(assert (=> b!4682684 (= e!2921491 e!2921495)))

(declare-fun res!1973829 () Bool)

(assert (=> b!4682684 (=> res!1973829 e!2921495)))

(declare-fun oldBucket!34 () List!52425)

(declare-fun key!4653 () K!13683)

(declare-fun containsKey!2960 (List!52425 K!13683) Bool)

(assert (=> b!4682684 (= res!1973829 (not (containsKey!2960 (t!359587 oldBucket!34) key!4653)))))

(assert (=> b!4682684 (containsKey!2960 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!123015 0))(
  ( (Unit!123016) )
))
(declare-fun lt!1842411 () Unit!123015)

(declare-fun lemmaGetPairDefinedThenContainsKey!165 (List!52425 K!13683 Hashable!6182) Unit!123015)

(assert (=> b!4682684 (= lt!1842411 (lemmaGetPairDefinedThenContainsKey!165 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1842417 () List!52425)

(declare-datatypes ((Option!11984 0))(
  ( (None!11983) (Some!11983 (v!46346 tuple2!53646)) )
))
(declare-fun isDefined!9239 (Option!11984) Bool)

(declare-fun getPair!417 (List!52425 K!13683) Option!11984)

(assert (=> b!4682684 (isDefined!9239 (getPair!417 lt!1842417 key!4653))))

(declare-fun lambda!205202 () Int)

(declare-datatypes ((tuple2!53648 0))(
  ( (tuple2!53649 (_1!30118 (_ BitVec 64)) (_2!30118 List!52425)) )
))
(declare-datatypes ((List!52426 0))(
  ( (Nil!52302) (Cons!52302 (h!58521 tuple2!53648) (t!359588 List!52426)) )
))
(declare-datatypes ((ListLongMap!4045 0))(
  ( (ListLongMap!4046 (toList!5515 List!52426)) )
))
(declare-fun lm!2023 () ListLongMap!4045)

(declare-fun lt!1842414 () Unit!123015)

(declare-fun lt!1842415 () tuple2!53648)

(declare-fun forallContained!3361 (List!52426 Int tuple2!53648) Unit!123015)

(assert (=> b!4682684 (= lt!1842414 (forallContained!3361 (toList!5515 lm!2023) lambda!205202 lt!1842415))))

(declare-fun contains!15433 (List!52426 tuple2!53648) Bool)

(assert (=> b!4682684 (contains!15433 (toList!5515 lm!2023) lt!1842415)))

(declare-fun lt!1842413 () (_ BitVec 64))

(assert (=> b!4682684 (= lt!1842415 (tuple2!53649 lt!1842413 lt!1842417))))

(declare-fun lt!1842416 () Unit!123015)

(declare-fun lemmaGetValueImpliesTupleContained!222 (ListLongMap!4045 (_ BitVec 64) List!52425) Unit!123015)

(assert (=> b!4682684 (= lt!1842416 (lemmaGetValueImpliesTupleContained!222 lm!2023 lt!1842413 lt!1842417))))

(declare-fun apply!12296 (ListLongMap!4045 (_ BitVec 64)) List!52425)

(assert (=> b!4682684 (= lt!1842417 (apply!12296 lm!2023 lt!1842413))))

(declare-fun contains!15434 (ListLongMap!4045 (_ BitVec 64)) Bool)

(assert (=> b!4682684 (contains!15434 lm!2023 lt!1842413)))

(declare-fun lt!1842412 () Unit!123015)

(declare-fun lemmaInGenMapThenLongMapContainsHash!623 (ListLongMap!4045 K!13683 Hashable!6182) Unit!123015)

(assert (=> b!4682684 (= lt!1842412 (lemmaInGenMapThenLongMapContainsHash!623 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1842410 () Unit!123015)

(declare-fun lemmaInGenMapThenGetPairDefined!213 (ListLongMap!4045 K!13683 Hashable!6182) Unit!123015)

(assert (=> b!4682684 (= lt!1842410 (lemmaInGenMapThenGetPairDefined!213 lm!2023 key!4653 hashF!1323))))

(declare-fun res!1973830 () Bool)

(declare-fun e!2921490 () Bool)

(assert (=> start!472946 (=> (not res!1973830) (not e!2921490))))

(declare-fun forall!11254 (List!52426 Int) Bool)

(assert (=> start!472946 (= res!1973830 (forall!11254 (toList!5515 lm!2023) lambda!205202))))

(assert (=> start!472946 e!2921490))

(declare-fun e!2921493 () Bool)

(declare-fun inv!67558 (ListLongMap!4045) Bool)

(assert (=> start!472946 (and (inv!67558 lm!2023) e!2921493)))

(assert (=> start!472946 tp_is_empty!30545))

(assert (=> start!472946 e!2921492))

(assert (=> start!472946 true))

(declare-fun e!2921489 () Bool)

(assert (=> start!472946 e!2921489))

(declare-fun b!4682685 () Bool)

(declare-fun res!1973840 () Bool)

(assert (=> b!4682685 (=> (not res!1973840) (not e!2921494))))

(declare-fun allKeysSameHashInMap!1727 (ListLongMap!4045 Hashable!6182) Bool)

(assert (=> b!4682685 (= res!1973840 (allKeysSameHashInMap!1727 lm!2023 hashF!1323))))

(declare-fun b!4682686 () Bool)

(declare-fun e!2921497 () Bool)

(assert (=> b!4682686 (= e!2921490 e!2921497)))

(declare-fun res!1973838 () Bool)

(assert (=> b!4682686 (=> (not res!1973838) (not e!2921497))))

(declare-datatypes ((ListMap!4879 0))(
  ( (ListMap!4880 (toList!5516 List!52425)) )
))
(declare-fun lt!1842409 () ListMap!4879)

(declare-fun contains!15435 (ListMap!4879 K!13683) Bool)

(assert (=> b!4682686 (= res!1973838 (contains!15435 lt!1842409 key!4653))))

(declare-fun extractMap!1839 (List!52426) ListMap!4879)

(assert (=> b!4682686 (= lt!1842409 (extractMap!1839 (toList!5515 lm!2023)))))

(declare-fun b!4682687 () Bool)

(assert (=> b!4682687 (= e!2921494 (not e!2921491))))

(declare-fun res!1973841 () Bool)

(assert (=> b!4682687 (=> res!1973841 e!2921491)))

(assert (=> b!4682687 (= res!1973841 (or (and (is-Cons!52301 oldBucket!34) (= (_1!30117 (h!58520 oldBucket!34)) key!4653)) (not (is-Cons!52301 oldBucket!34)) (= (_1!30117 (h!58520 oldBucket!34)) key!4653)))))

(declare-fun e!2921496 () Bool)

(assert (=> b!4682687 e!2921496))

(declare-fun res!1973831 () Bool)

(assert (=> b!4682687 (=> (not res!1973831) (not e!2921496))))

(declare-fun tail!8484 (ListLongMap!4045) ListLongMap!4045)

(assert (=> b!4682687 (= res!1973831 (= (t!359588 (toList!5515 lm!2023)) (toList!5515 (tail!8484 lm!2023))))))

(declare-fun b!4682688 () Bool)

(declare-fun res!1973837 () Bool)

(assert (=> b!4682688 (=> (not res!1973837) (not e!2921494))))

(assert (=> b!4682688 (= res!1973837 (is-Cons!52302 (toList!5515 lm!2023)))))

(declare-fun b!4682689 () Bool)

(declare-fun res!1973832 () Bool)

(assert (=> b!4682689 (=> (not res!1973832) (not e!2921494))))

(declare-fun head!9907 (List!52426) tuple2!53648)

(assert (=> b!4682689 (= res!1973832 (= (head!9907 (toList!5515 lm!2023)) (tuple2!53649 hash!405 oldBucket!34)))))

(declare-fun b!4682690 () Bool)

(declare-fun tp!1345288 () Bool)

(assert (=> b!4682690 (= e!2921493 tp!1345288)))

(declare-fun b!4682691 () Bool)

(declare-fun res!1973833 () Bool)

(assert (=> b!4682691 (=> (not res!1973833) (not e!2921490))))

(declare-fun removePairForKey!1408 (List!52425 K!13683) List!52425)

(assert (=> b!4682691 (= res!1973833 (= (removePairForKey!1408 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4682692 () Bool)

(declare-fun noDuplicateKeys!1813 (List!52425) Bool)

(declare-fun tail!8485 (List!52425) List!52425)

(assert (=> b!4682692 (= e!2921495 (noDuplicateKeys!1813 (tail!8485 oldBucket!34)))))

(declare-fun b!4682693 () Bool)

(declare-fun res!1973834 () Bool)

(assert (=> b!4682693 (=> (not res!1973834) (not e!2921490))))

(assert (=> b!4682693 (= res!1973834 (noDuplicateKeys!1813 newBucket!218))))

(declare-fun tp!1345287 () Bool)

(declare-fun b!4682694 () Bool)

(assert (=> b!4682694 (= e!2921489 (and tp_is_empty!30545 tp_is_empty!30547 tp!1345287))))

(declare-fun b!4682695 () Bool)

(assert (=> b!4682695 (= e!2921497 e!2921494)))

(declare-fun res!1973835 () Bool)

(assert (=> b!4682695 (=> (not res!1973835) (not e!2921494))))

(assert (=> b!4682695 (= res!1973835 (= lt!1842413 hash!405))))

(declare-fun hash!3999 (Hashable!6182 K!13683) (_ BitVec 64))

(assert (=> b!4682695 (= lt!1842413 (hash!3999 hashF!1323 key!4653))))

(declare-fun b!4682696 () Bool)

(declare-fun addToMapMapFromBucket!1245 (List!52425 ListMap!4879) ListMap!4879)

(assert (=> b!4682696 (= e!2921496 (= lt!1842409 (addToMapMapFromBucket!1245 (_2!30118 (h!58521 (toList!5515 lm!2023))) (extractMap!1839 (t!359588 (toList!5515 lm!2023))))))))

(declare-fun b!4682697 () Bool)

(declare-fun res!1973839 () Bool)

(assert (=> b!4682697 (=> (not res!1973839) (not e!2921490))))

(assert (=> b!4682697 (= res!1973839 (noDuplicateKeys!1813 oldBucket!34))))

(declare-fun b!4682698 () Bool)

(declare-fun res!1973836 () Bool)

(assert (=> b!4682698 (=> (not res!1973836) (not e!2921490))))

(assert (=> b!4682698 (= res!1973836 (allKeysSameHash!1639 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!472946 res!1973830) b!4682697))

(assert (= (and b!4682697 res!1973839) b!4682693))

(assert (= (and b!4682693 res!1973834) b!4682691))

(assert (= (and b!4682691 res!1973833) b!4682698))

(assert (= (and b!4682698 res!1973836) b!4682686))

(assert (= (and b!4682686 res!1973838) b!4682695))

(assert (= (and b!4682695 res!1973835) b!4682682))

(assert (= (and b!4682682 res!1973828) b!4682685))

(assert (= (and b!4682685 res!1973840) b!4682689))

(assert (= (and b!4682689 res!1973832) b!4682688))

(assert (= (and b!4682688 res!1973837) b!4682687))

(assert (= (and b!4682687 res!1973831) b!4682696))

(assert (= (and b!4682687 (not res!1973841)) b!4682684))

(assert (= (and b!4682684 (not res!1973829)) b!4682692))

(assert (= start!472946 b!4682690))

(assert (= (and start!472946 (is-Cons!52301 oldBucket!34)) b!4682683))

(assert (= (and start!472946 (is-Cons!52301 newBucket!218)) b!4682694))

(declare-fun m!5581141 () Bool)

(assert (=> b!4682687 m!5581141))

(declare-fun m!5581143 () Bool)

(assert (=> b!4682686 m!5581143))

(declare-fun m!5581145 () Bool)

(assert (=> b!4682686 m!5581145))

(declare-fun m!5581147 () Bool)

(assert (=> b!4682691 m!5581147))

(declare-fun m!5581149 () Bool)

(assert (=> b!4682682 m!5581149))

(declare-fun m!5581151 () Bool)

(assert (=> b!4682697 m!5581151))

(declare-fun m!5581153 () Bool)

(assert (=> b!4682695 m!5581153))

(declare-fun m!5581155 () Bool)

(assert (=> b!4682693 m!5581155))

(declare-fun m!5581157 () Bool)

(assert (=> b!4682684 m!5581157))

(declare-fun m!5581159 () Bool)

(assert (=> b!4682684 m!5581159))

(declare-fun m!5581161 () Bool)

(assert (=> b!4682684 m!5581161))

(declare-fun m!5581163 () Bool)

(assert (=> b!4682684 m!5581163))

(declare-fun m!5581165 () Bool)

(assert (=> b!4682684 m!5581165))

(declare-fun m!5581167 () Bool)

(assert (=> b!4682684 m!5581167))

(declare-fun m!5581169 () Bool)

(assert (=> b!4682684 m!5581169))

(declare-fun m!5581171 () Bool)

(assert (=> b!4682684 m!5581171))

(declare-fun m!5581173 () Bool)

(assert (=> b!4682684 m!5581173))

(declare-fun m!5581175 () Bool)

(assert (=> b!4682684 m!5581175))

(declare-fun m!5581177 () Bool)

(assert (=> b!4682684 m!5581177))

(declare-fun m!5581179 () Bool)

(assert (=> b!4682684 m!5581179))

(assert (=> b!4682684 m!5581171))

(declare-fun m!5581181 () Bool)

(assert (=> b!4682685 m!5581181))

(declare-fun m!5581183 () Bool)

(assert (=> b!4682689 m!5581183))

(declare-fun m!5581185 () Bool)

(assert (=> b!4682696 m!5581185))

(assert (=> b!4682696 m!5581185))

(declare-fun m!5581187 () Bool)

(assert (=> b!4682696 m!5581187))

(declare-fun m!5581189 () Bool)

(assert (=> b!4682692 m!5581189))

(assert (=> b!4682692 m!5581189))

(declare-fun m!5581191 () Bool)

(assert (=> b!4682692 m!5581191))

(declare-fun m!5581193 () Bool)

(assert (=> start!472946 m!5581193))

(declare-fun m!5581195 () Bool)

(assert (=> start!472946 m!5581195))

(declare-fun m!5581197 () Bool)

(assert (=> b!4682698 m!5581197))

(push 1)

(assert (not b!4682697))

(assert (not b!4682687))

(assert (not b!4682682))

(assert (not b!4682686))

(assert (not b!4682692))

(assert (not b!4682691))

(assert tp_is_empty!30545)

(assert (not start!472946))

(assert (not b!4682683))

(assert (not b!4682694))

(assert (not b!4682698))

(assert (not b!4682693))

(assert (not b!4682695))

(assert (not b!4682696))

(assert (not b!4682685))

(assert (not b!4682684))

(assert tp_is_empty!30547)

(assert (not b!4682689))

(assert (not b!4682690))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1488245 () Bool)

(declare-fun res!1973888 () Bool)

(declare-fun e!2921529 () Bool)

(assert (=> d!1488245 (=> res!1973888 e!2921529)))

(assert (=> d!1488245 (= res!1973888 (not (is-Cons!52301 (tail!8485 oldBucket!34))))))

(assert (=> d!1488245 (= (noDuplicateKeys!1813 (tail!8485 oldBucket!34)) e!2921529)))

(declare-fun b!4682754 () Bool)

(declare-fun e!2921530 () Bool)

(assert (=> b!4682754 (= e!2921529 e!2921530)))

(declare-fun res!1973889 () Bool)

(assert (=> b!4682754 (=> (not res!1973889) (not e!2921530))))

(assert (=> b!4682754 (= res!1973889 (not (containsKey!2960 (t!359587 (tail!8485 oldBucket!34)) (_1!30117 (h!58520 (tail!8485 oldBucket!34))))))))

(declare-fun b!4682755 () Bool)

(assert (=> b!4682755 (= e!2921530 (noDuplicateKeys!1813 (t!359587 (tail!8485 oldBucket!34))))))

(assert (= (and d!1488245 (not res!1973888)) b!4682754))

(assert (= (and b!4682754 res!1973889) b!4682755))

(declare-fun m!5581257 () Bool)

(assert (=> b!4682754 m!5581257))

(declare-fun m!5581259 () Bool)

(assert (=> b!4682755 m!5581259))

(assert (=> b!4682692 d!1488245))

(declare-fun d!1488247 () Bool)

(assert (=> d!1488247 (= (tail!8485 oldBucket!34) (t!359587 oldBucket!34))))

(assert (=> b!4682692 d!1488247))

(declare-fun d!1488249 () Bool)

(assert (=> d!1488249 true))

(assert (=> d!1488249 true))

(declare-fun lambda!205210 () Int)

(declare-fun forall!11256 (List!52425 Int) Bool)

(assert (=> d!1488249 (= (allKeysSameHash!1639 newBucket!218 hash!405 hashF!1323) (forall!11256 newBucket!218 lambda!205210))))

(declare-fun bs!1083622 () Bool)

(assert (= bs!1083622 d!1488249))

(declare-fun m!5581261 () Bool)

(assert (=> bs!1083622 m!5581261))

(assert (=> b!4682682 d!1488249))

(declare-fun b!4682777 () Bool)

(declare-fun e!2921542 () List!52425)

(assert (=> b!4682777 (= e!2921542 Nil!52301)))

(declare-fun b!4682776 () Bool)

(assert (=> b!4682776 (= e!2921542 (Cons!52301 (h!58520 oldBucket!34) (removePairForKey!1408 (t!359587 oldBucket!34) key!4653)))))

(declare-fun b!4682774 () Bool)

(declare-fun e!2921541 () List!52425)

(assert (=> b!4682774 (= e!2921541 (t!359587 oldBucket!34))))

(declare-fun b!4682775 () Bool)

(assert (=> b!4682775 (= e!2921541 e!2921542)))

(declare-fun c!800856 () Bool)

(assert (=> b!4682775 (= c!800856 (is-Cons!52301 oldBucket!34))))

(declare-fun d!1488253 () Bool)

(declare-fun lt!1842447 () List!52425)

(assert (=> d!1488253 (not (containsKey!2960 lt!1842447 key!4653))))

(assert (=> d!1488253 (= lt!1842447 e!2921541)))

(declare-fun c!800857 () Bool)

(assert (=> d!1488253 (= c!800857 (and (is-Cons!52301 oldBucket!34) (= (_1!30117 (h!58520 oldBucket!34)) key!4653)))))

(assert (=> d!1488253 (noDuplicateKeys!1813 oldBucket!34)))

(assert (=> d!1488253 (= (removePairForKey!1408 oldBucket!34 key!4653) lt!1842447)))

(assert (= (and d!1488253 c!800857) b!4682774))

(assert (= (and d!1488253 (not c!800857)) b!4682775))

(assert (= (and b!4682775 c!800856) b!4682776))

(assert (= (and b!4682775 (not c!800856)) b!4682777))

(declare-fun m!5581263 () Bool)

(assert (=> b!4682776 m!5581263))

(declare-fun m!5581265 () Bool)

(assert (=> d!1488253 m!5581265))

(assert (=> d!1488253 m!5581151))

(assert (=> b!4682691 d!1488253))

(declare-fun b!4682798 () Bool)

(declare-fun res!1973904 () Bool)

(declare-fun e!2921556 () Bool)

(assert (=> b!4682798 (=> (not res!1973904) (not e!2921556))))

(declare-fun lt!1842450 () Option!11984)

(declare-fun get!17419 (Option!11984) tuple2!53646)

(assert (=> b!4682798 (= res!1973904 (= (_1!30117 (get!17419 lt!1842450)) key!4653))))

(declare-fun b!4682799 () Bool)

(declare-fun e!2921553 () Option!11984)

(declare-fun e!2921555 () Option!11984)

(assert (=> b!4682799 (= e!2921553 e!2921555)))

(declare-fun c!800863 () Bool)

(assert (=> b!4682799 (= c!800863 (is-Cons!52301 lt!1842417))))

(declare-fun b!4682800 () Bool)

(assert (=> b!4682800 (= e!2921555 (getPair!417 (t!359587 lt!1842417) key!4653))))

(declare-fun b!4682801 () Bool)

(declare-fun e!2921557 () Bool)

(assert (=> b!4682801 (= e!2921557 e!2921556)))

(declare-fun res!1973907 () Bool)

(assert (=> b!4682801 (=> (not res!1973907) (not e!2921556))))

(assert (=> b!4682801 (= res!1973907 (isDefined!9239 lt!1842450))))

(declare-fun d!1488255 () Bool)

(assert (=> d!1488255 e!2921557))

(declare-fun res!1973905 () Bool)

(assert (=> d!1488255 (=> res!1973905 e!2921557)))

(declare-fun e!2921554 () Bool)

(assert (=> d!1488255 (= res!1973905 e!2921554)))

(declare-fun res!1973906 () Bool)

(assert (=> d!1488255 (=> (not res!1973906) (not e!2921554))))

(declare-fun isEmpty!29067 (Option!11984) Bool)

(assert (=> d!1488255 (= res!1973906 (isEmpty!29067 lt!1842450))))

(assert (=> d!1488255 (= lt!1842450 e!2921553)))

(declare-fun c!800862 () Bool)

(assert (=> d!1488255 (= c!800862 (and (is-Cons!52301 lt!1842417) (= (_1!30117 (h!58520 lt!1842417)) key!4653)))))

(assert (=> d!1488255 (noDuplicateKeys!1813 lt!1842417)))

(assert (=> d!1488255 (= (getPair!417 lt!1842417 key!4653) lt!1842450)))

(declare-fun b!4682802 () Bool)

(assert (=> b!4682802 (= e!2921555 None!11983)))

(declare-fun b!4682803 () Bool)

(assert (=> b!4682803 (= e!2921554 (not (containsKey!2960 lt!1842417 key!4653)))))

(declare-fun b!4682804 () Bool)

(assert (=> b!4682804 (= e!2921553 (Some!11983 (h!58520 lt!1842417)))))

(declare-fun b!4682805 () Bool)

(declare-fun contains!15439 (List!52425 tuple2!53646) Bool)

(assert (=> b!4682805 (= e!2921556 (contains!15439 lt!1842417 (get!17419 lt!1842450)))))

(assert (= (and d!1488255 c!800862) b!4682804))

(assert (= (and d!1488255 (not c!800862)) b!4682799))

(assert (= (and b!4682799 c!800863) b!4682800))

(assert (= (and b!4682799 (not c!800863)) b!4682802))

(assert (= (and d!1488255 res!1973906) b!4682803))

(assert (= (and d!1488255 (not res!1973905)) b!4682801))

(assert (= (and b!4682801 res!1973907) b!4682798))

(assert (= (and b!4682798 res!1973904) b!4682805))

(declare-fun m!5581273 () Bool)

(assert (=> b!4682800 m!5581273))

(declare-fun m!5581275 () Bool)

(assert (=> b!4682805 m!5581275))

(assert (=> b!4682805 m!5581275))

(declare-fun m!5581277 () Bool)

(assert (=> b!4682805 m!5581277))

(declare-fun m!5581279 () Bool)

(assert (=> d!1488255 m!5581279))

(declare-fun m!5581281 () Bool)

(assert (=> d!1488255 m!5581281))

(declare-fun m!5581283 () Bool)

(assert (=> b!4682803 m!5581283))

(declare-fun m!5581285 () Bool)

(assert (=> b!4682801 m!5581285))

(assert (=> b!4682798 m!5581275))

(assert (=> b!4682684 d!1488255))

(declare-fun d!1488263 () Bool)

(assert (=> d!1488263 (contains!15433 (toList!5515 lm!2023) (tuple2!53649 lt!1842413 lt!1842417))))

(declare-fun lt!1842453 () Unit!123015)

(declare-fun choose!32416 (ListLongMap!4045 (_ BitVec 64) List!52425) Unit!123015)

(assert (=> d!1488263 (= lt!1842453 (choose!32416 lm!2023 lt!1842413 lt!1842417))))

(assert (=> d!1488263 (contains!15434 lm!2023 lt!1842413)))

(assert (=> d!1488263 (= (lemmaGetValueImpliesTupleContained!222 lm!2023 lt!1842413 lt!1842417) lt!1842453)))

(declare-fun bs!1083624 () Bool)

(assert (= bs!1083624 d!1488263))

(declare-fun m!5581291 () Bool)

(assert (=> bs!1083624 m!5581291))

(declare-fun m!5581293 () Bool)

(assert (=> bs!1083624 m!5581293))

(assert (=> bs!1083624 m!5581159))

(assert (=> b!4682684 d!1488263))

(declare-fun d!1488269 () Bool)

(declare-datatypes ((Option!11986 0))(
  ( (None!11985) (Some!11985 (v!46352 List!52425)) )
))
(declare-fun get!17420 (Option!11986) List!52425)

(declare-fun getValueByKey!1726 (List!52426 (_ BitVec 64)) Option!11986)

(assert (=> d!1488269 (= (apply!12296 lm!2023 lt!1842413) (get!17420 (getValueByKey!1726 (toList!5515 lm!2023) lt!1842413)))))

(declare-fun bs!1083625 () Bool)

(assert (= bs!1083625 d!1488269))

(declare-fun m!5581295 () Bool)

(assert (=> bs!1083625 m!5581295))

(assert (=> bs!1083625 m!5581295))

(declare-fun m!5581297 () Bool)

(assert (=> bs!1083625 m!5581297))

(assert (=> b!4682684 d!1488269))

(declare-fun d!1488271 () Bool)

(declare-fun dynLambda!21686 (Int tuple2!53648) Bool)

(assert (=> d!1488271 (dynLambda!21686 lambda!205202 lt!1842415)))

(declare-fun lt!1842456 () Unit!123015)

(declare-fun choose!32417 (List!52426 Int tuple2!53648) Unit!123015)

(assert (=> d!1488271 (= lt!1842456 (choose!32417 (toList!5515 lm!2023) lambda!205202 lt!1842415))))

(declare-fun e!2921562 () Bool)

(assert (=> d!1488271 e!2921562))

(declare-fun res!1973912 () Bool)

(assert (=> d!1488271 (=> (not res!1973912) (not e!2921562))))

(assert (=> d!1488271 (= res!1973912 (forall!11254 (toList!5515 lm!2023) lambda!205202))))

(assert (=> d!1488271 (= (forallContained!3361 (toList!5515 lm!2023) lambda!205202 lt!1842415) lt!1842456)))

(declare-fun b!4682811 () Bool)

(assert (=> b!4682811 (= e!2921562 (contains!15433 (toList!5515 lm!2023) lt!1842415))))

(assert (= (and d!1488271 res!1973912) b!4682811))

(declare-fun b_lambda!176725 () Bool)

(assert (=> (not b_lambda!176725) (not d!1488271)))

(declare-fun m!5581299 () Bool)

(assert (=> d!1488271 m!5581299))

(declare-fun m!5581301 () Bool)

(assert (=> d!1488271 m!5581301))

(assert (=> d!1488271 m!5581193))

(assert (=> b!4682811 m!5581177))

(assert (=> b!4682684 d!1488271))

(declare-fun d!1488273 () Bool)

(assert (=> d!1488273 (= (isDefined!9239 (getPair!417 lt!1842417 key!4653)) (not (isEmpty!29067 (getPair!417 lt!1842417 key!4653))))))

(declare-fun bs!1083626 () Bool)

(assert (= bs!1083626 d!1488273))

(assert (=> bs!1083626 m!5581171))

(declare-fun m!5581303 () Bool)

(assert (=> bs!1083626 m!5581303))

(assert (=> b!4682684 d!1488273))

(declare-fun bs!1083630 () Bool)

(declare-fun d!1488275 () Bool)

(assert (= bs!1083630 (and d!1488275 start!472946)))

(declare-fun lambda!205223 () Int)

(assert (=> bs!1083630 (= lambda!205223 lambda!205202)))

(declare-fun lt!1842482 () List!52425)

(declare-fun b!4682850 () Bool)

(declare-fun e!2921585 () Bool)

(declare-fun lt!1842483 () (_ BitVec 64))

(assert (=> b!4682850 (= e!2921585 (= (getValueByKey!1726 (toList!5515 lm!2023) lt!1842483) (Some!11985 lt!1842482)))))

(declare-fun b!4682848 () Bool)

(declare-fun res!1973938 () Bool)

(declare-fun e!2921586 () Bool)

(assert (=> b!4682848 (=> (not res!1973938) (not e!2921586))))

(assert (=> b!4682848 (= res!1973938 (contains!15435 (extractMap!1839 (toList!5515 lm!2023)) key!4653))))

(declare-fun b!4682849 () Bool)

(assert (=> b!4682849 (= e!2921586 (isDefined!9239 (getPair!417 (apply!12296 lm!2023 (hash!3999 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1842489 () Unit!123015)

(assert (=> b!4682849 (= lt!1842489 (forallContained!3361 (toList!5515 lm!2023) lambda!205223 (tuple2!53649 (hash!3999 hashF!1323 key!4653) (apply!12296 lm!2023 (hash!3999 hashF!1323 key!4653)))))))

(declare-fun lt!1842486 () Unit!123015)

(declare-fun lt!1842488 () Unit!123015)

(assert (=> b!4682849 (= lt!1842486 lt!1842488)))

(assert (=> b!4682849 (contains!15433 (toList!5515 lm!2023) (tuple2!53649 lt!1842483 lt!1842482))))

(assert (=> b!4682849 (= lt!1842488 (lemmaGetValueImpliesTupleContained!222 lm!2023 lt!1842483 lt!1842482))))

(assert (=> b!4682849 e!2921585))

(declare-fun res!1973937 () Bool)

(assert (=> b!4682849 (=> (not res!1973937) (not e!2921585))))

(assert (=> b!4682849 (= res!1973937 (contains!15434 lm!2023 lt!1842483))))

(assert (=> b!4682849 (= lt!1842482 (apply!12296 lm!2023 (hash!3999 hashF!1323 key!4653)))))

(assert (=> b!4682849 (= lt!1842483 (hash!3999 hashF!1323 key!4653))))

(declare-fun lt!1842484 () Unit!123015)

(declare-fun lt!1842487 () Unit!123015)

(assert (=> b!4682849 (= lt!1842484 lt!1842487)))

(assert (=> b!4682849 (contains!15434 lm!2023 (hash!3999 hashF!1323 key!4653))))

(assert (=> b!4682849 (= lt!1842487 (lemmaInGenMapThenLongMapContainsHash!623 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4682847 () Bool)

(declare-fun res!1973936 () Bool)

(assert (=> b!4682847 (=> (not res!1973936) (not e!2921586))))

(assert (=> b!4682847 (= res!1973936 (allKeysSameHashInMap!1727 lm!2023 hashF!1323))))

(assert (=> d!1488275 e!2921586))

(declare-fun res!1973939 () Bool)

(assert (=> d!1488275 (=> (not res!1973939) (not e!2921586))))

(assert (=> d!1488275 (= res!1973939 (forall!11254 (toList!5515 lm!2023) lambda!205223))))

(declare-fun lt!1842485 () Unit!123015)

(declare-fun choose!32418 (ListLongMap!4045 K!13683 Hashable!6182) Unit!123015)

(assert (=> d!1488275 (= lt!1842485 (choose!32418 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1488275 (forall!11254 (toList!5515 lm!2023) lambda!205223)))

(assert (=> d!1488275 (= (lemmaInGenMapThenGetPairDefined!213 lm!2023 key!4653 hashF!1323) lt!1842485)))

(assert (= (and d!1488275 res!1973939) b!4682847))

(assert (= (and b!4682847 res!1973936) b!4682848))

(assert (= (and b!4682848 res!1973938) b!4682849))

(assert (= (and b!4682849 res!1973937) b!4682850))

(assert (=> b!4682847 m!5581181))

(declare-fun m!5581333 () Bool)

(assert (=> b!4682850 m!5581333))

(assert (=> b!4682848 m!5581145))

(assert (=> b!4682848 m!5581145))

(declare-fun m!5581335 () Bool)

(assert (=> b!4682848 m!5581335))

(assert (=> b!4682849 m!5581153))

(declare-fun m!5581337 () Bool)

(assert (=> b!4682849 m!5581337))

(declare-fun m!5581339 () Bool)

(assert (=> b!4682849 m!5581339))

(declare-fun m!5581341 () Bool)

(assert (=> b!4682849 m!5581341))

(declare-fun m!5581343 () Bool)

(assert (=> b!4682849 m!5581343))

(assert (=> b!4682849 m!5581153))

(assert (=> b!4682849 m!5581153))

(declare-fun m!5581345 () Bool)

(assert (=> b!4682849 m!5581345))

(declare-fun m!5581347 () Bool)

(assert (=> b!4682849 m!5581347))

(assert (=> b!4682849 m!5581175))

(declare-fun m!5581349 () Bool)

(assert (=> b!4682849 m!5581349))

(declare-fun m!5581351 () Bool)

(assert (=> b!4682849 m!5581351))

(assert (=> b!4682849 m!5581337))

(assert (=> b!4682849 m!5581349))

(declare-fun m!5581353 () Bool)

(assert (=> d!1488275 m!5581353))

(declare-fun m!5581355 () Bool)

(assert (=> d!1488275 m!5581355))

(assert (=> d!1488275 m!5581353))

(assert (=> b!4682684 d!1488275))

(declare-fun d!1488285 () Bool)

(assert (=> d!1488285 (containsKey!2960 oldBucket!34 key!4653)))

(declare-fun lt!1842492 () Unit!123015)

(declare-fun choose!32419 (List!52425 K!13683 Hashable!6182) Unit!123015)

(assert (=> d!1488285 (= lt!1842492 (choose!32419 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1488285 (noDuplicateKeys!1813 oldBucket!34)))

(assert (=> d!1488285 (= (lemmaGetPairDefinedThenContainsKey!165 oldBucket!34 key!4653 hashF!1323) lt!1842492)))

(declare-fun bs!1083631 () Bool)

(assert (= bs!1083631 d!1488285))

(assert (=> bs!1083631 m!5581169))

(declare-fun m!5581357 () Bool)

(assert (=> bs!1083631 m!5581357))

(assert (=> bs!1083631 m!5581151))

(assert (=> b!4682684 d!1488285))

(declare-fun d!1488287 () Bool)

(declare-fun res!1973944 () Bool)

(declare-fun e!2921591 () Bool)

(assert (=> d!1488287 (=> res!1973944 e!2921591)))

(assert (=> d!1488287 (= res!1973944 (and (is-Cons!52301 (t!359587 oldBucket!34)) (= (_1!30117 (h!58520 (t!359587 oldBucket!34))) key!4653)))))

(assert (=> d!1488287 (= (containsKey!2960 (t!359587 oldBucket!34) key!4653) e!2921591)))

(declare-fun b!4682855 () Bool)

(declare-fun e!2921592 () Bool)

(assert (=> b!4682855 (= e!2921591 e!2921592)))

(declare-fun res!1973945 () Bool)

(assert (=> b!4682855 (=> (not res!1973945) (not e!2921592))))

(assert (=> b!4682855 (= res!1973945 (is-Cons!52301 (t!359587 oldBucket!34)))))

(declare-fun b!4682856 () Bool)

(assert (=> b!4682856 (= e!2921592 (containsKey!2960 (t!359587 (t!359587 oldBucket!34)) key!4653))))

(assert (= (and d!1488287 (not res!1973944)) b!4682855))

(assert (= (and b!4682855 res!1973945) b!4682856))

(declare-fun m!5581359 () Bool)

(assert (=> b!4682856 m!5581359))

(assert (=> b!4682684 d!1488287))

(declare-fun bs!1083632 () Bool)

(declare-fun d!1488289 () Bool)

(assert (= bs!1083632 (and d!1488289 start!472946)))

(declare-fun lambda!205226 () Int)

(assert (=> bs!1083632 (= lambda!205226 lambda!205202)))

(declare-fun bs!1083633 () Bool)

(assert (= bs!1083633 (and d!1488289 d!1488275)))

(assert (=> bs!1083633 (= lambda!205226 lambda!205223)))

(assert (=> d!1488289 (contains!15434 lm!2023 (hash!3999 hashF!1323 key!4653))))

(declare-fun lt!1842495 () Unit!123015)

(declare-fun choose!32420 (ListLongMap!4045 K!13683 Hashable!6182) Unit!123015)

(assert (=> d!1488289 (= lt!1842495 (choose!32420 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1488289 (forall!11254 (toList!5515 lm!2023) lambda!205226)))

(assert (=> d!1488289 (= (lemmaInGenMapThenLongMapContainsHash!623 lm!2023 key!4653 hashF!1323) lt!1842495)))

(declare-fun bs!1083634 () Bool)

(assert (= bs!1083634 d!1488289))

(assert (=> bs!1083634 m!5581153))

(assert (=> bs!1083634 m!5581153))

(assert (=> bs!1083634 m!5581345))

(declare-fun m!5581361 () Bool)

(assert (=> bs!1083634 m!5581361))

(declare-fun m!5581363 () Bool)

(assert (=> bs!1083634 m!5581363))

(assert (=> b!4682684 d!1488289))

(declare-fun d!1488291 () Bool)

(declare-fun e!2921598 () Bool)

(assert (=> d!1488291 e!2921598))

(declare-fun res!1973948 () Bool)

(assert (=> d!1488291 (=> res!1973948 e!2921598)))

(declare-fun lt!1842505 () Bool)

(assert (=> d!1488291 (= res!1973948 (not lt!1842505))))

(declare-fun lt!1842506 () Bool)

(assert (=> d!1488291 (= lt!1842505 lt!1842506)))

(declare-fun lt!1842507 () Unit!123015)

(declare-fun e!2921597 () Unit!123015)

(assert (=> d!1488291 (= lt!1842507 e!2921597)))

(declare-fun c!800872 () Bool)

(assert (=> d!1488291 (= c!800872 lt!1842506)))

(declare-fun containsKey!2962 (List!52426 (_ BitVec 64)) Bool)

(assert (=> d!1488291 (= lt!1842506 (containsKey!2962 (toList!5515 lm!2023) lt!1842413))))

(assert (=> d!1488291 (= (contains!15434 lm!2023 lt!1842413) lt!1842505)))

(declare-fun b!4682863 () Bool)

(declare-fun lt!1842504 () Unit!123015)

(assert (=> b!4682863 (= e!2921597 lt!1842504)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1618 (List!52426 (_ BitVec 64)) Unit!123015)

(assert (=> b!4682863 (= lt!1842504 (lemmaContainsKeyImpliesGetValueByKeyDefined!1618 (toList!5515 lm!2023) lt!1842413))))

(declare-fun isDefined!9241 (Option!11986) Bool)

(assert (=> b!4682863 (isDefined!9241 (getValueByKey!1726 (toList!5515 lm!2023) lt!1842413))))

(declare-fun b!4682864 () Bool)

(declare-fun Unit!123019 () Unit!123015)

(assert (=> b!4682864 (= e!2921597 Unit!123019)))

(declare-fun b!4682865 () Bool)

(assert (=> b!4682865 (= e!2921598 (isDefined!9241 (getValueByKey!1726 (toList!5515 lm!2023) lt!1842413)))))

(assert (= (and d!1488291 c!800872) b!4682863))

(assert (= (and d!1488291 (not c!800872)) b!4682864))

(assert (= (and d!1488291 (not res!1973948)) b!4682865))

(declare-fun m!5581365 () Bool)

(assert (=> d!1488291 m!5581365))

(declare-fun m!5581367 () Bool)

(assert (=> b!4682863 m!5581367))

(assert (=> b!4682863 m!5581295))

(assert (=> b!4682863 m!5581295))

(declare-fun m!5581369 () Bool)

(assert (=> b!4682863 m!5581369))

(assert (=> b!4682865 m!5581295))

(assert (=> b!4682865 m!5581295))

(assert (=> b!4682865 m!5581369))

(assert (=> b!4682684 d!1488291))

(declare-fun d!1488293 () Bool)

(declare-fun res!1973949 () Bool)

(declare-fun e!2921599 () Bool)

(assert (=> d!1488293 (=> res!1973949 e!2921599)))

(assert (=> d!1488293 (= res!1973949 (and (is-Cons!52301 oldBucket!34) (= (_1!30117 (h!58520 oldBucket!34)) key!4653)))))

(assert (=> d!1488293 (= (containsKey!2960 oldBucket!34 key!4653) e!2921599)))

(declare-fun b!4682866 () Bool)

(declare-fun e!2921600 () Bool)

(assert (=> b!4682866 (= e!2921599 e!2921600)))

(declare-fun res!1973950 () Bool)

(assert (=> b!4682866 (=> (not res!1973950) (not e!2921600))))

(assert (=> b!4682866 (= res!1973950 (is-Cons!52301 oldBucket!34))))

(declare-fun b!4682867 () Bool)

(assert (=> b!4682867 (= e!2921600 (containsKey!2960 (t!359587 oldBucket!34) key!4653))))

(assert (= (and d!1488293 (not res!1973949)) b!4682866))

(assert (= (and b!4682866 res!1973950) b!4682867))

(assert (=> b!4682867 m!5581165))

(assert (=> b!4682684 d!1488293))

(declare-fun d!1488295 () Bool)

(declare-fun lt!1842510 () Bool)

(declare-fun content!9123 (List!52426) (Set tuple2!53648))

(assert (=> d!1488295 (= lt!1842510 (set.member lt!1842415 (content!9123 (toList!5515 lm!2023))))))

(declare-fun e!2921606 () Bool)

(assert (=> d!1488295 (= lt!1842510 e!2921606)))

(declare-fun res!1973956 () Bool)

(assert (=> d!1488295 (=> (not res!1973956) (not e!2921606))))

(assert (=> d!1488295 (= res!1973956 (is-Cons!52302 (toList!5515 lm!2023)))))

(assert (=> d!1488295 (= (contains!15433 (toList!5515 lm!2023) lt!1842415) lt!1842510)))

(declare-fun b!4682872 () Bool)

(declare-fun e!2921605 () Bool)

(assert (=> b!4682872 (= e!2921606 e!2921605)))

(declare-fun res!1973955 () Bool)

(assert (=> b!4682872 (=> res!1973955 e!2921605)))

(assert (=> b!4682872 (= res!1973955 (= (h!58521 (toList!5515 lm!2023)) lt!1842415))))

(declare-fun b!4682873 () Bool)

(assert (=> b!4682873 (= e!2921605 (contains!15433 (t!359588 (toList!5515 lm!2023)) lt!1842415))))

(assert (= (and d!1488295 res!1973956) b!4682872))

(assert (= (and b!4682872 (not res!1973955)) b!4682873))

(declare-fun m!5581371 () Bool)

(assert (=> d!1488295 m!5581371))

(declare-fun m!5581373 () Bool)

(assert (=> d!1488295 m!5581373))

(declare-fun m!5581375 () Bool)

(assert (=> b!4682873 m!5581375))

(assert (=> b!4682684 d!1488295))

(declare-fun d!1488297 () Bool)

(declare-fun hash!4001 (Hashable!6182 K!13683) (_ BitVec 64))

(assert (=> d!1488297 (= (hash!3999 hashF!1323 key!4653) (hash!4001 hashF!1323 key!4653))))

(declare-fun bs!1083635 () Bool)

(assert (= bs!1083635 d!1488297))

(declare-fun m!5581377 () Bool)

(assert (=> bs!1083635 m!5581377))

(assert (=> b!4682695 d!1488297))

(declare-fun d!1488299 () Bool)

(declare-fun res!1973957 () Bool)

(declare-fun e!2921607 () Bool)

(assert (=> d!1488299 (=> res!1973957 e!2921607)))

(assert (=> d!1488299 (= res!1973957 (not (is-Cons!52301 newBucket!218)))))

(assert (=> d!1488299 (= (noDuplicateKeys!1813 newBucket!218) e!2921607)))

(declare-fun b!4682874 () Bool)

(declare-fun e!2921608 () Bool)

(assert (=> b!4682874 (= e!2921607 e!2921608)))

(declare-fun res!1973958 () Bool)

(assert (=> b!4682874 (=> (not res!1973958) (not e!2921608))))

(assert (=> b!4682874 (= res!1973958 (not (containsKey!2960 (t!359587 newBucket!218) (_1!30117 (h!58520 newBucket!218)))))))

(declare-fun b!4682875 () Bool)

(assert (=> b!4682875 (= e!2921608 (noDuplicateKeys!1813 (t!359587 newBucket!218)))))

(assert (= (and d!1488299 (not res!1973957)) b!4682874))

(assert (= (and b!4682874 res!1973958) b!4682875))

(declare-fun m!5581379 () Bool)

(assert (=> b!4682874 m!5581379))

(declare-fun m!5581381 () Bool)

(assert (=> b!4682875 m!5581381))

(assert (=> b!4682693 d!1488299))

(declare-fun d!1488301 () Bool)

(declare-fun res!1973959 () Bool)

(declare-fun e!2921609 () Bool)

(assert (=> d!1488301 (=> res!1973959 e!2921609)))

(assert (=> d!1488301 (= res!1973959 (not (is-Cons!52301 oldBucket!34)))))

(assert (=> d!1488301 (= (noDuplicateKeys!1813 oldBucket!34) e!2921609)))

(declare-fun b!4682876 () Bool)

(declare-fun e!2921610 () Bool)

(assert (=> b!4682876 (= e!2921609 e!2921610)))

(declare-fun res!1973960 () Bool)

(assert (=> b!4682876 (=> (not res!1973960) (not e!2921610))))

(assert (=> b!4682876 (= res!1973960 (not (containsKey!2960 (t!359587 oldBucket!34) (_1!30117 (h!58520 oldBucket!34)))))))

(declare-fun b!4682877 () Bool)

(assert (=> b!4682877 (= e!2921610 (noDuplicateKeys!1813 (t!359587 oldBucket!34)))))

(assert (= (and d!1488301 (not res!1973959)) b!4682876))

(assert (= (and b!4682876 res!1973960) b!4682877))

(declare-fun m!5581383 () Bool)

(assert (=> b!4682876 m!5581383))

(declare-fun m!5581385 () Bool)

(assert (=> b!4682877 m!5581385))

(assert (=> b!4682697 d!1488301))

(declare-fun bs!1083636 () Bool)

(declare-fun d!1488303 () Bool)

(assert (= bs!1083636 (and d!1488303 d!1488249)))

(declare-fun lambda!205227 () Int)

(assert (=> bs!1083636 (= lambda!205227 lambda!205210)))

(assert (=> d!1488303 true))

(assert (=> d!1488303 true))

(assert (=> d!1488303 (= (allKeysSameHash!1639 oldBucket!34 hash!405 hashF!1323) (forall!11256 oldBucket!34 lambda!205227))))

(declare-fun bs!1083637 () Bool)

(assert (= bs!1083637 d!1488303))

(declare-fun m!5581387 () Bool)

(assert (=> bs!1083637 m!5581387))

(assert (=> b!4682698 d!1488303))

(declare-fun d!1488305 () Bool)

(declare-fun tail!8488 (List!52426) List!52426)

(assert (=> d!1488305 (= (tail!8484 lm!2023) (ListLongMap!4046 (tail!8488 (toList!5515 lm!2023))))))

(declare-fun bs!1083638 () Bool)

(assert (= bs!1083638 d!1488305))

(declare-fun m!5581389 () Bool)

(assert (=> bs!1083638 m!5581389))

(assert (=> b!4682687 d!1488305))

(declare-fun bs!1083648 () Bool)

(declare-fun b!4682928 () Bool)

(assert (= bs!1083648 (and b!4682928 d!1488249)))

(declare-fun lambda!205266 () Int)

(assert (=> bs!1083648 (not (= lambda!205266 lambda!205210))))

(declare-fun bs!1083649 () Bool)

(assert (= bs!1083649 (and b!4682928 d!1488303)))

(assert (=> bs!1083649 (not (= lambda!205266 lambda!205227))))

(assert (=> b!4682928 true))

(declare-fun bs!1083650 () Bool)

(declare-fun b!4682926 () Bool)

(assert (= bs!1083650 (and b!4682926 d!1488249)))

(declare-fun lambda!205267 () Int)

(assert (=> bs!1083650 (not (= lambda!205267 lambda!205210))))

(declare-fun bs!1083651 () Bool)

(assert (= bs!1083651 (and b!4682926 d!1488303)))

(assert (=> bs!1083651 (not (= lambda!205267 lambda!205227))))

(declare-fun bs!1083652 () Bool)

(assert (= bs!1083652 (and b!4682926 b!4682928)))

(assert (=> bs!1083652 (= lambda!205267 lambda!205266)))

(assert (=> b!4682926 true))

(declare-fun lambda!205268 () Int)

(assert (=> bs!1083650 (not (= lambda!205268 lambda!205210))))

(assert (=> bs!1083651 (not (= lambda!205268 lambda!205227))))

(declare-fun lt!1842612 () ListMap!4879)

(assert (=> bs!1083652 (= (= lt!1842612 (extractMap!1839 (t!359588 (toList!5515 lm!2023)))) (= lambda!205268 lambda!205266))))

(assert (=> b!4682926 (= (= lt!1842612 (extractMap!1839 (t!359588 (toList!5515 lm!2023)))) (= lambda!205268 lambda!205267))))

(assert (=> b!4682926 true))

(declare-fun bs!1083653 () Bool)

(declare-fun d!1488307 () Bool)

(assert (= bs!1083653 (and d!1488307 b!4682926)))

(declare-fun lt!1842614 () ListMap!4879)

(declare-fun lambda!205269 () Int)

(assert (=> bs!1083653 (= (= lt!1842614 lt!1842612) (= lambda!205269 lambda!205268))))

(declare-fun bs!1083654 () Bool)

(assert (= bs!1083654 (and d!1488307 b!4682928)))

(assert (=> bs!1083654 (= (= lt!1842614 (extractMap!1839 (t!359588 (toList!5515 lm!2023)))) (= lambda!205269 lambda!205266))))

(declare-fun bs!1083655 () Bool)

(assert (= bs!1083655 (and d!1488307 d!1488249)))

(assert (=> bs!1083655 (not (= lambda!205269 lambda!205210))))

(assert (=> bs!1083653 (= (= lt!1842614 (extractMap!1839 (t!359588 (toList!5515 lm!2023)))) (= lambda!205269 lambda!205267))))

(declare-fun bs!1083656 () Bool)

(assert (= bs!1083656 (and d!1488307 d!1488303)))

(assert (=> bs!1083656 (not (= lambda!205269 lambda!205227))))

(assert (=> d!1488307 true))

(declare-fun c!800878 () Bool)

(declare-fun call!327292 () Bool)

(declare-fun bm!327285 () Bool)

(declare-fun lt!1842599 () ListMap!4879)

(assert (=> bm!327285 (= call!327292 (forall!11256 (ite c!800878 (toList!5516 (extractMap!1839 (t!359588 (toList!5515 lm!2023)))) (toList!5516 lt!1842599)) (ite c!800878 lambda!205266 lambda!205268)))))

(declare-fun e!2921643 () ListMap!4879)

(assert (=> b!4682926 (= e!2921643 lt!1842612)))

(declare-fun +!2105 (ListMap!4879 tuple2!53646) ListMap!4879)

(assert (=> b!4682926 (= lt!1842599 (+!2105 (extractMap!1839 (t!359588 (toList!5515 lm!2023))) (h!58520 (_2!30118 (h!58521 (toList!5515 lm!2023))))))))

(assert (=> b!4682926 (= lt!1842612 (addToMapMapFromBucket!1245 (t!359587 (_2!30118 (h!58521 (toList!5515 lm!2023)))) (+!2105 (extractMap!1839 (t!359588 (toList!5515 lm!2023))) (h!58520 (_2!30118 (h!58521 (toList!5515 lm!2023)))))))))

(declare-fun lt!1842616 () Unit!123015)

(declare-fun call!327290 () Unit!123015)

(assert (=> b!4682926 (= lt!1842616 call!327290)))

(assert (=> b!4682926 (forall!11256 (toList!5516 (extractMap!1839 (t!359588 (toList!5515 lm!2023)))) lambda!205267)))

(declare-fun lt!1842613 () Unit!123015)

(assert (=> b!4682926 (= lt!1842613 lt!1842616)))

(assert (=> b!4682926 call!327292))

(declare-fun lt!1842602 () Unit!123015)

(declare-fun Unit!123020 () Unit!123015)

(assert (=> b!4682926 (= lt!1842602 Unit!123020)))

(assert (=> b!4682926 (forall!11256 (t!359587 (_2!30118 (h!58521 (toList!5515 lm!2023)))) lambda!205268)))

(declare-fun lt!1842610 () Unit!123015)

(declare-fun Unit!123021 () Unit!123015)

(assert (=> b!4682926 (= lt!1842610 Unit!123021)))

(declare-fun lt!1842604 () Unit!123015)

(declare-fun Unit!123022 () Unit!123015)

(assert (=> b!4682926 (= lt!1842604 Unit!123022)))

(declare-fun lt!1842609 () Unit!123015)

(declare-fun forallContained!3363 (List!52425 Int tuple2!53646) Unit!123015)

(assert (=> b!4682926 (= lt!1842609 (forallContained!3363 (toList!5516 lt!1842599) lambda!205268 (h!58520 (_2!30118 (h!58521 (toList!5515 lm!2023))))))))

(assert (=> b!4682926 (contains!15435 lt!1842599 (_1!30117 (h!58520 (_2!30118 (h!58521 (toList!5515 lm!2023))))))))

(declare-fun lt!1842611 () Unit!123015)

(declare-fun Unit!123023 () Unit!123015)

(assert (=> b!4682926 (= lt!1842611 Unit!123023)))

(assert (=> b!4682926 (contains!15435 lt!1842612 (_1!30117 (h!58520 (_2!30118 (h!58521 (toList!5515 lm!2023))))))))

(declare-fun lt!1842598 () Unit!123015)

(declare-fun Unit!123024 () Unit!123015)

(assert (=> b!4682926 (= lt!1842598 Unit!123024)))

(assert (=> b!4682926 (forall!11256 (_2!30118 (h!58521 (toList!5515 lm!2023))) lambda!205268)))

(declare-fun lt!1842608 () Unit!123015)

(declare-fun Unit!123025 () Unit!123015)

(assert (=> b!4682926 (= lt!1842608 Unit!123025)))

(declare-fun call!327291 () Bool)

(assert (=> b!4682926 call!327291))

(declare-fun lt!1842615 () Unit!123015)

(declare-fun Unit!123026 () Unit!123015)

(assert (=> b!4682926 (= lt!1842615 Unit!123026)))

(declare-fun lt!1842607 () Unit!123015)

(declare-fun Unit!123027 () Unit!123015)

(assert (=> b!4682926 (= lt!1842607 Unit!123027)))

(declare-fun lt!1842618 () Unit!123015)

(declare-fun addForallContainsKeyThenBeforeAdding!670 (ListMap!4879 ListMap!4879 K!13683 V!13929) Unit!123015)

(assert (=> b!4682926 (= lt!1842618 (addForallContainsKeyThenBeforeAdding!670 (extractMap!1839 (t!359588 (toList!5515 lm!2023))) lt!1842612 (_1!30117 (h!58520 (_2!30118 (h!58521 (toList!5515 lm!2023))))) (_2!30117 (h!58520 (_2!30118 (h!58521 (toList!5515 lm!2023)))))))))

(assert (=> b!4682926 (forall!11256 (toList!5516 (extractMap!1839 (t!359588 (toList!5515 lm!2023)))) lambda!205268)))

(declare-fun lt!1842603 () Unit!123015)

(assert (=> b!4682926 (= lt!1842603 lt!1842618)))

(assert (=> b!4682926 (forall!11256 (toList!5516 (extractMap!1839 (t!359588 (toList!5515 lm!2023)))) lambda!205268)))

(declare-fun lt!1842601 () Unit!123015)

(declare-fun Unit!123028 () Unit!123015)

(assert (=> b!4682926 (= lt!1842601 Unit!123028)))

(declare-fun res!1973998 () Bool)

(assert (=> b!4682926 (= res!1973998 (forall!11256 (_2!30118 (h!58521 (toList!5515 lm!2023))) lambda!205268))))

(declare-fun e!2921644 () Bool)

(assert (=> b!4682926 (=> (not res!1973998) (not e!2921644))))

(assert (=> b!4682926 e!2921644))

(declare-fun lt!1842617 () Unit!123015)

(declare-fun Unit!123029 () Unit!123015)

(assert (=> b!4682926 (= lt!1842617 Unit!123029)))

(declare-fun bm!327286 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!671 (ListMap!4879) Unit!123015)

(assert (=> bm!327286 (= call!327290 (lemmaContainsAllItsOwnKeys!671 (extractMap!1839 (t!359588 (toList!5515 lm!2023)))))))

(assert (=> b!4682928 (= e!2921643 (extractMap!1839 (t!359588 (toList!5515 lm!2023))))))

(declare-fun lt!1842605 () Unit!123015)

(assert (=> b!4682928 (= lt!1842605 call!327290)))

(assert (=> b!4682928 call!327292))

(declare-fun lt!1842606 () Unit!123015)

(assert (=> b!4682928 (= lt!1842606 lt!1842605)))

(assert (=> b!4682928 call!327291))

(declare-fun lt!1842600 () Unit!123015)

(declare-fun Unit!123030 () Unit!123015)

(assert (=> b!4682928 (= lt!1842600 Unit!123030)))

(declare-fun b!4682929 () Bool)

(declare-fun e!2921645 () Bool)

(declare-fun invariantList!1383 (List!52425) Bool)

(assert (=> b!4682929 (= e!2921645 (invariantList!1383 (toList!5516 lt!1842614)))))

(declare-fun bm!327287 () Bool)

(assert (=> bm!327287 (= call!327291 (forall!11256 (ite c!800878 (toList!5516 (extractMap!1839 (t!359588 (toList!5515 lm!2023)))) (toList!5516 lt!1842599)) (ite c!800878 lambda!205266 lambda!205268)))))

(declare-fun b!4682930 () Bool)

(assert (=> b!4682930 (= e!2921644 (forall!11256 (toList!5516 (extractMap!1839 (t!359588 (toList!5515 lm!2023)))) lambda!205268))))

(declare-fun b!4682927 () Bool)

(declare-fun res!1973997 () Bool)

(assert (=> b!4682927 (=> (not res!1973997) (not e!2921645))))

(assert (=> b!4682927 (= res!1973997 (forall!11256 (toList!5516 (extractMap!1839 (t!359588 (toList!5515 lm!2023)))) lambda!205269))))

(assert (=> d!1488307 e!2921645))

(declare-fun res!1973996 () Bool)

(assert (=> d!1488307 (=> (not res!1973996) (not e!2921645))))

(assert (=> d!1488307 (= res!1973996 (forall!11256 (_2!30118 (h!58521 (toList!5515 lm!2023))) lambda!205269))))

(assert (=> d!1488307 (= lt!1842614 e!2921643)))

(assert (=> d!1488307 (= c!800878 (is-Nil!52301 (_2!30118 (h!58521 (toList!5515 lm!2023)))))))

(assert (=> d!1488307 (noDuplicateKeys!1813 (_2!30118 (h!58521 (toList!5515 lm!2023))))))

(assert (=> d!1488307 (= (addToMapMapFromBucket!1245 (_2!30118 (h!58521 (toList!5515 lm!2023))) (extractMap!1839 (t!359588 (toList!5515 lm!2023)))) lt!1842614)))

(assert (= (and d!1488307 c!800878) b!4682928))

(assert (= (and d!1488307 (not c!800878)) b!4682926))

(assert (= (and b!4682926 res!1973998) b!4682930))

(assert (= (or b!4682928 b!4682926) bm!327286))

(assert (= (or b!4682928 b!4682926) bm!327287))

(assert (= (or b!4682928 b!4682926) bm!327285))

(assert (= (and d!1488307 res!1973996) b!4682927))

(assert (= (and b!4682927 res!1973997) b!4682929))

(declare-fun m!5581437 () Bool)

(assert (=> b!4682929 m!5581437))

(declare-fun m!5581439 () Bool)

(assert (=> b!4682930 m!5581439))

(assert (=> bm!327286 m!5581185))

(declare-fun m!5581441 () Bool)

(assert (=> bm!327286 m!5581441))

(declare-fun m!5581443 () Bool)

(assert (=> d!1488307 m!5581443))

(declare-fun m!5581445 () Bool)

(assert (=> d!1488307 m!5581445))

(declare-fun m!5581447 () Bool)

(assert (=> b!4682926 m!5581447))

(declare-fun m!5581449 () Bool)

(assert (=> b!4682926 m!5581449))

(assert (=> b!4682926 m!5581439))

(assert (=> b!4682926 m!5581185))

(declare-fun m!5581451 () Bool)

(assert (=> b!4682926 m!5581451))

(assert (=> b!4682926 m!5581447))

(assert (=> b!4682926 m!5581439))

(declare-fun m!5581453 () Bool)

(assert (=> b!4682926 m!5581453))

(assert (=> b!4682926 m!5581185))

(declare-fun m!5581455 () Bool)

(assert (=> b!4682926 m!5581455))

(declare-fun m!5581457 () Bool)

(assert (=> b!4682926 m!5581457))

(declare-fun m!5581459 () Bool)

(assert (=> b!4682926 m!5581459))

(declare-fun m!5581461 () Bool)

(assert (=> b!4682926 m!5581461))

(assert (=> b!4682926 m!5581451))

(declare-fun m!5581463 () Bool)

(assert (=> b!4682926 m!5581463))

(declare-fun m!5581465 () Bool)

(assert (=> bm!327285 m!5581465))

(declare-fun m!5581467 () Bool)

(assert (=> b!4682927 m!5581467))

(assert (=> bm!327287 m!5581465))

(assert (=> b!4682696 d!1488307))

(declare-fun bs!1083657 () Bool)

(declare-fun d!1488327 () Bool)

(assert (= bs!1083657 (and d!1488327 start!472946)))

(declare-fun lambda!205272 () Int)

(assert (=> bs!1083657 (= lambda!205272 lambda!205202)))

(declare-fun bs!1083658 () Bool)

(assert (= bs!1083658 (and d!1488327 d!1488275)))

(assert (=> bs!1083658 (= lambda!205272 lambda!205223)))

(declare-fun bs!1083659 () Bool)

(assert (= bs!1083659 (and d!1488327 d!1488289)))

(assert (=> bs!1083659 (= lambda!205272 lambda!205226)))

(declare-fun lt!1842621 () ListMap!4879)

(assert (=> d!1488327 (invariantList!1383 (toList!5516 lt!1842621))))

(declare-fun e!2921648 () ListMap!4879)

(assert (=> d!1488327 (= lt!1842621 e!2921648)))

(declare-fun c!800881 () Bool)

(assert (=> d!1488327 (= c!800881 (is-Cons!52302 (t!359588 (toList!5515 lm!2023))))))

(assert (=> d!1488327 (forall!11254 (t!359588 (toList!5515 lm!2023)) lambda!205272)))

(assert (=> d!1488327 (= (extractMap!1839 (t!359588 (toList!5515 lm!2023))) lt!1842621)))

(declare-fun b!4682937 () Bool)

(assert (=> b!4682937 (= e!2921648 (addToMapMapFromBucket!1245 (_2!30118 (h!58521 (t!359588 (toList!5515 lm!2023)))) (extractMap!1839 (t!359588 (t!359588 (toList!5515 lm!2023))))))))

(declare-fun b!4682938 () Bool)

(assert (=> b!4682938 (= e!2921648 (ListMap!4880 Nil!52301))))

(assert (= (and d!1488327 c!800881) b!4682937))

(assert (= (and d!1488327 (not c!800881)) b!4682938))

(declare-fun m!5581469 () Bool)

(assert (=> d!1488327 m!5581469))

(declare-fun m!5581471 () Bool)

(assert (=> d!1488327 m!5581471))

(declare-fun m!5581473 () Bool)

(assert (=> b!4682937 m!5581473))

(assert (=> b!4682937 m!5581473))

(declare-fun m!5581475 () Bool)

(assert (=> b!4682937 m!5581475))

(assert (=> b!4682696 d!1488327))

(declare-fun bs!1083660 () Bool)

(declare-fun d!1488329 () Bool)

(assert (= bs!1083660 (and d!1488329 start!472946)))

(declare-fun lambda!205275 () Int)

(assert (=> bs!1083660 (not (= lambda!205275 lambda!205202))))

(declare-fun bs!1083661 () Bool)

(assert (= bs!1083661 (and d!1488329 d!1488275)))

(assert (=> bs!1083661 (not (= lambda!205275 lambda!205223))))

(declare-fun bs!1083662 () Bool)

(assert (= bs!1083662 (and d!1488329 d!1488289)))

(assert (=> bs!1083662 (not (= lambda!205275 lambda!205226))))

(declare-fun bs!1083663 () Bool)

(assert (= bs!1083663 (and d!1488329 d!1488327)))

(assert (=> bs!1083663 (not (= lambda!205275 lambda!205272))))

(assert (=> d!1488329 true))

(assert (=> d!1488329 (= (allKeysSameHashInMap!1727 lm!2023 hashF!1323) (forall!11254 (toList!5515 lm!2023) lambda!205275))))

(declare-fun bs!1083664 () Bool)

(assert (= bs!1083664 d!1488329))

(declare-fun m!5581477 () Bool)

(assert (=> bs!1083664 m!5581477))

(assert (=> b!4682685 d!1488329))

(declare-fun d!1488331 () Bool)

(declare-fun res!1974003 () Bool)

(declare-fun e!2921653 () Bool)

(assert (=> d!1488331 (=> res!1974003 e!2921653)))

(assert (=> d!1488331 (= res!1974003 (is-Nil!52302 (toList!5515 lm!2023)))))

(assert (=> d!1488331 (= (forall!11254 (toList!5515 lm!2023) lambda!205202) e!2921653)))

(declare-fun b!4682945 () Bool)

(declare-fun e!2921654 () Bool)

(assert (=> b!4682945 (= e!2921653 e!2921654)))

(declare-fun res!1974004 () Bool)

(assert (=> b!4682945 (=> (not res!1974004) (not e!2921654))))

(assert (=> b!4682945 (= res!1974004 (dynLambda!21686 lambda!205202 (h!58521 (toList!5515 lm!2023))))))

(declare-fun b!4682946 () Bool)

(assert (=> b!4682946 (= e!2921654 (forall!11254 (t!359588 (toList!5515 lm!2023)) lambda!205202))))

(assert (= (and d!1488331 (not res!1974003)) b!4682945))

(assert (= (and b!4682945 res!1974004) b!4682946))

(declare-fun b_lambda!176729 () Bool)

(assert (=> (not b_lambda!176729) (not b!4682945)))

(declare-fun m!5581479 () Bool)

(assert (=> b!4682945 m!5581479))

(declare-fun m!5581481 () Bool)

(assert (=> b!4682946 m!5581481))

(assert (=> start!472946 d!1488331))

(declare-fun d!1488333 () Bool)

(declare-fun isStrictlySorted!623 (List!52426) Bool)

(assert (=> d!1488333 (= (inv!67558 lm!2023) (isStrictlySorted!623 (toList!5515 lm!2023)))))

(declare-fun bs!1083665 () Bool)

(assert (= bs!1083665 d!1488333))

(declare-fun m!5581483 () Bool)

(assert (=> bs!1083665 m!5581483))

(assert (=> start!472946 d!1488333))

(declare-fun b!4682965 () Bool)

(assert (=> b!4682965 false))

(declare-fun lt!1842642 () Unit!123015)

(declare-fun lt!1842644 () Unit!123015)

(assert (=> b!4682965 (= lt!1842642 lt!1842644)))

(declare-fun containsKey!2963 (List!52425 K!13683) Bool)

(assert (=> b!4682965 (containsKey!2963 (toList!5516 lt!1842409) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!822 (List!52425 K!13683) Unit!123015)

(assert (=> b!4682965 (= lt!1842644 (lemmaInGetKeysListThenContainsKey!822 (toList!5516 lt!1842409) key!4653))))

(declare-fun e!2921670 () Unit!123015)

(declare-fun Unit!123031 () Unit!123015)

(assert (=> b!4682965 (= e!2921670 Unit!123031)))

(declare-fun b!4682966 () Bool)

(declare-fun e!2921671 () Unit!123015)

(assert (=> b!4682966 (= e!2921671 e!2921670)))

(declare-fun c!800888 () Bool)

(declare-fun call!327295 () Bool)

(assert (=> b!4682966 (= c!800888 call!327295)))

(declare-fun b!4682967 () Bool)

(declare-fun e!2921669 () Bool)

(declare-datatypes ((List!52429 0))(
  ( (Nil!52305) (Cons!52305 (h!58526 K!13683) (t!359591 List!52429)) )
))
(declare-fun contains!15441 (List!52429 K!13683) Bool)

(declare-fun keys!18646 (ListMap!4879) List!52429)

(assert (=> b!4682967 (= e!2921669 (not (contains!15441 (keys!18646 lt!1842409) key!4653)))))

(declare-fun b!4682968 () Bool)

(declare-fun e!2921668 () Bool)

(assert (=> b!4682968 (= e!2921668 (contains!15441 (keys!18646 lt!1842409) key!4653))))

(declare-fun d!1488335 () Bool)

(declare-fun e!2921667 () Bool)

(assert (=> d!1488335 e!2921667))

(declare-fun res!1974012 () Bool)

(assert (=> d!1488335 (=> res!1974012 e!2921667)))

(assert (=> d!1488335 (= res!1974012 e!2921669)))

(declare-fun res!1974013 () Bool)

(assert (=> d!1488335 (=> (not res!1974013) (not e!2921669))))

(declare-fun lt!1842640 () Bool)

(assert (=> d!1488335 (= res!1974013 (not lt!1842640))))

(declare-fun lt!1842645 () Bool)

(assert (=> d!1488335 (= lt!1842640 lt!1842645)))

(declare-fun lt!1842639 () Unit!123015)

(assert (=> d!1488335 (= lt!1842639 e!2921671)))

(declare-fun c!800890 () Bool)

(assert (=> d!1488335 (= c!800890 lt!1842645)))

(assert (=> d!1488335 (= lt!1842645 (containsKey!2963 (toList!5516 lt!1842409) key!4653))))

(assert (=> d!1488335 (= (contains!15435 lt!1842409 key!4653) lt!1842640)))

(declare-fun bm!327290 () Bool)

(declare-fun e!2921672 () List!52429)

(assert (=> bm!327290 (= call!327295 (contains!15441 e!2921672 key!4653))))

(declare-fun c!800889 () Bool)

(assert (=> bm!327290 (= c!800889 c!800890)))

(declare-fun b!4682969 () Bool)

(declare-fun lt!1842638 () Unit!123015)

(assert (=> b!4682969 (= e!2921671 lt!1842638)))

(declare-fun lt!1842641 () Unit!123015)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1619 (List!52425 K!13683) Unit!123015)

(assert (=> b!4682969 (= lt!1842641 (lemmaContainsKeyImpliesGetValueByKeyDefined!1619 (toList!5516 lt!1842409) key!4653))))

(declare-datatypes ((Option!11987 0))(
  ( (None!11986) (Some!11986 (v!46353 V!13929)) )
))
(declare-fun isDefined!9242 (Option!11987) Bool)

(declare-fun getValueByKey!1727 (List!52425 K!13683) Option!11987)

(assert (=> b!4682969 (isDefined!9242 (getValueByKey!1727 (toList!5516 lt!1842409) key!4653))))

(declare-fun lt!1842643 () Unit!123015)

(assert (=> b!4682969 (= lt!1842643 lt!1842641)))

(declare-fun lemmaInListThenGetKeysListContains!818 (List!52425 K!13683) Unit!123015)

(assert (=> b!4682969 (= lt!1842638 (lemmaInListThenGetKeysListContains!818 (toList!5516 lt!1842409) key!4653))))

(assert (=> b!4682969 call!327295))

(declare-fun b!4682970 () Bool)

(assert (=> b!4682970 (= e!2921667 e!2921668)))

(declare-fun res!1974011 () Bool)

(assert (=> b!4682970 (=> (not res!1974011) (not e!2921668))))

(assert (=> b!4682970 (= res!1974011 (isDefined!9242 (getValueByKey!1727 (toList!5516 lt!1842409) key!4653)))))

(declare-fun b!4682971 () Bool)

(declare-fun getKeysList!823 (List!52425) List!52429)

(assert (=> b!4682971 (= e!2921672 (getKeysList!823 (toList!5516 lt!1842409)))))

(declare-fun b!4682972 () Bool)

(assert (=> b!4682972 (= e!2921672 (keys!18646 lt!1842409))))

(declare-fun b!4682973 () Bool)

(declare-fun Unit!123032 () Unit!123015)

(assert (=> b!4682973 (= e!2921670 Unit!123032)))

(assert (= (and d!1488335 c!800890) b!4682969))

(assert (= (and d!1488335 (not c!800890)) b!4682966))

(assert (= (and b!4682966 c!800888) b!4682965))

(assert (= (and b!4682966 (not c!800888)) b!4682973))

(assert (= (or b!4682969 b!4682966) bm!327290))

(assert (= (and bm!327290 c!800889) b!4682971))

(assert (= (and bm!327290 (not c!800889)) b!4682972))

(assert (= (and d!1488335 res!1974013) b!4682967))

(assert (= (and d!1488335 (not res!1974012)) b!4682970))

(assert (= (and b!4682970 res!1974011) b!4682968))

(declare-fun m!5581485 () Bool)

(assert (=> b!4682971 m!5581485))

(declare-fun m!5581487 () Bool)

(assert (=> b!4682967 m!5581487))

(assert (=> b!4682967 m!5581487))

(declare-fun m!5581489 () Bool)

(assert (=> b!4682967 m!5581489))

(assert (=> b!4682968 m!5581487))

(assert (=> b!4682968 m!5581487))

(assert (=> b!4682968 m!5581489))

(assert (=> b!4682972 m!5581487))

(declare-fun m!5581491 () Bool)

(assert (=> d!1488335 m!5581491))

(assert (=> b!4682965 m!5581491))

(declare-fun m!5581493 () Bool)

(assert (=> b!4682965 m!5581493))

(declare-fun m!5581495 () Bool)

(assert (=> b!4682969 m!5581495))

(declare-fun m!5581497 () Bool)

(assert (=> b!4682969 m!5581497))

(assert (=> b!4682969 m!5581497))

(declare-fun m!5581499 () Bool)

(assert (=> b!4682969 m!5581499))

(declare-fun m!5581501 () Bool)

(assert (=> b!4682969 m!5581501))

(assert (=> b!4682970 m!5581497))

(assert (=> b!4682970 m!5581497))

(assert (=> b!4682970 m!5581499))

(declare-fun m!5581503 () Bool)

(assert (=> bm!327290 m!5581503))

(assert (=> b!4682686 d!1488335))

(declare-fun bs!1083666 () Bool)

(declare-fun d!1488337 () Bool)

(assert (= bs!1083666 (and d!1488337 d!1488327)))

(declare-fun lambda!205276 () Int)

(assert (=> bs!1083666 (= lambda!205276 lambda!205272)))

(declare-fun bs!1083667 () Bool)

(assert (= bs!1083667 (and d!1488337 d!1488275)))

(assert (=> bs!1083667 (= lambda!205276 lambda!205223)))

(declare-fun bs!1083668 () Bool)

(assert (= bs!1083668 (and d!1488337 d!1488289)))

(assert (=> bs!1083668 (= lambda!205276 lambda!205226)))

(declare-fun bs!1083669 () Bool)

(assert (= bs!1083669 (and d!1488337 d!1488329)))

(assert (=> bs!1083669 (not (= lambda!205276 lambda!205275))))

(declare-fun bs!1083670 () Bool)

(assert (= bs!1083670 (and d!1488337 start!472946)))

(assert (=> bs!1083670 (= lambda!205276 lambda!205202)))

(declare-fun lt!1842646 () ListMap!4879)

(assert (=> d!1488337 (invariantList!1383 (toList!5516 lt!1842646))))

(declare-fun e!2921673 () ListMap!4879)

(assert (=> d!1488337 (= lt!1842646 e!2921673)))

(declare-fun c!800891 () Bool)

(assert (=> d!1488337 (= c!800891 (is-Cons!52302 (toList!5515 lm!2023)))))

(assert (=> d!1488337 (forall!11254 (toList!5515 lm!2023) lambda!205276)))

(assert (=> d!1488337 (= (extractMap!1839 (toList!5515 lm!2023)) lt!1842646)))

(declare-fun b!4682974 () Bool)

(assert (=> b!4682974 (= e!2921673 (addToMapMapFromBucket!1245 (_2!30118 (h!58521 (toList!5515 lm!2023))) (extractMap!1839 (t!359588 (toList!5515 lm!2023)))))))

(declare-fun b!4682975 () Bool)

(assert (=> b!4682975 (= e!2921673 (ListMap!4880 Nil!52301))))

(assert (= (and d!1488337 c!800891) b!4682974))

(assert (= (and d!1488337 (not c!800891)) b!4682975))

(declare-fun m!5581505 () Bool)

(assert (=> d!1488337 m!5581505))

(declare-fun m!5581507 () Bool)

(assert (=> d!1488337 m!5581507))

(assert (=> b!4682974 m!5581185))

(assert (=> b!4682974 m!5581185))

(assert (=> b!4682974 m!5581187))

(assert (=> b!4682686 d!1488337))

(declare-fun d!1488339 () Bool)

(assert (=> d!1488339 (= (head!9907 (toList!5515 lm!2023)) (h!58521 (toList!5515 lm!2023)))))

(assert (=> b!4682689 d!1488339))

(declare-fun b!4682980 () Bool)

(declare-fun e!2921676 () Bool)

(declare-fun tp!1345302 () Bool)

(declare-fun tp!1345303 () Bool)

(assert (=> b!4682980 (= e!2921676 (and tp!1345302 tp!1345303))))

(assert (=> b!4682690 (= tp!1345288 e!2921676)))

(assert (= (and b!4682690 (is-Cons!52302 (toList!5515 lm!2023))) b!4682980))

(declare-fun tp!1345306 () Bool)

(declare-fun b!4682985 () Bool)

(declare-fun e!2921679 () Bool)

(assert (=> b!4682985 (= e!2921679 (and tp_is_empty!30545 tp_is_empty!30547 tp!1345306))))

(assert (=> b!4682694 (= tp!1345287 e!2921679)))

(assert (= (and b!4682694 (is-Cons!52301 (t!359587 newBucket!218))) b!4682985))

(declare-fun e!2921680 () Bool)

(declare-fun b!4682986 () Bool)

(declare-fun tp!1345307 () Bool)

(assert (=> b!4682986 (= e!2921680 (and tp_is_empty!30545 tp_is_empty!30547 tp!1345307))))

(assert (=> b!4682683 (= tp!1345286 e!2921680)))

(assert (= (and b!4682683 (is-Cons!52301 (t!359587 oldBucket!34))) b!4682986))

(declare-fun b_lambda!176731 () Bool)

(assert (= b_lambda!176729 (or start!472946 b_lambda!176731)))

(declare-fun bs!1083671 () Bool)

(declare-fun d!1488341 () Bool)

(assert (= bs!1083671 (and d!1488341 start!472946)))

(assert (=> bs!1083671 (= (dynLambda!21686 lambda!205202 (h!58521 (toList!5515 lm!2023))) (noDuplicateKeys!1813 (_2!30118 (h!58521 (toList!5515 lm!2023)))))))

(assert (=> bs!1083671 m!5581445))

(assert (=> b!4682945 d!1488341))

(declare-fun b_lambda!176733 () Bool)

(assert (= b_lambda!176725 (or start!472946 b_lambda!176733)))

(declare-fun bs!1083672 () Bool)

(declare-fun d!1488343 () Bool)

(assert (= bs!1083672 (and d!1488343 start!472946)))

(assert (=> bs!1083672 (= (dynLambda!21686 lambda!205202 lt!1842415) (noDuplicateKeys!1813 (_2!30118 lt!1842415)))))

(declare-fun m!5581509 () Bool)

(assert (=> bs!1083672 m!5581509))

(assert (=> d!1488271 d!1488343))

(push 1)

(assert (not d!1488255))

(assert (not b!4682937))

(assert (not b!4682926))

(assert (not b!4682985))

(assert (not b!4682755))

(assert (not b!4682800))

(assert (not b!4682927))

(assert (not bm!327290))

(assert (not d!1488269))

(assert (not b!4682967))

(assert (not d!1488285))

(assert (not b!4682801))

(assert (not d!1488337))

(assert (not b!4682970))

(assert (not b!4682875))

(assert (not d!1488295))

(assert (not b!4682776))

(assert (not d!1488253))

(assert (not d!1488307))

(assert (not b!4682968))

(assert (not b!4682867))

(assert (not b_lambda!176733))

(assert (not b!4682980))

(assert (not bs!1083672))

(assert (not b!4682965))

(assert (not b!4682847))

(assert (not d!1488305))

(assert (not b!4682798))

(assert (not b!4682974))

(assert (not b!4682873))

(assert (not b!4682874))

(assert (not b!4682849))

(assert (not b_lambda!176731))

(assert (not bm!327287))

(assert (not d!1488275))

(assert (not b!4682856))

(assert (not d!1488297))

(assert (not b!4682848))

(assert (not bm!327285))

(assert (not b!4682876))

(assert (not bm!327286))

(assert (not b!4682850))

(assert (not b!4682930))

(assert (not d!1488291))

(assert (not d!1488249))

(assert (not b!4682811))

(assert (not d!1488335))

(assert (not d!1488303))

(assert (not d!1488289))

(assert tp_is_empty!30545)

(assert (not b!4682805))

(assert (not d!1488271))

(assert (not d!1488273))

(assert (not b!4682877))

(assert (not b!4682754))

(assert tp_is_empty!30547)

(assert (not b!4682972))

(assert (not d!1488329))

(assert (not b!4682865))

(assert (not b!4682971))

(assert (not b!4682863))

(assert (not b!4682803))

(assert (not b!4682946))

(assert (not b!4682929))

(assert (not b!4682969))

(assert (not bs!1083671))

(assert (not d!1488263))

(assert (not b!4682986))

(assert (not d!1488327))

(assert (not d!1488333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

