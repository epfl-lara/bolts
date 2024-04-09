; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75762 () Bool)

(assert start!75762)

(declare-fun b!890349 () Bool)

(declare-fun b_free!15705 () Bool)

(declare-fun b_next!15705 () Bool)

(assert (=> b!890349 (= b_free!15705 (not b_next!15705))))

(declare-fun tp!55085 () Bool)

(declare-fun b_and!25963 () Bool)

(assert (=> b!890349 (= tp!55085 b_and!25963)))

(declare-fun b!890348 () Bool)

(declare-fun res!603377 () Bool)

(declare-fun e!496630 () Bool)

(assert (=> b!890348 (=> (not res!603377) (not e!496630))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!890348 (= res!603377 (not (= key!785 (bvneg key!785))))))

(declare-datatypes ((array!52032 0))(
  ( (array!52033 (arr!25018 (Array (_ BitVec 32) (_ BitVec 64))) (size!25463 (_ BitVec 32))) )
))
(declare-datatypes ((V!29009 0))(
  ( (V!29010 (val!9067 Int)) )
))
(declare-datatypes ((ValueCell!8535 0))(
  ( (ValueCellFull!8535 (v!11539 V!29009)) (EmptyCell!8535) )
))
(declare-datatypes ((array!52034 0))(
  ( (array!52035 (arr!25019 (Array (_ BitVec 32) ValueCell!8535)) (size!25464 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4086 0))(
  ( (LongMapFixedSize!4087 (defaultEntry!5240 Int) (mask!25708 (_ BitVec 32)) (extraKeys!4934 (_ BitVec 32)) (zeroValue!5038 V!29009) (minValue!5038 V!29009) (_size!2098 (_ BitVec 32)) (_keys!9919 array!52032) (_values!5225 array!52034) (_vacant!2098 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4086)

(declare-fun e!496625 () Bool)

(declare-fun e!496623 () Bool)

(declare-fun tp_is_empty!18033 () Bool)

(declare-fun array_inv!19642 (array!52032) Bool)

(declare-fun array_inv!19643 (array!52034) Bool)

(assert (=> b!890349 (= e!496625 (and tp!55085 tp_is_empty!18033 (array_inv!19642 (_keys!9919 thiss!1181)) (array_inv!19643 (_values!5225 thiss!1181)) e!496623))))

(declare-fun b!890350 () Bool)

(declare-fun e!496631 () Bool)

(assert (=> b!890350 (= e!496631 tp_is_empty!18033)))

(declare-fun b!890351 () Bool)

(declare-fun e!496627 () Bool)

(assert (=> b!890351 (= e!496627 tp_is_empty!18033)))

(declare-fun b!890352 () Bool)

(declare-fun e!496624 () Bool)

(declare-datatypes ((SeekEntryResult!8795 0))(
  ( (MissingZero!8795 (index!37550 (_ BitVec 32))) (Found!8795 (index!37551 (_ BitVec 32))) (Intermediate!8795 (undefined!9607 Bool) (index!37552 (_ BitVec 32)) (x!75636 (_ BitVec 32))) (Undefined!8795) (MissingVacant!8795 (index!37553 (_ BitVec 32))) )
))
(declare-fun lt!402267 () SeekEntryResult!8795)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890352 (= e!496624 (inRange!0 (index!37551 lt!402267) (mask!25708 thiss!1181)))))

(declare-fun b!890353 () Bool)

(declare-fun mapRes!28604 () Bool)

(assert (=> b!890353 (= e!496623 (and e!496631 mapRes!28604))))

(declare-fun condMapEmpty!28604 () Bool)

(declare-fun mapDefault!28604 () ValueCell!8535)

(assert (=> b!890353 (= condMapEmpty!28604 (= (arr!25019 (_values!5225 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8535)) mapDefault!28604)))))

(declare-fun b!890354 () Bool)

(declare-fun e!496628 () Bool)

(assert (=> b!890354 (= e!496630 (not e!496628))))

(declare-fun res!603375 () Bool)

(assert (=> b!890354 (=> res!603375 e!496628)))

(get-info :version)

(assert (=> b!890354 (= res!603375 (not ((_ is Found!8795) lt!402267)))))

(assert (=> b!890354 e!496624))

(declare-fun res!603374 () Bool)

(assert (=> b!890354 (=> res!603374 e!496624)))

(assert (=> b!890354 (= res!603374 (not ((_ is Found!8795) lt!402267)))))

(declare-datatypes ((Unit!30275 0))(
  ( (Unit!30276) )
))
(declare-fun lt!402265 () Unit!30275)

(declare-fun lemmaSeekEntryGivesInRangeIndex!17 (array!52032 array!52034 (_ BitVec 32) (_ BitVec 32) V!29009 V!29009 (_ BitVec 64)) Unit!30275)

(assert (=> b!890354 (= lt!402265 (lemmaSeekEntryGivesInRangeIndex!17 (_keys!9919 thiss!1181) (_values!5225 thiss!1181) (mask!25708 thiss!1181) (extraKeys!4934 thiss!1181) (zeroValue!5038 thiss!1181) (minValue!5038 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52032 (_ BitVec 32)) SeekEntryResult!8795)

(assert (=> b!890354 (= lt!402267 (seekEntry!0 key!785 (_keys!9919 thiss!1181) (mask!25708 thiss!1181)))))

(declare-fun res!603376 () Bool)

(assert (=> start!75762 (=> (not res!603376) (not e!496630))))

(declare-fun valid!1576 (LongMapFixedSize!4086) Bool)

(assert (=> start!75762 (= res!603376 (valid!1576 thiss!1181))))

(assert (=> start!75762 e!496630))

(assert (=> start!75762 e!496625))

(assert (=> start!75762 true))

(declare-fun b!890355 () Bool)

(declare-fun e!496629 () Bool)

(assert (=> b!890355 (= e!496628 e!496629)))

(declare-fun res!603378 () Bool)

(assert (=> b!890355 (=> res!603378 e!496629)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890355 (= res!603378 (not (validMask!0 (mask!25708 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890355 (arrayContainsKey!0 (_keys!9919 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402264 () Unit!30275)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52032 (_ BitVec 64) (_ BitVec 32)) Unit!30275)

(assert (=> b!890355 (= lt!402264 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9919 thiss!1181) key!785 (index!37551 lt!402267)))))

(declare-fun b!890356 () Bool)

(declare-fun res!603373 () Bool)

(assert (=> b!890356 (=> res!603373 e!496629)))

(assert (=> b!890356 (= res!603373 (or (not (= (size!25464 (_values!5225 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25708 thiss!1181)))) (not (= (size!25463 (_keys!9919 thiss!1181)) (size!25464 (_values!5225 thiss!1181)))) (bvslt (mask!25708 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4934 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4934 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890357 () Bool)

(assert (=> b!890357 (= e!496629 true)))

(declare-fun lt!402266 () Bool)

(declare-datatypes ((List!17804 0))(
  ( (Nil!17801) (Cons!17800 (h!18931 (_ BitVec 64)) (t!25111 List!17804)) )
))
(declare-fun arrayNoDuplicates!0 (array!52032 (_ BitVec 32) List!17804) Bool)

(assert (=> b!890357 (= lt!402266 (arrayNoDuplicates!0 (_keys!9919 thiss!1181) #b00000000000000000000000000000000 Nil!17801))))

(declare-fun mapNonEmpty!28604 () Bool)

(declare-fun tp!55084 () Bool)

(assert (=> mapNonEmpty!28604 (= mapRes!28604 (and tp!55084 e!496627))))

(declare-fun mapValue!28604 () ValueCell!8535)

(declare-fun mapRest!28604 () (Array (_ BitVec 32) ValueCell!8535))

(declare-fun mapKey!28604 () (_ BitVec 32))

(assert (=> mapNonEmpty!28604 (= (arr!25019 (_values!5225 thiss!1181)) (store mapRest!28604 mapKey!28604 mapValue!28604))))

(declare-fun b!890358 () Bool)

(declare-fun res!603372 () Bool)

(assert (=> b!890358 (=> res!603372 e!496629)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52032 (_ BitVec 32)) Bool)

(assert (=> b!890358 (= res!603372 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9919 thiss!1181) (mask!25708 thiss!1181))))))

(declare-fun mapIsEmpty!28604 () Bool)

(assert (=> mapIsEmpty!28604 mapRes!28604))

(assert (= (and start!75762 res!603376) b!890348))

(assert (= (and b!890348 res!603377) b!890354))

(assert (= (and b!890354 (not res!603374)) b!890352))

(assert (= (and b!890354 (not res!603375)) b!890355))

(assert (= (and b!890355 (not res!603378)) b!890356))

(assert (= (and b!890356 (not res!603373)) b!890358))

(assert (= (and b!890358 (not res!603372)) b!890357))

(assert (= (and b!890353 condMapEmpty!28604) mapIsEmpty!28604))

(assert (= (and b!890353 (not condMapEmpty!28604)) mapNonEmpty!28604))

(assert (= (and mapNonEmpty!28604 ((_ is ValueCellFull!8535) mapValue!28604)) b!890351))

(assert (= (and b!890353 ((_ is ValueCellFull!8535) mapDefault!28604)) b!890350))

(assert (= b!890349 b!890353))

(assert (= start!75762 b!890349))

(declare-fun m!828985 () Bool)

(assert (=> b!890358 m!828985))

(declare-fun m!828987 () Bool)

(assert (=> b!890349 m!828987))

(declare-fun m!828989 () Bool)

(assert (=> b!890349 m!828989))

(declare-fun m!828991 () Bool)

(assert (=> b!890355 m!828991))

(declare-fun m!828993 () Bool)

(assert (=> b!890355 m!828993))

(declare-fun m!828995 () Bool)

(assert (=> b!890355 m!828995))

(declare-fun m!828997 () Bool)

(assert (=> start!75762 m!828997))

(declare-fun m!828999 () Bool)

(assert (=> b!890352 m!828999))

(declare-fun m!829001 () Bool)

(assert (=> b!890354 m!829001))

(declare-fun m!829003 () Bool)

(assert (=> b!890354 m!829003))

(declare-fun m!829005 () Bool)

(assert (=> mapNonEmpty!28604 m!829005))

(declare-fun m!829007 () Bool)

(assert (=> b!890357 m!829007))

(check-sat (not mapNonEmpty!28604) (not b!890349) (not b!890357) b_and!25963 (not b!890352) (not b!890355) (not start!75762) (not b_next!15705) tp_is_empty!18033 (not b!890354) (not b!890358))
(check-sat b_and!25963 (not b_next!15705))
