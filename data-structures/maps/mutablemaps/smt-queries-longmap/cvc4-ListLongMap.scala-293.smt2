; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5048 () Bool)

(assert start!5048)

(declare-fun b_free!1349 () Bool)

(declare-fun b_next!1349 () Bool)

(assert (=> start!5048 (= b_free!1349 (not b_next!1349))))

(declare-fun tp!5555 () Bool)

(declare-fun b_and!2309 () Bool)

(assert (=> start!5048 (= tp!5555 b_and!2309)))

(declare-fun k!388 () (_ BitVec 64))

(declare-datatypes ((B!756 0))(
  ( (B!757 (val!878 Int)) )
))
(declare-datatypes ((tuple2!1420 0))(
  ( (tuple2!1421 (_1!720 (_ BitVec 64)) (_2!720 B!756)) )
))
(declare-datatypes ((List!998 0))(
  ( (Nil!995) (Cons!994 (h!1562 tuple2!1420) (t!3827 List!998)) )
))
(declare-datatypes ((ListLongMap!1001 0))(
  ( (ListLongMap!1002 (toList!516 List!998)) )
))
(declare-fun lm!252 () ListLongMap!1001)

(declare-fun b!37604 () Bool)

(declare-fun p!304 () Int)

(declare-fun e!23814 () Bool)

(declare-fun dynLambda!180 (Int tuple2!1420) Bool)

(declare-fun apply!51 (ListLongMap!1001 (_ BitVec 64)) B!756)

(assert (=> b!37604 (= e!23814 (not (dynLambda!180 p!304 (tuple2!1421 k!388 (apply!51 lm!252 k!388)))))))

(declare-fun b!37605 () Bool)

(declare-fun res!22732 () Bool)

(assert (=> b!37605 (=> (not res!22732) (not e!23814))))

(declare-fun contains!464 (ListLongMap!1001 (_ BitVec 64)) Bool)

(assert (=> b!37605 (= res!22732 (contains!464 lm!252 k!388))))

(declare-fun b!37607 () Bool)

(declare-fun res!22731 () Bool)

(assert (=> b!37607 (=> (not res!22731) (not e!23814))))

(declare-fun e!23812 () Bool)

(assert (=> b!37607 (= res!22731 e!23812)))

(declare-fun res!22730 () Bool)

(assert (=> b!37607 (=> res!22730 e!23812)))

(declare-fun isEmpty!219 (ListLongMap!1001) Bool)

(assert (=> b!37607 (= res!22730 (isEmpty!219 lm!252))))

(declare-fun b!37608 () Bool)

(declare-fun head!850 (List!998) tuple2!1420)

(assert (=> b!37608 (= e!23812 (= (_1!720 (head!850 (toList!516 lm!252))) k!388))))

(declare-fun b!37606 () Bool)

(declare-fun e!23813 () Bool)

(declare-fun tp!5554 () Bool)

(assert (=> b!37606 (= e!23813 tp!5554)))

(declare-fun res!22729 () Bool)

(assert (=> start!5048 (=> (not res!22729) (not e!23814))))

(declare-fun forall!178 (List!998 Int) Bool)

(assert (=> start!5048 (= res!22729 (forall!178 (toList!516 lm!252) p!304))))

(assert (=> start!5048 e!23814))

(declare-fun inv!1648 (ListLongMap!1001) Bool)

(assert (=> start!5048 (and (inv!1648 lm!252) e!23813)))

(assert (=> start!5048 tp!5555))

(assert (=> start!5048 true))

(assert (= (and start!5048 res!22729) b!37605))

(assert (= (and b!37605 res!22732) b!37607))

(assert (= (and b!37607 (not res!22730)) b!37608))

(assert (= (and b!37607 res!22731) b!37604))

(assert (= start!5048 b!37606))

(declare-fun b_lambda!1985 () Bool)

(assert (=> (not b_lambda!1985) (not b!37604)))

(declare-fun t!3826 () Bool)

(declare-fun tb!815 () Bool)

(assert (=> (and start!5048 (= p!304 p!304) t!3826) tb!815))

(declare-fun result!1357 () Bool)

(assert (=> tb!815 (= result!1357 true)))

(assert (=> b!37604 t!3826))

(declare-fun b_and!2311 () Bool)

(assert (= b_and!2309 (and (=> t!3826 result!1357) b_and!2311)))

