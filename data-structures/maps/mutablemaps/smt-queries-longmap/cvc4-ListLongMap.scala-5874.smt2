; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75806 () Bool)

(assert start!75806)

(declare-fun b!891082 () Bool)

(declare-fun b_free!15749 () Bool)

(declare-fun b_next!15749 () Bool)

(assert (=> b!891082 (= b_free!15749 (not b_next!15749))))

(declare-fun tp!55216 () Bool)

(declare-fun b_and!26007 () Bool)

(assert (=> b!891082 (= tp!55216 b_and!26007)))

(declare-fun b!891074 () Bool)

(declare-fun res!603836 () Bool)

(declare-fun e!497223 () Bool)

(assert (=> b!891074 (=> res!603836 e!497223)))

(declare-datatypes ((array!52120 0))(
  ( (array!52121 (arr!25062 (Array (_ BitVec 32) (_ BitVec 64))) (size!25507 (_ BitVec 32))) )
))
(declare-datatypes ((V!29067 0))(
  ( (V!29068 (val!9089 Int)) )
))
(declare-datatypes ((ValueCell!8557 0))(
  ( (ValueCellFull!8557 (v!11561 V!29067)) (EmptyCell!8557) )
))
(declare-datatypes ((array!52122 0))(
  ( (array!52123 (arr!25063 (Array (_ BitVec 32) ValueCell!8557)) (size!25508 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4130 0))(
  ( (LongMapFixedSize!4131 (defaultEntry!5262 Int) (mask!25744 (_ BitVec 32)) (extraKeys!4956 (_ BitVec 32)) (zeroValue!5060 V!29067) (minValue!5060 V!29067) (_size!2120 (_ BitVec 32)) (_keys!9941 array!52120) (_values!5247 array!52122) (_vacant!2120 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4130)

(assert (=> b!891074 (= res!603836 (or (not (= (size!25508 (_values!5247 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25744 thiss!1181)))) (not (= (size!25507 (_keys!9941 thiss!1181)) (size!25508 (_values!5247 thiss!1181)))) (bvslt (mask!25744 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4956 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4956 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!891075 () Bool)

(declare-fun e!497219 () Bool)

(declare-datatypes ((SeekEntryResult!8814 0))(
  ( (MissingZero!8814 (index!37626 (_ BitVec 32))) (Found!8814 (index!37627 (_ BitVec 32))) (Intermediate!8814 (undefined!9626 Bool) (index!37628 (_ BitVec 32)) (x!75711 (_ BitVec 32))) (Undefined!8814) (MissingVacant!8814 (index!37629 (_ BitVec 32))) )
))
(declare-fun lt!402531 () SeekEntryResult!8814)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891075 (= e!497219 (inRange!0 (index!37627 lt!402531) (mask!25744 thiss!1181)))))

(declare-fun b!891076 () Bool)

(declare-fun e!497222 () Bool)

(declare-fun e!497218 () Bool)

(declare-fun mapRes!28670 () Bool)

(assert (=> b!891076 (= e!497222 (and e!497218 mapRes!28670))))

(declare-fun condMapEmpty!28670 () Bool)

(declare-fun mapDefault!28670 () ValueCell!8557)

