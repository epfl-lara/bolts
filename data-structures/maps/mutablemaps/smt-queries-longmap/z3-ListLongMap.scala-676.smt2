; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16574 () Bool)

(assert start!16574)

(declare-fun b!164901 () Bool)

(declare-fun b_free!3867 () Bool)

(declare-fun b_next!3867 () Bool)

(assert (=> b!164901 (= b_free!3867 (not b_next!3867))))

(declare-fun tp!14202 () Bool)

(declare-fun b_and!10299 () Bool)

(assert (=> b!164901 (= tp!14202 b_and!10299)))

(declare-fun b!164898 () Bool)

(declare-fun e!108191 () Bool)

(declare-fun e!108193 () Bool)

(declare-fun mapRes!6222 () Bool)

(assert (=> b!164898 (= e!108191 (and e!108193 mapRes!6222))))

(declare-fun condMapEmpty!6222 () Bool)

(declare-datatypes ((V!4539 0))(
  ( (V!4540 (val!1879 Int)) )
))
(declare-datatypes ((ValueCell!1491 0))(
  ( (ValueCellFull!1491 (v!3740 V!4539)) (EmptyCell!1491) )
))
(declare-datatypes ((array!6434 0))(
  ( (array!6435 (arr!3052 (Array (_ BitVec 32) (_ BitVec 64))) (size!3340 (_ BitVec 32))) )
))
(declare-datatypes ((array!6436 0))(
  ( (array!6437 (arr!3053 (Array (_ BitVec 32) ValueCell!1491)) (size!3341 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1890 0))(
  ( (LongMapFixedSize!1891 (defaultEntry!3387 Int) (mask!8088 (_ BitVec 32)) (extraKeys!3128 (_ BitVec 32)) (zeroValue!3230 V!4539) (minValue!3230 V!4539) (_size!994 (_ BitVec 32)) (_keys!5212 array!6434) (_values!3370 array!6436) (_vacant!994 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1890)

(declare-fun mapDefault!6222 () ValueCell!1491)

(assert (=> b!164898 (= condMapEmpty!6222 (= (arr!3053 (_values!3370 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1491)) mapDefault!6222)))))

(declare-fun b!164899 () Bool)

(declare-fun e!108192 () Bool)

(assert (=> b!164899 (= e!108192 false)))

(declare-fun lt!83003 () Bool)

(declare-datatypes ((List!2050 0))(
  ( (Nil!2047) (Cons!2046 (h!2663 (_ BitVec 64)) (t!6860 List!2050)) )
))
(declare-fun arrayNoDuplicates!0 (array!6434 (_ BitVec 32) List!2050) Bool)

(assert (=> b!164899 (= lt!83003 (arrayNoDuplicates!0 (_keys!5212 thiss!1248) #b00000000000000000000000000000000 Nil!2047))))

(declare-fun b!164900 () Bool)

(declare-fun res!78173 () Bool)

(assert (=> b!164900 (=> (not res!78173) (not e!108192))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3044 0))(
  ( (tuple2!3045 (_1!1532 (_ BitVec 64)) (_2!1532 V!4539)) )
))
(declare-datatypes ((List!2051 0))(
  ( (Nil!2048) (Cons!2047 (h!2664 tuple2!3044) (t!6861 List!2051)) )
))
(declare-datatypes ((ListLongMap!2013 0))(
  ( (ListLongMap!2014 (toList!1022 List!2051)) )
))
(declare-fun contains!1058 (ListLongMap!2013 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!675 (array!6434 array!6436 (_ BitVec 32) (_ BitVec 32) V!4539 V!4539 (_ BitVec 32) Int) ListLongMap!2013)

(assert (=> b!164900 (= res!78173 (contains!1058 (getCurrentListMap!675 (_keys!5212 thiss!1248) (_values!3370 thiss!1248) (mask!8088 thiss!1248) (extraKeys!3128 thiss!1248) (zeroValue!3230 thiss!1248) (minValue!3230 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3387 thiss!1248)) key!828))))

(declare-fun tp_is_empty!3669 () Bool)

(declare-fun e!108188 () Bool)

(declare-fun array_inv!1949 (array!6434) Bool)

(declare-fun array_inv!1950 (array!6436) Bool)

(assert (=> b!164901 (= e!108188 (and tp!14202 tp_is_empty!3669 (array_inv!1949 (_keys!5212 thiss!1248)) (array_inv!1950 (_values!3370 thiss!1248)) e!108191))))

(declare-fun b!164902 () Bool)

(declare-fun e!108187 () Bool)

(assert (=> b!164902 (= e!108187 e!108192)))

(declare-fun res!78169 () Bool)

(assert (=> b!164902 (=> (not res!78169) (not e!108192))))

(declare-datatypes ((SeekEntryResult!435 0))(
  ( (MissingZero!435 (index!3908 (_ BitVec 32))) (Found!435 (index!3909 (_ BitVec 32))) (Intermediate!435 (undefined!1247 Bool) (index!3910 (_ BitVec 32)) (x!18295 (_ BitVec 32))) (Undefined!435) (MissingVacant!435 (index!3911 (_ BitVec 32))) )
))
(declare-fun lt!83002 () SeekEntryResult!435)

(get-info :version)

(assert (=> b!164902 (= res!78169 (and (not ((_ is Undefined!435) lt!83002)) (not ((_ is MissingVacant!435) lt!83002)) (not ((_ is MissingZero!435) lt!83002)) ((_ is Found!435) lt!83002)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6434 (_ BitVec 32)) SeekEntryResult!435)

(assert (=> b!164902 (= lt!83002 (seekEntryOrOpen!0 key!828 (_keys!5212 thiss!1248) (mask!8088 thiss!1248)))))

(declare-fun b!164903 () Bool)

(declare-fun e!108189 () Bool)

(assert (=> b!164903 (= e!108189 tp_is_empty!3669)))

(declare-fun res!78170 () Bool)

(assert (=> start!16574 (=> (not res!78170) (not e!108187))))

(declare-fun valid!831 (LongMapFixedSize!1890) Bool)

(assert (=> start!16574 (= res!78170 (valid!831 thiss!1248))))

(assert (=> start!16574 e!108187))

(assert (=> start!16574 e!108188))

(assert (=> start!16574 true))

(declare-fun b!164904 () Bool)

(declare-fun res!78171 () Bool)

(assert (=> b!164904 (=> (not res!78171) (not e!108192))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6434 (_ BitVec 32)) Bool)

(assert (=> b!164904 (= res!78171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5212 thiss!1248) (mask!8088 thiss!1248)))))

(declare-fun b!164905 () Bool)

(assert (=> b!164905 (= e!108193 tp_is_empty!3669)))

(declare-fun mapNonEmpty!6222 () Bool)

(declare-fun tp!14201 () Bool)

(assert (=> mapNonEmpty!6222 (= mapRes!6222 (and tp!14201 e!108189))))

(declare-fun mapKey!6222 () (_ BitVec 32))

(declare-fun mapValue!6222 () ValueCell!1491)

(declare-fun mapRest!6222 () (Array (_ BitVec 32) ValueCell!1491))

(assert (=> mapNonEmpty!6222 (= (arr!3053 (_values!3370 thiss!1248)) (store mapRest!6222 mapKey!6222 mapValue!6222))))

(declare-fun b!164906 () Bool)

(declare-fun res!78172 () Bool)

(assert (=> b!164906 (=> (not res!78172) (not e!108192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164906 (= res!78172 (validMask!0 (mask!8088 thiss!1248)))))

(declare-fun mapIsEmpty!6222 () Bool)

(assert (=> mapIsEmpty!6222 mapRes!6222))

(declare-fun b!164907 () Bool)

(declare-fun res!78168 () Bool)

(assert (=> b!164907 (=> (not res!78168) (not e!108187))))

(assert (=> b!164907 (= res!78168 (not (= key!828 (bvneg key!828))))))

(declare-fun b!164908 () Bool)

(declare-fun res!78174 () Bool)

(assert (=> b!164908 (=> (not res!78174) (not e!108192))))

(assert (=> b!164908 (= res!78174 (and (= (size!3341 (_values!3370 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8088 thiss!1248))) (= (size!3340 (_keys!5212 thiss!1248)) (size!3341 (_values!3370 thiss!1248))) (bvsge (mask!8088 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3128 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3128 thiss!1248) #b00000000000000000000000000000011)))))

(assert (= (and start!16574 res!78170) b!164907))

(assert (= (and b!164907 res!78168) b!164902))

(assert (= (and b!164902 res!78169) b!164900))

(assert (= (and b!164900 res!78173) b!164906))

(assert (= (and b!164906 res!78172) b!164908))

(assert (= (and b!164908 res!78174) b!164904))

(assert (= (and b!164904 res!78171) b!164899))

(assert (= (and b!164898 condMapEmpty!6222) mapIsEmpty!6222))

(assert (= (and b!164898 (not condMapEmpty!6222)) mapNonEmpty!6222))

(assert (= (and mapNonEmpty!6222 ((_ is ValueCellFull!1491) mapValue!6222)) b!164903))

(assert (= (and b!164898 ((_ is ValueCellFull!1491) mapDefault!6222)) b!164905))

(assert (= b!164901 b!164898))

(assert (= start!16574 b!164901))

(declare-fun m!194929 () Bool)

(assert (=> b!164901 m!194929))

(declare-fun m!194931 () Bool)

(assert (=> b!164901 m!194931))

(declare-fun m!194933 () Bool)

(assert (=> start!16574 m!194933))

(declare-fun m!194935 () Bool)

(assert (=> b!164902 m!194935))

(declare-fun m!194937 () Bool)

(assert (=> mapNonEmpty!6222 m!194937))

(declare-fun m!194939 () Bool)

(assert (=> b!164899 m!194939))

(declare-fun m!194941 () Bool)

(assert (=> b!164900 m!194941))

(assert (=> b!164900 m!194941))

(declare-fun m!194943 () Bool)

(assert (=> b!164900 m!194943))

(declare-fun m!194945 () Bool)

(assert (=> b!164904 m!194945))

(declare-fun m!194947 () Bool)

(assert (=> b!164906 m!194947))

(check-sat (not b!164902) (not start!16574) tp_is_empty!3669 (not b!164906) b_and!10299 (not b!164901) (not mapNonEmpty!6222) (not b_next!3867) (not b!164904) (not b!164900) (not b!164899))
(check-sat b_and!10299 (not b_next!3867))
