; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759206 () Bool)

(assert start!759206)

(declare-fun b!8057719 () Bool)

(assert (=> b!8057719 true))

(declare-fun bs!1973321 () Bool)

(declare-fun b!8057721 () Bool)

(assert (= bs!1973321 (and b!8057721 b!8057719)))

(declare-fun lambda!474751 () Int)

(declare-datatypes ((V!23200 0))(
  ( (V!23201 (val!33029 Int)) )
))
(declare-datatypes ((K!22946 0))(
  ( (K!22947 (val!33030 Int)) )
))
(declare-datatypes ((tuple2!70994 0))(
  ( (tuple2!70995 (_1!38800 K!22946) (_2!38800 V!23200)) )
))
(declare-datatypes ((List!75745 0))(
  ( (Nil!75619) (Cons!75619 (h!82067 tuple2!70994) (t!391517 List!75745)) )
))
(declare-datatypes ((ListMap!7365 0))(
  ( (ListMap!7366 (toList!11957 List!75745)) )
))
(declare-fun lt!2731373 () ListMap!7365)

(declare-fun acc!836 () ListMap!7365)

(declare-fun lambda!474750 () Int)

(assert (=> bs!1973321 (= (= lt!2731373 acc!836) (= lambda!474751 lambda!474750))))

(assert (=> b!8057721 true))

(declare-fun res!3187503 () Bool)

(declare-fun e!4748497 () Bool)

(assert (=> start!759206 (=> (not res!3187503) (not e!4748497))))

(declare-fun l!10976 () List!75745)

(declare-fun noDuplicateKeys!2743 (List!75745) Bool)

(assert (=> start!759206 (= res!3187503 (noDuplicateKeys!2743 l!10976))))

(assert (=> start!759206 e!4748497))

(declare-fun e!4748500 () Bool)

(assert (=> start!759206 e!4748500))

(declare-fun e!4748498 () Bool)

(declare-fun inv!97420 (ListMap!7365) Bool)

(assert (=> start!759206 (and (inv!97420 acc!836) e!4748498)))

(declare-fun b!8057716 () Bool)

(declare-fun tp!2414171 () Bool)

(assert (=> b!8057716 (= e!4748498 tp!2414171)))

(declare-fun b!8057717 () Bool)

(declare-fun e!4748499 () Bool)

(declare-fun forall!18537 (List!75745 Int) Bool)

(assert (=> b!8057717 (= e!4748499 (forall!18537 (t!391517 l!10976) lambda!474751))))

(declare-fun b!8057718 () Bool)

(declare-fun res!3187505 () Bool)

(assert (=> b!8057718 (=> (not res!3187505) (not e!4748497))))

(assert (=> b!8057718 (= res!3187505 (not (is-Nil!75619 l!10976)))))

(assert (=> b!8057719 (= e!4748497 (not (= l!10976 (Cons!75619 (h!82067 l!10976) (t!391517 l!10976)))))))

(assert (=> b!8057719 e!4748499))

(declare-fun res!3187504 () Bool)

(assert (=> b!8057719 (=> (not res!3187504) (not e!4748499))))

(assert (=> b!8057719 (= res!3187504 (forall!18537 (toList!11957 acc!836) lambda!474750))))

(declare-datatypes ((Unit!172617 0))(
  ( (Unit!172618) )
))
(declare-fun lt!2731372 () Unit!172617)

(declare-fun lemmaContainsAllItsOwnKeys!1118 (ListMap!7365) Unit!172617)

(assert (=> b!8057719 (= lt!2731372 (lemmaContainsAllItsOwnKeys!1118 acc!836))))

(declare-fun lt!2731371 () ListMap!7365)

(declare-fun addToMapMapFromBucket!2018 (List!75745 ListMap!7365) ListMap!7365)

(assert (=> b!8057719 (= lt!2731373 (addToMapMapFromBucket!2018 (t!391517 l!10976) lt!2731371))))

(declare-fun +!2704 (ListMap!7365 tuple2!70994) ListMap!7365)

(assert (=> b!8057719 (= lt!2731371 (+!2704 acc!836 (h!82067 l!10976)))))

(declare-fun tp_is_empty!55111 () Bool)

(declare-fun tp_is_empty!55113 () Bool)

(declare-fun b!8057720 () Bool)

(declare-fun tp!2414170 () Bool)

(assert (=> b!8057720 (= e!4748500 (and tp_is_empty!55111 tp_is_empty!55113 tp!2414170))))

(declare-fun res!3187502 () Bool)

(assert (=> b!8057721 (=> (not res!3187502) (not e!4748499))))

(assert (=> b!8057721 (= res!3187502 (forall!18537 (toList!11957 lt!2731371) lambda!474751))))

(assert (= (and start!759206 res!3187503) b!8057718))

(assert (= (and b!8057718 res!3187505) b!8057719))

(assert (= (and b!8057719 res!3187504) b!8057721))

(assert (= (and b!8057721 res!3187502) b!8057717))

(assert (= (and start!759206 (is-Cons!75619 l!10976)) b!8057720))

(assert (= start!759206 b!8057716))

(declare-fun m!8410856 () Bool)

(assert (=> start!759206 m!8410856))

(declare-fun m!8410858 () Bool)

(assert (=> start!759206 m!8410858))

(declare-fun m!8410860 () Bool)

(assert (=> b!8057717 m!8410860))

(declare-fun m!8410862 () Bool)

(assert (=> b!8057719 m!8410862))

(declare-fun m!8410864 () Bool)

(assert (=> b!8057719 m!8410864))

(declare-fun m!8410866 () Bool)

(assert (=> b!8057719 m!8410866))

(declare-fun m!8410868 () Bool)

(assert (=> b!8057719 m!8410868))

(declare-fun m!8410870 () Bool)

(assert (=> b!8057721 m!8410870))

(push 1)

(assert (not b!8057717))

(assert tp_is_empty!55111)

(assert (not b!8057721))

(assert (not b!8057716))

(assert (not start!759206))

(assert (not b!8057719))

(assert tp_is_empty!55113)

(assert (not b!8057720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

