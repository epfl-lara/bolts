; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75748 () Bool)

(assert start!75748)

(declare-fun b!890121 () Bool)

(declare-fun b_free!15691 () Bool)

(declare-fun b_next!15691 () Bool)

(assert (=> b!890121 (= b_free!15691 (not b_next!15691))))

(declare-fun tp!55043 () Bool)

(declare-fun b_and!25949 () Bool)

(assert (=> b!890121 (= tp!55043 b_and!25949)))

(declare-fun mapIsEmpty!28583 () Bool)

(declare-fun mapRes!28583 () Bool)

(assert (=> mapIsEmpty!28583 mapRes!28583))

(declare-fun res!603226 () Bool)

(declare-fun e!496439 () Bool)

(assert (=> start!75748 (=> (not res!603226) (not e!496439))))

(declare-datatypes ((array!52004 0))(
  ( (array!52005 (arr!25004 (Array (_ BitVec 32) (_ BitVec 64))) (size!25449 (_ BitVec 32))) )
))
(declare-datatypes ((V!28991 0))(
  ( (V!28992 (val!9060 Int)) )
))
(declare-datatypes ((ValueCell!8528 0))(
  ( (ValueCellFull!8528 (v!11532 V!28991)) (EmptyCell!8528) )
))
(declare-datatypes ((array!52006 0))(
  ( (array!52007 (arr!25005 (Array (_ BitVec 32) ValueCell!8528)) (size!25450 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4072 0))(
  ( (LongMapFixedSize!4073 (defaultEntry!5233 Int) (mask!25697 (_ BitVec 32)) (extraKeys!4927 (_ BitVec 32)) (zeroValue!5031 V!28991) (minValue!5031 V!28991) (_size!2091 (_ BitVec 32)) (_keys!9912 array!52004) (_values!5218 array!52006) (_vacant!2091 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4072)

(declare-fun valid!1571 (LongMapFixedSize!4072) Bool)

(assert (=> start!75748 (= res!603226 (valid!1571 thiss!1181))))

(assert (=> start!75748 e!496439))

(declare-fun e!496441 () Bool)

(assert (=> start!75748 e!496441))

(assert (=> start!75748 true))

(declare-fun b!890117 () Bool)

(declare-fun e!496436 () Bool)

(assert (=> b!890117 (= e!496436 true)))

(declare-fun lt!402183 () Bool)

(declare-datatypes ((List!17799 0))(
  ( (Nil!17796) (Cons!17795 (h!18926 (_ BitVec 64)) (t!25106 List!17799)) )
))
(declare-fun arrayNoDuplicates!0 (array!52004 (_ BitVec 32) List!17799) Bool)

(assert (=> b!890117 (= lt!402183 (arrayNoDuplicates!0 (_keys!9912 thiss!1181) #b00000000000000000000000000000000 Nil!17796))))

(declare-fun b!890118 () Bool)

(declare-fun res!603231 () Bool)

(assert (=> b!890118 (=> res!603231 e!496436)))

(assert (=> b!890118 (= res!603231 (or (not (= (size!25450 (_values!5218 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25697 thiss!1181)))) (not (= (size!25449 (_keys!9912 thiss!1181)) (size!25450 (_values!5218 thiss!1181)))) (bvslt (mask!25697 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4927 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4927 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890119 () Bool)

(declare-fun res!603230 () Bool)

(assert (=> b!890119 (=> (not res!603230) (not e!496439))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!890119 (= res!603230 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890120 () Bool)

(declare-fun e!496440 () Bool)

(declare-fun e!496442 () Bool)

(assert (=> b!890120 (= e!496440 (and e!496442 mapRes!28583))))

(declare-fun condMapEmpty!28583 () Bool)

(declare-fun mapDefault!28583 () ValueCell!8528)

