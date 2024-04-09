; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16758 () Bool)

(assert start!16758)

(declare-fun b!168263 () Bool)

(declare-fun b_free!4051 () Bool)

(declare-fun b_next!4051 () Bool)

(assert (=> b!168263 (= b_free!4051 (not b_next!4051))))

(declare-fun tp!14753 () Bool)

(declare-fun b_and!10483 () Bool)

(assert (=> b!168263 (= tp!14753 b_and!10483)))

(declare-fun b!168262 () Bool)

(declare-fun e!110611 () Bool)

(assert (=> b!168262 (= e!110611 true)))

(declare-fun lt!84176 () Bool)

(declare-datatypes ((V!4785 0))(
  ( (V!4786 (val!1971 Int)) )
))
(declare-datatypes ((ValueCell!1583 0))(
  ( (ValueCellFull!1583 (v!3832 V!4785)) (EmptyCell!1583) )
))
(declare-datatypes ((array!6802 0))(
  ( (array!6803 (arr!3236 (Array (_ BitVec 32) (_ BitVec 64))) (size!3524 (_ BitVec 32))) )
))
(declare-datatypes ((array!6804 0))(
  ( (array!6805 (arr!3237 (Array (_ BitVec 32) ValueCell!1583)) (size!3525 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2074 0))(
  ( (LongMapFixedSize!2075 (defaultEntry!3479 Int) (mask!8242 (_ BitVec 32)) (extraKeys!3220 (_ BitVec 32)) (zeroValue!3322 V!4785) (minValue!3322 V!4785) (_size!1086 (_ BitVec 32)) (_keys!5304 array!6802) (_values!3462 array!6804) (_vacant!1086 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2074)

(declare-datatypes ((List!2176 0))(
  ( (Nil!2173) (Cons!2172 (h!2789 (_ BitVec 64)) (t!6986 List!2176)) )
))
(declare-fun arrayNoDuplicates!0 (array!6802 (_ BitVec 32) List!2176) Bool)

(assert (=> b!168262 (= lt!84176 (arrayNoDuplicates!0 (_keys!5304 thiss!1248) #b00000000000000000000000000000000 Nil!2173))))

(declare-fun tp_is_empty!3853 () Bool)

(declare-fun e!110614 () Bool)

(declare-fun e!110616 () Bool)

(declare-fun array_inv!2071 (array!6802) Bool)

(declare-fun array_inv!2072 (array!6804) Bool)

(assert (=> b!168263 (= e!110616 (and tp!14753 tp_is_empty!3853 (array_inv!2071 (_keys!5304 thiss!1248)) (array_inv!2072 (_values!3462 thiss!1248)) e!110614))))

(declare-fun b!168264 () Bool)

(declare-fun e!110620 () Bool)

(declare-fun e!110618 () Bool)

(assert (=> b!168264 (= e!110620 e!110618)))

(declare-fun res!80105 () Bool)

(assert (=> b!168264 (=> (not res!80105) (not e!110618))))

(declare-datatypes ((SeekEntryResult!507 0))(
  ( (MissingZero!507 (index!4196 (_ BitVec 32))) (Found!507 (index!4197 (_ BitVec 32))) (Intermediate!507 (undefined!1319 Bool) (index!4198 (_ BitVec 32)) (x!18615 (_ BitVec 32))) (Undefined!507) (MissingVacant!507 (index!4199 (_ BitVec 32))) )
))
(declare-fun lt!84182 () SeekEntryResult!507)

(assert (=> b!168264 (= res!80105 (and (not (is-Undefined!507 lt!84182)) (not (is-MissingVacant!507 lt!84182)) (not (is-MissingZero!507 lt!84182)) (is-Found!507 lt!84182)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6802 (_ BitVec 32)) SeekEntryResult!507)

(assert (=> b!168264 (= lt!84182 (seekEntryOrOpen!0 key!828 (_keys!5304 thiss!1248) (mask!8242 thiss!1248)))))

(declare-fun b!168265 () Bool)

(declare-datatypes ((Unit!5172 0))(
  ( (Unit!5173) )
))
(declare-fun e!110617 () Unit!5172)

(declare-fun lt!84178 () Unit!5172)

(assert (=> b!168265 (= e!110617 lt!84178)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!121 (array!6802 array!6804 (_ BitVec 32) (_ BitVec 32) V!4785 V!4785 (_ BitVec 64) Int) Unit!5172)

(assert (=> b!168265 (= lt!84178 (lemmaInListMapThenSeekEntryOrOpenFindsIt!121 (_keys!5304 thiss!1248) (_values!3462 thiss!1248) (mask!8242 thiss!1248) (extraKeys!3220 thiss!1248) (zeroValue!3322 thiss!1248) (minValue!3322 thiss!1248) key!828 (defaultEntry!3479 thiss!1248)))))

(declare-fun res!80104 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168265 (= res!80104 (inRange!0 (index!4197 lt!84182) (mask!8242 thiss!1248)))))

(declare-fun e!110612 () Bool)

(assert (=> b!168265 (=> (not res!80104) (not e!110612))))

(assert (=> b!168265 e!110612))

(declare-fun b!168266 () Bool)

(declare-fun e!110613 () Bool)

(declare-fun mapRes!6498 () Bool)

(assert (=> b!168266 (= e!110614 (and e!110613 mapRes!6498))))

(declare-fun condMapEmpty!6498 () Bool)

(declare-fun mapDefault!6498 () ValueCell!1583)

