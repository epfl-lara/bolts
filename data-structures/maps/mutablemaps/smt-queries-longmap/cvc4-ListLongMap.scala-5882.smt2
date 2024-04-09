; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75854 () Bool)

(assert start!75854)

(declare-fun b!891939 () Bool)

(declare-fun b_free!15797 () Bool)

(declare-fun b_next!15797 () Bool)

(assert (=> b!891939 (= b_free!15797 (not b_next!15797))))

(declare-fun tp!55360 () Bool)

(declare-fun b_and!26055 () Bool)

(assert (=> b!891939 (= tp!55360 b_and!26055)))

(declare-fun res!604416 () Bool)

(declare-fun e!497870 () Bool)

(assert (=> start!75854 (=> (not res!604416) (not e!497870))))

(declare-datatypes ((array!52216 0))(
  ( (array!52217 (arr!25110 (Array (_ BitVec 32) (_ BitVec 64))) (size!25555 (_ BitVec 32))) )
))
(declare-datatypes ((V!29131 0))(
  ( (V!29132 (val!9113 Int)) )
))
(declare-datatypes ((ValueCell!8581 0))(
  ( (ValueCellFull!8581 (v!11585 V!29131)) (EmptyCell!8581) )
))
(declare-datatypes ((array!52218 0))(
  ( (array!52219 (arr!25111 (Array (_ BitVec 32) ValueCell!8581)) (size!25556 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4178 0))(
  ( (LongMapFixedSize!4179 (defaultEntry!5286 Int) (mask!25784 (_ BitVec 32)) (extraKeys!4980 (_ BitVec 32)) (zeroValue!5084 V!29131) (minValue!5084 V!29131) (_size!2144 (_ BitVec 32)) (_keys!9965 array!52216) (_values!5271 array!52218) (_vacant!2144 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4178)

(declare-fun valid!1604 (LongMapFixedSize!4178) Bool)

(assert (=> start!75854 (= res!604416 (valid!1604 thiss!1181))))

(assert (=> start!75854 e!497870))

(declare-fun e!497868 () Bool)

(assert (=> start!75854 e!497868))

(assert (=> start!75854 true))

(declare-fun b!891937 () Bool)

(declare-fun res!604412 () Bool)

(declare-fun e!497866 () Bool)

(assert (=> b!891937 (=> res!604412 e!497866)))

(declare-datatypes ((List!17849 0))(
  ( (Nil!17846) (Cons!17845 (h!18976 (_ BitVec 64)) (t!25156 List!17849)) )
))
(declare-fun arrayNoDuplicates!0 (array!52216 (_ BitVec 32) List!17849) Bool)

(assert (=> b!891937 (= res!604412 (not (arrayNoDuplicates!0 (_keys!9965 thiss!1181) #b00000000000000000000000000000000 Nil!17846)))))

(declare-fun b!891938 () Bool)

(declare-fun e!497871 () Bool)

(declare-fun e!497873 () Bool)

(declare-fun mapRes!28742 () Bool)

(assert (=> b!891938 (= e!497871 (and e!497873 mapRes!28742))))

(declare-fun condMapEmpty!28742 () Bool)

(declare-fun mapDefault!28742 () ValueCell!8581)

