; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35534 () Bool)

(assert start!35534)

(declare-fun b!355803 () Bool)

(declare-fun e!218029 () Bool)

(assert (=> b!355803 (= e!218029 false)))

(declare-fun lt!165844 () Bool)

(declare-datatypes ((array!19501 0))(
  ( (array!19502 (arr!9241 (Array (_ BitVec 32) (_ BitVec 64))) (size!9593 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19501)

(declare-datatypes ((List!5375 0))(
  ( (Nil!5372) (Cons!5371 (h!6227 (_ BitVec 64)) (t!10533 List!5375)) )
))
(declare-fun arrayNoDuplicates!0 (array!19501 (_ BitVec 32) List!5375) Bool)

(assert (=> b!355803 (= lt!165844 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5372))))

(declare-fun b!355804 () Bool)

(declare-fun e!218030 () Bool)

(declare-fun tp_is_empty!7979 () Bool)

(assert (=> b!355804 (= e!218030 tp_is_empty!7979)))

(declare-fun mapNonEmpty!13476 () Bool)

(declare-fun mapRes!13476 () Bool)

(declare-fun tp!27453 () Bool)

(assert (=> mapNonEmpty!13476 (= mapRes!13476 (and tp!27453 e!218030))))

(declare-fun mapKey!13476 () (_ BitVec 32))

(declare-datatypes ((V!11615 0))(
  ( (V!11616 (val!4034 Int)) )
))
(declare-datatypes ((ValueCell!3646 0))(
  ( (ValueCellFull!3646 (v!6224 V!11615)) (EmptyCell!3646) )
))
(declare-fun mapValue!13476 () ValueCell!3646)

(declare-datatypes ((array!19503 0))(
  ( (array!19504 (arr!9242 (Array (_ BitVec 32) ValueCell!3646)) (size!9594 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19503)

(declare-fun mapRest!13476 () (Array (_ BitVec 32) ValueCell!3646))

(assert (=> mapNonEmpty!13476 (= (arr!9242 _values!1208) (store mapRest!13476 mapKey!13476 mapValue!13476))))

(declare-fun b!355805 () Bool)

(declare-fun e!218028 () Bool)

(assert (=> b!355805 (= e!218028 tp_is_empty!7979)))

(declare-fun mapIsEmpty!13476 () Bool)

(assert (=> mapIsEmpty!13476 mapRes!13476))

(declare-fun b!355806 () Bool)

(declare-fun res!197459 () Bool)

(assert (=> b!355806 (=> (not res!197459) (not e!218029))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(assert (=> b!355806 (= res!197459 (and (= (size!9594 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9593 _keys!1456) (size!9594 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!197461 () Bool)

(assert (=> start!35534 (=> (not res!197461) (not e!218029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35534 (= res!197461 (validMask!0 mask!1842))))

(assert (=> start!35534 e!218029))

(assert (=> start!35534 true))

(declare-fun e!218026 () Bool)

(declare-fun array_inv!6806 (array!19503) Bool)

(assert (=> start!35534 (and (array_inv!6806 _values!1208) e!218026)))

(declare-fun array_inv!6807 (array!19501) Bool)

(assert (=> start!35534 (array_inv!6807 _keys!1456)))

(declare-fun b!355807 () Bool)

(assert (=> b!355807 (= e!218026 (and e!218028 mapRes!13476))))

(declare-fun condMapEmpty!13476 () Bool)

(declare-fun mapDefault!13476 () ValueCell!3646)

