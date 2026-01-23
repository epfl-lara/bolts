; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759100 () Bool)

(assert start!759100)

(declare-fun b!8057244 () Bool)

(assert (=> b!8057244 true))

(declare-fun bs!1973232 () Bool)

(declare-fun b!8057246 () Bool)

(assert (= bs!1973232 (and b!8057246 b!8057244)))

(declare-datatypes ((V!23170 0))(
  ( (V!23171 (val!33005 Int)) )
))
(declare-datatypes ((K!22916 0))(
  ( (K!22917 (val!33006 Int)) )
))
(declare-datatypes ((tuple2!70970 0))(
  ( (tuple2!70971 (_1!38788 K!22916) (_2!38788 V!23170)) )
))
(declare-datatypes ((List!75733 0))(
  ( (Nil!75607) (Cons!75607 (h!82055 tuple2!70970) (t!391505 List!75733)) )
))
(declare-datatypes ((ListMap!7341 0))(
  ( (ListMap!7342 (toList!11945 List!75733)) )
))
(declare-fun acc!836 () ListMap!7341)

(declare-fun lt!2730951 () ListMap!7341)

(declare-fun lambda!474522 () Int)

(declare-fun lambda!474521 () Int)

(assert (=> bs!1973232 (= (= lt!2730951 acc!836) (= lambda!474522 lambda!474521))))

(assert (=> b!8057246 true))

(declare-fun lambda!474523 () Int)

(assert (=> b!8057244 (= (= lt!2730951 acc!836) (= lambda!474523 lambda!474521))))

(assert (=> bs!1973232 (= lambda!474523 lambda!474522)))

(assert (=> b!8057244 true))

(declare-fun b!8057238 () Bool)

(declare-fun tp_is_empty!55063 () Bool)

(declare-fun tp!2414066 () Bool)

(declare-fun e!4748167 () Bool)

(declare-fun tp_is_empty!55065 () Bool)

(assert (=> b!8057238 (= e!4748167 (and tp_is_empty!55063 tp_is_empty!55065 tp!2414066))))

(declare-fun b!8057240 () Bool)

(declare-fun res!3187208 () Bool)

(declare-fun e!4748168 () Bool)

(assert (=> b!8057240 (=> (not res!3187208) (not e!4748168))))

(declare-fun l!10976 () List!75733)

(declare-fun forall!18527 (List!75733 Int) Bool)

(assert (=> b!8057240 (= res!3187208 (forall!18527 (t!391505 l!10976) lambda!474522))))

(declare-fun b!8057241 () Bool)

(declare-fun e!4748165 () Bool)

(declare-fun lt!2730948 () ListMap!7341)

(assert (=> b!8057241 (= e!4748165 (forall!18527 (toList!11945 lt!2730948) lambda!474523))))

(declare-fun b!8057242 () Bool)

(declare-fun e!4748166 () Bool)

(declare-fun tp!2414067 () Bool)

(assert (=> b!8057242 (= e!4748166 tp!2414067)))

(declare-fun b!8057243 () Bool)

(declare-fun res!3187204 () Bool)

(declare-fun e!4748170 () Bool)

(assert (=> b!8057243 (=> (not res!3187204) (not e!4748170))))

(assert (=> b!8057243 (= res!3187204 (not (is-Nil!75607 l!10976)))))

(assert (=> b!8057244 (= e!4748170 (not e!4748165))))

(declare-fun res!3187212 () Bool)

(assert (=> b!8057244 (=> res!3187212 e!4748165)))

(assert (=> b!8057244 (= res!3187212 (not (forall!18527 (toList!11945 lt!2730948) lambda!474523)))))

(declare-fun e!4748169 () Bool)

(assert (=> b!8057244 e!4748169))

(declare-fun res!3187211 () Bool)

(assert (=> b!8057244 (=> (not res!3187211) (not e!4748169))))

(declare-fun contains!21282 (ListMap!7341 K!22916) Bool)

(assert (=> b!8057244 (= res!3187211 (contains!21282 lt!2730948 (_1!38788 (h!82055 l!10976))))))

(declare-datatypes ((Unit!172573 0))(
  ( (Unit!172574) )
))
(declare-fun lt!2730949 () Unit!172573)

(declare-fun forallContained!4680 (List!75733 Int tuple2!70970) Unit!172573)

(assert (=> b!8057244 (= lt!2730949 (forallContained!4680 (toList!11945 lt!2730948) lambda!474523 (h!82055 l!10976)))))

(assert (=> b!8057244 e!4748168))

(declare-fun res!3187210 () Bool)

(assert (=> b!8057244 (=> (not res!3187210) (not e!4748168))))

(assert (=> b!8057244 (= res!3187210 (forall!18527 (toList!11945 acc!836) lambda!474521))))

(declare-fun lt!2730950 () Unit!172573)

