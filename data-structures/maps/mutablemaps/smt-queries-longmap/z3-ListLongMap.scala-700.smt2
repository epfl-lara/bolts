; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16718 () Bool)

(assert start!16718)

(declare-fun b!167489 () Bool)

(declare-fun b_free!4011 () Bool)

(declare-fun b_next!4011 () Bool)

(assert (=> b!167489 (= b_free!4011 (not b_next!4011))))

(declare-fun tp!14633 () Bool)

(declare-fun b_and!10443 () Bool)

(assert (=> b!167489 (= tp!14633 b_and!10443)))

(declare-fun e!110014 () Bool)

(declare-datatypes ((SeekEntryResult!492 0))(
  ( (MissingZero!492 (index!4136 (_ BitVec 32))) (Found!492 (index!4137 (_ BitVec 32))) (Intermediate!492 (undefined!1304 Bool) (index!4138 (_ BitVec 32)) (x!18544 (_ BitVec 32))) (Undefined!492) (MissingVacant!492 (index!4139 (_ BitVec 32))) )
))
(declare-fun lt!83759 () SeekEntryResult!492)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4731 0))(
  ( (V!4732 (val!1951 Int)) )
))
(declare-datatypes ((ValueCell!1563 0))(
  ( (ValueCellFull!1563 (v!3812 V!4731)) (EmptyCell!1563) )
))
(declare-datatypes ((array!6722 0))(
  ( (array!6723 (arr!3196 (Array (_ BitVec 32) (_ BitVec 64))) (size!3484 (_ BitVec 32))) )
))
(declare-datatypes ((array!6724 0))(
  ( (array!6725 (arr!3197 (Array (_ BitVec 32) ValueCell!1563)) (size!3485 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2034 0))(
  ( (LongMapFixedSize!2035 (defaultEntry!3459 Int) (mask!8208 (_ BitVec 32)) (extraKeys!3200 (_ BitVec 32)) (zeroValue!3302 V!4731) (minValue!3302 V!4731) (_size!1066 (_ BitVec 32)) (_keys!5284 array!6722) (_values!3442 array!6724) (_vacant!1066 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2034)

(declare-fun b!167482 () Bool)

(assert (=> b!167482 (= e!110014 (= (select (arr!3196 (_keys!5284 thiss!1248)) (index!4137 lt!83759)) key!828))))

(declare-fun b!167483 () Bool)

(declare-fun res!79684 () Bool)

(declare-fun e!110020 () Bool)

(assert (=> b!167483 (=> res!79684 e!110020)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6722 (_ BitVec 32)) Bool)

(assert (=> b!167483 (= res!79684 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5284 thiss!1248) (mask!8208 thiss!1248))))))

(declare-fun b!167484 () Bool)

(declare-fun e!110012 () Bool)

(declare-fun tp_is_empty!3813 () Bool)

(assert (=> b!167484 (= e!110012 tp_is_empty!3813)))

(declare-fun b!167485 () Bool)

(declare-fun e!110016 () Bool)

(assert (=> b!167485 (= e!110016 tp_is_empty!3813)))

(declare-fun mapIsEmpty!6438 () Bool)

(declare-fun mapRes!6438 () Bool)

(assert (=> mapIsEmpty!6438 mapRes!6438))

(declare-fun b!167486 () Bool)

(declare-datatypes ((Unit!5131 0))(
  ( (Unit!5132) )
))
(declare-fun e!110011 () Unit!5131)

(declare-fun Unit!5133 () Unit!5131)

(assert (=> b!167486 (= e!110011 Unit!5133)))

(declare-fun lt!83758 () Unit!5131)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!107 (array!6722 array!6724 (_ BitVec 32) (_ BitVec 32) V!4731 V!4731 (_ BitVec 64) Int) Unit!5131)

(assert (=> b!167486 (= lt!83758 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!107 (_keys!5284 thiss!1248) (_values!3442 thiss!1248) (mask!8208 thiss!1248) (extraKeys!3200 thiss!1248) (zeroValue!3302 thiss!1248) (minValue!3302 thiss!1248) key!828 (defaultEntry!3459 thiss!1248)))))

(assert (=> b!167486 false))

(declare-fun b!167487 () Bool)

(declare-fun e!110015 () Bool)

(assert (=> b!167487 (= e!110015 (not e!110020))))

(declare-fun res!79682 () Bool)

(assert (=> b!167487 (=> res!79682 e!110020)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167487 (= res!79682 (not (validMask!0 (mask!8208 thiss!1248))))))

(declare-fun v!309 () V!4731)

(declare-datatypes ((tuple2!3142 0))(
  ( (tuple2!3143 (_1!1581 (_ BitVec 64)) (_2!1581 V!4731)) )
))
(declare-datatypes ((List!2153 0))(
  ( (Nil!2150) (Cons!2149 (h!2766 tuple2!3142) (t!6963 List!2153)) )
))
(declare-datatypes ((ListLongMap!2111 0))(
  ( (ListLongMap!2112 (toList!1071 List!2153)) )
))
(declare-fun lt!83761 () ListLongMap!2111)

(declare-fun +!213 (ListLongMap!2111 tuple2!3142) ListLongMap!2111)

(declare-fun getCurrentListMap!724 (array!6722 array!6724 (_ BitVec 32) (_ BitVec 32) V!4731 V!4731 (_ BitVec 32) Int) ListLongMap!2111)

(assert (=> b!167487 (= (+!213 lt!83761 (tuple2!3143 key!828 v!309)) (getCurrentListMap!724 (_keys!5284 thiss!1248) (array!6725 (store (arr!3197 (_values!3442 thiss!1248)) (index!4137 lt!83759) (ValueCellFull!1563 v!309)) (size!3485 (_values!3442 thiss!1248))) (mask!8208 thiss!1248) (extraKeys!3200 thiss!1248) (zeroValue!3302 thiss!1248) (minValue!3302 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3459 thiss!1248)))))

(declare-fun lt!83762 () Unit!5131)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!73 (array!6722 array!6724 (_ BitVec 32) (_ BitVec 32) V!4731 V!4731 (_ BitVec 32) (_ BitVec 64) V!4731 Int) Unit!5131)

