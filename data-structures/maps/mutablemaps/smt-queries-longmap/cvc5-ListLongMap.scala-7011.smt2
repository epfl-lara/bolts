; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89094 () Bool)

(assert start!89094)

(declare-fun b!1021054 () Bool)

(declare-fun b_free!20119 () Bool)

(declare-fun b_next!20119 () Bool)

(assert (=> b!1021054 (= b_free!20119 (not b_next!20119))))

(declare-fun tp!71386 () Bool)

(declare-fun b_and!32325 () Bool)

(assert (=> b!1021054 (= tp!71386 b_and!32325)))

(declare-fun mapIsEmpty!37170 () Bool)

(declare-fun mapRes!37170 () Bool)

(assert (=> mapIsEmpty!37170 mapRes!37170))

(declare-fun b!1021048 () Bool)

(declare-fun e!574986 () Bool)

(declare-fun e!574990 () Bool)

(assert (=> b!1021048 (= e!574986 e!574990)))

(declare-fun b!1021049 () Bool)

(declare-fun e!574985 () Bool)

(assert (=> b!1021049 (= e!574990 e!574985)))

(declare-fun res!684387 () Bool)

(declare-fun e!574987 () Bool)

(assert (=> start!89094 (=> (not res!684387) (not e!574987))))

(declare-datatypes ((V!36659 0))(
  ( (V!36660 (val!11970 Int)) )
))
(declare-datatypes ((array!63702 0))(
  ( (array!63703 (arr!30661 (Array (_ BitVec 32) (_ BitVec 64))) (size!31173 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11216 0))(
  ( (ValueCellFull!11216 (v!14528 V!36659)) (EmptyCell!11216) )
))
(declare-datatypes ((array!63704 0))(
  ( (array!63705 (arr!30662 (Array (_ BitVec 32) ValueCell!11216)) (size!31174 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5026 0))(
  ( (LongMapFixedSize!5027 (defaultEntry!5865 Int) (mask!29423 (_ BitVec 32)) (extraKeys!5597 (_ BitVec 32)) (zeroValue!5701 V!36659) (minValue!5701 V!36659) (_size!2568 (_ BitVec 32)) (_keys!11007 array!63702) (_values!5888 array!63704) (_vacant!2568 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1094 0))(
  ( (Cell!1095 (v!14529 LongMapFixedSize!5026)) )
))
(declare-datatypes ((LongMap!1094 0))(
  ( (LongMap!1095 (underlying!558 Cell!1094)) )
))
(declare-fun thiss!908 () LongMap!1094)

(declare-fun valid!1882 (LongMap!1094) Bool)

(assert (=> start!89094 (= res!684387 (valid!1882 thiss!908))))

(assert (=> start!89094 e!574987))

(assert (=> start!89094 e!574986))

(assert (=> start!89094 true))

(declare-fun b!1021050 () Bool)

(declare-fun e!574984 () Bool)

(declare-fun e!574988 () Bool)

(assert (=> b!1021050 (= e!574984 (and e!574988 mapRes!37170))))

(declare-fun condMapEmpty!37170 () Bool)

(declare-fun mapDefault!37170 () ValueCell!11216)

