; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74714 () Bool)

(assert start!74714)

(declare-fun b_free!15335 () Bool)

(declare-fun b_next!15335 () Bool)

(assert (=> start!74714 (= b_free!15335 (not b_next!15335))))

(declare-fun tp!53693 () Bool)

(declare-fun b_and!25307 () Bool)

(assert (=> start!74714 (= tp!53693 b_and!25307)))

(declare-fun b!880232 () Bool)

(declare-fun e!489878 () Bool)

(declare-fun e!489875 () Bool)

(declare-fun mapRes!27990 () Bool)

(assert (=> b!880232 (= e!489878 (and e!489875 mapRes!27990))))

(declare-fun condMapEmpty!27990 () Bool)

(declare-datatypes ((V!28485 0))(
  ( (V!28486 (val!8837 Int)) )
))
(declare-datatypes ((ValueCell!8350 0))(
  ( (ValueCellFull!8350 (v!11281 V!28485)) (EmptyCell!8350) )
))
(declare-datatypes ((array!51266 0))(
  ( (array!51267 (arr!24653 (Array (_ BitVec 32) ValueCell!8350)) (size!25094 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51266)

(declare-fun mapDefault!27990 () ValueCell!8350)

