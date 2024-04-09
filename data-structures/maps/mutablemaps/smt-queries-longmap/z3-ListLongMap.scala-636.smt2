; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16178 () Bool)

(assert start!16178)

(declare-fun b!161111 () Bool)

(declare-fun b_free!3627 () Bool)

(declare-fun b_next!3627 () Bool)

(assert (=> b!161111 (= b_free!3627 (not b_next!3627))))

(declare-fun tp!13450 () Bool)

(declare-fun b_and!10059 () Bool)

(assert (=> b!161111 (= tp!13450 b_and!10059)))

(declare-fun b!161101 () Bool)

(declare-fun res!76415 () Bool)

(declare-fun e!105271 () Bool)

(assert (=> b!161101 (=> (not res!76415) (not e!105271))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4219 0))(
  ( (V!4220 (val!1759 Int)) )
))
(declare-datatypes ((ValueCell!1371 0))(
  ( (ValueCellFull!1371 (v!3620 V!4219)) (EmptyCell!1371) )
))
(declare-datatypes ((array!5936 0))(
  ( (array!5937 (arr!2812 (Array (_ BitVec 32) (_ BitVec 64))) (size!3096 (_ BitVec 32))) )
))
(declare-datatypes ((array!5938 0))(
  ( (array!5939 (arr!2813 (Array (_ BitVec 32) ValueCell!1371)) (size!3097 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1650 0))(
  ( (LongMapFixedSize!1651 (defaultEntry!3267 Int) (mask!7851 (_ BitVec 32)) (extraKeys!3008 (_ BitVec 32)) (zeroValue!3110 V!4219) (minValue!3110 V!4219) (_size!874 (_ BitVec 32)) (_keys!5068 array!5936) (_values!3250 array!5938) (_vacant!874 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1650)

(get-info :version)

(declare-datatypes ((SeekEntryResult!353 0))(
  ( (MissingZero!353 (index!3580 (_ BitVec 32))) (Found!353 (index!3581 (_ BitVec 32))) (Intermediate!353 (undefined!1165 Bool) (index!3582 (_ BitVec 32)) (x!17785 (_ BitVec 32))) (Undefined!353) (MissingVacant!353 (index!3583 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5936 (_ BitVec 32)) SeekEntryResult!353)

(assert (=> b!161101 (= res!76415 ((_ is Undefined!353) (seekEntryOrOpen!0 key!828 (_keys!5068 thiss!1248) (mask!7851 thiss!1248))))))

(declare-fun b!161102 () Bool)

(declare-fun e!105275 () Bool)

(declare-fun tp_is_empty!3429 () Bool)

(assert (=> b!161102 (= e!105275 tp_is_empty!3429)))

(declare-fun b!161103 () Bool)

(declare-fun res!76413 () Bool)

(assert (=> b!161103 (=> (not res!76413) (not e!105271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5936 (_ BitVec 32)) Bool)

(assert (=> b!161103 (= res!76413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5068 thiss!1248) (mask!7851 thiss!1248)))))

(declare-fun mapNonEmpty!5831 () Bool)

(declare-fun mapRes!5831 () Bool)

(declare-fun tp!13451 () Bool)

(declare-fun e!105270 () Bool)

(assert (=> mapNonEmpty!5831 (= mapRes!5831 (and tp!13451 e!105270))))

(declare-fun mapRest!5831 () (Array (_ BitVec 32) ValueCell!1371))

(declare-fun mapValue!5831 () ValueCell!1371)

(declare-fun mapKey!5831 () (_ BitVec 32))

(assert (=> mapNonEmpty!5831 (= (arr!2813 (_values!3250 thiss!1248)) (store mapRest!5831 mapKey!5831 mapValue!5831))))

(declare-fun mapIsEmpty!5831 () Bool)

(assert (=> mapIsEmpty!5831 mapRes!5831))

(declare-fun res!76414 () Bool)

(assert (=> start!16178 (=> (not res!76414) (not e!105271))))

(declare-fun valid!750 (LongMapFixedSize!1650) Bool)

(assert (=> start!16178 (= res!76414 (valid!750 thiss!1248))))

(assert (=> start!16178 e!105271))

(declare-fun e!105272 () Bool)

(assert (=> start!16178 e!105272))

(assert (=> start!16178 true))

(declare-fun b!161104 () Bool)

(declare-fun res!76409 () Bool)

(assert (=> b!161104 (=> (not res!76409) (not e!105271))))

(assert (=> b!161104 (= res!76409 (and (= (size!3097 (_values!3250 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7851 thiss!1248))) (= (size!3096 (_keys!5068 thiss!1248)) (size!3097 (_values!3250 thiss!1248))) (bvsge (mask!7851 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3008 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3008 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!161105 () Bool)

(declare-fun res!76410 () Bool)

(assert (=> b!161105 (=> (not res!76410) (not e!105271))))

(declare-datatypes ((tuple2!2932 0))(
  ( (tuple2!2933 (_1!1476 (_ BitVec 64)) (_2!1476 V!4219)) )
))
(declare-datatypes ((List!1986 0))(
  ( (Nil!1983) (Cons!1982 (h!2595 tuple2!2932) (t!6796 List!1986)) )
))
(declare-datatypes ((ListLongMap!1941 0))(
  ( (ListLongMap!1942 (toList!986 List!1986)) )
))
(declare-fun contains!1016 (ListLongMap!1941 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!646 (array!5936 array!5938 (_ BitVec 32) (_ BitVec 32) V!4219 V!4219 (_ BitVec 32) Int) ListLongMap!1941)

(assert (=> b!161105 (= res!76410 (not (contains!1016 (getCurrentListMap!646 (_keys!5068 thiss!1248) (_values!3250 thiss!1248) (mask!7851 thiss!1248) (extraKeys!3008 thiss!1248) (zeroValue!3110 thiss!1248) (minValue!3110 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3267 thiss!1248)) key!828)))))

(declare-fun b!161106 () Bool)

(assert (=> b!161106 (= e!105271 false)))

(declare-fun lt!82175 () Bool)

(declare-datatypes ((List!1987 0))(
  ( (Nil!1984) (Cons!1983 (h!2596 (_ BitVec 64)) (t!6797 List!1987)) )
))
(declare-fun arrayNoDuplicates!0 (array!5936 (_ BitVec 32) List!1987) Bool)

(assert (=> b!161106 (= lt!82175 (arrayNoDuplicates!0 (_keys!5068 thiss!1248) #b00000000000000000000000000000000 Nil!1984))))

(declare-fun b!161107 () Bool)

(declare-fun res!76412 () Bool)

(assert (=> b!161107 (=> (not res!76412) (not e!105271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!161107 (= res!76412 (validMask!0 (mask!7851 thiss!1248)))))

(declare-fun b!161108 () Bool)

(assert (=> b!161108 (= e!105270 tp_is_empty!3429)))

(declare-fun b!161109 () Bool)

(declare-fun e!105273 () Bool)

(assert (=> b!161109 (= e!105273 (and e!105275 mapRes!5831))))

(declare-fun condMapEmpty!5831 () Bool)

(declare-fun mapDefault!5831 () ValueCell!1371)

(assert (=> b!161109 (= condMapEmpty!5831 (= (arr!2813 (_values!3250 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1371)) mapDefault!5831)))))

(declare-fun b!161110 () Bool)

(declare-fun res!76411 () Bool)

(assert (=> b!161110 (=> (not res!76411) (not e!105271))))

(assert (=> b!161110 (= res!76411 (not (= key!828 (bvneg key!828))))))

(declare-fun array_inv!1779 (array!5936) Bool)

(declare-fun array_inv!1780 (array!5938) Bool)

(assert (=> b!161111 (= e!105272 (and tp!13450 tp_is_empty!3429 (array_inv!1779 (_keys!5068 thiss!1248)) (array_inv!1780 (_values!3250 thiss!1248)) e!105273))))

(assert (= (and start!16178 res!76414) b!161110))

(assert (= (and b!161110 res!76411) b!161101))

(assert (= (and b!161101 res!76415) b!161105))

(assert (= (and b!161105 res!76410) b!161107))

(assert (= (and b!161107 res!76412) b!161104))

(assert (= (and b!161104 res!76409) b!161103))

(assert (= (and b!161103 res!76413) b!161106))

(assert (= (and b!161109 condMapEmpty!5831) mapIsEmpty!5831))

(assert (= (and b!161109 (not condMapEmpty!5831)) mapNonEmpty!5831))

(assert (= (and mapNonEmpty!5831 ((_ is ValueCellFull!1371) mapValue!5831)) b!161108))

(assert (= (and b!161109 ((_ is ValueCellFull!1371) mapDefault!5831)) b!161102))

(assert (= b!161111 b!161109))

(assert (= start!16178 b!161111))

(declare-fun m!192715 () Bool)

(assert (=> b!161103 m!192715))

(declare-fun m!192717 () Bool)

(assert (=> mapNonEmpty!5831 m!192717))

(declare-fun m!192719 () Bool)

(assert (=> b!161111 m!192719))

(declare-fun m!192721 () Bool)

(assert (=> b!161111 m!192721))

(declare-fun m!192723 () Bool)

(assert (=> b!161105 m!192723))

(assert (=> b!161105 m!192723))

(declare-fun m!192725 () Bool)

(assert (=> b!161105 m!192725))

(declare-fun m!192727 () Bool)

(assert (=> b!161106 m!192727))

(declare-fun m!192729 () Bool)

(assert (=> b!161107 m!192729))

(declare-fun m!192731 () Bool)

(assert (=> b!161101 m!192731))

(declare-fun m!192733 () Bool)

(assert (=> start!16178 m!192733))

(check-sat (not b!161106) (not mapNonEmpty!5831) (not b!161105) tp_is_empty!3429 (not b!161101) b_and!10059 (not b!161111) (not start!16178) (not b_next!3627) (not b!161103) (not b!161107))
(check-sat b_and!10059 (not b_next!3627))
