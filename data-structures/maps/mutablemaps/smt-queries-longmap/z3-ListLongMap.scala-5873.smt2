; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75798 () Bool)

(assert start!75798)

(declare-fun b!890946 () Bool)

(declare-fun b_free!15741 () Bool)

(declare-fun b_next!15741 () Bool)

(assert (=> b!890946 (= b_free!15741 (not b_next!15741))))

(declare-fun tp!55193 () Bool)

(declare-fun b_and!25999 () Bool)

(assert (=> b!890946 (= tp!55193 b_and!25999)))

(declare-fun b!890942 () Bool)

(declare-fun e!497114 () Bool)

(assert (=> b!890942 (= e!497114 true)))

(declare-fun lt!402482 () Bool)

(declare-datatypes ((array!52104 0))(
  ( (array!52105 (arr!25054 (Array (_ BitVec 32) (_ BitVec 64))) (size!25499 (_ BitVec 32))) )
))
(declare-datatypes ((V!29057 0))(
  ( (V!29058 (val!9085 Int)) )
))
(declare-datatypes ((ValueCell!8553 0))(
  ( (ValueCellFull!8553 (v!11557 V!29057)) (EmptyCell!8553) )
))
(declare-datatypes ((array!52106 0))(
  ( (array!52107 (arr!25055 (Array (_ BitVec 32) ValueCell!8553)) (size!25500 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4122 0))(
  ( (LongMapFixedSize!4123 (defaultEntry!5258 Int) (mask!25738 (_ BitVec 32)) (extraKeys!4952 (_ BitVec 32)) (zeroValue!5056 V!29057) (minValue!5056 V!29057) (_size!2116 (_ BitVec 32)) (_keys!9937 array!52104) (_values!5243 array!52106) (_vacant!2116 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4122)

(declare-datatypes ((List!17816 0))(
  ( (Nil!17813) (Cons!17812 (h!18943 (_ BitVec 64)) (t!25123 List!17816)) )
))
(declare-fun arrayNoDuplicates!0 (array!52104 (_ BitVec 32) List!17816) Bool)

(assert (=> b!890942 (= lt!402482 (arrayNoDuplicates!0 (_keys!9937 thiss!1181) #b00000000000000000000000000000000 Nil!17813))))

(declare-fun res!603756 () Bool)

(declare-fun e!497111 () Bool)

(assert (=> start!75798 (=> (not res!603756) (not e!497111))))

(declare-fun valid!1588 (LongMapFixedSize!4122) Bool)

(assert (=> start!75798 (= res!603756 (valid!1588 thiss!1181))))

(assert (=> start!75798 e!497111))

(declare-fun e!497117 () Bool)

(assert (=> start!75798 e!497117))

(assert (=> start!75798 true))

(declare-fun mapIsEmpty!28658 () Bool)

(declare-fun mapRes!28658 () Bool)

(assert (=> mapIsEmpty!28658 mapRes!28658))

(declare-fun b!890943 () Bool)

(declare-fun e!497115 () Bool)

(declare-fun e!497113 () Bool)

(assert (=> b!890943 (= e!497115 (and e!497113 mapRes!28658))))

(declare-fun condMapEmpty!28658 () Bool)

(declare-fun mapDefault!28658 () ValueCell!8553)

(assert (=> b!890943 (= condMapEmpty!28658 (= (arr!25055 (_values!5243 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8553)) mapDefault!28658)))))

(declare-fun b!890944 () Bool)

(declare-fun res!603750 () Bool)

(assert (=> b!890944 (=> (not res!603750) (not e!497111))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!890944 (= res!603750 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890945 () Bool)

(declare-fun tp_is_empty!18069 () Bool)

(assert (=> b!890945 (= e!497113 tp_is_empty!18069)))

(declare-fun array_inv!19664 (array!52104) Bool)

(declare-fun array_inv!19665 (array!52106) Bool)

(assert (=> b!890946 (= e!497117 (and tp!55193 tp_is_empty!18069 (array_inv!19664 (_keys!9937 thiss!1181)) (array_inv!19665 (_values!5243 thiss!1181)) e!497115))))

(declare-fun b!890947 () Bool)

(declare-fun e!497112 () Bool)

(declare-datatypes ((SeekEntryResult!8810 0))(
  ( (MissingZero!8810 (index!37610 (_ BitVec 32))) (Found!8810 (index!37611 (_ BitVec 32))) (Intermediate!8810 (undefined!9622 Bool) (index!37612 (_ BitVec 32)) (x!75699 (_ BitVec 32))) (Undefined!8810) (MissingVacant!8810 (index!37613 (_ BitVec 32))) )
))
(declare-fun lt!402480 () SeekEntryResult!8810)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890947 (= e!497112 (inRange!0 (index!37611 lt!402480) (mask!25738 thiss!1181)))))

(declare-fun b!890948 () Bool)

(declare-fun e!497116 () Bool)

(assert (=> b!890948 (= e!497116 tp_is_empty!18069)))

(declare-fun mapNonEmpty!28658 () Bool)

(declare-fun tp!55192 () Bool)

(assert (=> mapNonEmpty!28658 (= mapRes!28658 (and tp!55192 e!497116))))

(declare-fun mapRest!28658 () (Array (_ BitVec 32) ValueCell!8553))

(declare-fun mapKey!28658 () (_ BitVec 32))

(declare-fun mapValue!28658 () ValueCell!8553)

(assert (=> mapNonEmpty!28658 (= (arr!25055 (_values!5243 thiss!1181)) (store mapRest!28658 mapKey!28658 mapValue!28658))))

(declare-fun b!890949 () Bool)

(declare-fun e!497109 () Bool)

(assert (=> b!890949 (= e!497109 e!497114)))

(declare-fun res!603753 () Bool)

(assert (=> b!890949 (=> res!603753 e!497114)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890949 (= res!603753 (not (validMask!0 (mask!25738 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890949 (arrayContainsKey!0 (_keys!9937 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30305 0))(
  ( (Unit!30306) )
))
(declare-fun lt!402483 () Unit!30305)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52104 (_ BitVec 64) (_ BitVec 32)) Unit!30305)

(assert (=> b!890949 (= lt!402483 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9937 thiss!1181) key!785 (index!37611 lt!402480)))))

(declare-fun b!890950 () Bool)

(declare-fun res!603751 () Bool)

(assert (=> b!890950 (=> res!603751 e!497114)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52104 (_ BitVec 32)) Bool)

(assert (=> b!890950 (= res!603751 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9937 thiss!1181) (mask!25738 thiss!1181))))))

(declare-fun b!890951 () Bool)

(assert (=> b!890951 (= e!497111 (not e!497109))))

(declare-fun res!603755 () Bool)

(assert (=> b!890951 (=> res!603755 e!497109)))

(get-info :version)

(assert (=> b!890951 (= res!603755 (not ((_ is Found!8810) lt!402480)))))

(assert (=> b!890951 e!497112))

(declare-fun res!603754 () Bool)

(assert (=> b!890951 (=> res!603754 e!497112)))

(assert (=> b!890951 (= res!603754 (not ((_ is Found!8810) lt!402480)))))

(declare-fun lt!402481 () Unit!30305)

(declare-fun lemmaSeekEntryGivesInRangeIndex!31 (array!52104 array!52106 (_ BitVec 32) (_ BitVec 32) V!29057 V!29057 (_ BitVec 64)) Unit!30305)

(assert (=> b!890951 (= lt!402481 (lemmaSeekEntryGivesInRangeIndex!31 (_keys!9937 thiss!1181) (_values!5243 thiss!1181) (mask!25738 thiss!1181) (extraKeys!4952 thiss!1181) (zeroValue!5056 thiss!1181) (minValue!5056 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52104 (_ BitVec 32)) SeekEntryResult!8810)

(assert (=> b!890951 (= lt!402480 (seekEntry!0 key!785 (_keys!9937 thiss!1181) (mask!25738 thiss!1181)))))

(declare-fun b!890952 () Bool)

(declare-fun res!603752 () Bool)

(assert (=> b!890952 (=> res!603752 e!497114)))

(assert (=> b!890952 (= res!603752 (or (not (= (size!25500 (_values!5243 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25738 thiss!1181)))) (not (= (size!25499 (_keys!9937 thiss!1181)) (size!25500 (_values!5243 thiss!1181)))) (bvslt (mask!25738 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4952 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4952 thiss!1181) #b00000000000000000000000000000011)))))

(assert (= (and start!75798 res!603756) b!890944))

(assert (= (and b!890944 res!603750) b!890951))

(assert (= (and b!890951 (not res!603754)) b!890947))

(assert (= (and b!890951 (not res!603755)) b!890949))

(assert (= (and b!890949 (not res!603753)) b!890952))

(assert (= (and b!890952 (not res!603752)) b!890950))

(assert (= (and b!890950 (not res!603751)) b!890942))

(assert (= (and b!890943 condMapEmpty!28658) mapIsEmpty!28658))

(assert (= (and b!890943 (not condMapEmpty!28658)) mapNonEmpty!28658))

(assert (= (and mapNonEmpty!28658 ((_ is ValueCellFull!8553) mapValue!28658)) b!890948))

(assert (= (and b!890943 ((_ is ValueCellFull!8553) mapDefault!28658)) b!890945))

(assert (= b!890946 b!890943))

(assert (= start!75798 b!890946))

(declare-fun m!829417 () Bool)

(assert (=> b!890946 m!829417))

(declare-fun m!829419 () Bool)

(assert (=> b!890946 m!829419))

(declare-fun m!829421 () Bool)

(assert (=> b!890951 m!829421))

(declare-fun m!829423 () Bool)

(assert (=> b!890951 m!829423))

(declare-fun m!829425 () Bool)

(assert (=> mapNonEmpty!28658 m!829425))

(declare-fun m!829427 () Bool)

(assert (=> b!890947 m!829427))

(declare-fun m!829429 () Bool)

(assert (=> b!890950 m!829429))

(declare-fun m!829431 () Bool)

(assert (=> b!890942 m!829431))

(declare-fun m!829433 () Bool)

(assert (=> b!890949 m!829433))

(declare-fun m!829435 () Bool)

(assert (=> b!890949 m!829435))

(declare-fun m!829437 () Bool)

(assert (=> b!890949 m!829437))

(declare-fun m!829439 () Bool)

(assert (=> start!75798 m!829439))

(check-sat (not start!75798) (not b!890951) (not b!890950) b_and!25999 (not b!890942) (not b_next!15741) (not b!890949) (not mapNonEmpty!28658) tp_is_empty!18069 (not b!890946) (not b!890947))
(check-sat b_and!25999 (not b_next!15741))
