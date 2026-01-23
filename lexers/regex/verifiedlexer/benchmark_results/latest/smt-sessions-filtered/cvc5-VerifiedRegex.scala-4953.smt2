; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252154 () Bool)

(assert start!252154)

(declare-fun b!2597648 () Bool)

(assert (=> b!2597648 true))

(declare-fun bs!473053 () Bool)

(declare-fun b!2597644 () Bool)

(assert (= bs!473053 (and b!2597644 b!2597648)))

(declare-fun lambda!97208 () Int)

(declare-fun lambda!97207 () Int)

(assert (=> bs!473053 (not (= lambda!97208 lambda!97207))))

(assert (=> b!2597644 true))

(declare-fun b!2597642 () Bool)

(declare-fun res!1093609 () Bool)

(declare-fun e!1639573 () Bool)

(assert (=> b!2597642 (=> (not res!1093609) (not e!1639573))))

(declare-datatypes ((B!2231 0))(
  ( (B!2232 (val!9583 Int)) )
))
(declare-datatypes ((List!30016 0))(
  ( (Nil!29916) (Cons!29916 (h!35336 B!2231) (t!213029 List!30016)) )
))
(declare-fun l1!1546 () List!30016)

(assert (=> b!2597642 (= res!1093609 (is-Nil!29916 l1!1546))))

(declare-fun b!2597643 () Bool)

(declare-fun e!1639572 () Bool)

(declare-fun tp_is_empty!13511 () Bool)

(declare-fun tp!823374 () Bool)

(assert (=> b!2597643 (= e!1639572 (and tp_is_empty!13511 tp!823374))))

(declare-fun exists!941 (List!30016 Int) Bool)

(assert (=> b!2597644 (= e!1639573 (not (exists!941 l1!1546 lambda!97208)))))

(declare-fun b!2597646 () Bool)

(declare-fun e!1639576 () Bool)

(declare-fun l2!1515 () List!30016)

(declare-fun contains!5464 (List!30016 B!2231) Bool)

(assert (=> b!2597646 (= e!1639576 (contains!5464 l2!1515 (h!35336 l1!1546)))))

(declare-fun b!2597647 () Bool)

(declare-fun res!1093606 () Bool)

(assert (=> b!2597647 (=> (not res!1093606) (not e!1639573))))

(assert (=> b!2597647 (= res!1093606 e!1639576)))

(declare-fun res!1093607 () Bool)

(assert (=> b!2597647 (=> res!1093607 e!1639576)))

(assert (=> b!2597647 (= res!1093607 (not (is-Cons!29916 l1!1546)))))

(declare-fun res!1093608 () Bool)

(assert (=> b!2597648 (=> (not res!1093608) (not e!1639573))))

(declare-fun forall!6153 (List!30016 Int) Bool)

(assert (=> b!2597648 (= res!1093608 (forall!6153 l2!1515 lambda!97207))))

(declare-fun b!2597649 () Bool)

(declare-fun e!1639575 () Bool)

(declare-fun tp!823373 () Bool)

(assert (=> b!2597649 (= e!1639575 (and tp_is_empty!13511 tp!823373))))

(declare-fun b!2597650 () Bool)

(declare-fun res!1093612 () Bool)

(assert (=> b!2597650 (=> (not res!1093612) (not e!1639573))))

(declare-fun size!23221 (List!30016) Int)

(assert (=> b!2597650 (= res!1093612 (> (size!23221 l1!1546) (size!23221 l2!1515)))))

(declare-fun b!2597651 () Bool)

(declare-fun e!1639574 () Bool)

(assert (=> b!2597651 (= e!1639574 (not (contains!5464 l2!1515 (h!35336 l1!1546))))))

(declare-fun b!2597652 () Bool)

(declare-fun res!1093610 () Bool)

(assert (=> b!2597652 (=> (not res!1093610) (not e!1639573))))

(declare-fun noDuplicate!464 (List!30016) Bool)

(assert (=> b!2597652 (= res!1093610 (noDuplicate!464 l2!1515))))

(declare-fun res!1093611 () Bool)

(assert (=> start!252154 (=> (not res!1093611) (not e!1639573))))

(assert (=> start!252154 (= res!1093611 (noDuplicate!464 l1!1546))))

(assert (=> start!252154 e!1639573))

(assert (=> start!252154 e!1639575))

(assert (=> start!252154 e!1639572))

(declare-fun b!2597645 () Bool)

