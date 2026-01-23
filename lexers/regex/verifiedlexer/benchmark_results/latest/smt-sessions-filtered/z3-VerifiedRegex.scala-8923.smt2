; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478452 () Bool)

(assert start!478452)

(declare-fun tp!1347363 () Bool)

(declare-fun tp_is_empty!31085 () Bool)

(declare-fun b!4709585 () Bool)

(declare-fun e!2937472 () Bool)

(declare-fun tp_is_empty!31087 () Bool)

(assert (=> b!4709585 (= e!2937472 (and tp_is_empty!31085 tp_is_empty!31087 tp!1347363))))

(declare-fun b!4709586 () Bool)

(declare-fun e!2937480 () Bool)

(declare-fun e!2937479 () Bool)

(assert (=> b!4709586 (= e!2937480 (not e!2937479))))

(declare-fun res!1990210 () Bool)

(assert (=> b!4709586 (=> res!1990210 e!2937479)))

(declare-datatypes ((K!14020 0))(
  ( (K!14021 (val!19487 Int)) )
))
(declare-datatypes ((V!14266 0))(
  ( (V!14267 (val!19488 Int)) )
))
(declare-datatypes ((tuple2!54186 0))(
  ( (tuple2!54187 (_1!30387 K!14020) (_2!30387 V!14266)) )
))
(declare-datatypes ((List!52781 0))(
  ( (Nil!52657) (Cons!52657 (h!58962 tuple2!54186) (t!360015 List!52781)) )
))
(declare-fun oldBucket!34 () List!52781)

(declare-fun key!4653 () K!14020)

(get-info :version)

(assert (=> b!4709586 (= res!1990210 (or (not ((_ is Cons!52657) oldBucket!34)) (not (= (_1!30387 (h!58962 oldBucket!34)) key!4653))))))

(declare-datatypes ((ListMap!5149 0))(
  ( (ListMap!5150 (toList!5785 List!52781)) )
))
(declare-fun lt!1874020 () ListMap!5149)

(declare-datatypes ((tuple2!54188 0))(
  ( (tuple2!54189 (_1!30388 (_ BitVec 64)) (_2!30388 List!52781)) )
))
(declare-datatypes ((List!52782 0))(
  ( (Nil!52658) (Cons!52658 (h!58963 tuple2!54188) (t!360016 List!52782)) )
))
(declare-datatypes ((ListLongMap!4315 0))(
  ( (ListLongMap!4316 (toList!5786 List!52782)) )
))
(declare-fun lm!2023 () ListLongMap!4315)

(declare-fun lt!1874019 () ListMap!5149)

(declare-fun addToMapMapFromBucket!1378 (List!52781 ListMap!5149) ListMap!5149)

(assert (=> b!4709586 (= lt!1874020 (addToMapMapFromBucket!1378 (_2!30388 (h!58963 (toList!5786 lm!2023))) lt!1874019))))

(declare-fun extractMap!1974 (List!52782) ListMap!5149)

(assert (=> b!4709586 (= lt!1874019 (extractMap!1974 (t!360016 (toList!5786 lm!2023))))))

(declare-fun tail!8835 (ListLongMap!4315) ListLongMap!4315)

(assert (=> b!4709586 (= (t!360016 (toList!5786 lm!2023)) (toList!5786 (tail!8835 lm!2023)))))

(declare-fun b!4709587 () Bool)

(declare-fun res!1990215 () Bool)

(assert (=> b!4709587 (=> (not res!1990215) (not e!2937480))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6317 0))(
  ( (HashableExt!6316 (__x!32020 Int)) )
))
(declare-fun hashF!1323 () Hashable!6317)

(declare-fun newBucket!218 () List!52781)

(declare-fun allKeysSameHash!1774 (List!52781 (_ BitVec 64) Hashable!6317) Bool)

