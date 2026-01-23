; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486930 () Bool)

(assert start!486930)

(declare-fun b!4761345 () Bool)

(declare-fun b_free!129385 () Bool)

(declare-fun b_next!130089 () Bool)

(assert (=> b!4761345 (= b_free!129385 (not b_next!130089))))

(declare-fun tp!1353971 () Bool)

(declare-fun b_and!341013 () Bool)

(assert (=> b!4761345 (= tp!1353971 b_and!341013)))

(declare-fun b_free!129387 () Bool)

(declare-fun b_next!130091 () Bool)

(assert (=> start!486930 (= b_free!129387 (not b_next!130091))))

(declare-fun tp!1353970 () Bool)

(declare-fun b_and!341015 () Bool)

(assert (=> start!486930 (= tp!1353970 b_and!341015)))

(declare-fun b!4761348 () Bool)

(declare-fun b_free!129389 () Bool)

(declare-fun b_next!130093 () Bool)

(assert (=> b!4761348 (= b_free!129389 (not b_next!130093))))

(declare-fun tp!1353967 () Bool)

(declare-fun b_and!341017 () Bool)

(assert (=> b!4761348 (= tp!1353967 b_and!341017)))

(declare-fun tp!1353966 () Bool)

(declare-datatypes ((array!17756 0))(
  ( (array!17757 (arr!7919 (Array (_ BitVec 32) (_ BitVec 64))) (size!36146 (_ BitVec 32))) )
))
(declare-datatypes ((K!14809 0))(
  ( (K!14810 (val!20153 Int)) )
))
(declare-datatypes ((V!15055 0))(
  ( (V!15056 (val!20154 Int)) )
))
(declare-datatypes ((tuple2!55338 0))(
  ( (tuple2!55339 (_1!30963 K!14809) (_2!30963 V!15055)) )
))
(declare-datatypes ((List!53511 0))(
  ( (Nil!53387) (Cons!53387 (h!59798 tuple2!55338) (t!360873 List!53511)) )
))
(declare-datatypes ((array!17758 0))(
  ( (array!17759 (arr!7920 (Array (_ BitVec 32) List!53511)) (size!36147 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9734 0))(
  ( (LongMapFixedSize!9735 (defaultEntry!5281 Int) (mask!14586 (_ BitVec 32)) (extraKeys!5137 (_ BitVec 32)) (zeroValue!5150 List!53511) (minValue!5150 List!53511) (_size!9759 (_ BitVec 32)) (_keys!5202 array!17756) (_values!5175 array!17758) (_vacant!4932 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19233 0))(
  ( (Cell!19234 (v!47433 LongMapFixedSize!9734)) )
))
(declare-datatypes ((MutLongMap!4867 0))(
  ( (LongMap!4867 (underlying!9941 Cell!19233)) (MutLongMapExt!4866 (__x!32349 Int)) )
))
(declare-datatypes ((Cell!19235 0))(
  ( (Cell!19236 (v!47434 MutLongMap!4867)) )
))
(declare-datatypes ((Hashable!6528 0))(
  ( (HashableExt!6527 (__x!32350 Int)) )
))
(declare-datatypes ((MutableMap!4751 0))(
  ( (MutableMapExt!4750 (__x!32351 Int)) (HashMap!4751 (underlying!9942 Cell!19235) (hashF!12338 Hashable!6528) (_size!9760 (_ BitVec 32)) (defaultValue!4922 Int)) )
))
(declare-fun hm!63 () MutableMap!4751)

(declare-fun e!2971268 () Bool)

(declare-fun e!2971267 () Bool)

(declare-fun tp!1353965 () Bool)

(declare-fun array_inv!5699 (array!17756) Bool)

(declare-fun array_inv!5700 (array!17758) Bool)

(assert (=> b!4761345 (= e!2971268 (and tp!1353971 tp!1353966 tp!1353965 (array_inv!5699 (_keys!5202 (v!47433 (underlying!9941 (v!47434 (underlying!9942 hm!63)))))) (array_inv!5700 (_values!5175 (v!47433 (underlying!9941 (v!47434 (underlying!9942 hm!63)))))) e!2971267))))

(declare-fun b!4761346 () Bool)

(declare-fun e!2971262 () Bool)

(assert (=> b!4761346 (= e!2971262 e!2971268)))

(declare-fun b!4761347 () Bool)

(declare-fun e!2971263 () Bool)

(declare-fun e!2971265 () Bool)

(declare-fun lt!1925235 () MutLongMap!4867)

(get-info :version)

(assert (=> b!4761347 (= e!2971263 (and e!2971265 ((_ is LongMap!4867) lt!1925235)))))

(assert (=> b!4761347 (= lt!1925235 (v!47434 (underlying!9942 hm!63)))))

(declare-fun e!2971264 () Bool)

(assert (=> b!4761348 (= e!2971264 (and e!2971263 tp!1353967))))

(declare-fun res!2019348 () Bool)

(declare-fun e!2971266 () Bool)

(assert (=> start!486930 (=> (not res!2019348) (not e!2971266))))

(assert (=> start!486930 (= res!2019348 ((_ is HashMap!4751) hm!63))))

(assert (=> start!486930 e!2971266))

(assert (=> start!486930 e!2971264))

(assert (=> start!486930 tp!1353970))

(declare-fun tp_is_empty!32299 () Bool)

(assert (=> start!486930 tp_is_empty!32299))

(declare-fun b!4761349 () Bool)

(declare-fun res!2019349 () Bool)

(assert (=> b!4761349 (=> (not res!2019349) (not e!2971266))))

(declare-fun valid!3862 (MutableMap!4751) Bool)

(assert (=> b!4761349 (= res!2019349 (valid!3862 hm!63))))

(declare-fun b!4761350 () Bool)

(declare-fun tp!1353968 () Bool)

(declare-fun mapRes!21635 () Bool)

(assert (=> b!4761350 (= e!2971267 (and tp!1353968 mapRes!21635))))

(declare-fun condMapEmpty!21635 () Bool)

(declare-fun mapDefault!21635 () List!53511)

(assert (=> b!4761350 (= condMapEmpty!21635 (= (arr!7920 (_values!5175 (v!47433 (underlying!9941 (v!47434 (underlying!9942 hm!63)))))) ((as const (Array (_ BitVec 32) List!53511)) mapDefault!21635)))))

(declare-fun b!4761351 () Bool)

(assert (=> b!4761351 (= e!2971265 e!2971262)))

(declare-fun mapNonEmpty!21635 () Bool)

(declare-fun tp!1353969 () Bool)

(declare-fun tp!1353964 () Bool)

(assert (=> mapNonEmpty!21635 (= mapRes!21635 (and tp!1353969 tp!1353964))))

(declare-fun mapRest!21635 () (Array (_ BitVec 32) List!53511))

(declare-fun mapKey!21635 () (_ BitVec 32))

(declare-fun mapValue!21635 () List!53511)

(assert (=> mapNonEmpty!21635 (= (arr!7920 (_values!5175 (v!47433 (underlying!9941 (v!47434 (underlying!9942 hm!63)))))) (store mapRest!21635 mapKey!21635 mapValue!21635))))

(declare-fun b!4761352 () Bool)

(assert (=> b!4761352 (= e!2971266 false)))

(declare-fun lt!1925234 () Bool)

(declare-fun k0!1662 () K!14809)

(declare-fun contains!16688 (MutableMap!4751 K!14809) Bool)

(assert (=> b!4761352 (= lt!1925234 (contains!16688 hm!63 k0!1662))))

(declare-fun mapIsEmpty!21635 () Bool)

(assert (=> mapIsEmpty!21635 mapRes!21635))

(declare-fun b!4761353 () Bool)

(declare-fun res!2019350 () Bool)

(assert (=> b!4761353 (=> (not res!2019350) (not e!2971266))))

(declare-fun p!6026 () Int)

(declare-fun forall!11844 (List!53511 Int) Bool)

(declare-datatypes ((ListMap!5723 0))(
  ( (ListMap!5724 (toList!6222 List!53511)) )
))
(declare-fun map!11885 (MutableMap!4751) ListMap!5723)

(assert (=> b!4761353 (= res!2019350 (forall!11844 (toList!6222 (map!11885 hm!63)) p!6026))))

(assert (= (and start!486930 res!2019348) b!4761349))

(assert (= (and b!4761349 res!2019349) b!4761353))

(assert (= (and b!4761353 res!2019350) b!4761352))

(assert (= (and b!4761350 condMapEmpty!21635) mapIsEmpty!21635))

(assert (= (and b!4761350 (not condMapEmpty!21635)) mapNonEmpty!21635))

(assert (= b!4761345 b!4761350))

(assert (= b!4761346 b!4761345))

(assert (= b!4761351 b!4761346))

(assert (= (and b!4761347 ((_ is LongMap!4867) (v!47434 (underlying!9942 hm!63)))) b!4761351))

(assert (= b!4761348 b!4761347))

(assert (= (and start!486930 ((_ is HashMap!4751) hm!63)) b!4761348))

(declare-fun m!5730492 () Bool)

(assert (=> b!4761345 m!5730492))

(declare-fun m!5730494 () Bool)

(assert (=> b!4761345 m!5730494))

(declare-fun m!5730496 () Bool)

(assert (=> b!4761352 m!5730496))

(declare-fun m!5730498 () Bool)

(assert (=> b!4761349 m!5730498))

(declare-fun m!5730500 () Bool)

(assert (=> b!4761353 m!5730500))

(declare-fun m!5730502 () Bool)

(assert (=> b!4761353 m!5730502))

(declare-fun m!5730504 () Bool)

(assert (=> mapNonEmpty!21635 m!5730504))

(check-sat b_and!341013 (not b!4761345) (not b!4761353) (not mapNonEmpty!21635) (not b!4761352) b_and!341015 (not b!4761349) (not b!4761350) (not b_next!130093) b_and!341017 (not b_next!130091) (not b_next!130089) tp_is_empty!32299)
(check-sat b_and!341013 (not b_next!130089) b_and!341015 (not b_next!130093) b_and!341017 (not b_next!130091))
