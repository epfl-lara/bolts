; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76190 () Bool)

(assert start!76190)

(declare-fun b!894478 () Bool)

(declare-fun b_free!15881 () Bool)

(declare-fun b_next!15881 () Bool)

(assert (=> b!894478 (= b_free!15881 (not b_next!15881))))

(declare-fun tp!55635 () Bool)

(declare-fun b_and!26191 () Bool)

(assert (=> b!894478 (= tp!55635 b_and!26191)))

(declare-fun b!894475 () Bool)

(declare-fun e!499685 () Bool)

(declare-fun tp_is_empty!18209 () Bool)

(assert (=> b!894475 (= e!499685 tp_is_empty!18209)))

(declare-fun b!894476 () Bool)

(declare-fun e!499688 () Bool)

(declare-fun e!499690 () Bool)

(assert (=> b!894476 (= e!499688 e!499690)))

(declare-fun res!605421 () Bool)

(assert (=> b!894476 (=> (not res!605421) (not e!499690))))

(declare-datatypes ((array!52396 0))(
  ( (array!52397 (arr!25194 (Array (_ BitVec 32) (_ BitVec 64))) (size!25641 (_ BitVec 32))) )
))
(declare-datatypes ((V!29243 0))(
  ( (V!29244 (val!9155 Int)) )
))
(declare-datatypes ((ValueCell!8623 0))(
  ( (ValueCellFull!8623 (v!11642 V!29243)) (EmptyCell!8623) )
))
(declare-datatypes ((array!52398 0))(
  ( (array!52399 (arr!25195 (Array (_ BitVec 32) ValueCell!8623)) (size!25642 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4262 0))(
  ( (LongMapFixedSize!4263 (defaultEntry!5343 Int) (mask!25899 (_ BitVec 32)) (extraKeys!5039 (_ BitVec 32)) (zeroValue!5143 V!29243) (minValue!5143 V!29243) (_size!2186 (_ BitVec 32)) (_keys!10037 array!52396) (_values!5330 array!52398) (_vacant!2186 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4262)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!894476 (= res!605421 (validMask!0 (mask!25899 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8863 0))(
  ( (MissingZero!8863 (index!37822 (_ BitVec 32))) (Found!8863 (index!37823 (_ BitVec 32))) (Intermediate!8863 (undefined!9675 Bool) (index!37824 (_ BitVec 32)) (x!76052 (_ BitVec 32))) (Undefined!8863) (MissingVacant!8863 (index!37825 (_ BitVec 32))) )
))
(declare-fun lt!404259 () SeekEntryResult!8863)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52396 (_ BitVec 32)) SeekEntryResult!8863)

(assert (=> b!894476 (= lt!404259 (seekEntry!0 key!785 (_keys!10037 thiss!1181) (mask!25899 thiss!1181)))))

(declare-fun b!894477 () Bool)

(assert (=> b!894477 (= e!499690 (not (= (size!25642 (_values!5330 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25899 thiss!1181)))))))

(declare-fun e!499687 () Bool)

(declare-fun e!499686 () Bool)

(declare-fun array_inv!19762 (array!52396) Bool)

(declare-fun array_inv!19763 (array!52398) Bool)

(assert (=> b!894478 (= e!499687 (and tp!55635 tp_is_empty!18209 (array_inv!19762 (_keys!10037 thiss!1181)) (array_inv!19763 (_values!5330 thiss!1181)) e!499686))))

(declare-fun mapIsEmpty!28890 () Bool)

(declare-fun mapRes!28890 () Bool)

(assert (=> mapIsEmpty!28890 mapRes!28890))

(declare-fun b!894480 () Bool)

(declare-fun e!499689 () Bool)

(assert (=> b!894480 (= e!499686 (and e!499689 mapRes!28890))))

(declare-fun condMapEmpty!28890 () Bool)

(declare-fun mapDefault!28890 () ValueCell!8623)

