; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138102 () Bool)

(assert start!138102)

(declare-fun b!1584261 () Bool)

(declare-fun res!1082206 () Bool)

(declare-fun e!884414 () Bool)

(assert (=> b!1584261 (=> (not res!1082206) (not e!884414))))

(declare-datatypes ((B!2920 0))(
  ( (B!2921 (val!19822 Int)) )
))
(declare-datatypes ((tuple2!25976 0))(
  ( (tuple2!25977 (_1!12998 (_ BitVec 64)) (_2!12998 B!2920)) )
))
(declare-datatypes ((List!37103 0))(
  ( (Nil!37100) (Cons!37099 (h!38643 tuple2!25976) (t!52024 List!37103)) )
))
(declare-fun l!1251 () List!37103)

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!999 (List!37103 (_ BitVec 64)) Bool)

(assert (=> b!1584261 (= res!1082206 (not (containsKey!999 (t!52024 l!1251) otherKey!56)))))

(declare-fun res!1082207 () Bool)

(assert (=> start!138102 (=> (not res!1082207) (not e!884414))))

(declare-fun isStrictlySorted!1165 (List!37103) Bool)

(assert (=> start!138102 (= res!1082207 (isStrictlySorted!1165 l!1251))))

(assert (=> start!138102 e!884414))

(declare-fun e!884415 () Bool)

(assert (=> start!138102 e!884415))

(assert (=> start!138102 true))

(declare-fun b!1584262 () Bool)

(declare-fun ListPrimitiveSize!221 (List!37103) Int)

(assert (=> b!1584262 (= e!884414 (>= (ListPrimitiveSize!221 (t!52024 l!1251)) (ListPrimitiveSize!221 l!1251)))))

(declare-fun b!1584263 () Bool)

(declare-fun res!1082205 () Bool)

(assert (=> b!1584263 (=> (not res!1082205) (not e!884414))))

(assert (=> b!1584263 (= res!1082205 (isStrictlySorted!1165 (t!52024 l!1251)))))

(declare-fun b!1584264 () Bool)

(declare-fun res!1082203 () Bool)

(assert (=> b!1584264 (=> (not res!1082203) (not e!884414))))

(assert (=> b!1584264 (= res!1082203 (not (containsKey!999 l!1251 otherKey!56)))))

(declare-fun b!1584265 () Bool)

(declare-fun tp_is_empty!39453 () Bool)

(declare-fun tp!115108 () Bool)

(assert (=> b!1584265 (= e!884415 (and tp_is_empty!39453 tp!115108))))

(declare-fun b!1584266 () Bool)

(declare-fun res!1082204 () Bool)

(assert (=> b!1584266 (=> (not res!1082204) (not e!884414))))

(declare-fun newKey!123 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1584266 (= res!1082204 (and (not (= otherKey!56 newKey!123)) ((_ is Cons!37099) l!1251)))))

(assert (= (and start!138102 res!1082207) b!1584264))

(assert (= (and b!1584264 res!1082203) b!1584266))

(assert (= (and b!1584266 res!1082204) b!1584263))

(assert (= (and b!1584263 res!1082205) b!1584261))

(assert (= (and b!1584261 res!1082206) b!1584262))

(assert (= (and start!138102 ((_ is Cons!37099) l!1251)) b!1584265))

(declare-fun m!1453631 () Bool)

(assert (=> b!1584262 m!1453631))

(declare-fun m!1453633 () Bool)

(assert (=> b!1584262 m!1453633))

(declare-fun m!1453635 () Bool)

(assert (=> b!1584263 m!1453635))

(declare-fun m!1453637 () Bool)

(assert (=> b!1584261 m!1453637))

(declare-fun m!1453639 () Bool)

(assert (=> b!1584264 m!1453639))

(declare-fun m!1453641 () Bool)

(assert (=> start!138102 m!1453641))

(check-sat (not b!1584265) (not b!1584262) (not start!138102) (not b!1584261) tp_is_empty!39453 (not b!1584263) (not b!1584264))
(check-sat)
(get-model)

(declare-fun d!167353 () Bool)

(declare-fun res!1082233 () Bool)

(declare-fun e!884432 () Bool)

