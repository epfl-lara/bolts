; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755702 () Bool)

(assert start!755702)

(declare-fun b!8026077 () Bool)

(declare-fun res!3173908 () Bool)

(declare-fun e!4728192 () Bool)

(assert (=> b!8026077 (=> (not res!3173908) (not e!4728192))))

(declare-datatypes ((B!4327 0))(
  ( (B!4328 (val!32563 Int)) )
))
(declare-datatypes ((List!75079 0))(
  ( (Nil!74953) (Cons!74953 (h!81401 B!4327) (t!390835 List!75079)) )
))
(declare-fun l!3127 () List!75079)

(declare-fun e!9294 () B!4327)

(declare-fun head!16459 (List!75079) B!4327)

(declare-fun tail!16002 (List!75079) List!75079)

(assert (=> b!8026077 (= res!3173908 (= (head!16459 (tail!16002 l!3127)) e!9294))))

(declare-fun b!8026079 () Bool)

(declare-fun e!4728193 () Bool)

(declare-fun tp_is_empty!54231 () Bool)

(declare-fun tp!2401970 () Bool)

(assert (=> b!8026079 (= e!4728193 (and tp_is_empty!54231 tp!2401970))))

(declare-fun res!3173910 () Bool)

(assert (=> start!755702 (=> (not res!3173910) (not e!4728192))))

(declare-fun contains!20917 (List!75079 B!4327) Bool)

(assert (=> start!755702 (= res!3173910 (contains!20917 l!3127 e!9294))))

(assert (=> start!755702 e!4728192))

(assert (=> start!755702 e!4728193))

(assert (=> start!755702 tp_is_empty!54231))

(declare-fun b!8026076 () Bool)

(declare-fun res!3173909 () Bool)

(assert (=> b!8026076 (=> (not res!3173909) (not e!4728192))))

(assert (=> b!8026076 (= res!3173909 (not (= (head!16459 l!3127) e!9294)))))

(declare-fun b!8026078 () Bool)

(assert (=> b!8026078 (= e!4728192 (= l!3127 Nil!74953))))

(assert (= (and start!755702 res!3173910) b!8026076))

(assert (= (and b!8026076 res!3173909) b!8026077))

(assert (= (and b!8026077 res!3173908) b!8026078))

(assert (= (and start!755702 (is-Cons!74953 l!3127)) b!8026079))

(declare-fun m!8388570 () Bool)

(assert (=> b!8026077 m!8388570))

(assert (=> b!8026077 m!8388570))

(declare-fun m!8388572 () Bool)

(assert (=> b!8026077 m!8388572))

(declare-fun m!8388574 () Bool)

(assert (=> start!755702 m!8388574))

(declare-fun m!8388576 () Bool)

(assert (=> b!8026076 m!8388576))

(push 1)

(assert (not start!755702))

(assert tp_is_empty!54231)

(assert (not b!8026077))

(assert (not b!8026076))

(assert (not b!8026079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2393382 () Bool)

(declare-fun lt!2720845 () Bool)

(declare-fun content!15972 (List!75079) (Set B!4327))

(assert (=> d!2393382 (= lt!2720845 (set.member e!9294 (content!15972 l!3127)))))

(declare-fun e!4728204 () Bool)

(assert (=> d!2393382 (= lt!2720845 e!4728204)))

(declare-fun res!3173924 () Bool)

(assert (=> d!2393382 (=> (not res!3173924) (not e!4728204))))

(assert (=> d!2393382 (= res!3173924 (is-Cons!74953 l!3127))))

(assert (=> d!2393382 (= (contains!20917 l!3127 e!9294) lt!2720845)))

(declare-fun b!8026096 () Bool)

(declare-fun e!4728205 () Bool)

(assert (=> b!8026096 (= e!4728204 e!4728205)))

(declare-fun res!3173925 () Bool)

(assert (=> b!8026096 (=> res!3173925 e!4728205)))

(assert (=> b!8026096 (= res!3173925 (= (h!81401 l!3127) e!9294))))

(declare-fun b!8026097 () Bool)

(assert (=> b!8026097 (= e!4728205 (contains!20917 (t!390835 l!3127) e!9294))))

(assert (= (and d!2393382 res!3173924) b!8026096))

(assert (= (and b!8026096 (not res!3173925)) b!8026097))

(declare-fun m!8388586 () Bool)

(assert (=> d!2393382 m!8388586))

(declare-fun m!8388588 () Bool)

(assert (=> d!2393382 m!8388588))

(declare-fun m!8388590 () Bool)

(assert (=> b!8026097 m!8388590))

(assert (=> start!755702 d!2393382))

(declare-fun d!2393388 () Bool)

(assert (=> d!2393388 (= (head!16459 (tail!16002 l!3127)) (h!81401 (tail!16002 l!3127)))))

(assert (=> b!8026077 d!2393388))

(declare-fun d!2393390 () Bool)

(assert (=> d!2393390 (= (tail!16002 l!3127) (t!390835 l!3127))))

(assert (=> b!8026077 d!2393390))

(declare-fun d!2393392 () Bool)

(assert (=> d!2393392 (= (head!16459 l!3127) (h!81401 l!3127))))

(assert (=> b!8026076 d!2393392))

(declare-fun b!8026106 () Bool)

(declare-fun e!4728212 () Bool)

(declare-fun tp!2401976 () Bool)

(assert (=> b!8026106 (= e!4728212 (and tp_is_empty!54231 tp!2401976))))

(assert (=> b!8026079 (= tp!2401970 e!4728212)))

(assert (= (and b!8026079 (is-Cons!74953 (t!390835 l!3127))) b!8026106))

(push 1)

(assert (not b!8026097))

(assert (not d!2393382))

(assert (not b!8026106))

(assert tp_is_empty!54231)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

