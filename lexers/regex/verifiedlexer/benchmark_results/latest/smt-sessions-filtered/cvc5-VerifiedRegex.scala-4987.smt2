; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252618 () Bool)

(assert start!252618)

(declare-fun b_free!72961 () Bool)

(declare-fun b_next!73665 () Bool)

(assert (=> start!252618 (= b_free!72961 (not b_next!73665))))

(declare-fun tp!823767 () Bool)

(declare-fun b_and!190231 () Bool)

(assert (=> start!252618 (= tp!823767 b_and!190231)))

(declare-fun b!2600015 () Bool)

(declare-fun res!1095119 () Bool)

(declare-fun e!1641159 () Bool)

(assert (=> b!2600015 (=> (not res!1095119) (not e!1641159))))

(declare-datatypes ((B!2367 0))(
  ( (B!2368 (val!9651 Int)) )
))
(declare-datatypes ((List!30084 0))(
  ( (Nil!29984) (Cons!29984 (h!35404 B!2367) (t!213113 List!30084)) )
))
(declare-fun l!3788 () List!30084)

(assert (=> b!2600015 (= res!1095119 (is-Nil!29984 l!3788))))

(declare-fun b!2600014 () Bool)

(declare-fun res!1095120 () Bool)

(assert (=> b!2600014 (=> (not res!1095120) (not e!1641159))))

(declare-fun p!2182 () Int)

(declare-fun forall!6165 (List!30084 Int) Bool)

(assert (=> b!2600014 (= res!1095120 (forall!6165 l!3788 p!2182))))

(declare-fun res!1095118 () Bool)

(assert (=> start!252618 (=> (not res!1095118) (not e!1641159))))

(declare-fun noDuplicate!532 (List!30084) Bool)

(assert (=> start!252618 (= res!1095118 (noDuplicate!532 l!3788))))

(assert (=> start!252618 e!1641159))

(declare-fun e!1641158 () Bool)

(assert (=> start!252618 e!1641158))

(assert (=> start!252618 tp!823767))

(declare-fun tp_is_empty!13647 () Bool)

(assert (=> start!252618 tp_is_empty!13647))

(declare-fun e!9458 () B!2367)

(declare-fun b!2600016 () Bool)

(declare-fun -!213 (List!30084 B!2367) List!30084)

(assert (=> b!2600016 (= e!1641159 (not (forall!6165 (-!213 l!3788 e!9458) p!2182)))))

(declare-fun b!2600017 () Bool)

(declare-fun tp!823768 () Bool)

(assert (=> b!2600017 (= e!1641158 (and tp_is_empty!13647 tp!823768))))

(assert (= (and start!252618 res!1095118) b!2600014))

(assert (= (and b!2600014 res!1095120) b!2600015))

(assert (= (and b!2600015 res!1095119) b!2600016))

(assert (= (and start!252618 (is-Cons!29984 l!3788)) b!2600017))

(declare-fun m!2935549 () Bool)

(assert (=> b!2600014 m!2935549))

(declare-fun m!2935551 () Bool)

(assert (=> start!252618 m!2935551))

(declare-fun m!2935553 () Bool)

(assert (=> b!2600016 m!2935553))

(assert (=> b!2600016 m!2935553))

(declare-fun m!2935555 () Bool)

(assert (=> b!2600016 m!2935555))

(push 1)

(assert tp_is_empty!13647)

(assert (not b!2600016))

(assert (not b!2600014))

(assert (not b!2600017))

(assert (not b_next!73665))

(assert (not start!252618))

(assert b_and!190231)

(check-sat)

(pop 1)

(push 1)

(assert b_and!190231)

(assert (not b_next!73665))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736624 () Bool)

(declare-fun res!1095134 () Bool)

(declare-fun e!1641170 () Bool)

(assert (=> d!736624 (=> res!1095134 e!1641170)))

(assert (=> d!736624 (= res!1095134 (is-Nil!29984 l!3788))))

(assert (=> d!736624 (= (noDuplicate!532 l!3788) e!1641170)))

(declare-fun b!2600034 () Bool)

(declare-fun e!1641171 () Bool)

(assert (=> b!2600034 (= e!1641170 e!1641171)))

(declare-fun res!1095135 () Bool)

(assert (=> b!2600034 (=> (not res!1095135) (not e!1641171))))

(declare-fun contains!5531 (List!30084 B!2367) Bool)

(assert (=> b!2600034 (= res!1095135 (not (contains!5531 (t!213113 l!3788) (h!35404 l!3788))))))

