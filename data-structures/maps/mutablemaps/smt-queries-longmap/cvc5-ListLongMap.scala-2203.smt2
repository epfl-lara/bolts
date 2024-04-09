; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36616 () Bool)

(assert start!36616)

(declare-fun b!365254 () Bool)

(declare-fun e!223673 () Bool)

(declare-fun e!223676 () Bool)

(declare-fun mapRes!14232 () Bool)

(assert (=> b!365254 (= e!223673 (and e!223676 mapRes!14232))))

(declare-fun condMapEmpty!14232 () Bool)

(declare-datatypes ((V!12379 0))(
  ( (V!12380 (val!4272 Int)) )
))
(declare-datatypes ((ValueCell!3884 0))(
  ( (ValueCellFull!3884 (v!6463 V!12379)) (EmptyCell!3884) )
))
(declare-datatypes ((array!20841 0))(
  ( (array!20842 (arr!9891 (Array (_ BitVec 32) ValueCell!3884)) (size!10243 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20841)

(declare-fun mapDefault!14232 () ValueCell!3884)

