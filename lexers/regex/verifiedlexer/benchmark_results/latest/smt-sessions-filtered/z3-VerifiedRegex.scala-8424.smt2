; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437256 () Bool)

(assert start!437256)

(declare-fun res!1849087 () Bool)

(declare-fun e!2776923 () Bool)

(assert (=> start!437256 (=> (not res!1849087) (not e!2776923))))

(declare-datatypes ((K!11525 0))(
  ( (K!11526 (val!17491 Int)) )
))
(declare-datatypes ((V!11771 0))(
  ( (V!11772 (val!17492 Int)) )
))
(declare-datatypes ((tuple2!50300 0))(
  ( (tuple2!50301 (_1!28444 K!11525) (_2!28444 V!11771)) )
))
(declare-datatypes ((List!50261 0))(
  ( (Nil!50137) (Cons!50137 (h!55882 tuple2!50300) (t!357211 List!50261)) )
))
(declare-fun l!12755 () List!50261)

(declare-fun noDuplicateKeys!968 (List!50261) Bool)

(assert (=> start!437256 (= res!1849087 (noDuplicateKeys!968 l!12755))))

(assert (=> start!437256 e!2776923))

(declare-fun e!2776922 () Bool)

(assert (=> start!437256 e!2776922))

(declare-fun tp_is_empty!27093 () Bool)

(assert (=> start!437256 tp_is_empty!27093))

(declare-fun b!4459524 () Bool)

(assert (=> b!4459524 (= e!2776923 false)))

(declare-fun lt!1650670 () Bool)

(declare-fun key!4289 () K!11525)

(declare-fun containsKey!1366 (List!50261 K!11525) Bool)

(assert (=> b!4459524 (= lt!1650670 (containsKey!1366 l!12755 key!4289))))

(declare-fun tp_is_empty!27095 () Bool)

(declare-fun tp!1335547 () Bool)

(declare-fun b!4459525 () Bool)

(assert (=> b!4459525 (= e!2776922 (and tp_is_empty!27093 tp_is_empty!27095 tp!1335547))))

(assert (= (and start!437256 res!1849087) b!4459524))

(get-info :version)

(assert (= (and start!437256 ((_ is Cons!50137) l!12755)) b!4459525))

(declare-fun m!5162493 () Bool)

(assert (=> start!437256 m!5162493))

(declare-fun m!5162495 () Bool)

(assert (=> b!4459524 m!5162495))

(check-sat tp_is_empty!27095 (not start!437256) (not b!4459524) tp_is_empty!27093 (not b!4459525))
(check-sat)
