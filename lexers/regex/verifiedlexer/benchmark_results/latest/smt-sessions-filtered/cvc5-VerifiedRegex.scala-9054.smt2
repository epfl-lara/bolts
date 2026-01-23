; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486134 () Bool)

(assert start!486134)

(declare-fun b!4755424 () Bool)

(declare-fun e!2966614 () Bool)

(declare-datatypes ((K!14673 0))(
  ( (K!14674 (val!20009 Int)) )
))
(declare-datatypes ((V!14919 0))(
  ( (V!14920 (val!20010 Int)) )
))
(declare-datatypes ((tuple2!54978 0))(
  ( (tuple2!54979 (_1!30783 K!14673) (_2!30783 V!14919)) )
))
(declare-datatypes ((List!53273 0))(
  ( (Nil!53149) (Cons!53149 (h!59546 tuple2!54978) (t!360617 List!53273)) )
))
(declare-fun l!13115 () List!53273)

(declare-fun ListPrimitiveSize!340 (List!53273) Int)

(assert (=> b!4755424 (= e!2966614 (< (ListPrimitiveSize!340 l!13115) 0))))

(declare-fun b!4755425 () Bool)

(declare-fun e!2966615 () Bool)

(declare-fun tp!1350722 () Bool)

(assert (=> b!4755425 (= e!2966615 tp!1350722)))

(declare-fun res!2017408 () Bool)

(assert (=> start!486134 (=> (not res!2017408) (not e!2966614))))

(declare-fun noDuplicateKeys!2209 (List!53273) Bool)

(assert (=> start!486134 (= res!2017408 (noDuplicateKeys!2209 l!13115))))

(assert (=> start!486134 e!2966614))

(declare-fun e!2966616 () Bool)

(assert (=> start!486134 e!2966616))

(declare-datatypes ((ListMap!5663 0))(
  ( (ListMap!5664 (toList!6177 List!53273)) )
))
(declare-fun lhm1!51 () ListMap!5663)

(declare-fun e!2966613 () Bool)

(declare-fun inv!68544 (ListMap!5663) Bool)

(assert (=> start!486134 (and (inv!68544 lhm1!51) e!2966613)))

(declare-fun lhm2!51 () ListMap!5663)

(assert (=> start!486134 (and (inv!68544 lhm2!51) e!2966615)))

(declare-fun b!4755426 () Bool)

(declare-fun tp!1350720 () Bool)

(assert (=> b!4755426 (= e!2966613 tp!1350720)))

(declare-fun tp!1350721 () Bool)

(declare-fun tp_is_empty!32131 () Bool)

(declare-fun tp_is_empty!32129 () Bool)

(declare-fun b!4755427 () Bool)

(assert (=> b!4755427 (= e!2966616 (and tp_is_empty!32129 tp_is_empty!32131 tp!1350721))))

(declare-fun b!4755428 () Bool)

(declare-fun res!2017409 () Bool)

(assert (=> b!4755428 (=> (not res!2017409) (not e!2966614))))

(declare-fun eq!1272 (ListMap!5663 ListMap!5663) Bool)

(assert (=> b!4755428 (= res!2017409 (eq!1272 lhm1!51 lhm2!51))))

(assert (= (and start!486134 res!2017408) b!4755428))

(assert (= (and b!4755428 res!2017409) b!4755424))

(assert (= (and start!486134 (is-Cons!53149 l!13115)) b!4755427))

(assert (= start!486134 b!4755426))

(assert (= start!486134 b!4755425))

(declare-fun m!5725237 () Bool)

(assert (=> b!4755424 m!5725237))

(declare-fun m!5725239 () Bool)

(assert (=> start!486134 m!5725239))

(declare-fun m!5725241 () Bool)

(assert (=> start!486134 m!5725241))

(declare-fun m!5725243 () Bool)

(assert (=> start!486134 m!5725243))

(declare-fun m!5725245 () Bool)

(assert (=> b!4755428 m!5725245))

(push 1)

(assert (not b!4755426))

(assert (not b!4755428))

(assert (not b!4755425))

(assert tp_is_empty!32131)

(assert tp_is_empty!32129)

(assert (not b!4755427))

(assert (not start!486134))

(assert (not b!4755424))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1520579 () Bool)

(declare-fun content!9560 (List!53273) (Set tuple2!54978))

(assert (=> d!1520579 (= (eq!1272 lhm1!51 lhm2!51) (= (content!9560 (toList!6177 lhm1!51)) (content!9560 (toList!6177 lhm2!51))))))

(declare-fun bs!1146666 () Bool)

(assert (= bs!1146666 d!1520579))

(declare-fun m!5725257 () Bool)

(assert (=> bs!1146666 m!5725257))

(declare-fun m!5725259 () Bool)

(assert (=> bs!1146666 m!5725259))

(assert (=> b!4755428 d!1520579))

(declare-fun d!1520581 () Bool)

(declare-fun res!2017420 () Bool)

(declare-fun e!2966633 () Bool)

