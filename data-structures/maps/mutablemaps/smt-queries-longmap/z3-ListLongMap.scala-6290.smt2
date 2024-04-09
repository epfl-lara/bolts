; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80448 () Bool)

(assert start!80448)

(declare-fun b!944529 () Bool)

(declare-fun b_free!18063 () Bool)

(declare-fun b_next!18063 () Bool)

(assert (=> b!944529 (= b_free!18063 (not b_next!18063))))

(declare-fun tp!62700 () Bool)

(declare-fun b_and!29499 () Bool)

(assert (=> b!944529 (= tp!62700 b_and!29499)))

(declare-fun b!944521 () Bool)

(declare-fun e!531191 () Bool)

(declare-fun tp_is_empty!20571 () Bool)

(assert (=> b!944521 (= e!531191 tp_is_empty!20571)))

(declare-fun mapNonEmpty!32682 () Bool)

(declare-fun mapRes!32682 () Bool)

(declare-fun tp!62699 () Bool)

(declare-fun e!531188 () Bool)

(assert (=> mapNonEmpty!32682 (= mapRes!32682 (and tp!62699 e!531188))))

(declare-fun mapKey!32682 () (_ BitVec 32))

(declare-datatypes ((V!32393 0))(
  ( (V!32394 (val!10336 Int)) )
))
(declare-datatypes ((ValueCell!9804 0))(
  ( (ValueCellFull!9804 (v!12868 V!32393)) (EmptyCell!9804) )
))
(declare-datatypes ((array!57132 0))(
  ( (array!57133 (arr!27487 (Array (_ BitVec 32) ValueCell!9804)) (size!27954 (_ BitVec 32))) )
))
(declare-datatypes ((array!57134 0))(
  ( (array!57135 (arr!27488 (Array (_ BitVec 32) (_ BitVec 64))) (size!27955 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4758 0))(
  ( (LongMapFixedSize!4759 (defaultEntry!5674 Int) (mask!27321 (_ BitVec 32)) (extraKeys!5406 (_ BitVec 32)) (zeroValue!5510 V!32393) (minValue!5510 V!32393) (_size!2434 (_ BitVec 32)) (_keys!10548 array!57134) (_values!5697 array!57132) (_vacant!2434 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4758)

(declare-fun mapValue!32682 () ValueCell!9804)

(declare-fun mapRest!32682 () (Array (_ BitVec 32) ValueCell!9804))

(assert (=> mapNonEmpty!32682 (= (arr!27487 (_values!5697 thiss!1141)) (store mapRest!32682 mapKey!32682 mapValue!32682))))

(declare-fun b!944522 () Bool)

(declare-fun res!634617 () Bool)

(declare-fun e!531187 () Bool)

(assert (=> b!944522 (=> (not res!634617) (not e!531187))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!944522 (= res!634617 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944523 () Bool)

(declare-fun res!634623 () Bool)

(declare-fun e!531192 () Bool)

(assert (=> b!944523 (=> res!634623 e!531192)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57134 (_ BitVec 32)) Bool)

(assert (=> b!944523 (= res!634623 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10548 thiss!1141) (mask!27321 thiss!1141))))))

(declare-fun res!634621 () Bool)

(assert (=> start!80448 (=> (not res!634621) (not e!531187))))

(declare-fun valid!1794 (LongMapFixedSize!4758) Bool)

(assert (=> start!80448 (= res!634621 (valid!1794 thiss!1141))))

(assert (=> start!80448 e!531187))

(declare-fun e!531190 () Bool)

(assert (=> start!80448 e!531190))

(assert (=> start!80448 true))

(declare-fun b!944524 () Bool)

(assert (=> b!944524 (= e!531192 true)))

(declare-datatypes ((SeekEntryResult!9064 0))(
  ( (MissingZero!9064 (index!38626 (_ BitVec 32))) (Found!9064 (index!38627 (_ BitVec 32))) (Intermediate!9064 (undefined!9876 Bool) (index!38628 (_ BitVec 32)) (x!81124 (_ BitVec 32))) (Undefined!9064) (MissingVacant!9064 (index!38629 (_ BitVec 32))) )
))
(declare-fun lt!425651 () SeekEntryResult!9064)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57134 (_ BitVec 32)) SeekEntryResult!9064)

(assert (=> b!944524 (= lt!425651 (seekEntryOrOpen!0 key!756 (_keys!10548 thiss!1141) (mask!27321 thiss!1141)))))

(declare-fun b!944525 () Bool)

(declare-fun e!531186 () Bool)

(assert (=> b!944525 (= e!531186 (and e!531191 mapRes!32682))))

(declare-fun condMapEmpty!32682 () Bool)

(declare-fun mapDefault!32682 () ValueCell!9804)

(assert (=> b!944525 (= condMapEmpty!32682 (= (arr!27487 (_values!5697 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9804)) mapDefault!32682)))))

(declare-fun b!944526 () Bool)

(assert (=> b!944526 (= e!531188 tp_is_empty!20571)))

(declare-fun b!944527 () Bool)

(declare-fun res!634620 () Bool)

(assert (=> b!944527 (=> (not res!634620) (not e!531187))))

(get-info :version)

(declare-fun seekEntry!0 ((_ BitVec 64) array!57134 (_ BitVec 32)) SeekEntryResult!9064)

(assert (=> b!944527 (= res!634620 (not ((_ is Found!9064) (seekEntry!0 key!756 (_keys!10548 thiss!1141) (mask!27321 thiss!1141)))))))

(declare-fun b!944528 () Bool)

(declare-fun res!634624 () Bool)

(assert (=> b!944528 (=> res!634624 e!531192)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944528 (= res!634624 (not (validKeyInArray!0 key!756)))))

(declare-fun array_inv!21300 (array!57134) Bool)

(declare-fun array_inv!21301 (array!57132) Bool)

(assert (=> b!944529 (= e!531190 (and tp!62700 tp_is_empty!20571 (array_inv!21300 (_keys!10548 thiss!1141)) (array_inv!21301 (_values!5697 thiss!1141)) e!531186))))

(declare-fun b!944530 () Bool)

(declare-fun res!634622 () Bool)

(assert (=> b!944530 (=> (not res!634622) (not e!531187))))

(declare-datatypes ((tuple2!13586 0))(
  ( (tuple2!13587 (_1!6803 (_ BitVec 64)) (_2!6803 V!32393)) )
))
(declare-datatypes ((List!19407 0))(
  ( (Nil!19404) (Cons!19403 (h!20554 tuple2!13586) (t!27732 List!19407)) )
))
(declare-datatypes ((ListLongMap!12297 0))(
  ( (ListLongMap!12298 (toList!6164 List!19407)) )
))
(declare-fun contains!5187 (ListLongMap!12297 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3352 (array!57134 array!57132 (_ BitVec 32) (_ BitVec 32) V!32393 V!32393 (_ BitVec 32) Int) ListLongMap!12297)

(assert (=> b!944530 (= res!634622 (contains!5187 (getCurrentListMap!3352 (_keys!10548 thiss!1141) (_values!5697 thiss!1141) (mask!27321 thiss!1141) (extraKeys!5406 thiss!1141) (zeroValue!5510 thiss!1141) (minValue!5510 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5674 thiss!1141)) key!756))))

(declare-fun mapIsEmpty!32682 () Bool)

(assert (=> mapIsEmpty!32682 mapRes!32682))

(declare-fun b!944531 () Bool)

(declare-fun res!634619 () Bool)

(assert (=> b!944531 (=> res!634619 e!531192)))

(assert (=> b!944531 (= res!634619 (not (= (size!27955 (_keys!10548 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27321 thiss!1141)))))))

(declare-fun b!944532 () Bool)

(assert (=> b!944532 (= e!531187 (not e!531192))))

(declare-fun res!634618 () Bool)

(assert (=> b!944532 (=> res!634618 e!531192)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944532 (= res!634618 (not (validMask!0 (mask!27321 thiss!1141))))))

(declare-fun lt!425652 () (_ BitVec 32))

(assert (=> b!944532 (arrayForallSeekEntryOrOpenFound!0 lt!425652 (_keys!10548 thiss!1141) (mask!27321 thiss!1141))))

(declare-datatypes ((Unit!31855 0))(
  ( (Unit!31856) )
))
(declare-fun lt!425653 () Unit!31855)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57134 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31855)

(assert (=> b!944532 (= lt!425653 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10548 thiss!1141) (mask!27321 thiss!1141) #b00000000000000000000000000000000 lt!425652))))

(declare-fun arrayScanForKey!0 (array!57134 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944532 (= lt!425652 (arrayScanForKey!0 (_keys!10548 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944532 (arrayContainsKey!0 (_keys!10548 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425654 () Unit!31855)

(declare-fun lemmaKeyInListMapIsInArray!311 (array!57134 array!57132 (_ BitVec 32) (_ BitVec 32) V!32393 V!32393 (_ BitVec 64) Int) Unit!31855)

(assert (=> b!944532 (= lt!425654 (lemmaKeyInListMapIsInArray!311 (_keys!10548 thiss!1141) (_values!5697 thiss!1141) (mask!27321 thiss!1141) (extraKeys!5406 thiss!1141) (zeroValue!5510 thiss!1141) (minValue!5510 thiss!1141) key!756 (defaultEntry!5674 thiss!1141)))))

(assert (= (and start!80448 res!634621) b!944522))

(assert (= (and b!944522 res!634617) b!944527))

(assert (= (and b!944527 res!634620) b!944530))

(assert (= (and b!944530 res!634622) b!944532))

(assert (= (and b!944532 (not res!634618)) b!944531))

(assert (= (and b!944531 (not res!634619)) b!944523))

(assert (= (and b!944523 (not res!634623)) b!944528))

(assert (= (and b!944528 (not res!634624)) b!944524))

(assert (= (and b!944525 condMapEmpty!32682) mapIsEmpty!32682))

(assert (= (and b!944525 (not condMapEmpty!32682)) mapNonEmpty!32682))

(assert (= (and mapNonEmpty!32682 ((_ is ValueCellFull!9804) mapValue!32682)) b!944526))

(assert (= (and b!944525 ((_ is ValueCellFull!9804) mapDefault!32682)) b!944521))

(assert (= b!944529 b!944525))

(assert (= start!80448 b!944529))

(declare-fun m!878601 () Bool)

(assert (=> start!80448 m!878601))

(declare-fun m!878603 () Bool)

(assert (=> b!944527 m!878603))

(declare-fun m!878605 () Bool)

(assert (=> b!944530 m!878605))

(assert (=> b!944530 m!878605))

(declare-fun m!878607 () Bool)

(assert (=> b!944530 m!878607))

(declare-fun m!878609 () Bool)

(assert (=> b!944532 m!878609))

(declare-fun m!878611 () Bool)

(assert (=> b!944532 m!878611))

(declare-fun m!878613 () Bool)

(assert (=> b!944532 m!878613))

(declare-fun m!878615 () Bool)

(assert (=> b!944532 m!878615))

(declare-fun m!878617 () Bool)

(assert (=> b!944532 m!878617))

(declare-fun m!878619 () Bool)

(assert (=> b!944532 m!878619))

(declare-fun m!878621 () Bool)

(assert (=> b!944523 m!878621))

(declare-fun m!878623 () Bool)

(assert (=> b!944524 m!878623))

(declare-fun m!878625 () Bool)

(assert (=> b!944529 m!878625))

(declare-fun m!878627 () Bool)

(assert (=> b!944529 m!878627))

(declare-fun m!878629 () Bool)

(assert (=> b!944528 m!878629))

(declare-fun m!878631 () Bool)

(assert (=> mapNonEmpty!32682 m!878631))

(check-sat (not b!944524) (not mapNonEmpty!32682) (not b_next!18063) (not b!944529) (not b!944527) (not b!944528) (not start!80448) tp_is_empty!20571 b_and!29499 (not b!944530) (not b!944532) (not b!944523))
(check-sat b_and!29499 (not b_next!18063))
