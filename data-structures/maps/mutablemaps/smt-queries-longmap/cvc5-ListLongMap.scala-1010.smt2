; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21672 () Bool)

(assert start!21672)

(declare-fun b!217322 () Bool)

(declare-fun b_free!5809 () Bool)

(declare-fun b_next!5809 () Bool)

(assert (=> b!217322 (= b_free!5809 (not b_next!5809))))

(declare-fun tp!20561 () Bool)

(declare-fun b_and!12717 () Bool)

(assert (=> b!217322 (= tp!20561 b_and!12717)))

(declare-fun b!217316 () Bool)

(declare-fun e!141384 () Bool)

(assert (=> b!217316 (= e!141384 false)))

(declare-fun lt!111355 () Bool)

(declare-datatypes ((V!7209 0))(
  ( (V!7210 (val!2880 Int)) )
))
(declare-datatypes ((ValueCell!2492 0))(
  ( (ValueCellFull!2492 (v!4894 V!7209)) (EmptyCell!2492) )
))
(declare-datatypes ((array!10580 0))(
  ( (array!10581 (arr!5011 (Array (_ BitVec 32) ValueCell!2492)) (size!5343 (_ BitVec 32))) )
))
(declare-datatypes ((array!10582 0))(
  ( (array!10583 (arr!5012 (Array (_ BitVec 32) (_ BitVec 64))) (size!5344 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2884 0))(
  ( (LongMapFixedSize!2885 (defaultEntry!4092 Int) (mask!9847 (_ BitVec 32)) (extraKeys!3829 (_ BitVec 32)) (zeroValue!3933 V!7209) (minValue!3933 V!7209) (_size!1491 (_ BitVec 32)) (_keys!6141 array!10582) (_values!4075 array!10580) (_vacant!1491 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2884)

(declare-datatypes ((List!3209 0))(
  ( (Nil!3206) (Cons!3205 (h!3852 (_ BitVec 64)) (t!8172 List!3209)) )
))
(declare-fun arrayNoDuplicates!0 (array!10582 (_ BitVec 32) List!3209) Bool)

(assert (=> b!217316 (= lt!111355 (arrayNoDuplicates!0 (_keys!6141 thiss!1504) #b00000000000000000000000000000000 Nil!3206))))

(declare-fun mapNonEmpty!9669 () Bool)

(declare-fun mapRes!9669 () Bool)

(declare-fun tp!20562 () Bool)

(declare-fun e!141389 () Bool)

(assert (=> mapNonEmpty!9669 (= mapRes!9669 (and tp!20562 e!141389))))

(declare-fun mapRest!9669 () (Array (_ BitVec 32) ValueCell!2492))

(declare-fun mapValue!9669 () ValueCell!2492)

(declare-fun mapKey!9669 () (_ BitVec 32))

(assert (=> mapNonEmpty!9669 (= (arr!5011 (_values!4075 thiss!1504)) (store mapRest!9669 mapKey!9669 mapValue!9669))))

(declare-fun res!106413 () Bool)

(declare-fun e!141387 () Bool)

(assert (=> start!21672 (=> (not res!106413) (not e!141387))))

(declare-fun valid!1164 (LongMapFixedSize!2884) Bool)

(assert (=> start!21672 (= res!106413 (valid!1164 thiss!1504))))

(assert (=> start!21672 e!141387))

(declare-fun e!141386 () Bool)

(assert (=> start!21672 e!141386))

(assert (=> start!21672 true))

(declare-fun b!217317 () Bool)

(declare-fun res!106417 () Bool)

(assert (=> b!217317 (=> (not res!106417) (not e!141384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10582 (_ BitVec 32)) Bool)

(assert (=> b!217317 (= res!106417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6141 thiss!1504) (mask!9847 thiss!1504)))))

(declare-fun b!217318 () Bool)

(declare-fun e!141388 () Bool)

(declare-fun e!141390 () Bool)

(assert (=> b!217318 (= e!141388 (and e!141390 mapRes!9669))))

(declare-fun condMapEmpty!9669 () Bool)

(declare-fun mapDefault!9669 () ValueCell!2492)

