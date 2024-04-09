; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75866 () Bool)

(assert start!75866)

(declare-fun b!892155 () Bool)

(declare-fun b_free!15809 () Bool)

(declare-fun b_next!15809 () Bool)

(assert (=> b!892155 (= b_free!15809 (not b_next!15809))))

(declare-fun tp!55396 () Bool)

(declare-fun b_and!26067 () Bool)

(assert (=> b!892155 (= tp!55396 b_and!26067)))

(declare-fun b!892154 () Bool)

(declare-fun e!498034 () Bool)

(declare-fun e!498030 () Bool)

(declare-fun mapRes!28760 () Bool)

(assert (=> b!892154 (= e!498034 (and e!498030 mapRes!28760))))

(declare-fun condMapEmpty!28760 () Bool)

(declare-datatypes ((array!52240 0))(
  ( (array!52241 (arr!25122 (Array (_ BitVec 32) (_ BitVec 64))) (size!25567 (_ BitVec 32))) )
))
(declare-datatypes ((V!29147 0))(
  ( (V!29148 (val!9119 Int)) )
))
(declare-datatypes ((ValueCell!8587 0))(
  ( (ValueCellFull!8587 (v!11591 V!29147)) (EmptyCell!8587) )
))
(declare-datatypes ((array!52242 0))(
  ( (array!52243 (arr!25123 (Array (_ BitVec 32) ValueCell!8587)) (size!25568 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4190 0))(
  ( (LongMapFixedSize!4191 (defaultEntry!5292 Int) (mask!25794 (_ BitVec 32)) (extraKeys!4986 (_ BitVec 32)) (zeroValue!5090 V!29147) (minValue!5090 V!29147) (_size!2150 (_ BitVec 32)) (_keys!9971 array!52240) (_values!5277 array!52242) (_vacant!2150 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4190)

(declare-fun mapDefault!28760 () ValueCell!8587)

