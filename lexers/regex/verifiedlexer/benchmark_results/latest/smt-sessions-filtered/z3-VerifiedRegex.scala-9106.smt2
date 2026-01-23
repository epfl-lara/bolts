; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486938 () Bool)

(assert start!486938)

(declare-fun b_free!129409 () Bool)

(declare-fun b_next!130113 () Bool)

(assert (=> start!486938 (= b_free!129409 (not b_next!130113))))

(declare-fun tp!1354063 () Bool)

(declare-fun b_and!341037 () Bool)

(assert (=> start!486938 (= tp!1354063 b_and!341037)))

(declare-fun b!4761477 () Bool)

(declare-fun b_free!129411 () Bool)

(declare-fun b_next!130115 () Bool)

(assert (=> b!4761477 (= b_free!129411 (not b_next!130115))))

(declare-fun tp!1354065 () Bool)

(declare-fun b_and!341039 () Bool)

(assert (=> b!4761477 (= tp!1354065 b_and!341039)))

(declare-fun b!4761478 () Bool)

(declare-fun b_free!129413 () Bool)

(declare-fun b_next!130117 () Bool)

(assert (=> b!4761478 (= b_free!129413 (not b_next!130117))))

(declare-fun tp!1354067 () Bool)

(declare-fun b_and!341041 () Bool)

(assert (=> b!4761478 (= tp!1354067 b_and!341041)))

(declare-fun b!4761470 () Bool)

(declare-fun e!2971376 () Bool)

(declare-fun e!2971379 () Bool)

