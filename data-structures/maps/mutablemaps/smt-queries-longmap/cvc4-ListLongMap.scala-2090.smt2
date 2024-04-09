; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35720 () Bool)

(assert start!35720)

(declare-fun b!358494 () Bool)

(declare-fun res!199314 () Bool)

(declare-fun e!219505 () Bool)

(assert (=> b!358494 (=> (not res!199314) (not e!219505))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19857 0))(
  ( (array!19858 (arr!9419 (Array (_ BitVec 32) (_ BitVec 64))) (size!9771 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19857)

(declare-datatypes ((V!11863 0))(
  ( (V!11864 (val!4127 Int)) )
))
(declare-datatypes ((ValueCell!3739 0))(
  ( (ValueCellFull!3739 (v!6317 V!11863)) (EmptyCell!3739) )
))
(declare-datatypes ((array!19859 0))(
  ( (array!19860 (arr!9420 (Array (_ BitVec 32) ValueCell!3739)) (size!9772 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19859)

(assert (=> b!358494 (= res!199314 (and (= (size!9772 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9771 _keys!1456) (size!9772 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13755 () Bool)

(declare-fun mapRes!13755 () Bool)

(assert (=> mapIsEmpty!13755 mapRes!13755))

(declare-fun b!358495 () Bool)

(declare-fun res!199313 () Bool)

(assert (=> b!358495 (=> (not res!199313) (not e!219505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19857 (_ BitVec 32)) Bool)

(assert (=> b!358495 (= res!199313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358496 () Bool)

(declare-fun e!219506 () Bool)

(declare-fun tp_is_empty!8165 () Bool)

(assert (=> b!358496 (= e!219506 tp_is_empty!8165)))

(declare-fun mapNonEmpty!13755 () Bool)

(declare-fun tp!27813 () Bool)

(assert (=> mapNonEmpty!13755 (= mapRes!13755 (and tp!27813 e!219506))))

(declare-fun mapRest!13755 () (Array (_ BitVec 32) ValueCell!3739))

(declare-fun mapValue!13755 () ValueCell!3739)

(declare-fun mapKey!13755 () (_ BitVec 32))

(assert (=> mapNonEmpty!13755 (= (arr!9420 _values!1208) (store mapRest!13755 mapKey!13755 mapValue!13755))))

(declare-fun res!199315 () Bool)

(assert (=> start!35720 (=> (not res!199315) (not e!219505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35720 (= res!199315 (validMask!0 mask!1842))))

(assert (=> start!35720 e!219505))

(assert (=> start!35720 true))

(declare-fun e!219503 () Bool)

(declare-fun array_inv!6926 (array!19859) Bool)

(assert (=> start!35720 (and (array_inv!6926 _values!1208) e!219503)))

(declare-fun array_inv!6927 (array!19857) Bool)

(assert (=> start!35720 (array_inv!6927 _keys!1456)))

(declare-fun b!358497 () Bool)

(assert (=> b!358497 (= e!219505 false)))

(declare-fun lt!166195 () Bool)

(declare-datatypes ((List!5462 0))(
  ( (Nil!5459) (Cons!5458 (h!6314 (_ BitVec 64)) (t!10620 List!5462)) )
))
(declare-fun arrayNoDuplicates!0 (array!19857 (_ BitVec 32) List!5462) Bool)

(assert (=> b!358497 (= lt!166195 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5459))))

(declare-fun b!358498 () Bool)

(declare-fun e!219504 () Bool)

(assert (=> b!358498 (= e!219503 (and e!219504 mapRes!13755))))

(declare-fun condMapEmpty!13755 () Bool)

(declare-fun mapDefault!13755 () ValueCell!3739)

