; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18788 () Bool)

(assert start!18788)

(declare-fun b!185533 () Bool)

(declare-fun b_free!4571 () Bool)

(declare-fun b_next!4571 () Bool)

(assert (=> b!185533 (= b_free!4571 (not b_next!4571))))

(declare-fun tp!16508 () Bool)

(declare-fun b_and!11189 () Bool)

(assert (=> b!185533 (= tp!16508 b_and!11189)))

(declare-fun b!185524 () Bool)

(declare-fun res!87788 () Bool)

(declare-fun e!122091 () Bool)

(assert (=> b!185524 (=> (not res!87788) (not e!122091))))

(declare-datatypes ((V!5437 0))(
  ( (V!5438 (val!2216 Int)) )
))
(declare-datatypes ((ValueCell!1828 0))(
  ( (ValueCellFull!1828 (v!4122 V!5437)) (EmptyCell!1828) )
))
(declare-datatypes ((array!7892 0))(
  ( (array!7893 (arr!3726 (Array (_ BitVec 32) (_ BitVec 64))) (size!4042 (_ BitVec 32))) )
))
(declare-datatypes ((array!7894 0))(
  ( (array!7895 (arr!3727 (Array (_ BitVec 32) ValueCell!1828)) (size!4043 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2564 0))(
  ( (LongMapFixedSize!2565 (defaultEntry!3783 Int) (mask!8891 (_ BitVec 32)) (extraKeys!3520 (_ BitVec 32)) (zeroValue!3624 V!5437) (minValue!3624 V!5437) (_size!1331 (_ BitVec 32)) (_keys!5722 array!7892) (_values!3766 array!7894) (_vacant!1331 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2564)

(assert (=> b!185524 (= res!87788 (and (= (size!4043 (_values!3766 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8891 thiss!1248))) (= (size!4042 (_keys!5722 thiss!1248)) (size!4043 (_values!3766 thiss!1248))) (bvsge (mask!8891 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3520 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3520 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!87784 () Bool)

(declare-fun e!122088 () Bool)

(assert (=> start!18788 (=> (not res!87784) (not e!122088))))

(declare-fun valid!1050 (LongMapFixedSize!2564) Bool)

(assert (=> start!18788 (= res!87784 (valid!1050 thiss!1248))))

(assert (=> start!18788 e!122088))

(declare-fun e!122087 () Bool)

(assert (=> start!18788 e!122087))

(assert (=> start!18788 true))

(declare-fun mapIsEmpty!7473 () Bool)

(declare-fun mapRes!7473 () Bool)

(assert (=> mapIsEmpty!7473 mapRes!7473))

(declare-fun b!185525 () Bool)

(declare-fun e!122090 () Bool)

(declare-fun tp_is_empty!4343 () Bool)

(assert (=> b!185525 (= e!122090 tp_is_empty!4343)))

(declare-fun b!185526 () Bool)

(declare-fun e!122089 () Bool)

(assert (=> b!185526 (= e!122089 (and e!122090 mapRes!7473))))

(declare-fun condMapEmpty!7473 () Bool)

(declare-fun mapDefault!7473 () ValueCell!1828)

