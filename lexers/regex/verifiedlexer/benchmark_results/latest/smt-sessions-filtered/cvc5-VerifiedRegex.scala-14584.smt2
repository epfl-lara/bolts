; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755718 () Bool)

(assert start!755718)

(declare-fun b!8026123 () Bool)

(declare-fun e!4728226 () Bool)

(declare-fun e!4728225 () Bool)

(assert (=> b!8026123 (= e!4728226 e!4728225)))

(declare-fun res!3173938 () Bool)

(assert (=> b!8026123 (=> (not res!3173938) (not e!4728225))))

(declare-datatypes ((B!4331 0))(
  ( (B!4332 (val!32565 Int)) )
))
(declare-datatypes ((List!75081 0))(
  ( (Nil!74955) (Cons!74955 (h!81403 B!4331) (t!390837 List!75081)) )
))
(declare-fun lt!2720851 () List!75081)

(declare-fun e!9294 () B!4331)

(declare-fun head!16461 (List!75081) B!4331)

(assert (=> b!8026123 (= res!3173938 (= (head!16461 lt!2720851) e!9294))))

(declare-fun l!3127 () List!75081)

(declare-fun tail!16004 (List!75081) List!75081)

(assert (=> b!8026123 (= lt!2720851 (tail!16004 l!3127))))

(declare-fun b!8026122 () Bool)

(declare-fun res!3173940 () Bool)

(assert (=> b!8026122 (=> (not res!3173940) (not e!4728226))))

(assert (=> b!8026122 (= res!3173940 (not (= (head!16461 l!3127) e!9294)))))

(declare-fun res!3173939 () Bool)

(assert (=> start!755718 (=> (not res!3173939) (not e!4728226))))

(declare-fun contains!20919 (List!75081 B!4331) Bool)

(assert (=> start!755718 (= res!3173939 (contains!20919 l!3127 e!9294))))

(assert (=> start!755718 e!4728226))

(declare-fun e!4728224 () Bool)

(assert (=> start!755718 e!4728224))

(declare-fun tp_is_empty!54235 () Bool)

(assert (=> start!755718 tp_is_empty!54235))

(declare-fun b!8026125 () Bool)

(declare-fun tp!2401982 () Bool)

(assert (=> b!8026125 (= e!4728224 (and tp_is_empty!54235 tp!2401982))))

(declare-fun b!8026124 () Bool)

(assert (=> b!8026124 (= e!4728225 (not (contains!20919 lt!2720851 e!9294)))))

(assert (= (and start!755718 res!3173939) b!8026122))

(assert (= (and b!8026122 res!3173940) b!8026123))

(assert (= (and b!8026123 res!3173938) b!8026124))

(assert (= (and start!755718 (is-Cons!74955 l!3127)) b!8026125))

(declare-fun m!8388598 () Bool)

(assert (=> b!8026123 m!8388598))

(declare-fun m!8388600 () Bool)

(assert (=> b!8026123 m!8388600))

(declare-fun m!8388602 () Bool)

(assert (=> b!8026122 m!8388602))

(declare-fun m!8388604 () Bool)

(assert (=> start!755718 m!8388604))

(declare-fun m!8388606 () Bool)

(assert (=> b!8026124 m!8388606))

(push 1)

(assert (not start!755718))

(assert tp_is_empty!54235)

(assert (not b!8026125))

(assert (not b!8026122))

(assert (not b!8026124))

(assert (not b!8026123))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2393399 () Bool)

(declare-fun lt!2720857 () Bool)

(declare-fun content!15974 (List!75081) (Set B!4331))

(assert (=> d!2393399 (= lt!2720857 (set.member e!9294 (content!15974 lt!2720851)))))

(declare-fun e!4728240 () Bool)

(assert (=> d!2393399 (= lt!2720857 e!4728240)))

(declare-fun res!3173954 () Bool)

(assert (=> d!2393399 (=> (not res!3173954) (not e!4728240))))

(assert (=> d!2393399 (= res!3173954 (is-Cons!74955 lt!2720851))))

