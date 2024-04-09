; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43770 () Bool)

(assert start!43770)

(declare-fun res!288205 () Bool)

(declare-fun e!284664 () Bool)

(assert (=> start!43770 (=> (not res!288205) (not e!284664))))

(declare-datatypes ((B!1090 0))(
  ( (B!1091 (val!6997 Int)) )
))
(declare-datatypes ((tuple2!9192 0))(
  ( (tuple2!9193 (_1!4606 (_ BitVec 64)) (_2!4606 B!1090)) )
))
(declare-datatypes ((List!9296 0))(
  ( (Nil!9293) (Cons!9292 (h!10148 tuple2!9192) (t!15526 List!9296)) )
))
(declare-fun l!956 () List!9296)

(declare-fun isStrictlySorted!396 (List!9296) Bool)

(assert (=> start!43770 (= res!288205 (isStrictlySorted!396 l!956))))

(assert (=> start!43770 e!284664))

(declare-fun e!284665 () Bool)

(assert (=> start!43770 e!284665))

(assert (=> start!43770 true))

(declare-fun tp_is_empty!13899 () Bool)

(assert (=> start!43770 tp_is_empty!13899))

(declare-fun b!483624 () Bool)

(declare-fun res!288206 () Bool)

(assert (=> b!483624 (=> (not res!288206) (not e!284664))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!362 (List!9296 (_ BitVec 64)) Bool)

(assert (=> b!483624 (= res!288206 (not (containsKey!362 l!956 key!251)))))

(declare-fun b!483625 () Bool)

(assert (=> b!483625 (= e!284664 false)))

(declare-fun lt!219245 () List!9296)

(declare-fun value!166 () B!1090)

(declare-fun insertStrictlySorted!218 (List!9296 (_ BitVec 64) B!1090) List!9296)

(assert (=> b!483625 (= lt!219245 (insertStrictlySorted!218 l!956 key!251 value!166))))

(declare-fun b!483626 () Bool)

(declare-fun tp!43438 () Bool)

(assert (=> b!483626 (= e!284665 (and tp_is_empty!13899 tp!43438))))

(assert (= (and start!43770 res!288205) b!483624))

(assert (= (and b!483624 res!288206) b!483625))

(get-info :version)

(assert (= (and start!43770 ((_ is Cons!9292) l!956)) b!483626))

(declare-fun m!464563 () Bool)

(assert (=> start!43770 m!464563))

(declare-fun m!464565 () Bool)

(assert (=> b!483624 m!464565))

(declare-fun m!464567 () Bool)

(assert (=> b!483625 m!464567))

(check-sat (not start!43770) (not b!483624) tp_is_empty!13899 (not b!483625) (not b!483626))
(check-sat)
