; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241478 () Bool)

(assert start!241478)

(declare-fun b!2475898 () Bool)

(declare-fun b_free!71857 () Bool)

(declare-fun b_next!72561 () Bool)

(assert (=> b!2475898 (= b_free!71857 (not b_next!72561))))

(declare-fun tp!791800 () Bool)

(declare-fun b_and!188081 () Bool)

(assert (=> b!2475898 (= tp!791800 b_and!188081)))

(declare-fun b!2475890 () Bool)

(declare-fun b_free!71859 () Bool)

(declare-fun b_next!72563 () Bool)

(assert (=> b!2475890 (= b_free!71859 (not b_next!72563))))

(declare-fun tp!791797 () Bool)

(declare-fun b_and!188083 () Bool)

(assert (=> b!2475890 (= tp!791797 b_and!188083)))

(declare-fun b!2475889 () Bool)

(declare-fun e!1570792 () Bool)

(declare-fun e!1570793 () Bool)

(assert (=> b!2475889 (= e!1570792 e!1570793)))

(declare-fun e!1570796 () Bool)

(declare-fun e!1570800 () Bool)

(assert (=> b!2475890 (= e!1570796 (and e!1570800 tp!791797))))

(declare-fun b!2475891 () Bool)

(declare-fun res!1048276 () Bool)

(declare-fun e!1570798 () Bool)

(assert (=> b!2475891 (=> (not res!1048276) (not e!1570798))))

