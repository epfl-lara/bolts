; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16762 () Bool)

(assert start!16762)

(declare-fun b!168347 () Bool)

(declare-fun b_free!4055 () Bool)

(declare-fun b_next!4055 () Bool)

(assert (=> b!168347 (= b_free!4055 (not b_next!4055))))

(declare-fun tp!14765 () Bool)

(declare-fun b_and!10487 () Bool)

(assert (=> b!168347 (= tp!14765 b_and!10487)))

(declare-fun mapIsEmpty!6504 () Bool)

(declare-fun mapRes!6504 () Bool)

(assert (=> mapIsEmpty!6504 mapRes!6504))

(declare-fun b!168340 () Bool)

(declare-fun res!80142 () Bool)

(declare-fun e!110675 () Bool)

(assert (=> b!168340 (=> res!80142 e!110675)))

(declare-datatypes ((V!4789 0))(
  ( (V!4790 (val!1973 Int)) )
))
(declare-datatypes ((ValueCell!1585 0))(
  ( (ValueCellFull!1585 (v!3834 V!4789)) (EmptyCell!1585) )
))
(declare-datatypes ((array!6810 0))(
  ( (array!6811 (arr!3240 (Array (_ BitVec 32) (_ BitVec 64))) (size!3528 (_ BitVec 32))) )
))
(declare-datatypes ((array!6812 0))(
  ( (array!6813 (arr!3241 (Array (_ BitVec 32) ValueCell!1585)) (size!3529 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2078 0))(
  ( (LongMapFixedSize!2079 (defaultEntry!3481 Int) (mask!8244 (_ BitVec 32)) (extraKeys!3222 (_ BitVec 32)) (zeroValue!3324 V!4789) (minValue!3324 V!4789) (_size!1088 (_ BitVec 32)) (_keys!5306 array!6810) (_values!3464 array!6812) (_vacant!1088 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2078)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6810 (_ BitVec 32)) Bool)

(assert (=> b!168340 (= res!80142 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5306 thiss!1248) (mask!8244 thiss!1248))))))

(declare-fun b!168341 () Bool)

(declare-fun res!80147 () Bool)

(assert (=> b!168341 (=> res!80147 e!110675)))

(assert (=> b!168341 (= res!80147 (or (not (= (size!3529 (_values!3464 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8244 thiss!1248)))) (not (= (size!3528 (_keys!5306 thiss!1248)) (size!3529 (_values!3464 thiss!1248)))) (bvslt (mask!8244 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3222 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3222 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!168342 () Bool)

(assert (=> b!168342 (= e!110675 true)))

(declare-fun lt!84218 () Bool)

(declare-datatypes ((List!2179 0))(
  ( (Nil!2176) (Cons!2175 (h!2792 (_ BitVec 64)) (t!6989 List!2179)) )
))
(declare-fun arrayNoDuplicates!0 (array!6810 (_ BitVec 32) List!2179) Bool)

(assert (=> b!168342 (= lt!84218 (arrayNoDuplicates!0 (_keys!5306 thiss!1248) #b00000000000000000000000000000000 Nil!2176))))

(declare-fun b!168343 () Bool)

(declare-fun e!110671 () Bool)

(declare-fun tp_is_empty!3857 () Bool)

(assert (=> b!168343 (= e!110671 tp_is_empty!3857)))

(declare-fun b!168344 () Bool)

(declare-fun e!110676 () Bool)

(declare-fun e!110677 () Bool)

(assert (=> b!168344 (= e!110676 e!110677)))

(declare-fun res!80144 () Bool)

(assert (=> b!168344 (=> (not res!80144) (not e!110677))))

(declare-datatypes ((SeekEntryResult!509 0))(
  ( (MissingZero!509 (index!4204 (_ BitVec 32))) (Found!509 (index!4205 (_ BitVec 32))) (Intermediate!509 (undefined!1321 Bool) (index!4206 (_ BitVec 32)) (x!18617 (_ BitVec 32))) (Undefined!509) (MissingVacant!509 (index!4207 (_ BitVec 32))) )
))
(declare-fun lt!84221 () SeekEntryResult!509)

(assert (=> b!168344 (= res!80144 (and (not (is-Undefined!509 lt!84221)) (not (is-MissingVacant!509 lt!84221)) (not (is-MissingZero!509 lt!84221)) (is-Found!509 lt!84221)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6810 (_ BitVec 32)) SeekEntryResult!509)

(assert (=> b!168344 (= lt!84221 (seekEntryOrOpen!0 key!828 (_keys!5306 thiss!1248) (mask!8244 thiss!1248)))))

(declare-fun b!168345 () Bool)

(declare-fun res!80145 () Bool)

(assert (=> b!168345 (=> (not res!80145) (not e!110676))))

(assert (=> b!168345 (= res!80145 (not (= key!828 (bvneg key!828))))))

(declare-fun b!168346 () Bool)

(declare-datatypes ((Unit!5177 0))(
  ( (Unit!5178) )
))
(declare-fun e!110679 () Unit!5177)

(declare-fun Unit!5179 () Unit!5177)

(assert (=> b!168346 (= e!110679 Unit!5179)))

(declare-fun lt!84219 () Unit!5177)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!121 (array!6810 array!6812 (_ BitVec 32) (_ BitVec 32) V!4789 V!4789 (_ BitVec 64) Int) Unit!5177)

(assert (=> b!168346 (= lt!84219 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!121 (_keys!5306 thiss!1248) (_values!3464 thiss!1248) (mask!8244 thiss!1248) (extraKeys!3222 thiss!1248) (zeroValue!3324 thiss!1248) (minValue!3324 thiss!1248) key!828 (defaultEntry!3481 thiss!1248)))))

(assert (=> b!168346 false))

(declare-fun res!80143 () Bool)

(assert (=> start!16762 (=> (not res!80143) (not e!110676))))

(declare-fun valid!892 (LongMapFixedSize!2078) Bool)

(assert (=> start!16762 (= res!80143 (valid!892 thiss!1248))))

(assert (=> start!16762 e!110676))

(declare-fun e!110672 () Bool)

(assert (=> start!16762 e!110672))

(assert (=> start!16762 true))

(assert (=> start!16762 tp_is_empty!3857))

(declare-fun e!110674 () Bool)

(declare-fun array_inv!2075 (array!6810) Bool)

(declare-fun array_inv!2076 (array!6812) Bool)

(assert (=> b!168347 (= e!110672 (and tp!14765 tp_is_empty!3857 (array_inv!2075 (_keys!5306 thiss!1248)) (array_inv!2076 (_values!3464 thiss!1248)) e!110674))))

(declare-fun b!168348 () Bool)

(declare-fun e!110680 () Bool)

(assert (=> b!168348 (= e!110680 tp_is_empty!3857)))

(declare-fun b!168349 () Bool)

(declare-fun e!110678 () Bool)

(assert (=> b!168349 (= e!110678 (= (select (arr!3240 (_keys!5306 thiss!1248)) (index!4205 lt!84221)) key!828))))

(declare-fun b!168350 () Bool)

(assert (=> b!168350 (= e!110674 (and e!110680 mapRes!6504))))

(declare-fun condMapEmpty!6504 () Bool)

(declare-fun mapDefault!6504 () ValueCell!1585)

