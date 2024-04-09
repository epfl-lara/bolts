; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91852 () Bool)

(assert start!91852)

(declare-fun b!1044621 () Bool)

(declare-fun b_free!21125 () Bool)

(declare-fun b_next!21125 () Bool)

(assert (=> b!1044621 (= b_free!21125 (not b_next!21125))))

(declare-fun tp!74626 () Bool)

(declare-fun b_and!33731 () Bool)

(assert (=> b!1044621 (= tp!74626 b_and!33731)))

(declare-fun mapIsEmpty!38900 () Bool)

(declare-fun mapRes!38900 () Bool)

(assert (=> mapIsEmpty!38900 mapRes!38900))

(declare-fun b!1044616 () Bool)

(declare-fun e!592092 () Bool)

(declare-fun tp_is_empty!24845 () Bool)

(assert (=> b!1044616 (= e!592092 tp_is_empty!24845)))

(declare-fun b!1044617 () Bool)

(declare-fun e!592089 () Bool)

(declare-datatypes ((V!37999 0))(
  ( (V!38000 (val!12473 Int)) )
))
(declare-datatypes ((ValueCell!11719 0))(
  ( (ValueCellFull!11719 (v!15067 V!37999)) (EmptyCell!11719) )
))
(declare-datatypes ((Unit!34112 0))(
  ( (Unit!34113) )
))
(declare-datatypes ((array!65844 0))(
  ( (array!65845 (arr!31667 (Array (_ BitVec 32) (_ BitVec 64))) (size!32203 (_ BitVec 32))) )
))
(declare-datatypes ((array!65846 0))(
  ( (array!65847 (arr!31668 (Array (_ BitVec 32) ValueCell!11719)) (size!32204 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6032 0))(
  ( (LongMapFixedSize!6033 (defaultEntry!6406 Int) (mask!30514 (_ BitVec 32)) (extraKeys!6134 (_ BitVec 32)) (zeroValue!6240 V!37999) (minValue!6240 V!37999) (_size!3071 (_ BitVec 32)) (_keys!11669 array!65844) (_values!6429 array!65846) (_vacant!3071 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15870 0))(
  ( (tuple2!15871 (_1!7945 Unit!34112) (_2!7945 LongMapFixedSize!6032)) )
))
(declare-fun lt!460891 () tuple2!15870)

(assert (=> b!1044617 (= e!592089 (or (not (= (size!32204 (_values!6429 (_2!7945 lt!460891))) (bvadd #b00000000000000000000000000000001 (mask!30514 (_2!7945 lt!460891))))) (= (size!32203 (_keys!11669 (_2!7945 lt!460891))) (size!32204 (_values!6429 (_2!7945 lt!460891))))))))

(declare-fun b!1044618 () Bool)

(declare-fun e!592088 () Bool)

(assert (=> b!1044618 (= e!592088 tp_is_empty!24845)))

(declare-fun b!1044619 () Bool)

(declare-fun e!592094 () Bool)

(assert (=> b!1044619 (= e!592094 (and e!592088 mapRes!38900))))

(declare-fun condMapEmpty!38900 () Bool)

(declare-fun thiss!1427 () LongMapFixedSize!6032)

(declare-fun mapDefault!38900 () ValueCell!11719)

