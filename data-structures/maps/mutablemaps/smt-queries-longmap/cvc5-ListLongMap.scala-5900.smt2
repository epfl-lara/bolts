; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76292 () Bool)

(assert start!76292)

(declare-fun b!895119 () Bool)

(declare-fun b_free!15901 () Bool)

(declare-fun b_next!15901 () Bool)

(assert (=> b!895119 (= b_free!15901 (not b_next!15901))))

(declare-fun tp!55709 () Bool)

(declare-fun b_and!26211 () Bool)

(assert (=> b!895119 (= tp!55709 b_and!26211)))

(declare-fun mapNonEmpty!28935 () Bool)

(declare-fun mapRes!28935 () Bool)

(declare-fun tp!55710 () Bool)

(declare-fun e!500141 () Bool)

(assert (=> mapNonEmpty!28935 (= mapRes!28935 (and tp!55710 e!500141))))

(declare-datatypes ((V!29271 0))(
  ( (V!29272 (val!9165 Int)) )
))
(declare-datatypes ((ValueCell!8633 0))(
  ( (ValueCellFull!8633 (v!11652 V!29271)) (EmptyCell!8633) )
))
(declare-fun mapRest!28935 () (Array (_ BitVec 32) ValueCell!8633))

(declare-datatypes ((array!52444 0))(
  ( (array!52445 (arr!25214 (Array (_ BitVec 32) (_ BitVec 64))) (size!25664 (_ BitVec 32))) )
))
(declare-datatypes ((array!52446 0))(
  ( (array!52447 (arr!25215 (Array (_ BitVec 32) ValueCell!8633)) (size!25665 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4282 0))(
  ( (LongMapFixedSize!4283 (defaultEntry!5353 Int) (mask!25937 (_ BitVec 32)) (extraKeys!5049 (_ BitVec 32)) (zeroValue!5153 V!29271) (minValue!5153 V!29271) (_size!2196 (_ BitVec 32)) (_keys!10060 array!52444) (_values!5340 array!52446) (_vacant!2196 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4282)

(declare-fun mapKey!28935 () (_ BitVec 32))

(declare-fun mapValue!28935 () ValueCell!8633)

(assert (=> mapNonEmpty!28935 (= (arr!25215 (_values!5340 thiss!1181)) (store mapRest!28935 mapKey!28935 mapValue!28935))))

(declare-fun tp_is_empty!18229 () Bool)

(declare-fun e!500138 () Bool)

(declare-fun e!500139 () Bool)

(declare-fun array_inv!19776 (array!52444) Bool)

(declare-fun array_inv!19777 (array!52446) Bool)

(assert (=> b!895119 (= e!500139 (and tp!55709 tp_is_empty!18229 (array_inv!19776 (_keys!10060 thiss!1181)) (array_inv!19777 (_values!5340 thiss!1181)) e!500138))))

(declare-fun mapIsEmpty!28935 () Bool)

(assert (=> mapIsEmpty!28935 mapRes!28935))

(declare-fun b!895120 () Bool)

(declare-fun e!500140 () Bool)

(assert (=> b!895120 (= e!500140 (and (= (size!25665 (_values!5340 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25937 thiss!1181))) (= (size!25664 (_keys!10060 thiss!1181)) (size!25665 (_values!5340 thiss!1181))) (bvsge (mask!25937 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!5049 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5049 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!895121 () Bool)

(declare-fun e!500135 () Bool)

(assert (=> b!895121 (= e!500135 e!500140)))

(declare-fun res!605659 () Bool)

(assert (=> b!895121 (=> (not res!605659) (not e!500140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!895121 (= res!605659 (validMask!0 (mask!25937 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8870 0))(
  ( (MissingZero!8870 (index!37850 (_ BitVec 32))) (Found!8870 (index!37851 (_ BitVec 32))) (Intermediate!8870 (undefined!9682 Bool) (index!37852 (_ BitVec 32)) (x!76150 (_ BitVec 32))) (Undefined!8870) (MissingVacant!8870 (index!37853 (_ BitVec 32))) )
))
(declare-fun lt!404427 () SeekEntryResult!8870)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52444 (_ BitVec 32)) SeekEntryResult!8870)

(assert (=> b!895121 (= lt!404427 (seekEntry!0 key!785 (_keys!10060 thiss!1181) (mask!25937 thiss!1181)))))

(declare-fun b!895122 () Bool)

(assert (=> b!895122 (= e!500141 tp_is_empty!18229)))

(declare-fun res!605658 () Bool)

(assert (=> start!76292 (=> (not res!605658) (not e!500135))))

(declare-fun valid!1643 (LongMapFixedSize!4282) Bool)

(assert (=> start!76292 (= res!605658 (valid!1643 thiss!1181))))

(assert (=> start!76292 e!500135))

(assert (=> start!76292 e!500139))

(assert (=> start!76292 true))

(declare-fun b!895123 () Bool)

(declare-fun e!500136 () Bool)

(assert (=> b!895123 (= e!500136 tp_is_empty!18229)))

(declare-fun b!895124 () Bool)

(assert (=> b!895124 (= e!500138 (and e!500136 mapRes!28935))))

(declare-fun condMapEmpty!28935 () Bool)

(declare-fun mapDefault!28935 () ValueCell!8633)

