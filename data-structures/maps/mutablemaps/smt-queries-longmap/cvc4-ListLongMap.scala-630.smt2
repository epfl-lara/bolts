; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16144 () Bool)

(assert start!16144)

(declare-fun b!160540 () Bool)

(declare-fun b_free!3593 () Bool)

(declare-fun b_next!3593 () Bool)

(assert (=> b!160540 (= b_free!3593 (not b_next!3593))))

(declare-fun tp!13349 () Bool)

(declare-fun b_and!10025 () Bool)

(assert (=> b!160540 (= tp!13349 b_and!10025)))

(declare-fun e!104965 () Bool)

(declare-datatypes ((V!4173 0))(
  ( (V!4174 (val!1742 Int)) )
))
(declare-datatypes ((ValueCell!1354 0))(
  ( (ValueCellFull!1354 (v!3603 V!4173)) (EmptyCell!1354) )
))
(declare-datatypes ((array!5868 0))(
  ( (array!5869 (arr!2778 (Array (_ BitVec 32) (_ BitVec 64))) (size!3062 (_ BitVec 32))) )
))
(declare-datatypes ((array!5870 0))(
  ( (array!5871 (arr!2779 (Array (_ BitVec 32) ValueCell!1354)) (size!3063 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1616 0))(
  ( (LongMapFixedSize!1617 (defaultEntry!3250 Int) (mask!7822 (_ BitVec 32)) (extraKeys!2991 (_ BitVec 32)) (zeroValue!3093 V!4173) (minValue!3093 V!4173) (_size!857 (_ BitVec 32)) (_keys!5051 array!5868) (_values!3233 array!5870) (_vacant!857 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1616)

(declare-fun tp_is_empty!3395 () Bool)

(declare-fun e!104964 () Bool)

(declare-fun array_inv!1765 (array!5868) Bool)

(declare-fun array_inv!1766 (array!5870) Bool)

(assert (=> b!160540 (= e!104964 (and tp!13349 tp_is_empty!3395 (array_inv!1765 (_keys!5051 thiss!1248)) (array_inv!1766 (_values!3233 thiss!1248)) e!104965))))

(declare-fun res!76058 () Bool)

(declare-fun e!104968 () Bool)

(assert (=> start!16144 (=> (not res!76058) (not e!104968))))

(declare-fun valid!743 (LongMapFixedSize!1616) Bool)

(assert (=> start!16144 (= res!76058 (valid!743 thiss!1248))))

(assert (=> start!16144 e!104968))

(assert (=> start!16144 e!104964))

(assert (=> start!16144 true))

(declare-fun b!160541 () Bool)

(declare-fun res!76053 () Bool)

(assert (=> b!160541 (=> (not res!76053) (not e!104968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5868 (_ BitVec 32)) Bool)

(assert (=> b!160541 (= res!76053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5051 thiss!1248) (mask!7822 thiss!1248)))))

(declare-fun b!160542 () Bool)

(declare-fun e!104966 () Bool)

(declare-fun mapRes!5780 () Bool)

(assert (=> b!160542 (= e!104965 (and e!104966 mapRes!5780))))

(declare-fun condMapEmpty!5780 () Bool)

(declare-fun mapDefault!5780 () ValueCell!1354)