(declare-datatypes ((array!17772 0))(
  ( (array!17773 (arr!7927 (Array (_ BitVec 32) (_ BitVec 64))) (size!36154 (_ BitVec 32))) )
))
(declare-datatypes ((K!14819 0))(
  ( (K!14820 (val!20161 Int)) )
))
(declare-datatypes ((V!15065 0))(
  ( (V!15066 (val!20162 Int)) )
))
(declare-datatypes ((tuple2!55346 0))(
  ( (tuple2!55347 (_1!30967 K!14819) (_2!30967 V!15065)) )
))
(declare-datatypes ((List!53515 0))(
  ( (Nil!53391) (Cons!53391 (h!59802 tuple2!55346) (t!360877 List!53515)) )
))
(declare-datatypes ((array!17774 0))(
  ( (array!17775 (arr!7928 (Array (_ BitVec 32) List!53515)) (size!36155 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9742 0))(
  ( (LongMapFixedSize!9743 (defaultEntry!5285 Int) (mask!14592 (_ BitVec 32)) (extraKeys!5141 (_ BitVec 32)) (zeroValue!5154 List!53515) (minValue!5154 List!53515) (_size!9767 (_ BitVec 32)) (_keys!5206 array!17772) (_values!5179 array!17774) (_vacant!4936 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19249 0))(
  ( (Cell!19250 (v!47442 LongMapFixedSize!9742)) )
))
(declare-datatypes ((MutLongMap!4871 0))(
  ( (LongMap!4871 (underlying!9949 Cell!19249)) (MutLongMapExt!4870 (__x!32361 Int)) )
))
(declare-fun lt!1925283 () MutLongMap!4871)

(get-info :version)

(assert (=> b!4761470 (= e!2971376 (and e!2971379 ((_ is LongMap!4871) lt!1925283)))))

(declare-datatypes ((Cell!19251 0))(
  ( (Cell!19252 (v!47443 MutLongMap!4871)) )
))
(declare-datatypes ((Hashable!6532 0))(
  ( (HashableExt!6531 (__x!32362 Int)) )
))
(declare-datatypes ((MutableMap!4755 0))(
  ( (MutableMapExt!4754 (__x!32363 Int)) (HashMap!4755 (underlying!9950 Cell!19251) (hashF!12342 Hashable!6532) (_size!9768 (_ BitVec 32)) (defaultValue!4926 Int)) )
))
(declare-fun hm!63 () MutableMap!4755)

(assert (=> b!4761470 (= lt!1925283 (v!47443 (underlying!9950 hm!63)))))

(declare-fun b!4761471 () Bool)

(declare-fun e!2971382 () Bool)

(assert (=> b!4761471 (= e!2971379 e!2971382)))

(declare-fun b!4761473 () Bool)

(declare-fun e!2971377 () Bool)

(declare-fun tp!1354064 () Bool)

(declare-fun mapRes!21647 () Bool)

(assert (=> b!4761473 (= e!2971377 (and tp!1354064 mapRes!21647))))

(declare-fun condMapEmpty!21647 () Bool)

(declare-fun mapDefault!21647 () List!53515)

(assert (=> b!4761473 (= condMapEmpty!21647 (= (arr!7928 (_values!5179 (v!47442 (underlying!9949 (v!47443 (underlying!9950 hm!63)))))) ((as const (Array (_ BitVec 32) List!53515)) mapDefault!21647)))))

(declare-fun b!4761474 () Bool)

(declare-fun res!2019404 () Bool)

(declare-fun e!2971378 () Bool)

(assert (=> b!4761474 (=> (not res!2019404) (not e!2971378))))

(declare-fun k0!1662 () K!14819)

(declare-fun contains!16692 (MutableMap!4755 K!14819) Bool)

(assert (=> b!4761474 (= res!2019404 (contains!16692 hm!63 k0!1662))))

(declare-fun b!4761475 () Bool)

(declare-fun e!2971375 () Bool)

(assert (=> b!4761475 (= e!2971382 e!2971375)))

(declare-fun b!4761476 () Bool)

(declare-fun res!2019403 () Bool)

(declare-fun e!2971374 () Bool)

(assert (=> b!4761476 (=> (not res!2019403) (not e!2971374))))

(declare-fun valid!3865 (MutableMap!4755) Bool)

(assert (=> b!4761476 (= res!2019403 (valid!3865 hm!63))))

(declare-fun mapIsEmpty!21647 () Bool)

(assert (=> mapIsEmpty!21647 mapRes!21647))

(declare-fun tp!1354061 () Bool)

(declare-fun tp!1354060 () Bool)

(declare-fun array_inv!5705 (array!17772) Bool)

(declare-fun array_inv!5706 (array!17774) Bool)

(assert (=> b!4761477 (= e!2971375 (and tp!1354065 tp!1354060 tp!1354061 (array_inv!5705 (_keys!5206 (v!47442 (underlying!9949 (v!47443 (underlying!9950 hm!63)))))) (array_inv!5706 (_values!5179 (v!47442 (underlying!9949 (v!47443 (underlying!9950 hm!63)))))) e!2971377))))

(declare-fun e!2971381 () Bool)

(assert (=> b!4761478 (= e!2971381 (and e!2971376 tp!1354067))))

(declare-fun mapNonEmpty!21647 () Bool)

(declare-fun tp!1354066 () Bool)

(declare-fun tp!1354062 () Bool)

(assert (=> mapNonEmpty!21647 (= mapRes!21647 (and tp!1354066 tp!1354062))))

(declare-fun mapKey!21647 () (_ BitVec 32))

(declare-fun mapValue!21647 () List!53515)

(declare-fun mapRest!21647 () (Array (_ BitVec 32) List!53515))

(assert (=> mapNonEmpty!21647 (= (arr!7928 (_values!5179 (v!47442 (underlying!9949 (v!47443 (underlying!9950 hm!63)))))) (store mapRest!21647 mapKey!21647 mapValue!21647))))

(declare-fun b!4761479 () Bool)

(assert (=> b!4761479 (= e!2971378 (not true))))

(declare-datatypes ((ListMap!5729 0))(
  ( (ListMap!5730 (toList!6225 List!53515)) )
))
(declare-fun lt!1925281 () ListMap!5729)

(declare-fun lt!1925282 () V!15065)

(declare-fun contains!16693 (List!53515 tuple2!55346) Bool)

(assert (=> b!4761479 (contains!16693 (toList!6225 lt!1925281) (tuple2!55347 k0!1662 lt!1925282))))

(declare-datatypes ((Unit!137854 0))(
  ( (Unit!137855) )
))
(declare-fun lt!1925280 () Unit!137854)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!902 (List!53515 K!14819 V!15065) Unit!137854)

(assert (=> b!4761479 (= lt!1925280 (lemmaGetValueByKeyImpliesContainsTuple!902 (toList!6225 lt!1925281) k0!1662 lt!1925282))))

(declare-fun apply!12551 (MutableMap!4755 K!14819) V!15065)

(assert (=> b!4761479 (= lt!1925282 (apply!12551 hm!63 k0!1662))))

(declare-fun res!2019401 () Bool)

(assert (=> start!486938 (=> (not res!2019401) (not e!2971374))))

(assert (=> start!486938 (= res!2019401 ((_ is HashMap!4755) hm!63))))

(assert (=> start!486938 e!2971374))

(assert (=> start!486938 e!2971381))

(assert (=> start!486938 tp!1354063))

(declare-fun tp_is_empty!32307 () Bool)

(assert (=> start!486938 tp_is_empty!32307))

(declare-fun b!4761472 () Bool)

(assert (=> b!4761472 (= e!2971374 e!2971378)))

(declare-fun res!2019402 () Bool)

(assert (=> b!4761472 (=> (not res!2019402) (not e!2971378))))

(declare-fun p!6026 () Int)

(declare-fun forall!11847 (List!53515 Int) Bool)

(assert (=> b!4761472 (= res!2019402 (forall!11847 (toList!6225 lt!1925281) p!6026))))

(declare-fun map!11890 (MutableMap!4755) ListMap!5729)

(assert (=> b!4761472 (= lt!1925281 (map!11890 hm!63))))

(assert (= (and start!486938 res!2019401) b!4761476))

(assert (= (and b!4761476 res!2019403) b!4761472))

(assert (= (and b!4761472 res!2019402) b!4761474))

(assert (= (and b!4761474 res!2019404) b!4761479))

(assert (= (and b!4761473 condMapEmpty!21647) mapIsEmpty!21647))

(assert (= (and b!4761473 (not condMapEmpty!21647)) mapNonEmpty!21647))

(assert (= b!4761477 b!4761473))

(assert (= b!4761475 b!4761477))

(assert (= b!4761471 b!4761475))

(assert (= (and b!4761470 ((_ is LongMap!4871) (v!47443 (underlying!9950 hm!63)))) b!4761471))

(assert (= b!4761478 b!4761470))

(assert (= (and start!486938 ((_ is HashMap!4755) hm!63)) b!4761478))

(declare-fun m!5730566 () Bool)

(assert (=> b!4761472 m!5730566))

(declare-fun m!5730568 () Bool)

(assert (=> b!4761472 m!5730568))

(declare-fun m!5730570 () Bool)

(assert (=> b!4761474 m!5730570))

(declare-fun m!5730572 () Bool)

(assert (=> b!4761479 m!5730572))

(declare-fun m!5730574 () Bool)

(assert (=> b!4761479 m!5730574))

(declare-fun m!5730576 () Bool)

(assert (=> b!4761479 m!5730576))

(declare-fun m!5730578 () Bool)

(assert (=> mapNonEmpty!21647 m!5730578))

(declare-fun m!5730580 () Bool)

(assert (=> b!4761476 m!5730580))

(declare-fun m!5730582 () Bool)

(assert (=> b!4761477 m!5730582))

(declare-fun m!5730584 () Bool)

(assert (=> b!4761477 m!5730584))

(check-sat (not b_next!130113) (not b!4761477) (not b!4761479) b_and!341041 tp_is_empty!32307 (not b!4761472) b_and!341039 (not b_next!130115) (not b!4761474) (not b!4761473) b_and!341037 (not b!4761476) (not b_next!130117) (not mapNonEmpty!21647))
(check-sat (not b_next!130113) b_and!341041 b_and!341037 b_and!341039 (not b_next!130115) (not b_next!130117))
