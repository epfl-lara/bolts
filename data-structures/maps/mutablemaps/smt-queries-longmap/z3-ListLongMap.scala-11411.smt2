; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132912 () Bool)

(assert start!132912)

(declare-fun b!1556044 () Bool)

(declare-fun res!1064675 () Bool)

(declare-fun e!866655 () Bool)

(assert (=> b!1556044 (=> (not res!1064675) (not e!866655))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((B!2344 0))(
  ( (B!2345 (val!19258 Int)) )
))
(declare-datatypes ((tuple2!25032 0))(
  ( (tuple2!25033 (_1!12526 (_ BitVec 64)) (_2!12526 B!2344)) )
))
(declare-datatypes ((List!36438 0))(
  ( (Nil!36435) (Cons!36434 (h!37881 tuple2!25032) (t!51166 List!36438)) )
))
(declare-fun l!1177 () List!36438)

(get-info :version)

(assert (=> b!1556044 (= res!1064675 (and (not (= newKey!105 otherKey!50)) ((_ is Cons!36434) l!1177) (not (= (_1!12526 (h!37881 l!1177)) otherKey!50))))))

(declare-fun b!1556045 () Bool)

(declare-fun res!1064676 () Bool)

(assert (=> b!1556045 (=> (not res!1064676) (not e!866655))))

(declare-fun isStrictlySorted!942 (List!36438) Bool)

(assert (=> b!1556045 (= res!1064676 (isStrictlySorted!942 (t!51166 l!1177)))))

(declare-fun b!1556046 () Bool)

(declare-fun ListPrimitiveSize!179 (List!36438) Int)

(assert (=> b!1556046 (= e!866655 (>= (ListPrimitiveSize!179 (t!51166 l!1177)) (ListPrimitiveSize!179 l!1177)))))

(declare-fun b!1556047 () Bool)

(declare-fun e!866654 () Bool)

(declare-fun tp_is_empty!38355 () Bool)

(declare-fun tp!112411 () Bool)

(assert (=> b!1556047 (= e!866654 (and tp_is_empty!38355 tp!112411))))

(declare-fun res!1064674 () Bool)

(assert (=> start!132912 (=> (not res!1064674) (not e!866655))))

(assert (=> start!132912 (= res!1064674 (isStrictlySorted!942 l!1177))))

(assert (=> start!132912 e!866655))

(assert (=> start!132912 e!866654))

(assert (=> start!132912 true))

(assert (= (and start!132912 res!1064674) b!1556044))

(assert (= (and b!1556044 res!1064675) b!1556045))

(assert (= (and b!1556045 res!1064676) b!1556046))

(assert (= (and start!132912 ((_ is Cons!36434) l!1177)) b!1556047))

(declare-fun m!1433723 () Bool)

(assert (=> b!1556045 m!1433723))

(declare-fun m!1433725 () Bool)

(assert (=> b!1556046 m!1433725))

(declare-fun m!1433727 () Bool)

(assert (=> b!1556046 m!1433727))

(declare-fun m!1433729 () Bool)

(assert (=> start!132912 m!1433729))

(check-sat tp_is_empty!38355 (not b!1556046) (not b!1556045) (not start!132912) (not b!1556047))
(check-sat)
(get-model)

(declare-fun d!161995 () Bool)

(declare-fun res!1064690 () Bool)

(declare-fun e!866666 () Bool)

(assert (=> d!161995 (=> res!1064690 e!866666)))

(assert (=> d!161995 (= res!1064690 (or ((_ is Nil!36435) (t!51166 l!1177)) ((_ is Nil!36435) (t!51166 (t!51166 l!1177)))))))

(assert (=> d!161995 (= (isStrictlySorted!942 (t!51166 l!1177)) e!866666)))

(declare-fun b!1556064 () Bool)

(declare-fun e!866667 () Bool)

(assert (=> b!1556064 (= e!866666 e!866667)))

(declare-fun res!1064691 () Bool)

(assert (=> b!1556064 (=> (not res!1064691) (not e!866667))))

(assert (=> b!1556064 (= res!1064691 (bvslt (_1!12526 (h!37881 (t!51166 l!1177))) (_1!12526 (h!37881 (t!51166 (t!51166 l!1177))))))))

(declare-fun b!1556065 () Bool)

(assert (=> b!1556065 (= e!866667 (isStrictlySorted!942 (t!51166 (t!51166 l!1177))))))

(assert (= (and d!161995 (not res!1064690)) b!1556064))

(assert (= (and b!1556064 res!1064691) b!1556065))

(declare-fun m!1433739 () Bool)

(assert (=> b!1556065 m!1433739))

(assert (=> b!1556045 d!161995))

(declare-fun d!161999 () Bool)

(declare-fun lt!670310 () Int)

(assert (=> d!161999 (>= lt!670310 0)))

(declare-fun e!866676 () Int)

(assert (=> d!161999 (= lt!670310 e!866676)))

(declare-fun c!143657 () Bool)

(assert (=> d!161999 (= c!143657 ((_ is Nil!36435) (t!51166 l!1177)))))

(assert (=> d!161999 (= (ListPrimitiveSize!179 (t!51166 l!1177)) lt!670310)))

(declare-fun b!1556082 () Bool)

(assert (=> b!1556082 (= e!866676 0)))

(declare-fun b!1556083 () Bool)

(assert (=> b!1556083 (= e!866676 (+ 1 (ListPrimitiveSize!179 (t!51166 (t!51166 l!1177)))))))

(assert (= (and d!161999 c!143657) b!1556082))

(assert (= (and d!161999 (not c!143657)) b!1556083))

(declare-fun m!1433743 () Bool)

(assert (=> b!1556083 m!1433743))

(assert (=> b!1556046 d!161999))

(declare-fun d!162007 () Bool)

(declare-fun lt!670312 () Int)

(assert (=> d!162007 (>= lt!670312 0)))

(declare-fun e!866678 () Int)

(assert (=> d!162007 (= lt!670312 e!866678)))

(declare-fun c!143659 () Bool)

(assert (=> d!162007 (= c!143659 ((_ is Nil!36435) l!1177))))

(assert (=> d!162007 (= (ListPrimitiveSize!179 l!1177) lt!670312)))

(declare-fun b!1556086 () Bool)

(assert (=> b!1556086 (= e!866678 0)))

(declare-fun b!1556087 () Bool)

(assert (=> b!1556087 (= e!866678 (+ 1 (ListPrimitiveSize!179 (t!51166 l!1177))))))

(assert (= (and d!162007 c!143659) b!1556086))

(assert (= (and d!162007 (not c!143659)) b!1556087))

(assert (=> b!1556087 m!1433725))

(assert (=> b!1556046 d!162007))

(declare-fun d!162011 () Bool)

(declare-fun res!1064692 () Bool)

(declare-fun e!866680 () Bool)

(assert (=> d!162011 (=> res!1064692 e!866680)))

(assert (=> d!162011 (= res!1064692 (or ((_ is Nil!36435) l!1177) ((_ is Nil!36435) (t!51166 l!1177))))))

(assert (=> d!162011 (= (isStrictlySorted!942 l!1177) e!866680)))

(declare-fun b!1556090 () Bool)

(declare-fun e!866681 () Bool)

(assert (=> b!1556090 (= e!866680 e!866681)))

(declare-fun res!1064693 () Bool)

(assert (=> b!1556090 (=> (not res!1064693) (not e!866681))))

(assert (=> b!1556090 (= res!1064693 (bvslt (_1!12526 (h!37881 l!1177)) (_1!12526 (h!37881 (t!51166 l!1177)))))))

(declare-fun b!1556091 () Bool)

(assert (=> b!1556091 (= e!866681 (isStrictlySorted!942 (t!51166 l!1177)))))

(assert (= (and d!162011 (not res!1064692)) b!1556090))

(assert (= (and b!1556090 res!1064693) b!1556091))

(assert (=> b!1556091 m!1433723))

(assert (=> start!132912 d!162011))

(declare-fun b!1556096 () Bool)

(declare-fun e!866684 () Bool)

(declare-fun tp!112417 () Bool)

(assert (=> b!1556096 (= e!866684 (and tp_is_empty!38355 tp!112417))))

(assert (=> b!1556047 (= tp!112411 e!866684)))

(assert (= (and b!1556047 ((_ is Cons!36434) (t!51166 l!1177))) b!1556096))

(check-sat (not b!1556091) tp_is_empty!38355 (not b!1556096) (not b!1556065) (not b!1556083) (not b!1556087))
(check-sat)
