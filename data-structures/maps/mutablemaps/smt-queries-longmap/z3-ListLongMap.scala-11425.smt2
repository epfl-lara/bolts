; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133236 () Bool)

(assert start!133236)

(declare-fun b!1558137 () Bool)

(declare-fun res!1065746 () Bool)

(declare-fun e!868008 () Bool)

(assert (=> b!1558137 (=> (not res!1065746) (not e!868008))))

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun newKey!135 () (_ BitVec 64))

(declare-datatypes ((B!2428 0))(
  ( (B!2429 (val!19300 Int)) )
))
(declare-datatypes ((tuple2!25116 0))(
  ( (tuple2!25117 (_1!12568 (_ BitVec 64)) (_2!12568 B!2428)) )
))
(declare-datatypes ((List!36480 0))(
  ( (Nil!36477) (Cons!36476 (h!37923 tuple2!25116) (t!51214 List!36480)) )
))
(declare-fun l!1292 () List!36480)

(get-info :version)

(assert (=> b!1558137 (= res!1065746 (and (not (= otherKey!62 newKey!135)) ((_ is Cons!36476) l!1292) (not (= (_1!12568 (h!37923 l!1292)) otherKey!62))))))

(declare-fun b!1558138 () Bool)

(declare-fun e!868007 () Bool)

(declare-fun tp_is_empty!38433 () Bool)

(declare-fun tp!112624 () Bool)

(assert (=> b!1558138 (= e!868007 (and tp_is_empty!38433 tp!112624))))

(declare-fun b!1558139 () Bool)

(declare-fun res!1065745 () Bool)

(assert (=> b!1558139 (=> (not res!1065745) (not e!868008))))

(declare-fun containsKey!835 (List!36480 (_ BitVec 64)) Bool)

(assert (=> b!1558139 (= res!1065745 (containsKey!835 l!1292 otherKey!62))))

(declare-fun res!1065747 () Bool)

(assert (=> start!133236 (=> (not res!1065747) (not e!868008))))

(declare-fun isStrictlySorted!971 (List!36480) Bool)

(assert (=> start!133236 (= res!1065747 (isStrictlySorted!971 l!1292))))

(assert (=> start!133236 e!868008))

(assert (=> start!133236 e!868007))

(assert (=> start!133236 true))

(declare-fun b!1558140 () Bool)

(declare-fun e!868006 () Bool)

(assert (=> b!1558140 (= e!868008 e!868006)))

(declare-fun res!1065744 () Bool)

(assert (=> b!1558140 (=> res!1065744 e!868006)))

(assert (=> b!1558140 (= res!1065744 (not (isStrictlySorted!971 (t!51214 l!1292))))))

(declare-fun b!1558141 () Bool)

(assert (=> b!1558141 (= e!868006 (not (containsKey!835 (t!51214 l!1292) otherKey!62)))))

(assert (= (and start!133236 res!1065747) b!1558139))

(assert (= (and b!1558139 res!1065745) b!1558137))

(assert (= (and b!1558137 res!1065746) b!1558140))

(assert (= (and b!1558140 (not res!1065744)) b!1558141))

(assert (= (and start!133236 ((_ is Cons!36476) l!1292)) b!1558138))

(declare-fun m!1434935 () Bool)

(assert (=> b!1558139 m!1434935))

(declare-fun m!1434937 () Bool)

(assert (=> start!133236 m!1434937))

(declare-fun m!1434939 () Bool)

(assert (=> b!1558140 m!1434939))

(declare-fun m!1434941 () Bool)

(assert (=> b!1558141 m!1434941))

(check-sat (not b!1558138) (not b!1558139) (not start!133236) (not b!1558140) (not b!1558141) tp_is_empty!38433)
(check-sat)
(get-model)

(declare-fun d!162533 () Bool)

(declare-fun res!1065764 () Bool)

(declare-fun e!868022 () Bool)

(assert (=> d!162533 (=> res!1065764 e!868022)))

(assert (=> d!162533 (= res!1065764 (and ((_ is Cons!36476) l!1292) (= (_1!12568 (h!37923 l!1292)) otherKey!62)))))

(assert (=> d!162533 (= (containsKey!835 l!1292 otherKey!62) e!868022)))

(declare-fun b!1558161 () Bool)

(declare-fun e!868023 () Bool)

(assert (=> b!1558161 (= e!868022 e!868023)))

(declare-fun res!1065765 () Bool)

(assert (=> b!1558161 (=> (not res!1065765) (not e!868023))))

(assert (=> b!1558161 (= res!1065765 (and (or (not ((_ is Cons!36476) l!1292)) (bvsle (_1!12568 (h!37923 l!1292)) otherKey!62)) ((_ is Cons!36476) l!1292) (bvslt (_1!12568 (h!37923 l!1292)) otherKey!62)))))

(declare-fun b!1558162 () Bool)

(assert (=> b!1558162 (= e!868023 (containsKey!835 (t!51214 l!1292) otherKey!62))))

(assert (= (and d!162533 (not res!1065764)) b!1558161))

