; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!545948 () Bool)

(assert start!545948)

(declare-fun b_free!133543 () Bool)

(declare-fun b_next!134333 () Bool)

(assert (=> start!545948 (= b_free!133543 (not b_next!134333))))

(declare-fun tp!1447879 () Bool)

(declare-fun b_and!350519 () Bool)

(assert (=> start!545948 (= tp!1447879 b_and!350519)))

(declare-fun b!5162400 () Bool)

(declare-fun e!3216509 () Bool)

(declare-fun tp_is_empty!38245 () Bool)

(declare-fun tp!1447878 () Bool)

(assert (=> b!5162400 (= e!3216509 (and tp_is_empty!38245 tp!1447878))))

(declare-fun b!5162401 () Bool)

(declare-fun e!3216510 () Bool)

(declare-fun e!3216511 () Bool)

(assert (=> b!5162401 (= e!3216510 (not e!3216511))))

(declare-fun res!2194733 () Bool)

(assert (=> b!5162401 (=> res!2194733 e!3216511)))

(declare-datatypes ((B!3099 0))(
  ( (B!3100 (val!24333 Int)) )
))
(declare-datatypes ((List!59999 0))(
  ( (Nil!59875) (Cons!59875 (h!66323 B!3099) (t!373094 List!59999)) )
))
(declare-fun l!3049 () List!59999)

(declare-fun lt!2122555 () (Set B!3099))

(declare-fun content!10606 (List!59999) (Set B!3099))

(assert (=> b!5162401 (= res!2194733 (not (= (content!10606 l!3049) lt!2122555)))))

(declare-fun lt!2122552 () (Set B!3099))

(assert (=> b!5162401 (= lt!2122555 (set.union lt!2122552 (set.insert (h!66323 l!3049) (as set.empty (Set B!3099)))))))

(declare-fun p!1890 () Int)

(declare-fun forall!14056 ((Set B!3099) Int) Bool)

(assert (=> b!5162401 (forall!14056 lt!2122552 p!1890)))

(assert (=> b!5162401 (= lt!2122552 (content!10606 (t!373094 l!3049)))))

(declare-datatypes ((Unit!151305 0))(
  ( (Unit!151306) )
))
(declare-fun lt!2122553 () Unit!151305)

(declare-fun lemmaForallThenOnContent!43 (List!59999 Int) Unit!151305)

(assert (=> b!5162401 (= lt!2122553 (lemmaForallThenOnContent!43 (t!373094 l!3049) p!1890))))

(declare-fun b!5162403 () Bool)

(declare-fun res!2194735 () Bool)

(assert (=> b!5162403 (=> (not res!2194735) (not e!3216510))))

(assert (=> b!5162403 (= res!2194735 (is-Cons!59875 l!3049))))

(declare-fun b!5162404 () Bool)

(declare-fun res!2194734 () Bool)

(assert (=> b!5162404 (=> res!2194734 e!3216511)))

(declare-fun dynLambda!23833 (Int B!3099) Bool)

(assert (=> b!5162404 (= res!2194734 (not (dynLambda!23833 p!1890 (h!66323 l!3049))))))

(declare-fun res!2194736 () Bool)

(assert (=> start!545948 (=> (not res!2194736) (not e!3216510))))

(declare-fun forall!14057 (List!59999 Int) Bool)

(assert (=> start!545948 (= res!2194736 (forall!14057 l!3049 p!1890))))

(assert (=> start!545948 e!3216510))

(assert (=> start!545948 e!3216509))

(assert (=> start!545948 tp!1447879))

(declare-fun b!5162402 () Bool)

(assert (=> b!5162402 (= e!3216511 true)))

(declare-fun lt!2122554 () (Set B!3099))

(declare-fun toList!8426 ((Set B!3099)) List!59999)

(assert (=> b!5162402 (= lt!2122554 (content!10606 (toList!8426 lt!2122555)))))

(assert (= (and start!545948 res!2194736) b!5162403))

(assert (= (and b!5162403 res!2194735) b!5162401))

(assert (= (and b!5162401 (not res!2194733)) b!5162404))

(assert (= (and b!5162404 (not res!2194734)) b!5162402))

(assert (= (and start!545948 (is-Cons!59875 l!3049)) b!5162400))

(declare-fun b_lambda!200629 () Bool)

(assert (=> (not b_lambda!200629) (not b!5162404)))

(declare-fun t!373093 () Bool)

(declare-fun tb!261893 () Bool)

(assert (=> (and start!545948 (= p!1890 p!1890) t!373093) tb!261893))

(declare-fun result!330356 () Bool)

(assert (=> tb!261893 (= result!330356 true)))

(assert (=> b!5162404 t!373093))

(declare-fun b_and!350521 () Bool)

(assert (= b_and!350519 (and (=> t!373093 result!330356) b_and!350521)))

(declare-fun m!6213052 () Bool)

(assert (=> b!5162401 m!6213052))

(declare-fun m!6213054 () Bool)

(assert (=> b!5162401 m!6213054))

(declare-fun m!6213056 () Bool)

(assert (=> b!5162401 m!6213056))

(declare-fun m!6213058 () Bool)

(assert (=> b!5162401 m!6213058))

(declare-fun m!6213060 () Bool)

(assert (=> b!5162401 m!6213060))

(declare-fun m!6213062 () Bool)

(assert (=> b!5162404 m!6213062))

(declare-fun m!6213064 () Bool)

(assert (=> start!545948 m!6213064))

(declare-fun m!6213066 () Bool)

(assert (=> b!5162402 m!6213066))

(assert (=> b!5162402 m!6213066))

(declare-fun m!6213068 () Bool)

(assert (=> b!5162402 m!6213068))

(push 1)

(assert b_and!350521)

(assert tp_is_empty!38245)

(assert (not b!5162401))

(assert (not start!545948))

(assert (not b_lambda!200629))

(assert (not b_next!134333))

(assert (not b!5162402))

(assert (not b!5162400))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350521)

(assert (not b_next!134333))

(check-sat)

(pop 1)

