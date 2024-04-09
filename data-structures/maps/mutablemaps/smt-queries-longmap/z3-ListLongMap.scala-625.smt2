; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16112 () Bool)

(assert start!16112)

(declare-fun b!160018 () Bool)

(declare-fun b_free!3561 () Bool)

(declare-fun b_next!3561 () Bool)

(assert (=> b!160018 (= b_free!3561 (not b_next!3561))))

(declare-fun tp!13253 () Bool)

(declare-fun b_and!9993 () Bool)

(assert (=> b!160018 (= tp!13253 b_and!9993)))

(declare-fun mapNonEmpty!5732 () Bool)

(declare-fun mapRes!5732 () Bool)

(declare-fun tp!13252 () Bool)

(declare-fun e!104678 () Bool)

(assert (=> mapNonEmpty!5732 (= mapRes!5732 (and tp!13252 e!104678))))

(declare-datatypes ((V!4131 0))(
  ( (V!4132 (val!1726 Int)) )
))
(declare-datatypes ((ValueCell!1338 0))(
  ( (ValueCellFull!1338 (v!3587 V!4131)) (EmptyCell!1338) )
))
(declare-fun mapValue!5732 () ValueCell!1338)

(declare-datatypes ((array!5804 0))(
  ( (array!5805 (arr!2746 (Array (_ BitVec 32) (_ BitVec 64))) (size!3030 (_ BitVec 32))) )
))
(declare-datatypes ((array!5806 0))(
  ( (array!5807 (arr!2747 (Array (_ BitVec 32) ValueCell!1338)) (size!3031 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1584 0))(
  ( (LongMapFixedSize!1585 (defaultEntry!3234 Int) (mask!7796 (_ BitVec 32)) (extraKeys!2975 (_ BitVec 32)) (zeroValue!3077 V!4131) (minValue!3077 V!4131) (_size!841 (_ BitVec 32)) (_keys!5035 array!5804) (_values!3217 array!5806) (_vacant!841 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1584)

(declare-fun mapKey!5732 () (_ BitVec 32))

(declare-fun mapRest!5732 () (Array (_ BitVec 32) ValueCell!1338))

(assert (=> mapNonEmpty!5732 (= (arr!2747 (_values!3217 thiss!1248)) (store mapRest!5732 mapKey!5732 mapValue!5732))))

(declare-fun b!160012 () Bool)

(declare-fun res!75721 () Bool)

(declare-fun e!104681 () Bool)

(assert (=> b!160012 (=> (not res!75721) (not e!104681))))

(assert (=> b!160012 (= res!75721 (and (= (size!3031 (_values!3217 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7796 thiss!1248))) (= (size!3030 (_keys!5035 thiss!1248)) (size!3031 (_values!3217 thiss!1248))) (bvsge (mask!7796 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2975 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2975 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160013 () Bool)

(declare-fun tp_is_empty!3363 () Bool)

(assert (=> b!160013 (= e!104678 tp_is_empty!3363)))

(declare-fun b!160014 () Bool)

(declare-fun e!104676 () Bool)

(declare-fun e!104677 () Bool)

(assert (=> b!160014 (= e!104676 (and e!104677 mapRes!5732))))

(declare-fun condMapEmpty!5732 () Bool)

(declare-fun mapDefault!5732 () ValueCell!1338)

(assert (=> b!160014 (= condMapEmpty!5732 (= (arr!2747 (_values!3217 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1338)) mapDefault!5732)))))

(declare-fun b!160015 () Bool)

(declare-fun res!75722 () Bool)

(assert (=> b!160015 (=> (not res!75722) (not e!104681))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2894 0))(
  ( (tuple2!2895 (_1!1457 (_ BitVec 64)) (_2!1457 V!4131)) )
))
(declare-datatypes ((List!1948 0))(
  ( (Nil!1945) (Cons!1944 (h!2557 tuple2!2894) (t!6758 List!1948)) )
))
(declare-datatypes ((ListLongMap!1903 0))(
  ( (ListLongMap!1904 (toList!967 List!1948)) )
))
(declare-fun contains!997 (ListLongMap!1903 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!627 (array!5804 array!5806 (_ BitVec 32) (_ BitVec 32) V!4131 V!4131 (_ BitVec 32) Int) ListLongMap!1903)

(assert (=> b!160015 (= res!75722 (contains!997 (getCurrentListMap!627 (_keys!5035 thiss!1248) (_values!3217 thiss!1248) (mask!7796 thiss!1248) (extraKeys!2975 thiss!1248) (zeroValue!3077 thiss!1248) (minValue!3077 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3234 thiss!1248)) key!828))))

(declare-fun b!160016 () Bool)

(declare-fun res!75719 () Bool)

(assert (=> b!160016 (=> (not res!75719) (not e!104681))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!335 0))(
  ( (MissingZero!335 (index!3508 (_ BitVec 32))) (Found!335 (index!3509 (_ BitVec 32))) (Intermediate!335 (undefined!1147 Bool) (index!3510 (_ BitVec 32)) (x!17679 (_ BitVec 32))) (Undefined!335) (MissingVacant!335 (index!3511 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5804 (_ BitVec 32)) SeekEntryResult!335)

(assert (=> b!160016 (= res!75719 ((_ is Undefined!335) (seekEntryOrOpen!0 key!828 (_keys!5035 thiss!1248) (mask!7796 thiss!1248))))))

(declare-fun mapIsEmpty!5732 () Bool)

(assert (=> mapIsEmpty!5732 mapRes!5732))

(declare-fun b!160017 () Bool)

(declare-fun res!75717 () Bool)

(assert (=> b!160017 (=> (not res!75717) (not e!104681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5804 (_ BitVec 32)) Bool)

(assert (=> b!160017 (= res!75717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5035 thiss!1248) (mask!7796 thiss!1248)))))

(declare-fun res!75716 () Bool)

(assert (=> start!16112 (=> (not res!75716) (not e!104681))))

(declare-fun valid!732 (LongMapFixedSize!1584) Bool)

(assert (=> start!16112 (= res!75716 (valid!732 thiss!1248))))

(assert (=> start!16112 e!104681))

(declare-fun e!104679 () Bool)

(assert (=> start!16112 e!104679))

(assert (=> start!16112 true))

(declare-fun array_inv!1745 (array!5804) Bool)

(declare-fun array_inv!1746 (array!5806) Bool)

(assert (=> b!160018 (= e!104679 (and tp!13253 tp_is_empty!3363 (array_inv!1745 (_keys!5035 thiss!1248)) (array_inv!1746 (_values!3217 thiss!1248)) e!104676))))

(declare-fun b!160019 () Bool)

(assert (=> b!160019 (= e!104681 false)))

(declare-fun lt!82076 () Bool)

(declare-datatypes ((List!1949 0))(
  ( (Nil!1946) (Cons!1945 (h!2558 (_ BitVec 64)) (t!6759 List!1949)) )
))
(declare-fun arrayNoDuplicates!0 (array!5804 (_ BitVec 32) List!1949) Bool)

(assert (=> b!160019 (= lt!82076 (arrayNoDuplicates!0 (_keys!5035 thiss!1248) #b00000000000000000000000000000000 Nil!1946))))

(declare-fun b!160020 () Bool)

(assert (=> b!160020 (= e!104677 tp_is_empty!3363)))

(declare-fun b!160021 () Bool)

(declare-fun res!75718 () Bool)

(assert (=> b!160021 (=> (not res!75718) (not e!104681))))

(assert (=> b!160021 (= res!75718 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160022 () Bool)

(declare-fun res!75720 () Bool)

(assert (=> b!160022 (=> (not res!75720) (not e!104681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160022 (= res!75720 (validMask!0 (mask!7796 thiss!1248)))))

(assert (= (and start!16112 res!75716) b!160021))

(assert (= (and b!160021 res!75718) b!160016))

(assert (= (and b!160016 res!75719) b!160015))

(assert (= (and b!160015 res!75722) b!160022))

(assert (= (and b!160022 res!75720) b!160012))

(assert (= (and b!160012 res!75721) b!160017))

(assert (= (and b!160017 res!75717) b!160019))

(assert (= (and b!160014 condMapEmpty!5732) mapIsEmpty!5732))

(assert (= (and b!160014 (not condMapEmpty!5732)) mapNonEmpty!5732))

(assert (= (and mapNonEmpty!5732 ((_ is ValueCellFull!1338) mapValue!5732)) b!160013))

(assert (= (and b!160014 ((_ is ValueCellFull!1338) mapDefault!5732)) b!160020))

(assert (= b!160018 b!160014))

(assert (= start!16112 b!160018))

(declare-fun m!192055 () Bool)

(assert (=> start!16112 m!192055))

(declare-fun m!192057 () Bool)

(assert (=> b!160015 m!192057))

(assert (=> b!160015 m!192057))

(declare-fun m!192059 () Bool)

(assert (=> b!160015 m!192059))

(declare-fun m!192061 () Bool)

(assert (=> b!160019 m!192061))

(declare-fun m!192063 () Bool)

(assert (=> b!160018 m!192063))

(declare-fun m!192065 () Bool)

(assert (=> b!160018 m!192065))

(declare-fun m!192067 () Bool)

(assert (=> b!160016 m!192067))

(declare-fun m!192069 () Bool)

(assert (=> b!160017 m!192069))

(declare-fun m!192071 () Bool)

(assert (=> b!160022 m!192071))

(declare-fun m!192073 () Bool)

(assert (=> mapNonEmpty!5732 m!192073))

(check-sat (not start!16112) (not b!160017) tp_is_empty!3363 (not mapNonEmpty!5732) b_and!9993 (not b!160016) (not b_next!3561) (not b!160018) (not b!160022) (not b!160015) (not b!160019))
(check-sat b_and!9993 (not b_next!3561))
