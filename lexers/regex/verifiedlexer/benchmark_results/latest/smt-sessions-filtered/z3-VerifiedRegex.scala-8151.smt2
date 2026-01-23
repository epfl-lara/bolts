; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419480 () Bool)

(assert start!419480)

(declare-fun b!4345925 () Bool)

(declare-fun e!2704401 () Bool)

(declare-fun e!2704403 () Bool)

(assert (=> b!4345925 (= e!2704401 e!2704403)))

(declare-fun res!1784467 () Bool)

(assert (=> b!4345925 (=> res!1784467 e!2704403)))

(declare-datatypes ((V!10406 0))(
  ( (V!10407 (val!16399 Int)) )
))
(declare-datatypes ((K!10160 0))(
  ( (K!10161 (val!16400 Int)) )
))
(declare-datatypes ((tuple2!48118 0))(
  ( (tuple2!48119 (_1!27353 K!10160) (_2!27353 V!10406)) )
))
(declare-datatypes ((List!48923 0))(
  ( (Nil!48799) (Cons!48799 (h!54322 tuple2!48118) (t!355843 List!48923)) )
))
(declare-datatypes ((tuple2!48120 0))(
  ( (tuple2!48121 (_1!27354 (_ BitVec 64)) (_2!27354 List!48923)) )
))
(declare-datatypes ((List!48924 0))(
  ( (Nil!48800) (Cons!48800 (h!54323 tuple2!48120) (t!355844 List!48924)) )
))
(declare-datatypes ((ListLongMap!1507 0))(
  ( (ListLongMap!1508 (toList!2857 List!48924)) )
))
(declare-fun lm!1707 () ListLongMap!1507)

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4345925 (= res!1784467 (or (not ((_ is Cons!48800) (toList!2857 lm!1707))) (not (= (_1!27354 (h!54323 (toList!2857 lm!1707))) hash!377))))))

(declare-fun e!2704408 () Bool)

(assert (=> b!4345925 e!2704408))

(declare-fun res!1784478 () Bool)

(assert (=> b!4345925 (=> (not res!1784478) (not e!2704408))))

(declare-fun lt!1560195 () ListLongMap!1507)

(declare-fun lambda!138189 () Int)

(declare-fun forall!9029 (List!48924 Int) Bool)

(assert (=> b!4345925 (= res!1784478 (forall!9029 (toList!2857 lt!1560195) lambda!138189))))

(declare-fun lt!1560180 () tuple2!48120)

(declare-fun +!545 (ListLongMap!1507 tuple2!48120) ListLongMap!1507)

(assert (=> b!4345925 (= lt!1560195 (+!545 lm!1707 lt!1560180))))

(declare-fun newBucket!200 () List!48923)

(assert (=> b!4345925 (= lt!1560180 (tuple2!48121 hash!377 newBucket!200))))

(declare-datatypes ((Unit!70517 0))(
  ( (Unit!70518) )
))
(declare-fun lt!1560194 () Unit!70517)

(declare-fun addValidProp!91 (ListLongMap!1507 Int (_ BitVec 64) List!48923) Unit!70517)

(assert (=> b!4345925 (= lt!1560194 (addValidProp!91 lm!1707 lambda!138189 hash!377 newBucket!200))))

(assert (=> b!4345925 (forall!9029 (toList!2857 lm!1707) lambda!138189)))

(declare-fun b!4345926 () Bool)

(declare-fun e!2704406 () Bool)

(declare-fun lt!1560204 () ListLongMap!1507)

(assert (=> b!4345926 (= e!2704406 (forall!9029 (toList!2857 lt!1560204) lambda!138189))))

(declare-datatypes ((ListMap!2101 0))(
  ( (ListMap!2102 (toList!2858 List!48923)) )
))
(declare-fun lt!1560193 () ListMap!2101)

(declare-fun lt!1560201 () tuple2!48118)

(declare-fun eq!227 (ListMap!2101 ListMap!2101) Bool)

(declare-fun extractMap!496 (List!48924) ListMap!2101)

(declare-fun +!546 (ListMap!2101 tuple2!48118) ListMap!2101)

(assert (=> b!4345926 (eq!227 (extractMap!496 (toList!2857 lt!1560204)) (+!546 lt!1560193 lt!1560201))))

(declare-fun lt!1560198 () ListLongMap!1507)

(assert (=> b!4345926 (= lt!1560204 (+!545 lt!1560198 lt!1560180))))

(declare-fun lt!1560205 () Unit!70517)

(declare-datatypes ((Hashable!4829 0))(
  ( (HashableExt!4828 (__x!30532 Int)) )
))
(declare-fun hashF!1247 () Hashable!4829)

(declare-fun key!3918 () K!10160)

(declare-fun newValue!99 () V!10406)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!77 (ListLongMap!1507 (_ BitVec 64) List!48923 K!10160 V!10406 Hashable!4829) Unit!70517)

(assert (=> b!4345926 (= lt!1560205 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!77 lt!1560198 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun b!4345927 () Bool)

(assert (=> b!4345927 (= e!2704408 (or (not ((_ is Cons!48800) (toList!2857 lm!1707))) (not (= (_1!27354 (h!54323 (toList!2857 lm!1707))) hash!377)) (= lt!1560195 (ListLongMap!1508 (Cons!48800 lt!1560180 (t!355844 (toList!2857 lm!1707)))))))))

(declare-fun b!4345928 () Bool)

(declare-fun e!2704405 () Bool)

(declare-fun e!2704402 () Bool)

(assert (=> b!4345928 (= e!2704405 e!2704402)))

(declare-fun res!1784472 () Bool)

(assert (=> b!4345928 (=> (not res!1784472) (not e!2704402))))

(declare-fun lt!1560183 () ListMap!2101)

(declare-fun contains!10932 (ListMap!2101 K!10160) Bool)

(assert (=> b!4345928 (= res!1784472 (contains!10932 lt!1560183 key!3918))))

(assert (=> b!4345928 (= lt!1560183 (extractMap!496 (toList!2857 lm!1707)))))

(declare-fun b!4345929 () Bool)

(declare-fun e!2704407 () Bool)

(declare-fun tp!1329520 () Bool)

(assert (=> b!4345929 (= e!2704407 tp!1329520)))

(declare-fun b!4345930 () Bool)

(assert (=> b!4345930 (= e!2704402 (not e!2704401))))

(declare-fun res!1784476 () Bool)

(assert (=> b!4345930 (=> res!1784476 e!2704401)))

(declare-fun lt!1560197 () List!48923)

(assert (=> b!4345930 (= res!1784476 (not (= newBucket!200 lt!1560197)))))

(declare-fun lt!1560200 () List!48923)

(assert (=> b!4345930 (= lt!1560197 (Cons!48799 lt!1560201 lt!1560200))))

(declare-fun lt!1560192 () List!48923)

(declare-fun removePairForKey!407 (List!48923 K!10160) List!48923)

(assert (=> b!4345930 (= lt!1560200 (removePairForKey!407 lt!1560192 key!3918))))

(assert (=> b!4345930 (= lt!1560201 (tuple2!48119 key!3918 newValue!99))))

(declare-fun lt!1560206 () tuple2!48120)

(declare-fun lt!1560185 () Unit!70517)

(declare-fun forallContained!1679 (List!48924 Int tuple2!48120) Unit!70517)

(assert (=> b!4345930 (= lt!1560185 (forallContained!1679 (toList!2857 lm!1707) lambda!138189 lt!1560206))))

(declare-fun contains!10933 (List!48924 tuple2!48120) Bool)

(assert (=> b!4345930 (contains!10933 (toList!2857 lm!1707) lt!1560206)))

(assert (=> b!4345930 (= lt!1560206 (tuple2!48121 hash!377 lt!1560192))))

(declare-fun lt!1560191 () Unit!70517)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!284 (List!48924 (_ BitVec 64) List!48923) Unit!70517)

(assert (=> b!4345930 (= lt!1560191 (lemmaGetValueByKeyImpliesContainsTuple!284 (toList!2857 lm!1707) hash!377 lt!1560192))))

(declare-fun apply!11289 (ListLongMap!1507 (_ BitVec 64)) List!48923)

(assert (=> b!4345930 (= lt!1560192 (apply!11289 lm!1707 hash!377))))

(declare-fun b!4345931 () Bool)

(declare-fun res!1784475 () Bool)

(assert (=> b!4345931 (=> (not res!1784475) (not e!2704408))))

(assert (=> b!4345931 (= res!1784475 (forall!9029 (toList!2857 lt!1560195) lambda!138189))))

(declare-fun lt!1560187 () List!48923)

(declare-fun b!4345932 () Bool)

(declare-fun e!2704399 () Bool)

(assert (=> b!4345932 (= e!2704399 (= (apply!11289 lt!1560198 hash!377) lt!1560187))))

(declare-fun b!4345933 () Bool)

(declare-fun res!1784477 () Bool)

(assert (=> b!4345933 (=> (not res!1784477) (not e!2704402))))

(declare-fun contains!10934 (ListLongMap!1507 (_ BitVec 64)) Bool)

(assert (=> b!4345933 (= res!1784477 (contains!10934 lm!1707 hash!377))))

(declare-fun b!4345934 () Bool)

(declare-fun res!1784470 () Bool)

(assert (=> b!4345934 (=> res!1784470 e!2704401)))

(declare-fun noDuplicateKeys!437 (List!48923) Bool)

(assert (=> b!4345934 (= res!1784470 (not (noDuplicateKeys!437 newBucket!200)))))

(declare-fun b!4345935 () Bool)

(declare-fun res!1784468 () Bool)

(assert (=> b!4345935 (=> (not res!1784468) (not e!2704405))))

(declare-fun allKeysSameHashInMap!541 (ListLongMap!1507 Hashable!4829) Bool)

(assert (=> b!4345935 (= res!1784468 (allKeysSameHashInMap!541 lm!1707 hashF!1247))))

(declare-fun b!4345936 () Bool)

(declare-fun tp_is_empty!24987 () Bool)

(declare-fun e!2704404 () Bool)

(declare-fun tp_is_empty!24985 () Bool)

(declare-fun tp!1329519 () Bool)

(assert (=> b!4345936 (= e!2704404 (and tp_is_empty!24985 tp_is_empty!24987 tp!1329519))))

(declare-fun b!4345937 () Bool)

(declare-fun e!2704400 () Bool)

(declare-fun lt!1560199 () ListMap!2101)

(declare-fun lt!1560202 () ListMap!2101)

(assert (=> b!4345937 (= e!2704400 (eq!227 lt!1560199 lt!1560202))))

(declare-fun b!4345938 () Bool)

(declare-fun res!1784473 () Bool)

(assert (=> b!4345938 (=> (not res!1784473) (not e!2704405))))

(declare-fun allKeysSameHash!395 (List!48923 (_ BitVec 64) Hashable!4829) Bool)

(assert (=> b!4345938 (= res!1784473 (allKeysSameHash!395 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4345939 () Bool)

(declare-fun res!1784466 () Bool)

(assert (=> b!4345939 (=> (not res!1784466) (not e!2704405))))

(declare-fun hash!1412 (Hashable!4829 K!10160) (_ BitVec 64))

(assert (=> b!4345939 (= res!1784466 (= (hash!1412 hashF!1247 key!3918) hash!377))))

(declare-fun b!4345940 () Bool)

(assert (=> b!4345940 (= e!2704403 e!2704406)))

(declare-fun res!1784474 () Bool)

(assert (=> b!4345940 (=> res!1784474 e!2704406)))

(declare-fun lt!1560196 () Bool)

(assert (=> b!4345940 (= res!1784474 lt!1560196)))

(assert (=> b!4345940 e!2704399))

(declare-fun res!1784469 () Bool)

(assert (=> b!4345940 (=> (not res!1784469) (not e!2704399))))

(declare-fun lt!1560182 () ListMap!2101)

(assert (=> b!4345940 (= res!1784469 (= lt!1560196 (contains!10932 lt!1560182 key!3918)))))

(assert (=> b!4345940 (= lt!1560196 (contains!10932 lt!1560193 key!3918))))

(declare-fun lt!1560186 () Unit!70517)

(declare-fun lemmaEquivalentThenSameContains!88 (ListMap!2101 ListMap!2101 K!10160) Unit!70517)

(assert (=> b!4345940 (= lt!1560186 (lemmaEquivalentThenSameContains!88 lt!1560193 lt!1560182 key!3918))))

(assert (=> b!4345940 (eq!227 lt!1560193 lt!1560182)))

(declare-fun -!238 (ListMap!2101 K!10160) ListMap!2101)

(assert (=> b!4345940 (= lt!1560182 (-!238 lt!1560183 key!3918))))

(declare-fun lt!1560190 () Unit!70517)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!53 (ListLongMap!1507 (_ BitVec 64) List!48923 K!10160 Hashable!4829) Unit!70517)

(assert (=> b!4345940 (= lt!1560190 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!53 lm!1707 hash!377 lt!1560187 key!3918 hashF!1247))))

(declare-fun lt!1560184 () ListMap!2101)

(assert (=> b!4345940 (= lt!1560184 lt!1560193)))

(assert (=> b!4345940 (= lt!1560193 (extractMap!496 (toList!2857 lt!1560198)))))

(assert (=> b!4345940 (= lt!1560187 lt!1560200)))

(assert (=> b!4345940 (= lt!1560198 (+!545 lm!1707 (tuple2!48121 hash!377 lt!1560187)))))

(declare-fun tail!6935 (List!48923) List!48923)

(assert (=> b!4345940 (= lt!1560187 (tail!6935 newBucket!200))))

(assert (=> b!4345940 e!2704400))

(declare-fun res!1784471 () Bool)

(assert (=> b!4345940 (=> (not res!1784471) (not e!2704400))))

(declare-fun lt!1560189 () ListMap!2101)

(assert (=> b!4345940 (= res!1784471 (eq!227 lt!1560189 lt!1560202))))

(assert (=> b!4345940 (= lt!1560202 (+!546 lt!1560184 lt!1560201))))

(declare-fun lt!1560203 () ListMap!2101)

(declare-fun addToMapMapFromBucket!145 (List!48923 ListMap!2101) ListMap!2101)

(assert (=> b!4345940 (= lt!1560184 (addToMapMapFromBucket!145 lt!1560200 lt!1560203))))

(declare-fun lt!1560188 () Unit!70517)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!56 (ListMap!2101 K!10160 V!10406 List!48923) Unit!70517)

(assert (=> b!4345940 (= lt!1560188 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!56 lt!1560203 key!3918 newValue!99 lt!1560200))))

(assert (=> b!4345940 (= lt!1560199 lt!1560189)))

(assert (=> b!4345940 (= lt!1560189 (addToMapMapFromBucket!145 lt!1560200 (+!546 lt!1560203 lt!1560201)))))

(declare-fun lt!1560181 () ListMap!2101)

(assert (=> b!4345940 (= lt!1560181 lt!1560199)))

(assert (=> b!4345940 (= lt!1560199 (addToMapMapFromBucket!145 lt!1560197 lt!1560203))))

(assert (=> b!4345940 (= lt!1560181 (addToMapMapFromBucket!145 newBucket!200 lt!1560203))))

(assert (=> b!4345940 (= lt!1560181 (extractMap!496 (toList!2857 lt!1560195)))))

(assert (=> b!4345940 (= lt!1560203 (extractMap!496 (t!355844 (toList!2857 lm!1707))))))

(declare-fun res!1784479 () Bool)

(assert (=> start!419480 (=> (not res!1784479) (not e!2704405))))

(assert (=> start!419480 (= res!1784479 (forall!9029 (toList!2857 lm!1707) lambda!138189))))

(assert (=> start!419480 e!2704405))

(assert (=> start!419480 e!2704404))

(assert (=> start!419480 true))

(declare-fun inv!64346 (ListLongMap!1507) Bool)

(assert (=> start!419480 (and (inv!64346 lm!1707) e!2704407)))

(assert (=> start!419480 tp_is_empty!24985))

(assert (=> start!419480 tp_is_empty!24987))

(assert (= (and start!419480 res!1784479) b!4345935))

(assert (= (and b!4345935 res!1784468) b!4345939))

(assert (= (and b!4345939 res!1784466) b!4345938))

(assert (= (and b!4345938 res!1784473) b!4345928))

(assert (= (and b!4345928 res!1784472) b!4345933))

(assert (= (and b!4345933 res!1784477) b!4345930))

(assert (= (and b!4345930 (not res!1784476)) b!4345934))

(assert (= (and b!4345934 (not res!1784470)) b!4345925))

(assert (= (and b!4345925 res!1784478) b!4345931))

(assert (= (and b!4345931 res!1784475) b!4345927))

(assert (= (and b!4345925 (not res!1784467)) b!4345940))

(assert (= (and b!4345940 res!1784471) b!4345937))

(assert (= (and b!4345940 res!1784469) b!4345932))

(assert (= (and b!4345940 (not res!1784474)) b!4345926))

(assert (= (and start!419480 ((_ is Cons!48799) newBucket!200)) b!4345936))

(assert (= start!419480 b!4345929))

(declare-fun m!4953423 () Bool)

(assert (=> b!4345937 m!4953423))

(declare-fun m!4953425 () Bool)

(assert (=> b!4345928 m!4953425))

(declare-fun m!4953427 () Bool)

(assert (=> b!4345928 m!4953427))

(declare-fun m!4953429 () Bool)

(assert (=> b!4345935 m!4953429))

(declare-fun m!4953431 () Bool)

(assert (=> b!4345931 m!4953431))

(declare-fun m!4953433 () Bool)

(assert (=> b!4345939 m!4953433))

(declare-fun m!4953435 () Bool)

(assert (=> start!419480 m!4953435))

(declare-fun m!4953437 () Bool)

(assert (=> start!419480 m!4953437))

(assert (=> b!4345925 m!4953431))

(declare-fun m!4953439 () Bool)

(assert (=> b!4345925 m!4953439))

(declare-fun m!4953441 () Bool)

(assert (=> b!4345925 m!4953441))

(assert (=> b!4345925 m!4953435))

(declare-fun m!4953443 () Bool)

(assert (=> b!4345930 m!4953443))

(declare-fun m!4953445 () Bool)

(assert (=> b!4345930 m!4953445))

(declare-fun m!4953447 () Bool)

(assert (=> b!4345930 m!4953447))

(declare-fun m!4953449 () Bool)

(assert (=> b!4345930 m!4953449))

(declare-fun m!4953451 () Bool)

(assert (=> b!4345930 m!4953451))

(declare-fun m!4953453 () Bool)

(assert (=> b!4345938 m!4953453))

(declare-fun m!4953455 () Bool)

(assert (=> b!4345933 m!4953455))

(declare-fun m!4953457 () Bool)

(assert (=> b!4345926 m!4953457))

(declare-fun m!4953459 () Bool)

(assert (=> b!4345926 m!4953459))

(declare-fun m!4953461 () Bool)

(assert (=> b!4345926 m!4953461))

(declare-fun m!4953463 () Bool)

(assert (=> b!4345926 m!4953463))

(assert (=> b!4345926 m!4953461))

(declare-fun m!4953465 () Bool)

(assert (=> b!4345926 m!4953465))

(declare-fun m!4953467 () Bool)

(assert (=> b!4345926 m!4953467))

(assert (=> b!4345926 m!4953463))

(declare-fun m!4953469 () Bool)

(assert (=> b!4345934 m!4953469))

(declare-fun m!4953471 () Bool)

(assert (=> b!4345940 m!4953471))

(declare-fun m!4953473 () Bool)

(assert (=> b!4345940 m!4953473))

(declare-fun m!4953475 () Bool)

(assert (=> b!4345940 m!4953475))

(declare-fun m!4953477 () Bool)

(assert (=> b!4345940 m!4953477))

(declare-fun m!4953479 () Bool)

(assert (=> b!4345940 m!4953479))

(declare-fun m!4953481 () Bool)

(assert (=> b!4345940 m!4953481))

(declare-fun m!4953483 () Bool)

(assert (=> b!4345940 m!4953483))

(declare-fun m!4953485 () Bool)

(assert (=> b!4345940 m!4953485))

(declare-fun m!4953487 () Bool)

(assert (=> b!4345940 m!4953487))

(declare-fun m!4953489 () Bool)

(assert (=> b!4345940 m!4953489))

(declare-fun m!4953491 () Bool)

(assert (=> b!4345940 m!4953491))

(declare-fun m!4953493 () Bool)

(assert (=> b!4345940 m!4953493))

(declare-fun m!4953495 () Bool)

(assert (=> b!4345940 m!4953495))

(assert (=> b!4345940 m!4953489))

(declare-fun m!4953497 () Bool)

(assert (=> b!4345940 m!4953497))

(declare-fun m!4953499 () Bool)

(assert (=> b!4345940 m!4953499))

(declare-fun m!4953501 () Bool)

(assert (=> b!4345940 m!4953501))

(declare-fun m!4953503 () Bool)

(assert (=> b!4345940 m!4953503))

(declare-fun m!4953505 () Bool)

(assert (=> b!4345940 m!4953505))

(declare-fun m!4953507 () Bool)

(assert (=> b!4345940 m!4953507))

(declare-fun m!4953509 () Bool)

(assert (=> b!4345932 m!4953509))

(check-sat (not b!4345930) (not b!4345934) tp_is_empty!24987 (not b!4345926) (not b!4345936) (not b!4345938) (not b!4345928) (not b!4345937) (not b!4345933) (not b!4345929) (not start!419480) (not b!4345932) (not b!4345940) (not b!4345935) tp_is_empty!24985 (not b!4345939) (not b!4345931) (not b!4345925))
(check-sat)
(get-model)

(declare-fun d!1283204 () Bool)

(declare-datatypes ((Option!10412 0))(
  ( (None!10411) (Some!10411 (v!43201 List!48923)) )
))
(declare-fun get!15841 (Option!10412) List!48923)

(declare-fun getValueByKey!398 (List!48924 (_ BitVec 64)) Option!10412)

(assert (=> d!1283204 (= (apply!11289 lm!1707 hash!377) (get!15841 (getValueByKey!398 (toList!2857 lm!1707) hash!377)))))

(declare-fun bs!627541 () Bool)

(assert (= bs!627541 d!1283204))

(declare-fun m!4953547 () Bool)

