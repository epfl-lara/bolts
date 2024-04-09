; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35668 () Bool)

(assert start!35668)

(declare-fun b_free!7915 () Bool)

(declare-fun b_next!7915 () Bool)

(assert (=> start!35668 (= b_free!7915 (not b_next!7915))))

(declare-fun tp!27728 () Bool)

(declare-fun b_and!15175 () Bool)

(assert (=> start!35668 (= tp!27728 b_and!15175)))

(declare-fun b!357949 () Bool)

(declare-fun e!219109 () Bool)

(declare-fun e!219105 () Bool)

(declare-fun mapRes!13677 () Bool)

(assert (=> b!357949 (= e!219109 (and e!219105 mapRes!13677))))

(declare-fun condMapEmpty!13677 () Bool)

(declare-datatypes ((V!11795 0))(
  ( (V!11796 (val!4101 Int)) )
))
(declare-datatypes ((ValueCell!3713 0))(
  ( (ValueCellFull!3713 (v!6291 V!11795)) (EmptyCell!3713) )
))
(declare-datatypes ((array!19759 0))(
  ( (array!19760 (arr!9370 (Array (_ BitVec 32) ValueCell!3713)) (size!9722 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19759)

(declare-fun mapDefault!13677 () ValueCell!3713)

