; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!485762 () Bool)

(assert start!485762)

(declare-fun b!4753628 () Bool)

(declare-fun res!2016224 () Bool)

(declare-fun e!2965418 () Bool)

(assert (=> b!4753628 (=> (not res!2016224) (not e!2965418))))

(declare-datatypes ((K!14568 0))(
  ( (K!14569 (val!19925 Int)) )
))
(declare-datatypes ((V!14814 0))(
  ( (V!14815 (val!19926 Int)) )
))
(declare-datatypes ((tuple2!54894 0))(
  ( (tuple2!54895 (_1!30741 K!14568) (_2!30741 V!14814)) )
))
(declare-datatypes ((List!53231 0))(
  ( (Nil!53107) (Cons!53107 (h!59504 tuple2!54894) (t!360575 List!53231)) )
))
(declare-fun l!13029 () List!53231)

(assert (=> b!4753628 (= res!2016224 (is-Cons!53107 l!13029))))

(declare-fun b!4753629 () Bool)

(declare-datatypes ((ListMap!5579 0))(
  ( (ListMap!5580 (toList!6135 List!53231)) )
))
(declare-fun lt!1919473 () ListMap!5579)

(declare-fun lt!1919466 () ListMap!5579)

(declare-fun e!2965420 () Bool)

(declare-fun addToMapMapFromBucket!1589 (List!53231 ListMap!5579) ListMap!5579)

(assert (=> b!4753629 (= e!2965420 (= (addToMapMapFromBucket!1589 l!13029 lt!1919466) (addToMapMapFromBucket!1589 (t!360575 l!13029) lt!1919473)))))

(declare-fun b!4753631 () Bool)

(declare-fun e!2965417 () Bool)

(assert (=> b!4753631 (= e!2965417 true)))

(declare-fun lt!1919470 () Bool)

(declare-fun lt!1919468 () ListMap!5579)

(declare-fun eq!1236 (ListMap!5579 ListMap!5579) Bool)

(assert (=> b!4753631 (= lt!1919470 (eq!1236 lt!1919473 lt!1919468))))

(declare-fun b!4753632 () Bool)

(assert (=> b!4753632 (= e!2965418 (not e!2965417))))

(declare-fun res!2016225 () Bool)

(assert (=> b!4753632 (=> res!2016225 e!2965417)))

(declare-fun noDuplicateKeys!2167 (List!53231) Bool)

(assert (=> b!4753632 (= res!2016225 (not (noDuplicateKeys!2167 (t!360575 l!13029))))))

(assert (=> b!4753632 e!2965420))

(declare-fun res!2016223 () Bool)

(assert (=> b!4753632 (=> (not res!2016223) (not e!2965420))))

(declare-fun lt!1919467 () tuple2!54894)

(declare-fun lt!1919471 () ListMap!5579)

(declare-fun +!2401 (ListMap!5579 tuple2!54894) ListMap!5579)

(assert (=> b!4753632 (= res!2016223 (eq!1236 (addToMapMapFromBucket!1589 (t!360575 l!13029) lt!1919468) (+!2401 (addToMapMapFromBucket!1589 (t!360575 l!13029) lt!1919471) lt!1919467)))))

(declare-datatypes ((Unit!136934 0))(
  ( (Unit!136935) )
))
(declare-fun lt!1919469 () Unit!136934)

(declare-fun value!2966 () V!14814)

(declare-fun key!4572 () K!14568)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!253 (ListMap!5579 K!14568 V!14814 List!53231) Unit!136934)

(assert (=> b!4753632 (= lt!1919469 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!253 lt!1919471 key!4572 value!2966 (t!360575 l!13029)))))

(assert (=> b!4753632 (eq!1236 lt!1919468 lt!1919473)))

(assert (=> b!4753632 (= lt!1919473 (+!2401 lt!1919466 (h!59504 l!13029)))))

(declare-fun lhm!63 () ListMap!5579)

(assert (=> b!4753632 (= lt!1919466 (+!2401 lhm!63 lt!1919467))))

(assert (=> b!4753632 (= lt!1919468 (+!2401 lt!1919471 lt!1919467))))

(assert (=> b!4753632 (= lt!1919467 (tuple2!54895 key!4572 value!2966))))

(declare-fun lt!1919472 () Unit!136934)

(declare-fun addCommutativeForDiffKeys!37 (ListMap!5579 K!14568 V!14814 K!14568 V!14814) Unit!136934)