(assert (=> d!167353 (=> res!1082233 e!884432)))

(assert (=> d!167353 (= res!1082233 (or ((_ is Nil!37100) (t!52024 l!1251)) ((_ is Nil!37100) (t!52024 (t!52024 l!1251)))))))

(assert (=> d!167353 (= (isStrictlySorted!1165 (t!52024 l!1251)) e!884432)))

(declare-fun b!1584295 () Bool)

(declare-fun e!884433 () Bool)

(assert (=> b!1584295 (= e!884432 e!884433)))

(declare-fun res!1082234 () Bool)

(assert (=> b!1584295 (=> (not res!1082234) (not e!884433))))

(assert (=> b!1584295 (= res!1082234 (bvslt (_1!12998 (h!38643 (t!52024 l!1251))) (_1!12998 (h!38643 (t!52024 (t!52024 l!1251))))))))

(declare-fun b!1584296 () Bool)

(assert (=> b!1584296 (= e!884433 (isStrictlySorted!1165 (t!52024 (t!52024 l!1251))))))

(assert (= (and d!167353 (not res!1082233)) b!1584295))

(assert (= (and b!1584295 res!1082234) b!1584296))

(declare-fun m!1453655 () Bool)

(assert (=> b!1584296 m!1453655))

(assert (=> b!1584263 d!167353))

(declare-fun d!167359 () Bool)

(declare-fun res!1082251 () Bool)

(declare-fun e!884450 () Bool)

(assert (=> d!167359 (=> res!1082251 e!884450)))

(assert (=> d!167359 (= res!1082251 (and ((_ is Cons!37099) l!1251) (= (_1!12998 (h!38643 l!1251)) otherKey!56)))))

(assert (=> d!167359 (= (containsKey!999 l!1251 otherKey!56) e!884450)))

(declare-fun b!1584313 () Bool)

(declare-fun e!884451 () Bool)

(assert (=> b!1584313 (= e!884450 e!884451)))

(declare-fun res!1082252 () Bool)

(assert (=> b!1584313 (=> (not res!1082252) (not e!884451))))

(assert (=> b!1584313 (= res!1082252 (and (or (not ((_ is Cons!37099) l!1251)) (bvsle (_1!12998 (h!38643 l!1251)) otherKey!56)) ((_ is Cons!37099) l!1251) (bvslt (_1!12998 (h!38643 l!1251)) otherKey!56)))))

(declare-fun b!1584314 () Bool)

(assert (=> b!1584314 (= e!884451 (containsKey!999 (t!52024 l!1251) otherKey!56))))

(assert (= (and d!167359 (not res!1082251)) b!1584313))

(assert (= (and b!1584313 res!1082252) b!1584314))

(assert (=> b!1584314 m!1453637))

(assert (=> b!1584264 d!167359))

(declare-fun d!167365 () Bool)

(declare-fun res!1082259 () Bool)

(declare-fun e!884458 () Bool)

(assert (=> d!167365 (=> res!1082259 e!884458)))

(assert (=> d!167365 (= res!1082259 (or ((_ is Nil!37100) l!1251) ((_ is Nil!37100) (t!52024 l!1251))))))

(assert (=> d!167365 (= (isStrictlySorted!1165 l!1251) e!884458)))

(declare-fun b!1584321 () Bool)

(declare-fun e!884459 () Bool)

(assert (=> b!1584321 (= e!884458 e!884459)))

(declare-fun res!1082260 () Bool)

(assert (=> b!1584321 (=> (not res!1082260) (not e!884459))))

(assert (=> b!1584321 (= res!1082260 (bvslt (_1!12998 (h!38643 l!1251)) (_1!12998 (h!38643 (t!52024 l!1251)))))))

(declare-fun b!1584322 () Bool)

(assert (=> b!1584322 (= e!884459 (isStrictlySorted!1165 (t!52024 l!1251)))))

(assert (= (and d!167365 (not res!1082259)) b!1584321))

(assert (= (and b!1584321 res!1082260) b!1584322))

(assert (=> b!1584322 m!1453635))

(assert (=> start!138102 d!167365))

(declare-fun d!167369 () Bool)

(declare-fun res!1082261 () Bool)

(declare-fun e!884460 () Bool)

