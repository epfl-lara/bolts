; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133188 () Bool)

(assert start!133188)

(declare-fun res!1065589 () Bool)

(declare-fun e!867816 () Bool)

(assert (=> start!133188 (=> (not res!1065589) (not e!867816))))

(declare-datatypes ((B!2416 0))(
  ( (B!2417 (val!19294 Int)) )
))
(declare-datatypes ((tuple2!25104 0))(
  ( (tuple2!25105 (_1!12562 (_ BitVec 64)) (_2!12562 B!2416)) )
))
(declare-datatypes ((List!36474 0))(
  ( (Nil!36471) (Cons!36470 (h!37917 tuple2!25104) (t!51208 List!36474)) )
))
(declare-fun l!1292 () List!36474)

(declare-fun isStrictlySorted!965 (List!36474) Bool)

(assert (=> start!133188 (= res!1065589 (isStrictlySorted!965 l!1292))))

(assert (=> start!133188 e!867816))

(declare-fun e!867815 () Bool)

(assert (=> start!133188 e!867815))

(assert (=> start!133188 true))

(declare-fun tp_is_empty!38421 () Bool)

(assert (=> start!133188 tp_is_empty!38421))

(declare-fun b!1557844 () Bool)

(declare-fun res!1065591 () Bool)

(assert (=> b!1557844 (=> (not res!1065591) (not e!867816))))

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!829 (List!36474 (_ BitVec 64)) Bool)

(assert (=> b!1557844 (= res!1065591 (containsKey!829 l!1292 otherKey!62))))

(declare-fun b!1557845 () Bool)

(declare-fun res!1065590 () Bool)

(assert (=> b!1557845 (=> (not res!1065590) (not e!867816))))

(declare-fun newKey!135 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1557845 (= res!1065590 (and (not (= otherKey!62 newKey!135)) (or (not ((_ is Cons!36470) l!1292)) (= (_1!12562 (h!37917 l!1292)) otherKey!62))))))

(declare-fun newValue!135 () B!2416)

(declare-fun b!1557846 () Bool)

(declare-fun insertStrictlySorted!567 (List!36474 (_ BitVec 64) B!2416) List!36474)

(assert (=> b!1557846 (= e!867816 (not (isStrictlySorted!965 (insertStrictlySorted!567 l!1292 newKey!135 newValue!135))))))

(declare-fun b!1557847 () Bool)

(declare-fun tp!112588 () Bool)

(assert (=> b!1557847 (= e!867815 (and tp_is_empty!38421 tp!112588))))

(assert (= (and start!133188 res!1065589) b!1557844))

(assert (= (and b!1557844 res!1065591) b!1557845))

(assert (= (and b!1557845 res!1065590) b!1557846))

(assert (= (and start!133188 ((_ is Cons!36470) l!1292)) b!1557847))

(declare-fun m!1434827 () Bool)

(assert (=> start!133188 m!1434827))

(declare-fun m!1434829 () Bool)

(assert (=> b!1557844 m!1434829))

(declare-fun m!1434831 () Bool)

(assert (=> b!1557846 m!1434831))

(assert (=> b!1557846 m!1434831))

(declare-fun m!1434833 () Bool)

(assert (=> b!1557846 m!1434833))

(check-sat (not b!1557847) (not b!1557844) tp_is_empty!38421 (not b!1557846) (not start!133188))
(check-sat)
(get-model)

(declare-fun d!162487 () Bool)

(declare-fun res!1065605 () Bool)

(declare-fun e!867827 () Bool)

(assert (=> d!162487 (=> res!1065605 e!867827)))

(assert (=> d!162487 (= res!1065605 (or ((_ is Nil!36471) (insertStrictlySorted!567 l!1292 newKey!135 newValue!135)) ((_ is Nil!36471) (t!51208 (insertStrictlySorted!567 l!1292 newKey!135 newValue!135)))))))

(assert (=> d!162487 (= (isStrictlySorted!965 (insertStrictlySorted!567 l!1292 newKey!135 newValue!135)) e!867827)))

(declare-fun b!1557864 () Bool)

(declare-fun e!867828 () Bool)

(assert (=> b!1557864 (= e!867827 e!867828)))

(declare-fun res!1065606 () Bool)

(assert (=> b!1557864 (=> (not res!1065606) (not e!867828))))

(assert (=> b!1557864 (= res!1065606 (bvslt (_1!12562 (h!37917 (insertStrictlySorted!567 l!1292 newKey!135 newValue!135))) (_1!12562 (h!37917 (t!51208 (insertStrictlySorted!567 l!1292 newKey!135 newValue!135))))))))

(declare-fun b!1557865 () Bool)