(assert (=> b!4753632 (= lt!1919472 (addCommutativeForDiffKeys!37 lhm!63 (_1!30741 (h!59504 l!13029)) (_2!30741 (h!59504 l!13029)) key!4572 value!2966))))

(assert (=> b!4753632 (= lt!1919471 (+!2401 lhm!63 (h!59504 l!13029)))))

(declare-fun b!4753633 () Bool)

(declare-fun e!2965419 () Bool)

(declare-fun tp!1350351 () Bool)

(assert (=> b!4753633 (= e!2965419 tp!1350351)))

(declare-fun b!4753634 () Bool)

(declare-fun res!2016222 () Bool)

(assert (=> b!4753634 (=> (not res!2016222) (not e!2965418))))

(assert (=> b!4753634 (= res!2016222 (noDuplicateKeys!2167 l!13029))))

(declare-fun res!2016226 () Bool)

(assert (=> start!485762 (=> (not res!2016226) (not e!2965418))))

(declare-fun containsKey!3573 (List!53231 K!14568) Bool)

(assert (=> start!485762 (= res!2016226 (not (containsKey!3573 l!13029 key!4572)))))

(assert (=> start!485762 e!2965418))

(declare-fun e!2965421 () Bool)

(assert (=> start!485762 e!2965421))

(declare-fun tp_is_empty!31961 () Bool)

(assert (=> start!485762 tp_is_empty!31961))

(declare-fun tp_is_empty!31963 () Bool)

(assert (=> start!485762 tp_is_empty!31963))

(declare-fun inv!68439 (ListMap!5579) Bool)

(assert (=> start!485762 (and (inv!68439 lhm!63) e!2965419)))

(declare-fun b!4753630 () Bool)

(declare-fun tp!1350350 () Bool)

(assert (=> b!4753630 (= e!2965421 (and tp_is_empty!31961 tp_is_empty!31963 tp!1350350))))

(assert (= (and start!485762 res!2016226) b!4753634))

(assert (= (and b!4753634 res!2016222) b!4753628))

(assert (= (and b!4753628 res!2016224) b!4753632))

(assert (= (and b!4753632 res!2016223) b!4753629))

(assert (= (and b!4753632 (not res!2016225)) b!4753631))

(assert (= (and start!485762 (is-Cons!53107 l!13029)) b!4753630))

(assert (= start!485762 b!4753633))

(declare-fun m!5720999 () Bool)

(assert (=> b!4753631 m!5720999))

(declare-fun m!5721001 () Bool)

(assert (=> b!4753632 m!5721001))

(declare-fun m!5721003 () Bool)

(assert (=> b!4753632 m!5721003))

(declare-fun m!5721005 () Bool)

(assert (=> b!4753632 m!5721005))

(declare-fun m!5721007 () Bool)

(assert (=> b!4753632 m!5721007))

(declare-fun m!5721009 () Bool)

(assert (=> b!4753632 m!5721009))

(declare-fun m!5721011 () Bool)

(assert (=> b!4753632 m!5721011))

(declare-fun m!5721013 () Bool)

(assert (=> b!4753632 m!5721013))

(declare-fun m!5721015 () Bool)

(assert (=> b!4753632 m!5721015))

(declare-fun m!5721017 () Bool)

(assert (=> b!4753632 m!5721017))

(assert (=> b!4753632 m!5721011))

(declare-fun m!5721019 () Bool)

(assert (=> b!4753632 m!5721019))

(assert (=> b!4753632 m!5721001))

(assert (=> b!4753632 m!5721013))

(declare-fun m!5721021 () Bool)

(assert (=> b!4753632 m!5721021))

(declare-fun m!5721023 () Bool)

(assert (=> b!4753632 m!5721023))

(declare-fun m!5721025 () Bool)

(assert (=> start!485762 m!5721025))

(declare-fun m!5721027 () Bool)

(assert (=> start!485762 m!5721027))

(declare-fun m!5721029 () Bool)

(assert (=> b!4753629 m!5721029))

(declare-fun m!5721031 () Bool)

(assert (=> b!4753629 m!5721031))

(declare-fun m!5721033 () Bool)

(assert (=> b!4753634 m!5721033))

(push 1)

(assert tp_is_empty!31961)

(assert tp_is_empty!31963)

(assert (not b!4753629))

(assert (not b!4753633))

(assert (not b!4753632))

(assert (not b!4753630))

(assert (not start!485762))

(assert (not b!4753631))

(assert (not b!4753634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

