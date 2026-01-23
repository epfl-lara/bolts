; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!758954 () Bool)

(assert start!758954)

(declare-fun b!8056444 () Bool)

(declare-fun e!4747602 () Bool)

(declare-fun tp!2413943 () Bool)

(assert (=> b!8056444 (= e!4747602 tp!2413943)))

(declare-fun tp_is_empty!54985 () Bool)

(declare-fun tp_is_empty!54983 () Bool)

(declare-fun tp!2413942 () Bool)

(declare-fun b!8056445 () Bool)

(declare-fun e!4747601 () Bool)

(assert (=> b!8056445 (= e!4747601 (and tp_is_empty!54983 tp_is_empty!54985 tp!2413942))))

(declare-fun b!8056446 () Bool)

(declare-fun res!3186715 () Bool)

(declare-fun e!4747600 () Bool)

(assert (=> b!8056446 (=> res!3186715 e!4747600)))

(declare-datatypes ((K!22866 0))(
  ( (K!22867 (val!32965 Int)) )
))
(declare-datatypes ((V!23120 0))(
  ( (V!23121 (val!32966 Int)) )
))
(declare-datatypes ((tuple2!70930 0))(
  ( (tuple2!70931 (_1!38768 K!22866) (_2!38768 V!23120)) )
))
(declare-datatypes ((List!75711 0))(
  ( (Nil!75585) (Cons!75585 (h!82033 tuple2!70930) (t!391483 List!75711)) )
))
(declare-fun l!14636 () List!75711)

(declare-fun key!6222 () K!22866)

(declare-fun containsKey!4892 (List!75711 K!22866) Bool)

(assert (=> b!8056446 (= res!3186715 (not (containsKey!4892 (t!391483 l!14636) key!6222)))))

(declare-fun b!8056447 () Bool)

(declare-fun e!4747598 () Bool)

(declare-fun e!4747599 () Bool)

(assert (=> b!8056447 (= e!4747598 e!4747599)))

(declare-fun res!3186717 () Bool)

(assert (=> b!8056447 (=> (not res!3186717) (not e!4747599))))

(declare-datatypes ((ListMap!7333 0))(
  ( (ListMap!7334 (toList!11941 List!75711)) )
))
(declare-fun lt!2730377 () ListMap!7333)

(declare-fun contains!21269 (ListMap!7333 K!22866) Bool)

(assert (=> b!8056447 (= res!3186717 (contains!21269 lt!2730377 key!6222))))

(declare-fun acc!1298 () ListMap!7333)

(declare-fun addToMapMapFromBucket!2008 (List!75711 ListMap!7333) ListMap!7333)

(assert (=> b!8056447 (= lt!2730377 (addToMapMapFromBucket!2008 l!14636 acc!1298))))

(declare-fun b!8056448 () Bool)

(declare-fun res!3186706 () Bool)

(declare-fun e!4747605 () Bool)

(assert (=> b!8056448 (=> (not res!3186706) (not e!4747605))))

(declare-fun value!3131 () V!23120)

(declare-fun apply!14454 (ListMap!7333 K!22866) V!23120)

(assert (=> b!8056448 (= res!3186706 (= (apply!14454 acc!1298 key!6222) value!3131))))

(declare-fun b!8056449 () Bool)

(declare-fun res!3186716 () Bool)

(declare-fun e!4747603 () Bool)

(assert (=> b!8056449 (=> (not res!3186716) (not e!4747603))))

(declare-fun contains!21270 (List!75711 tuple2!70930) Bool)

(assert (=> b!8056449 (= res!3186716 (contains!21270 l!14636 (tuple2!70931 key!6222 value!3131)))))

(declare-fun b!8056450 () Bool)

(declare-fun res!3186711 () Bool)

(declare-fun e!4747606 () Bool)

(assert (=> b!8056450 (=> (not res!3186711) (not e!4747606))))

(assert (=> b!8056450 (= res!3186711 (contains!21270 (t!391483 l!14636) (tuple2!70931 key!6222 value!3131)))))

(declare-fun b!8056451 () Bool)

(declare-fun res!3186713 () Bool)

(assert (=> b!8056451 (=> res!3186713 e!4747600)))

(declare-fun lt!2730373 () ListMap!7333)

(assert (=> b!8056451 (= res!3186713 (not (contains!21269 lt!2730373 key!6222)))))

(declare-fun b!8056452 () Bool)

(declare-fun lt!2730378 () Bool)

(assert (=> b!8056452 (= e!4747603 (not lt!2730378))))

(declare-fun res!3186709 () Bool)

(assert (=> start!758954 (=> (not res!3186709) (not e!4747598))))

(declare-fun noDuplicateKeys!2727 (List!75711) Bool)

(assert (=> start!758954 (= res!3186709 (noDuplicateKeys!2727 l!14636))))

(assert (=> start!758954 e!4747598))

(assert (=> start!758954 e!4747601))

(assert (=> start!758954 tp_is_empty!54983))

(assert (=> start!758954 tp_is_empty!54985))

(declare-fun inv!97356 (ListMap!7333) Bool)

(assert (=> start!758954 (and (inv!97356 acc!1298) e!4747602)))

(declare-fun b!8056453 () Bool)

(declare-fun e!4747597 () Bool)

(assert (=> b!8056453 (= e!4747597 e!4747603)))

(declare-fun res!3186707 () Bool)

(assert (=> b!8056453 (=> (not res!3186707) (not e!4747603))))

(assert (=> b!8056453 (= res!3186707 (containsKey!4892 l!14636 key!6222))))

(declare-fun b!8056454 () Bool)

(assert (=> b!8056454 (= e!4747605 (not (containsKey!4892 l!14636 key!6222)))))

(declare-fun b!8056455 () Bool)

(declare-fun res!3186705 () Bool)

(declare-fun e!4747604 () Bool)

(assert (=> b!8056455 (=> (not res!3186705) (not e!4747604))))

(assert (=> b!8056455 (= res!3186705 (not (is-Nil!75585 l!14636)))))

(declare-fun b!8056456 () Bool)

(assert (=> b!8056456 (= e!4747600 (= (apply!14454 lt!2730377 key!6222) value!3131))))

(assert (=> b!8056456 (= (apply!14454 lt!2730373 key!6222) value!3131)))

(declare-datatypes ((Unit!172492 0))(
  ( (Unit!172493) )
))
(declare-fun lt!2730374 () Unit!172492)

(declare-fun lt!2730375 () ListMap!7333)

(declare-fun lemmaAddToMapFromBucketMaintainsMapping!23 (List!75711 ListMap!7333 K!22866 V!23120) Unit!172492)

(assert (=> b!8056456 (= lt!2730374 (lemmaAddToMapFromBucketMaintainsMapping!23 (t!391483 l!14636) lt!2730375 key!6222 value!3131))))

(declare-fun b!8056457 () Bool)

(assert (=> b!8056457 (= e!4747604 e!4747606)))

(declare-fun res!3186704 () Bool)

(assert (=> b!8056457 (=> (not res!3186704) (not e!4747606))))

(assert (=> b!8056457 (= res!3186704 (and (not (= (_1!38768 (h!82033 l!14636)) key!6222)) (not lt!2730378)))))

(assert (=> b!8056457 (= lt!2730373 (addToMapMapFromBucket!2008 (t!391483 l!14636) lt!2730375))))

(declare-fun +!2692 (ListMap!7333 tuple2!70930) ListMap!7333)

(assert (=> b!8056457 (= lt!2730375 (+!2692 acc!1298 (h!82033 l!14636)))))

(declare-fun b!8056458 () Bool)

(assert (=> b!8056458 (= e!4747599 e!4747604)))

(declare-fun res!3186708 () Bool)

(assert (=> b!8056458 (=> (not res!3186708) (not e!4747604))))

(assert (=> b!8056458 (= res!3186708 e!4747597)))

(declare-fun res!3186712 () Bool)

(assert (=> b!8056458 (=> res!3186712 e!4747597)))

(assert (=> b!8056458 (= res!3186712 e!4747605)))

(declare-fun res!3186710 () Bool)

(assert (=> b!8056458 (=> (not res!3186710) (not e!4747605))))

(assert (=> b!8056458 (= res!3186710 lt!2730378)))

(assert (=> b!8056458 (= lt!2730378 (contains!21269 acc!1298 key!6222))))

(declare-fun b!8056459 () Bool)

(assert (=> b!8056459 (= e!4747606 (not e!4747600))))

(declare-fun res!3186714 () Bool)

(assert (=> b!8056459 (=> res!3186714 e!4747600)))

(assert (=> b!8056459 (= res!3186714 (not (noDuplicateKeys!2727 (t!391483 l!14636))))))

(assert (=> b!8056459 (not (contains!21269 lt!2730375 key!6222))))

(declare-fun lt!2730376 () Unit!172492)

(declare-fun addStillNotContains!20 (ListMap!7333 K!22866 V!23120 K!22866) Unit!172492)

(assert (=> b!8056459 (= lt!2730376 (addStillNotContains!20 acc!1298 (_1!38768 (h!82033 l!14636)) (_2!38768 (h!82033 l!14636)) key!6222))))

(assert (= (and start!758954 res!3186709) b!8056447))

(assert (= (and b!8056447 res!3186717) b!8056458))

(assert (= (and b!8056458 res!3186710) b!8056448))

(assert (= (and b!8056448 res!3186706) b!8056454))

(assert (= (and b!8056458 (not res!3186712)) b!8056453))

(assert (= (and b!8056453 res!3186707) b!8056449))

(assert (= (and b!8056449 res!3186716) b!8056452))

(assert (= (and b!8056458 res!3186708) b!8056455))

(assert (= (and b!8056455 res!3186705) b!8056457))

(assert (= (and b!8056457 res!3186704) b!8056450))

(assert (= (and b!8056450 res!3186711) b!8056459))

(assert (= (and b!8056459 (not res!3186714)) b!8056451))

(assert (= (and b!8056451 (not res!3186713)) b!8056446))

(assert (= (and b!8056446 (not res!3186715)) b!8056456))

(assert (= (and start!758954 (is-Cons!75585 l!14636)) b!8056445))

(assert (= start!758954 b!8056444))

(declare-fun m!8409626 () Bool)

(assert (=> b!8056458 m!8409626))

(declare-fun m!8409628 () Bool)

(assert (=> b!8056459 m!8409628))

(declare-fun m!8409630 () Bool)

(assert (=> b!8056459 m!8409630))

(declare-fun m!8409632 () Bool)

(assert (=> b!8056459 m!8409632))

(declare-fun m!8409634 () Bool)

(assert (=> b!8056450 m!8409634))

(declare-fun m!8409636 () Bool)

(assert (=> b!8056457 m!8409636))

(declare-fun m!8409638 () Bool)

(assert (=> b!8056457 m!8409638))

