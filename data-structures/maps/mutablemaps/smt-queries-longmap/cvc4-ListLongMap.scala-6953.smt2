; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87728 () Bool)

(assert start!87728)

(declare-fun res!680794 () Bool)

(declare-fun e!570610 () Bool)

(assert (=> start!87728 (=> (not res!680794) (not e!570610))))

(declare-datatypes ((B!1428 0))(
  ( (B!1429 (val!11798 Int)) )
))
(declare-datatypes ((tuple2!15232 0))(
  ( (tuple2!15233 (_1!7626 (_ BitVec 64)) (_2!7626 B!1428)) )
))
(declare-datatypes ((List!21543 0))(
  ( (Nil!21540) (Cons!21539 (h!22737 tuple2!15232) (t!30552 List!21543)) )
))
(declare-fun l!412 () List!21543)

(declare-fun isStrictlySorted!568 (List!21543) Bool)

(assert (=> start!87728 (= res!680794 (isStrictlySorted!568 l!412))))

(assert (=> start!87728 e!570610))

(declare-fun e!570611 () Bool)

(assert (=> start!87728 e!570611))

(declare-fun tp_is_empty!23495 () Bool)

(assert (=> start!87728 tp_is_empty!23495))

(declare-fun b!1014248 () Bool)

(declare-fun res!680793 () Bool)

(assert (=> b!1014248 (=> (not res!680793) (not e!570610))))

(declare-fun value!115 () B!1428)

(assert (=> b!1014248 (= res!680793 (and (not (= (_2!7626 (h!22737 l!412)) value!115)) (is-Cons!21539 l!412)))))

(declare-fun b!1014249 () Bool)

(declare-fun ListPrimitiveSize!111 (List!21543) Int)

(assert (=> b!1014249 (= e!570610 (>= (ListPrimitiveSize!111 (t!30552 l!412)) (ListPrimitiveSize!111 l!412)))))

(declare-fun b!1014250 () Bool)

(declare-fun tp!70509 () Bool)

(assert (=> b!1014250 (= e!570611 (and tp_is_empty!23495 tp!70509))))

(assert (= (and start!87728 res!680794) b!1014248))

(assert (= (and b!1014248 res!680793) b!1014249))

(assert (= (and start!87728 (is-Cons!21539 l!412)) b!1014250))

(declare-fun m!937107 () Bool)

(assert (=> start!87728 m!937107))

(declare-fun m!937109 () Bool)

(assert (=> b!1014249 m!937109))

(declare-fun m!937111 () Bool)

(assert (=> b!1014249 m!937111))

(push 1)

(assert (not start!87728))

(assert (not b!1014249))

(assert (not b!1014250))

(assert tp_is_empty!23495)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120709 () Bool)

(declare-fun res!680809 () Bool)

(declare-fun e!570626 () Bool)

(assert (=> d!120709 (=> res!680809 e!570626)))

(assert (=> d!120709 (= res!680809 (or (is-Nil!21540 l!412) (is-Nil!21540 (t!30552 l!412))))))

(assert (=> d!120709 (= (isStrictlySorted!568 l!412) e!570626)))

(declare-fun b!1014265 () Bool)

(declare-fun e!570627 () Bool)

(assert (=> b!1014265 (= e!570626 e!570627)))

(declare-fun res!680810 () Bool)

(assert (=> b!1014265 (=> (not res!680810) (not e!570627))))

(assert (=> b!1014265 (= res!680810 (bvslt (_1!7626 (h!22737 l!412)) (_1!7626 (h!22737 (t!30552 l!412)))))))

(declare-fun b!1014266 () Bool)

(assert (=> b!1014266 (= e!570627 (isStrictlySorted!568 (t!30552 l!412)))))

(assert (= (and d!120709 (not res!680809)) b!1014265))

(assert (= (and b!1014265 res!680810) b!1014266))

(declare-fun m!937115 () Bool)

(assert (=> b!1014266 m!937115))

(assert (=> start!87728 d!120709))

(declare-fun d!120713 () Bool)

(declare-fun lt!448460 () Int)

(assert (=> d!120713 (>= lt!448460 0)))

(declare-fun e!570637 () Int)

(assert (=> d!120713 (= lt!448460 e!570637)))

(declare-fun c!102605 () Bool)

(assert (=> d!120713 (= c!102605 (is-Nil!21540 (t!30552 l!412)))))

(assert (=> d!120713 (= (ListPrimitiveSize!111 (t!30552 l!412)) lt!448460)))

(declare-fun b!1014283 () Bool)

(assert (=> b!1014283 (= e!570637 0)))

(declare-fun b!1014284 () Bool)

(assert (=> b!1014284 (= e!570637 (+ 1 (ListPrimitiveSize!111 (t!30552 (t!30552 l!412)))))))

(assert (= (and d!120713 c!102605) b!1014283))

(assert (= (and d!120713 (not c!102605)) b!1014284))

(declare-fun m!937121 () Bool)

(assert (=> b!1014284 m!937121))

(assert (=> b!1014249 d!120713))

(declare-fun d!120719 () Bool)

(declare-fun lt!448463 () Int)

(assert (=> d!120719 (>= lt!448463 0)))

(declare-fun e!570640 () Int)

(assert (=> d!120719 (= lt!448463 e!570640)))

(declare-fun c!102608 () Bool)

(assert (=> d!120719 (= c!102608 (is-Nil!21540 l!412))))

(assert (=> d!120719 (= (ListPrimitiveSize!111 l!412) lt!448463)))

(declare-fun b!1014289 () Bool)

(assert (=> b!1014289 (= e!570640 0)))

(declare-fun b!1014290 () Bool)

(assert (=> b!1014290 (= e!570640 (+ 1 (ListPrimitiveSize!111 (t!30552 l!412))))))

(assert (= (and d!120719 c!102608) b!1014289))

(assert (= (and d!120719 (not c!102608)) b!1014290))

(assert (=> b!1014290 m!937109))

(assert (=> b!1014249 d!120719))

