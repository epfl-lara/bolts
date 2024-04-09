; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76716 () Bool)

(assert start!76716)

(declare-fun b!897558 () Bool)

(declare-fun b_free!15991 () Bool)

(declare-fun b_next!15991 () Bool)

(assert (=> b!897558 (= b_free!15991 (not b_next!15991))))

(declare-fun tp!56030 () Bool)

(declare-fun b_and!26301 () Bool)

(assert (=> b!897558 (= tp!56030 b_and!26301)))

(declare-fun mapIsEmpty!29121 () Bool)

(declare-fun mapRes!29121 () Bool)

(assert (=> mapIsEmpty!29121 mapRes!29121))

(declare-fun b!897556 () Bool)

(declare-fun e!501984 () Bool)

(declare-fun e!501985 () Bool)

(assert (=> b!897556 (= e!501984 (not e!501985))))

(declare-fun res!606769 () Bool)

(assert (=> b!897556 (=> res!606769 e!501985)))

(declare-datatypes ((SeekEntryResult!8901 0))(
  ( (MissingZero!8901 (index!37974 (_ BitVec 32))) (Found!8901 (index!37975 (_ BitVec 32))) (Intermediate!8901 (undefined!9713 Bool) (index!37976 (_ BitVec 32)) (x!76475 (_ BitVec 32))) (Undefined!8901) (MissingVacant!8901 (index!37977 (_ BitVec 32))) )
))
(declare-fun lt!405228 () SeekEntryResult!8901)

(assert (=> b!897556 (= res!606769 (not (is-Found!8901 lt!405228)))))

(declare-fun e!501987 () Bool)

(assert (=> b!897556 e!501987))

(declare-fun res!606764 () Bool)

(assert (=> b!897556 (=> res!606764 e!501987)))

(assert (=> b!897556 (= res!606764 (not (is-Found!8901 lt!405228)))))

(declare-datatypes ((Unit!30483 0))(
  ( (Unit!30484) )
))
(declare-fun lt!405226 () Unit!30483)

(declare-datatypes ((array!52654 0))(
  ( (array!52655 (arr!25304 (Array (_ BitVec 32) (_ BitVec 64))) (size!25760 (_ BitVec 32))) )
))
(declare-datatypes ((V!29391 0))(
  ( (V!29392 (val!9210 Int)) )
))
(declare-datatypes ((ValueCell!8678 0))(
  ( (ValueCellFull!8678 (v!11697 V!29391)) (EmptyCell!8678) )
))
(declare-datatypes ((array!52656 0))(
  ( (array!52657 (arr!25305 (Array (_ BitVec 32) ValueCell!8678)) (size!25761 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4372 0))(
  ( (LongMapFixedSize!4373 (defaultEntry!5398 Int) (mask!26094 (_ BitVec 32)) (extraKeys!5110 (_ BitVec 32)) (zeroValue!5214 V!29391) (minValue!5214 V!29391) (_size!2241 (_ BitVec 32)) (_keys!10158 array!52654) (_values!5401 array!52656) (_vacant!2241 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4372)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!88 (array!52654 array!52656 (_ BitVec 32) (_ BitVec 32) V!29391 V!29391 (_ BitVec 64)) Unit!30483)

(assert (=> b!897556 (= lt!405226 (lemmaSeekEntryGivesInRangeIndex!88 (_keys!10158 thiss!1181) (_values!5401 thiss!1181) (mask!26094 thiss!1181) (extraKeys!5110 thiss!1181) (zeroValue!5214 thiss!1181) (minValue!5214 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52654 (_ BitVec 32)) SeekEntryResult!8901)

(assert (=> b!897556 (= lt!405228 (seekEntry!0 key!785 (_keys!10158 thiss!1181) (mask!26094 thiss!1181)))))

(declare-fun b!897557 () Bool)

(declare-fun e!501983 () Bool)

(declare-fun e!501988 () Bool)

(assert (=> b!897557 (= e!501983 (and e!501988 mapRes!29121))))

(declare-fun condMapEmpty!29121 () Bool)

(declare-fun mapDefault!29121 () ValueCell!8678)

