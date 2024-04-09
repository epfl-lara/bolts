; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133254 () Bool)

(assert start!133254)

(declare-fun b!1558250 () Bool)

(declare-fun res!1065835 () Bool)

(declare-fun e!868085 () Bool)

(assert (=> b!1558250 (=> (not res!1065835) (not e!868085))))

(declare-datatypes ((B!2434 0))(
  ( (B!2435 (val!19303 Int)) )
))
(declare-datatypes ((tuple2!25122 0))(
  ( (tuple2!25123 (_1!12571 (_ BitVec 64)) (_2!12571 B!2434)) )
))
(declare-datatypes ((List!36483 0))(
  ( (Nil!36480) (Cons!36479 (h!37926 tuple2!25122) (t!51217 List!36483)) )
))
(declare-fun l!1292 () List!36483)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!838 (List!36483 (_ BitVec 64)) Bool)

(assert (=> b!1558250 (= res!1065835 (containsKey!838 l!1292 otherKey!62))))

(declare-fun b!1558251 () Bool)

(declare-fun res!1065833 () Bool)

(assert (=> b!1558251 (=> (not res!1065833) (not e!868085))))

(declare-fun newKey!135 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1558251 (= res!1065833 (and (not (= otherKey!62 newKey!135)) ((_ is Cons!36479) l!1292) (not (= (_1!12571 (h!37926 l!1292)) otherKey!62))))))

(declare-fun b!1558252 () Bool)

(declare-fun e!868086 () Bool)

(declare-fun tp_is_empty!38439 () Bool)

(declare-fun tp!112642 () Bool)

(assert (=> b!1558252 (= e!868086 (and tp_is_empty!38439 tp!112642))))

(declare-fun b!1558253 () Bool)

(declare-fun res!1065836 () Bool)

(assert (=> b!1558253 (=> (not res!1065836) (not e!868085))))

(assert (=> b!1558253 (= res!1065836 (containsKey!838 (t!51217 l!1292) otherKey!62))))

(declare-fun b!1558254 () Bool)

(declare-fun ListPrimitiveSize!185 (List!36483) Int)

(assert (=> b!1558254 (= e!868085 (>= (ListPrimitiveSize!185 (t!51217 l!1292)) (ListPrimitiveSize!185 l!1292)))))

(declare-fun b!1558255 () Bool)

(declare-fun res!1065837 () Bool)

(assert (=> b!1558255 (=> (not res!1065837) (not e!868085))))

(declare-fun isStrictlySorted!974 (List!36483) Bool)

(assert (=> b!1558255 (= res!1065837 (isStrictlySorted!974 (t!51217 l!1292)))))

(declare-fun res!1065834 () Bool)

(assert (=> start!133254 (=> (not res!1065834) (not e!868085))))

(assert (=> start!133254 (= res!1065834 (isStrictlySorted!974 l!1292))))

(assert (=> start!133254 e!868085))

(assert (=> start!133254 e!868086))

(assert (=> start!133254 true))

(assert (= (and start!133254 res!1065834) b!1558250))

(assert (= (and b!1558250 res!1065835) b!1558251))

(assert (= (and b!1558251 res!1065833) b!1558255))

(assert (= (and b!1558255 res!1065837) b!1558253))

(assert (= (and b!1558253 res!1065836) b!1558254))

(assert (= (and start!133254 ((_ is Cons!36479) l!1292)) b!1558252))

(declare-fun m!1434975 () Bool)

(assert (=> b!1558254 m!1434975))

(declare-fun m!1434977 () Bool)

(assert (=> b!1558254 m!1434977))

(declare-fun m!1434979 () Bool)

(assert (=> b!1558255 m!1434979))

(declare-fun m!1434981 () Bool)

(assert (=> b!1558253 m!1434981))

(declare-fun m!1434983 () Bool)

(assert (=> b!1558250 m!1434983))

(declare-fun m!1434985 () Bool)

(assert (=> start!133254 m!1434985))

(check-sat (not start!133254) (not b!1558253) (not b!1558254) (not b!1558252) tp_is_empty!38439 (not b!1558255) (not b!1558250))
(check-sat)
(get-model)

(declare-fun d!162559 () Bool)

(declare-fun res!1065857 () Bool)

