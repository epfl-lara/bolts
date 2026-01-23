; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485100 () Bool)

(assert start!485100)

(declare-fun b!4748565 () Bool)

(declare-fun e!2961960 () Bool)

(declare-fun e!2961958 () Bool)

(assert (=> b!4748565 (= e!2961960 e!2961958)))

(declare-fun res!2013133 () Bool)

(assert (=> b!4748565 (=> (not res!2013133) (not e!2961958))))

(declare-datatypes ((K!14430 0))(
  ( (K!14431 (val!19815 Int)) )
))
(declare-datatypes ((V!14676 0))(
  ( (V!14677 (val!19816 Int)) )
))
(declare-datatypes ((tuple2!54784 0))(
  ( (tuple2!54785 (_1!30686 K!14430) (_2!30686 V!14676)) )
))
(declare-datatypes ((List!53170 0))(
  ( (Nil!53046) (Cons!53046 (h!59443 tuple2!54784) (t!360490 List!53170)) )
))
(declare-fun lt!1911301 () List!53170)

(declare-fun noDuplicateKeys!2112 (List!53170) Bool)

(assert (=> b!4748565 (= res!2013133 (noDuplicateKeys!2112 lt!1911301))))

(declare-fun t!14174 () tuple2!54784)

(declare-fun l!14304 () List!53170)

(assert (=> b!4748565 (= lt!1911301 (Cons!53046 t!14174 l!14304))))

(declare-datatypes ((ListMap!5473 0))(
  ( (ListMap!5474 (toList!6082 List!53170)) )
))
(declare-fun lt!1911297 () ListMap!5473)

(declare-fun b!4748566 () Bool)

(declare-fun e!2961961 () Bool)

(declare-fun lt!1911295 () ListMap!5473)

(declare-fun eq!1189 (ListMap!5473 ListMap!5473) Bool)

(declare-fun addToMapMapFromBucket!1538 (List!53170 ListMap!5473) ListMap!5473)

(declare-fun +!2348 (ListMap!5473 tuple2!54784) ListMap!5473)

(assert (=> b!4748566 (= e!2961961 (eq!1189 lt!1911297 (addToMapMapFromBucket!1538 (t!360490 l!14304) (+!2348 lt!1911295 t!14174))))))

(declare-fun b!4748567 () Bool)

(declare-fun res!2013135 () Bool)

(assert (=> b!4748567 (=> (not res!2013135) (not e!2961961))))

(declare-fun lt!1911296 () ListMap!5473)

(declare-fun acc!1214 () ListMap!5473)

(assert (=> b!4748567 (= res!2013135 (eq!1189 lt!1911296 (addToMapMapFromBucket!1538 l!14304 acc!1214)))))

(declare-fun tp_is_empty!31743 () Bool)

(declare-fun e!2961959 () Bool)

(declare-fun tp!1349880 () Bool)

(declare-fun tp_is_empty!31741 () Bool)

(declare-fun b!4748568 () Bool)

(assert (=> b!4748568 (= e!2961959 (and tp_is_empty!31741 tp_is_empty!31743 tp!1349880))))

(declare-fun b!4748569 () Bool)

(declare-fun e!2961962 () Bool)

(declare-fun tp!1349881 () Bool)

(assert (=> b!4748569 (= e!2961962 tp!1349881)))

(declare-fun b!4748570 () Bool)

(assert (=> b!4748570 (= e!2961958 (not (noDuplicateKeys!2112 (t!360490 l!14304))))))

(declare-fun lt!1911298 () ListMap!5473)

(declare-fun lt!1911294 () ListMap!5473)

(assert (=> b!4748570 (= lt!1911298 (+!2348 lt!1911294 (h!59443 l!14304)))))

(declare-fun lt!1911299 () ListMap!5473)

(assert (=> b!4748570 (eq!1189 lt!1911299 (addToMapMapFromBucket!1538 l!14304 lt!1911294))))

(assert (=> b!4748570 (= lt!1911294 (+!2348 acc!1214 t!14174))))

(assert (=> b!4748570 (= lt!1911299 (addToMapMapFromBucket!1538 lt!1911301 acc!1214))))

(assert (=> b!4748570 e!2961961))

(declare-fun res!2013132 () Bool)

(assert (=> b!4748570 (=> (not res!2013132) (not e!2961961))))

(assert (=> b!4748570 (= res!2013132 (eq!1189 lt!1911297 (+!2348 lt!1911296 t!14174)))))

(assert (=> b!4748570 (= lt!1911297 (addToMapMapFromBucket!1538 (Cons!53046 t!14174 (t!360490 l!14304)) lt!1911295))))

(declare-datatypes ((Unit!134897 0))(
  ( (Unit!134898) )
))
(declare-fun lt!1911300 () Unit!134897)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!436 (tuple2!54784 List!53170 ListMap!5473) Unit!134897)

(assert (=> b!4748570 (= lt!1911300 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!436 t!14174 (t!360490 l!14304) lt!1911295))))

(assert (=> b!4748570 (= lt!1911296 (addToMapMapFromBucket!1538 (t!360490 l!14304) lt!1911295))))

(assert (=> b!4748570 (= lt!1911295 (+!2348 acc!1214 (h!59443 l!14304)))))

(declare-fun b!4748571 () Bool)

(declare-fun res!2013134 () Bool)

(assert (=> b!4748571 (=> (not res!2013134) (not e!2961958))))

(get-info :version)

(assert (=> b!4748571 (= res!2013134 (not ((_ is Nil!53046) l!14304)))))

(declare-fun res!2013131 () Bool)

(assert (=> start!485100 (=> (not res!2013131) (not e!2961960))))

(assert (=> start!485100 (= res!2013131 (noDuplicateKeys!2112 l!14304))))

(assert (=> start!485100 e!2961960))

(assert (=> start!485100 e!2961959))

(assert (=> start!485100 (and tp_is_empty!31741 tp_is_empty!31743)))

(declare-fun inv!68302 (ListMap!5473) Bool)

(assert (=> start!485100 (and (inv!68302 acc!1214) e!2961962)))

(assert (= (and start!485100 res!2013131) b!4748565))

(assert (= (and b!4748565 res!2013133) b!4748571))

(assert (= (and b!4748571 res!2013134) b!4748570))

(assert (= (and b!4748570 res!2013132) b!4748567))

(assert (= (and b!4748567 res!2013135) b!4748566))

(assert (= (and start!485100 ((_ is Cons!53046) l!14304)) b!4748568))

(assert (= start!485100 b!4748569))

(declare-fun m!5707237 () Bool)

(assert (=> start!485100 m!5707237))

(declare-fun m!5707239 () Bool)

(assert (=> start!485100 m!5707239))

(declare-fun m!5707241 () Bool)

(assert (=> b!4748565 m!5707241))

(declare-fun m!5707243 () Bool)

(assert (=> b!4748566 m!5707243))

(assert (=> b!4748566 m!5707243))

(declare-fun m!5707245 () Bool)

(assert (=> b!4748566 m!5707245))

(assert (=> b!4748566 m!5707245))

(declare-fun m!5707247 () Bool)

(assert (=> b!4748566 m!5707247))

(declare-fun m!5707249 () Bool)

(assert (=> b!4748567 m!5707249))

(assert (=> b!4748567 m!5707249))

(declare-fun m!5707251 () Bool)

(assert (=> b!4748567 m!5707251))

(declare-fun m!5707253 () Bool)

(assert (=> b!4748570 m!5707253))

(declare-fun m!5707255 () Bool)

(assert (=> b!4748570 m!5707255))

(declare-fun m!5707257 () Bool)

(assert (=> b!4748570 m!5707257))

(declare-fun m!5707259 () Bool)

(assert (=> b!4748570 m!5707259))

(declare-fun m!5707261 () Bool)

(assert (=> b!4748570 m!5707261))

(declare-fun m!5707263 () Bool)

(assert (=> b!4748570 m!5707263))

(declare-fun m!5707265 () Bool)

(assert (=> b!4748570 m!5707265))

(declare-fun m!5707267 () Bool)

(assert (=> b!4748570 m!5707267))

(declare-fun m!5707269 () Bool)

(assert (=> b!4748570 m!5707269))

(assert (=> b!4748570 m!5707265))

(declare-fun m!5707271 () Bool)

(assert (=> b!4748570 m!5707271))

(assert (=> b!4748570 m!5707261))

(declare-fun m!5707273 () Bool)

(assert (=> b!4748570 m!5707273))

(declare-fun m!5707275 () Bool)

(assert (=> b!4748570 m!5707275))

(check-sat (not b!4748570) (not b!4748568) (not start!485100) (not b!4748567) tp_is_empty!31743 tp_is_empty!31741 (not b!4748565) (not b!4748569) (not b!4748566))
(check-sat)
(get-model)

(declare-fun d!1517572 () Bool)

(declare-fun res!2013140 () Bool)

(declare-fun e!2961967 () Bool)

(assert (=> d!1517572 (=> res!2013140 e!2961967)))

(assert (=> d!1517572 (= res!2013140 (not ((_ is Cons!53046) lt!1911301)))))

(assert (=> d!1517572 (= (noDuplicateKeys!2112 lt!1911301) e!2961967)))

(declare-fun b!4748576 () Bool)

(declare-fun e!2961968 () Bool)

(assert (=> b!4748576 (= e!2961967 e!2961968)))

(declare-fun res!2013141 () Bool)

(assert (=> b!4748576 (=> (not res!2013141) (not e!2961968))))

(declare-fun containsKey!3533 (List!53170 K!14430) Bool)

(assert (=> b!4748576 (= res!2013141 (not (containsKey!3533 (t!360490 lt!1911301) (_1!30686 (h!59443 lt!1911301)))))))

(declare-fun b!4748577 () Bool)

(assert (=> b!4748577 (= e!2961968 (noDuplicateKeys!2112 (t!360490 lt!1911301)))))

(assert (= (and d!1517572 (not res!2013140)) b!4748576))

(assert (= (and b!4748576 res!2013141) b!4748577))

(declare-fun m!5707277 () Bool)

(assert (=> b!4748576 m!5707277))

(declare-fun m!5707279 () Bool)

(assert (=> b!4748577 m!5707279))

(assert (=> b!4748565 d!1517572))

(declare-fun d!1517574 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9509 (List!53170) (InoxSet tuple2!54784))

(assert (=> d!1517574 (= (eq!1189 lt!1911297 (+!2348 lt!1911296 t!14174)) (= (content!9509 (toList!6082 lt!1911297)) (content!9509 (toList!6082 (+!2348 lt!1911296 t!14174)))))))

(declare-fun bs!1139067 () Bool)

(assert (= bs!1139067 d!1517574))

(declare-fun m!5707281 () Bool)

(assert (=> bs!1139067 m!5707281))

(declare-fun m!5707283 () Bool)

(assert (=> bs!1139067 m!5707283))

(assert (=> b!4748570 d!1517574))

(declare-fun d!1517576 () Bool)

(declare-fun e!2961971 () Bool)

(assert (=> d!1517576 e!2961971))

(declare-fun res!2013146 () Bool)

(assert (=> d!1517576 (=> (not res!2013146) (not e!2961971))))

(declare-fun lt!1911310 () ListMap!5473)

(declare-fun contains!16468 (ListMap!5473 K!14430) Bool)

(assert (=> d!1517576 (= res!2013146 (contains!16468 lt!1911310 (_1!30686 (h!59443 l!14304))))))

(declare-fun lt!1911312 () List!53170)

(assert (=> d!1517576 (= lt!1911310 (ListMap!5474 lt!1911312))))

(declare-fun lt!1911313 () Unit!134897)

(declare-fun lt!1911311 () Unit!134897)

(assert (=> d!1517576 (= lt!1911313 lt!1911311)))

(declare-datatypes ((Option!12512 0))(
  ( (None!12511) (Some!12511 (v!47206 V!14676)) )
))
(declare-fun getValueByKey!2062 (List!53170 K!14430) Option!12512)

