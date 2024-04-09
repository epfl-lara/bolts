; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1982 () Bool)

(assert start!1982)

(declare-fun res!10515 () Bool)

(declare-fun e!7990 () Bool)

(assert (=> start!1982 (=> (not res!10515) (not e!7990))))

(declare-datatypes ((B!486 0))(
  ( (B!487 (val!341 Int)) )
))
(declare-datatypes ((tuple2!464 0))(
  ( (tuple2!465 (_1!232 (_ BitVec 64)) (_2!232 B!486)) )
))
(declare-datatypes ((List!391 0))(
  ( (Nil!388) (Cons!387 (h!953 tuple2!464) (t!2787 List!391)) )
))
(declare-fun l!522 () List!391)

(declare-fun isStrictlySorted!82 (List!391) Bool)

(assert (=> start!1982 (= res!10515 (isStrictlySorted!82 l!522))))

(assert (=> start!1982 e!7990))

(declare-fun e!7989 () Bool)

(assert (=> start!1982 e!7989))

(declare-fun tp_is_empty!665 () Bool)

(assert (=> start!1982 tp_is_empty!665))

(declare-fun b!13335 () Bool)

(declare-fun res!10516 () Bool)

(assert (=> b!13335 (=> (not res!10516) (not e!7990))))

(declare-fun value!159 () B!486)

(assert (=> b!13335 (= res!10516 (and (not (= (_2!232 (h!953 l!522)) value!159)) (is-Cons!387 l!522)))))

(declare-fun b!13336 () Bool)

(assert (=> b!13336 (= e!7990 (not (isStrictlySorted!82 (t!2787 l!522))))))

(declare-fun b!13337 () Bool)

(declare-fun tp!2174 () Bool)

(assert (=> b!13337 (= e!7989 (and tp_is_empty!665 tp!2174))))

(assert (= (and start!1982 res!10515) b!13335))

(assert (= (and b!13335 res!10516) b!13336))

(assert (= (and start!1982 (is-Cons!387 l!522)) b!13337))

(declare-fun m!9081 () Bool)

(assert (=> start!1982 m!9081))

(declare-fun m!9083 () Bool)

(assert (=> b!13336 m!9083))

(push 1)

(assert (not b!13336))

(assert (not start!1982))

(assert (not b!13337))

(assert tp_is_empty!665)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1999 () Bool)

(declare-fun res!10537 () Bool)

(declare-fun e!8017 () Bool)

(assert (=> d!1999 (=> res!10537 e!8017)))

(assert (=> d!1999 (= res!10537 (or (is-Nil!388 (t!2787 l!522)) (is-Nil!388 (t!2787 (t!2787 l!522)))))))

(assert (=> d!1999 (= (isStrictlySorted!82 (t!2787 l!522)) e!8017)))

(declare-fun b!13368 () Bool)

(declare-fun e!8018 () Bool)

(assert (=> b!13368 (= e!8017 e!8018)))

(declare-fun res!10538 () Bool)

(assert (=> b!13368 (=> (not res!10538) (not e!8018))))

(assert (=> b!13368 (= res!10538 (bvslt (_1!232 (h!953 (t!2787 l!522))) (_1!232 (h!953 (t!2787 (t!2787 l!522))))))))

(declare-fun b!13369 () Bool)

(assert (=> b!13369 (= e!8018 (isStrictlySorted!82 (t!2787 (t!2787 l!522))))))

(assert (= (and d!1999 (not res!10537)) b!13368))

(assert (= (and b!13368 res!10538) b!13369))

(declare-fun m!9089 () Bool)

(assert (=> b!13369 m!9089))

(assert (=> b!13336 d!1999))

(declare-fun d!2005 () Bool)

(declare-fun res!10539 () Bool)

(declare-fun e!8019 () Bool)

(assert (=> d!2005 (=> res!10539 e!8019)))

(assert (=> d!2005 (= res!10539 (or (is-Nil!388 l!522) (is-Nil!388 (t!2787 l!522))))))

(assert (=> d!2005 (= (isStrictlySorted!82 l!522) e!8019)))

(declare-fun b!13370 () Bool)

(declare-fun e!8020 () Bool)

(assert (=> b!13370 (= e!8019 e!8020)))

