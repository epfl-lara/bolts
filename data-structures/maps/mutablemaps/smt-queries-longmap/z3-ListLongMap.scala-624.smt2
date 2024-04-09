; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16106 () Bool)

(assert start!16106)

(declare-fun b!159923 () Bool)

(declare-fun b_free!3555 () Bool)

(declare-fun b_next!3555 () Bool)

(assert (=> b!159923 (= b_free!3555 (not b_next!3555))))

(declare-fun tp!13235 () Bool)

(declare-fun b_and!9987 () Bool)

(assert (=> b!159923 (= tp!13235 b_and!9987)))

(declare-fun b!159913 () Bool)

(declare-fun res!75656 () Bool)

(declare-fun e!104627 () Bool)

(assert (=> b!159913 (=> (not res!75656) (not e!104627))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4123 0))(
  ( (V!4124 (val!1723 Int)) )
))
(declare-datatypes ((ValueCell!1335 0))(
  ( (ValueCellFull!1335 (v!3584 V!4123)) (EmptyCell!1335) )
))
(declare-datatypes ((array!5792 0))(
  ( (array!5793 (arr!2740 (Array (_ BitVec 32) (_ BitVec 64))) (size!3024 (_ BitVec 32))) )
))
(declare-datatypes ((array!5794 0))(
  ( (array!5795 (arr!2741 (Array (_ BitVec 32) ValueCell!1335)) (size!3025 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1578 0))(
  ( (LongMapFixedSize!1579 (defaultEntry!3231 Int) (mask!7791 (_ BitVec 32)) (extraKeys!2972 (_ BitVec 32)) (zeroValue!3074 V!4123) (minValue!3074 V!4123) (_size!838 (_ BitVec 32)) (_keys!5032 array!5792) (_values!3214 array!5794) (_vacant!838 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1578)

(get-info :version)

(declare-datatypes ((SeekEntryResult!332 0))(
  ( (MissingZero!332 (index!3496 (_ BitVec 32))) (Found!332 (index!3497 (_ BitVec 32))) (Intermediate!332 (undefined!1144 Bool) (index!3498 (_ BitVec 32)) (x!17668 (_ BitVec 32))) (Undefined!332) (MissingVacant!332 (index!3499 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5792 (_ BitVec 32)) SeekEntryResult!332)

(assert (=> b!159913 (= res!75656 ((_ is Undefined!332) (seekEntryOrOpen!0 key!828 (_keys!5032 thiss!1248) (mask!7791 thiss!1248))))))

(declare-fun b!159914 () Bool)

(declare-fun res!75654 () Bool)

(assert (=> b!159914 (=> (not res!75654) (not e!104627))))

(declare-datatypes ((tuple2!2888 0))(
  ( (tuple2!2889 (_1!1454 (_ BitVec 64)) (_2!1454 V!4123)) )
))
(declare-datatypes ((List!1943 0))(
  ( (Nil!1940) (Cons!1939 (h!2552 tuple2!2888) (t!6753 List!1943)) )
))
(declare-datatypes ((ListLongMap!1897 0))(
  ( (ListLongMap!1898 (toList!964 List!1943)) )
))
(declare-fun contains!994 (ListLongMap!1897 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!624 (array!5792 array!5794 (_ BitVec 32) (_ BitVec 32) V!4123 V!4123 (_ BitVec 32) Int) ListLongMap!1897)

(assert (=> b!159914 (= res!75654 (contains!994 (getCurrentListMap!624 (_keys!5032 thiss!1248) (_values!3214 thiss!1248) (mask!7791 thiss!1248) (extraKeys!2972 thiss!1248) (zeroValue!3074 thiss!1248) (minValue!3074 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3231 thiss!1248)) key!828))))

(declare-fun b!159915 () Bool)

(declare-fun e!104624 () Bool)

(declare-fun tp_is_empty!3357 () Bool)

(assert (=> b!159915 (= e!104624 tp_is_empty!3357)))

(declare-fun b!159916 () Bool)

(assert (=> b!159916 (= e!104627 false)))

(declare-fun lt!82067 () Bool)

(declare-datatypes ((List!1944 0))(
  ( (Nil!1941) (Cons!1940 (h!2553 (_ BitVec 64)) (t!6754 List!1944)) )
))
(declare-fun arrayNoDuplicates!0 (array!5792 (_ BitVec 32) List!1944) Bool)

(assert (=> b!159916 (= lt!82067 (arrayNoDuplicates!0 (_keys!5032 thiss!1248) #b00000000000000000000000000000000 Nil!1941))))

(declare-fun res!75653 () Bool)

(assert (=> start!16106 (=> (not res!75653) (not e!104627))))

(declare-fun valid!730 (LongMapFixedSize!1578) Bool)

(assert (=> start!16106 (= res!75653 (valid!730 thiss!1248))))

(assert (=> start!16106 e!104627))

(declare-fun e!104623 () Bool)

(assert (=> start!16106 e!104623))

(assert (=> start!16106 true))

(declare-fun b!159917 () Bool)

(declare-fun e!104625 () Bool)

(assert (=> b!159917 (= e!104625 tp_is_empty!3357)))

(declare-fun b!159918 () Bool)

(declare-fun res!75657 () Bool)

(assert (=> b!159918 (=> (not res!75657) (not e!104627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159918 (= res!75657 (validMask!0 (mask!7791 thiss!1248)))))

(declare-fun b!159919 () Bool)

(declare-fun res!75658 () Bool)

(assert (=> b!159919 (=> (not res!75658) (not e!104627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5792 (_ BitVec 32)) Bool)

(assert (=> b!159919 (= res!75658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5032 thiss!1248) (mask!7791 thiss!1248)))))

(declare-fun mapNonEmpty!5723 () Bool)

(declare-fun mapRes!5723 () Bool)

(declare-fun tp!13234 () Bool)

(assert (=> mapNonEmpty!5723 (= mapRes!5723 (and tp!13234 e!104625))))

(declare-fun mapValue!5723 () ValueCell!1335)

(declare-fun mapKey!5723 () (_ BitVec 32))

(declare-fun mapRest!5723 () (Array (_ BitVec 32) ValueCell!1335))

(assert (=> mapNonEmpty!5723 (= (arr!2741 (_values!3214 thiss!1248)) (store mapRest!5723 mapKey!5723 mapValue!5723))))

(declare-fun b!159920 () Bool)

(declare-fun e!104622 () Bool)

(assert (=> b!159920 (= e!104622 (and e!104624 mapRes!5723))))

(declare-fun condMapEmpty!5723 () Bool)

(declare-fun mapDefault!5723 () ValueCell!1335)

(assert (=> b!159920 (= condMapEmpty!5723 (= (arr!2741 (_values!3214 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1335)) mapDefault!5723)))))

(declare-fun b!159921 () Bool)

(declare-fun res!75659 () Bool)

(assert (=> b!159921 (=> (not res!75659) (not e!104627))))

(assert (=> b!159921 (= res!75659 (and (= (size!3025 (_values!3214 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7791 thiss!1248))) (= (size!3024 (_keys!5032 thiss!1248)) (size!3025 (_values!3214 thiss!1248))) (bvsge (mask!7791 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2972 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2972 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!5723 () Bool)

(assert (=> mapIsEmpty!5723 mapRes!5723))

(declare-fun b!159922 () Bool)

(declare-fun res!75655 () Bool)

(assert (=> b!159922 (=> (not res!75655) (not e!104627))))

(assert (=> b!159922 (= res!75655 (not (= key!828 (bvneg key!828))))))

(declare-fun array_inv!1739 (array!5792) Bool)

(declare-fun array_inv!1740 (array!5794) Bool)

(assert (=> b!159923 (= e!104623 (and tp!13235 tp_is_empty!3357 (array_inv!1739 (_keys!5032 thiss!1248)) (array_inv!1740 (_values!3214 thiss!1248)) e!104622))))

(assert (= (and start!16106 res!75653) b!159922))

(assert (= (and b!159922 res!75655) b!159913))

(assert (= (and b!159913 res!75656) b!159914))

(assert (= (and b!159914 res!75654) b!159918))

(assert (= (and b!159918 res!75657) b!159921))

(assert (= (and b!159921 res!75659) b!159919))

(assert (= (and b!159919 res!75658) b!159916))

(assert (= (and b!159920 condMapEmpty!5723) mapIsEmpty!5723))

(assert (= (and b!159920 (not condMapEmpty!5723)) mapNonEmpty!5723))

(assert (= (and mapNonEmpty!5723 ((_ is ValueCellFull!1335) mapValue!5723)) b!159917))

(assert (= (and b!159920 ((_ is ValueCellFull!1335) mapDefault!5723)) b!159915))

(assert (= b!159923 b!159920))

(assert (= start!16106 b!159923))

(declare-fun m!191995 () Bool)

(assert (=> b!159923 m!191995))

(declare-fun m!191997 () Bool)

(assert (=> b!159923 m!191997))

(declare-fun m!191999 () Bool)

(assert (=> b!159916 m!191999))

(declare-fun m!192001 () Bool)

(assert (=> b!159918 m!192001))

(declare-fun m!192003 () Bool)

(assert (=> b!159914 m!192003))

(assert (=> b!159914 m!192003))

(declare-fun m!192005 () Bool)

(assert (=> b!159914 m!192005))

(declare-fun m!192007 () Bool)

(assert (=> mapNonEmpty!5723 m!192007))

(declare-fun m!192009 () Bool)

(assert (=> b!159913 m!192009))

(declare-fun m!192011 () Bool)

(assert (=> start!16106 m!192011))

(declare-fun m!192013 () Bool)

(assert (=> b!159919 m!192013))

(check-sat (not b!159923) (not b!159919) (not mapNonEmpty!5723) (not b_next!3555) (not b!159918) (not start!16106) (not b!159916) (not b!159913) (not b!159914) tp_is_empty!3357 b_and!9987)
(check-sat b_and!9987 (not b_next!3555))
