; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759706 () Bool)

(assert start!759706)

(declare-fun b!8060324 () Bool)

(assert (=> b!8060324 true))

(declare-fun b!8060326 () Bool)

(declare-fun e!4750130 () Bool)

(declare-fun tp!2414517 () Bool)

(assert (=> b!8060326 (= e!4750130 tp!2414517)))

(declare-fun b!8060323 () Bool)

(declare-fun res!3188865 () Bool)

(declare-fun e!4750129 () Bool)

(assert (=> b!8060323 (=> res!3188865 e!4750129)))

(declare-datatypes ((K!23091 0))(
  ( (K!23092 (val!33145 Int)) )
))
(declare-datatypes ((List!75828 0))(
  ( (Nil!75702) (Cons!75702 (h!82150 K!23091) (t!391600 List!75828)) )
))
(declare-fun lt!2733123 () List!75828)

(declare-datatypes ((B!4551 0))(
  ( (B!4552 (val!33146 Int)) )
))
(declare-datatypes ((tuple2!71110 0))(
  ( (tuple2!71111 (_1!38858 K!23091) (_2!38858 B!4551)) )
))
(declare-datatypes ((List!75829 0))(
  ( (Nil!75703) (Cons!75703 (h!82151 tuple2!71110) (t!391601 List!75829)) )
))
(declare-datatypes ((ListMap!7473 0))(
  ( (ListMap!7474 (toList!12011 List!75829)) )
))
(declare-fun thiss!41837 () ListMap!7473)

(declare-fun length!838 (List!75828) Int)

(declare-fun length!839 (List!75829) Int)

(assert (=> b!8060323 (= res!3188865 (not (= (length!838 lt!2733123) (length!839 (toList!12011 thiss!41837)))))))

(declare-fun lambda!475426 () Int)

(declare-fun b!8060325 () Bool)

(declare-fun content!16149 (List!75828) (Set K!23091))

(declare-fun map!18861 (List!75829 Int) List!75828)

(assert (=> b!8060325 (= e!4750129 (not (= (content!16149 lt!2733123) (content!16149 (map!18861 (toList!12011 thiss!41837) lambda!475426)))))))

(declare-fun res!3188866 () Bool)

(assert (=> start!759706 (=> res!3188866 e!4750129)))

(declare-fun noDuplicate!3173 (List!75828) Bool)

(assert (=> start!759706 (= res!3188866 (not (noDuplicate!3173 lt!2733123)))))

(declare-fun getKeysList!1284 (List!75829) List!75828)

(assert (=> start!759706 (= lt!2733123 (getKeysList!1284 (toList!12011 thiss!41837)))))

(assert (=> start!759706 e!4750129))

(declare-fun inv!97561 (ListMap!7473) Bool)

(assert (=> start!759706 (and (inv!97561 thiss!41837) e!4750130)))

(declare-fun res!3188864 () Bool)

(assert (=> b!8060324 (=> res!3188864 e!4750129)))

(declare-fun lambda!475425 () Int)

(declare-fun forall!18561 (List!75828 Int) Bool)

(assert (=> b!8060324 (= res!3188864 (not (forall!18561 lt!2733123 lambda!475425)))))

(assert (= (and start!759706 (not res!3188866)) b!8060323))

(assert (= (and b!8060323 (not res!3188865)) b!8060324))

(assert (= (and b!8060324 (not res!3188864)) b!8060325))

(assert (= start!759706 b!8060326))

(declare-fun m!8413404 () Bool)

(assert (=> b!8060323 m!8413404))

(declare-fun m!8413406 () Bool)

(assert (=> b!8060323 m!8413406))

(declare-fun m!8413408 () Bool)

(assert (=> b!8060325 m!8413408))

(declare-fun m!8413410 () Bool)

(assert (=> b!8060325 m!8413410))

(assert (=> b!8060325 m!8413410))

(declare-fun m!8413412 () Bool)

(assert (=> b!8060325 m!8413412))

(declare-fun m!8413414 () Bool)

(assert (=> start!759706 m!8413414))

(declare-fun m!8413416 () Bool)

(assert (=> start!759706 m!8413416))

(declare-fun m!8413418 () Bool)

(assert (=> start!759706 m!8413418))

(declare-fun m!8413420 () Bool)

