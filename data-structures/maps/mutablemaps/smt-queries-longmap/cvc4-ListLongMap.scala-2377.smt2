; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37736 () Bool)

(assert start!37736)

(declare-fun b_free!8831 () Bool)

(declare-fun b_next!8831 () Bool)

(assert (=> start!37736 (= b_free!8831 (not b_next!8831))))

(declare-fun tp!31245 () Bool)

(declare-fun b_and!16091 () Bool)

(assert (=> start!37736 (= tp!31245 b_and!16091)))

(declare-fun b!386714 () Bool)

(declare-fun e!234540 () Bool)

(declare-fun e!234541 () Bool)

(declare-fun mapRes!15819 () Bool)

(assert (=> b!386714 (= e!234540 (and e!234541 mapRes!15819))))

(declare-fun condMapEmpty!15819 () Bool)

(declare-datatypes ((V!13775 0))(
  ( (V!13776 (val!4796 Int)) )
))
(declare-datatypes ((ValueCell!4408 0))(
  ( (ValueCellFull!4408 (v!6989 V!13775)) (EmptyCell!4408) )
))
(declare-datatypes ((array!22877 0))(
  ( (array!22878 (arr!10904 (Array (_ BitVec 32) ValueCell!4408)) (size!11256 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22877)

(declare-fun mapDefault!15819 () ValueCell!4408)