(declare-fun e!868097 () Bool)

(assert (=> d!162559 (=> res!1065857 e!868097)))

(assert (=> d!162559 (= res!1065857 (or ((_ is Nil!36480) (t!51217 l!1292)) ((_ is Nil!36480) (t!51217 (t!51217 l!1292)))))))

(assert (=> d!162559 (= (isStrictlySorted!974 (t!51217 l!1292)) e!868097)))

(declare-fun b!1558278 () Bool)

(declare-fun e!868098 () Bool)

(assert (=> b!1558278 (= e!868097 e!868098)))

(declare-fun res!1065858 () Bool)

(assert (=> b!1558278 (=> (not res!1065858) (not e!868098))))

(assert (=> b!1558278 (= res!1065858 (bvslt (_1!12571 (h!37926 (t!51217 l!1292))) (_1!12571 (h!37926 (t!51217 (t!51217 l!1292))))))))

(declare-fun b!1558279 () Bool)

(assert (=> b!1558279 (= e!868098 (isStrictlySorted!974 (t!51217 (t!51217 l!1292))))))

(assert (= (and d!162559 (not res!1065857)) b!1558278))

(assert (= (and b!1558278 res!1065858) b!1558279))

(declare-fun m!1434999 () Bool)

(assert (=> b!1558279 m!1434999))

(assert (=> b!1558255 d!162559))

(declare-fun d!162565 () Bool)

(declare-fun lt!670701 () Int)

(assert (=> d!162565 (>= lt!670701 0)))

(declare-fun e!868111 () Int)

(assert (=> d!162565 (= lt!670701 e!868111)))

(declare-fun c!144033 () Bool)

(assert (=> d!162565 (= c!144033 ((_ is Nil!36480) (t!51217 l!1292)))))

(assert (=> d!162565 (= (ListPrimitiveSize!185 (t!51217 l!1292)) lt!670701)))

(declare-fun b!1558298 () Bool)

(assert (=> b!1558298 (= e!868111 0)))

(declare-fun b!1558299 () Bool)

(assert (=> b!1558299 (= e!868111 (+ 1 (ListPrimitiveSize!185 (t!51217 (t!51217 l!1292)))))))

(assert (= (and d!162565 c!144033) b!1558298))

(assert (= (and d!162565 (not c!144033)) b!1558299))

(declare-fun m!1435005 () Bool)

(assert (=> b!1558299 m!1435005))

(assert (=> b!1558254 d!162565))

(declare-fun d!162573 () Bool)

(declare-fun lt!670702 () Int)

(assert (=> d!162573 (>= lt!670702 0)))

(declare-fun e!868112 () Int)

(assert (=> d!162573 (= lt!670702 e!868112)))

(declare-fun c!144034 () Bool)

(assert (=> d!162573 (= c!144034 ((_ is Nil!36480) l!1292))))

(assert (=> d!162573 (= (ListPrimitiveSize!185 l!1292) lt!670702)))

(declare-fun b!1558300 () Bool)

(assert (=> b!1558300 (= e!868112 0)))

(declare-fun b!1558301 () Bool)

(assert (=> b!1558301 (= e!868112 (+ 1 (ListPrimitiveSize!185 (t!51217 l!1292))))))

(assert (= (and d!162573 c!144034) b!1558300))

(assert (= (and d!162573 (not c!144034)) b!1558301))

(assert (=> b!1558301 m!1434975))

(assert (=> b!1558254 d!162573))

(declare-fun d!162575 () Bool)

(declare-fun res!1065865 () Bool)

(declare-fun e!868113 () Bool)

(assert (=> d!162575 (=> res!1065865 e!868113)))

(assert (=> d!162575 (= res!1065865 (or ((_ is Nil!36480) l!1292) ((_ is Nil!36480) (t!51217 l!1292))))))

(assert (=> d!162575 (= (isStrictlySorted!974 l!1292) e!868113)))

(declare-fun b!1558302 () Bool)

(declare-fun e!868114 () Bool)

(assert (=> b!1558302 (= e!868113 e!868114)))

(declare-fun res!1065866 () Bool)

(assert (=> b!1558302 (=> (not res!1065866) (not e!868114))))

