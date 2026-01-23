; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!754862 () Bool)

(assert start!754862)

(declare-fun b!8019773 () Bool)

(declare-fun e!4724218 () Bool)

(declare-fun tp_is_empty!54015 () Bool)

(declare-fun tp!2400298 () Bool)

(assert (=> b!8019773 (= e!4724218 (and tp_is_empty!54015 tp!2400298))))

(declare-fun b!8019774 () Bool)

(declare-fun e!4724220 () Bool)

(assert (=> b!8019774 (= e!4724220 false)))

(declare-datatypes ((B!4127 0))(
  ( (B!4128 (val!32453 Int)) )
))
(declare-datatypes ((List!74965 0))(
  ( (Nil!74841) (Cons!74841 (h!81289 B!4127) (t!390708 List!74965)) )
))
(declare-fun lt!2719644 () List!74965)

(declare-fun s1!496 () List!74965)

(declare-fun lt!2719645 () List!74965)

(declare-fun ++!18531 (List!74965 List!74965) List!74965)

(assert (=> b!8019774 (= lt!2719644 (++!18531 (t!390708 s1!496) lt!2719645))))

(declare-fun res!3170998 () Bool)

(assert (=> start!754862 (=> (not res!3170998) (not e!4724220))))

(declare-fun tot!47 () List!74965)

(assert (=> start!754862 (= res!3170998 (= (++!18531 s1!496 lt!2719645) tot!47))))

(declare-fun hd2!39 () B!4127)

(declare-fun tl2!39 () List!74965)

(assert (=> start!754862 (= lt!2719645 (Cons!74841 hd2!39 tl2!39))))

(assert (=> start!754862 e!4724220))

(assert (=> start!754862 e!4724218))

(assert (=> start!754862 tp_is_empty!54015))

(declare-fun e!4724219 () Bool)

(assert (=> start!754862 e!4724219))

(declare-fun e!4724221 () Bool)

(assert (=> start!754862 e!4724221))

(declare-fun b!8019775 () Bool)

(declare-fun tp!2400299 () Bool)

(assert (=> b!8019775 (= e!4724219 (and tp_is_empty!54015 tp!2400299))))

(declare-fun b!8019776 () Bool)

(declare-fun tp!2400297 () Bool)

(assert (=> b!8019776 (= e!4724221 (and tp_is_empty!54015 tp!2400297))))

(declare-fun b!8019777 () Bool)

(declare-fun res!3170997 () Bool)

(assert (=> b!8019777 (=> (not res!3170997) (not e!4724220))))

(assert (=> b!8019777 (= res!3170997 (is-Cons!74841 s1!496))))

(assert (= (and start!754862 res!3170998) b!8019777))

(assert (= (and b!8019777 res!3170997) b!8019774))

(assert (= (and start!754862 (is-Cons!74841 tl2!39)) b!8019773))

(assert (= (and start!754862 (is-Cons!74841 s1!496)) b!8019775))

(assert (= (and start!754862 (is-Cons!74841 tot!47)) b!8019776))

(declare-fun m!8382820 () Bool)

(assert (=> b!8019774 m!8382820))

(declare-fun m!8382822 () Bool)

(assert (=> start!754862 m!8382822))

(push 1)

(assert (not b!8019773))

(assert tp_is_empty!54015)

(assert (not b!8019776))

(assert (not b!8019775))

(assert (not b!8019774))

(assert (not start!754862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

