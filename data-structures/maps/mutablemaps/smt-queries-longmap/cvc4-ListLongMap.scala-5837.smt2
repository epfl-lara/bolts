; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75420 () Bool)

(assert start!75420)

(declare-fun b!887586 () Bool)

(declare-fun b_free!15527 () Bool)

(declare-fun b_next!15527 () Bool)

(assert (=> b!887586 (= b_free!15527 (not b_next!15527))))

(declare-fun tp!54522 () Bool)

(declare-fun b_and!25781 () Bool)

(assert (=> b!887586 (= tp!54522 b_and!25781)))

(declare-fun mapIsEmpty!28309 () Bool)

(declare-fun mapRes!28309 () Bool)

(assert (=> mapIsEmpty!28309 mapRes!28309))

(declare-fun b!887581 () Bool)

(declare-fun e!494396 () Bool)

(declare-fun tp_is_empty!17855 () Bool)

(assert (=> b!887581 (= e!494396 tp_is_empty!17855)))

(declare-fun mapNonEmpty!28309 () Bool)

(declare-fun tp!54523 () Bool)

(declare-fun e!494395 () Bool)

(assert (=> mapNonEmpty!28309 (= mapRes!28309 (and tp!54523 e!494395))))

(declare-datatypes ((V!28771 0))(
  ( (V!28772 (val!8978 Int)) )
))
(declare-datatypes ((array!51660 0))(
  ( (array!51661 (arr!24840 (Array (_ BitVec 32) (_ BitVec 64))) (size!25281 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8446 0))(
  ( (ValueCellFull!8446 (v!11436 V!28771)) (EmptyCell!8446) )
))
(declare-datatypes ((array!51662 0))(
  ( (array!51663 (arr!24841 (Array (_ BitVec 32) ValueCell!8446)) (size!25282 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3908 0))(
  ( (LongMapFixedSize!3909 (defaultEntry!5145 Int) (mask!25540 (_ BitVec 32)) (extraKeys!4839 (_ BitVec 32)) (zeroValue!4943 V!28771) (minValue!4943 V!28771) (_size!2009 (_ BitVec 32)) (_keys!9818 array!51660) (_values!5130 array!51662) (_vacant!2009 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1062 0))(
  ( (Cell!1063 (v!11437 LongMapFixedSize!3908)) )
))
(declare-datatypes ((LongMap!1062 0))(
  ( (LongMap!1063 (underlying!542 Cell!1062)) )
))
(declare-fun thiss!821 () LongMap!1062)

(declare-fun mapKey!28309 () (_ BitVec 32))

(declare-fun mapRest!28309 () (Array (_ BitVec 32) ValueCell!8446))

(declare-fun mapValue!28309 () ValueCell!8446)

(assert (=> mapNonEmpty!28309 (= (arr!24841 (_values!5130 (v!11437 (underlying!542 thiss!821)))) (store mapRest!28309 mapKey!28309 mapValue!28309))))

(declare-fun b!887582 () Bool)

(assert (=> b!887582 (= e!494395 tp_is_empty!17855)))

(declare-fun b!887583 () Bool)

(declare-fun e!494392 () Bool)

(declare-fun e!494398 () Bool)

(assert (=> b!887583 (= e!494392 e!494398)))

(declare-fun b!887585 () Bool)

(declare-fun e!494391 () Bool)

(declare-fun valid!1514 (LongMapFixedSize!3908) Bool)

(assert (=> b!887585 (= e!494391 (not (valid!1514 (v!11437 (underlying!542 thiss!821)))))))

(declare-fun e!494397 () Bool)

(declare-fun array_inv!19526 (array!51660) Bool)

(declare-fun array_inv!19527 (array!51662) Bool)

(assert (=> b!887586 (= e!494398 (and tp!54522 tp_is_empty!17855 (array_inv!19526 (_keys!9818 (v!11437 (underlying!542 thiss!821)))) (array_inv!19527 (_values!5130 (v!11437 (underlying!542 thiss!821)))) e!494397))))

(declare-fun b!887587 () Bool)

(assert (=> b!887587 (= e!494397 (and e!494396 mapRes!28309))))

(declare-fun condMapEmpty!28309 () Bool)

(declare-fun mapDefault!28309 () ValueCell!8446)