(declare-datatypes ((array!11425 0))(
  ( (array!11426 (arr!5090 (Array (_ BitVec 32) (_ BitVec 64))) (size!22509 (_ BitVec 32))) )
))
(declare-datatypes ((K!5210 0))(
  ( (K!5211 (val!8643 Int)) )
))
(declare-datatypes ((V!5412 0))(
  ( (V!5413 (val!8644 Int)) )
))
(declare-datatypes ((tuple2!28270 0))(
  ( (tuple2!28271 (_1!16676 K!5210) (_2!16676 V!5412)) )
))
(declare-datatypes ((List!29017 0))(
  ( (Nil!28917) (Cons!28917 (h!34318 tuple2!28270) (t!210652 List!29017)) )
))
(declare-datatypes ((array!11427 0))(
  ( (array!11428 (arr!5091 (Array (_ BitVec 32) List!29017)) (size!22510 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6500 0))(
  ( (LongMapFixedSize!6501 (defaultEntry!3624 Int) (mask!8364 (_ BitVec 32)) (extraKeys!3498 (_ BitVec 32)) (zeroValue!3508 List!29017) (minValue!3508 List!29017) (_size!6547 (_ BitVec 32)) (_keys!3547 array!11425) (_values!3530 array!11427) (_vacant!3311 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12817 0))(
  ( (Cell!12818 (v!31164 LongMapFixedSize!6500)) )
))
(declare-datatypes ((MutLongMap!3250 0))(
  ( (LongMap!3250 (underlying!6707 Cell!12817)) (MutLongMapExt!3249 (__x!18656 Int)) )
))
(declare-datatypes ((Cell!12819 0))(
  ( (Cell!12820 (v!31165 MutLongMap!3250)) )
))
(declare-datatypes ((Hashable!3160 0))(
  ( (HashableExt!3159 (__x!18657 Int)) )
))
(declare-datatypes ((MutableMap!3160 0))(
  ( (MutableMapExt!3159 (__x!18658 Int)) (HashMap!3160 (underlying!6708 Cell!12819) (hashF!5091 Hashable!3160) (_size!6548 (_ BitVec 32)) (defaultValue!3322 Int)) )
))
(declare-datatypes ((tuple2!28272 0))(
  ( (tuple2!28273 (_1!16677 Bool) (_2!16677 MutableMap!3160)) )
))
(declare-fun lt!884173 () tuple2!28272)

(assert (=> b!2475891 (= res!1048276 (_1!16677 lt!884173))))

(declare-fun mapNonEmpty!15159 () Bool)

(declare-fun mapRes!15159 () Bool)

(declare-fun tp!791801 () Bool)

(declare-fun tp!791799 () Bool)

(assert (=> mapNonEmpty!15159 (= mapRes!15159 (and tp!791801 tp!791799))))

(declare-fun mapValue!15159 () List!29017)

(declare-fun thiss!47892 () MutableMap!3160)

(declare-fun mapRest!15159 () (Array (_ BitVec 32) List!29017))

(declare-fun mapKey!15159 () (_ BitVec 32))

(assert (=> mapNonEmpty!15159 (= (arr!5091 (_values!3530 (v!31164 (underlying!6707 (v!31165 (underlying!6708 thiss!47892)))))) (store mapRest!15159 mapKey!15159 mapValue!15159))))

(declare-fun b!2475892 () Bool)

(declare-fun e!1570797 () Bool)

(assert (=> b!2475892 (= e!1570797 e!1570798)))

(declare-fun res!1048274 () Bool)

(assert (=> b!2475892 (=> (not res!1048274) (not e!1570798))))

(declare-fun valid!2448 (MutableMap!3160) Bool)

(assert (=> b!2475892 (= res!1048274 (valid!2448 (_2!16677 lt!884173)))))

(declare-fun key!7256 () K!5210)

(declare-fun remove!65 (MutableMap!3160 K!5210) tuple2!28272)

(assert (=> b!2475892 (= lt!884173 (remove!65 thiss!47892 key!7256))))

(declare-fun b!2475893 () Bool)

(declare-fun lt!884172 () MutLongMap!3250)

(get-info :version)

(assert (=> b!2475893 (= e!1570800 (and e!1570792 ((_ is LongMap!3250) lt!884172)))))

(assert (=> b!2475893 (= lt!884172 (v!31165 (underlying!6708 thiss!47892)))))

(declare-fun b!2475894 () Bool)

(declare-fun e!1570799 () Bool)

(assert (=> b!2475894 (= e!1570793 e!1570799)))

(declare-fun b!2475895 () Bool)

(declare-fun res!1048275 () Bool)

(assert (=> b!2475895 (=> (not res!1048275) (not e!1570797))))

(assert (=> b!2475895 (= res!1048275 ((_ is MutableMapExt!3159) thiss!47892))))

(declare-fun b!2475896 () Bool)

(declare-fun e!1570794 () Bool)

(declare-fun tp!791796 () Bool)

(assert (=> b!2475896 (= e!1570794 (and tp!791796 mapRes!15159))))

(declare-fun condMapEmpty!15159 () Bool)

(declare-fun mapDefault!15159 () List!29017)

(assert (=> b!2475896 (= condMapEmpty!15159 (= (arr!5091 (_values!3530 (v!31164 (underlying!6707 (v!31165 (underlying!6708 thiss!47892)))))) ((as const (Array (_ BitVec 32) List!29017)) mapDefault!15159)))))

(declare-fun res!1048277 () Bool)

(assert (=> start!241478 (=> (not res!1048277) (not e!1570797))))

(assert (=> start!241478 (= res!1048277 (valid!2448 thiss!47892))))

(assert (=> start!241478 e!1570797))

(assert (=> start!241478 e!1570796))

(declare-fun tp_is_empty!11991 () Bool)

(assert (=> start!241478 tp_is_empty!11991))

(declare-fun mapIsEmpty!15159 () Bool)

(assert (=> mapIsEmpty!15159 mapRes!15159))

(declare-fun b!2475897 () Bool)

(assert (=> b!2475897 (= e!1570798 false)))

(declare-datatypes ((ListMap!921 0))(
  ( (ListMap!922 (toList!1436 List!29017)) )
))
(declare-fun lt!884174 () ListMap!921)

(declare-fun abstractMap!110 (MutableMap!3160) ListMap!921)

(assert (=> b!2475897 (= lt!884174 (abstractMap!110 (_2!16677 lt!884173)))))

(declare-fun tp!791798 () Bool)

(declare-fun tp!791795 () Bool)

(declare-fun array_inv!3651 (array!11425) Bool)

(declare-fun array_inv!3652 (array!11427) Bool)

(assert (=> b!2475898 (= e!1570799 (and tp!791800 tp!791795 tp!791798 (array_inv!3651 (_keys!3547 (v!31164 (underlying!6707 (v!31165 (underlying!6708 thiss!47892)))))) (array_inv!3652 (_values!3530 (v!31164 (underlying!6707 (v!31165 (underlying!6708 thiss!47892)))))) e!1570794))))

(assert (= (and start!241478 res!1048277) b!2475895))

(assert (= (and b!2475895 res!1048275) b!2475892))

(assert (= (and b!2475892 res!1048274) b!2475891))

(assert (= (and b!2475891 res!1048276) b!2475897))

(assert (= (and b!2475896 condMapEmpty!15159) mapIsEmpty!15159))

(assert (= (and b!2475896 (not condMapEmpty!15159)) mapNonEmpty!15159))

(assert (= b!2475898 b!2475896))

(assert (= b!2475894 b!2475898))

(assert (= b!2475889 b!2475894))

(assert (= (and b!2475893 ((_ is LongMap!3250) (v!31165 (underlying!6708 thiss!47892)))) b!2475889))

(assert (= b!2475890 b!2475893))

(assert (= (and start!241478 ((_ is HashMap!3160) thiss!47892)) b!2475890))

(declare-fun m!2844049 () Bool)

(assert (=> b!2475897 m!2844049))

(declare-fun m!2844051 () Bool)

(assert (=> start!241478 m!2844051))

(declare-fun m!2844053 () Bool)

(assert (=> b!2475898 m!2844053))

(declare-fun m!2844055 () Bool)

(assert (=> b!2475898 m!2844055))

(declare-fun m!2844057 () Bool)

(assert (=> b!2475892 m!2844057))

(declare-fun m!2844059 () Bool)

(assert (=> b!2475892 m!2844059))

(declare-fun m!2844061 () Bool)

(assert (=> mapNonEmpty!15159 m!2844061))

(check-sat (not b!2475898) tp_is_empty!11991 (not b_next!72561) b_and!188083 (not b!2475892) (not b_next!72563) (not start!241478) b_and!188081 (not b!2475896) (not b!2475897) (not mapNonEmpty!15159))
(check-sat b_and!188083 b_and!188081 (not b_next!72563) (not b_next!72561))