(assert (=> b!1557865 (= e!867828 (isStrictlySorted!965 (t!51208 (insertStrictlySorted!567 l!1292 newKey!135 newValue!135))))))

(assert (= (and d!162487 (not res!1065605)) b!1557864))

(assert (= (and b!1557864 res!1065606) b!1557865))

(declare-fun m!1434843 () Bool)

(assert (=> b!1557865 m!1434843))

(assert (=> b!1557846 d!162487))

(declare-fun b!1557921 () Bool)

(declare-fun e!867868 () List!36474)

(declare-fun e!867869 () List!36474)

(assert (=> b!1557921 (= e!867868 e!867869)))

(declare-fun c!144000 () Bool)

(assert (=> b!1557921 (= c!144000 (and ((_ is Cons!36470) l!1292) (= (_1!12562 (h!37917 l!1292)) newKey!135)))))

(declare-fun e!867867 () List!36474)

(declare-fun b!1557922 () Bool)

(declare-fun c!144001 () Bool)

(assert (=> b!1557922 (= e!867867 (ite c!144000 (t!51208 l!1292) (ite c!144001 (Cons!36470 (h!37917 l!1292) (t!51208 l!1292)) Nil!36471)))))

(declare-fun b!1557923 () Bool)

(assert (=> b!1557923 (= c!144001 (and ((_ is Cons!36470) l!1292) (bvsgt (_1!12562 (h!37917 l!1292)) newKey!135)))))

(declare-fun e!867865 () List!36474)

(assert (=> b!1557923 (= e!867869 e!867865)))

(declare-fun bm!71729 () Bool)

(declare-fun call!71733 () List!36474)

(declare-fun call!71732 () List!36474)

(assert (=> bm!71729 (= call!71733 call!71732)))

(declare-fun b!1557920 () Bool)

(declare-fun call!71734 () List!36474)

(assert (=> b!1557920 (= e!867865 call!71734)))

(declare-fun d!162491 () Bool)

(declare-fun e!867866 () Bool)

(assert (=> d!162491 e!867866))

(declare-fun res!1065630 () Bool)

(assert (=> d!162491 (=> (not res!1065630) (not e!867866))))

(declare-fun lt!670683 () List!36474)

(assert (=> d!162491 (= res!1065630 (isStrictlySorted!965 lt!670683))))

(assert (=> d!162491 (= lt!670683 e!867868)))

(declare-fun c!143997 () Bool)

(assert (=> d!162491 (= c!143997 (and ((_ is Cons!36470) l!1292) (bvslt (_1!12562 (h!37917 l!1292)) newKey!135)))))

(assert (=> d!162491 (isStrictlySorted!965 l!1292)))

(assert (=> d!162491 (= (insertStrictlySorted!567 l!1292 newKey!135 newValue!135) lt!670683)))

(declare-fun b!1557924 () Bool)

(assert (=> b!1557924 (= e!867869 call!71733)))

(declare-fun b!1557925 () Bool)

(assert (=> b!1557925 (= e!867867 (insertStrictlySorted!567 (t!51208 l!1292) newKey!135 newValue!135))))

(declare-fun b!1557926 () Bool)

(assert (=> b!1557926 (= e!867865 call!71734)))

(declare-fun b!1557927 () Bool)

(declare-fun res!1065629 () Bool)

(assert (=> b!1557927 (=> (not res!1065629) (not e!867866))))

(assert (=> b!1557927 (= res!1065629 (containsKey!829 lt!670683 newKey!135))))

(declare-fun bm!71730 () Bool)

(assert (=> bm!71730 (= call!71734 call!71733)))

(declare-fun b!1557928 () Bool)

(declare-fun contains!10215 (List!36474 tuple2!25104) Bool)

(assert (=> b!1557928 (= e!867866 (contains!10215 lt!670683 (tuple2!25105 newKey!135 newValue!135)))))

(declare-fun bm!71731 () Bool)

(declare-fun $colon$colon!981 (List!36474 tuple2!25104) List!36474)

(assert (=> bm!71731 (= call!71732 ($colon$colon!981 e!867867 (ite c!143997 (h!37917 l!1292) (tuple2!25105 newKey!135 newValue!135))))))

(declare-fun c!143998 () Bool)

(assert (=> bm!71731 (= c!143998 c!143997)))

(declare-fun b!1557929 () Bool)

(assert (=> b!1557929 (= e!867868 call!71732)))

(assert (= (and d!162491 c!143997) b!1557929))

(assert (= (and d!162491 (not c!143997)) b!1557921))

(assert (= (and b!1557921 c!144000) b!1557924))

(assert (= (and b!1557921 (not c!144000)) b!1557923))

