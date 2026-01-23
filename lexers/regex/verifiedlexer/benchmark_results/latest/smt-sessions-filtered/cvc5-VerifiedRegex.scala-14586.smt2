; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755750 () Bool)

(assert start!755750)

(declare-fun b!8026227 () Bool)

(declare-fun e!4728302 () Bool)

(declare-fun tp_is_empty!54243 () Bool)

(declare-fun tp!2402006 () Bool)

(assert (=> b!8026227 (= e!4728302 (and tp_is_empty!54243 tp!2402006))))

(declare-fun b!8026226 () Bool)

(declare-fun e!4728301 () Bool)

(declare-datatypes ((B!4339 0))(
  ( (B!4340 (val!32569 Int)) )
))
(declare-datatypes ((List!75085 0))(
  ( (Nil!74959) (Cons!74959 (h!81407 B!4339) (t!390841 List!75085)) )
))
(declare-fun lt!2720877 () List!75085)

(declare-fun e!9294 () B!4339)

(declare-fun contains!20923 (List!75085 B!4339) Bool)

(assert (=> b!8026226 (= e!4728301 (not (contains!20923 lt!2720877 e!9294)))))

(declare-fun res!3173997 () Bool)

(declare-fun e!4728300 () Bool)

(assert (=> start!755750 (=> (not res!3173997) (not e!4728300))))

(declare-fun l!3127 () List!75085)

(assert (=> start!755750 (= res!3173997 (contains!20923 l!3127 e!9294))))

(assert (=> start!755750 e!4728300))

(assert (=> start!755750 e!4728302))

(assert (=> start!755750 tp_is_empty!54243))

(declare-fun b!8026225 () Bool)

(assert (=> b!8026225 (= e!4728300 e!4728301)))

(declare-fun res!3173998 () Bool)

(assert (=> b!8026225 (=> (not res!3173998) (not e!4728301))))

(declare-fun head!16465 (List!75085) B!4339)

(assert (=> b!8026225 (= res!3173998 (not (= (head!16465 lt!2720877) e!9294)))))

(declare-fun tail!16006 (List!75085) List!75085)

(assert (=> b!8026225 (= lt!2720877 (tail!16006 l!3127))))

(declare-fun b!8026224 () Bool)

(declare-fun res!3173996 () Bool)

(assert (=> b!8026224 (=> (not res!3173996) (not e!4728300))))

(assert (=> b!8026224 (= res!3173996 (not (= (head!16465 l!3127) e!9294)))))

(assert (= (and start!755750 res!3173997) b!8026224))

(assert (= (and b!8026224 res!3173996) b!8026225))

(assert (= (and b!8026225 res!3173998) b!8026226))

(assert (= (and start!755750 (is-Cons!74959 l!3127)) b!8026227))

(declare-fun m!8388670 () Bool)

(assert (=> b!8026226 m!8388670))

(declare-fun m!8388672 () Bool)

(assert (=> start!755750 m!8388672))

(declare-fun m!8388674 () Bool)

(assert (=> b!8026225 m!8388674))

(declare-fun m!8388676 () Bool)

(assert (=> b!8026225 m!8388676))

(declare-fun m!8388678 () Bool)

(assert (=> b!8026224 m!8388678))

(push 1)

(assert (not b!8026227))

(assert tp_is_empty!54243)

(assert (not start!755750))

(assert (not b!8026226))

(assert (not b!8026225))

