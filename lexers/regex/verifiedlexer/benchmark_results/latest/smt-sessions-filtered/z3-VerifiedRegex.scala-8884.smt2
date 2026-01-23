; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!475184 () Bool)

(assert start!475184)

(declare-fun b!4693596 () Bool)

(declare-fun res!1980331 () Bool)

(declare-fun e!2928017 () Bool)

(assert (=> b!4693596 (=> res!1980331 e!2928017)))

(declare-datatypes ((K!13825 0))(
  ( (K!13826 (val!19331 Int)) )
))
(declare-datatypes ((V!14071 0))(
  ( (V!14072 (val!19332 Int)) )
))
(declare-datatypes ((tuple2!53874 0))(
  ( (tuple2!53875 (_1!30231 K!13825) (_2!30231 V!14071)) )
))
(declare-datatypes ((List!52577 0))(
  ( (Nil!52453) (Cons!52453 (h!58710 tuple2!53874) (t!359765 List!52577)) )
))
(declare-datatypes ((ListMap!4993 0))(
  ( (ListMap!4994 (toList!5629 List!52577)) )
))
(declare-fun lt!1854176 () ListMap!4993)

(declare-fun lt!1854178 () tuple2!53874)

(declare-fun lt!1854182 () ListMap!4993)

(declare-fun eq!1029 (ListMap!4993 ListMap!4993) Bool)

(declare-fun +!2154 (ListMap!4993 tuple2!53874) ListMap!4993)

(assert (=> b!4693596 (= res!1980331 (not (eq!1029 lt!1854176 (+!2154 lt!1854182 lt!1854178))))))

(declare-fun b!4693597 () Bool)

(declare-fun res!1980321 () Bool)

(declare-fun e!2928016 () Bool)

(assert (=> b!4693597 (=> (not res!1980321) (not e!2928016))))

(declare-datatypes ((tuple2!53876 0))(
  ( (tuple2!53877 (_1!30232 (_ BitVec 64)) (_2!30232 List!52577)) )
))
(declare-datatypes ((List!52578 0))(
  ( (Nil!52454) (Cons!52454 (h!58711 tuple2!53876) (t!359766 List!52578)) )
))
(declare-datatypes ((ListLongMap!4159 0))(
  ( (ListLongMap!4160 (toList!5630 List!52578)) )
))
(declare-fun lm!2023 () ListLongMap!4159)

(get-info :version)

(assert (=> b!4693597 (= res!1980321 ((_ is Cons!52454) (toList!5630 lm!2023)))))

(declare-fun b!4693598 () Bool)

(declare-fun e!2928023 () Bool)

(declare-fun e!2928015 () Bool)

(assert (=> b!4693598 (= e!2928023 e!2928015)))

(declare-fun res!1980329 () Bool)

(assert (=> b!4693598 (=> (not res!1980329) (not e!2928015))))

(declare-fun lt!1854163 () ListMap!4993)

(declare-fun key!4653 () K!13825)

(declare-fun contains!15680 (ListMap!4993 K!13825) Bool)

(assert (=> b!4693598 (= res!1980329 (contains!15680 lt!1854163 key!4653))))

(declare-fun extractMap!1896 (List!52578) ListMap!4993)

(assert (=> b!4693598 (= lt!1854163 (extractMap!1896 (toList!5630 lm!2023)))))

(declare-fun b!4693599 () Bool)

(declare-fun e!2928018 () Bool)

(declare-fun lt!1854162 () List!52578)

(declare-fun lambda!208143 () Int)

(declare-fun forall!11349 (List!52578 Int) Bool)

(assert (=> b!4693599 (= e!2928018 (forall!11349 lt!1854162 lambda!208143))))

(declare-fun b!4693600 () Bool)

(declare-fun e!2928024 () Bool)

(declare-fun e!2928022 () Bool)

(assert (=> b!4693600 (= e!2928024 e!2928022)))

(declare-fun res!1980328 () Bool)

(assert (=> b!4693600 (=> res!1980328 e!2928022)))

(declare-fun lt!1854171 () List!52577)

(declare-fun lt!1854161 () List!52577)

(declare-fun removePairForKey!1465 (List!52577 K!13825) List!52577)

(assert (=> b!4693600 (= res!1980328 (not (= (removePairForKey!1465 lt!1854171 key!4653) lt!1854161)))))

(declare-fun newBucket!218 () List!52577)

(declare-fun tail!8635 (List!52577) List!52577)

(assert (=> b!4693600 (= lt!1854161 (tail!8635 newBucket!218))))

(declare-fun oldBucket!34 () List!52577)

(assert (=> b!4693600 (= lt!1854171 (tail!8635 oldBucket!34))))

(declare-fun b!4693601 () Bool)

(declare-fun e!2928021 () Bool)

(declare-fun tp!1346179 () Bool)

(assert (=> b!4693601 (= e!2928021 tp!1346179)))

(declare-fun b!4693603 () Bool)

(assert (=> b!4693603 (= e!2928017 e!2928018)))

(declare-fun res!1980325 () Bool)

(assert (=> b!4693603 (=> res!1980325 e!2928018)))

(declare-fun lt!1854160 () tuple2!53876)

(declare-fun lt!1854175 () ListMap!4993)

(declare-fun -!674 (ListMap!4993 K!13825) ListMap!4993)

(assert (=> b!4693603 (= res!1980325 (not (eq!1029 (extractMap!1896 (Cons!52454 lt!1854160 (t!359766 (toList!5630 lm!2023)))) (-!674 lt!1854175 key!4653))))))

(declare-fun lt!1854180 () List!52578)

(declare-fun lt!1854166 () tuple2!53876)

(assert (=> b!4693603 (eq!1029 (extractMap!1896 (Cons!52454 lt!1854160 lt!1854180)) (-!674 (extractMap!1896 (Cons!52454 lt!1854166 lt!1854180)) key!4653))))

(declare-fun tail!8636 (List!52578) List!52578)

(assert (=> b!4693603 (= lt!1854180 (tail!8636 lt!1854162))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4693603 (= lt!1854160 (tuple2!53877 hash!405 lt!1854161))))

(declare-datatypes ((Unit!124777 0))(
  ( (Unit!124778) )
))
(declare-fun lt!1854172 () Unit!124777)

(declare-datatypes ((Hashable!6239 0))(
  ( (HashableExt!6238 (__x!31942 Int)) )
))
(declare-fun hashF!1323 () Hashable!6239)

(declare-fun lt!1854169 () ListLongMap!4159)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!44 (ListLongMap!4159 (_ BitVec 64) List!52577 List!52577 K!13825 Hashable!6239) Unit!124777)

(assert (=> b!4693603 (= lt!1854172 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!44 lt!1854169 hash!405 (t!359765 oldBucket!34) lt!1854161 key!4653 hashF!1323))))

(declare-fun b!4693604 () Bool)

(declare-fun e!2928014 () Bool)

(assert (=> b!4693604 (= e!2928015 e!2928014)))

(declare-fun res!1980332 () Bool)

(assert (=> b!4693604 (=> (not res!1980332) (not e!2928014))))

(declare-fun lt!1854181 () (_ BitVec 64))

(assert (=> b!4693604 (= res!1980332 (= lt!1854181 hash!405))))

(declare-fun hash!4099 (Hashable!6239 K!13825) (_ BitVec 64))

(assert (=> b!4693604 (= lt!1854181 (hash!4099 hashF!1323 key!4653))))

(declare-fun b!4693605 () Bool)

(declare-fun res!1980335 () Bool)

(assert (=> b!4693605 (=> res!1980335 e!2928017)))

(assert (=> b!4693605 (= res!1980335 (not (= (h!58710 oldBucket!34) lt!1854178)))))

(declare-fun b!4693606 () Bool)

(declare-fun res!1980337 () Bool)

(assert (=> b!4693606 (=> res!1980337 e!2928022)))

(assert (=> b!4693606 (= res!1980337 (not (= (removePairForKey!1465 (t!359765 oldBucket!34) key!4653) lt!1854161)))))

(declare-fun b!4693607 () Bool)

(assert (=> b!4693607 (= e!2928022 e!2928017)))

(declare-fun res!1980324 () Bool)

(assert (=> b!4693607 (=> res!1980324 e!2928017)))

(assert (=> b!4693607 (= res!1980324 (not (eq!1029 lt!1854176 (+!2154 lt!1854182 (h!58710 oldBucket!34)))))))

(assert (=> b!4693607 (= lt!1854182 (extractMap!1896 (Cons!52454 (tuple2!53877 hash!405 lt!1854171) (t!359766 (toList!5630 lm!2023)))))))

(declare-fun lt!1854167 () tuple2!53876)

(assert (=> b!4693607 (= lt!1854176 (extractMap!1896 (Cons!52454 lt!1854167 (t!359766 (toList!5630 lm!2023)))))))

(declare-fun lt!1854164 () ListMap!4993)

(declare-fun addToMapMapFromBucket!1302 (List!52577 ListMap!4993) ListMap!4993)

(assert (=> b!4693607 (eq!1029 (addToMapMapFromBucket!1302 (Cons!52453 lt!1854178 lt!1854161) lt!1854164) (+!2154 (addToMapMapFromBucket!1302 lt!1854161 lt!1854164) lt!1854178))))

(declare-fun lt!1854183 () Unit!124777)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!278 (tuple2!53874 List!52577 ListMap!4993) Unit!124777)

(assert (=> b!4693607 (= lt!1854183 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!278 lt!1854178 lt!1854161 lt!1854164))))

(declare-fun head!10003 (List!52577) tuple2!53874)

(assert (=> b!4693607 (= lt!1854178 (head!10003 newBucket!218))))

(declare-fun lt!1854184 () tuple2!53874)

(assert (=> b!4693607 (eq!1029 (addToMapMapFromBucket!1302 (Cons!52453 lt!1854184 lt!1854171) lt!1854164) (+!2154 (addToMapMapFromBucket!1302 lt!1854171 lt!1854164) lt!1854184))))

(declare-fun lt!1854168 () Unit!124777)

(assert (=> b!4693607 (= lt!1854168 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!278 lt!1854184 lt!1854171 lt!1854164))))

(assert (=> b!4693607 (= lt!1854184 (head!10003 oldBucket!34))))

(assert (=> b!4693607 (contains!15680 lt!1854175 key!4653)))

(assert (=> b!4693607 (= lt!1854175 (extractMap!1896 lt!1854162))))

(declare-fun lt!1854173 () Unit!124777)

(declare-fun lemmaListContainsThenExtractedMapContains!462 (ListLongMap!4159 K!13825 Hashable!6239) Unit!124777)

(assert (=> b!4693607 (= lt!1854173 (lemmaListContainsThenExtractedMapContains!462 lt!1854169 key!4653 hashF!1323))))

(assert (=> b!4693607 (= lt!1854169 (ListLongMap!4160 lt!1854162))))

(assert (=> b!4693607 (= lt!1854162 (Cons!52454 lt!1854166 (t!359766 (toList!5630 lm!2023))))))

(assert (=> b!4693607 (= lt!1854166 (tuple2!53877 hash!405 (t!359765 oldBucket!34)))))

(declare-fun b!4693608 () Bool)

(assert (=> b!4693608 (= e!2928014 e!2928016)))

(declare-fun res!1980326 () Bool)

(assert (=> b!4693608 (=> (not res!1980326) (not e!2928016))))

(declare-fun head!10004 (List!52578) tuple2!53876)

(assert (=> b!4693608 (= res!1980326 (= (head!10004 (toList!5630 lm!2023)) lt!1854167))))

(assert (=> b!4693608 (= lt!1854167 (tuple2!53877 hash!405 oldBucket!34))))

(declare-fun b!4693609 () Bool)

(declare-fun res!1980327 () Bool)

(assert (=> b!4693609 (=> (not res!1980327) (not e!2928023))))

(declare-fun noDuplicateKeys!1870 (List!52577) Bool)

(assert (=> b!4693609 (= res!1980327 (noDuplicateKeys!1870 newBucket!218))))

(declare-fun b!4693610 () Bool)

(declare-fun res!1980338 () Bool)

(assert (=> b!4693610 (=> (not res!1980338) (not e!2928023))))

