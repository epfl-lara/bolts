; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!108044 () Bool)

(assert start!108044)

(declare-fun b!1211155 () Bool)

(declare-fun res!544768 () Bool)

(declare-fun e!777009 () Bool)

(assert (=> b!1211155 (=> (not res!544768) (not e!777009))))

(declare-datatypes ((B!1383 0))(
  ( (B!1384 (val!4049 Int)) )
))
(declare-datatypes ((List!12296 0))(
  ( (Nil!12238) (Cons!12238 (h!17639 B!1383) (t!112680 List!12296)) )
))
(declare-fun l!3821 () List!12296)

(declare-fun e!9491 () B!1383)

(declare-fun contains!2055 (List!12296 B!1383) Bool)

(assert (=> b!1211155 (= res!544768 (contains!2055 (t!112680 l!3821) e!9491))))

(declare-fun res!544769 () Bool)

(assert (=> start!108044 (=> (not res!544769) (not e!777009))))

(assert (=> start!108044 (= res!544769 (contains!2055 l!3821 e!9491))))

(assert (=> start!108044 e!777009))

(declare-fun e!777010 () Bool)

(assert (=> start!108044 e!777010))

(declare-fun tp_is_empty!6241 () Bool)

(assert (=> start!108044 tp_is_empty!6241))

(declare-fun b!1211157 () Bool)

(declare-fun tp!342972 () Bool)

(assert (=> b!1211157 (= e!777010 (and tp_is_empty!6241 tp!342972))))

(declare-fun b!1211154 () Bool)

(declare-fun res!544770 () Bool)

(assert (=> b!1211154 (=> (not res!544770) (not e!777009))))

(assert (=> b!1211154 (= res!544770 (and (or (not (is-Cons!12238 l!3821)) (not (= (h!17639 l!3821) e!9491))) (is-Cons!12238 l!3821)))))

(declare-fun b!1211156 () Bool)

(declare-fun ListPrimitiveSize!93 (List!12296) Int)

(assert (=> b!1211156 (= e!777009 (>= (ListPrimitiveSize!93 (t!112680 l!3821)) (ListPrimitiveSize!93 l!3821)))))

(assert (= (and start!108044 res!544769) b!1211154))

(assert (= (and b!1211154 res!544770) b!1211155))

(assert (= (and b!1211155 res!544768) b!1211156))

(assert (= (and start!108044 (is-Cons!12238 l!3821)) b!1211157))

(declare-fun m!1386887 () Bool)

(assert (=> b!1211155 m!1386887))

(declare-fun m!1386889 () Bool)

(assert (=> start!108044 m!1386889))

(declare-fun m!1386891 () Bool)

(assert (=> b!1211156 m!1386891))

(declare-fun m!1386893 () Bool)

(assert (=> b!1211156 m!1386893))

(push 1)

(assert tp_is_empty!6241)

(assert (not b!1211156))

(assert (not b!1211155))

(assert (not start!108044))

