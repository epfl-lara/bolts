; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85420 () Bool)

(assert start!85420)

(declare-fun res!663831 () Bool)

(declare-fun e!560402 () Bool)

(assert (=> start!85420 (=> (not res!663831) (not e!560402))))

(declare-datatypes ((List!21033 0))(
  ( (Nil!21030) (Cons!21029 (h!22191 (_ BitVec 64)) (t!30042 List!21033)) )
))
(declare-fun l!3519 () List!21033)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5790 (List!21033 (_ BitVec 64)) Bool)

(assert (=> start!85420 (= res!663831 (not (contains!5790 l!3519 e!29)))))

(assert (=> start!85420 e!560402))

(assert (=> start!85420 true))

(declare-fun b!993069 () Bool)

(declare-fun res!663832 () Bool)

(assert (=> b!993069 (=> (not res!663832) (not e!560402))))

(declare-datatypes ((tuple2!15106 0))(
  ( (tuple2!15107 (_1!7563 (_ BitVec 64)) (_2!7563 List!21033)) )
))
(declare-datatypes ((Option!566 0))(
  ( (Some!565 (v!14396 tuple2!15106)) (None!564) )
))
(declare-fun isEmpty!775 (Option!566) Bool)

(declare-fun unapply!42 (List!21033) Option!566)

(assert (=> b!993069 (= res!663832 (isEmpty!775 (unapply!42 l!3519)))))

(declare-fun b!993070 () Bool)

(assert (=> b!993070 (= e!560402 (not (is-Nil!21030 l!3519)))))

(assert (= (and start!85420 res!663831) b!993069))

(assert (= (and b!993069 res!663832) b!993070))

(declare-fun m!920927 () Bool)

(assert (=> start!85420 m!920927))

(declare-fun m!920929 () Bool)

(assert (=> b!993069 m!920929))

(assert (=> b!993069 m!920929))

(declare-fun m!920931 () Bool)

(assert (=> b!993069 m!920931))

(push 1)

(assert (not b!993069))

(assert (not start!85420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118407 () Bool)

(assert (=> d!118407 (= (isEmpty!775 (unapply!42 l!3519)) (not (is-Some!565 (unapply!42 l!3519))))))

(assert (=> b!993069 d!118407))

(declare-fun d!118409 () Bool)

(assert (=> d!118409 (= (unapply!42 l!3519) (ite (is-Nil!21030 l!3519) None!564 (Some!565 (tuple2!15107 (h!22191 l!3519) (t!30042 l!3519)))))))

(assert (=> b!993069 d!118409))

(declare-fun d!118411 () Bool)

(declare-fun lt!440427 () Bool)

(declare-fun content!473 (List!21033) (Set (_ BitVec 64)))

(assert (=> d!118411 (= lt!440427 (member e!29 (content!473 l!3519)))))

(declare-fun e!560420 () Bool)

(assert (=> d!118411 (= lt!440427 e!560420)))

(declare-fun res!663850 () Bool)

(assert (=> d!118411 (=> (not res!663850) (not e!560420))))

(assert (=> d!118411 (= res!663850 (is-Cons!21029 l!3519))))

(assert (=> d!118411 (= (contains!5790 l!3519 e!29) lt!440427)))

(declare-fun b!993087 () Bool)

(declare-fun e!560419 () Bool)

(assert (=> b!993087 (= e!560420 e!560419)))

(declare-fun res!663849 () Bool)

(assert (=> b!993087 (=> res!663849 e!560419)))

(assert (=> b!993087 (= res!663849 (= (h!22191 l!3519) e!29))))

(declare-fun b!993088 () Bool)

(assert (=> b!993088 (= e!560419 (contains!5790 (t!30042 l!3519) e!29))))

(assert (= (and d!118411 res!663850) b!993087))

