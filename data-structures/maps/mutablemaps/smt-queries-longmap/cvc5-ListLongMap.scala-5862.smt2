; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75730 () Bool)

(assert start!75730)

(declare-fun b!889922 () Bool)

(declare-fun b_free!15673 () Bool)

(declare-fun b_next!15673 () Bool)

(assert (=> b!889922 (= b_free!15673 (not b_next!15673))))

(declare-fun tp!54988 () Bool)

(declare-fun b_and!25931 () Bool)

(assert (=> b!889922 (= tp!54988 b_and!25931)))

(declare-fun b!889920 () Bool)

(declare-fun e!496244 () Bool)

(declare-fun tp_is_empty!18001 () Bool)

(assert (=> b!889920 (= e!496244 tp_is_empty!18001)))

(declare-fun b!889921 () Bool)

(declare-fun e!496246 () Bool)

(declare-datatypes ((SeekEntryResult!8780 0))(
  ( (MissingZero!8780 (index!37490 (_ BitVec 32))) (Found!8780 (index!37491 (_ BitVec 32))) (Intermediate!8780 (undefined!9592 Bool) (index!37492 (_ BitVec 32)) (x!75581 (_ BitVec 32))) (Undefined!8780) (MissingVacant!8780 (index!37493 (_ BitVec 32))) )
))
(declare-fun lt!402122 () SeekEntryResult!8780)

(declare-datatypes ((array!51968 0))(
  ( (array!51969 (arr!24986 (Array (_ BitVec 32) (_ BitVec 64))) (size!25431 (_ BitVec 32))) )
))
(declare-datatypes ((V!28967 0))(
  ( (V!28968 (val!9051 Int)) )
))
(declare-datatypes ((ValueCell!8519 0))(
  ( (ValueCellFull!8519 (v!11523 V!28967)) (EmptyCell!8519) )
))
(declare-datatypes ((array!51970 0))(
  ( (array!51971 (arr!24987 (Array (_ BitVec 32) ValueCell!8519)) (size!25432 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4054 0))(
  ( (LongMapFixedSize!4055 (defaultEntry!5224 Int) (mask!25682 (_ BitVec 32)) (extraKeys!4918 (_ BitVec 32)) (zeroValue!5022 V!28967) (minValue!5022 V!28967) (_size!2082 (_ BitVec 32)) (_keys!9903 array!51968) (_values!5209 array!51970) (_vacant!2082 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4054)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!889921 (= e!496246 (inRange!0 (index!37491 lt!402122) (mask!25682 thiss!1181)))))

(declare-fun e!496245 () Bool)

(declare-fun e!496242 () Bool)

(declare-fun array_inv!19620 (array!51968) Bool)

(declare-fun array_inv!19621 (array!51970) Bool)

(assert (=> b!889922 (= e!496242 (and tp!54988 tp_is_empty!18001 (array_inv!19620 (_keys!9903 thiss!1181)) (array_inv!19621 (_values!5209 thiss!1181)) e!496245))))

(declare-fun mapNonEmpty!28556 () Bool)

(declare-fun mapRes!28556 () Bool)

(declare-fun tp!54989 () Bool)

(assert (=> mapNonEmpty!28556 (= mapRes!28556 (and tp!54989 e!496244))))

(declare-fun mapValue!28556 () ValueCell!8519)

(declare-fun mapRest!28556 () (Array (_ BitVec 32) ValueCell!8519))

(declare-fun mapKey!28556 () (_ BitVec 32))

(assert (=> mapNonEmpty!28556 (= (arr!24987 (_values!5209 thiss!1181)) (store mapRest!28556 mapKey!28556 mapValue!28556))))

(declare-fun b!889923 () Bool)

(declare-fun e!496243 () Bool)

(assert (=> b!889923 (= e!496243 tp_is_empty!18001)))

(declare-fun mapIsEmpty!28556 () Bool)

(assert (=> mapIsEmpty!28556 mapRes!28556))

(declare-fun res!603136 () Bool)

(declare-fun e!496247 () Bool)

(assert (=> start!75730 (=> (not res!603136) (not e!496247))))

(declare-fun valid!1565 (LongMapFixedSize!4054) Bool)

(assert (=> start!75730 (= res!603136 (valid!1565 thiss!1181))))

(assert (=> start!75730 e!496247))

(assert (=> start!75730 e!496242))

(assert (=> start!75730 true))

(declare-fun b!889924 () Bool)

(declare-fun res!603137 () Bool)

(assert (=> b!889924 (=> (not res!603137) (not e!496247))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889924 (= res!603137 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889925 () Bool)

(assert (=> b!889925 (= e!496247 (not true))))

(assert (=> b!889925 e!496246))

(declare-fun res!603138 () Bool)

(assert (=> b!889925 (=> res!603138 e!496246)))

(assert (=> b!889925 (= res!603138 (not (is-Found!8780 lt!402122)))))

(declare-datatypes ((Unit!30251 0))(
  ( (Unit!30252) )
))
(declare-fun lt!402123 () Unit!30251)

(declare-fun lemmaSeekEntryGivesInRangeIndex!5 (array!51968 array!51970 (_ BitVec 32) (_ BitVec 32) V!28967 V!28967 (_ BitVec 64)) Unit!30251)

(assert (=> b!889925 (= lt!402123 (lemmaSeekEntryGivesInRangeIndex!5 (_keys!9903 thiss!1181) (_values!5209 thiss!1181) (mask!25682 thiss!1181) (extraKeys!4918 thiss!1181) (zeroValue!5022 thiss!1181) (minValue!5022 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51968 (_ BitVec 32)) SeekEntryResult!8780)

(assert (=> b!889925 (= lt!402122 (seekEntry!0 key!785 (_keys!9903 thiss!1181) (mask!25682 thiss!1181)))))

(declare-fun b!889926 () Bool)

(assert (=> b!889926 (= e!496245 (and e!496243 mapRes!28556))))

(declare-fun condMapEmpty!28556 () Bool)

(declare-fun mapDefault!28556 () ValueCell!8519)

