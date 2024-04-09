; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21578 () Bool)

(assert start!21578)

(declare-fun b!216112 () Bool)

(declare-fun b_free!5743 () Bool)

(declare-fun b_next!5743 () Bool)

(assert (=> b!216112 (= b_free!5743 (not b_next!5743))))

(declare-fun tp!20358 () Bool)

(declare-fun b_and!12651 () Bool)

(assert (=> b!216112 (= tp!20358 b_and!12651)))

(declare-fun b!216110 () Bool)

(declare-fun res!105682 () Bool)

(declare-fun e!140614 () Bool)

(assert (=> b!216110 (=> (not res!105682) (not e!140614))))

(declare-datatypes ((V!7121 0))(
  ( (V!7122 (val!2847 Int)) )
))
(declare-datatypes ((ValueCell!2459 0))(
  ( (ValueCellFull!2459 (v!4861 V!7121)) (EmptyCell!2459) )
))
(declare-datatypes ((array!10444 0))(
  ( (array!10445 (arr!4945 (Array (_ BitVec 32) ValueCell!2459)) (size!5277 (_ BitVec 32))) )
))
(declare-datatypes ((array!10446 0))(
  ( (array!10447 (arr!4946 (Array (_ BitVec 32) (_ BitVec 64))) (size!5278 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2818 0))(
  ( (LongMapFixedSize!2819 (defaultEntry!4059 Int) (mask!9786 (_ BitVec 32)) (extraKeys!3796 (_ BitVec 32)) (zeroValue!3900 V!7121) (minValue!3900 V!7121) (_size!1458 (_ BitVec 32)) (_keys!6104 array!10446) (_values!4042 array!10444) (_vacant!1458 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2818)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216110 (= res!105682 (validMask!0 (mask!9786 thiss!1504)))))

(declare-fun b!216111 () Bool)

(declare-datatypes ((List!3161 0))(
  ( (Nil!3158) (Cons!3157 (h!3804 (_ BitVec 64)) (t!8124 List!3161)) )
))
(declare-fun arrayNoDuplicates!0 (array!10446 (_ BitVec 32) List!3161) Bool)

(assert (=> b!216111 (= e!140614 (not (arrayNoDuplicates!0 (_keys!6104 thiss!1504) #b00000000000000000000000000000000 Nil!3158)))))

(declare-fun e!140616 () Bool)

(declare-fun e!140619 () Bool)

(declare-fun tp_is_empty!5605 () Bool)

(declare-fun array_inv!3261 (array!10446) Bool)

(declare-fun array_inv!3262 (array!10444) Bool)

(assert (=> b!216112 (= e!140619 (and tp!20358 tp_is_empty!5605 (array_inv!3261 (_keys!6104 thiss!1504)) (array_inv!3262 (_values!4042 thiss!1504)) e!140616))))

(declare-fun mapNonEmpty!9564 () Bool)

(declare-fun mapRes!9564 () Bool)

(declare-fun tp!20357 () Bool)

(declare-fun e!140613 () Bool)

(assert (=> mapNonEmpty!9564 (= mapRes!9564 (and tp!20357 e!140613))))

(declare-fun mapRest!9564 () (Array (_ BitVec 32) ValueCell!2459))

(declare-fun mapKey!9564 () (_ BitVec 32))

(declare-fun mapValue!9564 () ValueCell!2459)

(assert (=> mapNonEmpty!9564 (= (arr!4945 (_values!4042 thiss!1504)) (store mapRest!9564 mapKey!9564 mapValue!9564))))

(declare-fun res!105684 () Bool)

(declare-fun e!140617 () Bool)

(assert (=> start!21578 (=> (not res!105684) (not e!140617))))

(declare-fun valid!1137 (LongMapFixedSize!2818) Bool)

(assert (=> start!21578 (= res!105684 (valid!1137 thiss!1504))))

(assert (=> start!21578 e!140617))

(assert (=> start!21578 e!140619))

(assert (=> start!21578 true))

(declare-fun b!216113 () Bool)

(declare-fun res!105680 () Bool)

(assert (=> b!216113 (=> (not res!105680) (not e!140614))))

(assert (=> b!216113 (= res!105680 (and (= (size!5277 (_values!4042 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9786 thiss!1504))) (= (size!5278 (_keys!6104 thiss!1504)) (size!5277 (_values!4042 thiss!1504))) (bvsge (mask!9786 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3796 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3796 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!216114 () Bool)

(declare-fun e!140618 () Bool)

(assert (=> b!216114 (= e!140618 tp_is_empty!5605)))

(declare-fun b!216115 () Bool)

(assert (=> b!216115 (= e!140617 e!140614)))

(declare-fun res!105681 () Bool)

(assert (=> b!216115 (=> (not res!105681) (not e!140614))))

(declare-datatypes ((SeekEntryResult!750 0))(
  ( (MissingZero!750 (index!5170 (_ BitVec 32))) (Found!750 (index!5171 (_ BitVec 32))) (Intermediate!750 (undefined!1562 Bool) (index!5172 (_ BitVec 32)) (x!22614 (_ BitVec 32))) (Undefined!750) (MissingVacant!750 (index!5173 (_ BitVec 32))) )
))
(declare-fun lt!111136 () SeekEntryResult!750)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216115 (= res!105681 (or (= lt!111136 (MissingZero!750 index!297)) (= lt!111136 (MissingVacant!750 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10446 (_ BitVec 32)) SeekEntryResult!750)

(assert (=> b!216115 (= lt!111136 (seekEntryOrOpen!0 key!932 (_keys!6104 thiss!1504) (mask!9786 thiss!1504)))))

(declare-fun b!216116 () Bool)

(assert (=> b!216116 (= e!140613 tp_is_empty!5605)))

(declare-fun b!216117 () Bool)

(assert (=> b!216117 (= e!140616 (and e!140618 mapRes!9564))))

(declare-fun condMapEmpty!9564 () Bool)

(declare-fun mapDefault!9564 () ValueCell!2459)

