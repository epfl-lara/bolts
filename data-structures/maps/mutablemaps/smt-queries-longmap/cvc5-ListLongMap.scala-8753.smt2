; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106252 () Bool)

(assert start!106252)

(declare-fun res!842134 () Bool)

(declare-fun e!720030 () Bool)

(assert (=> start!106252 (=> (not res!842134) (not e!720030))))

(declare-datatypes ((B!1910 0))(
  ( (B!1911 (val!16290 Int)) )
))
(declare-datatypes ((tuple2!21248 0))(
  ( (tuple2!21249 (_1!10634 (_ BitVec 64)) (_2!10634 B!1910)) )
))
(declare-datatypes ((List!28457 0))(
  ( (Nil!28454) (Cons!28453 (h!29662 tuple2!21248) (t!41985 List!28457)) )
))
(declare-datatypes ((ListLongMap!19133 0))(
  ( (ListLongMap!19134 (toList!9582 List!28457)) )
))
(declare-fun lm!212 () ListLongMap!19133)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7640 (ListLongMap!19133 (_ BitVec 64)) Bool)

(assert (=> start!106252 (= res!842134 (not (contains!7640 lm!212 a1!67)))))

(assert (=> start!106252 e!720030))

(declare-fun e!720031 () Bool)

(declare-fun inv!44072 (ListLongMap!19133) Bool)

(assert (=> start!106252 (and (inv!44072 lm!212) e!720031)))

(assert (=> start!106252 true))

(declare-fun b!1264405 () Bool)

(declare-fun isStrictlySorted!765 (List!28457) Bool)

(assert (=> b!1264405 (= e!720030 (not (isStrictlySorted!765 (toList!9582 lm!212))))))

(declare-fun b!1264406 () Bool)

(declare-fun tp!96204 () Bool)

(assert (=> b!1264406 (= e!720031 tp!96204)))

(assert (= (and start!106252 res!842134) b!1264405))

(assert (= start!106252 b!1264406))

(declare-fun m!1165017 () Bool)

(assert (=> start!106252 m!1165017))

(declare-fun m!1165019 () Bool)

(assert (=> start!106252 m!1165019))

(declare-fun m!1165021 () Bool)

(assert (=> b!1264405 m!1165021))

(push 1)

(assert (not b!1264405))

(assert (not start!106252))

