; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107824 () Bool)

(assert start!107824)

(declare-fun res!847342 () Bool)

(declare-fun e!727397 () Bool)

(assert (=> start!107824 (=> (not res!847342) (not e!727397))))

(declare-datatypes ((B!2134 0))(
  ( (B!2135 (val!16663 Int)) )
))
(declare-datatypes ((tuple2!21554 0))(
  ( (tuple2!21555 (_1!10787 (_ BitVec 64)) (_2!10787 B!2134)) )
))
(declare-datatypes ((List!28747 0))(
  ( (Nil!28744) (Cons!28743 (h!29952 tuple2!21554) (t!42287 List!28747)) )
))
(declare-fun l!595 () List!28747)

(declare-fun isStrictlySorted!844 (List!28747) Bool)

(assert (=> start!107824 (= res!847342 (isStrictlySorted!844 l!595))))

(assert (=> start!107824 e!727397))

(declare-fun e!727398 () Bool)

(assert (=> start!107824 e!727398))

(assert (=> start!107824 true))

(declare-fun b!1274522 () Bool)

(declare-fun res!847341 () Bool)

(assert (=> b!1274522 (=> (not res!847341) (not e!727397))))

(declare-fun key!173 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1274522 (= res!847341 (and (not (= (_1!10787 (h!29952 l!595)) key!173)) ((_ is Cons!28743) l!595)))))

(declare-fun b!1274523 () Bool)

(assert (=> b!1274523 (= e!727397 false)))

(declare-fun lt!575213 () Bool)

(declare-fun $colon$colon!664 (List!28747 tuple2!21554) List!28747)

(declare-fun removeStrictlySorted!181 (List!28747 (_ BitVec 64)) List!28747)

(assert (=> b!1274523 (= lt!575213 (isStrictlySorted!844 ($colon$colon!664 (removeStrictlySorted!181 (t!42287 l!595) key!173) (h!29952 l!595))))))

(declare-fun b!1274524 () Bool)

(declare-fun tp_is_empty!33177 () Bool)

(declare-fun tp!97980 () Bool)

(assert (=> b!1274524 (= e!727398 (and tp_is_empty!33177 tp!97980))))

(assert (= (and start!107824 res!847342) b!1274522))

(assert (= (and b!1274522 res!847341) b!1274523))

(assert (= (and start!107824 ((_ is Cons!28743) l!595)) b!1274524))

(declare-fun m!1171239 () Bool)

(assert (=> start!107824 m!1171239))

(declare-fun m!1171241 () Bool)

(assert (=> b!1274523 m!1171241))

(assert (=> b!1274523 m!1171241))

(declare-fun m!1171243 () Bool)

(assert (=> b!1274523 m!1171243))

(assert (=> b!1274523 m!1171243))

(declare-fun m!1171245 () Bool)

(assert (=> b!1274523 m!1171245))

(check-sat (not b!1274523) (not start!107824) (not b!1274524) tp_is_empty!33177)
(check-sat)
