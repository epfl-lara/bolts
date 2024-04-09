; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75726 () Bool)

(assert start!75726)

(declare-fun b!889880 () Bool)

(declare-fun b_free!15669 () Bool)

(declare-fun b_next!15669 () Bool)

(assert (=> b!889880 (= b_free!15669 (not b_next!15669))))

(declare-fun tp!54977 () Bool)

(declare-fun b_and!25927 () Bool)

(assert (=> b!889880 (= tp!54977 b_and!25927)))

(declare-fun b!889878 () Bool)

(declare-fun e!496200 () Bool)

(declare-datatypes ((SeekEntryResult!8779 0))(
  ( (MissingZero!8779 (index!37486 (_ BitVec 32))) (Found!8779 (index!37487 (_ BitVec 32))) (Intermediate!8779 (undefined!9591 Bool) (index!37488 (_ BitVec 32)) (x!75572 (_ BitVec 32))) (Undefined!8779) (MissingVacant!8779 (index!37489 (_ BitVec 32))) )
))
(declare-fun lt!402111 () SeekEntryResult!8779)

(declare-datatypes ((array!51960 0))(
  ( (array!51961 (arr!24982 (Array (_ BitVec 32) (_ BitVec 64))) (size!25427 (_ BitVec 32))) )
))
(declare-datatypes ((V!28961 0))(
  ( (V!28962 (val!9049 Int)) )
))
(declare-datatypes ((ValueCell!8517 0))(
  ( (ValueCellFull!8517 (v!11521 V!28961)) (EmptyCell!8517) )
))
(declare-datatypes ((array!51962 0))(
  ( (array!51963 (arr!24983 (Array (_ BitVec 32) ValueCell!8517)) (size!25428 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4050 0))(
  ( (LongMapFixedSize!4051 (defaultEntry!5222 Int) (mask!25678 (_ BitVec 32)) (extraKeys!4916 (_ BitVec 32)) (zeroValue!5020 V!28961) (minValue!5020 V!28961) (_size!2080 (_ BitVec 32)) (_keys!9901 array!51960) (_values!5207 array!51962) (_vacant!2080 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4050)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!889878 (= e!496200 (inRange!0 (index!37487 lt!402111) (mask!25678 thiss!1181)))))

(declare-fun b!889879 () Bool)

(declare-fun res!603119 () Bool)

(declare-fun e!496199 () Bool)

(assert (=> b!889879 (=> (not res!603119) (not e!496199))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889879 (= res!603119 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28550 () Bool)

(declare-fun mapRes!28550 () Bool)

(assert (=> mapIsEmpty!28550 mapRes!28550))

(declare-fun tp_is_empty!17997 () Bool)

(declare-fun e!496201 () Bool)

(declare-fun e!496204 () Bool)

(declare-fun array_inv!19618 (array!51960) Bool)

(declare-fun array_inv!19619 (array!51962) Bool)

(assert (=> b!889880 (= e!496201 (and tp!54977 tp_is_empty!17997 (array_inv!19618 (_keys!9901 thiss!1181)) (array_inv!19619 (_values!5207 thiss!1181)) e!496204))))

(declare-fun mapNonEmpty!28550 () Bool)

(declare-fun tp!54976 () Bool)

(declare-fun e!496202 () Bool)

(assert (=> mapNonEmpty!28550 (= mapRes!28550 (and tp!54976 e!496202))))

(declare-fun mapRest!28550 () (Array (_ BitVec 32) ValueCell!8517))

(declare-fun mapKey!28550 () (_ BitVec 32))

(declare-fun mapValue!28550 () ValueCell!8517)

(assert (=> mapNonEmpty!28550 (= (arr!24983 (_values!5207 thiss!1181)) (store mapRest!28550 mapKey!28550 mapValue!28550))))

(declare-fun b!889881 () Bool)

(assert (=> b!889881 (= e!496202 tp_is_empty!17997)))

(declare-fun res!603120 () Bool)

(assert (=> start!75726 (=> (not res!603120) (not e!496199))))

(declare-fun valid!1564 (LongMapFixedSize!4050) Bool)

(assert (=> start!75726 (= res!603120 (valid!1564 thiss!1181))))

(assert (=> start!75726 e!496199))

(assert (=> start!75726 e!496201))

(assert (=> start!75726 true))

(declare-fun b!889882 () Bool)

(assert (=> b!889882 (= e!496199 (not true))))

(assert (=> b!889882 e!496200))

(declare-fun res!603118 () Bool)

(assert (=> b!889882 (=> res!603118 e!496200)))

(get-info :version)

(assert (=> b!889882 (= res!603118 (not ((_ is Found!8779) lt!402111)))))

(declare-datatypes ((Unit!30249 0))(
  ( (Unit!30250) )
))
(declare-fun lt!402110 () Unit!30249)

(declare-fun lemmaSeekEntryGivesInRangeIndex!4 (array!51960 array!51962 (_ BitVec 32) (_ BitVec 32) V!28961 V!28961 (_ BitVec 64)) Unit!30249)

(assert (=> b!889882 (= lt!402110 (lemmaSeekEntryGivesInRangeIndex!4 (_keys!9901 thiss!1181) (_values!5207 thiss!1181) (mask!25678 thiss!1181) (extraKeys!4916 thiss!1181) (zeroValue!5020 thiss!1181) (minValue!5020 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51960 (_ BitVec 32)) SeekEntryResult!8779)

(assert (=> b!889882 (= lt!402111 (seekEntry!0 key!785 (_keys!9901 thiss!1181) (mask!25678 thiss!1181)))))

(declare-fun b!889883 () Bool)

(declare-fun e!496205 () Bool)

(assert (=> b!889883 (= e!496204 (and e!496205 mapRes!28550))))

(declare-fun condMapEmpty!28550 () Bool)

(declare-fun mapDefault!28550 () ValueCell!8517)

(assert (=> b!889883 (= condMapEmpty!28550 (= (arr!24983 (_values!5207 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8517)) mapDefault!28550)))))

(declare-fun b!889884 () Bool)

(assert (=> b!889884 (= e!496205 tp_is_empty!17997)))

(assert (= (and start!75726 res!603120) b!889879))

(assert (= (and b!889879 res!603119) b!889882))

(assert (= (and b!889882 (not res!603118)) b!889878))

(assert (= (and b!889883 condMapEmpty!28550) mapIsEmpty!28550))

(assert (= (and b!889883 (not condMapEmpty!28550)) mapNonEmpty!28550))

(assert (= (and mapNonEmpty!28550 ((_ is ValueCellFull!8517) mapValue!28550)) b!889881))

(assert (= (and b!889883 ((_ is ValueCellFull!8517) mapDefault!28550)) b!889884))

(assert (= b!889880 b!889883))

(assert (= start!75726 b!889880))

(declare-fun m!828663 () Bool)

(assert (=> start!75726 m!828663))

(declare-fun m!828665 () Bool)

(assert (=> b!889882 m!828665))

(declare-fun m!828667 () Bool)

(assert (=> b!889882 m!828667))

(declare-fun m!828669 () Bool)

(assert (=> b!889880 m!828669))

(declare-fun m!828671 () Bool)

(assert (=> b!889880 m!828671))

(declare-fun m!828673 () Bool)

(assert (=> mapNonEmpty!28550 m!828673))

(declare-fun m!828675 () Bool)

(assert (=> b!889878 m!828675))

(check-sat (not mapNonEmpty!28550) tp_is_empty!17997 (not start!75726) (not b!889882) (not b!889878) b_and!25927 (not b_next!15669) (not b!889880))
(check-sat b_and!25927 (not b_next!15669))
