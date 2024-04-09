; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16164 () Bool)

(assert start!16164)

(declare-fun b!160872 () Bool)

(declare-fun b_free!3613 () Bool)

(declare-fun b_next!3613 () Bool)

(assert (=> b!160872 (= b_free!3613 (not b_next!3613))))

(declare-fun tp!13409 () Bool)

(declare-fun b_and!10045 () Bool)

(assert (=> b!160872 (= tp!13409 b_and!10045)))

(declare-fun b!160870 () Bool)

(declare-fun res!76262 () Bool)

(declare-fun e!105145 () Bool)

(assert (=> b!160870 (=> (not res!76262) (not e!105145))))

(declare-datatypes ((V!4201 0))(
  ( (V!4202 (val!1752 Int)) )
))
(declare-datatypes ((ValueCell!1364 0))(
  ( (ValueCellFull!1364 (v!3613 V!4201)) (EmptyCell!1364) )
))
(declare-datatypes ((array!5908 0))(
  ( (array!5909 (arr!2798 (Array (_ BitVec 32) (_ BitVec 64))) (size!3082 (_ BitVec 32))) )
))
(declare-datatypes ((array!5910 0))(
  ( (array!5911 (arr!2799 (Array (_ BitVec 32) ValueCell!1364)) (size!3083 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1636 0))(
  ( (LongMapFixedSize!1637 (defaultEntry!3260 Int) (mask!7840 (_ BitVec 32)) (extraKeys!3001 (_ BitVec 32)) (zeroValue!3103 V!4201) (minValue!3103 V!4201) (_size!867 (_ BitVec 32)) (_keys!5061 array!5908) (_values!3243 array!5910) (_vacant!867 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1636)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160870 (= res!76262 (validMask!0 (mask!7840 thiss!1248)))))

(declare-fun b!160871 () Bool)

(declare-fun e!105149 () Bool)

(declare-fun tp_is_empty!3415 () Bool)

(assert (=> b!160871 (= e!105149 tp_is_empty!3415)))

(declare-fun e!105144 () Bool)

(declare-fun e!105146 () Bool)

(declare-fun array_inv!1773 (array!5908) Bool)

(declare-fun array_inv!1774 (array!5910) Bool)

(assert (=> b!160872 (= e!105144 (and tp!13409 tp_is_empty!3415 (array_inv!1773 (_keys!5061 thiss!1248)) (array_inv!1774 (_values!3243 thiss!1248)) e!105146))))

(declare-fun b!160873 () Bool)

(declare-fun res!76267 () Bool)

(assert (=> b!160873 (=> (not res!76267) (not e!105145))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!160873 (= res!76267 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160874 () Bool)

(declare-fun res!76265 () Bool)

(assert (=> b!160874 (=> (not res!76265) (not e!105145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5908 (_ BitVec 32)) Bool)

(assert (=> b!160874 (= res!76265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5061 thiss!1248) (mask!7840 thiss!1248)))))

(declare-fun b!160875 () Bool)

(declare-fun res!76268 () Bool)

(assert (=> b!160875 (=> (not res!76268) (not e!105145))))

(declare-datatypes ((SeekEntryResult!350 0))(
  ( (MissingZero!350 (index!3568 (_ BitVec 32))) (Found!350 (index!3569 (_ BitVec 32))) (Intermediate!350 (undefined!1162 Bool) (index!3570 (_ BitVec 32)) (x!17766 (_ BitVec 32))) (Undefined!350) (MissingVacant!350 (index!3571 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5908 (_ BitVec 32)) SeekEntryResult!350)

(assert (=> b!160875 (= res!76268 (is-Undefined!350 (seekEntryOrOpen!0 key!828 (_keys!5061 thiss!1248) (mask!7840 thiss!1248))))))

(declare-fun b!160876 () Bool)

(declare-fun res!76264 () Bool)

(assert (=> b!160876 (=> (not res!76264) (not e!105145))))

(declare-datatypes ((tuple2!2926 0))(
  ( (tuple2!2927 (_1!1473 (_ BitVec 64)) (_2!1473 V!4201)) )
))
(declare-datatypes ((List!1980 0))(
  ( (Nil!1977) (Cons!1976 (h!2589 tuple2!2926) (t!6790 List!1980)) )
))
(declare-datatypes ((ListLongMap!1935 0))(
  ( (ListLongMap!1936 (toList!983 List!1980)) )
))
(declare-fun contains!1013 (ListLongMap!1935 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!643 (array!5908 array!5910 (_ BitVec 32) (_ BitVec 32) V!4201 V!4201 (_ BitVec 32) Int) ListLongMap!1935)

(assert (=> b!160876 (= res!76264 (not (contains!1013 (getCurrentListMap!643 (_keys!5061 thiss!1248) (_values!3243 thiss!1248) (mask!7840 thiss!1248) (extraKeys!3001 thiss!1248) (zeroValue!3103 thiss!1248) (minValue!3103 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3260 thiss!1248)) key!828)))))

(declare-fun b!160877 () Bool)

(declare-fun res!76263 () Bool)

(assert (=> b!160877 (=> (not res!76263) (not e!105145))))

(assert (=> b!160877 (= res!76263 (and (= (size!3083 (_values!3243 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7840 thiss!1248))) (= (size!3082 (_keys!5061 thiss!1248)) (size!3083 (_values!3243 thiss!1248))) (bvsge (mask!7840 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3001 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3001 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160878 () Bool)

(assert (=> b!160878 (= e!105145 false)))

(declare-fun lt!82154 () Bool)

(declare-datatypes ((List!1981 0))(
  ( (Nil!1978) (Cons!1977 (h!2590 (_ BitVec 64)) (t!6791 List!1981)) )
))
(declare-fun arrayNoDuplicates!0 (array!5908 (_ BitVec 32) List!1981) Bool)

(assert (=> b!160878 (= lt!82154 (arrayNoDuplicates!0 (_keys!5061 thiss!1248) #b00000000000000000000000000000000 Nil!1978))))

(declare-fun mapIsEmpty!5810 () Bool)

(declare-fun mapRes!5810 () Bool)

(assert (=> mapIsEmpty!5810 mapRes!5810))

(declare-fun b!160879 () Bool)

(declare-fun e!105147 () Bool)

(assert (=> b!160879 (= e!105146 (and e!105147 mapRes!5810))))

(declare-fun condMapEmpty!5810 () Bool)

(declare-fun mapDefault!5810 () ValueCell!1364)