(declare-fun res!1093605 () Bool)

(assert (=> b!2597645 (=> (not res!1093605) (not e!1639573))))

(assert (=> b!2597645 (= res!1093605 e!1639574)))

(declare-fun res!1093604 () Bool)

(assert (=> b!2597645 (=> res!1093604 e!1639574)))

(assert (=> b!2597645 (= res!1093604 (not (is-Cons!29916 l1!1546)))))

(assert (= (and start!252154 res!1093611) b!2597652))

(assert (= (and b!2597652 res!1093610) b!2597650))

(assert (= (and b!2597650 res!1093612) b!2597648))

(assert (= (and b!2597648 res!1093608) b!2597645))

(assert (= (and b!2597645 (not res!1093604)) b!2597651))

(assert (= (and b!2597645 res!1093605) b!2597647))

(assert (= (and b!2597647 (not res!1093607)) b!2597646))

(assert (= (and b!2597647 res!1093606) b!2597642))

(assert (= (and b!2597642 res!1093609) b!2597644))

(assert (= (and start!252154 (is-Cons!29916 l1!1546)) b!2597649))

(assert (= (and start!252154 (is-Cons!29916 l2!1515)) b!2597643))

(declare-fun m!2934009 () Bool)

(assert (=> b!2597644 m!2934009))

(declare-fun m!2934011 () Bool)

(assert (=> b!2597652 m!2934011))

(declare-fun m!2934013 () Bool)

(assert (=> b!2597648 m!2934013))

(declare-fun m!2934015 () Bool)

(assert (=> start!252154 m!2934015))

(declare-fun m!2934017 () Bool)

(assert (=> b!2597651 m!2934017))

(assert (=> b!2597646 m!2934017))

(declare-fun m!2934019 () Bool)

(assert (=> b!2597650 m!2934019))

(declare-fun m!2934021 () Bool)

(assert (=> b!2597650 m!2934021))

(push 1)

(assert (not start!252154))

(assert (not b!2597648))

(assert (not b!2597643))

(assert tp_is_empty!13511)

(assert (not b!2597649))

(assert (not b!2597644))

(assert (not b!2597646))

(assert (not b!2597650))

(assert (not b!2597652))

(assert (not b!2597651))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736110 () Bool)

(declare-fun res!1093644 () Bool)

(declare-fun e!1639600 () Bool)

(assert (=> d!736110 (=> res!1093644 e!1639600)))

(assert (=> d!736110 (= res!1093644 (is-Nil!29916 l2!1515))))

(assert (=> d!736110 (= (forall!6153 l2!1515 lambda!97207) e!1639600)))

(declare-fun b!2597694 () Bool)

(declare-fun e!1639601 () Bool)

(assert (=> b!2597694 (= e!1639600 e!1639601)))

(declare-fun res!1093645 () Bool)

(assert (=> b!2597694 (=> (not res!1093645) (not e!1639601))))

(declare-fun dynLambda!12665 (Int B!2231) Bool)

(assert (=> b!2597694 (= res!1093645 (dynLambda!12665 lambda!97207 (h!35336 l2!1515)))))

(declare-fun b!2597695 () Bool)

(assert (=> b!2597695 (= e!1639601 (forall!6153 (t!213029 l2!1515) lambda!97207))))

(assert (= (and d!736110 (not res!1093644)) b!2597694))

(assert (= (and b!2597694 res!1093645) b!2597695))

(declare-fun b_lambda!77723 () Bool)

(assert (=> (not b_lambda!77723) (not b!2597694)))

(declare-fun m!2934037 () Bool)

(assert (=> b!2597694 m!2934037))

(declare-fun m!2934039 () Bool)

(assert (=> b!2597695 m!2934039))

(assert (=> b!2597648 d!736110))

(declare-fun d!736114 () Bool)

(declare-fun lt!914850 () Int)

(assert (=> d!736114 (>= lt!914850 0)))

(declare-fun e!1639604 () Int)

(assert (=> d!736114 (= lt!914850 e!1639604)))

(declare-fun c!418441 () Bool)

(assert (=> d!736114 (= c!418441 (is-Nil!29916 l1!1546))))

(assert (=> d!736114 (= (size!23221 l1!1546) lt!914850)))

(declare-fun b!2597700 () Bool)

(assert (=> b!2597700 (= e!1639604 0)))

(declare-fun b!2597701 () Bool)

(assert (=> b!2597701 (= e!1639604 (+ 1 (size!23221 (t!213029 l1!1546))))))

