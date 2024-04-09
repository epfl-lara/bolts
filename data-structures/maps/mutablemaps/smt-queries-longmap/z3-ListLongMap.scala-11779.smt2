; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138426 () Bool)

(assert start!138426)

(declare-fun b!1586055 () Bool)

(declare-fun e!885696 () Bool)

(declare-fun tp_is_empty!39549 () Bool)

(declare-fun tp!115356 () Bool)

(assert (=> b!1586055 (= e!885696 (and tp_is_empty!39549 tp!115356))))

(declare-fun res!1083296 () Bool)

(declare-fun e!885698 () Bool)

(assert (=> start!138426 (=> (not res!1083296) (not e!885698))))

(declare-datatypes ((B!3016 0))(
  ( (B!3017 (val!19870 Int)) )
))
(declare-datatypes ((tuple2!26072 0))(
  ( (tuple2!26073 (_1!13046 (_ BitVec 64)) (_2!13046 B!3016)) )
))
(declare-datatypes ((List!37151 0))(
  ( (Nil!37148) (Cons!37147 (h!38691 tuple2!26072) (t!52090 List!37151)) )
))
(declare-fun l!556 () List!37151)

(declare-fun isStrictlySorted!1210 (List!37151) Bool)

(assert (=> start!138426 (= res!1083296 (isStrictlySorted!1210 l!556))))

(assert (=> start!138426 e!885698))

(declare-fun e!885699 () Bool)

(assert (=> start!138426 e!885699))

(assert (=> start!138426 true))

(assert (=> start!138426 tp_is_empty!39549))

(declare-fun b!1586056 () Bool)

(declare-fun res!1083294 () Bool)

(assert (=> b!1586056 (=> (not res!1083294) (not e!885698))))

(declare-fun newKey!21 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1586056 (= res!1083294 (and (or (not ((_ is Cons!37147) l!556)) (bvsge (_1!13046 (h!38691 l!556)) newKey!21)) (or (not ((_ is Cons!37147) l!556)) (not (= (_1!13046 (h!38691 l!556)) newKey!21))) (or (not ((_ is Cons!37147) l!556)) (bvsle (_1!13046 (h!38691 l!556)) newKey!21)) (not ((_ is Nil!37148) l!556))))))

(declare-fun b!1586057 () Bool)

(declare-fun tp!115357 () Bool)

(assert (=> b!1586057 (= e!885699 (and tp_is_empty!39549 tp!115357))))

(declare-fun b!1586058 () Bool)

(declare-fun res!1083293 () Bool)

(declare-fun e!885697 () Bool)

(assert (=> b!1586058 (=> res!1083293 e!885697)))

(declare-fun lt!677425 () List!37151)

(declare-fun containsKey!1020 (List!37151 (_ BitVec 64)) Bool)

(assert (=> b!1586058 (= res!1083293 (not (containsKey!1020 lt!677425 newKey!21)))))

(declare-fun b!1586059 () Bool)

(assert (=> b!1586059 (= e!885698 e!885697)))

(declare-fun res!1083295 () Bool)

(assert (=> b!1586059 (=> res!1083295 e!885697)))

(assert (=> b!1586059 (= res!1083295 (not (isStrictlySorted!1210 lt!677425)))))

(declare-fun err!229 () List!37151)

(assert (=> b!1586059 (= lt!677425 err!229)))

(assert (=> b!1586059 true))

(assert (=> b!1586059 e!885696))

(declare-fun b!1586060 () Bool)

(declare-fun newValue!21 () B!3016)

(declare-fun contains!10562 (List!37151 tuple2!26072) Bool)

(assert (=> b!1586060 (= e!885697 (not (contains!10562 lt!677425 (tuple2!26073 newKey!21 newValue!21))))))

(assert (= (and start!138426 res!1083296) b!1586056))

(assert (= (and b!1586056 res!1083294) b!1586059))

(assert (= (and b!1586059 ((_ is Cons!37147) err!229)) b!1586055))

(assert (= (and b!1586059 (not res!1083295)) b!1586058))

(assert (= (and b!1586058 (not res!1083293)) b!1586060))

(assert (= (and start!138426 ((_ is Cons!37147) l!556)) b!1586057))

(declare-fun m!1454639 () Bool)

(assert (=> start!138426 m!1454639))

(declare-fun m!1454641 () Bool)

(assert (=> b!1586058 m!1454641))

(declare-fun m!1454643 () Bool)

(assert (=> b!1586059 m!1454643))

(declare-fun m!1454645 () Bool)

(assert (=> b!1586060 m!1454645))

(check-sat (not start!138426) (not b!1586060) (not b!1586058) (not b!1586057) (not b!1586059) tp_is_empty!39549 (not b!1586055))
(check-sat)