(assert (=> bs!627541 m!4953547))

(assert (=> bs!627541 m!4953547))

(declare-fun m!4953555 () Bool)

(assert (=> bs!627541 m!4953555))

(assert (=> b!4345930 d!1283204))

(declare-fun d!1283206 () Bool)

(declare-fun dynLambda!20595 (Int tuple2!48120) Bool)

(assert (=> d!1283206 (dynLambda!20595 lambda!138189 lt!1560206)))

(declare-fun lt!1560248 () Unit!70517)

(declare-fun choose!26664 (List!48924 Int tuple2!48120) Unit!70517)

(assert (=> d!1283206 (= lt!1560248 (choose!26664 (toList!2857 lm!1707) lambda!138189 lt!1560206))))

(declare-fun e!2704447 () Bool)

(assert (=> d!1283206 e!2704447))

(declare-fun res!1784512 () Bool)

(assert (=> d!1283206 (=> (not res!1784512) (not e!2704447))))

(assert (=> d!1283206 (= res!1784512 (forall!9029 (toList!2857 lm!1707) lambda!138189))))

(assert (=> d!1283206 (= (forallContained!1679 (toList!2857 lm!1707) lambda!138189 lt!1560206) lt!1560248)))

(declare-fun b!4345992 () Bool)

(assert (=> b!4345992 (= e!2704447 (contains!10933 (toList!2857 lm!1707) lt!1560206))))

(assert (= (and d!1283206 res!1784512) b!4345992))

(declare-fun b_lambda!130091 () Bool)

(assert (=> (not b_lambda!130091) (not d!1283206)))

(declare-fun m!4953575 () Bool)

(assert (=> d!1283206 m!4953575))

(declare-fun m!4953577 () Bool)

(assert (=> d!1283206 m!4953577))

(assert (=> d!1283206 m!4953435))

(assert (=> b!4345992 m!4953449))

(assert (=> b!4345930 d!1283206))

(declare-fun d!1283214 () Bool)

(assert (=> d!1283214 (contains!10933 (toList!2857 lm!1707) (tuple2!48121 hash!377 lt!1560192))))

(declare-fun lt!1560251 () Unit!70517)

(declare-fun choose!26665 (List!48924 (_ BitVec 64) List!48923) Unit!70517)

(assert (=> d!1283214 (= lt!1560251 (choose!26665 (toList!2857 lm!1707) hash!377 lt!1560192))))

(declare-fun e!2704454 () Bool)

(assert (=> d!1283214 e!2704454))

(declare-fun res!1784519 () Bool)

(assert (=> d!1283214 (=> (not res!1784519) (not e!2704454))))

(declare-fun isStrictlySorted!76 (List!48924) Bool)

(assert (=> d!1283214 (= res!1784519 (isStrictlySorted!76 (toList!2857 lm!1707)))))

(assert (=> d!1283214 (= (lemmaGetValueByKeyImpliesContainsTuple!284 (toList!2857 lm!1707) hash!377 lt!1560192) lt!1560251)))

(declare-fun b!4346001 () Bool)

(assert (=> b!4346001 (= e!2704454 (= (getValueByKey!398 (toList!2857 lm!1707) hash!377) (Some!10411 lt!1560192)))))

(assert (= (and d!1283214 res!1784519) b!4346001))

(declare-fun m!4953585 () Bool)

(assert (=> d!1283214 m!4953585))

(declare-fun m!4953587 () Bool)

(assert (=> d!1283214 m!4953587))

(declare-fun m!4953589 () Bool)

(assert (=> d!1283214 m!4953589))

(assert (=> b!4346001 m!4953547))

(assert (=> b!4345930 d!1283214))

(declare-fun b!4346018 () Bool)

(declare-fun e!2704463 () List!48923)

(assert (=> b!4346018 (= e!2704463 (Cons!48799 (h!54322 lt!1560192) (removePairForKey!407 (t!355843 lt!1560192) key!3918)))))

(declare-fun b!4346016 () Bool)

(declare-fun e!2704462 () List!48923)

(assert (=> b!4346016 (= e!2704462 (t!355843 lt!1560192))))

(declare-fun b!4346019 () Bool)

(assert (=> b!4346019 (= e!2704463 Nil!48799)))

(declare-fun b!4346017 () Bool)

(assert (=> b!4346017 (= e!2704462 e!2704463)))

(declare-fun c!738903 () Bool)

(assert (=> b!4346017 (= c!738903 ((_ is Cons!48799) lt!1560192))))

(declare-fun d!1283222 () Bool)

(declare-fun lt!1560266 () List!48923)

(declare-fun containsKey!600 (List!48923 K!10160) Bool)

(assert (=> d!1283222 (not (containsKey!600 lt!1560266 key!3918))))

(assert (=> d!1283222 (= lt!1560266 e!2704462)))

(declare-fun c!738902 () Bool)

(assert (=> d!1283222 (= c!738902 (and ((_ is Cons!48799) lt!1560192) (= (_1!27353 (h!54322 lt!1560192)) key!3918)))))

(assert (=> d!1283222 (noDuplicateKeys!437 lt!1560192)))

(assert (=> d!1283222 (= (removePairForKey!407 lt!1560192 key!3918) lt!1560266)))

(assert (= (and d!1283222 c!738902) b!4346016))

(assert (= (and d!1283222 (not c!738902)) b!4346017))

(assert (= (and b!4346017 c!738903) b!4346018))

(assert (= (and b!4346017 (not c!738903)) b!4346019))

(declare-fun m!4953607 () Bool)

(assert (=> b!4346018 m!4953607))

(declare-fun m!4953609 () Bool)

(assert (=> d!1283222 m!4953609))

(declare-fun m!4953611 () Bool)

(assert (=> d!1283222 m!4953611))

(assert (=> b!4345930 d!1283222))

(declare-fun d!1283228 () Bool)

(declare-fun lt!1560269 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7657 (List!48924) (InoxSet tuple2!48120))

(assert (=> d!1283228 (= lt!1560269 (select (content!7657 (toList!2857 lm!1707)) lt!1560206))))

(declare-fun e!2704468 () Bool)

(assert (=> d!1283228 (= lt!1560269 e!2704468)))

(declare-fun res!1784531 () Bool)

(assert (=> d!1283228 (=> (not res!1784531) (not e!2704468))))

(assert (=> d!1283228 (= res!1784531 ((_ is Cons!48800) (toList!2857 lm!1707)))))

(assert (=> d!1283228 (= (contains!10933 (toList!2857 lm!1707) lt!1560206) lt!1560269)))

(declare-fun b!4346024 () Bool)

(declare-fun e!2704469 () Bool)

(assert (=> b!4346024 (= e!2704468 e!2704469)))

(declare-fun res!1784530 () Bool)

(assert (=> b!4346024 (=> res!1784530 e!2704469)))

(assert (=> b!4346024 (= res!1784530 (= (h!54323 (toList!2857 lm!1707)) lt!1560206))))

(declare-fun b!4346025 () Bool)

(assert (=> b!4346025 (= e!2704469 (contains!10933 (t!355844 (toList!2857 lm!1707)) lt!1560206))))

(assert (= (and d!1283228 res!1784531) b!4346024))

(assert (= (and b!4346024 (not res!1784530)) b!4346025))

(declare-fun m!4953613 () Bool)

(assert (=> d!1283228 m!4953613))

(declare-fun m!4953615 () Bool)

(assert (=> d!1283228 m!4953615))

(declare-fun m!4953617 () Bool)

(assert (=> b!4346025 m!4953617))

(assert (=> b!4345930 d!1283228))

(declare-fun d!1283230 () Bool)

(declare-fun res!1784538 () Bool)

(declare-fun e!2704475 () Bool)

(assert (=> d!1283230 (=> res!1784538 e!2704475)))

(assert (=> d!1283230 (= res!1784538 ((_ is Nil!48800) (toList!2857 lt!1560195)))))

(assert (=> d!1283230 (= (forall!9029 (toList!2857 lt!1560195) lambda!138189) e!2704475)))

(declare-fun b!4346032 () Bool)

(declare-fun e!2704476 () Bool)

(assert (=> b!4346032 (= e!2704475 e!2704476)))

(declare-fun res!1784539 () Bool)

(assert (=> b!4346032 (=> (not res!1784539) (not e!2704476))))

(assert (=> b!4346032 (= res!1784539 (dynLambda!20595 lambda!138189 (h!54323 (toList!2857 lt!1560195))))))

(declare-fun b!4346033 () Bool)

(assert (=> b!4346033 (= e!2704476 (forall!9029 (t!355844 (toList!2857 lt!1560195)) lambda!138189))))

(assert (= (and d!1283230 (not res!1784538)) b!4346032))

(assert (= (and b!4346032 res!1784539) b!4346033))

(declare-fun b_lambda!130095 () Bool)

(assert (=> (not b_lambda!130095) (not b!4346032)))

(declare-fun m!4953643 () Bool)

(assert (=> b!4346032 m!4953643))

(declare-fun m!4953645 () Bool)

(assert (=> b!4346033 m!4953645))

(assert (=> b!4345931 d!1283230))

(declare-fun d!1283236 () Bool)

(assert (=> d!1283236 (= (apply!11289 lt!1560198 hash!377) (get!15841 (getValueByKey!398 (toList!2857 lt!1560198) hash!377)))))

(declare-fun bs!627549 () Bool)

(assert (= bs!627549 d!1283236))

(declare-fun m!4953647 () Bool)

(assert (=> bs!627549 m!4953647))

(assert (=> bs!627549 m!4953647))

(declare-fun m!4953649 () Bool)

(assert (=> bs!627549 m!4953649))

(assert (=> b!4345932 d!1283236))

(declare-fun d!1283238 () Bool)

(assert (=> d!1283238 true))

(assert (=> d!1283238 true))

(declare-fun lambda!138198 () Int)

(declare-fun forall!9031 (List!48923 Int) Bool)

(assert (=> d!1283238 (= (allKeysSameHash!395 newBucket!200 hash!377 hashF!1247) (forall!9031 newBucket!200 lambda!138198))))

(declare-fun bs!627550 () Bool)

(assert (= bs!627550 d!1283238))

(declare-fun m!4953651 () Bool)

(assert (=> bs!627550 m!4953651))

(assert (=> b!4345938 d!1283238))

(declare-fun b!4346104 () Bool)

(declare-fun e!2704522 () Unit!70517)

(declare-fun lt!1560333 () Unit!70517)

(assert (=> b!4346104 (= e!2704522 lt!1560333)))

(declare-fun lt!1560338 () Unit!70517)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!311 (List!48923 K!10160) Unit!70517)

(assert (=> b!4346104 (= lt!1560338 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!2858 lt!1560183) key!3918))))

(declare-datatypes ((Option!10413 0))(
  ( (None!10412) (Some!10412 (v!43202 V!10406)) )
))
(declare-fun isDefined!7708 (Option!10413) Bool)

(declare-fun getValueByKey!399 (List!48923 K!10160) Option!10413)

(assert (=> b!4346104 (isDefined!7708 (getValueByKey!399 (toList!2858 lt!1560183) key!3918))))

(declare-fun lt!1560334 () Unit!70517)

(assert (=> b!4346104 (= lt!1560334 lt!1560338)))

(declare-fun lemmaInListThenGetKeysListContains!95 (List!48923 K!10160) Unit!70517)

(assert (=> b!4346104 (= lt!1560333 (lemmaInListThenGetKeysListContains!95 (toList!2858 lt!1560183) key!3918))))

(declare-fun call!302130 () Bool)

(assert (=> b!4346104 call!302130))

(declare-fun bm!302125 () Bool)

(declare-datatypes ((List!48926 0))(
  ( (Nil!48802) (Cons!48802 (h!54327 K!10160) (t!355846 List!48926)) )
))
(declare-fun e!2704517 () List!48926)

(declare-fun contains!10937 (List!48926 K!10160) Bool)

(assert (=> bm!302125 (= call!302130 (contains!10937 e!2704517 key!3918))))

(declare-fun c!738926 () Bool)

(declare-fun c!738928 () Bool)

(assert (=> bm!302125 (= c!738926 c!738928)))

(declare-fun b!4346105 () Bool)

(assert (=> b!4346105 false))

(declare-fun lt!1560336 () Unit!70517)

(declare-fun lt!1560339 () Unit!70517)

(assert (=> b!4346105 (= lt!1560336 lt!1560339)))

(declare-fun containsKey!601 (List!48923 K!10160) Bool)

