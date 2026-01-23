; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252194 () Bool)

(assert start!252194)

(declare-fun res!1093814 () Bool)

(declare-fun e!1639762 () Bool)

(assert (=> start!252194 (=> (not res!1093814) (not e!1639762))))

(declare-datatypes ((B!2247 0))(
  ( (B!2248 (val!9591 Int)) )
))
(declare-datatypes ((List!30024 0))(
  ( (Nil!29924) (Cons!29924 (h!35344 B!2247) (t!213037 List!30024)) )
))
(declare-fun l!3770 () List!30024)

(declare-fun noDuplicate!472 (List!30024) Bool)

(assert (=> start!252194 (= res!1093814 (noDuplicate!472 l!3770))))

(assert (=> start!252194 e!1639762))

(declare-fun e!1639763 () Bool)

(assert (=> start!252194 e!1639763))

(declare-fun tp_is_empty!13527 () Bool)

(assert (=> start!252194 tp_is_empty!13527))

(declare-fun b!2597946 () Bool)

(declare-fun res!1093815 () Bool)

(assert (=> b!2597946 (=> (not res!1093815) (not e!1639762))))

(assert (=> b!2597946 (= res!1093815 (is-Nil!29924 l!3770))))

(declare-fun b!2597947 () Bool)

(declare-fun e!9448 () B!2247)

(declare-fun -!189 (List!30024 B!2247) List!30024)

(assert (=> b!2597947 (= e!1639762 (not (noDuplicate!472 (-!189 l!3770 e!9448))))))

(declare-fun b!2597948 () Bool)

(declare-fun tp!823427 () Bool)

(assert (=> b!2597948 (= e!1639763 (and tp_is_empty!13527 tp!823427))))

(assert (= (and start!252194 res!1093814) b!2597946))

(assert (= (and b!2597946 res!1093815) b!2597947))

(assert (= (and start!252194 (is-Cons!29924 l!3770)) b!2597948))

(declare-fun m!2934161 () Bool)

(assert (=> start!252194 m!2934161))

(declare-fun m!2934163 () Bool)

(assert (=> b!2597947 m!2934163))

(assert (=> b!2597947 m!2934163))

(declare-fun m!2934165 () Bool)

(assert (=> b!2597947 m!2934165))

(push 1)

(assert (not start!252194))

(assert (not b!2597947))

(assert (not b!2597948))

(assert tp_is_empty!13527)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736154 () Bool)

(declare-fun res!1093826 () Bool)

(declare-fun e!1639774 () Bool)

(assert (=> d!736154 (=> res!1093826 e!1639774)))

(assert (=> d!736154 (= res!1093826 (is-Nil!29924 l!3770))))

(assert (=> d!736154 (= (noDuplicate!472 l!3770) e!1639774)))

(declare-fun b!2597962 () Bool)

(declare-fun e!1639775 () Bool)

(assert (=> b!2597962 (= e!1639774 e!1639775)))

(declare-fun res!1093827 () Bool)

(assert (=> b!2597962 (=> (not res!1093827) (not e!1639775))))

(declare-fun contains!5472 (List!30024 B!2247) Bool)

(assert (=> b!2597962 (= res!1093827 (not (contains!5472 (t!213037 l!3770) (h!35344 l!3770))))))

(declare-fun b!2597963 () Bool)

(assert (=> b!2597963 (= e!1639775 (noDuplicate!472 (t!213037 l!3770)))))

(assert (= (and d!736154 (not res!1093826)) b!2597962))

(assert (= (and b!2597962 res!1093827) b!2597963))

(declare-fun m!2934173 () Bool)

(assert (=> b!2597962 m!2934173))

(declare-fun m!2934175 () Bool)

(assert (=> b!2597963 m!2934175))

(assert (=> start!252194 d!736154))

(declare-fun d!736156 () Bool)

(declare-fun res!1093828 () Bool)

(declare-fun e!1639776 () Bool)

(assert (=> d!736156 (=> res!1093828 e!1639776)))

(assert (=> d!736156 (= res!1093828 (is-Nil!29924 (-!189 l!3770 e!9448)))))

(assert (=> d!736156 (= (noDuplicate!472 (-!189 l!3770 e!9448)) e!1639776)))

(declare-fun b!2597964 () Bool)

(declare-fun e!1639777 () Bool)

(assert (=> b!2597964 (= e!1639776 e!1639777)))

(declare-fun res!1093829 () Bool)

(assert (=> b!2597964 (=> (not res!1093829) (not e!1639777))))

