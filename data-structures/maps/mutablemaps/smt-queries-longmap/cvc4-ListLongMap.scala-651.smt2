; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16270 () Bool)

(assert start!16270)

(declare-fun b!162165 () Bool)

(declare-fun b_free!3719 () Bool)

(declare-fun b_next!3719 () Bool)

(assert (=> b!162165 (= b_free!3719 (not b_next!3719))))

(declare-fun tp!13726 () Bool)

(declare-fun b_and!10151 () Bool)

(assert (=> b!162165 (= tp!13726 b_and!10151)))

(declare-fun e!106206 () Bool)

(declare-fun e!106208 () Bool)

(declare-fun tp_is_empty!3521 () Bool)

(declare-datatypes ((V!4341 0))(
  ( (V!4342 (val!1805 Int)) )
))
(declare-datatypes ((ValueCell!1417 0))(
  ( (ValueCellFull!1417 (v!3666 V!4341)) (EmptyCell!1417) )
))
(declare-datatypes ((array!6120 0))(
  ( (array!6121 (arr!2904 (Array (_ BitVec 32) (_ BitVec 64))) (size!3188 (_ BitVec 32))) )
))
(declare-datatypes ((array!6122 0))(
  ( (array!6123 (arr!2905 (Array (_ BitVec 32) ValueCell!1417)) (size!3189 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1742 0))(
  ( (LongMapFixedSize!1743 (defaultEntry!3313 Int) (mask!7927 (_ BitVec 32)) (extraKeys!3054 (_ BitVec 32)) (zeroValue!3156 V!4341) (minValue!3156 V!4341) (_size!920 (_ BitVec 32)) (_keys!5114 array!6120) (_values!3296 array!6122) (_vacant!920 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1742)

(declare-fun array_inv!1849 (array!6120) Bool)

(declare-fun array_inv!1850 (array!6122) Bool)

(assert (=> b!162165 (= e!106208 (and tp!13726 tp_is_empty!3521 (array_inv!1849 (_keys!5114 thiss!1248)) (array_inv!1850 (_values!3296 thiss!1248)) e!106206))))

(declare-fun b!162166 () Bool)

(declare-fun e!106211 () Bool)

(assert (=> b!162166 (= e!106211 tp_is_empty!3521)))

(declare-fun b!162167 () Bool)

(declare-fun res!76831 () Bool)

(declare-fun e!106207 () Bool)

(assert (=> b!162167 (=> (not res!76831) (not e!106207))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162167 (= res!76831 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162168 () Bool)

(declare-fun e!106210 () Bool)

(declare-fun mapRes!5969 () Bool)

(assert (=> b!162168 (= e!106206 (and e!106210 mapRes!5969))))

(declare-fun condMapEmpty!5969 () Bool)

(declare-fun mapDefault!5969 () ValueCell!1417)

