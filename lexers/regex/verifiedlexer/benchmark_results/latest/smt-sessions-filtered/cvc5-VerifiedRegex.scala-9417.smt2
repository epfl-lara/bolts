; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498212 () Bool)

(assert start!498212)

(declare-fun b!4815474 () Bool)

(declare-fun res!2048407 () Bool)

(declare-fun e!3008595 () Bool)

(assert (=> b!4815474 (=> (not res!2048407) (not e!3008595))))

(declare-datatypes ((K!16372 0))(
  ( (K!16373 (val!21403 Int)) )
))
(declare-datatypes ((V!16618 0))(
  ( (V!16619 (val!21404 Int)) )
))
(declare-datatypes ((tuple2!57742 0))(
  ( (tuple2!57743 (_1!32165 K!16372) (_2!32165 V!16618)) )
))
(declare-datatypes ((List!54845 0))(
  ( (Nil!54721) (Cons!54721 (h!61153 tuple2!57742) (t!362341 List!54845)) )
))
(declare-datatypes ((tuple2!57744 0))(
  ( (tuple2!57745 (_1!32166 (_ BitVec 64)) (_2!32166 List!54845)) )
))
(declare-datatypes ((List!54846 0))(
  ( (Nil!54722) (Cons!54722 (h!61154 tuple2!57744) (t!362342 List!54846)) )
))
(declare-datatypes ((ListLongMap!5769 0))(
  ( (ListLongMap!5770 (toList!7289 List!54846)) )
))
(declare-fun lm!2251 () ListLongMap!5769)

(declare-fun key!5322 () K!16372)

(declare-datatypes ((ListMap!6703 0))(
  ( (ListMap!6704 (toList!7290 List!54845)) )
))
(declare-fun contains!18522 (ListMap!6703 K!16372) Bool)

(declare-fun extractMap!2603 (List!54846) ListMap!6703)

(assert (=> b!4815474 (= res!2048407 (contains!18522 (extractMap!2603 (toList!7289 lm!2251)) key!5322))))

(declare-fun res!2048406 () Bool)

(assert (=> start!498212 (=> (not res!2048406) (not e!3008595))))

(declare-fun lambda!234413 () Int)

(declare-fun forall!12459 (List!54846 Int) Bool)

(assert (=> start!498212 (= res!2048406 (forall!12459 (toList!7289 lm!2251) lambda!234413))))

(assert (=> start!498212 e!3008595))

(declare-fun e!3008596 () Bool)

(declare-fun inv!70273 (ListLongMap!5769) Bool)

(assert (=> start!498212 (and (inv!70273 lm!2251) e!3008596)))

(assert (=> start!498212 true))

(declare-fun tp_is_empty!34179 () Bool)

(assert (=> start!498212 tp_is_empty!34179))

(declare-fun b!4815475 () Bool)

(declare-fun tp!1361828 () Bool)

(assert (=> b!4815475 (= e!3008596 tp!1361828)))

(declare-fun b!4815476 () Bool)

(declare-datatypes ((Unit!141893 0))(
  ( (Unit!141894) )
))
(declare-fun e!3008594 () Unit!141893)

(declare-fun Unit!141895 () Unit!141893)

(assert (=> b!4815476 (= e!3008594 Unit!141895)))

(declare-fun b!4815477 () Bool)

(declare-fun lt!1966304 () List!54845)

(declare-fun noDuplicateKeys!2404 (List!54845) Bool)

(assert (=> b!4815477 (= e!3008595 (not (noDuplicateKeys!2404 lt!1966304)))))

(declare-fun lt!1966299 () Unit!141893)

(assert (=> b!4815477 (= lt!1966299 e!3008594)))

(declare-fun c!820717 () Bool)

(declare-datatypes ((Option!13403 0))(
  ( (None!13402) (Some!13402 (v!49051 tuple2!57742)) )
))
(declare-fun isEmpty!29575 (Option!13403) Bool)

(declare-fun getPair!993 (List!54845 K!16372) Option!13403)

(assert (=> b!4815477 (= c!820717 (isEmpty!29575 (getPair!993 lt!1966304 key!5322)))))

(declare-fun lt!1966298 () tuple2!57744)

(declare-fun lt!1966303 () Unit!141893)

(declare-fun forallContained!4321 (List!54846 Int tuple2!57744) Unit!141893)

(assert (=> b!4815477 (= lt!1966303 (forallContained!4321 (toList!7289 lm!2251) lambda!234413 lt!1966298))))

(declare-fun contains!18523 (List!54846 tuple2!57744) Bool)

(assert (=> b!4815477 (contains!18523 (toList!7289 lm!2251) lt!1966298)))

(declare-fun lt!1966301 () (_ BitVec 64))

(assert (=> b!4815477 (= lt!1966298 (tuple2!57745 lt!1966301 lt!1966304))))

(declare-fun lt!1966302 () Unit!141893)

(declare-fun lemmaGetValueImpliesTupleContained!664 (ListLongMap!5769 (_ BitVec 64) List!54845) Unit!141893)

(assert (=> b!4815477 (= lt!1966302 (lemmaGetValueImpliesTupleContained!664 lm!2251 lt!1966301 lt!1966304))))

(declare-fun apply!13258 (ListLongMap!5769 (_ BitVec 64)) List!54845)

(assert (=> b!4815477 (= lt!1966304 (apply!13258 lm!2251 lt!1966301))))

(declare-fun contains!18524 (ListLongMap!5769 (_ BitVec 64)) Bool)

(assert (=> b!4815477 (contains!18524 lm!2251 lt!1966301)))