(declare-fun m!8409640 () Bool)

(assert (=> b!8056448 m!8409640))

(declare-fun m!8409642 () Bool)

(assert (=> b!8056454 m!8409642))

(declare-fun m!8409644 () Bool)

(assert (=> b!8056447 m!8409644))

(declare-fun m!8409646 () Bool)

(assert (=> b!8056447 m!8409646))

(declare-fun m!8409648 () Bool)

(assert (=> b!8056451 m!8409648))

(declare-fun m!8409650 () Bool)

(assert (=> b!8056449 m!8409650))

(declare-fun m!8409652 () Bool)

(assert (=> b!8056456 m!8409652))

(declare-fun m!8409654 () Bool)

(assert (=> b!8056456 m!8409654))

(declare-fun m!8409656 () Bool)

(assert (=> b!8056456 m!8409656))

(assert (=> b!8056453 m!8409642))

(declare-fun m!8409658 () Bool)

(assert (=> start!758954 m!8409658))

(declare-fun m!8409660 () Bool)

(assert (=> start!758954 m!8409660))

(declare-fun m!8409662 () Bool)

(assert (=> b!8056446 m!8409662))

(push 1)

(assert (not b!8056449))

(assert (not b!8056457))

(assert (not b!8056444))

(assert tp_is_empty!54983)

(assert (not start!758954))

(assert (not b!8056454))

(assert (not b!8056456))

(assert (not b!8056450))

(assert (not b!8056451))

(assert (not b!8056447))

(assert (not b!8056445))

(assert (not b!8056453))

(assert (not b!8056446))

(assert tp_is_empty!54985)

(assert (not b!8056448))

(assert (not b!8056458))

