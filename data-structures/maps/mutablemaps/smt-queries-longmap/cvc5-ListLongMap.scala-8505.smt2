; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103704 () Bool)

(assert start!103704)

(declare-datatypes ((B!1856 0))(
  ( (B!1857 (val!15690 Int)) )
))
(declare-datatypes ((tuple2!20408 0))(
  ( (tuple2!20409 (_1!10214 (_ BitVec 64)) (_2!10214 B!1856)) )
))
(declare-datatypes ((List!27519 0))(
  ( (Nil!27516) (Cons!27515 (h!28724 tuple2!20408) (t!40989 List!27519)) )
))
(declare-fun l!644 () List!27519)

(declare-fun v1!20 () B!1856)

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun b!1241501 () Bool)

(declare-fun e!703738 () Bool)

(declare-fun isStrictlySorted!747 (List!27519) Bool)

(declare-fun insertStrictlySorted!434 (List!27519 (_ BitVec 64) B!1856) List!27519)

(assert (=> b!1241501 (= e!703738 (not (isStrictlySorted!747 (insertStrictlySorted!434 l!644 key1!25 v1!20))))))

(declare-fun b!1241502 () Bool)

(declare-fun e!703739 () Bool)

(declare-fun tp_is_empty!31255 () Bool)

(declare-fun tp!92664 () Bool)

(assert (=> b!1241502 (= e!703739 (and tp_is_empty!31255 tp!92664))))

(declare-fun b!1241500 () Bool)

(declare-fun res!828214 () Bool)

(assert (=> b!1241500 (=> (not res!828214) (not e!703738))))

(assert (=> b!1241500 (= res!828214 (not (is-Cons!27515 l!644)))))

(declare-fun res!828212 () Bool)

(assert (=> start!103704 (=> (not res!828212) (not e!703738))))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103704 (= res!828212 (not (= key1!25 key2!15)))))

(assert (=> start!103704 e!703738))

(assert (=> start!103704 true))

(assert (=> start!103704 e!703739))

(assert (=> start!103704 tp_is_empty!31255))

(declare-fun b!1241499 () Bool)

(declare-fun res!828213 () Bool)

(assert (=> b!1241499 (=> (not res!828213) (not e!703738))))

(assert (=> b!1241499 (= res!828213 (isStrictlySorted!747 l!644))))

(assert (= (and start!103704 res!828212) b!1241499))

(assert (= (and b!1241499 res!828213) b!1241500))

(assert (= (and b!1241500 res!828214) b!1241501))

(assert (= (and start!103704 (is-Cons!27515 l!644)) b!1241502))

(declare-fun m!1144541 () Bool)

(assert (=> b!1241501 m!1144541))

(assert (=> b!1241501 m!1144541))

(declare-fun m!1144543 () Bool)

(assert (=> b!1241501 m!1144543))

(declare-fun m!1144545 () Bool)

(assert (=> b!1241499 m!1144545))

(push 1)

(assert (not b!1241499))

(assert (not b!1241501))

(assert (not b!1241502))

(assert tp_is_empty!31255)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136423 () Bool)

(declare-fun res!828249 () Bool)

(declare-fun e!703768 () Bool)

(assert (=> d!136423 (=> res!828249 e!703768)))

(assert (=> d!136423 (= res!828249 (or (is-Nil!27516 l!644) (is-Nil!27516 (t!40989 l!644))))))

(assert (=> d!136423 (= (isStrictlySorted!747 l!644) e!703768)))

(declare-fun b!1241543 () Bool)

(declare-fun e!703769 () Bool)

(assert (=> b!1241543 (= e!703768 e!703769)))

(declare-fun res!828250 () Bool)

(assert (=> b!1241543 (=> (not res!828250) (not e!703769))))

(assert (=> b!1241543 (= res!828250 (bvslt (_1!10214 (h!28724 l!644)) (_1!10214 (h!28724 (t!40989 l!644)))))))

(declare-fun b!1241544 () Bool)

(assert (=> b!1241544 (= e!703769 (isStrictlySorted!747 (t!40989 l!644)))))

(assert (= (and d!136423 (not res!828249)) b!1241543))

(assert (= (and b!1241543 res!828250) b!1241544))

(declare-fun m!1144563 () Bool)

(assert (=> b!1241544 m!1144563))

(assert (=> b!1241499 d!136423))

(declare-fun d!136429 () Bool)

(declare-fun res!828251 () Bool)

(declare-fun e!703770 () Bool)

(assert (=> d!136429 (=> res!828251 e!703770)))

(assert (=> d!136429 (= res!828251 (or (is-Nil!27516 (insertStrictlySorted!434 l!644 key1!25 v1!20)) (is-Nil!27516 (t!40989 (insertStrictlySorted!434 l!644 key1!25 v1!20)))))))

(assert (=> d!136429 (= (isStrictlySorted!747 (insertStrictlySorted!434 l!644 key1!25 v1!20)) e!703770)))

(declare-fun b!1241545 () Bool)

(declare-fun e!703771 () Bool)

(assert (=> b!1241545 (= e!703770 e!703771)))

(declare-fun res!828252 () Bool)

(assert (=> b!1241545 (=> (not res!828252) (not e!703771))))

(assert (=> b!1241545 (= res!828252 (bvslt (_1!10214 (h!28724 (insertStrictlySorted!434 l!644 key1!25 v1!20))) (_1!10214 (h!28724 (t!40989 (insertStrictlySorted!434 l!644 key1!25 v1!20))))))))

(declare-fun b!1241546 () Bool)

(assert (=> b!1241546 (= e!703771 (isStrictlySorted!747 (t!40989 (insertStrictlySorted!434 l!644 key1!25 v1!20))))))

(assert (= (and d!136429 (not res!828251)) b!1241545))

(assert (= (and b!1241545 res!828252) b!1241546))

(declare-fun m!1144565 () Bool)

(assert (=> b!1241546 m!1144565))

(assert (=> b!1241501 d!136429))

(declare-fun bm!61264 () Bool)

(declare-fun call!61267 () List!27519)

(declare-fun call!61268 () List!27519)

(assert (=> bm!61264 (= call!61267 call!61268)))

(declare-fun e!703823 () List!27519)

(declare-fun c!121444 () Bool)

(declare-fun b!1241638 () Bool)

(declare-fun c!121442 () Bool)

(assert (=> b!1241638 (= e!703823 (ite c!121442 (t!40989 l!644) (ite c!121444 (Cons!27515 (h!28724 l!644) (t!40989 l!644)) Nil!27516)))))

(declare-fun b!1241639 () Bool)

(declare-fun e!703822 () List!27519)

(declare-fun e!703820 () List!27519)

(assert (=> b!1241639 (= e!703822 e!703820)))

(assert (=> b!1241639 (= c!121442 (and (is-Cons!27515 l!644) (= (_1!10214 (h!28724 l!644)) key1!25)))))

(declare-fun b!1241640 () Bool)

(declare-fun e!703819 () List!27519)

(assert (=> b!1241640 (= e!703819 call!61267)))

(declare-fun bm!61265 () Bool)

(declare-fun call!61269 () List!27519)

(assert (=> bm!61265 (= call!61268 call!61269)))

(declare-fun b!1241642 () Bool)

(assert (=> b!1241642 (= e!703822 call!61269)))

(declare-fun b!1241644 () Bool)

(assert (=> b!1241644 (= c!121444 (and (is-Cons!27515 l!644) (bvsgt (_1!10214 (h!28724 l!644)) key1!25)))))

