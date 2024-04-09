; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16062 () Bool)

(assert start!16062)

(declare-fun b!159189 () Bool)

(declare-fun b_free!3511 () Bool)

(declare-fun b_next!3511 () Bool)

(assert (=> b!159189 (= b_free!3511 (not b_next!3511))))

(declare-fun tp!13103 () Bool)

(declare-fun b_and!9943 () Bool)

(assert (=> b!159189 (= tp!13103 b_and!9943)))

(declare-fun b!159187 () Bool)

(declare-fun res!75197 () Bool)

(declare-fun e!104228 () Bool)

(assert (=> b!159187 (=> (not res!75197) (not e!104228))))

(declare-datatypes ((V!4065 0))(
  ( (V!4066 (val!1701 Int)) )
))
(declare-datatypes ((ValueCell!1313 0))(
  ( (ValueCellFull!1313 (v!3562 V!4065)) (EmptyCell!1313) )
))
(declare-datatypes ((array!5704 0))(
  ( (array!5705 (arr!2696 (Array (_ BitVec 32) (_ BitVec 64))) (size!2980 (_ BitVec 32))) )
))
(declare-datatypes ((array!5706 0))(
  ( (array!5707 (arr!2697 (Array (_ BitVec 32) ValueCell!1313)) (size!2981 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1534 0))(
  ( (LongMapFixedSize!1535 (defaultEntry!3209 Int) (mask!7755 (_ BitVec 32)) (extraKeys!2950 (_ BitVec 32)) (zeroValue!3052 V!4065) (minValue!3052 V!4065) (_size!816 (_ BitVec 32)) (_keys!5010 array!5704) (_values!3192 array!5706) (_vacant!816 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1534)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159187 (= res!75197 (validMask!0 (mask!7755 thiss!1248)))))

(declare-fun b!159188 () Bool)

(assert (=> b!159188 (= e!104228 false)))

(declare-fun lt!82001 () Bool)

(declare-datatypes ((List!1912 0))(
  ( (Nil!1909) (Cons!1908 (h!2521 (_ BitVec 64)) (t!6722 List!1912)) )
))
(declare-fun arrayNoDuplicates!0 (array!5704 (_ BitVec 32) List!1912) Bool)

(assert (=> b!159188 (= lt!82001 (arrayNoDuplicates!0 (_keys!5010 thiss!1248) #b00000000000000000000000000000000 Nil!1909))))

(declare-fun e!104230 () Bool)

(declare-fun tp_is_empty!3313 () Bool)

(declare-fun e!104231 () Bool)

(declare-fun array_inv!1707 (array!5704) Bool)

(declare-fun array_inv!1708 (array!5706) Bool)

(assert (=> b!159189 (= e!104230 (and tp!13103 tp_is_empty!3313 (array_inv!1707 (_keys!5010 thiss!1248)) (array_inv!1708 (_values!3192 thiss!1248)) e!104231))))

(declare-fun res!75195 () Bool)

(assert (=> start!16062 (=> (not res!75195) (not e!104228))))

(declare-fun valid!716 (LongMapFixedSize!1534) Bool)

(assert (=> start!16062 (= res!75195 (valid!716 thiss!1248))))

(assert (=> start!16062 e!104228))

(assert (=> start!16062 e!104230))

(assert (=> start!16062 true))

(declare-fun b!159190 () Bool)

(declare-fun e!104229 () Bool)

(assert (=> b!159190 (= e!104229 tp_is_empty!3313)))

(declare-fun b!159191 () Bool)

(declare-fun res!75192 () Bool)

(assert (=> b!159191 (=> (not res!75192) (not e!104228))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2858 0))(
  ( (tuple2!2859 (_1!1439 (_ BitVec 64)) (_2!1439 V!4065)) )
))
(declare-datatypes ((List!1913 0))(
  ( (Nil!1910) (Cons!1909 (h!2522 tuple2!2858) (t!6723 List!1913)) )
))
(declare-datatypes ((ListLongMap!1867 0))(
  ( (ListLongMap!1868 (toList!949 List!1913)) )
))
(declare-fun contains!979 (ListLongMap!1867 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!609 (array!5704 array!5706 (_ BitVec 32) (_ BitVec 32) V!4065 V!4065 (_ BitVec 32) Int) ListLongMap!1867)

(assert (=> b!159191 (= res!75192 (contains!979 (getCurrentListMap!609 (_keys!5010 thiss!1248) (_values!3192 thiss!1248) (mask!7755 thiss!1248) (extraKeys!2950 thiss!1248) (zeroValue!3052 thiss!1248) (minValue!3052 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3209 thiss!1248)) key!828))))

(declare-fun b!159192 () Bool)

(declare-fun res!75191 () Bool)

(assert (=> b!159192 (=> (not res!75191) (not e!104228))))

(declare-datatypes ((SeekEntryResult!319 0))(
  ( (MissingZero!319 (index!3444 (_ BitVec 32))) (Found!319 (index!3445 (_ BitVec 32))) (Intermediate!319 (undefined!1131 Bool) (index!3446 (_ BitVec 32)) (x!17599 (_ BitVec 32))) (Undefined!319) (MissingVacant!319 (index!3447 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5704 (_ BitVec 32)) SeekEntryResult!319)

(assert (=> b!159192 (= res!75191 (is-Undefined!319 (seekEntryOrOpen!0 key!828 (_keys!5010 thiss!1248) (mask!7755 thiss!1248))))))

(declare-fun b!159193 () Bool)

(declare-fun res!75193 () Bool)

(assert (=> b!159193 (=> (not res!75193) (not e!104228))))

(assert (=> b!159193 (= res!75193 (and (= (size!2981 (_values!3192 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7755 thiss!1248))) (= (size!2980 (_keys!5010 thiss!1248)) (size!2981 (_values!3192 thiss!1248))) (bvsge (mask!7755 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2950 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2950 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159194 () Bool)

(declare-fun res!75194 () Bool)

(assert (=> b!159194 (=> (not res!75194) (not e!104228))))

(assert (=> b!159194 (= res!75194 (not (= key!828 (bvneg key!828))))))

(declare-fun b!159195 () Bool)

(declare-fun e!104226 () Bool)

(assert (=> b!159195 (= e!104226 tp_is_empty!3313)))

(declare-fun b!159196 () Bool)

(declare-fun mapRes!5657 () Bool)

(assert (=> b!159196 (= e!104231 (and e!104229 mapRes!5657))))

(declare-fun condMapEmpty!5657 () Bool)

(declare-fun mapDefault!5657 () ValueCell!1313)