(declare-fun b!2600035 () Bool)

(assert (=> b!2600035 (= e!1641171 (noDuplicate!532 (t!213113 l!3788)))))

(assert (= (and d!736624 (not res!1095134)) b!2600034))

(assert (= (and b!2600034 res!1095135) b!2600035))

(declare-fun m!2935565 () Bool)

(assert (=> b!2600034 m!2935565))

(declare-fun m!2935567 () Bool)

(assert (=> b!2600035 m!2935567))

(assert (=> start!252618 d!736624))

(declare-fun d!736626 () Bool)

(declare-fun res!1095140 () Bool)

(declare-fun e!1641176 () Bool)

(assert (=> d!736626 (=> res!1095140 e!1641176)))

(assert (=> d!736626 (= res!1095140 (is-Nil!29984 l!3788))))

(assert (=> d!736626 (= (forall!6165 l!3788 p!2182) e!1641176)))

(declare-fun b!2600040 () Bool)

(declare-fun e!1641177 () Bool)

(assert (=> b!2600040 (= e!1641176 e!1641177)))

(declare-fun res!1095141 () Bool)

(assert (=> b!2600040 (=> (not res!1095141) (not e!1641177))))

(declare-fun dynLambda!12674 (Int B!2367) Bool)

(assert (=> b!2600040 (= res!1095141 (dynLambda!12674 p!2182 (h!35404 l!3788)))))

(declare-fun b!2600041 () Bool)

(assert (=> b!2600041 (= e!1641177 (forall!6165 (t!213113 l!3788) p!2182))))

(assert (= (and d!736626 (not res!1095140)) b!2600040))

(assert (= (and b!2600040 res!1095141) b!2600041))

(declare-fun b_lambda!77763 () Bool)

(assert (=> (not b_lambda!77763) (not b!2600040)))

(declare-fun t!213116 () Bool)

(declare-fun tb!141497 () Bool)

(assert (=> (and start!252618 (= p!2182 p!2182) t!213116) tb!141497))

(declare-fun result!176016 () Bool)

(assert (=> tb!141497 (= result!176016 true)))

(assert (=> b!2600040 t!213116))

(declare-fun b_and!190235 () Bool)

(assert (= b_and!190231 (and (=> t!213116 result!176016) b_and!190235)))

(declare-fun m!2935569 () Bool)

(assert (=> b!2600040 m!2935569))

(declare-fun m!2935571 () Bool)

(assert (=> b!2600041 m!2935571))

(assert (=> b!2600014 d!736626))

(declare-fun d!736630 () Bool)

(declare-fun res!1095142 () Bool)

(declare-fun e!1641178 () Bool)

(assert (=> d!736630 (=> res!1095142 e!1641178)))

(assert (=> d!736630 (= res!1095142 (is-Nil!29984 (-!213 l!3788 e!9458)))))

(assert (=> d!736630 (= (forall!6165 (-!213 l!3788 e!9458) p!2182) e!1641178)))

(declare-fun b!2600042 () Bool)

(declare-fun e!1641179 () Bool)

(assert (=> b!2600042 (= e!1641178 e!1641179)))

(declare-fun res!1095143 () Bool)

(assert (=> b!2600042 (=> (not res!1095143) (not e!1641179))))

(assert (=> b!2600042 (= res!1095143 (dynLambda!12674 p!2182 (h!35404 (-!213 l!3788 e!9458))))))

(declare-fun b!2600043 () Bool)

(assert (=> b!2600043 (= e!1641179 (forall!6165 (t!213113 (-!213 l!3788 e!9458)) p!2182))))

(assert (= (and d!736630 (not res!1095142)) b!2600042))

(assert (= (and b!2600042 res!1095143) b!2600043))

(declare-fun b_lambda!77765 () Bool)

(assert (=> (not b_lambda!77765) (not b!2600042)))

(declare-fun t!213118 () Bool)

(declare-fun tb!141499 () Bool)

(assert (=> (and start!252618 (= p!2182 p!2182) t!213118) tb!141499))

(declare-fun result!176018 () Bool)

(assert (=> tb!141499 (= result!176018 true)))

(assert (=> b!2600042 t!213118))

(declare-fun b_and!190237 () Bool)

(assert (= b_and!190235 (and (=> t!213118 result!176018) b_and!190237)))

(declare-fun m!2935573 () Bool)

(assert (=> b!2600042 m!2935573))