(assert (=> b!4693610 (= res!1980338 (= (removePairForKey!1465 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4693611 () Bool)

(declare-fun e!2928019 () Bool)

(assert (=> b!4693611 (= e!2928019 e!2928024)))

(declare-fun res!1980339 () Bool)

(assert (=> b!4693611 (=> res!1980339 e!2928024)))

(declare-fun containsKey!3093 (List!52577 K!13825) Bool)

(assert (=> b!4693611 (= res!1980339 (not (containsKey!3093 (t!359765 oldBucket!34) key!4653)))))

(assert (=> b!4693611 (containsKey!3093 oldBucket!34 key!4653)))

(declare-fun lt!1854158 () Unit!124777)

(declare-fun lemmaGetPairDefinedThenContainsKey!222 (List!52577 K!13825 Hashable!6239) Unit!124777)

(assert (=> b!4693611 (= lt!1854158 (lemmaGetPairDefinedThenContainsKey!222 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1854174 () List!52577)

(declare-datatypes ((Option!12117 0))(
  ( (None!12116) (Some!12116 (v!46555 tuple2!53874)) )
))
(declare-fun isDefined!9372 (Option!12117) Bool)

(declare-fun getPair!474 (List!52577 K!13825) Option!12117)

(assert (=> b!4693611 (isDefined!9372 (getPair!474 lt!1854174 key!4653))))

(declare-fun lt!1854159 () tuple2!53876)

(declare-fun lt!1854165 () Unit!124777)

(declare-fun forallContained!3456 (List!52578 Int tuple2!53876) Unit!124777)

(assert (=> b!4693611 (= lt!1854165 (forallContained!3456 (toList!5630 lm!2023) lambda!208143 lt!1854159))))

(declare-fun contains!15681 (List!52578 tuple2!53876) Bool)

(assert (=> b!4693611 (contains!15681 (toList!5630 lm!2023) lt!1854159)))

(assert (=> b!4693611 (= lt!1854159 (tuple2!53877 lt!1854181 lt!1854174))))

(declare-fun lt!1854170 () Unit!124777)

(declare-fun lemmaGetValueImpliesTupleContained!279 (ListLongMap!4159 (_ BitVec 64) List!52577) Unit!124777)

(assert (=> b!4693611 (= lt!1854170 (lemmaGetValueImpliesTupleContained!279 lm!2023 lt!1854181 lt!1854174))))

(declare-fun apply!12353 (ListLongMap!4159 (_ BitVec 64)) List!52577)

(assert (=> b!4693611 (= lt!1854174 (apply!12353 lm!2023 lt!1854181))))

(declare-fun contains!15682 (ListLongMap!4159 (_ BitVec 64)) Bool)

(assert (=> b!4693611 (contains!15682 lm!2023 lt!1854181)))

(declare-fun lt!1854177 () Unit!124777)

(declare-fun lemmaInGenMapThenLongMapContainsHash!680 (ListLongMap!4159 K!13825 Hashable!6239) Unit!124777)

(assert (=> b!4693611 (= lt!1854177 (lemmaInGenMapThenLongMapContainsHash!680 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1854179 () Unit!124777)

(declare-fun lemmaInGenMapThenGetPairDefined!270 (ListLongMap!4159 K!13825 Hashable!6239) Unit!124777)

(assert (=> b!4693611 (= lt!1854179 (lemmaInGenMapThenGetPairDefined!270 lm!2023 key!4653 hashF!1323))))

(declare-fun tp_is_empty!30775 () Bool)

(declare-fun tp!1346181 () Bool)

(declare-fun b!4693612 () Bool)

(declare-fun e!2928020 () Bool)

(declare-fun tp_is_empty!30773 () Bool)

(assert (=> b!4693612 (= e!2928020 (and tp_is_empty!30773 tp_is_empty!30775 tp!1346181))))

(declare-fun tp!1346180 () Bool)

(declare-fun e!2928013 () Bool)

(declare-fun b!4693613 () Bool)

(assert (=> b!4693613 (= e!2928013 (and tp_is_empty!30773 tp_is_empty!30775 tp!1346180))))

(declare-fun b!4693614 () Bool)

(declare-fun res!1980323 () Bool)

(assert (=> b!4693614 (=> (not res!1980323) (not e!2928014))))

(declare-fun allKeysSameHashInMap!1784 (ListLongMap!4159 Hashable!6239) Bool)

(assert (=> b!4693614 (= res!1980323 (allKeysSameHashInMap!1784 lm!2023 hashF!1323))))

(declare-fun b!4693602 () Bool)

(assert (=> b!4693602 (= e!2928016 (not e!2928019))))

(declare-fun res!1980336 () Bool)

(assert (=> b!4693602 (=> res!1980336 e!2928019)))

(assert (=> b!4693602 (= res!1980336 (or (and ((_ is Cons!52453) oldBucket!34) (= (_1!30231 (h!58710 oldBucket!34)) key!4653)) (not ((_ is Cons!52453) oldBucket!34)) (= (_1!30231 (h!58710 oldBucket!34)) key!4653)))))

(assert (=> b!4693602 (= lt!1854163 (addToMapMapFromBucket!1302 (_2!30232 (h!58711 (toList!5630 lm!2023))) lt!1854164))))

(assert (=> b!4693602 (= lt!1854164 (extractMap!1896 (t!359766 (toList!5630 lm!2023))))))

(declare-fun tail!8637 (ListLongMap!4159) ListLongMap!4159)

(assert (=> b!4693602 (= (t!359766 (toList!5630 lm!2023)) (toList!5630 (tail!8637 lm!2023)))))

(declare-fun res!1980322 () Bool)

(assert (=> start!475184 (=> (not res!1980322) (not e!2928023))))

(assert (=> start!475184 (= res!1980322 (forall!11349 (toList!5630 lm!2023) lambda!208143))))

(assert (=> start!475184 e!2928023))

(declare-fun inv!67699 (ListLongMap!4159) Bool)

(assert (=> start!475184 (and (inv!67699 lm!2023) e!2928021)))

(assert (=> start!475184 tp_is_empty!30773))

(assert (=> start!475184 e!2928013))

(assert (=> start!475184 true))

(assert (=> start!475184 e!2928020))

(declare-fun b!4693615 () Bool)

(declare-fun res!1980330 () Bool)

(assert (=> b!4693615 (=> (not res!1980330) (not e!2928023))))

(assert (=> b!4693615 (= res!1980330 (noDuplicateKeys!1870 oldBucket!34))))

(declare-fun b!4693616 () Bool)

(declare-fun res!1980334 () Bool)

(assert (=> b!4693616 (=> (not res!1980334) (not e!2928023))))

(declare-fun allKeysSameHash!1696 (List!52577 (_ BitVec 64) Hashable!6239) Bool)

(assert (=> b!4693616 (= res!1980334 (allKeysSameHash!1696 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4693617 () Bool)

(declare-fun res!1980333 () Bool)

(assert (=> b!4693617 (=> (not res!1980333) (not e!2928014))))

(assert (=> b!4693617 (= res!1980333 (allKeysSameHash!1696 newBucket!218 hash!405 hashF!1323))))

(assert (= (and start!475184 res!1980322) b!4693615))

(assert (= (and b!4693615 res!1980330) b!4693609))

(assert (= (and b!4693609 res!1980327) b!4693610))

(assert (= (and b!4693610 res!1980338) b!4693616))

(assert (= (and b!4693616 res!1980334) b!4693598))

(assert (= (and b!4693598 res!1980329) b!4693604))

(assert (= (and b!4693604 res!1980332) b!4693617))

(assert (= (and b!4693617 res!1980333) b!4693614))

(assert (= (and b!4693614 res!1980323) b!4693608))

(assert (= (and b!4693608 res!1980326) b!4693597))

(assert (= (and b!4693597 res!1980321) b!4693602))

(assert (= (and b!4693602 (not res!1980336)) b!4693611))

(assert (= (and b!4693611 (not res!1980339)) b!4693600))

(assert (= (and b!4693600 (not res!1980328)) b!4693606))

(assert (= (and b!4693606 (not res!1980337)) b!4693607))

(assert (= (and b!4693607 (not res!1980324)) b!4693605))

(assert (= (and b!4693605 (not res!1980335)) b!4693596))

(assert (= (and b!4693596 (not res!1980331)) b!4693603))

(assert (= (and b!4693603 (not res!1980325)) b!4693599))

(assert (= start!475184 b!4693601))

(assert (= (and start!475184 ((_ is Cons!52453) oldBucket!34)) b!4693613))

(assert (= (and start!475184 ((_ is Cons!52453) newBucket!218)) b!4693612))

(declare-fun m!5599187 () Bool)

(assert (=> b!4693611 m!5599187))

(declare-fun m!5599189 () Bool)

(assert (=> b!4693611 m!5599189))

(declare-fun m!5599191 () Bool)

(assert (=> b!4693611 m!5599191))

(declare-fun m!5599193 () Bool)

(assert (=> b!4693611 m!5599193))

(declare-fun m!5599195 () Bool)

(assert (=> b!4693611 m!5599195))

(declare-fun m!5599197 () Bool)

(assert (=> b!4693611 m!5599197))

(declare-fun m!5599199 () Bool)

(assert (=> b!4693611 m!5599199))

(declare-fun m!5599201 () Bool)

(assert (=> b!4693611 m!5599201))

(declare-fun m!5599203 () Bool)

(assert (=> b!4693611 m!5599203))

(declare-fun m!5599205 () Bool)

(assert (=> b!4693611 m!5599205))

(declare-fun m!5599207 () Bool)

(assert (=> b!4693611 m!5599207))

(assert (=> b!4693611 m!5599195))

(declare-fun m!5599209 () Bool)

(assert (=> b!4693611 m!5599209))

(declare-fun m!5599211 () Bool)

(assert (=> b!4693609 m!5599211))

(declare-fun m!5599213 () Bool)

(assert (=> b!4693617 m!5599213))

(declare-fun m!5599215 () Bool)

(assert (=> b!4693606 m!5599215))

(declare-fun m!5599217 () Bool)

(assert (=> b!4693603 m!5599217))

(declare-fun m!5599219 () Bool)

(assert (=> b!4693603 m!5599219))

(declare-fun m!5599221 () Bool)

(assert (=> b!4693603 m!5599221))

(declare-fun m!5599223 () Bool)

(assert (=> b!4693603 m!5599223))

(assert (=> b!4693603 m!5599219))

(assert (=> b!4693603 m!5599221))

(declare-fun m!5599225 () Bool)

(assert (=> b!4693603 m!5599225))

(declare-fun m!5599227 () Bool)

(assert (=> b!4693603 m!5599227))

(declare-fun m!5599229 () Bool)

(assert (=> b!4693603 m!5599229))

(assert (=> b!4693603 m!5599229))

(assert (=> b!4693603 m!5599227))

(declare-fun m!5599231 () Bool)

(assert (=> b!4693603 m!5599231))

(declare-fun m!5599233 () Bool)

(assert (=> b!4693603 m!5599233))

(assert (=> b!4693603 m!5599225))

(declare-fun m!5599235 () Bool)

(assert (=> b!4693615 m!5599235))

(declare-fun m!5599237 () Bool)

(assert (=> b!4693596 m!5599237))

(assert (=> b!4693596 m!5599237))

(declare-fun m!5599239 () Bool)

(assert (=> b!4693596 m!5599239))

(declare-fun m!5599241 () Bool)

(assert (=> b!4693610 m!5599241))

(declare-fun m!5599243 () Bool)

(assert (=> b!4693607 m!5599243))

(declare-fun m!5599245 () Bool)

(assert (=> b!4693607 m!5599245))

(declare-fun m!5599247 () Bool)

(assert (=> b!4693607 m!5599247))

(declare-fun m!5599249 () Bool)

(assert (=> b!4693607 m!5599249))

(assert (=> b!4693607 m!5599245))

(declare-fun m!5599251 () Bool)

(assert (=> b!4693607 m!5599251))

(declare-fun m!5599253 () Bool)

(assert (=> b!4693607 m!5599253))

(declare-fun m!5599255 () Bool)

(assert (=> b!4693607 m!5599255))

(declare-fun m!5599257 () Bool)

(assert (=> b!4693607 m!5599257))

(declare-fun m!5599259 () Bool)

(assert (=> b!4693607 m!5599259))

(declare-fun m!5599261 () Bool)

(assert (=> b!4693607 m!5599261))

(declare-fun m!5599263 () Bool)

(assert (=> b!4693607 m!5599263))

(assert (=> b!4693607 m!5599247))

(declare-fun m!5599265 () Bool)

(assert (=> b!4693607 m!5599265))

(assert (=> b!4693607 m!5599257))

(declare-fun m!5599267 () Bool)

(assert (=> b!4693607 m!5599267))

(declare-fun m!5599269 () Bool)

(assert (=> b!4693607 m!5599269))

(assert (=> b!4693607 m!5599251))

(assert (=> b!4693607 m!5599255))

(declare-fun m!5599271 () Bool)

(assert (=> b!4693607 m!5599271))

(assert (=> b!4693607 m!5599269))

(declare-fun m!5599273 () Bool)

(assert (=> b!4693607 m!5599273))

(declare-fun m!5599275 () Bool)

(assert (=> b!4693607 m!5599275))

(assert (=> b!4693607 m!5599265))

(declare-fun m!5599277 () Bool)

(assert (=> b!4693607 m!5599277))

(declare-fun m!5599279 () Bool)

(assert (=> b!4693607 m!5599279))

(declare-fun m!5599281 () Bool)

(assert (=> b!4693598 m!5599281))

(declare-fun m!5599283 () Bool)

(assert (=> b!4693598 m!5599283))

(declare-fun m!5599285 () Bool)

(assert (=> b!4693599 m!5599285))

(declare-fun m!5599287 () Bool)

(assert (=> b!4693600 m!5599287))

(declare-fun m!5599289 () Bool)

(assert (=> b!4693600 m!5599289))

(declare-fun m!5599291 () Bool)

(assert (=> b!4693600 m!5599291))

(declare-fun m!5599293 () Bool)

(assert (=> b!4693608 m!5599293))

(declare-fun m!5599295 () Bool)

(assert (=> start!475184 m!5599295))

(declare-fun m!5599297 () Bool)

(assert (=> start!475184 m!5599297))

(declare-fun m!5599299 () Bool)

(assert (=> b!4693614 m!5599299))

(declare-fun m!5599301 () Bool)

(assert (=> b!4693602 m!5599301))

(declare-fun m!5599303 () Bool)

(assert (=> b!4693602 m!5599303))

(declare-fun m!5599305 () Bool)

(assert (=> b!4693602 m!5599305))

(declare-fun m!5599307 () Bool)

(assert (=> b!4693616 m!5599307))

(declare-fun m!5599309 () Bool)

(assert (=> b!4693604 m!5599309))

(check-sat (not start!475184) (not b!4693610) (not b!4693613) (not b!4693611) (not b!4693601) (not b!4693607) (not b!4693616) (not b!4693603) (not b!4693598) (not b!4693609) (not b!4693606) tp_is_empty!30773 (not b!4693602) tp_is_empty!30775 (not b!4693596) (not b!4693599) (not b!4693608) (not b!4693615) (not b!4693600) (not b!4693617) (not b!4693612) (not b!4693604) (not b!4693614))
(check-sat)
(get-model)

(declare-fun d!1491853 () Bool)

(declare-fun lt!1854190 () List!52577)

(assert (=> d!1491853 (not (containsKey!3093 lt!1854190 key!4653))))

(declare-fun e!2928035 () List!52577)

(assert (=> d!1491853 (= lt!1854190 e!2928035)))

(declare-fun c!802436 () Bool)

(assert (=> d!1491853 (= c!802436 (and ((_ is Cons!52453) lt!1854171) (= (_1!30231 (h!58710 lt!1854171)) key!4653)))))

(assert (=> d!1491853 (noDuplicateKeys!1870 lt!1854171)))

(assert (=> d!1491853 (= (removePairForKey!1465 lt!1854171 key!4653) lt!1854190)))

(declare-fun b!4693638 () Bool)

(assert (=> b!4693638 (= e!2928035 (t!359765 lt!1854171))))

(declare-fun b!4693641 () Bool)

(declare-fun e!2928036 () List!52577)

(assert (=> b!4693641 (= e!2928036 Nil!52453)))

(declare-fun b!4693640 () Bool)

(assert (=> b!4693640 (= e!2928036 (Cons!52453 (h!58710 lt!1854171) (removePairForKey!1465 (t!359765 lt!1854171) key!4653)))))

(declare-fun b!4693639 () Bool)

(assert (=> b!4693639 (= e!2928035 e!2928036)))

(declare-fun c!802437 () Bool)

(assert (=> b!4693639 (= c!802437 ((_ is Cons!52453) lt!1854171))))

(assert (= (and d!1491853 c!802436) b!4693638))

(assert (= (and d!1491853 (not c!802436)) b!4693639))

(assert (= (and b!4693639 c!802437) b!4693640))

(assert (= (and b!4693639 (not c!802437)) b!4693641))

(declare-fun m!5599317 () Bool)

(assert (=> d!1491853 m!5599317))

(declare-fun m!5599319 () Bool)

(assert (=> d!1491853 m!5599319))

(declare-fun m!5599321 () Bool)

(assert (=> b!4693640 m!5599321))

(assert (=> b!4693600 d!1491853))

(declare-fun d!1491863 () Bool)

(assert (=> d!1491863 (= (tail!8635 newBucket!218) (t!359765 newBucket!218))))

(assert (=> b!4693600 d!1491863))

(declare-fun d!1491865 () Bool)

(assert (=> d!1491865 (= (tail!8635 oldBucket!34) (t!359765 oldBucket!34))))

(assert (=> b!4693600 d!1491865))

(declare-fun d!1491867 () Bool)

(declare-fun res!1980344 () Bool)

(declare-fun e!2928041 () Bool)

(assert (=> d!1491867 (=> res!1980344 e!2928041)))

(assert (=> d!1491867 (= res!1980344 ((_ is Nil!52454) lt!1854162))))

(assert (=> d!1491867 (= (forall!11349 lt!1854162 lambda!208143) e!2928041)))

(declare-fun b!4693646 () Bool)

(declare-fun e!2928042 () Bool)

(assert (=> b!4693646 (= e!2928041 e!2928042)))

(declare-fun res!1980345 () Bool)

(assert (=> b!4693646 (=> (not res!1980345) (not e!2928042))))

(declare-fun dynLambda!21724 (Int tuple2!53876) Bool)

(assert (=> b!4693646 (= res!1980345 (dynLambda!21724 lambda!208143 (h!58711 lt!1854162)))))

(declare-fun b!4693647 () Bool)

(assert (=> b!4693647 (= e!2928042 (forall!11349 (t!359766 lt!1854162) lambda!208143))))

(assert (= (and d!1491867 (not res!1980344)) b!4693646))

(assert (= (and b!4693646 res!1980345) b!4693647))

(declare-fun b_lambda!177109 () Bool)

(assert (=> (not b_lambda!177109) (not b!4693646)))

(declare-fun m!5599323 () Bool)

(assert (=> b!4693646 m!5599323))

(declare-fun m!5599325 () Bool)

(assert (=> b!4693647 m!5599325))

(assert (=> b!4693599 d!1491867))

(declare-fun d!1491869 () Bool)

(declare-fun lt!1854191 () List!52577)

(assert (=> d!1491869 (not (containsKey!3093 lt!1854191 key!4653))))

(declare-fun e!2928043 () List!52577)

(assert (=> d!1491869 (= lt!1854191 e!2928043)))

(declare-fun c!802438 () Bool)

(assert (=> d!1491869 (= c!802438 (and ((_ is Cons!52453) oldBucket!34) (= (_1!30231 (h!58710 oldBucket!34)) key!4653)))))

(assert (=> d!1491869 (noDuplicateKeys!1870 oldBucket!34)))

(assert (=> d!1491869 (= (removePairForKey!1465 oldBucket!34 key!4653) lt!1854191)))

(declare-fun b!4693648 () Bool)

(assert (=> b!4693648 (= e!2928043 (t!359765 oldBucket!34))))

(declare-fun b!4693651 () Bool)

(declare-fun e!2928044 () List!52577)

(assert (=> b!4693651 (= e!2928044 Nil!52453)))

(declare-fun b!4693650 () Bool)

(assert (=> b!4693650 (= e!2928044 (Cons!52453 (h!58710 oldBucket!34) (removePairForKey!1465 (t!359765 oldBucket!34) key!4653)))))

(declare-fun b!4693649 () Bool)

(assert (=> b!4693649 (= e!2928043 e!2928044)))

(declare-fun c!802439 () Bool)

(assert (=> b!4693649 (= c!802439 ((_ is Cons!52453) oldBucket!34))))

(assert (= (and d!1491869 c!802438) b!4693648))

(assert (= (and d!1491869 (not c!802438)) b!4693649))

(assert (= (and b!4693649 c!802439) b!4693650))

(assert (= (and b!4693649 (not c!802439)) b!4693651))

(declare-fun m!5599327 () Bool)

(assert (=> d!1491869 m!5599327))

(assert (=> d!1491869 m!5599235))

(assert (=> b!4693650 m!5599215))

(assert (=> b!4693610 d!1491869))

(declare-fun d!1491871 () Bool)

(assert (=> d!1491871 (contains!15681 (toList!5630 lm!2023) (tuple2!53877 lt!1854181 lt!1854174))))

(declare-fun lt!1854197 () Unit!124777)

(declare-fun choose!32670 (ListLongMap!4159 (_ BitVec 64) List!52577) Unit!124777)

(assert (=> d!1491871 (= lt!1854197 (choose!32670 lm!2023 lt!1854181 lt!1854174))))

(assert (=> d!1491871 (contains!15682 lm!2023 lt!1854181)))

(assert (=> d!1491871 (= (lemmaGetValueImpliesTupleContained!279 lm!2023 lt!1854181 lt!1854174) lt!1854197)))

(declare-fun bs!1089197 () Bool)

(assert (= bs!1089197 d!1491871))

(declare-fun m!5599337 () Bool)

(assert (=> bs!1089197 m!5599337))

(declare-fun m!5599339 () Bool)

(assert (=> bs!1089197 m!5599339))

(assert (=> bs!1089197 m!5599197))

(assert (=> b!4693611 d!1491871))

(declare-fun d!1491875 () Bool)

(declare-fun lt!1854200 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9193 (List!52578) (InoxSet tuple2!53876))

(assert (=> d!1491875 (= lt!1854200 (select (content!9193 (toList!5630 lm!2023)) lt!1854159))))

(declare-fun e!2928053 () Bool)

(assert (=> d!1491875 (= lt!1854200 e!2928053)))

(declare-fun res!1980351 () Bool)

(assert (=> d!1491875 (=> (not res!1980351) (not e!2928053))))

(assert (=> d!1491875 (= res!1980351 ((_ is Cons!52454) (toList!5630 lm!2023)))))

(assert (=> d!1491875 (= (contains!15681 (toList!5630 lm!2023) lt!1854159) lt!1854200)))

(declare-fun b!4693663 () Bool)

(declare-fun e!2928052 () Bool)

(assert (=> b!4693663 (= e!2928053 e!2928052)))

(declare-fun res!1980350 () Bool)

(assert (=> b!4693663 (=> res!1980350 e!2928052)))

(assert (=> b!4693663 (= res!1980350 (= (h!58711 (toList!5630 lm!2023)) lt!1854159))))

(declare-fun b!4693664 () Bool)

(assert (=> b!4693664 (= e!2928052 (contains!15681 (t!359766 (toList!5630 lm!2023)) lt!1854159))))

(assert (= (and d!1491875 res!1980351) b!4693663))

(assert (= (and b!4693663 (not res!1980350)) b!4693664))

(declare-fun m!5599341 () Bool)

(assert (=> d!1491875 m!5599341))

(declare-fun m!5599343 () Bool)

(assert (=> d!1491875 m!5599343))

(declare-fun m!5599345 () Bool)

(assert (=> b!4693664 m!5599345))

(assert (=> b!4693611 d!1491875))

(declare-fun bs!1089198 () Bool)

(declare-fun d!1491877 () Bool)

(assert (= bs!1089198 (and d!1491877 start!475184)))

(declare-fun lambda!208149 () Int)

(assert (=> bs!1089198 (= lambda!208149 lambda!208143)))

(assert (=> d!1491877 (contains!15682 lm!2023 (hash!4099 hashF!1323 key!4653))))

(declare-fun lt!1854203 () Unit!124777)

(declare-fun choose!32671 (ListLongMap!4159 K!13825 Hashable!6239) Unit!124777)

(assert (=> d!1491877 (= lt!1854203 (choose!32671 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1491877 (forall!11349 (toList!5630 lm!2023) lambda!208149)))

(assert (=> d!1491877 (= (lemmaInGenMapThenLongMapContainsHash!680 lm!2023 key!4653 hashF!1323) lt!1854203)))

(declare-fun bs!1089199 () Bool)

(assert (= bs!1089199 d!1491877))

(assert (=> bs!1089199 m!5599309))

(assert (=> bs!1089199 m!5599309))

(declare-fun m!5599347 () Bool)

(assert (=> bs!1089199 m!5599347))

(declare-fun m!5599349 () Bool)

(assert (=> bs!1089199 m!5599349))

(declare-fun m!5599351 () Bool)

(assert (=> bs!1089199 m!5599351))

(assert (=> b!4693611 d!1491877))

(declare-fun bs!1089203 () Bool)

(declare-fun d!1491879 () Bool)

(assert (= bs!1089203 (and d!1491879 start!475184)))

(declare-fun lambda!208188 () Int)

(assert (=> bs!1089203 (= lambda!208188 lambda!208143)))

(declare-fun bs!1089204 () Bool)

(assert (= bs!1089204 (and d!1491879 d!1491877)))

(assert (=> bs!1089204 (= lambda!208188 lambda!208149)))

(declare-fun b!4693691 () Bool)

(declare-fun res!1980371 () Bool)

(declare-fun e!2928067 () Bool)

(assert (=> b!4693691 (=> (not res!1980371) (not e!2928067))))

(assert (=> b!4693691 (= res!1980371 (contains!15680 (extractMap!1896 (toList!5630 lm!2023)) key!4653))))

(declare-fun b!4693690 () Bool)

(declare-fun res!1980370 () Bool)

(assert (=> b!4693690 (=> (not res!1980370) (not e!2928067))))

(assert (=> b!4693690 (= res!1980370 (allKeysSameHashInMap!1784 lm!2023 hashF!1323))))

(declare-fun e!2928068 () Bool)

(declare-fun lt!1854287 () (_ BitVec 64))

(declare-fun lt!1854290 () List!52577)

(declare-fun b!4693693 () Bool)

(declare-datatypes ((Option!12118 0))(
  ( (None!12117) (Some!12117 (v!46560 List!52577)) )
))
(declare-fun getValueByKey!1802 (List!52578 (_ BitVec 64)) Option!12118)

(assert (=> b!4693693 (= e!2928068 (= (getValueByKey!1802 (toList!5630 lm!2023) lt!1854287) (Some!12117 lt!1854290)))))

(assert (=> d!1491879 e!2928067))

(declare-fun res!1980369 () Bool)

(assert (=> d!1491879 (=> (not res!1980369) (not e!2928067))))

(assert (=> d!1491879 (= res!1980369 (forall!11349 (toList!5630 lm!2023) lambda!208188))))

(declare-fun lt!1854285 () Unit!124777)

(declare-fun choose!32672 (ListLongMap!4159 K!13825 Hashable!6239) Unit!124777)

(assert (=> d!1491879 (= lt!1854285 (choose!32672 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1491879 (forall!11349 (toList!5630 lm!2023) lambda!208188)))

(assert (=> d!1491879 (= (lemmaInGenMapThenGetPairDefined!270 lm!2023 key!4653 hashF!1323) lt!1854285)))

(declare-fun b!4693692 () Bool)

(assert (=> b!4693692 (= e!2928067 (isDefined!9372 (getPair!474 (apply!12353 lm!2023 (hash!4099 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1854284 () Unit!124777)

(assert (=> b!4693692 (= lt!1854284 (forallContained!3456 (toList!5630 lm!2023) lambda!208188 (tuple2!53877 (hash!4099 hashF!1323 key!4653) (apply!12353 lm!2023 (hash!4099 hashF!1323 key!4653)))))))

(declare-fun lt!1854286 () Unit!124777)

(declare-fun lt!1854288 () Unit!124777)

(assert (=> b!4693692 (= lt!1854286 lt!1854288)))

(assert (=> b!4693692 (contains!15681 (toList!5630 lm!2023) (tuple2!53877 lt!1854287 lt!1854290))))

(assert (=> b!4693692 (= lt!1854288 (lemmaGetValueImpliesTupleContained!279 lm!2023 lt!1854287 lt!1854290))))

(assert (=> b!4693692 e!2928068))

(declare-fun res!1980372 () Bool)

(assert (=> b!4693692 (=> (not res!1980372) (not e!2928068))))

(assert (=> b!4693692 (= res!1980372 (contains!15682 lm!2023 lt!1854287))))

(assert (=> b!4693692 (= lt!1854290 (apply!12353 lm!2023 (hash!4099 hashF!1323 key!4653)))))

(assert (=> b!4693692 (= lt!1854287 (hash!4099 hashF!1323 key!4653))))

(declare-fun lt!1854289 () Unit!124777)

(declare-fun lt!1854283 () Unit!124777)

(assert (=> b!4693692 (= lt!1854289 lt!1854283)))

(assert (=> b!4693692 (contains!15682 lm!2023 (hash!4099 hashF!1323 key!4653))))

(assert (=> b!4693692 (= lt!1854283 (lemmaInGenMapThenLongMapContainsHash!680 lm!2023 key!4653 hashF!1323))))

(assert (= (and d!1491879 res!1980369) b!4693690))

(assert (= (and b!4693690 res!1980370) b!4693691))

(assert (= (and b!4693691 res!1980371) b!4693692))

(assert (= (and b!4693692 res!1980372) b!4693693))

(assert (=> b!4693690 m!5599299))

(declare-fun m!5599385 () Bool)

(assert (=> b!4693693 m!5599385))

(declare-fun m!5599387 () Bool)

(assert (=> d!1491879 m!5599387))

(declare-fun m!5599389 () Bool)

(assert (=> d!1491879 m!5599389))

(assert (=> d!1491879 m!5599387))

(declare-fun m!5599391 () Bool)

(assert (=> b!4693692 m!5599391))

(declare-fun m!5599393 () Bool)

(assert (=> b!4693692 m!5599393))

(assert (=> b!4693692 m!5599309))

(assert (=> b!4693692 m!5599309))

(declare-fun m!5599395 () Bool)

(assert (=> b!4693692 m!5599395))

(declare-fun m!5599397 () Bool)

(assert (=> b!4693692 m!5599397))

(assert (=> b!4693692 m!5599395))

(assert (=> b!4693692 m!5599391))

(assert (=> b!4693692 m!5599309))

(assert (=> b!4693692 m!5599347))

(declare-fun m!5599399 () Bool)

(assert (=> b!4693692 m!5599399))

(assert (=> b!4693692 m!5599189))

(declare-fun m!5599401 () Bool)

(assert (=> b!4693692 m!5599401))

(declare-fun m!5599403 () Bool)

(assert (=> b!4693692 m!5599403))

(assert (=> b!4693691 m!5599283))

(assert (=> b!4693691 m!5599283))

(declare-fun m!5599405 () Bool)

(assert (=> b!4693691 m!5599405))

(assert (=> b!4693611 d!1491879))

(declare-fun d!1491883 () Bool)

(assert (=> d!1491883 (containsKey!3093 oldBucket!34 key!4653)))

(declare-fun lt!1854314 () Unit!124777)

(declare-fun choose!32673 (List!52577 K!13825 Hashable!6239) Unit!124777)

(assert (=> d!1491883 (= lt!1854314 (choose!32673 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1491883 (noDuplicateKeys!1870 oldBucket!34)))

(assert (=> d!1491883 (= (lemmaGetPairDefinedThenContainsKey!222 oldBucket!34 key!4653 hashF!1323) lt!1854314)))

(declare-fun bs!1089217 () Bool)

(assert (= bs!1089217 d!1491883))

(assert (=> bs!1089217 m!5599203))

(declare-fun m!5599407 () Bool)

(assert (=> bs!1089217 m!5599407))

(assert (=> bs!1089217 m!5599235))

(assert (=> b!4693611 d!1491883))

(declare-fun d!1491885 () Bool)

(declare-fun res!1980380 () Bool)

(declare-fun e!2928076 () Bool)

(assert (=> d!1491885 (=> res!1980380 e!2928076)))

(assert (=> d!1491885 (= res!1980380 (and ((_ is Cons!52453) (t!359765 oldBucket!34)) (= (_1!30231 (h!58710 (t!359765 oldBucket!34))) key!4653)))))

(assert (=> d!1491885 (= (containsKey!3093 (t!359765 oldBucket!34) key!4653) e!2928076)))

(declare-fun b!4693703 () Bool)

(declare-fun e!2928077 () Bool)

(assert (=> b!4693703 (= e!2928076 e!2928077)))

(declare-fun res!1980381 () Bool)

(assert (=> b!4693703 (=> (not res!1980381) (not e!2928077))))

(assert (=> b!4693703 (= res!1980381 ((_ is Cons!52453) (t!359765 oldBucket!34)))))

(declare-fun b!4693704 () Bool)

(assert (=> b!4693704 (= e!2928077 (containsKey!3093 (t!359765 (t!359765 oldBucket!34)) key!4653))))

(assert (= (and d!1491885 (not res!1980380)) b!4693703))

(assert (= (and b!4693703 res!1980381) b!4693704))

(declare-fun m!5599441 () Bool)

(assert (=> b!4693704 m!5599441))

(assert (=> b!4693611 d!1491885))

(declare-fun d!1491889 () Bool)

(declare-fun isEmpty!29105 (Option!12117) Bool)

(assert (=> d!1491889 (= (isDefined!9372 (getPair!474 lt!1854174 key!4653)) (not (isEmpty!29105 (getPair!474 lt!1854174 key!4653))))))

(declare-fun bs!1089218 () Bool)

(assert (= bs!1089218 d!1491889))

(assert (=> bs!1089218 m!5599195))

(declare-fun m!5599443 () Bool)

(assert (=> bs!1089218 m!5599443))

(assert (=> b!4693611 d!1491889))

(declare-fun d!1491891 () Bool)

(declare-fun res!1980382 () Bool)

(declare-fun e!2928078 () Bool)

(assert (=> d!1491891 (=> res!1980382 e!2928078)))

(assert (=> d!1491891 (= res!1980382 (and ((_ is Cons!52453) oldBucket!34) (= (_1!30231 (h!58710 oldBucket!34)) key!4653)))))

(assert (=> d!1491891 (= (containsKey!3093 oldBucket!34 key!4653) e!2928078)))

(declare-fun b!4693705 () Bool)

(declare-fun e!2928079 () Bool)

(assert (=> b!4693705 (= e!2928078 e!2928079)))

(declare-fun res!1980383 () Bool)

(assert (=> b!4693705 (=> (not res!1980383) (not e!2928079))))

(assert (=> b!4693705 (= res!1980383 ((_ is Cons!52453) oldBucket!34))))

(declare-fun b!4693706 () Bool)

(assert (=> b!4693706 (= e!2928079 (containsKey!3093 (t!359765 oldBucket!34) key!4653))))

(assert (= (and d!1491891 (not res!1980382)) b!4693705))

(assert (= (and b!4693705 res!1980383) b!4693706))

(assert (=> b!4693706 m!5599199))

(assert (=> b!4693611 d!1491891))

(declare-fun d!1491893 () Bool)

(declare-fun e!2928085 () Bool)

(assert (=> d!1491893 e!2928085))

(declare-fun res!1980386 () Bool)

(assert (=> d!1491893 (=> res!1980386 e!2928085)))

(declare-fun lt!1854326 () Bool)

(assert (=> d!1491893 (= res!1980386 (not lt!1854326))))

(declare-fun lt!1854328 () Bool)

(assert (=> d!1491893 (= lt!1854326 lt!1854328)))

(declare-fun lt!1854327 () Unit!124777)

(declare-fun e!2928084 () Unit!124777)

(assert (=> d!1491893 (= lt!1854327 e!2928084)))

(declare-fun c!802449 () Bool)

(assert (=> d!1491893 (= c!802449 lt!1854328)))

(declare-fun containsKey!3094 (List!52578 (_ BitVec 64)) Bool)

(assert (=> d!1491893 (= lt!1854328 (containsKey!3094 (toList!5630 lm!2023) lt!1854181))))

(assert (=> d!1491893 (= (contains!15682 lm!2023 lt!1854181) lt!1854326)))

(declare-fun b!4693713 () Bool)

(declare-fun lt!1854329 () Unit!124777)

(assert (=> b!4693713 (= e!2928084 lt!1854329)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1694 (List!52578 (_ BitVec 64)) Unit!124777)

(assert (=> b!4693713 (= lt!1854329 (lemmaContainsKeyImpliesGetValueByKeyDefined!1694 (toList!5630 lm!2023) lt!1854181))))

(declare-fun isDefined!9373 (Option!12118) Bool)

(assert (=> b!4693713 (isDefined!9373 (getValueByKey!1802 (toList!5630 lm!2023) lt!1854181))))

(declare-fun b!4693714 () Bool)

(declare-fun Unit!124812 () Unit!124777)

(assert (=> b!4693714 (= e!2928084 Unit!124812)))

(declare-fun b!4693715 () Bool)

(assert (=> b!4693715 (= e!2928085 (isDefined!9373 (getValueByKey!1802 (toList!5630 lm!2023) lt!1854181)))))

(assert (= (and d!1491893 c!802449) b!4693713))

(assert (= (and d!1491893 (not c!802449)) b!4693714))

(assert (= (and d!1491893 (not res!1980386)) b!4693715))

(declare-fun m!5599449 () Bool)

(assert (=> d!1491893 m!5599449))

(declare-fun m!5599451 () Bool)

(assert (=> b!4693713 m!5599451))

(declare-fun m!5599453 () Bool)

(assert (=> b!4693713 m!5599453))

(assert (=> b!4693713 m!5599453))

(declare-fun m!5599455 () Bool)

(assert (=> b!4693713 m!5599455))

(assert (=> b!4693715 m!5599453))

(assert (=> b!4693715 m!5599453))

(assert (=> b!4693715 m!5599455))

(assert (=> b!4693611 d!1491893))

(declare-fun d!1491899 () Bool)

(assert (=> d!1491899 (dynLambda!21724 lambda!208143 lt!1854159)))

(declare-fun lt!1854332 () Unit!124777)

(declare-fun choose!32674 (List!52578 Int tuple2!53876) Unit!124777)

(assert (=> d!1491899 (= lt!1854332 (choose!32674 (toList!5630 lm!2023) lambda!208143 lt!1854159))))

(declare-fun e!2928088 () Bool)

(assert (=> d!1491899 e!2928088))

(declare-fun res!1980389 () Bool)

(assert (=> d!1491899 (=> (not res!1980389) (not e!2928088))))

(assert (=> d!1491899 (= res!1980389 (forall!11349 (toList!5630 lm!2023) lambda!208143))))

(assert (=> d!1491899 (= (forallContained!3456 (toList!5630 lm!2023) lambda!208143 lt!1854159) lt!1854332)))

(declare-fun b!4693718 () Bool)

(assert (=> b!4693718 (= e!2928088 (contains!15681 (toList!5630 lm!2023) lt!1854159))))

(assert (= (and d!1491899 res!1980389) b!4693718))

(declare-fun b_lambda!177111 () Bool)

(assert (=> (not b_lambda!177111) (not d!1491899)))

(declare-fun m!5599457 () Bool)

(assert (=> d!1491899 m!5599457))

(declare-fun m!5599459 () Bool)

(assert (=> d!1491899 m!5599459))

(assert (=> d!1491899 m!5599295))

(assert (=> b!4693718 m!5599205))

(assert (=> b!4693611 d!1491899))

(declare-fun d!1491901 () Bool)

(declare-fun get!17523 (Option!12118) List!52577)

(assert (=> d!1491901 (= (apply!12353 lm!2023 lt!1854181) (get!17523 (getValueByKey!1802 (toList!5630 lm!2023) lt!1854181)))))

(declare-fun bs!1089220 () Bool)

(assert (= bs!1089220 d!1491901))

(assert (=> bs!1089220 m!5599453))

(assert (=> bs!1089220 m!5599453))

(declare-fun m!5599461 () Bool)

(assert (=> bs!1089220 m!5599461))

(assert (=> b!4693611 d!1491901))

(declare-fun d!1491903 () Bool)

(declare-fun e!2928102 () Bool)

(assert (=> d!1491903 e!2928102))

(declare-fun res!1980404 () Bool)

(assert (=> d!1491903 (=> res!1980404 e!2928102)))

(declare-fun e!2928104 () Bool)

(assert (=> d!1491903 (= res!1980404 e!2928104)))

(declare-fun res!1980401 () Bool)

(assert (=> d!1491903 (=> (not res!1980401) (not e!2928104))))

(declare-fun lt!1854359 () Option!12117)

(assert (=> d!1491903 (= res!1980401 (isEmpty!29105 lt!1854359))))

(declare-fun e!2928106 () Option!12117)

(assert (=> d!1491903 (= lt!1854359 e!2928106)))

(declare-fun c!802455 () Bool)

(assert (=> d!1491903 (= c!802455 (and ((_ is Cons!52453) lt!1854174) (= (_1!30231 (h!58710 lt!1854174)) key!4653)))))

(assert (=> d!1491903 (noDuplicateKeys!1870 lt!1854174)))

(assert (=> d!1491903 (= (getPair!474 lt!1854174 key!4653) lt!1854359)))

(declare-fun b!4693740 () Bool)

(declare-fun e!2928103 () Bool)

(declare-fun contains!15683 (List!52577 tuple2!53874) Bool)

(declare-fun get!17524 (Option!12117) tuple2!53874)

(assert (=> b!4693740 (= e!2928103 (contains!15683 lt!1854174 (get!17524 lt!1854359)))))

(declare-fun b!4693741 () Bool)

(assert (=> b!4693741 (= e!2928106 (Some!12116 (h!58710 lt!1854174)))))

(declare-fun b!4693742 () Bool)

(declare-fun res!1980403 () Bool)

(assert (=> b!4693742 (=> (not res!1980403) (not e!2928103))))

(assert (=> b!4693742 (= res!1980403 (= (_1!30231 (get!17524 lt!1854359)) key!4653))))

(declare-fun b!4693743 () Bool)

(declare-fun e!2928105 () Option!12117)

(assert (=> b!4693743 (= e!2928105 (getPair!474 (t!359765 lt!1854174) key!4653))))

(declare-fun b!4693744 () Bool)

(assert (=> b!4693744 (= e!2928106 e!2928105)))

(declare-fun c!802456 () Bool)

(assert (=> b!4693744 (= c!802456 ((_ is Cons!52453) lt!1854174))))

(declare-fun b!4693745 () Bool)

(assert (=> b!4693745 (= e!2928102 e!2928103)))

(declare-fun res!1980402 () Bool)

(assert (=> b!4693745 (=> (not res!1980402) (not e!2928103))))

(assert (=> b!4693745 (= res!1980402 (isDefined!9372 lt!1854359))))

(declare-fun b!4693746 () Bool)

(assert (=> b!4693746 (= e!2928104 (not (containsKey!3093 lt!1854174 key!4653)))))

(declare-fun b!4693747 () Bool)

(assert (=> b!4693747 (= e!2928105 None!12116)))

(assert (= (and d!1491903 c!802455) b!4693741))

(assert (= (and d!1491903 (not c!802455)) b!4693744))

(assert (= (and b!4693744 c!802456) b!4693743))

(assert (= (and b!4693744 (not c!802456)) b!4693747))

(assert (= (and d!1491903 res!1980401) b!4693746))

(assert (= (and d!1491903 (not res!1980404)) b!4693745))

(assert (= (and b!4693745 res!1980402) b!4693742))

(assert (= (and b!4693742 res!1980403) b!4693740))

(declare-fun m!5599471 () Bool)

(assert (=> b!4693745 m!5599471))

(declare-fun m!5599473 () Bool)

(assert (=> b!4693742 m!5599473))

(declare-fun m!5599475 () Bool)

(assert (=> b!4693746 m!5599475))

(declare-fun m!5599477 () Bool)

(assert (=> b!4693743 m!5599477))

(declare-fun m!5599479 () Bool)

(assert (=> d!1491903 m!5599479))

(declare-fun m!5599481 () Bool)

(assert (=> d!1491903 m!5599481))

(assert (=> b!4693740 m!5599473))

(assert (=> b!4693740 m!5599473))

(declare-fun m!5599483 () Bool)

(assert (=> b!4693740 m!5599483))

(assert (=> b!4693611 d!1491903))

(declare-fun b!4693837 () Bool)

(assert (=> b!4693837 true))

(declare-fun bs!1089314 () Bool)

(declare-fun b!4693834 () Bool)

(assert (= bs!1089314 (and b!4693834 b!4693837)))

(declare-fun lambda!208248 () Int)

(declare-fun lambda!208247 () Int)

(assert (=> bs!1089314 (= lambda!208248 lambda!208247)))

(assert (=> b!4693834 true))

(declare-fun lt!1854506 () ListMap!4993)

(declare-fun lambda!208249 () Int)

(assert (=> bs!1089314 (= (= lt!1854506 lt!1854164) (= lambda!208249 lambda!208247))))

(assert (=> b!4693834 (= (= lt!1854506 lt!1854164) (= lambda!208249 lambda!208248))))

(assert (=> b!4693834 true))

(declare-fun bs!1089315 () Bool)

(declare-fun d!1491907 () Bool)

(assert (= bs!1089315 (and d!1491907 b!4693837)))

(declare-fun lambda!208250 () Int)

(declare-fun lt!1854505 () ListMap!4993)

(assert (=> bs!1089315 (= (= lt!1854505 lt!1854164) (= lambda!208250 lambda!208247))))

(declare-fun bs!1089316 () Bool)

(assert (= bs!1089316 (and d!1491907 b!4693834)))

(assert (=> bs!1089316 (= (= lt!1854505 lt!1854164) (= lambda!208250 lambda!208248))))

(assert (=> bs!1089316 (= (= lt!1854505 lt!1854506) (= lambda!208250 lambda!208249))))

(assert (=> d!1491907 true))

(declare-fun e!2928161 () ListMap!4993)

(assert (=> b!4693834 (= e!2928161 lt!1854506)))

(declare-fun lt!1854507 () ListMap!4993)

(assert (=> b!4693834 (= lt!1854507 (+!2154 lt!1854164 (h!58710 (_2!30232 (h!58711 (toList!5630 lm!2023))))))))

(assert (=> b!4693834 (= lt!1854506 (addToMapMapFromBucket!1302 (t!359765 (_2!30232 (h!58711 (toList!5630 lm!2023)))) (+!2154 lt!1854164 (h!58710 (_2!30232 (h!58711 (toList!5630 lm!2023)))))))))

(declare-fun lt!1854513 () Unit!124777)

(declare-fun call!328086 () Unit!124777)

(assert (=> b!4693834 (= lt!1854513 call!328086)))

(declare-fun forall!11351 (List!52577 Int) Bool)

(assert (=> b!4693834 (forall!11351 (toList!5629 lt!1854164) lambda!208248)))

(declare-fun lt!1854511 () Unit!124777)

(assert (=> b!4693834 (= lt!1854511 lt!1854513)))

(assert (=> b!4693834 (forall!11351 (toList!5629 lt!1854507) lambda!208249)))

(declare-fun lt!1854521 () Unit!124777)

(declare-fun Unit!124824 () Unit!124777)

(assert (=> b!4693834 (= lt!1854521 Unit!124824)))

(declare-fun call!328085 () Bool)

(assert (=> b!4693834 call!328085))

(declare-fun lt!1854516 () Unit!124777)

(declare-fun Unit!124825 () Unit!124777)

(assert (=> b!4693834 (= lt!1854516 Unit!124825)))

(declare-fun lt!1854523 () Unit!124777)

(declare-fun Unit!124826 () Unit!124777)

(assert (=> b!4693834 (= lt!1854523 Unit!124826)))

(declare-fun lt!1854522 () Unit!124777)

(declare-fun forallContained!3458 (List!52577 Int tuple2!53874) Unit!124777)

(assert (=> b!4693834 (= lt!1854522 (forallContained!3458 (toList!5629 lt!1854507) lambda!208249 (h!58710 (_2!30232 (h!58711 (toList!5630 lm!2023))))))))

(assert (=> b!4693834 (contains!15680 lt!1854507 (_1!30231 (h!58710 (_2!30232 (h!58711 (toList!5630 lm!2023))))))))

(declare-fun lt!1854510 () Unit!124777)

(declare-fun Unit!124827 () Unit!124777)

(assert (=> b!4693834 (= lt!1854510 Unit!124827)))

(assert (=> b!4693834 (contains!15680 lt!1854506 (_1!30231 (h!58710 (_2!30232 (h!58711 (toList!5630 lm!2023))))))))

(declare-fun lt!1854514 () Unit!124777)

(declare-fun Unit!124828 () Unit!124777)

(assert (=> b!4693834 (= lt!1854514 Unit!124828)))

(assert (=> b!4693834 (forall!11351 (_2!30232 (h!58711 (toList!5630 lm!2023))) lambda!208249)))

(declare-fun lt!1854515 () Unit!124777)

(declare-fun Unit!124829 () Unit!124777)

(assert (=> b!4693834 (= lt!1854515 Unit!124829)))

(assert (=> b!4693834 (forall!11351 (toList!5629 lt!1854507) lambda!208249)))

(declare-fun lt!1854524 () Unit!124777)

(declare-fun Unit!124830 () Unit!124777)

(assert (=> b!4693834 (= lt!1854524 Unit!124830)))

(declare-fun lt!1854518 () Unit!124777)

(declare-fun Unit!124831 () Unit!124777)

(assert (=> b!4693834 (= lt!1854518 Unit!124831)))

(declare-fun lt!1854509 () Unit!124777)

(declare-fun addForallContainsKeyThenBeforeAdding!709 (ListMap!4993 ListMap!4993 K!13825 V!14071) Unit!124777)

(assert (=> b!4693834 (= lt!1854509 (addForallContainsKeyThenBeforeAdding!709 lt!1854164 lt!1854506 (_1!30231 (h!58710 (_2!30232 (h!58711 (toList!5630 lm!2023))))) (_2!30231 (h!58710 (_2!30232 (h!58711 (toList!5630 lm!2023)))))))))

(assert (=> b!4693834 (forall!11351 (toList!5629 lt!1854164) lambda!208249)))

(declare-fun lt!1854519 () Unit!124777)

(assert (=> b!4693834 (= lt!1854519 lt!1854509)))

(assert (=> b!4693834 (forall!11351 (toList!5629 lt!1854164) lambda!208249)))

(declare-fun lt!1854517 () Unit!124777)

(declare-fun Unit!124832 () Unit!124777)

(assert (=> b!4693834 (= lt!1854517 Unit!124832)))

(declare-fun res!1980461 () Bool)

(assert (=> b!4693834 (= res!1980461 (forall!11351 (_2!30232 (h!58711 (toList!5630 lm!2023))) lambda!208249))))

(declare-fun e!2928162 () Bool)

(assert (=> b!4693834 (=> (not res!1980461) (not e!2928162))))

(assert (=> b!4693834 e!2928162))

(declare-fun lt!1854520 () Unit!124777)

(declare-fun Unit!124833 () Unit!124777)

(assert (=> b!4693834 (= lt!1854520 Unit!124833)))

(declare-fun b!4693835 () Bool)

(declare-fun res!1980460 () Bool)

(declare-fun e!2928160 () Bool)

(assert (=> b!4693835 (=> (not res!1980460) (not e!2928160))))

(assert (=> b!4693835 (= res!1980460 (forall!11351 (toList!5629 lt!1854164) lambda!208250))))

(declare-fun b!4693836 () Bool)

(declare-fun invariantList!1422 (List!52577) Bool)

(assert (=> b!4693836 (= e!2928160 (invariantList!1422 (toList!5629 lt!1854505)))))

(declare-fun bm!328080 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!710 (ListMap!4993) Unit!124777)

(assert (=> bm!328080 (= call!328086 (lemmaContainsAllItsOwnKeys!710 lt!1854164))))

(declare-fun bm!328081 () Bool)

(declare-fun c!802471 () Bool)

(declare-fun call!328087 () Bool)

(assert (=> bm!328081 (= call!328087 (forall!11351 (toList!5629 lt!1854164) (ite c!802471 lambda!208247 lambda!208249)))))

(assert (=> b!4693837 (= e!2928161 lt!1854164)))

(declare-fun lt!1854508 () Unit!124777)

(assert (=> b!4693837 (= lt!1854508 call!328086)))

(assert (=> b!4693837 call!328085))

(declare-fun lt!1854512 () Unit!124777)

(assert (=> b!4693837 (= lt!1854512 lt!1854508)))

(assert (=> b!4693837 call!328087))

(declare-fun lt!1854504 () Unit!124777)

(declare-fun Unit!124834 () Unit!124777)

(assert (=> b!4693837 (= lt!1854504 Unit!124834)))

(declare-fun b!4693838 () Bool)

(assert (=> b!4693838 (= e!2928162 call!328087)))

(assert (=> d!1491907 e!2928160))

(declare-fun res!1980459 () Bool)

(assert (=> d!1491907 (=> (not res!1980459) (not e!2928160))))

(assert (=> d!1491907 (= res!1980459 (forall!11351 (_2!30232 (h!58711 (toList!5630 lm!2023))) lambda!208250))))

(assert (=> d!1491907 (= lt!1854505 e!2928161)))

(assert (=> d!1491907 (= c!802471 ((_ is Nil!52453) (_2!30232 (h!58711 (toList!5630 lm!2023)))))))

(assert (=> d!1491907 (noDuplicateKeys!1870 (_2!30232 (h!58711 (toList!5630 lm!2023))))))

(assert (=> d!1491907 (= (addToMapMapFromBucket!1302 (_2!30232 (h!58711 (toList!5630 lm!2023))) lt!1854164) lt!1854505)))

(declare-fun bm!328082 () Bool)

(assert (=> bm!328082 (= call!328085 (forall!11351 (ite c!802471 (toList!5629 lt!1854164) (t!359765 (_2!30232 (h!58711 (toList!5630 lm!2023))))) (ite c!802471 lambda!208247 lambda!208249)))))

(assert (= (and d!1491907 c!802471) b!4693837))

(assert (= (and d!1491907 (not c!802471)) b!4693834))

(assert (= (and b!4693834 res!1980461) b!4693838))

(assert (= (or b!4693837 b!4693834) bm!328080))

(assert (= (or b!4693837 b!4693834) bm!328082))

(assert (= (or b!4693837 b!4693838) bm!328081))

(assert (= (and d!1491907 res!1980459) b!4693835))

(assert (= (and b!4693835 res!1980460) b!4693836))

(declare-fun m!5599693 () Bool)

(assert (=> b!4693834 m!5599693))

(declare-fun m!5599695 () Bool)

(assert (=> b!4693834 m!5599695))

(assert (=> b!4693834 m!5599695))

(declare-fun m!5599697 () Bool)

(assert (=> b!4693834 m!5599697))

(declare-fun m!5599699 () Bool)

(assert (=> b!4693834 m!5599699))

(declare-fun m!5599703 () Bool)

(assert (=> b!4693834 m!5599703))

(declare-fun m!5599705 () Bool)

(assert (=> b!4693834 m!5599705))

(assert (=> b!4693834 m!5599693))

(declare-fun m!5599707 () Bool)

(assert (=> b!4693834 m!5599707))

(assert (=> b!4693834 m!5599707))

(assert (=> b!4693834 m!5599697))

(declare-fun m!5599709 () Bool)

(assert (=> b!4693834 m!5599709))

(declare-fun m!5599711 () Bool)

(assert (=> b!4693834 m!5599711))

(declare-fun m!5599713 () Bool)

(assert (=> b!4693834 m!5599713))

(declare-fun m!5599715 () Bool)

(assert (=> d!1491907 m!5599715))

(declare-fun m!5599717 () Bool)

(assert (=> d!1491907 m!5599717))

(declare-fun m!5599719 () Bool)

(assert (=> bm!328081 m!5599719))

(declare-fun m!5599721 () Bool)

(assert (=> bm!328080 m!5599721))

(declare-fun m!5599723 () Bool)

(assert (=> b!4693836 m!5599723))

(declare-fun m!5599725 () Bool)

(assert (=> bm!328082 m!5599725))

(declare-fun m!5599727 () Bool)

(assert (=> b!4693835 m!5599727))

(assert (=> b!4693602 d!1491907))

(declare-fun bs!1089318 () Bool)

(declare-fun d!1491957 () Bool)

(assert (= bs!1089318 (and d!1491957 start!475184)))

(declare-fun lambda!208253 () Int)

(assert (=> bs!1089318 (= lambda!208253 lambda!208143)))

(declare-fun bs!1089319 () Bool)

(assert (= bs!1089319 (and d!1491957 d!1491877)))

(assert (=> bs!1089319 (= lambda!208253 lambda!208149)))

(declare-fun bs!1089320 () Bool)

(assert (= bs!1089320 (and d!1491957 d!1491879)))

(assert (=> bs!1089320 (= lambda!208253 lambda!208188)))

(declare-fun lt!1854544 () ListMap!4993)

(assert (=> d!1491957 (invariantList!1422 (toList!5629 lt!1854544))))

(declare-fun e!2928181 () ListMap!4993)

(assert (=> d!1491957 (= lt!1854544 e!2928181)))

(declare-fun c!802477 () Bool)

(assert (=> d!1491957 (= c!802477 ((_ is Cons!52454) (t!359766 (toList!5630 lm!2023))))))

(assert (=> d!1491957 (forall!11349 (t!359766 (toList!5630 lm!2023)) lambda!208253)))

(assert (=> d!1491957 (= (extractMap!1896 (t!359766 (toList!5630 lm!2023))) lt!1854544)))

(declare-fun b!4693864 () Bool)

(assert (=> b!4693864 (= e!2928181 (addToMapMapFromBucket!1302 (_2!30232 (h!58711 (t!359766 (toList!5630 lm!2023)))) (extractMap!1896 (t!359766 (t!359766 (toList!5630 lm!2023))))))))

(declare-fun b!4693865 () Bool)

(assert (=> b!4693865 (= e!2928181 (ListMap!4994 Nil!52453))))

(assert (= (and d!1491957 c!802477) b!4693864))

(assert (= (and d!1491957 (not c!802477)) b!4693865))

(declare-fun m!5599741 () Bool)

(assert (=> d!1491957 m!5599741))

(declare-fun m!5599743 () Bool)

(assert (=> d!1491957 m!5599743))

(declare-fun m!5599745 () Bool)

(assert (=> b!4693864 m!5599745))

(assert (=> b!4693864 m!5599745))

(declare-fun m!5599747 () Bool)

(assert (=> b!4693864 m!5599747))

(assert (=> b!4693602 d!1491957))

(declare-fun d!1491967 () Bool)

(assert (=> d!1491967 (= (tail!8637 lm!2023) (ListLongMap!4160 (tail!8636 (toList!5630 lm!2023))))))

(declare-fun bs!1089322 () Bool)

(assert (= bs!1089322 d!1491967))

(declare-fun m!5599751 () Bool)

(assert (=> bs!1089322 m!5599751))

(assert (=> b!4693602 d!1491967))

(declare-fun d!1491971 () Bool)

(declare-fun hash!4102 (Hashable!6239 K!13825) (_ BitVec 64))

(assert (=> d!1491971 (= (hash!4099 hashF!1323 key!4653) (hash!4102 hashF!1323 key!4653))))

(declare-fun bs!1089323 () Bool)

(assert (= bs!1089323 d!1491971))

(declare-fun m!5599753 () Bool)

(assert (=> bs!1089323 m!5599753))

(assert (=> b!4693604 d!1491971))

(declare-fun d!1491973 () Bool)

(declare-fun res!1980476 () Bool)

(declare-fun e!2928183 () Bool)

(assert (=> d!1491973 (=> res!1980476 e!2928183)))

(assert (=> d!1491973 (= res!1980476 ((_ is Nil!52454) (toList!5630 lm!2023)))))

(assert (=> d!1491973 (= (forall!11349 (toList!5630 lm!2023) lambda!208143) e!2928183)))

(declare-fun b!4693867 () Bool)

(declare-fun e!2928184 () Bool)

(assert (=> b!4693867 (= e!2928183 e!2928184)))

(declare-fun res!1980477 () Bool)

(assert (=> b!4693867 (=> (not res!1980477) (not e!2928184))))

(assert (=> b!4693867 (= res!1980477 (dynLambda!21724 lambda!208143 (h!58711 (toList!5630 lm!2023))))))

(declare-fun b!4693868 () Bool)

(assert (=> b!4693868 (= e!2928184 (forall!11349 (t!359766 (toList!5630 lm!2023)) lambda!208143))))

(assert (= (and d!1491973 (not res!1980476)) b!4693867))

(assert (= (and b!4693867 res!1980477) b!4693868))

(declare-fun b_lambda!177115 () Bool)

(assert (=> (not b_lambda!177115) (not b!4693867)))

(declare-fun m!5599755 () Bool)

(assert (=> b!4693867 m!5599755))

(declare-fun m!5599757 () Bool)

(assert (=> b!4693868 m!5599757))

(assert (=> start!475184 d!1491973))

(declare-fun d!1491975 () Bool)

(declare-fun isStrictlySorted!661 (List!52578) Bool)

(assert (=> d!1491975 (= (inv!67699 lm!2023) (isStrictlySorted!661 (toList!5630 lm!2023)))))

(declare-fun bs!1089324 () Bool)

(assert (= bs!1089324 d!1491975))

(declare-fun m!5599759 () Bool)

(assert (=> bs!1089324 m!5599759))

(assert (=> start!475184 d!1491975))

(declare-fun bs!1089338 () Bool)

(declare-fun d!1491977 () Bool)

(assert (= bs!1089338 (and d!1491977 start!475184)))

(declare-fun lambda!208260 () Int)

(assert (=> bs!1089338 (= lambda!208260 lambda!208143)))

(declare-fun bs!1089340 () Bool)

(assert (= bs!1089340 (and d!1491977 d!1491877)))

(assert (=> bs!1089340 (= lambda!208260 lambda!208149)))

(declare-fun bs!1089342 () Bool)

(assert (= bs!1089342 (and d!1491977 d!1491879)))

(assert (=> bs!1089342 (= lambda!208260 lambda!208188)))

(declare-fun bs!1089343 () Bool)

(assert (= bs!1089343 (and d!1491977 d!1491957)))

(assert (=> bs!1089343 (= lambda!208260 lambda!208253)))

(assert (=> d!1491977 (eq!1029 (extractMap!1896 (Cons!52454 (tuple2!53877 hash!405 lt!1854161) (tail!8636 (toList!5630 lt!1854169)))) (-!674 (extractMap!1896 (Cons!52454 (tuple2!53877 hash!405 (t!359765 oldBucket!34)) (tail!8636 (toList!5630 lt!1854169)))) key!4653))))

(declare-fun lt!1854556 () Unit!124777)

(declare-fun choose!32675 (ListLongMap!4159 (_ BitVec 64) List!52577 List!52577 K!13825 Hashable!6239) Unit!124777)

(assert (=> d!1491977 (= lt!1854556 (choose!32675 lt!1854169 hash!405 (t!359765 oldBucket!34) lt!1854161 key!4653 hashF!1323))))

(assert (=> d!1491977 (forall!11349 (toList!5630 lt!1854169) lambda!208260)))

(assert (=> d!1491977 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!44 lt!1854169 hash!405 (t!359765 oldBucket!34) lt!1854161 key!4653 hashF!1323) lt!1854556)))

(declare-fun bs!1089347 () Bool)

(assert (= bs!1089347 d!1491977))

(declare-fun m!5599803 () Bool)

(assert (=> bs!1089347 m!5599803))

(declare-fun m!5599807 () Bool)

(assert (=> bs!1089347 m!5599807))

(assert (=> bs!1089347 m!5599803))

(declare-fun m!5599809 () Bool)

(assert (=> bs!1089347 m!5599809))

(declare-fun m!5599811 () Bool)

(assert (=> bs!1089347 m!5599811))

(declare-fun m!5599813 () Bool)

(assert (=> bs!1089347 m!5599813))

(assert (=> bs!1089347 m!5599809))

(declare-fun m!5599815 () Bool)

(assert (=> bs!1089347 m!5599815))

(assert (=> bs!1089347 m!5599813))

(declare-fun m!5599817 () Bool)

(assert (=> bs!1089347 m!5599817))

(assert (=> b!4693603 d!1491977))

(declare-fun d!1491999 () Bool)

(assert (=> d!1491999 (= (tail!8636 lt!1854162) (t!359766 lt!1854162))))

(assert (=> b!4693603 d!1491999))

(declare-fun d!1492001 () Bool)

(declare-fun e!2928216 () Bool)

(assert (=> d!1492001 e!2928216))

(declare-fun res!1980502 () Bool)

(assert (=> d!1492001 (=> (not res!1980502) (not e!2928216))))

(declare-fun lt!1854560 () ListMap!4993)

(assert (=> d!1492001 (= res!1980502 (not (contains!15680 lt!1854560 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!342 (List!52577 K!13825) List!52577)

(assert (=> d!1492001 (= lt!1854560 (ListMap!4994 (removePresrvNoDuplicatedKeys!342 (toList!5629 (extractMap!1896 (Cons!52454 lt!1854166 lt!1854180))) key!4653)))))

(assert (=> d!1492001 (= (-!674 (extractMap!1896 (Cons!52454 lt!1854166 lt!1854180)) key!4653) lt!1854560)))

(declare-fun b!4693916 () Bool)

(declare-datatypes ((List!52580 0))(
  ( (Nil!52456) (Cons!52456 (h!58715 K!13825) (t!359770 List!52580)) )
))
(declare-fun content!9195 (List!52580) (InoxSet K!13825))

(declare-fun keys!18741 (ListMap!4993) List!52580)

(assert (=> b!4693916 (= e!2928216 (= ((_ map and) (content!9195 (keys!18741 (extractMap!1896 (Cons!52454 lt!1854166 lt!1854180)))) ((_ map not) (store ((as const (Array K!13825 Bool)) false) key!4653 true))) (content!9195 (keys!18741 lt!1854560))))))

(assert (= (and d!1492001 res!1980502) b!4693916))

(declare-fun m!5599827 () Bool)

(assert (=> d!1492001 m!5599827))

(declare-fun m!5599829 () Bool)

(assert (=> d!1492001 m!5599829))

(declare-fun m!5599831 () Bool)

(assert (=> b!4693916 m!5599831))

(declare-fun m!5599833 () Bool)

(assert (=> b!4693916 m!5599833))

(declare-fun m!5599835 () Bool)

(assert (=> b!4693916 m!5599835))

(assert (=> b!4693916 m!5599225))

(declare-fun m!5599837 () Bool)

(assert (=> b!4693916 m!5599837))

(assert (=> b!4693916 m!5599837))

(declare-fun m!5599839 () Bool)

(assert (=> b!4693916 m!5599839))

(assert (=> b!4693916 m!5599833))

(assert (=> b!4693603 d!1492001))

(declare-fun bs!1089357 () Bool)

(declare-fun d!1492005 () Bool)

(assert (= bs!1089357 (and d!1492005 start!475184)))

(declare-fun lambda!208262 () Int)

(assert (=> bs!1089357 (= lambda!208262 lambda!208143)))

(declare-fun bs!1089358 () Bool)

(assert (= bs!1089358 (and d!1492005 d!1491879)))

(assert (=> bs!1089358 (= lambda!208262 lambda!208188)))

(declare-fun bs!1089359 () Bool)

(assert (= bs!1089359 (and d!1492005 d!1491877)))

(assert (=> bs!1089359 (= lambda!208262 lambda!208149)))

(declare-fun bs!1089360 () Bool)

(assert (= bs!1089360 (and d!1492005 d!1491977)))

(assert (=> bs!1089360 (= lambda!208262 lambda!208260)))

(declare-fun bs!1089361 () Bool)

(assert (= bs!1089361 (and d!1492005 d!1491957)))

(assert (=> bs!1089361 (= lambda!208262 lambda!208253)))

(declare-fun lt!1854561 () ListMap!4993)

(assert (=> d!1492005 (invariantList!1422 (toList!5629 lt!1854561))))

(declare-fun e!2928217 () ListMap!4993)

(assert (=> d!1492005 (= lt!1854561 e!2928217)))

(declare-fun c!802488 () Bool)

(assert (=> d!1492005 (= c!802488 ((_ is Cons!52454) (Cons!52454 lt!1854160 lt!1854180)))))

(assert (=> d!1492005 (forall!11349 (Cons!52454 lt!1854160 lt!1854180) lambda!208262)))

(assert (=> d!1492005 (= (extractMap!1896 (Cons!52454 lt!1854160 lt!1854180)) lt!1854561)))

(declare-fun b!4693917 () Bool)

(assert (=> b!4693917 (= e!2928217 (addToMapMapFromBucket!1302 (_2!30232 (h!58711 (Cons!52454 lt!1854160 lt!1854180))) (extractMap!1896 (t!359766 (Cons!52454 lt!1854160 lt!1854180)))))))

(declare-fun b!4693918 () Bool)

(assert (=> b!4693918 (= e!2928217 (ListMap!4994 Nil!52453))))

(assert (= (and d!1492005 c!802488) b!4693917))

(assert (= (and d!1492005 (not c!802488)) b!4693918))

(declare-fun m!5599841 () Bool)

(assert (=> d!1492005 m!5599841))

(declare-fun m!5599843 () Bool)

(assert (=> d!1492005 m!5599843))

(declare-fun m!5599845 () Bool)

(assert (=> b!4693917 m!5599845))

(assert (=> b!4693917 m!5599845))

(declare-fun m!5599847 () Bool)

(assert (=> b!4693917 m!5599847))

(assert (=> b!4693603 d!1492005))

(declare-fun bs!1089362 () Bool)

(declare-fun d!1492007 () Bool)

(assert (= bs!1089362 (and d!1492007 start!475184)))

(declare-fun lambda!208263 () Int)

(assert (=> bs!1089362 (= lambda!208263 lambda!208143)))

(declare-fun bs!1089363 () Bool)

(assert (= bs!1089363 (and d!1492007 d!1491879)))

(assert (=> bs!1089363 (= lambda!208263 lambda!208188)))

(declare-fun bs!1089364 () Bool)

(assert (= bs!1089364 (and d!1492007 d!1492005)))

(assert (=> bs!1089364 (= lambda!208263 lambda!208262)))

(declare-fun bs!1089365 () Bool)

(assert (= bs!1089365 (and d!1492007 d!1491877)))

(assert (=> bs!1089365 (= lambda!208263 lambda!208149)))

(declare-fun bs!1089366 () Bool)

(assert (= bs!1089366 (and d!1492007 d!1491977)))

(assert (=> bs!1089366 (= lambda!208263 lambda!208260)))

(declare-fun bs!1089367 () Bool)

(assert (= bs!1089367 (and d!1492007 d!1491957)))

(assert (=> bs!1089367 (= lambda!208263 lambda!208253)))

(declare-fun lt!1854562 () ListMap!4993)

(assert (=> d!1492007 (invariantList!1422 (toList!5629 lt!1854562))))

(declare-fun e!2928218 () ListMap!4993)

(assert (=> d!1492007 (= lt!1854562 e!2928218)))

(declare-fun c!802489 () Bool)

(assert (=> d!1492007 (= c!802489 ((_ is Cons!52454) (Cons!52454 lt!1854160 (t!359766 (toList!5630 lm!2023)))))))

(assert (=> d!1492007 (forall!11349 (Cons!52454 lt!1854160 (t!359766 (toList!5630 lm!2023))) lambda!208263)))

(assert (=> d!1492007 (= (extractMap!1896 (Cons!52454 lt!1854160 (t!359766 (toList!5630 lm!2023)))) lt!1854562)))

(declare-fun b!4693919 () Bool)

(assert (=> b!4693919 (= e!2928218 (addToMapMapFromBucket!1302 (_2!30232 (h!58711 (Cons!52454 lt!1854160 (t!359766 (toList!5630 lm!2023))))) (extractMap!1896 (t!359766 (Cons!52454 lt!1854160 (t!359766 (toList!5630 lm!2023)))))))))

(declare-fun b!4693920 () Bool)

(assert (=> b!4693920 (= e!2928218 (ListMap!4994 Nil!52453))))

(assert (= (and d!1492007 c!802489) b!4693919))

(assert (= (and d!1492007 (not c!802489)) b!4693920))

(declare-fun m!5599849 () Bool)

(assert (=> d!1492007 m!5599849))

(declare-fun m!5599851 () Bool)

(assert (=> d!1492007 m!5599851))

(declare-fun m!5599853 () Bool)

(assert (=> b!4693919 m!5599853))

(assert (=> b!4693919 m!5599853))

(declare-fun m!5599855 () Bool)

(assert (=> b!4693919 m!5599855))

(assert (=> b!4693603 d!1492007))

(declare-fun d!1492009 () Bool)

(declare-fun content!9196 (List!52577) (InoxSet tuple2!53874))

(assert (=> d!1492009 (= (eq!1029 (extractMap!1896 (Cons!52454 lt!1854160 lt!1854180)) (-!674 (extractMap!1896 (Cons!52454 lt!1854166 lt!1854180)) key!4653)) (= (content!9196 (toList!5629 (extractMap!1896 (Cons!52454 lt!1854160 lt!1854180)))) (content!9196 (toList!5629 (-!674 (extractMap!1896 (Cons!52454 lt!1854166 lt!1854180)) key!4653)))))))

(declare-fun bs!1089368 () Bool)

(assert (= bs!1089368 d!1492009))

(declare-fun m!5599857 () Bool)

(assert (=> bs!1089368 m!5599857))

(declare-fun m!5599859 () Bool)

(assert (=> bs!1089368 m!5599859))

(assert (=> b!4693603 d!1492009))

(declare-fun d!1492011 () Bool)

(assert (=> d!1492011 (= (eq!1029 (extractMap!1896 (Cons!52454 lt!1854160 (t!359766 (toList!5630 lm!2023)))) (-!674 lt!1854175 key!4653)) (= (content!9196 (toList!5629 (extractMap!1896 (Cons!52454 lt!1854160 (t!359766 (toList!5630 lm!2023)))))) (content!9196 (toList!5629 (-!674 lt!1854175 key!4653)))))))

(declare-fun bs!1089369 () Bool)

(assert (= bs!1089369 d!1492011))

(declare-fun m!5599861 () Bool)

(assert (=> bs!1089369 m!5599861))

(declare-fun m!5599863 () Bool)

(assert (=> bs!1089369 m!5599863))

(assert (=> b!4693603 d!1492011))

(declare-fun bs!1089370 () Bool)

(declare-fun d!1492013 () Bool)

(assert (= bs!1089370 (and d!1492013 d!1492007)))

(declare-fun lambda!208264 () Int)

(assert (=> bs!1089370 (= lambda!208264 lambda!208263)))

(declare-fun bs!1089371 () Bool)

(assert (= bs!1089371 (and d!1492013 start!475184)))

(assert (=> bs!1089371 (= lambda!208264 lambda!208143)))

(declare-fun bs!1089372 () Bool)

(assert (= bs!1089372 (and d!1492013 d!1491879)))

(assert (=> bs!1089372 (= lambda!208264 lambda!208188)))

(declare-fun bs!1089373 () Bool)

(assert (= bs!1089373 (and d!1492013 d!1492005)))

(assert (=> bs!1089373 (= lambda!208264 lambda!208262)))

(declare-fun bs!1089374 () Bool)

(assert (= bs!1089374 (and d!1492013 d!1491877)))

(assert (=> bs!1089374 (= lambda!208264 lambda!208149)))

(declare-fun bs!1089375 () Bool)

(assert (= bs!1089375 (and d!1492013 d!1491977)))

(assert (=> bs!1089375 (= lambda!208264 lambda!208260)))

(declare-fun bs!1089376 () Bool)

(assert (= bs!1089376 (and d!1492013 d!1491957)))

(assert (=> bs!1089376 (= lambda!208264 lambda!208253)))

(declare-fun lt!1854563 () ListMap!4993)

(assert (=> d!1492013 (invariantList!1422 (toList!5629 lt!1854563))))

(declare-fun e!2928219 () ListMap!4993)

(assert (=> d!1492013 (= lt!1854563 e!2928219)))

(declare-fun c!802490 () Bool)

(assert (=> d!1492013 (= c!802490 ((_ is Cons!52454) (Cons!52454 lt!1854166 lt!1854180)))))

(assert (=> d!1492013 (forall!11349 (Cons!52454 lt!1854166 lt!1854180) lambda!208264)))

(assert (=> d!1492013 (= (extractMap!1896 (Cons!52454 lt!1854166 lt!1854180)) lt!1854563)))

(declare-fun b!4693921 () Bool)

(assert (=> b!4693921 (= e!2928219 (addToMapMapFromBucket!1302 (_2!30232 (h!58711 (Cons!52454 lt!1854166 lt!1854180))) (extractMap!1896 (t!359766 (Cons!52454 lt!1854166 lt!1854180)))))))

(declare-fun b!4693922 () Bool)

(assert (=> b!4693922 (= e!2928219 (ListMap!4994 Nil!52453))))

(assert (= (and d!1492013 c!802490) b!4693921))

(assert (= (and d!1492013 (not c!802490)) b!4693922))

(declare-fun m!5599865 () Bool)

(assert (=> d!1492013 m!5599865))

(declare-fun m!5599867 () Bool)

(assert (=> d!1492013 m!5599867))

(declare-fun m!5599869 () Bool)

(assert (=> b!4693921 m!5599869))

(assert (=> b!4693921 m!5599869))

(declare-fun m!5599871 () Bool)

(assert (=> b!4693921 m!5599871))

(assert (=> b!4693603 d!1492013))

(declare-fun d!1492015 () Bool)

(declare-fun e!2928220 () Bool)

(assert (=> d!1492015 e!2928220))

(declare-fun res!1980503 () Bool)

(assert (=> d!1492015 (=> (not res!1980503) (not e!2928220))))

(declare-fun lt!1854564 () ListMap!4993)

(assert (=> d!1492015 (= res!1980503 (not (contains!15680 lt!1854564 key!4653)))))

(assert (=> d!1492015 (= lt!1854564 (ListMap!4994 (removePresrvNoDuplicatedKeys!342 (toList!5629 lt!1854175) key!4653)))))

(assert (=> d!1492015 (= (-!674 lt!1854175 key!4653) lt!1854564)))

(declare-fun b!4693923 () Bool)

(assert (=> b!4693923 (= e!2928220 (= ((_ map and) (content!9195 (keys!18741 lt!1854175)) ((_ map not) (store ((as const (Array K!13825 Bool)) false) key!4653 true))) (content!9195 (keys!18741 lt!1854564))))))

(assert (= (and d!1492015 res!1980503) b!4693923))

(declare-fun m!5599873 () Bool)

(assert (=> d!1492015 m!5599873))

(declare-fun m!5599875 () Bool)

(assert (=> d!1492015 m!5599875))

(assert (=> b!4693923 m!5599831))

(declare-fun m!5599877 () Bool)

(assert (=> b!4693923 m!5599877))

(declare-fun m!5599879 () Bool)

(assert (=> b!4693923 m!5599879))

(declare-fun m!5599881 () Bool)

(assert (=> b!4693923 m!5599881))

(assert (=> b!4693923 m!5599881))

(declare-fun m!5599883 () Bool)

(assert (=> b!4693923 m!5599883))

(assert (=> b!4693923 m!5599877))

(assert (=> b!4693603 d!1492015))

(declare-fun bs!1089377 () Bool)

(declare-fun d!1492017 () Bool)

(assert (= bs!1089377 (and d!1492017 d!1492007)))

(declare-fun lambda!208269 () Int)

(assert (=> bs!1089377 (not (= lambda!208269 lambda!208263))))

(declare-fun bs!1089378 () Bool)

(assert (= bs!1089378 (and d!1492017 start!475184)))

(assert (=> bs!1089378 (not (= lambda!208269 lambda!208143))))

(declare-fun bs!1089379 () Bool)

(assert (= bs!1089379 (and d!1492017 d!1491879)))

(assert (=> bs!1089379 (not (= lambda!208269 lambda!208188))))

(declare-fun bs!1089381 () Bool)

(assert (= bs!1089381 (and d!1492017 d!1492005)))

(assert (=> bs!1089381 (not (= lambda!208269 lambda!208262))))

(declare-fun bs!1089383 () Bool)

(assert (= bs!1089383 (and d!1492017 d!1492013)))

(assert (=> bs!1089383 (not (= lambda!208269 lambda!208264))))

(declare-fun bs!1089385 () Bool)

(assert (= bs!1089385 (and d!1492017 d!1491877)))

(assert (=> bs!1089385 (not (= lambda!208269 lambda!208149))))

(declare-fun bs!1089387 () Bool)

(assert (= bs!1089387 (and d!1492017 d!1491977)))

(assert (=> bs!1089387 (not (= lambda!208269 lambda!208260))))

(declare-fun bs!1089391 () Bool)

(assert (= bs!1089391 (and d!1492017 d!1491957)))

(assert (=> bs!1089391 (not (= lambda!208269 lambda!208253))))

(assert (=> d!1492017 true))

(assert (=> d!1492017 (= (allKeysSameHashInMap!1784 lm!2023 hashF!1323) (forall!11349 (toList!5630 lm!2023) lambda!208269))))

(declare-fun bs!1089394 () Bool)

(assert (= bs!1089394 d!1492017))

(declare-fun m!5599885 () Bool)

(assert (=> bs!1089394 m!5599885))

(assert (=> b!4693614 d!1492017))

(declare-fun bs!1089397 () Bool)

(declare-fun d!1492019 () Bool)

(assert (= bs!1089397 (and d!1492019 b!4693837)))

(declare-fun lambda!208273 () Int)

(assert (=> bs!1089397 (not (= lambda!208273 lambda!208247))))

(declare-fun bs!1089398 () Bool)

(assert (= bs!1089398 (and d!1492019 b!4693834)))

(assert (=> bs!1089398 (not (= lambda!208273 lambda!208248))))

(assert (=> bs!1089398 (not (= lambda!208273 lambda!208249))))

(declare-fun bs!1089399 () Bool)

(assert (= bs!1089399 (and d!1492019 d!1491907)))

(assert (=> bs!1089399 (not (= lambda!208273 lambda!208250))))

(assert (=> d!1492019 true))

(assert (=> d!1492019 true))

(assert (=> d!1492019 (= (allKeysSameHash!1696 oldBucket!34 hash!405 hashF!1323) (forall!11351 oldBucket!34 lambda!208273))))

(declare-fun bs!1089400 () Bool)

(assert (= bs!1089400 d!1492019))

(declare-fun m!5599901 () Bool)

(assert (=> bs!1089400 m!5599901))

(assert (=> b!4693616 d!1492019))

(declare-fun d!1492023 () Bool)

(declare-fun res!1980508 () Bool)

(declare-fun e!2928225 () Bool)

(assert (=> d!1492023 (=> res!1980508 e!2928225)))

(assert (=> d!1492023 (= res!1980508 (not ((_ is Cons!52453) oldBucket!34)))))

(assert (=> d!1492023 (= (noDuplicateKeys!1870 oldBucket!34) e!2928225)))

(declare-fun b!4693934 () Bool)

(declare-fun e!2928226 () Bool)

(assert (=> b!4693934 (= e!2928225 e!2928226)))

(declare-fun res!1980509 () Bool)

(assert (=> b!4693934 (=> (not res!1980509) (not e!2928226))))

(assert (=> b!4693934 (= res!1980509 (not (containsKey!3093 (t!359765 oldBucket!34) (_1!30231 (h!58710 oldBucket!34)))))))

(declare-fun b!4693935 () Bool)

(assert (=> b!4693935 (= e!2928226 (noDuplicateKeys!1870 (t!359765 oldBucket!34)))))

(assert (= (and d!1492023 (not res!1980508)) b!4693934))

(assert (= (and b!4693934 res!1980509) b!4693935))

(declare-fun m!5599903 () Bool)

(assert (=> b!4693934 m!5599903))

(declare-fun m!5599905 () Bool)

(assert (=> b!4693935 m!5599905))

(assert (=> b!4693615 d!1492023))

(declare-fun bs!1089401 () Bool)

(declare-fun d!1492025 () Bool)

(assert (= bs!1089401 (and d!1492025 b!4693837)))

(declare-fun lambda!208274 () Int)

(assert (=> bs!1089401 (not (= lambda!208274 lambda!208247))))

(declare-fun bs!1089402 () Bool)

(assert (= bs!1089402 (and d!1492025 d!1491907)))

(assert (=> bs!1089402 (not (= lambda!208274 lambda!208250))))

(declare-fun bs!1089403 () Bool)

(assert (= bs!1089403 (and d!1492025 b!4693834)))

(assert (=> bs!1089403 (not (= lambda!208274 lambda!208248))))

(assert (=> bs!1089403 (not (= lambda!208274 lambda!208249))))

(declare-fun bs!1089404 () Bool)

(assert (= bs!1089404 (and d!1492025 d!1492019)))

(assert (=> bs!1089404 (= lambda!208274 lambda!208273)))

(assert (=> d!1492025 true))

(assert (=> d!1492025 true))

(assert (=> d!1492025 (= (allKeysSameHash!1696 newBucket!218 hash!405 hashF!1323) (forall!11351 newBucket!218 lambda!208274))))

(declare-fun bs!1089405 () Bool)

(assert (= bs!1089405 d!1492025))

(declare-fun m!5599907 () Bool)

(assert (=> bs!1089405 m!5599907))

(assert (=> b!4693617 d!1492025))

(declare-fun d!1492027 () Bool)

(assert (=> d!1492027 (= (eq!1029 lt!1854176 (+!2154 lt!1854182 lt!1854178)) (= (content!9196 (toList!5629 lt!1854176)) (content!9196 (toList!5629 (+!2154 lt!1854182 lt!1854178)))))))

(declare-fun bs!1089406 () Bool)

(assert (= bs!1089406 d!1492027))

(declare-fun m!5599909 () Bool)

(assert (=> bs!1089406 m!5599909))

(declare-fun m!5599911 () Bool)

(assert (=> bs!1089406 m!5599911))

(assert (=> b!4693596 d!1492027))

(declare-fun d!1492029 () Bool)

(declare-fun e!2928237 () Bool)

(assert (=> d!1492029 e!2928237))

(declare-fun res!1980522 () Bool)

(assert (=> d!1492029 (=> (not res!1980522) (not e!2928237))))

(declare-fun lt!1854603 () ListMap!4993)

(assert (=> d!1492029 (= res!1980522 (contains!15680 lt!1854603 (_1!30231 lt!1854178)))))

(declare-fun lt!1854602 () List!52577)

(assert (=> d!1492029 (= lt!1854603 (ListMap!4994 lt!1854602))))

(declare-fun lt!1854604 () Unit!124777)

(declare-fun lt!1854605 () Unit!124777)

(assert (=> d!1492029 (= lt!1854604 lt!1854605)))

(declare-datatypes ((Option!12121 0))(
  ( (None!12120) (Some!12120 (v!46563 V!14071)) )
))
(declare-fun getValueByKey!1805 (List!52577 K!13825) Option!12121)

(assert (=> d!1492029 (= (getValueByKey!1805 lt!1854602 (_1!30231 lt!1854178)) (Some!12120 (_2!30231 lt!1854178)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1012 (List!52577 K!13825 V!14071) Unit!124777)

(assert (=> d!1492029 (= lt!1854605 (lemmaContainsTupThenGetReturnValue!1012 lt!1854602 (_1!30231 lt!1854178) (_2!30231 lt!1854178)))))

(declare-fun insertNoDuplicatedKeys!520 (List!52577 K!13825 V!14071) List!52577)

(assert (=> d!1492029 (= lt!1854602 (insertNoDuplicatedKeys!520 (toList!5629 lt!1854182) (_1!30231 lt!1854178) (_2!30231 lt!1854178)))))

(assert (=> d!1492029 (= (+!2154 lt!1854182 lt!1854178) lt!1854603)))

(declare-fun b!4693951 () Bool)

(declare-fun res!1980521 () Bool)

(assert (=> b!4693951 (=> (not res!1980521) (not e!2928237))))

(assert (=> b!4693951 (= res!1980521 (= (getValueByKey!1805 (toList!5629 lt!1854603) (_1!30231 lt!1854178)) (Some!12120 (_2!30231 lt!1854178))))))

(declare-fun b!4693952 () Bool)

(assert (=> b!4693952 (= e!2928237 (contains!15683 (toList!5629 lt!1854603) lt!1854178))))

(assert (= (and d!1492029 res!1980522) b!4693951))

(assert (= (and b!4693951 res!1980521) b!4693952))

(declare-fun m!5599953 () Bool)

(assert (=> d!1492029 m!5599953))

(declare-fun m!5599955 () Bool)

(assert (=> d!1492029 m!5599955))

(declare-fun m!5599957 () Bool)

(assert (=> d!1492029 m!5599957))

(declare-fun m!5599959 () Bool)

(assert (=> d!1492029 m!5599959))

(declare-fun m!5599961 () Bool)

(assert (=> b!4693951 m!5599961))

(declare-fun m!5599963 () Bool)

(assert (=> b!4693952 m!5599963))

(assert (=> b!4693596 d!1492029))

(declare-fun d!1492041 () Bool)

(declare-fun lt!1854606 () List!52577)

(assert (=> d!1492041 (not (containsKey!3093 lt!1854606 key!4653))))

(declare-fun e!2928238 () List!52577)

(assert (=> d!1492041 (= lt!1854606 e!2928238)))

(declare-fun c!802493 () Bool)

(assert (=> d!1492041 (= c!802493 (and ((_ is Cons!52453) (t!359765 oldBucket!34)) (= (_1!30231 (h!58710 (t!359765 oldBucket!34))) key!4653)))))

(assert (=> d!1492041 (noDuplicateKeys!1870 (t!359765 oldBucket!34))))

(assert (=> d!1492041 (= (removePairForKey!1465 (t!359765 oldBucket!34) key!4653) lt!1854606)))

(declare-fun b!4693953 () Bool)

(assert (=> b!4693953 (= e!2928238 (t!359765 (t!359765 oldBucket!34)))))

(declare-fun b!4693956 () Bool)

(declare-fun e!2928239 () List!52577)

(assert (=> b!4693956 (= e!2928239 Nil!52453)))

(declare-fun b!4693955 () Bool)

(assert (=> b!4693955 (= e!2928239 (Cons!52453 (h!58710 (t!359765 oldBucket!34)) (removePairForKey!1465 (t!359765 (t!359765 oldBucket!34)) key!4653)))))

(declare-fun b!4693954 () Bool)

(assert (=> b!4693954 (= e!2928238 e!2928239)))

(declare-fun c!802494 () Bool)

(assert (=> b!4693954 (= c!802494 ((_ is Cons!52453) (t!359765 oldBucket!34)))))

(assert (= (and d!1492041 c!802493) b!4693953))

(assert (= (and d!1492041 (not c!802493)) b!4693954))

(assert (= (and b!4693954 c!802494) b!4693955))

(assert (= (and b!4693954 (not c!802494)) b!4693956))

(declare-fun m!5599965 () Bool)

(assert (=> d!1492041 m!5599965))

(assert (=> d!1492041 m!5599905))

(declare-fun m!5599967 () Bool)

(assert (=> b!4693955 m!5599967))

(assert (=> b!4693606 d!1492041))

(declare-fun d!1492043 () Bool)

(assert (=> d!1492043 (= (head!10004 (toList!5630 lm!2023)) (h!58711 (toList!5630 lm!2023)))))

(assert (=> b!4693608 d!1492043))

(declare-fun d!1492045 () Bool)

(assert (=> d!1492045 (eq!1029 (addToMapMapFromBucket!1302 (Cons!52453 lt!1854178 lt!1854161) lt!1854164) (+!2154 (addToMapMapFromBucket!1302 lt!1854161 lt!1854164) lt!1854178))))

(declare-fun lt!1854610 () Unit!124777)

(declare-fun choose!32678 (tuple2!53874 List!52577 ListMap!4993) Unit!124777)

(assert (=> d!1492045 (= lt!1854610 (choose!32678 lt!1854178 lt!1854161 lt!1854164))))

(assert (=> d!1492045 (noDuplicateKeys!1870 lt!1854161)))

(assert (=> d!1492045 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!278 lt!1854178 lt!1854161 lt!1854164) lt!1854610)))

(declare-fun bs!1089489 () Bool)

(assert (= bs!1089489 d!1492045))

(assert (=> bs!1089489 m!5599255))

(declare-fun m!5600011 () Bool)

(assert (=> bs!1089489 m!5600011))

(assert (=> bs!1089489 m!5599265))

(assert (=> bs!1089489 m!5599255))

(assert (=> bs!1089489 m!5599257))

(assert (=> bs!1089489 m!5599259))

(declare-fun m!5600013 () Bool)

(assert (=> bs!1089489 m!5600013))

(assert (=> bs!1089489 m!5599265))

(assert (=> bs!1089489 m!5599257))

(assert (=> b!4693607 d!1492045))

(declare-fun bs!1089509 () Bool)

(declare-fun d!1492053 () Bool)

(assert (= bs!1089509 (and d!1492053 d!1492007)))

(declare-fun lambda!208285 () Int)

(assert (=> bs!1089509 (= lambda!208285 lambda!208263)))

(declare-fun bs!1089510 () Bool)

(assert (= bs!1089510 (and d!1492053 start!475184)))

(assert (=> bs!1089510 (= lambda!208285 lambda!208143)))

(declare-fun bs!1089511 () Bool)

(assert (= bs!1089511 (and d!1492053 d!1491879)))

(assert (=> bs!1089511 (= lambda!208285 lambda!208188)))

(declare-fun bs!1089512 () Bool)

(assert (= bs!1089512 (and d!1492053 d!1492005)))

(assert (=> bs!1089512 (= lambda!208285 lambda!208262)))

(declare-fun bs!1089513 () Bool)

(assert (= bs!1089513 (and d!1492053 d!1492013)))

(assert (=> bs!1089513 (= lambda!208285 lambda!208264)))

(declare-fun bs!1089514 () Bool)

(assert (= bs!1089514 (and d!1492053 d!1492017)))

(assert (=> bs!1089514 (not (= lambda!208285 lambda!208269))))

(declare-fun bs!1089515 () Bool)

(assert (= bs!1089515 (and d!1492053 d!1491877)))

(assert (=> bs!1089515 (= lambda!208285 lambda!208149)))

(declare-fun bs!1089516 () Bool)

(assert (= bs!1089516 (and d!1492053 d!1491977)))

(assert (=> bs!1089516 (= lambda!208285 lambda!208260)))

(declare-fun bs!1089517 () Bool)

(assert (= bs!1089517 (and d!1492053 d!1491957)))

(assert (=> bs!1089517 (= lambda!208285 lambda!208253)))

(assert (=> d!1492053 (contains!15680 (extractMap!1896 (toList!5630 lt!1854169)) key!4653)))

(declare-fun lt!1854623 () Unit!124777)

(declare-fun choose!32680 (ListLongMap!4159 K!13825 Hashable!6239) Unit!124777)

(assert (=> d!1492053 (= lt!1854623 (choose!32680 lt!1854169 key!4653 hashF!1323))))

(assert (=> d!1492053 (forall!11349 (toList!5630 lt!1854169) lambda!208285)))

(assert (=> d!1492053 (= (lemmaListContainsThenExtractedMapContains!462 lt!1854169 key!4653 hashF!1323) lt!1854623)))

(declare-fun bs!1089518 () Bool)

(assert (= bs!1089518 d!1492053))

(declare-fun m!5600051 () Bool)

(assert (=> bs!1089518 m!5600051))

(assert (=> bs!1089518 m!5600051))

(declare-fun m!5600053 () Bool)

(assert (=> bs!1089518 m!5600053))

(declare-fun m!5600055 () Bool)

(assert (=> bs!1089518 m!5600055))

(declare-fun m!5600057 () Bool)

(assert (=> bs!1089518 m!5600057))

(assert (=> b!4693607 d!1492053))

(declare-fun bs!1089519 () Bool)

(declare-fun b!4693988 () Bool)

(assert (= bs!1089519 (and b!4693988 b!4693837)))

(declare-fun lambda!208286 () Int)

(assert (=> bs!1089519 (= lambda!208286 lambda!208247)))

(declare-fun bs!1089520 () Bool)

(assert (= bs!1089520 (and b!4693988 d!1491907)))

(assert (=> bs!1089520 (= (= lt!1854164 lt!1854505) (= lambda!208286 lambda!208250))))

(declare-fun bs!1089521 () Bool)

(assert (= bs!1089521 (and b!4693988 b!4693834)))

(assert (=> bs!1089521 (= lambda!208286 lambda!208248)))

(assert (=> bs!1089521 (= (= lt!1854164 lt!1854506) (= lambda!208286 lambda!208249))))

(declare-fun bs!1089522 () Bool)

(assert (= bs!1089522 (and b!4693988 d!1492019)))

(assert (=> bs!1089522 (not (= lambda!208286 lambda!208273))))

(declare-fun bs!1089523 () Bool)

(assert (= bs!1089523 (and b!4693988 d!1492025)))

(assert (=> bs!1089523 (not (= lambda!208286 lambda!208274))))

(assert (=> b!4693988 true))

(declare-fun bs!1089524 () Bool)

(declare-fun b!4693985 () Bool)

(assert (= bs!1089524 (and b!4693985 b!4693837)))

(declare-fun lambda!208287 () Int)

(assert (=> bs!1089524 (= lambda!208287 lambda!208247)))

(declare-fun bs!1089525 () Bool)

(assert (= bs!1089525 (and b!4693985 d!1491907)))

(assert (=> bs!1089525 (= (= lt!1854164 lt!1854505) (= lambda!208287 lambda!208250))))

(declare-fun bs!1089526 () Bool)

(assert (= bs!1089526 (and b!4693985 b!4693834)))

(assert (=> bs!1089526 (= lambda!208287 lambda!208248)))

(assert (=> bs!1089526 (= (= lt!1854164 lt!1854506) (= lambda!208287 lambda!208249))))

(declare-fun bs!1089527 () Bool)

(assert (= bs!1089527 (and b!4693985 d!1492025)))

(assert (=> bs!1089527 (not (= lambda!208287 lambda!208274))))

(declare-fun bs!1089528 () Bool)

(assert (= bs!1089528 (and b!4693985 b!4693988)))

(assert (=> bs!1089528 (= lambda!208287 lambda!208286)))

(declare-fun bs!1089529 () Bool)

(assert (= bs!1089529 (and b!4693985 d!1492019)))

(assert (=> bs!1089529 (not (= lambda!208287 lambda!208273))))

(assert (=> b!4693985 true))

(declare-fun lambda!208288 () Int)

(declare-fun lt!1854626 () ListMap!4993)

(assert (=> b!4693985 (= (= lt!1854626 lt!1854164) (= lambda!208288 lambda!208287))))

(assert (=> bs!1089524 (= (= lt!1854626 lt!1854164) (= lambda!208288 lambda!208247))))

(assert (=> bs!1089525 (= (= lt!1854626 lt!1854505) (= lambda!208288 lambda!208250))))

(assert (=> bs!1089526 (= (= lt!1854626 lt!1854164) (= lambda!208288 lambda!208248))))

(assert (=> bs!1089526 (= (= lt!1854626 lt!1854506) (= lambda!208288 lambda!208249))))

(assert (=> bs!1089527 (not (= lambda!208288 lambda!208274))))

(assert (=> bs!1089528 (= (= lt!1854626 lt!1854164) (= lambda!208288 lambda!208286))))

(assert (=> bs!1089529 (not (= lambda!208288 lambda!208273))))

(assert (=> b!4693985 true))

(declare-fun bs!1089530 () Bool)

(declare-fun d!1492067 () Bool)

(assert (= bs!1089530 (and d!1492067 b!4693985)))

(declare-fun lambda!208289 () Int)

(declare-fun lt!1854625 () ListMap!4993)

(assert (=> bs!1089530 (= (= lt!1854625 lt!1854164) (= lambda!208289 lambda!208287))))

(declare-fun bs!1089531 () Bool)

(assert (= bs!1089531 (and d!1492067 b!4693837)))

(assert (=> bs!1089531 (= (= lt!1854625 lt!1854164) (= lambda!208289 lambda!208247))))

(declare-fun bs!1089532 () Bool)

(assert (= bs!1089532 (and d!1492067 d!1491907)))

(assert (=> bs!1089532 (= (= lt!1854625 lt!1854505) (= lambda!208289 lambda!208250))))

(declare-fun bs!1089533 () Bool)

(assert (= bs!1089533 (and d!1492067 b!4693834)))

(assert (=> bs!1089533 (= (= lt!1854625 lt!1854164) (= lambda!208289 lambda!208248))))

(assert (=> bs!1089533 (= (= lt!1854625 lt!1854506) (= lambda!208289 lambda!208249))))

(declare-fun bs!1089534 () Bool)

(assert (= bs!1089534 (and d!1492067 d!1492025)))

(assert (=> bs!1089534 (not (= lambda!208289 lambda!208274))))

(assert (=> bs!1089530 (= (= lt!1854625 lt!1854626) (= lambda!208289 lambda!208288))))

(declare-fun bs!1089535 () Bool)

(assert (= bs!1089535 (and d!1492067 b!4693988)))

(assert (=> bs!1089535 (= (= lt!1854625 lt!1854164) (= lambda!208289 lambda!208286))))

(declare-fun bs!1089536 () Bool)

(assert (= bs!1089536 (and d!1492067 d!1492019)))

(assert (=> bs!1089536 (not (= lambda!208289 lambda!208273))))

(assert (=> d!1492067 true))

(declare-fun e!2928258 () ListMap!4993)

(assert (=> b!4693985 (= e!2928258 lt!1854626)))

(declare-fun lt!1854627 () ListMap!4993)

(assert (=> b!4693985 (= lt!1854627 (+!2154 lt!1854164 (h!58710 lt!1854161)))))

(assert (=> b!4693985 (= lt!1854626 (addToMapMapFromBucket!1302 (t!359765 lt!1854161) (+!2154 lt!1854164 (h!58710 lt!1854161))))))

(declare-fun lt!1854633 () Unit!124777)

(declare-fun call!328093 () Unit!124777)

(assert (=> b!4693985 (= lt!1854633 call!328093)))

(assert (=> b!4693985 (forall!11351 (toList!5629 lt!1854164) lambda!208287)))

(declare-fun lt!1854631 () Unit!124777)

(assert (=> b!4693985 (= lt!1854631 lt!1854633)))

(assert (=> b!4693985 (forall!11351 (toList!5629 lt!1854627) lambda!208288)))

(declare-fun lt!1854641 () Unit!124777)

(declare-fun Unit!124838 () Unit!124777)

(assert (=> b!4693985 (= lt!1854641 Unit!124838)))

(declare-fun call!328092 () Bool)

(assert (=> b!4693985 call!328092))

(declare-fun lt!1854636 () Unit!124777)

(declare-fun Unit!124839 () Unit!124777)

(assert (=> b!4693985 (= lt!1854636 Unit!124839)))

(declare-fun lt!1854643 () Unit!124777)

(declare-fun Unit!124840 () Unit!124777)

(assert (=> b!4693985 (= lt!1854643 Unit!124840)))

(declare-fun lt!1854642 () Unit!124777)

(assert (=> b!4693985 (= lt!1854642 (forallContained!3458 (toList!5629 lt!1854627) lambda!208288 (h!58710 lt!1854161)))))

(assert (=> b!4693985 (contains!15680 lt!1854627 (_1!30231 (h!58710 lt!1854161)))))

(declare-fun lt!1854630 () Unit!124777)

(declare-fun Unit!124841 () Unit!124777)

(assert (=> b!4693985 (= lt!1854630 Unit!124841)))

(assert (=> b!4693985 (contains!15680 lt!1854626 (_1!30231 (h!58710 lt!1854161)))))

(declare-fun lt!1854634 () Unit!124777)

(declare-fun Unit!124842 () Unit!124777)

(assert (=> b!4693985 (= lt!1854634 Unit!124842)))

(assert (=> b!4693985 (forall!11351 lt!1854161 lambda!208288)))

(declare-fun lt!1854635 () Unit!124777)

(declare-fun Unit!124843 () Unit!124777)

(assert (=> b!4693985 (= lt!1854635 Unit!124843)))

(assert (=> b!4693985 (forall!11351 (toList!5629 lt!1854627) lambda!208288)))

(declare-fun lt!1854644 () Unit!124777)

(declare-fun Unit!124844 () Unit!124777)

(assert (=> b!4693985 (= lt!1854644 Unit!124844)))

(declare-fun lt!1854638 () Unit!124777)

(declare-fun Unit!124845 () Unit!124777)

(assert (=> b!4693985 (= lt!1854638 Unit!124845)))

(declare-fun lt!1854629 () Unit!124777)

(assert (=> b!4693985 (= lt!1854629 (addForallContainsKeyThenBeforeAdding!709 lt!1854164 lt!1854626 (_1!30231 (h!58710 lt!1854161)) (_2!30231 (h!58710 lt!1854161))))))

(assert (=> b!4693985 (forall!11351 (toList!5629 lt!1854164) lambda!208288)))

(declare-fun lt!1854639 () Unit!124777)

(assert (=> b!4693985 (= lt!1854639 lt!1854629)))

(assert (=> b!4693985 (forall!11351 (toList!5629 lt!1854164) lambda!208288)))

(declare-fun lt!1854637 () Unit!124777)

(declare-fun Unit!124846 () Unit!124777)

(assert (=> b!4693985 (= lt!1854637 Unit!124846)))

(declare-fun res!1980528 () Bool)

(assert (=> b!4693985 (= res!1980528 (forall!11351 lt!1854161 lambda!208288))))

(declare-fun e!2928259 () Bool)

(assert (=> b!4693985 (=> (not res!1980528) (not e!2928259))))

(assert (=> b!4693985 e!2928259))

(declare-fun lt!1854640 () Unit!124777)

(declare-fun Unit!124847 () Unit!124777)

(assert (=> b!4693985 (= lt!1854640 Unit!124847)))

(declare-fun b!4693986 () Bool)

(declare-fun res!1980527 () Bool)

(declare-fun e!2928257 () Bool)

(assert (=> b!4693986 (=> (not res!1980527) (not e!2928257))))

(assert (=> b!4693986 (= res!1980527 (forall!11351 (toList!5629 lt!1854164) lambda!208289))))

(declare-fun b!4693987 () Bool)

(assert (=> b!4693987 (= e!2928257 (invariantList!1422 (toList!5629 lt!1854625)))))

(declare-fun bm!328087 () Bool)

(assert (=> bm!328087 (= call!328093 (lemmaContainsAllItsOwnKeys!710 lt!1854164))))

(declare-fun bm!328088 () Bool)

(declare-fun c!802502 () Bool)

(declare-fun call!328094 () Bool)

(assert (=> bm!328088 (= call!328094 (forall!11351 (toList!5629 lt!1854164) (ite c!802502 lambda!208286 lambda!208288)))))

(assert (=> b!4693988 (= e!2928258 lt!1854164)))

(declare-fun lt!1854628 () Unit!124777)

(assert (=> b!4693988 (= lt!1854628 call!328093)))

(assert (=> b!4693988 call!328092))

(declare-fun lt!1854632 () Unit!124777)

(assert (=> b!4693988 (= lt!1854632 lt!1854628)))

(assert (=> b!4693988 call!328094))

(declare-fun lt!1854624 () Unit!124777)

(declare-fun Unit!124848 () Unit!124777)

(assert (=> b!4693988 (= lt!1854624 Unit!124848)))

(declare-fun b!4693989 () Bool)

(assert (=> b!4693989 (= e!2928259 call!328094)))

(assert (=> d!1492067 e!2928257))

(declare-fun res!1980526 () Bool)

(assert (=> d!1492067 (=> (not res!1980526) (not e!2928257))))

(assert (=> d!1492067 (= res!1980526 (forall!11351 lt!1854161 lambda!208289))))

(assert (=> d!1492067 (= lt!1854625 e!2928258)))

(assert (=> d!1492067 (= c!802502 ((_ is Nil!52453) lt!1854161))))

(assert (=> d!1492067 (noDuplicateKeys!1870 lt!1854161)))

(assert (=> d!1492067 (= (addToMapMapFromBucket!1302 lt!1854161 lt!1854164) lt!1854625)))

(declare-fun bm!328089 () Bool)

(assert (=> bm!328089 (= call!328092 (forall!11351 (ite c!802502 (toList!5629 lt!1854164) (t!359765 lt!1854161)) (ite c!802502 lambda!208286 lambda!208288)))))

(assert (= (and d!1492067 c!802502) b!4693988))

(assert (= (and d!1492067 (not c!802502)) b!4693985))

(assert (= (and b!4693985 res!1980528) b!4693989))

(assert (= (or b!4693988 b!4693985) bm!328087))

(assert (= (or b!4693988 b!4693985) bm!328089))

(assert (= (or b!4693988 b!4693989) bm!328088))

(assert (= (and d!1492067 res!1980526) b!4693986))

(assert (= (and b!4693986 res!1980527) b!4693987))

(declare-fun m!5600059 () Bool)

(assert (=> b!4693985 m!5600059))

(declare-fun m!5600061 () Bool)

(assert (=> b!4693985 m!5600061))

(assert (=> b!4693985 m!5600061))

(declare-fun m!5600063 () Bool)

(assert (=> b!4693985 m!5600063))

(declare-fun m!5600065 () Bool)

(assert (=> b!4693985 m!5600065))

(declare-fun m!5600067 () Bool)

(assert (=> b!4693985 m!5600067))

(declare-fun m!5600069 () Bool)

(assert (=> b!4693985 m!5600069))

(assert (=> b!4693985 m!5600059))

(declare-fun m!5600071 () Bool)

(assert (=> b!4693985 m!5600071))

(assert (=> b!4693985 m!5600071))

(assert (=> b!4693985 m!5600063))

(declare-fun m!5600073 () Bool)

(assert (=> b!4693985 m!5600073))

(declare-fun m!5600075 () Bool)

(assert (=> b!4693985 m!5600075))

(declare-fun m!5600077 () Bool)

(assert (=> b!4693985 m!5600077))

(declare-fun m!5600079 () Bool)

(assert (=> d!1492067 m!5600079))

(assert (=> d!1492067 m!5600011))

(declare-fun m!5600081 () Bool)

(assert (=> bm!328088 m!5600081))

(assert (=> bm!328087 m!5599721))

(declare-fun m!5600083 () Bool)

(assert (=> b!4693987 m!5600083))

(declare-fun m!5600085 () Bool)

(assert (=> bm!328089 m!5600085))

(declare-fun m!5600087 () Bool)

(assert (=> b!4693986 m!5600087))

(assert (=> b!4693607 d!1492067))

(declare-fun d!1492069 () Bool)

(assert (=> d!1492069 (= (head!10003 oldBucket!34) (h!58710 oldBucket!34))))

(assert (=> b!4693607 d!1492069))

(declare-fun d!1492071 () Bool)

(declare-fun e!2928260 () Bool)

(assert (=> d!1492071 e!2928260))

(declare-fun res!1980530 () Bool)

(assert (=> d!1492071 (=> (not res!1980530) (not e!2928260))))

(declare-fun lt!1854646 () ListMap!4993)

(assert (=> d!1492071 (= res!1980530 (contains!15680 lt!1854646 (_1!30231 (h!58710 oldBucket!34))))))

(declare-fun lt!1854645 () List!52577)

(assert (=> d!1492071 (= lt!1854646 (ListMap!4994 lt!1854645))))

(declare-fun lt!1854647 () Unit!124777)

(declare-fun lt!1854648 () Unit!124777)

(assert (=> d!1492071 (= lt!1854647 lt!1854648)))

(assert (=> d!1492071 (= (getValueByKey!1805 lt!1854645 (_1!30231 (h!58710 oldBucket!34))) (Some!12120 (_2!30231 (h!58710 oldBucket!34))))))

(assert (=> d!1492071 (= lt!1854648 (lemmaContainsTupThenGetReturnValue!1012 lt!1854645 (_1!30231 (h!58710 oldBucket!34)) (_2!30231 (h!58710 oldBucket!34))))))

(assert (=> d!1492071 (= lt!1854645 (insertNoDuplicatedKeys!520 (toList!5629 lt!1854182) (_1!30231 (h!58710 oldBucket!34)) (_2!30231 (h!58710 oldBucket!34))))))

(assert (=> d!1492071 (= (+!2154 lt!1854182 (h!58710 oldBucket!34)) lt!1854646)))

(declare-fun b!4693990 () Bool)

(declare-fun res!1980529 () Bool)

(assert (=> b!4693990 (=> (not res!1980529) (not e!2928260))))

(assert (=> b!4693990 (= res!1980529 (= (getValueByKey!1805 (toList!5629 lt!1854646) (_1!30231 (h!58710 oldBucket!34))) (Some!12120 (_2!30231 (h!58710 oldBucket!34)))))))

(declare-fun b!4693991 () Bool)

(assert (=> b!4693991 (= e!2928260 (contains!15683 (toList!5629 lt!1854646) (h!58710 oldBucket!34)))))

(assert (= (and d!1492071 res!1980530) b!4693990))

(assert (= (and b!4693990 res!1980529) b!4693991))

(declare-fun m!5600089 () Bool)

(assert (=> d!1492071 m!5600089))

(declare-fun m!5600091 () Bool)

(assert (=> d!1492071 m!5600091))

(declare-fun m!5600093 () Bool)

(assert (=> d!1492071 m!5600093))

(declare-fun m!5600095 () Bool)

(assert (=> d!1492071 m!5600095))

(declare-fun m!5600097 () Bool)

(assert (=> b!4693990 m!5600097))

(declare-fun m!5600099 () Bool)

(assert (=> b!4693991 m!5600099))

(assert (=> b!4693607 d!1492071))

(declare-fun b!4694010 () Bool)

(declare-fun e!2928274 () Bool)

(declare-fun contains!15686 (List!52580 K!13825) Bool)

(assert (=> b!4694010 (= e!2928274 (contains!15686 (keys!18741 lt!1854175) key!4653))))

(declare-fun d!1492073 () Bool)

(declare-fun e!2928275 () Bool)

(assert (=> d!1492073 e!2928275))

(declare-fun res!1980537 () Bool)

(assert (=> d!1492073 (=> res!1980537 e!2928275)))

(declare-fun e!2928278 () Bool)

(assert (=> d!1492073 (= res!1980537 e!2928278)))

(declare-fun res!1980538 () Bool)

(assert (=> d!1492073 (=> (not res!1980538) (not e!2928278))))

(declare-fun lt!1854666 () Bool)

(assert (=> d!1492073 (= res!1980538 (not lt!1854666))))

(declare-fun lt!1854671 () Bool)

(assert (=> d!1492073 (= lt!1854666 lt!1854671)))

(declare-fun lt!1854665 () Unit!124777)

(declare-fun e!2928277 () Unit!124777)

(assert (=> d!1492073 (= lt!1854665 e!2928277)))

(declare-fun c!802509 () Bool)

(assert (=> d!1492073 (= c!802509 lt!1854671)))

(declare-fun containsKey!3097 (List!52577 K!13825) Bool)

(assert (=> d!1492073 (= lt!1854671 (containsKey!3097 (toList!5629 lt!1854175) key!4653))))

(assert (=> d!1492073 (= (contains!15680 lt!1854175 key!4653) lt!1854666)))

(declare-fun b!4694011 () Bool)

(declare-fun e!2928273 () List!52580)

(declare-fun getKeysList!862 (List!52577) List!52580)

(assert (=> b!4694011 (= e!2928273 (getKeysList!862 (toList!5629 lt!1854175)))))

(declare-fun b!4694012 () Bool)

(declare-fun lt!1854670 () Unit!124777)

(assert (=> b!4694012 (= e!2928277 lt!1854670)))

(declare-fun lt!1854668 () Unit!124777)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1697 (List!52577 K!13825) Unit!124777)

(assert (=> b!4694012 (= lt!1854668 (lemmaContainsKeyImpliesGetValueByKeyDefined!1697 (toList!5629 lt!1854175) key!4653))))

(declare-fun isDefined!9376 (Option!12121) Bool)

(assert (=> b!4694012 (isDefined!9376 (getValueByKey!1805 (toList!5629 lt!1854175) key!4653))))

(declare-fun lt!1854672 () Unit!124777)

(assert (=> b!4694012 (= lt!1854672 lt!1854668)))

(declare-fun lemmaInListThenGetKeysListContains!857 (List!52577 K!13825) Unit!124777)

(assert (=> b!4694012 (= lt!1854670 (lemmaInListThenGetKeysListContains!857 (toList!5629 lt!1854175) key!4653))))

(declare-fun call!328097 () Bool)

(assert (=> b!4694012 call!328097))

(declare-fun b!4694013 () Bool)

(assert (=> b!4694013 (= e!2928275 e!2928274)))

(declare-fun res!1980539 () Bool)

(assert (=> b!4694013 (=> (not res!1980539) (not e!2928274))))

(assert (=> b!4694013 (= res!1980539 (isDefined!9376 (getValueByKey!1805 (toList!5629 lt!1854175) key!4653)))))

(declare-fun b!4694014 () Bool)

(assert (=> b!4694014 (= e!2928278 (not (contains!15686 (keys!18741 lt!1854175) key!4653)))))

(declare-fun b!4694015 () Bool)

(declare-fun e!2928276 () Unit!124777)

(declare-fun Unit!124849 () Unit!124777)

(assert (=> b!4694015 (= e!2928276 Unit!124849)))

(declare-fun b!4694016 () Bool)

(assert (=> b!4694016 (= e!2928273 (keys!18741 lt!1854175))))

(declare-fun bm!328092 () Bool)

(assert (=> bm!328092 (= call!328097 (contains!15686 e!2928273 key!4653))))

(declare-fun c!802511 () Bool)

(assert (=> bm!328092 (= c!802511 c!802509)))

(declare-fun b!4694017 () Bool)

(assert (=> b!4694017 (= e!2928277 e!2928276)))

(declare-fun c!802510 () Bool)

(assert (=> b!4694017 (= c!802510 call!328097)))

(declare-fun b!4694018 () Bool)

(assert (=> b!4694018 false))

(declare-fun lt!1854667 () Unit!124777)

(declare-fun lt!1854669 () Unit!124777)

(assert (=> b!4694018 (= lt!1854667 lt!1854669)))

(assert (=> b!4694018 (containsKey!3097 (toList!5629 lt!1854175) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!861 (List!52577 K!13825) Unit!124777)

(assert (=> b!4694018 (= lt!1854669 (lemmaInGetKeysListThenContainsKey!861 (toList!5629 lt!1854175) key!4653))))

(declare-fun Unit!124850 () Unit!124777)

(assert (=> b!4694018 (= e!2928276 Unit!124850)))

(assert (= (and d!1492073 c!802509) b!4694012))

(assert (= (and d!1492073 (not c!802509)) b!4694017))

(assert (= (and b!4694017 c!802510) b!4694018))

(assert (= (and b!4694017 (not c!802510)) b!4694015))

(assert (= (or b!4694012 b!4694017) bm!328092))

(assert (= (and bm!328092 c!802511) b!4694011))

(assert (= (and bm!328092 (not c!802511)) b!4694016))

(assert (= (and d!1492073 res!1980538) b!4694014))

(assert (= (and d!1492073 (not res!1980537)) b!4694013))

(assert (= (and b!4694013 res!1980539) b!4694010))

(declare-fun m!5600101 () Bool)

(assert (=> d!1492073 m!5600101))

(declare-fun m!5600103 () Bool)

(assert (=> b!4694012 m!5600103))

(declare-fun m!5600105 () Bool)

(assert (=> b!4694012 m!5600105))

(assert (=> b!4694012 m!5600105))

(declare-fun m!5600107 () Bool)

(assert (=> b!4694012 m!5600107))

(declare-fun m!5600109 () Bool)

(assert (=> b!4694012 m!5600109))

(assert (=> b!4694018 m!5600101))

(declare-fun m!5600111 () Bool)

(assert (=> b!4694018 m!5600111))

(declare-fun m!5600113 () Bool)

(assert (=> b!4694011 m!5600113))

(declare-fun m!5600115 () Bool)

(assert (=> bm!328092 m!5600115))

(assert (=> b!4694010 m!5599881))

(assert (=> b!4694010 m!5599881))

(declare-fun m!5600117 () Bool)

(assert (=> b!4694010 m!5600117))

(assert (=> b!4694013 m!5600105))

(assert (=> b!4694013 m!5600105))

(assert (=> b!4694013 m!5600107))

(assert (=> b!4694016 m!5599881))

(assert (=> b!4694014 m!5599881))

(assert (=> b!4694014 m!5599881))

(assert (=> b!4694014 m!5600117))

(assert (=> b!4693607 d!1492073))

(declare-fun d!1492075 () Bool)

(assert (=> d!1492075 (= (head!10003 newBucket!218) (h!58710 newBucket!218))))

(assert (=> b!4693607 d!1492075))

(declare-fun bs!1089537 () Bool)

(declare-fun b!4694022 () Bool)

(assert (= bs!1089537 (and b!4694022 b!4693985)))

(declare-fun lambda!208290 () Int)

(assert (=> bs!1089537 (= lambda!208290 lambda!208287)))

(declare-fun bs!1089538 () Bool)

(assert (= bs!1089538 (and b!4694022 b!4693837)))

(assert (=> bs!1089538 (= lambda!208290 lambda!208247)))

(declare-fun bs!1089539 () Bool)

(assert (= bs!1089539 (and b!4694022 d!1492067)))

(assert (=> bs!1089539 (= (= lt!1854164 lt!1854625) (= lambda!208290 lambda!208289))))

(declare-fun bs!1089540 () Bool)

(assert (= bs!1089540 (and b!4694022 d!1491907)))

(assert (=> bs!1089540 (= (= lt!1854164 lt!1854505) (= lambda!208290 lambda!208250))))

(declare-fun bs!1089541 () Bool)

(assert (= bs!1089541 (and b!4694022 b!4693834)))

(assert (=> bs!1089541 (= lambda!208290 lambda!208248)))

(assert (=> bs!1089541 (= (= lt!1854164 lt!1854506) (= lambda!208290 lambda!208249))))

(declare-fun bs!1089542 () Bool)

(assert (= bs!1089542 (and b!4694022 d!1492025)))

(assert (=> bs!1089542 (not (= lambda!208290 lambda!208274))))

(assert (=> bs!1089537 (= (= lt!1854164 lt!1854626) (= lambda!208290 lambda!208288))))

(declare-fun bs!1089543 () Bool)

(assert (= bs!1089543 (and b!4694022 b!4693988)))

(assert (=> bs!1089543 (= lambda!208290 lambda!208286)))

(declare-fun bs!1089544 () Bool)

(assert (= bs!1089544 (and b!4694022 d!1492019)))

(assert (=> bs!1089544 (not (= lambda!208290 lambda!208273))))

(assert (=> b!4694022 true))

(declare-fun bs!1089545 () Bool)

(declare-fun b!4694019 () Bool)

(assert (= bs!1089545 (and b!4694019 b!4693985)))

(declare-fun lambda!208291 () Int)

(assert (=> bs!1089545 (= lambda!208291 lambda!208287)))

(declare-fun bs!1089546 () Bool)

(assert (= bs!1089546 (and b!4694019 b!4693837)))

(assert (=> bs!1089546 (= lambda!208291 lambda!208247)))

(declare-fun bs!1089547 () Bool)

(assert (= bs!1089547 (and b!4694019 d!1492067)))

(assert (=> bs!1089547 (= (= lt!1854164 lt!1854625) (= lambda!208291 lambda!208289))))

(declare-fun bs!1089548 () Bool)

(assert (= bs!1089548 (and b!4694019 d!1491907)))

(assert (=> bs!1089548 (= (= lt!1854164 lt!1854505) (= lambda!208291 lambda!208250))))

(declare-fun bs!1089549 () Bool)

(assert (= bs!1089549 (and b!4694019 b!4693834)))

(assert (=> bs!1089549 (= (= lt!1854164 lt!1854506) (= lambda!208291 lambda!208249))))

(declare-fun bs!1089550 () Bool)

(assert (= bs!1089550 (and b!4694019 d!1492025)))

(assert (=> bs!1089550 (not (= lambda!208291 lambda!208274))))

(assert (=> bs!1089545 (= (= lt!1854164 lt!1854626) (= lambda!208291 lambda!208288))))

(declare-fun bs!1089551 () Bool)

(assert (= bs!1089551 (and b!4694019 b!4694022)))

(assert (=> bs!1089551 (= lambda!208291 lambda!208290)))

(assert (=> bs!1089549 (= lambda!208291 lambda!208248)))

(declare-fun bs!1089552 () Bool)

(assert (= bs!1089552 (and b!4694019 b!4693988)))

(assert (=> bs!1089552 (= lambda!208291 lambda!208286)))

(declare-fun bs!1089553 () Bool)

(assert (= bs!1089553 (and b!4694019 d!1492019)))

(assert (=> bs!1089553 (not (= lambda!208291 lambda!208273))))

(assert (=> b!4694019 true))

(declare-fun lt!1854675 () ListMap!4993)

(declare-fun lambda!208292 () Int)

(assert (=> b!4694019 (= (= lt!1854675 lt!1854164) (= lambda!208292 lambda!208291))))

(assert (=> bs!1089545 (= (= lt!1854675 lt!1854164) (= lambda!208292 lambda!208287))))

(assert (=> bs!1089546 (= (= lt!1854675 lt!1854164) (= lambda!208292 lambda!208247))))

(assert (=> bs!1089547 (= (= lt!1854675 lt!1854625) (= lambda!208292 lambda!208289))))

(assert (=> bs!1089548 (= (= lt!1854675 lt!1854505) (= lambda!208292 lambda!208250))))

(assert (=> bs!1089549 (= (= lt!1854675 lt!1854506) (= lambda!208292 lambda!208249))))

(assert (=> bs!1089550 (not (= lambda!208292 lambda!208274))))

(assert (=> bs!1089545 (= (= lt!1854675 lt!1854626) (= lambda!208292 lambda!208288))))

(assert (=> bs!1089551 (= (= lt!1854675 lt!1854164) (= lambda!208292 lambda!208290))))

(assert (=> bs!1089549 (= (= lt!1854675 lt!1854164) (= lambda!208292 lambda!208248))))

(assert (=> bs!1089552 (= (= lt!1854675 lt!1854164) (= lambda!208292 lambda!208286))))

(assert (=> bs!1089553 (not (= lambda!208292 lambda!208273))))

(assert (=> b!4694019 true))

(declare-fun bs!1089554 () Bool)

(declare-fun d!1492077 () Bool)

(assert (= bs!1089554 (and d!1492077 b!4694019)))

(declare-fun lambda!208293 () Int)

(declare-fun lt!1854674 () ListMap!4993)

(assert (=> bs!1089554 (= (= lt!1854674 lt!1854164) (= lambda!208293 lambda!208291))))

(declare-fun bs!1089555 () Bool)

(assert (= bs!1089555 (and d!1492077 b!4693837)))

(assert (=> bs!1089555 (= (= lt!1854674 lt!1854164) (= lambda!208293 lambda!208247))))

(declare-fun bs!1089556 () Bool)

(assert (= bs!1089556 (and d!1492077 d!1492067)))

(assert (=> bs!1089556 (= (= lt!1854674 lt!1854625) (= lambda!208293 lambda!208289))))

(declare-fun bs!1089557 () Bool)

(assert (= bs!1089557 (and d!1492077 d!1491907)))

(assert (=> bs!1089557 (= (= lt!1854674 lt!1854505) (= lambda!208293 lambda!208250))))

(declare-fun bs!1089558 () Bool)

(assert (= bs!1089558 (and d!1492077 b!4693834)))

(assert (=> bs!1089558 (= (= lt!1854674 lt!1854506) (= lambda!208293 lambda!208249))))

(declare-fun bs!1089559 () Bool)

(assert (= bs!1089559 (and d!1492077 d!1492025)))

(assert (=> bs!1089559 (not (= lambda!208293 lambda!208274))))

(declare-fun bs!1089560 () Bool)

(assert (= bs!1089560 (and d!1492077 b!4693985)))

(assert (=> bs!1089560 (= (= lt!1854674 lt!1854626) (= lambda!208293 lambda!208288))))

(assert (=> bs!1089554 (= (= lt!1854674 lt!1854675) (= lambda!208293 lambda!208292))))

(assert (=> bs!1089560 (= (= lt!1854674 lt!1854164) (= lambda!208293 lambda!208287))))

(declare-fun bs!1089561 () Bool)

(assert (= bs!1089561 (and d!1492077 b!4694022)))

(assert (=> bs!1089561 (= (= lt!1854674 lt!1854164) (= lambda!208293 lambda!208290))))

(assert (=> bs!1089558 (= (= lt!1854674 lt!1854164) (= lambda!208293 lambda!208248))))

(declare-fun bs!1089562 () Bool)

(assert (= bs!1089562 (and d!1492077 b!4693988)))

(assert (=> bs!1089562 (= (= lt!1854674 lt!1854164) (= lambda!208293 lambda!208286))))

(declare-fun bs!1089563 () Bool)

(assert (= bs!1089563 (and d!1492077 d!1492019)))

(assert (=> bs!1089563 (not (= lambda!208293 lambda!208273))))

(assert (=> d!1492077 true))

(declare-fun e!2928280 () ListMap!4993)

(assert (=> b!4694019 (= e!2928280 lt!1854675)))

(declare-fun lt!1854676 () ListMap!4993)

(assert (=> b!4694019 (= lt!1854676 (+!2154 lt!1854164 (h!58710 (Cons!52453 lt!1854184 lt!1854171))))))

(assert (=> b!4694019 (= lt!1854675 (addToMapMapFromBucket!1302 (t!359765 (Cons!52453 lt!1854184 lt!1854171)) (+!2154 lt!1854164 (h!58710 (Cons!52453 lt!1854184 lt!1854171)))))))

(declare-fun lt!1854682 () Unit!124777)

(declare-fun call!328099 () Unit!124777)

(assert (=> b!4694019 (= lt!1854682 call!328099)))

(assert (=> b!4694019 (forall!11351 (toList!5629 lt!1854164) lambda!208291)))

(declare-fun lt!1854680 () Unit!124777)

(assert (=> b!4694019 (= lt!1854680 lt!1854682)))

(assert (=> b!4694019 (forall!11351 (toList!5629 lt!1854676) lambda!208292)))

(declare-fun lt!1854690 () Unit!124777)

(declare-fun Unit!124851 () Unit!124777)

(assert (=> b!4694019 (= lt!1854690 Unit!124851)))

(declare-fun call!328098 () Bool)

(assert (=> b!4694019 call!328098))

(declare-fun lt!1854685 () Unit!124777)

(declare-fun Unit!124852 () Unit!124777)

(assert (=> b!4694019 (= lt!1854685 Unit!124852)))

(declare-fun lt!1854692 () Unit!124777)

(declare-fun Unit!124853 () Unit!124777)

(assert (=> b!4694019 (= lt!1854692 Unit!124853)))

(declare-fun lt!1854691 () Unit!124777)

(assert (=> b!4694019 (= lt!1854691 (forallContained!3458 (toList!5629 lt!1854676) lambda!208292 (h!58710 (Cons!52453 lt!1854184 lt!1854171))))))

(assert (=> b!4694019 (contains!15680 lt!1854676 (_1!30231 (h!58710 (Cons!52453 lt!1854184 lt!1854171))))))

(declare-fun lt!1854679 () Unit!124777)

(declare-fun Unit!124854 () Unit!124777)

(assert (=> b!4694019 (= lt!1854679 Unit!124854)))

(assert (=> b!4694019 (contains!15680 lt!1854675 (_1!30231 (h!58710 (Cons!52453 lt!1854184 lt!1854171))))))

(declare-fun lt!1854683 () Unit!124777)

(declare-fun Unit!124855 () Unit!124777)

(assert (=> b!4694019 (= lt!1854683 Unit!124855)))

(assert (=> b!4694019 (forall!11351 (Cons!52453 lt!1854184 lt!1854171) lambda!208292)))

(declare-fun lt!1854684 () Unit!124777)

(declare-fun Unit!124856 () Unit!124777)

(assert (=> b!4694019 (= lt!1854684 Unit!124856)))

(assert (=> b!4694019 (forall!11351 (toList!5629 lt!1854676) lambda!208292)))

(declare-fun lt!1854693 () Unit!124777)

(declare-fun Unit!124857 () Unit!124777)

(assert (=> b!4694019 (= lt!1854693 Unit!124857)))

(declare-fun lt!1854687 () Unit!124777)

(declare-fun Unit!124858 () Unit!124777)

(assert (=> b!4694019 (= lt!1854687 Unit!124858)))

(declare-fun lt!1854678 () Unit!124777)

(assert (=> b!4694019 (= lt!1854678 (addForallContainsKeyThenBeforeAdding!709 lt!1854164 lt!1854675 (_1!30231 (h!58710 (Cons!52453 lt!1854184 lt!1854171))) (_2!30231 (h!58710 (Cons!52453 lt!1854184 lt!1854171)))))))

(assert (=> b!4694019 (forall!11351 (toList!5629 lt!1854164) lambda!208292)))

(declare-fun lt!1854688 () Unit!124777)

(assert (=> b!4694019 (= lt!1854688 lt!1854678)))

(assert (=> b!4694019 (forall!11351 (toList!5629 lt!1854164) lambda!208292)))

(declare-fun lt!1854686 () Unit!124777)

(declare-fun Unit!124859 () Unit!124777)

(assert (=> b!4694019 (= lt!1854686 Unit!124859)))

(declare-fun res!1980542 () Bool)

(assert (=> b!4694019 (= res!1980542 (forall!11351 (Cons!52453 lt!1854184 lt!1854171) lambda!208292))))

(declare-fun e!2928281 () Bool)

(assert (=> b!4694019 (=> (not res!1980542) (not e!2928281))))

(assert (=> b!4694019 e!2928281))

(declare-fun lt!1854689 () Unit!124777)

(declare-fun Unit!124860 () Unit!124777)

(assert (=> b!4694019 (= lt!1854689 Unit!124860)))

(declare-fun b!4694020 () Bool)

(declare-fun res!1980541 () Bool)

(declare-fun e!2928279 () Bool)

(assert (=> b!4694020 (=> (not res!1980541) (not e!2928279))))

(assert (=> b!4694020 (= res!1980541 (forall!11351 (toList!5629 lt!1854164) lambda!208293))))

(declare-fun b!4694021 () Bool)

(assert (=> b!4694021 (= e!2928279 (invariantList!1422 (toList!5629 lt!1854674)))))

(declare-fun bm!328093 () Bool)

(assert (=> bm!328093 (= call!328099 (lemmaContainsAllItsOwnKeys!710 lt!1854164))))

(declare-fun bm!328094 () Bool)

(declare-fun call!328100 () Bool)

(declare-fun c!802512 () Bool)

(assert (=> bm!328094 (= call!328100 (forall!11351 (toList!5629 lt!1854164) (ite c!802512 lambda!208290 lambda!208292)))))

(assert (=> b!4694022 (= e!2928280 lt!1854164)))

(declare-fun lt!1854677 () Unit!124777)

(assert (=> b!4694022 (= lt!1854677 call!328099)))

(assert (=> b!4694022 call!328098))

(declare-fun lt!1854681 () Unit!124777)

(assert (=> b!4694022 (= lt!1854681 lt!1854677)))

(assert (=> b!4694022 call!328100))

(declare-fun lt!1854673 () Unit!124777)

(declare-fun Unit!124861 () Unit!124777)

(assert (=> b!4694022 (= lt!1854673 Unit!124861)))

(declare-fun b!4694023 () Bool)

(assert (=> b!4694023 (= e!2928281 call!328100)))

(assert (=> d!1492077 e!2928279))

(declare-fun res!1980540 () Bool)

(assert (=> d!1492077 (=> (not res!1980540) (not e!2928279))))

(assert (=> d!1492077 (= res!1980540 (forall!11351 (Cons!52453 lt!1854184 lt!1854171) lambda!208293))))

(assert (=> d!1492077 (= lt!1854674 e!2928280)))

(assert (=> d!1492077 (= c!802512 ((_ is Nil!52453) (Cons!52453 lt!1854184 lt!1854171)))))

(assert (=> d!1492077 (noDuplicateKeys!1870 (Cons!52453 lt!1854184 lt!1854171))))

(assert (=> d!1492077 (= (addToMapMapFromBucket!1302 (Cons!52453 lt!1854184 lt!1854171) lt!1854164) lt!1854674)))

(declare-fun bm!328095 () Bool)

(assert (=> bm!328095 (= call!328098 (forall!11351 (ite c!802512 (toList!5629 lt!1854164) (t!359765 (Cons!52453 lt!1854184 lt!1854171))) (ite c!802512 lambda!208290 lambda!208292)))))

(assert (= (and d!1492077 c!802512) b!4694022))

(assert (= (and d!1492077 (not c!802512)) b!4694019))

(assert (= (and b!4694019 res!1980542) b!4694023))

(assert (= (or b!4694022 b!4694019) bm!328093))

(assert (= (or b!4694022 b!4694019) bm!328095))

(assert (= (or b!4694022 b!4694023) bm!328094))

(assert (= (and d!1492077 res!1980540) b!4694020))

(assert (= (and b!4694020 res!1980541) b!4694021))

(declare-fun m!5600119 () Bool)

(assert (=> b!4694019 m!5600119))

(declare-fun m!5600121 () Bool)

(assert (=> b!4694019 m!5600121))

(assert (=> b!4694019 m!5600121))

(declare-fun m!5600123 () Bool)

(assert (=> b!4694019 m!5600123))

(declare-fun m!5600125 () Bool)

(assert (=> b!4694019 m!5600125))

(declare-fun m!5600127 () Bool)

(assert (=> b!4694019 m!5600127))

(declare-fun m!5600129 () Bool)

(assert (=> b!4694019 m!5600129))

(assert (=> b!4694019 m!5600119))

(declare-fun m!5600131 () Bool)

(assert (=> b!4694019 m!5600131))

(assert (=> b!4694019 m!5600131))

(assert (=> b!4694019 m!5600123))

(declare-fun m!5600133 () Bool)

(assert (=> b!4694019 m!5600133))

(declare-fun m!5600135 () Bool)

(assert (=> b!4694019 m!5600135))

(declare-fun m!5600137 () Bool)

(assert (=> b!4694019 m!5600137))

(declare-fun m!5600139 () Bool)

(assert (=> d!1492077 m!5600139))

(declare-fun m!5600141 () Bool)

(assert (=> d!1492077 m!5600141))

(declare-fun m!5600143 () Bool)

(assert (=> bm!328094 m!5600143))

(assert (=> bm!328093 m!5599721))

(declare-fun m!5600145 () Bool)

(assert (=> b!4694021 m!5600145))

(declare-fun m!5600147 () Bool)

(assert (=> bm!328095 m!5600147))

(declare-fun m!5600149 () Bool)

(assert (=> b!4694020 m!5600149))

(assert (=> b!4693607 d!1492077))

(declare-fun d!1492079 () Bool)

(assert (=> d!1492079 (= (eq!1029 (addToMapMapFromBucket!1302 (Cons!52453 lt!1854178 lt!1854161) lt!1854164) (+!2154 (addToMapMapFromBucket!1302 lt!1854161 lt!1854164) lt!1854178)) (= (content!9196 (toList!5629 (addToMapMapFromBucket!1302 (Cons!52453 lt!1854178 lt!1854161) lt!1854164))) (content!9196 (toList!5629 (+!2154 (addToMapMapFromBucket!1302 lt!1854161 lt!1854164) lt!1854178)))))))

(declare-fun bs!1089564 () Bool)

(assert (= bs!1089564 d!1492079))

(declare-fun m!5600151 () Bool)

(assert (=> bs!1089564 m!5600151))

(declare-fun m!5600153 () Bool)

(assert (=> bs!1089564 m!5600153))

(assert (=> b!4693607 d!1492079))

(declare-fun bs!1089565 () Bool)

(declare-fun b!4694027 () Bool)

(assert (= bs!1089565 (and b!4694027 b!4694019)))

(declare-fun lambda!208294 () Int)

(assert (=> bs!1089565 (= lambda!208294 lambda!208291)))

(declare-fun bs!1089566 () Bool)

(assert (= bs!1089566 (and b!4694027 b!4693837)))

(assert (=> bs!1089566 (= lambda!208294 lambda!208247)))

(declare-fun bs!1089567 () Bool)

(assert (= bs!1089567 (and b!4694027 d!1492067)))

(assert (=> bs!1089567 (= (= lt!1854164 lt!1854625) (= lambda!208294 lambda!208289))))

(declare-fun bs!1089568 () Bool)

(assert (= bs!1089568 (and b!4694027 d!1491907)))

(assert (=> bs!1089568 (= (= lt!1854164 lt!1854505) (= lambda!208294 lambda!208250))))

(declare-fun bs!1089569 () Bool)

(assert (= bs!1089569 (and b!4694027 b!4693834)))

(assert (=> bs!1089569 (= (= lt!1854164 lt!1854506) (= lambda!208294 lambda!208249))))

(declare-fun bs!1089570 () Bool)

(assert (= bs!1089570 (and b!4694027 d!1492025)))

(assert (=> bs!1089570 (not (= lambda!208294 lambda!208274))))

(declare-fun bs!1089571 () Bool)

(assert (= bs!1089571 (and b!4694027 b!4693985)))

(assert (=> bs!1089571 (= (= lt!1854164 lt!1854626) (= lambda!208294 lambda!208288))))

(declare-fun bs!1089572 () Bool)

(assert (= bs!1089572 (and b!4694027 d!1492077)))

(assert (=> bs!1089572 (= (= lt!1854164 lt!1854674) (= lambda!208294 lambda!208293))))

(assert (=> bs!1089565 (= (= lt!1854164 lt!1854675) (= lambda!208294 lambda!208292))))

(assert (=> bs!1089571 (= lambda!208294 lambda!208287)))

(declare-fun bs!1089573 () Bool)

(assert (= bs!1089573 (and b!4694027 b!4694022)))

(assert (=> bs!1089573 (= lambda!208294 lambda!208290)))

(assert (=> bs!1089569 (= lambda!208294 lambda!208248)))

(declare-fun bs!1089574 () Bool)

(assert (= bs!1089574 (and b!4694027 b!4693988)))

(assert (=> bs!1089574 (= lambda!208294 lambda!208286)))

(declare-fun bs!1089575 () Bool)

(assert (= bs!1089575 (and b!4694027 d!1492019)))

(assert (=> bs!1089575 (not (= lambda!208294 lambda!208273))))

(assert (=> b!4694027 true))

(declare-fun bs!1089576 () Bool)

(declare-fun b!4694024 () Bool)

(assert (= bs!1089576 (and b!4694024 b!4694019)))

(declare-fun lambda!208295 () Int)

(assert (=> bs!1089576 (= lambda!208295 lambda!208291)))

(declare-fun bs!1089577 () Bool)

(assert (= bs!1089577 (and b!4694024 b!4693837)))

(assert (=> bs!1089577 (= lambda!208295 lambda!208247)))

(declare-fun bs!1089578 () Bool)

(assert (= bs!1089578 (and b!4694024 d!1492067)))

(assert (=> bs!1089578 (= (= lt!1854164 lt!1854625) (= lambda!208295 lambda!208289))))

(declare-fun bs!1089579 () Bool)

(assert (= bs!1089579 (and b!4694024 d!1491907)))

(assert (=> bs!1089579 (= (= lt!1854164 lt!1854505) (= lambda!208295 lambda!208250))))

(declare-fun bs!1089580 () Bool)

(assert (= bs!1089580 (and b!4694024 b!4693834)))

(assert (=> bs!1089580 (= (= lt!1854164 lt!1854506) (= lambda!208295 lambda!208249))))

(declare-fun bs!1089581 () Bool)

(assert (= bs!1089581 (and b!4694024 b!4694027)))

(assert (=> bs!1089581 (= lambda!208295 lambda!208294)))

(declare-fun bs!1089582 () Bool)

(assert (= bs!1089582 (and b!4694024 d!1492025)))

(assert (=> bs!1089582 (not (= lambda!208295 lambda!208274))))

(declare-fun bs!1089583 () Bool)

(assert (= bs!1089583 (and b!4694024 b!4693985)))

(assert (=> bs!1089583 (= (= lt!1854164 lt!1854626) (= lambda!208295 lambda!208288))))

(declare-fun bs!1089584 () Bool)

(assert (= bs!1089584 (and b!4694024 d!1492077)))

(assert (=> bs!1089584 (= (= lt!1854164 lt!1854674) (= lambda!208295 lambda!208293))))

(assert (=> bs!1089576 (= (= lt!1854164 lt!1854675) (= lambda!208295 lambda!208292))))

(assert (=> bs!1089583 (= lambda!208295 lambda!208287)))

(declare-fun bs!1089585 () Bool)

(assert (= bs!1089585 (and b!4694024 b!4694022)))

(assert (=> bs!1089585 (= lambda!208295 lambda!208290)))

(assert (=> bs!1089580 (= lambda!208295 lambda!208248)))

(declare-fun bs!1089586 () Bool)

(assert (= bs!1089586 (and b!4694024 b!4693988)))

(assert (=> bs!1089586 (= lambda!208295 lambda!208286)))

(declare-fun bs!1089587 () Bool)

(assert (= bs!1089587 (and b!4694024 d!1492019)))

(assert (=> bs!1089587 (not (= lambda!208295 lambda!208273))))

(assert (=> b!4694024 true))

(declare-fun lambda!208296 () Int)

(declare-fun lt!1854696 () ListMap!4993)

(assert (=> bs!1089576 (= (= lt!1854696 lt!1854164) (= lambda!208296 lambda!208291))))

(assert (=> bs!1089577 (= (= lt!1854696 lt!1854164) (= lambda!208296 lambda!208247))))

(assert (=> bs!1089578 (= (= lt!1854696 lt!1854625) (= lambda!208296 lambda!208289))))

(assert (=> bs!1089579 (= (= lt!1854696 lt!1854505) (= lambda!208296 lambda!208250))))

(assert (=> bs!1089580 (= (= lt!1854696 lt!1854506) (= lambda!208296 lambda!208249))))

(assert (=> bs!1089581 (= (= lt!1854696 lt!1854164) (= lambda!208296 lambda!208294))))

(assert (=> bs!1089582 (not (= lambda!208296 lambda!208274))))

(assert (=> bs!1089583 (= (= lt!1854696 lt!1854626) (= lambda!208296 lambda!208288))))

(assert (=> b!4694024 (= (= lt!1854696 lt!1854164) (= lambda!208296 lambda!208295))))

(assert (=> bs!1089584 (= (= lt!1854696 lt!1854674) (= lambda!208296 lambda!208293))))

(assert (=> bs!1089576 (= (= lt!1854696 lt!1854675) (= lambda!208296 lambda!208292))))

(assert (=> bs!1089583 (= (= lt!1854696 lt!1854164) (= lambda!208296 lambda!208287))))

(assert (=> bs!1089585 (= (= lt!1854696 lt!1854164) (= lambda!208296 lambda!208290))))

(assert (=> bs!1089580 (= (= lt!1854696 lt!1854164) (= lambda!208296 lambda!208248))))

(assert (=> bs!1089586 (= (= lt!1854696 lt!1854164) (= lambda!208296 lambda!208286))))

(assert (=> bs!1089587 (not (= lambda!208296 lambda!208273))))

(assert (=> b!4694024 true))

(declare-fun bs!1089588 () Bool)

(declare-fun d!1492081 () Bool)

(assert (= bs!1089588 (and d!1492081 b!4694019)))

(declare-fun lt!1854695 () ListMap!4993)

(declare-fun lambda!208297 () Int)

(assert (=> bs!1089588 (= (= lt!1854695 lt!1854164) (= lambda!208297 lambda!208291))))

(declare-fun bs!1089589 () Bool)

(assert (= bs!1089589 (and d!1492081 b!4693837)))

(assert (=> bs!1089589 (= (= lt!1854695 lt!1854164) (= lambda!208297 lambda!208247))))

(declare-fun bs!1089590 () Bool)

(assert (= bs!1089590 (and d!1492081 d!1492067)))

(assert (=> bs!1089590 (= (= lt!1854695 lt!1854625) (= lambda!208297 lambda!208289))))

(declare-fun bs!1089591 () Bool)

(assert (= bs!1089591 (and d!1492081 d!1491907)))

(assert (=> bs!1089591 (= (= lt!1854695 lt!1854505) (= lambda!208297 lambda!208250))))

(declare-fun bs!1089592 () Bool)

(assert (= bs!1089592 (and d!1492081 b!4693834)))

(assert (=> bs!1089592 (= (= lt!1854695 lt!1854506) (= lambda!208297 lambda!208249))))

(declare-fun bs!1089593 () Bool)

(assert (= bs!1089593 (and d!1492081 b!4694027)))

(assert (=> bs!1089593 (= (= lt!1854695 lt!1854164) (= lambda!208297 lambda!208294))))

(declare-fun bs!1089594 () Bool)

(assert (= bs!1089594 (and d!1492081 d!1492025)))

(assert (=> bs!1089594 (not (= lambda!208297 lambda!208274))))

(declare-fun bs!1089595 () Bool)

(assert (= bs!1089595 (and d!1492081 b!4693985)))

(assert (=> bs!1089595 (= (= lt!1854695 lt!1854626) (= lambda!208297 lambda!208288))))

(declare-fun bs!1089596 () Bool)

(assert (= bs!1089596 (and d!1492081 b!4694024)))

(assert (=> bs!1089596 (= (= lt!1854695 lt!1854696) (= lambda!208297 lambda!208296))))

(assert (=> bs!1089596 (= (= lt!1854695 lt!1854164) (= lambda!208297 lambda!208295))))

(declare-fun bs!1089597 () Bool)

(assert (= bs!1089597 (and d!1492081 d!1492077)))

(assert (=> bs!1089597 (= (= lt!1854695 lt!1854674) (= lambda!208297 lambda!208293))))

(assert (=> bs!1089588 (= (= lt!1854695 lt!1854675) (= lambda!208297 lambda!208292))))

(assert (=> bs!1089595 (= (= lt!1854695 lt!1854164) (= lambda!208297 lambda!208287))))

(declare-fun bs!1089598 () Bool)

(assert (= bs!1089598 (and d!1492081 b!4694022)))

(assert (=> bs!1089598 (= (= lt!1854695 lt!1854164) (= lambda!208297 lambda!208290))))

(assert (=> bs!1089592 (= (= lt!1854695 lt!1854164) (= lambda!208297 lambda!208248))))

(declare-fun bs!1089599 () Bool)

(assert (= bs!1089599 (and d!1492081 b!4693988)))

(assert (=> bs!1089599 (= (= lt!1854695 lt!1854164) (= lambda!208297 lambda!208286))))

(declare-fun bs!1089600 () Bool)

(assert (= bs!1089600 (and d!1492081 d!1492019)))

(assert (=> bs!1089600 (not (= lambda!208297 lambda!208273))))

(assert (=> d!1492081 true))

(declare-fun e!2928283 () ListMap!4993)

(assert (=> b!4694024 (= e!2928283 lt!1854696)))

(declare-fun lt!1854697 () ListMap!4993)

(assert (=> b!4694024 (= lt!1854697 (+!2154 lt!1854164 (h!58710 lt!1854171)))))

(assert (=> b!4694024 (= lt!1854696 (addToMapMapFromBucket!1302 (t!359765 lt!1854171) (+!2154 lt!1854164 (h!58710 lt!1854171))))))

(declare-fun lt!1854703 () Unit!124777)

(declare-fun call!328102 () Unit!124777)

(assert (=> b!4694024 (= lt!1854703 call!328102)))

(assert (=> b!4694024 (forall!11351 (toList!5629 lt!1854164) lambda!208295)))

(declare-fun lt!1854701 () Unit!124777)

(assert (=> b!4694024 (= lt!1854701 lt!1854703)))

(assert (=> b!4694024 (forall!11351 (toList!5629 lt!1854697) lambda!208296)))

(declare-fun lt!1854711 () Unit!124777)

(declare-fun Unit!124862 () Unit!124777)

(assert (=> b!4694024 (= lt!1854711 Unit!124862)))

(declare-fun call!328101 () Bool)

(assert (=> b!4694024 call!328101))

(declare-fun lt!1854706 () Unit!124777)

(declare-fun Unit!124863 () Unit!124777)

(assert (=> b!4694024 (= lt!1854706 Unit!124863)))

(declare-fun lt!1854713 () Unit!124777)

(declare-fun Unit!124864 () Unit!124777)

(assert (=> b!4694024 (= lt!1854713 Unit!124864)))

(declare-fun lt!1854712 () Unit!124777)

(assert (=> b!4694024 (= lt!1854712 (forallContained!3458 (toList!5629 lt!1854697) lambda!208296 (h!58710 lt!1854171)))))

(assert (=> b!4694024 (contains!15680 lt!1854697 (_1!30231 (h!58710 lt!1854171)))))

(declare-fun lt!1854700 () Unit!124777)

(declare-fun Unit!124865 () Unit!124777)

(assert (=> b!4694024 (= lt!1854700 Unit!124865)))

(assert (=> b!4694024 (contains!15680 lt!1854696 (_1!30231 (h!58710 lt!1854171)))))

(declare-fun lt!1854704 () Unit!124777)

(declare-fun Unit!124866 () Unit!124777)

(assert (=> b!4694024 (= lt!1854704 Unit!124866)))

(assert (=> b!4694024 (forall!11351 lt!1854171 lambda!208296)))

(declare-fun lt!1854705 () Unit!124777)

(declare-fun Unit!124867 () Unit!124777)

(assert (=> b!4694024 (= lt!1854705 Unit!124867)))

(assert (=> b!4694024 (forall!11351 (toList!5629 lt!1854697) lambda!208296)))

(declare-fun lt!1854714 () Unit!124777)

(declare-fun Unit!124868 () Unit!124777)

(assert (=> b!4694024 (= lt!1854714 Unit!124868)))

(declare-fun lt!1854708 () Unit!124777)

(declare-fun Unit!124869 () Unit!124777)

(assert (=> b!4694024 (= lt!1854708 Unit!124869)))

(declare-fun lt!1854699 () Unit!124777)

(assert (=> b!4694024 (= lt!1854699 (addForallContainsKeyThenBeforeAdding!709 lt!1854164 lt!1854696 (_1!30231 (h!58710 lt!1854171)) (_2!30231 (h!58710 lt!1854171))))))

(assert (=> b!4694024 (forall!11351 (toList!5629 lt!1854164) lambda!208296)))

(declare-fun lt!1854709 () Unit!124777)

(assert (=> b!4694024 (= lt!1854709 lt!1854699)))

(assert (=> b!4694024 (forall!11351 (toList!5629 lt!1854164) lambda!208296)))

(declare-fun lt!1854707 () Unit!124777)

(declare-fun Unit!124870 () Unit!124777)

(assert (=> b!4694024 (= lt!1854707 Unit!124870)))

(declare-fun res!1980545 () Bool)

(assert (=> b!4694024 (= res!1980545 (forall!11351 lt!1854171 lambda!208296))))

(declare-fun e!2928284 () Bool)

(assert (=> b!4694024 (=> (not res!1980545) (not e!2928284))))

(assert (=> b!4694024 e!2928284))

(declare-fun lt!1854710 () Unit!124777)

(declare-fun Unit!124871 () Unit!124777)

(assert (=> b!4694024 (= lt!1854710 Unit!124871)))

(declare-fun b!4694025 () Bool)

(declare-fun res!1980544 () Bool)

(declare-fun e!2928282 () Bool)

(assert (=> b!4694025 (=> (not res!1980544) (not e!2928282))))

(assert (=> b!4694025 (= res!1980544 (forall!11351 (toList!5629 lt!1854164) lambda!208297))))

(declare-fun b!4694026 () Bool)

(assert (=> b!4694026 (= e!2928282 (invariantList!1422 (toList!5629 lt!1854695)))))

(declare-fun bm!328096 () Bool)

(assert (=> bm!328096 (= call!328102 (lemmaContainsAllItsOwnKeys!710 lt!1854164))))

(declare-fun bm!328097 () Bool)

(declare-fun call!328103 () Bool)

(declare-fun c!802513 () Bool)

(assert (=> bm!328097 (= call!328103 (forall!11351 (toList!5629 lt!1854164) (ite c!802513 lambda!208294 lambda!208296)))))

(assert (=> b!4694027 (= e!2928283 lt!1854164)))

(declare-fun lt!1854698 () Unit!124777)

(assert (=> b!4694027 (= lt!1854698 call!328102)))

(assert (=> b!4694027 call!328101))

(declare-fun lt!1854702 () Unit!124777)

(assert (=> b!4694027 (= lt!1854702 lt!1854698)))

(assert (=> b!4694027 call!328103))

(declare-fun lt!1854694 () Unit!124777)

(declare-fun Unit!124874 () Unit!124777)

(assert (=> b!4694027 (= lt!1854694 Unit!124874)))

(declare-fun b!4694028 () Bool)

(assert (=> b!4694028 (= e!2928284 call!328103)))

(assert (=> d!1492081 e!2928282))

(declare-fun res!1980543 () Bool)

(assert (=> d!1492081 (=> (not res!1980543) (not e!2928282))))

(assert (=> d!1492081 (= res!1980543 (forall!11351 lt!1854171 lambda!208297))))

(assert (=> d!1492081 (= lt!1854695 e!2928283)))

(assert (=> d!1492081 (= c!802513 ((_ is Nil!52453) lt!1854171))))

(assert (=> d!1492081 (noDuplicateKeys!1870 lt!1854171)))

(assert (=> d!1492081 (= (addToMapMapFromBucket!1302 lt!1854171 lt!1854164) lt!1854695)))

(declare-fun bm!328098 () Bool)

(assert (=> bm!328098 (= call!328101 (forall!11351 (ite c!802513 (toList!5629 lt!1854164) (t!359765 lt!1854171)) (ite c!802513 lambda!208294 lambda!208296)))))

(assert (= (and d!1492081 c!802513) b!4694027))

(assert (= (and d!1492081 (not c!802513)) b!4694024))

(assert (= (and b!4694024 res!1980545) b!4694028))

(assert (= (or b!4694027 b!4694024) bm!328096))

(assert (= (or b!4694027 b!4694024) bm!328098))

(assert (= (or b!4694027 b!4694028) bm!328097))

(assert (= (and d!1492081 res!1980543) b!4694025))

(assert (= (and b!4694025 res!1980544) b!4694026))

(declare-fun m!5600155 () Bool)

(assert (=> b!4694024 m!5600155))

(declare-fun m!5600157 () Bool)

(assert (=> b!4694024 m!5600157))

(assert (=> b!4694024 m!5600157))

(declare-fun m!5600159 () Bool)

(assert (=> b!4694024 m!5600159))

(declare-fun m!5600161 () Bool)

(assert (=> b!4694024 m!5600161))

(declare-fun m!5600163 () Bool)

(assert (=> b!4694024 m!5600163))

(declare-fun m!5600165 () Bool)

(assert (=> b!4694024 m!5600165))

(assert (=> b!4694024 m!5600155))

(declare-fun m!5600167 () Bool)

(assert (=> b!4694024 m!5600167))

(assert (=> b!4694024 m!5600167))

(assert (=> b!4694024 m!5600159))

(declare-fun m!5600169 () Bool)

(assert (=> b!4694024 m!5600169))

(declare-fun m!5600171 () Bool)

(assert (=> b!4694024 m!5600171))

(declare-fun m!5600173 () Bool)

(assert (=> b!4694024 m!5600173))

(declare-fun m!5600175 () Bool)

(assert (=> d!1492081 m!5600175))

(assert (=> d!1492081 m!5599319))

(declare-fun m!5600177 () Bool)

(assert (=> bm!328097 m!5600177))

(assert (=> bm!328096 m!5599721))

(declare-fun m!5600179 () Bool)

(assert (=> b!4694026 m!5600179))

(declare-fun m!5600181 () Bool)

(assert (=> bm!328098 m!5600181))

(declare-fun m!5600183 () Bool)

(assert (=> b!4694025 m!5600183))

(assert (=> b!4693607 d!1492081))

(declare-fun d!1492083 () Bool)

(assert (=> d!1492083 (= (eq!1029 (addToMapMapFromBucket!1302 (Cons!52453 lt!1854184 lt!1854171) lt!1854164) (+!2154 (addToMapMapFromBucket!1302 lt!1854171 lt!1854164) lt!1854184)) (= (content!9196 (toList!5629 (addToMapMapFromBucket!1302 (Cons!52453 lt!1854184 lt!1854171) lt!1854164))) (content!9196 (toList!5629 (+!2154 (addToMapMapFromBucket!1302 lt!1854171 lt!1854164) lt!1854184)))))))

(declare-fun bs!1089601 () Bool)

(assert (= bs!1089601 d!1492083))

(declare-fun m!5600185 () Bool)

(assert (=> bs!1089601 m!5600185))

(declare-fun m!5600187 () Bool)

(assert (=> bs!1089601 m!5600187))

(assert (=> b!4693607 d!1492083))

(declare-fun bs!1089602 () Bool)

(declare-fun b!4694032 () Bool)

(assert (= bs!1089602 (and b!4694032 b!4694019)))

(declare-fun lambda!208298 () Int)

(assert (=> bs!1089602 (= lambda!208298 lambda!208291)))

(declare-fun bs!1089603 () Bool)

(assert (= bs!1089603 (and b!4694032 b!4693837)))

(assert (=> bs!1089603 (= lambda!208298 lambda!208247)))

(declare-fun bs!1089604 () Bool)

(assert (= bs!1089604 (and b!4694032 d!1492067)))

(assert (=> bs!1089604 (= (= lt!1854164 lt!1854625) (= lambda!208298 lambda!208289))))

(declare-fun bs!1089605 () Bool)

(assert (= bs!1089605 (and b!4694032 d!1491907)))

(assert (=> bs!1089605 (= (= lt!1854164 lt!1854505) (= lambda!208298 lambda!208250))))

(declare-fun bs!1089606 () Bool)

(assert (= bs!1089606 (and b!4694032 d!1492081)))

(assert (=> bs!1089606 (= (= lt!1854164 lt!1854695) (= lambda!208298 lambda!208297))))

(declare-fun bs!1089607 () Bool)

(assert (= bs!1089607 (and b!4694032 b!4693834)))

(assert (=> bs!1089607 (= (= lt!1854164 lt!1854506) (= lambda!208298 lambda!208249))))

(declare-fun bs!1089608 () Bool)

(assert (= bs!1089608 (and b!4694032 b!4694027)))

(assert (=> bs!1089608 (= lambda!208298 lambda!208294)))

(declare-fun bs!1089609 () Bool)

(assert (= bs!1089609 (and b!4694032 d!1492025)))

(assert (=> bs!1089609 (not (= lambda!208298 lambda!208274))))

(declare-fun bs!1089610 () Bool)

(assert (= bs!1089610 (and b!4694032 b!4693985)))

(assert (=> bs!1089610 (= (= lt!1854164 lt!1854626) (= lambda!208298 lambda!208288))))

(declare-fun bs!1089611 () Bool)

(assert (= bs!1089611 (and b!4694032 b!4694024)))

(assert (=> bs!1089611 (= (= lt!1854164 lt!1854696) (= lambda!208298 lambda!208296))))

(assert (=> bs!1089611 (= lambda!208298 lambda!208295)))

(declare-fun bs!1089612 () Bool)

(assert (= bs!1089612 (and b!4694032 d!1492077)))

(assert (=> bs!1089612 (= (= lt!1854164 lt!1854674) (= lambda!208298 lambda!208293))))

(assert (=> bs!1089602 (= (= lt!1854164 lt!1854675) (= lambda!208298 lambda!208292))))

(assert (=> bs!1089610 (= lambda!208298 lambda!208287)))

(declare-fun bs!1089613 () Bool)

(assert (= bs!1089613 (and b!4694032 b!4694022)))

(assert (=> bs!1089613 (= lambda!208298 lambda!208290)))

(assert (=> bs!1089607 (= lambda!208298 lambda!208248)))

(declare-fun bs!1089614 () Bool)

(assert (= bs!1089614 (and b!4694032 b!4693988)))

(assert (=> bs!1089614 (= lambda!208298 lambda!208286)))

(declare-fun bs!1089615 () Bool)

(assert (= bs!1089615 (and b!4694032 d!1492019)))

(assert (=> bs!1089615 (not (= lambda!208298 lambda!208273))))

(assert (=> b!4694032 true))

(declare-fun bs!1089616 () Bool)

(declare-fun b!4694029 () Bool)

(assert (= bs!1089616 (and b!4694029 b!4694032)))

(declare-fun lambda!208299 () Int)

(assert (=> bs!1089616 (= lambda!208299 lambda!208298)))

(declare-fun bs!1089617 () Bool)

(assert (= bs!1089617 (and b!4694029 b!4694019)))

(assert (=> bs!1089617 (= lambda!208299 lambda!208291)))

(declare-fun bs!1089618 () Bool)

(assert (= bs!1089618 (and b!4694029 b!4693837)))

(assert (=> bs!1089618 (= lambda!208299 lambda!208247)))

(declare-fun bs!1089619 () Bool)

(assert (= bs!1089619 (and b!4694029 d!1492067)))

(assert (=> bs!1089619 (= (= lt!1854164 lt!1854625) (= lambda!208299 lambda!208289))))

(declare-fun bs!1089620 () Bool)

(assert (= bs!1089620 (and b!4694029 d!1491907)))

(assert (=> bs!1089620 (= (= lt!1854164 lt!1854505) (= lambda!208299 lambda!208250))))

(declare-fun bs!1089621 () Bool)

(assert (= bs!1089621 (and b!4694029 d!1492081)))

(assert (=> bs!1089621 (= (= lt!1854164 lt!1854695) (= lambda!208299 lambda!208297))))

(declare-fun bs!1089622 () Bool)

(assert (= bs!1089622 (and b!4694029 b!4693834)))

(assert (=> bs!1089622 (= (= lt!1854164 lt!1854506) (= lambda!208299 lambda!208249))))

(declare-fun bs!1089623 () Bool)

(assert (= bs!1089623 (and b!4694029 b!4694027)))

(assert (=> bs!1089623 (= lambda!208299 lambda!208294)))

(declare-fun bs!1089624 () Bool)

(assert (= bs!1089624 (and b!4694029 d!1492025)))

(assert (=> bs!1089624 (not (= lambda!208299 lambda!208274))))

(declare-fun bs!1089625 () Bool)

(assert (= bs!1089625 (and b!4694029 b!4693985)))

(assert (=> bs!1089625 (= (= lt!1854164 lt!1854626) (= lambda!208299 lambda!208288))))

(declare-fun bs!1089626 () Bool)

(assert (= bs!1089626 (and b!4694029 b!4694024)))

(assert (=> bs!1089626 (= (= lt!1854164 lt!1854696) (= lambda!208299 lambda!208296))))

(assert (=> bs!1089626 (= lambda!208299 lambda!208295)))

(declare-fun bs!1089627 () Bool)

(assert (= bs!1089627 (and b!4694029 d!1492077)))

(assert (=> bs!1089627 (= (= lt!1854164 lt!1854674) (= lambda!208299 lambda!208293))))

(assert (=> bs!1089617 (= (= lt!1854164 lt!1854675) (= lambda!208299 lambda!208292))))

(assert (=> bs!1089625 (= lambda!208299 lambda!208287)))

(declare-fun bs!1089628 () Bool)

(assert (= bs!1089628 (and b!4694029 b!4694022)))

(assert (=> bs!1089628 (= lambda!208299 lambda!208290)))

(assert (=> bs!1089622 (= lambda!208299 lambda!208248)))

(declare-fun bs!1089629 () Bool)

(assert (= bs!1089629 (and b!4694029 b!4693988)))

(assert (=> bs!1089629 (= lambda!208299 lambda!208286)))

(declare-fun bs!1089630 () Bool)

(assert (= bs!1089630 (and b!4694029 d!1492019)))

(assert (=> bs!1089630 (not (= lambda!208299 lambda!208273))))

(assert (=> b!4694029 true))

(declare-fun lt!1854717 () ListMap!4993)

(declare-fun lambda!208300 () Int)

(assert (=> bs!1089616 (= (= lt!1854717 lt!1854164) (= lambda!208300 lambda!208298))))

(assert (=> bs!1089617 (= (= lt!1854717 lt!1854164) (= lambda!208300 lambda!208291))))

(assert (=> bs!1089618 (= (= lt!1854717 lt!1854164) (= lambda!208300 lambda!208247))))

(assert (=> bs!1089619 (= (= lt!1854717 lt!1854625) (= lambda!208300 lambda!208289))))

(assert (=> bs!1089620 (= (= lt!1854717 lt!1854505) (= lambda!208300 lambda!208250))))

(assert (=> bs!1089621 (= (= lt!1854717 lt!1854695) (= lambda!208300 lambda!208297))))

(assert (=> bs!1089622 (= (= lt!1854717 lt!1854506) (= lambda!208300 lambda!208249))))

(assert (=> bs!1089623 (= (= lt!1854717 lt!1854164) (= lambda!208300 lambda!208294))))

(assert (=> bs!1089624 (not (= lambda!208300 lambda!208274))))

(assert (=> bs!1089625 (= (= lt!1854717 lt!1854626) (= lambda!208300 lambda!208288))))

(assert (=> bs!1089626 (= (= lt!1854717 lt!1854696) (= lambda!208300 lambda!208296))))

(assert (=> bs!1089626 (= (= lt!1854717 lt!1854164) (= lambda!208300 lambda!208295))))

(assert (=> b!4694029 (= (= lt!1854717 lt!1854164) (= lambda!208300 lambda!208299))))

(assert (=> bs!1089627 (= (= lt!1854717 lt!1854674) (= lambda!208300 lambda!208293))))

(assert (=> bs!1089617 (= (= lt!1854717 lt!1854675) (= lambda!208300 lambda!208292))))

(assert (=> bs!1089625 (= (= lt!1854717 lt!1854164) (= lambda!208300 lambda!208287))))

(assert (=> bs!1089628 (= (= lt!1854717 lt!1854164) (= lambda!208300 lambda!208290))))

(assert (=> bs!1089622 (= (= lt!1854717 lt!1854164) (= lambda!208300 lambda!208248))))

(assert (=> bs!1089629 (= (= lt!1854717 lt!1854164) (= lambda!208300 lambda!208286))))

(assert (=> bs!1089630 (not (= lambda!208300 lambda!208273))))

(assert (=> b!4694029 true))

(declare-fun bs!1089631 () Bool)

(declare-fun d!1492085 () Bool)

(assert (= bs!1089631 (and d!1492085 b!4694029)))

(declare-fun lt!1854716 () ListMap!4993)

(declare-fun lambda!208301 () Int)

(assert (=> bs!1089631 (= (= lt!1854716 lt!1854717) (= lambda!208301 lambda!208300))))

(declare-fun bs!1089632 () Bool)

(assert (= bs!1089632 (and d!1492085 b!4694032)))

(assert (=> bs!1089632 (= (= lt!1854716 lt!1854164) (= lambda!208301 lambda!208298))))

(declare-fun bs!1089633 () Bool)

(assert (= bs!1089633 (and d!1492085 b!4694019)))

(assert (=> bs!1089633 (= (= lt!1854716 lt!1854164) (= lambda!208301 lambda!208291))))

(declare-fun bs!1089634 () Bool)

(assert (= bs!1089634 (and d!1492085 b!4693837)))

(assert (=> bs!1089634 (= (= lt!1854716 lt!1854164) (= lambda!208301 lambda!208247))))

(declare-fun bs!1089635 () Bool)

(assert (= bs!1089635 (and d!1492085 d!1492067)))

(assert (=> bs!1089635 (= (= lt!1854716 lt!1854625) (= lambda!208301 lambda!208289))))

(declare-fun bs!1089636 () Bool)

(assert (= bs!1089636 (and d!1492085 d!1491907)))

(assert (=> bs!1089636 (= (= lt!1854716 lt!1854505) (= lambda!208301 lambda!208250))))

(declare-fun bs!1089637 () Bool)

(assert (= bs!1089637 (and d!1492085 d!1492081)))

(assert (=> bs!1089637 (= (= lt!1854716 lt!1854695) (= lambda!208301 lambda!208297))))

(declare-fun bs!1089638 () Bool)

(assert (= bs!1089638 (and d!1492085 b!4693834)))

(assert (=> bs!1089638 (= (= lt!1854716 lt!1854506) (= lambda!208301 lambda!208249))))

(declare-fun bs!1089639 () Bool)

(assert (= bs!1089639 (and d!1492085 b!4694027)))

(assert (=> bs!1089639 (= (= lt!1854716 lt!1854164) (= lambda!208301 lambda!208294))))

(declare-fun bs!1089640 () Bool)

(assert (= bs!1089640 (and d!1492085 d!1492025)))

(assert (=> bs!1089640 (not (= lambda!208301 lambda!208274))))

(declare-fun bs!1089641 () Bool)

(assert (= bs!1089641 (and d!1492085 b!4693985)))

(assert (=> bs!1089641 (= (= lt!1854716 lt!1854626) (= lambda!208301 lambda!208288))))

(declare-fun bs!1089642 () Bool)

(assert (= bs!1089642 (and d!1492085 b!4694024)))

(assert (=> bs!1089642 (= (= lt!1854716 lt!1854696) (= lambda!208301 lambda!208296))))

(assert (=> bs!1089642 (= (= lt!1854716 lt!1854164) (= lambda!208301 lambda!208295))))

(assert (=> bs!1089631 (= (= lt!1854716 lt!1854164) (= lambda!208301 lambda!208299))))

(declare-fun bs!1089643 () Bool)

(assert (= bs!1089643 (and d!1492085 d!1492077)))

(assert (=> bs!1089643 (= (= lt!1854716 lt!1854674) (= lambda!208301 lambda!208293))))

(assert (=> bs!1089633 (= (= lt!1854716 lt!1854675) (= lambda!208301 lambda!208292))))

(assert (=> bs!1089641 (= (= lt!1854716 lt!1854164) (= lambda!208301 lambda!208287))))

(declare-fun bs!1089644 () Bool)

(assert (= bs!1089644 (and d!1492085 b!4694022)))

(assert (=> bs!1089644 (= (= lt!1854716 lt!1854164) (= lambda!208301 lambda!208290))))

(assert (=> bs!1089638 (= (= lt!1854716 lt!1854164) (= lambda!208301 lambda!208248))))

(declare-fun bs!1089645 () Bool)

(assert (= bs!1089645 (and d!1492085 b!4693988)))

(assert (=> bs!1089645 (= (= lt!1854716 lt!1854164) (= lambda!208301 lambda!208286))))

(declare-fun bs!1089646 () Bool)

(assert (= bs!1089646 (and d!1492085 d!1492019)))

(assert (=> bs!1089646 (not (= lambda!208301 lambda!208273))))

(assert (=> d!1492085 true))

(declare-fun e!2928286 () ListMap!4993)

(assert (=> b!4694029 (= e!2928286 lt!1854717)))

(declare-fun lt!1854718 () ListMap!4993)

(assert (=> b!4694029 (= lt!1854718 (+!2154 lt!1854164 (h!58710 (Cons!52453 lt!1854178 lt!1854161))))))

(assert (=> b!4694029 (= lt!1854717 (addToMapMapFromBucket!1302 (t!359765 (Cons!52453 lt!1854178 lt!1854161)) (+!2154 lt!1854164 (h!58710 (Cons!52453 lt!1854178 lt!1854161)))))))

(declare-fun lt!1854724 () Unit!124777)

(declare-fun call!328105 () Unit!124777)

(assert (=> b!4694029 (= lt!1854724 call!328105)))

(assert (=> b!4694029 (forall!11351 (toList!5629 lt!1854164) lambda!208299)))

(declare-fun lt!1854722 () Unit!124777)

(assert (=> b!4694029 (= lt!1854722 lt!1854724)))

(assert (=> b!4694029 (forall!11351 (toList!5629 lt!1854718) lambda!208300)))

(declare-fun lt!1854732 () Unit!124777)

(declare-fun Unit!124884 () Unit!124777)

(assert (=> b!4694029 (= lt!1854732 Unit!124884)))

(declare-fun call!328104 () Bool)

(assert (=> b!4694029 call!328104))

(declare-fun lt!1854727 () Unit!124777)

(declare-fun Unit!124885 () Unit!124777)

(assert (=> b!4694029 (= lt!1854727 Unit!124885)))

(declare-fun lt!1854734 () Unit!124777)

(declare-fun Unit!124886 () Unit!124777)

(assert (=> b!4694029 (= lt!1854734 Unit!124886)))

(declare-fun lt!1854733 () Unit!124777)

(assert (=> b!4694029 (= lt!1854733 (forallContained!3458 (toList!5629 lt!1854718) lambda!208300 (h!58710 (Cons!52453 lt!1854178 lt!1854161))))))

(assert (=> b!4694029 (contains!15680 lt!1854718 (_1!30231 (h!58710 (Cons!52453 lt!1854178 lt!1854161))))))

(declare-fun lt!1854721 () Unit!124777)

(declare-fun Unit!124887 () Unit!124777)

(assert (=> b!4694029 (= lt!1854721 Unit!124887)))

(assert (=> b!4694029 (contains!15680 lt!1854717 (_1!30231 (h!58710 (Cons!52453 lt!1854178 lt!1854161))))))

(declare-fun lt!1854725 () Unit!124777)

(declare-fun Unit!124888 () Unit!124777)

(assert (=> b!4694029 (= lt!1854725 Unit!124888)))

(assert (=> b!4694029 (forall!11351 (Cons!52453 lt!1854178 lt!1854161) lambda!208300)))

(declare-fun lt!1854726 () Unit!124777)

(declare-fun Unit!124889 () Unit!124777)

(assert (=> b!4694029 (= lt!1854726 Unit!124889)))

(assert (=> b!4694029 (forall!11351 (toList!5629 lt!1854718) lambda!208300)))

(declare-fun lt!1854735 () Unit!124777)

(declare-fun Unit!124890 () Unit!124777)

(assert (=> b!4694029 (= lt!1854735 Unit!124890)))

(declare-fun lt!1854729 () Unit!124777)

(declare-fun Unit!124891 () Unit!124777)

(assert (=> b!4694029 (= lt!1854729 Unit!124891)))

(declare-fun lt!1854720 () Unit!124777)

(assert (=> b!4694029 (= lt!1854720 (addForallContainsKeyThenBeforeAdding!709 lt!1854164 lt!1854717 (_1!30231 (h!58710 (Cons!52453 lt!1854178 lt!1854161))) (_2!30231 (h!58710 (Cons!52453 lt!1854178 lt!1854161)))))))

(assert (=> b!4694029 (forall!11351 (toList!5629 lt!1854164) lambda!208300)))

(declare-fun lt!1854730 () Unit!124777)

(assert (=> b!4694029 (= lt!1854730 lt!1854720)))

(assert (=> b!4694029 (forall!11351 (toList!5629 lt!1854164) lambda!208300)))

(declare-fun lt!1854728 () Unit!124777)

(declare-fun Unit!124892 () Unit!124777)

(assert (=> b!4694029 (= lt!1854728 Unit!124892)))

(declare-fun res!1980548 () Bool)

(assert (=> b!4694029 (= res!1980548 (forall!11351 (Cons!52453 lt!1854178 lt!1854161) lambda!208300))))

(declare-fun e!2928287 () Bool)

(assert (=> b!4694029 (=> (not res!1980548) (not e!2928287))))

(assert (=> b!4694029 e!2928287))

(declare-fun lt!1854731 () Unit!124777)

(declare-fun Unit!124893 () Unit!124777)

(assert (=> b!4694029 (= lt!1854731 Unit!124893)))

(declare-fun b!4694030 () Bool)

(declare-fun res!1980547 () Bool)

(declare-fun e!2928285 () Bool)

(assert (=> b!4694030 (=> (not res!1980547) (not e!2928285))))

(assert (=> b!4694030 (= res!1980547 (forall!11351 (toList!5629 lt!1854164) lambda!208301))))

(declare-fun b!4694031 () Bool)

(assert (=> b!4694031 (= e!2928285 (invariantList!1422 (toList!5629 lt!1854716)))))

(declare-fun bm!328099 () Bool)

(assert (=> bm!328099 (= call!328105 (lemmaContainsAllItsOwnKeys!710 lt!1854164))))

(declare-fun call!328106 () Bool)

(declare-fun bm!328100 () Bool)

(declare-fun c!802514 () Bool)

(assert (=> bm!328100 (= call!328106 (forall!11351 (toList!5629 lt!1854164) (ite c!802514 lambda!208298 lambda!208300)))))

(assert (=> b!4694032 (= e!2928286 lt!1854164)))

(declare-fun lt!1854719 () Unit!124777)

(assert (=> b!4694032 (= lt!1854719 call!328105)))

(assert (=> b!4694032 call!328104))

(declare-fun lt!1854723 () Unit!124777)

(assert (=> b!4694032 (= lt!1854723 lt!1854719)))

(assert (=> b!4694032 call!328106))

(declare-fun lt!1854715 () Unit!124777)

(declare-fun Unit!124896 () Unit!124777)

(assert (=> b!4694032 (= lt!1854715 Unit!124896)))

(declare-fun b!4694033 () Bool)

(assert (=> b!4694033 (= e!2928287 call!328106)))

(assert (=> d!1492085 e!2928285))

(declare-fun res!1980546 () Bool)

(assert (=> d!1492085 (=> (not res!1980546) (not e!2928285))))

(assert (=> d!1492085 (= res!1980546 (forall!11351 (Cons!52453 lt!1854178 lt!1854161) lambda!208301))))

(assert (=> d!1492085 (= lt!1854716 e!2928286)))

(assert (=> d!1492085 (= c!802514 ((_ is Nil!52453) (Cons!52453 lt!1854178 lt!1854161)))))

(assert (=> d!1492085 (noDuplicateKeys!1870 (Cons!52453 lt!1854178 lt!1854161))))

(assert (=> d!1492085 (= (addToMapMapFromBucket!1302 (Cons!52453 lt!1854178 lt!1854161) lt!1854164) lt!1854716)))

(declare-fun bm!328101 () Bool)

(assert (=> bm!328101 (= call!328104 (forall!11351 (ite c!802514 (toList!5629 lt!1854164) (t!359765 (Cons!52453 lt!1854178 lt!1854161))) (ite c!802514 lambda!208298 lambda!208300)))))

(assert (= (and d!1492085 c!802514) b!4694032))

(assert (= (and d!1492085 (not c!802514)) b!4694029))

(assert (= (and b!4694029 res!1980548) b!4694033))

(assert (= (or b!4694032 b!4694029) bm!328099))

(assert (= (or b!4694032 b!4694029) bm!328101))

(assert (= (or b!4694032 b!4694033) bm!328100))

(assert (= (and d!1492085 res!1980546) b!4694030))

(assert (= (and b!4694030 res!1980547) b!4694031))

(declare-fun m!5600189 () Bool)

(assert (=> b!4694029 m!5600189))

(declare-fun m!5600191 () Bool)

(assert (=> b!4694029 m!5600191))

(assert (=> b!4694029 m!5600191))

(declare-fun m!5600193 () Bool)

(assert (=> b!4694029 m!5600193))

(declare-fun m!5600195 () Bool)

(assert (=> b!4694029 m!5600195))

(declare-fun m!5600197 () Bool)

(assert (=> b!4694029 m!5600197))

(declare-fun m!5600199 () Bool)

(assert (=> b!4694029 m!5600199))

(assert (=> b!4694029 m!5600189))

(declare-fun m!5600201 () Bool)

(assert (=> b!4694029 m!5600201))

(assert (=> b!4694029 m!5600201))

(assert (=> b!4694029 m!5600193))

(declare-fun m!5600203 () Bool)

(assert (=> b!4694029 m!5600203))

(declare-fun m!5600205 () Bool)

(assert (=> b!4694029 m!5600205))

(declare-fun m!5600207 () Bool)

(assert (=> b!4694029 m!5600207))

(declare-fun m!5600209 () Bool)

(assert (=> d!1492085 m!5600209))

(declare-fun m!5600211 () Bool)

(assert (=> d!1492085 m!5600211))

(declare-fun m!5600213 () Bool)

(assert (=> bm!328100 m!5600213))

(assert (=> bm!328099 m!5599721))

(declare-fun m!5600215 () Bool)

(assert (=> b!4694031 m!5600215))

(declare-fun m!5600217 () Bool)

(assert (=> bm!328101 m!5600217))

(declare-fun m!5600219 () Bool)

(assert (=> b!4694030 m!5600219))

(assert (=> b!4693607 d!1492085))

(declare-fun bs!1089647 () Bool)

(declare-fun d!1492087 () Bool)

(assert (= bs!1089647 (and d!1492087 d!1492007)))

(declare-fun lambda!208302 () Int)

(assert (=> bs!1089647 (= lambda!208302 lambda!208263)))

(declare-fun bs!1089648 () Bool)

(assert (= bs!1089648 (and d!1492087 start!475184)))

(assert (=> bs!1089648 (= lambda!208302 lambda!208143)))

(declare-fun bs!1089649 () Bool)

(assert (= bs!1089649 (and d!1492087 d!1491879)))

(assert (=> bs!1089649 (= lambda!208302 lambda!208188)))

(declare-fun bs!1089650 () Bool)

(assert (= bs!1089650 (and d!1492087 d!1492005)))

(assert (=> bs!1089650 (= lambda!208302 lambda!208262)))

(declare-fun bs!1089651 () Bool)

(assert (= bs!1089651 (and d!1492087 d!1492013)))

(assert (=> bs!1089651 (= lambda!208302 lambda!208264)))

(declare-fun bs!1089652 () Bool)

(assert (= bs!1089652 (and d!1492087 d!1492017)))

(assert (=> bs!1089652 (not (= lambda!208302 lambda!208269))))

(declare-fun bs!1089653 () Bool)

(assert (= bs!1089653 (and d!1492087 d!1492053)))

(assert (=> bs!1089653 (= lambda!208302 lambda!208285)))

(declare-fun bs!1089654 () Bool)

(assert (= bs!1089654 (and d!1492087 d!1491877)))

(assert (=> bs!1089654 (= lambda!208302 lambda!208149)))

(declare-fun bs!1089655 () Bool)

(assert (= bs!1089655 (and d!1492087 d!1491977)))

(assert (=> bs!1089655 (= lambda!208302 lambda!208260)))

(declare-fun bs!1089656 () Bool)

(assert (= bs!1089656 (and d!1492087 d!1491957)))

(assert (=> bs!1089656 (= lambda!208302 lambda!208253)))

(declare-fun lt!1854736 () ListMap!4993)

(assert (=> d!1492087 (invariantList!1422 (toList!5629 lt!1854736))))

(declare-fun e!2928288 () ListMap!4993)

(assert (=> d!1492087 (= lt!1854736 e!2928288)))

(declare-fun c!802515 () Bool)

(assert (=> d!1492087 (= c!802515 ((_ is Cons!52454) lt!1854162))))

(assert (=> d!1492087 (forall!11349 lt!1854162 lambda!208302)))

(assert (=> d!1492087 (= (extractMap!1896 lt!1854162) lt!1854736)))

(declare-fun b!4694034 () Bool)

(assert (=> b!4694034 (= e!2928288 (addToMapMapFromBucket!1302 (_2!30232 (h!58711 lt!1854162)) (extractMap!1896 (t!359766 lt!1854162))))))

(declare-fun b!4694035 () Bool)

(assert (=> b!4694035 (= e!2928288 (ListMap!4994 Nil!52453))))

(assert (= (and d!1492087 c!802515) b!4694034))

(assert (= (and d!1492087 (not c!802515)) b!4694035))

(declare-fun m!5600221 () Bool)

(assert (=> d!1492087 m!5600221))

(declare-fun m!5600223 () Bool)

(assert (=> d!1492087 m!5600223))

(declare-fun m!5600225 () Bool)

(assert (=> b!4694034 m!5600225))

(assert (=> b!4694034 m!5600225))

(declare-fun m!5600227 () Bool)

(assert (=> b!4694034 m!5600227))

(assert (=> b!4693607 d!1492087))

(declare-fun bs!1089657 () Bool)

(declare-fun d!1492089 () Bool)

(assert (= bs!1089657 (and d!1492089 d!1492007)))

(declare-fun lambda!208303 () Int)

(assert (=> bs!1089657 (= lambda!208303 lambda!208263)))

(declare-fun bs!1089658 () Bool)

(assert (= bs!1089658 (and d!1492089 start!475184)))

(assert (=> bs!1089658 (= lambda!208303 lambda!208143)))

(declare-fun bs!1089659 () Bool)

(assert (= bs!1089659 (and d!1492089 d!1491879)))

(assert (=> bs!1089659 (= lambda!208303 lambda!208188)))

(declare-fun bs!1089660 () Bool)

(assert (= bs!1089660 (and d!1492089 d!1492005)))

(assert (=> bs!1089660 (= lambda!208303 lambda!208262)))

(declare-fun bs!1089661 () Bool)

(assert (= bs!1089661 (and d!1492089 d!1492013)))

(assert (=> bs!1089661 (= lambda!208303 lambda!208264)))

(declare-fun bs!1089662 () Bool)

(assert (= bs!1089662 (and d!1492089 d!1492017)))

(assert (=> bs!1089662 (not (= lambda!208303 lambda!208269))))

(declare-fun bs!1089663 () Bool)

(assert (= bs!1089663 (and d!1492089 d!1492053)))

(assert (=> bs!1089663 (= lambda!208303 lambda!208285)))

(declare-fun bs!1089664 () Bool)

(assert (= bs!1089664 (and d!1492089 d!1491877)))

(assert (=> bs!1089664 (= lambda!208303 lambda!208149)))

(declare-fun bs!1089665 () Bool)

(assert (= bs!1089665 (and d!1492089 d!1492087)))

(assert (=> bs!1089665 (= lambda!208303 lambda!208302)))

(declare-fun bs!1089666 () Bool)

(assert (= bs!1089666 (and d!1492089 d!1491977)))

(assert (=> bs!1089666 (= lambda!208303 lambda!208260)))

(declare-fun bs!1089667 () Bool)

(assert (= bs!1089667 (and d!1492089 d!1491957)))

(assert (=> bs!1089667 (= lambda!208303 lambda!208253)))

(declare-fun lt!1854737 () ListMap!4993)

(assert (=> d!1492089 (invariantList!1422 (toList!5629 lt!1854737))))

(declare-fun e!2928289 () ListMap!4993)

(assert (=> d!1492089 (= lt!1854737 e!2928289)))

(declare-fun c!802516 () Bool)

(assert (=> d!1492089 (= c!802516 ((_ is Cons!52454) (Cons!52454 lt!1854167 (t!359766 (toList!5630 lm!2023)))))))

(assert (=> d!1492089 (forall!11349 (Cons!52454 lt!1854167 (t!359766 (toList!5630 lm!2023))) lambda!208303)))

(assert (=> d!1492089 (= (extractMap!1896 (Cons!52454 lt!1854167 (t!359766 (toList!5630 lm!2023)))) lt!1854737)))

(declare-fun b!4694036 () Bool)

(assert (=> b!4694036 (= e!2928289 (addToMapMapFromBucket!1302 (_2!30232 (h!58711 (Cons!52454 lt!1854167 (t!359766 (toList!5630 lm!2023))))) (extractMap!1896 (t!359766 (Cons!52454 lt!1854167 (t!359766 (toList!5630 lm!2023)))))))))

(declare-fun b!4694037 () Bool)

(assert (=> b!4694037 (= e!2928289 (ListMap!4994 Nil!52453))))

(assert (= (and d!1492089 c!802516) b!4694036))

(assert (= (and d!1492089 (not c!802516)) b!4694037))

(declare-fun m!5600229 () Bool)

(assert (=> d!1492089 m!5600229))

(declare-fun m!5600231 () Bool)

(assert (=> d!1492089 m!5600231))

(declare-fun m!5600233 () Bool)

(assert (=> b!4694036 m!5600233))

(assert (=> b!4694036 m!5600233))

(declare-fun m!5600235 () Bool)

(assert (=> b!4694036 m!5600235))

(assert (=> b!4693607 d!1492089))

(declare-fun d!1492091 () Bool)

(assert (=> d!1492091 (eq!1029 (addToMapMapFromBucket!1302 (Cons!52453 lt!1854184 lt!1854171) lt!1854164) (+!2154 (addToMapMapFromBucket!1302 lt!1854171 lt!1854164) lt!1854184))))

(declare-fun lt!1854738 () Unit!124777)

(assert (=> d!1492091 (= lt!1854738 (choose!32678 lt!1854184 lt!1854171 lt!1854164))))

(assert (=> d!1492091 (noDuplicateKeys!1870 lt!1854171)))

(assert (=> d!1492091 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!278 lt!1854184 lt!1854171 lt!1854164) lt!1854738)))

(declare-fun bs!1089668 () Bool)

(assert (= bs!1089668 d!1492091))

(assert (=> bs!1089668 m!5599245))

(assert (=> bs!1089668 m!5599319))

(assert (=> bs!1089668 m!5599269))

(assert (=> bs!1089668 m!5599245))

(assert (=> bs!1089668 m!5599251))

(assert (=> bs!1089668 m!5599253))

(declare-fun m!5600237 () Bool)

(assert (=> bs!1089668 m!5600237))

(assert (=> bs!1089668 m!5599269))

(assert (=> bs!1089668 m!5599251))

(assert (=> b!4693607 d!1492091))

(declare-fun d!1492093 () Bool)

(declare-fun e!2928290 () Bool)

(assert (=> d!1492093 e!2928290))

(declare-fun res!1980550 () Bool)

(assert (=> d!1492093 (=> (not res!1980550) (not e!2928290))))

(declare-fun lt!1854740 () ListMap!4993)

(assert (=> d!1492093 (= res!1980550 (contains!15680 lt!1854740 (_1!30231 lt!1854178)))))

(declare-fun lt!1854739 () List!52577)

(assert (=> d!1492093 (= lt!1854740 (ListMap!4994 lt!1854739))))

(declare-fun lt!1854741 () Unit!124777)

(declare-fun lt!1854742 () Unit!124777)

(assert (=> d!1492093 (= lt!1854741 lt!1854742)))

(assert (=> d!1492093 (= (getValueByKey!1805 lt!1854739 (_1!30231 lt!1854178)) (Some!12120 (_2!30231 lt!1854178)))))

(assert (=> d!1492093 (= lt!1854742 (lemmaContainsTupThenGetReturnValue!1012 lt!1854739 (_1!30231 lt!1854178) (_2!30231 lt!1854178)))))

(assert (=> d!1492093 (= lt!1854739 (insertNoDuplicatedKeys!520 (toList!5629 (addToMapMapFromBucket!1302 lt!1854161 lt!1854164)) (_1!30231 lt!1854178) (_2!30231 lt!1854178)))))

(assert (=> d!1492093 (= (+!2154 (addToMapMapFromBucket!1302 lt!1854161 lt!1854164) lt!1854178) lt!1854740)))

(declare-fun b!4694038 () Bool)

(declare-fun res!1980549 () Bool)

(assert (=> b!4694038 (=> (not res!1980549) (not e!2928290))))

(assert (=> b!4694038 (= res!1980549 (= (getValueByKey!1805 (toList!5629 lt!1854740) (_1!30231 lt!1854178)) (Some!12120 (_2!30231 lt!1854178))))))

(declare-fun b!4694039 () Bool)

(assert (=> b!4694039 (= e!2928290 (contains!15683 (toList!5629 lt!1854740) lt!1854178))))

(assert (= (and d!1492093 res!1980550) b!4694038))

(assert (= (and b!4694038 res!1980549) b!4694039))

(declare-fun m!5600239 () Bool)

(assert (=> d!1492093 m!5600239))

(declare-fun m!5600241 () Bool)

(assert (=> d!1492093 m!5600241))

(declare-fun m!5600243 () Bool)

(assert (=> d!1492093 m!5600243))

(declare-fun m!5600245 () Bool)

(assert (=> d!1492093 m!5600245))

(declare-fun m!5600247 () Bool)

(assert (=> b!4694038 m!5600247))

(declare-fun m!5600249 () Bool)

(assert (=> b!4694039 m!5600249))

(assert (=> b!4693607 d!1492093))

(declare-fun bs!1089669 () Bool)

(declare-fun d!1492095 () Bool)

(assert (= bs!1089669 (and d!1492095 d!1492007)))

(declare-fun lambda!208304 () Int)

(assert (=> bs!1089669 (= lambda!208304 lambda!208263)))

(declare-fun bs!1089670 () Bool)

(assert (= bs!1089670 (and d!1492095 start!475184)))

(assert (=> bs!1089670 (= lambda!208304 lambda!208143)))

(declare-fun bs!1089671 () Bool)

(assert (= bs!1089671 (and d!1492095 d!1491879)))

(assert (=> bs!1089671 (= lambda!208304 lambda!208188)))

(declare-fun bs!1089672 () Bool)

(assert (= bs!1089672 (and d!1492095 d!1492005)))

(assert (=> bs!1089672 (= lambda!208304 lambda!208262)))

(declare-fun bs!1089673 () Bool)

(assert (= bs!1089673 (and d!1492095 d!1492013)))

(assert (=> bs!1089673 (= lambda!208304 lambda!208264)))

(declare-fun bs!1089674 () Bool)

(assert (= bs!1089674 (and d!1492095 d!1492017)))

(assert (=> bs!1089674 (not (= lambda!208304 lambda!208269))))

(declare-fun bs!1089675 () Bool)

(assert (= bs!1089675 (and d!1492095 d!1492053)))

(assert (=> bs!1089675 (= lambda!208304 lambda!208285)))

(declare-fun bs!1089676 () Bool)

(assert (= bs!1089676 (and d!1492095 d!1491877)))

(assert (=> bs!1089676 (= lambda!208304 lambda!208149)))

(declare-fun bs!1089677 () Bool)

(assert (= bs!1089677 (and d!1492095 d!1492089)))

(assert (=> bs!1089677 (= lambda!208304 lambda!208303)))

(declare-fun bs!1089678 () Bool)

(assert (= bs!1089678 (and d!1492095 d!1492087)))

(assert (=> bs!1089678 (= lambda!208304 lambda!208302)))

(declare-fun bs!1089679 () Bool)

(assert (= bs!1089679 (and d!1492095 d!1491977)))

(assert (=> bs!1089679 (= lambda!208304 lambda!208260)))

(declare-fun bs!1089680 () Bool)

(assert (= bs!1089680 (and d!1492095 d!1491957)))

(assert (=> bs!1089680 (= lambda!208304 lambda!208253)))

(declare-fun lt!1854743 () ListMap!4993)

(assert (=> d!1492095 (invariantList!1422 (toList!5629 lt!1854743))))

(declare-fun e!2928291 () ListMap!4993)

(assert (=> d!1492095 (= lt!1854743 e!2928291)))

(declare-fun c!802517 () Bool)

(assert (=> d!1492095 (= c!802517 ((_ is Cons!52454) (Cons!52454 (tuple2!53877 hash!405 lt!1854171) (t!359766 (toList!5630 lm!2023)))))))

(assert (=> d!1492095 (forall!11349 (Cons!52454 (tuple2!53877 hash!405 lt!1854171) (t!359766 (toList!5630 lm!2023))) lambda!208304)))

(assert (=> d!1492095 (= (extractMap!1896 (Cons!52454 (tuple2!53877 hash!405 lt!1854171) (t!359766 (toList!5630 lm!2023)))) lt!1854743)))

(declare-fun b!4694040 () Bool)

(assert (=> b!4694040 (= e!2928291 (addToMapMapFromBucket!1302 (_2!30232 (h!58711 (Cons!52454 (tuple2!53877 hash!405 lt!1854171) (t!359766 (toList!5630 lm!2023))))) (extractMap!1896 (t!359766 (Cons!52454 (tuple2!53877 hash!405 lt!1854171) (t!359766 (toList!5630 lm!2023)))))))))

(declare-fun b!4694041 () Bool)

(assert (=> b!4694041 (= e!2928291 (ListMap!4994 Nil!52453))))

(assert (= (and d!1492095 c!802517) b!4694040))

(assert (= (and d!1492095 (not c!802517)) b!4694041))

(declare-fun m!5600251 () Bool)

(assert (=> d!1492095 m!5600251))

(declare-fun m!5600253 () Bool)

(assert (=> d!1492095 m!5600253))

(declare-fun m!5600255 () Bool)

(assert (=> b!4694040 m!5600255))

(assert (=> b!4694040 m!5600255))

(declare-fun m!5600257 () Bool)

(assert (=> b!4694040 m!5600257))

(assert (=> b!4693607 d!1492095))

(declare-fun d!1492097 () Bool)

(declare-fun e!2928292 () Bool)

(assert (=> d!1492097 e!2928292))

(declare-fun res!1980552 () Bool)

(assert (=> d!1492097 (=> (not res!1980552) (not e!2928292))))

(declare-fun lt!1854745 () ListMap!4993)

(assert (=> d!1492097 (= res!1980552 (contains!15680 lt!1854745 (_1!30231 lt!1854184)))))

(declare-fun lt!1854744 () List!52577)

(assert (=> d!1492097 (= lt!1854745 (ListMap!4994 lt!1854744))))

(declare-fun lt!1854746 () Unit!124777)

(declare-fun lt!1854747 () Unit!124777)

(assert (=> d!1492097 (= lt!1854746 lt!1854747)))

(assert (=> d!1492097 (= (getValueByKey!1805 lt!1854744 (_1!30231 lt!1854184)) (Some!12120 (_2!30231 lt!1854184)))))

(assert (=> d!1492097 (= lt!1854747 (lemmaContainsTupThenGetReturnValue!1012 lt!1854744 (_1!30231 lt!1854184) (_2!30231 lt!1854184)))))

(assert (=> d!1492097 (= lt!1854744 (insertNoDuplicatedKeys!520 (toList!5629 (addToMapMapFromBucket!1302 lt!1854171 lt!1854164)) (_1!30231 lt!1854184) (_2!30231 lt!1854184)))))

(assert (=> d!1492097 (= (+!2154 (addToMapMapFromBucket!1302 lt!1854171 lt!1854164) lt!1854184) lt!1854745)))

(declare-fun b!4694042 () Bool)

(declare-fun res!1980551 () Bool)

(assert (=> b!4694042 (=> (not res!1980551) (not e!2928292))))

(assert (=> b!4694042 (= res!1980551 (= (getValueByKey!1805 (toList!5629 lt!1854745) (_1!30231 lt!1854184)) (Some!12120 (_2!30231 lt!1854184))))))

(declare-fun b!4694043 () Bool)

(assert (=> b!4694043 (= e!2928292 (contains!15683 (toList!5629 lt!1854745) lt!1854184))))

(assert (= (and d!1492097 res!1980552) b!4694042))

(assert (= (and b!4694042 res!1980551) b!4694043))

(declare-fun m!5600259 () Bool)

(assert (=> d!1492097 m!5600259))

(declare-fun m!5600261 () Bool)

(assert (=> d!1492097 m!5600261))

(declare-fun m!5600263 () Bool)

(assert (=> d!1492097 m!5600263))

(declare-fun m!5600265 () Bool)

(assert (=> d!1492097 m!5600265))

(declare-fun m!5600267 () Bool)

(assert (=> b!4694042 m!5600267))

(declare-fun m!5600269 () Bool)

(assert (=> b!4694043 m!5600269))

(assert (=> b!4693607 d!1492097))

(declare-fun d!1492099 () Bool)

(assert (=> d!1492099 (= (eq!1029 lt!1854176 (+!2154 lt!1854182 (h!58710 oldBucket!34))) (= (content!9196 (toList!5629 lt!1854176)) (content!9196 (toList!5629 (+!2154 lt!1854182 (h!58710 oldBucket!34))))))))

(declare-fun bs!1089681 () Bool)

(assert (= bs!1089681 d!1492099))

(assert (=> bs!1089681 m!5599909))

(declare-fun m!5600271 () Bool)

(assert (=> bs!1089681 m!5600271))

(assert (=> b!4693607 d!1492099))

(declare-fun d!1492101 () Bool)

(declare-fun res!1980553 () Bool)

(declare-fun e!2928293 () Bool)

(assert (=> d!1492101 (=> res!1980553 e!2928293)))

(assert (=> d!1492101 (= res!1980553 (not ((_ is Cons!52453) newBucket!218)))))

(assert (=> d!1492101 (= (noDuplicateKeys!1870 newBucket!218) e!2928293)))

(declare-fun b!4694044 () Bool)

(declare-fun e!2928294 () Bool)

(assert (=> b!4694044 (= e!2928293 e!2928294)))

(declare-fun res!1980554 () Bool)

(assert (=> b!4694044 (=> (not res!1980554) (not e!2928294))))

(assert (=> b!4694044 (= res!1980554 (not (containsKey!3093 (t!359765 newBucket!218) (_1!30231 (h!58710 newBucket!218)))))))

(declare-fun b!4694045 () Bool)

(assert (=> b!4694045 (= e!2928294 (noDuplicateKeys!1870 (t!359765 newBucket!218)))))

(assert (= (and d!1492101 (not res!1980553)) b!4694044))

(assert (= (and b!4694044 res!1980554) b!4694045))

(declare-fun m!5600273 () Bool)

(assert (=> b!4694044 m!5600273))

(declare-fun m!5600275 () Bool)

(assert (=> b!4694045 m!5600275))

(assert (=> b!4693609 d!1492101))

(declare-fun b!4694046 () Bool)

(declare-fun e!2928296 () Bool)

(assert (=> b!4694046 (= e!2928296 (contains!15686 (keys!18741 lt!1854163) key!4653))))

(declare-fun d!1492103 () Bool)

(declare-fun e!2928297 () Bool)

(assert (=> d!1492103 e!2928297))

(declare-fun res!1980555 () Bool)

(assert (=> d!1492103 (=> res!1980555 e!2928297)))

(declare-fun e!2928300 () Bool)

(assert (=> d!1492103 (= res!1980555 e!2928300)))

(declare-fun res!1980556 () Bool)

(assert (=> d!1492103 (=> (not res!1980556) (not e!2928300))))

(declare-fun lt!1854749 () Bool)

(assert (=> d!1492103 (= res!1980556 (not lt!1854749))))

(declare-fun lt!1854754 () Bool)

(assert (=> d!1492103 (= lt!1854749 lt!1854754)))

(declare-fun lt!1854748 () Unit!124777)

(declare-fun e!2928299 () Unit!124777)

(assert (=> d!1492103 (= lt!1854748 e!2928299)))

(declare-fun c!802518 () Bool)

(assert (=> d!1492103 (= c!802518 lt!1854754)))

(assert (=> d!1492103 (= lt!1854754 (containsKey!3097 (toList!5629 lt!1854163) key!4653))))

(assert (=> d!1492103 (= (contains!15680 lt!1854163 key!4653) lt!1854749)))

(declare-fun b!4694047 () Bool)

(declare-fun e!2928295 () List!52580)

(assert (=> b!4694047 (= e!2928295 (getKeysList!862 (toList!5629 lt!1854163)))))

(declare-fun b!4694048 () Bool)

(declare-fun lt!1854753 () Unit!124777)

(assert (=> b!4694048 (= e!2928299 lt!1854753)))

(declare-fun lt!1854751 () Unit!124777)

(assert (=> b!4694048 (= lt!1854751 (lemmaContainsKeyImpliesGetValueByKeyDefined!1697 (toList!5629 lt!1854163) key!4653))))

(assert (=> b!4694048 (isDefined!9376 (getValueByKey!1805 (toList!5629 lt!1854163) key!4653))))

(declare-fun lt!1854755 () Unit!124777)

(assert (=> b!4694048 (= lt!1854755 lt!1854751)))

(assert (=> b!4694048 (= lt!1854753 (lemmaInListThenGetKeysListContains!857 (toList!5629 lt!1854163) key!4653))))

(declare-fun call!328107 () Bool)

(assert (=> b!4694048 call!328107))

(declare-fun b!4694049 () Bool)

(assert (=> b!4694049 (= e!2928297 e!2928296)))

(declare-fun res!1980557 () Bool)

(assert (=> b!4694049 (=> (not res!1980557) (not e!2928296))))

(assert (=> b!4694049 (= res!1980557 (isDefined!9376 (getValueByKey!1805 (toList!5629 lt!1854163) key!4653)))))

(declare-fun b!4694050 () Bool)

(assert (=> b!4694050 (= e!2928300 (not (contains!15686 (keys!18741 lt!1854163) key!4653)))))

(declare-fun b!4694051 () Bool)

(declare-fun e!2928298 () Unit!124777)

(declare-fun Unit!124897 () Unit!124777)

(assert (=> b!4694051 (= e!2928298 Unit!124897)))

(declare-fun b!4694052 () Bool)

(assert (=> b!4694052 (= e!2928295 (keys!18741 lt!1854163))))

(declare-fun bm!328102 () Bool)

(assert (=> bm!328102 (= call!328107 (contains!15686 e!2928295 key!4653))))

(declare-fun c!802520 () Bool)

(assert (=> bm!328102 (= c!802520 c!802518)))

(declare-fun b!4694053 () Bool)

(assert (=> b!4694053 (= e!2928299 e!2928298)))

(declare-fun c!802519 () Bool)

(assert (=> b!4694053 (= c!802519 call!328107)))

(declare-fun b!4694054 () Bool)

(assert (=> b!4694054 false))

(declare-fun lt!1854750 () Unit!124777)

(declare-fun lt!1854752 () Unit!124777)

(assert (=> b!4694054 (= lt!1854750 lt!1854752)))

(assert (=> b!4694054 (containsKey!3097 (toList!5629 lt!1854163) key!4653)))

(assert (=> b!4694054 (= lt!1854752 (lemmaInGetKeysListThenContainsKey!861 (toList!5629 lt!1854163) key!4653))))

(declare-fun Unit!124898 () Unit!124777)

(assert (=> b!4694054 (= e!2928298 Unit!124898)))

(assert (= (and d!1492103 c!802518) b!4694048))

(assert (= (and d!1492103 (not c!802518)) b!4694053))

(assert (= (and b!4694053 c!802519) b!4694054))

(assert (= (and b!4694053 (not c!802519)) b!4694051))

(assert (= (or b!4694048 b!4694053) bm!328102))

(assert (= (and bm!328102 c!802520) b!4694047))

(assert (= (and bm!328102 (not c!802520)) b!4694052))

(assert (= (and d!1492103 res!1980556) b!4694050))

(assert (= (and d!1492103 (not res!1980555)) b!4694049))

(assert (= (and b!4694049 res!1980557) b!4694046))

(declare-fun m!5600277 () Bool)

(assert (=> d!1492103 m!5600277))

(declare-fun m!5600279 () Bool)

(assert (=> b!4694048 m!5600279))

(declare-fun m!5600281 () Bool)

(assert (=> b!4694048 m!5600281))

(assert (=> b!4694048 m!5600281))

(declare-fun m!5600283 () Bool)

(assert (=> b!4694048 m!5600283))

(declare-fun m!5600285 () Bool)

(assert (=> b!4694048 m!5600285))

(assert (=> b!4694054 m!5600277))

(declare-fun m!5600287 () Bool)

(assert (=> b!4694054 m!5600287))

(declare-fun m!5600289 () Bool)

(assert (=> b!4694047 m!5600289))

(declare-fun m!5600291 () Bool)

(assert (=> bm!328102 m!5600291))

(declare-fun m!5600293 () Bool)

(assert (=> b!4694046 m!5600293))

(assert (=> b!4694046 m!5600293))

(declare-fun m!5600295 () Bool)

(assert (=> b!4694046 m!5600295))

(assert (=> b!4694049 m!5600281))

(assert (=> b!4694049 m!5600281))

(assert (=> b!4694049 m!5600283))

(assert (=> b!4694052 m!5600293))

(assert (=> b!4694050 m!5600293))

(assert (=> b!4694050 m!5600293))

(assert (=> b!4694050 m!5600295))

(assert (=> b!4693598 d!1492103))

(declare-fun bs!1089682 () Bool)

(declare-fun d!1492105 () Bool)

(assert (= bs!1089682 (and d!1492105 d!1492007)))

(declare-fun lambda!208305 () Int)

(assert (=> bs!1089682 (= lambda!208305 lambda!208263)))

(declare-fun bs!1089683 () Bool)

(assert (= bs!1089683 (and d!1492105 start!475184)))

(assert (=> bs!1089683 (= lambda!208305 lambda!208143)))

(declare-fun bs!1089684 () Bool)

(assert (= bs!1089684 (and d!1492105 d!1491879)))

(assert (=> bs!1089684 (= lambda!208305 lambda!208188)))

(declare-fun bs!1089685 () Bool)

(assert (= bs!1089685 (and d!1492105 d!1492095)))

(assert (=> bs!1089685 (= lambda!208305 lambda!208304)))

(declare-fun bs!1089686 () Bool)

(assert (= bs!1089686 (and d!1492105 d!1492005)))

(assert (=> bs!1089686 (= lambda!208305 lambda!208262)))

(declare-fun bs!1089687 () Bool)

(assert (= bs!1089687 (and d!1492105 d!1492013)))

(assert (=> bs!1089687 (= lambda!208305 lambda!208264)))

(declare-fun bs!1089688 () Bool)

(assert (= bs!1089688 (and d!1492105 d!1492017)))

(assert (=> bs!1089688 (not (= lambda!208305 lambda!208269))))

(declare-fun bs!1089689 () Bool)

(assert (= bs!1089689 (and d!1492105 d!1492053)))

(assert (=> bs!1089689 (= lambda!208305 lambda!208285)))

(declare-fun bs!1089690 () Bool)

(assert (= bs!1089690 (and d!1492105 d!1491877)))

(assert (=> bs!1089690 (= lambda!208305 lambda!208149)))

(declare-fun bs!1089691 () Bool)

(assert (= bs!1089691 (and d!1492105 d!1492089)))

(assert (=> bs!1089691 (= lambda!208305 lambda!208303)))

(declare-fun bs!1089692 () Bool)

(assert (= bs!1089692 (and d!1492105 d!1492087)))

(assert (=> bs!1089692 (= lambda!208305 lambda!208302)))

(declare-fun bs!1089693 () Bool)

(assert (= bs!1089693 (and d!1492105 d!1491977)))

(assert (=> bs!1089693 (= lambda!208305 lambda!208260)))

(declare-fun bs!1089694 () Bool)

(assert (= bs!1089694 (and d!1492105 d!1491957)))

(assert (=> bs!1089694 (= lambda!208305 lambda!208253)))

(declare-fun lt!1854756 () ListMap!4993)

(assert (=> d!1492105 (invariantList!1422 (toList!5629 lt!1854756))))

(declare-fun e!2928301 () ListMap!4993)

(assert (=> d!1492105 (= lt!1854756 e!2928301)))

(declare-fun c!802521 () Bool)

(assert (=> d!1492105 (= c!802521 ((_ is Cons!52454) (toList!5630 lm!2023)))))

(assert (=> d!1492105 (forall!11349 (toList!5630 lm!2023) lambda!208305)))

(assert (=> d!1492105 (= (extractMap!1896 (toList!5630 lm!2023)) lt!1854756)))

(declare-fun b!4694055 () Bool)

(assert (=> b!4694055 (= e!2928301 (addToMapMapFromBucket!1302 (_2!30232 (h!58711 (toList!5630 lm!2023))) (extractMap!1896 (t!359766 (toList!5630 lm!2023)))))))

(declare-fun b!4694056 () Bool)

(assert (=> b!4694056 (= e!2928301 (ListMap!4994 Nil!52453))))

(assert (= (and d!1492105 c!802521) b!4694055))

(assert (= (and d!1492105 (not c!802521)) b!4694056))

(declare-fun m!5600297 () Bool)

(assert (=> d!1492105 m!5600297))

(declare-fun m!5600299 () Bool)

(assert (=> d!1492105 m!5600299))

(assert (=> b!4694055 m!5599303))

(assert (=> b!4694055 m!5599303))

(declare-fun m!5600301 () Bool)

(assert (=> b!4694055 m!5600301))

(assert (=> b!4693598 d!1492105))

(declare-fun b!4694061 () Bool)

(declare-fun e!2928304 () Bool)

(declare-fun tp!1346196 () Bool)

(declare-fun tp!1346197 () Bool)

(assert (=> b!4694061 (= e!2928304 (and tp!1346196 tp!1346197))))

(assert (=> b!4693601 (= tp!1346179 e!2928304)))

(assert (= (and b!4693601 ((_ is Cons!52454) (toList!5630 lm!2023))) b!4694061))

(declare-fun tp!1346200 () Bool)

(declare-fun b!4694066 () Bool)

(declare-fun e!2928307 () Bool)

(assert (=> b!4694066 (= e!2928307 (and tp_is_empty!30773 tp_is_empty!30775 tp!1346200))))

(assert (=> b!4693612 (= tp!1346181 e!2928307)))

(assert (= (and b!4693612 ((_ is Cons!52453) (t!359765 newBucket!218))) b!4694066))

(declare-fun b!4694067 () Bool)

(declare-fun e!2928308 () Bool)

(declare-fun tp!1346201 () Bool)

(assert (=> b!4694067 (= e!2928308 (and tp_is_empty!30773 tp_is_empty!30775 tp!1346201))))

(assert (=> b!4693613 (= tp!1346180 e!2928308)))

(assert (= (and b!4693613 ((_ is Cons!52453) (t!359765 oldBucket!34))) b!4694067))

(declare-fun b_lambda!177127 () Bool)

(assert (= b_lambda!177111 (or start!475184 b_lambda!177127)))

(declare-fun bs!1089695 () Bool)

(declare-fun d!1492107 () Bool)

(assert (= bs!1089695 (and d!1492107 start!475184)))

(assert (=> bs!1089695 (= (dynLambda!21724 lambda!208143 lt!1854159) (noDuplicateKeys!1870 (_2!30232 lt!1854159)))))

(declare-fun m!5600303 () Bool)

(assert (=> bs!1089695 m!5600303))

(assert (=> d!1491899 d!1492107))

(declare-fun b_lambda!177129 () Bool)

(assert (= b_lambda!177115 (or start!475184 b_lambda!177129)))

(declare-fun bs!1089696 () Bool)

(declare-fun d!1492109 () Bool)

(assert (= bs!1089696 (and d!1492109 start!475184)))

(assert (=> bs!1089696 (= (dynLambda!21724 lambda!208143 (h!58711 (toList!5630 lm!2023))) (noDuplicateKeys!1870 (_2!30232 (h!58711 (toList!5630 lm!2023)))))))

(assert (=> bs!1089696 m!5599717))

(assert (=> b!4693867 d!1492109))

(declare-fun b_lambda!177131 () Bool)

(assert (= b_lambda!177109 (or start!475184 b_lambda!177131)))

(declare-fun bs!1089697 () Bool)

(declare-fun d!1492111 () Bool)

(assert (= bs!1089697 (and d!1492111 start!475184)))

(assert (=> bs!1089697 (= (dynLambda!21724 lambda!208143 (h!58711 lt!1854162)) (noDuplicateKeys!1870 (_2!30232 (h!58711 lt!1854162))))))

(declare-fun m!5600305 () Bool)

(assert (=> bs!1089697 m!5600305))

(assert (=> b!4693646 d!1492111))

(check-sat (not b!4694046) (not b!4693990) (not b!4693934) (not d!1492087) (not b!4693704) (not d!1491893) (not b!4693917) (not d!1492041) (not b!4693952) (not b!4694025) (not b!4694010) (not b!4694052) (not b!4693985) (not d!1492081) (not b!4694036) (not b!4693650) (not b!4693664) (not b!4693746) (not b!4694049) (not d!1492017) (not b!4693691) (not b!4693868) (not b!4693640) (not d!1492093) (not b!4694029) (not d!1492105) (not b!4694043) (not b!4693835) (not d!1492089) (not d!1492095) (not d!1492073) (not b!4694016) (not d!1492009) (not b!4693923) (not b!4694024) (not d!1492011) (not b!4693740) (not b!4694048) (not d!1492007) (not b!4694026) (not d!1491977) (not d!1492077) (not b!4694061) (not b!4693955) (not b!4694039) (not d!1492067) tp_is_empty!30773 (not d!1491869) (not d!1492027) (not bm!328092) (not d!1492005) (not d!1492079) (not d!1491971) (not b_lambda!177131) (not d!1491903) (not b!4693919) (not d!1491879) (not d!1492015) (not b!4694054) (not b_lambda!177129) (not b!4693713) (not d!1492001) (not d!1491877) tp_is_empty!30775 (not b!4693693) (not b!4693986) (not bs!1089695) (not d!1492083) (not b!4694040) (not d!1492019) (not b!4693987) (not d!1492097) (not b!4694020) (not d!1491907) (not b!4694055) (not d!1492045) (not b!4693864) (not b!4694050) (not bm!328080) (not b!4693718) (not b!4694021) (not bm!328100) (not d!1491889) (not d!1492013) (not d!1491853) (not bm!328099) (not d!1491883) (not bm!328095) (not d!1492091) (not d!1491967) (not bm!328097) (not b!4694013) (not bm!328096) (not b!4694034) (not b!4693991) (not bm!328087) (not b!4694014) (not b!4694047) (not b!4694066) (not b!4693715) (not b!4694031) (not bm!328093) (not d!1491975) (not b!4693921) (not b!4693743) (not bm!328102) (not b!4694042) (not b!4694018) (not b!4693692) (not bm!328098) (not d!1492085) (not d!1491957) (not b!4694045) (not b!4694044) (not bm!328081) (not b!4693647) (not b!4693742) (not bs!1089697) (not d!1491871) (not b_lambda!177127) (not b!4694038) (not d!1492103) (not bm!328094) (not b!4694030) (not b!4693951) (not bm!328082) (not b!4693836) (not b!4694011) (not bm!328101) (not bm!328088) (not b!4693935) (not b!4693706) (not d!1491899) (not d!1492025) (not b!4693834) (not d!1492071) (not d!1492053) (not bm!328089) (not d!1491901) (not b!4694019) (not b!4693690) (not b!4694067) (not bs!1089696) (not b!4694012) (not d!1491875) (not b!4693916) (not b!4693745) (not d!1492099) (not d!1492029))
(check-sat)
