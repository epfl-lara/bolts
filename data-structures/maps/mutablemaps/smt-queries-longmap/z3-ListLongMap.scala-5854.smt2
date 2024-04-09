; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75684 () Bool)

(assert start!75684)

(declare-fun b!889329 () Bool)

(declare-fun b_free!15627 () Bool)

(declare-fun b_next!15627 () Bool)

(assert (=> b!889329 (= b_free!15627 (not b_next!15627))))

(declare-fun tp!54851 () Bool)

(declare-fun b_and!25885 () Bool)

(assert (=> b!889329 (= tp!54851 b_and!25885)))

(declare-fun b!889321 () Bool)

(declare-fun res!602817 () Bool)

(declare-fun e!495764 () Bool)

(assert (=> b!889321 (=> (not res!602817) (not e!495764))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889321 (= res!602817 (not (= key!785 (bvneg key!785))))))

(declare-fun res!602813 () Bool)

(assert (=> start!75684 (=> (not res!602813) (not e!495764))))

(declare-datatypes ((array!51876 0))(
  ( (array!51877 (arr!24940 (Array (_ BitVec 32) (_ BitVec 64))) (size!25385 (_ BitVec 32))) )
))
(declare-datatypes ((V!28905 0))(
  ( (V!28906 (val!9028 Int)) )
))
(declare-datatypes ((ValueCell!8496 0))(
  ( (ValueCellFull!8496 (v!11500 V!28905)) (EmptyCell!8496) )
))
(declare-datatypes ((array!51878 0))(
  ( (array!51879 (arr!24941 (Array (_ BitVec 32) ValueCell!8496)) (size!25386 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4008 0))(
  ( (LongMapFixedSize!4009 (defaultEntry!5201 Int) (mask!25643 (_ BitVec 32)) (extraKeys!4895 (_ BitVec 32)) (zeroValue!4999 V!28905) (minValue!4999 V!28905) (_size!2059 (_ BitVec 32)) (_keys!9880 array!51876) (_values!5186 array!51878) (_vacant!2059 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4008)

(declare-fun valid!1548 (LongMapFixedSize!4008) Bool)

(assert (=> start!75684 (= res!602813 (valid!1548 thiss!1181))))

(assert (=> start!75684 e!495764))

(declare-fun e!495761 () Bool)

(assert (=> start!75684 e!495761))

(assert (=> start!75684 true))

(declare-fun mapIsEmpty!28487 () Bool)

(declare-fun mapRes!28487 () Bool)

(assert (=> mapIsEmpty!28487 mapRes!28487))

(declare-fun b!889322 () Bool)

(declare-fun e!495760 () Bool)

(declare-fun tp_is_empty!17955 () Bool)

(assert (=> b!889322 (= e!495760 tp_is_empty!17955)))

(declare-fun b!889323 () Bool)

(declare-fun e!495758 () Bool)

(assert (=> b!889323 (= e!495758 false)))

(declare-fun lt!401985 () Bool)

(declare-datatypes ((List!17786 0))(
  ( (Nil!17783) (Cons!17782 (h!18913 (_ BitVec 64)) (t!25093 List!17786)) )
))
(declare-fun arrayNoDuplicates!0 (array!51876 (_ BitVec 32) List!17786) Bool)

(assert (=> b!889323 (= lt!401985 (arrayNoDuplicates!0 (_keys!9880 thiss!1181) #b00000000000000000000000000000000 Nil!17783))))

(declare-fun mapNonEmpty!28487 () Bool)

(declare-fun tp!54850 () Bool)

(declare-fun e!495762 () Bool)

(assert (=> mapNonEmpty!28487 (= mapRes!28487 (and tp!54850 e!495762))))

(declare-fun mapValue!28487 () ValueCell!8496)

(declare-fun mapKey!28487 () (_ BitVec 32))

(declare-fun mapRest!28487 () (Array (_ BitVec 32) ValueCell!8496))

(assert (=> mapNonEmpty!28487 (= (arr!24941 (_values!5186 thiss!1181)) (store mapRest!28487 mapKey!28487 mapValue!28487))))

(declare-fun b!889324 () Bool)

(declare-fun res!602814 () Bool)

(assert (=> b!889324 (=> (not res!602814) (not e!495758))))

(assert (=> b!889324 (= res!602814 (and (= (size!25386 (_values!5186 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25643 thiss!1181))) (= (size!25385 (_keys!9880 thiss!1181)) (size!25386 (_values!5186 thiss!1181))) (bvsge (mask!25643 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4895 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4895 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889325 () Bool)

(assert (=> b!889325 (= e!495762 tp_is_empty!17955)))

(declare-fun b!889326 () Bool)

(assert (=> b!889326 (= e!495764 e!495758)))

(declare-fun res!602815 () Bool)

(assert (=> b!889326 (=> (not res!602815) (not e!495758))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889326 (= res!602815 (validMask!0 (mask!25643 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8764 0))(
  ( (MissingZero!8764 (index!37426 (_ BitVec 32))) (Found!8764 (index!37427 (_ BitVec 32))) (Intermediate!8764 (undefined!9576 Bool) (index!37428 (_ BitVec 32)) (x!75501 (_ BitVec 32))) (Undefined!8764) (MissingVacant!8764 (index!37429 (_ BitVec 32))) )
))
(declare-fun lt!401984 () SeekEntryResult!8764)

(declare-fun seekEntry!0 ((_ BitVec 64) array!51876 (_ BitVec 32)) SeekEntryResult!8764)

(assert (=> b!889326 (= lt!401984 (seekEntry!0 key!785 (_keys!9880 thiss!1181) (mask!25643 thiss!1181)))))

(declare-fun b!889327 () Bool)

(declare-fun e!495759 () Bool)

(assert (=> b!889327 (= e!495759 (and e!495760 mapRes!28487))))

(declare-fun condMapEmpty!28487 () Bool)

(declare-fun mapDefault!28487 () ValueCell!8496)

(assert (=> b!889327 (= condMapEmpty!28487 (= (arr!24941 (_values!5186 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8496)) mapDefault!28487)))))

(declare-fun b!889328 () Bool)

(declare-fun res!602816 () Bool)

(assert (=> b!889328 (=> (not res!602816) (not e!495758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51876 (_ BitVec 32)) Bool)

(assert (=> b!889328 (= res!602816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9880 thiss!1181) (mask!25643 thiss!1181)))))

(declare-fun array_inv!19590 (array!51876) Bool)

(declare-fun array_inv!19591 (array!51878) Bool)

(assert (=> b!889329 (= e!495761 (and tp!54851 tp_is_empty!17955 (array_inv!19590 (_keys!9880 thiss!1181)) (array_inv!19591 (_values!5186 thiss!1181)) e!495759))))

(assert (= (and start!75684 res!602813) b!889321))

(assert (= (and b!889321 res!602817) b!889326))

(assert (= (and b!889326 res!602815) b!889324))

(assert (= (and b!889324 res!602814) b!889328))

(assert (= (and b!889328 res!602816) b!889323))

(assert (= (and b!889327 condMapEmpty!28487) mapIsEmpty!28487))

(assert (= (and b!889327 (not condMapEmpty!28487)) mapNonEmpty!28487))

(get-info :version)

(assert (= (and mapNonEmpty!28487 ((_ is ValueCellFull!8496) mapValue!28487)) b!889325))

(assert (= (and b!889327 ((_ is ValueCellFull!8496) mapDefault!28487)) b!889322))

(assert (= b!889329 b!889327))

(assert (= start!75684 b!889329))

(declare-fun m!828329 () Bool)

(assert (=> b!889328 m!828329))

(declare-fun m!828331 () Bool)

(assert (=> mapNonEmpty!28487 m!828331))

(declare-fun m!828333 () Bool)

(assert (=> b!889326 m!828333))

(declare-fun m!828335 () Bool)

(assert (=> b!889326 m!828335))

(declare-fun m!828337 () Bool)

(assert (=> b!889323 m!828337))

(declare-fun m!828339 () Bool)

(assert (=> b!889329 m!828339))

(declare-fun m!828341 () Bool)

(assert (=> b!889329 m!828341))

(declare-fun m!828343 () Bool)

(assert (=> start!75684 m!828343))

(check-sat tp_is_empty!17955 b_and!25885 (not mapNonEmpty!28487) (not b!889328) (not b!889329) (not b!889323) (not b_next!15627) (not b!889326) (not start!75684))
(check-sat b_and!25885 (not b_next!15627))
