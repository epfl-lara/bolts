; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75714 () Bool)

(assert start!75714)

(declare-fun b!889733 () Bool)

(declare-fun b_free!15657 () Bool)

(declare-fun b_next!15657 () Bool)

(assert (=> b!889733 (= b_free!15657 (not b_next!15657))))

(declare-fun tp!54940 () Bool)

(declare-fun b_and!25915 () Bool)

(assert (=> b!889733 (= tp!54940 b_and!25915)))

(declare-fun b!889726 () Bool)

(declare-fun res!603041 () Bool)

(declare-fun e!496078 () Bool)

(assert (=> b!889726 (=> (not res!603041) (not e!496078))))

(declare-datatypes ((array!51936 0))(
  ( (array!51937 (arr!24970 (Array (_ BitVec 32) (_ BitVec 64))) (size!25415 (_ BitVec 32))) )
))
(declare-datatypes ((V!28945 0))(
  ( (V!28946 (val!9043 Int)) )
))
(declare-datatypes ((ValueCell!8511 0))(
  ( (ValueCellFull!8511 (v!11515 V!28945)) (EmptyCell!8511) )
))
(declare-datatypes ((array!51938 0))(
  ( (array!51939 (arr!24971 (Array (_ BitVec 32) ValueCell!8511)) (size!25416 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4038 0))(
  ( (LongMapFixedSize!4039 (defaultEntry!5216 Int) (mask!25668 (_ BitVec 32)) (extraKeys!4910 (_ BitVec 32)) (zeroValue!5014 V!28945) (minValue!5014 V!28945) (_size!2074 (_ BitVec 32)) (_keys!9895 array!51936) (_values!5201 array!51938) (_vacant!2074 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4038)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51936 (_ BitVec 32)) Bool)

(assert (=> b!889726 (= res!603041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9895 thiss!1181) (mask!25668 thiss!1181)))))

(declare-fun b!889727 () Bool)

(assert (=> b!889727 (= e!496078 false)))

(declare-fun lt!402074 () Bool)

(declare-datatypes ((List!17797 0))(
  ( (Nil!17794) (Cons!17793 (h!18924 (_ BitVec 64)) (t!25104 List!17797)) )
))
(declare-fun arrayNoDuplicates!0 (array!51936 (_ BitVec 32) List!17797) Bool)

(assert (=> b!889727 (= lt!402074 (arrayNoDuplicates!0 (_keys!9895 thiss!1181) #b00000000000000000000000000000000 Nil!17794))))

(declare-fun b!889728 () Bool)

(declare-fun e!496075 () Bool)

(declare-fun e!496077 () Bool)

(declare-fun mapRes!28532 () Bool)

(assert (=> b!889728 (= e!496075 (and e!496077 mapRes!28532))))

(declare-fun condMapEmpty!28532 () Bool)

(declare-fun mapDefault!28532 () ValueCell!8511)

(assert (=> b!889728 (= condMapEmpty!28532 (= (arr!24971 (_values!5201 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8511)) mapDefault!28532)))))

(declare-fun b!889729 () Bool)

(declare-fun res!603040 () Bool)

(assert (=> b!889729 (=> (not res!603040) (not e!496078))))

(assert (=> b!889729 (= res!603040 (and (= (size!25416 (_values!5201 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25668 thiss!1181))) (= (size!25415 (_keys!9895 thiss!1181)) (size!25416 (_values!5201 thiss!1181))) (bvsge (mask!25668 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4910 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4910 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889730 () Bool)

(declare-fun e!496074 () Bool)

(declare-fun tp_is_empty!17985 () Bool)

(assert (=> b!889730 (= e!496074 tp_is_empty!17985)))

(declare-fun res!603039 () Bool)

(declare-fun e!496079 () Bool)

(assert (=> start!75714 (=> (not res!603039) (not e!496079))))

(declare-fun valid!1560 (LongMapFixedSize!4038) Bool)

(assert (=> start!75714 (= res!603039 (valid!1560 thiss!1181))))

(assert (=> start!75714 e!496079))

(declare-fun e!496076 () Bool)

(assert (=> start!75714 e!496076))

(assert (=> start!75714 true))

(declare-fun mapIsEmpty!28532 () Bool)

(assert (=> mapIsEmpty!28532 mapRes!28532))

(declare-fun mapNonEmpty!28532 () Bool)

(declare-fun tp!54941 () Bool)

(assert (=> mapNonEmpty!28532 (= mapRes!28532 (and tp!54941 e!496074))))

(declare-fun mapKey!28532 () (_ BitVec 32))

(declare-fun mapValue!28532 () ValueCell!8511)

(declare-fun mapRest!28532 () (Array (_ BitVec 32) ValueCell!8511))

(assert (=> mapNonEmpty!28532 (= (arr!24971 (_values!5201 thiss!1181)) (store mapRest!28532 mapKey!28532 mapValue!28532))))

(declare-fun b!889731 () Bool)

(declare-fun res!603038 () Bool)

(assert (=> b!889731 (=> (not res!603038) (not e!496079))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889731 (= res!603038 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889732 () Bool)

(assert (=> b!889732 (= e!496077 tp_is_empty!17985)))

(declare-fun array_inv!19610 (array!51936) Bool)

(declare-fun array_inv!19611 (array!51938) Bool)

(assert (=> b!889733 (= e!496076 (and tp!54940 tp_is_empty!17985 (array_inv!19610 (_keys!9895 thiss!1181)) (array_inv!19611 (_values!5201 thiss!1181)) e!496075))))

(declare-fun b!889734 () Bool)

(assert (=> b!889734 (= e!496079 e!496078)))

(declare-fun res!603042 () Bool)

(assert (=> b!889734 (=> (not res!603042) (not e!496078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889734 (= res!603042 (validMask!0 (mask!25668 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8774 0))(
  ( (MissingZero!8774 (index!37466 (_ BitVec 32))) (Found!8774 (index!37467 (_ BitVec 32))) (Intermediate!8774 (undefined!9586 Bool) (index!37468 (_ BitVec 32)) (x!75551 (_ BitVec 32))) (Undefined!8774) (MissingVacant!8774 (index!37469 (_ BitVec 32))) )
))
(declare-fun lt!402075 () SeekEntryResult!8774)

(declare-fun seekEntry!0 ((_ BitVec 64) array!51936 (_ BitVec 32)) SeekEntryResult!8774)

(assert (=> b!889734 (= lt!402075 (seekEntry!0 key!785 (_keys!9895 thiss!1181) (mask!25668 thiss!1181)))))

(assert (= (and start!75714 res!603039) b!889731))

(assert (= (and b!889731 res!603038) b!889734))

(assert (= (and b!889734 res!603042) b!889729))

(assert (= (and b!889729 res!603040) b!889726))

(assert (= (and b!889726 res!603041) b!889727))

(assert (= (and b!889728 condMapEmpty!28532) mapIsEmpty!28532))

(assert (= (and b!889728 (not condMapEmpty!28532)) mapNonEmpty!28532))

(get-info :version)

(assert (= (and mapNonEmpty!28532 ((_ is ValueCellFull!8511) mapValue!28532)) b!889730))

(assert (= (and b!889728 ((_ is ValueCellFull!8511) mapDefault!28532)) b!889732))

(assert (= b!889733 b!889728))

(assert (= start!75714 b!889733))

(declare-fun m!828569 () Bool)

(assert (=> b!889734 m!828569))

(declare-fun m!828571 () Bool)

(assert (=> b!889734 m!828571))

(declare-fun m!828573 () Bool)

(assert (=> start!75714 m!828573))

(declare-fun m!828575 () Bool)

(assert (=> b!889733 m!828575))

(declare-fun m!828577 () Bool)

(assert (=> b!889733 m!828577))

(declare-fun m!828579 () Bool)

(assert (=> b!889726 m!828579))

(declare-fun m!828581 () Bool)

(assert (=> mapNonEmpty!28532 m!828581))

(declare-fun m!828583 () Bool)

(assert (=> b!889727 m!828583))

(check-sat (not b!889726) (not mapNonEmpty!28532) (not b_next!15657) (not b!889734) b_and!25915 (not b!889733) (not start!75714) (not b!889727) tp_is_empty!17985)
(check-sat b_and!25915 (not b_next!15657))
