; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!485942 () Bool)

(assert start!485942)

(declare-fun b!4754402 () Bool)

(declare-fun e!2965929 () Bool)

(assert (=> b!4754402 (= e!2965929 (not true))))

(declare-fun e!2965931 () Bool)

(assert (=> b!4754402 e!2965931))

(declare-fun res!2016757 () Bool)

(assert (=> b!4754402 (=> (not res!2016757) (not e!2965931))))

(declare-datatypes ((K!14613 0))(
  ( (K!14614 (val!19961 Int)) )
))
(declare-datatypes ((V!14859 0))(
  ( (V!14860 (val!19962 Int)) )
))
(declare-datatypes ((tuple2!54930 0))(
  ( (tuple2!54931 (_1!30759 K!14613) (_2!30759 V!14859)) )
))
(declare-datatypes ((List!53249 0))(
  ( (Nil!53125) (Cons!53125 (h!59522 tuple2!54930) (t!360593 List!53249)) )
))
(declare-datatypes ((ListMap!5615 0))(
  ( (ListMap!5616 (toList!6153 List!53249)) )
))
(declare-fun lt!1920598 () ListMap!5615)

(declare-fun lt!1920596 () tuple2!54930)

(declare-fun l!13029 () List!53249)

(declare-fun lt!1920592 () ListMap!5615)

(declare-fun eq!1250 (ListMap!5615 ListMap!5615) Bool)

(declare-fun addToMapMapFromBucket!1599 (List!53249 ListMap!5615) ListMap!5615)

(declare-fun +!2419 (ListMap!5615 tuple2!54930) ListMap!5615)

(assert (=> b!4754402 (= res!2016757 (eq!1250 (addToMapMapFromBucket!1599 (t!360593 l!13029) lt!1920598) (+!2419 (addToMapMapFromBucket!1599 (t!360593 l!13029) lt!1920592) lt!1920596)))))

(declare-fun value!2966 () V!14859)

(declare-datatypes ((Unit!137138 0))(
  ( (Unit!137139) )
))
(declare-fun lt!1920597 () Unit!137138)

(declare-fun key!4572 () K!14613)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!261 (ListMap!5615 K!14613 V!14859 List!53249) Unit!137138)

(assert (=> b!4754402 (= lt!1920597 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!261 lt!1920592 key!4572 value!2966 (t!360593 l!13029)))))

(declare-fun lt!1920593 () ListMap!5615)

(assert (=> b!4754402 (eq!1250 lt!1920598 lt!1920593)))

(declare-fun lt!1920594 () ListMap!5615)

(assert (=> b!4754402 (= lt!1920593 (+!2419 lt!1920594 (h!59522 l!13029)))))

(declare-fun lhm!63 () ListMap!5615)

(assert (=> b!4754402 (= lt!1920594 (+!2419 lhm!63 lt!1920596))))

(assert (=> b!4754402 (= lt!1920598 (+!2419 lt!1920592 lt!1920596))))

(assert (=> b!4754402 (= lt!1920596 (tuple2!54931 key!4572 value!2966))))

(declare-fun lt!1920595 () Unit!137138)

(declare-fun addCommutativeForDiffKeys!51 (ListMap!5615 K!14613 V!14859 K!14613 V!14859) Unit!137138)

(assert (=> b!4754402 (= lt!1920595 (addCommutativeForDiffKeys!51 lhm!63 (_1!30759 (h!59522 l!13029)) (_2!30759 (h!59522 l!13029)) key!4572 value!2966))))

(assert (=> b!4754402 (= lt!1920592 (+!2419 lhm!63 (h!59522 l!13029)))))

(declare-fun b!4754403 () Bool)

(declare-fun e!2965932 () Bool)

(declare-fun tp!1350498 () Bool)

(assert (=> b!4754403 (= e!2965932 tp!1350498)))

(declare-fun b!4754404 () Bool)

(assert (=> b!4754404 (= e!2965931 (= (addToMapMapFromBucket!1599 l!13029 lt!1920594) (addToMapMapFromBucket!1599 (t!360593 l!13029) lt!1920593)))))

