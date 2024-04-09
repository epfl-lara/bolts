; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80054 () Bool)

(assert start!80054)

(declare-fun b!940752 () Bool)

(declare-fun b_free!17881 () Bool)

(declare-fun b_next!17881 () Bool)

(assert (=> b!940752 (= b_free!17881 (not b_next!17881))))

(declare-fun tp!62118 () Bool)

(declare-fun b_and!29311 () Bool)

(assert (=> b!940752 (= tp!62118 b_and!29311)))

(declare-fun b!940746 () Bool)

(declare-fun res!632641 () Bool)

(declare-fun e!528810 () Bool)

(assert (=> b!940746 (=> res!632641 e!528810)))

(declare-datatypes ((V!32151 0))(
  ( (V!32152 (val!10245 Int)) )
))
(declare-datatypes ((ValueCell!9713 0))(
  ( (ValueCellFull!9713 (v!12776 V!32151)) (EmptyCell!9713) )
))
(declare-datatypes ((array!56748 0))(
  ( (array!56749 (arr!27305 (Array (_ BitVec 32) ValueCell!9713)) (size!27767 (_ BitVec 32))) )
))
(declare-datatypes ((array!56750 0))(
  ( (array!56751 (arr!27306 (Array (_ BitVec 32) (_ BitVec 64))) (size!27768 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4576 0))(
  ( (LongMapFixedSize!4577 (defaultEntry!5579 Int) (mask!27123 (_ BitVec 32)) (extraKeys!5311 (_ BitVec 32)) (zeroValue!5415 V!32151) (minValue!5415 V!32151) (_size!2343 (_ BitVec 32)) (_keys!10425 array!56750) (_values!5602 array!56748) (_vacant!2343 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4576)

(assert (=> b!940746 (= res!632641 (or (not (= (size!27767 (_values!5602 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27123 thiss!1141)))) (not (= (size!27768 (_keys!10425 thiss!1141)) (size!27767 (_values!5602 thiss!1141)))) (bvslt (mask!27123 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5311 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5311 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940747 () Bool)

(declare-fun e!528812 () Bool)

(declare-fun e!528811 () Bool)

(declare-fun mapRes!32374 () Bool)

(assert (=> b!940747 (= e!528812 (and e!528811 mapRes!32374))))

(declare-fun condMapEmpty!32374 () Bool)

(declare-fun mapDefault!32374 () ValueCell!9713)