(assert (not b!8026224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2393433 () Bool)

(declare-fun lt!2720883 () Bool)

(declare-fun content!15978 (List!75085) (Set B!4339))

(assert (=> d!2393433 (= lt!2720883 (set.member e!9294 (content!15978 l!3127)))))

(declare-fun e!4728317 () Bool)

(assert (=> d!2393433 (= lt!2720883 e!4728317)))

(declare-fun res!3174013 () Bool)

(assert (=> d!2393433 (=> (not res!3174013) (not e!4728317))))

(assert (=> d!2393433 (= res!3174013 (is-Cons!74959 l!3127))))

(assert (=> d!2393433 (= (contains!20923 l!3127 e!9294) lt!2720883)))

(declare-fun b!8026244 () Bool)

(declare-fun e!4728316 () Bool)

(assert (=> b!8026244 (= e!4728317 e!4728316)))

(declare-fun res!3174012 () Bool)

(assert (=> b!8026244 (=> res!3174012 e!4728316)))

(assert (=> b!8026244 (= res!3174012 (= (h!81407 l!3127) e!9294))))

(declare-fun b!8026245 () Bool)

(assert (=> b!8026245 (= e!4728316 (contains!20923 (t!390841 l!3127) e!9294))))

(assert (= (and d!2393433 res!3174013) b!8026244))

(assert (= (and b!8026244 (not res!3174012)) b!8026245))

(declare-fun m!8388690 () Bool)

(assert (=> d!2393433 m!8388690))

(declare-fun m!8388692 () Bool)

(assert (=> d!2393433 m!8388692))

(declare-fun m!8388694 () Bool)

(assert (=> b!8026245 m!8388694))

(assert (=> start!755750 d!2393433))

(declare-fun d!2393439 () Bool)

(declare-fun lt!2720884 () Bool)

(assert (=> d!2393439 (= lt!2720884 (set.member e!9294 (content!15978 lt!2720877)))))

(declare-fun e!4728319 () Bool)

(assert (=> d!2393439 (= lt!2720884 e!4728319)))

(declare-fun res!3174015 () Bool)

(assert (=> d!2393439 (=> (not res!3174015) (not e!4728319))))

(assert (=> d!2393439 (= res!3174015 (is-Cons!74959 lt!2720877))))

(assert (=> d!2393439 (= (contains!20923 lt!2720877 e!9294) lt!2720884)))

(declare-fun b!8026246 () Bool)

(declare-fun e!4728318 () Bool)

(assert (=> b!8026246 (= e!4728319 e!4728318)))

(declare-fun res!3174014 () Bool)

(assert (=> b!8026246 (=> res!3174014 e!4728318)))

(assert (=> b!8026246 (= res!3174014 (= (h!81407 lt!2720877) e!9294))))

(declare-fun b!8026247 () Bool)

(assert (=> b!8026247 (= e!4728318 (contains!20923 (t!390841 lt!2720877) e!9294))))

(assert (= (and d!2393439 res!3174015) b!8026246))

(assert (= (and b!8026246 (not res!3174014)) b!8026247))

(declare-fun m!8388696 () Bool)

(assert (=> d!2393439 m!8388696))

(declare-fun m!8388698 () Bool)

(assert (=> d!2393439 m!8388698))

(declare-fun m!8388700 () Bool)

(assert (=> b!8026247 m!8388700))

(assert (=> b!8026226 d!2393439))

(declare-fun d!2393441 () Bool)

(assert (=> d!2393441 (= (head!16465 l!3127) (h!81407 l!3127))))

(assert (=> b!8026224 d!2393441))

(declare-fun d!2393443 () Bool)

(assert (=> d!2393443 (= (head!16465 lt!2720877) (h!81407 lt!2720877))))

(assert (=> b!8026225 d!2393443))

(declare-fun d!2393445 () Bool)

(assert (=> d!2393445 (= (tail!16006 l!3127) (t!390841 l!3127))))

(assert (=> b!8026225 d!2393445))

(declare-fun b!8026252 () Bool)

(declare-fun e!4728322 () Bool)

(declare-fun tp!2402012 () Bool)

(assert (=> b!8026252 (= e!4728322 (and tp_is_empty!54243 tp!2402012))))

(assert (=> b!8026227 (= tp!2402006 e!4728322)))

(assert (= (and b!8026227 (is-Cons!74959 (t!390841 l!3127))) b!8026252))

(push 1)

(assert (not b!8026245))

(assert tp_is_empty!54243)

(assert (not b!8026247))

(assert (not b!8026252))

(assert (not d!2393433))

(assert (not d!2393439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

