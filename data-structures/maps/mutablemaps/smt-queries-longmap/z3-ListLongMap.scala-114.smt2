; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1980 () Bool)

(assert start!1980)

(declare-fun res!10510 () Bool)

(declare-fun e!7984 () Bool)

(assert (=> start!1980 (=> (not res!10510) (not e!7984))))

(declare-datatypes ((B!484 0))(
  ( (B!485 (val!340 Int)) )
))
(declare-datatypes ((tuple2!462 0))(
  ( (tuple2!463 (_1!231 (_ BitVec 64)) (_2!231 B!484)) )
))
(declare-datatypes ((List!390 0))(
  ( (Nil!387) (Cons!386 (h!952 tuple2!462) (t!2786 List!390)) )
))
(declare-fun l!522 () List!390)

(declare-fun isStrictlySorted!81 (List!390) Bool)

(assert (=> start!1980 (= res!10510 (isStrictlySorted!81 l!522))))

(assert (=> start!1980 e!7984))

(declare-fun e!7983 () Bool)

(assert (=> start!1980 e!7983))

(declare-fun tp_is_empty!663 () Bool)

(assert (=> start!1980 tp_is_empty!663))

(declare-fun b!13326 () Bool)

(declare-fun res!10509 () Bool)

(assert (=> b!13326 (=> (not res!10509) (not e!7984))))

(declare-fun value!159 () B!484)

(get-info :version)

(assert (=> b!13326 (= res!10509 (and (not (= (_2!231 (h!952 l!522)) value!159)) ((_ is Cons!386) l!522)))))

(declare-fun b!13327 () Bool)

(assert (=> b!13327 (= e!7984 (not (isStrictlySorted!81 (t!2786 l!522))))))

(declare-fun b!13328 () Bool)

(declare-fun tp!2171 () Bool)

(assert (=> b!13328 (= e!7983 (and tp_is_empty!663 tp!2171))))

(assert (= (and start!1980 res!10510) b!13326))

(assert (= (and b!13326 res!10509) b!13327))

(assert (= (and start!1980 ((_ is Cons!386) l!522)) b!13328))

(declare-fun m!9077 () Bool)

(assert (=> start!1980 m!9077))

(declare-fun m!9079 () Bool)

(assert (=> b!13327 m!9079))

(check-sat (not b!13327) (not start!1980) (not b!13328) tp_is_empty!663)
(check-sat)
(get-model)

(declare-fun d!1997 () Bool)

(declare-fun res!10526 () Bool)

(declare-fun e!8000 () Bool)

(assert (=> d!1997 (=> res!10526 e!8000)))

(assert (=> d!1997 (= res!10526 (or ((_ is Nil!387) (t!2786 l!522)) ((_ is Nil!387) (t!2786 (t!2786 l!522)))))))

(assert (=> d!1997 (= (isStrictlySorted!81 (t!2786 l!522)) e!8000)))

(declare-fun b!13346 () Bool)

(declare-fun e!8002 () Bool)

(assert (=> b!13346 (= e!8000 e!8002)))

(declare-fun res!10528 () Bool)

(assert (=> b!13346 (=> (not res!10528) (not e!8002))))

(assert (=> b!13346 (= res!10528 (bvslt (_1!231 (h!952 (t!2786 l!522))) (_1!231 (h!952 (t!2786 (t!2786 l!522))))))))

(declare-fun b!13348 () Bool)

(assert (=> b!13348 (= e!8002 (isStrictlySorted!81 (t!2786 (t!2786 l!522))))))

(assert (= (and d!1997 (not res!10526)) b!13346))

(assert (= (and b!13346 res!10528) b!13348))

(declare-fun m!9085 () Bool)

(assert (=> b!13348 m!9085))

(assert (=> b!13327 d!1997))

(declare-fun d!2002 () Bool)

(declare-fun res!10529 () Bool)

(declare-fun e!8003 () Bool)

(assert (=> d!2002 (=> res!10529 e!8003)))

(assert (=> d!2002 (= res!10529 (or ((_ is Nil!387) l!522) ((_ is Nil!387) (t!2786 l!522))))))

(assert (=> d!2002 (= (isStrictlySorted!81 l!522) e!8003)))

(declare-fun b!13350 () Bool)

(declare-fun e!8004 () Bool)

(assert (=> b!13350 (= e!8003 e!8004)))

(declare-fun res!10530 () Bool)

(assert (=> b!13350 (=> (not res!10530) (not e!8004))))

(assert (=> b!13350 (= res!10530 (bvslt (_1!231 (h!952 l!522)) (_1!231 (h!952 (t!2786 l!522)))))))

(declare-fun b!13351 () Bool)

(assert (=> b!13351 (= e!8004 (isStrictlySorted!81 (t!2786 l!522)))))

(assert (= (and d!2002 (not res!10529)) b!13350))

(assert (= (and b!13350 res!10530) b!13351))

(assert (=> b!13351 m!9079))

(assert (=> start!1980 d!2002))

(declare-fun b!13363 () Bool)

(declare-fun e!8014 () Bool)

(declare-fun tp!2180 () Bool)

(assert (=> b!13363 (= e!8014 (and tp_is_empty!663 tp!2180))))

(assert (=> b!13328 (= tp!2171 e!8014)))

(assert (= (and b!13328 ((_ is Cons!386) (t!2786 l!522))) b!13363))

(check-sat (not b!13351) (not b!13348) (not b!13363) tp_is_empty!663)
(check-sat)
