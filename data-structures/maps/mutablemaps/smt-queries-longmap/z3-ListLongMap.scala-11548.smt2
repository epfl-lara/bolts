; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134466 () Bool)

(assert start!134466)

(declare-fun res!1072699 () Bool)

(declare-fun e!874977 () Bool)

(assert (=> start!134466 (=> (not res!1072699) (not e!874977))))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> start!134466 (= res!1072699 (not (= key1!37 key2!21)))))

(assert (=> start!134466 e!874977))

(assert (=> start!134466 true))

(declare-fun e!874976 () Bool)

(assert (=> start!134466 e!874976))

(declare-fun b!1569510 () Bool)

(declare-fun res!1072700 () Bool)

(assert (=> b!1569510 (=> (not res!1072700) (not e!874977))))

(declare-datatypes ((B!2524 0))(
  ( (B!2525 (val!19624 Int)) )
))
(declare-datatypes ((tuple2!25514 0))(
  ( (tuple2!25515 (_1!12767 (_ BitVec 64)) (_2!12767 B!2524)) )
))
(declare-datatypes ((List!36905 0))(
  ( (Nil!36902) (Cons!36901 (h!38349 tuple2!25514) (t!51820 List!36905)) )
))
(declare-fun l!750 () List!36905)

(declare-fun isStrictlySorted!1009 (List!36905) Bool)

(assert (=> b!1569510 (= res!1072700 (isStrictlySorted!1009 l!750))))

(declare-fun b!1569511 () Bool)

(declare-fun ListPrimitiveSize!188 (List!36905) Int)

(assert (=> b!1569511 (= e!874977 (< (ListPrimitiveSize!188 l!750) 0))))

(declare-fun b!1569512 () Bool)

(declare-fun tp_is_empty!39075 () Bool)

(declare-fun tp!114151 () Bool)

(assert (=> b!1569512 (= e!874976 (and tp_is_empty!39075 tp!114151))))

(assert (= (and start!134466 res!1072699) b!1569510))

(assert (= (and b!1569510 res!1072700) b!1569511))

(get-info :version)

(assert (= (and start!134466 ((_ is Cons!36901) l!750)) b!1569512))

(declare-fun m!1443785 () Bool)

(assert (=> b!1569510 m!1443785))

(declare-fun m!1443787 () Bool)

(assert (=> b!1569511 m!1443787))

(check-sat (not b!1569511) (not b!1569510) (not b!1569512) tp_is_empty!39075)
(check-sat)
(get-model)

(declare-fun d!163837 () Bool)

(declare-fun lt!673240 () Int)

(assert (=> d!163837 (>= lt!673240 0)))

(declare-fun e!874992 () Int)

(assert (=> d!163837 (= lt!673240 e!874992)))

(declare-fun c!144711 () Bool)

(assert (=> d!163837 (= c!144711 ((_ is Nil!36902) l!750))))

(assert (=> d!163837 (= (ListPrimitiveSize!188 l!750) lt!673240)))

(declare-fun b!1569532 () Bool)

(assert (=> b!1569532 (= e!874992 0)))

(declare-fun b!1569533 () Bool)

(assert (=> b!1569533 (= e!874992 (+ 1 (ListPrimitiveSize!188 (t!51820 l!750))))))

(assert (= (and d!163837 c!144711) b!1569532))

(assert (= (and d!163837 (not c!144711)) b!1569533))

(declare-fun m!1443795 () Bool)

(assert (=> b!1569533 m!1443795))

(assert (=> b!1569511 d!163837))

(declare-fun d!163845 () Bool)

(declare-fun res!1072717 () Bool)

(declare-fun e!875006 () Bool)

(assert (=> d!163845 (=> res!1072717 e!875006)))

(assert (=> d!163845 (= res!1072717 (or ((_ is Nil!36902) l!750) ((_ is Nil!36902) (t!51820 l!750))))))

(assert (=> d!163845 (= (isStrictlySorted!1009 l!750) e!875006)))

(declare-fun b!1569555 () Bool)

(declare-fun e!875007 () Bool)

(assert (=> b!1569555 (= e!875006 e!875007)))

(declare-fun res!1072718 () Bool)

(assert (=> b!1569555 (=> (not res!1072718) (not e!875007))))

(assert (=> b!1569555 (= res!1072718 (bvslt (_1!12767 (h!38349 l!750)) (_1!12767 (h!38349 (t!51820 l!750)))))))

(declare-fun b!1569556 () Bool)

(assert (=> b!1569556 (= e!875007 (isStrictlySorted!1009 (t!51820 l!750)))))

(assert (= (and d!163845 (not res!1072717)) b!1569555))

(assert (= (and b!1569555 res!1072718) b!1569556))

(declare-fun m!1443801 () Bool)

(assert (=> b!1569556 m!1443801))

(assert (=> b!1569510 d!163845))

(declare-fun b!1569565 () Bool)

(declare-fun e!875014 () Bool)

(declare-fun tp!114160 () Bool)

(assert (=> b!1569565 (= e!875014 (and tp_is_empty!39075 tp!114160))))

(assert (=> b!1569512 (= tp!114151 e!875014)))

(assert (= (and b!1569512 ((_ is Cons!36901) (t!51820 l!750))) b!1569565))

(check-sat (not b!1569533) (not b!1569556) (not b!1569565) tp_is_empty!39075)
(check-sat)
