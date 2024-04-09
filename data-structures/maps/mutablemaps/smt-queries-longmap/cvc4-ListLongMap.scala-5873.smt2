; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75800 () Bool)

(assert start!75800)

(declare-fun b!890981 () Bool)

(declare-fun b_free!15743 () Bool)

(declare-fun b_next!15743 () Bool)

(assert (=> b!890981 (= b_free!15743 (not b_next!15743))))

(declare-fun tp!55198 () Bool)

(declare-fun b_and!26001 () Bool)

(assert (=> b!890981 (= tp!55198 b_and!26001)))

(declare-fun mapIsEmpty!28661 () Bool)

(declare-fun mapRes!28661 () Bool)

(assert (=> mapIsEmpty!28661 mapRes!28661))

(declare-fun b!890975 () Bool)

(declare-fun res!603774 () Bool)

(declare-fun e!497136 () Bool)

(assert (=> b!890975 (=> res!603774 e!497136)))

(declare-datatypes ((array!52108 0))(
  ( (array!52109 (arr!25056 (Array (_ BitVec 32) (_ BitVec 64))) (size!25501 (_ BitVec 32))) )
))
(declare-datatypes ((V!29059 0))(
  ( (V!29060 (val!9086 Int)) )
))
(declare-datatypes ((ValueCell!8554 0))(
  ( (ValueCellFull!8554 (v!11558 V!29059)) (EmptyCell!8554) )
))
(declare-datatypes ((array!52110 0))(
  ( (array!52111 (arr!25057 (Array (_ BitVec 32) ValueCell!8554)) (size!25502 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4124 0))(
  ( (LongMapFixedSize!4125 (defaultEntry!5259 Int) (mask!25739 (_ BitVec 32)) (extraKeys!4953 (_ BitVec 32)) (zeroValue!5057 V!29059) (minValue!5057 V!29059) (_size!2117 (_ BitVec 32)) (_keys!9938 array!52108) (_values!5244 array!52110) (_vacant!2117 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4124)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52108 (_ BitVec 32)) Bool)

(assert (=> b!890975 (= res!603774 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9938 thiss!1181) (mask!25739 thiss!1181))))))

(declare-fun mapNonEmpty!28661 () Bool)

(declare-fun tp!55199 () Bool)

(declare-fun e!497143 () Bool)

(assert (=> mapNonEmpty!28661 (= mapRes!28661 (and tp!55199 e!497143))))

(declare-fun mapValue!28661 () ValueCell!8554)

(declare-fun mapRest!28661 () (Array (_ BitVec 32) ValueCell!8554))

(declare-fun mapKey!28661 () (_ BitVec 32))

(assert (=> mapNonEmpty!28661 (= (arr!25057 (_values!5244 thiss!1181)) (store mapRest!28661 mapKey!28661 mapValue!28661))))

(declare-fun b!890976 () Bool)

(declare-fun e!497140 () Bool)

(assert (=> b!890976 (= e!497140 e!497136)))

(declare-fun res!603773 () Bool)

(assert (=> b!890976 (=> res!603773 e!497136)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890976 (= res!603773 (not (validMask!0 (mask!25739 thiss!1181))))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890976 (arrayContainsKey!0 (_keys!9938 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!8811 0))(
  ( (MissingZero!8811 (index!37614 (_ BitVec 32))) (Found!8811 (index!37615 (_ BitVec 32))) (Intermediate!8811 (undefined!9623 Bool) (index!37616 (_ BitVec 32)) (x!75700 (_ BitVec 32))) (Undefined!8811) (MissingVacant!8811 (index!37617 (_ BitVec 32))) )
))
(declare-fun lt!402492 () SeekEntryResult!8811)

(declare-datatypes ((Unit!30307 0))(
  ( (Unit!30308) )
))
(declare-fun lt!402494 () Unit!30307)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52108 (_ BitVec 64) (_ BitVec 32)) Unit!30307)

(assert (=> b!890976 (= lt!402494 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9938 thiss!1181) key!785 (index!37615 lt!402492)))))

(declare-fun b!890977 () Bool)

(declare-fun res!603777 () Bool)

(declare-fun e!497144 () Bool)

(assert (=> b!890977 (=> (not res!603777) (not e!497144))))

(assert (=> b!890977 (= res!603777 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890978 () Bool)

(assert (=> b!890978 (= e!497144 (not e!497140))))

(declare-fun res!603775 () Bool)

(assert (=> b!890978 (=> res!603775 e!497140)))

(assert (=> b!890978 (= res!603775 (not (is-Found!8811 lt!402492)))))

(declare-fun e!497138 () Bool)

(assert (=> b!890978 e!497138))

(declare-fun res!603776 () Bool)

(assert (=> b!890978 (=> res!603776 e!497138)))

(assert (=> b!890978 (= res!603776 (not (is-Found!8811 lt!402492)))))

(declare-fun lt!402493 () Unit!30307)

(declare-fun lemmaSeekEntryGivesInRangeIndex!32 (array!52108 array!52110 (_ BitVec 32) (_ BitVec 32) V!29059 V!29059 (_ BitVec 64)) Unit!30307)

(assert (=> b!890978 (= lt!402493 (lemmaSeekEntryGivesInRangeIndex!32 (_keys!9938 thiss!1181) (_values!5244 thiss!1181) (mask!25739 thiss!1181) (extraKeys!4953 thiss!1181) (zeroValue!5057 thiss!1181) (minValue!5057 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52108 (_ BitVec 32)) SeekEntryResult!8811)

(assert (=> b!890978 (= lt!402492 (seekEntry!0 key!785 (_keys!9938 thiss!1181) (mask!25739 thiss!1181)))))

(declare-fun b!890979 () Bool)

(declare-fun e!497137 () Bool)

(declare-fun tp_is_empty!18071 () Bool)

(assert (=> b!890979 (= e!497137 tp_is_empty!18071)))

(declare-fun b!890980 () Bool)

(declare-fun e!497142 () Bool)

(assert (=> b!890980 (= e!497142 (and e!497137 mapRes!28661))))

(declare-fun condMapEmpty!28661 () Bool)

(declare-fun mapDefault!28661 () ValueCell!8554)

