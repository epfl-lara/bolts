; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17136 () Bool)

(assert start!17136)

(declare-fun b!172131 () Bool)

(declare-fun b_free!4243 () Bool)

(declare-fun b_next!4243 () Bool)

(assert (=> b!172131 (= b_free!4243 (not b_next!4243))))

(declare-fun tp!15368 () Bool)

(declare-fun b_and!10701 () Bool)

(assert (=> b!172131 (= tp!15368 b_and!10701)))

(declare-fun mapNonEmpty!6824 () Bool)

(declare-fun mapRes!6824 () Bool)

(declare-fun tp!15367 () Bool)

(declare-fun e!113616 () Bool)

(assert (=> mapNonEmpty!6824 (= mapRes!6824 (and tp!15367 e!113616))))

(declare-datatypes ((V!5001 0))(
  ( (V!5002 (val!2052 Int)) )
))
(declare-datatypes ((ValueCell!1664 0))(
  ( (ValueCellFull!1664 (v!3916 V!5001)) (EmptyCell!1664) )
))
(declare-fun mapValue!6824 () ValueCell!1664)

(declare-fun mapKey!6824 () (_ BitVec 32))

(declare-datatypes ((array!7146 0))(
  ( (array!7147 (arr!3398 (Array (_ BitVec 32) (_ BitVec 64))) (size!3693 (_ BitVec 32))) )
))
(declare-datatypes ((array!7148 0))(
  ( (array!7149 (arr!3399 (Array (_ BitVec 32) ValueCell!1664)) (size!3694 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2236 0))(
  ( (LongMapFixedSize!2237 (defaultEntry!3564 Int) (mask!8401 (_ BitVec 32)) (extraKeys!3303 (_ BitVec 32)) (zeroValue!3405 V!5001) (minValue!3407 V!5001) (_size!1167 (_ BitVec 32)) (_keys!5399 array!7146) (_values!3547 array!7148) (_vacant!1167 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2236)

(declare-fun mapRest!6824 () (Array (_ BitVec 32) ValueCell!1664))

(assert (=> mapNonEmpty!6824 (= (arr!3399 (_values!3547 thiss!1248)) (store mapRest!6824 mapKey!6824 mapValue!6824))))

(declare-fun mapIsEmpty!6824 () Bool)

(assert (=> mapIsEmpty!6824 mapRes!6824))

(declare-fun res!81748 () Bool)

(declare-fun e!113614 () Bool)

(assert (=> start!17136 (=> (not res!81748) (not e!113614))))

(declare-fun valid!942 (LongMapFixedSize!2236) Bool)

(assert (=> start!17136 (= res!81748 (valid!942 thiss!1248))))

(assert (=> start!17136 e!113614))

(declare-fun e!113613 () Bool)

(assert (=> start!17136 e!113613))

(assert (=> start!17136 true))

(declare-fun b!172129 () Bool)

(declare-fun tp_is_empty!4015 () Bool)

(assert (=> b!172129 (= e!113616 tp_is_empty!4015)))

(declare-fun b!172130 () Bool)

(declare-fun e!113617 () Bool)

(declare-fun e!113615 () Bool)

(assert (=> b!172130 (= e!113617 (and e!113615 mapRes!6824))))

(declare-fun condMapEmpty!6824 () Bool)

(declare-fun mapDefault!6824 () ValueCell!1664)

