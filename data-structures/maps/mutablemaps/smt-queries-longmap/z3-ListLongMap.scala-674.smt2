; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16562 () Bool)

(assert start!16562)

(declare-fun b!164705 () Bool)

(declare-fun b_free!3855 () Bool)

(declare-fun b_next!3855 () Bool)

(assert (=> b!164705 (= b_free!3855 (not b_next!3855))))

(declare-fun tp!14165 () Bool)

(declare-fun b_and!10287 () Bool)

(assert (=> b!164705 (= tp!14165 b_and!10287)))

(declare-fun b!164700 () Bool)

(declare-fun e!108066 () Bool)

(declare-fun e!108064 () Bool)

(declare-fun mapRes!6204 () Bool)

(assert (=> b!164700 (= e!108066 (and e!108064 mapRes!6204))))

(declare-fun condMapEmpty!6204 () Bool)

(declare-datatypes ((V!4523 0))(
  ( (V!4524 (val!1873 Int)) )
))
(declare-datatypes ((ValueCell!1485 0))(
  ( (ValueCellFull!1485 (v!3734 V!4523)) (EmptyCell!1485) )
))
(declare-datatypes ((array!6410 0))(
  ( (array!6411 (arr!3040 (Array (_ BitVec 32) (_ BitVec 64))) (size!3328 (_ BitVec 32))) )
))
(declare-datatypes ((array!6412 0))(
  ( (array!6413 (arr!3041 (Array (_ BitVec 32) ValueCell!1485)) (size!3329 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1878 0))(
  ( (LongMapFixedSize!1879 (defaultEntry!3381 Int) (mask!8078 (_ BitVec 32)) (extraKeys!3122 (_ BitVec 32)) (zeroValue!3224 V!4523) (minValue!3224 V!4523) (_size!988 (_ BitVec 32)) (_keys!5206 array!6410) (_values!3364 array!6412) (_vacant!988 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1878)

(declare-fun mapDefault!6204 () ValueCell!1485)

(assert (=> b!164700 (= condMapEmpty!6204 (= (arr!3041 (_values!3364 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1485)) mapDefault!6204)))))

(declare-fun b!164701 () Bool)

(declare-fun res!78046 () Bool)

(declare-fun e!108065 () Bool)

(assert (=> b!164701 (=> (not res!78046) (not e!108065))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!164701 (= res!78046 (not (= key!828 (bvneg key!828))))))

(declare-fun b!164702 () Bool)

(declare-fun e!108067 () Bool)

(assert (=> b!164702 (= e!108065 e!108067)))

(declare-fun res!78044 () Bool)

(assert (=> b!164702 (=> (not res!78044) (not e!108067))))

(declare-datatypes ((SeekEntryResult!432 0))(
  ( (MissingZero!432 (index!3896 (_ BitVec 32))) (Found!432 (index!3897 (_ BitVec 32))) (Intermediate!432 (undefined!1244 Bool) (index!3898 (_ BitVec 32)) (x!18276 (_ BitVec 32))) (Undefined!432) (MissingVacant!432 (index!3899 (_ BitVec 32))) )
))
(declare-fun lt!82966 () SeekEntryResult!432)

(get-info :version)

(assert (=> b!164702 (= res!78044 (and (not ((_ is Undefined!432) lt!82966)) (not ((_ is MissingVacant!432) lt!82966)) (not ((_ is MissingZero!432) lt!82966)) ((_ is Found!432) lt!82966)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6410 (_ BitVec 32)) SeekEntryResult!432)

(assert (=> b!164702 (= lt!82966 (seekEntryOrOpen!0 key!828 (_keys!5206 thiss!1248) (mask!8078 thiss!1248)))))

(declare-fun b!164703 () Bool)

(declare-fun res!78045 () Bool)

(assert (=> b!164703 (=> (not res!78045) (not e!108067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164703 (= res!78045 (validMask!0 (mask!8078 thiss!1248)))))

(declare-fun b!164704 () Bool)

(declare-fun e!108062 () Bool)

(declare-fun tp_is_empty!3657 () Bool)

(assert (=> b!164704 (= e!108062 tp_is_empty!3657)))

(declare-fun e!108063 () Bool)

(declare-fun array_inv!1939 (array!6410) Bool)

(declare-fun array_inv!1940 (array!6412) Bool)

(assert (=> b!164705 (= e!108063 (and tp!14165 tp_is_empty!3657 (array_inv!1939 (_keys!5206 thiss!1248)) (array_inv!1940 (_values!3364 thiss!1248)) e!108066))))

(declare-fun res!78043 () Bool)

(assert (=> start!16562 (=> (not res!78043) (not e!108065))))

(declare-fun valid!827 (LongMapFixedSize!1878) Bool)

(assert (=> start!16562 (= res!78043 (valid!827 thiss!1248))))

(assert (=> start!16562 e!108065))

(assert (=> start!16562 e!108063))

(assert (=> start!16562 true))

(declare-fun mapNonEmpty!6204 () Bool)

(declare-fun tp!14166 () Bool)

(assert (=> mapNonEmpty!6204 (= mapRes!6204 (and tp!14166 e!108062))))

(declare-fun mapValue!6204 () ValueCell!1485)

(declare-fun mapKey!6204 () (_ BitVec 32))

(declare-fun mapRest!6204 () (Array (_ BitVec 32) ValueCell!1485))

(assert (=> mapNonEmpty!6204 (= (arr!3041 (_values!3364 thiss!1248)) (store mapRest!6204 mapKey!6204 mapValue!6204))))

(declare-fun b!164706 () Bool)

(assert (=> b!164706 (= e!108067 false)))

(declare-fun lt!82967 () Bool)

(declare-datatypes ((List!2040 0))(
  ( (Nil!2037) (Cons!2036 (h!2653 (_ BitVec 64)) (t!6850 List!2040)) )
))
(declare-fun arrayNoDuplicates!0 (array!6410 (_ BitVec 32) List!2040) Bool)

(assert (=> b!164706 (= lt!82967 (arrayNoDuplicates!0 (_keys!5206 thiss!1248) #b00000000000000000000000000000000 Nil!2037))))

(declare-fun mapIsEmpty!6204 () Bool)

(assert (=> mapIsEmpty!6204 mapRes!6204))

(declare-fun b!164707 () Bool)

(declare-fun res!78048 () Bool)

(assert (=> b!164707 (=> (not res!78048) (not e!108067))))

(declare-datatypes ((tuple2!3034 0))(
  ( (tuple2!3035 (_1!1527 (_ BitVec 64)) (_2!1527 V!4523)) )
))
(declare-datatypes ((List!2041 0))(
  ( (Nil!2038) (Cons!2037 (h!2654 tuple2!3034) (t!6851 List!2041)) )
))
(declare-datatypes ((ListLongMap!2003 0))(
  ( (ListLongMap!2004 (toList!1017 List!2041)) )
))
(declare-fun contains!1053 (ListLongMap!2003 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!670 (array!6410 array!6412 (_ BitVec 32) (_ BitVec 32) V!4523 V!4523 (_ BitVec 32) Int) ListLongMap!2003)

(assert (=> b!164707 (= res!78048 (contains!1053 (getCurrentListMap!670 (_keys!5206 thiss!1248) (_values!3364 thiss!1248) (mask!8078 thiss!1248) (extraKeys!3122 thiss!1248) (zeroValue!3224 thiss!1248) (minValue!3224 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3381 thiss!1248)) key!828))))

(declare-fun b!164708 () Bool)

(declare-fun res!78042 () Bool)

(assert (=> b!164708 (=> (not res!78042) (not e!108067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6410 (_ BitVec 32)) Bool)

(assert (=> b!164708 (= res!78042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5206 thiss!1248) (mask!8078 thiss!1248)))))

(declare-fun b!164709 () Bool)

(declare-fun res!78047 () Bool)

(assert (=> b!164709 (=> (not res!78047) (not e!108067))))

(assert (=> b!164709 (= res!78047 (and (= (size!3329 (_values!3364 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8078 thiss!1248))) (= (size!3328 (_keys!5206 thiss!1248)) (size!3329 (_values!3364 thiss!1248))) (bvsge (mask!8078 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3122 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3122 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164710 () Bool)

(assert (=> b!164710 (= e!108064 tp_is_empty!3657)))

(assert (= (and start!16562 res!78043) b!164701))

(assert (= (and b!164701 res!78046) b!164702))

(assert (= (and b!164702 res!78044) b!164707))

(assert (= (and b!164707 res!78048) b!164703))

(assert (= (and b!164703 res!78045) b!164709))

(assert (= (and b!164709 res!78047) b!164708))

(assert (= (and b!164708 res!78042) b!164706))

(assert (= (and b!164700 condMapEmpty!6204) mapIsEmpty!6204))

(assert (= (and b!164700 (not condMapEmpty!6204)) mapNonEmpty!6204))

(assert (= (and mapNonEmpty!6204 ((_ is ValueCellFull!1485) mapValue!6204)) b!164704))

(assert (= (and b!164700 ((_ is ValueCellFull!1485) mapDefault!6204)) b!164710))

(assert (= b!164705 b!164700))

(assert (= start!16562 b!164705))

(declare-fun m!194809 () Bool)

(assert (=> b!164702 m!194809))

(declare-fun m!194811 () Bool)

(assert (=> b!164703 m!194811))

(declare-fun m!194813 () Bool)

(assert (=> b!164705 m!194813))

(declare-fun m!194815 () Bool)

(assert (=> b!164705 m!194815))

(declare-fun m!194817 () Bool)

(assert (=> start!16562 m!194817))

(declare-fun m!194819 () Bool)

(assert (=> b!164706 m!194819))

(declare-fun m!194821 () Bool)

(assert (=> b!164708 m!194821))

(declare-fun m!194823 () Bool)

(assert (=> mapNonEmpty!6204 m!194823))

(declare-fun m!194825 () Bool)

(assert (=> b!164707 m!194825))

(assert (=> b!164707 m!194825))

(declare-fun m!194827 () Bool)

(assert (=> b!164707 m!194827))

(check-sat b_and!10287 (not b!164705) (not b!164703) (not b!164706) (not mapNonEmpty!6204) (not b!164708) tp_is_empty!3657 (not b_next!3855) (not b!164707) (not b!164702) (not start!16562))
(check-sat b_and!10287 (not b_next!3855))
