; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16250 () Bool)

(assert start!16250)

(declare-fun b!161958 () Bool)

(declare-fun b_free!3699 () Bool)

(declare-fun b_next!3699 () Bool)

(assert (=> b!161958 (= b_free!3699 (not b_next!3699))))

(declare-fun tp!13666 () Bool)

(declare-fun b_and!10131 () Bool)

(assert (=> b!161958 (= tp!13666 b_and!10131)))

(declare-fun b!161955 () Bool)

(declare-fun e!106005 () Bool)

(declare-fun tp_is_empty!3501 () Bool)

(assert (=> b!161955 (= e!106005 tp_is_empty!3501)))

(declare-fun b!161956 () Bool)

(declare-fun e!106002 () Bool)

(declare-fun mapRes!5939 () Bool)

(assert (=> b!161956 (= e!106002 (and e!106005 mapRes!5939))))

(declare-fun condMapEmpty!5939 () Bool)

(declare-datatypes ((V!4315 0))(
  ( (V!4316 (val!1795 Int)) )
))
(declare-datatypes ((ValueCell!1407 0))(
  ( (ValueCellFull!1407 (v!3656 V!4315)) (EmptyCell!1407) )
))
(declare-datatypes ((array!6080 0))(
  ( (array!6081 (arr!2884 (Array (_ BitVec 32) (_ BitVec 64))) (size!3168 (_ BitVec 32))) )
))
(declare-datatypes ((array!6082 0))(
  ( (array!6083 (arr!2885 (Array (_ BitVec 32) ValueCell!1407)) (size!3169 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1722 0))(
  ( (LongMapFixedSize!1723 (defaultEntry!3303 Int) (mask!7911 (_ BitVec 32)) (extraKeys!3044 (_ BitVec 32)) (zeroValue!3146 V!4315) (minValue!3146 V!4315) (_size!910 (_ BitVec 32)) (_keys!5104 array!6080) (_values!3286 array!6082) (_vacant!910 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1722)

(declare-fun mapDefault!5939 () ValueCell!1407)

(assert (=> b!161956 (= condMapEmpty!5939 (= (arr!2885 (_values!3286 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1407)) mapDefault!5939)))))

(declare-fun b!161957 () Bool)

(declare-fun e!106003 () Bool)

(assert (=> b!161957 (= e!106003 tp_is_empty!3501)))

(declare-fun e!106000 () Bool)

(declare-fun array_inv!1835 (array!6080) Bool)

(declare-fun array_inv!1836 (array!6082) Bool)

(assert (=> b!161958 (= e!106000 (and tp!13666 tp_is_empty!3501 (array_inv!1835 (_keys!5104 thiss!1248)) (array_inv!1836 (_values!3286 thiss!1248)) e!106002))))

(declare-fun res!76744 () Bool)

(declare-fun e!106006 () Bool)

(assert (=> start!16250 (=> (not res!76744) (not e!106006))))

(declare-fun valid!774 (LongMapFixedSize!1722) Bool)

(assert (=> start!16250 (= res!76744 (valid!774 thiss!1248))))

(assert (=> start!16250 e!106006))

(assert (=> start!16250 e!106000))

(assert (=> start!16250 true))

(assert (=> start!16250 tp_is_empty!3501))

(declare-fun mapIsEmpty!5939 () Bool)

(assert (=> mapIsEmpty!5939 mapRes!5939))

(declare-fun b!161959 () Bool)

(declare-fun e!106007 () Bool)

(assert (=> b!161959 (= e!106007 false)))

(declare-fun lt!82367 () Bool)

(declare-datatypes ((tuple2!2970 0))(
  ( (tuple2!2971 (_1!1495 Bool) (_2!1495 LongMapFixedSize!1722)) )
))
(declare-fun lt!82366 () tuple2!2970)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2972 0))(
  ( (tuple2!2973 (_1!1496 (_ BitVec 64)) (_2!1496 V!4315)) )
))
(declare-datatypes ((List!2002 0))(
  ( (Nil!1999) (Cons!1998 (h!2611 tuple2!2972) (t!6812 List!2002)) )
))
(declare-datatypes ((ListLongMap!1969 0))(
  ( (ListLongMap!1970 (toList!1000 List!2002)) )
))
(declare-fun contains!1030 (ListLongMap!1969 (_ BitVec 64)) Bool)

(declare-fun map!1668 (LongMapFixedSize!1722) ListLongMap!1969)

(assert (=> b!161959 (= lt!82367 (contains!1030 (map!1668 (_2!1495 lt!82366)) key!828))))

(declare-fun b!161960 () Bool)

(declare-fun res!76745 () Bool)

(assert (=> b!161960 (=> (not res!76745) (not e!106007))))

(assert (=> b!161960 (= res!76745 (_1!1495 lt!82366))))

(declare-fun b!161961 () Bool)

(declare-fun e!106004 () Bool)

(assert (=> b!161961 (= e!106006 e!106004)))

(declare-fun res!76742 () Bool)

(assert (=> b!161961 (=> (not res!76742) (not e!106004))))

(declare-datatypes ((SeekEntryResult!376 0))(
  ( (MissingZero!376 (index!3672 (_ BitVec 32))) (Found!376 (index!3673 (_ BitVec 32))) (Intermediate!376 (undefined!1188 Bool) (index!3674 (_ BitVec 32)) (x!17904 (_ BitVec 32))) (Undefined!376) (MissingVacant!376 (index!3675 (_ BitVec 32))) )
))
(declare-fun lt!82365 () SeekEntryResult!376)

(get-info :version)

(assert (=> b!161961 (= res!76742 (and (not ((_ is Undefined!376) lt!82365)) ((_ is MissingVacant!376) lt!82365)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6080 (_ BitVec 32)) SeekEntryResult!376)

(assert (=> b!161961 (= lt!82365 (seekEntryOrOpen!0 key!828 (_keys!5104 thiss!1248) (mask!7911 thiss!1248)))))

(declare-fun mapNonEmpty!5939 () Bool)

(declare-fun tp!13667 () Bool)

(assert (=> mapNonEmpty!5939 (= mapRes!5939 (and tp!13667 e!106003))))

(declare-fun mapKey!5939 () (_ BitVec 32))

(declare-fun mapRest!5939 () (Array (_ BitVec 32) ValueCell!1407))

(declare-fun mapValue!5939 () ValueCell!1407)

(assert (=> mapNonEmpty!5939 (= (arr!2885 (_values!3286 thiss!1248)) (store mapRest!5939 mapKey!5939 mapValue!5939))))

(declare-fun b!161962 () Bool)

(declare-fun res!76743 () Bool)

(assert (=> b!161962 (=> (not res!76743) (not e!106006))))

(assert (=> b!161962 (= res!76743 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161963 () Bool)

(assert (=> b!161963 (= e!106004 e!106007)))

(declare-fun res!76741 () Bool)

(assert (=> b!161963 (=> (not res!76741) (not e!106007))))

(assert (=> b!161963 (= res!76741 (valid!774 (_2!1495 lt!82366)))))

(declare-fun v!309 () V!4315)

(declare-fun updateHelperNewKey!75 (LongMapFixedSize!1722 (_ BitVec 64) V!4315 (_ BitVec 32)) tuple2!2970)

(assert (=> b!161963 (= lt!82366 (updateHelperNewKey!75 thiss!1248 key!828 v!309 (index!3675 lt!82365)))))

(assert (= (and start!16250 res!76744) b!161962))

(assert (= (and b!161962 res!76743) b!161961))

(assert (= (and b!161961 res!76742) b!161963))

(assert (= (and b!161963 res!76741) b!161960))

(assert (= (and b!161960 res!76745) b!161959))

(assert (= (and b!161956 condMapEmpty!5939) mapIsEmpty!5939))

(assert (= (and b!161956 (not condMapEmpty!5939)) mapNonEmpty!5939))

(assert (= (and mapNonEmpty!5939 ((_ is ValueCellFull!1407) mapValue!5939)) b!161957))

(assert (= (and b!161956 ((_ is ValueCellFull!1407) mapDefault!5939)) b!161955))

(assert (= b!161958 b!161956))

(assert (= start!16250 b!161958))

(declare-fun m!193259 () Bool)

(assert (=> b!161958 m!193259))

(declare-fun m!193261 () Bool)

(assert (=> b!161958 m!193261))

(declare-fun m!193263 () Bool)

(assert (=> start!16250 m!193263))

(declare-fun m!193265 () Bool)

(assert (=> mapNonEmpty!5939 m!193265))

(declare-fun m!193267 () Bool)

(assert (=> b!161961 m!193267))

(declare-fun m!193269 () Bool)

(assert (=> b!161959 m!193269))

(assert (=> b!161959 m!193269))

(declare-fun m!193271 () Bool)

(assert (=> b!161959 m!193271))

(declare-fun m!193273 () Bool)

(assert (=> b!161963 m!193273))

(declare-fun m!193275 () Bool)

(assert (=> b!161963 m!193275))

(check-sat (not start!16250) b_and!10131 (not b_next!3699) (not mapNonEmpty!5939) (not b!161963) tp_is_empty!3501 (not b!161958) (not b!161961) (not b!161959))
(check-sat b_and!10131 (not b_next!3699))
