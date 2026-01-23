; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486942 () Bool)

(assert start!486942)

(declare-fun b_free!129421 () Bool)

(declare-fun b_next!130125 () Bool)

(assert (=> start!486942 (= b_free!129421 (not b_next!130125))))

(declare-fun tp!1354110 () Bool)

(declare-fun b_and!341049 () Bool)

(assert (=> start!486942 (= tp!1354110 b_and!341049)))

(declare-fun b!4761533 () Bool)

(declare-fun b_free!129423 () Bool)

(declare-fun b_next!130127 () Bool)

(assert (=> b!4761533 (= b_free!129423 (not b_next!130127))))

(declare-fun tp!1354112 () Bool)

(declare-fun b_and!341051 () Bool)

(assert (=> b!4761533 (= tp!1354112 b_and!341051)))

(declare-fun b!4761535 () Bool)

(declare-fun b_free!129425 () Bool)

(declare-fun b_next!130129 () Bool)

(assert (=> b!4761535 (= b_free!129425 (not b_next!130129))))

(declare-fun tp!1354115 () Bool)

(declare-fun b_and!341053 () Bool)

(assert (=> b!4761535 (= tp!1354115 b_and!341053)))

(declare-fun b!4761530 () Bool)

(declare-fun e!2971428 () Bool)

(declare-fun e!2971430 () Bool)

(assert (=> b!4761530 (= e!2971428 e!2971430)))

(declare-fun b!4761531 () Bool)

(declare-fun res!2019428 () Bool)

(declare-fun e!2971431 () Bool)

(assert (=> b!4761531 (=> (not res!2019428) (not e!2971431))))

