; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485096 () Bool)

(assert start!485096)

(declare-fun res!2013104 () Bool)

(declare-fun e!2961931 () Bool)

(assert (=> start!485096 (=> (not res!2013104) (not e!2961931))))

(declare-datatypes ((K!14425 0))(
  ( (K!14426 (val!19811 Int)) )
))
(declare-datatypes ((V!14671 0))(
  ( (V!14672 (val!19812 Int)) )
))
(declare-datatypes ((tuple2!54780 0))(
  ( (tuple2!54781 (_1!30684 K!14425) (_2!30684 V!14671)) )
))
(declare-datatypes ((List!53168 0))(
  ( (Nil!53044) (Cons!53044 (h!59441 tuple2!54780) (t!360488 List!53168)) )
))
(declare-fun l!14304 () List!53168)

(declare-fun noDuplicateKeys!2110 (List!53168) Bool)

(assert (=> start!485096 (= res!2013104 (noDuplicateKeys!2110 l!14304))))

(assert (=> start!485096 e!2961931))

(declare-fun e!2961932 () Bool)

(assert (=> start!485096 e!2961932))

(declare-fun tp_is_empty!31733 () Bool)

(declare-fun tp_is_empty!31735 () Bool)

(assert (=> start!485096 (and tp_is_empty!31733 tp_is_empty!31735)))

(declare-datatypes ((ListMap!5469 0))(
  ( (ListMap!5470 (toList!6080 List!53168)) )
))
(declare-fun acc!1214 () ListMap!5469)

(declare-fun e!2961930 () Bool)

(declare-fun inv!68297 (ListMap!5469) Bool)

(assert (=> start!485096 (and (inv!68297 acc!1214) e!2961930)))

(declare-fun b!4748522 () Bool)

(declare-fun e!2961928 () Bool)

(assert (=> b!4748522 (= e!2961931 e!2961928)))

(declare-fun res!2013102 () Bool)

(assert (=> b!4748522 (=> (not res!2013102) (not e!2961928))))

(declare-fun lt!1911249 () List!53168)

(assert (=> b!4748522 (= res!2013102 (noDuplicateKeys!2110 lt!1911249))))

(declare-fun t!14174 () tuple2!54780)

(assert (=> b!4748522 (= lt!1911249 (Cons!53044 t!14174 l!14304))))

(declare-fun e!2961929 () Bool)

(declare-fun b!4748523 () Bool)

(declare-fun eq!1187 (ListMap!5469 ListMap!5469) Bool)

(declare-fun addToMapMapFromBucket!1536 (List!53168 ListMap!5469) ListMap!5469)

(declare-fun +!2346 (ListMap!5469 tuple2!54780) ListMap!5469)

(assert (=> b!4748523 (= e!2961929 (eq!1187 (addToMapMapFromBucket!1536 lt!1911249 acc!1214) (addToMapMapFromBucket!1536 l!14304 (+!2346 acc!1214 t!14174))))))

(declare-fun b!4748524 () Bool)

(assert (=> b!4748524 (= e!2961928 (not true))))

(assert (=> b!4748524 e!2961929))

(declare-fun res!2013103 () Bool)

(assert (=> b!4748524 (=> (not res!2013103) (not e!2961929))))

(declare-fun lt!1911251 () ListMap!5469)

(declare-fun lt!1911250 () ListMap!5469)

(assert (=> b!4748524 (= res!2013103 (eq!1187 lt!1911251 (+!2346 lt!1911250 t!14174)))))

(declare-fun lt!1911253 () ListMap!5469)

(assert (=> b!4748524 (= lt!1911251 (addToMapMapFromBucket!1536 (Cons!53044 t!14174 (t!360488 l!14304)) lt!1911253))))

(declare-datatypes ((Unit!134893 0))(
  ( (Unit!134894) )
))
(declare-fun lt!1911252 () Unit!134893)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!434 (tuple2!54780 List!53168 ListMap!5469) Unit!134893)

(assert (=> b!4748524 (= lt!1911252 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!434 t!14174 (t!360488 l!14304) lt!1911253))))

(assert (=> b!4748524 (= lt!1911250 (addToMapMapFromBucket!1536 (t!360488 l!14304) lt!1911253))))