(declare-fun b!4754405 () Bool)

(declare-fun res!2016756 () Bool)

(assert (=> b!4754405 (=> (not res!2016756) (not e!2965929))))

(assert (=> b!4754405 (= res!2016756 (is-Cons!53125 l!13029))))

(declare-fun res!2016758 () Bool)

(assert (=> start!485942 (=> (not res!2016758) (not e!2965929))))

(declare-fun containsKey!3591 (List!53249 K!14613) Bool)

(assert (=> start!485942 (= res!2016758 (not (containsKey!3591 l!13029 key!4572)))))

(assert (=> start!485942 e!2965929))

(declare-fun e!2965930 () Bool)

(assert (=> start!485942 e!2965930))

(declare-fun tp_is_empty!32033 () Bool)

(assert (=> start!485942 tp_is_empty!32033))

(declare-fun tp_is_empty!32035 () Bool)

(assert (=> start!485942 tp_is_empty!32035))

(declare-fun inv!68484 (ListMap!5615) Bool)

(assert (=> start!485942 (and (inv!68484 lhm!63) e!2965932)))

(declare-fun tp!1350499 () Bool)

(declare-fun b!4754406 () Bool)

(assert (=> b!4754406 (= e!2965930 (and tp_is_empty!32033 tp_is_empty!32035 tp!1350499))))

(declare-fun b!4754407 () Bool)

(declare-fun res!2016759 () Bool)

(assert (=> b!4754407 (=> (not res!2016759) (not e!2965929))))

(declare-fun noDuplicateKeys!2185 (List!53249) Bool)

(assert (=> b!4754407 (= res!2016759 (noDuplicateKeys!2185 l!13029))))

(assert (= (and start!485942 res!2016758) b!4754407))

(assert (= (and b!4754407 res!2016759) b!4754405))

(assert (= (and b!4754405 res!2016756) b!4754402))

(assert (= (and b!4754402 res!2016757) b!4754404))

(assert (= (and start!485942 (is-Cons!53125 l!13029)) b!4754406))

(assert (= start!485942 b!4754403))

(declare-fun m!5722827 () Bool)

(assert (=> b!4754402 m!5722827))

(declare-fun m!5722829 () Bool)

(assert (=> b!4754402 m!5722829))

(declare-fun m!5722831 () Bool)

(assert (=> b!4754402 m!5722831))

(declare-fun m!5722833 () Bool)

(assert (=> b!4754402 m!5722833))

(declare-fun m!5722835 () Bool)

(assert (=> b!4754402 m!5722835))

(declare-fun m!5722837 () Bool)

(assert (=> b!4754402 m!5722837))

(assert (=> b!4754402 m!5722835))

(declare-fun m!5722839 () Bool)

(assert (=> b!4754402 m!5722839))

(declare-fun m!5722841 () Bool)

(assert (=> b!4754402 m!5722841))

(declare-fun m!5722843 () Bool)

(assert (=> b!4754402 m!5722843))

(declare-fun m!5722845 () Bool)

(assert (=> b!4754402 m!5722845))

(declare-fun m!5722847 () Bool)

(assert (=> b!4754402 m!5722847))

(assert (=> b!4754402 m!5722847))

(assert (=> b!4754402 m!5722839))

(declare-fun m!5722849 () Bool)

(assert (=> b!4754404 m!5722849))

(declare-fun m!5722851 () Bool)

(assert (=> b!4754404 m!5722851))

(declare-fun m!5722853 () Bool)

(assert (=> start!485942 m!5722853))

(declare-fun m!5722855 () Bool)

(assert (=> start!485942 m!5722855))

(declare-fun m!5722857 () Bool)

(assert (=> b!4754407 m!5722857))

(push 1)

(assert (not b!4754406))

(assert tp_is_empty!32035)

(assert tp_is_empty!32033)

(assert (not start!485942))

(assert (not b!4754403))

(assert (not b!4754402))

(assert (not b!4754404))

(assert (not b!4754407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

