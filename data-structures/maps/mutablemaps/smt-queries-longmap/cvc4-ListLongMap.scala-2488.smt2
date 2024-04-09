; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38758 () Bool)

(assert start!38758)

(declare-fun b_free!9287 () Bool)

(declare-fun b_next!9287 () Bool)

(assert (=> start!38758 (= b_free!9287 (not b_next!9287))))

(declare-fun tp!32984 () Bool)

(declare-fun b_and!16691 () Bool)

(assert (=> start!38758 (= tp!32984 b_and!16691)))

(declare-fun b!403582 () Bool)

(declare-fun res!232702 () Bool)

(declare-fun e!242908 () Bool)

(assert (=> b!403582 (=> (not res!232702) (not e!242908))))

(declare-datatypes ((array!24207 0))(
  ( (array!24208 (arr!11550 (Array (_ BitVec 32) (_ BitVec 64))) (size!11902 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24207)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24207 (_ BitVec 32)) Bool)

(assert (=> b!403582 (= res!232702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!403583 () Bool)

(declare-fun e!242914 () Bool)

(declare-datatypes ((V!14663 0))(
  ( (V!14664 (val!5129 Int)) )
))
(declare-datatypes ((tuple2!6766 0))(
  ( (tuple2!6767 (_1!3393 (_ BitVec 64)) (_2!3393 V!14663)) )
))
(declare-datatypes ((List!6705 0))(
  ( (Nil!6702) (Cons!6701 (h!7557 tuple2!6766) (t!11887 List!6705)) )
))
(declare-datatypes ((ListLongMap!5693 0))(
  ( (ListLongMap!5694 (toList!2862 List!6705)) )
))
(declare-fun call!28522 () ListLongMap!5693)

(declare-fun call!28523 () ListLongMap!5693)

(assert (=> b!403583 (= e!242914 (= call!28522 call!28523))))

(declare-fun b!403584 () Bool)

(declare-fun res!232695 () Bool)

(assert (=> b!403584 (=> (not res!232695) (not e!242908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403584 (= res!232695 (validMask!0 mask!1025))))

(declare-fun b!403585 () Bool)

(declare-fun e!242909 () Bool)

(declare-fun e!242912 () Bool)

(declare-fun mapRes!16875 () Bool)

(assert (=> b!403585 (= e!242909 (and e!242912 mapRes!16875))))

(declare-fun condMapEmpty!16875 () Bool)

(declare-datatypes ((ValueCell!4741 0))(
  ( (ValueCellFull!4741 (v!7372 V!14663)) (EmptyCell!4741) )
))
(declare-datatypes ((array!24209 0))(
  ( (array!24210 (arr!11551 (Array (_ BitVec 32) ValueCell!4741)) (size!11903 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24209)

(declare-fun mapDefault!16875 () ValueCell!4741)

