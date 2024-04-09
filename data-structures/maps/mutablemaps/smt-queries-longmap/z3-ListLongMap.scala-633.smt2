; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16160 () Bool)

(assert start!16160)

(declare-fun b!160804 () Bool)

(declare-fun b_free!3609 () Bool)

(declare-fun b_next!3609 () Bool)

(assert (=> b!160804 (= b_free!3609 (not b_next!3609))))

(declare-fun tp!13397 () Bool)

(declare-fun b_and!10041 () Bool)

(assert (=> b!160804 (= tp!13397 b_and!10041)))

(declare-fun e!105110 () Bool)

(declare-fun e!105113 () Bool)

(declare-datatypes ((V!4195 0))(
  ( (V!4196 (val!1750 Int)) )
))
(declare-datatypes ((ValueCell!1362 0))(
  ( (ValueCellFull!1362 (v!3611 V!4195)) (EmptyCell!1362) )
))
(declare-datatypes ((array!5900 0))(
  ( (array!5901 (arr!2794 (Array (_ BitVec 32) (_ BitVec 64))) (size!3078 (_ BitVec 32))) )
))
(declare-datatypes ((array!5902 0))(
  ( (array!5903 (arr!2795 (Array (_ BitVec 32) ValueCell!1362)) (size!3079 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1632 0))(
  ( (LongMapFixedSize!1633 (defaultEntry!3258 Int) (mask!7836 (_ BitVec 32)) (extraKeys!2999 (_ BitVec 32)) (zeroValue!3101 V!4195) (minValue!3101 V!4195) (_size!865 (_ BitVec 32)) (_keys!5059 array!5900) (_values!3241 array!5902) (_vacant!865 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1632)

(declare-fun tp_is_empty!3411 () Bool)

(declare-fun array_inv!1771 (array!5900) Bool)

(declare-fun array_inv!1772 (array!5902) Bool)

(assert (=> b!160804 (= e!105113 (and tp!13397 tp_is_empty!3411 (array_inv!1771 (_keys!5059 thiss!1248)) (array_inv!1772 (_values!3241 thiss!1248)) e!105110))))

(declare-fun b!160805 () Bool)

(declare-fun res!76221 () Bool)

(declare-fun e!105112 () Bool)

(assert (=> b!160805 (=> (not res!76221) (not e!105112))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5900 (_ BitVec 32)) Bool)

(assert (=> b!160805 (= res!76221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5059 thiss!1248) (mask!7836 thiss!1248)))))

(declare-fun mapNonEmpty!5804 () Bool)

(declare-fun mapRes!5804 () Bool)

(declare-fun tp!13396 () Bool)

(declare-fun e!105111 () Bool)

(assert (=> mapNonEmpty!5804 (= mapRes!5804 (and tp!13396 e!105111))))

(declare-fun mapValue!5804 () ValueCell!1362)

(declare-fun mapRest!5804 () (Array (_ BitVec 32) ValueCell!1362))

(declare-fun mapKey!5804 () (_ BitVec 32))

(assert (=> mapNonEmpty!5804 (= (arr!2795 (_values!3241 thiss!1248)) (store mapRest!5804 mapKey!5804 mapValue!5804))))

(declare-fun mapIsEmpty!5804 () Bool)

(assert (=> mapIsEmpty!5804 mapRes!5804))

(declare-fun b!160806 () Bool)

(assert (=> b!160806 (= e!105111 tp_is_empty!3411)))

(declare-fun b!160807 () Bool)

(declare-fun e!105108 () Bool)

(assert (=> b!160807 (= e!105108 tp_is_empty!3411)))

(declare-fun res!76220 () Bool)

(assert (=> start!16160 (=> (not res!76220) (not e!105112))))

(declare-fun valid!747 (LongMapFixedSize!1632) Bool)

(assert (=> start!16160 (= res!76220 (valid!747 thiss!1248))))

(assert (=> start!16160 e!105112))

(assert (=> start!16160 e!105113))

(assert (=> start!16160 true))

(declare-fun b!160808 () Bool)

(declare-fun res!76225 () Bool)

(assert (=> b!160808 (=> (not res!76225) (not e!105112))))

(assert (=> b!160808 (= res!76225 (and (= (size!3079 (_values!3241 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7836 thiss!1248))) (= (size!3078 (_keys!5059 thiss!1248)) (size!3079 (_values!3241 thiss!1248))) (bvsge (mask!7836 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2999 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2999 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160809 () Bool)

(declare-fun res!76223 () Bool)

(assert (=> b!160809 (=> (not res!76223) (not e!105112))))

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!349 0))(
  ( (MissingZero!349 (index!3564 (_ BitVec 32))) (Found!349 (index!3565 (_ BitVec 32))) (Intermediate!349 (undefined!1161 Bool) (index!3566 (_ BitVec 32)) (x!17757 (_ BitVec 32))) (Undefined!349) (MissingVacant!349 (index!3567 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5900 (_ BitVec 32)) SeekEntryResult!349)

(assert (=> b!160809 (= res!76223 ((_ is Undefined!349) (seekEntryOrOpen!0 key!828 (_keys!5059 thiss!1248) (mask!7836 thiss!1248))))))

(declare-fun b!160810 () Bool)

(declare-fun res!76222 () Bool)

(assert (=> b!160810 (=> (not res!76222) (not e!105112))))

(assert (=> b!160810 (= res!76222 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160811 () Bool)

(assert (=> b!160811 (= e!105112 false)))

(declare-fun lt!82148 () Bool)

(declare-datatypes ((List!1978 0))(
  ( (Nil!1975) (Cons!1974 (h!2587 (_ BitVec 64)) (t!6788 List!1978)) )
))
(declare-fun arrayNoDuplicates!0 (array!5900 (_ BitVec 32) List!1978) Bool)

(assert (=> b!160811 (= lt!82148 (arrayNoDuplicates!0 (_keys!5059 thiss!1248) #b00000000000000000000000000000000 Nil!1975))))

(declare-fun b!160812 () Bool)

(assert (=> b!160812 (= e!105110 (and e!105108 mapRes!5804))))

(declare-fun condMapEmpty!5804 () Bool)

(declare-fun mapDefault!5804 () ValueCell!1362)

(assert (=> b!160812 (= condMapEmpty!5804 (= (arr!2795 (_values!3241 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1362)) mapDefault!5804)))))

(declare-fun b!160813 () Bool)

(declare-fun res!76224 () Bool)

(assert (=> b!160813 (=> (not res!76224) (not e!105112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160813 (= res!76224 (validMask!0 (mask!7836 thiss!1248)))))

(declare-fun b!160814 () Bool)

(declare-fun res!76226 () Bool)

(assert (=> b!160814 (=> (not res!76226) (not e!105112))))

(declare-datatypes ((tuple2!2924 0))(
  ( (tuple2!2925 (_1!1472 (_ BitVec 64)) (_2!1472 V!4195)) )
))
(declare-datatypes ((List!1979 0))(
  ( (Nil!1976) (Cons!1975 (h!2588 tuple2!2924) (t!6789 List!1979)) )
))
(declare-datatypes ((ListLongMap!1933 0))(
  ( (ListLongMap!1934 (toList!982 List!1979)) )
))
(declare-fun contains!1012 (ListLongMap!1933 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!642 (array!5900 array!5902 (_ BitVec 32) (_ BitVec 32) V!4195 V!4195 (_ BitVec 32) Int) ListLongMap!1933)

(assert (=> b!160814 (= res!76226 (not (contains!1012 (getCurrentListMap!642 (_keys!5059 thiss!1248) (_values!3241 thiss!1248) (mask!7836 thiss!1248) (extraKeys!2999 thiss!1248) (zeroValue!3101 thiss!1248) (minValue!3101 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3258 thiss!1248)) key!828)))))

(assert (= (and start!16160 res!76220) b!160810))

(assert (= (and b!160810 res!76222) b!160809))

(assert (= (and b!160809 res!76223) b!160814))

(assert (= (and b!160814 res!76226) b!160813))

(assert (= (and b!160813 res!76224) b!160808))

(assert (= (and b!160808 res!76225) b!160805))

(assert (= (and b!160805 res!76221) b!160811))

(assert (= (and b!160812 condMapEmpty!5804) mapIsEmpty!5804))

(assert (= (and b!160812 (not condMapEmpty!5804)) mapNonEmpty!5804))

(assert (= (and mapNonEmpty!5804 ((_ is ValueCellFull!1362) mapValue!5804)) b!160806))

(assert (= (and b!160812 ((_ is ValueCellFull!1362) mapDefault!5804)) b!160807))

(assert (= b!160804 b!160812))

(assert (= start!16160 b!160804))

(declare-fun m!192535 () Bool)

(assert (=> start!16160 m!192535))

(declare-fun m!192537 () Bool)

(assert (=> b!160804 m!192537))

(declare-fun m!192539 () Bool)

(assert (=> b!160804 m!192539))

(declare-fun m!192541 () Bool)

(assert (=> b!160805 m!192541))

(declare-fun m!192543 () Bool)

(assert (=> b!160814 m!192543))

(assert (=> b!160814 m!192543))

(declare-fun m!192545 () Bool)

(assert (=> b!160814 m!192545))

(declare-fun m!192547 () Bool)

(assert (=> mapNonEmpty!5804 m!192547))

(declare-fun m!192549 () Bool)

(assert (=> b!160813 m!192549))

(declare-fun m!192551 () Bool)

(assert (=> b!160811 m!192551))

(declare-fun m!192553 () Bool)

(assert (=> b!160809 m!192553))

(check-sat b_and!10041 (not start!16160) (not b!160814) (not b!160811) (not b!160813) (not mapNonEmpty!5804) (not b!160804) (not b!160805) (not b_next!3609) (not b!160809) tp_is_empty!3411)
(check-sat b_and!10041 (not b_next!3609))
