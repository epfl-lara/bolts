; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2190 () Bool)

(assert start!2190)

(declare-fun b!14743 () Bool)

(assert (=> b!14743 true))

(declare-fun b!14742 () Bool)

(declare-fun e!8853 () Bool)

(declare-fun e!8856 () Bool)

(assert (=> b!14742 (= e!8853 e!8856)))

(declare-fun c!1397 () Bool)

(declare-datatypes ((B!556 0))(
  ( (B!557 (val!376 Int)) )
))
(declare-datatypes ((tuple2!534 0))(
  ( (tuple2!535 (_1!267 (_ BitVec 64)) (_2!267 B!556)) )
))
(declare-datatypes ((List!426 0))(
  ( (Nil!423) (Cons!422 (h!988 tuple2!534) (t!2828 List!426)) )
))
(declare-fun l!522 () List!426)

(declare-fun isEmpty!106 (List!426) Bool)

(assert (=> b!14742 (= c!1397 (isEmpty!106 l!522))))

(declare-fun res!11331 () Bool)

(assert (=> b!14743 (=> res!11331 e!8853)))

(declare-fun lambda!179 () Int)

(declare-fun forall!99 (List!426 Int) Bool)

(assert (=> b!14743 (= res!11331 (not (forall!99 Nil!423 lambda!179)))))

(declare-fun b!14744 () Bool)

(assert (=> b!14744 (= e!8856 false)))

(declare-fun b!14745 () Bool)

(declare-fun e!8855 () Bool)

(assert (=> b!14745 (= e!8856 e!8855)))

(declare-fun res!11329 () Bool)

(assert (=> b!14745 (= res!11329 false)))

(assert (=> b!14745 (=> (not res!11329) (not e!8855))))

(declare-fun b!14746 () Bool)

(declare-fun res!11332 () Bool)

(declare-fun e!8857 () Bool)

(assert (=> b!14746 (=> (not res!11332) (not e!8857))))

(declare-fun value!159 () B!556)

(get-info :version)

(assert (=> b!14746 (= res!11332 (and (or (not ((_ is Cons!422) l!522)) (not (= (_2!267 (h!988 l!522)) value!159))) (or (not ((_ is Cons!422) l!522)) (= (_2!267 (h!988 l!522)) value!159)) ((_ is Nil!423) l!522)))))

(declare-fun res!11328 () Bool)

(assert (=> start!2190 (=> (not res!11328) (not e!8857))))

(declare-fun isStrictlySorted!117 (List!426) Bool)

(assert (=> start!2190 (= res!11328 (isStrictlySorted!117 l!522))))

(assert (=> start!2190 e!8857))

(declare-fun e!8854 () Bool)

(assert (=> start!2190 e!8854))

(declare-fun tp_is_empty!735 () Bool)

(assert (=> start!2190 tp_is_empty!735))

(declare-fun b!14747 () Bool)

(declare-fun tp!2366 () Bool)

(assert (=> b!14747 (= e!8854 (and tp_is_empty!735 tp!2366))))

(declare-fun b!14748 () Bool)

(declare-fun head!795 (List!426) tuple2!534)

(assert (=> b!14748 (= e!8855 (bvslt (_1!267 (head!795 Nil!423)) (_1!267 (head!795 l!522))))))

(declare-fun b!14749 () Bool)

(assert (=> b!14749 (= e!8857 e!8853)))

(declare-fun res!11330 () Bool)

(assert (=> b!14749 (=> res!11330 e!8853)))

(assert (=> b!14749 (= res!11330 false)))

(assert (= (and start!2190 res!11328) b!14746))

(assert (= (and b!14746 res!11332) b!14749))

(assert (= (and b!14749 (not res!11330)) b!14743))

(assert (= (and b!14743 (not res!11331)) b!14742))

(assert (= (and b!14742 c!1397) b!14744))

(assert (= (and b!14742 (not c!1397)) b!14745))

(assert (= (and b!14745 res!11329) b!14748))

(assert (= (and start!2190 ((_ is Cons!422) l!522)) b!14747))

(declare-fun m!9851 () Bool)

(assert (=> b!14742 m!9851))

(declare-fun m!9853 () Bool)

(assert (=> b!14743 m!9853))

(declare-fun m!9855 () Bool)

(assert (=> start!2190 m!9855))

(declare-fun m!9857 () Bool)

(assert (=> b!14748 m!9857))

(declare-fun m!9859 () Bool)

