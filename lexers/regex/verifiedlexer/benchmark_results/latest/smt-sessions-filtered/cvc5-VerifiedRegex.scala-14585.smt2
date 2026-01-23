; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755734 () Bool)

(assert start!755734)

(declare-fun res!3173971 () Bool)

(declare-fun e!4728262 () Bool)

(assert (=> start!755734 (=> (not res!3173971) (not e!4728262))))

(declare-datatypes ((B!4335 0))(
  ( (B!4336 (val!32567 Int)) )
))
(declare-datatypes ((List!75083 0))(
  ( (Nil!74957) (Cons!74957 (h!81405 B!4335) (t!390839 List!75083)) )
))
(declare-fun l!3127 () List!75083)

(declare-fun e!9294 () B!4335)

(declare-fun contains!20921 (List!75083 B!4335) Bool)

(assert (=> start!755734 (= res!3173971 (contains!20921 l!3127 e!9294))))

(assert (=> start!755734 e!4728262))

(declare-fun e!4728263 () Bool)

(assert (=> start!755734 e!4728263))

(declare-fun tp_is_empty!54239 () Bool)

(assert (=> start!755734 tp_is_empty!54239))

(declare-fun b!8026170 () Bool)

(declare-fun res!3173970 () Bool)

(assert (=> b!8026170 (=> (not res!3173970) (not e!4728262))))

(declare-fun head!16463 (List!75083) B!4335)

(assert (=> b!8026170 (= res!3173970 (not (= (head!16463 l!3127) e!9294)))))

(declare-fun b!8026171 () Bool)

(declare-fun ListPrimitiveSize!512 (List!75083) Int)

(assert (=> b!8026171 (= e!4728262 (< (ListPrimitiveSize!512 l!3127) 0))))

(declare-fun b!8026172 () Bool)

(declare-fun tp!2401994 () Bool)

(assert (=> b!8026172 (= e!4728263 (and tp_is_empty!54239 tp!2401994))))

(assert (= (and start!755734 res!3173971) b!8026170))

(assert (= (and b!8026170 res!3173970) b!8026171))

(assert (= (and start!755734 (is-Cons!74957 l!3127)) b!8026172))

(declare-fun m!8388642 () Bool)

(assert (=> start!755734 m!8388642))

(declare-fun m!8388644 () Bool)

(assert (=> b!8026170 m!8388644))

(declare-fun m!8388646 () Bool)

(assert (=> b!8026171 m!8388646))

(push 1)

(assert (not b!8026170))

(assert tp_is_empty!54239)

(assert (not b!8026171))

(assert (not start!755734))

(assert (not b!8026172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2393420 () Bool)

(declare-fun lt!2720865 () Bool)

(declare-fun content!15976 (List!75083) (Set B!4335))

(assert (=> d!2393420 (= lt!2720865 (set.member e!9294 (content!15976 l!3127)))))

(declare-fun e!4728275 () Bool)

(assert (=> d!2393420 (= lt!2720865 e!4728275)))

(declare-fun res!3173983 () Bool)

(assert (=> d!2393420 (=> (not res!3173983) (not e!4728275))))

(assert (=> d!2393420 (= res!3173983 (is-Cons!74957 l!3127))))

(assert (=> d!2393420 (= (contains!20921 l!3127 e!9294) lt!2720865)))

(declare-fun b!8026186 () Bool)

(declare-fun e!4728274 () Bool)

(assert (=> b!8026186 (= e!4728275 e!4728274)))

(declare-fun res!3173982 () Bool)

(assert (=> b!8026186 (=> res!3173982 e!4728274)))

(assert (=> b!8026186 (= res!3173982 (= (h!81405 l!3127) e!9294))))

(declare-fun b!8026187 () Bool)

(assert (=> b!8026187 (= e!4728274 (contains!20921 (t!390839 l!3127) e!9294))))

(assert (= (and d!2393420 res!3173983) b!8026186))

(assert (= (and b!8026186 (not res!3173982)) b!8026187))

(declare-fun m!8388654 () Bool)

(assert (=> d!2393420 m!8388654))

(declare-fun m!8388656 () Bool)

(assert (=> d!2393420 m!8388656))

(declare-fun m!8388658 () Bool)

(assert (=> b!8026187 m!8388658))

(assert (=> start!755734 d!2393420))

(declare-fun d!2393426 () Bool)

(declare-fun lt!2720871 () Int)

(assert (=> d!2393426 (>= lt!2720871 0)))

(declare-fun e!4728284 () Int)

(assert (=> d!2393426 (= lt!2720871 e!4728284)))

(declare-fun c!1472699 () Bool)

(assert (=> d!2393426 (= c!1472699 (is-Nil!74957 l!3127))))

(assert (=> d!2393426 (= (ListPrimitiveSize!512 l!3127) lt!2720871)))

(declare-fun b!8026198 () Bool)

(assert (=> b!8026198 (= e!4728284 0)))

(declare-fun b!8026199 () Bool)

(assert (=> b!8026199 (= e!4728284 (+ 1 (ListPrimitiveSize!512 (t!390839 l!3127))))))

(assert (= (and d!2393426 c!1472699) b!8026198))

(assert (= (and d!2393426 (not c!1472699)) b!8026199))

(declare-fun m!8388666 () Bool)

(assert (=> b!8026199 m!8388666))

(assert (=> b!8026171 d!2393426))

(declare-fun d!2393430 () Bool)

(assert (=> d!2393430 (= (head!16463 l!3127) (h!81405 l!3127))))

(assert (=> b!8026170 d!2393430))

(declare-fun b!8026208 () Bool)

(declare-fun e!4728289 () Bool)

(declare-fun tp!2402000 () Bool)

(assert (=> b!8026208 (= e!4728289 (and tp_is_empty!54239 tp!2402000))))

(assert (=> b!8026172 (= tp!2401994 e!4728289)))

(assert (= (and b!8026172 (is-Cons!74957 (t!390839 l!3127))) b!8026208))

(push 1)

(assert (not b!8026199))

(assert tp_is_empty!54239)

(assert (not b!8026187))

(assert (not d!2393420))

(assert (not b!8026208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

