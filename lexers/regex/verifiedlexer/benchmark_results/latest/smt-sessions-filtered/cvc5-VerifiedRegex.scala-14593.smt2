; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755862 () Bool)

(assert start!755862)

(declare-fun res!3174212 () Bool)

(declare-fun e!4728620 () Bool)

(assert (=> start!755862 (=> (not res!3174212) (not e!4728620))))

(declare-datatypes ((B!4367 0))(
  ( (B!4368 (val!32583 Int)) )
))
(declare-datatypes ((List!75099 0))(
  ( (Nil!74973) (Cons!74973 (h!81421 B!4367) (t!390855 List!75099)) )
))
(declare-fun l!2938 () List!75099)

(declare-fun e!9235 () B!4367)

(declare-fun contains!20937 (List!75099 B!4367) Bool)

(assert (=> start!755862 (= res!3174212 (contains!20937 l!2938 e!9235))))

(assert (=> start!755862 e!4728620))

(declare-fun e!4728621 () Bool)

(assert (=> start!755862 e!4728621))

(declare-fun tp_is_empty!54271 () Bool)

(assert (=> start!755862 tp_is_empty!54271))

(declare-fun b!8026680 () Bool)

(assert (=> b!8026680 (= e!4728620 (and (or (not (is-Cons!74973 l!2938)) (not (= (h!81421 l!2938) e!9235))) (or (not (is-Cons!74973 l!2938)) (= (h!81421 l!2938) e!9235)) (is-Nil!74973 l!2938)))))

(declare-fun b!8026681 () Bool)

(declare-fun tp!2402090 () Bool)

(assert (=> b!8026681 (= e!4728621 (and tp_is_empty!54271 tp!2402090))))

(assert (= (and start!755862 res!3174212) b!8026680))

(assert (= (and start!755862 (is-Cons!74973 l!2938)) b!8026681))

(declare-fun m!8388986 () Bool)

(assert (=> start!755862 m!8388986))

(push 1)

(assert (not start!755862))

(assert (not b!8026681))

(assert tp_is_empty!54271)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2393580 () Bool)

(declare-fun lt!2721015 () Bool)

(declare-fun content!15992 (List!75099) (Set B!4367))

(assert (=> d!2393580 (= lt!2721015 (set.member e!9235 (content!15992 l!2938)))))

(declare-fun e!4728633 () Bool)

(assert (=> d!2393580 (= lt!2721015 e!4728633)))

(declare-fun res!3174221 () Bool)

(assert (=> d!2393580 (=> (not res!3174221) (not e!4728633))))

(assert (=> d!2393580 (= res!3174221 (is-Cons!74973 l!2938))))

(assert (=> d!2393580 (= (contains!20937 l!2938 e!9235) lt!2721015)))

(declare-fun b!8026692 () Bool)

(declare-fun e!4728632 () Bool)

(assert (=> b!8026692 (= e!4728633 e!4728632)))

(declare-fun res!3174220 () Bool)

(assert (=> b!8026692 (=> res!3174220 e!4728632)))

(assert (=> b!8026692 (= res!3174220 (= (h!81421 l!2938) e!9235))))

(declare-fun b!8026693 () Bool)

(assert (=> b!8026693 (= e!4728632 (contains!20937 (t!390855 l!2938) e!9235))))

(assert (= (and d!2393580 res!3174221) b!8026692))

(assert (= (and b!8026692 (not res!3174220)) b!8026693))

(declare-fun m!8388990 () Bool)

(assert (=> d!2393580 m!8388990))

(declare-fun m!8388992 () Bool)

(assert (=> d!2393580 m!8388992))

(declare-fun m!8388994 () Bool)

(assert (=> b!8026693 m!8388994))

(assert (=> start!755862 d!2393580))

(declare-fun b!8026702 () Bool)

(declare-fun e!4728640 () Bool)

(declare-fun tp!2402096 () Bool)

(assert (=> b!8026702 (= e!4728640 (and tp_is_empty!54271 tp!2402096))))

(assert (=> b!8026681 (= tp!2402090 e!4728640)))

(assert (= (and b!8026681 (is-Cons!74973 (t!390855 l!2938))) b!8026702))

(push 1)

(assert (not b!8026693))

(assert (not d!2393580))

(assert (not b!8026702))

(assert tp_is_empty!54271)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

