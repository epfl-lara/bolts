; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18686 () Bool)

(assert start!18686)

(declare-fun b!184669 () Bool)

(declare-fun b_free!4553 () Bool)

(declare-fun b_next!4553 () Bool)

(assert (=> b!184669 (= b_free!4553 (not b_next!4553))))

(declare-fun tp!16445 () Bool)

(declare-fun b_and!11161 () Bool)

(assert (=> b!184669 (= tp!16445 b_and!11161)))

(declare-fun b!184668 () Bool)

(declare-fun res!87380 () Bool)

(declare-fun e!121565 () Bool)

(assert (=> b!184668 (=> (not res!87380) (not e!121565))))

(declare-datatypes ((V!5413 0))(
  ( (V!5414 (val!2207 Int)) )
))
(declare-datatypes ((ValueCell!1819 0))(
  ( (ValueCellFull!1819 (v!4110 V!5413)) (EmptyCell!1819) )
))
(declare-datatypes ((array!7850 0))(
  ( (array!7851 (arr!3708 (Array (_ BitVec 32) (_ BitVec 64))) (size!4023 (_ BitVec 32))) )
))
(declare-datatypes ((array!7852 0))(
  ( (array!7853 (arr!3709 (Array (_ BitVec 32) ValueCell!1819)) (size!4024 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2546 0))(
  ( (LongMapFixedSize!2547 (defaultEntry!3770 Int) (mask!8860 (_ BitVec 32)) (extraKeys!3507 (_ BitVec 32)) (zeroValue!3611 V!5413) (minValue!3611 V!5413) (_size!1322 (_ BitVec 32)) (_keys!5701 array!7850) (_values!3753 array!7852) (_vacant!1322 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2546)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3432 0))(
  ( (tuple2!3433 (_1!1726 (_ BitVec 64)) (_2!1726 V!5413)) )
))
(declare-datatypes ((List!2369 0))(
  ( (Nil!2366) (Cons!2365 (h!2997 tuple2!3432) (t!7253 List!2369)) )
))
(declare-datatypes ((ListLongMap!2363 0))(
  ( (ListLongMap!2364 (toList!1197 List!2369)) )
))
(declare-fun contains!1283 (ListLongMap!2363 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!840 (array!7850 array!7852 (_ BitVec 32) (_ BitVec 32) V!5413 V!5413 (_ BitVec 32) Int) ListLongMap!2363)

(assert (=> b!184668 (= res!87380 (not (contains!1283 (getCurrentListMap!840 (_keys!5701 thiss!1248) (_values!3753 thiss!1248) (mask!8860 thiss!1248) (extraKeys!3507 thiss!1248) (zeroValue!3611 thiss!1248) (minValue!3611 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3770 thiss!1248)) key!828)))))

(declare-fun mapIsEmpty!7436 () Bool)

(declare-fun mapRes!7436 () Bool)

(assert (=> mapIsEmpty!7436 mapRes!7436))

(declare-fun mapNonEmpty!7436 () Bool)

(declare-fun tp!16444 () Bool)

(declare-fun e!121561 () Bool)

(assert (=> mapNonEmpty!7436 (= mapRes!7436 (and tp!16444 e!121561))))

(declare-fun mapRest!7436 () (Array (_ BitVec 32) ValueCell!1819))

(declare-fun mapValue!7436 () ValueCell!1819)

(declare-fun mapKey!7436 () (_ BitVec 32))

(assert (=> mapNonEmpty!7436 (= (arr!3709 (_values!3753 thiss!1248)) (store mapRest!7436 mapKey!7436 mapValue!7436))))

(declare-fun e!121566 () Bool)

(declare-fun e!121564 () Bool)

(declare-fun tp_is_empty!4325 () Bool)

(declare-fun array_inv!2389 (array!7850) Bool)

(declare-fun array_inv!2390 (array!7852) Bool)

(assert (=> b!184669 (= e!121566 (and tp!16445 tp_is_empty!4325 (array_inv!2389 (_keys!5701 thiss!1248)) (array_inv!2390 (_values!3753 thiss!1248)) e!121564))))

(declare-fun res!87381 () Bool)

(declare-fun e!121562 () Bool)

(assert (=> start!18686 (=> (not res!87381) (not e!121562))))

(declare-fun valid!1043 (LongMapFixedSize!2546) Bool)

(assert (=> start!18686 (= res!87381 (valid!1043 thiss!1248))))

(assert (=> start!18686 e!121562))

(assert (=> start!18686 e!121566))

(assert (=> start!18686 true))

(declare-fun b!184670 () Bool)

(declare-fun e!121563 () Bool)

(assert (=> b!184670 (= e!121564 (and e!121563 mapRes!7436))))

(declare-fun condMapEmpty!7436 () Bool)

(declare-fun mapDefault!7436 () ValueCell!1819)

