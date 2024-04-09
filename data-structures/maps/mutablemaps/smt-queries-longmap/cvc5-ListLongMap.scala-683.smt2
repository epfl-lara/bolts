; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16614 () Bool)

(assert start!16614)

(declare-fun b!165558 () Bool)

(declare-fun b_free!3907 () Bool)

(declare-fun b_next!3907 () Bool)

(assert (=> b!165558 (= b_free!3907 (not b_next!3907))))

(declare-fun tp!14322 () Bool)

(declare-fun b_and!10339 () Bool)

(assert (=> b!165558 (= tp!14322 b_and!10339)))

(declare-fun e!108607 () Bool)

(declare-fun tp_is_empty!3709 () Bool)

(declare-fun e!108609 () Bool)

(declare-datatypes ((V!4593 0))(
  ( (V!4594 (val!1899 Int)) )
))
(declare-datatypes ((ValueCell!1511 0))(
  ( (ValueCellFull!1511 (v!3760 V!4593)) (EmptyCell!1511) )
))
(declare-datatypes ((array!6514 0))(
  ( (array!6515 (arr!3092 (Array (_ BitVec 32) (_ BitVec 64))) (size!3380 (_ BitVec 32))) )
))
(declare-datatypes ((array!6516 0))(
  ( (array!6517 (arr!3093 (Array (_ BitVec 32) ValueCell!1511)) (size!3381 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1930 0))(
  ( (LongMapFixedSize!1931 (defaultEntry!3407 Int) (mask!8122 (_ BitVec 32)) (extraKeys!3148 (_ BitVec 32)) (zeroValue!3250 V!4593) (minValue!3250 V!4593) (_size!1014 (_ BitVec 32)) (_keys!5232 array!6514) (_values!3390 array!6516) (_vacant!1014 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1930)

(declare-fun array_inv!1977 (array!6514) Bool)

(declare-fun array_inv!1978 (array!6516) Bool)

(assert (=> b!165558 (= e!108607 (and tp!14322 tp_is_empty!3709 (array_inv!1977 (_keys!5232 thiss!1248)) (array_inv!1978 (_values!3390 thiss!1248)) e!108609))))

(declare-fun b!165559 () Bool)

(declare-fun e!108611 () Bool)

(declare-fun e!108608 () Bool)

(assert (=> b!165559 (= e!108611 e!108608)))

(declare-fun res!78592 () Bool)

(assert (=> b!165559 (=> (not res!78592) (not e!108608))))

(declare-datatypes ((SeekEntryResult!449 0))(
  ( (MissingZero!449 (index!3964 (_ BitVec 32))) (Found!449 (index!3965 (_ BitVec 32))) (Intermediate!449 (undefined!1261 Bool) (index!3966 (_ BitVec 32)) (x!18365 (_ BitVec 32))) (Undefined!449) (MissingVacant!449 (index!3967 (_ BitVec 32))) )
))
(declare-fun lt!83123 () SeekEntryResult!449)

(assert (=> b!165559 (= res!78592 (and (not (is-Undefined!449 lt!83123)) (not (is-MissingVacant!449 lt!83123)) (not (is-MissingZero!449 lt!83123)) (is-Found!449 lt!83123)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6514 (_ BitVec 32)) SeekEntryResult!449)

(assert (=> b!165559 (= lt!83123 (seekEntryOrOpen!0 key!828 (_keys!5232 thiss!1248) (mask!8122 thiss!1248)))))

(declare-fun res!78593 () Bool)

(assert (=> start!16614 (=> (not res!78593) (not e!108611))))

(declare-fun valid!845 (LongMapFixedSize!1930) Bool)

(assert (=> start!16614 (= res!78593 (valid!845 thiss!1248))))

(assert (=> start!16614 e!108611))

(assert (=> start!16614 e!108607))

(assert (=> start!16614 true))

(declare-fun mapIsEmpty!6282 () Bool)

(declare-fun mapRes!6282 () Bool)

(assert (=> mapIsEmpty!6282 mapRes!6282))

(declare-fun b!165560 () Bool)

(declare-fun e!108613 () Bool)

(assert (=> b!165560 (= e!108609 (and e!108613 mapRes!6282))))

(declare-fun condMapEmpty!6282 () Bool)

(declare-fun mapDefault!6282 () ValueCell!1511)