(assert (=> d!1517576 (= (getValueByKey!2062 lt!1911312 (_1!30686 (h!59443 l!14304))) (Some!12511 (_2!30686 (h!59443 l!14304))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1139 (List!53170 K!14430 V!14676) Unit!134897)

(assert (=> d!1517576 (= lt!1911311 (lemmaContainsTupThenGetReturnValue!1139 lt!1911312 (_1!30686 (h!59443 l!14304)) (_2!30686 (h!59443 l!14304))))))

(declare-fun insertNoDuplicatedKeys!647 (List!53170 K!14430 V!14676) List!53170)

(assert (=> d!1517576 (= lt!1911312 (insertNoDuplicatedKeys!647 (toList!6082 lt!1911294) (_1!30686 (h!59443 l!14304)) (_2!30686 (h!59443 l!14304))))))

(assert (=> d!1517576 (= (+!2348 lt!1911294 (h!59443 l!14304)) lt!1911310)))

(declare-fun b!4748582 () Bool)

(declare-fun res!2013147 () Bool)

(assert (=> b!4748582 (=> (not res!2013147) (not e!2961971))))

(assert (=> b!4748582 (= res!2013147 (= (getValueByKey!2062 (toList!6082 lt!1911310) (_1!30686 (h!59443 l!14304))) (Some!12511 (_2!30686 (h!59443 l!14304)))))))

(declare-fun b!4748583 () Bool)

(declare-fun contains!16469 (List!53170 tuple2!54784) Bool)

(assert (=> b!4748583 (= e!2961971 (contains!16469 (toList!6082 lt!1911310) (h!59443 l!14304)))))

(assert (= (and d!1517576 res!2013146) b!4748582))

(assert (= (and b!4748582 res!2013147) b!4748583))

(declare-fun m!5707285 () Bool)

(assert (=> d!1517576 m!5707285))

(declare-fun m!5707287 () Bool)

(assert (=> d!1517576 m!5707287))

(declare-fun m!5707289 () Bool)

(assert (=> d!1517576 m!5707289))

(declare-fun m!5707291 () Bool)

(assert (=> d!1517576 m!5707291))

(declare-fun m!5707293 () Bool)

(assert (=> b!4748582 m!5707293))

(declare-fun m!5707295 () Bool)

(assert (=> b!4748583 m!5707295))

(assert (=> b!4748570 d!1517576))

(declare-fun b!4748657 () Bool)

(assert (=> b!4748657 true))

(declare-fun bs!1139179 () Bool)

(declare-fun b!4748656 () Bool)

(assert (= bs!1139179 (and b!4748656 b!4748657)))

(declare-fun lambda!221152 () Int)

(declare-fun lambda!221151 () Int)

(assert (=> bs!1139179 (= lambda!221152 lambda!221151)))

(assert (=> b!4748656 true))

(declare-fun lt!1911534 () ListMap!5473)

(declare-fun lambda!221154 () Int)

(assert (=> bs!1139179 (= (= lt!1911534 lt!1911295) (= lambda!221154 lambda!221151))))

(assert (=> b!4748656 (= (= lt!1911534 lt!1911295) (= lambda!221154 lambda!221152))))

(assert (=> b!4748656 true))

(declare-fun bs!1139195 () Bool)

(declare-fun d!1517578 () Bool)

(assert (= bs!1139195 (and d!1517578 b!4748657)))

(declare-fun lambda!221155 () Int)

(declare-fun lt!1911540 () ListMap!5473)

(assert (=> bs!1139195 (= (= lt!1911540 lt!1911295) (= lambda!221155 lambda!221151))))

(declare-fun bs!1139196 () Bool)

(assert (= bs!1139196 (and d!1517578 b!4748656)))

(assert (=> bs!1139196 (= (= lt!1911540 lt!1911295) (= lambda!221155 lambda!221152))))

(assert (=> bs!1139196 (= (= lt!1911540 lt!1911534) (= lambda!221155 lambda!221154))))

(assert (=> d!1517578 true))

(declare-fun b!4748653 () Bool)

(declare-fun e!2962017 () Bool)

(declare-fun forall!11743 (List!53170 Int) Bool)

(assert (=> b!4748653 (= e!2962017 (forall!11743 (toList!6082 lt!1911295) lambda!221154))))

(declare-fun b!4748654 () Bool)

(declare-fun res!2013197 () Bool)

(declare-fun e!2962016 () Bool)

(assert (=> b!4748654 (=> (not res!2013197) (not e!2962016))))

(assert (=> b!4748654 (= res!2013197 (forall!11743 (toList!6082 lt!1911295) lambda!221155))))

(declare-fun bm!332412 () Bool)

(declare-fun call!332419 () Unit!134897)

(declare-fun lemmaContainsAllItsOwnKeys!858 (ListMap!5473) Unit!134897)

(assert (=> bm!332412 (= call!332419 (lemmaContainsAllItsOwnKeys!858 lt!1911295))))

(declare-fun b!4748655 () Bool)

(declare-fun invariantList!1575 (List!53170) Bool)

(assert (=> b!4748655 (= e!2962016 (invariantList!1575 (toList!6082 lt!1911540)))))

(assert (=> d!1517578 e!2962016))

(declare-fun res!2013198 () Bool)

(assert (=> d!1517578 (=> (not res!2013198) (not e!2962016))))

(assert (=> d!1517578 (= res!2013198 (forall!11743 (Cons!53046 t!14174 (t!360490 l!14304)) lambda!221155))))

(declare-fun e!2962015 () ListMap!5473)

(assert (=> d!1517578 (= lt!1911540 e!2962015)))

(declare-fun c!810895 () Bool)

(assert (=> d!1517578 (= c!810895 ((_ is Nil!53046) (Cons!53046 t!14174 (t!360490 l!14304))))))

(assert (=> d!1517578 (noDuplicateKeys!2112 (Cons!53046 t!14174 (t!360490 l!14304)))))

(assert (=> d!1517578 (= (addToMapMapFromBucket!1538 (Cons!53046 t!14174 (t!360490 l!14304)) lt!1911295) lt!1911540)))

(declare-fun bm!332413 () Bool)

(declare-fun call!332417 () Bool)

(declare-fun lt!1911537 () ListMap!5473)

(assert (=> bm!332413 (= call!332417 (forall!11743 (ite c!810895 (toList!6082 lt!1911295) (toList!6082 lt!1911537)) (ite c!810895 lambda!221151 lambda!221154)))))

(assert (=> b!4748656 (= e!2962015 lt!1911534)))

(assert (=> b!4748656 (= lt!1911537 (+!2348 lt!1911295 (h!59443 (Cons!53046 t!14174 (t!360490 l!14304)))))))

(assert (=> b!4748656 (= lt!1911534 (addToMapMapFromBucket!1538 (t!360490 (Cons!53046 t!14174 (t!360490 l!14304))) (+!2348 lt!1911295 (h!59443 (Cons!53046 t!14174 (t!360490 l!14304))))))))

(declare-fun lt!1911550 () Unit!134897)

(assert (=> b!4748656 (= lt!1911550 call!332419)))

(assert (=> b!4748656 (forall!11743 (toList!6082 lt!1911295) lambda!221152)))

(declare-fun lt!1911538 () Unit!134897)

(assert (=> b!4748656 (= lt!1911538 lt!1911550)))

(assert (=> b!4748656 call!332417))

(declare-fun lt!1911548 () Unit!134897)

(declare-fun Unit!134921 () Unit!134897)

(assert (=> b!4748656 (= lt!1911548 Unit!134921)))

(assert (=> b!4748656 (forall!11743 (t!360490 (Cons!53046 t!14174 (t!360490 l!14304))) lambda!221154)))

(declare-fun lt!1911532 () Unit!134897)

(declare-fun Unit!134922 () Unit!134897)

(assert (=> b!4748656 (= lt!1911532 Unit!134922)))

(declare-fun lt!1911545 () Unit!134897)

(declare-fun Unit!134923 () Unit!134897)

(assert (=> b!4748656 (= lt!1911545 Unit!134923)))

(declare-fun lt!1911546 () Unit!134897)

(declare-fun forallContained!3769 (List!53170 Int tuple2!54784) Unit!134897)

(assert (=> b!4748656 (= lt!1911546 (forallContained!3769 (toList!6082 lt!1911537) lambda!221154 (h!59443 (Cons!53046 t!14174 (t!360490 l!14304)))))))

(assert (=> b!4748656 (contains!16468 lt!1911537 (_1!30686 (h!59443 (Cons!53046 t!14174 (t!360490 l!14304)))))))

(declare-fun lt!1911544 () Unit!134897)

(declare-fun Unit!134924 () Unit!134897)

(assert (=> b!4748656 (= lt!1911544 Unit!134924)))

(assert (=> b!4748656 (contains!16468 lt!1911534 (_1!30686 (h!59443 (Cons!53046 t!14174 (t!360490 l!14304)))))))

(declare-fun lt!1911539 () Unit!134897)

(declare-fun Unit!134925 () Unit!134897)

(assert (=> b!4748656 (= lt!1911539 Unit!134925)))

(declare-fun call!332418 () Bool)

(assert (=> b!4748656 call!332418))

(declare-fun lt!1911530 () Unit!134897)

(declare-fun Unit!134926 () Unit!134897)

(assert (=> b!4748656 (= lt!1911530 Unit!134926)))

(assert (=> b!4748656 (forall!11743 (toList!6082 lt!1911537) lambda!221154)))

(declare-fun lt!1911531 () Unit!134897)

(declare-fun Unit!134927 () Unit!134897)

(assert (=> b!4748656 (= lt!1911531 Unit!134927)))

(declare-fun lt!1911543 () Unit!134897)

(declare-fun Unit!134928 () Unit!134897)

(assert (=> b!4748656 (= lt!1911543 Unit!134928)))

(declare-fun lt!1911549 () Unit!134897)

(declare-fun addForallContainsKeyThenBeforeAdding!857 (ListMap!5473 ListMap!5473 K!14430 V!14676) Unit!134897)

(assert (=> b!4748656 (= lt!1911549 (addForallContainsKeyThenBeforeAdding!857 lt!1911295 lt!1911534 (_1!30686 (h!59443 (Cons!53046 t!14174 (t!360490 l!14304)))) (_2!30686 (h!59443 (Cons!53046 t!14174 (t!360490 l!14304))))))))

(assert (=> b!4748656 (forall!11743 (toList!6082 lt!1911295) lambda!221154)))

(declare-fun lt!1911536 () Unit!134897)

(assert (=> b!4748656 (= lt!1911536 lt!1911549)))

(assert (=> b!4748656 (forall!11743 (toList!6082 lt!1911295) lambda!221154)))

(declare-fun lt!1911535 () Unit!134897)

(declare-fun Unit!134929 () Unit!134897)

(assert (=> b!4748656 (= lt!1911535 Unit!134929)))

(declare-fun res!2013199 () Bool)

(assert (=> b!4748656 (= res!2013199 (forall!11743 (Cons!53046 t!14174 (t!360490 l!14304)) lambda!221154))))

(assert (=> b!4748656 (=> (not res!2013199) (not e!2962017))))

(assert (=> b!4748656 e!2962017))

(declare-fun lt!1911541 () Unit!134897)

(declare-fun Unit!134930 () Unit!134897)

(assert (=> b!4748656 (= lt!1911541 Unit!134930)))

(assert (=> b!4748657 (= e!2962015 lt!1911295)))

(declare-fun lt!1911533 () Unit!134897)

(assert (=> b!4748657 (= lt!1911533 call!332419)))

(assert (=> b!4748657 call!332418))

(declare-fun lt!1911547 () Unit!134897)

(assert (=> b!4748657 (= lt!1911547 lt!1911533)))

(assert (=> b!4748657 call!332417))

(declare-fun lt!1911542 () Unit!134897)

(declare-fun Unit!134931 () Unit!134897)

(assert (=> b!4748657 (= lt!1911542 Unit!134931)))

(declare-fun bm!332414 () Bool)

(assert (=> bm!332414 (= call!332418 (forall!11743 (ite c!810895 (toList!6082 lt!1911295) (Cons!53046 t!14174 (t!360490 l!14304))) (ite c!810895 lambda!221151 lambda!221154)))))

(assert (= (and d!1517578 c!810895) b!4748657))

(assert (= (and d!1517578 (not c!810895)) b!4748656))

(assert (= (and b!4748656 res!2013199) b!4748653))

(assert (= (or b!4748657 b!4748656) bm!332412))

(assert (= (or b!4748657 b!4748656) bm!332414))

(assert (= (or b!4748657 b!4748656) bm!332413))

(assert (= (and d!1517578 res!2013198) b!4748654))

(assert (= (and b!4748654 res!2013197) b!4748655))

(declare-fun m!5707557 () Bool)

(assert (=> bm!332414 m!5707557))

(declare-fun m!5707559 () Bool)

(assert (=> b!4748653 m!5707559))

(declare-fun m!5707561 () Bool)

(assert (=> d!1517578 m!5707561))

(declare-fun m!5707563 () Bool)

(assert (=> d!1517578 m!5707563))

(declare-fun m!5707565 () Bool)

(assert (=> bm!332412 m!5707565))

(declare-fun m!5707567 () Bool)

(assert (=> b!4748655 m!5707567))

(declare-fun m!5707569 () Bool)

(assert (=> bm!332413 m!5707569))

(declare-fun m!5707571 () Bool)

(assert (=> b!4748654 m!5707571))

(declare-fun m!5707573 () Bool)

(assert (=> b!4748656 m!5707573))

(declare-fun m!5707575 () Bool)

(assert (=> b!4748656 m!5707575))

(assert (=> b!4748656 m!5707573))

(declare-fun m!5707577 () Bool)

(assert (=> b!4748656 m!5707577))

(declare-fun m!5707579 () Bool)

(assert (=> b!4748656 m!5707579))

(assert (=> b!4748656 m!5707559))

(declare-fun m!5707581 () Bool)

(assert (=> b!4748656 m!5707581))

(declare-fun m!5707583 () Bool)

(assert (=> b!4748656 m!5707583))

(assert (=> b!4748656 m!5707559))

(declare-fun m!5707585 () Bool)

(assert (=> b!4748656 m!5707585))

(declare-fun m!5707587 () Bool)

(assert (=> b!4748656 m!5707587))

(declare-fun m!5707589 () Bool)

(assert (=> b!4748656 m!5707589))

(declare-fun m!5707591 () Bool)

(assert (=> b!4748656 m!5707591))

(assert (=> b!4748570 d!1517578))

(declare-fun bs!1139213 () Bool)

(declare-fun b!4748671 () Bool)

(assert (= bs!1139213 (and b!4748671 b!4748657)))

(declare-fun lambda!221158 () Int)

(assert (=> bs!1139213 (= lambda!221158 lambda!221151)))

(declare-fun bs!1139214 () Bool)

(assert (= bs!1139214 (and b!4748671 b!4748656)))

(assert (=> bs!1139214 (= lambda!221158 lambda!221152)))

(assert (=> bs!1139214 (= (= lt!1911295 lt!1911534) (= lambda!221158 lambda!221154))))

(declare-fun bs!1139215 () Bool)

(assert (= bs!1139215 (and b!4748671 d!1517578)))

(assert (=> bs!1139215 (= (= lt!1911295 lt!1911540) (= lambda!221158 lambda!221155))))

(assert (=> b!4748671 true))

(declare-fun bs!1139216 () Bool)

(declare-fun b!4748670 () Bool)

(assert (= bs!1139216 (and b!4748670 b!4748657)))

(declare-fun lambda!221159 () Int)

(assert (=> bs!1139216 (= lambda!221159 lambda!221151)))

(declare-fun bs!1139217 () Bool)

(assert (= bs!1139217 (and b!4748670 b!4748671)))

(assert (=> bs!1139217 (= lambda!221159 lambda!221158)))

(declare-fun bs!1139218 () Bool)

(assert (= bs!1139218 (and b!4748670 b!4748656)))

(assert (=> bs!1139218 (= (= lt!1911295 lt!1911534) (= lambda!221159 lambda!221154))))

(assert (=> bs!1139218 (= lambda!221159 lambda!221152)))

(declare-fun bs!1139219 () Bool)

(assert (= bs!1139219 (and b!4748670 d!1517578)))

(assert (=> bs!1139219 (= (= lt!1911295 lt!1911540) (= lambda!221159 lambda!221155))))

(assert (=> b!4748670 true))

(declare-fun lt!1911580 () ListMap!5473)

(declare-fun lambda!221160 () Int)

(assert (=> bs!1139216 (= (= lt!1911580 lt!1911295) (= lambda!221160 lambda!221151))))

(assert (=> bs!1139217 (= (= lt!1911580 lt!1911295) (= lambda!221160 lambda!221158))))

(assert (=> b!4748670 (= (= lt!1911580 lt!1911295) (= lambda!221160 lambda!221159))))

(assert (=> bs!1139218 (= (= lt!1911580 lt!1911534) (= lambda!221160 lambda!221154))))

(assert (=> bs!1139218 (= (= lt!1911580 lt!1911295) (= lambda!221160 lambda!221152))))

(assert (=> bs!1139219 (= (= lt!1911580 lt!1911540) (= lambda!221160 lambda!221155))))

(assert (=> b!4748670 true))

(declare-fun bs!1139236 () Bool)

(declare-fun d!1517618 () Bool)

(assert (= bs!1139236 (and d!1517618 b!4748657)))

(declare-fun lt!1911586 () ListMap!5473)

(declare-fun lambda!221162 () Int)

(assert (=> bs!1139236 (= (= lt!1911586 lt!1911295) (= lambda!221162 lambda!221151))))

(declare-fun bs!1139237 () Bool)

(assert (= bs!1139237 (and d!1517618 b!4748671)))

(assert (=> bs!1139237 (= (= lt!1911586 lt!1911295) (= lambda!221162 lambda!221158))))

(declare-fun bs!1139238 () Bool)

(assert (= bs!1139238 (and d!1517618 b!4748670)))

(assert (=> bs!1139238 (= (= lt!1911586 lt!1911295) (= lambda!221162 lambda!221159))))

(declare-fun bs!1139239 () Bool)

(assert (= bs!1139239 (and d!1517618 b!4748656)))

(assert (=> bs!1139239 (= (= lt!1911586 lt!1911534) (= lambda!221162 lambda!221154))))

(declare-fun bs!1139241 () Bool)

(assert (= bs!1139241 (and d!1517618 d!1517578)))

(assert (=> bs!1139241 (= (= lt!1911586 lt!1911540) (= lambda!221162 lambda!221155))))

(assert (=> bs!1139238 (= (= lt!1911586 lt!1911580) (= lambda!221162 lambda!221160))))

(assert (=> bs!1139239 (= (= lt!1911586 lt!1911295) (= lambda!221162 lambda!221152))))

(assert (=> d!1517618 true))

(declare-fun b!4748667 () Bool)

(declare-fun e!2962024 () Bool)

(assert (=> b!4748667 (= e!2962024 (forall!11743 (toList!6082 lt!1911295) lambda!221160))))

(declare-fun b!4748668 () Bool)

(declare-fun res!2013205 () Bool)

(declare-fun e!2962023 () Bool)

(assert (=> b!4748668 (=> (not res!2013205) (not e!2962023))))

(assert (=> b!4748668 (= res!2013205 (forall!11743 (toList!6082 lt!1911295) lambda!221162))))

(declare-fun bm!332418 () Bool)

(declare-fun call!332425 () Unit!134897)

(assert (=> bm!332418 (= call!332425 (lemmaContainsAllItsOwnKeys!858 lt!1911295))))

(declare-fun b!4748669 () Bool)

(assert (=> b!4748669 (= e!2962023 (invariantList!1575 (toList!6082 lt!1911586)))))

(assert (=> d!1517618 e!2962023))

(declare-fun res!2013206 () Bool)

(assert (=> d!1517618 (=> (not res!2013206) (not e!2962023))))

(assert (=> d!1517618 (= res!2013206 (forall!11743 (t!360490 l!14304) lambda!221162))))

(declare-fun e!2962022 () ListMap!5473)

(assert (=> d!1517618 (= lt!1911586 e!2962022)))

(declare-fun c!810897 () Bool)

(assert (=> d!1517618 (= c!810897 ((_ is Nil!53046) (t!360490 l!14304)))))

(assert (=> d!1517618 (noDuplicateKeys!2112 (t!360490 l!14304))))

(assert (=> d!1517618 (= (addToMapMapFromBucket!1538 (t!360490 l!14304) lt!1911295) lt!1911586)))

(declare-fun call!332423 () Bool)

(declare-fun lt!1911583 () ListMap!5473)

(declare-fun bm!332419 () Bool)

(assert (=> bm!332419 (= call!332423 (forall!11743 (ite c!810897 (toList!6082 lt!1911295) (toList!6082 lt!1911583)) (ite c!810897 lambda!221158 lambda!221160)))))

(assert (=> b!4748670 (= e!2962022 lt!1911580)))

(assert (=> b!4748670 (= lt!1911583 (+!2348 lt!1911295 (h!59443 (t!360490 l!14304))))))

(assert (=> b!4748670 (= lt!1911580 (addToMapMapFromBucket!1538 (t!360490 (t!360490 l!14304)) (+!2348 lt!1911295 (h!59443 (t!360490 l!14304)))))))

(declare-fun lt!1911596 () Unit!134897)

(assert (=> b!4748670 (= lt!1911596 call!332425)))

(assert (=> b!4748670 (forall!11743 (toList!6082 lt!1911295) lambda!221159)))

(declare-fun lt!1911584 () Unit!134897)

(assert (=> b!4748670 (= lt!1911584 lt!1911596)))

(assert (=> b!4748670 call!332423))

(declare-fun lt!1911594 () Unit!134897)

(declare-fun Unit!134932 () Unit!134897)

(assert (=> b!4748670 (= lt!1911594 Unit!134932)))

(assert (=> b!4748670 (forall!11743 (t!360490 (t!360490 l!14304)) lambda!221160)))

(declare-fun lt!1911578 () Unit!134897)

(declare-fun Unit!134933 () Unit!134897)

(assert (=> b!4748670 (= lt!1911578 Unit!134933)))

(declare-fun lt!1911591 () Unit!134897)

(declare-fun Unit!134934 () Unit!134897)

(assert (=> b!4748670 (= lt!1911591 Unit!134934)))

(declare-fun lt!1911592 () Unit!134897)

(assert (=> b!4748670 (= lt!1911592 (forallContained!3769 (toList!6082 lt!1911583) lambda!221160 (h!59443 (t!360490 l!14304))))))

(assert (=> b!4748670 (contains!16468 lt!1911583 (_1!30686 (h!59443 (t!360490 l!14304))))))

(declare-fun lt!1911590 () Unit!134897)

(declare-fun Unit!134935 () Unit!134897)

(assert (=> b!4748670 (= lt!1911590 Unit!134935)))

(assert (=> b!4748670 (contains!16468 lt!1911580 (_1!30686 (h!59443 (t!360490 l!14304))))))

(declare-fun lt!1911585 () Unit!134897)

(declare-fun Unit!134936 () Unit!134897)

(assert (=> b!4748670 (= lt!1911585 Unit!134936)))

(declare-fun call!332424 () Bool)

(assert (=> b!4748670 call!332424))

(declare-fun lt!1911576 () Unit!134897)

(declare-fun Unit!134937 () Unit!134897)

(assert (=> b!4748670 (= lt!1911576 Unit!134937)))

(assert (=> b!4748670 (forall!11743 (toList!6082 lt!1911583) lambda!221160)))

(declare-fun lt!1911577 () Unit!134897)

(declare-fun Unit!134938 () Unit!134897)

(assert (=> b!4748670 (= lt!1911577 Unit!134938)))

(declare-fun lt!1911589 () Unit!134897)

(declare-fun Unit!134939 () Unit!134897)

(assert (=> b!4748670 (= lt!1911589 Unit!134939)))

(declare-fun lt!1911595 () Unit!134897)

(assert (=> b!4748670 (= lt!1911595 (addForallContainsKeyThenBeforeAdding!857 lt!1911295 lt!1911580 (_1!30686 (h!59443 (t!360490 l!14304))) (_2!30686 (h!59443 (t!360490 l!14304)))))))

(assert (=> b!4748670 (forall!11743 (toList!6082 lt!1911295) lambda!221160)))

(declare-fun lt!1911582 () Unit!134897)

(assert (=> b!4748670 (= lt!1911582 lt!1911595)))

(assert (=> b!4748670 (forall!11743 (toList!6082 lt!1911295) lambda!221160)))

(declare-fun lt!1911581 () Unit!134897)

(declare-fun Unit!134941 () Unit!134897)

(assert (=> b!4748670 (= lt!1911581 Unit!134941)))

(declare-fun res!2013207 () Bool)

(assert (=> b!4748670 (= res!2013207 (forall!11743 (t!360490 l!14304) lambda!221160))))

(assert (=> b!4748670 (=> (not res!2013207) (not e!2962024))))

(assert (=> b!4748670 e!2962024))

(declare-fun lt!1911587 () Unit!134897)

(declare-fun Unit!134942 () Unit!134897)

(assert (=> b!4748670 (= lt!1911587 Unit!134942)))

(assert (=> b!4748671 (= e!2962022 lt!1911295)))

(declare-fun lt!1911579 () Unit!134897)

(assert (=> b!4748671 (= lt!1911579 call!332425)))

(assert (=> b!4748671 call!332424))

(declare-fun lt!1911593 () Unit!134897)

(assert (=> b!4748671 (= lt!1911593 lt!1911579)))

(assert (=> b!4748671 call!332423))

(declare-fun lt!1911588 () Unit!134897)

(declare-fun Unit!134943 () Unit!134897)

(assert (=> b!4748671 (= lt!1911588 Unit!134943)))

(declare-fun bm!332420 () Bool)

(assert (=> bm!332420 (= call!332424 (forall!11743 (ite c!810897 (toList!6082 lt!1911295) (t!360490 l!14304)) (ite c!810897 lambda!221158 lambda!221160)))))

(assert (= (and d!1517618 c!810897) b!4748671))

(assert (= (and d!1517618 (not c!810897)) b!4748670))

(assert (= (and b!4748670 res!2013207) b!4748667))

(assert (= (or b!4748671 b!4748670) bm!332418))

(assert (= (or b!4748671 b!4748670) bm!332420))

(assert (= (or b!4748671 b!4748670) bm!332419))

(assert (= (and d!1517618 res!2013206) b!4748668))

(assert (= (and b!4748668 res!2013205) b!4748669))

(declare-fun m!5707603 () Bool)

(assert (=> bm!332420 m!5707603))

(declare-fun m!5707605 () Bool)

(assert (=> b!4748667 m!5707605))

(declare-fun m!5707609 () Bool)

(assert (=> d!1517618 m!5707609))

(assert (=> d!1517618 m!5707273))

(assert (=> bm!332418 m!5707565))

(declare-fun m!5707615 () Bool)

(assert (=> b!4748669 m!5707615))

(declare-fun m!5707621 () Bool)

(assert (=> bm!332419 m!5707621))

(declare-fun m!5707625 () Bool)

(assert (=> b!4748668 m!5707625))

(declare-fun m!5707629 () Bool)

(assert (=> b!4748670 m!5707629))

(declare-fun m!5707631 () Bool)

(assert (=> b!4748670 m!5707631))

(assert (=> b!4748670 m!5707629))

(declare-fun m!5707637 () Bool)

(assert (=> b!4748670 m!5707637))

(declare-fun m!5707641 () Bool)

(assert (=> b!4748670 m!5707641))

(assert (=> b!4748670 m!5707605))

(declare-fun m!5707643 () Bool)

(assert (=> b!4748670 m!5707643))

(declare-fun m!5707645 () Bool)

(assert (=> b!4748670 m!5707645))

(assert (=> b!4748670 m!5707605))

(declare-fun m!5707647 () Bool)

(assert (=> b!4748670 m!5707647))

(declare-fun m!5707649 () Bool)

(assert (=> b!4748670 m!5707649))

(declare-fun m!5707651 () Bool)

(assert (=> b!4748670 m!5707651))

(declare-fun m!5707653 () Bool)

(assert (=> b!4748670 m!5707653))

(assert (=> b!4748570 d!1517618))

(declare-fun d!1517620 () Bool)

(declare-fun e!2962027 () Bool)

(assert (=> d!1517620 e!2962027))

(declare-fun res!2013208 () Bool)

(assert (=> d!1517620 (=> (not res!2013208) (not e!2962027))))

(declare-fun lt!1911597 () ListMap!5473)

(assert (=> d!1517620 (= res!2013208 (contains!16468 lt!1911597 (_1!30686 t!14174)))))

(declare-fun lt!1911599 () List!53170)

(assert (=> d!1517620 (= lt!1911597 (ListMap!5474 lt!1911599))))

(declare-fun lt!1911600 () Unit!134897)

(declare-fun lt!1911598 () Unit!134897)

(assert (=> d!1517620 (= lt!1911600 lt!1911598)))

(assert (=> d!1517620 (= (getValueByKey!2062 lt!1911599 (_1!30686 t!14174)) (Some!12511 (_2!30686 t!14174)))))

(assert (=> d!1517620 (= lt!1911598 (lemmaContainsTupThenGetReturnValue!1139 lt!1911599 (_1!30686 t!14174) (_2!30686 t!14174)))))

(assert (=> d!1517620 (= lt!1911599 (insertNoDuplicatedKeys!647 (toList!6082 acc!1214) (_1!30686 t!14174) (_2!30686 t!14174)))))

(assert (=> d!1517620 (= (+!2348 acc!1214 t!14174) lt!1911597)))

(declare-fun b!4748676 () Bool)

(declare-fun res!2013209 () Bool)

(assert (=> b!4748676 (=> (not res!2013209) (not e!2962027))))

(assert (=> b!4748676 (= res!2013209 (= (getValueByKey!2062 (toList!6082 lt!1911597) (_1!30686 t!14174)) (Some!12511 (_2!30686 t!14174))))))

(declare-fun b!4748677 () Bool)

(assert (=> b!4748677 (= e!2962027 (contains!16469 (toList!6082 lt!1911597) t!14174))))

(assert (= (and d!1517620 res!2013208) b!4748676))

(assert (= (and b!4748676 res!2013209) b!4748677))

(declare-fun m!5707655 () Bool)

(assert (=> d!1517620 m!5707655))

(declare-fun m!5707657 () Bool)

(assert (=> d!1517620 m!5707657))

(declare-fun m!5707659 () Bool)

(assert (=> d!1517620 m!5707659))

(declare-fun m!5707661 () Bool)

(assert (=> d!1517620 m!5707661))

(declare-fun m!5707663 () Bool)

(assert (=> b!4748676 m!5707663))

(declare-fun m!5707665 () Bool)

(assert (=> b!4748677 m!5707665))

(assert (=> b!4748570 d!1517620))

(declare-fun d!1517622 () Bool)

(assert (=> d!1517622 (= (eq!1189 lt!1911299 (addToMapMapFromBucket!1538 l!14304 lt!1911294)) (= (content!9509 (toList!6082 lt!1911299)) (content!9509 (toList!6082 (addToMapMapFromBucket!1538 l!14304 lt!1911294)))))))

(declare-fun bs!1139242 () Bool)

(assert (= bs!1139242 d!1517622))

(declare-fun m!5707667 () Bool)

(assert (=> bs!1139242 m!5707667))

(declare-fun m!5707669 () Bool)

(assert (=> bs!1139242 m!5707669))

(assert (=> b!4748570 d!1517622))

(declare-fun bs!1139243 () Bool)

(declare-fun b!4748684 () Bool)

(assert (= bs!1139243 (and b!4748684 b!4748657)))

(declare-fun lambda!221163 () Int)

(assert (=> bs!1139243 (= (= acc!1214 lt!1911295) (= lambda!221163 lambda!221151))))

(declare-fun bs!1139244 () Bool)

(assert (= bs!1139244 (and b!4748684 b!4748671)))

(assert (=> bs!1139244 (= (= acc!1214 lt!1911295) (= lambda!221163 lambda!221158))))

(declare-fun bs!1139245 () Bool)

(assert (= bs!1139245 (and b!4748684 b!4748670)))

(assert (=> bs!1139245 (= (= acc!1214 lt!1911295) (= lambda!221163 lambda!221159))))

(declare-fun bs!1139246 () Bool)

(assert (= bs!1139246 (and b!4748684 d!1517618)))

(assert (=> bs!1139246 (= (= acc!1214 lt!1911586) (= lambda!221163 lambda!221162))))

(declare-fun bs!1139247 () Bool)

(assert (= bs!1139247 (and b!4748684 b!4748656)))

(assert (=> bs!1139247 (= (= acc!1214 lt!1911534) (= lambda!221163 lambda!221154))))

(declare-fun bs!1139248 () Bool)

(assert (= bs!1139248 (and b!4748684 d!1517578)))

(assert (=> bs!1139248 (= (= acc!1214 lt!1911540) (= lambda!221163 lambda!221155))))

(assert (=> bs!1139245 (= (= acc!1214 lt!1911580) (= lambda!221163 lambda!221160))))

(assert (=> bs!1139247 (= (= acc!1214 lt!1911295) (= lambda!221163 lambda!221152))))

(assert (=> b!4748684 true))

(declare-fun bs!1139249 () Bool)

(declare-fun b!4748683 () Bool)

(assert (= bs!1139249 (and b!4748683 b!4748657)))

(declare-fun lambda!221164 () Int)

(assert (=> bs!1139249 (= (= acc!1214 lt!1911295) (= lambda!221164 lambda!221151))))

(declare-fun bs!1139250 () Bool)

(assert (= bs!1139250 (and b!4748683 b!4748670)))

(assert (=> bs!1139250 (= (= acc!1214 lt!1911295) (= lambda!221164 lambda!221159))))

(declare-fun bs!1139251 () Bool)

(assert (= bs!1139251 (and b!4748683 d!1517618)))

(assert (=> bs!1139251 (= (= acc!1214 lt!1911586) (= lambda!221164 lambda!221162))))

(declare-fun bs!1139252 () Bool)

(assert (= bs!1139252 (and b!4748683 b!4748656)))

(assert (=> bs!1139252 (= (= acc!1214 lt!1911534) (= lambda!221164 lambda!221154))))

(declare-fun bs!1139253 () Bool)

(assert (= bs!1139253 (and b!4748683 d!1517578)))

(assert (=> bs!1139253 (= (= acc!1214 lt!1911540) (= lambda!221164 lambda!221155))))

(declare-fun bs!1139254 () Bool)

(assert (= bs!1139254 (and b!4748683 b!4748671)))

(assert (=> bs!1139254 (= (= acc!1214 lt!1911295) (= lambda!221164 lambda!221158))))

(declare-fun bs!1139255 () Bool)

(assert (= bs!1139255 (and b!4748683 b!4748684)))

(assert (=> bs!1139255 (= lambda!221164 lambda!221163)))

(assert (=> bs!1139250 (= (= acc!1214 lt!1911580) (= lambda!221164 lambda!221160))))

(assert (=> bs!1139252 (= (= acc!1214 lt!1911295) (= lambda!221164 lambda!221152))))

(assert (=> b!4748683 true))

(declare-fun lambda!221165 () Int)

(declare-fun lt!1911605 () ListMap!5473)

(assert (=> bs!1139249 (= (= lt!1911605 lt!1911295) (= lambda!221165 lambda!221151))))

(assert (=> bs!1139251 (= (= lt!1911605 lt!1911586) (= lambda!221165 lambda!221162))))

(assert (=> bs!1139252 (= (= lt!1911605 lt!1911534) (= lambda!221165 lambda!221154))))

(assert (=> bs!1139253 (= (= lt!1911605 lt!1911540) (= lambda!221165 lambda!221155))))

(assert (=> bs!1139254 (= (= lt!1911605 lt!1911295) (= lambda!221165 lambda!221158))))

(assert (=> bs!1139255 (= (= lt!1911605 acc!1214) (= lambda!221165 lambda!221163))))

(assert (=> bs!1139250 (= (= lt!1911605 lt!1911295) (= lambda!221165 lambda!221159))))

(assert (=> b!4748683 (= (= lt!1911605 acc!1214) (= lambda!221165 lambda!221164))))

(assert (=> bs!1139250 (= (= lt!1911605 lt!1911580) (= lambda!221165 lambda!221160))))

(assert (=> bs!1139252 (= (= lt!1911605 lt!1911295) (= lambda!221165 lambda!221152))))

(assert (=> b!4748683 true))

(declare-fun bs!1139256 () Bool)

(declare-fun d!1517624 () Bool)

(assert (= bs!1139256 (and d!1517624 b!4748657)))

(declare-fun lt!1911611 () ListMap!5473)

(declare-fun lambda!221166 () Int)

(assert (=> bs!1139256 (= (= lt!1911611 lt!1911295) (= lambda!221166 lambda!221151))))

(declare-fun bs!1139257 () Bool)

(assert (= bs!1139257 (and d!1517624 d!1517618)))

(assert (=> bs!1139257 (= (= lt!1911611 lt!1911586) (= lambda!221166 lambda!221162))))

(declare-fun bs!1139258 () Bool)

(assert (= bs!1139258 (and d!1517624 b!4748656)))

(assert (=> bs!1139258 (= (= lt!1911611 lt!1911534) (= lambda!221166 lambda!221154))))

(declare-fun bs!1139259 () Bool)

(assert (= bs!1139259 (and d!1517624 d!1517578)))

(assert (=> bs!1139259 (= (= lt!1911611 lt!1911540) (= lambda!221166 lambda!221155))))

(declare-fun bs!1139260 () Bool)

(assert (= bs!1139260 (and d!1517624 b!4748671)))

(assert (=> bs!1139260 (= (= lt!1911611 lt!1911295) (= lambda!221166 lambda!221158))))

(declare-fun bs!1139261 () Bool)

(assert (= bs!1139261 (and d!1517624 b!4748684)))

(assert (=> bs!1139261 (= (= lt!1911611 acc!1214) (= lambda!221166 lambda!221163))))

(declare-fun bs!1139262 () Bool)

(assert (= bs!1139262 (and d!1517624 b!4748683)))

(assert (=> bs!1139262 (= (= lt!1911611 lt!1911605) (= lambda!221166 lambda!221165))))

(declare-fun bs!1139263 () Bool)

(assert (= bs!1139263 (and d!1517624 b!4748670)))

(assert (=> bs!1139263 (= (= lt!1911611 lt!1911295) (= lambda!221166 lambda!221159))))

(assert (=> bs!1139262 (= (= lt!1911611 acc!1214) (= lambda!221166 lambda!221164))))

(assert (=> bs!1139263 (= (= lt!1911611 lt!1911580) (= lambda!221166 lambda!221160))))

(assert (=> bs!1139258 (= (= lt!1911611 lt!1911295) (= lambda!221166 lambda!221152))))

(assert (=> d!1517624 true))

(declare-fun b!4748680 () Bool)

(declare-fun e!2962032 () Bool)

(assert (=> b!4748680 (= e!2962032 (forall!11743 (toList!6082 acc!1214) lambda!221165))))

(declare-fun b!4748681 () Bool)

(declare-fun res!2013210 () Bool)

(declare-fun e!2962031 () Bool)

(assert (=> b!4748681 (=> (not res!2013210) (not e!2962031))))

(assert (=> b!4748681 (= res!2013210 (forall!11743 (toList!6082 acc!1214) lambda!221166))))

(declare-fun bm!332421 () Bool)

(declare-fun call!332428 () Unit!134897)

(assert (=> bm!332421 (= call!332428 (lemmaContainsAllItsOwnKeys!858 acc!1214))))

(declare-fun b!4748682 () Bool)

(assert (=> b!4748682 (= e!2962031 (invariantList!1575 (toList!6082 lt!1911611)))))

(assert (=> d!1517624 e!2962031))

(declare-fun res!2013211 () Bool)

(assert (=> d!1517624 (=> (not res!2013211) (not e!2962031))))

(assert (=> d!1517624 (= res!2013211 (forall!11743 lt!1911301 lambda!221166))))

(declare-fun e!2962030 () ListMap!5473)

(assert (=> d!1517624 (= lt!1911611 e!2962030)))

(declare-fun c!810898 () Bool)

(assert (=> d!1517624 (= c!810898 ((_ is Nil!53046) lt!1911301))))

(assert (=> d!1517624 (noDuplicateKeys!2112 lt!1911301)))

(assert (=> d!1517624 (= (addToMapMapFromBucket!1538 lt!1911301 acc!1214) lt!1911611)))

(declare-fun bm!332422 () Bool)

(declare-fun call!332426 () Bool)

(declare-fun lt!1911608 () ListMap!5473)

(assert (=> bm!332422 (= call!332426 (forall!11743 (ite c!810898 (toList!6082 acc!1214) (toList!6082 lt!1911608)) (ite c!810898 lambda!221163 lambda!221165)))))

(assert (=> b!4748683 (= e!2962030 lt!1911605)))

(assert (=> b!4748683 (= lt!1911608 (+!2348 acc!1214 (h!59443 lt!1911301)))))

(assert (=> b!4748683 (= lt!1911605 (addToMapMapFromBucket!1538 (t!360490 lt!1911301) (+!2348 acc!1214 (h!59443 lt!1911301))))))

(declare-fun lt!1911621 () Unit!134897)

(assert (=> b!4748683 (= lt!1911621 call!332428)))

(assert (=> b!4748683 (forall!11743 (toList!6082 acc!1214) lambda!221164)))

(declare-fun lt!1911609 () Unit!134897)

(assert (=> b!4748683 (= lt!1911609 lt!1911621)))

(assert (=> b!4748683 call!332426))

(declare-fun lt!1911619 () Unit!134897)

(declare-fun Unit!134954 () Unit!134897)

(assert (=> b!4748683 (= lt!1911619 Unit!134954)))

(assert (=> b!4748683 (forall!11743 (t!360490 lt!1911301) lambda!221165)))

(declare-fun lt!1911603 () Unit!134897)

(declare-fun Unit!134955 () Unit!134897)

(assert (=> b!4748683 (= lt!1911603 Unit!134955)))

(declare-fun lt!1911616 () Unit!134897)

(declare-fun Unit!134956 () Unit!134897)

(assert (=> b!4748683 (= lt!1911616 Unit!134956)))

(declare-fun lt!1911617 () Unit!134897)

(assert (=> b!4748683 (= lt!1911617 (forallContained!3769 (toList!6082 lt!1911608) lambda!221165 (h!59443 lt!1911301)))))

(assert (=> b!4748683 (contains!16468 lt!1911608 (_1!30686 (h!59443 lt!1911301)))))

(declare-fun lt!1911615 () Unit!134897)

(declare-fun Unit!134957 () Unit!134897)

(assert (=> b!4748683 (= lt!1911615 Unit!134957)))

(assert (=> b!4748683 (contains!16468 lt!1911605 (_1!30686 (h!59443 lt!1911301)))))

(declare-fun lt!1911610 () Unit!134897)

(declare-fun Unit!134958 () Unit!134897)

(assert (=> b!4748683 (= lt!1911610 Unit!134958)))

(declare-fun call!332427 () Bool)

(assert (=> b!4748683 call!332427))

(declare-fun lt!1911601 () Unit!134897)

(declare-fun Unit!134959 () Unit!134897)

(assert (=> b!4748683 (= lt!1911601 Unit!134959)))

(assert (=> b!4748683 (forall!11743 (toList!6082 lt!1911608) lambda!221165)))

(declare-fun lt!1911602 () Unit!134897)

(declare-fun Unit!134960 () Unit!134897)

(assert (=> b!4748683 (= lt!1911602 Unit!134960)))

(declare-fun lt!1911614 () Unit!134897)

(declare-fun Unit!134961 () Unit!134897)

(assert (=> b!4748683 (= lt!1911614 Unit!134961)))

(declare-fun lt!1911620 () Unit!134897)

(assert (=> b!4748683 (= lt!1911620 (addForallContainsKeyThenBeforeAdding!857 acc!1214 lt!1911605 (_1!30686 (h!59443 lt!1911301)) (_2!30686 (h!59443 lt!1911301))))))

(assert (=> b!4748683 (forall!11743 (toList!6082 acc!1214) lambda!221165)))

(declare-fun lt!1911607 () Unit!134897)

(assert (=> b!4748683 (= lt!1911607 lt!1911620)))

(assert (=> b!4748683 (forall!11743 (toList!6082 acc!1214) lambda!221165)))

(declare-fun lt!1911606 () Unit!134897)

(declare-fun Unit!134962 () Unit!134897)

(assert (=> b!4748683 (= lt!1911606 Unit!134962)))

(declare-fun res!2013212 () Bool)

(assert (=> b!4748683 (= res!2013212 (forall!11743 lt!1911301 lambda!221165))))

(assert (=> b!4748683 (=> (not res!2013212) (not e!2962032))))

(assert (=> b!4748683 e!2962032))

(declare-fun lt!1911612 () Unit!134897)

(declare-fun Unit!134963 () Unit!134897)

(assert (=> b!4748683 (= lt!1911612 Unit!134963)))

(assert (=> b!4748684 (= e!2962030 acc!1214)))

(declare-fun lt!1911604 () Unit!134897)

(assert (=> b!4748684 (= lt!1911604 call!332428)))

(assert (=> b!4748684 call!332427))

(declare-fun lt!1911618 () Unit!134897)

(assert (=> b!4748684 (= lt!1911618 lt!1911604)))

(assert (=> b!4748684 call!332426))

(declare-fun lt!1911613 () Unit!134897)

(declare-fun Unit!134965 () Unit!134897)

(assert (=> b!4748684 (= lt!1911613 Unit!134965)))

(declare-fun bm!332423 () Bool)

(assert (=> bm!332423 (= call!332427 (forall!11743 (ite c!810898 (toList!6082 acc!1214) lt!1911301) (ite c!810898 lambda!221163 lambda!221165)))))

(assert (= (and d!1517624 c!810898) b!4748684))

(assert (= (and d!1517624 (not c!810898)) b!4748683))

(assert (= (and b!4748683 res!2013212) b!4748680))

(assert (= (or b!4748684 b!4748683) bm!332421))

(assert (= (or b!4748684 b!4748683) bm!332423))

(assert (= (or b!4748684 b!4748683) bm!332422))

(assert (= (and d!1517624 res!2013211) b!4748681))

(assert (= (and b!4748681 res!2013210) b!4748682))

(declare-fun m!5707671 () Bool)

(assert (=> bm!332423 m!5707671))

(declare-fun m!5707673 () Bool)

(assert (=> b!4748680 m!5707673))

(declare-fun m!5707675 () Bool)

(assert (=> d!1517624 m!5707675))

(assert (=> d!1517624 m!5707241))

(declare-fun m!5707677 () Bool)

(assert (=> bm!332421 m!5707677))

(declare-fun m!5707679 () Bool)

(assert (=> b!4748682 m!5707679))

(declare-fun m!5707681 () Bool)

(assert (=> bm!332422 m!5707681))

(declare-fun m!5707683 () Bool)

(assert (=> b!4748681 m!5707683))

(declare-fun m!5707685 () Bool)

(assert (=> b!4748683 m!5707685))

(declare-fun m!5707687 () Bool)

(assert (=> b!4748683 m!5707687))

(assert (=> b!4748683 m!5707685))

(declare-fun m!5707689 () Bool)

(assert (=> b!4748683 m!5707689))

(declare-fun m!5707691 () Bool)

(assert (=> b!4748683 m!5707691))

(assert (=> b!4748683 m!5707673))

(declare-fun m!5707693 () Bool)

(assert (=> b!4748683 m!5707693))

(declare-fun m!5707695 () Bool)

(assert (=> b!4748683 m!5707695))

(assert (=> b!4748683 m!5707673))

(declare-fun m!5707697 () Bool)

(assert (=> b!4748683 m!5707697))

(declare-fun m!5707699 () Bool)

(assert (=> b!4748683 m!5707699))

(declare-fun m!5707701 () Bool)

(assert (=> b!4748683 m!5707701))

(declare-fun m!5707703 () Bool)

(assert (=> b!4748683 m!5707703))

(assert (=> b!4748570 d!1517624))

(declare-fun d!1517626 () Bool)

(assert (=> d!1517626 (eq!1189 (addToMapMapFromBucket!1538 (Cons!53046 t!14174 (t!360490 l!14304)) lt!1911295) (+!2348 (addToMapMapFromBucket!1538 (t!360490 l!14304) lt!1911295) t!14174))))

(declare-fun lt!1911624 () Unit!134897)

(declare-fun choose!33790 (tuple2!54784 List!53170 ListMap!5473) Unit!134897)

(assert (=> d!1517626 (= lt!1911624 (choose!33790 t!14174 (t!360490 l!14304) lt!1911295))))

(assert (=> d!1517626 (noDuplicateKeys!2112 (t!360490 l!14304))))

(assert (=> d!1517626 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!436 t!14174 (t!360490 l!14304) lt!1911295) lt!1911624)))

(declare-fun bs!1139264 () Bool)

(assert (= bs!1139264 d!1517626))

(assert (=> bs!1139264 m!5707269))

(assert (=> bs!1139264 m!5707259))

(declare-fun m!5707705 () Bool)

(assert (=> bs!1139264 m!5707705))

(assert (=> bs!1139264 m!5707259))

(declare-fun m!5707707 () Bool)

(assert (=> bs!1139264 m!5707707))

(assert (=> bs!1139264 m!5707269))

(assert (=> bs!1139264 m!5707705))

(declare-fun m!5707709 () Bool)

(assert (=> bs!1139264 m!5707709))

(assert (=> bs!1139264 m!5707273))

(assert (=> b!4748570 d!1517626))

(declare-fun d!1517628 () Bool)

(declare-fun e!2962033 () Bool)

(assert (=> d!1517628 e!2962033))

(declare-fun res!2013213 () Bool)

(assert (=> d!1517628 (=> (not res!2013213) (not e!2962033))))

(declare-fun lt!1911625 () ListMap!5473)

(assert (=> d!1517628 (= res!2013213 (contains!16468 lt!1911625 (_1!30686 (h!59443 l!14304))))))

(declare-fun lt!1911627 () List!53170)

(assert (=> d!1517628 (= lt!1911625 (ListMap!5474 lt!1911627))))

(declare-fun lt!1911628 () Unit!134897)

(declare-fun lt!1911626 () Unit!134897)

(assert (=> d!1517628 (= lt!1911628 lt!1911626)))

(assert (=> d!1517628 (= (getValueByKey!2062 lt!1911627 (_1!30686 (h!59443 l!14304))) (Some!12511 (_2!30686 (h!59443 l!14304))))))

(assert (=> d!1517628 (= lt!1911626 (lemmaContainsTupThenGetReturnValue!1139 lt!1911627 (_1!30686 (h!59443 l!14304)) (_2!30686 (h!59443 l!14304))))))

(assert (=> d!1517628 (= lt!1911627 (insertNoDuplicatedKeys!647 (toList!6082 acc!1214) (_1!30686 (h!59443 l!14304)) (_2!30686 (h!59443 l!14304))))))

(assert (=> d!1517628 (= (+!2348 acc!1214 (h!59443 l!14304)) lt!1911625)))

(declare-fun b!4748685 () Bool)

(declare-fun res!2013214 () Bool)

(assert (=> b!4748685 (=> (not res!2013214) (not e!2962033))))

(assert (=> b!4748685 (= res!2013214 (= (getValueByKey!2062 (toList!6082 lt!1911625) (_1!30686 (h!59443 l!14304))) (Some!12511 (_2!30686 (h!59443 l!14304)))))))

(declare-fun b!4748686 () Bool)

(assert (=> b!4748686 (= e!2962033 (contains!16469 (toList!6082 lt!1911625) (h!59443 l!14304)))))

(assert (= (and d!1517628 res!2013213) b!4748685))

(assert (= (and b!4748685 res!2013214) b!4748686))

(declare-fun m!5707711 () Bool)

(assert (=> d!1517628 m!5707711))

(declare-fun m!5707713 () Bool)

(assert (=> d!1517628 m!5707713))

(declare-fun m!5707715 () Bool)

(assert (=> d!1517628 m!5707715))

(declare-fun m!5707717 () Bool)

(assert (=> d!1517628 m!5707717))

(declare-fun m!5707719 () Bool)

(assert (=> b!4748685 m!5707719))

(declare-fun m!5707721 () Bool)

(assert (=> b!4748686 m!5707721))

(assert (=> b!4748570 d!1517628))

(declare-fun bs!1139265 () Bool)

(declare-fun b!4748691 () Bool)

(assert (= bs!1139265 (and b!4748691 b!4748657)))

(declare-fun lambda!221167 () Int)

(assert (=> bs!1139265 (= (= lt!1911294 lt!1911295) (= lambda!221167 lambda!221151))))

(declare-fun bs!1139266 () Bool)

(assert (= bs!1139266 (and b!4748691 d!1517618)))

(assert (=> bs!1139266 (= (= lt!1911294 lt!1911586) (= lambda!221167 lambda!221162))))

(declare-fun bs!1139267 () Bool)

(assert (= bs!1139267 (and b!4748691 d!1517578)))

(assert (=> bs!1139267 (= (= lt!1911294 lt!1911540) (= lambda!221167 lambda!221155))))

(declare-fun bs!1139268 () Bool)

(assert (= bs!1139268 (and b!4748691 b!4748671)))

(assert (=> bs!1139268 (= (= lt!1911294 lt!1911295) (= lambda!221167 lambda!221158))))

(declare-fun bs!1139269 () Bool)

(assert (= bs!1139269 (and b!4748691 b!4748684)))

(assert (=> bs!1139269 (= (= lt!1911294 acc!1214) (= lambda!221167 lambda!221163))))

(declare-fun bs!1139270 () Bool)

(assert (= bs!1139270 (and b!4748691 b!4748683)))

(assert (=> bs!1139270 (= (= lt!1911294 lt!1911605) (= lambda!221167 lambda!221165))))

(declare-fun bs!1139271 () Bool)

(assert (= bs!1139271 (and b!4748691 b!4748670)))

(assert (=> bs!1139271 (= (= lt!1911294 lt!1911295) (= lambda!221167 lambda!221159))))

(assert (=> bs!1139270 (= (= lt!1911294 acc!1214) (= lambda!221167 lambda!221164))))

(declare-fun bs!1139272 () Bool)

(assert (= bs!1139272 (and b!4748691 b!4748656)))

(assert (=> bs!1139272 (= (= lt!1911294 lt!1911534) (= lambda!221167 lambda!221154))))

(declare-fun bs!1139273 () Bool)

(assert (= bs!1139273 (and b!4748691 d!1517624)))

(assert (=> bs!1139273 (= (= lt!1911294 lt!1911611) (= lambda!221167 lambda!221166))))

(assert (=> bs!1139271 (= (= lt!1911294 lt!1911580) (= lambda!221167 lambda!221160))))

(assert (=> bs!1139272 (= (= lt!1911294 lt!1911295) (= lambda!221167 lambda!221152))))

(assert (=> b!4748691 true))

(declare-fun bs!1139274 () Bool)

(declare-fun b!4748690 () Bool)

(assert (= bs!1139274 (and b!4748690 b!4748657)))

(declare-fun lambda!221168 () Int)

(assert (=> bs!1139274 (= (= lt!1911294 lt!1911295) (= lambda!221168 lambda!221151))))

(declare-fun bs!1139275 () Bool)

(assert (= bs!1139275 (and b!4748690 d!1517618)))

(assert (=> bs!1139275 (= (= lt!1911294 lt!1911586) (= lambda!221168 lambda!221162))))

(declare-fun bs!1139276 () Bool)

(assert (= bs!1139276 (and b!4748690 b!4748691)))

(assert (=> bs!1139276 (= lambda!221168 lambda!221167)))

(declare-fun bs!1139277 () Bool)

(assert (= bs!1139277 (and b!4748690 d!1517578)))

(assert (=> bs!1139277 (= (= lt!1911294 lt!1911540) (= lambda!221168 lambda!221155))))

(declare-fun bs!1139278 () Bool)

(assert (= bs!1139278 (and b!4748690 b!4748671)))

(assert (=> bs!1139278 (= (= lt!1911294 lt!1911295) (= lambda!221168 lambda!221158))))

(declare-fun bs!1139279 () Bool)

(assert (= bs!1139279 (and b!4748690 b!4748684)))

(assert (=> bs!1139279 (= (= lt!1911294 acc!1214) (= lambda!221168 lambda!221163))))

(declare-fun bs!1139280 () Bool)

(assert (= bs!1139280 (and b!4748690 b!4748683)))

(assert (=> bs!1139280 (= (= lt!1911294 lt!1911605) (= lambda!221168 lambda!221165))))

(declare-fun bs!1139281 () Bool)

(assert (= bs!1139281 (and b!4748690 b!4748670)))

(assert (=> bs!1139281 (= (= lt!1911294 lt!1911295) (= lambda!221168 lambda!221159))))

(assert (=> bs!1139280 (= (= lt!1911294 acc!1214) (= lambda!221168 lambda!221164))))

(declare-fun bs!1139282 () Bool)

(assert (= bs!1139282 (and b!4748690 b!4748656)))

(assert (=> bs!1139282 (= (= lt!1911294 lt!1911534) (= lambda!221168 lambda!221154))))

(declare-fun bs!1139283 () Bool)

(assert (= bs!1139283 (and b!4748690 d!1517624)))

(assert (=> bs!1139283 (= (= lt!1911294 lt!1911611) (= lambda!221168 lambda!221166))))

(assert (=> bs!1139281 (= (= lt!1911294 lt!1911580) (= lambda!221168 lambda!221160))))

(assert (=> bs!1139282 (= (= lt!1911294 lt!1911295) (= lambda!221168 lambda!221152))))

(assert (=> b!4748690 true))

(declare-fun lt!1911633 () ListMap!5473)

(declare-fun lambda!221169 () Int)

(assert (=> bs!1139274 (= (= lt!1911633 lt!1911295) (= lambda!221169 lambda!221151))))

(assert (=> bs!1139275 (= (= lt!1911633 lt!1911586) (= lambda!221169 lambda!221162))))

(assert (=> bs!1139276 (= (= lt!1911633 lt!1911294) (= lambda!221169 lambda!221167))))

(assert (=> bs!1139278 (= (= lt!1911633 lt!1911295) (= lambda!221169 lambda!221158))))

(assert (=> bs!1139279 (= (= lt!1911633 acc!1214) (= lambda!221169 lambda!221163))))

(assert (=> bs!1139280 (= (= lt!1911633 lt!1911605) (= lambda!221169 lambda!221165))))

(assert (=> bs!1139281 (= (= lt!1911633 lt!1911295) (= lambda!221169 lambda!221159))))

(assert (=> bs!1139280 (= (= lt!1911633 acc!1214) (= lambda!221169 lambda!221164))))

(assert (=> bs!1139282 (= (= lt!1911633 lt!1911534) (= lambda!221169 lambda!221154))))

(assert (=> bs!1139283 (= (= lt!1911633 lt!1911611) (= lambda!221169 lambda!221166))))

(assert (=> bs!1139281 (= (= lt!1911633 lt!1911580) (= lambda!221169 lambda!221160))))

(assert (=> bs!1139282 (= (= lt!1911633 lt!1911295) (= lambda!221169 lambda!221152))))

(assert (=> bs!1139277 (= (= lt!1911633 lt!1911540) (= lambda!221169 lambda!221155))))

(assert (=> b!4748690 (= (= lt!1911633 lt!1911294) (= lambda!221169 lambda!221168))))

(assert (=> b!4748690 true))

(declare-fun bs!1139284 () Bool)

(declare-fun d!1517630 () Bool)

(assert (= bs!1139284 (and d!1517630 d!1517618)))

(declare-fun lambda!221170 () Int)

(declare-fun lt!1911639 () ListMap!5473)

(assert (=> bs!1139284 (= (= lt!1911639 lt!1911586) (= lambda!221170 lambda!221162))))

(declare-fun bs!1139285 () Bool)

(assert (= bs!1139285 (and d!1517630 b!4748691)))

(assert (=> bs!1139285 (= (= lt!1911639 lt!1911294) (= lambda!221170 lambda!221167))))

(declare-fun bs!1139286 () Bool)

(assert (= bs!1139286 (and d!1517630 b!4748657)))

(assert (=> bs!1139286 (= (= lt!1911639 lt!1911295) (= lambda!221170 lambda!221151))))

(declare-fun bs!1139287 () Bool)

(assert (= bs!1139287 (and d!1517630 b!4748690)))

(assert (=> bs!1139287 (= (= lt!1911639 lt!1911633) (= lambda!221170 lambda!221169))))

(declare-fun bs!1139288 () Bool)

(assert (= bs!1139288 (and d!1517630 b!4748671)))

(assert (=> bs!1139288 (= (= lt!1911639 lt!1911295) (= lambda!221170 lambda!221158))))

(declare-fun bs!1139289 () Bool)

(assert (= bs!1139289 (and d!1517630 b!4748684)))

(assert (=> bs!1139289 (= (= lt!1911639 acc!1214) (= lambda!221170 lambda!221163))))

(declare-fun bs!1139290 () Bool)

(assert (= bs!1139290 (and d!1517630 b!4748683)))

(assert (=> bs!1139290 (= (= lt!1911639 lt!1911605) (= lambda!221170 lambda!221165))))

(declare-fun bs!1139291 () Bool)

(assert (= bs!1139291 (and d!1517630 b!4748670)))

(assert (=> bs!1139291 (= (= lt!1911639 lt!1911295) (= lambda!221170 lambda!221159))))

(assert (=> bs!1139290 (= (= lt!1911639 acc!1214) (= lambda!221170 lambda!221164))))

(declare-fun bs!1139292 () Bool)

(assert (= bs!1139292 (and d!1517630 b!4748656)))

(assert (=> bs!1139292 (= (= lt!1911639 lt!1911534) (= lambda!221170 lambda!221154))))

(declare-fun bs!1139293 () Bool)

(assert (= bs!1139293 (and d!1517630 d!1517624)))

(assert (=> bs!1139293 (= (= lt!1911639 lt!1911611) (= lambda!221170 lambda!221166))))

(assert (=> bs!1139291 (= (= lt!1911639 lt!1911580) (= lambda!221170 lambda!221160))))

(assert (=> bs!1139292 (= (= lt!1911639 lt!1911295) (= lambda!221170 lambda!221152))))

(declare-fun bs!1139294 () Bool)

(assert (= bs!1139294 (and d!1517630 d!1517578)))

(assert (=> bs!1139294 (= (= lt!1911639 lt!1911540) (= lambda!221170 lambda!221155))))

(assert (=> bs!1139287 (= (= lt!1911639 lt!1911294) (= lambda!221170 lambda!221168))))

(assert (=> d!1517630 true))

(declare-fun b!4748687 () Bool)

(declare-fun e!2962036 () Bool)

(assert (=> b!4748687 (= e!2962036 (forall!11743 (toList!6082 lt!1911294) lambda!221169))))

(declare-fun b!4748688 () Bool)

(declare-fun res!2013215 () Bool)

(declare-fun e!2962035 () Bool)

(assert (=> b!4748688 (=> (not res!2013215) (not e!2962035))))

(assert (=> b!4748688 (= res!2013215 (forall!11743 (toList!6082 lt!1911294) lambda!221170))))

(declare-fun bm!332424 () Bool)

(declare-fun call!332431 () Unit!134897)

(assert (=> bm!332424 (= call!332431 (lemmaContainsAllItsOwnKeys!858 lt!1911294))))

(declare-fun b!4748689 () Bool)

(assert (=> b!4748689 (= e!2962035 (invariantList!1575 (toList!6082 lt!1911639)))))

(assert (=> d!1517630 e!2962035))

(declare-fun res!2013216 () Bool)

(assert (=> d!1517630 (=> (not res!2013216) (not e!2962035))))

(assert (=> d!1517630 (= res!2013216 (forall!11743 l!14304 lambda!221170))))

(declare-fun e!2962034 () ListMap!5473)

(assert (=> d!1517630 (= lt!1911639 e!2962034)))

(declare-fun c!810899 () Bool)

(assert (=> d!1517630 (= c!810899 ((_ is Nil!53046) l!14304))))

(assert (=> d!1517630 (noDuplicateKeys!2112 l!14304)))

(assert (=> d!1517630 (= (addToMapMapFromBucket!1538 l!14304 lt!1911294) lt!1911639)))

(declare-fun lt!1911636 () ListMap!5473)

(declare-fun call!332429 () Bool)

(declare-fun bm!332425 () Bool)

(assert (=> bm!332425 (= call!332429 (forall!11743 (ite c!810899 (toList!6082 lt!1911294) (toList!6082 lt!1911636)) (ite c!810899 lambda!221167 lambda!221169)))))

(assert (=> b!4748690 (= e!2962034 lt!1911633)))

(assert (=> b!4748690 (= lt!1911636 (+!2348 lt!1911294 (h!59443 l!14304)))))

(assert (=> b!4748690 (= lt!1911633 (addToMapMapFromBucket!1538 (t!360490 l!14304) (+!2348 lt!1911294 (h!59443 l!14304))))))

(declare-fun lt!1911649 () Unit!134897)

(assert (=> b!4748690 (= lt!1911649 call!332431)))

(assert (=> b!4748690 (forall!11743 (toList!6082 lt!1911294) lambda!221168)))

(declare-fun lt!1911637 () Unit!134897)

(assert (=> b!4748690 (= lt!1911637 lt!1911649)))

(assert (=> b!4748690 call!332429))

(declare-fun lt!1911647 () Unit!134897)

(declare-fun Unit!134976 () Unit!134897)

(assert (=> b!4748690 (= lt!1911647 Unit!134976)))

(assert (=> b!4748690 (forall!11743 (t!360490 l!14304) lambda!221169)))

(declare-fun lt!1911631 () Unit!134897)

(declare-fun Unit!134977 () Unit!134897)

(assert (=> b!4748690 (= lt!1911631 Unit!134977)))

(declare-fun lt!1911644 () Unit!134897)

(declare-fun Unit!134978 () Unit!134897)

(assert (=> b!4748690 (= lt!1911644 Unit!134978)))

(declare-fun lt!1911645 () Unit!134897)

(assert (=> b!4748690 (= lt!1911645 (forallContained!3769 (toList!6082 lt!1911636) lambda!221169 (h!59443 l!14304)))))

(assert (=> b!4748690 (contains!16468 lt!1911636 (_1!30686 (h!59443 l!14304)))))

(declare-fun lt!1911643 () Unit!134897)

(declare-fun Unit!134979 () Unit!134897)

(assert (=> b!4748690 (= lt!1911643 Unit!134979)))

(assert (=> b!4748690 (contains!16468 lt!1911633 (_1!30686 (h!59443 l!14304)))))

(declare-fun lt!1911638 () Unit!134897)

(declare-fun Unit!134980 () Unit!134897)

(assert (=> b!4748690 (= lt!1911638 Unit!134980)))

(declare-fun call!332430 () Bool)

(assert (=> b!4748690 call!332430))

(declare-fun lt!1911629 () Unit!134897)

(declare-fun Unit!134981 () Unit!134897)

(assert (=> b!4748690 (= lt!1911629 Unit!134981)))

(assert (=> b!4748690 (forall!11743 (toList!6082 lt!1911636) lambda!221169)))

(declare-fun lt!1911630 () Unit!134897)

(declare-fun Unit!134982 () Unit!134897)

(assert (=> b!4748690 (= lt!1911630 Unit!134982)))

(declare-fun lt!1911642 () Unit!134897)

(declare-fun Unit!134983 () Unit!134897)

(assert (=> b!4748690 (= lt!1911642 Unit!134983)))

(declare-fun lt!1911648 () Unit!134897)

(assert (=> b!4748690 (= lt!1911648 (addForallContainsKeyThenBeforeAdding!857 lt!1911294 lt!1911633 (_1!30686 (h!59443 l!14304)) (_2!30686 (h!59443 l!14304))))))

(assert (=> b!4748690 (forall!11743 (toList!6082 lt!1911294) lambda!221169)))

(declare-fun lt!1911635 () Unit!134897)

(assert (=> b!4748690 (= lt!1911635 lt!1911648)))

(assert (=> b!4748690 (forall!11743 (toList!6082 lt!1911294) lambda!221169)))

(declare-fun lt!1911634 () Unit!134897)

(declare-fun Unit!134984 () Unit!134897)

(assert (=> b!4748690 (= lt!1911634 Unit!134984)))

(declare-fun res!2013217 () Bool)

(assert (=> b!4748690 (= res!2013217 (forall!11743 l!14304 lambda!221169))))

(assert (=> b!4748690 (=> (not res!2013217) (not e!2962036))))

(assert (=> b!4748690 e!2962036))

(declare-fun lt!1911640 () Unit!134897)

(declare-fun Unit!134985 () Unit!134897)

(assert (=> b!4748690 (= lt!1911640 Unit!134985)))

(assert (=> b!4748691 (= e!2962034 lt!1911294)))

(declare-fun lt!1911632 () Unit!134897)

(assert (=> b!4748691 (= lt!1911632 call!332431)))

(assert (=> b!4748691 call!332430))

(declare-fun lt!1911646 () Unit!134897)

(assert (=> b!4748691 (= lt!1911646 lt!1911632)))

(assert (=> b!4748691 call!332429))

(declare-fun lt!1911641 () Unit!134897)

(declare-fun Unit!134986 () Unit!134897)

(assert (=> b!4748691 (= lt!1911641 Unit!134986)))

(declare-fun bm!332426 () Bool)

(assert (=> bm!332426 (= call!332430 (forall!11743 (ite c!810899 (toList!6082 lt!1911294) l!14304) (ite c!810899 lambda!221167 lambda!221169)))))

(assert (= (and d!1517630 c!810899) b!4748691))

(assert (= (and d!1517630 (not c!810899)) b!4748690))

(assert (= (and b!4748690 res!2013217) b!4748687))

(assert (= (or b!4748691 b!4748690) bm!332424))

(assert (= (or b!4748691 b!4748690) bm!332426))

(assert (= (or b!4748691 b!4748690) bm!332425))

(assert (= (and d!1517630 res!2013216) b!4748688))

(assert (= (and b!4748688 res!2013215) b!4748689))

(declare-fun m!5707723 () Bool)

(assert (=> bm!332426 m!5707723))

(declare-fun m!5707725 () Bool)

(assert (=> b!4748687 m!5707725))

(declare-fun m!5707727 () Bool)

(assert (=> d!1517630 m!5707727))

(assert (=> d!1517630 m!5707237))

(declare-fun m!5707729 () Bool)

(assert (=> bm!332424 m!5707729))

(declare-fun m!5707731 () Bool)

(assert (=> b!4748689 m!5707731))

(declare-fun m!5707733 () Bool)

(assert (=> bm!332425 m!5707733))

(declare-fun m!5707735 () Bool)

(assert (=> b!4748688 m!5707735))

(assert (=> b!4748690 m!5707257))

(declare-fun m!5707737 () Bool)

(assert (=> b!4748690 m!5707737))

(assert (=> b!4748690 m!5707257))

(declare-fun m!5707739 () Bool)

(assert (=> b!4748690 m!5707739))

(declare-fun m!5707741 () Bool)

(assert (=> b!4748690 m!5707741))

(assert (=> b!4748690 m!5707725))

(declare-fun m!5707743 () Bool)

(assert (=> b!4748690 m!5707743))

(declare-fun m!5707745 () Bool)

(assert (=> b!4748690 m!5707745))

(assert (=> b!4748690 m!5707725))

(declare-fun m!5707747 () Bool)

(assert (=> b!4748690 m!5707747))

(declare-fun m!5707749 () Bool)

(assert (=> b!4748690 m!5707749))

(declare-fun m!5707751 () Bool)

(assert (=> b!4748690 m!5707751))

(declare-fun m!5707753 () Bool)

(assert (=> b!4748690 m!5707753))

(assert (=> b!4748570 d!1517630))

(declare-fun d!1517632 () Bool)

(declare-fun res!2013218 () Bool)

(declare-fun e!2962037 () Bool)

(assert (=> d!1517632 (=> res!2013218 e!2962037)))

(assert (=> d!1517632 (= res!2013218 (not ((_ is Cons!53046) (t!360490 l!14304))))))

(assert (=> d!1517632 (= (noDuplicateKeys!2112 (t!360490 l!14304)) e!2962037)))

(declare-fun b!4748692 () Bool)

(declare-fun e!2962038 () Bool)

(assert (=> b!4748692 (= e!2962037 e!2962038)))

(declare-fun res!2013219 () Bool)

(assert (=> b!4748692 (=> (not res!2013219) (not e!2962038))))

(assert (=> b!4748692 (= res!2013219 (not (containsKey!3533 (t!360490 (t!360490 l!14304)) (_1!30686 (h!59443 (t!360490 l!14304))))))))

(declare-fun b!4748693 () Bool)

(assert (=> b!4748693 (= e!2962038 (noDuplicateKeys!2112 (t!360490 (t!360490 l!14304))))))

(assert (= (and d!1517632 (not res!2013218)) b!4748692))

(assert (= (and b!4748692 res!2013219) b!4748693))

(declare-fun m!5707755 () Bool)

(assert (=> b!4748692 m!5707755))

(declare-fun m!5707757 () Bool)

(assert (=> b!4748693 m!5707757))

(assert (=> b!4748570 d!1517632))

(declare-fun d!1517634 () Bool)

(declare-fun e!2962039 () Bool)

(assert (=> d!1517634 e!2962039))

(declare-fun res!2013220 () Bool)

(assert (=> d!1517634 (=> (not res!2013220) (not e!2962039))))

(declare-fun lt!1911650 () ListMap!5473)

(assert (=> d!1517634 (= res!2013220 (contains!16468 lt!1911650 (_1!30686 t!14174)))))

(declare-fun lt!1911652 () List!53170)

(assert (=> d!1517634 (= lt!1911650 (ListMap!5474 lt!1911652))))

(declare-fun lt!1911653 () Unit!134897)

(declare-fun lt!1911651 () Unit!134897)

(assert (=> d!1517634 (= lt!1911653 lt!1911651)))

(assert (=> d!1517634 (= (getValueByKey!2062 lt!1911652 (_1!30686 t!14174)) (Some!12511 (_2!30686 t!14174)))))

(assert (=> d!1517634 (= lt!1911651 (lemmaContainsTupThenGetReturnValue!1139 lt!1911652 (_1!30686 t!14174) (_2!30686 t!14174)))))

(assert (=> d!1517634 (= lt!1911652 (insertNoDuplicatedKeys!647 (toList!6082 lt!1911296) (_1!30686 t!14174) (_2!30686 t!14174)))))

(assert (=> d!1517634 (= (+!2348 lt!1911296 t!14174) lt!1911650)))

(declare-fun b!4748694 () Bool)

(declare-fun res!2013221 () Bool)

(assert (=> b!4748694 (=> (not res!2013221) (not e!2962039))))

(assert (=> b!4748694 (= res!2013221 (= (getValueByKey!2062 (toList!6082 lt!1911650) (_1!30686 t!14174)) (Some!12511 (_2!30686 t!14174))))))

(declare-fun b!4748695 () Bool)

(assert (=> b!4748695 (= e!2962039 (contains!16469 (toList!6082 lt!1911650) t!14174))))

(assert (= (and d!1517634 res!2013220) b!4748694))

(assert (= (and b!4748694 res!2013221) b!4748695))

(declare-fun m!5707759 () Bool)

(assert (=> d!1517634 m!5707759))

(declare-fun m!5707761 () Bool)

(assert (=> d!1517634 m!5707761))

(declare-fun m!5707763 () Bool)

(assert (=> d!1517634 m!5707763))

(declare-fun m!5707765 () Bool)

(assert (=> d!1517634 m!5707765))

(declare-fun m!5707767 () Bool)

(assert (=> b!4748694 m!5707767))

(declare-fun m!5707769 () Bool)

(assert (=> b!4748695 m!5707769))

(assert (=> b!4748570 d!1517634))

(declare-fun d!1517636 () Bool)

(assert (=> d!1517636 (= (eq!1189 lt!1911296 (addToMapMapFromBucket!1538 l!14304 acc!1214)) (= (content!9509 (toList!6082 lt!1911296)) (content!9509 (toList!6082 (addToMapMapFromBucket!1538 l!14304 acc!1214)))))))

(declare-fun bs!1139295 () Bool)

(assert (= bs!1139295 d!1517636))

(declare-fun m!5707771 () Bool)

(assert (=> bs!1139295 m!5707771))

(declare-fun m!5707773 () Bool)

(assert (=> bs!1139295 m!5707773))

(assert (=> b!4748567 d!1517636))

(declare-fun bs!1139296 () Bool)

(declare-fun b!4748700 () Bool)

(assert (= bs!1139296 (and b!4748700 d!1517618)))

(declare-fun lambda!221171 () Int)

(assert (=> bs!1139296 (= (= acc!1214 lt!1911586) (= lambda!221171 lambda!221162))))

(declare-fun bs!1139297 () Bool)

(assert (= bs!1139297 (and b!4748700 b!4748691)))

(assert (=> bs!1139297 (= (= acc!1214 lt!1911294) (= lambda!221171 lambda!221167))))

(declare-fun bs!1139298 () Bool)

(assert (= bs!1139298 (and b!4748700 b!4748657)))

(assert (=> bs!1139298 (= (= acc!1214 lt!1911295) (= lambda!221171 lambda!221151))))

(declare-fun bs!1139299 () Bool)

(assert (= bs!1139299 (and b!4748700 b!4748690)))

(assert (=> bs!1139299 (= (= acc!1214 lt!1911633) (= lambda!221171 lambda!221169))))

(declare-fun bs!1139300 () Bool)

(assert (= bs!1139300 (and b!4748700 b!4748671)))

(assert (=> bs!1139300 (= (= acc!1214 lt!1911295) (= lambda!221171 lambda!221158))))

(declare-fun bs!1139301 () Bool)

(assert (= bs!1139301 (and b!4748700 b!4748684)))

(assert (=> bs!1139301 (= lambda!221171 lambda!221163)))

(declare-fun bs!1139302 () Bool)

(assert (= bs!1139302 (and b!4748700 b!4748683)))

(assert (=> bs!1139302 (= (= acc!1214 lt!1911605) (= lambda!221171 lambda!221165))))

(declare-fun bs!1139303 () Bool)

(assert (= bs!1139303 (and b!4748700 b!4748670)))

(assert (=> bs!1139303 (= (= acc!1214 lt!1911295) (= lambda!221171 lambda!221159))))

(assert (=> bs!1139302 (= lambda!221171 lambda!221164)))

(declare-fun bs!1139304 () Bool)

(assert (= bs!1139304 (and b!4748700 b!4748656)))

(assert (=> bs!1139304 (= (= acc!1214 lt!1911534) (= lambda!221171 lambda!221154))))

(declare-fun bs!1139305 () Bool)

(assert (= bs!1139305 (and b!4748700 d!1517624)))

(assert (=> bs!1139305 (= (= acc!1214 lt!1911611) (= lambda!221171 lambda!221166))))

(assert (=> bs!1139303 (= (= acc!1214 lt!1911580) (= lambda!221171 lambda!221160))))

(assert (=> bs!1139304 (= (= acc!1214 lt!1911295) (= lambda!221171 lambda!221152))))

(declare-fun bs!1139306 () Bool)

(assert (= bs!1139306 (and b!4748700 d!1517578)))

(assert (=> bs!1139306 (= (= acc!1214 lt!1911540) (= lambda!221171 lambda!221155))))

(assert (=> bs!1139299 (= (= acc!1214 lt!1911294) (= lambda!221171 lambda!221168))))

(declare-fun bs!1139307 () Bool)

(assert (= bs!1139307 (and b!4748700 d!1517630)))

(assert (=> bs!1139307 (= (= acc!1214 lt!1911639) (= lambda!221171 lambda!221170))))

(assert (=> b!4748700 true))

(declare-fun bs!1139308 () Bool)

(declare-fun b!4748699 () Bool)

(assert (= bs!1139308 (and b!4748699 b!4748700)))

(declare-fun lambda!221172 () Int)

(assert (=> bs!1139308 (= lambda!221172 lambda!221171)))

(declare-fun bs!1139309 () Bool)

(assert (= bs!1139309 (and b!4748699 d!1517618)))

(assert (=> bs!1139309 (= (= acc!1214 lt!1911586) (= lambda!221172 lambda!221162))))

(declare-fun bs!1139310 () Bool)

(assert (= bs!1139310 (and b!4748699 b!4748691)))

(assert (=> bs!1139310 (= (= acc!1214 lt!1911294) (= lambda!221172 lambda!221167))))

(declare-fun bs!1139311 () Bool)

(assert (= bs!1139311 (and b!4748699 b!4748657)))

(assert (=> bs!1139311 (= (= acc!1214 lt!1911295) (= lambda!221172 lambda!221151))))

(declare-fun bs!1139312 () Bool)

(assert (= bs!1139312 (and b!4748699 b!4748690)))

(assert (=> bs!1139312 (= (= acc!1214 lt!1911633) (= lambda!221172 lambda!221169))))

(declare-fun bs!1139313 () Bool)

(assert (= bs!1139313 (and b!4748699 b!4748671)))

(assert (=> bs!1139313 (= (= acc!1214 lt!1911295) (= lambda!221172 lambda!221158))))

(declare-fun bs!1139314 () Bool)

(assert (= bs!1139314 (and b!4748699 b!4748684)))

(assert (=> bs!1139314 (= lambda!221172 lambda!221163)))

(declare-fun bs!1139315 () Bool)

(assert (= bs!1139315 (and b!4748699 b!4748683)))

(assert (=> bs!1139315 (= (= acc!1214 lt!1911605) (= lambda!221172 lambda!221165))))

(declare-fun bs!1139316 () Bool)

(assert (= bs!1139316 (and b!4748699 b!4748670)))

(assert (=> bs!1139316 (= (= acc!1214 lt!1911295) (= lambda!221172 lambda!221159))))

(assert (=> bs!1139315 (= lambda!221172 lambda!221164)))

(declare-fun bs!1139317 () Bool)

(assert (= bs!1139317 (and b!4748699 b!4748656)))

(assert (=> bs!1139317 (= (= acc!1214 lt!1911534) (= lambda!221172 lambda!221154))))

(declare-fun bs!1139318 () Bool)

(assert (= bs!1139318 (and b!4748699 d!1517624)))

(assert (=> bs!1139318 (= (= acc!1214 lt!1911611) (= lambda!221172 lambda!221166))))

(assert (=> bs!1139316 (= (= acc!1214 lt!1911580) (= lambda!221172 lambda!221160))))

(assert (=> bs!1139317 (= (= acc!1214 lt!1911295) (= lambda!221172 lambda!221152))))

(declare-fun bs!1139319 () Bool)

(assert (= bs!1139319 (and b!4748699 d!1517578)))

(assert (=> bs!1139319 (= (= acc!1214 lt!1911540) (= lambda!221172 lambda!221155))))

(assert (=> bs!1139312 (= (= acc!1214 lt!1911294) (= lambda!221172 lambda!221168))))

(declare-fun bs!1139320 () Bool)

(assert (= bs!1139320 (and b!4748699 d!1517630)))

(assert (=> bs!1139320 (= (= acc!1214 lt!1911639) (= lambda!221172 lambda!221170))))

(assert (=> b!4748699 true))

(declare-fun lambda!221173 () Int)

(declare-fun lt!1911658 () ListMap!5473)

(assert (=> b!4748699 (= (= lt!1911658 acc!1214) (= lambda!221173 lambda!221172))))

(assert (=> bs!1139308 (= (= lt!1911658 acc!1214) (= lambda!221173 lambda!221171))))

(assert (=> bs!1139309 (= (= lt!1911658 lt!1911586) (= lambda!221173 lambda!221162))))

(assert (=> bs!1139310 (= (= lt!1911658 lt!1911294) (= lambda!221173 lambda!221167))))

(assert (=> bs!1139311 (= (= lt!1911658 lt!1911295) (= lambda!221173 lambda!221151))))

(assert (=> bs!1139312 (= (= lt!1911658 lt!1911633) (= lambda!221173 lambda!221169))))

(assert (=> bs!1139313 (= (= lt!1911658 lt!1911295) (= lambda!221173 lambda!221158))))

(assert (=> bs!1139314 (= (= lt!1911658 acc!1214) (= lambda!221173 lambda!221163))))

(assert (=> bs!1139315 (= (= lt!1911658 lt!1911605) (= lambda!221173 lambda!221165))))

(assert (=> bs!1139316 (= (= lt!1911658 lt!1911295) (= lambda!221173 lambda!221159))))

(assert (=> bs!1139315 (= (= lt!1911658 acc!1214) (= lambda!221173 lambda!221164))))

(assert (=> bs!1139317 (= (= lt!1911658 lt!1911534) (= lambda!221173 lambda!221154))))

(assert (=> bs!1139318 (= (= lt!1911658 lt!1911611) (= lambda!221173 lambda!221166))))

(assert (=> bs!1139316 (= (= lt!1911658 lt!1911580) (= lambda!221173 lambda!221160))))

(assert (=> bs!1139317 (= (= lt!1911658 lt!1911295) (= lambda!221173 lambda!221152))))

(assert (=> bs!1139319 (= (= lt!1911658 lt!1911540) (= lambda!221173 lambda!221155))))

(assert (=> bs!1139312 (= (= lt!1911658 lt!1911294) (= lambda!221173 lambda!221168))))

(assert (=> bs!1139320 (= (= lt!1911658 lt!1911639) (= lambda!221173 lambda!221170))))

(assert (=> b!4748699 true))

(declare-fun bs!1139321 () Bool)

(declare-fun d!1517638 () Bool)

(assert (= bs!1139321 (and d!1517638 b!4748699)))

(declare-fun lambda!221174 () Int)

(declare-fun lt!1911664 () ListMap!5473)

(assert (=> bs!1139321 (= (= lt!1911664 acc!1214) (= lambda!221174 lambda!221172))))

(declare-fun bs!1139322 () Bool)

(assert (= bs!1139322 (and d!1517638 b!4748700)))

(assert (=> bs!1139322 (= (= lt!1911664 acc!1214) (= lambda!221174 lambda!221171))))

(declare-fun bs!1139323 () Bool)

(assert (= bs!1139323 (and d!1517638 d!1517618)))

(assert (=> bs!1139323 (= (= lt!1911664 lt!1911586) (= lambda!221174 lambda!221162))))

(assert (=> bs!1139321 (= (= lt!1911664 lt!1911658) (= lambda!221174 lambda!221173))))

(declare-fun bs!1139324 () Bool)

(assert (= bs!1139324 (and d!1517638 b!4748691)))

(assert (=> bs!1139324 (= (= lt!1911664 lt!1911294) (= lambda!221174 lambda!221167))))

(declare-fun bs!1139325 () Bool)

(assert (= bs!1139325 (and d!1517638 b!4748657)))

(assert (=> bs!1139325 (= (= lt!1911664 lt!1911295) (= lambda!221174 lambda!221151))))

(declare-fun bs!1139326 () Bool)

(assert (= bs!1139326 (and d!1517638 b!4748690)))

(assert (=> bs!1139326 (= (= lt!1911664 lt!1911633) (= lambda!221174 lambda!221169))))

(declare-fun bs!1139327 () Bool)

(assert (= bs!1139327 (and d!1517638 b!4748671)))

(assert (=> bs!1139327 (= (= lt!1911664 lt!1911295) (= lambda!221174 lambda!221158))))

(declare-fun bs!1139328 () Bool)

(assert (= bs!1139328 (and d!1517638 b!4748684)))

(assert (=> bs!1139328 (= (= lt!1911664 acc!1214) (= lambda!221174 lambda!221163))))

(declare-fun bs!1139329 () Bool)

(assert (= bs!1139329 (and d!1517638 b!4748683)))

(assert (=> bs!1139329 (= (= lt!1911664 lt!1911605) (= lambda!221174 lambda!221165))))

(declare-fun bs!1139330 () Bool)

(assert (= bs!1139330 (and d!1517638 b!4748670)))

(assert (=> bs!1139330 (= (= lt!1911664 lt!1911295) (= lambda!221174 lambda!221159))))

(assert (=> bs!1139329 (= (= lt!1911664 acc!1214) (= lambda!221174 lambda!221164))))

(declare-fun bs!1139331 () Bool)

(assert (= bs!1139331 (and d!1517638 b!4748656)))

(assert (=> bs!1139331 (= (= lt!1911664 lt!1911534) (= lambda!221174 lambda!221154))))

(declare-fun bs!1139332 () Bool)

(assert (= bs!1139332 (and d!1517638 d!1517624)))

(assert (=> bs!1139332 (= (= lt!1911664 lt!1911611) (= lambda!221174 lambda!221166))))

(assert (=> bs!1139330 (= (= lt!1911664 lt!1911580) (= lambda!221174 lambda!221160))))

(assert (=> bs!1139331 (= (= lt!1911664 lt!1911295) (= lambda!221174 lambda!221152))))

(declare-fun bs!1139333 () Bool)

(assert (= bs!1139333 (and d!1517638 d!1517578)))

(assert (=> bs!1139333 (= (= lt!1911664 lt!1911540) (= lambda!221174 lambda!221155))))

(assert (=> bs!1139326 (= (= lt!1911664 lt!1911294) (= lambda!221174 lambda!221168))))

(declare-fun bs!1139334 () Bool)

(assert (= bs!1139334 (and d!1517638 d!1517630)))

(assert (=> bs!1139334 (= (= lt!1911664 lt!1911639) (= lambda!221174 lambda!221170))))

(assert (=> d!1517638 true))

(declare-fun b!4748696 () Bool)

(declare-fun e!2962042 () Bool)

(assert (=> b!4748696 (= e!2962042 (forall!11743 (toList!6082 acc!1214) lambda!221173))))

(declare-fun b!4748697 () Bool)

(declare-fun res!2013222 () Bool)

(declare-fun e!2962041 () Bool)

(assert (=> b!4748697 (=> (not res!2013222) (not e!2962041))))

(assert (=> b!4748697 (= res!2013222 (forall!11743 (toList!6082 acc!1214) lambda!221174))))

(declare-fun bm!332427 () Bool)

(declare-fun call!332434 () Unit!134897)

(assert (=> bm!332427 (= call!332434 (lemmaContainsAllItsOwnKeys!858 acc!1214))))

(declare-fun b!4748698 () Bool)

(assert (=> b!4748698 (= e!2962041 (invariantList!1575 (toList!6082 lt!1911664)))))

(assert (=> d!1517638 e!2962041))

(declare-fun res!2013223 () Bool)

(assert (=> d!1517638 (=> (not res!2013223) (not e!2962041))))

(assert (=> d!1517638 (= res!2013223 (forall!11743 l!14304 lambda!221174))))

(declare-fun e!2962040 () ListMap!5473)

(assert (=> d!1517638 (= lt!1911664 e!2962040)))

(declare-fun c!810900 () Bool)

(assert (=> d!1517638 (= c!810900 ((_ is Nil!53046) l!14304))))

(assert (=> d!1517638 (noDuplicateKeys!2112 l!14304)))

(assert (=> d!1517638 (= (addToMapMapFromBucket!1538 l!14304 acc!1214) lt!1911664)))

(declare-fun bm!332428 () Bool)

(declare-fun call!332432 () Bool)

(declare-fun lt!1911661 () ListMap!5473)

(assert (=> bm!332428 (= call!332432 (forall!11743 (ite c!810900 (toList!6082 acc!1214) (toList!6082 lt!1911661)) (ite c!810900 lambda!221171 lambda!221173)))))

(assert (=> b!4748699 (= e!2962040 lt!1911658)))

(assert (=> b!4748699 (= lt!1911661 (+!2348 acc!1214 (h!59443 l!14304)))))

(assert (=> b!4748699 (= lt!1911658 (addToMapMapFromBucket!1538 (t!360490 l!14304) (+!2348 acc!1214 (h!59443 l!14304))))))

(declare-fun lt!1911674 () Unit!134897)

(assert (=> b!4748699 (= lt!1911674 call!332434)))

(assert (=> b!4748699 (forall!11743 (toList!6082 acc!1214) lambda!221172)))

(declare-fun lt!1911662 () Unit!134897)

(assert (=> b!4748699 (= lt!1911662 lt!1911674)))

(assert (=> b!4748699 call!332432))

(declare-fun lt!1911672 () Unit!134897)

(declare-fun Unit!134998 () Unit!134897)

(assert (=> b!4748699 (= lt!1911672 Unit!134998)))

(assert (=> b!4748699 (forall!11743 (t!360490 l!14304) lambda!221173)))

(declare-fun lt!1911656 () Unit!134897)

(declare-fun Unit!134999 () Unit!134897)

(assert (=> b!4748699 (= lt!1911656 Unit!134999)))

(declare-fun lt!1911669 () Unit!134897)

(declare-fun Unit!135000 () Unit!134897)

(assert (=> b!4748699 (= lt!1911669 Unit!135000)))

(declare-fun lt!1911670 () Unit!134897)

(assert (=> b!4748699 (= lt!1911670 (forallContained!3769 (toList!6082 lt!1911661) lambda!221173 (h!59443 l!14304)))))

(assert (=> b!4748699 (contains!16468 lt!1911661 (_1!30686 (h!59443 l!14304)))))

(declare-fun lt!1911668 () Unit!134897)

(declare-fun Unit!135001 () Unit!134897)

(assert (=> b!4748699 (= lt!1911668 Unit!135001)))

(assert (=> b!4748699 (contains!16468 lt!1911658 (_1!30686 (h!59443 l!14304)))))

(declare-fun lt!1911663 () Unit!134897)

(declare-fun Unit!135002 () Unit!134897)

(assert (=> b!4748699 (= lt!1911663 Unit!135002)))

(declare-fun call!332433 () Bool)

(assert (=> b!4748699 call!332433))

(declare-fun lt!1911654 () Unit!134897)

(declare-fun Unit!135003 () Unit!134897)

(assert (=> b!4748699 (= lt!1911654 Unit!135003)))

(assert (=> b!4748699 (forall!11743 (toList!6082 lt!1911661) lambda!221173)))

(declare-fun lt!1911655 () Unit!134897)

(declare-fun Unit!135004 () Unit!134897)

(assert (=> b!4748699 (= lt!1911655 Unit!135004)))

(declare-fun lt!1911667 () Unit!134897)

(declare-fun Unit!135005 () Unit!134897)

(assert (=> b!4748699 (= lt!1911667 Unit!135005)))

(declare-fun lt!1911673 () Unit!134897)

(assert (=> b!4748699 (= lt!1911673 (addForallContainsKeyThenBeforeAdding!857 acc!1214 lt!1911658 (_1!30686 (h!59443 l!14304)) (_2!30686 (h!59443 l!14304))))))

(assert (=> b!4748699 (forall!11743 (toList!6082 acc!1214) lambda!221173)))

(declare-fun lt!1911660 () Unit!134897)

(assert (=> b!4748699 (= lt!1911660 lt!1911673)))

(assert (=> b!4748699 (forall!11743 (toList!6082 acc!1214) lambda!221173)))

(declare-fun lt!1911659 () Unit!134897)

(declare-fun Unit!135006 () Unit!134897)

(assert (=> b!4748699 (= lt!1911659 Unit!135006)))

(declare-fun res!2013224 () Bool)

(assert (=> b!4748699 (= res!2013224 (forall!11743 l!14304 lambda!221173))))

(assert (=> b!4748699 (=> (not res!2013224) (not e!2962042))))

(assert (=> b!4748699 e!2962042))

(declare-fun lt!1911665 () Unit!134897)

(declare-fun Unit!135007 () Unit!134897)

(assert (=> b!4748699 (= lt!1911665 Unit!135007)))

(assert (=> b!4748700 (= e!2962040 acc!1214)))

(declare-fun lt!1911657 () Unit!134897)

(assert (=> b!4748700 (= lt!1911657 call!332434)))

(assert (=> b!4748700 call!332433))

(declare-fun lt!1911671 () Unit!134897)

(assert (=> b!4748700 (= lt!1911671 lt!1911657)))

(assert (=> b!4748700 call!332432))

(declare-fun lt!1911666 () Unit!134897)

(declare-fun Unit!135008 () Unit!134897)

(assert (=> b!4748700 (= lt!1911666 Unit!135008)))

(declare-fun bm!332429 () Bool)

(assert (=> bm!332429 (= call!332433 (forall!11743 (ite c!810900 (toList!6082 acc!1214) l!14304) (ite c!810900 lambda!221171 lambda!221173)))))

(assert (= (and d!1517638 c!810900) b!4748700))

(assert (= (and d!1517638 (not c!810900)) b!4748699))

(assert (= (and b!4748699 res!2013224) b!4748696))

(assert (= (or b!4748700 b!4748699) bm!332427))

(assert (= (or b!4748700 b!4748699) bm!332429))

(assert (= (or b!4748700 b!4748699) bm!332428))

(assert (= (and d!1517638 res!2013223) b!4748697))

(assert (= (and b!4748697 res!2013222) b!4748698))

(declare-fun m!5707775 () Bool)

(assert (=> bm!332429 m!5707775))

(declare-fun m!5707777 () Bool)

(assert (=> b!4748696 m!5707777))

(declare-fun m!5707779 () Bool)

(assert (=> d!1517638 m!5707779))

(assert (=> d!1517638 m!5707237))

(assert (=> bm!332427 m!5707677))

(declare-fun m!5707781 () Bool)

(assert (=> b!4748698 m!5707781))

(declare-fun m!5707783 () Bool)

(assert (=> bm!332428 m!5707783))

(declare-fun m!5707785 () Bool)

(assert (=> b!4748697 m!5707785))

(assert (=> b!4748699 m!5707255))

(declare-fun m!5707787 () Bool)

(assert (=> b!4748699 m!5707787))

(assert (=> b!4748699 m!5707255))

(declare-fun m!5707789 () Bool)

(assert (=> b!4748699 m!5707789))

(declare-fun m!5707791 () Bool)

(assert (=> b!4748699 m!5707791))

(assert (=> b!4748699 m!5707777))

(declare-fun m!5707793 () Bool)

(assert (=> b!4748699 m!5707793))

(declare-fun m!5707795 () Bool)

(assert (=> b!4748699 m!5707795))

(assert (=> b!4748699 m!5707777))

(declare-fun m!5707797 () Bool)

(assert (=> b!4748699 m!5707797))

(declare-fun m!5707799 () Bool)

(assert (=> b!4748699 m!5707799))

(declare-fun m!5707801 () Bool)

(assert (=> b!4748699 m!5707801))

(declare-fun m!5707803 () Bool)

(assert (=> b!4748699 m!5707803))

(assert (=> b!4748567 d!1517638))

(declare-fun d!1517640 () Bool)

(declare-fun res!2013225 () Bool)

(declare-fun e!2962043 () Bool)

(assert (=> d!1517640 (=> res!2013225 e!2962043)))

(assert (=> d!1517640 (= res!2013225 (not ((_ is Cons!53046) l!14304)))))

(assert (=> d!1517640 (= (noDuplicateKeys!2112 l!14304) e!2962043)))

(declare-fun b!4748701 () Bool)

(declare-fun e!2962044 () Bool)

(assert (=> b!4748701 (= e!2962043 e!2962044)))

(declare-fun res!2013226 () Bool)

(assert (=> b!4748701 (=> (not res!2013226) (not e!2962044))))

(assert (=> b!4748701 (= res!2013226 (not (containsKey!3533 (t!360490 l!14304) (_1!30686 (h!59443 l!14304)))))))

(declare-fun b!4748702 () Bool)

(assert (=> b!4748702 (= e!2962044 (noDuplicateKeys!2112 (t!360490 l!14304)))))

(assert (= (and d!1517640 (not res!2013225)) b!4748701))

(assert (= (and b!4748701 res!2013226) b!4748702))

(declare-fun m!5707805 () Bool)

(assert (=> b!4748701 m!5707805))

(assert (=> b!4748702 m!5707273))

(assert (=> start!485100 d!1517640))

(declare-fun d!1517642 () Bool)

(assert (=> d!1517642 (= (inv!68302 acc!1214) (invariantList!1575 (toList!6082 acc!1214)))))

(declare-fun bs!1139335 () Bool)

(assert (= bs!1139335 d!1517642))

(declare-fun m!5707807 () Bool)

(assert (=> bs!1139335 m!5707807))

(assert (=> start!485100 d!1517642))

(declare-fun d!1517644 () Bool)

(assert (=> d!1517644 (= (eq!1189 lt!1911297 (addToMapMapFromBucket!1538 (t!360490 l!14304) (+!2348 lt!1911295 t!14174))) (= (content!9509 (toList!6082 lt!1911297)) (content!9509 (toList!6082 (addToMapMapFromBucket!1538 (t!360490 l!14304) (+!2348 lt!1911295 t!14174))))))))

(declare-fun bs!1139336 () Bool)

(assert (= bs!1139336 d!1517644))

(assert (=> bs!1139336 m!5707281))

(declare-fun m!5707809 () Bool)

(assert (=> bs!1139336 m!5707809))

(assert (=> b!4748566 d!1517644))

(declare-fun bs!1139337 () Bool)

(declare-fun b!4748707 () Bool)

(assert (= bs!1139337 (and b!4748707 b!4748699)))

(declare-fun lambda!221175 () Int)

(assert (=> bs!1139337 (= (= (+!2348 lt!1911295 t!14174) acc!1214) (= lambda!221175 lambda!221172))))

(declare-fun bs!1139338 () Bool)

(assert (= bs!1139338 (and b!4748707 b!4748700)))

(assert (=> bs!1139338 (= (= (+!2348 lt!1911295 t!14174) acc!1214) (= lambda!221175 lambda!221171))))

(declare-fun bs!1139339 () Bool)

(assert (= bs!1139339 (and b!4748707 d!1517618)))

(assert (=> bs!1139339 (= (= (+!2348 lt!1911295 t!14174) lt!1911586) (= lambda!221175 lambda!221162))))

(assert (=> bs!1139337 (= (= (+!2348 lt!1911295 t!14174) lt!1911658) (= lambda!221175 lambda!221173))))

(declare-fun bs!1139340 () Bool)

(assert (= bs!1139340 (and b!4748707 b!4748691)))

(assert (=> bs!1139340 (= (= (+!2348 lt!1911295 t!14174) lt!1911294) (= lambda!221175 lambda!221167))))

(declare-fun bs!1139341 () Bool)

(assert (= bs!1139341 (and b!4748707 d!1517638)))

(assert (=> bs!1139341 (= (= (+!2348 lt!1911295 t!14174) lt!1911664) (= lambda!221175 lambda!221174))))

(declare-fun bs!1139342 () Bool)

(assert (= bs!1139342 (and b!4748707 b!4748657)))

(assert (=> bs!1139342 (= (= (+!2348 lt!1911295 t!14174) lt!1911295) (= lambda!221175 lambda!221151))))

(declare-fun bs!1139343 () Bool)

(assert (= bs!1139343 (and b!4748707 b!4748690)))

(assert (=> bs!1139343 (= (= (+!2348 lt!1911295 t!14174) lt!1911633) (= lambda!221175 lambda!221169))))

(declare-fun bs!1139344 () Bool)

(assert (= bs!1139344 (and b!4748707 b!4748671)))

(assert (=> bs!1139344 (= (= (+!2348 lt!1911295 t!14174) lt!1911295) (= lambda!221175 lambda!221158))))

(declare-fun bs!1139345 () Bool)

(assert (= bs!1139345 (and b!4748707 b!4748684)))

(assert (=> bs!1139345 (= (= (+!2348 lt!1911295 t!14174) acc!1214) (= lambda!221175 lambda!221163))))

(declare-fun bs!1139346 () Bool)

(assert (= bs!1139346 (and b!4748707 b!4748683)))

(assert (=> bs!1139346 (= (= (+!2348 lt!1911295 t!14174) lt!1911605) (= lambda!221175 lambda!221165))))

(declare-fun bs!1139347 () Bool)

(assert (= bs!1139347 (and b!4748707 b!4748670)))

(assert (=> bs!1139347 (= (= (+!2348 lt!1911295 t!14174) lt!1911295) (= lambda!221175 lambda!221159))))

(assert (=> bs!1139346 (= (= (+!2348 lt!1911295 t!14174) acc!1214) (= lambda!221175 lambda!221164))))

(declare-fun bs!1139348 () Bool)

(assert (= bs!1139348 (and b!4748707 b!4748656)))

(assert (=> bs!1139348 (= (= (+!2348 lt!1911295 t!14174) lt!1911534) (= lambda!221175 lambda!221154))))

(declare-fun bs!1139349 () Bool)

(assert (= bs!1139349 (and b!4748707 d!1517624)))

(assert (=> bs!1139349 (= (= (+!2348 lt!1911295 t!14174) lt!1911611) (= lambda!221175 lambda!221166))))

(assert (=> bs!1139347 (= (= (+!2348 lt!1911295 t!14174) lt!1911580) (= lambda!221175 lambda!221160))))

(assert (=> bs!1139348 (= (= (+!2348 lt!1911295 t!14174) lt!1911295) (= lambda!221175 lambda!221152))))

(declare-fun bs!1139350 () Bool)

(assert (= bs!1139350 (and b!4748707 d!1517578)))

(assert (=> bs!1139350 (= (= (+!2348 lt!1911295 t!14174) lt!1911540) (= lambda!221175 lambda!221155))))

(assert (=> bs!1139343 (= (= (+!2348 lt!1911295 t!14174) lt!1911294) (= lambda!221175 lambda!221168))))

(declare-fun bs!1139351 () Bool)

(assert (= bs!1139351 (and b!4748707 d!1517630)))

(assert (=> bs!1139351 (= (= (+!2348 lt!1911295 t!14174) lt!1911639) (= lambda!221175 lambda!221170))))

(assert (=> b!4748707 true))

(declare-fun bs!1139352 () Bool)

(declare-fun b!4748706 () Bool)

(assert (= bs!1139352 (and b!4748706 b!4748699)))

(declare-fun lambda!221176 () Int)

(assert (=> bs!1139352 (= (= (+!2348 lt!1911295 t!14174) acc!1214) (= lambda!221176 lambda!221172))))

(declare-fun bs!1139353 () Bool)

(assert (= bs!1139353 (and b!4748706 b!4748700)))

(assert (=> bs!1139353 (= (= (+!2348 lt!1911295 t!14174) acc!1214) (= lambda!221176 lambda!221171))))

(declare-fun bs!1139354 () Bool)

(assert (= bs!1139354 (and b!4748706 d!1517618)))

(assert (=> bs!1139354 (= (= (+!2348 lt!1911295 t!14174) lt!1911586) (= lambda!221176 lambda!221162))))

(declare-fun bs!1139355 () Bool)

(assert (= bs!1139355 (and b!4748706 b!4748707)))

(assert (=> bs!1139355 (= lambda!221176 lambda!221175)))

(assert (=> bs!1139352 (= (= (+!2348 lt!1911295 t!14174) lt!1911658) (= lambda!221176 lambda!221173))))

(declare-fun bs!1139356 () Bool)

(assert (= bs!1139356 (and b!4748706 b!4748691)))

(assert (=> bs!1139356 (= (= (+!2348 lt!1911295 t!14174) lt!1911294) (= lambda!221176 lambda!221167))))

(declare-fun bs!1139357 () Bool)

(assert (= bs!1139357 (and b!4748706 d!1517638)))

(assert (=> bs!1139357 (= (= (+!2348 lt!1911295 t!14174) lt!1911664) (= lambda!221176 lambda!221174))))

(declare-fun bs!1139358 () Bool)

(assert (= bs!1139358 (and b!4748706 b!4748657)))

(assert (=> bs!1139358 (= (= (+!2348 lt!1911295 t!14174) lt!1911295) (= lambda!221176 lambda!221151))))

(declare-fun bs!1139359 () Bool)

(assert (= bs!1139359 (and b!4748706 b!4748690)))

(assert (=> bs!1139359 (= (= (+!2348 lt!1911295 t!14174) lt!1911633) (= lambda!221176 lambda!221169))))

(declare-fun bs!1139360 () Bool)

(assert (= bs!1139360 (and b!4748706 b!4748671)))

(assert (=> bs!1139360 (= (= (+!2348 lt!1911295 t!14174) lt!1911295) (= lambda!221176 lambda!221158))))

(declare-fun bs!1139361 () Bool)

(assert (= bs!1139361 (and b!4748706 b!4748684)))

(assert (=> bs!1139361 (= (= (+!2348 lt!1911295 t!14174) acc!1214) (= lambda!221176 lambda!221163))))

(declare-fun bs!1139362 () Bool)

(assert (= bs!1139362 (and b!4748706 b!4748683)))

(assert (=> bs!1139362 (= (= (+!2348 lt!1911295 t!14174) lt!1911605) (= lambda!221176 lambda!221165))))

(declare-fun bs!1139363 () Bool)

(assert (= bs!1139363 (and b!4748706 b!4748670)))

(assert (=> bs!1139363 (= (= (+!2348 lt!1911295 t!14174) lt!1911295) (= lambda!221176 lambda!221159))))

(assert (=> bs!1139362 (= (= (+!2348 lt!1911295 t!14174) acc!1214) (= lambda!221176 lambda!221164))))

(declare-fun bs!1139364 () Bool)

(assert (= bs!1139364 (and b!4748706 b!4748656)))

(assert (=> bs!1139364 (= (= (+!2348 lt!1911295 t!14174) lt!1911534) (= lambda!221176 lambda!221154))))

(declare-fun bs!1139365 () Bool)

(assert (= bs!1139365 (and b!4748706 d!1517624)))

(assert (=> bs!1139365 (= (= (+!2348 lt!1911295 t!14174) lt!1911611) (= lambda!221176 lambda!221166))))

(assert (=> bs!1139363 (= (= (+!2348 lt!1911295 t!14174) lt!1911580) (= lambda!221176 lambda!221160))))

(assert (=> bs!1139364 (= (= (+!2348 lt!1911295 t!14174) lt!1911295) (= lambda!221176 lambda!221152))))

(declare-fun bs!1139366 () Bool)

(assert (= bs!1139366 (and b!4748706 d!1517578)))

(assert (=> bs!1139366 (= (= (+!2348 lt!1911295 t!14174) lt!1911540) (= lambda!221176 lambda!221155))))

(assert (=> bs!1139359 (= (= (+!2348 lt!1911295 t!14174) lt!1911294) (= lambda!221176 lambda!221168))))

(declare-fun bs!1139367 () Bool)

(assert (= bs!1139367 (and b!4748706 d!1517630)))

(assert (=> bs!1139367 (= (= (+!2348 lt!1911295 t!14174) lt!1911639) (= lambda!221176 lambda!221170))))

(assert (=> b!4748706 true))

(declare-fun lt!1911679 () ListMap!5473)

(declare-fun lambda!221177 () Int)

(assert (=> bs!1139352 (= (= lt!1911679 acc!1214) (= lambda!221177 lambda!221172))))

(assert (=> bs!1139354 (= (= lt!1911679 lt!1911586) (= lambda!221177 lambda!221162))))

(assert (=> bs!1139355 (= (= lt!1911679 (+!2348 lt!1911295 t!14174)) (= lambda!221177 lambda!221175))))

(assert (=> bs!1139352 (= (= lt!1911679 lt!1911658) (= lambda!221177 lambda!221173))))

(assert (=> bs!1139356 (= (= lt!1911679 lt!1911294) (= lambda!221177 lambda!221167))))

(assert (=> bs!1139357 (= (= lt!1911679 lt!1911664) (= lambda!221177 lambda!221174))))

(assert (=> bs!1139353 (= (= lt!1911679 acc!1214) (= lambda!221177 lambda!221171))))

(assert (=> b!4748706 (= (= lt!1911679 (+!2348 lt!1911295 t!14174)) (= lambda!221177 lambda!221176))))

(assert (=> bs!1139358 (= (= lt!1911679 lt!1911295) (= lambda!221177 lambda!221151))))

(assert (=> bs!1139359 (= (= lt!1911679 lt!1911633) (= lambda!221177 lambda!221169))))

(assert (=> bs!1139360 (= (= lt!1911679 lt!1911295) (= lambda!221177 lambda!221158))))

(assert (=> bs!1139361 (= (= lt!1911679 acc!1214) (= lambda!221177 lambda!221163))))

(assert (=> bs!1139362 (= (= lt!1911679 lt!1911605) (= lambda!221177 lambda!221165))))

(assert (=> bs!1139363 (= (= lt!1911679 lt!1911295) (= lambda!221177 lambda!221159))))

(assert (=> bs!1139362 (= (= lt!1911679 acc!1214) (= lambda!221177 lambda!221164))))

(assert (=> bs!1139364 (= (= lt!1911679 lt!1911534) (= lambda!221177 lambda!221154))))

(assert (=> bs!1139365 (= (= lt!1911679 lt!1911611) (= lambda!221177 lambda!221166))))

(assert (=> bs!1139363 (= (= lt!1911679 lt!1911580) (= lambda!221177 lambda!221160))))

(assert (=> bs!1139364 (= (= lt!1911679 lt!1911295) (= lambda!221177 lambda!221152))))

(assert (=> bs!1139366 (= (= lt!1911679 lt!1911540) (= lambda!221177 lambda!221155))))

(assert (=> bs!1139359 (= (= lt!1911679 lt!1911294) (= lambda!221177 lambda!221168))))

(assert (=> bs!1139367 (= (= lt!1911679 lt!1911639) (= lambda!221177 lambda!221170))))

(assert (=> b!4748706 true))

(declare-fun bs!1139368 () Bool)

(declare-fun d!1517646 () Bool)

(assert (= bs!1139368 (and d!1517646 b!4748699)))

(declare-fun lt!1911685 () ListMap!5473)

(declare-fun lambda!221178 () Int)

(assert (=> bs!1139368 (= (= lt!1911685 acc!1214) (= lambda!221178 lambda!221172))))

(declare-fun bs!1139369 () Bool)

(assert (= bs!1139369 (and d!1517646 d!1517618)))

(assert (=> bs!1139369 (= (= lt!1911685 lt!1911586) (= lambda!221178 lambda!221162))))

(declare-fun bs!1139370 () Bool)

(assert (= bs!1139370 (and d!1517646 b!4748707)))

(assert (=> bs!1139370 (= (= lt!1911685 (+!2348 lt!1911295 t!14174)) (= lambda!221178 lambda!221175))))

(assert (=> bs!1139368 (= (= lt!1911685 lt!1911658) (= lambda!221178 lambda!221173))))

(declare-fun bs!1139371 () Bool)

(assert (= bs!1139371 (and d!1517646 b!4748691)))

(assert (=> bs!1139371 (= (= lt!1911685 lt!1911294) (= lambda!221178 lambda!221167))))

(declare-fun bs!1139372 () Bool)

(assert (= bs!1139372 (and d!1517646 d!1517638)))

(assert (=> bs!1139372 (= (= lt!1911685 lt!1911664) (= lambda!221178 lambda!221174))))

(declare-fun bs!1139373 () Bool)

(assert (= bs!1139373 (and d!1517646 b!4748706)))

(assert (=> bs!1139373 (= (= lt!1911685 lt!1911679) (= lambda!221178 lambda!221177))))

(declare-fun bs!1139374 () Bool)

(assert (= bs!1139374 (and d!1517646 b!4748700)))

(assert (=> bs!1139374 (= (= lt!1911685 acc!1214) (= lambda!221178 lambda!221171))))

(assert (=> bs!1139373 (= (= lt!1911685 (+!2348 lt!1911295 t!14174)) (= lambda!221178 lambda!221176))))

(declare-fun bs!1139375 () Bool)

(assert (= bs!1139375 (and d!1517646 b!4748657)))

(assert (=> bs!1139375 (= (= lt!1911685 lt!1911295) (= lambda!221178 lambda!221151))))

(declare-fun bs!1139376 () Bool)

(assert (= bs!1139376 (and d!1517646 b!4748690)))

(assert (=> bs!1139376 (= (= lt!1911685 lt!1911633) (= lambda!221178 lambda!221169))))

(declare-fun bs!1139377 () Bool)

(assert (= bs!1139377 (and d!1517646 b!4748671)))

(assert (=> bs!1139377 (= (= lt!1911685 lt!1911295) (= lambda!221178 lambda!221158))))

(declare-fun bs!1139378 () Bool)

(assert (= bs!1139378 (and d!1517646 b!4748684)))

(assert (=> bs!1139378 (= (= lt!1911685 acc!1214) (= lambda!221178 lambda!221163))))

(declare-fun bs!1139379 () Bool)

(assert (= bs!1139379 (and d!1517646 b!4748683)))

(assert (=> bs!1139379 (= (= lt!1911685 lt!1911605) (= lambda!221178 lambda!221165))))

(declare-fun bs!1139380 () Bool)

(assert (= bs!1139380 (and d!1517646 b!4748670)))

(assert (=> bs!1139380 (= (= lt!1911685 lt!1911295) (= lambda!221178 lambda!221159))))

(assert (=> bs!1139379 (= (= lt!1911685 acc!1214) (= lambda!221178 lambda!221164))))

(declare-fun bs!1139381 () Bool)

(assert (= bs!1139381 (and d!1517646 b!4748656)))

(assert (=> bs!1139381 (= (= lt!1911685 lt!1911534) (= lambda!221178 lambda!221154))))

(declare-fun bs!1139382 () Bool)

(assert (= bs!1139382 (and d!1517646 d!1517624)))

(assert (=> bs!1139382 (= (= lt!1911685 lt!1911611) (= lambda!221178 lambda!221166))))

(assert (=> bs!1139380 (= (= lt!1911685 lt!1911580) (= lambda!221178 lambda!221160))))

(assert (=> bs!1139381 (= (= lt!1911685 lt!1911295) (= lambda!221178 lambda!221152))))

(declare-fun bs!1139383 () Bool)

(assert (= bs!1139383 (and d!1517646 d!1517578)))

(assert (=> bs!1139383 (= (= lt!1911685 lt!1911540) (= lambda!221178 lambda!221155))))

(assert (=> bs!1139376 (= (= lt!1911685 lt!1911294) (= lambda!221178 lambda!221168))))

(declare-fun bs!1139384 () Bool)

(assert (= bs!1139384 (and d!1517646 d!1517630)))

(assert (=> bs!1139384 (= (= lt!1911685 lt!1911639) (= lambda!221178 lambda!221170))))

(assert (=> d!1517646 true))

(declare-fun b!4748703 () Bool)

(declare-fun e!2962047 () Bool)

(assert (=> b!4748703 (= e!2962047 (forall!11743 (toList!6082 (+!2348 lt!1911295 t!14174)) lambda!221177))))

(declare-fun b!4748704 () Bool)

(declare-fun res!2013227 () Bool)

(declare-fun e!2962046 () Bool)

(assert (=> b!4748704 (=> (not res!2013227) (not e!2962046))))

(assert (=> b!4748704 (= res!2013227 (forall!11743 (toList!6082 (+!2348 lt!1911295 t!14174)) lambda!221178))))

(declare-fun bm!332430 () Bool)

(declare-fun call!332437 () Unit!134897)

(assert (=> bm!332430 (= call!332437 (lemmaContainsAllItsOwnKeys!858 (+!2348 lt!1911295 t!14174)))))

(declare-fun b!4748705 () Bool)

(assert (=> b!4748705 (= e!2962046 (invariantList!1575 (toList!6082 lt!1911685)))))

(assert (=> d!1517646 e!2962046))

(declare-fun res!2013228 () Bool)

(assert (=> d!1517646 (=> (not res!2013228) (not e!2962046))))

(assert (=> d!1517646 (= res!2013228 (forall!11743 (t!360490 l!14304) lambda!221178))))

(declare-fun e!2962045 () ListMap!5473)

(assert (=> d!1517646 (= lt!1911685 e!2962045)))

(declare-fun c!810901 () Bool)

(assert (=> d!1517646 (= c!810901 ((_ is Nil!53046) (t!360490 l!14304)))))

(assert (=> d!1517646 (noDuplicateKeys!2112 (t!360490 l!14304))))

(assert (=> d!1517646 (= (addToMapMapFromBucket!1538 (t!360490 l!14304) (+!2348 lt!1911295 t!14174)) lt!1911685)))

(declare-fun lt!1911682 () ListMap!5473)

(declare-fun call!332435 () Bool)

(declare-fun bm!332431 () Bool)

(assert (=> bm!332431 (= call!332435 (forall!11743 (ite c!810901 (toList!6082 (+!2348 lt!1911295 t!14174)) (toList!6082 lt!1911682)) (ite c!810901 lambda!221175 lambda!221177)))))

(assert (=> b!4748706 (= e!2962045 lt!1911679)))

(assert (=> b!4748706 (= lt!1911682 (+!2348 (+!2348 lt!1911295 t!14174) (h!59443 (t!360490 l!14304))))))

(assert (=> b!4748706 (= lt!1911679 (addToMapMapFromBucket!1538 (t!360490 (t!360490 l!14304)) (+!2348 (+!2348 lt!1911295 t!14174) (h!59443 (t!360490 l!14304)))))))

(declare-fun lt!1911695 () Unit!134897)

(assert (=> b!4748706 (= lt!1911695 call!332437)))

(assert (=> b!4748706 (forall!11743 (toList!6082 (+!2348 lt!1911295 t!14174)) lambda!221176)))

(declare-fun lt!1911683 () Unit!134897)

(assert (=> b!4748706 (= lt!1911683 lt!1911695)))

(assert (=> b!4748706 call!332435))

(declare-fun lt!1911693 () Unit!134897)

(declare-fun Unit!135020 () Unit!134897)

(assert (=> b!4748706 (= lt!1911693 Unit!135020)))

(assert (=> b!4748706 (forall!11743 (t!360490 (t!360490 l!14304)) lambda!221177)))

(declare-fun lt!1911677 () Unit!134897)

(declare-fun Unit!135021 () Unit!134897)

(assert (=> b!4748706 (= lt!1911677 Unit!135021)))

(declare-fun lt!1911690 () Unit!134897)

(declare-fun Unit!135022 () Unit!134897)

(assert (=> b!4748706 (= lt!1911690 Unit!135022)))

(declare-fun lt!1911691 () Unit!134897)

(assert (=> b!4748706 (= lt!1911691 (forallContained!3769 (toList!6082 lt!1911682) lambda!221177 (h!59443 (t!360490 l!14304))))))

(assert (=> b!4748706 (contains!16468 lt!1911682 (_1!30686 (h!59443 (t!360490 l!14304))))))

(declare-fun lt!1911689 () Unit!134897)

(declare-fun Unit!135023 () Unit!134897)

(assert (=> b!4748706 (= lt!1911689 Unit!135023)))

(assert (=> b!4748706 (contains!16468 lt!1911679 (_1!30686 (h!59443 (t!360490 l!14304))))))

(declare-fun lt!1911684 () Unit!134897)

(declare-fun Unit!135024 () Unit!134897)

(assert (=> b!4748706 (= lt!1911684 Unit!135024)))

(declare-fun call!332436 () Bool)

(assert (=> b!4748706 call!332436))

(declare-fun lt!1911675 () Unit!134897)

(declare-fun Unit!135025 () Unit!134897)

(assert (=> b!4748706 (= lt!1911675 Unit!135025)))

(assert (=> b!4748706 (forall!11743 (toList!6082 lt!1911682) lambda!221177)))

(declare-fun lt!1911676 () Unit!134897)

(declare-fun Unit!135026 () Unit!134897)

(assert (=> b!4748706 (= lt!1911676 Unit!135026)))

(declare-fun lt!1911688 () Unit!134897)

(declare-fun Unit!135027 () Unit!134897)

(assert (=> b!4748706 (= lt!1911688 Unit!135027)))

(declare-fun lt!1911694 () Unit!134897)

(assert (=> b!4748706 (= lt!1911694 (addForallContainsKeyThenBeforeAdding!857 (+!2348 lt!1911295 t!14174) lt!1911679 (_1!30686 (h!59443 (t!360490 l!14304))) (_2!30686 (h!59443 (t!360490 l!14304)))))))

(assert (=> b!4748706 (forall!11743 (toList!6082 (+!2348 lt!1911295 t!14174)) lambda!221177)))

(declare-fun lt!1911681 () Unit!134897)

(assert (=> b!4748706 (= lt!1911681 lt!1911694)))

(assert (=> b!4748706 (forall!11743 (toList!6082 (+!2348 lt!1911295 t!14174)) lambda!221177)))

(declare-fun lt!1911680 () Unit!134897)

(declare-fun Unit!135028 () Unit!134897)

(assert (=> b!4748706 (= lt!1911680 Unit!135028)))

(declare-fun res!2013229 () Bool)

(assert (=> b!4748706 (= res!2013229 (forall!11743 (t!360490 l!14304) lambda!221177))))

(assert (=> b!4748706 (=> (not res!2013229) (not e!2962047))))

(assert (=> b!4748706 e!2962047))

(declare-fun lt!1911686 () Unit!134897)

(declare-fun Unit!135029 () Unit!134897)

(assert (=> b!4748706 (= lt!1911686 Unit!135029)))

(assert (=> b!4748707 (= e!2962045 (+!2348 lt!1911295 t!14174))))

(declare-fun lt!1911678 () Unit!134897)

(assert (=> b!4748707 (= lt!1911678 call!332437)))

(assert (=> b!4748707 call!332436))

(declare-fun lt!1911692 () Unit!134897)

(assert (=> b!4748707 (= lt!1911692 lt!1911678)))

(assert (=> b!4748707 call!332435))

(declare-fun lt!1911687 () Unit!134897)

(declare-fun Unit!135030 () Unit!134897)

(assert (=> b!4748707 (= lt!1911687 Unit!135030)))

(declare-fun bm!332432 () Bool)

(assert (=> bm!332432 (= call!332436 (forall!11743 (ite c!810901 (toList!6082 (+!2348 lt!1911295 t!14174)) (t!360490 l!14304)) (ite c!810901 lambda!221175 lambda!221177)))))

(assert (= (and d!1517646 c!810901) b!4748707))

(assert (= (and d!1517646 (not c!810901)) b!4748706))

(assert (= (and b!4748706 res!2013229) b!4748703))

(assert (= (or b!4748707 b!4748706) bm!332430))

(assert (= (or b!4748707 b!4748706) bm!332432))

(assert (= (or b!4748707 b!4748706) bm!332431))

(assert (= (and d!1517646 res!2013228) b!4748704))

(assert (= (and b!4748704 res!2013227) b!4748705))

(declare-fun m!5707811 () Bool)

(assert (=> bm!332432 m!5707811))

(declare-fun m!5707813 () Bool)

(assert (=> b!4748703 m!5707813))

(declare-fun m!5707815 () Bool)

(assert (=> d!1517646 m!5707815))

(assert (=> d!1517646 m!5707273))

(assert (=> bm!332430 m!5707243))

(declare-fun m!5707817 () Bool)

(assert (=> bm!332430 m!5707817))

(declare-fun m!5707819 () Bool)

(assert (=> b!4748705 m!5707819))

(declare-fun m!5707821 () Bool)

(assert (=> bm!332431 m!5707821))

(declare-fun m!5707823 () Bool)

(assert (=> b!4748704 m!5707823))

(assert (=> b!4748706 m!5707243))

(declare-fun m!5707825 () Bool)

(assert (=> b!4748706 m!5707825))

(declare-fun m!5707827 () Bool)

(assert (=> b!4748706 m!5707827))

(assert (=> b!4748706 m!5707825))

(declare-fun m!5707829 () Bool)

(assert (=> b!4748706 m!5707829))

(declare-fun m!5707831 () Bool)

(assert (=> b!4748706 m!5707831))

(assert (=> b!4748706 m!5707813))

(declare-fun m!5707833 () Bool)

(assert (=> b!4748706 m!5707833))

(assert (=> b!4748706 m!5707243))

(declare-fun m!5707835 () Bool)

(assert (=> b!4748706 m!5707835))

(assert (=> b!4748706 m!5707813))

(declare-fun m!5707837 () Bool)

(assert (=> b!4748706 m!5707837))

(declare-fun m!5707839 () Bool)

(assert (=> b!4748706 m!5707839))

(declare-fun m!5707841 () Bool)

(assert (=> b!4748706 m!5707841))

(declare-fun m!5707843 () Bool)

(assert (=> b!4748706 m!5707843))

(assert (=> b!4748566 d!1517646))

(declare-fun d!1517648 () Bool)

(declare-fun e!2962048 () Bool)

(assert (=> d!1517648 e!2962048))

(declare-fun res!2013230 () Bool)

(assert (=> d!1517648 (=> (not res!2013230) (not e!2962048))))

(declare-fun lt!1911696 () ListMap!5473)

(assert (=> d!1517648 (= res!2013230 (contains!16468 lt!1911696 (_1!30686 t!14174)))))

(declare-fun lt!1911698 () List!53170)

(assert (=> d!1517648 (= lt!1911696 (ListMap!5474 lt!1911698))))

(declare-fun lt!1911699 () Unit!134897)

(declare-fun lt!1911697 () Unit!134897)

(assert (=> d!1517648 (= lt!1911699 lt!1911697)))

(assert (=> d!1517648 (= (getValueByKey!2062 lt!1911698 (_1!30686 t!14174)) (Some!12511 (_2!30686 t!14174)))))

(assert (=> d!1517648 (= lt!1911697 (lemmaContainsTupThenGetReturnValue!1139 lt!1911698 (_1!30686 t!14174) (_2!30686 t!14174)))))

(assert (=> d!1517648 (= lt!1911698 (insertNoDuplicatedKeys!647 (toList!6082 lt!1911295) (_1!30686 t!14174) (_2!30686 t!14174)))))

(assert (=> d!1517648 (= (+!2348 lt!1911295 t!14174) lt!1911696)))

(declare-fun b!4748708 () Bool)

(declare-fun res!2013231 () Bool)

(assert (=> b!4748708 (=> (not res!2013231) (not e!2962048))))

(assert (=> b!4748708 (= res!2013231 (= (getValueByKey!2062 (toList!6082 lt!1911696) (_1!30686 t!14174)) (Some!12511 (_2!30686 t!14174))))))

(declare-fun b!4748709 () Bool)

(assert (=> b!4748709 (= e!2962048 (contains!16469 (toList!6082 lt!1911696) t!14174))))

(assert (= (and d!1517648 res!2013230) b!4748708))

(assert (= (and b!4748708 res!2013231) b!4748709))

(declare-fun m!5707845 () Bool)

(assert (=> d!1517648 m!5707845))

(declare-fun m!5707847 () Bool)

(assert (=> d!1517648 m!5707847))

(declare-fun m!5707849 () Bool)

(assert (=> d!1517648 m!5707849))

(declare-fun m!5707851 () Bool)

(assert (=> d!1517648 m!5707851))

(declare-fun m!5707853 () Bool)

(assert (=> b!4748708 m!5707853))

(declare-fun m!5707855 () Bool)

(assert (=> b!4748709 m!5707855))

(assert (=> b!4748566 d!1517648))

(declare-fun b!4748714 () Bool)

(declare-fun e!2962051 () Bool)

(declare-fun tp!1349888 () Bool)

(assert (=> b!4748714 (= e!2962051 (and tp_is_empty!31741 tp_is_empty!31743 tp!1349888))))

(assert (=> b!4748569 (= tp!1349881 e!2962051)))

(assert (= (and b!4748569 ((_ is Cons!53046) (toList!6082 acc!1214))) b!4748714))

(declare-fun e!2962052 () Bool)

(declare-fun b!4748715 () Bool)

(declare-fun tp!1349889 () Bool)

(assert (=> b!4748715 (= e!2962052 (and tp_is_empty!31741 tp_is_empty!31743 tp!1349889))))

(assert (=> b!4748568 (= tp!1349880 e!2962052)))

(assert (= (and b!4748568 ((_ is Cons!53046) (t!360490 l!14304))) b!4748715))

(check-sat (not d!1517618) (not b!4748654) (not b!4748677) (not b!4748715) (not bm!332421) (not b!4748698) (not b!4748697) (not b!4748655) (not b!4748690) (not bm!332413) (not b!4748703) (not b!4748689) (not bm!332428) (not bm!332418) (not d!1517628) (not bm!332414) (not b!4748714) (not d!1517578) (not b!4748656) (not b!4748667) (not b!4748680) (not bm!332424) (not bm!332425) (not bm!332429) (not d!1517630) (not b!4748706) (not b!4748696) (not b!4748695) (not b!4748694) (not d!1517638) (not d!1517576) (not b!4748653) (not bm!332427) (not b!4748577) (not b!4748669) (not d!1517634) (not d!1517648) (not b!4748688) (not bm!332431) (not bm!332419) (not bm!332430) (not b!4748583) (not b!4748687) (not b!4748681) (not b!4748701) tp_is_empty!31743 (not d!1517644) (not b!4748668) (not b!4748708) tp_is_empty!31741 (not d!1517646) (not b!4748685) (not d!1517626) (not b!4748692) (not b!4748682) (not b!4748693) (not b!4748582) (not bm!332412) (not bm!332426) (not d!1517636) (not b!4748699) (not b!4748702) (not d!1517624) (not d!1517574) (not b!4748686) (not d!1517620) (not d!1517622) (not b!4748676) (not b!4748683) (not b!4748705) (not d!1517642) (not bm!332423) (not b!4748576) (not bm!332422) (not bm!332420) (not b!4748709) (not bm!332432) (not b!4748670) (not b!4748704))
(check-sat)
