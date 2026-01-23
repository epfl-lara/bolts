; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415194 () Bool)

(assert start!415194)

(declare-fun b!4316200 () Bool)

(declare-fun b_free!128851 () Bool)

(declare-fun b_next!129555 () Bool)

(assert (=> b!4316200 (= b_free!128851 (not b_next!129555))))

(declare-fun tp!1326102 () Bool)

(declare-fun b_and!340333 () Bool)

(assert (=> b!4316200 (= tp!1326102 b_and!340333)))

(declare-fun b!4316195 () Bool)

(declare-fun b_free!128853 () Bool)

(declare-fun b_next!129557 () Bool)

(assert (=> b!4316195 (= b_free!128853 (not b_next!129557))))

(declare-fun tp!1326103 () Bool)

(declare-fun b_and!340335 () Bool)

(assert (=> b!4316195 (= tp!1326103 b_and!340335)))

(declare-fun res!1769114 () Bool)

(declare-fun e!2685011 () Bool)

(assert (=> start!415194 (=> (not res!1769114) (not e!2685011))))

(declare-datatypes ((V!9756 0))(
  ( (V!9757 (val!15901 Int)) )
))
(declare-datatypes ((K!9554 0))(
  ( (K!9555 (val!15902 Int)) )
))
(declare-datatypes ((tuple2!46994 0))(
  ( (tuple2!46995 (_1!26779 K!9554) (_2!26779 V!9756)) )
))
(declare-datatypes ((List!48441 0))(
  ( (Nil!48317) (Cons!48317 (h!53769 tuple2!46994) (t!355290 List!48441)) )
))
(declare-datatypes ((array!17092 0))(
  ( (array!17093 (arr!7631 (Array (_ BitVec 32) (_ BitVec 64))) (size!35670 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4639 0))(
  ( (HashableExt!4638 (__x!30194 Int)) )
))
(declare-datatypes ((array!17094 0))(
  ( (array!17095 (arr!7632 (Array (_ BitVec 32) List!48441)) (size!35671 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9446 0))(
  ( (LongMapFixedSize!9447 (defaultEntry!5108 Int) (mask!13313 (_ BitVec 32)) (extraKeys!4972 (_ BitVec 32)) (zeroValue!4982 List!48441) (minValue!4982 List!48441) (_size!9489 (_ BitVec 32)) (_keys!5023 array!17092) (_values!5004 array!17094) (_vacant!4784 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18701 0))(
  ( (Cell!18702 (v!42598 LongMapFixedSize!9446)) )
))
(declare-datatypes ((MutLongMap!4723 0))(
  ( (LongMap!4723 (underlying!9675 Cell!18701)) (MutLongMapExt!4722 (__x!30195 Int)) )
))
(declare-datatypes ((Cell!18703 0))(
  ( (Cell!18704 (v!42599 MutLongMap!4723)) )
))
(declare-datatypes ((MutableMap!4629 0))(
  ( (MutableMapExt!4628 (__x!30196 Int)) (HashMap!4629 (underlying!9676 Cell!18703) (hashF!6844 Hashable!4639) (_size!9490 (_ BitVec 32)) (defaultValue!4800 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4629)

(get-info :version)

(assert (=> start!415194 (= res!1769114 ((_ is HashMap!4629) thiss!42308))))

(assert (=> start!415194 e!2685011))

(declare-fun e!2685010 () Bool)

(assert (=> start!415194 e!2685010))

(declare-fun tp_is_empty!23991 () Bool)

(assert (=> start!415194 tp_is_empty!23991))

(declare-fun b!4316191 () Bool)

(declare-fun res!1769112 () Bool)

(assert (=> b!4316191 (=> (not res!1769112) (not e!2685011))))

(declare-fun valid!3724 (MutableMap!4629) Bool)

(assert (=> b!4316191 (= res!1769112 (valid!3724 thiss!42308))))

(declare-fun b!4316192 () Bool)

(declare-fun e!2685006 () List!48441)

(assert (=> b!4316192 (= e!2685006 Nil!48317)))

(declare-fun b!4316193 () Bool)

(declare-fun e!2685004 () Bool)

(assert (=> b!4316193 (= e!2685004 false)))

(declare-fun lt!1535707 () List!48441)

(assert (=> b!4316193 (= lt!1535707 e!2685006)))

(declare-fun c!733748 () Bool)

(declare-fun lt!1535709 () (_ BitVec 64))

(declare-fun contains!10327 (MutLongMap!4723 (_ BitVec 64)) Bool)

(assert (=> b!4316193 (= c!733748 (contains!10327 (v!42599 (underlying!9676 thiss!42308)) lt!1535709))))

(declare-fun key!2048 () K!9554)

(declare-fun hash!1120 (Hashable!4639 K!9554) (_ BitVec 64))

(assert (=> b!4316193 (= lt!1535709 (hash!1120 (hashF!6844 thiss!42308) key!2048))))

(declare-fun b!4316194 () Bool)

(declare-fun e!2685009 () Bool)

(declare-fun e!2685005 () Bool)

(assert (=> b!4316194 (= e!2685009 e!2685005)))

(declare-fun e!2685012 () Bool)

(assert (=> b!4316195 (= e!2685010 (and e!2685012 tp!1326103))))

(declare-fun b!4316196 () Bool)

(declare-fun apply!11095 (MutLongMap!4723 (_ BitVec 64)) List!48441)

(assert (=> b!4316196 (= e!2685006 (apply!11095 (v!42599 (underlying!9676 thiss!42308)) lt!1535709))))

(declare-fun mapIsEmpty!21061 () Bool)

(declare-fun mapRes!21061 () Bool)

(assert (=> mapIsEmpty!21061 mapRes!21061))

(declare-fun mapNonEmpty!21061 () Bool)

(declare-fun tp!1326107 () Bool)

(declare-fun tp!1326101 () Bool)

(assert (=> mapNonEmpty!21061 (= mapRes!21061 (and tp!1326107 tp!1326101))))

(declare-fun mapRest!21061 () (Array (_ BitVec 32) List!48441))

(declare-fun mapValue!21061 () List!48441)

(declare-fun mapKey!21061 () (_ BitVec 32))

(assert (=> mapNonEmpty!21061 (= (arr!7632 (_values!5004 (v!42598 (underlying!9675 (v!42599 (underlying!9676 thiss!42308)))))) (store mapRest!21061 mapKey!21061 mapValue!21061))))

(declare-fun b!4316197 () Bool)

(declare-fun e!2685007 () Bool)

(declare-fun tp!1326104 () Bool)

(assert (=> b!4316197 (= e!2685007 (and tp!1326104 mapRes!21061))))

(declare-fun condMapEmpty!21061 () Bool)

(declare-fun mapDefault!21061 () List!48441)

(assert (=> b!4316197 (= condMapEmpty!21061 (= (arr!7632 (_values!5004 (v!42598 (underlying!9675 (v!42599 (underlying!9676 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48441)) mapDefault!21061)))))

(declare-fun b!4316198 () Bool)

(declare-fun e!2685008 () Bool)

(assert (=> b!4316198 (= e!2685008 e!2685009)))

(declare-fun b!4316199 () Bool)

(declare-fun lt!1535708 () MutLongMap!4723)

(assert (=> b!4316199 (= e!2685012 (and e!2685008 ((_ is LongMap!4723) lt!1535708)))))

(assert (=> b!4316199 (= lt!1535708 (v!42599 (underlying!9676 thiss!42308)))))

(declare-fun tp!1326105 () Bool)

(declare-fun tp!1326106 () Bool)

(declare-fun array_inv!5487 (array!17092) Bool)

(declare-fun array_inv!5488 (array!17094) Bool)

(assert (=> b!4316200 (= e!2685005 (and tp!1326102 tp!1326106 tp!1326105 (array_inv!5487 (_keys!5023 (v!42598 (underlying!9675 (v!42599 (underlying!9676 thiss!42308)))))) (array_inv!5488 (_values!5004 (v!42598 (underlying!9675 (v!42599 (underlying!9676 thiss!42308)))))) e!2685007))))

(declare-fun b!4316201 () Bool)

(assert (=> b!4316201 (= e!2685011 e!2685004)))

(declare-fun res!1769113 () Bool)

(assert (=> b!4316201 (=> (not res!1769113) (not e!2685004))))

(declare-fun contains!10328 (MutableMap!4629 K!9554) Bool)

(assert (=> b!4316201 (= res!1769113 (not (contains!10328 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46996 0))(
  ( (tuple2!46997 (_1!26780 (_ BitVec 64)) (_2!26780 List!48441)) )
))
(declare-datatypes ((List!48442 0))(
  ( (Nil!48318) (Cons!48318 (h!53770 tuple2!46996) (t!355291 List!48442)) )
))
(declare-datatypes ((ListLongMap!1119 0))(
  ( (ListLongMap!1120 (toList!2505 List!48442)) )
))
(declare-fun lt!1535710 () ListLongMap!1119)

(declare-fun map!10333 (MutLongMap!4723) ListLongMap!1119)

(assert (=> b!4316201 (= lt!1535710 (map!10333 (v!42599 (underlying!9676 thiss!42308))))))

(declare-datatypes ((ListMap!1785 0))(
  ( (ListMap!1786 (toList!2506 List!48441)) )
))
(declare-fun lt!1535711 () ListMap!1785)

(declare-fun map!10334 (MutableMap!4629) ListMap!1785)

(assert (=> b!4316201 (= lt!1535711 (map!10334 thiss!42308))))

(assert (= (and start!415194 res!1769114) b!4316191))

(assert (= (and b!4316191 res!1769112) b!4316201))

(assert (= (and b!4316201 res!1769113) b!4316193))

(assert (= (and b!4316193 c!733748) b!4316196))

(assert (= (and b!4316193 (not c!733748)) b!4316192))

(assert (= (and b!4316197 condMapEmpty!21061) mapIsEmpty!21061))

(assert (= (and b!4316197 (not condMapEmpty!21061)) mapNonEmpty!21061))

(assert (= b!4316200 b!4316197))

(assert (= b!4316194 b!4316200))

(assert (= b!4316198 b!4316194))

(assert (= (and b!4316199 ((_ is LongMap!4723) (v!42599 (underlying!9676 thiss!42308)))) b!4316198))

(assert (= b!4316195 b!4316199))

(assert (= (and start!415194 ((_ is HashMap!4629) thiss!42308)) b!4316195))

(declare-fun m!4910113 () Bool)

(assert (=> b!4316196 m!4910113))

(declare-fun m!4910115 () Bool)

(assert (=> b!4316193 m!4910115))

(declare-fun m!4910117 () Bool)

(assert (=> b!4316193 m!4910117))

(declare-fun m!4910119 () Bool)

(assert (=> b!4316191 m!4910119))

(declare-fun m!4910121 () Bool)

(assert (=> b!4316200 m!4910121))

(declare-fun m!4910123 () Bool)

(assert (=> b!4316200 m!4910123))

(declare-fun m!4910125 () Bool)

(assert (=> mapNonEmpty!21061 m!4910125))

(declare-fun m!4910127 () Bool)

(assert (=> b!4316201 m!4910127))

(declare-fun m!4910129 () Bool)

(assert (=> b!4316201 m!4910129))

(declare-fun m!4910131 () Bool)

(assert (=> b!4316201 m!4910131))

(check-sat (not b!4316196) (not mapNonEmpty!21061) b_and!340335 (not b!4316201) (not b!4316197) b_and!340333 (not b!4316193) (not b_next!129557) (not b!4316191) tp_is_empty!23991 (not b_next!129555) (not b!4316200))
(check-sat b_and!340333 b_and!340335 (not b_next!129557) (not b_next!129555))
