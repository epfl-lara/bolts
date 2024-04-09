; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16244 () Bool)

(assert start!16244)

(declare-fun b!161874 () Bool)

(declare-fun b_free!3693 () Bool)

(declare-fun b_next!3693 () Bool)

(assert (=> b!161874 (= b_free!3693 (not b_next!3693))))

(declare-fun tp!13649 () Bool)

(declare-fun b_and!10125 () Bool)

(assert (=> b!161874 (= tp!13649 b_and!10125)))

(declare-fun tp_is_empty!3495 () Bool)

(declare-fun e!105929 () Bool)

(declare-datatypes ((V!4307 0))(
  ( (V!4308 (val!1792 Int)) )
))
(declare-datatypes ((ValueCell!1404 0))(
  ( (ValueCellFull!1404 (v!3653 V!4307)) (EmptyCell!1404) )
))
(declare-datatypes ((array!6068 0))(
  ( (array!6069 (arr!2878 (Array (_ BitVec 32) (_ BitVec 64))) (size!3162 (_ BitVec 32))) )
))
(declare-datatypes ((array!6070 0))(
  ( (array!6071 (arr!2879 (Array (_ BitVec 32) ValueCell!1404)) (size!3163 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1716 0))(
  ( (LongMapFixedSize!1717 (defaultEntry!3300 Int) (mask!7906 (_ BitVec 32)) (extraKeys!3041 (_ BitVec 32)) (zeroValue!3143 V!4307) (minValue!3143 V!4307) (_size!907 (_ BitVec 32)) (_keys!5101 array!6068) (_values!3283 array!6070) (_vacant!907 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1716)

(declare-fun e!105935 () Bool)

(declare-fun array_inv!1831 (array!6068) Bool)

(declare-fun array_inv!1832 (array!6070) Bool)

(assert (=> b!161874 (= e!105929 (and tp!13649 tp_is_empty!3495 (array_inv!1831 (_keys!5101 thiss!1248)) (array_inv!1832 (_values!3283 thiss!1248)) e!105935))))

(declare-fun b!161875 () Bool)

(declare-fun e!105934 () Bool)

(assert (=> b!161875 (= e!105934 tp_is_empty!3495)))

(declare-fun b!161876 () Bool)

(declare-fun mapRes!5930 () Bool)

(assert (=> b!161876 (= e!105935 (and e!105934 mapRes!5930))))

(declare-fun condMapEmpty!5930 () Bool)

(declare-fun mapDefault!5930 () ValueCell!1404)

(assert (=> b!161876 (= condMapEmpty!5930 (= (arr!2879 (_values!3283 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1404)) mapDefault!5930)))))

(declare-fun res!76698 () Bool)

(declare-fun e!105928 () Bool)

(assert (=> start!16244 (=> (not res!76698) (not e!105928))))

(declare-fun valid!773 (LongMapFixedSize!1716) Bool)

(assert (=> start!16244 (= res!76698 (valid!773 thiss!1248))))

(assert (=> start!16244 e!105928))

(assert (=> start!16244 e!105929))

(assert (=> start!16244 true))

(assert (=> start!16244 tp_is_empty!3495))

(declare-fun b!161877 () Bool)

(declare-fun e!105933 () Bool)

(assert (=> b!161877 (= e!105933 false)))

(declare-fun lt!82340 () Bool)

(declare-datatypes ((tuple2!2962 0))(
  ( (tuple2!2963 (_1!1491 Bool) (_2!1491 LongMapFixedSize!1716)) )
))
(declare-fun lt!82338 () tuple2!2962)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2964 0))(
  ( (tuple2!2965 (_1!1492 (_ BitVec 64)) (_2!1492 V!4307)) )
))
(declare-datatypes ((List!2000 0))(
  ( (Nil!1997) (Cons!1996 (h!2609 tuple2!2964) (t!6810 List!2000)) )
))
(declare-datatypes ((ListLongMap!1965 0))(
  ( (ListLongMap!1966 (toList!998 List!2000)) )
))
(declare-fun contains!1028 (ListLongMap!1965 (_ BitVec 64)) Bool)

(declare-fun map!1664 (LongMapFixedSize!1716) ListLongMap!1965)

(assert (=> b!161877 (= lt!82340 (contains!1028 (map!1664 (_2!1491 lt!82338)) key!828))))

(declare-fun b!161878 () Bool)

(declare-fun res!76696 () Bool)

(assert (=> b!161878 (=> (not res!76696) (not e!105933))))

(assert (=> b!161878 (= res!76696 (_1!1491 lt!82338))))

(declare-fun b!161879 () Bool)

(declare-fun e!105931 () Bool)

(assert (=> b!161879 (= e!105928 e!105931)))

(declare-fun res!76699 () Bool)

(assert (=> b!161879 (=> (not res!76699) (not e!105931))))

(declare-datatypes ((SeekEntryResult!375 0))(
  ( (MissingZero!375 (index!3668 (_ BitVec 32))) (Found!375 (index!3669 (_ BitVec 32))) (Intermediate!375 (undefined!1187 Bool) (index!3670 (_ BitVec 32)) (x!17895 (_ BitVec 32))) (Undefined!375) (MissingVacant!375 (index!3671 (_ BitVec 32))) )
))
(declare-fun lt!82339 () SeekEntryResult!375)

(get-info :version)

(assert (=> b!161879 (= res!76699 (and (not ((_ is Undefined!375) lt!82339)) ((_ is MissingVacant!375) lt!82339)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6068 (_ BitVec 32)) SeekEntryResult!375)

(assert (=> b!161879 (= lt!82339 (seekEntryOrOpen!0 key!828 (_keys!5101 thiss!1248) (mask!7906 thiss!1248)))))

(declare-fun b!161880 () Bool)

(declare-fun res!76697 () Bool)

(assert (=> b!161880 (=> (not res!76697) (not e!105928))))

(assert (=> b!161880 (= res!76697 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161881 () Bool)

(assert (=> b!161881 (= e!105931 e!105933)))

(declare-fun res!76700 () Bool)

(assert (=> b!161881 (=> (not res!76700) (not e!105933))))

(assert (=> b!161881 (= res!76700 (valid!773 (_2!1491 lt!82338)))))

(declare-fun v!309 () V!4307)

(declare-fun updateHelperNewKey!74 (LongMapFixedSize!1716 (_ BitVec 64) V!4307 (_ BitVec 32)) tuple2!2962)

(assert (=> b!161881 (= lt!82338 (updateHelperNewKey!74 thiss!1248 key!828 v!309 (index!3671 lt!82339)))))

(declare-fun mapIsEmpty!5930 () Bool)

(assert (=> mapIsEmpty!5930 mapRes!5930))

(declare-fun b!161882 () Bool)

(declare-fun e!105930 () Bool)

(assert (=> b!161882 (= e!105930 tp_is_empty!3495)))

(declare-fun mapNonEmpty!5930 () Bool)

(declare-fun tp!13648 () Bool)

(assert (=> mapNonEmpty!5930 (= mapRes!5930 (and tp!13648 e!105930))))

(declare-fun mapKey!5930 () (_ BitVec 32))

(declare-fun mapValue!5930 () ValueCell!1404)

(declare-fun mapRest!5930 () (Array (_ BitVec 32) ValueCell!1404))

(assert (=> mapNonEmpty!5930 (= (arr!2879 (_values!3283 thiss!1248)) (store mapRest!5930 mapKey!5930 mapValue!5930))))

(assert (= (and start!16244 res!76698) b!161880))

(assert (= (and b!161880 res!76697) b!161879))

(assert (= (and b!161879 res!76699) b!161881))

(assert (= (and b!161881 res!76700) b!161878))

(assert (= (and b!161878 res!76696) b!161877))

(assert (= (and b!161876 condMapEmpty!5930) mapIsEmpty!5930))

(assert (= (and b!161876 (not condMapEmpty!5930)) mapNonEmpty!5930))

(assert (= (and mapNonEmpty!5930 ((_ is ValueCellFull!1404) mapValue!5930)) b!161882))

(assert (= (and b!161876 ((_ is ValueCellFull!1404) mapDefault!5930)) b!161875))

(assert (= b!161874 b!161876))

(assert (= start!16244 b!161874))

(declare-fun m!193205 () Bool)

(assert (=> start!16244 m!193205))

(declare-fun m!193207 () Bool)

(assert (=> mapNonEmpty!5930 m!193207))

(declare-fun m!193209 () Bool)

(assert (=> b!161881 m!193209))

(declare-fun m!193211 () Bool)

(assert (=> b!161881 m!193211))

(declare-fun m!193213 () Bool)

(assert (=> b!161879 m!193213))

(declare-fun m!193215 () Bool)

(assert (=> b!161877 m!193215))

(assert (=> b!161877 m!193215))

(declare-fun m!193217 () Bool)

(assert (=> b!161877 m!193217))

(declare-fun m!193219 () Bool)

(assert (=> b!161874 m!193219))

(declare-fun m!193221 () Bool)

(assert (=> b!161874 m!193221))

(check-sat (not b!161881) (not mapNonEmpty!5930) b_and!10125 (not b!161877) (not start!16244) (not b!161879) tp_is_empty!3495 (not b_next!3693) (not b!161874))
(check-sat b_and!10125 (not b_next!3693))
