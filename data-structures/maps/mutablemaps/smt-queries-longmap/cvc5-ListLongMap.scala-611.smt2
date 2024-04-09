; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15928 () Bool)

(assert start!15928)

(declare-fun b!158229 () Bool)

(declare-fun b_free!3475 () Bool)

(declare-fun b_next!3475 () Bool)

(assert (=> b!158229 (= b_free!3475 (not b_next!3475))))

(declare-fun tp!12975 () Bool)

(declare-fun b_and!9907 () Bool)

(assert (=> b!158229 (= tp!12975 b_and!9907)))

(declare-fun b!158223 () Bool)

(declare-fun res!74752 () Bool)

(declare-fun e!103633 () Bool)

(assert (=> b!158223 (=> (not res!74752) (not e!103633))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4017 0))(
  ( (V!4018 (val!1683 Int)) )
))
(declare-datatypes ((ValueCell!1295 0))(
  ( (ValueCellFull!1295 (v!3544 V!4017)) (EmptyCell!1295) )
))
(declare-datatypes ((array!5620 0))(
  ( (array!5621 (arr!2660 (Array (_ BitVec 32) (_ BitVec 64))) (size!2942 (_ BitVec 32))) )
))
(declare-datatypes ((array!5622 0))(
  ( (array!5623 (arr!2661 (Array (_ BitVec 32) ValueCell!1295)) (size!2943 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1498 0))(
  ( (LongMapFixedSize!1499 (defaultEntry!3191 Int) (mask!7702 (_ BitVec 32)) (extraKeys!2932 (_ BitVec 32)) (zeroValue!3034 V!4017) (minValue!3034 V!4017) (_size!798 (_ BitVec 32)) (_keys!4977 array!5620) (_values!3174 array!5622) (_vacant!798 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1498)

(declare-datatypes ((SeekEntryResult!306 0))(
  ( (MissingZero!306 (index!3392 (_ BitVec 32))) (Found!306 (index!3393 (_ BitVec 32))) (Intermediate!306 (undefined!1118 Bool) (index!3394 (_ BitVec 32)) (x!17472 (_ BitVec 32))) (Undefined!306) (MissingVacant!306 (index!3395 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5620 (_ BitVec 32)) SeekEntryResult!306)

(assert (=> b!158223 (= res!74752 (is-Undefined!306 (seekEntryOrOpen!0 key!828 (_keys!4977 thiss!1248) (mask!7702 thiss!1248))))))

(declare-fun b!158224 () Bool)

(assert (=> b!158224 (= e!103633 (and (= (size!2943 (_values!3174 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7702 thiss!1248))) (= (size!2942 (_keys!4977 thiss!1248)) (size!2943 (_values!3174 thiss!1248))) (bvslt (mask!7702 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!158225 () Bool)

(declare-fun res!74753 () Bool)

(assert (=> b!158225 (=> (not res!74753) (not e!103633))))

(assert (=> b!158225 (= res!74753 (not (= key!828 (bvneg key!828))))))

(declare-fun b!158226 () Bool)

(declare-fun e!103635 () Bool)

(declare-fun tp_is_empty!3277 () Bool)

(assert (=> b!158226 (= e!103635 tp_is_empty!3277)))

(declare-fun b!158227 () Bool)

(declare-fun e!103634 () Bool)

(assert (=> b!158227 (= e!103634 tp_is_empty!3277)))

(declare-fun res!74751 () Bool)

(assert (=> start!15928 (=> (not res!74751) (not e!103633))))

(declare-fun valid!704 (LongMapFixedSize!1498) Bool)

(assert (=> start!15928 (= res!74751 (valid!704 thiss!1248))))

(assert (=> start!15928 e!103633))

(declare-fun e!103632 () Bool)

(assert (=> start!15928 e!103632))

(assert (=> start!15928 true))

(declare-fun mapNonEmpty!5583 () Bool)

(declare-fun mapRes!5583 () Bool)

(declare-fun tp!12974 () Bool)

(assert (=> mapNonEmpty!5583 (= mapRes!5583 (and tp!12974 e!103634))))

(declare-fun mapKey!5583 () (_ BitVec 32))

(declare-fun mapValue!5583 () ValueCell!1295)

(declare-fun mapRest!5583 () (Array (_ BitVec 32) ValueCell!1295))

(assert (=> mapNonEmpty!5583 (= (arr!2661 (_values!3174 thiss!1248)) (store mapRest!5583 mapKey!5583 mapValue!5583))))

(declare-fun b!158228 () Bool)

(declare-fun res!74754 () Bool)

(assert (=> b!158228 (=> (not res!74754) (not e!103633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!158228 (= res!74754 (validMask!0 (mask!7702 thiss!1248)))))

(declare-fun mapIsEmpty!5583 () Bool)

(assert (=> mapIsEmpty!5583 mapRes!5583))

(declare-fun e!103631 () Bool)

(declare-fun array_inv!1681 (array!5620) Bool)

(declare-fun array_inv!1682 (array!5622) Bool)

(assert (=> b!158229 (= e!103632 (and tp!12975 tp_is_empty!3277 (array_inv!1681 (_keys!4977 thiss!1248)) (array_inv!1682 (_values!3174 thiss!1248)) e!103631))))

(declare-fun b!158230 () Bool)

(assert (=> b!158230 (= e!103631 (and e!103635 mapRes!5583))))

(declare-fun condMapEmpty!5583 () Bool)

(declare-fun mapDefault!5583 () ValueCell!1295)