(declare-fun lemmaContainsAllItsOwnKeys!1108 (ListMap!7341) Unit!172573)

(assert (=> b!8057244 (= lt!2730950 (lemmaContainsAllItsOwnKeys!1108 acc!836))))

(declare-fun addToMapMapFromBucket!2012 (List!75733 ListMap!7341) ListMap!7341)

(assert (=> b!8057244 (= lt!2730951 (addToMapMapFromBucket!2012 (t!391505 l!10976) lt!2730948))))

(declare-fun +!2696 (ListMap!7341 tuple2!70970) ListMap!7341)

(assert (=> b!8057244 (= lt!2730948 (+!2696 acc!836 (h!82055 l!10976)))))

(declare-fun b!8057245 () Bool)

(assert (=> b!8057245 (= e!4748169 (forall!18527 (toList!11945 lt!2730948) lambda!474523))))

(declare-fun res!3187206 () Bool)

(assert (=> b!8057246 (=> (not res!3187206) (not e!4748168))))

(assert (=> b!8057246 (= res!3187206 (forall!18527 (toList!11945 lt!2730948) lambda!474522))))

(declare-fun b!8057247 () Bool)

(declare-fun res!3187209 () Bool)

(assert (=> b!8057247 (=> (not res!3187209) (not e!4748169))))

(assert (=> b!8057247 (= res!3187209 (contains!21282 lt!2730951 (_1!38788 (h!82055 l!10976))))))

(declare-fun b!8057248 () Bool)

(assert (=> b!8057248 (= e!4748168 (= l!10976 (Cons!75607 (h!82055 l!10976) (t!391505 l!10976))))))

(declare-fun res!3187205 () Bool)

(assert (=> start!759100 (=> (not res!3187205) (not e!4748170))))

(declare-fun noDuplicateKeys!2731 (List!75733) Bool)

(assert (=> start!759100 (= res!3187205 (noDuplicateKeys!2731 l!10976))))

(assert (=> start!759100 e!4748170))

(assert (=> start!759100 e!4748167))

(declare-fun inv!97390 (ListMap!7341) Bool)

(assert (=> start!759100 (and (inv!97390 acc!836) e!4748166)))

(declare-fun b!8057239 () Bool)

(declare-fun res!3187207 () Bool)

(assert (=> b!8057239 (=> (not res!3187207) (not e!4748169))))

(assert (=> b!8057239 (= res!3187207 (forall!18527 l!10976 lambda!474523))))

(assert (= (and start!759100 res!3187205) b!8057243))

(assert (= (and b!8057243 res!3187204) b!8057244))

(assert (= (and b!8057244 res!3187210) b!8057246))

(assert (= (and b!8057246 res!3187206) b!8057240))

(assert (= (and b!8057240 res!3187208) b!8057248))

(assert (= (and b!8057244 res!3187211) b!8057247))

(assert (= (and b!8057247 res!3187209) b!8057239))

(assert (= (and b!8057239 res!3187207) b!8057245))

(assert (= (and b!8057244 (not res!3187212)) b!8057241))

(assert (= (and start!759100 (is-Cons!75607 l!10976)) b!8057238))

(assert (= start!759100 b!8057242))

(declare-fun m!8410380 () Bool)

(assert (=> b!8057239 m!8410380))

(declare-fun m!8410382 () Bool)

(assert (=> b!8057247 m!8410382))

(declare-fun m!8410384 () Bool)

(assert (=> b!8057240 m!8410384))

(declare-fun m!8410386 () Bool)

(assert (=> b!8057241 m!8410386))

(assert (=> b!8057245 m!8410386))

(declare-fun m!8410388 () Bool)

(assert (=> b!8057246 m!8410388))

(declare-fun m!8410390 () Bool)

(assert (=> b!8057244 m!8410390))

(declare-fun m!8410392 () Bool)

(assert (=> b!8057244 m!8410392))

(declare-fun m!8410394 () Bool)

(assert (=> b!8057244 m!8410394))

(declare-fun m!8410396 () Bool)

(assert (=> b!8057244 m!8410396))

(declare-fun m!8410398 () Bool)

(assert (=> b!8057244 m!8410398))

(declare-fun m!8410400 () Bool)

(assert (=> b!8057244 m!8410400))

(assert (=> b!8057244 m!8410386))

(declare-fun m!8410402 () Bool)

(assert (=> start!759100 m!8410402))

(declare-fun m!8410404 () Bool)

(assert (=> start!759100 m!8410404))

(push 1)

(assert (not b!8057242))

(assert (not b!8057239))

(assert (not b!8057245))

(assert tp_is_empty!55063)

(assert (not b!8057241))

(assert (not b!8057247))

(assert (not start!759100))

(assert (not b!8057238))

(assert (not b!8057244))

(assert tp_is_empty!55065)

(assert (not b!8057246))

(assert (not b!8057240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