(declare-fun m!30411 () Bool)

(assert (=> b!37607 m!30411))

(declare-fun m!30413 () Bool)

(assert (=> b!37604 m!30413))

(declare-fun m!30415 () Bool)

(assert (=> b!37604 m!30415))

(declare-fun m!30417 () Bool)

(assert (=> start!5048 m!30417))

(declare-fun m!30419 () Bool)

(assert (=> start!5048 m!30419))

(declare-fun m!30421 () Bool)

(assert (=> b!37608 m!30421))

(declare-fun m!30423 () Bool)

(assert (=> b!37605 m!30423))

(push 1)

(assert (not b_next!1349))

(assert (not b!37606))

(assert (not b!37608))

(assert (not b_lambda!1985))

(assert b_and!2311)

(assert (not b!37607))

(assert (not b!37604))

(assert (not start!5048))

(assert (not b!37605))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2311)

(assert (not b_next!1349))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!1989 () Bool)

(assert (= b_lambda!1985 (or (and start!5048 b_free!1349) b_lambda!1989)))

(push 1)

(assert (not b_next!1349))

(assert (not b!37606))

(assert (not b!37608))

(assert (not b_lambda!1989))

(assert b_and!2311)

(assert (not b!37607))

(assert (not b!37604))

(assert (not start!5048))

(assert (not b!37605))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2311)

(assert (not b_next!1349))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6007 () Bool)

(declare-datatypes ((Option!96 0))(
  ( (Some!95 (v!1964 B!756)) (None!94) )
))
(declare-fun get!641 (Option!96) B!756)

(declare-fun getValueByKey!90 (List!998 (_ BitVec 64)) Option!96)

(assert (=> d!6007 (= (apply!51 lm!252 k!388) (get!641 (getValueByKey!90 (toList!516 lm!252) k!388)))))

(declare-fun bs!1470 () Bool)

(assert (= bs!1470 d!6007))

(declare-fun m!30430 () Bool)

(assert (=> bs!1470 m!30430))

(assert (=> bs!1470 m!30430))

(declare-fun m!30433 () Bool)

(assert (=> bs!1470 m!30433))

(assert (=> b!37604 d!6007))

(declare-fun d!6015 () Bool)

(declare-fun e!23831 () Bool)

(assert (=> d!6015 e!23831))

(declare-fun res!22744 () Bool)

(assert (=> d!6015 (=> res!22744 e!23831)))

(declare-fun lt!13861 () Bool)

(assert (=> d!6015 (= res!22744 (not lt!13861))))

(declare-fun lt!13867 () Bool)

(assert (=> d!6015 (= lt!13861 lt!13867)))

(declare-datatypes ((Unit!857 0))(
  ( (Unit!858) )
))
(declare-fun lt!13863 () Unit!857)

(declare-fun e!23829 () Unit!857)

(assert (=> d!6015 (= lt!13863 e!23829)))

(declare-fun c!4348 () Bool)

(assert (=> d!6015 (= c!4348 lt!13867)))

(declare-fun containsKey!54 (List!998 (_ BitVec 64)) Bool)

(assert (=> d!6015 (= lt!13867 (containsKey!54 (toList!516 lm!252) k!388))))

(assert (=> d!6015 (= (contains!464 lm!252 k!388) lt!13861)))

(declare-fun b!37628 () Bool)

(declare-fun lt!13866 () Unit!857)

