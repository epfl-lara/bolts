; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76220 () Bool)

(assert start!76220)

(declare-fun b!894674 () Bool)

(declare-fun b_free!15887 () Bool)

(declare-fun b_next!15887 () Bool)

(assert (=> b!894674 (= b_free!15887 (not b_next!15887))))

(declare-fun tp!55656 () Bool)

(declare-fun b_and!26197 () Bool)

(assert (=> b!894674 (= tp!55656 b_and!26197)))

(declare-fun b!894671 () Bool)

(declare-fun e!499823 () Bool)

(declare-datatypes ((array!52410 0))(
  ( (array!52411 (arr!25200 (Array (_ BitVec 32) (_ BitVec 64))) (size!25648 (_ BitVec 32))) )
))
(declare-datatypes ((V!29251 0))(
  ( (V!29252 (val!9158 Int)) )
))
(declare-datatypes ((ValueCell!8626 0))(
  ( (ValueCellFull!8626 (v!11645 V!29251)) (EmptyCell!8626) )
))
(declare-datatypes ((array!52412 0))(
  ( (array!52413 (arr!25201 (Array (_ BitVec 32) ValueCell!8626)) (size!25649 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4268 0))(
  ( (LongMapFixedSize!4269 (defaultEntry!5346 Int) (mask!25910 (_ BitVec 32)) (extraKeys!5042 (_ BitVec 32)) (zeroValue!5146 V!29251) (minValue!5146 V!29251) (_size!2189 (_ BitVec 32)) (_keys!10044 array!52410) (_values!5333 array!52412) (_vacant!2189 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4268)

(assert (=> b!894671 (= e!499823 (and (= (size!25649 (_values!5333 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25910 thiss!1181))) (not (= (size!25648 (_keys!10044 thiss!1181)) (size!25649 (_values!5333 thiss!1181))))))))

(declare-fun mapIsEmpty!28903 () Bool)

(declare-fun mapRes!28903 () Bool)

(assert (=> mapIsEmpty!28903 mapRes!28903))

(declare-fun res!605495 () Bool)

(declare-fun e!499822 () Bool)

(assert (=> start!76220 (=> (not res!605495) (not e!499822))))

(declare-fun valid!1638 (LongMapFixedSize!4268) Bool)

(assert (=> start!76220 (= res!605495 (valid!1638 thiss!1181))))

(assert (=> start!76220 e!499822))

(declare-fun e!499828 () Bool)

(assert (=> start!76220 e!499828))

(assert (=> start!76220 true))

(declare-fun b!894672 () Bool)

(declare-fun e!499825 () Bool)

(declare-fun e!499826 () Bool)

(assert (=> b!894672 (= e!499825 (and e!499826 mapRes!28903))))

(declare-fun condMapEmpty!28903 () Bool)

(declare-fun mapDefault!28903 () ValueCell!8626)

