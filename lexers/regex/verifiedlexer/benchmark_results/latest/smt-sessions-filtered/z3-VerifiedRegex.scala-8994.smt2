; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!484912 () Bool)

(assert start!484912)

(declare-fun e!2961281 () Bool)

(declare-fun b!4747506 () Bool)

(declare-fun tp_is_empty!31655 () Bool)

(declare-fun tp_is_empty!31653 () Bool)

(declare-fun tp!1349700 () Bool)

(assert (=> b!4747506 (= e!2961281 (and tp_is_empty!31653 tp_is_empty!31655 tp!1349700))))

(declare-fun b!4747507 () Bool)

(declare-fun res!2012425 () Bool)

(declare-fun e!2961282 () Bool)

(assert (=> b!4747507 (=> (not res!2012425) (not e!2961282))))

(declare-datatypes ((K!14375 0))(
  ( (K!14376 (val!19771 Int)) )
))
(declare-datatypes ((V!14621 0))(
  ( (V!14622 (val!19772 Int)) )
))
(declare-datatypes ((tuple2!54740 0))(
  ( (tuple2!54741 (_1!30664 K!14375) (_2!30664 V!14621)) )
))
(declare-datatypes ((List!53148 0))(
  ( (Nil!53024) (Cons!53024 (h!59421 tuple2!54740) (t!360456 List!53148)) )
))
(declare-fun l!14304 () List!53148)

(get-info :version)

(assert (=> b!4747507 (= res!2012425 (not ((_ is Nil!53024) l!14304)))))

(declare-fun b!4747508 () Bool)

(declare-fun res!2012427 () Bool)

(assert (=> b!4747508 (=> (not res!2012427) (not e!2961282))))

(declare-fun t!14174 () tuple2!54740)

(declare-fun noDuplicateKeys!2090 (List!53148) Bool)

(assert (=> b!4747508 (= res!2012427 (noDuplicateKeys!2090 (Cons!53024 t!14174 l!14304)))))

(declare-fun b!4747509 () Bool)

(declare-fun e!2961284 () Bool)

(declare-fun tp!1349701 () Bool)

(assert (=> b!4747509 (= e!2961284 tp!1349701)))

(declare-fun b!4747511 () Bool)

(declare-fun e!2961283 () Bool)

(assert (=> b!4747511 (= e!2961282 e!2961283)))

(declare-fun res!2012424 () Bool)

(assert (=> b!4747511 (=> (not res!2012424) (not e!2961283))))

(assert (=> b!4747511 (= res!2012424 (noDuplicateKeys!2090 (t!360456 l!14304)))))

(declare-datatypes ((ListMap!5429 0))(
  ( (ListMap!5430 (toList!6060 List!53148)) )
))
(declare-fun lt!1909446 () ListMap!5429)

(declare-fun acc!1214 () ListMap!5429)

(declare-fun addToMapMapFromBucket!1516 (List!53148 ListMap!5429) ListMap!5429)

(declare-fun +!2326 (ListMap!5429 tuple2!54740) ListMap!5429)

(assert (=> b!4747511 (= lt!1909446 (addToMapMapFromBucket!1516 (t!360456 l!14304) (+!2326 acc!1214 (h!59421 l!14304))))))

(declare-fun b!4747510 () Bool)

(assert (=> b!4747510 (= e!2961283 false)))

(declare-fun lt!1909447 () Bool)

(assert (=> b!4747510 (= lt!1909447 (noDuplicateKeys!2090 (Cons!53024 t!14174 (t!360456 l!14304))))))

(declare-fun res!2012426 () Bool)

(assert (=> start!484912 (=> (not res!2012426) (not e!2961282))))

(assert (=> start!484912 (= res!2012426 (noDuplicateKeys!2090 l!14304))))

(assert (=> start!484912 e!2961282))

(assert (=> start!484912 e!2961281))

(assert (=> start!484912 (and tp_is_empty!31653 tp_is_empty!31655)))

(declare-fun inv!68247 (ListMap!5429) Bool)

(assert (=> start!484912 (and (inv!68247 acc!1214) e!2961284)))

(assert (= (and start!484912 res!2012426) b!4747508))

(assert (= (and b!4747508 res!2012427) b!4747507))

(assert (= (and b!4747507 res!2012425) b!4747511))

(assert (= (and b!4747511 res!2012424) b!4747510))

(assert (= (and start!484912 ((_ is Cons!53024) l!14304)) b!4747506))

(assert (= start!484912 b!4747509))

(declare-fun m!5704741 () Bool)

(assert (=> b!4747508 m!5704741))

(declare-fun m!5704743 () Bool)

(assert (=> b!4747511 m!5704743))

(declare-fun m!5704745 () Bool)

(assert (=> b!4747511 m!5704745))

(assert (=> b!4747511 m!5704745))

(declare-fun m!5704747 () Bool)

(assert (=> b!4747511 m!5704747))

(declare-fun m!5704749 () Bool)

(assert (=> b!4747510 m!5704749))

(declare-fun m!5704751 () Bool)

(assert (=> start!484912 m!5704751))

(declare-fun m!5704753 () Bool)

(assert (=> start!484912 m!5704753))

(check-sat (not b!4747509) (not b!4747506) (not b!4747508) tp_is_empty!31655 tp_is_empty!31653 (not b!4747510) (not b!4747511) (not start!484912))
(check-sat)
