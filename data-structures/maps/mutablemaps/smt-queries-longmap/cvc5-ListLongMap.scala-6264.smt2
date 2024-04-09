; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80088 () Bool)

(assert start!80088)

(declare-fun b!941085 () Bool)

(declare-fun b_free!17905 () Bool)

(declare-fun b_next!17905 () Bool)

(assert (=> b!941085 (= b_free!17905 (not b_next!17905))))

(declare-fun tp!62194 () Bool)

(declare-fun b_and!29335 () Bool)

(assert (=> b!941085 (= tp!62194 b_and!29335)))

(declare-fun b!941083 () Bool)

(declare-fun res!632804 () Bool)

(declare-fun e!529086 () Bool)

(assert (=> b!941083 (=> (not res!632804) (not e!529086))))

(declare-datatypes ((V!32183 0))(
  ( (V!32184 (val!10257 Int)) )
))
(declare-datatypes ((ValueCell!9725 0))(
  ( (ValueCellFull!9725 (v!12788 V!32183)) (EmptyCell!9725) )
))
(declare-datatypes ((array!56798 0))(
  ( (array!56799 (arr!27329 (Array (_ BitVec 32) ValueCell!9725)) (size!27791 (_ BitVec 32))) )
))
(declare-datatypes ((array!56800 0))(
  ( (array!56801 (arr!27330 (Array (_ BitVec 32) (_ BitVec 64))) (size!27792 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4600 0))(
  ( (LongMapFixedSize!4601 (defaultEntry!5591 Int) (mask!27145 (_ BitVec 32)) (extraKeys!5323 (_ BitVec 32)) (zeroValue!5427 V!32183) (minValue!5427 V!32183) (_size!2355 (_ BitVec 32)) (_keys!10438 array!56800) (_values!5614 array!56798) (_vacant!2355 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4600)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!941083 (= res!632804 (validMask!0 (mask!27145 thiss!1141)))))

(declare-fun b!941084 () Bool)

(assert (=> b!941084 (= e!529086 (not (= (size!27791 (_values!5614 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27145 thiss!1141)))))))

(declare-fun e!529085 () Bool)

(declare-fun e!529087 () Bool)

(declare-fun tp_is_empty!20413 () Bool)

(declare-fun array_inv!21192 (array!56800) Bool)

(declare-fun array_inv!21193 (array!56798) Bool)

(assert (=> b!941085 (= e!529085 (and tp!62194 tp_is_empty!20413 (array_inv!21192 (_keys!10438 thiss!1141)) (array_inv!21193 (_values!5614 thiss!1141)) e!529087))))

(declare-fun b!941086 () Bool)

(declare-fun e!529084 () Bool)

(assert (=> b!941086 (= e!529084 tp_is_empty!20413)))

(declare-fun b!941087 () Bool)

(declare-fun res!632805 () Bool)

(assert (=> b!941087 (=> (not res!632805) (not e!529086))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9011 0))(
  ( (MissingZero!9011 (index!38414 (_ BitVec 32))) (Found!9011 (index!38415 (_ BitVec 32))) (Intermediate!9011 (undefined!9823 Bool) (index!38416 (_ BitVec 32)) (x!80745 (_ BitVec 32))) (Undefined!9011) (MissingVacant!9011 (index!38417 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56800 (_ BitVec 32)) SeekEntryResult!9011)

(assert (=> b!941087 (= res!632805 (not (is-Found!9011 (seekEntry!0 key!756 (_keys!10438 thiss!1141) (mask!27145 thiss!1141)))))))

(declare-fun b!941088 () Bool)

(declare-fun res!632807 () Bool)

(assert (=> b!941088 (=> (not res!632807) (not e!529086))))

(assert (=> b!941088 (= res!632807 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32413 () Bool)

(declare-fun mapRes!32413 () Bool)

(declare-fun tp!62193 () Bool)

(assert (=> mapNonEmpty!32413 (= mapRes!32413 (and tp!62193 e!529084))))

(declare-fun mapValue!32413 () ValueCell!9725)

(declare-fun mapKey!32413 () (_ BitVec 32))

(declare-fun mapRest!32413 () (Array (_ BitVec 32) ValueCell!9725))

(assert (=> mapNonEmpty!32413 (= (arr!27329 (_values!5614 thiss!1141)) (store mapRest!32413 mapKey!32413 mapValue!32413))))

(declare-fun b!941089 () Bool)

(declare-fun e!529088 () Bool)

(assert (=> b!941089 (= e!529088 tp_is_empty!20413)))

(declare-fun b!941090 () Bool)

(assert (=> b!941090 (= e!529087 (and e!529088 mapRes!32413))))

(declare-fun condMapEmpty!32413 () Bool)

(declare-fun mapDefault!32413 () ValueCell!9725)