(assert (=> d!1520581 (=> res!2017420 e!2966633)))

(assert (=> d!1520581 (= res!2017420 (not (is-Cons!53149 l!13115)))))

(assert (=> d!1520581 (= (noDuplicateKeys!2209 l!13115) e!2966633)))

(declare-fun b!4755448 () Bool)

(declare-fun e!2966634 () Bool)

(assert (=> b!4755448 (= e!2966633 e!2966634)))

(declare-fun res!2017421 () Bool)

(assert (=> b!4755448 (=> (not res!2017421) (not e!2966634))))

(declare-fun containsKey!3603 (List!53273 K!14673) Bool)

(assert (=> b!4755448 (= res!2017421 (not (containsKey!3603 (t!360617 l!13115) (_1!30783 (h!59546 l!13115)))))))

(declare-fun b!4755449 () Bool)

(assert (=> b!4755449 (= e!2966634 (noDuplicateKeys!2209 (t!360617 l!13115)))))

(assert (= (and d!1520581 (not res!2017420)) b!4755448))

(assert (= (and b!4755448 res!2017421) b!4755449))

(declare-fun m!5725261 () Bool)

(assert (=> b!4755448 m!5725261))

(declare-fun m!5725263 () Bool)

(assert (=> b!4755449 m!5725263))

(assert (=> start!486134 d!1520581))

(declare-fun d!1520585 () Bool)

(declare-fun invariantList!1625 (List!53273) Bool)

(assert (=> d!1520585 (= (inv!68544 lhm1!51) (invariantList!1625 (toList!6177 lhm1!51)))))

(declare-fun bs!1146667 () Bool)

(assert (= bs!1146667 d!1520585))

(declare-fun m!5725265 () Bool)

(assert (=> bs!1146667 m!5725265))

(assert (=> start!486134 d!1520585))

(declare-fun d!1520587 () Bool)

(assert (=> d!1520587 (= (inv!68544 lhm2!51) (invariantList!1625 (toList!6177 lhm2!51)))))

(declare-fun bs!1146668 () Bool)

(assert (= bs!1146668 d!1520587))

(declare-fun m!5725267 () Bool)

(assert (=> bs!1146668 m!5725267))

(assert (=> start!486134 d!1520587))

(declare-fun d!1520589 () Bool)

(declare-fun lt!1922326 () Int)

(assert (=> d!1520589 (>= lt!1922326 0)))

(declare-fun e!2966643 () Int)

(assert (=> d!1520589 (= lt!1922326 e!2966643)))

(declare-fun c!811656 () Bool)

(assert (=> d!1520589 (= c!811656 (is-Nil!53149 l!13115))))

(assert (=> d!1520589 (= (ListPrimitiveSize!340 l!13115) lt!1922326)))

(declare-fun b!4755460 () Bool)

(assert (=> b!4755460 (= e!2966643 0)))

(declare-fun b!4755461 () Bool)

(assert (=> b!4755461 (= e!2966643 (+ 1 (ListPrimitiveSize!340 (t!360617 l!13115))))))

(assert (= (and d!1520589 c!811656) b!4755460))

(assert (= (and d!1520589 (not c!811656)) b!4755461))

(declare-fun m!5725269 () Bool)

(assert (=> b!4755461 m!5725269))

(assert (=> b!4755424 d!1520589))

(declare-fun tp!1350734 () Bool)

(declare-fun e!2966646 () Bool)

(declare-fun b!4755466 () Bool)

(assert (=> b!4755466 (= e!2966646 (and tp_is_empty!32129 tp_is_empty!32131 tp!1350734))))

(assert (=> b!4755427 (= tp!1350721 e!2966646)))

(assert (= (and b!4755427 (is-Cons!53149 (t!360617 l!13115))) b!4755466))

(declare-fun tp!1350735 () Bool)

(declare-fun e!2966647 () Bool)

(declare-fun b!4755467 () Bool)

(assert (=> b!4755467 (= e!2966647 (and tp_is_empty!32129 tp_is_empty!32131 tp!1350735))))

(assert (=> b!4755426 (= tp!1350720 e!2966647)))

(assert (= (and b!4755426 (is-Cons!53149 (toList!6177 lhm1!51))) b!4755467))

(declare-fun e!2966648 () Bool)

(declare-fun tp!1350736 () Bool)

(declare-fun b!4755468 () Bool)

(assert (=> b!4755468 (= e!2966648 (and tp_is_empty!32129 tp_is_empty!32131 tp!1350736))))

(assert (=> b!4755425 (= tp!1350722 e!2966648)))

(assert (= (and b!4755425 (is-Cons!53149 (toList!6177 lhm2!51))) b!4755468))

(push 1)

(assert (not b!4755461))

(assert (not d!1520587))

(assert (not d!1520585))

(assert (not b!4755449))

(assert (not b!4755448))

(assert (not d!1520579))

(assert (not b!4755466))

(assert (not b!4755467))

(assert (not b!4755468))

(assert tp_is_empty!32131)

(assert tp_is_empty!32129)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

