; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1978 () Bool)

(assert start!1978)

(declare-fun res!10503 () Bool)

(declare-fun e!7978 () Bool)

(assert (=> start!1978 (=> (not res!10503) (not e!7978))))

(declare-datatypes ((B!482 0))(
  ( (B!483 (val!339 Int)) )
))
(declare-datatypes ((tuple2!460 0))(
  ( (tuple2!461 (_1!230 (_ BitVec 64)) (_2!230 B!482)) )
))
(declare-datatypes ((List!389 0))(
  ( (Nil!386) (Cons!385 (h!951 tuple2!460) (t!2785 List!389)) )
))
(declare-fun l!522 () List!389)

(declare-fun isStrictlySorted!80 (List!389) Bool)

(assert (=> start!1978 (= res!10503 (isStrictlySorted!80 l!522))))

(assert (=> start!1978 e!7978))

(declare-fun e!7977 () Bool)

(assert (=> start!1978 e!7977))

(declare-fun tp_is_empty!661 () Bool)

(assert (=> start!1978 tp_is_empty!661))

(declare-fun b!13317 () Bool)

(declare-fun res!10504 () Bool)

(assert (=> b!13317 (=> (not res!10504) (not e!7978))))

(declare-fun value!159 () B!482)

(assert (=> b!13317 (= res!10504 (and (not (= (_2!230 (h!951 l!522)) value!159)) (is-Cons!385 l!522)))))

(declare-fun b!13318 () Bool)

(assert (=> b!13318 (= e!7978 (not (isStrictlySorted!80 (t!2785 l!522))))))

(declare-fun b!13319 () Bool)

(declare-fun tp!2168 () Bool)

(assert (=> b!13319 (= e!7977 (and tp_is_empty!661 tp!2168))))

(assert (= (and start!1978 res!10503) b!13317))

(assert (= (and b!13317 res!10504) b!13318))

(assert (= (and start!1978 (is-Cons!385 l!522)) b!13319))

(declare-fun m!9073 () Bool)

(assert (=> start!1978 m!9073))

(declare-fun m!9075 () Bool)

(assert (=> b!13318 m!9075))

(push 1)

(assert (not start!1978))

(assert (not b!13318))

(assert (not b!13319))

(assert tp_is_empty!661)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1996 () Bool)

(declare-fun res!10525 () Bool)

(declare-fun e!7999 () Bool)

(assert (=> d!1996 (=> res!10525 e!7999)))

(assert (=> d!1996 (= res!10525 (or (is-Nil!386 l!522) (is-Nil!386 (t!2785 l!522))))))

(assert (=> d!1996 (= (isStrictlySorted!80 l!522) e!7999)))

(declare-fun b!13347 () Bool)

(declare-fun e!8001 () Bool)

(assert (=> b!13347 (= e!7999 e!8001)))

(declare-fun res!10527 () Bool)

(assert (=> b!13347 (=> (not res!10527) (not e!8001))))

(assert (=> b!13347 (= res!10527 (bvslt (_1!230 (h!951 l!522)) (_1!230 (h!951 (t!2785 l!522)))))))

(declare-fun b!13349 () Bool)

(assert (=> b!13349 (= e!8001 (isStrictlySorted!80 (t!2785 l!522)))))

(assert (= (and d!1996 (not res!10525)) b!13347))

(assert (= (and b!13347 res!10527) b!13349))

(assert (=> b!13349 m!9075))

(assert (=> start!1978 d!1996))

(declare-fun d!2003 () Bool)

(declare-fun res!10531 () Bool)

(declare-fun e!8005 () Bool)

(assert (=> d!2003 (=> res!10531 e!8005)))

(assert (=> d!2003 (= res!10531 (or (is-Nil!386 (t!2785 l!522)) (is-Nil!386 (t!2785 (t!2785 l!522)))))))

(assert (=> d!2003 (= (isStrictlySorted!80 (t!2785 l!522)) e!8005)))

(declare-fun b!13352 () Bool)

(declare-fun e!8006 () Bool)

(assert (=> b!13352 (= e!8005 e!8006)))

(declare-fun res!10532 () Bool)

(assert (=> b!13352 (=> (not res!10532) (not e!8006))))

(assert (=> b!13352 (= res!10532 (bvslt (_1!230 (h!951 (t!2785 l!522))) (_1!230 (h!951 (t!2785 (t!2785 l!522))))))))

(declare-fun b!13353 () Bool)

(assert (=> b!13353 (= e!8006 (isStrictlySorted!80 (t!2785 (t!2785 l!522))))))

(assert (= (and d!2003 (not res!10531)) b!13352))

(assert (= (and b!13352 res!10532) b!13353))

(declare-fun m!9087 () Bool)

(assert (=> b!13353 m!9087))

(assert (=> b!13318 d!2003))

(declare-fun b!13362 () Bool)

(declare-fun e!8013 () Bool)

(declare-fun tp!2179 () Bool)

(assert (=> b!13362 (= e!8013 (and tp_is_empty!661 tp!2179))))

(assert (=> b!13319 (= tp!2168 e!8013)))

(assert (= (and b!13319 (is-Cons!385 (t!2785 l!522))) b!13362))

(push 1)

