; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75702 () Bool)

(assert start!75702)

(declare-fun b!889565 () Bool)

(declare-fun b_free!15645 () Bool)

(declare-fun b_next!15645 () Bool)

(assert (=> b!889565 (= b_free!15645 (not b_next!15645))))

(declare-fun tp!54904 () Bool)

(declare-fun b_and!25903 () Bool)

(assert (=> b!889565 (= tp!54904 b_and!25903)))

(declare-fun b!889564 () Bool)

(declare-fun res!602952 () Bool)

(declare-fun e!495951 () Bool)

(assert (=> b!889564 (=> (not res!602952) (not e!495951))))

(declare-datatypes ((array!51912 0))(
  ( (array!51913 (arr!24958 (Array (_ BitVec 32) (_ BitVec 64))) (size!25403 (_ BitVec 32))) )
))
(declare-datatypes ((V!28929 0))(
  ( (V!28930 (val!9037 Int)) )
))
(declare-datatypes ((ValueCell!8505 0))(
  ( (ValueCellFull!8505 (v!11509 V!28929)) (EmptyCell!8505) )
))
(declare-datatypes ((array!51914 0))(
  ( (array!51915 (arr!24959 (Array (_ BitVec 32) ValueCell!8505)) (size!25404 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4026 0))(
  ( (LongMapFixedSize!4027 (defaultEntry!5210 Int) (mask!25658 (_ BitVec 32)) (extraKeys!4904 (_ BitVec 32)) (zeroValue!5008 V!28929) (minValue!5008 V!28929) (_size!2068 (_ BitVec 32)) (_keys!9889 array!51912) (_values!5195 array!51914) (_vacant!2068 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4026)

(assert (=> b!889564 (= res!602952 (and (= (size!25404 (_values!5195 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25658 thiss!1181))) (= (size!25403 (_keys!9889 thiss!1181)) (size!25404 (_values!5195 thiss!1181))) (bvsge (mask!25658 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4904 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4904 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun tp_is_empty!17973 () Bool)

(declare-fun e!495949 () Bool)

(declare-fun e!495947 () Bool)

(declare-fun array_inv!19602 (array!51912) Bool)

(declare-fun array_inv!19603 (array!51914) Bool)

(assert (=> b!889565 (= e!495947 (and tp!54904 tp_is_empty!17973 (array_inv!19602 (_keys!9889 thiss!1181)) (array_inv!19603 (_values!5195 thiss!1181)) e!495949))))

(declare-fun mapIsEmpty!28514 () Bool)

(declare-fun mapRes!28514 () Bool)

(assert (=> mapIsEmpty!28514 mapRes!28514))

(declare-fun b!889566 () Bool)

(declare-fun res!602948 () Bool)

(declare-fun e!495953 () Bool)

(assert (=> b!889566 (=> (not res!602948) (not e!495953))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889566 (= res!602948 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889567 () Bool)

(declare-fun e!495948 () Bool)

(assert (=> b!889567 (= e!495949 (and e!495948 mapRes!28514))))

(declare-fun condMapEmpty!28514 () Bool)

(declare-fun mapDefault!28514 () ValueCell!8505)

(assert (=> b!889567 (= condMapEmpty!28514 (= (arr!24959 (_values!5195 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8505)) mapDefault!28514)))))

(declare-fun res!602949 () Bool)

(assert (=> start!75702 (=> (not res!602949) (not e!495953))))

(declare-fun valid!1556 (LongMapFixedSize!4026) Bool)

(assert (=> start!75702 (= res!602949 (valid!1556 thiss!1181))))

(assert (=> start!75702 e!495953))

(assert (=> start!75702 e!495947))

(assert (=> start!75702 true))

(declare-fun b!889568 () Bool)

(assert (=> b!889568 (= e!495953 e!495951)))

(declare-fun res!602951 () Bool)

(assert (=> b!889568 (=> (not res!602951) (not e!495951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889568 (= res!602951 (validMask!0 (mask!25658 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8771 0))(
  ( (MissingZero!8771 (index!37454 (_ BitVec 32))) (Found!8771 (index!37455 (_ BitVec 32))) (Intermediate!8771 (undefined!9583 Bool) (index!37456 (_ BitVec 32)) (x!75532 (_ BitVec 32))) (Undefined!8771) (MissingVacant!8771 (index!37457 (_ BitVec 32))) )
))
(declare-fun lt!402038 () SeekEntryResult!8771)

(declare-fun seekEntry!0 ((_ BitVec 64) array!51912 (_ BitVec 32)) SeekEntryResult!8771)

(assert (=> b!889568 (= lt!402038 (seekEntry!0 key!785 (_keys!9889 thiss!1181) (mask!25658 thiss!1181)))))

(declare-fun b!889569 () Bool)

(declare-fun res!602950 () Bool)

(assert (=> b!889569 (=> (not res!602950) (not e!495951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51912 (_ BitVec 32)) Bool)

(assert (=> b!889569 (= res!602950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9889 thiss!1181) (mask!25658 thiss!1181)))))

(declare-fun b!889570 () Bool)

(assert (=> b!889570 (= e!495948 tp_is_empty!17973)))

(declare-fun b!889571 () Bool)

(declare-fun e!495950 () Bool)

(assert (=> b!889571 (= e!495950 tp_is_empty!17973)))

(declare-fun mapNonEmpty!28514 () Bool)

(declare-fun tp!54905 () Bool)

(assert (=> mapNonEmpty!28514 (= mapRes!28514 (and tp!54905 e!495950))))

(declare-fun mapKey!28514 () (_ BitVec 32))

(declare-fun mapRest!28514 () (Array (_ BitVec 32) ValueCell!8505))

(declare-fun mapValue!28514 () ValueCell!8505)

(assert (=> mapNonEmpty!28514 (= (arr!24959 (_values!5195 thiss!1181)) (store mapRest!28514 mapKey!28514 mapValue!28514))))

(declare-fun b!889572 () Bool)

(assert (=> b!889572 (= e!495951 false)))

(declare-fun lt!402039 () Bool)

(declare-datatypes ((List!17792 0))(
  ( (Nil!17789) (Cons!17788 (h!18919 (_ BitVec 64)) (t!25099 List!17792)) )
))
(declare-fun arrayNoDuplicates!0 (array!51912 (_ BitVec 32) List!17792) Bool)

(assert (=> b!889572 (= lt!402039 (arrayNoDuplicates!0 (_keys!9889 thiss!1181) #b00000000000000000000000000000000 Nil!17789))))

(assert (= (and start!75702 res!602949) b!889566))

(assert (= (and b!889566 res!602948) b!889568))

(assert (= (and b!889568 res!602951) b!889564))

(assert (= (and b!889564 res!602952) b!889569))

(assert (= (and b!889569 res!602950) b!889572))

(assert (= (and b!889567 condMapEmpty!28514) mapIsEmpty!28514))

(assert (= (and b!889567 (not condMapEmpty!28514)) mapNonEmpty!28514))

(get-info :version)

(assert (= (and mapNonEmpty!28514 ((_ is ValueCellFull!8505) mapValue!28514)) b!889571))

(assert (= (and b!889567 ((_ is ValueCellFull!8505) mapDefault!28514)) b!889570))

(assert (= b!889565 b!889567))

(assert (= start!75702 b!889565))

(declare-fun m!828473 () Bool)

(assert (=> b!889572 m!828473))

(declare-fun m!828475 () Bool)

(assert (=> b!889565 m!828475))

(declare-fun m!828477 () Bool)

(assert (=> b!889565 m!828477))

(declare-fun m!828479 () Bool)

(assert (=> start!75702 m!828479))

(declare-fun m!828481 () Bool)

(assert (=> b!889569 m!828481))

(declare-fun m!828483 () Bool)

(assert (=> b!889568 m!828483))

(declare-fun m!828485 () Bool)

(assert (=> b!889568 m!828485))

(declare-fun m!828487 () Bool)

(assert (=> mapNonEmpty!28514 m!828487))

(check-sat (not b_next!15645) (not b!889569) (not mapNonEmpty!28514) tp_is_empty!17973 (not start!75702) (not b!889572) (not b!889568) (not b!889565) b_and!25903)
(check-sat b_and!25903 (not b_next!15645))
