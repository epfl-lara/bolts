; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88722 () Bool)

(assert start!88722)

(declare-fun b!1018738 () Bool)

(declare-fun res!683165 () Bool)

(declare-fun e!573306 () Bool)

(assert (=> b!1018738 (=> (not res!683165) (not e!573306))))

(declare-datatypes ((B!1674 0))(
  ( (B!1675 (val!11921 Int)) )
))
(declare-datatypes ((tuple2!15478 0))(
  ( (tuple2!15479 (_1!7749 (_ BitVec 64)) (_2!7749 B!1674)) )
))
(declare-datatypes ((List!21723 0))(
  ( (Nil!21720) (Cons!21719 (h!22917 tuple2!15478) (t!30735 List!21723)) )
))
(declare-fun l!996 () List!21723)

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!535 (List!21723 (_ BitVec 64)) Bool)

(assert (=> b!1018738 (= res!683165 (containsKey!535 l!996 key!261))))

(declare-fun res!683166 () Bool)

(assert (=> start!88722 (=> (not res!683166) (not e!573306))))

(declare-fun isStrictlySorted!670 (List!21723) Bool)

(assert (=> start!88722 (= res!683166 (isStrictlySorted!670 l!996))))

(assert (=> start!88722 e!573306))

(declare-fun e!573305 () Bool)

(assert (=> start!88722 e!573305))

(assert (=> start!88722 true))

(declare-fun tp_is_empty!23741 () Bool)

(assert (=> start!88722 tp_is_empty!23741))

(declare-fun b!1018740 () Bool)

(declare-fun e!573307 () Bool)

(assert (=> b!1018740 (= e!573307 (not (isStrictlySorted!670 (t!30735 l!996))))))

(declare-fun b!1018741 () Bool)

(declare-fun tp!71102 () Bool)

(assert (=> b!1018741 (= e!573305 (and tp_is_empty!23741 tp!71102))))

(declare-fun b!1018739 () Bool)

(assert (=> b!1018739 (= e!573306 e!573307)))

(declare-fun res!683164 () Bool)

(assert (=> b!1018739 (=> (not res!683164) (not e!573307))))

(assert (=> b!1018739 (= res!683164 (and (is-Cons!21719 l!996) (bvslt (_1!7749 (h!22917 l!996)) key!261)))))

(declare-fun value!172 () B!1674)

(declare-fun lt!449580 () List!21723)

(declare-fun insertStrictlySorted!352 (List!21723 (_ BitVec 64) B!1674) List!21723)

(assert (=> b!1018739 (= lt!449580 (insertStrictlySorted!352 l!996 key!261 value!172))))

(assert (= (and start!88722 res!683166) b!1018738))

(assert (= (and b!1018738 res!683165) b!1018739))

(assert (= (and b!1018739 res!683164) b!1018740))

(assert (= (and start!88722 (is-Cons!21719 l!996)) b!1018741))

(declare-fun m!939603 () Bool)

(assert (=> b!1018738 m!939603))

(declare-fun m!939605 () Bool)

(assert (=> start!88722 m!939605))

(declare-fun m!939607 () Bool)

(assert (=> b!1018740 m!939607))

(declare-fun m!939609 () Bool)

(assert (=> b!1018739 m!939609))

(push 1)

(assert (not b!1018741))

(assert (not b!1018738))

(assert (not start!88722))

(assert tp_is_empty!23741)

(assert (not b!1018740))

(assert (not b!1018739))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1018830 () Bool)

(declare-fun res!683199 () Bool)

(declare-fun e!573363 () Bool)

(assert (=> b!1018830 (=> (not res!683199) (not e!573363))))

(declare-fun lt!449588 () List!21723)

(assert (=> b!1018830 (= res!683199 (containsKey!535 lt!449588 key!261))))

(declare-fun call!43020 () List!21723)

(declare-fun c!103180 () Bool)

(declare-fun bm!43016 () Bool)

(declare-fun e!573364 () List!21723)

(declare-fun $colon$colon!583 (List!21723 tuple2!15478) List!21723)

(assert (=> bm!43016 (= call!43020 ($colon$colon!583 e!573364 (ite c!103180 (h!22917 l!996) (tuple2!15479 key!261 value!172))))))

(declare-fun c!103181 () Bool)

(assert (=> bm!43016 (= c!103181 c!103180)))

(declare-fun bm!43017 () Bool)

(declare-fun call!43021 () List!21723)

(assert (=> bm!43017 (= call!43021 call!43020)))

(declare-fun b!1018831 () Bool)

(declare-fun e!573366 () List!21723)

(declare-fun e!573365 () List!21723)

(assert (=> b!1018831 (= e!573366 e!573365)))

(declare-fun c!103182 () Bool)

(assert (=> b!1018831 (= c!103182 (and (is-Cons!21719 l!996) (= (_1!7749 (h!22917 l!996)) key!261)))))

