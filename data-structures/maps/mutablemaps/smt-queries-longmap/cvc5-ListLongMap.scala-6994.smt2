; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88718 () Bool)

(assert start!88718)

(declare-fun b!1018714 () Bool)

(declare-fun res!683147 () Bool)

(declare-fun e!573289 () Bool)

(assert (=> b!1018714 (=> (not res!683147) (not e!573289))))

(declare-datatypes ((B!1670 0))(
  ( (B!1671 (val!11919 Int)) )
))
(declare-datatypes ((tuple2!15474 0))(
  ( (tuple2!15475 (_1!7747 (_ BitVec 64)) (_2!7747 B!1670)) )
))
(declare-datatypes ((List!21721 0))(
  ( (Nil!21718) (Cons!21717 (h!22915 tuple2!15474) (t!30733 List!21721)) )
))
(declare-fun l!996 () List!21721)

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!533 (List!21721 (_ BitVec 64)) Bool)

(assert (=> b!1018714 (= res!683147 (containsKey!533 l!996 key!261))))

(declare-fun b!1018717 () Bool)

(declare-fun e!573287 () Bool)

(declare-fun tp_is_empty!23737 () Bool)

(declare-fun tp!71096 () Bool)

(assert (=> b!1018717 (= e!573287 (and tp_is_empty!23737 tp!71096))))

(declare-fun b!1018715 () Bool)

(declare-fun e!573288 () Bool)

(assert (=> b!1018715 (= e!573289 e!573288)))

(declare-fun res!683148 () Bool)

(assert (=> b!1018715 (=> (not res!683148) (not e!573288))))

(assert (=> b!1018715 (= res!683148 (and (is-Cons!21717 l!996) (bvslt (_1!7747 (h!22915 l!996)) key!261)))))

(declare-fun value!172 () B!1670)

(declare-fun lt!449574 () List!21721)

(declare-fun insertStrictlySorted!350 (List!21721 (_ BitVec 64) B!1670) List!21721)

(assert (=> b!1018715 (= lt!449574 (insertStrictlySorted!350 l!996 key!261 value!172))))

(declare-fun b!1018716 () Bool)

(declare-fun isStrictlySorted!668 (List!21721) Bool)

(assert (=> b!1018716 (= e!573288 (not (isStrictlySorted!668 (t!30733 l!996))))))

(declare-fun res!683146 () Bool)

(assert (=> start!88718 (=> (not res!683146) (not e!573289))))

(assert (=> start!88718 (= res!683146 (isStrictlySorted!668 l!996))))

(assert (=> start!88718 e!573289))

(assert (=> start!88718 e!573287))

(assert (=> start!88718 true))

(assert (=> start!88718 tp_is_empty!23737))

(assert (= (and start!88718 res!683146) b!1018714))

(assert (= (and b!1018714 res!683147) b!1018715))

(assert (= (and b!1018715 res!683148) b!1018716))

(assert (= (and start!88718 (is-Cons!21717 l!996)) b!1018717))

(declare-fun m!939587 () Bool)

(assert (=> b!1018714 m!939587))

(declare-fun m!939589 () Bool)

(assert (=> b!1018715 m!939589))

(declare-fun m!939591 () Bool)

(assert (=> b!1018716 m!939591))

(declare-fun m!939593 () Bool)

(assert (=> start!88718 m!939593))

(push 1)

(assert tp_is_empty!23737)

(assert (not start!88718))

(assert (not b!1018717))

(assert (not b!1018715))

(assert (not b!1018714))