(declare-fun m!2935575 () Bool)

(assert (=> b!2600043 m!2935575))

(assert (=> b!2600016 d!736630))

(declare-fun bm!167412 () Bool)

(declare-fun call!167417 () List!30084)

(assert (=> bm!167412 (= call!167417 (-!213 (t!213113 l!3788) e!9458))))

(declare-fun b!2600060 () Bool)

(declare-fun e!1641195 () List!30084)

(assert (=> b!2600060 (= e!1641195 call!167417)))

(declare-fun d!736632 () Bool)

(declare-fun e!1641193 () Bool)

(assert (=> d!736632 e!1641193))

(declare-fun res!1095152 () Bool)

(assert (=> d!736632 (=> (not res!1095152) (not e!1641193))))

(declare-fun lt!915240 () List!30084)

(declare-fun size!23244 (List!30084) Int)

(assert (=> d!736632 (= res!1095152 (<= (size!23244 lt!915240) (size!23244 l!3788)))))

(declare-fun e!1641194 () List!30084)

(assert (=> d!736632 (= lt!915240 e!1641194)))

(declare-fun c!418627 () Bool)

(assert (=> d!736632 (= c!418627 (is-Cons!29984 l!3788))))

(assert (=> d!736632 (= (-!213 l!3788 e!9458) lt!915240)))

(declare-fun b!2600061 () Bool)

(declare-fun content!4249 (List!30084) (Set B!2367))

(assert (=> b!2600061 (= e!1641193 (= (content!4249 lt!915240) (set.minus (content!4249 l!3788) (set.insert e!9458 (as set.empty (Set B!2367))))))))

(declare-fun b!2600062 () Bool)

(assert (=> b!2600062 (= e!1641194 Nil!29984)))

(declare-fun b!2600063 () Bool)

(assert (=> b!2600063 (= e!1641194 e!1641195)))

(declare-fun c!418628 () Bool)

(assert (=> b!2600063 (= c!418628 (= e!9458 (h!35404 l!3788)))))

(declare-fun b!2600064 () Bool)

(assert (=> b!2600064 (= e!1641195 (Cons!29984 (h!35404 l!3788) call!167417))))

(assert (= (and d!736632 c!418627) b!2600063))

(assert (= (and d!736632 (not c!418627)) b!2600062))

(assert (= (and b!2600063 c!418628) b!2600060))

(assert (= (and b!2600063 (not c!418628)) b!2600064))

(assert (= (or b!2600060 b!2600064) bm!167412))

(assert (= (and d!736632 res!1095152) b!2600061))

(declare-fun m!2935581 () Bool)

(assert (=> bm!167412 m!2935581))

(declare-fun m!2935583 () Bool)

(assert (=> d!736632 m!2935583))

(declare-fun m!2935585 () Bool)

(assert (=> d!736632 m!2935585))

(declare-fun m!2935587 () Bool)

(assert (=> b!2600061 m!2935587))

(declare-fun m!2935589 () Bool)

(assert (=> b!2600061 m!2935589))

(declare-fun m!2935591 () Bool)

(assert (=> b!2600061 m!2935591))

(assert (=> b!2600016 d!736632))

(declare-fun b!2600069 () Bool)

(declare-fun e!1641198 () Bool)

(declare-fun tp!823777 () Bool)

(assert (=> b!2600069 (= e!1641198 (and tp_is_empty!13647 tp!823777))))

(assert (=> b!2600017 (= tp!823768 e!1641198)))

(assert (= (and b!2600017 (is-Cons!29984 (t!213113 l!3788))) b!2600069))

(declare-fun b_lambda!77769 () Bool)

(assert (= b_lambda!77763 (or (and start!252618 b_free!72961) b_lambda!77769)))

(declare-fun b_lambda!77771 () Bool)

(assert (= b_lambda!77765 (or (and start!252618 b_free!72961) b_lambda!77771)))

(push 1)

(assert tp_is_empty!13647)

(assert (not b!2600069))

(assert b_and!190237)

(assert (not b!2600041))

(assert (not b_lambda!77771))

(assert (not b!2600035))

(assert (not b_next!73665))

(assert (not b!2600061))

(assert (not b!2600043))

(assert (not d!736632))

(assert (not b_lambda!77769))

(assert (not b!2600034))

(assert (not bm!167412))

(check-sat)

(pop 1)

(push 1)

(assert b_and!190237)

(assert (not b_next!73665))

(check-sat)

(pop 1)

