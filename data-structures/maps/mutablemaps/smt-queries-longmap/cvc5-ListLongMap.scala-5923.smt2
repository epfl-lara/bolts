; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77078 () Bool)

(assert start!77078)

(declare-fun b!899698 () Bool)

(declare-fun b_free!16039 () Bool)

(declare-fun b_next!16039 () Bool)

(assert (=> b!899698 (= b_free!16039 (not b_next!16039))))

(declare-fun tp!56201 () Bool)

(declare-fun b_and!26371 () Bool)

(assert (=> b!899698 (= tp!56201 b_and!26371)))

(declare-fun b!899693 () Bool)

(declare-fun e!503502 () Bool)

(declare-fun tp_is_empty!18367 () Bool)

(assert (=> b!899693 (= e!503502 tp_is_empty!18367)))

(declare-fun b!899694 () Bool)

(declare-fun e!503505 () Bool)

(assert (=> b!899694 (= e!503505 tp_is_empty!18367)))

(declare-fun b!899695 () Bool)

(declare-fun e!503503 () Bool)

(declare-datatypes ((SeekEntryResult!8922 0))(
  ( (MissingZero!8922 (index!38058 (_ BitVec 32))) (Found!8922 (index!38059 (_ BitVec 32))) (Intermediate!8922 (undefined!9734 Bool) (index!38060 (_ BitVec 32)) (x!76658 (_ BitVec 32))) (Undefined!8922) (MissingVacant!8922 (index!38061 (_ BitVec 32))) )
))
(declare-fun lt!406431 () SeekEntryResult!8922)

(declare-datatypes ((array!52766 0))(
  ( (array!52767 (arr!25352 (Array (_ BitVec 32) (_ BitVec 64))) (size!25811 (_ BitVec 32))) )
))
(declare-datatypes ((V!29455 0))(
  ( (V!29456 (val!9234 Int)) )
))
(declare-datatypes ((ValueCell!8702 0))(
  ( (ValueCellFull!8702 (v!11726 V!29455)) (EmptyCell!8702) )
))
(declare-datatypes ((array!52768 0))(
  ( (array!52769 (arr!25353 (Array (_ BitVec 32) ValueCell!8702)) (size!25812 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4420 0))(
  ( (LongMapFixedSize!4421 (defaultEntry!5438 Int) (mask!26200 (_ BitVec 32)) (extraKeys!5161 (_ BitVec 32)) (zeroValue!5265 V!29455) (minValue!5265 V!29455) (_size!2265 (_ BitVec 32)) (_keys!10229 array!52766) (_values!5452 array!52768) (_vacant!2265 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4420)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!899695 (= e!503503 (inRange!0 (index!38059 lt!406431) (mask!26200 thiss!1181)))))

(declare-fun mapNonEmpty!29220 () Bool)

(declare-fun mapRes!29220 () Bool)

(declare-fun tp!56202 () Bool)

(assert (=> mapNonEmpty!29220 (= mapRes!29220 (and tp!56202 e!503502))))

(declare-fun mapKey!29220 () (_ BitVec 32))

(declare-fun mapRest!29220 () (Array (_ BitVec 32) ValueCell!8702))

(declare-fun mapValue!29220 () ValueCell!8702)

(assert (=> mapNonEmpty!29220 (= (arr!25353 (_values!5452 thiss!1181)) (store mapRest!29220 mapKey!29220 mapValue!29220))))

(declare-fun b!899697 () Bool)

(declare-fun e!503501 () Bool)

(declare-fun e!503508 () Bool)

(assert (=> b!899697 (= e!503501 (not e!503508))))

(declare-fun res!607812 () Bool)

(assert (=> b!899697 (=> res!607812 e!503508)))

(assert (=> b!899697 (= res!607812 (not (is-Found!8922 lt!406431)))))

(assert (=> b!899697 e!503503))

(declare-fun res!607809 () Bool)

(assert (=> b!899697 (=> res!607809 e!503503)))

(assert (=> b!899697 (= res!607809 (not (is-Found!8922 lt!406431)))))

(declare-datatypes ((Unit!30543 0))(
  ( (Unit!30544) )
))
(declare-fun lt!406429 () Unit!30543)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!104 (array!52766 array!52768 (_ BitVec 32) (_ BitVec 32) V!29455 V!29455 (_ BitVec 64)) Unit!30543)

(assert (=> b!899697 (= lt!406429 (lemmaSeekEntryGivesInRangeIndex!104 (_keys!10229 thiss!1181) (_values!5452 thiss!1181) (mask!26200 thiss!1181) (extraKeys!5161 thiss!1181) (zeroValue!5265 thiss!1181) (minValue!5265 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52766 (_ BitVec 32)) SeekEntryResult!8922)

(assert (=> b!899697 (= lt!406431 (seekEntry!0 key!785 (_keys!10229 thiss!1181) (mask!26200 thiss!1181)))))

(declare-fun e!503504 () Bool)

(declare-fun e!503509 () Bool)

(declare-fun array_inv!19868 (array!52766) Bool)

(declare-fun array_inv!19869 (array!52768) Bool)

(assert (=> b!899698 (= e!503504 (and tp!56201 tp_is_empty!18367 (array_inv!19868 (_keys!10229 thiss!1181)) (array_inv!19869 (_values!5452 thiss!1181)) e!503509))))

(declare-fun mapIsEmpty!29220 () Bool)

(assert (=> mapIsEmpty!29220 mapRes!29220))

(declare-fun b!899699 () Bool)

(assert (=> b!899699 (= e!503509 (and e!503505 mapRes!29220))))

(declare-fun condMapEmpty!29220 () Bool)

(declare-fun mapDefault!29220 () ValueCell!8702)

