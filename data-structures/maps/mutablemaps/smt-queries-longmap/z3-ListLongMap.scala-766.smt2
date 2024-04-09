; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18078 () Bool)

(assert start!18078)

(declare-fun b!179835 () Bool)

(declare-fun b_free!4437 () Bool)

(declare-fun b_next!4437 () Bool)

(assert (=> b!179835 (= b_free!4437 (not b_next!4437))))

(declare-fun tp!16042 () Bool)

(declare-fun b_and!10989 () Bool)

(assert (=> b!179835 (= tp!16042 b_and!10989)))

(declare-fun mapIsEmpty!7207 () Bool)

(declare-fun mapRes!7207 () Bool)

(assert (=> mapIsEmpty!7207 mapRes!7207))

(declare-fun mapNonEmpty!7207 () Bool)

(declare-fun tp!16041 () Bool)

(declare-fun e!118447 () Bool)

(assert (=> mapNonEmpty!7207 (= mapRes!7207 (and tp!16041 e!118447))))

(declare-datatypes ((V!5259 0))(
  ( (V!5260 (val!2149 Int)) )
))
(declare-datatypes ((ValueCell!1761 0))(
  ( (ValueCellFull!1761 (v!4034 V!5259)) (EmptyCell!1761) )
))
(declare-fun mapValue!7207 () ValueCell!1761)

(declare-fun mapRest!7207 () (Array (_ BitVec 32) ValueCell!1761))

(declare-fun mapKey!7207 () (_ BitVec 32))