(assert (not b!8056459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2398648 () Bool)

(declare-fun res!3186764 () Bool)

(declare-fun e!4747641 () Bool)

(assert (=> d!2398648 (=> res!3186764 e!4747641)))

(assert (=> d!2398648 (= res!3186764 (and (is-Cons!75585 l!14636) (= (_1!38768 (h!82033 l!14636)) key!6222)))))

(assert (=> d!2398648 (= (containsKey!4892 l!14636 key!6222) e!4747641)))

(declare-fun b!8056512 () Bool)

(declare-fun e!4747642 () Bool)

(assert (=> b!8056512 (= e!4747641 e!4747642)))

(declare-fun res!3186765 () Bool)

(assert (=> b!8056512 (=> (not res!3186765) (not e!4747642))))

(assert (=> b!8056512 (= res!3186765 (is-Cons!75585 l!14636))))

(declare-fun b!8056513 () Bool)

(assert (=> b!8056513 (= e!4747642 (containsKey!4892 (t!391483 l!14636) key!6222))))

(assert (= (and d!2398648 (not res!3186764)) b!8056512))

(assert (= (and b!8056512 res!3186765) b!8056513))

(assert (=> b!8056513 m!8409662))

(assert (=> b!8056454 d!2398648))

(assert (=> b!8056453 d!2398648))

(declare-fun d!2398650 () Bool)

(declare-fun res!3186766 () Bool)

(declare-fun e!4747643 () Bool)

(assert (=> d!2398650 (=> res!3186766 e!4747643)))

(assert (=> d!2398650 (= res!3186766 (and (is-Cons!75585 (t!391483 l!14636)) (= (_1!38768 (h!82033 (t!391483 l!14636))) key!6222)))))

(assert (=> d!2398650 (= (containsKey!4892 (t!391483 l!14636) key!6222) e!4747643)))

(declare-fun b!8056514 () Bool)

(declare-fun e!4747644 () Bool)

(assert (=> b!8056514 (= e!4747643 e!4747644)))

(declare-fun res!3186767 () Bool)

(assert (=> b!8056514 (=> (not res!3186767) (not e!4747644))))

(assert (=> b!8056514 (= res!3186767 (is-Cons!75585 (t!391483 l!14636)))))

(declare-fun b!8056515 () Bool)

(assert (=> b!8056515 (= e!4747644 (containsKey!4892 (t!391483 (t!391483 l!14636)) key!6222))))

(assert (= (and d!2398650 (not res!3186766)) b!8056514))

(assert (= (and b!8056514 res!3186767) b!8056515))

(declare-fun m!8409702 () Bool)

(assert (=> b!8056515 m!8409702))

(assert (=> b!8056446 d!2398650))

(declare-fun d!2398652 () Bool)

(declare-datatypes ((Option!18017 0))(
  ( (None!18016) (Some!18016 (v!55365 V!23120)) )
))
(declare-fun get!27245 (Option!18017) V!23120)

(declare-fun getValueByKey!2801 (List!75711 K!22866) Option!18017)

(assert (=> d!2398652 (= (apply!14454 lt!2730377 key!6222) (get!27245 (getValueByKey!2801 (toList!11941 lt!2730377) key!6222)))))

(declare-fun bs!1973139 () Bool)

(assert (= bs!1973139 d!2398652))

(declare-fun m!8409704 () Bool)

(assert (=> bs!1973139 m!8409704))

(assert (=> bs!1973139 m!8409704))

(declare-fun m!8409706 () Bool)

(assert (=> bs!1973139 m!8409706))

(assert (=> b!8056456 d!2398652))

(declare-fun d!2398656 () Bool)

(assert (=> d!2398656 (= (apply!14454 lt!2730373 key!6222) (get!27245 (getValueByKey!2801 (toList!11941 lt!2730373) key!6222)))))

(declare-fun bs!1973140 () Bool)

(assert (= bs!1973140 d!2398656))

(declare-fun m!8409708 () Bool)

(assert (=> bs!1973140 m!8409708))

(assert (=> bs!1973140 m!8409708))

(declare-fun m!8409710 () Bool)

(assert (=> bs!1973140 m!8409710))

(assert (=> b!8056456 d!2398656))

(declare-fun d!2398658 () Bool)

(assert (=> d!2398658 (= (apply!14454 (addToMapMapFromBucket!2008 (t!391483 l!14636) lt!2730375) key!6222) value!3131)))

(declare-fun lt!2730402 () Unit!172492)

(declare-fun choose!60558 (List!75711 ListMap!7333 K!22866 V!23120) Unit!172492)

(assert (=> d!2398658 (= lt!2730402 (choose!60558 (t!391483 l!14636) lt!2730375 key!6222 value!3131))))

(assert (=> d!2398658 (noDuplicateKeys!2727 (t!391483 l!14636))))

(assert (=> d!2398658 (= (lemmaAddToMapFromBucketMaintainsMapping!23 (t!391483 l!14636) lt!2730375 key!6222 value!3131) lt!2730402)))

(declare-fun bs!1973141 () Bool)

(assert (= bs!1973141 d!2398658))

(assert (=> bs!1973141 m!8409636))

(assert (=> bs!1973141 m!8409636))

(declare-fun m!8409716 () Bool)

(assert (=> bs!1973141 m!8409716))

(declare-fun m!8409718 () Bool)

(assert (=> bs!1973141 m!8409718))

(assert (=> bs!1973141 m!8409628))

(assert (=> b!8056456 d!2398658))

(declare-fun d!2398662 () Bool)

(declare-fun res!3186778 () Bool)

(declare-fun e!4747655 () Bool)

(assert (=> d!2398662 (=> res!3186778 e!4747655)))

(assert (=> d!2398662 (= res!3186778 (not (is-Cons!75585 (t!391483 l!14636))))))

(assert (=> d!2398662 (= (noDuplicateKeys!2727 (t!391483 l!14636)) e!4747655)))

(declare-fun b!8056526 () Bool)

(declare-fun e!4747656 () Bool)

(assert (=> b!8056526 (= e!4747655 e!4747656)))

(declare-fun res!3186779 () Bool)

(assert (=> b!8056526 (=> (not res!3186779) (not e!4747656))))

(assert (=> b!8056526 (= res!3186779 (not (containsKey!4892 (t!391483 (t!391483 l!14636)) (_1!38768 (h!82033 (t!391483 l!14636))))))))

(declare-fun b!8056527 () Bool)

(assert (=> b!8056527 (= e!4747656 (noDuplicateKeys!2727 (t!391483 (t!391483 l!14636))))))

(assert (= (and d!2398662 (not res!3186778)) b!8056526))

(assert (= (and b!8056526 res!3186779) b!8056527))

(declare-fun m!8409720 () Bool)

(assert (=> b!8056526 m!8409720))

(declare-fun m!8409722 () Bool)

(assert (=> b!8056527 m!8409722))

(assert (=> b!8056459 d!2398662))

(declare-fun b!8056573 () Bool)

(assert (=> b!8056573 false))

(declare-fun lt!2730447 () Unit!172492)

(declare-fun lt!2730450 () Unit!172492)

(assert (=> b!8056573 (= lt!2730447 lt!2730450)))

(declare-fun containsKey!4894 (List!75711 K!22866) Bool)

(assert (=> b!8056573 (containsKey!4894 (toList!11941 lt!2730375) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1260 (List!75711 K!22866) Unit!172492)

(assert (=> b!8056573 (= lt!2730450 (lemmaInGetKeysListThenContainsKey!1260 (toList!11941 lt!2730375) key!6222))))

(declare-fun e!4747688 () Unit!172492)

(declare-fun Unit!172496 () Unit!172492)

(assert (=> b!8056573 (= e!4747688 Unit!172496)))

(declare-fun b!8056574 () Bool)

(declare-fun e!4747689 () Bool)

(declare-datatypes ((List!75713 0))(
  ( (Nil!75587) (Cons!75587 (h!82035 K!22866) (t!391485 List!75713)) )
))
(declare-fun contains!21273 (List!75713 K!22866) Bool)

(declare-fun keys!30877 (ListMap!7333) List!75713)

(assert (=> b!8056574 (= e!4747689 (contains!21273 (keys!30877 lt!2730375) key!6222))))

(declare-fun bm!747500 () Bool)

(declare-fun call!747505 () Bool)

(declare-fun e!4747691 () List!75713)

(assert (=> bm!747500 (= call!747505 (contains!21273 e!4747691 key!6222))))

(declare-fun c!1476629 () Bool)

(declare-fun c!1476627 () Bool)

(assert (=> bm!747500 (= c!1476629 c!1476627)))

(declare-fun b!8056575 () Bool)

(assert (=> b!8056575 (= e!4747691 (keys!30877 lt!2730375))))

(declare-fun b!8056576 () Bool)

(declare-fun e!4747692 () Unit!172492)

(declare-fun lt!2730448 () Unit!172492)

(assert (=> b!8056576 (= e!4747692 lt!2730448)))

(declare-fun lt!2730443 () Unit!172492)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2572 (List!75711 K!22866) Unit!172492)

(assert (=> b!8056576 (= lt!2730443 (lemmaContainsKeyImpliesGetValueByKeyDefined!2572 (toList!11941 lt!2730375) key!6222))))

(declare-fun isDefined!14550 (Option!18017) Bool)

(assert (=> b!8056576 (isDefined!14550 (getValueByKey!2801 (toList!11941 lt!2730375) key!6222))))

(declare-fun lt!2730449 () Unit!172492)

(assert (=> b!8056576 (= lt!2730449 lt!2730443)))

(declare-fun lemmaInListThenGetKeysListContains!1255 (List!75711 K!22866) Unit!172492)

(assert (=> b!8056576 (= lt!2730448 (lemmaInListThenGetKeysListContains!1255 (toList!11941 lt!2730375) key!6222))))

(assert (=> b!8056576 call!747505))

(declare-fun d!2398664 () Bool)

(declare-fun e!4747687 () Bool)

(assert (=> d!2398664 e!4747687))

(declare-fun res!3186797 () Bool)

(assert (=> d!2398664 (=> res!3186797 e!4747687)))

(declare-fun e!4747690 () Bool)

(assert (=> d!2398664 (= res!3186797 e!4747690)))

(declare-fun res!3186796 () Bool)

(assert (=> d!2398664 (=> (not res!3186796) (not e!4747690))))

(declare-fun lt!2730444 () Bool)

(assert (=> d!2398664 (= res!3186796 (not lt!2730444))))

(declare-fun lt!2730446 () Bool)

(assert (=> d!2398664 (= lt!2730444 lt!2730446)))

(declare-fun lt!2730445 () Unit!172492)

(assert (=> d!2398664 (= lt!2730445 e!4747692)))

(assert (=> d!2398664 (= c!1476627 lt!2730446)))

(assert (=> d!2398664 (= lt!2730446 (containsKey!4894 (toList!11941 lt!2730375) key!6222))))

(assert (=> d!2398664 (= (contains!21269 lt!2730375 key!6222) lt!2730444)))

(declare-fun b!8056577 () Bool)

(assert (=> b!8056577 (= e!4747692 e!4747688)))

(declare-fun c!1476628 () Bool)

(assert (=> b!8056577 (= c!1476628 call!747505)))

(declare-fun b!8056578 () Bool)

(declare-fun getKeysList!1260 (List!75711) List!75713)

(assert (=> b!8056578 (= e!4747691 (getKeysList!1260 (toList!11941 lt!2730375)))))

(declare-fun b!8056579 () Bool)

(declare-fun Unit!172497 () Unit!172492)

(assert (=> b!8056579 (= e!4747688 Unit!172497)))

(declare-fun b!8056580 () Bool)

(assert (=> b!8056580 (= e!4747687 e!4747689)))

(declare-fun res!3186795 () Bool)

(assert (=> b!8056580 (=> (not res!3186795) (not e!4747689))))

(assert (=> b!8056580 (= res!3186795 (isDefined!14550 (getValueByKey!2801 (toList!11941 lt!2730375) key!6222)))))

(declare-fun b!8056581 () Bool)

(assert (=> b!8056581 (= e!4747690 (not (contains!21273 (keys!30877 lt!2730375) key!6222)))))

(assert (= (and d!2398664 c!1476627) b!8056576))

(assert (= (and d!2398664 (not c!1476627)) b!8056577))

(assert (= (and b!8056577 c!1476628) b!8056573))

(assert (= (and b!8056577 (not c!1476628)) b!8056579))

(assert (= (or b!8056576 b!8056577) bm!747500))

(assert (= (and bm!747500 c!1476629) b!8056578))

(assert (= (and bm!747500 (not c!1476629)) b!8056575))

(assert (= (and d!2398664 res!3186796) b!8056581))

(assert (= (and d!2398664 (not res!3186797)) b!8056580))

(assert (= (and b!8056580 res!3186795) b!8056574))

(declare-fun m!8409744 () Bool)

(assert (=> b!8056575 m!8409744))

(assert (=> b!8056581 m!8409744))

(assert (=> b!8056581 m!8409744))

(declare-fun m!8409746 () Bool)

(assert (=> b!8056581 m!8409746))

(declare-fun m!8409748 () Bool)

(assert (=> bm!747500 m!8409748))

(declare-fun m!8409750 () Bool)

(assert (=> b!8056580 m!8409750))

(assert (=> b!8056580 m!8409750))

(declare-fun m!8409752 () Bool)

(assert (=> b!8056580 m!8409752))

(declare-fun m!8409754 () Bool)

(assert (=> d!2398664 m!8409754))

(declare-fun m!8409756 () Bool)

(assert (=> b!8056578 m!8409756))

(assert (=> b!8056573 m!8409754))

(declare-fun m!8409758 () Bool)

(assert (=> b!8056573 m!8409758))

(assert (=> b!8056574 m!8409744))

(assert (=> b!8056574 m!8409744))

(assert (=> b!8056574 m!8409746))

(declare-fun m!8409760 () Bool)

(assert (=> b!8056576 m!8409760))

(assert (=> b!8056576 m!8409750))

(assert (=> b!8056576 m!8409750))

(assert (=> b!8056576 m!8409752))

(declare-fun m!8409762 () Bool)

(assert (=> b!8056576 m!8409762))

(assert (=> b!8056459 d!2398664))

(declare-fun d!2398668 () Bool)

(assert (=> d!2398668 (not (contains!21269 (+!2692 acc!1298 (tuple2!70931 (_1!38768 (h!82033 l!14636)) (_2!38768 (h!82033 l!14636)))) key!6222))))

(declare-fun lt!2730453 () Unit!172492)

(declare-fun choose!60559 (ListMap!7333 K!22866 V!23120 K!22866) Unit!172492)

(assert (=> d!2398668 (= lt!2730453 (choose!60559 acc!1298 (_1!38768 (h!82033 l!14636)) (_2!38768 (h!82033 l!14636)) key!6222))))

(declare-fun e!4747695 () Bool)

(assert (=> d!2398668 e!4747695))

(declare-fun res!3186800 () Bool)

(assert (=> d!2398668 (=> (not res!3186800) (not e!4747695))))

(assert (=> d!2398668 (= res!3186800 (not (contains!21269 acc!1298 key!6222)))))

(assert (=> d!2398668 (= (addStillNotContains!20 acc!1298 (_1!38768 (h!82033 l!14636)) (_2!38768 (h!82033 l!14636)) key!6222) lt!2730453)))

(declare-fun b!8056585 () Bool)

(assert (=> b!8056585 (= e!4747695 (not (= (_1!38768 (h!82033 l!14636)) key!6222)))))

(assert (= (and d!2398668 res!3186800) b!8056585))

(declare-fun m!8409764 () Bool)

(assert (=> d!2398668 m!8409764))

(assert (=> d!2398668 m!8409764))

(declare-fun m!8409766 () Bool)

(assert (=> d!2398668 m!8409766))

(declare-fun m!8409768 () Bool)

(assert (=> d!2398668 m!8409768))

(assert (=> d!2398668 m!8409626))

(assert (=> b!8056459 d!2398668))

(declare-fun d!2398670 () Bool)

(assert (=> d!2398670 (= (apply!14454 acc!1298 key!6222) (get!27245 (getValueByKey!2801 (toList!11941 acc!1298) key!6222)))))

(declare-fun bs!1973142 () Bool)

(assert (= bs!1973142 d!2398670))

(declare-fun m!8409770 () Bool)

(assert (=> bs!1973142 m!8409770))

(assert (=> bs!1973142 m!8409770))

(declare-fun m!8409772 () Bool)

(assert (=> bs!1973142 m!8409772))

(assert (=> b!8056448 d!2398670))

(declare-fun b!8056586 () Bool)

(assert (=> b!8056586 false))

(declare-fun lt!2730458 () Unit!172492)

(declare-fun lt!2730461 () Unit!172492)

(assert (=> b!8056586 (= lt!2730458 lt!2730461)))

(assert (=> b!8056586 (containsKey!4894 (toList!11941 acc!1298) key!6222)))

(assert (=> b!8056586 (= lt!2730461 (lemmaInGetKeysListThenContainsKey!1260 (toList!11941 acc!1298) key!6222))))

(declare-fun e!4747697 () Unit!172492)

(declare-fun Unit!172498 () Unit!172492)

(assert (=> b!8056586 (= e!4747697 Unit!172498)))

(declare-fun b!8056587 () Bool)

(declare-fun e!4747698 () Bool)

(assert (=> b!8056587 (= e!4747698 (contains!21273 (keys!30877 acc!1298) key!6222))))

(declare-fun bm!747501 () Bool)

(declare-fun call!747506 () Bool)

(declare-fun e!4747700 () List!75713)

(assert (=> bm!747501 (= call!747506 (contains!21273 e!4747700 key!6222))))

(declare-fun c!1476632 () Bool)

(declare-fun c!1476630 () Bool)

(assert (=> bm!747501 (= c!1476632 c!1476630)))

(declare-fun b!8056588 () Bool)

(assert (=> b!8056588 (= e!4747700 (keys!30877 acc!1298))))

(declare-fun b!8056589 () Bool)

(declare-fun e!4747701 () Unit!172492)

(declare-fun lt!2730459 () Unit!172492)

(assert (=> b!8056589 (= e!4747701 lt!2730459)))

(declare-fun lt!2730454 () Unit!172492)

(assert (=> b!8056589 (= lt!2730454 (lemmaContainsKeyImpliesGetValueByKeyDefined!2572 (toList!11941 acc!1298) key!6222))))

(assert (=> b!8056589 (isDefined!14550 (getValueByKey!2801 (toList!11941 acc!1298) key!6222))))

(declare-fun lt!2730460 () Unit!172492)

(assert (=> b!8056589 (= lt!2730460 lt!2730454)))

(assert (=> b!8056589 (= lt!2730459 (lemmaInListThenGetKeysListContains!1255 (toList!11941 acc!1298) key!6222))))

(assert (=> b!8056589 call!747506))

(declare-fun d!2398672 () Bool)

(declare-fun e!4747696 () Bool)

(assert (=> d!2398672 e!4747696))

(declare-fun res!3186803 () Bool)

(assert (=> d!2398672 (=> res!3186803 e!4747696)))

(declare-fun e!4747699 () Bool)

(assert (=> d!2398672 (= res!3186803 e!4747699)))

(declare-fun res!3186802 () Bool)

(assert (=> d!2398672 (=> (not res!3186802) (not e!4747699))))

(declare-fun lt!2730455 () Bool)

(assert (=> d!2398672 (= res!3186802 (not lt!2730455))))

(declare-fun lt!2730457 () Bool)

(assert (=> d!2398672 (= lt!2730455 lt!2730457)))

(declare-fun lt!2730456 () Unit!172492)

(assert (=> d!2398672 (= lt!2730456 e!4747701)))

(assert (=> d!2398672 (= c!1476630 lt!2730457)))

(assert (=> d!2398672 (= lt!2730457 (containsKey!4894 (toList!11941 acc!1298) key!6222))))

(assert (=> d!2398672 (= (contains!21269 acc!1298 key!6222) lt!2730455)))

(declare-fun b!8056590 () Bool)

(assert (=> b!8056590 (= e!4747701 e!4747697)))

(declare-fun c!1476631 () Bool)

(assert (=> b!8056590 (= c!1476631 call!747506)))

(declare-fun b!8056591 () Bool)

(assert (=> b!8056591 (= e!4747700 (getKeysList!1260 (toList!11941 acc!1298)))))

(declare-fun b!8056592 () Bool)

(declare-fun Unit!172499 () Unit!172492)

(assert (=> b!8056592 (= e!4747697 Unit!172499)))

(declare-fun b!8056593 () Bool)

(assert (=> b!8056593 (= e!4747696 e!4747698)))

(declare-fun res!3186801 () Bool)

(assert (=> b!8056593 (=> (not res!3186801) (not e!4747698))))

(assert (=> b!8056593 (= res!3186801 (isDefined!14550 (getValueByKey!2801 (toList!11941 acc!1298) key!6222)))))

(declare-fun b!8056594 () Bool)

(assert (=> b!8056594 (= e!4747699 (not (contains!21273 (keys!30877 acc!1298) key!6222)))))

(assert (= (and d!2398672 c!1476630) b!8056589))

(assert (= (and d!2398672 (not c!1476630)) b!8056590))

(assert (= (and b!8056590 c!1476631) b!8056586))

(assert (= (and b!8056590 (not c!1476631)) b!8056592))

(assert (= (or b!8056589 b!8056590) bm!747501))

(assert (= (and bm!747501 c!1476632) b!8056591))

(assert (= (and bm!747501 (not c!1476632)) b!8056588))

(assert (= (and d!2398672 res!3186802) b!8056594))

(assert (= (and d!2398672 (not res!3186803)) b!8056593))

(assert (= (and b!8056593 res!3186801) b!8056587))

(declare-fun m!8409774 () Bool)

(assert (=> b!8056588 m!8409774))

(assert (=> b!8056594 m!8409774))

(assert (=> b!8056594 m!8409774))

(declare-fun m!8409776 () Bool)

(assert (=> b!8056594 m!8409776))

(declare-fun m!8409778 () Bool)

(assert (=> bm!747501 m!8409778))

(assert (=> b!8056593 m!8409770))

(assert (=> b!8056593 m!8409770))

(declare-fun m!8409780 () Bool)

(assert (=> b!8056593 m!8409780))

(declare-fun m!8409782 () Bool)

(assert (=> d!2398672 m!8409782))

(declare-fun m!8409784 () Bool)

(assert (=> b!8056591 m!8409784))

(assert (=> b!8056586 m!8409782))

(declare-fun m!8409786 () Bool)

(assert (=> b!8056586 m!8409786))

(assert (=> b!8056587 m!8409774))

(assert (=> b!8056587 m!8409774))

(assert (=> b!8056587 m!8409776))

(declare-fun m!8409788 () Bool)

(assert (=> b!8056589 m!8409788))

(assert (=> b!8056589 m!8409770))

(assert (=> b!8056589 m!8409770))

(assert (=> b!8056589 m!8409780))

(declare-fun m!8409790 () Bool)

(assert (=> b!8056589 m!8409790))

(assert (=> b!8056458 d!2398672))

(declare-fun b!8056595 () Bool)

(assert (=> b!8056595 false))

(declare-fun lt!2730466 () Unit!172492)

(declare-fun lt!2730469 () Unit!172492)

(assert (=> b!8056595 (= lt!2730466 lt!2730469)))

(assert (=> b!8056595 (containsKey!4894 (toList!11941 lt!2730377) key!6222)))

(assert (=> b!8056595 (= lt!2730469 (lemmaInGetKeysListThenContainsKey!1260 (toList!11941 lt!2730377) key!6222))))

(declare-fun e!4747703 () Unit!172492)

(declare-fun Unit!172501 () Unit!172492)

(assert (=> b!8056595 (= e!4747703 Unit!172501)))

(declare-fun b!8056596 () Bool)

(declare-fun e!4747704 () Bool)

(assert (=> b!8056596 (= e!4747704 (contains!21273 (keys!30877 lt!2730377) key!6222))))

(declare-fun bm!747502 () Bool)

(declare-fun call!747507 () Bool)

(declare-fun e!4747706 () List!75713)

(assert (=> bm!747502 (= call!747507 (contains!21273 e!4747706 key!6222))))

(declare-fun c!1476635 () Bool)

(declare-fun c!1476633 () Bool)

(assert (=> bm!747502 (= c!1476635 c!1476633)))

(declare-fun b!8056597 () Bool)

(assert (=> b!8056597 (= e!4747706 (keys!30877 lt!2730377))))

(declare-fun b!8056598 () Bool)

(declare-fun e!4747707 () Unit!172492)

(declare-fun lt!2730467 () Unit!172492)

(assert (=> b!8056598 (= e!4747707 lt!2730467)))

(declare-fun lt!2730462 () Unit!172492)

(assert (=> b!8056598 (= lt!2730462 (lemmaContainsKeyImpliesGetValueByKeyDefined!2572 (toList!11941 lt!2730377) key!6222))))

(assert (=> b!8056598 (isDefined!14550 (getValueByKey!2801 (toList!11941 lt!2730377) key!6222))))

(declare-fun lt!2730468 () Unit!172492)

(assert (=> b!8056598 (= lt!2730468 lt!2730462)))

(assert (=> b!8056598 (= lt!2730467 (lemmaInListThenGetKeysListContains!1255 (toList!11941 lt!2730377) key!6222))))

(assert (=> b!8056598 call!747507))

(declare-fun d!2398674 () Bool)

(declare-fun e!4747702 () Bool)

(assert (=> d!2398674 e!4747702))

(declare-fun res!3186806 () Bool)

(assert (=> d!2398674 (=> res!3186806 e!4747702)))

(declare-fun e!4747705 () Bool)

(assert (=> d!2398674 (= res!3186806 e!4747705)))

(declare-fun res!3186805 () Bool)

(assert (=> d!2398674 (=> (not res!3186805) (not e!4747705))))

(declare-fun lt!2730463 () Bool)

(assert (=> d!2398674 (= res!3186805 (not lt!2730463))))

(declare-fun lt!2730465 () Bool)

(assert (=> d!2398674 (= lt!2730463 lt!2730465)))

(declare-fun lt!2730464 () Unit!172492)

(assert (=> d!2398674 (= lt!2730464 e!4747707)))

(assert (=> d!2398674 (= c!1476633 lt!2730465)))

(assert (=> d!2398674 (= lt!2730465 (containsKey!4894 (toList!11941 lt!2730377) key!6222))))

(assert (=> d!2398674 (= (contains!21269 lt!2730377 key!6222) lt!2730463)))

(declare-fun b!8056599 () Bool)

(assert (=> b!8056599 (= e!4747707 e!4747703)))

(declare-fun c!1476634 () Bool)

(assert (=> b!8056599 (= c!1476634 call!747507)))

(declare-fun b!8056600 () Bool)

(assert (=> b!8056600 (= e!4747706 (getKeysList!1260 (toList!11941 lt!2730377)))))

(declare-fun b!8056601 () Bool)

(declare-fun Unit!172503 () Unit!172492)

(assert (=> b!8056601 (= e!4747703 Unit!172503)))

(declare-fun b!8056602 () Bool)

(assert (=> b!8056602 (= e!4747702 e!4747704)))

(declare-fun res!3186804 () Bool)

(assert (=> b!8056602 (=> (not res!3186804) (not e!4747704))))

(assert (=> b!8056602 (= res!3186804 (isDefined!14550 (getValueByKey!2801 (toList!11941 lt!2730377) key!6222)))))

(declare-fun b!8056603 () Bool)

(assert (=> b!8056603 (= e!4747705 (not (contains!21273 (keys!30877 lt!2730377) key!6222)))))

(assert (= (and d!2398674 c!1476633) b!8056598))

(assert (= (and d!2398674 (not c!1476633)) b!8056599))

(assert (= (and b!8056599 c!1476634) b!8056595))

(assert (= (and b!8056599 (not c!1476634)) b!8056601))

(assert (= (or b!8056598 b!8056599) bm!747502))

(assert (= (and bm!747502 c!1476635) b!8056600))

(assert (= (and bm!747502 (not c!1476635)) b!8056597))

(assert (= (and d!2398674 res!3186805) b!8056603))

(assert (= (and d!2398674 (not res!3186806)) b!8056602))

(assert (= (and b!8056602 res!3186804) b!8056596))

(declare-fun m!8409792 () Bool)

(assert (=> b!8056597 m!8409792))

(assert (=> b!8056603 m!8409792))

(assert (=> b!8056603 m!8409792))

(declare-fun m!8409794 () Bool)

(assert (=> b!8056603 m!8409794))

(declare-fun m!8409796 () Bool)

(assert (=> bm!747502 m!8409796))

(assert (=> b!8056602 m!8409704))

(assert (=> b!8056602 m!8409704))

(declare-fun m!8409798 () Bool)

(assert (=> b!8056602 m!8409798))

(declare-fun m!8409800 () Bool)

(assert (=> d!2398674 m!8409800))

(declare-fun m!8409802 () Bool)

(assert (=> b!8056600 m!8409802))

(assert (=> b!8056595 m!8409800))

(declare-fun m!8409804 () Bool)

(assert (=> b!8056595 m!8409804))

(assert (=> b!8056596 m!8409792))

(assert (=> b!8056596 m!8409792))

(assert (=> b!8056596 m!8409794))

(declare-fun m!8409806 () Bool)

(assert (=> b!8056598 m!8409806))

(assert (=> b!8056598 m!8409704))

(assert (=> b!8056598 m!8409704))

(assert (=> b!8056598 m!8409798))

(declare-fun m!8409808 () Bool)

(assert (=> b!8056598 m!8409808))

(assert (=> b!8056447 d!2398674))

(declare-fun b!8056625 () Bool)

(assert (=> b!8056625 true))

(declare-fun bs!1973143 () Bool)

(declare-fun b!8056627 () Bool)

(assert (= bs!1973143 (and b!8056627 b!8056625)))

(declare-fun lambda!474401 () Int)

(declare-fun lambda!474400 () Int)

(assert (=> bs!1973143 (= lambda!474401 lambda!474400)))

(assert (=> b!8056627 true))

(declare-fun lt!2730561 () ListMap!7333)

(declare-fun lambda!474402 () Int)

(assert (=> bs!1973143 (= (= lt!2730561 acc!1298) (= lambda!474402 lambda!474400))))

(assert (=> b!8056627 (= (= lt!2730561 acc!1298) (= lambda!474402 lambda!474401))))

(assert (=> b!8056627 true))

(declare-fun bs!1973145 () Bool)

(declare-fun d!2398676 () Bool)

(assert (= bs!1973145 (and d!2398676 b!8056625)))

(declare-fun lt!2730563 () ListMap!7333)

(declare-fun lambda!474406 () Int)

(assert (=> bs!1973145 (= (= lt!2730563 acc!1298) (= lambda!474406 lambda!474400))))

(declare-fun bs!1973146 () Bool)

(assert (= bs!1973146 (and d!2398676 b!8056627)))

(assert (=> bs!1973146 (= (= lt!2730563 acc!1298) (= lambda!474406 lambda!474401))))

(assert (=> bs!1973146 (= (= lt!2730563 lt!2730561) (= lambda!474406 lambda!474402))))

(assert (=> d!2398676 true))

(declare-fun b!8056624 () Bool)

(declare-fun e!4747722 () Bool)

(declare-fun invariantList!1952 (List!75711) Bool)

(assert (=> b!8056624 (= e!4747722 (invariantList!1952 (toList!11941 lt!2730563)))))

(declare-fun e!4747720 () ListMap!7333)

(assert (=> b!8056625 (= e!4747720 acc!1298)))

(declare-fun lt!2730555 () Unit!172492)

(declare-fun call!747521 () Unit!172492)

(assert (=> b!8056625 (= lt!2730555 call!747521)))

(declare-fun call!747522 () Bool)

(assert (=> b!8056625 call!747522))

(declare-fun lt!2730557 () Unit!172492)

(assert (=> b!8056625 (= lt!2730557 lt!2730555)))

(declare-fun call!747520 () Bool)

(assert (=> b!8056625 call!747520))

(declare-fun lt!2730554 () Unit!172492)

(declare-fun Unit!172504 () Unit!172492)

(assert (=> b!8056625 (= lt!2730554 Unit!172504)))

(declare-fun bm!747515 () Bool)

(declare-fun c!1476640 () Bool)

(declare-fun forall!18524 (List!75711 Int) Bool)

(assert (=> bm!747515 (= call!747520 (forall!18524 (ite c!1476640 (toList!11941 acc!1298) l!14636) (ite c!1476640 lambda!474400 lambda!474402)))))

(declare-fun b!8056626 () Bool)

(declare-fun e!4747721 () Bool)

(assert (=> b!8056626 (= e!4747721 (forall!18524 (toList!11941 acc!1298) lambda!474402))))

(declare-fun bm!747516 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1105 (ListMap!7333) Unit!172492)

(assert (=> bm!747516 (= call!747521 (lemmaContainsAllItsOwnKeys!1105 acc!1298))))

(assert (=> b!8056627 (= e!4747720 lt!2730561)))

(declare-fun lt!2730569 () ListMap!7333)

(assert (=> b!8056627 (= lt!2730569 (+!2692 acc!1298 (h!82033 l!14636)))))

(assert (=> b!8056627 (= lt!2730561 (addToMapMapFromBucket!2008 (t!391483 l!14636) (+!2692 acc!1298 (h!82033 l!14636))))))

(declare-fun lt!2730574 () Unit!172492)

(assert (=> b!8056627 (= lt!2730574 call!747521)))

(assert (=> b!8056627 (forall!18524 (toList!11941 acc!1298) lambda!474401)))

(declare-fun lt!2730567 () Unit!172492)

(assert (=> b!8056627 (= lt!2730567 lt!2730574)))

(assert (=> b!8056627 (forall!18524 (toList!11941 lt!2730569) lambda!474402)))

(declare-fun lt!2730570 () Unit!172492)

(declare-fun Unit!172505 () Unit!172492)

(assert (=> b!8056627 (= lt!2730570 Unit!172505)))

(assert (=> b!8056627 call!747522))

(declare-fun lt!2730560 () Unit!172492)

(declare-fun Unit!172507 () Unit!172492)

(assert (=> b!8056627 (= lt!2730560 Unit!172507)))

(declare-fun lt!2730558 () Unit!172492)

(declare-fun Unit!172508 () Unit!172492)

(assert (=> b!8056627 (= lt!2730558 Unit!172508)))

(declare-fun lt!2730566 () Unit!172492)

(declare-fun forallContained!4677 (List!75711 Int tuple2!70930) Unit!172492)

(assert (=> b!8056627 (= lt!2730566 (forallContained!4677 (toList!11941 lt!2730569) lambda!474402 (h!82033 l!14636)))))

(assert (=> b!8056627 (contains!21269 lt!2730569 (_1!38768 (h!82033 l!14636)))))

(declare-fun lt!2730562 () Unit!172492)

(declare-fun Unit!172511 () Unit!172492)

(assert (=> b!8056627 (= lt!2730562 Unit!172511)))

(assert (=> b!8056627 (contains!21269 lt!2730561 (_1!38768 (h!82033 l!14636)))))

(declare-fun lt!2730559 () Unit!172492)

(declare-fun Unit!172512 () Unit!172492)

(assert (=> b!8056627 (= lt!2730559 Unit!172512)))

(assert (=> b!8056627 call!747520))

(declare-fun lt!2730568 () Unit!172492)

(declare-fun Unit!172514 () Unit!172492)

(assert (=> b!8056627 (= lt!2730568 Unit!172514)))

(assert (=> b!8056627 (forall!18524 (toList!11941 lt!2730569) lambda!474402)))

(declare-fun lt!2730571 () Unit!172492)

(declare-fun Unit!172515 () Unit!172492)

(assert (=> b!8056627 (= lt!2730571 Unit!172515)))

(declare-fun lt!2730565 () Unit!172492)

(declare-fun Unit!172517 () Unit!172492)

(assert (=> b!8056627 (= lt!2730565 Unit!172517)))

(declare-fun lt!2730572 () Unit!172492)

(declare-fun addForallContainsKeyThenBeforeAdding!1102 (ListMap!7333 ListMap!7333 K!22866 V!23120) Unit!172492)

(assert (=> b!8056627 (= lt!2730572 (addForallContainsKeyThenBeforeAdding!1102 acc!1298 lt!2730561 (_1!38768 (h!82033 l!14636)) (_2!38768 (h!82033 l!14636))))))

(assert (=> b!8056627 (forall!18524 (toList!11941 acc!1298) lambda!474402)))

(declare-fun lt!2730556 () Unit!172492)

(assert (=> b!8056627 (= lt!2730556 lt!2730572)))

(assert (=> b!8056627 (forall!18524 (toList!11941 acc!1298) lambda!474402)))

(declare-fun lt!2730564 () Unit!172492)

(declare-fun Unit!172520 () Unit!172492)

(assert (=> b!8056627 (= lt!2730564 Unit!172520)))

(declare-fun res!3186819 () Bool)

(assert (=> b!8056627 (= res!3186819 (forall!18524 l!14636 lambda!474402))))

(assert (=> b!8056627 (=> (not res!3186819) (not e!4747721))))

(assert (=> b!8056627 e!4747721))

(declare-fun lt!2730573 () Unit!172492)

(declare-fun Unit!172522 () Unit!172492)

(assert (=> b!8056627 (= lt!2730573 Unit!172522)))

(assert (=> d!2398676 e!4747722))

(declare-fun res!3186821 () Bool)

(assert (=> d!2398676 (=> (not res!3186821) (not e!4747722))))

(assert (=> d!2398676 (= res!3186821 (forall!18524 l!14636 lambda!474406))))

(assert (=> d!2398676 (= lt!2730563 e!4747720)))

(assert (=> d!2398676 (= c!1476640 (is-Nil!75585 l!14636))))

(assert (=> d!2398676 (noDuplicateKeys!2727 l!14636)))

(assert (=> d!2398676 (= (addToMapMapFromBucket!2008 l!14636 acc!1298) lt!2730563)))

(declare-fun bm!747517 () Bool)

(assert (=> bm!747517 (= call!747522 (forall!18524 (ite c!1476640 (toList!11941 acc!1298) (t!391483 l!14636)) (ite c!1476640 lambda!474400 lambda!474402)))))

(declare-fun b!8056628 () Bool)

(declare-fun res!3186820 () Bool)

(assert (=> b!8056628 (=> (not res!3186820) (not e!4747722))))

(assert (=> b!8056628 (= res!3186820 (forall!18524 (toList!11941 acc!1298) lambda!474406))))

(assert (= (and d!2398676 c!1476640) b!8056625))

(assert (= (and d!2398676 (not c!1476640)) b!8056627))

(assert (= (and b!8056627 res!3186819) b!8056626))

(assert (= (or b!8056625 b!8056627) bm!747517))

(assert (= (or b!8056625 b!8056627) bm!747515))

(assert (= (or b!8056625 b!8056627) bm!747516))

(assert (= (and d!2398676 res!3186821) b!8056628))

(assert (= (and b!8056628 res!3186820) b!8056624))

(declare-fun m!8409810 () Bool)

(assert (=> b!8056624 m!8409810))

(declare-fun m!8409812 () Bool)

(assert (=> b!8056626 m!8409812))

(declare-fun m!8409814 () Bool)

(assert (=> d!2398676 m!8409814))

(assert (=> d!2398676 m!8409658))

(declare-fun m!8409816 () Bool)

(assert (=> bm!747516 m!8409816))

(declare-fun m!8409818 () Bool)

(assert (=> b!8056628 m!8409818))

(declare-fun m!8409820 () Bool)

(assert (=> b!8056627 m!8409820))

(declare-fun m!8409822 () Bool)

(assert (=> b!8056627 m!8409822))

(declare-fun m!8409824 () Bool)

(assert (=> b!8056627 m!8409824))

(assert (=> b!8056627 m!8409638))

(assert (=> b!8056627 m!8409812))

(declare-fun m!8409826 () Bool)

(assert (=> b!8056627 m!8409826))

(declare-fun m!8409828 () Bool)

(assert (=> b!8056627 m!8409828))

(assert (=> b!8056627 m!8409812))

(declare-fun m!8409830 () Bool)

(assert (=> b!8056627 m!8409830))

(assert (=> b!8056627 m!8409638))

(declare-fun m!8409832 () Bool)

(assert (=> b!8056627 m!8409832))

(assert (=> b!8056627 m!8409830))

(declare-fun m!8409834 () Bool)

(assert (=> b!8056627 m!8409834))

(declare-fun m!8409836 () Bool)

(assert (=> bm!747515 m!8409836))

(declare-fun m!8409838 () Bool)

(assert (=> bm!747517 m!8409838))

(assert (=> b!8056447 d!2398676))

(declare-fun bs!1973149 () Bool)

(declare-fun b!8056639 () Bool)

(assert (= bs!1973149 (and b!8056639 b!8056625)))

(declare-fun lambda!474408 () Int)

(assert (=> bs!1973149 (= (= lt!2730375 acc!1298) (= lambda!474408 lambda!474400))))

(declare-fun bs!1973150 () Bool)

(assert (= bs!1973150 (and b!8056639 b!8056627)))

(assert (=> bs!1973150 (= (= lt!2730375 acc!1298) (= lambda!474408 lambda!474401))))

(assert (=> bs!1973150 (= (= lt!2730375 lt!2730561) (= lambda!474408 lambda!474402))))

(declare-fun bs!1973151 () Bool)

(assert (= bs!1973151 (and b!8056639 d!2398676)))

(assert (=> bs!1973151 (= (= lt!2730375 lt!2730563) (= lambda!474408 lambda!474406))))

(assert (=> b!8056639 true))

(declare-fun bs!1973152 () Bool)

(declare-fun b!8056641 () Bool)

(assert (= bs!1973152 (and b!8056641 b!8056625)))

(declare-fun lambda!474409 () Int)

(assert (=> bs!1973152 (= (= lt!2730375 acc!1298) (= lambda!474409 lambda!474400))))

(declare-fun bs!1973153 () Bool)

(assert (= bs!1973153 (and b!8056641 b!8056627)))

(assert (=> bs!1973153 (= (= lt!2730375 lt!2730561) (= lambda!474409 lambda!474402))))

(assert (=> bs!1973153 (= (= lt!2730375 acc!1298) (= lambda!474409 lambda!474401))))

(declare-fun bs!1973154 () Bool)

(assert (= bs!1973154 (and b!8056641 b!8056639)))

(assert (=> bs!1973154 (= lambda!474409 lambda!474408)))

(declare-fun bs!1973155 () Bool)

(assert (= bs!1973155 (and b!8056641 d!2398676)))

(assert (=> bs!1973155 (= (= lt!2730375 lt!2730563) (= lambda!474409 lambda!474406))))

(assert (=> b!8056641 true))

(declare-fun lt!2730603 () ListMap!7333)

(declare-fun lambda!474410 () Int)

(assert (=> bs!1973152 (= (= lt!2730603 acc!1298) (= lambda!474410 lambda!474400))))

(assert (=> bs!1973153 (= (= lt!2730603 lt!2730561) (= lambda!474410 lambda!474402))))

(assert (=> bs!1973153 (= (= lt!2730603 acc!1298) (= lambda!474410 lambda!474401))))

(assert (=> b!8056641 (= (= lt!2730603 lt!2730375) (= lambda!474410 lambda!474409))))

(assert (=> bs!1973154 (= (= lt!2730603 lt!2730375) (= lambda!474410 lambda!474408))))

(assert (=> bs!1973155 (= (= lt!2730603 lt!2730563) (= lambda!474410 lambda!474406))))

(assert (=> b!8056641 true))

(declare-fun bs!1973156 () Bool)

(declare-fun d!2398678 () Bool)

(assert (= bs!1973156 (and d!2398678 b!8056625)))

(declare-fun lt!2730605 () ListMap!7333)

(declare-fun lambda!474411 () Int)

(assert (=> bs!1973156 (= (= lt!2730605 acc!1298) (= lambda!474411 lambda!474400))))

(declare-fun bs!1973157 () Bool)

(assert (= bs!1973157 (and d!2398678 b!8056627)))

(assert (=> bs!1973157 (= (= lt!2730605 lt!2730561) (= lambda!474411 lambda!474402))))

(assert (=> bs!1973157 (= (= lt!2730605 acc!1298) (= lambda!474411 lambda!474401))))

(declare-fun bs!1973158 () Bool)

(assert (= bs!1973158 (and d!2398678 b!8056641)))

(assert (=> bs!1973158 (= (= lt!2730605 lt!2730375) (= lambda!474411 lambda!474409))))

(assert (=> bs!1973158 (= (= lt!2730605 lt!2730603) (= lambda!474411 lambda!474410))))

(declare-fun bs!1973159 () Bool)

(assert (= bs!1973159 (and d!2398678 b!8056639)))

(assert (=> bs!1973159 (= (= lt!2730605 lt!2730375) (= lambda!474411 lambda!474408))))

(declare-fun bs!1973160 () Bool)

(assert (= bs!1973160 (and d!2398678 d!2398676)))

(assert (=> bs!1973160 (= (= lt!2730605 lt!2730563) (= lambda!474411 lambda!474406))))

(assert (=> d!2398678 true))

(declare-fun b!8056638 () Bool)

(declare-fun e!4747728 () Bool)

(assert (=> b!8056638 (= e!4747728 (invariantList!1952 (toList!11941 lt!2730605)))))

(declare-fun e!4747726 () ListMap!7333)

(assert (=> b!8056639 (= e!4747726 lt!2730375)))

(declare-fun lt!2730597 () Unit!172492)

(declare-fun call!747527 () Unit!172492)

(assert (=> b!8056639 (= lt!2730597 call!747527)))

(declare-fun call!747528 () Bool)

(assert (=> b!8056639 call!747528))

(declare-fun lt!2730599 () Unit!172492)

(assert (=> b!8056639 (= lt!2730599 lt!2730597)))

(declare-fun call!747526 () Bool)

(assert (=> b!8056639 call!747526))

(declare-fun lt!2730596 () Unit!172492)

(declare-fun Unit!172526 () Unit!172492)

(assert (=> b!8056639 (= lt!2730596 Unit!172526)))

(declare-fun bm!747521 () Bool)

(declare-fun c!1476642 () Bool)

(assert (=> bm!747521 (= call!747526 (forall!18524 (ite c!1476642 (toList!11941 lt!2730375) (t!391483 l!14636)) (ite c!1476642 lambda!474408 lambda!474410)))))

(declare-fun b!8056640 () Bool)

(declare-fun e!4747727 () Bool)

(assert (=> b!8056640 (= e!4747727 (forall!18524 (toList!11941 lt!2730375) lambda!474410))))

(declare-fun bm!747522 () Bool)

(assert (=> bm!747522 (= call!747527 (lemmaContainsAllItsOwnKeys!1105 lt!2730375))))

(assert (=> b!8056641 (= e!4747726 lt!2730603)))

(declare-fun lt!2730611 () ListMap!7333)

(assert (=> b!8056641 (= lt!2730611 (+!2692 lt!2730375 (h!82033 (t!391483 l!14636))))))

(assert (=> b!8056641 (= lt!2730603 (addToMapMapFromBucket!2008 (t!391483 (t!391483 l!14636)) (+!2692 lt!2730375 (h!82033 (t!391483 l!14636)))))))

(declare-fun lt!2730616 () Unit!172492)

(assert (=> b!8056641 (= lt!2730616 call!747527)))

(assert (=> b!8056641 (forall!18524 (toList!11941 lt!2730375) lambda!474409)))

(declare-fun lt!2730609 () Unit!172492)

(assert (=> b!8056641 (= lt!2730609 lt!2730616)))

(assert (=> b!8056641 (forall!18524 (toList!11941 lt!2730611) lambda!474410)))

(declare-fun lt!2730612 () Unit!172492)

(declare-fun Unit!172527 () Unit!172492)

(assert (=> b!8056641 (= lt!2730612 Unit!172527)))

(assert (=> b!8056641 call!747528))

(declare-fun lt!2730602 () Unit!172492)

(declare-fun Unit!172528 () Unit!172492)

(assert (=> b!8056641 (= lt!2730602 Unit!172528)))

(declare-fun lt!2730600 () Unit!172492)

(declare-fun Unit!172529 () Unit!172492)

(assert (=> b!8056641 (= lt!2730600 Unit!172529)))

(declare-fun lt!2730608 () Unit!172492)

(assert (=> b!8056641 (= lt!2730608 (forallContained!4677 (toList!11941 lt!2730611) lambda!474410 (h!82033 (t!391483 l!14636))))))

(assert (=> b!8056641 (contains!21269 lt!2730611 (_1!38768 (h!82033 (t!391483 l!14636))))))

(declare-fun lt!2730604 () Unit!172492)

(declare-fun Unit!172530 () Unit!172492)

(assert (=> b!8056641 (= lt!2730604 Unit!172530)))

(assert (=> b!8056641 (contains!21269 lt!2730603 (_1!38768 (h!82033 (t!391483 l!14636))))))

(declare-fun lt!2730601 () Unit!172492)

(declare-fun Unit!172531 () Unit!172492)

(assert (=> b!8056641 (= lt!2730601 Unit!172531)))

(assert (=> b!8056641 call!747526))

(declare-fun lt!2730610 () Unit!172492)

(declare-fun Unit!172532 () Unit!172492)

(assert (=> b!8056641 (= lt!2730610 Unit!172532)))

(assert (=> b!8056641 (forall!18524 (toList!11941 lt!2730611) lambda!474410)))

(declare-fun lt!2730613 () Unit!172492)

(declare-fun Unit!172533 () Unit!172492)

(assert (=> b!8056641 (= lt!2730613 Unit!172533)))

(declare-fun lt!2730607 () Unit!172492)

(declare-fun Unit!172534 () Unit!172492)

(assert (=> b!8056641 (= lt!2730607 Unit!172534)))

(declare-fun lt!2730614 () Unit!172492)

(assert (=> b!8056641 (= lt!2730614 (addForallContainsKeyThenBeforeAdding!1102 lt!2730375 lt!2730603 (_1!38768 (h!82033 (t!391483 l!14636))) (_2!38768 (h!82033 (t!391483 l!14636)))))))

(assert (=> b!8056641 (forall!18524 (toList!11941 lt!2730375) lambda!474410)))

(declare-fun lt!2730598 () Unit!172492)

(assert (=> b!8056641 (= lt!2730598 lt!2730614)))

(assert (=> b!8056641 (forall!18524 (toList!11941 lt!2730375) lambda!474410)))

(declare-fun lt!2730606 () Unit!172492)

(declare-fun Unit!172535 () Unit!172492)

(assert (=> b!8056641 (= lt!2730606 Unit!172535)))

(declare-fun res!3186825 () Bool)

(assert (=> b!8056641 (= res!3186825 (forall!18524 (t!391483 l!14636) lambda!474410))))

(assert (=> b!8056641 (=> (not res!3186825) (not e!4747727))))

(assert (=> b!8056641 e!4747727))

(declare-fun lt!2730615 () Unit!172492)

(declare-fun Unit!172536 () Unit!172492)

(assert (=> b!8056641 (= lt!2730615 Unit!172536)))

(assert (=> d!2398678 e!4747728))

(declare-fun res!3186827 () Bool)

(assert (=> d!2398678 (=> (not res!3186827) (not e!4747728))))

(assert (=> d!2398678 (= res!3186827 (forall!18524 (t!391483 l!14636) lambda!474411))))

(assert (=> d!2398678 (= lt!2730605 e!4747726)))

(assert (=> d!2398678 (= c!1476642 (is-Nil!75585 (t!391483 l!14636)))))

(assert (=> d!2398678 (noDuplicateKeys!2727 (t!391483 l!14636))))

(assert (=> d!2398678 (= (addToMapMapFromBucket!2008 (t!391483 l!14636) lt!2730375) lt!2730605)))

(declare-fun bm!747523 () Bool)

(assert (=> bm!747523 (= call!747528 (forall!18524 (ite c!1476642 (toList!11941 lt!2730375) (t!391483 (t!391483 l!14636))) (ite c!1476642 lambda!474408 lambda!474410)))))

(declare-fun b!8056642 () Bool)

(declare-fun res!3186826 () Bool)

(assert (=> b!8056642 (=> (not res!3186826) (not e!4747728))))

(assert (=> b!8056642 (= res!3186826 (forall!18524 (toList!11941 lt!2730375) lambda!474411))))

(assert (= (and d!2398678 c!1476642) b!8056639))

(assert (= (and d!2398678 (not c!1476642)) b!8056641))

(assert (= (and b!8056641 res!3186825) b!8056640))

(assert (= (or b!8056639 b!8056641) bm!747523))

(assert (= (or b!8056639 b!8056641) bm!747521))

(assert (= (or b!8056639 b!8056641) bm!747522))

(assert (= (and d!2398678 res!3186827) b!8056642))

(assert (= (and b!8056642 res!3186826) b!8056638))

(declare-fun m!8409874 () Bool)

(assert (=> b!8056638 m!8409874))

(declare-fun m!8409876 () Bool)

(assert (=> b!8056640 m!8409876))

(declare-fun m!8409878 () Bool)

(assert (=> d!2398678 m!8409878))

(assert (=> d!2398678 m!8409628))

(declare-fun m!8409880 () Bool)

(assert (=> bm!747522 m!8409880))

(declare-fun m!8409882 () Bool)

(assert (=> b!8056642 m!8409882))

(declare-fun m!8409884 () Bool)

(assert (=> b!8056641 m!8409884))

(declare-fun m!8409886 () Bool)

(assert (=> b!8056641 m!8409886))

(declare-fun m!8409888 () Bool)

(assert (=> b!8056641 m!8409888))

(declare-fun m!8409890 () Bool)

(assert (=> b!8056641 m!8409890))

(assert (=> b!8056641 m!8409876))

(declare-fun m!8409892 () Bool)

(assert (=> b!8056641 m!8409892))

(declare-fun m!8409894 () Bool)

(assert (=> b!8056641 m!8409894))

(assert (=> b!8056641 m!8409876))

(declare-fun m!8409896 () Bool)

(assert (=> b!8056641 m!8409896))

(assert (=> b!8056641 m!8409890))

(declare-fun m!8409898 () Bool)

(assert (=> b!8056641 m!8409898))

(assert (=> b!8056641 m!8409896))

(declare-fun m!8409900 () Bool)

(assert (=> b!8056641 m!8409900))

(declare-fun m!8409902 () Bool)

(assert (=> bm!747521 m!8409902))

(declare-fun m!8409904 () Bool)

(assert (=> bm!747523 m!8409904))

(assert (=> b!8056457 d!2398678))

(declare-fun d!2398682 () Bool)

(declare-fun e!4747746 () Bool)

(assert (=> d!2398682 e!4747746))

(declare-fun res!3186847 () Bool)

(assert (=> d!2398682 (=> (not res!3186847) (not e!4747746))))

(declare-fun lt!2730645 () ListMap!7333)

(assert (=> d!2398682 (= res!3186847 (contains!21269 lt!2730645 (_1!38768 (h!82033 l!14636))))))

(declare-fun lt!2730648 () List!75711)

(assert (=> d!2398682 (= lt!2730645 (ListMap!7334 lt!2730648))))

(declare-fun lt!2730647 () Unit!172492)

(declare-fun lt!2730646 () Unit!172492)

(assert (=> d!2398682 (= lt!2730647 lt!2730646)))

(assert (=> d!2398682 (= (getValueByKey!2801 lt!2730648 (_1!38768 (h!82033 l!14636))) (Some!18016 (_2!38768 (h!82033 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1295 (List!75711 K!22866 V!23120) Unit!172492)

(assert (=> d!2398682 (= lt!2730646 (lemmaContainsTupThenGetReturnValue!1295 lt!2730648 (_1!38768 (h!82033 l!14636)) (_2!38768 (h!82033 l!14636))))))

(declare-fun insertNoDuplicatedKeys!803 (List!75711 K!22866 V!23120) List!75711)

(assert (=> d!2398682 (= lt!2730648 (insertNoDuplicatedKeys!803 (toList!11941 acc!1298) (_1!38768 (h!82033 l!14636)) (_2!38768 (h!82033 l!14636))))))

(assert (=> d!2398682 (= (+!2692 acc!1298 (h!82033 l!14636)) lt!2730645)))

(declare-fun b!8056668 () Bool)

(declare-fun res!3186848 () Bool)

(assert (=> b!8056668 (=> (not res!3186848) (not e!4747746))))

(assert (=> b!8056668 (= res!3186848 (= (getValueByKey!2801 (toList!11941 lt!2730645) (_1!38768 (h!82033 l!14636))) (Some!18016 (_2!38768 (h!82033 l!14636)))))))

(declare-fun b!8056669 () Bool)

(assert (=> b!8056669 (= e!4747746 (contains!21270 (toList!11941 lt!2730645) (h!82033 l!14636)))))

(assert (= (and d!2398682 res!3186847) b!8056668))

(assert (= (and b!8056668 res!3186848) b!8056669))

(declare-fun m!8409942 () Bool)

(assert (=> d!2398682 m!8409942))

(declare-fun m!8409944 () Bool)

(assert (=> d!2398682 m!8409944))

(declare-fun m!8409946 () Bool)

(assert (=> d!2398682 m!8409946))

(declare-fun m!8409948 () Bool)

(assert (=> d!2398682 m!8409948))

(declare-fun m!8409950 () Bool)

(assert (=> b!8056668 m!8409950))

(declare-fun m!8409952 () Bool)

(assert (=> b!8056669 m!8409952))

(assert (=> b!8056457 d!2398682))

(declare-fun b!8056670 () Bool)

(assert (=> b!8056670 false))

(declare-fun lt!2730653 () Unit!172492)

(declare-fun lt!2730656 () Unit!172492)

(assert (=> b!8056670 (= lt!2730653 lt!2730656)))

(assert (=> b!8056670 (containsKey!4894 (toList!11941 lt!2730373) key!6222)))

(assert (=> b!8056670 (= lt!2730656 (lemmaInGetKeysListThenContainsKey!1260 (toList!11941 lt!2730373) key!6222))))

(declare-fun e!4747748 () Unit!172492)

(declare-fun Unit!172539 () Unit!172492)

(assert (=> b!8056670 (= e!4747748 Unit!172539)))

(declare-fun b!8056671 () Bool)

(declare-fun e!4747749 () Bool)

(assert (=> b!8056671 (= e!4747749 (contains!21273 (keys!30877 lt!2730373) key!6222))))

(declare-fun bm!747525 () Bool)

(declare-fun call!747530 () Bool)

(declare-fun e!4747751 () List!75713)

(assert (=> bm!747525 (= call!747530 (contains!21273 e!4747751 key!6222))))

(declare-fun c!1476648 () Bool)

(declare-fun c!1476646 () Bool)

(assert (=> bm!747525 (= c!1476648 c!1476646)))

(declare-fun b!8056672 () Bool)

(assert (=> b!8056672 (= e!4747751 (keys!30877 lt!2730373))))

(declare-fun b!8056673 () Bool)

(declare-fun e!4747752 () Unit!172492)

(declare-fun lt!2730654 () Unit!172492)

(assert (=> b!8056673 (= e!4747752 lt!2730654)))

(declare-fun lt!2730649 () Unit!172492)

(assert (=> b!8056673 (= lt!2730649 (lemmaContainsKeyImpliesGetValueByKeyDefined!2572 (toList!11941 lt!2730373) key!6222))))

(assert (=> b!8056673 (isDefined!14550 (getValueByKey!2801 (toList!11941 lt!2730373) key!6222))))

(declare-fun lt!2730655 () Unit!172492)

(assert (=> b!8056673 (= lt!2730655 lt!2730649)))

(assert (=> b!8056673 (= lt!2730654 (lemmaInListThenGetKeysListContains!1255 (toList!11941 lt!2730373) key!6222))))

(assert (=> b!8056673 call!747530))

(declare-fun d!2398690 () Bool)

(declare-fun e!4747747 () Bool)

(assert (=> d!2398690 e!4747747))

(declare-fun res!3186851 () Bool)

(assert (=> d!2398690 (=> res!3186851 e!4747747)))

(declare-fun e!4747750 () Bool)

(assert (=> d!2398690 (= res!3186851 e!4747750)))

(declare-fun res!3186850 () Bool)

(assert (=> d!2398690 (=> (not res!3186850) (not e!4747750))))

(declare-fun lt!2730650 () Bool)

(assert (=> d!2398690 (= res!3186850 (not lt!2730650))))

(declare-fun lt!2730652 () Bool)

(assert (=> d!2398690 (= lt!2730650 lt!2730652)))

(declare-fun lt!2730651 () Unit!172492)

(assert (=> d!2398690 (= lt!2730651 e!4747752)))

(assert (=> d!2398690 (= c!1476646 lt!2730652)))

(assert (=> d!2398690 (= lt!2730652 (containsKey!4894 (toList!11941 lt!2730373) key!6222))))

(assert (=> d!2398690 (= (contains!21269 lt!2730373 key!6222) lt!2730650)))

(declare-fun b!8056674 () Bool)

(assert (=> b!8056674 (= e!4747752 e!4747748)))

(declare-fun c!1476647 () Bool)

(assert (=> b!8056674 (= c!1476647 call!747530)))

(declare-fun b!8056675 () Bool)

(assert (=> b!8056675 (= e!4747751 (getKeysList!1260 (toList!11941 lt!2730373)))))

(declare-fun b!8056676 () Bool)

(declare-fun Unit!172540 () Unit!172492)

(assert (=> b!8056676 (= e!4747748 Unit!172540)))

(declare-fun b!8056677 () Bool)

(assert (=> b!8056677 (= e!4747747 e!4747749)))

(declare-fun res!3186849 () Bool)

(assert (=> b!8056677 (=> (not res!3186849) (not e!4747749))))

(assert (=> b!8056677 (= res!3186849 (isDefined!14550 (getValueByKey!2801 (toList!11941 lt!2730373) key!6222)))))

(declare-fun b!8056678 () Bool)

(assert (=> b!8056678 (= e!4747750 (not (contains!21273 (keys!30877 lt!2730373) key!6222)))))

(assert (= (and d!2398690 c!1476646) b!8056673))

(assert (= (and d!2398690 (not c!1476646)) b!8056674))

(assert (= (and b!8056674 c!1476647) b!8056670))

(assert (= (and b!8056674 (not c!1476647)) b!8056676))

(assert (= (or b!8056673 b!8056674) bm!747525))

(assert (= (and bm!747525 c!1476648) b!8056675))

(assert (= (and bm!747525 (not c!1476648)) b!8056672))

(assert (= (and d!2398690 res!3186850) b!8056678))

(assert (= (and d!2398690 (not res!3186851)) b!8056677))

(assert (= (and b!8056677 res!3186849) b!8056671))

(declare-fun m!8409954 () Bool)

(assert (=> b!8056672 m!8409954))

(assert (=> b!8056678 m!8409954))

(assert (=> b!8056678 m!8409954))

(declare-fun m!8409956 () Bool)

(assert (=> b!8056678 m!8409956))

(declare-fun m!8409958 () Bool)

(assert (=> bm!747525 m!8409958))

(assert (=> b!8056677 m!8409708))

(assert (=> b!8056677 m!8409708))

(declare-fun m!8409960 () Bool)

(assert (=> b!8056677 m!8409960))

(declare-fun m!8409962 () Bool)

(assert (=> d!2398690 m!8409962))

(declare-fun m!8409964 () Bool)

(assert (=> b!8056675 m!8409964))

(assert (=> b!8056670 m!8409962))

(declare-fun m!8409966 () Bool)

(assert (=> b!8056670 m!8409966))

(assert (=> b!8056671 m!8409954))

(assert (=> b!8056671 m!8409954))

(assert (=> b!8056671 m!8409956))

(declare-fun m!8409968 () Bool)

(assert (=> b!8056673 m!8409968))

(assert (=> b!8056673 m!8409708))

(assert (=> b!8056673 m!8409708))

(assert (=> b!8056673 m!8409960))

(declare-fun m!8409970 () Bool)

(assert (=> b!8056673 m!8409970))

(assert (=> b!8056451 d!2398690))

(declare-fun d!2398692 () Bool)

(declare-fun lt!2730659 () Bool)

(declare-fun content!16128 (List!75711) (Set tuple2!70930))

(assert (=> d!2398692 (= lt!2730659 (set.member (tuple2!70931 key!6222 value!3131) (content!16128 (t!391483 l!14636))))))

(declare-fun e!4747758 () Bool)

(assert (=> d!2398692 (= lt!2730659 e!4747758)))

(declare-fun res!3186856 () Bool)

(assert (=> d!2398692 (=> (not res!3186856) (not e!4747758))))

(assert (=> d!2398692 (= res!3186856 (is-Cons!75585 (t!391483 l!14636)))))

(assert (=> d!2398692 (= (contains!21270 (t!391483 l!14636) (tuple2!70931 key!6222 value!3131)) lt!2730659)))

(declare-fun b!8056683 () Bool)

(declare-fun e!4747757 () Bool)

(assert (=> b!8056683 (= e!4747758 e!4747757)))

(declare-fun res!3186857 () Bool)

(assert (=> b!8056683 (=> res!3186857 e!4747757)))

(assert (=> b!8056683 (= res!3186857 (= (h!82033 (t!391483 l!14636)) (tuple2!70931 key!6222 value!3131)))))

(declare-fun b!8056684 () Bool)

(assert (=> b!8056684 (= e!4747757 (contains!21270 (t!391483 (t!391483 l!14636)) (tuple2!70931 key!6222 value!3131)))))

(assert (= (and d!2398692 res!3186856) b!8056683))

(assert (= (and b!8056683 (not res!3186857)) b!8056684))

(declare-fun m!8409972 () Bool)

(assert (=> d!2398692 m!8409972))

(declare-fun m!8409974 () Bool)

(assert (=> d!2398692 m!8409974))

(declare-fun m!8409976 () Bool)

(assert (=> b!8056684 m!8409976))

(assert (=> b!8056450 d!2398692))

(declare-fun d!2398694 () Bool)

(declare-fun res!3186858 () Bool)

(declare-fun e!4747759 () Bool)

(assert (=> d!2398694 (=> res!3186858 e!4747759)))

(assert (=> d!2398694 (= res!3186858 (not (is-Cons!75585 l!14636)))))

(assert (=> d!2398694 (= (noDuplicateKeys!2727 l!14636) e!4747759)))

(declare-fun b!8056685 () Bool)

(declare-fun e!4747760 () Bool)

(assert (=> b!8056685 (= e!4747759 e!4747760)))

(declare-fun res!3186859 () Bool)

(assert (=> b!8056685 (=> (not res!3186859) (not e!4747760))))

(assert (=> b!8056685 (= res!3186859 (not (containsKey!4892 (t!391483 l!14636) (_1!38768 (h!82033 l!14636)))))))

(declare-fun b!8056686 () Bool)

(assert (=> b!8056686 (= e!4747760 (noDuplicateKeys!2727 (t!391483 l!14636)))))

(assert (= (and d!2398694 (not res!3186858)) b!8056685))

(assert (= (and b!8056685 res!3186859) b!8056686))

(declare-fun m!8409978 () Bool)

(assert (=> b!8056685 m!8409978))

(assert (=> b!8056686 m!8409628))

(assert (=> start!758954 d!2398694))

(declare-fun d!2398696 () Bool)

(assert (=> d!2398696 (= (inv!97356 acc!1298) (invariantList!1952 (toList!11941 acc!1298)))))

(declare-fun bs!1973161 () Bool)

(assert (= bs!1973161 d!2398696))

(declare-fun m!8409980 () Bool)

(assert (=> bs!1973161 m!8409980))

(assert (=> start!758954 d!2398696))

(declare-fun lt!2730662 () Bool)

(declare-fun d!2398698 () Bool)

(assert (=> d!2398698 (= lt!2730662 (set.member (tuple2!70931 key!6222 value!3131) (content!16128 l!14636)))))

(declare-fun e!4747764 () Bool)

(assert (=> d!2398698 (= lt!2730662 e!4747764)))

(declare-fun res!3186862 () Bool)

(assert (=> d!2398698 (=> (not res!3186862) (not e!4747764))))

(assert (=> d!2398698 (= res!3186862 (is-Cons!75585 l!14636))))

(assert (=> d!2398698 (= (contains!21270 l!14636 (tuple2!70931 key!6222 value!3131)) lt!2730662)))

(declare-fun b!8056690 () Bool)

(declare-fun e!4747763 () Bool)

(assert (=> b!8056690 (= e!4747764 e!4747763)))

(declare-fun res!3186863 () Bool)

(assert (=> b!8056690 (=> res!3186863 e!4747763)))

(assert (=> b!8056690 (= res!3186863 (= (h!82033 l!14636) (tuple2!70931 key!6222 value!3131)))))

(declare-fun b!8056691 () Bool)

(assert (=> b!8056691 (= e!4747763 (contains!21270 (t!391483 l!14636) (tuple2!70931 key!6222 value!3131)))))

(assert (= (and d!2398698 res!3186862) b!8056690))

(assert (= (and b!8056690 (not res!3186863)) b!8056691))

(declare-fun m!8409982 () Bool)

(assert (=> d!2398698 m!8409982))

(declare-fun m!8409984 () Bool)

(assert (=> d!2398698 m!8409984))

(assert (=> b!8056691 m!8409634))

(assert (=> b!8056449 d!2398698))

(declare-fun e!4747768 () Bool)

(declare-fun tp!2413952 () Bool)

(declare-fun b!8056697 () Bool)

(assert (=> b!8056697 (= e!4747768 (and tp_is_empty!54983 tp_is_empty!54985 tp!2413952))))

(assert (=> b!8056445 (= tp!2413942 e!4747768)))

(assert (= (and b!8056445 (is-Cons!75585 (t!391483 l!14636))) b!8056697))

(declare-fun e!4747769 () Bool)

(declare-fun b!8056698 () Bool)

(declare-fun tp!2413953 () Bool)

(assert (=> b!8056698 (= e!4747769 (and tp_is_empty!54983 tp_is_empty!54985 tp!2413953))))

(assert (=> b!8056444 (= tp!2413943 e!4747769)))

(assert (= (and b!8056444 (is-Cons!75585 (toList!11941 acc!1298))) b!8056698))

(push 1)

(assert (not b!8056675))

(assert (not b!8056603))

(assert (not b!8056602))

(assert (not b!8056594))

(assert (not b!8056626))

(assert (not b!8056587))

(assert (not b!8056672))

(assert (not b!8056640))

(assert (not b!8056573))

(assert (not b!8056515))

(assert (not d!2398682))

(assert (not b!8056596))

(assert (not b!8056580))

(assert (not bm!747522))

(assert (not b!8056642))

(assert (not b!8056628))

(assert (not d!2398664))

(assert (not b!8056668))

(assert (not bm!747523))

(assert (not bm!747502))

(assert tp_is_empty!54985)

(assert (not b!8056691))

(assert (not d!2398668))

(assert (not b!8056624))

(assert (not b!8056527))

(assert (not b!8056586))

(assert (not d!2398692))

(assert (not b!8056685))

(assert (not d!2398656))

(assert (not b!8056698))

(assert (not d!2398690))

(assert (not d!2398678))

(assert (not d!2398652))

(assert (not b!8056678))

(assert tp_is_empty!54983)

(assert (not b!8056598))

(assert (not bm!747521))

(assert (not b!8056670))

(assert (not b!8056677))

(assert (not bm!747517))

(assert (not d!2398672))

(assert (not b!8056575))

(assert (not b!8056589))

(assert (not b!8056526))

(assert (not b!8056686))

(assert (not b!8056597))

(assert (not b!8056574))

(assert (not d!2398696))

(assert (not d!2398698))

(assert (not b!8056671))

(assert (not b!8056697))

(assert (not b!8056591))

(assert (not b!8056641))

(assert (not bm!747515))

(assert (not b!8056513))

(assert (not b!8056627))

(assert (not b!8056595))

(assert (not bm!747516))

(assert (not b!8056578))

(assert (not d!2398658))

(assert (not b!8056588))

(assert (not b!8056673))

(assert (not b!8056669))

(assert (not b!8056638))

(assert (not b!8056576))

(assert (not bm!747500))

(assert (not d!2398674))

(assert (not d!2398676))

(assert (not b!8056581))

(assert (not b!8056600))

(assert (not bm!747525))

(assert (not b!8056593))

(assert (not bm!747501))

(assert (not b!8056684))

(assert (not d!2398670))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

