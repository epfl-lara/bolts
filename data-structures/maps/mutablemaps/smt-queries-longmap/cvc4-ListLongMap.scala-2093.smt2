; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35738 () Bool)

(assert start!35738)

(declare-fun b!358656 () Bool)

(declare-fun e!219641 () Bool)

(declare-fun tp_is_empty!8183 () Bool)

(assert (=> b!358656 (= e!219641 tp_is_empty!8183)))

(declare-fun b!358657 () Bool)

(declare-fun e!219638 () Bool)

(assert (=> b!358657 (= e!219638 false)))

(declare-fun lt!166222 () Bool)

(declare-datatypes ((array!19891 0))(
  ( (array!19892 (arr!9436 (Array (_ BitVec 32) (_ BitVec 64))) (size!9788 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19891)

(declare-datatypes ((List!5469 0))(
  ( (Nil!5466) (Cons!5465 (h!6321 (_ BitVec 64)) (t!10627 List!5469)) )
))
(declare-fun arrayNoDuplicates!0 (array!19891 (_ BitVec 32) List!5469) Bool)

(assert (=> b!358657 (= lt!166222 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5466))))

(declare-fun mapIsEmpty!13782 () Bool)

(declare-fun mapRes!13782 () Bool)

(assert (=> mapIsEmpty!13782 mapRes!13782))

(declare-fun b!358658 () Bool)

(declare-fun e!219637 () Bool)

(assert (=> b!358658 (= e!219637 tp_is_empty!8183)))

(declare-fun b!358659 () Bool)

(declare-fun res!199394 () Bool)

(assert (=> b!358659 (=> (not res!199394) (not e!219638))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11887 0))(
  ( (V!11888 (val!4136 Int)) )
))
(declare-datatypes ((ValueCell!3748 0))(
  ( (ValueCellFull!3748 (v!6326 V!11887)) (EmptyCell!3748) )
))
(declare-datatypes ((array!19893 0))(
  ( (array!19894 (arr!9437 (Array (_ BitVec 32) ValueCell!3748)) (size!9789 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19893)

(assert (=> b!358659 (= res!199394 (and (= (size!9789 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9788 _keys!1456) (size!9789 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!199395 () Bool)

(assert (=> start!35738 (=> (not res!199395) (not e!219638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35738 (= res!199395 (validMask!0 mask!1842))))

(assert (=> start!35738 e!219638))

(assert (=> start!35738 true))

(declare-fun e!219640 () Bool)

(declare-fun array_inv!6940 (array!19893) Bool)

(assert (=> start!35738 (and (array_inv!6940 _values!1208) e!219640)))

(declare-fun array_inv!6941 (array!19891) Bool)

(assert (=> start!35738 (array_inv!6941 _keys!1456)))

(declare-fun b!358660 () Bool)

(assert (=> b!358660 (= e!219640 (and e!219637 mapRes!13782))))

(declare-fun condMapEmpty!13782 () Bool)

(declare-fun mapDefault!13782 () ValueCell!3748)