(assert (=> b!167487 (= lt!83762 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!73 (_keys!5284 thiss!1248) (_values!3442 thiss!1248) (mask!8208 thiss!1248) (extraKeys!3200 thiss!1248) (zeroValue!3302 thiss!1248) (minValue!3302 thiss!1248) (index!4137 lt!83759) key!828 v!309 (defaultEntry!3459 thiss!1248)))))

(declare-fun lt!83756 () Unit!5131)

(assert (=> b!167487 (= lt!83756 e!110011)))

(declare-fun c!30279 () Bool)

(declare-fun contains!1107 (ListLongMap!2111 (_ BitVec 64)) Bool)

(assert (=> b!167487 (= c!30279 (contains!1107 lt!83761 key!828))))

(assert (=> b!167487 (= lt!83761 (getCurrentListMap!724 (_keys!5284 thiss!1248) (_values!3442 thiss!1248) (mask!8208 thiss!1248) (extraKeys!3200 thiss!1248) (zeroValue!3302 thiss!1248) (minValue!3302 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3459 thiss!1248)))))

(declare-fun b!167488 () Bool)

(declare-fun e!110017 () Bool)

(assert (=> b!167488 (= e!110017 (and e!110012 mapRes!6438))))

(declare-fun condMapEmpty!6438 () Bool)

(declare-fun mapDefault!6438 () ValueCell!1563)

(assert (=> b!167488 (= condMapEmpty!6438 (= (arr!3197 (_values!3442 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1563)) mapDefault!6438)))))

(declare-fun e!110018 () Bool)

(declare-fun array_inv!2051 (array!6722) Bool)

(declare-fun array_inv!2052 (array!6724) Bool)

(assert (=> b!167489 (= e!110018 (and tp!14633 tp_is_empty!3813 (array_inv!2051 (_keys!5284 thiss!1248)) (array_inv!2052 (_values!3442 thiss!1248)) e!110017))))

(declare-fun b!167490 () Bool)

(declare-fun res!79685 () Bool)

(declare-fun e!110013 () Bool)

(assert (=> b!167490 (=> (not res!79685) (not e!110013))))

