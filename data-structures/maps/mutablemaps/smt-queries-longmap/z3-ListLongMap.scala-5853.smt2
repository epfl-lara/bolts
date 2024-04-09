; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75678 () Bool)

(assert start!75678)

(declare-fun b!889248 () Bool)

(declare-fun b_free!15621 () Bool)

(declare-fun b_next!15621 () Bool)

(assert (=> b!889248 (= b_free!15621 (not b_next!15621))))

(declare-fun tp!54833 () Bool)

(declare-fun b_and!25879 () Bool)

(assert (=> b!889248 (= tp!54833 b_and!25879)))

(declare-fun b!889240 () Bool)

(declare-fun res!602769 () Bool)

(declare-fun e!495696 () Bool)

(assert (=> b!889240 (=> (not res!602769) (not e!495696))))

(declare-datatypes ((array!51864 0))(
  ( (array!51865 (arr!24934 (Array (_ BitVec 32) (_ BitVec 64))) (size!25379 (_ BitVec 32))) )
))
(declare-datatypes ((V!28897 0))(
  ( (V!28898 (val!9025 Int)) )
))
(declare-datatypes ((ValueCell!8493 0))(
  ( (ValueCellFull!8493 (v!11497 V!28897)) (EmptyCell!8493) )
))
(declare-datatypes ((array!51866 0))(
  ( (array!51867 (arr!24935 (Array (_ BitVec 32) ValueCell!8493)) (size!25380 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4002 0))(
  ( (LongMapFixedSize!4003 (defaultEntry!5198 Int) (mask!25638 (_ BitVec 32)) (extraKeys!4892 (_ BitVec 32)) (zeroValue!4996 V!28897) (minValue!4996 V!28897) (_size!2056 (_ BitVec 32)) (_keys!9877 array!51864) (_values!5183 array!51866) (_vacant!2056 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4002)

(assert (=> b!889240 (= res!602769 (and (= (size!25380 (_values!5183 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25638 thiss!1181))) (= (size!25379 (_keys!9877 thiss!1181)) (size!25380 (_values!5183 thiss!1181))) (bvsge (mask!25638 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4892 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4892 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889241 () Bool)

(assert (=> b!889241 (= e!495696 false)))

(declare-fun lt!401966 () Bool)

(declare-datatypes ((List!17784 0))(
  ( (Nil!17781) (Cons!17780 (h!18911 (_ BitVec 64)) (t!25091 List!17784)) )
))
(declare-fun arrayNoDuplicates!0 (array!51864 (_ BitVec 32) List!17784) Bool)

(assert (=> b!889241 (= lt!401966 (arrayNoDuplicates!0 (_keys!9877 thiss!1181) #b00000000000000000000000000000000 Nil!17781))))

(declare-fun mapNonEmpty!28478 () Bool)

(declare-fun mapRes!28478 () Bool)

(declare-fun tp!54832 () Bool)

(declare-fun e!495695 () Bool)

(assert (=> mapNonEmpty!28478 (= mapRes!28478 (and tp!54832 e!495695))))

(declare-fun mapKey!28478 () (_ BitVec 32))

(declare-fun mapValue!28478 () ValueCell!8493)

(declare-fun mapRest!28478 () (Array (_ BitVec 32) ValueCell!8493))

(assert (=> mapNonEmpty!28478 (= (arr!24935 (_values!5183 thiss!1181)) (store mapRest!28478 mapKey!28478 mapValue!28478))))

(declare-fun res!602771 () Bool)

(declare-fun e!495698 () Bool)

(assert (=> start!75678 (=> (not res!602771) (not e!495698))))

(declare-fun valid!1547 (LongMapFixedSize!4002) Bool)

(assert (=> start!75678 (= res!602771 (valid!1547 thiss!1181))))

(assert (=> start!75678 e!495698))

(declare-fun e!495699 () Bool)

(assert (=> start!75678 e!495699))

(assert (=> start!75678 true))

(declare-fun b!889242 () Bool)

(declare-fun e!495697 () Bool)

(declare-fun e!495701 () Bool)

(assert (=> b!889242 (= e!495697 (and e!495701 mapRes!28478))))

(declare-fun condMapEmpty!28478 () Bool)

(declare-fun mapDefault!28478 () ValueCell!8493)

(assert (=> b!889242 (= condMapEmpty!28478 (= (arr!24935 (_values!5183 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8493)) mapDefault!28478)))))

(declare-fun b!889243 () Bool)

(declare-fun tp_is_empty!17949 () Bool)

(assert (=> b!889243 (= e!495701 tp_is_empty!17949)))

(declare-fun b!889244 () Bool)

(declare-fun res!602770 () Bool)

(assert (=> b!889244 (=> (not res!602770) (not e!495696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51864 (_ BitVec 32)) Bool)

(assert (=> b!889244 (= res!602770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9877 thiss!1181) (mask!25638 thiss!1181)))))

(declare-fun b!889245 () Bool)

(declare-fun res!602772 () Bool)

(assert (=> b!889245 (=> (not res!602772) (not e!495698))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889245 (= res!602772 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889246 () Bool)

(assert (=> b!889246 (= e!495695 tp_is_empty!17949)))

(declare-fun b!889247 () Bool)

(assert (=> b!889247 (= e!495698 e!495696)))

(declare-fun res!602768 () Bool)

(assert (=> b!889247 (=> (not res!602768) (not e!495696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889247 (= res!602768 (validMask!0 (mask!25638 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8763 0))(
  ( (MissingZero!8763 (index!37422 (_ BitVec 32))) (Found!8763 (index!37423 (_ BitVec 32))) (Intermediate!8763 (undefined!9575 Bool) (index!37424 (_ BitVec 32)) (x!75492 (_ BitVec 32))) (Undefined!8763) (MissingVacant!8763 (index!37425 (_ BitVec 32))) )
))
(declare-fun lt!401967 () SeekEntryResult!8763)

(declare-fun seekEntry!0 ((_ BitVec 64) array!51864 (_ BitVec 32)) SeekEntryResult!8763)

(assert (=> b!889247 (= lt!401967 (seekEntry!0 key!785 (_keys!9877 thiss!1181) (mask!25638 thiss!1181)))))

(declare-fun array_inv!19584 (array!51864) Bool)

(declare-fun array_inv!19585 (array!51866) Bool)

(assert (=> b!889248 (= e!495699 (and tp!54833 tp_is_empty!17949 (array_inv!19584 (_keys!9877 thiss!1181)) (array_inv!19585 (_values!5183 thiss!1181)) e!495697))))

(declare-fun mapIsEmpty!28478 () Bool)

(assert (=> mapIsEmpty!28478 mapRes!28478))

(assert (= (and start!75678 res!602771) b!889245))

(assert (= (and b!889245 res!602772) b!889247))

(assert (= (and b!889247 res!602768) b!889240))

(assert (= (and b!889240 res!602769) b!889244))

(assert (= (and b!889244 res!602770) b!889241))

(assert (= (and b!889242 condMapEmpty!28478) mapIsEmpty!28478))

(assert (= (and b!889242 (not condMapEmpty!28478)) mapNonEmpty!28478))

(get-info :version)

(assert (= (and mapNonEmpty!28478 ((_ is ValueCellFull!8493) mapValue!28478)) b!889246))

(assert (= (and b!889242 ((_ is ValueCellFull!8493) mapDefault!28478)) b!889243))

(assert (= b!889248 b!889242))

(assert (= start!75678 b!889248))

(declare-fun m!828281 () Bool)

(assert (=> b!889248 m!828281))

(declare-fun m!828283 () Bool)

(assert (=> b!889248 m!828283))

(declare-fun m!828285 () Bool)

(assert (=> start!75678 m!828285))

(declare-fun m!828287 () Bool)

(assert (=> b!889244 m!828287))

(declare-fun m!828289 () Bool)

(assert (=> mapNonEmpty!28478 m!828289))

(declare-fun m!828291 () Bool)

(assert (=> b!889247 m!828291))

(declare-fun m!828293 () Bool)

(assert (=> b!889247 m!828293))

(declare-fun m!828295 () Bool)

(assert (=> b!889241 m!828295))

(check-sat (not mapNonEmpty!28478) (not start!75678) (not b!889241) (not b!889248) (not b_next!15621) tp_is_empty!17949 (not b!889244) (not b!889247) b_and!25879)
(check-sat b_and!25879 (not b_next!15621))