(assert (=> b!37628 (= e!23829 lt!13866)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!51 (List!998 (_ BitVec 64)) Unit!857)

(assert (=> b!37628 (= lt!13866 (lemmaContainsKeyImpliesGetValueByKeyDefined!51 (toList!516 lm!252) k!388))))

(declare-fun isDefined!52 (Option!96) Bool)

(assert (=> b!37628 (isDefined!52 (getValueByKey!90 (toList!516 lm!252) k!388))))

(declare-fun b!37630 () Bool)

(declare-fun Unit!860 () Unit!857)

(assert (=> b!37630 (= e!23829 Unit!860)))

(declare-fun b!37632 () Bool)

(assert (=> b!37632 (= e!23831 (isDefined!52 (getValueByKey!90 (toList!516 lm!252) k!388)))))

(assert (= (and d!6015 c!4348) b!37628))

(assert (= (and d!6015 (not c!4348)) b!37630))

(assert (= (and d!6015 (not res!22744)) b!37632))

(declare-fun m!30447 () Bool)

(assert (=> d!6015 m!30447))

(declare-fun m!30449 () Bool)

(assert (=> b!37628 m!30449))

(assert (=> b!37628 m!30430))

(assert (=> b!37628 m!30430))

(declare-fun m!30453 () Bool)

(assert (=> b!37628 m!30453))

(assert (=> b!37632 m!30430))

(assert (=> b!37632 m!30430))

(assert (=> b!37632 m!30453))

(assert (=> b!37605 d!6015))

(declare-fun d!6026 () Bool)

(assert (=> d!6026 (= (head!850 (toList!516 lm!252)) (h!1562 (toList!516 lm!252)))))

(assert (=> b!37608 d!6026))

(declare-fun d!6029 () Bool)

(declare-fun res!22755 () Bool)

(declare-fun e!23843 () Bool)

(assert (=> d!6029 (=> res!22755 e!23843)))

(assert (=> d!6029 (= res!22755 (is-Nil!995 (toList!516 lm!252)))))

(assert (=> d!6029 (= (forall!178 (toList!516 lm!252) p!304) e!23843)))

(declare-fun b!37643 () Bool)

(declare-fun e!23844 () Bool)

(assert (=> b!37643 (= e!23843 e!23844)))

(declare-fun res!22756 () Bool)

(assert (=> b!37643 (=> (not res!22756) (not e!23844))))

(assert (=> b!37643 (= res!22756 (dynLambda!180 p!304 (h!1562 (toList!516 lm!252))))))

(declare-fun b!37644 () Bool)

(assert (=> b!37644 (= e!23844 (forall!178 (t!3827 (toList!516 lm!252)) p!304))))

(assert (= (and d!6029 (not res!22755)) b!37643))

(assert (= (and b!37643 res!22756) b!37644))

(declare-fun b_lambda!1997 () Bool)

(assert (=> (not b_lambda!1997) (not b!37643)))

(declare-fun t!3833 () Bool)

(declare-fun tb!821 () Bool)

(assert (=> (and start!5048 (= p!304 p!304) t!3833) tb!821))

(declare-fun result!1363 () Bool)

(assert (=> tb!821 (= result!1363 true)))

(assert (=> b!37643 t!3833))

(declare-fun b_and!2317 () Bool)

(assert (= b_and!2311 (and (=> t!3833 result!1363) b_and!2317)))

(declare-fun m!30463 () Bool)

(assert (=> b!37643 m!30463))

(declare-fun m!30465 () Bool)

(assert (=> b!37644 m!30465))

(assert (=> start!5048 d!6029))

(declare-fun d!6035 () Bool)

(declare-fun isStrictlySorted!186 (List!998) Bool)

(assert (=> d!6035 (= (inv!1648 lm!252) (isStrictlySorted!186 (toList!516 lm!252)))))

(declare-fun bs!1475 () Bool)

(assert (= bs!1475 d!6035))

(declare-fun m!30469 () Bool)

(assert (=> bs!1475 m!30469))

(assert (=> start!5048 d!6035))

(declare-fun d!6039 () Bool)

(declare-fun isEmpty!222 (List!998) Bool)

(assert (=> d!6039 (= (isEmpty!219 lm!252) (isEmpty!222 (toList!516 lm!252)))))

(declare-fun bs!1476 () Bool)

(assert (= bs!1476 d!6039))

(declare-fun m!30471 () Bool)

(assert (=> bs!1476 m!30471))

(assert (=> b!37607 d!6039))

(declare-fun b!37654 () Bool)

(declare-fun e!23850 () Bool)

(declare-fun tp_is_empty!1677 () Bool)

(declare-fun tp!5561 () Bool)

(assert (=> b!37654 (= e!23850 (and tp_is_empty!1677 tp!5561))))

(assert (=> b!37606 (= tp!5554 e!23850)))

(assert (= (and b!37606 (is-Cons!994 (toList!516 lm!252))) b!37654))

(declare-fun b_lambda!2001 () Bool)

(assert (= b_lambda!1997 (or (and start!5048 b_free!1349) b_lambda!2001)))

(push 1)

(assert (not b_next!1349))

(assert (not d!6035))

(assert tp_is_empty!1677)

(assert b_and!2317)

(assert (not b!37644))

(assert (not b!37654))

(assert (not b!37628))

(assert (not d!6007))

(assert (not d!6039))

(assert (not b_lambda!2001))

(assert (not b!37632))

(assert (not d!6015))

(assert (not b_lambda!1989))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2317)

