; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16184 () Bool)

(assert start!16184)

(declare-fun b!161194 () Bool)

(declare-fun b_free!3633 () Bool)

(declare-fun b_next!3633 () Bool)

(assert (=> b!161194 (= b_free!3633 (not b_next!3633))))

(declare-fun tp!13468 () Bool)

(declare-fun b_and!10065 () Bool)

(assert (=> b!161194 (= tp!13468 b_and!10065)))

(declare-fun b!161190 () Bool)

(declare-fun e!105331 () Bool)

(declare-fun tp_is_empty!3435 () Bool)

(assert (=> b!161190 (= e!105331 tp_is_empty!3435)))

(declare-fun b!161191 () Bool)

(declare-datatypes ((Unit!4997 0))(
  ( (Unit!4998) )
))
(declare-fun e!105333 () Unit!4997)

(declare-fun Unit!4999 () Unit!4997)

(assert (=> b!161191 (= e!105333 Unit!4999)))

(declare-fun lt!82189 () Unit!4997)

(declare-datatypes ((V!4227 0))(
  ( (V!4228 (val!1762 Int)) )
))
(declare-datatypes ((ValueCell!1374 0))(
  ( (ValueCellFull!1374 (v!3623 V!4227)) (EmptyCell!1374) )
))
(declare-datatypes ((array!5948 0))(
  ( (array!5949 (arr!2818 (Array (_ BitVec 32) (_ BitVec 64))) (size!3102 (_ BitVec 32))) )
))
(declare-datatypes ((array!5950 0))(
  ( (array!5951 (arr!2819 (Array (_ BitVec 32) ValueCell!1374)) (size!3103 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1656 0))(
  ( (LongMapFixedSize!1657 (defaultEntry!3270 Int) (mask!7856 (_ BitVec 32)) (extraKeys!3011 (_ BitVec 32)) (zeroValue!3113 V!4227) (minValue!3113 V!4227) (_size!877 (_ BitVec 32)) (_keys!5071 array!5948) (_values!3253 array!5950) (_vacant!877 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1656)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!73 (array!5948 array!5950 (_ BitVec 32) (_ BitVec 32) V!4227 V!4227 (_ BitVec 64) Int) Unit!4997)

(assert (=> b!161191 (= lt!82189 (lemmaInListMapThenSeekEntryOrOpenFindsIt!73 (_keys!5071 thiss!1248) (_values!3253 thiss!1248) (mask!7856 thiss!1248) (extraKeys!3011 thiss!1248) (zeroValue!3113 thiss!1248) (minValue!3113 thiss!1248) key!828 (defaultEntry!3270 thiss!1248)))))

(assert (=> b!161191 false))

(declare-fun b!161192 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!72 (array!5948 array!5950 (_ BitVec 32) (_ BitVec 32) V!4227 V!4227 (_ BitVec 64) Int) Unit!4997)

(assert (=> b!161192 (= e!105333 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!72 (_keys!5071 thiss!1248) (_values!3253 thiss!1248) (mask!7856 thiss!1248) (extraKeys!3011 thiss!1248) (zeroValue!3113 thiss!1248) (minValue!3113 thiss!1248) key!828 (defaultEntry!3270 thiss!1248)))))

(declare-fun b!161193 () Bool)

(declare-fun e!105330 () Bool)

(assert (=> b!161193 (= e!105330 false)))

(declare-fun lt!82190 () Unit!4997)

(assert (=> b!161193 (= lt!82190 e!105333)))

(declare-fun c!29919 () Bool)

(declare-datatypes ((tuple2!2934 0))(
  ( (tuple2!2935 (_1!1477 (_ BitVec 64)) (_2!1477 V!4227)) )
))
(declare-datatypes ((List!1989 0))(
  ( (Nil!1986) (Cons!1985 (h!2598 tuple2!2934) (t!6799 List!1989)) )
))
(declare-datatypes ((ListLongMap!1943 0))(
  ( (ListLongMap!1944 (toList!987 List!1989)) )
))
(declare-fun contains!1017 (ListLongMap!1943 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!647 (array!5948 array!5950 (_ BitVec 32) (_ BitVec 32) V!4227 V!4227 (_ BitVec 32) Int) ListLongMap!1943)

(assert (=> b!161193 (= c!29919 (contains!1017 (getCurrentListMap!647 (_keys!5071 thiss!1248) (_values!3253 thiss!1248) (mask!7856 thiss!1248) (extraKeys!3011 thiss!1248) (zeroValue!3113 thiss!1248) (minValue!3113 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3270 thiss!1248)) key!828))))

(declare-fun b!161195 () Bool)

(declare-fun e!105334 () Bool)

(assert (=> b!161195 (= e!105334 tp_is_empty!3435)))

(declare-fun b!161196 () Bool)

(declare-fun res!76454 () Bool)

(assert (=> b!161196 (=> (not res!76454) (not e!105330))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!355 0))(
  ( (MissingZero!355 (index!3588 (_ BitVec 32))) (Found!355 (index!3589 (_ BitVec 32))) (Intermediate!355 (undefined!1167 Bool) (index!3590 (_ BitVec 32)) (x!17795 (_ BitVec 32))) (Undefined!355) (MissingVacant!355 (index!3591 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5948 (_ BitVec 32)) SeekEntryResult!355)

(assert (=> b!161196 (= res!76454 ((_ is Undefined!355) (seekEntryOrOpen!0 key!828 (_keys!5071 thiss!1248) (mask!7856 thiss!1248))))))

(declare-fun b!161197 () Bool)

(declare-fun e!105332 () Bool)

(declare-fun mapRes!5840 () Bool)

(assert (=> b!161197 (= e!105332 (and e!105331 mapRes!5840))))

(declare-fun condMapEmpty!5840 () Bool)

(declare-fun mapDefault!5840 () ValueCell!1374)

(assert (=> b!161197 (= condMapEmpty!5840 (= (arr!2819 (_values!3253 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1374)) mapDefault!5840)))))

(declare-fun mapNonEmpty!5840 () Bool)

(declare-fun tp!13469 () Bool)

(assert (=> mapNonEmpty!5840 (= mapRes!5840 (and tp!13469 e!105334))))

(declare-fun mapRest!5840 () (Array (_ BitVec 32) ValueCell!1374))

(declare-fun mapValue!5840 () ValueCell!1374)

(declare-fun mapKey!5840 () (_ BitVec 32))

(assert (=> mapNonEmpty!5840 (= (arr!2819 (_values!3253 thiss!1248)) (store mapRest!5840 mapKey!5840 mapValue!5840))))

(declare-fun res!76452 () Bool)

(assert (=> start!16184 (=> (not res!76452) (not e!105330))))

(declare-fun valid!752 (LongMapFixedSize!1656) Bool)

(assert (=> start!16184 (= res!76452 (valid!752 thiss!1248))))

(assert (=> start!16184 e!105330))

(declare-fun e!105335 () Bool)

(assert (=> start!16184 e!105335))

(assert (=> start!16184 true))

(declare-fun array_inv!1785 (array!5948) Bool)

(declare-fun array_inv!1786 (array!5950) Bool)

(assert (=> b!161194 (= e!105335 (and tp!13468 tp_is_empty!3435 (array_inv!1785 (_keys!5071 thiss!1248)) (array_inv!1786 (_values!3253 thiss!1248)) e!105332))))

(declare-fun b!161198 () Bool)

(declare-fun res!76453 () Bool)

(assert (=> b!161198 (=> (not res!76453) (not e!105330))))

(assert (=> b!161198 (= res!76453 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!5840 () Bool)

(assert (=> mapIsEmpty!5840 mapRes!5840))

(assert (= (and start!16184 res!76452) b!161198))

(assert (= (and b!161198 res!76453) b!161196))

(assert (= (and b!161196 res!76454) b!161193))

(assert (= (and b!161193 c!29919) b!161191))

(assert (= (and b!161193 (not c!29919)) b!161192))

(assert (= (and b!161197 condMapEmpty!5840) mapIsEmpty!5840))

(assert (= (and b!161197 (not condMapEmpty!5840)) mapNonEmpty!5840))

(assert (= (and mapNonEmpty!5840 ((_ is ValueCellFull!1374) mapValue!5840)) b!161195))

(assert (= (and b!161197 ((_ is ValueCellFull!1374) mapDefault!5840)) b!161190))

(assert (= b!161194 b!161197))

(assert (= start!16184 b!161194))

(declare-fun m!192773 () Bool)

(assert (=> mapNonEmpty!5840 m!192773))

(declare-fun m!192775 () Bool)

(assert (=> b!161193 m!192775))

(assert (=> b!161193 m!192775))

(declare-fun m!192777 () Bool)

(assert (=> b!161193 m!192777))

(declare-fun m!192779 () Bool)

(assert (=> b!161194 m!192779))

(declare-fun m!192781 () Bool)

(assert (=> b!161194 m!192781))

(declare-fun m!192783 () Bool)

(assert (=> b!161191 m!192783))

(declare-fun m!192785 () Bool)

(assert (=> b!161192 m!192785))

(declare-fun m!192787 () Bool)

(assert (=> start!16184 m!192787))

(declare-fun m!192789 () Bool)

(assert (=> b!161196 m!192789))

(check-sat (not b!161196) (not mapNonEmpty!5840) (not b!161191) (not b_next!3633) b_and!10065 tp_is_empty!3435 (not b!161194) (not start!16184) (not b!161193) (not b!161192))
(check-sat b_and!10065 (not b_next!3633))
