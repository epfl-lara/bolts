; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471770 () Bool)

(assert start!471770)

(declare-fun b!4674466 () Bool)

(declare-fun res!1968413 () Bool)

(declare-fun e!2916865 () Bool)

(assert (=> b!4674466 (=> (not res!1968413) (not e!2916865))))

(declare-datatypes ((K!13508 0))(
  ( (K!13509 (val!19077 Int)) )
))
(declare-datatypes ((V!13754 0))(
  ( (V!13755 (val!19078 Int)) )
))
(declare-datatypes ((tuple2!53366 0))(
  ( (tuple2!53367 (_1!29977 K!13508) (_2!29977 V!13754)) )
))
(declare-datatypes ((List!52259 0))(
  ( (Nil!52135) (Cons!52135 (h!58328 tuple2!53366) (t!359397 List!52259)) )
))
(declare-datatypes ((tuple2!53368 0))(
  ( (tuple2!53369 (_1!29978 (_ BitVec 64)) (_2!29978 List!52259)) )
))
(declare-datatypes ((List!52260 0))(
  ( (Nil!52136) (Cons!52136 (h!58329 tuple2!53368) (t!359398 List!52260)) )
))
(declare-datatypes ((ListLongMap!3905 0))(
  ( (ListLongMap!3906 (toList!5375 List!52260)) )
))
(declare-fun lm!2023 () ListLongMap!3905)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun oldBucket!34 () List!52259)

(declare-fun head!9783 (List!52260) tuple2!53368)

(assert (=> b!4674466 (= res!1968413 (= (head!9783 (toList!5375 lm!2023)) (tuple2!53369 hash!405 oldBucket!34)))))

(declare-fun b!4674467 () Bool)

(declare-fun res!1968406 () Bool)

(declare-fun e!2916859 () Bool)

(assert (=> b!4674467 (=> (not res!1968406) (not e!2916859))))

(declare-fun newBucket!218 () List!52259)

(declare-fun noDuplicateKeys!1743 (List!52259) Bool)

(assert (=> b!4674467 (= res!1968406 (noDuplicateKeys!1743 newBucket!218))))

(declare-fun b!4674468 () Bool)

(assert (=> b!4674468 (= e!2916859 e!2916865)))

(declare-fun res!1968411 () Bool)

(assert (=> b!4674468 (=> (not res!1968411) (not e!2916865))))

(declare-datatypes ((ListMap!4739 0))(
  ( (ListMap!4740 (toList!5376 List!52259)) )
))
(declare-fun lt!1834879 () ListMap!4739)

(declare-fun key!4653 () K!13508)

(declare-fun contains!15297 (ListMap!4739 K!13508) Bool)

(assert (=> b!4674468 (= res!1968411 (contains!15297 lt!1834879 key!4653))))

(declare-fun extractMap!1769 (List!52260) ListMap!4739)

(assert (=> b!4674468 (= lt!1834879 (extractMap!1769 (toList!5375 lm!2023)))))

(declare-fun res!1968404 () Bool)

(assert (=> start!471770 (=> (not res!1968404) (not e!2916859))))

(declare-fun lambda!203288 () Int)

(declare-fun forall!11158 (List!52260 Int) Bool)

(assert (=> start!471770 (= res!1968404 (forall!11158 (toList!5375 lm!2023) lambda!203288))))

(assert (=> start!471770 e!2916859))

(declare-fun e!2916866 () Bool)

(declare-fun inv!67383 (ListLongMap!3905) Bool)

(assert (=> start!471770 (and (inv!67383 lm!2023) e!2916866)))

(declare-fun tp_is_empty!30265 () Bool)

(assert (=> start!471770 tp_is_empty!30265))

(declare-fun e!2916862 () Bool)

(assert (=> start!471770 e!2916862))

(assert (=> start!471770 true))

(declare-fun e!2916863 () Bool)

(assert (=> start!471770 e!2916863))

(declare-fun b!4674469 () Bool)

(declare-fun e!2916864 () Bool)

(declare-fun addToMapMapFromBucket!1175 (List!52259 ListMap!4739) ListMap!4739)

(assert (=> b!4674469 (= e!2916864 (= lt!1834879 (addToMapMapFromBucket!1175 (_2!29978 (h!58329 (toList!5375 lm!2023))) (extractMap!1769 (t!359398 (toList!5375 lm!2023))))))))