(assert (=> b!4748524 (= lt!1911253 (+!2346 acc!1214 (h!59441 l!14304)))))

(declare-fun b!4748525 () Bool)

(declare-fun res!2013100 () Bool)

(assert (=> b!4748525 (=> (not res!2013100) (not e!2961928))))

(get-info :version)

(assert (=> b!4748525 (= res!2013100 (not ((_ is Nil!53044) l!14304)))))

(declare-fun b!4748526 () Bool)

(declare-fun tp!1349868 () Bool)

(assert (=> b!4748526 (= e!2961930 tp!1349868)))

(declare-fun b!4748527 () Bool)

(declare-fun res!2013101 () Bool)

(assert (=> b!4748527 (=> (not res!2013101) (not e!2961929))))

(assert (=> b!4748527 (= res!2013101 (eq!1187 lt!1911251 (addToMapMapFromBucket!1536 (t!360488 l!14304) (+!2346 lt!1911253 t!14174))))))

(declare-fun tp!1349869 () Bool)

(declare-fun b!4748528 () Bool)

(assert (=> b!4748528 (= e!2961932 (and tp_is_empty!31733 tp_is_empty!31735 tp!1349869))))

(declare-fun b!4748529 () Bool)

(declare-fun res!2013105 () Bool)

(assert (=> b!4748529 (=> (not res!2013105) (not e!2961929))))

(assert (=> b!4748529 (= res!2013105 (eq!1187 lt!1911250 (addToMapMapFromBucket!1536 l!14304 acc!1214)))))

(assert (= (and start!485096 res!2013104) b!4748522))

(assert (= (and b!4748522 res!2013102) b!4748525))

(assert (= (and b!4748525 res!2013100) b!4748524))

(assert (= (and b!4748524 res!2013103) b!4748529))

(assert (= (and b!4748529 res!2013105) b!4748527))

(assert (= (and b!4748527 res!2013101) b!4748523))

(assert (= (and start!485096 ((_ is Cons!53044) l!14304)) b!4748528))

(assert (= start!485096 b!4748526))

(declare-fun m!5707161 () Bool)

(assert (=> b!4748529 m!5707161))

(assert (=> b!4748529 m!5707161))

(declare-fun m!5707163 () Bool)

(assert (=> b!4748529 m!5707163))

(declare-fun m!5707165 () Bool)

(assert (=> start!485096 m!5707165))

(declare-fun m!5707167 () Bool)

(assert (=> start!485096 m!5707167))

(declare-fun m!5707169 () Bool)

(assert (=> b!4748527 m!5707169))

(assert (=> b!4748527 m!5707169))

(declare-fun m!5707171 () Bool)

(assert (=> b!4748527 m!5707171))

(assert (=> b!4748527 m!5707171))

(declare-fun m!5707173 () Bool)

(assert (=> b!4748527 m!5707173))

(declare-fun m!5707175 () Bool)

(assert (=> b!4748524 m!5707175))

(declare-fun m!5707177 () Bool)

(assert (=> b!4748524 m!5707177))

(declare-fun m!5707179 () Bool)

(assert (=> b!4748524 m!5707179))

(declare-fun m!5707181 () Bool)

(assert (=> b!4748524 m!5707181))

(declare-fun m!5707183 () Bool)

(assert (=> b!4748524 m!5707183))

(declare-fun m!5707185 () Bool)

(assert (=> b!4748524 m!5707185))

(assert (=> b!4748524 m!5707181))

(declare-fun m!5707187 () Bool)

(assert (=> b!4748522 m!5707187))

(declare-fun m!5707189 () Bool)

(assert (=> b!4748523 m!5707189))

(declare-fun m!5707191 () Bool)

(assert (=> b!4748523 m!5707191))

(assert (=> b!4748523 m!5707191))

(declare-fun m!5707193 () Bool)

(assert (=> b!4748523 m!5707193))

(assert (=> b!4748523 m!5707189))

(assert (=> b!4748523 m!5707193))

(declare-fun m!5707195 () Bool)

(assert (=> b!4748523 m!5707195))

(check-sat tp_is_empty!31735 (not b!4748523) (not b!4748529) (not b!4748522) (not b!4748527) (not b!4748526) (not b!4748528) (not b!4748524) (not start!485096) tp_is_empty!31733)
(check-sat)
