; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75742 () Bool)

(assert start!75742)

(declare-fun b!890047 () Bool)

(declare-fun b_free!15685 () Bool)

(declare-fun b_next!15685 () Bool)

(assert (=> b!890047 (= b_free!15685 (not b_next!15685))))

(declare-fun tp!55024 () Bool)

(declare-fun b_and!25943 () Bool)

(assert (=> b!890047 (= tp!55024 b_and!25943)))

(declare-fun mapNonEmpty!28574 () Bool)

(declare-fun mapRes!28574 () Bool)

(declare-fun tp!55025 () Bool)

(declare-fun e!496367 () Bool)

(assert (=> mapNonEmpty!28574 (= mapRes!28574 (and tp!55025 e!496367))))

(declare-datatypes ((V!28983 0))(
  ( (V!28984 (val!9057 Int)) )
))
(declare-datatypes ((ValueCell!8525 0))(
  ( (ValueCellFull!8525 (v!11529 V!28983)) (EmptyCell!8525) )
))
(declare-fun mapRest!28574 () (Array (_ BitVec 32) ValueCell!8525))

(declare-datatypes ((array!51992 0))(
  ( (array!51993 (arr!24998 (Array (_ BitVec 32) (_ BitVec 64))) (size!25443 (_ BitVec 32))) )
))
(declare-datatypes ((array!51994 0))(
  ( (array!51995 (arr!24999 (Array (_ BitVec 32) ValueCell!8525)) (size!25444 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4066 0))(
  ( (LongMapFixedSize!4067 (defaultEntry!5230 Int) (mask!25692 (_ BitVec 32)) (extraKeys!4924 (_ BitVec 32)) (zeroValue!5028 V!28983) (minValue!5028 V!28983) (_size!2088 (_ BitVec 32)) (_keys!9909 array!51992) (_values!5215 array!51994) (_vacant!2088 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4066)

(declare-fun mapValue!28574 () ValueCell!8525)

(declare-fun mapKey!28574 () (_ BitVec 32))

(assert (=> mapNonEmpty!28574 (= (arr!24999 (_values!5215 thiss!1181)) (store mapRest!28574 mapKey!28574 mapValue!28574))))

(declare-fun b!890046 () Bool)

(declare-fun tp_is_empty!18013 () Bool)

(assert (=> b!890046 (= e!496367 tp_is_empty!18013)))

(declare-fun mapIsEmpty!28574 () Bool)

(assert (=> mapIsEmpty!28574 mapRes!28574))

(declare-fun e!496368 () Bool)

(declare-fun e!496369 () Bool)

(declare-fun array_inv!19630 (array!51992) Bool)

(declare-fun array_inv!19631 (array!51994) Bool)

(assert (=> b!890047 (= e!496369 (and tp!55024 tp_is_empty!18013 (array_inv!19630 (_keys!9909 thiss!1181)) (array_inv!19631 (_values!5215 thiss!1181)) e!496368))))

(declare-fun b!890048 () Bool)

(declare-fun e!496373 () Bool)

(declare-datatypes ((SeekEntryResult!8786 0))(
  ( (MissingZero!8786 (index!37514 (_ BitVec 32))) (Found!8786 (index!37515 (_ BitVec 32))) (Intermediate!8786 (undefined!9598 Bool) (index!37516 (_ BitVec 32)) (x!75603 (_ BitVec 32))) (Undefined!8786) (MissingVacant!8786 (index!37517 (_ BitVec 32))) )
))
(declare-fun lt!402159 () SeekEntryResult!8786)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890048 (= e!496373 (inRange!0 (index!37515 lt!402159) (mask!25692 thiss!1181)))))

(declare-fun b!890049 () Bool)

(declare-fun e!496370 () Bool)

(assert (=> b!890049 (= e!496370 (not true))))

(assert (=> b!890049 e!496373))

(declare-fun res!603190 () Bool)

(assert (=> b!890049 (=> res!603190 e!496373)))

(assert (=> b!890049 (= res!603190 (not (is-Found!8786 lt!402159)))))

(declare-datatypes ((Unit!30259 0))(
  ( (Unit!30260) )
))
(declare-fun lt!402158 () Unit!30259)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!9 (array!51992 array!51994 (_ BitVec 32) (_ BitVec 32) V!28983 V!28983 (_ BitVec 64)) Unit!30259)

(assert (=> b!890049 (= lt!402158 (lemmaSeekEntryGivesInRangeIndex!9 (_keys!9909 thiss!1181) (_values!5215 thiss!1181) (mask!25692 thiss!1181) (extraKeys!4924 thiss!1181) (zeroValue!5028 thiss!1181) (minValue!5028 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51992 (_ BitVec 32)) SeekEntryResult!8786)

(assert (=> b!890049 (= lt!402159 (seekEntry!0 key!785 (_keys!9909 thiss!1181) (mask!25692 thiss!1181)))))

(declare-fun b!890050 () Bool)

(declare-fun res!603191 () Bool)

(assert (=> b!890050 (=> (not res!603191) (not e!496370))))

(assert (=> b!890050 (= res!603191 (not (= key!785 (bvneg key!785))))))

(declare-fun res!603192 () Bool)

(assert (=> start!75742 (=> (not res!603192) (not e!496370))))

(declare-fun valid!1568 (LongMapFixedSize!4066) Bool)

(assert (=> start!75742 (= res!603192 (valid!1568 thiss!1181))))

(assert (=> start!75742 e!496370))

(assert (=> start!75742 e!496369))

(assert (=> start!75742 true))

(declare-fun b!890051 () Bool)

(declare-fun e!496371 () Bool)

(assert (=> b!890051 (= e!496368 (and e!496371 mapRes!28574))))

(declare-fun condMapEmpty!28574 () Bool)

(declare-fun mapDefault!28574 () ValueCell!8525)

