; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546020 () Bool)

(assert start!546020)

(declare-fun b_free!133563 () Bool)

(declare-fun b_next!134353 () Bool)

(assert (=> start!546020 (= b_free!133563 (not b_next!134353))))

(declare-fun tp!1447956 () Bool)

(declare-fun b_and!350563 () Bool)

(assert (=> start!546020 (= tp!1447956 b_and!350563)))

(declare-fun res!2194859 () Bool)

(declare-fun e!3216671 () Bool)

(assert (=> start!546020 (=> (not res!2194859) (not e!3216671))))

(declare-datatypes ((B!3119 0))(
  ( (B!3120 (val!24343 Int)) )
))
(declare-datatypes ((List!60009 0))(
  ( (Nil!59885) (Cons!59885 (h!66333 B!3119) (t!373118 List!60009)) )
))
(declare-fun l!3049 () List!60009)

(declare-fun p!1890 () Int)

(declare-fun forall!14076 (List!60009 Int) Bool)

(assert (=> start!546020 (= res!2194859 (forall!14076 l!3049 p!1890))))

(assert (=> start!546020 e!3216671))

(declare-fun e!3216672 () Bool)

(assert (=> start!546020 e!3216672))

(assert (=> start!546020 tp!1447956))

(declare-fun b!5162638 () Bool)

(declare-fun ListPrimitiveSize!397 (List!60009) Int)

(assert (=> b!5162638 (= e!3216671 (< (ListPrimitiveSize!397 l!3049) 0))))

(declare-fun b!5162639 () Bool)

(declare-fun tp_is_empty!38265 () Bool)

(declare-fun tp!1447957 () Bool)

(assert (=> b!5162639 (= e!3216672 (and tp_is_empty!38265 tp!1447957))))

(assert (= (and start!546020 res!2194859) b!5162638))

(assert (= (and start!546020 (is-Cons!59885 l!3049)) b!5162639))

(declare-fun m!6213312 () Bool)

(assert (=> start!546020 m!6213312))

(declare-fun m!6213314 () Bool)

(assert (=> b!5162638 m!6213314))

(push 1)

(assert (not b!5162638))

(assert (not b_next!134353))

(assert (not b!5162639))

(assert (not start!546020))

(assert b_and!350563)

(assert tp_is_empty!38265)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350563)

(assert (not b_next!134353))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1665971 () Bool)

(declare-fun res!2194867 () Bool)

(declare-fun e!3216683 () Bool)

(assert (=> d!1665971 (=> res!2194867 e!3216683)))

(assert (=> d!1665971 (= res!2194867 (is-Nil!59885 l!3049))))

(assert (=> d!1665971 (= (forall!14076 l!3049 p!1890) e!3216683)))

(declare-fun b!5162650 () Bool)

(declare-fun e!3216684 () Bool)

(assert (=> b!5162650 (= e!3216683 e!3216684)))

(declare-fun res!2194868 () Bool)

(assert (=> b!5162650 (=> (not res!2194868) (not e!3216684))))

(declare-fun dynLambda!23841 (Int B!3119) Bool)

(assert (=> b!5162650 (= res!2194868 (dynLambda!23841 p!1890 (h!66333 l!3049)))))

(declare-fun b!5162651 () Bool)

(assert (=> b!5162651 (= e!3216684 (forall!14076 (t!373118 l!3049) p!1890))))

(assert (= (and d!1665971 (not res!2194867)) b!5162650))

(assert (= (and b!5162650 res!2194868) b!5162651))

(declare-fun b_lambda!200673 () Bool)

(assert (=> (not b_lambda!200673) (not b!5162650)))

(declare-fun t!373121 () Bool)

(declare-fun tb!261909 () Bool)

(assert (=> (and start!546020 (= p!1890 p!1890) t!373121) tb!261909))

(declare-fun result!330384 () Bool)

(assert (=> tb!261909 (= result!330384 true)))

(assert (=> b!5162650 t!373121))

(declare-fun b_and!350567 () Bool)

(assert (= b_and!350563 (and (=> t!373121 result!330384) b_and!350567)))

(declare-fun m!6213320 () Bool)

(assert (=> b!5162650 m!6213320))

(declare-fun m!6213322 () Bool)

(assert (=> b!5162651 m!6213322))

(assert (=> start!546020 d!1665971))

(declare-fun d!1665975 () Bool)

(declare-fun lt!2122666 () Int)

(assert (=> d!1665975 (>= lt!2122666 0)))

(declare-fun e!3216693 () Int)

(assert (=> d!1665975 (= lt!2122666 e!3216693)))

(declare-fun c!888197 () Bool)

(assert (=> d!1665975 (= c!888197 (is-Nil!59885 l!3049))))

(assert (=> d!1665975 (= (ListPrimitiveSize!397 l!3049) lt!2122666)))

(declare-fun b!5162662 () Bool)

(assert (=> b!5162662 (= e!3216693 0)))

(declare-fun b!5162663 () Bool)

(assert (=> b!5162663 (= e!3216693 (+ 1 (ListPrimitiveSize!397 (t!373118 l!3049))))))

(assert (= (and d!1665975 c!888197) b!5162662))

(assert (= (and d!1665975 (not c!888197)) b!5162663))

(declare-fun m!6213328 () Bool)

(assert (=> b!5162663 m!6213328))

(assert (=> b!5162638 d!1665975))

(declare-fun b!5162668 () Bool)

(declare-fun e!3216696 () Bool)

(declare-fun tp!1447966 () Bool)

(assert (=> b!5162668 (= e!3216696 (and tp_is_empty!38265 tp!1447966))))

(assert (=> b!5162639 (= tp!1447957 e!3216696)))

(assert (= (and b!5162639 (is-Cons!59885 (t!373118 l!3049))) b!5162668))

(declare-fun b_lambda!200677 () Bool)

(assert (= b_lambda!200673 (or (and start!546020 b_free!133563) b_lambda!200677)))

(push 1)

(assert (not b_next!134353))

(assert (not b_lambda!200677))

(assert (not b!5162668))

(assert tp_is_empty!38265)

(assert (not b!5162663))

(assert b_and!350567)

(assert (not b!5162651))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350567)

(assert (not b_next!134353))

(check-sat)

(pop 1)

