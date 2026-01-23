; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437260 () Bool)

(assert start!437260)

(declare-fun b!4459571 () Bool)

(declare-fun e!2776945 () Bool)

(declare-fun tp!1335559 () Bool)

(assert (=> b!4459571 (= e!2776945 tp!1335559)))

(declare-fun b!4459572 () Bool)

(declare-fun res!1849128 () Bool)

(declare-fun e!2776944 () Bool)

(assert (=> b!4459572 (=> (not res!1849128) (not e!2776944))))

(declare-datatypes ((K!11530 0))(
  ( (K!11531 (val!17495 Int)) )
))
(declare-datatypes ((V!11776 0))(
  ( (V!11777 (val!17496 Int)) )
))
(declare-datatypes ((tuple2!50304 0))(
  ( (tuple2!50305 (_1!28446 K!11530) (_2!28446 V!11776)) )
))
(declare-datatypes ((List!50263 0))(
  ( (Nil!50139) (Cons!50139 (h!55884 tuple2!50304) (t!357213 List!50263)) )
))
(declare-fun l!12755 () List!50263)

(declare-fun noDuplicateKeys!970 (List!50263) Bool)

(assert (=> b!4459572 (= res!1849128 (noDuplicateKeys!970 (t!357213 l!12755)))))

(declare-fun b!4459573 () Bool)

(declare-fun e!2776947 () Bool)

(assert (=> b!4459573 (= e!2776947 e!2776944)))

(declare-fun res!1849126 () Bool)

(assert (=> b!4459573 (=> (not res!1849126) (not e!2776944))))

(declare-fun key!4289 () K!11530)

(assert (=> b!4459573 (= res!1849126 (not (= (_1!28446 (h!55884 l!12755)) key!4289)))))

(declare-datatypes ((ListMap!3181 0))(
  ( (ListMap!3182 (toList!3942 List!50263)) )
))
(declare-fun lt!1650681 () ListMap!3181)

(declare-fun acc!957 () ListMap!3181)

(declare-fun +!1323 (ListMap!3181 tuple2!50304) ListMap!3181)

(assert (=> b!4459573 (= lt!1650681 (+!1323 acc!957 (h!55884 l!12755)))))

(declare-fun res!1849123 () Bool)

(assert (=> start!437260 (=> (not res!1849123) (not e!2776947))))

(assert (=> start!437260 (= res!1849123 (noDuplicateKeys!970 l!12755))))

(assert (=> start!437260 e!2776947))

(declare-fun e!2776946 () Bool)

(assert (=> start!437260 e!2776946))

(declare-fun tp_is_empty!27101 () Bool)

(assert (=> start!437260 tp_is_empty!27101))

(declare-fun inv!65714 (ListMap!3181) Bool)

(assert (=> start!437260 (and (inv!65714 acc!957) e!2776945)))

(declare-fun b!4459574 () Bool)

(declare-fun res!1849129 () Bool)

(assert (=> b!4459574 (=> (not res!1849129) (not e!2776947))))

(get-info :version)

(assert (=> b!4459574 (= res!1849129 ((_ is Cons!50139) l!12755))))

(declare-fun tp!1335558 () Bool)

(declare-fun b!4459575 () Bool)

(declare-fun tp_is_empty!27103 () Bool)

(assert (=> b!4459575 (= e!2776946 (and tp_is_empty!27101 tp_is_empty!27103 tp!1335558))))

(declare-fun b!4459576 () Bool)

(declare-fun res!1849127 () Bool)

(assert (=> b!4459576 (=> (not res!1849127) (not e!2776944))))

(declare-fun containsKey!1368 (List!50263 K!11530) Bool)

(assert (=> b!4459576 (= res!1849127 (not (containsKey!1368 (t!357213 l!12755) key!4289)))))

(declare-fun b!4459577 () Bool)

(declare-fun res!1849124 () Bool)

(assert (=> b!4459577 (=> (not res!1849124) (not e!2776947))))

(declare-fun contains!12635 (ListMap!3181 K!11530) Bool)

(declare-fun addToMapMapFromBucket!549 (List!50263 ListMap!3181) ListMap!3181)

(assert (=> b!4459577 (= res!1849124 (contains!12635 (addToMapMapFromBucket!549 l!12755 acc!957) key!4289))))

(declare-fun b!4459578 () Bool)

(assert (=> b!4459578 (= e!2776944 false)))

(declare-fun lt!1650682 () Bool)

(assert (=> b!4459578 (= lt!1650682 (contains!12635 (addToMapMapFromBucket!549 (t!357213 l!12755) lt!1650681) key!4289))))

(declare-fun b!4459579 () Bool)

(declare-fun res!1849125 () Bool)

(assert (=> b!4459579 (=> (not res!1849125) (not e!2776947))))

(assert (=> b!4459579 (= res!1849125 (not (containsKey!1368 l!12755 key!4289)))))

(assert (= (and start!437260 res!1849123) b!4459579))

(assert (= (and b!4459579 res!1849125) b!4459577))

(assert (= (and b!4459577 res!1849124) b!4459574))

(assert (= (and b!4459574 res!1849129) b!4459573))

(assert (= (and b!4459573 res!1849126) b!4459572))

(assert (= (and b!4459572 res!1849128) b!4459576))

(assert (= (and b!4459576 res!1849127) b!4459578))

(assert (= (and start!437260 ((_ is Cons!50139) l!12755)) b!4459575))

(assert (= start!437260 b!4459571))

(declare-fun m!5162517 () Bool)

(assert (=> b!4459579 m!5162517))

(declare-fun m!5162519 () Bool)

(assert (=> start!437260 m!5162519))

(declare-fun m!5162521 () Bool)

(assert (=> start!437260 m!5162521))

(declare-fun m!5162523 () Bool)

(assert (=> b!4459578 m!5162523))

(assert (=> b!4459578 m!5162523))

(declare-fun m!5162525 () Bool)

(assert (=> b!4459578 m!5162525))

(declare-fun m!5162527 () Bool)

(assert (=> b!4459577 m!5162527))

(assert (=> b!4459577 m!5162527))

(declare-fun m!5162529 () Bool)

(assert (=> b!4459577 m!5162529))

(declare-fun m!5162531 () Bool)

(assert (=> b!4459573 m!5162531))

(declare-fun m!5162533 () Bool)

(assert (=> b!4459576 m!5162533))

(declare-fun m!5162535 () Bool)

(assert (=> b!4459572 m!5162535))

(check-sat (not b!4459572) (not start!437260) (not b!4459576) (not b!4459575) (not b!4459579) (not b!4459573) (not b!4459578) (not b!4459577) (not b!4459571) tp_is_empty!27101 tp_is_empty!27103)
(check-sat)
