; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!396316 () Bool)

(assert start!396316)

(declare-fun res!1703884 () Bool)

(declare-fun e!2581611 () Bool)

(assert (=> start!396316 (=> (not res!1703884) (not e!2581611))))

(declare-datatypes ((B!2719 0))(
  ( (B!2720 (val!14651 Int)) )
))
(declare-datatypes ((List!45528 0))(
  ( (Nil!45404) (Cons!45404 (h!50824 B!2719) (t!343559 List!45528)) )
))
(declare-fun l!3061 () List!45528)

(declare-fun e!9245 () B!2719)

(declare-fun contains!9262 (List!45528 B!2719) Bool)

(assert (=> start!396316 (= res!1703884 (contains!9262 l!3061 e!9245))))

(assert (=> start!396316 e!2581611))

(declare-fun e!2581612 () Bool)

(assert (=> start!396316 e!2581612))

(declare-fun tp_is_empty!21767 () Bool)

(assert (=> start!396316 tp_is_empty!21767))

(declare-fun b!4159703 () Bool)

(declare-fun res!1703883 () Bool)

(assert (=> b!4159703 (=> (not res!1703883) (not e!2581611))))

(declare-fun head!8829 (List!45528) B!2719)

(assert (=> b!4159703 (= res!1703883 (not (= (head!8829 l!3061) e!9245)))))

(declare-fun b!4159704 () Bool)

(assert (=> b!4159704 (= e!2581611 (= l!3061 Nil!45404))))

(declare-fun b!4159705 () Bool)

(declare-fun tp!1269077 () Bool)

(assert (=> b!4159705 (= e!2581612 (and tp_is_empty!21767 tp!1269077))))

(assert (= (and start!396316 res!1703884) b!4159703))

(assert (= (and b!4159703 res!1703883) b!4159704))

(assert (= (and start!396316 (is-Cons!45404 l!3061)) b!4159705))

(declare-fun m!4753321 () Bool)

(assert (=> start!396316 m!4753321))

(declare-fun m!4753323 () Bool)

(assert (=> b!4159703 m!4753323))

(push 1)

(assert (not start!396316))

(assert (not b!4159703))

(assert (not b!4159705))

(assert tp_is_empty!21767)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1229907 () Bool)

(declare-fun lt!1482747 () Bool)

(declare-fun content!7047 (List!45528) (Set B!2719))

(assert (=> d!1229907 (= lt!1482747 (set.member e!9245 (content!7047 l!3061)))))

(declare-fun e!2581624 () Bool)

(assert (=> d!1229907 (= lt!1482747 e!2581624)))

(declare-fun res!1703895 () Bool)

(assert (=> d!1229907 (=> (not res!1703895) (not e!2581624))))

(assert (=> d!1229907 (= res!1703895 (is-Cons!45404 l!3061))))

(assert (=> d!1229907 (= (contains!9262 l!3061 e!9245) lt!1482747)))

(declare-fun b!4159719 () Bool)

(declare-fun e!2581623 () Bool)

(assert (=> b!4159719 (= e!2581624 e!2581623)))

(declare-fun res!1703896 () Bool)

(assert (=> b!4159719 (=> res!1703896 e!2581623)))

(assert (=> b!4159719 (= res!1703896 (= (h!50824 l!3061) e!9245))))

(declare-fun b!4159720 () Bool)

(assert (=> b!4159720 (= e!2581623 (contains!9262 (t!343559 l!3061) e!9245))))

(assert (= (and d!1229907 res!1703895) b!4159719))

(assert (= (and b!4159719 (not res!1703896)) b!4159720))

(declare-fun m!4753329 () Bool)

(assert (=> d!1229907 m!4753329))

(declare-fun m!4753331 () Bool)

(assert (=> d!1229907 m!4753331))

(declare-fun m!4753333 () Bool)

(assert (=> b!4159720 m!4753333))

(assert (=> start!396316 d!1229907))

(declare-fun d!1229913 () Bool)

(assert (=> d!1229913 (= (head!8829 l!3061) (h!50824 l!3061))))

(assert (=> b!4159703 d!1229913))

(declare-fun b!4159729 () Bool)

(declare-fun e!2581631 () Bool)

(declare-fun tp!1269083 () Bool)

(assert (=> b!4159729 (= e!2581631 (and tp_is_empty!21767 tp!1269083))))

(assert (=> b!4159705 (= tp!1269077 e!2581631)))

(assert (= (and b!4159705 (is-Cons!45404 (t!343559 l!3061))) b!4159729))

(push 1)

(assert (not b!4159720))

(assert (not d!1229907))

(assert (not b!4159729))

(assert tp_is_empty!21767)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

