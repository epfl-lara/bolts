; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91688 () Bool)

(assert start!91688)

(declare-fun b!1043318 () Bool)

(declare-fun b_free!21089 () Bool)

(declare-fun b_next!21089 () Bool)

(assert (=> b!1043318 (= b_free!21089 (not b_next!21089))))

(declare-fun tp!74505 () Bool)

(declare-fun b_and!33639 () Bool)

(assert (=> b!1043318 (= tp!74505 b_and!33639)))

(declare-fun b!1043309 () Bool)

(declare-fun e!591151 () Bool)

(declare-fun tp_is_empty!24809 () Bool)

(assert (=> b!1043309 (= e!591151 tp_is_empty!24809)))

(declare-fun b!1043310 () Bool)

(declare-fun e!591147 () Bool)

(declare-fun mapRes!38834 () Bool)

(assert (=> b!1043310 (= e!591147 (and e!591151 mapRes!38834))))

(declare-fun condMapEmpty!38834 () Bool)

(declare-datatypes ((V!37951 0))(
  ( (V!37952 (val!12455 Int)) )
))
(declare-datatypes ((ValueCell!11701 0))(
  ( (ValueCellFull!11701 (v!15047 V!37951)) (EmptyCell!11701) )
))
(declare-datatypes ((array!65764 0))(
  ( (array!65765 (arr!31631 (Array (_ BitVec 32) (_ BitVec 64))) (size!32167 (_ BitVec 32))) )
))
(declare-datatypes ((array!65766 0))(
  ( (array!65767 (arr!31632 (Array (_ BitVec 32) ValueCell!11701)) (size!32168 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5996 0))(
  ( (LongMapFixedSize!5997 (defaultEntry!6380 Int) (mask!30462 (_ BitVec 32)) (extraKeys!6108 (_ BitVec 32)) (zeroValue!6214 V!37951) (minValue!6214 V!37951) (_size!3053 (_ BitVec 32)) (_keys!11635 array!65764) (_values!6403 array!65766) (_vacant!3053 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5996)

(declare-fun mapDefault!38834 () ValueCell!11701)

