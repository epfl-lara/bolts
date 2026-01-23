; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413134 () Bool)

(assert start!413134)

(declare-fun b!4301923 () Bool)

(declare-fun b_free!128155 () Bool)

(declare-fun b_next!128859 () Bool)

(assert (=> b!4301923 (= b_free!128155 (not b_next!128859))))

(declare-fun tp!1321832 () Bool)

(declare-fun b_and!339539 () Bool)

(assert (=> b!4301923 (= tp!1321832 b_and!339539)))

(declare-fun b!4301932 () Bool)

(declare-fun b_free!128157 () Bool)

(declare-fun b_next!128861 () Bool)

(assert (=> b!4301932 (= b_free!128157 (not b_next!128861))))

(declare-fun tp!1321836 () Bool)

(declare-fun b_and!339541 () Bool)

(assert (=> b!4301932 (= tp!1321836 b_and!339541)))

(declare-fun b!4301947 () Bool)

(declare-fun e!2674298 () Bool)

(declare-fun e!2674301 () Bool)

(assert (=> b!4301947 (= e!2674298 e!2674301)))

(declare-fun b!4301948 () Bool)

(declare-fun e!2674299 () Bool)

(declare-fun e!2674300 () Bool)

(declare-datatypes ((V!9321 0))(
  ( (V!9322 (val!15553 Int)) )
))
(declare-datatypes ((K!9119 0))(
  ( (K!9120 (val!15554 Int)) )
))
(declare-datatypes ((tuple2!46022 0))(
  ( (tuple2!46023 (_1!26290 K!9119) (_2!26290 V!9321)) )
))
(declare-datatypes ((List!48111 0))(
  ( (Nil!47987) (Cons!47987 (h!53407 tuple2!46022) (t!354880 List!48111)) )
))
(declare-datatypes ((array!16318 0))(
  ( (array!16319 (arr!7283 (Array (_ BitVec 32) (_ BitVec 64))) (size!35322 (_ BitVec 32))) )
))
(declare-datatypes ((array!16320 0))(
  ( (array!16321 (arr!7284 (Array (_ BitVec 32) List!48111)) (size!35323 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9098 0))(
  ( (LongMapFixedSize!9099 (defaultEntry!4934 Int) (mask!13052 (_ BitVec 32)) (extraKeys!4798 (_ BitVec 32)) (zeroValue!4808 List!48111) (minValue!4808 List!48111) (_size!9141 (_ BitVec 32)) (_keys!4849 array!16318) (_values!4830 array!16320) (_vacant!4610 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18005 0))(
  ( (Cell!18006 (v!41980 LongMapFixedSize!9098)) )
))
(declare-datatypes ((MutLongMap!4549 0))(
  ( (LongMap!4549 (underlying!9327 Cell!18005)) (MutLongMapExt!4548 (__x!29672 Int)) )
))
(declare-fun lt!1523655 () MutLongMap!4549)

(get-info :version)

(assert (=> b!4301948 (= e!2674299 (and e!2674300 ((_ is LongMap!4549) lt!1523655)))))

(declare-datatypes ((Hashable!4465 0))(
  ( (HashableExt!4464 (__x!29673 Int)) )
))
(declare-datatypes ((Cell!18007 0))(
  ( (Cell!18008 (v!41981 MutLongMap!4549)) )
))
(declare-datatypes ((MutableMap!4455 0))(
  ( (MutableMapExt!4454 (__x!29674 Int)) (HashMap!4455 (underlying!9328 Cell!18007) (hashF!6500 Hashable!4465) (_size!9142 (_ BitVec 32)) (defaultValue!4626 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4455)

(assert (=> b!4301948 (= lt!1523655 (v!41981 (underlying!9328 thiss!42308)))))

(declare-fun b!4301927 () Bool)

(declare-fun e!2674302 () Bool)

(assert (=> b!4301927 e!2674302))

(declare-fun b!4301949 () Bool)

(assert (=> b!4301949 (= e!2674300 e!2674298)))

(declare-fun b!4301950 () Bool)

(assert (=> b!4301950 (= e!2674301 true)))

(declare-fun b!4301951 () Bool)

(assert (=> b!4301951 (= e!2674302 e!2674299)))

(assert (= b!4301947 b!4301950))

(assert (= b!4301949 b!4301947))

(assert (= (and b!4301948 ((_ is LongMap!4549) (v!41981 (underlying!9328 thiss!42308)))) b!4301949))

(assert (= b!4301951 b!4301948))

(assert (= (and b!4301927 ((_ is HashMap!4455) thiss!42308)) b!4301951))

(declare-fun order!25063 () Int)

(declare-fun order!25061 () Int)

(declare-fun lambda!132078 () Int)

(declare-fun dynLambda!20378 (Int Int) Int)

(declare-fun dynLambda!20379 (Int Int) Int)

(assert (=> b!4301950 (< (dynLambda!20378 order!25061 (defaultEntry!4934 (v!41980 (underlying!9327 (v!41981 (underlying!9328 thiss!42308)))))) (dynLambda!20379 order!25063 lambda!132078))))

(declare-fun order!25065 () Int)

(declare-fun dynLambda!20380 (Int Int) Int)

(assert (=> b!4301951 (< (dynLambda!20380 order!25065 (defaultValue!4626 thiss!42308)) (dynLambda!20379 order!25063 lambda!132078))))

(declare-fun mapIsEmpty!20419 () Bool)

(declare-fun mapRes!20419 () Bool)

(assert (=> mapIsEmpty!20419 mapRes!20419))

(declare-fun tp!1321838 () Bool)

(declare-fun e!2674281 () Bool)

(declare-fun tp!1321835 () Bool)

(declare-fun e!2674283 () Bool)

(declare-fun array_inv!5223 (array!16318) Bool)

(declare-fun array_inv!5224 (array!16320) Bool)

(assert (=> b!4301923 (= e!2674281 (and tp!1321832 tp!1321838 tp!1321835 (array_inv!5223 (_keys!4849 (v!41980 (underlying!9327 (v!41981 (underlying!9328 thiss!42308)))))) (array_inv!5224 (_values!4830 (v!41980 (underlying!9327 (v!41981 (underlying!9328 thiss!42308)))))) e!2674283))))

(declare-fun b!4301924 () Bool)

(declare-fun e!2674278 () Bool)

(declare-fun e!2674287 () Bool)

(assert (=> b!4301924 (= e!2674278 e!2674287)))

(declare-fun res!1763083 () Bool)

(assert (=> b!4301924 (=> (not res!1763083) (not e!2674287))))

(declare-fun key!2048 () K!9119)

(declare-fun contains!9911 (MutableMap!4455 K!9119) Bool)

(assert (=> b!4301924 (= res!1763083 (contains!9911 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46024 0))(
  ( (tuple2!46025 (_1!26291 (_ BitVec 64)) (_2!26291 List!48111)) )
))
(declare-datatypes ((List!48112 0))(
  ( (Nil!47988) (Cons!47988 (h!53408 tuple2!46024) (t!354881 List!48112)) )
))
(declare-datatypes ((ListLongMap!837 0))(
  ( (ListLongMap!838 (toList!2230 List!48112)) )
))
(declare-fun lt!1523652 () ListLongMap!837)

(declare-fun map!9948 (MutLongMap!4549) ListLongMap!837)

(assert (=> b!4301924 (= lt!1523652 (map!9948 (v!41981 (underlying!9328 thiss!42308))))))

(declare-datatypes ((ListMap!1517 0))(
  ( (ListMap!1518 (toList!2231 List!48111)) )
))
(declare-fun lt!1523650 () ListMap!1517)

(declare-fun map!9949 (MutableMap!4455) ListMap!1517)

(assert (=> b!4301924 (= lt!1523650 (map!9949 thiss!42308))))

(declare-fun b!4301925 () Bool)

(declare-fun e!2674285 () Bool)

(assert (=> b!4301925 (= e!2674285 false)))

(declare-fun res!1763081 () Bool)

(assert (=> start!413134 (=> (not res!1763081) (not e!2674278))))

(assert (=> start!413134 (= res!1763081 ((_ is HashMap!4455) thiss!42308))))

(assert (=> start!413134 e!2674278))

(declare-fun e!2674284 () Bool)

(assert (=> start!413134 e!2674284))

(declare-fun tp_is_empty!23335 () Bool)

(assert (=> start!413134 tp_is_empty!23335))

(declare-fun tp_is_empty!23337 () Bool)

(assert (=> start!413134 tp_is_empty!23337))

(declare-fun b!4301926 () Bool)

(declare-fun res!1763082 () Bool)

(assert (=> b!4301926 (=> (not res!1763082) (not e!2674278))))

(declare-fun valid!3535 (MutableMap!4455) Bool)

(assert (=> b!4301926 (= res!1763082 (valid!3535 thiss!42308))))

(declare-fun res!1763084 () Bool)

(assert (=> b!4301927 (=> (not res!1763084) (not e!2674285))))

(declare-fun forall!8650 (List!48112 Int) Bool)

(assert (=> b!4301927 (= res!1763084 (forall!8650 (toList!2230 lt!1523652) lambda!132078))))

(declare-fun b!4301928 () Bool)

(declare-fun res!1763085 () Bool)

(assert (=> b!4301928 (=> (not res!1763085) (not e!2674285))))

(declare-fun lt!1523649 () (_ BitVec 64))

(declare-fun lt!1523648 () List!48111)

(declare-fun contains!9912 (List!48112 tuple2!46024) Bool)

(assert (=> b!4301928 (= res!1763085 (contains!9912 (toList!2230 lt!1523652) (tuple2!46025 lt!1523649 lt!1523648)))))

(declare-fun mapNonEmpty!20419 () Bool)

(declare-fun tp!1321834 () Bool)

(declare-fun tp!1321833 () Bool)

(assert (=> mapNonEmpty!20419 (= mapRes!20419 (and tp!1321834 tp!1321833))))

(declare-fun mapKey!20419 () (_ BitVec 32))

(declare-fun mapValue!20419 () List!48111)

(declare-fun mapRest!20419 () (Array (_ BitVec 32) List!48111))

(assert (=> mapNonEmpty!20419 (= (arr!7284 (_values!4830 (v!41980 (underlying!9327 (v!41981 (underlying!9328 thiss!42308)))))) (store mapRest!20419 mapKey!20419 mapValue!20419))))

(declare-fun b!4301929 () Bool)

(declare-fun e!2674280 () Bool)

(declare-fun e!2674279 () Bool)

(declare-fun lt!1523651 () MutLongMap!4549)

(assert (=> b!4301929 (= e!2674280 (and e!2674279 ((_ is LongMap!4549) lt!1523651)))))

(assert (=> b!4301929 (= lt!1523651 (v!41981 (underlying!9328 thiss!42308)))))

(declare-fun b!4301930 () Bool)

(declare-fun e!2674282 () Bool)

(assert (=> b!4301930 (= e!2674282 e!2674281)))

(declare-fun b!4301931 () Bool)

(assert (=> b!4301931 (= e!2674287 e!2674285)))

(declare-fun res!1763080 () Bool)

(assert (=> b!4301931 (=> (not res!1763080) (not e!2674285))))

(declare-fun v!9179 () V!9321)

(declare-datatypes ((tuple2!46026 0))(
  ( (tuple2!46027 (_1!26292 Bool) (_2!26292 MutLongMap!4549)) )
))
(declare-fun update!347 (MutLongMap!4549 (_ BitVec 64) List!48111) tuple2!46026)

(declare-fun removePairForKey!150 (List!48111 K!9119) List!48111)

(assert (=> b!4301931 (= res!1763080 (_1!26292 (update!347 (v!41981 (underlying!9328 thiss!42308)) lt!1523649 (Cons!47987 (tuple2!46023 key!2048 v!9179) (removePairForKey!150 lt!1523648 key!2048)))))))

(declare-fun apply!10893 (MutLongMap!4549 (_ BitVec 64)) List!48111)

(assert (=> b!4301931 (= lt!1523648 (apply!10893 (v!41981 (underlying!9328 thiss!42308)) lt!1523649))))

(declare-fun hash!853 (Hashable!4465 K!9119) (_ BitVec 64))

(assert (=> b!4301931 (= lt!1523649 (hash!853 (hashF!6500 thiss!42308) key!2048))))

(assert (=> b!4301932 (= e!2674284 (and e!2674280 tp!1321836))))

(declare-fun b!4301933 () Bool)

(assert (=> b!4301933 (= e!2674279 e!2674282)))

(declare-fun b!4301934 () Bool)

(declare-fun tp!1321837 () Bool)

(assert (=> b!4301934 (= e!2674283 (and tp!1321837 mapRes!20419))))

(declare-fun condMapEmpty!20419 () Bool)

(declare-fun mapDefault!20419 () List!48111)

(assert (=> b!4301934 (= condMapEmpty!20419 (= (arr!7284 (_values!4830 (v!41980 (underlying!9327 (v!41981 (underlying!9328 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48111)) mapDefault!20419)))))

(assert (= (and start!413134 res!1763081) b!4301926))

(assert (= (and b!4301926 res!1763082) b!4301924))

(assert (= (and b!4301924 res!1763083) b!4301931))

(assert (= (and b!4301931 res!1763080) b!4301927))

(assert (= (and b!4301927 res!1763084) b!4301928))

(assert (= (and b!4301928 res!1763085) b!4301925))

(assert (= (and b!4301934 condMapEmpty!20419) mapIsEmpty!20419))

(assert (= (and b!4301934 (not condMapEmpty!20419)) mapNonEmpty!20419))

(assert (= b!4301923 b!4301934))

(assert (= b!4301930 b!4301923))

(assert (= b!4301933 b!4301930))

(assert (= (and b!4301929 ((_ is LongMap!4549) (v!41981 (underlying!9328 thiss!42308)))) b!4301933))

(assert (= b!4301932 b!4301929))

(assert (= (and start!413134 ((_ is HashMap!4455) thiss!42308)) b!4301932))

(declare-fun m!4894031 () Bool)

(assert (=> b!4301928 m!4894031))

(declare-fun m!4894033 () Bool)

(assert (=> mapNonEmpty!20419 m!4894033))

(declare-fun m!4894035 () Bool)

(assert (=> b!4301924 m!4894035))

(declare-fun m!4894037 () Bool)

(assert (=> b!4301924 m!4894037))

(declare-fun m!4894039 () Bool)

(assert (=> b!4301924 m!4894039))

(declare-fun m!4894041 () Bool)

(assert (=> b!4301927 m!4894041))

(declare-fun m!4894043 () Bool)

(assert (=> b!4301926 m!4894043))

(declare-fun m!4894045 () Bool)

(assert (=> b!4301931 m!4894045))

(declare-fun m!4894047 () Bool)

(assert (=> b!4301931 m!4894047))

(declare-fun m!4894049 () Bool)

(assert (=> b!4301931 m!4894049))

(declare-fun m!4894051 () Bool)

(assert (=> b!4301931 m!4894051))

(declare-fun m!4894053 () Bool)

(assert (=> b!4301923 m!4894053))

(declare-fun m!4894055 () Bool)

(assert (=> b!4301923 m!4894055))

(check-sat b_and!339539 (not b!4301934) (not b_next!128861) tp_is_empty!23337 (not mapNonEmpty!20419) b_and!339541 (not b_next!128859) tp_is_empty!23335 (not b!4301931) (not b!4301924) (not b!4301928) (not b!4301923) (not b!4301926) (not b!4301927))
(check-sat b_and!339539 b_and!339541 (not b_next!128861) (not b_next!128859))
