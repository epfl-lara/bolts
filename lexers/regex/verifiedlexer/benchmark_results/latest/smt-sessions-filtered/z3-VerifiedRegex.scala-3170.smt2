; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185566 () Bool)

(assert start!185566)

(declare-fun b!1858906 () Bool)

(declare-fun b_free!51981 () Bool)

(declare-fun b_next!52685 () Bool)

(assert (=> b!1858906 (= b_free!51981 (not b_next!52685))))

(declare-fun tp!529898 () Bool)

(declare-fun b_and!144249 () Bool)

(assert (=> b!1858906 (= tp!529898 b_and!144249)))

(declare-fun e!1187087 () Bool)

(declare-fun e!1187090 () Bool)

(declare-fun tp_is_empty!8587 () Bool)

(declare-datatypes ((V!3893 0))(
  ( (V!3894 (val!5896 Int)) )
))
(declare-datatypes ((array!6571 0))(
  ( (array!6572 (arr!2918 (Array (_ BitVec 32) (_ BitVec 64))) (size!16303 (_ BitVec 32))) )
))
(declare-datatypes ((array!6573 0))(
  ( (array!6574 (arr!2919 (Array (_ BitVec 32) V!3893)) (size!16304 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3820 0))(
  ( (LongMapFixedSize!3821 (defaultEntry!2275 Int) (mask!5629 (_ BitVec 32)) (extraKeys!2158 (_ BitVec 32)) (zeroValue!2168 V!3893) (minValue!2168 V!3893) (_size!3888 (_ BitVec 32)) (_keys!2207 array!6571) (_values!2190 array!6573) (_vacant!1971 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7499 0))(
  ( (Cell!7500 (v!26055 LongMapFixedSize!3820)) )
))
(declare-datatypes ((MutLongMap!1910 0))(
  ( (LongMap!1910 (underlying!4028 Cell!7499)) (MutLongMapExt!1909 (__x!12979 Int)) )
))
(declare-fun thiss!47585 () MutLongMap!1910)

(declare-fun array_inv!2099 (array!6571) Bool)

(declare-fun array_inv!2100 (array!6573) Bool)

(assert (=> b!1858906 (= e!1187087 (and tp!529898 tp_is_empty!8587 (array_inv!2099 (_keys!2207 (v!26055 (underlying!4028 thiss!47585)))) (array_inv!2100 (_values!2190 (v!26055 (underlying!4028 thiss!47585)))) e!1187090))))

(declare-fun b!1858907 () Bool)

(declare-fun e!1187092 () Bool)

(assert (=> b!1858907 (= e!1187092 e!1187087)))

(declare-fun b!1858908 () Bool)

(declare-fun e!1187093 () Bool)

(assert (=> b!1858908 (= e!1187093 e!1187092)))

(declare-fun mapIsEmpty!8878 () Bool)

(declare-fun mapRes!8878 () Bool)

(assert (=> mapIsEmpty!8878 mapRes!8878))

(declare-fun b!1858909 () Bool)

(declare-fun res!832633 () Bool)

(declare-fun e!1187088 () Bool)

(assert (=> b!1858909 (=> (not res!832633) (not e!1187088))))

(declare-fun valid!1538 (MutLongMap!1910) Bool)

(assert (=> b!1858909 (= res!832633 (valid!1538 thiss!47585))))

(declare-fun mapNonEmpty!8878 () Bool)

(declare-fun tp!529899 () Bool)

(assert (=> mapNonEmpty!8878 (= mapRes!8878 (and tp!529899 tp_is_empty!8587))))

(declare-fun mapRest!8878 () (Array (_ BitVec 32) V!3893))

(declare-fun mapValue!8878 () V!3893)

(declare-fun mapKey!8878 () (_ BitVec 32))

(assert (=> mapNonEmpty!8878 (= (arr!2919 (_values!2190 (v!26055 (underlying!4028 thiss!47585)))) (store mapRest!8878 mapKey!8878 mapValue!8878))))

(declare-fun b!1858905 () Bool)

(declare-fun e!1187089 () Bool)

(assert (=> b!1858905 (= e!1187089 false)))

(declare-fun lt!717355 () Bool)

(declare-datatypes ((tuple2!19882 0))(
  ( (tuple2!19883 (_1!11368 Bool) (_2!11368 MutLongMap!1910)) )
))
(declare-fun lt!717356 () tuple2!19882)

(assert (=> b!1858905 (= lt!717355 (valid!1538 (_2!11368 lt!717356)))))

(declare-fun res!832632 () Bool)

(assert (=> start!185566 (=> (not res!832632) (not e!1187088))))

(get-info :version)

(assert (=> start!185566 (= res!832632 ((_ is MutLongMapExt!1909) thiss!47585))))

(assert (=> start!185566 e!1187088))

(assert (=> start!185566 e!1187093))

(assert (=> start!185566 true))

(declare-fun b!1858910 () Bool)

(assert (=> b!1858910 (= e!1187088 e!1187089)))

(declare-fun res!832634 () Bool)

(assert (=> b!1858910 (=> (not res!832634) (not e!1187089))))

(assert (=> b!1858910 (= res!832634 ((_ is MutLongMapExt!1909) (_2!11368 lt!717356)))))

(declare-fun key!7116 () (_ BitVec 64))

(declare-fun choose!11689 (MutLongMap!1910 (_ BitVec 64)) tuple2!19882)

(assert (=> b!1858910 (= lt!717356 (choose!11689 thiss!47585 key!7116))))

(declare-fun b!1858911 () Bool)

(assert (=> b!1858911 (= e!1187090 (and tp_is_empty!8587 mapRes!8878))))

(declare-fun condMapEmpty!8878 () Bool)

(declare-fun mapDefault!8878 () V!3893)

(assert (=> b!1858911 (= condMapEmpty!8878 (= (arr!2919 (_values!2190 (v!26055 (underlying!4028 thiss!47585)))) ((as const (Array (_ BitVec 32) V!3893)) mapDefault!8878)))))

(assert (= (and start!185566 res!832632) b!1858909))

(assert (= (and b!1858909 res!832633) b!1858910))

(assert (= (and b!1858910 res!832634) b!1858905))

(assert (= (and b!1858911 condMapEmpty!8878) mapIsEmpty!8878))

(assert (= (and b!1858911 (not condMapEmpty!8878)) mapNonEmpty!8878))

(assert (= b!1858906 b!1858911))

(assert (= b!1858907 b!1858906))

(assert (= b!1858908 b!1858907))

(assert (= (and start!185566 ((_ is LongMap!1910) thiss!47585)) b!1858908))

(declare-fun m!2282361 () Bool)

(assert (=> b!1858906 m!2282361))

(declare-fun m!2282363 () Bool)

(assert (=> b!1858906 m!2282363))

(declare-fun m!2282365 () Bool)

(assert (=> b!1858909 m!2282365))

(declare-fun m!2282367 () Bool)

(assert (=> b!1858905 m!2282367))

(declare-fun m!2282369 () Bool)

(assert (=> mapNonEmpty!8878 m!2282369))

(declare-fun m!2282371 () Bool)

(assert (=> b!1858910 m!2282371))

(check-sat (not mapNonEmpty!8878) (not b!1858905) (not b!1858906) (not b!1858910) (not b_next!52685) b_and!144249 tp_is_empty!8587 (not b!1858909))
(check-sat b_and!144249 (not b_next!52685))