(assert (not b!1264406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138651 () Bool)

(declare-fun res!842145 () Bool)

(declare-fun e!720048 () Bool)

(assert (=> d!138651 (=> res!842145 e!720048)))

(assert (=> d!138651 (= res!842145 (or (is-Nil!28454 (toList!9582 lm!212)) (is-Nil!28454 (t!41985 (toList!9582 lm!212)))))))

(assert (=> d!138651 (= (isStrictlySorted!765 (toList!9582 lm!212)) e!720048)))

(declare-fun b!1264423 () Bool)

(declare-fun e!720049 () Bool)

(assert (=> b!1264423 (= e!720048 e!720049)))

(declare-fun res!842146 () Bool)

(assert (=> b!1264423 (=> (not res!842146) (not e!720049))))

(assert (=> b!1264423 (= res!842146 (bvslt (_1!10634 (h!29662 (toList!9582 lm!212))) (_1!10634 (h!29662 (t!41985 (toList!9582 lm!212))))))))

(declare-fun b!1264424 () Bool)

(assert (=> b!1264424 (= e!720049 (isStrictlySorted!765 (t!41985 (toList!9582 lm!212))))))

(assert (= (and d!138651 (not res!842145)) b!1264423))

(assert (= (and b!1264423 res!842146) b!1264424))

(declare-fun m!1165035 () Bool)

(assert (=> b!1264424 m!1165035))

(assert (=> b!1264405 d!138651))

(declare-fun d!138657 () Bool)

(declare-fun e!720064 () Bool)

(assert (=> d!138657 e!720064))

(declare-fun res!842157 () Bool)

(assert (=> d!138657 (=> res!842157 e!720064)))

(declare-fun lt!573758 () Bool)

(assert (=> d!138657 (= res!842157 (not lt!573758))))

(declare-fun lt!573759 () Bool)

(assert (=> d!138657 (= lt!573758 lt!573759)))

(declare-datatypes ((Unit!42099 0))(
  ( (Unit!42100) )
))
(declare-fun lt!573757 () Unit!42099)

(declare-fun e!720065 () Unit!42099)

(assert (=> d!138657 (= lt!573757 e!720065)))

(declare-fun c!123084 () Bool)

(assert (=> d!138657 (= c!123084 lt!573759)))

(declare-fun containsKey!627 (List!28457 (_ BitVec 64)) Bool)

(assert (=> d!138657 (= lt!573759 (containsKey!627 (toList!9582 lm!212) a1!67))))

(assert (=> d!138657 (= (contains!7640 lm!212 a1!67) lt!573758)))

(declare-fun b!1264443 () Bool)

(declare-fun lt!573760 () Unit!42099)

(assert (=> b!1264443 (= e!720065 lt!573760)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!437 (List!28457 (_ BitVec 64)) Unit!42099)

(assert (=> b!1264443 (= lt!573760 (lemmaContainsKeyImpliesGetValueByKeyDefined!437 (toList!9582 lm!212) a1!67))))

(declare-datatypes ((Option!724 0))(
  ( (Some!723 (v!18998 B!1910)) (None!722) )
))
(declare-fun isDefined!477 (Option!724) Bool)

(declare-fun getValueByKey!673 (List!28457 (_ BitVec 64)) Option!724)

(assert (=> b!1264443 (isDefined!477 (getValueByKey!673 (toList!9582 lm!212) a1!67))))

(declare-fun b!1264444 () Bool)

(declare-fun Unit!42101 () Unit!42099)

(assert (=> b!1264444 (= e!720065 Unit!42101)))

(declare-fun b!1264445 () Bool)

(assert (=> b!1264445 (= e!720064 (isDefined!477 (getValueByKey!673 (toList!9582 lm!212) a1!67)))))

(assert (= (and d!138657 c!123084) b!1264443))

(assert (= (and d!138657 (not c!123084)) b!1264444))

(assert (= (and d!138657 (not res!842157)) b!1264445))

(declare-fun m!1165039 () Bool)

(assert (=> d!138657 m!1165039))

(declare-fun m!1165041 () Bool)

(assert (=> b!1264443 m!1165041))

(declare-fun m!1165043 () Bool)

(assert (=> b!1264443 m!1165043))

(assert (=> b!1264443 m!1165043))

(declare-fun m!1165045 () Bool)

(assert (=> b!1264443 m!1165045))

(assert (=> b!1264445 m!1165043))

(assert (=> b!1264445 m!1165043))

(assert (=> b!1264445 m!1165045))

(assert (=> start!106252 d!138657))

(declare-fun d!138661 () Bool)

(assert (=> d!138661 (= (inv!44072 lm!212) (isStrictlySorted!765 (toList!9582 lm!212)))))

(declare-fun bs!35767 () Bool)

(assert (= bs!35767 d!138661))

(assert (=> bs!35767 m!1165021))

(assert (=> start!106252 d!138661))

(declare-fun b!1264450 () Bool)

(declare-fun e!720068 () Bool)

(declare-fun tp_is_empty!32443 () Bool)

(declare-fun tp!96213 () Bool)

(assert (=> b!1264450 (= e!720068 (and tp_is_empty!32443 tp!96213))))

(assert (=> b!1264406 (= tp!96204 e!720068)))

(assert (= (and b!1264406 (is-Cons!28453 (toList!9582 lm!212))) b!1264450))

(push 1)

(assert (not b!1264443))

(assert tp_is_empty!32443)

(assert (not d!138661))

(assert (not b!1264424))

(assert (not b!1264445))

(assert (not d!138657))

(assert (not b!1264450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