(assert (=> b!167490 (= res!79685 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167491 () Bool)

(declare-fun res!79681 () Bool)

(assert (=> b!167491 (=> res!79681 e!110020)))

(assert (=> b!167491 (= res!79681 (or (not (= (size!3485 (_values!3442 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8208 thiss!1248)))) (not (= (size!3484 (_keys!5284 thiss!1248)) (size!3485 (_values!3442 thiss!1248)))) (bvslt (mask!8208 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3200 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3200 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!167492 () Bool)

(declare-fun lt!83760 () Unit!5131)

(assert (=> b!167492 (= e!110011 lt!83760)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!109 (array!6722 array!6724 (_ BitVec 32) (_ BitVec 32) V!4731 V!4731 (_ BitVec 64) Int) Unit!5131)

(assert (=> b!167492 (= lt!83760 (lemmaInListMapThenSeekEntryOrOpenFindsIt!109 (_keys!5284 thiss!1248) (_values!3442 thiss!1248) (mask!8208 thiss!1248) (extraKeys!3200 thiss!1248) (zeroValue!3302 thiss!1248) (minValue!3302 thiss!1248) key!828 (defaultEntry!3459 thiss!1248)))))

(declare-fun res!79680 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167492 (= res!79680 (inRange!0 (index!4137 lt!83759) (mask!8208 thiss!1248)))))

(assert (=> b!167492 (=> (not res!79680) (not e!110014))))

(assert (=> b!167492 e!110014))

(declare-fun b!167493 () Bool)

(assert (=> b!167493 (= e!110020 true)))

(declare-fun lt!83757 () Bool)

(declare-datatypes ((List!2154 0))(
  ( (Nil!2151) (Cons!2150 (h!2767 (_ BitVec 64)) (t!6964 List!2154)) )
))
(declare-fun arrayNoDuplicates!0 (array!6722 (_ BitVec 32) List!2154) Bool)

(assert (=> b!167493 (= lt!83757 (arrayNoDuplicates!0 (_keys!5284 thiss!1248) #b00000000000000000000000000000000 Nil!2151))))

(declare-fun b!167494 () Bool)

(assert (=> b!167494 (= e!110013 e!110015)))

(declare-fun res!79683 () Bool)

(assert (=> b!167494 (=> (not res!79683) (not e!110015))))

(get-info :version)

(assert (=> b!167494 (= res!79683 (and (not ((_ is Undefined!492) lt!83759)) (not ((_ is MissingVacant!492) lt!83759)) (not ((_ is MissingZero!492) lt!83759)) ((_ is Found!492) lt!83759)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6722 (_ BitVec 32)) SeekEntryResult!492)

(assert (=> b!167494 (= lt!83759 (seekEntryOrOpen!0 key!828 (_keys!5284 thiss!1248) (mask!8208 thiss!1248)))))

(declare-fun mapNonEmpty!6438 () Bool)

(declare-fun tp!14634 () Bool)

(assert (=> mapNonEmpty!6438 (= mapRes!6438 (and tp!14634 e!110016))))

(declare-fun mapKey!6438 () (_ BitVec 32))

(declare-fun mapRest!6438 () (Array (_ BitVec 32) ValueCell!1563))

(declare-fun mapValue!6438 () ValueCell!1563)

(assert (=> mapNonEmpty!6438 (= (arr!3197 (_values!3442 thiss!1248)) (store mapRest!6438 mapKey!6438 mapValue!6438))))

(declare-fun res!79686 () Bool)

(assert (=> start!16718 (=> (not res!79686) (not e!110013))))

(declare-fun valid!880 (LongMapFixedSize!2034) Bool)

(assert (=> start!16718 (= res!79686 (valid!880 thiss!1248))))

(assert (=> start!16718 e!110013))

(assert (=> start!16718 e!110018))

(assert (=> start!16718 true))

(assert (=> start!16718 tp_is_empty!3813))

(assert (= (and start!16718 res!79686) b!167490))

(assert (= (and b!167490 res!79685) b!167494))

(assert (= (and b!167494 res!79683) b!167487))

(assert (= (and b!167487 c!30279) b!167492))

(assert (= (and b!167487 (not c!30279)) b!167486))

(assert (= (and b!167492 res!79680) b!167482))

(assert (= (and b!167487 (not res!79682)) b!167491))

(assert (= (and b!167491 (not res!79681)) b!167483))

(assert (= (and b!167483 (not res!79684)) b!167493))

(assert (= (and b!167488 condMapEmpty!6438) mapIsEmpty!6438))

(assert (= (and b!167488 (not condMapEmpty!6438)) mapNonEmpty!6438))

(assert (= (and mapNonEmpty!6438 ((_ is ValueCellFull!1563) mapValue!6438)) b!167485))

(assert (= (and b!167488 ((_ is ValueCellFull!1563) mapDefault!6438)) b!167484))

(assert (= b!167489 b!167488))

(assert (= start!16718 b!167489))

(declare-fun m!196649 () Bool)

(assert (=> b!167482 m!196649))

(declare-fun m!196651 () Bool)

(assert (=> b!167494 m!196651))

(declare-fun m!196653 () Bool)

(assert (=> start!16718 m!196653))

(declare-fun m!196655 () Bool)

(assert (=> b!167486 m!196655))

(declare-fun m!196657 () Bool)

(assert (=> b!167489 m!196657))

(declare-fun m!196659 () Bool)

(assert (=> b!167489 m!196659))

(declare-fun m!196661 () Bool)

(assert (=> b!167483 m!196661))

(declare-fun m!196663 () Bool)

(assert (=> b!167487 m!196663))

(declare-fun m!196665 () Bool)

(assert (=> b!167487 m!196665))

(declare-fun m!196667 () Bool)

(assert (=> b!167487 m!196667))

(declare-fun m!196669 () Bool)

(assert (=> b!167487 m!196669))

(declare-fun m!196671 () Bool)

(assert (=> b!167487 m!196671))

(declare-fun m!196673 () Bool)

(assert (=> b!167487 m!196673))

(declare-fun m!196675 () Bool)

(assert (=> b!167487 m!196675))

(declare-fun m!196677 () Bool)

(assert (=> mapNonEmpty!6438 m!196677))

(declare-fun m!196679 () Bool)

(assert (=> b!167493 m!196679))

(declare-fun m!196681 () Bool)

(assert (=> b!167492 m!196681))

(declare-fun m!196683 () Bool)

(assert (=> b!167492 m!196683))

(check-sat (not b!167483) (not mapNonEmpty!6438) (not b!167494) (not b!167486) (not b!167487) (not b_next!4011) b_and!10443 (not b!167493) (not start!16718) (not b!167492) tp_is_empty!3813 (not b!167489))
(check-sat b_and!10443 (not b_next!4011))
