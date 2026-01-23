; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!484894 () Bool)

(assert start!484894)

(declare-fun b!4747412 () Bool)

(declare-fun res!2012360 () Bool)

(declare-fun e!2961216 () Bool)

(assert (=> b!4747412 (=> (not res!2012360) (not e!2961216))))

(declare-datatypes ((K!14368 0))(
  ( (K!14369 (val!19765 Int)) )
))
(declare-datatypes ((V!14614 0))(
  ( (V!14615 (val!19766 Int)) )
))
(declare-datatypes ((tuple2!54734 0))(
  ( (tuple2!54735 (_1!30661 K!14368) (_2!30661 V!14614)) )
))
(declare-datatypes ((List!53145 0))(
  ( (Nil!53021) (Cons!53021 (h!59418 tuple2!54734) (t!360453 List!53145)) )
))
(declare-fun l!14304 () List!53145)

(assert (=> b!4747412 (= res!2012360 (not (is-Nil!53021 l!14304)))))

(declare-fun b!4747413 () Bool)

(declare-fun noDuplicateKeys!2087 (List!53145) Bool)

(assert (=> b!4747413 (= e!2961216 (not (noDuplicateKeys!2087 (t!360453 l!14304))))))

(declare-datatypes ((ListMap!5423 0))(
  ( (ListMap!5424 (toList!6057 List!53145)) )
))
(declare-fun lt!1909408 () ListMap!5423)

(declare-fun acc!1214 () ListMap!5423)

(declare-fun +!2323 (ListMap!5423 tuple2!54734) ListMap!5423)

(assert (=> b!4747413 (= lt!1909408 (+!2323 acc!1214 (h!59418 l!14304)))))

(declare-fun b!4747414 () Bool)

(declare-fun e!2961215 () Bool)

(declare-fun tp!1349674 () Bool)

(assert (=> b!4747414 (= e!2961215 tp!1349674)))

(declare-fun res!2012362 () Bool)

(assert (=> start!484894 (=> (not res!2012362) (not e!2961216))))

(assert (=> start!484894 (= res!2012362 (noDuplicateKeys!2087 l!14304))))

(assert (=> start!484894 e!2961216))

(declare-fun e!2961217 () Bool)

(assert (=> start!484894 e!2961217))

(declare-fun tp_is_empty!31641 () Bool)

(declare-fun tp_is_empty!31643 () Bool)

(assert (=> start!484894 (and tp_is_empty!31641 tp_is_empty!31643)))

(declare-fun inv!68241 (ListMap!5423) Bool)

(assert (=> start!484894 (and (inv!68241 acc!1214) e!2961215)))

(declare-fun b!4747415 () Bool)

(declare-fun tp!1349675 () Bool)

(assert (=> b!4747415 (= e!2961217 (and tp_is_empty!31641 tp_is_empty!31643 tp!1349675))))

(declare-fun b!4747416 () Bool)

(declare-fun res!2012361 () Bool)

(assert (=> b!4747416 (=> (not res!2012361) (not e!2961216))))

(declare-fun t!14174 () tuple2!54734)

(assert (=> b!4747416 (= res!2012361 (noDuplicateKeys!2087 (Cons!53021 t!14174 l!14304)))))

(assert (= (and start!484894 res!2012362) b!4747416))

(assert (= (and b!4747416 res!2012361) b!4747412))

(assert (= (and b!4747412 res!2012360) b!4747413))

(assert (= (and start!484894 (is-Cons!53021 l!14304)) b!4747415))

(assert (= start!484894 b!4747414))

(declare-fun m!5704659 () Bool)

(assert (=> b!4747413 m!5704659))

(declare-fun m!5704661 () Bool)

(assert (=> b!4747413 m!5704661))

(declare-fun m!5704663 () Bool)

(assert (=> start!484894 m!5704663))

(declare-fun m!5704665 () Bool)

(assert (=> start!484894 m!5704665))

(declare-fun m!5704667 () Bool)

(assert (=> b!4747416 m!5704667))

(push 1)

(assert tp_is_empty!31643)

(assert (not b!4747413))

(assert (not start!484894))

(assert (not b!4747414))

(assert tp_is_empty!31641)

(assert (not b!4747416))