(assert (=> d!167369 (=> res!1082261 e!884460)))

(assert (=> d!167369 (= res!1082261 (and ((_ is Cons!37099) (t!52024 l!1251)) (= (_1!12998 (h!38643 (t!52024 l!1251))) otherKey!56)))))

(assert (=> d!167369 (= (containsKey!999 (t!52024 l!1251) otherKey!56) e!884460)))

(declare-fun b!1584323 () Bool)

(declare-fun e!884461 () Bool)

(assert (=> b!1584323 (= e!884460 e!884461)))

(declare-fun res!1082262 () Bool)

(assert (=> b!1584323 (=> (not res!1082262) (not e!884461))))

(assert (=> b!1584323 (= res!1082262 (and (or (not ((_ is Cons!37099) (t!52024 l!1251))) (bvsle (_1!12998 (h!38643 (t!52024 l!1251))) otherKey!56)) ((_ is Cons!37099) (t!52024 l!1251)) (bvslt (_1!12998 (h!38643 (t!52024 l!1251))) otherKey!56)))))

(declare-fun b!1584324 () Bool)

(assert (=> b!1584324 (= e!884461 (containsKey!999 (t!52024 (t!52024 l!1251)) otherKey!56))))

(assert (= (and d!167369 (not res!1082261)) b!1584323))

(assert (= (and b!1584323 res!1082262) b!1584324))

(declare-fun m!1453663 () Bool)

(assert (=> b!1584324 m!1453663))

(assert (=> b!1584261 d!167369))

(declare-fun d!167371 () Bool)

(declare-fun lt!677176 () Int)

(assert (=> d!167371 (>= lt!677176 0)))

(declare-fun e!884472 () Int)

(assert (=> d!167371 (= lt!677176 e!884472)))

(declare-fun c!146793 () Bool)

(assert (=> d!167371 (= c!146793 ((_ is Nil!37100) (t!52024 l!1251)))))

(assert (=> d!167371 (= (ListPrimitiveSize!221 (t!52024 l!1251)) lt!677176)))

(declare-fun b!1584343 () Bool)

(assert (=> b!1584343 (= e!884472 0)))

(declare-fun b!1584344 () Bool)

(assert (=> b!1584344 (= e!884472 (+ 1 (ListPrimitiveSize!221 (t!52024 (t!52024 l!1251)))))))

(assert (= (and d!167371 c!146793) b!1584343))

(assert (= (and d!167371 (not c!146793)) b!1584344))

(declare-fun m!1453667 () Bool)

(assert (=> b!1584344 m!1453667))

(assert (=> b!1584262 d!167371))

(declare-fun d!167379 () Bool)

(declare-fun lt!677177 () Int)

(assert (=> d!167379 (>= lt!677177 0)))

(declare-fun e!884475 () Int)

(assert (=> d!167379 (= lt!677177 e!884475)))

(declare-fun c!146794 () Bool)

(assert (=> d!167379 (= c!146794 ((_ is Nil!37100) l!1251))))

(assert (=> d!167379 (= (ListPrimitiveSize!221 l!1251) lt!677177)))

(declare-fun b!1584347 () Bool)

(assert (=> b!1584347 (= e!884475 0)))

(declare-fun b!1584348 () Bool)

(assert (=> b!1584348 (= e!884475 (+ 1 (ListPrimitiveSize!221 (t!52024 l!1251))))))

(assert (= (and d!167379 c!146794) b!1584347))

(assert (= (and d!167379 (not c!146794)) b!1584348))

(assert (=> b!1584348 m!1453631))

(assert (=> b!1584262 d!167379))

(declare-fun b!1584361 () Bool)

(declare-fun e!884482 () Bool)

(declare-fun tp!115116 () Bool)

(assert (=> b!1584361 (= e!884482 (and tp_is_empty!39453 tp!115116))))

(assert (=> b!1584265 (= tp!115108 e!884482)))

(assert (= (and b!1584265 ((_ is Cons!37099) (t!52024 l!1251))) b!1584361))

(check-sat (not b!1584296) (not b!1584322) (not b!1584348) (not b!1584361) (not b!1584314) (not b!1584324) tp_is_empty!39453 (not b!1584344))
(check-sat)