(assert (=> b!2597964 (= res!1093829 (not (contains!5472 (t!213037 (-!189 l!3770 e!9448)) (h!35344 (-!189 l!3770 e!9448)))))))

(declare-fun b!2597965 () Bool)

(assert (=> b!2597965 (= e!1639777 (noDuplicate!472 (t!213037 (-!189 l!3770 e!9448))))))

(assert (= (and d!736156 (not res!1093828)) b!2597964))

(assert (= (and b!2597964 res!1093829) b!2597965))

(declare-fun m!2934177 () Bool)

(assert (=> b!2597964 m!2934177))

(declare-fun m!2934179 () Bool)

(assert (=> b!2597965 m!2934179))

(assert (=> b!2597947 d!736156))

(declare-fun lt!914864 () List!30024)

(declare-fun e!1639791 () Bool)

(declare-fun b!2597980 () Bool)

(declare-fun content!4213 (List!30024) (Set B!2247))

(assert (=> b!2597980 (= e!1639791 (= (content!4213 lt!914864) (set.minus (content!4213 l!3770) (set.insert e!9448 (as set.empty (Set B!2247))))))))

(declare-fun b!2597981 () Bool)

(declare-fun e!1639789 () List!30024)

(declare-fun call!167361 () List!30024)

(assert (=> b!2597981 (= e!1639789 call!167361)))

(declare-fun b!2597982 () Bool)

(assert (=> b!2597982 (= e!1639789 (Cons!29924 (h!35344 l!3770) call!167361))))

(declare-fun bm!167356 () Bool)

(assert (=> bm!167356 (= call!167361 (-!189 (t!213037 l!3770) e!9448))))

(declare-fun b!2597984 () Bool)

(declare-fun e!1639790 () List!30024)

(assert (=> b!2597984 (= e!1639790 e!1639789)))

(declare-fun c!418452 () Bool)

(assert (=> b!2597984 (= c!418452 (= e!9448 (h!35344 l!3770)))))

(declare-fun b!2597983 () Bool)

(assert (=> b!2597983 (= e!1639790 Nil!29924)))

(declare-fun d!736158 () Bool)

(assert (=> d!736158 e!1639791))

(declare-fun res!1093836 () Bool)

(assert (=> d!736158 (=> (not res!1093836) (not e!1639791))))

(declare-fun size!23227 (List!30024) Int)

(assert (=> d!736158 (= res!1093836 (<= (size!23227 lt!914864) (size!23227 l!3770)))))

(assert (=> d!736158 (= lt!914864 e!1639790)))

(declare-fun c!418451 () Bool)

(assert (=> d!736158 (= c!418451 (is-Cons!29924 l!3770))))

(assert (=> d!736158 (= (-!189 l!3770 e!9448) lt!914864)))

(assert (= (and d!736158 c!418451) b!2597984))

(assert (= (and d!736158 (not c!418451)) b!2597983))

(assert (= (and b!2597984 c!418452) b!2597981))

(assert (= (and b!2597984 (not c!418452)) b!2597982))

(assert (= (or b!2597981 b!2597982) bm!167356))

(assert (= (and d!736158 res!1093836) b!2597980))

(declare-fun m!2934181 () Bool)

(assert (=> b!2597980 m!2934181))

(declare-fun m!2934183 () Bool)

(assert (=> b!2597980 m!2934183))

(declare-fun m!2934185 () Bool)

(assert (=> b!2597980 m!2934185))

(declare-fun m!2934187 () Bool)

(assert (=> bm!167356 m!2934187))

(declare-fun m!2934189 () Bool)

(assert (=> d!736158 m!2934189))

(declare-fun m!2934191 () Bool)

(assert (=> d!736158 m!2934191))

(assert (=> b!2597947 d!736158))

(declare-fun b!2597989 () Bool)

(declare-fun e!1639794 () Bool)

(declare-fun tp!823433 () Bool)

(assert (=> b!2597989 (= e!1639794 (and tp_is_empty!13527 tp!823433))))

(assert (=> b!2597948 (= tp!823427 e!1639794)))

(assert (= (and b!2597948 (is-Cons!29924 (t!213037 l!3770))) b!2597989))

(push 1)

(assert (not b!2597964))

(assert tp_is_empty!13527)

(assert (not b!2597980))

(assert (not bm!167356))

(assert (not b!2597989))

(assert (not b!2597963))

(assert (not d!736158))

(assert (not b!2597965))

(assert (not b!2597962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

