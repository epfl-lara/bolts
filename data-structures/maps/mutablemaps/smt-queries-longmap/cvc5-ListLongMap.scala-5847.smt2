; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75584 () Bool)

(assert start!75584)

(declare-fun b!888606 () Bool)

(declare-fun b_free!15583 () Bool)

(declare-fun b_next!15583 () Bool)

(assert (=> b!888606 (= b_free!15583 (not b_next!15583))))

(declare-fun tp!54704 () Bool)

(declare-fun b_and!25841 () Bool)

(assert (=> b!888606 (= tp!54704 b_and!25841)))

(declare-fun mapNonEmpty!28407 () Bool)

(declare-fun mapRes!28407 () Bool)

(declare-fun tp!54705 () Bool)

(declare-fun e!495221 () Bool)

(assert (=> mapNonEmpty!28407 (= mapRes!28407 (and tp!54705 e!495221))))

(declare-datatypes ((V!28847 0))(
  ( (V!28848 (val!9006 Int)) )
))
(declare-datatypes ((ValueCell!8474 0))(
  ( (ValueCellFull!8474 (v!11476 V!28847)) (EmptyCell!8474) )
))
(declare-fun mapValue!28407 () ValueCell!8474)

(declare-fun mapRest!28407 () (Array (_ BitVec 32) ValueCell!8474))

(declare-fun mapKey!28407 () (_ BitVec 32))

(declare-datatypes ((array!51780 0))(
  ( (array!51781 (arr!24896 (Array (_ BitVec 32) (_ BitVec 64))) (size!25339 (_ BitVec 32))) )
))
(declare-datatypes ((array!51782 0))(
  ( (array!51783 (arr!24897 (Array (_ BitVec 32) ValueCell!8474)) (size!25340 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3964 0))(
  ( (LongMapFixedSize!3965 (defaultEntry!5179 Int) (mask!25602 (_ BitVec 32)) (extraKeys!4873 (_ BitVec 32)) (zeroValue!4977 V!28847) (minValue!4977 V!28847) (_size!2037 (_ BitVec 32)) (_keys!9856 array!51780) (_values!5164 array!51782) (_vacant!2037 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3964)

(assert (=> mapNonEmpty!28407 (= (arr!24897 (_values!5164 thiss!1181)) (store mapRest!28407 mapKey!28407 mapValue!28407))))

(declare-fun b!888604 () Bool)

(declare-fun e!495223 () Bool)

(declare-fun e!495220 () Bool)

(assert (=> b!888604 (= e!495223 (and e!495220 mapRes!28407))))

(declare-fun condMapEmpty!28407 () Bool)

(declare-fun mapDefault!28407 () ValueCell!8474)

