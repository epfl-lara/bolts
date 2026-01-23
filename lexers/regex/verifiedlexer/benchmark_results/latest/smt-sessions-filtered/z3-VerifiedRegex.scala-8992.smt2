; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!484892 () Bool)

(assert start!484892)

(declare-fun b!4747397 () Bool)

(declare-fun e!2961206 () Bool)

(declare-fun tp!1349668 () Bool)

(assert (=> b!4747397 (= e!2961206 tp!1349668)))

(declare-fun b!4747398 () Bool)

(declare-fun res!2012353 () Bool)

(declare-fun e!2961208 () Bool)

(assert (=> b!4747398 (=> (not res!2012353) (not e!2961208))))

(declare-datatypes ((K!14365 0))(
  ( (K!14366 (val!19763 Int)) )
))
(declare-datatypes ((V!14611 0))(
  ( (V!14612 (val!19764 Int)) )
))
(declare-datatypes ((tuple2!54732 0))(
  ( (tuple2!54733 (_1!30660 K!14365) (_2!30660 V!14611)) )
))
(declare-datatypes ((List!53144 0))(
  ( (Nil!53020) (Cons!53020 (h!59417 tuple2!54732) (t!360452 List!53144)) )
))
(declare-fun l!14304 () List!53144)

(get-info :version)

(assert (=> b!4747398 (= res!2012353 ((_ is Nil!53020) l!14304))))

(declare-fun res!2012352 () Bool)

(declare-fun e!2961205 () Bool)

(assert (=> start!484892 (=> (not res!2012352) (not e!2961205))))

(declare-fun noDuplicateKeys!2086 (List!53144) Bool)

(assert (=> start!484892 (= res!2012352 (noDuplicateKeys!2086 l!14304))))

(assert (=> start!484892 e!2961205))

(declare-fun e!2961207 () Bool)

(assert (=> start!484892 e!2961207))

(declare-fun tp_is_empty!31637 () Bool)

(declare-fun tp_is_empty!31639 () Bool)

(assert (=> start!484892 (and tp_is_empty!31637 tp_is_empty!31639)))

(declare-datatypes ((ListMap!5421 0))(
  ( (ListMap!5422 (toList!6056 List!53144)) )
))
(declare-fun acc!1214 () ListMap!5421)

(declare-fun inv!68237 (ListMap!5421) Bool)

(assert (=> start!484892 (and (inv!68237 acc!1214) e!2961206)))

(declare-fun b!4747399 () Bool)

(assert (=> b!4747399 (= e!2961205 e!2961208)))

(declare-fun res!2012351 () Bool)

(assert (=> b!4747399 (=> (not res!2012351) (not e!2961208))))

(declare-fun lt!1909404 () List!53144)

(assert (=> b!4747399 (= res!2012351 (noDuplicateKeys!2086 lt!1909404))))

(declare-fun t!14174 () tuple2!54732)

(assert (=> b!4747399 (= lt!1909404 (Cons!53020 t!14174 l!14304))))

(declare-fun b!4747400 () Bool)

(declare-fun tp!1349669 () Bool)

(assert (=> b!4747400 (= e!2961207 (and tp_is_empty!31637 tp_is_empty!31639 tp!1349669))))

(declare-fun b!4747401 () Bool)

(assert (=> b!4747401 (= e!2961208 false)))

(declare-fun lt!1909405 () ListMap!5421)

(declare-fun addToMapMapFromBucket!1514 (List!53144 ListMap!5421) ListMap!5421)

(assert (=> b!4747401 (= lt!1909405 (addToMapMapFromBucket!1514 lt!1909404 acc!1214))))

(assert (= (and start!484892 res!2012352) b!4747399))

(assert (= (and b!4747399 res!2012351) b!4747398))

(assert (= (and b!4747398 res!2012353) b!4747401))

(assert (= (and start!484892 ((_ is Cons!53020) l!14304)) b!4747400))

(assert (= start!484892 b!4747397))

(declare-fun m!5704651 () Bool)

(assert (=> start!484892 m!5704651))

(declare-fun m!5704653 () Bool)

(assert (=> start!484892 m!5704653))

(declare-fun m!5704655 () Bool)

(assert (=> b!4747399 m!5704655))

(declare-fun m!5704657 () Bool)

(assert (=> b!4747401 m!5704657))

(check-sat (not b!4747397) tp_is_empty!31637 tp_is_empty!31639 (not b!4747399) (not b!4747400) (not start!484892) (not b!4747401))
(check-sat)
