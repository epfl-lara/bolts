; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138444 () Bool)

(assert start!138444)

(declare-fun res!1083356 () Bool)

(declare-fun e!885773 () Bool)

(assert (=> start!138444 (=> (not res!1083356) (not e!885773))))

(declare-datatypes ((B!3028 0))(
  ( (B!3029 (val!19876 Int)) )
))
(declare-datatypes ((tuple2!26084 0))(
  ( (tuple2!26085 (_1!13052 (_ BitVec 64)) (_2!13052 B!3028)) )
))
(declare-datatypes ((List!37157 0))(
  ( (Nil!37154) (Cons!37153 (h!38697 tuple2!26084) (t!52096 List!37157)) )
))
(declare-fun l!636 () List!37157)

(declare-fun isStrictlySorted!1216 (List!37157) Bool)

(assert (=> start!138444 (= res!1083356 (isStrictlySorted!1216 l!636))))

(assert (=> start!138444 e!885773))

(declare-fun e!885774 () Bool)

(assert (=> start!138444 e!885774))

(declare-fun b!1586155 () Bool)

(declare-fun ListPrimitiveSize!230 (List!37157) Int)

(assert (=> b!1586155 (= e!885773 (< (ListPrimitiveSize!230 l!636) 0))))

(declare-fun b!1586156 () Bool)

(declare-fun tp_is_empty!39561 () Bool)

(declare-fun tp!115387 () Bool)

(assert (=> b!1586156 (= e!885774 (and tp_is_empty!39561 tp!115387))))

(assert (= (and start!138444 res!1083356) b!1586155))

(get-info :version)

(assert (= (and start!138444 ((_ is Cons!37153) l!636)) b!1586156))

(declare-fun m!1454677 () Bool)

(assert (=> start!138444 m!1454677))

(declare-fun m!1454679 () Bool)

(assert (=> b!1586155 m!1454679))

(check-sat (not start!138444) (not b!1586155) (not b!1586156) tp_is_empty!39561)
(check-sat)
(get-model)

(declare-fun d!167873 () Bool)

(declare-fun res!1083364 () Bool)

(declare-fun e!885789 () Bool)

(assert (=> d!167873 (=> res!1083364 e!885789)))

(assert (=> d!167873 (= res!1083364 (or ((_ is Nil!37154) l!636) ((_ is Nil!37154) (t!52096 l!636))))))

(assert (=> d!167873 (= (isStrictlySorted!1216 l!636) e!885789)))

(declare-fun b!1586175 () Bool)

(declare-fun e!885790 () Bool)

(assert (=> b!1586175 (= e!885789 e!885790)))

(declare-fun res!1083365 () Bool)

(assert (=> b!1586175 (=> (not res!1083365) (not e!885790))))

(assert (=> b!1586175 (= res!1083365 (bvslt (_1!13052 (h!38697 l!636)) (_1!13052 (h!38697 (t!52096 l!636)))))))

(declare-fun b!1586176 () Bool)

(assert (=> b!1586176 (= e!885790 (isStrictlySorted!1216 (t!52096 l!636)))))

(assert (= (and d!167873 (not res!1083364)) b!1586175))

(assert (= (and b!1586175 res!1083365) b!1586176))

(declare-fun m!1454685 () Bool)

(assert (=> b!1586176 m!1454685))

(assert (=> start!138444 d!167873))

(declare-fun d!167879 () Bool)

(declare-fun lt!677437 () Int)

(assert (=> d!167879 (>= lt!677437 0)))

(declare-fun e!885803 () Int)

(assert (=> d!167879 (= lt!677437 e!885803)))

(declare-fun c!146991 () Bool)

(assert (=> d!167879 (= c!146991 ((_ is Nil!37154) l!636))))

(assert (=> d!167879 (= (ListPrimitiveSize!230 l!636) lt!677437)))

(declare-fun b!1586193 () Bool)

(assert (=> b!1586193 (= e!885803 0)))

(declare-fun b!1586194 () Bool)

(assert (=> b!1586194 (= e!885803 (+ 1 (ListPrimitiveSize!230 (t!52096 l!636))))))

(assert (= (and d!167879 c!146991) b!1586193))

(assert (= (and d!167879 (not c!146991)) b!1586194))

(declare-fun m!1454691 () Bool)

(assert (=> b!1586194 m!1454691))

(assert (=> b!1586155 d!167879))

(declare-fun b!1586201 () Bool)

(declare-fun e!885808 () Bool)

(declare-fun tp!115393 () Bool)

(assert (=> b!1586201 (= e!885808 (and tp_is_empty!39561 tp!115393))))

(assert (=> b!1586156 (= tp!115387 e!885808)))

(assert (= (and b!1586156 ((_ is Cons!37153) (t!52096 l!636))) b!1586201))

(check-sat (not b!1586194) (not b!1586176) (not b!1586201) tp_is_empty!39561)
(check-sat)