(assert (=> b!4346105 (containsKey!601 (toList!2858 lt!1560183) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!96 (List!48923 K!10160) Unit!70517)

(assert (=> b!4346105 (= lt!1560339 (lemmaInGetKeysListThenContainsKey!96 (toList!2858 lt!1560183) key!3918))))

(declare-fun e!2704520 () Unit!70517)

(declare-fun Unit!70535 () Unit!70517)

(assert (=> b!4346105 (= e!2704520 Unit!70535)))

(declare-fun b!4346106 () Bool)

(assert (=> b!4346106 (= e!2704522 e!2704520)))

(declare-fun c!738927 () Bool)

(assert (=> b!4346106 (= c!738927 call!302130)))

(declare-fun b!4346107 () Bool)

(declare-fun keys!16448 (ListMap!2101) List!48926)

(assert (=> b!4346107 (= e!2704517 (keys!16448 lt!1560183))))

(declare-fun b!4346108 () Bool)

(declare-fun Unit!70536 () Unit!70517)

(assert (=> b!4346108 (= e!2704520 Unit!70536)))

(declare-fun b!4346109 () Bool)

(declare-fun e!2704518 () Bool)

(assert (=> b!4346109 (= e!2704518 (not (contains!10937 (keys!16448 lt!1560183) key!3918)))))

(declare-fun b!4346110 () Bool)

(declare-fun e!2704519 () Bool)

(assert (=> b!4346110 (= e!2704519 (contains!10937 (keys!16448 lt!1560183) key!3918))))

(declare-fun b!4346111 () Bool)

(declare-fun getKeysList!98 (List!48923) List!48926)

(assert (=> b!4346111 (= e!2704517 (getKeysList!98 (toList!2858 lt!1560183)))))

(declare-fun d!1283240 () Bool)

(declare-fun e!2704521 () Bool)

(assert (=> d!1283240 e!2704521))

(declare-fun res!1784559 () Bool)

(assert (=> d!1283240 (=> res!1784559 e!2704521)))

(assert (=> d!1283240 (= res!1784559 e!2704518)))

(declare-fun res!1784560 () Bool)

(assert (=> d!1283240 (=> (not res!1784560) (not e!2704518))))

(declare-fun lt!1560335 () Bool)

(assert (=> d!1283240 (= res!1784560 (not lt!1560335))))

(declare-fun lt!1560337 () Bool)

(assert (=> d!1283240 (= lt!1560335 lt!1560337)))

(declare-fun lt!1560332 () Unit!70517)

(assert (=> d!1283240 (= lt!1560332 e!2704522)))

(assert (=> d!1283240 (= c!738928 lt!1560337)))

(assert (=> d!1283240 (= lt!1560337 (containsKey!601 (toList!2858 lt!1560183) key!3918))))

(assert (=> d!1283240 (= (contains!10932 lt!1560183 key!3918) lt!1560335)))

(declare-fun b!4346112 () Bool)

(assert (=> b!4346112 (= e!2704521 e!2704519)))

(declare-fun res!1784558 () Bool)

(assert (=> b!4346112 (=> (not res!1784558) (not e!2704519))))

(assert (=> b!4346112 (= res!1784558 (isDefined!7708 (getValueByKey!399 (toList!2858 lt!1560183) key!3918)))))

(assert (= (and d!1283240 c!738928) b!4346104))

(assert (= (and d!1283240 (not c!738928)) b!4346106))

(assert (= (and b!4346106 c!738927) b!4346105))

(assert (= (and b!4346106 (not c!738927)) b!4346108))

(assert (= (or b!4346104 b!4346106) bm!302125))

(assert (= (and bm!302125 c!738926) b!4346111))

(assert (= (and bm!302125 (not c!738926)) b!4346107))

(assert (= (and d!1283240 res!1784560) b!4346109))

(assert (= (and d!1283240 (not res!1784559)) b!4346112))

(assert (= (and b!4346112 res!1784558) b!4346110))

(declare-fun m!4953715 () Bool)

(assert (=> d!1283240 m!4953715))

(declare-fun m!4953717 () Bool)

(assert (=> b!4346111 m!4953717))

(declare-fun m!4953719 () Bool)

(assert (=> b!4346109 m!4953719))

(assert (=> b!4346109 m!4953719))

(declare-fun m!4953721 () Bool)

(assert (=> b!4346109 m!4953721))

(declare-fun m!4953723 () Bool)

(assert (=> b!4346112 m!4953723))

(assert (=> b!4346112 m!4953723))

(declare-fun m!4953725 () Bool)

(assert (=> b!4346112 m!4953725))

(declare-fun m!4953727 () Bool)

(assert (=> b!4346104 m!4953727))

(assert (=> b!4346104 m!4953723))

(assert (=> b!4346104 m!4953723))

(assert (=> b!4346104 m!4953725))

(declare-fun m!4953729 () Bool)

(assert (=> b!4346104 m!4953729))

(assert (=> b!4346110 m!4953719))

(assert (=> b!4346110 m!4953719))

(assert (=> b!4346110 m!4953721))

(assert (=> b!4346107 m!4953719))

(assert (=> b!4346105 m!4953715))

(declare-fun m!4953731 () Bool)

(assert (=> b!4346105 m!4953731))

(declare-fun m!4953733 () Bool)

(assert (=> bm!302125 m!4953733))

(assert (=> b!4345928 d!1283240))

(declare-fun bs!627561 () Bool)

(declare-fun d!1283256 () Bool)

(assert (= bs!627561 (and d!1283256 start!419480)))

(declare-fun lambda!138208 () Int)

(assert (=> bs!627561 (= lambda!138208 lambda!138189)))

(declare-fun lt!1560342 () ListMap!2101)

(declare-fun invariantList!650 (List!48923) Bool)

(assert (=> d!1283256 (invariantList!650 (toList!2858 lt!1560342))))

(declare-fun e!2704525 () ListMap!2101)

(assert (=> d!1283256 (= lt!1560342 e!2704525)))

(declare-fun c!738931 () Bool)

(assert (=> d!1283256 (= c!738931 ((_ is Cons!48800) (toList!2857 lm!1707)))))

(assert (=> d!1283256 (forall!9029 (toList!2857 lm!1707) lambda!138208)))

(assert (=> d!1283256 (= (extractMap!496 (toList!2857 lm!1707)) lt!1560342)))

(declare-fun b!4346117 () Bool)

(assert (=> b!4346117 (= e!2704525 (addToMapMapFromBucket!145 (_2!27354 (h!54323 (toList!2857 lm!1707))) (extractMap!496 (t!355844 (toList!2857 lm!1707)))))))

(declare-fun b!4346118 () Bool)

(assert (=> b!4346118 (= e!2704525 (ListMap!2102 Nil!48799))))

(assert (= (and d!1283256 c!738931) b!4346117))

(assert (= (and d!1283256 (not c!738931)) b!4346118))

(declare-fun m!4953735 () Bool)

(assert (=> d!1283256 m!4953735))

(declare-fun m!4953737 () Bool)

(assert (=> d!1283256 m!4953737))

(assert (=> b!4346117 m!4953495))

(assert (=> b!4346117 m!4953495))

(declare-fun m!4953739 () Bool)

(assert (=> b!4346117 m!4953739))

(assert (=> b!4345928 d!1283256))

(declare-fun d!1283258 () Bool)

(declare-fun hash!1417 (Hashable!4829 K!10160) (_ BitVec 64))

(assert (=> d!1283258 (= (hash!1412 hashF!1247 key!3918) (hash!1417 hashF!1247 key!3918))))

(declare-fun bs!627562 () Bool)

(assert (= bs!627562 d!1283258))

(declare-fun m!4953741 () Bool)

(assert (=> bs!627562 m!4953741))

(assert (=> b!4345939 d!1283258))

(declare-fun bs!627563 () Bool)

(declare-fun d!1283260 () Bool)

(assert (= bs!627563 (and d!1283260 start!419480)))

(declare-fun lambda!138209 () Int)

(assert (=> bs!627563 (= lambda!138209 lambda!138189)))

(declare-fun bs!627564 () Bool)

(assert (= bs!627564 (and d!1283260 d!1283256)))

(assert (=> bs!627564 (= lambda!138209 lambda!138208)))

(declare-fun lt!1560343 () ListMap!2101)

(assert (=> d!1283260 (invariantList!650 (toList!2858 lt!1560343))))

(declare-fun e!2704526 () ListMap!2101)

(assert (=> d!1283260 (= lt!1560343 e!2704526)))

(declare-fun c!738932 () Bool)

(assert (=> d!1283260 (= c!738932 ((_ is Cons!48800) (toList!2857 lt!1560198)))))

(assert (=> d!1283260 (forall!9029 (toList!2857 lt!1560198) lambda!138209)))

(assert (=> d!1283260 (= (extractMap!496 (toList!2857 lt!1560198)) lt!1560343)))

(declare-fun b!4346119 () Bool)

(assert (=> b!4346119 (= e!2704526 (addToMapMapFromBucket!145 (_2!27354 (h!54323 (toList!2857 lt!1560198))) (extractMap!496 (t!355844 (toList!2857 lt!1560198)))))))

(declare-fun b!4346120 () Bool)

(assert (=> b!4346120 (= e!2704526 (ListMap!2102 Nil!48799))))

(assert (= (and d!1283260 c!738932) b!4346119))

(assert (= (and d!1283260 (not c!738932)) b!4346120))

(declare-fun m!4953743 () Bool)

(assert (=> d!1283260 m!4953743))

(declare-fun m!4953745 () Bool)

(assert (=> d!1283260 m!4953745))

(declare-fun m!4953747 () Bool)

(assert (=> b!4346119 m!4953747))

(assert (=> b!4346119 m!4953747))

(declare-fun m!4953749 () Bool)

(assert (=> b!4346119 m!4953749))

(assert (=> b!4345940 d!1283260))

(declare-fun d!1283262 () Bool)

(declare-fun content!7658 (List!48923) (InoxSet tuple2!48118))

(assert (=> d!1283262 (= (eq!227 lt!1560189 lt!1560202) (= (content!7658 (toList!2858 lt!1560189)) (content!7658 (toList!2858 lt!1560202))))))

(declare-fun bs!627565 () Bool)

(assert (= bs!627565 d!1283262))

(declare-fun m!4953751 () Bool)

(assert (=> bs!627565 m!4953751))

(declare-fun m!4953753 () Bool)

(assert (=> bs!627565 m!4953753))

(assert (=> b!4345940 d!1283262))

(declare-fun d!1283264 () Bool)

(declare-fun e!2704529 () Bool)

(assert (=> d!1283264 e!2704529))

(declare-fun res!1784566 () Bool)

(assert (=> d!1283264 (=> (not res!1784566) (not e!2704529))))

(declare-fun lt!1560355 () ListMap!2101)

(assert (=> d!1283264 (= res!1784566 (contains!10932 lt!1560355 (_1!27353 lt!1560201)))))

(declare-fun lt!1560353 () List!48923)

(assert (=> d!1283264 (= lt!1560355 (ListMap!2102 lt!1560353))))

(declare-fun lt!1560352 () Unit!70517)

(declare-fun lt!1560354 () Unit!70517)

(assert (=> d!1283264 (= lt!1560352 lt!1560354)))

(assert (=> d!1283264 (= (getValueByKey!399 lt!1560353 (_1!27353 lt!1560201)) (Some!10412 (_2!27353 lt!1560201)))))

(declare-fun lemmaContainsTupThenGetReturnValue!181 (List!48923 K!10160 V!10406) Unit!70517)

(assert (=> d!1283264 (= lt!1560354 (lemmaContainsTupThenGetReturnValue!181 lt!1560353 (_1!27353 lt!1560201) (_2!27353 lt!1560201)))))

(declare-fun insertNoDuplicatedKeys!83 (List!48923 K!10160 V!10406) List!48923)

(assert (=> d!1283264 (= lt!1560353 (insertNoDuplicatedKeys!83 (toList!2858 lt!1560184) (_1!27353 lt!1560201) (_2!27353 lt!1560201)))))

(assert (=> d!1283264 (= (+!546 lt!1560184 lt!1560201) lt!1560355)))

(declare-fun b!4346125 () Bool)

(declare-fun res!1784565 () Bool)

(assert (=> b!4346125 (=> (not res!1784565) (not e!2704529))))

(assert (=> b!4346125 (= res!1784565 (= (getValueByKey!399 (toList!2858 lt!1560355) (_1!27353 lt!1560201)) (Some!10412 (_2!27353 lt!1560201))))))

(declare-fun b!4346126 () Bool)

(declare-fun contains!10938 (List!48923 tuple2!48118) Bool)

(assert (=> b!4346126 (= e!2704529 (contains!10938 (toList!2858 lt!1560355) lt!1560201))))

(assert (= (and d!1283264 res!1784566) b!4346125))

(assert (= (and b!4346125 res!1784565) b!4346126))

(declare-fun m!4953755 () Bool)

(assert (=> d!1283264 m!4953755))

(declare-fun m!4953757 () Bool)

(assert (=> d!1283264 m!4953757))

(declare-fun m!4953759 () Bool)

(assert (=> d!1283264 m!4953759))

(declare-fun m!4953761 () Bool)

(assert (=> d!1283264 m!4953761))

(declare-fun m!4953763 () Bool)

(assert (=> b!4346125 m!4953763))

(declare-fun m!4953765 () Bool)

(assert (=> b!4346126 m!4953765))

(assert (=> b!4345940 d!1283264))

(declare-fun bs!627666 () Bool)

(declare-fun b!4346195 () Bool)

(assert (= bs!627666 (and b!4346195 d!1283238)))

(declare-fun lambda!138288 () Int)

(assert (=> bs!627666 (not (= lambda!138288 lambda!138198))))

(assert (=> b!4346195 true))

(declare-fun bs!627671 () Bool)

(declare-fun b!4346194 () Bool)

(assert (= bs!627671 (and b!4346194 d!1283238)))

(declare-fun lambda!138289 () Int)

(assert (=> bs!627671 (not (= lambda!138289 lambda!138198))))

(declare-fun bs!627673 () Bool)

(assert (= bs!627673 (and b!4346194 b!4346195)))

(assert (=> bs!627673 (= lambda!138289 lambda!138288)))

(assert (=> b!4346194 true))

(declare-fun lambda!138290 () Int)

(assert (=> bs!627671 (not (= lambda!138290 lambda!138198))))

(declare-fun lt!1560558 () ListMap!2101)

(assert (=> bs!627673 (= (= lt!1560558 (+!546 lt!1560203 lt!1560201)) (= lambda!138290 lambda!138288))))

(assert (=> b!4346194 (= (= lt!1560558 (+!546 lt!1560203 lt!1560201)) (= lambda!138290 lambda!138289))))

(assert (=> b!4346194 true))

(declare-fun bs!627677 () Bool)

(declare-fun d!1283266 () Bool)

(assert (= bs!627677 (and d!1283266 d!1283238)))

(declare-fun lambda!138291 () Int)

(assert (=> bs!627677 (not (= lambda!138291 lambda!138198))))

(declare-fun bs!627678 () Bool)

(assert (= bs!627678 (and d!1283266 b!4346195)))

(declare-fun lt!1560571 () ListMap!2101)

(assert (=> bs!627678 (= (= lt!1560571 (+!546 lt!1560203 lt!1560201)) (= lambda!138291 lambda!138288))))

(declare-fun bs!627679 () Bool)

(assert (= bs!627679 (and d!1283266 b!4346194)))

(assert (=> bs!627679 (= (= lt!1560571 (+!546 lt!1560203 lt!1560201)) (= lambda!138291 lambda!138289))))

(assert (=> bs!627679 (= (= lt!1560571 lt!1560558) (= lambda!138291 lambda!138290))))

(assert (=> d!1283266 true))

(declare-fun bm!302151 () Bool)

(declare-fun call!302158 () Unit!70517)

(declare-fun lemmaContainsAllItsOwnKeys!43 (ListMap!2101) Unit!70517)

(assert (=> bm!302151 (= call!302158 (lemmaContainsAllItsOwnKeys!43 (+!546 lt!1560203 lt!1560201)))))

(declare-fun c!738947 () Bool)

(declare-fun call!302157 () Bool)

(declare-fun bm!302152 () Bool)

(assert (=> bm!302152 (= call!302157 (forall!9031 (ite c!738947 (toList!2858 (+!546 lt!1560203 lt!1560201)) (t!355843 lt!1560200)) (ite c!738947 lambda!138288 lambda!138290)))))

(declare-fun b!4346193 () Bool)

(declare-fun res!1784603 () Bool)

(declare-fun e!2704569 () Bool)

(assert (=> b!4346193 (=> (not res!1784603) (not e!2704569))))

(assert (=> b!4346193 (= res!1784603 (forall!9031 (toList!2858 (+!546 lt!1560203 lt!1560201)) lambda!138291))))

(assert (=> d!1283266 e!2704569))

(declare-fun res!1784604 () Bool)

(assert (=> d!1283266 (=> (not res!1784604) (not e!2704569))))

(assert (=> d!1283266 (= res!1784604 (forall!9031 lt!1560200 lambda!138291))))

(declare-fun e!2704571 () ListMap!2101)

(assert (=> d!1283266 (= lt!1560571 e!2704571)))

(assert (=> d!1283266 (= c!738947 ((_ is Nil!48799) lt!1560200))))

(assert (=> d!1283266 (noDuplicateKeys!437 lt!1560200)))

(assert (=> d!1283266 (= (addToMapMapFromBucket!145 lt!1560200 (+!546 lt!1560203 lt!1560201)) lt!1560571)))

(assert (=> b!4346194 (= e!2704571 lt!1560558)))

(declare-fun lt!1560563 () ListMap!2101)

(assert (=> b!4346194 (= lt!1560563 (+!546 (+!546 lt!1560203 lt!1560201) (h!54322 lt!1560200)))))

(assert (=> b!4346194 (= lt!1560558 (addToMapMapFromBucket!145 (t!355843 lt!1560200) (+!546 (+!546 lt!1560203 lt!1560201) (h!54322 lt!1560200))))))

(declare-fun lt!1560568 () Unit!70517)

(assert (=> b!4346194 (= lt!1560568 call!302158)))

(assert (=> b!4346194 (forall!9031 (toList!2858 (+!546 lt!1560203 lt!1560201)) lambda!138289)))

(declare-fun lt!1560572 () Unit!70517)

(assert (=> b!4346194 (= lt!1560572 lt!1560568)))

(assert (=> b!4346194 (forall!9031 (toList!2858 lt!1560563) lambda!138290)))

(declare-fun lt!1560567 () Unit!70517)

(declare-fun Unit!70548 () Unit!70517)

(assert (=> b!4346194 (= lt!1560567 Unit!70548)))

(assert (=> b!4346194 call!302157))

(declare-fun lt!1560570 () Unit!70517)

(declare-fun Unit!70549 () Unit!70517)

(assert (=> b!4346194 (= lt!1560570 Unit!70549)))

(declare-fun lt!1560566 () Unit!70517)

(declare-fun Unit!70550 () Unit!70517)

(assert (=> b!4346194 (= lt!1560566 Unit!70550)))

(declare-fun lt!1560560 () Unit!70517)

(declare-fun forallContained!1681 (List!48923 Int tuple2!48118) Unit!70517)

(assert (=> b!4346194 (= lt!1560560 (forallContained!1681 (toList!2858 lt!1560563) lambda!138290 (h!54322 lt!1560200)))))

(assert (=> b!4346194 (contains!10932 lt!1560563 (_1!27353 (h!54322 lt!1560200)))))

(declare-fun lt!1560557 () Unit!70517)

(declare-fun Unit!70551 () Unit!70517)

(assert (=> b!4346194 (= lt!1560557 Unit!70551)))

(assert (=> b!4346194 (contains!10932 lt!1560558 (_1!27353 (h!54322 lt!1560200)))))

(declare-fun lt!1560561 () Unit!70517)

(declare-fun Unit!70552 () Unit!70517)

(assert (=> b!4346194 (= lt!1560561 Unit!70552)))

(declare-fun call!302156 () Bool)

(assert (=> b!4346194 call!302156))

(declare-fun lt!1560576 () Unit!70517)

(declare-fun Unit!70553 () Unit!70517)

(assert (=> b!4346194 (= lt!1560576 Unit!70553)))

(assert (=> b!4346194 (forall!9031 (toList!2858 lt!1560563) lambda!138290)))

(declare-fun lt!1560559 () Unit!70517)

(declare-fun Unit!70554 () Unit!70517)

(assert (=> b!4346194 (= lt!1560559 Unit!70554)))

(declare-fun lt!1560574 () Unit!70517)

(declare-fun Unit!70555 () Unit!70517)

(assert (=> b!4346194 (= lt!1560574 Unit!70555)))

(declare-fun lt!1560575 () Unit!70517)

(declare-fun addForallContainsKeyThenBeforeAdding!43 (ListMap!2101 ListMap!2101 K!10160 V!10406) Unit!70517)

(assert (=> b!4346194 (= lt!1560575 (addForallContainsKeyThenBeforeAdding!43 (+!546 lt!1560203 lt!1560201) lt!1560558 (_1!27353 (h!54322 lt!1560200)) (_2!27353 (h!54322 lt!1560200))))))

(assert (=> b!4346194 (forall!9031 (toList!2858 (+!546 lt!1560203 lt!1560201)) lambda!138290)))

(declare-fun lt!1560564 () Unit!70517)

(assert (=> b!4346194 (= lt!1560564 lt!1560575)))

(assert (=> b!4346194 (forall!9031 (toList!2858 (+!546 lt!1560203 lt!1560201)) lambda!138290)))

(declare-fun lt!1560565 () Unit!70517)

(declare-fun Unit!70556 () Unit!70517)

(assert (=> b!4346194 (= lt!1560565 Unit!70556)))

(declare-fun res!1784605 () Bool)

(assert (=> b!4346194 (= res!1784605 (forall!9031 lt!1560200 lambda!138290))))

(declare-fun e!2704570 () Bool)

(assert (=> b!4346194 (=> (not res!1784605) (not e!2704570))))

(assert (=> b!4346194 e!2704570))

(declare-fun lt!1560573 () Unit!70517)

(declare-fun Unit!70557 () Unit!70517)

(assert (=> b!4346194 (= lt!1560573 Unit!70557)))

(assert (=> b!4346195 (= e!2704571 (+!546 lt!1560203 lt!1560201))))

(declare-fun lt!1560569 () Unit!70517)

(assert (=> b!4346195 (= lt!1560569 call!302158)))

(assert (=> b!4346195 call!302156))

(declare-fun lt!1560556 () Unit!70517)

(assert (=> b!4346195 (= lt!1560556 lt!1560569)))

(assert (=> b!4346195 call!302157))

(declare-fun lt!1560562 () Unit!70517)

(declare-fun Unit!70558 () Unit!70517)

(assert (=> b!4346195 (= lt!1560562 Unit!70558)))

(declare-fun bm!302153 () Bool)

(assert (=> bm!302153 (= call!302156 (forall!9031 (ite c!738947 (toList!2858 (+!546 lt!1560203 lt!1560201)) lt!1560200) (ite c!738947 lambda!138288 lambda!138290)))))

(declare-fun b!4346196 () Bool)

(assert (=> b!4346196 (= e!2704569 (invariantList!650 (toList!2858 lt!1560571)))))

(declare-fun b!4346197 () Bool)

(assert (=> b!4346197 (= e!2704570 (forall!9031 (toList!2858 (+!546 lt!1560203 lt!1560201)) lambda!138290))))

(assert (= (and d!1283266 c!738947) b!4346195))

(assert (= (and d!1283266 (not c!738947)) b!4346194))

(assert (= (and b!4346194 res!1784605) b!4346197))

(assert (= (or b!4346195 b!4346194) bm!302151))

(assert (= (or b!4346195 b!4346194) bm!302152))

(assert (= (or b!4346195 b!4346194) bm!302153))

(assert (= (and d!1283266 res!1784604) b!4346193))

(assert (= (and b!4346193 res!1784603) b!4346196))

(declare-fun m!4954017 () Bool)

(assert (=> b!4346196 m!4954017))

(assert (=> b!4346194 m!4953489))

(declare-fun m!4954019 () Bool)

(assert (=> b!4346194 m!4954019))

(declare-fun m!4954021 () Bool)

(assert (=> b!4346194 m!4954021))

(declare-fun m!4954023 () Bool)

(assert (=> b!4346194 m!4954023))

(declare-fun m!4954025 () Bool)

(assert (=> b!4346194 m!4954025))

(declare-fun m!4954027 () Bool)

(assert (=> b!4346194 m!4954027))

(assert (=> b!4346194 m!4954023))

(assert (=> b!4346194 m!4954025))

(assert (=> b!4346194 m!4953489))

(declare-fun m!4954029 () Bool)

(assert (=> b!4346194 m!4954029))

(declare-fun m!4954031 () Bool)

(assert (=> b!4346194 m!4954031))

(declare-fun m!4954033 () Bool)

(assert (=> b!4346194 m!4954033))

(declare-fun m!4954035 () Bool)

(assert (=> b!4346194 m!4954035))

(assert (=> b!4346194 m!4954029))

(declare-fun m!4954037 () Bool)

(assert (=> b!4346194 m!4954037))

(assert (=> bm!302151 m!4953489))

(declare-fun m!4954039 () Bool)

(assert (=> bm!302151 m!4954039))

(declare-fun m!4954041 () Bool)

(assert (=> bm!302152 m!4954041))

(declare-fun m!4954043 () Bool)

(assert (=> b!4346193 m!4954043))

(declare-fun m!4954045 () Bool)

(assert (=> bm!302153 m!4954045))

(declare-fun m!4954047 () Bool)

(assert (=> d!1283266 m!4954047))

(declare-fun m!4954049 () Bool)

(assert (=> d!1283266 m!4954049))

(assert (=> b!4346197 m!4954025))

(assert (=> b!4345940 d!1283266))

(declare-fun d!1283302 () Bool)

(assert (=> d!1283302 (= (contains!10932 lt!1560193 key!3918) (contains!10932 lt!1560182 key!3918))))

(declare-fun lt!1560579 () Unit!70517)

(declare-fun choose!26666 (ListMap!2101 ListMap!2101 K!10160) Unit!70517)

(assert (=> d!1283302 (= lt!1560579 (choose!26666 lt!1560193 lt!1560182 key!3918))))

(assert (=> d!1283302 (eq!227 lt!1560193 lt!1560182)))

(assert (=> d!1283302 (= (lemmaEquivalentThenSameContains!88 lt!1560193 lt!1560182 key!3918) lt!1560579)))

(declare-fun bs!627687 () Bool)

(assert (= bs!627687 d!1283302))

(assert (=> bs!627687 m!4953493))

(assert (=> bs!627687 m!4953471))

(declare-fun m!4954069 () Bool)

(assert (=> bs!627687 m!4954069))

(assert (=> bs!627687 m!4953487))

(assert (=> b!4345940 d!1283302))

(declare-fun d!1283318 () Bool)

(assert (=> d!1283318 (= (tail!6935 newBucket!200) (t!355843 newBucket!200))))

(assert (=> b!4345940 d!1283318))

(declare-fun bs!627688 () Bool)

(declare-fun b!4346218 () Bool)

(assert (= bs!627688 (and b!4346218 b!4346194)))

(declare-fun lambda!138292 () Int)

(assert (=> bs!627688 (= (= lt!1560203 (+!546 lt!1560203 lt!1560201)) (= lambda!138292 lambda!138289))))

(declare-fun bs!627689 () Bool)

(assert (= bs!627689 (and b!4346218 b!4346195)))

(assert (=> bs!627689 (= (= lt!1560203 (+!546 lt!1560203 lt!1560201)) (= lambda!138292 lambda!138288))))

(declare-fun bs!627690 () Bool)

(assert (= bs!627690 (and b!4346218 d!1283238)))

(assert (=> bs!627690 (not (= lambda!138292 lambda!138198))))

(assert (=> bs!627688 (= (= lt!1560203 lt!1560558) (= lambda!138292 lambda!138290))))

(declare-fun bs!627691 () Bool)

(assert (= bs!627691 (and b!4346218 d!1283266)))

(assert (=> bs!627691 (= (= lt!1560203 lt!1560571) (= lambda!138292 lambda!138291))))

(assert (=> b!4346218 true))

(declare-fun bs!627692 () Bool)

(declare-fun b!4346217 () Bool)

(assert (= bs!627692 (and b!4346217 b!4346194)))

(declare-fun lambda!138293 () Int)

(assert (=> bs!627692 (= (= lt!1560203 (+!546 lt!1560203 lt!1560201)) (= lambda!138293 lambda!138289))))

(declare-fun bs!627693 () Bool)

(assert (= bs!627693 (and b!4346217 b!4346195)))

(assert (=> bs!627693 (= (= lt!1560203 (+!546 lt!1560203 lt!1560201)) (= lambda!138293 lambda!138288))))

(declare-fun bs!627694 () Bool)

(assert (= bs!627694 (and b!4346217 d!1283238)))

(assert (=> bs!627694 (not (= lambda!138293 lambda!138198))))

(declare-fun bs!627695 () Bool)

(assert (= bs!627695 (and b!4346217 b!4346218)))

(assert (=> bs!627695 (= lambda!138293 lambda!138292)))

(assert (=> bs!627692 (= (= lt!1560203 lt!1560558) (= lambda!138293 lambda!138290))))

(declare-fun bs!627696 () Bool)

(assert (= bs!627696 (and b!4346217 d!1283266)))

(assert (=> bs!627696 (= (= lt!1560203 lt!1560571) (= lambda!138293 lambda!138291))))

(assert (=> b!4346217 true))

(declare-fun lt!1560582 () ListMap!2101)

(declare-fun lambda!138294 () Int)

(assert (=> bs!627692 (= (= lt!1560582 (+!546 lt!1560203 lt!1560201)) (= lambda!138294 lambda!138289))))

(assert (=> bs!627693 (= (= lt!1560582 (+!546 lt!1560203 lt!1560201)) (= lambda!138294 lambda!138288))))

(assert (=> bs!627694 (not (= lambda!138294 lambda!138198))))

(assert (=> bs!627695 (= (= lt!1560582 lt!1560203) (= lambda!138294 lambda!138292))))

(assert (=> bs!627692 (= (= lt!1560582 lt!1560558) (= lambda!138294 lambda!138290))))

(assert (=> bs!627696 (= (= lt!1560582 lt!1560571) (= lambda!138294 lambda!138291))))

(assert (=> b!4346217 (= (= lt!1560582 lt!1560203) (= lambda!138294 lambda!138293))))

(assert (=> b!4346217 true))

(declare-fun bs!627697 () Bool)

(declare-fun d!1283320 () Bool)

(assert (= bs!627697 (and d!1283320 b!4346194)))

(declare-fun lt!1560595 () ListMap!2101)

(declare-fun lambda!138295 () Int)

(assert (=> bs!627697 (= (= lt!1560595 (+!546 lt!1560203 lt!1560201)) (= lambda!138295 lambda!138289))))

(declare-fun bs!627698 () Bool)

(assert (= bs!627698 (and d!1283320 b!4346195)))

(assert (=> bs!627698 (= (= lt!1560595 (+!546 lt!1560203 lt!1560201)) (= lambda!138295 lambda!138288))))

(declare-fun bs!627699 () Bool)

(assert (= bs!627699 (and d!1283320 d!1283238)))

(assert (=> bs!627699 (not (= lambda!138295 lambda!138198))))

(declare-fun bs!627700 () Bool)

(assert (= bs!627700 (and d!1283320 b!4346218)))

(assert (=> bs!627700 (= (= lt!1560595 lt!1560203) (= lambda!138295 lambda!138292))))

(assert (=> bs!627697 (= (= lt!1560595 lt!1560558) (= lambda!138295 lambda!138290))))

(declare-fun bs!627701 () Bool)

(assert (= bs!627701 (and d!1283320 b!4346217)))

(assert (=> bs!627701 (= (= lt!1560595 lt!1560203) (= lambda!138295 lambda!138293))))

(assert (=> bs!627701 (= (= lt!1560595 lt!1560582) (= lambda!138295 lambda!138294))))

(declare-fun bs!627702 () Bool)

(assert (= bs!627702 (and d!1283320 d!1283266)))

(assert (=> bs!627702 (= (= lt!1560595 lt!1560571) (= lambda!138295 lambda!138291))))

(assert (=> d!1283320 true))

(declare-fun bm!302154 () Bool)

(declare-fun call!302161 () Unit!70517)

(assert (=> bm!302154 (= call!302161 (lemmaContainsAllItsOwnKeys!43 lt!1560203))))

(declare-fun c!738948 () Bool)

(declare-fun call!302160 () Bool)

(declare-fun bm!302155 () Bool)

(assert (=> bm!302155 (= call!302160 (forall!9031 (ite c!738948 (toList!2858 lt!1560203) (t!355843 newBucket!200)) (ite c!738948 lambda!138292 lambda!138294)))))

(declare-fun b!4346216 () Bool)

(declare-fun res!1784612 () Bool)

(declare-fun e!2704584 () Bool)

(assert (=> b!4346216 (=> (not res!1784612) (not e!2704584))))

(assert (=> b!4346216 (= res!1784612 (forall!9031 (toList!2858 lt!1560203) lambda!138295))))

(assert (=> d!1283320 e!2704584))

(declare-fun res!1784613 () Bool)

(assert (=> d!1283320 (=> (not res!1784613) (not e!2704584))))

(assert (=> d!1283320 (= res!1784613 (forall!9031 newBucket!200 lambda!138295))))

(declare-fun e!2704586 () ListMap!2101)

(assert (=> d!1283320 (= lt!1560595 e!2704586)))

(assert (=> d!1283320 (= c!738948 ((_ is Nil!48799) newBucket!200))))

(assert (=> d!1283320 (noDuplicateKeys!437 newBucket!200)))

(assert (=> d!1283320 (= (addToMapMapFromBucket!145 newBucket!200 lt!1560203) lt!1560595)))

(assert (=> b!4346217 (= e!2704586 lt!1560582)))

(declare-fun lt!1560587 () ListMap!2101)

(assert (=> b!4346217 (= lt!1560587 (+!546 lt!1560203 (h!54322 newBucket!200)))))

(assert (=> b!4346217 (= lt!1560582 (addToMapMapFromBucket!145 (t!355843 newBucket!200) (+!546 lt!1560203 (h!54322 newBucket!200))))))

(declare-fun lt!1560592 () Unit!70517)

(assert (=> b!4346217 (= lt!1560592 call!302161)))

(assert (=> b!4346217 (forall!9031 (toList!2858 lt!1560203) lambda!138293)))

(declare-fun lt!1560596 () Unit!70517)

(assert (=> b!4346217 (= lt!1560596 lt!1560592)))

(assert (=> b!4346217 (forall!9031 (toList!2858 lt!1560587) lambda!138294)))

(declare-fun lt!1560591 () Unit!70517)

(declare-fun Unit!70561 () Unit!70517)

(assert (=> b!4346217 (= lt!1560591 Unit!70561)))

(assert (=> b!4346217 call!302160))

(declare-fun lt!1560594 () Unit!70517)

(declare-fun Unit!70562 () Unit!70517)

(assert (=> b!4346217 (= lt!1560594 Unit!70562)))

(declare-fun lt!1560590 () Unit!70517)

(declare-fun Unit!70563 () Unit!70517)

(assert (=> b!4346217 (= lt!1560590 Unit!70563)))

(declare-fun lt!1560584 () Unit!70517)

(assert (=> b!4346217 (= lt!1560584 (forallContained!1681 (toList!2858 lt!1560587) lambda!138294 (h!54322 newBucket!200)))))

(assert (=> b!4346217 (contains!10932 lt!1560587 (_1!27353 (h!54322 newBucket!200)))))

(declare-fun lt!1560581 () Unit!70517)

(declare-fun Unit!70564 () Unit!70517)

(assert (=> b!4346217 (= lt!1560581 Unit!70564)))

(assert (=> b!4346217 (contains!10932 lt!1560582 (_1!27353 (h!54322 newBucket!200)))))

(declare-fun lt!1560585 () Unit!70517)

(declare-fun Unit!70565 () Unit!70517)

(assert (=> b!4346217 (= lt!1560585 Unit!70565)))

(declare-fun call!302159 () Bool)

(assert (=> b!4346217 call!302159))

(declare-fun lt!1560600 () Unit!70517)

(declare-fun Unit!70566 () Unit!70517)

(assert (=> b!4346217 (= lt!1560600 Unit!70566)))

(assert (=> b!4346217 (forall!9031 (toList!2858 lt!1560587) lambda!138294)))

(declare-fun lt!1560583 () Unit!70517)

(declare-fun Unit!70567 () Unit!70517)

(assert (=> b!4346217 (= lt!1560583 Unit!70567)))

(declare-fun lt!1560598 () Unit!70517)

(declare-fun Unit!70568 () Unit!70517)

(assert (=> b!4346217 (= lt!1560598 Unit!70568)))

(declare-fun lt!1560599 () Unit!70517)

(assert (=> b!4346217 (= lt!1560599 (addForallContainsKeyThenBeforeAdding!43 lt!1560203 lt!1560582 (_1!27353 (h!54322 newBucket!200)) (_2!27353 (h!54322 newBucket!200))))))

(assert (=> b!4346217 (forall!9031 (toList!2858 lt!1560203) lambda!138294)))

(declare-fun lt!1560588 () Unit!70517)

(assert (=> b!4346217 (= lt!1560588 lt!1560599)))

(assert (=> b!4346217 (forall!9031 (toList!2858 lt!1560203) lambda!138294)))

(declare-fun lt!1560589 () Unit!70517)

(declare-fun Unit!70569 () Unit!70517)

(assert (=> b!4346217 (= lt!1560589 Unit!70569)))

(declare-fun res!1784614 () Bool)

(assert (=> b!4346217 (= res!1784614 (forall!9031 newBucket!200 lambda!138294))))

(declare-fun e!2704585 () Bool)

(assert (=> b!4346217 (=> (not res!1784614) (not e!2704585))))

(assert (=> b!4346217 e!2704585))

(declare-fun lt!1560597 () Unit!70517)

(declare-fun Unit!70570 () Unit!70517)

(assert (=> b!4346217 (= lt!1560597 Unit!70570)))

(assert (=> b!4346218 (= e!2704586 lt!1560203)))

(declare-fun lt!1560593 () Unit!70517)

(assert (=> b!4346218 (= lt!1560593 call!302161)))

(assert (=> b!4346218 call!302159))

(declare-fun lt!1560580 () Unit!70517)

(assert (=> b!4346218 (= lt!1560580 lt!1560593)))

(assert (=> b!4346218 call!302160))

(declare-fun lt!1560586 () Unit!70517)

(declare-fun Unit!70571 () Unit!70517)

(assert (=> b!4346218 (= lt!1560586 Unit!70571)))

(declare-fun bm!302156 () Bool)

(assert (=> bm!302156 (= call!302159 (forall!9031 (ite c!738948 (toList!2858 lt!1560203) newBucket!200) (ite c!738948 lambda!138292 lambda!138294)))))

(declare-fun b!4346219 () Bool)

(assert (=> b!4346219 (= e!2704584 (invariantList!650 (toList!2858 lt!1560595)))))

(declare-fun b!4346220 () Bool)

(assert (=> b!4346220 (= e!2704585 (forall!9031 (toList!2858 lt!1560203) lambda!138294))))

(assert (= (and d!1283320 c!738948) b!4346218))

(assert (= (and d!1283320 (not c!738948)) b!4346217))

(assert (= (and b!4346217 res!1784614) b!4346220))

(assert (= (or b!4346218 b!4346217) bm!302154))

(assert (= (or b!4346218 b!4346217) bm!302155))

(assert (= (or b!4346218 b!4346217) bm!302156))

(assert (= (and d!1283320 res!1784613) b!4346216))

(assert (= (and b!4346216 res!1784612) b!4346219))

(declare-fun m!4954071 () Bool)

(assert (=> b!4346219 m!4954071))

(declare-fun m!4954073 () Bool)

(assert (=> b!4346217 m!4954073))

(declare-fun m!4954075 () Bool)

(assert (=> b!4346217 m!4954075))

(declare-fun m!4954077 () Bool)

(assert (=> b!4346217 m!4954077))

(declare-fun m!4954079 () Bool)

(assert (=> b!4346217 m!4954079))

(declare-fun m!4954081 () Bool)

(assert (=> b!4346217 m!4954081))

(assert (=> b!4346217 m!4954077))

(assert (=> b!4346217 m!4954079))

(declare-fun m!4954083 () Bool)

(assert (=> b!4346217 m!4954083))

(declare-fun m!4954085 () Bool)

(assert (=> b!4346217 m!4954085))

(declare-fun m!4954087 () Bool)

(assert (=> b!4346217 m!4954087))

(declare-fun m!4954089 () Bool)

(assert (=> b!4346217 m!4954089))

(assert (=> b!4346217 m!4954083))

(declare-fun m!4954091 () Bool)

(assert (=> b!4346217 m!4954091))

(declare-fun m!4954093 () Bool)

(assert (=> bm!302154 m!4954093))

(declare-fun m!4954095 () Bool)

(assert (=> bm!302155 m!4954095))

(declare-fun m!4954097 () Bool)

(assert (=> b!4346216 m!4954097))

(declare-fun m!4954099 () Bool)

(assert (=> bm!302156 m!4954099))

(declare-fun m!4954101 () Bool)

(assert (=> d!1283320 m!4954101))

(assert (=> d!1283320 m!4953469))

(assert (=> b!4346220 m!4954079))

(assert (=> b!4345940 d!1283320))

(declare-fun bs!627703 () Bool)

(declare-fun d!1283322 () Bool)

(assert (= bs!627703 (and d!1283322 start!419480)))

(declare-fun lambda!138296 () Int)

(assert (=> bs!627703 (= lambda!138296 lambda!138189)))

(declare-fun bs!627704 () Bool)

(assert (= bs!627704 (and d!1283322 d!1283256)))

(assert (=> bs!627704 (= lambda!138296 lambda!138208)))

(declare-fun bs!627705 () Bool)

(assert (= bs!627705 (and d!1283322 d!1283260)))

(assert (=> bs!627705 (= lambda!138296 lambda!138209)))

(declare-fun lt!1560601 () ListMap!2101)

(assert (=> d!1283322 (invariantList!650 (toList!2858 lt!1560601))))

(declare-fun e!2704587 () ListMap!2101)

(assert (=> d!1283322 (= lt!1560601 e!2704587)))

(declare-fun c!738949 () Bool)

(assert (=> d!1283322 (= c!738949 ((_ is Cons!48800) (toList!2857 lt!1560195)))))

(assert (=> d!1283322 (forall!9029 (toList!2857 lt!1560195) lambda!138296)))

(assert (=> d!1283322 (= (extractMap!496 (toList!2857 lt!1560195)) lt!1560601)))

(declare-fun b!4346221 () Bool)

(assert (=> b!4346221 (= e!2704587 (addToMapMapFromBucket!145 (_2!27354 (h!54323 (toList!2857 lt!1560195))) (extractMap!496 (t!355844 (toList!2857 lt!1560195)))))))

(declare-fun b!4346222 () Bool)

(assert (=> b!4346222 (= e!2704587 (ListMap!2102 Nil!48799))))

(assert (= (and d!1283322 c!738949) b!4346221))

(assert (= (and d!1283322 (not c!738949)) b!4346222))

(declare-fun m!4954103 () Bool)

(assert (=> d!1283322 m!4954103))

(declare-fun m!4954105 () Bool)

(assert (=> d!1283322 m!4954105))

(declare-fun m!4954107 () Bool)

(assert (=> b!4346221 m!4954107))

(assert (=> b!4346221 m!4954107))

(declare-fun m!4954109 () Bool)

(assert (=> b!4346221 m!4954109))

(assert (=> b!4345940 d!1283322))

(declare-fun bs!627706 () Bool)

(declare-fun b!4346225 () Bool)

(assert (= bs!627706 (and b!4346225 b!4346194)))

(declare-fun lambda!138297 () Int)

(assert (=> bs!627706 (= (= lt!1560203 (+!546 lt!1560203 lt!1560201)) (= lambda!138297 lambda!138289))))

(declare-fun bs!627707 () Bool)

(assert (= bs!627707 (and b!4346225 b!4346195)))

(assert (=> bs!627707 (= (= lt!1560203 (+!546 lt!1560203 lt!1560201)) (= lambda!138297 lambda!138288))))

(declare-fun bs!627708 () Bool)

(assert (= bs!627708 (and b!4346225 d!1283238)))

(assert (=> bs!627708 (not (= lambda!138297 lambda!138198))))

(declare-fun bs!627709 () Bool)

(assert (= bs!627709 (and b!4346225 b!4346218)))

(assert (=> bs!627709 (= lambda!138297 lambda!138292)))

(declare-fun bs!627710 () Bool)

(assert (= bs!627710 (and b!4346225 b!4346217)))

(assert (=> bs!627710 (= lambda!138297 lambda!138293)))

(declare-fun bs!627711 () Bool)

(assert (= bs!627711 (and b!4346225 d!1283320)))

(assert (=> bs!627711 (= (= lt!1560203 lt!1560595) (= lambda!138297 lambda!138295))))

(assert (=> bs!627706 (= (= lt!1560203 lt!1560558) (= lambda!138297 lambda!138290))))

(assert (=> bs!627710 (= (= lt!1560203 lt!1560582) (= lambda!138297 lambda!138294))))

(declare-fun bs!627712 () Bool)

(assert (= bs!627712 (and b!4346225 d!1283266)))

(assert (=> bs!627712 (= (= lt!1560203 lt!1560571) (= lambda!138297 lambda!138291))))

(assert (=> b!4346225 true))

(declare-fun bs!627713 () Bool)

(declare-fun b!4346224 () Bool)

(assert (= bs!627713 (and b!4346224 b!4346194)))

(declare-fun lambda!138298 () Int)

(assert (=> bs!627713 (= (= lt!1560203 (+!546 lt!1560203 lt!1560201)) (= lambda!138298 lambda!138289))))

(declare-fun bs!627714 () Bool)

(assert (= bs!627714 (and b!4346224 b!4346195)))

(assert (=> bs!627714 (= (= lt!1560203 (+!546 lt!1560203 lt!1560201)) (= lambda!138298 lambda!138288))))

(declare-fun bs!627715 () Bool)

(assert (= bs!627715 (and b!4346224 d!1283238)))

(assert (=> bs!627715 (not (= lambda!138298 lambda!138198))))

(declare-fun bs!627716 () Bool)

(assert (= bs!627716 (and b!4346224 b!4346218)))

(assert (=> bs!627716 (= lambda!138298 lambda!138292)))

(declare-fun bs!627717 () Bool)

(assert (= bs!627717 (and b!4346224 b!4346217)))

(assert (=> bs!627717 (= lambda!138298 lambda!138293)))

(declare-fun bs!627718 () Bool)

(assert (= bs!627718 (and b!4346224 b!4346225)))

(assert (=> bs!627718 (= lambda!138298 lambda!138297)))

(declare-fun bs!627719 () Bool)

(assert (= bs!627719 (and b!4346224 d!1283320)))

(assert (=> bs!627719 (= (= lt!1560203 lt!1560595) (= lambda!138298 lambda!138295))))

(assert (=> bs!627713 (= (= lt!1560203 lt!1560558) (= lambda!138298 lambda!138290))))

(assert (=> bs!627717 (= (= lt!1560203 lt!1560582) (= lambda!138298 lambda!138294))))

(declare-fun bs!627720 () Bool)

(assert (= bs!627720 (and b!4346224 d!1283266)))

(assert (=> bs!627720 (= (= lt!1560203 lt!1560571) (= lambda!138298 lambda!138291))))

(assert (=> b!4346224 true))

(declare-fun lambda!138299 () Int)

(declare-fun lt!1560604 () ListMap!2101)

(assert (=> bs!627713 (= (= lt!1560604 (+!546 lt!1560203 lt!1560201)) (= lambda!138299 lambda!138289))))

(assert (=> bs!627714 (= (= lt!1560604 (+!546 lt!1560203 lt!1560201)) (= lambda!138299 lambda!138288))))

(assert (=> bs!627715 (not (= lambda!138299 lambda!138198))))

(assert (=> bs!627716 (= (= lt!1560604 lt!1560203) (= lambda!138299 lambda!138292))))

(assert (=> b!4346224 (= (= lt!1560604 lt!1560203) (= lambda!138299 lambda!138298))))

(assert (=> bs!627717 (= (= lt!1560604 lt!1560203) (= lambda!138299 lambda!138293))))

(assert (=> bs!627718 (= (= lt!1560604 lt!1560203) (= lambda!138299 lambda!138297))))

(assert (=> bs!627719 (= (= lt!1560604 lt!1560595) (= lambda!138299 lambda!138295))))

(assert (=> bs!627713 (= (= lt!1560604 lt!1560558) (= lambda!138299 lambda!138290))))

(assert (=> bs!627717 (= (= lt!1560604 lt!1560582) (= lambda!138299 lambda!138294))))

(assert (=> bs!627720 (= (= lt!1560604 lt!1560571) (= lambda!138299 lambda!138291))))

(assert (=> b!4346224 true))

(declare-fun bs!627721 () Bool)

(declare-fun d!1283324 () Bool)

(assert (= bs!627721 (and d!1283324 b!4346194)))

(declare-fun lt!1560617 () ListMap!2101)

(declare-fun lambda!138300 () Int)

(assert (=> bs!627721 (= (= lt!1560617 (+!546 lt!1560203 lt!1560201)) (= lambda!138300 lambda!138289))))

(declare-fun bs!627722 () Bool)

(assert (= bs!627722 (and d!1283324 b!4346195)))

(assert (=> bs!627722 (= (= lt!1560617 (+!546 lt!1560203 lt!1560201)) (= lambda!138300 lambda!138288))))

(declare-fun bs!627723 () Bool)

(assert (= bs!627723 (and d!1283324 d!1283238)))

(assert (=> bs!627723 (not (= lambda!138300 lambda!138198))))

(declare-fun bs!627724 () Bool)

(assert (= bs!627724 (and d!1283324 b!4346218)))

(assert (=> bs!627724 (= (= lt!1560617 lt!1560203) (= lambda!138300 lambda!138292))))

(declare-fun bs!627725 () Bool)

(assert (= bs!627725 (and d!1283324 b!4346224)))

(assert (=> bs!627725 (= (= lt!1560617 lt!1560604) (= lambda!138300 lambda!138299))))

(assert (=> bs!627725 (= (= lt!1560617 lt!1560203) (= lambda!138300 lambda!138298))))

(declare-fun bs!627726 () Bool)

(assert (= bs!627726 (and d!1283324 b!4346217)))

(assert (=> bs!627726 (= (= lt!1560617 lt!1560203) (= lambda!138300 lambda!138293))))

(declare-fun bs!627727 () Bool)

(assert (= bs!627727 (and d!1283324 b!4346225)))

(assert (=> bs!627727 (= (= lt!1560617 lt!1560203) (= lambda!138300 lambda!138297))))

(declare-fun bs!627728 () Bool)

(assert (= bs!627728 (and d!1283324 d!1283320)))

(assert (=> bs!627728 (= (= lt!1560617 lt!1560595) (= lambda!138300 lambda!138295))))

(assert (=> bs!627721 (= (= lt!1560617 lt!1560558) (= lambda!138300 lambda!138290))))

(assert (=> bs!627726 (= (= lt!1560617 lt!1560582) (= lambda!138300 lambda!138294))))

(declare-fun bs!627729 () Bool)

(assert (= bs!627729 (and d!1283324 d!1283266)))

(assert (=> bs!627729 (= (= lt!1560617 lt!1560571) (= lambda!138300 lambda!138291))))

(assert (=> d!1283324 true))

(declare-fun bm!302157 () Bool)

(declare-fun call!302164 () Unit!70517)

(assert (=> bm!302157 (= call!302164 (lemmaContainsAllItsOwnKeys!43 lt!1560203))))

(declare-fun call!302163 () Bool)

(declare-fun bm!302158 () Bool)

(declare-fun c!738950 () Bool)

(assert (=> bm!302158 (= call!302163 (forall!9031 (ite c!738950 (toList!2858 lt!1560203) (t!355843 lt!1560197)) (ite c!738950 lambda!138297 lambda!138299)))))

(declare-fun b!4346223 () Bool)

(declare-fun res!1784615 () Bool)

(declare-fun e!2704588 () Bool)

(assert (=> b!4346223 (=> (not res!1784615) (not e!2704588))))

(assert (=> b!4346223 (= res!1784615 (forall!9031 (toList!2858 lt!1560203) lambda!138300))))

(assert (=> d!1283324 e!2704588))

(declare-fun res!1784616 () Bool)

(assert (=> d!1283324 (=> (not res!1784616) (not e!2704588))))

(assert (=> d!1283324 (= res!1784616 (forall!9031 lt!1560197 lambda!138300))))

(declare-fun e!2704590 () ListMap!2101)

(assert (=> d!1283324 (= lt!1560617 e!2704590)))

(assert (=> d!1283324 (= c!738950 ((_ is Nil!48799) lt!1560197))))

(assert (=> d!1283324 (noDuplicateKeys!437 lt!1560197)))

(assert (=> d!1283324 (= (addToMapMapFromBucket!145 lt!1560197 lt!1560203) lt!1560617)))

(assert (=> b!4346224 (= e!2704590 lt!1560604)))

(declare-fun lt!1560609 () ListMap!2101)

(assert (=> b!4346224 (= lt!1560609 (+!546 lt!1560203 (h!54322 lt!1560197)))))

(assert (=> b!4346224 (= lt!1560604 (addToMapMapFromBucket!145 (t!355843 lt!1560197) (+!546 lt!1560203 (h!54322 lt!1560197))))))

(declare-fun lt!1560614 () Unit!70517)

(assert (=> b!4346224 (= lt!1560614 call!302164)))

(assert (=> b!4346224 (forall!9031 (toList!2858 lt!1560203) lambda!138298)))

(declare-fun lt!1560618 () Unit!70517)

(assert (=> b!4346224 (= lt!1560618 lt!1560614)))

(assert (=> b!4346224 (forall!9031 (toList!2858 lt!1560609) lambda!138299)))

(declare-fun lt!1560613 () Unit!70517)

(declare-fun Unit!70582 () Unit!70517)

(assert (=> b!4346224 (= lt!1560613 Unit!70582)))

(assert (=> b!4346224 call!302163))

(declare-fun lt!1560616 () Unit!70517)

(declare-fun Unit!70583 () Unit!70517)

(assert (=> b!4346224 (= lt!1560616 Unit!70583)))

(declare-fun lt!1560612 () Unit!70517)

(declare-fun Unit!70584 () Unit!70517)

(assert (=> b!4346224 (= lt!1560612 Unit!70584)))

(declare-fun lt!1560606 () Unit!70517)

(assert (=> b!4346224 (= lt!1560606 (forallContained!1681 (toList!2858 lt!1560609) lambda!138299 (h!54322 lt!1560197)))))

(assert (=> b!4346224 (contains!10932 lt!1560609 (_1!27353 (h!54322 lt!1560197)))))

(declare-fun lt!1560603 () Unit!70517)

(declare-fun Unit!70585 () Unit!70517)

(assert (=> b!4346224 (= lt!1560603 Unit!70585)))

(assert (=> b!4346224 (contains!10932 lt!1560604 (_1!27353 (h!54322 lt!1560197)))))

(declare-fun lt!1560607 () Unit!70517)

(declare-fun Unit!70587 () Unit!70517)

(assert (=> b!4346224 (= lt!1560607 Unit!70587)))

(declare-fun call!302162 () Bool)

(assert (=> b!4346224 call!302162))

(declare-fun lt!1560622 () Unit!70517)

(declare-fun Unit!70588 () Unit!70517)

(assert (=> b!4346224 (= lt!1560622 Unit!70588)))

(assert (=> b!4346224 (forall!9031 (toList!2858 lt!1560609) lambda!138299)))

(declare-fun lt!1560605 () Unit!70517)

(declare-fun Unit!70589 () Unit!70517)

(assert (=> b!4346224 (= lt!1560605 Unit!70589)))

(declare-fun lt!1560620 () Unit!70517)

(declare-fun Unit!70590 () Unit!70517)

(assert (=> b!4346224 (= lt!1560620 Unit!70590)))

(declare-fun lt!1560621 () Unit!70517)

(assert (=> b!4346224 (= lt!1560621 (addForallContainsKeyThenBeforeAdding!43 lt!1560203 lt!1560604 (_1!27353 (h!54322 lt!1560197)) (_2!27353 (h!54322 lt!1560197))))))

(assert (=> b!4346224 (forall!9031 (toList!2858 lt!1560203) lambda!138299)))

(declare-fun lt!1560610 () Unit!70517)

(assert (=> b!4346224 (= lt!1560610 lt!1560621)))

(assert (=> b!4346224 (forall!9031 (toList!2858 lt!1560203) lambda!138299)))

(declare-fun lt!1560611 () Unit!70517)

(declare-fun Unit!70591 () Unit!70517)

(assert (=> b!4346224 (= lt!1560611 Unit!70591)))

(declare-fun res!1784617 () Bool)

(assert (=> b!4346224 (= res!1784617 (forall!9031 lt!1560197 lambda!138299))))

(declare-fun e!2704589 () Bool)

(assert (=> b!4346224 (=> (not res!1784617) (not e!2704589))))

(assert (=> b!4346224 e!2704589))

(declare-fun lt!1560619 () Unit!70517)

(declare-fun Unit!70592 () Unit!70517)

(assert (=> b!4346224 (= lt!1560619 Unit!70592)))

(assert (=> b!4346225 (= e!2704590 lt!1560203)))

(declare-fun lt!1560615 () Unit!70517)

(assert (=> b!4346225 (= lt!1560615 call!302164)))

(assert (=> b!4346225 call!302162))

(declare-fun lt!1560602 () Unit!70517)

(assert (=> b!4346225 (= lt!1560602 lt!1560615)))

(assert (=> b!4346225 call!302163))

(declare-fun lt!1560608 () Unit!70517)

(declare-fun Unit!70593 () Unit!70517)

(assert (=> b!4346225 (= lt!1560608 Unit!70593)))

(declare-fun bm!302159 () Bool)

(assert (=> bm!302159 (= call!302162 (forall!9031 (ite c!738950 (toList!2858 lt!1560203) lt!1560197) (ite c!738950 lambda!138297 lambda!138299)))))

(declare-fun b!4346226 () Bool)

(assert (=> b!4346226 (= e!2704588 (invariantList!650 (toList!2858 lt!1560617)))))

(declare-fun b!4346227 () Bool)

(assert (=> b!4346227 (= e!2704589 (forall!9031 (toList!2858 lt!1560203) lambda!138299))))

(assert (= (and d!1283324 c!738950) b!4346225))

(assert (= (and d!1283324 (not c!738950)) b!4346224))

(assert (= (and b!4346224 res!1784617) b!4346227))

(assert (= (or b!4346225 b!4346224) bm!302157))

(assert (= (or b!4346225 b!4346224) bm!302158))

(assert (= (or b!4346225 b!4346224) bm!302159))

(assert (= (and d!1283324 res!1784616) b!4346223))

(assert (= (and b!4346223 res!1784615) b!4346226))

(declare-fun m!4954111 () Bool)

(assert (=> b!4346226 m!4954111))

(declare-fun m!4954113 () Bool)

(assert (=> b!4346224 m!4954113))

(declare-fun m!4954115 () Bool)

(assert (=> b!4346224 m!4954115))

(declare-fun m!4954117 () Bool)

(assert (=> b!4346224 m!4954117))

(declare-fun m!4954119 () Bool)

(assert (=> b!4346224 m!4954119))

(declare-fun m!4954121 () Bool)

(assert (=> b!4346224 m!4954121))

(assert (=> b!4346224 m!4954117))

(assert (=> b!4346224 m!4954119))

(declare-fun m!4954123 () Bool)

(assert (=> b!4346224 m!4954123))

(declare-fun m!4954125 () Bool)

(assert (=> b!4346224 m!4954125))

(declare-fun m!4954127 () Bool)

(assert (=> b!4346224 m!4954127))

(declare-fun m!4954129 () Bool)

(assert (=> b!4346224 m!4954129))

(assert (=> b!4346224 m!4954123))

(declare-fun m!4954131 () Bool)

(assert (=> b!4346224 m!4954131))

(assert (=> bm!302157 m!4954093))

(declare-fun m!4954133 () Bool)

(assert (=> bm!302158 m!4954133))

(declare-fun m!4954135 () Bool)

(assert (=> b!4346223 m!4954135))

(declare-fun m!4954137 () Bool)

(assert (=> bm!302159 m!4954137))

(declare-fun m!4954139 () Bool)

(assert (=> d!1283324 m!4954139))

(declare-fun m!4954141 () Bool)

(assert (=> d!1283324 m!4954141))

(assert (=> b!4346227 m!4954119))

(assert (=> b!4345940 d!1283324))

(declare-fun bs!627730 () Bool)

(declare-fun d!1283326 () Bool)

(assert (= bs!627730 (and d!1283326 start!419480)))

(declare-fun lambda!138303 () Int)

(assert (=> bs!627730 (= lambda!138303 lambda!138189)))

(declare-fun bs!627731 () Bool)

(assert (= bs!627731 (and d!1283326 d!1283256)))

(assert (=> bs!627731 (= lambda!138303 lambda!138208)))

(declare-fun bs!627732 () Bool)

(assert (= bs!627732 (and d!1283326 d!1283260)))

(assert (=> bs!627732 (= lambda!138303 lambda!138209)))

(declare-fun bs!627733 () Bool)

(assert (= bs!627733 (and d!1283326 d!1283322)))

(assert (=> bs!627733 (= lambda!138303 lambda!138296)))

(assert (=> d!1283326 (eq!227 (extractMap!496 (toList!2857 (+!545 lm!1707 (tuple2!48121 hash!377 lt!1560187)))) (-!238 (extractMap!496 (toList!2857 lm!1707)) key!3918))))

(declare-fun lt!1560625 () Unit!70517)

(declare-fun choose!26669 (ListLongMap!1507 (_ BitVec 64) List!48923 K!10160 Hashable!4829) Unit!70517)

(assert (=> d!1283326 (= lt!1560625 (choose!26669 lm!1707 hash!377 lt!1560187 key!3918 hashF!1247))))

(assert (=> d!1283326 (forall!9029 (toList!2857 lm!1707) lambda!138303)))

(assert (=> d!1283326 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!53 lm!1707 hash!377 lt!1560187 key!3918 hashF!1247) lt!1560625)))

