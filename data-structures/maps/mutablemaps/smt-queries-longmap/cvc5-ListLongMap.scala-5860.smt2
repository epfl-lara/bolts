; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75718 () Bool)

(assert start!75718)

(declare-fun b!889788 () Bool)

(declare-fun b_free!15661 () Bool)

(declare-fun b_next!15661 () Bool)

(assert (=> b!889788 (= b_free!15661 (not b_next!15661))))

(declare-fun tp!54953 () Bool)

(declare-fun b_and!25919 () Bool)

(assert (=> b!889788 (= tp!54953 b_and!25919)))

(declare-fun mapIsEmpty!28538 () Bool)

(declare-fun mapRes!28538 () Bool)

(assert (=> mapIsEmpty!28538 mapRes!28538))

(declare-fun b!889780 () Bool)

(declare-fun e!496120 () Bool)

(declare-fun tp_is_empty!17989 () Bool)

(assert (=> b!889780 (= e!496120 tp_is_empty!17989)))

(declare-fun res!603068 () Bool)

(declare-fun e!496121 () Bool)

(assert (=> start!75718 (=> (not res!603068) (not e!496121))))

(declare-datatypes ((array!51944 0))(
  ( (array!51945 (arr!24974 (Array (_ BitVec 32) (_ BitVec 64))) (size!25419 (_ BitVec 32))) )
))
(declare-datatypes ((V!28951 0))(
  ( (V!28952 (val!9045 Int)) )
))
(declare-datatypes ((ValueCell!8513 0))(
  ( (ValueCellFull!8513 (v!11517 V!28951)) (EmptyCell!8513) )
))
(declare-datatypes ((array!51946 0))(
  ( (array!51947 (arr!24975 (Array (_ BitVec 32) ValueCell!8513)) (size!25420 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4042 0))(
  ( (LongMapFixedSize!4043 (defaultEntry!5218 Int) (mask!25672 (_ BitVec 32)) (extraKeys!4912 (_ BitVec 32)) (zeroValue!5016 V!28951) (minValue!5016 V!28951) (_size!2076 (_ BitVec 32)) (_keys!9897 array!51944) (_values!5203 array!51946) (_vacant!2076 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4042)

(declare-fun valid!1561 (LongMapFixedSize!4042) Bool)

(assert (=> start!75718 (= res!603068 (valid!1561 thiss!1181))))

(assert (=> start!75718 e!496121))

(declare-fun e!496115 () Bool)

(assert (=> start!75718 e!496115))

(assert (=> start!75718 true))

(declare-fun b!889781 () Bool)

(declare-fun e!496117 () Bool)

(assert (=> b!889781 (= e!496121 e!496117)))

(declare-fun res!603071 () Bool)

(assert (=> b!889781 (=> (not res!603071) (not e!496117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889781 (= res!603071 (validMask!0 (mask!25672 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8776 0))(
  ( (MissingZero!8776 (index!37474 (_ BitVec 32))) (Found!8776 (index!37475 (_ BitVec 32))) (Intermediate!8776 (undefined!9588 Bool) (index!37476 (_ BitVec 32)) (x!75561 (_ BitVec 32))) (Undefined!8776) (MissingVacant!8776 (index!37477 (_ BitVec 32))) )
))
(declare-fun lt!402087 () SeekEntryResult!8776)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51944 (_ BitVec 32)) SeekEntryResult!8776)

(assert (=> b!889781 (= lt!402087 (seekEntry!0 key!785 (_keys!9897 thiss!1181) (mask!25672 thiss!1181)))))

(declare-fun b!889782 () Bool)

(declare-fun res!603070 () Bool)

(assert (=> b!889782 (=> (not res!603070) (not e!496117))))

(assert (=> b!889782 (= res!603070 (and (= (size!25420 (_values!5203 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25672 thiss!1181))) (= (size!25419 (_keys!9897 thiss!1181)) (size!25420 (_values!5203 thiss!1181))) (bvsge (mask!25672 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4912 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4912 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889783 () Bool)

(declare-fun res!603069 () Bool)

(assert (=> b!889783 (=> (not res!603069) (not e!496117))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51944 (_ BitVec 32)) Bool)

(assert (=> b!889783 (= res!603069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9897 thiss!1181) (mask!25672 thiss!1181)))))

(declare-fun b!889784 () Bool)

(declare-fun e!496116 () Bool)

(assert (=> b!889784 (= e!496116 tp_is_empty!17989)))

(declare-fun b!889785 () Bool)

(declare-fun e!496118 () Bool)

(assert (=> b!889785 (= e!496118 (and e!496116 mapRes!28538))))

(declare-fun condMapEmpty!28538 () Bool)

(declare-fun mapDefault!28538 () ValueCell!8513)

