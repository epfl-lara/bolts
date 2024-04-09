; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75696 () Bool)

(assert start!75696)

(declare-fun b!889489 () Bool)

(declare-fun b_free!15639 () Bool)

(declare-fun b_next!15639 () Bool)

(assert (=> b!889489 (= b_free!15639 (not b_next!15639))))

(declare-fun tp!54886 () Bool)

(declare-fun b_and!25897 () Bool)

(assert (=> b!889489 (= tp!54886 b_and!25897)))

(declare-fun mapNonEmpty!28505 () Bool)

(declare-fun mapRes!28505 () Bool)

(declare-fun tp!54887 () Bool)

(declare-fun e!495888 () Bool)

(assert (=> mapNonEmpty!28505 (= mapRes!28505 (and tp!54887 e!495888))))

(declare-datatypes ((array!51900 0))(
  ( (array!51901 (arr!24952 (Array (_ BitVec 32) (_ BitVec 64))) (size!25397 (_ BitVec 32))) )
))
(declare-datatypes ((V!28921 0))(
  ( (V!28922 (val!9034 Int)) )
))
(declare-datatypes ((ValueCell!8502 0))(
  ( (ValueCellFull!8502 (v!11506 V!28921)) (EmptyCell!8502) )
))
(declare-datatypes ((array!51902 0))(
  ( (array!51903 (arr!24953 (Array (_ BitVec 32) ValueCell!8502)) (size!25398 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4020 0))(
  ( (LongMapFixedSize!4021 (defaultEntry!5207 Int) (mask!25653 (_ BitVec 32)) (extraKeys!4901 (_ BitVec 32)) (zeroValue!5005 V!28921) (minValue!5005 V!28921) (_size!2065 (_ BitVec 32)) (_keys!9886 array!51900) (_values!5192 array!51902) (_vacant!2065 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4020)

(declare-fun mapValue!28505 () ValueCell!8502)

(declare-fun mapKey!28505 () (_ BitVec 32))

(declare-fun mapRest!28505 () (Array (_ BitVec 32) ValueCell!8502))

(assert (=> mapNonEmpty!28505 (= (arr!24953 (_values!5192 thiss!1181)) (store mapRest!28505 mapKey!28505 mapValue!28505))))

(declare-fun res!602903 () Bool)

(declare-fun e!495889 () Bool)

(assert (=> start!75696 (=> (not res!602903) (not e!495889))))

(declare-fun valid!1553 (LongMapFixedSize!4020) Bool)

(assert (=> start!75696 (= res!602903 (valid!1553 thiss!1181))))

(assert (=> start!75696 e!495889))

(declare-fun e!495886 () Bool)

(assert (=> start!75696 e!495886))

(assert (=> start!75696 true))

(declare-fun b!889483 () Bool)

(declare-fun res!602905 () Bool)

(declare-fun e!495884 () Bool)

(assert (=> b!889483 (=> (not res!602905) (not e!495884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51900 (_ BitVec 32)) Bool)

(assert (=> b!889483 (= res!602905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9886 thiss!1181) (mask!25653 thiss!1181)))))

(declare-fun b!889484 () Bool)

(assert (=> b!889484 (= e!495889 e!495884)))

(declare-fun res!602907 () Bool)

(assert (=> b!889484 (=> (not res!602907) (not e!495884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889484 (= res!602907 (validMask!0 (mask!25653 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8768 0))(
  ( (MissingZero!8768 (index!37442 (_ BitVec 32))) (Found!8768 (index!37443 (_ BitVec 32))) (Intermediate!8768 (undefined!9580 Bool) (index!37444 (_ BitVec 32)) (x!75521 (_ BitVec 32))) (Undefined!8768) (MissingVacant!8768 (index!37445 (_ BitVec 32))) )
))
(declare-fun lt!402021 () SeekEntryResult!8768)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51900 (_ BitVec 32)) SeekEntryResult!8768)

(assert (=> b!889484 (= lt!402021 (seekEntry!0 key!785 (_keys!9886 thiss!1181) (mask!25653 thiss!1181)))))

(declare-fun b!889485 () Bool)

(assert (=> b!889485 (= e!495884 false)))

(declare-fun lt!402020 () Bool)

(declare-datatypes ((List!17790 0))(
  ( (Nil!17787) (Cons!17786 (h!18917 (_ BitVec 64)) (t!25097 List!17790)) )
))
(declare-fun arrayNoDuplicates!0 (array!51900 (_ BitVec 32) List!17790) Bool)

(assert (=> b!889485 (= lt!402020 (arrayNoDuplicates!0 (_keys!9886 thiss!1181) #b00000000000000000000000000000000 Nil!17787))))

(declare-fun b!889486 () Bool)

(declare-fun res!602904 () Bool)

(assert (=> b!889486 (=> (not res!602904) (not e!495884))))

(assert (=> b!889486 (= res!602904 (and (= (size!25398 (_values!5192 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25653 thiss!1181))) (= (size!25397 (_keys!9886 thiss!1181)) (size!25398 (_values!5192 thiss!1181))) (bvsge (mask!25653 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4901 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4901 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889487 () Bool)

(declare-fun e!495890 () Bool)

(declare-fun tp_is_empty!17967 () Bool)

(assert (=> b!889487 (= e!495890 tp_is_empty!17967)))

(declare-fun b!889488 () Bool)

(declare-fun e!495887 () Bool)

(assert (=> b!889488 (= e!495887 (and e!495890 mapRes!28505))))

(declare-fun condMapEmpty!28505 () Bool)

(declare-fun mapDefault!28505 () ValueCell!8502)

(assert (=> b!889488 (= condMapEmpty!28505 (= (arr!24953 (_values!5192 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8502)) mapDefault!28505)))))

(declare-fun array_inv!19596 (array!51900) Bool)

(declare-fun array_inv!19597 (array!51902) Bool)

(assert (=> b!889489 (= e!495886 (and tp!54886 tp_is_empty!17967 (array_inv!19596 (_keys!9886 thiss!1181)) (array_inv!19597 (_values!5192 thiss!1181)) e!495887))))

(declare-fun mapIsEmpty!28505 () Bool)

(assert (=> mapIsEmpty!28505 mapRes!28505))

(declare-fun b!889490 () Bool)

(assert (=> b!889490 (= e!495888 tp_is_empty!17967)))

(declare-fun b!889491 () Bool)

(declare-fun res!602906 () Bool)

(assert (=> b!889491 (=> (not res!602906) (not e!495889))))

(assert (=> b!889491 (= res!602906 (not (= key!785 (bvneg key!785))))))

(assert (= (and start!75696 res!602903) b!889491))

(assert (= (and b!889491 res!602906) b!889484))

(assert (= (and b!889484 res!602907) b!889486))

(assert (= (and b!889486 res!602904) b!889483))

(assert (= (and b!889483 res!602905) b!889485))

(assert (= (and b!889488 condMapEmpty!28505) mapIsEmpty!28505))

(assert (= (and b!889488 (not condMapEmpty!28505)) mapNonEmpty!28505))

(get-info :version)

(assert (= (and mapNonEmpty!28505 ((_ is ValueCellFull!8502) mapValue!28505)) b!889490))

(assert (= (and b!889488 ((_ is ValueCellFull!8502) mapDefault!28505)) b!889487))

(assert (= b!889489 b!889488))

(assert (= start!75696 b!889489))

(declare-fun m!828425 () Bool)

(assert (=> b!889484 m!828425))

(declare-fun m!828427 () Bool)

(assert (=> b!889484 m!828427))

(declare-fun m!828429 () Bool)

(assert (=> mapNonEmpty!28505 m!828429))

(declare-fun m!828431 () Bool)

(assert (=> b!889483 m!828431))

(declare-fun m!828433 () Bool)

(assert (=> b!889485 m!828433))

(declare-fun m!828435 () Bool)

(assert (=> start!75696 m!828435))

(declare-fun m!828437 () Bool)

(assert (=> b!889489 m!828437))

(declare-fun m!828439 () Bool)

(assert (=> b!889489 m!828439))

(check-sat (not b!889483) tp_is_empty!17967 (not b!889489) b_and!25897 (not start!75696) (not b!889485) (not b_next!15639) (not mapNonEmpty!28505) (not b!889484))
(check-sat b_and!25897 (not b_next!15639))
