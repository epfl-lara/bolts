; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16880 () Bool)

(assert start!16880)

(declare-fun b!169862 () Bool)

(declare-fun b_free!4171 () Bool)

(declare-fun b_next!4171 () Bool)

(assert (=> b!169862 (= b_free!4171 (not b_next!4171))))

(declare-fun tp!15122 () Bool)

(declare-fun b_and!10603 () Bool)

(assert (=> b!169862 (= tp!15122 b_and!10603)))

(declare-fun res!80768 () Bool)

(declare-fun e!112049 () Bool)

(assert (=> start!16880 (=> (not res!80768) (not e!112049))))

(declare-datatypes ((V!4905 0))(
  ( (V!4906 (val!2016 Int)) )
))
(declare-datatypes ((ValueCell!1628 0))(
  ( (ValueCellFull!1628 (v!3877 V!4905)) (EmptyCell!1628) )
))
(declare-datatypes ((array!6986 0))(
  ( (array!6987 (arr!3326 (Array (_ BitVec 32) (_ BitVec 64))) (size!3616 (_ BitVec 32))) )
))
(declare-datatypes ((array!6988 0))(
  ( (array!6989 (arr!3327 (Array (_ BitVec 32) ValueCell!1628)) (size!3617 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2164 0))(
  ( (LongMapFixedSize!2165 (defaultEntry!3524 Int) (mask!8321 (_ BitVec 32)) (extraKeys!3265 (_ BitVec 32)) (zeroValue!3367 V!4905) (minValue!3367 V!4905) (_size!1131 (_ BitVec 32)) (_keys!5351 array!6986) (_values!3507 array!6988) (_vacant!1131 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2164)

(declare-fun valid!922 (LongMapFixedSize!2164) Bool)

(assert (=> start!16880 (= res!80768 (valid!922 thiss!1248))))

(assert (=> start!16880 e!112049))

(declare-fun e!112048 () Bool)

(assert (=> start!16880 e!112048))

(assert (=> start!16880 true))

(declare-fun mapIsEmpty!6686 () Bool)

(declare-fun mapRes!6686 () Bool)

(assert (=> mapIsEmpty!6686 mapRes!6686))

(declare-fun b!169857 () Bool)

(declare-fun e!112045 () Bool)

(declare-fun tp_is_empty!3943 () Bool)

(assert (=> b!169857 (= e!112045 tp_is_empty!3943)))

(declare-fun b!169858 () Bool)

(declare-fun res!80769 () Bool)

(assert (=> b!169858 (=> (not res!80769) (not e!112049))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!169858 (= res!80769 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!6686 () Bool)

(declare-fun tp!15121 () Bool)

(declare-fun e!112047 () Bool)

(assert (=> mapNonEmpty!6686 (= mapRes!6686 (and tp!15121 e!112047))))

(declare-fun mapRest!6686 () (Array (_ BitVec 32) ValueCell!1628))

(declare-fun mapValue!6686 () ValueCell!1628)

(declare-fun mapKey!6686 () (_ BitVec 32))

(assert (=> mapNonEmpty!6686 (= (arr!3327 (_values!3507 thiss!1248)) (store mapRest!6686 mapKey!6686 mapValue!6686))))

(declare-fun b!169859 () Bool)

(assert (=> b!169859 (= e!112049 (and (= (size!3617 (_values!3507 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8321 thiss!1248))) (not (= (size!3616 (_keys!5351 thiss!1248)) (size!3617 (_values!3507 thiss!1248))))))))

(declare-fun b!169860 () Bool)

(declare-fun e!112044 () Bool)

(assert (=> b!169860 (= e!112044 (and e!112045 mapRes!6686))))

(declare-fun condMapEmpty!6686 () Bool)

(declare-fun mapDefault!6686 () ValueCell!1628)

