; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89098 () Bool)

(assert start!89098)

(declare-fun b!1021095 () Bool)

(declare-fun b_free!20123 () Bool)

(declare-fun b_next!20123 () Bool)

(assert (=> b!1021095 (= b_free!20123 (not b_next!20123))))

(declare-fun tp!71398 () Bool)

(declare-fun b_and!32329 () Bool)

(assert (=> b!1021095 (= tp!71398 b_and!32329)))

(declare-fun res!684393 () Bool)

(declare-fun e!575033 () Bool)

(assert (=> start!89098 (=> (not res!684393) (not e!575033))))

(declare-datatypes ((V!36663 0))(
  ( (V!36664 (val!11972 Int)) )
))
(declare-datatypes ((array!63710 0))(
  ( (array!63711 (arr!30665 (Array (_ BitVec 32) (_ BitVec 64))) (size!31177 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11218 0))(
  ( (ValueCellFull!11218 (v!14532 V!36663)) (EmptyCell!11218) )
))
(declare-datatypes ((array!63712 0))(
  ( (array!63713 (arr!30666 (Array (_ BitVec 32) ValueCell!11218)) (size!31178 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5030 0))(
  ( (LongMapFixedSize!5031 (defaultEntry!5867 Int) (mask!29425 (_ BitVec 32)) (extraKeys!5599 (_ BitVec 32)) (zeroValue!5703 V!36663) (minValue!5703 V!36663) (_size!2570 (_ BitVec 32)) (_keys!11009 array!63710) (_values!5890 array!63712) (_vacant!2570 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1098 0))(
  ( (Cell!1099 (v!14533 LongMapFixedSize!5030)) )
))
(declare-datatypes ((LongMap!1098 0))(
  ( (LongMap!1099 (underlying!560 Cell!1098)) )
))
(declare-fun thiss!908 () LongMap!1098)

(declare-fun valid!1884 (LongMap!1098) Bool)

(assert (=> start!89098 (= res!684393 (valid!1884 thiss!908))))

(assert (=> start!89098 e!575033))

(declare-fun e!575037 () Bool)

(assert (=> start!89098 e!575037))

(assert (=> start!89098 true))

(declare-fun b!1021090 () Bool)

(declare-fun e!575031 () Bool)

(declare-fun e!575034 () Bool)

(declare-fun mapRes!37176 () Bool)

(assert (=> b!1021090 (= e!575031 (and e!575034 mapRes!37176))))

(declare-fun condMapEmpty!37176 () Bool)

(declare-fun mapDefault!37176 () ValueCell!11218)