(assert (= (and d!736114 c!418441) b!2597700))

(assert (= (and d!736114 (not c!418441)) b!2597701))

(declare-fun m!2934041 () Bool)

(assert (=> b!2597701 m!2934041))

(assert (=> b!2597650 d!736114))

(declare-fun d!736116 () Bool)

(declare-fun lt!914851 () Int)

(assert (=> d!736116 (>= lt!914851 0)))

(declare-fun e!1639605 () Int)

(assert (=> d!736116 (= lt!914851 e!1639605)))

(declare-fun c!418442 () Bool)

(assert (=> d!736116 (= c!418442 (is-Nil!29916 l2!1515))))

(assert (=> d!736116 (= (size!23221 l2!1515) lt!914851)))

(declare-fun b!2597702 () Bool)

(assert (=> b!2597702 (= e!1639605 0)))

(declare-fun b!2597703 () Bool)

(assert (=> b!2597703 (= e!1639605 (+ 1 (size!23221 (t!213029 l2!1515))))))

(assert (= (and d!736116 c!418442) b!2597702))

(assert (= (and d!736116 (not c!418442)) b!2597703))

(declare-fun m!2934043 () Bool)

(assert (=> b!2597703 m!2934043))

(assert (=> b!2597650 d!736116))

(declare-fun bs!473055 () Bool)

(declare-fun d!736118 () Bool)

(assert (= bs!473055 (and d!736118 b!2597648)))

(declare-fun lambda!97217 () Int)

(assert (=> bs!473055 (not (= lambda!97217 lambda!97207))))

(declare-fun bs!473056 () Bool)

(assert (= bs!473056 (and d!736118 b!2597644)))

(assert (=> bs!473056 (not (= lambda!97217 lambda!97208))))

(assert (=> d!736118 true))

(declare-fun order!15909 () Int)

(declare-fun dynLambda!12666 (Int Int) Int)

(assert (=> d!736118 (< (dynLambda!12666 order!15909 lambda!97208) (dynLambda!12666 order!15909 lambda!97217))))

(assert (=> d!736118 (= (exists!941 l1!1546 lambda!97208) (not (forall!6153 l1!1546 lambda!97217)))))

(declare-fun bs!473057 () Bool)

(assert (= bs!473057 d!736118))

(declare-fun m!2934045 () Bool)

(assert (=> bs!473057 m!2934045))

(assert (=> b!2597644 d!736118))

(declare-fun d!736120 () Bool)

(declare-fun lt!914854 () Bool)

(declare-fun content!4211 (List!30016) (Set B!2231))

(assert (=> d!736120 (= lt!914854 (set.member (h!35336 l1!1546) (content!4211 l2!1515)))))

(declare-fun e!1639616 () Bool)

(assert (=> d!736120 (= lt!914854 e!1639616)))

(declare-fun res!1093656 () Bool)

(assert (=> d!736120 (=> (not res!1093656) (not e!1639616))))

(assert (=> d!736120 (= res!1093656 (is-Cons!29916 l2!1515))))

(assert (=> d!736120 (= (contains!5464 l2!1515 (h!35336 l1!1546)) lt!914854)))

(declare-fun b!2597716 () Bool)

(declare-fun e!1639617 () Bool)

(assert (=> b!2597716 (= e!1639616 e!1639617)))

(declare-fun res!1093657 () Bool)

(assert (=> b!2597716 (=> res!1093657 e!1639617)))

(assert (=> b!2597716 (= res!1093657 (= (h!35336 l2!1515) (h!35336 l1!1546)))))

(declare-fun b!2597717 () Bool)

(assert (=> b!2597717 (= e!1639617 (contains!5464 (t!213029 l2!1515) (h!35336 l1!1546)))))

(assert (= (and d!736120 res!1093656) b!2597716))

(assert (= (and b!2597716 (not res!1093657)) b!2597717))

(declare-fun m!2934051 () Bool)

(assert (=> d!736120 m!2934051))

(declare-fun m!2934053 () Bool)

(assert (=> d!736120 m!2934053))

(declare-fun m!2934055 () Bool)

(assert (=> b!2597717 m!2934055))

(assert (=> b!2597646 d!736120))

(assert (=> b!2597651 d!736120))

(declare-fun d!736124 () Bool)

(declare-fun res!1093662 () Bool)

(declare-fun e!1639622 () Bool)

(assert (=> d!736124 (=> res!1093662 e!1639622)))