(assert (= (and b!1557923 c!144001) b!1557920))

(assert (= (and b!1557923 (not c!144001)) b!1557926))

(assert (= (or b!1557920 b!1557926) bm!71730))

(assert (= (or b!1557924 bm!71730) bm!71729))

(assert (= (or b!1557929 bm!71729) bm!71731))

(assert (= (and bm!71731 c!143998) b!1557925))

(assert (= (and bm!71731 (not c!143998)) b!1557922))

(assert (= (and d!162491 res!1065630) b!1557927))

(assert (= (and b!1557927 res!1065629) b!1557928))

(declare-fun m!1434851 () Bool)

(assert (=> b!1557928 m!1434851))

(declare-fun m!1434853 () Bool)

(assert (=> b!1557927 m!1434853))

(declare-fun m!1434855 () Bool)

(assert (=> b!1557925 m!1434855))

(declare-fun m!1434857 () Bool)

(assert (=> d!162491 m!1434857))

(assert (=> d!162491 m!1434827))

(declare-fun m!1434859 () Bool)

(assert (=> bm!71731 m!1434859))

(assert (=> b!1557846 d!162491))

(declare-fun d!162501 () Bool)

(declare-fun res!1065633 () Bool)

(declare-fun e!867878 () Bool)

(assert (=> d!162501 (=> res!1065633 e!867878)))

(assert (=> d!162501 (= res!1065633 (or ((_ is Nil!36471) l!1292) ((_ is Nil!36471) (t!51208 l!1292))))))

(assert (=> d!162501 (= (isStrictlySorted!965 l!1292) e!867878)))

(declare-fun b!1557944 () Bool)

(declare-fun e!867879 () Bool)

(assert (=> b!1557944 (= e!867878 e!867879)))

(declare-fun res!1065634 () Bool)

(assert (=> b!1557944 (=> (not res!1065634) (not e!867879))))

(assert (=> b!1557944 (= res!1065634 (bvslt (_1!12562 (h!37917 l!1292)) (_1!12562 (h!37917 (t!51208 l!1292)))))))

(declare-fun b!1557945 () Bool)

(assert (=> b!1557945 (= e!867879 (isStrictlySorted!965 (t!51208 l!1292)))))

(assert (= (and d!162501 (not res!1065633)) b!1557944))

(assert (= (and b!1557944 res!1065634) b!1557945))

(declare-fun m!1434861 () Bool)

(assert (=> b!1557945 m!1434861))

(assert (=> start!133188 d!162501))

(declare-fun d!162503 () Bool)

(declare-fun res!1065647 () Bool)

(declare-fun e!867893 () Bool)

(assert (=> d!162503 (=> res!1065647 e!867893)))

(assert (=> d!162503 (= res!1065647 (and ((_ is Cons!36470) l!1292) (= (_1!12562 (h!37917 l!1292)) otherKey!62)))))

(assert (=> d!162503 (= (containsKey!829 l!1292 otherKey!62) e!867893)))

(declare-fun b!1557970 () Bool)

(declare-fun e!867894 () Bool)

(assert (=> b!1557970 (= e!867893 e!867894)))

(declare-fun res!1065648 () Bool)

(assert (=> b!1557970 (=> (not res!1065648) (not e!867894))))

(assert (=> b!1557970 (= res!1065648 (and (or (not ((_ is Cons!36470) l!1292)) (bvsle (_1!12562 (h!37917 l!1292)) otherKey!62)) ((_ is Cons!36470) l!1292) (bvslt (_1!12562 (h!37917 l!1292)) otherKey!62)))))

(declare-fun b!1557971 () Bool)

(assert (=> b!1557971 (= e!867894 (containsKey!829 (t!51208 l!1292) otherKey!62))))

(assert (= (and d!162503 (not res!1065647)) b!1557970))

(assert (= (and b!1557970 res!1065648) b!1557971))

(declare-fun m!1434863 () Bool)

(assert (=> b!1557971 m!1434863))

(assert (=> b!1557844 d!162503))

(declare-fun b!1557976 () Bool)

(declare-fun e!867897 () Bool)

(declare-fun tp!112594 () Bool)

(assert (=> b!1557976 (= e!867897 (and tp_is_empty!38421 tp!112594))))

(assert (=> b!1557847 (= tp!112588 e!867897)))

(assert (= (and b!1557847 ((_ is Cons!36470) (t!51208 l!1292))) b!1557976))

(check-sat (not b!1557976) tp_is_empty!38421 (not bm!71731) (not b!1557928) (not d!162491) (not b!1557945) (not b!1557971) (not b!1557925) (not b!1557865) (not b!1557927))
(check-sat)