(assert (=> b!4709587 (= res!1990215 (allKeysSameHash!1774 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4709588 () Bool)

(declare-fun res!1990208 () Bool)

(declare-fun e!2937476 () Bool)

(assert (=> b!4709588 (=> res!1990208 e!2937476)))

(declare-fun lt!1874018 () List!52781)

(assert (=> b!4709588 (= res!1990208 (not (= (extractMap!1974 (Cons!52658 (tuple2!54189 hash!405 lt!1874018) (t!360016 (toList!5786 lm!2023)))) (extractMap!1974 (Cons!52658 (tuple2!54189 hash!405 newBucket!218) (t!360016 (toList!5786 lm!2023)))))))))

(declare-fun b!4709589 () Bool)

(declare-fun e!2937473 () Bool)

(declare-fun tp!1347362 () Bool)

(assert (=> b!4709589 (= e!2937473 tp!1347362)))

(declare-fun b!4709590 () Bool)

(declare-fun res!1990219 () Bool)

(declare-fun e!2937478 () Bool)

(assert (=> b!4709590 (=> (not res!1990219) (not e!2937478))))

(assert (=> b!4709590 (= res!1990219 (allKeysSameHash!1774 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4709591 () Bool)

(declare-fun res!1990209 () Bool)

(assert (=> b!4709591 (=> (not res!1990209) (not e!2937478))))

(declare-fun noDuplicateKeys!1948 (List!52781) Bool)

(assert (=> b!4709591 (= res!1990209 (noDuplicateKeys!1948 oldBucket!34))))

(declare-fun b!4709592 () Bool)

(declare-fun e!2937475 () Bool)

(declare-fun containsKey!3247 (List!52781 K!14020) Bool)

(assert (=> b!4709592 (= e!2937475 (not (containsKey!3247 lt!1874018 key!4653)))))

(declare-fun b!4709593 () Bool)

(assert (=> b!4709593 (= e!2937479 e!2937476)))

(declare-fun res!1990216 () Bool)

(assert (=> b!4709593 (=> res!1990216 e!2937476)))

(assert (=> b!4709593 (= res!1990216 (not (= lt!1874018 newBucket!218)))))

(declare-fun tail!8836 (List!52781) List!52781)

(assert (=> b!4709593 (= lt!1874018 (tail!8836 oldBucket!34))))

(declare-fun b!4709594 () Bool)

(declare-fun res!1990222 () Bool)

(assert (=> b!4709594 (=> (not res!1990222) (not e!2937480))))

(declare-fun allKeysSameHashInMap!1862 (ListLongMap!4315 Hashable!6317) Bool)

(assert (=> b!4709594 (= res!1990222 (allKeysSameHashInMap!1862 lm!2023 hashF!1323))))

(declare-fun b!4709595 () Bool)

(declare-fun res!1990220 () Bool)

(assert (=> b!4709595 (=> (not res!1990220) (not e!2937480))))

(declare-fun head!10135 (List!52782) tuple2!54188)

(assert (=> b!4709595 (= res!1990220 (= (head!10135 (toList!5786 lm!2023)) (tuple2!54189 hash!405 oldBucket!34)))))

(declare-fun b!4709597 () Bool)

(declare-fun e!2937474 () Bool)

(assert (=> b!4709597 (= e!2937474 e!2937475)))

(declare-fun res!1990213 () Bool)

(assert (=> b!4709597 (=> res!1990213 e!2937475)))

(declare-fun lt!1874017 () ListMap!5149)

(declare-fun eq!1085 (ListMap!5149 ListMap!5149) Bool)

(declare-fun +!2212 (ListMap!5149 tuple2!54186) ListMap!5149)

(assert (=> b!4709597 (= res!1990213 (not (eq!1085 (+!2212 lt!1874017 (h!58962 oldBucket!34)) (addToMapMapFromBucket!1378 oldBucket!34 lt!1874019))))))

(declare-fun lt!1874015 () tuple2!54186)

(assert (=> b!4709597 (eq!1085 (addToMapMapFromBucket!1378 (Cons!52657 lt!1874015 lt!1874018) lt!1874019) (+!2212 lt!1874017 lt!1874015))))

(declare-datatypes ((Unit!127634 0))(
  ( (Unit!127635) )
))
(declare-fun lt!1874016 () Unit!127634)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!334 (tuple2!54186 List!52781 ListMap!5149) Unit!127634)

(assert (=> b!4709597 (= lt!1874016 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!334 lt!1874015 lt!1874018 lt!1874019))))

(declare-fun head!10136 (List!52781) tuple2!54186)

(assert (=> b!4709597 (= lt!1874015 (head!10136 oldBucket!34))))

(declare-fun b!4709598 () Bool)

(declare-fun res!1990212 () Bool)

(assert (=> b!4709598 (=> (not res!1990212) (not e!2937478))))

(assert (=> b!4709598 (= res!1990212 (noDuplicateKeys!1948 newBucket!218))))

(declare-fun b!4709599 () Bool)

(declare-fun res!1990218 () Bool)

(assert (=> b!4709599 (=> (not res!1990218) (not e!2937480))))

(declare-fun hash!4268 (Hashable!6317 K!14020) (_ BitVec 64))

(assert (=> b!4709599 (= res!1990218 (= (hash!4268 hashF!1323 key!4653) hash!405))))

(declare-fun e!2937477 () Bool)

(declare-fun b!4709600 () Bool)

(declare-fun tp!1347361 () Bool)

(assert (=> b!4709600 (= e!2937477 (and tp_is_empty!31085 tp_is_empty!31087 tp!1347361))))

(declare-fun b!4709596 () Bool)

(declare-fun res!1990223 () Bool)

(assert (=> b!4709596 (=> (not res!1990223) (not e!2937480))))

(assert (=> b!4709596 (= res!1990223 ((_ is Cons!52658) (toList!5786 lm!2023)))))

(declare-fun res!1990211 () Bool)

(assert (=> start!478452 (=> (not res!1990211) (not e!2937478))))

(declare-fun lambda!212355 () Int)

(declare-fun forall!11475 (List!52782 Int) Bool)

(assert (=> start!478452 (= res!1990211 (forall!11475 (toList!5786 lm!2023) lambda!212355))))

(assert (=> start!478452 e!2937478))

(declare-fun inv!67894 (ListLongMap!4315) Bool)

(assert (=> start!478452 (and (inv!67894 lm!2023) e!2937473)))

(assert (=> start!478452 tp_is_empty!31085))

(assert (=> start!478452 e!2937477))

(assert (=> start!478452 true))

(assert (=> start!478452 e!2937472))

(declare-fun b!4709601 () Bool)

(declare-fun res!1990214 () Bool)

(assert (=> b!4709601 (=> (not res!1990214) (not e!2937478))))

(declare-fun removePairForKey!1543 (List!52781 K!14020) List!52781)

(assert (=> b!4709601 (= res!1990214 (= (removePairForKey!1543 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4709602 () Bool)

(assert (=> b!4709602 (= e!2937476 e!2937474)))

(declare-fun res!1990217 () Bool)

(assert (=> b!4709602 (=> res!1990217 e!2937474)))

(assert (=> b!4709602 (= res!1990217 (not (= lt!1874017 (addToMapMapFromBucket!1378 newBucket!218 lt!1874019))))))

(assert (=> b!4709602 (= lt!1874017 (addToMapMapFromBucket!1378 lt!1874018 lt!1874019))))

(declare-fun b!4709603 () Bool)

(assert (=> b!4709603 (= e!2937478 e!2937480)))

(declare-fun res!1990221 () Bool)

(assert (=> b!4709603 (=> (not res!1990221) (not e!2937480))))

(declare-fun contains!15962 (ListMap!5149 K!14020) Bool)

(assert (=> b!4709603 (= res!1990221 (contains!15962 lt!1874020 key!4653))))

(assert (=> b!4709603 (= lt!1874020 (extractMap!1974 (toList!5786 lm!2023)))))

(assert (= (and start!478452 res!1990211) b!4709591))

(assert (= (and b!4709591 res!1990209) b!4709598))

(assert (= (and b!4709598 res!1990212) b!4709601))

(assert (= (and b!4709601 res!1990214) b!4709590))

(assert (= (and b!4709590 res!1990219) b!4709603))

(assert (= (and b!4709603 res!1990221) b!4709599))

(assert (= (and b!4709599 res!1990218) b!4709587))

(assert (= (and b!4709587 res!1990215) b!4709594))

(assert (= (and b!4709594 res!1990222) b!4709595))

(assert (= (and b!4709595 res!1990220) b!4709596))

(assert (= (and b!4709596 res!1990223) b!4709586))

(assert (= (and b!4709586 (not res!1990210)) b!4709593))

(assert (= (and b!4709593 (not res!1990216)) b!4709588))

(assert (= (and b!4709588 (not res!1990208)) b!4709602))

(assert (= (and b!4709602 (not res!1990217)) b!4709597))

(assert (= (and b!4709597 (not res!1990213)) b!4709592))

(assert (= start!478452 b!4709589))

(assert (= (and start!478452 ((_ is Cons!52657) oldBucket!34)) b!4709600))

(assert (= (and start!478452 ((_ is Cons!52657) newBucket!218)) b!4709585))

(declare-fun m!5634165 () Bool)

(assert (=> b!4709597 m!5634165))

(declare-fun m!5634167 () Bool)

(assert (=> b!4709597 m!5634167))

(declare-fun m!5634169 () Bool)

(assert (=> b!4709597 m!5634169))

(declare-fun m!5634171 () Bool)

(assert (=> b!4709597 m!5634171))

(declare-fun m!5634173 () Bool)

(assert (=> b!4709597 m!5634173))

(assert (=> b!4709597 m!5634165))

(declare-fun m!5634175 () Bool)

(assert (=> b!4709597 m!5634175))

(declare-fun m!5634177 () Bool)

(assert (=> b!4709597 m!5634177))

(assert (=> b!4709597 m!5634167))

(declare-fun m!5634179 () Bool)

(assert (=> b!4709597 m!5634179))

(assert (=> b!4709597 m!5634173))

(assert (=> b!4709597 m!5634169))

(declare-fun m!5634181 () Bool)

(assert (=> b!4709601 m!5634181))

(declare-fun m!5634183 () Bool)

(assert (=> b!4709587 m!5634183))

(declare-fun m!5634185 () Bool)

(assert (=> b!4709590 m!5634185))

(declare-fun m!5634187 () Bool)

(assert (=> b!4709599 m!5634187))

(declare-fun m!5634189 () Bool)

(assert (=> b!4709603 m!5634189))

(declare-fun m!5634191 () Bool)

(assert (=> b!4709603 m!5634191))

(declare-fun m!5634193 () Bool)

(assert (=> b!4709592 m!5634193))

(declare-fun m!5634195 () Bool)

(assert (=> b!4709594 m!5634195))

(declare-fun m!5634197 () Bool)

(assert (=> b!4709591 m!5634197))

(declare-fun m!5634199 () Bool)

(assert (=> b!4709602 m!5634199))

(declare-fun m!5634201 () Bool)

(assert (=> b!4709602 m!5634201))

(declare-fun m!5634203 () Bool)

(assert (=> start!478452 m!5634203))

(declare-fun m!5634205 () Bool)

(assert (=> start!478452 m!5634205))

(declare-fun m!5634207 () Bool)

(assert (=> b!4709593 m!5634207))

(declare-fun m!5634209 () Bool)

(assert (=> b!4709588 m!5634209))

(declare-fun m!5634211 () Bool)

(assert (=> b!4709588 m!5634211))

(declare-fun m!5634213 () Bool)

(assert (=> b!4709586 m!5634213))

(declare-fun m!5634215 () Bool)

(assert (=> b!4709586 m!5634215))

(declare-fun m!5634217 () Bool)

(assert (=> b!4709586 m!5634217))

(declare-fun m!5634219 () Bool)

(assert (=> b!4709595 m!5634219))

(declare-fun m!5634221 () Bool)

(assert (=> b!4709598 m!5634221))

(check-sat (not b!4709587) tp_is_empty!31087 (not b!4709595) (not b!4709591) (not b!4709602) (not b!4709592) (not b!4709597) (not b!4709594) (not b!4709585) (not b!4709590) (not b!4709588) (not b!4709589) (not b!4709586) (not b!4709600) (not b!4709603) (not b!4709598) tp_is_empty!31085 (not start!478452) (not b!4709599) (not b!4709601) (not b!4709593))
(check-sat)
(get-model)

(declare-fun bs!1101078 () Bool)

(declare-fun d!1498724 () Bool)

(assert (= bs!1101078 (and d!1498724 start!478452)))

(declare-fun lambda!212361 () Int)

(assert (=> bs!1101078 (= lambda!212361 lambda!212355)))

(declare-fun lt!1874026 () ListMap!5149)

(declare-fun invariantList!1470 (List!52781) Bool)

(assert (=> d!1498724 (invariantList!1470 (toList!5785 lt!1874026))))

(declare-fun e!2937495 () ListMap!5149)

(assert (=> d!1498724 (= lt!1874026 e!2937495)))

(declare-fun c!804656 () Bool)

(assert (=> d!1498724 (= c!804656 ((_ is Cons!52658) (Cons!52658 (tuple2!54189 hash!405 lt!1874018) (t!360016 (toList!5786 lm!2023)))))))

(assert (=> d!1498724 (forall!11475 (Cons!52658 (tuple2!54189 hash!405 lt!1874018) (t!360016 (toList!5786 lm!2023))) lambda!212361)))

(assert (=> d!1498724 (= (extractMap!1974 (Cons!52658 (tuple2!54189 hash!405 lt!1874018) (t!360016 (toList!5786 lm!2023)))) lt!1874026)))

(declare-fun b!4709630 () Bool)

(assert (=> b!4709630 (= e!2937495 (addToMapMapFromBucket!1378 (_2!30388 (h!58963 (Cons!52658 (tuple2!54189 hash!405 lt!1874018) (t!360016 (toList!5786 lm!2023))))) (extractMap!1974 (t!360016 (Cons!52658 (tuple2!54189 hash!405 lt!1874018) (t!360016 (toList!5786 lm!2023)))))))))

(declare-fun b!4709631 () Bool)

(assert (=> b!4709631 (= e!2937495 (ListMap!5150 Nil!52657))))

(assert (= (and d!1498724 c!804656) b!4709630))

(assert (= (and d!1498724 (not c!804656)) b!4709631))

(declare-fun m!5634235 () Bool)

(assert (=> d!1498724 m!5634235))

(declare-fun m!5634237 () Bool)

(assert (=> d!1498724 m!5634237))

(declare-fun m!5634239 () Bool)

(assert (=> b!4709630 m!5634239))

(assert (=> b!4709630 m!5634239))

(declare-fun m!5634241 () Bool)

(assert (=> b!4709630 m!5634241))

(assert (=> b!4709588 d!1498724))

(declare-fun bs!1101079 () Bool)

(declare-fun d!1498734 () Bool)

(assert (= bs!1101079 (and d!1498734 start!478452)))

(declare-fun lambda!212362 () Int)

(assert (=> bs!1101079 (= lambda!212362 lambda!212355)))

(declare-fun bs!1101080 () Bool)

(assert (= bs!1101080 (and d!1498734 d!1498724)))

(assert (=> bs!1101080 (= lambda!212362 lambda!212361)))

(declare-fun lt!1874027 () ListMap!5149)

(assert (=> d!1498734 (invariantList!1470 (toList!5785 lt!1874027))))

(declare-fun e!2937496 () ListMap!5149)

(assert (=> d!1498734 (= lt!1874027 e!2937496)))

(declare-fun c!804657 () Bool)

(assert (=> d!1498734 (= c!804657 ((_ is Cons!52658) (Cons!52658 (tuple2!54189 hash!405 newBucket!218) (t!360016 (toList!5786 lm!2023)))))))

(assert (=> d!1498734 (forall!11475 (Cons!52658 (tuple2!54189 hash!405 newBucket!218) (t!360016 (toList!5786 lm!2023))) lambda!212362)))

(assert (=> d!1498734 (= (extractMap!1974 (Cons!52658 (tuple2!54189 hash!405 newBucket!218) (t!360016 (toList!5786 lm!2023)))) lt!1874027)))

(declare-fun b!4709632 () Bool)

(assert (=> b!4709632 (= e!2937496 (addToMapMapFromBucket!1378 (_2!30388 (h!58963 (Cons!52658 (tuple2!54189 hash!405 newBucket!218) (t!360016 (toList!5786 lm!2023))))) (extractMap!1974 (t!360016 (Cons!52658 (tuple2!54189 hash!405 newBucket!218) (t!360016 (toList!5786 lm!2023)))))))))

(declare-fun b!4709633 () Bool)

(assert (=> b!4709633 (= e!2937496 (ListMap!5150 Nil!52657))))

(assert (= (and d!1498734 c!804657) b!4709632))

(assert (= (and d!1498734 (not c!804657)) b!4709633))

(declare-fun m!5634243 () Bool)

(assert (=> d!1498734 m!5634243))

(declare-fun m!5634245 () Bool)

(assert (=> d!1498734 m!5634245))

(declare-fun m!5634247 () Bool)

(assert (=> b!4709632 m!5634247))

(assert (=> b!4709632 m!5634247))

(declare-fun m!5634249 () Bool)

(assert (=> b!4709632 m!5634249))

(assert (=> b!4709588 d!1498734))

(declare-fun d!1498736 () Bool)

(declare-fun hash!4270 (Hashable!6317 K!14020) (_ BitVec 64))

(assert (=> d!1498736 (= (hash!4268 hashF!1323 key!4653) (hash!4270 hashF!1323 key!4653))))

(declare-fun bs!1101081 () Bool)

(assert (= bs!1101081 d!1498736))

(declare-fun m!5634251 () Bool)

(assert (=> bs!1101081 m!5634251))

(assert (=> b!4709599 d!1498736))

(declare-fun d!1498738 () Bool)

(assert (=> d!1498738 true))

(assert (=> d!1498738 true))

(declare-fun lambda!212365 () Int)

(declare-fun forall!11477 (List!52781 Int) Bool)

(assert (=> d!1498738 (= (allKeysSameHash!1774 oldBucket!34 hash!405 hashF!1323) (forall!11477 oldBucket!34 lambda!212365))))

(declare-fun bs!1101082 () Bool)

(assert (= bs!1101082 d!1498738))

(declare-fun m!5634253 () Bool)

(assert (=> bs!1101082 m!5634253))

(assert (=> b!4709590 d!1498738))

(declare-fun bs!1101172 () Bool)

(declare-fun b!4709722 () Bool)

(assert (= bs!1101172 (and b!4709722 d!1498738)))

(declare-fun lambda!212445 () Int)

(assert (=> bs!1101172 (not (= lambda!212445 lambda!212365))))

(assert (=> b!4709722 true))

(declare-fun bs!1101173 () Bool)

(declare-fun b!4709724 () Bool)

(assert (= bs!1101173 (and b!4709724 d!1498738)))

(declare-fun lambda!212446 () Int)

(assert (=> bs!1101173 (not (= lambda!212446 lambda!212365))))

(declare-fun bs!1101174 () Bool)

(assert (= bs!1101174 (and b!4709724 b!4709722)))

(assert (=> bs!1101174 (= lambda!212446 lambda!212445)))

(assert (=> b!4709724 true))

(declare-fun lambda!212447 () Int)

(assert (=> bs!1101173 (not (= lambda!212447 lambda!212365))))

(declare-fun lt!1874249 () ListMap!5149)

(assert (=> bs!1101174 (= (= lt!1874249 lt!1874019) (= lambda!212447 lambda!212445))))

(assert (=> b!4709724 (= (= lt!1874249 lt!1874019) (= lambda!212447 lambda!212446))))

(assert (=> b!4709724 true))

(declare-fun bs!1101175 () Bool)

(declare-fun d!1498740 () Bool)

(assert (= bs!1101175 (and d!1498740 d!1498738)))

(declare-fun lambda!212448 () Int)

(assert (=> bs!1101175 (not (= lambda!212448 lambda!212365))))

(declare-fun bs!1101176 () Bool)

(assert (= bs!1101176 (and d!1498740 b!4709722)))

(declare-fun lt!1874254 () ListMap!5149)

(assert (=> bs!1101176 (= (= lt!1874254 lt!1874019) (= lambda!212448 lambda!212445))))

(declare-fun bs!1101177 () Bool)

(assert (= bs!1101177 (and d!1498740 b!4709724)))

(assert (=> bs!1101177 (= (= lt!1874254 lt!1874019) (= lambda!212448 lambda!212446))))

(assert (=> bs!1101177 (= (= lt!1874254 lt!1874249) (= lambda!212448 lambda!212447))))

(assert (=> d!1498740 true))

(declare-fun b!4709720 () Bool)

(declare-fun e!2937547 () Bool)

(declare-fun call!329258 () Bool)

(assert (=> b!4709720 (= e!2937547 call!329258)))

(declare-fun b!4709721 () Bool)

(declare-fun res!1990277 () Bool)

(declare-fun e!2937548 () Bool)

(assert (=> b!4709721 (=> (not res!1990277) (not e!2937548))))

(assert (=> b!4709721 (= res!1990277 (forall!11477 (toList!5785 lt!1874019) lambda!212448))))

(declare-fun bm!329249 () Bool)

(declare-fun c!804674 () Bool)

(assert (=> bm!329249 (= call!329258 (forall!11477 (toList!5785 lt!1874019) (ite c!804674 lambda!212445 lambda!212447)))))

(declare-fun e!2937549 () ListMap!5149)

(assert (=> b!4709722 (= e!2937549 lt!1874019)))

(declare-fun lt!1874241 () Unit!127634)

(declare-fun call!329255 () Unit!127634)

(assert (=> b!4709722 (= lt!1874241 call!329255)))

(assert (=> b!4709722 call!329258))

(declare-fun lt!1874255 () Unit!127634)

(assert (=> b!4709722 (= lt!1874255 lt!1874241)))

(declare-fun call!329254 () Bool)

(assert (=> b!4709722 call!329254))

(declare-fun lt!1874237 () Unit!127634)

(declare-fun Unit!127669 () Unit!127634)

(assert (=> b!4709722 (= lt!1874237 Unit!127669)))

(declare-fun b!4709723 () Bool)

(assert (=> b!4709723 (= e!2937548 (invariantList!1470 (toList!5785 lt!1874254)))))

(declare-fun bm!329250 () Bool)

(assert (=> bm!329250 (= call!329254 (forall!11477 (toList!5785 lt!1874019) (ite c!804674 lambda!212445 lambda!212447)))))

(declare-fun bm!329251 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!758 (ListMap!5149) Unit!127634)

(assert (=> bm!329251 (= call!329255 (lemmaContainsAllItsOwnKeys!758 lt!1874019))))

(assert (=> b!4709724 (= e!2937549 lt!1874249)))

(declare-fun lt!1874248 () ListMap!5149)

(assert (=> b!4709724 (= lt!1874248 (+!2212 lt!1874019 (h!58962 (_2!30388 (h!58963 (toList!5786 lm!2023))))))))

(assert (=> b!4709724 (= lt!1874249 (addToMapMapFromBucket!1378 (t!360015 (_2!30388 (h!58963 (toList!5786 lm!2023)))) (+!2212 lt!1874019 (h!58962 (_2!30388 (h!58963 (toList!5786 lm!2023)))))))))

(declare-fun lt!1874246 () Unit!127634)

(assert (=> b!4709724 (= lt!1874246 call!329255)))

(assert (=> b!4709724 (forall!11477 (toList!5785 lt!1874019) lambda!212446)))

(declare-fun lt!1874253 () Unit!127634)

(assert (=> b!4709724 (= lt!1874253 lt!1874246)))

(assert (=> b!4709724 (forall!11477 (toList!5785 lt!1874248) lambda!212447)))

(declare-fun lt!1874235 () Unit!127634)

(declare-fun Unit!127670 () Unit!127634)

(assert (=> b!4709724 (= lt!1874235 Unit!127670)))

(assert (=> b!4709724 (forall!11477 (t!360015 (_2!30388 (h!58963 (toList!5786 lm!2023)))) lambda!212447)))

(declare-fun lt!1874238 () Unit!127634)

(declare-fun Unit!127671 () Unit!127634)

(assert (=> b!4709724 (= lt!1874238 Unit!127671)))

(declare-fun lt!1874245 () Unit!127634)

(declare-fun Unit!127672 () Unit!127634)

(assert (=> b!4709724 (= lt!1874245 Unit!127672)))

(declare-fun lt!1874244 () Unit!127634)

(declare-fun forallContained!3558 (List!52781 Int tuple2!54186) Unit!127634)

(assert (=> b!4709724 (= lt!1874244 (forallContained!3558 (toList!5785 lt!1874248) lambda!212447 (h!58962 (_2!30388 (h!58963 (toList!5786 lm!2023))))))))

(assert (=> b!4709724 (contains!15962 lt!1874248 (_1!30387 (h!58962 (_2!30388 (h!58963 (toList!5786 lm!2023))))))))

(declare-fun lt!1874243 () Unit!127634)

(declare-fun Unit!127673 () Unit!127634)

(assert (=> b!4709724 (= lt!1874243 Unit!127673)))

(assert (=> b!4709724 (contains!15962 lt!1874249 (_1!30387 (h!58962 (_2!30388 (h!58963 (toList!5786 lm!2023))))))))

(declare-fun lt!1874236 () Unit!127634)

(declare-fun Unit!127674 () Unit!127634)

(assert (=> b!4709724 (= lt!1874236 Unit!127674)))

(assert (=> b!4709724 (forall!11477 (_2!30388 (h!58963 (toList!5786 lm!2023))) lambda!212447)))

(declare-fun lt!1874250 () Unit!127634)

(declare-fun Unit!127675 () Unit!127634)

(assert (=> b!4709724 (= lt!1874250 Unit!127675)))

(assert (=> b!4709724 (forall!11477 (toList!5785 lt!1874248) lambda!212447)))

(declare-fun lt!1874247 () Unit!127634)

(declare-fun Unit!127676 () Unit!127634)

(assert (=> b!4709724 (= lt!1874247 Unit!127676)))

(declare-fun lt!1874242 () Unit!127634)

(declare-fun Unit!127677 () Unit!127634)

(assert (=> b!4709724 (= lt!1874242 Unit!127677)))

(declare-fun lt!1874252 () Unit!127634)

(declare-fun addForallContainsKeyThenBeforeAdding!757 (ListMap!5149 ListMap!5149 K!14020 V!14266) Unit!127634)

(assert (=> b!4709724 (= lt!1874252 (addForallContainsKeyThenBeforeAdding!757 lt!1874019 lt!1874249 (_1!30387 (h!58962 (_2!30388 (h!58963 (toList!5786 lm!2023))))) (_2!30387 (h!58962 (_2!30388 (h!58963 (toList!5786 lm!2023)))))))))

(assert (=> b!4709724 call!329254))

(declare-fun lt!1874239 () Unit!127634)

(assert (=> b!4709724 (= lt!1874239 lt!1874252)))

(assert (=> b!4709724 (forall!11477 (toList!5785 lt!1874019) lambda!212447)))

(declare-fun lt!1874240 () Unit!127634)

(declare-fun Unit!127678 () Unit!127634)

(assert (=> b!4709724 (= lt!1874240 Unit!127678)))

(declare-fun res!1990276 () Bool)

(assert (=> b!4709724 (= res!1990276 (forall!11477 (_2!30388 (h!58963 (toList!5786 lm!2023))) lambda!212447))))

(assert (=> b!4709724 (=> (not res!1990276) (not e!2937547))))

(assert (=> b!4709724 e!2937547))

(declare-fun lt!1874251 () Unit!127634)

(declare-fun Unit!127679 () Unit!127634)

(assert (=> b!4709724 (= lt!1874251 Unit!127679)))

(assert (=> d!1498740 e!2937548))

(declare-fun res!1990278 () Bool)

(assert (=> d!1498740 (=> (not res!1990278) (not e!2937548))))

(assert (=> d!1498740 (= res!1990278 (forall!11477 (_2!30388 (h!58963 (toList!5786 lm!2023))) lambda!212448))))

(assert (=> d!1498740 (= lt!1874254 e!2937549)))

(assert (=> d!1498740 (= c!804674 ((_ is Nil!52657) (_2!30388 (h!58963 (toList!5786 lm!2023)))))))

(assert (=> d!1498740 (noDuplicateKeys!1948 (_2!30388 (h!58963 (toList!5786 lm!2023))))))

(assert (=> d!1498740 (= (addToMapMapFromBucket!1378 (_2!30388 (h!58963 (toList!5786 lm!2023))) lt!1874019) lt!1874254)))

(assert (= (and d!1498740 c!804674) b!4709722))

(assert (= (and d!1498740 (not c!804674)) b!4709724))

(assert (= (and b!4709724 res!1990276) b!4709720))

(assert (= (or b!4709722 b!4709724) bm!329251))

(assert (= (or b!4709722 b!4709724) bm!329250))

(assert (= (or b!4709722 b!4709720) bm!329249))

(assert (= (and d!1498740 res!1990278) b!4709721))

(assert (= (and b!4709721 res!1990277) b!4709723))

(declare-fun m!5634449 () Bool)

(assert (=> d!1498740 m!5634449))

(declare-fun m!5634451 () Bool)

(assert (=> d!1498740 m!5634451))

(declare-fun m!5634453 () Bool)

(assert (=> bm!329250 m!5634453))

(declare-fun m!5634455 () Bool)

(assert (=> b!4709721 m!5634455))

(assert (=> bm!329249 m!5634453))

(declare-fun m!5634457 () Bool)

(assert (=> bm!329251 m!5634457))

(declare-fun m!5634459 () Bool)

(assert (=> b!4709723 m!5634459))

(declare-fun m!5634461 () Bool)

(assert (=> b!4709724 m!5634461))

(declare-fun m!5634463 () Bool)

(assert (=> b!4709724 m!5634463))

(declare-fun m!5634465 () Bool)

(assert (=> b!4709724 m!5634465))

(assert (=> b!4709724 m!5634461))

(declare-fun m!5634467 () Bool)

(assert (=> b!4709724 m!5634467))

(declare-fun m!5634469 () Bool)

(assert (=> b!4709724 m!5634469))

(declare-fun m!5634471 () Bool)

(assert (=> b!4709724 m!5634471))

(declare-fun m!5634473 () Bool)

(assert (=> b!4709724 m!5634473))

(declare-fun m!5634475 () Bool)

(assert (=> b!4709724 m!5634475))

(assert (=> b!4709724 m!5634475))

(declare-fun m!5634481 () Bool)

(assert (=> b!4709724 m!5634481))

(declare-fun m!5634485 () Bool)

(assert (=> b!4709724 m!5634485))

(assert (=> b!4709724 m!5634469))

(declare-fun m!5634487 () Bool)

(assert (=> b!4709724 m!5634487))

(assert (=> b!4709586 d!1498740))

(declare-fun bs!1101178 () Bool)

(declare-fun d!1498778 () Bool)

(assert (= bs!1101178 (and d!1498778 start!478452)))

(declare-fun lambda!212449 () Int)

(assert (=> bs!1101178 (= lambda!212449 lambda!212355)))

(declare-fun bs!1101179 () Bool)

(assert (= bs!1101179 (and d!1498778 d!1498724)))

(assert (=> bs!1101179 (= lambda!212449 lambda!212361)))

(declare-fun bs!1101181 () Bool)

(assert (= bs!1101181 (and d!1498778 d!1498734)))

(assert (=> bs!1101181 (= lambda!212449 lambda!212362)))

(declare-fun lt!1874264 () ListMap!5149)

(assert (=> d!1498778 (invariantList!1470 (toList!5785 lt!1874264))))

(declare-fun e!2937564 () ListMap!5149)

(assert (=> d!1498778 (= lt!1874264 e!2937564)))

(declare-fun c!804680 () Bool)

(assert (=> d!1498778 (= c!804680 ((_ is Cons!52658) (t!360016 (toList!5786 lm!2023))))))

(assert (=> d!1498778 (forall!11475 (t!360016 (toList!5786 lm!2023)) lambda!212449)))

(assert (=> d!1498778 (= (extractMap!1974 (t!360016 (toList!5786 lm!2023))) lt!1874264)))

(declare-fun b!4709746 () Bool)

(assert (=> b!4709746 (= e!2937564 (addToMapMapFromBucket!1378 (_2!30388 (h!58963 (t!360016 (toList!5786 lm!2023)))) (extractMap!1974 (t!360016 (t!360016 (toList!5786 lm!2023))))))))

(declare-fun b!4709747 () Bool)

(assert (=> b!4709747 (= e!2937564 (ListMap!5150 Nil!52657))))

(assert (= (and d!1498778 c!804680) b!4709746))

(assert (= (and d!1498778 (not c!804680)) b!4709747))

(declare-fun m!5634503 () Bool)

(assert (=> d!1498778 m!5634503))

(declare-fun m!5634505 () Bool)

(assert (=> d!1498778 m!5634505))

(declare-fun m!5634507 () Bool)

(assert (=> b!4709746 m!5634507))

(assert (=> b!4709746 m!5634507))

(declare-fun m!5634509 () Bool)

(assert (=> b!4709746 m!5634509))

(assert (=> b!4709586 d!1498778))

(declare-fun d!1498782 () Bool)

(declare-fun tail!8837 (List!52782) List!52782)

(assert (=> d!1498782 (= (tail!8835 lm!2023) (ListLongMap!4316 (tail!8837 (toList!5786 lm!2023))))))

(declare-fun bs!1101187 () Bool)

(assert (= bs!1101187 d!1498782))

(declare-fun m!5634517 () Bool)

(assert (=> bs!1101187 m!5634517))

(assert (=> b!4709586 d!1498782))

(declare-fun bs!1101193 () Bool)

(declare-fun b!4709757 () Bool)

(assert (= bs!1101193 (and b!4709757 b!4709724)))

(declare-fun lambda!212452 () Int)

(assert (=> bs!1101193 (= lambda!212452 lambda!212446)))

(declare-fun bs!1101195 () Bool)

(assert (= bs!1101195 (and b!4709757 d!1498740)))

(assert (=> bs!1101195 (= (= lt!1874019 lt!1874254) (= lambda!212452 lambda!212448))))

(declare-fun bs!1101197 () Bool)

(assert (= bs!1101197 (and b!4709757 b!4709722)))

(assert (=> bs!1101197 (= lambda!212452 lambda!212445)))

(declare-fun bs!1101198 () Bool)

(assert (= bs!1101198 (and b!4709757 d!1498738)))

(assert (=> bs!1101198 (not (= lambda!212452 lambda!212365))))

(assert (=> bs!1101193 (= (= lt!1874019 lt!1874249) (= lambda!212452 lambda!212447))))

(assert (=> b!4709757 true))

(declare-fun bs!1101203 () Bool)

(declare-fun b!4709759 () Bool)

(assert (= bs!1101203 (and b!4709759 b!4709724)))

(declare-fun lambda!212453 () Int)

(assert (=> bs!1101203 (= lambda!212453 lambda!212446)))

(declare-fun bs!1101204 () Bool)

(assert (= bs!1101204 (and b!4709759 b!4709757)))

(assert (=> bs!1101204 (= lambda!212453 lambda!212452)))

(declare-fun bs!1101205 () Bool)

(assert (= bs!1101205 (and b!4709759 d!1498740)))

(assert (=> bs!1101205 (= (= lt!1874019 lt!1874254) (= lambda!212453 lambda!212448))))

(declare-fun bs!1101206 () Bool)

(assert (= bs!1101206 (and b!4709759 b!4709722)))

(assert (=> bs!1101206 (= lambda!212453 lambda!212445)))

(declare-fun bs!1101207 () Bool)

(assert (= bs!1101207 (and b!4709759 d!1498738)))

(assert (=> bs!1101207 (not (= lambda!212453 lambda!212365))))

(assert (=> bs!1101203 (= (= lt!1874019 lt!1874249) (= lambda!212453 lambda!212447))))

(assert (=> b!4709759 true))

(declare-fun lambda!212455 () Int)

(declare-fun lt!1874301 () ListMap!5149)

(assert (=> bs!1101203 (= (= lt!1874301 lt!1874019) (= lambda!212455 lambda!212446))))

(assert (=> bs!1101204 (= (= lt!1874301 lt!1874019) (= lambda!212455 lambda!212452))))

(assert (=> bs!1101205 (= (= lt!1874301 lt!1874254) (= lambda!212455 lambda!212448))))

(assert (=> bs!1101207 (not (= lambda!212455 lambda!212365))))

(assert (=> bs!1101203 (= (= lt!1874301 lt!1874249) (= lambda!212455 lambda!212447))))

(assert (=> bs!1101206 (= (= lt!1874301 lt!1874019) (= lambda!212455 lambda!212445))))

(assert (=> b!4709759 (= (= lt!1874301 lt!1874019) (= lambda!212455 lambda!212453))))

(assert (=> b!4709759 true))

(declare-fun bs!1101222 () Bool)

(declare-fun d!1498786 () Bool)

(assert (= bs!1101222 (and d!1498786 b!4709724)))

(declare-fun lt!1874306 () ListMap!5149)

(declare-fun lambda!212457 () Int)

(assert (=> bs!1101222 (= (= lt!1874306 lt!1874019) (= lambda!212457 lambda!212446))))

(declare-fun bs!1101223 () Bool)

(assert (= bs!1101223 (and d!1498786 b!4709757)))

(assert (=> bs!1101223 (= (= lt!1874306 lt!1874019) (= lambda!212457 lambda!212452))))

(declare-fun bs!1101224 () Bool)

(assert (= bs!1101224 (and d!1498786 d!1498740)))

(assert (=> bs!1101224 (= (= lt!1874306 lt!1874254) (= lambda!212457 lambda!212448))))

(declare-fun bs!1101225 () Bool)

(assert (= bs!1101225 (and d!1498786 b!4709759)))

(assert (=> bs!1101225 (= (= lt!1874306 lt!1874301) (= lambda!212457 lambda!212455))))

(declare-fun bs!1101226 () Bool)

(assert (= bs!1101226 (and d!1498786 d!1498738)))

(assert (=> bs!1101226 (not (= lambda!212457 lambda!212365))))

(assert (=> bs!1101222 (= (= lt!1874306 lt!1874249) (= lambda!212457 lambda!212447))))

(declare-fun bs!1101227 () Bool)

(assert (= bs!1101227 (and d!1498786 b!4709722)))

(assert (=> bs!1101227 (= (= lt!1874306 lt!1874019) (= lambda!212457 lambda!212445))))

(assert (=> bs!1101225 (= (= lt!1874306 lt!1874019) (= lambda!212457 lambda!212453))))

(assert (=> d!1498786 true))

(declare-fun b!4709755 () Bool)

(declare-fun e!2937569 () Bool)

(declare-fun call!329265 () Bool)

(assert (=> b!4709755 (= e!2937569 call!329265)))

(declare-fun b!4709756 () Bool)

(declare-fun res!1990292 () Bool)

(declare-fun e!2937570 () Bool)

(assert (=> b!4709756 (=> (not res!1990292) (not e!2937570))))

(assert (=> b!4709756 (= res!1990292 (forall!11477 (toList!5785 lt!1874019) lambda!212457))))

(declare-fun c!804683 () Bool)

(declare-fun bm!329258 () Bool)

(assert (=> bm!329258 (= call!329265 (forall!11477 (toList!5785 lt!1874019) (ite c!804683 lambda!212452 lambda!212455)))))

(declare-fun e!2937571 () ListMap!5149)

(assert (=> b!4709757 (= e!2937571 lt!1874019)))

(declare-fun lt!1874293 () Unit!127634)

(declare-fun call!329264 () Unit!127634)

(assert (=> b!4709757 (= lt!1874293 call!329264)))

(assert (=> b!4709757 call!329265))

(declare-fun lt!1874307 () Unit!127634)

(assert (=> b!4709757 (= lt!1874307 lt!1874293)))

(declare-fun call!329263 () Bool)

(assert (=> b!4709757 call!329263))

(declare-fun lt!1874289 () Unit!127634)

(declare-fun Unit!127680 () Unit!127634)

(assert (=> b!4709757 (= lt!1874289 Unit!127680)))

(declare-fun b!4709758 () Bool)

(assert (=> b!4709758 (= e!2937570 (invariantList!1470 (toList!5785 lt!1874306)))))

(declare-fun bm!329259 () Bool)

(assert (=> bm!329259 (= call!329263 (forall!11477 (toList!5785 lt!1874019) (ite c!804683 lambda!212452 lambda!212455)))))

(declare-fun bm!329260 () Bool)

(assert (=> bm!329260 (= call!329264 (lemmaContainsAllItsOwnKeys!758 lt!1874019))))

(assert (=> b!4709759 (= e!2937571 lt!1874301)))

(declare-fun lt!1874300 () ListMap!5149)

(assert (=> b!4709759 (= lt!1874300 (+!2212 lt!1874019 (h!58962 oldBucket!34)))))

(assert (=> b!4709759 (= lt!1874301 (addToMapMapFromBucket!1378 (t!360015 oldBucket!34) (+!2212 lt!1874019 (h!58962 oldBucket!34))))))

(declare-fun lt!1874298 () Unit!127634)

(assert (=> b!4709759 (= lt!1874298 call!329264)))

(assert (=> b!4709759 (forall!11477 (toList!5785 lt!1874019) lambda!212453)))

(declare-fun lt!1874305 () Unit!127634)

(assert (=> b!4709759 (= lt!1874305 lt!1874298)))

(assert (=> b!4709759 (forall!11477 (toList!5785 lt!1874300) lambda!212455)))

(declare-fun lt!1874287 () Unit!127634)

(declare-fun Unit!127681 () Unit!127634)

(assert (=> b!4709759 (= lt!1874287 Unit!127681)))

(assert (=> b!4709759 (forall!11477 (t!360015 oldBucket!34) lambda!212455)))

(declare-fun lt!1874290 () Unit!127634)

(declare-fun Unit!127682 () Unit!127634)

(assert (=> b!4709759 (= lt!1874290 Unit!127682)))

(declare-fun lt!1874297 () Unit!127634)

(declare-fun Unit!127683 () Unit!127634)

(assert (=> b!4709759 (= lt!1874297 Unit!127683)))

(declare-fun lt!1874296 () Unit!127634)

(assert (=> b!4709759 (= lt!1874296 (forallContained!3558 (toList!5785 lt!1874300) lambda!212455 (h!58962 oldBucket!34)))))

(assert (=> b!4709759 (contains!15962 lt!1874300 (_1!30387 (h!58962 oldBucket!34)))))

(declare-fun lt!1874295 () Unit!127634)

(declare-fun Unit!127684 () Unit!127634)

(assert (=> b!4709759 (= lt!1874295 Unit!127684)))

(assert (=> b!4709759 (contains!15962 lt!1874301 (_1!30387 (h!58962 oldBucket!34)))))

(declare-fun lt!1874288 () Unit!127634)

(declare-fun Unit!127685 () Unit!127634)

(assert (=> b!4709759 (= lt!1874288 Unit!127685)))

(assert (=> b!4709759 (forall!11477 oldBucket!34 lambda!212455)))

(declare-fun lt!1874302 () Unit!127634)

(declare-fun Unit!127686 () Unit!127634)

(assert (=> b!4709759 (= lt!1874302 Unit!127686)))

(assert (=> b!4709759 (forall!11477 (toList!5785 lt!1874300) lambda!212455)))

(declare-fun lt!1874299 () Unit!127634)

(declare-fun Unit!127687 () Unit!127634)

(assert (=> b!4709759 (= lt!1874299 Unit!127687)))

(declare-fun lt!1874294 () Unit!127634)

(declare-fun Unit!127688 () Unit!127634)

(assert (=> b!4709759 (= lt!1874294 Unit!127688)))

(declare-fun lt!1874304 () Unit!127634)

(assert (=> b!4709759 (= lt!1874304 (addForallContainsKeyThenBeforeAdding!757 lt!1874019 lt!1874301 (_1!30387 (h!58962 oldBucket!34)) (_2!30387 (h!58962 oldBucket!34))))))

(assert (=> b!4709759 call!329263))

(declare-fun lt!1874291 () Unit!127634)

(assert (=> b!4709759 (= lt!1874291 lt!1874304)))

(assert (=> b!4709759 (forall!11477 (toList!5785 lt!1874019) lambda!212455)))

(declare-fun lt!1874292 () Unit!127634)

(declare-fun Unit!127689 () Unit!127634)

(assert (=> b!4709759 (= lt!1874292 Unit!127689)))

(declare-fun res!1990291 () Bool)

(assert (=> b!4709759 (= res!1990291 (forall!11477 oldBucket!34 lambda!212455))))

(assert (=> b!4709759 (=> (not res!1990291) (not e!2937569))))

(assert (=> b!4709759 e!2937569))

(declare-fun lt!1874303 () Unit!127634)

(declare-fun Unit!127690 () Unit!127634)

(assert (=> b!4709759 (= lt!1874303 Unit!127690)))

(assert (=> d!1498786 e!2937570))

(declare-fun res!1990293 () Bool)

(assert (=> d!1498786 (=> (not res!1990293) (not e!2937570))))

(assert (=> d!1498786 (= res!1990293 (forall!11477 oldBucket!34 lambda!212457))))

(assert (=> d!1498786 (= lt!1874306 e!2937571)))

(assert (=> d!1498786 (= c!804683 ((_ is Nil!52657) oldBucket!34))))

(assert (=> d!1498786 (noDuplicateKeys!1948 oldBucket!34)))

(assert (=> d!1498786 (= (addToMapMapFromBucket!1378 oldBucket!34 lt!1874019) lt!1874306)))

(assert (= (and d!1498786 c!804683) b!4709757))

(assert (= (and d!1498786 (not c!804683)) b!4709759))

(assert (= (and b!4709759 res!1990291) b!4709755))

(assert (= (or b!4709757 b!4709759) bm!329260))

(assert (= (or b!4709757 b!4709759) bm!329259))

(assert (= (or b!4709757 b!4709755) bm!329258))

(assert (= (and d!1498786 res!1990293) b!4709756))

(assert (= (and b!4709756 res!1990292) b!4709758))

(declare-fun m!5634519 () Bool)

(assert (=> d!1498786 m!5634519))

(assert (=> d!1498786 m!5634197))

(declare-fun m!5634521 () Bool)

(assert (=> bm!329259 m!5634521))

(declare-fun m!5634523 () Bool)

(assert (=> b!4709756 m!5634523))

(assert (=> bm!329258 m!5634521))

(assert (=> bm!329260 m!5634457))

(declare-fun m!5634525 () Bool)

(assert (=> b!4709758 m!5634525))

(declare-fun m!5634527 () Bool)

(assert (=> b!4709759 m!5634527))

(declare-fun m!5634529 () Bool)

(assert (=> b!4709759 m!5634529))

(declare-fun m!5634531 () Bool)

(assert (=> b!4709759 m!5634531))

(assert (=> b!4709759 m!5634527))

(declare-fun m!5634533 () Bool)

(assert (=> b!4709759 m!5634533))

(declare-fun m!5634535 () Bool)

(assert (=> b!4709759 m!5634535))

(declare-fun m!5634537 () Bool)

(assert (=> b!4709759 m!5634537))

(declare-fun m!5634539 () Bool)

(assert (=> b!4709759 m!5634539))

(declare-fun m!5634541 () Bool)

(assert (=> b!4709759 m!5634541))

(assert (=> b!4709759 m!5634541))

(declare-fun m!5634543 () Bool)

(assert (=> b!4709759 m!5634543))

(declare-fun m!5634545 () Bool)

(assert (=> b!4709759 m!5634545))

(assert (=> b!4709759 m!5634535))

(declare-fun m!5634547 () Bool)

(assert (=> b!4709759 m!5634547))

(assert (=> b!4709597 d!1498786))

(declare-fun bs!1101236 () Bool)

(declare-fun b!4709762 () Bool)

(assert (= bs!1101236 (and b!4709762 b!4709724)))

(declare-fun lambda!212459 () Int)

(assert (=> bs!1101236 (= lambda!212459 lambda!212446)))

(declare-fun bs!1101238 () Bool)

(assert (= bs!1101238 (and b!4709762 d!1498786)))

(assert (=> bs!1101238 (= (= lt!1874019 lt!1874306) (= lambda!212459 lambda!212457))))

(declare-fun bs!1101240 () Bool)

(assert (= bs!1101240 (and b!4709762 b!4709757)))

(assert (=> bs!1101240 (= lambda!212459 lambda!212452)))

(declare-fun bs!1101242 () Bool)

(assert (= bs!1101242 (and b!4709762 d!1498740)))

(assert (=> bs!1101242 (= (= lt!1874019 lt!1874254) (= lambda!212459 lambda!212448))))

(declare-fun bs!1101244 () Bool)

(assert (= bs!1101244 (and b!4709762 b!4709759)))

(assert (=> bs!1101244 (= (= lt!1874019 lt!1874301) (= lambda!212459 lambda!212455))))

(declare-fun bs!1101245 () Bool)

(assert (= bs!1101245 (and b!4709762 d!1498738)))

(assert (=> bs!1101245 (not (= lambda!212459 lambda!212365))))

(assert (=> bs!1101236 (= (= lt!1874019 lt!1874249) (= lambda!212459 lambda!212447))))

(declare-fun bs!1101247 () Bool)

(assert (= bs!1101247 (and b!4709762 b!4709722)))

(assert (=> bs!1101247 (= lambda!212459 lambda!212445)))

(assert (=> bs!1101244 (= lambda!212459 lambda!212453)))

(assert (=> b!4709762 true))

(declare-fun bs!1101250 () Bool)

(declare-fun b!4709764 () Bool)

(assert (= bs!1101250 (and b!4709764 b!4709724)))

(declare-fun lambda!212460 () Int)

(assert (=> bs!1101250 (= lambda!212460 lambda!212446)))

(declare-fun bs!1101251 () Bool)

(assert (= bs!1101251 (and b!4709764 d!1498786)))

(assert (=> bs!1101251 (= (= lt!1874019 lt!1874306) (= lambda!212460 lambda!212457))))

(declare-fun bs!1101252 () Bool)

(assert (= bs!1101252 (and b!4709764 b!4709757)))

(assert (=> bs!1101252 (= lambda!212460 lambda!212452)))

(declare-fun bs!1101253 () Bool)

(assert (= bs!1101253 (and b!4709764 d!1498740)))

(assert (=> bs!1101253 (= (= lt!1874019 lt!1874254) (= lambda!212460 lambda!212448))))

(declare-fun bs!1101254 () Bool)

(assert (= bs!1101254 (and b!4709764 b!4709759)))

(assert (=> bs!1101254 (= (= lt!1874019 lt!1874301) (= lambda!212460 lambda!212455))))

(declare-fun bs!1101255 () Bool)

(assert (= bs!1101255 (and b!4709764 d!1498738)))

(assert (=> bs!1101255 (not (= lambda!212460 lambda!212365))))

(declare-fun bs!1101256 () Bool)

(assert (= bs!1101256 (and b!4709764 b!4709762)))

(assert (=> bs!1101256 (= lambda!212460 lambda!212459)))

(assert (=> bs!1101250 (= (= lt!1874019 lt!1874249) (= lambda!212460 lambda!212447))))

(declare-fun bs!1101257 () Bool)

(assert (= bs!1101257 (and b!4709764 b!4709722)))

(assert (=> bs!1101257 (= lambda!212460 lambda!212445)))

(assert (=> bs!1101254 (= lambda!212460 lambda!212453)))

(assert (=> b!4709764 true))

(declare-fun lambda!212461 () Int)

(declare-fun lt!1874322 () ListMap!5149)

(assert (=> bs!1101250 (= (= lt!1874322 lt!1874019) (= lambda!212461 lambda!212446))))

(assert (=> b!4709764 (= (= lt!1874322 lt!1874019) (= lambda!212461 lambda!212460))))

(assert (=> bs!1101251 (= (= lt!1874322 lt!1874306) (= lambda!212461 lambda!212457))))

(assert (=> bs!1101252 (= (= lt!1874322 lt!1874019) (= lambda!212461 lambda!212452))))

(assert (=> bs!1101253 (= (= lt!1874322 lt!1874254) (= lambda!212461 lambda!212448))))

(assert (=> bs!1101254 (= (= lt!1874322 lt!1874301) (= lambda!212461 lambda!212455))))

(assert (=> bs!1101255 (not (= lambda!212461 lambda!212365))))

(assert (=> bs!1101256 (= (= lt!1874322 lt!1874019) (= lambda!212461 lambda!212459))))

(assert (=> bs!1101250 (= (= lt!1874322 lt!1874249) (= lambda!212461 lambda!212447))))

(assert (=> bs!1101257 (= (= lt!1874322 lt!1874019) (= lambda!212461 lambda!212445))))

(assert (=> bs!1101254 (= (= lt!1874322 lt!1874019) (= lambda!212461 lambda!212453))))

(assert (=> b!4709764 true))

(declare-fun bs!1101263 () Bool)

(declare-fun d!1498788 () Bool)

(assert (= bs!1101263 (and d!1498788 b!4709724)))

(declare-fun lt!1874327 () ListMap!5149)

(declare-fun lambda!212463 () Int)

(assert (=> bs!1101263 (= (= lt!1874327 lt!1874019) (= lambda!212463 lambda!212446))))

(declare-fun bs!1101264 () Bool)

(assert (= bs!1101264 (and d!1498788 b!4709764)))

(assert (=> bs!1101264 (= (= lt!1874327 lt!1874019) (= lambda!212463 lambda!212460))))

(declare-fun bs!1101265 () Bool)

(assert (= bs!1101265 (and d!1498788 d!1498786)))

(assert (=> bs!1101265 (= (= lt!1874327 lt!1874306) (= lambda!212463 lambda!212457))))

(declare-fun bs!1101266 () Bool)

(assert (= bs!1101266 (and d!1498788 d!1498740)))

(assert (=> bs!1101266 (= (= lt!1874327 lt!1874254) (= lambda!212463 lambda!212448))))

(declare-fun bs!1101267 () Bool)

(assert (= bs!1101267 (and d!1498788 b!4709759)))

(assert (=> bs!1101267 (= (= lt!1874327 lt!1874301) (= lambda!212463 lambda!212455))))

(declare-fun bs!1101268 () Bool)

(assert (= bs!1101268 (and d!1498788 d!1498738)))

(assert (=> bs!1101268 (not (= lambda!212463 lambda!212365))))

(declare-fun bs!1101269 () Bool)

(assert (= bs!1101269 (and d!1498788 b!4709762)))

(assert (=> bs!1101269 (= (= lt!1874327 lt!1874019) (= lambda!212463 lambda!212459))))

(assert (=> bs!1101263 (= (= lt!1874327 lt!1874249) (= lambda!212463 lambda!212447))))

(assert (=> bs!1101264 (= (= lt!1874327 lt!1874322) (= lambda!212463 lambda!212461))))

(declare-fun bs!1101270 () Bool)

(assert (= bs!1101270 (and d!1498788 b!4709757)))

(assert (=> bs!1101270 (= (= lt!1874327 lt!1874019) (= lambda!212463 lambda!212452))))

(declare-fun bs!1101271 () Bool)

(assert (= bs!1101271 (and d!1498788 b!4709722)))

(assert (=> bs!1101271 (= (= lt!1874327 lt!1874019) (= lambda!212463 lambda!212445))))

(assert (=> bs!1101267 (= (= lt!1874327 lt!1874019) (= lambda!212463 lambda!212453))))

(assert (=> d!1498788 true))

(declare-fun b!4709760 () Bool)

(declare-fun e!2937572 () Bool)

(declare-fun call!329268 () Bool)

(assert (=> b!4709760 (= e!2937572 call!329268)))

(declare-fun b!4709761 () Bool)

(declare-fun res!1990295 () Bool)

(declare-fun e!2937573 () Bool)

(assert (=> b!4709761 (=> (not res!1990295) (not e!2937573))))

(assert (=> b!4709761 (= res!1990295 (forall!11477 (toList!5785 lt!1874019) lambda!212463))))

(declare-fun bm!329261 () Bool)

(declare-fun c!804684 () Bool)

(assert (=> bm!329261 (= call!329268 (forall!11477 (toList!5785 lt!1874019) (ite c!804684 lambda!212459 lambda!212461)))))

(declare-fun e!2937574 () ListMap!5149)

(assert (=> b!4709762 (= e!2937574 lt!1874019)))

(declare-fun lt!1874314 () Unit!127634)

(declare-fun call!329267 () Unit!127634)

(assert (=> b!4709762 (= lt!1874314 call!329267)))

(assert (=> b!4709762 call!329268))

(declare-fun lt!1874328 () Unit!127634)

(assert (=> b!4709762 (= lt!1874328 lt!1874314)))

(declare-fun call!329266 () Bool)

(assert (=> b!4709762 call!329266))

(declare-fun lt!1874310 () Unit!127634)

(declare-fun Unit!127702 () Unit!127634)

(assert (=> b!4709762 (= lt!1874310 Unit!127702)))

(declare-fun b!4709763 () Bool)

(assert (=> b!4709763 (= e!2937573 (invariantList!1470 (toList!5785 lt!1874327)))))

(declare-fun bm!329262 () Bool)

(assert (=> bm!329262 (= call!329266 (forall!11477 (toList!5785 lt!1874019) (ite c!804684 lambda!212459 lambda!212461)))))

(declare-fun bm!329263 () Bool)

(assert (=> bm!329263 (= call!329267 (lemmaContainsAllItsOwnKeys!758 lt!1874019))))

(assert (=> b!4709764 (= e!2937574 lt!1874322)))

(declare-fun lt!1874321 () ListMap!5149)

(assert (=> b!4709764 (= lt!1874321 (+!2212 lt!1874019 (h!58962 (Cons!52657 lt!1874015 lt!1874018))))))

(assert (=> b!4709764 (= lt!1874322 (addToMapMapFromBucket!1378 (t!360015 (Cons!52657 lt!1874015 lt!1874018)) (+!2212 lt!1874019 (h!58962 (Cons!52657 lt!1874015 lt!1874018)))))))

(declare-fun lt!1874319 () Unit!127634)

(assert (=> b!4709764 (= lt!1874319 call!329267)))

(assert (=> b!4709764 (forall!11477 (toList!5785 lt!1874019) lambda!212460)))

(declare-fun lt!1874326 () Unit!127634)

(assert (=> b!4709764 (= lt!1874326 lt!1874319)))

(assert (=> b!4709764 (forall!11477 (toList!5785 lt!1874321) lambda!212461)))

(declare-fun lt!1874308 () Unit!127634)

(declare-fun Unit!127703 () Unit!127634)

(assert (=> b!4709764 (= lt!1874308 Unit!127703)))

(assert (=> b!4709764 (forall!11477 (t!360015 (Cons!52657 lt!1874015 lt!1874018)) lambda!212461)))

(declare-fun lt!1874311 () Unit!127634)

(declare-fun Unit!127704 () Unit!127634)

(assert (=> b!4709764 (= lt!1874311 Unit!127704)))

(declare-fun lt!1874318 () Unit!127634)

(declare-fun Unit!127705 () Unit!127634)

(assert (=> b!4709764 (= lt!1874318 Unit!127705)))

(declare-fun lt!1874317 () Unit!127634)

(assert (=> b!4709764 (= lt!1874317 (forallContained!3558 (toList!5785 lt!1874321) lambda!212461 (h!58962 (Cons!52657 lt!1874015 lt!1874018))))))

(assert (=> b!4709764 (contains!15962 lt!1874321 (_1!30387 (h!58962 (Cons!52657 lt!1874015 lt!1874018))))))

(declare-fun lt!1874316 () Unit!127634)

(declare-fun Unit!127706 () Unit!127634)

(assert (=> b!4709764 (= lt!1874316 Unit!127706)))

(assert (=> b!4709764 (contains!15962 lt!1874322 (_1!30387 (h!58962 (Cons!52657 lt!1874015 lt!1874018))))))

(declare-fun lt!1874309 () Unit!127634)

(declare-fun Unit!127707 () Unit!127634)

(assert (=> b!4709764 (= lt!1874309 Unit!127707)))

(assert (=> b!4709764 (forall!11477 (Cons!52657 lt!1874015 lt!1874018) lambda!212461)))

(declare-fun lt!1874323 () Unit!127634)

(declare-fun Unit!127708 () Unit!127634)

(assert (=> b!4709764 (= lt!1874323 Unit!127708)))

(assert (=> b!4709764 (forall!11477 (toList!5785 lt!1874321) lambda!212461)))

(declare-fun lt!1874320 () Unit!127634)

(declare-fun Unit!127709 () Unit!127634)

(assert (=> b!4709764 (= lt!1874320 Unit!127709)))

(declare-fun lt!1874315 () Unit!127634)

(declare-fun Unit!127710 () Unit!127634)

(assert (=> b!4709764 (= lt!1874315 Unit!127710)))

(declare-fun lt!1874325 () Unit!127634)

(assert (=> b!4709764 (= lt!1874325 (addForallContainsKeyThenBeforeAdding!757 lt!1874019 lt!1874322 (_1!30387 (h!58962 (Cons!52657 lt!1874015 lt!1874018))) (_2!30387 (h!58962 (Cons!52657 lt!1874015 lt!1874018)))))))

(assert (=> b!4709764 call!329266))

(declare-fun lt!1874312 () Unit!127634)

(assert (=> b!4709764 (= lt!1874312 lt!1874325)))

(assert (=> b!4709764 (forall!11477 (toList!5785 lt!1874019) lambda!212461)))

(declare-fun lt!1874313 () Unit!127634)

(declare-fun Unit!127711 () Unit!127634)

(assert (=> b!4709764 (= lt!1874313 Unit!127711)))

(declare-fun res!1990294 () Bool)

(assert (=> b!4709764 (= res!1990294 (forall!11477 (Cons!52657 lt!1874015 lt!1874018) lambda!212461))))

(assert (=> b!4709764 (=> (not res!1990294) (not e!2937572))))

(assert (=> b!4709764 e!2937572))

(declare-fun lt!1874324 () Unit!127634)

(declare-fun Unit!127712 () Unit!127634)

(assert (=> b!4709764 (= lt!1874324 Unit!127712)))

(assert (=> d!1498788 e!2937573))

(declare-fun res!1990296 () Bool)

(assert (=> d!1498788 (=> (not res!1990296) (not e!2937573))))

(assert (=> d!1498788 (= res!1990296 (forall!11477 (Cons!52657 lt!1874015 lt!1874018) lambda!212463))))

(assert (=> d!1498788 (= lt!1874327 e!2937574)))

(assert (=> d!1498788 (= c!804684 ((_ is Nil!52657) (Cons!52657 lt!1874015 lt!1874018)))))

(assert (=> d!1498788 (noDuplicateKeys!1948 (Cons!52657 lt!1874015 lt!1874018))))

(assert (=> d!1498788 (= (addToMapMapFromBucket!1378 (Cons!52657 lt!1874015 lt!1874018) lt!1874019) lt!1874327)))

(assert (= (and d!1498788 c!804684) b!4709762))

(assert (= (and d!1498788 (not c!804684)) b!4709764))

(assert (= (and b!4709764 res!1990294) b!4709760))

(assert (= (or b!4709762 b!4709764) bm!329263))

(assert (= (or b!4709762 b!4709764) bm!329262))

(assert (= (or b!4709762 b!4709760) bm!329261))

(assert (= (and d!1498788 res!1990296) b!4709761))

(assert (= (and b!4709761 res!1990295) b!4709763))

(declare-fun m!5634591 () Bool)

(assert (=> d!1498788 m!5634591))

(declare-fun m!5634593 () Bool)

(assert (=> d!1498788 m!5634593))

(declare-fun m!5634595 () Bool)

(assert (=> bm!329262 m!5634595))

(declare-fun m!5634597 () Bool)

(assert (=> b!4709761 m!5634597))

(assert (=> bm!329261 m!5634595))

(assert (=> bm!329263 m!5634457))

(declare-fun m!5634599 () Bool)

(assert (=> b!4709763 m!5634599))

(declare-fun m!5634601 () Bool)

(assert (=> b!4709764 m!5634601))

(declare-fun m!5634603 () Bool)

(assert (=> b!4709764 m!5634603))

(declare-fun m!5634605 () Bool)

(assert (=> b!4709764 m!5634605))

(assert (=> b!4709764 m!5634601))

(declare-fun m!5634607 () Bool)

(assert (=> b!4709764 m!5634607))

(declare-fun m!5634609 () Bool)

(assert (=> b!4709764 m!5634609))

(declare-fun m!5634611 () Bool)

(assert (=> b!4709764 m!5634611))

(declare-fun m!5634613 () Bool)

(assert (=> b!4709764 m!5634613))

(declare-fun m!5634615 () Bool)

(assert (=> b!4709764 m!5634615))

(assert (=> b!4709764 m!5634615))

(declare-fun m!5634617 () Bool)

(assert (=> b!4709764 m!5634617))

(declare-fun m!5634619 () Bool)

(assert (=> b!4709764 m!5634619))

(assert (=> b!4709764 m!5634609))

(declare-fun m!5634621 () Bool)

(assert (=> b!4709764 m!5634621))

(assert (=> b!4709597 d!1498788))

(declare-fun d!1498796 () Bool)

(declare-fun e!2937585 () Bool)

(assert (=> d!1498796 e!2937585))

(declare-fun res!1990302 () Bool)

(assert (=> d!1498796 (=> (not res!1990302) (not e!2937585))))

(declare-fun lt!1874340 () ListMap!5149)

(assert (=> d!1498796 (= res!1990302 (contains!15962 lt!1874340 (_1!30387 (h!58962 oldBucket!34))))))

(declare-fun lt!1874339 () List!52781)

(assert (=> d!1498796 (= lt!1874340 (ListMap!5150 lt!1874339))))

(declare-fun lt!1874341 () Unit!127634)

(declare-fun lt!1874338 () Unit!127634)

(assert (=> d!1498796 (= lt!1874341 lt!1874338)))

(declare-datatypes ((Option!12263 0))(
  ( (None!12262) (Some!12262 (v!46789 V!14266)) )
))
(declare-fun getValueByKey!1895 (List!52781 K!14020) Option!12263)

(assert (=> d!1498796 (= (getValueByKey!1895 lt!1874339 (_1!30387 (h!58962 oldBucket!34))) (Some!12262 (_2!30387 (h!58962 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1058 (List!52781 K!14020 V!14266) Unit!127634)

(assert (=> d!1498796 (= lt!1874338 (lemmaContainsTupThenGetReturnValue!1058 lt!1874339 (_1!30387 (h!58962 oldBucket!34)) (_2!30387 (h!58962 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!566 (List!52781 K!14020 V!14266) List!52781)

(assert (=> d!1498796 (= lt!1874339 (insertNoDuplicatedKeys!566 (toList!5785 lt!1874017) (_1!30387 (h!58962 oldBucket!34)) (_2!30387 (h!58962 oldBucket!34))))))

(assert (=> d!1498796 (= (+!2212 lt!1874017 (h!58962 oldBucket!34)) lt!1874340)))

(declare-fun b!4709782 () Bool)

(declare-fun res!1990301 () Bool)

(assert (=> b!4709782 (=> (not res!1990301) (not e!2937585))))

(assert (=> b!4709782 (= res!1990301 (= (getValueByKey!1895 (toList!5785 lt!1874340) (_1!30387 (h!58962 oldBucket!34))) (Some!12262 (_2!30387 (h!58962 oldBucket!34)))))))

(declare-fun b!4709783 () Bool)

(declare-fun contains!15964 (List!52781 tuple2!54186) Bool)

(assert (=> b!4709783 (= e!2937585 (contains!15964 (toList!5785 lt!1874340) (h!58962 oldBucket!34)))))

(assert (= (and d!1498796 res!1990302) b!4709782))

(assert (= (and b!4709782 res!1990301) b!4709783))

(declare-fun m!5634625 () Bool)

(assert (=> d!1498796 m!5634625))

(declare-fun m!5634627 () Bool)

(assert (=> d!1498796 m!5634627))

(declare-fun m!5634629 () Bool)

(assert (=> d!1498796 m!5634629))

(declare-fun m!5634631 () Bool)

(assert (=> d!1498796 m!5634631))

(declare-fun m!5634633 () Bool)

(assert (=> b!4709782 m!5634633))

(declare-fun m!5634635 () Bool)

(assert (=> b!4709783 m!5634635))

(assert (=> b!4709597 d!1498796))

(declare-fun d!1498800 () Bool)

(assert (=> d!1498800 (= (head!10136 oldBucket!34) (h!58962 oldBucket!34))))

(assert (=> b!4709597 d!1498800))

(declare-fun d!1498802 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9328 (List!52781) (InoxSet tuple2!54186))

(assert (=> d!1498802 (= (eq!1085 (+!2212 lt!1874017 (h!58962 oldBucket!34)) (addToMapMapFromBucket!1378 oldBucket!34 lt!1874019)) (= (content!9328 (toList!5785 (+!2212 lt!1874017 (h!58962 oldBucket!34)))) (content!9328 (toList!5785 (addToMapMapFromBucket!1378 oldBucket!34 lt!1874019)))))))

(declare-fun bs!1101291 () Bool)

(assert (= bs!1101291 d!1498802))

(declare-fun m!5634637 () Bool)

(assert (=> bs!1101291 m!5634637))

(declare-fun m!5634639 () Bool)

(assert (=> bs!1101291 m!5634639))

(assert (=> b!4709597 d!1498802))

(declare-fun d!1498804 () Bool)

(assert (=> d!1498804 (eq!1085 (addToMapMapFromBucket!1378 (Cons!52657 lt!1874015 lt!1874018) lt!1874019) (+!2212 (addToMapMapFromBucket!1378 lt!1874018 lt!1874019) lt!1874015))))

(declare-fun lt!1874344 () Unit!127634)

(declare-fun choose!33111 (tuple2!54186 List!52781 ListMap!5149) Unit!127634)

(assert (=> d!1498804 (= lt!1874344 (choose!33111 lt!1874015 lt!1874018 lt!1874019))))

(assert (=> d!1498804 (noDuplicateKeys!1948 lt!1874018)))

(assert (=> d!1498804 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!334 lt!1874015 lt!1874018 lt!1874019) lt!1874344)))

(declare-fun bs!1101292 () Bool)

(assert (= bs!1101292 d!1498804))

(assert (=> bs!1101292 m!5634201))

(declare-fun m!5634641 () Bool)

(assert (=> bs!1101292 m!5634641))

(assert (=> bs!1101292 m!5634173))

(assert (=> bs!1101292 m!5634641))

(declare-fun m!5634643 () Bool)

(assert (=> bs!1101292 m!5634643))

(declare-fun m!5634645 () Bool)

(assert (=> bs!1101292 m!5634645))

(declare-fun m!5634647 () Bool)

(assert (=> bs!1101292 m!5634647))

(assert (=> bs!1101292 m!5634173))

(assert (=> bs!1101292 m!5634201))

(assert (=> b!4709597 d!1498804))

(declare-fun d!1498806 () Bool)

(assert (=> d!1498806 (= (eq!1085 (addToMapMapFromBucket!1378 (Cons!52657 lt!1874015 lt!1874018) lt!1874019) (+!2212 lt!1874017 lt!1874015)) (= (content!9328 (toList!5785 (addToMapMapFromBucket!1378 (Cons!52657 lt!1874015 lt!1874018) lt!1874019))) (content!9328 (toList!5785 (+!2212 lt!1874017 lt!1874015)))))))

(declare-fun bs!1101293 () Bool)

(assert (= bs!1101293 d!1498806))

(declare-fun m!5634649 () Bool)

(assert (=> bs!1101293 m!5634649))

(declare-fun m!5634651 () Bool)

(assert (=> bs!1101293 m!5634651))

(assert (=> b!4709597 d!1498806))

(declare-fun d!1498808 () Bool)

(declare-fun e!2937586 () Bool)

(assert (=> d!1498808 e!2937586))

(declare-fun res!1990304 () Bool)

(assert (=> d!1498808 (=> (not res!1990304) (not e!2937586))))

(declare-fun lt!1874347 () ListMap!5149)

(assert (=> d!1498808 (= res!1990304 (contains!15962 lt!1874347 (_1!30387 lt!1874015)))))

(declare-fun lt!1874346 () List!52781)

(assert (=> d!1498808 (= lt!1874347 (ListMap!5150 lt!1874346))))

(declare-fun lt!1874348 () Unit!127634)

(declare-fun lt!1874345 () Unit!127634)

(assert (=> d!1498808 (= lt!1874348 lt!1874345)))

(assert (=> d!1498808 (= (getValueByKey!1895 lt!1874346 (_1!30387 lt!1874015)) (Some!12262 (_2!30387 lt!1874015)))))

(assert (=> d!1498808 (= lt!1874345 (lemmaContainsTupThenGetReturnValue!1058 lt!1874346 (_1!30387 lt!1874015) (_2!30387 lt!1874015)))))

(assert (=> d!1498808 (= lt!1874346 (insertNoDuplicatedKeys!566 (toList!5785 lt!1874017) (_1!30387 lt!1874015) (_2!30387 lt!1874015)))))

(assert (=> d!1498808 (= (+!2212 lt!1874017 lt!1874015) lt!1874347)))

(declare-fun b!4709784 () Bool)

(declare-fun res!1990303 () Bool)

(assert (=> b!4709784 (=> (not res!1990303) (not e!2937586))))

(assert (=> b!4709784 (= res!1990303 (= (getValueByKey!1895 (toList!5785 lt!1874347) (_1!30387 lt!1874015)) (Some!12262 (_2!30387 lt!1874015))))))

(declare-fun b!4709785 () Bool)

(assert (=> b!4709785 (= e!2937586 (contains!15964 (toList!5785 lt!1874347) lt!1874015))))

(assert (= (and d!1498808 res!1990304) b!4709784))

(assert (= (and b!4709784 res!1990303) b!4709785))

(declare-fun m!5634653 () Bool)

(assert (=> d!1498808 m!5634653))

(declare-fun m!5634655 () Bool)

(assert (=> d!1498808 m!5634655))

(declare-fun m!5634657 () Bool)

(assert (=> d!1498808 m!5634657))

(declare-fun m!5634659 () Bool)

(assert (=> d!1498808 m!5634659))

(declare-fun m!5634661 () Bool)

(assert (=> b!4709784 m!5634661))

(declare-fun m!5634663 () Bool)

(assert (=> b!4709785 m!5634663))

(assert (=> b!4709597 d!1498808))

(declare-fun d!1498810 () Bool)

(declare-fun res!1990309 () Bool)

(declare-fun e!2937591 () Bool)

(assert (=> d!1498810 (=> res!1990309 e!2937591)))

(assert (=> d!1498810 (= res!1990309 (not ((_ is Cons!52657) newBucket!218)))))

(assert (=> d!1498810 (= (noDuplicateKeys!1948 newBucket!218) e!2937591)))

(declare-fun b!4709790 () Bool)

(declare-fun e!2937592 () Bool)

(assert (=> b!4709790 (= e!2937591 e!2937592)))

(declare-fun res!1990310 () Bool)

(assert (=> b!4709790 (=> (not res!1990310) (not e!2937592))))

(assert (=> b!4709790 (= res!1990310 (not (containsKey!3247 (t!360015 newBucket!218) (_1!30387 (h!58962 newBucket!218)))))))

(declare-fun b!4709791 () Bool)

(assert (=> b!4709791 (= e!2937592 (noDuplicateKeys!1948 (t!360015 newBucket!218)))))

(assert (= (and d!1498810 (not res!1990309)) b!4709790))

(assert (= (and b!4709790 res!1990310) b!4709791))

(declare-fun m!5634665 () Bool)

(assert (=> b!4709790 m!5634665))

(declare-fun m!5634667 () Bool)

(assert (=> b!4709791 m!5634667))

(assert (=> b!4709598 d!1498810))

(declare-fun bs!1101294 () Bool)

(declare-fun d!1498812 () Bool)

(assert (= bs!1101294 (and d!1498812 b!4709724)))

(declare-fun lambda!212465 () Int)

(assert (=> bs!1101294 (not (= lambda!212465 lambda!212446))))

(declare-fun bs!1101295 () Bool)

(assert (= bs!1101295 (and d!1498812 d!1498786)))

(assert (=> bs!1101295 (not (= lambda!212465 lambda!212457))))

(declare-fun bs!1101296 () Bool)

(assert (= bs!1101296 (and d!1498812 d!1498740)))

(assert (=> bs!1101296 (not (= lambda!212465 lambda!212448))))

(declare-fun bs!1101297 () Bool)

(assert (= bs!1101297 (and d!1498812 b!4709759)))

(assert (=> bs!1101297 (not (= lambda!212465 lambda!212455))))

(declare-fun bs!1101298 () Bool)

(assert (= bs!1101298 (and d!1498812 d!1498738)))

(assert (=> bs!1101298 (= lambda!212465 lambda!212365)))

(declare-fun bs!1101299 () Bool)

(assert (= bs!1101299 (and d!1498812 b!4709762)))

(assert (=> bs!1101299 (not (= lambda!212465 lambda!212459))))

(assert (=> bs!1101294 (not (= lambda!212465 lambda!212447))))

(declare-fun bs!1101300 () Bool)

(assert (= bs!1101300 (and d!1498812 b!4709764)))

(assert (=> bs!1101300 (not (= lambda!212465 lambda!212460))))

(declare-fun bs!1101301 () Bool)

(assert (= bs!1101301 (and d!1498812 d!1498788)))

(assert (=> bs!1101301 (not (= lambda!212465 lambda!212463))))

(assert (=> bs!1101300 (not (= lambda!212465 lambda!212461))))

(declare-fun bs!1101302 () Bool)

(assert (= bs!1101302 (and d!1498812 b!4709757)))

(assert (=> bs!1101302 (not (= lambda!212465 lambda!212452))))

(declare-fun bs!1101303 () Bool)

(assert (= bs!1101303 (and d!1498812 b!4709722)))

(assert (=> bs!1101303 (not (= lambda!212465 lambda!212445))))

(assert (=> bs!1101297 (not (= lambda!212465 lambda!212453))))

(assert (=> d!1498812 true))

(assert (=> d!1498812 true))

(assert (=> d!1498812 (= (allKeysSameHash!1774 newBucket!218 hash!405 hashF!1323) (forall!11477 newBucket!218 lambda!212465))))

(declare-fun bs!1101304 () Bool)

(assert (= bs!1101304 d!1498812))

(declare-fun m!5634669 () Bool)

(assert (=> bs!1101304 m!5634669))

(assert (=> b!4709587 d!1498812))

(declare-fun d!1498814 () Bool)

(assert (=> d!1498814 (= (tail!8836 oldBucket!34) (t!360015 oldBucket!34))))

(assert (=> b!4709593 d!1498814))

(declare-fun bs!1101305 () Bool)

(declare-fun d!1498816 () Bool)

(assert (= bs!1101305 (and d!1498816 start!478452)))

(declare-fun lambda!212468 () Int)

(assert (=> bs!1101305 (not (= lambda!212468 lambda!212355))))

(declare-fun bs!1101306 () Bool)

(assert (= bs!1101306 (and d!1498816 d!1498724)))

(assert (=> bs!1101306 (not (= lambda!212468 lambda!212361))))

(declare-fun bs!1101307 () Bool)

(assert (= bs!1101307 (and d!1498816 d!1498734)))

(assert (=> bs!1101307 (not (= lambda!212468 lambda!212362))))

(declare-fun bs!1101308 () Bool)

(assert (= bs!1101308 (and d!1498816 d!1498778)))

(assert (=> bs!1101308 (not (= lambda!212468 lambda!212449))))

(assert (=> d!1498816 true))

(assert (=> d!1498816 (= (allKeysSameHashInMap!1862 lm!2023 hashF!1323) (forall!11475 (toList!5786 lm!2023) lambda!212468))))

(declare-fun bs!1101309 () Bool)

(assert (= bs!1101309 d!1498816))

(declare-fun m!5634671 () Bool)

(assert (=> bs!1101309 m!5634671))

(assert (=> b!4709594 d!1498816))

(declare-fun d!1498818 () Bool)

(assert (=> d!1498818 (= (head!10135 (toList!5786 lm!2023)) (h!58963 (toList!5786 lm!2023)))))

(assert (=> b!4709595 d!1498818))

(declare-fun b!4709802 () Bool)

(declare-fun e!2937598 () List!52781)

(assert (=> b!4709802 (= e!2937598 (t!360015 oldBucket!34))))

(declare-fun b!4709805 () Bool)

(declare-fun e!2937597 () List!52781)

(assert (=> b!4709805 (= e!2937597 Nil!52657)))

(declare-fun d!1498820 () Bool)

(declare-fun lt!1874351 () List!52781)

(assert (=> d!1498820 (not (containsKey!3247 lt!1874351 key!4653))))

(assert (=> d!1498820 (= lt!1874351 e!2937598)))

(declare-fun c!804691 () Bool)

(assert (=> d!1498820 (= c!804691 (and ((_ is Cons!52657) oldBucket!34) (= (_1!30387 (h!58962 oldBucket!34)) key!4653)))))

(assert (=> d!1498820 (noDuplicateKeys!1948 oldBucket!34)))

(assert (=> d!1498820 (= (removePairForKey!1543 oldBucket!34 key!4653) lt!1874351)))

(declare-fun b!4709803 () Bool)

(assert (=> b!4709803 (= e!2937598 e!2937597)))

(declare-fun c!804690 () Bool)

(assert (=> b!4709803 (= c!804690 ((_ is Cons!52657) oldBucket!34))))

(declare-fun b!4709804 () Bool)

(assert (=> b!4709804 (= e!2937597 (Cons!52657 (h!58962 oldBucket!34) (removePairForKey!1543 (t!360015 oldBucket!34) key!4653)))))

(assert (= (and d!1498820 c!804691) b!4709802))

(assert (= (and d!1498820 (not c!804691)) b!4709803))

(assert (= (and b!4709803 c!804690) b!4709804))

(assert (= (and b!4709803 (not c!804690)) b!4709805))

(declare-fun m!5634673 () Bool)

(assert (=> d!1498820 m!5634673))

(assert (=> d!1498820 m!5634197))

(declare-fun m!5634675 () Bool)

(assert (=> b!4709804 m!5634675))

(assert (=> b!4709601 d!1498820))

(declare-fun bs!1101310 () Bool)

(declare-fun b!4709808 () Bool)

(assert (= bs!1101310 (and b!4709808 b!4709724)))

(declare-fun lambda!212469 () Int)

(assert (=> bs!1101310 (= lambda!212469 lambda!212446)))

(declare-fun bs!1101311 () Bool)

(assert (= bs!1101311 (and b!4709808 d!1498786)))

(assert (=> bs!1101311 (= (= lt!1874019 lt!1874306) (= lambda!212469 lambda!212457))))

(declare-fun bs!1101312 () Bool)

(assert (= bs!1101312 (and b!4709808 d!1498740)))

(assert (=> bs!1101312 (= (= lt!1874019 lt!1874254) (= lambda!212469 lambda!212448))))

(declare-fun bs!1101313 () Bool)

(assert (= bs!1101313 (and b!4709808 b!4709759)))

(assert (=> bs!1101313 (= (= lt!1874019 lt!1874301) (= lambda!212469 lambda!212455))))

(declare-fun bs!1101314 () Bool)

(assert (= bs!1101314 (and b!4709808 d!1498738)))

(assert (=> bs!1101314 (not (= lambda!212469 lambda!212365))))

(declare-fun bs!1101315 () Bool)

(assert (= bs!1101315 (and b!4709808 b!4709762)))

(assert (=> bs!1101315 (= lambda!212469 lambda!212459)))

(assert (=> bs!1101310 (= (= lt!1874019 lt!1874249) (= lambda!212469 lambda!212447))))

(declare-fun bs!1101316 () Bool)

(assert (= bs!1101316 (and b!4709808 b!4709764)))

(assert (=> bs!1101316 (= lambda!212469 lambda!212460)))

(declare-fun bs!1101317 () Bool)

(assert (= bs!1101317 (and b!4709808 d!1498788)))

(assert (=> bs!1101317 (= (= lt!1874019 lt!1874327) (= lambda!212469 lambda!212463))))

(assert (=> bs!1101316 (= (= lt!1874019 lt!1874322) (= lambda!212469 lambda!212461))))

(declare-fun bs!1101318 () Bool)

(assert (= bs!1101318 (and b!4709808 b!4709757)))

(assert (=> bs!1101318 (= lambda!212469 lambda!212452)))

(declare-fun bs!1101319 () Bool)

(assert (= bs!1101319 (and b!4709808 d!1498812)))

(assert (=> bs!1101319 (not (= lambda!212469 lambda!212465))))

(declare-fun bs!1101320 () Bool)

(assert (= bs!1101320 (and b!4709808 b!4709722)))

(assert (=> bs!1101320 (= lambda!212469 lambda!212445)))

(assert (=> bs!1101313 (= lambda!212469 lambda!212453)))

(assert (=> b!4709808 true))

(declare-fun bs!1101321 () Bool)

(declare-fun b!4709810 () Bool)

(assert (= bs!1101321 (and b!4709810 b!4709724)))

(declare-fun lambda!212470 () Int)

(assert (=> bs!1101321 (= lambda!212470 lambda!212446)))

(declare-fun bs!1101322 () Bool)

(assert (= bs!1101322 (and b!4709810 d!1498786)))

(assert (=> bs!1101322 (= (= lt!1874019 lt!1874306) (= lambda!212470 lambda!212457))))

(declare-fun bs!1101323 () Bool)

(assert (= bs!1101323 (and b!4709810 b!4709759)))

(assert (=> bs!1101323 (= (= lt!1874019 lt!1874301) (= lambda!212470 lambda!212455))))

(declare-fun bs!1101324 () Bool)

(assert (= bs!1101324 (and b!4709810 d!1498738)))

(assert (=> bs!1101324 (not (= lambda!212470 lambda!212365))))

(declare-fun bs!1101325 () Bool)

(assert (= bs!1101325 (and b!4709810 b!4709762)))

(assert (=> bs!1101325 (= lambda!212470 lambda!212459)))

(assert (=> bs!1101321 (= (= lt!1874019 lt!1874249) (= lambda!212470 lambda!212447))))

(declare-fun bs!1101326 () Bool)

(assert (= bs!1101326 (and b!4709810 b!4709764)))

(assert (=> bs!1101326 (= lambda!212470 lambda!212460)))

(declare-fun bs!1101327 () Bool)

(assert (= bs!1101327 (and b!4709810 d!1498788)))

(assert (=> bs!1101327 (= (= lt!1874019 lt!1874327) (= lambda!212470 lambda!212463))))

(assert (=> bs!1101326 (= (= lt!1874019 lt!1874322) (= lambda!212470 lambda!212461))))

(declare-fun bs!1101328 () Bool)

(assert (= bs!1101328 (and b!4709810 b!4709757)))

(assert (=> bs!1101328 (= lambda!212470 lambda!212452)))

(declare-fun bs!1101329 () Bool)

(assert (= bs!1101329 (and b!4709810 d!1498812)))

(assert (=> bs!1101329 (not (= lambda!212470 lambda!212465))))

(declare-fun bs!1101330 () Bool)

(assert (= bs!1101330 (and b!4709810 d!1498740)))

(assert (=> bs!1101330 (= (= lt!1874019 lt!1874254) (= lambda!212470 lambda!212448))))

(declare-fun bs!1101331 () Bool)

(assert (= bs!1101331 (and b!4709810 b!4709808)))

(assert (=> bs!1101331 (= lambda!212470 lambda!212469)))

(declare-fun bs!1101332 () Bool)

(assert (= bs!1101332 (and b!4709810 b!4709722)))

(assert (=> bs!1101332 (= lambda!212470 lambda!212445)))

(assert (=> bs!1101323 (= lambda!212470 lambda!212453)))

(assert (=> b!4709810 true))

(declare-fun lambda!212471 () Int)

(declare-fun lt!1874366 () ListMap!5149)

(assert (=> bs!1101321 (= (= lt!1874366 lt!1874019) (= lambda!212471 lambda!212446))))

(assert (=> bs!1101322 (= (= lt!1874366 lt!1874306) (= lambda!212471 lambda!212457))))

(assert (=> bs!1101323 (= (= lt!1874366 lt!1874301) (= lambda!212471 lambda!212455))))

(assert (=> bs!1101324 (not (= lambda!212471 lambda!212365))))

(assert (=> bs!1101325 (= (= lt!1874366 lt!1874019) (= lambda!212471 lambda!212459))))

(assert (=> bs!1101321 (= (= lt!1874366 lt!1874249) (= lambda!212471 lambda!212447))))

(assert (=> bs!1101326 (= (= lt!1874366 lt!1874019) (= lambda!212471 lambda!212460))))

(assert (=> bs!1101327 (= (= lt!1874366 lt!1874327) (= lambda!212471 lambda!212463))))

(assert (=> b!4709810 (= (= lt!1874366 lt!1874019) (= lambda!212471 lambda!212470))))

(assert (=> bs!1101326 (= (= lt!1874366 lt!1874322) (= lambda!212471 lambda!212461))))

(assert (=> bs!1101328 (= (= lt!1874366 lt!1874019) (= lambda!212471 lambda!212452))))

(assert (=> bs!1101329 (not (= lambda!212471 lambda!212465))))

(assert (=> bs!1101330 (= (= lt!1874366 lt!1874254) (= lambda!212471 lambda!212448))))

(assert (=> bs!1101331 (= (= lt!1874366 lt!1874019) (= lambda!212471 lambda!212469))))

(assert (=> bs!1101332 (= (= lt!1874366 lt!1874019) (= lambda!212471 lambda!212445))))

(assert (=> bs!1101323 (= (= lt!1874366 lt!1874019) (= lambda!212471 lambda!212453))))

(assert (=> b!4709810 true))

(declare-fun bs!1101333 () Bool)

(declare-fun d!1498822 () Bool)

(assert (= bs!1101333 (and d!1498822 b!4709724)))

(declare-fun lt!1874371 () ListMap!5149)

(declare-fun lambda!212472 () Int)

(assert (=> bs!1101333 (= (= lt!1874371 lt!1874019) (= lambda!212472 lambda!212446))))

(declare-fun bs!1101334 () Bool)

(assert (= bs!1101334 (and d!1498822 d!1498786)))

(assert (=> bs!1101334 (= (= lt!1874371 lt!1874306) (= lambda!212472 lambda!212457))))

(declare-fun bs!1101335 () Bool)

(assert (= bs!1101335 (and d!1498822 b!4709759)))

(assert (=> bs!1101335 (= (= lt!1874371 lt!1874301) (= lambda!212472 lambda!212455))))

(declare-fun bs!1101336 () Bool)

(assert (= bs!1101336 (and d!1498822 d!1498738)))

(assert (=> bs!1101336 (not (= lambda!212472 lambda!212365))))

(declare-fun bs!1101337 () Bool)

(assert (= bs!1101337 (and d!1498822 b!4709762)))

(assert (=> bs!1101337 (= (= lt!1874371 lt!1874019) (= lambda!212472 lambda!212459))))

(assert (=> bs!1101333 (= (= lt!1874371 lt!1874249) (= lambda!212472 lambda!212447))))

(declare-fun bs!1101338 () Bool)

(assert (= bs!1101338 (and d!1498822 b!4709810)))

(assert (=> bs!1101338 (= (= lt!1874371 lt!1874366) (= lambda!212472 lambda!212471))))

(declare-fun bs!1101339 () Bool)

(assert (= bs!1101339 (and d!1498822 b!4709764)))

(assert (=> bs!1101339 (= (= lt!1874371 lt!1874019) (= lambda!212472 lambda!212460))))

(declare-fun bs!1101340 () Bool)

(assert (= bs!1101340 (and d!1498822 d!1498788)))

(assert (=> bs!1101340 (= (= lt!1874371 lt!1874327) (= lambda!212472 lambda!212463))))

(assert (=> bs!1101338 (= (= lt!1874371 lt!1874019) (= lambda!212472 lambda!212470))))

(assert (=> bs!1101339 (= (= lt!1874371 lt!1874322) (= lambda!212472 lambda!212461))))

(declare-fun bs!1101341 () Bool)

(assert (= bs!1101341 (and d!1498822 b!4709757)))

(assert (=> bs!1101341 (= (= lt!1874371 lt!1874019) (= lambda!212472 lambda!212452))))

(declare-fun bs!1101342 () Bool)

(assert (= bs!1101342 (and d!1498822 d!1498812)))

(assert (=> bs!1101342 (not (= lambda!212472 lambda!212465))))

(declare-fun bs!1101343 () Bool)

(assert (= bs!1101343 (and d!1498822 d!1498740)))

(assert (=> bs!1101343 (= (= lt!1874371 lt!1874254) (= lambda!212472 lambda!212448))))

(declare-fun bs!1101344 () Bool)

(assert (= bs!1101344 (and d!1498822 b!4709808)))

(assert (=> bs!1101344 (= (= lt!1874371 lt!1874019) (= lambda!212472 lambda!212469))))

(declare-fun bs!1101345 () Bool)

(assert (= bs!1101345 (and d!1498822 b!4709722)))

(assert (=> bs!1101345 (= (= lt!1874371 lt!1874019) (= lambda!212472 lambda!212445))))

(assert (=> bs!1101335 (= (= lt!1874371 lt!1874019) (= lambda!212472 lambda!212453))))

(assert (=> d!1498822 true))

(declare-fun b!4709806 () Bool)

(declare-fun e!2937599 () Bool)

(declare-fun call!329271 () Bool)

(assert (=> b!4709806 (= e!2937599 call!329271)))

(declare-fun b!4709807 () Bool)

(declare-fun res!1990312 () Bool)

(declare-fun e!2937600 () Bool)

(assert (=> b!4709807 (=> (not res!1990312) (not e!2937600))))

(assert (=> b!4709807 (= res!1990312 (forall!11477 (toList!5785 lt!1874019) lambda!212472))))

(declare-fun bm!329264 () Bool)

(declare-fun c!804692 () Bool)

(assert (=> bm!329264 (= call!329271 (forall!11477 (toList!5785 lt!1874019) (ite c!804692 lambda!212469 lambda!212471)))))

(declare-fun e!2937601 () ListMap!5149)

(assert (=> b!4709808 (= e!2937601 lt!1874019)))

(declare-fun lt!1874358 () Unit!127634)

(declare-fun call!329270 () Unit!127634)

(assert (=> b!4709808 (= lt!1874358 call!329270)))

(assert (=> b!4709808 call!329271))

(declare-fun lt!1874372 () Unit!127634)

(assert (=> b!4709808 (= lt!1874372 lt!1874358)))

(declare-fun call!329269 () Bool)

(assert (=> b!4709808 call!329269))

(declare-fun lt!1874354 () Unit!127634)

(declare-fun Unit!127720 () Unit!127634)

(assert (=> b!4709808 (= lt!1874354 Unit!127720)))

(declare-fun b!4709809 () Bool)

(assert (=> b!4709809 (= e!2937600 (invariantList!1470 (toList!5785 lt!1874371)))))

(declare-fun bm!329265 () Bool)

(assert (=> bm!329265 (= call!329269 (forall!11477 (toList!5785 lt!1874019) (ite c!804692 lambda!212469 lambda!212471)))))

(declare-fun bm!329266 () Bool)

(assert (=> bm!329266 (= call!329270 (lemmaContainsAllItsOwnKeys!758 lt!1874019))))

(assert (=> b!4709810 (= e!2937601 lt!1874366)))

(declare-fun lt!1874365 () ListMap!5149)

(assert (=> b!4709810 (= lt!1874365 (+!2212 lt!1874019 (h!58962 newBucket!218)))))

(assert (=> b!4709810 (= lt!1874366 (addToMapMapFromBucket!1378 (t!360015 newBucket!218) (+!2212 lt!1874019 (h!58962 newBucket!218))))))

(declare-fun lt!1874363 () Unit!127634)

(assert (=> b!4709810 (= lt!1874363 call!329270)))

(assert (=> b!4709810 (forall!11477 (toList!5785 lt!1874019) lambda!212470)))

(declare-fun lt!1874370 () Unit!127634)

(assert (=> b!4709810 (= lt!1874370 lt!1874363)))

(assert (=> b!4709810 (forall!11477 (toList!5785 lt!1874365) lambda!212471)))

(declare-fun lt!1874352 () Unit!127634)

(declare-fun Unit!127724 () Unit!127634)

(assert (=> b!4709810 (= lt!1874352 Unit!127724)))

(assert (=> b!4709810 (forall!11477 (t!360015 newBucket!218) lambda!212471)))

(declare-fun lt!1874355 () Unit!127634)

(declare-fun Unit!127726 () Unit!127634)

(assert (=> b!4709810 (= lt!1874355 Unit!127726)))

(declare-fun lt!1874362 () Unit!127634)

(declare-fun Unit!127727 () Unit!127634)

(assert (=> b!4709810 (= lt!1874362 Unit!127727)))

(declare-fun lt!1874361 () Unit!127634)

(assert (=> b!4709810 (= lt!1874361 (forallContained!3558 (toList!5785 lt!1874365) lambda!212471 (h!58962 newBucket!218)))))

(assert (=> b!4709810 (contains!15962 lt!1874365 (_1!30387 (h!58962 newBucket!218)))))

(declare-fun lt!1874360 () Unit!127634)

(declare-fun Unit!127729 () Unit!127634)

(assert (=> b!4709810 (= lt!1874360 Unit!127729)))

(assert (=> b!4709810 (contains!15962 lt!1874366 (_1!30387 (h!58962 newBucket!218)))))

(declare-fun lt!1874353 () Unit!127634)

(declare-fun Unit!127730 () Unit!127634)

(assert (=> b!4709810 (= lt!1874353 Unit!127730)))

(assert (=> b!4709810 (forall!11477 newBucket!218 lambda!212471)))

(declare-fun lt!1874367 () Unit!127634)

(declare-fun Unit!127731 () Unit!127634)

(assert (=> b!4709810 (= lt!1874367 Unit!127731)))

(assert (=> b!4709810 (forall!11477 (toList!5785 lt!1874365) lambda!212471)))

(declare-fun lt!1874364 () Unit!127634)

(declare-fun Unit!127732 () Unit!127634)

(assert (=> b!4709810 (= lt!1874364 Unit!127732)))

(declare-fun lt!1874359 () Unit!127634)

(declare-fun Unit!127733 () Unit!127634)

(assert (=> b!4709810 (= lt!1874359 Unit!127733)))

(declare-fun lt!1874369 () Unit!127634)

(assert (=> b!4709810 (= lt!1874369 (addForallContainsKeyThenBeforeAdding!757 lt!1874019 lt!1874366 (_1!30387 (h!58962 newBucket!218)) (_2!30387 (h!58962 newBucket!218))))))

(assert (=> b!4709810 call!329269))

(declare-fun lt!1874356 () Unit!127634)

(assert (=> b!4709810 (= lt!1874356 lt!1874369)))

(assert (=> b!4709810 (forall!11477 (toList!5785 lt!1874019) lambda!212471)))

(declare-fun lt!1874357 () Unit!127634)

(declare-fun Unit!127734 () Unit!127634)

(assert (=> b!4709810 (= lt!1874357 Unit!127734)))

(declare-fun res!1990311 () Bool)

(assert (=> b!4709810 (= res!1990311 (forall!11477 newBucket!218 lambda!212471))))

(assert (=> b!4709810 (=> (not res!1990311) (not e!2937599))))

(assert (=> b!4709810 e!2937599))

(declare-fun lt!1874368 () Unit!127634)

(declare-fun Unit!127736 () Unit!127634)

(assert (=> b!4709810 (= lt!1874368 Unit!127736)))

(assert (=> d!1498822 e!2937600))

(declare-fun res!1990313 () Bool)

(assert (=> d!1498822 (=> (not res!1990313) (not e!2937600))))

(assert (=> d!1498822 (= res!1990313 (forall!11477 newBucket!218 lambda!212472))))

(assert (=> d!1498822 (= lt!1874371 e!2937601)))

(assert (=> d!1498822 (= c!804692 ((_ is Nil!52657) newBucket!218))))

(assert (=> d!1498822 (noDuplicateKeys!1948 newBucket!218)))

(assert (=> d!1498822 (= (addToMapMapFromBucket!1378 newBucket!218 lt!1874019) lt!1874371)))

(assert (= (and d!1498822 c!804692) b!4709808))

(assert (= (and d!1498822 (not c!804692)) b!4709810))

(assert (= (and b!4709810 res!1990311) b!4709806))

(assert (= (or b!4709808 b!4709810) bm!329266))

(assert (= (or b!4709808 b!4709810) bm!329265))

(assert (= (or b!4709808 b!4709806) bm!329264))

(assert (= (and d!1498822 res!1990313) b!4709807))

(assert (= (and b!4709807 res!1990312) b!4709809))

(declare-fun m!5634677 () Bool)

(assert (=> d!1498822 m!5634677))

(assert (=> d!1498822 m!5634221))

(declare-fun m!5634679 () Bool)

(assert (=> bm!329265 m!5634679))

(declare-fun m!5634681 () Bool)

(assert (=> b!4709807 m!5634681))

(assert (=> bm!329264 m!5634679))

(assert (=> bm!329266 m!5634457))

(declare-fun m!5634683 () Bool)

(assert (=> b!4709809 m!5634683))

(declare-fun m!5634685 () Bool)

(assert (=> b!4709810 m!5634685))

(declare-fun m!5634687 () Bool)

(assert (=> b!4709810 m!5634687))

(declare-fun m!5634689 () Bool)

(assert (=> b!4709810 m!5634689))

(assert (=> b!4709810 m!5634685))

(declare-fun m!5634691 () Bool)

(assert (=> b!4709810 m!5634691))

(declare-fun m!5634693 () Bool)

(assert (=> b!4709810 m!5634693))

(declare-fun m!5634695 () Bool)

(assert (=> b!4709810 m!5634695))

(declare-fun m!5634697 () Bool)

(assert (=> b!4709810 m!5634697))

(declare-fun m!5634699 () Bool)

(assert (=> b!4709810 m!5634699))

(assert (=> b!4709810 m!5634699))

(declare-fun m!5634701 () Bool)

(assert (=> b!4709810 m!5634701))

(declare-fun m!5634703 () Bool)

(assert (=> b!4709810 m!5634703))

(assert (=> b!4709810 m!5634693))

(declare-fun m!5634705 () Bool)

(assert (=> b!4709810 m!5634705))

(assert (=> b!4709602 d!1498822))

(declare-fun bs!1101346 () Bool)

(declare-fun b!4709813 () Bool)

(assert (= bs!1101346 (and b!4709813 d!1498786)))

(declare-fun lambda!212473 () Int)

(assert (=> bs!1101346 (= (= lt!1874019 lt!1874306) (= lambda!212473 lambda!212457))))

(declare-fun bs!1101347 () Bool)

(assert (= bs!1101347 (and b!4709813 b!4709759)))

(assert (=> bs!1101347 (= (= lt!1874019 lt!1874301) (= lambda!212473 lambda!212455))))

(declare-fun bs!1101348 () Bool)

(assert (= bs!1101348 (and b!4709813 d!1498738)))

(assert (=> bs!1101348 (not (= lambda!212473 lambda!212365))))

(declare-fun bs!1101349 () Bool)

(assert (= bs!1101349 (and b!4709813 b!4709762)))

(assert (=> bs!1101349 (= lambda!212473 lambda!212459)))

(declare-fun bs!1101350 () Bool)

(assert (= bs!1101350 (and b!4709813 b!4709724)))

(assert (=> bs!1101350 (= (= lt!1874019 lt!1874249) (= lambda!212473 lambda!212447))))

(declare-fun bs!1101351 () Bool)

(assert (= bs!1101351 (and b!4709813 b!4709810)))

(assert (=> bs!1101351 (= (= lt!1874019 lt!1874366) (= lambda!212473 lambda!212471))))

(declare-fun bs!1101352 () Bool)

(assert (= bs!1101352 (and b!4709813 d!1498822)))

(assert (=> bs!1101352 (= (= lt!1874019 lt!1874371) (= lambda!212473 lambda!212472))))

(assert (=> bs!1101350 (= lambda!212473 lambda!212446)))

(declare-fun bs!1101353 () Bool)

(assert (= bs!1101353 (and b!4709813 b!4709764)))

(assert (=> bs!1101353 (= lambda!212473 lambda!212460)))

(declare-fun bs!1101354 () Bool)

(assert (= bs!1101354 (and b!4709813 d!1498788)))

(assert (=> bs!1101354 (= (= lt!1874019 lt!1874327) (= lambda!212473 lambda!212463))))

(assert (=> bs!1101351 (= lambda!212473 lambda!212470)))

(assert (=> bs!1101353 (= (= lt!1874019 lt!1874322) (= lambda!212473 lambda!212461))))

(declare-fun bs!1101355 () Bool)

(assert (= bs!1101355 (and b!4709813 b!4709757)))

(assert (=> bs!1101355 (= lambda!212473 lambda!212452)))

(declare-fun bs!1101356 () Bool)

(assert (= bs!1101356 (and b!4709813 d!1498812)))

(assert (=> bs!1101356 (not (= lambda!212473 lambda!212465))))

(declare-fun bs!1101357 () Bool)

(assert (= bs!1101357 (and b!4709813 d!1498740)))

(assert (=> bs!1101357 (= (= lt!1874019 lt!1874254) (= lambda!212473 lambda!212448))))

(declare-fun bs!1101358 () Bool)

(assert (= bs!1101358 (and b!4709813 b!4709808)))

(assert (=> bs!1101358 (= lambda!212473 lambda!212469)))

(declare-fun bs!1101359 () Bool)

(assert (= bs!1101359 (and b!4709813 b!4709722)))

(assert (=> bs!1101359 (= lambda!212473 lambda!212445)))

(assert (=> bs!1101347 (= lambda!212473 lambda!212453)))

(assert (=> b!4709813 true))

(declare-fun bs!1101360 () Bool)

(declare-fun b!4709815 () Bool)

(assert (= bs!1101360 (and b!4709815 d!1498786)))

(declare-fun lambda!212474 () Int)

(assert (=> bs!1101360 (= (= lt!1874019 lt!1874306) (= lambda!212474 lambda!212457))))

(declare-fun bs!1101361 () Bool)

(assert (= bs!1101361 (and b!4709815 b!4709759)))

(assert (=> bs!1101361 (= (= lt!1874019 lt!1874301) (= lambda!212474 lambda!212455))))

(declare-fun bs!1101362 () Bool)

(assert (= bs!1101362 (and b!4709815 d!1498738)))

(assert (=> bs!1101362 (not (= lambda!212474 lambda!212365))))

(declare-fun bs!1101363 () Bool)

(assert (= bs!1101363 (and b!4709815 b!4709813)))

(assert (=> bs!1101363 (= lambda!212474 lambda!212473)))

(declare-fun bs!1101364 () Bool)

(assert (= bs!1101364 (and b!4709815 b!4709762)))

(assert (=> bs!1101364 (= lambda!212474 lambda!212459)))

(declare-fun bs!1101365 () Bool)

(assert (= bs!1101365 (and b!4709815 b!4709724)))

(assert (=> bs!1101365 (= (= lt!1874019 lt!1874249) (= lambda!212474 lambda!212447))))

(declare-fun bs!1101366 () Bool)

(assert (= bs!1101366 (and b!4709815 b!4709810)))

(assert (=> bs!1101366 (= (= lt!1874019 lt!1874366) (= lambda!212474 lambda!212471))))

(declare-fun bs!1101367 () Bool)

(assert (= bs!1101367 (and b!4709815 d!1498822)))

(assert (=> bs!1101367 (= (= lt!1874019 lt!1874371) (= lambda!212474 lambda!212472))))

(assert (=> bs!1101365 (= lambda!212474 lambda!212446)))

(declare-fun bs!1101368 () Bool)

(assert (= bs!1101368 (and b!4709815 b!4709764)))

(assert (=> bs!1101368 (= lambda!212474 lambda!212460)))

(declare-fun bs!1101369 () Bool)

(assert (= bs!1101369 (and b!4709815 d!1498788)))

(assert (=> bs!1101369 (= (= lt!1874019 lt!1874327) (= lambda!212474 lambda!212463))))

(assert (=> bs!1101366 (= lambda!212474 lambda!212470)))

(assert (=> bs!1101368 (= (= lt!1874019 lt!1874322) (= lambda!212474 lambda!212461))))

(declare-fun bs!1101370 () Bool)

(assert (= bs!1101370 (and b!4709815 b!4709757)))

(assert (=> bs!1101370 (= lambda!212474 lambda!212452)))

(declare-fun bs!1101371 () Bool)

(assert (= bs!1101371 (and b!4709815 d!1498812)))

(assert (=> bs!1101371 (not (= lambda!212474 lambda!212465))))

(declare-fun bs!1101372 () Bool)

(assert (= bs!1101372 (and b!4709815 d!1498740)))

(assert (=> bs!1101372 (= (= lt!1874019 lt!1874254) (= lambda!212474 lambda!212448))))

(declare-fun bs!1101373 () Bool)

(assert (= bs!1101373 (and b!4709815 b!4709808)))

(assert (=> bs!1101373 (= lambda!212474 lambda!212469)))

(declare-fun bs!1101374 () Bool)

(assert (= bs!1101374 (and b!4709815 b!4709722)))

(assert (=> bs!1101374 (= lambda!212474 lambda!212445)))

(assert (=> bs!1101361 (= lambda!212474 lambda!212453)))

(assert (=> b!4709815 true))

(declare-fun lambda!212475 () Int)

(declare-fun lt!1874387 () ListMap!5149)

(assert (=> bs!1101360 (= (= lt!1874387 lt!1874306) (= lambda!212475 lambda!212457))))

(assert (=> bs!1101361 (= (= lt!1874387 lt!1874301) (= lambda!212475 lambda!212455))))

(assert (=> b!4709815 (= (= lt!1874387 lt!1874019) (= lambda!212475 lambda!212474))))

(assert (=> bs!1101362 (not (= lambda!212475 lambda!212365))))

(assert (=> bs!1101363 (= (= lt!1874387 lt!1874019) (= lambda!212475 lambda!212473))))

(assert (=> bs!1101364 (= (= lt!1874387 lt!1874019) (= lambda!212475 lambda!212459))))

(assert (=> bs!1101365 (= (= lt!1874387 lt!1874249) (= lambda!212475 lambda!212447))))

(assert (=> bs!1101366 (= (= lt!1874387 lt!1874366) (= lambda!212475 lambda!212471))))

(assert (=> bs!1101367 (= (= lt!1874387 lt!1874371) (= lambda!212475 lambda!212472))))

(assert (=> bs!1101365 (= (= lt!1874387 lt!1874019) (= lambda!212475 lambda!212446))))

(assert (=> bs!1101368 (= (= lt!1874387 lt!1874019) (= lambda!212475 lambda!212460))))

(assert (=> bs!1101369 (= (= lt!1874387 lt!1874327) (= lambda!212475 lambda!212463))))

(assert (=> bs!1101366 (= (= lt!1874387 lt!1874019) (= lambda!212475 lambda!212470))))

(assert (=> bs!1101368 (= (= lt!1874387 lt!1874322) (= lambda!212475 lambda!212461))))

(assert (=> bs!1101370 (= (= lt!1874387 lt!1874019) (= lambda!212475 lambda!212452))))

(assert (=> bs!1101371 (not (= lambda!212475 lambda!212465))))

(assert (=> bs!1101372 (= (= lt!1874387 lt!1874254) (= lambda!212475 lambda!212448))))

(assert (=> bs!1101373 (= (= lt!1874387 lt!1874019) (= lambda!212475 lambda!212469))))

(assert (=> bs!1101374 (= (= lt!1874387 lt!1874019) (= lambda!212475 lambda!212445))))

(assert (=> bs!1101361 (= (= lt!1874387 lt!1874019) (= lambda!212475 lambda!212453))))

(assert (=> b!4709815 true))

(declare-fun bs!1101375 () Bool)

(declare-fun d!1498824 () Bool)

(assert (= bs!1101375 (and d!1498824 b!4709815)))

(declare-fun lt!1874392 () ListMap!5149)

(declare-fun lambda!212476 () Int)

(assert (=> bs!1101375 (= (= lt!1874392 lt!1874387) (= lambda!212476 lambda!212475))))

(declare-fun bs!1101376 () Bool)

(assert (= bs!1101376 (and d!1498824 d!1498786)))

(assert (=> bs!1101376 (= (= lt!1874392 lt!1874306) (= lambda!212476 lambda!212457))))

(declare-fun bs!1101377 () Bool)

(assert (= bs!1101377 (and d!1498824 b!4709759)))

(assert (=> bs!1101377 (= (= lt!1874392 lt!1874301) (= lambda!212476 lambda!212455))))

(assert (=> bs!1101375 (= (= lt!1874392 lt!1874019) (= lambda!212476 lambda!212474))))

(declare-fun bs!1101378 () Bool)

(assert (= bs!1101378 (and d!1498824 d!1498738)))

(assert (=> bs!1101378 (not (= lambda!212476 lambda!212365))))

(declare-fun bs!1101379 () Bool)

(assert (= bs!1101379 (and d!1498824 b!4709813)))

(assert (=> bs!1101379 (= (= lt!1874392 lt!1874019) (= lambda!212476 lambda!212473))))

(declare-fun bs!1101380 () Bool)

(assert (= bs!1101380 (and d!1498824 b!4709762)))

(assert (=> bs!1101380 (= (= lt!1874392 lt!1874019) (= lambda!212476 lambda!212459))))

(declare-fun bs!1101381 () Bool)

(assert (= bs!1101381 (and d!1498824 b!4709724)))

(assert (=> bs!1101381 (= (= lt!1874392 lt!1874249) (= lambda!212476 lambda!212447))))

(declare-fun bs!1101382 () Bool)

(assert (= bs!1101382 (and d!1498824 b!4709810)))

(assert (=> bs!1101382 (= (= lt!1874392 lt!1874366) (= lambda!212476 lambda!212471))))

(declare-fun bs!1101383 () Bool)

(assert (= bs!1101383 (and d!1498824 d!1498822)))

(assert (=> bs!1101383 (= (= lt!1874392 lt!1874371) (= lambda!212476 lambda!212472))))

(assert (=> bs!1101381 (= (= lt!1874392 lt!1874019) (= lambda!212476 lambda!212446))))

(declare-fun bs!1101384 () Bool)

(assert (= bs!1101384 (and d!1498824 b!4709764)))

(assert (=> bs!1101384 (= (= lt!1874392 lt!1874019) (= lambda!212476 lambda!212460))))

(declare-fun bs!1101385 () Bool)

(assert (= bs!1101385 (and d!1498824 d!1498788)))

(assert (=> bs!1101385 (= (= lt!1874392 lt!1874327) (= lambda!212476 lambda!212463))))

(assert (=> bs!1101382 (= (= lt!1874392 lt!1874019) (= lambda!212476 lambda!212470))))

(assert (=> bs!1101384 (= (= lt!1874392 lt!1874322) (= lambda!212476 lambda!212461))))

(declare-fun bs!1101386 () Bool)

(assert (= bs!1101386 (and d!1498824 b!4709757)))

(assert (=> bs!1101386 (= (= lt!1874392 lt!1874019) (= lambda!212476 lambda!212452))))

(declare-fun bs!1101387 () Bool)

(assert (= bs!1101387 (and d!1498824 d!1498812)))

(assert (=> bs!1101387 (not (= lambda!212476 lambda!212465))))

(declare-fun bs!1101388 () Bool)

(assert (= bs!1101388 (and d!1498824 d!1498740)))

(assert (=> bs!1101388 (= (= lt!1874392 lt!1874254) (= lambda!212476 lambda!212448))))

(declare-fun bs!1101389 () Bool)

(assert (= bs!1101389 (and d!1498824 b!4709808)))

(assert (=> bs!1101389 (= (= lt!1874392 lt!1874019) (= lambda!212476 lambda!212469))))

(declare-fun bs!1101390 () Bool)

(assert (= bs!1101390 (and d!1498824 b!4709722)))

(assert (=> bs!1101390 (= (= lt!1874392 lt!1874019) (= lambda!212476 lambda!212445))))

(assert (=> bs!1101377 (= (= lt!1874392 lt!1874019) (= lambda!212476 lambda!212453))))

(assert (=> d!1498824 true))

(declare-fun b!4709811 () Bool)

(declare-fun e!2937602 () Bool)

(declare-fun call!329274 () Bool)

(assert (=> b!4709811 (= e!2937602 call!329274)))

(declare-fun b!4709812 () Bool)

(declare-fun res!1990315 () Bool)

(declare-fun e!2937603 () Bool)

(assert (=> b!4709812 (=> (not res!1990315) (not e!2937603))))

(assert (=> b!4709812 (= res!1990315 (forall!11477 (toList!5785 lt!1874019) lambda!212476))))

(declare-fun c!804693 () Bool)

(declare-fun bm!329267 () Bool)

(assert (=> bm!329267 (= call!329274 (forall!11477 (toList!5785 lt!1874019) (ite c!804693 lambda!212473 lambda!212475)))))

(declare-fun e!2937604 () ListMap!5149)

(assert (=> b!4709813 (= e!2937604 lt!1874019)))

(declare-fun lt!1874379 () Unit!127634)

(declare-fun call!329273 () Unit!127634)

(assert (=> b!4709813 (= lt!1874379 call!329273)))

(assert (=> b!4709813 call!329274))

(declare-fun lt!1874393 () Unit!127634)

(assert (=> b!4709813 (= lt!1874393 lt!1874379)))

(declare-fun call!329272 () Bool)

(assert (=> b!4709813 call!329272))

(declare-fun lt!1874375 () Unit!127634)

(declare-fun Unit!127737 () Unit!127634)

(assert (=> b!4709813 (= lt!1874375 Unit!127737)))

(declare-fun b!4709814 () Bool)

(assert (=> b!4709814 (= e!2937603 (invariantList!1470 (toList!5785 lt!1874392)))))

(declare-fun bm!329268 () Bool)

(assert (=> bm!329268 (= call!329272 (forall!11477 (toList!5785 lt!1874019) (ite c!804693 lambda!212473 lambda!212475)))))

(declare-fun bm!329269 () Bool)

(assert (=> bm!329269 (= call!329273 (lemmaContainsAllItsOwnKeys!758 lt!1874019))))

(assert (=> b!4709815 (= e!2937604 lt!1874387)))

(declare-fun lt!1874386 () ListMap!5149)

(assert (=> b!4709815 (= lt!1874386 (+!2212 lt!1874019 (h!58962 lt!1874018)))))

(assert (=> b!4709815 (= lt!1874387 (addToMapMapFromBucket!1378 (t!360015 lt!1874018) (+!2212 lt!1874019 (h!58962 lt!1874018))))))

(declare-fun lt!1874384 () Unit!127634)

(assert (=> b!4709815 (= lt!1874384 call!329273)))

(assert (=> b!4709815 (forall!11477 (toList!5785 lt!1874019) lambda!212474)))

(declare-fun lt!1874391 () Unit!127634)

(assert (=> b!4709815 (= lt!1874391 lt!1874384)))

(assert (=> b!4709815 (forall!11477 (toList!5785 lt!1874386) lambda!212475)))

(declare-fun lt!1874373 () Unit!127634)

(declare-fun Unit!127738 () Unit!127634)

(assert (=> b!4709815 (= lt!1874373 Unit!127738)))

(assert (=> b!4709815 (forall!11477 (t!360015 lt!1874018) lambda!212475)))

(declare-fun lt!1874376 () Unit!127634)

(declare-fun Unit!127739 () Unit!127634)

(assert (=> b!4709815 (= lt!1874376 Unit!127739)))

(declare-fun lt!1874383 () Unit!127634)

(declare-fun Unit!127740 () Unit!127634)

(assert (=> b!4709815 (= lt!1874383 Unit!127740)))

(declare-fun lt!1874382 () Unit!127634)

(assert (=> b!4709815 (= lt!1874382 (forallContained!3558 (toList!5785 lt!1874386) lambda!212475 (h!58962 lt!1874018)))))

(assert (=> b!4709815 (contains!15962 lt!1874386 (_1!30387 (h!58962 lt!1874018)))))

(declare-fun lt!1874381 () Unit!127634)

(declare-fun Unit!127741 () Unit!127634)

(assert (=> b!4709815 (= lt!1874381 Unit!127741)))

(assert (=> b!4709815 (contains!15962 lt!1874387 (_1!30387 (h!58962 lt!1874018)))))

(declare-fun lt!1874374 () Unit!127634)

(declare-fun Unit!127742 () Unit!127634)

(assert (=> b!4709815 (= lt!1874374 Unit!127742)))

(assert (=> b!4709815 (forall!11477 lt!1874018 lambda!212475)))

(declare-fun lt!1874388 () Unit!127634)

(declare-fun Unit!127743 () Unit!127634)

(assert (=> b!4709815 (= lt!1874388 Unit!127743)))

(assert (=> b!4709815 (forall!11477 (toList!5785 lt!1874386) lambda!212475)))

(declare-fun lt!1874385 () Unit!127634)

(declare-fun Unit!127744 () Unit!127634)

(assert (=> b!4709815 (= lt!1874385 Unit!127744)))

(declare-fun lt!1874380 () Unit!127634)

(declare-fun Unit!127745 () Unit!127634)

(assert (=> b!4709815 (= lt!1874380 Unit!127745)))

(declare-fun lt!1874390 () Unit!127634)

(assert (=> b!4709815 (= lt!1874390 (addForallContainsKeyThenBeforeAdding!757 lt!1874019 lt!1874387 (_1!30387 (h!58962 lt!1874018)) (_2!30387 (h!58962 lt!1874018))))))

(assert (=> b!4709815 call!329272))

(declare-fun lt!1874377 () Unit!127634)

(assert (=> b!4709815 (= lt!1874377 lt!1874390)))

(assert (=> b!4709815 (forall!11477 (toList!5785 lt!1874019) lambda!212475)))

(declare-fun lt!1874378 () Unit!127634)

(declare-fun Unit!127746 () Unit!127634)

(assert (=> b!4709815 (= lt!1874378 Unit!127746)))

(declare-fun res!1990314 () Bool)

(assert (=> b!4709815 (= res!1990314 (forall!11477 lt!1874018 lambda!212475))))

(assert (=> b!4709815 (=> (not res!1990314) (not e!2937602))))

(assert (=> b!4709815 e!2937602))

(declare-fun lt!1874389 () Unit!127634)

(declare-fun Unit!127747 () Unit!127634)

(assert (=> b!4709815 (= lt!1874389 Unit!127747)))

(assert (=> d!1498824 e!2937603))

(declare-fun res!1990316 () Bool)

(assert (=> d!1498824 (=> (not res!1990316) (not e!2937603))))

(assert (=> d!1498824 (= res!1990316 (forall!11477 lt!1874018 lambda!212476))))

(assert (=> d!1498824 (= lt!1874392 e!2937604)))

(assert (=> d!1498824 (= c!804693 ((_ is Nil!52657) lt!1874018))))

(assert (=> d!1498824 (noDuplicateKeys!1948 lt!1874018)))

(assert (=> d!1498824 (= (addToMapMapFromBucket!1378 lt!1874018 lt!1874019) lt!1874392)))

(assert (= (and d!1498824 c!804693) b!4709813))

(assert (= (and d!1498824 (not c!804693)) b!4709815))

(assert (= (and b!4709815 res!1990314) b!4709811))

(assert (= (or b!4709813 b!4709815) bm!329269))

(assert (= (or b!4709813 b!4709815) bm!329268))

(assert (= (or b!4709813 b!4709811) bm!329267))

(assert (= (and d!1498824 res!1990316) b!4709812))

(assert (= (and b!4709812 res!1990315) b!4709814))

(declare-fun m!5634707 () Bool)

(assert (=> d!1498824 m!5634707))

(assert (=> d!1498824 m!5634647))

(declare-fun m!5634709 () Bool)

(assert (=> bm!329268 m!5634709))

(declare-fun m!5634711 () Bool)

(assert (=> b!4709812 m!5634711))

(assert (=> bm!329267 m!5634709))

(assert (=> bm!329269 m!5634457))

(declare-fun m!5634713 () Bool)

(assert (=> b!4709814 m!5634713))

(declare-fun m!5634715 () Bool)

(assert (=> b!4709815 m!5634715))

(declare-fun m!5634717 () Bool)

(assert (=> b!4709815 m!5634717))

(declare-fun m!5634719 () Bool)

(assert (=> b!4709815 m!5634719))

(assert (=> b!4709815 m!5634715))

(declare-fun m!5634721 () Bool)

(assert (=> b!4709815 m!5634721))

(declare-fun m!5634723 () Bool)

(assert (=> b!4709815 m!5634723))

(declare-fun m!5634725 () Bool)

(assert (=> b!4709815 m!5634725))

(declare-fun m!5634727 () Bool)

(assert (=> b!4709815 m!5634727))

(declare-fun m!5634729 () Bool)

(assert (=> b!4709815 m!5634729))

(assert (=> b!4709815 m!5634729))

(declare-fun m!5634731 () Bool)

(assert (=> b!4709815 m!5634731))

(declare-fun m!5634733 () Bool)

(assert (=> b!4709815 m!5634733))

(assert (=> b!4709815 m!5634723))

(declare-fun m!5634735 () Bool)

(assert (=> b!4709815 m!5634735))

(assert (=> b!4709602 d!1498824))

(declare-fun d!1498826 () Bool)

(declare-fun res!1990317 () Bool)

(declare-fun e!2937605 () Bool)

(assert (=> d!1498826 (=> res!1990317 e!2937605)))

(assert (=> d!1498826 (= res!1990317 (not ((_ is Cons!52657) oldBucket!34)))))

(assert (=> d!1498826 (= (noDuplicateKeys!1948 oldBucket!34) e!2937605)))

(declare-fun b!4709816 () Bool)

(declare-fun e!2937606 () Bool)

(assert (=> b!4709816 (= e!2937605 e!2937606)))

(declare-fun res!1990318 () Bool)

(assert (=> b!4709816 (=> (not res!1990318) (not e!2937606))))

(assert (=> b!4709816 (= res!1990318 (not (containsKey!3247 (t!360015 oldBucket!34) (_1!30387 (h!58962 oldBucket!34)))))))

(declare-fun b!4709817 () Bool)

(assert (=> b!4709817 (= e!2937606 (noDuplicateKeys!1948 (t!360015 oldBucket!34)))))

(assert (= (and d!1498826 (not res!1990317)) b!4709816))

(assert (= (and b!4709816 res!1990318) b!4709817))

(declare-fun m!5634737 () Bool)

(assert (=> b!4709816 m!5634737))

(declare-fun m!5634739 () Bool)

(assert (=> b!4709817 m!5634739))

(assert (=> b!4709591 d!1498826))

(declare-fun d!1498828 () Bool)

(declare-fun res!1990323 () Bool)

(declare-fun e!2937611 () Bool)

(assert (=> d!1498828 (=> res!1990323 e!2937611)))

(assert (=> d!1498828 (= res!1990323 (and ((_ is Cons!52657) lt!1874018) (= (_1!30387 (h!58962 lt!1874018)) key!4653)))))

(assert (=> d!1498828 (= (containsKey!3247 lt!1874018 key!4653) e!2937611)))

(declare-fun b!4709822 () Bool)

(declare-fun e!2937612 () Bool)

(assert (=> b!4709822 (= e!2937611 e!2937612)))

(declare-fun res!1990324 () Bool)

(assert (=> b!4709822 (=> (not res!1990324) (not e!2937612))))

(assert (=> b!4709822 (= res!1990324 ((_ is Cons!52657) lt!1874018))))

(declare-fun b!4709823 () Bool)

(assert (=> b!4709823 (= e!2937612 (containsKey!3247 (t!360015 lt!1874018) key!4653))))

(assert (= (and d!1498828 (not res!1990323)) b!4709822))

(assert (= (and b!4709822 res!1990324) b!4709823))

(declare-fun m!5634741 () Bool)

(assert (=> b!4709823 m!5634741))

(assert (=> b!4709592 d!1498828))

(declare-fun d!1498830 () Bool)

(declare-fun res!1990329 () Bool)

(declare-fun e!2937617 () Bool)

(assert (=> d!1498830 (=> res!1990329 e!2937617)))

(assert (=> d!1498830 (= res!1990329 ((_ is Nil!52658) (toList!5786 lm!2023)))))

(assert (=> d!1498830 (= (forall!11475 (toList!5786 lm!2023) lambda!212355) e!2937617)))

(declare-fun b!4709828 () Bool)

(declare-fun e!2937618 () Bool)

(assert (=> b!4709828 (= e!2937617 e!2937618)))

(declare-fun res!1990330 () Bool)

(assert (=> b!4709828 (=> (not res!1990330) (not e!2937618))))

(declare-fun dynLambda!21773 (Int tuple2!54188) Bool)

(assert (=> b!4709828 (= res!1990330 (dynLambda!21773 lambda!212355 (h!58963 (toList!5786 lm!2023))))))

(declare-fun b!4709829 () Bool)

(assert (=> b!4709829 (= e!2937618 (forall!11475 (t!360016 (toList!5786 lm!2023)) lambda!212355))))

(assert (= (and d!1498830 (not res!1990329)) b!4709828))

(assert (= (and b!4709828 res!1990330) b!4709829))

(declare-fun b_lambda!177633 () Bool)

(assert (=> (not b_lambda!177633) (not b!4709828)))

(declare-fun m!5634743 () Bool)

(assert (=> b!4709828 m!5634743))

(declare-fun m!5634745 () Bool)

(assert (=> b!4709829 m!5634745))

(assert (=> start!478452 d!1498830))

(declare-fun d!1498832 () Bool)

(declare-fun isStrictlySorted!709 (List!52782) Bool)

(assert (=> d!1498832 (= (inv!67894 lm!2023) (isStrictlySorted!709 (toList!5786 lm!2023)))))

(declare-fun bs!1101391 () Bool)

(assert (= bs!1101391 d!1498832))

(declare-fun m!5634747 () Bool)

(assert (=> bs!1101391 m!5634747))

(assert (=> start!478452 d!1498832))

(declare-fun b!4709848 () Bool)

(declare-fun e!2937633 () Unit!127634)

(declare-fun Unit!127748 () Unit!127634)

(assert (=> b!4709848 (= e!2937633 Unit!127748)))

(declare-fun b!4709850 () Bool)

(declare-fun e!2937634 () Bool)

(declare-datatypes ((List!52784 0))(
  ( (Nil!52660) (Cons!52660 (h!58967 K!14020) (t!360020 List!52784)) )
))
(declare-fun contains!15966 (List!52784 K!14020) Bool)

(declare-fun keys!18867 (ListMap!5149) List!52784)

(assert (=> b!4709850 (= e!2937634 (contains!15966 (keys!18867 lt!1874020) key!4653))))

(declare-fun b!4709851 () Bool)

(declare-fun e!2937636 () Unit!127634)

(assert (=> b!4709851 (= e!2937636 e!2937633)))

(declare-fun c!804701 () Bool)

(declare-fun call!329277 () Bool)

(assert (=> b!4709851 (= c!804701 call!329277)))

(declare-fun b!4709852 () Bool)

(declare-fun e!2937632 () List!52784)

(assert (=> b!4709852 (= e!2937632 (keys!18867 lt!1874020))))

(declare-fun b!4709853 () Bool)

(declare-fun getKeysList!910 (List!52781) List!52784)

(assert (=> b!4709853 (= e!2937632 (getKeysList!910 (toList!5785 lt!1874020)))))

(declare-fun bm!329272 () Bool)

(assert (=> bm!329272 (= call!329277 (contains!15966 e!2937632 key!4653))))

(declare-fun c!804700 () Bool)

(declare-fun c!804702 () Bool)

(assert (=> bm!329272 (= c!804700 c!804702)))

(declare-fun b!4709854 () Bool)

(declare-fun e!2937631 () Bool)

(assert (=> b!4709854 (= e!2937631 (not (contains!15966 (keys!18867 lt!1874020) key!4653)))))

(declare-fun b!4709855 () Bool)

(assert (=> b!4709855 false))

(declare-fun lt!1874416 () Unit!127634)

(declare-fun lt!1874415 () Unit!127634)

(assert (=> b!4709855 (= lt!1874416 lt!1874415)))

(declare-fun containsKey!3249 (List!52781 K!14020) Bool)

(assert (=> b!4709855 (containsKey!3249 (toList!5785 lt!1874020) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!909 (List!52781 K!14020) Unit!127634)

(assert (=> b!4709855 (= lt!1874415 (lemmaInGetKeysListThenContainsKey!909 (toList!5785 lt!1874020) key!4653))))

(declare-fun Unit!127749 () Unit!127634)

(assert (=> b!4709855 (= e!2937633 Unit!127749)))

(declare-fun b!4709856 () Bool)

(declare-fun lt!1874412 () Unit!127634)

(assert (=> b!4709856 (= e!2937636 lt!1874412)))

(declare-fun lt!1874414 () Unit!127634)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1787 (List!52781 K!14020) Unit!127634)

(assert (=> b!4709856 (= lt!1874414 (lemmaContainsKeyImpliesGetValueByKeyDefined!1787 (toList!5785 lt!1874020) key!4653))))

(declare-fun isDefined!9518 (Option!12263) Bool)

(assert (=> b!4709856 (isDefined!9518 (getValueByKey!1895 (toList!5785 lt!1874020) key!4653))))

(declare-fun lt!1874411 () Unit!127634)

(assert (=> b!4709856 (= lt!1874411 lt!1874414)))

(declare-fun lemmaInListThenGetKeysListContains!905 (List!52781 K!14020) Unit!127634)

(assert (=> b!4709856 (= lt!1874412 (lemmaInListThenGetKeysListContains!905 (toList!5785 lt!1874020) key!4653))))

(assert (=> b!4709856 call!329277))

(declare-fun b!4709849 () Bool)

(declare-fun e!2937635 () Bool)

(assert (=> b!4709849 (= e!2937635 e!2937634)))

(declare-fun res!1990337 () Bool)

(assert (=> b!4709849 (=> (not res!1990337) (not e!2937634))))

(assert (=> b!4709849 (= res!1990337 (isDefined!9518 (getValueByKey!1895 (toList!5785 lt!1874020) key!4653)))))

(declare-fun d!1498834 () Bool)

(assert (=> d!1498834 e!2937635))

(declare-fun res!1990338 () Bool)

(assert (=> d!1498834 (=> res!1990338 e!2937635)))

(assert (=> d!1498834 (= res!1990338 e!2937631)))

(declare-fun res!1990339 () Bool)

(assert (=> d!1498834 (=> (not res!1990339) (not e!2937631))))

(declare-fun lt!1874410 () Bool)

(assert (=> d!1498834 (= res!1990339 (not lt!1874410))))

(declare-fun lt!1874413 () Bool)

(assert (=> d!1498834 (= lt!1874410 lt!1874413)))

(declare-fun lt!1874417 () Unit!127634)

(assert (=> d!1498834 (= lt!1874417 e!2937636)))

(assert (=> d!1498834 (= c!804702 lt!1874413)))

(assert (=> d!1498834 (= lt!1874413 (containsKey!3249 (toList!5785 lt!1874020) key!4653))))

(assert (=> d!1498834 (= (contains!15962 lt!1874020 key!4653) lt!1874410)))

(assert (= (and d!1498834 c!804702) b!4709856))

(assert (= (and d!1498834 (not c!804702)) b!4709851))

(assert (= (and b!4709851 c!804701) b!4709855))

(assert (= (and b!4709851 (not c!804701)) b!4709848))

(assert (= (or b!4709856 b!4709851) bm!329272))

(assert (= (and bm!329272 c!804700) b!4709853))

(assert (= (and bm!329272 (not c!804700)) b!4709852))

(assert (= (and d!1498834 res!1990339) b!4709854))

(assert (= (and d!1498834 (not res!1990338)) b!4709849))

(assert (= (and b!4709849 res!1990337) b!4709850))

(declare-fun m!5634749 () Bool)

(assert (=> b!4709850 m!5634749))

(assert (=> b!4709850 m!5634749))

(declare-fun m!5634751 () Bool)

(assert (=> b!4709850 m!5634751))

(assert (=> b!4709854 m!5634749))

(assert (=> b!4709854 m!5634749))

(assert (=> b!4709854 m!5634751))

(declare-fun m!5634753 () Bool)

(assert (=> d!1498834 m!5634753))

(assert (=> b!4709852 m!5634749))

(assert (=> b!4709855 m!5634753))

(declare-fun m!5634755 () Bool)

(assert (=> b!4709855 m!5634755))

(declare-fun m!5634757 () Bool)

(assert (=> bm!329272 m!5634757))

(declare-fun m!5634759 () Bool)

(assert (=> b!4709849 m!5634759))

(assert (=> b!4709849 m!5634759))

(declare-fun m!5634761 () Bool)

(assert (=> b!4709849 m!5634761))

(declare-fun m!5634763 () Bool)

(assert (=> b!4709853 m!5634763))

(declare-fun m!5634765 () Bool)

(assert (=> b!4709856 m!5634765))

(assert (=> b!4709856 m!5634759))

(assert (=> b!4709856 m!5634759))

(assert (=> b!4709856 m!5634761))

(declare-fun m!5634767 () Bool)

(assert (=> b!4709856 m!5634767))

(assert (=> b!4709603 d!1498834))

(declare-fun bs!1101392 () Bool)

(declare-fun d!1498836 () Bool)

(assert (= bs!1101392 (and d!1498836 d!1498816)))

(declare-fun lambda!212477 () Int)

(assert (=> bs!1101392 (not (= lambda!212477 lambda!212468))))

(declare-fun bs!1101393 () Bool)

(assert (= bs!1101393 (and d!1498836 d!1498778)))

(assert (=> bs!1101393 (= lambda!212477 lambda!212449)))

(declare-fun bs!1101394 () Bool)

(assert (= bs!1101394 (and d!1498836 d!1498734)))

(assert (=> bs!1101394 (= lambda!212477 lambda!212362)))

(declare-fun bs!1101395 () Bool)

(assert (= bs!1101395 (and d!1498836 d!1498724)))

(assert (=> bs!1101395 (= lambda!212477 lambda!212361)))

(declare-fun bs!1101396 () Bool)

(assert (= bs!1101396 (and d!1498836 start!478452)))

(assert (=> bs!1101396 (= lambda!212477 lambda!212355)))

(declare-fun lt!1874418 () ListMap!5149)

(assert (=> d!1498836 (invariantList!1470 (toList!5785 lt!1874418))))

(declare-fun e!2937637 () ListMap!5149)

(assert (=> d!1498836 (= lt!1874418 e!2937637)))

(declare-fun c!804703 () Bool)

(assert (=> d!1498836 (= c!804703 ((_ is Cons!52658) (toList!5786 lm!2023)))))

(assert (=> d!1498836 (forall!11475 (toList!5786 lm!2023) lambda!212477)))

(assert (=> d!1498836 (= (extractMap!1974 (toList!5786 lm!2023)) lt!1874418)))

(declare-fun b!4709857 () Bool)

(assert (=> b!4709857 (= e!2937637 (addToMapMapFromBucket!1378 (_2!30388 (h!58963 (toList!5786 lm!2023))) (extractMap!1974 (t!360016 (toList!5786 lm!2023)))))))

(declare-fun b!4709858 () Bool)

(assert (=> b!4709858 (= e!2937637 (ListMap!5150 Nil!52657))))

(assert (= (and d!1498836 c!804703) b!4709857))

(assert (= (and d!1498836 (not c!804703)) b!4709858))

(declare-fun m!5634769 () Bool)

(assert (=> d!1498836 m!5634769))

(declare-fun m!5634771 () Bool)

(assert (=> d!1498836 m!5634771))

(assert (=> b!4709857 m!5634215))

(assert (=> b!4709857 m!5634215))

(declare-fun m!5634773 () Bool)

(assert (=> b!4709857 m!5634773))

(assert (=> b!4709603 d!1498836))

(declare-fun b!4709863 () Bool)

(declare-fun e!2937640 () Bool)

(declare-fun tp!1347376 () Bool)

(assert (=> b!4709863 (= e!2937640 (and tp_is_empty!31085 tp_is_empty!31087 tp!1347376))))

(assert (=> b!4709600 (= tp!1347361 e!2937640)))

(assert (= (and b!4709600 ((_ is Cons!52657) (t!360015 oldBucket!34))) b!4709863))

(declare-fun b!4709868 () Bool)

(declare-fun e!2937643 () Bool)

(declare-fun tp!1347381 () Bool)

(declare-fun tp!1347382 () Bool)

(assert (=> b!4709868 (= e!2937643 (and tp!1347381 tp!1347382))))

(assert (=> b!4709589 (= tp!1347362 e!2937643)))

(assert (= (and b!4709589 ((_ is Cons!52658) (toList!5786 lm!2023))) b!4709868))

(declare-fun b!4709869 () Bool)

(declare-fun tp!1347383 () Bool)

(declare-fun e!2937644 () Bool)

(assert (=> b!4709869 (= e!2937644 (and tp_is_empty!31085 tp_is_empty!31087 tp!1347383))))

(assert (=> b!4709585 (= tp!1347363 e!2937644)))

(assert (= (and b!4709585 ((_ is Cons!52657) (t!360015 newBucket!218))) b!4709869))

(declare-fun b_lambda!177635 () Bool)

(assert (= b_lambda!177633 (or start!478452 b_lambda!177635)))

(declare-fun bs!1101397 () Bool)

(declare-fun d!1498838 () Bool)

(assert (= bs!1101397 (and d!1498838 start!478452)))

(assert (=> bs!1101397 (= (dynLambda!21773 lambda!212355 (h!58963 (toList!5786 lm!2023))) (noDuplicateKeys!1948 (_2!30388 (h!58963 (toList!5786 lm!2023)))))))

(assert (=> bs!1101397 m!5634451))

(assert (=> b!4709828 d!1498838))

(check-sat tp_is_empty!31087 (not d!1498736) tp_is_empty!31085 (not b!4709790) (not d!1498822) (not d!1498834) (not b!4709791) (not d!1498724) (not b!4709804) (not b!4709857) (not bm!329259) (not d!1498820) (not bm!329263) (not bm!329272) (not b!4709849) (not bm!329262) (not d!1498802) (not b!4709809) (not b!4709855) (not bm!329261) (not b!4709807) (not b!4709829) (not d!1498806) (not bm!329265) (not b!4709853) (not b!4709630) (not d!1498816) (not b!4709815) (not b_lambda!177635) (not b!4709632) (not b!4709759) (not b!4709764) (not d!1498808) (not b!4709817) (not d!1498788) (not bm!329258) (not b!4709785) (not b!4709863) (not d!1498804) (not b!4709823) (not d!1498778) (not bm!329269) (not d!1498740) (not d!1498796) (not b!4709723) (not b!4709721) (not b!4709869) (not b!4709810) (not b!4709814) (not d!1498832) (not bs!1101397) (not b!4709756) (not d!1498734) (not d!1498836) (not d!1498782) (not b!4709761) (not bm!329251) (not bm!329268) (not b!4709746) (not b!4709852) (not b!4709812) (not b!4709854) (not bm!329249) (not bm!329266) (not b!4709856) (not b!4709850) (not b!4709763) (not bm!329260) (not b!4709782) (not bm!329267) (not b!4709783) (not bm!329264) (not bm!329250) (not b!4709868) (not d!1498812) (not d!1498824) (not b!4709816) (not b!4709724) (not d!1498738) (not b!4709784) (not b!4709758) (not d!1498786))
(check-sat)
