; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87726 () Bool)

(assert start!87726)

(declare-fun res!680787 () Bool)

(declare-fun e!570605 () Bool)

(assert (=> start!87726 (=> (not res!680787) (not e!570605))))

(declare-datatypes ((B!1426 0))(
  ( (B!1427 (val!11797 Int)) )
))
(declare-datatypes ((tuple2!15230 0))(
  ( (tuple2!15231 (_1!7625 (_ BitVec 64)) (_2!7625 B!1426)) )
))
(declare-datatypes ((List!21542 0))(
  ( (Nil!21539) (Cons!21538 (h!22736 tuple2!15230) (t!30551 List!21542)) )
))
(declare-fun l!412 () List!21542)

(declare-fun isStrictlySorted!567 (List!21542) Bool)

(assert (=> start!87726 (= res!680787 (isStrictlySorted!567 l!412))))

(assert (=> start!87726 e!570605))

(declare-fun e!570604 () Bool)

(assert (=> start!87726 e!570604))

(declare-fun tp_is_empty!23493 () Bool)

(assert (=> start!87726 tp_is_empty!23493))

(declare-fun b!1014239 () Bool)

(declare-fun res!680788 () Bool)

(assert (=> b!1014239 (=> (not res!680788) (not e!570605))))

(declare-fun value!115 () B!1426)

(get-info :version)

(assert (=> b!1014239 (= res!680788 (and (not (= (_2!7625 (h!22736 l!412)) value!115)) ((_ is Cons!21538) l!412)))))

(declare-fun b!1014240 () Bool)

(declare-fun ListPrimitiveSize!110 (List!21542) Int)

(assert (=> b!1014240 (= e!570605 (>= (ListPrimitiveSize!110 (t!30551 l!412)) (ListPrimitiveSize!110 l!412)))))

(declare-fun b!1014241 () Bool)

(declare-fun tp!70506 () Bool)

(assert (=> b!1014241 (= e!570604 (and tp_is_empty!23493 tp!70506))))

(assert (= (and start!87726 res!680787) b!1014239))

(assert (= (and b!1014239 res!680788) b!1014240))

(assert (= (and start!87726 ((_ is Cons!21538) l!412)) b!1014241))

(declare-fun m!937101 () Bool)

(assert (=> start!87726 m!937101))

(declare-fun m!937103 () Bool)

(assert (=> b!1014240 m!937103))

(declare-fun m!937105 () Bool)

(assert (=> b!1014240 m!937105))

(check-sat (not start!87726) (not b!1014240) (not b!1014241) tp_is_empty!23493)
(check-sat)
(get-model)

(declare-fun d!120707 () Bool)

(declare-fun res!680811 () Bool)

(declare-fun e!570628 () Bool)

(assert (=> d!120707 (=> res!680811 e!570628)))

(assert (=> d!120707 (= res!680811 (or ((_ is Nil!21539) l!412) ((_ is Nil!21539) (t!30551 l!412))))))

(assert (=> d!120707 (= (isStrictlySorted!567 l!412) e!570628)))

(declare-fun b!1014267 () Bool)

(declare-fun e!570629 () Bool)

(assert (=> b!1014267 (= e!570628 e!570629)))

(declare-fun res!680812 () Bool)

(assert (=> b!1014267 (=> (not res!680812) (not e!570629))))

(assert (=> b!1014267 (= res!680812 (bvslt (_1!7625 (h!22736 l!412)) (_1!7625 (h!22736 (t!30551 l!412)))))))

(declare-fun b!1014268 () Bool)

(assert (=> b!1014268 (= e!570629 (isStrictlySorted!567 (t!30551 l!412)))))

(assert (= (and d!120707 (not res!680811)) b!1014267))

(assert (= (and b!1014267 res!680812) b!1014268))

(declare-fun m!937117 () Bool)

(assert (=> b!1014268 m!937117))

(assert (=> start!87726 d!120707))

(declare-fun d!120715 () Bool)

(declare-fun lt!448461 () Int)

(assert (=> d!120715 (>= lt!448461 0)))

(declare-fun e!570638 () Int)

(assert (=> d!120715 (= lt!448461 e!570638)))

(declare-fun c!102606 () Bool)

(assert (=> d!120715 (= c!102606 ((_ is Nil!21539) (t!30551 l!412)))))

(assert (=> d!120715 (= (ListPrimitiveSize!110 (t!30551 l!412)) lt!448461)))

(declare-fun b!1014285 () Bool)

(assert (=> b!1014285 (= e!570638 0)))

(declare-fun b!1014286 () Bool)

(assert (=> b!1014286 (= e!570638 (+ 1 (ListPrimitiveSize!110 (t!30551 (t!30551 l!412)))))))

(assert (= (and d!120715 c!102606) b!1014285))

(assert (= (and d!120715 (not c!102606)) b!1014286))

(declare-fun m!937123 () Bool)

(assert (=> b!1014286 m!937123))

(assert (=> b!1014240 d!120715))

(declare-fun d!120721 () Bool)

(declare-fun lt!448464 () Int)

(assert (=> d!120721 (>= lt!448464 0)))

(declare-fun e!570641 () Int)

(assert (=> d!120721 (= lt!448464 e!570641)))

(declare-fun c!102609 () Bool)

(assert (=> d!120721 (= c!102609 ((_ is Nil!21539) l!412))))

(assert (=> d!120721 (= (ListPrimitiveSize!110 l!412) lt!448464)))

(declare-fun b!1014291 () Bool)

(assert (=> b!1014291 (= e!570641 0)))

(declare-fun b!1014292 () Bool)

(assert (=> b!1014292 (= e!570641 (+ 1 (ListPrimitiveSize!110 (t!30551 l!412))))))

(assert (= (and d!120721 c!102609) b!1014291))

(assert (= (and d!120721 (not c!102609)) b!1014292))

(assert (=> b!1014292 m!937103))

(assert (=> b!1014240 d!120721))

(declare-fun b!1014307 () Bool)

(declare-fun e!570650 () Bool)

(declare-fun tp!70518 () Bool)

(assert (=> b!1014307 (= e!570650 (and tp_is_empty!23493 tp!70518))))

(assert (=> b!1014241 (= tp!70506 e!570650)))

(assert (= (and b!1014241 ((_ is Cons!21538) (t!30551 l!412))) b!1014307))

(check-sat tp_is_empty!23493 (not b!1014292) (not b!1014268) (not b!1014286) (not b!1014307))
(check-sat)
