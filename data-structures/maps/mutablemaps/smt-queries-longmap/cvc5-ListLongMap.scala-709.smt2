; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16770 () Bool)

(assert start!16770)

(declare-fun b!168498 () Bool)

(declare-fun b_free!4063 () Bool)

(declare-fun b_next!4063 () Bool)

(assert (=> b!168498 (= b_free!4063 (not b_next!4063))))

(declare-fun tp!14789 () Bool)

(declare-fun b_and!10495 () Bool)

(assert (=> b!168498 (= tp!14789 b_and!10495)))

(declare-fun b!168496 () Bool)

(declare-fun e!110791 () Bool)

(declare-fun e!110792 () Bool)

(assert (=> b!168496 (= e!110791 (not e!110792))))

(declare-fun res!80227 () Bool)

(assert (=> b!168496 (=> res!80227 e!110792)))

(declare-datatypes ((V!4801 0))(
  ( (V!4802 (val!1977 Int)) )
))
(declare-datatypes ((ValueCell!1589 0))(
  ( (ValueCellFull!1589 (v!3838 V!4801)) (EmptyCell!1589) )
))
(declare-datatypes ((array!6826 0))(
  ( (array!6827 (arr!3248 (Array (_ BitVec 32) (_ BitVec 64))) (size!3536 (_ BitVec 32))) )
))
(declare-datatypes ((array!6828 0))(
  ( (array!6829 (arr!3249 (Array (_ BitVec 32) ValueCell!1589)) (size!3537 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2086 0))(
  ( (LongMapFixedSize!2087 (defaultEntry!3485 Int) (mask!8252 (_ BitVec 32)) (extraKeys!3226 (_ BitVec 32)) (zeroValue!3328 V!4801) (minValue!3328 V!4801) (_size!1092 (_ BitVec 32)) (_keys!5310 array!6826) (_values!3468 array!6828) (_vacant!1092 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2086)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!168496 (= res!80227 (not (validMask!0 (mask!8252 thiss!1248))))))

(declare-datatypes ((tuple2!3166 0))(
  ( (tuple2!3167 (_1!1593 (_ BitVec 64)) (_2!1593 V!4801)) )
))
(declare-datatypes ((List!2183 0))(
  ( (Nil!2180) (Cons!2179 (h!2796 tuple2!3166) (t!6993 List!2183)) )
))
(declare-datatypes ((ListLongMap!2135 0))(
  ( (ListLongMap!2136 (toList!1083 List!2183)) )
))
(declare-fun lt!84306 () ListLongMap!2135)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun v!309 () V!4801)

(declare-datatypes ((SeekEntryResult!513 0))(
  ( (MissingZero!513 (index!4220 (_ BitVec 32))) (Found!513 (index!4221 (_ BitVec 32))) (Intermediate!513 (undefined!1325 Bool) (index!4222 (_ BitVec 32)) (x!18637 (_ BitVec 32))) (Undefined!513) (MissingVacant!513 (index!4223 (_ BitVec 32))) )
))
(declare-fun lt!84304 () SeekEntryResult!513)

(declare-fun +!225 (ListLongMap!2135 tuple2!3166) ListLongMap!2135)

(declare-fun getCurrentListMap!736 (array!6826 array!6828 (_ BitVec 32) (_ BitVec 32) V!4801 V!4801 (_ BitVec 32) Int) ListLongMap!2135)

(assert (=> b!168496 (= (+!225 lt!84306 (tuple2!3167 key!828 v!309)) (getCurrentListMap!736 (_keys!5310 thiss!1248) (array!6829 (store (arr!3249 (_values!3468 thiss!1248)) (index!4221 lt!84304) (ValueCellFull!1589 v!309)) (size!3537 (_values!3468 thiss!1248))) (mask!8252 thiss!1248) (extraKeys!3226 thiss!1248) (zeroValue!3328 thiss!1248) (minValue!3328 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3485 thiss!1248)))))

(declare-datatypes ((Unit!5188 0))(
  ( (Unit!5189) )
))
(declare-fun lt!84307 () Unit!5188)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!85 (array!6826 array!6828 (_ BitVec 32) (_ BitVec 32) V!4801 V!4801 (_ BitVec 32) (_ BitVec 64) V!4801 Int) Unit!5188)

(assert (=> b!168496 (= lt!84307 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!85 (_keys!5310 thiss!1248) (_values!3468 thiss!1248) (mask!8252 thiss!1248) (extraKeys!3226 thiss!1248) (zeroValue!3328 thiss!1248) (minValue!3328 thiss!1248) (index!4221 lt!84304) key!828 v!309 (defaultEntry!3485 thiss!1248)))))

(declare-fun lt!84308 () Unit!5188)

(declare-fun e!110798 () Unit!5188)

(assert (=> b!168496 (= lt!84308 e!110798)))

(declare-fun c!30357 () Bool)

(declare-fun contains!1119 (ListLongMap!2135 (_ BitVec 64)) Bool)

(assert (=> b!168496 (= c!30357 (contains!1119 lt!84306 key!828))))

(assert (=> b!168496 (= lt!84306 (getCurrentListMap!736 (_keys!5310 thiss!1248) (_values!3468 thiss!1248) (mask!8252 thiss!1248) (extraKeys!3226 thiss!1248) (zeroValue!3328 thiss!1248) (minValue!3328 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3485 thiss!1248)))))

(declare-fun b!168497 () Bool)

(declare-fun Unit!5190 () Unit!5188)

(assert (=> b!168497 (= e!110798 Unit!5190)))

(declare-fun lt!84302 () Unit!5188)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!124 (array!6826 array!6828 (_ BitVec 32) (_ BitVec 32) V!4801 V!4801 (_ BitVec 64) Int) Unit!5188)