(assert (=> b!14748 m!9859))

(check-sat (not b!14743) (not b!14742) (not start!2190) (not b!14747) (not b!14748) tp_is_empty!735)
(check-sat)
(get-model)

(declare-fun d!2403 () Bool)

(assert (not d!2403))

(assert (=> b!14748 d!2403))

(declare-fun d!2405 () Bool)

(assert (=> d!2405 (= (head!795 l!522) (h!988 l!522))))

(assert (=> b!14748 d!2405))

(declare-fun d!2407 () Bool)

(declare-fun res!11364 () Bool)

(declare-fun e!8889 () Bool)

(assert (=> d!2407 (=> res!11364 e!8889)))

(assert (=> d!2407 (= res!11364 ((_ is Nil!423) Nil!423))))

(assert (=> d!2407 (= (forall!99 Nil!423 lambda!179) e!8889)))

(declare-fun b!14794 () Bool)

(declare-fun e!8890 () Bool)

(assert (=> b!14794 (= e!8889 e!8890)))

(declare-fun res!11365 () Bool)

(assert (=> b!14794 (=> (not res!11365) (not e!8890))))

(declare-fun dynLambda!95 (Int tuple2!534) Bool)

(assert (=> b!14794 (= res!11365 (dynLambda!95 lambda!179 (h!988 Nil!423)))))

(declare-fun b!14795 () Bool)

(assert (=> b!14795 (= e!8890 (forall!99 (t!2828 Nil!423) lambda!179))))

(assert (= (and d!2407 (not res!11364)) b!14794))

(assert (= (and b!14794 res!11365) b!14795))

(declare-fun b_lambda!961 () Bool)

(assert (=> (not b_lambda!961) (not b!14794)))

(declare-fun m!9877 () Bool)

(assert (=> b!14794 m!9877))

(declare-fun m!9879 () Bool)

(assert (=> b!14795 m!9879))

(assert (=> b!14743 d!2407))

(declare-fun d!2417 () Bool)

(assert (=> d!2417 (= (isEmpty!106 l!522) ((_ is Nil!423) l!522))))

(assert (=> b!14742 d!2417))

(declare-fun d!2419 () Bool)

(declare-fun res!11382 () Bool)

(declare-fun e!8910 () Bool)

(assert (=> d!2419 (=> res!11382 e!8910)))

(assert (=> d!2419 (= res!11382 (or ((_ is Nil!423) l!522) ((_ is Nil!423) (t!2828 l!522))))))

(assert (=> d!2419 (= (isStrictlySorted!117 l!522) e!8910)))

(declare-fun b!14819 () Bool)

(declare-fun e!8911 () Bool)

(assert (=> b!14819 (= e!8910 e!8911)))

(declare-fun res!11383 () Bool)

(assert (=> b!14819 (=> (not res!11383) (not e!8911))))

(assert (=> b!14819 (= res!11383 (bvslt (_1!267 (h!988 l!522)) (_1!267 (h!988 (t!2828 l!522)))))))

(declare-fun b!14820 () Bool)

(assert (=> b!14820 (= e!8911 (isStrictlySorted!117 (t!2828 l!522)))))

(assert (= (and d!2419 (not res!11382)) b!14819))

(assert (= (and b!14819 res!11383) b!14820))

(declare-fun m!9887 () Bool)

(assert (=> b!14820 m!9887))

(assert (=> start!2190 d!2419))

(declare-fun b!14828 () Bool)

(declare-fun e!8917 () Bool)

(declare-fun tp!2378 () Bool)

(assert (=> b!14828 (= e!8917 (and tp_is_empty!735 tp!2378))))

(assert (=> b!14747 (= tp!2366 e!8917)))

(assert (= (and b!14747 ((_ is Cons!422) (t!2828 l!522))) b!14828))

(declare-fun b_lambda!969 () Bool)

(assert (= b_lambda!961 (or b!14743 b_lambda!969)))

(declare-fun bs!601 () Bool)

(declare-fun d!2425 () Bool)

(assert (= bs!601 (and d!2425 b!14743)))

(assert (=> bs!601 (= (dynLambda!95 lambda!179 (h!988 Nil!423)) (= (_2!267 (h!988 Nil!423)) value!159))))

(assert (=> b!14794 d!2425))

(check-sat (not b!14828) (not b!14820) (not b_lambda!969) (not b!14795) tp_is_empty!735)
(check-sat)