(declare-datatypes ((array!17780 0))(
  ( (array!17781 (arr!7931 (Array (_ BitVec 32) (_ BitVec 64))) (size!36158 (_ BitVec 32))) )
))
(declare-datatypes ((K!14824 0))(
  ( (K!14825 (val!20165 Int)) )
))
(declare-datatypes ((V!15070 0))(
  ( (V!15071 (val!20166 Int)) )
))
(declare-datatypes ((tuple2!55350 0))(
  ( (tuple2!55351 (_1!30969 K!14824) (_2!30969 V!15070)) )
))
(declare-datatypes ((List!53517 0))(
  ( (Nil!53393) (Cons!53393 (h!59804 tuple2!55350) (t!360879 List!53517)) )
))
(declare-datatypes ((array!17782 0))(
  ( (array!17783 (arr!7932 (Array (_ BitVec 32) List!53517)) (size!36159 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9746 0))(
  ( (LongMapFixedSize!9747 (defaultEntry!5287 Int) (mask!14595 (_ BitVec 32)) (extraKeys!5143 (_ BitVec 32)) (zeroValue!5156 List!53517) (minValue!5156 List!53517) (_size!9771 (_ BitVec 32)) (_keys!5208 array!17780) (_values!5181 array!17782) (_vacant!4938 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19257 0))(
  ( (Cell!19258 (v!47446 LongMapFixedSize!9746)) )
))
(declare-datatypes ((MutLongMap!4873 0))(
  ( (LongMap!4873 (underlying!9953 Cell!19257)) (MutLongMapExt!4872 (__x!32367 Int)) )
))
(declare-datatypes ((Cell!19259 0))(
  ( (Cell!19260 (v!47447 MutLongMap!4873)) )
))
(declare-datatypes ((Hashable!6534 0))(
  ( (HashableExt!6533 (__x!32368 Int)) )
))
(declare-datatypes ((MutableMap!4757 0))(
  ( (MutableMapExt!4756 (__x!32369 Int)) (HashMap!4757 (underlying!9954 Cell!19259) (hashF!12344 Hashable!6534) (_size!9772 (_ BitVec 32)) (defaultValue!4928 Int)) )
))
(declare-fun hm!63 () MutableMap!4757)

(declare-fun k0!1662 () K!14824)

(declare-fun contains!16695 (MutableMap!4757 K!14824) Bool)

(assert (=> b!4761531 (= res!2019428 (contains!16695 hm!63 k0!1662))))

(declare-fun b!4761532 () Bool)

(declare-fun e!2971432 () Bool)

(assert (=> b!4761532 (= e!2971432 e!2971431)))

(declare-fun res!2019426 () Bool)

(assert (=> b!4761532 (=> (not res!2019426) (not e!2971431))))

(declare-datatypes ((ListMap!5733 0))(
  ( (ListMap!5734 (toList!6227 List!53517)) )
))
(declare-fun lt!1925319 () ListMap!5733)

(declare-fun p!6026 () Int)

(declare-fun forall!11848 (List!53517 Int) Bool)

(assert (=> b!4761532 (= res!2019426 (forall!11848 (toList!6227 lt!1925319) p!6026))))

(declare-fun map!11892 (MutableMap!4757) ListMap!5733)

(assert (=> b!4761532 (= lt!1925319 (map!11892 hm!63))))

(declare-fun e!2971436 () Bool)

(declare-fun e!2971435 () Bool)

(assert (=> b!4761533 (= e!2971436 (and e!2971435 tp!1354112))))

(declare-fun b!4761534 () Bool)

(declare-fun e!2971433 () Bool)

(declare-fun tp!1354114 () Bool)

(declare-fun mapRes!21653 () Bool)

(assert (=> b!4761534 (= e!2971433 (and tp!1354114 mapRes!21653))))

(declare-fun condMapEmpty!21653 () Bool)

(declare-fun mapDefault!21653 () List!53517)

(assert (=> b!4761534 (= condMapEmpty!21653 (= (arr!7932 (_values!5181 (v!47446 (underlying!9953 (v!47447 (underlying!9954 hm!63)))))) ((as const (Array (_ BitVec 32) List!53517)) mapDefault!21653)))))

(declare-fun mapNonEmpty!21653 () Bool)

(declare-fun tp!1354109 () Bool)

(declare-fun tp!1354113 () Bool)

(assert (=> mapNonEmpty!21653 (= mapRes!21653 (and tp!1354109 tp!1354113))))

(declare-fun mapRest!21653 () (Array (_ BitVec 32) List!53517))

(declare-fun mapValue!21653 () List!53517)

(declare-fun mapKey!21653 () (_ BitVec 32))

(assert (=> mapNonEmpty!21653 (= (arr!7932 (_values!5181 (v!47446 (underlying!9953 (v!47447 (underlying!9954 hm!63)))))) (store mapRest!21653 mapKey!21653 mapValue!21653))))

(declare-fun e!2971434 () Bool)

(declare-fun tp!1354108 () Bool)

(declare-fun tp!1354111 () Bool)

(declare-fun array_inv!5709 (array!17780) Bool)

(declare-fun array_inv!5710 (array!17782) Bool)

(assert (=> b!4761535 (= e!2971434 (and tp!1354115 tp!1354108 tp!1354111 (array_inv!5709 (_keys!5208 (v!47446 (underlying!9953 (v!47447 (underlying!9954 hm!63)))))) (array_inv!5710 (_values!5181 (v!47446 (underlying!9953 (v!47447 (underlying!9954 hm!63)))))) e!2971433))))

(declare-fun b!4761536 () Bool)

(assert (=> b!4761536 (= e!2971430 e!2971434)))

(declare-fun res!2019427 () Bool)

(assert (=> start!486942 (=> (not res!2019427) (not e!2971432))))

(get-info :version)

(assert (=> start!486942 (= res!2019427 ((_ is HashMap!4757) hm!63))))

(assert (=> start!486942 e!2971432))

(assert (=> start!486942 e!2971436))

(assert (=> start!486942 tp!1354110))

(declare-fun tp_is_empty!32311 () Bool)

(assert (=> start!486942 tp_is_empty!32311))

(declare-fun b!4761537 () Bool)

(declare-fun lt!1925314 () MutLongMap!4873)

(assert (=> b!4761537 (= e!2971435 (and e!2971428 ((_ is LongMap!4873) lt!1925314)))))

(assert (=> b!4761537 (= lt!1925314 (v!47447 (underlying!9954 hm!63)))))

(declare-fun mapIsEmpty!21653 () Bool)

(assert (=> mapIsEmpty!21653 mapRes!21653))

(declare-fun b!4761538 () Bool)

(assert (=> b!4761538 (= e!2971431 (not true))))

(declare-datatypes ((Unit!137858 0))(
  ( (Unit!137859) )
))
(declare-fun lt!1925315 () Unit!137858)

(declare-fun lt!1925318 () tuple2!55350)

(declare-fun forallContained!3834 (List!53517 Int tuple2!55350) Unit!137858)

(assert (=> b!4761538 (= lt!1925315 (forallContained!3834 (toList!6227 lt!1925319) p!6026 lt!1925318))))

(declare-fun contains!16696 (List!53517 tuple2!55350) Bool)

(assert (=> b!4761538 (contains!16696 (toList!6227 lt!1925319) lt!1925318)))

(declare-fun lt!1925316 () V!15070)

(assert (=> b!4761538 (= lt!1925318 (tuple2!55351 k0!1662 lt!1925316))))

(declare-fun lt!1925317 () Unit!137858)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!904 (List!53517 K!14824 V!15070) Unit!137858)

(assert (=> b!4761538 (= lt!1925317 (lemmaGetValueByKeyImpliesContainsTuple!904 (toList!6227 lt!1925319) k0!1662 lt!1925316))))

(declare-fun apply!12553 (MutableMap!4757 K!14824) V!15070)

(assert (=> b!4761538 (= lt!1925316 (apply!12553 hm!63 k0!1662))))

(declare-fun b!4761539 () Bool)

(declare-fun res!2019425 () Bool)

(assert (=> b!4761539 (=> (not res!2019425) (not e!2971432))))

(declare-fun valid!3866 (MutableMap!4757) Bool)

(assert (=> b!4761539 (= res!2019425 (valid!3866 hm!63))))

(assert (= (and start!486942 res!2019427) b!4761539))

(assert (= (and b!4761539 res!2019425) b!4761532))

(assert (= (and b!4761532 res!2019426) b!4761531))

(assert (= (and b!4761531 res!2019428) b!4761538))

(assert (= (and b!4761534 condMapEmpty!21653) mapIsEmpty!21653))

(assert (= (and b!4761534 (not condMapEmpty!21653)) mapNonEmpty!21653))

(assert (= b!4761535 b!4761534))

(assert (= b!4761536 b!4761535))

(assert (= b!4761530 b!4761536))

(assert (= (and b!4761537 ((_ is LongMap!4873) (v!47447 (underlying!9954 hm!63)))) b!4761530))

(assert (= b!4761533 b!4761537))

(assert (= (and start!486942 ((_ is HashMap!4757) hm!63)) b!4761533))

(declare-fun m!5730608 () Bool)

(assert (=> b!4761535 m!5730608))

(declare-fun m!5730610 () Bool)

(assert (=> b!4761535 m!5730610))

(declare-fun m!5730612 () Bool)

(assert (=> b!4761539 m!5730612))

(declare-fun m!5730614 () Bool)

(assert (=> b!4761538 m!5730614))

(declare-fun m!5730616 () Bool)

(assert (=> b!4761538 m!5730616))

(declare-fun m!5730618 () Bool)

(assert (=> b!4761538 m!5730618))

(declare-fun m!5730620 () Bool)

(assert (=> b!4761538 m!5730620))

(declare-fun m!5730622 () Bool)

(assert (=> mapNonEmpty!21653 m!5730622))

(declare-fun m!5730624 () Bool)

(assert (=> b!4761531 m!5730624))

(declare-fun m!5730626 () Bool)

(assert (=> b!4761532 m!5730626))

(declare-fun m!5730628 () Bool)

(assert (=> b!4761532 m!5730628))

(check-sat (not b!4761535) (not mapNonEmpty!21653) b_and!341049 (not b!4761539) (not b!4761534) (not b_next!130125) (not b_next!130129) (not b!4761531) b_and!341053 (not b_next!130127) tp_is_empty!32311 (not b!4761538) b_and!341051 (not b!4761532))
(check-sat b_and!341049 (not b_next!130125) (not b_next!130129) (not b_next!130127) b_and!341053 b_and!341051)
