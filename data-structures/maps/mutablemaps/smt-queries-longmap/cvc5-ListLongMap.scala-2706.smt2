; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40062 () Bool)

(assert start!40062)

(declare-fun b_free!10321 () Bool)

(declare-fun b_next!10321 () Bool)

(assert (=> start!40062 (= b_free!10321 (not b_next!10321))))

(declare-fun tp!36492 () Bool)

(declare-fun b_and!18307 () Bool)

(assert (=> start!40062 (= tp!36492 b_and!18307)))

(declare-fun b!436865 () Bool)

(declare-fun res!257714 () Bool)

(declare-fun e!257909 () Bool)

(assert (=> b!436865 (=> (not res!257714) (not e!257909))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!436865 (= res!257714 (validMask!0 mask!1025))))

(declare-fun b!436867 () Bool)

(declare-fun e!257905 () Bool)

(declare-fun tp_is_empty!11473 () Bool)

(assert (=> b!436867 (= e!257905 tp_is_empty!11473)))

(declare-fun b!436868 () Bool)

(declare-fun res!257712 () Bool)

(assert (=> b!436868 (=> (not res!257712) (not e!257909))))

(declare-datatypes ((array!26745 0))(
  ( (array!26746 (arr!12819 (Array (_ BitVec 32) (_ BitVec 64))) (size!13171 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26745)

(declare-datatypes ((List!7635 0))(
  ( (Nil!7632) (Cons!7631 (h!8487 (_ BitVec 64)) (t!13399 List!7635)) )
))
(declare-fun arrayNoDuplicates!0 (array!26745 (_ BitVec 32) List!7635) Bool)

(assert (=> b!436868 (= res!257712 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7632))))

(declare-fun b!436869 () Bool)

(declare-fun e!257911 () Bool)

(declare-fun e!257910 () Bool)

(declare-fun mapRes!18831 () Bool)

(assert (=> b!436869 (= e!257911 (and e!257910 mapRes!18831))))

(declare-fun condMapEmpty!18831 () Bool)

(declare-datatypes ((V!16403 0))(
  ( (V!16404 (val!5781 Int)) )
))
(declare-datatypes ((ValueCell!5393 0))(
  ( (ValueCellFull!5393 (v!8024 V!16403)) (EmptyCell!5393) )
))
(declare-datatypes ((array!26747 0))(
  ( (array!26748 (arr!12820 (Array (_ BitVec 32) ValueCell!5393)) (size!13172 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26747)

(declare-fun mapDefault!18831 () ValueCell!5393)

