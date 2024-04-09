; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75768 () Bool)

(assert start!75768)

(declare-fun b!890452 () Bool)

(declare-fun b_free!15711 () Bool)

(declare-fun b_next!15711 () Bool)

(assert (=> b!890452 (= b_free!15711 (not b_next!15711))))

(declare-fun tp!55103 () Bool)

(declare-fun b_and!25969 () Bool)

(assert (=> b!890452 (= tp!55103 b_and!25969)))

(declare-fun res!603440 () Bool)

(declare-fun e!496706 () Bool)

(assert (=> start!75768 (=> (not res!603440) (not e!496706))))

(declare-datatypes ((array!52044 0))(
  ( (array!52045 (arr!25024 (Array (_ BitVec 32) (_ BitVec 64))) (size!25469 (_ BitVec 32))) )
))
(declare-datatypes ((V!29017 0))(
  ( (V!29018 (val!9070 Int)) )
))
(declare-datatypes ((ValueCell!8538 0))(
  ( (ValueCellFull!8538 (v!11542 V!29017)) (EmptyCell!8538) )
))
(declare-datatypes ((array!52046 0))(
  ( (array!52047 (arr!25025 (Array (_ BitVec 32) ValueCell!8538)) (size!25470 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4092 0))(
  ( (LongMapFixedSize!4093 (defaultEntry!5243 Int) (mask!25713 (_ BitVec 32)) (extraKeys!4937 (_ BitVec 32)) (zeroValue!5041 V!29017) (minValue!5041 V!29017) (_size!2101 (_ BitVec 32)) (_keys!9922 array!52044) (_values!5228 array!52046) (_vacant!2101 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4092)

(declare-fun valid!1578 (LongMapFixedSize!4092) Bool)

(assert (=> start!75768 (= res!603440 (valid!1578 thiss!1181))))

(assert (=> start!75768 e!496706))

(declare-fun e!496711 () Bool)

(assert (=> start!75768 e!496711))

(assert (=> start!75768 true))

(declare-fun mapIsEmpty!28613 () Bool)

(declare-fun mapRes!28613 () Bool)

(assert (=> mapIsEmpty!28613 mapRes!28613))

(declare-fun b!890447 () Bool)

(declare-fun res!603441 () Bool)

(declare-fun e!496712 () Bool)

(assert (=> b!890447 (=> res!603441 e!496712)))

(assert (=> b!890447 (= res!603441 (or (not (= (size!25470 (_values!5228 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25713 thiss!1181)))) (not (= (size!25469 (_keys!9922 thiss!1181)) (size!25470 (_values!5228 thiss!1181)))) (bvslt (mask!25713 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4937 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4937 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890448 () Bool)

(assert (=> b!890448 (= e!496712 true)))

(declare-fun lt!402303 () Bool)

(declare-datatypes ((List!17806 0))(
  ( (Nil!17803) (Cons!17802 (h!18933 (_ BitVec 64)) (t!25113 List!17806)) )
))
(declare-fun arrayNoDuplicates!0 (array!52044 (_ BitVec 32) List!17806) Bool)

(assert (=> b!890448 (= lt!402303 (arrayNoDuplicates!0 (_keys!9922 thiss!1181) #b00000000000000000000000000000000 Nil!17803))))

(declare-fun b!890449 () Bool)

(declare-fun res!603438 () Bool)

(assert (=> b!890449 (=> (not res!603438) (not e!496706))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!890449 (= res!603438 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890450 () Bool)

(declare-fun e!496705 () Bool)

(declare-datatypes ((SeekEntryResult!8797 0))(
  ( (MissingZero!8797 (index!37558 (_ BitVec 32))) (Found!8797 (index!37559 (_ BitVec 32))) (Intermediate!8797 (undefined!9609 Bool) (index!37560 (_ BitVec 32)) (x!75646 (_ BitVec 32))) (Undefined!8797) (MissingVacant!8797 (index!37561 (_ BitVec 32))) )
))
(declare-fun lt!402300 () SeekEntryResult!8797)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890450 (= e!496705 (inRange!0 (index!37559 lt!402300) (mask!25713 thiss!1181)))))

(declare-fun b!890451 () Bool)

(declare-fun e!496708 () Bool)

(declare-fun e!496704 () Bool)

(assert (=> b!890451 (= e!496708 (and e!496704 mapRes!28613))))

(declare-fun condMapEmpty!28613 () Bool)

(declare-fun mapDefault!28613 () ValueCell!8538)

(assert (=> b!890451 (= condMapEmpty!28613 (= (arr!25025 (_values!5228 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8538)) mapDefault!28613)))))

(declare-fun tp_is_empty!18039 () Bool)

(declare-fun array_inv!19646 (array!52044) Bool)

(declare-fun array_inv!19647 (array!52046) Bool)

(assert (=> b!890452 (= e!496711 (and tp!55103 tp_is_empty!18039 (array_inv!19646 (_keys!9922 thiss!1181)) (array_inv!19647 (_values!5228 thiss!1181)) e!496708))))

(declare-fun b!890453 () Bool)

(declare-fun e!496709 () Bool)

(assert (=> b!890453 (= e!496709 tp_is_empty!18039)))

(declare-fun b!890454 () Bool)

(declare-fun res!603436 () Bool)

(assert (=> b!890454 (=> res!603436 e!496712)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52044 (_ BitVec 32)) Bool)

(assert (=> b!890454 (= res!603436 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9922 thiss!1181) (mask!25713 thiss!1181))))))

(declare-fun mapNonEmpty!28613 () Bool)

(declare-fun tp!55102 () Bool)

(assert (=> mapNonEmpty!28613 (= mapRes!28613 (and tp!55102 e!496709))))

(declare-fun mapValue!28613 () ValueCell!8538)

(declare-fun mapRest!28613 () (Array (_ BitVec 32) ValueCell!8538))

(declare-fun mapKey!28613 () (_ BitVec 32))

(assert (=> mapNonEmpty!28613 (= (arr!25025 (_values!5228 thiss!1181)) (store mapRest!28613 mapKey!28613 mapValue!28613))))

(declare-fun b!890455 () Bool)

(declare-fun e!496710 () Bool)

(assert (=> b!890455 (= e!496706 (not e!496710))))

(declare-fun res!603435 () Bool)

(assert (=> b!890455 (=> res!603435 e!496710)))

(get-info :version)

(assert (=> b!890455 (= res!603435 (not ((_ is Found!8797) lt!402300)))))

(assert (=> b!890455 e!496705))

(declare-fun res!603439 () Bool)

(assert (=> b!890455 (=> res!603439 e!496705)))

(assert (=> b!890455 (= res!603439 (not ((_ is Found!8797) lt!402300)))))

(declare-datatypes ((Unit!30279 0))(
  ( (Unit!30280) )
))
(declare-fun lt!402302 () Unit!30279)

(declare-fun lemmaSeekEntryGivesInRangeIndex!19 (array!52044 array!52046 (_ BitVec 32) (_ BitVec 32) V!29017 V!29017 (_ BitVec 64)) Unit!30279)

(assert (=> b!890455 (= lt!402302 (lemmaSeekEntryGivesInRangeIndex!19 (_keys!9922 thiss!1181) (_values!5228 thiss!1181) (mask!25713 thiss!1181) (extraKeys!4937 thiss!1181) (zeroValue!5041 thiss!1181) (minValue!5041 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52044 (_ BitVec 32)) SeekEntryResult!8797)

(assert (=> b!890455 (= lt!402300 (seekEntry!0 key!785 (_keys!9922 thiss!1181) (mask!25713 thiss!1181)))))

(declare-fun b!890456 () Bool)

(assert (=> b!890456 (= e!496704 tp_is_empty!18039)))

(declare-fun b!890457 () Bool)

(assert (=> b!890457 (= e!496710 e!496712)))

(declare-fun res!603437 () Bool)

(assert (=> b!890457 (=> res!603437 e!496712)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890457 (= res!603437 (not (validMask!0 (mask!25713 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890457 (arrayContainsKey!0 (_keys!9922 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402301 () Unit!30279)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52044 (_ BitVec 64) (_ BitVec 32)) Unit!30279)

(assert (=> b!890457 (= lt!402301 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9922 thiss!1181) key!785 (index!37559 lt!402300)))))

(assert (= (and start!75768 res!603440) b!890449))

(assert (= (and b!890449 res!603438) b!890455))

(assert (= (and b!890455 (not res!603439)) b!890450))

(assert (= (and b!890455 (not res!603435)) b!890457))

(assert (= (and b!890457 (not res!603437)) b!890447))

(assert (= (and b!890447 (not res!603441)) b!890454))

(assert (= (and b!890454 (not res!603436)) b!890448))

(assert (= (and b!890451 condMapEmpty!28613) mapIsEmpty!28613))

(assert (= (and b!890451 (not condMapEmpty!28613)) mapNonEmpty!28613))

(assert (= (and mapNonEmpty!28613 ((_ is ValueCellFull!8538) mapValue!28613)) b!890453))

(assert (= (and b!890451 ((_ is ValueCellFull!8538) mapDefault!28613)) b!890456))

(assert (= b!890452 b!890451))

(assert (= start!75768 b!890452))

(declare-fun m!829057 () Bool)

(assert (=> mapNonEmpty!28613 m!829057))

(declare-fun m!829059 () Bool)

(assert (=> b!890450 m!829059))

(declare-fun m!829061 () Bool)

(assert (=> b!890452 m!829061))

(declare-fun m!829063 () Bool)

(assert (=> b!890452 m!829063))

(declare-fun m!829065 () Bool)

(assert (=> b!890457 m!829065))

(declare-fun m!829067 () Bool)

(assert (=> b!890457 m!829067))

(declare-fun m!829069 () Bool)

(assert (=> b!890457 m!829069))

(declare-fun m!829071 () Bool)

(assert (=> b!890454 m!829071))

(declare-fun m!829073 () Bool)

(assert (=> b!890455 m!829073))

(declare-fun m!829075 () Bool)

(assert (=> b!890455 m!829075))

(declare-fun m!829077 () Bool)

(assert (=> b!890448 m!829077))

(declare-fun m!829079 () Bool)

(assert (=> start!75768 m!829079))

(check-sat (not b!890455) (not mapNonEmpty!28613) (not start!75768) (not b!890450) (not b_next!15711) (not b!890457) b_and!25969 tp_is_empty!18039 (not b!890452) (not b!890448) (not b!890454))
(check-sat b_and!25969 (not b_next!15711))
