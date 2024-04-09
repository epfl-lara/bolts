; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75658 () Bool)

(assert start!75658)

(declare-fun b!889090 () Bool)

(declare-fun b_free!15611 () Bool)

(declare-fun b_next!15611 () Bool)

(assert (=> b!889090 (= b_free!15611 (not b_next!15611))))

(declare-fun tp!54799 () Bool)

(declare-fun b_and!25869 () Bool)

(assert (=> b!889090 (= tp!54799 b_and!25869)))

(declare-fun mapIsEmpty!28460 () Bool)

(declare-fun mapRes!28460 () Bool)

(assert (=> mapIsEmpty!28460 mapRes!28460))

(declare-fun b!889089 () Bool)

(declare-fun res!602686 () Bool)

(declare-fun e!495585 () Bool)

(assert (=> b!889089 (=> (not res!602686) (not e!495585))))

(declare-datatypes ((array!51842 0))(
  ( (array!51843 (arr!24924 (Array (_ BitVec 32) (_ BitVec 64))) (size!25369 (_ BitVec 32))) )
))
(declare-datatypes ((V!28883 0))(
  ( (V!28884 (val!9020 Int)) )
))
(declare-datatypes ((ValueCell!8488 0))(
  ( (ValueCellFull!8488 (v!11492 V!28883)) (EmptyCell!8488) )
))
(declare-datatypes ((array!51844 0))(
  ( (array!51845 (arr!24925 (Array (_ BitVec 32) ValueCell!8488)) (size!25370 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3992 0))(
  ( (LongMapFixedSize!3993 (defaultEntry!5193 Int) (mask!25628 (_ BitVec 32)) (extraKeys!4887 (_ BitVec 32)) (zeroValue!4991 V!28883) (minValue!4991 V!28883) (_size!2051 (_ BitVec 32)) (_keys!9872 array!51842) (_values!5178 array!51844) (_vacant!2051 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3992)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889089 (= res!602686 (validMask!0 (mask!25628 thiss!1181)))))

(declare-fun e!495583 () Bool)

(declare-fun tp_is_empty!17939 () Bool)

(declare-fun e!495587 () Bool)

(declare-fun array_inv!19580 (array!51842) Bool)

(declare-fun array_inv!19581 (array!51844) Bool)

(assert (=> b!889090 (= e!495587 (and tp!54799 tp_is_empty!17939 (array_inv!19580 (_keys!9872 thiss!1181)) (array_inv!19581 (_values!5178 thiss!1181)) e!495583))))

(declare-fun b!889091 () Bool)

(declare-fun e!495586 () Bool)

(assert (=> b!889091 (= e!495586 tp_is_empty!17939)))

(declare-fun mapNonEmpty!28460 () Bool)

(declare-fun tp!54800 () Bool)

(declare-fun e!495582 () Bool)

(assert (=> mapNonEmpty!28460 (= mapRes!28460 (and tp!54800 e!495582))))

(declare-fun mapValue!28460 () ValueCell!8488)

(declare-fun mapRest!28460 () (Array (_ BitVec 32) ValueCell!8488))

(declare-fun mapKey!28460 () (_ BitVec 32))

(assert (=> mapNonEmpty!28460 (= (arr!24925 (_values!5178 thiss!1181)) (store mapRest!28460 mapKey!28460 mapValue!28460))))

(declare-fun b!889092 () Bool)

(declare-fun res!602685 () Bool)

(assert (=> b!889092 (=> (not res!602685) (not e!495585))))

(assert (=> b!889092 (= res!602685 (= (size!25369 (_keys!9872 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25628 thiss!1181))))))

(declare-fun b!889094 () Bool)

(assert (=> b!889094 (= e!495582 tp_is_empty!17939)))

(declare-fun b!889095 () Bool)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!889095 (= e!495585 (not (validKeyInArray!0 key!785)))))

(declare-fun b!889096 () Bool)

(assert (=> b!889096 (= e!495583 (and e!495586 mapRes!28460))))

(declare-fun condMapEmpty!28460 () Bool)

(declare-fun mapDefault!28460 () ValueCell!8488)