(declare-datatypes ((Hashable!7153 0))(
  ( (HashableExt!7152 (__x!33428 Int)) )
))
(declare-fun hashF!1486 () Hashable!7153)

(declare-fun hash!5223 (Hashable!7153 K!16372) (_ BitVec 64))

(assert (=> b!4815477 (= lt!1966301 (hash!5223 hashF!1486 key!5322))))

(declare-fun lt!1966297 () Unit!141893)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1091 (ListLongMap!5769 K!16372 Hashable!7153) Unit!141893)

(assert (=> b!4815477 (= lt!1966297 (lemmaInGenMapThenLongMapContainsHash!1091 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4815478 () Bool)

(declare-fun Unit!141896 () Unit!141893)

(assert (=> b!4815478 (= e!3008594 Unit!141896)))

(declare-fun lt!1966300 () Unit!141893)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!425 (ListLongMap!5769 K!16372 Hashable!7153) Unit!141893)

(assert (=> b!4815478 (= lt!1966300 (lemmaNotInItsHashBucketThenNotInMap!425 lm!2251 key!5322 hashF!1486))))

(assert (=> b!4815478 false))

(declare-fun b!4815479 () Bool)

(declare-fun res!2048408 () Bool)

(assert (=> b!4815479 (=> (not res!2048408) (not e!3008595))))

(declare-fun allKeysSameHashInMap!2469 (ListLongMap!5769 Hashable!7153) Bool)

(assert (=> b!4815479 (= res!2048408 (allKeysSameHashInMap!2469 lm!2251 hashF!1486))))

(assert (= (and start!498212 res!2048406) b!4815479))

(assert (= (and b!4815479 res!2048408) b!4815474))

(assert (= (and b!4815474 res!2048407) b!4815477))

(assert (= (and b!4815477 c!820717) b!4815478))

(assert (= (and b!4815477 (not c!820717)) b!4815476))

(assert (= start!498212 b!4815475))

(declare-fun m!5801614 () Bool)

(assert (=> b!4815474 m!5801614))

(assert (=> b!4815474 m!5801614))

(declare-fun m!5801616 () Bool)

(assert (=> b!4815474 m!5801616))

(declare-fun m!5801618 () Bool)

(assert (=> b!4815479 m!5801618))

(declare-fun m!5801620 () Bool)

(assert (=> start!498212 m!5801620))

(declare-fun m!5801622 () Bool)

(assert (=> start!498212 m!5801622))

(declare-fun m!5801624 () Bool)

(assert (=> b!4815477 m!5801624))

(declare-fun m!5801626 () Bool)

(assert (=> b!4815477 m!5801626))

(declare-fun m!5801628 () Bool)

(assert (=> b!4815477 m!5801628))

(declare-fun m!5801630 () Bool)

(assert (=> b!4815477 m!5801630))

(declare-fun m!5801632 () Bool)

(assert (=> b!4815477 m!5801632))

(assert (=> b!4815477 m!5801624))

(declare-fun m!5801634 () Bool)

(assert (=> b!4815477 m!5801634))

(declare-fun m!5801636 () Bool)

(assert (=> b!4815477 m!5801636))

(declare-fun m!5801638 () Bool)

(assert (=> b!4815477 m!5801638))

(declare-fun m!5801640 () Bool)

(assert (=> b!4815477 m!5801640))

(declare-fun m!5801642 () Bool)

(assert (=> b!4815477 m!5801642))

(declare-fun m!5801644 () Bool)

(assert (=> b!4815478 m!5801644))

(push 1)

(assert (not b!4815474))

(assert (not b!4815478))

(assert (not start!498212))

(assert (not b!4815479))

(assert (not b!4815475))

(assert tp_is_empty!34179)

(assert (not b!4815477))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1541272 () Bool)

(declare-fun hash!5225 (Hashable!7153 K!16372) (_ BitVec 64))

(assert (=> d!1541272 (= (hash!5223 hashF!1486 key!5322) (hash!5225 hashF!1486 key!5322))))

(declare-fun bs!1160497 () Bool)

(assert (= bs!1160497 d!1541272))

(declare-fun m!5801678 () Bool)

(assert (=> bs!1160497 m!5801678))

(assert (=> b!4815477 d!1541272))

(declare-fun d!1541274 () Bool)

(assert (=> d!1541274 (= (isEmpty!29575 (getPair!993 lt!1966304 key!5322)) (not (is-Some!13402 (getPair!993 lt!1966304 key!5322))))))

(assert (=> b!4815477 d!1541274))

(declare-fun d!1541276 () Bool)

(declare-fun res!2048422 () Bool)

(declare-fun e!3008610 () Bool)

(assert (=> d!1541276 (=> res!2048422 e!3008610)))

(assert (=> d!1541276 (= res!2048422 (not (is-Cons!54721 lt!1966304)))))

(assert (=> d!1541276 (= (noDuplicateKeys!2404 lt!1966304) e!3008610)))

(declare-fun b!4815502 () Bool)

(declare-fun e!3008611 () Bool)

(assert (=> b!4815502 (= e!3008610 e!3008611)))

(declare-fun res!2048423 () Bool)

(assert (=> b!4815502 (=> (not res!2048423) (not e!3008611))))

(declare-fun containsKey!4234 (List!54845 K!16372) Bool)

(assert (=> b!4815502 (= res!2048423 (not (containsKey!4234 (t!362341 lt!1966304) (_1!32165 (h!61153 lt!1966304)))))))

(declare-fun b!4815503 () Bool)

(assert (=> b!4815503 (= e!3008611 (noDuplicateKeys!2404 (t!362341 lt!1966304)))))

(assert (= (and d!1541276 (not res!2048422)) b!4815502))

(assert (= (and b!4815502 res!2048423) b!4815503))

(declare-fun m!5801680 () Bool)

(assert (=> b!4815502 m!5801680))

(declare-fun m!5801682 () Bool)

(assert (=> b!4815503 m!5801682))

(assert (=> b!4815477 d!1541276))

(declare-fun d!1541278 () Bool)

(declare-fun dynLambda!22159 (Int tuple2!57744) Bool)

(assert (=> d!1541278 (dynLambda!22159 lambda!234413 lt!1966298)))

(declare-fun lt!1966331 () Unit!141893)

(declare-fun choose!34914 (List!54846 Int tuple2!57744) Unit!141893)

(assert (=> d!1541278 (= lt!1966331 (choose!34914 (toList!7289 lm!2251) lambda!234413 lt!1966298))))

(declare-fun e!3008614 () Bool)

(assert (=> d!1541278 e!3008614))

(declare-fun res!2048426 () Bool)

(assert (=> d!1541278 (=> (not res!2048426) (not e!3008614))))

(assert (=> d!1541278 (= res!2048426 (forall!12459 (toList!7289 lm!2251) lambda!234413))))

(assert (=> d!1541278 (= (forallContained!4321 (toList!7289 lm!2251) lambda!234413 lt!1966298) lt!1966331)))

(declare-fun b!4815506 () Bool)

(assert (=> b!4815506 (= e!3008614 (contains!18523 (toList!7289 lm!2251) lt!1966298))))

(assert (= (and d!1541278 res!2048426) b!4815506))

(declare-fun b_lambda!188409 () Bool)

(assert (=> (not b_lambda!188409) (not d!1541278)))

(declare-fun m!5801684 () Bool)

(assert (=> d!1541278 m!5801684))

(declare-fun m!5801686 () Bool)

(assert (=> d!1541278 m!5801686))

(assert (=> d!1541278 m!5801620))

(assert (=> b!4815506 m!5801632))

(assert (=> b!4815477 d!1541278))

(declare-fun b!4815526 () Bool)

(declare-fun e!3008631 () Bool)

(declare-fun e!3008628 () Bool)

(assert (=> b!4815526 (= e!3008631 e!3008628)))

(declare-fun res!2048441 () Bool)

(assert (=> b!4815526 (=> (not res!2048441) (not e!3008628))))

(declare-fun lt!1966337 () Option!13403)

(declare-fun isDefined!10532 (Option!13403) Bool)

(assert (=> b!4815526 (= res!2048441 (isDefined!10532 lt!1966337))))

(declare-fun b!4815527 () Bool)

(declare-fun e!3008630 () Option!13403)

(assert (=> b!4815527 (= e!3008630 None!13402)))

(declare-fun b!4815528 () Bool)

(declare-fun e!3008629 () Bool)

(assert (=> b!4815528 (= e!3008629 (not (containsKey!4234 lt!1966304 key!5322)))))

(declare-fun b!4815529 () Bool)

(declare-fun e!3008632 () Option!13403)

(assert (=> b!4815529 (= e!3008632 e!3008630)))

(declare-fun c!820726 () Bool)

(assert (=> b!4815529 (= c!820726 (is-Cons!54721 lt!1966304))))

(declare-fun b!4815530 () Bool)

(assert (=> b!4815530 (= e!3008630 (getPair!993 (t!362341 lt!1966304) key!5322))))

(declare-fun b!4815531 () Bool)

(declare-fun contains!18528 (List!54845 tuple2!57742) Bool)

(declare-fun get!18722 (Option!13403) tuple2!57742)

(assert (=> b!4815531 (= e!3008628 (contains!18528 lt!1966304 (get!18722 lt!1966337)))))

(declare-fun b!4815532 () Bool)

(assert (=> b!4815532 (= e!3008632 (Some!13402 (h!61153 lt!1966304)))))

(declare-fun b!4815533 () Bool)

(declare-fun res!2048439 () Bool)

(assert (=> b!4815533 (=> (not res!2048439) (not e!3008628))))

(assert (=> b!4815533 (= res!2048439 (= (_1!32165 (get!18722 lt!1966337)) key!5322))))

(declare-fun d!1541280 () Bool)

(assert (=> d!1541280 e!3008631))

(declare-fun res!2048438 () Bool)

(assert (=> d!1541280 (=> res!2048438 e!3008631)))

(assert (=> d!1541280 (= res!2048438 e!3008629)))

(declare-fun res!2048440 () Bool)

(assert (=> d!1541280 (=> (not res!2048440) (not e!3008629))))

(assert (=> d!1541280 (= res!2048440 (isEmpty!29575 lt!1966337))))

(assert (=> d!1541280 (= lt!1966337 e!3008632)))

(declare-fun c!820725 () Bool)

(assert (=> d!1541280 (= c!820725 (and (is-Cons!54721 lt!1966304) (= (_1!32165 (h!61153 lt!1966304)) key!5322)))))

(assert (=> d!1541280 (noDuplicateKeys!2404 lt!1966304)))

(assert (=> d!1541280 (= (getPair!993 lt!1966304 key!5322) lt!1966337)))

(assert (= (and d!1541280 c!820725) b!4815532))

(assert (= (and d!1541280 (not c!820725)) b!4815529))

(assert (= (and b!4815529 c!820726) b!4815530))

(assert (= (and b!4815529 (not c!820726)) b!4815527))

(assert (= (and d!1541280 res!2048440) b!4815528))

(assert (= (and d!1541280 (not res!2048438)) b!4815526))

(assert (= (and b!4815526 res!2048441) b!4815533))

(assert (= (and b!4815533 res!2048439) b!4815531))

(declare-fun m!5801694 () Bool)

(assert (=> d!1541280 m!5801694))

(assert (=> d!1541280 m!5801638))

(declare-fun m!5801696 () Bool)

(assert (=> b!4815531 m!5801696))

(assert (=> b!4815531 m!5801696))

(declare-fun m!5801698 () Bool)

(assert (=> b!4815531 m!5801698))

(declare-fun m!5801700 () Bool)

(assert (=> b!4815528 m!5801700))

(assert (=> b!4815533 m!5801696))

(declare-fun m!5801702 () Bool)

(assert (=> b!4815526 m!5801702))

(declare-fun m!5801704 () Bool)

(assert (=> b!4815530 m!5801704))

(assert (=> b!4815477 d!1541280))

(declare-fun d!1541290 () Bool)

(declare-datatypes ((Option!13405 0))(
  ( (None!13404) (Some!13404 (v!49055 List!54845)) )
))
(declare-fun get!18723 (Option!13405) List!54845)

(declare-fun getValueByKey!2558 (List!54846 (_ BitVec 64)) Option!13405)

(assert (=> d!1541290 (= (apply!13258 lm!2251 lt!1966301) (get!18723 (getValueByKey!2558 (toList!7289 lm!2251) lt!1966301)))))

(declare-fun bs!1160499 () Bool)

(assert (= bs!1160499 d!1541290))

(declare-fun m!5801706 () Bool)

(assert (=> bs!1160499 m!5801706))

(assert (=> bs!1160499 m!5801706))

(declare-fun m!5801708 () Bool)

(assert (=> bs!1160499 m!5801708))

(assert (=> b!4815477 d!1541290))

(declare-fun d!1541292 () Bool)

(assert (=> d!1541292 (contains!18523 (toList!7289 lm!2251) (tuple2!57745 lt!1966301 lt!1966304))))

(declare-fun lt!1966342 () Unit!141893)

(declare-fun choose!34915 (ListLongMap!5769 (_ BitVec 64) List!54845) Unit!141893)

(assert (=> d!1541292 (= lt!1966342 (choose!34915 lm!2251 lt!1966301 lt!1966304))))

(assert (=> d!1541292 (contains!18524 lm!2251 lt!1966301)))

(assert (=> d!1541292 (= (lemmaGetValueImpliesTupleContained!664 lm!2251 lt!1966301 lt!1966304) lt!1966342)))

(declare-fun bs!1160500 () Bool)

(assert (= bs!1160500 d!1541292))

(declare-fun m!5801710 () Bool)

(assert (=> bs!1160500 m!5801710))

(declare-fun m!5801712 () Bool)

(assert (=> bs!1160500 m!5801712))

(assert (=> bs!1160500 m!5801628))

(assert (=> b!4815477 d!1541292))

(declare-fun d!1541294 () Bool)

(declare-fun e!3008644 () Bool)

(assert (=> d!1541294 e!3008644))

(declare-fun res!2048450 () Bool)

(assert (=> d!1541294 (=> res!2048450 e!3008644)))

(declare-fun lt!1966355 () Bool)

(assert (=> d!1541294 (= res!2048450 (not lt!1966355))))

(declare-fun lt!1966353 () Bool)

(assert (=> d!1541294 (= lt!1966355 lt!1966353)))

(declare-fun lt!1966354 () Unit!141893)

(declare-fun e!3008643 () Unit!141893)

(assert (=> d!1541294 (= lt!1966354 e!3008643)))

(declare-fun c!820729 () Bool)

(assert (=> d!1541294 (= c!820729 lt!1966353)))

(declare-fun containsKey!4235 (List!54846 (_ BitVec 64)) Bool)

(assert (=> d!1541294 (= lt!1966353 (containsKey!4235 (toList!7289 lm!2251) lt!1966301))))

(assert (=> d!1541294 (= (contains!18524 lm!2251 lt!1966301) lt!1966355)))

(declare-fun b!4815548 () Bool)

(declare-fun lt!1966352 () Unit!141893)

(assert (=> b!4815548 (= e!3008643 lt!1966352)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2344 (List!54846 (_ BitVec 64)) Unit!141893)

(assert (=> b!4815548 (= lt!1966352 (lemmaContainsKeyImpliesGetValueByKeyDefined!2344 (toList!7289 lm!2251) lt!1966301))))

(declare-fun isDefined!10533 (Option!13405) Bool)

(assert (=> b!4815548 (isDefined!10533 (getValueByKey!2558 (toList!7289 lm!2251) lt!1966301))))

(declare-fun b!4815549 () Bool)

(declare-fun Unit!141901 () Unit!141893)

(assert (=> b!4815549 (= e!3008643 Unit!141901)))

(declare-fun b!4815550 () Bool)

(assert (=> b!4815550 (= e!3008644 (isDefined!10533 (getValueByKey!2558 (toList!7289 lm!2251) lt!1966301)))))

(assert (= (and d!1541294 c!820729) b!4815548))

(assert (= (and d!1541294 (not c!820729)) b!4815549))

(assert (= (and d!1541294 (not res!2048450)) b!4815550))

(declare-fun m!5801720 () Bool)

(assert (=> d!1541294 m!5801720))

(declare-fun m!5801722 () Bool)

(assert (=> b!4815548 m!5801722))

(assert (=> b!4815548 m!5801706))

(assert (=> b!4815548 m!5801706))

(declare-fun m!5801726 () Bool)

(assert (=> b!4815548 m!5801726))

(assert (=> b!4815550 m!5801706))

(assert (=> b!4815550 m!5801706))

(assert (=> b!4815550 m!5801726))

(assert (=> b!4815477 d!1541294))

(declare-fun d!1541300 () Bool)

(declare-fun lt!1966358 () Bool)

(declare-fun content!9791 (List!54846) (Set tuple2!57744))

(assert (=> d!1541300 (= lt!1966358 (set.member lt!1966298 (content!9791 (toList!7289 lm!2251))))))

(declare-fun e!3008649 () Bool)

(assert (=> d!1541300 (= lt!1966358 e!3008649)))

(declare-fun res!2048456 () Bool)

(assert (=> d!1541300 (=> (not res!2048456) (not e!3008649))))

(assert (=> d!1541300 (= res!2048456 (is-Cons!54722 (toList!7289 lm!2251)))))

(assert (=> d!1541300 (= (contains!18523 (toList!7289 lm!2251) lt!1966298) lt!1966358)))

(declare-fun b!4815555 () Bool)

(declare-fun e!3008650 () Bool)

(assert (=> b!4815555 (= e!3008649 e!3008650)))

(declare-fun res!2048455 () Bool)

(assert (=> b!4815555 (=> res!2048455 e!3008650)))

(assert (=> b!4815555 (= res!2048455 (= (h!61154 (toList!7289 lm!2251)) lt!1966298))))

(declare-fun b!4815556 () Bool)

(assert (=> b!4815556 (= e!3008650 (contains!18523 (t!362342 (toList!7289 lm!2251)) lt!1966298))))

(assert (= (and d!1541300 res!2048456) b!4815555))

(assert (= (and b!4815555 (not res!2048455)) b!4815556))

(declare-fun m!5801728 () Bool)

(assert (=> d!1541300 m!5801728))

(declare-fun m!5801730 () Bool)

(assert (=> d!1541300 m!5801730))

(declare-fun m!5801732 () Bool)

(assert (=> b!4815556 m!5801732))

(assert (=> b!4815477 d!1541300))

(declare-fun bs!1160502 () Bool)

(declare-fun d!1541302 () Bool)

(assert (= bs!1160502 (and d!1541302 start!498212)))

(declare-fun lambda!234421 () Int)

(assert (=> bs!1160502 (= lambda!234421 lambda!234413)))

(assert (=> d!1541302 (contains!18524 lm!2251 (hash!5223 hashF!1486 key!5322))))

(declare-fun lt!1966361 () Unit!141893)

(declare-fun choose!34916 (ListLongMap!5769 K!16372 Hashable!7153) Unit!141893)

(assert (=> d!1541302 (= lt!1966361 (choose!34916 lm!2251 key!5322 hashF!1486))))

(assert (=> d!1541302 (forall!12459 (toList!7289 lm!2251) lambda!234421)))

(assert (=> d!1541302 (= (lemmaInGenMapThenLongMapContainsHash!1091 lm!2251 key!5322 hashF!1486) lt!1966361)))

(declare-fun bs!1160503 () Bool)

(assert (= bs!1160503 d!1541302))

(assert (=> bs!1160503 m!5801642))

(assert (=> bs!1160503 m!5801642))

(declare-fun m!5801734 () Bool)

(assert (=> bs!1160503 m!5801734))

(declare-fun m!5801736 () Bool)

(assert (=> bs!1160503 m!5801736))

(declare-fun m!5801738 () Bool)

(assert (=> bs!1160503 m!5801738))

(assert (=> b!4815477 d!1541302))

(declare-fun d!1541304 () Bool)

(declare-fun e!3008682 () Bool)

(assert (=> d!1541304 e!3008682))

(declare-fun res!2048475 () Bool)

(assert (=> d!1541304 (=> res!2048475 e!3008682)))

(declare-fun e!3008680 () Bool)

(assert (=> d!1541304 (= res!2048475 e!3008680)))

(declare-fun res!2048477 () Bool)

(assert (=> d!1541304 (=> (not res!2048477) (not e!3008680))))

(declare-fun lt!1966384 () Bool)

(assert (=> d!1541304 (= res!2048477 (not lt!1966384))))

(declare-fun lt!1966388 () Bool)

(assert (=> d!1541304 (= lt!1966384 lt!1966388)))

(declare-fun lt!1966385 () Unit!141893)

(declare-fun e!3008681 () Unit!141893)

(assert (=> d!1541304 (= lt!1966385 e!3008681)))

(declare-fun c!820744 () Bool)

(assert (=> d!1541304 (= c!820744 lt!1966388)))

(declare-fun containsKey!4236 (List!54845 K!16372) Bool)

(assert (=> d!1541304 (= lt!1966388 (containsKey!4236 (toList!7290 (extractMap!2603 (toList!7289 lm!2251))) key!5322))))

(assert (=> d!1541304 (= (contains!18522 (extractMap!2603 (toList!7289 lm!2251)) key!5322) lt!1966384)))

(declare-fun b!4815599 () Bool)

(declare-datatypes ((List!54849 0))(
  ( (Nil!54725) (Cons!54725 (h!61157 K!16372) (t!362345 List!54849)) )
))
(declare-fun e!3008679 () List!54849)

(declare-fun getKeysList!1134 (List!54845) List!54849)

(assert (=> b!4815599 (= e!3008679 (getKeysList!1134 (toList!7290 (extractMap!2603 (toList!7289 lm!2251)))))))

(declare-fun b!4815600 () Bool)

(declare-fun e!3008683 () Unit!141893)

(assert (=> b!4815600 (= e!3008681 e!3008683)))

(declare-fun c!820742 () Bool)

(declare-fun call!335959 () Bool)

(assert (=> b!4815600 (= c!820742 call!335959)))

(declare-fun b!4815601 () Bool)

(assert (=> b!4815601 false))

(declare-fun lt!1966390 () Unit!141893)

(declare-fun lt!1966391 () Unit!141893)

(assert (=> b!4815601 (= lt!1966390 lt!1966391)))

(assert (=> b!4815601 (containsKey!4236 (toList!7290 (extractMap!2603 (toList!7289 lm!2251))) key!5322)))

(declare-fun lemmaInGetKeysListThenContainsKey!1134 (List!54845 K!16372) Unit!141893)

(assert (=> b!4815601 (= lt!1966391 (lemmaInGetKeysListThenContainsKey!1134 (toList!7290 (extractMap!2603 (toList!7289 lm!2251))) key!5322))))

(declare-fun Unit!141902 () Unit!141893)

(assert (=> b!4815601 (= e!3008683 Unit!141902)))

(declare-fun b!4815602 () Bool)

(declare-fun Unit!141903 () Unit!141893)

(assert (=> b!4815602 (= e!3008683 Unit!141903)))

(declare-fun b!4815603 () Bool)

(declare-fun contains!18529 (List!54849 K!16372) Bool)

(declare-fun keys!20087 (ListMap!6703) List!54849)

(assert (=> b!4815603 (= e!3008680 (not (contains!18529 (keys!20087 (extractMap!2603 (toList!7289 lm!2251))) key!5322)))))

(declare-fun b!4815604 () Bool)

(declare-fun e!3008678 () Bool)

(assert (=> b!4815604 (= e!3008678 (contains!18529 (keys!20087 (extractMap!2603 (toList!7289 lm!2251))) key!5322))))

(declare-fun b!4815605 () Bool)

(assert (=> b!4815605 (= e!3008679 (keys!20087 (extractMap!2603 (toList!7289 lm!2251))))))

(declare-fun bm!335954 () Bool)

(assert (=> bm!335954 (= call!335959 (contains!18529 e!3008679 key!5322))))

(declare-fun c!820743 () Bool)

(assert (=> bm!335954 (= c!820743 c!820744)))

(declare-fun b!4815606 () Bool)

(assert (=> b!4815606 (= e!3008682 e!3008678)))

(declare-fun res!2048476 () Bool)

(assert (=> b!4815606 (=> (not res!2048476) (not e!3008678))))

(declare-datatypes ((Option!13406 0))(
  ( (None!13405) (Some!13405 (v!49056 V!16618)) )
))
(declare-fun isDefined!10534 (Option!13406) Bool)

(declare-fun getValueByKey!2559 (List!54845 K!16372) Option!13406)

(assert (=> b!4815606 (= res!2048476 (isDefined!10534 (getValueByKey!2559 (toList!7290 (extractMap!2603 (toList!7289 lm!2251))) key!5322)))))

(declare-fun b!4815607 () Bool)

(declare-fun lt!1966389 () Unit!141893)

(assert (=> b!4815607 (= e!3008681 lt!1966389)))

(declare-fun lt!1966386 () Unit!141893)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2345 (List!54845 K!16372) Unit!141893)

(assert (=> b!4815607 (= lt!1966386 (lemmaContainsKeyImpliesGetValueByKeyDefined!2345 (toList!7290 (extractMap!2603 (toList!7289 lm!2251))) key!5322))))

(assert (=> b!4815607 (isDefined!10534 (getValueByKey!2559 (toList!7290 (extractMap!2603 (toList!7289 lm!2251))) key!5322))))

(declare-fun lt!1966387 () Unit!141893)

(assert (=> b!4815607 (= lt!1966387 lt!1966386)))

(declare-fun lemmaInListThenGetKeysListContains!1129 (List!54845 K!16372) Unit!141893)

(assert (=> b!4815607 (= lt!1966389 (lemmaInListThenGetKeysListContains!1129 (toList!7290 (extractMap!2603 (toList!7289 lm!2251))) key!5322))))

(assert (=> b!4815607 call!335959))

(assert (= (and d!1541304 c!820744) b!4815607))

(assert (= (and d!1541304 (not c!820744)) b!4815600))

(assert (= (and b!4815600 c!820742) b!4815601))

(assert (= (and b!4815600 (not c!820742)) b!4815602))

(assert (= (or b!4815607 b!4815600) bm!335954))

(assert (= (and bm!335954 c!820743) b!4815599))

(assert (= (and bm!335954 (not c!820743)) b!4815605))

(assert (= (and d!1541304 res!2048477) b!4815603))

(assert (= (and d!1541304 (not res!2048475)) b!4815606))

(assert (= (and b!4815606 res!2048476) b!4815604))

(assert (=> b!4815605 m!5801614))

(declare-fun m!5801758 () Bool)

(assert (=> b!4815605 m!5801758))

(declare-fun m!5801760 () Bool)

(assert (=> b!4815606 m!5801760))

(assert (=> b!4815606 m!5801760))

(declare-fun m!5801762 () Bool)

(assert (=> b!4815606 m!5801762))

(declare-fun m!5801764 () Bool)

(assert (=> d!1541304 m!5801764))

(assert (=> b!4815604 m!5801614))

(assert (=> b!4815604 m!5801758))

(assert (=> b!4815604 m!5801758))

(declare-fun m!5801766 () Bool)

(assert (=> b!4815604 m!5801766))

(declare-fun m!5801768 () Bool)

(assert (=> bm!335954 m!5801768))

(declare-fun m!5801770 () Bool)

(assert (=> b!4815607 m!5801770))

(assert (=> b!4815607 m!5801760))

(assert (=> b!4815607 m!5801760))

(assert (=> b!4815607 m!5801762))

(declare-fun m!5801772 () Bool)

(assert (=> b!4815607 m!5801772))

(declare-fun m!5801774 () Bool)

(assert (=> b!4815599 m!5801774))

(assert (=> b!4815603 m!5801614))

(assert (=> b!4815603 m!5801758))

(assert (=> b!4815603 m!5801758))

(assert (=> b!4815603 m!5801766))

(assert (=> b!4815601 m!5801764))

(declare-fun m!5801776 () Bool)

(assert (=> b!4815601 m!5801776))

(assert (=> b!4815474 d!1541304))

(declare-fun bs!1160506 () Bool)

(declare-fun d!1541310 () Bool)

(assert (= bs!1160506 (and d!1541310 start!498212)))

(declare-fun lambda!234427 () Int)

(assert (=> bs!1160506 (= lambda!234427 lambda!234413)))

(declare-fun bs!1160507 () Bool)

(assert (= bs!1160507 (and d!1541310 d!1541302)))

(assert (=> bs!1160507 (= lambda!234427 lambda!234421)))

(declare-fun lt!1966402 () ListMap!6703)

(declare-fun invariantList!1787 (List!54845) Bool)

(assert (=> d!1541310 (invariantList!1787 (toList!7290 lt!1966402))))

(declare-fun e!3008690 () ListMap!6703)

(assert (=> d!1541310 (= lt!1966402 e!3008690)))

(declare-fun c!820749 () Bool)

(assert (=> d!1541310 (= c!820749 (is-Cons!54722 (toList!7289 lm!2251)))))

(assert (=> d!1541310 (forall!12459 (toList!7289 lm!2251) lambda!234427)))

(assert (=> d!1541310 (= (extractMap!2603 (toList!7289 lm!2251)) lt!1966402)))

(declare-fun b!4815618 () Bool)

(declare-fun addToMapMapFromBucket!1764 (List!54845 ListMap!6703) ListMap!6703)

(assert (=> b!4815618 (= e!3008690 (addToMapMapFromBucket!1764 (_2!32166 (h!61154 (toList!7289 lm!2251))) (extractMap!2603 (t!362342 (toList!7289 lm!2251)))))))

(declare-fun b!4815619 () Bool)

(assert (=> b!4815619 (= e!3008690 (ListMap!6704 Nil!54721))))

(assert (= (and d!1541310 c!820749) b!4815618))

(assert (= (and d!1541310 (not c!820749)) b!4815619))

(declare-fun m!5801778 () Bool)

(assert (=> d!1541310 m!5801778))

(declare-fun m!5801780 () Bool)

(assert (=> d!1541310 m!5801780))

(declare-fun m!5801782 () Bool)

(assert (=> b!4815618 m!5801782))

(assert (=> b!4815618 m!5801782))

(declare-fun m!5801784 () Bool)

(assert (=> b!4815618 m!5801784))

(assert (=> b!4815474 d!1541310))

(declare-fun bs!1160508 () Bool)

(declare-fun d!1541312 () Bool)

(assert (= bs!1160508 (and d!1541312 start!498212)))

(declare-fun lambda!234430 () Int)

(assert (=> bs!1160508 (not (= lambda!234430 lambda!234413))))

(declare-fun bs!1160509 () Bool)

(assert (= bs!1160509 (and d!1541312 d!1541302)))

(assert (=> bs!1160509 (not (= lambda!234430 lambda!234421))))

(declare-fun bs!1160510 () Bool)

(assert (= bs!1160510 (and d!1541312 d!1541310)))

(assert (=> bs!1160510 (not (= lambda!234430 lambda!234427))))

(assert (=> d!1541312 true))

(assert (=> d!1541312 (= (allKeysSameHashInMap!2469 lm!2251 hashF!1486) (forall!12459 (toList!7289 lm!2251) lambda!234430))))

(declare-fun bs!1160511 () Bool)

(assert (= bs!1160511 d!1541312))

(declare-fun m!5801794 () Bool)

(assert (=> bs!1160511 m!5801794))

(assert (=> b!4815479 d!1541312))

(declare-fun d!1541316 () Bool)

(declare-fun res!2048485 () Bool)

(declare-fun e!3008697 () Bool)

(assert (=> d!1541316 (=> res!2048485 e!3008697)))

(assert (=> d!1541316 (= res!2048485 (is-Nil!54722 (toList!7289 lm!2251)))))

(assert (=> d!1541316 (= (forall!12459 (toList!7289 lm!2251) lambda!234413) e!3008697)))

(declare-fun b!4815629 () Bool)

(declare-fun e!3008698 () Bool)

(assert (=> b!4815629 (= e!3008697 e!3008698)))

(declare-fun res!2048486 () Bool)

(assert (=> b!4815629 (=> (not res!2048486) (not e!3008698))))

(assert (=> b!4815629 (= res!2048486 (dynLambda!22159 lambda!234413 (h!61154 (toList!7289 lm!2251))))))

(declare-fun b!4815630 () Bool)

(assert (=> b!4815630 (= e!3008698 (forall!12459 (t!362342 (toList!7289 lm!2251)) lambda!234413))))

(assert (= (and d!1541316 (not res!2048485)) b!4815629))

(assert (= (and b!4815629 res!2048486) b!4815630))

(declare-fun b_lambda!188413 () Bool)

(assert (=> (not b_lambda!188413) (not b!4815629)))

(declare-fun m!5801798 () Bool)

(assert (=> b!4815629 m!5801798))

(declare-fun m!5801800 () Bool)

(assert (=> b!4815630 m!5801800))

(assert (=> start!498212 d!1541316))

(declare-fun d!1541320 () Bool)

(declare-fun isStrictlySorted!948 (List!54846) Bool)

(assert (=> d!1541320 (= (inv!70273 lm!2251) (isStrictlySorted!948 (toList!7289 lm!2251)))))

(declare-fun bs!1160513 () Bool)

(assert (= bs!1160513 d!1541320))

(declare-fun m!5801802 () Bool)

(assert (=> bs!1160513 m!5801802))

(assert (=> start!498212 d!1541320))

(declare-fun bs!1160514 () Bool)

(declare-fun d!1541322 () Bool)

(assert (= bs!1160514 (and d!1541322 start!498212)))

(declare-fun lambda!234435 () Int)

(assert (=> bs!1160514 (= lambda!234435 lambda!234413)))

(declare-fun bs!1160515 () Bool)

(assert (= bs!1160515 (and d!1541322 d!1541302)))

(assert (=> bs!1160515 (= lambda!234435 lambda!234421)))

(declare-fun bs!1160516 () Bool)

(assert (= bs!1160516 (and d!1541322 d!1541310)))

(assert (=> bs!1160516 (= lambda!234435 lambda!234427)))

(declare-fun bs!1160517 () Bool)

(assert (= bs!1160517 (and d!1541322 d!1541312)))

(assert (=> bs!1160517 (not (= lambda!234435 lambda!234430))))

(assert (=> d!1541322 (not (contains!18522 (extractMap!2603 (toList!7289 lm!2251)) key!5322))))

(declare-fun lt!1966412 () Unit!141893)

(declare-fun choose!34917 (ListLongMap!5769 K!16372 Hashable!7153) Unit!141893)

(assert (=> d!1541322 (= lt!1966412 (choose!34917 lm!2251 key!5322 hashF!1486))))

(assert (=> d!1541322 (forall!12459 (toList!7289 lm!2251) lambda!234435)))

(assert (=> d!1541322 (= (lemmaNotInItsHashBucketThenNotInMap!425 lm!2251 key!5322 hashF!1486) lt!1966412)))

(declare-fun bs!1160518 () Bool)

(assert (= bs!1160518 d!1541322))

(assert (=> bs!1160518 m!5801614))

(assert (=> bs!1160518 m!5801614))

(assert (=> bs!1160518 m!5801616))

(declare-fun m!5801810 () Bool)

(assert (=> bs!1160518 m!5801810))

(declare-fun m!5801812 () Bool)

(assert (=> bs!1160518 m!5801812))

(assert (=> b!4815478 d!1541322))

(declare-fun b!4815641 () Bool)

(declare-fun e!3008707 () Bool)

(declare-fun tp!1361836 () Bool)

(declare-fun tp!1361837 () Bool)

(assert (=> b!4815641 (= e!3008707 (and tp!1361836 tp!1361837))))

(assert (=> b!4815475 (= tp!1361828 e!3008707)))

(assert (= (and b!4815475 (is-Cons!54722 (toList!7289 lm!2251))) b!4815641))

(declare-fun b_lambda!188415 () Bool)

(assert (= b_lambda!188413 (or start!498212 b_lambda!188415)))

(declare-fun bs!1160519 () Bool)

(declare-fun d!1541326 () Bool)

(assert (= bs!1160519 (and d!1541326 start!498212)))

(assert (=> bs!1160519 (= (dynLambda!22159 lambda!234413 (h!61154 (toList!7289 lm!2251))) (noDuplicateKeys!2404 (_2!32166 (h!61154 (toList!7289 lm!2251)))))))

(declare-fun m!5801814 () Bool)

(assert (=> bs!1160519 m!5801814))

(assert (=> b!4815629 d!1541326))

(declare-fun b_lambda!188417 () Bool)

(assert (= b_lambda!188409 (or start!498212 b_lambda!188417)))

(declare-fun bs!1160521 () Bool)

(declare-fun d!1541328 () Bool)

(assert (= bs!1160521 (and d!1541328 start!498212)))

(assert (=> bs!1160521 (= (dynLambda!22159 lambda!234413 lt!1966298) (noDuplicateKeys!2404 (_2!32166 lt!1966298)))))

(declare-fun m!5801816 () Bool)

(assert (=> bs!1160521 m!5801816))

(assert (=> d!1541278 d!1541328))

(push 1)

(assert (not b!4815528))

(assert (not b!4815605))

(assert (not b!4815531))

(assert (not b!4815604))

(assert (not b!4815603))

(assert (not b!4815607))

(assert (not b!4815618))

(assert (not b!4815533))

(assert (not b!4815502))

(assert (not b!4815530))

(assert (not bs!1160519))

(assert (not b!4815641))

(assert (not bs!1160521))

(assert (not d!1541320))

(assert (not d!1541292))

(assert (not b!4815556))

(assert (not d!1541280))

(assert (not d!1541322))

(assert (not b_lambda!188415))

(assert (not b!4815606))

(assert (not b!4815599))

(assert (not d!1541302))

(assert (not d!1541294))

(assert (not d!1541278))

(assert (not d!1541310))

(assert (not b!4815601))

(assert (not d!1541300))

(assert (not b!4815630))

(assert (not b!4815548))

(assert (not b!4815550))

(assert (not b_lambda!188417))

(assert (not b!4815503))

(assert (not d!1541312))

(assert (not b!4815506))

(assert (not b!4815526))

(assert (not d!1541304))

(assert (not bm!335954))

(assert (not d!1541272))

(assert tp_is_empty!34179)

(assert (not d!1541290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

