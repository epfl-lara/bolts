; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79970 () Bool)

(assert start!79970)

(declare-fun b!939772 () Bool)

(declare-fun b_free!17807 () Bool)

(declare-fun b_next!17807 () Bool)

(assert (=> b!939772 (= b_free!17807 (not b_next!17807))))

(declare-fun tp!61893 () Bool)

(declare-fun b_and!29237 () Bool)

(assert (=> b!939772 (= tp!61893 b_and!29237)))

(declare-fun res!632108 () Bool)

(declare-fun e!527988 () Bool)

(assert (=> start!79970 (=> (not res!632108) (not e!527988))))

(declare-datatypes ((V!32051 0))(
  ( (V!32052 (val!10208 Int)) )
))
(declare-datatypes ((ValueCell!9676 0))(
  ( (ValueCellFull!9676 (v!12739 V!32051)) (EmptyCell!9676) )
))
(declare-datatypes ((array!56598 0))(
  ( (array!56599 (arr!27231 (Array (_ BitVec 32) ValueCell!9676)) (size!27693 (_ BitVec 32))) )
))
(declare-datatypes ((array!56600 0))(
  ( (array!56601 (arr!27232 (Array (_ BitVec 32) (_ BitVec 64))) (size!27694 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4502 0))(
  ( (LongMapFixedSize!4503 (defaultEntry!5542 Int) (mask!27059 (_ BitVec 32)) (extraKeys!5274 (_ BitVec 32)) (zeroValue!5378 V!32051) (minValue!5378 V!32051) (_size!2306 (_ BitVec 32)) (_keys!10388 array!56600) (_values!5565 array!56598) (_vacant!2306 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4502)

(declare-fun valid!1711 (LongMapFixedSize!4502) Bool)

(assert (=> start!79970 (= res!632108 (valid!1711 thiss!1141))))

(assert (=> start!79970 e!527988))

(declare-fun e!527986 () Bool)

(assert (=> start!79970 e!527986))

(assert (=> start!79970 true))

(declare-fun b!939765 () Bool)

(declare-fun res!632109 () Bool)

(assert (=> b!939765 (=> (not res!632109) (not e!527988))))

(assert (=> b!939765 (= res!632109 (= (size!27694 (_keys!10388 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27059 thiss!1141))))))

(declare-fun b!939766 () Bool)

(declare-fun res!632110 () Bool)

(assert (=> b!939766 (=> (not res!632110) (not e!527988))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!939766 (= res!632110 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!939767 () Bool)

(declare-fun e!527991 () Bool)

(declare-fun tp_is_empty!20315 () Bool)

(assert (=> b!939767 (= e!527991 tp_is_empty!20315)))

(declare-fun mapIsEmpty!32260 () Bool)

(declare-fun mapRes!32260 () Bool)

(assert (=> mapIsEmpty!32260 mapRes!32260))

(declare-fun b!939768 () Bool)

(declare-fun e!527987 () Bool)

(assert (=> b!939768 (= e!527987 tp_is_empty!20315)))

(declare-fun b!939769 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!939769 (= e!527988 (not (validKeyInArray!0 key!756)))))

(declare-fun b!939770 () Bool)

(declare-fun res!632111 () Bool)

(assert (=> b!939770 (=> (not res!632111) (not e!527988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!939770 (= res!632111 (validMask!0 (mask!27059 thiss!1141)))))

(declare-fun b!939771 () Bool)

(declare-fun e!527990 () Bool)

(assert (=> b!939771 (= e!527990 (and e!527987 mapRes!32260))))

(declare-fun condMapEmpty!32260 () Bool)

(declare-fun mapDefault!32260 () ValueCell!9676)

