; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471710 () Bool)

(assert start!471710)

(declare-fun b!4674051 () Bool)

(declare-fun res!1968163 () Bool)

(declare-fun e!2916646 () Bool)

(assert (=> b!4674051 (=> (not res!1968163) (not e!2916646))))

(declare-datatypes ((K!13498 0))(
  ( (K!13499 (val!19069 Int)) )
))
(declare-datatypes ((V!13744 0))(
  ( (V!13745 (val!19070 Int)) )
))
(declare-datatypes ((tuple2!53350 0))(
  ( (tuple2!53351 (_1!29969 K!13498) (_2!29969 V!13744)) )
))
(declare-datatypes ((List!52249 0))(
  ( (Nil!52125) (Cons!52125 (h!58316 tuple2!53350) (t!359387 List!52249)) )
))
(declare-fun newBucket!218 () List!52249)

(declare-fun noDuplicateKeys!1739 (List!52249) Bool)

(assert (=> b!4674051 (= res!1968163 (noDuplicateKeys!1739 newBucket!218))))

(declare-fun tp_is_empty!30251 () Bool)

(declare-fun tp_is_empty!30249 () Bool)

(declare-fun e!2916642 () Bool)

(declare-fun tp!1344342 () Bool)

(declare-fun b!4674052 () Bool)

(assert (=> b!4674052 (= e!2916642 (and tp_is_empty!30249 tp_is_empty!30251 tp!1344342))))

(declare-fun b!4674053 () Bool)

(declare-fun e!2916645 () Bool)

(declare-datatypes ((ListMap!4731 0))(
  ( (ListMap!4732 (toList!5367 List!52249)) )
))
(declare-fun lt!1834660 () ListMap!4731)

(declare-datatypes ((tuple2!53352 0))(
  ( (tuple2!53353 (_1!29970 (_ BitVec 64)) (_2!29970 List!52249)) )
))
(declare-datatypes ((List!52250 0))(
  ( (Nil!52126) (Cons!52126 (h!58317 tuple2!53352) (t!359388 List!52250)) )
))
(declare-datatypes ((ListLongMap!3897 0))(
  ( (ListLongMap!3898 (toList!5368 List!52250)) )
))
(declare-fun lm!2023 () ListLongMap!3897)

(declare-fun addToMapMapFromBucket!1171 (List!52249 ListMap!4731) ListMap!4731)

(declare-fun extractMap!1765 (List!52250) ListMap!4731)

(assert (=> b!4674053 (= e!2916645 (= lt!1834660 (addToMapMapFromBucket!1171 (_2!29970 (h!58317 (toList!5368 lm!2023))) (extractMap!1765 (t!359388 (toList!5368 lm!2023))))))))

(declare-fun b!4674054 () Bool)

(declare-fun res!1968158 () Bool)

(declare-fun e!2916639 () Bool)

(assert (=> b!4674054 (=> (not res!1968158) (not e!2916639))))

(declare-fun key!4653 () K!13498)

(declare-datatypes ((Hashable!6108 0))(
  ( (HashableExt!6107 (__x!31811 Int)) )
))
(declare-fun hashF!1323 () Hashable!6108)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!3897 (Hashable!6108 K!13498) (_ BitVec 64))

(assert (=> b!4674054 (= res!1968158 (= (hash!3897 hashF!1323 key!4653) hash!405))))

(declare-fun b!4674055 () Bool)

(declare-fun e!2916641 () Bool)

(declare-fun e!2916640 () Bool)

(assert (=> b!4674055 (= e!2916641 e!2916640)))

(declare-fun res!1968167 () Bool)

(assert (=> b!4674055 (=> res!1968167 e!2916640)))

(declare-fun lt!1834659 () List!52249)

(assert (=> b!4674055 (= res!1968167 (not (= lt!1834659 newBucket!218)))))

(declare-fun oldBucket!34 () List!52249)

(declare-fun tail!8316 (List!52249) List!52249)

(assert (=> b!4674055 (= lt!1834659 (tail!8316 oldBucket!34))))

(declare-fun b!4674056 () Bool)

(declare-fun res!1968168 () Bool)

(assert (=> b!4674056 (=> (not res!1968168) (not e!2916639))))

(declare-fun allKeysSameHash!1565 (List!52249 (_ BitVec 64) Hashable!6108) Bool)

