; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21066 () Bool)

(assert start!21066)

(declare-fun b_free!5585 () Bool)

(declare-fun b_next!5585 () Bool)

(assert (=> start!21066 (= b_free!5585 (not b_next!5585))))

(declare-fun tp!19814 () Bool)

(declare-fun b_and!12421 () Bool)

(assert (=> start!21066 (= tp!19814 b_and!12421)))

(declare-fun b!211712 () Bool)

(declare-fun res!103462 () Bool)

(declare-fun e!137799 () Bool)

(assert (=> b!211712 (=> (not res!103462) (not e!137799))))

(declare-datatypes ((array!10094 0))(
  ( (array!10095 (arr!4791 (Array (_ BitVec 32) (_ BitVec 64))) (size!5116 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10094)

(declare-datatypes ((List!3098 0))(
  ( (Nil!3095) (Cons!3094 (h!3736 (_ BitVec 64)) (t!8049 List!3098)) )
))
(declare-fun arrayNoDuplicates!0 (array!10094 (_ BitVec 32) List!3098) Bool)

(assert (=> b!211712 (= res!103462 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3095))))

(declare-fun b!211713 () Bool)

(declare-fun e!137798 () Bool)

(declare-fun e!137800 () Bool)

(declare-fun mapRes!9257 () Bool)

(assert (=> b!211713 (= e!137798 (and e!137800 mapRes!9257))))

(declare-fun condMapEmpty!9257 () Bool)

(declare-datatypes ((V!6909 0))(
  ( (V!6910 (val!2768 Int)) )
))
(declare-datatypes ((ValueCell!2380 0))(
  ( (ValueCellFull!2380 (v!4758 V!6909)) (EmptyCell!2380) )
))
(declare-datatypes ((array!10096 0))(
  ( (array!10097 (arr!4792 (Array (_ BitVec 32) ValueCell!2380)) (size!5117 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10096)

(declare-fun mapDefault!9257 () ValueCell!2380)

