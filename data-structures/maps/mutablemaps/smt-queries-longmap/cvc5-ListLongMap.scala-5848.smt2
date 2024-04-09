; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75590 () Bool)

(assert start!75590)

(declare-fun b!888666 () Bool)

(declare-fun b_free!15589 () Bool)

(declare-fun b_next!15589 () Bool)

(assert (=> b!888666 (= b_free!15589 (not b_next!15589))))

(declare-fun tp!54723 () Bool)

(declare-fun b_and!25847 () Bool)

(assert (=> b!888666 (= tp!54723 b_and!25847)))

(declare-fun mapNonEmpty!28416 () Bool)

(declare-fun mapRes!28416 () Bool)

(declare-fun tp!54722 () Bool)

(declare-fun e!495276 () Bool)

(assert (=> mapNonEmpty!28416 (= mapRes!28416 (and tp!54722 e!495276))))

(declare-datatypes ((V!28855 0))(
  ( (V!28856 (val!9009 Int)) )
))
(declare-datatypes ((ValueCell!8477 0))(
  ( (ValueCellFull!8477 (v!11479 V!28855)) (EmptyCell!8477) )
))
(declare-fun mapRest!28416 () (Array (_ BitVec 32) ValueCell!8477))

(declare-datatypes ((array!51792 0))(
  ( (array!51793 (arr!24902 (Array (_ BitVec 32) (_ BitVec 64))) (size!25345 (_ BitVec 32))) )
))
(declare-datatypes ((array!51794 0))(
  ( (array!51795 (arr!24903 (Array (_ BitVec 32) ValueCell!8477)) (size!25346 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3970 0))(
  ( (LongMapFixedSize!3971 (defaultEntry!5182 Int) (mask!25607 (_ BitVec 32)) (extraKeys!4876 (_ BitVec 32)) (zeroValue!4980 V!28855) (minValue!4980 V!28855) (_size!2040 (_ BitVec 32)) (_keys!9859 array!51792) (_values!5167 array!51794) (_vacant!2040 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3970)

(declare-fun mapValue!28416 () ValueCell!8477)

(declare-fun mapKey!28416 () (_ BitVec 32))

(assert (=> mapNonEmpty!28416 (= (arr!24903 (_values!5167 thiss!1181)) (store mapRest!28416 mapKey!28416 mapValue!28416))))

(declare-fun b!888660 () Bool)

(declare-fun res!602507 () Bool)

(declare-fun e!495277 () Bool)

(assert (=> b!888660 (=> (not res!602507) (not e!495277))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4325 (LongMapFixedSize!3970 (_ BitVec 64)) Bool)

(assert (=> b!888660 (= res!602507 (contains!4325 thiss!1181 key!785))))

(declare-fun b!888661 () Bool)

(declare-fun tp_is_empty!17917 () Bool)

(assert (=> b!888661 (= e!495276 tp_is_empty!17917)))

(declare-fun b!888662 () Bool)

(declare-fun e!495275 () Bool)

(assert (=> b!888662 (= e!495275 tp_is_empty!17917)))

(declare-fun b!888663 () Bool)

(declare-fun e!495272 () Bool)

(assert (=> b!888663 (= e!495272 (and e!495275 mapRes!28416))))

(declare-fun condMapEmpty!28416 () Bool)

(declare-fun mapDefault!28416 () ValueCell!8477)