(assert (not b!1018716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121919 () Bool)

(declare-fun res!683177 () Bool)

(declare-fun e!573318 () Bool)

(assert (=> d!121919 (=> res!683177 e!573318)))

(assert (=> d!121919 (= res!683177 (or (is-Nil!21718 l!996) (is-Nil!21718 (t!30733 l!996))))))

(assert (=> d!121919 (= (isStrictlySorted!668 l!996) e!573318)))

(declare-fun b!1018752 () Bool)

(declare-fun e!573319 () Bool)

(assert (=> b!1018752 (= e!573318 e!573319)))

(declare-fun res!683178 () Bool)

(assert (=> b!1018752 (=> (not res!683178) (not e!573319))))

(assert (=> b!1018752 (= res!683178 (bvslt (_1!7747 (h!22915 l!996)) (_1!7747 (h!22915 (t!30733 l!996)))))))

(declare-fun b!1018753 () Bool)

(assert (=> b!1018753 (= e!573319 (isStrictlySorted!668 (t!30733 l!996)))))

(assert (= (and d!121919 (not res!683177)) b!1018752))

(assert (= (and b!1018752 res!683178) b!1018753))

(assert (=> b!1018753 m!939591))

(assert (=> start!88718 d!121919))

(declare-fun d!121923 () Bool)

(declare-fun res!683179 () Bool)

(declare-fun e!573320 () Bool)

(assert (=> d!121923 (=> res!683179 e!573320)))

(assert (=> d!121923 (= res!683179 (or (is-Nil!21718 (t!30733 l!996)) (is-Nil!21718 (t!30733 (t!30733 l!996)))))))

(assert (=> d!121923 (= (isStrictlySorted!668 (t!30733 l!996)) e!573320)))

(declare-fun b!1018754 () Bool)

(declare-fun e!573321 () Bool)

(assert (=> b!1018754 (= e!573320 e!573321)))

(declare-fun res!683180 () Bool)

(assert (=> b!1018754 (=> (not res!683180) (not e!573321))))

(assert (=> b!1018754 (= res!683180 (bvslt (_1!7747 (h!22915 (t!30733 l!996))) (_1!7747 (h!22915 (t!30733 (t!30733 l!996))))))))

(declare-fun b!1018755 () Bool)

(assert (=> b!1018755 (= e!573321 (isStrictlySorted!668 (t!30733 (t!30733 l!996))))))

(assert (= (and d!121923 (not res!683179)) b!1018754))

(assert (= (and b!1018754 res!683180) b!1018755))

(declare-fun m!939613 () Bool)

(assert (=> b!1018755 m!939613))

(assert (=> b!1018716 d!121923))

(declare-fun d!121927 () Bool)

(declare-fun res!683185 () Bool)

(declare-fun e!573326 () Bool)

(assert (=> d!121927 (=> res!683185 e!573326)))

(assert (=> d!121927 (= res!683185 (and (is-Cons!21717 l!996) (= (_1!7747 (h!22915 l!996)) key!261)))))

(assert (=> d!121927 (= (containsKey!533 l!996 key!261) e!573326)))

(declare-fun b!1018760 () Bool)

(declare-fun e!573327 () Bool)

(assert (=> b!1018760 (= e!573326 e!573327)))

(declare-fun res!683186 () Bool)

(assert (=> b!1018760 (=> (not res!683186) (not e!573327))))

(assert (=> b!1018760 (= res!683186 (and (or (not (is-Cons!21717 l!996)) (bvsle (_1!7747 (h!22915 l!996)) key!261)) (is-Cons!21717 l!996) (bvslt (_1!7747 (h!22915 l!996)) key!261)))))

(declare-fun b!1018761 () Bool)

(assert (=> b!1018761 (= e!573327 (containsKey!533 (t!30733 l!996) key!261))))

(assert (= (and d!121927 (not res!683185)) b!1018760))

(assert (= (and b!1018760 res!683186) b!1018761))

(declare-fun m!939615 () Bool)

(assert (=> b!1018761 m!939615))

(assert (=> b!1018714 d!121927))

(declare-fun b!1018859 () Bool)

(declare-fun e!573387 () List!21721)

(declare-fun e!573382 () List!21721)

(assert (=> b!1018859 (= e!573387 e!573382)))

(declare-fun c!103184 () Bool)

(assert (=> b!1018859 (= c!103184 (and (is-Cons!21717 l!996) (= (_1!7747 (h!22915 l!996)) key!261)))))

(declare-fun e!573386 () List!21721)

(declare-fun call!43023 () List!21721)

(declare-fun bm!43019 () Bool)

(declare-fun c!103186 () Bool)

(declare-fun $colon$colon!585 (List!21721 tuple2!15474) List!21721)

(assert (=> bm!43019 (= call!43023 ($colon$colon!585 e!573386 (ite c!103186 (h!22915 l!996) (tuple2!15475 key!261 value!172))))))

(declare-fun c!103183 () Bool)

(assert (=> bm!43019 (= c!103183 c!103186)))

(declare-fun c!103185 () Bool)

(declare-fun b!1018861 () Bool)

(assert (=> b!1018861 (= e!573386 (ite c!103184 (t!30733 l!996) (ite c!103185 (Cons!21717 (h!22915 l!996) (t!30733 l!996)) Nil!21718)))))

(declare-fun e!573385 () Bool)

(declare-fun lt!449589 () List!21721)

(declare-fun b!1018862 () Bool)

(declare-fun contains!5914 (List!21721 tuple2!15474) Bool)

(assert (=> b!1018862 (= e!573385 (contains!5914 lt!449589 (tuple2!15475 key!261 value!172)))))

(declare-fun b!1018863 () Bool)

(assert (=> b!1018863 (= c!103185 (and (is-Cons!21717 l!996) (bvsgt (_1!7747 (h!22915 l!996)) key!261)))))

(declare-fun e!573383 () List!21721)

(assert (=> b!1018863 (= e!573382 e!573383)))

(declare-fun b!1018860 () Bool)

(declare-fun res!683216 () Bool)

(assert (=> b!1018860 (=> (not res!683216) (not e!573385))))

(assert (=> b!1018860 (= res!683216 (containsKey!533 lt!449589 key!261))))

(declare-fun d!121929 () Bool)

(assert (=> d!121929 e!573385))

(declare-fun res!683215 () Bool)

(assert (=> d!121929 (=> (not res!683215) (not e!573385))))

(assert (=> d!121929 (= res!683215 (isStrictlySorted!668 lt!449589))))

(assert (=> d!121929 (= lt!449589 e!573387)))

(assert (=> d!121929 (= c!103186 (and (is-Cons!21717 l!996) (bvslt (_1!7747 (h!22915 l!996)) key!261)))))

(assert (=> d!121929 (isStrictlySorted!668 l!996)))

(assert (=> d!121929 (= (insertStrictlySorted!350 l!996 key!261 value!172) lt!449589)))

(declare-fun bm!43020 () Bool)

(declare-fun call!43022 () List!21721)

(assert (=> bm!43020 (= call!43022 call!43023)))

(declare-fun b!1018864 () Bool)

(declare-fun call!43024 () List!21721)

(assert (=> b!1018864 (= e!573383 call!43024)))

(declare-fun b!1018865 () Bool)

(assert (=> b!1018865 (= e!573382 call!43022)))

(declare-fun b!1018866 () Bool)

(assert (=> b!1018866 (= e!573387 call!43023)))

(declare-fun b!1018867 () Bool)

(assert (=> b!1018867 (= e!573386 (insertStrictlySorted!350 (t!30733 l!996) key!261 value!172))))

(declare-fun bm!43021 () Bool)

(assert (=> bm!43021 (= call!43024 call!43022)))

(declare-fun b!1018868 () Bool)

(assert (=> b!1018868 (= e!573383 call!43024)))

(assert (= (and d!121929 c!103186) b!1018866))

(assert (= (and d!121929 (not c!103186)) b!1018859))

(assert (= (and b!1018859 c!103184) b!1018865))

(assert (= (and b!1018859 (not c!103184)) b!1018863))

(assert (= (and b!1018863 c!103185) b!1018864))

(assert (= (and b!1018863 (not c!103185)) b!1018868))

(assert (= (or b!1018864 b!1018868) bm!43021))

(assert (= (or b!1018865 bm!43021) bm!43020))

(assert (= (or b!1018866 bm!43020) bm!43019))

(assert (= (and bm!43019 c!103183) b!1018867))

(assert (= (and bm!43019 (not c!103183)) b!1018861))

(assert (= (and d!121929 res!683215) b!1018860))

(assert (= (and b!1018860 res!683216) b!1018862))

(declare-fun m!939639 () Bool)

(assert (=> b!1018862 m!939639))

(declare-fun m!939641 () Bool)

(assert (=> bm!43019 m!939641))

(declare-fun m!939643 () Bool)

(assert (=> d!121929 m!939643))