(assert (=> d!2393399 (= (contains!20919 lt!2720851 e!9294) lt!2720857)))

(declare-fun b!8026142 () Bool)

(declare-fun e!4728241 () Bool)

(assert (=> b!8026142 (= e!4728240 e!4728241)))

(declare-fun res!3173955 () Bool)

(assert (=> b!8026142 (=> res!3173955 e!4728241)))

(assert (=> b!8026142 (= res!3173955 (= (h!81403 lt!2720851) e!9294))))

(declare-fun b!8026143 () Bool)

(assert (=> b!8026143 (= e!4728241 (contains!20919 (t!390837 lt!2720851) e!9294))))

(assert (= (and d!2393399 res!3173954) b!8026142))

(assert (= (and b!8026142 (not res!3173955)) b!8026143))

(declare-fun m!8388618 () Bool)

(assert (=> d!2393399 m!8388618))

(declare-fun m!8388620 () Bool)

(assert (=> d!2393399 m!8388620))

(declare-fun m!8388622 () Bool)

(assert (=> b!8026143 m!8388622))

(assert (=> b!8026124 d!2393399))

(declare-fun d!2393403 () Bool)

(assert (=> d!2393403 (= (head!16461 lt!2720851) (h!81403 lt!2720851))))

(assert (=> b!8026123 d!2393403))

(declare-fun d!2393405 () Bool)

(assert (=> d!2393405 (= (tail!16004 l!3127) (t!390837 l!3127))))

(assert (=> b!8026123 d!2393405))

(declare-fun d!2393407 () Bool)

(assert (=> d!2393407 (= (head!16461 l!3127) (h!81403 l!3127))))

(assert (=> b!8026122 d!2393407))

(declare-fun d!2393409 () Bool)

(declare-fun lt!2720860 () Bool)

(assert (=> d!2393409 (= lt!2720860 (set.member e!9294 (content!15974 l!3127)))))

(declare-fun e!4728246 () Bool)

(assert (=> d!2393409 (= lt!2720860 e!4728246)))

(declare-fun res!3173960 () Bool)

(assert (=> d!2393409 (=> (not res!3173960) (not e!4728246))))

(assert (=> d!2393409 (= res!3173960 (is-Cons!74955 l!3127))))

(assert (=> d!2393409 (= (contains!20919 l!3127 e!9294) lt!2720860)))

(declare-fun b!8026148 () Bool)

(declare-fun e!4728247 () Bool)

(assert (=> b!8026148 (= e!4728246 e!4728247)))

(declare-fun res!3173961 () Bool)

(assert (=> b!8026148 (=> res!3173961 e!4728247)))

(assert (=> b!8026148 (= res!3173961 (= (h!81403 l!3127) e!9294))))

(declare-fun b!8026149 () Bool)

(assert (=> b!8026149 (= e!4728247 (contains!20919 (t!390837 l!3127) e!9294))))

(assert (= (and d!2393409 res!3173960) b!8026148))

(assert (= (and b!8026148 (not res!3173961)) b!8026149))

(declare-fun m!8388624 () Bool)

(assert (=> d!2393409 m!8388624))

(declare-fun m!8388626 () Bool)

(assert (=> d!2393409 m!8388626))

(declare-fun m!8388628 () Bool)

(assert (=> b!8026149 m!8388628))

(assert (=> start!755718 d!2393409))

(declare-fun b!8026156 () Bool)

(declare-fun e!4728252 () Bool)

(declare-fun tp!2401988 () Bool)

(assert (=> b!8026156 (= e!4728252 (and tp_is_empty!54235 tp!2401988))))

(assert (=> b!8026125 (= tp!2401982 e!4728252)))

(assert (= (and b!8026125 (is-Cons!74955 (t!390837 l!3127))) b!8026156))

(push 1)

(assert (not d!2393399))

(assert (not b!8026143))

(assert tp_is_empty!54235)

(assert (not b!8026149))

(assert (not b!8026156))

(assert (not d!2393409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