(assert (not b!1211157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!346480 () Bool)

(declare-fun lt!414532 () Bool)

(declare-fun content!1752 (List!12296) (Set B!1383))

(assert (=> d!346480 (= lt!414532 (set.member e!9491 (content!1752 (t!112680 l!3821))))))

(declare-fun e!777021 () Bool)

(assert (=> d!346480 (= lt!414532 e!777021)))

(declare-fun res!544785 () Bool)

(assert (=> d!346480 (=> (not res!544785) (not e!777021))))

(assert (=> d!346480 (= res!544785 (is-Cons!12238 (t!112680 l!3821)))))

(assert (=> d!346480 (= (contains!2055 (t!112680 l!3821) e!9491) lt!414532)))

(declare-fun b!1211174 () Bool)

(declare-fun e!777022 () Bool)

(assert (=> b!1211174 (= e!777021 e!777022)))

(declare-fun res!544784 () Bool)

(assert (=> b!1211174 (=> res!544784 e!777022)))

(assert (=> b!1211174 (= res!544784 (= (h!17639 (t!112680 l!3821)) e!9491))))

(declare-fun b!1211175 () Bool)

(assert (=> b!1211175 (= e!777022 (contains!2055 (t!112680 (t!112680 l!3821)) e!9491))))

(assert (= (and d!346480 res!544785) b!1211174))

(assert (= (and b!1211174 (not res!544784)) b!1211175))

(declare-fun m!1386903 () Bool)

(assert (=> d!346480 m!1386903))

(declare-fun m!1386905 () Bool)

(assert (=> d!346480 m!1386905))

(declare-fun m!1386907 () Bool)

(assert (=> b!1211175 m!1386907))

(assert (=> b!1211155 d!346480))

(declare-fun d!346484 () Bool)

(declare-fun lt!414535 () Int)

(assert (=> d!346484 (>= lt!414535 0)))

(declare-fun e!777025 () Int)

(assert (=> d!346484 (= lt!414535 e!777025)))

(declare-fun c!202860 () Bool)

(assert (=> d!346484 (= c!202860 (is-Nil!12238 (t!112680 l!3821)))))

(assert (=> d!346484 (= (ListPrimitiveSize!93 (t!112680 l!3821)) lt!414535)))

(declare-fun b!1211180 () Bool)

(assert (=> b!1211180 (= e!777025 0)))

(declare-fun b!1211181 () Bool)

(assert (=> b!1211181 (= e!777025 (+ 1 (ListPrimitiveSize!93 (t!112680 (t!112680 l!3821)))))))

(assert (= (and d!346484 c!202860) b!1211180))

(assert (= (and d!346484 (not c!202860)) b!1211181))

(declare-fun m!1386909 () Bool)

(assert (=> b!1211181 m!1386909))

(assert (=> b!1211156 d!346484))

(declare-fun d!346486 () Bool)

(declare-fun lt!414536 () Int)

(assert (=> d!346486 (>= lt!414536 0)))

(declare-fun e!777026 () Int)

(assert (=> d!346486 (= lt!414536 e!777026)))

(declare-fun c!202861 () Bool)

(assert (=> d!346486 (= c!202861 (is-Nil!12238 l!3821))))

(assert (=> d!346486 (= (ListPrimitiveSize!93 l!3821) lt!414536)))

(declare-fun b!1211182 () Bool)

(assert (=> b!1211182 (= e!777026 0)))

(declare-fun b!1211183 () Bool)

(assert (=> b!1211183 (= e!777026 (+ 1 (ListPrimitiveSize!93 (t!112680 l!3821))))))

(assert (= (and d!346486 c!202861) b!1211182))

(assert (= (and d!346486 (not c!202861)) b!1211183))

(assert (=> b!1211183 m!1386891))

(assert (=> b!1211156 d!346486))

(declare-fun d!346488 () Bool)

(declare-fun lt!414537 () Bool)

(assert (=> d!346488 (= lt!414537 (set.member e!9491 (content!1752 l!3821)))))

(declare-fun e!777027 () Bool)

(assert (=> d!346488 (= lt!414537 e!777027)))

(declare-fun res!544787 () Bool)

(assert (=> d!346488 (=> (not res!544787) (not e!777027))))

(assert (=> d!346488 (= res!544787 (is-Cons!12238 l!3821))))

(assert (=> d!346488 (= (contains!2055 l!3821 e!9491) lt!414537)))

(declare-fun b!1211184 () Bool)

(declare-fun e!777028 () Bool)

(assert (=> b!1211184 (= e!777027 e!777028)))

(declare-fun res!544786 () Bool)

(assert (=> b!1211184 (=> res!544786 e!777028)))

(assert (=> b!1211184 (= res!544786 (= (h!17639 l!3821) e!9491))))

(declare-fun b!1211185 () Bool)

(assert (=> b!1211185 (= e!777028 (contains!2055 (t!112680 l!3821) e!9491))))

(assert (= (and d!346488 res!544787) b!1211184))

(assert (= (and b!1211184 (not res!544786)) b!1211185))

(declare-fun m!1386911 () Bool)

(assert (=> d!346488 m!1386911))

(declare-fun m!1386913 () Bool)

(assert (=> d!346488 m!1386913))

(assert (=> b!1211185 m!1386887))

(assert (=> start!108044 d!346488))

(declare-fun b!1211190 () Bool)

(declare-fun e!777031 () Bool)

(declare-fun tp!342978 () Bool)

(assert (=> b!1211190 (= e!777031 (and tp_is_empty!6241 tp!342978))))

(assert (=> b!1211157 (= tp!342972 e!777031)))

(assert (= (and b!1211157 (is-Cons!12238 (t!112680 l!3821))) b!1211190))

(push 1)

(assert (not b!1211183))

(assert tp_is_empty!6241)

(assert (not b!1211185))

(assert (not d!346488))

(assert (not b!1211175))

(assert (not b!1211190))

(assert (not d!346480))

(assert (not b!1211181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

