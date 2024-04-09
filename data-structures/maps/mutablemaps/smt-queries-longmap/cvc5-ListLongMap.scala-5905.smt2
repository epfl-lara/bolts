; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76400 () Bool)

(assert start!76400)

(declare-fun b!895832 () Bool)

(declare-fun b_free!15931 () Bool)

(declare-fun b_next!15931 () Bool)

(assert (=> b!895832 (= b_free!15931 (not b_next!15931))))

(declare-fun tp!55816 () Bool)

(declare-fun b_and!26241 () Bool)

(assert (=> b!895832 (= tp!55816 b_and!26241)))

(declare-fun b!895830 () Bool)

(declare-fun e!500656 () Bool)

(declare-fun tp_is_empty!18259 () Bool)

(assert (=> b!895830 (= e!500656 tp_is_empty!18259)))

(declare-fun res!605970 () Bool)

(declare-fun e!500651 () Bool)

(assert (=> start!76400 (=> (not res!605970) (not e!500651))))

(declare-datatypes ((array!52514 0))(
  ( (array!52515 (arr!25244 (Array (_ BitVec 32) (_ BitVec 64))) (size!25695 (_ BitVec 32))) )
))
(declare-datatypes ((V!29311 0))(
  ( (V!29312 (val!9180 Int)) )
))
(declare-datatypes ((ValueCell!8648 0))(
  ( (ValueCellFull!8648 (v!11667 V!29311)) (EmptyCell!8648) )
))
(declare-datatypes ((array!52516 0))(
  ( (array!52517 (arr!25245 (Array (_ BitVec 32) ValueCell!8648)) (size!25696 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4312 0))(
  ( (LongMapFixedSize!4313 (defaultEntry!5368 Int) (mask!25980 (_ BitVec 32)) (extraKeys!5065 (_ BitVec 32)) (zeroValue!5169 V!29311) (minValue!5169 V!29311) (_size!2211 (_ BitVec 32)) (_keys!10087 array!52514) (_values!5356 array!52516) (_vacant!2211 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4312)

(declare-fun valid!1654 (LongMapFixedSize!4312) Bool)

(assert (=> start!76400 (= res!605970 (valid!1654 thiss!1181))))

(assert (=> start!76400 e!500651))

(declare-fun e!500653 () Bool)

(assert (=> start!76400 e!500653))

(assert (=> start!76400 true))

(declare-fun b!895831 () Bool)

(declare-fun res!605969 () Bool)

(assert (=> b!895831 (=> (not res!605969) (not e!500651))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!895831 (= res!605969 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!28996 () Bool)

(declare-fun mapRes!28996 () Bool)

(declare-fun tp!55815 () Bool)

(declare-fun e!500652 () Bool)

(assert (=> mapNonEmpty!28996 (= mapRes!28996 (and tp!55815 e!500652))))

(declare-fun mapKey!28996 () (_ BitVec 32))

(declare-fun mapRest!28996 () (Array (_ BitVec 32) ValueCell!8648))

(declare-fun mapValue!28996 () ValueCell!8648)

(assert (=> mapNonEmpty!28996 (= (arr!25245 (_values!5356 thiss!1181)) (store mapRest!28996 mapKey!28996 mapValue!28996))))

(declare-fun e!500650 () Bool)

(declare-fun array_inv!19792 (array!52514) Bool)

(declare-fun array_inv!19793 (array!52516) Bool)

(assert (=> b!895832 (= e!500653 (and tp!55816 tp_is_empty!18259 (array_inv!19792 (_keys!10087 thiss!1181)) (array_inv!19793 (_values!5356 thiss!1181)) e!500650))))

(declare-fun mapIsEmpty!28996 () Bool)

(assert (=> mapIsEmpty!28996 mapRes!28996))

(declare-fun b!895833 () Bool)

(declare-datatypes ((SeekEntryResult!8878 0))(
  ( (MissingZero!8878 (index!37882 (_ BitVec 32))) (Found!8878 (index!37883 (_ BitVec 32))) (Intermediate!8878 (undefined!9690 Bool) (index!37884 (_ BitVec 32)) (x!76247 (_ BitVec 32))) (Undefined!8878) (MissingVacant!8878 (index!37885 (_ BitVec 32))) )
))
(declare-fun lt!404607 () SeekEntryResult!8878)

(assert (=> b!895833 (= e!500651 (not (or (not (is-Found!8878 lt!404607)) (bvslt (index!37883 lt!404607) #b00000000000000000000000000000000) (bvslt (index!37883 lt!404607) (size!25695 (_keys!10087 thiss!1181))))))))

(declare-fun e!500654 () Bool)

(assert (=> b!895833 e!500654))

(declare-fun res!605968 () Bool)

(assert (=> b!895833 (=> res!605968 e!500654)))

(assert (=> b!895833 (= res!605968 (not (is-Found!8878 lt!404607)))))

(declare-datatypes ((Unit!30443 0))(
  ( (Unit!30444) )
))
(declare-fun lt!404606 () Unit!30443)

(declare-fun lemmaSeekEntryGivesInRangeIndex!71 (array!52514 array!52516 (_ BitVec 32) (_ BitVec 32) V!29311 V!29311 (_ BitVec 64)) Unit!30443)

(assert (=> b!895833 (= lt!404606 (lemmaSeekEntryGivesInRangeIndex!71 (_keys!10087 thiss!1181) (_values!5356 thiss!1181) (mask!25980 thiss!1181) (extraKeys!5065 thiss!1181) (zeroValue!5169 thiss!1181) (minValue!5169 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52514 (_ BitVec 32)) SeekEntryResult!8878)

(assert (=> b!895833 (= lt!404607 (seekEntry!0 key!785 (_keys!10087 thiss!1181) (mask!25980 thiss!1181)))))

(declare-fun b!895834 () Bool)

(assert (=> b!895834 (= e!500650 (and e!500656 mapRes!28996))))

(declare-fun condMapEmpty!28996 () Bool)

(declare-fun mapDefault!28996 () ValueCell!8648)