(assert (=> d!736124 (= res!1093662 (is-Nil!29916 l1!1546))))

(assert (=> d!736124 (= (noDuplicate!464 l1!1546) e!1639622)))

(declare-fun b!2597722 () Bool)

(declare-fun e!1639623 () Bool)

(assert (=> b!2597722 (= e!1639622 e!1639623)))

(declare-fun res!1093663 () Bool)

(assert (=> b!2597722 (=> (not res!1093663) (not e!1639623))))

(assert (=> b!2597722 (= res!1093663 (not (contains!5464 (t!213029 l1!1546) (h!35336 l1!1546))))))

(declare-fun b!2597723 () Bool)

(assert (=> b!2597723 (= e!1639623 (noDuplicate!464 (t!213029 l1!1546)))))

(assert (= (and d!736124 (not res!1093662)) b!2597722))

(assert (= (and b!2597722 res!1093663) b!2597723))

(declare-fun m!2934057 () Bool)

(assert (=> b!2597722 m!2934057))

(declare-fun m!2934059 () Bool)

(assert (=> b!2597723 m!2934059))

(assert (=> start!252154 d!736124))

(declare-fun d!736126 () Bool)

(declare-fun res!1093664 () Bool)

(declare-fun e!1639624 () Bool)

(assert (=> d!736126 (=> res!1093664 e!1639624)))

(assert (=> d!736126 (= res!1093664 (is-Nil!29916 l2!1515))))

(assert (=> d!736126 (= (noDuplicate!464 l2!1515) e!1639624)))

(declare-fun b!2597724 () Bool)

(declare-fun e!1639625 () Bool)

(assert (=> b!2597724 (= e!1639624 e!1639625)))

(declare-fun res!1093665 () Bool)

(assert (=> b!2597724 (=> (not res!1093665) (not e!1639625))))

(assert (=> b!2597724 (= res!1093665 (not (contains!5464 (t!213029 l2!1515) (h!35336 l2!1515))))))

(declare-fun b!2597725 () Bool)

(assert (=> b!2597725 (= e!1639625 (noDuplicate!464 (t!213029 l2!1515)))))

(assert (= (and d!736126 (not res!1093664)) b!2597724))

(assert (= (and b!2597724 res!1093665) b!2597725))

(declare-fun m!2934061 () Bool)

(assert (=> b!2597724 m!2934061))

(declare-fun m!2934063 () Bool)

(assert (=> b!2597725 m!2934063))

(assert (=> b!2597652 d!736126))

(declare-fun b!2597730 () Bool)

(declare-fun e!1639628 () Bool)

(declare-fun tp!823383 () Bool)

(assert (=> b!2597730 (= e!1639628 (and tp_is_empty!13511 tp!823383))))

(assert (=> b!2597643 (= tp!823374 e!1639628)))

(assert (= (and b!2597643 (is-Cons!29916 (t!213029 l2!1515))) b!2597730))

(declare-fun b!2597731 () Bool)

(declare-fun e!1639629 () Bool)

(declare-fun tp!823384 () Bool)

(assert (=> b!2597731 (= e!1639629 (and tp_is_empty!13511 tp!823384))))

(assert (=> b!2597649 (= tp!823373 e!1639629)))

(assert (= (and b!2597649 (is-Cons!29916 (t!213029 l1!1546))) b!2597731))

(declare-fun b_lambda!77725 () Bool)

(assert (= b_lambda!77723 (or b!2597648 b_lambda!77725)))

(declare-fun bs!473058 () Bool)

(declare-fun d!736128 () Bool)

(assert (= bs!473058 (and d!736128 b!2597648)))

(assert (=> bs!473058 (= (dynLambda!12665 lambda!97207 (h!35336 l2!1515)) (contains!5464 l1!1546 (h!35336 l2!1515)))))

(declare-fun m!2934065 () Bool)

(assert (=> bs!473058 m!2934065))

(assert (=> b!2597694 d!736128))

(push 1)

(assert (not b!2597695))

(assert (not b!2597725))

(assert (not d!736120))

(assert (not d!736118))

(assert (not b!2597731))

(assert (not b!2597730))

(assert (not b!2597703))

(assert (not b!2597722))

(assert (not bs!473058))

(assert (not b_lambda!77725))

(assert (not b!2597717))

(assert tp_is_empty!13511)

(assert (not b!2597701))

(assert (not b!2597724))

(assert (not b!2597723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

