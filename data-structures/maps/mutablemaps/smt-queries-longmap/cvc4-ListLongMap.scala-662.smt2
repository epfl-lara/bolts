; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16370 () Bool)

(assert start!16370)

(declare-fun b!163053 () Bool)

(declare-fun b_free!3785 () Bool)

(declare-fun b_next!3785 () Bool)

(assert (=> b!163053 (= b_free!3785 (not b_next!3785))))

(declare-fun tp!13932 () Bool)

(declare-fun b_and!10217 () Bool)

(assert (=> b!163053 (= tp!13932 b_and!10217)))

(declare-fun b!163051 () Bool)

(declare-fun e!106981 () Bool)

(declare-fun tp_is_empty!3587 () Bool)

(assert (=> b!163051 (= e!106981 tp_is_empty!3587)))

(declare-fun b!163052 () Bool)

(declare-fun res!77209 () Bool)

(declare-fun e!106985 () Bool)

(assert (=> b!163052 (=> (not res!77209) (not e!106985))))

(declare-datatypes ((V!4429 0))(
  ( (V!4430 (val!1838 Int)) )
))
(declare-datatypes ((ValueCell!1450 0))(
  ( (ValueCellFull!1450 (v!3699 V!4429)) (EmptyCell!1450) )
))
(declare-datatypes ((array!6256 0))(
  ( (array!6257 (arr!2970 (Array (_ BitVec 32) (_ BitVec 64))) (size!3255 (_ BitVec 32))) )
))
(declare-datatypes ((array!6258 0))(
  ( (array!6259 (arr!2971 (Array (_ BitVec 32) ValueCell!1450)) (size!3256 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1808 0))(
  ( (LongMapFixedSize!1809 (defaultEntry!3346 Int) (mask!7990 (_ BitVec 32)) (extraKeys!3087 (_ BitVec 32)) (zeroValue!3189 V!4429) (minValue!3189 V!4429) (_size!953 (_ BitVec 32)) (_keys!5152 array!6256) (_values!3329 array!6258) (_vacant!953 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1808)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163052 (= res!77209 (validMask!0 (mask!7990 thiss!1248)))))

(declare-fun e!106987 () Bool)

(declare-fun e!106986 () Bool)

(declare-fun array_inv!1889 (array!6256) Bool)

(declare-fun array_inv!1890 (array!6258) Bool)

(assert (=> b!163053 (= e!106987 (and tp!13932 tp_is_empty!3587 (array_inv!1889 (_keys!5152 thiss!1248)) (array_inv!1890 (_values!3329 thiss!1248)) e!106986))))

(declare-fun mapIsEmpty!6075 () Bool)

(declare-fun mapRes!6075 () Bool)

(assert (=> mapIsEmpty!6075 mapRes!6075))

(declare-fun mapNonEmpty!6075 () Bool)

(declare-fun tp!13931 () Bool)

(assert (=> mapNonEmpty!6075 (= mapRes!6075 (and tp!13931 e!106981))))

(declare-fun mapRest!6075 () (Array (_ BitVec 32) ValueCell!1450))

(declare-fun mapValue!6075 () ValueCell!1450)

(declare-fun mapKey!6075 () (_ BitVec 32))

(assert (=> mapNonEmpty!6075 (= (arr!2971 (_values!3329 thiss!1248)) (store mapRest!6075 mapKey!6075 mapValue!6075))))

(declare-fun b!163054 () Bool)

(declare-fun e!106983 () Bool)

(assert (=> b!163054 (= e!106986 (and e!106983 mapRes!6075))))

(declare-fun condMapEmpty!6075 () Bool)

(declare-fun mapDefault!6075 () ValueCell!1450)

