; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35110 () Bool)

(assert start!35110)

(declare-fun b_free!7747 () Bool)

(declare-fun b_next!7747 () Bool)

(assert (=> start!35110 (= b_free!7747 (not b_next!7747))))

(declare-fun tp!26826 () Bool)

(declare-fun b_and!14999 () Bool)

(assert (=> start!35110 (= tp!26826 b_and!14999)))

(declare-fun b!351657 () Bool)

(declare-fun res!195088 () Bool)

(declare-fun e!215364 () Bool)

(assert (=> b!351657 (=> (not res!195088) (not e!215364))))

(declare-datatypes ((array!18943 0))(
  ( (array!18944 (arr!8972 (Array (_ BitVec 32) (_ BitVec 64))) (size!9324 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18943)

(declare-datatypes ((List!5248 0))(
  ( (Nil!5245) (Cons!5244 (h!6100 (_ BitVec 64)) (t!10398 List!5248)) )
))
(declare-fun arrayNoDuplicates!0 (array!18943 (_ BitVec 32) List!5248) Bool)

(assert (=> b!351657 (= res!195088 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5245))))

(declare-fun b!351658 () Bool)

(declare-fun res!195085 () Bool)

(assert (=> b!351658 (=> (not res!195085) (not e!215364))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11243 0))(
  ( (V!11244 (val!3894 Int)) )
))
(declare-datatypes ((ValueCell!3506 0))(
  ( (ValueCellFull!3506 (v!6079 V!11243)) (EmptyCell!3506) )
))
(declare-datatypes ((array!18945 0))(
  ( (array!18946 (arr!8973 (Array (_ BitVec 32) ValueCell!3506)) (size!9325 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18945)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!351658 (= res!195085 (and (= (size!9325 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9324 _keys!1895) (size!9325 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!351659 () Bool)

(declare-fun e!215361 () Bool)

(declare-fun e!215358 () Bool)

(declare-fun mapRes!13026 () Bool)

(assert (=> b!351659 (= e!215361 (and e!215358 mapRes!13026))))

(declare-fun condMapEmpty!13026 () Bool)

(declare-fun mapDefault!13026 () ValueCell!3506)

