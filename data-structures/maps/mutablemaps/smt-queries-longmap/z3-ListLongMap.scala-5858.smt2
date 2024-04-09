; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75708 () Bool)

(assert start!75708)

(declare-fun b!889652 () Bool)

(declare-fun b_free!15651 () Bool)

(declare-fun b_next!15651 () Bool)

(assert (=> b!889652 (= b_free!15651 (not b_next!15651))))

(declare-fun tp!54923 () Bool)

(declare-fun b_and!25909 () Bool)

(assert (=> b!889652 (= tp!54923 b_and!25909)))

(declare-fun b!889645 () Bool)

(declare-fun e!496014 () Bool)

(declare-fun e!496015 () Bool)

(assert (=> b!889645 (= e!496014 e!496015)))

(declare-fun res!602993 () Bool)

(assert (=> b!889645 (=> (not res!602993) (not e!496015))))

(declare-datatypes ((array!51924 0))(
  ( (array!51925 (arr!24964 (Array (_ BitVec 32) (_ BitVec 64))) (size!25409 (_ BitVec 32))) )
))
(declare-datatypes ((V!28937 0))(
  ( (V!28938 (val!9040 Int)) )
))
(declare-datatypes ((ValueCell!8508 0))(
  ( (ValueCellFull!8508 (v!11512 V!28937)) (EmptyCell!8508) )
))
(declare-datatypes ((array!51926 0))(
  ( (array!51927 (arr!24965 (Array (_ BitVec 32) ValueCell!8508)) (size!25410 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4032 0))(
  ( (LongMapFixedSize!4033 (defaultEntry!5213 Int) (mask!25663 (_ BitVec 32)) (extraKeys!4907 (_ BitVec 32)) (zeroValue!5011 V!28937) (minValue!5011 V!28937) (_size!2071 (_ BitVec 32)) (_keys!9892 array!51924) (_values!5198 array!51926) (_vacant!2071 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4032)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889645 (= res!602993 (validMask!0 (mask!25663 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8772 0))(
  ( (MissingZero!8772 (index!37458 (_ BitVec 32))) (Found!8772 (index!37459 (_ BitVec 32))) (Intermediate!8772 (undefined!9584 Bool) (index!37460 (_ BitVec 32)) (x!75541 (_ BitVec 32))) (Undefined!8772) (MissingVacant!8772 (index!37461 (_ BitVec 32))) )
))
(declare-fun lt!402057 () SeekEntryResult!8772)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51924 (_ BitVec 32)) SeekEntryResult!8772)

(assert (=> b!889645 (= lt!402057 (seekEntry!0 key!785 (_keys!9892 thiss!1181) (mask!25663 thiss!1181)))))

(declare-fun b!889646 () Bool)

(declare-fun res!602997 () Bool)

(assert (=> b!889646 (=> (not res!602997) (not e!496015))))

(assert (=> b!889646 (= res!602997 (and (= (size!25410 (_values!5198 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25663 thiss!1181))) (= (size!25409 (_keys!9892 thiss!1181)) (size!25410 (_values!5198 thiss!1181))) (bvsge (mask!25663 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4907 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4907 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!28523 () Bool)

(declare-fun mapRes!28523 () Bool)

(declare-fun tp!54922 () Bool)

(declare-fun e!496016 () Bool)

(assert (=> mapNonEmpty!28523 (= mapRes!28523 (and tp!54922 e!496016))))

(declare-fun mapValue!28523 () ValueCell!8508)

(declare-fun mapKey!28523 () (_ BitVec 32))

(declare-fun mapRest!28523 () (Array (_ BitVec 32) ValueCell!8508))

(assert (=> mapNonEmpty!28523 (= (arr!24965 (_values!5198 thiss!1181)) (store mapRest!28523 mapKey!28523 mapValue!28523))))

(declare-fun b!889647 () Bool)

(declare-fun res!602994 () Bool)

(assert (=> b!889647 (=> (not res!602994) (not e!496015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51924 (_ BitVec 32)) Bool)

(assert (=> b!889647 (= res!602994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9892 thiss!1181) (mask!25663 thiss!1181)))))

(declare-fun res!602995 () Bool)

(assert (=> start!75708 (=> (not res!602995) (not e!496014))))

(declare-fun valid!1557 (LongMapFixedSize!4032) Bool)

(assert (=> start!75708 (= res!602995 (valid!1557 thiss!1181))))

(assert (=> start!75708 e!496014))

(declare-fun e!496011 () Bool)

(assert (=> start!75708 e!496011))

(assert (=> start!75708 true))

(declare-fun b!889648 () Bool)

(declare-fun e!496012 () Bool)

(declare-fun e!496010 () Bool)

(assert (=> b!889648 (= e!496012 (and e!496010 mapRes!28523))))

(declare-fun condMapEmpty!28523 () Bool)

(declare-fun mapDefault!28523 () ValueCell!8508)

(assert (=> b!889648 (= condMapEmpty!28523 (= (arr!24965 (_values!5198 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8508)) mapDefault!28523)))))

(declare-fun b!889649 () Bool)

(declare-fun res!602996 () Bool)

(assert (=> b!889649 (=> (not res!602996) (not e!496014))))

(assert (=> b!889649 (= res!602996 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889650 () Bool)

(assert (=> b!889650 (= e!496015 false)))

(declare-fun lt!402056 () Bool)

(declare-datatypes ((List!17794 0))(
  ( (Nil!17791) (Cons!17790 (h!18921 (_ BitVec 64)) (t!25101 List!17794)) )
))
(declare-fun arrayNoDuplicates!0 (array!51924 (_ BitVec 32) List!17794) Bool)

(assert (=> b!889650 (= lt!402056 (arrayNoDuplicates!0 (_keys!9892 thiss!1181) #b00000000000000000000000000000000 Nil!17791))))

(declare-fun b!889651 () Bool)

(declare-fun tp_is_empty!17979 () Bool)

(assert (=> b!889651 (= e!496010 tp_is_empty!17979)))

(declare-fun array_inv!19604 (array!51924) Bool)

(declare-fun array_inv!19605 (array!51926) Bool)

(assert (=> b!889652 (= e!496011 (and tp!54923 tp_is_empty!17979 (array_inv!19604 (_keys!9892 thiss!1181)) (array_inv!19605 (_values!5198 thiss!1181)) e!496012))))

(declare-fun mapIsEmpty!28523 () Bool)

(assert (=> mapIsEmpty!28523 mapRes!28523))

(declare-fun b!889653 () Bool)

(assert (=> b!889653 (= e!496016 tp_is_empty!17979)))

(assert (= (and start!75708 res!602995) b!889649))

(assert (= (and b!889649 res!602996) b!889645))

(assert (= (and b!889645 res!602993) b!889646))

(assert (= (and b!889646 res!602997) b!889647))

(assert (= (and b!889647 res!602994) b!889650))

(assert (= (and b!889648 condMapEmpty!28523) mapIsEmpty!28523))

(assert (= (and b!889648 (not condMapEmpty!28523)) mapNonEmpty!28523))

(get-info :version)

(assert (= (and mapNonEmpty!28523 ((_ is ValueCellFull!8508) mapValue!28523)) b!889653))

(assert (= (and b!889648 ((_ is ValueCellFull!8508) mapDefault!28523)) b!889651))

(assert (= b!889652 b!889648))

(assert (= start!75708 b!889652))

(declare-fun m!828521 () Bool)

(assert (=> b!889652 m!828521))

(declare-fun m!828523 () Bool)

(assert (=> b!889652 m!828523))

(declare-fun m!828525 () Bool)

(assert (=> b!889650 m!828525))

(declare-fun m!828527 () Bool)

(assert (=> b!889647 m!828527))

(declare-fun m!828529 () Bool)

(assert (=> start!75708 m!828529))

(declare-fun m!828531 () Bool)

(assert (=> mapNonEmpty!28523 m!828531))

(declare-fun m!828533 () Bool)

(assert (=> b!889645 m!828533))

(declare-fun m!828535 () Bool)

(assert (=> b!889645 m!828535))

(check-sat tp_is_empty!17979 (not b!889645) b_and!25909 (not b!889647) (not b!889650) (not mapNonEmpty!28523) (not b!889652) (not b_next!15651) (not start!75708))
(check-sat b_and!25909 (not b_next!15651))
