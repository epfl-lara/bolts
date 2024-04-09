; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35232 () Bool)

(assert start!35232)

(declare-fun b_free!7799 () Bool)

(declare-fun b_next!7799 () Bool)

(assert (=> start!35232 (= b_free!7799 (not b_next!7799))))

(declare-fun tp!26990 () Bool)

(declare-fun b_and!15057 () Bool)

(assert (=> start!35232 (= tp!26990 b_and!15057)))

(declare-fun mapNonEmpty!13113 () Bool)

(declare-fun mapRes!13113 () Bool)

(declare-fun tp!26991 () Bool)

(declare-fun e!216113 () Bool)

(assert (=> mapNonEmpty!13113 (= mapRes!13113 (and tp!26991 e!216113))))

(declare-datatypes ((V!11311 0))(
  ( (V!11312 (val!3920 Int)) )
))
(declare-datatypes ((ValueCell!3532 0))(
  ( (ValueCellFull!3532 (v!6108 V!11311)) (EmptyCell!3532) )
))
(declare-fun mapValue!13113 () ValueCell!3532)

(declare-fun mapRest!13113 () (Array (_ BitVec 32) ValueCell!3532))

(declare-datatypes ((array!19053 0))(
  ( (array!19054 (arr!9024 (Array (_ BitVec 32) ValueCell!3532)) (size!9376 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19053)

(declare-fun mapKey!13113 () (_ BitVec 32))

(assert (=> mapNonEmpty!13113 (= (arr!9024 _values!1525) (store mapRest!13113 mapKey!13113 mapValue!13113))))

(declare-fun res!195770 () Bool)

(declare-fun e!216115 () Bool)

(assert (=> start!35232 (=> (not res!195770) (not e!216115))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35232 (= res!195770 (validMask!0 mask!2385))))

(assert (=> start!35232 e!216115))

(assert (=> start!35232 true))

(declare-fun tp_is_empty!7751 () Bool)

(assert (=> start!35232 tp_is_empty!7751))

(assert (=> start!35232 tp!26990))

(declare-fun e!216117 () Bool)

(declare-fun array_inv!6646 (array!19053) Bool)

(assert (=> start!35232 (and (array_inv!6646 _values!1525) e!216117)))

(declare-datatypes ((array!19055 0))(
  ( (array!19056 (arr!9025 (Array (_ BitVec 32) (_ BitVec 64))) (size!9377 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19055)

(declare-fun array_inv!6647 (array!19055) Bool)

(assert (=> start!35232 (array_inv!6647 _keys!1895)))

(declare-fun b!352920 () Bool)

(declare-fun res!195773 () Bool)

(assert (=> b!352920 (=> (not res!195773) (not e!216115))))

(declare-datatypes ((List!5284 0))(
  ( (Nil!5281) (Cons!5280 (h!6136 (_ BitVec 64)) (t!10440 List!5284)) )
))
(declare-fun arrayNoDuplicates!0 (array!19055 (_ BitVec 32) List!5284) Bool)

(assert (=> b!352920 (= res!195773 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5281))))

(declare-fun b!352921 () Bool)

(declare-fun res!195772 () Bool)

(assert (=> b!352921 (=> (not res!195772) (not e!216115))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!352921 (= res!195772 (and (= (size!9376 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9377 _keys!1895) (size!9376 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13113 () Bool)

(assert (=> mapIsEmpty!13113 mapRes!13113))

(declare-fun b!352922 () Bool)

(declare-fun e!216116 () Bool)

(assert (=> b!352922 (= e!216117 (and e!216116 mapRes!13113))))

(declare-fun condMapEmpty!13113 () Bool)

(declare-fun mapDefault!13113 () ValueCell!3532)

