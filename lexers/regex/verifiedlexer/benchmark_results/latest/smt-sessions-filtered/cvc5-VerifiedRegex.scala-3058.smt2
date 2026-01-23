; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!182860 () Bool)

(assert start!182860)

(declare-fun res!826191 () Bool)

(declare-fun e!1174649 () Bool)

(assert (=> start!182860 (=> (not res!826191) (not e!1174649))))

(declare-fun i!921 () Int)

(declare-datatypes ((B!1483 0))(
  ( (B!1484 (val!5689 Int)) )
))
(declare-datatypes ((List!20289 0))(
  ( (Nil!20219) (Cons!20219 (h!25620 B!1483) (t!171718 List!20289)) )
))
(declare-fun l!3005 () List!20289)

(assert (=> start!182860 (= res!826191 (and (>= i!921 0) (not (is-Nil!20219 l!3005)) (not (= i!921 0))))))

(assert (=> start!182860 e!1174649))

(assert (=> start!182860 true))

(declare-fun e!1174647 () Bool)

(assert (=> start!182860 e!1174647))

(declare-fun e!1174648 () Bool)

(assert (=> start!182860 e!1174648))

(declare-fun b!1838257 () Bool)

(assert (=> b!1838257 (= e!1174649 (< (- i!921 1) 0))))

(declare-fun lt!713449 () List!20289)

(declare-fun acc!274 () List!20289)

(declare-fun ++!5490 (List!20289 List!20289) List!20289)

(assert (=> b!1838257 (= lt!713449 (++!5490 acc!274 (Cons!20219 (h!25620 l!3005) Nil!20219)))))

(declare-fun b!1838258 () Bool)

(declare-fun tp_is_empty!8231 () Bool)

(declare-fun tp!520038 () Bool)

(assert (=> b!1838258 (= e!1174647 (and tp_is_empty!8231 tp!520038))))

(declare-fun b!1838259 () Bool)

(declare-fun tp!520037 () Bool)

(assert (=> b!1838259 (= e!1174648 (and tp_is_empty!8231 tp!520037))))

(assert (= (and start!182860 res!826191) b!1838257))

(assert (= (and start!182860 (is-Cons!20219 l!3005)) b!1838258))

(assert (= (and start!182860 (is-Cons!20219 acc!274)) b!1838259))

(declare-fun m!2266061 () Bool)

(assert (=> b!1838257 m!2266061))

(push 1)

(assert (not b!1838257))

(assert (not b!1838258))

(assert (not b!1838259))

(assert tp_is_empty!8231)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