(assert (not b!4747415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1517230 () Bool)

(declare-fun res!2012376 () Bool)

(declare-fun e!2961231 () Bool)

(assert (=> d!1517230 (=> res!2012376 e!2961231)))

(assert (=> d!1517230 (= res!2012376 (not (is-Cons!53021 (t!360453 l!14304))))))

(assert (=> d!1517230 (= (noDuplicateKeys!2087 (t!360453 l!14304)) e!2961231)))

(declare-fun b!4747436 () Bool)

(declare-fun e!2961232 () Bool)

(assert (=> b!4747436 (= e!2961231 e!2961232)))

(declare-fun res!2012377 () Bool)

(assert (=> b!4747436 (=> (not res!2012377) (not e!2961232))))

(declare-fun containsKey!3518 (List!53145 K!14368) Bool)

(assert (=> b!4747436 (= res!2012377 (not (containsKey!3518 (t!360453 (t!360453 l!14304)) (_1!30661 (h!59418 (t!360453 l!14304))))))))

(declare-fun b!4747437 () Bool)

(assert (=> b!4747437 (= e!2961232 (noDuplicateKeys!2087 (t!360453 (t!360453 l!14304))))))

(assert (= (and d!1517230 (not res!2012376)) b!4747436))

(assert (= (and b!4747436 res!2012377) b!4747437))

(declare-fun m!5704679 () Bool)

(assert (=> b!4747436 m!5704679))

(declare-fun m!5704681 () Bool)

(assert (=> b!4747437 m!5704681))

(assert (=> b!4747413 d!1517230))

(declare-fun d!1517234 () Bool)

(declare-fun e!2961241 () Bool)

(assert (=> d!1517234 e!2961241))

(declare-fun res!2012388 () Bool)

(assert (=> d!1517234 (=> (not res!2012388) (not e!2961241))))

(declare-fun lt!1909421 () ListMap!5423)

(declare-fun contains!16439 (ListMap!5423 K!14368) Bool)

(assert (=> d!1517234 (= res!2012388 (contains!16439 lt!1909421 (_1!30661 (h!59418 l!14304))))))

(declare-fun lt!1909423 () List!53145)

(assert (=> d!1517234 (= lt!1909421 (ListMap!5424 lt!1909423))))

(declare-datatypes ((Unit!134445 0))(
  ( (Unit!134446) )
))
(declare-fun lt!1909422 () Unit!134445)

(declare-fun lt!1909420 () Unit!134445)

(assert (=> d!1517234 (= lt!1909422 lt!1909420)))

(declare-datatypes ((Option!12498 0))(
  ( (None!12497) (Some!12497 (v!47192 V!14614)) )
))
(declare-fun getValueByKey!2048 (List!53145 K!14368) Option!12498)

(assert (=> d!1517234 (= (getValueByKey!2048 lt!1909423 (_1!30661 (h!59418 l!14304))) (Some!12497 (_2!30661 (h!59418 l!14304))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1125 (List!53145 K!14368 V!14614) Unit!134445)

(assert (=> d!1517234 (= lt!1909420 (lemmaContainsTupThenGetReturnValue!1125 lt!1909423 (_1!30661 (h!59418 l!14304)) (_2!30661 (h!59418 l!14304))))))

(declare-fun insertNoDuplicatedKeys!633 (List!53145 K!14368 V!14614) List!53145)

(assert (=> d!1517234 (= lt!1909423 (insertNoDuplicatedKeys!633 (toList!6057 acc!1214) (_1!30661 (h!59418 l!14304)) (_2!30661 (h!59418 l!14304))))))

(assert (=> d!1517234 (= (+!2323 acc!1214 (h!59418 l!14304)) lt!1909421)))

(declare-fun b!4747448 () Bool)

(declare-fun res!2012389 () Bool)

(assert (=> b!4747448 (=> (not res!2012389) (not e!2961241))))

(assert (=> b!4747448 (= res!2012389 (= (getValueByKey!2048 (toList!6057 lt!1909421) (_1!30661 (h!59418 l!14304))) (Some!12497 (_2!30661 (h!59418 l!14304)))))))

(declare-fun b!4747449 () Bool)

(declare-fun contains!16440 (List!53145 tuple2!54734) Bool)

(assert (=> b!4747449 (= e!2961241 (contains!16440 (toList!6057 lt!1909421) (h!59418 l!14304)))))

(assert (= (and d!1517234 res!2012388) b!4747448))

(assert (= (and b!4747448 res!2012389) b!4747449))

(declare-fun m!5704687 () Bool)

(assert (=> d!1517234 m!5704687))

(declare-fun m!5704689 () Bool)

(assert (=> d!1517234 m!5704689))

(declare-fun m!5704691 () Bool)

(assert (=> d!1517234 m!5704691))

(declare-fun m!5704693 () Bool)

(assert (=> d!1517234 m!5704693))

(declare-fun m!5704695 () Bool)

(assert (=> b!4747448 m!5704695))

(declare-fun m!5704697 () Bool)

(assert (=> b!4747449 m!5704697))

(assert (=> b!4747413 d!1517234))

(declare-fun d!1517238 () Bool)

(declare-fun res!2012390 () Bool)

(declare-fun e!2961242 () Bool)

(assert (=> d!1517238 (=> res!2012390 e!2961242)))

(assert (=> d!1517238 (= res!2012390 (not (is-Cons!53021 l!14304)))))

(assert (=> d!1517238 (= (noDuplicateKeys!2087 l!14304) e!2961242)))

(declare-fun b!4747450 () Bool)

(declare-fun e!2961243 () Bool)

(assert (=> b!4747450 (= e!2961242 e!2961243)))

(declare-fun res!2012391 () Bool)

(assert (=> b!4747450 (=> (not res!2012391) (not e!2961243))))

(assert (=> b!4747450 (= res!2012391 (not (containsKey!3518 (t!360453 l!14304) (_1!30661 (h!59418 l!14304)))))))

(declare-fun b!4747451 () Bool)

(assert (=> b!4747451 (= e!2961243 (noDuplicateKeys!2087 (t!360453 l!14304)))))

(assert (= (and d!1517238 (not res!2012390)) b!4747450))

(assert (= (and b!4747450 res!2012391) b!4747451))

(declare-fun m!5704699 () Bool)

(assert (=> b!4747450 m!5704699))

(assert (=> b!4747451 m!5704659))

(assert (=> start!484894 d!1517238))

(declare-fun d!1517240 () Bool)

(declare-fun invariantList!1560 (List!53145) Bool)

(assert (=> d!1517240 (= (inv!68241 acc!1214) (invariantList!1560 (toList!6057 acc!1214)))))

(declare-fun bs!1138481 () Bool)

(assert (= bs!1138481 d!1517240))

(declare-fun m!5704701 () Bool)

(assert (=> bs!1138481 m!5704701))

(assert (=> start!484894 d!1517240))

(declare-fun d!1517242 () Bool)

(declare-fun res!2012396 () Bool)

(declare-fun e!2961246 () Bool)

(assert (=> d!1517242 (=> res!2012396 e!2961246)))

(assert (=> d!1517242 (= res!2012396 (not (is-Cons!53021 (Cons!53021 t!14174 l!14304))))))

(assert (=> d!1517242 (= (noDuplicateKeys!2087 (Cons!53021 t!14174 l!14304)) e!2961246)))

(declare-fun b!4747456 () Bool)

(declare-fun e!2961247 () Bool)

(assert (=> b!4747456 (= e!2961246 e!2961247)))

(declare-fun res!2012397 () Bool)

(assert (=> b!4747456 (=> (not res!2012397) (not e!2961247))))

(assert (=> b!4747456 (= res!2012397 (not (containsKey!3518 (t!360453 (Cons!53021 t!14174 l!14304)) (_1!30661 (h!59418 (Cons!53021 t!14174 l!14304))))))))

(declare-fun b!4747457 () Bool)

(assert (=> b!4747457 (= e!2961247 (noDuplicateKeys!2087 (t!360453 (Cons!53021 t!14174 l!14304))))))

(assert (= (and d!1517242 (not res!2012396)) b!4747456))

(assert (= (and b!4747456 res!2012397) b!4747457))

(declare-fun m!5704703 () Bool)

(assert (=> b!4747456 m!5704703))

(declare-fun m!5704705 () Bool)

(assert (=> b!4747457 m!5704705))

(assert (=> b!4747416 d!1517242))

(declare-fun tp!1349684 () Bool)

(declare-fun b!4747464 () Bool)

(declare-fun e!2961251 () Bool)

(assert (=> b!4747464 (= e!2961251 (and tp_is_empty!31641 tp_is_empty!31643 tp!1349684))))

(assert (=> b!4747414 (= tp!1349674 e!2961251)))

(assert (= (and b!4747414 (is-Cons!53021 (toList!6057 acc!1214))) b!4747464))

(declare-fun b!4747465 () Bool)

(declare-fun tp!1349685 () Bool)

(declare-fun e!2961252 () Bool)

(assert (=> b!4747465 (= e!2961252 (and tp_is_empty!31641 tp_is_empty!31643 tp!1349685))))

(assert (=> b!4747415 (= tp!1349675 e!2961252)))

(assert (= (and b!4747415 (is-Cons!53021 (t!360453 l!14304))) b!4747465))

(push 1)

(assert (not b!4747437))

(assert (not d!1517240))

(assert (not b!4747451))

(assert (not b!4747450))

(assert (not b!4747456))

(assert (not b!4747465))

(assert (not b!4747448))

(assert (not b!4747449))

(assert tp_is_empty!31641)

(assert (not b!4747436))

(assert (not d!1517234))

(assert (not b!4747464))

(assert tp_is_empty!31643)

(assert (not b!4747457))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

