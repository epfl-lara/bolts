; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38688 () Bool)

(assert start!38688)

(declare-fun b_free!9217 () Bool)

(declare-fun b_next!9217 () Bool)

(assert (=> start!38688 (= b_free!9217 (not b_next!9217))))

(declare-fun tp!32775 () Bool)

(declare-fun b_and!16621 () Bool)

(assert (=> start!38688 (= tp!32775 b_and!16621)))

(declare-fun b!401797 () Bool)

(declare-fun res!231442 () Bool)

(declare-fun e!242177 () Bool)

(assert (=> b!401797 (=> (not res!231442) (not e!242177))))

(declare-datatypes ((array!24069 0))(
  ( (array!24070 (arr!11481 (Array (_ BitVec 32) (_ BitVec 64))) (size!11833 (_ BitVec 32))) )
))
(declare-fun lt!187839 () array!24069)

(declare-datatypes ((List!6645 0))(
  ( (Nil!6642) (Cons!6641 (h!7497 (_ BitVec 64)) (t!11827 List!6645)) )
))
(declare-fun arrayNoDuplicates!0 (array!24069 (_ BitVec 32) List!6645) Bool)

(assert (=> b!401797 (= res!231442 (arrayNoDuplicates!0 lt!187839 #b00000000000000000000000000000000 Nil!6642))))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((V!14571 0))(
  ( (V!14572 (val!5094 Int)) )
))
(declare-datatypes ((tuple2!6698 0))(
  ( (tuple2!6699 (_1!3359 (_ BitVec 64)) (_2!3359 V!14571)) )
))
(declare-datatypes ((List!6646 0))(
  ( (Nil!6643) (Cons!6642 (h!7498 tuple2!6698) (t!11828 List!6646)) )
))
(declare-datatypes ((ListLongMap!5625 0))(
  ( (ListLongMap!5626 (toList!2828 List!6646)) )
))
(declare-fun call!28312 () ListLongMap!5625)

(declare-fun e!242176 () Bool)

(declare-fun call!28313 () ListLongMap!5625)

(declare-fun b!401798 () Bool)

(declare-fun v!412 () V!14571)

(declare-fun +!1108 (ListLongMap!5625 tuple2!6698) ListLongMap!5625)

(assert (=> b!401798 (= e!242176 (= call!28312 (+!1108 call!28313 (tuple2!6699 k!794 v!412))))))

(declare-fun b!401799 () Bool)

(declare-fun e!242174 () Bool)

(declare-fun e!242178 () Bool)

(declare-fun mapRes!16770 () Bool)

(assert (=> b!401799 (= e!242174 (and e!242178 mapRes!16770))))

(declare-fun condMapEmpty!16770 () Bool)

(declare-datatypes ((ValueCell!4706 0))(
  ( (ValueCellFull!4706 (v!7337 V!14571)) (EmptyCell!4706) )
))
(declare-datatypes ((array!24071 0))(
  ( (array!24072 (arr!11482 (Array (_ BitVec 32) ValueCell!4706)) (size!11834 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24071)

(declare-fun mapDefault!16770 () ValueCell!4706)