(assert (not b_next!1349))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6061 () Bool)

(declare-fun res!22787 () Bool)

(declare-fun e!23899 () Bool)

(assert (=> d!6061 (=> res!22787 e!23899)))

(assert (=> d!6061 (= res!22787 (or (is-Nil!995 (toList!516 lm!252)) (is-Nil!995 (t!3827 (toList!516 lm!252)))))))

(assert (=> d!6061 (= (isStrictlySorted!186 (toList!516 lm!252)) e!23899)))

(declare-fun b!37720 () Bool)

(declare-fun e!23900 () Bool)

(assert (=> b!37720 (= e!23899 e!23900)))

(declare-fun res!22788 () Bool)

(assert (=> b!37720 (=> (not res!22788) (not e!23900))))

(assert (=> b!37720 (= res!22788 (bvslt (_1!720 (h!1562 (toList!516 lm!252))) (_1!720 (h!1562 (t!3827 (toList!516 lm!252))))))))

(declare-fun b!37721 () Bool)

(assert (=> b!37721 (= e!23900 (isStrictlySorted!186 (t!3827 (toList!516 lm!252))))))

(assert (= (and d!6061 (not res!22787)) b!37720))

(assert (= (and b!37720 res!22788) b!37721))

(declare-fun m!30501 () Bool)

(assert (=> b!37721 m!30501))

(assert (=> d!6035 d!6061))

(declare-fun d!6069 () Bool)

(assert (=> d!6069 (= (isEmpty!222 (toList!516 lm!252)) (is-Nil!995 (toList!516 lm!252)))))

(assert (=> d!6039 d!6069))

(declare-fun d!6073 () Bool)

(assert (=> d!6073 (isDefined!52 (getValueByKey!90 (toList!516 lm!252) k!388))))

(declare-fun lt!13885 () Unit!857)

(declare-fun choose!239 (List!998 (_ BitVec 64)) Unit!857)

(assert (=> d!6073 (= lt!13885 (choose!239 (toList!516 lm!252) k!388))))

(declare-fun e!23912 () Bool)

(assert (=> d!6073 e!23912))

(declare-fun res!22799 () Bool)

(assert (=> d!6073 (=> (not res!22799) (not e!23912))))

(assert (=> d!6073 (= res!22799 (isStrictlySorted!186 (toList!516 lm!252)))))

(assert (=> d!6073 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!51 (toList!516 lm!252) k!388) lt!13885)))

(declare-fun b!37733 () Bool)

(assert (=> b!37733 (= e!23912 (containsKey!54 (toList!516 lm!252) k!388))))

(assert (= (and d!6073 res!22799) b!37733))

(assert (=> d!6073 m!30430))

(assert (=> d!6073 m!30430))

(assert (=> d!6073 m!30453))

(declare-fun m!30507 () Bool)

(assert (=> d!6073 m!30507))

(assert (=> d!6073 m!30469))

(assert (=> b!37733 m!30447))

(assert (=> b!37628 d!6073))

(declare-fun d!6077 () Bool)

(declare-fun isEmpty!225 (Option!96) Bool)

(assert (=> d!6077 (= (isDefined!52 (getValueByKey!90 (toList!516 lm!252) k!388)) (not (isEmpty!225 (getValueByKey!90 (toList!516 lm!252) k!388))))))

(declare-fun bs!1479 () Bool)

(assert (= bs!1479 d!6077))

(assert (=> bs!1479 m!30430))

(declare-fun m!30509 () Bool)

(assert (=> bs!1479 m!30509))

(assert (=> b!37628 d!6077))

(declare-fun d!6079 () Bool)

(declare-fun c!4368 () Bool)

(assert (=> d!6079 (= c!4368 (and (is-Cons!994 (toList!516 lm!252)) (= (_1!720 (h!1562 (toList!516 lm!252))) k!388)))))

(declare-fun e!23921 () Option!96)

(assert (=> d!6079 (= (getValueByKey!90 (toList!516 lm!252) k!388) e!23921)))

(declare-fun b!37746 () Bool)

