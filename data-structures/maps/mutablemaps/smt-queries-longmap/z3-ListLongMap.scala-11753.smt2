; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137958 () Bool)

(assert start!137958)

(declare-fun res!1081717 () Bool)

(declare-fun e!883869 () Bool)

(assert (=> start!137958 (=> (not res!1081717) (not e!883869))))

(declare-datatypes ((B!2860 0))(
  ( (B!2861 (val!19792 Int)) )
))
(declare-datatypes ((tuple2!25916 0))(
  ( (tuple2!25917 (_1!12968 (_ BitVec 64)) (_2!12968 B!2860)) )
))
(declare-datatypes ((List!37073 0))(
  ( (Nil!37070) (Cons!37069 (h!38613 tuple2!25916) (t!51994 List!37073)) )
))
(declare-fun l!548 () List!37073)

(declare-fun isStrictlySorted!1144 (List!37073) Bool)

(assert (=> start!137958 (= res!1081717 (isStrictlySorted!1144 l!548))))

(assert (=> start!137958 e!883869))

(declare-fun e!883868 () Bool)

(assert (=> start!137958 e!883868))

(assert (=> start!137958 true))

(declare-fun b!1583400 () Bool)

(declare-fun res!1081718 () Bool)

(assert (=> b!1583400 (=> (not res!1081718) (not e!883869))))

(declare-fun key!159 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1583400 (= res!1081718 (and (not (= (_1!12968 (h!38613 l!548)) key!159)) ((_ is Cons!37069) l!548)))))

(declare-fun b!1583401 () Bool)

(declare-fun ListPrimitiveSize!215 (List!37073) Int)

(assert (=> b!1583401 (= e!883869 (>= (ListPrimitiveSize!215 (t!51994 l!548)) (ListPrimitiveSize!215 l!548)))))

(declare-fun b!1583402 () Bool)

(declare-fun tp_is_empty!39393 () Bool)

(declare-fun tp!114973 () Bool)

(assert (=> b!1583402 (= e!883868 (and tp_is_empty!39393 tp!114973))))

(assert (= (and start!137958 res!1081717) b!1583400))

(assert (= (and b!1583400 res!1081718) b!1583401))

(assert (= (and start!137958 ((_ is Cons!37069) l!548)) b!1583402))

(declare-fun m!1453265 () Bool)

(assert (=> start!137958 m!1453265))

(declare-fun m!1453267 () Bool)

(assert (=> b!1583401 m!1453267))

(declare-fun m!1453269 () Bool)

(assert (=> b!1583401 m!1453269))

(check-sat (not start!137958) (not b!1583401) (not b!1583402) tp_is_empty!39393)
(check-sat)
(get-model)

(declare-fun d!167193 () Bool)

(declare-fun res!1081729 () Bool)

(declare-fun e!883880 () Bool)

(assert (=> d!167193 (=> res!1081729 e!883880)))

(assert (=> d!167193 (= res!1081729 (or ((_ is Nil!37070) l!548) ((_ is Nil!37070) (t!51994 l!548))))))

(assert (=> d!167193 (= (isStrictlySorted!1144 l!548) e!883880)))

(declare-fun b!1583416 () Bool)

(declare-fun e!883881 () Bool)

(assert (=> b!1583416 (= e!883880 e!883881)))

(declare-fun res!1081730 () Bool)

(assert (=> b!1583416 (=> (not res!1081730) (not e!883881))))

(assert (=> b!1583416 (= res!1081730 (bvslt (_1!12968 (h!38613 l!548)) (_1!12968 (h!38613 (t!51994 l!548)))))))

(declare-fun b!1583417 () Bool)

(assert (=> b!1583417 (= e!883881 (isStrictlySorted!1144 (t!51994 l!548)))))

(assert (= (and d!167193 (not res!1081729)) b!1583416))

(assert (= (and b!1583416 res!1081730) b!1583417))

(declare-fun m!1453277 () Bool)

(assert (=> b!1583417 m!1453277))

(assert (=> start!137958 d!167193))

(declare-fun d!167199 () Bool)

(declare-fun lt!677101 () Int)

(assert (=> d!167199 (>= lt!677101 0)))

(declare-fun e!883896 () Int)

(assert (=> d!167199 (= lt!677101 e!883896)))

(declare-fun c!146682 () Bool)

(assert (=> d!167199 (= c!146682 ((_ is Nil!37070) (t!51994 l!548)))))

(assert (=> d!167199 (= (ListPrimitiveSize!215 (t!51994 l!548)) lt!677101)))

(declare-fun b!1583434 () Bool)

(assert (=> b!1583434 (= e!883896 0)))

(declare-fun b!1583435 () Bool)

(assert (=> b!1583435 (= e!883896 (+ 1 (ListPrimitiveSize!215 (t!51994 (t!51994 l!548)))))))

(assert (= (and d!167199 c!146682) b!1583434))

(assert (= (and d!167199 (not c!146682)) b!1583435))

(declare-fun m!1453283 () Bool)

(assert (=> b!1583435 m!1453283))

(assert (=> b!1583401 d!167199))

(declare-fun d!167205 () Bool)

(declare-fun lt!677104 () Int)

(assert (=> d!167205 (>= lt!677104 0)))

(declare-fun e!883899 () Int)

(assert (=> d!167205 (= lt!677104 e!883899)))

(declare-fun c!146685 () Bool)

(assert (=> d!167205 (= c!146685 ((_ is Nil!37070) l!548))))

(assert (=> d!167205 (= (ListPrimitiveSize!215 l!548) lt!677104)))

(declare-fun b!1583440 () Bool)

(assert (=> b!1583440 (= e!883899 0)))

(declare-fun b!1583441 () Bool)

(assert (=> b!1583441 (= e!883899 (+ 1 (ListPrimitiveSize!215 (t!51994 l!548))))))

(assert (= (and d!167205 c!146685) b!1583440))

(assert (= (and d!167205 (not c!146685)) b!1583441))

(assert (=> b!1583441 m!1453267))

(assert (=> b!1583401 d!167205))

(declare-fun b!1583450 () Bool)

(declare-fun e!883904 () Bool)

(declare-fun tp!114979 () Bool)

(assert (=> b!1583450 (= e!883904 (and tp_is_empty!39393 tp!114979))))

(assert (=> b!1583402 (= tp!114973 e!883904)))

(assert (= (and b!1583402 ((_ is Cons!37069) (t!51994 l!548))) b!1583450))

(check-sat (not b!1583417) (not b!1583435) (not b!1583450) (not b!1583441) tp_is_empty!39393)
(check-sat)