(declare-fun bs!627734 () Bool)

(assert (= bs!627734 d!1283326))

(assert (=> bs!627734 m!4953427))

(declare-fun m!4954143 () Bool)

(assert (=> bs!627734 m!4954143))

(declare-fun m!4954145 () Bool)

(assert (=> bs!627734 m!4954145))

(assert (=> bs!627734 m!4953427))

(declare-fun m!4954147 () Bool)

(assert (=> bs!627734 m!4954147))

(declare-fun m!4954149 () Bool)

(assert (=> bs!627734 m!4954149))

(assert (=> bs!627734 m!4953499))

(assert (=> bs!627734 m!4954149))

(assert (=> bs!627734 m!4954147))

(declare-fun m!4954151 () Bool)

(assert (=> bs!627734 m!4954151))

(assert (=> b!4345940 d!1283326))

(declare-fun d!1283328 () Bool)

(assert (=> d!1283328 (eq!227 (addToMapMapFromBucket!145 lt!1560200 (+!546 lt!1560203 (tuple2!48119 key!3918 newValue!99))) (+!546 (addToMapMapFromBucket!145 lt!1560200 lt!1560203) (tuple2!48119 key!3918 newValue!99)))))

(declare-fun lt!1560628 () Unit!70517)

(declare-fun choose!26670 (ListMap!2101 K!10160 V!10406 List!48923) Unit!70517)

