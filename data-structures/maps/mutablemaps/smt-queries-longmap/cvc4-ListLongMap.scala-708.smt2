; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16768 () Bool)

(assert start!16768)

(declare-fun b!168464 () Bool)

(declare-fun b_free!4061 () Bool)

(declare-fun b_next!4061 () Bool)

(assert (=> b!168464 (= b_free!4061 (not b_next!4061))))

(declare-fun tp!14784 () Bool)

(declare-fun b_and!10493 () Bool)

(assert (=> b!168464 (= tp!14784 b_and!10493)))

(declare-fun b!168457 () Bool)

(declare-fun e!110761 () Bool)

(declare-fun e!110765 () Bool)

(assert (=> b!168457 (= e!110761 e!110765)))

(declare-fun res!80207 () Bool)

(assert (=> b!168457 (=> (not res!80207) (not e!110765))))

(declare-datatypes ((SeekEntryResult!512 0))(
  ( (MissingZero!512 (index!4216 (_ BitVec 32))) (Found!512 (index!4217 (_ BitVec 32))) (Intermediate!512 (undefined!1324 Bool) (index!4218 (_ BitVec 32)) (x!18628 (_ BitVec 32))) (Undefined!512) (MissingVacant!512 (index!4219 (_ BitVec 32))) )
))
(declare-fun lt!84281 () SeekEntryResult!512)

(assert (=> b!168457 (= res!80207 (and (not (is-Undefined!512 lt!84281)) (not (is-MissingVacant!512 lt!84281)) (not (is-MissingZero!512 lt!84281)) (is-Found!512 lt!84281)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4797 0))(
  ( (V!4798 (val!1976 Int)) )
))
(declare-datatypes ((ValueCell!1588 0))(
  ( (ValueCellFull!1588 (v!3837 V!4797)) (EmptyCell!1588) )
))
(declare-datatypes ((array!6822 0))(
  ( (array!6823 (arr!3246 (Array (_ BitVec 32) (_ BitVec 64))) (size!3534 (_ BitVec 32))) )
))
(declare-datatypes ((array!6824 0))(
  ( (array!6825 (arr!3247 (Array (_ BitVec 32) ValueCell!1588)) (size!3535 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2084 0))(
  ( (LongMapFixedSize!2085 (defaultEntry!3484 Int) (mask!8249 (_ BitVec 32)) (extraKeys!3225 (_ BitVec 32)) (zeroValue!3327 V!4797) (minValue!3327 V!4797) (_size!1091 (_ BitVec 32)) (_keys!5309 array!6822) (_values!3467 array!6824) (_vacant!1091 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2084)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6822 (_ BitVec 32)) SeekEntryResult!512)

(assert (=> b!168457 (= lt!84281 (seekEntryOrOpen!0 key!828 (_keys!5309 thiss!1248) (mask!8249 thiss!1248)))))

(declare-fun b!168458 () Bool)

(declare-fun res!80209 () Bool)

(declare-fun e!110768 () Bool)

(assert (=> b!168458 (=> res!80209 e!110768)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6822 (_ BitVec 32)) Bool)

(assert (=> b!168458 (= res!80209 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5309 thiss!1248) (mask!8249 thiss!1248))))))

(declare-fun b!168459 () Bool)

(assert (=> b!168459 (= e!110768 true)))

(declare-fun lt!84284 () Bool)

(declare-datatypes ((List!2182 0))(
  ( (Nil!2179) (Cons!2178 (h!2795 (_ BitVec 64)) (t!6992 List!2182)) )
))
(declare-fun arrayNoDuplicates!0 (array!6822 (_ BitVec 32) List!2182) Bool)

(assert (=> b!168459 (= lt!84284 (arrayNoDuplicates!0 (_keys!5309 thiss!1248) #b00000000000000000000000000000000 Nil!2179))))

(declare-fun mapNonEmpty!6513 () Bool)

(declare-fun mapRes!6513 () Bool)

(declare-fun tp!14783 () Bool)

(declare-fun e!110763 () Bool)

(assert (=> mapNonEmpty!6513 (= mapRes!6513 (and tp!14783 e!110763))))

(declare-fun mapKey!6513 () (_ BitVec 32))

(declare-fun mapValue!6513 () ValueCell!1588)

(declare-fun mapRest!6513 () (Array (_ BitVec 32) ValueCell!1588))

(assert (=> mapNonEmpty!6513 (= (arr!3247 (_values!3467 thiss!1248)) (store mapRest!6513 mapKey!6513 mapValue!6513))))

(declare-fun b!168460 () Bool)

(declare-datatypes ((Unit!5186 0))(
  ( (Unit!5187) )
))
(declare-fun e!110766 () Unit!5186)

(declare-fun lt!84282 () Unit!5186)

(assert (=> b!168460 (= e!110766 lt!84282)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!124 (array!6822 array!6824 (_ BitVec 32) (_ BitVec 32) V!4797 V!4797 (_ BitVec 64) Int) Unit!5186)

(assert (=> b!168460 (= lt!84282 (lemmaInListMapThenSeekEntryOrOpenFindsIt!124 (_keys!5309 thiss!1248) (_values!3467 thiss!1248) (mask!8249 thiss!1248) (extraKeys!3225 thiss!1248) (zeroValue!3327 thiss!1248) (minValue!3327 thiss!1248) key!828 (defaultEntry!3484 thiss!1248)))))

(declare-fun res!80208 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168460 (= res!80208 (inRange!0 (index!4217 lt!84281) (mask!8249 thiss!1248)))))

(declare-fun e!110767 () Bool)

(assert (=> b!168460 (=> (not res!80208) (not e!110767))))

(assert (=> b!168460 e!110767))

(declare-fun b!168461 () Bool)

(declare-fun e!110769 () Bool)

(declare-fun e!110762 () Bool)

(assert (=> b!168461 (= e!110769 (and e!110762 mapRes!6513))))

(declare-fun condMapEmpty!6513 () Bool)

(declare-fun mapDefault!6513 () ValueCell!1588)

