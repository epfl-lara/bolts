; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755670 () Bool)

(assert start!755670)

(declare-fun b!8025934 () Bool)

(declare-fun res!3173827 () Bool)

(declare-fun e!4728098 () Bool)

(assert (=> b!8025934 (=> (not res!3173827) (not e!4728098))))

(declare-datatypes ((B!4315 0))(
  ( (B!4316 (val!32557 Int)) )
))
(declare-datatypes ((List!75073 0))(
  ( (Nil!74947) (Cons!74947 (h!81395 B!4315) (t!390829 List!75073)) )
))
(declare-fun l!3127 () List!75073)

(declare-fun e!9294 () B!4315)

(declare-fun head!16453 (List!75073) B!4315)

(assert (=> b!8025934 (= res!3173827 (not (= (head!16453 l!3127) e!9294)))))

(declare-fun b!8025935 () Bool)

(declare-fun e!4728099 () Bool)

(assert (=> b!8025935 (= e!4728098 e!4728099)))

(declare-fun res!3173828 () Bool)

(assert (=> b!8025935 (=> (not res!3173828) (not e!4728099))))

(declare-fun lt!2720789 () List!75073)

(assert (=> b!8025935 (= res!3173828 (not (= (head!16453 lt!2720789) e!9294)))))

(declare-fun tail!15996 (List!75073) List!75073)

(assert (=> b!8025935 (= lt!2720789 (tail!15996 l!3127))))

(declare-fun b!8025937 () Bool)

(declare-fun e!4728100 () Bool)

(declare-fun tp_is_empty!54219 () Bool)

(declare-fun tp!2401946 () Bool)

(assert (=> b!8025937 (= e!4728100 (and tp_is_empty!54219 tp!2401946))))

(declare-fun b!8025936 () Bool)

(assert (=> b!8025936 (= e!4728099 false)))

(declare-fun lt!2720790 () Bool)

(declare-fun contains!20911 (List!75073 B!4315) Bool)

(assert (=> b!8025936 (= lt!2720790 (contains!20911 lt!2720789 e!9294))))

(declare-fun res!3173826 () Bool)

(assert (=> start!755670 (=> (not res!3173826) (not e!4728098))))

(assert (=> start!755670 (= res!3173826 (contains!20911 l!3127 e!9294))))

(assert (=> start!755670 e!4728098))

(assert (=> start!755670 e!4728100))

(assert (=> start!755670 tp_is_empty!54219))

(assert (= (and start!755670 res!3173826) b!8025934))

(assert (= (and b!8025934 res!3173827) b!8025935))

(assert (= (and b!8025935 res!3173828) b!8025936))

(assert (= (and start!755670 (is-Cons!74947 l!3127)) b!8025937))

(declare-fun m!8388438 () Bool)

(assert (=> b!8025934 m!8388438))

(declare-fun m!8388440 () Bool)

(assert (=> b!8025935 m!8388440))

(declare-fun m!8388442 () Bool)

(assert (=> b!8025935 m!8388442))

(declare-fun m!8388444 () Bool)

(assert (=> b!8025936 m!8388444))

(declare-fun m!8388446 () Bool)

(assert (=> start!755670 m!8388446))

(push 1)

(assert (not start!755670))

(assert (not b!8025934))

(assert (not b!8025935))

(assert (not b!8025936))

(assert (not b!8025937))

(assert tp_is_empty!54219)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