(assert (=> d!1283328 (= lt!1560628 (choose!26670 lt!1560203 key!3918 newValue!99 lt!1560200))))

(assert (=> d!1283328 (not (containsKey!600 lt!1560200 key!3918))))

(assert (=> d!1283328 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!56 lt!1560203 key!3918 newValue!99 lt!1560200) lt!1560628)))

(declare-fun bs!627735 () Bool)

(assert (= bs!627735 d!1283328))

(declare-fun m!4954153 () Bool)

(assert (=> bs!627735 m!4954153))

(declare-fun m!4954155 () Bool)

(assert (=> bs!627735 m!4954155))

(declare-fun m!4954157 () Bool)

(assert (=> bs!627735 m!4954157))

(assert (=> bs!627735 m!4954153))

(assert (=> bs!627735 m!4954155))

(declare-fun m!4954159 () Bool)

(assert (=> bs!627735 m!4954159))

(declare-fun m!4954161 () Bool)

(assert (=> bs!627735 m!4954161))

(assert (=> bs!627735 m!4953477))

(assert (=> bs!627735 m!4954159))

(declare-fun m!4954163 () Bool)

(assert (=> bs!627735 m!4954163))

(assert (=> bs!627735 m!4953477))

(assert (=> b!4345940 d!1283328))

(declare-fun d!1283330 () Bool)

(assert (=> d!1283330 (= (eq!227 lt!1560193 lt!1560182) (= (content!7658 (toList!2858 lt!1560193)) (content!7658 (toList!2858 lt!1560182))))))

(declare-fun bs!627736 () Bool)

(assert (= bs!627736 d!1283330))

(declare-fun m!4954165 () Bool)

(assert (=> bs!627736 m!4954165))

(declare-fun m!4954167 () Bool)

(assert (=> bs!627736 m!4954167))

(assert (=> b!4345940 d!1283330))

(declare-fun d!1283332 () Bool)

(declare-fun e!2704593 () Bool)

(assert (=> d!1283332 e!2704593))

(declare-fun res!1784620 () Bool)

(assert (=> d!1283332 (=> (not res!1784620) (not e!2704593))))

(declare-fun lt!1560631 () ListMap!2101)

(assert (=> d!1283332 (= res!1784620 (not (contains!10932 lt!1560631 key!3918)))))

(declare-fun removePresrvNoDuplicatedKeys!33 (List!48923 K!10160) List!48923)

(assert (=> d!1283332 (= lt!1560631 (ListMap!2102 (removePresrvNoDuplicatedKeys!33 (toList!2858 lt!1560183) key!3918)))))

(assert (=> d!1283332 (= (-!238 lt!1560183 key!3918) lt!1560631)))

(declare-fun b!4346230 () Bool)

(declare-fun content!7660 (List!48926) (InoxSet K!10160))

(assert (=> b!4346230 (= e!2704593 (= ((_ map and) (content!7660 (keys!16448 lt!1560183)) ((_ map not) (store ((as const (Array K!10160 Bool)) false) key!3918 true))) (content!7660 (keys!16448 lt!1560631))))))

(assert (= (and d!1283332 res!1784620) b!4346230))

(declare-fun m!4954169 () Bool)

(assert (=> d!1283332 m!4954169))

(declare-fun m!4954171 () Bool)

(assert (=> d!1283332 m!4954171))

(declare-fun m!4954173 () Bool)

(assert (=> b!4346230 m!4954173))

(assert (=> b!4346230 m!4953719))

(assert (=> b!4346230 m!4954173))

(declare-fun m!4954175 () Bool)

(assert (=> b!4346230 m!4954175))

(declare-fun m!4954177 () Bool)

(assert (=> b!4346230 m!4954177))

(assert (=> b!4346230 m!4953719))

(declare-fun m!4954179 () Bool)

(assert (=> b!4346230 m!4954179))

(assert (=> b!4345940 d!1283332))

(declare-fun d!1283334 () Bool)

(declare-fun e!2704596 () Bool)

(assert (=> d!1283334 e!2704596))

(declare-fun res!1784626 () Bool)

(assert (=> d!1283334 (=> (not res!1784626) (not e!2704596))))

(declare-fun lt!1560640 () ListLongMap!1507)

(assert (=> d!1283334 (= res!1784626 (contains!10934 lt!1560640 (_1!27354 (tuple2!48121 hash!377 lt!1560187))))))

(declare-fun lt!1560642 () List!48924)

(assert (=> d!1283334 (= lt!1560640 (ListLongMap!1508 lt!1560642))))

(declare-fun lt!1560641 () Unit!70517)

(declare-fun lt!1560643 () Unit!70517)

(assert (=> d!1283334 (= lt!1560641 lt!1560643)))

(assert (=> d!1283334 (= (getValueByKey!398 lt!1560642 (_1!27354 (tuple2!48121 hash!377 lt!1560187))) (Some!10411 (_2!27354 (tuple2!48121 hash!377 lt!1560187))))))

(declare-fun lemmaContainsTupThenGetReturnValue!182 (List!48924 (_ BitVec 64) List!48923) Unit!70517)

(assert (=> d!1283334 (= lt!1560643 (lemmaContainsTupThenGetReturnValue!182 lt!1560642 (_1!27354 (tuple2!48121 hash!377 lt!1560187)) (_2!27354 (tuple2!48121 hash!377 lt!1560187))))))

(declare-fun insertStrictlySorted!107 (List!48924 (_ BitVec 64) List!48923) List!48924)

(assert (=> d!1283334 (= lt!1560642 (insertStrictlySorted!107 (toList!2857 lm!1707) (_1!27354 (tuple2!48121 hash!377 lt!1560187)) (_2!27354 (tuple2!48121 hash!377 lt!1560187))))))

(assert (=> d!1283334 (= (+!545 lm!1707 (tuple2!48121 hash!377 lt!1560187)) lt!1560640)))

(declare-fun b!4346235 () Bool)

(declare-fun res!1784625 () Bool)

(assert (=> b!4346235 (=> (not res!1784625) (not e!2704596))))

(assert (=> b!4346235 (= res!1784625 (= (getValueByKey!398 (toList!2857 lt!1560640) (_1!27354 (tuple2!48121 hash!377 lt!1560187))) (Some!10411 (_2!27354 (tuple2!48121 hash!377 lt!1560187)))))))

(declare-fun b!4346236 () Bool)

(assert (=> b!4346236 (= e!2704596 (contains!10933 (toList!2857 lt!1560640) (tuple2!48121 hash!377 lt!1560187)))))

(assert (= (and d!1283334 res!1784626) b!4346235))

(assert (= (and b!4346235 res!1784625) b!4346236))

(declare-fun m!4954181 () Bool)

(assert (=> d!1283334 m!4954181))

(declare-fun m!4954183 () Bool)

(assert (=> d!1283334 m!4954183))

(declare-fun m!4954185 () Bool)

(assert (=> d!1283334 m!4954185))

(declare-fun m!4954187 () Bool)

(assert (=> d!1283334 m!4954187))

(declare-fun m!4954189 () Bool)

(assert (=> b!4346235 m!4954189))

(declare-fun m!4954191 () Bool)

(assert (=> b!4346236 m!4954191))

(assert (=> b!4345940 d!1283334))

(declare-fun bs!627737 () Bool)

(declare-fun b!4346239 () Bool)

(assert (= bs!627737 (and b!4346239 b!4346194)))

(declare-fun lambda!138304 () Int)

(assert (=> bs!627737 (= (= lt!1560203 (+!546 lt!1560203 lt!1560201)) (= lambda!138304 lambda!138289))))

(declare-fun bs!627738 () Bool)

(assert (= bs!627738 (and b!4346239 b!4346195)))

(assert (=> bs!627738 (= (= lt!1560203 (+!546 lt!1560203 lt!1560201)) (= lambda!138304 lambda!138288))))

(declare-fun bs!627739 () Bool)

(assert (= bs!627739 (and b!4346239 d!1283238)))

(assert (=> bs!627739 (not (= lambda!138304 lambda!138198))))

(declare-fun bs!627740 () Bool)

(assert (= bs!627740 (and b!4346239 b!4346218)))

(assert (=> bs!627740 (= lambda!138304 lambda!138292)))

(declare-fun bs!627741 () Bool)

(assert (= bs!627741 (and b!4346239 b!4346224)))

(assert (=> bs!627741 (= (= lt!1560203 lt!1560604) (= lambda!138304 lambda!138299))))

(declare-fun bs!627742 () Bool)

(assert (= bs!627742 (and b!4346239 b!4346217)))

(assert (=> bs!627742 (= lambda!138304 lambda!138293)))

(declare-fun bs!627743 () Bool)

(assert (= bs!627743 (and b!4346239 b!4346225)))

(assert (=> bs!627743 (= lambda!138304 lambda!138297)))

(declare-fun bs!627744 () Bool)

(assert (= bs!627744 (and b!4346239 d!1283320)))

(assert (=> bs!627744 (= (= lt!1560203 lt!1560595) (= lambda!138304 lambda!138295))))

(assert (=> bs!627737 (= (= lt!1560203 lt!1560558) (= lambda!138304 lambda!138290))))

(assert (=> bs!627741 (= lambda!138304 lambda!138298)))

(declare-fun bs!627745 () Bool)

(assert (= bs!627745 (and b!4346239 d!1283324)))

(assert (=> bs!627745 (= (= lt!1560203 lt!1560617) (= lambda!138304 lambda!138300))))

(assert (=> bs!627742 (= (= lt!1560203 lt!1560582) (= lambda!138304 lambda!138294))))

(declare-fun bs!627746 () Bool)

(assert (= bs!627746 (and b!4346239 d!1283266)))

(assert (=> bs!627746 (= (= lt!1560203 lt!1560571) (= lambda!138304 lambda!138291))))

(assert (=> b!4346239 true))

(declare-fun bs!627747 () Bool)

(declare-fun b!4346238 () Bool)

(assert (= bs!627747 (and b!4346238 b!4346239)))

(declare-fun lambda!138305 () Int)

(assert (=> bs!627747 (= lambda!138305 lambda!138304)))

(declare-fun bs!627748 () Bool)

(assert (= bs!627748 (and b!4346238 b!4346194)))

(assert (=> bs!627748 (= (= lt!1560203 (+!546 lt!1560203 lt!1560201)) (= lambda!138305 lambda!138289))))

(declare-fun bs!627749 () Bool)

(assert (= bs!627749 (and b!4346238 b!4346195)))

(assert (=> bs!627749 (= (= lt!1560203 (+!546 lt!1560203 lt!1560201)) (= lambda!138305 lambda!138288))))

(declare-fun bs!627750 () Bool)

(assert (= bs!627750 (and b!4346238 d!1283238)))

(assert (=> bs!627750 (not (= lambda!138305 lambda!138198))))

(declare-fun bs!627751 () Bool)

(assert (= bs!627751 (and b!4346238 b!4346218)))

(assert (=> bs!627751 (= lambda!138305 lambda!138292)))

(declare-fun bs!627752 () Bool)

(assert (= bs!627752 (and b!4346238 b!4346224)))

(assert (=> bs!627752 (= (= lt!1560203 lt!1560604) (= lambda!138305 lambda!138299))))

(declare-fun bs!627753 () Bool)

(assert (= bs!627753 (and b!4346238 b!4346217)))

(assert (=> bs!627753 (= lambda!138305 lambda!138293)))

(declare-fun bs!627754 () Bool)

(assert (= bs!627754 (and b!4346238 b!4346225)))

(assert (=> bs!627754 (= lambda!138305 lambda!138297)))

(declare-fun bs!627755 () Bool)

(assert (= bs!627755 (and b!4346238 d!1283320)))

(assert (=> bs!627755 (= (= lt!1560203 lt!1560595) (= lambda!138305 lambda!138295))))

(assert (=> bs!627748 (= (= lt!1560203 lt!1560558) (= lambda!138305 lambda!138290))))

(assert (=> bs!627752 (= lambda!138305 lambda!138298)))

(declare-fun bs!627756 () Bool)

(assert (= bs!627756 (and b!4346238 d!1283324)))

(assert (=> bs!627756 (= (= lt!1560203 lt!1560617) (= lambda!138305 lambda!138300))))

(assert (=> bs!627753 (= (= lt!1560203 lt!1560582) (= lambda!138305 lambda!138294))))