(assert (=> b!1558302 (= res!1065866 (bvslt (_1!12571 (h!37926 l!1292)) (_1!12571 (h!37926 (t!51217 l!1292)))))))

(declare-fun b!1558303 () Bool)

(assert (=> b!1558303 (= e!868114 (isStrictlySorted!974 (t!51217 l!1292)))))

(assert (= (and d!162575 (not res!1065865)) b!1558302))

(assert (= (and b!1558302 res!1065866) b!1558303))

(assert (=> b!1558303 m!1434979))

(assert (=> start!133254 d!162575))

(declare-fun d!162577 () Bool)

(declare-fun res!1065883 () Bool)

(declare-fun e!868133 () Bool)

(assert (=> d!162577 (=> res!1065883 e!868133)))

(assert (=> d!162577 (= res!1065883 (and ((_ is Cons!36479) (t!51217 l!1292)) (= (_1!12571 (h!37926 (t!51217 l!1292))) otherKey!62)))))

(assert (=> d!162577 (= (containsKey!838 (t!51217 l!1292) otherKey!62) e!868133)))

(declare-fun b!1558324 () Bool)

(declare-fun e!868134 () Bool)

(assert (=> b!1558324 (= e!868133 e!868134)))

(declare-fun res!1065884 () Bool)

(assert (=> b!1558324 (=> (not res!1065884) (not e!868134))))

(assert (=> b!1558324 (= res!1065884 (and (or (not ((_ is Cons!36479) (t!51217 l!1292))) (bvsle (_1!12571 (h!37926 (t!51217 l!1292))) otherKey!62)) ((_ is Cons!36479) (t!51217 l!1292)) (bvslt (_1!12571 (h!37926 (t!51217 l!1292))) otherKey!62)))))

(declare-fun b!1558325 () Bool)

(assert (=> b!1558325 (= e!868134 (containsKey!838 (t!51217 (t!51217 l!1292)) otherKey!62))))

(assert (= (and d!162577 (not res!1065883)) b!1558324))

(assert (= (and b!1558324 res!1065884) b!1558325))

(declare-fun m!1435009 () Bool)

(assert (=> b!1558325 m!1435009))

(assert (=> b!1558253 d!162577))

(declare-fun d!162583 () Bool)

(declare-fun res!1065885 () Bool)

(declare-fun e!868135 () Bool)

(assert (=> d!162583 (=> res!1065885 e!868135)))

(assert (=> d!162583 (= res!1065885 (and ((_ is Cons!36479) l!1292) (= (_1!12571 (h!37926 l!1292)) otherKey!62)))))

(assert (=> d!162583 (= (containsKey!838 l!1292 otherKey!62) e!868135)))

(declare-fun b!1558326 () Bool)

(declare-fun e!868136 () Bool)

(assert (=> b!1558326 (= e!868135 e!868136)))

(declare-fun res!1065886 () Bool)

(assert (=> b!1558326 (=> (not res!1065886) (not e!868136))))

(assert (=> b!1558326 (= res!1065886 (and (or (not ((_ is Cons!36479) l!1292)) (bvsle (_1!12571 (h!37926 l!1292)) otherKey!62)) ((_ is Cons!36479) l!1292) (bvslt (_1!12571 (h!37926 l!1292)) otherKey!62)))))

(declare-fun b!1558327 () Bool)

(assert (=> b!1558327 (= e!868136 (containsKey!838 (t!51217 l!1292) otherKey!62))))

(assert (= (and d!162583 (not res!1065885)) b!1558326))

(assert (= (and b!1558326 res!1065886) b!1558327))

(assert (=> b!1558327 m!1434981))

(assert (=> b!1558250 d!162583))

(declare-fun b!1558342 () Bool)

(declare-fun e!868147 () Bool)

(declare-fun tp!112648 () Bool)

(assert (=> b!1558342 (= e!868147 (and tp_is_empty!38439 tp!112648))))

(assert (=> b!1558252 (= tp!112642 e!868147)))

(assert (= (and b!1558252 ((_ is Cons!36479) (t!51217 l!1292))) b!1558342))

(check-sat tp_is_empty!38439 (not b!1558327) (not b!1558325) (not b!1558301) (not b!1558342) (not b!1558279) (not b!1558303) (not b!1558299))
(check-sat)