(declare-fun b!1018832 () Bool)

(declare-fun e!573367 () List!21723)

(declare-fun call!43019 () List!21723)

(assert (=> b!1018832 (= e!573367 call!43019)))

(declare-fun b!1018833 () Bool)

(assert (=> b!1018833 (= e!573364 (insertStrictlySorted!352 (t!30735 l!996) key!261 value!172))))

(declare-fun bm!43018 () Bool)

(assert (=> bm!43018 (= call!43019 call!43021)))

(declare-fun b!1018834 () Bool)

(declare-fun contains!5913 (List!21723 tuple2!15478) Bool)

(assert (=> b!1018834 (= e!573363 (contains!5913 lt!449588 (tuple2!15479 key!261 value!172)))))

(declare-fun d!121925 () Bool)

(assert (=> d!121925 e!573363))

(declare-fun res!683200 () Bool)

(assert (=> d!121925 (=> (not res!683200) (not e!573363))))

(assert (=> d!121925 (= res!683200 (isStrictlySorted!670 lt!449588))))

(assert (=> d!121925 (= lt!449588 e!573366)))

(assert (=> d!121925 (= c!103180 (and (is-Cons!21719 l!996) (bvslt (_1!7749 (h!22917 l!996)) key!261)))))

(assert (=> d!121925 (isStrictlySorted!670 l!996)))

(assert (=> d!121925 (= (insertStrictlySorted!352 l!996 key!261 value!172) lt!449588)))

(declare-fun b!1018835 () Bool)

(declare-fun c!103179 () Bool)

(assert (=> b!1018835 (= c!103179 (and (is-Cons!21719 l!996) (bvsgt (_1!7749 (h!22917 l!996)) key!261)))))

(assert (=> b!1018835 (= e!573365 e!573367)))

(declare-fun b!1018836 () Bool)

(assert (=> b!1018836 (= e!573364 (ite c!103182 (t!30735 l!996) (ite c!103179 (Cons!21719 (h!22917 l!996) (t!30735 l!996)) Nil!21720)))))

(declare-fun b!1018837 () Bool)

(assert (=> b!1018837 (= e!573365 call!43021)))

(declare-fun b!1018838 () Bool)

(assert (=> b!1018838 (= e!573367 call!43019)))

(declare-fun b!1018839 () Bool)

(assert (=> b!1018839 (= e!573366 call!43020)))

(assert (= (and d!121925 c!103180) b!1018839))

(assert (= (and d!121925 (not c!103180)) b!1018831))

(assert (= (and b!1018831 c!103182) b!1018837))

(assert (= (and b!1018831 (not c!103182)) b!1018835))

(assert (= (and b!1018835 c!103179) b!1018832))

(assert (= (and b!1018835 (not c!103179)) b!1018838))

(assert (= (or b!1018832 b!1018838) bm!43018))

(assert (= (or b!1018837 bm!43018) bm!43017))

(assert (= (or b!1018839 bm!43017) bm!43016))

(assert (= (and bm!43016 c!103181) b!1018833))

(assert (= (and bm!43016 (not c!103181)) b!1018836))

(assert (= (and d!121925 res!683200) b!1018830))

(assert (= (and b!1018830 res!683199) b!1018834))

(declare-fun m!939627 () Bool)

(assert (=> b!1018834 m!939627))

(declare-fun m!939629 () Bool)

(assert (=> bm!43016 m!939629))

(declare-fun m!939631 () Bool)

(assert (=> b!1018830 m!939631))

(declare-fun m!939633 () Bool)

(assert (=> d!121925 m!939633))

(assert (=> d!121925 m!939605))

(declare-fun m!939635 () Bool)

(assert (=> b!1018833 m!939635))

(assert (=> b!1018739 d!121925))

(declare-fun d!121933 () Bool)

(declare-fun res!683217 () Bool)

(declare-fun e!573388 () Bool)

(assert (=> d!121933 (=> res!683217 e!573388)))

(assert (=> d!121933 (= res!683217 (and (is-Cons!21719 l!996) (= (_1!7749 (h!22917 l!996)) key!261)))))

(assert (=> d!121933 (= (containsKey!535 l!996 key!261) e!573388)))

(declare-fun b!1018869 () Bool)

(declare-fun e!573389 () Bool)

(assert (=> b!1018869 (= e!573388 e!573389)))

(declare-fun res!683218 () Bool)

(assert (=> b!1018869 (=> (not res!683218) (not e!573389))))

(assert (=> b!1018869 (= res!683218 (and (or (not (is-Cons!21719 l!996)) (bvsle (_1!7749 (h!22917 l!996)) key!261)) (is-Cons!21719 l!996) (bvslt (_1!7749 (h!22917 l!996)) key!261)))))

(declare-fun b!1018870 () Bool)

(assert (=> b!1018870 (= e!573389 (containsKey!535 (t!30735 l!996) key!261))))

