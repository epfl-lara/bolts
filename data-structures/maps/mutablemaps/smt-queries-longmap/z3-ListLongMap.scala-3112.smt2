; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43776 () Bool)

(assert start!43776)

(declare-fun res!288223 () Bool)

(declare-fun e!284682 () Bool)

(assert (=> start!43776 (=> (not res!288223) (not e!284682))))

(declare-datatypes ((B!1096 0))(
  ( (B!1097 (val!7000 Int)) )
))
(declare-datatypes ((tuple2!9198 0))(
  ( (tuple2!9199 (_1!4609 (_ BitVec 64)) (_2!4609 B!1096)) )
))
(declare-datatypes ((List!9299 0))(
  ( (Nil!9296) (Cons!9295 (h!10151 tuple2!9198) (t!15529 List!9299)) )
))
(declare-fun l!956 () List!9299)

(declare-fun isStrictlySorted!399 (List!9299) Bool)

(assert (=> start!43776 (= res!288223 (isStrictlySorted!399 l!956))))

(assert (=> start!43776 e!284682))

(declare-fun e!284683 () Bool)

(assert (=> start!43776 e!284683))

(assert (=> start!43776 true))

(declare-fun tp_is_empty!13905 () Bool)

(assert (=> start!43776 tp_is_empty!13905))

(declare-fun b!483651 () Bool)

(declare-fun res!288224 () Bool)

(assert (=> b!483651 (=> (not res!288224) (not e!284682))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!365 (List!9299 (_ BitVec 64)) Bool)

(assert (=> b!483651 (= res!288224 (not (containsKey!365 l!956 key!251)))))

(declare-fun b!483652 () Bool)

(assert (=> b!483652 (= e!284682 false)))

(declare-fun lt!219254 () List!9299)

(declare-fun value!166 () B!1096)

(declare-fun insertStrictlySorted!221 (List!9299 (_ BitVec 64) B!1096) List!9299)

(assert (=> b!483652 (= lt!219254 (insertStrictlySorted!221 l!956 key!251 value!166))))

(declare-fun b!483653 () Bool)

(declare-fun tp!43447 () Bool)

(assert (=> b!483653 (= e!284683 (and tp_is_empty!13905 tp!43447))))

(assert (= (and start!43776 res!288223) b!483651))

(assert (= (and b!483651 res!288224) b!483652))

(get-info :version)

(assert (= (and start!43776 ((_ is Cons!9295) l!956)) b!483653))

(declare-fun m!464581 () Bool)

(assert (=> start!43776 m!464581))

(declare-fun m!464583 () Bool)

(assert (=> b!483651 m!464583))

(declare-fun m!464585 () Bool)

(assert (=> b!483652 m!464585))

(check-sat (not b!483653) tp_is_empty!13905 (not b!483651) (not b!483652) (not start!43776))
(check-sat)
