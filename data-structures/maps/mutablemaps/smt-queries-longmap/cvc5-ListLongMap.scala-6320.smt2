; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81234 () Bool)

(assert start!81234)

(declare-fun b!950143 () Bool)

(declare-fun b_free!18241 () Bool)

(declare-fun b_next!18241 () Bool)

(assert (=> b!950143 (= b_free!18241 (not b_next!18241))))

(declare-fun tp!63319 () Bool)

(declare-fun b_and!29715 () Bool)

(assert (=> b!950143 (= tp!63319 b_and!29715)))

(declare-fun b!950137 () Bool)

(declare-fun e!534961 () Bool)

(declare-fun tp_is_empty!20749 () Bool)

(assert (=> b!950137 (= e!534961 tp_is_empty!20749)))

(declare-fun b!950138 () Bool)

(declare-fun e!534960 () Bool)

(declare-datatypes ((V!32631 0))(
  ( (V!32632 (val!10425 Int)) )
))
(declare-datatypes ((ValueCell!9893 0))(
  ( (ValueCellFull!9893 (v!12968 V!32631)) (EmptyCell!9893) )
))
(declare-datatypes ((array!57538 0))(
  ( (array!57539 (arr!27665 (Array (_ BitVec 32) ValueCell!9893)) (size!28143 (_ BitVec 32))) )
))
(declare-datatypes ((array!57540 0))(
  ( (array!57541 (arr!27666 (Array (_ BitVec 32) (_ BitVec 64))) (size!28144 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4936 0))(
  ( (LongMapFixedSize!4937 (defaultEntry!5779 Int) (mask!27572 (_ BitVec 32)) (extraKeys!5511 (_ BitVec 32)) (zeroValue!5615 V!32631) (minValue!5615 V!32631) (_size!2523 (_ BitVec 32)) (_keys!10711 array!57540) (_values!5802 array!57538) (_vacant!2523 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4936)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!950138 (= e!534960 (not (validMask!0 (mask!27572 thiss!1141))))))

(declare-fun lt!427888 () (_ BitVec 32))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!57540 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!950138 (= lt!427888 (arrayScanForKey!0 (_keys!10711 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!950138 (arrayContainsKey!0 (_keys!10711 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31980 0))(
  ( (Unit!31981) )
))
(declare-fun lt!427889 () Unit!31980)

(declare-fun lemmaKeyInListMapIsInArray!321 (array!57540 array!57538 (_ BitVec 32) (_ BitVec 32) V!32631 V!32631 (_ BitVec 64) Int) Unit!31980)

(assert (=> b!950138 (= lt!427889 (lemmaKeyInListMapIsInArray!321 (_keys!10711 thiss!1141) (_values!5802 thiss!1141) (mask!27572 thiss!1141) (extraKeys!5511 thiss!1141) (zeroValue!5615 thiss!1141) (minValue!5615 thiss!1141) key!756 (defaultEntry!5779 thiss!1141)))))

(declare-fun res!637155 () Bool)

(assert (=> start!81234 (=> (not res!637155) (not e!534960))))

(declare-fun valid!1851 (LongMapFixedSize!4936) Bool)

(assert (=> start!81234 (= res!637155 (valid!1851 thiss!1141))))

(assert (=> start!81234 e!534960))

(declare-fun e!534965 () Bool)

(assert (=> start!81234 e!534965))

(assert (=> start!81234 true))

(declare-fun b!950139 () Bool)

(declare-fun res!637154 () Bool)

(assert (=> b!950139 (=> (not res!637154) (not e!534960))))

(assert (=> b!950139 (= res!637154 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!950140 () Bool)

(declare-fun e!534964 () Bool)

(declare-fun e!534962 () Bool)

(declare-fun mapRes!33035 () Bool)

(assert (=> b!950140 (= e!534964 (and e!534962 mapRes!33035))))

(declare-fun condMapEmpty!33035 () Bool)

(declare-fun mapDefault!33035 () ValueCell!9893)