(declare-fun b!4674470 () Bool)

(declare-fun tp!1344397 () Bool)

(assert (=> b!4674470 (= e!2916866 tp!1344397)))

(declare-fun b!4674471 () Bool)

(declare-fun res!1968401 () Bool)

(assert (=> b!4674471 (=> (not res!1968401) (not e!2916859))))

(declare-fun removePairForKey!1338 (List!52259 K!13508) List!52259)

(assert (=> b!4674471 (= res!1968401 (= (removePairForKey!1338 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4674472 () Bool)

(declare-fun res!1968409 () Bool)

(assert (=> b!4674472 (=> (not res!1968409) (not e!2916865))))

(declare-datatypes ((Hashable!6112 0))(
  ( (HashableExt!6111 (__x!31815 Int)) )
))
(declare-fun hashF!1323 () Hashable!6112)

(declare-fun hash!3903 (Hashable!6112 K!13508) (_ BitVec 64))

(assert (=> b!4674472 (= res!1968409 (= (hash!3903 hashF!1323 key!4653) hash!405))))

(declare-fun b!4674473 () Bool)

(declare-fun tp_is_empty!30267 () Bool)

(declare-fun tp!1344396 () Bool)

(assert (=> b!4674473 (= e!2916862 (and tp_is_empty!30265 tp_is_empty!30267 tp!1344396))))

(declare-fun b!4674474 () Bool)

(declare-fun e!2916860 () Bool)

(declare-fun e!2916861 () Bool)

(assert (=> b!4674474 (= e!2916860 e!2916861)))

(declare-fun res!1968412 () Bool)

(assert (=> b!4674474 (=> res!1968412 e!2916861)))

(declare-fun lt!1834881 () List!52259)

(assert (=> b!4674474 (= res!1968412 (not (= lt!1834881 newBucket!218)))))

(declare-fun tail!8326 (List!52259) List!52259)

(assert (=> b!4674474 (= lt!1834881 (tail!8326 oldBucket!34))))

(declare-fun b!4674475 () Bool)

(declare-fun res!1968407 () Bool)

(assert (=> b!4674475 (=> (not res!1968407) (not e!2916859))))

(assert (=> b!4674475 (= res!1968407 (noDuplicateKeys!1743 oldBucket!34))))

(declare-fun b!4674476 () Bool)

(assert (=> b!4674476 (= e!2916861 true)))

(declare-fun lt!1834882 () ListMap!4739)

(assert (=> b!4674476 (= lt!1834882 (extractMap!1769 (Cons!52136 (tuple2!53369 hash!405 newBucket!218) (t!359398 (toList!5375 lm!2023)))))))

(declare-fun lt!1834880 () ListMap!4739)

(assert (=> b!4674476 (= lt!1834880 (extractMap!1769 (Cons!52136 (tuple2!53369 hash!405 lt!1834881) (t!359398 (toList!5375 lm!2023)))))))

(declare-fun b!4674477 () Bool)

(declare-fun res!1968403 () Bool)

(assert (=> b!4674477 (=> (not res!1968403) (not e!2916859))))

(declare-fun allKeysSameHash!1569 (List!52259 (_ BitVec 64) Hashable!6112) Bool)

(assert (=> b!4674477 (= res!1968403 (allKeysSameHash!1569 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4674478 () Bool)

(declare-fun res!1968408 () Bool)

(assert (=> b!4674478 (=> (not res!1968408) (not e!2916865))))

(declare-fun allKeysSameHashInMap!1657 (ListLongMap!3905 Hashable!6112) Bool)

(assert (=> b!4674478 (= res!1968408 (allKeysSameHashInMap!1657 lm!2023 hashF!1323))))

(declare-fun b!4674479 () Bool)

(declare-fun res!1968402 () Bool)

(assert (=> b!4674479 (=> (not res!1968402) (not e!2916865))))

(assert (=> b!4674479 (= res!1968402 (is-Cons!52136 (toList!5375 lm!2023)))))

(declare-fun b!4674480 () Bool)

(declare-fun tp!1344398 () Bool)

(assert (=> b!4674480 (= e!2916863 (and tp_is_empty!30265 tp_is_empty!30267 tp!1344398))))

(declare-fun b!4674481 () Bool)

(declare-fun res!1968410 () Bool)

(assert (=> b!4674481 (=> (not res!1968410) (not e!2916865))))

(assert (=> b!4674481 (= res!1968410 (allKeysSameHash!1569 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4674482 () Bool)

(assert (=> b!4674482 (= e!2916865 (not e!2916860))))

(declare-fun res!1968400 () Bool)

(assert (=> b!4674482 (=> res!1968400 e!2916860)))

(assert (=> b!4674482 (= res!1968400 (or (not (is-Cons!52135 oldBucket!34)) (not (= (_1!29977 (h!58328 oldBucket!34)) key!4653))))))

(assert (=> b!4674482 e!2916864))

(declare-fun res!1968405 () Bool)

(assert (=> b!4674482 (=> (not res!1968405) (not e!2916864))))

(declare-fun tail!8327 (ListLongMap!3905) ListLongMap!3905)

(assert (=> b!4674482 (= res!1968405 (= (t!359398 (toList!5375 lm!2023)) (toList!5375 (tail!8327 lm!2023))))))

(assert (= (and start!471770 res!1968404) b!4674475))

(assert (= (and b!4674475 res!1968407) b!4674467))

(assert (= (and b!4674467 res!1968406) b!4674471))

(assert (= (and b!4674471 res!1968401) b!4674477))

(assert (= (and b!4674477 res!1968403) b!4674468))

(assert (= (and b!4674468 res!1968411) b!4674472))

(assert (= (and b!4674472 res!1968409) b!4674481))

(assert (= (and b!4674481 res!1968410) b!4674478))

(assert (= (and b!4674478 res!1968408) b!4674466))

(assert (= (and b!4674466 res!1968413) b!4674479))

(assert (= (and b!4674479 res!1968402) b!4674482))

(assert (= (and b!4674482 res!1968405) b!4674469))

(assert (= (and b!4674482 (not res!1968400)) b!4674474))

(assert (= (and b!4674474 (not res!1968412)) b!4674476))

(assert (= start!471770 b!4674470))

(assert (= (and start!471770 (is-Cons!52135 oldBucket!34)) b!4674473))

(assert (= (and start!471770 (is-Cons!52135 newBucket!218)) b!4674480))

(declare-fun m!5567869 () Bool)

(assert (=> b!4674467 m!5567869))

(declare-fun m!5567871 () Bool)

(assert (=> b!4674472 m!5567871))

(declare-fun m!5567873 () Bool)

(assert (=> b!4674474 m!5567873))

(declare-fun m!5567875 () Bool)

(assert (=> b!4674476 m!5567875))

(declare-fun m!5567877 () Bool)

(assert (=> b!4674476 m!5567877))

(declare-fun m!5567879 () Bool)

(assert (=> b!4674466 m!5567879))

(declare-fun m!5567881 () Bool)

(assert (=> b!4674482 m!5567881))

(declare-fun m!5567883 () Bool)

(assert (=> b!4674481 m!5567883))

(declare-fun m!5567885 () Bool)

(assert (=> b!4674468 m!5567885))

(declare-fun m!5567887 () Bool)

(assert (=> b!4674468 m!5567887))

(declare-fun m!5567889 () Bool)

(assert (=> b!4674475 m!5567889))

(declare-fun m!5567891 () Bool)

(assert (=> b!4674478 m!5567891))

(declare-fun m!5567893 () Bool)

(assert (=> b!4674477 m!5567893))

(declare-fun m!5567895 () Bool)

(assert (=> b!4674471 m!5567895))

(declare-fun m!5567897 () Bool)

(assert (=> start!471770 m!5567897))

(declare-fun m!5567899 () Bool)

(assert (=> start!471770 m!5567899))

(declare-fun m!5567901 () Bool)

(assert (=> b!4674469 m!5567901))

(assert (=> b!4674469 m!5567901))

(declare-fun m!5567903 () Bool)

(assert (=> b!4674469 m!5567903))

(push 1)

(assert (not b!4674481))

(assert (not start!471770))

(assert (not b!4674480))

(assert (not b!4674469))

(assert tp_is_empty!30265)

(assert (not b!4674468))

(assert (not b!4674482))

(assert (not b!4674476))

(assert (not b!4674477))

(assert (not b!4674473))

(assert (not b!4674472))

(assert (not b!4674467))

(assert tp_is_empty!30267)

(assert (not b!4674478))

(assert (not b!4674470))

(assert (not b!4674471))

(assert (not b!4674474))

(assert (not b!4674466))

(assert (not b!4674475))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