(declare-fun bs!627757 () Bool)

(assert (= bs!627757 (and b!4346238 d!1283266)))

(assert (=> bs!627757 (= (= lt!1560203 lt!1560571) (= lambda!138305 lambda!138291))))

(assert (=> b!4346238 true))

(declare-fun lambda!138306 () Int)

(declare-fun lt!1560646 () ListMap!2101)

(assert (=> bs!627748 (= (= lt!1560646 (+!546 lt!1560203 lt!1560201)) (= lambda!138306 lambda!138289))))

(assert (=> bs!627749 (= (= lt!1560646 (+!546 lt!1560203 lt!1560201)) (= lambda!138306 lambda!138288))))

(assert (=> bs!627750 (not (= lambda!138306 lambda!138198))))

(assert (=> bs!627751 (= (= lt!1560646 lt!1560203) (= lambda!138306 lambda!138292))))

(assert (=> bs!627752 (= (= lt!1560646 lt!1560604) (= lambda!138306 lambda!138299))))

(assert (=> bs!627753 (= (= lt!1560646 lt!1560203) (= lambda!138306 lambda!138293))))

(assert (=> bs!627754 (= (= lt!1560646 lt!1560203) (= lambda!138306 lambda!138297))))

(assert (=> b!4346238 (= (= lt!1560646 lt!1560203) (= lambda!138306 lambda!138305))))

(assert (=> bs!627747 (= (= lt!1560646 lt!1560203) (= lambda!138306 lambda!138304))))

(assert (=> bs!627755 (= (= lt!1560646 lt!1560595) (= lambda!138306 lambda!138295))))

(assert (=> bs!627748 (= (= lt!1560646 lt!1560558) (= lambda!138306 lambda!138290))))

(assert (=> bs!627752 (= (= lt!1560646 lt!1560203) (= lambda!138306 lambda!138298))))

(assert (=> bs!627756 (= (= lt!1560646 lt!1560617) (= lambda!138306 lambda!138300))))

(assert (=> bs!627753 (= (= lt!1560646 lt!1560582) (= lambda!138306 lambda!138294))))

(assert (=> bs!627757 (= (= lt!1560646 lt!1560571) (= lambda!138306 lambda!138291))))

(assert (=> b!4346238 true))

(declare-fun bs!627758 () Bool)

(declare-fun d!1283336 () Bool)

(assert (= bs!627758 (and d!1283336 b!4346194)))

(declare-fun lt!1560659 () ListMap!2101)

(declare-fun lambda!138307 () Int)

(assert (=> bs!627758 (= (= lt!1560659 (+!546 lt!1560203 lt!1560201)) (= lambda!138307 lambda!138289))))

(declare-fun bs!627759 () Bool)

(assert (= bs!627759 (and d!1283336 b!4346195)))

(assert (=> bs!627759 (= (= lt!1560659 (+!546 lt!1560203 lt!1560201)) (= lambda!138307 lambda!138288))))

(declare-fun bs!627760 () Bool)

(assert (= bs!627760 (and d!1283336 d!1283238)))

(assert (=> bs!627760 (not (= lambda!138307 lambda!138198))))

(declare-fun bs!627761 () Bool)

(assert (= bs!627761 (and d!1283336 b!4346238)))

(assert (=> bs!627761 (= (= lt!1560659 lt!1560646) (= lambda!138307 lambda!138306))))

(declare-fun bs!627762 () Bool)

(assert (= bs!627762 (and d!1283336 b!4346218)))

(assert (=> bs!627762 (= (= lt!1560659 lt!1560203) (= lambda!138307 lambda!138292))))

(declare-fun bs!627763 () Bool)

(assert (= bs!627763 (and d!1283336 b!4346224)))

(assert (=> bs!627763 (= (= lt!1560659 lt!1560604) (= lambda!138307 lambda!138299))))

(declare-fun bs!627764 () Bool)

(assert (= bs!627764 (and d!1283336 b!4346217)))

(assert (=> bs!627764 (= (= lt!1560659 lt!1560203) (= lambda!138307 lambda!138293))))

(declare-fun bs!627765 () Bool)

(assert (= bs!627765 (and d!1283336 b!4346225)))

(assert (=> bs!627765 (= (= lt!1560659 lt!1560203) (= lambda!138307 lambda!138297))))

(assert (=> bs!627761 (= (= lt!1560659 lt!1560203) (= lambda!138307 lambda!138305))))

(declare-fun bs!627766 () Bool)

(assert (= bs!627766 (and d!1283336 b!4346239)))

(assert (=> bs!627766 (= (= lt!1560659 lt!1560203) (= lambda!138307 lambda!138304))))

(declare-fun bs!627767 () Bool)

(assert (= bs!627767 (and d!1283336 d!1283320)))

(assert (=> bs!627767 (= (= lt!1560659 lt!1560595) (= lambda!138307 lambda!138295))))

(assert (=> bs!627758 (= (= lt!1560659 lt!1560558) (= lambda!138307 lambda!138290))))

(assert (=> bs!627763 (= (= lt!1560659 lt!1560203) (= lambda!138307 lambda!138298))))

(declare-fun bs!627768 () Bool)

(assert (= bs!627768 (and d!1283336 d!1283324)))

(assert (=> bs!627768 (= (= lt!1560659 lt!1560617) (= lambda!138307 lambda!138300))))

(assert (=> bs!627764 (= (= lt!1560659 lt!1560582) (= lambda!138307 lambda!138294))))

(declare-fun bs!627769 () Bool)

(assert (= bs!627769 (and d!1283336 d!1283266)))

(assert (=> bs!627769 (= (= lt!1560659 lt!1560571) (= lambda!138307 lambda!138291))))

(assert (=> d!1283336 true))

(declare-fun bm!302160 () Bool)

(declare-fun call!302167 () Unit!70517)

(assert (=> bm!302160 (= call!302167 (lemmaContainsAllItsOwnKeys!43 lt!1560203))))

(declare-fun c!738951 () Bool)

(declare-fun call!302166 () Bool)

(declare-fun bm!302161 () Bool)

(assert (=> bm!302161 (= call!302166 (forall!9031 (ite c!738951 (toList!2858 lt!1560203) (t!355843 lt!1560200)) (ite c!738951 lambda!138304 lambda!138306)))))

(declare-fun b!4346237 () Bool)

(declare-fun res!1784627 () Bool)

(declare-fun e!2704597 () Bool)

(assert (=> b!4346237 (=> (not res!1784627) (not e!2704597))))

(assert (=> b!4346237 (= res!1784627 (forall!9031 (toList!2858 lt!1560203) lambda!138307))))

(assert (=> d!1283336 e!2704597))

(declare-fun res!1784628 () Bool)

(assert (=> d!1283336 (=> (not res!1784628) (not e!2704597))))

(assert (=> d!1283336 (= res!1784628 (forall!9031 lt!1560200 lambda!138307))))

(declare-fun e!2704599 () ListMap!2101)

(assert (=> d!1283336 (= lt!1560659 e!2704599)))

(assert (=> d!1283336 (= c!738951 ((_ is Nil!48799) lt!1560200))))

(assert (=> d!1283336 (noDuplicateKeys!437 lt!1560200)))

(assert (=> d!1283336 (= (addToMapMapFromBucket!145 lt!1560200 lt!1560203) lt!1560659)))

(assert (=> b!4346238 (= e!2704599 lt!1560646)))

(declare-fun lt!1560651 () ListMap!2101)

(assert (=> b!4346238 (= lt!1560651 (+!546 lt!1560203 (h!54322 lt!1560200)))))

(assert (=> b!4346238 (= lt!1560646 (addToMapMapFromBucket!145 (t!355843 lt!1560200) (+!546 lt!1560203 (h!54322 lt!1560200))))))

(declare-fun lt!1560656 () Unit!70517)

(assert (=> b!4346238 (= lt!1560656 call!302167)))

(assert (=> b!4346238 (forall!9031 (toList!2858 lt!1560203) lambda!138305)))

(declare-fun lt!1560660 () Unit!70517)

(assert (=> b!4346238 (= lt!1560660 lt!1560656)))

(assert (=> b!4346238 (forall!9031 (toList!2858 lt!1560651) lambda!138306)))

(declare-fun lt!1560655 () Unit!70517)

(declare-fun Unit!70597 () Unit!70517)

(assert (=> b!4346238 (= lt!1560655 Unit!70597)))

(assert (=> b!4346238 call!302166))

(declare-fun lt!1560658 () Unit!70517)

(declare-fun Unit!70599 () Unit!70517)

(assert (=> b!4346238 (= lt!1560658 Unit!70599)))

(declare-fun lt!1560654 () Unit!70517)

(declare-fun Unit!70600 () Unit!70517)

(assert (=> b!4346238 (= lt!1560654 Unit!70600)))

(declare-fun lt!1560648 () Unit!70517)

(assert (=> b!4346238 (= lt!1560648 (forallContained!1681 (toList!2858 lt!1560651) lambda!138306 (h!54322 lt!1560200)))))

(assert (=> b!4346238 (contains!10932 lt!1560651 (_1!27353 (h!54322 lt!1560200)))))

(declare-fun lt!1560645 () Unit!70517)

(declare-fun Unit!70603 () Unit!70517)

(assert (=> b!4346238 (= lt!1560645 Unit!70603)))

(assert (=> b!4346238 (contains!10932 lt!1560646 (_1!27353 (h!54322 lt!1560200)))))

(declare-fun lt!1560649 () Unit!70517)

(declare-fun Unit!70605 () Unit!70517)

(assert (=> b!4346238 (= lt!1560649 Unit!70605)))

(declare-fun call!302165 () Bool)

(assert (=> b!4346238 call!302165))

(declare-fun lt!1560664 () Unit!70517)

(declare-fun Unit!70607 () Unit!70517)

(assert (=> b!4346238 (= lt!1560664 Unit!70607)))

(assert (=> b!4346238 (forall!9031 (toList!2858 lt!1560651) lambda!138306)))

(declare-fun lt!1560647 () Unit!70517)

(declare-fun Unit!70608 () Unit!70517)

(assert (=> b!4346238 (= lt!1560647 Unit!70608)))

(declare-fun lt!1560662 () Unit!70517)

(declare-fun Unit!70609 () Unit!70517)

(assert (=> b!4346238 (= lt!1560662 Unit!70609)))

(declare-fun lt!1560663 () Unit!70517)

(assert (=> b!4346238 (= lt!1560663 (addForallContainsKeyThenBeforeAdding!43 lt!1560203 lt!1560646 (_1!27353 (h!54322 lt!1560200)) (_2!27353 (h!54322 lt!1560200))))))

(assert (=> b!4346238 (forall!9031 (toList!2858 lt!1560203) lambda!138306)))

(declare-fun lt!1560652 () Unit!70517)

(assert (=> b!4346238 (= lt!1560652 lt!1560663)))

(assert (=> b!4346238 (forall!9031 (toList!2858 lt!1560203) lambda!138306)))

(declare-fun lt!1560653 () Unit!70517)

(declare-fun Unit!70611 () Unit!70517)

(assert (=> b!4346238 (= lt!1560653 Unit!70611)))

(declare-fun res!1784629 () Bool)

(assert (=> b!4346238 (= res!1784629 (forall!9031 lt!1560200 lambda!138306))))

(declare-fun e!2704598 () Bool)

(assert (=> b!4346238 (=> (not res!1784629) (not e!2704598))))

(assert (=> b!4346238 e!2704598))

(declare-fun lt!1560661 () Unit!70517)

(declare-fun Unit!70613 () Unit!70517)

(assert (=> b!4346238 (= lt!1560661 Unit!70613)))

(assert (=> b!4346239 (= e!2704599 lt!1560203)))

(declare-fun lt!1560657 () Unit!70517)

(assert (=> b!4346239 (= lt!1560657 call!302167)))

(assert (=> b!4346239 call!302165))

(declare-fun lt!1560644 () Unit!70517)

(assert (=> b!4346239 (= lt!1560644 lt!1560657)))

(assert (=> b!4346239 call!302166))

(declare-fun lt!1560650 () Unit!70517)

(declare-fun Unit!70615 () Unit!70517)

(assert (=> b!4346239 (= lt!1560650 Unit!70615)))

(declare-fun bm!302162 () Bool)

(assert (=> bm!302162 (= call!302165 (forall!9031 (ite c!738951 (toList!2858 lt!1560203) lt!1560200) (ite c!738951 lambda!138304 lambda!138306)))))

(declare-fun b!4346240 () Bool)

(assert (=> b!4346240 (= e!2704597 (invariantList!650 (toList!2858 lt!1560659)))))

(declare-fun b!4346241 () Bool)

(assert (=> b!4346241 (= e!2704598 (forall!9031 (toList!2858 lt!1560203) lambda!138306))))

(assert (= (and d!1283336 c!738951) b!4346239))

(assert (= (and d!1283336 (not c!738951)) b!4346238))

(assert (= (and b!4346238 res!1784629) b!4346241))

(assert (= (or b!4346239 b!4346238) bm!302160))

(assert (= (or b!4346239 b!4346238) bm!302161))

(assert (= (or b!4346239 b!4346238) bm!302162))

(assert (= (and d!1283336 res!1784628) b!4346237))

(assert (= (and b!4346237 res!1784627) b!4346240))

(declare-fun m!4954193 () Bool)

(assert (=> b!4346240 m!4954193))

(declare-fun m!4954195 () Bool)

(assert (=> b!4346238 m!4954195))

(declare-fun m!4954197 () Bool)

(assert (=> b!4346238 m!4954197))

(declare-fun m!4954199 () Bool)

(assert (=> b!4346238 m!4954199))

(declare-fun m!4954201 () Bool)

(assert (=> b!4346238 m!4954201))

(declare-fun m!4954203 () Bool)

(assert (=> b!4346238 m!4954203))

(assert (=> b!4346238 m!4954199))

(assert (=> b!4346238 m!4954201))

(declare-fun m!4954205 () Bool)

(assert (=> b!4346238 m!4954205))

(declare-fun m!4954207 () Bool)

(assert (=> b!4346238 m!4954207))

(declare-fun m!4954209 () Bool)

(assert (=> b!4346238 m!4954209))

(declare-fun m!4954211 () Bool)

(assert (=> b!4346238 m!4954211))

(assert (=> b!4346238 m!4954205))

(declare-fun m!4954213 () Bool)

(assert (=> b!4346238 m!4954213))

(assert (=> bm!302160 m!4954093))

(declare-fun m!4954215 () Bool)

(assert (=> bm!302161 m!4954215))

(declare-fun m!4954217 () Bool)

(assert (=> b!4346237 m!4954217))

(declare-fun m!4954219 () Bool)

(assert (=> bm!302162 m!4954219))

(declare-fun m!4954221 () Bool)

(assert (=> d!1283336 m!4954221))

(assert (=> d!1283336 m!4954049))

(assert (=> b!4346241 m!4954201))

(assert (=> b!4345940 d!1283336))

(declare-fun d!1283338 () Bool)

(declare-fun e!2704600 () Bool)

(assert (=> d!1283338 e!2704600))

(declare-fun res!1784631 () Bool)

(assert (=> d!1283338 (=> (not res!1784631) (not e!2704600))))

(declare-fun lt!1560668 () ListMap!2101)

(assert (=> d!1283338 (= res!1784631 (contains!10932 lt!1560668 (_1!27353 lt!1560201)))))

(declare-fun lt!1560666 () List!48923)

(assert (=> d!1283338 (= lt!1560668 (ListMap!2102 lt!1560666))))

(declare-fun lt!1560665 () Unit!70517)

(declare-fun lt!1560667 () Unit!70517)

(assert (=> d!1283338 (= lt!1560665 lt!1560667)))

(assert (=> d!1283338 (= (getValueByKey!399 lt!1560666 (_1!27353 lt!1560201)) (Some!10412 (_2!27353 lt!1560201)))))

(assert (=> d!1283338 (= lt!1560667 (lemmaContainsTupThenGetReturnValue!181 lt!1560666 (_1!27353 lt!1560201) (_2!27353 lt!1560201)))))

(assert (=> d!1283338 (= lt!1560666 (insertNoDuplicatedKeys!83 (toList!2858 lt!1560203) (_1!27353 lt!1560201) (_2!27353 lt!1560201)))))

(assert (=> d!1283338 (= (+!546 lt!1560203 lt!1560201) lt!1560668)))

(declare-fun b!4346242 () Bool)

(declare-fun res!1784630 () Bool)

(assert (=> b!4346242 (=> (not res!1784630) (not e!2704600))))

(assert (=> b!4346242 (= res!1784630 (= (getValueByKey!399 (toList!2858 lt!1560668) (_1!27353 lt!1560201)) (Some!10412 (_2!27353 lt!1560201))))))

(declare-fun b!4346243 () Bool)

(assert (=> b!4346243 (= e!2704600 (contains!10938 (toList!2858 lt!1560668) lt!1560201))))

(assert (= (and d!1283338 res!1784631) b!4346242))

(assert (= (and b!4346242 res!1784630) b!4346243))

(declare-fun m!4954223 () Bool)

(assert (=> d!1283338 m!4954223))

(declare-fun m!4954225 () Bool)

(assert (=> d!1283338 m!4954225))

(declare-fun m!4954227 () Bool)

(assert (=> d!1283338 m!4954227))

(declare-fun m!4954229 () Bool)

(assert (=> d!1283338 m!4954229))

(declare-fun m!4954231 () Bool)

(assert (=> b!4346242 m!4954231))

(declare-fun m!4954233 () Bool)

(assert (=> b!4346243 m!4954233))

(assert (=> b!4345940 d!1283338))

(declare-fun b!4346244 () Bool)

(declare-fun e!2704606 () Unit!70517)

(declare-fun lt!1560670 () Unit!70517)

(assert (=> b!4346244 (= e!2704606 lt!1560670)))

(declare-fun lt!1560675 () Unit!70517)

(assert (=> b!4346244 (= lt!1560675 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!2858 lt!1560193) key!3918))))

(assert (=> b!4346244 (isDefined!7708 (getValueByKey!399 (toList!2858 lt!1560193) key!3918))))

(declare-fun lt!1560671 () Unit!70517)

(assert (=> b!4346244 (= lt!1560671 lt!1560675)))

(assert (=> b!4346244 (= lt!1560670 (lemmaInListThenGetKeysListContains!95 (toList!2858 lt!1560193) key!3918))))

(declare-fun call!302168 () Bool)

(assert (=> b!4346244 call!302168))

(declare-fun bm!302163 () Bool)

(declare-fun e!2704601 () List!48926)

(assert (=> bm!302163 (= call!302168 (contains!10937 e!2704601 key!3918))))

(declare-fun c!738952 () Bool)

(declare-fun c!738954 () Bool)

(assert (=> bm!302163 (= c!738952 c!738954)))

(declare-fun b!4346245 () Bool)

(assert (=> b!4346245 false))

(declare-fun lt!1560673 () Unit!70517)

(declare-fun lt!1560676 () Unit!70517)

(assert (=> b!4346245 (= lt!1560673 lt!1560676)))

(assert (=> b!4346245 (containsKey!601 (toList!2858 lt!1560193) key!3918)))

(assert (=> b!4346245 (= lt!1560676 (lemmaInGetKeysListThenContainsKey!96 (toList!2858 lt!1560193) key!3918))))

(declare-fun e!2704604 () Unit!70517)

(declare-fun Unit!70616 () Unit!70517)

(assert (=> b!4346245 (= e!2704604 Unit!70616)))

(declare-fun b!4346246 () Bool)

(assert (=> b!4346246 (= e!2704606 e!2704604)))

(declare-fun c!738953 () Bool)

(assert (=> b!4346246 (= c!738953 call!302168)))

(declare-fun b!4346247 () Bool)

(assert (=> b!4346247 (= e!2704601 (keys!16448 lt!1560193))))

(declare-fun b!4346248 () Bool)

(declare-fun Unit!70617 () Unit!70517)

(assert (=> b!4346248 (= e!2704604 Unit!70617)))

(declare-fun b!4346249 () Bool)

(declare-fun e!2704602 () Bool)

(assert (=> b!4346249 (= e!2704602 (not (contains!10937 (keys!16448 lt!1560193) key!3918)))))

(declare-fun b!4346250 () Bool)

(declare-fun e!2704603 () Bool)

(assert (=> b!4346250 (= e!2704603 (contains!10937 (keys!16448 lt!1560193) key!3918))))

(declare-fun b!4346251 () Bool)

(assert (=> b!4346251 (= e!2704601 (getKeysList!98 (toList!2858 lt!1560193)))))

(declare-fun d!1283340 () Bool)

(declare-fun e!2704605 () Bool)

(assert (=> d!1283340 e!2704605))

(declare-fun res!1784633 () Bool)

(assert (=> d!1283340 (=> res!1784633 e!2704605)))

(assert (=> d!1283340 (= res!1784633 e!2704602)))

(declare-fun res!1784634 () Bool)

(assert (=> d!1283340 (=> (not res!1784634) (not e!2704602))))

(declare-fun lt!1560672 () Bool)

(assert (=> d!1283340 (= res!1784634 (not lt!1560672))))

(declare-fun lt!1560674 () Bool)

(assert (=> d!1283340 (= lt!1560672 lt!1560674)))

(declare-fun lt!1560669 () Unit!70517)

(assert (=> d!1283340 (= lt!1560669 e!2704606)))

(assert (=> d!1283340 (= c!738954 lt!1560674)))

(assert (=> d!1283340 (= lt!1560674 (containsKey!601 (toList!2858 lt!1560193) key!3918))))

(assert (=> d!1283340 (= (contains!10932 lt!1560193 key!3918) lt!1560672)))

(declare-fun b!4346252 () Bool)

(assert (=> b!4346252 (= e!2704605 e!2704603)))

(declare-fun res!1784632 () Bool)

(assert (=> b!4346252 (=> (not res!1784632) (not e!2704603))))

(assert (=> b!4346252 (= res!1784632 (isDefined!7708 (getValueByKey!399 (toList!2858 lt!1560193) key!3918)))))

(assert (= (and d!1283340 c!738954) b!4346244))

(assert (= (and d!1283340 (not c!738954)) b!4346246))

(assert (= (and b!4346246 c!738953) b!4346245))