(assert (=> b!168497 (= lt!84302 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!124 (_keys!5310 thiss!1248) (_values!3468 thiss!1248) (mask!8252 thiss!1248) (extraKeys!3226 thiss!1248) (zeroValue!3328 thiss!1248) (minValue!3328 thiss!1248) key!828 (defaultEntry!3485 thiss!1248)))))

(assert (=> b!168497 false))

(declare-fun mapIsEmpty!6516 () Bool)

(declare-fun mapRes!6516 () Bool)

(assert (=> mapIsEmpty!6516 mapRes!6516))

(declare-fun tp_is_empty!3865 () Bool)

(declare-fun e!110796 () Bool)

(declare-fun e!110793 () Bool)

(declare-fun array_inv!2081 (array!6826) Bool)

(declare-fun array_inv!2082 (array!6828) Bool)

(assert (=> b!168498 (= e!110793 (and tp!14789 tp_is_empty!3865 (array_inv!2081 (_keys!5310 thiss!1248)) (array_inv!2082 (_values!3468 thiss!1248)) e!110796))))

(declare-fun b!168499 () Bool)

(declare-fun res!80231 () Bool)

(declare-fun e!110800 () Bool)

(assert (=> b!168499 (=> (not res!80231) (not e!110800))))

(assert (=> b!168499 (= res!80231 (not (= key!828 (bvneg key!828))))))

(declare-fun b!168500 () Bool)

(declare-fun e!110797 () Bool)

(assert (=> b!168500 (= e!110797 tp_is_empty!3865)))

(declare-fun res!80232 () Bool)

(assert (=> start!16770 (=> (not res!80232) (not e!110800))))

(declare-fun valid!895 (LongMapFixedSize!2086) Bool)

(assert (=> start!16770 (= res!80232 (valid!895 thiss!1248))))

(assert (=> start!16770 e!110800))

(assert (=> start!16770 e!110793))

(assert (=> start!16770 true))

(assert (=> start!16770 tp_is_empty!3865))

(declare-fun mapNonEmpty!6516 () Bool)

(declare-fun tp!14790 () Bool)

(declare-fun e!110799 () Bool)

(assert (=> mapNonEmpty!6516 (= mapRes!6516 (and tp!14790 e!110799))))

(declare-fun mapRest!6516 () (Array (_ BitVec 32) ValueCell!1589))

(declare-fun mapKey!6516 () (_ BitVec 32))

(declare-fun mapValue!6516 () ValueCell!1589)

(assert (=> mapNonEmpty!6516 (= (arr!3249 (_values!3468 thiss!1248)) (store mapRest!6516 mapKey!6516 mapValue!6516))))

(declare-fun b!168501 () Bool)

(assert (=> b!168501 (= e!110792 true)))

(declare-fun lt!84305 () Bool)

(declare-datatypes ((List!2184 0))(
  ( (Nil!2181) (Cons!2180 (h!2797 (_ BitVec 64)) (t!6994 List!2184)) )
))
(declare-fun arrayNoDuplicates!0 (array!6826 (_ BitVec 32) List!2184) Bool)

(assert (=> b!168501 (= lt!84305 (arrayNoDuplicates!0 (_keys!5310 thiss!1248) #b00000000000000000000000000000000 Nil!2181))))

(declare-fun b!168502 () Bool)

(assert (=> b!168502 (= e!110800 e!110791)))

(declare-fun res!80226 () Bool)

(assert (=> b!168502 (=> (not res!80226) (not e!110791))))

(assert (=> b!168502 (= res!80226 (and (not (is-Undefined!513 lt!84304)) (not (is-MissingVacant!513 lt!84304)) (not (is-MissingZero!513 lt!84304)) (is-Found!513 lt!84304)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6826 (_ BitVec 32)) SeekEntryResult!513)

(assert (=> b!168502 (= lt!84304 (seekEntryOrOpen!0 key!828 (_keys!5310 thiss!1248) (mask!8252 thiss!1248)))))

(declare-fun e!110795 () Bool)

(declare-fun b!168503 () Bool)

(assert (=> b!168503 (= e!110795 (= (select (arr!3248 (_keys!5310 thiss!1248)) (index!4221 lt!84304)) key!828))))

(declare-fun b!168504 () Bool)

(declare-fun res!80229 () Bool)

(assert (=> b!168504 (=> res!80229 e!110792)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6826 (_ BitVec 32)) Bool)

(assert (=> b!168504 (= res!80229 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5310 thiss!1248) (mask!8252 thiss!1248))))))

(declare-fun b!168505 () Bool)

(assert (=> b!168505 (= e!110796 (and e!110797 mapRes!6516))))

(declare-fun condMapEmpty!6516 () Bool)

(declare-fun mapDefault!6516 () ValueCell!1589)

