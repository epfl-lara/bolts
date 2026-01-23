; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436062 () Bool)

(assert start!436062)

(declare-fun b!4452900 () Bool)

(declare-fun e!2772901 () Bool)

(declare-datatypes ((V!11494 0))(
  ( (V!11495 (val!17269 Int)) )
))
(declare-datatypes ((K!11248 0))(
  ( (K!11249 (val!17270 Int)) )
))
(declare-datatypes ((tuple2!49858 0))(
  ( (tuple2!49859 (_1!28223 K!11248) (_2!28223 V!11494)) )
))
(declare-datatypes ((List!50003 0))(
  ( (Nil!49879) (Cons!49879 (h!55624 tuple2!49858) (t!356953 List!50003)) )
))
(declare-datatypes ((tuple2!49860 0))(
  ( (tuple2!49861 (_1!28224 (_ BitVec 64)) (_2!28224 List!50003)) )
))
(declare-datatypes ((List!50004 0))(
  ( (Nil!49880) (Cons!49880 (h!55625 tuple2!49860) (t!356954 List!50004)) )
))
(declare-datatypes ((ListLongMap!2377 0))(
  ( (ListLongMap!2378 (toList!3727 List!50004)) )
))
(declare-fun lm!1837 () ListLongMap!2377)

(declare-fun isEmpty!28408 (ListLongMap!2377) Bool)

(assert (=> b!4452900 (= e!2772901 (isEmpty!28408 lm!1837))))

(declare-fun res!1845400 () Bool)

(assert (=> start!436062 (=> (not res!1845400) (not e!2772901))))

(declare-fun lambda!159339 () Int)

(declare-fun forall!9765 (List!50004 Int) Bool)

(assert (=> start!436062 (= res!1845400 (forall!9765 (toList!3727 lm!1837) lambda!159339))))

(assert (=> start!436062 e!2772901))

(declare-fun e!2772902 () Bool)

(declare-fun inv!65435 (ListLongMap!2377) Bool)

(assert (=> start!436062 (and (inv!65435 lm!1837) e!2772902)))

(assert (=> start!436062 true))

(declare-fun b!4452898 () Bool)

(declare-fun res!1845401 () Bool)

(assert (=> b!4452898 (=> (not res!1845401) (not e!2772901))))

(declare-datatypes ((Hashable!5264 0))(
  ( (HashableExt!5263 (__x!30967 Int)) )
))
(declare-fun hashF!1304 () Hashable!5264)

(declare-fun allKeysSameHashInMap!976 (ListLongMap!2377 Hashable!5264) Bool)

(assert (=> b!4452898 (= res!1845401 (allKeysSameHashInMap!976 lm!1837 hashF!1304))))

(declare-fun b!4452901 () Bool)

(declare-fun tp!1334601 () Bool)

(assert (=> b!4452901 (= e!2772902 tp!1334601)))

(declare-fun b!4452899 () Bool)

(declare-fun res!1845402 () Bool)

(assert (=> b!4452899 (=> (not res!1845402) (not e!2772901))))

(declare-fun isEmpty!28409 (List!50004) Bool)

(assert (=> b!4452899 (= res!1845402 (not (isEmpty!28409 (toList!3727 lm!1837))))))

(assert (= (and start!436062 res!1845400) b!4452898))

(assert (= (and b!4452898 res!1845401) b!4452899))

(assert (= (and b!4452899 res!1845402) b!4452900))

(assert (= start!436062 b!4452901))

(declare-fun m!5153721 () Bool)

(assert (=> b!4452900 m!5153721))

(declare-fun m!5153723 () Bool)

(assert (=> start!436062 m!5153723))

(declare-fun m!5153725 () Bool)

(assert (=> start!436062 m!5153725))

(declare-fun m!5153727 () Bool)

(assert (=> b!4452898 m!5153727))

(declare-fun m!5153729 () Bool)

(assert (=> b!4452899 m!5153729))

(push 1)

(assert (not b!4452900))

(assert (not b!4452901))

(assert (not b!4452898))

(assert (not b!4452899))

