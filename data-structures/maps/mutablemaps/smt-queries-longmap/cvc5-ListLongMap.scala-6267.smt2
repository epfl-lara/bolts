; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80164 () Bool)

(assert start!80164)

(declare-fun b!941604 () Bool)

(declare-fun b_free!17923 () Bool)

(declare-fun b_next!17923 () Bool)

(assert (=> b!941604 (= b_free!17923 (not b_next!17923))))

(declare-fun tp!62259 () Bool)

(declare-fun b_and!29353 () Bool)

(assert (=> b!941604 (= tp!62259 b_and!29353)))

(declare-fun res!633015 () Bool)

(declare-fun e!529417 () Bool)

(assert (=> start!80164 (=> (not res!633015) (not e!529417))))

(declare-datatypes ((V!32207 0))(
  ( (V!32208 (val!10266 Int)) )
))
(declare-datatypes ((ValueCell!9734 0))(
  ( (ValueCellFull!9734 (v!12797 V!32207)) (EmptyCell!9734) )
))
(declare-datatypes ((array!56840 0))(
  ( (array!56841 (arr!27347 (Array (_ BitVec 32) ValueCell!9734)) (size!27811 (_ BitVec 32))) )
))
(declare-datatypes ((array!56842 0))(
  ( (array!56843 (arr!27348 (Array (_ BitVec 32) (_ BitVec 64))) (size!27812 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4618 0))(
  ( (LongMapFixedSize!4619 (defaultEntry!5600 Int) (mask!27174 (_ BitVec 32)) (extraKeys!5332 (_ BitVec 32)) (zeroValue!5436 V!32207) (minValue!5436 V!32207) (_size!2364 (_ BitVec 32)) (_keys!10456 array!56842) (_values!5623 array!56840) (_vacant!2364 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4618)

(declare-fun valid!1749 (LongMapFixedSize!4618) Bool)

(assert (=> start!80164 (= res!633015 (valid!1749 thiss!1141))))

(assert (=> start!80164 e!529417))

(declare-fun e!529414 () Bool)

(assert (=> start!80164 e!529414))

(assert (=> start!80164 true))

(declare-fun b!941600 () Bool)

(declare-fun res!633014 () Bool)

(assert (=> b!941600 (=> (not res!633014) (not e!529417))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9016 0))(
  ( (MissingZero!9016 (index!38434 (_ BitVec 32))) (Found!9016 (index!38435 (_ BitVec 32))) (Intermediate!9016 (undefined!9828 Bool) (index!38436 (_ BitVec 32)) (x!80816 (_ BitVec 32))) (Undefined!9016) (MissingVacant!9016 (index!38437 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56842 (_ BitVec 32)) SeekEntryResult!9016)

(assert (=> b!941600 (= res!633014 (not (is-Found!9016 (seekEntry!0 key!756 (_keys!10456 thiss!1141) (mask!27174 thiss!1141)))))))

(declare-fun b!941601 () Bool)

(declare-fun e!529412 () Bool)

(declare-fun tp_is_empty!20431 () Bool)

(assert (=> b!941601 (= e!529412 tp_is_empty!20431)))

(declare-fun mapNonEmpty!32451 () Bool)

(declare-fun mapRes!32451 () Bool)

(declare-fun tp!62258 () Bool)

(declare-fun e!529416 () Bool)

(assert (=> mapNonEmpty!32451 (= mapRes!32451 (and tp!62258 e!529416))))

(declare-fun mapRest!32451 () (Array (_ BitVec 32) ValueCell!9734))

(declare-fun mapKey!32451 () (_ BitVec 32))

(declare-fun mapValue!32451 () ValueCell!9734)

(assert (=> mapNonEmpty!32451 (= (arr!27347 (_values!5623 thiss!1141)) (store mapRest!32451 mapKey!32451 mapValue!32451))))

(declare-fun b!941602 () Bool)

(declare-fun res!633016 () Bool)

(assert (=> b!941602 (=> (not res!633016) (not e!529417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!941602 (= res!633016 (validMask!0 (mask!27174 thiss!1141)))))

(declare-fun mapIsEmpty!32451 () Bool)

(assert (=> mapIsEmpty!32451 mapRes!32451))

(declare-fun b!941603 () Bool)

(assert (=> b!941603 (= e!529416 tp_is_empty!20431)))

(declare-fun e!529413 () Bool)

(declare-fun array_inv!21206 (array!56842) Bool)

(declare-fun array_inv!21207 (array!56840) Bool)

(assert (=> b!941604 (= e!529414 (and tp!62259 tp_is_empty!20431 (array_inv!21206 (_keys!10456 thiss!1141)) (array_inv!21207 (_values!5623 thiss!1141)) e!529413))))

(declare-fun b!941605 () Bool)

(assert (=> b!941605 (= e!529413 (and e!529412 mapRes!32451))))

(declare-fun condMapEmpty!32451 () Bool)

(declare-fun mapDefault!32451 () ValueCell!9734)