(assert (= (and b!4346246 (not c!738953)) b!4346248))

(assert (= (or b!4346244 b!4346246) bm!302163))

(assert (= (and bm!302163 c!738952) b!4346251))

(assert (= (and bm!302163 (not c!738952)) b!4346247))

(assert (= (and d!1283340 res!1784634) b!4346249))

(assert (= (and d!1283340 (not res!1784633)) b!4346252))

(assert (= (and b!4346252 res!1784632) b!4346250))

(declare-fun m!4954235 () Bool)

(assert (=> d!1283340 m!4954235))

(declare-fun m!4954237 () Bool)

(assert (=> b!4346251 m!4954237))

(declare-fun m!4954239 () Bool)

(assert (=> b!4346249 m!4954239))

(assert (=> b!4346249 m!4954239))

(declare-fun m!4954241 () Bool)

(assert (=> b!4346249 m!4954241))

(declare-fun m!4954243 () Bool)

(assert (=> b!4346252 m!4954243))

(assert (=> b!4346252 m!4954243))

(declare-fun m!4954245 () Bool)

(assert (=> b!4346252 m!4954245))

(declare-fun m!4954247 () Bool)

(assert (=> b!4346244 m!4954247))

(assert (=> b!4346244 m!4954243))

(assert (=> b!4346244 m!4954243))

(assert (=> b!4346244 m!4954245))

(declare-fun m!4954249 () Bool)

(assert (=> b!4346244 m!4954249))

(assert (=> b!4346250 m!4954239))

(assert (=> b!4346250 m!4954239))

(assert (=> b!4346250 m!4954241))

(assert (=> b!4346247 m!4954239))

(assert (=> b!4346245 m!4954235))

(declare-fun m!4954251 () Bool)

(assert (=> b!4346245 m!4954251))

(declare-fun m!4954253 () Bool)

(assert (=> bm!302163 m!4954253))

(assert (=> b!4345940 d!1283340))

(declare-fun b!4346253 () Bool)

(declare-fun e!2704612 () Unit!70517)

(declare-fun lt!1560678 () Unit!70517)

(assert (=> b!4346253 (= e!2704612 lt!1560678)))

(declare-fun lt!1560683 () Unit!70517)

(assert (=> b!4346253 (= lt!1560683 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!2858 lt!1560182) key!3918))))

(assert (=> b!4346253 (isDefined!7708 (getValueByKey!399 (toList!2858 lt!1560182) key!3918))))

(declare-fun lt!1560679 () Unit!70517)

(assert (=> b!4346253 (= lt!1560679 lt!1560683)))

(assert (=> b!4346253 (= lt!1560678 (lemmaInListThenGetKeysListContains!95 (toList!2858 lt!1560182) key!3918))))

(declare-fun call!302169 () Bool)

(assert (=> b!4346253 call!302169))

(declare-fun bm!302164 () Bool)

(declare-fun e!2704607 () List!48926)

(assert (=> bm!302164 (= call!302169 (contains!10937 e!2704607 key!3918))))

(declare-fun c!738955 () Bool)

(declare-fun c!738957 () Bool)

(assert (=> bm!302164 (= c!738955 c!738957)))

(declare-fun b!4346254 () Bool)

(assert (=> b!4346254 false))

(declare-fun lt!1560681 () Unit!70517)

(declare-fun lt!1560684 () Unit!70517)

(assert (=> b!4346254 (= lt!1560681 lt!1560684)))

(assert (=> b!4346254 (containsKey!601 (toList!2858 lt!1560182) key!3918)))

(assert (=> b!4346254 (= lt!1560684 (lemmaInGetKeysListThenContainsKey!96 (toList!2858 lt!1560182) key!3918))))

(declare-fun e!2704610 () Unit!70517)

(declare-fun Unit!70618 () Unit!70517)

(assert (=> b!4346254 (= e!2704610 Unit!70618)))

(declare-fun b!4346255 () Bool)

(assert (=> b!4346255 (= e!2704612 e!2704610)))

(declare-fun c!738956 () Bool)

(assert (=> b!4346255 (= c!738956 call!302169)))

(declare-fun b!4346256 () Bool)

(assert (=> b!4346256 (= e!2704607 (keys!16448 lt!1560182))))

(declare-fun b!4346257 () Bool)

(declare-fun Unit!70619 () Unit!70517)

(assert (=> b!4346257 (= e!2704610 Unit!70619)))

(declare-fun b!4346258 () Bool)

(declare-fun e!2704608 () Bool)

(assert (=> b!4346258 (= e!2704608 (not (contains!10937 (keys!16448 lt!1560182) key!3918)))))

(declare-fun b!4346259 () Bool)

(declare-fun e!2704609 () Bool)

(assert (=> b!4346259 (= e!2704609 (contains!10937 (keys!16448 lt!1560182) key!3918))))

(declare-fun b!4346260 () Bool)

(assert (=> b!4346260 (= e!2704607 (getKeysList!98 (toList!2858 lt!1560182)))))

(declare-fun d!1283342 () Bool)

(declare-fun e!2704611 () Bool)

(assert (=> d!1283342 e!2704611))

(declare-fun res!1784636 () Bool)

(assert (=> d!1283342 (=> res!1784636 e!2704611)))

(assert (=> d!1283342 (= res!1784636 e!2704608)))

(declare-fun res!1784637 () Bool)

(assert (=> d!1283342 (=> (not res!1784637) (not e!2704608))))

(declare-fun lt!1560680 () Bool)

(assert (=> d!1283342 (= res!1784637 (not lt!1560680))))

(declare-fun lt!1560682 () Bool)

(assert (=> d!1283342 (= lt!1560680 lt!1560682)))

(declare-fun lt!1560677 () Unit!70517)

(assert (=> d!1283342 (= lt!1560677 e!2704612)))

(assert (=> d!1283342 (= c!738957 lt!1560682)))

(assert (=> d!1283342 (= lt!1560682 (containsKey!601 (toList!2858 lt!1560182) key!3918))))

(assert (=> d!1283342 (= (contains!10932 lt!1560182 key!3918) lt!1560680)))

(declare-fun b!4346261 () Bool)

(assert (=> b!4346261 (= e!2704611 e!2704609)))

(declare-fun res!1784635 () Bool)

(assert (=> b!4346261 (=> (not res!1784635) (not e!2704609))))

(assert (=> b!4346261 (= res!1784635 (isDefined!7708 (getValueByKey!399 (toList!2858 lt!1560182) key!3918)))))

(assert (= (and d!1283342 c!738957) b!4346253))

(assert (= (and d!1283342 (not c!738957)) b!4346255))

(assert (= (and b!4346255 c!738956) b!4346254))

(assert (= (and b!4346255 (not c!738956)) b!4346257))

(assert (= (or b!4346253 b!4346255) bm!302164))

(assert (= (and bm!302164 c!738955) b!4346260))

(assert (= (and bm!302164 (not c!738955)) b!4346256))

(assert (= (and d!1283342 res!1784637) b!4346258))

(assert (= (and d!1283342 (not res!1784636)) b!4346261))

(assert (= (and b!4346261 res!1784635) b!4346259))

(declare-fun m!4954255 () Bool)

(assert (=> d!1283342 m!4954255))

(declare-fun m!4954257 () Bool)

(assert (=> b!4346260 m!4954257))

(declare-fun m!4954259 () Bool)

(assert (=> b!4346258 m!4954259))

(assert (=> b!4346258 m!4954259))

(declare-fun m!4954261 () Bool)

(assert (=> b!4346258 m!4954261))

(declare-fun m!4954263 () Bool)

(assert (=> b!4346261 m!4954263))

(assert (=> b!4346261 m!4954263))

(declare-fun m!4954265 () Bool)

(assert (=> b!4346261 m!4954265))

(declare-fun m!4954267 () Bool)

(assert (=> b!4346253 m!4954267))

(assert (=> b!4346253 m!4954263))

(assert (=> b!4346253 m!4954263))

(assert (=> b!4346253 m!4954265))

(declare-fun m!4954269 () Bool)

(assert (=> b!4346253 m!4954269))

(assert (=> b!4346259 m!4954259))

(assert (=> b!4346259 m!4954259))

(assert (=> b!4346259 m!4954261))

(assert (=> b!4346256 m!4954259))

(assert (=> b!4346254 m!4954255))

(declare-fun m!4954271 () Bool)

(assert (=> b!4346254 m!4954271))

(declare-fun m!4954273 () Bool)

(assert (=> bm!302164 m!4954273))

(assert (=> b!4345940 d!1283342))

(declare-fun bs!627770 () Bool)

(declare-fun d!1283344 () Bool)

(assert (= bs!627770 (and d!1283344 d!1283326)))

(declare-fun lambda!138308 () Int)

(assert (=> bs!627770 (= lambda!138308 lambda!138303)))

(declare-fun bs!627771 () Bool)

(assert (= bs!627771 (and d!1283344 d!1283260)))

(assert (=> bs!627771 (= lambda!138308 lambda!138209)))

(declare-fun bs!627772 () Bool)

(assert (= bs!627772 (and d!1283344 d!1283256)))

(assert (=> bs!627772 (= lambda!138308 lambda!138208)))

(declare-fun bs!627773 () Bool)

(assert (= bs!627773 (and d!1283344 d!1283322)))

(assert (=> bs!627773 (= lambda!138308 lambda!138296)))

(declare-fun bs!627774 () Bool)

(assert (= bs!627774 (and d!1283344 start!419480)))

(assert (=> bs!627774 (= lambda!138308 lambda!138189)))

(declare-fun lt!1560685 () ListMap!2101)

(assert (=> d!1283344 (invariantList!650 (toList!2858 lt!1560685))))

(declare-fun e!2704613 () ListMap!2101)

(assert (=> d!1283344 (= lt!1560685 e!2704613)))

(declare-fun c!738958 () Bool)

(assert (=> d!1283344 (= c!738958 ((_ is Cons!48800) (t!355844 (toList!2857 lm!1707))))))

(assert (=> d!1283344 (forall!9029 (t!355844 (toList!2857 lm!1707)) lambda!138308)))

(assert (=> d!1283344 (= (extractMap!496 (t!355844 (toList!2857 lm!1707))) lt!1560685)))

(declare-fun b!4346262 () Bool)

(assert (=> b!4346262 (= e!2704613 (addToMapMapFromBucket!145 (_2!27354 (h!54323 (t!355844 (toList!2857 lm!1707)))) (extractMap!496 (t!355844 (t!355844 (toList!2857 lm!1707))))))))

(declare-fun b!4346263 () Bool)

(assert (=> b!4346263 (= e!2704613 (ListMap!2102 Nil!48799))))

(assert (= (and d!1283344 c!738958) b!4346262))

(assert (= (and d!1283344 (not c!738958)) b!4346263))

(declare-fun m!4954275 () Bool)

(assert (=> d!1283344 m!4954275))

(declare-fun m!4954277 () Bool)

(assert (=> d!1283344 m!4954277))

(declare-fun m!4954279 () Bool)

(assert (=> b!4346262 m!4954279))

(assert (=> b!4346262 m!4954279))

(declare-fun m!4954281 () Bool)

(assert (=> b!4346262 m!4954281))

(assert (=> b!4345940 d!1283344))

(assert (=> b!4345925 d!1283230))

(declare-fun d!1283346 () Bool)

(declare-fun e!2704614 () Bool)

(assert (=> d!1283346 e!2704614))

(declare-fun res!1784639 () Bool)

(assert (=> d!1283346 (=> (not res!1784639) (not e!2704614))))

(declare-fun lt!1560686 () ListLongMap!1507)

(assert (=> d!1283346 (= res!1784639 (contains!10934 lt!1560686 (_1!27354 lt!1560180)))))

(declare-fun lt!1560688 () List!48924)

(assert (=> d!1283346 (= lt!1560686 (ListLongMap!1508 lt!1560688))))

(declare-fun lt!1560687 () Unit!70517)

(declare-fun lt!1560689 () Unit!70517)

(assert (=> d!1283346 (= lt!1560687 lt!1560689)))

(assert (=> d!1283346 (= (getValueByKey!398 lt!1560688 (_1!27354 lt!1560180)) (Some!10411 (_2!27354 lt!1560180)))))

(assert (=> d!1283346 (= lt!1560689 (lemmaContainsTupThenGetReturnValue!182 lt!1560688 (_1!27354 lt!1560180) (_2!27354 lt!1560180)))))

(assert (=> d!1283346 (= lt!1560688 (insertStrictlySorted!107 (toList!2857 lm!1707) (_1!27354 lt!1560180) (_2!27354 lt!1560180)))))

(assert (=> d!1283346 (= (+!545 lm!1707 lt!1560180) lt!1560686)))

(declare-fun b!4346264 () Bool)

(declare-fun res!1784638 () Bool)

(assert (=> b!4346264 (=> (not res!1784638) (not e!2704614))))

(assert (=> b!4346264 (= res!1784638 (= (getValueByKey!398 (toList!2857 lt!1560686) (_1!27354 lt!1560180)) (Some!10411 (_2!27354 lt!1560180))))))

(declare-fun b!4346265 () Bool)

(assert (=> b!4346265 (= e!2704614 (contains!10933 (toList!2857 lt!1560686) lt!1560180))))

(assert (= (and d!1283346 res!1784639) b!4346264))

(assert (= (and b!4346264 res!1784638) b!4346265))

(declare-fun m!4954283 () Bool)

(assert (=> d!1283346 m!4954283))

(declare-fun m!4954285 () Bool)

(assert (=> d!1283346 m!4954285))

(declare-fun m!4954287 () Bool)

(assert (=> d!1283346 m!4954287))

(declare-fun m!4954289 () Bool)

(assert (=> d!1283346 m!4954289))

(declare-fun m!4954291 () Bool)

(assert (=> b!4346264 m!4954291))

(declare-fun m!4954293 () Bool)

(assert (=> b!4346265 m!4954293))

(assert (=> b!4345925 d!1283346))

(declare-fun d!1283348 () Bool)

(assert (=> d!1283348 (forall!9029 (toList!2857 (+!545 lm!1707 (tuple2!48121 hash!377 newBucket!200))) lambda!138189)))

(declare-fun lt!1560692 () Unit!70517)

(declare-fun choose!26671 (ListLongMap!1507 Int (_ BitVec 64) List!48923) Unit!70517)

(assert (=> d!1283348 (= lt!1560692 (choose!26671 lm!1707 lambda!138189 hash!377 newBucket!200))))

(declare-fun e!2704617 () Bool)

(assert (=> d!1283348 e!2704617))

(declare-fun res!1784642 () Bool)

(assert (=> d!1283348 (=> (not res!1784642) (not e!2704617))))

(assert (=> d!1283348 (= res!1784642 (forall!9029 (toList!2857 lm!1707) lambda!138189))))

(assert (=> d!1283348 (= (addValidProp!91 lm!1707 lambda!138189 hash!377 newBucket!200) lt!1560692)))

(declare-fun b!4346269 () Bool)

(assert (=> b!4346269 (= e!2704617 (dynLambda!20595 lambda!138189 (tuple2!48121 hash!377 newBucket!200)))))

(assert (= (and d!1283348 res!1784642) b!4346269))

(declare-fun b_lambda!130107 () Bool)

(assert (=> (not b_lambda!130107) (not b!4346269)))

(declare-fun m!4954295 () Bool)

(assert (=> d!1283348 m!4954295))

(declare-fun m!4954297 () Bool)

(assert (=> d!1283348 m!4954297))

(declare-fun m!4954299 () Bool)

(assert (=> d!1283348 m!4954299))

(assert (=> d!1283348 m!4953435))

(declare-fun m!4954301 () Bool)

(assert (=> b!4346269 m!4954301))

(assert (=> b!4345925 d!1283348))

(declare-fun d!1283350 () Bool)

(declare-fun res!1784643 () Bool)

(declare-fun e!2704618 () Bool)

(assert (=> d!1283350 (=> res!1784643 e!2704618)))

(assert (=> d!1283350 (= res!1784643 ((_ is Nil!48800) (toList!2857 lm!1707)))))

(assert (=> d!1283350 (= (forall!9029 (toList!2857 lm!1707) lambda!138189) e!2704618)))

(declare-fun b!4346270 () Bool)

(declare-fun e!2704619 () Bool)

(assert (=> b!4346270 (= e!2704618 e!2704619)))

(declare-fun res!1784644 () Bool)

(assert (=> b!4346270 (=> (not res!1784644) (not e!2704619))))

(assert (=> b!4346270 (= res!1784644 (dynLambda!20595 lambda!138189 (h!54323 (toList!2857 lm!1707))))))

(declare-fun b!4346271 () Bool)

(assert (=> b!4346271 (= e!2704619 (forall!9029 (t!355844 (toList!2857 lm!1707)) lambda!138189))))

(assert (= (and d!1283350 (not res!1784643)) b!4346270))

(assert (= (and b!4346270 res!1784644) b!4346271))

(declare-fun b_lambda!130109 () Bool)

(assert (=> (not b_lambda!130109) (not b!4346270)))

(declare-fun m!4954303 () Bool)

(assert (=> b!4346270 m!4954303))

(declare-fun m!4954305 () Bool)

(assert (=> b!4346271 m!4954305))

(assert (=> b!4345925 d!1283350))

(declare-fun d!1283352 () Bool)

(declare-fun e!2704620 () Bool)

(assert (=> d!1283352 e!2704620))

(declare-fun res!1784646 () Bool)

(assert (=> d!1283352 (=> (not res!1784646) (not e!2704620))))

(declare-fun lt!1560693 () ListLongMap!1507)

(assert (=> d!1283352 (= res!1784646 (contains!10934 lt!1560693 (_1!27354 lt!1560180)))))

(declare-fun lt!1560695 () List!48924)

(assert (=> d!1283352 (= lt!1560693 (ListLongMap!1508 lt!1560695))))

(declare-fun lt!1560694 () Unit!70517)

(declare-fun lt!1560696 () Unit!70517)

(assert (=> d!1283352 (= lt!1560694 lt!1560696)))

(assert (=> d!1283352 (= (getValueByKey!398 lt!1560695 (_1!27354 lt!1560180)) (Some!10411 (_2!27354 lt!1560180)))))

(assert (=> d!1283352 (= lt!1560696 (lemmaContainsTupThenGetReturnValue!182 lt!1560695 (_1!27354 lt!1560180) (_2!27354 lt!1560180)))))

(assert (=> d!1283352 (= lt!1560695 (insertStrictlySorted!107 (toList!2857 lt!1560198) (_1!27354 lt!1560180) (_2!27354 lt!1560180)))))

(assert (=> d!1283352 (= (+!545 lt!1560198 lt!1560180) lt!1560693)))

(declare-fun b!4346272 () Bool)

(declare-fun res!1784645 () Bool)

(assert (=> b!4346272 (=> (not res!1784645) (not e!2704620))))

(assert (=> b!4346272 (= res!1784645 (= (getValueByKey!398 (toList!2857 lt!1560693) (_1!27354 lt!1560180)) (Some!10411 (_2!27354 lt!1560180))))))

(declare-fun b!4346273 () Bool)

(assert (=> b!4346273 (= e!2704620 (contains!10933 (toList!2857 lt!1560693) lt!1560180))))

(assert (= (and d!1283352 res!1784646) b!4346272))

(assert (= (and b!4346272 res!1784645) b!4346273))

(declare-fun m!4954307 () Bool)

(assert (=> d!1283352 m!4954307))

(declare-fun m!4954309 () Bool)

(assert (=> d!1283352 m!4954309))

(declare-fun m!4954311 () Bool)

(assert (=> d!1283352 m!4954311))

(declare-fun m!4954313 () Bool)

(assert (=> d!1283352 m!4954313))

(declare-fun m!4954315 () Bool)

(assert (=> b!4346272 m!4954315))

(declare-fun m!4954317 () Bool)

(assert (=> b!4346273 m!4954317))

(assert (=> b!4345926 d!1283352))

(declare-fun d!1283354 () Bool)

(assert (=> d!1283354 (= (eq!227 (extractMap!496 (toList!2857 lt!1560204)) (+!546 lt!1560193 lt!1560201)) (= (content!7658 (toList!2858 (extractMap!496 (toList!2857 lt!1560204)))) (content!7658 (toList!2858 (+!546 lt!1560193 lt!1560201)))))))

(declare-fun bs!627775 () Bool)

(assert (= bs!627775 d!1283354))

(declare-fun m!4954319 () Bool)

(assert (=> bs!627775 m!4954319))

(declare-fun m!4954321 () Bool)

(assert (=> bs!627775 m!4954321))

(assert (=> b!4345926 d!1283354))

(declare-fun bs!627776 () Bool)

(declare-fun d!1283356 () Bool)

(assert (= bs!627776 (and d!1283356 d!1283326)))

(declare-fun lambda!138311 () Int)

(assert (=> bs!627776 (= lambda!138311 lambda!138303)))

(declare-fun bs!627777 () Bool)

(assert (= bs!627777 (and d!1283356 d!1283260)))

(assert (=> bs!627777 (= lambda!138311 lambda!138209)))

(declare-fun bs!627778 () Bool)

(assert (= bs!627778 (and d!1283356 d!1283344)))

(assert (=> bs!627778 (= lambda!138311 lambda!138308)))

(declare-fun bs!627779 () Bool)

(assert (= bs!627779 (and d!1283356 d!1283256)))

(assert (=> bs!627779 (= lambda!138311 lambda!138208)))

(declare-fun bs!627780 () Bool)

(assert (= bs!627780 (and d!1283356 d!1283322)))

(assert (=> bs!627780 (= lambda!138311 lambda!138296)))

(declare-fun bs!627781 () Bool)

(assert (= bs!627781 (and d!1283356 start!419480)))

(assert (=> bs!627781 (= lambda!138311 lambda!138189)))

(assert (=> d!1283356 (eq!227 (extractMap!496 (toList!2857 (+!545 lt!1560198 (tuple2!48121 hash!377 newBucket!200)))) (+!546 (extractMap!496 (toList!2857 lt!1560198)) (tuple2!48119 key!3918 newValue!99)))))

(declare-fun lt!1560699 () Unit!70517)

(declare-fun choose!26672 (ListLongMap!1507 (_ BitVec 64) List!48923 K!10160 V!10406 Hashable!4829) Unit!70517)

