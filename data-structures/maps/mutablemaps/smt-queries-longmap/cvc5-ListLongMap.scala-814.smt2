; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19926 () Bool)

(assert start!19926)

(declare-fun b!195391 () Bool)

(declare-fun b_free!4723 () Bool)

(declare-fun b_next!4723 () Bool)

(assert (=> b!195391 (= b_free!4723 (not b_next!4723))))

(declare-fun tp!17044 () Bool)

(declare-fun b_and!11487 () Bool)

(assert (=> b!195391 (= tp!17044 b_and!11487)))

(declare-fun mapIsEmpty!7780 () Bool)

(declare-fun mapRes!7780 () Bool)

(assert (=> mapIsEmpty!7780 mapRes!7780))

(declare-fun b!195388 () Bool)

(declare-fun res!92260 () Bool)

(declare-fun e!128516 () Bool)

(assert (=> b!195388 (=> (not res!92260) (not e!128516))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!195388 (= res!92260 (not (= key!828 (bvneg key!828))))))

(declare-fun b!195389 () Bool)

(declare-datatypes ((SeekEntryResult!705 0))(
  ( (MissingZero!705 (index!4990 (_ BitVec 32))) (Found!705 (index!4991 (_ BitVec 32))) (Intermediate!705 (undefined!1517 Bool) (index!4992 (_ BitVec 32)) (x!20744 (_ BitVec 32))) (Undefined!705) (MissingVacant!705 (index!4993 (_ BitVec 32))) )
))
(declare-fun lt!97473 () SeekEntryResult!705)

(assert (=> b!195389 (= e!128516 (and (not (is-Undefined!705 lt!97473)) (not (is-MissingVacant!705 lt!97473)) (not (is-MissingZero!705 lt!97473)) (not (is-Found!705 lt!97473))))))

(declare-datatypes ((V!5641 0))(
  ( (V!5642 (val!2292 Int)) )
))
(declare-datatypes ((ValueCell!1904 0))(
  ( (ValueCellFull!1904 (v!4256 V!5641)) (EmptyCell!1904) )
))
(declare-datatypes ((array!8242 0))(
  ( (array!8243 (arr!3878 (Array (_ BitVec 32) (_ BitVec 64))) (size!4203 (_ BitVec 32))) )
))
(declare-datatypes ((array!8244 0))(
  ( (array!8245 (arr!3879 (Array (_ BitVec 32) ValueCell!1904)) (size!4204 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2716 0))(
  ( (LongMapFixedSize!2717 (defaultEntry!3972 Int) (mask!9245 (_ BitVec 32)) (extraKeys!3709 (_ BitVec 32)) (zeroValue!3813 V!5641) (minValue!3813 V!5641) (_size!1407 (_ BitVec 32)) (_keys!5970 array!8242) (_values!3955 array!8244) (_vacant!1407 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2716)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8242 (_ BitVec 32)) SeekEntryResult!705)

(assert (=> b!195389 (= lt!97473 (seekEntryOrOpen!0 key!828 (_keys!5970 thiss!1248) (mask!9245 thiss!1248)))))

(declare-fun res!92261 () Bool)

(assert (=> start!19926 (=> (not res!92261) (not e!128516))))

(declare-fun valid!1106 (LongMapFixedSize!2716) Bool)

(assert (=> start!19926 (= res!92261 (valid!1106 thiss!1248))))

(assert (=> start!19926 e!128516))

(declare-fun e!128511 () Bool)

(assert (=> start!19926 e!128511))

(assert (=> start!19926 true))

(declare-fun b!195390 () Bool)

(declare-fun e!128514 () Bool)

(declare-fun tp_is_empty!4495 () Bool)

(assert (=> b!195390 (= e!128514 tp_is_empty!4495)))

(declare-fun mapNonEmpty!7780 () Bool)

(declare-fun tp!17043 () Bool)

(assert (=> mapNonEmpty!7780 (= mapRes!7780 (and tp!17043 e!128514))))

(declare-fun mapKey!7780 () (_ BitVec 32))

(declare-fun mapRest!7780 () (Array (_ BitVec 32) ValueCell!1904))

(declare-fun mapValue!7780 () ValueCell!1904)

(assert (=> mapNonEmpty!7780 (= (arr!3879 (_values!3955 thiss!1248)) (store mapRest!7780 mapKey!7780 mapValue!7780))))

(declare-fun e!128512 () Bool)

(declare-fun array_inv!2507 (array!8242) Bool)

(declare-fun array_inv!2508 (array!8244) Bool)

(assert (=> b!195391 (= e!128511 (and tp!17044 tp_is_empty!4495 (array_inv!2507 (_keys!5970 thiss!1248)) (array_inv!2508 (_values!3955 thiss!1248)) e!128512))))

(declare-fun b!195392 () Bool)

(declare-fun e!128513 () Bool)

(assert (=> b!195392 (= e!128512 (and e!128513 mapRes!7780))))

(declare-fun condMapEmpty!7780 () Bool)

(declare-fun mapDefault!7780 () ValueCell!1904)