(assert (not start!436062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1358350 () Bool)

(declare-fun res!1845416 () Bool)

(declare-fun e!2772913 () Bool)

(assert (=> d!1358350 (=> res!1845416 e!2772913)))

(assert (=> d!1358350 (= res!1845416 (is-Nil!49880 (toList!3727 lm!1837)))))

(assert (=> d!1358350 (= (forall!9765 (toList!3727 lm!1837) lambda!159339) e!2772913)))

(declare-fun b!4452918 () Bool)

(declare-fun e!2772914 () Bool)

(assert (=> b!4452918 (= e!2772913 e!2772914)))

(declare-fun res!1845417 () Bool)

(assert (=> b!4452918 (=> (not res!1845417) (not e!2772914))))

(declare-fun dynLambda!20945 (Int tuple2!49860) Bool)

(assert (=> b!4452918 (= res!1845417 (dynLambda!20945 lambda!159339 (h!55625 (toList!3727 lm!1837))))))

(declare-fun b!4452919 () Bool)

(assert (=> b!4452919 (= e!2772914 (forall!9765 (t!356954 (toList!3727 lm!1837)) lambda!159339))))

(assert (= (and d!1358350 (not res!1845416)) b!4452918))

(assert (= (and b!4452918 res!1845417) b!4452919))

(declare-fun b_lambda!147305 () Bool)

(assert (=> (not b_lambda!147305) (not b!4452918)))

(declare-fun m!5153741 () Bool)

(assert (=> b!4452918 m!5153741))

(declare-fun m!5153743 () Bool)

(assert (=> b!4452919 m!5153743))

(assert (=> start!436062 d!1358350))

(declare-fun d!1358352 () Bool)

(declare-fun isStrictlySorted!286 (List!50004) Bool)

(assert (=> d!1358352 (= (inv!65435 lm!1837) (isStrictlySorted!286 (toList!3727 lm!1837)))))

(declare-fun bs!790001 () Bool)

(assert (= bs!790001 d!1358352))

(declare-fun m!5153745 () Bool)

(assert (=> bs!790001 m!5153745))

(assert (=> start!436062 d!1358352))

(declare-fun d!1358354 () Bool)

(assert (=> d!1358354 (= (isEmpty!28408 lm!1837) (isEmpty!28409 (toList!3727 lm!1837)))))

(declare-fun bs!790002 () Bool)

(assert (= bs!790002 d!1358354))

(assert (=> bs!790002 m!5153729))

(assert (=> b!4452900 d!1358354))

(declare-fun bs!790003 () Bool)

(declare-fun d!1358356 () Bool)

(assert (= bs!790003 (and d!1358356 start!436062)))

(declare-fun lambda!159345 () Int)

(assert (=> bs!790003 (not (= lambda!159345 lambda!159339))))

(assert (=> d!1358356 true))

(assert (=> d!1358356 (= (allKeysSameHashInMap!976 lm!1837 hashF!1304) (forall!9765 (toList!3727 lm!1837) lambda!159345))))

(declare-fun bs!790004 () Bool)

(assert (= bs!790004 d!1358356))

(declare-fun m!5153747 () Bool)

(assert (=> bs!790004 m!5153747))

(assert (=> b!4452898 d!1358356))

(declare-fun d!1358358 () Bool)

(assert (=> d!1358358 (= (isEmpty!28409 (toList!3727 lm!1837)) (is-Nil!49880 (toList!3727 lm!1837)))))

(assert (=> b!4452899 d!1358358))

(declare-fun b!4452926 () Bool)

(declare-fun e!2772917 () Bool)

(declare-fun tp!1334609 () Bool)

(declare-fun tp!1334610 () Bool)

(assert (=> b!4452926 (= e!2772917 (and tp!1334609 tp!1334610))))

(assert (=> b!4452901 (= tp!1334601 e!2772917)))

(assert (= (and b!4452901 (is-Cons!49880 (toList!3727 lm!1837))) b!4452926))

(declare-fun b_lambda!147307 () Bool)

(assert (= b_lambda!147305 (or start!436062 b_lambda!147307)))

(declare-fun bs!790005 () Bool)

(declare-fun d!1358360 () Bool)

(assert (= bs!790005 (and d!1358360 start!436062)))

(declare-fun noDuplicateKeys!870 (List!50003) Bool)

(assert (=> bs!790005 (= (dynLambda!20945 lambda!159339 (h!55625 (toList!3727 lm!1837))) (noDuplicateKeys!870 (_2!28224 (h!55625 (toList!3727 lm!1837)))))))

(declare-fun m!5153749 () Bool)

(assert (=> bs!790005 m!5153749))

(assert (=> b!4452918 d!1358360))

(push 1)

(assert (not bs!790005))

(assert (not d!1358354))

(assert (not b!4452926))

(assert (not d!1358352))

(assert (not b!4452919))

(assert (not b_lambda!147307))

(assert (not d!1358356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

