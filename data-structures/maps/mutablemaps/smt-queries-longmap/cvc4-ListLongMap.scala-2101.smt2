; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35786 () Bool)

(assert start!35786)

(declare-fun b!359187 () Bool)

(declare-fun res!199709 () Bool)

(declare-fun e!219998 () Bool)

(assert (=> b!359187 (=> (not res!199709) (not e!219998))))

(declare-datatypes ((array!19983 0))(
  ( (array!19984 (arr!9482 (Array (_ BitVec 32) (_ BitVec 64))) (size!9834 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19983)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19983 (_ BitVec 32)) Bool)

(assert (=> b!359187 (= res!199709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359188 () Bool)

(declare-fun res!199711 () Bool)

(assert (=> b!359188 (=> (not res!199711) (not e!219998))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((V!11951 0))(
  ( (V!11952 (val!4160 Int)) )
))
(declare-datatypes ((ValueCell!3772 0))(
  ( (ValueCellFull!3772 (v!6350 V!11951)) (EmptyCell!3772) )
))
(declare-datatypes ((array!19985 0))(
  ( (array!19986 (arr!9483 (Array (_ BitVec 32) ValueCell!3772)) (size!9835 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19985)

(assert (=> b!359188 (= res!199711 (and (= (size!9835 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9834 _keys!1456) (size!9835 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359189 () Bool)

(declare-fun e!219999 () Bool)

(declare-fun tp_is_empty!8231 () Bool)

(assert (=> b!359189 (= e!219999 tp_is_empty!8231)))

(declare-fun mapIsEmpty!13854 () Bool)

(declare-fun mapRes!13854 () Bool)

(assert (=> mapIsEmpty!13854 mapRes!13854))

(declare-fun res!199710 () Bool)

(assert (=> start!35786 (=> (not res!199710) (not e!219998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35786 (= res!199710 (validMask!0 mask!1842))))

(assert (=> start!35786 e!219998))

(assert (=> start!35786 true))

(declare-fun e!220000 () Bool)

(declare-fun array_inv!6978 (array!19985) Bool)

(assert (=> start!35786 (and (array_inv!6978 _values!1208) e!220000)))

(declare-fun array_inv!6979 (array!19983) Bool)

(assert (=> start!35786 (array_inv!6979 _keys!1456)))

(declare-fun b!359190 () Bool)

(declare-fun e!220001 () Bool)

(assert (=> b!359190 (= e!220001 tp_is_empty!8231)))

(declare-fun b!359191 () Bool)

(assert (=> b!359191 (= e!219998 false)))

(declare-fun lt!166294 () Bool)

(declare-datatypes ((List!5488 0))(
  ( (Nil!5485) (Cons!5484 (h!6340 (_ BitVec 64)) (t!10646 List!5488)) )
))
(declare-fun arrayNoDuplicates!0 (array!19983 (_ BitVec 32) List!5488) Bool)

(assert (=> b!359191 (= lt!166294 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5485))))

(declare-fun mapNonEmpty!13854 () Bool)

(declare-fun tp!27921 () Bool)

(assert (=> mapNonEmpty!13854 (= mapRes!13854 (and tp!27921 e!219999))))

(declare-fun mapRest!13854 () (Array (_ BitVec 32) ValueCell!3772))

(declare-fun mapKey!13854 () (_ BitVec 32))

(declare-fun mapValue!13854 () ValueCell!3772)

(assert (=> mapNonEmpty!13854 (= (arr!9483 _values!1208) (store mapRest!13854 mapKey!13854 mapValue!13854))))

(declare-fun b!359192 () Bool)

(assert (=> b!359192 (= e!220000 (and e!220001 mapRes!13854))))

(declare-fun condMapEmpty!13854 () Bool)

(declare-fun mapDefault!13854 () ValueCell!3772)