(assert (=> b!4674056 (= res!1968168 (allKeysSameHash!1565 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4674057 () Bool)

(declare-fun res!1968162 () Bool)

(assert (=> b!4674057 (=> (not res!1968162) (not e!2916639))))

(assert (=> b!4674057 (= res!1968162 (is-Cons!52126 (toList!5368 lm!2023)))))

(declare-fun b!4674058 () Bool)

(declare-fun res!1968156 () Bool)

(assert (=> b!4674058 (=> (not res!1968156) (not e!2916646))))

(assert (=> b!4674058 (= res!1968156 (noDuplicateKeys!1739 oldBucket!34))))

(declare-fun b!4674059 () Bool)

(declare-fun res!1968165 () Bool)

(assert (=> b!4674059 (=> (not res!1968165) (not e!2916646))))

(assert (=> b!4674059 (= res!1968165 (allKeysSameHash!1565 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4674060 () Bool)

(declare-fun res!1968164 () Bool)

(assert (=> b!4674060 (=> res!1968164 e!2916640)))

(assert (=> b!4674060 (= res!1968164 (not (= (extractMap!1765 (Cons!52126 (tuple2!53353 hash!405 lt!1834659) (t!359388 (toList!5368 lm!2023)))) (extractMap!1765 (Cons!52126 (tuple2!53353 hash!405 newBucket!218) (t!359388 (toList!5368 lm!2023)))))))))

(declare-fun b!4674050 () Bool)

(declare-fun res!1968154 () Bool)

(assert (=> b!4674050 (=> (not res!1968154) (not e!2916639))))

(declare-fun head!9779 (List!52250) tuple2!53352)

(assert (=> b!4674050 (= res!1968154 (= (head!9779 (toList!5368 lm!2023)) (tuple2!53353 hash!405 oldBucket!34)))))

(declare-fun res!1968161 () Bool)

(assert (=> start!471710 (=> (not res!1968161) (not e!2916646))))

(declare-fun lambda!203184 () Int)

(declare-fun forall!11152 (List!52250 Int) Bool)

(assert (=> start!471710 (= res!1968161 (forall!11152 (toList!5368 lm!2023) lambda!203184))))

(assert (=> start!471710 e!2916646))

(declare-fun e!2916644 () Bool)

(declare-fun inv!67373 (ListLongMap!3897) Bool)

(assert (=> start!471710 (and (inv!67373 lm!2023) e!2916644)))

(assert (=> start!471710 tp_is_empty!30249))

(declare-fun e!2916643 () Bool)

(assert (=> start!471710 e!2916643))

(assert (=> start!471710 true))

(assert (=> start!471710 e!2916642))

(declare-fun b!4674061 () Bool)

(declare-fun tp!1344340 () Bool)

(assert (=> b!4674061 (= e!2916643 (and tp_is_empty!30249 tp_is_empty!30251 tp!1344340))))

(declare-fun b!4674062 () Bool)

(assert (=> b!4674062 (= e!2916639 (not e!2916641))))

(declare-fun res!1968155 () Bool)

(assert (=> b!4674062 (=> res!1968155 e!2916641)))

(assert (=> b!4674062 (= res!1968155 (or (not (is-Cons!52125 oldBucket!34)) (not (= (_1!29969 (h!58316 oldBucket!34)) key!4653))))))

(assert (=> b!4674062 e!2916645))

(declare-fun res!1968159 () Bool)

(assert (=> b!4674062 (=> (not res!1968159) (not e!2916645))))

(declare-fun tail!8317 (ListLongMap!3897) ListLongMap!3897)

(assert (=> b!4674062 (= res!1968159 (= (t!359388 (toList!5368 lm!2023)) (toList!5368 (tail!8317 lm!2023))))))

(declare-fun b!4674063 () Bool)

(declare-fun res!1968160 () Bool)

(assert (=> b!4674063 (=> (not res!1968160) (not e!2916639))))

(declare-fun allKeysSameHashInMap!1653 (ListLongMap!3897 Hashable!6108) Bool)

(assert (=> b!4674063 (= res!1968160 (allKeysSameHashInMap!1653 lm!2023 hashF!1323))))

(declare-fun b!4674064 () Bool)

(declare-fun tp!1344341 () Bool)

(assert (=> b!4674064 (= e!2916644 tp!1344341)))

(declare-fun b!4674065 () Bool)

(assert (=> b!4674065 (= e!2916646 e!2916639)))

(declare-fun res!1968157 () Bool)

(assert (=> b!4674065 (=> (not res!1968157) (not e!2916639))))

(declare-fun contains!15291 (ListMap!4731 K!13498) Bool)

(assert (=> b!4674065 (= res!1968157 (contains!15291 lt!1834660 key!4653))))

(assert (=> b!4674065 (= lt!1834660 (extractMap!1765 (toList!5368 lm!2023)))))

(declare-fun b!4674066 () Bool)

(declare-fun res!1968166 () Bool)

(assert (=> b!4674066 (=> (not res!1968166) (not e!2916646))))

(declare-fun removePairForKey!1334 (List!52249 K!13498) List!52249)

(assert (=> b!4674066 (= res!1968166 (= (removePairForKey!1334 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4674067 () Bool)

(assert (=> b!4674067 (= e!2916640 (forall!11152 (t!359388 (toList!5368 lm!2023)) lambda!203184))))

(assert (= (and start!471710 res!1968161) b!4674058))

(assert (= (and b!4674058 res!1968156) b!4674051))

(assert (= (and b!4674051 res!1968163) b!4674066))

(assert (= (and b!4674066 res!1968166) b!4674059))

(assert (= (and b!4674059 res!1968165) b!4674065))

(assert (= (and b!4674065 res!1968157) b!4674054))

(assert (= (and b!4674054 res!1968158) b!4674056))

(assert (= (and b!4674056 res!1968168) b!4674063))

(assert (= (and b!4674063 res!1968160) b!4674050))

(assert (= (and b!4674050 res!1968154) b!4674057))

(assert (= (and b!4674057 res!1968162) b!4674062))

(assert (= (and b!4674062 res!1968159) b!4674053))

(assert (= (and b!4674062 (not res!1968155)) b!4674055))

(assert (= (and b!4674055 (not res!1968167)) b!4674060))

(assert (= (and b!4674060 (not res!1968164)) b!4674067))

(assert (= start!471710 b!4674064))

(assert (= (and start!471710 (is-Cons!52125 oldBucket!34)) b!4674061))

(assert (= (and start!471710 (is-Cons!52125 newBucket!218)) b!4674052))

(declare-fun m!5567487 () Bool)

(assert (=> b!4674067 m!5567487))

(declare-fun m!5567489 () Bool)

(assert (=> b!4674062 m!5567489))

(declare-fun m!5567491 () Bool)

(assert (=> b!4674066 m!5567491))

(declare-fun m!5567493 () Bool)

(assert (=> b!4674065 m!5567493))

(declare-fun m!5567495 () Bool)

(assert (=> b!4674065 m!5567495))

(declare-fun m!5567497 () Bool)

(assert (=> b!4674054 m!5567497))

(declare-fun m!5567499 () Bool)

(assert (=> b!4674063 m!5567499))

(declare-fun m!5567501 () Bool)

(assert (=> b!4674056 m!5567501))

(declare-fun m!5567503 () Bool)

(assert (=> b!4674055 m!5567503))

(declare-fun m!5567505 () Bool)

(assert (=> b!4674058 m!5567505))

(declare-fun m!5567507 () Bool)

(assert (=> start!471710 m!5567507))

(declare-fun m!5567509 () Bool)

(assert (=> start!471710 m!5567509))

(declare-fun m!5567511 () Bool)

(assert (=> b!4674050 m!5567511))

(declare-fun m!5567513 () Bool)

(assert (=> b!4674051 m!5567513))

(declare-fun m!5567515 () Bool)

(assert (=> b!4674059 m!5567515))

(declare-fun m!5567517 () Bool)

(assert (=> b!4674053 m!5567517))

(assert (=> b!4674053 m!5567517))

(declare-fun m!5567519 () Bool)

(assert (=> b!4674053 m!5567519))

(declare-fun m!5567521 () Bool)

(assert (=> b!4674060 m!5567521))

(declare-fun m!5567523 () Bool)

(assert (=> b!4674060 m!5567523))

(push 1)

(assert (not b!4674067))

(assert (not b!4674065))

(assert (not b!4674058))

(assert (not b!4674054))

(assert (not b!4674059))

(assert (not b!4674055))

(assert (not b!4674060))

(assert (not b!4674052))

(assert (not b!4674064))

(assert tp_is_empty!30249)

(assert (not b!4674056))

(assert (not b!4674066))

(assert (not b!4674061))

(assert (not b!4674051))

(assert (not b!4674053))

(assert (not b!4674050))

(assert (not start!471710))

(assert (not b!4674062))

(assert (not b!4674063))

(assert tp_is_empty!30251)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1486136 () Bool)

(assert (=> d!1486136 true))

(assert (=> d!1486136 true))

(declare-fun lambda!203192 () Int)

(declare-fun forall!11154 (List!52249 Int) Bool)

(assert (=> d!1486136 (= (allKeysSameHash!1565 oldBucket!34 hash!405 hashF!1323) (forall!11154 oldBucket!34 lambda!203192))))

(declare-fun bs!1079330 () Bool)

(assert (= bs!1079330 d!1486136))

(declare-fun m!5567563 () Bool)

(assert (=> bs!1079330 m!5567563))

(assert (=> b!4674059 d!1486136))

(declare-fun bs!1079331 () Bool)

(declare-fun d!1486140 () Bool)

(assert (= bs!1079331 (and d!1486140 start!471710)))

(declare-fun lambda!203195 () Int)

(assert (=> bs!1079331 (= lambda!203195 lambda!203184)))

(declare-fun lt!1834669 () ListMap!4731)

(declare-fun invariantList!1355 (List!52249) Bool)

(assert (=> d!1486140 (invariantList!1355 (toList!5367 lt!1834669))))

(declare-fun e!2916673 () ListMap!4731)

(assert (=> d!1486140 (= lt!1834669 e!2916673)))

(declare-fun c!799974 () Bool)

(assert (=> d!1486140 (= c!799974 (is-Cons!52126 (Cons!52126 (tuple2!53353 hash!405 lt!1834659) (t!359388 (toList!5368 lm!2023)))))))

(assert (=> d!1486140 (forall!11152 (Cons!52126 (tuple2!53353 hash!405 lt!1834659) (t!359388 (toList!5368 lm!2023))) lambda!203195)))

(assert (=> d!1486140 (= (extractMap!1765 (Cons!52126 (tuple2!53353 hash!405 lt!1834659) (t!359388 (toList!5368 lm!2023)))) lt!1834669)))

(declare-fun b!4674130 () Bool)

(assert (=> b!4674130 (= e!2916673 (addToMapMapFromBucket!1171 (_2!29970 (h!58317 (Cons!52126 (tuple2!53353 hash!405 lt!1834659) (t!359388 (toList!5368 lm!2023))))) (extractMap!1765 (t!359388 (Cons!52126 (tuple2!53353 hash!405 lt!1834659) (t!359388 (toList!5368 lm!2023)))))))))

(declare-fun b!4674131 () Bool)

(assert (=> b!4674131 (= e!2916673 (ListMap!4732 Nil!52125))))

(assert (= (and d!1486140 c!799974) b!4674130))

(assert (= (and d!1486140 (not c!799974)) b!4674131))

(declare-fun m!5567565 () Bool)

(assert (=> d!1486140 m!5567565))

(declare-fun m!5567567 () Bool)

(assert (=> d!1486140 m!5567567))

(declare-fun m!5567569 () Bool)

(assert (=> b!4674130 m!5567569))

(assert (=> b!4674130 m!5567569))

(declare-fun m!5567571 () Bool)

(assert (=> b!4674130 m!5567571))

(assert (=> b!4674060 d!1486140))

(declare-fun bs!1079332 () Bool)

(declare-fun d!1486142 () Bool)

(assert (= bs!1079332 (and d!1486142 start!471710)))

(declare-fun lambda!203196 () Int)

(assert (=> bs!1079332 (= lambda!203196 lambda!203184)))

(declare-fun bs!1079333 () Bool)

(assert (= bs!1079333 (and d!1486142 d!1486140)))

(assert (=> bs!1079333 (= lambda!203196 lambda!203195)))

(declare-fun lt!1834686 () ListMap!4731)

(assert (=> d!1486142 (invariantList!1355 (toList!5367 lt!1834686))))

(declare-fun e!2916678 () ListMap!4731)

(assert (=> d!1486142 (= lt!1834686 e!2916678)))

(declare-fun c!799979 () Bool)

(assert (=> d!1486142 (= c!799979 (is-Cons!52126 (Cons!52126 (tuple2!53353 hash!405 newBucket!218) (t!359388 (toList!5368 lm!2023)))))))

(assert (=> d!1486142 (forall!11152 (Cons!52126 (tuple2!53353 hash!405 newBucket!218) (t!359388 (toList!5368 lm!2023))) lambda!203196)))

(assert (=> d!1486142 (= (extractMap!1765 (Cons!52126 (tuple2!53353 hash!405 newBucket!218) (t!359388 (toList!5368 lm!2023)))) lt!1834686)))

(declare-fun b!4674143 () Bool)

(assert (=> b!4674143 (= e!2916678 (addToMapMapFromBucket!1171 (_2!29970 (h!58317 (Cons!52126 (tuple2!53353 hash!405 newBucket!218) (t!359388 (toList!5368 lm!2023))))) (extractMap!1765 (t!359388 (Cons!52126 (tuple2!53353 hash!405 newBucket!218) (t!359388 (toList!5368 lm!2023)))))))))

(declare-fun b!4674145 () Bool)

(assert (=> b!4674145 (= e!2916678 (ListMap!4732 Nil!52125))))

(assert (= (and d!1486142 c!799979) b!4674143))

(assert (= (and d!1486142 (not c!799979)) b!4674145))

(declare-fun m!5567573 () Bool)

(assert (=> d!1486142 m!5567573))

(declare-fun m!5567575 () Bool)

(assert (=> d!1486142 m!5567575))

(declare-fun m!5567577 () Bool)

(assert (=> b!4674143 m!5567577))

(assert (=> b!4674143 m!5567577))

(declare-fun m!5567579 () Bool)

(assert (=> b!4674143 m!5567579))

(assert (=> b!4674060 d!1486142))

(declare-fun d!1486144 () Bool)

(declare-fun res!1968224 () Bool)

(declare-fun e!2916691 () Bool)

(assert (=> d!1486144 (=> res!1968224 e!2916691)))

(assert (=> d!1486144 (= res!1968224 (not (is-Cons!52125 oldBucket!34)))))

(assert (=> d!1486144 (= (noDuplicateKeys!1739 oldBucket!34) e!2916691)))

(declare-fun b!4674156 () Bool)

(declare-fun e!2916692 () Bool)

(assert (=> b!4674156 (= e!2916691 e!2916692)))

(declare-fun res!1968225 () Bool)

(assert (=> b!4674156 (=> (not res!1968225) (not e!2916692))))

(declare-fun containsKey!2880 (List!52249 K!13498) Bool)

(assert (=> b!4674156 (= res!1968225 (not (containsKey!2880 (t!359387 oldBucket!34) (_1!29969 (h!58316 oldBucket!34)))))))

(declare-fun b!4674157 () Bool)

(assert (=> b!4674157 (= e!2916692 (noDuplicateKeys!1739 (t!359387 oldBucket!34)))))

(assert (= (and d!1486144 (not res!1968224)) b!4674156))

(assert (= (and b!4674156 res!1968225) b!4674157))

(declare-fun m!5567581 () Bool)

(assert (=> b!4674156 m!5567581))

(declare-fun m!5567583 () Bool)

(assert (=> b!4674157 m!5567583))

(assert (=> b!4674058 d!1486144))

(declare-fun d!1486146 () Bool)

(declare-fun res!1968226 () Bool)

(declare-fun e!2916693 () Bool)

(assert (=> d!1486146 (=> res!1968226 e!2916693)))

(assert (=> d!1486146 (= res!1968226 (not (is-Cons!52125 newBucket!218)))))

(assert (=> d!1486146 (= (noDuplicateKeys!1739 newBucket!218) e!2916693)))

(declare-fun b!4674158 () Bool)

(declare-fun e!2916694 () Bool)

(assert (=> b!4674158 (= e!2916693 e!2916694)))

(declare-fun res!1968227 () Bool)

(assert (=> b!4674158 (=> (not res!1968227) (not e!2916694))))

(assert (=> b!4674158 (= res!1968227 (not (containsKey!2880 (t!359387 newBucket!218) (_1!29969 (h!58316 newBucket!218)))))))

(declare-fun b!4674159 () Bool)

(assert (=> b!4674159 (= e!2916694 (noDuplicateKeys!1739 (t!359387 newBucket!218)))))

(assert (= (and d!1486146 (not res!1968226)) b!4674158))

(assert (= (and b!4674158 res!1968227) b!4674159))

(declare-fun m!5567585 () Bool)

(assert (=> b!4674158 m!5567585))

(declare-fun m!5567587 () Bool)

(assert (=> b!4674159 m!5567587))

(assert (=> b!4674051 d!1486146))

(declare-fun d!1486148 () Bool)

(declare-fun tail!8320 (List!52250) List!52250)

(assert (=> d!1486148 (= (tail!8317 lm!2023) (ListLongMap!3898 (tail!8320 (toList!5368 lm!2023))))))

(declare-fun bs!1079334 () Bool)

(assert (= bs!1079334 d!1486148))

(declare-fun m!5567589 () Bool)

(assert (=> bs!1079334 m!5567589))

(assert (=> b!4674062 d!1486148))

(declare-fun d!1486150 () Bool)

(declare-fun res!1968235 () Bool)

(declare-fun e!2916705 () Bool)

(assert (=> d!1486150 (=> res!1968235 e!2916705)))

(assert (=> d!1486150 (= res!1968235 (is-Nil!52126 (toList!5368 lm!2023)))))

(assert (=> d!1486150 (= (forall!11152 (toList!5368 lm!2023) lambda!203184) e!2916705)))

(declare-fun b!4674173 () Bool)

(declare-fun e!2916706 () Bool)

(assert (=> b!4674173 (= e!2916705 e!2916706)))

(declare-fun res!1968236 () Bool)

(assert (=> b!4674173 (=> (not res!1968236) (not e!2916706))))

(declare-fun dynLambda!21658 (Int tuple2!53352) Bool)

(assert (=> b!4674173 (= res!1968236 (dynLambda!21658 lambda!203184 (h!58317 (toList!5368 lm!2023))))))

(declare-fun b!4674174 () Bool)

(assert (=> b!4674174 (= e!2916706 (forall!11152 (t!359388 (toList!5368 lm!2023)) lambda!203184))))

(assert (= (and d!1486150 (not res!1968235)) b!4674173))

(assert (= (and b!4674173 res!1968236) b!4674174))

(declare-fun b_lambda!176501 () Bool)

(assert (=> (not b_lambda!176501) (not b!4674173)))

(declare-fun m!5567611 () Bool)

(assert (=> b!4674173 m!5567611))

(assert (=> b!4674174 m!5567487))

(assert (=> start!471710 d!1486150))

(declare-fun d!1486154 () Bool)

(declare-fun isStrictlySorted!595 (List!52250) Bool)

(assert (=> d!1486154 (= (inv!67373 lm!2023) (isStrictlySorted!595 (toList!5368 lm!2023)))))

(declare-fun bs!1079335 () Bool)

(assert (= bs!1079335 d!1486154))

(declare-fun m!5567613 () Bool)

(assert (=> bs!1079335 m!5567613))

(assert (=> start!471710 d!1486154))

(declare-fun d!1486156 () Bool)

(assert (=> d!1486156 (= (head!9779 (toList!5368 lm!2023)) (h!58317 (toList!5368 lm!2023)))))

(assert (=> b!4674050 d!1486156))

(declare-fun d!1486158 () Bool)

(declare-fun hash!3899 (Hashable!6108 K!13498) (_ BitVec 64))

(assert (=> d!1486158 (= (hash!3897 hashF!1323 key!4653) (hash!3899 hashF!1323 key!4653))))

(declare-fun bs!1079336 () Bool)

(assert (= bs!1079336 d!1486158))

(declare-fun m!5567615 () Bool)

(assert (=> bs!1079336 m!5567615))

(assert (=> b!4674054 d!1486158))

(declare-fun b!4674211 () Bool)

(assert (=> b!4674211 false))

(declare-datatypes ((Unit!121411 0))(
  ( (Unit!121412) )
))
(declare-fun lt!1834723 () Unit!121411)

(declare-fun lt!1834718 () Unit!121411)

(assert (=> b!4674211 (= lt!1834723 lt!1834718)))

(declare-fun containsKey!2882 (List!52249 K!13498) Bool)

(assert (=> b!4674211 (containsKey!2882 (toList!5367 lt!1834660) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!795 (List!52249 K!13498) Unit!121411)

(assert (=> b!4674211 (= lt!1834718 (lemmaInGetKeysListThenContainsKey!795 (toList!5367 lt!1834660) key!4653))))

(declare-fun e!2916732 () Unit!121411)

(declare-fun Unit!121413 () Unit!121411)

(assert (=> b!4674211 (= e!2916732 Unit!121413)))

(declare-fun d!1486160 () Bool)

(declare-fun e!2916734 () Bool)

(assert (=> d!1486160 e!2916734))

(declare-fun res!1968251 () Bool)

(assert (=> d!1486160 (=> res!1968251 e!2916734)))

(declare-fun e!2916730 () Bool)

(assert (=> d!1486160 (= res!1968251 e!2916730)))

(declare-fun res!1968250 () Bool)

(assert (=> d!1486160 (=> (not res!1968250) (not e!2916730))))

(declare-fun lt!1834719 () Bool)

(assert (=> d!1486160 (= res!1968250 (not lt!1834719))))

(declare-fun lt!1834722 () Bool)

(assert (=> d!1486160 (= lt!1834719 lt!1834722)))

(declare-fun lt!1834720 () Unit!121411)

(declare-fun e!2916733 () Unit!121411)

(assert (=> d!1486160 (= lt!1834720 e!2916733)))

(declare-fun c!799996 () Bool)

(assert (=> d!1486160 (= c!799996 lt!1834722)))

(assert (=> d!1486160 (= lt!1834722 (containsKey!2882 (toList!5367 lt!1834660) key!4653))))

(assert (=> d!1486160 (= (contains!15291 lt!1834660 key!4653) lt!1834719)))

(declare-fun b!4674212 () Bool)

(declare-datatypes ((List!52254 0))(
  ( (Nil!52130) (Cons!52130 (h!58323 K!13498) (t!359392 List!52254)) )
))
(declare-fun e!2916731 () List!52254)

(declare-fun keys!18545 (ListMap!4731) List!52254)

(assert (=> b!4674212 (= e!2916731 (keys!18545 lt!1834660))))

(declare-fun b!4674213 () Bool)

(declare-fun e!2916735 () Bool)

(assert (=> b!4674213 (= e!2916734 e!2916735)))

(declare-fun res!1968249 () Bool)

(assert (=> b!4674213 (=> (not res!1968249) (not e!2916735))))

(declare-datatypes ((Option!11951 0))(
  ( (None!11950) (Some!11950 (v!46313 V!13744)) )
))
(declare-fun isDefined!9206 (Option!11951) Bool)

(declare-fun getValueByKey!1699 (List!52249 K!13498) Option!11951)

(assert (=> b!4674213 (= res!1968249 (isDefined!9206 (getValueByKey!1699 (toList!5367 lt!1834660) key!4653)))))

(declare-fun b!4674214 () Bool)

(declare-fun contains!15294 (List!52254 K!13498) Bool)

(assert (=> b!4674214 (= e!2916735 (contains!15294 (keys!18545 lt!1834660) key!4653))))

(declare-fun b!4674215 () Bool)

(declare-fun lt!1834717 () Unit!121411)

(assert (=> b!4674215 (= e!2916733 lt!1834717)))

(declare-fun lt!1834721 () Unit!121411)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1591 (List!52249 K!13498) Unit!121411)

(assert (=> b!4674215 (= lt!1834721 (lemmaContainsKeyImpliesGetValueByKeyDefined!1591 (toList!5367 lt!1834660) key!4653))))

(assert (=> b!4674215 (isDefined!9206 (getValueByKey!1699 (toList!5367 lt!1834660) key!4653))))

(declare-fun lt!1834716 () Unit!121411)

(assert (=> b!4674215 (= lt!1834716 lt!1834721)))

(declare-fun lemmaInListThenGetKeysListContains!791 (List!52249 K!13498) Unit!121411)

(assert (=> b!4674215 (= lt!1834717 (lemmaInListThenGetKeysListContains!791 (toList!5367 lt!1834660) key!4653))))

(declare-fun call!326633 () Bool)

(assert (=> b!4674215 call!326633))

(declare-fun b!4674216 () Bool)

(declare-fun Unit!121414 () Unit!121411)

(assert (=> b!4674216 (= e!2916732 Unit!121414)))

(declare-fun b!4674217 () Bool)

(declare-fun getKeysList!796 (List!52249) List!52254)

(assert (=> b!4674217 (= e!2916731 (getKeysList!796 (toList!5367 lt!1834660)))))

(declare-fun b!4674218 () Bool)

(assert (=> b!4674218 (= e!2916730 (not (contains!15294 (keys!18545 lt!1834660) key!4653)))))

(declare-fun bm!326628 () Bool)

(assert (=> bm!326628 (= call!326633 (contains!15294 e!2916731 key!4653))))

(declare-fun c!799997 () Bool)

(assert (=> bm!326628 (= c!799997 c!799996)))

(declare-fun b!4674219 () Bool)

(assert (=> b!4674219 (= e!2916733 e!2916732)))

(declare-fun c!799998 () Bool)

(assert (=> b!4674219 (= c!799998 call!326633)))

(assert (= (and d!1486160 c!799996) b!4674215))

(assert (= (and d!1486160 (not c!799996)) b!4674219))

(assert (= (and b!4674219 c!799998) b!4674211))

(assert (= (and b!4674219 (not c!799998)) b!4674216))

(assert (= (or b!4674215 b!4674219) bm!326628))

(assert (= (and bm!326628 c!799997) b!4674217))

(assert (= (and bm!326628 (not c!799997)) b!4674212))

(assert (= (and d!1486160 res!1968250) b!4674218))

(assert (= (and d!1486160 (not res!1968251)) b!4674213))

(assert (= (and b!4674213 res!1968249) b!4674214))

(declare-fun m!5567643 () Bool)

(assert (=> d!1486160 m!5567643))

(declare-fun m!5567645 () Bool)

(assert (=> bm!326628 m!5567645))

(declare-fun m!5567647 () Bool)

(assert (=> b!4674213 m!5567647))

(assert (=> b!4674213 m!5567647))

(declare-fun m!5567649 () Bool)

(assert (=> b!4674213 m!5567649))

(declare-fun m!5567651 () Bool)

(assert (=> b!4674217 m!5567651))

(declare-fun m!5567653 () Bool)

(assert (=> b!4674215 m!5567653))

(assert (=> b!4674215 m!5567647))

(assert (=> b!4674215 m!5567647))

(assert (=> b!4674215 m!5567649))

(declare-fun m!5567655 () Bool)

(assert (=> b!4674215 m!5567655))

(declare-fun m!5567657 () Bool)

(assert (=> b!4674218 m!5567657))

(assert (=> b!4674218 m!5567657))

(declare-fun m!5567659 () Bool)

(assert (=> b!4674218 m!5567659))

(assert (=> b!4674211 m!5567643))

(declare-fun m!5567661 () Bool)

(assert (=> b!4674211 m!5567661))

(assert (=> b!4674214 m!5567657))

(assert (=> b!4674214 m!5567657))

(assert (=> b!4674214 m!5567659))

(assert (=> b!4674212 m!5567657))

(assert (=> b!4674065 d!1486160))

(declare-fun bs!1079349 () Bool)

(declare-fun d!1486178 () Bool)

(assert (= bs!1079349 (and d!1486178 start!471710)))

(declare-fun lambda!203206 () Int)

(assert (=> bs!1079349 (= lambda!203206 lambda!203184)))

(declare-fun bs!1079350 () Bool)

(assert (= bs!1079350 (and d!1486178 d!1486140)))

(assert (=> bs!1079350 (= lambda!203206 lambda!203195)))

(declare-fun bs!1079351 () Bool)

(assert (= bs!1079351 (and d!1486178 d!1486142)))

(assert (=> bs!1079351 (= lambda!203206 lambda!203196)))

(declare-fun lt!1834724 () ListMap!4731)

(assert (=> d!1486178 (invariantList!1355 (toList!5367 lt!1834724))))

(declare-fun e!2916736 () ListMap!4731)

(assert (=> d!1486178 (= lt!1834724 e!2916736)))

(declare-fun c!799999 () Bool)

(assert (=> d!1486178 (= c!799999 (is-Cons!52126 (toList!5368 lm!2023)))))

(assert (=> d!1486178 (forall!11152 (toList!5368 lm!2023) lambda!203206)))

(assert (=> d!1486178 (= (extractMap!1765 (toList!5368 lm!2023)) lt!1834724)))

(declare-fun b!4674220 () Bool)

(assert (=> b!4674220 (= e!2916736 (addToMapMapFromBucket!1171 (_2!29970 (h!58317 (toList!5368 lm!2023))) (extractMap!1765 (t!359388 (toList!5368 lm!2023)))))))

(declare-fun b!4674221 () Bool)

(assert (=> b!4674221 (= e!2916736 (ListMap!4732 Nil!52125))))

(assert (= (and d!1486178 c!799999) b!4674220))

(assert (= (and d!1486178 (not c!799999)) b!4674221))

(declare-fun m!5567663 () Bool)

(assert (=> d!1486178 m!5567663))

(declare-fun m!5567665 () Bool)

(assert (=> d!1486178 m!5567665))

(assert (=> b!4674220 m!5567517))

(assert (=> b!4674220 m!5567517))

(assert (=> b!4674220 m!5567519))

(assert (=> b!4674065 d!1486178))

(declare-fun bs!1079353 () Bool)

(declare-fun d!1486180 () Bool)

(assert (= bs!1079353 (and d!1486180 start!471710)))

(declare-fun lambda!203211 () Int)

(assert (=> bs!1079353 (not (= lambda!203211 lambda!203184))))

(declare-fun bs!1079354 () Bool)

(assert (= bs!1079354 (and d!1486180 d!1486140)))

(assert (=> bs!1079354 (not (= lambda!203211 lambda!203195))))

(declare-fun bs!1079355 () Bool)

(assert (= bs!1079355 (and d!1486180 d!1486142)))

(assert (=> bs!1079355 (not (= lambda!203211 lambda!203196))))

(declare-fun bs!1079356 () Bool)

(assert (= bs!1079356 (and d!1486180 d!1486178)))

(assert (=> bs!1079356 (not (= lambda!203211 lambda!203206))))

(assert (=> d!1486180 true))

(assert (=> d!1486180 (= (allKeysSameHashInMap!1653 lm!2023 hashF!1323) (forall!11152 (toList!5368 lm!2023) lambda!203211))))

(declare-fun bs!1079357 () Bool)

(assert (= bs!1079357 d!1486180))

(declare-fun m!5567673 () Bool)

(assert (=> bs!1079357 m!5567673))

(assert (=> b!4674063 d!1486180))

(declare-fun bs!1079358 () Bool)

(declare-fun b!4674255 () Bool)

(assert (= bs!1079358 (and b!4674255 d!1486136)))

(declare-fun lambda!203268 () Int)

(assert (=> bs!1079358 (not (= lambda!203268 lambda!203192))))

(assert (=> b!4674255 true))

(declare-fun bs!1079359 () Bool)

(declare-fun b!4674257 () Bool)

(assert (= bs!1079359 (and b!4674257 d!1486136)))

(declare-fun lambda!203269 () Int)

(assert (=> bs!1079359 (not (= lambda!203269 lambda!203192))))

(declare-fun bs!1079360 () Bool)

(assert (= bs!1079360 (and b!4674257 b!4674255)))

(assert (=> bs!1079360 (= lambda!203269 lambda!203268)))

(assert (=> b!4674257 true))

(declare-fun lambda!203270 () Int)

(assert (=> bs!1079359 (not (= lambda!203270 lambda!203192))))

(declare-fun lt!1834816 () ListMap!4731)

(assert (=> bs!1079360 (= (= lt!1834816 (extractMap!1765 (t!359388 (toList!5368 lm!2023)))) (= lambda!203270 lambda!203268))))

(assert (=> b!4674257 (= (= lt!1834816 (extractMap!1765 (t!359388 (toList!5368 lm!2023)))) (= lambda!203270 lambda!203269))))

(assert (=> b!4674257 true))

(declare-fun bs!1079361 () Bool)

(declare-fun d!1486186 () Bool)

(assert (= bs!1079361 (and d!1486186 d!1486136)))

(declare-fun lambda!203271 () Int)

(assert (=> bs!1079361 (not (= lambda!203271 lambda!203192))))

(declare-fun bs!1079362 () Bool)

(assert (= bs!1079362 (and d!1486186 b!4674255)))

(declare-fun lt!1834818 () ListMap!4731)

(assert (=> bs!1079362 (= (= lt!1834818 (extractMap!1765 (t!359388 (toList!5368 lm!2023)))) (= lambda!203271 lambda!203268))))

(declare-fun bs!1079363 () Bool)

(assert (= bs!1079363 (and d!1486186 b!4674257)))

(assert (=> bs!1079363 (= (= lt!1834818 (extractMap!1765 (t!359388 (toList!5368 lm!2023)))) (= lambda!203271 lambda!203269))))

(assert (=> bs!1079363 (= (= lt!1834818 lt!1834816) (= lambda!203271 lambda!203270))))

(assert (=> d!1486186 true))

(declare-fun b!4674254 () Bool)

(declare-fun res!1968272 () Bool)

(declare-fun e!2916757 () Bool)

(assert (=> b!4674254 (=> (not res!1968272) (not e!2916757))))

(assert (=> b!4674254 (= res!1968272 (forall!11154 (toList!5367 (extractMap!1765 (t!359388 (toList!5368 lm!2023)))) lambda!203271))))

(declare-fun e!2916756 () ListMap!4731)

(assert (=> b!4674255 (= e!2916756 (extractMap!1765 (t!359388 (toList!5368 lm!2023))))))

(declare-fun lt!1834813 () Unit!121411)

(declare-fun call!326647 () Unit!121411)

(assert (=> b!4674255 (= lt!1834813 call!326647)))

(declare-fun call!326648 () Bool)

(assert (=> b!4674255 call!326648))

(declare-fun lt!1834824 () Unit!121411)

(assert (=> b!4674255 (= lt!1834824 lt!1834813)))

(declare-fun call!326646 () Bool)

(assert (=> b!4674255 call!326646))

(declare-fun lt!1834828 () Unit!121411)

(declare-fun Unit!121415 () Unit!121411)

(assert (=> b!4674255 (= lt!1834828 Unit!121415)))

(declare-fun c!800004 () Bool)

(declare-fun bm!326641 () Bool)

(assert (=> bm!326641 (= call!326648 (forall!11154 (toList!5367 (extractMap!1765 (t!359388 (toList!5368 lm!2023)))) (ite c!800004 lambda!203268 lambda!203270)))))

(declare-fun bm!326642 () Bool)

(assert (=> bm!326642 (= call!326646 (forall!11154 (toList!5367 (extractMap!1765 (t!359388 (toList!5368 lm!2023)))) (ite c!800004 lambda!203268 lambda!203270)))))

(declare-fun bm!326643 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!643 (ListMap!4731) Unit!121411)

(assert (=> bm!326643 (= call!326647 (lemmaContainsAllItsOwnKeys!643 (extractMap!1765 (t!359388 (toList!5368 lm!2023)))))))

(assert (=> d!1486186 e!2916757))

(declare-fun res!1968271 () Bool)

(assert (=> d!1486186 (=> (not res!1968271) (not e!2916757))))

(assert (=> d!1486186 (= res!1968271 (forall!11154 (_2!29970 (h!58317 (toList!5368 lm!2023))) lambda!203271))))

(assert (=> d!1486186 (= lt!1834818 e!2916756)))

(assert (=> d!1486186 (= c!800004 (is-Nil!52125 (_2!29970 (h!58317 (toList!5368 lm!2023)))))))

(assert (=> d!1486186 (noDuplicateKeys!1739 (_2!29970 (h!58317 (toList!5368 lm!2023))))))

(assert (=> d!1486186 (= (addToMapMapFromBucket!1171 (_2!29970 (h!58317 (toList!5368 lm!2023))) (extractMap!1765 (t!359388 (toList!5368 lm!2023)))) lt!1834818)))

(declare-fun b!4674256 () Bool)

(assert (=> b!4674256 (= e!2916757 (invariantList!1355 (toList!5367 lt!1834818)))))

(assert (=> b!4674257 (= e!2916756 lt!1834816)))

(declare-fun lt!1834822 () ListMap!4731)

(declare-fun +!2049 (ListMap!4731 tuple2!53350) ListMap!4731)

(assert (=> b!4674257 (= lt!1834822 (+!2049 (extractMap!1765 (t!359388 (toList!5368 lm!2023))) (h!58316 (_2!29970 (h!58317 (toList!5368 lm!2023))))))))

(assert (=> b!4674257 (= lt!1834816 (addToMapMapFromBucket!1171 (t!359387 (_2!29970 (h!58317 (toList!5368 lm!2023)))) (+!2049 (extractMap!1765 (t!359388 (toList!5368 lm!2023))) (h!58316 (_2!29970 (h!58317 (toList!5368 lm!2023)))))))))

(declare-fun lt!1834809 () Unit!121411)

(assert (=> b!4674257 (= lt!1834809 call!326647)))

(assert (=> b!4674257 (forall!11154 (toList!5367 (extractMap!1765 (t!359388 (toList!5368 lm!2023)))) lambda!203269)))

(declare-fun lt!1834812 () Unit!121411)

(assert (=> b!4674257 (= lt!1834812 lt!1834809)))

(assert (=> b!4674257 (forall!11154 (toList!5367 lt!1834822) lambda!203270)))

(declare-fun lt!1834821 () Unit!121411)

(declare-fun Unit!121416 () Unit!121411)

(assert (=> b!4674257 (= lt!1834821 Unit!121416)))

(assert (=> b!4674257 (forall!11154 (t!359387 (_2!29970 (h!58317 (toList!5368 lm!2023)))) lambda!203270)))

(declare-fun lt!1834827 () Unit!121411)

(declare-fun Unit!121417 () Unit!121411)

(assert (=> b!4674257 (= lt!1834827 Unit!121417)))

(declare-fun lt!1834825 () Unit!121411)

(declare-fun Unit!121418 () Unit!121411)

(assert (=> b!4674257 (= lt!1834825 Unit!121418)))

(declare-fun lt!1834826 () Unit!121411)

(declare-fun forallContained!3327 (List!52249 Int tuple2!53350) Unit!121411)

(assert (=> b!4674257 (= lt!1834826 (forallContained!3327 (toList!5367 lt!1834822) lambda!203270 (h!58316 (_2!29970 (h!58317 (toList!5368 lm!2023))))))))

(assert (=> b!4674257 (contains!15291 lt!1834822 (_1!29969 (h!58316 (_2!29970 (h!58317 (toList!5368 lm!2023))))))))

(declare-fun lt!1834815 () Unit!121411)

(declare-fun Unit!121419 () Unit!121411)

(assert (=> b!4674257 (= lt!1834815 Unit!121419)))

(assert (=> b!4674257 (contains!15291 lt!1834816 (_1!29969 (h!58316 (_2!29970 (h!58317 (toList!5368 lm!2023))))))))

(declare-fun lt!1834820 () Unit!121411)

(declare-fun Unit!121420 () Unit!121411)

(assert (=> b!4674257 (= lt!1834820 Unit!121420)))

(assert (=> b!4674257 (forall!11154 (_2!29970 (h!58317 (toList!5368 lm!2023))) lambda!203270)))

(declare-fun lt!1834823 () Unit!121411)

(declare-fun Unit!121421 () Unit!121411)

(assert (=> b!4674257 (= lt!1834823 Unit!121421)))

(assert (=> b!4674257 (forall!11154 (toList!5367 lt!1834822) lambda!203270)))

(declare-fun lt!1834817 () Unit!121411)

(declare-fun Unit!121422 () Unit!121411)

(assert (=> b!4674257 (= lt!1834817 Unit!121422)))

(declare-fun lt!1834811 () Unit!121411)

(declare-fun Unit!121423 () Unit!121411)

(assert (=> b!4674257 (= lt!1834811 Unit!121423)))

(declare-fun lt!1834829 () Unit!121411)

(declare-fun addForallContainsKeyThenBeforeAdding!642 (ListMap!4731 ListMap!4731 K!13498 V!13744) Unit!121411)

(assert (=> b!4674257 (= lt!1834829 (addForallContainsKeyThenBeforeAdding!642 (extractMap!1765 (t!359388 (toList!5368 lm!2023))) lt!1834816 (_1!29969 (h!58316 (_2!29970 (h!58317 (toList!5368 lm!2023))))) (_2!29969 (h!58316 (_2!29970 (h!58317 (toList!5368 lm!2023)))))))))

(assert (=> b!4674257 call!326646))

(declare-fun lt!1834819 () Unit!121411)

(assert (=> b!4674257 (= lt!1834819 lt!1834829)))

(assert (=> b!4674257 (forall!11154 (toList!5367 (extractMap!1765 (t!359388 (toList!5368 lm!2023)))) lambda!203270)))

(declare-fun lt!1834814 () Unit!121411)

(declare-fun Unit!121424 () Unit!121411)

(assert (=> b!4674257 (= lt!1834814 Unit!121424)))

(declare-fun res!1968270 () Bool)

(assert (=> b!4674257 (= res!1968270 (forall!11154 (_2!29970 (h!58317 (toList!5368 lm!2023))) lambda!203270))))

(declare-fun e!2916755 () Bool)

(assert (=> b!4674257 (=> (not res!1968270) (not e!2916755))))

(assert (=> b!4674257 e!2916755))

(declare-fun lt!1834810 () Unit!121411)

(declare-fun Unit!121425 () Unit!121411)

(assert (=> b!4674257 (= lt!1834810 Unit!121425)))

(declare-fun b!4674258 () Bool)

(assert (=> b!4674258 (= e!2916755 call!326648)))

(assert (= (and d!1486186 c!800004) b!4674255))

(assert (= (and d!1486186 (not c!800004)) b!4674257))

(assert (= (and b!4674257 res!1968270) b!4674258))

(assert (= (or b!4674255 b!4674257) bm!326643))

(assert (= (or b!4674255 b!4674257) bm!326642))

(assert (= (or b!4674255 b!4674258) bm!326641))

(assert (= (and d!1486186 res!1968271) b!4674254))

(assert (= (and b!4674254 res!1968272) b!4674256))

(declare-fun m!5567675 () Bool)

(assert (=> d!1486186 m!5567675))

(declare-fun m!5567677 () Bool)

(assert (=> d!1486186 m!5567677))

(declare-fun m!5567679 () Bool)

(assert (=> b!4674254 m!5567679))

(declare-fun m!5567681 () Bool)

(assert (=> bm!326641 m!5567681))

(declare-fun m!5567683 () Bool)

(assert (=> b!4674256 m!5567683))

(assert (=> bm!326643 m!5567517))

(declare-fun m!5567685 () Bool)

(assert (=> bm!326643 m!5567685))

(assert (=> bm!326642 m!5567681))

(declare-fun m!5567687 () Bool)

(assert (=> b!4674257 m!5567687))

(declare-fun m!5567689 () Bool)

(assert (=> b!4674257 m!5567689))

(declare-fun m!5567691 () Bool)

(assert (=> b!4674257 m!5567691))

(assert (=> b!4674257 m!5567691))

(declare-fun m!5567693 () Bool)

(assert (=> b!4674257 m!5567693))

(declare-fun m!5567695 () Bool)

(assert (=> b!4674257 m!5567695))

(declare-fun m!5567697 () Bool)

(assert (=> b!4674257 m!5567697))

(assert (=> b!4674257 m!5567693))

(assert (=> b!4674257 m!5567517))

(declare-fun m!5567699 () Bool)

(assert (=> b!4674257 m!5567699))

(declare-fun m!5567701 () Bool)

(assert (=> b!4674257 m!5567701))

(declare-fun m!5567703 () Bool)

(assert (=> b!4674257 m!5567703))

(assert (=> b!4674257 m!5567699))

(declare-fun m!5567705 () Bool)

(assert (=> b!4674257 m!5567705))

(assert (=> b!4674257 m!5567517))

(declare-fun m!5567707 () Bool)

(assert (=> b!4674257 m!5567707))

(assert (=> b!4674053 d!1486186))

(declare-fun bs!1079364 () Bool)

(declare-fun d!1486188 () Bool)

(assert (= bs!1079364 (and d!1486188 start!471710)))

(declare-fun lambda!203273 () Int)

(assert (=> bs!1079364 (= lambda!203273 lambda!203184)))

(declare-fun bs!1079365 () Bool)

(assert (= bs!1079365 (and d!1486188 d!1486140)))

(assert (=> bs!1079365 (= lambda!203273 lambda!203195)))

(declare-fun bs!1079367 () Bool)

(assert (= bs!1079367 (and d!1486188 d!1486180)))

(assert (=> bs!1079367 (not (= lambda!203273 lambda!203211))))

(declare-fun bs!1079368 () Bool)

(assert (= bs!1079368 (and d!1486188 d!1486142)))

(assert (=> bs!1079368 (= lambda!203273 lambda!203196)))

(declare-fun bs!1079369 () Bool)

(assert (= bs!1079369 (and d!1486188 d!1486178)))

(assert (=> bs!1079369 (= lambda!203273 lambda!203206)))

(declare-fun lt!1834851 () ListMap!4731)

(assert (=> d!1486188 (invariantList!1355 (toList!5367 lt!1834851))))

(declare-fun e!2916761 () ListMap!4731)

(assert (=> d!1486188 (= lt!1834851 e!2916761)))

(declare-fun c!800006 () Bool)

(assert (=> d!1486188 (= c!800006 (is-Cons!52126 (t!359388 (toList!5368 lm!2023))))))

(assert (=> d!1486188 (forall!11152 (t!359388 (toList!5368 lm!2023)) lambda!203273)))

(assert (=> d!1486188 (= (extractMap!1765 (t!359388 (toList!5368 lm!2023))) lt!1834851)))

(declare-fun b!4674266 () Bool)

(assert (=> b!4674266 (= e!2916761 (addToMapMapFromBucket!1171 (_2!29970 (h!58317 (t!359388 (toList!5368 lm!2023)))) (extractMap!1765 (t!359388 (t!359388 (toList!5368 lm!2023))))))))

(declare-fun b!4674267 () Bool)

(assert (=> b!4674267 (= e!2916761 (ListMap!4732 Nil!52125))))

(assert (= (and d!1486188 c!800006) b!4674266))

(assert (= (and d!1486188 (not c!800006)) b!4674267))

(declare-fun m!5567709 () Bool)

(assert (=> d!1486188 m!5567709))

(declare-fun m!5567711 () Bool)

(assert (=> d!1486188 m!5567711))

(declare-fun m!5567713 () Bool)

(assert (=> b!4674266 m!5567713))

(assert (=> b!4674266 m!5567713))

(declare-fun m!5567715 () Bool)

(assert (=> b!4674266 m!5567715))

(assert (=> b!4674053 d!1486188))

(declare-fun d!1486190 () Bool)

(declare-fun res!1968276 () Bool)

(declare-fun e!2916762 () Bool)

(assert (=> d!1486190 (=> res!1968276 e!2916762)))

(assert (=> d!1486190 (= res!1968276 (is-Nil!52126 (t!359388 (toList!5368 lm!2023))))))

(assert (=> d!1486190 (= (forall!11152 (t!359388 (toList!5368 lm!2023)) lambda!203184) e!2916762)))

(declare-fun b!4674270 () Bool)

(declare-fun e!2916763 () Bool)

(assert (=> b!4674270 (= e!2916762 e!2916763)))

(declare-fun res!1968277 () Bool)

(assert (=> b!4674270 (=> (not res!1968277) (not e!2916763))))

(assert (=> b!4674270 (= res!1968277 (dynLambda!21658 lambda!203184 (h!58317 (t!359388 (toList!5368 lm!2023)))))))

(declare-fun b!4674271 () Bool)

(assert (=> b!4674271 (= e!2916763 (forall!11152 (t!359388 (t!359388 (toList!5368 lm!2023))) lambda!203184))))

(assert (= (and d!1486190 (not res!1968276)) b!4674270))

(assert (= (and b!4674270 res!1968277) b!4674271))

(declare-fun b_lambda!176505 () Bool)

(assert (=> (not b_lambda!176505) (not b!4674270)))

(declare-fun m!5567717 () Bool)

(assert (=> b!4674270 m!5567717))

(declare-fun m!5567719 () Bool)

(assert (=> b!4674271 m!5567719))

(assert (=> b!4674067 d!1486190))

(declare-fun d!1486192 () Bool)

(assert (=> d!1486192 (= (tail!8316 oldBucket!34) (t!359387 oldBucket!34))))

(assert (=> b!4674055 d!1486192))

(declare-fun b!4674283 () Bool)

(declare-fun e!2916769 () List!52249)

(declare-fun e!2916770 () List!52249)

(assert (=> b!4674283 (= e!2916769 e!2916770)))

(declare-fun c!800013 () Bool)

(assert (=> b!4674283 (= c!800013 (is-Cons!52125 oldBucket!34))))

(declare-fun b!4674284 () Bool)

(assert (=> b!4674284 (= e!2916770 (Cons!52125 (h!58316 oldBucket!34) (removePairForKey!1334 (t!359387 oldBucket!34) key!4653)))))

(declare-fun d!1486194 () Bool)

(declare-fun lt!1834855 () List!52249)

(assert (=> d!1486194 (not (containsKey!2880 lt!1834855 key!4653))))

(assert (=> d!1486194 (= lt!1834855 e!2916769)))

(declare-fun c!800012 () Bool)

(assert (=> d!1486194 (= c!800012 (and (is-Cons!52125 oldBucket!34) (= (_1!29969 (h!58316 oldBucket!34)) key!4653)))))

(assert (=> d!1486194 (noDuplicateKeys!1739 oldBucket!34)))

(assert (=> d!1486194 (= (removePairForKey!1334 oldBucket!34 key!4653) lt!1834855)))

(declare-fun b!4674285 () Bool)

(assert (=> b!4674285 (= e!2916770 Nil!52125)))

(declare-fun b!4674282 () Bool)

(assert (=> b!4674282 (= e!2916769 (t!359387 oldBucket!34))))

(assert (= (and d!1486194 c!800012) b!4674282))

(assert (= (and d!1486194 (not c!800012)) b!4674283))

(assert (= (and b!4674283 c!800013) b!4674284))

(assert (= (and b!4674283 (not c!800013)) b!4674285))

(declare-fun m!5567759 () Bool)

(assert (=> b!4674284 m!5567759))

(declare-fun m!5567763 () Bool)

(assert (=> d!1486194 m!5567763))

(assert (=> d!1486194 m!5567505))

(assert (=> b!4674066 d!1486194))

(declare-fun bs!1079380 () Bool)

(declare-fun d!1486198 () Bool)

(assert (= bs!1079380 (and d!1486198 d!1486136)))

(declare-fun lambda!203278 () Int)

(assert (=> bs!1079380 (= lambda!203278 lambda!203192)))

(declare-fun bs!1079382 () Bool)

(assert (= bs!1079382 (and d!1486198 d!1486186)))

(assert (=> bs!1079382 (not (= lambda!203278 lambda!203271))))

(declare-fun bs!1079384 () Bool)

(assert (= bs!1079384 (and d!1486198 b!4674257)))

(assert (=> bs!1079384 (not (= lambda!203278 lambda!203269))))

(assert (=> bs!1079384 (not (= lambda!203278 lambda!203270))))

(declare-fun bs!1079387 () Bool)

(assert (= bs!1079387 (and d!1486198 b!4674255)))

(assert (=> bs!1079387 (not (= lambda!203278 lambda!203268))))

(assert (=> d!1486198 true))

(assert (=> d!1486198 true))

(assert (=> d!1486198 (= (allKeysSameHash!1565 newBucket!218 hash!405 hashF!1323) (forall!11154 newBucket!218 lambda!203278))))

(declare-fun bs!1079389 () Bool)

(assert (= bs!1079389 d!1486198))

(declare-fun m!5567771 () Bool)

(assert (=> bs!1079389 m!5567771))

(assert (=> b!4674056 d!1486198))

(declare-fun b!4674290 () Bool)

(declare-fun e!2916773 () Bool)

(declare-fun tp!1344356 () Bool)

(declare-fun tp!1344357 () Bool)

(assert (=> b!4674290 (= e!2916773 (and tp!1344356 tp!1344357))))

(assert (=> b!4674064 (= tp!1344341 e!2916773)))

(assert (= (and b!4674064 (is-Cons!52126 (toList!5368 lm!2023))) b!4674290))

(declare-fun e!2916776 () Bool)

(declare-fun tp!1344360 () Bool)

(declare-fun b!4674295 () Bool)

(assert (=> b!4674295 (= e!2916776 (and tp_is_empty!30249 tp_is_empty!30251 tp!1344360))))

(assert (=> b!4674052 (= tp!1344342 e!2916776)))

(assert (= (and b!4674052 (is-Cons!52125 (t!359387 newBucket!218))) b!4674295))

(declare-fun b!4674296 () Bool)

(declare-fun e!2916777 () Bool)

(declare-fun tp!1344361 () Bool)

(assert (=> b!4674296 (= e!2916777 (and tp_is_empty!30249 tp_is_empty!30251 tp!1344361))))

(assert (=> b!4674061 (= tp!1344340 e!2916777)))

(assert (= (and b!4674061 (is-Cons!52125 (t!359387 oldBucket!34))) b!4674296))

(declare-fun b_lambda!176507 () Bool)

(assert (= b_lambda!176505 (or start!471710 b_lambda!176507)))

(declare-fun bs!1079390 () Bool)

(declare-fun d!1486204 () Bool)

(assert (= bs!1079390 (and d!1486204 start!471710)))

(assert (=> bs!1079390 (= (dynLambda!21658 lambda!203184 (h!58317 (t!359388 (toList!5368 lm!2023)))) (noDuplicateKeys!1739 (_2!29970 (h!58317 (t!359388 (toList!5368 lm!2023))))))))

(declare-fun m!5567773 () Bool)

(assert (=> bs!1079390 m!5567773))

(assert (=> b!4674270 d!1486204))

(declare-fun b_lambda!176509 () Bool)

(assert (= b_lambda!176501 (or start!471710 b_lambda!176509)))

(declare-fun bs!1079391 () Bool)

(declare-fun d!1486206 () Bool)

(assert (= bs!1079391 (and d!1486206 start!471710)))

(assert (=> bs!1079391 (= (dynLambda!21658 lambda!203184 (h!58317 (toList!5368 lm!2023))) (noDuplicateKeys!1739 (_2!29970 (h!58317 (toList!5368 lm!2023)))))))

(assert (=> bs!1079391 m!5567677))

(assert (=> b!4674173 d!1486206))

(push 1)

(assert (not b!4674130))

(assert (not b!4674174))

(assert (not b_lambda!176507))

(assert (not b!4674159))

(assert (not b!4674220))

(assert (not b!4674256))

(assert (not d!1486140))

(assert (not b!4674218))

(assert (not b!4674290))

(assert (not d!1486188))

(assert (not b!4674212))

(assert (not d!1486154))

(assert (not d!1486194))

(assert (not b!4674143))

(assert (not b!4674214))

(assert (not d!1486160))

(assert (not b!4674211))

(assert (not d!1486158))

(assert (not b!4674158))

(assert (not b!4674295))

(assert (not bm!326641))

(assert (not bm!326643))

(assert (not d!1486178))

(assert (not b!4674213))

(assert tp_is_empty!30251)

(assert (not b!4674254))

(assert (not d!1486148))

(assert (not b!4674217))

(assert (not bs!1079391))

(assert (not b!4674257))

(assert (not b!4674157))

(assert (not bs!1079390))

(assert (not d!1486142))

(assert (not bm!326628))

(assert (not b!4674284))

(assert tp_is_empty!30249)

(assert (not b!4674266))

(assert (not d!1486186))

(assert (not b!4674215))

(assert (not b_lambda!176509))

(assert (not b!4674156))

(assert (not d!1486136))

(assert (not bm!326642))

(assert (not d!1486180))

(assert (not b!4674271))

(assert (not b!4674296))

(assert (not d!1486198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

