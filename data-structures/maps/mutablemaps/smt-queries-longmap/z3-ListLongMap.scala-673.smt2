; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16556 () Bool)

(assert start!16556)

(declare-fun b!164608 () Bool)

(declare-fun b_free!3849 () Bool)

(declare-fun b_next!3849 () Bool)

(assert (=> b!164608 (= b_free!3849 (not b_next!3849))))

(declare-fun tp!14148 () Bool)

(declare-fun b_and!10281 () Bool)

(assert (=> b!164608 (= tp!14148 b_and!10281)))

(declare-fun mapNonEmpty!6195 () Bool)

(declare-fun mapRes!6195 () Bool)

(declare-fun tp!14147 () Bool)

(declare-fun e!108000 () Bool)

(assert (=> mapNonEmpty!6195 (= mapRes!6195 (and tp!14147 e!108000))))

(declare-datatypes ((V!4515 0))(
  ( (V!4516 (val!1870 Int)) )
))
(declare-datatypes ((ValueCell!1482 0))(
  ( (ValueCellFull!1482 (v!3731 V!4515)) (EmptyCell!1482) )
))
(declare-fun mapRest!6195 () (Array (_ BitVec 32) ValueCell!1482))

(declare-fun mapKey!6195 () (_ BitVec 32))

(declare-datatypes ((array!6398 0))(
  ( (array!6399 (arr!3034 (Array (_ BitVec 32) (_ BitVec 64))) (size!3322 (_ BitVec 32))) )
))
(declare-datatypes ((array!6400 0))(
  ( (array!6401 (arr!3035 (Array (_ BitVec 32) ValueCell!1482)) (size!3323 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1872 0))(
  ( (LongMapFixedSize!1873 (defaultEntry!3378 Int) (mask!8073 (_ BitVec 32)) (extraKeys!3119 (_ BitVec 32)) (zeroValue!3221 V!4515) (minValue!3221 V!4515) (_size!985 (_ BitVec 32)) (_keys!5203 array!6398) (_values!3361 array!6400) (_vacant!985 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1872)

(declare-fun mapValue!6195 () ValueCell!1482)

(assert (=> mapNonEmpty!6195 (= (arr!3035 (_values!3361 thiss!1248)) (store mapRest!6195 mapKey!6195 mapValue!6195))))

(declare-fun b!164601 () Bool)

(declare-fun tp_is_empty!3651 () Bool)

(assert (=> b!164601 (= e!108000 tp_is_empty!3651)))

(declare-fun b!164602 () Bool)

(declare-fun res!77985 () Bool)

(declare-fun e!108004 () Bool)

(assert (=> b!164602 (=> (not res!77985) (not e!108004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6398 (_ BitVec 32)) Bool)

(assert (=> b!164602 (= res!77985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5203 thiss!1248) (mask!8073 thiss!1248)))))

(declare-fun b!164603 () Bool)

(declare-fun res!77984 () Bool)

(declare-fun e!107999 () Bool)

(assert (=> b!164603 (=> (not res!77984) (not e!107999))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!164603 (= res!77984 (not (= key!828 (bvneg key!828))))))

(declare-fun b!164604 () Bool)

(declare-fun res!77982 () Bool)

(assert (=> b!164604 (=> (not res!77982) (not e!108004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164604 (= res!77982 (validMask!0 (mask!8073 thiss!1248)))))

(declare-fun b!164605 () Bool)

(declare-fun res!77981 () Bool)

(assert (=> b!164605 (=> (not res!77981) (not e!108004))))

(assert (=> b!164605 (= res!77981 (and (= (size!3323 (_values!3361 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8073 thiss!1248))) (= (size!3322 (_keys!5203 thiss!1248)) (size!3323 (_values!3361 thiss!1248))) (bvsge (mask!8073 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3119 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3119 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164606 () Bool)

(declare-fun e!108002 () Bool)

(assert (=> b!164606 (= e!108002 tp_is_empty!3651)))

(declare-fun b!164607 () Bool)

(declare-fun e!107998 () Bool)

(assert (=> b!164607 (= e!107998 (and e!108002 mapRes!6195))))

(declare-fun condMapEmpty!6195 () Bool)

(declare-fun mapDefault!6195 () ValueCell!1482)

(assert (=> b!164607 (= condMapEmpty!6195 (= (arr!3035 (_values!3361 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1482)) mapDefault!6195)))))

(declare-fun mapIsEmpty!6195 () Bool)

(assert (=> mapIsEmpty!6195 mapRes!6195))

(declare-fun e!108001 () Bool)

(declare-fun array_inv!1937 (array!6398) Bool)

(declare-fun array_inv!1938 (array!6400) Bool)

(assert (=> b!164608 (= e!108001 (and tp!14148 tp_is_empty!3651 (array_inv!1937 (_keys!5203 thiss!1248)) (array_inv!1938 (_values!3361 thiss!1248)) e!107998))))

(declare-fun b!164609 () Bool)

(assert (=> b!164609 (= e!107999 e!108004)))

(declare-fun res!77979 () Bool)

(assert (=> b!164609 (=> (not res!77979) (not e!108004))))

(declare-datatypes ((SeekEntryResult!431 0))(
  ( (MissingZero!431 (index!3892 (_ BitVec 32))) (Found!431 (index!3893 (_ BitVec 32))) (Intermediate!431 (undefined!1243 Bool) (index!3894 (_ BitVec 32)) (x!18267 (_ BitVec 32))) (Undefined!431) (MissingVacant!431 (index!3895 (_ BitVec 32))) )
))
(declare-fun lt!82949 () SeekEntryResult!431)

(get-info :version)

(assert (=> b!164609 (= res!77979 (and (not ((_ is Undefined!431) lt!82949)) (not ((_ is MissingVacant!431) lt!82949)) (not ((_ is MissingZero!431) lt!82949)) ((_ is Found!431) lt!82949)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6398 (_ BitVec 32)) SeekEntryResult!431)

(assert (=> b!164609 (= lt!82949 (seekEntryOrOpen!0 key!828 (_keys!5203 thiss!1248) (mask!8073 thiss!1248)))))

(declare-fun b!164610 () Bool)

(declare-fun res!77983 () Bool)

(assert (=> b!164610 (=> (not res!77983) (not e!108004))))

(declare-datatypes ((tuple2!3032 0))(
  ( (tuple2!3033 (_1!1526 (_ BitVec 64)) (_2!1526 V!4515)) )
))
(declare-datatypes ((List!2038 0))(
  ( (Nil!2035) (Cons!2034 (h!2651 tuple2!3032) (t!6848 List!2038)) )
))
(declare-datatypes ((ListLongMap!2001 0))(
  ( (ListLongMap!2002 (toList!1016 List!2038)) )
))
(declare-fun contains!1052 (ListLongMap!2001 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!669 (array!6398 array!6400 (_ BitVec 32) (_ BitVec 32) V!4515 V!4515 (_ BitVec 32) Int) ListLongMap!2001)

(assert (=> b!164610 (= res!77983 (contains!1052 (getCurrentListMap!669 (_keys!5203 thiss!1248) (_values!3361 thiss!1248) (mask!8073 thiss!1248) (extraKeys!3119 thiss!1248) (zeroValue!3221 thiss!1248) (minValue!3221 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3378 thiss!1248)) key!828))))

(declare-fun b!164611 () Bool)

(assert (=> b!164611 (= e!108004 false)))

(declare-fun lt!82948 () Bool)

(declare-datatypes ((List!2039 0))(
  ( (Nil!2036) (Cons!2035 (h!2652 (_ BitVec 64)) (t!6849 List!2039)) )
))
(declare-fun arrayNoDuplicates!0 (array!6398 (_ BitVec 32) List!2039) Bool)

(assert (=> b!164611 (= lt!82948 (arrayNoDuplicates!0 (_keys!5203 thiss!1248) #b00000000000000000000000000000000 Nil!2036))))

(declare-fun res!77980 () Bool)

(assert (=> start!16556 (=> (not res!77980) (not e!107999))))

(declare-fun valid!826 (LongMapFixedSize!1872) Bool)

(assert (=> start!16556 (= res!77980 (valid!826 thiss!1248))))

(assert (=> start!16556 e!107999))

(assert (=> start!16556 e!108001))

(assert (=> start!16556 true))

(assert (= (and start!16556 res!77980) b!164603))

(assert (= (and b!164603 res!77984) b!164609))

(assert (= (and b!164609 res!77979) b!164610))

(assert (= (and b!164610 res!77983) b!164604))

(assert (= (and b!164604 res!77982) b!164605))

(assert (= (and b!164605 res!77981) b!164602))

(assert (= (and b!164602 res!77985) b!164611))

(assert (= (and b!164607 condMapEmpty!6195) mapIsEmpty!6195))

(assert (= (and b!164607 (not condMapEmpty!6195)) mapNonEmpty!6195))

(assert (= (and mapNonEmpty!6195 ((_ is ValueCellFull!1482) mapValue!6195)) b!164601))

(assert (= (and b!164607 ((_ is ValueCellFull!1482) mapDefault!6195)) b!164606))

(assert (= b!164608 b!164607))

(assert (= start!16556 b!164608))

(declare-fun m!194749 () Bool)

(assert (=> mapNonEmpty!6195 m!194749))

(declare-fun m!194751 () Bool)

(assert (=> b!164611 m!194751))

(declare-fun m!194753 () Bool)

(assert (=> b!164602 m!194753))

(declare-fun m!194755 () Bool)

(assert (=> b!164604 m!194755))

(declare-fun m!194757 () Bool)

(assert (=> start!16556 m!194757))

(declare-fun m!194759 () Bool)

(assert (=> b!164609 m!194759))

(declare-fun m!194761 () Bool)

(assert (=> b!164608 m!194761))

(declare-fun m!194763 () Bool)

(assert (=> b!164608 m!194763))

(declare-fun m!194765 () Bool)

(assert (=> b!164610 m!194765))

(assert (=> b!164610 m!194765))

(declare-fun m!194767 () Bool)

(assert (=> b!164610 m!194767))

(check-sat (not b!164611) (not start!16556) (not mapNonEmpty!6195) (not b!164604) tp_is_empty!3651 (not b!164608) (not b!164602) (not b!164609) (not b!164610) (not b_next!3849) b_and!10281)
(check-sat b_and!10281 (not b_next!3849))