(assert (=> b!8060324 m!8413420))

(push 1)

(assert (not b!8060326))

(assert (not b!8060323))

(assert (not b!8060325))

(assert (not b!8060324))

(assert (not start!759706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2399537 () Bool)

(declare-fun size!43772 (List!75828) Int)

(assert (=> d!2399537 (= (length!838 lt!2733123) (size!43772 lt!2733123))))

(declare-fun bs!1973646 () Bool)

(assert (= bs!1973646 d!2399537))

(declare-fun m!8413440 () Bool)

(assert (=> bs!1973646 m!8413440))

(assert (=> b!8060323 d!2399537))

(declare-fun d!2399539 () Bool)

(declare-fun size!43773 (List!75829) Int)

(assert (=> d!2399539 (= (length!839 (toList!12011 thiss!41837)) (size!43773 (toList!12011 thiss!41837)))))

(declare-fun bs!1973647 () Bool)

(assert (= bs!1973647 d!2399539))

(declare-fun m!8413442 () Bool)

(assert (=> bs!1973647 m!8413442))

(assert (=> b!8060323 d!2399539))

(declare-fun d!2399541 () Bool)

(declare-fun res!3188880 () Bool)

(declare-fun e!4750141 () Bool)

(assert (=> d!2399541 (=> res!3188880 e!4750141)))

(assert (=> d!2399541 (= res!3188880 (is-Nil!75702 lt!2733123))))

(assert (=> d!2399541 (= (forall!18561 lt!2733123 lambda!475425) e!4750141)))

(declare-fun b!8060347 () Bool)

(declare-fun e!4750142 () Bool)

(assert (=> b!8060347 (= e!4750141 e!4750142)))

(declare-fun res!3188881 () Bool)

(assert (=> b!8060347 (=> (not res!3188881) (not e!4750142))))

(declare-fun dynLambda!30284 (Int K!23091) Bool)

(assert (=> b!8060347 (= res!3188881 (dynLambda!30284 lambda!475425 (h!82150 lt!2733123)))))

(declare-fun b!8060348 () Bool)

(assert (=> b!8060348 (= e!4750142 (forall!18561 (t!391600 lt!2733123) lambda!475425))))

(assert (= (and d!2399541 (not res!3188880)) b!8060347))

(assert (= (and b!8060347 res!3188881) b!8060348))

(declare-fun b_lambda!290739 () Bool)

(assert (=> (not b_lambda!290739) (not b!8060347)))

(declare-fun m!8413444 () Bool)

(assert (=> b!8060347 m!8413444))

(declare-fun m!8413446 () Bool)

(assert (=> b!8060348 m!8413446))

(assert (=> b!8060324 d!2399541))

(declare-fun d!2399543 () Bool)

(declare-fun res!3188886 () Bool)

(declare-fun e!4750147 () Bool)

(assert (=> d!2399543 (=> res!3188886 e!4750147)))

(assert (=> d!2399543 (= res!3188886 (is-Nil!75702 lt!2733123))))

(assert (=> d!2399543 (= (noDuplicate!3173 lt!2733123) e!4750147)))

(declare-fun b!8060353 () Bool)

(declare-fun e!4750148 () Bool)

(assert (=> b!8060353 (= e!4750147 e!4750148)))

(declare-fun res!3188887 () Bool)

(assert (=> b!8060353 (=> (not res!3188887) (not e!4750148))))

(declare-fun contains!21353 (List!75828 K!23091) Bool)

(assert (=> b!8060353 (= res!3188887 (not (contains!21353 (t!391600 lt!2733123) (h!82150 lt!2733123))))))

(declare-fun b!8060354 () Bool)

(assert (=> b!8060354 (= e!4750148 (noDuplicate!3173 (t!391600 lt!2733123)))))

(assert (= (and d!2399543 (not res!3188886)) b!8060353))

(assert (= (and b!8060353 res!3188887) b!8060354))

(declare-fun m!8413448 () Bool)

(assert (=> b!8060353 m!8413448))

(declare-fun m!8413450 () Bool)

(assert (=> b!8060354 m!8413450))

(assert (=> start!759706 d!2399543))

(declare-fun bs!1973650 () Bool)

(declare-fun b!8060394 () Bool)

(assert (= bs!1973650 (and b!8060394 b!8060324)))

(declare-fun lambda!475441 () Int)

(assert (=> bs!1973650 (= (= (t!391601 (toList!12011 thiss!41837)) (toList!12011 thiss!41837)) (= lambda!475441 lambda!475425))))

(assert (=> b!8060394 true))

(declare-fun bs!1973651 () Bool)

(declare-fun b!8060398 () Bool)

(assert (= bs!1973651 (and b!8060398 b!8060324)))

(declare-fun lambda!475442 () Int)

(assert (=> bs!1973651 (= (= (Cons!75703 (h!82151 (toList!12011 thiss!41837)) (t!391601 (toList!12011 thiss!41837))) (toList!12011 thiss!41837)) (= lambda!475442 lambda!475425))))

(declare-fun bs!1973652 () Bool)

(assert (= bs!1973652 (and b!8060398 b!8060394)))

(assert (=> bs!1973652 (= (= (Cons!75703 (h!82151 (toList!12011 thiss!41837)) (t!391601 (toList!12011 thiss!41837))) (t!391601 (toList!12011 thiss!41837))) (= lambda!475442 lambda!475441))))

(assert (=> b!8060398 true))

(declare-fun bs!1973653 () Bool)

(declare-fun b!8060397 () Bool)

(assert (= bs!1973653 (and b!8060397 b!8060324)))

(declare-fun lambda!475443 () Int)

(assert (=> bs!1973653 (= lambda!475443 lambda!475425)))

(declare-fun bs!1973654 () Bool)

(assert (= bs!1973654 (and b!8060397 b!8060394)))

(assert (=> bs!1973654 (= (= (toList!12011 thiss!41837) (t!391601 (toList!12011 thiss!41837))) (= lambda!475443 lambda!475441))))

(declare-fun bs!1973655 () Bool)

(assert (= bs!1973655 (and b!8060397 b!8060398)))

(assert (=> bs!1973655 (= (= (toList!12011 thiss!41837) (Cons!75703 (h!82151 (toList!12011 thiss!41837)) (t!391601 (toList!12011 thiss!41837)))) (= lambda!475443 lambda!475442))))

(assert (=> b!8060397 true))

(declare-fun bs!1973656 () Bool)

(declare-fun b!8060399 () Bool)

(assert (= bs!1973656 (and b!8060399 b!8060325)))

(declare-fun lambda!475444 () Int)

(assert (=> bs!1973656 (= lambda!475444 lambda!475426)))

(declare-fun b!8060393 () Bool)

(declare-datatypes ((Unit!172830 0))(
  ( (Unit!172831) )
))
(declare-fun e!4750170 () Unit!172830)

(declare-fun Unit!172832 () Unit!172830)

(assert (=> b!8060393 (= e!4750170 Unit!172832)))

(assert (=> b!8060394 false))

(declare-fun lt!2733144 () Unit!172830)

(declare-fun forallContained!4705 (List!75828 Int K!23091) Unit!172830)

(assert (=> b!8060394 (= lt!2733144 (forallContained!4705 (getKeysList!1284 (t!391601 (toList!12011 thiss!41837))) lambda!475441 (_1!38858 (h!82151 (toList!12011 thiss!41837)))))))

(declare-fun Unit!172833 () Unit!172830)

(assert (=> b!8060394 (= e!4750170 Unit!172833)))

(declare-fun b!8060395 () Bool)

(declare-fun res!3188900 () Bool)

(declare-fun e!4750173 () Bool)

(assert (=> b!8060395 (=> (not res!3188900) (not e!4750173))))

(declare-fun lt!2733150 () List!75828)

(assert (=> b!8060395 (= res!3188900 (= (length!838 lt!2733150) (length!839 (toList!12011 thiss!41837))))))

(declare-fun b!8060396 () Bool)

(assert (=> b!8060396 false))

(declare-fun e!4750172 () Unit!172830)

(declare-fun Unit!172834 () Unit!172830)

(assert (=> b!8060396 (= e!4750172 Unit!172834)))

(declare-fun res!3188902 () Bool)

(assert (=> b!8060397 (=> (not res!3188902) (not e!4750173))))

(assert (=> b!8060397 (= res!3188902 (forall!18561 lt!2733150 lambda!475443))))

(declare-fun e!4750171 () List!75828)

(assert (=> b!8060398 (= e!4750171 (Cons!75702 (_1!38858 (h!82151 (toList!12011 thiss!41837))) (getKeysList!1284 (t!391601 (toList!12011 thiss!41837)))))))

(declare-fun c!1477096 () Bool)

(declare-fun containsKey!4964 (List!75829 K!23091) Bool)

(assert (=> b!8060398 (= c!1477096 (containsKey!4964 (t!391601 (toList!12011 thiss!41837)) (_1!38858 (h!82151 (toList!12011 thiss!41837)))))))

(declare-fun lt!2733148 () Unit!172830)

(assert (=> b!8060398 (= lt!2733148 e!4750172)))

(declare-fun c!1477095 () Bool)

(assert (=> b!8060398 (= c!1477095 (contains!21353 (getKeysList!1284 (t!391601 (toList!12011 thiss!41837))) (_1!38858 (h!82151 (toList!12011 thiss!41837)))))))

(declare-fun lt!2733147 () Unit!172830)

(assert (=> b!8060398 (= lt!2733147 e!4750170)))

(declare-fun lt!2733149 () List!75828)

(assert (=> b!8060398 (= lt!2733149 (getKeysList!1284 (t!391601 (toList!12011 thiss!41837))))))

(declare-fun lt!2733145 () Unit!172830)

(declare-fun lemmaForallContainsAddHeadPreserves!402 (List!75829 List!75828 tuple2!71110) Unit!172830)

(assert (=> b!8060398 (= lt!2733145 (lemmaForallContainsAddHeadPreserves!402 (t!391601 (toList!12011 thiss!41837)) lt!2733149 (h!82151 (toList!12011 thiss!41837))))))

(assert (=> b!8060398 (forall!18561 lt!2733149 lambda!475442)))

(declare-fun lt!2733146 () Unit!172830)

(assert (=> b!8060398 (= lt!2733146 lt!2733145)))

(assert (=> b!8060399 (= e!4750173 (= (content!16149 lt!2733150) (content!16149 (map!18861 (toList!12011 thiss!41837) lambda!475444))))))

(declare-fun b!8060401 () Bool)

(declare-fun Unit!172835 () Unit!172830)

(assert (=> b!8060401 (= e!4750172 Unit!172835)))

(declare-fun b!8060400 () Bool)

(assert (=> b!8060400 (= e!4750171 Nil!75702)))

(declare-fun d!2399547 () Bool)

(assert (=> d!2399547 e!4750173))

(declare-fun res!3188901 () Bool)

(assert (=> d!2399547 (=> (not res!3188901) (not e!4750173))))

(assert (=> d!2399547 (= res!3188901 (noDuplicate!3173 lt!2733150))))

(assert (=> d!2399547 (= lt!2733150 e!4750171)))

(declare-fun c!1477094 () Bool)

(assert (=> d!2399547 (= c!1477094 (is-Cons!75703 (toList!12011 thiss!41837)))))

(declare-fun invariantList!1997 (List!75829) Bool)

(assert (=> d!2399547 (invariantList!1997 (toList!12011 thiss!41837))))

(assert (=> d!2399547 (= (getKeysList!1284 (toList!12011 thiss!41837)) lt!2733150)))

(assert (= (and d!2399547 c!1477094) b!8060398))

(assert (= (and d!2399547 (not c!1477094)) b!8060400))

(assert (= (and b!8060398 c!1477096) b!8060396))

(assert (= (and b!8060398 (not c!1477096)) b!8060401))

(assert (= (and b!8060398 c!1477095) b!8060394))

(assert (= (and b!8060398 (not c!1477095)) b!8060393))

(assert (= (and d!2399547 res!3188901) b!8060395))

(assert (= (and b!8060395 res!3188900) b!8060397))

(assert (= (and b!8060397 res!3188902) b!8060399))

(declare-fun m!8413476 () Bool)

(assert (=> b!8060394 m!8413476))

(assert (=> b!8060394 m!8413476))

(declare-fun m!8413478 () Bool)

(assert (=> b!8060394 m!8413478))

(declare-fun m!8413480 () Bool)

(assert (=> b!8060395 m!8413480))

(assert (=> b!8060395 m!8413406))

(declare-fun m!8413482 () Bool)

(assert (=> b!8060397 m!8413482))

(declare-fun m!8413484 () Bool)

(assert (=> b!8060398 m!8413484))

(assert (=> b!8060398 m!8413476))

(declare-fun m!8413486 () Bool)

(assert (=> b!8060398 m!8413486))

(declare-fun m!8413488 () Bool)

(assert (=> b!8060398 m!8413488))

(assert (=> b!8060398 m!8413476))

(declare-fun m!8413490 () Bool)

(assert (=> b!8060398 m!8413490))

(declare-fun m!8413492 () Bool)

(assert (=> d!2399547 m!8413492))

(declare-fun m!8413494 () Bool)

(assert (=> d!2399547 m!8413494))

(declare-fun m!8413496 () Bool)

(assert (=> b!8060399 m!8413496))

(declare-fun m!8413498 () Bool)

(assert (=> b!8060399 m!8413498))

(assert (=> b!8060399 m!8413498))

(declare-fun m!8413500 () Bool)

(assert (=> b!8060399 m!8413500))

(assert (=> start!759706 d!2399547))

(declare-fun d!2399561 () Bool)

(assert (=> d!2399561 (= (inv!97561 thiss!41837) (invariantList!1997 (toList!12011 thiss!41837)))))

(declare-fun bs!1973657 () Bool)

(assert (= bs!1973657 d!2399561))

(assert (=> bs!1973657 m!8413494))

(assert (=> start!759706 d!2399561))

(declare-fun d!2399563 () Bool)

(declare-fun c!1477099 () Bool)

(assert (=> d!2399563 (= c!1477099 (is-Nil!75702 lt!2733123))))

(declare-fun e!4750180 () (Set K!23091))

(assert (=> d!2399563 (= (content!16149 lt!2733123) e!4750180)))

(declare-fun b!8060412 () Bool)

(assert (=> b!8060412 (= e!4750180 (as set.empty (Set K!23091)))))

(declare-fun b!8060413 () Bool)

(assert (=> b!8060413 (= e!4750180 (set.union (set.insert (h!82150 lt!2733123) (as set.empty (Set K!23091))) (content!16149 (t!391600 lt!2733123))))))

(assert (= (and d!2399563 c!1477099) b!8060412))

(assert (= (and d!2399563 (not c!1477099)) b!8060413))

(declare-fun m!8413502 () Bool)

(assert (=> b!8060413 m!8413502))

(declare-fun m!8413504 () Bool)

(assert (=> b!8060413 m!8413504))

(assert (=> b!8060325 d!2399563))

(declare-fun d!2399565 () Bool)

(declare-fun c!1477100 () Bool)

(assert (=> d!2399565 (= c!1477100 (is-Nil!75702 (map!18861 (toList!12011 thiss!41837) lambda!475426)))))

(declare-fun e!4750181 () (Set K!23091))

(assert (=> d!2399565 (= (content!16149 (map!18861 (toList!12011 thiss!41837) lambda!475426)) e!4750181)))

(declare-fun b!8060414 () Bool)

(assert (=> b!8060414 (= e!4750181 (as set.empty (Set K!23091)))))

(declare-fun b!8060415 () Bool)

(assert (=> b!8060415 (= e!4750181 (set.union (set.insert (h!82150 (map!18861 (toList!12011 thiss!41837) lambda!475426)) (as set.empty (Set K!23091))) (content!16149 (t!391600 (map!18861 (toList!12011 thiss!41837) lambda!475426)))))))

(assert (= (and d!2399565 c!1477100) b!8060414))

(assert (= (and d!2399565 (not c!1477100)) b!8060415))

(declare-fun m!8413506 () Bool)

(assert (=> b!8060415 m!8413506))

(declare-fun m!8413508 () Bool)

(assert (=> b!8060415 m!8413508))

(assert (=> b!8060325 d!2399565))

(declare-fun d!2399567 () Bool)

(declare-fun lt!2733153 () List!75828)

(assert (=> d!2399567 (= (size!43772 lt!2733153) (size!43773 (toList!12011 thiss!41837)))))

(declare-fun e!4750186 () List!75828)

(assert (=> d!2399567 (= lt!2733153 e!4750186)))

(declare-fun c!1477103 () Bool)

(assert (=> d!2399567 (= c!1477103 (is-Nil!75703 (toList!12011 thiss!41837)))))

(assert (=> d!2399567 (= (map!18861 (toList!12011 thiss!41837) lambda!475426) lt!2733153)))

(declare-fun b!8060422 () Bool)

(assert (=> b!8060422 (= e!4750186 Nil!75702)))

(declare-fun b!8060423 () Bool)

(declare-fun $colon$colon!3436 (List!75828 K!23091) List!75828)

(declare-fun dynLambda!30285 (Int tuple2!71110) K!23091)

(assert (=> b!8060423 (= e!4750186 ($colon$colon!3436 (map!18861 (t!391601 (toList!12011 thiss!41837)) lambda!475426) (dynLambda!30285 lambda!475426 (h!82151 (toList!12011 thiss!41837)))))))

(assert (= (and d!2399567 c!1477103) b!8060422))

(assert (= (and d!2399567 (not c!1477103)) b!8060423))

(declare-fun b_lambda!290745 () Bool)

(assert (=> (not b_lambda!290745) (not b!8060423)))

(declare-fun m!8413514 () Bool)

(assert (=> d!2399567 m!8413514))

(assert (=> d!2399567 m!8413442))

(declare-fun m!8413516 () Bool)

(assert (=> b!8060423 m!8413516))

(declare-fun m!8413518 () Bool)

(assert (=> b!8060423 m!8413518))

(assert (=> b!8060423 m!8413516))

(assert (=> b!8060423 m!8413518))

(declare-fun m!8413520 () Bool)

(assert (=> b!8060423 m!8413520))

(assert (=> b!8060325 d!2399567))

(declare-fun e!4750189 () Bool)

(declare-fun tp_is_empty!55319 () Bool)

(declare-fun b!8060428 () Bool)

(declare-fun tp_is_empty!55321 () Bool)

(declare-fun tp!2414523 () Bool)

(assert (=> b!8060428 (= e!4750189 (and tp_is_empty!55319 tp_is_empty!55321 tp!2414523))))

(assert (=> b!8060326 (= tp!2414517 e!4750189)))

(assert (= (and b!8060326 (is-Cons!75703 (toList!12011 thiss!41837))) b!8060428))

(declare-fun b_lambda!290747 () Bool)

(assert (= b_lambda!290745 (or b!8060325 b_lambda!290747)))

(declare-fun bs!1973658 () Bool)

(declare-fun d!2399571 () Bool)

(assert (= bs!1973658 (and d!2399571 b!8060325)))

(assert (=> bs!1973658 (= (dynLambda!30285 lambda!475426 (h!82151 (toList!12011 thiss!41837))) (_1!38858 (h!82151 (toList!12011 thiss!41837))))))

(assert (=> b!8060423 d!2399571))

(declare-fun b_lambda!290749 () Bool)

(assert (= b_lambda!290739 (or b!8060324 b_lambda!290749)))

(declare-fun bs!1973659 () Bool)

(declare-fun d!2399573 () Bool)

(assert (= bs!1973659 (and d!2399573 b!8060324)))

(assert (=> bs!1973659 (= (dynLambda!30284 lambda!475425 (h!82150 lt!2733123)) (containsKey!4964 (toList!12011 thiss!41837) (h!82150 lt!2733123)))))

(declare-fun m!8413522 () Bool)

(assert (=> bs!1973659 m!8413522))

(assert (=> b!8060347 d!2399573))

(push 1)

(assert (not d!2399561))

(assert (not b!8060397))

(assert (not b_lambda!290749))

(assert (not b!8060415))

(assert tp_is_empty!55319)

(assert (not b_lambda!290747))

(assert (not d!2399547))

(assert (not b!8060423))

(assert (not b!8060353))

(assert (not b!8060354))

(assert (not b!8060394))

(assert (not d!2399537))

(assert (not b!8060398))

(assert (not b!8060413))

(assert (not b!8060399))

(assert (not b!8060395))

(assert (not d!2399567))

(assert (not b!8060428))

(assert (not b!8060348))

(assert (not d!2399539))

(assert tp_is_empty!55321)

(assert (not bs!1973659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