(declare-datatypes ((array!7586 0))(
  ( (array!7587 (arr!3592 (Array (_ BitVec 32) (_ BitVec 64))) (size!3900 (_ BitVec 32))) )
))
(declare-datatypes ((array!7588 0))(
  ( (array!7589 (arr!3593 (Array (_ BitVec 32) ValueCell!1761)) (size!3901 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2430 0))(
  ( (LongMapFixedSize!2431 (defaultEntry!3691 Int) (mask!8682 (_ BitVec 32)) (extraKeys!3428 (_ BitVec 32)) (zeroValue!3532 V!5259) (minValue!3532 V!5259) (_size!1264 (_ BitVec 32)) (_keys!5582 array!7586) (_values!3674 array!7588) (_vacant!1264 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2430)

(assert (=> mapNonEmpty!7207 (= (arr!3593 (_values!3674 thiss!1248)) (store mapRest!7207 mapKey!7207 mapValue!7207))))

(declare-fun b!179832 () Bool)

(declare-fun e!118444 () Bool)

(assert (=> b!179832 (= e!118444 false)))

(declare-fun lt!88863 () Bool)

(declare-datatypes ((List!2302 0))(
  ( (Nil!2299) (Cons!2298 (h!2923 (_ BitVec 64)) (t!7158 List!2302)) )
))
(declare-fun arrayNoDuplicates!0 (array!7586 (_ BitVec 32) List!2302) Bool)

(assert (=> b!179832 (= lt!88863 (arrayNoDuplicates!0 (_keys!5582 thiss!1248) #b00000000000000000000000000000000 Nil!2299))))

(declare-fun b!179833 () Bool)

(declare-fun res!85208 () Bool)

(assert (=> b!179833 (=> (not res!85208) (not e!118444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7586 (_ BitVec 32)) Bool)

(assert (=> b!179833 (= res!85208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5582 thiss!1248) (mask!8682 thiss!1248)))))

(declare-fun b!179834 () Bool)

(declare-fun res!85204 () Bool)

(assert (=> b!179834 (=> (not res!85204) (not e!118444))))

(assert (=> b!179834 (= res!85204 (and (= (size!3901 (_values!3674 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8682 thiss!1248))) (= (size!3900 (_keys!5582 thiss!1248)) (size!3901 (_values!3674 thiss!1248))) (bvsge (mask!8682 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3428 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3428 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun tp_is_empty!4209 () Bool)

(declare-fun e!118448 () Bool)

(declare-fun e!118449 () Bool)

(declare-fun array_inv!2303 (array!7586) Bool)

(declare-fun array_inv!2304 (array!7588) Bool)

(assert (=> b!179835 (= e!118448 (and tp!16042 tp_is_empty!4209 (array_inv!2303 (_keys!5582 thiss!1248)) (array_inv!2304 (_values!3674 thiss!1248)) e!118449))))

(declare-fun b!179836 () Bool)

(declare-fun res!85210 () Bool)

(assert (=> b!179836 (=> (not res!85210) (not e!118444))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3334 0))(
  ( (tuple2!3335 (_1!1677 (_ BitVec 64)) (_2!1677 V!5259)) )
))
(declare-datatypes ((List!2303 0))(
  ( (Nil!2300) (Cons!2299 (h!2924 tuple2!3334) (t!7159 List!2303)) )
))
(declare-datatypes ((ListLongMap!2275 0))(
  ( (ListLongMap!2276 (toList!1153 List!2303)) )
))
(declare-fun contains!1223 (ListLongMap!2275 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!800 (array!7586 array!7588 (_ BitVec 32) (_ BitVec 32) V!5259 V!5259 (_ BitVec 32) Int) ListLongMap!2275)

(assert (=> b!179836 (= res!85210 (not (contains!1223 (getCurrentListMap!800 (_keys!5582 thiss!1248) (_values!3674 thiss!1248) (mask!8682 thiss!1248) (extraKeys!3428 thiss!1248) (zeroValue!3532 thiss!1248) (minValue!3532 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3691 thiss!1248)) key!828)))))

(declare-fun b!179837 () Bool)

(assert (=> b!179837 (= e!118447 tp_is_empty!4209)))

(declare-fun b!179838 () Bool)

(declare-fun res!85209 () Bool)

(assert (=> b!179838 (=> (not res!85209) (not e!118444))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!179838 (= res!85209 (validMask!0 (mask!8682 thiss!1248)))))

(declare-fun res!85207 () Bool)

(assert (=> start!18078 (=> (not res!85207) (not e!118444))))

(declare-fun valid!1005 (LongMapFixedSize!2430) Bool)

(assert (=> start!18078 (= res!85207 (valid!1005 thiss!1248))))

(assert (=> start!18078 e!118444))

(assert (=> start!18078 e!118448))

(assert (=> start!18078 true))

(declare-fun b!179839 () Bool)

(declare-fun e!118445 () Bool)

(assert (=> b!179839 (= e!118445 tp_is_empty!4209)))

(declare-fun b!179840 () Bool)

(declare-fun res!85205 () Bool)

(assert (=> b!179840 (=> (not res!85205) (not e!118444))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!595 0))(
  ( (MissingZero!595 (index!4548 (_ BitVec 32))) (Found!595 (index!4549 (_ BitVec 32))) (Intermediate!595 (undefined!1407 Bool) (index!4550 (_ BitVec 32)) (x!19669 (_ BitVec 32))) (Undefined!595) (MissingVacant!595 (index!4551 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7586 (_ BitVec 32)) SeekEntryResult!595)

(assert (=> b!179840 (= res!85205 ((_ is Undefined!595) (seekEntryOrOpen!0 key!828 (_keys!5582 thiss!1248) (mask!8682 thiss!1248))))))

(declare-fun b!179841 () Bool)

(assert (=> b!179841 (= e!118449 (and e!118445 mapRes!7207))))

(declare-fun condMapEmpty!7207 () Bool)

(declare-fun mapDefault!7207 () ValueCell!1761)

(assert (=> b!179841 (= condMapEmpty!7207 (= (arr!3593 (_values!3674 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1761)) mapDefault!7207)))))

(declare-fun b!179842 () Bool)

(declare-fun res!85206 () Bool)

(assert (=> b!179842 (=> (not res!85206) (not e!118444))))

(assert (=> b!179842 (= res!85206 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!18078 res!85207) b!179842))

(assert (= (and b!179842 res!85206) b!179840))

(assert (= (and b!179840 res!85205) b!179836))

(assert (= (and b!179836 res!85210) b!179838))

(assert (= (and b!179838 res!85209) b!179834))

(assert (= (and b!179834 res!85204) b!179833))

(assert (= (and b!179833 res!85208) b!179832))

(assert (= (and b!179841 condMapEmpty!7207) mapIsEmpty!7207))

(assert (= (and b!179841 (not condMapEmpty!7207)) mapNonEmpty!7207))

(assert (= (and mapNonEmpty!7207 ((_ is ValueCellFull!1761) mapValue!7207)) b!179837))

(assert (= (and b!179841 ((_ is ValueCellFull!1761) mapDefault!7207)) b!179839))

(assert (= b!179835 b!179841))

(assert (= start!18078 b!179835))

(declare-fun m!207963 () Bool)

(assert (=> mapNonEmpty!7207 m!207963))

(declare-fun m!207965 () Bool)

(assert (=> start!18078 m!207965))

(declare-fun m!207967 () Bool)

(assert (=> b!179832 m!207967))

(declare-fun m!207969 () Bool)

(assert (=> b!179838 m!207969))

(declare-fun m!207971 () Bool)

(assert (=> b!179833 m!207971))

(declare-fun m!207973 () Bool)

(assert (=> b!179836 m!207973))

(assert (=> b!179836 m!207973))

(declare-fun m!207975 () Bool)

(assert (=> b!179836 m!207975))

(declare-fun m!207977 () Bool)

(assert (=> b!179840 m!207977))

(declare-fun m!207979 () Bool)

(assert (=> b!179835 m!207979))

(declare-fun m!207981 () Bool)

(assert (=> b!179835 m!207981))

(check-sat (not start!18078) (not b!179836) tp_is_empty!4209 (not b!179835) (not b!179832) (not b_next!4437) (not mapNonEmpty!7207) (not b!179838) b_and!10989 (not b!179840) (not b!179833))
(check-sat b_and!10989 (not b_next!4437))