(assert (=> d!1283356 (= lt!1560699 (choose!26672 lt!1560198 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1283356 (forall!9029 (toList!2857 lt!1560198) lambda!138311)))

(assert (=> d!1283356 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!77 lt!1560198 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1560699)))

(declare-fun bs!627782 () Bool)

(assert (= bs!627782 d!1283356))

(declare-fun m!4954323 () Bool)

(assert (=> bs!627782 m!4954323))

(declare-fun m!4954325 () Bool)

(assert (=> bs!627782 m!4954325))

(declare-fun m!4954327 () Bool)

(assert (=> bs!627782 m!4954327))

(assert (=> bs!627782 m!4953505))

(assert (=> bs!627782 m!4954323))

(assert (=> bs!627782 m!4953505))

(assert (=> bs!627782 m!4954325))

(declare-fun m!4954329 () Bool)

(assert (=> bs!627782 m!4954329))

(declare-fun m!4954331 () Bool)

(assert (=> bs!627782 m!4954331))

(declare-fun m!4954333 () Bool)

(assert (=> bs!627782 m!4954333))

(assert (=> b!4345926 d!1283356))

(declare-fun bs!627783 () Bool)

(declare-fun d!1283358 () Bool)

(assert (= bs!627783 (and d!1283358 d!1283326)))

(declare-fun lambda!138312 () Int)

(assert (=> bs!627783 (= lambda!138312 lambda!138303)))

(declare-fun bs!627784 () Bool)

(assert (= bs!627784 (and d!1283358 d!1283260)))

(assert (=> bs!627784 (= lambda!138312 lambda!138209)))

(declare-fun bs!627785 () Bool)

(assert (= bs!627785 (and d!1283358 d!1283344)))

(assert (=> bs!627785 (= lambda!138312 lambda!138308)))

(declare-fun bs!627786 () Bool)

(assert (= bs!627786 (and d!1283358 d!1283356)))

(assert (=> bs!627786 (= lambda!138312 lambda!138311)))

(declare-fun bs!627787 () Bool)

(assert (= bs!627787 (and d!1283358 d!1283256)))

(assert (=> bs!627787 (= lambda!138312 lambda!138208)))

(declare-fun bs!627788 () Bool)

(assert (= bs!627788 (and d!1283358 d!1283322)))

(assert (=> bs!627788 (= lambda!138312 lambda!138296)))

(declare-fun bs!627789 () Bool)

(assert (= bs!627789 (and d!1283358 start!419480)))

(assert (=> bs!627789 (= lambda!138312 lambda!138189)))

(declare-fun lt!1560700 () ListMap!2101)

(assert (=> d!1283358 (invariantList!650 (toList!2858 lt!1560700))))

(declare-fun e!2704621 () ListMap!2101)

(assert (=> d!1283358 (= lt!1560700 e!2704621)))

(declare-fun c!738959 () Bool)

(assert (=> d!1283358 (= c!738959 ((_ is Cons!48800) (toList!2857 lt!1560204)))))

(assert (=> d!1283358 (forall!9029 (toList!2857 lt!1560204) lambda!138312)))

(assert (=> d!1283358 (= (extractMap!496 (toList!2857 lt!1560204)) lt!1560700)))

(declare-fun b!4346274 () Bool)

(assert (=> b!4346274 (= e!2704621 (addToMapMapFromBucket!145 (_2!27354 (h!54323 (toList!2857 lt!1560204))) (extractMap!496 (t!355844 (toList!2857 lt!1560204)))))))

(declare-fun b!4346275 () Bool)

(assert (=> b!4346275 (= e!2704621 (ListMap!2102 Nil!48799))))

(assert (= (and d!1283358 c!738959) b!4346274))

(assert (= (and d!1283358 (not c!738959)) b!4346275))

(declare-fun m!4954335 () Bool)

(assert (=> d!1283358 m!4954335))

(declare-fun m!4954337 () Bool)

(assert (=> d!1283358 m!4954337))

(declare-fun m!4954339 () Bool)

(assert (=> b!4346274 m!4954339))

(assert (=> b!4346274 m!4954339))

(declare-fun m!4954341 () Bool)

(assert (=> b!4346274 m!4954341))

(assert (=> b!4345926 d!1283358))

(declare-fun d!1283360 () Bool)

(declare-fun res!1784647 () Bool)

(declare-fun e!2704622 () Bool)

(assert (=> d!1283360 (=> res!1784647 e!2704622)))

(assert (=> d!1283360 (= res!1784647 ((_ is Nil!48800) (toList!2857 lt!1560204)))))

(assert (=> d!1283360 (= (forall!9029 (toList!2857 lt!1560204) lambda!138189) e!2704622)))

(declare-fun b!4346276 () Bool)

(declare-fun e!2704623 () Bool)

(assert (=> b!4346276 (= e!2704622 e!2704623)))

(declare-fun res!1784648 () Bool)

(assert (=> b!4346276 (=> (not res!1784648) (not e!2704623))))

(assert (=> b!4346276 (= res!1784648 (dynLambda!20595 lambda!138189 (h!54323 (toList!2857 lt!1560204))))))

(declare-fun b!4346277 () Bool)

(assert (=> b!4346277 (= e!2704623 (forall!9029 (t!355844 (toList!2857 lt!1560204)) lambda!138189))))

(assert (= (and d!1283360 (not res!1784647)) b!4346276))

(assert (= (and b!4346276 res!1784648) b!4346277))

(declare-fun b_lambda!130111 () Bool)

(assert (=> (not b_lambda!130111) (not b!4346276)))

(declare-fun m!4954343 () Bool)

(assert (=> b!4346276 m!4954343))

(declare-fun m!4954345 () Bool)

(assert (=> b!4346277 m!4954345))

(assert (=> b!4345926 d!1283360))

(declare-fun d!1283362 () Bool)

(declare-fun e!2704624 () Bool)

(assert (=> d!1283362 e!2704624))

(declare-fun res!1784650 () Bool)

(assert (=> d!1283362 (=> (not res!1784650) (not e!2704624))))

(declare-fun lt!1560704 () ListMap!2101)

(assert (=> d!1283362 (= res!1784650 (contains!10932 lt!1560704 (_1!27353 lt!1560201)))))

(declare-fun lt!1560702 () List!48923)

(assert (=> d!1283362 (= lt!1560704 (ListMap!2102 lt!1560702))))

(declare-fun lt!1560701 () Unit!70517)

(declare-fun lt!1560703 () Unit!70517)

(assert (=> d!1283362 (= lt!1560701 lt!1560703)))

(assert (=> d!1283362 (= (getValueByKey!399 lt!1560702 (_1!27353 lt!1560201)) (Some!10412 (_2!27353 lt!1560201)))))

(assert (=> d!1283362 (= lt!1560703 (lemmaContainsTupThenGetReturnValue!181 lt!1560702 (_1!27353 lt!1560201) (_2!27353 lt!1560201)))))

(assert (=> d!1283362 (= lt!1560702 (insertNoDuplicatedKeys!83 (toList!2858 lt!1560193) (_1!27353 lt!1560201) (_2!27353 lt!1560201)))))

(assert (=> d!1283362 (= (+!546 lt!1560193 lt!1560201) lt!1560704)))

(declare-fun b!4346278 () Bool)

(declare-fun res!1784649 () Bool)

(assert (=> b!4346278 (=> (not res!1784649) (not e!2704624))))

(assert (=> b!4346278 (= res!1784649 (= (getValueByKey!399 (toList!2858 lt!1560704) (_1!27353 lt!1560201)) (Some!10412 (_2!27353 lt!1560201))))))

(declare-fun b!4346279 () Bool)

(assert (=> b!4346279 (= e!2704624 (contains!10938 (toList!2858 lt!1560704) lt!1560201))))

(assert (= (and d!1283362 res!1784650) b!4346278))

(assert (= (and b!4346278 res!1784649) b!4346279))

(declare-fun m!4954347 () Bool)

(assert (=> d!1283362 m!4954347))

(declare-fun m!4954349 () Bool)

(assert (=> d!1283362 m!4954349))

(declare-fun m!4954351 () Bool)

(assert (=> d!1283362 m!4954351))

(declare-fun m!4954353 () Bool)

(assert (=> d!1283362 m!4954353))

(declare-fun m!4954355 () Bool)

(assert (=> b!4346278 m!4954355))

(declare-fun m!4954357 () Bool)

(assert (=> b!4346279 m!4954357))

(assert (=> b!4345926 d!1283362))

(declare-fun d!1283364 () Bool)

(assert (=> d!1283364 (= (eq!227 lt!1560199 lt!1560202) (= (content!7658 (toList!2858 lt!1560199)) (content!7658 (toList!2858 lt!1560202))))))

(declare-fun bs!627790 () Bool)

(assert (= bs!627790 d!1283364))

(declare-fun m!4954359 () Bool)

(assert (=> bs!627790 m!4954359))

(assert (=> bs!627790 m!4953753))

(assert (=> b!4345937 d!1283364))

(declare-fun d!1283366 () Bool)

(declare-fun e!2704630 () Bool)

(assert (=> d!1283366 e!2704630))

(declare-fun res!1784653 () Bool)

(assert (=> d!1283366 (=> res!1784653 e!2704630)))

(declare-fun lt!1560715 () Bool)

(assert (=> d!1283366 (= res!1784653 (not lt!1560715))))

(declare-fun lt!1560716 () Bool)

(assert (=> d!1283366 (= lt!1560715 lt!1560716)))

(declare-fun lt!1560714 () Unit!70517)

(declare-fun e!2704629 () Unit!70517)

(assert (=> d!1283366 (= lt!1560714 e!2704629)))

(declare-fun c!738962 () Bool)

(assert (=> d!1283366 (= c!738962 lt!1560716)))

(declare-fun containsKey!602 (List!48924 (_ BitVec 64)) Bool)

(assert (=> d!1283366 (= lt!1560716 (containsKey!602 (toList!2857 lm!1707) hash!377))))

(assert (=> d!1283366 (= (contains!10934 lm!1707 hash!377) lt!1560715)))

(declare-fun b!4346286 () Bool)

(declare-fun lt!1560713 () Unit!70517)

(assert (=> b!4346286 (= e!2704629 lt!1560713)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!312 (List!48924 (_ BitVec 64)) Unit!70517)

(assert (=> b!4346286 (= lt!1560713 (lemmaContainsKeyImpliesGetValueByKeyDefined!312 (toList!2857 lm!1707) hash!377))))

(declare-fun isDefined!7709 (Option!10412) Bool)

(assert (=> b!4346286 (isDefined!7709 (getValueByKey!398 (toList!2857 lm!1707) hash!377))))

(declare-fun b!4346287 () Bool)

(declare-fun Unit!70620 () Unit!70517)

(assert (=> b!4346287 (= e!2704629 Unit!70620)))

(declare-fun b!4346288 () Bool)

(assert (=> b!4346288 (= e!2704630 (isDefined!7709 (getValueByKey!398 (toList!2857 lm!1707) hash!377)))))

(assert (= (and d!1283366 c!738962) b!4346286))

(assert (= (and d!1283366 (not c!738962)) b!4346287))

(assert (= (and d!1283366 (not res!1784653)) b!4346288))

(declare-fun m!4954361 () Bool)

(assert (=> d!1283366 m!4954361))

(declare-fun m!4954363 () Bool)

(assert (=> b!4346286 m!4954363))

(assert (=> b!4346286 m!4953547))

(assert (=> b!4346286 m!4953547))

(declare-fun m!4954365 () Bool)

(assert (=> b!4346286 m!4954365))

(assert (=> b!4346288 m!4953547))

(assert (=> b!4346288 m!4953547))

(assert (=> b!4346288 m!4954365))

(assert (=> b!4345933 d!1283366))

(declare-fun d!1283368 () Bool)

(declare-fun res!1784658 () Bool)

(declare-fun e!2704635 () Bool)

(assert (=> d!1283368 (=> res!1784658 e!2704635)))

(assert (=> d!1283368 (= res!1784658 (not ((_ is Cons!48799) newBucket!200)))))

(assert (=> d!1283368 (= (noDuplicateKeys!437 newBucket!200) e!2704635)))

(declare-fun b!4346293 () Bool)

(declare-fun e!2704636 () Bool)

(assert (=> b!4346293 (= e!2704635 e!2704636)))

(declare-fun res!1784659 () Bool)

(assert (=> b!4346293 (=> (not res!1784659) (not e!2704636))))

(assert (=> b!4346293 (= res!1784659 (not (containsKey!600 (t!355843 newBucket!200) (_1!27353 (h!54322 newBucket!200)))))))

(declare-fun b!4346294 () Bool)

(assert (=> b!4346294 (= e!2704636 (noDuplicateKeys!437 (t!355843 newBucket!200)))))

(assert (= (and d!1283368 (not res!1784658)) b!4346293))

(assert (= (and b!4346293 res!1784659) b!4346294))

(declare-fun m!4954367 () Bool)

(assert (=> b!4346293 m!4954367))

(declare-fun m!4954369 () Bool)

(assert (=> b!4346294 m!4954369))

(assert (=> b!4345934 d!1283368))

(assert (=> start!419480 d!1283350))

(declare-fun d!1283370 () Bool)

(assert (=> d!1283370 (= (inv!64346 lm!1707) (isStrictlySorted!76 (toList!2857 lm!1707)))))

(declare-fun bs!627791 () Bool)

(assert (= bs!627791 d!1283370))

(assert (=> bs!627791 m!4953589))

(assert (=> start!419480 d!1283370))

(declare-fun bs!627792 () Bool)

(declare-fun d!1283372 () Bool)

(assert (= bs!627792 (and d!1283372 d!1283326)))

(declare-fun lambda!138315 () Int)

(assert (=> bs!627792 (not (= lambda!138315 lambda!138303))))

(declare-fun bs!627793 () Bool)

(assert (= bs!627793 (and d!1283372 d!1283260)))

(assert (=> bs!627793 (not (= lambda!138315 lambda!138209))))

(declare-fun bs!627794 () Bool)

(assert (= bs!627794 (and d!1283372 d!1283344)))

(assert (=> bs!627794 (not (= lambda!138315 lambda!138308))))

(declare-fun bs!627795 () Bool)

(assert (= bs!627795 (and d!1283372 d!1283356)))

(assert (=> bs!627795 (not (= lambda!138315 lambda!138311))))

(declare-fun bs!627796 () Bool)

(assert (= bs!627796 (and d!1283372 d!1283358)))

(assert (=> bs!627796 (not (= lambda!138315 lambda!138312))))

(declare-fun bs!627797 () Bool)

(assert (= bs!627797 (and d!1283372 d!1283256)))

(assert (=> bs!627797 (not (= lambda!138315 lambda!138208))))

(declare-fun bs!627798 () Bool)

(assert (= bs!627798 (and d!1283372 d!1283322)))

(assert (=> bs!627798 (not (= lambda!138315 lambda!138296))))

(declare-fun bs!627799 () Bool)

(assert (= bs!627799 (and d!1283372 start!419480)))

(assert (=> bs!627799 (not (= lambda!138315 lambda!138189))))

(assert (=> d!1283372 true))

(assert (=> d!1283372 (= (allKeysSameHashInMap!541 lm!1707 hashF!1247) (forall!9029 (toList!2857 lm!1707) lambda!138315))))

(declare-fun bs!627800 () Bool)

(assert (= bs!627800 d!1283372))

(declare-fun m!4954371 () Bool)

(assert (=> bs!627800 m!4954371))

(assert (=> b!4345935 d!1283372))

(declare-fun tp!1329532 () Bool)

(declare-fun b!4346301 () Bool)

(declare-fun e!2704639 () Bool)

(assert (=> b!4346301 (= e!2704639 (and tp_is_empty!24985 tp_is_empty!24987 tp!1329532))))

(assert (=> b!4345936 (= tp!1329519 e!2704639)))

(assert (= (and b!4345936 ((_ is Cons!48799) (t!355843 newBucket!200))) b!4346301))

(declare-fun b!4346306 () Bool)

(declare-fun e!2704642 () Bool)

(declare-fun tp!1329537 () Bool)

(declare-fun tp!1329538 () Bool)

(assert (=> b!4346306 (= e!2704642 (and tp!1329537 tp!1329538))))

(assert (=> b!4345929 (= tp!1329520 e!2704642)))

(assert (= (and b!4345929 ((_ is Cons!48800) (toList!2857 lm!1707))) b!4346306))

(declare-fun b_lambda!130113 () Bool)

(assert (= b_lambda!130095 (or start!419480 b_lambda!130113)))

(declare-fun bs!627801 () Bool)

(declare-fun d!1283374 () Bool)

(assert (= bs!627801 (and d!1283374 start!419480)))

(assert (=> bs!627801 (= (dynLambda!20595 lambda!138189 (h!54323 (toList!2857 lt!1560195))) (noDuplicateKeys!437 (_2!27354 (h!54323 (toList!2857 lt!1560195)))))))

(declare-fun m!4954373 () Bool)

(assert (=> bs!627801 m!4954373))

(assert (=> b!4346032 d!1283374))

(declare-fun b_lambda!130115 () Bool)

(assert (= b_lambda!130109 (or start!419480 b_lambda!130115)))

(declare-fun bs!627802 () Bool)

(declare-fun d!1283376 () Bool)

(assert (= bs!627802 (and d!1283376 start!419480)))

(assert (=> bs!627802 (= (dynLambda!20595 lambda!138189 (h!54323 (toList!2857 lm!1707))) (noDuplicateKeys!437 (_2!27354 (h!54323 (toList!2857 lm!1707)))))))

(declare-fun m!4954375 () Bool)

(assert (=> bs!627802 m!4954375))

(assert (=> b!4346270 d!1283376))

(declare-fun b_lambda!130117 () Bool)

(assert (= b_lambda!130111 (or start!419480 b_lambda!130117)))

(declare-fun bs!627803 () Bool)

(declare-fun d!1283378 () Bool)

(assert (= bs!627803 (and d!1283378 start!419480)))

(assert (=> bs!627803 (= (dynLambda!20595 lambda!138189 (h!54323 (toList!2857 lt!1560204))) (noDuplicateKeys!437 (_2!27354 (h!54323 (toList!2857 lt!1560204)))))))

(declare-fun m!4954377 () Bool)

(assert (=> bs!627803 m!4954377))

(assert (=> b!4346276 d!1283378))

(declare-fun b_lambda!130119 () Bool)

(assert (= b_lambda!130107 (or start!419480 b_lambda!130119)))

(declare-fun bs!627804 () Bool)

(declare-fun d!1283380 () Bool)

(assert (= bs!627804 (and d!1283380 start!419480)))

(assert (=> bs!627804 (= (dynLambda!20595 lambda!138189 (tuple2!48121 hash!377 newBucket!200)) (noDuplicateKeys!437 (_2!27354 (tuple2!48121 hash!377 newBucket!200))))))

(declare-fun m!4954379 () Bool)

(assert (=> bs!627804 m!4954379))

(assert (=> b!4346269 d!1283380))

(declare-fun b_lambda!130121 () Bool)

(assert (= b_lambda!130091 (or start!419480 b_lambda!130121)))

(declare-fun bs!627805 () Bool)

(declare-fun d!1283382 () Bool)

(assert (= bs!627805 (and d!1283382 start!419480)))

(assert (=> bs!627805 (= (dynLambda!20595 lambda!138189 lt!1560206) (noDuplicateKeys!437 (_2!27354 lt!1560206)))))

(declare-fun m!4954381 () Bool)

(assert (=> bs!627805 m!4954381))

(assert (=> d!1283206 d!1283382))

(check-sat (not d!1283348) (not bm!302152) (not d!1283236) (not b!4346286) (not b!4346025) (not d!1283260) (not bm!302157) (not bm!302155) (not b!4346250) (not b!4346245) (not b!4346224) (not b_lambda!130121) (not bs!627805) (not b!4346273) (not b!4346110) (not d!1283256) (not b!4346254) (not b!4346197) (not d!1283344) (not b!4346278) (not b!4346240) (not d!1283372) (not b!4346223) (not bs!627804) (not bm!302153) (not b!4346217) (not b!4346252) (not d!1283336) (not bs!627801) (not d!1283326) (not b!4346226) (not b!4346196) (not b_lambda!130113) (not b!4346293) (not b!4346272) (not b!4346274) (not d!1283352) (not b!4346256) (not b!4346109) (not b!4346117) (not d!1283324) (not b!4346236) (not d!1283334) (not b!4346238) (not d!1283358) (not d!1283330) (not b!4346294) (not b!4346251) (not b!4346260) (not b!4346194) (not b!4346277) (not bm!302161) (not b!4346265) (not d!1283342) tp_is_empty!24987 (not b!4346221) (not bm!302160) (not b!4346237) (not b!4346193) (not b!4346033) (not b!4346259) (not bs!627803) (not d!1283346) (not b!4346242) (not b!4346253) (not d!1283370) (not d!1283366) (not b!4346216) (not b!4346262) (not d!1283322) (not d!1283338) tp_is_empty!24985 (not d!1283258) (not b!4346271) (not d!1283264) (not b!4346126) (not d!1283328) (not b!4346227) (not b!4346219) (not bm!302159) (not b!4346279) (not b_lambda!130115) (not b!4346249) (not d!1283240) (not b!4346105) (not b!4346119) (not d!1283266) (not bm!302154) (not d!1283222) (not b!4346107) (not b_lambda!130117) (not b!4346001) (not b!4346247) (not b!4346111) (not b!4346241) (not d!1283204) (not d!1283340) (not b!4346243) (not b!4346244) (not bs!627802) (not b!4346018) (not b!4346125) (not b!4346104) (not b!4346230) (not b!4346112) (not b!4345992) (not bm!302164) (not d!1283214) (not d!1283356) (not b!4346288) (not d!1283228) (not bm!302163) (not b!4346258) (not d!1283302) (not bm!302125) (not d!1283320) (not bm!302156) (not d!1283206) (not b!4346220) (not d!1283362) (not b!4346306) (not b!4346264) (not b_lambda!130119) (not d!1283364) (not bm!302162) (not d!1283354) (not d!1283332) (not bm!302151) (not b!4346261) (not bm!302158) (not b!4346235) (not d!1283238) (not d!1283262) (not b!4346301))
(check-sat)
