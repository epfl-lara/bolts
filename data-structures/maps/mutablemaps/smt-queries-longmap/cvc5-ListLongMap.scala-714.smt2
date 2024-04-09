; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16800 () Bool)

(assert start!16800)

(declare-fun b!168994 () Bool)

(declare-fun b_free!4093 () Bool)

(declare-fun b_next!4093 () Bool)

(assert (=> b!168994 (= b_free!4093 (not b_next!4093))))

(declare-fun tp!14879 () Bool)

(declare-fun b_and!10525 () Bool)

(assert (=> b!168994 (= tp!14879 b_and!10525)))

(declare-fun b!168985 () Bool)

(declare-datatypes ((Unit!5224 0))(
  ( (Unit!5225) )
))
(declare-fun e!111229 () Unit!5224)

(declare-fun Unit!5226 () Unit!5224)

(assert (=> b!168985 (= e!111229 Unit!5226)))

(declare-fun lt!84796 () Unit!5224)

(declare-datatypes ((V!4841 0))(
  ( (V!4842 (val!1992 Int)) )
))
(declare-datatypes ((ValueCell!1604 0))(
  ( (ValueCellFull!1604 (v!3853 V!4841)) (EmptyCell!1604) )
))
(declare-datatypes ((array!6886 0))(
  ( (array!6887 (arr!3278 (Array (_ BitVec 32) (_ BitVec 64))) (size!3566 (_ BitVec 32))) )
))
(declare-datatypes ((array!6888 0))(
  ( (array!6889 (arr!3279 (Array (_ BitVec 32) ValueCell!1604)) (size!3567 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2116 0))(
  ( (LongMapFixedSize!2117 (defaultEntry!3500 Int) (mask!8277 (_ BitVec 32)) (extraKeys!3241 (_ BitVec 32)) (zeroValue!3343 V!4841) (minValue!3343 V!4841) (_size!1107 (_ BitVec 32)) (_keys!5325 array!6886) (_values!3483 array!6888) (_vacant!1107 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2116)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!134 (array!6886 array!6888 (_ BitVec 32) (_ BitVec 32) V!4841 V!4841 (_ BitVec 64) Int) Unit!5224)

(assert (=> b!168985 (= lt!84796 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!134 (_keys!5325 thiss!1248) (_values!3483 thiss!1248) (mask!8277 thiss!1248) (extraKeys!3241 thiss!1248) (zeroValue!3343 thiss!1248) (minValue!3343 thiss!1248) key!828 (defaultEntry!3500 thiss!1248)))))

(assert (=> b!168985 false))

(declare-fun b!168986 () Bool)

(declare-fun e!111227 () Bool)

(declare-fun tp_is_empty!3895 () Bool)

(assert (=> b!168986 (= e!111227 tp_is_empty!3895)))

(declare-fun b!168987 () Bool)

(declare-fun e!111222 () Bool)

(declare-fun e!111223 () Bool)

(assert (=> b!168987 (= e!111222 e!111223)))

(declare-fun res!80446 () Bool)

(assert (=> b!168987 (=> (not res!80446) (not e!111223))))

(declare-datatypes ((SeekEntryResult!526 0))(
  ( (MissingZero!526 (index!4272 (_ BitVec 32))) (Found!526 (index!4273 (_ BitVec 32))) (Intermediate!526 (undefined!1338 Bool) (index!4274 (_ BitVec 32)) (x!18690 (_ BitVec 32))) (Undefined!526) (MissingVacant!526 (index!4275 (_ BitVec 32))) )
))
(declare-fun lt!84792 () SeekEntryResult!526)

(assert (=> b!168987 (= res!80446 (and (not (is-Undefined!526 lt!84792)) (not (is-MissingVacant!526 lt!84792)) (not (is-MissingZero!526 lt!84792)) (is-Found!526 lt!84792)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6886 (_ BitVec 32)) SeekEntryResult!526)

(assert (=> b!168987 (= lt!84792 (seekEntryOrOpen!0 key!828 (_keys!5325 thiss!1248) (mask!8277 thiss!1248)))))

(declare-fun b!168988 () Bool)

(declare-fun e!111224 () Bool)

(declare-fun e!111226 () Bool)

(declare-fun mapRes!6561 () Bool)

(assert (=> b!168988 (= e!111224 (and e!111226 mapRes!6561))))

(declare-fun condMapEmpty!6561 () Bool)

(declare-fun mapDefault!6561 () ValueCell!1604)