(assert (= (and b!1558161 res!1065765) b!1558162))

(assert (=> b!1558162 m!1434941))

(assert (=> b!1558139 d!162533))

(declare-fun d!162537 () Bool)

(declare-fun res!1065780 () Bool)

(declare-fun e!868038 () Bool)

(assert (=> d!162537 (=> res!1065780 e!868038)))

(assert (=> d!162537 (= res!1065780 (or ((_ is Nil!36477) l!1292) ((_ is Nil!36477) (t!51214 l!1292))))))

(assert (=> d!162537 (= (isStrictlySorted!971 l!1292) e!868038)))

(declare-fun b!1558177 () Bool)

(declare-fun e!868039 () Bool)

(assert (=> b!1558177 (= e!868038 e!868039)))

(declare-fun res!1065781 () Bool)

(assert (=> b!1558177 (=> (not res!1065781) (not e!868039))))

(assert (=> b!1558177 (= res!1065781 (bvslt (_1!12568 (h!37923 l!1292)) (_1!12568 (h!37923 (t!51214 l!1292)))))))

(declare-fun b!1558178 () Bool)

(assert (=> b!1558178 (= e!868039 (isStrictlySorted!971 (t!51214 l!1292)))))

(assert (= (and d!162537 (not res!1065780)) b!1558177))

(assert (= (and b!1558177 res!1065781) b!1558178))

(assert (=> b!1558178 m!1434939))

(assert (=> start!133236 d!162537))

(declare-fun d!162543 () Bool)

(declare-fun res!1065782 () Bool)

(declare-fun e!868040 () Bool)

(assert (=> d!162543 (=> res!1065782 e!868040)))

(assert (=> d!162543 (= res!1065782 (and ((_ is Cons!36476) (t!51214 l!1292)) (= (_1!12568 (h!37923 (t!51214 l!1292))) otherKey!62)))))

(assert (=> d!162543 (= (containsKey!835 (t!51214 l!1292) otherKey!62) e!868040)))

(declare-fun b!1558179 () Bool)

(declare-fun e!868041 () Bool)

(assert (=> b!1558179 (= e!868040 e!868041)))

(declare-fun res!1065783 () Bool)

(assert (=> b!1558179 (=> (not res!1065783) (not e!868041))))

(assert (=> b!1558179 (= res!1065783 (and (or (not ((_ is Cons!36476) (t!51214 l!1292))) (bvsle (_1!12568 (h!37923 (t!51214 l!1292))) otherKey!62)) ((_ is Cons!36476) (t!51214 l!1292)) (bvslt (_1!12568 (h!37923 (t!51214 l!1292))) otherKey!62)))))

(declare-fun b!1558180 () Bool)

(assert (=> b!1558180 (= e!868041 (containsKey!835 (t!51214 (t!51214 l!1292)) otherKey!62))))

(assert (= (and d!162543 (not res!1065782)) b!1558179))

(assert (= (and b!1558179 res!1065783) b!1558180))

(declare-fun m!1434953 () Bool)

(assert (=> b!1558180 m!1434953))

(assert (=> b!1558141 d!162543))

(declare-fun d!162545 () Bool)

(declare-fun res!1065788 () Bool)

(declare-fun e!868046 () Bool)

(assert (=> d!162545 (=> res!1065788 e!868046)))

(assert (=> d!162545 (= res!1065788 (or ((_ is Nil!36477) (t!51214 l!1292)) ((_ is Nil!36477) (t!51214 (t!51214 l!1292)))))))

(assert (=> d!162545 (= (isStrictlySorted!971 (t!51214 l!1292)) e!868046)))

(declare-fun b!1558185 () Bool)

(declare-fun e!868047 () Bool)

(assert (=> b!1558185 (= e!868046 e!868047)))

(declare-fun res!1065789 () Bool)

(assert (=> b!1558185 (=> (not res!1065789) (not e!868047))))

(assert (=> b!1558185 (= res!1065789 (bvslt (_1!12568 (h!37923 (t!51214 l!1292))) (_1!12568 (h!37923 (t!51214 (t!51214 l!1292))))))))

(declare-fun b!1558186 () Bool)

(assert (=> b!1558186 (= e!868047 (isStrictlySorted!971 (t!51214 (t!51214 l!1292))))))

(assert (= (and d!162545 (not res!1065788)) b!1558185))

(assert (= (and b!1558185 res!1065789) b!1558186))

(declare-fun m!1434955 () Bool)

(assert (=> b!1558186 m!1434955))

(assert (=> b!1558140 d!162545))

(declare-fun b!1558193 () Bool)

(declare-fun e!868052 () Bool)

(declare-fun tp!112630 () Bool)

(assert (=> b!1558193 (= e!868052 (and tp_is_empty!38433 tp!112630))))

(assert (=> b!1558138 (= tp!112624 e!868052)))

(assert (= (and b!1558138 ((_ is Cons!36476) (t!51214 l!1292))) b!1558193))

(check-sat (not b!1558162) tp_is_empty!38433 (not b!1558180) (not b!1558186) (not b!1558178) (not b!1558193))
(check-sat)
