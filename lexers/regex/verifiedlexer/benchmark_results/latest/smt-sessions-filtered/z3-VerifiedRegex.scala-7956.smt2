; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413578 () Bool)

(assert start!413578)

(declare-fun b!4304936 () Bool)

(declare-fun b_free!128331 () Bool)

(declare-fun b_next!129035 () Bool)

(assert (=> b!4304936 (= b_free!128331 (not b_next!129035))))

(declare-fun tp!1322879 () Bool)

(declare-fun b_and!339729 () Bool)

(assert (=> b!4304936 (= tp!1322879 b_and!339729)))

(declare-fun b!4304942 () Bool)

(declare-fun b_free!128333 () Bool)

(declare-fun b_next!129037 () Bool)

(assert (=> b!4304942 (= b_free!128333 (not b_next!129037))))

(declare-fun tp!1322882 () Bool)

(declare-fun b_and!339731 () Bool)

(assert (=> b!4304942 (= tp!1322882 b_and!339731)))

(declare-fun res!1764499 () Bool)

(declare-fun e!2676626 () Bool)

(assert (=> start!413578 (=> (not res!1764499) (not e!2676626))))

(declare-datatypes ((V!9431 0))(
  ( (V!9432 (val!15641 Int)) )
))
(declare-datatypes ((K!9229 0))(
  ( (K!9230 (val!15642 Int)) )
))
(declare-datatypes ((tuple2!46252 0))(
  ( (tuple2!46253 (_1!26405 K!9229) (_2!26405 V!9431)) )
))
(declare-datatypes ((List!48193 0))(
  ( (Nil!48069) (Cons!48069 (h!53496 tuple2!46252) (t!354976 List!48193)) )
))
(declare-datatypes ((array!16510 0))(
  ( (array!16511 (arr!7371 (Array (_ BitVec 32) (_ BitVec 64))) (size!35410 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4509 0))(
  ( (HashableExt!4508 (__x!29804 Int)) )
))
(declare-datatypes ((array!16512 0))(
  ( (array!16513 (arr!7372 (Array (_ BitVec 32) List!48193)) (size!35411 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9186 0))(
  ( (LongMapFixedSize!9187 (defaultEntry!4978 Int) (mask!13118 (_ BitVec 32)) (extraKeys!4842 (_ BitVec 32)) (zeroValue!4852 List!48193) (minValue!4852 List!48193) (_size!9229 (_ BitVec 32)) (_keys!4893 array!16510) (_values!4874 array!16512) (_vacant!4654 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18181 0))(
  ( (Cell!18182 (v!42118 LongMapFixedSize!9186)) )
))
(declare-datatypes ((MutLongMap!4593 0))(
  ( (LongMap!4593 (underlying!9415 Cell!18181)) (MutLongMapExt!4592 (__x!29805 Int)) )
))
(declare-datatypes ((Cell!18183 0))(
  ( (Cell!18184 (v!42119 MutLongMap!4593)) )
))
(declare-datatypes ((MutableMap!4499 0))(
  ( (MutableMapExt!4498 (__x!29806 Int)) (HashMap!4499 (underlying!9416 Cell!18183) (hashF!6583 Hashable!4509) (_size!9230 (_ BitVec 32)) (defaultValue!4670 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4499)

(get-info :version)

(assert (=> start!413578 (= res!1764499 ((_ is HashMap!4499) thiss!42308))))

(assert (=> start!413578 e!2676626))

(declare-fun e!2676627 () Bool)

(assert (=> start!413578 e!2676627))

(declare-fun tp_is_empty!23503 () Bool)

(assert (=> start!413578 tp_is_empty!23503))

(declare-fun mapNonEmpty!20575 () Bool)

(declare-fun mapRes!20575 () Bool)

(declare-fun tp!1322878 () Bool)

(declare-fun tp!1322880 () Bool)

(assert (=> mapNonEmpty!20575 (= mapRes!20575 (and tp!1322878 tp!1322880))))

(declare-fun mapValue!20575 () List!48193)

(declare-fun mapRest!20575 () (Array (_ BitVec 32) List!48193))

(declare-fun mapKey!20575 () (_ BitVec 32))

(assert (=> mapNonEmpty!20575 (= (arr!7372 (_values!4874 (v!42118 (underlying!9415 (v!42119 (underlying!9416 thiss!42308)))))) (store mapRest!20575 mapKey!20575 mapValue!20575))))

(declare-fun b!4304933 () Bool)

(declare-fun res!1764500 () Bool)

(assert (=> b!4304933 (=> (not res!1764500) (not e!2676626))))

(declare-fun valid!3578 (MutableMap!4499) Bool)

(assert (=> b!4304933 (= res!1764500 (valid!3578 thiss!42308))))

(declare-fun b!4304934 () Bool)

(declare-fun res!1764501 () Bool)

(declare-fun e!2676625 () Bool)

(assert (=> b!4304934 (=> (not res!1764501) (not e!2676625))))

(declare-fun key!2048 () K!9229)

(declare-fun contains!10001 (MutLongMap!4593 (_ BitVec 64)) Bool)

(declare-fun hash!917 (Hashable!4509 K!9229) (_ BitVec 64))

(assert (=> b!4304934 (= res!1764501 (contains!10001 (v!42119 (underlying!9416 thiss!42308)) (hash!917 (hashF!6583 thiss!42308) key!2048)))))

(declare-fun b!4304935 () Bool)

(declare-fun e!2676630 () Bool)

(declare-fun tp!1322876 () Bool)

(assert (=> b!4304935 (= e!2676630 (and tp!1322876 mapRes!20575))))

(declare-fun condMapEmpty!20575 () Bool)

(declare-fun mapDefault!20575 () List!48193)

(assert (=> b!4304935 (= condMapEmpty!20575 (= (arr!7372 (_values!4874 (v!42118 (underlying!9415 (v!42119 (underlying!9416 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48193)) mapDefault!20575)))))

(declare-fun tp!1322881 () Bool)

(declare-fun e!2676629 () Bool)

(declare-fun tp!1322877 () Bool)

(declare-fun array_inv!5289 (array!16510) Bool)

(declare-fun array_inv!5290 (array!16512) Bool)

(assert (=> b!4304936 (= e!2676629 (and tp!1322879 tp!1322881 tp!1322877 (array_inv!5289 (_keys!4893 (v!42118 (underlying!9415 (v!42119 (underlying!9416 thiss!42308)))))) (array_inv!5290 (_values!4874 (v!42118 (underlying!9415 (v!42119 (underlying!9416 thiss!42308)))))) e!2676630))))

(declare-fun b!4304937 () Bool)

(assert (=> b!4304937 (= e!2676625 (not ((_ is LongMap!4593) (v!42119 (underlying!9416 thiss!42308)))))))

(declare-fun b!4304938 () Bool)

(declare-fun e!2676633 () Bool)

(assert (=> b!4304938 (= e!2676633 e!2676629)))

(declare-fun b!4304939 () Bool)

(assert (=> b!4304939 (= e!2676626 e!2676625)))

(declare-fun res!1764502 () Bool)

(assert (=> b!4304939 (=> (not res!1764502) (not e!2676625))))

(declare-fun contains!10002 (MutableMap!4499 K!9229) Bool)

(assert (=> b!4304939 (= res!1764502 (not (contains!10002 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46254 0))(
  ( (tuple2!46255 (_1!26406 (_ BitVec 64)) (_2!26406 List!48193)) )
))
(declare-datatypes ((List!48194 0))(
  ( (Nil!48070) (Cons!48070 (h!53497 tuple2!46254) (t!354977 List!48194)) )
))
(declare-datatypes ((ListLongMap!903 0))(
  ( (ListLongMap!904 (toList!2294 List!48194)) )
))
(declare-fun lt!1526382 () ListLongMap!903)

(declare-fun map!10039 (MutLongMap!4593) ListLongMap!903)

(assert (=> b!4304939 (= lt!1526382 (map!10039 (v!42119 (underlying!9416 thiss!42308))))))

(declare-datatypes ((ListMap!1579 0))(
  ( (ListMap!1580 (toList!2295 List!48193)) )
))
(declare-fun lt!1526384 () ListMap!1579)

(declare-fun map!10040 (MutableMap!4499) ListMap!1579)

(assert (=> b!4304939 (= lt!1526384 (map!10040 thiss!42308))))

(declare-fun b!4304940 () Bool)

(declare-fun e!2676628 () Bool)

(declare-fun e!2676631 () Bool)

(declare-fun lt!1526383 () MutLongMap!4593)

(assert (=> b!4304940 (= e!2676628 (and e!2676631 ((_ is LongMap!4593) lt!1526383)))))

(assert (=> b!4304940 (= lt!1526383 (v!42119 (underlying!9416 thiss!42308)))))

(declare-fun b!4304941 () Bool)

(assert (=> b!4304941 (= e!2676631 e!2676633)))

(assert (=> b!4304942 (= e!2676627 (and e!2676628 tp!1322882))))

(declare-fun mapIsEmpty!20575 () Bool)

(assert (=> mapIsEmpty!20575 mapRes!20575))

(assert (= (and start!413578 res!1764499) b!4304933))

(assert (= (and b!4304933 res!1764500) b!4304939))

(assert (= (and b!4304939 res!1764502) b!4304934))

(assert (= (and b!4304934 res!1764501) b!4304937))

(assert (= (and b!4304935 condMapEmpty!20575) mapIsEmpty!20575))

(assert (= (and b!4304935 (not condMapEmpty!20575)) mapNonEmpty!20575))

(assert (= b!4304936 b!4304935))

(assert (= b!4304938 b!4304936))

(assert (= b!4304941 b!4304938))

(assert (= (and b!4304940 ((_ is LongMap!4593) (v!42119 (underlying!9416 thiss!42308)))) b!4304941))

(assert (= b!4304942 b!4304940))

(assert (= (and start!413578 ((_ is HashMap!4499) thiss!42308)) b!4304942))

(declare-fun m!4897861 () Bool)

(assert (=> mapNonEmpty!20575 m!4897861))

(declare-fun m!4897863 () Bool)

(assert (=> b!4304936 m!4897863))

(declare-fun m!4897865 () Bool)

(assert (=> b!4304936 m!4897865))

(declare-fun m!4897867 () Bool)

(assert (=> b!4304939 m!4897867))

(declare-fun m!4897869 () Bool)

(assert (=> b!4304939 m!4897869))

(declare-fun m!4897871 () Bool)

(assert (=> b!4304939 m!4897871))

(declare-fun m!4897873 () Bool)

(assert (=> b!4304933 m!4897873))

(declare-fun m!4897875 () Bool)

(assert (=> b!4304934 m!4897875))

(assert (=> b!4304934 m!4897875))

(declare-fun m!4897877 () Bool)

(assert (=> b!4304934 m!4897877))

(check-sat b_and!339729 (not b!4304935) (not b!4304936) tp_is_empty!23503 (not b!4304933) (not mapNonEmpty!20575) (not b!4304939) (not b_next!129037) b_and!339731 (not b!4304934) (not b_next!129035))
(check-sat b_and!339729 b_and!339731 (not b_next!129037) (not b_next!129035))
