; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35800 () Bool)

(assert start!35800)

(declare-fun b!359313 () Bool)

(declare-fun res!199772 () Bool)

(declare-fun e!220104 () Bool)

(assert (=> b!359313 (=> (not res!199772) (not e!220104))))

(declare-datatypes ((array!20011 0))(
  ( (array!20012 (arr!9496 (Array (_ BitVec 32) (_ BitVec 64))) (size!9848 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20011)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20011 (_ BitVec 32)) Bool)

(assert (=> b!359313 (= res!199772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359314 () Bool)

(assert (=> b!359314 (= e!220104 false)))

(declare-fun lt!166315 () Bool)

(declare-datatypes ((List!5493 0))(
  ( (Nil!5490) (Cons!5489 (h!6345 (_ BitVec 64)) (t!10651 List!5493)) )
))
(declare-fun arrayNoDuplicates!0 (array!20011 (_ BitVec 32) List!5493) Bool)

(assert (=> b!359314 (= lt!166315 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5490))))

(declare-fun mapNonEmpty!13875 () Bool)

(declare-fun mapRes!13875 () Bool)

(declare-fun tp!27942 () Bool)

(declare-fun e!220105 () Bool)

(assert (=> mapNonEmpty!13875 (= mapRes!13875 (and tp!27942 e!220105))))

(declare-datatypes ((V!11971 0))(
  ( (V!11972 (val!4167 Int)) )
))
(declare-datatypes ((ValueCell!3779 0))(
  ( (ValueCellFull!3779 (v!6357 V!11971)) (EmptyCell!3779) )
))
(declare-fun mapValue!13875 () ValueCell!3779)

(declare-fun mapKey!13875 () (_ BitVec 32))

(declare-fun mapRest!13875 () (Array (_ BitVec 32) ValueCell!3779))

(declare-datatypes ((array!20013 0))(
  ( (array!20014 (arr!9497 (Array (_ BitVec 32) ValueCell!3779)) (size!9849 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20013)

(assert (=> mapNonEmpty!13875 (= (arr!9497 _values!1208) (store mapRest!13875 mapKey!13875 mapValue!13875))))

(declare-fun b!359315 () Bool)

(declare-fun tp_is_empty!8245 () Bool)

(assert (=> b!359315 (= e!220105 tp_is_empty!8245)))

(declare-fun mapIsEmpty!13875 () Bool)

(assert (=> mapIsEmpty!13875 mapRes!13875))

(declare-fun b!359316 () Bool)

(declare-fun e!220102 () Bool)

(assert (=> b!359316 (= e!220102 tp_is_empty!8245)))

(declare-fun b!359317 () Bool)

(declare-fun res!199773 () Bool)

(assert (=> b!359317 (=> (not res!199773) (not e!220104))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!359317 (= res!199773 (and (= (size!9849 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9848 _keys!1456) (size!9849 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!199774 () Bool)

(assert (=> start!35800 (=> (not res!199774) (not e!220104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35800 (= res!199774 (validMask!0 mask!1842))))

(assert (=> start!35800 e!220104))

(assert (=> start!35800 true))

(declare-fun e!220103 () Bool)

(declare-fun array_inv!6988 (array!20013) Bool)

(assert (=> start!35800 (and (array_inv!6988 _values!1208) e!220103)))

(declare-fun array_inv!6989 (array!20011) Bool)

(assert (=> start!35800 (array_inv!6989 _keys!1456)))

(declare-fun b!359318 () Bool)

(assert (=> b!359318 (= e!220103 (and e!220102 mapRes!13875))))

(declare-fun condMapEmpty!13875 () Bool)

(declare-fun mapDefault!13875 () ValueCell!3779)

